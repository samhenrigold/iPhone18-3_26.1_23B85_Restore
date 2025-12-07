uint64_t PresenceHostSession.releaseSuspensionAssertion(_:)(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOyyyYaYbc__GMd, &_sScS12ContinuationV11YieldResultOyyyYaYbc__GMR);
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[17] = v4;
  v5 = *(v4 - 8);
  v2[18] = v5;
  v2[19] = *(v5 + 64);
  v2[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](PresenceHostSession.releaseSuspensionAssertion(_:), 0, 0);
}

uint64_t PresenceHostSession.releaseSuspensionAssertion(_:)()
{
  v11 = v0;
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[12];
  v5 = v0[13];
  v0[21] = OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_workQueue;
  v10 = 1;
  AsyncSerialQueue.precondition(_:)(&v10);
  (*(v3 + 16))(v1, v4, v2);
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = swift_allocObject();
  v0[22] = v7;
  *(v7 + 16) = v5;
  (*(v3 + 32))(v7 + v6, v1, v2);
  v8 = v5;

  return MEMORY[0x1EEE6DFA0](PresenceHostSession.releaseSuspensionAssertion(_:), 0, 0);
}

{
  v1 = v0[22];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v0[2] = v0;
  v0[3] = PersonalPresenceController.assertPresence(for:);
  v5 = swift_continuation_init();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &async function pointer to partial apply for closure #1 in PresenceHostSession.releaseSuspensionAssertion(_:);
  v6[4] = v1;
  type metadata accessor for AsyncSerialQueue(0);
  v7 = swift_allocObject();
  *(v7 + 16) = &closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:)specialized partial apply;
  *(v7 + 24) = v6;
  v0[10] = &thunk for @escaping @callee_guaranteed @Sendable @async () -> ()partial apply;
  v0[11] = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYaYbc_GMd, &_sScS12ContinuationVyyyYaYbc_GMR);
  AsyncStream.Continuation.yield(_:)();
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t closure #1 in PresenceHostSession.releaseSuspensionAssertion(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in PresenceHostSession.releaseSuspensionAssertion(_:), 0, 0);
}

uint64_t closure #1 in PresenceHostSession.releaseSuspensionAssertion(_:)()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 56)) + 0xE8))(v0 + 16);
  specialized Set._Variant.remove(_:)(v2, v1);
  outlined destroy of NSObject?(v1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3(v0 + 16, 0);
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = closure #1 in PresenceHostSession.releaseSuspensionAssertion(_:);

  return PresenceHostSession.unsuspend()();
}

{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in PresenceHostSession.releaseSuspensionAssertion(_:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t closure #1 in PresenceHostSession.releaseSuspensionAssertion(_:)(uint64_t a1)
{
  v24 = v1;
  v2 = v1[12];
  v3 = v1[9];
  v4 = v1[7];
  static TaskPriority.background.getter();
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;
  v6[5] = v2;
  v7 = v2;
  v8 = v4;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in closure #1 in PresenceHostSession.releaseSuspensionAssertion(_:), v6);

  outlined destroy of NSObject?(v3, &_sScPSgMd, &_sScPSgMR);
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v9 = v1[12];
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.service);
  v11 = v9;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = v1[12];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136315138;
    v1[6] = v14;
    v17 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v18 = String.init<A>(reflecting:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v23);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_1AEB26000, v12, v13, "Failed to unsuspend: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x1B27120C0](v16, -1, -1);
    MEMORY[0x1B27120C0](v15, -1, -1);
  }

  swift_willThrow();

  v21 = v1[1];

  return v21();
}

uint64_t closure #1 in closure #1 in PresenceHostSession.releaseSuspensionAssertion(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in PresenceHostSession.releaseSuspensionAssertion(_:), 0, 0);
}

uint64_t closure #1 in closure #1 in PresenceHostSession.releaseSuspensionAssertion(_:)()
{
  v1 = v0[4];
  v2 = *(v0[3] + OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_abcReporter);
  _StringGuts.grow(_:)(43);

  v0[2] = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v4 = String.init<A>(reflecting:)();
  MEMORY[0x1B2710020](v4);

  v5 = [objc_opt_self() mainBundle];
  v6 = [v5 bundleIdentifier];

  if (v6)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v9 = 0x80000001AEE31310;
    v7 = 0xD00000000000001DLL;
  }

  v10 = (*(*v2 + 112))(0xD000000000000011, 0x80000001AEE37D40, 0xD000000000000029, 0x80000001AEE37D10, v7, v9);
  v0[5] = v10;

  if (v10)
  {
    v19 = (*(*v2 + 120) + **(*v2 + 120));
    v11 = swift_task_alloc();
    v0[6] = v11;
    *v11 = v0;
    v11[1] = closure #2 in BackgroundSession.reset();
    v12.n128_u64[0] = 0;

    return v19(v10, v12);
  }

  else
  {
    if (one-time initialization token for abcReporter != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Log.abcReporter);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1AEB26000, v15, v16, "Failed to generate signature for session unsuspend failure", v17, 2u);
      MEMORY[0x1B27120C0](v17, -1, -1);
    }

    v18 = v0[1];

    return v18();
  }
}

uint64_t closure #1 in PresenceHostSession.acquireSuspensionAssertion()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3[10] = swift_task_alloc();
  v4 = *(type metadata accessor for Assertion #1 in PresenceHostSession.acquireSuspensionAssertion()(0) - 8);
  v3[11] = v4;
  v3[12] = *(v4 + 64);
  v3[13] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in PresenceHostSession.acquireSuspensionAssertion(), 0, 0);
}

uint64_t closure #1 in PresenceHostSession.acquireSuspensionAssertion()()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[8];
  (*(v4 + 16))(v2, v0[9], v3);
  v6 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0xE8))(v0 + 2);
  specialized Set._Variant.insert(_:)(v1, v2);
  (*(v4 + 8))(v1, v3);
  v6(v0 + 2, 0);
  v7 = swift_task_alloc();
  v0[18] = v7;
  *v7 = v0;
  v7[1] = closure #1 in PresenceHostSession.acquireSuspensionAssertion();

  return PresenceHostSession.suspend()();
}

{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = closure #1 in PresenceHostSession.acquireSuspensionAssertion();
  }

  else
  {
    v2 = closure #1 in PresenceHostSession.acquireSuspensionAssertion();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[7];
  outlined init with copy of AsyncSerialQueue(v0[9], v1, type metadata accessor for Assertion #1 in PresenceHostSession.acquireSuspensionAssertion());
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  outlined init with take of Assertion #1 in PresenceHostSession.acquireSuspensionAssertion()(v1, v5 + v4);
  type metadata accessor for AnyCancellable();
  swift_allocObject();
  *v3 = AnyCancellable.init(_:)();

  v6 = v0[1];

  return v6();
}

uint64_t closure #1 in PresenceHostSession.acquireSuspensionAssertion()(uint64_t a1)
{
  v24 = v1;
  v2 = v1[19];
  v3 = v1[10];
  v4 = v1[8];
  static TaskPriority.background.getter();
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;
  v6[5] = v2;
  v7 = v2;
  v8 = v4;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in closure #1 in PresenceHostSession.acquireSuspensionAssertion(), v6);

  outlined destroy of NSObject?(v3, &_sScPSgMd, &_sScPSgMR);
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v9 = v1[19];
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.service);
  v11 = v9;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = v1[19];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136315138;
    v1[6] = v14;
    v17 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v18 = String.init<A>(reflecting:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v23);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_1AEB26000, v12, v13, "Failed to suspend: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x1B27120C0](v16, -1, -1);
    MEMORY[0x1B27120C0](v15, -1, -1);
  }

  swift_willThrow();

  v21 = v1[1];

  return v21();
}

uint64_t closure #1 in closure #1 in PresenceHostSession.acquireSuspensionAssertion()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in PresenceHostSession.acquireSuspensionAssertion(), 0, 0);
}

uint64_t closure #1 in closure #1 in PresenceHostSession.acquireSuspensionAssertion()()
{
  v1 = 0xD00000000000001DLL;
  v2 = v0[4];
  v3 = *(v0[3] + OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_abcReporter);
  _StringGuts.grow(_:)(41);

  v0[2] = v2;
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v5 = String.init<A>(reflecting:)();
  MEMORY[0x1B2710020](v5);

  v6 = [objc_opt_self() mainBundle];
  v7 = [v6 bundleIdentifier];

  if (v7)
  {
    v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v9 = 0x80000001AEE31310;
  }

  v10 = (*(*v3 + 112))(0x206E6F6973736553, 0xEF646E6570737553, 0xD000000000000027, 0x80000001AEE37DB0, v1, v9);
  v0[5] = v10;

  if (v10)
  {
    v19 = (*(*v3 + 120) + **(*v3 + 120));
    v11 = swift_task_alloc();
    v0[6] = v11;
    *v11 = v0;
    v11[1] = closure #1 in IDSGroupSessionProvider.session(_:rejectedKeyRecoveryRequestFrom:reason:);
    v12.n128_u64[0] = 0;

    return v19(v10, v12);
  }

  else
  {
    if (one-time initialization token for abcReporter != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Log.abcReporter);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1AEB26000, v15, v16, "Failed to generate signature for session suspend failure", v17, 2u);
      MEMORY[0x1B27120C0](v17, -1, -1);
    }

    v18 = v0[1];

    return v18();
  }
}

uint64_t closure #2 in closure #1 in PresenceHostSession.acquireSuspensionAssertion()(uint64_t a1)
{
  v2 = type metadata accessor for Assertion #1 in PresenceHostSession.acquireSuspensionAssertion()(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  outlined init with copy of AsyncSerialQueue(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Assertion #1 in PresenceHostSession.acquireSuspensionAssertion());
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  outlined init with take of Assertion #1 in PresenceHostSession.acquireSuspensionAssertion()(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCytSg_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in closure #2 in closure #1 in PresenceHostSession.acquireSuspensionAssertion(), v10);
}

uint64_t closure #1 in closure #2 in closure #1 in PresenceHostSession.acquireSuspensionAssertion()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in closure #1 in PresenceHostSession.acquireSuspensionAssertion(), 0, 0);
}

uint64_t closure #1 in closure #2 in closure #1 in PresenceHostSession.acquireSuspensionAssertion()()
{
  type metadata accessor for Assertion #1 in PresenceHostSession.acquireSuspensionAssertion()(0);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 32) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 40) = v2;
    *v2 = v0;
    v2[1] = closure #1 in closure #2 in closure #1 in PresenceHostSession.acquireSuspensionAssertion();
    v3 = *(v0 + 24);

    return PresenceHostSession.releaseSuspensionAssertion(_:)(v3);
  }

  else
  {
    **(v0 + 16) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

{
  v2 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = closure #1 in closure #2 in closure #1 in PresenceHostSession.acquireSuspensionAssertion();
  }

  else
  {

    v3 = closure #1 in closure #2 in closure #1 in PresenceHostSession.acquireSuspensionAssertion();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  **(v0 + 16) = *(v0 + 32) == 0;
  return (*(v0 + 8))();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t partial apply for closure #1 in PresenceHostSession.leave()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in PresenceHostSession.leave()();
}

uint64_t partial apply for closure #1 in PresenceHostSession.init(id:presenceController:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in PresenceHostSession.init(id:presenceController:)(a1, v4, v5, v6);
}

uint64_t outlined init with copy of AsyncSerialQueue(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of Assertion #1 in PresenceHostSession.acquireSuspensionAssertion()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Assertion #1 in PresenceHostSession.acquireSuspensionAssertion()(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in PresenceHostSession.acquireSuspensionAssertion()(uint64_t a1)
{
  v4 = *(type metadata accessor for Assertion #1 in PresenceHostSession.acquireSuspensionAssertion()(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in PresenceHostSession.acquireSuspensionAssertion()(a1, v6, v1 + v5);
}

unint64_t lazy protocol witness table accessor for type PresenceHostSession.Errors and conformance PresenceHostSession.Errors()
{
  result = lazy protocol witness table cache variable for type PresenceHostSession.Errors and conformance PresenceHostSession.Errors;
  if (!lazy protocol witness table cache variable for type PresenceHostSession.Errors and conformance PresenceHostSession.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresenceHostSession.Errors and conformance PresenceHostSession.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresenceHostSession.Errors and conformance PresenceHostSession.Errors;
  if (!lazy protocol witness table cache variable for type PresenceHostSession.Errors and conformance PresenceHostSession.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresenceHostSession.Errors and conformance PresenceHostSession.Errors);
  }

  return result;
}

uint64_t specialized PresenceHostSession.invalidation(block:)(uint64_t a1)
{
  *(v1 + 24) = a1;
  v2 = swift_task_alloc();
  *(v1 + 32) = v2;
  *v2 = v1;
  v2[1] = specialized PresenceHostSession.invalidation(block:);

  return PresenceHostSession._join()();
}

{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t specialized PresenceHostSession.invalidation(block:)()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](specialized PresenceHostSession.invalidation(block:), 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

{
  v26 = v0;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = v0[3];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.service);
  v4 = v2;
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[5];
    v9 = v0[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2080;
    v0[2] = v8;
    v13 = v9;
    v14 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v15 = String.init<A>(reflecting:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v25);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_1AEB26000, v6, v7, "Invalidating %@ due to invalidation block throwing error. %s", v10, 0x16u);
    outlined destroy of NSObject?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1B27120C0](v12, -1, -1);
    MEMORY[0x1B27120C0](v10, -1, -1);
  }

  v18 = v0[3];
  v19 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v18) + 0xC0))(4);
  (*((*v19 & *v18) + 0x110))(0);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1AEB26000, v20, v21, "Releasing presence assertion due to invalidation.", v22, 2u);
    MEMORY[0x1B27120C0](v22, -1, -1);
  }

  v23 = swift_task_alloc();
  v0[6] = v23;
  *v23 = v0;
  v23[1] = specialized PresenceHostSession.invalidation(block:);

  return PresenceHostSession.releasePresence()();
}

{

  if (v0)
  {

    v1 = PresenceHostSession.invalidation(block:);
  }

  else
  {
    v1 = specialized PresenceHostSession.invalidation(block:);
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

char *specialized $defer #1 () in PresenceHostSession._leave(endState:)(void *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  result = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x108))();
  if (result)
  {
    v4 = *&result[direct field offset for XPCHostConnection.bundleIdentifier + 8];
    v19 = *&result[direct field offset for XPCHostConnection.bundleIdentifier];
    v5 = result;

    v6 = *((*v2 & *a1) + 0xF0);
    v6(v26);
    v7 = v27;
    v8 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v18 = UUID.uuidString.getter();
    v10 = v9;
    v6(v23);
    v12 = v24;
    v11 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    v13 = (*(v11 + 8))(v12, v11);
    v14 = __swift_destroy_boxed_opaque_existential_1Tm(v23);
    (v6)(v20, v14);
    v15 = v21;
    v16 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v17 = (*(v16 + 8))(v15, v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    (*(v8 + 32))(v18, v10, v19, v4, v13, v17 == 33, v7, v8);

    return __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  return result;
}

uint64_t partial apply for closure #1 in PresenceHostSession.releaseSuspensionAssertion(_:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in PresenceHostSession.releaseSuspensionAssertion(_:)(a1, v6, v1 + v5);
}

uint64_t specialized PresenceHostSession.listener(_:shouldAcceptNewConnection:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.host);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_1AEB26000, v6, v7, "Asked to accept new connection from: %@", v8, 0xCu);
    outlined destroy of NSObject?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  if ((*((*MEMORY[0x1E69E7D40] & *v2) + 0xB8))())
  {
    v11 = v5;
    v12 = v2;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v13, v14))
    {
LABEL_9:

      return 0;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412546;
    *(v15 + 4) = v11;
    *(v15 + 12) = 2112;
    *(v15 + 14) = v12;
    *v16 = v11;
    v16[1] = v2;
    v17 = v11;
    v18 = v12;
    _os_log_impl(&dword_1AEB26000, v13, v14, "PresenceSessionHostConnection for connection: %@ rejected for invalid state. %@", v15, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v16, -1, -1);
    v19 = v15;
LABEL_8:
    MEMORY[0x1B27120C0](v19, -1, -1);
    goto LABEL_9;
  }

  v21 = *(v2 + OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_queue);
  v22 = objc_allocWithZone(type metadata accessor for PresenceSessionHostConnection(0));
  v23 = v5;
  v24 = v21;
  v25 = PresenceSessionHostConnection.init(connection:queue:)(v23, v24);
  if (!v25)
  {
    v33 = v23;
    v13 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v13, v34))
    {

      v13 = v33;
      goto LABEL_9;
    }

    v35 = swift_slowAlloc();
    *v35 = 67109120;
    *(v35 + 4) = [v33 processIdentifier];

    _os_log_impl(&dword_1AEB26000, v13, v34, "PresenceSessionHostConnection could not be created; rejecting connection from PID: %d", v35, 8u);
    v19 = v35;
    goto LABEL_8;
  }

  v20 = 1;
  v26 = v25;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v27 = swift_allocObject();
  *(v27 + 16) = v2;
  *(v27 + 24) = v26;
  v28 = swift_allocObject();
  *(v28 + 16) = partial apply for closure #1 in PresenceHostSession.listener(_:shouldAcceptNewConnection:);
  *(v28 + 24) = v27;
  aBlock[4] = _sIg_Ieg_TRTA_0;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_106_0;
  v29 = _Block_copy(aBlock);
  v30 = v2;
  v31 = v26;

  dispatch_sync(v24, v29);

  _Block_release(v29);
  LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

  if ((v31 & 1) == 0)
  {
    return v20;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type PresenceHostSession.State and conformance PresenceHostSession.State()
{
  result = lazy protocol witness table cache variable for type PresenceHostSession.State and conformance PresenceHostSession.State;
  if (!lazy protocol witness table cache variable for type PresenceHostSession.State and conformance PresenceHostSession.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresenceHostSession.State and conformance PresenceHostSession.State);
  }

  return result;
}

uint64_t _s14CopresenceCore17AddressableMemberCSo8NSObjectCSH10ObjectiveCWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata completion function for PresenceHostSession(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AsyncSerialQueue(319);
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of PresenceHostSession.listenForUpdatedDevices()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x158);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v5();
}

uint64_t type metadata completion function for Assertion #1 in PresenceHostSession.acquireSuspensionAssertion()(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t outlined destroy of Assertion #1 in PresenceHostSession.acquireSuspensionAssertion()(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for closure #1 in PresenceHostSession.listener(_:shouldAcceptNewConnection:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x110);
  v4 = v2;
  return v3(v2);
}

uint64_t partial apply for closure #1 in closure #1 in PresenceHostSession.releaseSuspensionAssertion(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #1 in PresenceHostSession.releaseSuspensionAssertion(_:)(a1, v4, v5, v7, v6);
}

uint64_t objectdestroyTm_4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t partial apply for closure #1 in PresenceHostSession.assertPresence()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in PresenceHostSession.assertPresence()(a1, v4, v5, v6);
}

uint64_t objectdestroy_108Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t partial apply for closure #1 in closure #1 in PresenceHostSession.acquireSuspensionAssertion()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #1 in PresenceHostSession.acquireSuspensionAssertion()(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #2 in closure #1 in PresenceHostSession.acquireSuspensionAssertion()()
{
  v1 = *(type metadata accessor for Assertion #1 in PresenceHostSession.acquireSuspensionAssertion()(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #2 in closure #1 in PresenceHostSession.acquireSuspensionAssertion()(v2);
}

uint64_t partial apply for closure #1 in closure #2 in closure #1 in PresenceHostSession.acquireSuspensionAssertion()(uint64_t a1)
{
  v4 = *(type metadata accessor for Assertion #1 in PresenceHostSession.acquireSuspensionAssertion()(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #2 in closure #1 in PresenceHostSession.acquireSuspensionAssertion()(a1, v6, v7, v1 + v5);
}

uint64_t NWProtocolFramer.Message.init(header:)(uint64_t a1)
{
  if (one-time initialization token for definition != -1)
  {
    swift_once();
  }

  v2 = dispatch thunk of NWProtocolFramer.Message.__allocating_init(definition:)();
  v5[3] = type metadata accessor for PluginProtocolHeader(0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
  outlined init with copy of PluginProtocolHeader(a1, boxed_opaque_existential_1);

  dispatch thunk of NWProtocolFramer.Message.subscript.setter();

  outlined destroy of PluginProtocolHeader(a1);
  return v2;
}

uint64_t *PluginProtocolFramer.definition.unsafeMutableAddressor()
{
  if (one-time initialization token for definition != -1)
  {
    swift_once();
  }

  return &static PluginProtocolFramer.definition;
}

uint64_t NWProtocolFramer.Message.header.getter@<X0>(uint64_t a1@<X8>)
{
  dispatch thunk of NWProtocolFramer.Message.subscript.getter();
  if (v6[3])
  {
    v2 = type metadata accessor for PluginProtocolHeader(0);
    v3 = swift_dynamicCast();
    return (*(*(v2 - 8) + 56))(a1, v3 ^ 1u, 1, v2);
  }

  else
  {
    outlined destroy of NSObject?(v6, &_sypSgMd, &_sypSgMR);
    v5 = type metadata accessor for PluginProtocolHeader(0);
    return (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
  }
}

uint64_t one-time initialization function for definition()
{
  type metadata accessor for PluginProtocolFramer();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type PluginProtocolFramer and conformance PluginProtocolFramer, v0, type metadata accessor for PluginProtocolFramer, &protocol conformance descriptor for PluginProtocolFramer);
  type metadata accessor for NWProtocolFramer.Definition();
  swift_allocObject();
  result = NWProtocolFramer.Definition.init(implementation:)();
  static PluginProtocolFramer.definition = result;
  return result;
}

uint64_t type metadata accessor for PluginProtocolHeader(uint64_t a1)
{
  result = type metadata singleton initialization cache for PluginProtocolHeader;
  if (!type metadata singleton initialization cache for PluginProtocolHeader)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of PluginProtocolHeader(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PluginProtocolHeader(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of PluginProtocolHeader(uint64_t a1)
{
  v2 = type metadata accessor for PluginProtocolHeader(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static PluginProtocolFramer.definition.getter()
{
  if (one-time initialization token for definition != -1)
  {
    swift_once();
  }
}

uint64_t PluginProtocolFramer.__allocating_init(framer:)(uint64_t a1)
{
  v1 = swift_allocObject();
  PluginProtocolFramer.init(framer:)();
  return v1;
}

uint64_t PluginProtocolFramer.init(framer:)()
{
  NWProtocolFramer.Instance.options.getter();
  dispatch thunk of NWProtocolFramer.Options.subscript.getter();

  if (!v5)
  {
    outlined destroy of NSObject?(v4, &_sypSgMd, &_sypSgMR);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v1 = 0x7FFFFFFFLL;
    goto LABEL_6;
  }

  v1 = v3;
LABEL_6:
  *(v0 + 16) = v1;
  return v0;
}

uint64_t PluginProtocolFramer.start(framer:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6977CC8];
  started = type metadata accessor for NWProtocolFramer.StartResult();
  v4 = *(*(started - 8) + 104);

  return v4(a1, v2, started);
}

uint64_t PluginProtocolFramer.handleInput(framer:)(unsigned int (**a1)(char *, uint64_t, uint64_t))
{
  v27 = *v1;
  v3 = type metadata accessor for PluginProtocolHeader(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20PluginProtocolHeaderOSgMd, &_s14CopresenceCore20PluginProtocolHeaderOSgMR);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v23 - v14);
  v16 = *(v4 + 56);
  v24 = v1[2];
  v25 = v16;
  v26 = v4 + 56;
  v23 = (v4 + 48);
  while (1)
  {
    v25(v15, 1, 1, v3);
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    v18 = MEMORY[0x1EEE9AC00](v17);
    *(&v23 - 6) = v24;
    *(&v23 - 5) = a1;
    *(&v23 - 4) = v15;
    *(&v23 - 3) = v18;
    *(&v23 - 2) = v27;
    if ((NWProtocolFramer.Instance.parseInput(minimumIncompleteLength:maximumLength:parse:)() & 1) == 0)
    {
      goto LABEL_9;
    }

    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v15, v13, &_s14CopresenceCore20PluginProtocolHeaderOSgMd, &_s14CopresenceCore20PluginProtocolHeaderOSgMR);
    if ((*v23)(v13, 1, v3) == 1)
    {
      outlined destroy of NSObject?(v13, &_s14CopresenceCore20PluginProtocolHeaderOSgMd, &_s14CopresenceCore20PluginProtocolHeaderOSgMR);
LABEL_9:

      v21 = 4;
      goto LABEL_11;
    }

    outlined init with take of PluginProtocolHeader(v13, v9);
    type metadata accessor for NWProtocolFramer.Message();
    outlined init with copy of PluginProtocolHeader(v9, v7);
    if (one-time initialization token for definition != -1)
    {
      swift_once();
    }

    dispatch thunk of NWProtocolFramer.Message.__allocating_init(definition:)();
    v28[3] = v3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
    outlined init with copy of PluginProtocolHeader(v7, boxed_opaque_existential_1);
    dispatch thunk of NWProtocolFramer.Message.subscript.setter();
    outlined destroy of PluginProtocolHeader(v7);
    swift_beginAccess();
    v20 = NWProtocolFramer.Instance.deliverInputNoCopy(length:message:isComplete:)();

    outlined destroy of PluginProtocolHeader(v9);

    if ((v20 & 1) == 0)
    {
      break;
    }

    outlined destroy of NSObject?(v15, &_s14CopresenceCore20PluginProtocolHeaderOSgMd, &_s14CopresenceCore20PluginProtocolHeaderOSgMR);
  }

  v21 = 0;
LABEL_11:
  outlined destroy of NSObject?(v15, &_s14CopresenceCore20PluginProtocolHeaderOSgMd, &_s14CopresenceCore20PluginProtocolHeaderOSgMR);
  return v21;
}

uint64_t closure #1 in PluginProtocolFramer.handleInput(framer:)(unsigned int *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8)
{
  v35 = *MEMORY[0x1E69E9840];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = (&v33 - v15);
  result = 0;
  if ((a3 & 1) != 0 || !a1 || a2 - a1 < 4)
  {
    return result;
  }

  v18 = bswap32(*a1);
  if ((v18 & 0x80000000) != 0)
  {
    PluginRpcStatusCode.init(rawValue:)(WORD1(v18) & 0x7FFF);
    if (v34 == 17)
    {
      v26 = 2;
    }

    else
    {
      v26 = v34;
    }

    outlined destroy of NSObject?(a7, &_s14CopresenceCore20PluginProtocolHeaderOSgMd, &_s14CopresenceCore20PluginProtocolHeaderOSgMR);
    *a7 = v26;
    v27 = type metadata accessor for PluginProtocolHeader(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v27 - 8) + 56))(a7, 0, 1, v27);
    swift_beginAccess();
    *(a8 + 16) = v18;
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, log);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 33554944;
      *(v31 + 4) = v26;
      *(v31 + 6) = 2048;
      swift_beginAccess();
      *(v31 + 8) = *(a8 + 16);

      _os_log_impl(&dword_1AEB26000, v29, v30, "Parsed status %hu, len=%ld", v31, 0x10u);
      MEMORY[0x1B27120C0](v31, -1, -1);
    }

    else
    {
    }

    return 4;
  }

  if (v18 <= a5)
  {
    outlined destroy of NSObject?(a7, &_s14CopresenceCore20PluginProtocolHeaderOSgMd, &_s14CopresenceCore20PluginProtocolHeaderOSgMR);
    v32 = type metadata accessor for PluginProtocolHeader(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v32 - 8) + 56))(a7, 0, 1, v32);
    swift_beginAccess();
    *(a8 + 16) = v18;
    return 4;
  }

  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, log);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 67109120;
    *(v22 + 4) = v18;
    _os_log_impl(&dword_1AEB26000, v20, v21, "Message is too large (length %u)", v22, 8u);
    MEMORY[0x1B27120C0](v22, -1, -1);
  }

  *v16 = 22;
  v23 = *MEMORY[0x1E6977D68];
  v24 = type metadata accessor for NWError();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v16, v23, v24);
  (*(v25 + 56))(v16, 0, 1, v24);
  NWProtocolFramer.Instance.markFailed(error:)();
  outlined destroy of NSObject?(v16, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  return 0;
}

