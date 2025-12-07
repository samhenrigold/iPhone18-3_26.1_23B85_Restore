uint64_t SystemCoordinatorTable.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t SystemCoordinatorTable.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t SystemCoordinatorTable.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x1E69E7CC8];
  return v0;
}

uint64_t specialized SystemCoordinatorTable.systemCoordinator(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[30] = a3;
  v4[31] = a4;
  v4[29] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA03AnyC0VySbs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA03AnyC0VySbs5NeverOGGMR);
  v4[32] = v8;
  v9 = *(v8 - 8);
  v4[33] = v9;
  v4[34] = *(v9 + 64);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4[37] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v4[38] = v10;
  v11 = *(v10 - 8);
  v4[39] = v11;
  v4[40] = *(v11 + 64);
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[5] = a3;
  v4[6] = a4;
  v4[44] = __swift_allocate_boxed_opaque_existential_1(v4 + 2);
  (*(*(a3 - 8) + 16))();

  return MEMORY[0x1EEE6DFA0](specialized SystemCoordinatorTable.systemCoordinator(for:), a2, 0);
}

uint64_t specialized SystemCoordinatorTable.systemCoordinator(for:)()
{
  v1 = *(v0 + 232);
  (*(*(v0 + 248) + 24))(*(v0 + 240));
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (!*(v2 + 16))
  {
    goto LABEL_6;
  }

  v3 = *(v0 + 344);

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
  if ((v5 & 1) == 0)
  {

LABEL_6:
    v44 = *(v0 + 344);
    v38 = *(v0 + 312);
    v12 = *(v0 + 296);
    v39 = *(v0 + 304);
    v40 = *(v0 + 336);
    v43 = v1;
    v42 = *(v0 + 272);
    v36 = *(v0 + 264);
    v37 = *(v0 + 280);
    v13 = *(v0 + 248);
    v14 = *(v0 + 256);
    v15 = *(v0 + 240);
    v35 = *(v0 + 288);
    v16 = type metadata accessor for TaskPriority();
    v17 = *(*(v16 - 8) + 56);
    v17(v12, 1, 1, v16);
    outlined init with copy of Transferable(v0 + 16, v0 + 56);
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    outlined init with take of Transferable((v0 + 56), v18 + 32);
    v41 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC15GroupActivities17SystemCoordinatorCSg_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in SystemCoordinatorTable.systemCoordinator(for:), v18);
    *(v0 + 360) = v41;
    *(v0 + 208) = (*(v13 + 16))(v15, v13);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySbs5NeverOGMd, &_s7Combine12AnyPublisherVySbs5NeverOGMR);
    v20 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySbs5NeverOGMd, &_s7Combine12AnyPublisherVySbs5NeverOGMR, MEMORY[0x1E695BED8]);
    MEMORY[0x1B2713BD0](v0 + 208, v19, v20);
    v17(v12, 1, 1, v16);
    v34 = swift_allocObject();
    swift_weakInit();
    (*(v36 + 16))(v37, v35, v14);
    v21 = *(v38 + 16);
    *(v0 + 368) = v21;
    *(v0 + 376) = (v38 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v21(v40, v44, v39);
    v22 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v23 = (v42 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = (*(v38 + 80) + v23 + 8) & ~*(v38 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    (*(v36 + 32))(v25 + v22, v37, v14);
    *(v25 + v23) = v34;
    (*(v38 + 32))(v25 + v24, v40, v39);
    v26 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #2 in SystemCoordinatorTable.systemCoordinator(for:), v25);
    *(v0 + 384) = v26;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = *(v43 + 112);
    *(v43 + 112) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v41, v26, v44, isUniquelyReferenced_nonNull_native);
    *(v43 + 112) = v45;
    swift_endAccess();
    v28 = swift_task_alloc();
    *(v0 + 392) = v28;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities17SystemCoordinatorCSgMd, &_s15GroupActivities17SystemCoordinatorCSgMR);
    *v28 = v0;
    v28[1] = specialized SystemCoordinatorTable.systemCoordinator(for:);
    v10 = v0 + 216;
    v11 = v41;
    goto LABEL_7;
  }

  v6 = (*(v2 + 56) + 16 * v4);
  v7 = *v6;
  *(v0 + 400) = *v6;
  *(v0 + 408) = v6[1];

  if ((v7 & 0x8000000000000000) == 0)
  {

    v8 = swift_task_alloc();
    *(v0 + 416) = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities17SystemCoordinatorCSgMd, &_s15GroupActivities17SystemCoordinatorCSgMR);
    *v8 = v0;
    v8[1] = specialized SystemCoordinatorTable.systemCoordinator(for:);
    v10 = v0 + 224;
    v11 = v7;
LABEL_7:

    return MEMORY[0x1EEE6DA40](v10, v11, v9);
  }

  v29 = *(v0 + 344);
  v30 = *(v0 + 304);
  v31 = *(v0 + 312);

  (*(v31 + 8))(v29, v30);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v32 = *(v0 + 8);

  return v32(v7 & 0x7FFFFFFFFFFFFFFFLL);
}

{
  v1 = *(*v0 + 232);

  return MEMORY[0x1EEE6DFA0](specialized SystemCoordinatorTable.systemCoordinator(for:), v1, 0);
}

{
  v1 = *(v0 + 216);
  v2 = *(v0 + 344);
  v3 = *(v0 + 304);
  if (v1)
  {
    (*(v0 + 368))(*(v0 + 328), *(v0 + 344), *(v0 + 304));
    v4 = SystemCoordinatorTable.systemCoordinatorsById.modify(v0 + 96);
    v6 = specialized Dictionary.subscript.modify((v0 + 128));
    v7 = *(v0 + 328);
    v8 = *(v0 + 304);
    v9 = *(v0 + 312);
    if (v5[1])
    {
      *v5 = v1 | 0x8000000000000000;
    }

    (v6)(v0 + 128, 0);
    v10 = *(v9 + 8);
    v10(v7, v8);
    (v4)(v0 + 96, 0);
    v11 = *(v0 + 344);
    v12 = *(v0 + 304);
    v13 = *(v0 + 288);
    v14 = *(v0 + 256);
    v15 = *(v0 + 264);

    (*(v15 + 8))(v13, v14);
    v10(v11, v12);
  }

  else
  {
    v16 = *(v0 + 312);
    v21 = *(v0 + 288);
    v18 = *(v0 + 256);
    v17 = *(v0 + 264);
    SystemCoordinatorTable.clearSystemCoordinator(_:)(v2);

    (*(v17 + 8))(v21, v18);
    (*(v16 + 8))(v2, v3);
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v19 = *(v0 + 8);

  return v19(v1);
}

{
  v1 = *(*v0 + 232);

  return MEMORY[0x1EEE6DFA0](specialized SystemCoordinatorTable.systemCoordinator(for:), v1, 0);
}

{
  v1 = v0[43];
  v2 = v0[38];
  v3 = v0[39];

  (*(v3 + 8))(v1, v2);
  v4 = v0[28];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v5 = v0[1];

  return v5(v4);
}

uint64_t dispatch thunk of SystemCoordinatorTable.systemCoordinator(for:)(uint64_t a1)
{
  v6 = (*(*v1 + 120) + **(*v1 + 120));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = SystemCoordinatorTable.systemCoordinator(for:);

  return v6(a1);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t partial apply for closure #1 in SystemCoordinatorTable.systemCoordinator(for:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return closure #1 in SystemCoordinatorTable.systemCoordinator(for:)(a1, v4, v5, v1 + 32);
}

uint64_t partial apply for closure #2 in SystemCoordinatorTable.systemCoordinator(for:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA03AnyC0VySbs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA03AnyC0VySbs5NeverOGGMR) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #2 in SystemCoordinatorTable.systemCoordinator(for:)(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t getEnumTagSinglePayload for SystemCoordinatorTable.Storage.CoordinatorBox(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for SystemCoordinatorTable.Storage.CoordinatorBox(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t SpatialTemplateRole.output.getter@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = (*(a1 + 16))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t GroupActivitySuggestion.__allocating_init<A>(activity:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v5 = specialized GroupActivitySuggestion.init<A>(activity:)();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v5;
}

uint64_t GroupActivitySuggestion.init<A>(activity:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = specialized GroupActivitySuggestion.init<A>(activity:)();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v5;
}

uint64_t implicit closure #1 in GroupActivitySuggestion.init<A>(activity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    v12 = a3;
    swift_once();
    a3 = v12;
  }

  v8 = static ConversationManager.shared;
  v13[3] = a2;
  v13[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  v10 = (*(*v8 + 160))(v13);
  result = __swift_destroy_boxed_opaque_existential_0(v13);
  if (!v4)
  {
    *a4 = v10;
  }

  return result;
}

uint64_t GroupActivitySuggestion.deinit()
{
  AnyCancellable.cancel()();

  return v0;
}

uint64_t GroupActivitySuggestion.__deallocating_deinit()
{
  AnyCancellable.cancel()();

  return swift_deallocClassInstance();
}

uint64_t specialized GroupActivitySuggestion.init<A>(activity:)()
{
  type metadata accessor for AnyCancellable();
  tryLog<A>(_:_:function:line:)();
  v1 = v3;
  if (!v3)
  {
    swift_allocObject();
    v1 = AnyCancellable.init(_:)();
  }

  *(v0 + 16) = v1;
  return v0;
}

uint64_t GroupSessionProvider.uuid.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16[5] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v16[3] = *(v7 - 8);
  v16[4] = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v16 - v10;
  v17 = v3;
  dispatch thunk of Identifiable.id.getter();
  swift_getAssociatedConformanceWitness();
  static SharableObjectIdentifier.identifier<A, B>(ofType:with:)();
  (*(v9 + 8))(v11, AssociatedTypeWitness);
  v12 = v18;
  v13 = v19;
  v18 = (*(a2 + 48))(a1, a2);
  v19 = v14;

  MEMORY[0x1B27141F0](v12, v13);

  type metadata accessor for UUID();
  static SharableObjectIdentifier.identifier<A>(ofType:with:)();
}

uint64_t static GroupSessionProvider.providerIdentifier.getter(uint64_t a1)
{
  v1 = [objc_opt_self() processInfo];
  v2 = NSProcessInfo.stableAppIdentifier.getter();
  v4 = v3;

  if (v4)
  {
    goto LABEL_4;
  }

  v5 = [objc_opt_self() mainBundle];
  v6 = [v5 bundleIdentifier];

  if (v6)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_4:
    MEMORY[0x1B27141F0](46, 0xE100000000000000);
    v7 = _typeName(_:qualified:)();
    MEMORY[0x1B27141F0](v7);

    return v2;
  }

  _StringGuts.grow(_:)(147);
  MEMORY[0x1B27141F0](0xD000000000000090, 0x80000001AF01B4C0);
  v9 = _typeName(_:qualified:)();
  MEMORY[0x1B27141F0](v9);

  MEMORY[0x1B27141F0](46, 0xE100000000000000);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

double GroupSessionProvider.localMember.getter@<D0>(uint64_t a1@<X8>)
{
  return GroupSessionProvider.localMember.getter(a1);
}

{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t GroupSessionProviderTestingOverrides.default.unsafeMutableAddressor()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for GroupSessionProviderTestingOverrides(0);

  return __swift_project_value_buffer(v0, static GroupSessionProviderTestingOverrides.default);
}

uint64_t GroupSessionProviderTestingOverrides.groupSessionServiceProvider.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore8TestableVy15GroupActivities0D22SessionServiceProvider_pSgGMd, &_s14CopresenceCore8TestableVy15GroupActivities0D22SessionServiceProvider_pSgGMR);
  Testable.wrappedValue.getter();
  return v1;
}

uint64_t GroupSessionProvider.prewarm()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](GroupSessionProvider.prewarm(), 0, 0);
}

uint64_t GroupSessionProvider.prewarm()()
{
  v1 = specialized GroupSessionProvider.groupSessionService.getter();
  v3 = v2;
  *(v0 + 32) = v1;
  ObjectType = swift_getObjectType();
  v7 = (*(v3 + 48) + **(v3 + 48));
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = GroupSessionProvider.prewarm();

  return v7(ObjectType, v3);
}

{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = GroupSessionProvider.prewarm();
  }

  else
  {
    v2 = GroupSessionProvider.prewarm();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  swift_unknownObjectRelease();
  if (one-time initialization token for groupSessionProvider != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.groupSessionProvider);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1AEE80000, v2, v3, "Successfully prewarmed GroupSessionProvider", v4, 2u);
    MEMORY[0x1B2715BA0](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

{
  swift_unknownObjectRelease();
  if (one-time initialization token for groupSessionProvider != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.groupSessionProvider);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1AEE80000, v2, v3, "Failed to prewarm GroupSessionProvider", v4, 2u);
    MEMORY[0x1B2715BA0](v4, -1, -1);
  }

  swift_willThrow();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t GroupSessionProvider.join()(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x1EEE6DFA0](GroupSessionProvider.join(), 0, 0);
}

uint64_t GroupSessionProvider.join()()
{
  v1 = v0[6];
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (v2)
  {
    v3 = v1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = specialized GroupSessionProvider.groupSessionService.getter();
    v6 = v5;
    v0[10] = v4;
    ObjectType = swift_getObjectType();
    v21 = (*(v6 + 16) + **(v6 + 16));
    v8 = swift_task_alloc();
    v0[11] = v8;
    *v8 = v0;
    v8[1] = GroupSessionProvider.join();
    v9 = v0[5];
    v10 = v0[6];
    v11 = ObjectType;
    v12 = v6;
    v13 = v21;
  }

  else
  {
    v14 = v2;
    swift_unknownObjectRetain();
    v15 = specialized GroupSessionProvider.groupSessionService.getter();
    v17 = v16;
    v0[7] = v15;
    v18 = swift_getObjectType();
    v22 = (*(v17 + 24) + **(v17 + 24));
    v19 = swift_task_alloc();
    v0[8] = v19;
    *v19 = v0;
    v19[1] = GroupSessionProvider.join();
    v10 = v0[6];
    v9 = v14;
    v11 = v18;
    v12 = v17;
    v13 = v22;
  }

  return v13(v10, v9, v11, v12);
}

{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = GroupSessionProvider.join();
  }

  else
  {
    v2 = GroupSessionProvider.join();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (one-time initialization token for groupSessionProvider != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.groupSessionProvider);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1AEE80000, v2, v3, "Successfully started tracking GroupSessionProvider on join()", v4, 2u);
    MEMORY[0x1B2715BA0](v4, -1, -1);
  }

  v5 = v0[5];
  v6 = v0[4];

  (*(v5 + 64))(v6, v5);
  v0[3] = 1;
  CurrentValueSubject.send(_:)();

  v7 = v0[1];

  return v7();
}

{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = GroupSessionProvider.join();
  }

  else
  {
    v2 = GroupSessionProvider.join();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  swift_unknownObjectRelease();
  if (one-time initialization token for groupSessionProvider != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.groupSessionProvider);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1AEE80000, v2, v3, "Successfully started tracking GroupSessionProvider on join()", v4, 2u);
    MEMORY[0x1B2715BA0](v4, -1, -1);
  }

  v5 = v0[5];
  v6 = v0[4];

  (*(v5 + 64))(v6, v5);
  v0[3] = 1;
  CurrentValueSubject.send(_:)();

  v7 = v0[1];

  return v7();
}

{
  swift_unknownObjectRelease();
  v1 = *(v0 + 72);
  swift_unknownObjectRelease();
  if (one-time initialization token for groupSessionProvider != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.groupSessionProvider);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1AEE80000, v3, v4, "Failed to start tracking GroupSessionProvider on join()", v5, 2u);
    MEMORY[0x1B2715BA0](v5, -1, -1);
  }

  v6 = *(v0 + 40);
  v7 = *(v0 + 32);

  (*(v6 + 64))(v7, v6);
  *(v0 + 16) = v1;
  v8 = v1;
  CurrentValueSubject.send(_:)();

  outlined consume of GroupSession<A>.State<A>(*(v0 + 16));
  swift_willThrow();
  v9 = *(v0 + 8);

  return v9();
}

{
  v1 = *(v0 + 96);
  swift_unknownObjectRelease();
  if (one-time initialization token for groupSessionProvider != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.groupSessionProvider);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1AEE80000, v3, v4, "Failed to start tracking GroupSessionProvider on join()", v5, 2u);
    MEMORY[0x1B2715BA0](v5, -1, -1);
  }

  v6 = *(v0 + 40);
  v7 = *(v0 + 32);

  (*(v6 + 64))(v7, v6);
  *(v0 + 16) = v1;
  v8 = v1;
  CurrentValueSubject.send(_:)();

  outlined consume of GroupSession<A>.State<A>(*(v0 + 16));
  swift_willThrow();
  v9 = *(v0 + 8);

  return v9();
}

uint64_t GroupSessionProvider.leave()(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = type metadata accessor for UUID();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](GroupSessionProvider.leave(), 0, 0);
}

uint64_t GroupSessionProvider.leave()()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[4];
  v4 = specialized GroupSessionProvider.groupSessionService.getter();
  v6 = v5;
  v0[10] = v4;
  ObjectType = swift_getObjectType();
  GroupSessionProvider.uuid.getter(v3, v2, v1);
  v11 = (*(v6 + 32) + **(v6 + 32));
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = GroupSessionProvider.leave();
  v9 = v0[9];

  return v11(v9, ObjectType, v6);
}

{
  v2 = *v1;
  *(*v1 + 96) = v0;

  (*(v2[8] + 8))(v2[9], v2[7]);
  swift_unknownObjectRelease();
  if (v0)
  {
    v3 = GroupSessionProvider.leave();
  }

  else
  {
    v3 = GroupSessionProvider.leave();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  if (one-time initialization token for groupSessionProvider != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.groupSessionProvider);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1AEE80000, v2, v3, "Successfully left GroupSessionProvider", v4, 2u);
    MEMORY[0x1B2715BA0](v4, -1, -1);
  }

  v5 = v0[5];
  v6 = v0[4];

  (*(v5 + 64))(v6, v5);
  v0[3] = 0;
  CurrentValueSubject.send(_:)();

  v7 = v0[1];

  return v7();
}

{
  if (one-time initialization token for groupSessionProvider != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.groupSessionProvider);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1AEE80000, v2, v3, "Failed to leave GroupSessionProvider", v4, 2u);
    MEMORY[0x1B2715BA0](v4, -1, -1);
  }

  v5 = *(v0 + 96);
  v6 = *(v0 + 40);
  v7 = *(v0 + 32);

  (*(v6 + 64))(v7, v6);
  *(v0 + 16) = v5;
  v8 = v5;
  CurrentValueSubject.send(_:)();

  outlined consume of GroupSession<A>.State<A>(*(v0 + 16));
  swift_willThrow();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t GroupSessionProvider.session.getter(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x1EEE6DFA0](GroupSessionProvider.session.getter, 0, 0);
}

{
  v32 = v2;
  v3 = v2[3];
  if (v3)
  {
    swift_unknownObjectRetain();

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v4, v5))
    {
      v7 = v2[12];
      v6 = v2[13];
      v8 = v2[10];
      v9 = v2[8];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v31 = v11;
      *v10 = 136315394;
      v2[5] = v3;
      v13 = type metadata accessor for GroupSession(0, v7, v6, v12);
      v14 = >> prefix<A>(_:)((v2 + 5), v13);
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v31);

      *(v10 + 4) = v16;
      *(v10 + 12) = 2080;
      v2[6] = v8;
      v17 = >> prefix<A>(_:)((v2 + 6), v9);
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v31);

      *(v10 + 14) = v19;
      _os_log_impl(&dword_1AEE80000, v4, v5, "Observed GroupSession: %s on provider: %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v11, -1, -1);
      MEMORY[0x1B2715BA0](v10, -1, -1);
    }

    else
    {
    }
  }

  else
  {

    swift_unknownObjectRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = v2[10];
      v23 = v2[8];
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31 = v25;
      *v24 = 136315138;
      v2[4] = v22;
      v26 = >> prefix<A>(_:)((v2 + 4), v23);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v31);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_1AEE80000, v20, v21, "Provider %s returning nil for GroupSession", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1B2715BA0](v25, -1, -1);
      MEMORY[0x1B2715BA0](v24, -1, -1);
    }
  }

  v29 = v2[1];

  return v29(v3);
}

uint64_t GroupSessionProvider.session.getter()
{
  v25 = v0;
  if (one-time initialization token for groupSessionProvider != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[11] = __swift_project_value_buffer(v1, static Log.groupSessionProvider);
  swift_unknownObjectRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[10];
    v5 = v0[8];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v23[0] = v7;
    *v6 = 136315138;
    v0[7] = v4;
    v8 = >> prefix<A>(_:)((v0 + 7), v5);
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v23);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1AEE80000, v2, v3, "Provider %s starting to observe GroupSessions", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1B2715BA0](v7, -1, -1);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  GroupSessionProvider.sessions.getter(v0[8], v0[9], v21);
  v23[0] = v21[0];
  v23[1] = v21[1];
  v24 = v22;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[12] = AssociatedTypeWitness;
  v12 = *(swift_getAssociatedConformanceWitness() + 8);
  v0[13] = v12;
  v14 = type metadata accessor for GroupSession.Sessions(0, AssociatedTypeWitness, v12, v13);
  GroupSession.Sessions.makeAsyncIterator()(v14, v15, v0 + 2);

  swift_unknownObjectRelease();

  v16 = swift_task_alloc();
  v0[14] = v16;
  v18 = type metadata accessor for GroupSession.Sessions.Iterator(0, AssociatedTypeWitness, v12, v17);
  WitnessTable = swift_getWitnessTable();
  *v16 = v0;
  v16[1] = GroupSessionProvider.session.getter;

  return MEMORY[0x1EEE6D8E0](v0 + 3, 0, 0, v18, WitnessTable);
}

{

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](GroupSessionProvider.session.getter, 0, 0);
  }

  return result;
}

double GroupSessionProvider.sessions.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  if (one-time initialization token for groupSessionProvider != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.groupSessionProvider);
  swift_unknownObjectRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v27[0] = v12;
    *v11 = 136315138;
    *&v24 = v4;
    v13 = >> prefix<A>(_:)(&v24, a1);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v27);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1AEE80000, v9, v10, "Provider %s starting to observe on sessions stream for GroupSessions", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1B2715BA0](v12, -1, -1);
    MEMORY[0x1B2715BA0](v11, -1, -1);
  }

  type metadata accessor for OS_dispatch_queue();
  swift_unknownObjectRetain();
  v16 = static OS_dispatch_queue.main.getter();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  GroupSessionObserver.init<A>(for:queue:)(v4, v16, AssociatedTypeWitness, a1, a2, &v24);
  v22[0] = v24;
  v22[1] = v25;
  v23 = v26;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = type metadata accessor for GroupSessionObserver(0, AssociatedTypeWitness, *(AssociatedConformanceWitness + 8), v19);
  swift_getWitnessTable();
  _PublisherElements.init(_:)(v22, v20, v27);
  v24 = v27[0];
  v25 = v27[1];
  v26 = v28;
  *&result = GroupSession.Sessions.init(base:)(&v24, a3).n128_u64[0];
  return result;
}

uint64_t GroupSessionProvider.backgroundSessionCreationRequest.getter(uint64_t a1, uint64_t a2)
{
  v3[53] = a2;
  v3[54] = v2;
  v3[52] = a1;
  v4 = type metadata accessor for UUID();
  v3[55] = v4;
  v3[56] = *(v4 - 8);
  v3[57] = swift_task_alloc();
  v3[58] = type metadata accessor for LocalAccountMember(0);
  v3[59] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](GroupSessionProvider.backgroundSessionCreationRequest.getter, 0, 0);
}

