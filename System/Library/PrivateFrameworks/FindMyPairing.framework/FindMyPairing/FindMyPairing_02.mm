uint64_t PairingCoordinator._proceedWithConnection()(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 904) = a1;
    v8 = *(v4 + 616);
    v9 = *(v4 + 608);

    return MEMORY[0x2822009F8](PairingCoordinator._proceedWithConnection(), v9, v8);
  }
}

uint64_t PairingCoordinator._proceedWithConnection()(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 840) = v1;

  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v4 + 47);
    swift_unknownObjectRelease();
    v5 = v4[77];
    v6 = v4[76];
    v7 = PairingCoordinator._proceedWithConnection();
  }

  else
  {
    v4[106] = a1;
    __swift_destroy_boxed_opaque_existential_1Tm(v4 + 47);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm(v4 + 42);
    v5 = v4[77];
    v6 = v4[76];
    v7 = PairingCoordinator._proceedWithConnection();
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t PairingCoordinator._handleAccessoryDetection(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v5 = type metadata accessor for UUID();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[20] = v7;
  v4[21] = v6;

  return MEMORY[0x2822009F8](PairingCoordinator._handleAccessoryDetection(_:), v7, v6);
}

uint64_t PairingCoordinator._handleAccessoryDetection(_:)()
{
  v1 = v0[15];
  v2 = v0[14];
  type metadata accessor for WorkItemQueue();
  (*(v1 + 72))(v2, v1);
  v3 = static WorkItemQueue.called(on:)();

  if (v3)
  {
    v5 = v0[13];
    v4 = v0[14];
    v6 = v0[15];
    v7 = *(v6 + 40);
    v0[22] = v7;
    v0[23] = (v6 + 40) & 0xFFFFFFFFFFFFLL | 0xEA85000000000000;
    v7(v4);
    v8 = v0[5];
    v9 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
    v0[24] = (*(v9 + 64))(v8, v9);
    v0[25] = v10;
    v0[26] = swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13FindMyPairing9Accessory_pGMd, &_ss23_ContiguousArrayStorageCy13FindMyPairing9Accessory_pGMR);
    v11 = swift_allocObject();
    v0[27] = v11;
    *(v11 + 16) = xmmword_24AFB0430;
    outlined init with copy of PairingEligibilityInfo(v5, v11 + 32);
    v13 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](PairingCoordinator._handleAccessoryDetection(_:), v13, v12);
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
  PairingInfoStore.updateAccessories(_:)(v0[27]);
  v0[28]._rawValue = v1;
  if (v1)
  {
    rawValue = v0[20]._rawValue;
    v3 = v0[21]._rawValue;
    v4 = PairingCoordinator._handleAccessoryDetection(_:);
  }

  else
  {
    swift_unknownObjectRelease();

    rawValue = v0[20]._rawValue;
    v3 = v0[21]._rawValue;
    v4 = PairingCoordinator._handleAccessoryDetection(_:);
  }

  return MEMORY[0x2822009F8](v4, rawValue, v3);
}

{
  v1 = v0[22];
  v2 = v0[15];
  v3 = v0[14];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1(v3, v2);
  v4 = v0[10];
  v5 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v4);
  v6 = (*(v5 + 48))(v4, v5);
  v0[29] = v6;
  if (v6)
  {
    v8 = v0[13];
    v0[30] = v7;
    v9 = v7;
    v0[31] = swift_getObjectType();
    v10 = v8[3];
    v11 = v8[4];
    __swift_project_boxed_opaque_existential_1(v8, v10);
    (*(v11 + 8))(v10, v11);
    v0[32] = *(v9 + 40);
    v0[33] = (v9 + 40) & 0xFFFFFFFFFFFFLL | 0x9435000000000000;
    v13 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](PairingCoordinator._handleAccessoryDetection(_:), v13, v12);
  }

  else
  {
    v19 = v0[15];
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
    v0[12] = 4;
    v18 = (*(v19 + 152) + **(v19 + 152));
    v14 = swift_task_alloc();
    v0[34] = v14;
    *v14 = v0;
    v14[1] = PairingCoordinator._handleAccessoryDetection(_:);
    v15 = v0[15];
    v16 = v0[14];

    return v18(v0 + 12, v16, v15);
  }
}

{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  (*(v0 + 256))(v1, *(v0 + 248), *(v0 + 240));
  swift_unknownObjectRelease();
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 160);
  v5 = *(v0 + 168);

  return MEMORY[0x2822009F8](PairingCoordinator._handleAccessoryDetection(_:), v4, v5);
}

{
  v6 = v0[15];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v0[12] = 4;
  v5 = (*(v6 + 152) + **(v6 + 152));
  v1 = swift_task_alloc();
  v0[34] = v1;
  *v1 = v0;
  v1[1] = PairingCoordinator._handleAccessoryDetection(_:);
  v2 = v0[15];
  v3 = v0[14];

  return v5(v0 + 12, v3, v2);
}

{
  v2 = *v1;
  v2[35] = v0;

  if (v0)
  {
    v3 = v2[20];
    v4 = v2[21];

    return MEMORY[0x2822009F8](PairingCoordinator._handleAccessoryDetection(_:), v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

{
  v2 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = v2[20];
    v4 = v2[21];
    v5 = PairingCoordinator._handleAccessoryDetection(_:);
  }

  else
  {
    MEMORY[0x24C236EB0](v2[36]);
    v3 = v2[20];
    v4 = v2[21];
    v5 = PairingCoordinator._handleAccessoryDetection(_:);
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{
  MEMORY[0x24C236EB0](*(v0 + 288));

  v1 = *(v0 + 8);

  return v1();
}

{
  v15 = v0;

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[28];
  v0[36] = v1;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[37] = __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v5 = 136315394;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x800000024AFAF7F0, &v14);
    *(v5 + 12) = 2114;
    MEMORY[0x24C236EC0](v1);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in %s: %{public}@", v5, 0x16u);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x24C237030](v7, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
  }

  MEMORY[0x24C236EC0](v1);
  v9 = swift_task_alloc();
  v0[38] = v9;
  *v9 = v0;
  v9[1] = PairingCoordinator._handleAccessoryDetection(_:);
  v10 = v0[15];
  v11 = v0[14];
  v12 = MEMORY[0x277D84F90];

  return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, v1, v12, v11, v10);
}

{
  v15 = v0;
  v1 = v0[35];
  v0[36] = v1;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[37] = __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v5 = 136315394;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x800000024AFAF7F0, &v14);
    *(v5 + 12) = 2114;
    MEMORY[0x24C236EC0](v1);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in %s: %{public}@", v5, 0x16u);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x24C237030](v7, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
  }

  MEMORY[0x24C236EC0](v1);
  v9 = swift_task_alloc();
  v0[38] = v9;
  *v9 = v0;
  v9[1] = PairingCoordinator._handleAccessoryDetection(_:);
  v10 = v0[15];
  v11 = v0[14];
  v12 = MEMORY[0x277D84F90];

  return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, v1, v12, v11, v10);
}

{
  v1 = v0[39];
  MEMORY[0x24C236EB0](v0[36]);
  MEMORY[0x24C236EC0](v1);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[39];
  v6 = v0[36];
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
    MEMORY[0x24C236EB0](v6);
    MEMORY[0x24C236EB0](v5);
  }

  else
  {
    MEMORY[0x24C236EB0](v0[36]);

    MEMORY[0x24C236EB0](v5);
  }

  v10 = v0[1];

  return v10();
}

uint64_t PairingCoordinator._handleAccessoryScannerFailure(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](PairingCoordinator._handleAccessoryScannerFailure(_:), v6, v5);
}

uint64_t PairingCoordinator._handleAccessoryScannerFailure(_:)()
{
  v22 = v0;
  v1 = v0[4];
  v2 = v0[3];
  type metadata accessor for WorkItemQueue();
  (*(v1 + 72))(v2, v1);
  v3 = static WorkItemQueue.called(on:)();

  if (v3)
  {
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v4 = v0[2];
    v5 = type metadata accessor for Logger();
    v0[8] = __swift_project_value_buffer(v5, static Logger.pairingCoordinator);
    MEMORY[0x24C236EC0](v4);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    MEMORY[0x24C236EB0](v4);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[2];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21 = v11;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x800000024AFAF810, &v21);
      *(v9 + 12) = 2114;
      MEMORY[0x24C236EC0](v8);
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v12;
      *v10 = v12;
      _os_log_impl(&dword_24AF48000, v6, v7, "Failure in %s: %{public}@", v9, 0x16u);
      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C237030](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x24C237030](v11, -1, -1);
      MEMORY[0x24C237030](v9, -1, -1);
    }

    v13 = v0[2];
    v14 = swift_task_alloc();
    v0[9] = v14;
    *v14 = v0;
    v14[1] = PairingCoordinator._handleAccessoryScannerFailure(_:);
    v15 = v0[4];
    v16 = v0[3];
    v17 = MEMORY[0x277D84F90];

    return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, v13, v17, v16, v15);
  }

  else
  {
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    swift_allocError();
    *v19 = 8;
    swift_willThrow();
    v20 = v0[1];

    return v20();
  }
}

{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {
    v3 = v2[6];
    v4 = v2[7];

    return MEMORY[0x2822009F8](PairingCoordinator._handleAccessoryScannerFailure(_:), v3, v4);
  }

  else
  {
    v5 = v2[1];

    return v5();
  }
}

{
  v1 = *(v0 + 80);
  MEMORY[0x24C236EC0](v1);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 80);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    MEMORY[0x24C236EC0](v5);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_24AF48000, v2, v3, "Failure in end pairing: %{public}@", v6, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v7, -1, -1);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C236EB0](v5);
  }

  else
  {

    MEMORY[0x24C236EB0](v5);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[34] = a4;
  v5[35] = a5;
  v5[32] = a2;
  v5[33] = a3;
  v5[31] = a1;
  v6 = type metadata accessor for UUID();
  v5[36] = v6;
  v5[37] = *(v6 - 8);
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:), 0, 0);
}

uint64_t closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[40] = Strong;
  if (Strong)
  {
    v2 = v0[35];
    v0[41] = *(v2 + 16);
    v0[42] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0x20DC000000000000;
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[43] = v4;
    v0[44] = v3;

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:), v4, v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

{
  v1 = (*(v0 + 328))(*(v0 + 272), *(v0 + 280));
  *(v0 + 360) = v1;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:), v1, 0);
}

{
  v1 = *(v0 + 360);
  swift_beginAccess();
  v2 = *(v1 + 120);
  *(v0 + 224) = 10;
  v3 = swift_task_alloc();
  *(v3 + 16) = v0 + 224;

  v4 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v3, v2);

  if (v4)
  {

    v5 = closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:);
  }

  else
  {
    v6 = *(v1 + 120);
    *(v0 + 232) = 14;
    v7 = swift_task_alloc();
    *(v7 + 16) = v0 + 232;

    *(v0 + 560) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v7, v6) & 1;

    v5 = closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
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
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24AF48000, v2, v3, "Already handled accessory configuration.", v4, 2u);
    MEMORY[0x24C237030](v4, -1, -1);
  }

  swift_unknownObjectRelease();

  v5 = *(v0 + 8);

  return v5();
}

{
  if (*(v0 + 560))
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
      _os_log_impl(&dword_24AF48000, v2, v3, "Already handled accessory configuration.", v4, 2u);
      MEMORY[0x24C237030](v4, -1, -1);
    }

    swift_unknownObjectRelease();

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 280);
    *(v0 + 368) = *(v7 + 40);
    *(v0 + 376) = (v7 + 40) & 0xFFFFFFFFFFFFLL | 0xEA85000000000000;
    v8 = *(v0 + 344);
    v9 = *(v0 + 352);

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:), v8, v9);
  }
}

{
  (*(v0 + 368))(*(v0 + 272), *(v0 + 280));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:), 0, 0);
}

{
  v1 = v0[10];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = (*(v2 + 64))(v1, v2);
  v5 = v4;
  v0[48] = v3;
  v0[49] = v4;
  v0[50] = swift_getObjectType();
  v0[51] = *(v5 + 16);
  v0[52] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xC23A000000000000;
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:), v7, v6);
}

{
  (*(v0 + 408))(*(v0 + 400), *(v0 + 392));
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:), 0, 0);
}

{
  v39 = v0;
  if (*(v0 + 120) <= 1uLL)
  {
    outlined destroy of DetectedAccessory(v0 + 96);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    v1 = swift_allocError();
    *v2 = 12;
    swift_willThrow();
LABEL_8:
    *(v0 + 528) = v1;
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 296);
    v14 = *(v0 + 304);
    v16 = *(v0 + 288);
    v17 = *(v0 + 256);
    v18 = type metadata accessor for Logger();
    *(v0 + 536) = __swift_project_value_buffer(v18, static Logger.pairingCoordinator);
    (*(v15 + 16))(v14, v17, v16);
    MEMORY[0x24C236EC0](v1);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    MEMORY[0x24C236EB0](v1);
    v21 = os_log_type_enabled(v19, v20);
    v23 = *(v0 + 296);
    v22 = *(v0 + 304);
    v24 = *(v0 + 288);
    if (v21)
    {
      v25 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38[0] = v37;
      *v25 = 136315907;
      *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003DLL, 0x800000024AFAF840, v38);
      *(v25 + 12) = 2160;
      *(v25 + 14) = 1752392040;
      *(v25 + 22) = 2081;
      lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      (*(v23 + 8))(v22, v24);
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, v38);

      *(v25 + 24) = v29;
      *(v25 + 32) = 2114;
      MEMORY[0x24C236EC0](v1);
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 34) = v30;
      *v35 = v30;
      _os_log_impl(&dword_24AF48000, v19, v20, "Failure in %s for %{private,mask.hash}s: %{public}@", v25, 0x2Au);
      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v35, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C237030](v35, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x24C237030](v37, -1, -1);
      MEMORY[0x24C237030](v25, -1, -1);
    }

    else
    {

      (*(v23 + 8))(v22, v24);
    }

    MEMORY[0x24C236EC0](v1);
    v31 = swift_task_alloc();
    *(v0 + 544) = v31;
    *v31 = v0;
    v31[1] = closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:);
    v32 = *(v0 + 272);
    v33 = *(v0 + 280);
    v34 = MEMORY[0x277D84F90];

    return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, v1, v34, v32, v33);
  }

  v3 = *(v0 + 312);
  v4 = *(v0 + 288);
  v5 = *(v0 + 296);
  outlined init with take of Accessory((v0 + 96), v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v6);
  (*(v7 + 8))(v6, v7);
  v8 = static UUID.== infix(_:_:)();
  (*(v5 + 8))(v3, v4);
  if ((v8 & 1) == 0)
  {
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    v1 = swift_allocError();
    *v13 = 14;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    goto LABEL_8;
  }

  *(v0 + 240) = 10;
  v36 = (*(*(v0 + 280) + 152) + **(*(v0 + 280) + 152));
  v9 = swift_task_alloc();
  *(v0 + 424) = v9;
  *v9 = v0;
  v9[1] = closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:);
  v10 = *(v0 + 272);
  v11 = *(v0 + 280);

  return v36(v0 + 240, v10, v11);
}

{
  v2 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v3 = closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:);
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v4 = *(v2 + 344);
    v5 = *(v2 + 352);
    v3 = closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:);
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

{
  (*(v0 + 368))(*(v0 + 272), *(v0 + 280));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:), 0, 0);
}

{
  v1 = v0[33];
  v2 = v0[20];
  v3 = v0[21];
  __swift_project_boxed_opaque_existential_1(v0 + 17, v2);
  v4 = (*(v3 + 64))(v2, v3);
  v6 = v5;
  v0[55] = v4;
  v0[56] = v5;
  v0[57] = swift_getObjectType();
  v7 = v1[3];
  v0[58] = v7;
  v0[59] = v1[4];
  v0[60] = __swift_project_boxed_opaque_existential_1(v1, v7);
  v0[61] = *(v6 + 168);
  v0[62] = (v6 + 168) & 0xFFFFFFFFFFFFLL | 0x2A15000000000000;
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:), v9, v8);
}

{
  v1 = *(v0 + 432);
  (*(v0 + 488))(*(v0 + 480), *(v0 + 464), *(v0 + 472), *(v0 + 456), *(v0 + 448));
  *(v0 + 504) = v1;
  if (v1)
  {
    v2 = closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:);
  }

  else
  {
    v2 = closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  v1 = swift_task_alloc();
  v0[64] = v1;
  *v1 = v0;
  v1[1] = closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:);
  v3 = v0[34];
  v2 = v0[35];

  return PairingCoordinator._finishPairingIfPossible()(v3, v2);
}

{
  *(*v1 + 520) = v0;

  if (v0)
  {
    v2 = closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:);
  }

  else
  {
    v2 = closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

{
  v2 = *v1;
  *(*v1 + 552) = v0;

  if (v0)
  {
    v3 = closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:);
  }

  else
  {
    MEMORY[0x24C236EB0](*(v2 + 528));
    v3 = closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 528);
  swift_unknownObjectRelease();
  MEMORY[0x24C236EB0](v1);

  v2 = *(v0 + 8);

  return v2();
}

{
  v27 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[54];
  v0[66] = v1;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[36];
  v5 = v0[32];
  v6 = type metadata accessor for Logger();
  v0[67] = __swift_project_value_buffer(v6, static Logger.pairingCoordinator);
  (*(v3 + 16))(v2, v5, v4);
  MEMORY[0x24C236EC0](v1);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[37];
  v10 = v0[38];
  v12 = v0[36];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v13 = 136315907;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003DLL, 0x800000024AFAF840, &v26);
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v26);

    *(v13 + 24) = v17;
    *(v13 + 32) = 2114;
    MEMORY[0x24C236EC0](v1);
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 34) = v18;
    *v24 = v18;
    _os_log_impl(&dword_24AF48000, v7, v8, "Failure in %s for %{private,mask.hash}s: %{public}@", v13, 0x2Au);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v24, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C237030](v25, -1, -1);
    MEMORY[0x24C237030](v13, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  MEMORY[0x24C236EC0](v1);
  v19 = swift_task_alloc();
  v0[68] = v19;
  *v19 = v0;
  v19[1] = closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:);
  v20 = v0[34];
  v21 = v0[35];
  v22 = MEMORY[0x277D84F90];

  return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, v1, v22, v20, v21);
}

{
  v27 = v0;
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[63];
  v0[66] = v1;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[36];
  v5 = v0[32];
  v6 = type metadata accessor for Logger();
  v0[67] = __swift_project_value_buffer(v6, static Logger.pairingCoordinator);
  (*(v3 + 16))(v2, v5, v4);
  MEMORY[0x24C236EC0](v1);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[37];
  v10 = v0[38];
  v12 = v0[36];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v13 = 136315907;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003DLL, 0x800000024AFAF840, &v26);
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v26);

    *(v13 + 24) = v17;
    *(v13 + 32) = 2114;
    MEMORY[0x24C236EC0](v1);
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 34) = v18;
    *v24 = v18;
    _os_log_impl(&dword_24AF48000, v7, v8, "Failure in %s for %{private,mask.hash}s: %{public}@", v13, 0x2Au);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v24, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C237030](v25, -1, -1);
    MEMORY[0x24C237030](v13, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  MEMORY[0x24C236EC0](v1);
  v19 = swift_task_alloc();
  v0[68] = v19;
  *v19 = v0;
  v19[1] = closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:);
  v20 = v0[34];
  v21 = v0[35];
  v22 = MEMORY[0x277D84F90];

  return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, v1, v22, v20, v21);
}

{
  v27 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[65];
  v0[66] = v1;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[36];
  v5 = v0[32];
  v6 = type metadata accessor for Logger();
  v0[67] = __swift_project_value_buffer(v6, static Logger.pairingCoordinator);
  (*(v3 + 16))(v2, v5, v4);
  MEMORY[0x24C236EC0](v1);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[37];
  v10 = v0[38];
  v12 = v0[36];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v13 = 136315907;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003DLL, 0x800000024AFAF840, &v26);
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v26);

    *(v13 + 24) = v17;
    *(v13 + 32) = 2114;
    MEMORY[0x24C236EC0](v1);
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 34) = v18;
    *v24 = v18;
    _os_log_impl(&dword_24AF48000, v7, v8, "Failure in %s for %{private,mask.hash}s: %{public}@", v13, 0x2Au);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v24, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C237030](v25, -1, -1);
    MEMORY[0x24C237030](v13, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  MEMORY[0x24C236EC0](v1);
  v19 = swift_task_alloc();
  v0[68] = v19;
  *v19 = v0;
  v19[1] = closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:);
  v20 = v0[34];
  v21 = v0[35];
  v22 = MEMORY[0x277D84F90];

  return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, v1, v22, v20, v21);
}

{
  v1 = v0[69];
  MEMORY[0x24C236EB0](v0[66]);
  MEMORY[0x24C236EC0](v1);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[69];
  v6 = v0[66];
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

uint64_t PairingCoordinator._finishPairingIfPossible()(uint64_t a1, uint64_t a2)
{
  v3[35] = a2;
  v3[36] = v2;
  v3[34] = a1;
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[37] = v5;
  v3[38] = v4;

  return MEMORY[0x2822009F8](PairingCoordinator._finishPairingIfPossible(), v5, v4);
}

uint64_t PairingCoordinator._finishPairingIfPossible()()
{
  v1 = v0[35];
  v2 = v0[34];
  type metadata accessor for WorkItemQueue();
  (*(v1 + 72))(v2, v1);
  v3 = static WorkItemQueue.called(on:)();

  if (v3)
  {
    (*(v0[35] + 40))(v0[34]);
    v4 = v0[22];
    v5 = v0[23];
    __swift_project_boxed_opaque_existential_1(v0 + 19, v4);
    v6 = (*(v5 + 64))(v4, v5);
    v8 = v7;
    v0[39] = v6;
    v0[40] = v7;
    v0[41] = swift_getObjectType();
    v0[42] = *(v8 + 128);
    v0[43] = (v8 + 128) & 0xFFFFFFFFFFFFLL | 0x4BD000000000000;
    v10 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](PairingCoordinator._finishPairingIfPossible(), v10, v9);
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
  (*(v0 + 336))(*(v0 + 328), *(v0 + 320));
  swift_unknownObjectRelease();
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);

  return MEMORY[0x2822009F8](PairingCoordinator._finishPairingIfPossible(), v1, v2);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 19);
  v1 = swift_task_alloc();
  v0[44] = v1;
  *v1 = v0;
  v1[1] = PairingCoordinator._finishPairingIfPossible();
  v2 = v0[35];
  v3 = v0[34];

  return PairingCoordinator._isPairingNotFailed()(v3, v2);
}

{
  v1 = (*(v0[35] + 16))(v0[34]);
  v0[46] = v1;

  return MEMORY[0x2822009F8](PairingCoordinator._finishPairingIfPossible(), v1, 0);
}