void PluginProtocolFramer.handleOutput(framer:message:messageLength:isComplete:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v55[1] = a1;
  v56 = a3;
  v59[2] = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for UUID();
  v55[0] = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v55 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20PluginProtocolHeaderOSgMd, &_s14CopresenceCore20PluginProtocolHeaderOSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v55 - v13;
  v15 = type metadata accessor for PluginProtocolHeader(0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v55 - v20;
  dispatch thunk of NWProtocolFramer.Message.subscript.getter();
  if (v59[1])
  {
    v22 = swift_dynamicCast();
    (*(v16 + 56))(v14, v22 ^ 1u, 1, v15);
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      outlined init with take of PluginProtocolHeader(v14, v21);
      outlined init with copy of PluginProtocolHeader(v21, v19);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        v24 = v56;
        if (EnumCaseMultiPayload != 1)
        {
          if ((v56 & 0x8000000000000000) == 0)
          {
            if (!HIDWORD(v56))
            {
              v25 = bswap32(v56);
              goto LABEL_23;
            }

            goto LABEL_37;
          }

          goto LABEL_34;
        }

        if ((v56 & 0x8000000000000000) == 0)
        {
          if (!(v56 >> 16))
          {
            v25 = bswap32(v56 | 0x80000000);
LABEL_23:
            LODWORD(v58[0]) = v25;
            v36 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v58, v58 + 4);
            v38 = v37;
            NWProtocolFramer.Instance.writeOutput(data:)();
            outlined consume of Data._Representation(v36, v38);
LABEL_24:
            NWProtocolFramer.Instance.writeOutputNoCopy(length:)(v24);
            if (v39)
            {
              if (one-time initialization token for log != -1)
              {
                swift_once();
              }

              v40 = type metadata accessor for Logger();
              __swift_project_value_buffer(v40, log);
              v41 = v39;
              v42 = Logger.logObject.getter();
              v43 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v42, v43))
              {
                v44 = swift_slowAlloc();
                v45 = swift_slowAlloc();
                v58[0] = v45;
                *v44 = 136315138;
                v57 = v39;
                v46 = v39;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
                v47 = String.init<A>(reflecting:)();
                v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, v58);

                *(v44 + 4) = v49;
                _os_log_impl(&dword_1AEB26000, v42, v43, "Exception in handleOutput(): %s", v44, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v45);
                MEMORY[0x1B27120C0](v45, -1, -1);
                MEMORY[0x1B27120C0](v44, -1, -1);
              }

              else
              {
              }
            }

            outlined destroy of PluginProtocolHeader(v21);
            return;
          }

          goto LABEL_35;
        }

        __break(1u);
      }

      else
      {
        outlined init with take of UUID?(v19, v11);
        v30 = v56;
        if ((v56 & 0x8000000000000000) == 0)
        {
          if (!(v56 >> 16))
          {
            v31 = *(v55[0] + 48);
            v32 = ((v31(v11, 1, v3) != 1) << 15) + v30;
            if ((v32 & 0x10000) == 0)
            {
              LOWORD(v58[0]) = bswap32(v32) >> 16;
              v33 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v58, v58 + 2);
              v35 = v34;
              NWProtocolFramer.Instance.writeOutput(data:)();
              outlined consume of Data._Representation(v33, v35);
              outlined init with copy of ActivitySession.DomainAssertionWrapper?(v11, v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
              if (v31(v9, 1, v3) == 1)
              {
                outlined destroy of NSObject?(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                outlined destroy of NSObject?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
              }

              else
              {
                v50 = v55[0];
                (*(v55[0] + 32))(v5, v9, v3);
                v58[0] = UUID.uuid.getter();
                v58[1] = v51;
                v52 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v58, v59);
                v54 = v53;
                NWProtocolFramer.Instance.writeOutput(data:)();
                outlined consume of Data._Representation(v52, v54);
                (*(v50 + 8))(v5, v3);
                outlined destroy of NSObject?(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
              }

              v24 = v56;
              goto LABEL_24;
            }

LABEL_38:
            __break(1u);
          }

          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }
  }

  else
  {
    outlined destroy of NSObject?(v58, &_sypSgMd, &_sypSgMR);
    (*(v16 + 56))(v14, 1, 1, v15);
  }

  outlined destroy of NSObject?(v14, &_s14CopresenceCore20PluginProtocolHeaderOSgMd, &_s14CopresenceCore20PluginProtocolHeaderOSgMR);
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, log);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1AEB26000, v27, v28, "Header missing", v29, 2u);
    MEMORY[0x1B27120C0](v29, -1, -1);
  }
}

BOOL specialized static PluginProtocolHeader.== infix(_:_:)(uint64_t a1, char *a2)
{
  v34 = a1;
  v35 = a2;
  v2 = type metadata accessor for UUID();
  v33 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for PluginProtocolHeader(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20PluginProtocolHeaderO_ACtMd, &_s14CopresenceCore20PluginProtocolHeaderO_ACtMR);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v32 - v19;
  v21 = *(v18 + 56);
  outlined init with copy of PluginProtocolHeader(v34, &v32 - v19);
  outlined init with copy of PluginProtocolHeader(v35, &v20[v21]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v35 = v7;
    v25 = v10;
    v26 = v33;
    outlined init with copy of PluginProtocolHeader(v20, v16);
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of NSObject?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      goto LABEL_9;
    }

    v27 = *(v8 + 48);
    outlined init with take of UUID?(v16, v25);
    outlined init with take of UUID?(&v20[v21], v25 + v27);
    v28 = *(v26 + 48);
    if (v28(v25, 1, v2) == 1)
    {
      if (v28(v25 + v27, 1, v2) == 1)
      {
        outlined destroy of NSObject?(v25, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        goto LABEL_8;
      }
    }

    else
    {
      v29 = v35;
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v25, v35, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if (v28(v25 + v27, 1, v2) != 1)
      {
        (*(v26 + 32))(v4, v25 + v27, v2);
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v30 = dispatch thunk of static Equatable.== infix(_:_:)();
        v31 = *(v26 + 8);
        v31(v4, v2);
        v31(v29, v2);
        outlined destroy of NSObject?(v25, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        if (v30)
        {
          goto LABEL_8;
        }

LABEL_17:
        outlined destroy of PluginProtocolHeader(v20);
        return 0;
      }

      (*(v26 + 8))(v29, v2);
    }

    outlined destroy of NSObject?(v25, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 1)
  {
    outlined init with copy of PluginProtocolHeader(v20, v14);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v23 = *v14 == v20[v21];
      outlined destroy of PluginProtocolHeader(v20);
      return v23;
    }

    goto LABEL_9;
  }

  if (swift_getEnumCaseMultiPayload() == 2)
  {
LABEL_8:
    outlined destroy of PluginProtocolHeader(v20);
    return 1;
  }

LABEL_9:
  outlined destroy of NSObject?(v20, &_s14CopresenceCore20PluginProtocolHeaderO_ACtMd, &_s14CopresenceCore20PluginProtocolHeaderO_ACtMR);
  return 0;
}

uint64_t outlined init with take of PluginProtocolHeader(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PluginProtocolHeader(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata completion function for PluginProtocolHeader(uint64_t a1)
{
  type metadata accessor for UUID?(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool, @unowned NSError?) -> ()(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ()(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

char *ConversationManagerHostConnection.__allocating_init(connection:queue:featureFlags:serverBag:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return specialized ConversationManagerHostConnection.__allocating_init(connection:queue:featureFlags:serverBag:)(a1, a2, a3, a4, v4, ObjectType);
}

uint64_t ConversationManagerHostConnection.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + direct field offset for ConversationManagerHostConnection.delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ConversationManagerHostConnection.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = direct field offset for ConversationManagerHostConnection.delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return ActivitySession.sessionManager.modify;
}

uint64_t ConversationManagerHostConnection.protectedStorage.getter@<X0>(void *a1@<X8>)
{
  v3 = direct field offset for ConversationManagerHostConnection.$__lazy_storage_$_protectedStorage;
  swift_beginAccess();
  outlined init with copy of ProtectedStorage?(v1 + v3, &v7);
  if (v8)
  {
    return outlined init with take of any BidirectionalCollection<Self.BidirectionalCollection.Element == String>(&v7, a1);
  }

  outlined destroy of NSObject?(&v7, &_s14CopresenceCore16ProtectedStorage_pSgMd, &_s14CopresenceCore16ProtectedStorage_pSgMR);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSUserDefaults, 0x1E695E000);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSUserDefaults.classProtectedStorage(suiteName:)(v5, v6, a1);

  outlined init with copy of UserNotificationCenter(a1, &v7);
  swift_beginAccess();
  outlined assign with take of ProtectedStorage?(&v7, v1 + v3);
  return swift_endAccess();
}

uint64_t ConversationManagerHostConnection.protectedStorage.setter(__int128 *a1)
{
  outlined init with take of any BidirectionalCollection<Self.BidirectionalCollection.Element == String>(a1, v4);
  v2 = direct field offset for ConversationManagerHostConnection.$__lazy_storage_$_protectedStorage;
  swift_beginAccess();
  outlined assign with take of ProtectedStorage?(v4, v1 + v2);
  return swift_endAccess();
}

void (*ConversationManagerHostConnection.protectedStorage.modify(void *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  *a1 = v3;
  v3[13] = v1;
  ConversationManagerHostConnection.protectedStorage.getter(v3);
  return ConversationManagerHostConnection.protectedStorage.modify;
}

void ConversationManagerHostConnection.protectedStorage.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  if (a2)
  {
    outlined init with copy of UserNotificationCenter(*a1, (v2 + 5));
    v4 = direct field offset for ConversationManagerHostConnection.$__lazy_storage_$_protectedStorage;
    swift_beginAccess();
    outlined assign with take of ProtectedStorage?((v2 + 5), v3 + v4);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    outlined init with take of any BidirectionalCollection<Self.BidirectionalCollection.Element == String>(*a1, (v2 + 5));
    v5 = direct field offset for ConversationManagerHostConnection.$__lazy_storage_$_protectedStorage;
    swift_beginAccess();
    outlined assign with take of ProtectedStorage?((v2 + 5), v3 + v5);
    swift_endAccess();
  }

  free(v2);
}

char *ConversationManagerHostConnection.init(connection:queue:featureFlags:serverBag:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();

  return specialized ConversationManagerHostConnection.init(connection:queue:featureFlags:serverBag:)(a1, a2, a3, a4, v4);
}

Swift::Void __swiftcall ConversationManagerHostConnection.handleHostConnectionInvalidated()()
{
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x188))())
  {
    v2 = v1;
    ObjectType = swift_getObjectType();
    (*(v2 + 80))(v0, ObjectType, v2);

    swift_unknownObjectRelease();
  }
}

uint64_t ConversationManagerHostConnection.__ivar_destroyer()
{
  outlined destroy of weak ActivitySessionManagerProtocol?(v0 + direct field offset for ConversationManagerHostConnection.delegate);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  outlined destroy of NSObject?(v0 + direct field offset for ConversationManagerHostConnection.$__lazy_storage_$_protectedStorage, &_s14CopresenceCore16ProtectedStorage_pSgMd, &_s14CopresenceCore16ProtectedStorage_pSgMR);
}

id ConversationManagerHostConnection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationManagerHostConnection(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t @objc ConversationManagerHostConnection.__ivar_destroyer(uint64_t a1)
{
  outlined destroy of weak ActivitySessionManagerProtocol?(a1 + direct field offset for ConversationManagerHostConnection.delegate);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  outlined destroy of NSObject?(a1 + direct field offset for ConversationManagerHostConnection.$__lazy_storage_$_protectedStorage, &_s14CopresenceCore16ProtectedStorage_pSgMd, &_s14CopresenceCore16ProtectedStorage_pSgMR);
}

Swift::Void __swiftcall ConversationManagerHostConnection.updateConversationContainers(conversationContainersByGroupUUID:)(Swift::OpaquePointer conversationContainersByGroupUUID)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + direct field offset for XPCHostConnection.queue);
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v9 = swift_allocObject();
    v9[2]._rawValue = v1;
    v9[3]._rawValue = conversationContainersByGroupUUID._rawValue;
    v10 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x148);
    v11 = v1;

    v10(0xD000000000000040, 0x80000001AEE37E80, partial apply for closure #1 in ConversationManagerHostConnection.updateConversationContainers(conversationContainersByGroupUUID:), v9);
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in ConversationManagerHostConnection.updateConversationContainers(conversationContainersByGroupUUID:)(void *a1, uint64_t a2)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.default);
  v4 = a1;

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17[0] = v9;
    *v7 = 138412546;
    *(v7 + 4) = v4;
    *v8 = v4;
    *(v7 + 12) = 2080;
    type metadata accessor for UUID();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v10 = v4;
    v11 = Dictionary.description.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v17);

    *(v7 + 14) = v13;
    _os_log_impl(&dword_1AEB26000, v5, v6, "Updating client: %@ with containers: %s", v7, 0x16u);
    outlined destroy of NSObject?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  v14 = [*&v4[direct field offset for XPCHostConnection.connection] remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore28ConversationManagerXPCClient_pMd, &_s14CopresenceCore28ConversationManagerXPCClient_pMR);
  if (swift_dynamicCast())
  {
    type metadata accessor for UUID();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    [v16 updateConversationContainersWithConversationContainersByGroupUUID_];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void ConversationManagerHostConnection.requestEndpoint(with:activitySessionUUID:activity:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v25 = a4;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&aBlock[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v6 + direct field offset for XPCHostConnection.queue);
  *v14 = v15;
  (*(v12 + 104))(v14, *MEMORY[0x1E69E8020], v11);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  v17 = (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (*(v6 + direct field offset for XPCHostConnection.isEntitledToProvideCustomEndpoint) == 1)
  {
    v18 = (*((*MEMORY[0x1E69E7D40] & *v6) + 0x1D0))(v17);
    v19 = specialized Set.contains(_:)(a1, a2, v18);

    if (v19)
    {
      v20 = [*(v6 + direct field offset for XPCHostConnection.connection) remoteObjectProxy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore28ConversationManagerXPCClient_pMd, &_s14CopresenceCore28ConversationManagerXPCClient_pMR);
      if (swift_dynamicCast())
      {
        v21 = aBlock[6];
        v22 = MEMORY[0x1B270FF70](a1, a2);
        isa = UUID._bridgeToObjectiveC()().super.isa;
        aBlock[4] = a5;
        aBlock[5] = a6;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed IMUserNotification?) -> ();
        aBlock[3] = &block_descriptor_38;
        v24 = _Block_copy(aBlock);

        [v21 requestEndpointWith:v22 activitySessionUUID:isa activity:v25 completion:v24];
        _Block_release(v24);
        swift_unknownObjectRelease();

        return;
      }

      goto LABEL_9;
    }
  }

  a5(0);
}

Swift::Void __swiftcall ConversationManagerHostConnection.requestConversationContainersUpdate()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = v0;
  aBlock[4] = partial apply for closure #1 in ConversationManagerHostConnection.requestConversationContainersUpdate();
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_6_7;
  v10 = _Block_copy(aBlock);
  v11 = v0;
  static DispatchQoS.unspecified.getter();
  v12[1] = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v8, v4, v10);
  _Block_release(v10);
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
}

uint64_t closure #1 in ConversationManagerHostConnection.requestConversationContainersUpdate()(void *a1)
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.host);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001AEE37F60, &v17);
    *(v6 + 12) = 2080;
    type metadata accessor for ConversationManagerHostConnection(0);
    v8 = v3;
    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v17);

    *(v6 + 14) = v11;
    _os_log_impl(&dword_1AEB26000, v4, v5, "%s called for %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v7, -1, -1);
    MEMORY[0x1B27120C0](v6, -1, -1);
  }

  result = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x188))(v12);
  if (result)
  {
    v15 = v14;
    ObjectType = swift_getObjectType();
    (*(v15 + 16))(v3, ObjectType, v15);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t closure #1 in ConversationManagerHostConnection.advertiseGroupActivity(_:reply:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.host);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 136315138;
    type metadata accessor for ConversationManagerHostConnection(0);
    v14 = v9;
    v15 = String.init<A>(reflecting:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v26);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1AEB26000, v10, v11, "advertiseGroupActivity called for %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1B27120C0](v13, -1, -1);
    MEMORY[0x1B27120C0](v12, -1, -1);
  }

  result = (*((*MEMORY[0x1E69E7D40] & *v9) + 0x188))(v18, v19);
  if (result)
  {
    v22 = v21;
    ObjectType = swift_getObjectType();
    v24 = swift_allocObject();
    *(v24 + 16) = a3;
    *(v24 + 24) = a4;
    v25 = *(v22 + 88);

    v25(v9, a2, partial apply for closure #1 in closure #1 in ConversationManagerHostConnection.advertiseGroupActivity(_:reply:), v24, ObjectType, v22);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t ConversationManagerHostConnection.advertiseGroupActivity(_:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a5;
  v29 = a6;
  v24 = a4;
  v25 = a2;
  v26 = a3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v30 = *(v11 - 8);
  v31 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v27 = *&v6[direct field offset for XPCHostConnection.queue];
  (*(v15 + 16))(&v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v14);
  v17 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v6;
  (*(v15 + 32))(v18 + v17, &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  v19 = (v18 + ((v16 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  v20 = v26;
  *v19 = v25;
  v19[1] = v20;
  aBlock[4] = v28;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = v29;
  v21 = _Block_copy(aBlock);
  v22 = v6;

  static DispatchQoS.unspecified.getter();
  v33 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v13, v10, v21);
  _Block_release(v21);
  (*(v32 + 8))(v10, v8);
  (*(v30 + 8))(v13, v31);
}

uint64_t closure #1 in ConversationManagerHostConnection.stopAdvertisingGroupActivity(_:reply:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.host);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 136315138;
    type metadata accessor for ConversationManagerHostConnection(0);
    v14 = v9;
    v15 = String.init<A>(reflecting:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v26);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1AEB26000, v10, v11, "stop advertising group activity called for %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1B27120C0](v13, -1, -1);
    MEMORY[0x1B27120C0](v12, -1, -1);
  }

  result = (*((*MEMORY[0x1E69E7D40] & *v9) + 0x188))(v18, v19);
  if (result)
  {
    v22 = v21;
    ObjectType = swift_getObjectType();
    v24 = swift_allocObject();
    *(v24 + 16) = a3;
    *(v24 + 24) = a4;
    v25 = *(v22 + 96);

    v25(v9, a2, partial apply for closure #1 in closure #1 in ConversationManagerHostConnection.stopAdvertisingGroupActivity(_:reply:), v24, ObjectType, v22);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t @objc ConversationManagerHostConnection.advertiseGroupActivity(_:reply:)(void *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, void (*a7)(char *, uint64_t, uint64_t))
{
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = a1;
  a7(v14, a6, v16);

  return (*(v12 + 8))(v14, v11);
}

uint64_t ConversationManagerHostConnection.prepareForGroupActivity(overrides:completionHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[0] = *&v3[direct field offset for XPCHostConnection.queue];
  v15 = swift_allocObject();
  v15[2] = v3;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a3;
  aBlock[4] = partial apply for closure #1 in ConversationManagerHostConnection.prepareForGroupActivity(overrides:completionHandler:);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_24_1;
  v16 = _Block_copy(aBlock);
  v17 = a1;

  v18 = v3;
  static DispatchQoS.unspecified.getter();
  v20[1] = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v14, v10, v16);
  _Block_release(v16);
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
}

void closure #1 in ConversationManagerHostConnection.prepareForGroupActivity(overrides:completionHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = a1;
  v8 = MEMORY[0x1E69E7D40];
  if (*(a1 + direct field offset for XPCHostConnection.isEntitledToUsePrivateAPI) == 1)
  {
    a1 = a2;
  }

  else if (a2)
  {
    v9 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x80);
    v10 = a2;
    v9(&v21);
    if (v21 == 1)
    {
      v11 = type metadata accessor for AuthorizationRequestOverrides();
      v12 = objc_allocWithZone(v11);
      v13 = &v12[OBJC_IVAR___CPAuthorizationRequestOverrides_title];
      *v13 = 0;
      v13[1] = 0;
      v14 = &v12[OBJC_IVAR___CPAuthorizationRequestOverrides_message];
      *v14 = 0;
      v14[1] = 0;
      v15 = &v12[OBJC_IVAR___CPAuthorizationRequestOverrides_startForEveryone];
      *v15 = 0;
      v15[1] = 0;
      v16 = &v12[OBJC_IVAR___CPAuthorizationRequestOverrides_startForMe];
      *v16 = 0;
      v16[1] = 0;
      v12[OBJC_IVAR___CPAuthorizationRequestOverrides_promptCondition] = 1;
      v12[OBJC_IVAR___CPAuthorizationRequestOverrides_confirmReplacement] = 1;
      v20.receiver = v12;
      v20.super_class = v11;
      v6 = objc_msgSendSuper2(&v20, sel_init);
    }

    else
    {

      v6 = 0;
    }
  }

  if ((*((*v8 & *v7) + 0x188))(a1))
  {
    v18 = v17;
    ObjectType = swift_getObjectType();
    (*(v18 + 32))(v7, v6, a3, a4, ObjectType, v18);
    swift_unknownObjectRelease();
  }
}

uint64_t ConversationManagerHostConnection.createActivitySession(with:onConversationWithUUID:completion:)(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v50 = a1;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v48 = *(v9 - 8);
  v49 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v46 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for DispatchQoS();
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v44 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v16 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x188))(v15);
  if (v16)
  {
    v18 = v17;
    v43[1] = *&v5[direct field offset for XPCHostConnection.queue];
    v19 = v16;
    (*(v13 + 16))(v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v12);
    v20 = *(v13 + 80);
    v43[0] = a4;
    v21 = (v20 + 48) & ~v20;
    v22 = swift_allocObject();
    *(v22 + 2) = v19;
    *(v22 + 3) = v18;
    v23 = v50;
    *(v22 + 4) = v5;
    *(v22 + 5) = v23;
    (*(v13 + 32))(&v22[v21], v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
    v24 = &v22[(v14 + v21 + 7) & 0xFFFFFFFFFFFFFFF8];
    v25 = v43[0];
    *v24 = a3;
    *(v24 + 1) = v25;
    aBlock[4] = partial apply for closure #1 in ConversationManagerHostConnection.createActivitySession(with:onConversationWithUUID:completion:);
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_30_1;
    v26 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    v27 = v5;
    v28 = v23;

    v29 = v44;
    static DispatchQoS.unspecified.getter();
    v51 = MEMORY[0x1E69E7CC0];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v30 = v46;
    v31 = v49;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27106E0](0, v29, v30, v26);
    _Block_release(v26);
    swift_unknownObjectRelease();
    (*(v48 + 8))(v30, v31);
    (*(v45 + 8))(v29, v47);
  }

  else
  {
    v33 = v50;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Log.default);
    v35 = v4;
    v36 = v33;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138412546;
      *(v39 + 4) = v36;
      *(v39 + 12) = 2112;
      *(v39 + 14) = v35;
      *v40 = v36;
      v40[1] = v5;
      v41 = v35;
      v42 = v36;
      _os_log_impl(&dword_1AEB26000, v37, v38, "Failed to create activitySession for request %@ because delegate is nil on %@", v39, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v40, -1, -1);
      MEMORY[0x1B27120C0](v39, -1, -1);
    }

    return a3(0);
  }
}