uint64_t GroupSessionProvider.backgroundSessionCreationRequest.getter()
{
  v57 = v0;
  v52 = (v0 + 12);
  v53 = (v0 + 7);
  (*(v0[53] + 72))(v0[52]);
  CurrentValueSubject.value.getter();

  v54 = v0;
  v2 = v0[51];
  v3 = *(v2 + 56);
  v55 = MEMORY[0x1E69E7CC0];
  v56 = MEMORY[0x1E69E7CC0];
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & v3;
  v7 = (63 - v5) >> 6;

  v8 = 0;
  if (!v6)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v2 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];
      v13 = objc_opt_self();

      v1 = MEMORY[0x1B2714130](v11, v12);
      v14 = [v13 normalizedHandleWithDestinationID_];

      if (v14)
      {
        break;
      }

      if (!v6)
      {
        goto LABEL_6;
      }
    }

    MEMORY[0x1B27142A0](v15);
    if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v55 = v56;
  }

  while (v6);
  while (1)
  {
LABEL_6:
    v16 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_42;
    }

    if (v16 >= v7)
    {
      break;
    }

    v6 = *(v2 + 56 + 8 * v16);
    ++v8;
    if (v6)
    {
      v8 = v16;
      goto LABEL_4;
    }
  }

  v1 = v54;
  v17 = v54[53];
  v18 = v54[52];

  v54[60] = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8TUHandleC_SayAEGTt0g5Tf4g_n(v55);

  v19 = *(v17 + 80);
  v8 = v53;
  v19(v18, v17);
  if (!v54[10])
  {
LABEL_34:
    v28 = 0;
    v29 = 0;
    goto LABEL_38;
  }

  v20 = v54[53];
  v21 = v54[52];
  outlined init with take of Transferable(v53, (v54 + 2));
  v8 = v52;
  v19(v21, v20);
  if (!v54[15])
  {
LABEL_22:
    if (one-time initialization token for groupSessionProvider == -1)
    {
LABEL_23:
      v31 = type metadata accessor for Logger();
      __swift_project_value_buffer(v31, static Log.groupSessionProvider);
      outlined init with copy of Transferable(v1 + 16, v1 + 136);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v56 = v35;
        *v34 = 136315138;
        outlined init with copy of Transferable(v1 + 136, v1 + 176);
        outlined init with copy of Member?(v1 + 176, v1 + 216);
        if (*(v1 + 240))
        {
          outlined init with take of Transferable((v1 + 216), v1 + 256);
          outlined init with copy of Transferable(v1 + 256, v1 + 296);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities6Member_pMd, &_s15GroupActivities6Member_pMR);
          v36 = String.init<A>(reflecting:)();
          v38 = v37;
          __swift_destroy_boxed_opaque_existential_0((v1 + 256));
        }

        else
        {
          v38 = 0xE300000000000000;
          v36 = 7104878;
        }

        outlined destroy of Member?(v1 + 176);
        __swift_destroy_boxed_opaque_existential_0((v1 + 136));
        v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v56);

        *(v34 + 4) = v47;
        _os_log_impl(&dword_1AEE80000, v32, v33, "LocalMember is an unknown type: %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v35);
        MEMORY[0x1B2715BA0](v35, -1, -1);
        MEMORY[0x1B2715BA0](v34, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0((v1 + 136));
      }

      __swift_destroy_boxed_opaque_existential_0((v1 + 16));
      goto LABEL_34;
    }

LABEL_42:
    swift_once();
    goto LABEL_23;
  }

  outlined init with copy of Member?(v52, (v54 + 42));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities6Member_pMd, &_s15GroupActivities6Member_pMR);
  if (swift_dynamicCast())
  {
    v23 = v54[47];
    v22 = v54[48];
    v24 = objc_opt_self();
    v25 = MEMORY[0x1B2714130](v23, v22);
    v26 = [v24 0x1E7A4C954];

    if (v26)
    {

      v27 = objc_allocWithZone(type metadata accessor for AddressableMember());
      v28 = AddressableMember.init(handle:)();
      __swift_destroy_boxed_opaque_existential_0(v54 + 2);
      v29 = lazy protocol witness table accessor for type AccountMember and conformance AccountMember(&lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember, MEMORY[0x1E6997538], MEMORY[0x1E6997530]);
    }

    else
    {
      if (one-time initialization token for groupSessionProvider != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      __swift_project_value_buffer(v39, static Log.groupSessionProvider);

      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v56 = v43;
        *v42 = 136315138;
        v54[49] = v23;
        v54[50] = v22;
        v44 = String.init<A>(reflecting:)();
        v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v56);

        *(v42 + 4) = v46;
        _os_log_impl(&dword_1AEE80000, v40, v41, "Failed to get tuHandle from AddressableMember %s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v43);
        MEMORY[0x1B2715BA0](v43, -1, -1);
        MEMORY[0x1B2715BA0](v42, -1, -1);
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_0(v54 + 2);
      v28 = 0;
      v29 = 0;
    }

    goto LABEL_37;
  }

  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v54 + 42);
    goto LABEL_22;
  }

  v30 = v54[59];
  v28 = [objc_allocWithZone(type metadata accessor for AccountMember()) init];
  __swift_destroy_boxed_opaque_existential_0(v54 + 2);
  v29 = lazy protocol witness table accessor for type AccountMember and conformance AccountMember(&lazy protocol witness table cache variable for type AccountMember and conformance AccountMember, MEMORY[0x1E6997500], MEMORY[0x1E69974F8]);
  outlined destroy of LocalAccountMember(v30, type metadata accessor for LocalAccountMember);
LABEL_37:
  __swift_destroy_boxed_opaque_existential_0(v54 + 42);
LABEL_38:
  outlined destroy of Member?(v8);
  *(v1 + 488) = v28;
  *(v1 + 496) = v29;
  GroupSessionProvider.uuid.getter(*(v1 + 416), *(v1 + 424), *(v1 + 456));
  v48 = swift_task_alloc();
  *(v1 + 504) = v48;
  *v48 = v1;
  v48[1] = GroupSessionProvider.backgroundSessionCreationRequest.getter;
  v49 = *(v1 + 424);
  v50 = *(v1 + 416);

  return GroupSessionProvider.activityCreateSessionRequest.getter(v50, v49);
}

{
  v1 = v0[53];
  v2 = v0[52];
  (*(v1 + 88))(v2, v1);
  (*(v1 + 96))(v2, v1);
  v3 = objc_allocWithZone(type metadata accessor for BackgroundSessionCreationRequest());
  v4 = BackgroundSessionCreationRequest.init(id:activitySessionRequest:members:localMember:isCrossAccount:requiresParticipantHandles:)();

  v5 = v0[1];

  return v5(v4);
}

{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t GroupSessionProvider.backgroundSessionCreationRequest.getter(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 512) = v1;

  if (v1)
  {
    (*(v4[56] + 8))(v4[57], v4[55]);

    v5 = GroupSessionProvider.backgroundSessionCreationRequest.getter;
  }

  else
  {
    v4[65] = a1;
    v5 = GroupSessionProvider.backgroundSessionCreationRequest.getter;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t GroupSessionProvider.activityCreateSessionRequest.getter(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[5] = AssociatedTypeWitness;
  v3[6] = *(AssociatedTypeWitness - 8);
  v3[7] = swift_task_alloc();
  type metadata accessor for AnyGroupActivity(0);
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](GroupSessionProvider.activityCreateSessionRequest.getter, 0, 0);
}

uint64_t GroupSessionProvider.activityCreateSessionRequest.getter()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  (*(v0[3] + 56))(v0[2], v0[3]);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  GroupActivity.eraseToAnyGroupActivity()(v3, *(AssociatedConformanceWitness + 8), v1);
  (*(v4 + 8))(v2, v3);
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = GroupSessionProvider.activityCreateSessionRequest.getter;

  return AnyGroupActivity.tuConversationActivityCreateSessionRequest.getter();
}

{

  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1(v2);
}

uint64_t GroupSessionProvider.activityCreateSessionRequest.getter(uint64_t a1)
{
  v2 = *(*v1 + 64);
  *(*v1 + 80) = a1;

  outlined destroy of LocalAccountMember(v2, type metadata accessor for AnyGroupActivity);

  return MEMORY[0x1EEE6DFA0](GroupSessionProvider.activityCreateSessionRequest.getter, 0, 0);
}

uint64_t one-time initialization function for default()
{
  v0 = type metadata accessor for GroupSessionProviderTestingOverrides(0);
  __swift_allocate_value_buffer(v0, static GroupSessionProviderTestingOverrides.default);
  __swift_project_value_buffer(v0, static GroupSessionProviderTestingOverrides.default);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A22SessionServiceProvider_pSgMd, &_s15GroupActivities0A22SessionServiceProvider_pSgMR);
  return Testable.init(wrappedValue:)();
}

uint64_t static GroupSessionProviderTestingOverrides.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for GroupSessionProviderTestingOverrides(0);
  v3 = __swift_project_value_buffer(v2, static GroupSessionProviderTestingOverrides.default);
  swift_beginAccess();
  return outlined init with copy of GroupSessionProviderTestingOverrides(v3, a1);
}

uint64_t static GroupSessionProviderTestingOverrides.default.setter(uint64_t a1)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for GroupSessionProviderTestingOverrides(0);
  v3 = __swift_project_value_buffer(v2, static GroupSessionProviderTestingOverrides.default);
  swift_beginAccess();
  outlined assign with copy of GroupSessionProviderTestingOverrides(a1, v3);
  swift_endAccess();
  return outlined destroy of LocalAccountMember(a1, type metadata accessor for GroupSessionProviderTestingOverrides);
}

uint64_t (*static GroupSessionProviderTestingOverrides.default.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for GroupSessionProviderTestingOverrides(0);
  __swift_project_value_buffer(v1, static GroupSessionProviderTestingOverrides.default);
  swift_beginAccess();
  return GroupSession.GroupSessionPlaybackSyncerLink.shouldRequestCatchup.modify;
}

uint64_t key path getter for static GroupSessionProviderTestingOverrides.default : GroupSessionProviderTestingOverrides.Type@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for GroupSessionProviderTestingOverrides(0);
  v3 = __swift_project_value_buffer(v2, static GroupSessionProviderTestingOverrides.default);
  swift_beginAccess();
  return outlined init with copy of GroupSessionProviderTestingOverrides(v3, a1);
}

uint64_t key path setter for static GroupSessionProviderTestingOverrides.default : GroupSessionProviderTestingOverrides.Type(uint64_t a1)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for GroupSessionProviderTestingOverrides(0);
  v3 = __swift_project_value_buffer(v2, static GroupSessionProviderTestingOverrides.default);
  swift_beginAccess();
  outlined assign with copy of GroupSessionProviderTestingOverrides(a1, v3);
  return swift_endAccess();
}

uint64_t key path setter for GroupSessionProviderTestingOverrides.groupSessionServiceProvider : GroupSessionProviderTestingOverrides(__int128 *a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore8TestableVy15GroupActivities0D22SessionServiceProvider_pSgGMd, &_s14CopresenceCore8TestableVy15GroupActivities0D22SessionServiceProvider_pSgGMR);
  return Testable.wrappedValue.setter();
}

void (*GroupSessionProviderTestingOverrides.groupSessionServiceProvider.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore8TestableVy15GroupActivities0D22SessionServiceProvider_pSgGMd, &_s14CopresenceCore8TestableVy15GroupActivities0D22SessionServiceProvider_pSgGMR);
  *(v3 + 32) = Testable.wrappedValue.modify();
  return Dictionary.subscript.modifyspecialized ;
}

uint64_t specialized GroupSessionProvider.groupSessionService.getter()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for GroupSessionProviderTestingOverrides(0);
  __swift_project_value_buffer(v0, static GroupSessionProviderTestingOverrides.default);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore8TestableVy15GroupActivities0D22SessionServiceProvider_pSgGMd, &_s14CopresenceCore8TestableVy15GroupActivities0D22SessionServiceProvider_pSgGMR);
  Testable.wrappedValue.getter();
  v1 = v3;
  if (v3)
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v1 = static BackgroundGroupSessionManager.shared;
  }

  return v1;
}

uint64_t type metadata accessor for GroupSessionProviderTestingOverrides(uint64_t a1)
{
  result = type metadata singleton initialization cache for GroupSessionProviderTestingOverrides;
  if (!type metadata singleton initialization cache for GroupSessionProviderTestingOverrides)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined destroy of Member?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities6Member_pSgMd, &_s15GroupActivities6Member_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of Member?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities6Member_pSgMd, &_s15GroupActivities6Member_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type AccountMember and conformance AccountMember(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with copy of GroupSessionProviderTestingOverrides(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupSessionProviderTestingOverrides(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with copy of GroupSessionProviderTestingOverrides(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupSessionProviderTestingOverrides(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of LocalAccountMember(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_15GroupActivities0A20SessionProviderStateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void type metadata completion function for GroupSessionProviderTestingOverrides(uint64_t a1)
{
  type metadata accessor for Testable<GroupSessionServiceProvider?>(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for Testable<GroupSessionServiceProvider?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Testable<GroupSessionServiceProvider?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15GroupActivities0A22SessionServiceProvider_pSgMd, &_s15GroupActivities0A22SessionServiceProvider_pSgMR);
    v1 = type metadata accessor for Testable();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Testable<GroupSessionServiceProvider?>);
    }
  }
}

uint64_t dispatch thunk of ErrorRecoveryGroupSessionProvider.fetchMembershipUpdate()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return v7(a1, a2);
}

uint64_t static Credential.build(from:)(void *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Token.accountID.getter();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Token.token.getter();
  type metadata accessor for Credential.Builder();
  swift_allocObject();
  Credential.Builder.init(tenantName:requestorID:accessToken:)();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Token.expirationDate.getter();
  Credential.Builder.setExpirationDate(_:)();

  (*(v3 + 8))(v5, v2);
  Credential.Builder.build()();
}

uint64_t GroupSessionObserver.init<A>(for:queue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v51 = a3;
  v54 = a2;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v53 = &v47[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v47[-v15];
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v47[-v17];
  GroupSessionProvider.uuid.getter(a4, a5, &v47[-v17]);
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.client);
  v20 = *(v11 + 16);
  v52 = v18;
  v20(v16, v18, v10);
  swift_unknownObjectRetain();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v50 = a6;
    v24 = v23;
    v49 = swift_slowAlloc();
    v56 = v49;
    *v24 = 136315650;
    v25 = _typeName(_:qualified:)();
    v48 = v22;
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v56);
    v51 = a5;
    v28 = v27;

    *(v24 + 4) = v28;
    *(v24 + 12) = 2080;
    v55 = a1;
    v29 = >> prefix<A>(_:)(&v55, a4);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v56);

    *(v24 + 14) = v31;
    *(v24 + 22) = 2080;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    (*(v11 + 8))(v16, v10);
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v56);

    *(v24 + 24) = v35;
    _os_log_impl(&dword_1AEE80000, v21, v48, "Initialized observer for %s for provider: %s a/k/a ID: %s", v24, 0x20u);
    v36 = v49;
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v36, -1, -1);
    v37 = v24;
    a6 = v50;
    MEMORY[0x1B2715BA0](v37, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v16, v10);
  }

  v38 = specialized GroupSessionProvider.groupSessionService.getter();
  v40 = v39;
  swift_unknownObjectRelease();
  v41 = *(v40 + 8);
  v42 = *(v11 + 32);
  v43 = v53;
  v42(v53, v52, v10);
  v44 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v45 = swift_allocObject();
  result = v42(v45 + v44, v43, v10);
  *a6 = v54;
  a6[1] = v38;
  a6[2] = v41;
  a6[3] = partial apply for closure #1 in GroupSessionObserver.init<A>(for:queue:);
  a6[4] = v45;
  return result;
}

void GroupSessionObserver.init(for:queue:provider:filter:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
}

uint64_t GroupSessionObserver.register(activitySession:publishQueue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = type metadata accessor for UUID();
  v7 = *(v45 - 1);
  MEMORY[0x1EEE9AC00](v45);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AnyGroupActivity(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for OSSignpostID();
  v46 = *(v13 - 8);
  v47 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v48 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v3 + 16);
  v57 = 0;
  ObjectType = swift_getObjectType();
  v17 = (*(v15 + 48))(ObjectType, v15);
  v18 = direct field offset for GroupSession.id;
  v19 = *(a3 + 24);
  v52 = *(a3 + 16);
  v53 = v19;
  v54 = a1;
  v55 = a2;
  v50 = &v57;
  v20 = *(*v17 + 160);
  v22 = type metadata accessor for GroupSession(0, v52, v19, v21);
  v20(a1 + v18, partial apply for implicit closure #1 in GroupSessionObserver.register(activitySession:publishQueue:), v51, partial apply for closure #1 in GroupSessionObserver.register(activitySession:publishQueue:), v49, v22, &protocol witness table for GroupSession<A>);

  v23 = v57;
  if (v57)
  {
    v24 = one-time initialization token for groupSession;

    if (v24 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for OSSignposter();
    v44 = __swift_project_value_buffer(v25, static Signposts.groupSession);
    MEMORY[0x1EEE9AC00](v44);
    *(&v43 - 2) = v10;
    v26 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnyGroupActivity and conformance AnyGroupActivity, type metadata accessor for AnyGroupActivity, &protocol conformance descriptor for AnyGroupActivity);
    *(&v43 - 1) = v26;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v43 - 2) = v10;
    *(&v43 - 1) = v26;
    swift_getKeyPath();
    static Published.subscript.getter();

    v28 = v45;
    (*(v7 + 16))(v9, v12 + *(v10 + 28), v45);
    v29 = outlined destroy of AnyGroupActivity(v12);
    UUID.uint64Value.getter(v29);
    (*(v7 + 8))(v9, v28);
    v30 = v48;
    OSSignpostID.init(_:)();

    v31 = OSSignposter.logHandle.getter();
    v32 = static os_signpost_type_t.event.getter();

    if (OS_os_log.signpostsEnabled.getter())
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v45 = v34;
      LODWORD(v44) = v32;
      v56 = v34;
      *v33 = 136315138;
      MEMORY[0x1EEE9AC00](v34);
      *(&v43 - 2) = v10;
      *(&v43 - 1) = v26;
      v35 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v35);
      *(&v43 - 2) = v10;
      *(&v43 - 1) = v26;
      swift_getKeyPath();
      static Published.subscript.getter();

      v36 = *v12;
      v37 = v12[1];

      outlined destroy of AnyGroupActivity(v12);
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v56);

      *(v33 + 4) = v38;
      v39 = v48;
      v40 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_1AEE80000, v31, v44, v40, "group-session-received", "%s", v33, 0xCu);
      v41 = v45;
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x1B2715BA0](v41, -1, -1);
      MEMORY[0x1B2715BA0](v33, -1, -1);

      (*(v46 + 8))(v39, v47);
    }

    else
    {

      (*(v46 + 8))(v30, v47);
    }
  }

  return v23;
}

uint64_t implicit closure #1 in GroupSessionObserver.register(activitySession:publishQueue:)(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for GroupSession(0, a3, a4, a4);

  v6 = specialized GroupSession.__allocating_init(activitySession:publishQueue:)(a1, a2);

  return v6;
}

uint64_t closure #6 in GroupSessionObserver.receive<A>(subscriber:)(void *a1, uint64_t a2)
{
  v2 = (*(a2 + 24))(*a1);
  if ((v2 & 1) == 0)
  {
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.client);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315138;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionCyAA03AnyA8ActivityVGMd, &_s15GroupActivities0A7SessionCyAA03AnyA8ActivityVGMR);
      v8 = String.init<A>(reflecting:)();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v12);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_1AEE80000, v4, v5, "activity session %s is filtered for observer. Dropping", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x1B2715BA0](v7, -1, -1);
      MEMORY[0x1B2715BA0](v6, -1, -1);
    }
  }

  return v2 & 1;
}

void closure #8 in GroupSessionObserver.receive<A>(subscriber:)(uint64_t *a1)
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.client);

  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315138;

    v5 = GroupSession.description.getter();
    v7 = v6;

    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, &v10);

    *(v3 + 4) = v8;
    _os_log_impl(&dword_1AEE80000, oslog, v2, "Observer receiving activity session: %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x1B2715BA0](v4, -1, -1);
    MEMORY[0x1B2715BA0](v3, -1, -1);
  }

  else
  {
  }
}

void closure #9 in GroupSessionObserver.receive<A>(subscriber:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.client);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    v6 = _typeName(_:qualified:)();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1AEE80000, oslog, v3, "Received completion on observer for activity type: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B2715BA0](v5, -1, -1);
    MEMORY[0x1B2715BA0](v4, -1, -1);
  }
}

uint64_t partial apply for closure #1 in GroupSessionObserver.init<A>(for:queue:)(uint64_t a1)
{
  type metadata accessor for UUID();

  return static UUID.== infix(_:_:)();
}

uint64_t partial apply for closure #7 in GroupSessionObserver.receive<A>(subscriber:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = v3[11];
  v7 = type metadata accessor for GroupSessionObserver(0, v3[2], v3[4], a2);
  result = GroupSessionObserver.register(activitySession:publishQueue:)(v5, v6, v7);
  *a3 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GroupSessionObserver(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for GroupSessionObserver(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in GroupSessionObserver.register(activitySession:publishQueue:)(uint64_t a1)
{
  **(v1 + 16) = a1;
}

uint64_t outlined destroy of AnyGroupActivity(uint64_t a1)
{
  v2 = type metadata accessor for AnyGroupActivity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t GroupActivity.init(activity:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Optional();
  v31 = *(v8 - 8);
  v32 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v33 = &v29 - v9;
  v10 = type metadata accessor for AnyGroupActivity(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(a2 - 8);
  v14 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v11);
  if ((*(a3 + 48))(*a1, a1[1], *(a1 + *(v10 + 32)), *(a1 + *(v10 + 32) + 8), a2, a3))
  {
    v30 = a4;
    v15 = swift_conformsToProtocol2();
    if (v15)
    {
      v16 = v15;
      MEMORY[0x1EEE9AC00](v15);
      outlined init with copy of AnyGroupActivity(a1, v13);
      v17 = v37;
      (*(v16 + 8))(v13, a2, v16);
      if (v17)
      {
        return outlined destroy of AnyGroupActivity(a1, type metadata accessor for AnyGroupActivity);
      }

      else
      {
        v24 = v33;
        v25 = swift_dynamicCast();
        v26 = v34;
        v27 = *(v34 + 56);
        if (v25)
        {
          v27(v24, 0, 1, a2);
          outlined destroy of AnyGroupActivity(a1, type metadata accessor for AnyGroupActivity);
          return (*(v26 + 32))(v30, v24, a2);
        }

        else
        {
          v27(v24, 1, 1, a2);
          (*(v31 + 8))(v24, v32);
          v35 = 0;
          v36 = 0xE000000000000000;
          _StringGuts.grow(_:)(31);

          v35 = 0xD00000000000001DLL;
          v36 = 0x80000001AF01AEE0;
          swift_getMetatypeMetadata();
          v28 = _typeName(_:qualified:)();
          MEMORY[0x1B27141F0](v28);

          result = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }
      }
    }

    else
    {
      type metadata accessor for PropertyListDecoder();
      swift_allocObject();
      PropertyListDecoder.init()();
      v20 = (a1 + *(v10 + 24));
      v21 = *v20;
      v22 = v20[1];
      outlined copy of Data._Representation(*v20, v22);
      v23 = v37;
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
      outlined destroy of AnyGroupActivity(a1, type metadata accessor for AnyGroupActivity);
      outlined consume of Data._Representation(v21, v22);

      if (!v23)
      {
        return (*(v34 + 32))(v30, &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
      }
    }
  }

  else
  {
    lazy protocol witness table accessor for type GroupActivityError and conformance GroupActivityError();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();
    return outlined destroy of AnyGroupActivity(a1, type metadata accessor for AnyGroupActivity);
  }

  return result;
}

uint64_t outlined init with copy of AnyGroupActivity(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyGroupActivity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t GroupActivity.eraseToAnyGroupActivity()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v47 = a3;
  v48 = type metadata accessor for AnyGroupActivity.MetadataProvider(0);
  v7 = MEMORY[0x1EEE9AC00](v48);
  v9 = (&v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a1 - 8);
  v11 = MEMORY[0x1EEE9AC00](v7);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v46 - v14;
  v58 = type metadata accessor for UUID();
  v50 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v17 = (&v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v10 + 16);
  v18(v15, v4, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities012IdentifiableA8Activity_pMd, &_s15GroupActivities012IdentifiableA8Activity_pMR);
  v19 = swift_dynamicCast();
  v49 = v17;
  if (v19)
  {
    outlined init with take of Transferable(&v52, v55);
    v46 = v18;
    v20 = v13;
    v21 = a2;
    v22 = v4;
    v23 = v9;
    v24 = v56;
    v25 = v57;
    __swift_project_boxed_opaque_existential_1(v55, v56);
    v26 = v25;
    v9 = v23;
    v4 = v22;
    a2 = v21;
    v13 = v20;
    v18 = v46;
    IdentifiableGroupActivity.uuid.getter(v24, v26, v17);
    __swift_destroy_boxed_opaque_existential_0(v55);
  }

  else
  {
    v54 = 0;
    v52 = 0u;
    v53 = 0u;
    outlined destroy of NSObject?(&v52, &_s15GroupActivities012IdentifiableA8Activity_pSgMd, &_s15GroupActivities012IdentifiableA8Activity_pSgMR);
    UUID.init()();
  }

  v18(v13, v4, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities09AnyStaticA8Activity_pMd, &_s15GroupActivities09AnyStaticA8Activity_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of Transferable(&v52, v55);
    __swift_project_boxed_opaque_existential_1(v55, v56);
    dispatch thunk of Identifiable.id.getter();
    v27 = *(&v52 + 1);
    v28 = v52;
    __swift_destroy_boxed_opaque_existential_0(v55);
  }

  else
  {
    v54 = 0;
    v52 = 0u;
    v53 = 0u;
    outlined destroy of NSObject?(&v52, &_s15GroupActivities09AnyStaticA8Activity_pSgMd, &_s15GroupActivities09AnyStaticA8Activity_pSgMR);
    v28 = 0;
    v27 = 0;
  }

  v29 = (*(a2 + 24))(a1, a2);
  v31 = v30;
  *v9 = GroupActivity.awaitMetadataValue()(a1, a2);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v32 = v51;
  v33 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v32)
  {

    outlined destroy of AnyGroupActivity(v9, type metadata accessor for AnyGroupActivity.MetadataProvider);
    return (*(v50 + 8))(v49, v58);
  }

  else
  {
    v36 = v33;
    v37 = v34;

    v38 = type metadata accessor for AnyGroupActivity(0);
    v39 = v38[7];
    v40 = *(v50 + 32);
    v51 = v27;
    v41 = v28;
    v42 = v47;
    v40(v47 + v39, v49, v58);
    *v42 = v29;
    v42[1] = v31;
    result = outlined init with take of AnyGroupActivity.MetadataProvider(v9, v42 + v38[5]);
    v43 = (v42 + v38[6]);
    *v43 = v36;
    v43[1] = v37;
    v44 = (v42 + v38[8]);
    v45 = v51;
    *v44 = v41;
    v44[1] = v45;
  }

  return result;
}

uint64_t outlined destroy of AnyGroupActivity(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of AnyGroupActivity.MetadataProvider(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyGroupActivity.MetadataProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::Int GroupActivityError.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int GroupActivityActivationResult.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](v1);
  return Hasher._finalize()();
}

uint64_t static GroupActivity.activityIdentifier.getter(uint64_t a1)
{
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    MEMORY[0x1B27141F0](46, 0xE100000000000000);
    v4 = _typeName(_:qualified:)();
    MEMORY[0x1B27141F0](v4);

    return v3;
  }

  else
  {
    _StringGuts.grow(_:)(149);
    MEMORY[0x1B27141F0](0xD000000000000092, 0x80000001AF01B580);
    v6 = _typeName(_:qualified:)();
    MEMORY[0x1B27141F0](v6);

    MEMORY[0x1B27141F0](46, 0xE100000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t GroupActivity.prepareForActivation(completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v53 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v52 = &v43 - v10;
  v11 = type metadata accessor for Optional();
  v48 = *(v11 - 8);
  v49 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v43 - v13;
  v15 = *(a3 - 8);
  v16 = MEMORY[0x1EEE9AC00](v12);
  v50 = v17;
  v51 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v43 - v18;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Log.default);
  v21 = *(v15 + 16);
  v21(v19, v4, a3);
  v22 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v47))
  {
    v23 = swift_slowAlloc();
    v46 = a2;
    v24 = v23;
    v44 = swift_slowAlloc();
    v54 = v44;
    *v24 = 136315138;
    v21(v14, v19, a3);
    (*(v15 + 56))(v14, 0, 1, a3);
    v25 = >> prefix<A>(_:)(v14, a3);
    v45 = v5;
    v26 = a4;
    v27 = v25;
    v43 = v21;
    v29 = v28;
    (*(v48 + 8))(v14, v49);
    (*(v15 + 8))(v19, a3);
    v30 = v27;
    a4 = v26;
    v5 = v45;
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v29, &v54);

    *(v24 + 4) = v31;
    _os_log_impl(&dword_1AEE80000, v22, v47, "Application called syncronous activate SPI on %s", v24, 0xCu);
    v32 = v44;
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x1B2715BA0](v32, -1, -1);
    v33 = v24;
    a2 = v46;
    MEMORY[0x1B2715BA0](v33, -1, -1);

    v34 = v43;
  }

  else
  {

    (*(v15 + 8))(v19, a3);
    v34 = v21;
  }

  v35 = type metadata accessor for TaskPriority();
  v36 = v52;
  (*(*(v35 - 8) + 56))(v52, 1, 1, v35);
  v37 = v51;
  v34(v51, v5, a3);
  v38 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v39 = (v50 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  *(v40 + 2) = 0;
  *(v40 + 3) = 0;
  *(v40 + 4) = a3;
  *(v40 + 5) = a4;
  (*(v15 + 32))(&v40[v38], v37, a3);
  v41 = &v40[v39];
  *v41 = v53;
  v41[1] = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v36, &async function pointer to partial apply for closure #1 in GroupActivity.prepareForActivation(completionHandler:), v40);
}

uint64_t closure #1 in GroupActivity.prepareForActivation(completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a5;
  v8[3] = a6;
  v11 = swift_task_alloc();
  v8[4] = v11;
  *v11 = v8;
  v11[1] = closure #1 in GroupActivity.prepareForActivation(completionHandler:);

  return GroupActivity.prepareForActivation()((v8 + 5), a7, a8);
}

