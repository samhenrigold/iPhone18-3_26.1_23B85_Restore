uint64_t getEnumTagSinglePayload for PluginRpcStatus(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for PluginRpcStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t type metadata completion function for PluginRpcError(uint64_t a1)
{
  result = type metadata accessor for PluginConnectError(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata instantiation function for PluginRpcDefinition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t static TransparentTopicCryptorProvider.encryptionID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  UUID.init(uuidString:)();
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(v4, 1, v5);
  if (result != 1)
  {
    return (*(v6 + 32))(a1, v4, v5);
  }

  __break(1u);
  return result;
}

uint64_t TransparentTopicCryptorProvider.encryptionIDPublisher.getter()
{
  v1 = type metadata accessor for UUID();
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  (*(*v0 + 80))(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy10Foundation4UUIDVs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy10Foundation4UUIDVs5NeverOGMR);
  swift_allocObject();
  v5 = CurrentValueSubject.init(_:)();
  lazy protocol witness table accessor for type CurrentValueSubject<UUID, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type CurrentValueSubject<UUID, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy10Foundation4UUIDVs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy10Foundation4UUIDVs5NeverOGMR);
  v3 = Publisher.eraseToAnyPublisher()();

  return v3;
}

uint64_t TransparentTopicCryptorProvider.decryptionIDSet.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR);
  type metadata accessor for UUID();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1AEE07B20;
  (*(*v0 + 80))();
  return v1;
}

uint64_t TransparentTopicCryptorProvider.decryptionIDSetPublisher.getter()
{
  (*(*v0 + 96))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay10Foundation4UUIDVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay10Foundation4UUIDVGs5NeverOGMR);
  swift_allocObject();
  CurrentValueSubject.init(_:)();
  lazy protocol witness table accessor for type CurrentValueSubject<UUID, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type CurrentValueSubject<[UUID], Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySay10Foundation4UUIDVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay10Foundation4UUIDVGs5NeverOGMR);
  v1 = Publisher.eraseToAnyPublisher()();

  return v1;
}

uint64_t lazy protocol witness table accessor for type CurrentValueSubject<UUID, Never> and conformance CurrentValueSubject<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t TransparentTopicCryptorProvider.validEncryptionID(data:)(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - v13;
  outlined copy of Data._Representation(a1, a2);
  UUID.init(data:)(a1, a2, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of UUID?(v7);
    v15 = 0;
  }

  else
  {
    v16 = (*(v9 + 32))(v14, v7, v8);
    (*(*v2 + 80))(v16);
    v15 = static UUID.== infix(_:_:)();
    v17 = *(v9 + 8);
    v17(v12, v8);
    v17(v14, v8);
  }

  return v15 & 1;
}

void *ABCReporter.__allocating_init(domain:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = [objc_allocWithZone(MEMORY[0x1E69D4F80]) init];
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = a3;
  v8[6] = a4;
  return v8;
}

uint64_t ABCReporter.domain.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ABCReporter.type.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

void *ABCReporter.init(domain:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = [objc_allocWithZone(MEMORY[0x1E69D4F80]) init];
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  v4[6] = a4;
  return v4;
}

Swift::OpaquePointer_optional __swiftcall ABCReporter.signature(subType:context:process:)(Swift::String subType, Swift::String context, Swift::String process)
{
  object = process._object;
  countAndFlagsBits = process._countAndFlagsBits;
  v6 = context._object;
  v7 = context._countAndFlagsBits;
  v8 = subType._object;
  v9 = subType._countAndFlagsBits;
  v10 = v3[2];
  v11 = MEMORY[0x1B270FF70](v3[3], v3[4]);
  v12 = MEMORY[0x1B270FF70](v3[5], v3[6]);
  v13 = MEMORY[0x1B270FF70](v9, v8);
  v14 = MEMORY[0x1B270FF70](v7, v6);
  v15 = MEMORY[0x1B270FF70](countAndFlagsBits, object);
  v16 = [v10 signatureWithDomain:v11 type:v12 subType:v13 subtypeContext:v14 detectedProcess:v15 triggerThresholdValues:0];

  if (v16)
  {
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v18 = 0;
  result.value._rawValue = v18;
  result.is_nil = v17;
  return result;
}

uint64_t ABCReporter.report(with:duration:)(uint64_t a1, double a2)
{
  *(v3 + 40) = v2;
  *(v3 + 32) = a2;
  *(v3 + 24) = a1;
  return MEMORY[0x1EEE6DFA0](ABCReporter.report(with:duration:), 0, 0);
}

uint64_t ABCReporter.report(with:duration:)()
{
  v1 = v0[5];
  v2 = v0[4];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
  *v5 = v0;
  v5[1] = ABCReporter.report(with:duration:);

  return MEMORY[0x1EEE6DDE0](v0 + 2, 0, 0, 0xD000000000000016, 0x80000001AEE32730, partial apply for closure #1 in ABCReporter.report(with:duration:), v4, v6);
}

{

  return MEMORY[0x1EEE6DFA0](ABCReporter.report(with:duration:), 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 16));
}

void closure #1 in ABCReporter.report(with:duration:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDys11AnyHashableVypGs5NeverOGMd, &_sScCySDys11AnyHashableVypGs5NeverOGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - v8;
  v10 = *(a2 + 16);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  (*(v7 + 16))(v9, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v9, v6);
  aBlock[4] = partial apply for closure #1 in closure #1 in ABCReporter.report(with:duration:);
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [AnyHashable : Any]?) -> ();
  aBlock[3] = &block_descriptor_17;
  v14 = _Block_copy(aBlock);

  [v10 snapshotWithSignature:isa duration:0 event:0 payload:v14 reply:a3];
  _Block_release(v14);
}

uint64_t closure #1 in closure #1 in ABCReporter.report(with:duration:)(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDys11AnyHashableVypGs5NeverOGMd, &_sScCySDys11AnyHashableVypGs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t ABCReporter.deinit()
{

  return v0;
}

uint64_t ABCReporter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ABCReporterProtocol.init(domain:type:) in conformance ABCReporter@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 104))();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ABCReporterProtocol.report(with:duration:) in conformance ABCReporter(uint64_t a1, double a2)
{
  v9 = (*(**v2 + 120) + **(**v2 + 120));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = dispatch thunk of ApplicationLauncher.openApplicationOptions(for:options:);
  v7.n128_f64[0] = a2;

  return v9(a1, v7);
}

uint64_t Task<>.reportFailure(on:function:process:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v20 - v15;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  outlined init with copy of UserNotificationCenter(a1, v21);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a7;
  v18[5] = a6;
  v18[6] = a2;
  v18[7] = a3;
  v18[8] = a4;
  v18[9] = a5;
  outlined init with take of ContiguousBytes(v21, (v18 + 10));

  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v16, &async function pointer to partial apply for closure #1 in Task<>.reportFailure(on:function:process:), v18);

  outlined destroy of TaskPriority?(v16);
}

uint64_t closure #1 in Task<>.reportFailure(on:function:process:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = v12;
  v8[13] = v13;
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[7] = a4;
  v8[14] = *(v13 - 8);
  v8[15] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v8[16] = v9;
  v8[17] = *(v9 - 8);
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in Task<>.reportFailure(on:function:process:), 0, 0);
}

uint64_t closure #1 in Task<>.reportFailure(on:function:process:)(uint64_t a1)
{
  Date.init()();
  v2 = swift_task_alloc();
  v1[20] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v2 = v1;
  v2[1] = closure #1 in Task<>.reportFailure(on:function:process:);
  v4 = v1[15];
  v5 = v1[13];
  v6 = v1[7];
  v7 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v4, v6, v5, v3, v7);
}

{
  *(*v1 + 216) = a1;

  return MEMORY[0x1EEE6DFA0](closure #1 in Task<>.reportFailure(on:function:process:), 0, 0);
}

uint64_t partial apply for closure #1 in Task<>.reportFailure(on:function:process:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = v1[9];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in Task<>.reportFailure(on:function:process:)(a1, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of ABCReporterProtocol.report(with:duration:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v12 = (*(a3 + 24) + **(a3 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = dispatch thunk of ABCReporterProtocol.report(with:duration:);
  v10.n128_f64[0] = a4;

  return v12(a1, a2, a3, v10);
}

uint64_t dispatch thunk of ABCReporter.report(with:duration:)(uint64_t a1, double a2)
{
  v9 = (*(*v2 + 120) + **(*v2 + 120));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = dispatch thunk of ApplicationLauncher.openApplicationOptions(for:options:);
  v7.n128_f64[0] = a2;

  return v9(a1, v7);
}

uint64_t partial apply for closure #1 in closure #1 in ABCReporter.report(with:duration:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDys11AnyHashableVypGs5NeverOGMd, &_sScCySDys11AnyHashableVypGs5NeverOGMR);

  return closure #1 in closure #1 in ABCReporter.report(with:duration:)(a1);
}

uint64_t PegasusApplicationLaunchBehavior.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for PegasusApplicationLaunchBehavior.AuthorizationManager();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  v2 = MEMORY[0x1E69E7CC8];
  *(v1 + 112) = MEMORY[0x1E69E7CC8];
  *(v0 + 24) = v1;
  type metadata accessor for BackgroundApplicationLaunchBehavior.AssertionStore();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = v2;
  *(v0 + 16) = v3;
  return v0;
}

uint64_t PegasusApplicationLaunchBehavior.AuthorizationManager.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x1E69E7CC8];
  return v0;
}

uint64_t PegasusApplicationLaunchBehavior.authorizationManager.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t PegasusApplicationLaunchBehavior.shouldHandleAppLaunch(for:options:)(void *a1, char a2)
{
  if ((a2 & 1) != 0 && (v2 = [a1 activity], v3 = objc_msgSend(v2, sel_metadata), v2, v3))
  {
    v4 = [v3 context];

    v5 = [v4 typedIdentifier];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t PegasusApplicationLaunchBehavior.handleAppLaunch(for:options:launchProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVySo33PGBackgroundPIPAuthorizationStateV_GMd, &_sScS8IteratorVySo33PGBackgroundPIPAuthorizationStateV_GMR);
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo33PGBackgroundPIPAuthorizationStateVGSgMd, &_sScSySo33PGBackgroundPIPAuthorizationStateVGSgMR);
  v4[12] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo33PGBackgroundPIPAuthorizationStateVGMd, &_sScSySo33PGBackgroundPIPAuthorizationStateVGMR);
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v4[16] = v7;
  v4[17] = *(v7 - 8);
  v4[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](PegasusApplicationLaunchBehavior.handleAppLaunch(for:options:launchProvider:), 0, 0);
}

uint64_t PegasusApplicationLaunchBehavior.handleAppLaunch(for:options:launchProvider:)()
{
  v1 = [*(v0 + 40) activity];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v4 = *(v0 + 136);
    v3 = *(v0 + 144);
    v5 = *(v0 + 128);
    v6 = *(v0 + 64);
    v7 = *(v0 + 40);
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    *(v0 + 152) = v8;
    *(v0 + 160) = v10;
    v11 = [v7 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    *(v0 + 168) = UUID.uuidString.getter();
    *(v0 + 176) = v12;
    v13 = (*(v4 + 8))(v3, v5);
    v14 = (*(*v6 + 184))(v13);
    *(v0 + 184) = v14;

    return MEMORY[0x1EEE6DFA0](PegasusApplicationLaunchBehavior.handleAppLaunch(for:options:launchProvider:), v14, 0);
  }

  else
  {
    lazy protocol witness table accessor for type ApplicationLauncher.LaunchError and conformance ApplicationLauncher.LaunchError();
    swift_allocError();
    *v15 = 3;
    swift_willThrow();

    v16 = *(v0 + 8);

    return v16();
  }
}

{
  PegasusApplicationLaunchBehavior.AuthorizationManager.insertAuthorization(activitySessionIdentifier:appBundleIdentifier:)(v0[21], v0[22], v0[19], v0[20], v0[12]);

  return MEMORY[0x1EEE6DFA0](PegasusApplicationLaunchBehavior.handleAppLaunch(for:options:launchProvider:), 0, 0);
}

{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    outlined destroy of AsyncStream<PGBackgroundPIPAuthorizationState>?(v3);
    lazy protocol witness table accessor for type ApplicationLauncher.LaunchError and conformance ApplicationLauncher.LaunchError();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }

  else
  {
    (*(v2 + 32))(v0[15], v3, v1);
    AsyncStream.makeAsyncIterator()();
    v7 = swift_task_alloc();
    v0[24] = v7;
    *v7 = v0;
    v7[1] = PegasusApplicationLaunchBehavior.handleAppLaunch(for:options:launchProvider:);
    v8 = v0[9];

    return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v8);
  }
}

{

  return MEMORY[0x1EEE6DFA0](PegasusApplicationLaunchBehavior.handleAppLaunch(for:options:launchProvider:), 0, 0);
}

{
  v30 = v0;
  v1 = *(v0 + 16);
  if (*(v0 + 24))
  {
LABEL_2:
    v3 = *(v0 + 112);
    v2 = *(v0 + 120);
    v4 = *(v0 + 104);
    v6 = *(v0 + 80);
    v5 = *(v0 + 88);
    v7 = *(v0 + 72);

    (*(v6 + 8))(v5, v7);
    (*(v3 + 8))(v2, v4);

    v8 = *(v0 + 8);

    return v8();
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.default);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v0 + 168);
    v27 = *(v0 + 176);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v29[0] = v15;
    *v14 = 136315394;
    *(v0 + 32) = v1;
    type metadata accessor for PGBackgroundPIPAuthorizationState(0);
    v16 = String.init<A>(reflecting:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v29);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v27, v29);
    _os_log_impl(&dword_1AEB26000, v11, v12, "Got PGBackgroundPIPAuthorization authorization transitioned to state %s for session id %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v15, -1, -1);
    MEMORY[0x1B27120C0](v14, -1, -1);
  }

  if ((v1 - 4) < 2)
  {

    lazy protocol witness table accessor for type ApplicationLauncher.LaunchError and conformance ApplicationLauncher.LaunchError();
    v23 = swift_allocError();
    *v24 = 1;
    swift_willThrow();
    *(v0 + 208) = v23;

    return MEMORY[0x1EEE6DFA0](PegasusApplicationLaunchBehavior.handleAppLaunch(for:options:launchProvider:), 0, 0);
  }

  else
  {
    if (v1 == 3)
    {
      goto LABEL_2;
    }

    if (v1 == 2)
    {
      v28 = (*(**(v0 + 64) + 144) + **(**(v0 + 64) + 144));
      v19 = swift_task_alloc();
      *(v0 + 200) = v19;
      *v19 = v0;
      v19[1] = PegasusApplicationLaunchBehavior.handleAppLaunch(for:options:launchProvider:);
      v20 = *(v0 + 56);
      v22 = *(v0 + 40);
      v21 = *(v0 + 48);

      return v28(v22, v21, v20);
    }

    else
    {
      v25 = swift_task_alloc();
      *(v0 + 192) = v25;
      *v25 = v0;
      v25[1] = PegasusApplicationLaunchBehavior.handleAppLaunch(for:options:launchProvider:);
      v26 = *(v0 + 72);

      return MEMORY[0x1EEE6D9C8](v0 + 16, 0, 0, v26);
    }
  }
}

{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v2[26] = v0;

    return MEMORY[0x1EEE6DFA0](PegasusApplicationLaunchBehavior.handleAppLaunch(for:options:launchProvider:), 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[24] = v4;
    *v4 = v3;
    v4[1] = PegasusApplicationLaunchBehavior.handleAppLaunch(for:options:launchProvider:);
    v5 = v2[9];

    return MEMORY[0x1EEE6D9C8](v2 + 2, 0, 0, v5);
  }
}

{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t PegasusApplicationLaunchBehavior.revokeBackgroundAuthorization(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](PegasusApplicationLaunchBehavior.revokeBackgroundAuthorization(for:), 0, 0);
}

uint64_t PegasusApplicationLaunchBehavior.revokeBackgroundAuthorization(for:)()
{
  v1 = (*(**(v0 + 32) + 88))();
  *(v0 + 40) = v1;

  return MEMORY[0x1EEE6DFA0](PegasusApplicationLaunchBehavior.revokeBackgroundAuthorization(for:), v1, 0);
}

{
  BackgroundApplicationLaunchBehavior.AssertionStore.revokeBackgroundAuthorization(for:)(v0[1]);

  return MEMORY[0x1EEE6DFA0](PegasusApplicationLaunchBehavior.revokeBackgroundAuthorization(for:), 0, 0);
}

{
  v1 = (*(**(v0 + 32) + 184))();
  *(v0 + 48) = v1;

  return MEMORY[0x1EEE6DFA0](PegasusApplicationLaunchBehavior.revokeBackgroundAuthorization(for:), v1, 0);
}

{
  PegasusApplicationLaunchBehavior.AuthorizationManager.revokeAuthorization(for:)(v0[1]);

  object = v0->_object;

  return object();
}

uint64_t PegasusApplicationLaunchBehavior.authorizePiP(for:)(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVySo33PGBackgroundPIPAuthorizationStateV_GMd, &_sScS8IteratorVySo33PGBackgroundPIPAuthorizationStateV_GMR);
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo33PGBackgroundPIPAuthorizationStateVGSgMd, &_sScSySo33PGBackgroundPIPAuthorizationStateVGSgMR);
  v2[10] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo33PGBackgroundPIPAuthorizationStateVGMd, &_sScSySo33PGBackgroundPIPAuthorizationStateVGMR);
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](PegasusApplicationLaunchBehavior.authorizePiP(for:), 0, 0);
}

uint64_t PegasusApplicationLaunchBehavior.authorizePiP(for:)()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  v4 = *(v0 + 40);
  v5 = [v4 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  *(v0 + 136) = UUID.uuidString.getter();
  *(v0 + 144) = v6;
  (*(v2 + 8))(v1, v3);
  v7 = [v4 activity];
  v8 = [v7 metadata];

  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = [v8 context];

  v10 = [v9 typedIdentifier];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v17 = [*(v0 + 40) activity];
  v18 = [v17 bundleIdentifier];

  if (!v18)
  {
LABEL_13:

    lazy protocol witness table accessor for type ApplicationLauncher.LaunchError and conformance ApplicationLauncher.LaunchError();
    swift_allocError();
    *v24 = 3;
    swift_willThrow();

    v25 = *(v0 + 8);

    return v25();
  }

  v19 = *(v0 + 48);
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  *(v0 + 152) = v20;
  *(v0 + 160) = v22;
  v23 = (*(*v19 + 184))();
  *(v0 + 168) = v23;

  return MEMORY[0x1EEE6DFA0](PegasusApplicationLaunchBehavior.authorizePiP(for:), v23, 0);
}

{
  PegasusApplicationLaunchBehavior.AuthorizationManager.insertAuthorization(activitySessionIdentifier:appBundleIdentifier:)(v0[17], v0[18], v0[19], v0[20], v0[10]);

  return MEMORY[0x1EEE6DFA0](PegasusApplicationLaunchBehavior.authorizePiP(for:), 0, 0);
}

{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    outlined destroy of AsyncStream<PGBackgroundPIPAuthorizationState>?(v3);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v2 + 32))(v0[13], v3, v1);
    AsyncStream.makeAsyncIterator()();
    v6 = swift_task_alloc();
    v0[22] = v6;
    *v6 = v0;
    v6[1] = PegasusApplicationLaunchBehavior.authorizePiP(for:);
    v7 = v0[7];

    return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v7);
  }
}

{

  return MEMORY[0x1EEE6DFA0](PegasusApplicationLaunchBehavior.authorizePiP(for:), 0, 0);
}

{
  v30 = v0;
  v1 = *(v0 + 16);
  if (*(v0 + 24))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.default);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 136);
    v28 = *(v0 + 144);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v29[0] = v14;
    *v13 = 136315394;
    *(v0 + 32) = v1;
    type metadata accessor for PGBackgroundPIPAuthorizationState(0);
    v15 = String.init<A>(reflecting:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v29);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v28, v29);
    _os_log_impl(&dword_1AEB26000, v10, v11, "Got PGBackgroundPIPAuthorization authorization transitioned to state %s for session id %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v14, -1, -1);
    MEMORY[0x1B27120C0](v13, -1, -1);
  }

  if ((v1 - 4) < 2)
  {
    v19 = *(v0 + 96);
    v18 = *(v0 + 104);
    v20 = *(v0 + 88);
    v22 = *(v0 + 64);
    v21 = *(v0 + 72);
    v23 = *(v0 + 56);

    lazy protocol witness table accessor for type ApplicationLauncher.LaunchError and conformance ApplicationLauncher.LaunchError();
    swift_allocError();
    *v24 = 1;
    swift_willThrow();
    (*(v22 + 8))(v21, v23);
    (*(v19 + 8))(v18, v20);

    v8 = *(v0 + 8);
    goto LABEL_9;
  }

  if (v1 == 2)
  {
LABEL_2:
    v3 = *(v0 + 96);
    v2 = *(v0 + 104);
    v4 = *(v0 + 88);
    v6 = *(v0 + 64);
    v5 = *(v0 + 72);
    v7 = *(v0 + 56);

    (*(v6 + 8))(v5, v7);
    (*(v3 + 8))(v2, v4);

    v8 = *(v0 + 8);
LABEL_9:

    return v8();
  }

  v26 = swift_task_alloc();
  *(v0 + 176) = v26;
  *v26 = v0;
  v26[1] = PegasusApplicationLaunchBehavior.authorizePiP(for:);
  v27 = *(v0 + 56);

  return MEMORY[0x1EEE6D9C8](v0 + 16, 0, 0, v27);
}

uint64_t PegasusApplicationLaunchBehavior.init()(uint64_t a1)
{
  type metadata accessor for PegasusApplicationLaunchBehavior.AuthorizationManager();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  v3 = MEMORY[0x1E69E7CC8];
  *(v2 + 112) = MEMORY[0x1E69E7CC8];
  *(v1 + 24) = v2;
  type metadata accessor for BackgroundApplicationLaunchBehavior.AssertionStore();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = v3;
  *(v1 + 16) = v4;
  return v1;
}