void ConversationManagerHostConnection.addRemoteMembers(_:toConversationWithUUID:)(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v37 - v15;
  if (v2[direct field offset for XPCHostConnection.isEntitledToUsePrivateAPI] == 1)
  {
    v37 = *&v2[direct field offset for XPCHostConnection.queue];
    (*(v11 + 16))(&v37 - v15, a2, v10);
    v17 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v18 = swift_allocObject();
    v19 = v41;
    *(v18 + 16) = v2;
    *(v18 + 24) = v19;
    (*(v11 + 32))(v18 + v17, v16, v10);
    aBlock[4] = partial apply for closure #1 in ConversationManagerHostConnection.addRemoteMembers(_:toConversationWithUUID:);
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_36;
    v20 = _Block_copy(aBlock);
    v21 = v2;

    static DispatchQoS.unspecified.getter();
    v42 = MEMORY[0x1E69E7CC0];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27106E0](0, v9, v6, v20);
    _Block_release(v20);
    (*(v40 + 8))(v6, v4);
    (*(v38 + 8))(v9, v39);
  }

  else
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Log.host);
    (*(v11 + 16))(v14, a2, v10);
    v23 = v2;

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      aBlock[0] = v40;
      *v26 = 136315650;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
      lazy protocol witness table accessor for type TUConversationMember and conformance NSObject();
      v28 = Set.description.getter();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, aBlock);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      (*(v11 + 8))(v14, v10);
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, aBlock);

      *(v26 + 14) = v34;
      *(v26 + 22) = 2112;
      *(v26 + 24) = v23;
      *v27 = v23;
      v35 = v23;
      _os_log_impl(&dword_1AEB26000, v24, v25, "Process is not entitled to addRemoteMembers %s toConversationWithUUID %s, connection=%@", v26, 0x20u);
      outlined destroy of NSObject?(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v27, -1, -1);
      v36 = v40;
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v36, -1, -1);
      MEMORY[0x1B27120C0](v26, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v14, v10);
    }
  }
}

uint64_t closure #1 in ConversationManagerHostConnection.addRemoteMembers(_:toConversationWithUUID:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x188))();
  if (result)
  {
    v8 = v7;
    ObjectType = swift_getObjectType();
    (*(v8 + 24))(a1, a2, a3, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall ConversationManagerHostConnection.setActivityAuthorization(_:forBundleIdentifier:)(Swift::Bool _, Swift::String forBundleIdentifier)
{
  object = forBundleIdentifier._object;
  countAndFlagsBits = forBundleIdentifier._countAndFlagsBits;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2[direct field offset for XPCHostConnection.isEntitledToUsePrivateAPI] == 1)
  {
    v25[0] = *&v2[direct field offset for XPCHostConnection.queue];
    v14 = swift_allocObject();
    *(v14 + 16) = v2;
    *(v14 + 24) = _;
    *(v14 + 32) = countAndFlagsBits;
    *(v14 + 40) = object;
    aBlock[4] = partial apply for closure #1 in ConversationManagerHostConnection.setActivityAuthorization(_:forBundleIdentifier:);
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_42_0;
    v15 = _Block_copy(aBlock);
    v16 = v2;

    static DispatchQoS.unspecified.getter();
    v25[1] = MEMORY[0x1E69E7CC0];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27106E0](0, v13, v9, v15);
    _Block_release(v15);
    (*(v7 + 8))(v9, v6);
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Log.host);
    v18 = v2;

    v25[0] = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25[0], v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v20 = 67109634;
      *(v20 + 4) = _;
      *(v20 + 8) = 2080;
      *(v20 + 10) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, aBlock);
      *(v20 + 18) = 2112;
      *(v20 + 20) = v18;
      *v21 = v18;
      v23 = v18;
      _os_log_impl(&dword_1AEB26000, v25[0], v19, "Process is not entitled to setActivityAuthorization %{BOOL}d forBundleIdentifier %s, connection=%@", v20, 0x1Cu);
      outlined destroy of NSObject?(v21, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v21, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x1B27120C0](v22, -1, -1);
      MEMORY[0x1B27120C0](v20, -1, -1);
    }

    else
    {
      v24 = v25[0];
    }
  }
}

uint64_t closure #1 in ConversationManagerHostConnection.setActivityAuthorization(_:forBundleIdentifier:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  result = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x188))();
  if (result)
  {
    v10 = v9;
    ObjectType = swift_getObjectType();
    (*(v10 + 40))(a1, a2 & 1, a3, a4, ObjectType, v10);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t closure #1 in ConversationManagerHostConnection.buzzMember(_:conversationUUID:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x188))();
  if (result)
  {
    v8 = v7;
    ObjectType = swift_getObjectType();
    (*(v8 + 56))(a1, a2, a3, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

void ConversationManagerHostConnection.setDownlinkMuted(_:forRemoteParticipantsInConversationWithUUID:)(int a1, uint64_t a2)
{
  v35 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v32 = *(v7 - 8);
  v33 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - v15;
  if (v2[direct field offset for XPCHostConnection.isEntitledToUsePrivateAPI] == 1)
  {
    v31 = *&v2[direct field offset for XPCHostConnection.queue];
    (*(v11 + 16))(&v31 - v15, a2, v10);
    v17 = (*(v11 + 80) + 25) & ~*(v11 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v2;
    *(v18 + 24) = v35 & 1;
    (*(v11 + 32))(v18 + v17, v16, v10);
    aBlock[4] = partial apply for closure #1 in ConversationManagerHostConnection.setDownlinkMuted(_:forRemoteParticipantsInConversationWithUUID:);
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_54;
    v19 = _Block_copy(aBlock);
    v20 = v2;
    static DispatchQoS.unspecified.getter();
    v36 = MEMORY[0x1E69E7CC0];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27106E0](0, v9, v6, v19);
    _Block_release(v19);
    (*(v34 + 8))(v6, v4);
    (*(v32 + 8))(v9, v33);
  }

  else
  {
    v21 = v35;
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Log.host);
    (*(v11 + 16))(v14, a2, v10);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock[0] = v26;
      *v25 = 67109378;
      *(v25 + 4) = v21 & 1;
      *(v25 + 8) = 2080;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      (*(v11 + 8))(v14, v10);
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, aBlock);

      *(v25 + 10) = v30;
      _os_log_impl(&dword_1AEB26000, v23, v24, "Process is not entitled to setDownlinkMuted %{BOOL}d forRemoteParticipantsInConversationWithUUID %s", v25, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x1B27120C0](v26, -1, -1);
      MEMORY[0x1B27120C0](v25, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v14, v10);
    }
  }
}

uint64_t closure #1 in ConversationManagerHostConnection.setDownlinkMuted(_:forRemoteParticipantsInConversationWithUUID:)(void *a1, char a2, uint64_t a3)
{
  result = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x188))();
  if (result)
  {
    v8 = v7;
    ObjectType = swift_getObjectType();
    (*(v8 + 64))(a1, a2 & 1, a3, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

void ConversationManagerHostConnection.buzzMember(_:conversationUUID:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, ...)
{
  v45 = a6;
  v46 = a3;
  v47 = a4;
  v48 = a5;
  v52 = a1;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v49 = *(v11 - 8);
  v50 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v44 - v19;
  if (v6[direct field offset for XPCHostConnection.isEntitledToUsePrivateAPI] == 1)
  {
    v45 = *&v6[direct field offset for XPCHostConnection.queue];
    (*(v15 + 16))(&v44 - v19, a2, v14);
    v21 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v22 = swift_allocObject();
    v23 = v52;
    *(v22 + 16) = v6;
    *(v22 + 24) = v23;
    (*(v15 + 32))(v22 + v21, v20, v14);
    aBlock[4] = v47;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = v48;
    v24 = _Block_copy(aBlock);
    v25 = v6;
    v26 = v23;
    static DispatchQoS.unspecified.getter();
    v53 = MEMORY[0x1E69E7CC0];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27106E0](0, v13, v10, v24);
    _Block_release(v24);
    (v51[1].isa)(v10, v8);
    (*(v49 + 8))(v13, v50);
  }

  else
  {
    v27 = v52;
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Log.host);
    (*(v15 + 16))(v18, a2, v14);
    v29 = v6;
    v30 = v27;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v51 = v31;
      v34 = v33;
      v35 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      aBlock[0] = v52;
      *v34 = 138412802;
      *(v34 + 4) = v30;
      *v35 = v30;
      *(v34 + 12) = 2080;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v36 = v30;
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      (*(v15 + 8))(v18, v14);
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, aBlock);

      *(v34 + 14) = v40;
      *(v34 + 22) = 2112;
      *(v34 + 24) = v29;
      v35[1] = v29;
      v41 = v29;
      v42 = v51;
      _os_log_impl(&dword_1AEB26000, v51, v32, v45, v34, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v35, -1, -1);
      v43 = v52;
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      MEMORY[0x1B27120C0](v43, -1, -1);
      MEMORY[0x1B27120C0](v34, -1, -1);
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }
  }
}

uint64_t closure #1 in ConversationManagerHostConnection.kickMember(_:conversationUUID:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x188))();
  if (result)
  {
    v8 = v7;
    ObjectType = swift_getObjectType();
    (*(v8 + 72))(a1, a2, a3, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t @objc ConversationManagerHostConnection.buzzMember(_:conversationUUID:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, char *))
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  a5(v12, v11);

  return (*(v9 + 8))(v11, v8);
}

void ConversationManagerHostConnection.updateConversation(with:participantPresentationContexts:)(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - v15;
  if (v2[direct field offset for XPCHostConnection.isEntitledToUsePrivateAPI] == 1)
  {
    v38 = *&v2[direct field offset for XPCHostConnection.queue];
    (*(v11 + 16))(&v38 - v15, a1, v10);
    v17 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v18 = (v12 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = swift_allocObject();
    *(v19 + 16) = v2;
    (*(v11 + 32))(v19 + v17, v16, v10);
    *(v19 + v18) = v42;
    aBlock[4] = partial apply for closure #1 in ConversationManagerHostConnection.updateConversation(with:participantPresentationContexts:);
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_66_0;
    v20 = _Block_copy(aBlock);
    v21 = v2;

    static DispatchQoS.unspecified.getter();
    v43 = MEMORY[0x1E69E7CC0];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27106E0](0, v9, v6, v20);
    _Block_release(v20);
    (*(v41 + 8))(v6, v4);
    (*(v39 + 8))(v9, v40);
  }

  else
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Log.host);
    (*(v11 + 16))(v14, a1, v10);
    v23 = v2;

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      aBlock[0] = v41;
      *v26 = 136315650;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      (*(v11 + 8))(v14, v10);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, aBlock);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2080;
      v32 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipantPresentationContext, 0x1E69D8BA0);
      v33 = MEMORY[0x1B2710180](v42, v32);
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, aBlock);

      *(v26 + 14) = v35;
      *(v26 + 22) = 2112;
      *(v26 + 24) = v23;
      *v27 = v23;
      v36 = v23;
      _os_log_impl(&dword_1AEB26000, v24, v25, "Process is not entitled to updateConversation %s participantPresentationContexts %s, connection=%@", v26, 0x20u);
      outlined destroy of NSObject?(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v27, -1, -1);
      v37 = v41;
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v37, -1, -1);
      MEMORY[0x1B27120C0](v26, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v14, v10);
    }
  }
}

uint64_t closure #1 in ConversationManagerHostConnection.updateConversation(with:participantPresentationContexts:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x188))();
  if (result)
  {
    v8 = v7;
    ObjectType = swift_getObjectType();
    (*(v8 + 8))(a1, a2, a3, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t ConversationManagerHostConnection.includeMetricsReport(_:onConversationWithUUID:)(uint64_t a1, uint64_t a2)
{
  v20[0] = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *&v2[direct field offset for XPCHostConnection.queue];
  (*(v11 + 16))(v13, a2, v10);
  v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v15 = swift_allocObject();
  v16 = v20[0];
  *(v15 + 16) = v2;
  *(v15 + 24) = v16;
  (*(v11 + 32))(v15 + v14, v13, v10);
  aBlock[4] = partial apply for closure #1 in ConversationManagerHostConnection.includeMetricsReport(_:onConversationWithUUID:);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_72;
  v17 = _Block_copy(aBlock);
  v18 = v2;

  static DispatchQoS.unspecified.getter();
  v24 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v9, v6, v17);
  _Block_release(v17);
  (*(v23 + 8))(v6, v4);
  (*(v21 + 8))(v9, v22);
}

uint64_t closure #1 in ConversationManagerHostConnection.includeMetricsReport(_:onConversationWithUUID:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x188))();
  if (result)
  {
    v8 = v7;
    ObjectType = swift_getObjectType();
    (*(v8 + 104))(a1, a2, a3, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t closure #1 in ConversationManagerHostConnection.registerIdentifierForCustomEndpoint(_:)(void *a1, Swift::Int a2, Swift::Int a3)
{
  v6 = MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x1E0);

  v8 = v7(v14);
  specialized Set._Variant.insert(_:)(&v15, a2, a3);

  v9 = v8(v14, 0);
  result = (*((*v6 & *a1) + 0x188))(v9);
  if (result)
  {
    v12 = v11;
    ObjectType = swift_getObjectType();
    (*(v12 + 112))(a1, a2, a3, ObjectType, v12);
    return swift_unknownObjectRelease();
  }

  return result;
}

void ConversationManagerHostConnection.registerIdentifierForCustomEndpoint(_:)(NSObject *a1, unint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  v45 = a5;
  v46 = a6;
  v43 = a3;
  v44 = a4;
  v7 = v6;
  v48 = a1;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v47 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Log.host);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v41 = v6;
    v20 = v19;
    v21 = swift_slowAlloc();
    v42 = v14;
    v22 = v12;
    v23 = v13;
    v24 = v9;
    v25 = v10;
    v26 = v21;
    aBlock[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, a2, aBlock);
    _os_log_impl(&dword_1AEB26000, v17, v18, v43, v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    v27 = v26;
    v10 = v25;
    v9 = v24;
    v13 = v23;
    v12 = v22;
    v14 = v42;
    MEMORY[0x1B27120C0](v27, -1, -1);
    v28 = v20;
    v7 = v41;
    MEMORY[0x1B27120C0](v28, -1, -1);
  }

  if (*(v7 + direct field offset for XPCHostConnection.isEntitledToProvideCustomEndpoint) == 1)
  {
    v29 = swift_allocObject();
    v30 = v48;
    v29[2] = v7;
    v29[3] = v30;
    v29[4] = a2;
    aBlock[4] = v45;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = v46;
    v31 = _Block_copy(aBlock);

    v32 = v7;
    v33 = v47;
    static DispatchQoS.unspecified.getter();
    v49 = MEMORY[0x1E69E7CC0];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27106E0](0, v33, v12, v31);
    _Block_release(v31);
    (*(v10 + 8))(v12, v9);
    (*(v14 + 8))(v33, v13);
  }

  else
  {
    v34 = v7;
    v48 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v48, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      *(v36 + 4) = v34;
      *v37 = v34;
      v38 = v34;
      _os_log_impl(&dword_1AEB26000, v48, v35, "Process is not entitled to provide custom endpoints, connection=%@", v36, 0xCu);
      outlined destroy of NSObject?(v37, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v37, -1, -1);
      MEMORY[0x1B27120C0](v36, -1, -1);
    }

    v39 = v48;
  }
}

uint64_t closure #1 in ConversationManagerHostConnection.unregisterIdentifierForCustomEndpoint(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x1E0))(v7);
  specialized Set._Variant.remove(_:)(a2, a3);

  return v5(v7, 0);
}

uint64_t @objc ConversationManagerHostConnection.registerIdentifierForCustomEndpoint(_:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

uint64_t ConversationManagerHostConnection.fetchEndpoint(with:activitySessionUUID:activity:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v57 = a5;
  v59 = a4;
  v60 = a6;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v56 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v63 = &v48[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v64 = type metadata accessor for DispatchQoS();
  v62 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v61 = &v48[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v53 = v15;
  v54 = &v48[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v48[-v16];
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Log.host);
  v19 = *(v13 + 16);
  v55 = a3;
  v19(v17, a3, v12);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  v22 = os_log_type_enabled(v20, v21);
  v52 = a2;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v51 = v19;
    v24 = v23;
    v50 = swift_slowAlloc();
    aBlock[0] = v50;
    *v24 = 136315394;
    *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, aBlock);
    *(v24 + 12) = 2080;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v49 = v21;
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v9;
    v28 = v27;
    v29 = v17;
    v30 = a1;
    (*(v13 + 8))(v29, v12);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v28, aBlock);
    v9 = v26;

    *(v24 + 14) = v31;
    _os_log_impl(&dword_1AEB26000, v20, v49, "fetchEndpoint %s activitySessionUUID %s", v24, 0x16u);
    v32 = v50;
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v32, -1, -1);
    v33 = v24;
    v19 = v51;
    MEMORY[0x1B27120C0](v33, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v17, v12);
    v30 = a1;
  }

  v34 = v58;
  v51 = *&v58[direct field offset for XPCHostConnection.queue];
  v35 = v54;
  v19(v54, v55, v12);
  v36 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v37 = (v53 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  *(v38 + 2) = v34;
  *(v38 + 3) = v30;
  *(v38 + 4) = v52;
  (*(v13 + 32))(&v38[v36], v35, v12);
  v40 = v59;
  v39 = v60;
  *&v38[v37] = v59;
  v41 = &v38[(v37 + 15) & 0xFFFFFFFFFFFFFFF8];
  *v41 = v57;
  v41[1] = v39;
  aBlock[4] = partial apply for closure #1 in ConversationManagerHostConnection.fetchEndpoint(with:activitySessionUUID:activity:completion:);
  aBlock[5] = v38;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_90_0;
  v42 = _Block_copy(aBlock);

  v43 = v34;
  v44 = v40;

  v45 = v61;
  static DispatchQoS.unspecified.getter();
  v65 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v46 = v63;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v45, v46, v42);
  _Block_release(v42);
  (*(v56 + 8))(v46, v9);
  (*(v62 + 8))(v45, v64);
}

uint64_t closure #1 in ConversationManagerHostConnection.fetchEndpoint(with:activitySessionUUID:activity:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x188))();
  if (result)
  {
    v16 = v15;
    ObjectType = swift_getObjectType();
    (*(v16 + 120))(a1, a2, a3, a4, a5, a6, a7, ObjectType, v16);

    return swift_unknownObjectRelease();
  }

  return result;
}

char *specialized ConversationManagerHostConnection.__allocating_init(connection:queue:featureFlags:serverBag:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = objc_allocWithZone(type metadata accessor for ConversationManagerHostConnection(0));

  return specialized ConversationManagerHostConnection.init(connection:queue:featureFlags:serverBag:)(a1, a2, a3, a4, v10);
}

uint64_t outlined init with copy of ProtectedStorage?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore16ProtectedStorage_pSgMd, &_s14CopresenceCore16ProtectedStorage_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *specialized ConversationManagerHostConnection.init(connection:queue:featureFlags:serverBag:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + direct field offset for ConversationManagerHostConnection.delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(a5 + direct field offset for ConversationManagerHostConnection.aliasedConversationContainers) = MEMORY[0x1E69E7CC8];
  v10 = a5 + direct field offset for ConversationManagerHostConnection.$__lazy_storage_$_protectedStorage;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0;
  *(a5 + direct field offset for ConversationManagerHostConnection.identifiersForCustomEndpoints) = MEMORY[0x1E69E7CD0];
  *(a5 + direct field offset for ConversationManagerHostConnection.featureFlags) = a3;
  *(a5 + direct field offset for ConversationManagerHostConnection.serverBag) = a4;
  swift_unknownObjectRetain();
  v11 = specialized XPCHostConnection.init(connection:queue:)(a1, a2);
  v12 = v11;
  swift_unknownObjectRelease();
  if (v11)
  {
  }

  return v11;
}

uint64_t type metadata accessor for ConversationManagerHostConnection(uint64_t a1)
{
  result = type metadata singleton initialization cache for ConversationManagerHostConnection;
  if (!type metadata singleton initialization cache for ConversationManagerHostConnection)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t objectdestroy_8Tm_0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t partial apply for closure #1 in ConversationManagerHostConnection.advertiseGroupActivity(_:reply:)(uint64_t (*a1)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v1 + 16);
  v5 = (v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return a1(v4, v1 + v3, v6, v7);
}

unint64_t lazy protocol witness table accessor for type TUConversationMember and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject;
  if (!lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject);
  }

  return result;
}

uint64_t partial apply for closure #1 in ConversationManagerHostConnection.setDownlinkMuted(_:forRemoteParticipantsInConversationWithUUID:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 25) & ~*(v1 + 80));

  return closure #1 in ConversationManagerHostConnection.setDownlinkMuted(_:forRemoteParticipantsInConversationWithUUID:)(v2, v3, v4);
}

uint64_t partial apply for closure #1 in ConversationManagerHostConnection.updateConversation(with:participantPresentationContexts:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in ConversationManagerHostConnection.updateConversation(with:participantPresentationContexts:)(v3, v0 + v2, v4);
}

uint64_t partial apply for closure #1 in ConversationManagerHostConnection.addRemoteMembers(_:toConversationWithUUID:)(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  return a1(v3, v4, v5);
}

uint64_t objectdestroy_74Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t partial apply for closure #1 in ConversationManagerHostConnection.fetchEndpoint(with:activitySessionUUID:activity:completion:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + v3);
  v8 = (v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return closure #1 in ConversationManagerHostConnection.fetchEndpoint(with:activitySessionUUID:activity:completion:)(v4, v5, v6, v0 + v2, v7, v9, v10);
}

void specialized ConversationManagerHostConnection.requestEndpoint(with:activitySessionUUID:activity:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (**a6)(void, void))
{
  v25 = a4;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&aBlock[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = swift_allocObject();
  *(v14 + 16) = a6;
  v15 = *(a5 + direct field offset for XPCHostConnection.queue);
  *v13 = v15;
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v10);
  _Block_copy(a6);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  v17 = (*(v11 + 8))(v13, v10);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    _Block_release(a6);
    __break(1u);
    return;
  }

  if (*(a5 + direct field offset for XPCHostConnection.isEntitledToProvideCustomEndpoint) == 1)
  {
    v18 = (*((*MEMORY[0x1E69E7D40] & *a5) + 0x1D0))(v17);
    v19 = specialized Set.contains(_:)(a1, a2, v18);

    if (v19)
    {
      v20 = [*(a5 + direct field offset for XPCHostConnection.connection) remoteObjectProxy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore28ConversationManagerXPCClient_pMd, &_s14CopresenceCore28ConversationManagerXPCClient_pMR);
      if (swift_dynamicCast())
      {
        v21 = aBlock[6];
        v22 = MEMORY[0x1B270FF70](a1, a2);
        isa = UUID._bridgeToObjectiveC()().super.isa;
        aBlock[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned NSXPCListenerEndpoint?) -> ()partial apply;
        aBlock[5] = v14;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed IMUserNotification?) -> ();
        aBlock[3] = &block_descriptor_133;
        v24 = _Block_copy(aBlock);

        [v21 requestEndpointWith:v22 activitySessionUUID:isa activity:v25 completion:v24];
        _Block_release(v24);

        swift_unknownObjectRelease();

        return;
      }

      goto LABEL_9;
    }
  }

  a6[2](a6, 0);
}

