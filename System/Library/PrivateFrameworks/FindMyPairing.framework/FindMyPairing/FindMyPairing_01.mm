Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PairingOperation(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance PairingOperation(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00676E69726961;
  v4 = 0x506C6C617265766FLL;
  v5 = 0xEC00000064616552;
  v6 = 0x617461646174656DLL;
  v7 = 0x800000024AFAF570;
  v8 = 0x53676E6972696170;
  if (v2 == 3)
  {
    v8 = 0xD000000000000010;
  }

  else
  {
    v7 = 0xEC00000074726174;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000013;
    v3 = 0x800000024AFAF540;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

Swift::Int PairingCoordinatorError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C236B70](v1);
  return Hasher._finalize()();
}

__n128 PairingSuccessResult.init(location:beaconIds:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = *a1;
  v4 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v4;
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 40) = a2;
  return result;
}

uint64_t PairingCoordinator.stream()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of PairingValidator.ack(_:);

  return PairingCoordinator.stream()(a1, a2, a3);
}

{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](PairingCoordinator.stream(), v6, v5);
}

uint64_t PairingCoordinator.stream()()
{
  v1 = v0[5];
  v2 = v0[4];
  type metadata accessor for WorkItemQueue();
  v3 = *(v1 + 72);
  v3(v2, v1);
  v4 = static WorkItemQueue.called(on:)();

  if (v4)
  {
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    swift_allocError();
    *v5 = 9;
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[5];
    v9 = v0[4];
    v0[9] = (v3)(v9, v8);
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = swift_allocObject();
    v0[10] = v11;
    v11[2] = v9;
    v11[3] = v8;
    v11[4] = v10;
    v14 = (*MEMORY[0x277D08960] + MEMORY[0x277D08960]);
    v12 = swift_task_alloc();
    v0[11] = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay13FindMyPairing0C16CoordinatorStateOSgGMd, &_sSay13FindMyPairing0C16CoordinatorStateOSgGMR);
    *v12 = v0;
    v12[1] = PairingCoordinator.stream();

    return v14(v0 + 2, &async function pointer to partial apply for closure #1 in PairingCoordinator.stream(), v11, v13);
  }
}

{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = PairingCoordinator.stream();
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = PairingCoordinator.stream();
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{

  v1 = *(v0 + 8);

  return v1();
}

void PairingCoordinator.stream()()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      v5 = *(v1 + 16);
      if (v3 >= v5)
      {
LABEL_17:
        __break(1u);
        return;
      }

      v6 = *(v1 + 32 + 8 * v3);
      v7 = v3 + 1;
      if (v6 == 17)
      {
        break;
      }

LABEL_9:
      v3 = v7;
      outlined copy of PairingCoordinatorState(v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
      }

      v11 = *(v4 + 2);
      v10 = *(v4 + 3);
      if (v11 >= v10 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v4);
      }

      *(v4 + 2) = v11 + 1;
      *&v4[8 * v11 + 32] = v6;
      if (v3 == v2)
      {
        goto LABEL_14;
      }
    }

    v8 = (v1 + 40 + 8 * v3);
    while (v2 != v7)
    {
      if (v5 == v7)
      {
        goto LABEL_17;
      }

      v9 = *v8++;
      v6 = v9;
      ++v7;
      if (v9 != 17)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_14:
  v12 = v0[5];
  v13 = v0[4];

  (*(v12 + 24))(v13, v12);
  AsyncStreamProvider.stream(initialEvents:)();

  v14 = v0[1];

  v14();
}

uint64_t PairingCoordinator.analyticsStream()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of PairingServiceProxy.reevaluateDependencies(for:);

  return PairingCoordinator.analyticsStream()(a1, a2, a3);
}

{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](PairingCoordinator.analyticsStream(), v6, v5);
}

uint64_t PairingCoordinator.analyticsStream()()
{
  v1 = v0[4];
  v2 = v0[3];
  type metadata accessor for WorkItemQueue();
  (*(v1 + 72))(v2, v1);
  v3 = static WorkItemQueue.called(on:)();

  if (v3)
  {
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    swift_allocError();
    *v4 = 9;
    swift_willThrow();
  }

  else
  {
    (*(v0[4] + 32))(v0[3]);
    AsyncStreamProvider.stream(initialEvents:)();
  }

  v5 = v0[1];

  return v5();
}

uint64_t PairingCoordinator.setState(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of PairingValidator.ack(_:);

  return PairingCoordinator.setState(_:)(a1, a2, a3);
}

{
  v4[8] = a2;
  v4[9] = a3;
  v5 = *a1;
  v4[10] = v3;
  v4[11] = v5;
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](PairingCoordinator.setState(_:), v7, v6);
}

uint64_t PairingCoordinator.setState(_:)()
{
  v1 = v0[9];
  v2 = v0[8];
  type metadata accessor for WorkItemQueue();
  (*(v1 + 72))(v2, v1);
  v3 = static WorkItemQueue.called(on:)();

  if (v3 & 1) != 0 || ((*(v0[9] + 80))(v0[8]), v4 = static WorkItemQueue.called(on:)(), , (v4))
  {
    v5 = v0[11];
    v7 = v0[8];
    v6 = v0[9];
    v0[12] = (*(v6 + 16))(v7, v6);
    v0[7] = v5;
    (*(v6 + 40))(v7, v6);
    v8 = v0[5];
    v9 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
    v0[13] = (*(v9 + 64))(v8, v9);
    v10 = swift_task_alloc();
    v0[14] = v10;
    *v10 = v0;
    v10[1] = PairingCoordinator.setState(_:);

    return specialized PairingCoordinatorStateManager.setNextState(_:input:)(v0 + 7);
  }

  else
  {
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    swift_allocError();
    *v12 = 8;
    swift_willThrow();
    v13 = v0[1];

    return v13();
  }
}

{
  v1 = *v0;
  v4 = *v0;

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
  v2 = *(v4 + 8);

  return v2();
}

Swift::Void __swiftcall PairingCoordinator.setup()()
{
  v2 = v1;
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v3;
  v9[5] = v2;
  v9[6] = v8;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in PairingCoordinator.setup(), v9);

  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sScPSgMd, &_sScPSgMR);
}

uint64_t closure #1 in PairingCoordinator.stream()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.stream(), 0, 0);
}

uint64_t closure #1 in PairingCoordinator.stream()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13FindMyPairing0F16CoordinatorStateOSgGMd, &_ss23_ContiguousArrayStorageCy13FindMyPairing0F16CoordinatorStateOSgGMR);
  v1 = swift_allocObject();
  v0[12] = v1;
  *(v1 + 16) = xmmword_24AFB0430;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v3 = v0[11];
    v0[14] = *(v3 + 16);
    v0[15] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0x20DC000000000000;
    v5 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.stream(), v5, v4);
  }

  else
  {
    v6 = v0[12];
    v7 = v0[8];
    *(v6 + 32) = 17;
    *v7 = v6;
    v8 = v0[1];

    return v8();
  }
}

{
  v1 = (*(v0 + 112))(*(v0 + 80), *(v0 + 88));
  *(v0 + 128) = v1;
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.stream(), v1, 0);
}

{
  v1 = *(v0 + 128);
  swift_beginAccess();
  v2 = *(v1 + 128);
  *(v0 + 136) = v2;
  outlined copy of PairingCoordinatorState(v2);

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.stream(), 0, 0);
}

{
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);
  *(v1 + 32) = *(v0 + 136);
  *v2 = v1;
  return (*(v0 + 8))();
}

uint64_t closure #1 in PairingCoordinator.setup()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[252] = a6;
  v6[251] = a5;
  v6[250] = a4;
  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.setup(), 0, 0);
}

uint64_t closure #1 in PairingCoordinator.setup()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[253] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[252];
    v4 = v0[251];
    v5 = swift_allocObject();
    v0[254] = v5;
    v5[2] = v4;
    v5[3] = v3;
    v5[4] = v2;
    v6 = swift_task_alloc();
    v0[255] = v6;
    *(v6 + 16) = &async function pointer to partial apply for implicit closure #1 in closure #1 in PairingCoordinator.setup();
    *(v6 + 24) = v5;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
    swift_asyncLet_begin();
    v7 = swift_allocObject();
    v0[256] = v7;
    v7[2] = v4;
    v7[3] = v3;
    v7[4] = v2;
    v8 = swift_task_alloc();
    v0[257] = v8;
    *(v8 + 16) = &async function pointer to partial apply for implicit closure #2 in closure #1 in PairingCoordinator.setup();
    *(v8 + 24) = v7;
    swift_unknownObjectRetain();
    swift_asyncLet_begin();
    v9 = swift_allocObject();
    v0[258] = v9;
    v9[2] = v4;
    v9[3] = v3;
    v9[4] = v2;
    v10 = swift_task_alloc();
    v0[259] = v10;
    *(v10 + 16) = &async function pointer to partial apply for implicit closure #3 in closure #1 in PairingCoordinator.setup();
    *(v10 + 24) = v9;
    swift_unknownObjectRetain();
    swift_asyncLet_begin();

    return MEMORY[0x282200930](v0 + 82, v0 + 2097, closure #1 in PairingCoordinator.setup(), v0 + 242);
  }

  else
  {
    v11 = v0[1];

    return v11();
  }
}

{
  *(v1 + 2080) = v0;
  if (v0)
  {
    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.setup(), 0, 0);
  }

  else
  {
    return MEMORY[0x282200930](v1 + 1296, v1 + 2098, closure #1 in PairingCoordinator.setup(), v1 + 1936);
  }
}

{
  *(v1 + 2088) = v0;
  if (v0)
  {
    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.setup(), 0, 0);
  }

  else
  {
    return MEMORY[0x282200928](v1 + 16, v1 + 2096, closure #1 in PairingCoordinator.setup(), v1 + 1936);
  }
}

{
  return MEMORY[0x282200920](v0 + 1296, v0 + 2098, closure #1 in PairingCoordinator.setup(), v0 + 1936);
}

{
  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.setup(), 0, 0);
}

{

  return MEMORY[0x282200920](v0 + 656, v0 + 2097, closure #1 in PairingCoordinator.setup(), v0 + 1296);
}

{
  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.setup(), 0, 0);
}

{

  return MEMORY[0x282200920](v0 + 16, v0 + 2096, closure #1 in PairingCoordinator.setup(), v0 + 656);
}

{
  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.setup(), 0, 0);
}

{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 2080);
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in end pairing: %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
    MEMORY[0x24C236EB0](v1);
  }

  else
  {

    MEMORY[0x24C236EB0](v1);
  }

  return MEMORY[0x282200920](v0 + 1296, v0 + 2098, closure #1 in PairingCoordinator.setup(), v0 + 1936);
}

{
  v1 = *(v0 + 2088);
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in end pairing: %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
    MEMORY[0x24C236EB0](v1);
  }

  else
  {

    MEMORY[0x24C236EB0](v1);
  }

  return MEMORY[0x282200920](v0 + 1296, v0 + 2098, closure #1 in PairingCoordinator.setup(), v0 + 1936);
}

uint64_t implicit closure #1 in closure #1 in PairingCoordinator.setup()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](implicit closure #1 in closure #1 in PairingCoordinator.setup(), v5, v4);
}

uint64_t implicit closure #1 in closure #1 in PairingCoordinator.setup()()
{
  PairingCoordinator.startAccessoryPairing()(v0[3], v0[4], &unk_285E41718, &async function pointer to partial apply for closure #1 in PairingCoordinator.setupStateChangeObserver());
  v1 = v0[1];

  return v1(0);
}

uint64_t _sytSgIegHd_AAs5Error_pIegHTrzo_TR(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = _sytSgIegHd_AAs5Error_pIegHTrzo_TRTQ0_;

  return v5();
}

uint64_t _sytSgIegHd_AAs5Error_pIegHTrzo_TRTQ0_(char a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1 & 1;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t implicit closure #2 in closure #1 in PairingCoordinator.setup()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = implicit closure #2 in closure #1 in PairingCoordinator.setup();

  return PairingCoordinator._setupUIStateListener()(a2, a3);
}

uint64_t implicit closure #2 in closure #1 in PairingCoordinator.setup()()
{
  v5 = *v1;

  v3 = *(v5 + 8);
  if (!v0)
  {
    v2 = 0;
  }

  return v3(v2);
}

uint64_t PairingCoordinator._setupUIStateListener()(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy10FindMyBase11TransactionC_0aB7Pairing0E7UIStateOtGMd, &_sScSy10FindMyBase11TransactionC_0aB7Pairing0E7UIStateOtGMR);
  v3[17] = v5;
  v3[18] = *(v5 - 8);
  v3[19] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy10FindMyBase11TransactionC_0bC7Pairing0F7UIStateOt_GMd, &_sScS8IteratorVy10FindMyBase11TransactionC_0bC7Pairing0F7UIStateOt_GMR);
  v3[20] = v6;
  v3[21] = *(v6 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = *(a2 + 8);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[24] = v8;
  v3[25] = v7;

  return MEMORY[0x2822009F8](PairingCoordinator._setupUIStateListener(), v8, v7);
}

uint64_t PairingCoordinator._setupUIStateListener()()
{
  v1 = v0[15];
  v2 = v0[14];
  type metadata accessor for WorkItemQueue();
  (*(v1 + 72))(v2, v1);
  v3 = static WorkItemQueue.called(on:)();

  if (v3)
  {
    v4 = 9;
    goto LABEL_3;
  }

  (*(v0[15] + 40))(v0[14]);
  v8 = v0[5];
  v9 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
  v10 = (*(v9 + 40))(v8, v9);
  v0[26] = v10;
  if (!v10)
  {
    v19 = v0[15];
    v20 = v0[14];
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    if (!PairingCoordinator.isUserActionable.getter(v20, v19))
    {
      if (one-time initialization token for pairingCoordinator != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, static Logger.pairingCoordinator);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_24AF48000, v26, v27, "PairingCoordinator: Flow is not user actionable, skip UI state observation", v28, 2u);
        MEMORY[0x24C237030](v28, -1, -1);
      }

      v6 = v0[1];
      goto LABEL_4;
    }

    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.pairingCoordinator);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_24AF48000, v22, v23, "PairingCoordinator: Missing pairingUIManager", v24, 2u);
      MEMORY[0x24C237030](v24, -1, -1);
    }

    v4 = 10;
LABEL_3:
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    swift_allocError();
    *v5 = v4;
    swift_willThrow();

    v6 = v0[1];
LABEL_4:

    return v6();
  }

  v12 = v11;
  v0[27] = v11;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v0[28] = __swift_project_value_buffer(v13, static Logger.pairingCoordinator);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_24AF48000, v14, v15, "PairingCoordinator: Start UI state observation", v16, 2u);
    MEMORY[0x24C237030](v16, -1, -1);
  }

  v0[29] = swift_getObjectType();
  v0[30] = *(v12 + 32);
  v0[31] = (v12 + 32) & 0xFFFFFFFFFFFFLL | 0x7109000000000000;
  v18 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](PairingCoordinator._setupUIStateListener(), v18, v17);
}

{
  (*(v0 + 240))(*(v0 + 232), *(v0 + 216));
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  return MEMORY[0x2822009F8](PairingCoordinator._setupUIStateListener(), v1, v2);
}

{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = v0[23];
  v5 = v0[16];
  v6 = swift_task_alloc();
  v0[32] = v6;
  *v6 = v0;
  v6[1] = PairingCoordinator._setupUIStateListener();
  v7 = v0[20];

  return MEMORY[0x2822003E8](v0 + 11, v5, v4, v7);
}

{
  v1 = *v0;

  v2 = *(v1 + 200);
  v3 = *(v1 + 192);

  return MEMORY[0x2822009F8](PairingCoordinator._setupUIStateListener(), v3, v2);
}

{
  if (*(v0 + 88))
  {
    v1 = *(v0 + 96);

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *(v0 + 104) = v5;
      *v4 = 136446210;
      switch(v1)
      {
        case 3:
          v6 = 0xE500000000000000;
          v7 = 0x656C64692ELL;
          break;
        case 5:
          v6 = 0xE900000000000064;
          v7 = 0x656873696E69662ELL;
          break;
        case 4:
          v6 = 0x800000024AFAF880;
          v7 = 0xD000000000000011;
          break;
        default:
          *(v0 + 56) = 0x79616C707369642ELL;
          *(v0 + 64) = 0xEA00000000006465;
          v15 = 0x6E657A6F7266;
          if (v1)
          {
            v15 = 0x46646579616C6564;
          }

          v16 = 0xE600000000000000;
          if (v1)
          {
            v16 = 0xED00006873696E69;
          }

          if (v1 == 2)
          {
            v17 = 0;
          }

          else
          {
            v17 = v15;
          }

          if (v1 == 2)
          {
            v18 = 0xE000000000000000;
          }

          else
          {
            v18 = v16;
          }

          if (v1 == 2)
          {
            v19 = 0;
          }

          else
          {
            v19 = 46;
          }

          if (v1 == 2)
          {
            v20 = 0xE000000000000000;
          }

          else
          {
            v20 = 0xE100000000000000;
          }

          *(v0 + 72) = v19;
          *(v0 + 80) = v20;

          MEMORY[0x24C236810](v17, v18);

          MEMORY[0x24C236810](*(v0 + 72), *(v0 + 80));

          v7 = *(v0 + 56);
          v6 = *(v0 + 64);
          break;
      }

      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, (v0 + 104));

      *(v4 + 4) = v21;
      _os_log_impl(&dword_24AF48000, v2, v3, "PairingCoordinator: UI state = %{public}s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
      MEMORY[0x24C237030](v5, -1, -1);
      MEMORY[0x24C237030](v4, -1, -1);
    }

    if (v1 == 5)
    {
      v25 = swift_task_alloc();
      *(v0 + 280) = v25;
      *v25 = v0;
      v25[1] = PairingCoordinator._setupUIStateListener();
      v26 = *(v0 + 120);
      v27 = *(v0 + 112);

      return PairingCoordinator.handleUIFinish()(v27, v26);
    }

    else if (v1 == 2)
    {
      *(v0 + 97) = 4;
      v22 = swift_task_alloc();
      *(v0 + 264) = v22;
      *v22 = v0;
      v22[1] = PairingCoordinator._setupUIStateListener();
      v23 = *(v0 + 120);
      v24 = *(v0 + 112);

      return PairingCoordinator.startTimeout(for:)((v0 + 97), v24, v23);
    }

    else
    {
      v28 = *(v0 + 184);
      v29 = *(v0 + 128);
      v30 = swift_task_alloc();
      *(v0 + 256) = v30;
      *v30 = v0;
      v30[1] = PairingCoordinator._setupUIStateListener();
      v31 = *(v0 + 160);

      return MEMORY[0x2822003E8](v0 + 88, v29, v28, v31);
    }
  }

  else
  {
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_24AF48000, v8, v9, "PairingCoordinator: finish listening to UI state updates", v10, 2u);
      MEMORY[0x24C237030](v10, -1, -1);
    }

    v11 = *(v0 + 120);
    v12 = *(v0 + 112);

    *(v0 + 288) = (*(v11 + 80))(v12, v11);
    v32 = (*MEMORY[0x277D08958] + MEMORY[0x277D08958]);
    v13 = swift_task_alloc();
    *(v0 + 296) = v13;
    *v13 = v0;
    v13[1] = PairingCoordinator._setupUIStateListener();

    return v32();
  }
}

{
  v2 = *v1;
  *(*v1 + 272) = v0;

  v3 = *(v2 + 192);
  v4 = *(v2 + 200);
  if (v0)
  {
    v5 = PairingCoordinator._setupUIStateListener();
  }

  else
  {
    v5 = PairingCoordinator._setupUIStateListener();
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{
  PairingCoordinator.startAccessoryPairing()(v0[14], v0[15], &unk_285E41678, &async function pointer to partial apply for closure #1 in PairingCoordinator.handleDisplayedProxCard());
  v1 = v0[23];
  v2 = v0[16];
  v3 = swift_task_alloc();
  v0[32] = v3;
  *v3 = v0;
  v3[1] = PairingCoordinator._setupUIStateListener();
  v4 = v0[20];

  return MEMORY[0x2822003E8](v0 + 11, v2, v1, v4);
}

{
  v1 = *v0;
  v2 = *v0;

  v3 = v1[23];
  v4 = v1[16];
  v5 = swift_task_alloc();
  v1[32] = v5;
  *v5 = v2;
  v5[1] = PairingCoordinator._setupUIStateListener();
  v6 = v1[20];

  return MEMORY[0x2822003E8](v1 + 11, v4, v3, v6);
}

{
  v1 = *v0;

  v2 = *(v1 + 200);
  v3 = *(v1 + 192);

  return MEMORY[0x2822009F8](PairingCoordinator._setupUIStateListener(), v3, v2);
}

{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[34];
  MEMORY[0x24C236EC0](v1);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[34];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    MEMORY[0x24C236EC0](v5);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_24AF48000, v2, v3, "Failure on starting pairing timeout: %{public}@", v6, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v7, -1, -1);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C236EB0](v5);
  }

  else
  {

    MEMORY[0x24C236EB0](v5);
  }

  PairingCoordinator.startAccessoryPairing()(v0[14], v0[15], &unk_285E41678, &async function pointer to partial apply for closure #1 in PairingCoordinator.handleDisplayedProxCard());
  v9 = v0[23];
  v10 = v0[16];
  v11 = swift_task_alloc();
  v0[32] = v11;
  *v11 = v0;
  v11[1] = PairingCoordinator._setupUIStateListener();
  v12 = v0[20];

  return MEMORY[0x2822003E8](v0 + 11, v10, v9, v12);
}

uint64_t _sytSgs5Error_pIegHdzo_AAsAB_pIegHTrzo_TR(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = _sytSgs5Error_pIegHdzo_AAsAB_pIegHTrzo_TRTQ0_;

  return v5();
}

uint64_t _sytSgs5Error_pIegHdzo_AAsAB_pIegHTrzo_TRTQ0_(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1 & 1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t implicit closure #3 in closure #1 in PairingCoordinator.setup()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = implicit closure #3 in closure #1 in PairingCoordinator.setup();

  return PairingCoordinator._setupUserSessionListener()(a2, a3);
}

uint64_t PairingCoordinator._setupUserSessionListener()(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v5 = type metadata accessor for UUID();
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = type metadata accessor for UserSessionState(0);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10FindMyBase11TransactionC_0aB7Pairing16UserSessionStateOtSgMd, &_s10FindMyBase11TransactionC_0aB7Pairing16UserSessionStateOtSgMR);
  v3[24] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy10FindMyBase11TransactionC_0aB7Pairing16UserSessionStateOtGMd, &_sScSy10FindMyBase11TransactionC_0aB7Pairing16UserSessionStateOtGMR);
  v3[25] = v6;
  v3[26] = *(v6 - 8);
  v3[27] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy10FindMyBase11TransactionC_0bC7Pairing16UserSessionStateOt_GMd, &_sScS8IteratorVy10FindMyBase11TransactionC_0bC7Pairing16UserSessionStateOt_GMR);
  v3[28] = v7;
  v3[29] = *(v7 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = *(a2 + 8);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[32] = v9;
  v3[33] = v8;

  return MEMORY[0x2822009F8](PairingCoordinator._setupUserSessionListener(), v9, v8);
}

uint64_t PairingCoordinator._setupUserSessionListener()()
{
  v1 = v0[13];
  v2 = v0[12];
  type metadata accessor for WorkItemQueue();
  (*(v1 + 72))(v2, v1);
  v3 = static WorkItemQueue.called(on:)();

  if (v3)
  {
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    swift_allocError();
    *v4 = 9;
    swift_willThrow();

    v5 = v0[1];
LABEL_16:

    return v5();
  }

  (*(v0[13] + 40))(v0[12]);
  v6 = v0[5];
  v7 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  v8 = (*(v7 + 48))(v6, v7);
  v10 = v9;
  v0[34] = v8;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  if (!v8)
  {
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.pairingCoordinator);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_24AF48000, v20, v21, "PairingCoordinator: Missing userSessionListener, pairing flow will not wait for user action", v22, 2u);
      MEMORY[0x24C237030](v22, -1, -1);
    }

    v5 = v0[1];
    goto LABEL_16;
  }

  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v0[35] = __swift_project_value_buffer(v11, static Logger.pairingCoordinator);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_24AF48000, v12, v13, "PairingCoordinator: start user session listener", v14, 2u);
    MEMORY[0x24C237030](v14, -1, -1);
  }

  ObjectType = swift_getObjectType();
  v23 = (*(v10 + 32) + **(v10 + 32));
  v16 = swift_task_alloc();
  v0[36] = v16;
  *v16 = v0;
  v16[1] = PairingCoordinator._setupUserSessionListener();
  v17 = v0[27];

  return v23(v17, ObjectType, v10);
}

{
  v1 = *v0;

  v2 = *(v1 + 264);
  v3 = *(v1 + 256);

  return MEMORY[0x2822009F8](PairingCoordinator._setupUserSessionListener(), v3, v2);
}

{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v0[37] = 0;
  v4 = v0[31];
  v5 = v0[14];
  v6 = swift_task_alloc();
  v0[38] = v6;
  *v6 = v0;
  v6[1] = PairingCoordinator._setupUserSessionListener();
  v7 = v0[28];
  v8 = v0[24];

  return MEMORY[0x2822003E8](v8, v5, v4, v7);
}

{
  v1 = *v0;

  v2 = *(v1 + 264);
  v3 = *(v1 + 256);

  return MEMORY[0x2822009F8](PairingCoordinator._setupUserSessionListener(), v3, v2);
}