{
  v1 = *(v0 + 368);
  swift_beginAccess();
  v2 = *(v1 + 120);
  *(v0 + 256) = 11;
  v3 = swift_task_alloc();
  *(v3 + 16) = v0 + 256;

  v4 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v3, v2);

  if (v4)
  {
    v5 = *(v1 + 120);
    *(v0 + 264) = 14;
    v6 = swift_task_alloc();
    *(v6 + 16) = v0 + 264;

    v7 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v6, v5);

    v8 = v7 ^ 1;
  }

  else
  {

    v8 = 0;
  }

  *(v0 + 409) = v8 & 1;
  v9 = *(v0 + 296);
  v10 = *(v0 + 304);

  return MEMORY[0x2822009F8](PairingCoordinator._finishPairingIfPossible(), v9, v10);
}

{
  v42 = v0;
  v1 = *(v0 + 408);
  outlined init with copy of PairingContext?(v0 + 112, v0 + 24, &_s13FindMyPairing0C17ConfigurationType_pSgMd, &_s13FindMyPairing0C17ConfigurationType_pSgMR);
  if (v1)
  {
    if (*(v0 + 409) != 1)
    {
      if (*(v0 + 48))
      {
        if (one-time initialization token for pairingCoordinator != -1)
        {
          swift_once();
        }

        v22 = type metadata accessor for Logger();
        __swift_project_value_buffer(v22, static Logger.pairingCoordinator);
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v41 = v26;
          *v25 = 136315138;
          *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x800000024AFAF7B0, &v41);
          _os_log_impl(&dword_24AF48000, v23, v24, "%s: wait for BA pairing part to finish.", v25, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v26);
          MEMORY[0x24C237030](v26, -1, -1);
          MEMORY[0x24C237030](v25, -1, -1);
        }

        outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 112, &_s13FindMyPairing0C17ConfigurationType_pSgMd, &_s13FindMyPairing0C17ConfigurationType_pSgMR);
        v11 = v0 + 24;
      }

      else
      {
        if (one-time initialization token for pairingCoordinator != -1)
        {
          swift_once();
        }

        v35 = type metadata accessor for Logger();
        __swift_project_value_buffer(v35, static Logger.pairingCoordinator);
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v41 = v39;
          *v38 = 136315138;
          *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x800000024AFAF7B0, &v41);
          _os_log_impl(&dword_24AF48000, v36, v37, "%s: wait for user's input.", v38, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v39);
          MEMORY[0x24C237030](v39, -1, -1);
          MEMORY[0x24C237030](v38, -1, -1);
        }

        v11 = v0 + 112;
      }

      goto LABEL_35;
    }

    v2 = *(v0 + 280);
    v3 = *(v0 + 272);
    v4 = *(v0 + 40);
    *(v0 + 192) = *(v0 + 24);
    *(v0 + 208) = v4;
    *(v0 + 224) = *(v0 + 56);
    v5 = PairingCoordinator.isUserActionable.getter(v3, v2);
    outlined init with copy of PairingContext?(v0 + 192, v0 + 72, &_s13FindMyPairing0C17ConfigurationType_pSgMd, &_s13FindMyPairing0C17ConfigurationType_pSgMR);
    if (v5 && !*(v0 + 96))
    {
      if (one-time initialization token for pairingCoordinator != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Logger.pairingCoordinator);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v41 = v10;
        *v9 = 136315138;
        *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x800000024AFAF7B0, &v41);
        _os_log_impl(&dword_24AF48000, v7, v8, "%s: wait for user's input.", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v10);
        MEMORY[0x24C237030](v10, -1, -1);
        MEMORY[0x24C237030](v9, -1, -1);
      }

      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 192, &_s13FindMyPairing0C17ConfigurationType_pSgMd, &_s13FindMyPairing0C17ConfigurationType_pSgMR);
      v11 = v0 + 112;
LABEL_35:
      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v11, &_s13FindMyPairing0C17ConfigurationType_pSgMd, &_s13FindMyPairing0C17ConfigurationType_pSgMR);
      v40 = *(v0 + 8);

      return v40();
    }

    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 72, &_s13FindMyPairing0C17ConfigurationType_pSgMd, &_s13FindMyPairing0C17ConfigurationType_pSgMR);
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.pairingCoordinator);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v41 = v31;
      *v30 = 136315138;
      *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x800000024AFAF7B0, &v41);
      _os_log_impl(&dword_24AF48000, v28, v29, "%s: proceed with pairing finish.", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x24C237030](v31, -1, -1);
      MEMORY[0x24C237030](v30, -1, -1);
    }

    v32 = swift_task_alloc();
    *(v0 + 392) = v32;
    *v32 = v0;
    v32[1] = PairingCoordinator._finishPairingIfPossible();
    v33 = *(v0 + 280);
    v34 = *(v0 + 272);

    return PairingCoordinator._finalizePairing(with:)(v0 + 192, v34, v33);
  }

  else
  {
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.pairingCoordinator);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v41 = v16;
      *v15 = 136315138;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x800000024AFAF7B0, &v41);
      _os_log_impl(&dword_24AF48000, v13, v14, "%s: proceed with pairing failure.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x24C237030](v16, -1, -1);
      MEMORY[0x24C237030](v15, -1, -1);
    }

    v17 = swift_task_alloc();
    *(v0 + 376) = v17;
    *v17 = v0;
    v17[1] = PairingCoordinator._finishPairingIfPossible();
    v18 = *(v0 + 280);
    v19 = *(v0 + 272);
    v20 = MEMORY[0x277D84F90];

    return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, 0, v20, v19, v18);
  }
}

{
  v2 = *v1;
  *(*v1 + 384) = v0;

  v3 = *(v2 + 304);
  v4 = *(v2 + 296);
  if (v0)
  {
    v5 = PairingCoordinator._finishPairingIfPossible();
  }

  else
  {
    v5 = PairingCoordinator._finishPairingIfPossible();
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 112, &_s13FindMyPairing0C17ConfigurationType_pSgMd, &_s13FindMyPairing0C17ConfigurationType_pSgMR);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 24, &_s13FindMyPairing0C17ConfigurationType_pSgMd, &_s13FindMyPairing0C17ConfigurationType_pSgMR);
  v1 = *(v0 + 8);

  return v1();
}

{
  v2 = *v1;
  *(*v1 + 400) = v0;

  v3 = *(v2 + 304);
  v4 = *(v2 + 296);
  if (v0)
  {
    v5 = PairingCoordinator._finishPairingIfPossible();
  }

  else
  {
    v5 = PairingCoordinator._finishPairingIfPossible();
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 192, &_s13FindMyPairing0C17ConfigurationType_pSgMd, &_s13FindMyPairing0C17ConfigurationType_pSgMR);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 112, &_s13FindMyPairing0C17ConfigurationType_pSgMd, &_s13FindMyPairing0C17ConfigurationType_pSgMR);
  v1 = *(v0 + 8);

  return v1();
}

{
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 112, &_s13FindMyPairing0C17ConfigurationType_pSgMd, &_s13FindMyPairing0C17ConfigurationType_pSgMR);
  v1 = *(v0 + 8);

  return v1();
}

{
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 112, &_s13FindMyPairing0C17ConfigurationType_pSgMd, &_s13FindMyPairing0C17ConfigurationType_pSgMR);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 24, &_s13FindMyPairing0C17ConfigurationType_pSgMd, &_s13FindMyPairing0C17ConfigurationType_pSgMR);
  v1 = *(v0 + 8);

  return v1();
}

{
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 192, &_s13FindMyPairing0C17ConfigurationType_pSgMd, &_s13FindMyPairing0C17ConfigurationType_pSgMR);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 112, &_s13FindMyPairing0C17ConfigurationType_pSgMd, &_s13FindMyPairing0C17ConfigurationType_pSgMR);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t PairingCoordinator._finishPairingIfPossible()(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 408) = a1;
  *(v4 + 360) = v1;

  v5 = *(v3 + 304);
  v6 = *(v3 + 296);
  if (v1)
  {
    v7 = PairingCoordinator._finishPairingIfPossible();
  }

  else
  {
    v7 = PairingCoordinator._finishPairingIfPossible();
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t implicit closure #1 in PairingCoordinator._startAccessoryPairing()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 72) = a3;
  *(v4 + 80) = a4;
  *(v4 + 56) = a1;
  *(v4 + 64) = a2;
  *(v4 + 144) = 1;
  *(v4 + 88) = *(a4 + 168);
  *(v4 + 96) = (a4 + 168) & 0xFFFFFFFFFFFFLL | 0x1CA6000000000000;
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](implicit closure #1 in PairingCoordinator._startAccessoryPairing(), v6, v5);
}

uint64_t implicit closure #1 in PairingCoordinator._startAccessoryPairing()()
{
  *(v0 + 104) = (*(v0 + 88))(v0 + 144, *(v0 + 72), *(v0 + 80));
  *(v0 + 112) = v1;
  *(v0 + 145) = v2;

  return MEMORY[0x2822009F8](implicit closure #1 in PairingCoordinator._startAccessoryPairing(), 0, 0);
}

{
  v1 = *(v0 + 145);
  v2 = *(v0 + 64);
  v3 = swift_allocObject();
  v11 = *(v0 + 72);
  swift_unknownObjectWeakInit();
  outlined init with copy of PairingEligibilityInfo(v2, v0 + 16);
  v4 = swift_allocObject();
  *(v0 + 120) = v4;
  *(v4 + 16) = v11;
  *(v4 + 32) = v3;
  outlined init with take of Accessory((v0 + 16), v4 + 40);
  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  *v5 = v0;
  v5[1] = implicit closure #1 in PairingCoordinator._startAccessoryPairing();
  v6 = *(v0 + 104);
  v7 = *(v0 + 112);
  v8 = *(v0 + 72);
  v9 = MEMORY[0x277D84F78] + 8;

  return PairingCoordinator._withOptionalTimeout<A>(timeout:_:)(v5, v6, v7, v1 & 1, &async function pointer to partial apply for closure #1 in implicit closure #1 in PairingCoordinator._startAccessoryPairing(), v4, v8, v9);
}

{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = implicit closure #1 in PairingCoordinator._startAccessoryPairing();
  }

  else
  {

    v2 = implicit closure #1 in PairingCoordinator._startAccessoryPairing();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  return (*(v0 + 8))();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in implicit closure #1 in PairingCoordinator._startAccessoryPairing()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[42] = a4;
  v5[43] = a5;
  v5[40] = a2;
  v5[41] = a3;
  v6 = type metadata accessor for UUID();
  v5[44] = v6;
  v5[45] = *(v6 - 8);
  v5[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in implicit closure #1 in PairingCoordinator._startAccessoryPairing(), 0, 0);
}

uint64_t closure #1 in implicit closure #1 in PairingCoordinator._startAccessoryPairing()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[47] = Strong;
  if (Strong)
  {
    v2 = v0[43];
    v0[48] = *(v2 + 40);
    v0[49] = (v2 + 40) & 0xFFFFFFFFFFFFLL | 0xEA85000000000000;
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[50] = v4;
    v0[51] = v3;

    return MEMORY[0x2822009F8](closure #1 in implicit closure #1 in PairingCoordinator._startAccessoryPairing(), v4, v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

{
  (*(v0 + 384))(*(v0 + 336), *(v0 + 344));

  return MEMORY[0x2822009F8](closure #1 in implicit closure #1 in PairingCoordinator._startAccessoryPairing(), 0, 0);
}

{
  v1 = v0[41];
  v2 = v0[10];
  v3 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v2);
  v4 = (*(v3 + 8))(v2, v3);
  v6 = v5;
  v0[52] = v4;
  ObjectType = swift_getObjectType();
  v8 = v1[3];
  v9 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v8);
  (*(v9 + 16))(v8, v9);
  v10 = *(v6 + 56);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[53] = AssociatedTypeWitness;
  v0[5] = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[54] = AssociatedConformanceWitness;
  v0[6] = AssociatedConformanceWitness;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  v0[55] = boxed_opaque_existential_1;
  v16 = (v10 + *v10);
  v14 = swift_task_alloc();
  v0[56] = v14;
  *v14 = v0;
  v14[1] = closure #1 in implicit closure #1 in PairingCoordinator._startAccessoryPairing();

  return v16(boxed_opaque_existential_1, v0 + 12, ObjectType, v6);
}

{
  v2 = *v1;
  *(v2 + 456) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 96));
  swift_unknownObjectRelease();
  if (v0)
  {
    v3 = closure #1 in implicit closure #1 in PairingCoordinator._startAccessoryPairing();
  }

  else
  {
    v3 = closure #1 in implicit closure #1 in PairingCoordinator._startAccessoryPairing();
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v24 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v1 = v0[41];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  outlined init with copy of PairingEligibilityInfo((v0 + 2), (v0 + 17));
  outlined init with copy of PairingEligibilityInfo(v1, (v0 + 22));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[45];
    v5 = v0[46];
    v22 = v0[44];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 141558787;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    outlined init with copy of PairingEligibilityInfo((v0 + 17), (v0 + 32));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing14PeripheralType_pMd, &_s13FindMyPairing14PeripheralType_pMR);
    v9 = String.init<A>(describing:)();
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v23);

    *(v7 + 14) = v12;
    *(v7 + 22) = 2160;
    *(v7 + 24) = 1752392040;
    *(v7 + 32) = 2081;
    v13 = v0[25];
    v14 = v0[26];
    __swift_project_boxed_opaque_existential_1(v0 + 22, v13);
    (*(v14 + 8))(v13, v14);
    lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v6 + 8))(v5, v22);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v23);

    *(v7 + 34) = v18;
    _os_log_impl(&dword_24AF48000, v3, v4, "Got peripheral object %{private,mask.hash}s for %{private,mask.hash}s.", v7, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C237030](v8, -1, -1);
    MEMORY[0x24C237030](v7, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);
  }

  v19 = v0[50];
  v20 = v0[51];

  return MEMORY[0x2822009F8](closure #1 in implicit closure #1 in PairingCoordinator._startAccessoryPairing(), v19, v20);
}

{
  (*(v0 + 384))(*(v0 + 336), *(v0 + 344));

  return MEMORY[0x2822009F8](closure #1 in implicit closure #1 in PairingCoordinator._startAccessoryPairing(), 0, 0);
}

{
  v1 = v0[30];
  v2 = v0[31];
  __swift_project_boxed_opaque_existential_1(v0 + 27, v1);
  v3 = (*(v2 + 64))(v1, v2);
  v5 = v4;
  v0[58] = v3;
  v0[59] = v4;
  v0[60] = swift_getObjectType();
  v0[61] = *(v5 + 144);
  v0[62] = (v5 + 144) & 0xFFFFFFFFFFFFLL | 0xDEAA000000000000;
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in implicit closure #1 in PairingCoordinator._startAccessoryPairing(), v7, v6);
}

{
  v1 = *(v0 + 456);
  (*(v0 + 488))(*(v0 + 440), *(v0 + 424), *(v0 + 432), *(v0 + 480), *(v0 + 472));
  *(v0 + 504) = v1;
  if (v1)
  {
    v2 = closure #1 in implicit closure #1 in PairingCoordinator._startAccessoryPairing();
  }

  else
  {
    v2 = closure #1 in implicit closure #1 in PairingCoordinator._startAccessoryPairing();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 27);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v1 = v0[1];

  return v1();
}

{
  swift_unknownObjectRelease();
  __swift_deallocate_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 27);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t PairingCoordinator._withOptionalTimeout<A>(timeout:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 72) = v14;
  *(v9 + 80) = v8;
  *(v9 + 56) = a7;
  *(v9 + 64) = a8;
  *(v9 + 40) = a5;
  *(v9 + 48) = a6;
  *(v9 + 104) = a4;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 16) = a1;
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](PairingCoordinator._withOptionalTimeout<A>(timeout:_:), v11, v10);
}

uint64_t PairingCoordinator._withOptionalTimeout<A>(timeout:_:)()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  type metadata accessor for WorkItemQueue();
  (*(v1 + 72))(v2, v1);
  v3 = static WorkItemQueue.called(on:)();

  if (v3)
  {
    if (*(v0 + 104))
    {
      v16 = (*(v0 + 40) + **(v0 + 40));
      v4 = swift_task_alloc();
      *(v0 + 96) = v4;
      *v4 = v0;
      v4[1] = PairingCoordinator._withOptionalTimeout<A>(timeout:_:);
      v5 = *(v0 + 16);

      return v16(v5);
    }

    else
    {
      v9 = swift_task_alloc();
      *(v0 + 88) = v9;
      *v9 = v0;
      v9[1] = PairingCoordinator._withOptionalTimeout<A>(timeout:_:);
      v10 = *(v0 + 64);
      v11 = *(v0 + 40);
      v12 = *(v0 + 48);
      v13 = *(v0 + 24);
      v14 = *(v0 + 32);
      v15 = *(v0 + 16);

      return MEMORY[0x28215EB08](v15, v13, v14, v11, v12, v10);
    }
  }

  else
  {
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    swift_allocError();
    *v7 = 8;
    swift_willThrow();
    v8 = *(v0 + 8);

    return v8();
  }
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t _ss5Error_pIegHzo_ytsAA_pIegHTrzo_TR(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = dispatch thunk of PairingValidator.ack(_:);

  return v5();
}

uint64_t implicit closure #2 in PairingCoordinator._startAccessoryPairing()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v9 = (*(a2 + 40) + **(a2 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of PairingValidator.ack(_:);

  return v9(a3, ObjectType, a2);
}

uint64_t closure #1 in PairingCoordinator._preFetchMetadata()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[22] = a3;
  v6[23] = a4;
  v6[20] = a1;
  v6[21] = a2;
  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._preFetchMetadata(), 0, 0);
}

uint64_t closure #1 in PairingCoordinator._preFetchMetadata()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[26] = Strong;
  if (Strong)
  {
    v2 = v0[25];
    v0[27] = *(v2 + 40);
    v0[28] = (v2 + 40) & 0xFFFFFFFFFFFFLL | 0xEA85000000000000;
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[29] = v4;
    v0[30] = v3;

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._preFetchMetadata(), v4, v3);
  }

  else
  {
    v5 = v0[20];
    *(v5 + 32) = 0;
    *v5 = 0u;
    *(v5 + 16) = 0u;
    v6 = v0[1];

    return v6();
  }
}

{
  (*(v0 + 216))(*(v0 + 192), *(v0 + 200));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._preFetchMetadata(), 0, 0);
}

{
  v1 = v0[10];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = (*(v2 + 16))(v1, v2);
  v5 = v4;
  v0[31] = v3;
  ObjectType = swift_getObjectType();
  v7 = swift_task_alloc();
  v0[32] = v7;
  *v7 = v0;
  v7[1] = closure #1 in PairingCoordinator._preFetchMetadata();
  v8 = v0[22];
  v9 = v0[23];

  return AccessoryMetadataProvider._readAccessoryMetadata(peripheral:accessory:)((v0 + 2), v8, v9, ObjectType, v5);
}

{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = closure #1 in PairingCoordinator._preFetchMetadata();
  }

  else
  {
    v2 = closure #1 in PairingCoordinator._preFetchMetadata();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1 = v0[29];
  v2 = v0[30];

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._preFetchMetadata(), v1, v2);
}

{
  (*(v0 + 216))(*(v0 + 192), *(v0 + 200));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._preFetchMetadata(), 0, 0);
}

{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), v1);
  v3 = (*(v2 + 64))(v1, v2);
  v5 = v4;
  *(v0 + 272) = v3;
  *(v0 + 280) = v4;
  *(v0 + 288) = swift_getObjectType();
  v6 = *(v0 + 40);
  *(v0 + 296) = v6;
  *(v0 + 312) = __swift_project_boxed_opaque_existential_1((v0 + 16), v6);
  *(v0 + 320) = *(v5 + 152);
  *(v0 + 328) = (v5 + 152) & 0xFFFFFFFFFFFFLL | 0x907A000000000000;
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._preFetchMetadata(), v8, v7);
}

{
  v1 = *(v0 + 264);
  (*(v0 + 320))(*(v0 + 312), *(v0 + 296), *(v0 + 304), *(v0 + 288), *(v0 + 280));
  *(v0 + 336) = v1;
  if (v1)
  {
    v2 = closure #1 in PairingCoordinator._preFetchMetadata();
  }

  else
  {
    v2 = closure #1 in PairingCoordinator._preFetchMetadata();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[20];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  outlined init with copy of PairingEligibilityInfo((v0 + 2), v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v2 = v0[1];

  return v2();
}

{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v1 = *(v0 + 8);

  return v1();
}

{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];

  return v1();
}

uint64_t closure #2 in PairingCoordinator._preFetchMetadata()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v5[20] = a2;
  v5[21] = a3;
  return MEMORY[0x2822009F8](closure #2 in PairingCoordinator._preFetchMetadata(), 0, 0);
}