uint64_t PegasusApplicationLaunchBehavior.deinit()
{

  return v0;
}

uint64_t PegasusApplicationLaunchBehavior.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t key path setter for PegasusApplicationLaunchBehavior.AuthorizationManager.authorizations : PegasusApplicationLaunchBehavior.AuthorizationManager(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 112) = v2;
}

uint64_t PegasusApplicationLaunchBehavior.AuthorizationManager.authorizations.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
}

uint64_t PegasusApplicationLaunchBehavior.AuthorizationManager.insertAuthorization(activitySessionIdentifier:appBundleIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v25 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOySo33PGBackgroundPIPAuthorizationStateV__GMd, &_sScS12ContinuationV15BufferingPolicyOySo33PGBackgroundPIPAuthorizationStateV__GMR);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - v13;
  v15 = swift_beginAccess();
  v16 = *(v5 + 112);
  if (!*(v16 + 16))
  {
    goto LABEL_7;
  }

  v17 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v18 & 1) == 0)
  {

LABEL_7:
    MEMORY[0x1EEE9AC00](v15);
    *(&v25 - 6) = a1;
    *(&v25 - 5) = a2;
    v21 = v25;
    *(&v25 - 4) = a3;
    *(&v25 - 3) = v21;
    *(&v25 - 2) = v6;
    type metadata accessor for PGBackgroundPIPAuthorizationState(0);
    (*(v12 + 104))(v14, *MEMORY[0x1E69E8650], v11);
    AsyncStream.init(_:bufferingPolicy:_:)();
    v20 = 0;
    goto LABEL_8;
  }

  v19 = *(*(v16 + 56) + 8 * v17);

  if ([v19 state] != 1 && objc_msgSend(v19, sel_state) != 2)
  {
    v24 = [v19 state];

    if (v24 == 3)
    {
      v20 = 1;
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v20 = 1;
LABEL_8:
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo33PGBackgroundPIPAuthorizationStateVGMd, &_sScSySo33PGBackgroundPIPAuthorizationStateVGMR);
  return (*(*(v22 - 8) + 56))(a5, v20, 1, v22);
}

void closure #1 in PegasusApplicationLaunchBehavior.AuthorizationManager.insertAuthorization(activitySessionIdentifier:appBundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo33PGBackgroundPIPAuthorizationStateV_GMd, &_sScS12ContinuationVySo33PGBackgroundPIPAuthorizationStateV_GMR);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - v13;
  (*(v12 + 16))(&v25 - v13, a1, v11);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = swift_allocObject();
  (*(v12 + 32))(v16 + v15, v14, v11);
  v17 = objc_allocWithZone(MEMORY[0x1E69BCB58]);
  v18 = a2;
  v19 = MEMORY[0x1B270FF70](a2, a3);
  v20 = MEMORY[0x1B270FF70](a4, v25);
  aBlock[4] = partial apply for closure #1 in closure #1 in PegasusApplicationLaunchBehavior.AuthorizationManager.insertAuthorization(activitySessionIdentifier:appBundleIdentifier:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed PGBackgroundPIPAuthorization, @unowned PGBackgroundPIPAuthorizationState) -> ();
  aBlock[3] = &block_descriptor_18;
  v21 = _Block_copy(aBlock);
  v22 = [v17 initWithActivitySessionIdentifier:v19 appBundleIdentifier:v20 stateTransitionHandler:v21];

  _Block_release(v21);

  swift_beginAccess();

  v23 = v22;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *(a6 + 112);
  *(a6 + 112) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, v18, a3, isUniquelyReferenced_nonNull_native);

  *(a6 + 112) = v26;
  swift_endAccess();
}

void closure #1 in closure #1 in PegasusApplicationLaunchBehavior.AuthorizationManager.insertAuthorization(activitySessionIdentifier:appBundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOySo33PGBackgroundPIPAuthorizationStateV__GMd, &_sScS12ContinuationV11YieldResultOySo33PGBackgroundPIPAuthorizationStateV__GMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v7 - v5;
  v7[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo33PGBackgroundPIPAuthorizationStateV_GMd, &_sScS12ContinuationVySo33PGBackgroundPIPAuthorizationStateV_GMR);
  AsyncStream.Continuation.yield(_:)();
  (*(v4 + 8))(v6, v3);
  if ((a2 & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    AsyncStream.Continuation.finish()();
  }
}

Swift::Void __swiftcall PegasusApplicationLaunchBehavior.AuthorizationManager.revokeAuthorization(for:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if (one-time initialization token for default != -1)
  {
LABEL_27:
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.default);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v34 = object;
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v39[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v39);
    _os_log_impl(&dword_1AEB26000, v5, v6, "Request to remove PiP authorizations for %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  swift_beginAccess();
  v9 = *(v2 + 112);
  v12 = *(v9 + 64);
  v11 = v9 + 64;
  v10 = v12;
  v13 = 1 << *(*(v2 + 112) + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  object = (v13 + 63) >> 6;
  v37 = *(v2 + 112);

  v16 = 0;
  v35 = v2;
  while (v15)
  {
LABEL_15:
    v18 = __clz(__rbit64(v15)) | (v16 << 6);
    v19 = (*(v37 + 48) + 16 * v18);
    v20 = v19[1];
    v38 = *v19;
    v21 = *(*(v37 + 56) + 8 * v18);

    v22 = v21;
    v23 = [v22 appBundleIdentifier];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    if (v24 == countAndFlagsBits && v26 == v34)
    {

      v2 = v35;
    }

    else
    {
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v2 = v35;
      if ((v28 & 1) == 0)
      {

        goto LABEL_9;
      }
    }

    [v22 revoke];
    swift_beginAccess();
    v29 = specialized __RawDictionaryStorage.find<A>(_:)(v38, v20);
    v31 = v30;

    if (v31)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = *(v2 + 112);
      *(v2 + 112) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
      }

      specialized _NativeDictionary._delete(at:)(v29, v33);
      *(v2 + 112) = v33;
    }

    swift_endAccess();
LABEL_9:
    v15 &= v15 - 1;
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v17 >= object)
    {
      break;
    }

    v15 = *(v11 + 8 * v17);
    ++v16;
    if (v15)
    {
      v16 = v17;
      goto LABEL_15;
    }
  }
}

uint64_t PegasusApplicationLaunchBehavior.AuthorizationManager.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PegasusApplicationLaunchBehavior.AuthorizationManager.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t PegasusApplicationLaunchBehavior.AuthorizationManager.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x1E69E7CC8];
  return v0;
}

void thunk for @escaping @callee_guaranteed (@guaranteed PGBackgroundPIPAuthorization, @unowned PGBackgroundPIPAuthorizationState) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t outlined destroy of AsyncStream<PGBackgroundPIPAuthorizationState>?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo33PGBackgroundPIPAuthorizationStateVGSgMd, &_sScSySo33PGBackgroundPIPAuthorizationStateVGSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = MEMORY[0x1B27111C0](*(a2 + 40), *v10);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v11 = Hasher._finalize()();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      result = MEMORY[0x1B27111C0](*(a2 + 40), *v11);
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = (v10 + 8 * v3);
          if (v3 != v6 || v15 >= v11 + 1)
          {
            *v15 = *v11;
          }

          v16 = *(a2 + 56);
          v17 = v16 + 24 * v3;
          v18 = (v16 + 24 * v6);
          if (v3 != v6 || v17 >= v18 + 24)
          {
            v9 = *v18;
            *(v17 + 16) = *(v18 + 2);
            *v17 = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = MEMORY[0x1B27111C0](*(a2 + 40), *v10);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 16 * v3);
          v17 = (v15 + 16 * v6);
          if (16 * v3 != 16 * v6 || (v3 = v6, v16 >= v17 + 1))
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
    v14 = v12;
    v37 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = *(v15 + 56);
    v35 = (v15 - 8);
    v36 = v16;
    do
    {
      v17 = v9;
      v18 = v38 * v11;
      v19 = v14;
      v20 = v15;
      v36(v8, *(a2 + 48) + v38 * v11, v4);
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v35)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v37)
      {
        if (v22 >= v37 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          result = v25 + v38 * a1;
          v26 = v25 + v18 + v38;
          v27 = v38 * a1 < v18 || result >= v26;
          v15 = v20;
          if (v27)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v28 = v38 * a1 == v18;
            v9 = v17;
            if (!v28)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 8 * a1);
          v31 = (v29 + 8 * v11);
          if (a1 != v11 || v30 >= v31 + 1)
          {
            *v30 = *v31;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v37 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(a2 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v34;
    ++*(a2 + 36);
  }

  return result;
}

{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
    v14 = v12;
    v37 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = *(v15 + 56);
    v35 = (v15 - 8);
    v36 = v16;
    do
    {
      v17 = v9;
      v18 = v38 * v11;
      v19 = v14;
      v20 = v15;
      v36(v8, *(a2 + 48) + v38 * v11, v4);
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v35)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v37)
      {
        if (v22 >= v37 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          result = v25 + v38 * a1;
          v26 = v25 + v18 + v38;
          v27 = v38 * a1 < v18 || result >= v26;
          v15 = v20;
          if (v27)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v28 = v38 * a1 == v18;
            v9 = v17;
            if (!v28)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 16 * a1);
          v31 = (v29 + 16 * v11);
          if (a1 != v11 || v30 >= v31 + 1)
          {
            *v30 = *v31;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v37 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(a2 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v34;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(unint64_t a1, uint64_t a2)
{
  return specialized _NativeDictionary._delete(at:)(a1, a2, MEMORY[0x1E6977B10]);
}

{
  return specialized _NativeDictionary._delete(at:)(a1, a2, type metadata accessor for AttachmentLedger_AttachmentEncryption);
}

{
  return specialized _NativeDictionary._delete(at:)(a1, a2, MEMORY[0x1E69695A8]);
}

unint64_t specialized _NativeDictionary._delete(at:)(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    do
    {
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v7);
      result = MEMORY[0x1B27111C0](*(a2 + 40), *v12);
      v13 = result & v9;
      if (v4 >= v10)
      {
        if (v13 < v10 || v4 < v13)
        {
          goto LABEL_5;
        }
      }

      else if (v13 < v10 && v4 < v13)
      {
        goto LABEL_5;
      }

      v16 = (v11 + 8 * v4);
      if (v4 != v7 || v16 >= v12 + 1)
      {
        *v16 = *v12;
      }

      v17 = *(a2 + 56);
      v18 = *(*(a3(0) - 8) + 72);
      v19 = v18 * v4;
      result = v17 + v18 * v4;
      v20 = v18 * v7;
      v21 = v17 + v18 * v7 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for Date() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t dispatch thunk of PegasusApplicationLaunchBehavior.authorizePiP(for:)(uint64_t a1)
{
  v6 = (*(*v1 + 216) + **(*v1 + 216));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v6(a1);
}

void partial apply for closure #1 in closure #1 in PegasusApplicationLaunchBehavior.AuthorizationManager.insertAuthorization(activitySessionIdentifier:appBundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo33PGBackgroundPIPAuthorizationStateV_GMd, &_sScS12ContinuationVySo33PGBackgroundPIPAuthorizationStateV_GMR);

  closure #1 in closure #1 in PegasusApplicationLaunchBehavior.AuthorizationManager.insertAuthorization(activitySessionIdentifier:appBundleIdentifier:)(a1, a2);
}

uint64_t ActivitySessionClientConnection.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for ActivitySessionClientConnection.id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t key path getter for ActivitySessionClientConnection.serverDisconnectedCallback : ActivitySessionClientConnection@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + direct field offset for ActivitySessionClientConnection.serverDisconnectedCallback);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = _sIg_Ieg_TRTA_0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v4, v5);
}

uint64_t key path setter for ActivitySessionClientConnection.serverDisconnectedCallback : ActivitySessionClientConnection(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + direct field offset for ActivitySessionClientConnection.serverDisconnectedCallback);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v3, v4);
  return _sxRi_zRi0_zlyytIseghHr_SgWOe(v8, v9);
}

uint64_t key path getter for ActivitySessionClientConnection.setStateCallback : ActivitySessionClientConnection@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + direct field offset for ActivitySessionClientConnection.setStateCallback);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@unowned CPActivitySessionState, @guaranteed Error?) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v4, v5);
}

uint64_t key path setter for ActivitySessionClientConnection.setStateCallback : ActivitySessionClientConnection(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CPActivitySessionState, @in_guaranteed Error?) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + direct field offset for ActivitySessionClientConnection.setStateCallback);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v3, v4);
  return _sxRi_zRi0_zlyytIseghHr_SgWOe(v8, v9);
}

uint64_t key path getter for ActivitySessionClientConnection.setAssociatedSceneCallback : ActivitySessionClientConnection@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + direct field offset for ActivitySessionClientConnection.setAssociatedSceneCallback);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed String?) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v4, v5);
}

uint64_t key path setter for ActivitySessionClientConnection.setAssociatedSceneCallback : ActivitySessionClientConnection(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed String?) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + direct field offset for ActivitySessionClientConnection.setAssociatedSceneCallback);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v3, v4);
  return _sxRi_zRi0_zlyytIseghHr_SgWOe(v8, v9);
}

uint64_t key path getter for ActivitySessionClientConnection.setNearbyParticipantsCallback : ActivitySessionClientConnection@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + direct field offset for ActivitySessionClientConnection.setNearbyParticipantsCallback);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Set<UInt64>) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v4, v5);
}

uint64_t key path setter for ActivitySessionClientConnection.setNearbyParticipantsCallback : ActivitySessionClientConnection(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Set<UInt64>) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + direct field offset for ActivitySessionClientConnection.setNearbyParticipantsCallback);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v3, v4);
  return _sxRi_zRi0_zlyytIseghHr_SgWOe(v8, v9);
}

uint64_t key path getter for ActivitySessionClientConnection.setDataCryptorCallback : ActivitySessionClientConnection@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + direct field offset for ActivitySessionClientConnection.setDataCryptorCallback);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed BMGroupActivitySessionEvent) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v4, v5);
}

uint64_t key path setter for ActivitySessionClientConnection.setDataCryptorCallback : ActivitySessionClientConnection(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed BMGroupActivitySessionEvent) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + direct field offset for ActivitySessionClientConnection.setDataCryptorCallback);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v3, v4);
  return _sxRi_zRi0_zlyytIseghHr_SgWOe(v8, v9);
}

uint64_t ActivitySessionClientConnection.setActivityPublisher.setter(uint64_t a1)
{
  v3 = direct field offset for ActivitySessionClientConnection.setActivityPublisher;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t key path getter for ActivitySessionClientConnection.receivedResourceCallback : ActivitySessionClientConnection@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + direct field offset for ActivitySessionClientConnection.receivedResourceCallback);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed TUSandboxExtendedURL, @guaranteed Data, @unowned UInt64) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v4, v5);
}

uint64_t key path setter for ActivitySessionClientConnection.receivedResourceCallback : ActivitySessionClientConnection(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed TUSandboxExtendedURL, @in_guaranteed Data, @in_guaranteed UInt64) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + direct field offset for ActivitySessionClientConnection.receivedResourceCallback);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v3, v4);
  return _sxRi_zRi0_zlyytIseghHr_SgWOe(v8, v9);
}

uint64_t key path getter for ActivitySessionClientConnection.setExternalParticipantsCallback : ActivitySessionClientConnection@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + direct field offset for ActivitySessionClientConnection.setExternalParticipantsCallback);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed [TUExternalParticipant]) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v4, v5);
}

uint64_t key path setter for ActivitySessionClientConnection.setExternalParticipantsCallback : ActivitySessionClientConnection(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed BMGroupActivitySessionEvent) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + direct field offset for ActivitySessionClientConnection.setExternalParticipantsCallback);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v3, v4);
  return _sxRi_zRi0_zlyytIseghHr_SgWOe(v8, v9);
}

uint64_t ActivitySessionClientConnection.serverDisconnectedCallback.getter(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t ActivitySessionClientConnection.serverDisconnectedCallback.setter(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

uint64_t ActivitySessionClientConnection.shouldTranslateParticipantIDs.getter()
{
  v1 = direct field offset for ActivitySessionClientConnection.$__lazy_storage_$_shouldTranslateParticipantIDs;
  v2 = v0[direct field offset for ActivitySessionClientConnection.$__lazy_storage_$_shouldTranslateParticipantIDs];
  if (v2 == 2)
  {
    LOBYTE(v2) = closure #1 in ActivitySessionClientConnection.shouldTranslateParticipantIDs.getter(v0);
    v0[v1] = v2 & 1;
  }

  return v2 & 1;
}

uint64_t closure #1 in ActivitySessionClientConnection.shouldTranslateParticipantIDs.getter(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 processInfo];
  v4 = SecTaskCreateFromSelf(0);
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0x1B270FF70](0xD00000000000001CLL, 0x80000001AEE2ED50);
    v7 = SecTaskCopyValueForEntitlement(v5, v6, 0);

    if (v7)
    {
      *(&v40 + 1) = swift_getObjectType();

      *&v39 = v7;
    }

    else
    {
      v39 = 0u;
      v40 = 0u;
    }
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  if (!swift_dynamicCast() || (v8 = v37, v37 == 2))
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v9 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v8 = *(v9 + 1);
  }

  v10 = [v2 processInfo];
  v11 = specialized EntitlementValueProviding.isEntitledToUseGameCenter.getter();

  if (v8)
  {
    v12 = 1;
  }

  else
  {
    v13 = [objc_allocWithZone(CPFeatureFlags) init];
    v14 = [v13 gameCenterFastSyncTransport];

    v12 = v14 & v11;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Log.default);
  v16 = a1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v38 = v20;
    *v19 = 67110146;
    *(v19 + 4) = v12;
    *(v19 + 8) = 2080;
    v21 = [objc_opt_self() mainBundle];
    v22 = [v21 bundleIdentifier];

    if (v22)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = String.init<A>(reflecting:)();
      v25 = v24;
    }

    else
    {
      v25 = 0xE300000000000000;
      v23 = 7104878;
    }

    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v38);

    *(v19 + 10) = v26;
    *(v19 + 18) = 2080;
    v27 = String.init<A>(reflecting:)();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v38);

    *(v19 + 20) = v29;
    *(v19 + 28) = 2080;
    v30 = String.init<A>(reflecting:)();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v38);

    *(v19 + 30) = v32;
    *(v19 + 38) = 2080;
    v33 = String.init<A>(reflecting:)();
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v38);

    *(v19 + 40) = v35;
    _os_log_impl(&dword_1AEB26000, v17, v18, "[Translation] Translating=%{BOOL}d, bundleID=%s entitledToUsePrivateAPI=%s entitledToUseGameCenter=%s self=%s", v19, 0x30u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v20, -1, -1);
    MEMORY[0x1B27120C0](v19, -1, -1);

    return v12;
  }

  else
  {
  }

  return v12;
}

Swift::Void __swiftcall ActivitySessionClientConnection.handleServerDisconnect()()
{
  v1 = v0 + direct field offset for ActivitySessionClientConnection.serverDisconnectedCallback;
  swift_beginAccess();
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v1 + 8);

    v2(v4);
    _sxRi_zRi0_zlyytIseghHr_SgWOe(v2, v3);
  }
}

void **ActivitySessionClientConnection.requestParticipantTranslations(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = (v2 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x1E69E7CD0];
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
    v24 = swift_slowAlloc();
    aBlock[0] = v24;
    *v8 = 136315138;
    type metadata accessor for ParticipantTranslationRequest();
    lazy protocol witness table accessor for type ParticipantTranslationRequest and conformance NSObject(&lazy protocol witness table cache variable for type ParticipantTranslationRequest and conformance NSObject, type metadata accessor for ParticipantTranslationRequest);
    v9 = Set.description.getter();
    v11 = (v2 + 16);
    v12 = v4;
    v13 = v2;
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, aBlock);

    *(v8 + 4) = v14;
    v2 = v13;
    v4 = v12;
    v3 = v11;
    _os_log_impl(&dword_1AEB26000, v6, v7, "[Translation] Requesting translations for %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x1B27120C0](v24, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  v15 = v26;
  v16 = *&v26[direct field offset for XPCClient.queue];
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = a1;
  v17[4] = v4;
  v17[5] = v2;
  v18 = swift_allocObject();
  *(v18 + 16) = partial apply for closure #1 in ActivitySessionClientConnection.requestParticipantTranslations(_:);
  *(v18 + 24) = v17;
  aBlock[4] = _sIg_Ieg_TRTA_0;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_19;
  v19 = _Block_copy(aBlock);

  v20 = v15;

  dispatch_sync(v16, v19);
  _Block_release(v19);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    v22 = *v3;
    if (*v3)
    {
      swift_willThrow();
      v23 = v22;
    }

    else
    {
      swift_beginAccess();
      v3 = *(v4 + 16);
    }

    return v3;
  }

  return result;
}