uint64_t specialized ConversationManagerHostConnection.createActivitySession(with:onConversationWithUUID:completion:)(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v44 = a2;
  v51 = a1;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v49 = *(v6 - 8);
  v50 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for DispatchQoS();
  v46 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v45 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  v14 = *((*MEMORY[0x1E69E7D40] & *a3) + 0x188);
  v15 = _Block_copy(a4);
  v16 = v14(v15);
  if (v16)
  {
    v18 = v16;
    v19 = v17;
    v43 = *(a3 + direct field offset for XPCHostConnection.queue);
    (*(v10 + 16))(&v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v44, v9);
    v20 = (*(v10 + 80) + 48) & ~*(v10 + 80);
    v21 = (v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    *(v22 + 2) = v18;
    *(v22 + 3) = v19;
    v23 = v51;
    *(v22 + 4) = a3;
    *(v22 + 5) = v23;
    (*(v10 + 32))(&v22[v20], v12, v9);
    v24 = &v22[v21];
    *v24 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ();
    v24[1] = v13;
    aBlock[4] = closure #1 in ConversationManagerHostConnection.createActivitySession(with:onConversationWithUUID:completion:)partial apply;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_116;
    v25 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    v26 = a3;
    v27 = v23;

    v28 = v45;
    static DispatchQoS.unspecified.getter();
    v52 = MEMORY[0x1E69E7CC0];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v29 = v47;
    v30 = v50;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27106E0](0, v28, v29, v25);
    _Block_release(v25);
    swift_unknownObjectRelease();
    (*(v49 + 8))(v29, v30);
    (*(v46 + 8))(v28, v48);
  }

  else
  {
    v32 = v51;
    v33 = a4;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Log.default);
    v35 = a3;
    v36 = v32;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138412546;
      *(v39 + 4) = v36;
      *(v39 + 12) = 2112;
      *(v39 + 14) = v35;
      *v40 = v36;
      v40[1] = a3;
      v41 = v35;
      v42 = v36;
      _os_log_impl(&dword_1AEB26000, v37, v38, "Failed to create activitySession for request %@ because delegate is nil on %@", v39, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v40, -1, -1);
      MEMORY[0x1B27120C0](v39, -1, -1);
    }

    v33[2](v33, 0);
  }
}

uint64_t partial apply for closure #1 in ConversationManagerHostConnection.createActivitySession(with:onConversationWithUUID:completion:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  v6 = &v0[(*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8];
  v7 = *v6;
  v8 = *(v6 + 1);
  ObjectType = swift_getObjectType();
  return (*(v3 + 48))(v4, v5, &v0[v2], v7, v8, ObjectType, v3);
}

uint64_t RunningBoardAppVisibilityMonitor.__allocating_init(appPolicyManager:applicationController:nearbyOption:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  RunningBoardAppVisibilityMonitor.init(appPolicyManager:applicationController:nearbyOption:)(a1, a2, a3, a4);
  return v8;
}

uint64_t specialized AppVisibilityMonitor.applicationType(forBundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), v5);
  if (((*(v6 + 8))(a1, a2, v5, v6) & 1) == 0)
  {
    return 2;
  }

  v7 = (*((*MEMORY[0x1E69E7D40] & **(v2 + 16)) + 0x98))();
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);

    v11 = [v10 BOOLValue];

    return v11;
  }

  else
  {

    return 0;
  }
}

id specialized AppVisibilityMonitor.handleAppVisibilityUpdate(forBundleIdentifier:applicationType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v54 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v54 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v57 = &v54 - v22;
  (*(*v3 + 144))(v21);
  v55 = a1;
  v56 = a3;
  if (v23)
  {

    v24 = objc_opt_self();
    v25 = MEMORY[0x1B270FF70](a1, a2);
    v26 = [v24 nearbyUpdateForegroundAppURLForBundleIdentifier:v25 applicationType:a3];

    v27 = a2;
    if (v26)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v8 + 56))(v20, 0, 1, v7);
    }

    else
    {
      (*(v8 + 56))(v20, 1, 1, v7);
    }
  }

  else
  {
    v28 = objc_opt_self();
    v29 = MEMORY[0x1B270FF70](a1, a2);
    v30 = [v28 faceTimeUpdateForegroundAppURLForBundleIdentifier:v29 applicationType:a3];

    v27 = a2;
    if (v30)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v8 + 56))(v17, 0, 1, v7);
    }

    else
    {
      (*(v8 + 56))(v17, 1, 1, v7);
    }

    v20 = v17;
  }

  v31 = v10;
  v32 = v57;
  outlined init with take of URL?(v20, v57);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v32, v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v8 + 48))(v14, 1, v7) == 1)
  {
    outlined destroy of NSObject?(v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Log.default);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    v36 = os_log_type_enabled(v34, v35);
    v37 = v27;
    v39 = v55;
    v38 = v56;
    if (v36)
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v59 = v41;
      *v40 = 136315394;
      *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v37, &v59);
      *(v40 + 12) = 2080;
      v58 = v38;
      type metadata accessor for CPApplicationType(0);
      v42 = String.init<A>(reflecting:)();
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v59);

      *(v40 + 14) = v44;
      _os_log_impl(&dword_1AEB26000, v34, v35, "AppVisibilityMonitor: Unable to create update foreground app URL for bundle identifier: %s with type: %s", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v41, -1, -1);
      MEMORY[0x1B27120C0](v40, -1, -1);
    }

    return outlined destroy of NSObject?(v57, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  (*(v8 + 32))(v10, v14, v7);
  v45 = [objc_allocWithZone(MEMORY[0x1E69636B8]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE07B20;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v47;
  *(inited + 72) = MEMORY[0x1E69E6370];
  *(inited + 48) = 1;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of NSObject?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v45 setFrontBoardOptions_];

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v51 = result;
    URL._bridgeToObjectiveC()(v50);
    v53 = v52;
    [v51 openURL:v52 configuration:v45 completionHandler:0];

    (*(v8 + 8))(v31, v7);
    return outlined destroy of NSObject?(v57, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  __break(1u);
  return result;
}

uint64_t RBSProcessStateUpdate.bundleIdentifier.getter()
{
  v1 = [v0 process];
  v2 = [v1 bundle];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 identifier];

  if (!v3)
  {
    return 0;
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t protocol witness for ProcessStateUpdate.bundleIdentifier.getter in conformance RBSProcessStateUpdate()
{
  v1 = [*v0 process];
  v2 = [v1 bundle];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 identifier];

  if (!v3)
  {
    return 0;
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

id protocol witness for ProcessStateUpdate.state.getter in conformance RBSProcessStateUpdate()
{
  v1 = [*v0 state];

  return v1;
}

id protocol witness for ProcessStateUpdate.previousState.getter in conformance RBSProcessStateUpdate()
{
  v1 = [*v0 previousState];

  return v1;
}

uint64_t RunningBoardAppVisibilityMonitor._nearbyOption.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);

  return v1;
}

uint64_t RunningBoardAppVisibilityMonitor._nearbyOption.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t *RunningBoardAppVisibilityMonitor.init(appPolicyManager:applicationController:nearbyOption:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = a2;
  v10 = *v5;
  v5[8] = 0;
  v11 = MEMORY[0x1E69E7CC0];
  v5[9] = 0;
  v5[10] = v11;
  v5[11] = 0;
  v5[2] = a1;
  outlined init with copy of UserNotificationCenter(a2, (v5 + 3));
  swift_beginAccess();
  v5[8] = a3;
  v5[9] = a4;
  v12 = *(v10 + 232);
  v13 = a1;
  v12();
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for closure #1 in RunningBoardAppVisibilityMonitor.init(appPolicyManager:applicationController:nearbyOption:);
  *(v14 + 24) = v5;
  aBlock[4] = partial apply for closure #2 in ActivitySession.postEvent(event:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed RBSProcessMonitorConfiguring) -> ();
  aBlock[3] = &block_descriptor_39;
  v15 = _Block_copy(aBlock);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v17 = [ObjCClassFromMetadata monitorWithConfiguration_];
  _Block_release(v15);

  __swift_destroy_boxed_opaque_existential_1Tm(v8);

  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    v19 = v5[11];
    v5[11] = v17;

    return v5;
  }

  return result;
}

void closure #1 in RunningBoardAppVisibilityMonitor.init(appPolicyManager:applicationController:nearbyOption:)(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69C7630]) init];
  [v2 setValues_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AEE07B20;
  *(v3 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v3 + 40) = v4;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setEndowmentNamespaces_];

  [a1 setStateDescriptor_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AEE07B40;
  *(v6 + 32) = [objc_opt_self() predicateMatchingProcessTypeApplication];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for RBSProcessPredicate, 0x1E69C7610);
  v7 = Array._bridgeToObjectiveC()().super.isa;

  [a1 setPredicates_];

  v8 = swift_allocObject();
  swift_weakInit();
  v10[4] = partial apply for closure #1 in closure #1 in RunningBoardAppVisibilityMonitor.init(appPolicyManager:applicationController:nearbyOption:);
  v10[5] = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed (@guaranteed RBSProcessMonitor, @guaranteed RBSProcessHandle, @guaranteed RBSProcessStateUpdate) -> ();
  v10[3] = &block_descriptor_14;
  v9 = _Block_copy(v10);

  [a1 setUpdateHandler_];
  _Block_release(v9);
}

uint64_t closure #1 in closure #1 in RunningBoardAppVisibilityMonitor.init(appPolicyManager:applicationController:nearbyOption:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v9[3] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for RBSProcessStateUpdate, 0x1E69C7638);
    v9[4] = &protocol witness table for RBSProcessStateUpdate;
    v9[0] = a3;
    v7 = *(*v6 + 216);
    v8 = a3;
    v7(v9);

    return __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed RBSProcessMonitorConfiguring) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t RunningBoardAppVisibilityMonitor.deinit()
{
  (*(*v0 + 208))();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return v0;
}

uint64_t RunningBoardAppVisibilityMonitor.__deallocating_deinit()
{
  (*(*v0 + 208))();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall RunningBoardAppVisibilityMonitor.invalidate()()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    [v1 invalidate];
  }

  else
  {
    __break(1u);
  }
}

void RunningBoardAppVisibilityMonitor.handleProcessStateUpdate(_:)(void *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 16))(v4, v5);
  if (v6)
  {
    v74 = v6;
    v7 = a1[3];
    v8 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v7);
    v9 = (*(v8 + 8))(v7, v8);
    if (v10)
    {
      v11 = v9;
      v12 = v10;
      v13 = *(*v1 + 240);

      v14 = v13(v11, v12);

      if ((v14 & 1) == 0)
      {
        if (one-time initialization token for default != -1)
        {
LABEL_70:
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        __swift_project_value_buffer(v33, static Log.default);
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v81[0] = v37;
          *v36 = 136315138;

          v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v81);

          *(v36 + 4) = v38;
          _os_log_impl(&dword_1AEB26000, v34, v35, "RunningBoardAppVisibilityMonitor: Ignoring visibility update for bundle identifier: %s", v36, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v37);
          MEMORY[0x1B27120C0](v37, -1, -1);
          MEMORY[0x1B27120C0](v36, -1, -1);

LABEL_68:
          return;
        }

LABEL_45:

        return;
      }

      v15 = a1[3];
      v16 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v15);
      v17 = (*(v16 + 24))(v15, v16);
      if (v17)
      {
        v18 = v17;
        if ([v17 taskState] == 4)
        {
          v19 = [v18 endowmentNamespaces];
          if (v19)
          {
            v20 = v19;
            v21 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

            v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v24 = specialized Set.contains(_:)(v22, v23, v21);

            goto LABEL_23;
          }
        }
      }

      v24 = 0;
LABEL_23:
      if ([v74 taskState] == 4 && (v40 = objc_msgSend(v74, sel_endowmentNamespaces)) != 0)
      {
        v41 = v40;
        v42 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = specialized Set.contains(_:)(v43, v44, v42);

        if ((v24 ^ v45))
        {
          if (v45)
          {
            swift_beginAccess();
            v46 = v2[10];

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v2[10] = v46;
            if (isUniquelyReferenced_nonNull_native)
            {
LABEL_28:
              v49 = *(v46 + 2);
              v48 = *(v46 + 3);
              if (v49 >= v48 >> 1)
              {
                v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v46);
              }

              *(v46 + 2) = v49 + 1;
              v50 = &v46[16 * v49];
              *(v50 + 4) = v11;
              *(v50 + 5) = v12;
              v2[10] = v46;
              swift_endAccess();
LABEL_67:

              v71 = specialized AppVisibilityMonitor.applicationType(forBundleIdentifier:)(v11, v12);

              v72 = *(*v2 + 248);

              v72(v11, v12, v71);
              swift_bridgeObjectRelease_n();
              goto LABEL_68;
            }

LABEL_75:
            v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v46 + 2) + 1, 1, v46);
            v2[10] = v46;
            goto LABEL_28;
          }

LABEL_32:
          swift_beginAccess();
          v46 = v2[10];
          v51 = *(v46 + 2);
          if (v51)
          {
            v52 = 0;
            v53 = 0;
            while (1)
            {
              v54 = *&v46[v52 + 32] == v11 && v12 == *&v46[v52 + 40];
              if (v54 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              ++v53;
              v52 += 16;
              if (v51 == v53)
              {
                goto LABEL_40;
              }
            }

            v55 = v53 + 1;
            if (__OFADD__(v53, 1))
            {
LABEL_74:
              __break(1u);
              goto LABEL_75;
            }

            v62 = *(v46 + 2);
            while (v55 != v62)
            {
              if (v55 >= v62)
              {
                __break(1u);
                goto LABEL_70;
              }

              v63 = *&v46[v52 + 48];
              v64 = *&v46[v52 + 56];
              v65 = v63 == v11 && v12 == v64;
              if (!v65 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                if (v55 != v53)
                {
                  if (v53 >= v62)
                  {
                    goto LABEL_72;
                  }

                  v66 = &v46[16 * v53 + 32];
                  v67 = *(v66 + 1);
                  v73 = *v66;

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v46 = specialized _ArrayBuffer._consumeAndCreateNew()(v46);
                  }

                  v68 = &v46[16 * v53];
                  *(v68 + 4) = v63;
                  *(v68 + 5) = v64;

                  if (v55 >= *(v46 + 2))
                  {
                    goto LABEL_73;
                  }

                  v69 = &v46[v52];
                  *(v69 + 6) = v73;
                  *(v69 + 7) = v67;

                  v2[10] = v46;
                }

                ++v53;
              }

              ++v55;
              v62 = *(v46 + 2);
              v52 += 16;
            }
          }

          else
          {
LABEL_40:
            v55 = *(v46 + 2);
            v53 = v51;
          }

          if (v55 >= v53)
          {
            specialized Array.replaceSubrange<A>(_:with:)(v53, v55);
            swift_endAccess();
            v56 = v2[10];
            v59 = *(v56 + 16);
            v57 = v56 + 16;
            v58 = v59;
            if (v59)
            {
              v60 = (v57 + 16 * v58);
              v11 = *v60;
              v61 = v60[1];
            }

            else
            {
              v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v61 = v70;
            }

            v12 = v61;
            goto LABEL_67;
          }

          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
          goto LABEL_74;
        }
      }

      else if (v24)
      {
        goto LABEL_32;
      }

      goto LABEL_45;
    }
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Log.default);
  outlined init with copy of UserNotificationCenter(a1, v81);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v80 = v29;
    *v28 = 136315138;
    outlined init with copy of UserNotificationCenter(v81, v79);
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v79, &v77, &_s14CopresenceCore18ProcessStateUpdate_pSgMd, &_s14CopresenceCore18ProcessStateUpdate_pSgMR);
    if (v78)
    {
      outlined init with take of ContiguousBytes(&v77, v76);
      outlined init with copy of UserNotificationCenter(v76, v75);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore18ProcessStateUpdate_pMd, &_s14CopresenceCore18ProcessStateUpdate_pMR);
      v30 = String.init<A>(reflecting:)();
      v32 = v31;
      __swift_destroy_boxed_opaque_existential_1Tm(v76);
    }

    else
    {
      v32 = 0xE300000000000000;
      v30 = 7104878;
    }

    outlined destroy of NSObject?(v79, &_s14CopresenceCore18ProcessStateUpdate_pSgMd, &_s14CopresenceCore18ProcessStateUpdate_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(v81);
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v80);

    *(v28 + 4) = v39;
    _os_log_impl(&dword_1AEB26000, v26, v27, "RunningBoardAppVisibilityMonitor: Skipping process state update since it's missing necessary contents: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x1B27120C0](v29, -1, -1);
    MEMORY[0x1B27120C0](v28, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v81);
  }
}

uint64_t specialized AppVisibilityMonitor.shouldHandleAppVisibilityUpdate(forBundleIdentifier:)(uint64_t a1, unint64_t a2, uint64_t (*a3)(void *))
{
  v6 = objc_allocWithZone(MEMORY[0x1E69635F8]);

  v7 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(a1, a2, 1);
  if (!v7)
  {
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
      v28[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v28);
      _os_log_impl(&dword_1AEB26000, v9, v10, "AppVisibilityMonitor: Unable to get application record for bundle identifier: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1B27120C0](v12, -1, -1);
      MEMORY[0x1B27120C0](v11, -1, -1);
    }

    goto LABEL_7;
  }

  v15 = v7;
  v16 = [v7 appTags];
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v28[0] = 0x6E6564646968;
  v28[1] = 0xE600000000000000;
  MEMORY[0x1EEE9AC00](v18);
  v27[2] = v28;
  LOBYTE(v16) = specialized Sequence.contains(where:)(a3, v27, v17);

  if (v16)
  {

LABEL_7:
    v13 = 0;
    return v13 & 1;
  }

  v19 = [v15 compatibilityObject];
  v20 = [v19 bundleType];

  if (!v20)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_18;
  }

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v23)
  {
LABEL_18:

    v13 = 1;
    return v13 & 1;
  }

  if (v21 == v24 && v23 == v25)
  {

    v13 = 0;
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v13 = v26 ^ 1;
  }

  return v13 & 1;
}

id specialized AppVisibilityMonitor.handleAppVisibilityUpdate(forBundleIdentifier:applicationType:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v40 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v40 - v17;
  v19 = objc_opt_self();
  v40 = a1;
  v20 = MEMORY[0x1B270FF70](a1, a2);
  v41 = a3;
  v21 = [v19 faceTimeUpdateForegroundAppURLForBundleIdentifier:v20 applicationType:a3];

  if (v21)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v7 + 56))(v16, 0, 1, v6);
  }

  else
  {
    (*(v7 + 56))(v16, 1, 1, v6);
  }

  v22 = v18;
  outlined init with take of URL?(v16, v18);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v18, v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v7 + 48))(v13, 1, v6) == 1)
  {
    outlined destroy of NSObject?(v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Log.default);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v43 = v27;
      *v26 = 136315394;
      *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, a2, &v43);
      *(v26 + 12) = 2080;
      v42 = v41;
      type metadata accessor for CPApplicationType(0);
      v28 = String.init<A>(reflecting:)();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v43);

      *(v26 + 14) = v30;
      _os_log_impl(&dword_1AEB26000, v24, v25, "AppVisibilityMonitor: Unable to create update foreground app URL for bundle identifier: %s with type: %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v27, -1, -1);
      MEMORY[0x1B27120C0](v26, -1, -1);
    }

    return outlined destroy of NSObject?(v22, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  (*(v7 + 32))(v9, v13, v6);
  v31 = [objc_allocWithZone(MEMORY[0x1E69636B8]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE07B20;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v33;
  *(inited + 72) = MEMORY[0x1E69E6370];
  *(inited + 48) = 1;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of NSObject?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v31 setFrontBoardOptions_];

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v37 = result;
    URL._bridgeToObjectiveC()(v36);
    v39 = v38;
    [v37 openURL:v38 configuration:v31 completionHandler:0];

    (*(v7 + 8))(v9, v6);
    return outlined destroy of NSObject?(v22, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  __break(1u);
  return result;
}

uint64_t static GroupActivityAssociation.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  static GroupActivityAssociation.supportsSecureCoding = a1;
  return result;
}

uint64_t GroupActivityAssociation.associationID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_associationID);

  return v1;
}

uint64_t GroupActivityAssociation.sceneID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID);

  return v1;
}

id GroupActivityAssociation.__allocating_init(sceneID:associationID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v9[OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_associationID];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, sel_init);
}

id GroupActivityAssociation.init(sceneID:associationID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v4[OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_associationID];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v4;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

Swift::Void __swiftcall GroupActivityAssociation.encode(with:)(NSCoder with)
{
  v3 = MEMORY[0x1B270FF70](*(v1 + OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID), *(v1 + OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID + 8));
  v4 = MEMORY[0x1B270FF70](0x4449656E656373, 0xE700000000000000);
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = MEMORY[0x1B270FF70](*(v1 + OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_associationID), *(v1 + OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_associationID + 8));
  v6 = MEMORY[0x1B270FF70](0x746169636F737361, 0xED000044496E6F69);
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
}

id GroupActivityAssociation.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  type metadata accessor for NSString();
  v5 = NSCoder.decodeObject<A>(of:forKey:)();
  v6 = NSCoder.decodeObject<A>(of:forKey:)();
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = &v2[OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_associationID];
      *v9 = v8;
      v9[1] = v10;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = &v2[OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID];
      *v14 = v11;
      v14[1] = v13;
      v17.receiver = v2;
      v17.super_class = ObjectType;
      v15 = objc_msgSendSuper2(&v17, sel_init);

      return v15;
    }
  }

  else
  {

    a1 = v7;
  }

  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t GroupActivityAssociation.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(56);
  MEMORY[0x1B2710020](0xD000000000000022, 0x80000001AEE38090);
  MEMORY[0x1B2710020](*(v1 + OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID), *(v1 + OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID + 8));
  MEMORY[0x1B2710020](0xD000000000000011, 0x80000001AEE380C0);
  MEMORY[0x1B2710020](*(v1 + OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_associationID), *(v1 + OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_associationID + 8));
  MEMORY[0x1B2710020](41, 0xE100000000000000);
  return 0;
}

uint64_t GroupActivityAssociation.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  outlined init with copy of Any?(a1, v8);
  if (!v9)
  {
    outlined destroy of Any?(v8);
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v5 = 0;
    return v5 & 1;
  }

  v3 = *(v1 + OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_associationID) == *&v7[OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_associationID] && *(v1 + OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_associationID + 8) == *&v7[OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_associationID + 8];
  if (!v3 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

    goto LABEL_14;
  }

  if (*(v1 + OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID) == *&v7[OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID] && *(v1 + OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID + 8) == *&v7[OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID + 8])
  {

    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

Swift::Int GroupActivityAssociation.hash.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init()();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher.finalize()();
}

id GroupActivityAssociation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GroupActivityAssociation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static NSBundle.copresenceCore.getter()
{
  type metadata accessor for ConversationManagerHost();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];

  return v1;
}

id CPDisplayCloneStateObserver.isCloned.getter()
{
  result = *(v0 + OBJC_IVAR____TtC14CopresenceCore27CPDisplayCloneStateObserver_display);
  if (result)
  {
    return [result isCloned];
  }

  return result;
}

uint64_t CPDisplayCloneStateObserver.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC14CopresenceCore27CPDisplayCloneStateObserver_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*CPDisplayCloneStateObserver.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14CopresenceCore27CPDisplayCloneStateObserver_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return ActivitySession.sessionManager.modify;
}

id CPDisplayCloneStateObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *CPDisplayCloneStateObserver.init()()
{
  *&v0[OBJC_IVAR____TtC14CopresenceCore27CPDisplayCloneStateObserver_observation] = 0;
  *&v0[OBJC_IVAR____TtC14CopresenceCore27CPDisplayCloneStateObserver_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.default);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1AEB26000, v2, v3, "Initializing CPDisplayCloneStateObserver", v4, 2u);
    MEMORY[0x1B27120C0](v4, -1, -1);
  }

  v5 = [objc_opt_self() mainDisplay];
  *&v0[OBJC_IVAR____TtC14CopresenceCore27CPDisplayCloneStateObserver_display] = v5;
  v14.receiver = v0;
  v14.super_class = type metadata accessor for CPDisplayCloneStateObserver();
  v6 = objc_msgSendSuper2(&v14, sel_init);
  v7 = *&v6[OBJC_IVAR____TtC14CopresenceCore27CPDisplayCloneStateObserver_display];
  if (v7)
  {
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = v7;
    v9 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    v10 = *&v6[OBJC_IVAR____TtC14CopresenceCore27CPDisplayCloneStateObserver_observation];
    *&v6[OBJC_IVAR____TtC14CopresenceCore27CPDisplayCloneStateObserver_observation] = v9;
  }

  else
  {
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1AEB26000, v10, v11, "No display available. isCloned will be false", v12, 2u);
      MEMORY[0x1B27120C0](v12, -1, -1);
    }
  }

  return v6;
}

void closure #1 in CPDisplayCloneStateObserver.init()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Log.default);
    v6 = v4;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = MEMORY[0x1E69E7D40];
    if (v9)
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      *(v11 + 4) = (*((*v10 & *v6) + 0x68))() & 1;

      _os_log_impl(&dword_1AEB26000, v7, v8, "Display cloned state changed to: %{BOOL}d", v11, 8u);
      MEMORY[0x1B27120C0](v11, -1, -1);
    }

    else
    {
    }

    if ((*((*v10 & *v6) + 0x88))())
    {
      v13 = v12;
      ObjectType = swift_getObjectType();
      v15 = (*((*v10 & *v6) + 0x68))();
      (*(v13 + 8))(v15 & 1, ObjectType, v13);
      swift_unknownObjectRelease();
    }
  }
}