uint64_t closure #1 in GroupActivity.prepareForActivation(completionHandler:)()
{

  return MEMORY[0x1EEE6DFA0](closure #1 in GroupActivity.prepareForActivation(completionHandler:), 0, 0);
}

{
  v5 = v0;
  v1 = *(v0 + 16);
  v4 = *(v0 + 40);
  v1(&v4);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t GroupActivity.prepareForActivation()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = xmmword_1AF00EBD0;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0;
  v7 = swift_task_alloc();
  *(v3 + 88) = v7;
  *v7 = v3;
  v7[1] = GroupActivity.prepareForActivation();

  return GroupActivity.prepareForActivation(options:)(a1, v3 + 16, a2, a3);
}

uint64_t GroupActivity.prepareForActivation()()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t GroupActivity.prepareForActivation(options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 176) = a4;
  *(v5 + 184) = v4;
  *(v5 + 160) = a1;
  *(v5 + 168) = a3;
  v8 = type metadata accessor for Optional();
  *(v5 + 192) = v8;
  *(v5 + 200) = *(v8 - 8);
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = *(a3 - 8);
  *(v5 + 224) = swift_task_alloc();
  v9 = *(a2 + 48);
  *(v5 + 48) = *(a2 + 32);
  *(v5 + 64) = v9;
  *(v5 + 80) = *(a2 + 64);
  v10 = *(a2 + 16);
  *(v5 + 16) = *a2;
  *(v5 + 32) = v10;

  return MEMORY[0x1EEE6DFA0](GroupActivity.prepareForActivation(options:), 0, 0);
}

uint64_t GroupActivity.prepareForActivation(options:)()
{
  v36 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 184);
  v4 = *(v0 + 168);
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.default);
  v6 = *(v2 + 16);
  v6(v1, v3, v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v0 + 216);
  v10 = *(v0 + 224);
  if (v9)
  {
    v34 = v8;
    v12 = *(v0 + 200);
    v13 = *(v0 + 208);
    v31 = *(v0 + 192);
    v14 = *(v0 + 168);
    v15 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v35 = v32;
    *v15 = 136315138;
    v6(v13, v10, v14);
    (*(v11 + 56))(v13, 0, 1, v14);
    v16 = >> prefix<A>(_:)(v13, v14);
    v18 = v17;
    (*(v12 + 8))(v13, v31);
    (*(v11 + 8))(v10, v14);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v35);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_1AEE80000, v7, v34, "Client did call prepare for activation %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x1B2715BA0](v32, -1, -1);
    MEMORY[0x1B2715BA0](v15, -1, -1);
  }

  else
  {
    v20 = *(v0 + 168);

    (*(v11 + 8))(v10, v20);
  }

  v21 = specialized GroupActivity.provider.getter(*(v0 + 168));
  v23 = v22;
  *(v0 + 232) = v21;
  ObjectType = swift_getObjectType();
  v25 = *(v0 + 16);
  *(v0 + 104) = *(v0 + 32);
  v26 = *(v0 + 64);
  *(v0 + 120) = *(v0 + 48);
  *(v0 + 136) = v26;
  *(v0 + 152) = *(v0 + 80);
  *(v0 + 88) = v25;
  v27 = *(v23 + 56);
  swift_unknownObjectRetain();
  v33 = (v27 + *v27);
  v28 = swift_task_alloc();
  *(v0 + 240) = v28;
  *v28 = v0;
  v28[1] = GroupActivity.prepareForActivation(options:);
  v29 = *(v0 + 160);

  return v33(v29, v0 + 88, ObjectType, v23);
}

{
  v3 = *v0;

  swift_unknownObjectRelease();

  v1 = *(v3 + 8);

  return v1();
}

Swift::Void __swiftcall GroupActivity.activate()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v33 = v30 - v7;
  v8 = type metadata accessor for Optional();
  v31 = *(v8 - 8);
  v32 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v30 - v10;
  v12 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Log.default);
  v16 = *(v12 + 16);
  v16(v14, v2, v5);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v30[0] = v4;
    v20 = v19;
    v21 = swift_slowAlloc();
    v30[1] = v3;
    v22 = v21;
    v34 = v21;
    *v20 = 136315138;
    v16(v11, v14, v5);
    (*(v12 + 56))(v11, 0, 1, v5);
    v23 = >> prefix<A>(_:)(v11, v5);
    v25 = v24;
    (*(v31 + 8))(v11, v32);
    (*(v12 + 8))(v14, v5);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v34);

    *(v20 + 4) = v26;
    _os_log_impl(&dword_1AEE80000, v17, v18, "Application called syncronous activate SPI on %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x1B2715BA0](v22, -1, -1);
    v27 = v20;
    v4 = v30[0];
    MEMORY[0x1B2715BA0](v27, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v14, v5);
  }

  v28 = type metadata accessor for UUID();
  v29 = v33;
  (*(*(v28 - 8) + 56))(v33, 1, 1, v28);
  GroupActivity.activate(onConversationWithUUID:)(v29, v5, v4);
  outlined destroy of NSObject?(v29, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

uint64_t GroupActivity.activate(onConversationWithUUID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v103 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v76 - v6;
  v8 = type metadata accessor for Optional();
  v95 = *(v8 - 8);
  v96 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v94 = &v76 - v10;
  v104 = a2;
  v11 = *(a2 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v101 = v13;
  v102 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v97 = &v76 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v99 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v100 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v93 = &v76 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v76 - v21;
  v98 = v23;
  MEMORY[0x1EEE9AC00](v20);
  v25 = &v76 - v24;
  v26 = type metadata accessor for UUID();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v90 = &v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v91 = &v76 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v76 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v76 - v35;
  outlined init with copy of UUID?(a1, v25);
  v92 = *(v27 + 48);
  if (v92(v25, 1, v26) == 1)
  {
    outlined destroy of NSObject?(v25, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v37 = v104;
  }

  else
  {
    v86 = v22;
    v88 = a1;
    v89 = v7;
    v38 = *(v27 + 32);
    v82 = v27 + 32;
    v81 = v38;
    v38(v36, v25, v26);
    v39 = v36;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static Log.default);
    v41 = *(v27 + 16);
    v87 = v34;
    v83 = v41;
    v41(v34, v36, v26);
    v42 = *(v11 + 16);
    v43 = v97;
    v37 = v104;
    v85 = v11 + 16;
    v84 = v42;
    v42(v97, v105, v104);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v78 = v45;
      v79 = v44;
      v46 = v11;
      v80 = v39;
      v47 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v106[0] = v76;
      v77 = v47;
      *v47 = 136315394;
      v48 = v86;
      v49 = v87;
      v50 = v83;
      v83(v86, v87, v26);
      (*(v27 + 56))(v48, 0, 1, v26);
      v51 = v93;
      outlined init with copy of UUID?(v48, v93);
      if (v92(v51, 1, v26) == 1)
      {
        v52 = 0xE300000000000000;
        v53 = 7104878;
      }

      else
      {
        v55 = v91;
        v81(v91, v51, v26);
        v50(v90, v55, v26);
        v53 = String.init<A>(reflecting:)();
        v52 = v56;
        (*(v27 + 8))(v55, v26);
      }

      v11 = v46;
      outlined destroy of NSObject?(v48, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v57 = *(v27 + 8);
      v57(v49, v26);
      v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v52, v106);

      v59 = v77;
      *(v77 + 1) = v58;
      *(v59 + 6) = 2080;
      v60 = v94;
      v61 = v97;
      v37 = v104;
      v84(v94, v97, v104);
      (*(v11 + 56))(v60, 0, 1, v37);
      v62 = >> prefix<A>(_:)(v60, v37);
      v64 = v63;
      (*(v95 + 8))(v60, v96);
      (*(v11 + 8))(v61, v37);
      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, v106);

      *(v59 + 14) = v65;
      v66 = v79;
      _os_log_impl(&dword_1AEE80000, v79, v78, "Application called synchronous activate SPI with conversation UUID %s on %s", v59, 0x16u);
      v67 = v76;
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v67, -1, -1);
      MEMORY[0x1B2715BA0](v59, -1, -1);

      v57(v80, v26);
    }

    else
    {

      (*(v11 + 8))(v43, v37);
      v54 = *(v27 + 8);
      v54(v87, v26);
      v54(v39, v26);
    }

    a1 = v88;
    v7 = v89;
  }

  v68 = type metadata accessor for TaskPriority();
  (*(*(v68 - 8) + 56))(v7, 1, 1, v68);
  v69 = v102;
  (*(v11 + 16))(v102, v105, v37);
  v70 = v100;
  outlined init with copy of UUID?(a1, v100);
  v71 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v72 = (v101 + v71 + *(v99 + 80)) & ~*(v99 + 80);
  v73 = swift_allocObject();
  *(v73 + 2) = 0;
  *(v73 + 3) = 0;
  v74 = v103;
  *(v73 + 4) = v37;
  *(v73 + 5) = v74;
  (*(v11 + 32))(&v73[v71], v69, v37);
  outlined init with take of UUID?(v70, &v73[v72]);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in GroupActivity.activate(onConversationWithUUID:), v73);
}

{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  v6 = type metadata accessor for UUID();
  v4[23] = v6;
  v4[24] = *(v6 - 8);
  v4[25] = swift_task_alloc();
  v7 = type metadata accessor for OSSignpostID();
  v4[26] = v7;
  v4[27] = *(v7 - 8);
  v4[28] = swift_task_alloc();
  type metadata accessor for AnyGroupActivity(0);
  v4[29] = swift_task_alloc();
  v8 = type metadata accessor for SharePlayLatencyLogger.Event();
  v4[30] = v8;
  v4[31] = *(v8 - 8);
  v4[32] = swift_task_alloc();
  v9 = type metadata accessor for SharePlayLatencyLogger.Interval();
  v4[33] = v9;
  v4[34] = *(v9 - 8);
  v4[35] = swift_task_alloc();
  v10 = type metadata accessor for Optional();
  v4[36] = v10;
  v4[37] = *(v10 - 8);
  v4[38] = swift_task_alloc();
  v4[39] = *(a2 - 8);
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](GroupActivity.activate(onConversationWithUUID:), 0, 0);
}

uint64_t closure #1 in GroupActivity.activate(onConversationWithUUID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 24) = v11;
  *v11 = v7;
  v11[1] = closure #1 in GroupActivity.activate(onConversationWithUUID:);

  return GroupActivity.activate(onConversationWithUUID:)(a5, a6, a7);
}

uint64_t closure #1 in GroupActivity.activate(onConversationWithUUID:)(char a1)
{
  v4 = *v2;
  *(*v2 + 32) = v1;

  if (v1)
  {
    v5 = closure #1 in GroupActivity.activate(onConversationWithUUID:);
  }

  else
  {
    *(v4 + 40) = a1 & 1;
    v5 = closure #1 in GroupActivity.activate(onConversationWithUUID:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t closure #1 in GroupActivity.activate(onConversationWithUUID:)()
{
  if (*(v0 + 40) == 1)
  {
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
      v5 = "Session successfully activated";
LABEL_10:
      _os_log_impl(&dword_1AEE80000, v2, v3, v5, v4, 2u);
      MEMORY[0x1B2715BA0](v4, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Log.default);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "Failed to activate session";
      goto LABEL_10;
    }
  }

  v7 = *(v0 + 8);

  return v7();
}

{
  v17 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.default);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[4];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v0[2] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1AEE80000, v4, v5, "Failed to activate session error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B2715BA0](v9, -1, -1);
    MEMORY[0x1B2715BA0](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t GroupActivity.activate(onConversationWithUUID:)()
{
  v37 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 360);
  v2 = *(v0 + 312);
  v3 = *(v0 + 176);
  v4 = *(v0 + 160);
  v5 = type metadata accessor for Logger();
  *(v0 + 368) = __swift_project_value_buffer(v5, static Log.default);
  v6 = *(v2 + 16);
  *(v0 + 376) = v6;
  *(v0 + 384) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v3, v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 360);
  v11 = *(v0 + 312);
  v35 = v6;
  if (v9)
  {
    v34 = v8;
    v12 = *(v0 + 296);
    v13 = *(v0 + 304);
    v32 = *(v0 + 288);
    v14 = *(v0 + 160);
    v15 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v36 = v33;
    *v15 = 136315138;
    v6(v13, v10, v14);
    (*(v11 + 56))(v13, 0, 1, v14);
    v31 = >> prefix<A>(_:)(v13, v14);
    v17 = v16;
    (*(v12 + 8))(v13, v32);
    v18 = *(v11 + 8);
    v18(v10, v14);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v17, &v36);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_1AEE80000, v7, v34, "Application called async activate on %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x1B2715BA0](v33, -1, -1);
    MEMORY[0x1B2715BA0](v15, -1, -1);
  }

  else
  {
    v20 = *(v0 + 160);

    v18 = *(v11 + 8);
    v18(v10, v20);
  }

  *(v0 + 392) = v18;
  v21 = *(v0 + 352);
  v23 = *(v0 + 248);
  v22 = *(v0 + 256);
  v24 = *(v0 + 240);
  v26 = *(v0 + 168);
  v25 = *(v0 + 176);
  v27 = *(v0 + 160);
  (*(v23 + 104))(v22, *MEMORY[0x1E6997550], v24);
  static SharePlayLatencyLogger.beginInterval<A>(for:activity:)(v22, v25, v27, v26);
  (*(v23 + 8))(v22, v24);
  v35(v21, v25, v27);
  type metadata accessor for CollaborationActivity(0);
  if (swift_dynamicCast())
  {
    *(v0 + 400) = *(v0 + 128);
    v28 = swift_task_alloc();
    *(v0 + 408) = v28;
    *v28 = v0;
    v28[1] = GroupActivity.activate(onConversationWithUUID:);

    return CollaborationActivity.activate()();
  }

  else
  {
    GroupActivity.eraseToAnyGroupActivity()(*(v0 + 160), *(v0 + 168), *(v0 + 232));
    v30 = swift_task_alloc();
    *(v0 + 424) = v30;
    *v30 = v0;
    v30[1] = GroupActivity.activate(onConversationWithUUID:);

    return AnyGroupActivity.tuConversationActivityCreateSessionRequest.getter();
  }
}

{

  v6 = *(v0 + 496);
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v3 = *(v0 + 264);
  MEMORY[0x1B2712F70](v2);
  (*(v1 + 8))(v2, v3);

  v4 = *(v0 + 8);

  return v4(v6);
}

{
  v41 = v0;
  v1 = *(v0 + 432);
  [v1 mutableCopy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for TUMutableConversationActivityCreateSessionRequest();
  swift_dynamicCast();
  v2 = *(v0 + 136);
  *(v0 + 440) = v2;
  if (one-time initialization token for groupSession != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v0 + 184);
  v6 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v6, static Signposts.groupSession);
  v7 = [v2 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.uint64Value.getter(v8);
  (*(v4 + 8))(v3, v5);
  OSSignpostID.init(_:)();
  v9 = v2;
  v10 = OSSignposter.logHandle.getter();
  v11 = static os_signpost_type_t.event.getter();

  v12 = OS_os_log.signpostsEnabled.getter();
  v14 = *(v0 + 216);
  v13 = *(v0 + 224);
  v15 = *(v0 + 208);
  if (v12)
  {
    v38 = v11;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v40 = v17;
    *v16 = 136315138;
    v18 = [v9 activityIdentifier];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v40);

    *(v16 + 4) = v22;
    v23 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_1AEE80000, v10, v38, v23, "group-session-requested", "%s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x1B2715BA0](v17, -1, -1);
    MEMORY[0x1B2715BA0](v16, -1, -1);
  }

  (*(v14 + 8))(v13, v15);
  (*(v0 + 376))(*(v0 + 344), *(v0 + 176), *(v0 + 160));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities013CollaborationA8Activity_pMd, &_s15GroupActivities013CollaborationA8Activity_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of Transferable((v0 + 56), v0 + 16);
    v24 = *(v0 + 40);
    v25 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v24);
    v39 = (*(v25 + 24) + **(v25 + 24));
    v26 = swift_task_alloc();
    *(v0 + 448) = v26;
    *v26 = v0;
    v26[1] = GroupActivity.activate(onConversationWithUUID:);

    return v39(v24, v25);
  }

  else
  {
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    outlined destroy of NSObject?(v0 + 56, &_s15GroupActivities013CollaborationA8Activity_pSgMd, &_s15GroupActivities013CollaborationA8Activity_pSgMR);
    v28 = specialized GroupActivity.provider.getter(*(v0 + 160));
    v30 = v29;
    *(v0 + 472) = v28;
    ObjectType = swift_getObjectType();
    v32 = *(v30 + 64);
    swift_unknownObjectRetain();
    v37 = (v32 + *v32);
    v33 = swift_task_alloc();
    *(v0 + 480) = v33;
    *v33 = v0;
    v33[1] = GroupActivity.activate(onConversationWithUUID:);
    v34 = *(v0 + 440);
    v35 = *(v0 + 232);
    v36 = *(v0 + 152);

    return v37(v35, v34, v36, ObjectType, v30);
  }
}

{
  v1 = *(v0 + 464);
  [*(v0 + 440) setShare_];

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v2 = specialized GroupActivity.provider.getter(*(v0 + 160));
  v4 = v3;
  *(v0 + 472) = v2;
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 64);
  swift_unknownObjectRetain();
  v12 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v0 + 480) = v7;
  *v7 = v0;
  v7[1] = GroupActivity.activate(onConversationWithUUID:);
  v8 = *(v0 + 440);
  v9 = *(v0 + 232);
  v10 = *(v0 + 152);

  return v12(v9, v8, v10, ObjectType, v4);
}

{
  v54 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  v52 = *(v0 + 497);
  if (v52 == 1)
  {
    v1(*(v0 + 336), v2, v3);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 440);
    v8 = *(v0 + 392);
    if (v6)
    {
      v49 = v5;
      v9 = *(v0 + 376);
      v10 = *(v0 + 336);
      v43 = v10;
      v47 = *(v0 + 392);
      v12 = *(v0 + 304);
      v11 = *(v0 + 312);
      v13 = *(v0 + 296);
      v45 = *(v0 + 288);
      v51 = *(v0 + 232);
      v14 = *(v0 + 160);
      v15 = swift_slowAlloc();
      v50 = v7;
      v16 = swift_slowAlloc();
      v53 = v16;
      *v15 = 136315138;
      v9(v12, v10, v14);
      (*(v11 + 56))(v12, 0, 1, v14);
      v17 = >> prefix<A>(_:)(v12, v14);
      v19 = v18;
      (*(v13 + 8))(v12, v45);
      v47(v43, v14);
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v53);

      *(v15 + 4) = v20;
      v21 = "Application activated activity %s";
LABEL_6:
      _os_log_impl(&dword_1AEE80000, v4, v49, v21, v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x1B2715BA0](v16, -1, -1);
      MEMORY[0x1B2715BA0](v15, -1, -1);

      v34 = v51;
      goto LABEL_10;
    }

    v35 = *(v0 + 336);
  }

  else
  {
    v1(*(v0 + 328), v2, v3);
    v4 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    v23 = os_log_type_enabled(v4, v22);
    v7 = *(v0 + 440);
    v8 = *(v0 + 392);
    if (v23)
    {
      v24 = *(v0 + 376);
      v25 = *(v0 + 328);
      v44 = v25;
      v48 = *(v0 + 392);
      v49 = v22;
      v26 = *(v0 + 304);
      v27 = *(v0 + 312);
      v28 = *(v0 + 296);
      v46 = *(v0 + 288);
      v51 = *(v0 + 232);
      v29 = *(v0 + 160);
      v15 = swift_slowAlloc();
      v50 = v7;
      v16 = swift_slowAlloc();
      v53 = v16;
      *v15 = 136315138;
      v24(v26, v25, v29);
      (*(v27 + 56))(v26, 0, 1, v29);
      v30 = >> prefix<A>(_:)(v26, v29);
      v32 = v31;
      (*(v28 + 8))(v26, v46);
      v48(v44, v29);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v53);

      *(v15 + 4) = v33;
      v21 = "Application failed activity activation %s";
      goto LABEL_6;
    }

    v35 = *(v0 + 328);
  }

  v36 = *(v0 + 232);
  v37 = *(v0 + 160);

  v8(v35, v37);
  v34 = v36;