void closure #1 in ActivitySessionClientConnection.requestParticipantTranslations(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a4;
  v9 = a1;

  v10 = specialized XPCClient.connection.getter();
  v21 = partial apply for closure #2 in closure #1 in ActivitySessionClientConnection.requestParticipantTranslations(_:);
  v22 = v8;
  aBlock = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  v20 = &block_descriptor_73;
  v11 = _Block_copy(&aBlock);

  v12 = [v10 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v11);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore22ActivitySessionXPCHost_pMd, &_s14CopresenceCore22ActivitySessionXPCHost_pMR);
  if (swift_dynamicCast())
  {
    type metadata accessor for ParticipantTranslationRequest();
    lazy protocol witness table accessor for type ParticipantTranslationRequest and conformance NSObject(&lazy protocol witness table cache variable for type ParticipantTranslationRequest and conformance NSObject, type metadata accessor for ParticipantTranslationRequest);
    isa = Set._bridgeToObjectiveC()().super.isa;
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;
    v21 = partial apply for closure #1 in closure #1 in closure #1 in ActivitySessionClientConnection.requestParticipantTranslations(_:);
    v22 = v14;
    aBlock = MEMORY[0x1E69E9820];
    v18 = 1107296256;
    v19 = thunk for @escaping @callee_guaranteed (@guaranteed Set<ParticipantTranslationResponse>) -> ();
    v20 = &block_descriptor_79;
    v15 = _Block_copy(&aBlock);

    [v16 requestParticipantTranslationsFor:isa completion:v15];
    _Block_release(v15);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #1 in closure #1 in closure #1 in ActivitySessionClientConnection.requestParticipantTranslations(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
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
    v17[0] = v9;
    *v8 = 136315394;
    type metadata accessor for ParticipantTranslationResponse();
    lazy protocol witness table accessor for type ParticipantTranslationRequest and conformance NSObject(&lazy protocol witness table cache variable for type ParticipantTranslationResponse and conformance NSObject, type metadata accessor for ParticipantTranslationResponse);
    v10 = Set.description.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v17);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    type metadata accessor for ParticipantTranslationRequest();
    lazy protocol witness table accessor for type ParticipantTranslationRequest and conformance NSObject(&lazy protocol witness table cache variable for type ParticipantTranslationRequest and conformance NSObject, type metadata accessor for ParticipantTranslationRequest);
    v13 = Set.description.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v17);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_1AEB26000, v6, v7, "[Translation] Received translations %s for %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  swift_beginAccess();
  *(a3 + 16) = a1;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed Set<ParticipantTranslationResponse>) -> ()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  type metadata accessor for ParticipantTranslationResponse();
  lazy protocol witness table accessor for type ParticipantTranslationRequest and conformance NSObject(&lazy protocol witness table cache variable for type ParticipantTranslationResponse and conformance NSObject, type metadata accessor for ParticipantTranslationResponse);
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

id closure #2 in closure #1 in ActivitySessionClientConnection.requestParticipantTranslations(_:)(void *a1, void *a2, uint64_t a3)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.default);
  v7 = a2;
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21[0] = v13;
    *v11 = 138412546;
    *(v11 + 4) = v7;
    *v12 = v7;
    *(v11 + 12) = 2080;
    v14 = v7;
    v15 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v16 = String.init<A>(reflecting:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v21);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_1AEB26000, v9, v10, "[Translation] %@ connection error %s while requesting participant info", v11, 0x16u);
    outlined destroy of NSObject?(v12);
    MEMORY[0x1B27120C0](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1B27120C0](v13, -1, -1);
    MEMORY[0x1B27120C0](v11, -1, -1);
  }

  swift_beginAccess();
  v19 = *(a3 + 16);
  *(a3 + 16) = a1;

  return a1;
}

uint64_t @objc ActivitySessionClientConnection.setState(state:error:)(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = &a1[direct field offset for ActivitySessionClientConnection.setStateCallback];
  result = swift_beginAccess();
  v9 = *v7;
  if (*v7)
  {
    v10 = *(v7 + 1);
    v11 = a1;
    v12 = a4;
    outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v9, v10);
    v9(a3, a4);

    return _sxRi_zRi0_zlyytIseghHr_SgWOe(v9, v10);
  }

  return result;
}

uint64_t @objc ActivitySessionClientConnection.setDataCryptor(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = &a1[direct field offset for ActivitySessionClientConnection.setDataCryptorCallback];
  result = swift_beginAccess();
  v7 = *v5;
  if (*v5)
  {
    v8 = *(v5 + 1);
    swift_unknownObjectRetain();
    v9 = a1;
    outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v7, v8);
    v7(a3);
    swift_unknownObjectRelease();

    return _sxRi_zRi0_zlyytIseghHr_SgWOe(v7, v8);
  }

  return result;
}

uint64_t ActivitySessionClientConnection.setActivity(activity:)(uint64_t a1)
{
  swift_beginAccess();

  PassthroughSubject.send(_:)();
}

void @objc ActivitySessionClientConnection.setActivity(activity:)(char *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  v5 = a3;
  v6 = a1;

  PassthroughSubject.send(_:)();
}

uint64_t ActivitySessionClientConnection.setState(state:error:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  v9 = v5 + *a3;
  result = swift_beginAccess();
  v11 = *v9;
  if (*v9)
  {
    v12 = *(v9 + 8);

    v11(a1, a2);
    return a5(v11, v12);
  }

  return result;
}

uint64_t @objc ActivitySessionClientConnection.setAssociatedScene(sceneSessionIdentifier:)(char *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = &a1[direct field offset for ActivitySessionClientConnection.setAssociatedSceneCallback];
  swift_beginAccess();
  v8 = *v7;
  if (!*v7)
  {
  }

  v9 = *(v7 + 1);
  v10 = a1;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v8, v9);
  v8(v4, v6);

  return _sxRi_zRi0_zlyytIseghHr_SgWOe(v8, v9);
}

uint64_t @objc ActivitySessionClientConnection.setNearbyParticipants(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = &a1[direct field offset for ActivitySessionClientConnection.setNearbyParticipantsCallback];
  swift_beginAccess();
  v6 = *v5;
  if (!*v5)
  {
  }

  v7 = *(v5 + 1);
  v8 = a1;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v6, v7);
  v6(v4);

  return _sxRi_zRi0_zlyytIseghHr_SgWOe(v6, v7);
}

uint64_t ActivitySessionClientConnection.receivedResource(atURL:withMetadata:fromParticipantWithIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4 + direct field offset for ActivitySessionClientConnection.receivedResourceCallback;
  result = swift_beginAccess();
  v11 = *v9;
  if (*v9)
  {
    v12 = *(v9 + 8);

    v11(a1, a2, a3, a4);
    return _sxRi_zRi0_zlyytIseghHr_SgWOe(v11, v12);
  }

  return result;
}

void @objc ActivitySessionClientConnection.receivedResource(atURL:withMetadata:fromParticipantWithIdentifier:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = &v10[direct field offset for ActivitySessionClientConnection.receivedResourceCallback];
  swift_beginAccess();
  v15 = *v14;
  if (*v14)
  {
    v16 = *(v14 + 1);

    v15(v8, v11, v13, a5);

    outlined consume of Data._Representation(v11, v13);
    _sxRi_zRi0_zlyytIseghHr_SgWOe(v15, v16);
  }

  else
  {

    outlined consume of Data._Representation(v11, v13);
  }
}

uint64_t ActivitySessionClientConnection.setDataCryptor(_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void (*)(uint64_t), uint64_t))
{
  v7 = v4 + *a2;
  result = swift_beginAccess();
  v9 = *v7;
  if (*v7)
  {
    v10 = *(v7 + 8);

    v9(a1);
    return a4(v9, v10);
  }

  return result;
}

uint64_t @objc ActivitySessionClientConnection.setExternalParticipants(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for TUExternalParticipant();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = &a1[direct field offset for ActivitySessionClientConnection.setExternalParticipantsCallback];
  swift_beginAccess();
  v6 = *v5;
  if (!*v5)
  {
  }

  v7 = *(v5 + 1);
  v8 = a1;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v6, v7);
  v6(v4);

  return _sxRi_zRi0_zlyytIseghHr_SgWOe(v6, v7);
}

id ActivitySessionClientConnection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ActivitySessionClientConnection.init()()
{
  ObjectType = swift_getObjectType();
  UUID.init()();
  v2 = &v0[direct field offset for ActivitySessionClientConnection.serverDisconnectedCallback];
  *v2 = 0;
  v2[1] = 0;
  v3 = &v0[direct field offset for ActivitySessionClientConnection.setStateCallback];
  *v3 = 0;
  v3[1] = 0;
  v4 = &v0[direct field offset for ActivitySessionClientConnection.setAssociatedSceneCallback];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v0[direct field offset for ActivitySessionClientConnection.setNearbyParticipantsCallback];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v0[direct field offset for ActivitySessionClientConnection.setDataCryptorCallback];
  *v6 = 0;
  v6[1] = 0;
  v7 = direct field offset for ActivitySessionClientConnection.setActivityPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCySo22TUConversationActivityCs5NeverOGMd, &_s7Combine18PassthroughSubjectCySo22TUConversationActivityCs5NeverOGMR);
  swift_allocObject();
  *&v0[v7] = PassthroughSubject.init()();
  v8 = &v0[direct field offset for ActivitySessionClientConnection.receivedResourceCallback];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v0[direct field offset for ActivitySessionClientConnection.setExternalParticipantsCallback];
  *v9 = 0;
  v9[1] = 0;
  v0[direct field offset for ActivitySessionClientConnection.$__lazy_storage_$_shouldTranslateParticipantIDs] = 2;
  v11.receiver = v0;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t ActivitySessionClientConnection.__ivar_destroyer()
{
  v1 = direct field offset for ActivitySessionClientConnection.id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  _sxRi_zRi0_zlyytIseghHr_SgWOe(*(v0 + direct field offset for ActivitySessionClientConnection.serverDisconnectedCallback), *(v0 + direct field offset for ActivitySessionClientConnection.serverDisconnectedCallback + 8));
  _sxRi_zRi0_zlyytIseghHr_SgWOe(*(v0 + direct field offset for ActivitySessionClientConnection.setStateCallback), *(v0 + direct field offset for ActivitySessionClientConnection.setStateCallback + 8));
  _sxRi_zRi0_zlyytIseghHr_SgWOe(*(v0 + direct field offset for ActivitySessionClientConnection.setAssociatedSceneCallback), *(v0 + direct field offset for ActivitySessionClientConnection.setAssociatedSceneCallback + 8));
  _sxRi_zRi0_zlyytIseghHr_SgWOe(*(v0 + direct field offset for ActivitySessionClientConnection.setNearbyParticipantsCallback), *(v0 + direct field offset for ActivitySessionClientConnection.setNearbyParticipantsCallback + 8));
  _sxRi_zRi0_zlyytIseghHr_SgWOe(*(v0 + direct field offset for ActivitySessionClientConnection.setDataCryptorCallback), *(v0 + direct field offset for ActivitySessionClientConnection.setDataCryptorCallback + 8));

  _sxRi_zRi0_zlyytIseghHr_SgWOe(*(v0 + direct field offset for ActivitySessionClientConnection.receivedResourceCallback), *(v0 + direct field offset for ActivitySessionClientConnection.receivedResourceCallback + 8));
  v3 = *(v0 + direct field offset for ActivitySessionClientConnection.setExternalParticipantsCallback);
  v4 = *(v0 + direct field offset for ActivitySessionClientConnection.setExternalParticipantsCallback + 8);

  return _sxRi_zRi0_zlyytIseghHr_SgWOe(v3, v4);
}

id ActivitySessionClientConnection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t @objc ActivitySessionClientConnection.__ivar_destroyer(uint64_t a1)
{
  v2 = direct field offset for ActivitySessionClientConnection.id;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  _sxRi_zRi0_zlyytIseghHr_SgWOe(*(a1 + direct field offset for ActivitySessionClientConnection.serverDisconnectedCallback), *(a1 + direct field offset for ActivitySessionClientConnection.serverDisconnectedCallback + 8));
  _sxRi_zRi0_zlyytIseghHr_SgWOe(*(a1 + direct field offset for ActivitySessionClientConnection.setStateCallback), *(a1 + direct field offset for ActivitySessionClientConnection.setStateCallback + 8));
  _sxRi_zRi0_zlyytIseghHr_SgWOe(*(a1 + direct field offset for ActivitySessionClientConnection.setAssociatedSceneCallback), *(a1 + direct field offset for ActivitySessionClientConnection.setAssociatedSceneCallback + 8));
  _sxRi_zRi0_zlyytIseghHr_SgWOe(*(a1 + direct field offset for ActivitySessionClientConnection.setNearbyParticipantsCallback), *(a1 + direct field offset for ActivitySessionClientConnection.setNearbyParticipantsCallback + 8));
  _sxRi_zRi0_zlyytIseghHr_SgWOe(*(a1 + direct field offset for ActivitySessionClientConnection.setDataCryptorCallback), *(a1 + direct field offset for ActivitySessionClientConnection.setDataCryptorCallback + 8));

  _sxRi_zRi0_zlyytIseghHr_SgWOe(*(a1 + direct field offset for ActivitySessionClientConnection.receivedResourceCallback), *(a1 + direct field offset for ActivitySessionClientConnection.receivedResourceCallback + 8));
  v4 = *(a1 + direct field offset for ActivitySessionClientConnection.setExternalParticipantsCallback);
  v5 = *(a1 + direct field offset for ActivitySessionClientConnection.setExternalParticipantsCallback + 8);

  return _sxRi_zRi0_zlyytIseghHr_SgWOe(v4, v5);
}