{
  v53 = v0;
  v1 = *(v0 + 192);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10FindMyBase11TransactionC_0aB7Pairing16UserSessionStateOtMd, &_s10FindMyBase11TransactionC_0aB7Pairing16UserSessionStateOtMR);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_24AF48000, v3, v4, "PairingCoordinator: finish listening to user session updates", v5, 2u);
      MEMORY[0x24C237030](v5, -1, -1);
    }

    swift_unknownObjectRelease();

    v6 = *(v0 + 8);

    return v6();
  }

  v9 = *(v0 + 176);
  v8 = *(v0 + 184);

  outlined init with take of UserSessionState(v1 + *(v2 + 48), v8, type metadata accessor for UserSessionState);
  outlined init with copy of UserSessionState(v8, v9, type metadata accessor for UserSessionState);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 176);
  if (v12)
  {
    v14 = *(v0 + 168);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v52 = v16;
    *v15 = 136446210;
    outlined init with copy of UserSessionState(v13, v14, type metadata accessor for UserSessionState);
    v17 = String.init<A>(describing:)();
    v19 = v18;
    outlined destroy of UserSessionState(v13, type metadata accessor for UserSessionState);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v52);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_24AF48000, v10, v11, "PairingCoordinator: received sessionState = %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x24C237030](v16, -1, -1);
    MEMORY[0x24C237030](v15, -1, -1);
  }

  else
  {

    outlined destroy of UserSessionState(v13, type metadata accessor for UserSessionState);
  }

  outlined init with copy of UserSessionState(*(v0 + 184), *(v0 + 160), type metadata accessor for UserSessionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v22 = *(v0 + 184);
      v23 = *(v0 + 160);
      v25 = *(v0 + 128);
      v24 = *(v0 + 136);
      v26 = *(v0 + 120);
      v28 = *(v0 + 96);
      v27 = *(v0 + 104);
      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_13FindMyPairing0E17ConfigurationType_ptMd, &_s10Foundation4UUIDV_13FindMyPairing0E17ConfigurationType_ptMR) + 48);
      (*(v25 + 32))(v24, v23, v26);
      outlined init with take of Accessory((v23 + v29), v0 + 56);
      PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:)(v24, v0 + 56, v28, v27);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
      (*(v25 + 8))(v24, v26);
      v30 = v22;
    }

    else
    {
      v30 = *(v0 + 184);
    }

    outlined destroy of UserSessionState(v30, type metadata accessor for UserSessionState);
    v39 = *(v0 + 296);
LABEL_23:
    *(v0 + 296) = v39;
    v47 = *(v0 + 248);
    v48 = *(v0 + 112);
    v49 = swift_task_alloc();
    *(v0 + 304) = v49;
    *v49 = v0;
    v49[1] = PairingCoordinator._setupUserSessionListener();
    v50 = *(v0 + 224);
    v51 = *(v0 + 192);

    return MEMORY[0x2822003E8](v51, v48, v47, v50);
  }

  v31 = *(v0 + 296);
  v32 = *(v0 + 104);
  v33 = *(v0 + 96);
  (*(*(v0 + 128) + 32))(*(v0 + 144), *(v0 + 160), *(v0 + 120));
  *(v0 + 328) = 4;
  PairingCoordinator.cancelTimeout(for:)((v0 + 328), v33, v32);
  if (v31)
  {
    MEMORY[0x24C236EC0](v31);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    MEMORY[0x24C236EB0](v31);
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138543362;
      MEMORY[0x24C236EC0](v31);
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 4) = v38;
      *v37 = v38;
      _os_log_impl(&dword_24AF48000, v34, v35, "Failure on starting pairing timeout: %{public}@", v36, 0xCu);
      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v37, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C237030](v37, -1, -1);
      MEMORY[0x24C237030](v36, -1, -1);
      MEMORY[0x24C236EB0](v31);
    }

    else
    {

      MEMORY[0x24C236EB0](v31);
    }

    v43 = *(v0 + 184);
    v44 = *(v0 + 144);
    v45 = *(v0 + 120);
    v46 = *(v0 + 128);
    PairingCoordinator.handlePairingStarted(accessoryIdentifier:)(v44, *(v0 + 96), *(v0 + 104));
    (*(v46 + 8))(v44, v45);
    outlined destroy of UserSessionState(v43, type metadata accessor for UserSessionState);
    v39 = 0;
    goto LABEL_23;
  }

  *(v0 + 329) = 0;
  v40 = swift_task_alloc();
  *(v0 + 312) = v40;
  *v40 = v0;
  v40[1] = PairingCoordinator._setupUserSessionListener();
  v41 = *(v0 + 104);
  v42 = *(v0 + 96);

  return PairingCoordinator.startTimeout(for:)((v0 + 329), v42, v41);
}

{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 256);
  v4 = *(v2 + 264);
  if (v0)
  {
    v5 = PairingCoordinator._setupUserSessionListener();
  }

  else
  {
    v5 = PairingCoordinator._setupUserSessionListener();
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{
  v1 = v0[40];
  v2 = v0[23];
  v3 = v0[18];
  v4 = v0[15];
  v5 = v0[16];
  PairingCoordinator.handlePairingStarted(accessoryIdentifier:)(v3, v0[12], v0[13]);
  (*(v5 + 8))(v3, v4);
  outlined destroy of UserSessionState(v2, type metadata accessor for UserSessionState);
  v0[37] = v1;
  v6 = v0[31];
  v7 = v0[14];
  v8 = swift_task_alloc();
  v0[38] = v8;
  *v8 = v0;
  v8[1] = PairingCoordinator._setupUserSessionListener();
  v9 = v0[28];
  v10 = v0[24];

  return MEMORY[0x2822003E8](v10, v7, v6, v9);
}

{
  v1 = v0[40];
  MEMORY[0x24C236EC0](v1);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&dword_24AF48000, v2, v3, "Failure on starting pairing timeout: %{public}@", v4, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v5, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v5, -1, -1);
    MEMORY[0x24C237030](v4, -1, -1);
    MEMORY[0x24C236EB0](v1);
  }

  else
  {

    MEMORY[0x24C236EB0](v1);
  }

  v7 = v0[23];
  v8 = v0[18];
  v9 = v0[15];
  v10 = v0[16];
  PairingCoordinator.handlePairingStarted(accessoryIdentifier:)(v8, v0[12], v0[13]);
  (*(v10 + 8))(v8, v9);
  outlined destroy of UserSessionState(v7, type metadata accessor for UserSessionState);
  v0[37] = 0;
  v11 = v0[31];
  v12 = v0[14];
  v13 = swift_task_alloc();
  v0[38] = v13;
  *v13 = v0;
  v13[1] = PairingCoordinator._setupUserSessionListener();
  v14 = v0[28];
  v15 = v0[24];

  return MEMORY[0x2822003E8](v15, v12, v11, v14);
}

uint64_t Logger.pairingCoordinator.unsafeMutableAddressor()
{
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Logger.pairingCoordinator);
}

BOOL PairingCoordinator.isUserActionable.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v4(v12);
  v5 = v13;
  v6 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  if ((*(v6 + 48))(v5, v6))
  {
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    return 1;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    (v4)(v12, a1, a2);
    v8 = v13;
    v9 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v10 = (*(v9 + 40))(v8, v9);
    v7 = v10 != 0;
    if (v10)
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  return v7;
}

uint64_t closure #1 in PairingCoordinator.triggerPairingFlow()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[60] = a2;
  v3[61] = a3;
  v3[59] = a1;
  v4 = type metadata accessor for UUID();
  v3[62] = v4;
  v3[63] = *(v4 - 8);
  v3[64] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.triggerPairingFlow(), 0, 0);
}

uint64_t closure #1 in PairingCoordinator.triggerPairingFlow()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[65] = Strong;
  if (Strong)
  {
    v2 = v0[61];
    v0[66] = *(v2 + 16);
    v0[67] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0x20DC000000000000;
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[68] = v4;
    v0[69] = v3;

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.triggerPairingFlow(), v4, v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

{
  v1 = (*(v0 + 528))(*(v0 + 480), *(v0 + 488));
  *(v0 + 560) = v1;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.triggerPairingFlow(), v1, 0);
}

{
  v1 = *(v0 + 560);
  swift_beginAccess();
  v2 = *(v1 + 120);
  *(v0 + 448) = 1;
  v3 = swift_task_alloc();
  *(v3 + 16) = v0 + 448;

  *(v0 + 760) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v3, v2) & 1;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.triggerPairingFlow(), 0, 0);
}

{
  if (*(v0 + 760))
  {
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.pairingCoordinator);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_24AF48000, v2, v3, "Pairing flow already triggered!", v4, 2u);
      MEMORY[0x24C237030](v4, -1, -1);
    }

    swift_unknownObjectRelease();

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 488);
    *(v0 + 456) = 1;
    v11 = (*(v7 + 152) + **(v7 + 152));
    v8 = swift_task_alloc();
    *(v0 + 568) = v8;
    *v8 = v0;
    v8[1] = closure #1 in PairingCoordinator.triggerPairingFlow();
    v9 = *(v0 + 480);
    v10 = *(v0 + 488);

    return v11(v0 + 456, v9, v10);
  }
}

{
  v2 = *v1;
  *(*v1 + 576) = v0;

  if (v0)
  {
    v3 = closure #1 in PairingCoordinator.triggerPairingFlow();
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = v2[61];
    v2[73] = *(v6 + 40);
    v2[74] = (v6 + 40) & 0xFFFFFFFFFFFFLL | 0xEA85000000000000;
    v5 = v2[69];
    v4 = v2[68];
    v3 = closure #1 in PairingCoordinator.triggerPairingFlow();
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

{
  (*(v0 + 584))(*(v0 + 480), *(v0 + 488));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.triggerPairingFlow(), 0, 0);
}

{
  v1 = v0[10];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = (*(v2 + 64))(v1, v2);
  v5 = v4;
  v0[75] = v3;
  v0[76] = v4;
  v0[77] = swift_getObjectType();
  v0[78] = *(v5 + 16);
  v0[79] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xC23A000000000000;
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.triggerPairingFlow(), v7, v6);
}

{
  (*(v0 + 624))(*(v0 + 616), *(v0 + 608));
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.triggerPairingFlow(), 0, 0);
}

{
  v36 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  outlined init with copy of DetectedAccessory(v0 + 16, v0 + 96);
  v1 = *(v0 + 120);
  if (!v1)
  {
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    *(v0 + 656) = __swift_project_value_buffer(v13, static Logger.pairingCoordinator);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_24AF48000, v14, v15, "Trigger multi-accessory pairing flow.", v16, 2u);
      MEMORY[0x24C237030](v16, -1, -1);
    }

    v10 = *(v0 + 552);
    v11 = *(v0 + 544);
    v12 = closure #1 in PairingCoordinator.triggerPairingFlow();
    goto LABEL_13;
  }

  if (v1 == 1)
  {
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    v2 = swift_allocError();
    *v3 = 11;
    swift_willThrow();
    outlined destroy of DetectedAccessory(v0 + 16);
    *(v0 + 720) = v2;
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    *(v0 + 728) = __swift_project_value_buffer(v4, static Logger.pairingCoordinator);
    MEMORY[0x24C236EC0](v2);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    MEMORY[0x24C236EB0](v2);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138543362;
      MEMORY[0x24C236EC0](v2);
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&dword_24AF48000, v5, v6, "Failure in pairing trigger: %{public}@", v7, 0xCu);
      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C237030](v8, -1, -1);
      MEMORY[0x24C237030](v7, -1, -1);
    }

    v10 = *(v0 + 552);
    v11 = *(v0 + 544);
    v12 = closure #1 in PairingCoordinator.triggerPairingFlow();
LABEL_13:

    return MEMORY[0x2822009F8](v12, v11, v10);
  }

  outlined init with take of Accessory((v0 + 96), v0 + 296);
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.pairingCoordinator);
  outlined init with copy of PairingEligibilityInfo(v0 + 296, v0 + 336);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v21 = *(v0 + 504);
    v20 = *(v0 + 512);
    v34 = *(v0 + 496);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v35 = v23;
    *v22 = 141558275;
    *(v22 + 4) = 1752392040;
    *(v22 + 12) = 2081;
    v24 = *(v0 + 360);
    v25 = *(v0 + 368);
    __swift_project_boxed_opaque_existential_1((v0 + 336), v24);
    (*(v25 + 8))(v24, v25);
    lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    (*(v21 + 8))(v20, v34);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 336));
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v35);

    *(v22 + 14) = v29;
    _os_log_impl(&dword_24AF48000, v18, v19, "Trigger pairing flow for %{private,mask.hash}s", v22, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x24C237030](v23, -1, -1);
    MEMORY[0x24C237030](v22, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 336));
  }

  v30 = swift_task_alloc();
  *(v0 + 640) = v30;
  *v30 = v0;
  v30[1] = closure #1 in PairingCoordinator.triggerPairingFlow();
  v32 = *(v0 + 480);
  v31 = *(v0 + 488);

  return PairingCoordinator._startAccessoryPairing()(v32, v31);
}

{
  *(*v1 + 648) = v0;

  if (v0)
  {
    v2 = closure #1 in PairingCoordinator.triggerPairingFlow();
  }

  else
  {
    v2 = closure #1 in PairingCoordinator.triggerPairingFlow();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 296));
  outlined destroy of DetectedAccessory(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

{
  (*(v0 + 584))(*(v0 + 480), *(v0 + 488));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.triggerPairingFlow(), 0, 0);
}

{
  v1 = v0[20];
  v2 = v0[21];
  __swift_project_boxed_opaque_existential_1(v0 + 17, v1);
  v3 = (*(v2 + 40))(v1, v2);
  v0[83] = v3;
  if (v3)
  {
    v0[84] = v4;
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
    v5 = v0[69];
    v6 = v0[68];
    v7 = closure #1 in PairingCoordinator.triggerPairingFlow();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_24AF48000, v8, v9, "Multi-accessory pairing flow is User Actionable but is missing UI configuration!", v10, 2u);
      MEMORY[0x24C237030](v10, -1, -1);
    }

    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    v11 = swift_allocError();
    *v12 = 10;
    swift_willThrow();
    outlined destroy of DetectedAccessory((v0 + 2));
    v0[90] = v11;
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    v0[91] = __swift_project_value_buffer(v13, static Logger.pairingCoordinator);
    MEMORY[0x24C236EC0](v11);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    MEMORY[0x24C236EB0](v11);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138543362;
      MEMORY[0x24C236EC0](v11);
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&dword_24AF48000, v14, v15, "Failure in pairing trigger: %{public}@", v16, 0xCu);
      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C237030](v17, -1, -1);
      MEMORY[0x24C237030](v16, -1, -1);
    }

    v5 = v0[69];
    v6 = v0[68];
    v7 = closure #1 in PairingCoordinator.triggerPairingFlow();
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  (*(v0 + 584))(*(v0 + 480), *(v0 + 488));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.triggerPairingFlow(), 0, 0);
}

{
  v1 = v0[30];
  v2 = v0[31];
  __swift_project_boxed_opaque_existential_1(v0 + 27, v1);
  v3 = (*(v2 + 64))(v1, v2);
  v5 = v4;
  v0[85] = v3;
  ObjectType = swift_getObjectType();
  v9 = (*(v5 + 88) + **(v5 + 88));
  v7 = swift_task_alloc();
  v0[86] = v7;
  *v7 = v0;
  v7[1] = closure #1 in PairingCoordinator.triggerPairingFlow();

  return v9(v0 + 32, ObjectType, v5);
}

{
  *(*v1 + 696) = v0;

  swift_unknownObjectRelease();
  if (v0)
  {
    v2 = closure #1 in PairingCoordinator.triggerPairingFlow();
  }

  else
  {
    v2 = closure #1 in PairingCoordinator.triggerPairingFlow();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  if (*(v0 + 280))
  {
    v1 = *(v0 + 672);
    outlined init with take of Accessory((v0 + 256), v0 + 176);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 216));
    ObjectType = swift_getObjectType();
    v18 = (*(v1 + 40) + **(v1 + 40));
    v3 = swift_task_alloc();
    *(v0 + 704) = v3;
    *v3 = v0;
    v3[1] = closure #1 in PairingCoordinator.triggerPairingFlow();

    return v18(v0 + 176, ObjectType, v1);
  }

  else
  {
    swift_unknownObjectRelease();
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 256, &_s13FindMyPairing0C10UIInfoType_pSgMd, &_s13FindMyPairing0C10UIInfoType_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 216));
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_24AF48000, v5, v6, "Multi-accessory pairing flow is User Actionable but is missing UI configuration!", v7, 2u);
      MEMORY[0x24C237030](v7, -1, -1);
    }

    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    v8 = swift_allocError();
    *v9 = 10;
    swift_willThrow();
    outlined destroy of DetectedAccessory(v0 + 16);
    *(v0 + 720) = v8;
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    *(v0 + 728) = __swift_project_value_buffer(v10, static Logger.pairingCoordinator);
    MEMORY[0x24C236EC0](v8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    MEMORY[0x24C236EB0](v8);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      MEMORY[0x24C236EC0](v8);
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&dword_24AF48000, v11, v12, "Failure in pairing trigger: %{public}@", v13, 0xCu);
      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C237030](v14, -1, -1);
      MEMORY[0x24C237030](v13, -1, -1);
    }

    v16 = *(v0 + 552);
    v17 = *(v0 + 544);

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.triggerPairingFlow(), v17, v16);
  }
}

{
  *(*v1 + 712) = v0;

  if (v0)
  {
    v2 = closure #1 in PairingCoordinator.triggerPairingFlow();
  }

  else
  {
    v2 = closure #1 in PairingCoordinator.triggerPairingFlow();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
  outlined destroy of DetectedAccessory(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = (*(v0 + 528))(*(v0 + 480), *(v0 + 488));
  *(v0 + 736) = v1;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.triggerPairingFlow(), v1, 0);
}

{
  v1 = *(v0 + 736);
  swift_beginAccess();
  v2 = *(v1 + 120);
  *(v0 + 464) = 3;
  v3 = swift_task_alloc();
  *(v3 + 16) = v0 + 464;

  *(v0 + 761) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v3, v2) & 1;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.triggerPairingFlow(), 0, 0);
}

{
  v1 = *(v0 + 720);
  MEMORY[0x24C236EC0](v1);
  v2 = swift_task_alloc();
  *(v0 + 744) = v2;
  *v2 = v0;
  v2[1] = closure #1 in PairingCoordinator.triggerPairingFlow();
  v3 = *(v0 + 761);
  v4 = *(v0 + 480);
  v5 = *(v0 + 488);
  v6 = MEMORY[0x277D84F90];

  return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(v3, v1, v6, v4, v5);
}

{
  v2 = *v1;
  *(*v1 + 752) = v0;

  if (v0)
  {
    v3 = closure #1 in PairingCoordinator.triggerPairingFlow();
  }

  else
  {
    MEMORY[0x24C236EB0](*(v2 + 720));
    v3 = closure #1 in PairingCoordinator.triggerPairingFlow();
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 720);
  swift_unknownObjectRelease();
  MEMORY[0x24C236EB0](v1);

  v2 = *(v0 + 8);

  return v2();
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 37);
  outlined destroy of DetectedAccessory((v0 + 2));
  v1 = v0[81];
  v0[90] = v1;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[91] = __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in pairing trigger: %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
  }

  v8 = v0[69];
  v9 = v0[68];

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.triggerPairingFlow(), v9, v8);
}

{
  swift_unknownObjectRelease();
  outlined destroy of DetectedAccessory((v0 + 2));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 27);
  v1 = v0[87];
  v0[90] = v1;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[91] = __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in pairing trigger: %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
  }

  v8 = v0[69];
  v9 = v0[68];

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.triggerPairingFlow(), v9, v8);
}

{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);
  outlined destroy of DetectedAccessory((v0 + 2));
  v1 = v0[89];
  v0[90] = v1;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[91] = __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in pairing trigger: %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
  }

  v8 = v0[69];
  v9 = v0[68];

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.triggerPairingFlow(), v9, v8);
}

{
  v1 = v0[94];
  MEMORY[0x24C236EB0](v0[90]);
  MEMORY[0x24C236EC0](v1);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[94];
  v6 = v0[90];
  if (v4)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    MEMORY[0x24C236EC0](v5);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_24AF48000, v2, v3, "Failure in end pairing: %{public}@", v7, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v8, -1, -1);
    MEMORY[0x24C237030](v7, -1, -1);
    swift_unknownObjectRelease();
    MEMORY[0x24C236EB0](v6);
    MEMORY[0x24C236EB0](v5);
  }

  else
  {
    swift_unknownObjectRelease();
    MEMORY[0x24C236EB0](v6);

    MEMORY[0x24C236EB0](v5);
  }

  v10 = v0[1];

  return v10();
}

uint64_t partial apply for closure #1 in PairingCoordinator.triggerPairingFlow()()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = dispatch thunk of PairingValidator.ack(_:);

  return closure #1 in PairingCoordinator.triggerPairingFlow()(v4, v2, v3);
}

uint64_t PairingCoordinator._startAccessoryPairing()(uint64_t a1, uint64_t a2)
{
  v3[293] = v2;
  v3[287] = a2;
  v3[281] = a1;
  v4 = type metadata accessor for UUID();
  v3[294] = v4;
  v3[295] = *(v4 - 8);
  v3[296] = swift_task_alloc();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[297] = v6;
  v3[298] = v5;

  return MEMORY[0x2822009F8](PairingCoordinator._startAccessoryPairing(), v6, v5);
}

{
  v3[308] = v2;
  if (v2)
  {

    return MEMORY[0x282200920](v3 + 2, a2, PairingCoordinator._startAccessoryPairing(), v3 + 182);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[309] = v4;
    *v4 = v3;
    v4[1] = PairingCoordinator._startAccessoryPairing();
    v5 = v3[287];
    v6 = v3[281];

    return PairingCoordinator._preFetchMetadata()(v6, v5);
  }
}

{
  *(v3 + 2536) = v2;
  if (v2)
  {
    return MEMORY[0x282200920](v3 + 656, a2, PairingCoordinator._startAccessoryPairing(), v3 + 1936);
  }

  else
  {
    return MEMORY[0x282200930](v3 + 656, a2, PairingCoordinator._startAccessoryPairing(), v3 + 2096);
  }
}

{
  v3[318] = v2;
  if (v2)
  {
    return MEMORY[0x282200920](v3 + 82, a2, PairingCoordinator._startAccessoryPairing(), v3 + 270);
  }

  else
  {
    return MEMORY[0x2822009F8](PairingCoordinator._startAccessoryPairing(), v3[297], v3[298]);
  }
}

uint64_t PairingCoordinator._startAccessoryPairing()()
{
  v1 = v0[287];
  v2 = v0[281];
  type metadata accessor for WorkItemQueue();
  (*(v1 + 72))(v2, v1);
  v3 = static WorkItemQueue.called(on:)();

  if (v3)
  {
    v4 = v0[281];
    v5 = v0[287];
    v6 = *(v5 + 40);
    v0[299] = v6;
    v0[300] = (v5 + 40) & 0xFFFFFFFFFFFFLL | 0xEA85000000000000;
    v6(v4);
    v7 = v0[250];
    v8 = v0[251];
    __swift_project_boxed_opaque_existential_1(v0 + 247, v7);
    v9 = (*(v8 + 64))(v7, v8);
    v11 = v10;
    v0[301] = v9;
    v0[302] = v10;
    v0[303] = swift_getObjectType();
    v0[304] = *(v11 + 16);
    v0[305] = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xC23A000000000000;
    v13 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](PairingCoordinator._startAccessoryPairing(), v13, v12);
  }

  else
  {
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    swift_allocError();
    *v14 = 8;
    swift_willThrow();

    v15 = v0[1];

    return v15();
  }
}

{
  (*(v0 + 2432))(*(v0 + 2424), *(v0 + 2416));
  swift_unknownObjectRelease();
  v1 = *(v0 + 2384);
  v2 = *(v0 + 2376);

  return MEMORY[0x2822009F8](PairingCoordinator._startAccessoryPairing(), v2, v1);
}