uint64_t closure #2 in PairingCoordinator._preFetchMetadata()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[24] = Strong;
  if (Strong)
  {
    v2 = v0[23];
    v0[25] = *(v2 + 40);
    v0[26] = (v2 + 40) & 0xFFFFFFFFFFFFLL | 0xEA85000000000000;
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[27] = v4;
    v0[28] = v3;

    return MEMORY[0x2822009F8](closure #2 in PairingCoordinator._preFetchMetadata(), v4, v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

{
  (*(v0 + 200))(*(v0 + 176), *(v0 + 184));

  return MEMORY[0x2822009F8](closure #2 in PairingCoordinator._preFetchMetadata(), 0, 0);
}

{
  v1 = v0[10];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = (*(v2 + 16))(v1, v2);
  v5 = v4;
  v0[29] = v3;
  ObjectType = swift_getObjectType();
  v7 = swift_task_alloc();
  v0[30] = v7;
  *v7 = v0;
  v7[1] = closure #2 in PairingCoordinator._preFetchMetadata();
  v8 = v0[21];

  return AccessoryMetadataProvider._retrieveProductInfo(for:)((v0 + 2), v8, ObjectType, v5);
}

{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = closure #2 in PairingCoordinator._preFetchMetadata();
  }

  else
  {
    v2 = closure #2 in PairingCoordinator._preFetchMetadata();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1 = v0[27];
  v2 = v0[28];

  return MEMORY[0x2822009F8](closure #2 in PairingCoordinator._preFetchMetadata(), v1, v2);
}

{
  (*(v0 + 200))(*(v0 + 176), *(v0 + 184));

  return MEMORY[0x2822009F8](closure #2 in PairingCoordinator._preFetchMetadata(), 0, 0);
}

{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), v1);
  v3 = (*(v2 + 64))(v1, v2);
  v5 = v4;
  *(v0 + 256) = v3;
  *(v0 + 264) = v4;
  *(v0 + 272) = swift_getObjectType();
  v6 = *(v0 + 40);
  *(v0 + 280) = v6;
  *(v0 + 296) = __swift_project_boxed_opaque_existential_1((v0 + 16), v6);
  *(v0 + 304) = *(v5 + 160);
  *(v0 + 312) = (v5 + 160) & 0xFFFFFFFFFFFFLL | 0x9259000000000000;
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in PairingCoordinator._preFetchMetadata(), v8, v7);
}

{
  v1 = *(v0 + 248);
  (*(v0 + 304))(*(v0 + 296), *(v0 + 280), *(v0 + 288), *(v0 + 272), *(v0 + 264));
  *(v0 + 320) = v1;
  if (v1)
  {
    v2 = closure #2 in PairingCoordinator._preFetchMetadata();
  }

  else
  {
    v2 = closure #2 in PairingCoordinator._preFetchMetadata();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];

  return v1();
}

{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v1 = *(v0 + 8);

  return v1();
}

{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];

  return v1();
}

uint64_t PairingCoordinator._nextPairingFlowStep()(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[18] = v5;
  v3[19] = v4;

  return MEMORY[0x2822009F8](PairingCoordinator._nextPairingFlowStep(), v5, v4);
}

uint64_t PairingCoordinator._nextPairingFlowStep()()
{
  v1 = v0[16];
  v2 = v0[15];
  type metadata accessor for WorkItemQueue();
  (*(v1 + 72))(v2, v1);
  v3 = static WorkItemQueue.called(on:)();

  if (v3)
  {
    v4 = v0[15];
    v5 = v0[16];
    v6 = *(v5 + 16);
    v0[20] = v6;
    v0[21] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0x20DC000000000000;
    v7 = v6(v4);
    v0[22] = v7;

    return MEMORY[0x2822009F8](PairingCoordinator._nextPairingFlowStep(), v7, 0);
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
  v1 = *(v0 + 176);
  swift_beginAccess();
  v2 = *(v1 + 120);
  *(v0 + 40) = 8;
  v3 = swift_task_alloc();
  *(v3 + 16) = v0 + 40;

  *(v0 + 232) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v3, v2) & 1;
  *(v0 + 184) = 0;

  v4 = *(v0 + 144);
  v5 = *(v0 + 152);

  return MEMORY[0x2822009F8](PairingCoordinator._nextPairingFlowStep(), v4, v5);
}

{
  v1 = (*(v0 + 160))(*(v0 + 120), *(v0 + 128));
  *(v0 + 192) = v1;

  return MEMORY[0x2822009F8](PairingCoordinator._nextPairingFlowStep(), v1, 0);
}

{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  swift_beginAccess();
  v3 = *(v1 + 120);
  *(v0 + 64) = 3;
  v4 = swift_task_alloc();
  *(v4 + 16) = v0 + 64;

  *(v0 + 233) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v4, v3) & 1;
  *(v0 + 200) = v2;

  v5 = *(v0 + 144);
  v6 = *(v0 + 152);

  return MEMORY[0x2822009F8](PairingCoordinator._nextPairingFlowStep(), v5, v6);
}

{
  v1 = (*(v0 + 233) & 1) != 0 || !PairingCoordinator.isUserActionable.getter(*(v0 + 120), *(v0 + 128));
  *(v0 + 234) = v1;
  v2 = (*(v0 + 160))(*(v0 + 120), *(v0 + 128));
  *(v0 + 208) = v2;

  return MEMORY[0x2822009F8](PairingCoordinator._nextPairingFlowStep(), v2, 0);
}

{
  v1 = *(v0 + 208);
  swift_beginAccess();
  v2 = *(v1 + 120);
  *(v0 + 88) = 9;
  v3 = swift_task_alloc();
  *(v3 + 16) = v0 + 88;

  *(v0 + 235) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v3, v2) & 1;

  v4 = *(v0 + 144);
  v5 = *(v0 + 152);

  return MEMORY[0x2822009F8](PairingCoordinator._nextPairingFlowStep(), v4, v5);
}

{
  v1 = (*(v0 + 160))(*(v0 + 120), *(v0 + 128));
  *(v0 + 216) = v1;

  return MEMORY[0x2822009F8](PairingCoordinator._nextPairingFlowStep(), v1, 0);
}

{
  v1 = v0[27];
  swift_beginAccess();
  v2 = *(v1 + 120);
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  while (v3)
  {
    v6 = *v4++;
    v5 = v6;
    --v3;
    if (v6 >= 0x11)
    {
      outlined copy of PairingCoordinatorState(v5);
      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:
  v0[28] = v5;

  v7 = v0[18];
  v8 = v0[19];

  return MEMORY[0x2822009F8](PairingCoordinator._nextPairingFlowStep(), v7, v8);
}

{
  v39 = v0;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 224);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v37 = *(v0 + 224);
    v5 = *(v0 + 235);
    v6 = *(v0 + 234);
    v7 = v1;
    v8 = *(v0 + 232);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v38 = v10;
    *v9 = 67240962;
    *(v9 + 4) = v8;
    v1 = v7;
    *(v9 + 8) = 1026;
    *(v9 + 10) = v6;
    *(v9 + 14) = 1026;
    *(v9 + 16) = v5;
    *(v9 + 20) = 2082;
    *(v0 + 112) = v37;
    MEMORY[0x24C236EC0](v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v38);

    *(v9 + 22) = v13;
    _os_log_impl(&dword_24AF48000, v3, v4, "prePairingFinished = %{BOOL,public}d, proceedWithPairing = %{BOOL,public}d, pairingAlreadyStarted = %{BOOL,public}d, pairingError = %{public}s.", v9, 0x1Eu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x24C237030](v10, -1, -1);
    MEMORY[0x24C237030](v9, -1, -1);
  }

  if (*(v0 + 235) == 1)
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_24AF48000, v14, v15, "Pairing has already started", v16, 2u);
      MEMORY[0x24C237030](v16, -1, -1);
    }

    MEMORY[0x24C236EB0](v1);

    v17 = 0;
    goto LABEL_27;
  }

  v18 = *(v0 + 224);
  if (*(v0 + 234) != 1)
  {
    if (v18)
    {
      MEMORY[0x24C236EC0](v1);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      MEMORY[0x24C236EB0](v1);
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v26 = 138543362;
        MEMORY[0x24C236EC0](v1);
        v28 = _swift_stdlib_bridgeErrorToNSError();
        *(v26 + 4) = v28;
        *v27 = v28;
        _os_log_impl(&dword_24AF48000, v24, v25, "Wait for user to proceed with pairing to display error: %{public}@", v26, 0xCu);
        outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x24C237030](v27, -1, -1);
        MEMORY[0x24C237030](v26, -1, -1);
        MEMORY[0x24C236EB0](v1);
      }

      else
      {

        MEMORY[0x24C236EB0](v1);
      }

LABEL_26:
      v17 = 2;
      goto LABEL_27;
    }

LABEL_21:
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v17 = 2;
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_24AF48000, v32, v33, "Waiting for pre-pairing operation finish and user action.", v34, 2u);
      MEMORY[0x24C237030](v34, -1, -1);
      MEMORY[0x24C236EB0](v1);

      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (v18)
  {
    MEMORY[0x24C236EC0](v1);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    MEMORY[0x24C236EB0](v1);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138543362;
      MEMORY[0x24C236EC0](v1);
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&dword_24AF48000, v19, v20, "Display error: %{public}@", v21, 0xCu);
      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v22, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C237030](v22, -1, -1);
      MEMORY[0x24C237030](v21, -1, -1);
      MEMORY[0x24C236EB0](v1);
    }

    else
    {

      MEMORY[0x24C236EB0](v1);
    }

    v17 = 1;
    goto LABEL_27;
  }

  if (*(v0 + 232) != 1)
  {
    goto LABEL_21;
  }

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_24AF48000, v29, v30, "Proceed with pairing", v31, 2u);
    MEMORY[0x24C237030](v31, -1, -1);
    MEMORY[0x24C236EB0](v1);
  }

  v17 = 3;
LABEL_27:
  v35 = *(v0 + 8);

  return v35(v17);
}

uint64_t closure #1 in PairingCoordinator._proceedWithConnection()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[25] = a5;
  v6[26] = a6;
  v6[23] = a3;
  v6[24] = a4;
  v6[22] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._proceedWithConnection(), 0, 0);
}

uint64_t closure #1 in PairingCoordinator._proceedWithConnection()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[29] = Strong;
  if (Strong)
  {
    v2 = v0[26];
    v0[30] = *(v2 + 40);
    v0[31] = (v2 + 40) & 0xFFFFFFFFFFFFLL | 0xEA85000000000000;
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._proceedWithConnection(), v4, v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

{
  (*(v0 + 240))(*(v0 + 200), *(v0 + 208));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._proceedWithConnection(), 0, 0);
}

{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  v3 = (*(v2 + 80))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v23 = v3;
  v4 = *(v3 + 16);
  if (v4)
  {
    v28 = **(v0 + 176);
    v5 = (v23 + 32);
    v6 = type metadata accessor for TaskPriority();
    v7 = *(v6 - 8);
    v27 = *(v7 + 56);
    v25 = v6;
    v26 = (v7 + 48);
    v24 = (v7 + 8);
    do
    {
      v30 = v4;
      v9 = *(v0 + 224);
      v10 = *(v0 + 232);
      v11 = *(v0 + 216);
      v12 = *(v0 + 192);
      v29 = *(v0 + 200);
      v31 = *v5;
      v27(v9, 1, 1, v6);
      outlined init with copy of PairingEligibilityInfo(v12, v0 + 56);
      v13 = swift_allocObject();
      *(v13 + 16) = 0;
      v14 = (v13 + 16);
      *(v13 + 24) = 0;
      *(v13 + 32) = v29;
      *(v13 + 48) = v10;
      *(v13 + 56) = v31;
      outlined init with take of Accessory((v0 + 56), v13 + 72);
      outlined init with copy of PairingContext?(v9, v11, &_sScPSgMd, &_sScPSgMR);
      LODWORD(v9) = (*v26)(v11, 1, v6);
      swift_unknownObjectRetain_n();
      swift_unknownObjectRetain();

      v15 = *(v0 + 216);
      if (v9 == 1)
      {
        outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(*(v0 + 216), &_sScPSgMd, &_sScPSgMR);
        if (*v14)
        {
          goto LABEL_8;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*v24)(v15, v6);
        if (*v14)
        {
LABEL_8:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v16 = dispatch thunk of Actor.unownedExecutor.getter();
          v17 = v18;
          swift_unknownObjectRelease();
          goto LABEL_9;
        }
      }

      v16 = 0;
      v17 = 0;
LABEL_9:
      v19 = swift_allocObject();
      *(v19 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in PairingCoordinator._proceedWithConnection();
      *(v19 + 24) = v13;
      v20 = v17 | v16;
      if (v17 | v16)
      {
        v20 = v0 + 96;
        *(v0 + 96) = 0;
        *(v0 + 104) = 0;
        *(v0 + 112) = v16;
        *(v0 + 120) = v17;
      }

      v8 = *(v0 + 224);
      *(v0 + 152) = 1;
      *(v0 + 160) = v20;
      *(v0 + 168) = v28;
      swift_task_create();

      swift_unknownObjectRelease();

      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v8, &_sScPSgMd, &_sScPSgMR);
      ++v5;
      v4 = v30 - 1;
      v6 = v25;
    }

    while (v30 != 1);
  }

  swift_unknownObjectRelease();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t closure #1 in closure #1 in PairingCoordinator._proceedWithConnection()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v11;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in PairingCoordinator._proceedWithConnection(), 0, 0);
}

uint64_t closure #1 in closure #1 in PairingCoordinator._proceedWithConnection()()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  v3 = type metadata accessor for TaskPriority();
  v12 = *(v0 + 48);
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 24) = v2;
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = v12;
  *(v6 + 48) = v5;
  *(v6 + 56) = v4;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v1, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in PairingCoordinator._proceedWithConnection(), v6);

  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v1, &_sScPSgMd, &_sScPSgMR);
  ObjectType = swift_getObjectType();
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = closure #1 in closure #1 in PairingCoordinator._proceedWithConnection();
  v9 = *(v0 + 32);
  v10 = *(v0 + 40);

  return PairingExecutor._pair(peripheral:)(v10, ObjectType, v9);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t closure #1 in closure #1 in closure #1 in PairingCoordinator._proceedWithConnection()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy10FindMyBase11TransactionC_0aB7Pairing0E13ExecutorStateOtGMd, &_sScSy10FindMyBase11TransactionC_0aB7Pairing0E13ExecutorStateOtGMR);
  v7[12] = v8;
  v7[13] = *(v8 - 8);
  v7[14] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v7[15] = v9;
  v7[16] = *(v9 - 8);
  v7[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in PairingCoordinator._proceedWithConnection(), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in PairingCoordinator._proceedWithConnection()()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[18] = Strong;
  v3 = *(v1 + 24);
  v0[19] = v3;
  if (Strong)
  {
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    v0[20] = v4;
    if (v4)
    {
      v0[21] = swift_getObjectType();
      v0[22] = *(v3 + 24);
      v0[23] = (v3 + 24) & 0xFFFFFFFFFFFFLL | 0xFE000000000000;
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v0[24] = v6;
      v0[25] = v5;

      return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in PairingCoordinator._proceedWithConnection(), v6, v5);
    }

    swift_unknownObjectRelease();
  }

  v7 = v0[1];

  return v7();
}

{
  v1 = *(v0 + 152);
  (*(v0 + 176))(*(v0 + 168), v1);
  *(v0 + 208) = *(v1 + 128);
  *(v0 + 216) = (v1 + 128) & 0xFFFFFFFFFFFFLL | 0xF9FA000000000000;
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in PairingCoordinator._proceedWithConnection(), v2, v3);
}

{
  (*(v0 + 208))(*(v0 + 168), *(v0 + 152));
  v1 = swift_task_alloc();
  *(v0 + 224) = v1;
  *v1 = v0;
  v1[1] = closure #1 in closure #1 in closure #1 in PairingCoordinator._proceedWithConnection();
  v2 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);

  return PairingCoordinator._listenToUpdates(of:stream:)(v2, v3, v4, v5);
}

{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 104);
  v7 = *(*v1 + 96);
  *(*v1 + 232) = v0;

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v8 = closure #1 in closure #1 in closure #1 in PairingCoordinator._proceedWithConnection();
  }

  else
  {
    v8 = closure #1 in closure #1 in closure #1 in PairingCoordinator._proceedWithConnection();
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

{
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 232);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 232);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    MEMORY[0x24C236EC0](v6);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in executor updates listener %{public}@", v7, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v8, -1, -1);
    MEMORY[0x24C237030](v7, -1, -1);
    swift_unknownObjectRelease();
    MEMORY[0x24C236EB0](v6);

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    MEMORY[0x24C236EB0](v6);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t PairingCoordinator._listenToUpdates(of:stream:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = *(type metadata accessor for PairingExecutorState(0) - 8);
  v5[7] = v7;
  v5[8] = *(v7 + 64);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10FindMyBase11TransactionC_0aB7Pairing0E13ExecutorStateOtSgMd, &_s10FindMyBase11TransactionC_0aB7Pairing0E13ExecutorStateOtSgMR);
  v5[11] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy10FindMyBase11TransactionC_0bC7Pairing0F13ExecutorStateOt_GMd, &_sScS8IteratorVy10FindMyBase11TransactionC_0bC7Pairing0F13ExecutorStateOt_GMR);
  v5[12] = v8;
  v5[13] = *(v8 - 8);
  v5[14] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v5[15] = v9;
  v10 = *(v9 - 8);
  v5[16] = v10;
  v5[17] = *(v10 + 64);
  v5[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10FindMyBase13WorkItemQueueC14WarningOptionsVSgMd, &_s10FindMyBase13WorkItemQueueC14WarningOptionsVSgMR);
  v5[19] = swift_task_alloc();
  v5[20] = *(a4 + 8);
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[21] = v12;
  v5[22] = v11;

  return MEMORY[0x2822009F8](PairingCoordinator._listenToUpdates(of:stream:), v12, v11);
}

uint64_t PairingCoordinator._listenToUpdates(of:stream:)()
{
  v1 = v0[5];
  v2 = v0[4];
  type metadata accessor for WorkItemQueue();
  (*(v1 + 72))(v2, v1);
  v3 = static WorkItemQueue.called(on:)();

  v4 = v0[19];
  if (v3)
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
    type metadata accessor for TimeTracker();
    v0[23] = TimeTracker.__allocating_init()();
    v8 = type metadata accessor for WorkItemQueue.WarningOptions();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    UUID.init()();
    v0[24] = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    v0[25] = __swift_project_value_buffer(v9, static Logger.pairingCoordinator);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_24AF48000, v10, v11, "PairingCoordinator: start listening to executor events.", v12, 2u);
      MEMORY[0x24C237030](v12, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy10FindMyBase11TransactionC_0aB7Pairing0E13ExecutorStateOtGMd, &_sScSy10FindMyBase11TransactionC_0aB7Pairing0E13ExecutorStateOtGMR);
    AsyncStream.makeAsyncIterator()();
    v13 = v0[20];
    v14 = v0[6];
    v15 = swift_task_alloc();
    v0[26] = v15;
    *v15 = v0;
    v15[1] = PairingCoordinator._listenToUpdates(of:stream:);
    v16 = v0[11];
    v17 = v0[12];

    return MEMORY[0x2822003E8](v16, v14, v13, v17);
  }
}

{
  v1 = *v0;

  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return MEMORY[0x2822009F8](PairingCoordinator._listenToUpdates(of:stream:), v3, v2);
}

{
  v1 = *(v0 + 88);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10FindMyBase11TransactionC_0aB7Pairing0E13ExecutorStateOtMd, &_s10FindMyBase11TransactionC_0aB7Pairing0E13ExecutorStateOtMR);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_24AF48000, v3, v4, "PairingCoordinator: finish listening to executor events.", v5, 2u);
      MEMORY[0x24C237030](v5, -1, -1);
    }

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v27 = *(v0 + 184);
    v8 = *(v0 + 144);
    v10 = *(v0 + 120);
    v9 = *(v0 + 128);
    v12 = *(v0 + 72);
    v11 = *(v0 + 80);
    v25 = *(v0 + 64);
    v23 = v8;
    v24 = *(v0 + 56);
    v13 = *(v0 + 16);
    v26 = *(v0 + 32);

    outlined init with take of UserSessionState(v1 + *(v2 + 48), v11, type metadata accessor for PairingExecutorState);
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    outlined init with copy of UserSessionState(v11, v12, type metadata accessor for PairingExecutorState);
    (*(v9 + 16))(v8, v13, v10);
    v15 = (*(v24 + 80) + 48) & ~*(v24 + 80);
    v16 = (v25 + *(v9 + 80) + v15) & ~*(v9 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v26;
    *(v17 + 32) = v14;
    *(v17 + 40) = v27;
    outlined init with take of UserSessionState(v12, v17 + v15, type metadata accessor for PairingExecutorState);
    (*(v9 + 32))(v17 + v16, v23, v10);

    dispatch thunk of WorkItemQueue.enqueue(_:)();

    outlined destroy of UserSessionState(v11, type metadata accessor for PairingExecutorState);

    v18 = *(v0 + 160);
    v19 = *(v0 + 48);
    v20 = swift_task_alloc();
    *(v0 + 208) = v20;
    *v20 = v0;
    v20[1] = PairingCoordinator._listenToUpdates(of:stream:);
    v21 = *(v0 + 88);
    v22 = *(v0 + 96);

    return MEMORY[0x2822003E8](v21, v19, v18, v22);
  }
}

uint64_t closure #1 in PairingCoordinator._listenToUpdates(of:stream:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[17] = a3;
  v6[18] = a4;
  v6[15] = a1;
  v6[16] = a2;
  type metadata accessor for PairingExecutorState.RecordCreation(0);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing16AccessoryDetailsVSgMd, &_s13FindMyPairing16AccessoryDetailsVSgMR);
  v6[23] = swift_task_alloc();
  v6[24] = type metadata accessor for AnalyticsEvent(0);
  v6[25] = swift_task_alloc();
  v6[26] = type metadata accessor for PairingExecutorState(0);
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v6[39] = v7;
  v6[40] = *(v7 - 8);
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

uint64_t closure #1 in PairingCoordinator._listenToUpdates(of:stream:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[44] = Strong;
  if (Strong)
  {
    type metadata accessor for TimeTracker();
    lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type TimeTracker and conformance TimeTracker, MEMORY[0x277D088F0], MEMORY[0x277D088F8]);
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[45] = v3;
    v0[46] = v2;

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), v3, v2);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

{
  *(v0 + 376) = dispatch thunk of TimeTracker.lastCheckpointName.getter();
  *(v0 + 384) = v1;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v0[49] = PairingExecutorState.description.getter();
  v0[50] = v1;
  v2 = v0[45];
  v3 = v0[46];

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), v2, v3);
}

{
  dispatch thunk of TimeTracker.updateCheckpoint(for:)();

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v62 = v0;
  if (v0[48])
  {
    v1 = v0[45];
    v2 = v0[46];
    v3 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
LABEL_3:

    return MEMORY[0x2822009F8](v3, v1, v2);
  }

  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v4 = v0[37];
  v5 = v0[17];
  v6 = type metadata accessor for Logger();
  v0[53] = v6;
  __swift_project_value_buffer(v6, static Logger.pairingCoordinator);
  outlined init with copy of UserSessionState(v5, v4, type metadata accessor for PairingExecutorState);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[37];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v61 = v12;
    *v11 = 136446210;
    v13 = PairingExecutorState.description.getter();
    v15 = v14;
    outlined destroy of UserSessionState(v10, type metadata accessor for PairingExecutorState);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v61);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_24AF48000, v7, v8, "Executor state = %{public}s.", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x24C237030](v12, -1, -1);
    MEMORY[0x24C237030](v11, -1, -1);
  }

  else
  {

    outlined destroy of UserSessionState(v10, type metadata accessor for PairingExecutorState);
  }

  outlined init with copy of UserSessionState(v0[17], v0[36], type metadata accessor for PairingExecutorState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v45 = v0[31];
        v46 = v0[20];
        outlined init with copy of UserSessionState(v0[36], v45, type metadata accessor for PairingExecutorState);
        LOBYTE(v45) = *v45;
        v0[91] = *(v46 + 32);
        v0[92] = (v46 + 32) & 0xFFFFFFFFFFFFLL | 0x5F3A000000000000;
        v47 = dispatch thunk of Actor.unownedExecutor.getter();
        v2 = v48;
        if (v45)
        {
          v49 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
        }

        else
        {
          v49 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
        }

        v3 = v49;
        v1 = v47;
        goto LABEL_3;
      }

      if (EnumCaseMultiPayload == 6)
      {
        v30 = v0[28];
        v31 = v0[20];
        outlined init with copy of UserSessionState(v0[36], v30, type metadata accessor for PairingExecutorState);
        v0[140] = *v30;
        v0[141] = *(v31 + 32);
        v0[142] = (v31 + 32) & 0xFFFFFFFFFFFFLL | 0x5F3A000000000000;
        v18 = dispatch thunk of Actor.unownedExecutor.getter();
        v2 = v32;
        v0[143] = v18;
        v0[144] = v32;
        v20 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
        goto LABEL_35;
      }

      goto LABEL_46;
    }

    if (EnumCaseMultiPayload == 8)
    {
      v43 = v0[20];
      v0[69] = *(v43 + 40);
      v0[70] = (v43 + 40) & 0xFFFFFFFFFFFFLL | 0xEA85000000000000;
      v18 = dispatch thunk of Actor.unownedExecutor.getter();
      v2 = v44;
      v0[71] = v18;
      v0[72] = v44;
      v20 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
      goto LABEL_35;
    }

    if (EnumCaseMultiPayload != 9)
    {
      if (EnumCaseMultiPayload == 10)
      {
        v18 = dispatch thunk of Actor.unownedExecutor.getter();
        v2 = v19;
        v0[95] = v18;
        v0[96] = v19;
        v20 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
LABEL_35:
        v3 = v20;
        v1 = v18;
        goto LABEL_3;
      }

      goto LABEL_46;
    }

    v23 = dispatch thunk of Actor.unownedExecutor.getter();
    v25 = v50;
    v26 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