LABEL_10:
  outlined destroy of AnyGroupActivity(v34, type metadata accessor for AnyGroupActivity);
  v38 = *(v0 + 272);
  v39 = *(v0 + 280);
  v40 = *(v0 + 264);
  MEMORY[0x1B2712F70](v39);
  (*(v38 + 8))(v39, v40);

  v41 = *(v0 + 8);

  return v41(v52);
}

{

  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];
  MEMORY[0x1B2712F70](v2);
  (*(v1 + 8))(v2, v3);

  v4 = v0[1];

  return v4(0);
}

{
  v1 = *(v0 + 232);

  outlined destroy of AnyGroupActivity(v1, type metadata accessor for AnyGroupActivity);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);
  v4 = *(v0 + 264);
  MEMORY[0x1B2712F70](v3);
  (*(v2 + 8))(v3, v4);

  v5 = *(v0 + 8);

  return v5(0);
}

{
  v44 = v0;
  v1 = v0[61];
  v2 = v0[47];
  v3 = v0[40];
  v4 = v0[22];
  v5 = v0[20];
  swift_unknownObjectRelease();
  v2(v3, v4, v5);
  v6 = v1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v37 = v0[49];
    v38 = v0[61];
    v40 = v8;
    v9 = v0[47];
    v10 = v0[39];
    v11 = v0[40];
    v12 = v0[37];
    v13 = v0[38];
    v36 = v0[36];
    v41 = v0[29];
    v42 = v0[55];
    v14 = v0[20];
    v15 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v43 = v39;
    *v15 = 136315394;
    v9(v13, v11, v14);
    (*(v10 + 56))(v13, 0, 1, v14);
    v16 = >> prefix<A>(_:)(v13, v14);
    v18 = v17;
    (*(v12 + 8))(v13, v36);
    v37(v11, v14);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v43);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v0[18] = v38;
    v20 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v21 = String.init<A>(reflecting:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v43);

    *(v15 + 14) = v23;
    _os_log_impl(&dword_1AEE80000, v7, v40, "Application failed activity activation %s with error %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v39, -1, -1);
    MEMORY[0x1B2715BA0](v15, -1, -1);

    v24 = v41;
  }

  else
  {
    v25 = v0[61];
    v26 = v0[55];
    v27 = v0[49];
    v28 = v0[40];
    v29 = v0[29];
    v30 = v0[20];

    v27(v28, v30);
    v24 = v29;
  }

  outlined destroy of AnyGroupActivity(v24, type metadata accessor for AnyGroupActivity);
  v31 = v0[34];
  v32 = v0[35];
  v33 = v0[33];
  MEMORY[0x1B2712F70](v32);
  (*(v31 + 8))(v32, v33);

  v34 = v0[1];

  return v34(0);
}

uint64_t GroupActivity.activate(onConversationWithUUID:)(char a1)
{
  v4 = *v2;
  *(*v2 + 416) = v1;

  if (v1)
  {
    v5 = GroupActivity.activate(onConversationWithUUID:);
  }

  else
  {
    *(v4 + 496) = a1 & 1;
    v5 = GroupActivity.activate(onConversationWithUUID:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 488) = v1;

  if (v1)
  {
    v5 = GroupActivity.activate(onConversationWithUUID:);
  }

  else
  {
    swift_unknownObjectRelease();
    *(v4 + 497) = a1 & 1;
    v5 = GroupActivity.activate(onConversationWithUUID:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t GroupActivity.activate(onConversationWithUUID:)(uint64_t a1)
{
  *(*v1 + 432) = a1;

  return MEMORY[0x1EEE6DFA0](GroupActivity.activate(onConversationWithUUID:), 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 456) = v1;

  if (v1)
  {
    v5 = GroupActivity.activate(onConversationWithUUID:);
  }

  else
  {
    *(v4 + 464) = a1;
    v5 = GroupActivity.activate(onConversationWithUUID:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t GroupActivity.activate()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](GroupActivity.activate(), 0, 0);
}

uint64_t GroupActivity.activate()()
{
  v1 = v0[5];
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = GroupActivity.activate();
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];

  return GroupActivity.activate(onConversationWithUUID:)(v4, v5, v6);
}

{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t GroupActivity.activate()(char a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 56) = v1;

  outlined destroy of NSObject?(*(v4 + 40), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](GroupActivity.activate(), 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1 & 1);
  }
}

uint64_t closure #1 in GroupActivity.awaitMetadataValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v19 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v10 + 16))(&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3, a4);
  v16 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = a4;
  *(v17 + 5) = a5;
  *(v17 + 6) = a1;
  *(v17 + 7) = a2;
  (*(v10 + 32))(&v17[v16], &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a4);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v14, &async function pointer to partial apply for closure #1 in closure #1 in GroupActivity.awaitMetadataValue(), v17);
}

uint64_t closure #1 in closure #1 in GroupActivity.awaitMetadataValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy15GroupActivities0B16ActivityMetadataVs5NeverOGMd, &_ss6ResultOy15GroupActivities0B16ActivityMetadataVs5NeverOGMR);
  v11 = swift_task_alloc();
  v8[5] = v11;
  v14 = (*(a8 + 32) + **(a8 + 32));
  v12 = swift_task_alloc();
  v8[6] = v12;
  *v12 = v8;
  v12[1] = specialized closure #1 in closure #1 in GroupActivity.awaitMetadataValue();

  return v14(v11, a7, a8);
}

uint64_t GroupActivity.awaitMetadataValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v16[1] = a6;
  v11 = *(a1 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v11 + 16))(v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v6, a1);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  (*(v11 + 32))(v14 + v13, v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  swift_allocObject();
  return Future.init(_:)();
}

uint64_t closure #1 in CollaborationGroupActivity.awaitShare()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v20 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  (*(v10 + 16))(&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3, a4);
  v17 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = a4;
  *(v18 + 5) = a5;
  *(v18 + 6) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<TUConversationActivity, Error>) -> ();
  *(v18 + 7) = v15;
  (*(v10 + 32))(&v18[v17], &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a4);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v14, &async function pointer to partial apply for closure #1 in closure #1 in CollaborationGroupActivity.awaitShare(), v18);
}

uint64_t closure #1 in closure #1 in CollaborationGroupActivity.awaitShare()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a4;
  v8[3] = a5;
  v13 = (*(a8 + 24) + **(a8 + 24));
  v11 = swift_task_alloc();
  v8[4] = v11;
  *v11 = v8;
  v11[1] = closure #1 in closure #1 in CollaborationGroupActivity.awaitShare();

  return v13(a7, a8);
}

uint64_t closure #1 in closure #1 in CollaborationGroupActivity.awaitShare()(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = closure #1 in closure #1 in CollaborationGroupActivity.awaitShare();
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = closure #1 in closure #1 in CollaborationGroupActivity.awaitShare();
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t closure #1 in closure #1 in CollaborationGroupActivity.awaitShare()()
{
  v1 = *(v0 + 48);
  (*(v0 + 16))(v1, 0);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v1;
  v2(v1, 1);

  v4 = v0[1];

  return v4();
}

uint64_t specialized static GroupActivity._identifiable(by:staticIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a4 + 24))(a3, a4) == a1 && v5 == a2)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t specialized GroupActivity.provider.getter(uint64_t a1)
{
  v3 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x1E6997708]) init];
  v7 = [v6 sharePlayLiteEnabled];

  if (v7 && ((*(v3 + 16))(v5, v1, a1), type metadata accessor for CollaborationActivity(0), (swift_dynamicCast() & 1) != 0))
  {

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v8 = &static BackgroundGroupSessionManager.shared;
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v8 = &static ConversationManager.shared;
  }

  return *v8;
}

uint64_t partial apply for closure #1 in GroupActivity.prepareForActivation(completionHandler:)(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = (*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = (v1 + ((*(*(v4 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in GroupActivity.prepareForActivation(completionHandler:)(a1, v7, v8, v1 + v6, v10, v11, v4, v5);
}

uint64_t outlined init with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in GroupActivity.activate(onConversationWithUUID:)(uint64_t a1)
{
  v3 = v2;
  v6 = v1[4];
  v5 = v1[5];
  v7 = *(*(v6 - 8) + 64);
  v8 = (*(*(v6 - 8) + 80) + 48) & ~*(*(v6 - 8) + 80);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v10 = (v8 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = v1[2];
  v12 = v1[3];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in GroupActivity.activate(onConversationWithUUID:)(a1, v11, v12, v1 + v8, v1 + v10, v6, v5);
}

uint64_t objectdestroyTm_2()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

unint64_t lazy protocol witness table accessor for type GroupActivityActivationResult and conformance GroupActivityActivationResult()
{
  result = lazy protocol witness table cache variable for type GroupActivityActivationResult and conformance GroupActivityActivationResult;
  if (!lazy protocol witness table cache variable for type GroupActivityActivationResult and conformance GroupActivityActivationResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupActivityActivationResult and conformance GroupActivityActivationResult);
  }

  return result;
}

uint64_t dispatch thunk of GroupActivity.metadata.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v9(a1, a2, a3);
}

uint64_t partial apply for closure #1 in closure #1 in CollaborationGroupActivity.awaitShare()(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = (*(*(v4 - 8) + 80) + 64) & ~*(*(v4 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = v1[7];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return closure #1 in closure #1 in CollaborationGroupActivity.awaitShare()(a1, v7, v8, v9, v10, v1 + v6, v4, v5);
}

unint64_t type metadata accessor for TUMutableConversationActivityCreateSessionRequest()
{
  result = lazy cache variable for type metadata for TUMutableConversationActivityCreateSessionRequest;
  if (!lazy cache variable for type metadata for TUMutableConversationActivityCreateSessionRequest)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for TUMutableConversationActivityCreateSessionRequest);
  }

  return result;
}

uint64_t objectdestroy_31Tm()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in GroupActivity.awaitMetadataValue()(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = (*(*(v4 - 8) + 80) + 64) & ~*(*(v4 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = v1[7];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in closure #1 in GroupActivity.awaitMetadataValue()(a1, v7, v8, v9, v10, v1 + v6, v4, v5);
}

uint64_t PersonalGroupSessionProvider.id.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PersonalGroupSessionProvider.id.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

double PersonalGroupSessionProvider.state.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t PersonalGroupSessionProvider.state.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

double PersonalGroupSessionProvider.members.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t PersonalGroupSessionProvider.members.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

double PersonalGroupSessionProvider.presenceInfo.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t PersonalGroupSessionProvider.presenceInfo.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

uint64_t PersonalGroupSessionProvider.__allocating_init(id:activity:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  PersonalGroupSessionProvider.init(id:activity:)(a1, a2, a3);
  return v6;
}

void *PersonalGroupSessionProvider.init(id:activity:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15GroupActivities0E20SessionProviderStateOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15GroupActivities0E20SessionProviderStateOs5NeverOGMR);
  swift_allocObject();
  v3[4] = CurrentValueSubject.init(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGMR);
  swift_allocObject();
  v3[5] = CurrentValueSubject.init(_:)();
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15GroupActivities19PresenceSessionInfoVs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15GroupActivities19PresenceSessionInfoVs5NeverOGMR);
  swift_allocObject();

  v3[6] = CurrentValueSubject.init(_:)();
  v9 = (v3 + *(*v3 + 136));
  v9[3] = type metadata accessor for LocalAccountMember(0);
  v9[4] = lazy protocol witness table accessor for type LocalAccountMember and conformance LocalAccountMember();
  __swift_allocate_boxed_opaque_existential_1(v9);
  UUID.init()();
  *(v4 + *(*v4 + 144)) = 0;
  v4[2] = a1;
  v4[3] = a2;
  (*(*(*(v8 + 80) - 8) + 32))(v4 + *(*v4 + 128), a3);
  return v4;
}

char *PersonalGroupSessionProvider.deinit()
{
  v1 = v0;
  v2 = *v0;
  if (one-time initialization token for personalGroupSessionProvider != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.personalGroupSessionProvider);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v8 = (*(*v0 + 256))();
    v10 = v9;

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v13);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1AEE80000, v4, v5, "%s Deinit'd", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1B2715BA0](v7, -1, -1);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  else
  {
  }

  (*(*(*(v2 + 80) - 8) + 8))(v1 + *(*v1 + 128));
  outlined destroy of Member?(v1 + *(*v1 + 136));
  return v1;
}

uint64_t PersonalGroupSessionProvider.__deallocating_deinit()
{
  PersonalGroupSessionProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t PersonalGroupSessionProvider.description.getter()
{
  _StringGuts.grow(_:)(50);
  MEMORY[0x1B27141F0](0xD00000000000001DLL, 0x80000001AF01B640);
  v1 = _typeName(_:qualified:)();
  MEMORY[0x1B27141F0](v1);

  MEMORY[0x1B27141F0](0x203A666C6573283ELL, 0xE800000000000000);
  _print_unlocked<A, B>(_:_:)();
  v2 = MEMORY[0x1B27141F0](0x203A6469202CLL, 0xE600000000000000);
  v3 = (*(*v0 + 152))(v2);
  MEMORY[0x1B27141F0](v3);

  MEMORY[0x1B27141F0](41, 0xE100000000000000);
  return 0;
}

uint64_t protocol witness for Identifiable.id.getter in conformance PersonalGroupSessionProvider<A>@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 152))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type LocalAccountMember and conformance LocalAccountMember()
{
  result = lazy protocol witness table cache variable for type LocalAccountMember and conformance LocalAccountMember;
  if (!lazy protocol witness table cache variable for type LocalAccountMember and conformance LocalAccountMember)
  {
    type metadata accessor for LocalAccountMember(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalAccountMember and conformance LocalAccountMember);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for PersonalGroupSessionProvider<A>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for PersonalGroupSessionProvider(uint64_t a1)
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

Swift::Int SendReliability.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type SendReliability and conformance SendReliability()
{
  result = lazy protocol witness table cache variable for type SendReliability and conformance SendReliability;
  if (!lazy protocol witness table cache variable for type SendReliability and conformance SendReliability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SendReliability and conformance SendReliability);
  }

  return result;
}

void *GroupActivityTransferRepresentation.init<A>(exporting:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  result = swift_allocObject();
  result[2] = a3;
  result[3] = a4;
  result[4] = a5;
  result[5] = a6;
  result[6] = a1;
  result[7] = a2;
  *a7 = &async function pointer to partial apply for closure #1 in GroupActivityTransferRepresentation.init<A>(exporting:);
  a7[1] = result;
  return result;
}

uint64_t closure #1 in GroupActivityTransferRepresentation.init<A>(exporting:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a5;
  v7[7] = a7;
  v7[4] = a1;
  v7[5] = a4;
  v12 = type metadata accessor for Optional();
  v7[8] = v12;
  v7[9] = *(v12 - 8);
  v7[10] = swift_task_alloc();
  v7[11] = *(a4 - 8);
  v7[12] = swift_task_alloc();
  v7[13] = *(a5 - 8);
  v13 = swift_task_alloc();
  v7[14] = v13;
  type metadata accessor for AnyGroupActivity(0);
  v7[15] = swift_task_alloc();
  v16 = (a2 + *a2);
  v14 = swift_task_alloc();
  v7[16] = v14;
  *v14 = v7;
  v14[1] = closure #1 in GroupActivityTransferRepresentation.init<A>(exporting:);

  return v16(v13, a1);
}

uint64_t closure #1 in GroupActivityTransferRepresentation.init<A>(exporting:)()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = closure #1 in GroupActivityTransferRepresentation.init<A>(exporting:);
  }

  else
  {
    v2 = closure #1 in GroupActivityTransferRepresentation.init<A>(exporting:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v38 = v0;
  v1 = *(v0 + 136);
  GroupActivity.eraseToAnyGroupActivity()(*(v0 + 48), *(v0 + 56), *(v0 + 120));
  if (v1)
  {
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 48));
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 88);
    v2 = *(v0 + 96);
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);
    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Log.default);
    v7 = *(v3 + 16);
    v7(v2, v5, v4);
    v8 = v1;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 88);
    v13 = *(v0 + 96);
    if (v11)
    {
      v36 = v10;
      v14 = *(v0 + 72);
      v15 = *(v0 + 80);
      v33 = *(v0 + 64);
      v16 = *(v0 + 40);
      v32 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v37[0] = v35;
      *v32 = 136315394;
      v7(v15, v13, v16);
      (*(v12 + 56))(v15, 0, 1, v16);
      v17 = >> prefix<A>(_:)(v15, v16);
      log = v9;
      v19 = v18;
      (*(v14 + 8))(v15, v33);
      (*(v12 + 8))(v13, v16);
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, v37);

      *(v32 + 4) = v20;
      *(v32 + 12) = 2080;
      *(v0 + 16) = v1;
      v21 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v22 = String.init<A>(reflecting:)();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v37);

      *(v32 + 14) = v24;
      _os_log_impl(&dword_1AEE80000, log, v36, "Failed to export activity from item: %s error: %s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v35, -1, -1);
      MEMORY[0x1B2715BA0](v32, -1, -1);
    }

    else
    {
      v29 = *(v0 + 40);

      (*(v12 + 8))(v13, v29);
    }

    swift_willThrow();

    v30 = *(v0 + 8);

    return v30();
  }

  else
  {
    v25 = *(v0 + 120);
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 48));
    v26 = swift_task_alloc();
    *(v0 + 144) = v26;
    *(v26 + 16) = v25;
    v27 = swift_task_alloc();
    *(v0 + 152) = v27;
    v28 = type metadata accessor for TUConversationActivity();
    *v27 = v0;
    v27[1] = closure #1 in GroupActivityTransferRepresentation.init<A>(exporting:);

    return MEMORY[0x1EEE6DE38](v0 + 24, 0, 0, 0xD000000000000010, 0x80000001AF01B6B0, partial apply for closure #1 in closure #1 in GroupActivityTransferRepresentation.init<A>(exporting:), v26, v28);
  }
}

{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = closure #1 in GroupActivityTransferRepresentation.init<A>(exporting:);
  }

  else
  {

    v2 = closure #1 in GroupActivityTransferRepresentation.init<A>(exporting:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[3];
  outlined destroy of AnyGroupActivity(v0[15]);

  v2 = v0[1];

  return v2(v1);
}

{
  v35 = v0;
  v1 = v0[17];
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[4];
  v4 = v0[5];
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.default);
  v7 = *(v3 + 16);
  v7(v2, v5, v4);
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[11];
  v13 = v0[12];
  if (v11)
  {
    v33 = v1;
    v32 = v10;
    v14 = v0[9];
    v15 = v0[10];
    v29 = v0[8];
    v16 = v0[5];
    log = v9;
    v17 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v34[0] = v31;
    *v17 = 136315394;
    v7(v15, v13, v16);
    (*(v12 + 56))(v15, 0, 1, v16);
    v18 = >> prefix<A>(_:)(v15, v16);
    v20 = v19;
    (*(v14 + 8))(v15, v29);
    (*(v12 + 8))(v13, v16);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v34);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v0[2] = v33;
    v22 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v23 = String.init<A>(reflecting:)();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v34);

    *(v17 + 14) = v25;
    _os_log_impl(&dword_1AEE80000, log, v32, "Failed to export activity from item: %s error: %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v31, -1, -1);
    MEMORY[0x1B2715BA0](v17, -1, -1);
  }

  else
  {
    v26 = v0[5];

    (*(v12 + 8))(v13, v26);
  }

  swift_willThrow();

  v27 = v0[1];

  return v27();
}

{
  v36 = v0;
  v1 = v0[15];

  outlined destroy of AnyGroupActivity(v1);
  v2 = v0[20];
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[4];
  v5 = v0[5];
  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Log.default);
  v8 = *(v4 + 16);
  v8(v3, v6, v5);
  v9 = v2;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[11];
  v14 = v0[12];
  if (v12)
  {
    v34 = v2;
    v33 = v11;
    v15 = v0[9];
    v16 = v0[10];
    v30 = v0[8];
    v17 = v0[5];
    log = v10;
    v18 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v35[0] = v32;
    *v18 = 136315394;
    v8(v16, v14, v17);
    (*(v13 + 56))(v16, 0, 1, v17);
    v19 = >> prefix<A>(_:)(v16, v17);
    v21 = v20;
    (*(v15 + 8))(v16, v30);
    (*(v13 + 8))(v14, v17);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, v35);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v0[2] = v34;
    v23 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v24 = String.init<A>(reflecting:)();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v35);

    *(v18 + 14) = v26;
    _os_log_impl(&dword_1AEE80000, log, v33, "Failed to export activity from item: %s error: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v32, -1, -1);
    MEMORY[0x1B2715BA0](v18, -1, -1);
  }

  else
  {
    v27 = v0[5];

    (*(v13 + 8))(v14, v27);
  }

  swift_willThrow();

  v28 = v0[1];

  return v28();
}

uint64_t partial apply for closure #1 in GroupActivityTransferRepresentation.init<A>(exporting:)(uint64_t a1)
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
  v10[1] = partial apply for closure #1 in GroupActivityTransferRepresentation.init<A>(exporting:);

  return closure #1 in GroupActivityTransferRepresentation.init<A>(exporting:)(a1, v9, v8, v4, v5, v6, v7);
}

{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t closure #1 in closure #1 in GroupActivityTransferRepresentation.init<A>(exporting:)(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo22TUConversationActivityCs5Error_pGMd, &_sScCySo22TUConversationActivityCs5Error_pGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  v8 = type metadata accessor for AnyGroupActivity(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  outlined init with copy of AnyGroupActivity(a2, &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = swift_allocObject();
  outlined init with take of AnyGroupActivity(&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCySo22TUConversationActivityCs5Error_pGMd, &_s7Combine6FutureCySo22TUConversationActivityCs5Error_pGMR);
  swift_allocObject();
  v20 = Future.init(_:)();
  v22 = v20;
  v13 = *(v5 + 16);
  v13(v7, a1, v4);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  v16 = *(v5 + 32);
  v16(v15 + v14, v7, v4);
  v13(v7, v19, v4);
  v17 = swift_allocObject();
  v16(v17 + v14, v7, v4);
  lazy protocol witness table accessor for type Future<TUConversationActivity, Error> and conformance Future<A, B>();
  Publisher.sinkOnce(_:onError:)();
}

uint64_t closure #1 in closure #1 in closure #1 in GroupActivityTransferRepresentation.init<A>(exporting:)(id *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo22TUConversationActivityCs5Error_pGMd, &_sScCySo22TUConversationActivityCs5Error_pGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t closure #2 in closure #1 in closure #1 in GroupActivityTransferRepresentation.init<A>(exporting:)(id *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo22TUConversationActivityCs5Error_pGMd, &_sScCySo22TUConversationActivityCs5Error_pGMR);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t GroupActivityTransferRepresentation.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for UTType();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a1 + 16);
  v8 = type metadata accessor for DataRepresentation();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - v13;
  v21 = *v2;
  if (one-time initialization token for _groupActivity != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v4, static UTType._groupActivity);
  (*(v5 + 16))(v7, v15, v4);
  v16 = swift_allocObject();
  v17 = v21;
  *(v16 + 16) = v22;
  *(v16 + 32) = v17;

  DataRepresentation.init(exportedContentType:exporting:)();
  swift_getWitnessTable();
  v18 = *(v9 + 16);
  v18(v14, v12, v8);
  v19 = *(v9 + 8);
  v19(v12, v8);
  v18(v23, v14, v8);
  return (v19)(v14, v8);
}

uint64_t closure #1 in GroupActivityTransferRepresentation.body.getter(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = closure #1 in GroupActivityTransferRepresentation.body.getter;

  return v6(a1);
}

uint64_t closure #1 in GroupActivityTransferRepresentation.body.getter(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 32) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in GroupActivityTransferRepresentation.body.getter, 0, 0);
  }
}

uint64_t closure #1 in GroupActivityTransferRepresentation.body.getter()
{
  v1 = *(v0 + 32);
  v2 = objc_opt_self();
  *(v0 + 16) = 0;
  v3 = [v2 archivedDataWithRootObject:v1 requiringSecureCoding:1 error:v0 + 16];
  v4 = *(v0 + 16);
  v5 = *(v0 + 32);
  if (v3)
  {
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = *(v0 + 8);

    return v9(v6, v8);
  }

  else
  {
    v11 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v12 = *(v0 + 8);

    return v12();
  }
}