{
  v46 = v0;
  v1 = (v0 + 1416);
  if (*(v0 + 1440) >= 2uLL)
  {
    outlined init with take of Accessory(v1, v0 + 1336);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1976));
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    *(v0 + 2448) = __swift_project_value_buffer(v5, static Logger.pairingCoordinator);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24AF48000, v6, v7, "Retrieving peripheral", v8, 2u);
      MEMORY[0x24C237030](v8, -1, -1);
    }

    v9 = *(v0 + 2344);
    v10 = *(v0 + 2296);
    v11 = *(v0 + 2248);

    outlined init with copy of PairingEligibilityInfo(v0 + 1336, v0 + 2056);
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = v10;
    v12[4] = v9;
    outlined init with take of Accessory((v0 + 2056), (v12 + 5));
    v13 = swift_allocObject();
    *(v0 + 2456) = v13;
    *(v13 + 16) = &async function pointer to partial apply for implicit closure #1 in PairingCoordinator._startAccessoryPairing();
    *(v13 + 24) = v12;
    swift_unknownObjectRetain();
    swift_asyncLet_begin();
    if (PairingCoordinator.isUserActionable.getter(v11, v10))
    {
      (*(v0 + 2392))(*(v0 + 2248), *(v0 + 2296));
      v15 = *(v0 + 1520);
      v16 = *(v0 + 1528);
      __swift_project_boxed_opaque_existential_1((v0 + 1496), v15);
      v17 = (*(v16 + 40))(v15, v16);
      *(v0 + 2488) = v17;
      if (v17)
      {
        v19 = *(v0 + 2392);
        v20 = *(v0 + 2296);
        v21 = *(v0 + 2248);
        *(v0 + 2496) = v18;
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1496));
        v19(v21, v20);
        v22 = *(v0 + 1760);
        v23 = *(v0 + 1768);
        __swift_project_boxed_opaque_existential_1((v0 + 1736), v22);
        v24 = (*(v23 + 64))(v22, v23);
        v26 = v25;
        *(v0 + 2504) = v24;
        ObjectType = swift_getObjectType();
        v43 = (*(v26 + 88) + **(v26 + 88));
        v28 = swift_task_alloc();
        *(v0 + 2512) = v28;
        *v28 = v0;
        v28[1] = PairingCoordinator._startAccessoryPairing();

        return v43(v0 + 1816, ObjectType, v26);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1496));
        outlined init with copy of PairingEligibilityInfo(v0 + 1336, v0 + 1576);
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = *(v0 + 2368);
          v32 = *(v0 + 2360);
          v44 = *(v0 + 2352);
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v45 = v34;
          *v33 = 141558275;
          *(v33 + 4) = 1752392040;
          *(v33 + 12) = 2081;
          v35 = *(v0 + 1600);
          v36 = *(v0 + 1608);
          __swift_project_boxed_opaque_existential_1((v0 + 1576), v35);
          (*(v36 + 8))(v35, v36);
          lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v37 = dispatch thunk of CustomStringConvertible.description.getter();
          v39 = v38;
          (*(v32 + 8))(v31, v44);
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1576));
          v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v45);

          *(v33 + 14) = v40;
          _os_log_impl(&dword_24AF48000, v29, v30, "Pairing flow is User Actionable but is missing UI configuration: %{private,mask.hash}s", v33, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v34);
          MEMORY[0x24C237030](v34, -1, -1);
          MEMORY[0x24C237030](v33, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1576));
        }

        lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
        *(v0 + 2576) = swift_allocError();
        *v41 = 10;
        swift_willThrow();

        return MEMORY[0x282200920](v0 + 16, v42, PairingCoordinator._startAccessoryPairing(), v0 + 1696);
      }
    }

    else
    {

      return MEMORY[0x282200930](v0 + 16, v14, PairingCoordinator._startAccessoryPairing(), v0 + 1376);
    }
  }

  else
  {
    outlined destroy of DetectedAccessory(v1);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1976));
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    swift_allocError();
    *v2 = 12;
    swift_willThrow();

    v3 = *(v0 + 8);

    return v3();
  }
}

{
  v2 = *v1;
  *(*v1 + 2480) = v0;

  if (v0)
  {
    v4 = PairingCoordinator._startAccessoryPairing();
    v5 = v2 + 16;
    v6 = v2 + 1536;
  }

  else
  {
    *(v2 + 2584) = 0u;
    v4 = PairingCoordinator._startAccessoryPairing();
    v5 = v2 + 16;
    v6 = v2 + 1616;
  }

  return MEMORY[0x282200920](v5, v3, v4, v6);
}

{
  v2 = *v1;
  *(*v1 + 2520) = v0;

  swift_unknownObjectRelease();
  v3 = *(v2 + 2384);
  v4 = *(v2 + 2376);
  if (v0)
  {
    v5 = PairingCoordinator._startAccessoryPairing();
  }

  else
  {
    v5 = PairingCoordinator._startAccessoryPairing();
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v22 = v0;
  if (*(v0 + 1840))
  {
    v19 = *(v0 + 2488);
    outlined init with take of Accessory((v0 + 1816), v0 + 1656);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1736));
    outlined init with copy of PairingEligibilityInfo(v0 + 1656, v0 + 1896);
    v1 = swift_allocObject();
    *(v1 + 16) = v19;
    outlined init with take of Accessory((v0 + 1896), v1 + 32);
    v2 = swift_allocObject();
    *(v0 + 2528) = v2;
    *(v2 + 16) = &async function pointer to partial apply for implicit closure #2 in PairingCoordinator._startAccessoryPairing();
    *(v2 + 24) = v1;
    swift_unknownObjectRetain();
    swift_asyncLet_begin();

    return MEMORY[0x282200930](v0 + 16, v3, PairingCoordinator._startAccessoryPairing(), v0 + 1856);
  }

  else
  {
    swift_unknownObjectRelease();
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 1816, &_s13FindMyPairing0C10UIInfoType_pSgMd, &_s13FindMyPairing0C10UIInfoType_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1736));
    outlined init with copy of PairingEligibilityInfo(v0 + 1336, v0 + 1576);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 2368);
      v7 = *(v0 + 2360);
      v20 = *(v0 + 2352);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v21 = v9;
      *v8 = 141558275;
      *(v8 + 4) = 1752392040;
      *(v8 + 12) = 2081;
      v10 = *(v0 + 1600);
      v11 = *(v0 + 1608);
      __swift_project_boxed_opaque_existential_1((v0 + 1576), v10);
      (*(v11 + 8))(v10, v11);
      lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      v14 = v13;
      (*(v7 + 8))(v6, v20);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1576));
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v21);

      *(v8 + 14) = v15;
      _os_log_impl(&dword_24AF48000, v4, v5, "Pairing flow is User Actionable but is missing UI configuration: %{private,mask.hash}s", v8, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x24C237030](v9, -1, -1);
      MEMORY[0x24C237030](v8, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1576));
    }

    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    *(v0 + 2576) = swift_allocError();
    *v16 = 10;
    swift_willThrow();

    return MEMORY[0x282200920](v0 + 16, v17, PairingCoordinator._startAccessoryPairing(), v0 + 1696);
  }
}

{
  v1 = (*(v0[287] + 16))(v0[281]);
  v0[319] = v1;

  return MEMORY[0x2822009F8](PairingCoordinator._startAccessoryPairing(), v1, 0);
}

{
  v1 = v0[319];
  swift_beginAccess();
  v2 = *(v1 + 120);
  v0[275] = 4;
  v3 = swift_task_alloc();
  *(v3 + 16) = v0 + 275;

  v4 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v3, v2);

  if (v4)
  {
    v6 = swift_task_alloc();
    v0[320] = v6;
    *v6 = v0;
    v6[1] = PairingCoordinator._startAccessoryPairing();
    v7 = v0[287];
    v8 = v0[281];

    return PairingCoordinator._preFetchMetadata()(v8, v7);
  }

  else
  {

    return MEMORY[0x282200920](v0 + 82, v5, PairingCoordinator._startAccessoryPairing(), v0 + 162);
  }
}

{
  v2 = *v1;
  *(*v1 + 2568) = v0;

  if (v0)
  {
    v4 = PairingCoordinator._startAccessoryPairing();
    v5 = v2 + 656;
    v6 = v2 + 2304;
  }

  else
  {
    v4 = PairingCoordinator._startAccessoryPairing();
    v5 = v2 + 656;
    v6 = v2 + 1296;
  }

  return MEMORY[0x282200920](v5, v3, v4, v6);
}

{
  return MEMORY[0x2822009F8](PairingCoordinator._startAccessoryPairing(), *(v0 + 2376), *(v0 + 2384));
}

{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1336));

  v1 = *(v0 + 8);

  return v1();
}

{
  return MEMORY[0x2822009F8](PairingCoordinator._startAccessoryPairing(), *(v0 + 2376), *(v0 + 2384));
}

{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 207);
  v0[324] = v0[316];
  v0[323] = &_ss5Error_pIegHzo_ytsAA_pIegHTrzo_TRTA_379Tu;

  return MEMORY[0x282200920](v0 + 2, v1, PairingCoordinator._startAccessoryPairing(), v0 + 202);
}

{
  return MEMORY[0x2822009F8](PairingCoordinator._startAccessoryPairing(), *(v0 + 2376), *(v0 + 2384));
}

{
  v1 = v0[324];
  v2 = v0[323];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 167);

  _s13FindMyPairing0C16CoordinatorStateOIegHn_SgWOe_0(v2, v1);

  v3 = v0[1];

  return v3();
}

{
  return MEMORY[0x2822009F8](PairingCoordinator._startAccessoryPairing(), *(v0 + 2376), *(v0 + 2384));
}

{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1336));

  v1 = *(v0 + 8);

  return v1();
}

{
  return MEMORY[0x2822009F8](PairingCoordinator._startAccessoryPairing(), *(v0 + 2376), *(v0 + 2384));
}

{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1336));

  v1 = *(v0 + 8);

  return v1();
}

{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1736));

  return MEMORY[0x282200920](v0 + 16, v1, PairingCoordinator._startAccessoryPairing(), v0 + 1776);
}

{
  return MEMORY[0x2822009F8](PairingCoordinator._startAccessoryPairing(), *(v0 + 2376), *(v0 + 2384));
}

{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1336));

  v1 = *(v0 + 8);

  return v1();
}

{
  return MEMORY[0x2822009F8](PairingCoordinator._startAccessoryPairing(), *(v0 + 2376), *(v0 + 2384));
}

{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1656));

  return MEMORY[0x282200920](v0 + 16, v1, PairingCoordinator._startAccessoryPairing(), v0 + 2016);
}

{
  return MEMORY[0x2822009F8](PairingCoordinator._startAccessoryPairing(), *(v0 + 2376), *(v0 + 2384));
}

{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1336));

  v1 = *(v0 + 8);

  return v1();
}

{
  return MEMORY[0x2822009F8](PairingCoordinator._startAccessoryPairing(), *(v0 + 2376), *(v0 + 2384));
}

{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1656));

  return MEMORY[0x282200920](v0 + 16, v1, PairingCoordinator._startAccessoryPairing(), v0 + 2208);
}

{
  return MEMORY[0x2822009F8](PairingCoordinator._startAccessoryPairing(), *(v0 + 2376), *(v0 + 2384));
}

{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1336));

  v1 = *(v0 + 8);

  return v1();
}

{
  return MEMORY[0x2822009F8](PairingCoordinator._startAccessoryPairing(), *(v0 + 2376), *(v0 + 2384));
}

{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1656));

  return MEMORY[0x282200920](v0 + 16, v1, PairingCoordinator._startAccessoryPairing(), v0 + 2256);
}

{
  return MEMORY[0x2822009F8](PairingCoordinator._startAccessoryPairing(), *(v0 + 2376), *(v0 + 2384));
}

{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1336));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 968) = v5;
  *(v6 + 960) = a5;
  *(v6 + 952) = a4;
  *(v6 + 944) = a3;
  *(v6 + 936) = a2;
  *(v6 + 106) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *(v6 + 976) = swift_task_alloc();
  *(v6 + 984) = type metadata accessor for AnalyticsEvent(0);
  *(v6 + 992) = swift_task_alloc();
  *(v6 + 1000) = *(a5 + 8);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 1008) = v9;
  *(v6 + 1016) = v8;

  return MEMORY[0x2822009F8](PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), v9, v8);
}

uint64_t PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)()
{
  v26 = v0;
  v1 = *(v0 + 960);
  v2 = *(v0 + 952);
  type metadata accessor for WorkItemQueue();
  (*(v1 + 72))(v2, v1);
  v3 = static WorkItemQueue.called(on:)();

  if (v3 & 1) != 0 || ((*(*(v0 + 960) + 80))(*(v0 + 952)), v4 = static WorkItemQueue.called(on:)(), , (v4))
  {
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 936);
    v6 = type metadata accessor for Logger();
    *(v0 + 1024) = __swift_project_value_buffer(v6, static Logger.pairingCoordinator);
    swift_bridgeObjectRetain_n();
    MEMORY[0x24C236EC0](v5);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    MEMORY[0x24C236EB0](v5);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 936);
      v10 = *(v0 + 106);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v25 = v13;
      *v11 = 136315906;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x800000024AFAF760, &v25);
      *(v11 + 12) = 1024;
      *(v11 + 14) = v10;
      *(v11 + 18) = 2114;
      if (v9)
      {
        MEMORY[0x24C236EC0](v5);
        v14 = _swift_stdlib_bridgeErrorToNSError();
        v15 = v14;
      }

      else
      {
        v14 = 0;
        v15 = 0;
      }

      v19 = *(v0 + 944);
      *(v11 + 20) = v14;
      *v12 = v15;
      *(v11 + 28) = 1024;
      v20 = *(v19 + 16);

      *(v11 + 30) = v20 == 0;

      _os_log_impl(&dword_24AF48000, v7, v8, "%s: forwardResultToUI = %{BOOL}d, error = %{public}@, beaconIds.isEmpty = %{BOOL}d", v11, 0x22u);
      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C237030](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x24C237030](v13, -1, -1);
      MEMORY[0x24C237030](v11, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v21 = *(v0 + 952);
    v22 = *(v0 + 960);
    v23 = *(v22 + 16);
    *(v0 + 1032) = v23;
    *(v0 + 1040) = (v22 + 16) & 0xFFFFFFFFFFFFLL | 0x20DC000000000000;
    v24 = v23(v21);
    *(v0 + 1048) = v24;

    return MEMORY[0x2822009F8](PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), v24, 0);
  }

  else
  {
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    swift_allocError();
    *v16 = 8;
    swift_willThrow();

    v17 = *(v0 + 8);

    return v17();
  }
}

{
  v1 = *(v0 + 1048);
  swift_beginAccess();
  v2 = *(v1 + 120);
  *(v0 + 904) = 14;
  v3 = swift_task_alloc();
  *(v3 + 16) = v0 + 904;

  *(v0 + 107) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v3, v2) & 1;

  v4 = *(v0 + 1016);
  v5 = *(v0 + 1008);

  return MEMORY[0x2822009F8](PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), v5, v4);
}

{
  (*(v0 + 1096))(0, *(v0 + 1088), *(v0 + 1080));
  swift_unknownObjectRelease();
  v1 = *(v0 + 1016);
  v2 = *(v0 + 1008);

  return MEMORY[0x2822009F8](PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), v2, v1);
}

{
  v1 = *(v0 + 968);
  v5 = *(v0 + 952);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 632));
  v2 = swift_task_alloc();
  *(v0 + 1112) = v2;
  *(v2 + 16) = v5;
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 1120) = v3;
  *v3 = v0;
  v3[1] = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);

  return MEMORY[0x2822007B8]();
}

{
  v1 = *v0;

  v2 = *(v1 + 1016);
  v3 = *(v1 + 1008);

  return MEMORY[0x2822009F8](PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), v3, v2);
}

{
  (*(v0 + 1056))(*(v0 + 952), *(v0 + 960));
  v1 = *(v0 + 616);
  v2 = *(v0 + 624);
  __swift_project_boxed_opaque_existential_1((v0 + 592), v1);
  v3 = (*(v2 + 80))(v1, v2);
  *(v0 + 1128) = v3;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 592));
  *(v0 + 888) = v3;
  v4 = swift_task_alloc();
  *(v0 + 1136) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay13FindMyPairing0C8Executor_pGMd, &_sSay13FindMyPairing0C8Executor_pGMR);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *(v0 + 1144) = v6;
  v7 = lazy protocol witness table accessor for type [PairingOperation] and conformance [A](&lazy protocol witness table cache variable for type [PairingExecutor] and conformance [A], &_sSay13FindMyPairing0C8Executor_pGMd, &_sSay13FindMyPairing0C8Executor_pGMR, MEMORY[0x277D83970]);
  *v4 = v0;
  v4[1] = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);

  return MEMORY[0x28215ED58](&async function pointer to closure #2 in PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), 0, v5, v6, v7);
}

{
  v1 = v0[144];
  if (*(v1 + 16))
  {
    v2 = *(v1 + 32);
    MEMORY[0x24C236EC0](v2);
  }

  else
  {
    v2 = 0;
  }

  v0[146] = v2;
  v3 = v0[129];
  v4 = v0[120];
  v5 = v0[119];

  v6 = v3(v5, v4);
  v0[147] = v6;

  return MEMORY[0x2822009F8](PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), v6, 0);
}

{
  v1 = v0[147];
  swift_beginAccess();
  v2 = *(v1 + 128);
  v0[148] = v2;
  outlined copy of PairingCoordinatorState(v2);

  v3 = v0[127];
  v4 = v0[126];

  return MEMORY[0x2822009F8](PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), v4, v3);
}

{
  v1 = *(v0 + 1184);
  if (v1 == 13)
  {
    v2 = *(v0 + 936);
    outlined consume of PairingCoordinatorState(0xDuLL);
    outlined consume of PairingCoordinatorState(0xDuLL);
    if (!v2)
    {
      v3 = *(v0 + 960);
      *(v0 + 672) = 0u;
      *(v0 + 688) = 0u;
      *(v0 + 704) = 0;
      v9 = (*(v3 + 176) + **(v3 + 176));
      v4 = swift_task_alloc();
      *(v0 + 1192) = v4;
      *v4 = v0;
      v4[1] = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
      v5 = *(v0 + 960);
      v6 = *(v0 + 952);

      return v9(v0 + 712, v6, v5);
    }
  }

  else
  {
    outlined consume of PairingCoordinatorState(v1);
    outlined consume of PairingCoordinatorState(0xDuLL);
  }

  v8 = (*(v0 + 1032))(*(v0 + 952), *(v0 + 960));
  *(v0 + 1208) = v8;

  return MEMORY[0x2822009F8](PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), v8, 0);
}

{
  v2 = *v1;
  *(*v1 + 1200) = v0;

  v3 = *(v2 + 1016);
  v4 = *(v2 + 1008);
  if (v0)
  {
    v5 = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
  }

  else
  {
    v5 = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 672, &_s13FindMyPairing0C8Location_pSgMd, &_s13FindMyPairing0C8Location_pSgMR);
  v1 = *(v0 + 728);
  *(v0 + 672) = *(v0 + 712);
  *(v0 + 688) = v1;
  *(v0 + 704) = *(v0 + 744);
  v2 = *(v0 + 1200);
  v3 = *(v0 + 944);
  outlined init with copy of PairingContext?(v0 + 672, v0 + 16, &_s13FindMyPairing0C8Location_pSgMd, &_s13FindMyPairing0C8Location_pSgMR);
  *(v0 + 56) = v3;
  *(v0 + 232) = &type metadata for PairingSuccessResult;
  *(v0 + 240) = &protocol witness table for PairingSuccessResult;
  v4 = swift_allocObject();
  *(v0 + 208) = v4;
  v5 = *(v0 + 32);
  v6 = *(v0 + 48);
  v4[1] = *(v0 + 16);
  v4[2] = v5;
  v4[3] = v6;

  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 672, &_s13FindMyPairing0C8Location_pSgMd, &_s13FindMyPairing0C8Location_pSgMR);
  *(v0 + 248) = 0;
  *(v0 + 1304) = v2;
  if (!*(v0 + 1168))
  {
    outlined init with copy of PairingContext?(v0 + 208, v0 + 64, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR);
    v7 = *(v0 + 104);
    if (v7 == 255)
    {
      v12 = &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd;
      v13 = &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR;
    }

    else
    {
      if (v7)
      {
        v8 = *(v0 + 992);
        v9 = *(v0 + 64);
        (*(*(v0 + 960) + 32))(*(v0 + 952));
        v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_p5error_10Foundation4UUIDVSg10identifiertMd, &_ss5Error_p5error_10Foundation4UUIDVSg10identifiertMR) + 48);
        *v8 = v9;
        v11 = type metadata accessor for UUID();
        (*(*(v11 - 8) + 56))(&v8[v10], 1, 1, v11);
        swift_storeEnumTagMultiPayload();
        MEMORY[0x24C236EC0](v9);
        AsyncStreamProvider.yield(value:transaction:)();

        MEMORY[0x24C236EB0](v9);
        outlined destroy of UserSessionState(v8, type metadata accessor for AnalyticsEvent);
        goto LABEL_8;
      }

      v12 = &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGMd;
      v13 = &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGMR;
    }

    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 64, v12, v13);
  }

LABEL_8:
  (*(v0 + 1056))(*(v0 + 952), *(v0 + 960));
  v14 = *(v0 + 416);
  v15 = *(v0 + 424);
  __swift_project_boxed_opaque_existential_1((v0 + 392), v14);
  v16 = (*(v15 + 56))(v14, v15);
  *(v0 + 1312) = v16;
  if (v16)
  {
    v18 = *(v0 + 1056);
    v19 = *(v0 + 960);
    v20 = *(v0 + 952);
    *(v0 + 1320) = v17;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 392));
    v18(v20, v19);
    v21 = *(v0 + 376);
    v22 = *(v0 + 384);
    __swift_project_boxed_opaque_existential_1((v0 + 352), v21);
    v23 = (*(v22 + 64))(v21, v22);
    v25 = v24;
    *(v0 + 1328) = v23;
    *(v0 + 1336) = v24;
    *(v0 + 1344) = swift_getObjectType();
    *(v0 + 1352) = *(v25 + 16);
    *(v0 + 1360) = (v25 + 16) & 0xFFFFFFFFFFFFLL | 0xC23A000000000000;
    v27 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), v27, v26);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 392));
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_24AF48000, v28, v29, "Finished pairing but no pairingResultListener to notify", v30, 2u);
      MEMORY[0x24C237030](v30, -1, -1);
    }

    v31 = swift_task_alloc();
    *(v0 + 1496) = v31;
    *v31 = v0;
    v31[1] = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
    v32 = *(v0 + 960);
    v33 = *(v0 + 952);

    return PairingCoordinator._cleanUp()(v33, v32);
  }
}

{
  v1 = v0[151];
  swift_beginAccess();
  v2 = *(v1 + 128);
  if (v2 == 15)
  {
    outlined consume of PairingCoordinatorState(0xFuLL);
    outlined consume of PairingCoordinatorState(0xFuLL);

    outlined consume of PairingCoordinatorState(0xFuLL);
    v3 = v0[127];
    v4 = v0[126];
    v5 = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
  }

  else
  {
    outlined copy of PairingCoordinatorState(v2);
    outlined copy of PairingCoordinatorState(v2);
    outlined consume of PairingCoordinatorState(v2);
    outlined consume of PairingCoordinatorState(0xFuLL);

    outlined consume of PairingCoordinatorState(v2);
    v3 = v0[127];
    v4 = v0[126];
    v5 = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  *(v0 + 208) = 0u;
  *(v0 + 240) = 0;
  *(v0 + 224) = 0u;
  *(v0 + 248) = -1;
  *(v0 + 1304) = *(v0 + 1160);
  if (!*(v0 + 1168))
  {
    outlined init with copy of PairingContext?(v0 + 208, v0 + 64, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR);
    v1 = *(v0 + 104);
    if (v1 == 255)
    {
      v6 = &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd;
      v7 = &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR;
    }

    else
    {
      if (v1)
      {
        v2 = *(v0 + 992);
        v3 = *(v0 + 64);
        (*(*(v0 + 960) + 32))(*(v0 + 952));
        v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_p5error_10Foundation4UUIDVSg10identifiertMd, &_ss5Error_p5error_10Foundation4UUIDVSg10identifiertMR) + 48);
        *v2 = v3;
        v5 = type metadata accessor for UUID();
        (*(*(v5 - 8) + 56))(&v2[v4], 1, 1, v5);
        swift_storeEnumTagMultiPayload();
        MEMORY[0x24C236EC0](v3);
        AsyncStreamProvider.yield(value:transaction:)();

        MEMORY[0x24C236EB0](v3);
        outlined destroy of UserSessionState(v2, type metadata accessor for AnalyticsEvent);
        goto LABEL_8;
      }

      v6 = &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGMd;
      v7 = &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGMR;
    }

    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 64, v6, v7);
  }

LABEL_8:
  (*(v0 + 1056))(*(v0 + 952), *(v0 + 960));
  v8 = *(v0 + 416);
  v9 = *(v0 + 424);
  __swift_project_boxed_opaque_existential_1((v0 + 392), v8);
  v10 = (*(v9 + 56))(v8, v9);
  *(v0 + 1312) = v10;
  if (v10)
  {
    v12 = *(v0 + 1056);
    v13 = *(v0 + 960);
    v14 = *(v0 + 952);
    *(v0 + 1320) = v11;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 392));
    v12(v14, v13);
    v15 = *(v0 + 376);
    v16 = *(v0 + 384);
    __swift_project_boxed_opaque_existential_1((v0 + 352), v15);
    v17 = (*(v16 + 64))(v15, v16);
    v19 = v18;
    *(v0 + 1328) = v17;
    *(v0 + 1336) = v18;
    *(v0 + 1344) = swift_getObjectType();
    *(v0 + 1352) = *(v19 + 16);
    *(v0 + 1360) = (v19 + 16) & 0xFFFFFFFFFFFFLL | 0xC23A000000000000;
    v21 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), v21, v20);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 392));
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_24AF48000, v22, v23, "Finished pairing but no pairingResultListener to notify", v24, 2u);
      MEMORY[0x24C237030](v24, -1, -1);
    }

    v25 = swift_task_alloc();
    *(v0 + 1496) = v25;
    *v25 = v0;
    v25[1] = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
    v26 = *(v0 + 960);
    v27 = *(v0 + 952);

    return PairingCoordinator._cleanUp()(v27, v26);
  }
}