LABEL_50:
    v3 = v26;
    v1 = v23;
    v2 = v25;
    goto LABEL_3;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      v27 = v0[33];
      outlined init with copy of UserSessionState(v0[36], v27, type metadata accessor for PairingExecutorState);
      if (*v27 == 1)
      {
        v55 = v0[20];
        v0[85] = *(v55 + 32);
        v0[86] = (v55 + 32) & 0xFFFFFFFFFFFFLL | 0x5F3A000000000000;
        v23 = dispatch thunk of Actor.unownedExecutor.getter();
        v25 = v56;
        v26 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
        goto LABEL_50;
      }

      if (!*v27)
      {
        v28 = v0[20];
        v0[82] = *(v28 + 32);
        v0[83] = (v28 + 32) & 0xFFFFFFFFFFFFLL | 0x5F3A000000000000;
        v23 = dispatch thunk of Actor.unownedExecutor.getter();
        v25 = v29;
        v26 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
        goto LABEL_50;
      }

      goto LABEL_46;
    }

    v38 = v0[39];
    v39 = v0[40];
    v40 = v0[32];
    v42 = v0[21];
    v41 = v0[22];
    outlined init with copy of UserSessionState(v0[36], v40, type metadata accessor for PairingExecutorState);
    outlined init with take of UserSessionState(v40, v41, type metadata accessor for PairingExecutorState.RecordCreation);
    outlined init with copy of UserSessionState(v41, v42, type metadata accessor for PairingExecutorState.RecordCreation);
    if ((*(v39 + 48))(v42, 1, v38) != 1)
    {
      v51 = v0[20];
      (*(v0[40] + 32))(v0[42], v0[21], v0[39]);
      v0[88] = *(v51 + 32);
      v0[89] = (v51 + 32) & 0xFFFFFFFFFFFFLL | 0x5F3A000000000000;
      v23 = dispatch thunk of Actor.unownedExecutor.getter();
      v25 = v52;
      v26 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
      goto LABEL_50;
    }

    outlined destroy of UserSessionState(v0[22], type metadata accessor for PairingExecutorState.RecordCreation);
    swift_unknownObjectRelease();
    outlined destroy of UserSessionState(v0[21], type metadata accessor for PairingExecutorState.RecordCreation);
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v21 = v0[35];
        outlined init with copy of UserSessionState(v0[36], v21, type metadata accessor for PairingExecutorState);
        if (*v21 == 1)
        {
          v53 = v0[20];
          v0[57] = *(v53 + 32);
          v0[58] = (v53 + 32) & 0xFFFFFFFFFFFFLL | 0x5F3A000000000000;
          v23 = dispatch thunk of Actor.unownedExecutor.getter();
          v25 = v54;
          v26 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
          goto LABEL_50;
        }

        if (!*v21)
        {
          v22 = v0[20];
          v0[54] = *(v22 + 32);
          v0[55] = (v22 + 32) & 0xFFFFFFFFFFFFLL | 0x5F3A000000000000;
          v23 = dispatch thunk of Actor.unownedExecutor.getter();
          v25 = v24;
          v26 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
          goto LABEL_50;
        }
      }

LABEL_46:
      swift_unknownObjectRelease();
      goto LABEL_47;
    }

    v33 = v0[34];
    outlined init with copy of UserSessionState(v0[36], v33, type metadata accessor for PairingExecutorState);
    v34 = *v33;
    v0[60] = *v33;
    v35 = v33[1];
    v0[61] = v35;
    v36 = v33[2];
    v0[62] = v36;
    v37 = v33[3];
    v0[63] = v37;
    if (v35 >= 8)
    {
      if (v35 != 8)
      {
        v58 = v0[20];
        v0[64] = *(v58 + 40);
        v0[65] = (v58 + 40) & 0xFFFFFFFFFFFFLL | 0xEA85000000000000;
        v23 = dispatch thunk of Actor.unownedExecutor.getter();
        v25 = v59;
        v26 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
        goto LABEL_50;
      }

      goto LABEL_46;
    }

    swift_unknownObjectRelease();
    outlined consume of PairingExecutorState.InitiatePairing?(v34, v35, v36, v37);
  }

LABEL_47:
  outlined destroy of UserSessionState(v0[36], type metadata accessor for PairingExecutorState);

  v57 = v0[1];

  return v57();
}

{
  *(v0 + 408) = dispatch thunk of TimeTracker.duration(since:)();
  *(v0 + 416) = v1;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v96 = v0;
  if (one-time initialization token for pairingTime != -1)
  {
    swift_once();
  }

  v1 = v0[43];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[38];
  v6 = v0[17];
  v5 = v0[18];
  v94 = type metadata accessor for Logger();
  __swift_project_value_buffer(v94, static Logger.pairingTime);
  (*(v2 + 16))(v1, v5, v3);
  outlined init with copy of UserSessionState(v6, v4, type metadata accessor for PairingExecutorState);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[52];
  if (v9)
  {
    v11 = v0[48];
    v89 = v0[47];
    v93 = v8;
    v12 = v0[43];
    v14 = v0[39];
    v13 = v0[40];
    v90 = v0[38];
    v91 = v0[51];
    v15 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v95 = v92;
    *v15 = 136446978;
    lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v13 + 8))(v12, v14);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v95);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v11, &v95);

    *(v15 + 14) = v20;
    *(v15 + 22) = 2082;
    v21 = PairingExecutorState.description.getter();
    v23 = v22;
    outlined destroy of UserSessionState(v90, type metadata accessor for PairingExecutorState);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v95);

    *(v15 + 24) = v24;
    *(v15 + 32) = 2082;
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v10, &v95);

    *(v15 + 34) = v25;
    _os_log_impl(&dword_24AF48000, v7, v93, "Executor %{public}s: duration for %{public}s->%{public}s: %{public}s", v15, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C237030](v92, -1, -1);
    MEMORY[0x24C237030](v15, -1, -1);
  }

  else
  {
    v26 = v0[43];
    v27 = v0[39];
    v28 = v0[40];
    v29 = v0[38];

    outlined destroy of UserSessionState(v29, type metadata accessor for PairingExecutorState);
    (*(v28 + 8))(v26, v27);
  }

  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v30 = v0[37];
  v31 = v0[17];
  v0[53] = v94;
  __swift_project_value_buffer(v94, static Logger.pairingCoordinator);
  outlined init with copy of UserSessionState(v31, v30, type metadata accessor for PairingExecutorState);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  v34 = os_log_type_enabled(v32, v33);
  v35 = v0[37];
  if (v34)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v95 = v37;
    *v36 = 136446210;
    v38 = PairingExecutorState.description.getter();
    v40 = v39;
    outlined destroy of UserSessionState(v35, type metadata accessor for PairingExecutorState);
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v95);

    *(v36 + 4) = v41;
    _os_log_impl(&dword_24AF48000, v32, v33, "Executor state = %{public}s.", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x24C237030](v37, -1, -1);
    MEMORY[0x24C237030](v36, -1, -1);
  }

  else
  {

    outlined destroy of UserSessionState(v35, type metadata accessor for PairingExecutorState);
  }

  outlined init with copy of UserSessionState(v0[17], v0[36], type metadata accessor for PairingExecutorState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v73 = v0[31];
        v74 = v0[20];
        outlined init with copy of UserSessionState(v0[36], v73, type metadata accessor for PairingExecutorState);
        LOBYTE(v73) = *v73;
        v0[91] = *(v74 + 32);
        v0[92] = (v74 + 32) & 0xFFFFFFFFFFFFLL | 0x5F3A000000000000;
        v75 = dispatch thunk of Actor.unownedExecutor.getter();
        v45 = v76;
        if (v73)
        {
          v77 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
        }

        else
        {
          v77 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
        }

        v71 = v77;
        v72 = v75;
        goto LABEL_51;
      }

      if (EnumCaseMultiPayload == 6)
      {
        v56 = v0[28];
        v57 = v0[20];
        outlined init with copy of UserSessionState(v0[36], v56, type metadata accessor for PairingExecutorState);
        v0[140] = *v56;
        v0[141] = *(v57 + 32);
        v0[142] = (v57 + 32) & 0xFFFFFFFFFFFFLL | 0x5F3A000000000000;
        v43 = dispatch thunk of Actor.unownedExecutor.getter();
        v45 = v58;
        v0[143] = v43;
        v0[144] = v58;
        v46 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
        goto LABEL_35;
      }

      goto LABEL_46;
    }

    if (EnumCaseMultiPayload == 8)
    {
      v69 = v0[20];
      v0[69] = *(v69 + 40);
      v0[70] = (v69 + 40) & 0xFFFFFFFFFFFFLL | 0xEA85000000000000;
      v43 = dispatch thunk of Actor.unownedExecutor.getter();
      v45 = v70;
      v0[71] = v43;
      v0[72] = v70;
      v46 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
      goto LABEL_35;
    }

    if (EnumCaseMultiPayload != 9)
    {
      if (EnumCaseMultiPayload == 10)
      {
        v43 = dispatch thunk of Actor.unownedExecutor.getter();
        v45 = v44;
        v0[95] = v43;
        v0[96] = v44;
        v46 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
LABEL_35:
        v71 = v46;
        v72 = v43;
LABEL_51:

        return MEMORY[0x2822009F8](v71, v72, v45);
      }

      goto LABEL_46;
    }

    v49 = dispatch thunk of Actor.unownedExecutor.getter();
    v51 = v78;
    v52 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
LABEL_50:
    v71 = v52;
    v72 = v49;
    v45 = v51;
    goto LABEL_51;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      v53 = v0[33];
      outlined init with copy of UserSessionState(v0[36], v53, type metadata accessor for PairingExecutorState);
      if (*v53 == 1)
      {
        v83 = v0[20];
        v0[85] = *(v83 + 32);
        v0[86] = (v83 + 32) & 0xFFFFFFFFFFFFLL | 0x5F3A000000000000;
        v49 = dispatch thunk of Actor.unownedExecutor.getter();
        v51 = v84;
        v52 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
        goto LABEL_50;
      }

      if (!*v53)
      {
        v54 = v0[20];
        v0[82] = *(v54 + 32);
        v0[83] = (v54 + 32) & 0xFFFFFFFFFFFFLL | 0x5F3A000000000000;
        v49 = dispatch thunk of Actor.unownedExecutor.getter();
        v51 = v55;
        v52 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
        goto LABEL_50;
      }

      goto LABEL_46;
    }

    v64 = v0[39];
    v65 = v0[40];
    v66 = v0[32];
    v68 = v0[21];
    v67 = v0[22];
    outlined init with copy of UserSessionState(v0[36], v66, type metadata accessor for PairingExecutorState);
    outlined init with take of UserSessionState(v66, v67, type metadata accessor for PairingExecutorState.RecordCreation);
    outlined init with copy of UserSessionState(v67, v68, type metadata accessor for PairingExecutorState.RecordCreation);
    if ((*(v65 + 48))(v68, 1, v64) != 1)
    {
      v79 = v0[20];
      (*(v0[40] + 32))(v0[42], v0[21], v0[39]);
      v0[88] = *(v79 + 32);
      v0[89] = (v79 + 32) & 0xFFFFFFFFFFFFLL | 0x5F3A000000000000;
      v49 = dispatch thunk of Actor.unownedExecutor.getter();
      v51 = v80;
      v52 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
      goto LABEL_50;
    }

    outlined destroy of UserSessionState(v0[22], type metadata accessor for PairingExecutorState.RecordCreation);
    swift_unknownObjectRelease();
    outlined destroy of UserSessionState(v0[21], type metadata accessor for PairingExecutorState.RecordCreation);
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v47 = v0[35];
        outlined init with copy of UserSessionState(v0[36], v47, type metadata accessor for PairingExecutorState);
        if (*v47 == 1)
        {
          v81 = v0[20];
          v0[57] = *(v81 + 32);
          v0[58] = (v81 + 32) & 0xFFFFFFFFFFFFLL | 0x5F3A000000000000;
          v49 = dispatch thunk of Actor.unownedExecutor.getter();
          v51 = v82;
          v52 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
          goto LABEL_50;
        }

        if (!*v47)
        {
          v48 = v0[20];
          v0[54] = *(v48 + 32);
          v0[55] = (v48 + 32) & 0xFFFFFFFFFFFFLL | 0x5F3A000000000000;
          v49 = dispatch thunk of Actor.unownedExecutor.getter();
          v51 = v50;
          v52 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
          goto LABEL_50;
        }
      }

LABEL_46:
      swift_unknownObjectRelease();
      goto LABEL_47;
    }

    v59 = v0[34];
    outlined init with copy of UserSessionState(v0[36], v59, type metadata accessor for PairingExecutorState);
    v60 = *v59;
    v0[60] = *v59;
    v61 = v59[1];
    v0[61] = v61;
    v62 = v59[2];
    v0[62] = v62;
    v63 = v59[3];
    v0[63] = v63;
    if (v61 >= 8)
    {
      if (v61 != 8)
      {
        v87 = v0[20];
        v0[64] = *(v87 + 40);
        v0[65] = (v87 + 40) & 0xFFFFFFFFFFFFLL | 0xEA85000000000000;
        v49 = dispatch thunk of Actor.unownedExecutor.getter();
        v51 = v88;
        v52 = closure #1 in PairingCoordinator._listenToUpdates(of:stream:);
        goto LABEL_50;
      }

      goto LABEL_46;
    }

    swift_unknownObjectRelease();
    outlined consume of PairingExecutorState.InitiatePairing?(v60, v61, v62, v63);
  }

LABEL_47:
  outlined destroy of UserSessionState(v0[36], type metadata accessor for PairingExecutorState);

  v85 = v0[1];

  return v85();
}

{
  *(v0 + 448) = (*(v0 + 432))(*(v0 + 152), *(v0 + 160));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v1 = v0[25];
  (*(v0[40] + 16))(v1, v0[18], v0[39]);
  swift_storeEnumTagMultiPayload();
  AsyncStreamProvider.yield(value:transaction:)();

  swift_unknownObjectRelease();
  outlined destroy of UserSessionState(v1, type metadata accessor for AnalyticsEvent);
  outlined destroy of UserSessionState(v0[36], type metadata accessor for PairingExecutorState);

  v2 = v0[1];

  return v2();
}

{
  *(v0 + 472) = (*(v0 + 456))(*(v0 + 152), *(v0 + 160));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v1 = v0[25];
  (*(v0[40] + 16))(v1, v0[18], v0[39]);
  swift_storeEnumTagMultiPayload();
  AsyncStreamProvider.yield(value:transaction:)();
  swift_unknownObjectRelease();

  outlined destroy of UserSessionState(v1, type metadata accessor for AnalyticsEvent);
  outlined destroy of UserSessionState(v0[36], type metadata accessor for PairingExecutorState);

  v2 = v0[1];

  return v2();
}

{
  (*(v0 + 512))(*(v0 + 152), *(v0 + 160));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v1 = v0[10];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v0[66] = (*(v2 + 64))(v1, v2);
  v0[67] = v3;
  v0[68] = swift_getObjectType();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), v5, v4);
}

{
  PairingInfoStore.appendAccessoryDetails(executorIdentifier:serialNumber:systemVersion:)(v0[18], v0[60], v0[61], v0[62], v0[63], v0[68], v0[67]);
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v1 = v0[62];
  v2 = v0[63];
  v4 = v0[60];
  v3 = v0[61];
  swift_unknownObjectRelease();
  outlined consume of PairingExecutorState.InitiatePairing?(v4, v3, v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  outlined destroy of UserSessionState(v0[36], type metadata accessor for PairingExecutorState);

  v5 = v0[1];

  return v5();
}

{
  (*(v0 + 552))(*(v0 + 152), *(v0 + 160));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = (*(v2 + 64))(v1, v2);
  v5 = v4;
  v0[73] = v3;
  v0[74] = v4;
  v0[75] = swift_getObjectType();
  v0[76] = *(v5 + 104);
  v0[77] = (v5 + 104) & 0xFFFFFFFFFFFFLL | 0xF2D9000000000000;
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), v7, v6);
}

{
  *(v0 + 624) = (*(v0 + 608))(*(v0 + 600), *(v0 + 592));
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v1 = v0[78];
  v2 = v0[23];
  if (v1)
  {
    v3 = v0[18];
    *(swift_task_alloc() + 16) = v3;
    specialized Sequence.first(where:)(partial apply for closure #1 in closure #1 in PairingCoordinator._listenToUpdates(of:stream:), v1, v2);

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v4 = type metadata accessor for AccessoryDetails(0);
    (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  }

  v5 = v0[20];
  v0[79] = *(v5 + 32);
  v0[80] = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x5F3A000000000000;
  v6 = v0[72];
  v7 = v0[71];

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), v7, v6);
}

{
  *(v0 + 648) = (*(v0 + 632))(*(v0 + 152), *(v0 + 160));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[25];
  v4 = v0[23];
  v5 = v0[18];
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing16AccessoryDetailsVSg7details_10Foundation4UUIDV10identifiertMd, &_s13FindMyPairing16AccessoryDetailsVSg7details_10Foundation4UUIDV10identifiertMR) + 48);
  outlined init with copy of PairingContext?(v4, v3, &_s13FindMyPairing16AccessoryDetailsVSgMd, &_s13FindMyPairing16AccessoryDetailsVSgMR);
  (*(v2 + 16))(v3 + v6, v5, v1);
  swift_storeEnumTagMultiPayload();
  AsyncStreamProvider.yield(value:transaction:)();

  outlined destroy of UserSessionState(v3, type metadata accessor for AnalyticsEvent);
  v7 = v0[72];
  v8 = v0[71];

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), v8, v7);
}

{
  PairingCoordinator.startAccessoryPairing()(*(v0 + 152), *(v0 + 160), &unk_285E41510, &async function pointer to partial apply for closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish());

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v1 = v0[23];
  swift_unknownObjectRelease();
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v1, &_s13FindMyPairing16AccessoryDetailsVSgMd, &_s13FindMyPairing16AccessoryDetailsVSgMR);
  outlined destroy of UserSessionState(v0[36], type metadata accessor for PairingExecutorState);

  v2 = v0[1];

  return v2();
}

{
  *(v0 + 672) = (*(v0 + 656))(*(v0 + 152), *(v0 + 160));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v1 = v0[25];
  (*(v0[40] + 16))(v1, v0[18], v0[39]);
  swift_storeEnumTagMultiPayload();
  AsyncStreamProvider.yield(value:transaction:)();
  swift_unknownObjectRelease();

  outlined destroy of UserSessionState(v1, type metadata accessor for AnalyticsEvent);
  outlined destroy of UserSessionState(v0[36], type metadata accessor for PairingExecutorState);

  v2 = v0[1];

  return v2();
}

{
  *(v0 + 696) = (*(v0 + 680))(*(v0 + 152), *(v0 + 160));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v1 = v0[25];
  (*(v0[40] + 16))(v1, v0[18], v0[39]);
  swift_storeEnumTagMultiPayload();
  AsyncStreamProvider.yield(value:transaction:)();
  swift_unknownObjectRelease();

  outlined destroy of UserSessionState(v1, type metadata accessor for AnalyticsEvent);
  outlined destroy of UserSessionState(v0[36], type metadata accessor for PairingExecutorState);

  v2 = v0[1];

  return v2();
}

{
  *(v0 + 720) = (*(v0 + 704))(*(v0 + 152), *(v0 + 160));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v1 = v0[42];
  v2 = v0[39];
  v3 = v0[40];
  v4 = v0[25];
  v5 = v0[18];
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV16beaconIdentifier_AC10identifiertMd, &_s10Foundation4UUIDV16beaconIdentifier_AC10identifiertMR) + 48);
  v7 = *(v3 + 16);
  v7(v4, v1, v2);
  v7(v4 + v6, v5, v2);
  swift_storeEnumTagMultiPayload();
  AsyncStreamProvider.yield(value:transaction:)();
  swift_unknownObjectRelease();

  outlined destroy of UserSessionState(v4, type metadata accessor for AnalyticsEvent);
  (*(v3 + 8))(v1, v2);
  outlined destroy of UserSessionState(v0[22], type metadata accessor for PairingExecutorState.RecordCreation);
  outlined destroy of UserSessionState(v0[36], type metadata accessor for PairingExecutorState);

  v8 = v0[1];

  return v8();
}

{
  PairingCoordinator.startAccessoryPairing()(*(v0 + 152), *(v0 + 160), &unk_285E41588, &async function pointer to partial apply for closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish());

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  swift_unknownObjectRelease();
  outlined destroy of UserSessionState(*(v0 + 288), type metadata accessor for PairingExecutorState);

  v1 = *(v0 + 8);

  return v1();
}

{
  *(v0 + 744) = (*(v0 + 728))(*(v0 + 152), *(v0 + 160));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v1 = v0[25];
  (*(v0[40] + 16))(v1, v0[18], v0[39]);
  swift_storeEnumTagMultiPayload();
  AsyncStreamProvider.yield(value:transaction:)();
  swift_unknownObjectRelease();

  outlined destroy of UserSessionState(v1, type metadata accessor for AnalyticsEvent);
  outlined destroy of UserSessionState(v0[36], type metadata accessor for PairingExecutorState);

  v2 = v0[1];

  return v2();
}

{
  *(v0 + 752) = (*(v0 + 728))(*(v0 + 152), *(v0 + 160));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v1 = v0[25];
  (*(v0[40] + 16))(v1, v0[18], v0[39]);
  swift_storeEnumTagMultiPayload();
  AsyncStreamProvider.yield(value:transaction:)();
  swift_unknownObjectRelease();

  outlined destroy of UserSessionState(v1, type metadata accessor for AnalyticsEvent);
  outlined destroy of UserSessionState(v0[36], type metadata accessor for PairingExecutorState);

  v2 = v0[1];

  return v2();
}