id CPDisplayCloneStateObserver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CPDisplayCloneStateObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*protocol witness for CPDisplayCloneStateObserverProtocol.delegate.modify in conformance CPDisplayCloneStateObserver(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x98))();
  return protocol witness for PresenceDataSource.members.modify in conformance SKPresenceDataSource<A>;
}

BOOL specialized static BundleIdentiferMap.areEquivalentBundleIDs(bundleID:otherBundleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (a2 | a4) == 0;
  if (a2 && a4)
  {
    if (a1 == a3 && a2 == a4)
    {
      return 1;
    }

    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    if (v9)
    {
      return 1;
    }

    v24 = a1;
    v25 = a2;
    MEMORY[0x1EEE9AC00](v9);
    v23 = &v24;
    v10 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, v22, &outlined read-only object #0 of one-time initialization function for appleTVBundleIDs);
    if (v10 & 1) != 0 && (v24 = a3, v25 = a4, MEMORY[0x1EEE9AC00](v10), v23 = &v24, v10 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v22, &outlined read-only object #0 of one-time initialization function for appleTVBundleIDs), (v10))
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Log.default);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v12, v13))
      {
        goto LABEL_31;
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Found equivalent apple tv BundleID";
    }

    else
    {
      v24 = a1;
      v25 = a2;
      MEMORY[0x1EEE9AC00](v10);
      v23 = &v24;
      v16 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v22, &outlined read-only object #0 of one-time initialization function for musicBundleIDs);
      if (v16 & 1) != 0 && (v24 = a3, v25 = a4, MEMORY[0x1EEE9AC00](v16), v23 = &v24, v16 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v22, &outlined read-only object #0 of one-time initialization function for musicBundleIDs), (v16))
      {
        if (one-time initialization token for default != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        __swift_project_value_buffer(v17, static Log.default);
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.info.getter();
        if (!os_log_type_enabled(v12, v13))
        {
          goto LABEL_31;
        }

        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = "Found equivalent music BundleID";
      }

      else
      {
        v24 = a1;
        v25 = a2;
        MEMORY[0x1EEE9AC00](v16);
        v23 = &v24;
        v18 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v22, &outlined read-only object #0 of one-time initialization function for notesBundleIDs);
        if (v18 & 1) != 0 && (v24 = a3, v25 = a4, MEMORY[0x1EEE9AC00](v18), v23 = &v24, v18 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v22, &outlined read-only object #0 of one-time initialization function for notesBundleIDs), (v18))
        {
          if (one-time initialization token for default != -1)
          {
            swift_once();
          }

          v19 = type metadata accessor for Logger();
          __swift_project_value_buffer(v19, static Log.default);
          v12 = Logger.logObject.getter();
          v13 = static os_log_type_t.info.getter();
          if (!os_log_type_enabled(v12, v13))
          {
            goto LABEL_31;
          }

          v14 = swift_slowAlloc();
          *v14 = 0;
          v15 = "Found equivalent notes BundleID";
        }

        else
        {
          v24 = a1;
          v25 = a2;
          MEMORY[0x1EEE9AC00](v18);
          v23 = &v24;
          v20 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v22, &outlined read-only object #0 of one-time initialization function for translationBundleIDs);
          if ((v20 & 1) == 0)
          {
            return 0;
          }

          v24 = a3;
          v25 = a4;
          MEMORY[0x1EEE9AC00](v20);
          v23 = &v24;
          if ((specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v22, &outlined read-only object #0 of one-time initialization function for translationBundleIDs) & 1) == 0)
          {
            return 0;
          }

          if (one-time initialization token for default != -1)
          {
            swift_once();
          }

          v21 = type metadata accessor for Logger();
          __swift_project_value_buffer(v21, static Log.default);
          v12 = Logger.logObject.getter();
          v13 = static os_log_type_t.info.getter();
          if (!os_log_type_enabled(v12, v13))
          {
            goto LABEL_31;
          }

          v14 = swift_slowAlloc();
          *v14 = 0;
          v15 = "Found equivalent translation BundleID";
        }
      }
    }

    _os_log_impl(&dword_1AEB26000, v12, v13, v15, v14, 2u);
    MEMORY[0x1B27120C0](v14, -1, -1);
LABEL_31:

    return 1;
  }

  return result;
}

uint64_t PresenceController.__allocating_init(activityID:personalPresenceController:)(char *a1, uint64_t a2)
{
  v2 = specialized PresenceController.__allocating_init(activityID:personalPresenceController:)(a1, a2);

  return v2;
}

uint64_t PresenceController.members.getter()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v1 + 40))(ObjectType, v1);
}

uint64_t PresenceController.members.setter(uint64_t a1)
{
  v3 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  return (*(v3 + 48))(a1, ObjectType, v3);
}

uint64_t (*PresenceController.members.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[1] = *(v1 + 16);
  a1[2] = v3;
  a1[3] = swift_getObjectType();
  *a1 = (*(v3 + 40))();
  return PresenceController.members.modify;
}

uint64_t PresenceController.members.modify(uint64_t *a1, char a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(v2 + 48);
  if ((a2 & 1) == 0)
  {
    return v4(*a1, v3, v2);
  }

  v4(v5, v3, v2);
}

uint64_t key path setter for PresenceController.presentDevices : PresenceController(uint64_t *a1)
{

  CurrentValueSubject.send(_:)();
}

uint64_t PresenceController.presentDevices.getter()
{

  CurrentValueSubject.value.getter();

  return v1;
}

uint64_t PresenceController.cancellables.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

void *PresenceController.__allocating_init<A>(dataSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = specialized PresenceController.init<A>(dataSource:)(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v8;
}

void *PresenceController.init<A>(dataSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = specialized PresenceController.init<A>(dataSource:)(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t closure #1 in PresenceController.init<A>(dataSource:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v10[7] = *a1;
  v10[2] = a2;
  v10[3] = a3;
  v10[5] = a2;
  swift_getExtendedExistentialTypeMetadata();
  v5 = type metadata accessor for Array();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore13PresentDevice_pMd, &_s14CopresenceCore13PresentDevice_pMR);
  WitnessTable = swift_getWitnessTable();
  result = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in closure #1 in PresenceController.init<A>(dataSource:), v10, v5, v6, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v8);
  *a4 = result;
  return result;
}

uint64_t closure #1 in closure #1 in PresenceController.init<A>(dataSource:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *(a1 + 3);
  v3 = a1[3];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v3);
  *(a2 + 24) = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v4, v3);
}

uint64_t closure #2 in PresenceController.init<A>(dataSource:)(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    CurrentValueSubject.send(_:)();
  }

  return result;
}

uint64_t PresenceController.assertPresence()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](PresenceController.assertPresence(), 0, 0);
}

{
  v1 = *(*(v0 + 16) + 24);
  ObjectType = swift_getObjectType();
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = PersonalPresenceDataSource.assertPresence(using:);

  return PresenceDataSource.assertPresence()(ObjectType, v1);
}

uint64_t PresenceController.releasePresence()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](PresenceController.releasePresence(), 0, 0);
}

{
  v1 = *(*(v0 + 16) + 24);
  ObjectType = swift_getObjectType();
  v5 = (*(v1 + 72) + **(v1 + 72));
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = PersonalPresenceDataSource.releasePresence();

  return v5(ObjectType, v1);
}

uint64_t PresenceController.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t PresenceController.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void *specialized PresenceController.init<A>(dataSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a4;
  v24 = a3;
  swift_getExtendedExistentialTypeMetadata();
  type metadata accessor for Array();
  type metadata accessor for AnyPublisher();
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay14CopresenceCore13PresentDevice_pGMd, &_sSay14CopresenceCore13PresentDevice_pGMR);
  WitnessTable = swift_getWitnessTable();
  v7 = type metadata accessor for Publishers.Map();
  v23 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  v24 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOGMR);
  swift_allocObject();
  v10 = CurrentValueSubject.init(_:)();
  v18 = v4;
  v4[4] = v10;
  v4[5] = MEMORY[0x1E69E7CD0];
  ObjectType = swift_getObjectType();
  v4[2] = a1;
  v4[3] = a2;
  v12 = *(a2 + 24);
  swift_unknownObjectRetain();
  v24 = v12(ObjectType, a2);
  v13 = swift_allocObject();
  v14 = v22;
  *(v13 + 16) = v21;
  *(v13 + 24) = v14;
  Publisher.map<A>(_:)();

  swift_allocObject();
  v15 = v18;
  swift_weakInit();
  swift_getWitnessTable();
  Publisher<>.sink(receiveValue:)();

  (*(v23 + 8))(v9, v7);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v15;
}

uint64_t specialized PresenceController.__allocating_init(activityID:personalPresenceController:)(char *a1, uint64_t a2)
{
  v36 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - v8;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.service);
  v35 = *(v4 + 16);
  v35(v9, a1, v3);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v33 = a1;
    v14 = v13;
    v31 = swift_slowAlloc();
    v38 = v31;
    *v14 = 136315138;
    lazy protocol witness table accessor for type PersonalPresenceDataSource and conformance PersonalPresenceDataSource(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v7;
    v17 = v16;
    v34 = v3;
    v18 = *(v4 + 8);
    v18(v9, v34);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v38);
    v7 = v32;

    *(v14 + 4) = v19;
    _os_log_impl(&dword_1AEB26000, v11, v12, "Creating multiplexed presence controller for me-to-me session with identifier: %s", v14, 0xCu);
    v20 = v31;
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x1B27120C0](v20, -1, -1);
    v21 = v14;
    a1 = v33;
    MEMORY[0x1B27120C0](v21, -1, -1);

    v22 = v18;
    v3 = v34;
  }

  else
  {

    v22 = *(v4 + 8);
    v22(v9, v3);
  }

  v35(v7, a1, v3);
  type metadata accessor for PersonalPresenceDataSource(0);
  swift_allocObject();
  v23 = v3;
  v24 = v36;

  v25 = specialized PersonalPresenceDataSource.init(activityID:personalPresenceController:)(v7, v24);

  v26 = lazy protocol witness table accessor for type PersonalPresenceDataSource and conformance PersonalPresenceDataSource(&lazy protocol witness table cache variable for type PersonalPresenceDataSource and conformance PersonalPresenceDataSource, type metadata accessor for PersonalPresenceDataSource, &protocol conformance descriptor for PersonalPresenceDataSource);
  v27 = *(v37 + 184);
  v28 = lazy protocol witness table accessor for type EmptyPresenceContext and conformance EmptyPresenceContext();
  v29 = v27(v25, v26, &type metadata for EmptyPresenceContext, v28);
  v22(a1, v23);
  return v29;
}

uint64_t dispatch thunk of PresenceController.assertPresence()()
{
  v4 = (*(*v0 + 192) + **(*v0 + 192));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v4();
}

uint64_t dispatch thunk of PresenceController.releasePresence()()
{
  v4 = (*(*v0 + 200) + **(*v0 + 200));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v4();
}

uint64_t lazy protocol witness table accessor for type PersonalPresenceDataSource and conformance PersonalPresenceDataSource(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void specialized Sequence.compactMap<A>(_:)(uint64_t a1, SEL *a2)
{
  v2 = a1;
  v23 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
    lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
    Set.Iterator.init(_cocoa:)();
    v2 = v18;
    v3 = v19;
    v5 = v20;
    v4 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v5 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v4 = 0;
  }

LABEL_7:
  v10 = v4;
  v11 = v6;
  while (1)
  {
    if (v2 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80), swift_dynamicCast(), v14 = v17, v4 = v10, v6 = v11, !v17))
      {
LABEL_21:
        outlined consume of Set<String>.Iterator._Variant(v2);
        return;
      }

      goto LABEL_17;
    }

    v12 = v10;
    v13 = v11;
    v4 = v10;
    if (!v11)
    {
      break;
    }

LABEL_13:
    v6 = (v13 - 1) & v13;
    v14 = *(*(v2 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v14)
    {
      goto LABEL_21;
    }

LABEL_17:
    v15 = [v14 *a2];

    v10 = v4;
    v11 = v6;
    if (v15)
    {
      MEMORY[0x1B2710150]();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_7;
    }
  }

  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= ((v5 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v13 = *(v3 + 8 * v4);
    ++v12;
    if (v13)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

char *one-time initialization function for shared()
{
  result = closure #1 in variable initialization expression of static CPApplicationPolicyManager.shared();
  static CPApplicationPolicyManager.shared = result;
  return result;
}

char *closure #1 in variable initialization expression of static CPApplicationPolicyManager.shared()
{
  v0 = [objc_allocWithZone(CPSharedConversationServerBag) init];
  v5 = [v0 backgroundAppPolicyHandleExpiryDays] * 24.0 * 60.0 * 60.0;
  LOBYTE(v6) = 0;
  v1 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  v2 = objc_allocWithZone(type metadata accessor for CPApplicationPolicyManager());
  v3 = CPApplicationPolicyManager.init(config:contactStore:featureFlags:)(&v5, v1, 0);

  return v3;
}

id static CPApplicationPolicyManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static CPApplicationPolicyManager.shared;

  return v1;
}

uint64_t CPApplicationPolicyManager.authorizedBundleIdentifiers.getter()
{
  v1 = *(v0 + OBJC_IVAR___CPApplicationPolicyManager_lock);
  os_unfair_lock_lock(*(v1 + 16));
  closure #1 in CPApplicationPolicyManager.authorizedBundleIdentifiers.getter(v0, &v3);
  os_unfair_lock_unlock(*(v1 + 16));
  return v3;
}

uint64_t closure #1 in CPApplicationPolicyManager.authorizedBundleIdentifiers.getter@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v43 = a2;
  v41 = a1;
  v3 = (a1 + OBJC_IVAR___CPApplicationPolicyManager_storage);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  v7 = (*(v5 + 56))(v6, v6, v4, v5);
  v8 = specialized Dictionary.compactMapValues<A>(_:)(v7);
  v42 = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSNumberCGMd, &_ss18_DictionaryStorageCySSSo8NSNumberCGMR);
  result = static _DictionaryStorage.copy(original:)();
  v10 = result;
  v11 = 0;
  v13 = v8 + 64;
  v12 = *(v8 + 64);
  v49 = v8;
  v14 = 1 << *(v8 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v12;
  v17 = (v14 + 63) >> 6;
  v44 = result + 64;
  v45 = result;
  if ((v15 & v12) != 0)
  {
    while (1)
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_10:
      v21 = v18 | (v11 << 6);
      v22 = (*(v49 + 48) + 16 * v21);
      v24 = *v22;
      v23 = v22[1];
      v25 = *(*(v49 + 56) + 40 * v21 + 24);
      v26 = objc_allocWithZone(MEMORY[0x1E696AD98]);

      result = [v26 initWithBool_];
      v10 = v45;
      *(v44 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v27 = (v10[6] + 16 * v21);
      *v27 = v24;
      v27[1] = v23;
      *(v10[7] + 8 * v21) = result;
      v28 = v10[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        break;
      }

      v10[2] = v30;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_5:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_19;
      }

      if (v11 >= v17)
      {
        break;
      }

      v20 = *(v13 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_10;
      }
    }

    result = [*(v41 + OBJC_IVAR___CPApplicationPolicyManager_featureFlags) appProtectionEnabled];
    if (result)
    {
      (*((*MEMORY[0x1E69E7D40] & *v41) + 0xD8))(v46);
      v31 = v47;
      if (v47)
      {
        v32 = v48;
        v33 = __swift_project_boxed_opaque_existential_1(v46, v47);
        v34 = *(v31 - 8);
        MEMORY[0x1EEE9AC00](v33);
        v36 = &v41 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v34 + 16))(v36);
        outlined destroy of NSObject?(v46, &_s14CopresenceCore29ProtectedAppsObserverProtocol_pSgMd, &_s14CopresenceCore29ProtectedAppsObserverProtocol_pSgMR);
        v37 = (*(v32 + 32))(v31, v32);
        v38 = (*(v34 + 8))(v36, v31);
        MEMORY[0x1EEE9AC00](v38);
        v40[2] = v37;
        v39 = specialized _NativeDictionary.filter(_:)(v10, partial apply for closure #1 in closure #1 in closure #2 in closure #1 in CPApplicationPolicyManager.fetchAndProcessContactChangeHistory(), v40, specialized closure #1 in _NativeDictionary.filter(_:), specialized closure #1 in _NativeDictionary.filter(_:));

        v10 = v39;
      }

      else
      {
        result = outlined destroy of NSObject?(v46, &_s14CopresenceCore29ProtectedAppsObserverProtocol_pSgMd, &_s14CopresenceCore29ProtectedAppsObserverProtocol_pSgMR);
      }
    }

    *v43 = v10;
  }

  return result;
}

uint64_t CPApplicationPolicyManager.autoSharePlayEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR___CPApplicationPolicyManager_lock);
  os_unfair_lock_lock(*(v1 + 16));
  v2 = *(v0 + OBJC_IVAR___CPApplicationPolicyManager_storage + 24);
  v3 = *(v0 + OBJC_IVAR___CPApplicationPolicyManager_storage + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR___CPApplicationPolicyManager_storage), v2);
  (*(v3 + 40))(&v5, MEMORY[0x1E69E6370], 0xD00000000000001FLL, 0x80000001AEE33020, MEMORY[0x1E69E6370], v2, v3);
  LOBYTE(v2) = (v5 == 2) | v5;
  os_unfair_lock_unlock(*(v1 + 16));
  return v2 & 1;
}

void CPApplicationPolicyManager.autoSharePlayEnabled.setter(char a1)
{
  v2 = v1;
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
    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1AEB26000, v5, v6, "[CPAppPolicyManager] set auto-SharePlay enabled %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  v12 = *(v2 + OBJC_IVAR___CPApplicationPolicyManager_lock);
  os_unfair_lock_lock(*(v12 + 16));
  closure #1 in CPApplicationPolicyManager.autoSharePlayEnabled.setter(v2, a1 & 1);
  os_unfair_lock_unlock(*(v12 + 16));
}

uint64_t closure #1 in CPApplicationPolicyManager.autoSharePlayEnabled.setter(void *a1, char a2)
{
  v3 = a1;
  v4 = (a1 + OBJC_IVAR___CPApplicationPolicyManager_storage);
  v5 = v4[3];
  v6 = v4[4];
  v36 = v4;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v38 = MEMORY[0x1E69E6370];
  v37[0] = a2;
  (*(v6 + 8))(v37, 0xD00000000000001FLL, 0x80000001AEE33020, v5, v6);
  result = outlined destroy of NSObject?(v37, &_sypSgMd, &_sypSgMR);
  if ((a2 & 1) == 0)
  {
    if (one-time initialization token for default != -1)
    {
LABEL_19:
      swift_once();
    }

    v33 = v3;
    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Log.default);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1AEB26000, v9, v10, "[CPAppPolicyManager] Disabling auto-SharePlay for all previously allowed apps", v11, 2u);
      MEMORY[0x1B27120C0](v11, -1, -1);
    }

    v12 = v36[3];
    v13 = v36[4];
    __swift_project_boxed_opaque_existential_1(v36, v12);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    v15 = (*(v13 + 56))(v14, v14, v12, v13);
    v16 = specialized Dictionary.compactMapValues<A>(_:)(v15);

    v34 = 0;
    v35 = v16;
    v17 = 0;
    v3 = 0;
    v18 = 1 << *(v16 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v16 + 64;
    v21 = v19 & *(v16 + 64);
    v22 = (v18 + 63) >> 6;
    if (v21)
    {
      while (1)
      {
        v23 = v3;
LABEL_13:

        v24 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
        v25 = (*(v35 + 48) + ((v23 << 10) | (16 * v24)));
        v26 = *v25;
        v17 = v25[1];
        v28 = v36[3];
        v27 = v36[4];
        __swift_project_boxed_opaque_existential_1(v36, v28);
        v39 = *(v27 + 24);
        swift_bridgeObjectRetain_n();
        v34 = v26;
        v39(v26, v17, v28, v27);

        if (!v21)
        {
          goto LABEL_9;
        }
      }
    }

    while (1)
    {
LABEL_9:
      v23 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        goto LABEL_19;
      }

      if (v23 >= v22)
      {
        break;
      }

      v21 = *(v20 + 8 * v23);
      v3 = (v3 + 1);
      if (v21)
      {
        v3 = v23;
        goto LABEL_13;
      }
    }

    if (v17)
    {
      v29 = (*((*MEMORY[0x1E69E7D40] & *v33) + 0xC0))(result);
      v30 = swift_allocObject();
      v30[2] = v33;
      v30[3] = v34;
      v30[4] = v17;
      v31 = *(*v29 + 152);
      v32 = v33;
      v31(partial apply for closure #1 in closure #1 in CPApplicationPolicyManager.autoSharePlayEnabled.setter, v30);
    }
  }

  return result;
}

void (*CPApplicationPolicyManager.autoSharePlayEnabled.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR___CPApplicationPolicyManager_lock);
  os_unfair_lock_lock(*(v3 + 16));
  v4 = *(v1 + OBJC_IVAR___CPApplicationPolicyManager_storage + 24);
  v5 = *(v1 + OBJC_IVAR___CPApplicationPolicyManager_storage + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR___CPApplicationPolicyManager_storage), v4);
  (*(v5 + 40))(MEMORY[0x1E69E6370], 0xD00000000000001FLL, 0x80000001AEE33020, MEMORY[0x1E69E6370], v4, v5);
  v6 = (*(a1 + 9) == 2) | *(a1 + 9);
  os_unfair_lock_unlock(*(v3 + 16));
  *(a1 + 8) = v6 & 1;
  return CPApplicationPolicyManager.autoSharePlayEnabled.modify;
}

Swift::Int CPApplicationPolicyManager.InputError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](0);
  return Hasher._finalize()();
}

double CPApplicationPolicyManager.config.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + OBJC_IVAR___CPApplicationPolicyManager_config);
  *a1 = result;
  return result;
}

uint64_t CPApplicationPolicyManager.delegates.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CPApplicationPolicyManager_delegates;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t CPApplicationPolicyManager.protectedAppsObserver.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___CPApplicationPolicyManager_protectedAppsObserver;
  swift_beginAccess();
  return outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v3, a1, &_s14CopresenceCore29ProtectedAppsObserverProtocol_pSgMd, &_s14CopresenceCore29ProtectedAppsObserverProtocol_pSgMR);
}

uint64_t CPApplicationPolicyManager.protectedAppsObserver.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CPApplicationPolicyManager_protectedAppsObserver;
  swift_beginAccess();
  outlined assign with take of ProtectedAppsObserverProtocol?(a1, v1 + v3);
  return swift_endAccess();
}

id closure #1 in variable initialization expression of CPApplicationPolicyManager.contactsDataSourceCreationBlock(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E695CE18]);

  return [v2 initWithConfiguration_];
}

uint64_t key path setter for CPApplicationPolicyManager.contactsDataSourceCreationBlock : CPApplicationPolicyManager(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xF8);

  return v6(partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CNContactStoreConfiguration) -> (@out TUContactsDataSource), v5);
}

uint64_t CPApplicationPolicyManager.contactsDataSourceCreationBlock.getter()
{
  v1 = (v0 + OBJC_IVAR___CPApplicationPolicyManager_contactsDataSourceCreationBlock);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t CPApplicationPolicyManager.contactsDataSourceCreationBlock.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___CPApplicationPolicyManager_contactsDataSourceCreationBlock);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