{
  v1 = *(v0 + 936);
  if (v1)
  {
    v2 = *(v0 + 936);
    v3 = v2;
LABEL_5:
    MEMORY[0x24C236EC0](v1);
    *(v0 + 1232) = v3;
    MEMORY[0x24C236EC0](v2);
    *(v0 + 872) = v2;
    v4 = swift_dynamicCast();
    v5 = *(v0 + 960);
    if (v4)
    {
      v6 = *(v0 + 105) == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      *(v0 + 920) = v3;
      v7 = *(v5 + 152);
      MEMORY[0x24C236EC0](v3);
      v17 = (v7 + *v7);
      v8 = swift_task_alloc();
      *(v0 + 1264) = v8;
      *v8 = v0;
      v8[1] = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
      v12 = *(v0 + 960);
      v13 = *(v0 + 952);
      v14 = v0 + 920;
    }

    else
    {
      v18 = *(v0 + 960);
      *(v0 + 1240) = lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
      v9 = swift_allocError();
      *v10 = 4;
      *(v0 + 928) = v9;
      v17 = (*(v18 + 152) + **(v18 + 152));
      v11 = swift_task_alloc();
      *(v0 + 1248) = v11;
      *v11 = v0;
      v11[1] = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
      v12 = *(v0 + 960);
      v13 = *(v0 + 952);
      v14 = v0 + 928;
    }

    return v17(v14, v13, v12);
  }

  v2 = *(v0 + 1168);
  if (v2)
  {
    MEMORY[0x24C236EC0](*(v0 + 1168));
    v3 = *(v0 + 1168);
    v1 = *(v0 + 936);
    goto LABEL_5;
  }

  v16 = (*(v0 + 1032))(*(v0 + 952), *(v0 + 960));
  *(v0 + 1216) = v16;

  return MEMORY[0x2822009F8](PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), v16, 0);
}

{
  v1 = v0[152];
  swift_beginAccess();
  v2 = *(v1 + 120);
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  while (v3)
  {
    v5 = *v4++;
    v0[153] = v5;
    --v3;
    if (v5 >= 0x11)
    {
      MEMORY[0x24C236EC0]();

      v6 = v0[127];
      v7 = v0[126];
      v8 = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
      goto LABEL_6;
    }
  }

  v6 = v0[127];
  v7 = v0[126];
  v8 = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
LABEL_6:

  return MEMORY[0x2822009F8](v8, v7, v6);
}

{
  v1 = *(v0 + 1224);
  *(v0 + 1232) = v1;
  MEMORY[0x24C236EC0](v1);
  *(v0 + 872) = v1;
  v2 = swift_dynamicCast();
  v3 = *(v0 + 960);
  if (v2)
  {
    v4 = *(v0 + 105) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    *(v0 + 920) = v1;
    v5 = *(v3 + 152);
    MEMORY[0x24C236EC0](v1);
    v14 = (v5 + *v5);
    v6 = swift_task_alloc();
    *(v0 + 1264) = v6;
    *v6 = v0;
    v6[1] = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
    v10 = *(v0 + 960);
    v11 = *(v0 + 952);
    v12 = v0 + 920;
  }

  else
  {
    v15 = *(v0 + 960);
    *(v0 + 1240) = lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    v7 = swift_allocError();
    *v8 = 4;
    *(v0 + 928) = v7;
    v14 = (*(v15 + 152) + **(v15 + 152));
    v9 = swift_task_alloc();
    *(v0 + 1248) = v9;
    *v9 = v0;
    v9[1] = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
    v10 = *(v0 + 960);
    v11 = *(v0 + 952);
    v12 = v0 + 928;
  }

  return v14(v12, v11, v10);
}

{
  v2 = *v1;
  v2[157] = v0;

  outlined consume of PairingCoordinatorState(v2[116]);
  v3 = v2[127];
  v4 = v2[126];
  if (v0)
  {
    v5 = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
  }

  else
  {
    v5 = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = *(v0 + 1232);
  v2 = swift_allocError();
  *v3 = 4;
  MEMORY[0x24C236EB0](v1);
  *(v0 + 208) = v2;
  v4 = *(v0 + 1256);
  *(v0 + 248) = 1;
  *(v0 + 1304) = v4;
  if (!*(v0 + 1168))
  {
    outlined init with copy of PairingContext?(v0 + 208, v0 + 64, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR);
    v5 = *(v0 + 104);
    if (v5 == 255)
    {
      v10 = &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd;
      v11 = &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR;
    }

    else
    {
      if (v5)
      {
        v6 = *(v0 + 992);
        v7 = *(v0 + 64);
        (*(*(v0 + 960) + 32))(*(v0 + 952));
        v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_p5error_10Foundation4UUIDVSg10identifiertMd, &_ss5Error_p5error_10Foundation4UUIDVSg10identifiertMR) + 48);
        *v6 = v7;
        v9 = type metadata accessor for UUID();
        (*(*(v9 - 8) + 56))(&v6[v8], 1, 1, v9);
        swift_storeEnumTagMultiPayload();
        MEMORY[0x24C236EC0](v7);
        AsyncStreamProvider.yield(value:transaction:)();

        MEMORY[0x24C236EB0](v7);
        outlined destroy of UserSessionState(v6, type metadata accessor for AnalyticsEvent);
        goto LABEL_8;
      }

      v10 = &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGMd;
      v11 = &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGMR;
    }

    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 64, v10, v11);
  }

LABEL_8:
  (*(v0 + 1056))(*(v0 + 952), *(v0 + 960));
  v12 = *(v0 + 416);
  v13 = *(v0 + 424);
  __swift_project_boxed_opaque_existential_1((v0 + 392), v12);
  v14 = (*(v13 + 56))(v12, v13);
  *(v0 + 1312) = v14;
  if (v14)
  {
    v16 = *(v0 + 1056);
    v17 = *(v0 + 960);
    v18 = *(v0 + 952);
    *(v0 + 1320) = v15;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 392));
    v16(v18, v17);
    v19 = *(v0 + 376);
    v20 = *(v0 + 384);
    __swift_project_boxed_opaque_existential_1((v0 + 352), v19);
    v21 = (*(v20 + 64))(v19, v20);
    v23 = v22;
    *(v0 + 1328) = v21;
    *(v0 + 1336) = v22;
    *(v0 + 1344) = swift_getObjectType();
    *(v0 + 1352) = *(v23 + 16);
    *(v0 + 1360) = (v23 + 16) & 0xFFFFFFFFFFFFLL | 0xC23A000000000000;
    v25 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), v25, v24);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 392));
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_24AF48000, v26, v27, "Finished pairing but no pairingResultListener to notify", v28, 2u);
      MEMORY[0x24C237030](v28, -1, -1);
    }

    v29 = swift_task_alloc();
    *(v0 + 1496) = v29;
    *v29 = v0;
    v29[1] = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
    v30 = *(v0 + 960);
    v31 = *(v0 + 952);

    return PairingCoordinator._cleanUp()(v31, v30);
  }
}

{
  v2 = *v1;
  v2[159] = v0;

  outlined consume of PairingCoordinatorState(v2[115]);
  v3 = v2[127];
  v4 = v2[126];
  if (v0)
  {
    v5 = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
  }

  else
  {
    v5 = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  *(v0 + 208) = *(v0 + 1232);
  v1 = *(v0 + 1272);
  *(v0 + 248) = 1;
  *(v0 + 1304) = v1;
  if (!*(v0 + 1168))
  {
    outlined init with copy of PairingContext?(v0 + 208, v0 + 64, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR);
    v2 = *(v0 + 104);
    if (v2 == 255)
    {
      v7 = &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd;
      v8 = &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR;
    }

    else
    {
      if (v2)
      {
        v3 = *(v0 + 992);
        v4 = *(v0 + 64);
        (*(*(v0 + 960) + 32))(*(v0 + 952));
        v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_p5error_10Foundation4UUIDVSg10identifiertMd, &_ss5Error_p5error_10Foundation4UUIDVSg10identifiertMR) + 48);
        *v3 = v4;
        v6 = type metadata accessor for UUID();
        (*(*(v6 - 8) + 56))(&v3[v5], 1, 1, v6);
        swift_storeEnumTagMultiPayload();
        MEMORY[0x24C236EC0](v4);
        AsyncStreamProvider.yield(value:transaction:)();

        MEMORY[0x24C236EB0](v4);
        outlined destroy of UserSessionState(v3, type metadata accessor for AnalyticsEvent);
        goto LABEL_8;
      }

      v7 = &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGMd;
      v8 = &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGMR;
    }

    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 64, v7, v8);
  }

LABEL_8:
  (*(v0 + 1056))(*(v0 + 952), *(v0 + 960));
  v9 = *(v0 + 416);
  v10 = *(v0 + 424);
  __swift_project_boxed_opaque_existential_1((v0 + 392), v9);
  v11 = (*(v10 + 56))(v9, v10);
  *(v0 + 1312) = v11;
  if (v11)
  {
    v13 = *(v0 + 1056);
    v14 = *(v0 + 960);
    v15 = *(v0 + 952);
    *(v0 + 1320) = v12;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 392));
    v13(v15, v14);
    v16 = *(v0 + 376);
    v17 = *(v0 + 384);
    __swift_project_boxed_opaque_existential_1((v0 + 352), v16);
    v18 = (*(v17 + 64))(v16, v17);
    v20 = v19;
    *(v0 + 1328) = v18;
    *(v0 + 1336) = v19;
    *(v0 + 1344) = swift_getObjectType();
    *(v0 + 1352) = *(v20 + 16);
    *(v0 + 1360) = (v20 + 16) & 0xFFFFFFFFFFFFLL | 0xC23A000000000000;
    v22 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), v22, v21);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 392));
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_24AF48000, v23, v24, "Finished pairing but no pairingResultListener to notify", v25, 2u);
      MEMORY[0x24C237030](v25, -1, -1);
    }

    v26 = swift_task_alloc();
    *(v0 + 1496) = v26;
    *v26 = v0;
    v26[1] = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
    v27 = *(v0 + 960);
    v28 = *(v0 + 952);

    return PairingCoordinator._cleanUp()(v28, v27);
  }
}

{
  v8 = v0[120];
  v0[160] = lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
  v1 = swift_allocError();
  *v2 = 5;
  v0[110] = v1;
  v7 = (*(v8 + 152) + **(v8 + 152));
  v3 = swift_task_alloc();
  v0[161] = v3;
  *v3 = v0;
  v3[1] = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
  v4 = v0[120];
  v5 = v0[119];

  return v7(v0 + 110, v5, v4);
}

{
  v2 = *v1;
  v2[162] = v0;

  outlined consume of PairingCoordinatorState(v2[110]);
  v3 = v2[127];
  v4 = v2[126];
  if (v0)
  {
    v5 = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
  }

  else
  {
    v5 = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = swift_allocError();
  *v2 = 5;
  *(v0 + 208) = v1;
  v3 = *(v0 + 1296);
  *(v0 + 248) = 1;
  *(v0 + 1304) = v3;
  if (!*(v0 + 1168))
  {
    outlined init with copy of PairingContext?(v0 + 208, v0 + 64, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR);
    v4 = *(v0 + 104);
    if (v4 == 255)
    {
      v9 = &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd;
      v10 = &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR;
    }

    else
    {
      if (v4)
      {
        v5 = *(v0 + 992);
        v6 = *(v0 + 64);
        (*(*(v0 + 960) + 32))(*(v0 + 952));
        v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_p5error_10Foundation4UUIDVSg10identifiertMd, &_ss5Error_p5error_10Foundation4UUIDVSg10identifiertMR) + 48);
        *v5 = v6;
        v8 = type metadata accessor for UUID();
        (*(*(v8 - 8) + 56))(&v5[v7], 1, 1, v8);
        swift_storeEnumTagMultiPayload();
        MEMORY[0x24C236EC0](v6);
        AsyncStreamProvider.yield(value:transaction:)();

        MEMORY[0x24C236EB0](v6);
        outlined destroy of UserSessionState(v5, type metadata accessor for AnalyticsEvent);
        goto LABEL_8;
      }

      v9 = &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGMd;
      v10 = &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGMR;
    }

    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 64, v9, v10);
  }

LABEL_8:
  (*(v0 + 1056))(*(v0 + 952), *(v0 + 960));
  v11 = *(v0 + 416);
  v12 = *(v0 + 424);
  __swift_project_boxed_opaque_existential_1((v0 + 392), v11);
  v13 = (*(v12 + 56))(v11, v12);
  *(v0 + 1312) = v13;
  if (v13)
  {
    v15 = *(v0 + 1056);
    v16 = *(v0 + 960);
    v17 = *(v0 + 952);
    *(v0 + 1320) = v14;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 392));
    v15(v17, v16);
    v18 = *(v0 + 376);
    v19 = *(v0 + 384);
    __swift_project_boxed_opaque_existential_1((v0 + 352), v18);
    v20 = (*(v19 + 64))(v18, v19);
    v22 = v21;
    *(v0 + 1328) = v20;
    *(v0 + 1336) = v21;
    *(v0 + 1344) = swift_getObjectType();
    *(v0 + 1352) = *(v22 + 16);
    *(v0 + 1360) = (v22 + 16) & 0xFFFFFFFFFFFFLL | 0xC23A000000000000;
    v24 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), v24, v23);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 392));
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_24AF48000, v25, v26, "Finished pairing but no pairingResultListener to notify", v27, 2u);
      MEMORY[0x24C237030](v27, -1, -1);
    }

    v28 = swift_task_alloc();
    *(v0 + 1496) = v28;
    *v28 = v0;
    v28[1] = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
    v29 = *(v0 + 960);
    v30 = *(v0 + 952);

    return PairingCoordinator._cleanUp()(v30, v29);
  }
}

{
  (*(v0 + 1352))(*(v0 + 1344), *(v0 + 1336));
  swift_unknownObjectRelease();
  v1 = *(v0 + 1016);
  v2 = *(v0 + 1008);

  return MEMORY[0x2822009F8](PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), v2, v1);
}

{
  *(v0 + 544) = *(v0 + 504);
  v1 = *(v0 + 488);
  *(v0 + 512) = *(v0 + 472);
  *(v0 + 528) = v1;
  if (*(v0 + 536) >= 2uLL)
  {
    outlined init with take of Accessory((v0 + 512), v0 + 432);
  }

  else
  {
    *(v0 + 464) = 0;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    outlined destroy of DetectedAccessory(v0 + 512);
  }

  v2 = *(v0 + 456);
  v3 = *(v0 + 976);
  if (v2)
  {
    v4 = *(v0 + 464);
    __swift_project_boxed_opaque_existential_1((v0 + 432), *(v0 + 456));
    (*(v4 + 8))(v2, v4);
    v5 = type metadata accessor for UUID();
    (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 432));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 352));
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 352));
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 432, &_s13FindMyPairing9Accessory_pSgMd, &_s13FindMyPairing9Accessory_pSgMR);
    v6 = type metadata accessor for UUID();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  }

  (*(v0 + 1056))(*(v0 + 952), *(v0 + 960));
  v7 = *(v0 + 576);
  v8 = *(v0 + 584);
  __swift_project_boxed_opaque_existential_1((v0 + 552), v7);
  v9 = (*(v8 + 48))(v7, v8);
  *(v0 + 1368) = v9;
  if (v9)
  {
    v11 = *(v0 + 1032);
    v12 = *(v0 + 960);
    v13 = *(v0 + 952);
    *(v0 + 1376) = v10;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 552));
    v14 = v11(v13, v12);
    *(v0 + 1384) = v14;
    v15 = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
    v16 = 0;
LABEL_13:

    return MEMORY[0x2822009F8](v15, v14, v16);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 552));
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_24AF48000, v17, v18, "Finished pairing, isUserActionable: false", v19, 2u);
    MEMORY[0x24C237030](v19, -1, -1);
  }

  outlined init with copy of PairingContext?(v0 + 208, v0 + 256, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR);
  if (*(v0 + 296) != 255)
  {
    v20 = *(v0 + 1320);
    v21 = *(v0 + 272);
    *(v0 + 304) = *(v0 + 256);
    *(v0 + 320) = v21;
    *(v0 + 329) = *(v0 + 281);
    *(v0 + 1456) = swift_getObjectType();
    *(v0 + 1464) = *(v20 + 16);
    *(v0 + 1472) = (v20 + 16) & 0xFFFFFFFFFFFFLL | 0xF759000000000000;
    v22 = dispatch thunk of Actor.unownedExecutor.getter();
    v24 = v23;
    v15 = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
    v14 = v22;
    v16 = v24;
    goto LABEL_13;
  }

  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 256, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR);
  v25 = swift_task_alloc();
  *(v0 + 1480) = v25;
  *v25 = v0;
  v25[1] = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
  v26 = *(v0 + 960);
  v27 = *(v0 + 952);

  return PairingCoordinator._cleanUp()(v27, v26);
}

{
  v1 = *(v0 + 1384);
  swift_beginAccess();
  v2 = *(v1 + 120);
  *(v0 + 896) = 3;
  v3 = swift_task_alloc();
  *(v3 + 16) = v0 + 896;

  *(v0 + 108) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v3, v2) & 1;

  v4 = *(v0 + 1016);
  v5 = *(v0 + 1008);

  return MEMORY[0x2822009F8](PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), v5, v4);
}

{
  UserSessionListener._pairingFinish()();
  v1 = swift_task_alloc();
  v0[175] = v1;
  *v1 = v0;
  v1[1] = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
  v2 = v0[120];
  v3 = v0[119];

  return PairingCoordinator._cleanUp()(v3, v2);
}

{
  v2 = *v1;
  *(*v1 + 1408) = v0;

  v3 = *(v2 + 1016);
  v4 = *(v2 + 1008);
  if (v0)
  {
    v5 = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
  }

  else
  {
    v5 = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  if (*(v0 + 106) == 1)
  {
    outlined init with copy of PairingContext?(v0 + 208, v0 + 112, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR);
    if (*(v0 + 152) != 255)
    {
      v1 = *(v0 + 960);
      v2 = *(v0 + 128);
      *(v0 + 160) = *(v0 + 112);
      *(v0 + 176) = v2;
      *(v0 + 185) = *(v0 + 137);
      *(v0 + 912) = 14;
      v11 = (*(v1 + 152) + **(v1 + 152));
      v3 = swift_task_alloc();
      *(v0 + 1416) = v3;
      *v3 = v0;
      v3[1] = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
      v4 = *(v0 + 960);
      v5 = *(v0 + 952);

      return v11(v0 + 912, v5, v4);
    }

    v9 = *(v0 + 1168);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(*(v0 + 976), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    MEMORY[0x24C236EB0](v9);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 208, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR);
    v8 = v0 + 112;
  }

  else
  {
    v7 = *(v0 + 1168);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(*(v0 + 976), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    MEMORY[0x24C236EB0](v7);
    v8 = v0 + 208;
  }

  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v8, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR);

  v10 = *(v0 + 8);

  return v10();
}

{
  v2 = *v1;
  *(*v1 + 1424) = v0;

  if (v0)
  {
    v3 = v2[127];
    v4 = v2[126];
    v5 = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
  }

  else
  {
    v6 = v2[165];
    v2[179] = swift_getObjectType();
    v2[180] = *(v6 + 16);
    v2[181] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xF759000000000000;
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
    v5 = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
    v4 = v7;
    v3 = v9;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  (*(v0 + 1440))(*(v0 + 976), v0 + 160, *(v0 + 1432), *(v0 + 1320));
  v1 = *(v0 + 1016);
  v2 = *(v0 + 1008);

  return MEMORY[0x2822009F8](PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), v2, v1);
}

{
  v1 = v0[146];
  v2 = v0[122];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  MEMORY[0x24C236EB0](v1);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)((v0 + 20), &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGMd, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGMR);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v2, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)((v0 + 26), &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR);

  v3 = v0[1];

  return v3();
}

{
  (*(v0 + 1464))(*(v0 + 976), v0 + 304, *(v0 + 1456), *(v0 + 1320));
  v1 = *(v0 + 1016);
  v2 = *(v0 + 1008);

  return MEMORY[0x2822009F8](PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), v2, v1);
}

{
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)((v0 + 38), &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGMd, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGMR);
  v1 = swift_task_alloc();
  v0[185] = v1;
  *v1 = v0;
  v1[1] = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
  v2 = v0[120];
  v3 = v0[119];

  return PairingCoordinator._cleanUp()(v3, v2);
}

{
  v2 = *v1;
  *(*v1 + 1488) = v0;

  v3 = *(v2 + 1016);
  v4 = *(v2 + 1008);
  if (v0)
  {
    v5 = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
  }

  else
  {
    v5 = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = v0[146];
  v2 = v0[122];
  swift_unknownObjectRelease();
  MEMORY[0x24C236EB0](v1);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v2, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)((v0 + 26), &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR);

  v3 = v0[1];

  return v3();
}

{
  v2 = *v1;
  *(*v1 + 1504) = v0;

  v3 = *(v2 + 1016);
  v4 = *(v2 + 1008);
  if (v0)
  {
    v5 = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
  }

  else
  {
    v5 = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  MEMORY[0x24C236EB0](*(v0 + 1168));
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 208, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR);

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 1200);
  MEMORY[0x24C236EC0](v1);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 1200);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    MEMORY[0x24C236EC0](v5);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_24AF48000, v2, v3, "Failed to get location: %{public}@", v6, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v7, -1, -1);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C236EB0](v5);
  }

  else
  {

    MEMORY[0x24C236EB0](v5);
  }

  v9 = *(v0 + 944);
  outlined init with copy of PairingContext?(v0 + 672, v0 + 16, &_s13FindMyPairing0C8Location_pSgMd, &_s13FindMyPairing0C8Location_pSgMR);
  *(v0 + 56) = v9;
  *(v0 + 232) = &type metadata for PairingSuccessResult;
  *(v0 + 240) = &protocol witness table for PairingSuccessResult;
  v10 = swift_allocObject();
  *(v0 + 208) = v10;
  v11 = *(v0 + 32);
  v10[1] = *(v0 + 16);
  v10[2] = v11;
  v10[3] = *(v0 + 48);

  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 672, &_s13FindMyPairing0C8Location_pSgMd, &_s13FindMyPairing0C8Location_pSgMR);
  *(v0 + 248) = 0;
  *(v0 + 1304) = 0;
  if (!*(v0 + 1168))
  {
    outlined init with copy of PairingContext?(v0 + 208, v0 + 64, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR);
    v12 = *(v0 + 104);
    if (v12 == 255)
    {
      v17 = &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd;
      v18 = &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR;
    }

    else
    {
      if (v12)
      {
        v13 = *(v0 + 992);
        v14 = *(v0 + 64);
        (*(*(v0 + 960) + 32))(*(v0 + 952));
        v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_p5error_10Foundation4UUIDVSg10identifiertMd, &_ss5Error_p5error_10Foundation4UUIDVSg10identifiertMR) + 48);
        *v13 = v14;
        v16 = type metadata accessor for UUID();
        (*(*(v16 - 8) + 56))(&v13[v15], 1, 1, v16);
        swift_storeEnumTagMultiPayload();
        MEMORY[0x24C236EC0](v14);
        AsyncStreamProvider.yield(value:transaction:)();

        MEMORY[0x24C236EB0](v14);
        outlined destroy of UserSessionState(v13, type metadata accessor for AnalyticsEvent);
        goto LABEL_11;
      }

      v17 = &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGMd;
      v18 = &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGMR;
    }

    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 64, v17, v18);
  }

LABEL_11:
  (*(v0 + 1056))(*(v0 + 952), *(v0 + 960));
  v19 = *(v0 + 416);
  v20 = *(v0 + 424);
  __swift_project_boxed_opaque_existential_1((v0 + 392), v19);
  v21 = (*(v20 + 56))(v19, v20);
  *(v0 + 1312) = v21;
  if (v21)
  {
    v23 = *(v0 + 1056);
    v24 = *(v0 + 960);
    v25 = *(v0 + 952);
    *(v0 + 1320) = v22;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 392));
    v23(v25, v24);
    v26 = *(v0 + 376);
    v27 = *(v0 + 384);
    __swift_project_boxed_opaque_existential_1((v0 + 352), v26);
    v28 = (*(v27 + 64))(v26, v27);
    v30 = v29;
    *(v0 + 1328) = v28;
    *(v0 + 1336) = v29;
    *(v0 + 1344) = swift_getObjectType();
    *(v0 + 1352) = *(v30 + 16);
    *(v0 + 1360) = (v30 + 16) & 0xFFFFFFFFFFFFLL | 0xC23A000000000000;
    v32 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), v32, v31);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 392));
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_24AF48000, v33, v34, "Finished pairing but no pairingResultListener to notify", v35, 2u);
      MEMORY[0x24C237030](v35, -1, -1);
    }

    v36 = swift_task_alloc();
    *(v0 + 1496) = v36;
    *v36 = v0;
    v36[1] = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
    v37 = *(v0 + 960);
    v38 = *(v0 + 952);

    return PairingCoordinator._cleanUp()(v38, v37);
  }
}

{
  v1 = v0[146];
  MEMORY[0x24C236EB0](v0[154]);
  MEMORY[0x24C236EB0](v1);

  v2 = v0[1];

  return v2();
}

{
  v1 = v0[154];
  MEMORY[0x24C236EB0](v0[146]);
  MEMORY[0x24C236EB0](v1);

  v2 = v0[1];

  return v2();
}

{
  MEMORY[0x24C236EB0](0);

  v1 = *(v0 + 8);

  return v1();
}

{
  MEMORY[0x24C236EB0](*(v0 + 1168));
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 208, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR);

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[146];
  v2 = v0[122];
  swift_unknownObjectRelease();
  MEMORY[0x24C236EB0](v1);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v2, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)((v0 + 26), &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR);

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[146];
  v2 = v0[122];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  MEMORY[0x24C236EB0](v1);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v2, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)((v0 + 26), &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR);

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[146];
  v2 = v0[122];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  MEMORY[0x24C236EB0](v1);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)((v0 + 20), &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGMd, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGMR);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v2, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)((v0 + 26), &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR);

  v3 = v0[1];

  return v3();
}