{
  PairingCoordinator.startAccessoryPairing()(*(v0 + 152), *(v0 + 160), &unk_285E41600, &async function pointer to partial apply for closure #1 in PairingCoordinator.handleExecutorPairingFinish());

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v1 = v0[29];
  v2 = v0[30];
  *v2 = xmmword_24AFB0D40;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  swift_storeEnumTagMultiPayload();
  *v1 = 0;
  swift_storeEnumTagMultiPayload();
  v0[97] = PairingExecutorState.description.getter();
  v0[98] = v3;
  v0[99] = PairingExecutorState.description.getter();
  v0[100] = v4;
  v5 = v0[45];
  v6 = v0[46];

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), v5, v6);
}

{
  v1 = dispatch thunk of TimeTracker.duration(from:to:)();
  v3 = v2;

  v0[101] = v1;
  v0[102] = v3;
  v4 = v0[45];
  v5 = v0[46];

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), v4, v5);
}

{
  *(v0 + 824) = dispatch thunk of TimeTracker.topConsumers(with:)();
  *(v0 + 832) = v1;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v33 = v0;
  if (one-time initialization token for pairingTime != -1)
  {
    swift_once();
  }

  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[39];
  v4 = v0[18];
  __swift_project_value_buffer(v0[53], static Logger.pairingTime);
  v5 = *(v2 + 16);
  v0[105] = v5;
  v0[106] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[104];
  if (v8)
  {
    v30 = v0[102];
    v28 = v0[103];
    v29 = v0[101];
    v11 = v0[40];
    v10 = v0[41];
    v12 = v0[39];
    v13 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = v31;
    *v13 = 141558787;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v32);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2082;
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v9, &v32);

    *(v13 + 24) = v18;
    *(v13 + 32) = 2082;
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v32);

    *(v13 + 34) = v19;
    _os_log_impl(&dword_24AF48000, v6, v7, "Executor %{private,mask.hash}s statistics:\n    Top time-consuming operations:\n%{public}s),\n    Overall pairing time: %{public}s", v13, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C237030](v31, -1, -1);
    MEMORY[0x24C237030](v13, -1, -1);
  }

  else
  {
    v21 = v0[40];
    v20 = v0[41];
    v22 = v0[39];

    (*(v21 + 8))(v20, v22);
  }

  v0[107] = PairingExecutorState.description.getter();
  v0[108] = v23;
  v0[109] = PairingExecutorState.description.getter();
  v0[110] = v24;
  v25 = v0[45];
  v26 = v0[46];

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), v25, v26);
}

{
  v1 = dispatch thunk of TimeTracker.rawDuration(from:to:)();
  v3 = v2;

  *(v0 + 888) = v1;
  *(v0 + 896) = v3;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v1 = v0[27];
  v2 = v0[28];
  *v2 = 0u;
  v2[1] = 0u;
  swift_storeEnumTagMultiPayload();
  v0[113] = PairingExecutorState.description.getter();
  v0[114] = v3;
  outlined destroy of UserSessionState(v2, type metadata accessor for PairingExecutorState);
  *v1 = xmmword_24AFB0D50;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  swift_storeEnumTagMultiPayload();
  v0[115] = PairingExecutorState.description.getter();
  v0[116] = v4;
  outlined destroy of UserSessionState(v1, type metadata accessor for PairingExecutorState);
  v5 = v0[45];
  v6 = v0[46];

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), v5, v6);
}

{
  v1 = dispatch thunk of TimeTracker.rawDuration(from:to:)();
  v3 = v2;

  *(v0 + 936) = v1;
  *(v0 + 944) = v3;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v1 = v0[27];
  v2 = v0[28];
  *v2 = 0;
  swift_storeEnumTagMultiPayload();
  v0[119] = PairingExecutorState.description.getter();
  v0[120] = v3;
  outlined destroy of UserSessionState(v2, type metadata accessor for PairingExecutorState);
  *v1 = 1;
  swift_storeEnumTagMultiPayload();
  v0[121] = PairingExecutorState.description.getter();
  v0[122] = v4;
  outlined destroy of UserSessionState(v1, type metadata accessor for PairingExecutorState);
  v5 = v0[45];
  v6 = v0[46];

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), v5, v6);
}

{
  v1 = dispatch thunk of TimeTracker.rawDuration(from:to:)();
  v3 = v2;

  *(v0 + 984) = v1;
  *(v0 + 992) = v3;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v1 = v0[27];
  v2 = v0[28];
  *v2 = 4;
  swift_storeEnumTagMultiPayload();
  v0[125] = PairingExecutorState.description.getter();
  v0[126] = v3;
  outlined destroy of UserSessionState(v2, type metadata accessor for PairingExecutorState);
  *v1 = 5;
  swift_storeEnumTagMultiPayload();
  v0[127] = PairingExecutorState.description.getter();
  v0[128] = v4;
  outlined destroy of UserSessionState(v1, type metadata accessor for PairingExecutorState);
  v5 = v0[45];
  v6 = v0[46];

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), v5, v6);
}

{
  v1 = dispatch thunk of TimeTracker.rawDuration(from:to:)();
  v3 = v2;

  *(v0 + 1032) = v1;
  *(v0 + 1040) = v3;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v1 = v0[39];
  v2 = v0[27];
  v3 = v0[28];
  v4 = *(v0[40] + 56);
  v4(v3, 1, 1, v1);
  swift_storeEnumTagMultiPayload();
  v0[131] = PairingExecutorState.description.getter();
  v0[132] = v5;
  outlined destroy of UserSessionState(v3, type metadata accessor for PairingExecutorState);
  UUID.init()();
  v4(v2, 0, 1, v1);
  swift_storeEnumTagMultiPayload();
  v0[133] = PairingExecutorState.description.getter();
  v0[134] = v6;
  outlined destroy of UserSessionState(v2, type metadata accessor for PairingExecutorState);
  v7 = v0[45];
  v8 = v0[46];

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), v7, v8);
}

{
  v1 = dispatch thunk of TimeTracker.rawDuration(from:to:)();
  v3 = v2;

  *(v0 + 1080) = v1;
  *(v0 + 1088) = v3;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v1 = v0[20];
  v0[137] = *(v1 + 32);
  v0[138] = (v1 + 32) & 0xFFFFFFFFFFFFLL | 0x5F3A000000000000;
  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), v0[95], v0[96]);
}

{
  *(v0 + 1112) = (*(v0 + 1096))(*(v0 + 152), *(v0 + 160));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v13 = *(v0 + 1088);
  v1 = *(v0 + 1080);
  v2 = *(v0 + 840);
  v3 = *(v0 + 312);
  v14 = *(v0 + 232);
  v15 = *(v0 + 240);
  v4 = *(v0 + 200);
  v5 = *(v0 + 144);
  v12 = *(v0 + 888);
  v11 = *(v0 + 936);
  v10 = *(v0 + 984);
  v9 = *(v0 + 1032);
  v6 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV10identifier_13FindMyPairing0F13LatencyReportV07pairinggH0tMd, &_s10Foundation4UUIDV10identifier_13FindMyPairing0F13LatencyReportV07pairinggH0tMR) + 48);
  v2(v4, v5, v3);
  *v6 = v12;
  *(v6 + 16) = v11;
  *(v6 + 32) = v10;
  *(v6 + 48) = v9;
  *(v6 + 64) = v1;
  *(v6 + 72) = v13;
  swift_storeEnumTagMultiPayload();
  AsyncStreamProvider.yield(value:transaction:)();
  swift_unknownObjectRelease();

  outlined destroy of UserSessionState(v4, type metadata accessor for AnalyticsEvent);
  outlined destroy of UserSessionState(v14, type metadata accessor for PairingExecutorState);
  outlined destroy of UserSessionState(v15, type metadata accessor for PairingExecutorState);
  outlined destroy of UserSessionState(*(v0 + 288), type metadata accessor for PairingExecutorState);

  v7 = *(v0 + 8);

  return v7();
}

{
  *(v0 + 1160) = (*(v0 + 1128))(*(v0 + 152), *(v0 + 160));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v1 = v0[140];
  v2 = v0[39];
  v3 = v0[40];
  v4 = v0[25];
  v5 = v0[18];
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_p5error_10Foundation4UUIDVSg10identifiertMd, &_ss5Error_p5error_10Foundation4UUIDVSg10identifiertMR) + 48);
  *v4 = v1;
  (*(v3 + 16))(&v4[v6], v5, v2);
  (*(v3 + 56))(&v4[v6], 0, 1, v2);
  swift_storeEnumTagMultiPayload();
  MEMORY[0x24C236EC0](v1);
  AsyncStreamProvider.yield(value:transaction:)();

  outlined destroy of UserSessionState(v4, type metadata accessor for AnalyticsEvent);
  v7 = v0[144];
  v8 = v0[143];

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), v8, v7);
}

{
  PairingCoordinator.handleExecutorFailure(_:)(v0[140], v0[19], v0[20]);

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._listenToUpdates(of:stream:), 0, 0);
}

{
  v1 = v0[140];
  swift_unknownObjectRelease();
  MEMORY[0x24C236EB0](v1);
  outlined destroy of UserSessionState(v0[36], type metadata accessor for PairingExecutorState);

  v2 = v0[1];

  return v2();
}

uint64_t PairingCoordinator.startAccessoryPairing()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a2 + 72))();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v6;

  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t PairingCoordinator.handleExecutorFailure(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 72))(a2, a3);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v6;
  v7[5] = a1;

  MEMORY[0x24C236EC0](a1);
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[22] = a2;
  v3[23] = a3;
  v3[21] = a1;
  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish(), 0, 0);
}

uint64_t closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[24] = Strong;
  if (Strong)
  {
    v2 = v0[23];
    v0[25] = *(v2 + 16);
    v0[26] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0x20DC000000000000;
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[27] = v4;
    v0[28] = v3;

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish(), v4, v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

{
  v1 = (*(v0 + 200))(*(v0 + 176), *(v0 + 184));
  *(v0 + 232) = v1;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish(), v1, 0);
}

{
  v1 = *(v0 + 232);
  swift_beginAccess();
  v2 = *(v1 + 120);
  *(v0 + 144) = 11;
  v3 = swift_task_alloc();
  *(v3 + 16) = v0 + 144;

  *(v0 + 336) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v3, v2) & 1;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish(), 0, 0);
}

{
  if (*(v0 + 336))
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
      _os_log_impl(&dword_24AF48000, v2, v3, "Already handled initiate pairing finish!", v4, 2u);
      MEMORY[0x24C237030](v4, -1, -1);
    }

    swift_unknownObjectRelease();

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 184);
    *(v0 + 240) = *(v7 + 40);
    *(v0 + 248) = (v7 + 40) & 0xFFFFFFFFFFFFLL | 0xEA85000000000000;
    v8 = *(v0 + 216);
    v9 = *(v0 + 224);

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish(), v8, v9);
  }
}

{
  (*(v0 + 240))(*(v0 + 176), *(v0 + 184));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish(), 0, 0);
}

{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = (*(v2 + 80))(v1, v2);
  v0[32] = v3;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v0[19] = v3;
  v4 = swift_task_alloc();
  v0[33] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay13FindMyPairing0C8Executor_pGMd, &_sSay13FindMyPairing0C8Executor_pGMR);
  v6 = lazy protocol witness table accessor for type [PairingOperation] and conformance [A](&lazy protocol witness table cache variable for type [PairingExecutor] and conformance [A], &_sSay13FindMyPairing0C8Executor_pGMd, &_sSay13FindMyPairing0C8Executor_pGMR, MEMORY[0x277D83970]);
  *v4 = v0;
  v4[1] = closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish();

  return MEMORY[0x28215ED48](&async function pointer to closure #1 in closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish(), 0, v5, v6);
}

{
  v0[35] = *(v0[34] + 16);

  v1 = v0[27];
  v2 = v0[28];

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish(), v1, v2);
}

{
  (*(v0 + 240))(*(v0 + 176), *(v0 + 184));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish(), 0, 0);
}

{
  v1 = v0[35];
  v2 = v0[10];
  v3 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v2);
  v4 = (*(v3 + 80))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v5 = *(v4 + 16);

  if (v5 == v1)
  {
    v6 = swift_task_alloc();
    v0[36] = v6;
    *v6 = v0;
    v6[1] = closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish();
    v7 = v0[23];
    v8 = v0[22];

    return PairingCoordinator._isPairingNotFailed()(v8, v7);
  }

  else
  {
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
      v13 = v0[35];
      v14 = swift_slowAlloc();
      *v14 = 134349056;
      *(v14 + 4) = v13;
      _os_log_impl(&dword_24AF48000, v11, v12, "Waiting for all executors to finish initiate pairing. %{public}ld already finished.", v14, 0xCu);
      MEMORY[0x24C237030](v14, -1, -1);
    }

    swift_unknownObjectRelease();

    v15 = v0[1];

    return v15();
  }
}

{
  v2 = *v1;
  v2[39] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish(), 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[40] = v3;
    *v3 = v2;
    v3[1] = closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish();
    v4 = v2[23];
    v5 = v2[22];

    return PairingCoordinator._finishPairingIfPossible()(v5, v4);
  }
}

{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish();
  }

  else
  {
    v2 = closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish()(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    JUMPOUT(0x24C236EB0);
  }

  *(v4 + 272) = a1;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish(), 0, 0);
}

uint64_t closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish()(char a1)
{
  v4 = *v2;
  v4[37] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish(), 0, 0);
  }

  else if (a1)
  {
    v4[20] = 11;
    v12 = (*(v4[23] + 152) + **(v4[23] + 152));
    v5 = swift_task_alloc();
    v4[38] = v5;
    *v5 = v4;
    v5[1] = closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish();
    v6 = v4[23];
    v7 = v4[22];

    return v12(v4 + 20, v7, v6);
  }

  else
  {
    v8 = swift_task_alloc();
    v4[40] = v8;
    *v8 = v4;
    v8[1] = closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish();
    v9 = v4[23];
    v10 = v4[22];

    return PairingCoordinator._finishPairingIfPossible()(v10, v9);
  }
}

uint64_t closure #1 in closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish()(uint64_t *a1)
{
  v2 = a1[1];
  v1[2] = *a1;
  v1[3] = v2;
  v1[4] = swift_getObjectType();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish(), v4, v3);
}

uint64_t closure #1 in closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish()()
{
  v1 = PairingExecutor.initiatePairingFinished.getter(v0[4], v0[3]);
  v2 = v0[1];
  v3 = v1;

  return v2(v3);
}

uint64_t PairingCoordinator._isPairingNotFailed()(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v3[13] = type metadata accessor for PairingExecutorState(0);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[16] = v5;
  v3[17] = v4;

  return MEMORY[0x2822009F8](PairingCoordinator._isPairingNotFailed(), v5, v4);
}

uint64_t PairingCoordinator._isPairingNotFailed()()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 80);
  type metadata accessor for WorkItemQueue();
  (*(v1 + 72))(v2, v1);
  v3 = static WorkItemQueue.called(on:)();

  if (v3)
  {
    (*(*(v0 + 88) + 40))(*(v0 + 80));
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v4);
    v6 = (*(v5 + 80))(v4, v5);
    *(v0 + 144) = v6;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v7 = *(v6 + 16);
    *(v0 + 152) = v7;
    if (v7)
    {
      *(v0 + 160) = 0;
      *(v0 + 224) = 1;
      v8 = *(v0 + 144);
      *(v0 + 168) = *(v8 + 32);
      v9 = *(v8 + 40);
      *(v0 + 176) = swift_getObjectType();
      v10 = *(v9 + 8);
      *(v0 + 184) = v10;
      *(v0 + 192) = *(v10 + 32);
      *(v0 + 200) = (v10 + 32) & 0xFFFFFFFFFFFFLL | 0x9A0B000000000000;
      swift_unknownObjectRetain();
      v11 = dispatch thunk of Actor.unownedExecutor.getter();
      v13 = v12;
      v14 = PairingCoordinator._isPairingNotFailed();
      v15 = v11;
      v16 = v13;
    }

    else
    {
      *(v0 + 225) = 1;
      v20 = *(v0 + 88);
      v21 = *(v0 + 80);

      v15 = (*(v20 + 16))(v21, v20);
      *(v0 + 208) = v15;
      v14 = PairingCoordinator._isPairingNotFailed();
      v16 = 0;
    }

    return MEMORY[0x2822009F8](v14, v15, v16);
  }

  else
  {
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    swift_allocError();
    *v17 = 8;
    swift_willThrow();

    v18 = *(v0 + 8);

    return v18(0);
  }
}

{
  (*(v0 + 192))(*(v0 + 176), *(v0 + 184));
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return MEMORY[0x2822009F8](PairingCoordinator._isPairingNotFailed(), v1, v2);
}

{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  swift_unknownObjectRelease();
  outlined init with take of UserSessionState(v2, v1, type metadata accessor for PairingExecutorState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9 || EnumCaseMultiPayload == 10)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 6)
      {
        v4 = *(v0 + 224);
        goto LABEL_16;
      }

      outlined destroy of UserSessionState(*(v0 + 112), type metadata accessor for PairingExecutorState);
    }

    v4 = 0;
  }

  else
  {
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        v4 = *(v0 + 224);
        goto LABEL_16;
      }
    }

    else if (EnumCaseMultiPayload != 1)
    {
LABEL_12:
      v4 = *(v0 + 224);
      goto LABEL_16;
    }

    outlined destroy of UserSessionState(*(v0 + 112), type metadata accessor for PairingExecutorState);
    v4 = *(v0 + 224);
  }

LABEL_16:
  v5 = *(v0 + 160) + 1;
  if (v5 == *(v0 + 152))
  {
    *(v0 + 225) = v4;
    v6 = *(v0 + 88);
    v7 = *(v0 + 80);

    v8 = (*(v6 + 16))(v7, v6);
    *(v0 + 208) = v8;
    v9 = PairingCoordinator._isPairingNotFailed();
    v10 = 0;
  }

  else
  {
    *(v0 + 160) = v5;
    *(v0 + 224) = v4;
    v11 = *(v0 + 144) + 16 * v5;
    *(v0 + 168) = *(v11 + 32);
    v12 = *(v11 + 40);
    *(v0 + 176) = swift_getObjectType();
    v13 = *(v12 + 8);
    *(v0 + 184) = v13;
    *(v0 + 192) = *(v13 + 32);
    *(v0 + 200) = (v13 + 32) & 0xFFFFFFFFFFFFLL | 0x9A0B000000000000;
    swift_unknownObjectRetain();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
    v9 = PairingCoordinator._isPairingNotFailed();
    v8 = v14;
    v10 = v16;
  }

  return MEMORY[0x2822009F8](v9, v8, v10);
}

{
  v1 = *(v0 + 208);
  swift_beginAccess();
  v2 = *(v1 + 120);
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  while (v3)
  {
    v5 = *v4++;
    *(v0 + 216) = v5;
    --v3;
    if (v5 >= 0x11)
    {
      MEMORY[0x24C236EC0]();

      v6 = *(v0 + 128);
      v7 = *(v0 + 136);

      return MEMORY[0x2822009F8](PairingCoordinator._isPairingNotFailed(), v6, v7);
    }
  }

  v8 = *(v0 + 225);

  v9 = *(v0 + 8);

  return v9(v8);
}

{
  outlined consume of PairingCoordinatorState(*(v0 + 216));

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[22] = a2;
  v3[23] = a3;
  v3[21] = a1;
  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish(), 0, 0);
}

uint64_t closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[24] = Strong;
  if (Strong)
  {
    v2 = v0[23];
    v0[25] = *(v2 + 16);
    v0[26] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0x20DC000000000000;
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[27] = v4;
    v0[28] = v3;

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish(), v4, v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

{
  v1 = (*(v0 + 200))(*(v0 + 176), *(v0 + 184));
  *(v0 + 232) = v1;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish(), v1, 0);
}

{
  v1 = *(v0 + 232);
  swift_beginAccess();
  v2 = *(v1 + 120);
  *(v0 + 144) = 12;
  v3 = swift_task_alloc();
  *(v3 + 16) = v0 + 144;

  *(v0 + 336) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v3, v2) & 1;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish(), 0, 0);
}

{
  if (*(v0 + 336))
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
      _os_log_impl(&dword_24AF48000, v2, v3, "Already handled finalize pairing finish!", v4, 2u);
      MEMORY[0x24C237030](v4, -1, -1);
    }

    swift_unknownObjectRelease();

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 184);
    *(v0 + 240) = *(v7 + 40);
    *(v0 + 248) = (v7 + 40) & 0xFFFFFFFFFFFFLL | 0xEA85000000000000;
    v8 = *(v0 + 216);
    v9 = *(v0 + 224);

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish(), v8, v9);
  }
}

{
  (*(v0 + 240))(*(v0 + 176), *(v0 + 184));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish(), 0, 0);
}

{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = (*(v2 + 80))(v1, v2);
  v0[32] = v3;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v0[19] = v3;
  v4 = swift_task_alloc();
  v0[33] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay13FindMyPairing0C8Executor_pGMd, &_sSay13FindMyPairing0C8Executor_pGMR);
  v6 = lazy protocol witness table accessor for type [PairingOperation] and conformance [A](&lazy protocol witness table cache variable for type [PairingExecutor] and conformance [A], &_sSay13FindMyPairing0C8Executor_pGMd, &_sSay13FindMyPairing0C8Executor_pGMR, MEMORY[0x277D83970]);
  *v4 = v0;
  v4[1] = closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish();

  return MEMORY[0x28215ED48](&async function pointer to closure #1 in closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish(), 0, v5, v6);
}

{
  v0[35] = *(v0[34] + 16);

  v1 = v0[27];
  v2 = v0[28];

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish(), v1, v2);
}

{
  (*(v0 + 240))(*(v0 + 176), *(v0 + 184));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish(), 0, 0);
}

{
  v1 = v0[35];
  v2 = v0[10];
  v3 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v2);
  v4 = (*(v3 + 80))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v5 = *(v4 + 16);

  if (v5 == v1)
  {
    v6 = swift_task_alloc();
    v0[36] = v6;
    *v6 = v0;
    v6[1] = closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish();
    v7 = v0[23];
    v8 = v0[22];

    return PairingCoordinator._isPairingNotFailed()(v8, v7);
  }

  else
  {
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
      v13 = v0[35];
      v14 = swift_slowAlloc();
      *v14 = 134349056;
      *(v14 + 4) = v13;
      _os_log_impl(&dword_24AF48000, v11, v12, "Waiting for all executors to finish finalize pairing. %{public}ld already finished.", v14, 0xCu);
      MEMORY[0x24C237030](v14, -1, -1);
    }

    swift_unknownObjectRelease();

    v15 = v0[1];

    return v15();
  }
}

{
  if (*(v0 + 337) == 1)
  {
    *(v0 + 160) = 12;
    v6 = (*(*(v0 + 184) + 152) + **(*(v0 + 184) + 152));
    v1 = swift_task_alloc();
    *(v0 + 304) = v1;
    *v1 = v0;
    v1[1] = closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish();
    v2 = *(v0 + 184);
    v3 = *(v0 + 176);

    return v6(v0 + 160, v3, v2);
  }

  else
  {
    swift_unknownObjectRelease();
    v5 = *(v0 + 8);

    return v5();
  }
}