void *static GroupActivity<>.transferRepresentation.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a1;
  result[4] = a2;
  result[5] = a3;
  result[6] = &async function pointer to partial apply for closure #1 in static GroupActivity<>.transferRepresentation.getter;
  result[7] = v8;
  *a4 = &async function pointer to partial apply for closure #1 in GroupActivityTransferRepresentation.init<A>(exporting:);
  a4[1] = result;
  return result;
}

uint64_t closure #1 in static GroupActivity<>.transferRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in static GroupActivity<>.transferRepresentation.getter, 0, 0);
}

uint64_t closure #1 in static GroupActivity<>.transferRepresentation.getter()
{
  (*(*(v0[4] - 8) + 16))(v0[2], v0[3]);
  v1 = v0[1];

  return v1();
}

uint64_t partial apply for closure #1 in GroupActivityTransferRepresentation.body.getter(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in GroupActivityTransferRepresentation.body.getter;

  return closure #1 in GroupActivityTransferRepresentation.body.getter(a1, v4);
}

uint64_t partial apply for closure #1 in GroupActivityTransferRepresentation.body.getter(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t partial apply for closure #1 in static GroupActivity<>.transferRepresentation.getter(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return closure #1 in static GroupActivity<>.transferRepresentation.getter(a1, a2, v6);
}

uint64_t type metadata instantiation function for GroupActivityTransferRepresentation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for GroupActivityTransferRepresentation(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for GroupActivityTransferRepresentation(uint64_t result, int a2, int a3)
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

uint64_t get_witness_table_16CoreTransferable0B0RzlAA18DataRepresentationVyxGAA08TransferD0HPyHCTm(void *a1, uint64_t (*a2)(uint64_t, void, void), uint64_t a3)
{
  a2(255, *a1, a1[1]);

  return swift_getWitnessTable();
}

uint64_t outlined init with take of AnyGroupActivity(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyGroupActivity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_21Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo22TUConversationActivityCs5Error_pGMd, &_sScCySo22TUConversationActivityCs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in GroupActivityTransferRepresentation.init<A>(exporting:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo22TUConversationActivityCs5Error_pGMd, &_sScCySo22TUConversationActivityCs5Error_pGMR) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t lazy protocol witness table accessor for type Future<TUConversationActivity, Error> and conformance Future<A, B>()
{
  result = lazy protocol witness table cache variable for type Future<TUConversationActivity, Error> and conformance Future<A, B>;
  if (!lazy protocol witness table cache variable for type Future<TUConversationActivity, Error> and conformance Future<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine6FutureCySo22TUConversationActivityCs5Error_pGMd, &_s7Combine6FutureCySo22TUConversationActivityCs5Error_pGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Future<TUConversationActivity, Error> and conformance Future<A, B>);
  }

  return result;
}

double SpatialTemplate.configuration.getter@<D0>(uint64_t a1@<X8>)
{
  return SpatialTemplate.configuration.getter(a1);
}

{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

__n128 SpatialTemplateConfiguration.init(defaultInitiatorRole:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a1 + 32);
  return result;
}

uint64_t SpatialTemplateConfiguration.hash(into:)(uint64_t a1)
{
  outlined init with copy of URL?(v1, &v6, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
  if (*(&v7 + 1))
  {
    outlined init with take of Transferable(&v6, v9);
  }

  else
  {
    outlined destroy of NSObject?(&v6, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
    memset(v9, 0, sizeof(v9));
    v10 = 0;
  }

  outlined init with copy of URL?(v9, &v6, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  if (*(&v7 + 1))
  {
    v3 = v6;
    v4 = v7;
    v5 = v8;
    Hasher._combine(_:)(1u);
    __swift_project_boxed_opaque_existential_1(&v3, *(&v4 + 1));
    dispatch thunk of Hashable.hash(into:)();
    outlined destroy of NSObject?(v9, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
    return outlined destroy of AnySpatialTemplateRole(&v3);
  }

  else
  {
    Hasher._combine(_:)(0);
    return outlined destroy of NSObject?(v9, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  }
}

Swift::Int SpatialTemplateConfiguration.hashValue.getter()
{
  Hasher.init(_seed:)();
  SpatialTemplateConfiguration.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SpatialTemplateConfiguration()
{
  Hasher.init(_seed:)();
  SpatialTemplateConfiguration.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SpatialTemplateConfiguration(uint64_t a1)
{
  Hasher.init(_seed:)();
  SpatialTemplateConfiguration.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t SpatialTemplate.output.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v8 + 16))(v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  if (swift_dynamicCast())
  {
    v32 = v26;
    v33 = v27;
    v34 = v28;
    PresentationSpatialTemplate.customOutput.getter(a3);
    return outlined destroy of PresentationSpatialTemplate(&v32);
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    outlined destroy of NSObject?(&v26, &_s15GroupActivities27PresentationSpatialTemplateVSgMd, &_s15GroupActivities27PresentationSpatialTemplateVSgMR);
    v10 = *(a2 + 16);
    v25 = v3;
    v11 = v10(a1, a2);
    v12 = *(v11 + 16);
    if (v12)
    {
      v24 = a3;
      v35 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
      v13 = v35;
      v23[1] = v11;
      v14 = v11 + 32;
      for (i = v12 - 1; ; --i)
      {
        outlined init with copy of Transferable(v14, v29);
        v16 = v30;
        v17 = v31;
        __swift_project_boxed_opaque_existential_1(v29, v30);
        (*(v17 + 40))(&v26, v16, v17);
        outlined init with take of AbsoluteSpatialTemplateOutput.Element(&v26, &v32);
        __swift_destroy_boxed_opaque_existential_0(v29);
        v35 = v13;
        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
          v13 = v35;
        }

        *(v13 + 16) = v19 + 1;
        outlined init with take of AbsoluteSpatialTemplateOutput.Element(&v32, v13 + 112 * v19 + 32);
        if (!i)
        {
          break;
        }

        v14 += 40;
      }

      a3 = v24;
    }

    else
    {

      v13 = MEMORY[0x1E69E7CC0];
    }

    (*(a2 + 8))(&v32, a1, a2);
    v20 = *(&v33 + 1);
    if (*(&v33 + 1))
    {
      v21 = v34;
      __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
      SpatialTemplateRole.output.getter(v21, &v26);
      v22 = *(&v26 + 1);
      v20 = v26;
      result = __swift_destroy_boxed_opaque_existential_0(&v32);
    }

    else
    {
      result = outlined destroy of NSObject?(&v32, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
      v22 = 0;
    }

    *a3 = v13;
    *(a3 + 8) = v20;
    *(a3 + 16) = v22;
    *(a3 + 24) = 0;
  }

  return result;
}

uint64_t specialized static SpatialTemplateConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of URL?(a1, &v8, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
  if (v9)
  {
    outlined init with take of Transferable(&v8, v15);
  }

  else
  {
    outlined destroy of NSObject?(&v8, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
    memset(v15, 0, sizeof(v15));
    v16 = 0;
  }

  outlined init with copy of URL?(a2, &v8, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
  if (v9)
  {
    outlined init with take of Transferable(&v8, v13);
  }

  else
  {
    outlined destroy of NSObject?(&v8, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
    memset(v13, 0, sizeof(v13));
    v14 = 0;
  }

  outlined init with copy of URL?(v15, &v8, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  outlined init with copy of URL?(v13, &v10, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  if (!v9)
  {
    outlined destroy of NSObject?(v13, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
    outlined destroy of NSObject?(v15, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
    if (!*(&v11 + 1))
    {
      outlined destroy of NSObject?(&v8, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
      v3 = 1;
      return v3 & 1;
    }

LABEL_13:
    outlined destroy of NSObject?(&v8, &_s15GroupActivities22AnySpatialTemplateRoleVSg_ADtMd, &_s15GroupActivities22AnySpatialTemplateRoleVSg_ADtMR);
    v3 = 0;
    return v3 & 1;
  }

  outlined init with copy of URL?(&v8, v7, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  if (!*(&v11 + 1))
  {
    outlined destroy of NSObject?(v13, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
    outlined destroy of NSObject?(v15, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
    outlined destroy of AnySpatialTemplateRole(v7);
    goto LABEL_13;
  }

  v5[0] = v10;
  v5[1] = v11;
  v6 = v12;
  v3 = specialized static AnySpatialTemplateRole.== infix(_:_:)(v7, v5);
  outlined destroy of AnySpatialTemplateRole(v5);
  outlined destroy of NSObject?(v13, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  outlined destroy of NSObject?(v15, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  outlined destroy of AnySpatialTemplateRole(v7);
  outlined destroy of NSObject?(&v8, &_s15GroupActivities22AnySpatialTemplateRoleVSgMd, &_s15GroupActivities22AnySpatialTemplateRoleVSgMR);
  return v3 & 1;
}

unint64_t lazy protocol witness table accessor for type SpatialTemplateConfiguration and conformance SpatialTemplateConfiguration()
{
  result = lazy protocol witness table cache variable for type SpatialTemplateConfiguration and conformance SpatialTemplateConfiguration;
  if (!lazy protocol witness table cache variable for type SpatialTemplateConfiguration and conformance SpatialTemplateConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplateConfiguration and conformance SpatialTemplateConfiguration);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15GroupActivities19SpatialTemplateRole_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for SpatialTemplateConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SpatialTemplateConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t AttachmentLedgerTopic.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AttachmentLedgerTopic.topic.didset(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - v6;
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.attachmentLedgerTopic);
  outlined init with copy of URL?(a1, v41, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v11 = &lazy protocol witness table cache variable for type ActivityExternalParticipantStatus and conformance ActivityExternalParticipantStatus;
  if (os_log_type_enabled(v9, v10))
  {
    v33 = v10;
    v12 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v40 = v32;
    *v12 = 136315394;
    outlined init with copy of URL?(v41, &v38, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
    if (v39)
    {
      outlined init with take of Transferable(&v38, &v36);
      outlined init with copy of Transferable(&v36, v35);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pMR);
      v13 = String.init<A>(reflecting:)();
      v15 = v14;
      __swift_destroy_boxed_opaque_existential_0(&v36);
    }

    else
    {
      v13 = 7104878;
      v15 = 0xE300000000000000;
    }

    outlined destroy of NSObject?(v41, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v40);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    (*(v5 + 16))(v7, v2 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic__topic, v4);
    CurrentSubject.wrappedValue.getter();
    (*(v5 + 8))(v7, v4);
    outlined init with copy of URL?(&v38, &v36, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
    if (v37)
    {
      outlined init with take of Transferable(&v36, v35);
      outlined init with copy of Transferable(v35, v34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pMR);
      v17 = String.init<A>(reflecting:)();
      v19 = v18;
      __swift_destroy_boxed_opaque_existential_0(v35);
    }

    else
    {
      v17 = 7104878;
      v19 = 0xE300000000000000;
    }

    outlined destroy of NSObject?(&v38, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v40);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_1AEE80000, v9, v33, "Updating topic from %s -> %s", v12, 0x16u);
    v21 = v32;
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v21, -1, -1);
    MEMORY[0x1B2715BA0](v12, -1, -1);

    v11 = &lazy protocol witness table cache variable for type ActivityExternalParticipantStatus and conformance ActivityExternalParticipantStatus;
  }

  else
  {

    outlined destroy of NSObject?(v41, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
  }

  v22 = OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_pluginTopicCancellables;
  swift_beginAccess();
  *(v2 + v22) = MEMORY[0x1E69E7CD0];

  (*(v5 + 16))(v7, v2 + v11[273], v4);
  CurrentSubject.wrappedValue.getter();
  (*(v5 + 8))(v7, v4);
  v23 = v42;
  if (!v42)
  {
    return outlined destroy of NSObject?(v41, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
  }

  v24 = v43;
  v25 = __swift_project_boxed_opaque_existential_1(v41, v42);
  v26 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v31 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v28);
  outlined destroy of NSObject?(v41, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
  v29 = (*(v24 + 32))(v23, v24);
  (*(v26 + 8))(v28, v23);
  *&v36 = v29;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySay14CopresenceCore10AttachmentCGs5NeverOGMd, &_s7Combine12AnyPublisherVySay14CopresenceCore10AttachmentCGs5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<[Attachment], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySay14CopresenceCore10AttachmentCGs5NeverOGMd, &_s7Combine12AnyPublisherVySay14CopresenceCore10AttachmentCGs5NeverOGMR, MEMORY[0x1E695BED8]);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t closure #1 in AttachmentLedgerTopic.topic.didset(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(*result + 376);

    v3(v4);
  }

  return result;
}

uint64_t AttachmentLedgerTopic.state.getter()
{
  v1 = *(v0 + 32);
  [v1 lock];
  dispatch thunk of StateMachine.currentState.getter();
  [v1 unlock];
  return v3;
}

uint64_t AttachmentLedgerTopic.dataCryptor.didset()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16[-1] - v4;
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.attachmentLedgerTopic);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16[0] = v10;
    *v9 = 136315394;
    v11 = _typeName(_:qualified:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v16);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v1 + 16), *(v1 + 24), v16);
    _os_log_impl(&dword_1AEE80000, v7, v8, "Updating %s dataCryptor, topic=%s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v10, -1, -1);
    MEMORY[0x1B2715BA0](v9, -1, -1);
  }

  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic__topic, v2);
  CurrentSubject.wrappedValue.getter();
  (*(v3 + 8))(v5, v2);
  return outlined destroy of NSObject?(v16, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
}

uint64_t AttachmentLedgerTopic.dataCryptor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_dataCryptor;
  swift_beginAccess();
  return outlined init with copy of URL?(v1 + v3, a1, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
}

uint64_t AttachmentLedgerTopic.dataCryptor.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_dataCryptor;
  swift_beginAccess();
  outlined assign with copy of TopicCryptorProvider?(a1, v1 + v3);
  swift_endAccess();
  AttachmentLedgerTopic.dataCryptor.didset();
  return outlined destroy of NSObject?(a1, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
}

uint64_t outlined assign with copy of TopicCryptorProvider?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t (*AttachmentLedgerTopic.dataCryptor.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return AttachmentLedgerTopic.dataCryptor.modify;
}

uint64_t AttachmentLedgerTopic.dataCryptor.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return AttachmentLedgerTopic.dataCryptor.didset();
  }

  return result;
}

uint64_t AttachmentLedgerTopic.attachments.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySayAA10AttachmentCGGMd, &_s14CopresenceCore14CurrentSubjectVySayAA10AttachmentCGGMR);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v6 - v3;
  (*(v2 + 16))(v6 - v3, v0 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic__attachments, v1);
  CurrentSubject.wrappedValue.getter();
  (*(v2 + 8))(v4, v1);
  return v6[1];
}

uint64_t AttachmentLedgerTopic.attachments.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySayAA10AttachmentCGGMd, &_s14CopresenceCore14CurrentSubjectVySayAA10AttachmentCGGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v8 - v5;
  (*(v4 + 16))(v8 - v5, v1 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic__attachments, v3);
  v8[1] = a1;
  CurrentSubject.wrappedValue.setter();
  return (*(v4 + 8))(v6, v3);
}

void (*AttachmentLedgerTopic.attachments.modify(uint64_t *a1))(void *a1)
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
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySayAA10AttachmentCGGMd, &_s14CopresenceCore14CurrentSubjectVySayAA10AttachmentCGGMR);
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

  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = CurrentSubject.wrappedValue.modify();
  return Dictionary.subscript.modifyspecialized ;
}

uint64_t AttachmentLedgerTopic.$attachments.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySayAA10AttachmentCGGMd, &_s14CopresenceCore14CurrentSubjectVySayAA10AttachmentCGGMR);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - v3;
  (*(v2 + 16))(&v7 - v3, v0 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic__attachments, v1);
  v5 = CurrentSubject.projectedValue.getter();
  (*(v2 + 8))(v4, v1);
  return v5;
}

uint64_t AttachmentLedgerTopic.RetryInfo.pendingAttachments.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t AttachmentLedgerTopic.RetryInfo.update(with:)()
{
  v1 = v0;
  v2 = type metadata accessor for PluginAttachmentLedgerTopic.Configuration();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  PluginAttachmentLedgerTopic.State.ShutdownInfo.config.getter();
  v6 = PluginAttachmentLedgerTopic.Configuration.maxSubscribeRetries.getter();
  (*(v3 + 8))(v5, v2);
  *(v1 + 16) = v6;
  v7 = PluginAttachmentLedgerTopic.State.ShutdownInfo.pendingAttachments.getter();
  specialized Sequence.forEach(_:)(v7, v1);
}

uint64_t closure #1 in AttachmentLedgerTopic.RetryInfo.update(with:)(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  i = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - v9;
  v20 = *a1;
  v11 = *(a2 + 24);
  v18 = (a2 + 24);
  if (v11 >> 62)
  {
LABEL_17:
    v19 = v11 & 0xFFFFFFFFFFFFFF8;
    v21 = __CocoaSet.count.getter();
  }

  else
  {
    v19 = v11 & 0xFFFFFFFFFFFFFF8;
    v21 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = (i + 8);

  for (i = 0; v21 != i; ++i)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1B2714B30](i, v11);
      if (__OFADD__(i, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (i >= *(v19 + 16))
      {
        __break(1u);
        goto LABEL_17;
      }

      if (__OFADD__(i, 1))
      {
        goto LABEL_12;
      }
    }

    Attachment.id.getter();
    Attachment.id.getter();
    v13 = static UUID.== infix(_:_:)();

    v14 = *v12;
    (*v12)(v8, v4);
    v14(v10, v4);
    if (v13)
    {
    }
  }

  v16 = v18;
  MEMORY[0x1B27142A0](v15);
  if (*((*v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

unint64_t specialized Sequence.forEach(_:)(unint64_t result, uint64_t a2)
{
  v4 = result;
  if (result >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      while ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1B2714B30](v6, v4);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v9 = v7;
        closure #1 in AttachmentLedgerTopic.RetryInfo.update(with:)(&v9, a2);

        if (!v2)
        {
          ++v6;
          if (v8 != v5)
          {
            continue;
          }
        }

        return result;
      }

      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(v4 + 8 * v6 + 32);

      v8 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = __CocoaSet.count.getter();
      v5 = result;
    }

    while (result);
  }

  return result;
}

double AttachmentLedgerTopic.retryInfo.getter()
{
  v1 = v0 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_retryInfo;
  swift_beginAccess();
  v2 = *(v1 + 8);

  return v2;
}

uint64_t AttachmentLedgerTopic.retryInfo.setter(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = v4 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_retryInfo;
  swift_beginAccess();
  *v9 = a1;
  *(v9 + 8) = a4;
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
}

uint64_t AttachmentLedgerTopic.__allocating_init(name:retainRefOnStart:pluginGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  AttachmentLedgerTopic.init(name:retainRefOnStart:pluginGenerator:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

char *AttachmentLedgerTopic.init(name:retainRefOnStart:pluginGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v41 = a5;
  v42 = a6;
  v39 = a3;
  v40 = a4;
  v37 = a1;
  v38 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySayAA10AttachmentCGGMd, &_s14CopresenceCore14CurrentSubjectVySayAA10AttachmentCGGMR);
  v35 = *(v8 - 8);
  v36 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgGMR);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - v12;
  *(v7 + 4) = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  v14 = OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic__topic;
  v45 = 0;
  memset(v44, 0, sizeof(v44));
  outlined init with copy of URL?(v44, &v43 + 1, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
  CurrentSubject.init(wrappedValue:)();
  outlined destroy of NSObject?(v44, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
  (*(v11 + 32))(&v7[v14], v13, v10);
  v33 = OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_stateMachine;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14CopresenceCore12StateMachineC10TransitionVy15GroupActivities21AttachmentLedgerTopicC0F0OAJ5Event33_EFAC6FDC2CBBF5ADEF935F3F49BB2218LLO_GGMd, &_ss23_ContiguousArrayStorageCy14CopresenceCore12StateMachineC10TransitionVy15GroupActivities21AttachmentLedgerTopicC0F0OAJ5Event33_EFAC6FDC2CBBF5ADEF935F3F49BB2218LLO_GGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore12StateMachineC10TransitionVy15GroupActivities21AttachmentLedgerTopicC0C0OAH5Event33_EFAC6FDC2CBBF5ADEF935F3F49BB2218LLO_GMd, &_s14CopresenceCore12StateMachineC10TransitionVy15GroupActivities21AttachmentLedgerTopicC0C0OAH5Event33_EFAC6FDC2CBBF5ADEF935F3F49BB2218LLO_GMR);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1AF00F250;
  LOBYTE(v44[0]) = 0;
  v43 = 256;
  lazy protocol witness table accessor for type AttachmentLedgerTopic.State and conformance AttachmentLedgerTopic.State();
  lazy protocol witness table accessor for type AttachmentLedgerTopic.Event and conformance AttachmentLedgerTopic.Event();
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v44[0]) = 1;
  v43 = 513;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v44[0]) = 2;
  v43 = 771;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v44[0]) = 3;
  v43 = 2;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v44[0]) = 3;
  v43 = 4;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v44[0]) = 2;
  v43 = 2;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v44[0]) = 2;
  v43 = 4;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v44[0]) = 1;
  v43 = 2;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v44[0]) = 1;
  v43 = 4;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v44[0]) = 0;
  v43 = 1029;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v44[0]) = 4;
  v43 = 1030;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v44[0]) = 4;
  v43 = 256;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v44[0]) = 4;
  v43 = 2;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v44[0]) = 4;
  v43 = 4;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v44[0]) = 3;
  v43 = 775;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v44[0]) = 3;
  v43 = 776;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v44[0]) = 3;
  v43 = 777;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v44[0]) = 3;
  v43 = 778;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v44[0]) = 3;
  v43 = 779;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v44[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore12StateMachineCy15GroupActivities21AttachmentLedgerTopicC0C0OAF5Event33_EFAC6FDC2CBBF5ADEF935F3F49BB2218LLOGMd, &_s14CopresenceCore12StateMachineCy15GroupActivities21AttachmentLedgerTopicC0C0OAF5Event33_EFAC6FDC2CBBF5ADEF935F3F49BB2218LLOGMR);
  swift_allocObject();
  *&v7[v33] = StateMachine.init(initialState:transitions:)();
  v15 = &v7[OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_retainRefOnStart];
  *v15 = 0;
  v15[1] = 0;
  *&v7[OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_retainRef] = 0;
  v16 = OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_waitingForTopicCancellables;
  v17 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v29 = MEMORY[0x1E69E7CD0];
    }

    *&v7[v16] = v29;
    if (__CocoaSet.count.getter())
    {
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v30 = MEMORY[0x1E69E7CD0];
    }

    *&v7[OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_subscribingCancellables] = v30;
    if (__CocoaSet.count.getter())
    {
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v18 = MEMORY[0x1E69E7CD0];
    }
  }

  else
  {
    v18 = MEMORY[0x1E69E7CD0];
    *&v7[OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_waitingForTopicCancellables] = MEMORY[0x1E69E7CD0];
    *&v7[OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_subscribingCancellables] = v18;
  }

  *&v7[OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_pluginTopicCancellables] = v18;
  v19 = &v7[OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_dataCryptor];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 4) = 0;
  v20 = OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic__attachments;
  *&v44[0] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14CopresenceCore10AttachmentCGMd, &_sSay14CopresenceCore10AttachmentCGMR);
  v21 = v34;
  CurrentSubject.init(wrappedValue:)();
  (*(v35 + 32))(&v7[v20], v21, v36);
  v22 = &v7[OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_retryInfo];
  *v22 = 0;
  *(v22 + 1) = 0x3FF0000000000000;
  *(v22 + 2) = 2;
  *(v22 + 3) = v17;
  v23 = v38;
  *(v7 + 2) = v37;
  *(v7 + 3) = v23;
  v24 = *v15;
  v25 = v15[1];
  v26 = v40;
  *v15 = v39;
  v15[1] = v26;
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v24, v25);
  v27 = v42;
  *(v7 + 5) = v41;
  *(v7 + 6) = v27;
  return v7;
}

unint64_t lazy protocol witness table accessor for type AttachmentLedgerTopic.State and conformance AttachmentLedgerTopic.State()
{
  result = lazy protocol witness table cache variable for type AttachmentLedgerTopic.State and conformance AttachmentLedgerTopic.State;
  if (!lazy protocol witness table cache variable for type AttachmentLedgerTopic.State and conformance AttachmentLedgerTopic.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedgerTopic.State and conformance AttachmentLedgerTopic.State);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentLedgerTopic.State and conformance AttachmentLedgerTopic.State;
  if (!lazy protocol witness table cache variable for type AttachmentLedgerTopic.State and conformance AttachmentLedgerTopic.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedgerTopic.State and conformance AttachmentLedgerTopic.State);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttachmentLedgerTopic.Event and conformance AttachmentLedgerTopic.Event()
{
  result = lazy protocol witness table cache variable for type AttachmentLedgerTopic.Event and conformance AttachmentLedgerTopic.Event;
  if (!lazy protocol witness table cache variable for type AttachmentLedgerTopic.Event and conformance AttachmentLedgerTopic.Event)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedgerTopic.Event and conformance AttachmentLedgerTopic.Event);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentLedgerTopic.Event and conformance AttachmentLedgerTopic.Event;
  if (!lazy protocol witness table cache variable for type AttachmentLedgerTopic.Event and conformance AttachmentLedgerTopic.Event)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedgerTopic.Event and conformance AttachmentLedgerTopic.Event);
  }

  return result;
}