uint64_t PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(uint64_t a1)
{
  if (*(v1 + 107))
  {
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_24AF48000, v2, v3, "Results were already forwarded to UI, can't end pairing again.", v4, 2u);
      MEMORY[0x24C237030](v4, -1, -1);
    }

    v5 = *(v1 + 8);

    return v5();
  }

  else
  {
    v7 = *(v1 + 952);
    v8 = *(v1 + 960);
    v9 = *(v8 + 40);
    *(v1 + 1056) = v9;
    *(v1 + 1064) = (v8 + 40) & 0xFFFFFFFFFFFFLL | 0xEA85000000000000;
    v9(v7);
    v10 = *(v1 + 656);
    v11 = *(v1 + 664);
    __swift_project_boxed_opaque_existential_1((v1 + 632), v10);
    v12 = (*(v11 + 40))(v10, v11);
    *(v1 + 1072) = v12;
    if (v12)
    {
      *(v1 + 1080) = v13;
      v14 = v13;
      *(v1 + 1088) = swift_getObjectType();
      *(v1 + 1096) = *(v14 + 56);
      *(v1 + 1104) = (v14 + 56) & 0xFFFFFFFFFFFFLL | 0x6389000000000000;
      v16 = dispatch thunk of Actor.unownedExecutor.getter();

      return MEMORY[0x2822009F8](PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), v16, v15);
    }

    else
    {
      v17 = *(v1 + 968);
      v20 = *(v1 + 952);
      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 632));
      v18 = swift_task_alloc();
      *(v1 + 1112) = v18;
      *(v18 + 16) = v20;
      *(v18 + 32) = v17;
      v19 = swift_task_alloc();
      *(v1 + 1120) = v19;
      *v19 = v1;
      v19[1] = PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);

      return MEMORY[0x2822007B8]();
    }
  }
}

{
  v3 = *v2;
  v3[144] = a1;
  v3[145] = v1;

  if (v1)
  {

    JUMPOUT(0x24C236EB0);
  }

  v4 = v3[127];
  v5 = v3[126];

  return MEMORY[0x2822009F8](PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), v5, v4);
}

{
  if (*(v1 + 108) == 1)
  {
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_24AF48000, v2, v3, "Finish pairing.", v4, 2u);
      MEMORY[0x24C237030](v4, -1, -1);
    }

    *(v1 + 1392) = swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), v6, v5);
  }

  else
  {
    v7 = *(v1 + 1168);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(*(v1 + 976), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    MEMORY[0x24C236EB0](v7);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v1 + 208, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMd, &_ss6ResultOy13FindMyPairing0dA0_ps5Error_pGSgMR);

    v8 = *(v1 + 8);

    return v8();
  }
}

uint64_t closure #1 in PairingCoordinator.startAccessoryPairing()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.startAccessoryPairing(), 0, 0);
}

uint64_t closure #1 in PairingCoordinator.startAccessoryPairing()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = closure #1 in PairingCoordinator.startAccessoryPairing();
    v4 = v0[6];
    v3 = v0[7];

    return PairingCoordinator._startAccessoryPairing()(v4, v3);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = closure #1 in PairingCoordinator.startAccessoryPairing();
  }

  else
  {
    v2 = closure #1 in PairingCoordinator.startAccessoryPairing();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

{
  v17 = v0;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = type metadata accessor for Logger();
  v0[11] = __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[10];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x800000024AFAF8C0, &v16);
    *(v6 + 12) = 2114;
    MEMORY[0x24C236EC0](v5);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in %s: %{public}@", v6, 0x16u);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x24C237030](v8, -1, -1);
    MEMORY[0x24C237030](v6, -1, -1);
  }

  v10 = v0[10];
  MEMORY[0x24C236EC0](v10);
  v11 = swift_task_alloc();
  v0[12] = v11;
  *v11 = v0;
  v11[1] = closure #1 in PairingCoordinator.startAccessoryPairing();
  v12 = v0[7];
  v13 = v0[6];
  v14 = MEMORY[0x277D84F90];

  return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, v10, v14, v13, v12);
}

{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = closure #1 in PairingCoordinator.startAccessoryPairing();
  }

  else
  {
    MEMORY[0x24C236EB0](*(v2 + 80));
    v3 = closure #1 in PairingCoordinator.startAccessoryPairing();
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 80);
  swift_unknownObjectRelease();
  MEMORY[0x24C236EB0](v1);
  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[13];
  MEMORY[0x24C236EB0](v0[10]);
  MEMORY[0x24C236EC0](v1);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[13];
  v6 = v0[10];
  if (v4)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    MEMORY[0x24C236EC0](v5);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_24AF48000, v2, v3, "Failure in end pairing: %{public}@", v7, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v8, -1, -1);
    MEMORY[0x24C237030](v7, -1, -1);
    swift_unknownObjectRelease();
    MEMORY[0x24C236EB0](v6);
    MEMORY[0x24C236EB0](v5);
  }

  else
  {
    swift_unknownObjectRelease();
    MEMORY[0x24C236EB0](v6);

    MEMORY[0x24C236EB0](v5);
  }

  v10 = v0[1];

  return v10();
}

uint64_t partial apply for closure #1 in PairingCoordinator.startAccessoryPairing()()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = dispatch thunk of PairingValidator.ack(_:);

  return closure #1 in PairingCoordinator.startAccessoryPairing()(v4, v2, v3);
}

uint64_t partial apply for closure #1 in PairingCoordinator.stream()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of PairingValidator.ack(_:);

  return closure #1 in PairingCoordinator.stream()(a1, v6, v4, v5);
}

uint64_t closure #1 in closure #1 in PairingCoordinator.forceStopPairing()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  return MEMORY[0x2822009F8](closure #1 in closure #1 in PairingCoordinator.forceStopPairing(), 0, 0);
}

uint64_t closure #1 in closure #1 in PairingCoordinator.forceStopPairing()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = v0[9];
    v0[11] = *(v2 + 72);
    v0[12] = (v2 + 72) & 0xFFFFFFFFFFFFLL | 0xF94D000000000000;
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[13] = v4;
    v0[14] = v3;

    return MEMORY[0x2822009F8](closure #1 in closure #1 in PairingCoordinator.forceStopPairing(), v4, v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

{
  *(v0 + 120) = (*(v0 + 88))(*(v0 + 64), *(v0 + 72));
  v3 = (*MEMORY[0x277D08958] + MEMORY[0x277D08958]);
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = closure #1 in closure #1 in PairingCoordinator.forceStopPairing();

  return v3();
}

{
  v1 = *v0;

  *(v1 + 208) = 4;
  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x2822009F8](closure #1 in closure #1 in PairingCoordinator.forceStopPairing(), v3, v2);
}

{
  PairingCoordinator.cancelTimeout(for:)((v0 + 208), *(v0 + 64), *(v0 + 72));
  *(v0 + 136) = 0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 64);
  *(v0 + 209) = 0;
  PairingCoordinator.cancelTimeout(for:)((v0 + 209), v2, v1);
  *(v0 + 144) = 0;
  v3 = *(v0 + 72);
  *(v0 + 152) = *(v3 + 80);
  *(v0 + 160) = (v3 + 80) & 0xFFFFFFFFFFFFLL | 0x1E41000000000000;
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);

  return MEMORY[0x2822009F8](closure #1 in closure #1 in PairingCoordinator.forceStopPairing(), v4, v5);
}

{
  *(v0 + 168) = (*(v0 + 152))(*(v0 + 64), *(v0 + 72));

  return MEMORY[0x2822009F8](closure #1 in closure #1 in PairingCoordinator.forceStopPairing(), 0, 0);
}

{
  v1 = swift_allocObject();
  *(v0 + 176) = v1;
  v5 = *(v0 + 64);
  swift_unknownObjectWeakInit();
  v2 = swift_allocObject();
  *(v0 + 184) = v2;
  *(v2 + 16) = v5;
  *(v2 + 32) = v1;
  v6 = (*MEMORY[0x277D08968] + MEMORY[0x277D08968]);

  v3 = swift_task_alloc();
  *(v0 + 192) = v3;
  *v3 = v0;
  v3[1] = closure #1 in closure #1 in PairingCoordinator.forceStopPairing();

  return v6(&async function pointer to partial apply for closure #1 in closure #1 in closure #1 in PairingCoordinator.forceStopPairing(), v2);
}

{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #1 in PairingCoordinator.forceStopPairing();
  }

  else
  {

    v2 = closure #1 in closure #1 in PairingCoordinator.forceStopPairing();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  CheckedContinuation.resume(returning:)();
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[17];
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failed to cancel timeout: %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
    MEMORY[0x24C236EB0](v1);
  }

  else
  {

    MEMORY[0x24C236EB0](v1);
  }

  v8 = v0[9];
  v0[19] = *(v8 + 80);
  v0[20] = (v8 + 80) & 0xFFFFFFFFFFFFLL | 0x1E41000000000000;
  v9 = v0[13];
  v10 = v0[14];

  return MEMORY[0x2822009F8](closure #1 in closure #1 in PairingCoordinator.forceStopPairing(), v9, v10);
}

{
  v1 = v0[18];
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failed to cancel timeout: %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
    MEMORY[0x24C236EB0](v1);
  }

  else
  {

    MEMORY[0x24C236EB0](v1);
  }

  v8 = v0[9];
  v0[19] = *(v8 + 80);
  v0[20] = (v8 + 80) & 0xFFFFFFFFFFFFLL | 0x1E41000000000000;
  v9 = v0[13];
  v10 = v0[14];

  return MEMORY[0x2822009F8](closure #1 in closure #1 in PairingCoordinator.forceStopPairing(), v9, v10);
}

{
  v1 = v0[25];

  v0[5] = v1;
  MEMORY[0x24C236EC0](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  CheckedContinuation.resume(throwing:)();
  swift_unknownObjectRelease();
  MEMORY[0x24C236EB0](v1);
  v2 = v0[1];

  return v2();
}

void PairingCoordinator.cancelTimeout(for:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  type metadata accessor for WorkItemQueue();
  (*(a3 + 72))(a2, a3);
  v6 = static WorkItemQueue.called(on:)();

  if (v6)
  {
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    swift_allocError();
    *v7 = 9;
    swift_willThrow();
    return;
  }

  if (!v5)
  {
    v15 = *(a3 + 112);
    if (!v15(a2, a3))
    {
      return;
    }

    if (v15(a2, a3))
    {
      MEMORY[0x24C236900]();
    }

    (*(a3 + 120))(0, a2, a3);
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.pairingCoordinator);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_20;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 136446210;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x506C6C617265766FLL, 0xEE00676E69726961, &v17);
    v14 = "Canceled overall pairing timeout for %{public}s";
    goto LABEL_19;
  }

  if (v5 == 4)
  {
    v8 = *(a3 + 88);
    if (v8(a2, a3))
    {

      if (v8(a2, a3))
      {
        MEMORY[0x24C236900]();
      }

      (*(a3 + 96))(0, a2, a3);
      if (one-time initialization token for pairingCoordinator != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, static Logger.pairingCoordinator);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v10, v11))
      {
        goto LABEL_20;
      }

      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v12 = 136446210;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x53676E6972696170, 0xEC00000074726174, &v17);
      v14 = "Canceled pairing start timeout for %{public}s";
LABEL_19:
      _os_log_impl(&dword_24AF48000, v10, v11, v14, v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x24C237030](v13, -1, -1);
      MEMORY[0x24C237030](v12, -1, -1);
LABEL_20:
    }
  }
}

uint64_t closure #1 in closure #1 in closure #1 in PairingCoordinator.forceStopPairing()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in PairingCoordinator.forceStopPairing(), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in PairingCoordinator.forceStopPairing()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v2 = v0[12];
    v0[14] = *(v2 + 40);
    v0[15] = (v2 + 40) & 0xFFFFFFFFFFFFLL | 0xEA85000000000000;
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in PairingCoordinator.forceStopPairing(), v4, v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

{
  (*(v0 + 112))(*(v0 + 88), *(v0 + 96));

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in PairingCoordinator.forceStopPairing(), 0, 0);
}

{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = (*(v2 + 40))(v1, v2);
  v0[16] = v3;
  if (v3)
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    v12 = (*(v5 + 48) + **(v5 + 48));
    v7 = swift_task_alloc();
    v0[17] = v7;
    *v7 = v0;
    v7[1] = closure #1 in closure #1 in closure #1 in PairingCoordinator.forceStopPairing();

    return v12(ObjectType, v5);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v9 = swift_task_alloc();
    v0[19] = v9;
    *v9 = v0;
    v9[1] = closure #1 in closure #1 in closure #1 in PairingCoordinator.forceStopPairing();
    v10 = v0[12];
    v11 = v0[11];

    return PairingCoordinator._interruptPairing()(v11, v10);
  }
}

{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #1 in closure #1 in PairingCoordinator.forceStopPairing();
  }

  else
  {
    swift_unknownObjectRelease();
    v2 = closure #1 in closure #1 in closure #1 in PairingCoordinator.forceStopPairing();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = closure #1 in closure #1 in closure #1 in PairingCoordinator.forceStopPairing();
  v2 = v0[12];
  v3 = v0[11];

  return PairingCoordinator._interruptPairing()(v3, v2);
}

{

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in PairingCoordinator.forceStopPairing(), 0, 0);
}

{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t PairingCoordinator._interruptPairing()(uint64_t a1, uint64_t a2)
{
  v3[30] = a2;
  v3[31] = v2;
  v3[29] = a1;
  v3[32] = type metadata accessor for AnalyticsEvent(0);
  v3[33] = swift_task_alloc();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[34] = v5;
  v3[35] = v4;

  return MEMORY[0x2822009F8](PairingCoordinator._interruptPairing(), v5, v4);
}

uint64_t PairingCoordinator._interruptPairing()()
{
  v1 = *(v0[30] + 24);
  (v1)(v0[29]);
  v2 = AsyncStreamProvider.finished.getter();

  if (v2)
  {
    goto LABEL_2;
  }

  v9 = v0[30];
  v10 = v0[29];
  v1(v10, v9);
  AsyncStreamProvider.finish()();

  (*(v9 + 32))(v10, v9);
  AsyncStreamProvider.finish()();

  v11 = *(v9 + 40);
  v0[36] = v11;
  v0[37] = (v9 + 40) & 0xFFFFFFFFFFFFLL | 0xEA85000000000000;
  v11(v10, v9);
  v12 = v0[5];
  v13 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v12);
  v14 = (*(v13 + 40))(v12, v13);
  v0[38] = v14;
  if (v14)
  {
    v0[39] = v15;
    v0[40] = swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    v19 = PairingCoordinator._interruptPairing();
  }

  else
  {
    v20 = v0[36];
    v21 = v0[30];
    v22 = v0[29];
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v20(v22, v21);
    v23 = v0[10];
    v24 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v23);
    v25 = (*(v24 + 48))(v23, v24);
    v0[41] = v25;
    if (v25)
    {
      v0[42] = v26;
      v0[43] = swift_getObjectType();
      v16 = dispatch thunk of Actor.unownedExecutor.getter();
      v18 = v27;
      v19 = PairingCoordinator._interruptPairing();
    }

    else
    {
      v28 = v0[36];
      v29 = v0[30];
      v30 = v0[29];
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
      v28(v30, v29);
      v31 = v0[15];
      v32 = v0[16];
      __swift_project_boxed_opaque_existential_1(v0 + 12, v31);
      v33 = (*(v32 + 32))(v31, v32);
      v0[44] = v33;
      if (!v33)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
LABEL_2:
        v3 = v0[29];
        v4 = v0[30];
        v5 = *(v4 + 16);
        v0[47] = v5;
        v0[48] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0x20DC000000000000;
        v6 = v5(v3);
        v0[49] = v6;
        v7 = PairingCoordinator._interruptPairing();
        v8 = 0;
        goto LABEL_10;
      }

      v0[45] = v34;
      v0[46] = swift_getObjectType();
      v16 = dispatch thunk of Actor.unownedExecutor.getter();
      v18 = v35;
      v19 = PairingCoordinator._interruptPairing();
    }
  }

  v7 = v19;
  v6 = v16;
  v8 = v18;
LABEL_10:

  return MEMORY[0x2822009F8](v7, v6, v8);
}

{
  PairingUIManager._pairingFinish()();
  swift_unknownObjectRelease();
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);

  return MEMORY[0x2822009F8](PairingCoordinator._interruptPairing(), v1, v2);
}

{
  v1 = v0[36];
  v2 = v0[30];
  v3 = v0[29];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1(v3, v2);
  v4 = v0[10];
  v5 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v4);
  v6 = (*(v5 + 48))(v4, v5);
  v0[41] = v6;
  if (v6)
  {
    v0[42] = v7;
    v0[43] = swift_getObjectType();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
    v11 = PairingCoordinator._interruptPairing();
LABEL_5:
    v20 = v11;
    v21 = v8;
    v22 = v10;
    goto LABEL_6;
  }

  v12 = v0[36];
  v13 = v0[30];
  v14 = v0[29];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v12(v14, v13);
  v15 = v0[15];
  v16 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v15);
  v17 = (*(v16 + 32))(v15, v16);
  v0[44] = v17;
  if (v17)
  {
    v0[45] = v18;
    v0[46] = swift_getObjectType();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v19;
    v11 = PairingCoordinator._interruptPairing();
    goto LABEL_5;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  v23 = v0[29];
  v24 = v0[30];
  v25 = *(v24 + 16);
  v0[47] = v25;
  v0[48] = (v24 + 16) & 0xFFFFFFFFFFFFLL | 0x20DC000000000000;
  v21 = v25(v23);
  v0[49] = v21;
  v20 = PairingCoordinator._interruptPairing();
  v22 = 0;
LABEL_6:

  return MEMORY[0x2822009F8](v20, v21, v22);
}

{
  UserSessionListener._pairingFinish()();
  swift_unknownObjectRelease();
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);

  return MEMORY[0x2822009F8](PairingCoordinator._interruptPairing(), v1, v2);
}

{
  v1 = v0[36];
  v2 = v0[30];
  v3 = v0[29];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1(v3, v2);
  v4 = v0[15];
  v5 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v4);
  v6 = (*(v5 + 32))(v4, v5);
  v0[44] = v6;
  if (v6)
  {
    v0[45] = v7;
    v0[46] = swift_getObjectType();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
    v11 = PairingCoordinator._interruptPairing();
    v12 = v8;
    v13 = v10;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
    v14 = v0[29];
    v15 = v0[30];
    v16 = *(v15 + 16);
    v0[47] = v16;
    v0[48] = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0x20DC000000000000;
    v12 = v16(v14);
    v0[49] = v12;
    v11 = PairingCoordinator._interruptPairing();
    v13 = 0;
  }

  return MEMORY[0x2822009F8](v11, v12, v13);
}

{
  AccessoryScanner._pairingFinish()();
  swift_unknownObjectRelease();
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);

  return MEMORY[0x2822009F8](PairingCoordinator._interruptPairing(), v1, v2);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  v1 = v0[29];
  v2 = v0[30];
  v3 = *(v2 + 16);
  v0[47] = v3;
  v0[48] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0x20DC000000000000;
  v4 = v3(v1);
  v0[49] = v4;

  return MEMORY[0x2822009F8](PairingCoordinator._interruptPairing(), v4, 0);
}

{
  *(v0 + 504) = PairingCoordinatorStateManager.canInterruptFlow.getter() & 1;

  v1 = *(v0 + 272);
  v2 = *(v0 + 280);

  return MEMORY[0x2822009F8](PairingCoordinator._interruptPairing(), v1, v2);
}

{
  if (*(v0 + 504) == 1)
  {
    v1 = *(v0 + 264);
    v8 = *(v0 + 240);
    (*(v8 + 32))(*(v0 + 232));
    swift_storeEnumTagMultiPayload();
    AsyncStreamProvider.yield(value:transaction:)();

    outlined destroy of UserSessionState(v1, type metadata accessor for AnalyticsEvent);
    *(v0 + 224) = 15;
    v7 = (*(v8 + 152) + **(v8 + 152));
    v2 = swift_task_alloc();
    *(v0 + 400) = v2;
    *v2 = v0;
    v2[1] = PairingCoordinator._interruptPairing();
    v3 = *(v0 + 240);
    v4 = *(v0 + 232);

    return v7(v0 + 224, v4, v3);
  }

  else
  {
    v6 = (*(v0 + 376))(*(v0 + 232), *(v0 + 240));
    *(v0 + 448) = v6;

    return MEMORY[0x2822009F8](PairingCoordinator._interruptPairing(), v6, 0);
  }
}

{
  v2 = *v1;
  v2[51] = v0;

  if (v0)
  {
    v3 = v2[34];
    v4 = v2[35];

    return MEMORY[0x2822009F8](PairingCoordinator._interruptPairing(), v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[52] = v5;
    *v5 = v2;
    v5[1] = PairingCoordinator._interruptPairing();
    v6 = v2[30];
    v7 = v2[29];

    return PairingCoordinator._interruptExecutorsPairing()(v7, v6);
  }
}

{
  v2 = *v1;
  v2[53] = v0;

  if (v0)
  {
    v3 = v2[34];
    v4 = v2[35];

    return MEMORY[0x2822009F8](PairingCoordinator._interruptPairing(), v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[54] = v5;
    *v5 = v2;
    v5[1] = PairingCoordinator._interruptPairing();
    v6 = v2[30];
    v7 = v2[29];

    return PairingCoordinator._cleanUp()(v7, v6);
  }
}

{
  v2 = *v1;
  v2[55] = v0;

  if (v0)
  {
    v3 = v2[34];
    v4 = v2[35];

    return MEMORY[0x2822009F8](PairingCoordinator._interruptPairing(), v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

{
  v1 = *(v0 + 448);
  swift_beginAccess();
  v2 = *(v1 + 120);
  *(v0 + 208) = 13;
  v3 = swift_task_alloc();
  *(v3 + 16) = v0 + 208;

  *(v0 + 505) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v3, v2) & 1;
  *(v0 + 456) = 0;

  v4 = *(v0 + 272);
  v5 = *(v0 + 280);

  return MEMORY[0x2822009F8](PairingCoordinator._interruptPairing(), v4, v5);
}

{
  v1 = (*(v0 + 376))(*(v0 + 232), *(v0 + 240));
  *(v0 + 464) = v1;

  return MEMORY[0x2822009F8](PairingCoordinator._interruptPairing(), v1, 0);
}

{
  v1 = v0[58];
  swift_beginAccess();
  v2 = 0;
  v3 = *(v1 + 120);
  v4 = *(v3 + 16);
  v0[59] = v4;
  v5 = v3 + 32;
  while (1)
  {
    v0[60] = v2;
    if (v4 == v2)
    {
      break;
    }

    v6 = *(v5 + 8 * v2++);
    v0[61] = v6;
    if (v6 >= 0x11)
    {
      MEMORY[0x24C236EC0]();

      v7 = v0[34];
      v8 = v0[35];
      v9 = PairingCoordinator._interruptPairing();
      goto LABEL_6;
    }
  }

  v7 = v0[34];
  v8 = v0[35];
  v9 = PairingCoordinator._interruptPairing();
LABEL_6:

  return MEMORY[0x2822009F8](v9, v7, v8);
}

{
  v1 = (*(v0 + 376))(*(v0 + 232), *(v0 + 240));
  *(v0 + 496) = v1;

  return MEMORY[0x2822009F8](PairingCoordinator._interruptPairing(), v1, 0);
}

{
  outlined consume of PairingCoordinatorState(*(v0 + 488));
  v1 = (*(v0 + 376))(*(v0 + 232), *(v0 + 240));
  *(v0 + 496) = v1;

  return MEMORY[0x2822009F8](PairingCoordinator._interruptPairing(), v1, 0);
}

{
  v1 = *(v0 + 496);
  swift_beginAccess();
  v2 = *(v1 + 120);
  *(v0 + 216) = 15;
  v3 = swift_task_alloc();
  *(v3 + 16) = v0 + 216;

  *(v0 + 506) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v3, v2) & 1;

  v4 = *(v0 + 272);
  v5 = *(v0 + 280);

  return MEMORY[0x2822009F8](PairingCoordinator._interruptPairing(), v4, v5);
}

{
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.pairingCoordinator);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 506);
    v5 = *(v0 + 505);
    v6 = *(v0 + 480) != *(v0 + 472);
    v7 = swift_slowAlloc();
    *v7 = 67109632;
    *(v7 + 4) = (v5 & 1) == 0;
    *(v7 + 8) = 1024;
    *(v7 + 10) = v6;
    *(v7 + 14) = 1024;
    *(v7 + 16) = (v4 & 1) == 0;
    _os_log_impl(&dword_24AF48000, v2, v3, "Can't interrupt the flow! canHandlePairingFinish = %{BOOL}d, isError = %{BOOL}d, alreadyInterrupted = %{BOOL}d.", v7, 0x14u);
    MEMORY[0x24C237030](v7, -1, -1);
  }

  v8 = *(v0 + 8);

  return v8();
}

{
  v1 = *(v0 + 408);
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in pairing interruption: %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
    MEMORY[0x24C236EB0](v1);
  }

  else
  {

    MEMORY[0x24C236EB0](v1);
  }

  v8 = *(v0 + 8);

  return v8();
}

{
  v1 = *(v0 + 424);
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in pairing interruption: %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
    MEMORY[0x24C236EB0](v1);
  }

  else
  {

    MEMORY[0x24C236EB0](v1);
  }

  v8 = *(v0 + 8);

  return v8();
}