{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish();
  }

  else
  {
    v2 = closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 192);
  v2 = swift_task_alloc();
  *(v0 + 320) = v2;
  *(v2 + 16) = *(v0 + 176);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 328) = v3;
  *v3 = v0;
  v3[1] = closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish();

  return MEMORY[0x282200600]();
}

{

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish(), 0, 0);
}

{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish()(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    JUMPOUT(0x24C236EB0);
  }

  *(v4 + 272) = a1;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish(), 0, 0);
}

uint64_t closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish()(char a1)
{
  v4 = *v2;
  *(*v2 + 296) = v1;

  if (v1)
  {
    v5 = closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish();
  }

  else
  {
    *(v4 + 337) = a1 & 1;
    v5 = closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish();
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t closure #1 in closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish()(uint64_t *a1)
{
  v2 = a1[1];
  v1[2] = *a1;
  v1[3] = v2;
  v1[4] = swift_getObjectType();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish(), v4, v3);
}

uint64_t closure #1 in closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish()()
{
  v1 = PairingExecutor.finalizePairingFinished.getter(v0[4], v0[3]);
  v2 = v0[1];
  v3 = v1;

  return v2(v3);
}

uint64_t closure #2 in closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v5[14] = a2;
  v5[15] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = *(a5 + 40);
  v5[21] = (a5 + 40) & 0xFFFFFFFFFFFFLL | 0xEA85000000000000;
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish(), v8, v7);
}

uint64_t closure #2 in closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish()()
{
  (*(v0 + 160))(*(v0 + 128), *(v0 + 136));

  return MEMORY[0x2822009F8](closure #2 in closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish(), 0, 0);
}

{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  v3 = (*(v2 + 80))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v4 = *(v3 + 16);
  if (v4)
  {
    v25 = **(v0 + 112);
    v5 = (v3 + 32);
    v6 = type metadata accessor for TaskPriority();
    v7 = *(v6 - 8);
    v23 = *(v7 + 56);
    v22 = (v7 + 48);
    v21 = (v7 + 8);
    v24 = v6;
    do
    {
      v10 = *(v0 + 144);
      v11 = *(v0 + 152);
      v26 = *v5;
      v23(v11, 1, 1, v6);
      v12 = swift_allocObject();
      *(v12 + 16) = 0;
      v13 = (v12 + 16);
      *(v12 + 24) = 0;
      *(v12 + 32) = v26;
      outlined init with copy of PairingContext?(v11, v10, &_sScPSgMd, &_sScPSgMR);
      LODWORD(v10) = (*v22)(v10, 1, v6);
      swift_unknownObjectRetain_n();
      v14 = *(v0 + 144);
      if (v10 == 1)
      {
        outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(*(v0 + 144), &_sScPSgMd, &_sScPSgMR);
        if (*v13)
        {
          goto LABEL_9;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*v21)(v14, v6);
        if (*v13)
        {
LABEL_9:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v15 = dispatch thunk of Actor.unownedExecutor.getter();
          v16 = v17;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v15 = 0;
      v16 = 0;
LABEL_10:
      v18 = swift_allocObject();
      *(v18 + 16) = &async function pointer to partial apply for closure #1 in closure #2 in closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish();
      *(v18 + 24) = v12;

      if (v16 | v15)
      {
        v8 = v0 + 56;
        *(v0 + 56) = 0;
        *(v0 + 64) = 0;
        *(v0 + 72) = v15;
        *(v0 + 80) = v16;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v0 + 152);
      *(v0 + 88) = 1;
      *(v0 + 96) = v8;
      *(v0 + 104) = v25;
      swift_task_create();

      swift_unknownObjectRelease();

      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v9, &_sScPSgMd, &_sScPSgMR);
      ++v5;
      --v4;
      v6 = v24;
    }

    while (v4);
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t closure #1 in closure #2 in closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = dispatch thunk of PairingServiceProxy.reevaluateDependencies(for:);

  return PairingExecutor._pairingAck()(ObjectType, a5);
}

uint64_t closure #1 in PairingCoordinator.handleExecutorPairingFinish()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[28] = a2;
  v3[29] = a3;
  v3[27] = a1;
  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorPairingFinish(), 0, 0);
}

uint64_t closure #1 in PairingCoordinator.handleExecutorPairingFinish()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[30] = Strong;
  if (Strong)
  {
    v2 = v0[29];
    v0[31] = *(v2 + 16);
    v0[32] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0x20DC000000000000;
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[33] = v4;
    v0[34] = v3;

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorPairingFinish(), v4, v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

{
  v1 = (*(v0 + 248))(*(v0 + 224), *(v0 + 232));
  *(v0 + 280) = v1;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorPairingFinish(), v1, 0);
}

{
  v1 = *(v0 + 280);
  swift_beginAccess();
  v2 = *(v1 + 120);
  *(v0 + 184) = 13;
  v3 = swift_task_alloc();
  *(v3 + 16) = v0 + 184;

  *(v0 + 432) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v3, v2) & 1;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorPairingFinish(), 0, 0);
}

{
  if (*(v0 + 432))
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
      _os_log_impl(&dword_24AF48000, v2, v3, "Already handled pairing finish!", v4, 2u);
      MEMORY[0x24C237030](v4, -1, -1);
    }

    swift_unknownObjectRelease();

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 232);
    *(v0 + 288) = *(v7 + 40);
    *(v0 + 296) = (v7 + 40) & 0xFFFFFFFFFFFFLL | 0xEA85000000000000;
    v8 = *(v0 + 264);
    v9 = *(v0 + 272);

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorPairingFinish(), v8, v9);
  }
}

{
  (*(v0 + 288))(*(v0 + 224), *(v0 + 232));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorPairingFinish(), 0, 0);
}

{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = (*(v2 + 80))(v1, v2);
  v0[38] = v3;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v0[24] = v3;
  v4 = swift_task_alloc();
  v0[39] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay13FindMyPairing0C8Executor_pGMd, &_sSay13FindMyPairing0C8Executor_pGMR);
  v0[40] = v5;
  v6 = lazy protocol witness table accessor for type [PairingOperation] and conformance [A](&lazy protocol witness table cache variable for type [PairingExecutor] and conformance [A], &_sSay13FindMyPairing0C8Executor_pGMd, &_sSay13FindMyPairing0C8Executor_pGMR, MEMORY[0x277D83970]);
  v0[41] = v6;
  *v4 = v0;
  v4[1] = closure #1 in PairingCoordinator.handleExecutorPairingFinish();

  return MEMORY[0x28215ED48](&async function pointer to closure #1 in closure #1 in PairingCoordinator.handleExecutorPairingFinish(), 0, v5, v6);
}

{
  v0[43] = *(v0[42] + 16);

  v1 = v0[33];
  v2 = v0[34];

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorPairingFinish(), v1, v2);
}

{
  (*(v0 + 288))(*(v0 + 224), *(v0 + 232));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorPairingFinish(), 0, 0);
}

{
  v1 = v0[43];
  v2 = v0[10];
  v3 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v2);
  v4 = (*(v3 + 80))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v5 = *(v4 + 16);

  if (v5 == v1)
  {
    v6 = swift_task_alloc();
    v0[44] = v6;
    *v6 = v0;
    v6[1] = closure #1 in PairingCoordinator.handleExecutorPairingFinish();
    v7 = v0[29];
    v8 = v0[28];

    return PairingCoordinator._isPairingNotFailed()(v8, v7);
  }

  else
  {
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
      v13 = v0[43];
      v14 = swift_slowAlloc();
      *v14 = 134349056;
      *(v14 + 4) = v13;
      _os_log_impl(&dword_24AF48000, v11, v12, "Waiting for all executors to finish pairing. %{public}ld already finished.", v14, 0xCu);
      MEMORY[0x24C237030](v14, -1, -1);
    }

    swift_unknownObjectRelease();

    v15 = v0[1];

    return v15();
  }
}

{
  if (*(v0 + 433) == 1)
  {
    *(v0 + 200) = 13;
    v6 = (*(*(v0 + 232) + 152) + **(*(v0 + 232) + 152));
    v1 = swift_task_alloc();
    *(v0 + 368) = v1;
    *v1 = v0;
    v1[1] = closure #1 in PairingCoordinator.handleExecutorPairingFinish();
    v2 = *(v0 + 232);
    v3 = *(v0 + 224);

    return v6(v0 + 200, v3, v2);
  }

  else
  {
    swift_unknownObjectRelease();
    v5 = *(v0 + 8);

    return v5();
  }
}

{
  v2 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = closure #1 in PairingCoordinator.handleExecutorPairingFinish();
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v4 = *(v2 + 264);
    v5 = *(v2 + 272);
    v3 = closure #1 in PairingCoordinator.handleExecutorPairingFinish();
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

{
  (*(v0 + 288))(*(v0 + 224), *(v0 + 232));

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorPairingFinish(), 0, 0);
}

{
  v1 = v0[15];
  v2 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v1);
  v3 = (*(v2 + 80))(v1, v2);
  v0[48] = v3;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  v0[26] = v3;
  v4 = swift_task_alloc();
  v0[49] = v4;
  v5 = type metadata accessor for UUID();
  v0[50] = v5;
  *v4 = v0;
  v4[1] = closure #1 in PairingCoordinator.handleExecutorPairingFinish();
  v6 = v0[40];
  v7 = v0[41];

  return MEMORY[0x28215ED58](&async function pointer to closure #2 in closure #1 in PairingCoordinator.handleExecutorPairingFinish(), 0, v6, v5, v7);
}

{
  v17 = v0;
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
    v5 = v0[50];
    v4 = v0[51];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x800000024AFAF7D0, &v16);
    *(v6 + 12) = 2080;
    v8 = MEMORY[0x24C236860](v4, v5);
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v16);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_24AF48000, v2, v3, "%s with beaconIds: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C237030](v7, -1, -1);
    MEMORY[0x24C237030](v6, -1, -1);
  }

  v11 = swift_task_alloc();
  v0[52] = v11;
  *v11 = v0;
  v11[1] = closure #1 in PairingCoordinator.handleExecutorPairingFinish();
  v12 = v0[51];
  v13 = v0[29];
  v14 = v0[28];

  return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, 0, v12, v14, v13);
}

{
  *(*v1 + 424) = v0;

  if (v0)
  {
    v2 = closure #1 in PairingCoordinator.handleExecutorPairingFinish();
  }

  else
  {
    v2 = closure #1 in PairingCoordinator.handleExecutorPairingFinish();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

{

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in PairingCoordinator.handleExecutorPairingFinish()(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    JUMPOUT(0x24C236EB0);
  }

  *(v4 + 336) = a1;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorPairingFinish(), 0, 0);
}

{
  *(*v2 + 408) = a1;

  if (v1)
  {

    JUMPOUT(0x24C236EB0);
  }

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorPairingFinish(), 0, 0);
}

uint64_t closure #1 in PairingCoordinator.handleExecutorPairingFinish()(char a1)
{
  v4 = *v2;
  *(*v2 + 360) = v1;

  if (v1)
  {
    v5 = closure #1 in PairingCoordinator.handleExecutorPairingFinish();
  }

  else
  {
    *(v4 + 433) = a1 & 1;
    v5 = closure #1 in PairingCoordinator.handleExecutorPairingFinish();
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t closure #1 in closure #1 in PairingCoordinator.handleExecutorPairingFinish()(uint64_t *a1)
{
  v2 = a1[1];
  v1[2] = *a1;
  v1[3] = v2;
  v1[4] = swift_getObjectType();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in PairingCoordinator.handleExecutorPairingFinish(), v4, v3);
}

uint64_t closure #1 in closure #1 in PairingCoordinator.handleExecutorPairingFinish()()
{
  v1 = PairingExecutor.pairingFinished.getter(v0[4], v0[3]);
  v2 = v0[1];
  v3 = v1;

  return v2(v3);
}

uint64_t closure #2 in closure #1 in PairingCoordinator.handleExecutorPairingFinish()(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v2[2] = a1;
  v2[3] = v4;
  v2[4] = v3;
  v2[5] = swift_getObjectType();
  v2[6] = *(v3 + 104);
  v2[7] = (v3 + 104) & 0xFFFFFFFFFFFFLL | 0xBE7D000000000000;
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in closure #1 in PairingCoordinator.handleExecutorPairingFinish(), v6, v5);
}

uint64_t closure #2 in closure #1 in PairingCoordinator.handleExecutorPairingFinish()()
{
  (*(v0 + 48))(*(v0 + 40), *(v0 + 32));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in PairingCoordinator.handleExecutorFailure(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.handleExecutorFailure(_:), 0, 0);
}

uint64_t closure #1 in PairingCoordinator.handleExecutorFailure(_:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = v0[6];
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = closure #1 in PairingCoordinator.handleExecutorFailure(_:);
    v4 = v0[7];
    v5 = v0[8];
    v6 = MEMORY[0x277D84F90];

    return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, v2, v6, v4, v5);
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = closure #1 in PairingCoordinator.handleExecutorFailure(_:);
  }

  else
  {
    v2 = closure #1 in PairingCoordinator.handleExecutorFailure(_:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

{
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 88);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    MEMORY[0x24C236EC0](v6);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in end pairing: %{public}@", v7, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v8, -1, -1);
    MEMORY[0x24C237030](v7, -1, -1);
    swift_unknownObjectRelease();
    MEMORY[0x24C236EB0](v6);
  }

  else
  {
    swift_unknownObjectRelease();

    MEMORY[0x24C236EB0](v6);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t PairingCoordinator._finalizePairing(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v4[11] = *(a3 + 8);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[12] = v6;
  v4[13] = v5;

  return MEMORY[0x2822009F8](PairingCoordinator._finalizePairing(with:), v6, v5);
}

uint64_t PairingCoordinator._finalizePairing(with:)()
{
  v1 = v0[9];
  v2 = v0[8];
  type metadata accessor for WorkItemQueue();
  (*(v1 + 72))(v2, v1);
  v3 = static WorkItemQueue.called(on:)();

  if (v3)
  {
    (*(v0[9] + 40))(v0[8]);
    v4 = v0[5];
    v5 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
    v6 = (*(v5 + 40))(v4, v5);
    v0[14] = v6;
    if (v6)
    {
      v0[15] = v7;
      v8 = v7;
      v0[16] = swift_getObjectType();
      v0[17] = *(v8 + 56);
      v0[18] = (v8 + 56) & 0xFFFFFFFFFFFFLL | 0x6389000000000000;
      v10 = dispatch thunk of Actor.unownedExecutor.getter();

      return MEMORY[0x2822009F8](PairingCoordinator._finalizePairing(with:), v10, v9);
    }

    else
    {
      v13 = v0[10];
      v14 = v0[7];
      v18 = *(v0 + 4);
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
      v15 = swift_task_alloc();
      v0[19] = v15;
      *(v15 + 16) = v18;
      *(v15 + 32) = v13;
      *(v15 + 40) = v14;
      v16 = swift_task_alloc();
      v0[20] = v16;
      *v16 = v0;
      v16[1] = PairingCoordinator._finalizePairing(with:);

      return MEMORY[0x282200600]();
    }
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
  (*(v0 + 136))(1, *(v0 + 128), *(v0 + 120));
  swift_unknownObjectRelease();
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return MEMORY[0x2822009F8](PairingCoordinator._finalizePairing(with:), v1, v2);
}

{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v6 = *(v0 + 64);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v3 = swift_task_alloc();
  *(v0 + 152) = v3;
  *(v3 + 16) = v6;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  *v4 = v0;
  v4[1] = PairingCoordinator._finalizePairing(with:);

  return MEMORY[0x282200600]();
}

{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return MEMORY[0x2822009F8](PairingCoordinator.forceStopPairing(), v3, v2);
}

uint64_t closure #1 in PairingCoordinator._finalizePairing(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v6[20] = a3;
  v6[21] = a4;
  v6[19] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator._finalizePairing(with:), v8, v7);
}

uint64_t closure #1 in PairingCoordinator._finalizePairing(with:)()
{
  (*(*(v0 + 184) + 40))(*(v0 + 176));
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  v3 = (*(v2 + 80))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v4 = *(v3 + 16);
  if (v4)
  {
    v28 = **(v0 + 152);
    v5 = (v3 + 32);
    v6 = type metadata accessor for TaskPriority();
    v7 = *(v6 - 8);
    v26 = *(v7 + 56);
    v25 = (v7 + 48);
    v24 = (v7 + 8);
    v27 = v6;
    do
    {
      v11 = *(v0 + 192);
      v10 = *(v0 + 200);
      v12 = *(v0 + 168);
      v29 = *v5;
      v26(v10, 1, 1, v6);
      outlined init with copy of PairingContext?(v12, v0 + 56, &_s13FindMyPairing0C17ConfigurationType_pSgMd, &_s13FindMyPairing0C17ConfigurationType_pSgMR);
      v13 = swift_allocObject();
      *(v13 + 16) = 0;
      v14 = (v13 + 16);
      *(v13 + 24) = 0;
      v15 = *(v0 + 56);
      *(v13 + 32) = v29;
      *(v13 + 48) = v15;
      *(v13 + 64) = *(v0 + 72);
      *(v13 + 80) = *(v0 + 88);
      outlined init with copy of PairingContext?(v10, v11, &_sScPSgMd, &_sScPSgMR);
      v16 = (*v25)(v11, 1, v6);
      swift_unknownObjectRetain_n();
      v17 = *(v0 + 192);
      if (v16 == 1)
      {
        outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(*(v0 + 192), &_sScPSgMd, &_sScPSgMR);
        if (*v14)
        {
          goto LABEL_9;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*v24)(v17, v6);
        if (*v14)
        {
LABEL_9:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v18 = dispatch thunk of Actor.unownedExecutor.getter();
          v19 = v20;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v18 = 0;
      v19 = 0;
LABEL_10:
      v21 = swift_allocObject();
      *(v21 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in PairingCoordinator._finalizePairing(with:);
      *(v21 + 24) = v13;

      if (v19 | v18)
      {
        v8 = v0 + 96;
        *(v0 + 96) = 0;
        *(v0 + 104) = 0;
        *(v0 + 112) = v18;
        *(v0 + 120) = v19;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v0 + 200);
      *(v0 + 128) = 1;
      *(v0 + 136) = v8;
      *(v0 + 144) = v28;
      swift_task_create();

      swift_unknownObjectRelease();

      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v9, &_sScPSgMd, &_sScPSgMR);
      ++v5;
      --v4;
      v6 = v27;
    }

    while (v4);
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t closure #1 in closure #1 in PairingCoordinator._finalizePairing(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a4;
  v6[6] = a5;
  v9 = type metadata accessor for CancellationError();
  v6[7] = v9;
  v6[8] = *(v9 - 8);
  v6[9] = swift_task_alloc();
  ObjectType = swift_getObjectType();
  v11 = swift_task_alloc();
  v6[10] = v11;
  *v11 = v6;
  v11[1] = closure #1 in closure #1 in PairingCoordinator._finalizePairing(with:);

  return PairingExecutor._completePairing(with:)(a6, ObjectType, a5);
}

uint64_t closure #1 in closure #1 in PairingCoordinator._finalizePairing(with:)()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](closure #1 in closure #1 in PairingCoordinator._finalizePairing(with:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{
  v26 = v0;
  *(v0 + 32) = *(v0 + 88);
  MEMORY[0x24C236EC0]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    MEMORY[0x24C236EB0](*(v0 + 88));
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
      *v4 = 0;
      _os_log_impl(&dword_24AF48000, v2, v3, "Pairing finish cancelled.", v4, 2u);
      MEMORY[0x24C237030](v4, -1, -1);
    }

    v6 = *(v0 + 64);
    v5 = *(v0 + 72);
    v7 = *(v0 + 56);

    (*(v6 + 8))(v5, v7);
    v8 = *(v0 + 32);
  }

  else
  {
    MEMORY[0x24C236EB0](*(v0 + 32));
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 88);
    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.pairingCoordinator);
    swift_unknownObjectRetain();
    MEMORY[0x24C236EC0](v9);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    MEMORY[0x24C236EB0](v9);
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 88);
    if (v13)
    {
      v24 = *(v0 + 40);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25 = v17;
      *v15 = 136315394;
      *(v0 + 16) = v24;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing0C8Executor_pMd, &_s13FindMyPairing0C8Executor_pMR);
      v18 = String.init<A>(describing:)();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v25);

      *(v15 + 4) = v20;
      *(v15 + 12) = 2114;
      MEMORY[0x24C236EC0](v14);
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v21;
      *v16 = v21;
      _os_log_impl(&dword_24AF48000, v11, v12, "Failure in pairing complete for %s error %{public}@", v15, 0x16u);
      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C237030](v16, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x24C237030](v17, -1, -1);
      MEMORY[0x24C237030](v15, -1, -1);
      MEMORY[0x24C236EB0](v14);

      goto LABEL_13;
    }

    v8 = v14;
  }

  MEMORY[0x24C236EB0](v8);
LABEL_13:

  v22 = *(v0 + 8);

  return v22();
}

uint64_t closure #1 in PairingCoordinator.forceStopPairing()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v23 = a4;
  v24 = a8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v23 - v15;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v11 + 16))(v13, a1, v10);
  v19 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  v21 = v23;
  *(v20 + 4) = a3;
  *(v20 + 5) = v21;
  *(v20 + 6) = v18;
  (*(v11 + 32))(&v20[v19], v13, v10);
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v16, v24, v20);

  return outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v16, &_sScPSgMd, &_sScPSgMR);
}

uint64_t closure #1 in closure #1 in PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  return MEMORY[0x2822009F8](closure #1 in closure #1 in PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), 0, 0);
}

uint64_t closure #1 in closure #1 in PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {
    *(v0 + 40) = 4;
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
    v5 = closure #1 in closure #1 in PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
LABEL_5:

    return MEMORY[0x2822009F8](v5, v2, v4);
  }

  *(v0 + 112) = 0;
  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  *(v0 + 120) = v6;
  if (v6)
  {
    *(v0 + 136) = 0;
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v7;
    v5 = closure #1 in closure #1 in PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  CheckedContinuation.resume(returning:)();
  v8 = *(v0 + 8);

  return v8();
}

{
  PairingCoordinator.cancelTimeout(for:)((v0 + 40), *(v0 + 80), *(v0 + 88));
  *(v0 + 104) = 0;
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), 0, 0);
}

{
  *(v0 + 112) = *(v0 + 104);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 120) = Strong;
  if (Strong)
  {
    *(v0 + 136) = 0;
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](closure #1 in closure #1 in PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), v3, v2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
    CheckedContinuation.resume(returning:)();
    v4 = *(v0 + 8);

    return v4();
  }
}