char *CPApplicationPolicyManager.init(config:contactStore:featureFlags:)(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v53 = a3;
  v50 = a2;
  v51 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v8);
  v9 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = *a1;
  v52 = *(a1 + 8);
  v11 = OBJC_IVAR___CPApplicationPolicyManager_lock;
  v48 = type metadata accessor for Lock();
  v12 = swift_allocObject();
  v13 = swift_slowAlloc();
  *(v12 + 16) = v13;
  *v13 = 0;
  *&v3[v11] = v12;
  v47 = OBJC_IVAR___CPApplicationPolicyManager_queue;
  v46[1] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  static DispatchQoS.unspecified.getter();
  *&v55[0] = MEMORY[0x1E69E7CC0];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_5(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x1E69E6328]);
  v14 = v50;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v49 + 104))(v7, *MEMORY[0x1E69E8090], v51);
  *&v3[v47] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v15 = OBJC_IVAR___CPApplicationPolicyManager_delegates;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore16DelegatesManagerCySo019CPApplicationPolicyD8Delegate_pGMd, &_s14CopresenceCore16DelegatesManagerCySo019CPApplicationPolicyD8Delegate_pGMR);
  v16 = swift_allocObject();
  *(v16 + 16) = MEMORY[0x1E69E7CC0];
  v17 = swift_allocObject();
  v18 = swift_slowAlloc();
  *(v17 + 16) = v18;
  *v18 = 0;
  *(v16 + 24) = v17;
  *&v4[v15] = v16;
  v19 = &v4[OBJC_IVAR___CPApplicationPolicyManager_protectedAppsObserver];
  v20 = type metadata accessor for ProtectedAppsObserver();
  v21 = [objc_allocWithZone(v20) init];
  *(v19 + 3) = v20;
  *(v19 + 4) = &protocol witness table for ProtectedAppsObserver;
  *v19 = v21;
  v22 = &v4[OBJC_IVAR___CPApplicationPolicyManager_contactsDataSourceCreationBlock];
  *v22 = closure #1 in variable initialization expression of CPApplicationPolicyManager.contactsDataSourceCreationBlock;
  v22[1] = 0;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSUserDefaults, 0x1E695E000);
  *&v55[0] = 0;
  *(&v55[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(23);
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  *&v55[0] = v23;
  *(&v55[0] + 1) = v25;
  MEMORY[0x1B2710020](0xD000000000000015, 0x80000001AEE38200);
  static NSUserDefaults.classProtectedStorage(suiteName:)(*&v55[0], *(&v55[0] + 1), v55);

  outlined init with take of ContiguousBytes(v55, &v4[OBJC_IVAR___CPApplicationPolicyManager_storage]);
  v26 = 2592000.0;
  if (!v52)
  {
    v26 = v10;
  }

  *&v4[OBJC_IVAR___CPApplicationPolicyManager_config] = v26;
  if (v14)
  {
    v27 = v14;
  }

  else
  {
    v27 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  }

  *&v4[OBJC_IVAR___CPApplicationPolicyManager_contactStore] = v27;
  v28 = v53;
  if (v53)
  {
    swift_unknownObjectRetain();
    v29 = v28;
  }

  else
  {
    v30 = objc_allocWithZone(CPFeatureFlags);
    swift_unknownObjectRetain();
    v29 = [v30 init];
  }

  *&v4[OBJC_IVAR___CPApplicationPolicyManager_featureFlags] = v29;
  v31 = type metadata accessor for CPApplicationPolicyManager();
  v54.receiver = v4;
  v54.super_class = v31;
  swift_unknownObjectRetain();
  v32 = objc_msgSendSuper2(&v54, sel_init);
  v33 = objc_opt_self();
  v34 = v32;
  v35 = [v33 defaultCenter];
  [v35 addObserver:v34 selector:sel_handleCNContactStoreDidChangeNotification_ name:*MEMORY[0x1E695C3D8] object:0];

  if (v28)
  {
    if ([swift_unknownObjectRetain() appProtectionEnabled])
    {
      v36 = v34 + OBJC_IVAR___CPApplicationPolicyManager_protectedAppsObserver;
      swift_beginAccess();
      v37 = *(v36 + 24);
      if (v37)
      {
        v38 = *(v36 + 32);
        __swift_mutable_project_boxed_opaque_existential_1(v36, *(v36 + 24));
        v39 = *(v38 + 16);
        v40 = v34;
        v39(v34, &protocol witness table for CPApplicationPolicyManager, v37, v38);
      }

      swift_endAccess();
    }

    swift_unknownObjectRelease();
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  __swift_project_value_buffer(v41, static Log.default);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_1AEB26000, v42, v43, "[CPAppPolicyManager] Init", v44, 2u);
    MEMORY[0x1B27120C0](v44, -1, -1);
  }

  CPApplicationPolicyManager.fetchAndProcessContactChangeHistory()();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v34;
}

id CPApplicationPolicyManager.__deallocating_deinit()
{
  v1 = v0;
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.default);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1AEB26000, v4, v5, "[CPAppPolicyManager] Deinit", v6, 2u);
    MEMORY[0x1B27120C0](v6, -1, -1);
  }

  v8.receiver = v1;
  v8.super_class = type metadata accessor for CPApplicationPolicyManager();
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

uint64_t CPApplicationPolicyManager.applicationInfo(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(v3 + OBJC_IVAR___CPApplicationPolicyManager_storage + 24);
  v8 = *(v3 + OBJC_IVAR___CPApplicationPolicyManager_storage + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR___CPApplicationPolicyManager_storage), v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  (*(v8 + 40))(&v16, v9, a1, a2, v9, v7, v8);
  result = v16;
  if (!v16)
  {
    v15 = 0;
    v14 = 0;
    v11 = 0;
LABEL_6:
    v13 = 0;
    v12 = 0;
    goto LABEL_7;
  }

  result = specialized CPAppPolicy.AuthorizedBundles.init(dictionary:)(v16, &v16);
  v11 = v18;
  if (!v18)
  {
    v15 = 0;
    v14 = 0;
    goto LABEL_6;
  }

  v13 = v19;
  v12 = v20;
  v15 = v16;
  v14 = v17;
  v21[0] = v17;
  v21[1] = v18;

  outlined destroy of String(v21);
  v22 = v12;
  result = outlined destroy of NSObject?(&v22, &_sSDySS10Foundation4DateVGMd, &_sSDySS10Foundation4DateVGMR);
LABEL_7:
  *a3 = v15;
  a3[1] = v14;
  a3[2] = v11;
  a3[3] = v13;
  a3[4] = v12;
  return result;
}

uint64_t CPApplicationPolicyManager.persist(_:authorizationChanged:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR___CPApplicationPolicyManager_storage + 24);
  v7 = *(v2 + OBJC_IVAR___CPApplicationPolicyManager_storage + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR___CPApplicationPolicyManager_storage), v6);
  v8 = CPAppPolicy.AuthorizedBundles.dictionaryRepresentation.getter();
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  v16[0] = v8;
  (*(v7 + 8))(v16, *(a1 + 8), *(a1 + 16), v6, v7);
  result = outlined destroy of NSObject?(v16, &_sypSgMd, &_sypSgMR);
  if (a2)
  {
    v10 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0xC0))(result);
    v16[0] = *(a1 + 32);
    v11 = swift_allocObject();
    *(v11 + 16) = v3;
    v12 = *(a1 + 16);
    *(v11 + 24) = *a1;
    *(v11 + 40) = v12;
    *(v11 + 56) = *(a1 + 32);
    v13 = *(*v10 + 152);
    v14 = v3;

    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v16, v15, &_sSDySS10Foundation4DateVGMd, &_sSDySS10Foundation4DateVGMR);
    v13(partial apply for closure #1 in CPApplicationPolicyManager.persist(_:authorizationChanged:), v11);
  }

  return result;
}

void CPApplicationPolicyManager.updateAllowedHandles(_:for:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v98 = a1;
  v102 = type metadata accessor for Date();
  v100 = *(v102 - 8);
  v7 = MEMORY[0x1EEE9AC00](v102);
  v101 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v97 = &v86 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v86 - v11;
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x110))(v103, a2, a3);
  v13 = v104;
  if (v104)
  {
    v14 = v106;
    v107 = v106;
    if ((v105 & 1) == 0)
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v81 = type metadata accessor for Logger();
      __swift_project_value_buffer(v81, static Log.default);

      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v108[0] = v85;
        *v84 = 136315138;
        *(v84 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, v108);
        _os_log_impl(&dword_1AEB26000, v82, v83, "[CPAppPolicyManager] Not updating authorized handles list since the application %s isn't authorized", v84, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v85);
        MEMORY[0x1B27120C0](v85, -1, -1);
        MEMORY[0x1B27120C0](v84, -1, -1);
      }

      outlined destroy of NSObject?(&v107, &_sSDySS10Foundation4DateVGMd, &_sSDySS10Foundation4DateVGMR);

      return;
    }

    v89 = v103[1];
    v90 = LOBYTE(v103[0]);
    v87 = a2;
    v91 = v104;
  }

  else
  {

    v90 = 2;
    v14 = MEMORY[0x1E69E7CC8];
    v87 = a2;
    v89 = a2;
    v91 = a3;
  }

  MEMORY[0x1EEE9AC00](v14);
  *(&v86 - 2) = v3;

  v15 = specialized _NativeDictionary.filter(_:)(v94, partial apply for closure #1 in CPApplicationPolicyManager.expiredHandles(from:), (&v86 - 4), specialized closure #1 in _NativeDictionary.filter(_:), specialized closure #1 in _NativeDictionary.filter(_:));
  v16 = v15[2];
  v88 = v13;
  v95 = v12;
  v96 = v15;
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

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v108[0] = v21;
      *v20 = 136315138;
      v22 = Dictionary.description.getter();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v108);
      v15 = v96;

      *(v20 + 4) = v24;
      _os_log_impl(&dword_1AEB26000, v18, v19, "[CPAppPolicyManager] Pruning expired handles:%s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x1B27120C0](v21, -1, -1);
      MEMORY[0x1B27120C0](v20, -1, -1);
    }
  }

  v92 = a3;
  v93 = v4;
  v25 = 0;
  v26 = (v15 + 8);
  v27 = 1 << *(v15 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v15[8];
  v30 = (v27 + 63) >> 6;
  v31 = (v100 + 56);
  v99 = (v100 + 32);
  v32 = v94;
  v33 = v102;
  while (v29)
  {
LABEL_21:
    v37 = (v15[6] + ((v25 << 10) | (16 * __clz(__rbit64(v29)))));
    v38 = *v37;
    v39 = v37[1];

    v40 = specialized __RawDictionaryStorage.find<A>(_:)(v38, v39);
    LOBYTE(v38) = v41;

    if (v38)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v108[0] = v32;
      v35 = v95;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v32 = v108[0];
      }

      v33 = v102;
      (*(v100 + 32))(v35, v32[7] + *(v100 + 72) * v40, v102);
      specialized _NativeDictionary._delete(at:)(v40, v32);
      v34 = 0;
    }

    else
    {
      v34 = 1;
      v33 = v102;
      v35 = v95;
    }

    v15 = v96;
    v29 &= v29 - 1;
    (*v31)(v35, v34, 1, v33);
    outlined destroy of NSObject?(v35, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  while (1)
  {
    v36 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      goto LABEL_62;
    }

    if (v36 >= v30)
    {
      break;
    }

    v29 = *(v26 + 8 * v36);
    ++v25;
    if (v29)
    {
      v25 = v36;
      goto LABEL_21;
    }
  }

  v43 = v98 + 56;
  v44 = 1 << *(v98 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & *(v98 + 56);
  v25 = (v44 + 63) >> 6;
  v96 = (v100 + 40);

  v47 = 0;
  if (v46)
  {
    goto LABEL_30;
  }

LABEL_31:
  while (1)
  {
    v26 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      break;
    }

    if (v26 >= v25)
    {

      v67 = v94;
      if (v88)
      {

        v68 = _sSD4KeysV2eeoiySbAByxq__G_ADtFZSS_10Foundation4DateVTt1g5(v67, v32);

        if (v68)
        {
          v26 = v32;
          v69 = v92;
          if (one-time initialization token for default != -1)
          {
            swift_once();
          }

          v70 = type metadata accessor for Logger();
          __swift_project_value_buffer(v70, static Log.default);

          v71 = Logger.logObject.getter();
          v72 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v71, v72))
          {
            v73 = swift_slowAlloc();
            v74 = swift_slowAlloc();
            v108[0] = v74;
            *v73 = 136315138;
            *(v73 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v69, v108);
            _os_log_impl(&dword_1AEB26000, v71, v72, "[CPAppPolicyManager] Authorized handles for %s did not change, skipping update to clients", v73, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v74);
            MEMORY[0x1B27120C0](v74, -1, -1);
            MEMORY[0x1B27120C0](v73, -1, -1);
          }

          v75 = 0;
          goto LABEL_55;
        }
      }

      v26 = v32;
      v25 = v92;
      if (one-time initialization token for default != -1)
      {
        goto LABEL_65;
      }

      goto LABEL_52;
    }

    v46 = *(v43 + 8 * v26);
    ++v47;
    if (v46)
    {
      while (1)
      {
        v49 = (*(v98 + 48) + ((v26 << 10) | (16 * __clz(__rbit64(v46)))));
        v51 = *v49;
        v50 = v49[1];

        v52 = v97;
        Date.init()();
        v53 = *v99;
        (*v99)(v101, v52, v33);
        v54 = swift_isUniquelyReferenced_nonNull_native();
        v108[0] = v32;
        v55 = specialized __RawDictionaryStorage.find<A>(_:)(v51, v50);
        v57 = v32[2];
        v58 = (v56 & 1) == 0;
        v59 = __OFADD__(v57, v58);
        v60 = v57 + v58;
        if (v59)
        {
          goto LABEL_63;
        }

        v61 = v56;
        if (v32[3] >= v60)
        {
          if ((v54 & 1) == 0)
          {
            v66 = v55;
            specialized _NativeDictionary.copy()();
            v55 = v66;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v60, v54);
          v55 = specialized __RawDictionaryStorage.find<A>(_:)(v51, v50);
          if ((v61 & 1) != (v62 & 1))
          {
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }
        }

        v46 &= v46 - 1;
        if (v61)
        {
          v48 = v55;

          v32 = v108[0];
          v33 = v102;
          (*(v100 + 40))(*(v108[0] + 56) + *(v100 + 72) * v48, v101, v102);
          v47 = v26;
          if (!v46)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v32 = v108[0];
          *(v108[0] + 8 * (v55 >> 6) + 64) |= 1 << v55;
          v63 = (v32[6] + 16 * v55);
          *v63 = v51;
          v63[1] = v50;
          v33 = v102;
          v53((v32[7] + *(v100 + 72) * v55), v101, v102);
          v64 = v32[2];
          v59 = __OFADD__(v64, 1);
          v65 = v64 + 1;
          if (v59)
          {
            goto LABEL_64;
          }

          v32[2] = v65;
          v47 = v26;
          if (!v46)
          {
            goto LABEL_31;
          }
        }

LABEL_30:
        v26 = v47;
      }
    }
  }

LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  swift_once();
LABEL_52:
  v76 = type metadata accessor for Logger();
  __swift_project_value_buffer(v76, static Log.default);

  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v108[0] = v80;
    *v79 = 136315138;
    *(v79 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v25, v108);
    _os_log_impl(&dword_1AEB26000, v77, v78, "[CPAppPolicyManager] Authorized handles for %s changed, sending update to clients", v79, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v80);
    MEMORY[0x1B27120C0](v80, -1, -1);
    MEMORY[0x1B27120C0](v79, -1, -1);
  }

  v75 = 1;
LABEL_55:
  LOBYTE(v108[0]) = v90;
  v108[1] = v89;
  v108[2] = v91;
  v109 = 1;
  v110 = v26;

  CPApplicationPolicyManager.persist(_:authorizationChanged:)(v108, v75);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
}

BOOL closure #1 in CPApplicationPolicyManager.expiredHandles(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - v10;
  v12 = type metadata accessor for DateInterval();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v11, a3, v5);
  DateInterval.init(start:duration:)();
  Date.init()();
  DateInterval.end.getter();
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_5(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v16 = dispatch thunk of static Comparable.< infix(_:_:)();
  v17 = *(v6 + 8);
  v17(v9, v5);
  v17(v11, v5);
  (*(v13 + 8))(v15, v12);
  return (v16 & 1) == 0;
}

uint64_t CPApplicationPolicyManager.fetchAndStoreContactIdentifiers(for:)(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v7 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *&v1[OBJC_IVAR___CPApplicationPolicyManager_queue];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v1;
  aBlock[4] = partial apply for closure #1 in CPApplicationPolicyManager.fetchAndStoreContactIdentifiers(for:);
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_40;
  v11 = _Block_copy(aBlock);
  v12 = a1;
  v13 = v1;
  static DispatchQoS.unspecified.getter();
  v17 = MEMORY[0x1E69E7CC0];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_5(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v9, v6, v11);
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v16);
}

void closure #1 in CPApplicationPolicyManager.fetchAndStoreContactIdentifiers(for:)(void *a1, void *a2)
{
  v161[5] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 1);
  v158 = v4;
  v159 = v5;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v147 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v147 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v147 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v147 - v15;
  v17 = [objc_opt_self() tu:a1 contactStoreConfigurationForConversation:?];
  v18 = *((*MEMORY[0x1E69E7D40] & *a2) + 0xF0);
  v157 = a2;
  v19 = v18();
  v20 = v19(v17);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1AEE07B40;
  *(v21 + 32) = a1;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation, 0x1E69D8B20);
  v22 = a1;
  isa = Array._bridgeToObjectiveC()().super.isa;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
  v24 = Array._bridgeToObjectiveC()().super.isa;
  v161[0] = 0;
  v25 = [v20 tu:isa contactsByRemoteConversationMemberForConversations:v24 keyDescriptors:v161 error:?];

  v26 = v161[0];
  if (!v25)
  {
    v156 = v14;
    v157 = v16;
    v155 = v8;
    v113 = v10;
    v114 = v161[0];
    v115 = _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_unknownObjectRelease();

    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v116 = type metadata accessor for Logger();
    __swift_project_value_buffer(v116, static Log.default);
    v117 = v22;
    v118 = v115;
    v119 = Logger.logObject.getter();
    v120 = static os_log_type_t.error.getter();

    v121 = os_log_type_enabled(v119, v120);
    v122 = v157;
    if (v121)
    {
      v123 = v113;
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v161[0] = v125;
      *v124 = 136315394;
      v126 = [v117 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v127 = v158;
      v128 = v159;
      (*(v159 + 56))(v122, 0, 1, v158);
      v129 = v156;
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v122, v156, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if ((*(v128 + 48))(v129, 1, v127) == 1)
      {
        v130 = 0xE300000000000000;
        v131 = 7104878;
      }

      else
      {
        (*(v128 + 32))(v123, v129, v127);
        (*(v128 + 16))(v155, v123, v127);
        v132 = String.init<A>(reflecting:)();
        v133 = v123;
        v131 = v132;
        v130 = v134;
        (*(v128 + 8))(v133, v127);
      }

      outlined destroy of NSObject?(v122, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v135 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v131, v130, v161);

      *(v124 + 4) = v135;
      *(v124 + 12) = 2080;
      v160 = v115;
      v136 = v115;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v137 = String.init<A>(reflecting:)();
      v139 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v137, v138, v161);

      *(v124 + 14) = v139;
      _os_log_impl(&dword_1AEB26000, v119, v120, "[CPAppPolicyManager] Failed to fetch Contacts for converation with UUID %s, error: %s", v124, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v125, -1, -1);
      MEMORY[0x1B27120C0](v124, -1, -1);
    }

    else
    {
    }

    return;
  }

  v155 = v20;
  v156 = v17;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9CNContactCGMd, &_sSaySo9CNContactCGMR);
  lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
  v27 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v26;

  v29 = v27;
  v30 = 0;
  isUniquelyReferenced_nonNull_native = 0;
  v32 = (v27 + 64);
  v33 = 1 << *(v27 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v27 + 64);
  v36 = (v33 + 63) >> 6;
  v37 = MEMORY[0x1E69E7CC8];
  v38 = &selRef_audioToken;
LABEL_5:
  if (v35)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v39 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    if (v39 >= v36)
    {
      break;
    }

    v35 = v32[v39];
    ++v30;
    if (v35)
    {
      v30 = v39;
LABEL_10:
      v40 = (v30 << 9) | (8 * __clz(__rbit64(v35)));
      v41 = *(*(v29 + 48) + v40);
      v42 = *(*(v29 + 56) + v40);
      if (v42 >> 62)
      {
        v75 = *(*(v29 + 56) + v40);
        v76 = v29;
        v77 = __CocoaSet.count.getter();
        v29 = v76;
        v43 = v77;
        v42 = v75;
      }

      else
      {
        v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v35 &= v35 - 1;
      if (v43)
      {
        v148 = v36;
        v149 = v32;
        v158 = isUniquelyReferenced_nonNull_native;
        v150 = v29;
        if (v43 < 1)
        {
          __break(1u);
        }

        v153 = v42 & 0xC000000000000001;
        v44 = v42;
        v154 = v41;

        v45 = v44;
        v46 = 0;
        v151 = v43;
        v152 = v44;
        while (1)
        {
          v159 = v46;
          if (v153)
          {
            v47 = MEMORY[0x1B2710B10]();
          }

          else
          {
            v47 = *(v45 + 8 * v46 + 32);
          }

          v48 = v47;
          v49 = [v47 v38[38]];
          v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v52 = v51;

          if (*(v37 + 16))
          {
            specialized __RawDictionaryStorage.find<A>(_:)(v50, v52);
            v54 = v53;

            v55 = MEMORY[0x1E69E7CC0];
            if (v54)
            {
            }
          }

          else
          {

            v55 = MEMORY[0x1E69E7CC0];
          }

          v161[0] = v55;
          v56 = [v154 handle];
          MEMORY[0x1B2710150]();
          if (*((v161[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v161[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v57 = v161[0];
          v58 = v48;
          v59 = [v48 v38[38]];
          v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v62 = v61;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v160 = v37;
          v64 = specialized __RawDictionaryStorage.find<A>(_:)(v60, v62);
          v65 = v37;
          v66 = *(v37 + 16);
          v67 = (v63 & 1) == 0;
          v68 = v66 + v67;
          if (__OFADD__(v66, v67))
          {
            goto LABEL_73;
          }

          v37 = v63;
          if (*(v65 + 24) >= v68)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              isUniquelyReferenced_nonNull_native = v160;
              if ((v63 & 1) == 0)
              {
                goto LABEL_33;
              }
            }

            else
            {
              specialized _NativeDictionary.copy()();
              isUniquelyReferenced_nonNull_native = v160;
              if ((v37 & 1) == 0)
              {
                goto LABEL_33;
              }
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v68, isUniquelyReferenced_nonNull_native);
            v69 = specialized __RawDictionaryStorage.find<A>(_:)(v60, v62);
            if ((v37 & 1) != (v70 & 1))
            {
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

            v64 = v69;
            isUniquelyReferenced_nonNull_native = v160;
            if ((v37 & 1) == 0)
            {
LABEL_33:
              *(isUniquelyReferenced_nonNull_native + 8 * (v64 >> 6) + 64) |= 1 << v64;
              v71 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v64);
              *v71 = v60;
              v71[1] = v62;
              *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v64) = v57;
              v72 = *(isUniquelyReferenced_nonNull_native + 16);
              v73 = __OFADD__(v72, 1);
              v74 = v72 + 1;
              if (v73)
              {
                goto LABEL_74;
              }

              v37 = isUniquelyReferenced_nonNull_native;
              *(isUniquelyReferenced_nonNull_native + 16) = v74;

              goto LABEL_16;
            }
          }

          *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v64) = v57;

          v37 = isUniquelyReferenced_nonNull_native;
LABEL_16:
          v46 = v159 + 1;
          v45 = v152;
          v38 = &selRef_audioToken;
          if (v151 == (v159 + 1))
          {

            v32 = v149;
            v29 = v150;
            isUniquelyReferenced_nonNull_native = v158;
            v36 = v148;
            goto LABEL_5;
          }
        }
      }

      goto LABEL_5;
    }
  }

  if (one-time initialization token for default == -1)
  {
    goto LABEL_40;
  }

LABEL_75:
  swift_once();
LABEL_40:
  v78 = type metadata accessor for Logger();
  v148 = __swift_project_value_buffer(v78, static Log.default);
  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v161[0] = v82;
    *v81 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8TUHandleCGMd, &_sSaySo8TUHandleCGMR);
    v83 = Dictionary.description.getter();
    v85 = v84;

    v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v85, v161);

    *(v81 + 4) = v86;
    _os_log_impl(&dword_1AEB26000, v79, v80, "[CPAppPolicyManager] Updating CPAppPolicy.ContactHandles with %s", v81, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v82);
    MEMORY[0x1B27120C0](v82, -1, -1);
    MEMORY[0x1B27120C0](v81, -1, -1);
  }

  v87 = v37 + 64;
  v88 = 1 << *(v37 + 32);
  v89 = -1;
  if (v88 < 64)
  {
    v89 = ~(-1 << v88);
  }

  v90 = v37;
  v37 = v89 & *(v37 + 64);
  v151 = (v157 + OBJC_IVAR___CPApplicationPolicyManager_storage);
  v152 = OBJC_IVAR___CPApplicationPolicyManager_lock;
  v91 = (v88 + 63) >> 6;
  v154 = v90;

  v92 = 0;
  v93 = v156;
  v150 = v91;
  v153 = v87;
  while (1)
  {
    if (!v37)
    {
      while (1)
      {
        v100 = v92 + 1;
        if (__OFADD__(v92, 1))
        {
          goto LABEL_72;
        }

        if (v100 >= v91)
        {
          goto LABEL_58;
        }

        v37 = *(v87 + 8 * v100);
        ++v92;
        if (v37)
        {
          v92 = v100;
          break;
        }
      }
    }

    v101 = __clz(__rbit64(v37)) | (v92 << 6);
    v102 = (*(v154 + 6) + 16 * v101);
    v103 = *v102;
    v104 = v102[1];
    v105 = *(*(v154 + 7) + 8 * v101);
    swift_bridgeObjectRetain_n();

    v106 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8TUHandleC_SayAEGTt0g5Tf4g_n(v105);

    v107 = specialized CPApplicationPolicyManager.hashedHandles(from:)(v106);
    v158 = isUniquelyReferenced_nonNull_native;
    if (isUniquelyReferenced_nonNull_native)
    {

      v140 = Logger.logObject.getter();
      v141 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v140, v141))
      {
        v142 = swift_slowAlloc();
        v143 = swift_slowAlloc();
        v161[0] = v143;
        *v142 = 136315138;
        v160 = v105;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8TUHandleCGMd, &_sSaySo8TUHandleCGMR);
        v144 = String.init<A>(reflecting:)();
        v146 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v144, v145, v161);

        *(v142 + 4) = v146;
        _os_log_impl(&dword_1AEB26000, v140, v141, "[CPAppPolicyManager] Error getting normalized handles from %s", v142, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v143);
        MEMORY[0x1B27120C0](v143, -1, -1);
        MEMORY[0x1B27120C0](v142, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      return;
    }

    v108 = v107;
    v159 = v103;

    v109 = *(v108 + 16);
    if (!v109)
    {

      v94 = MEMORY[0x1E69E7CC0];
      goto LABEL_46;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v94 = swift_allocObject();
    v110 = _swift_stdlib_malloc_size(v94);
    v111 = v110 - 32;
    if (v110 < 32)
    {
      v111 = v110 - 17;
    }

    v94[2] = v109;
    v94[3] = 2 * (v111 >> 4);
    v149 = specialized Sequence._copySequenceContents(initializing:)(v161, v94 + 4, v109, v108);
    v112 = v161[0];
    v93 = v161[1];

    outlined consume of Set<String>.Iterator._Variant(v112);
    if (v149 != v109)
    {
      break;
    }

LABEL_46:
    v37 &= v37 - 1;
    v95 = *(v157 + v152);
    os_unfair_lock_lock(*(v95 + 16));
    v96 = v151[3];
    v97 = v151[4];
    __swift_project_boxed_opaque_existential_1(v151, v96);
    v98 = v159;
    v99 = CPAppPolicy.ContactHandles.dictionaryRepresentation.getter(v159, v104, v94);

    v161[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    v161[0] = v99;
    (*(v97 + 8))(v161, v98, v104, v96, v97);

    outlined destroy of NSObject?(v161, &_sypSgMd, &_sypSgMR);
    os_unfair_lock_unlock(*(v95 + 16));
    v93 = v156;
    isUniquelyReferenced_nonNull_native = v158;
    v87 = v153;
    v91 = v150;
  }

  __break(1u);
LABEL_58:

  swift_unknownObjectRelease();
}