{
  v1 = *(v0 + 440);
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in pairing interruption: %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
    MEMORY[0x24C236EB0](v1);
  }

  else
  {

    MEMORY[0x24C236EB0](v1);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t closure #1 in PairingCoordinator.setupStateChangeObserver()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.setupStateChangeObserver(), 0, 0);
}

uint64_t closure #1 in PairingCoordinator.setupStateChangeObserver()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v2 = v0[10];
    v0[12] = *(v2 + 16);
    v0[13] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0x20DC000000000000;
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.setupStateChangeObserver(), v4, v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

{
  *(v0 + 112) = (*(v0 + 96))(*(v0 + 72), *(v0 + 80));
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.setupStateChangeObserver(), 0, 0);
}

{
  v1 = *(v0 + 112);
  v2 = swift_allocObject();
  *(v0 + 120) = v2;
  v5 = *(v0 + 72);
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v3 = swift_allocObject();
  *(v0 + 128) = v3;
  *(v3 + 16) = v5;
  *(v3 + 32) = v2;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.setupStateChangeObserver(), v1, 0);
}

{
  v1 = v0[16];
  v2 = v0[14];
  v3 = *(v2 + 136);
  v4 = *(v2 + 144);
  *(v2 + 136) = &async function pointer to partial apply for closure #1 in closure #1 in PairingCoordinator.setupStateChangeObserver();
  *(v2 + 144) = v1;
  _s13FindMyPairing0C16CoordinatorStateOIegHn_SgWOe_0(v3, v4);

  v5 = v0[1];

  return v5();
}

uint64_t closure #1 in closure #1 in PairingCoordinator.setupStateChangeObserver()(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a2;
  v4[7] = a3;
  v5 = *a1;
  v4[8] = a4;
  v4[9] = v5;
  return MEMORY[0x2822009F8](closure #1 in closure #1 in PairingCoordinator.setupStateChangeObserver(), 0, 0);
}

uint64_t closure #1 in closure #1 in PairingCoordinator.setupStateChangeObserver()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v0[5] = v0[9];
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = closure #1 in closure #1 in PairingCoordinator.setupStateChangeObserver();
    v3 = v0[7];
    v4 = v0[8];

    return PairingCoordinator._handleStateChange(_:)(v0 + 5, v3, v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

{
  v2 = *v1;
  *(v2 + 96) = v0;

  swift_unknownObjectRelease();
  if (v0)
  {

    return MEMORY[0x2822009F8](closure #1 in closure #1 in PairingCoordinator.setupStateChangeObserver(), 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

{
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 96);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    MEMORY[0x24C236EC0](v6);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in state change handle: %{public}@", v7, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v8, -1, -1);
    MEMORY[0x24C237030](v7, -1, -1);
    MEMORY[0x24C236EB0](v6);
  }

  else
  {

    MEMORY[0x24C236EB0](v6);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t PairingCoordinator._handleStateChange(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = swift_task_alloc();
  v7 = *a1;
  v4[7] = v6;
  v4[8] = v7;
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](PairingCoordinator._handleStateChange(_:), v9, v8);
}

uint64_t PairingCoordinator._handleStateChange(_:)()
{
  v31 = v0;
  v1 = v0[5];
  v2 = v0[4];
  type metadata accessor for WorkItemQueue();
  (*(v1 + 72))(v2, v1);
  v3 = static WorkItemQueue.called(on:)();

  if (v3 & 1) != 0 || ((*(v0[5] + 80))(v0[4]), v4 = static WorkItemQueue.called(on:)(), , (v4))
  {
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v5 = v0[8];
    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.pairingCoordinator);
    outlined copy of PairingCoordinatorState(v5);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    outlined consume of PairingCoordinatorState(v5);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[8];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v29 = v11;
      v30 = v9;
      *v10 = 136446210;
      outlined copy of PairingCoordinatorState(v9);
      v12 = PairingCoordinatorState.description.getter();
      v14 = v13;
      outlined consume of PairingCoordinatorState(v30);
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v29);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_24AF48000, v7, v8, "New state = %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x24C237030](v11, -1, -1);
      MEMORY[0x24C237030](v10, -1, -1);
    }

    v16 = v0[8];
    if (v16 >= 0xD)
    {
      v17 = v0[7];
      v18 = type metadata accessor for TaskPriority();
      v28 = *(v0 + 2);
      (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v20 = swift_allocObject();
      *(v20 + 16) = 0;
      *(v20 + 24) = 0;
      *(v20 + 32) = v28;
      *(v20 + 48) = v19;
      _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v17, &async function pointer to partial apply for closure #1 in PairingCoordinator._handleStateChange(_:), v20);

      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v17, &_sScPSgMd, &_sScPSgMR);
      v16 = v0[8];
    }

    v21 = *(v0[5] + 24);
    v21(v0[4]);
    v0[2] = v16;
    AsyncStreamProvider.yield(value:transaction:)();

    if (v16 != 16)
    {
      if (PairingCoordinator.isUserActionable.getter(v0[4], v0[5]))
      {
        goto LABEL_13;
      }

      v24 = v0[8];
      if (v24 < 0xD || v24 == 14)
      {
        goto LABEL_13;
      }

      if (v24 == 13)
      {
        (v21)(v0[4], v0[5]);
        v0[3] = 16;
        AsyncStreamProvider.yield(value:transaction:)();
      }
    }

    v22 = v0[5];
    v23 = v0[4];
    (v21)(v23, v22);
    AsyncStreamProvider.finish()();

    (*(v22 + 32))(v23, v22);
    AsyncStreamProvider.finish()();

LABEL_13:

    v25 = v0[1];
    goto LABEL_15;
  }

  lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
  swift_allocError();
  *v26 = 8;
  swift_willThrow();

  v25 = v0[1];
LABEL_15:

  return v25();
}

uint64_t closure #1 in PairingCoordinator._handleStateChange(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._handleStateChange(_:), 0, 0);
}

uint64_t closure #1 in PairingCoordinator._handleStateChange(_:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    *(v0 + 40) = 4;
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
    v5 = closure #1 in PairingCoordinator._handleStateChange(_:);
LABEL_5:

    return MEMORY[0x2822009F8](v5, v2, v4);
  }

  *(v0 + 104) = 0;
  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  *(v0 + 112) = v6;
  if (v6)
  {
    *(v0 + 128) = 0;
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v7;
    v5 = closure #1 in PairingCoordinator._handleStateChange(_:);
    goto LABEL_5;
  }

  v8 = *(v0 + 8);

  return v8();
}

{
  PairingCoordinator.cancelTimeout(for:)((v0 + 40), *(v0 + 72), *(v0 + 80));
  *(v0 + 96) = 0;
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._handleStateChange(_:), 0, 0);
}

{
  *(v0 + 104) = *(v0 + 96);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 112) = Strong;
  if (Strong)
  {
    *(v0 + 128) = 0;
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._handleStateChange(_:), v3, v2);
  }

  else
  {
    v4 = *(v0 + 8);

    return v4();
  }
}

{
  v1 = *(v0 + 104);
  PairingCoordinator.cancelTimeout(for:)((v0 + 128), *(v0 + 72), *(v0 + 80));
  *(v0 + 120) = v1;
  swift_unknownObjectRelease();
  if (v1)
  {

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._handleStateChange(_:), 0, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

{
  v1 = *(v0 + 96);
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failed to cancel timeout: %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
    MEMORY[0x24C236EB0](v1);
  }

  else
  {

    MEMORY[0x24C236EB0](v1);
  }

  v8 = *(v0 + 8);

  return v8();
}

{
  v1 = *(v0 + 120);
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failed to cancel timeout: %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
    MEMORY[0x24C236EB0](v1);
  }

  else
  {

    MEMORY[0x24C236EB0](v1);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t PairingCoordinator.startTimeout(for:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *(v4 + 40) = swift_task_alloc();
  *(v4 + 72) = *a1;
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 48) = v7;
  *(v4 + 56) = v6;

  return MEMORY[0x2822009F8](PairingCoordinator.startTimeout(for:), v7, v6);
}

uint64_t PairingCoordinator.startTimeout(for:)()
{
  v1 = v0[3];
  v2 = v0[2];
  type metadata accessor for WorkItemQueue();
  (*(v1 + 72))(v2, v1);
  v3 = static WorkItemQueue.called(on:)();

  if (v3)
  {
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    swift_allocError();
    *v4 = 9;
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = (*(v0[3] + 16))(v0[2]);
    v0[8] = v7;

    return MEMORY[0x2822009F8](PairingCoordinator.startTimeout(for:), v7, 0);
  }
}

{
  *(v0 + 73) = PairingCoordinatorStateManager.canSetupTimeout.getter();

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return MEMORY[0x2822009F8](PairingCoordinator.startTimeout(for:), v1, v2);
}

{
  v53 = v0;
  if (*(v0 + 73) != 1)
  {
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.pairingCoordinator);
    v16 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v16, v23))
    {
      goto LABEL_34;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_24AF48000, v16, v23, "Flow is already interrupted, no need for timeout.", v18, 2u);
    goto LABEL_33;
  }

  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.pairingCoordinator);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 72);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v52 = v6;
    *v5 = 136446210;
    v7 = 0xEE00676E69726961;
    v8 = 0x617461646174656DLL;
    v9 = 0xEC00000064616552;
    v10 = 0x800000024AFAF570;
    v11 = 0x53676E6972696170;
    if (v4 == 3)
    {
      v11 = 0xD000000000000010;
    }

    else
    {
      v10 = 0xEC00000074726174;
    }

    if (v4 != 2)
    {
      v8 = v11;
      v9 = v10;
    }

    v12 = 0xD000000000000013;
    if (v4)
    {
      v7 = 0x800000024AFAF540;
    }

    else
    {
      v12 = 0x506C6C617265766FLL;
    }

    if (v4 <= 1)
    {
      v13 = v12;
    }

    else
    {
      v13 = v8;
    }

    if (v4 <= 1)
    {
      v14 = v7;
    }

    else
    {
      v14 = v9;
    }

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v52);

    *(v5 + 4) = v15;
    _os_log_impl(&dword_24AF48000, v2, v3, "Start timeout for %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
  }

  if (*(v0 + 72) == 4)
  {
    if ((*(*(v0 + 24) + 88))(*(v0 + 16)))
    {

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v52 = v19;
        *v18 = 136446210;
        v20 = 0x53676E6972696170;
        v21 = 0xEC00000074726174;
        goto LABEL_32;
      }

LABEL_34:

      goto LABEL_54;
    }
  }

  else if (*(v0 + 72))
  {
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 72);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v52 = v28;
      *v27 = 136446210;
      v29 = 0xEE00676E69726961;
      v30 = 0x617461646174656DLL;
      v31 = 0xEC00000064616552;
      if (v26 != 2)
      {
        v30 = 0xD000000000000010;
        v31 = 0x800000024AFAF570;
      }

      v32 = 0xD000000000000013;
      if (v26)
      {
        v29 = 0x800000024AFAF540;
      }

      else
      {
        v32 = 0x506C6C617265766FLL;
      }

      if (v26 <= 1)
      {
        v33 = v32;
      }

      else
      {
        v33 = v30;
      }

      if (v26 <= 1)
      {
        v34 = v29;
      }

      else
      {
        v34 = v31;
      }

      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v52);

      *(v27 + 4) = v35;
      _os_log_impl(&dword_24AF48000, v24, v25, "Unsupported timeout type reason %{public}s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x24C237030](v28, -1, -1);
      MEMORY[0x24C237030](v27, -1, -1);
    }
  }

  else if ((*(*(v0 + 24) + 112))(*(v0 + 16)))
  {

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v52 = v19;
      *v18 = 136446210;
      v20 = 0x506C6C617265766FLL;
      v21 = 0xEE00676E69726961;
LABEL_32:
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v52);
      _os_log_impl(&dword_24AF48000, v16, v17, "Timeout for %{public}s already started!", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x24C237030](v19, -1, -1);
LABEL_33:
      MEMORY[0x24C237030](v18, -1, -1);
      goto LABEL_34;
    }

    goto LABEL_34;
  }

  v36 = *(v0 + 72);
  v37 = *(v0 + 40);
  v38 = type metadata accessor for TaskPriority();
  v51 = *(v0 + 16);
  (*(*(v38 - 8) + 56))(v37, 1, 1, v38);
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  *(v40 + 24) = 0;
  *(v40 + 32) = v51;
  *(v40 + 48) = v39;
  *(v40 + 56) = v36;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v37, &async function pointer to partial apply for closure #1 in PairingCoordinator.startTimeout(for:), v40);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v37, &_sScPSgMd, &_sScPSgMR);
  if (v36)
  {
    if (v36 == 4)
    {
      v41 = *(v0 + 24);
      v42 = *(v0 + 16);
      v43 = *(v41 + 96);

      v43(v44, v42, v41);
    }
  }

  else
  {
    v45 = *(v0 + 24);
    v46 = *(v0 + 16);
    v47 = *(v45 + 120);

    v47(v48, v46, v45);
  }

LABEL_54:

  v49 = *(v0 + 8);

  return v49();
}

uint64_t PairingCoordinator.handleUIFinish()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[5] = v5;
  v3[6] = v4;

  return MEMORY[0x2822009F8](PairingCoordinator.handleUIFinish(), v5, v4);
}

uint64_t PairingCoordinator.handleUIFinish()()
{
  v0[7] = (*(v0[3] + 72))(v0[2]);
  v3 = (*MEMORY[0x277D08958] + MEMORY[0x277D08958]);
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = PairingCoordinator.handleUIFinish();

  return v3();
}

{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](PairingCoordinator.handleUIFinish(), v3, v2);
}

{
  v15 = v0;
  v1 = v0[3];
  v2 = v0[2];
  v13 = 4;
  PairingCoordinator.cancelTimeout(for:)(&v13, v2, v1);
  v3 = v0[3];
  v4 = v0[2];
  v14[0] = 0;
  PairingCoordinator.cancelTimeout(for:)(v14, v4, v3);
  v5 = v0[3];
  v6 = v0[2];
  v0[9] = (*(v5 + 80))(v6, v5);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v0[10] = v8;
  v8[2] = v6;
  v8[3] = v5;
  v8[4] = v7;
  v12 = (*MEMORY[0x277D08960] + MEMORY[0x277D08960]);
  v9 = swift_task_alloc();
  v0[11] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
  *v9 = v0;
  v9[1] = PairingCoordinator.handleUIFinish();

  return v12(v0 + 12, &async function pointer to partial apply for closure #1 in PairingCoordinator.handleUIFinish(), v8, v10);
}

{
  v2 = *v1;

  if (v0)
  {
    MEMORY[0x24C236EB0](v0);

    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = PairingCoordinator.handleUIFinish();
  }

  else
  {

    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = PairingCoordinator.handleUIFinish();
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{
  return (*(v0 + 8))();
}

uint64_t closure #1 in PairingCoordinator.handleDisplayedProxCard()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[26] = a2;
  v3[27] = a3;
  v3[25] = a1;
  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleDisplayedProxCard(), 0, 0);
}

uint64_t closure #1 in PairingCoordinator.handleDisplayedProxCard()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[28] = Strong;
  if (Strong)
  {
    v2 = v0[27];
    v0[29] = *(v2 + 16);
    v0[30] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0x20DC000000000000;
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[31] = v4;
    v0[32] = v3;

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleDisplayedProxCard(), v4, v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

{
  v1 = (*(v0 + 232))(*(v0 + 208), *(v0 + 216));
  *(v0 + 264) = v1;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleDisplayedProxCard(), v1, 0);
}

{
  v1 = *(v0 + 264);
  swift_beginAccess();
  v2 = *(v1 + 120);
  *(v0 + 184) = 2;
  v3 = swift_task_alloc();
  *(v3 + 16) = v0 + 184;

  *(v0 + 400) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v3, v2) & 1;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleDisplayedProxCard(), 0, 0);
}

{
  if (*(v0 + 400))
  {
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.pairingCoordinator);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_24AF48000, v2, v3, "Displayed prox card already handled!", v4, 2u);
      MEMORY[0x24C237030](v4, -1, -1);
    }

    swift_unknownObjectRelease();

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    *(v0 + 192) = 2;
    v10 = (*(*(v0 + 216) + 152) + **(*(v0 + 216) + 152));
    v7 = swift_task_alloc();
    *(v0 + 272) = v7;
    *v7 = v0;
    v7[1] = closure #1 in PairingCoordinator.handleDisplayedProxCard();
    v8 = *(v0 + 216);
    v9 = *(v0 + 208);

    return v10(v0 + 192, v9, v8);
  }
}

{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = closure #1 in PairingCoordinator.handleDisplayedProxCard();
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = v2[27];
    v2[36] = *(v6 + 40);
    v2[37] = (v6 + 40) & 0xFFFFFFFFFFFFLL | 0xEA85000000000000;
    v4 = v2[31];
    v5 = v2[32];
    v3 = closure #1 in PairingCoordinator.handleDisplayedProxCard();
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

{
  (*(v0 + 288))(*(v0 + 208), *(v0 + 216));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleDisplayedProxCard(), 0, 0);
}

{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = (*(v2 + 64))(v1, v2);
  v5 = v4;
  v0[38] = v3;
  v0[39] = v4;
  v0[40] = swift_getObjectType();
  v0[41] = *(v5 + 16);
  v0[42] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xC23A000000000000;
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleDisplayedProxCard(), v7, v6);
}

{
  (*(v0 + 328))(*(v0 + 320), *(v0 + 312));
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleDisplayedProxCard(), 0, 0);
}

{
  v1 = v0[10];
  if (v1)
  {
    if (v1 == 1)
    {
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
      v2 = v0[1];

      return v2();
    }

    else
    {
      v6 = swift_task_alloc();
      v0[48] = v6;
      *v6 = v0;
      v6[1] = closure #1 in PairingCoordinator.handleDisplayedProxCard();
      v7 = v0[27];
      v8 = v0[26];

      return PairingCoordinator._preFetchMetadata()(v8, v7);
    }
  }

  else
  {
    v4 = v0[31];
    v5 = v0[32];

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleDisplayedProxCard(), v4, v5);
  }
}

{
  (*(v0 + 288))(*(v0 + 208), *(v0 + 216));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleDisplayedProxCard(), 0, 0);
}

{
  v1 = v0[15];
  v2 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v1);
  v3 = (*(v2 + 32))(v1, v2);
  v0[43] = v3;
  if (v3)
  {
    v0[44] = v4;
    v5 = v4;
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
    v0[45] = swift_getObjectType();
    v0[46] = *(v5 + 16);
    v0[47] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xF8BE000000000000;
    v7 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleDisplayedProxCard(), v7, v6);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    v8 = swift_allocError();
    *v9 = 13;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.pairingCoordinator);
    MEMORY[0x24C236EC0](v8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    MEMORY[0x24C236EB0](v8);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      MEMORY[0x24C236EC0](v8);
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&dword_24AF48000, v11, v12, "Failure while handling displayed prox card: %{public}@", v13, 0xCu);
      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C237030](v14, -1, -1);
      MEMORY[0x24C237030](v13, -1, -1);
      swift_unknownObjectRelease();
      MEMORY[0x24C236EB0](v8);
    }

    else
    {
      swift_unknownObjectRelease();

      MEMORY[0x24C236EB0](v8);
    }

    v16 = v0[1];

    return v16();
  }
}

{
  (*(v0 + 368))(*(v0 + 360), *(v0 + 352));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleDisplayedProxCard(), 0, 0);
}

{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

{
  *(*v1 + 392) = v0;

  if (v0)
  {
    v2 = closure #1 in PairingCoordinator.handleDisplayedProxCard();
  }

  else
  {
    v2 = closure #1 in PairingCoordinator.handleDisplayedProxCard();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  swift_unknownObjectRelease();
  outlined destroy of DetectedAccessory(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 280);
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure while handling displayed prox card: %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
    swift_unknownObjectRelease();
    MEMORY[0x24C236EB0](v1);
  }

  else
  {
    swift_unknownObjectRelease();

    MEMORY[0x24C236EB0](v1);
  }

  v8 = *(v0 + 8);

  return v8();
}

{
  outlined destroy of DetectedAccessory((v0 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[49];
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure while handling displayed prox card: %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
    swift_unknownObjectRelease();
    MEMORY[0x24C236EB0](v1);
  }

  else
  {
    swift_unknownObjectRelease();

    MEMORY[0x24C236EB0](v1);
  }

  v8 = v0[1];

  return v8();
}

uint64_t PairingCoordinator._preFetchMetadata()(uint64_t a1, uint64_t a2)
{
  v3[87] = v2;
  v3[86] = a2;
  v3[85] = a1;
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[88] = v5;
  v3[89] = v4;

  return MEMORY[0x2822009F8](PairingCoordinator._preFetchMetadata(), v5, v4);
}

uint64_t PairingCoordinator._preFetchMetadata()()
{
  v1 = v0[86];
  v2 = v0[85];
  type metadata accessor for WorkItemQueue();
  (*(v1 + 72))(v2, v1);
  v3 = static WorkItemQueue.called(on:)();

  if (v3)
  {
    v4 = v0[85];
    v5 = v0[86];
    v6 = *(v5 + 16);
    v0[90] = v6;
    v0[91] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0x20DC000000000000;
    v7 = v6(v4);
    v0[92] = v7;

    return MEMORY[0x2822009F8](PairingCoordinator._preFetchMetadata(), v7, 0);
  }

  else
  {
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    swift_allocError();
    *v8 = 8;
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

{
  *(v0 + 1120) = PairingCoordinatorStateManager.canPrePair.getter() & 1;

  v1 = *(v0 + 712);
  v2 = *(v0 + 704);

  return MEMORY[0x2822009F8](PairingCoordinator._preFetchMetadata(), v2, v1);
}

{
  if (*(v0 + 1120) == 1)
  {
    v1 = *(v0 + 680);
    v2 = *(v0 + 688);
    v3 = *(v2 + 40);
    *(v0 + 744) = v3;
    *(v0 + 752) = (v2 + 40) & 0xFFFFFFFFFFFFLL | 0xEA85000000000000;
    v3(v1);
    v4 = *(v0 + 80);
    v5 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v4);
    v6 = (*(v5 + 64))(v4, v5);
    v8 = v7;
    *(v0 + 760) = v6;
    *(v0 + 768) = v7;
    *(v0 + 776) = swift_getObjectType();
    *(v0 + 784) = *(v8 + 56);
    *(v0 + 792) = (v8 + 56) & 0xFFFFFFFFFFFFLL | 0x8BF000000000000;
    v10 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](PairingCoordinator._preFetchMetadata(), v10, v9);
  }

  else
  {
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.pairingCoordinator);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_24AF48000, v12, v13, "Pairing already started.", v14, 2u);
      MEMORY[0x24C237030](v14, -1, -1);
    }

    v15 = *(v0 + 8);

    return v15();
  }
}

{
  (*(v0 + 784))(*(v0 + 776), *(v0 + 768));
  swift_unknownObjectRelease();
  v1 = *(v0 + 712);
  v2 = *(v0 + 704);

  return MEMORY[0x2822009F8](PairingCoordinator._preFetchMetadata(), v2, v1);
}

{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 744);
    v2 = *(v0 + 688);
    v3 = *(v0 + 680);
    outlined init with take of Accessory((v0 + 96), v0 + 16);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    v1(v3, v2);
    v4 = *(v0 + 200);
    v5 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_1((v0 + 176), v4);
    v6 = (*(v5 + 64))(v4, v5);
    v8 = v7;
    *(v0 + 800) = v6;
    *(v0 + 808) = v7;
    *(v0 + 816) = swift_getObjectType();
    *(v0 + 824) = *(v8 + 16);
    *(v0 + 832) = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xC23A000000000000;
    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    v11 = v10;
    v12 = PairingCoordinator._preFetchMetadata();
    v13 = v9;
    v14 = v11;
  }

  else
  {
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 96, &_s13FindMyPairing14PeripheralType_pSgMd, &_s13FindMyPairing14PeripheralType_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    v15 = swift_allocError();
    *v16 = 1;
    swift_willThrow();
    *(v0 + 1080) = v15;
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    *(v0 + 1088) = __swift_project_value_buffer(v17, static Logger.pairingCoordinator);
    MEMORY[0x24C236EC0](v15);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    MEMORY[0x24C236EB0](v15);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138543362;
      MEMORY[0x24C236EC0](v15);
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v22;
      *v21 = v22;
      _os_log_impl(&dword_24AF48000, v18, v19, "Failure in data pre-fetching %{public}@", v20, 0xCu);
      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v21, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C237030](v21, -1, -1);
      MEMORY[0x24C237030](v20, -1, -1);
    }

    v23 = *(v0 + 720);
    v24 = *(v0 + 688);
    v25 = *(v0 + 680);

    v13 = v23(v25, v24);
    *(v0 + 1096) = v13;
    v12 = PairingCoordinator._preFetchMetadata();
    v14 = 0;
  }

  return MEMORY[0x2822009F8](v12, v13, v14);
}

{
  (*(v0 + 824))(*(v0 + 816), *(v0 + 808));
  swift_unknownObjectRelease();
  v1 = *(v0 + 712);
  v2 = *(v0 + 704);

  return MEMORY[0x2822009F8](PairingCoordinator._preFetchMetadata(), v2, v1);
}