{
  v1 = *(v0 + 112);
  PairingCoordinator.cancelTimeout(for:)((v0 + 136), *(v0 + 80), *(v0 + 88));
  *(v0 + 128) = v1;
  swift_unknownObjectRelease();
  if (v1)
  {
    v2 = closure #1 in closure #1 in PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
  }

  else
  {
    v2 = closure #1 in closure #1 in PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  CheckedContinuation.resume(returning:)();
  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 104);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  CheckedContinuation.resume(returning:)();
  v8 = *(v0 + 8);

  return v8();
}

{
  v1 = *(v0 + 128);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  CheckedContinuation.resume(returning:)();
  v8 = *(v0 + 8);

  return v8();
}

uint64_t closure #2 in PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v2[2] = a1;
  v2[3] = v4;
  v2[4] = v3;
  v2[5] = swift_getObjectType();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), v6, v5);
}

uint64_t closure #2 in PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)()
{
  v0[6] = PairingExecutor._pairingError()(v0[5], v0[4]);

  return MEMORY[0x2822009F8](closure #2 in PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:), 0, 0);
}

{
  **(v0 + 16) = *(v0 + 48);
  return (*(v0 + 8))();
}

uint64_t closure #1 in PairingCoordinator._interruptExecutorsPairing()(void *a1)
{
  v2 = a1[1];
  ObjectType = swift_getObjectType();
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = closure #1 in PairingCoordinator._interruptExecutorsPairing();

  return PairingExecutor._interruptPairing()(ObjectType, v2);
}

uint64_t closure #1 in PairingCoordinator._interruptExecutorsPairing()()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t closure #1 in PairingCoordinator.startTimeout(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 89) = a5;
  *(v7 + 40) = a4;
  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.startTimeout(for:), 0, 0);
}

uint64_t closure #1 in PairingCoordinator.startTimeout(for:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    *(v0 + 88) = *(v0 + 89);
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = closure #1 in PairingCoordinator.startTimeout(for:);
    v3 = *(v0 + 48);
    v4 = *(v0 + 56);

    return PairingCoordinator.pairingTimeOut(for:)((v0 + 88), v3, v4);
  }

  else
  {
    v6 = *(v0 + 8);

    return v6();
  }
}

{
  v2 = *v1;
  *(v2 + 80) = v0;

  swift_unknownObjectRelease();
  if (v0)
  {

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.startTimeout(for:), 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

{
  v24 = v0;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 89);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v6 = 136446466;
    v9 = 0xEE00676E69726961;
    v10 = 0x506C6C617265766FLL;
    v11 = 0xEC00000064616552;
    v12 = 0x617461646174656DLL;
    v13 = 0x800000024AFAF570;
    v14 = 0x53676E6972696170;
    if (v5 == 3)
    {
      v14 = 0xD000000000000010;
    }

    else
    {
      v13 = 0xEC00000074726174;
    }

    if (v5 != 2)
    {
      v12 = v14;
      v11 = v13;
    }

    if (v5)
    {
      v10 = 0xD000000000000013;
      v9 = 0x800000024AFAF540;
    }

    if (v5 <= 1)
    {
      v15 = v10;
    }

    else
    {
      v15 = v12;
    }

    if (v5 <= 1)
    {
      v16 = v9;
    }

    else
    {
      v16 = v11;
    }

    v17 = *(v0 + 80);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v23);

    *(v6 + 4) = v18;
    *(v6 + 12) = 2114;
    MEMORY[0x24C236EC0](v17);
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v19;
    *v7 = v19;
    _os_log_impl(&dword_24AF48000, v3, v4, "Failure in pairing timeout for %{public}s: %{public}@", v6, 0x16u);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x24C237030](v8, -1, -1);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C236EB0](v17);
  }

  else
  {
    v20 = *(v0 + 80);

    MEMORY[0x24C236EB0](v20);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t PairingCoordinator.pairingTimeOut(for:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 56) = a3;
  *(v4 + 64) = v3;
  *(v4 + 48) = a2;
  v6 = type metadata accessor for CancellationError();
  *(v4 + 72) = v6;
  *(v4 + 80) = *(v6 - 8);
  *(v4 + 88) = swift_task_alloc();
  v7 = type metadata accessor for ContinuousClock();
  *(v4 + 96) = v7;
  *(v4 + 104) = *(v7 - 8);
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 33) = *a1;
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 120) = v9;
  *(v4 + 128) = v8;

  return MEMORY[0x2822009F8](PairingCoordinator.pairingTimeOut(for:), v9, v8);
}

uint64_t PairingCoordinator.pairingTimeOut(for:)()
{
  v35 = v0;
  v1 = *(v0 + 56);
  v2 = *(v0 + 48);
  type metadata accessor for WorkItemQueue();
  (*(v1 + 72))(v2, v1);
  v3 = static WorkItemQueue.called(on:)();

  if (v3 & 1) != 0 || ((*(*(v0 + 56) + 80))(*(v0 + 48)), v4 = static WorkItemQueue.called(on:)(), , (v4))
  {
    lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
    swift_allocError();
    *v5 = 9;
    swift_willThrow();

    v6 = *(v0 + 8);
LABEL_4:

    return v6();
  }

  v8 = *(v0 + 56);
  v9 = *(v0 + 48);
  LOBYTE(v34[0]) = *(v0 + 33);
  v10 = (*(v8 + 168))(v34, v9);
  v12 = v11;
  v14 = v13;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  *(v0 + 136) = __swift_project_value_buffer(v15, static Logger.pairingCoordinator);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = *(v0 + 33);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v34[0] = v20;
    *v19 = 136446466;
    v21 = 0xEE00676E69726961;
    v22 = 0x506C6C617265766FLL;
    v23 = 0xEC00000064616552;
    v24 = 0x617461646174656DLL;
    v25 = 0x800000024AFAF570;
    v26 = 0x53676E6972696170;
    if (v18 == 3)
    {
      v26 = 0xD000000000000010;
    }

    else
    {
      v25 = 0xEC00000074726174;
    }

    if (v18 != 2)
    {
      v24 = v26;
      v23 = v25;
    }

    if (v18)
    {
      v22 = 0xD000000000000013;
      v21 = 0x800000024AFAF540;
    }

    if (v18 <= 1)
    {
      v27 = v22;
    }

    else
    {
      v27 = v24;
    }

    if (v18 <= 1)
    {
      v28 = v21;
    }

    else
    {
      v28 = v23;
    }

    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v34);

    *(v19 + 4) = v29;
    *(v19 + 12) = 2082;
    *(v0 + 16) = v10;
    *(v0 + 24) = v12;
    *(v0 + 32) = v14 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8DurationVSgMd, &_ss8DurationVSgMR);
    v30 = String.init<A>(describing:)();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v34);

    *(v19 + 14) = v32;
    _os_log_impl(&dword_24AF48000, v16, v17, "Pairing timeout for %{public}s start with duration: %{public}s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C237030](v20, -1, -1);
    MEMORY[0x24C237030](v19, -1, -1);
  }

  if (v14)
  {

    v6 = *(v0 + 8);
    goto LABEL_4;
  }

  static Clock<>.continuous.getter();
  v33 = swift_task_alloc();
  *(v0 + 144) = v33;
  *v33 = v0;
  v33[1] = PairingCoordinator.pairingTimeOut(for:);

  return specialized Clock.sleep(for:tolerance:)(v10, v12, 0, 0, 1);
}

{
  v2 = *v1;
  *(*v1 + 152) = v0;

  (*(v2[13] + 8))(v2[14], v2[12]);
  v3 = v2[16];
  v4 = v2[15];
  if (v0)
  {
    v5 = PairingCoordinator.pairingTimeOut(for:);
  }

  else
  {
    v5 = PairingCoordinator.pairingTimeOut(for:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v38 = v0;
  v1 = *(v0 + 152);
  static Task<>.checkCancellation()();
  if (!v1)
  {
    v17 = *(v0 + 56);
    v18 = *(v0 + 48);
    LOBYTE(v37[0]) = *(v0 + 33);
    PairingCoordinator.timeoutHandling(for:)(v37, v18, v17);
    goto LABEL_39;
  }

  *(v0 + 40) = v1;
  MEMORY[0x24C236EC0](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    MEMORY[0x24C236EB0](v1);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 33);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v37[0] = v6;
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

      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v37);

      *(v5 + 4) = v15;
      _os_log_impl(&dword_24AF48000, v2, v3, "Timeout task for %{public}s was cancelled.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x24C237030](v6, -1, -1);
      MEMORY[0x24C237030](v5, -1, -1);
    }

    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
    v16 = *(v0 + 40);
    goto LABEL_38;
  }

  MEMORY[0x24C236EB0](*(v0 + 40));
  MEMORY[0x24C236EC0](v1);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  MEMORY[0x24C236EB0](v1);
  if (!os_log_type_enabled(v19, v20))
  {

    v16 = v1;
LABEL_38:
    MEMORY[0x24C236EB0](v16);
    goto LABEL_39;
  }

  v21 = *(v0 + 33);
  v22 = swift_slowAlloc();
  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v37[0] = v24;
  *v22 = 136446466;
  v25 = 0xEE00676E69726961;
  v26 = 0x617461646174656DLL;
  v27 = 0xEC00000064616552;
  v28 = 0x800000024AFAF570;
  v29 = 0x53676E6972696170;
  if (v21 == 3)
  {
    v29 = 0xD000000000000010;
  }

  else
  {
    v28 = 0xEC00000074726174;
  }

  if (v21 != 2)
  {
    v26 = v29;
    v27 = v28;
  }

  v30 = 0xD000000000000013;
  if (v21)
  {
    v25 = 0x800000024AFAF540;
  }

  else
  {
    v30 = 0x506C6C617265766FLL;
  }

  if (v21 <= 1)
  {
    v31 = v30;
  }

  else
  {
    v31 = v26;
  }

  if (v21 <= 1)
  {
    v32 = v25;
  }

  else
  {
    v32 = v27;
  }

  v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v37);

  *(v22 + 4) = v33;
  *(v22 + 12) = 2114;
  MEMORY[0x24C236EC0](v1);
  v34 = _swift_stdlib_bridgeErrorToNSError();
  *(v22 + 14) = v34;
  *v23 = v34;
  _os_log_impl(&dword_24AF48000, v19, v20, "Timeout for %{public}s failed with error: %{public}@.", v22, 0x16u);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v23, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  MEMORY[0x24C237030](v23, -1, -1);
  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  MEMORY[0x24C237030](v24, -1, -1);
  MEMORY[0x24C237030](v22, -1, -1);
  MEMORY[0x24C236EB0](v1);

LABEL_39:

  v35 = *(v0 + 8);

  return v35();
}

{
  v36 = v0;
  v1 = *(v0 + 152);
  *(v0 + 40) = v1;
  MEMORY[0x24C236EC0](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    MEMORY[0x24C236EB0](v1);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 33);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v35 = v6;
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

      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v35);

      *(v5 + 4) = v15;
      _os_log_impl(&dword_24AF48000, v2, v3, "Timeout task for %{public}s was cancelled.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x24C237030](v6, -1, -1);
      MEMORY[0x24C237030](v5, -1, -1);
    }

    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
    v16 = *(v0 + 40);
    goto LABEL_36;
  }

  MEMORY[0x24C236EB0](*(v0 + 40));
  MEMORY[0x24C236EC0](v1);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  MEMORY[0x24C236EB0](v1);
  if (!os_log_type_enabled(v17, v18))
  {

    v16 = v1;
LABEL_36:
    MEMORY[0x24C236EB0](v16);
    goto LABEL_37;
  }

  v19 = *(v0 + 33);
  v20 = swift_slowAlloc();
  v21 = swift_slowAlloc();
  v22 = swift_slowAlloc();
  v35 = v22;
  *v20 = 136446466;
  v23 = 0xEE00676E69726961;
  v24 = 0x617461646174656DLL;
  v25 = 0xEC00000064616552;
  v26 = 0x800000024AFAF570;
  v27 = 0x53676E6972696170;
  if (v19 == 3)
  {
    v27 = 0xD000000000000010;
  }

  else
  {
    v26 = 0xEC00000074726174;
  }

  if (v19 != 2)
  {
    v24 = v27;
    v25 = v26;
  }

  v28 = 0xD000000000000013;
  if (v19)
  {
    v23 = 0x800000024AFAF540;
  }

  else
  {
    v28 = 0x506C6C617265766FLL;
  }

  if (v19 <= 1)
  {
    v29 = v28;
  }

  else
  {
    v29 = v24;
  }

  if (v19 <= 1)
  {
    v30 = v23;
  }

  else
  {
    v30 = v25;
  }

  v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v35);

  *(v20 + 4) = v31;
  *(v20 + 12) = 2114;
  MEMORY[0x24C236EC0](v1);
  v32 = _swift_stdlib_bridgeErrorToNSError();
  *(v20 + 14) = v32;
  *v21 = v32;
  _os_log_impl(&dword_24AF48000, v17, v18, "Timeout for %{public}s failed with error: %{public}@.", v20, 0x16u);
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v21, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  MEMORY[0x24C237030](v21, -1, -1);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  MEMORY[0x24C237030](v22, -1, -1);
  MEMORY[0x24C237030](v20, -1, -1);
  MEMORY[0x24C236EB0](v1);

LABEL_37:

  v33 = *(v0 + 8);

  return v33();
}

uint64_t PairingCoordinator.timeoutHandling(for:)(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  (*(a3 + 80))(a2, a3);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;

  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t closure #1 in PairingCoordinator.timeoutHandling(for:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a3;
  *(v4 + 64) = a4;
  *(v4 + 168) = a2;
  *(v4 + 48) = a1;
  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.timeoutHandling(for:), 0, 0);
}

uint64_t closure #1 in PairingCoordinator.timeoutHandling(for:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = v0[8];
    v0[10] = *(v2 + 16);
    v0[11] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0x20DC000000000000;
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.timeoutHandling(for:), v4, v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

{
  v1 = (*(v0 + 80))(*(v0 + 56), *(v0 + 64));
  *(v0 + 96) = v1;

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.timeoutHandling(for:), v1, 0);
}

{
  *(v0 + 169) = PairingCoordinatorStateManager.canTimeout.getter();

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.timeoutHandling(for:), 0, 0);
}

{
  v22 = v0;
  if (*(v0 + 169) == 1)
  {
    v1 = *(v0 + 72);
    v2 = swift_task_alloc();
    *(v0 + 104) = v2;
    *(v2 + 16) = *(v0 + 56);
    *(v2 + 32) = v1;
    v3 = swift_task_alloc();
    *(v0 + 112) = v3;
    *v3 = v0;
    v3[1] = closure #1 in PairingCoordinator.timeoutHandling(for:);

    return MEMORY[0x2822007B8]();
  }

  else
  {
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.pairingCoordinator);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 168);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v21 = v9;
      *v8 = 136446210;
      v10 = 0xEE00676E69726961;
      v11 = 0x506C6C617265766FLL;
      v12 = 0xEC00000064616552;
      v13 = 0x617461646174656DLL;
      v14 = 0x800000024AFAF570;
      v15 = 0x53676E6972696170;
      if (v7 == 3)
      {
        v15 = 0xD000000000000010;
      }

      else
      {
        v14 = 0xEC00000074726174;
      }

      if (v7 != 2)
      {
        v13 = v15;
        v12 = v14;
      }

      if (v7)
      {
        v11 = 0xD000000000000013;
        v10 = 0x800000024AFAF540;
      }

      if (v7 <= 1)
      {
        v16 = v11;
      }

      else
      {
        v16 = v13;
      }

      if (v7 <= 1)
      {
        v17 = v10;
      }

      else
      {
        v17 = v12;
      }

      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v21);

      *(v8 + 4) = v18;
      _os_log_impl(&dword_24AF48000, v5, v6, "Can't timeout for %{public}s, results were already forwarded to UI.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x24C237030](v9, -1, -1);
      MEMORY[0x24C237030](v8, -1, -1);
    }

    swift_unknownObjectRelease();

    v19 = *(v0 + 8);

    return v19();
  }
}

{

  return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.timeoutHandling(for:), 0, 0);
}

{
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = closure #1 in PairingCoordinator.timeoutHandling(for:);
  v2 = v0[8];
  v3 = v0[7];

  return PairingCoordinator._interruptExecutorsPairing()(v3, v2);
}

{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = closure #1 in PairingCoordinator.timeoutHandling(for:);
  }

  else
  {
    v2 = closure #1 in PairingCoordinator.timeoutHandling(for:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v8 = v0[8];
  lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError();
  v1 = swift_allocError();
  *v2 = 6;
  v0[5] = v1;
  v7 = (*(v8 + 152) + **(v8 + 152));
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = closure #1 in PairingCoordinator.timeoutHandling(for:);
  v4 = v0[8];
  v5 = v0[7];

  return v7(v0 + 5, v5, v4);
}

{
  v2 = *v1;
  v2[18] = v0;

  if (v0)
  {
    outlined consume of PairingCoordinatorState(v2[5]);

    return MEMORY[0x2822009F8](closure #1 in PairingCoordinator.timeoutHandling(for:), 0, 0);
  }

  else
  {
    outlined consume of PairingCoordinatorState(v2[5]);
    v3 = swift_task_alloc();
    v2[19] = v3;
    *v3 = v2;
    v3[1] = closure #1 in PairingCoordinator.timeoutHandling(for:);
    v4 = v2[8];
    v5 = v2[7];
    v6 = MEMORY[0x277D84F90];

    return PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(1, 0, v6, v5, v4);
  }
}

{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = closure #1 in PairingCoordinator.timeoutHandling(for:);
  }

  else
  {
    v2 = closure #1 in PairingCoordinator.timeoutHandling(for:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v19 = v0;
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
    v4 = *(v0 + 168);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136446210;
    v7 = 0xEE00676E69726961;
    v8 = 0x506C6C617265766FLL;
    v9 = 0xEC00000064616552;
    v10 = 0x617461646174656DLL;
    v11 = 0x800000024AFAF570;
    v12 = 0x53676E6972696170;
    if (v4 == 3)
    {
      v12 = 0xD000000000000010;
    }

    else
    {
      v11 = 0xEC00000074726174;
    }

    if (v4 != 2)
    {
      v10 = v12;
      v9 = v11;
    }

    if (v4)
    {
      v8 = 0xD000000000000013;
      v7 = 0x800000024AFAF540;
    }

    if (v4 <= 1)
    {
      v13 = v8;
    }

    else
    {
      v13 = v10;
    }

    if (v4 <= 1)
    {
      v14 = v7;
    }

    else
    {
      v14 = v9;
    }

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v18);

    *(v5 + 4) = v15;
    _os_log_impl(&dword_24AF48000, v2, v3, "Pairing timeout for %{public}s interrupted pairing.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x24C237030](v6, -1, -1);
    MEMORY[0x24C237030](v5, -1, -1);
  }

  swift_unknownObjectRelease();

  v16 = *(v0 + 8);

  return v16();
}

{
  v38 = v0;
  v1 = *(v0 + 128);
  v2 = 0x27EFC4000uLL;
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
    v36 = v3;
    v6 = *(v0 + 168);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v37 = v9;
    *v7 = 136446466;
    v10 = 0xEE00676E69726961;
    v11 = 0x617461646174656DLL;
    v12 = 0xEC00000064616552;
    v13 = 0x800000024AFAF570;
    v14 = 0x53676E6972696170;
    if (v6 == 3)
    {
      v14 = 0xD000000000000010;
    }

    else
    {
      v13 = 0xEC00000074726174;
    }

    if (v6 != 2)
    {
      v11 = v14;
      v12 = v13;
    }

    v15 = 0xD000000000000013;
    if (v6)
    {
      v10 = 0x800000024AFAF540;
    }

    else
    {
      v15 = 0x506C6C617265766FLL;
    }

    if (v6 <= 1)
    {
      v16 = v15;
    }

    else
    {
      v16 = v11;
    }

    if (v6 <= 1)
    {
      v17 = v10;
    }

    else
    {
      v17 = v12;
    }

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v37);

    *(v7 + 4) = v18;
    *(v7 + 12) = 2114;
    MEMORY[0x24C236EC0](v1);
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v19;
    *v8 = v19;
    _os_log_impl(&dword_24AF48000, v4, v5, "Failure in pairing interruption on timeout for %{public}s: %{public}@", v7, 0x16u);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x24C237030](v9, -1, -1);
    MEMORY[0x24C237030](v7, -1, -1);
    MEMORY[0x24C236EB0](v1);

    v2 = 0x27EFC4000;
    v3 = v36;
  }

  else
  {

    MEMORY[0x24C236EB0](v1);
  }

  if (*(v2 + 3112) != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v3, static Logger.pairingCoordinator);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = *(v0 + 168);
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v37 = v24;
    *v23 = 136446210;
    v25 = 0xEE00676E69726961;
    v26 = 0x617461646174656DLL;
    v27 = 0xEC00000064616552;
    v28 = 0x800000024AFAF570;
    v29 = 0x53676E6972696170;
    if (v22 == 3)
    {
      v29 = 0xD000000000000010;
    }

    else
    {
      v28 = 0xEC00000074726174;
    }

    if (v22 != 2)
    {
      v26 = v29;
      v27 = v28;
    }

    v30 = 0xD000000000000013;
    if (v22)
    {
      v25 = 0x800000024AFAF540;
    }

    else
    {
      v30 = 0x506C6C617265766FLL;
    }

    if (v22 <= 1)
    {
      v31 = v30;
    }

    else
    {
      v31 = v26;
    }

    if (v22 <= 1)
    {
      v32 = v25;
    }

    else
    {
      v32 = v27;
    }

    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v37);

    *(v23 + 4) = v33;
    _os_log_impl(&dword_24AF48000, v20, v21, "Pairing timeout for %{public}s interrupted pairing.", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x24C237030](v24, -1, -1);
    MEMORY[0x24C237030](v23, -1, -1);
  }

  swift_unknownObjectRelease();

  v34 = *(v0 + 8);

  return v34();
}