id AttachmentLedgerTopic.subscribe(with:pendingAttachments:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = v2[4];
  [v5 lock];
  LOBYTE(v26) = 0;
  if ((dispatch thunk of StateMachine.execute(_:)() & 1) == 0)
  {
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Log.attachmentLedgerTopic);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.fault.getter();

    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_18;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v26 = v10;
    *v9 = 136315138;
    v31[0] = v3;
    type metadata accessor for AttachmentLedgerTopic(0);

    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v26);

    *(v9 + 4) = v13;
    v14 = "Can't subscribe to AttachmentLedgerTopic %s";
    goto LABEL_17;
  }

  (*v2)[43](&v29);
  if (v30)
  {
    outlined init with take of Transferable(&v29, &v26);
  }

  else
  {
    outlined init with copy of URL?(a1, &v26, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
    if (v30)
    {
      outlined destroy of NSObject?(&v29, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
    }
  }

  if (!v27)
  {
    outlined destroy of NSObject?(&v26, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Log.attachmentLedgerTopic);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_18;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v26 = v10;
    *v9 = 136315138;
    v31[0] = v3;
    type metadata accessor for AttachmentLedgerTopic(0);

    v20 = String.init<A>(reflecting:)();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v26);

    *(v9 + 4) = v22;
    v14 = "No dataCryptor existing on AttachmentLedgerTopic and none passed in %s";
LABEL_17:
    _os_log_impl(&dword_1AEE80000, v7, v8, v14, v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B2715BA0](v10, -1, -1);
    MEMORY[0x1B2715BA0](v9, -1, -1);
LABEL_18:

    return [v5 unlock];
  }

  outlined init with take of Transferable(&v26, v31);
  outlined init with copy of Transferable(v31, &v26);
  (*v2)[44](&v26);
  v15 = *(v2 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_retainRefOnStart);
  if (v15)
  {
    v16 = *(v2 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_retainRefOnStart + 8);

    v18 = v15(v17);
    outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v15, v16);
  }

  else
  {
    v18 = 0;
  }

  *(v3 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_retainRef) = v18;
  swift_unknownObjectRelease();
  v23 = outlined init with copy of Transferable(v31, &v26);
  *&v29 = (*v3)[46](v23);

  specialized Array.append<A>(contentsOf:)(v24);
  v28 = v29;
  *&v29 = (v3[5])(&v26);
  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy15GroupActivities35PluginAttachmentLedgerTopicProvider_ps5Error_pGMd, &_s7Combine12AnyPublisherVy15GroupActivities35PluginAttachmentLedgerTopicProvider_ps5Error_pGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<PluginAttachmentLedgerTopicProvider, Error> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy15GroupActivities35PluginAttachmentLedgerTopicProvider_ps5Error_pGMd, &_s7Combine12AnyPublisherVy15GroupActivities35PluginAttachmentLedgerTopicProvider_ps5Error_pGMR, MEMORY[0x1E695BED8]);
  Publisher.sink(receiveCompletion:receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  outlined destroy of AttachmentLedgerTopic.BootstrapTopicInfo(&v26);
  __swift_destroy_boxed_opaque_existential_0(v31);
  return [v5 unlock];
}

uint64_t AttachmentLedgerTopic.BootstrapTopicInfo.init(dataCryptorProvider:attachments:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = outlined init with take of Transferable(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

uint64_t closure #1 in AttachmentLedgerTopic.subscribe(with:pendingAttachments:)(void **a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoVSgMd, &_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (v31 - v4);
  v6 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    [*(result + 32) lock];
    if (v6)
    {
      if (one-time initialization token for attachmentLedgerTopic != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, static Log.attachmentLedgerTopic);

      v10 = v6;
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v31[1] = v6;
        v32 = v14;
        *v13 = 136315394;
        v15 = v6;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v16 = String.init<A>(reflecting:)();
        v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v32);

        *(v13 + 4) = v18;
        *(v13 + 12) = 2080;
        v19 = *(v8 + 16);
        v20 = *(v8 + 24);

        v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v32);

        *(v13 + 14) = v21;
        _os_log_impl(&dword_1AEE80000, v11, v12, "Failed to subscribe, error=%s, topic=%s", v13, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B2715BA0](v14, -1, -1);
        MEMORY[0x1B2715BA0](v13, -1, -1);
      }

      v22 = type metadata accessor for PluginAttachmentLedgerTopic.State.ShutdownInfo();
      (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
      AttachmentLedgerTopic.processShutdown(shutdownInfo:)(v5);
      outlined destroy of NSObject?(v5, &_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoVSgMd, &_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoVSgMR);
    }

    else
    {
      if (one-time initialization token for attachmentLedgerTopic != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      __swift_project_value_buffer(v23, static Log.attachmentLedgerTopic);

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v32 = v27;
        *v26 = 136315138;
        v28 = *(v8 + 16);
        v29 = *(v8 + 24);

        v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v32);

        *(v26 + 4) = v30;
        _os_log_impl(&dword_1AEE80000, v24, v25, "Successfully fetched plugin, topic=%s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x1B2715BA0](v27, -1, -1);
        MEMORY[0x1B2715BA0](v26, -1, -1);
      }
    }

    [*(v8 + 32) unlock];
  }

  return result;
}

void closure #2 in AttachmentLedgerTopic.subscribe(with:pendingAttachments:)(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [*(Strong + 32) lock];
    LOBYTE(v32[0]) = 1;
    if (dispatch thunk of StateMachine.execute(_:)())
    {
      v5 = a1[3];
      v6 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v5);
      v30[0] = (*(v6 + 24))(v5, v6);
      v7 = swift_allocObject();
      swift_weakInit();
      outlined init with copy of Transferable(a1, v32);
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      outlined init with take of Transferable(v32, v8 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<PluginAttachmentLedgerTopic.State, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOGMR, MEMORY[0x1E695BED8]);
      Publisher<>.sink(receiveValue:)();

      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();
    }

    else
    {
      if (one-time initialization token for attachmentLedgerTopic != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Log.attachmentLedgerTopic);

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *&v32[0] = v21;
        *v20 = 136315138;
        dispatch thunk of StateMachine.currentState.getter();
        LOBYTE(v28) = v30[0];
        v22 = String.init<A>(reflecting:)();
        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v32);

        *(v20 + 4) = v24;
        _os_log_impl(&dword_1AEE80000, v18, v19, "Failed to execute successful event, currentState: %s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x1B2715BA0](v21, -1, -1);
        MEMORY[0x1B2715BA0](v20, -1, -1);
      }
    }

    [*(v4 + 32) unlock];
  }

  else
  {
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Log.attachmentLedgerTopic);
    outlined init with copy of Transferable(a1, v32);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v31 = v13;
      *v12 = 136315138;
      outlined init with copy of Transferable(v32, v30);
      outlined init with copy of URL?(v30, &v28, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
      if (v29)
      {
        outlined init with take of Transferable(&v28, v27);
        outlined init with copy of Transferable(v27, v26);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pMR);
        v14 = String.init<A>(reflecting:)();
        v16 = v15;
        __swift_destroy_boxed_opaque_existential_0(v27);
      }

      else
      {
        v16 = 0xE300000000000000;
        v14 = 7104878;
      }

      outlined destroy of NSObject?(v30, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
      __swift_destroy_boxed_opaque_existential_0(v32);
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v31);

      *(v12 + 4) = v25;
      _os_log_impl(&dword_1AEE80000, v10, v11, "Lost reference to Topic, ignoring PluginTopic=%s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x1B2715BA0](v13, -1, -1);
      MEMORY[0x1B2715BA0](v12, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v32);
    }
  }
}

uint64_t closure #1 in closure #2 in AttachmentLedgerTopic.subscribe(with:pendingAttachments:)(uint64_t a1, uint64_t a2, void *a3)
{
  v89 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoVSgMd, &_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v78 - v5);
  v7 = type metadata accessor for PluginAttachmentLedgerTopic.State.ShutdownInfo();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v85 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PluginAttachmentLedgerTopic.State();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v78 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v78 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    v80 = a3;
    v81 = v14;
    v88 = v17;
    [*(result + 32) lock];
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    v23 = __swift_project_value_buffer(v22, static Log.attachmentLedgerTopic);
    v86 = *(v11 + 16);
    (v86)(v19, v89, v10);

    v83 = v23;
    v24 = Logger.logObject.getter();
    v25 = v21;
    v26 = v11;
    v27 = static os_log_type_t.default.getter();

    v28 = os_log_type_enabled(v24, v27);
    v87 = v25;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v84 = v8;
      v30 = v29;
      v31 = swift_slowAlloc();
      v82 = v7;
      v78 = v31;
      v90[0] = v31;
      *v30 = 136315394;

      v32 = v10;
      v33 = AttachmentLedgerTopic.description.getter();
      v79 = v6;
      v35 = v34;

      v36 = v33;
      v10 = v32;
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v35, v90);

      *(v30 + 4) = v37;
      *(v30 + 12) = 2080;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.State and conformance PluginAttachmentLedgerTopic.State, MEMORY[0x1E6997668], MEMORY[0x1E6997670]);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      v41 = v19;
      v42 = *(v26 + 8);
      v42(v41, v32);
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, v90);
      v6 = v79;

      *(v30 + 14) = v43;
      _os_log_impl(&dword_1AEE80000, v24, v27, "Topic %s observed PluginTopic's state change to %s", v30, 0x16u);
      v44 = v78;
      swift_arrayDestroy();
      v7 = v82;
      MEMORY[0x1B2715BA0](v44, -1, -1);
      v45 = v30;
      v8 = v84;
      MEMORY[0x1B2715BA0](v45, -1, -1);
    }

    else
    {

      v46 = v19;
      v42 = *(v26 + 8);
      v42(v46, v10);
    }

    v47 = v26;
    v48 = v88;
    v49 = v86;
    (v86)(v88, v89, v10);
    v50 = (*(v26 + 88))(v48, v10);
    if (v50 == *MEMORY[0x1E6997650])
    {
      (*(v26 + 96))(v48, v10);
      v51 = type metadata accessor for PluginAttachmentLedgerTopic.State.RetryInfo();
      (*(*(v51 - 8) + 8))(v48, v51);
      v52 = v87;
    }

    else
    {
      v52 = v87;
      if (v50 == *MEMORY[0x1E6997658])
      {
        (*(v47 + 96))(v48, v10);
        v53 = v85;
        (*(v8 + 32))(v85, v48, v7);
        (*(v8 + 16))(v6, v53, v7);
        (*(v8 + 56))(v6, 0, 1, v7);
        AttachmentLedgerTopic.processShutdown(shutdownInfo:)(v6);
        outlined destroy of NSObject?(v6, &_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoVSgMd, &_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoVSgMR);
        (*(v8 + 8))(v53, v7);
      }

      else if (v50 != *MEMORY[0x1E6997660])
      {
        if (v50 == *MEMORY[0x1E6997648])
        {
          LOBYTE(v90[0]) = 3;
          if (dispatch thunk of StateMachine.execute(_:)())
          {
            v54 = OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_subscribingCancellables;
            swift_beginAccess();
            *(v52 + v54) = MEMORY[0x1E69E7CD0];

            AttachmentLedgerTopic.setSubscribedPluginTopic(_:)(v80);
          }

          else
          {

            v71 = Logger.logObject.getter();
            v72 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v71, v72))
            {
              v73 = swift_slowAlloc();
              v74 = swift_slowAlloc();
              v90[0] = v74;
              *v73 = 136315138;
              dispatch thunk of StateMachine.currentState.getter();
              v91 = v92;
              v75 = String.init<A>(reflecting:)();
              v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, v90);

              *(v73 + 4) = v77;
              _os_log_impl(&dword_1AEE80000, v71, v72, "Topic state transitioned to ready state; however, the state machine wasn't in a state to handle it. currentState: %s", v73, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v74);
              MEMORY[0x1B2715BA0](v74, -1, -1);
              MEMORY[0x1B2715BA0](v73, -1, -1);
            }
          }
        }

        else if (v50 != *MEMORY[0x1E6997640])
        {
          v84 = v8;
          v55 = v81;
          (v49)(v81, v89, v10);

          v56 = Logger.logObject.getter();
          v57 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            v59 = swift_slowAlloc();
            LODWORD(v89) = v57;
            v60 = v59;
            v90[0] = v59;
            *v58 = 136315394;

            v86 = v56;
            v61 = AttachmentLedgerTopic.description.getter();
            v82 = v7;
            v63 = v62;

            v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, v90);

            *(v58 + 4) = v64;
            *(v58 + 12) = 2080;
            _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.State and conformance PluginAttachmentLedgerTopic.State, MEMORY[0x1E6997668], MEMORY[0x1E6997670]);
            v65 = dispatch thunk of CustomStringConvertible.description.getter();
            v67 = v66;
            v42(v55, v10);
            v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v67, v90);
            v7 = v82;

            *(v58 + 14) = v68;
            v69 = v86;
            _os_log_impl(&dword_1AEE80000, v86, v89, "Topic %s Hit unexpected state. state: %s", v58, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1B2715BA0](v60, -1, -1);
            v70 = v58;
            v48 = v88;
            MEMORY[0x1B2715BA0](v70, -1, -1);
          }

          else
          {

            v42(v55, v10);
          }

          (*(v84 + 56))(v6, 1, 1, v7);
          AttachmentLedgerTopic.processShutdown(shutdownInfo:)(v6);
          outlined destroy of NSObject?(v6, &_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoVSgMd, &_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoVSgMR);
          v42(v48, v10);
        }
      }
    }

    [*(v52 + 32) unlock];
  }

  return result;
}

void AttachmentLedgerTopic.processShutdown(shutdownInfo:)(void (*a1)(char *, uint64_t))
{
  v2 = v1;
  v121 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v104 - v4;
  v6 = type metadata accessor for PluginAttachmentLedgerTopic.Configuration();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoV6ReasonOSgMd, &_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoV6ReasonOSgMR);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v111 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v112 = &v104 - v13;
  v114 = type metadata accessor for PluginAttachmentLedgerTopic.State.ShutdownInfo.Reason();
  v118 = *(v114 - 8);
  v14 = MEMORY[0x1EEE9AC00](v114);
  v116 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v117 = &v104 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoVSgMd, &_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoVSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v104 - v18;
  v122 = type metadata accessor for PluginAttachmentLedgerTopic.State.ShutdownInfo();
  v120 = *(v122 - 8);
  v20 = MEMORY[0x1EEE9AC00](v122);
  v113 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v119 = &v104 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgGMR);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v104 - v25;
  v27 = *(v1 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_stateMachine);
  LOBYTE(v125) = 4;
  v115 = v27;
  if ((dispatch thunk of StateMachine.execute(_:)() & 1) == 0)
  {
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Log.attachmentLedgerTopic);

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.fault.getter();

    if (!os_log_type_enabled(v39, v40))
    {
      goto LABEL_31;
    }

    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *&v125 = v42;
    *v41 = 136315138;
    v43 = AttachmentLedgerTopic.description.getter();
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v125);

    *(v41 + 4) = v45;
    v46 = "Not able to process pluginShutdown on %s. We should *ALWAYS* be able to process a shutdown as it can happen at anytime";
    goto LABEL_30;
  }

  v107 = v9;
  v108 = v7;
  v109 = v6;
  v110 = v5;
  v28 = OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_waitingForTopicCancellables;
  swift_beginAccess();
  v29 = MEMORY[0x1E69E7CD0];
  *(v2 + v28) = MEMORY[0x1E69E7CD0];

  v30 = OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_subscribingCancellables;
  swift_beginAccess();
  *(v2 + v30) = v29;

  v31 = OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_pluginTopicCancellables;
  swift_beginAccess();
  *(v2 + v31) = v29;

  v127 = 0;
  v125 = 0u;
  v126 = 0u;
  v32 = OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic__topic;
  v33 = *(v24 + 16);
  v33(v26, v2 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic__topic, v23);
  CurrentSubject.wrappedValue.getter();
  v34 = *(v24 + 8);
  v34(v26, v23);
  v33(v26, v2 + v32, v23);
  outlined init with copy of URL?(&v125, v123, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
  CurrentSubject.wrappedValue.setter();
  v34(v26, v23);
  AttachmentLedgerTopic.topic.didset(v124);
  outlined destroy of NSObject?(v124, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
  outlined destroy of NSObject?(&v125, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
  *(v2 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_retainRef) = 0;
  swift_unknownObjectRelease();
  outlined init with copy of URL?(v121, v19, &_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoVSgMd, &_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoVSgMR);
  v35 = v120;
  v36 = v122;
  if ((*(v120 + 48))(v19, 1, v122) == 1)
  {
    v37 = outlined destroy of NSObject?(v19, &_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoVSgMd, &_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoVSgMR);
  }

  else
  {
    v47 = v119;
    (*(v35 + 32))(v119, v19, v36);
    v48 = v117;
    PluginAttachmentLedgerTopic.State.ShutdownInfo.reason.getter();
    v49 = v118;
    v50 = v116;
    v51 = v114;
    (*(v118 + 104))(v116, *MEMORY[0x1E6997628], v114);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.State.ShutdownInfo.Reason and conformance PluginAttachmentLedgerTopic.State.ShutdownInfo.Reason, MEMORY[0x1E6997630], MEMORY[0x1E6997638]);
    v52 = dispatch thunk of static Equatable.== infix(_:_:)();
    v53 = *(v49 + 8);
    v53(v50, v51);
    v121 = v53;
    v53(v48, v51);
    if (v52)
    {
      v37 = (*(v35 + 8))(v47, v36);
    }

    else
    {
      if (one-time initialization token for attachmentLedgerTopic != -1)
      {
        swift_once();
      }

      v54 = type metadata accessor for Logger();
      __swift_project_value_buffer(v54, static Log.attachmentLedgerTopic);
      v55 = v113;
      (*(v35 + 16))(v113, v47, v36);

      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v56, v57))
      {
        v106 = v57;
        v58 = swift_slowAlloc();
        v59 = v118;
        v60 = v58;
        v105 = swift_slowAlloc();
        *&v125 = v105;
        *v60 = 136315394;
        v61 = v112;
        PluginAttachmentLedgerTopic.State.ShutdownInfo.reason.getter();
        (*(v59 + 56))(v61, 0, 1, v51);
        v62 = v111;
        outlined init with copy of URL?(v61, v111, &_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoV6ReasonOSgMd, &_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoV6ReasonOSgMR);
        if ((*(v59 + 48))(v62, 1, v51) == 1)
        {
          v63 = 0xE300000000000000;
          v64 = 7104878;
        }

        else
        {
          v67 = v117;
          (*(v59 + 32))(v117, v62, v51);
          (*(v59 + 16))(v116, v67, v51);
          v64 = String.init<A>(reflecting:)();
          v63 = v68;
          v121(v67, v51);
        }

        outlined destroy of NSObject?(v61, &_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoV6ReasonOSgMd, &_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoV6ReasonOSgMR);
        v65 = *(v35 + 8);
        v66 = v122;
        v65(v113, v122);
        v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v63, &v125);

        *(v60 + 4) = v69;
        *(v60 + 12) = 2080;
        v70 = AttachmentLedgerTopic.description.getter();
        v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v71, &v125);

        *(v60 + 14) = v72;
        _os_log_impl(&dword_1AEE80000, v56, v106, "Processing shutdown with reason: %s on topic %s", v60, 0x16u);
        v73 = v105;
        swift_arrayDestroy();
        MEMORY[0x1B2715BA0](v73, -1, -1);
        MEMORY[0x1B2715BA0](v60, -1, -1);
      }

      else
      {

        v65 = *(v35 + 8);
        v65(v55, v36);
        v66 = v36;
      }

      v74 = (*(*v2 + 416))(&v125);
      v76 = v75;
      v77 = v107;
      v78 = v119;
      PluginAttachmentLedgerTopic.State.ShutdownInfo.config.getter();
      v79 = PluginAttachmentLedgerTopic.Configuration.maxSubscribeRetries.getter();
      (*(v108 + 8))(v77, v109);
      *(v76 + 16) = v79;
      v80 = PluginAttachmentLedgerTopic.State.ShutdownInfo.pendingAttachments.getter();
      specialized Sequence.forEach(_:)(v80, v76);

      v74(&v125, 0);
      v37 = (v65)(v78, v66);
    }
  }

  v81 = (*v2 + 400);
  v82 = *v81;
  v83 = (*v81)(v37);

  (v82)(v84);
  v86 = v85;

  if (v83 >= v86)
  {
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v93 = type metadata accessor for Logger();
    __swift_project_value_buffer(v93, static Log.attachmentLedgerTopic);

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v39, v40))
    {
      goto LABEL_31;
    }

    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v124[0] = v42;
    *v41 = 136315138;
    *&v125 = v82();
    *(&v125 + 1) = v94;
    *&v126 = v95;
    *(&v126 + 1) = v96;
    v97 = String.init<A>(reflecting:)();
    v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v98, v124);

    *(v41 + 4) = v99;
    v46 = "Not retrying as we've exceeded the maximum amount of retries (%s";
    goto LABEL_30;
  }

  LOBYTE(v125) = 5;
  if (dispatch thunk of StateMachine.execute(_:)())
  {
    v87 = type metadata accessor for TaskPriority();
    v88 = v110;
    (*(*(v87 - 8) + 56))(v110, 1, 1, v87);
    v89 = swift_allocObject();
    v90 = swift_weakInit();
    v91 = (v82)(v90);

    v92 = swift_allocObject();
    v92[2] = 0.0;
    v92[3] = 0.0;
    *(v92 + 4) = v89;
    v92[5] = v91;
    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v88, &async function pointer to partial apply for closure #1 in AttachmentLedgerTopic.processShutdown(shutdownInfo:), v92);

    return;
  }

  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v100 = type metadata accessor for Logger();
  __swift_project_value_buffer(v100, static Log.attachmentLedgerTopic);

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *&v125 = v42;
    *v41 = 136315138;
    v101 = AttachmentLedgerTopic.description.getter();
    v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v102, &v125);

    *(v41 + 4) = v103;
    v46 = "%s Not staging a retry attempt due to invalid state.";
LABEL_30:
    _os_log_impl(&dword_1AEE80000, v39, v40, v46, v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x1B2715BA0](v42, -1, -1);
    MEMORY[0x1B2715BA0](v41, -1, -1);
  }

LABEL_31:
}

uint64_t closure #1 in AttachmentLedgerTopic.processShutdown(shutdownInfo:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 152) = a1;
  *(v5 + 144) = a5;
  v6 = type metadata accessor for ContinuousClock();
  *(v5 + 160) = v6;
  *(v5 + 168) = *(v6 - 8);
  *(v5 + 176) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in AttachmentLedgerTopic.processShutdown(shutdownInfo:), 0, 0);
}

uint64_t closure #1 in AttachmentLedgerTopic.processShutdown(shutdownInfo:)()
{
  v18 = v0;
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[23] = __swift_project_value_buffer(v1, static Log.attachmentLedgerTopic);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v17 = v5;
    *v4 = 136315394;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v0[17] = Strong;
      type metadata accessor for AttachmentLedgerTopic(0);
      v7 = String.init<A>(reflecting:)();
      v9 = v8;
    }

    else
    {
      v9 = 0xE300000000000000;
      v7 = 7104878;
    }

    v10 = v0[19];
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, &v17);

    *(v4 + 4) = v11;
    *(v4 + 12) = 2048;
    *(v4 + 14) = v10;
    _os_log_impl(&dword_1AEE80000, v2, v3, "%s Waiting %f seconds to retry.", v4, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B2715BA0](v5, -1, -1);
    MEMORY[0x1B2715BA0](v4, -1, -1);
  }

  v12 = static Duration.seconds(_:)();
  v14 = v13;
  static Clock<>.continuous.getter();
  v15 = swift_task_alloc();
  v0[24] = v15;
  *v15 = v0;
  v15[1] = closure #1 in AttachmentLedgerTopic.processShutdown(shutdownInfo:);

  return specialized Clock.sleep(for:tolerance:)(v12, v14, 0, 0, 1);
}