{
  v25 = v0;
  if (*(v0 + 240) >= 2uLL)
  {
    v23 = *(v0 + 688);
    outlined init with take of Accessory((v0 + 216), v0 + 136);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
    *(v0 + 648) = 5;
    v17 = *(v23 + 152);
    *(v0 + 840) = v17;
    *(v0 + 848) = (v23 + 152) & 0xFFFFFFFFFFFFLL | 0xE3C000000000000;
    v22 = (v17 + *v17);
    v18 = swift_task_alloc();
    *(v0 + 856) = v18;
    *v18 = v0;
    v18[1] = PairingCoordinator._preFetchMetadata();
    v19 = *(v0 + 688);
    v20 = *(v0 + 680);

    return v22(v0 + 648, v20, v19);
  }

  else
  {
    outlined destroy of DetectedAccessory(v0 + 216);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.pairingCoordinator);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v24 = v5;
      *v4 = 136315138;
      *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x800000024AFAF8A0, &v24);
      _os_log_impl(&dword_24AF48000, v2, v3, "%sInvalid accessory state. We should only have a single accessory at this point!", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
      MEMORY[0x24C237030](v5, -1, -1);
      MEMORY[0x24C237030](v4, -1, -1);
    }

    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    v6 = swift_allocError();
    *v7 = 0;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    *(v0 + 1080) = v6;
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    *(v0 + 1088) = __swift_project_value_buffer(v1, static Logger.pairingCoordinator);
    MEMORY[0x24C236EC0](v6);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    MEMORY[0x24C236EB0](v6);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138543362;
      MEMORY[0x24C236EC0](v6);
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&dword_24AF48000, v8, v9, "Failure in data pre-fetching %{public}@", v10, 0xCu);
      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C237030](v11, -1, -1);
      MEMORY[0x24C237030](v10, -1, -1);
    }

    v13 = *(v0 + 720);
    v14 = *(v0 + 688);
    v15 = *(v0 + 680);

    v16 = v13(v15, v14);
    *(v0 + 1096) = v16;

    return MEMORY[0x2822009F8](PairingCoordinator._preFetchMetadata(), v16, 0);
  }
}

{
  v2 = *v1;
  *(*v1 + 864) = v0;

  v3 = *(v2 + 712);
  v4 = *(v2 + 704);
  if (v0)
  {
    v5 = PairingCoordinator._preFetchMetadata();
  }

  else
  {
    v5 = PairingCoordinator._preFetchMetadata();
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v16 = v0;
  v1 = *(v0 + 688);
  v2 = *(v0 + 680);
  v15 = 2;
  v3 = *(v1 + 168);
  *(v0 + 872) = v3;
  *(v0 + 880) = (v1 + 168) & 0xFFFFFFFFFFFFLL | 0x1CA6000000000000;
  v4 = v3(&v15, v2, v1);
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  outlined init with copy of PairingEligibilityInfo(v0 + 16, v0 + 296);
  outlined init with copy of PairingEligibilityInfo(v0 + 136, v0 + 336);
  v10 = swift_allocObject();
  *(v0 + 888) = v10;
  v10[2] = v2;
  v10[3] = v1;
  v10[4] = v9;
  outlined init with take of Accessory((v0 + 296), (v10 + 5));
  outlined init with take of Accessory((v0 + 336), (v10 + 10));
  v11 = swift_task_alloc();
  *(v0 + 896) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing12MetadataType_pSgMd, &_s13FindMyPairing12MetadataType_pSgMR);
  *v11 = v0;
  v11[1] = PairingCoordinator._preFetchMetadata();
  v13 = *(v0 + 680);
  v18 = *(v0 + 688);

  return PairingCoordinator._withOptionalTimeout<A>(timeout:_:)(v0 + 256, v4, v6, v8 & 1, &async function pointer to partial apply for closure #1 in PairingCoordinator._preFetchMetadata(), v10, v13, v12);
}

{
  v2 = *v1;
  *(*v1 + 904) = v0;

  v3 = *(v2 + 712);
  v4 = *(v2 + 704);
  if (v0)
  {
    v5 = PairingCoordinator._preFetchMetadata();
  }

  else
  {
    v5 = PairingCoordinator._preFetchMetadata();
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  outlined init with copy of PairingContext?(v0 + 256, v0 + 416, &_s13FindMyPairing12MetadataType_pSgMd, &_s13FindMyPairing12MetadataType_pSgMR);
  if (*(v0 + 440))
  {
    v1 = *(v0 + 840);
    outlined init with take of Accessory((v0 + 416), v0 + 376);
    *(v0 + 656) = 6;
    v18 = (v1 + *v1);
    v2 = swift_task_alloc();
    *(v0 + 912) = v2;
    *v2 = v0;
    v2[1] = PairingCoordinator._preFetchMetadata();
    v3 = *(v0 + 688);
    v4 = *(v0 + 680);

    return v18(v0 + 656, v4, v3);
  }

  else
  {
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 416, &_s13FindMyPairing12MetadataType_pSgMd, &_s13FindMyPairing12MetadataType_pSgMR);
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    v6 = swift_allocError();
    *v7 = 7;
    swift_willThrow();
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 256, &_s13FindMyPairing12MetadataType_pSgMd, &_s13FindMyPairing12MetadataType_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    *(v0 + 1080) = v6;
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    *(v0 + 1088) = __swift_project_value_buffer(v8, static Logger.pairingCoordinator);
    MEMORY[0x24C236EC0](v6);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    MEMORY[0x24C236EB0](v6);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138543362;
      MEMORY[0x24C236EC0](v6);
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&dword_24AF48000, v9, v10, "Failure in data pre-fetching %{public}@", v11, 0xCu);
      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C237030](v12, -1, -1);
      MEMORY[0x24C237030](v11, -1, -1);
    }

    v14 = *(v0 + 720);
    v15 = *(v0 + 688);
    v16 = *(v0 + 680);

    v17 = v14(v16, v15);
    *(v0 + 1096) = v17;

    return MEMORY[0x2822009F8](PairingCoordinator._preFetchMetadata(), v17, 0);
  }
}

{
  v2 = *v1;
  *(*v1 + 920) = v0;

  v3 = *(v2 + 712);
  v4 = *(v2 + 704);
  if (v0)
  {
    v5 = PairingCoordinator._preFetchMetadata();
  }

  else
  {
    v5 = PairingCoordinator._preFetchMetadata();
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v16 = v0;
  v1 = *(v0 + 872);
  v2 = *(v0 + 688);
  v3 = *(v0 + 680);
  v15 = 3;
  v4 = v1(&v15, v3, v2);
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  outlined init with copy of PairingEligibilityInfo(v0 + 376, v0 + 456);
  v10 = swift_allocObject();
  *(v0 + 928) = v10;
  v10[2] = v3;
  v10[3] = v2;
  v10[4] = v9;
  outlined init with take of Accessory((v0 + 456), (v10 + 5));
  v11 = swift_task_alloc();
  *(v0 + 936) = v11;
  *v11 = v0;
  v11[1] = PairingCoordinator._preFetchMetadata();
  v12 = *(v0 + 680);
  v18 = *(v0 + 688);
  v13 = MEMORY[0x277D84F78] + 8;

  return PairingCoordinator._withOptionalTimeout<A>(timeout:_:)(v11, v4, v6, v8 & 1, &async function pointer to partial apply for closure #2 in PairingCoordinator._preFetchMetadata(), v10, v12, v13);
}

{
  v2 = *v1;
  *(*v1 + 944) = v0;

  v3 = *(v2 + 712);
  v4 = *(v2 + 704);
  if (v0)
  {
    v5 = PairingCoordinator._preFetchMetadata();
  }

  else
  {
    v5 = PairingCoordinator._preFetchMetadata();
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = v0[105];
  v0[83] = 7;
  v6 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[119] = v2;
  *v2 = v0;
  v2[1] = PairingCoordinator._preFetchMetadata();
  v3 = v0[86];
  v4 = v0[85];

  return (v6)(v0 + 83, v4, v3);
}

{
  v2 = *v1;
  *(*v1 + 960) = v0;

  v3 = *(v2 + 712);
  v4 = *(v2 + 704);
  if (v0)
  {
    v5 = PairingCoordinator._preFetchMetadata();
  }

  else
  {
    v5 = PairingCoordinator._preFetchMetadata();
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = v0[93];
  v2 = v0[86];
  v3 = v0[85];
  v1(v3, v2);
  v4 = v0[65];
  v5 = v0[66];
  __swift_project_boxed_opaque_existential_1(v0 + 62, v4);
  v0[121] = (*(v5 + 24))(v4, v5);
  v0[122] = v6;
  v0[123] = swift_getObjectType();
  v1(v3, v2);
  v7 = v0[70];
  v8 = v0[71];
  __swift_project_boxed_opaque_existential_1(v0 + 67, v7);
  v9 = (*(v8 + 64))(v7, v8);
  v11 = v10;
  v0[124] = v9;
  v0[125] = v10;
  v0[126] = swift_getObjectType();
  v0[127] = *(v11 + 80);
  v0[128] = (v11 + 80) & 0xFFFFFFFFFFFFLL | 0xCB4B000000000000;
  v13 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](PairingCoordinator._preFetchMetadata(), v13, v12);
}

{
  (*(v0 + 1016))(*(v0 + 1008), *(v0 + 1000));
  swift_unknownObjectRelease();
  v1 = swift_task_alloc();
  *(v0 + 1032) = v1;
  *v1 = v0;
  v1[1] = PairingCoordinator._preFetchMetadata();
  v2 = *(v0 + 984);
  v3 = *(v0 + 976);

  return PairingPolicyVerifier.verifyIfPairingEligibility(_:)(v0 + 576, v2, v3);
}

{
  v2 = *v1;
  *(*v1 + 1040) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm(v2 + 72);
  swift_unknownObjectRelease();
  if (v0)
  {
    v3 = v2[89];
    v4 = v2[88];
    v5 = PairingCoordinator._preFetchMetadata();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 67);
    v3 = v2[89];
    v4 = v2[88];
    v5 = PairingCoordinator._preFetchMetadata();
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = v0[105];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 62);
  v0[84] = 8;
  v6 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[131] = v2;
  *v2 = v0;
  v2[1] = PairingCoordinator._preFetchMetadata();
  v3 = v0[86];
  v4 = v0[85];

  return (v6)(v0 + 84, v4, v3);
}

{
  v2 = *v1;
  v2[132] = v0;

  if (v0)
  {
    v3 = v2[89];
    v4 = v2[88];

    return MEMORY[0x2822009F8](PairingCoordinator._preFetchMetadata(), v4, v3);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[133] = v5;
    *v5 = v2;
    v5[1] = PairingCoordinator._preFetchMetadata();
    v6 = v2[86];
    v7 = v2[85];

    return PairingCoordinator._proceedWithConnection()(v7, v6);
  }
}

{
  v2 = *v1;
  *(*v1 + 1072) = v0;

  v3 = *(v2 + 712);
  v4 = *(v2 + 704);
  if (v0)
  {
    v5 = PairingCoordinator._preFetchMetadata();
  }

  else
  {
    v5 = PairingCoordinator._preFetchMetadata();
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 47);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)((v0 + 32), &_s13FindMyPairing12MetadataType_pSgMd, &_s13FindMyPairing12MetadataType_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];

  return v1();
}

{
  v1 = *(v0 + 1096);
  swift_beginAccess();
  v2 = *(v1 + 120);
  *(v0 + 640) = 3;
  v3 = swift_task_alloc();
  *(v3 + 16) = v0 + 640;

  *(v0 + 1121) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v3, v2) & 1;

  v4 = *(v0 + 712);
  v5 = *(v0 + 704);

  return MEMORY[0x2822009F8](PairingCoordinator._preFetchMetadata(), v5, v4);
}

{
  v1 = *(v0 + 1080);
  MEMORY[0x24C236EC0](v1);
  v2 = swift_task_alloc();
  *(v0 + 1104) = v2;
  *v2 = v0;
  v2[1] = PairingCoordinator._preFetchMetadata();
  v3 = *(v0 + 1121);
  v4 = *(v0 + 688);
  v5 = *(v0 + 680);
  v6 = MEMORY[0x277D84F90];

  return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(v3, v1, v6, v5, v4);
}

{
  v2 = *v1;
  *(*v1 + 1112) = v0;

  if (v0)
  {
    v3 = v2[89];
    v4 = v2[88];
    v5 = PairingCoordinator._preFetchMetadata();
  }

  else
  {
    MEMORY[0x24C236EB0](v2[135]);
    v3 = v2[89];
    v4 = v2[88];
    v5 = PairingCoordinator._preFetchMetadata();
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  MEMORY[0x24C236EB0](*(v0 + 1080));
  v1 = *(v0 + 8);

  return v1();
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[108];
  v0[135] = v1;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[136] = __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in data pre-fetching %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
  }

  v8 = v0[90];
  v9 = v0[86];
  v10 = v0[85];

  v11 = v8(v10, v9);
  v0[137] = v11;

  return MEMORY[0x2822009F8](PairingCoordinator._preFetchMetadata(), v11, 0);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[113];
  v0[135] = v1;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[136] = __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in data pre-fetching %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
  }

  v8 = v0[90];
  v9 = v0[86];
  v10 = v0[85];

  v11 = v8(v10, v9);
  v0[137] = v11;

  return MEMORY[0x2822009F8](PairingCoordinator._preFetchMetadata(), v11, 0);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 47);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)((v0 + 32), &_s13FindMyPairing12MetadataType_pSgMd, &_s13FindMyPairing12MetadataType_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[115];
  v0[135] = v1;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[136] = __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in data pre-fetching %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
  }

  v8 = v0[90];
  v9 = v0[86];
  v10 = v0[85];

  v11 = v8(v10, v9);
  v0[137] = v11;

  return MEMORY[0x2822009F8](PairingCoordinator._preFetchMetadata(), v11, 0);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 47);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)((v0 + 32), &_s13FindMyPairing12MetadataType_pSgMd, &_s13FindMyPairing12MetadataType_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[118];
  v0[135] = v1;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[136] = __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in data pre-fetching %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
  }

  v8 = v0[90];
  v9 = v0[86];
  v10 = v0[85];

  v11 = v8(v10, v9);
  v0[137] = v11;

  return MEMORY[0x2822009F8](PairingCoordinator._preFetchMetadata(), v11, 0);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 47);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)((v0 + 32), &_s13FindMyPairing12MetadataType_pSgMd, &_s13FindMyPairing12MetadataType_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[120];
  v0[135] = v1;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[136] = __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in data pre-fetching %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
  }

  v8 = v0[90];
  v9 = v0[86];
  v10 = v0[85];

  v11 = v8(v10, v9);
  v0[137] = v11;

  return MEMORY[0x2822009F8](PairingCoordinator._preFetchMetadata(), v11, 0);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 47);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)((v0 + 32), &_s13FindMyPairing12MetadataType_pSgMd, &_s13FindMyPairing12MetadataType_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 67);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 62);
  v1 = v0[130];
  v0[135] = v1;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[136] = __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in data pre-fetching %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
  }

  v8 = v0[90];
  v9 = v0[86];
  v10 = v0[85];

  v11 = v8(v10, v9);
  v0[137] = v11;

  return MEMORY[0x2822009F8](PairingCoordinator._preFetchMetadata(), v11, 0);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 47);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)((v0 + 32), &_s13FindMyPairing12MetadataType_pSgMd, &_s13FindMyPairing12MetadataType_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[132];
  v0[135] = v1;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[136] = __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in data pre-fetching %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
  }

  v8 = v0[90];
  v9 = v0[86];
  v10 = v0[85];

  v11 = v8(v10, v9);
  v0[137] = v11;

  return MEMORY[0x2822009F8](PairingCoordinator._preFetchMetadata(), v11, 0);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 47);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)((v0 + 32), &_s13FindMyPairing12MetadataType_pSgMd, &_s13FindMyPairing12MetadataType_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[134];
  v0[135] = v1;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[136] = __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in data pre-fetching %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
  }

  v8 = v0[90];
  v9 = v0[86];
  v10 = v0[85];

  v11 = v8(v10, v9);
  v0[137] = v11;

  return MEMORY[0x2822009F8](PairingCoordinator._preFetchMetadata(), v11, 0);
}

{
  v1 = v0[139];
  MEMORY[0x24C236EB0](v0[135]);
  MEMORY[0x24C236EC0](v1);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[139];
  v6 = v0[135];
  if (v4)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    MEMORY[0x24C236EC0](v5);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_24AF48000, v2, v3, "Failure in end pairing %{public}@", v7, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v8, -1, -1);
    MEMORY[0x24C237030](v7, -1, -1);
    MEMORY[0x24C236EB0](v6);
    MEMORY[0x24C236EB0](v5);
  }

  else
  {
    MEMORY[0x24C236EB0](v0[135]);

    MEMORY[0x24C236EB0](v5);
  }

  v10 = v0[1];

  return v10();
}

uint64_t closure #1 in PairingCoordinator.handleUIFinish()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleUIFinish(), 0, 0);
}

uint64_t closure #1 in PairingCoordinator.handleUIFinish()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 80) = v2;
    *v2 = v0;
    v2[1] = closure #1 in PairingCoordinator.handleUIFinish();
    v4 = *(v0 + 56);
    v3 = *(v0 + 64);

    return PairingCoordinator._interruptPairing()(v4, v3);
  }

  else
  {
    **(v0 + 40) = 0;
    v6 = *(v0 + 8);

    return v6();
  }
}

{

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleUIFinish(), 0, 0);
}

{
  swift_unknownObjectRelease();
  **(v0 + 40) = 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t PairingCoordinator._interruptExecutorsPairing()(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](PairingCoordinator._interruptExecutorsPairing(), v5, v4);
}

uint64_t PairingCoordinator._interruptExecutorsPairing()()
{
  v1 = v0[9];
  v2 = v0[8];
  type metadata accessor for WorkItemQueue();
  (*(v1 + 72))(v2, v1);
  v3 = static WorkItemQueue.called(on:)();

  if (v3 & 1) != 0 || ((*(v0[9] + 80))(v0[8]), v4 = static WorkItemQueue.called(on:)(), , (v4))
  {
    (*(v0[9] + 40))(v0[8]);
    v5 = v0[5];
    v6 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
    v7 = (*(v6 + 80))(v5, v6);
    v0[11] = v7;
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v0[7] = v7;
    v8 = swift_task_alloc();
    v0[12] = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay13FindMyPairing0C8Executor_pGMd, &_sSay13FindMyPairing0C8Executor_pGMR);
    v10 = lazy protocol witness table accessor for type [PairingOperation] and conformance [A](&lazy protocol witness table cache variable for type [PairingExecutor] and conformance [A], &_sSay13FindMyPairing0C8Executor_pGMd, &_sSay13FindMyPairing0C8Executor_pGMR, MEMORY[0x277D83970]);
    *v8 = v0;
    v8[1] = PairingCoordinator._interruptExecutorsPairing();

    return MEMORY[0x28215ED50](&async function pointer to closure #1 in PairingCoordinator._interruptExecutorsPairing(), 0, v9, v10);
  }

  else
  {
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    swift_allocError();
    *v11 = 8;
    swift_willThrow();
    v12 = v0[1];

    return v12();
  }
}

{
  v2 = *v1;

  if (v0)
  {

    JUMPOUT(0x24C236EB0);
  }

  v3 = *(v2 + 8);

  return v3();
}

uint64_t PairingCoordinator._cleanUp()(uint64_t a1, uint64_t a2)
{
  v3[33] = a2;
  v3[34] = v2;
  v3[32] = a1;
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[35] = v5;
  v3[36] = v4;

  return MEMORY[0x2822009F8](PairingCoordinator._cleanUp(), v5, v4);
}

uint64_t PairingCoordinator._cleanUp()()
{
  v1 = v0[33];
  v2 = v0[32];
  type metadata accessor for WorkItemQueue();
  (*(v1 + 72))(v2, v1);
  v3 = static WorkItemQueue.called(on:)();

  if (v3 & 1) != 0 || ((*(v0[33] + 80))(v0[32]), v4 = static WorkItemQueue.called(on:)(), , (v4))
  {
    v5 = v0[32];
    v6 = v0[33];
    v7 = *(v6 + 40);
    v0[37] = v7;
    v0[38] = (v6 + 40) & 0xFFFFFFFFFFFFLL | 0xEA85000000000000;
    v7(v5);
    v8 = v0[10];
    v9 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v8);
    v10 = (*(v9 + 64))(v8, v9);
    v12 = v11;
    v0[39] = v10;
    v0[40] = v11;
    v0[41] = swift_getObjectType();
    v0[42] = *(v12 + 56);
    v0[43] = (v12 + 56) & 0xFFFFFFFFFFFFLL | 0x8BF000000000000;
    v14 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](PairingCoordinator._cleanUp(), v14, v13);
  }

  else
  {
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    swift_allocError();
    *v15 = 8;
    swift_willThrow();
    v16 = v0[1];

    return v16();
  }
}

{
  (*(v0 + 336))(*(v0 + 328), *(v0 + 320));
  swift_unknownObjectRelease();
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);

  return MEMORY[0x2822009F8](PairingCoordinator._cleanUp(), v1, v2);
}

{
  v25 = v0;
  if (*(v0 + 120))
  {
    outlined init with take of Accessory((v0 + 96), v0 + 16);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    *(v0 + 352) = __swift_project_value_buffer(v1, static Logger.pairingCoordinator);
    outlined init with copy of PairingEligibilityInfo(v0 + 16, v0 + 136);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v24 = v5;
      *v4 = 136315138;
      outlined init with copy of PairingEligibilityInfo(v0 + 136, v0 + 216);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing14PeripheralType_pMd, &_s13FindMyPairing14PeripheralType_pMR);
      v6 = String.init<A>(describing:)();
      v8 = v7;
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, &v24);

      *(v4 + 4) = v9;
      _os_log_impl(&dword_24AF48000, v2, v3, "CleanUp: unpairing %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
      MEMORY[0x24C237030](v5, -1, -1);
      MEMORY[0x24C237030](v4, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
    }

    (*(v0 + 296))(*(v0 + 256), *(v0 + 264));
    v16 = *(v0 + 200);
    v17 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_1((v0 + 176), v16);
    v18 = (*(v17 + 8))(v16, v17);
    v20 = v19;
    *(v0 + 360) = v18;
    ObjectType = swift_getObjectType();
    v23 = (*(v20 + 88) + **(v20 + 88));
    v22 = swift_task_alloc();
    *(v0 + 368) = v22;
    *v22 = v0;
    v22[1] = PairingCoordinator._cleanUp();

    return v23(v0 + 16, ObjectType, v20);
  }

  else
  {
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 96, &_s13FindMyPairing14PeripheralType_pSgMd, &_s13FindMyPairing14PeripheralType_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.pairingCoordinator);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_24AF48000, v11, v12, "CleanUp error: no peripheral to unpair", v13, 2u);
      MEMORY[0x24C237030](v13, -1, -1);
    }

    v14 = *(v0 + 8);

    return v14();
  }
}

{
  v2 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = *(v2 + 280);
    v4 = *(v2 + 288);
    v5 = PairingCoordinator._cleanUp();
  }

  else
  {
    swift_unknownObjectRelease();
    v3 = *(v2 + 280);
    v4 = *(v2 + 288);
    v5 = PairingCoordinator._cleanUp();
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);
  v1 = v0[1];

  return v1();
}

{
  v1 = v0[47];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);
  MEMORY[0x24C236EC0](v1);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[47];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    MEMORY[0x24C236EC0](v5);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_24AF48000, v2, v3, "CleanUp error: %{public}@", v6, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v7, -1, -1);
    MEMORY[0x24C237030](v6, -1, -1);

    MEMORY[0x24C236EB0](v5);
  }

  else
  {
    MEMORY[0x24C236EB0](v0[47]);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v9 = v0[1];

  return v9();
}

uint64_t PairingCoordinator.handlePairingStarted(accessoryIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  (*(a3 + 72))(a2, a3);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v7 + 16))(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = v9;
  (*(v7 + 32))(&v11[v10], &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a2;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  (*(a4 + 72))(a3, a4);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v8 + 16))(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  outlined init with copy of PairingEligibilityInfo(v14, v15);
  v11 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a3;
  *(v12 + 3) = a4;
  *(v12 + 4) = v10;
  (*(v8 + 32))(&v12[v11], &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  outlined init with take of Accessory(v15, &v12[(v9 + v11 + 7) & 0xFFFFFFFFFFFFFFF8]);

  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[55] = a3;
  v4[56] = a4;
  v4[53] = a1;
  v4[54] = a2;
  v5 = type metadata accessor for UUID();
  v4[57] = v5;
  v4[58] = *(v5 - 8);
  v4[59] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:), 0, 0);
}

uint64_t closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[60] = Strong;
  if (Strong)
  {
    v2 = v0[56];
    v0[61] = *(v2 + 16);
    v0[62] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0x20DC000000000000;
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[63] = v4;
    v0[64] = v3;

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:), v4, v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

{
  v1 = (*(v0 + 488))(*(v0 + 440), *(v0 + 448));
  *(v0 + 520) = v1;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:), v1, 0);
}

{
  v1 = *(v0 + 520);
  swift_beginAccess();
  v2 = *(v1 + 120);
  *(v0 + 400) = 3;
  v3 = swift_task_alloc();
  *(v3 + 16) = v0 + 400;

  *(v0 + 57) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v3, v2) & 1;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:), 0, 0);
}

{
  if (*(v0 + 57))
  {
    swift_unknownObjectRelease();

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 448);
    *(v0 + 528) = *(v3 + 40);
    *(v0 + 536) = (v3 + 40) & 0xFFFFFFFFFFFFLL | 0xEA85000000000000;
    v4 = *(v0 + 504);
    v5 = *(v0 + 512);

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:), v4, v5);
  }
}

{
  (*(v0 + 528))(*(v0 + 440), *(v0 + 448));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:), 0, 0);
}