uint64_t type metadata accessor for ActivitySessionClientConnection(uint64_t a1)
{
  result = type metadata singleton initialization cache for ActivitySessionClientConnection;
  if (!type metadata singleton initialization cache for ActivitySessionClientConnection)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for ActivitySessionClientConnection(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed TUSandboxExtendedURL, @in_guaranteed Data, @in_guaranteed UInt64) -> (@out ())(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v8[1] = a3;
  v9 = a1;
  v7 = a4;
  v8[0] = a2;
  return v5(&v9, v8, &v7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed String?) -> (@out ())(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[0] = a1;
  v5[1] = a2;
  return v3(v5);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CPActivitySessionState, @in_guaranteed Error?) -> (@out ())(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  v6 = a1;
  return v3(&v6, &v5);
}

uint64_t lazy protocol witness table accessor for type ParticipantTranslationRequest and conformance NSObject(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

unint64_t RTCReportingKeys.Keys.rawValue.getter(char a1)
{
  result = 0x617275642D707271;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
    case 6:
      v3 = 5;
      goto LABEL_10;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      v3 = 11;
LABEL_10:
      result = v3 | 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000018;
      break;
    case 11:
      result = 0xD000000000000024;
      break;
    case 12:
    case 14:
      result = 0xD00000000000001FLL;
      break;
    case 13:
    case 15:
      result = 0xD000000000000020;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t Histogram.rtcRepresentation.getter()
{
  v1 = *(*v0 + 128);
  v2 = v1();
  v3 = *(v2 + 16);
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v5 = *(v2 + 8 * i + 32);
      v6 = *(v1() + 16);

      if (i < v6 - 1)
      {
        if (v5)
        {
          v9 = dispatch thunk of CustomStringConvertible.description.getter();
          v10 = v7;
          MEMORY[0x1B2710020](44, 0xE100000000000000);
          MEMORY[0x1B2710020](v9, v10);
        }

        else
        {
          MEMORY[0x1B2710020](44, 0xE100000000000000);
        }
      }
    }
  }

  return 0;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RTCReportingKeys.Keys(char *a1, char *a2)
{
  v2 = *a2;
  v3 = RTCReportingKeys.Keys.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == RTCReportingKeys.Keys.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RTCReportingKeys.Keys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  RTCReportingKeys.Keys.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance RTCReportingKeys.Keys(uint64_t a1)
{
  RTCReportingKeys.Keys.rawValue.getter(*v1);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RTCReportingKeys.Keys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  RTCReportingKeys.Keys.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance RTCReportingKeys.Keys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized RTCReportingKeys.Keys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RTCReportingKeys.Keys@<X0>(unint64_t *a1@<X8>)
{
  result = RTCReportingKeys.Keys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t specialized RTCReportingKeys.Keys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RTCReportingKeys.Keys.init(rawValue:), v2);

  if (v3 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type RTCReportingKeys.Keys and conformance RTCReportingKeys.Keys()
{
  result = lazy protocol witness table cache variable for type RTCReportingKeys.Keys and conformance RTCReportingKeys.Keys;
  if (!lazy protocol witness table cache variable for type RTCReportingKeys.Keys and conformance RTCReportingKeys.Keys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RTCReportingKeys.Keys and conformance RTCReportingKeys.Keys);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RTCReportingKeys.Keys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RTCReportingKeys.Keys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t *PluginPubSubServiceProvider.Rpc.ListenSystemEvents.unsafeMutableAddressor()
{
  if (one-time initialization token for ListenSystemEvents != -1)
  {
    swift_once();
  }

  return &static PluginPubSubServiceProvider.Rpc.ListenSystemEvents;
}

uint64_t *PluginPubSubServiceProvider.Rpc.Subscribe.unsafeMutableAddressor()
{
  if (one-time initialization token for Subscribe != -1)
  {
    swift_once();
  }

  return &static PluginPubSubServiceProvider.Rpc.Subscribe;
}

uint64_t *PluginPubSubServiceProvider.Rpc.Publish.unsafeMutableAddressor()
{
  if (one-time initialization token for Publish != -1)
  {
    swift_once();
  }

  return &static PluginPubSubServiceProvider.Rpc.Publish;
}

void one-time initialization function for CreateTopic()
{
  static PluginPubSubServiceProvider.Rpc.CreateTopic = 0xD000000000000016;
  *algn_1EB617F90 = 0x80000001AEE352E0;
}

{
  static PluginAttachmentLedgerServiceProvider.Rpc.CreateTopic = 0xD00000000000002ELL;
  unk_1EB6184A8 = 0x80000001AEE37000;
}

uint64_t *PluginPubSubServiceProvider.Rpc.CreateTopic.unsafeMutableAddressor()
{
  if (one-time initialization token for CreateTopic != -1)
  {
    swift_once();
  }

  return &static PluginPubSubServiceProvider.Rpc.CreateTopic;
}

uint64_t *PluginPubSubServiceProvider.Rpc.UpsertTopicMetadata.unsafeMutableAddressor()
{
  if (one-time initialization token for UpsertTopicMetadata != -1)
  {
    swift_once();
  }

  return &static PluginPubSubServiceProvider.Rpc.UpsertTopicMetadata;
}

uint64_t *PluginPubSubServiceProvider.Rpc.FetchTopics.unsafeMutableAddressor()
{
  if (one-time initialization token for FetchTopics != -1)
  {
    swift_once();
  }

  return &static PluginPubSubServiceProvider.Rpc.FetchTopics;
}

uint64_t *PluginPubSubServiceProvider.Rpc.ListenTopicSubscribers.unsafeMutableAddressor()
{
  if (one-time initialization token for ListenTopicSubscribers != -1)
  {
    swift_once();
  }

  return &static PluginPubSubServiceProvider.Rpc.ListenTopicSubscribers;
}

uint64_t PluginPubSubServiceProvider.__allocating_init(client:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t PluginPubSubServiceProvider.listen()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v40 - v1;
  v51 = type metadata accessor for Google_Protobuf_Empty();
  MEMORY[0x1EEE9AC00](v51);
  v47 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine4JustVy21InternalSwiftProtobuf07Google_E6_EmptyVGMd, &_s7Combine4JustVy21InternalSwiftProtobuf07Google_E6_EmptyVGMR);
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v40 - v5;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v40 - v11;
  UUID.init()();
  if (one-time initialization token for pubsub != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Log.pubsub);
  v43 = *(v7 + 16);
  v43(v10, v12, v6);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v41 = v12;
    v17 = v16;
    v18 = swift_slowAlloc();
    v42 = v2;
    v19 = v18;
    v52[0] = v18;
    *v17 = 136315138;
    v20 = UUID.uuidString.getter();
    v22 = v21;
    v23 = *(v7 + 8);
    v44 = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v45 = v23;
    v23(v10, v6);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v52);

    *(v17 + 4) = v24;
    _os_log_impl(&dword_1AEB26000, v14, v15, "Creating Listen RPC stream traceId=%s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    v25 = v19;
    v2 = v42;
    MEMORY[0x1B27120C0](v25, -1, -1);
    v26 = v17;
    v12 = v41;
    MEMORY[0x1B27120C0](v26, -1, -1);
  }

  else
  {

    v27 = *(v7 + 8);
    v44 = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v45 = v27;
    v27(v10, v6);
  }

  Google_Protobuf_Empty.init()();
  v28 = v46;
  v29 = v51;
  Just.init(_:)();
  lazy protocol witness table accessor for type Just<Google_Protobuf_Empty> and conformance Just<A>(&lazy protocol witness table cache variable for type Just<Google_Protobuf_Empty> and conformance Just<A>, &_s7Combine4JustVy21InternalSwiftProtobuf07Google_E6_EmptyVGMd, &_s7Combine4JustVy21InternalSwiftProtobuf07Google_E6_EmptyVGMR);
  v30 = v49;
  v31 = Publisher.eraseToAnyPublisher()();
  (*(v48 + 8))(v28, v30);
  v32 = *(v50 + 16);
  v52[0] = 0xD00000000000001DLL;
  v52[1] = 0x80000001AEE35280;
  v43(v2, v12, v6);
  (*(v7 + 56))(v2, 0, 1, v6);
  v33 = *(*v32 + 272);
  v34 = type metadata accessor for CP_SystemEvent(0);
  v35 = v12;
  v36 = lazy protocol witness table accessor for type Google_Protobuf_Empty and conformance Google_Protobuf_Empty(&lazy protocol witness table cache variable for type Google_Protobuf_Empty and conformance Google_Protobuf_Empty, MEMORY[0x1E69AAB30], MEMORY[0x1E69AAB28]);
  v37 = lazy protocol witness table accessor for type Google_Protobuf_Empty and conformance Google_Protobuf_Empty(&lazy protocol witness table cache variable for type CP_SystemEvent and conformance CP_SystemEvent, type metadata accessor for CP_SystemEvent, &protocol conformance descriptor for CP_SystemEvent);
  v38 = v33(v52, v31, v2, v29, v34, v36, v37);

  outlined destroy of UUID?(v2);

  v45(v35, v6);
  return v38;
}

uint64_t PluginPubSubServiceProvider.subscribe(input:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v45 = &v38 - v5;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v38 - v11;
  UUID.init()();
  if (one-time initialization token for pubsub != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Log.pubsub);
  v42 = *(v7 + 16);
  v42(v10, v12, v6);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v41 = a1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v40 = v12;
    v19 = v18;
    v46[0] = v18;
    *v17 = 136315138;
    v20 = UUID.uuidString.getter();
    v39 = v2;
    v22 = v21;
    v23 = *(v7 + 8);
    v43 = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v44 = v23;
    v23(v10, v6);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v46);
    v2 = v39;

    *(v17 + 4) = v24;
    _os_log_impl(&dword_1AEB26000, v14, v15, "Creating Subscribe RPC stream traceId=%s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    v25 = v19;
    v12 = v40;
    MEMORY[0x1B27120C0](v25, -1, -1);
    v26 = v17;
    a1 = v41;
    MEMORY[0x1B27120C0](v26, -1, -1);
  }

  else
  {

    v27 = *(v7 + 8);
    v43 = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v44 = v27;
    v27(v10, v6);
  }

  v28 = *(v2 + 16);
  v46[0] = 0xD000000000000014;
  v46[1] = 0x80000001AEE352A0;
  v29 = v45;
  v42(v45, v12, v6);
  (*(v7 + 56))(v29, 0, 1, v6);
  v30 = *(*v28 + 272);
  v31 = v12;
  v32 = type metadata accessor for CP_SubscribeRequest(0);
  v33 = type metadata accessor for CP_SubscribeResponse(0);
  v34 = lazy protocol witness table accessor for type Google_Protobuf_Empty and conformance Google_Protobuf_Empty(&lazy protocol witness table cache variable for type CP_SubscribeRequest and conformance CP_SubscribeRequest, type metadata accessor for CP_SubscribeRequest, &protocol conformance descriptor for CP_SubscribeRequest);
  v35 = lazy protocol witness table accessor for type Google_Protobuf_Empty and conformance Google_Protobuf_Empty(&lazy protocol witness table cache variable for type CP_SubscribeResponse and conformance CP_SubscribeResponse, type metadata accessor for CP_SubscribeResponse, &protocol conformance descriptor for CP_SubscribeResponse);
  v36 = v30(v46, a1, v29, v32, v33, v34, v35);
  outlined destroy of UUID?(v29);

  v44(v31, v6);
  return v36;
}

uint64_t PluginPubSubServiceProvider.publish(input:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v45 = &v38 - v5;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v38 - v11;
  UUID.init()();
  if (one-time initialization token for pubsub != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Log.pubsub);
  v42 = *(v7 + 16);
  v42(v10, v12, v6);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v41 = a1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v40 = v12;
    v19 = v18;
    v46[0] = v18;
    *v17 = 136315138;
    v20 = UUID.uuidString.getter();
    v39 = v2;
    v22 = v21;
    v23 = *(v7 + 8);
    v43 = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v44 = v23;
    v23(v10, v6);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v46);
    v2 = v39;

    *(v17 + 4) = v24;
    _os_log_impl(&dword_1AEB26000, v14, v15, "Creating Publish RPC stream traceId=%s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    v25 = v19;
    v12 = v40;
    MEMORY[0x1B27120C0](v25, -1, -1);
    v26 = v17;
    a1 = v41;
    MEMORY[0x1B27120C0](v26, -1, -1);
  }

  else
  {

    v27 = *(v7 + 8);
    v43 = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v44 = v27;
    v27(v10, v6);
  }

  v28 = *(v2 + 16);
  v46[0] = 0xD000000000000012;
  v46[1] = 0x80000001AEE352C0;
  v29 = v45;
  v42(v45, v12, v6);
  (*(v7 + 56))(v29, 0, 1, v6);
  v30 = *(*v28 + 272);
  v31 = v12;
  v32 = type metadata accessor for CP_PublishRequest(0);
  v33 = type metadata accessor for CP_PublishResponse(0);
  v34 = lazy protocol witness table accessor for type Google_Protobuf_Empty and conformance Google_Protobuf_Empty(&lazy protocol witness table cache variable for type CP_PublishRequest and conformance CP_PublishRequest, type metadata accessor for CP_PublishRequest, &protocol conformance descriptor for CP_PublishRequest);
  v35 = lazy protocol witness table accessor for type Google_Protobuf_Empty and conformance Google_Protobuf_Empty(&lazy protocol witness table cache variable for type CP_PublishResponse and conformance CP_PublishResponse, type metadata accessor for CP_PublishResponse, &protocol conformance descriptor for CP_PublishResponse);
  v36 = v30(v46, a1, v29, v32, v33, v34, v35);
  outlined destroy of UUID?(v29);

  v44(v31, v6);
  return v36;
}

uint64_t PluginPubSubServiceProvider.createTopic(input:)(uint64_t a1)
{
  v50 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v41 - v2;
  TopicRequest = type metadata accessor for CP_CreateTopicRequest(0);
  MEMORY[0x1EEE9AC00](TopicRequest);
  v47 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine4JustVy14CopresenceCore21CP_CreateTopicRequestVGMd, &_s7Combine4JustVy14CopresenceCore21CP_CreateTopicRequestVGMR);
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v41 - v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v41 - v12;
  UUID.init()();
  if (one-time initialization token for pubsub != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Log.pubsub);
  v43 = *(v8 + 16);
  v43(v11, v13, v7);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v41 = v13;
    v18 = v17;
    v19 = swift_slowAlloc();
    v42 = v3;
    v20 = v19;
    v53[0] = v19;
    *v18 = 136315138;
    v21 = UUID.uuidString.getter();
    v23 = v22;
    v24 = *(v8 + 8);
    v44 = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v45 = v24;
    v24(v11, v7);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, v53);

    *(v18 + 4) = v25;
    _os_log_impl(&dword_1AEB26000, v15, v16, "Creating CreateTopic RPC request traceId=%s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    v26 = v20;
    v3 = v42;
    MEMORY[0x1B27120C0](v26, -1, -1);
    v27 = v18;
    v13 = v41;
    MEMORY[0x1B27120C0](v27, -1, -1);
  }

  else
  {

    v28 = *(v8 + 8);
    v44 = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v45 = v28;
    v28(v11, v7);
  }

  outlined init with copy of CP_CreateTopicRequest(v50, v47, type metadata accessor for CP_CreateTopicRequest);
  v29 = v46;
  v30 = TopicRequest;
  Just.init(_:)();
  lazy protocol witness table accessor for type Just<Google_Protobuf_Empty> and conformance Just<A>(&lazy protocol witness table cache variable for type Just<CP_CreateTopicRequest> and conformance Just<A>, &_s7Combine4JustVy14CopresenceCore21CP_CreateTopicRequestVGMd, &_s7Combine4JustVy14CopresenceCore21CP_CreateTopicRequestVGMR);
  v31 = v49;
  v32 = Publisher.eraseToAnyPublisher()();
  (*(v48 + 8))(v29, v31);
  v33 = *(v51 + 16);
  v53[0] = 0xD000000000000016;
  v53[1] = 0x80000001AEE352E0;
  v43(v3, v13, v7);
  (*(v8 + 56))(v3, 0, 1, v7);
  v34 = *(*v33 + 272);
  TopicResponse = type metadata accessor for CP_CreateTopicResponse(0);
  v36 = v13;
  v37 = lazy protocol witness table accessor for type Google_Protobuf_Empty and conformance Google_Protobuf_Empty(&lazy protocol witness table cache variable for type CP_CreateTopicRequest and conformance CP_CreateTopicRequest, type metadata accessor for CP_CreateTopicRequest, &protocol conformance descriptor for CP_CreateTopicRequest);
  v38 = lazy protocol witness table accessor for type Google_Protobuf_Empty and conformance Google_Protobuf_Empty(&lazy protocol witness table cache variable for type CP_CreateTopicResponse and conformance CP_CreateTopicResponse, type metadata accessor for CP_CreateTopicResponse, &protocol conformance descriptor for CP_CreateTopicResponse);
  v39 = v34(v53, v32, v3, v30, TopicResponse, v37, v38);

  outlined destroy of UUID?(v3);

  v45(v36, v7);
  return v39;
}

uint64_t PluginPubSubServiceProvider.upsertTopicMetadata(input:)(uint64_t a1)
{
  v50 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v41 - v2;
  v52 = type metadata accessor for CP_UpsertTopicMetadataRequest(0);
  MEMORY[0x1EEE9AC00](v52);
  v47 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine4JustVy14CopresenceCore29CP_UpsertTopicMetadataRequestVGMd, &_s7Combine4JustVy14CopresenceCore29CP_UpsertTopicMetadataRequestVGMR);
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v41 - v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v41 - v12;
  UUID.init()();
  if (one-time initialization token for pubsub != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Log.pubsub);
  v43 = *(v8 + 16);
  v43(v11, v13, v7);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v41 = v13;
    v18 = v17;
    v19 = swift_slowAlloc();
    v42 = v3;
    v20 = v19;
    v53[0] = v19;
    *v18 = 136315138;
    v21 = UUID.uuidString.getter();
    v23 = v22;
    v24 = *(v8 + 8);
    v44 = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v45 = v24;
    v24(v11, v7);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, v53);

    *(v18 + 4) = v25;
    _os_log_impl(&dword_1AEB26000, v15, v16, "Creating UpsertTopicMetadata RPC request traceId=%s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    v26 = v20;
    v3 = v42;
    MEMORY[0x1B27120C0](v26, -1, -1);
    v27 = v18;
    v13 = v41;
    MEMORY[0x1B27120C0](v27, -1, -1);
  }

  else
  {

    v28 = *(v8 + 8);
    v44 = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v45 = v28;
    v28(v11, v7);
  }

  outlined init with copy of CP_CreateTopicRequest(v50, v47, type metadata accessor for CP_UpsertTopicMetadataRequest);
  v29 = v46;
  v30 = v52;
  Just.init(_:)();
  lazy protocol witness table accessor for type Just<Google_Protobuf_Empty> and conformance Just<A>(&lazy protocol witness table cache variable for type Just<CP_UpsertTopicMetadataRequest> and conformance Just<A>, &_s7Combine4JustVy14CopresenceCore29CP_UpsertTopicMetadataRequestVGMd, &_s7Combine4JustVy14CopresenceCore29CP_UpsertTopicMetadataRequestVGMR);
  v31 = v49;
  v32 = Publisher.eraseToAnyPublisher()();
  (*(v48 + 8))(v29, v31);
  v33 = *(v51 + 16);
  v53[0] = 0xD00000000000001ELL;
  v53[1] = 0x80000001AEE35300;
  v43(v3, v13, v7);
  (*(v8 + 56))(v3, 0, 1, v7);
  v34 = *(*v33 + 272);
  v35 = type metadata accessor for CP_UpsertTopicMetadataResponse(0);
  v36 = v13;
  v37 = lazy protocol witness table accessor for type Google_Protobuf_Empty and conformance Google_Protobuf_Empty(&lazy protocol witness table cache variable for type CP_UpsertTopicMetadataRequest and conformance CP_UpsertTopicMetadataRequest, type metadata accessor for CP_UpsertTopicMetadataRequest, &protocol conformance descriptor for CP_UpsertTopicMetadataRequest);
  v38 = lazy protocol witness table accessor for type Google_Protobuf_Empty and conformance Google_Protobuf_Empty(&lazy protocol witness table cache variable for type CP_UpsertTopicMetadataResponse and conformance CP_UpsertTopicMetadataResponse, type metadata accessor for CP_UpsertTopicMetadataResponse, &protocol conformance descriptor for CP_UpsertTopicMetadataResponse);
  v39 = v34(v53, v32, v3, v30, v35, v37, v38);

  outlined destroy of UUID?(v3);

  v45(v36, v7);
  return v39;
}

uint64_t PluginPubSubServiceProvider.fetchTopics()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v40 - v1;
  TopicsRequest = type metadata accessor for CP_FetchTopicsRequest(0);
  MEMORY[0x1EEE9AC00](TopicsRequest);
  v47 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine4JustVy14CopresenceCore21CP_FetchTopicsRequestVGMd, &_s7Combine4JustVy14CopresenceCore21CP_FetchTopicsRequestVGMR);
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v40 - v5;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v40 - v11;
  UUID.init()();
  if (one-time initialization token for pubsub != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Log.pubsub);
  v43 = *(v7 + 16);
  v43(v10, v12, v6);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v41 = v12;
    v17 = v16;
    v18 = swift_slowAlloc();
    v42 = v2;
    v19 = v18;
    v52[0] = v18;
    *v17 = 136315138;
    v20 = UUID.uuidString.getter();
    v22 = v21;
    v23 = *(v7 + 8);
    v44 = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v45 = v23;
    v23(v10, v6);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v52);

    *(v17 + 4) = v24;
    _os_log_impl(&dword_1AEB26000, v14, v15, "Creating FetchTopics RPC request traceId=%s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    v25 = v19;
    v2 = v42;
    MEMORY[0x1B27120C0](v25, -1, -1);
    v26 = v17;
    v12 = v41;
    MEMORY[0x1B27120C0](v26, -1, -1);
  }

  else
  {

    v27 = *(v7 + 8);
    v44 = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v45 = v27;
    v27(v10, v6);
  }

  UnknownStorage.init()();
  v28 = v46;
  v29 = TopicsRequest;
  Just.init(_:)();
  lazy protocol witness table accessor for type Just<Google_Protobuf_Empty> and conformance Just<A>(&lazy protocol witness table cache variable for type Just<CP_FetchTopicsRequest> and conformance Just<A>, &_s7Combine4JustVy14CopresenceCore21CP_FetchTopicsRequestVGMd, &_s7Combine4JustVy14CopresenceCore21CP_FetchTopicsRequestVGMR);
  v30 = v49;
  v31 = Publisher.eraseToAnyPublisher()();
  (*(v48 + 8))(v28, v30);
  v32 = *(v50 + 16);
  v52[0] = 0xD000000000000016;
  v52[1] = 0x80000001AEE35320;
  v43(v2, v12, v6);
  (*(v7 + 56))(v2, 0, 1, v6);
  v33 = *(*v32 + 272);
  TopicsResponse = type metadata accessor for CP_FetchTopicsResponse(0);
  v35 = v12;
  v36 = lazy protocol witness table accessor for type Google_Protobuf_Empty and conformance Google_Protobuf_Empty(&lazy protocol witness table cache variable for type CP_FetchTopicsRequest and conformance CP_FetchTopicsRequest, type metadata accessor for CP_FetchTopicsRequest, &protocol conformance descriptor for CP_FetchTopicsRequest);
  v37 = lazy protocol witness table accessor for type Google_Protobuf_Empty and conformance Google_Protobuf_Empty(&lazy protocol witness table cache variable for type CP_FetchTopicsResponse and conformance CP_FetchTopicsResponse, type metadata accessor for CP_FetchTopicsResponse, &protocol conformance descriptor for CP_FetchTopicsResponse);
  v38 = v33(v52, v31, v2, v29, TopicsResponse, v36, v37);

  outlined destroy of UUID?(v2);

  v45(v35, v6);
  return v38;
}

uint64_t PluginPubSubServiceProvider.listenTopicSubscribers(input:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v45 = &v38 - v5;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v38 - v11;
  UUID.init()();
  if (one-time initialization token for pubsub != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Log.pubsub);
  v42 = *(v7 + 16);
  v42(v10, v12, v6);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v41 = a1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v40 = v12;
    v19 = v18;
    v46[0] = v18;
    *v17 = 136315138;
    v20 = UUID.uuidString.getter();
    v39 = v2;
    v22 = v21;
    v23 = *(v7 + 8);
    v43 = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v44 = v23;
    v23(v10, v6);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v46);
    v2 = v39;

    *(v17 + 4) = v24;
    _os_log_impl(&dword_1AEB26000, v14, v15, "Creating ListenTopicSubscribers RPC stream traceId=%s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    v25 = v19;
    v12 = v40;
    MEMORY[0x1B27120C0](v25, -1, -1);
    v26 = v17;
    a1 = v41;
    MEMORY[0x1B27120C0](v26, -1, -1);
  }

  else
  {

    v27 = *(v7 + 8);
    v43 = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v44 = v27;
    v27(v10, v6);
  }

  v28 = *(v2 + 16);
  v46[0] = 0xD000000000000021;
  v46[1] = 0x80000001AEE35340;
  v29 = v45;
  v42(v45, v12, v6);
  (*(v7 + 56))(v29, 0, 1, v6);
  v30 = *(*v28 + 272);
  v31 = v12;
  v32 = type metadata accessor for CP_TopicSubscribersRequest(0);
  v33 = type metadata accessor for CP_TopicSubscribers(0);
  v34 = lazy protocol witness table accessor for type Google_Protobuf_Empty and conformance Google_Protobuf_Empty(&lazy protocol witness table cache variable for type CP_TopicSubscribersRequest and conformance CP_TopicSubscribersRequest, type metadata accessor for CP_TopicSubscribersRequest, &protocol conformance descriptor for CP_TopicSubscribersRequest);
  v35 = lazy protocol witness table accessor for type Google_Protobuf_Empty and conformance Google_Protobuf_Empty(&lazy protocol witness table cache variable for type CP_TopicSubscribers and conformance CP_TopicSubscribers, type metadata accessor for CP_TopicSubscribers, &protocol conformance descriptor for CP_TopicSubscribers);
  v36 = v30(v46, a1, v29, v32, v33, v34, v35);
  outlined destroy of UUID?(v29);

  v44(v31, v6);
  return v36;
}

uint64_t PluginPubSubServiceProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t outlined init with copy of CP_CreateTopicRequest(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type Just<Google_Protobuf_Empty> and conformance Just<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t lazy protocol witness table accessor for type Google_Protobuf_Empty and conformance Google_Protobuf_Empty(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t EntitlementValueProviding.isEntitledToBypassSharePlayRestriction.getter(uint64_t a1, uint64_t a2)
{
  v5 = 15;
  v3 = MEMORY[0x1E69E6370];
  default argument 0 of EntitlementValueProviding.value<A>(_:forEntitlement:)(a1, MEMORY[0x1E69E6370]);
  EntitlementValueProviding.value<A>(_:forEntitlement:)(&v5, v3, a2, &v6);
  return v6 & 1;
}

uint64_t EntitlementValueProviding.isEntitled.getter(uint64_t a1, uint64_t a2)
{
  if (EntitlementValueProviding.isEntitledToUsePublicAPI.getter(a1, a2))
  {
    return 1;
  }

  return EntitlementValueProviding.isEntitledToUsePrivateAPI.getter(a1, a2);
}

uint64_t EntitlementValueProviding.isEntitledToUsePublicAPI.getter(uint64_t a1, uint64_t a2)
{
  v9 = 4;
  v4 = MEMORY[0x1E69E6370];
  default argument 0 of EntitlementValueProviding.value<A>(_:forEntitlement:)(a1, MEMORY[0x1E69E6370]);
  EntitlementValueProviding.value<A>(_:forEntitlement:)(&v9, v4, a2, v8);
  v5 = v8[0];
  if (v8[0] == 2)
  {
    v5 = EntitlementValueProviding.isEntitledToUseGameCenter.getter(a1, a2);
  }

  v9 = 3;
  EntitlementValueProviding.value<A>(_:forEntitlement:)(&v9, MEMORY[0x1E69E6370], a2, v8);
  if (v5 & 1) != 0 || v8[0] != 2 && (v8[0])
  {
    return 1;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v7 = static EntitlementTestingOverrides.default;
  swift_beginAccess();
  return *v7;
}

uint64_t EntitlementValueProviding.isEntitledToUsePrivateAPI.getter(uint64_t a1, uint64_t a2)
{
  v7[0] = 5;
  v3 = MEMORY[0x1E69E6370];
  default argument 0 of EntitlementValueProviding.value<A>(_:forEntitlement:)(a1, MEMORY[0x1E69E6370]);
  EntitlementValueProviding.value<A>(_:forEntitlement:)(v7, v3, a2, &v8);
  v4 = v8;
  if (v8 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v5 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v4 = *(v5 + 1);
  }

  return v4 & 1;
}

uint64_t EntitlementValueProviding.isEntitledToAccessAllSessions.getter(uint64_t a1, uint64_t a2)
{
  v7[0] = 6;
  v3 = MEMORY[0x1E69E6370];
  default argument 0 of EntitlementValueProviding.value<A>(_:forEntitlement:)(a1, MEMORY[0x1E69E6370]);
  EntitlementValueProviding.value<A>(_:forEntitlement:)(v7, v3, a2, &v8);
  v4 = v8;
  if (v8 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v5 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v4 = *(v5 + 24);
  }

  return v4 & 1;
}

uint64_t EntitlementValueProviding.isEntitledToForWebFallback.getter(uint64_t a1, uint64_t a2)
{
  v7[0] = 7;
  v3 = MEMORY[0x1E69E6370];
  default argument 0 of EntitlementValueProviding.value<A>(_:forEntitlement:)(a1, MEMORY[0x1E69E6370]);
  EntitlementValueProviding.value<A>(_:forEntitlement:)(v7, v3, a2, &v8);
  v4 = v8;
  if (v8 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v5 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v4 = *(v5 + 25);
  }

  return v4 & 1;
}

uint64_t EntitlementValueProviding.definedSystemActivityIdentifiers.getter(uint64_t a1, uint64_t a2)
{
  v6[0] = 8;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  default argument 0 of EntitlementValueProviding.value<A>(_:forEntitlement:)(a1, v4);
  EntitlementValueProviding.value<A>(_:forEntitlement:)(v6, v4, a2, &v7);
  result = v7;
  if (!v7)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    swift_beginAccess();
  }

  return result;
}

uint64_t EntitlementValueProviding.definedAccessActivityIdentifiers.getter(uint64_t a1, uint64_t a2)
{
  v6[0] = 9;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  default argument 0 of EntitlementValueProviding.value<A>(_:forEntitlement:)(a1, v4);
  EntitlementValueProviding.value<A>(_:forEntitlement:)(v6, v4, a2, &v7);
  result = v7;
  if (!v7)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    swift_beginAccess();
  }

  return result;
}

uint64_t EntitlementValueProviding.isEntitledToAccessUnaliasedIdentifiers.getter(uint64_t a1, uint64_t a2)
{
  v7[0] = 10;
  v3 = MEMORY[0x1E69E6370];
  default argument 0 of EntitlementValueProviding.value<A>(_:forEntitlement:)(a1, MEMORY[0x1E69E6370]);
  EntitlementValueProviding.value<A>(_:forEntitlement:)(v7, v3, a2, &v8);
  v4 = v8;
  if (v8 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v5 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v4 = *(v5 + 48);
  }

  return v4 & 1;
}

uint64_t EntitlementValueProviding.isEntitledToUseGameCenter.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v42 - v9;
  v12 = *(v11 + 8);
  v12(&v44, 0xD00000000000001FLL, 0x80000001AEE2EE80, a1, a2);
  if (v46)
  {
    if ((swift_dynamicCast() & 1) != 0 && v43 == 1)
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, static Log.default);
      (*(v5 + 16))(v10, v2, a1);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v43 = v17;
        *v16 = 136315138;
        v18 = (*(a2 + 16))(a1, a2);
        if (v19)
        {
          v44 = v18;
          v45 = v19;
          v20 = String.init<A>(reflecting:)();
          v22 = v21;
        }

        else
        {
          v20 = 7104878;
          v22 = 0xE300000000000000;
        }

        (*(v5 + 8))(v10, a1);
        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v43);

        *(v16 + 4) = v41;
        _os_log_impl(&dword_1AEB26000, v14, v15, "Connection[%s] is entitled to public Game Center entitlement.", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v17);
        MEMORY[0x1B27120C0](v17, -1, -1);
        MEMORY[0x1B27120C0](v16, -1, -1);

        return 1;
      }

      (*(v5 + 8))(v10, a1);
      return 1;
    }
  }

  else
  {
    outlined destroy of Any?(&v44);
  }

  v12(&v44, 0xD00000000000001FLL, 0x80000001AEE2EE80, a1, a2);
  if (!v46)
  {
    outlined destroy of Any?(&v44);
    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v33 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    return *(v33 + 49);
  }

  v23 = v43;
  if (!v43[2])
  {

    goto LABEL_20;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Log.default);
  (*(v5 + 16))(v8, v2, a1);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  if (!os_log_type_enabled(v25, v26))
  {

    (*(v5 + 8))(v8, a1);
    return 1;
  }

  v27 = swift_slowAlloc();
  v42 = swift_slowAlloc();
  v43 = v42;
  *v27 = 136315394;
  v28 = (*(a2 + 16))(a1, a2);
  if (v29)
  {
    v44 = v28;
    v45 = v29;
    v30 = String.init<A>(reflecting:)();
    v32 = v31;
  }

  else
  {
    v30 = 7104878;
    v32 = 0xE300000000000000;
  }

  (*(v5 + 8))(v8, a1);
  v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v43);

  *(v27 + 4) = v35;
  *(v27 + 12) = 2080;
  v36 = MEMORY[0x1B2710180](v23, MEMORY[0x1E69E6158]);
  v38 = v37;

  v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v43);

  *(v27 + 14) = v39;
  _os_log_impl(&dword_1AEB26000, v25, v26, "Connection[%s] is entitled to internal Game Center entitlement: %s", v27, 0x16u);
  v40 = v42;
  swift_arrayDestroy();
  MEMORY[0x1B27120C0](v40, -1, -1);
  MEMORY[0x1B27120C0](v27, -1, -1);

  return 1;
}