{
  v2 = *(*v1 + 176);
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 160);
  *(*v1 + 200) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = closure #1 in AttachmentLedgerTopic.processShutdown(shutdownInfo:);
  }

  else
  {
    v5 = closure #1 in AttachmentLedgerTopic.processShutdown(shutdownInfo:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t (*closure #1 in AttachmentLedgerTopic.processShutdown(shutdownInfo:)())(uint64_t, void)
{
  v25 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v24 = v6;
      *v5 = 136315138;

      v7 = AttachmentLedgerTopic.description.getter();
      v9 = v8;

      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, &v24);

      *(v5 + 4) = v10;
      _os_log_impl(&dword_1AEE80000, v3, v4, "%s Done waiting, retrying.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x1B2715BA0](v6, -1, -1);
      MEMORY[0x1B2715BA0](v5, -1, -1);
    }

    *(v0 + 208) = 6;
    if (dispatch thunk of StateMachine.execute(_:)())
    {
      result = (*(*v2 + 416))(v0 + 56);
      if (__OFADD__(*v12, 1))
      {
        __break(1u);
        return result;
      }

      ++*v12;
      v13 = result(v0 + 56, 0);
      *(v0 + 48) = 0;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
      (*(*v2 + 400))(v13);
      (*(*v2 + 432))(v0 + 16, v14);

      outlined destroy of NSObject?(v0 + 16, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
    }

    else
    {

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v24 = v18;
        *v17 = 136315138;

        v19 = AttachmentLedgerTopic.description.getter();
        v21 = v20;

        v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v24);

        *(v17 + 4) = v22;
        _os_log_impl(&dword_1AEE80000, v15, v16, "%s not retrying due to invalid state.", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v18);
        MEMORY[0x1B2715BA0](v18, -1, -1);
        MEMORY[0x1B2715BA0](v17, -1, -1);
      }
    }
  }

  v23 = *(v0 + 8);

  return v23();
}

Swift::Void __swiftcall AttachmentLedgerTopic.unsubscribe()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgGMR);
  MEMORY[0x1EEE9AC00](v2);
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.attachmentLedgerTopic);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17[0] = v13;
    *v6 = 136315138;
    v7 = AttachmentLedgerTopic.description.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, v17);

    *(v6 + 4) = v9;
    _os_log_impl(&dword_1AEE80000, v4, v5, "Received request to unsubscribe topic %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1B2715BA0](v13, -1, -1);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  v10 = *(v0 + 32);
  [*(v1 + 32) lock];
  [v10 unlock];
  outlined init with copy of URL?(v17, v14, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
  v11 = v15;
  if (v15)
  {
    v12 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    (*(v12 + 40))(v11, v12);
    outlined destroy of NSObject?(v17, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    outlined destroy of NSObject?(v17, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
    outlined destroy of NSObject?(v14, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
  }
}

double closure #1 in AttachmentLedgerTopic.unsubscribe()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v39 = &v36 - v6;
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v8 = __swift_project_value_buffer(v7, static Log.attachmentLedgerTopic);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v38 = v8;
    v12 = v11;
    v37 = swift_slowAlloc();
    *&v42[0] = v37;
    *v12 = 136315138;
    v13 = AttachmentLedgerTopic.description.getter();
    v15 = v5;
    v16 = v4;
    v17 = a2;
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v42);

    *(v12 + 4) = v18;
    a2 = v17;
    v4 = v16;
    v5 = v15;
    _os_log_impl(&dword_1AEE80000, v9, v10, "Processing request to unsubscribe topic %s", v12, 0xCu);
    v19 = v37;
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x1B2715BA0](v19, -1, -1);
    MEMORY[0x1B2715BA0](v12, -1, -1);
  }

  LOBYTE(v42[0]) = 2;
  if (dispatch thunk of StateMachine.execute(_:)())
  {
    v20 = OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_waitingForTopicCancellables;
    swift_beginAccess();
    v21 = MEMORY[0x1E69E7CD0];
    *(a1 + v20) = MEMORY[0x1E69E7CD0];

    v22 = OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_subscribingCancellables;
    swift_beginAccess();
    *(a1 + v22) = v21;

    v23 = OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_pluginTopicCancellables;
    swift_beginAccess();
    *(a1 + v23) = v21;

    v24 = OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic__topic;
    v25 = *(v5 + 16);
    v26 = v39;
    v25(v39, a1 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic__topic, v4);
    CurrentSubject.wrappedValue.getter();
    v27 = *(v5 + 8);
    v27(v26, v4);
    v43 = 0;
    memset(v42, 0, sizeof(v42));
    v25(v26, a1 + v24, v4);
    CurrentSubject.wrappedValue.getter();
    v27(v26, v4);
    v25(v26, a1 + v24, v4);
    outlined init with copy of URL?(v42, v40, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
    CurrentSubject.wrappedValue.setter();
    v27(v26, v4);
    AttachmentLedgerTopic.topic.didset(v41);
    outlined destroy of NSObject?(v41, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
    outlined destroy of NSObject?(v42, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
    *(a1 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_retainRef) = 0;
    swift_unknownObjectRelease();
  }

  else
  {

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v42[0] = v32;
      *v31 = 136315138;
      v33 = AttachmentLedgerTopic.description.getter();
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, v42);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_1AEE80000, v29, v30, "Invalid state, can't unsubscribe topic: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x1B2715BA0](v32, -1, -1);
      MEMORY[0x1B2715BA0](v31, -1, -1);
    }

    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t AttachmentLedgerTopic.setSubscribedPluginTopic(_:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO4DropVy_AA12AnyPublisherVy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOGGMd, &_s7Combine10PublishersO4DropVy_AA12AnyPublisherVy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOGGMR);
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgGMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - v9;
  outlined init with copy of Transferable(a1, v31);
  v11 = OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic__topic;
  v12 = *(v8 + 16);
  v12(v10, v2 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic__topic, v7);
  CurrentSubject.wrappedValue.getter();
  v13 = *(v8 + 8);
  v13(v10, v7);
  v12(v10, v2 + v11, v7);
  outlined init with copy of URL?(v31, v29, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
  CurrentSubject.wrappedValue.setter();
  v13(v10, v7);
  AttachmentLedgerTopic.topic.didset(v30);
  outlined destroy of NSObject?(v30, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
  outlined destroy of NSObject?(v31, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Log.attachmentLedgerTopic);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v31[0] = v18;
    *v17 = 136315138;
    v19 = AttachmentLedgerTopic.description.getter();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v31);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_1AEE80000, v15, v16, "Topic %s successfully subscribed and updated Topic!", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x1B2715BA0](v18, -1, -1);
    MEMORY[0x1B2715BA0](v17, -1, -1);
  }

  (*(*v2 + 408))(0, 2, MEMORY[0x1E69E7CC0], 1.0);
  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v31[0] = (*(v23 + 24))(v22, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<PluginAttachmentLedgerTopic.State, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOGMR, MEMORY[0x1E695BED8]);
  Publisher.dropFirst(_:)();

  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Drop<AnyPublisher<PluginAttachmentLedgerTopic.State, Never>> and conformance Publishers.Drop<A>, &_s7Combine10PublishersO4DropVy_AA12AnyPublisherVy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOGGMd, &_s7Combine10PublishersO4DropVy_AA12AnyPublisherVy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOGGMR, MEMORY[0x1E695BD78]);
  v24 = v28;
  Publisher<>.sink(receiveValue:)();

  (*(v27 + 8))(v6, v24);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t closure #1 in AttachmentLedgerTopic.setSubscribedPluginTopic(_:)(uint64_t a1, uint64_t a2)
{
  v66 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoVSgMd, &_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v56 - v3);
  v5 = type metadata accessor for PluginAttachmentLedgerTopic.State.ShutdownInfo();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v64 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PluginAttachmentLedgerTopic.State();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v56 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v56 - v16;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v67 = result;
  if (result)
  {
    v61 = v12;
    v65 = v15;
    [*(v67 + 32) lock];
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    v20 = __swift_project_value_buffer(v19, static Log.attachmentLedgerTopic);
    v63 = *(v9 + 16);
    v63(v17, v66, v8);
    v59 = v20;
    v21 = v9;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v58 = v4;
      v25 = v24;
      v57 = swift_slowAlloc();
      v68 = v57;
      *v25 = 136315138;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.State and conformance PluginAttachmentLedgerTopic.State, MEMORY[0x1E6997668], MEMORY[0x1E6997670]);
      v26 = v21;
      v56 = v21;
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = v6;
      v28 = v5;
      v30 = v29;
      v60 = *(v26 + 8);
      v60(v17, v8);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v30, &v68);
      v5 = v28;
      v6 = v62;

      *(v25 + 4) = v31;
      _os_log_impl(&dword_1AEE80000, v22, v23, "Observed topic change to state %s", v25, 0xCu);
      v32 = v57;
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x1B2715BA0](v32, -1, -1);
      v33 = v25;
      v4 = v58;
      MEMORY[0x1B2715BA0](v33, -1, -1);

      v34 = v56;
    }

    else
    {

      v60 = *(v21 + 8);
      v60(v17, v8);
      v34 = v21;
    }

    v35 = v65;
    v36 = v63;
    v63(v65, v66, v8);
    v37 = (*(v34 + 88))(v35, v8);
    if (v37 == *MEMORY[0x1E6997658])
    {
      (*(v34 + 96))(v35, v8);
      v38 = v64;
      (*(v6 + 32))(v64, v35, v5);
      (*(v6 + 16))(v4, v38, v5);
      (*(v6 + 56))(v4, 0, 1, v5);
      AttachmentLedgerTopic.processShutdown(shutdownInfo:)(v4);
      outlined destroy of NSObject?(v4, &_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoVSgMd, &_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoVSgMR);
      (*(v6 + 8))(v38, v5);
    }

    else if (v37 != *MEMORY[0x1E6997660] && v37 != *MEMORY[0x1E6997648] && v37 != *MEMORY[0x1E6997640])
    {
      v62 = v6;
      v64 = v5;
      v39 = v61;
      v36(v61, v66, v8);

      v40 = v8;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v68 = v44;
        *v43 = 136315394;

        LODWORD(v66) = v42;
        v45 = AttachmentLedgerTopic.description.getter();
        v47 = v46;

        v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, &v68);

        *(v43 + 4) = v48;
        *(v43 + 12) = 2080;
        _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.State and conformance PluginAttachmentLedgerTopic.State, MEMORY[0x1E6997668], MEMORY[0x1E6997670]);
        v49 = dispatch thunk of CustomStringConvertible.description.getter();
        v51 = v50;
        v52 = v39;
        v53 = v60;
        v60(v52, v40);
        v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &v68);

        *(v43 + 14) = v54;
        v35 = v65;
        _os_log_impl(&dword_1AEE80000, v41, v66, "Topic %s Hit unexpected state. state: %s", v43, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B2715BA0](v44, -1, -1);
        MEMORY[0x1B2715BA0](v43, -1, -1);
      }

      else
      {

        v55 = v39;
        v53 = v60;
        v60(v55, v40);
      }

      (*(v62 + 56))(v4, 1, 1, v64);
      AttachmentLedgerTopic.processShutdown(shutdownInfo:)(v4);
      outlined destroy of NSObject?(v4, &_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoVSgMd, &_s14CopresenceCore27PluginAttachmentLedgerTopicC5StateO12ShutdownInfoVSgMR);
      v53(v35, v40);
    }

    [*(v67 + 32) unlock];
  }

  return result;
}

uint64_t AttachmentLedgerTopic.deinit()
{

  v1 = OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic__topic;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(*(v0 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_retainRefOnStart), *(v0 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_retainRefOnStart + 8));
  swift_unknownObjectRelease();

  outlined destroy of NSObject?(v0 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_dataCryptor, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
  v3 = OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic__attachments;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySayAA10AttachmentCGGMd, &_s14CopresenceCore14CurrentSubjectVySayAA10AttachmentCGGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t AttachmentLedgerTopic.__deallocating_deinit()
{
  AttachmentLedgerTopic.deinit();

  return swift_deallocClassInstance();
}

uint64_t AttachmentLedgerTopic.fetchTopic(function:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AttachmentLedgerTopic.fetchTopic(function:line:), 0, 0);
}

uint64_t AttachmentLedgerTopic.fetchTopic(function:line:)()
{
  v18 = v0;
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[6];
  v6 = *(v2 + 32);
  [v6 lock];
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;
  v8[5] = v5;
  v8[6] = v3;
  v8[7] = v4;

  v9 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC15GroupActivities35PluginAttachmentLedgerTopicProvider_p_Tt2g5(0, 0, v1, &async function pointer to partial apply for closure #1 in closure #1 in AttachmentLedgerTopic.fetchTopic(function:line:), v8);
  v0[11] = v9;
  type metadata accessor for AnyCancellable();
  swift_allocObject();

  v10 = AnyCancellable.init(_:)();
  swift_beginAccess();
  specialized Set._Variant.insert(_:)(&v17, v10);
  swift_endAccess();

  [v6 unlock];
  v11 = swift_task_alloc();
  v0[12] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pMR);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v11 = v0;
  v11[1] = AttachmentLedgerTopic.fetchTopic(function:line:);
  v14 = v0[5];
  v15 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v14, v9, v12, v13, v15);
}

{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = AttachmentLedgerTopic.fetchTopic(function:line:);
  }

  else
  {
    v2 = AttachmentLedgerTopic.fetchTopic(function:line:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in closure #1 in AttachmentLedgerTopic.fetchTopic(function:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[43] = a6;
  v7[44] = a7;
  v7[41] = a4;
  v7[42] = a5;
  v7[40] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgs5NeverOGGMR);
  v7[45] = v8;
  v7[46] = *(v8 - 8);
  v7[47] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgGMR);
  v7[48] = v9;
  v7[49] = *(v9 - 8);
  v7[50] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgs5NeverOG_GMR);
  v7[51] = v10;
  v7[52] = *(v10 - 8);
  v7[53] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in AttachmentLedgerTopic.fetchTopic(function:line:), 0, 0);
}

uint64_t closure #1 in closure #1 in AttachmentLedgerTopic.fetchTopic(function:line:)()
{
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[47];
  v4 = v0[48];
  v5 = v0[45];
  v6 = v0[46];
  (*(v2 + 16))(v1, v0[41] + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic__topic, v4);
  v7 = CurrentSubject.projectedValue.getter();
  (*(v2 + 8))(v1, v4);
  v0[37] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgs5NeverOGMR);
  v9 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<PluginAttachmentLedgerTopicProvider?, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgs5NeverOGMR, MEMORY[0x1E695BFB0]);
  MEMORY[0x1B2713ED0](v8, v9);

  AsyncPublisher.makeAsyncIterator()();
  (*(v6 + 8))(v3, v5);
  v10 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<PluginAttachmentLedgerTopicProvider?, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgs5NeverOG_GMR, MEMORY[0x1E695BF38]);
  v11 = swift_task_alloc();
  v0[54] = v11;
  *v11 = v0;
  v11[1] = closure #1 in closure #1 in AttachmentLedgerTopic.fetchTopic(function:line:);
  v12 = v0[51];

  return MEMORY[0x1EEE6D8C8](v0 + 2, v12, v10);
}

{
  *(*v1 + 440) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #1 in AttachmentLedgerTopic.fetchTopic(function:line:);
  }

  else
  {
    v2 = closure #1 in closure #1 in AttachmentLedgerTopic.fetchTopic(function:line:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in AttachmentLedgerTopic.fetchTopic(function:line:), 0, 0);
}

{
  v35 = v0;
  if (*(v0 + 40) == 1)
  {
    (*(*(v0 + 416) + 8))(*(v0 + 424), *(v0 + 408));
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Log.attachmentLedgerTopic);

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 344);
      v5 = *(v0 + 352);
      v6 = *(v0 + 336);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v34[0] = v8;
      *v7 = 136315650;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v4, v34);
      *(v7 + 12) = 2048;
      *(v7 + 14) = v5;
      *(v7 + 22) = 2080;
      v9 = AttachmentLedgerTopic.description.getter();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v34);

      *(v7 + 24) = v11;
      _os_log_impl(&dword_1AEE80000, v2, v3, "%s:%ld Received signal that there will be no more topics on %s", v7, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v8, -1, -1);
      MEMORY[0x1B2715BA0](v7, -1, -1);
    }

    type metadata accessor for CancellationError();
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();

    v12 = *(v0 + 8);
    goto LABEL_17;
  }

  v13 = *(v0 + 32);
  *(v0 + 56) = *(v0 + 16);
  *(v0 + 72) = v13;
  *(v0 + 88) = *(v0 + 48);
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Log.attachmentLedgerTopic);
  outlined init with copy of URL?(v0 + 56, v0 + 96, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = *(v0 + 344);
    v18 = *(v0 + 352);
    v19 = *(v0 + 336);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *(v0 + 312) = v21;
    *v20 = 136315906;
    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v17, (v0 + 312));
    *(v20 + 12) = 2048;
    *(v20 + 14) = v18;
    *(v20 + 22) = 2080;
    outlined init with copy of URL?(v0 + 96, v0 + 176, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
    if (*(v0 + 200))
    {
      outlined init with take of Transferable((v0 + 176), v0 + 216);
      outlined init with copy of Transferable(v0 + 216, v0 + 256);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pMR);
      v22 = String.init<A>(reflecting:)();
      v24 = v23;
      __swift_destroy_boxed_opaque_existential_0((v0 + 216));
    }

    else
    {
      v24 = 0xE300000000000000;
      v22 = 7104878;
    }

    outlined destroy of NSObject?(v0 + 96, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, (v0 + 312));

    *(v20 + 24) = v25;
    *(v20 + 32) = 2080;
    v26 = AttachmentLedgerTopic.description.getter();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, (v0 + 312));

    *(v20 + 34) = v28;
    _os_log_impl(&dword_1AEE80000, v15, v16, "%s:%ld Received updated topic: %s on %s", v20, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v21, -1, -1);
    MEMORY[0x1B2715BA0](v20, -1, -1);
  }

  else
  {

    outlined destroy of NSObject?(v0 + 96, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
  }

  *(v0 + 168) = *(v0 + 88);
  *(v0 + 152) = *(v0 + 72);
  *(v0 + 136) = *(v0 + 56);
  if (*(v0 + 160))
  {
    v29 = *(v0 + 320);
    (*(*(v0 + 416) + 8))(*(v0 + 424), *(v0 + 408));
    outlined init with take of Transferable((v0 + 136), v29);

    v12 = *(v0 + 8);
LABEL_17:

    return v12();
  }

  outlined destroy of NSObject?(v0 + 136, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
  v31 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<PluginAttachmentLedgerTopicProvider?, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgs5NeverOG_GMR, MEMORY[0x1E695BF38]);
  v32 = swift_task_alloc();
  *(v0 + 432) = v32;
  *v32 = v0;
  v32[1] = closure #1 in closure #1 in AttachmentLedgerTopic.fetchTopic(function:line:);
  v33 = *(v0 + 408);

  return MEMORY[0x1EEE6D8C8](v0 + 16, v33, v31);
}

{
  *(v0 + 304) = *(v0 + 440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

void closure #2 in closure #1 in AttachmentLedgerTopic.fetchTopic(function:line:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);

  JUMPOUT(0x1B27144E0);
}

uint64_t AttachmentLedgerTopic.requestUploadToken()(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](AttachmentLedgerTopic.requestUploadToken(), 0, 0);
}

uint64_t AttachmentLedgerTopic.requestUploadToken()()
{
  v12 = v0;
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 72) = __swift_project_value_buffer(v1, static Log.attachmentLedgerTopic);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v6 = AttachmentLedgerTopic.description.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1AEE80000, v2, v3, "Received request for uploadToken %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B2715BA0](v5, -1, -1);
    MEMORY[0x1B2715BA0](v4, -1, -1);
  }

  v9 = swift_task_alloc();
  *(v0 + 80) = v9;
  *v9 = v0;
  v9[1] = AttachmentLedgerTopic.requestUploadToken();

  return AttachmentLedgerTopic.fetchTopic(function:line:)(v0 + 16, 0xD000000000000014, 0x80000001AF01B6D0, 345);
}

{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = AttachmentLedgerTopic.requestUploadToken();
  }

  else
  {
    v2 = AttachmentLedgerTopic.requestUploadToken();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v16 = v0;
  *(v0 + 112) = 7;
  if (dispatch thunk of StateMachine.execute(_:)())
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
    v14 = (*(v2 + 48) + **(v2 + 48));
    v3 = swift_task_alloc();
    *(v0 + 96) = v3;
    *v3 = v0;
    v3[1] = AttachmentLedgerTopic.requestUploadToken();
    v4 = *(v0 + 56);

    return v14(v4, v1, v2);
  }

  else
  {

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136315138;
      v10 = AttachmentLedgerTopic.description.getter();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v15);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1AEE80000, v6, v7, "Dropping request for uploadToken because state of AttachmentLedgerTopic is invalid %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x1B2715BA0](v9, -1, -1);
      MEMORY[0x1B2715BA0](v8, -1, -1);
    }

    lazy protocol witness table accessor for type AttachmentLedgerTopic.Errors and conformance AttachmentLedgerTopic.Errors();
    swift_allocError();
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v13 = *(v0 + 8);

    return v13();
  }
}

{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = AttachmentLedgerTopic.requestUploadToken();
  }

  else
  {
    v2 = AttachmentLedgerTopic.requestUploadToken();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t AttachmentLedgerTopic.refreshUploadToken()(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](AttachmentLedgerTopic.refreshUploadToken(), 0, 0);
}

uint64_t AttachmentLedgerTopic.refreshUploadToken()()
{
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 72) = __swift_project_value_buffer(v1, static Log.attachmentLedgerTopic);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1AEE80000, v2, v3, "Received request to refresh uploadToken", v4, 2u);
    MEMORY[0x1B2715BA0](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = AttachmentLedgerTopic.refreshUploadToken();

  return AttachmentLedgerTopic.fetchTopic(function:line:)(v0 + 16, 0xD000000000000014, 0x80000001AF01B6F0, 357);
}

{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = AttachmentLedgerTopic.refreshUploadToken();
  }

  else
  {
    v2 = AttachmentLedgerTopic.refreshUploadToken();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v16 = v0;
  *(v0 + 112) = 8;
  if (dispatch thunk of StateMachine.execute(_:)())
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
    v14 = (*(v2 + 56) + **(v2 + 56));
    v3 = swift_task_alloc();
    *(v0 + 96) = v3;
    *v3 = v0;
    v3[1] = AttachmentLedgerTopic.refreshUploadToken();
    v4 = *(v0 + 56);

    return v14(v4, v1, v2);
  }

  else
  {

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136315138;
      v10 = AttachmentLedgerTopic.description.getter();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v15);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1AEE80000, v6, v7, "Dropping to refresh uploadToken because state of AttachmentLedgerTopic is invalid %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x1B2715BA0](v9, -1, -1);
      MEMORY[0x1B2715BA0](v8, -1, -1);
    }

    lazy protocol witness table accessor for type AttachmentLedgerTopic.Errors and conformance AttachmentLedgerTopic.Errors();
    swift_allocError();
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v13 = *(v0 + 8);

    return v13();
  }
}

{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = AttachmentLedgerTopic.refreshUploadToken();
  }

  else
  {
    v2 = AttachmentLedgerTopic.refreshUploadToken();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

{
  return (*(v0 + 8))();
}

{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t AttachmentLedgerTopic.requestDownloadToken(for:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = type metadata accessor for UUID();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AttachmentLedgerTopic.requestDownloadToken(for:), 0, 0);
}

uint64_t AttachmentLedgerTopic.requestDownloadToken(for:)()
{
  v21 = v0;
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[8];
  v5 = type metadata accessor for Logger();
  v0[13] = __swift_project_value_buffer(v5, static Log.attachmentLedgerTopic);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[10];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v20);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1AEE80000, v6, v7, "Received request for downloadToken on attachment: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1B2715BA0](v13, -1, -1);
    MEMORY[0x1B2715BA0](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = swift_task_alloc();
  v0[14] = v18;
  *v18 = v0;
  v18[1] = AttachmentLedgerTopic.requestDownloadToken(for:);

  return AttachmentLedgerTopic.fetchTopic(function:line:)((v0 + 2), 0xD00000000000001ALL, 0x80000001AF01B710, 369);
}

{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = AttachmentLedgerTopic.requestDownloadToken(for:);
  }

  else
  {
    v2 = AttachmentLedgerTopic.requestDownloadToken(for:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v17 = v0;
  *(v0 + 144) = 7;
  if (dispatch thunk of StateMachine.execute(_:)())
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
    v15 = (*(v2 + 64) + **(v2 + 64));
    v3 = swift_task_alloc();
    *(v0 + 128) = v3;
    *v3 = v0;
    v3[1] = AttachmentLedgerTopic.requestDownloadToken(for:);
    v4 = *(v0 + 56);
    v5 = *(v0 + 64);

    return v15(v4, v5, v1, v2);
  }

  else
  {

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136315138;
      v11 = AttachmentLedgerTopic.description.getter();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v16);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1AEE80000, v7, v8, "Dropping request for downloadToken because state machine of AttachmentLedgerTopic is invalid %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x1B2715BA0](v10, -1, -1);
      MEMORY[0x1B2715BA0](v9, -1, -1);
    }

    lazy protocol witness table accessor for type AttachmentLedgerTopic.Errors and conformance AttachmentLedgerTopic.Errors();
    swift_allocError();
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v14 = *(v0 + 8);

    return v14();
  }
}