uint64_t CPApplicationPolicyManager.fetchAndProcessContactChangeHistory()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v5 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *&v0[OBJC_IVAR___CPApplicationPolicyManager_queue];
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = partial apply for closure #1 in CPApplicationPolicyManager.fetchAndProcessContactChangeHistory();
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_47_1;
  v9 = _Block_copy(aBlock);
  v10 = v0;
  static DispatchQoS.unspecified.getter();
  v14 = MEMORY[0x1E69E7CC0];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_5(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v7, v4, v9);
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v13);
}

void closure #1 in CPApplicationPolicyManager.fetchAndProcessContactChangeHistory()(char *a1)
{
  v91 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for NSFastEnumerationIterator();
  v78 = *(v2 - 8);
  v79 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *&a1[OBJC_IVAR___CPApplicationPolicyManager_lock];
  os_unfair_lock_lock(*(v5 + 16));
  v6 = *&a1[OBJC_IVAR___CPApplicationPolicyManager_storage + 24];
  v7 = *&a1[OBJC_IVAR___CPApplicationPolicyManager_storage + 32];
  v80 = &a1[OBJC_IVAR___CPApplicationPolicyManager_storage];
  __swift_project_boxed_opaque_existential_1(&a1[OBJC_IVAR___CPApplicationPolicyManager_storage], v6);
  v8 = *(v7 + 40);
  v81 = "CPAppPolicy.AutoSharePlayToggle";
  v8(&v89, MEMORY[0x1E6969080], 0xD000000000000026, 0x80000001AEE33040, MEMORY[0x1E6969080], v6, v7);
  v82 = v5;
  os_unfair_lock_unlock(*(v5 + 16));
  v9 = *(&v89 + 1);
  v10 = v89;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = __swift_project_value_buffer(v11, static Log.default);
  outlined copy of Data?(v10, v9);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  outlined consume of Data?(v10, v9);
  v15 = os_log_type_enabled(v13, v14);
  v16 = v9 >> 60;
  v84 = v10;
  v85 = v9;
  v83 = v12;
  if (v15)
  {
    v17 = 7104878;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *&v88[0] = v19;
    *v18 = 136315138;
    if (v16 <= 0xE && (isa = Data._bridgeToObjectiveC()().super.isa, v21 = [(objc_class *)isa tu_URLSafeBase64EncodedString], isa, v21))
    {
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      *&v89 = v22;
      *(&v89 + 1) = v24;
      v17 = String.init<A>(reflecting:)();
      v26 = v25;
    }

    else
    {
      v26 = 0xE300000000000000;
    }

    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v26, v88);

    *(v18 + 4) = v27;
    _os_log_impl(&dword_1AEB26000, v13, v14, "[CPAppPolicyManager] Read CPAppPolicy.ContactsChangeHistoryToken: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x1B27120C0](v19, -1, -1);
    MEMORY[0x1B27120C0](v18, -1, -1);

    v10 = v84;
    v9 = v85;
  }

  else
  {
  }

  v28 = *&a1[OBJC_IVAR___CPApplicationPolicyManager_contactStore];
  v29 = [objc_allocWithZone(MEMORY[0x1E695CD40]) init];
  if (v16 <= 0xE)
  {
    outlined copy of Data._Representation(v10, v9);
    v30 = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v10, v9);
  }

  else
  {
    v30 = 0;
  }

  [v29 setStartingToken_];

  *&v89 = 0;
  v31 = [v28 tu:v29 enumeratorForChangeHistoryFetchRequest:&v89 error:?];
  if (v31)
  {
    v32 = v31;
    v77 = v29;
    v33 = v89;
    v34 = [v32 currentHistoryToken];
    v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38 = swift_allocObject();
    *(v38 + 16) = a1;
    v39 = type metadata accessor for ChangeHistoryProcessor();
    v40 = objc_allocWithZone(v39);
    v41 = &v40[OBJC_IVAR____TtC14CopresenceCore22ChangeHistoryProcessor_onContactDeleted];
    *v41 = partial apply for closure #2 in closure #1 in CPApplicationPolicyManager.fetchAndProcessContactChangeHistory();
    v41[1] = v38;
    v87.receiver = v40;
    v87.super_class = v39;
    v42 = a1;
    v43 = objc_msgSendSuper2(&v87, sel_init);
    v76 = v32;
    v44 = [v32 value];
    NSEnumerator.makeIterator()();

    NSFastEnumerationIterator.next()();
    while (v90)
    {
      outlined init with take of Any(&v89, v88);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNChangeHistoryEvent, 0x1E695CD38);
      if (swift_dynamicCast())
      {
        v45 = v86;
        [v86 acceptEventVisitor_];
      }

      NSFastEnumerationIterator.next()();
    }

    (*(v78 + 8))(v4, v79);
    outlined copy of Data._Representation(v35, v37);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.info.getter();
    outlined consume of Data._Representation(v35, v37);
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v88[0] = v49;
      *v48 = 136315138;
      v50 = Data._bridgeToObjectiveC()().super.isa;
      v51 = [(objc_class *)v50 tu_URLSafeBase64EncodedString];

      if (v51)
      {
        v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v54 = v53;

        *&v89 = v52;
        *(&v89 + 1) = v54;
        v55 = String.init<A>(reflecting:)();
        v57 = v56;
      }

      else
      {
        v55 = 7104878;
        v57 = 0xE300000000000000;
      }

      v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, v88);

      *(v48 + 4) = v69;
      _os_log_impl(&dword_1AEB26000, v46, v47, "[CPAppPolicyManager] Writing CPAppPolicy.ContactsChangeHistoryToken:%s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      MEMORY[0x1B27120C0](v49, -1, -1);
      MEMORY[0x1B27120C0](v48, -1, -1);
    }

    v70 = v80;
    v71 = MEMORY[0x1E6969080];
    v72 = v82;
    os_unfair_lock_lock(*(v82 + 16));
    v73 = *(v70 + 3);
    v74 = *(v70 + 4);
    __swift_project_boxed_opaque_existential_1(v70, v73);
    v90 = v71;
    *&v89 = v35;
    *(&v89 + 1) = v37;
    v75 = *(v74 + 8);
    outlined copy of Data._Representation(v35, v37);
    v75(&v89, 0xD000000000000026, v81 | 0x8000000000000000, v73, v74);
    outlined destroy of NSObject?(&v89, &_sypSgMd, &_sypSgMR);
    os_unfair_lock_unlock(*(v72 + 16));
    outlined consume of Data?(v84, v85);

    outlined consume of Data._Representation(v35, v37);
  }

  else
  {
    v58 = v89;
    v59 = _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data?(v10, v9);

    v60 = v59;
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *&v89 = v64;
      *v63 = 136315138;
      *&v88[0] = v59;
      v65 = v59;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v66 = String.init<A>(reflecting:)();
      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, &v89);

      *(v63 + 4) = v68;
      _os_log_impl(&dword_1AEB26000, v61, v62, "[CPAppPolicyManager] Failed to fetch contacts error: %s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v64);
      MEMORY[0x1B27120C0](v64, -1, -1);
      MEMORY[0x1B27120C0](v63, -1, -1);
    }

    else
    {
    }
  }
}

void closure #2 in closure #1 in CPApplicationPolicyManager.fetchAndProcessContactChangeHistory()(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.default);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v13);
    _os_log_impl(&dword_1AEB26000, v7, v8, "[CPAppPolicyManager] Received deleted contactIdentifier: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1B27120C0](v10, -1, -1);
    MEMORY[0x1B27120C0](v9, -1, -1);
  }

  v11 = *(a3 + OBJC_IVAR___CPApplicationPolicyManager_lock);
  os_unfair_lock_lock(*(v11 + 16));
  closure #1 in closure #2 in closure #1 in CPApplicationPolicyManager.fetchAndProcessContactChangeHistory()(a3, a1, a2);
  v12 = *(v11 + 16);

  os_unfair_lock_unlock(v12);
}

uint64_t closure #1 in closure #2 in closure #1 in CPApplicationPolicyManager.fetchAndProcessContactChangeHistory()(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v7 = (a1 + OBJC_IVAR___CPApplicationPolicyManager_storage);
  v8 = v7[3];
  v9 = v7[4];
  v63 = v7;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  v11 = *(v9 + 40);
  v57 = v10;
  v11(v65, v10, a2, a3, v10, v8, v9);
  result = v65[0];
  if (v65[0])
  {
    result = specialized CPAppPolicy.ContactHandles.init(dictionary:)(v65[0]);
    if (v13)
    {
      v15 = v13;
      v16 = v14;
      v68 = result;
      if (one-time initialization token for default != -1)
      {
LABEL_20:
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Log.default);

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();

      v20 = os_log_type_enabled(v18, v19);
      v56 = v16;
      v52 = a2;
      v53 = a3;
      if (v20)
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v65[0] = v22;
        *v21 = 136315138;

        v23 = v19;
        v24 = CPAppPolicy.ContactHandles.description.getter(v68, v15, v16);
        v26 = v25;

        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, v65);

        *(v21 + 4) = v27;
        _os_log_impl(&dword_1AEB26000, v18, v23, "[CPAppPolicyManager] Contact deleted, removing %s and associated handles from AuthorizedBundles", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v22);
        MEMORY[0x1B27120C0](v22, -1, -1);
        MEMORY[0x1B27120C0](v21, -1, -1);
      }

      v28 = v63[3];
      v29 = v63[4];
      __swift_project_boxed_opaque_existential_1(v63, v28);
      v30 = (*(v29 + 56))(v57, v57, v28, v29);
      v31 = v4;
      v4 = specialized Dictionary.compactMapValues<A>(_:)(v30);
      v68 = v31;

      v32 = 0;
      v33 = *(v4 + 64);
      v54 = v4 + 64;
      v55 = v4;
      v34 = 1 << *(v4 + 32);
      v35 = -1;
      if (v34 < 64)
      {
        v35 = ~(-1 << v34);
      }

      a3 = v35 & v33;
      v36 = (v34 + 63) >> 6;
      if ((v35 & v33) != 0)
      {
        do
        {
          v37 = v32;
          a2 = v56;
LABEL_15:
          v38 = __clz(__rbit64(a3));
          a3 &= a3 - 1;
          v39 = v38 | (v37 << 6);
          v40 = *(v55 + 56);
          v41 = (*(v55 + 48) + 16 * v39);
          v42 = *v41;
          v61 = v41[1];
          v62 = v42;
          v43 = (v40 + 40 * v39);
          v60 = *v43;
          v44 = *(v43 + 2);
          v59 = *(v43 + 1);
          v58 = v43[24];
          MEMORY[0x1EEE9AC00](v61);
          v51[2] = a2;

          v46 = v68;
          v16 = specialized _NativeDictionary.filter(_:)(v45, partial apply for closure #1 in closure #1 in closure #2 in closure #1 in CPApplicationPolicyManager.fetchAndProcessContactChangeHistory(), v51, specialized closure #1 in _NativeDictionary.filter(_:), specialized closure #1 in _NativeDictionary.filter(_:));
          v68 = v46;

          v47 = v63[3];
          v4 = v63[4];
          v15 = __swift_project_boxed_opaque_existential_1(v63, v47);
          LOBYTE(v65[0]) = v60;
          v65[1] = v59;
          v65[2] = v44;
          v66 = v58;
          v67 = v16;
          v48 = CPAppPolicy.AuthorizedBundles.dictionaryRepresentation.getter();

          v64[3] = v57;
          v64[0] = v48;
          (*(v4 + 8))(v64, v62, v61, v47, v4);

          outlined destroy of NSObject?(v64, &_sypSgMd, &_sypSgMR);
        }

        while (a3);
      }

      a2 = v56;
      while (1)
      {
        v37 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          __break(1u);
          goto LABEL_20;
        }

        if (v37 >= v36)
        {
          break;
        }

        a3 = *(v54 + 8 * v37);
        ++v32;
        if (a3)
        {
          v32 = v37;
          goto LABEL_15;
        }
      }

      v49 = v63[3];
      v50 = v63[4];
      __swift_project_boxed_opaque_existential_1(v63, v49);
      return (*(v50 + 24))(v52, v53, v49, v50);
    }
  }

  return result;
}

id ChangeHistoryProcessor.__allocating_init(onContactDeleted:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC14CopresenceCore22ChangeHistoryProcessor_onContactDeleted];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

Swift::Bool __swiftcall CPApplicationPolicyManager.isAuthorized(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0xA0))())
  {
    v5 = (*((*v4 & *v1) + 0x98))();
    if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object), (v7 & 1) != 0))
    {
      v8 = *(*(v5 + 56) + 8 * v6);
      v9 = v8;
    }

    else
    {
      v8 = 0;
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
    v11.super.super.isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
    if (v8)
    {
      v10 = static NSObject.== infix(_:_:)();

      v11.super.super.isa = v8;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t CPApplicationPolicyManager.addDelegate(_:queue:)(uint64_t a1, uint64_t a2)
{
  v5 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xC0))();
  (*(*v5 + 160))(a1, a2);
}

void CPApplicationPolicyManager.shouldAutoLaunchApp(for:on:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v2) + 0xB8))())
  {
    v7 = [a1 bundleIdentifier];
    if (!v7)
    {
      if (one-time initialization token for default != -1)
      {
LABEL_90:
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, static Log.default);
      v28 = a1;
      v23 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v23, v29))
      {
        goto LABEL_24;
      }

      v25 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v115 = v28;
      v116[0] = v30;
      *v25 = 136315138;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivity, 0x1E69D8B28);
      v31 = v28;
      v32 = String.init<A>(reflecting:)();
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, v116);

      *(v25 + 4) = v34;
      v35 = "[CPAppPolicyManager] Unable to auto-launch app for activity with missing bundle identifier: %s";
LABEL_22:
      _os_log_impl(&dword_1AEB26000, v23, v29, v35, v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x1B27120C0](v30, -1, -1);
      goto LABEL_23;
    }

    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if ((*((*v6 & *v2) + 0xA0))())
    {
      if (specialized CPApplicationPolicyManager.doesActivityTypeSupportAutoLaunch(activity:)(a1))
      {
        v108 = v9;
        v109 = v11;
        v111 = a1;
        v12 = [a2 mergedRemoteMembers];
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
        lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
        v13 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        specialized Sequence.compactMap<A>(_:)(v13, &selRef_handle);
        v15 = v14;

        v112 = v15;
        v115 = v15;
        v110 = a2;
        v16 = [a2 lightweightMembers];
        v17 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        if ((v17 & 0xC000000000000001) != 0)
        {
          swift_unknownObjectRetain();
          __CocoaSet.makeIterator()();
          Set.Iterator.init(_cocoa:)();
          v17 = v116[0];
          v18 = v116[1];
          v19 = v116[2];
          v20 = v116[3];
          v21 = v116[4];
        }

        else
        {
          v43 = -1 << *(v17 + 32);
          v18 = v17 + 56;
          v19 = ~v43;
          v44 = -v43;
          if (v44 < 64)
          {
            v45 = ~(-1 << v44);
          }

          else
          {
            v45 = -1;
          }

          v21 = v45 & *(v17 + 56);

          v20 = 0;
        }

        while (1)
        {
          if (v17 < 0)
          {
            v50 = __CocoaSet.Iterator.next()();
            if (!v50)
            {
              goto LABEL_39;
            }

            v113 = v50;
            swift_dynamicCast();
            v46 = v114;
            if (!v114)
            {
              goto LABEL_39;
            }
          }

          else
          {
            v48 = v20;
            v49 = v21;
            if (!v21)
            {
              while (1)
              {
                v20 = v48 + 1;
                if (__OFADD__(v48, 1))
                {
                  break;
                }

                if (v20 >= ((v19 + 64) >> 6))
                {
                  goto LABEL_39;
                }

                v49 = *(v18 + 8 * v20);
                ++v48;
                if (v49)
                {
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_85:
              __break(1u);
LABEL_86:
              __break(1u);
              goto LABEL_87;
            }

LABEL_29:
            v21 = (v49 - 1) & v49;
            v46 = *(*(v17 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v49)))));
            if (!v46)
            {
LABEL_39:
              outlined consume of Set<String>.Iterator._Variant(v17);

              v51 = [v110 lightweightMembers];
              v52 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

              specialized Sequence.compactMap<A>(_:)(v52, &selRef_handle);
              v54 = v53;

              v113 = v112;
              specialized Array.append<A>(contentsOf:)(v54);
              v55 = v112;
              v114 = v112;
              v56 = [v110 localMember];
              if (v56)
              {
                v57 = v56;
                v58 = [v56 handle];
                MEMORY[0x1B2710150]();
                v59 = v111;
                if (*((v114 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                v55 = v114;
              }

              else
              {
                v59 = v111;
              }

              v60 = [v59 originator];
              v61 = v55 >> 62;
              if (v60)
              {
                v62 = v60;
                if (v61)
                {
                  v63 = __CocoaSet.count.getter();
                }

                else
                {
                  v63 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v64 = 0;
                while (v63 != v64)
                {
                  if ((v55 & 0xC000000000000001) != 0)
                  {
                    v65 = MEMORY[0x1B2710B10](v64, v55);
                  }

                  else
                  {
                    if (v64 >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_86;
                    }

                    v65 = *(v55 + 8 * v64 + 32);
                  }

                  v66 = v65;
                  if (__OFADD__(v64, 1))
                  {
                    goto LABEL_85;
                  }

                  v67 = [v65 isEquivalentToHandle_];

                  ++v64;
                  if (v67)
                  {

                    v59 = v111;
                    v61 = v55 >> 62;
                    goto LABEL_60;
                  }
                }

                if (one-time initialization token for default != -1)
                {
                  swift_once();
                }

                v68 = type metadata accessor for Logger();
                __swift_project_value_buffer(v68, static Log.default);
                v69 = v62;
                v23 = Logger.logObject.getter();
                v70 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v23, v70))
                {
                  v71 = swift_slowAlloc();
                  v72 = swift_slowAlloc();
                  v73 = swift_slowAlloc();
                  v113 = v73;
                  *v71 = 138412546;
                  *(v71 + 4) = v69;
                  *v72 = v62;
                  *(v71 + 12) = 2080;
                  v74 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
                  v75 = v69;

                  v77 = MEMORY[0x1B2710180](v76, v74);
                  v79 = v78;

                  v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v79, &v113);

                  *(v71 + 14) = v80;
                  _os_log_impl(&dword_1AEB26000, v23, v70, "[CPAppPolicyManager] Activity originator %@ can't be found in the conversation's members %s. Not allowing BG launch", v71, 0x16u);
                  outlined destroy of NSObject?(v72, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                  MEMORY[0x1B27120C0](v72, -1, -1);
                  __swift_destroy_boxed_opaque_existential_1Tm(v73);
                  MEMORY[0x1B27120C0](v73, -1, -1);
                  MEMORY[0x1B27120C0](v71, -1, -1);

                  return;
                }
              }

              else
              {
LABEL_60:
                v81 = [v59 trustedFromHandle];
                if (!v81)
                {
LABEL_76:
                  v100 = [v110 lightweightMembers];
                  v101 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

                  specialized Sequence.compactMap<A>(_:)(v101, &selRef_lightweightPrimary);
                  v103 = v102;

                  specialized Array.append<A>(contentsOf:)(v103);
                  v104 = *(v3 + OBJC_IVAR___CPApplicationPolicyManager_lock);
                  os_unfair_lock_lock(*(v104 + 16));
                  specialized closure #7 in CPApplicationPolicyManager.shouldAutoLaunchApp(for:on:)(v3, v108, v109, &v115, v59, &v113);

                  os_unfair_lock_unlock(*(v104 + 16));

                  return;
                }

                v82 = v81;
                if (v61)
                {
                  v83 = __CocoaSet.count.getter();
                }

                else
                {
                  v83 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                a1 = (v55 & 0xC000000000000001);

                v84 = 0;
                while (v83 != v84)
                {
                  if (a1)
                  {
                    v85 = MEMORY[0x1B2710B10](v84, v55);
                  }

                  else
                  {
                    if (v84 >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_89;
                    }

                    v85 = *(v55 + 8 * v84 + 32);
                  }

                  v86 = v85;
                  if (__OFADD__(v84, 1))
                  {
                    __break(1u);
LABEL_89:
                    __break(1u);
                    goto LABEL_90;
                  }

                  v87 = [v85 isEquivalentToHandle_];

                  ++v84;
                  if (v87)
                  {

                    v59 = v111;
                    goto LABEL_76;
                  }
                }

                if (one-time initialization token for default != -1)
                {
                  swift_once();
                }

                v88 = type metadata accessor for Logger();
                __swift_project_value_buffer(v88, static Log.default);
                v89 = v82;
                v23 = Logger.logObject.getter();
                v90 = static os_log_type_t.fault.getter();

                if (os_log_type_enabled(v23, v90))
                {
                  v91 = swift_slowAlloc();
                  v92 = swift_slowAlloc();
                  v93 = swift_slowAlloc();
                  v113 = v93;
                  *v91 = 138412546;
                  *(v91 + 4) = v89;
                  *v92 = v82;
                  *(v91 + 12) = 2080;
                  v94 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);

                  v95 = v89;
                  v96 = MEMORY[0x1B2710180](v55, v94);
                  v98 = v97;

                  v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v98, &v113);

                  *(v91 + 14) = v99;
                  _os_log_impl(&dword_1AEB26000, v23, v90, "[CPAppPolicyManager] Activity's trusted fromHandle %@ can't be found in the conversation's members %s. Not allowing BG launch", v91, 0x16u);
                  outlined destroy of NSObject?(v92, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                  MEMORY[0x1B27120C0](v92, -1, -1);
                  __swift_destroy_boxed_opaque_existential_1Tm(v93);
                  MEMORY[0x1B27120C0](v93, -1, -1);
                  MEMORY[0x1B27120C0](v91, -1, -1);

                  return;
                }
              }

              goto LABEL_24;
            }
          }

          v47 = [v46 isValidated];

          if ((v47 & 1) == 0)
          {

            outlined consume of Set<String>.Iterator._Variant(v17);

            if (one-time initialization token for default != -1)
            {
              swift_once();
            }

            v105 = type metadata accessor for Logger();
            __swift_project_value_buffer(v105, static Log.default);
            v23 = Logger.logObject.getter();
            v106 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v23, v106))
            {
              v107 = swift_slowAlloc();
              *v107 = 0;
              _os_log_impl(&dword_1AEB26000, v23, v106, "[CPAppPolicyManager] Conversation contains non-validated lightweight member. Not allowing BG launch", v107, 2u);
              MEMORY[0x1B27120C0](v107, -1, -1);
            }

            goto LABEL_24;
          }
        }
      }

      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      __swift_project_value_buffer(v37, static Log.default);
      v38 = a1;
      v23 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v23, v29))
      {
        goto LABEL_24;
      }

      v25 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v115 = v38;
      v116[0] = v30;
      *v25 = 136315138;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivity, 0x1E69D8B28);
      v39 = v38;
      v40 = String.init<A>(reflecting:)();
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, v116);

      *(v25 + 4) = v42;
      v35 = "[CPAppPolicyManager] Auto-launch not supported for activity: %s";
      goto LABEL_22;
    }

    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Log.default);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_24;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "[CPAppPolicyManager] Not allowing auto-launch because auto-SharePlay is disabled";