uint64_t EntitlementValueProviding.isEntitledToProvideCustomEndpoint.getter(uint64_t a1, uint64_t a2)
{
  v7[0] = 12;
  v3 = MEMORY[0x1E69E6370];
  default argument 0 of EntitlementValueProviding.value<A>(_:forEntitlement:)(a1, MEMORY[0x1E69E6370]);
  EntitlementValueProviding.value<A>(_:forEntitlement:)(v7, v3, a2, &v8);
  v4 = v8;
  if (v8 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v5 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v4 = *(v5 + 50);
  }

  return v4 & 1;
}

uint64_t EntitlementValueProviding.stableAppIdentifier.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 16))();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    v8 = v4 == 0x6C7070612E6D6F63 && v5 == 0xEF7365746F4E2E65;
    if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v6 == 0xD000000000000015 && 0x80000001AEE2E800 == v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 0x6C7070612E6D6F63;
    }

    if (v6 == 0xD000000000000010 && 0x80000001AEE33DF0 == v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v6 == 0xD000000000000012 && 0x80000001AEE33E10 == v7)
    {

      return 0xD000000000000012;
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      return 0xD000000000000012;
    }
  }

  v14[0] = 13;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  default argument 0 of EntitlementValueProviding.value<A>(_:forEntitlement:)(a1, v11);
  EntitlementValueProviding.value<A>(_:forEntitlement:)(v14, v11, a2, v15);
  if (v15[1] != 1)
  {
    return v15[0];
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v12 = static EntitlementTestingOverrides.default;
  swift_beginAccess();
  v13 = *(v12 + 56);

  return v13;
}

uint64_t EntitlementTestingOverrides.default.unsafeMutableAddressor()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  return static EntitlementTestingOverrides.default;
}

id EntitlementValueProviding.autoGameCenterFeatureEnabled.getter()
{
  v0 = [objc_allocWithZone(CPFeatureFlags) init];
  v1 = [v0 autoGameCenterEnabled];

  return v1;
}

uint64_t EntitlementValueProviding.value<A>(_:forEntitlement:)@<X0>(_BYTE *a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18[-v10];
  v18[15] = *a1;
  v12 = Entitlement.rawValue.getter();
  (*(a3 + 8))(v19, v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v13 = swift_dynamicCast();
  v14 = *(*(a2 - 8) + 56);
  if (v13)
  {
    v15 = *(a2 - 8);
    v14(v11, 0, 1, a2);
    (*(v15 + 32))(a4, v11, a2);
    v16 = 0;
  }

  else
  {
    v16 = 1;
    v14(v11, 1, 1, a2);
    (*(v9 + 8))(v11, v8);
  }

  return v14(a4, v16, 1, a2);
}

uint64_t EntitlementTestingOverrides.stableAppIdentifier.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t EntitlementValueProviding.applicationIdentifier.getter(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  EntitlementValueProviding.value<A>(_:forEntitlement:)(&v3, MEMORY[0x1E69E6158], a2, &v4);
  return v4;
}

uint64_t EntitlementValueProviding.developerTeamIdentifier.getter(uint64_t a1, uint64_t a2)
{
  v5 = 1;
  v3 = MEMORY[0x1E69E6158];
  default argument 0 of EntitlementValueProviding.value<A>(_:forEntitlement:)(a1, MEMORY[0x1E69E6158]);
  EntitlementValueProviding.value<A>(_:forEntitlement:)(&v5, v3, a2, &v6);
  return v6;
}

uint64_t one-time initialization function for default()
{
  result = swift_slowAlloc();
  static EntitlementTestingOverrides.default = result;
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(result + 32) = MEMORY[0x1E69E7CC0];
  *(result + 40) = v1;
  *(result + 48) = 0;
  *(result + 50) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  return result;
}

void EntitlementTestingOverrides.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = v1;
  *(a1 + 48) = 0;
  *(a1 + 50) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
}

uint64_t static EntitlementTestingOverrides.default.getter@<X0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = static EntitlementTestingOverrides.default;
  swift_beginAccess();
  v10[0] = *v2;
  v3 = v2[1];
  v4 = v2[2];
  v5 = v2[3];
  *(v11 + 9) = *(v2 + 57);
  v10[2] = v4;
  v11[0] = v5;
  v10[1] = v3;
  v6 = v2[3];
  a1[2] = v2[2];
  a1[3] = v6;
  *(a1 + 57) = *(v2 + 57);
  v7 = v2[1];
  *a1 = *v2;
  a1[1] = v7;
  return outlined init with copy of EntitlementTestingOverrides(v10, v9);
}

uint64_t static EntitlementTestingOverrides.default.setter(_OWORD *a1)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = static EntitlementTestingOverrides.default;
  swift_beginAccess();
  v9[0] = *v2;
  v3 = v2[1];
  v4 = v2[2];
  v5 = v2[3];
  *&v10[9] = *(v2 + 57);
  v9[2] = v4;
  *v10 = v5;
  v9[1] = v3;
  v6 = a1[3];
  v2[2] = a1[2];
  v2[3] = v6;
  *(v2 + 57) = *(a1 + 57);
  v7 = a1[1];
  *v2 = *a1;
  v2[1] = v7;
  return outlined destroy of EntitlementTestingOverrides(v9);
}

uint64_t (*static EntitlementTestingOverrides.default.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return ActivitySession.audioSessionID.modify;
}

uint64_t key path getter for static EntitlementTestingOverrides.default : EntitlementTestingOverrides.Type@<X0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = static EntitlementTestingOverrides.default;
  swift_beginAccess();
  v10[0] = *v2;
  v3 = v2[1];
  v4 = v2[2];
  v5 = v2[3];
  *(v11 + 9) = *(v2 + 57);
  v10[2] = v4;
  v11[0] = v5;
  v10[1] = v3;
  v6 = v2[3];
  a1[2] = v2[2];
  a1[3] = v6;
  *(a1 + 57) = *(v2 + 57);
  v7 = v2[1];
  *a1 = *v2;
  a1[1] = v7;
  return outlined init with copy of EntitlementTestingOverrides(v10, v9);
}

uint64_t key path setter for static EntitlementTestingOverrides.default : EntitlementTestingOverrides.Type(__int128 *a1)
{
  v1 = a1[3];
  v13 = a1[2];
  v14[0] = v1;
  *(v14 + 9) = *(a1 + 57);
  v2 = a1[1];
  v11 = *a1;
  v12 = v2;
  outlined init with copy of EntitlementTestingOverrides(&v11, v15);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v3 = static EntitlementTestingOverrides.default;
  swift_beginAccess();
  v15[0] = *v3;
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  *(v16 + 9) = *(v3 + 57);
  v15[2] = v5;
  v16[0] = v6;
  v15[1] = v4;
  v8 = v13;
  v7 = v14[0];
  v9 = v12;
  *(v3 + 57) = *(v14 + 9);
  v3[2] = v8;
  v3[3] = v7;
  v3[1] = v9;
  *v3 = v11;
  return outlined destroy of EntitlementTestingOverrides(v15);
}

void key path setter for EntitlementTestingOverrides.isEntitledToUsePublicAPIOverride : EntitlementTestingOverrides(char *a1, _BYTE *a2)
{
  v3 = *a1;
  v4 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v5 = NSClassFromString(v4);

  if (v5 || (v6 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v7 = NSClassFromString(v6), v6, v7))
  {
    *a2 = v3;
  }

  else
  {
    __break(1u);
  }
}

void EntitlementTestingOverrides.isEntitledToUsePublicAPIOverride.setter(char a1)
{
  v3 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v4 = NSClassFromString(v3);

  if (v4 || (v5 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v6 = NSClassFromString(v5), v5, v6))
  {
    *v1 = a1 & 1;
  }

  else
  {
    __break(1u);
  }
}

void (*EntitlementTestingOverrides.isEntitledToUsePublicAPIOverride.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return EntitlementTestingOverrides.isEntitledToUsePublicAPIOverride.modify;
}

void EntitlementTestingOverrides.isEntitledToUsePublicAPIOverride.modify(uint64_t a1, char a2)
{
  v4 = *(a1 + 8);
  v5 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v6 = NSClassFromString(v5);

  if (a2)
  {
    if (v6)
    {
      goto LABEL_7;
    }

    v6 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL);
    v7 = NSClassFromString(v6);

    if (v7)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (v6 || (v8 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v9 = NSClassFromString(v8), v8, v9))
  {
LABEL_7:
    **a1 = v4;
    return;
  }

  __break(1u);
}

void key path setter for EntitlementTestingOverrides.isEntitledToUsePrivateAPIOverride : EntitlementTestingOverrides(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v5 = NSClassFromString(v4);

  if (v5 || (v6 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v7 = NSClassFromString(v6), v6, v7))
  {
    *(a2 + 1) = v3;
  }

  else
  {
    __break(1u);
  }
}

void EntitlementTestingOverrides.isEntitledToUsePrivateAPIOverride.setter(char a1)
{
  v3 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v4 = NSClassFromString(v3);

  if (v4 || (v5 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v6 = NSClassFromString(v5), v5, v6))
  {
    *(v1 + 1) = a1 & 1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t (*EntitlementTestingOverrides.isEntitledToUsePrivateAPIOverride.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 1);
  return EntitlementTestingOverrides.isEntitledToUsePrivateAPIOverride.modify;
}

void EntitlementTestingOverrides.isEntitledToUsePrivateAPIOverride.modify(_BYTE *a1, char a2)
{
  v4 = a1[8];
  v5 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v6 = NSClassFromString(v5);

  if (a2)
  {
    if (v6)
    {
      goto LABEL_7;
    }

    v6 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL);
    v7 = NSClassFromString(v6);

    if (v7)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (v6 || (v8 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v9 = NSClassFromString(v8), v8, v9))
  {
LABEL_7:
    *(*a1 + 1) = v4;
    return;
  }

  __break(1u);
}

uint64_t EntitlementTestingOverrides.bundleIdentifierOverride.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void key path setter for EntitlementTestingOverrides.bundleIdentifierOverride : EntitlementTestingOverrides(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  v5 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v6 = NSClassFromString(v5);

  if (v6 || (v7 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v8 = NSClassFromString(v7), v7, v8))
  {
    *(a2 + 8) = v4;
    *(a2 + 16) = v3;
  }

  else
  {
    __break(1u);
  }
}

void EntitlementTestingOverrides.bundleIdentifierOverride.setter(uint64_t a1, uint64_t a2)
{

  v5 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v6 = NSClassFromString(v5);

  if (v6 || (v7 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v8 = NSClassFromString(v7), v7, v8))
  {
    *(v2 + 8) = a1;
    *(v2 + 16) = a2;
  }

  else
  {
    __break(1u);
  }
}

void (*EntitlementTestingOverrides.bundleIdentifierOverride.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v3;

  return EntitlementTestingOverrides.bundleIdentifierOverride.modify;
}

void EntitlementTestingOverrides.bundleIdentifierOverride.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if ((a2 & 1) == 0)
  {

    v9 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
    v10 = NSClassFromString(v9);

    if (v10 || (v11 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v12 = NSClassFromString(v11), v11, v12))
    {
      *(v3 + 8) = v4;
      *(v3 + 16) = v2;
      return;
    }

    goto LABEL_11;
  }

  v5 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v6 = NSClassFromString(v5);

  if (!v6)
  {
    v7 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL);
    v8 = NSClassFromString(v7);

    if (!v8)
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }
  }

  *(v3 + 8) = v4;
  *(v3 + 16) = v2;
}

void key path setter for EntitlementTestingOverrides.isEntitledToAccessAllSessions : EntitlementTestingOverrides(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v5 = NSClassFromString(v4);

  if (v5 || (v6 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v7 = NSClassFromString(v6), v6, v7))
  {
    *(a2 + 24) = v3;
  }

  else
  {
    __break(1u);
  }
}

void EntitlementTestingOverrides.isEntitledToAccessAllSessions.setter(char a1)
{
  v3 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v4 = NSClassFromString(v3);

  if (v4 || (v5 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v6 = NSClassFromString(v5), v5, v6))
  {
    *(v1 + 24) = a1 & 1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t (*EntitlementTestingOverrides.isEntitledToAccessAllSessions.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 24);
  return EntitlementTestingOverrides.isEntitledToAccessAllSessions.modify;
}

void EntitlementTestingOverrides.isEntitledToAccessAllSessions.modify(_BYTE *a1, char a2)
{
  v4 = a1[8];
  v5 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v6 = NSClassFromString(v5);

  if (a2)
  {
    if (v6)
    {
      goto LABEL_7;
    }

    v6 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL);
    v7 = NSClassFromString(v6);

    if (v7)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (v6 || (v8 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v9 = NSClassFromString(v8), v8, v9))
  {
LABEL_7:
    *(*a1 + 24) = v4;
    return;
  }

  __break(1u);
}

void key path setter for EntitlementTestingOverrides.isEntitledToForWebFallback : EntitlementTestingOverrides(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v5 = NSClassFromString(v4);

  if (v5 || (v6 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v7 = NSClassFromString(v6), v6, v7))
  {
    *(a2 + 25) = v3;
  }

  else
  {
    __break(1u);
  }
}

void EntitlementTestingOverrides.isEntitledToForWebFallback.setter(char a1)
{
  v3 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v4 = NSClassFromString(v3);

  if (v4 || (v5 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v6 = NSClassFromString(v5), v5, v6))
  {
    *(v1 + 25) = a1 & 1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t (*EntitlementTestingOverrides.isEntitledToForWebFallback.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 25);
  return EntitlementTestingOverrides.isEntitledToForWebFallback.modify;
}

void EntitlementTestingOverrides.isEntitledToForWebFallback.modify(_BYTE *a1, char a2)
{
  v4 = a1[8];
  v5 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v6 = NSClassFromString(v5);

  if (a2)
  {
    if (v6)
    {
      goto LABEL_7;
    }

    v6 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL);
    v7 = NSClassFromString(v6);

    if (v7)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (v6 || (v8 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v9 = NSClassFromString(v8), v8, v9))
  {
LABEL_7:
    *(*a1 + 25) = v4;
    return;
  }

  __break(1u);
}

void key path setter for EntitlementTestingOverrides.definedSystemActivityIdentifiers : EntitlementTestingOverrides(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  v4 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v5 = NSClassFromString(v4);

  if (v5 || (v6 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v7 = NSClassFromString(v6), v6, v7))
  {
    *(a2 + 32) = v3;
  }

  else
  {
    __break(1u);
  }
}

void EntitlementTestingOverrides.definedSystemActivityIdentifiers.setter(uint64_t a1)
{

  v3 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v4 = NSClassFromString(v3);

  if (v4 || (v5 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v6 = NSClassFromString(v5), v5, v6))
  {
    *(v1 + 32) = a1;
  }

  else
  {
    __break(1u);
  }
}

void (*EntitlementTestingOverrides.definedSystemActivityIdentifiers.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = *(v1 + 32);
  a1[1] = v1;

  return EntitlementTestingOverrides.definedSystemActivityIdentifiers.modify;
}

void EntitlementTestingOverrides.definedSystemActivityIdentifiers.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((a2 & 1) == 0)
  {

    v8 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
    v9 = NSClassFromString(v8);

    if (v9 || (v10 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v11 = NSClassFromString(v10), v10, v11))
    {
      *(v3 + 32) = v2;
      return;
    }

    goto LABEL_11;
  }

  v4 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v5 = NSClassFromString(v4);

  if (!v5)
  {
    v6 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL);
    v7 = NSClassFromString(v6);

    if (!v7)
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }
  }

  *(v3 + 32) = v2;
}

void key path setter for EntitlementTestingOverrides.definedAccessActivityIdentifiers : EntitlementTestingOverrides(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  v4 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v5 = NSClassFromString(v4);

  if (v5 || (v6 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v7 = NSClassFromString(v6), v6, v7))
  {
    *(a2 + 40) = v3;
  }

  else
  {
    __break(1u);
  }
}

void EntitlementTestingOverrides.definedAccessActivityIdentifiers.setter(uint64_t a1)
{

  v3 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v4 = NSClassFromString(v3);

  if (v4 || (v5 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v6 = NSClassFromString(v5), v5, v6))
  {
    *(v1 + 40) = a1;
  }

  else
  {
    __break(1u);
  }
}

void (*EntitlementTestingOverrides.definedAccessActivityIdentifiers.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = *(v1 + 40);
  a1[1] = v1;

  return EntitlementTestingOverrides.definedAccessActivityIdentifiers.modify;
}

void EntitlementTestingOverrides.definedAccessActivityIdentifiers.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((a2 & 1) == 0)
  {

    v8 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
    v9 = NSClassFromString(v8);

    if (v9 || (v10 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v11 = NSClassFromString(v10), v10, v11))
    {
      *(v3 + 40) = v2;
      return;
    }

    goto LABEL_11;
  }

  v4 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v5 = NSClassFromString(v4);

  if (!v5)
  {
    v6 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL);
    v7 = NSClassFromString(v6);

    if (!v7)
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }
  }

  *(v3 + 40) = v2;
}

void key path setter for EntitlementTestingOverrides.isEntitledToAccessUnaliasedIdentifiers : EntitlementTestingOverrides(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v5 = NSClassFromString(v4);

  if (v5 || (v6 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v7 = NSClassFromString(v6), v6, v7))
  {
    *(a2 + 48) = v3;
  }

  else
  {
    __break(1u);
  }
}