{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = AttachmentLedgerTopic.requestDownloadToken(for:);
  }

  else
  {
    v2 = AttachmentLedgerTopic.requestDownloadToken(for:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AttachmentLedgerTopic.UploadRequest.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AttachmentLedgerTopic.UploadRequest.id.setter(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AttachmentLedgerTopic.UploadRequest.key.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AttachmentLedgerTopic.UploadRequest(0) + 20);
  v4 = type metadata accessor for SymmetricKey();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AttachmentLedgerTopic.UploadRequest.key.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedgerTopic.UploadRequest(0) + 20);
  v4 = type metadata accessor for SymmetricKey();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AttachmentLedgerTopic.UploadRequest.assetSkeleton.getter()
{
  v1 = v0 + *(type metadata accessor for AttachmentLedgerTopic.UploadRequest(0) + 24);
  v2 = *v1;
  outlined copy of Data._Representation(*v1, *(v1 + 8));
  return v2;
}

uint64_t AttachmentLedgerTopic.UploadRequest.assetSkeleton.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for AttachmentLedgerTopic.UploadRequest(0) + 24);
  result = outlined consume of Data._Representation(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t AttachmentLedgerTopic.UploadRequest.developerMetadata.getter()
{
  v1 = v0 + *(type metadata accessor for AttachmentLedgerTopic.UploadRequest(0) + 28);
  v2 = *v1;
  outlined copy of Data?(*v1, *(v1 + 8));
  return v2;
}

uint64_t AttachmentLedgerTopic.UploadRequest.developerMetadata.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for AttachmentLedgerTopic.UploadRequest(0) + 28);
  result = outlined consume of Data?(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t AttachmentLedgerTopic.UploadRequest.storageLocation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AttachmentLedgerTopic.UploadRequest(0) + 32);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AttachmentLedgerTopic.UploadRequest.storageLocation.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedgerTopic.UploadRequest(0) + 32);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AttachmentLedgerTopic.UploadRequest.fileHash.getter()
{
  v1 = v0 + *(type metadata accessor for AttachmentLedgerTopic.UploadRequest(0) + 36);
  v2 = *v1;
  outlined copy of Data._Representation(*v1, *(v1 + 8));
  return v2;
}

uint64_t AttachmentLedgerTopic.UploadRequest.fileHash.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for AttachmentLedgerTopic.UploadRequest(0) + 36);
  result = outlined consume of Data._Representation(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t AttachmentLedgerTopic.UploadRequest.refSignature.getter()
{
  v1 = v0 + *(type metadata accessor for AttachmentLedgerTopic.UploadRequest(0) + 40);
  v2 = *v1;
  outlined copy of Data._Representation(*v1, *(v1 + 8));
  return v2;
}

uint64_t AttachmentLedgerTopic.UploadRequest.refSignature.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for AttachmentLedgerTopic.UploadRequest(0) + 40);
  result = outlined consume of Data._Representation(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t AttachmentLedgerTopic.UploadRequest.init(id:key:assetSkeleton:developerMetadata:storageLocation:fileHash:refSignature:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v20 = type metadata accessor for UUID();
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  v21 = type metadata accessor for AttachmentLedgerTopic.UploadRequest(0);
  v22 = v21[5];
  v23 = type metadata accessor for SymmetricKey();
  (*(*(v23 - 8) + 32))(a9 + v22, a2, v23);
  v24 = (a9 + v21[6]);
  *v24 = a3;
  v24[1] = a4;
  v25 = (a9 + v21[7]);
  *v25 = a5;
  v25[1] = a6;
  v26 = v21[8];
  v27 = type metadata accessor for URL();
  result = (*(*(v27 - 8) + 32))(a9 + v26, a7, v27);
  v29 = (a9 + v21[9]);
  *v29 = a8;
  v29[1] = a10;
  v30 = (a9 + v21[10]);
  *v30 = a11;
  v30[1] = a12;
  return result;
}

uint64_t AttachmentLedgerTopic.upload(request:)(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for TaskPriority();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities21AttachmentLedgerTopicC13UploadRequestVSgMd, &_s15GroupActivities21AttachmentLedgerTopicC13UploadRequestVSgMR);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v4 = type metadata accessor for AttachmentLedgerTopic.UploadRequest(0);
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AttachmentLedgerTopic.upload(request:), 0, 0);
}

uint64_t AttachmentLedgerTopic.upload(request:)()
{
  v31 = v0;
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = v0[7];
  v3 = type metadata accessor for Logger();
  v0[22] = __swift_project_value_buffer(v3, static Log.attachmentLedgerTopic);
  outlined init with copy of AttachmentLedgerTopic.UploadRequest(v2, v1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[21];
  if (v6)
  {
    v9 = v0[16];
    v8 = v0[17];
    v11 = v0[14];
    v10 = v0[15];
    v12 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v12 = 136315394;
    outlined init with copy of AttachmentLedgerTopic.UploadRequest(v7, v10);
    (*(v8 + 56))(v10, 0, 1, v9);
    outlined init with copy of URL?(v10, v11, &_s15GroupActivities21AttachmentLedgerTopicC13UploadRequestVSgMd, &_s15GroupActivities21AttachmentLedgerTopicC13UploadRequestVSgMR);
    if ((*(v8 + 48))(v11, 1, v9) == 1)
    {
      v13 = 0xE300000000000000;
      v14 = 7104878;
    }

    else
    {
      v16 = v0[19];
      v15 = v0[20];
      outlined init with take of AttachmentLedgerTopic.UploadRequest(v0[14], v15);
      outlined init with copy of AttachmentLedgerTopic.UploadRequest(v15, v16);
      v14 = String.init<A>(reflecting:)();
      v13 = v17;
      outlined destroy of AttachmentLedgerTopic.UploadRequest(v15);
    }

    v18 = v0[21];
    v20 = v0[10];
    v19 = v0[11];
    v21 = v0[9];
    outlined destroy of NSObject?(v0[15], &_s15GroupActivities21AttachmentLedgerTopicC13UploadRequestVSgMd, &_s15GroupActivities21AttachmentLedgerTopicC13UploadRequestVSgMR);
    outlined destroy of AttachmentLedgerTopic.UploadRequest(v18);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, &v30);

    *(v12 + 4) = v22;
    *(v12 + 12) = 2080;
    static Task<>.currentPriority.getter();
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type TaskPriority and conformance TaskPriority, MEMORY[0x1E69E85F0], MEMORY[0x1E69E8608]);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v20 + 8))(v19, v21);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v30);

    *(v12 + 14) = v26;
    _os_log_impl(&dword_1AEE80000, v4, v5, "Received uploadRequest %s with priority: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v29, -1, -1);
    MEMORY[0x1B2715BA0](v12, -1, -1);
  }

  else
  {

    outlined destroy of AttachmentLedgerTopic.UploadRequest(v7);
  }

  v27 = swift_task_alloc();
  v0[23] = v27;
  *v27 = v0;
  v27[1] = AttachmentLedgerTopic.upload(request:);

  return AttachmentLedgerTopic.fetchTopic(function:line:)((v0 + 2), 0xD000000000000010, 0x80000001AF01B730, 392);
}

{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = AttachmentLedgerTopic.upload(request:);
  }

  else
  {
    v2 = AttachmentLedgerTopic.upload(request:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v34 = v0;
  *(v0 + 216) = 9;
  if (dispatch thunk of StateMachine.execute(_:)())
  {
    v1 = *(v0 + 128);
    v3 = *(v0 + 48);
    v2 = *(v0 + 56);
    v4 = *(v0 + 40);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v4);
    v5 = *(v1 + 40);
    v6 = *(v2 + *(v1 + 36) + 8);
    v7 = *(v2 + v5);
    v8 = *(v2 + v5 + 8);
    v31 = *(v3 + 72) + **(v3 + 72);
    v9 = swift_task_alloc();
    *(v0 + 200) = v9;
    *v9 = v0;
    v9[1] = AttachmentLedgerTopic.upload(request:);
    v39 = v4;
    v40 = v3;
    v37 = v7;
    v38 = v8;
    v36 = v6;

    __asm { BRAA            X8, X16 }
  }

  outlined init with copy of AttachmentLedgerTopic.UploadRequest(*(v0 + 56), *(v0 + 144));

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 144);
  if (v12)
  {
    v15 = *(v0 + 128);
    v14 = *(v0 + 136);
    v17 = *(v0 + 96);
    v16 = *(v0 + 104);
    v18 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = v32;
    *v18 = 136315394;
    outlined init with copy of AttachmentLedgerTopic.UploadRequest(v13, v16);
    (*(v14 + 56))(v16, 0, 1, v15);
    outlined init with copy of URL?(v16, v17, &_s15GroupActivities21AttachmentLedgerTopicC13UploadRequestVSgMd, &_s15GroupActivities21AttachmentLedgerTopicC13UploadRequestVSgMR);
    if ((*(v14 + 48))(v17, 1, v15) == 1)
    {
      v19 = 0xE300000000000000;
      v20 = 7104878;
    }

    else
    {
      v21 = *(v0 + 152);
      v22 = *(v0 + 160);
      outlined init with take of AttachmentLedgerTopic.UploadRequest(*(v0 + 96), v22);
      outlined init with copy of AttachmentLedgerTopic.UploadRequest(v22, v21);
      v20 = String.init<A>(reflecting:)();
      v19 = v23;
      outlined destroy of AttachmentLedgerTopic.UploadRequest(v22);
    }

    v24 = *(v0 + 144);
    outlined destroy of NSObject?(*(v0 + 104), &_s15GroupActivities21AttachmentLedgerTopicC13UploadRequestVSgMd, &_s15GroupActivities21AttachmentLedgerTopicC13UploadRequestVSgMR);
    outlined destroy of AttachmentLedgerTopic.UploadRequest(v24);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v19, &v33);

    *(v18 + 4) = v25;
    *(v18 + 12) = 2080;
    v26 = AttachmentLedgerTopic.description.getter();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v33);

    *(v18 + 14) = v28;
    _os_log_impl(&dword_1AEE80000, v10, v11, "Dropping request %s because state of AttachmentLedgerTopic is invalid %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v32, -1, -1);
    MEMORY[0x1B2715BA0](v18, -1, -1);
  }

  else
  {

    outlined destroy of AttachmentLedgerTopic.UploadRequest(v13);
  }

  lazy protocol witness table accessor for type AttachmentLedgerTopic.Errors and conformance AttachmentLedgerTopic.Errors();
  swift_allocError();
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v29 = *(v0 + 8);

  return v29();
}

{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = AttachmentLedgerTopic.upload(request:);
  }

  else
  {
    v2 = AttachmentLedgerTopic.upload(request:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AttachmentLedgerTopic.updateProgress(on:with:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = type metadata accessor for TaskPriority();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore10AttachmentC12MMCSMetadataV12UploadStatusOSgMd, &_s14CopresenceCore10AttachmentC12MMCSMetadataV12UploadStatusOSgMR);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v5 = type metadata accessor for Attachment.MMCSMetadata.UploadStatus();
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AttachmentLedgerTopic.updateProgress(on:with:), 0, 0);
}

uint64_t AttachmentLedgerTopic.updateProgress(on:with:)()
{
  v43 = v0;
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[8];
  v5 = type metadata accessor for Logger();
  v0[20] = __swift_project_value_buffer(v5, static Log.attachmentLedgerTopic);
  v41 = *(v3 + 16);
  v41(v1, v4, v2);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[19];
  v11 = v0[15];
  v10 = v0[16];
  if (v8)
  {
    v39 = v7;
    log = v6;
    v12 = v0[13];
    v13 = v0[14];
    v14 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v42 = v38;
    *v14 = 136315650;
    v15 = AttachmentLedgerTopic.description.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v42);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    v41(v13, v9, v11);
    (*(v10 + 56))(v13, 0, 1, v11);
    outlined init with copy of URL?(v13, v12, &_s14CopresenceCore10AttachmentC12MMCSMetadataV12UploadStatusOSgMd, &_s14CopresenceCore10AttachmentC12MMCSMetadataV12UploadStatusOSgMR);
    if ((*(v10 + 48))(v12, 1, v11) == 1)
    {
      v18 = 0xE300000000000000;
      v19 = 7104878;
    }

    else
    {
      v21 = v0[17];
      v20 = v0[18];
      v23 = v0[15];
      v22 = v0[16];
      (*(v22 + 32))(v20, v0[13], v23);
      v41(v21, v20, v23);
      v19 = String.init<A>(reflecting:)();
      v18 = v24;
      (*(v22 + 8))(v20, v23);
    }

    v25 = v0[19];
    v27 = v0[15];
    v26 = v0[16];
    v28 = v0[11];
    v29 = v0[12];
    v30 = v0[10];
    outlined destroy of NSObject?(v0[14], &_s14CopresenceCore10AttachmentC12MMCSMetadataV12UploadStatusOSgMd, &_s14CopresenceCore10AttachmentC12MMCSMetadataV12UploadStatusOSgMR);
    (*(v26 + 8))(v25, v27);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v18, &v42);

    *(v14 + 14) = v31;
    *(v14 + 22) = 2080;
    static Task<>.currentPriority.getter();
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type TaskPriority and conformance TaskPriority, MEMORY[0x1E69E85F0], MEMORY[0x1E69E8608]);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    (*(v28 + 8))(v29, v30);
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v42);

    *(v14 + 24) = v35;
    _os_log_impl(&dword_1AEE80000, log, v39, "%s Received request to update progressBlob with status: %s with priority: %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v38, -1, -1);
    MEMORY[0x1B2715BA0](v14, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v36 = swift_task_alloc();
  v0[21] = v36;
  *v36 = v0;
  v36[1] = AttachmentLedgerTopic.updateProgress(on:with:);

  return AttachmentLedgerTopic.fetchTopic(function:line:)((v0 + 2), 0xD000000000000018, 0x80000001AF01B750, 404);
}

{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = AttachmentLedgerTopic.updateProgress(on:with:);
  }

  else
  {
    v2 = AttachmentLedgerTopic.updateProgress(on:with:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v17 = v0;
  *(v0 + 200) = 10;
  if (dispatch thunk of StateMachine.execute(_:)())
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
    v15 = (*(v2 + 80) + **(v2 + 80));
    v3 = swift_task_alloc();
    *(v0 + 184) = v3;
    *v3 = v0;
    v3[1] = AttachmentLedgerTopic.updateProgress(on:with:);
    v5 = *(v0 + 56);
    v4 = *(v0 + 64);

    return v15(v5, v4, v1, v2);
  }

  else
  {

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136315138;
      v11 = AttachmentLedgerTopic.description.getter();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v16);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1AEE80000, v7, v8, "Dropping request to update progressBlob because state of AttachmentLedgerTopic is invalid %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x1B2715BA0](v10, -1, -1);
      MEMORY[0x1B2715BA0](v9, -1, -1);
    }

    lazy protocol witness table accessor for type AttachmentLedgerTopic.Errors and conformance AttachmentLedgerTopic.Errors();
    swift_allocError();
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v14 = *(v0 + 8);

    return v14();
  }
}

{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = AttachmentLedgerTopic.updateProgress(on:with:);
  }

  else
  {
    v2 = AttachmentLedgerTopic.updateProgress(on:with:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AttachmentLedgerTopic.description.getter()
{
  _StringGuts.grow(_:)(51);
  MEMORY[0x1B27141F0](0xD00000000000001CLL, 0x80000001AF01B770);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1B27141F0](0x203A656D616E202CLL, 0xE800000000000000);
  MEMORY[0x1B27141F0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1B27141F0](0x203A657461747320, 0xE800000000000000);
  dispatch thunk of StateMachine.currentState.getter();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1B27141F0](41, 0xE100000000000000);
  return 0;
}

uint64_t AttachmentLedgerTopic.remove(id:)(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for UUID();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AttachmentLedgerTopic.remove(id:), 0, 0);
}

uint64_t AttachmentLedgerTopic.remove(id:)()
{
  v23 = v0;
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[7];
  v5 = type metadata accessor for Logger();
  v0[13] = __swift_project_value_buffer(v5, static Log.attachmentLedgerTopic);
  v6 = *(v3 + 16);
  v0[14] = v6;
  v0[15] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[12];
  v11 = v0[9];
  v12 = v0[10];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v13 = 136315138;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_1AEE80000, v7, v8, "Received removal request %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x1B2715BA0](v21, -1, -1);
    MEMORY[0x1B2715BA0](v13, -1, -1);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[16] = v17;
  v19 = swift_task_alloc();
  v0[17] = v19;
  *v19 = v0;
  v19[1] = AttachmentLedgerTopic.remove(id:);

  return AttachmentLedgerTopic.fetchTopic(function:line:)((v0 + 2), 0x692865766F6D6572, 0xEB00000000293A64, 416);
}

{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = AttachmentLedgerTopic.remove(id:);
  }

  else
  {
    v2 = AttachmentLedgerTopic.remove(id:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v25 = v0;
  *(v0 + 168) = 11;
  v1 = (v0 + 16);
  if (dispatch thunk of StateMachine.execute(_:)())
  {
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
    v23 = (*(v3 + 88) + **(v3 + 88));
    v4 = swift_task_alloc();
    *(v0 + 152) = v4;
    *v4 = v0;
    v4[1] = AttachmentLedgerTopic.remove(id:);
    v5 = *(v0 + 56);

    return v23(v5, v2, v3);
  }

  else
  {
    (*(v0 + 112))(*(v0 + 88), *(v0 + 56), *(v0 + 72));

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 128);
    v11 = *(v0 + 88);
    v12 = *(v0 + 72);
    if (v9)
    {
      v13 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v24[0] = v22;
      *v13 = 136315394;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      v10(v11, v12);
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, v24);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2080;
      v18 = AttachmentLedgerTopic.description.getter();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v24);

      *(v13 + 14) = v20;
      v1 = (v0 + 16);
      _os_log_impl(&dword_1AEE80000, v7, v8, "Dropping request to remove attachment %s because state of AttachmentLedgerTopic is invalid %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v22, -1, -1);
      MEMORY[0x1B2715BA0](v13, -1, -1);
    }

    else
    {

      v10(v11, v12);
    }

    lazy protocol witness table accessor for type AttachmentLedgerTopic.Errors and conformance AttachmentLedgerTopic.Errors();
    swift_allocError();
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v1);

    v21 = *(v0 + 8);

    return v21();
  }
}

{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = AttachmentLedgerTopic.remove(id:);
  }

  else
  {
    v2 = AttachmentLedgerTopic.remove(id:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

Swift::Int AttachmentLedgerTopic.Errors.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AttachmentLedgerTopic.Errors()
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AttachmentLedgerTopic.Errors(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](0);
  return Hasher._finalize()();
}

Swift::Int AttachmentLedgerTopic.State.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](a1);
  return Hasher._finalize()();
}

uint64_t protocol witness for DownloadAttachmentTopic.requestDownloadToken(for:) in conformance AttachmentLedgerTopic(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return AttachmentLedgerTopic.requestDownloadToken(for:)(a1, a2);
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = __CocoaSet.count.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  specialized Array._copyContents(initializing:)(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

char *specialized Array.append<A>(contentsOf:)(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t specialized Clock.sleep(for:tolerance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](specialized Clock.sleep(for:tolerance:), 0, 0);
}

uint64_t specialized Clock.sleep(for:tolerance:)()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  dispatch thunk of Clock.now.getter();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = specialized Clock.sleep(for:tolerance:);
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](specialized Clock.sleep(for:tolerance:), 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  __CocoaSet.count.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [Attachment] and conformance [A], &_sSay14CopresenceCore10AttachmentCGMd, &_sSay14CopresenceCore10AttachmentCGMR, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14CopresenceCore10AttachmentCGMd, &_sSay14CopresenceCore10AttachmentCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for Attachment();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in closure #1 in AttachmentLedgerTopic.fetchTopic(function:line:)(uint64_t a1)
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
  v10[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return closure #1 in closure #1 in AttachmentLedgerTopic.fetchTopic(function:line:)(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t lazy protocol witness table accessor for type AttachmentLedgerTopic.Errors and conformance AttachmentLedgerTopic.Errors()
{
  result = lazy protocol witness table cache variable for type AttachmentLedgerTopic.Errors and conformance AttachmentLedgerTopic.Errors;
  if (!lazy protocol witness table cache variable for type AttachmentLedgerTopic.Errors and conformance AttachmentLedgerTopic.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedgerTopic.Errors and conformance AttachmentLedgerTopic.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentLedgerTopic.Errors and conformance AttachmentLedgerTopic.Errors;
  if (!lazy protocol witness table cache variable for type AttachmentLedgerTopic.Errors and conformance AttachmentLedgerTopic.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedgerTopic.Errors and conformance AttachmentLedgerTopic.Errors);
  }

  return result;
}

uint64_t outlined init with copy of AttachmentLedgerTopic.UploadRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedgerTopic.UploadRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AttachmentLedgerTopic.UploadRequest(uint64_t a1)
{
  v2 = type metadata accessor for AttachmentLedgerTopic.UploadRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of AttachmentLedgerTopic.UploadRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedgerTopic.UploadRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata completion function for AttachmentLedgerTopic(uint64_t a1)
{
  type metadata accessor for CurrentSubject<PluginAttachmentLedgerTopicProvider?>(319, &lazy cache variable for type metadata for CurrentSubject<PluginAttachmentLedgerTopicProvider?>, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CurrentSubject<PluginAttachmentLedgerTopicProvider?>(319, &lazy cache variable for type metadata for CurrentSubject<[Attachment]>, &_sSay14CopresenceCore10AttachmentCGMd, &_sSay14CopresenceCore10AttachmentCGMR);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for CurrentSubject<PluginAttachmentLedgerTopicProvider?>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for CurrentSubject();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AttachmentLedgerTopic.RetryInfo(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AttachmentLedgerTopic.RetryInfo(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata completion function for AttachmentLedgerTopic.UploadRequest(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for SymmetricKey();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Data?();
      if (v3 <= 0x3F)
      {
        type metadata accessor for URL();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for Data?()
{
  if (!lazy cache variable for type metadata for Data?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Data?);
    }
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AttachmentLedgerTopic.BootstrapTopicInfo(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AttachmentLedgerTopic.BootstrapTopicInfo(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AttachmentLedgerTopic.Errors(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AttachmentLedgerTopic.Errors(_WORD *result, int a2, int a3)
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

uint64_t partial apply for closure #1 in AttachmentLedgerTopic.processShutdown(shutdownInfo:)(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in AttachmentLedgerTopic.processShutdown(shutdownInfo:)(v7, a1, v4, v5, v6);
}

Swift::Int ImageRepresentationEncodingErrors.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](0);
  return Hasher._finalize()();
}

uint64_t ImageRepresentation.Image.image.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo10CGImageRefaGMd, &_sScSySo10CGImageRefaGMR);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ImageRepresentation.Image.image.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo10CGImageRefaGMd, &_sScSySo10CGImageRefaGMR);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ImageRepresentation.Image.init(image:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo10CGImageRefaGMd, &_sScSySo10CGImageRefaGMR);
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t ImageRepresentation.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = type metadata accessor for UTType();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a1 + 16);
  v23 = v22;
  v7 = type metadata accessor for DataRepresentation();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - v12;
  v14 = *(v2 + 2);
  v15 = *(v2 + 3);
  static UTType.data.getter();
  v16 = swift_allocObject();
  *(v16 + 48) = v14;
  *(v16 + 56) = v15;
  v17 = swift_allocObject();
  v18 = *v2;
  v19 = v22;
  *(v16 + 16) = v22;
  *(v16 + 32) = v18;
  *(v17 + 16) = v19;
  *(v17 + 32) = v18;
  *(v17 + 48) = v14;
  *(v17 + 56) = v15;
  swift_retain_n();
  swift_retain_n();
  MEMORY[0x1B2713760](v6, &async function pointer to partial apply for closure #1 in ImageRepresentation.body.getter, v16, &async function pointer to partial apply for closure #2 in ImageRepresentation.body.getter, v17, v23, *(&v23 + 1));
  swift_getWitnessTable();
  static TransferRepresentationBuilder.buildExpression<A>(_:)();
  v20 = *(v8 + 8);
  v20(v11, v7);
  static TransferRepresentationBuilder.buildExpression<A>(_:)();
  return (v20)(v13, v7);
}