{
  v1 = v0[22];
  v2 = v0[23];
  __swift_project_boxed_opaque_existential_1(v0 + 19, v1);
  v3 = (*(v2 + 64))(v1, v2);
  v5 = v4;
  v0[68] = v3;
  v0[69] = v4;
  v0[70] = swift_getObjectType();
  v0[71] = *(v5 + 16);
  v0[72] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xC23A000000000000;
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:), v7, v6);
}

{
  (*(v0 + 568))(*(v0 + 560), *(v0 + 552));
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:), 0, 0);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 152));
  outlined init with copy of DetectedAccessory(v0 + 112, v0 + 192);
  v1 = *(v0 + 216);
  if (!v1)
  {
    v15 = *(v0 + 448);
    *(v0 + 408) = 3;
    v29 = (*(v15 + 152) + **(v15 + 152));
    v16 = swift_task_alloc();
    *(v0 + 616) = v16;
    *v16 = v0;
    v16[1] = closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:);
    v17 = *(v0 + 440);
    v18 = *(v0 + 448);
    v19 = v0 + 408;
LABEL_13:

    return v29(v19, v17, v18);
  }

  if (v1 == 1)
  {
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    v2 = swift_allocError();
    *v3 = 11;
    swift_willThrow();
    outlined destroy of DetectedAccessory(v0 + 112);
    *(v0 + 688) = v2;
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.pairingCoordinator);
    MEMORY[0x24C236EC0](v2);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    MEMORY[0x24C236EB0](v2);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138543362;
      MEMORY[0x24C236EC0](v2);
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&dword_24AF48000, v5, v6, "Failure in handle Pairing Started: %{public}@", v7, 0xCu);
      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C237030](v8, -1, -1);
      MEMORY[0x24C237030](v7, -1, -1);
    }

    MEMORY[0x24C236EC0](v2);
    v10 = swift_task_alloc();
    *(v0 + 696) = v10;
    *v10 = v0;
    v10[1] = closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:);
    v11 = *(v0 + 440);
    v12 = *(v0 + 448);
    v13 = MEMORY[0x277D84F90];

    return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, v2, v13, v11, v12);
  }

  v21 = *(v0 + 464);
  v20 = *(v0 + 472);
  v22 = *(v0 + 456);
  outlined init with take of Accessory((v0 + 192), v0 + 312);
  v23 = *(v0 + 336);
  v24 = *(v0 + 344);
  __swift_project_boxed_opaque_existential_1((v0 + 312), v23);
  (*(v24 + 8))(v23, v24);
  v25 = static UUID.== infix(_:_:)();
  (*(v21 + 8))(v20, v22);
  if (v25)
  {
    v26 = *(v0 + 448);
    *(v0 + 416) = 3;
    v29 = (*(v26 + 152) + **(v26 + 152));
    v27 = swift_task_alloc();
    *(v0 + 584) = v27;
    *v27 = v0;
    v27[1] = closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:);
    v17 = *(v0 + 440);
    v18 = *(v0 + 448);
    v19 = v0 + 416;
    goto LABEL_13;
  }

  outlined destroy of DetectedAccessory(v0 + 112);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 312));

  v28 = *(v0 + 8);

  return v28();
}

{
  v2 = *v1;
  v2[74] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:), 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[75] = v3;
    *v3 = v2;
    v3[1] = closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:);
    v4 = v2[56];
    v5 = v2[55];

    return PairingCoordinator._proceedWithConnection()(v5, v4);
  }
}

{
  *(*v1 + 608) = v0;

  if (v0)
  {
    v2 = closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:);
  }

  else
  {
    v2 = closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  swift_unknownObjectRelease();
  outlined destroy of DetectedAccessory(v0 + 112);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 312));

  v1 = *(v0 + 8);

  return v1();
}

{
  v2 = *v1;
  *(*v1 + 624) = v0;

  if (v0)
  {
    v3 = closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:);
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v4 = *(v2 + 504);
    v5 = *(v2 + 512);
    v3 = closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:);
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

{
  (*(v0 + 528))(*(v0 + 440), *(v0 + 448));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:), 0, 0);
}

{
  v1 = v0[32];
  v2 = v0[33];
  __swift_project_boxed_opaque_existential_1(v0 + 29, v1);
  v3 = (*(v2 + 32))(v1, v2);
  v0[79] = v3;
  if (v3)
  {
    v5 = v4;
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 29);
    ObjectType = swift_getObjectType();
    v21 = (*(v5 + 24) + **(v5 + 24));
    v7 = swift_task_alloc();
    v0[80] = v7;
    *v7 = v0;
    v7[1] = closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:);

    return v21(v0 + 2, ObjectType, v5);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 29);
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    v9 = swift_allocError();
    *v10 = 13;
    swift_willThrow();
    outlined destroy of DetectedAccessory((v0 + 14));
    v0[86] = v9;
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.pairingCoordinator);
    MEMORY[0x24C236EC0](v9);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    MEMORY[0x24C236EB0](v9);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138543362;
      MEMORY[0x24C236EC0](v9);
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&dword_24AF48000, v12, v13, "Failure in handle Pairing Started: %{public}@", v14, 0xCu);
      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C237030](v15, -1, -1);
      MEMORY[0x24C237030](v14, -1, -1);
    }

    MEMORY[0x24C236EC0](v9);
    v17 = swift_task_alloc();
    v0[87] = v17;
    *v17 = v0;
    v17[1] = closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:);
    v18 = v0[55];
    v19 = v0[56];
    v20 = MEMORY[0x277D84F90];

    return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, v9, v20, v18, v19);
  }
}

{

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:), 0, 0);
}

{
  outlined init with copy of PairingContext?(v0 + 16, v0 + 64, &_ss6ResultOy13FindMyPairing9Accessory_ps5Error_pGMd, &_ss6ResultOy13FindMyPairing9Accessory_ps5Error_pGMR);
  if (*(v0 + 104))
  {
    v1 = *(v0 + 64);
    *(v0 + 664) = v1;
    v2 = swift_task_alloc();
    *(v0 + 672) = v2;
    *v2 = v0;
    v2[1] = closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:);
    v3 = *(v0 + 440);
    v4 = *(v0 + 448);

    return PairingCoordinator._handleAccessoryScannerFailure(_:)(v1, v3, v4);
  }

  else
  {
    outlined init with take of Accessory((v0 + 64), v0 + 272);
    v6 = swift_task_alloc();
    *(v0 + 648) = v6;
    *v6 = v0;
    v6[1] = closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:);
    v7 = *(v0 + 440);
    v8 = *(v0 + 448);

    return PairingCoordinator._handleAccessoryDetection(_:)(v0 + 272, v7, v8);
  }
}

{
  *(*v1 + 656) = v0;

  if (v0)
  {
    v2 = closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:);
  }

  else
  {
    v2 = closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 272));
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 16, &_ss6ResultOy13FindMyPairing9Accessory_ps5Error_pGMd, &_ss6ResultOy13FindMyPairing9Accessory_ps5Error_pGMR);
  outlined destroy of DetectedAccessory(v0 + 112);

  v1 = *(v0 + 8);

  return v1();
}

{
  *(*v1 + 680) = v0;

  if (v0)
  {
    v2 = closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:);
  }

  else
  {
    v2 = closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 664);
  swift_unknownObjectRelease();
  MEMORY[0x24C236EB0](v1);
  swift_unknownObjectRelease();
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 16, &_ss6ResultOy13FindMyPairing9Accessory_ps5Error_pGMd, &_ss6ResultOy13FindMyPairing9Accessory_ps5Error_pGMR);
  outlined destroy of DetectedAccessory(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

{
  v2 = *v1;
  *(*v1 + 704) = v0;

  if (v0)
  {
    v3 = closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:);
  }

  else
  {
    MEMORY[0x24C236EB0](*(v2 + 688));
    v3 = closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 688);
  swift_unknownObjectRelease();
  MEMORY[0x24C236EB0](v1);

  v2 = *(v0 + 8);

  return v2();
}

{
  outlined destroy of DetectedAccessory((v0 + 14));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 39);
  v1 = v0[74];
  v0[86] = v1;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in handle Pairing Started: %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
  }

  MEMORY[0x24C236EC0](v1);
  v8 = swift_task_alloc();
  v0[87] = v8;
  *v8 = v0;
  v8[1] = closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:);
  v9 = v0[55];
  v10 = v0[56];
  v11 = MEMORY[0x277D84F90];

  return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, v1, v11, v9, v10);
}

{
  outlined destroy of DetectedAccessory((v0 + 14));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 39);
  v1 = v0[76];
  v0[86] = v1;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in handle Pairing Started: %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
  }

  MEMORY[0x24C236EC0](v1);
  v8 = swift_task_alloc();
  v0[87] = v8;
  *v8 = v0;
  v8[1] = closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:);
  v9 = v0[55];
  v10 = v0[56];
  v11 = MEMORY[0x277D84F90];

  return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, v1, v11, v9, v10);
}

{
  outlined destroy of DetectedAccessory((v0 + 14));
  v1 = v0[78];
  v0[86] = v1;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in handle Pairing Started: %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
  }

  MEMORY[0x24C236EC0](v1);
  v8 = swift_task_alloc();
  v0[87] = v8;
  *v8 = v0;
  v8[1] = closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:);
  v9 = v0[55];
  v10 = v0[56];
  v11 = MEMORY[0x277D84F90];

  return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, v1, v11, v9, v10);
}

{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 34);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)((v0 + 2), &_ss6ResultOy13FindMyPairing9Accessory_ps5Error_pGMd, &_ss6ResultOy13FindMyPairing9Accessory_ps5Error_pGMR);
  outlined destroy of DetectedAccessory((v0 + 14));
  v1 = v0[82];
  v0[86] = v1;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in handle Pairing Started: %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
  }

  MEMORY[0x24C236EC0](v1);
  v8 = swift_task_alloc();
  v0[87] = v8;
  *v8 = v0;
  v8[1] = closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:);
  v9 = v0[55];
  v10 = v0[56];
  v11 = MEMORY[0x277D84F90];

  return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, v1, v11, v9, v10);
}

{
  MEMORY[0x24C236EB0](v0[83]);
  swift_unknownObjectRelease();
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)((v0 + 2), &_ss6ResultOy13FindMyPairing9Accessory_ps5Error_pGMd, &_ss6ResultOy13FindMyPairing9Accessory_ps5Error_pGMR);
  outlined destroy of DetectedAccessory((v0 + 14));
  v1 = v0[85];
  v0[86] = v1;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in handle Pairing Started: %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
  }

  MEMORY[0x24C236EC0](v1);
  v8 = swift_task_alloc();
  v0[87] = v8;
  *v8 = v0;
  v8[1] = closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:);
  v9 = v0[55];
  v10 = v0[56];
  v11 = MEMORY[0x277D84F90];

  return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, v1, v11, v9, v10);
}

{
  v1 = *(v0 + 688);
  MEMORY[0x24C236EB0](v1);
  MEMORY[0x24C236EB0](v1);
  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t PairingCoordinator._proceedWithConnection()(uint64_t a1, uint64_t a2)
{
  v3[71] = v2;
  v3[70] = a2;
  v3[69] = a1;
  v5 = type metadata accessor for UUID();
  v3[72] = v5;
  v3[73] = *(v5 - 8);
  v3[74] = swift_task_alloc();
  v3[75] = *(a2 + 8);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[76] = v7;
  v3[77] = v6;

  return MEMORY[0x2822009F8](PairingCoordinator._proceedWithConnection(), v7, v6);
}

uint64_t PairingCoordinator._proceedWithConnection()()
{
  v1 = v0[70];
  v2 = v0[69];
  type metadata accessor for WorkItemQueue();
  (*(v1 + 72))(v2, v1);
  v3 = static WorkItemQueue.called(on:)();

  if (v3)
  {
    v4 = swift_task_alloc();
    v0[78] = v4;
    *v4 = v0;
    v4[1] = PairingCoordinator._proceedWithConnection();
    v5 = v0[70];
    v6 = v0[69];

    return PairingCoordinator._nextPairingFlowStep()(v6, v5);
  }

  else
  {
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    swift_allocError();
    *v8 = 8;
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }
}

{
  if (*(v0 + 904) <= 1u)
  {
    if (*(v0 + 904))
    {
      v1 = swift_task_alloc();
      *(v0 + 632) = v1;
      *v1 = v0;
      v1[1] = PairingCoordinator._proceedWithConnection();
      v2 = *(v0 + 560);
      v3 = *(v0 + 552);
      v4 = MEMORY[0x277D84F90];

      return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, 0, v4, v3, v2);
    }

    goto LABEL_7;
  }

  if (*(v0 + 904) == 2)
  {
LABEL_7:

    v6 = *(v0 + 8);

    return v6();
  }

  v7 = *(v0 + 552);
  v8 = *(v0 + 560);
  v9 = *(v8 + 40);
  *(v0 + 640) = v9;
  *(v0 + 648) = (v8 + 40) & 0xFFFFFFFFFFFFLL | 0xEA85000000000000;
  v9(v7);
  v10 = *(v0 + 80);
  v11 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v10);
  v12 = (*(v11 + 64))(v10, v11);
  v14 = v13;
  *(v0 + 656) = v12;
  *(v0 + 664) = v13;
  *(v0 + 672) = swift_getObjectType();
  *(v0 + 680) = *(v14 + 16);
  *(v0 + 688) = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xC23A000000000000;
  v16 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](PairingCoordinator._proceedWithConnection(), v16, v15);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

{
  (*(v0 + 680))(*(v0 + 672), *(v0 + 664));
  swift_unknownObjectRelease();
  v1 = *(v0 + 616);
  v2 = *(v0 + 608);

  return MEMORY[0x2822009F8](PairingCoordinator._proceedWithConnection(), v2, v1);
}

{
  if (*(v0 + 120) >= 2uLL)
  {
    v14 = *(v0 + 640);
    v15 = *(v0 + 560);
    v16 = *(v0 + 552);
    outlined init with take of Accessory((v0 + 96), v0 + 16);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    v14(v16, v15);
    v17 = *(v0 + 200);
    v18 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_1((v0 + 176), v17);
    v19 = (*(v18 + 64))(v17, v18);
    v21 = v20;
    *(v0 + 696) = v19;
    *(v0 + 704) = v20;
    *(v0 + 712) = swift_getObjectType();
    *(v0 + 720) = *(v21 + 56);
    *(v0 + 728) = (v21 + 56) & 0xFFFFFFFFFFFFLL | 0x8BF000000000000;
    v23 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](PairingCoordinator._proceedWithConnection(), v23, v22);
  }

  else
  {
    outlined destroy of DetectedAccessory(v0 + 96);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    v1 = swift_allocError();
    *v2 = 12;
    swift_willThrow();
    *(v0 + 880) = v1;
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.pairingCoordinator);
    MEMORY[0x24C236EC0](v1);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    MEMORY[0x24C236EB0](v1);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138543362;
      MEMORY[0x24C236EC0](v1);
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v8;
      *v7 = v8;
      _os_log_impl(&dword_24AF48000, v4, v5, "Failure in _pairAccessory %{public}@", v6, 0xCu);
      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C237030](v7, -1, -1);
      MEMORY[0x24C237030](v6, -1, -1);
    }

    MEMORY[0x24C236EC0](v1);
    v9 = swift_task_alloc();
    *(v0 + 888) = v9;
    *v9 = v0;
    v9[1] = PairingCoordinator._proceedWithConnection();
    v10 = *(v0 + 560);
    v11 = *(v0 + 552);
    v12 = MEMORY[0x277D84F90];

    return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, v1, v12, v11, v10);
  }
}

{
  (*(v0 + 720))(*(v0 + 712), *(v0 + 704));
  swift_unknownObjectRelease();
  v1 = *(v0 + 616);
  v2 = *(v0 + 608);

  return MEMORY[0x2822009F8](PairingCoordinator._proceedWithConnection(), v2, v1);
}

{
  if (*(v0 + 240))
  {
    v18 = *(v0 + 560);
    outlined init with take of Accessory((v0 + 216), v0 + 136);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
    *(v0 + 544) = 9;
    v17 = (*(v18 + 152) + **(v18 + 152));
    v1 = swift_task_alloc();
    *(v0 + 736) = v1;
    *v1 = v0;
    v1[1] = PairingCoordinator._proceedWithConnection();
    v2 = *(v0 + 560);
    v3 = *(v0 + 552);

    return v17(v0 + 544, v3, v2);
  }

  else
  {
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 216, &_s13FindMyPairing14PeripheralType_pSgMd, &_s13FindMyPairing14PeripheralType_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    v5 = swift_allocError();
    *v6 = 1;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    *(v0 + 880) = v5;
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.pairingCoordinator);
    MEMORY[0x24C236EC0](v5);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    MEMORY[0x24C236EB0](v5);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138543362;
      MEMORY[0x24C236EC0](v5);
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&dword_24AF48000, v8, v9, "Failure in _pairAccessory %{public}@", v10, 0xCu);
      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C237030](v11, -1, -1);
      MEMORY[0x24C237030](v10, -1, -1);
    }

    MEMORY[0x24C236EC0](v5);
    v13 = swift_task_alloc();
    *(v0 + 888) = v13;
    *v13 = v0;
    v13[1] = PairingCoordinator._proceedWithConnection();
    v14 = *(v0 + 560);
    v15 = *(v0 + 552);
    v16 = MEMORY[0x277D84F90];

    return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, v5, v16, v15, v14);
  }
}

{
  v2 = *v1;
  *(*v1 + 744) = v0;

  v3 = *(v2 + 616);
  v4 = *(v2 + 608);
  if (v0)
  {
    v5 = PairingCoordinator._proceedWithConnection();
  }

  else
  {
    v5 = PairingCoordinator._proceedWithConnection();
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v31 = v0;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[94] = __swift_project_value_buffer(v1, static Logger.pairingCoordinator);
  outlined init with copy of PairingEligibilityInfo((v0 + 2), (v0 + 32));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[74];
    v5 = v0[73];
    v29 = v0[72];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v30 = v7;
    *v6 = 141558275;
    *(v6 + 4) = 1752392040;
    *(v6 + 12) = 2081;
    v8 = v0[35];
    v9 = v0[36];
    __swift_project_boxed_opaque_existential_1(v0 + 32, v8);
    (*(v9 + 8))(v8, v9);
    lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    (*(v5 + 8))(v4, v29);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v30);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_24AF48000, v2, v3, "Start pairing for %{private,mask.hash}s", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x24C237030](v7, -1, -1);
    MEMORY[0x24C237030](v6, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);
  }

  v14 = v0[80];
  v15 = v0[70];
  v16 = v0[69];
  v14(v16, v15);
  v17 = v0[40];
  v18 = v0[41];
  __swift_project_boxed_opaque_existential_1(v0 + 37, v17);
  v19 = (*(v18 + 72))(v17, v18);
  v0[66] = v19;
  v0[67] = v20;
  v0[95] = v19;
  v14(v16, v15);
  v21 = v0[45];
  v22 = v0[46];
  __swift_project_boxed_opaque_existential_1(v0 + 42, v21);
  v23 = (*(v22 + 64))(v21, v22);
  v25 = v24;
  v0[96] = v23;
  v0[97] = v24;
  v0[98] = swift_getObjectType();
  v0[99] = *(v25 + 136);
  v0[100] = (v25 + 136) & 0xFFFFFFFFFFFFLL | 0xE287000000000000;
  v27 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](PairingCoordinator._proceedWithConnection(), v27, v26);
}

{
  v1 = *(v0 + 744);
  (*(v0 + 792))(*(v0 + 784), *(v0 + 776));
  *(v0 + 808) = v1;
  if (v1)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v2 = *(v0 + 616);
    v3 = *(v0 + 608);
    v4 = PairingCoordinator._proceedWithConnection();
  }

  else
  {
    *(v0 + 816) = *(v0 + 536);
    *(v0 + 824) = swift_getObjectType();
    v2 = *(v0 + 616);
    v3 = *(v0 + 608);
    v4 = PairingCoordinator._proceedWithConnection();
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

{
  swift_unknownObjectRelease();
  v1 = swift_task_alloc();
  v0[104] = v1;
  *v1 = v0;
  v1[1] = PairingCoordinator._proceedWithConnection();
  v2 = v0[103];
  v3 = v0[102];

  return PairingExecutorFactory._pairingExecutors(for:)((v0 + 47), v2, v3);
}

{
  v1 = v0[106];
  v41 = v0[80];
  v2 = v0[70];
  v3 = v0[69];
  v4 = (*(v2 + 56))(v0 + 62, v3, v2);
  v7 = *(v5 + 24);
  v6 = *(v5 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v7);
  (*(v6 + 88))(v1, v7, v6);
  v4(v0 + 62, 0);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 37);
  v41(v3, v2);
  v8 = v0[55];
  v9 = v0[56];
  __swift_project_boxed_opaque_existential_1(v0 + 52, v8);
  v10 = (*(v9 + 80))(v8, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 52);
  v11 = *(v10 + 16);

  if (v11)
  {
    v12 = (v0 + 69);
    swift_unknownObjectRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = v0[80];
      v16 = v0[70];
      v17 = v0[69];
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      v15(v17, v16);
      v19 = v0[60];
      v20 = v0[61];
      __swift_project_boxed_opaque_existential_1(v0 + 57, v19);
      v21 = *(v20 + 80);
      v22 = v20;
      v12 = (v0 + 69);
      v23 = v21(v19, v22);
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 57);
      v24 = *(v23 + 16);

      *(v18 + 4) = v24;
      swift_unknownObjectRelease();
      _os_log_impl(&dword_24AF48000, v13, v14, "%ld pairing executors created.", v18, 0xCu);
      MEMORY[0x24C237030](v18, -1, -1);
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v38 = swift_allocObject();
    v0[107] = v38;
    v42 = *v12;
    swift_unknownObjectWeakInit();
    v39 = swift_task_alloc();
    v0[108] = v39;
    *(v39 + 16) = v42;
    *(v39 + 32) = v38;
    *(v39 + 40) = v0 + 17;
    v40 = swift_task_alloc();
    v0[109] = v40;
    *v40 = v0;
    v40[1] = PairingCoordinator._proceedWithConnection();

    return MEMORY[0x282200600]();
  }

  else
  {
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    v25 = swift_allocError();
    *v26 = 2;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
    v0[110] = v25;
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.pairingCoordinator);
    MEMORY[0x24C236EC0](v25);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    MEMORY[0x24C236EB0](v25);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138543362;
      MEMORY[0x24C236EC0](v25);
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v32;
      *v31 = v32;
      _os_log_impl(&dword_24AF48000, v28, v29, "Failure in _pairAccessory %{public}@", v30, 0xCu);
      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v31, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C237030](v31, -1, -1);
      MEMORY[0x24C237030](v30, -1, -1);
    }

    MEMORY[0x24C236EC0](v25);
    v33 = swift_task_alloc();
    v0[111] = v33;
    *v33 = v0;
    v33[1] = PairingCoordinator._proceedWithConnection();
    v34 = v0[70];
    v35 = v0[69];
    v36 = MEMORY[0x277D84F90];

    return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, v25, v36, v35, v34);
  }
}

{
  v1 = *v0;

  v2 = *(v1 + 616);
  v3 = *(v1 + 608);

  return MEMORY[0x2822009F8](PairingCoordinator._proceedWithConnection(), v3, v2);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);

  v1 = v0[1];

  return v1();
}

{
  v2 = *v1;
  *(*v1 + 896) = v0;

  if (v0)
  {
    v3 = v2[77];
    v4 = v2[76];
    v5 = PairingCoordinator._proceedWithConnection();
  }

  else
  {
    MEMORY[0x24C236EB0](v2[110]);
    v3 = v2[77];
    v4 = v2[76];
    v5 = PairingCoordinator._proceedWithConnection();
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  MEMORY[0x24C236EB0](*(v0 + 880));

  v1 = *(v0 + 8);

  return v1();
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  v1 = v0[93];
  v0[110] = v1;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in _pairAccessory %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
  }

  MEMORY[0x24C236EC0](v1);
  v8 = swift_task_alloc();
  v0[111] = v8;
  *v8 = v0;
  v8[1] = PairingCoordinator._proceedWithConnection();
  v9 = v0[70];
  v10 = v0[69];
  v11 = MEMORY[0x277D84F90];

  return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, v1, v11, v10, v9);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 42);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 37);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  v1 = v0[101];
  v0[110] = v1;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in _pairAccessory %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
  }

  MEMORY[0x24C236EC0](v1);
  v8 = swift_task_alloc();
  v0[111] = v8;
  *v8 = v0;
  v8[1] = PairingCoordinator._proceedWithConnection();
  v9 = v0[70];
  v10 = v0[69];
  v11 = MEMORY[0x277D84F90];

  return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, v1, v11, v10, v9);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 42);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 37);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  v1 = v0[105];
  v0[110] = v1;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    MEMORY[0x24C236EC0](v1);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in _pairAccessory %{public}@", v5, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
  }

  MEMORY[0x24C236EC0](v1);
  v8 = swift_task_alloc();
  v0[111] = v8;
  *v8 = v0;
  v8[1] = PairingCoordinator._proceedWithConnection();
  v9 = v0[70];
  v10 = v0[69];
  v11 = MEMORY[0x277D84F90];

  return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, v1, v11, v10, v9);
}

{
  v1 = *(v0 + 880);
  MEMORY[0x24C236EB0](v1);
  MEMORY[0x24C236EB0](v1);

  v2 = *(v0 + 8);

  return v2();
}