void EntitlementTestingOverrides.isEntitledToAccessUnaliasedIdentifiers.setter(char a1)
{
  v3 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v4 = NSClassFromString(v3);

  if (v4 || (v5 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v6 = NSClassFromString(v5), v5, v6))
  {
    *(v1 + 48) = a1 & 1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t (*EntitlementTestingOverrides.isEntitledToAccessUnaliasedIdentifiers.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 48);
  return EntitlementTestingOverrides.isEntitledToAccessUnaliasedIdentifiers.modify;
}

void EntitlementTestingOverrides.isEntitledToAccessUnaliasedIdentifiers.modify(_BYTE *a1, char a2)
{
  v4 = a1[8];
  v5 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v6 = NSClassFromString(v5);

  if (a2)
  {
    if (v6)
    {
      goto LABEL_7;
    }

    v6 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL);
    v7 = NSClassFromString(v6);

    if (v7)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (v6 || (v8 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v9 = NSClassFromString(v8), v8, v9))
  {
LABEL_7:
    *(*a1 + 48) = v4;
    return;
  }

  __break(1u);
}

void key path setter for EntitlementTestingOverrides.isEntitledToUseGameCenter : EntitlementTestingOverrides(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v5 = NSClassFromString(v4);

  if (v5 || (v6 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v7 = NSClassFromString(v6), v6, v7))
  {
    *(a2 + 49) = v3;
  }

  else
  {
    __break(1u);
  }
}

void EntitlementTestingOverrides.isEntitledToUseGameCenter.setter(char a1)
{
  v3 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v4 = NSClassFromString(v3);

  if (v4 || (v5 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v6 = NSClassFromString(v5), v5, v6))
  {
    *(v1 + 49) = a1 & 1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t (*EntitlementTestingOverrides.isEntitledToUseGameCenter.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 49);
  return EntitlementTestingOverrides.isEntitledToUseGameCenter.modify;
}

void EntitlementTestingOverrides.isEntitledToUseGameCenter.modify(_BYTE *a1, char a2)
{
  v4 = a1[8];
  v5 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v6 = NSClassFromString(v5);

  if (a2)
  {
    if (v6)
    {
      goto LABEL_7;
    }

    v6 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL);
    v7 = NSClassFromString(v6);

    if (v7)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (v6 || (v8 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v9 = NSClassFromString(v8), v8, v9))
  {
LABEL_7:
    *(*a1 + 49) = v4;
    return;
  }

  __break(1u);
}

void key path setter for EntitlementTestingOverrides.isEntitledToProvideCustomEndpoint : EntitlementTestingOverrides(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v5 = NSClassFromString(v4);

  if (v5 || (v6 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v7 = NSClassFromString(v6), v6, v7))
  {
    *(a2 + 50) = v3;
  }

  else
  {
    __break(1u);
  }
}

void EntitlementTestingOverrides.isEntitledToProvideCustomEndpoint.setter(char a1)
{
  v3 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v4 = NSClassFromString(v3);

  if (v4 || (v5 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v6 = NSClassFromString(v5), v5, v6))
  {
    *(v1 + 50) = a1 & 1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t (*EntitlementTestingOverrides.isEntitledToProvideCustomEndpoint.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 50);
  return EntitlementTestingOverrides.isEntitledToProvideCustomEndpoint.modify;
}

void EntitlementTestingOverrides.isEntitledToProvideCustomEndpoint.modify(_BYTE *a1, char a2)
{
  v4 = a1[8];
  v5 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v6 = NSClassFromString(v5);

  if (a2)
  {
    if (v6)
    {
      goto LABEL_7;
    }

    v6 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL);
    v7 = NSClassFromString(v6);

    if (v7)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (v6 || (v8 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v9 = NSClassFromString(v8), v8, v9))
  {
LABEL_7:
    *(*a1 + 50) = v4;
    return;
  }

  __break(1u);
}

void key path setter for EntitlementTestingOverrides.stableAppIdentifier : EntitlementTestingOverrides(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  v5 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v6 = NSClassFromString(v5);

  if (v6 || (v7 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v8 = NSClassFromString(v7), v7, v8))
  {
    *(a2 + 56) = v4;
    *(a2 + 64) = v3;
  }

  else
  {
    __break(1u);
  }
}

void EntitlementTestingOverrides.stableAppIdentifier.setter(uint64_t a1, uint64_t a2)
{

  v5 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v6 = NSClassFromString(v5);

  if (v6 || (v7 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v8 = NSClassFromString(v7), v7, v8))
  {
    *(v2 + 56) = a1;
    *(v2 + 64) = a2;
  }

  else
  {
    __break(1u);
  }
}

void (*EntitlementTestingOverrides.stableAppIdentifier.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 64);
  *a1 = *(v1 + 56);
  a1[1] = v3;

  return EntitlementTestingOverrides.stableAppIdentifier.modify;
}

void EntitlementTestingOverrides.stableAppIdentifier.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if ((a2 & 1) == 0)
  {

    v9 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
    v10 = NSClassFromString(v9);

    if (v10 || (v11 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v12 = NSClassFromString(v11), v11, v12))
    {
      *(v3 + 56) = v4;
      *(v3 + 64) = v2;
      return;
    }

    goto LABEL_11;
  }

  v5 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v6 = NSClassFromString(v5);

  if (!v6)
  {
    v7 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL);
    v8 = NSClassFromString(v7);

    if (!v8)
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }
  }

  *(v3 + 56) = v4;
  *(v3 + 64) = v2;
}

void key path setter for EntitlementTestingOverrides.isEntitledToUseNearbyInvitationsOverride : EntitlementTestingOverrides(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v5 = NSClassFromString(v4);

  if (v5 || (v6 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v7 = NSClassFromString(v6), v6, v7))
  {
    *(a2 + 72) = v3;
  }

  else
  {
    __break(1u);
  }
}

void EntitlementTestingOverrides.isEntitledToUseNearbyInvitationsOverride.setter(char a1)
{
  v3 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v4 = NSClassFromString(v3);

  if (v4 || (v5 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v6 = NSClassFromString(v5), v5, v6))
  {
    *(v1 + 72) = a1 & 1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t (*EntitlementTestingOverrides.isEntitledToUseNearbyInvitationsOverride.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 72);
  return EntitlementTestingOverrides.isEntitledToUseNearbyInvitationsOverride.modify;
}

void EntitlementTestingOverrides.isEntitledToUseNearbyInvitationsOverride.modify(_BYTE *a1, char a2)
{
  v4 = a1[8];
  v5 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v6 = NSClassFromString(v5);

  if (a2)
  {
    if (v6)
    {
      goto LABEL_7;
    }

    v6 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL);
    v7 = NSClassFromString(v6);

    if (v7)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (v6 || (v8 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v9 = NSClassFromString(v8), v8, v9))
  {
LABEL_7:
    *(*a1 + 72) = v4;
    return;
  }

  __break(1u);
}

uint64_t EntitlementTestingOverrides.init(isEntitledToUsePublicAPIOverride:isEntitledToUsePrivateAPIOverride:bundleIdentifierOverride:isEntitledToAccessAllSessions:isEntitledToForWebFallback:definedSystemActivityIdentifiers:definedAccessActivityIdentifiers:isEntitledToAccessUnaliasedIdentifiers:isEntitledToUseGameCenter:isEntitledToProvideCustomEndpoint:stableAppIdentifier:isEntitledToUseNearbyInvitationsOverride:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, char a11, char a12, uint64_t a13, uint64_t a14, char a15)
{
  *a9 = result;
  *(a9 + 1) = a2;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 25) = a6;
  *(a9 + 32) = a7;
  *(a9 + 40) = a8;
  *(a9 + 48) = a10;
  *(a9 + 49) = a11;
  *(a9 + 50) = a12;
  *(a9 + 56) = a13;
  *(a9 + 64) = a14;
  *(a9 + 72) = a15;
  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for EntitlementTestingOverrides(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for EntitlementTestingOverrides(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t DelegatesManager.__allocating_init()()
{
  v0 = swift_allocObject();
  DelegatesManager.init()(v0, v1, v2, v3);
  return v0;
}

uint64_t key path getter for Delegate.delegate : <A>Delegate<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = type metadata accessor for Delegate(0, *(a2 + a3 - 8), a3, a4);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v11, a1, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = (*(v8 + 8))(v11, v7);
  *a5 = Strong;
  return result;
}

uint64_t Delegate.delegate.setter(uint64_t a1)
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*Delegate.delegate.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return Delegate.delegate.modify;
}

uint64_t Delegate.delegate.modify(void *a1)
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

BOOL Delegate.isValid.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  return Strong != 0;
}

uint64_t Delegate.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = *(v4 + 8);
    v11 = swift_allocObject();
    v11[2] = *(a3 + 16);
    v11[3] = a1;
    v11[4] = a2;
    v11[5] = v9;
    v12 = swift_allocObject();
    *(v12 + 16) = partial apply for closure #1 in Delegate.perform(_:);
    *(v12 + 24) = v11;
    v14[4] = _sIg_Ieg_TRTA_0;
    v14[5] = v12;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = thunk for @escaping @callee_guaranteed () -> ();
    v14[3] = &block_descriptor_20;
    v13 = _Block_copy(v14);
    swift_unknownObjectRetain();

    dispatch_sync(v10, v13);
    swift_unknownObjectRelease();
    _Block_release(v13);
    LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

    if (v9)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t Delegate.init(_:queue:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  result = swift_unknownObjectRelease();
  *(a3 + 8) = a2;
  return result;
}

void *DelegatesManager.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Delegate(0, *(*v4 + 80), a3, a4);
  v4[2] = Array.init()();
  type metadata accessor for Lock();
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *(v5 + 16) = v6;
  *v6 = 0;
  v4[3] = v5;
  return v4;
}

void DelegatesManager.addDelegate(delegate:queue:)(uint64_t a1, void *a2)
{
  v5 = *(v2 + 24);
  os_unfair_lock_lock(*(v5 + 16));
  closure #1 in DelegatesManager.addDelegate(delegate:queue:)(v2, a1, a2);
  v6 = *(v5 + 16);

  os_unfair_lock_unlock(v6);
}

uint64_t closure #1 in DelegatesManager.addDelegate(delegate:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*a1 + 80);
  swift_unknownObjectRetain();
  v6 = a3;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v11[5] = v6;
  v7 = (*(*a1 + 120))(v11);
  type metadata accessor for Delegate(255, v5, v8, v9);
  type metadata accessor for Array();
  Array.append(_:)();
  return v7(v11, 0);
}

void DelegatesManager.removeDelegate(delegate:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock(*(v3 + 16));
  closure #1 in DelegatesManager.removeDelegate(delegate:)(v1, a1);
  v4 = *(v3 + 16);

  os_unfair_lock_unlock(v4);
}

uint64_t closure #1 in DelegatesManager.removeDelegate(delegate:)(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 80);
  v3 = (*(*a1 + 120))(v7);
  type metadata accessor for Delegate(255, v2, v4, v5);
  type metadata accessor for Array();
  swift_getWitnessTable();
  swift_getWitnessTable();
  RangeReplaceableCollection<>.removeAll(where:)();
  return v3(v7, 0);
}

uint64_t DelegatesManager.deinit()
{

  return v0;
}

uint64_t DelegatesManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata instantiation function for Delegate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t partial apply for closure #1 in closure #1 in DelegatesManager.removeDelegate(delegate:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_unknownObjectRelease();
    return v4 == v2;
  }

  return result;
}

uint64_t DatagramClient.Configuration.endpoint.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return outlined copy of DatagramEndpoint(v2, v3, v4, v5, v6);
}

uint64_t DatagramClient.Configuration.init(endpoint:establishChannelMaxAttempts:establishChannelRetryInterval:egressMessagePayloadMaxSizeBytes:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v5 = *(result + 32);
  v6 = *(result + 16);
  *a4 = *result;
  *(a4 + 16) = v6;
  *(a4 + 32) = v5;
  *(a4 + 56) = a5;
  *(a4 + 40) = a3;
  *(a4 + 48) = a2;
  return result;
}

uint64_t EgressMessage.completion.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  v3 = *v2;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(*v2, v2[1]);
  return v3;
}

uint64_t EgressMessage.init(datagram:participantIDs:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a5 - 8) + 32))(a7, a1, a5);
  result = type metadata accessor for EgressMessage(0, a5, a6, v13);
  *(a7 + *(result + 36)) = a2;
  v15 = (a7 + *(result + 40));
  *v15 = a3;
  v15[1] = a4;
  return result;
}

Swift::Int EgressMessageError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](v1);
  return Hasher._finalize()();
}

uint64_t DatagramClient.State.description.getter(char a1)
{
  if (!a1)
  {
    return 0x7964616552;
  }

  if (a1 == 1)
  {
    return 0x676E69736F6C43;
  }

  return 0x6465736F6C43;
}

Swift::Int DatagramClient.State.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](a1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DatagramClient.State()
{
  v1 = 0x676E69736F6C43;
  if (*v0 != 1)
  {
    v1 = 0x6465736F6C43;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7964616552;
  }
}

uint64_t DatagramClient.config.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[2];
  v7[0] = v1[1];
  v7[1] = v2;
  v4 = v1[4];
  v8 = v1[3];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return outlined init with copy of DatagramClient.Configuration(v7, &v6);
}

uint64_t DatagramClient.state.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 88) = a1;
  return result;
}

void DatagramClient.startDatagramChannelStream.setter(uint64_t a1)
{
  swift_beginAccess();

  v3 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v4 = NSClassFromString(v3);

  if (v4 || (v5 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v6 = NSClassFromString(v5), v5, v6))
  {
    *(v1 + 96) = a1;
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void (*DatagramClient.startDatagramChannelStream.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  swift_beginAccess();
  *(v4 + 24) = *(v1 + 96);

  return DatagramClient.startDatagramChannelStream.modify;
}

void DatagramClient.startDatagramChannelStream.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if ((a2 & 1) == 0)
  {

    v8 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
    v9 = NSClassFromString(v8);

    if (v9 || (v10 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v11 = NSClassFromString(v10), v10, v11))
    {
      *(v2[4] + 96) = v3;
      goto LABEL_8;
    }

LABEL_12:
    __break(1u);
    return;
  }

  v4 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v5 = NSClassFromString(v4);

  if (!v5)
  {
    v6 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL);
    v7 = NSClassFromString(v6);

    if (!v7)
    {
      __break(1u);
      goto LABEL_12;
    }
  }

  *(v2[4] + 96) = v3;

LABEL_8:
  swift_endAccess();

  free(v2);
}

uint64_t key path getter for DatagramClient.datagramChannelStreams : DatagramClient@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  return result;
}

uint64_t key path setter for DatagramClient.datagramChannelStreams : DatagramClient(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 176);

  return v2(v3);
}

uint64_t DatagramClient.datagramChannelStreams.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t DatagramClient.datagramChannelStreams.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*DatagramClient.datagramChannelStreams.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
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
  return ConversationManagerClient.activeSessionContainer.modify;
}

uint64_t key path setter for DatagramClient.$datagramChannelStreams : DatagramClient(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDySS14CopresenceCore24AnyDatagramChannelStream_pG_GMd, &_s7Combine9PublishedV9PublisherVySDySS14CopresenceCore24AnyDatagramChannelStream_pG_GMR);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*(**a2 + 200))(v6);
}

uint64_t DatagramClient.$datagramChannelStreams.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySS14CopresenceCore24AnyDatagramChannelStream_pGGMd, &_s7Combine9PublishedVySDySS14CopresenceCore24AnyDatagramChannelStream_pGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t DatagramClient.$datagramChannelStreams.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDySS14CopresenceCore24AnyDatagramChannelStream_pG_GMd, &_s7Combine9PublishedV9PublisherVySDySS14CopresenceCore24AnyDatagramChannelStream_pG_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySS14CopresenceCore24AnyDatagramChannelStream_pGGMd, &_s7Combine9PublishedVySDySS14CopresenceCore24AnyDatagramChannelStream_pGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*DatagramClient.$datagramChannelStreams.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDySS14CopresenceCore24AnyDatagramChannelStream_pG_GMd, &_s7Combine9PublishedV9PublisherVySDySS14CopresenceCore24AnyDatagramChannelStream_pG_GMR);
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

  v10 = OBJC_IVAR____TtC14CopresenceCore14DatagramClient__datagramChannelStreams;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySS14CopresenceCore24AnyDatagramChannelStream_pGGMd, &_s7Combine9PublishedVySDySS14CopresenceCore24AnyDatagramChannelStream_pGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return ActivitySession.$state.modify;
}

uint64_t DatagramClient.__allocating_init(config:queue:)(_OWORD *a1, void *a2)
{
  v4 = swift_allocObject();
  DatagramClient.init(config:queue:)(a1, a2);
  return v4;
}

_OWORD *DatagramClient.init(config:queue:)(_OWORD *a1, void *a2)
{
  v3 = v2;
  v37 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v36 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v35 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v7);
  v8 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySS14CopresenceCore24AnyDatagramChannelStream_pGGMd, &_s7Combine9PublishedVySDySS14CopresenceCore24AnyDatagramChannelStream_pGGMR);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - v11;
  v13 = MEMORY[0x1E69E7CC8];
  *(v2 + 96) = MEMORY[0x1E69E7CC8];
  v14 = OBJC_IVAR____TtC14CopresenceCore14DatagramClient__datagramChannelStreams;
  *&v44[0] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS14CopresenceCore24AnyDatagramChannelStream_pGMd, &_sSDySS14CopresenceCore24AnyDatagramChannelStream_pGMR);
  Published.init(initialValue:)();
  (*(v10 + 32))(v2 + v14, v12, v9);
  v15 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v15;
  v16 = a1[3];
  *(v2 + 48) = a1[2];
  *(v2 + 64) = v16;
  if (a2)
  {
    v17 = a2;
  }

  else
  {
    type metadata accessor for OS_dispatch_queue();
    static DispatchQoS.unspecified.getter();
    *&v44[0] = MEMORY[0x1E69E7CC0];
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_2(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x1E69E6328]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v36 + 104))(v35, *MEMORY[0x1E69E8090], v37);
    v17 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  }

  *(v2 + 80) = v17;
  *(v2 + 88) = 0;
  v18 = one-time initialization token for log;
  v19 = a2;
  if (v18 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, log);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 136315138;
    v25 = v3[2];
    v44[0] = v3[1];
    v44[1] = v25;
    v26 = v3[4];
    v28 = v3[1];
    v27 = v3[2];
    v44[2] = v3[3];
    v44[3] = v26;
    v43 = v24;
    v39 = v28;
    v40 = v27;
    v29 = v3[4];
    v41 = v3[3];
    v42 = v29;
    outlined init with copy of DatagramClient.Configuration(v44, v38);
    v30 = String.init<A>(describing:)();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v43);

    *(v23 + 4) = v32;
    _os_log_impl(&dword_1AEB26000, v21, v22, "DatagramClient init, config=%s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x1B27120C0](v24, -1, -1);
    MEMORY[0x1B27120C0](v23, -1, -1);
  }

  return v3;
}