{
  v38 = v0;
  v1 = *(v0 + 144);
  v2 = 0x27EFC4000uLL;
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
    v36 = v3;
    v6 = *(v0 + 168);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v37 = v9;
    *v7 = 136446466;
    v10 = 0xEE00676E69726961;
    v11 = 0x617461646174656DLL;
    v12 = 0xEC00000064616552;
    v13 = 0x800000024AFAF570;
    v14 = 0x53676E6972696170;
    if (v6 == 3)
    {
      v14 = 0xD000000000000010;
    }

    else
    {
      v13 = 0xEC00000074726174;
    }

    if (v6 != 2)
    {
      v11 = v14;
      v12 = v13;
    }

    v15 = 0xD000000000000013;
    if (v6)
    {
      v10 = 0x800000024AFAF540;
    }

    else
    {
      v15 = 0x506C6C617265766FLL;
    }

    if (v6 <= 1)
    {
      v16 = v15;
    }

    else
    {
      v16 = v11;
    }

    if (v6 <= 1)
    {
      v17 = v10;
    }

    else
    {
      v17 = v12;
    }

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v37);

    *(v7 + 4) = v18;
    *(v7 + 12) = 2114;
    MEMORY[0x24C236EC0](v1);
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v19;
    *v8 = v19;
    _os_log_impl(&dword_24AF48000, v4, v5, "Failure in pairing interruption on timeout for %{public}s: %{public}@", v7, 0x16u);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x24C237030](v9, -1, -1);
    MEMORY[0x24C237030](v7, -1, -1);
    MEMORY[0x24C236EB0](v1);

    v2 = 0x27EFC4000;
    v3 = v36;
  }

  else
  {

    MEMORY[0x24C236EB0](v1);
  }

  if (*(v2 + 3112) != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v3, static Logger.pairingCoordinator);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = *(v0 + 168);
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v37 = v24;
    *v23 = 136446210;
    v25 = 0xEE00676E69726961;
    v26 = 0x617461646174656DLL;
    v27 = 0xEC00000064616552;
    v28 = 0x800000024AFAF570;
    v29 = 0x53676E6972696170;
    if (v22 == 3)
    {
      v29 = 0xD000000000000010;
    }

    else
    {
      v28 = 0xEC00000074726174;
    }

    if (v22 != 2)
    {
      v26 = v29;
      v27 = v28;
    }

    v30 = 0xD000000000000013;
    if (v22)
    {
      v25 = 0x800000024AFAF540;
    }

    else
    {
      v30 = 0x506C6C617265766FLL;
    }

    if (v22 <= 1)
    {
      v31 = v30;
    }

    else
    {
      v31 = v26;
    }

    if (v22 <= 1)
    {
      v32 = v25;
    }

    else
    {
      v32 = v27;
    }

    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v37);

    *(v23 + 4) = v33;
    _os_log_impl(&dword_24AF48000, v20, v21, "Pairing timeout for %{public}s interrupted pairing.", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x24C237030](v24, -1, -1);
    MEMORY[0x24C237030](v23, -1, -1);
  }

  swift_unknownObjectRelease();

  v34 = *(v0 + 8);

  return v34();
}

{
  v38 = v0;
  v1 = *(v0 + 160);
  v2 = 0x27EFC4000uLL;
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
    v36 = v3;
    v6 = *(v0 + 168);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v37 = v9;
    *v7 = 136446466;
    v10 = 0xEE00676E69726961;
    v11 = 0x617461646174656DLL;
    v12 = 0xEC00000064616552;
    v13 = 0x800000024AFAF570;
    v14 = 0x53676E6972696170;
    if (v6 == 3)
    {
      v14 = 0xD000000000000010;
    }

    else
    {
      v13 = 0xEC00000074726174;
    }

    if (v6 != 2)
    {
      v11 = v14;
      v12 = v13;
    }

    v15 = 0xD000000000000013;
    if (v6)
    {
      v10 = 0x800000024AFAF540;
    }

    else
    {
      v15 = 0x506C6C617265766FLL;
    }

    if (v6 <= 1)
    {
      v16 = v15;
    }

    else
    {
      v16 = v11;
    }

    if (v6 <= 1)
    {
      v17 = v10;
    }

    else
    {
      v17 = v12;
    }

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v37);

    *(v7 + 4) = v18;
    *(v7 + 12) = 2114;
    MEMORY[0x24C236EC0](v1);
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v19;
    *v8 = v19;
    _os_log_impl(&dword_24AF48000, v4, v5, "Failure in pairing interruption on timeout for %{public}s: %{public}@", v7, 0x16u);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x24C237030](v9, -1, -1);
    MEMORY[0x24C237030](v7, -1, -1);
    MEMORY[0x24C236EB0](v1);

    v2 = 0x27EFC4000;
    v3 = v36;
  }

  else
  {

    MEMORY[0x24C236EB0](v1);
  }

  if (*(v2 + 3112) != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v3, static Logger.pairingCoordinator);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = *(v0 + 168);
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v37 = v24;
    *v23 = 136446210;
    v25 = 0xEE00676E69726961;
    v26 = 0x617461646174656DLL;
    v27 = 0xEC00000064616552;
    v28 = 0x800000024AFAF570;
    v29 = 0x53676E6972696170;
    if (v22 == 3)
    {
      v29 = 0xD000000000000010;
    }

    else
    {
      v28 = 0xEC00000074726174;
    }

    if (v22 != 2)
    {
      v26 = v29;
      v27 = v28;
    }

    v30 = 0xD000000000000013;
    if (v22)
    {
      v25 = 0x800000024AFAF540;
    }

    else
    {
      v30 = 0x506C6C617265766FLL;
    }

    if (v22 <= 1)
    {
      v31 = v30;
    }

    else
    {
      v31 = v26;
    }

    if (v22 <= 1)
    {
      v32 = v25;
    }

    else
    {
      v32 = v27;
    }

    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v37);

    *(v23 + 4) = v33;
    _os_log_impl(&dword_24AF48000, v20, v21, "Pairing timeout for %{public}s interrupted pairing.", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x24C237030](v24, -1, -1);
    MEMORY[0x24C237030](v23, -1, -1);
  }

  swift_unknownObjectRelease();

  v34 = *(v0 + 8);

  return v34();
}

uint64_t closure #1 in closure #1 in closure #1 in PairingCoordinator.timeoutHandling(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in PairingCoordinator.timeoutHandling(for:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in PairingCoordinator.timeoutHandling(for:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = v0[8];
    v0[10] = *(v2 + 72);
    v0[11] = (v2 + 72) & 0xFFFFFFFFFFFFLL | 0xF94D000000000000;
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in PairingCoordinator.timeoutHandling(for:), v4, v3);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
    CheckedContinuation.resume(returning:)();
    v5 = v0[1];

    return v5();
  }
}

{
  *(v0 + 96) = (*(v0 + 80))(*(v0 + 56), *(v0 + 64));
  swift_unknownObjectRelease();
  v3 = (*MEMORY[0x277D08950] + MEMORY[0x277D08950]);
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = closure #1 in closure #1 in closure #1 in PairingCoordinator.timeoutHandling(for:);

  return v3();
}

{

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in PairingCoordinator.timeoutHandling(for:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  CheckedContinuation.resume(returning:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t one-time initialization function for pairingCoordinator()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.pairingCoordinator);
  __swift_project_value_buffer(v0, static Logger.pairingCoordinator);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.pairingCoordinator.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.pairingCoordinator);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v6(a1);
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

  return MEMORY[0x2822009F8](specialized Clock.sleep(for:tolerance:), 0, 0);
}

uint64_t specialized Clock.sleep(for:tolerance:)()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  dispatch thunk of Clock.now.getter();
  lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
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

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
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

    return MEMORY[0x2822009F8](specialized Clock.sleep(for:tolerance:), 0, 0);
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

unint64_t lazy protocol witness table accessor for type PairingCoordinatorError and conformance PairingCoordinatorError()
{
  result = lazy protocol witness table cache variable for type PairingCoordinatorError and conformance PairingCoordinatorError;
  if (!lazy protocol witness table cache variable for type PairingCoordinatorError and conformance PairingCoordinatorError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PairingCoordinatorError and conformance PairingCoordinatorError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PairingCoordinatorError and conformance PairingCoordinatorError;
  if (!lazy protocol witness table cache variable for type PairingCoordinatorError and conformance PairingCoordinatorError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PairingCoordinatorError and conformance PairingCoordinatorError);
  }

  return result;
}

uint64_t partial apply for closure #1 in PairingCoordinator.setup()(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = dispatch thunk of PairingValidator.ack(_:);

  return closure #1 in PairingCoordinator.setup()(a1, v6, v7, v8, v4, v5);
}

unint64_t lazy protocol witness table accessor for type PairingOperation and conformance PairingOperation()
{
  result = lazy protocol witness table cache variable for type PairingOperation and conformance PairingOperation;
  if (!lazy protocol witness table cache variable for type PairingOperation and conformance PairingOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PairingOperation and conformance PairingOperation);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PairingCoordinatorError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PairingCoordinatorError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_13FindMyPairing0C8Location_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t getEnumTagSinglePayload for PairingSuccessResult(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PairingSuccessResult(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t dispatch thunk of PairingCoordinator.stream()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 136) + **(a3 + 136));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of PairingValidator.ack(_:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PairingCoordinator.analyticsStream()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 144) + **(a3 + 144));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of PairingServiceProxy.reevaluateDependencies(for:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PairingCoordinator.setState(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 152) + **(a3 + 152));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of PairingValidator.ack(_:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PairingCoordinator.pairingLocation()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 176) + **(a3 + 176));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of PairingValidator.ack(_:);

  return v9(a1, a2, a3);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of PairingValidator.ack(_:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t partial apply for implicit closure #1 in closure #1 in PairingCoordinator.setup()()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for implicit closure #1 in closure #1 in PairingCoordinator.setup();

  return implicit closure #1 in closure #1 in PairingCoordinator.setup()(v4, v2, v3);
}

uint64_t partial apply for implicit closure #1 in closure #1 in PairingCoordinator.setup()(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t _sytSgIegHd_AAs5Error_pIegHTrzo_TRTA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of PairingValidator.ack(_:);

  return _sytSgIegHd_AAs5Error_pIegHTrzo_TR(a1, v4);
}

uint64_t partial apply for implicit closure #2 in closure #1 in PairingCoordinator.setup()()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = dispatch thunk of PairingService.pairingDependencies.getter;

  return implicit closure #2 in closure #1 in PairingCoordinator.setup()(v4, v2, v3);
}

uint64_t _sytSgs5Error_pIegHdzo_AAsAB_pIegHTrzo_TRTA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of PairingValidator.ack(_:);

  return _sytSgs5Error_pIegHdzo_AAsAB_pIegHTrzo_TR(a1, v4);
}

uint64_t partial apply for implicit closure #3 in closure #1 in PairingCoordinator.setup()()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for implicit closure #3 in closure #1 in PairingCoordinator.setup();

  return implicit closure #3 in closure #1 in PairingCoordinator.setup()(v4, v2, v3);
}

uint64_t partial apply for closure #1 in PairingCoordinator.startTimeout(for:)(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = dispatch thunk of PairingValidator.ack(_:);

  return closure #1 in PairingCoordinator.startTimeout(for:)(a1, v6, v7, v8, v9, v4, v5);
}

uint64_t partial apply for closure #1 in PairingCoordinator.timeoutHandling(for:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = dispatch thunk of PairingValidator.ack(_:);

  return closure #1 in PairingCoordinator.timeoutHandling(for:)(v4, v5, v2, v3);
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(unint64_t *a1)
{
  return specialized closure #1 in Sequence<>.contains(_:)(a1, *(v1 + 16)) & 1;
}

{
  v2 = **(v1 + 16);
  v5 = *a1;
  v4 = v2;
  return specialized static PairingCoordinatorState.== infix(_:_:)(&v5, &v4) & 1;
}

uint64_t lazy protocol witness table accessor for type [PairingOperation] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t partial apply for closure #1 in closure #1 in PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR) - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = dispatch thunk of PairingValidator.ack(_:);

  return closure #1 in closure #1 in PairingCoordinator._endPairing(forwardResultToUI:error:beaconIds:)(a1, v8, v9, v10, v1 + v7, v4, v5);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in PairingCoordinator.timeoutHandling(for:)(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR) - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = dispatch thunk of PairingValidator.ack(_:);

  return closure #1 in closure #1 in closure #1 in PairingCoordinator.timeoutHandling(for:)(a1, v8, v9, v10, v1 + v7, v4, v5);
}

uint64_t partial apply for closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = dispatch thunk of PairingValidator.ack(_:);

  return closure #1 in PairingCoordinator.handlePairingStarted(accessoryIdentifier:)(v6, v0 + v5, v2, v3);
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

uint64_t partial apply for closure #1 in PairingCoordinator._proceedWithConnection()(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = dispatch thunk of PairingValidator.ack(_:);

  return closure #1 in PairingCoordinator._proceedWithConnection()(a1, a2, v9, v8, v6, v7);
}

uint64_t partial apply for closure #1 in closure #1 in PairingCoordinator._proceedWithConnection()(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = dispatch thunk of PairingValidator.ack(_:);

  return closure #1 in closure #1 in PairingCoordinator._proceedWithConnection()(a1, v5, v6, v7, v8, v9, (v1 + 9), v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of PairingValidator.ack(_:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in PairingCoordinator._proceedWithConnection()(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = dispatch thunk of PairingValidator.ack(_:);

  return closure #1 in closure #1 in closure #1 in PairingCoordinator._proceedWithConnection()(a1, v6, v7, v9, v8, v4, v5);
}

uint64_t partial apply for closure #1 in PairingCoordinator._listenToUpdates(of:stream:)()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(type metadata accessor for PairingExecutorState(0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for UUID() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = v0[4];
  v10 = v0[5];
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = dispatch thunk of PairingValidator.ack(_:);

  return closure #1 in PairingCoordinator._listenToUpdates(of:stream:)(v9, v10, v0 + v5, v0 + v8, v3, v2);
}

uint64_t lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void outlined consume of PairingExecutorState.InitiatePairing?(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 8)
  {
    outlined consume of PairingExecutorState.InitiatePairing(a1, a2, a3, a4);
  }
}

void outlined consume of PairingExecutorState.InitiatePairing(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >= 8)
  {
  }
}

uint64_t partial apply for closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish()()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = dispatch thunk of PairingValidator.ack(_:);

  return closure #1 in PairingCoordinator.handleExecutorInitiatePairingFinish()(v4, v2, v3);
}

uint64_t partial apply for closure #1 in PairingCoordinator._finalizePairing(with:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = dispatch thunk of PairingValidator.ack(_:);

  return closure #1 in PairingCoordinator._finalizePairing(with:)(a1, a2, v9, v8, v6, v7);
}

uint64_t partial apply for closure #1 in closure #1 in PairingCoordinator._finalizePairing(with:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = dispatch thunk of PairingValidator.ack(_:);

  return closure #1 in closure #1 in PairingCoordinator._finalizePairing(with:)(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t outlined init with copy of UserSessionState(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of UserSessionState(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of UserSessionState(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish()()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = dispatch thunk of PairingValidator.ack(_:);

  return closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish()(v4, v2, v3);
}

uint64_t partial apply for closure #2 in closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish()(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of PairingServiceProxy.reevaluateDependencies(for:);

  return closure #2 in closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish()(a1, a2, v8, v6, v7);
}

uint64_t partial apply for closure #1 in closure #2 in closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = dispatch thunk of PairingValidator.ack(_:);

  return closure #1 in closure #2 in closure #1 in PairingCoordinator.handleExecutorFinalizePairingFinish()(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in PairingCoordinator.handleExecutorPairingFinish()()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = dispatch thunk of PairingValidator.ack(_:);

  return closure #1 in PairingCoordinator.handleExecutorPairingFinish()(v4, v2, v3);
}

uint64_t partial apply for closure #1 in PairingCoordinator.handleExecutorFailure(_:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = dispatch thunk of PairingValidator.ack(_:);

  return closure #1 in PairingCoordinator.handleExecutorFailure(_:)(v5, v4, v2, v3);
}

uint64_t partial apply for closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v0[4];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = dispatch thunk of PairingValidator.ack(_:);

  return closure #1 in PairingCoordinator.handleAccessoryConfigured(accessoryIdentifier:configuration:)(v7, v0 + v5, v0 + v6, v2, v3);
}

uint64_t partial apply for closure #1 in PairingCoordinator.handleDisplayedProxCard()()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = dispatch thunk of PairingValidator.ack(_:);

  return closure #1 in PairingCoordinator.handleDisplayedProxCard()(v4, v2, v3);
}

uint64_t partial apply for closure #1 in PairingCoordinator._preFetchMetadata()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of PairingValidator.ack(_:);

  return closure #1 in PairingCoordinator._preFetchMetadata()(a1, v6, (v1 + 5), (v1 + 10), v4, v5);
}

uint64_t partial apply for closure #2 in PairingCoordinator._preFetchMetadata()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of PairingValidator.ack(_:);

  return closure #2 in PairingCoordinator._preFetchMetadata()(a1, v6, (v1 + 5), v4, v5);
}

uint64_t partial apply for closure #1 in PairingCoordinator.handleUIFinish()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of PairingValidator.ack(_:);

  return closure #1 in PairingCoordinator.handleUIFinish()(a1, v6, v4, v5);
}

uint64_t partial apply for closure #1 in PairingCoordinator.setupStateChangeObserver()()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = dispatch thunk of PairingValidator.ack(_:);

  return closure #1 in PairingCoordinator.setupStateChangeObserver()(v4, v2, v3);
}

uint64_t partial apply for closure #1 in closure #1 in PairingCoordinator.setupStateChangeObserver()(uint64_t *a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of PairingValidator.ack(_:);

  return closure #1 in closure #1 in PairingCoordinator.setupStateChangeObserver()(a1, v6, v4, v5);
}

uint64_t objectdestroy_25Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t partial apply for closure #1 in PairingCoordinator._handleStateChange(_:)(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = dispatch thunk of PairingValidator.ack(_:);

  return closure #1 in PairingCoordinator._handleStateChange(_:)(a1, v6, v7, v8, v4, v5);
}

uint64_t objectdestroy_307Tm(void (*a1)(void))
{
  a1(*(v1 + 32));
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 40));

  return MEMORY[0x2821FE8E8](v1, 80, 7);
}

uint64_t partial apply for implicit closure #1 in PairingCoordinator._startAccessoryPairing()()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = dispatch thunk of PairingValidator.ack(_:);

  return implicit closure #1 in PairingCoordinator._startAccessoryPairing()(v4, (v0 + 5), v2, v3);
}

uint64_t _ss5Error_pIegHzo_ytsAA_pIegHTrzo_TRTA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of PairingValidator.ack(_:);

  return _ss5Error_pIegHzo_ytsAA_pIegHTrzo_TR(a1, v4);
}

uint64_t partial apply for implicit closure #2 in PairingCoordinator._startAccessoryPairing()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of PairingValidator.ack(_:);

  return implicit closure #2 in PairingCoordinator._startAccessoryPairing()(v2, v3, v0 + 32);
}

uint64_t partial apply for closure #1 in implicit closure #1 in PairingCoordinator._startAccessoryPairing()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of PairingValidator.ack(_:);

  return closure #1 in implicit closure #1 in PairingCoordinator._startAccessoryPairing()(a1, v6, (v1 + 5), v4, v5);
}

uint64_t objectdestroy_124Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 56) & ~v5;
  v7 = *(v4 + 64);
  swift_unknownObjectRelease();

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in PairingCoordinator.forceStopPairing()(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = dispatch thunk of PairingValidator.ack(_:);

  return closure #1 in closure #1 in PairingCoordinator.forceStopPairing()(a1, v8, v9, v10, v1 + v7, v4, v5);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in PairingCoordinator.forceStopPairing()()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = dispatch thunk of PairingValidator.ack(_:);

  return closure #1 in closure #1 in closure #1 in PairingCoordinator.forceStopPairing()(v4, v2, v3);
}

uint64_t closure #1 in Sequence<>.contains(_:)specialized partial apply(unint64_t *a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  return _sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_Say13FindMyPairing0E16CoordinatorStateOG_TG5TA_0(a1) & 1;
}

Swift::Void __swiftcall PairingUIManager._pairingFinish()()
{
  (*(v0 + 24))();
  AsyncStreamProvider.finish()();
}

FindMyPairing::PairingUIState::Displayed_optional __swiftcall PairingUIState.Displayed.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PairingUIState.Displayed.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t PairingUIState.Displayed.rawValue.getter()
{
  if (*v0)
  {
    return 0x46646579616C6564;
  }

  else
  {
    return 0x6E657A6F7266;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PairingUIState.Displayed()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PairingUIState.Displayed(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PairingUIState.Displayed(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PairingUIState.Displayed@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PairingUIState.Displayed.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance PairingUIState.Displayed(uint64_t *a1@<X8>)
{
  v2 = 0x6E657A6F7266;
  if (*v1)
  {
    v2 = 0x46646579616C6564;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xED00006873696E69;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PairingUIState.Displayed(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x46646579616C6564;
  }

  else
  {
    v3 = 0x6E657A6F7266;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xED00006873696E69;
  }

  if (*a2)
  {
    v5 = 0x46646579616C6564;
  }

  else
  {
    v5 = 0x6E657A6F7266;
  }

  if (*a2)
  {
    v6 = 0xED00006873696E69;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t PairingUIState.description.getter()
{
  v1 = *v0;
  switch(v1)
  {
    case 3:
      return 0x656C64692ELL;
    case 5:
      return 0x656873696E69662ELL;
    case 4:
      return 0xD000000000000011;
  }

  v3 = 0x6E657A6F7266;
  if (v1)
  {
    v3 = 0x46646579616C6564;
  }

  v4 = 0xE600000000000000;
  if (v1)
  {
    v4 = 0xED00006873696E69;
  }

  v5 = v1 == 2;
  if (v1 == 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  if (v1 == 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = 46;
  }

  if (v5)
  {
    v8 = 0xE000000000000000;
  }

  else
  {
    v8 = 0xE100000000000000;
  }

  v10 = v7;
  if (v5)
  {
    v9 = 0xE000000000000000;
  }

  else
  {
    v9 = v4;
  }

  MEMORY[0x24C236810](v6, v9);

  MEMORY[0x24C236810](v10, v8);

  return 0x79616C707369642ELL;
}

uint64_t PairingUIManager.stream()(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13FindMyPairing0F7UIStateOGMd, &_ss23_ContiguousArrayStorageCy13FindMyPairing0F7UIStateOGMR);
  *(swift_allocObject() + 16) = xmmword_24AFB0430;
  (*(a2 + 16))(a1, a2);
  AsyncStreamProvider.stream(initialEvents:)();
}

BOOL specialized static PairingUIState.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 5:
      return v3 == 5;
    case 4:
      return v3 == 4;
    case 3:
      return v3 == 3;
  }

  if ((v3 - 3) < 3)
  {
    return 0;
  }

  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  if (v2)
  {
    v5 = 0x46646579616C6564;
  }

  else
  {
    v5 = 0x6E657A6F7266;
  }

  if (v2)
  {
    v6 = 0xED00006873696E69;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3)
  {
    v7 = 0x46646579616C6564;
  }

  else
  {
    v7 = 0x6E657A6F7266;
  }

  if (v3)
  {
    v8 = 0xED00006873696E69;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  if (v5 != v7 || v6 != v8)
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return (v9 & 1) != 0;
  }

  return 1;
}

unint64_t lazy protocol witness table accessor for type PairingUIState.Displayed and conformance PairingUIState.Displayed()
{
  result = lazy protocol witness table cache variable for type PairingUIState.Displayed and conformance PairingUIState.Displayed;
  if (!lazy protocol witness table cache variable for type PairingUIState.Displayed and conformance PairingUIState.Displayed)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PairingUIState.Displayed and conformance PairingUIState.Displayed);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PairingUIState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = v7 - 2;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 < 2)
  {
    v9 = 0;
  }

  if (v9 >= 4)
  {
    return v9 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PairingUIState(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}