LABEL_17:
    _os_log_impl(&dword_1AEB26000, v23, v24, v26, v25, 2u);
LABEL_23:
    MEMORY[0x1B27120C0](v25, -1, -1);
    goto LABEL_24;
  }

  if (one-time initialization token for default != -1)
  {
LABEL_87:
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Log.default);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "[CPAppPolicyManager] Not allowing auto-launch for unsupported platform";
    goto LABEL_17;
  }

LABEL_24:
}

void specialized closure #7 in CPApplicationPolicyManager.shouldAutoLaunchApp(for:on:)(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X3>, void *a5@<X4>, _BYTE *a6@<X8>)
{
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x110))(&v69, a2, a3);
  v13 = v71;
  if (!v71)
  {
    *a6 = 0;
    return;
  }

  v64 = a6;
  v14 = v70;
  v15 = v73;
  if ((v72 & 1) == 0)
  {
    v68[0] = v70;
    v68[1] = v71;
    outlined destroy of String(v68);
    v66[0] = v15;
    outlined destroy of NSObject?(v66, &_sSDySS10Foundation4DateVGMd, &_sSDySS10Foundation4DateVGMR);
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Log.default);

    v20 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v20, v29))
    {
      goto LABEL_15;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v74 = v31;
    *v30 = 136315138;
    *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v74);
    _os_log_impl(&dword_1AEB26000, v20, v29, "[CPAppPolicyManager] Application %s is not authorized", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x1B27120C0](v31, -1, -1);
    v27 = v30;
    goto LABEL_14;
  }

  swift_beginAccess();

  v17 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8TUHandleC_SayAEGTt0g5Tf4g_n(v16);

  v18 = specialized CPApplicationPolicyManager.hashedHandles(from:)(v17);
  if (v6)
  {

    v74 = v14;
    v75 = v13;
    outlined destroy of String(&v74);
    v76 = v15;
    outlined destroy of NSObject?(&v76, &_sSDySS10Foundation4DateVGMd, &_sSDySS10Foundation4DateVGMR);

LABEL_5:
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Log.default);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_15;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v67 = v23;
    *v22 = 136315138;
    swift_beginAccess();
    v65 = *a4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8TUHandleCGMd, &_sSaySo8TUHandleCGMR);
    v24 = String.init<A>(reflecting:)();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v67);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_1AEB26000, v20, v21, "[CPAppPolicyManager] Error getting normalized handles from handles: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x1B27120C0](v23, -1, -1);
    v27 = v22;
LABEL_14:
    MEMORY[0x1B27120C0](v27, -1, -1);
LABEL_15:

    *v64 = 0;
    return;
  }

  v32 = v18;

  if (!*(v32 + 16))
  {
    v74 = v14;
    v75 = v13;
    outlined destroy of String(&v74);
    v76 = v15;
    outlined destroy of NSObject?(&v76, &_sSDySS10Foundation4DateVGMd, &_sSDySS10Foundation4DateVGMR);

    goto LABEL_5;
  }

  v74 = v15;
  MEMORY[0x1EEE9AC00](v33);
  v57[2] = a1;
  v34 = specialized _NativeDictionary.filter(_:)(v15, closure #1 in CPApplicationPolicyManager.expiredHandles(from:)partial apply, v57, specialized closure #1 in _NativeDictionary.filter(_:), specialized closure #1 in _NativeDictionary.filter(_:));
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  v36 = __swift_project_value_buffer(v35, static Log.default);

  v63 = v36;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();

  v62 = v38;
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v59 = v39;
    v60 = swift_slowAlloc();
    v66[0] = v60;
    *v39 = 136315138;
    type metadata accessor for Date();
    v40 = Dictionary.description.getter();
    v61 = v34;
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, v66);
    v58 = v37;
    v43 = v42;
    v34 = v61;

    v44 = v59;
    *(v59 + 1) = v43;
    v45 = v37;
    v46 = v44;
    _os_log_impl(&dword_1AEB26000, v45, v62, "[CPAppPolicyManager] Expired handles: %s", v44, 0xCu);
    v47 = v60;
    __swift_destroy_boxed_opaque_existential_1Tm(v60);
    MEMORY[0x1B27120C0](v47, -1, -1);
    MEMORY[0x1B27120C0](v46, -1, -1);
  }

  else
  {
  }

  v49 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySS10Foundation4DateV_GTt0g5(v48);
  v66[0] = v14;
  v66[1] = v13;
  outlined destroy of String(v66);
  outlined destroy of NSObject?(&v74, &_sSDySS10Foundation4DateVGMd, &_sSDySS10Foundation4DateVGMR);
  v76 = v49;
  specialized Set._subtract<A>(_:)(v34);

  v50 = specialized Set.isSubset(of:)(v76, v32);

  v51 = a5;
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v54 = 67109378;
    *(v54 + 4) = v50 & 1;
    *(v54 + 8) = 2112;
    *(v54 + 10) = v51;
    *v55 = v51;
    v56 = v51;
    _os_log_impl(&dword_1AEB26000, v52, v53, "[CPAppPolicyManager] Application allowed to auto-launch: %{BOOL}d for activity: %@", v54, 0x12u);
    outlined destroy of NSObject?(v55, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v55, -1, -1);
    MEMORY[0x1B27120C0](v54, -1, -1);
  }

  *v64 = v50 & 1;
}

uint64_t specialized Set.isSubset(of:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a1 + 56;

    v11 = 0;
    for (i = v2; ; v2 = i)
    {
      if (!v7)
      {
        do
        {
          v21 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
            return result;
          }

          if (v21 >= v8)
          {

            return 1;
          }

          v7 = *(v4 + 8 * v21);
          ++v11;
        }

        while (!v7);
        v11 = v21;
        if (*(a1 + 16))
        {
          goto LABEL_9;
        }

LABEL_22:

        return 0;
      }

      if (!*(a1 + 16))
      {
        goto LABEL_22;
      }

LABEL_9:
      v12 = (*(v2 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v7)))));
      v14 = *v12;
      v13 = v12[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v15 = Hasher._finalize()();
      v16 = -1 << *(a1 + 32);
      v17 = v15 & ~v16;
      if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v18 = ~v16;
      while (1)
      {
        v19 = (*(a1 + 48) + 16 * v17);
        v20 = *v19 == v14 && v19[1] == v13;
        if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v17 = (v17 + 1) & v18;
        if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_23:
  }

  return 0;
}

void CPApplicationPolicyManager.updateAllowedHandles(for:)(void *a1)
{
  v2 = v1;
  v3 = [a1 activitySessions];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
  lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v4 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v4 = v19;
    v5 = v20;
    v6 = v21;
    v7 = v22;
    v8 = v23;
  }

  else
  {
    v9 = -1 << *(v4 + 32);
    v5 = v4 + 56;
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

    v8 = v11 & *(v4 + 56);

    v7 = 0;
  }

  if (v4 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v7;
    v13 = v8;
    v14 = v7;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
LABEL_18:
      outlined consume of Set<String>.Iterator._Variant(v4);

      return;
    }

    while (1)
    {
      (*((*MEMORY[0x1E69E7D40] & *v2) + 0x170))(v16, a1);

      v7 = v14;
      v8 = v15;
      if ((v4 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        swift_dynamicCast();
        v16 = v18;
        v14 = v7;
        v15 = v8;
        if (v18)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= ((v6 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v13 = *(v5 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void CPApplicationPolicyManager.updateAllowedHandles(for:on:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E7D40];
  if (((*((*MEMORY[0x1E69E7D40] & *v2) + 0xB8))() & 1) == 0)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Log.default);
    osloga = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(osloga, v19))
    {
      goto LABEL_23;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "[CPAppPolicyManager] Ignoring update to allowed handles for unsupported platform";
    goto LABEL_22;
  }

  v7 = [a1 activity];
  v8 = [v7 bundleIdentifier];

  if (!v8)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Log.default);
    v23 = a1;
    osloga = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(osloga, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v51 = v26;
      *v25 = 136315138;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
      v27 = v23;
      v28 = String.init<A>(reflecting:)();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v51);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_1AEB26000, osloga, v24, "[CPAppPolicyManager] Unable to update allowed handles for activity with missing bundle identifier: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x1B27120C0](v26, -1, -1);
      MEMORY[0x1B27120C0](v25, -1, -1);

      return;
    }

    goto LABEL_23;
  }

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if (((*((*v6 & *v3) + 0xA0))() & 1) == 0)
  {

    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Log.default);
    osloga = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(osloga, v19))
    {
      goto LABEL_23;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "[CPAppPolicyManager] Ignoring update to allowed handles since auto-SharePlay is disabled";
    goto LABEL_22;
  }

  if ([a1 isPermittedToJoin])
  {
    v12 = [a2 mergedRemoteMembers];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
    lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
    v13 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    specialized Sequence.compactMap<A>(_:)(v13, &selRef_handle);
    v15 = v14;

    v17 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8TUHandleC_SayAEGTt0g5Tf4g_n(v16);

    oslog = specialized CPApplicationPolicyManager.hashedHandles(from:)(v17);

    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Log.default);

    v34 = a1;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v51 = v48;
      *v37 = 136315394;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
      v38 = v34;
      v39 = String.init<A>(reflecting:)();
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v51);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2080;
      v42 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
      v43 = MEMORY[0x1B2710180](v15, v42);
      v45 = v44;

      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v51);

      *(v37 + 14) = v46;
      _os_log_impl(&dword_1AEB26000, v35, v36, "[CPAppPolicyManager] Updating allowed handles for activity: %s with handles: %s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v48, -1, -1);
      MEMORY[0x1B27120C0](v37, -1, -1);
    }

    else
    {
    }

    CPApplicationPolicyManager.fetchAndStoreContactIdentifiers(for:)(a2);
    v47 = *(v3 + OBJC_IVAR___CPApplicationPolicyManager_lock);
    os_unfair_lock_lock(*(v47 + 16));
    CPApplicationPolicyManager.updateAllowedHandles(_:for:)(oslog, v9, v11);

    os_unfair_lock_unlock(*(v47 + 16));
    return;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, static Log.default);
  osloga = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(osloga, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "[CPAppPolicyManager] Ignoring update to allowed handles since activity session is not permitted to be joined.";
LABEL_22:
    _os_log_impl(&dword_1AEB26000, osloga, v19, v21, v20, 2u);
    MEMORY[0x1B27120C0](v20, -1, -1);
  }

LABEL_23:
}

Swift::Void __swiftcall CPApplicationPolicyManager.setAuthorization(_:for:)(Swift::Bool _, Swift::String a2)
{
  v3 = v2;
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Log.default);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21[0] = v11;
    *v10 = 67109378;
    *(v10 + 4) = _;
    *(v10 + 8) = 2080;
    *(v10 + 10) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v21);
    _os_log_impl(&dword_1AEB26000, v8, v9, "[CPAppPolicyManager] Setting authorization: %{BOOL}d for bundleID: %s", v10, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1B27120C0](v11, -1, -1);
    MEMORY[0x1B27120C0](v10, -1, -1);
  }

  if ((*((*MEMORY[0x1E69E7D40] & *v3) + 0xA0))())
  {
    v12 = *(v3 + OBJC_IVAR___CPApplicationPolicyManager_lock);
    os_unfair_lock_lock(*(v12 + 16));
    closure #1 in CPApplicationPolicyManager.setAuthorization(_:for:)(v3, countAndFlagsBits, object, _);
    v13 = *(v12 + 16);

    os_unfair_lock_unlock(v13);
  }

  else
  {

    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21[1] = object;
      v22 = v16;
      *v15 = 136315138;
      v21[0] = countAndFlagsBits;

      v17 = String.init<A>(reflecting:)();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v22);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_1AEB26000, oslog, v14, "[CPAppPolicyManager] Not setting authorization for %s as auto-SharePlay is disabled", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1B27120C0](v16, -1, -1);
      MEMORY[0x1B27120C0](v15, -1, -1);
    }

    else
    {
    }
  }
}

void closure #1 in CPApplicationPolicyManager.setAuthorization(_:for:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = a3;
  v6 = a2;
  v8 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x110))(v29, a2, a3);
  if (!v30)
  {

    v10 = 2;
    v9 = MEMORY[0x1E69E7CC8];
    goto LABEL_5;
  }

  v9 = v32;
  if ((v31 & 1) != (a4 & 1))
  {
    v6 = v29[1];
    v10 = v29[0];
    v5 = v30;
LABEL_5:
    LOBYTE(v33) = v10;
    *(&v33 + 1) = v6;
    *&v34 = v5;
    BYTE8(v34) = a4 & 1;
    v35 = v9;
    v11 = *(a1 + OBJC_IVAR___CPApplicationPolicyManager_storage + 24);
    v12 = *(a1 + OBJC_IVAR___CPApplicationPolicyManager_storage + 32);
    __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR___CPApplicationPolicyManager_storage), v11);

    v13 = CPAppPolicy.AuthorizedBundles.dictionaryRepresentation.getter();
    v28[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    v28[0] = v13;
    (*(v12 + 8))(v28, v6, v5, v11, v12);

    v14 = outlined destroy of NSObject?(v28, &_sypSgMd, &_sypSgMR);
    v15 = (*((*v8 & *a1) + 0xC0))(v14);
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    v17 = v34;
    *(v16 + 24) = v33;
    *(v16 + 40) = v17;
    *(v16 + 56) = v35;
    v18 = *(*v15 + 152);
    v19 = a1;
    v18(closure #1 in CPApplicationPolicyManager.persist(_:authorizationChanged:)partial apply, v16);

    return;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Log.default);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v28[0] = v24;
    *v23 = 136315138;
    *&v33 = v6;
    *(&v33 + 1) = v5;

    v25 = String.init<A>(reflecting:)();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v28);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_1AEB26000, v21, v22, "[CPAppPolicyManager] Not updating authorization for %s. Value did not change.", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x1B27120C0](v24, -1, -1);
    MEMORY[0x1B27120C0](v23, -1, -1);
  }
}

Swift::Void __swiftcall CPApplicationPolicyManager.removeAuthorization(for:)(Swift::OpaquePointer a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v4 = [v3 expanseEnabled];

  if (v4)
  {
    oslog = *(v1 + OBJC_IVAR___CPApplicationPolicyManager_lock);
    os_unfair_lock_lock(oslog[2].isa);
    v5 = *(a1._rawValue + 2);
    if (v5)
    {
      v6 = (v1 + OBJC_IVAR___CPApplicationPolicyManager_storage);
      v7 = (a1._rawValue + 40);
      do
      {
        v9 = *(v7 - 1);
        v8 = *v7;
        v10 = v6[3];
        v11 = v6[4];
        __swift_project_boxed_opaque_existential_1(v6, v10);
        v12 = *(v11 + 24);

        v12(v9, v8, v10, v11);

        v7 += 2;
        --v5;
      }

      while (v5);
    }

    isa = oslog[2].isa;

    os_unfair_lock_unlock(isa);
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Log.default);
    osloga = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(osloga, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1AEB26000, osloga, v15, "[CPAppPolicyManager] removeAuthorization called with ff disabled", v16, 2u);
      MEMORY[0x1B27120C0](v16, -1, -1);
    }
  }
}

Swift::Void __swiftcall CPApplicationPolicyManager.handleApplicationUninstalledNotification(_:)(NSNotification a1)
{
  v2 = v1;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.default);
  v5 = a1.super.isa;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22[0] = v9;
    *v8 = 136315138;
    *&v23 = v5;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNotification, 0x1E696AD80);
    v10 = v5;
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v22);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1AEB26000, v6, v7, "[CPAppPolicyManager] handleApplicationUninstalledNotification %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  v14 = [(objc_class *)v5 userInfo];
  if (!v14)
  {
    goto LABEL_12;
  }

  v15 = v14;
  v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v16 + 16) || (v17 = specialized __RawDictionaryStorage.find<A>(_:)(v22), (v18 & 1) == 0))
  {

    outlined destroy of AnyHashable(v22);
LABEL_12:
    v23 = 0u;
    v24 = 0u;
    goto LABEL_13;
  }

  outlined init with copy of Any(*(v16 + 56) + 32 * v17, &v23);
  outlined destroy of AnyHashable(v22);

  if (!*(&v24 + 1))
  {
LABEL_13:
    outlined destroy of NSObject?(&v23, &_sypSgMd, &_sypSgMR);
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  if (swift_dynamicCast())
  {
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x180))(v22[0]);

    return;
  }

LABEL_14:
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1AEB26000, v19, v20, "[CPAppPolicyManager] could not get list of bundleIDs while handing app uninstalled enotification", v21, 2u);
    MEMORY[0x1B27120C0](v21, -1, -1);
  }
}

Swift::Void __swiftcall CPApplicationPolicyManager.handleCNContactStoreDidChangeNotification(_:)(NSNotification a1)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.default);
  v3 = a1.super.isa;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNotification, 0x1E696AD80);
    v8 = v3;
    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v12);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1AEB26000, v4, v5, "[CPAppPolicyManager] handleCNContactStoreDidChangeNotification %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1B27120C0](v7, -1, -1);
    MEMORY[0x1B27120C0](v6, -1, -1);
  }

  CPApplicationPolicyManager.fetchAndProcessContactChangeHistory()();
}

Swift::Void __swiftcall CPApplicationPolicyManager.appProtectionsChanged(bundleIDs:)(Swift::OpaquePointer bundleIDs)
{
  v2 = *(bundleIDs._rawValue + 2);
  if (v2)
  {
    v3 = v1;
    v14 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
    v4 = (bundleIDs._rawValue + 40);
    v13 = xmmword_1AEE07B20;
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      v14(&v15, v7);
      if (v16)
      {
        outlined init with take of ContiguousBytes(&v15, v17);
        v9 = v18;
        v8 = v19;
        __swift_project_boxed_opaque_existential_1(v17, v18);
        v10 = (*(v8 + 32))(v9, v8);
        *&v15 = v6;
        *(&v15 + 1) = v5;
        MEMORY[0x1EEE9AC00](v10);
        v12[2] = &v15;
        LOBYTE(v8) = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, v12, v10);

        if (v8)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
          v11 = swift_allocObject();
          *(v11 + 16) = v13;
          *(v11 + 32) = v6;
          *(v11 + 40) = v5;
          (*((*MEMORY[0x1E69E7D40] & *v3) + 0x180))();

          __swift_destroy_boxed_opaque_existential_1Tm(v17);
          goto LABEL_5;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v17);
      }

      else
      {
        outlined destroy of NSObject?(&v15, &_s14CopresenceCore29ProtectedAppsObserverProtocol_pSgMd, &_s14CopresenceCore29ProtectedAppsObserverProtocol_pSgMR);
      }

      (*((*MEMORY[0x1E69E7D40] & *v3) + 0x178))(1, v6, v5);

LABEL_5:
      v4 += 2;
      --v2;
    }

    while (v2);
  }
}

uint64_t ChangeHistoryProcessor.onContactDeleted.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CopresenceCore22ChangeHistoryProcessor_onContactDeleted);

  return v1;
}

Swift::Void __swiftcall ChangeHistoryProcessor.visit(_:)(CNChangeHistoryDeleteContactEvent a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14CopresenceCore22ChangeHistoryProcessor_onContactDeleted);
  v3 = [(objc_class *)a1.super.super.isa contactIdentifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v2(v4, v6);
}

id ChangeHistoryProcessor.init(onContactDeleted:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC14CopresenceCore22ChangeHistoryProcessor_onContactDeleted];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for ChangeHistoryProcessor();
  return objc_msgSendSuper2(&v5, sel_init);
}

id ChangeHistoryProcessor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ChangeHistoryProcessor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChangeHistoryProcessor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall CPApplicationPolicyManager.clearBackgroundAccessForAllApps()()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x98))();
  v18 = *(v0 + OBJC_IVAR___CPApplicationPolicyManager_lock);
  os_unfair_lock_lock(*(v18 + 16));
  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v19 = (v0 + OBJC_IVAR___CPApplicationPolicyManager_storage);
  v20 = v1;
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    while (1)
    {
      v8 = v7;
LABEL_9:
      v9 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v10 = v9 | (v8 << 6);
      v11 = (*(v20 + 48) + 16 * v10);
      v12 = v11[1];
      v22 = *v11;
      v13 = *(*(v20 + 56) + 8 * v10);
      v14 = v19[3];
      v15 = v19[4];
      __swift_project_boxed_opaque_existential_1(v19, v14);
      v21 = *(v15 + 24);

      v16 = v13;
      v21(v22, v12, v14, v15);

      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  v17 = *(v18 + 16);

  os_unfair_lock_unlock(v17);
}

uint64_t _sSD4KeysV2eeoiySbAByxq__G_ADtFZSS_10Foundation4DateVTt1g5(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    v10 = v9;
    if (!v6)
    {
      break;
    }

LABEL_10:
    if (*(a2 + 16))
    {
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v12 = (*(a1 + 48) + ((v9 << 10) | (16 * v11)));
      v14 = *v12;
      v13 = v12[1];

      specialized __RawDictionaryStorage.find<A>(_:)(v14, v13);
      LOBYTE(v14) = v15;

      if (v14)
      {
        continue;
      }
    }

    return 0;
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return 1;
    }

    v6 = *(a1 + 64 + 8 * v9);
    ++v10;
    if (v6)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySSSo8NSNumberCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab13VKXEfU_SS_So8I4CTG5AJxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSAIIsgnndzo_Tf1nc_n07_sSSSo8i17CSbIgggd_SSABSbs5T13_pIegnndzo_TRSSAISbIgggd_Tf1nnc_nTm(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      v10 = a5;
      v11 = a4;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
      a4 = v11;
      a5 = v10;
    }

    v12 = a6(result, a2, a3, a4, a5);

    return v12;
  }

  return result;
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1B2710B10](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1B2710B10](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1B2710B10](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

void specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, id))
{
  v22 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a3 + 56) + 8 * v13);

    v18 = v17;
    LOBYTE(v15) = a4(v15, v16, v18);

    if (v15)
    {
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:
        specialized _NativeDictionary.extractDictionary(using:count:)(a1, a2, v22, a3);
        return;
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

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, char *))
{
  v26 = a2;
  v35 = a4;
  v27 = a1;
  v34 = type metadata accessor for Date();
  result = MEMORY[0x1EEE9AC00](v34);
  v32 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v6;
  v8 = 0;
  v36 = a3;
  v9 = *(a3 + 64);
  v28 = 0;
  v29 = a3 + 64;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v9;
  v13 = (v10 + 63) >> 6;
  v30 = v6 + 8;
  v31 = v6 + 16;
  v14 = v32;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v37 = (v12 - 1) & v12;
LABEL_11:
    v18 = v15 | (v8 << 6);
    v19 = (v36[6] + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v23 = v33;
    v22 = v34;
    v24 = v18;
    (*(v33 + 16))(v14, v36[7] + *(v33 + 72) * v18, v34);

    LOBYTE(v20) = v35(v20, v21, v14);
    (*(v23 + 8))(v14, v22);

    v12 = v37;
    if (v20)
    {
      *(v27 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(v27, v26, v28, v36);
      }
    }
  }

  v16 = v8;
  while (1)
  {
    v8 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v8 >= v13)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v27, v26, v28, v36);
    }

    v17 = *(v29 + 8 * v8);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v37 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *specialized _NativeDictionary.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = a1;
  v18[1] = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 32);
  v11 = ((1 << v10) + 63) >> 6;
  if ((v10 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v13 = v18 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v13, v12);
    result = a4(v13, v11, v9, a2, a3);
    if (v5)
    {
      return swift_willThrow();
    }

    return result;
  }

  v16 = swift_slowAlloc();
  v17 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySSSo8NSNumberCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab13VKXEfU_SS_So8I4CTG5AJxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSAIIsgnndzo_Tf1nc_n07_sSSSo8i17CSbIgggd_SSABSbs5T13_pIegnndzo_TRSSAISbIgggd_Tf1nnc_nTm(v16, v11, v9, a2, a3, a5);
  result = MEMORY[0x1B27120C0](v16, -1, -1);
  if (!v5)
  {
    return v17;
  }

  return result;
}

uint64_t specialized CPApplicationPolicyManager.doesActivityTypeSupportAutoLaunch(activity:)(void *a1)
{
  v2 = [a1 metadata];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 context];

    v5 = [v4 typedIdentifier];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
    {
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;
        if (v12 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v14 != v15)
        {
          v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

          return v17 & 1;
        }
      }
    }

    return 1;
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Log.default);
    v20 = a1;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v29 = v24;
      *v23 = 136315138;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivity, 0x1E69D8B28);
      v25 = v20;
      v26 = String.init<A>(reflecting:)();
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v29);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_1AEB26000, v21, v22, "[CPAppPolicyManager] Missing activity identifier or invalid activity-type found for %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x1B27120C0](v24, -1, -1);
      MEMORY[0x1B27120C0](v23, -1, -1);
    }

    return 0;
  }
}