uint64_t DatagramClient.deinit()
{
  v1 = type metadata accessor for DatagramChannelError(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  (*(*v0 + 240))(v3);
  outlined destroy of DatagramChannelError(v3, type metadata accessor for DatagramChannelError);
  outlined consume of DatagramEndpoint(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  v4 = OBJC_IVAR____TtC14CopresenceCore14DatagramClient__datagramChannelStreams;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySS14CopresenceCore24AnyDatagramChannelStream_pGGMd, &_s7Combine9PublishedVySDySS14CopresenceCore24AnyDatagramChannelStream_pGGMR);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t DatagramClient.__deallocating_deinit()
{
  v1 = type metadata accessor for DatagramChannelError(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  (*(*v0 + 240))(v3);
  outlined destroy of DatagramChannelError(v3, type metadata accessor for DatagramChannelError);
  outlined consume of DatagramEndpoint(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  v4 = OBJC_IVAR____TtC14CopresenceCore14DatagramClient__datagramChannelStreams;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySS14CopresenceCore24AnyDatagramChannelStream_pGGMd, &_s7Combine9PublishedVySDySS14CopresenceCore24AnyDatagramChannelStream_pGGMR);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return swift_deallocClassInstance();
}

uint64_t DatagramClient.channel<A, B>(definition:topic:input:inputBufferMaxQueueSize:traceId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  v10 = v9;
  v36 = a6;
  v39 = a5;
  v37 = a4;
  v38 = a2;
  v41 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for DispatchQoS();
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v36 - v19;
  *&v49 = a7;
  *(&v49 + 1) = a8;
  v50 = a9;
  type metadata accessor for DatagramChannelStream(0, &v49);
  v21 = *(v10 + 32);
  v49 = *(v10 + 16);
  v50 = v21;
  v22 = *(v10 + 64);
  v24 = *(v10 + 16);
  v23 = *(v10 + 32);
  v51 = *(v10 + 48);
  v52 = v22;
  aBlock = v24;
  v46 = v23;
  v25 = *(v10 + 64);
  v47 = *(v10 + 48);
  v48 = v25;
  v26 = *(v10 + 80);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v36, v20, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  v27 = v37;

  outlined init with copy of DatagramClient.Configuration(&v49, v44);
  v28 = v26;
  v29 = v38;
  v30 = DatagramChannelStream.__allocating_init(definition:topic:input:config:inputBufferMaxQueueSize:queue:traceId:)(v28, v38, a3, v27, &aBlock, v39, v28, v20);
  v31 = swift_allocObject();
  v31[2] = v10;
  v31[3] = v30;
  v31[4] = v29;
  v31[5] = a3;
  *&v47 = partial apply for closure #1 in DatagramClient.channel<A, B>(definition:topic:input:inputBufferMaxQueueSize:traceId:);
  *(&v47 + 1) = v31;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v46 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  *(&v46 + 1) = &block_descriptor_21;
  v32 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  v44[0] = MEMORY[0x1E69E7CC0];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  v33 = v41;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v17, v15, v32);
  _Block_release(v32);
  (*(v43 + 8))(v15, v33);
  (*(v40 + 8))(v17, v42);

  *&aBlock = v30;
  swift_getWitnessTable();
  v34 = Publisher.eraseToAnyPublisher()();

  return v34;
}

uint64_t closure #1 in DatagramClient.channel<A, B>(definition:topic:input:inputBufferMaxQueueSize:traceId:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v74 = a2;
  v75 = a4;
  v5 = *a2;
  v72 = a3;
  v73 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v62 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA6FutureCy7Network17NWConnectionGroupC14CopresenceCore27DatagramChannelConnectErrorOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA6FutureCy7Network17NWConnectionGroupC14CopresenceCore27DatagramChannelConnectErrorOGSo17OS_dispatch_queueCGMR);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v62 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8MapErrorVy_AC9ReceiveOnVy_AA6FutureCy7Network17NWConnectionGroupC14CopresenceCore022DatagramChannelConnectD0OGSo17OS_dispatch_queueCGAM0mnD0OGMd, &_s7Combine10PublishersO8MapErrorVy_AC9ReceiveOnVy_AA6FutureCy7Network17NWConnectionGroupC14CopresenceCore022DatagramChannelConnectD0OGSo17OS_dispatch_queueCGAM0mnD0OGMR);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v62 - v15;
  v17 = type metadata accessor for DatagramChannelError(0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(*a1 + 120))(v18))
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, log);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1AEB26000, v22, v23, "DatagramClient already closed", v24, 2u);
      MEMORY[0x1B27120C0](v24, -1, -1);
    }

    default argument 0 of DatagramChannelStream.close(error:)();
    (*(*v74 + 480))(v20);
    return outlined destroy of DatagramChannelError(v20, type metadata accessor for DatagramChannelError);
  }

  else
  {
    v69 = v14;
    v63 = v20;
    v26 = v72;
    v71 = v17;
    v64 = v8;
    v65 = v12;
    v66 = v10;
    v67 = v9;
    v27 = (*(*a1 + 168))();
    v28 = *(v27 + 16);
    v29 = a1;
    v70 = v13;
    v68 = v16;
    if (v28 && (v30 = v26, v31 = specialized __RawDictionaryStorage.find<A>(_:)(v26, v75), (v32 & 1) != 0))
    {
      v33 = *(*(v27 + 56) + 16 * v31 + 8);
      swift_unknownObjectRetain();

      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      __swift_project_value_buffer(v34, log);

      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v78[0] = v38;
        *v37 = 136315138;
        *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v75, v78);
        _os_log_impl(&dword_1AEB26000, v35, v36, "Replacing existing channelStream for topic=%s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v38);
        MEMORY[0x1B27120C0](v38, -1, -1);
        MEMORY[0x1B27120C0](v37, -1, -1);
      }

      v26 = v30;
      ObjectType = swift_getObjectType();
      v40 = v63;
      swift_storeEnumTagMultiPayload();
      (*(v33 + 64))(v40, ObjectType, v33);
      swift_unknownObjectRelease();
      outlined destroy of DatagramChannelError(v40, type metadata accessor for DatagramChannelError);
    }

    else
    {
    }

    v41 = *(*v29 + 184);
    v42 = v75;

    v43 = v74;

    v44 = v41(v78);
    v46 = v45;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v77 = *v46;
    *v46 = 0x8000000000000000;
    v48 = *(v73 + 96);
    v76[0] = *(v73 + 80);
    v76[1] = v48;
    v49 = type metadata accessor for DatagramChannelStream(0, v76);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v43, v26, v42, isUniquelyReferenced_nonNull_native, &v77, v49, &protocol witness table for DatagramChannelStream<A, B>);

    *v46 = v77;
    v44(v78, 0);
    v50 = swift_allocObject();
    *(v50 + 16) = v29;
    *(v50 + 24) = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy7Network17NWConnectionGroupC14CopresenceCore27DatagramChannelConnectErrorOGMd, &_s7Combine6FutureCy7Network17NWConnectionGroupC14CopresenceCore27DatagramChannelConnectErrorOGMR);
    swift_allocObject();

    v73 = Future.init(_:)();
    v78[0] = v73;
    *&v76[0] = v29[10];
    v51 = *&v76[0];
    v52 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v53 = v64;
    (*(*(v52 - 8) + 56))(v64, 1, 1, v52);
    type metadata accessor for OS_dispatch_queue();
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Future<NWConnectionGroup, DatagramChannelConnectError> and conformance Future<A, B>, &_s7Combine6FutureCy7Network17NWConnectionGroupC14CopresenceCore27DatagramChannelConnectErrorOGMd, &_s7Combine6FutureCy7Network17NWConnectionGroupC14CopresenceCore27DatagramChannelConnectErrorOGMR, MEMORY[0x1E695C038]);
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_2(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, type metadata accessor for OS_dispatch_queue, MEMORY[0x1E69E8028]);
    v54 = v51;
    v55 = v65;
    Publisher.receive<A>(on:options:)();
    outlined destroy of NSObject?(v53, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Future<NWConnectionGroup, DatagramChannelConnectError>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA6FutureCy7Network17NWConnectionGroupC14CopresenceCore27DatagramChannelConnectErrorOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA6FutureCy7Network17NWConnectionGroupC14CopresenceCore27DatagramChannelConnectErrorOGSo17OS_dispatch_queueCGMR, MEMORY[0x1E695BE98]);
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_2(&lazy protocol witness table cache variable for type DatagramChannelError and conformance DatagramChannelError, type metadata accessor for DatagramChannelError, &protocol conformance descriptor for DatagramChannelError);
    v56 = v67;
    v57 = v68;
    Publisher.mapError<A>(_:)();
    (*(v66 + 8))(v55, v56);
    v58 = swift_allocObject();
    v58[2] = v43;
    v58[3] = v29;
    v59 = v75;
    v58[4] = v72;
    v58[5] = v59;
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.MapError<Publishers.ReceiveOn<Future<NWConnectionGroup, DatagramChannelConnectError>, OS_dispatch_queue>, DatagramChannelError> and conformance Publishers.MapError<A, B>, &_s7Combine10PublishersO8MapErrorVy_AC9ReceiveOnVy_AA6FutureCy7Network17NWConnectionGroupC14CopresenceCore022DatagramChannelConnectD0OGSo17OS_dispatch_queueCGAM0mnD0OGMd, &_s7Combine10PublishersO8MapErrorVy_AC9ReceiveOnVy_AA6FutureCy7Network17NWConnectionGroupC14CopresenceCore022DatagramChannelConnectD0OGSo17OS_dispatch_queueCGAM0mnD0OGMR, MEMORY[0x1E695BE58]);
    swift_retain_n();

    v60 = v70;
    v61 = Publisher.sink(receiveCompletion:receiveValue:)();

    (*(v69 + 8))(v57, v60);
    (*(*v43 + 352))(v61);
  }
}

uint64_t closure #1 in closure #1 in DatagramClient.channel<A, B>(definition:topic:input:inputBufferMaxQueueSize:traceId:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*a4 + 96);
  v11[0] = *(*a4 + 80);
  v11[1] = v8;
  v9 = type metadata accessor for DatagramChannelStream(0, v11);
  return specialized DatagramClient.createChannelGroup(channelStream:attempt:promise:)(a4, 1uLL, a1, a2, a3, v9, &protocol witness table for DatagramChannelStream<A, B>);
}

uint64_t closure #2 in closure #1 in DatagramClient.channel<A, B>(definition:topic:input:inputBufferMaxQueueSize:traceId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of DatagramChannelError(a1, a2, type metadata accessor for DatagramChannelConnectError);
  type metadata accessor for DatagramChannelError(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t closure #3 in closure #1 in DatagramClient.channel<A, B>(definition:topic:input:inputBufferMaxQueueSize:traceId:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11SubscribersO10CompletionOy_14CopresenceCore20DatagramChannelErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore20DatagramChannelErrorOGMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v8 - v3, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore20DatagramChannelErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore20DatagramChannelErrorOGMR);
  v5 = type metadata accessor for DatagramChannelError(0);
  v6 = (*(*(v5 - 8) + 48))(v4, 1, v5);
  result = outlined destroy of NSObject?(v4, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore20DatagramChannelErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore20DatagramChannelErrorOGMR);
  if (v6 != 1)
  {
    return PassthroughSubject.send(completion:)();
  }

  return result;
}

uint64_t closure #4 in closure #1 in DatagramClient.channel<A, B>(definition:topic:input:inputBufferMaxQueueSize:traceId:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DatagramChannelError(0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  if ((*(*a3 + 120))(v11) == 1)
  {
    NWConnectionGroup.cancel()();
    default argument 0 of DatagramChannelStream.close(error:)();
    (*(*a2 + 480))(v13);
    return outlined destroy of DatagramChannelError(v13, type metadata accessor for DatagramChannelError);
  }

  v16 = (*(*a3 + 144))();
  if (!*(v16 + 16) || (v17 = specialized __RawDictionaryStorage.find<A>(_:)(a4, a5), (v18 & 1) == 0))
  {

    return (*(*a2 + 472))(v14);
  }

  v19 = *(*(v16 + 56) + v17);

  if (v19)
  {
    return (*(*a2 + 472))(v14);
  }

  return result;
}

Swift::Void __swiftcall DatagramClient.close()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v4 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 80);
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = partial apply for closure #1 in DatagramClient.close();
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_8;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v12 = MEMORY[0x1E69E7CC0];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v6, v3, v8);
  _Block_release(v8);
  (*(v11 + 8))(v3, v1);
  (*(v4 + 8))(v6, v10);
}

uint64_t closure #1 in DatagramClient.close()(uint64_t a1)
{
  v1 = type metadata accessor for DatagramChannelError(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_storeEnumTagMultiPayload();
    (*(*v5 + 240))(v3);

    return outlined destroy of DatagramChannelError(v3, type metadata accessor for DatagramChannelError);
  }

  return result;
}

uint64_t DatagramClient._close(error:)(uint64_t a1)
{
  v88 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20DatagramChannelErrorOSgMd, &_s14CopresenceCore20DatagramChannelErrorOSgMR);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v75 - v6;
  v8 = type metadata accessor for DatagramChannelError(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v75 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v75 - v17;
  v19 = *(*v1 + 120);
  v20 = *v1 + 120;
  result = v19(v16);
  if (!result)
  {
    v80 = v19;
    *&v81 = v18;
    v83 = v5;
    v84 = v8;
    v86 = v15;
    v87 = v12;
    v77 = v7;
    v78 = v9;
    v22 = v88;
    v79 = v20;
    v82 = v1;
    if (one-time initialization token for log != -1)
    {
LABEL_32:
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    v24 = __swift_project_value_buffer(v23, log);
    v25 = v81;
    outlined init with copy of DatagramChannelError(v22, v81, type metadata accessor for DatagramChannelError);
    v26 = v82;
    swift_retain_n();
    v85 = v24;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    v29 = os_log_type_enabled(v27, v28);
    v30 = v87;
    v31 = v83;
    if (v29)
    {
      v32 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v89 = v76;
      *v32 = 136315650;
      v33 = v77;
      outlined init with copy of DatagramChannelError(v25, v77, type metadata accessor for DatagramChannelError);
      v34 = v78;
      v35 = v84;
      (*(v78 + 56))(v33, 0, 1, v84);
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v33, v31, &_s14CopresenceCore20DatagramChannelErrorOSgMd, &_s14CopresenceCore20DatagramChannelErrorOSgMR);
      v36 = (*(v34 + 48))(v31, 1, v35);
      LODWORD(v88) = v28;
      if (v36 == 1)
      {
        v37 = 0xE300000000000000;
        v38 = 7104878;
      }

      else
      {
        v39 = v86;
        outlined init with take of DatagramChannelError(v31, v86, type metadata accessor for DatagramChannelError);
        outlined init with copy of DatagramChannelError(v39, v30, type metadata accessor for DatagramChannelError);
        v38 = String.init<A>(reflecting:)();
        v37 = v40;
        v26 = v82;
        outlined destroy of DatagramChannelError(v39, type metadata accessor for DatagramChannelError);
      }

      outlined destroy of NSObject?(v33, &_s14CopresenceCore20DatagramChannelErrorOSgMd, &_s14CopresenceCore20DatagramChannelErrorOSgMR);
      outlined destroy of DatagramChannelError(v25, type metadata accessor for DatagramChannelError);
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v37, &v89);

      *(v32 + 4) = v41;
      *(v32 + 12) = 2048;
      v43 = *((*(*v26 + 168))(v42) + 16);

      *(v32 + 14) = v43;

      *(v32 + 22) = 2080;
      v45 = v80(v44);
      if (v45)
      {
        if (v45 == 1)
        {
          v46 = 0x676E69736F6C43;
        }

        else
        {
          v46 = 0x6465736F6C43;
        }

        if (v45 == 1)
        {
          v47 = 0xE700000000000000;
        }

        else
        {
          v47 = 0xE600000000000000;
        }
      }

      else
      {
        v47 = 0xE500000000000000;
        v46 = 0x7964616552;
      }

      v48 = v88;
      v22 = v76;
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v89);

      *(v32 + 24) = v49;
      _os_log_impl(&dword_1AEB26000, v27, v48, "Closing, error=%s topic-count=%ld state=%s", v32, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v22, -1, -1);
      MEMORY[0x1B27120C0](v32, -1, -1);
    }

    else
    {

      outlined destroy of DatagramChannelError(v25, type metadata accessor for DatagramChannelError);
    }

    v50 = *(*v26 + 128);
    v79 = *v26 + 128;
    v80 = v50;
    v51 = (v50)(1);
    v52 = (*(*v26 + 168))(v51);
    v54 = 0;
    v56 = v52 + 64;
    v55 = *(v52 + 64);
    v87 = v52;
    v57 = 1 << *(v52 + 32);
    v58 = -1;
    if (v57 < 64)
    {
      v58 = ~(-1 << v57);
    }

    v59 = v58 & v55;
    v60 = (v57 + 63) >> 6;
    *&v53 = 136315138;
    v81 = v53;
    while (v59)
    {
LABEL_27:
      v63 = (v54 << 10) | (16 * __clz(__rbit64(v59)));
      v64 = (*(v87 + 6) + v63);
      v65 = *v64;
      v66 = v64[1];
      v67 = (*(v87 + 7) + v63);
      v68 = *v67;
      v88 = v67[1];

      swift_unknownObjectRetain();
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v83 = v68;
        v72 = v71;
        v73 = swift_slowAlloc();
        v89 = v73;
        *v72 = v81;
        v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, &v89);

        *(v72 + 4) = v74;
        _os_log_impl(&dword_1AEB26000, v69, v70, "Closing datagram-channel stream, topic=%s", v72, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v73);
        MEMORY[0x1B27120C0](v73, -1, -1);
        MEMORY[0x1B27120C0](v72, -1, -1);
      }

      else
      {
      }

      v59 &= v59 - 1;
      ObjectType = swift_getObjectType();
      v22 = v86;
      swift_storeEnumTagMultiPayload();
      (*(v88 + 64))(v22, ObjectType);
      swift_unknownObjectRelease();
      outlined destroy of DatagramChannelError(v22, type metadata accessor for DatagramChannelError);
    }

    while (1)
    {
      v62 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v62 >= v60)
      {
        break;
      }

      v59 = *(v56 + 8 * v62);
      ++v54;
      if (v59)
      {
        v54 = v62;
        goto LABEL_27;
      }
    }

    return (v80)(2);
  }

  return result;
}

uint64_t specialized static DatagramChannelError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v3 = type metadata accessor for NWError();
  v26 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DatagramChannelConnectError(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DatagramChannelError(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20DatagramChannelErrorO_ACtMd, &_s14CopresenceCore20DatagramChannelErrorO_ACtMR);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v26 - v17;
  v19 = *(v16 + 56);
  outlined init with copy of DatagramChannelError(a1, &v26 - v17, type metadata accessor for DatagramChannelError);
  outlined init with copy of DatagramChannelError(v27, &v18[v19], type metadata accessor for DatagramChannelError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v21 = v5;
    v22 = v26;
    if (EnumCaseMultiPayload)
    {
      outlined init with copy of DatagramChannelError(v18, v12, type metadata accessor for DatagramChannelError);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        (*(v22 + 8))(v12, v3);
        goto LABEL_16;
      }

      (*(v22 + 32))(v21, &v18[v19], v3);
      v23 = MEMORY[0x1B270FAF0](v12, v21);
      v24 = *(v22 + 8);
      v24(v21, v3);
      v24(v12, v3);
    }

    else
    {
      outlined init with copy of DatagramChannelError(v18, v14, type metadata accessor for DatagramChannelError);
      if (swift_getEnumCaseMultiPayload())
      {
        outlined destroy of DatagramChannelError(v14, type metadata accessor for DatagramChannelConnectError);
        goto LABEL_16;
      }

      outlined init with take of DatagramChannelError(&v18[v19], v8, type metadata accessor for DatagramChannelConnectError);
      v23 = specialized static DatagramChannelConnectError.== infix(_:_:)(v14, v8);
      outlined destroy of DatagramChannelError(v8, type metadata accessor for DatagramChannelConnectError);
      outlined destroy of DatagramChannelError(v14, type metadata accessor for DatagramChannelConnectError);
    }

    outlined destroy of DatagramChannelError(v18, type metadata accessor for DatagramChannelError);
    return v23 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      goto LABEL_12;
    }

LABEL_16:
    outlined destroy of NSObject?(v18, &_s14CopresenceCore20DatagramChannelErrorO_ACtMd, &_s14CopresenceCore20DatagramChannelErrorO_ACtMR);
    v23 = 0;
    return v23 & 1;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_16;
  }

LABEL_12:
  outlined destroy of DatagramChannelError(v18, type metadata accessor for DatagramChannelError);
  v23 = 1;
  return v23 & 1;
}

uint64_t _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_2(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type DatagramClient.State and conformance DatagramClient.State()
{
  result = lazy protocol witness table cache variable for type DatagramClient.State and conformance DatagramClient.State;
  if (!lazy protocol witness table cache variable for type DatagramClient.State and conformance DatagramClient.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DatagramClient.State and conformance DatagramClient.State);
  }

  return result;
}

uint64_t type metadata completion function for DatagramChannelError(uint64_t a1)
{
  result = type metadata accessor for DatagramChannelConnectError(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NWError();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for DatagramClient.Configuration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 64))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DatagramClient.Configuration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

void type metadata completion function for EgressMessage(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for [UInt64]?(319, &lazy cache variable for type metadata for [UInt64]?, &_sSays6UInt64VGMd, &_sSays6UInt64VGMR, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [UInt64]?(319, &lazy cache variable for type metadata for (())?, &_syycMd, &_syycMR, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for EgressMessage(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *storeEnumTagSinglePayload for EgressMessage(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFE)
      {
        v19 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v19 = 0;
          *v19 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *v19 = a2;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

void type metadata completion function for DatagramClient(uint64_t a1)
{
  type metadata accessor for [UInt64]?(319, &lazy cache variable for type metadata for Published<[String : AnyDatagramChannelStream]>, &_sSDySS14CopresenceCore24AnyDatagramChannelStream_pGMd, &_sSDySS14CopresenceCore24AnyDatagramChannelStream_pGMR, MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for [UInt64]?(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7)
{
  v13 = *a5;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_17;
  }

  v20 = v15;
  v21 = v13[3];
  if (v21 < v19 || (a4 & 1) == 0)
  {
    if (v21 < v19 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, a4 & 1);
      v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v20 & 1) != (v23 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v22 = v14;
      specialized _NativeDictionary.copy()();
      v14 = v22;
    }
  }

  v24 = *a5;
  if (v20)
  {
    v25 = (v24[7] + 16 * v14);
    *v25 = a1;
    v25[1] = a7;

    return swift_unknownObjectRelease();
  }

  v24[(v14 >> 6) + 8] |= 1 << v14;
  v27 = (v24[6] + 16 * v14);
  *v27 = a2;
  v27[1] = a3;
  v28 = (v24[7] + 16 * v14);
  *v28 = a1;
  v28[1] = a7;
  v29 = v24[2];
  v18 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v30;
}

uint64_t objectdestroyTm_1()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t outlined init with copy of DatagramChannelError(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of DatagramChannelError(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of DatagramChannelError(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t CP_ResponseStatus.rawValue.getter(uint64_t result, char a2)
{
  if (a2)
  {
    return qword_1AEE179E0[result];
  }

  return result;
}

uint64_t protocol witness for Enum.rawValue.getter in conformance CP_ResponseStatus()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1AEE179E0[result];
  }

  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CP_ResponseStatus(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v2 = qword_1AEE179E0[v2];
  }

  *a1 = v2;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_ResponseStatus(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CP_ResponseStatus and conformance CP_ResponseStatus();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance CP_ResponseStatus(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    v2 = qword_1AEE179E0[v2];
  }

  v3 = *a2;
  if (*(a2 + 8))
  {
    v3 = qword_1AEE179E0[v3];
  }

  return v2 == v3;
}

uint64_t CP_Record.seqNum.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for CP_Record(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(v6 + 36), v5, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v7 = type metadata accessor for CP_SequenceNumber(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of CP_SequenceNumber(v5, a1, type metadata accessor for CP_SequenceNumber);
  }

  *a1 = 0;
  a1[1] = 0;
  UnknownStorage.init()();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v5, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  }

  return result;
}

uint64_t key path getter for CP_Record.seqNum : CP_Record@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for CP_Record(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v7 + 36), v6, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v8 = type metadata accessor for CP_SequenceNumber(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of CP_SequenceNumber(v6, a2, type metadata accessor for CP_SequenceNumber);
  }

  *a2 = 0;
  a2[1] = 0;
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v6, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  }

  return result;
}

uint64_t key path setter for CP_Record.seqNum : CP_Record(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CP_SequenceNumber(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CP_SequenceNumber(a1, v7, type metadata accessor for CP_SequenceNumber);
  v8 = *(type metadata accessor for CP_Record(0) + 36);
  outlined destroy of NSObject?(a2 + v8, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  outlined init with take of CP_SequenceNumber(v7, a2 + v8, type metadata accessor for CP_SequenceNumber);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t CP_Record.seqNum.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CP_Record(0) + 36);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  outlined init with take of CP_SequenceNumber(a1, v1 + v3, type metadata accessor for CP_SequenceNumber);
  v4 = type metadata accessor for CP_SequenceNumber(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t CP_SequenceNumber.init()@<X0>(void *a1@<X8>)
{
  type metadata accessor for CP_SequenceNumber(0);
  *a1 = 0;
  a1[1] = 0;
  return UnknownStorage.init()();
}

uint64_t (*CP_Record.seqNum.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CP_SequenceNumber(0);
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
  v15 = *(type metadata accessor for CP_Record(0) + 36);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
    }
  }

  else
  {
    outlined init with take of CP_SequenceNumber(v8, v14, type metadata accessor for CP_SequenceNumber);
  }

  return CP_Record.seqNum.modify;
}

BOOL CP_Record.hasSeqNum.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for CP_Record(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v0 + *(v4 + 36), v3, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v5 = type metadata accessor for CP_SequenceNumber(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  outlined destroy of NSObject?(v3, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  return v6;
}

Swift::Void __swiftcall CP_Record.clearSeqNum()()
{
  v1 = *(type metadata accessor for CP_Record(0) + 36);
  outlined destroy of NSObject?(v0 + v1, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v2 = type metadata accessor for CP_SequenceNumber(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t CP_EncryptionID.init()@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_1AEE0C200;
  type metadata accessor for CP_EncryptionID(0);
  return UnknownStorage.init()();
}

uint64_t (*CP_Record.encryptionID.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CP_EncryptionID(0);
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
  v15 = *(type metadata accessor for CP_Record(0) + 40);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = xmmword_1AEE0C200;
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
    }
  }

  else
  {
    outlined init with take of CP_SequenceNumber(v8, v14, type metadata accessor for CP_EncryptionID);
  }

  return CP_Record.encryptionID.modify;
}

uint64_t CP_Record.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = xmmword_1AEE0C200;
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = 0;
  v2 = type metadata accessor for CP_Record(0);
  UnknownStorage.init()();
  v3 = *(v2 + 36);
  v4 = type metadata accessor for CP_SequenceNumber(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = *(v2 + 40);
  v6 = type metadata accessor for CP_EncryptionID(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

uint64_t CP_KeyValue.key.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CP_KeyValue.key.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CP_KeyValue.dataValue.getter()
{
  v1 = *(v0 + 16);
  outlined copy of Data._Representation(v1, *(v0 + 24));
  return v1;
}

uint64_t CP_KeyValue.dataValue.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t CP_KeyValue.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = xmmword_1AEE0C200;
  type metadata accessor for CP_KeyValue(0);
  return UnknownStorage.init()();
}

uint64_t CP_KeyValue.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t CP_KeyValue.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t CP_EncryptionID.uuid.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t CP_EncryptionID.uuid.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t CP_TopicSubscribersRequest.topicTerminationAck.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v9 - v5, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  v7 = type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of NSObject?(v6, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
LABEL_5:
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck(0);
    return UnknownStorage.init()();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of CP_SequenceNumber(v6, type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation);
    goto LABEL_5;
  }

  return outlined init with take of CP_SequenceNumber(v6, a1, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck);
}

uint64_t key path getter for CP_TopicSubscribersRequest.topicTerminationAck : CP_TopicSubscribersRequest@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v9 - v5, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  v7 = type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of NSObject?(v6, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
LABEL_5:
    *a2 = 0;
    a2[1] = 0xE000000000000000;
    type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck(0);
    return UnknownStorage.init()();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of CP_SequenceNumber(v6, type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation);
    goto LABEL_5;
  }

  return outlined init with take of CP_SequenceNumber(v6, a2, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck);
}

uint64_t key path setter for CP_TopicSubscribersRequest.topicTerminationAck : CP_TopicSubscribersRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CP_SequenceNumber(a1, v6, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  outlined init with take of CP_SequenceNumber(v6, a2, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck);
  v7 = type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t CP_TopicSubscribersRequest.topicTerminationAck.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  outlined init with take of CP_SequenceNumber(a1, v1, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck);
  v3 = type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*CP_TopicSubscribersRequest.topicTerminationAck.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR) - 8) + 64);
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
  v9 = *(*(type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck(0) - 8) + 64);
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
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1, v8, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  v12 = type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of CP_SequenceNumber(v8, v11, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck);
      return CP_TopicSubscribersRequest.topicTerminationAck.modify;
    }

    outlined destroy of CP_SequenceNumber(v8, type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation);
  }

  *v11 = 0;
  v11[1] = 0xE000000000000000;
  UnknownStorage.init()();
  return CP_TopicSubscribersRequest.topicTerminationAck.modify;
}

void CP_TopicSubscribersRequest.topicTerminationAck.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of CP_SequenceNumber((*a1)[3], v5, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v5, v8, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of CP_SequenceNumber(v6, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v6, v8, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t CP_TopicSubscribersRequest.topicTerminationRequest.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v9 - v5, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  v7 = type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of NSObject?(v6, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of CP_SequenceNumber(v6, a1, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest);
    }

    outlined destroy of CP_SequenceNumber(v6, type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation);
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest(0);
  return UnknownStorage.init()();
}

uint64_t key path setter for CP_TopicSubscribersRequest.topicTerminationRequest : CP_TopicSubscribersRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CP_SequenceNumber(a1, v6, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  outlined init with take of CP_SequenceNumber(v6, a2, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest);
  v7 = type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t CP_TopicSubscribersRequest.topicTerminationRequest.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  outlined init with take of CP_SequenceNumber(a1, v1, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest);
  v3 = type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t CP_TopicSubscribersRequest.TopicTerminationRequest.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest(0);
  return UnknownStorage.init()();
}

void (*CP_TopicSubscribersRequest.topicTerminationRequest.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR) - 8) + 64);
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
  v9 = *(*(type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest(0) - 8) + 64);
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
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1, v8, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  v12 = type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
LABEL_15:
    *v11 = 0;
    *(v11 + 8) = 0xE000000000000000;
    *(v11 + 16) = 0;
    *(v11 + 24) = 1;
    UnknownStorage.init()();
    return CP_TopicSubscribersRequest.topicTerminationRequest.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of CP_SequenceNumber(v8, type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation);
    goto LABEL_15;
  }

  outlined init with take of CP_SequenceNumber(v8, v11, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest);
  return CP_TopicSubscribersRequest.topicTerminationRequest.modify;
}

void CP_TopicSubscribersRequest.topicTerminationRequest.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of CP_SequenceNumber((*a1)[3], v5, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v5, v8, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of CP_SequenceNumber(v6, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v6, v8, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t CP_EncryptionID.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t CP_EncryptionID.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t CP_TopicSubscribersRequest.TopicTerminationRequest.reason.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

BOOL CP_TopicSubscribersRequest.TopicTerminationRequest.Reason.rawValue.getter(_BOOL8 result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_TopicSubscribersRequest.TopicTerminationRequest.Reason(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CP_TopicSubscribersRequest.TopicTerminationRequest.Reason and conformance CP_TopicSubscribersRequest.TopicTerminationRequest.Reason();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t CP_TopicSubscribers.terminateTopic.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t CP_TopicSubscribersRequest.TopicTerminatedAck.init()@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a1(0);
  return UnknownStorage.init()();
}

uint64_t CP_SystemEvent.event.getter()
{
  v1 = *v0;
  outlined copy of CP_SystemEvent.OneOf_Event?(*v0, *(v0 + 8), *(v0 + 16));
  return v1;
}

uint64_t CP_SystemEvent.event.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = outlined consume of CP_SystemEvent.OneOf_Event?(*v3, *(v3 + 8), *(v3 + 16));
  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
  return result;
}

uint64_t CP_SystemEvent.topicCreated.getter()
{
  v1 = *(v0 + 16);
  if (v1 == 255 || (v1 & 1) != 0)
  {
    return 0;
  }

  v3 = *v0;
  outlined copy of CP_SystemEvent.OneOf_Event(*v0, *(v0 + 8));
  return v3;
}

void (*CP_SystemEvent.topicCreated.modify(uint64_t *a1))(uint64_t **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v3 + 24) = *v1;
  v6 = *(v1 + 8);
  *(v3 + 32) = v6;
  v7 = *(v1 + 16);
  *(v3 + 40) = v7;
  if (v7 == 255 || (v7 & 1) != 0)
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  else
  {
    outlined copy of CP_SystemEvent.OneOf_Event(v5, v6);
  }

  *v4 = v5;
  v4[1] = v6;
  return CP_SystemEvent.topicCreated.modify;
}

uint64_t CP_SystemEvent.topicDestroyed.getter()
{
  v1 = *(v0 + 16);
  if (v1 == 255 || (v1 & 1) == 0)
  {
    return 0;
  }

  v2 = *v0;
  outlined copy of CP_SystemEvent.OneOf_Event(*v0, *(v0 + 8));
  return v2;
}

uint64_t CP_SystemEvent.topicCreated.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = outlined consume of CP_SystemEvent.OneOf_Event?(*v3, *(v3 + 8), *(v3 + 16));
  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
  return result;
}

void (*CP_SystemEvent.topicDestroyed.modify(uint64_t *a1))(uint64_t **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v3 + 24) = *v1;
  v6 = *(v1 + 8);
  *(v3 + 32) = v6;
  v7 = *(v1 + 16);
  *(v3 + 40) = v7;
  if (v7 == 255 || (v7 & 1) == 0)
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  else
  {
    outlined copy of CP_SystemEvent.OneOf_Event(v5, v6);
  }

  *v4 = v5;
  v4[1] = v6;
  return CP_SystemEvent.topicDestroyed.modify;
}

void CP_SystemEvent.topicCreated.modify(uint64_t **a1, char a2, char a3)
{
  v4 = *a1;
  v6 = **a1;
  v5 = (*a1)[1];
  v7 = *(*a1 + 40);
  v9 = (*a1)[3];
  v8 = (*a1)[4];
  v10 = (*a1)[2];
  if (a2)
  {

    outlined consume of CP_SystemEvent.OneOf_Event?(v9, v8, v7);
    *v10 = v6;
    *(v10 + 8) = v5;
    *(v10 + 16) = a3;
  }

  else
  {
    outlined consume of CP_SystemEvent.OneOf_Event?((*a1)[3], v8, v7);
    *v10 = v6;
    *(v10 + 8) = v5;
    *(v10 + 16) = a3;
  }

  free(v4);
}

uint64_t CP_SystemEvent.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
  type metadata accessor for CP_SystemEvent(0);
  return UnknownStorage.init()();
}

uint64_t CP_SubscribeRequest.initialize.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v13 - v5, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  v7 = type metadata accessor for CP_SubscribeRequest.OneOf_Operation(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of NSObject?(v6, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
LABEL_5:
    *a1 = 0;
    *(a1 + 1) = 0xE000000000000000;
    v8 = MEMORY[0x1E69E7CC0];
    *(a1 + 2) = MEMORY[0x1E69E7CC0];
    *(a1 + 3) = v8;
    v9 = type metadata accessor for CP_SubscribeRequest.Initialize(0);
    *(a1 + 4) = 0;
    *(a1 + 5) = 0;
    UnknownStorage.init()();
    v10 = *(v9 + 40);
    v11 = type metadata accessor for CP_EncryptionID(0);
    return (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of CP_SequenceNumber(v6, type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
    goto LABEL_5;
  }

  return outlined init with take of CP_SequenceNumber(v6, a1, type metadata accessor for CP_SubscribeRequest.Initialize);
}

uint64_t key path setter for CP_SubscribeRequest.initialize : CP_SubscribeRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CP_SubscribeRequest.Initialize(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CP_SequenceNumber(a1, v6, type metadata accessor for CP_SubscribeRequest.Initialize);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  outlined init with take of CP_SequenceNumber(v6, a2, type metadata accessor for CP_SubscribeRequest.Initialize);
  v7 = type metadata accessor for CP_SubscribeRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t CP_SubscribeRequest.initialize.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  outlined init with take of CP_SequenceNumber(a1, v1, type metadata accessor for CP_SubscribeRequest.Initialize);
  v3 = type metadata accessor for CP_SubscribeRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t CP_SubscribeRequest.Initialize.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 2) = MEMORY[0x1E69E7CC0];
  *(a1 + 3) = v2;
  v3 = type metadata accessor for CP_SubscribeRequest.Initialize(0);
  *(a1 + 4) = 0;
  *(a1 + 5) = 0;
  UnknownStorage.init()();
  v4 = *(v3 + 40);
  v5 = type metadata accessor for CP_EncryptionID(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

void (*CP_SubscribeRequest.initialize.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR) - 8) + 64);
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
  v10 = type metadata accessor for CP_SubscribeRequest.Initialize(0);
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
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, v9, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  v14 = type metadata accessor for CP_SubscribeRequest.OneOf_Operation(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of NSObject?(v9, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of CP_SequenceNumber(v9, v13, type metadata accessor for CP_SubscribeRequest.Initialize);
      return CP_SubscribeRequest.initialize.modify;
    }

    outlined destroy of CP_SequenceNumber(v9, type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
  }

  v16 = MEMORY[0x1E69E7CC0];
  *v13 = 0;
  *(v13 + 1) = 0xE000000000000000;
  *(v13 + 2) = v16;
  *(v13 + 3) = v16;
  *(v13 + 4) = 0;
  *(v13 + 5) = 0;
  UnknownStorage.init()();
  v17 = *(v10 + 40);
  v18 = type metadata accessor for CP_EncryptionID(0);
  (*(*(v18 - 8) + 56))(&v13[v17], 1, 1, v18);
  return CP_SubscribeRequest.initialize.modify;
}

void CP_SubscribeRequest.initialize.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of CP_SequenceNumber((*a1)[3], v5, type metadata accessor for CP_SubscribeRequest.Initialize);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v5, v8, type metadata accessor for CP_SubscribeRequest.Initialize);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of CP_SequenceNumber(v6, type metadata accessor for CP_SubscribeRequest.Initialize);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v6, v8, type metadata accessor for CP_SubscribeRequest.Initialize);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t CP_SubscribeRequest.recordAck.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v9 - v5, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  v7 = type metadata accessor for CP_SubscribeRequest.OneOf_Operation(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of NSObject?(v6, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of CP_SequenceNumber(v6, a1, type metadata accessor for CP_SubscribeRequest.RecordAck);
    }

    outlined destroy of CP_SequenceNumber(v6, type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for CP_SubscribeRequest.RecordAck(0);
  return UnknownStorage.init()();
}

uint64_t key path getter for CP_SubscribeRequest.recordAck : CP_SubscribeRequest@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v9 - v5, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  v7 = type metadata accessor for CP_SubscribeRequest.OneOf_Operation(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of NSObject?(v6, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of CP_SequenceNumber(v6, a2, type metadata accessor for CP_SubscribeRequest.RecordAck);
    }

    outlined destroy of CP_SequenceNumber(v6, type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  type metadata accessor for CP_SubscribeRequest.RecordAck(0);
  return UnknownStorage.init()();
}

uint64_t key path setter for CP_SubscribeRequest.recordAck : CP_SubscribeRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CP_SubscribeRequest.RecordAck(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CP_SequenceNumber(a1, v6, type metadata accessor for CP_SubscribeRequest.RecordAck);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  outlined init with take of CP_SequenceNumber(v6, a2, type metadata accessor for CP_SubscribeRequest.RecordAck);
  v7 = type metadata accessor for CP_SubscribeRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t CP_SubscribeRequest.recordAck.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  outlined init with take of CP_SequenceNumber(a1, v1, type metadata accessor for CP_SubscribeRequest.RecordAck);
  v3 = type metadata accessor for CP_SubscribeRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t CP_SubscribeRequest.RecordAck.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for CP_SubscribeRequest.RecordAck(0);
  return UnknownStorage.init()();
}

void (*CP_SubscribeRequest.recordAck.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR) - 8) + 64);
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
  v9 = *(*(type metadata accessor for CP_SubscribeRequest.RecordAck(0) - 8) + 64);
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
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1, v8, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  v12 = type metadata accessor for CP_SubscribeRequest.OneOf_Operation(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
LABEL_15:
    *v11 = MEMORY[0x1E69E7CC0];
    UnknownStorage.init()();
    return CP_SubscribeRequest.recordAck.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of CP_SequenceNumber(v8, type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
    goto LABEL_15;
  }

  outlined init with take of CP_SequenceNumber(v8, v11, type metadata accessor for CP_SubscribeRequest.RecordAck);
  return CP_SubscribeRequest.recordAck.modify;
}

void CP_SubscribeRequest.recordAck.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of CP_SequenceNumber((*a1)[3], v5, type metadata accessor for CP_SubscribeRequest.RecordAck);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v5, v8, type metadata accessor for CP_SubscribeRequest.RecordAck);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of CP_SequenceNumber(v6, type metadata accessor for CP_SubscribeRequest.RecordAck);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v6, v8, type metadata accessor for CP_SubscribeRequest.RecordAck);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t static CP_SubscribeRequest.RecordAck.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore17CP_SequenceNumberV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for CP_SubscribeRequest.RecordAck(0);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t CP_SubscribeRequest.Initialize.knownSeqNums.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t CP_Record.encryptionID.getter@<X0>(uint64_t (*a1)(void)@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  v8 = a1(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2 + *(v8 + 40), v7, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v9 = type metadata accessor for CP_EncryptionID(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of CP_SequenceNumber(v7, a2, type metadata accessor for CP_EncryptionID);
  }

  *a2 = xmmword_1AEE0C200;
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  }

  return result;
}

uint64_t key path getter for CP_Record.encryptionID : CP_Record@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, _OWORD *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  v9 = a2(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v9 + 40), v8, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v10 = type metadata accessor for CP_EncryptionID(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return outlined init with take of CP_SequenceNumber(v8, a3, type metadata accessor for CP_EncryptionID);
  }

  *a3 = xmmword_1AEE0C200;
  UnknownStorage.init()();
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v8, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  }

  return result;
}

uint64_t key path setter for CP_Record.encryptionID : CP_Record(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = type metadata accessor for CP_EncryptionID(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CP_SequenceNumber(a1, v11, type metadata accessor for CP_EncryptionID);
  v12 = *(a5(0) + 40);
  outlined destroy of NSObject?(a2 + v12, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  outlined init with take of CP_SequenceNumber(v11, a2 + v12, type metadata accessor for CP_EncryptionID);
  return (*(v9 + 56))(a2 + v12, 0, 1, v8);
}

uint64_t CP_Record.encryptionID.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 40);
  outlined destroy of NSObject?(v2 + v4, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  outlined init with take of CP_SequenceNumber(a1, v2 + v4, type metadata accessor for CP_EncryptionID);
  v5 = type metadata accessor for CP_EncryptionID(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

uint64_t (*CP_SubscribeRequest.Initialize.localEncryptionID.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CP_EncryptionID(0);
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
  v15 = *(type metadata accessor for CP_SubscribeRequest.Initialize(0) + 40);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = xmmword_1AEE0C200;
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
    }
  }

  else
  {
    outlined init with take of CP_SequenceNumber(v8, v14, type metadata accessor for CP_EncryptionID);
  }

  return CP_Record.encryptionID.modify;
}

BOOL CP_Record.hasEncryptionID.getter(uint64_t (*a1)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = a1(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(v6 + 40), v5, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v7 = type metadata accessor for CP_EncryptionID(0);
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  outlined destroy of NSObject?(v5, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  return v8;
}

uint64_t CP_Record.clearEncryptionID()(uint64_t (*a1)(void))
{
  v2 = *(a1(0) + 40);
  outlined destroy of NSObject?(v1 + v2, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v3 = type metadata accessor for CP_EncryptionID(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(v1 + v2, 1, 1, v3);
}

uint64_t CP_SubscribeRequest.Initialize.knownEncryptionIds.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t CP_SubscribeRequest.Initialize.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CP_SubscribeRequest.Initialize(0) + 36);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CP_SubscribeRequest.Initialize.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CP_SubscribeRequest.Initialize(0) + 36);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CP_SubscribeRequest.RecordAck.seqNumsAck.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t CP_TopicSubscribersRequest.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  a2(0);
  return UnknownStorage.init()();
}

uint64_t CP_SubscribeResponse.initializeAck.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v15 - v5, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  v7 = type metadata accessor for CP_SubscribeResponse.OneOf_Operation(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of NSObject?(v6, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return outlined init with take of CP_SequenceNumber(v6, a1, type metadata accessor for CP_SubscribeResponse.InitializeAck);
    }

    outlined destroy of CP_SequenceNumber(v6, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  v8 = MEMORY[0x1E69E7CC0];
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = v8;
  *(a1 + 48) = v8;
  *(a1 + 56) = v8;
  v9 = type metadata accessor for CP_SubscribeResponse.InitializeAck(0);
  UnknownStorage.init()();
  v10 = *(v9 + 44);
  v11 = type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = *(v9 + 48);
  v13 = type metadata accessor for CP_SequenceNumber(0);
  return (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
}

uint64_t key path setter for CP_SubscribeResponse.initializeAck : CP_SubscribeResponse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CP_SubscribeResponse.InitializeAck(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CP_SequenceNumber(a1, v6, type metadata accessor for CP_SubscribeResponse.InitializeAck);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  outlined init with take of CP_SequenceNumber(v6, a2, type metadata accessor for CP_SubscribeResponse.InitializeAck);
  v7 = type metadata accessor for CP_SubscribeResponse.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t CP_SubscribeResponse.initializeAck.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  outlined init with take of CP_SequenceNumber(a1, v1, type metadata accessor for CP_SubscribeResponse.InitializeAck);
  v3 = type metadata accessor for CP_SubscribeResponse.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t CP_SubscribeResponse.InitializeAck.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = v2;
  *(a1 + 48) = v2;
  *(a1 + 56) = v2;
  v3 = type metadata accessor for CP_SubscribeResponse.InitializeAck(0);
  UnknownStorage.init()();
  v4 = *(v3 + 44);
  v5 = type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = *(v3 + 48);
  v7 = type metadata accessor for CP_SequenceNumber(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, 1, 1, v7);
}

void (*CP_SubscribeResponse.initializeAck.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR) - 8) + 64);
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
  v10 = type metadata accessor for CP_SubscribeResponse.InitializeAck(0);
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
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, v9, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  v14 = type metadata accessor for CP_SubscribeResponse.OneOf_Operation(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of NSObject?(v9, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of CP_SequenceNumber(v9, v13, type metadata accessor for CP_SubscribeResponse.InitializeAck);
      return CP_SubscribeResponse.initializeAck.modify;
    }

    outlined destroy of CP_SequenceNumber(v9, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
  }

  *v13 = 0;
  *(v13 + 8) = 1;
  v16 = MEMORY[0x1E69E7CC0];
  *(v13 + 16) = 0;
  *(v13 + 24) = 0xE000000000000000;
  *(v13 + 32) = v16;
  *(v13 + 40) = v16;
  *(v13 + 48) = v16;
  *(v13 + 56) = v16;
  UnknownStorage.init()();
  v17 = *(v10 + 44);
  v18 = type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(0);
  (*(*(v18 - 8) + 56))(v13 + v17, 1, 1, v18);
  v19 = *(v10 + 48);
  v20 = type metadata accessor for CP_SequenceNumber(0);
  (*(*(v20 - 8) + 56))(v13 + v19, 1, 1, v20);
  return CP_SubscribeResponse.initializeAck.modify;
}