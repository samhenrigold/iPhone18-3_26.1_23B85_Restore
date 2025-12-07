uint64_t closure #1 in DataLinkClient.sendMirroredClientCommand(_:clientExpectation:acknowledged:)()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 88);
    v4 = *(v0 + 48);
    v3 = *(v0 + 56);
    v5 = swift_task_alloc();
    v6 = *(v0 + 64);
    *(v5 + 16) = v2;
    *(v5 + 24) = v3;
    *(v5 + 32) = v4;
    *(v5 + 40) = v6;
    DataLinkClient.sendMirroredClient(with:perform:)(v3, partial apply for closure #1 in closure #1 in DataLinkClient.sendMirroredClientCommand(_:clientExpectation:acknowledged:));
  }

  **(v0 + 40) = Strong == 0;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t closure #1 in closure #1 in DataLinkClient.sendMirroredClientCommand(_:clientExpectation:acknowledged:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = a6;
  v32 = a7;
  v29[1] = a1;
  v30 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8, v13);
  v15 = v29 - v14;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[0] = swift_getObjectType();
  v33 = a3;
  UUID.init()();
  outlined init with copy of DataLinkMirroredClientExpectation?(a4, v15);
  v21 = (*(v11 + 80) + 17) & ~*(v11 + 80);
  v22 = (v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  outlined init with take of DataLinkMirroredClientExpectation?(v15, v23 + v21);
  *(v23 + v22) = a5;
  v24 = (v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8));
  v25 = v32;
  *v24 = v31;
  v24[1] = v25;
  v26 = v30;
  v27 = *(v30 + 40);

  v27(&v33, v20, partial apply for closure #1 in closure #1 in closure #1 in DataLinkClient.sendMirroredClientCommand(_:clientExpectation:acknowledged:), v23, v29[0], v26);

  return (*(v17 + 8))(v20, v16);
}

uint64_t closure #1 in closure #1 in closure #1 in DataLinkClient.sendMirroredClientCommand(_:clientExpectation:acknowledged:)(int a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, void), uint64_t a7)
{
  v42 = a7;
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v40 - v13;
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static WOLog.dataLink);
  outlined init with copy of DataLinkMirroredClientExpectation?(a4, v14);
  v16 = a2;

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v41 = a6;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v45 = v40;
    *v19 = 136316162;
    if (a3)
    {
      if (a3 == 1)
      {
        v21 = 0xD000000000000023;
      }

      else
      {
        v21 = 0x70736552676E6970;
      }

      if (a3 == 1)
      {
        v22 = 0x800000020B45EE50;
      }

      else
      {
        v22 = 0xEC00000065736E6FLL;
      }
    }

    else
    {
      v21 = 0xD00000000000001BLL;
      v22 = 0x800000020B45EE80;
    }

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v45);

    *(v19 + 4) = v23;
    *(v19 + 12) = 1024;
    *(v19 + 14) = v43 & 1;
    *(v19 + 18) = 2112;
    if (a2)
    {
      v24 = a2;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      v26 = v25;
    }

    else
    {
      v25 = 0;
      v26 = 0;
    }

    *(v19 + 20) = v25;
    *v20 = v26;
    *(v19 + 28) = 2080;
    v27 = Optional.description.getter();
    v29 = v28;
    outlined destroy of DataLinkMirroredClientExpectation?(v14, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v45);

    *(v19 + 30) = v30;
    *(v19 + 38) = 2080;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v32 = Strong;
      swift_beginAccess();
      v33 = *(v32 + 120);
    }

    else
    {
      v33 = 0;
    }

    v44 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVy11WorkoutCore30DataLinkMirroredClientExpectedOSo7NSTimerC_GSgMd, &_sSD4KeysVy11WorkoutCore30DataLinkMirroredClientExpectedOSo7NSTimerC_GSgMR);
    v34 = Optional.description.getter();
    v36 = v35;

    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v45);

    *(v19 + 40) = v37;
    _os_log_impl(&dword_20AEA4000, v17, v18, "[mirrored] sendMirroredClientCommand acknowledged (%s) (success: %{BOOL}d, error: %@) clientExpectation (%s) all expected %s", v19, 0x30u);
    outlined destroy of DataLinkMirroredClientExpectation?(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v20, -1, -1);
    v38 = v40;
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v38, -1, -1);
    MEMORY[0x20F2E9420](v19, -1, -1);

    a6 = v41;
  }

  else
  {

    outlined destroy of DataLinkMirroredClientExpectation?(v14, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
  }

  return a6(v43 & 1, a2);
}

void DataLinkClient.sendMirroredClientMachTimestampResponse(_:clientExpectation:acknowledged:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8, v11);
  v13 = &v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v29 - v16;
  v18 = *a1;
  v19 = a1[1];
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = swift_allocObject();
  swift_weakInit();
  outlined init with copy of DataLinkMirroredClientExpectation?(a2, v13);
  type metadata accessor for MainActor();

  v22 = static MainActor.shared.getter();
  v23 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v24 = (v10 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = MEMORY[0x277D85700];
  v25[2] = v22;
  v25[3] = v26;
  v25[4] = v21;
  outlined init with take of DataLinkMirroredClientExpectation?(v13, v25 + v23);
  v27 = (v25 + v24);
  *v27 = v18;
  v27[1] = v19;
  v28 = (v25 + ((v24 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v28 = a3;
  v28[1] = a4;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v17, &async function pointer to partial apply for closure #1 in DataLinkClient.sendMirroredClientMachTimestampResponse(_:clientExpectation:acknowledged:), v25);
}

uint64_t closure #1 in DataLinkClient.sendMirroredClientMachTimestampResponse(_:clientExpectation:acknowledged:)(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 80) = a8;
  *(v9 + 88) = a9;
  *(v9 + 64) = a2;
  *(v9 + 72) = a3;
  *(v9 + 48) = a6;
  *(v9 + 56) = a7;
  *(v9 + 40) = a1;
  type metadata accessor for MainActor();
  *(v9 + 96) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in DataLinkClient.sendMirroredClientMachTimestampResponse(_:clientExpectation:acknowledged:), v11, v10);
}

uint64_t closure #1 in DataLinkClient.sendMirroredClientMachTimestampResponse(_:clientExpectation:acknowledged:)()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(v0 + 64);
    v2 = *(v0 + 72);
    v5 = *(v0 + 48);
    v4 = *(v0 + 56);
    v6 = swift_task_alloc();
    v7 = *(v0 + 80);
    *(v6 + 16) = v3;
    *(v6 + 24) = v2;
    *(v6 + 32) = v4;
    *(v6 + 40) = v5;
    *(v6 + 48) = v7;
    DataLinkClient.sendMirroredClient(with:perform:)(v4, partial apply for closure #1 in closure #1 in DataLinkClient.sendMirroredClientMachTimestampResponse(_:clientExpectation:acknowledged:));
  }

  **(v0 + 40) = Strong == 0;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t closure #1 in closure #1 in DataLinkClient.sendMirroredClientMachTimestampResponse(_:clientExpectation:acknowledged:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v34 = a5;
  v35 = a6;
  v32 = a1;
  v33 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8, v15);
  v17 = &v32 - v16;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  *v36 = a7;
  *&v36[1] = a8;
  UUID.init()();
  outlined init with copy of DataLinkMirroredClientExpectation?(a3, v17);
  v24 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v25 = (v14 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = a7;
  *(v26 + 24) = a8;
  outlined init with take of DataLinkMirroredClientExpectation?(v17, v26 + v24);
  *(v26 + v25) = a4;
  v27 = (v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8));
  v28 = v35;
  *v27 = v34;
  v27[1] = v28;
  v29 = v33;
  v30 = *(v33 + 48);

  v30(v36, v22, partial apply for closure #1 in closure #1 in closure #1 in DataLinkClient.sendMirroredClientMachTimestampResponse(_:clientExpectation:acknowledged:), v26, ObjectType, v29);

  return (*(v19 + 8))(v22, v18);
}

uint64_t closure #1 in closure #1 in closure #1 in DataLinkClient.sendMirroredClientMachTimestampResponse(_:clientExpectation:acknowledged:)(int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void), uint64_t a6, double a7, double a8)
{
  v45 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
  MEMORY[0x28223BE20](v14, v15);
  v17 = v43 - v16;
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static WOLog.dataLink);
  outlined init with copy of DataLinkMirroredClientExpectation?(a3, v17);
  v19 = a2;

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v43[1] = a6;
    v44 = a5;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v43[0] = swift_slowAlloc();
    v49 = v43[0];
    *v22 = 136316162;
    v47 = a7;
    v48 = a8;
    lazy protocol witness table accessor for type MirroredClientMachTimestampResponse and conformance MirroredClientMachTimestampResponse();
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v49);

    *(v22 + 4) = v26;
    *(v22 + 12) = 1024;
    *(v22 + 14) = v45 & 1;
    *(v22 + 18) = 2112;
    if (a2)
    {
      v27 = a2;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      v29 = v28;
    }

    else
    {
      v28 = 0;
      v29 = 0;
    }

    *(v22 + 20) = v28;
    *v23 = v29;
    *(v22 + 28) = 2080;
    v30 = Optional.description.getter();
    v32 = v31;
    outlined destroy of DataLinkMirroredClientExpectation?(v17, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v49);

    *(v22 + 30) = v33;
    *(v22 + 38) = 2080;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v35 = Strong;
      swift_beginAccess();
      v36 = *(v35 + 120);
    }

    else
    {
      v36 = 0;
    }

    v46 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVy11WorkoutCore30DataLinkMirroredClientExpectedOSo7NSTimerC_GSgMd, &_sSD4KeysVy11WorkoutCore30DataLinkMirroredClientExpectedOSo7NSTimerC_GSgMR);
    v37 = Optional.description.getter();
    v39 = v38;

    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v49);

    *(v22 + 40) = v40;
    _os_log_impl(&dword_20AEA4000, v20, v21, "[mirrored] sendMirroredClientMachTimestampResponse acknowledged (%s) (success: %{BOOL}d, error: %@) clientExpectation (%s) all expected %s", v22, 0x30u);
    outlined destroy of DataLinkMirroredClientExpectation?(v23, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v23, -1, -1);
    v41 = v43[0];
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v41, -1, -1);
    MEMORY[0x20F2E9420](v22, -1, -1);

    a5 = v44;
  }

  else
  {

    outlined destroy of DataLinkMirroredClientExpectation?(v17, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
  }

  return a5(v45 & 1, a2);
}

double DataLinkClient.sendMirroredClientAlertStackResponse(_:clientExpectation:acknowledged:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8, v10);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v28 - v15;
  v17 = a1[1];
  v30 = *a1;
  v29 = *(a1 + 16);
  v28 = a1[3];
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  v19 = swift_allocObject();
  swift_weakInit();
  outlined init with copy of DataLinkMirroredClientExpectation?(a2, v12);
  type metadata accessor for MainActor();

  v20 = static MainActor.shared.getter();
  v21 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v22 = (v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D85700];
  v23[2] = v20;
  v23[3] = v24;
  v23[4] = v19;
  outlined init with take of DataLinkMirroredClientExpectation?(v12, v23 + v21);
  v25 = v23 + v22;
  *v25 = v30;
  *(v25 + 1) = v17;
  v25[16] = v29;
  *(v25 + 3) = v28;
  v26 = (v23 + ((v22 + 39) & 0xFFFFFFFFFFFFFFF8));
  *v26 = v31;
  v26[1] = a4;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v16, &async function pointer to partial apply for closure #1 in DataLinkClient.sendMirroredClientAlertStackResponse(_:clientExpectation:acknowledged:), v23);

  return result;
}

uint64_t closure #1 in DataLinkClient.sendMirroredClientAlertStackResponse(_:clientExpectation:acknowledged:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 96) = v14;
  *(v8 + 80) = v13;
  *(v8 + 112) = a8;
  *(v8 + 64) = a6;
  *(v8 + 72) = a7;
  *(v8 + 48) = a4;
  *(v8 + 56) = a5;
  *(v8 + 40) = a1;
  type metadata accessor for MainActor();
  *(v8 + 104) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in DataLinkClient.sendMirroredClientAlertStackResponse(_:clientExpectation:acknowledged:), v10, v9);
}

uint64_t closure #1 in DataLinkClient.sendMirroredClientAlertStackResponse(_:clientExpectation:acknowledged:)()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(v0 + 72);
    v2 = *(v0 + 80);
    v4 = *(v0 + 112);
    v5 = *(v0 + 56);
    v6 = *(v0 + 64);
    v7 = *(v0 + 48);
    v8 = swift_task_alloc();
    v9 = *(v0 + 88);
    *(v8 + 16) = v6;
    *(v8 + 24) = v3;
    *(v8 + 32) = v4;
    *(v8 + 40) = v2;
    *(v8 + 48) = v5;
    *(v8 + 56) = v7;
    *(v8 + 64) = v9;
    DataLinkClient.sendMirroredClient(with:perform:)(v5, partial apply for closure #1 in closure #1 in DataLinkClient.sendMirroredClientAlertStackResponse(_:clientExpectation:acknowledged:));
  }

  **(v0 + 40) = Strong == 0;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t closure #1 in closure #1 in DataLinkClient.sendMirroredClientAlertStackResponse(_:clientExpectation:acknowledged:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v40 = a8;
  v33 = a1;
  v34 = a7;
  v37 = a10;
  v38 = a2;
  v36 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8, v17);
  v19 = &v31 - v18;
  v39 = type metadata accessor for UUID();
  v35 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v20);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v41[0] = a3;
  v41[1] = a4;
  v42 = a5;
  v43 = a6;
  UUID.init()();
  outlined init with copy of DataLinkMirroredClientExpectation?(v34, v19);
  v23 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v24 = (v16 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = a3;
  *(v25 + 24) = a4;
  *(v25 + 32) = a5;
  *(v25 + 40) = a6;
  outlined init with take of DataLinkMirroredClientExpectation?(v19, v25 + v23);
  *(v25 + v24) = v40;
  v26 = (v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8));
  v27 = v37;
  *v26 = v36;
  v26[1] = v27;
  v28 = v38;
  v29 = *(v38 + 56);

  v29(v41, v22, partial apply for closure #1 in closure #1 in closure #1 in DataLinkClient.sendMirroredClientAlertStackResponse(_:clientExpectation:acknowledged:), v25, ObjectType, v28);

  return (*(v35 + 8))(v22, v39);
}

uint64_t closure #1 in closure #1 in closure #1 in DataLinkClient.sendMirroredClientAlertStackResponse(_:clientExpectation:acknowledged:)(char a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void, void *), uint64_t a10)
{
  v48 = a6;
  v47 = a5;
  v46 = a3;
  v50 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
  MEMORY[0x28223BE20](v14, v15);
  v17 = v45 - v16;
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static WOLog.dataLink);
  outlined init with copy of DataLinkMirroredClientExpectation?(a7, v17);

  v19 = a2;

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v45[1] = a10;
    v22 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v45[0] = v23;
    *v22 = 136316162;
    v52 = v46;
    v53 = a4;
    v54 = v47 & 1;
    v55 = v48;
    v56 = v23;

    v24 = MirroredClientAlertStackResponse.description.getter();
    v26 = v25;

    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v56);

    *(v22 + 4) = v27;
    *(v22 + 12) = 1024;
    *(v22 + 14) = a1 & 1;
    *(v22 + 18) = 2112;
    if (a2)
    {
      v28 = a2;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      v30 = v29;
    }

    else
    {
      v29 = 0;
      v30 = 0;
    }

    *(v22 + 20) = v29;
    *v49 = v30;
    *(v22 + 28) = 2080;
    v31 = Optional.description.getter();
    v33 = v32;
    outlined destroy of DataLinkMirroredClientExpectation?(v17, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v56);

    *(v22 + 30) = v34;
    *(v22 + 38) = 2080;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v36 = Strong;
      swift_beginAccess();
      v37 = *(v36 + 120);
    }

    else
    {
      v37 = 0;
    }

    v51 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVy11WorkoutCore30DataLinkMirroredClientExpectedOSo7NSTimerC_GSgMd, &_sSD4KeysVy11WorkoutCore30DataLinkMirroredClientExpectedOSo7NSTimerC_GSgMR);
    v38 = Optional.description.getter();
    v40 = v39;

    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v56);

    *(v22 + 40) = v41;
    _os_log_impl(&dword_20AEA4000, v20, v21, "[mirrored] sendMirroredClientAlertStackResponse acknowledged (%s) (success: %{BOOL}d, error: %@) clientExpectation (%s) all expected %s", v22, 0x30u);
    v42 = v49;
    outlined destroy of DataLinkMirroredClientExpectation?(v49, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v42, -1, -1);
    v43 = v45[0];
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v43, -1, -1);
    MEMORY[0x20F2E9420](v22, -1, -1);
  }

  else
  {

    outlined destroy of DataLinkMirroredClientExpectation?(v17, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
  }

  return v50(a1 & 1, a2);
}

double DataLinkClient.sendMirroredClientPrecisionStart(_:clientExpectation:acknowledged:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  v32 = a3;
  v6 = type metadata accessor for MirroredClientPrecisionStart(0);
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v29 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8, v12);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v29 - v17;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v20 = swift_allocObject();
  swift_weakInit();
  outlined init with copy of DataLinkMirroredClientExpectation?(a2, v14);
  outlined init with copy of DataLinkMirroredClientExpectation(a1, &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MirroredClientPrecisionStart);
  type metadata accessor for MainActor();

  v21 = v31;

  v22 = static MainActor.shared.getter();
  v23 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v24 = (v11 + *(v30 + 80) + v23) & ~*(v30 + 80);
  v25 = swift_allocObject();
  v26 = MEMORY[0x277D85700];
  v25[2] = v22;
  v25[3] = v26;
  v25[4] = v20;
  outlined init with take of DataLinkMirroredClientExpectation?(v14, v25 + v23);
  outlined init with take of DataLinkMirroredClientExpectation(v29, v25 + v24, type metadata accessor for MirroredClientPrecisionStart);
  v27 = (v25 + ((v7 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v27 = v32;
  v27[1] = v21;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v18, &async function pointer to partial apply for closure #1 in DataLinkClient.sendMirroredClientPrecisionStart(_:clientExpectation:acknowledged:), v25);

  return result;
}

uint64_t closure #1 in DataLinkClient.sendMirroredClientPrecisionStart(_:clientExpectation:acknowledged:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a1;
  v8[6] = a4;
  type metadata accessor for MainActor();
  v8[11] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in DataLinkClient.sendMirroredClientPrecisionStart(_:clientExpectation:acknowledged:), v10, v9);
}

uint64_t closure #1 in DataLinkClient.sendMirroredClientPrecisionStart(_:clientExpectation:acknowledged:)()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 48);
    v3 = swift_task_alloc();
    v4 = *(v0 + 56);
    v5 = *(v0 + 72);
    *(v3 + 16) = vextq_s8(v4, v4, 8uLL);
    *(v3 + 32) = v2;
    *(v3 + 40) = v5;
    DataLinkClient.sendMirroredClient(with:perform:)(v4.i64[0], partial apply for closure #1 in closure #1 in DataLinkClient.sendMirroredClientPrecisionStart(_:clientExpectation:acknowledged:));
  }

  **(v0 + 40) = Strong == 0;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t closure #1 in closure #1 in DataLinkClient.sendMirroredClientPrecisionStart(_:clientExpectation:acknowledged:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v40 = a6;
  v41 = a7;
  v38 = a5;
  v39 = a2;
  v35 = a1;
  v36 = a4;
  v33 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8, v11);
  v13 = &v32 - v12;
  v14 = type metadata accessor for MirroredClientPrecisionStart(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8, v17);
  v18 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for UUID();
  v19 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v20);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  UUID.init()();
  outlined init with copy of DataLinkMirroredClientExpectation(a3, v18, type metadata accessor for MirroredClientPrecisionStart);
  outlined init with copy of DataLinkMirroredClientExpectation?(v36, v13);
  v23 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v24 = (v16 + *(v9 + 80) + v23) & ~*(v9 + 80);
  v25 = (v10 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  outlined init with take of DataLinkMirroredClientExpectation(v18, v26 + v23, type metadata accessor for MirroredClientPrecisionStart);
  outlined init with take of DataLinkMirroredClientExpectation?(v13, v26 + v24);
  v27 = v39;
  *(v26 + v25) = v38;
  v28 = (v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8));
  v29 = v41;
  *v28 = v40;
  v28[1] = v29;
  v30 = *(v27 + 64);

  v30(v33, v22, partial apply for closure #1 in closure #1 in closure #1 in DataLinkClient.sendMirroredClientPrecisionStart(_:clientExpectation:acknowledged:), v26, ObjectType, v27);

  return (*(v19 + 8))(v22, v37);
}

uint64_t closure #1 in closure #1 in closure #1 in DataLinkClient.sendMirroredClientPrecisionStart(_:clientExpectation:acknowledged:)(int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, void), uint64_t a7)
{
  v51 = a7;
  v50 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v46 - v13;
  v15 = type metadata accessor for MirroredClientPrecisionStart(0);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static WOLog.dataLink);
  outlined init with copy of DataLinkMirroredClientExpectation(a3, v18, type metadata accessor for MirroredClientPrecisionStart);
  outlined init with copy of DataLinkMirroredClientExpectation?(a4, v14);
  v20 = a2;

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v48 = a6;
    v23 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v53 = v47;
    *v23 = 136316162;
    v24 = MirroredClientPrecisionStart.description.getter();
    v26 = v25;
    outlined destroy of DataLinkMirroredClientExpectation(v18, type metadata accessor for MirroredClientPrecisionStart);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v53);

    *(v23 + 4) = v27;
    *(v23 + 12) = 1024;
    v28 = v50;
    *(v23 + 14) = v50 & 1;
    *(v23 + 18) = 2112;
    if (a2)
    {
      v29 = a2;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      v31 = v30;
    }

    else
    {
      v30 = 0;
      v31 = 0;
    }

    *(v23 + 20) = v30;
    *v49 = v31;
    *(v23 + 28) = 2080;
    v32 = Optional.description.getter();
    v34 = v33;
    outlined destroy of DataLinkMirroredClientExpectation?(v14, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v53);

    *(v23 + 30) = v35;
    *(v23 + 38) = 2080;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v37 = Strong;
      swift_beginAccess();
      v38 = *(v37 + 120);
    }

    else
    {
      v38 = 0;
    }

    v52 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVy11WorkoutCore30DataLinkMirroredClientExpectedOSo7NSTimerC_GSgMd, &_sSD4KeysVy11WorkoutCore30DataLinkMirroredClientExpectedOSo7NSTimerC_GSgMR);
    v39 = Optional.description.getter();
    v41 = v40;

    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v53);

    *(v23 + 40) = v42;
    _os_log_impl(&dword_20AEA4000, v21, v22, "[mirrored] mirroredClientPrecisionStart acknowledged (%s) (success: %{BOOL}d, error: %@) clientExpectation (%s) all expected %s", v23, 0x30u);
    v43 = v49;
    outlined destroy of DataLinkMirroredClientExpectation?(v49, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v43, -1, -1);
    v44 = v47;
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v44, -1, -1);
    MEMORY[0x20F2E9420](v23, -1, -1);

    a6 = v48;
  }

  else
  {

    outlined destroy of DataLinkMirroredClientExpectation?(v14, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
    outlined destroy of DataLinkMirroredClientExpectation(v18, type metadata accessor for MirroredClientPrecisionStart);
    v28 = v50;
  }

  return a6(v28 & 1, a2);
}

uint64_t protocol witness for DataLinkMirroredClientProtocol.mirroredClientDelegate.setter in conformance DataLinkClient(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  swift_beginAccess();
  *(v4 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*protocol witness for DataLinkMirroredClientProtocol.mirroredClientDelegate.modify in conformance DataLinkClient(uint64_t *a1))()
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
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return protocol witness for DataLinkMirroredClientProtocol.mirroredClientDelegate.modify in conformance DataLinkClient;
}

void DataLinkClient.mirroredClientDelegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
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

void DataLinkClient.receivedMirroredHostCommand(_:closure:)(unsigned __int8 *a1, void (*a2)(void, void *), uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = (&v25[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a1;
  type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if ((a1 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(v4 + 24);
    v25[0] = v13;
    v25[1] = 0;
    DataLinkClient.receivedMirroredHostClearExpected(_:)(v25);
    ObjectType = swift_getObjectType();
    LOBYTE(v25[0]) = v13;
    (*(v14 + 8))(v25, a2, a3, ObjectType, v14);
    swift_unknownObjectRelease();
    return;
  }

  if (one-time initialization token for dataLink != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static WOLog.dataLink);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_20AEA4000, v17, v18, "[mirrored] receivedMirroredHostCommand, noClientDelegateSetup", v19, 2u);
    MEMORY[0x20F2E9420](v19, -1, -1);
  }

  type metadata accessor for DataLinkError(0);
  lazy protocol witness table accessor for type DataLinkError and conformance DataLinkError(&lazy protocol witness table cache variable for type DataLinkError and conformance DataLinkError, type metadata accessor for DataLinkError, &protocol conformance descriptor for DataLinkError);
  v20 = swift_allocError();
  v22 = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMd, &_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMR);
  (*(*(v23 - 8) + 56))(v22, 4, 5, v23);
  a2(0, v20);
}

void DataLinkClient.receivedMirroredHostStartConfiguration(_:closure:)(uint64_t a1, void (*a2)(void, void *), uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a1;
  v14 = *(a1 + 1);
  v15 = *(a1 + 8);
  type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if ((a1 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(v4 + 24);
    started = lazy protocol witness table accessor for type MirroredHostStartConfiguration and conformance MirroredHostStartConfiguration();
    v28 = &type metadata for MirroredHostStartConfiguration;
    v29 = started | 0x8000000000000000;
    DataLinkClient.receivedMirroredHostClearExpected(_:)(&v28);
    ObjectType = swift_getObjectType();
    LOBYTE(v28) = v13;
    BYTE1(v28) = v14;
    v29 = v15;
    (*(v16 + 16))(&v28, a2, a3, ObjectType, v16);
    swift_unknownObjectRelease();
    return;
  }

  if (one-time initialization token for dataLink != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static WOLog.dataLink);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_20AEA4000, v20, v21, "[mirrored] receivedMirroredHostStartConfiguration, noClientDelegateSetup", v22, 2u);
    MEMORY[0x20F2E9420](v22, -1, -1);
  }

  type metadata accessor for DataLinkError(0);
  lazy protocol witness table accessor for type DataLinkError and conformance DataLinkError(&lazy protocol witness table cache variable for type DataLinkError and conformance DataLinkError, type metadata accessor for DataLinkError, &protocol conformance descriptor for DataLinkError);
  v23 = swift_allocError();
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMd, &_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMR);
  (*(*(v26 - 8) + 56))(v25, 4, 5, v26);
  a2(0, v23);
}

void DataLinkClient.receivedMirroredHostMachTimestampRequest(_:closure:)(uint64_t *a1, void (*a2)(void, void *), uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = (&v26[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a1;
  type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if ((a1 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(v4 + 24);
    v15 = lazy protocol witness table accessor for type MirroredHostMachTimestampRequest and conformance MirroredHostMachTimestampRequest();
    v26[0] = &type metadata for MirroredHostMachTimestampRequest;
    v26[1] = v15 | 0x8000000000000000;
    DataLinkClient.receivedMirroredHostClearExpected(_:)(v26);
    ObjectType = swift_getObjectType();
    v26[0] = v13;
    (*(v14 + 32))(v26, a2, a3, ObjectType, v14);
    swift_unknownObjectRelease();
    return;
  }

  if (one-time initialization token for dataLink != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static WOLog.dataLink);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_20AEA4000, v18, v19, "[mirrored] receivedMirroredHostMachTimestampRequest, noClientDelegateSetup", v20, 2u);
    MEMORY[0x20F2E9420](v20, -1, -1);
  }

  type metadata accessor for DataLinkError(0);
  lazy protocol witness table accessor for type DataLinkError and conformance DataLinkError(&lazy protocol witness table cache variable for type DataLinkError and conformance DataLinkError, type metadata accessor for DataLinkError, &protocol conformance descriptor for DataLinkError);
  v21 = swift_allocError();
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMd, &_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMR);
  (*(*(v24 - 8) + 56))(v23, 4, 5, v24);
  a2(0, v21);
}

void DataLinkClient.receivedMirroredHostCountdownStart(_:closure:)(ValueMetadata **a1, void (*a2)(void, void *), uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a1;
  v14 = a1[1];
  type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if ((a1 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v4 + 24);
    v16 = lazy protocol witness table accessor for type MirroredHostCountdownStart and conformance MirroredHostCountdownStart();
    v27 = &type metadata for MirroredHostCountdownStart;
    v28 = v16 | 0x8000000000000000;
    DataLinkClient.receivedMirroredHostClearExpected(_:)(&v27);
    ObjectType = swift_getObjectType();
    v27 = v13;
    v28 = v14;
    (*(v15 + 40))(&v27, a2, a3, ObjectType, v15);
    swift_unknownObjectRelease();
    return;
  }

  if (one-time initialization token for dataLink != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static WOLog.dataLink);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_20AEA4000, v19, v20, "[mirrored] receivedMirroredHostCountdownStart, noClientDelegateSetup", v21, 2u);
    MEMORY[0x20F2E9420](v21, -1, -1);
  }

  type metadata accessor for DataLinkError(0);
  lazy protocol witness table accessor for type DataLinkError and conformance DataLinkError(&lazy protocol witness table cache variable for type DataLinkError and conformance DataLinkError, type metadata accessor for DataLinkError, &protocol conformance descriptor for DataLinkError);
  v22 = swift_allocError();
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMd, &_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMR);
  (*(*(v25 - 8) + 56))(v24, 4, 5, v25);
  a2(0, v22);
}

void DataLinkClient.receivedMirroredHostAlertStackRequest(_:closure:)(uint64_t a1, void (*a2)(void, void *), uint64_t a3)
{
  v4 = v3;
  v28 = a2;
  v29 = a3;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = *(a1 + 32);
  v27 = *(a1 + 40);
  type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v10 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v10, *MEMORY[0x277D85200], v6);
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if ((a1 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(v4 + 24);
    v17 = lazy protocol witness table accessor for type MirroredHostAlertStackRequest and conformance MirroredHostAlertStackRequest();
    v30 = &type metadata for MirroredHostAlertStackRequest;
    v31 = v17 | 0x8000000000000000;
    DataLinkClient.receivedMirroredHostClearExpected(_:)(&v30);
    ObjectType = swift_getObjectType();
    v30 = v11;
    v31 = v12;
    v32 = v13;
    v33 = v14;
    v34 = v15;
    v35 = v27;
    (*(v16 + 24))(&v30, v28, v29, ObjectType, v16);
    swift_unknownObjectRelease();
    return;
  }

  if (one-time initialization token for dataLink != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static WOLog.dataLink);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_20AEA4000, v20, v21, "[mirrored] receivedMirroredHostAlertStackRequest, noClientDelegateSetup", v22, 2u);
    MEMORY[0x20F2E9420](v22, -1, -1);
  }

  type metadata accessor for DataLinkError(0);
  lazy protocol witness table accessor for type DataLinkError and conformance DataLinkError(&lazy protocol witness table cache variable for type DataLinkError and conformance DataLinkError, type metadata accessor for DataLinkError, &protocol conformance descriptor for DataLinkError);
  v23 = swift_allocError();
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMd, &_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMR);
  (*(*(v26 - 8) + 56))(v25, 4, 5, v26);
  v28(0, v23);
}

void DataLinkClient.receivedMirroredHostSummaryUpdate(_:closure:)(uint64_t *a1, void (*a2)(void, void *), uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = (&v26[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a1;
  type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if ((a1 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(v4 + 24);
    v15 = lazy protocol witness table accessor for type MirroredHostSummaryUpdate and conformance MirroredHostSummaryUpdate();
    v26[0] = &type metadata for MirroredHostSummaryUpdate;
    v26[1] = v15 | 0x8000000000000000;
    DataLinkClient.receivedMirroredHostClearExpected(_:)(v26);
    ObjectType = swift_getObjectType();
    v26[0] = v13;
    (*(v14 + 48))(v26, a2, a3, ObjectType, v14);
    swift_unknownObjectRelease();
    return;
  }

  if (one-time initialization token for dataLink != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static WOLog.dataLink);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_20AEA4000, v18, v19, "[mirrored] receivedMirroredHostSummaryUpdate, noClientDelegateSetup", v20, 2u);
    MEMORY[0x20F2E9420](v20, -1, -1);
  }

  type metadata accessor for DataLinkError(0);
  lazy protocol witness table accessor for type DataLinkError and conformance DataLinkError(&lazy protocol witness table cache variable for type DataLinkError and conformance DataLinkError, type metadata accessor for DataLinkError, &protocol conformance descriptor for DataLinkError);
  v21 = swift_allocError();
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMd, &_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMR);
  (*(*(v24 - 8) + 56))(v23, 4, 5, v24);
  a2(0, v21);
}

void *specialized DataLinkClient.init(metricsPublisher:)(void *a1)
{
  v2 = v1;
  v41 = a1;
  v40 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v4);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v7, v8);
  v9 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v9 - 8, v10);
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  v11 = type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  v39[1] = "clientExpectations";
  v39[2] = v11;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0;
  static DispatchQoS.userInteractive.getter();
  v42 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DataLinkError and conformance DataLinkError(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_5(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v6, *MEMORY[0x277D85260], v40);
  *(v1 + 88) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v1 + 120) = MEMORY[0x277D84F98];
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static WOLog.dataLink);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_20AEA4000, v13, v14, "Initializing data link client", v15, 2u);
    MEMORY[0x20F2E9420](v15, -1, -1);
  }

  v16 = v41;
  v2[14] = v41;
  v17 = objc_allocWithZone(type metadata accessor for DataLinkHealthKitClientConnection());
  v18 = v16;
  v2[12] = [v17 init];
  v2[13] = &protocol witness table for DataLinkHealthKitClientConnection;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v19 = v2[13];
  ObjectType = swift_getObjectType();
  v21 = *(v19 + 24);
  swift_unknownObjectRetain();

  v21(v22, &protocol witness table for DataLinkClient, ObjectType, v19);
  swift_unknownObjectRelease();
  v23 = v2[13];
  v24 = swift_getObjectType();
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = *(v23 + 8);
  v27 = *(v26 + 24);

  swift_unknownObjectRetain();

  v27(partial apply for closure #1 in DataLinkClient.init(metricsPublisher:), v25, v24, v26);
  swift_unknownObjectRelease();

  v28 = v2[13];
  v29 = swift_getObjectType();
  v30 = swift_allocObject();
  swift_weakInit();
  v31 = *(v28 + 8);
  v32 = *(v31 + 32);
  swift_unknownObjectRetain();

  v32(partial apply for closure #2 in DataLinkClient.init(metricsPublisher:), v30, v29, v31);
  swift_unknownObjectRelease();

  v33 = v2[13];
  v34 = swift_getObjectType();
  v35 = swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  v36 = *(v33 + 8);
  v37 = *(v36 + 16);

  v37(partial apply for closure #3 in DataLinkClient.init(metricsPublisher:), v35, v34, v36);
  swift_unknownObjectRelease();

  return v2;
}

void partial apply for closure #1 in DataLinkClient.addClientExpectation(_:)(uint64_t a1)
{
  v3 = *(type metadata accessor for DataLinkMirroredClientExpectation(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  closure #1 in DataLinkClient.addClientExpectation(_:)(a1, v4, v5);
}

uint64_t outlined init with copy of DataLinkMirroredClientExpectation?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of DataLinkMirroredClientExpectation?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in DataLinkClient.sendMirroredClientCommand(_:clientExpectation:acknowledged:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = v1 + (v7 & 0xFFFFFFFFFFFFFFF8);
  v12 = *(v11 + 1);
  v13 = *(v11 + 2);
  v14 = *(v1 + v7);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = partial apply for closure #1 in DataLinkClient.sendMirroredClientCommand(_:clientExpectation:acknowledged:);

  return closure #1 in DataLinkClient.sendMirroredClientCommand(_:clientExpectation:acknowledged:)(a1, v8, v9, v10, v1 + v6, v14, v12, v13);
}

uint64_t partial apply for closure #1 in DataLinkClient.sendMirroredClientMachTimestampResponse(_:clientExpectation:acknowledged:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = (v1 + v7);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v1 + v8);
  v16 = *(v1 + v8 + 8);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = partial apply for closure #1 in DataLinkClient.sendMirroredClientMachTimestampResponse(_:clientExpectation:acknowledged:);

  return closure #1 in DataLinkClient.sendMirroredClientMachTimestampResponse(_:clientExpectation:acknowledged:)(a1, v13, v14, v9, v10, v11, v1 + v6, v15, v16);
}

uint64_t partial apply for closure #1 in DataLinkClient.sendMirroredClientAlertStackResponse(_:clientExpectation:acknowledged:)(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v12 = v1[3];
  v13 = v1[2];
  v5 = v1[4];
  v6 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 1);
  v9 = v6[16];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in DataLinkClient.sendMirroredClientAlertStackResponse(_:clientExpectation:acknowledged:);

  return closure #1 in DataLinkClient.sendMirroredClientAlertStackResponse(_:clientExpectation:acknowledged:)(a1, v13, v12, v5, v1 + v4, v7, v8, v9);
}

uint64_t outlined init with copy of DataLinkMirroredClientExpectation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of DataLinkMirroredClientExpectation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in DataLinkClient.sendMirroredClientPrecisionStart(_:clientExpectation:acknowledged:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for MirroredClientPrecisionStart(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = (v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = partial apply for closure #1 in DataLinkClient.sendMirroredClientPrecisionStart(_:clientExpectation:acknowledged:);

  return closure #1 in DataLinkClient.sendMirroredClientPrecisionStart(_:clientExpectation:acknowledged:)(a1, v10, v11, v12, v1 + v6, v1 + v9, v14, v15);
}

uint64_t partial apply for closure #1 in DataLinkClient.sendMirroredClientPrecisionStart(_:clientExpectation:acknowledged:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t type metadata accessor for NSTimer(uint64_t a1, unint64_t *a2, void *a3)
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

void specialized DataLinkClient.failedClientExpectation(_:)(uint64_t a1)
{
  v2 = type metadata accessor for DataLinkMirroredClientExpectation(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.dataLink);
  outlined init with copy of DataLinkMirroredClientExpectation(a1, v5, type metadata accessor for DataLinkMirroredClientExpectation);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    v11 = DataLinkMirroredClientExpectation.description.getter();
    v13 = v12;
    outlined destroy of DataLinkMirroredClientExpectation(v5, type metadata accessor for DataLinkMirroredClientExpectation);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v16);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_20AEA4000, v7, v8, "[mirrored] failedClientExpectation: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x20F2E9420](v10, -1, -1);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }

  else
  {

    outlined destroy of DataLinkMirroredClientExpectation(v5, type metadata accessor for DataLinkMirroredClientExpectation);
  }
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed WorkoutNotification) -> (@out ())(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in DataLinkClient.sendMirroredClientPrecisionStart(_:clientExpectation:acknowledged:)(int a1, void *a2)
{
  v5 = *(type metadata accessor for MirroredClientPrecisionStart(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v2 + v10);
  v12 = v2 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  v14 = *(v12 + 8);

  return closure #1 in closure #1 in closure #1 in DataLinkClient.sendMirroredClientPrecisionStart(_:clientExpectation:acknowledged:)(a1, a2, v2 + v6, v2 + v9, v11, v13, v14);
}

uint64_t outlined destroy of DataLinkMirroredClientExpectation(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in DataLinkClient.sendMirroredClientAlertStackResponse(_:clientExpectation:acknowledged:)(char a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return closure #1 in closure #1 in closure #1 in DataLinkClient.sendMirroredClientAlertStackResponse(_:clientExpectation:acknowledged:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in DataLinkClient.sendMirroredClientMachTimestampResponse(_:clientExpectation:acknowledged:)(int a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *(v11 + 8);

  return closure #1 in closure #1 in closure #1 in DataLinkClient.sendMirroredClientMachTimestampResponse(_:clientExpectation:acknowledged:)(a1, a2, v2 + v6, v8, v12, v13, v9, v10);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in DataLinkClient.sendMirroredClientCommand(_:clientExpectation:acknowledged:)(int a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR) - 8);
  v6 = (*(v5 + 80) + 17) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v2 + 16);

  return closure #1 in closure #1 in closure #1 in DataLinkClient.sendMirroredClientCommand(_:clientExpectation:acknowledged:)(a1, a2, v12, v2 + v6, v8, v10, v11);
}

uint64_t partial apply for closure #2 in closure #1 in DataLinkClient.addClientExpectation(_:)()
{
  v1 = *(type metadata accessor for DataLinkMirroredClientExpectation(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v3 + 56))(v0 + v2, ObjectType, v3);
}

uint64_t lazy protocol witness table accessor for type DataLinkError and conformance DataLinkError(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Apple_Workout_Core_RunningTrackInfo.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for Apple_Workout_Core_RunningTrackInfo(0);
  *(a1 + 20) = 0;
  *(a1 + 12) = 0;
  *(a1 + 28) = 0;
  UnknownStorage.init()();
  v3 = *(v2 + 40);
  v4 = type metadata accessor for Apple_Workout_Core_CLLocation(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1 + v3, 1, 1, v4);
}

uint64_t type metadata accessor for Apple_Workout_Core_RunningTrackInfo(uint64_t a1)
{
  result = type metadata singleton initialization cache for Apple_Workout_Core_RunningTrackInfo;
  if (!type metadata singleton initialization cache for Apple_Workout_Core_RunningTrackInfo)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t Apple_Workout_Core_RunningTrackProximity.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 4;
  *(a2 + 9) = 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_RunningTrackProximity(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_RunningTrackProximity(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_RunningTrackProximity and conformance Apple_Workout_Core_RunningTrackProximity();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_RunningTrackProximity(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Apple_Workout_Core_RunningTrackInfo.location.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMd, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Apple_Workout_Core_RunningTrackInfo(0);
  outlined init with copy of Apple_Workout_Core_CLLocation?(v1 + *(v7 + 40), v6);
  v8 = type metadata accessor for Apple_Workout_Core_CLLocation(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Apple_Workout_Core_CLLocation(v6, a1);
  }

  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_CLLocation?(v6, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMd, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMR);
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_RunningTrackInfo.location : Apple_Workout_Core_RunningTrackInfo@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMd, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v12 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_RunningTrackInfo(0);
  outlined init with copy of Apple_Workout_Core_CLLocation?(a1 + *(v8 + 40), v7);
  v9 = type metadata accessor for Apple_Workout_Core_CLLocation(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_CLLocation(v7, a2);
  }

  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_CLLocation?(v7, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMd, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_RunningTrackInfo.location : Apple_Workout_Core_RunningTrackInfo(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_CLLocation(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_CLLocation(a1, v8);
  v9 = *(type metadata accessor for Apple_Workout_Core_RunningTrackInfo(0) + 40);
  outlined destroy of Apple_Workout_Core_CLLocation?(a2 + v9, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMd, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMR);
  outlined init with take of Apple_Workout_Core_CLLocation(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Workout_Core_RunningTrackInfo.location.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_RunningTrackInfo(0) + 40);
  outlined destroy of Apple_Workout_Core_CLLocation?(v1 + v3, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMd, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMR);
  outlined init with take of Apple_Workout_Core_CLLocation(a1, v1 + v3);
  v4 = type metadata accessor for Apple_Workout_Core_CLLocation(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t outlined init with copy of Apple_Workout_Core_CLLocation?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMd, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Apple_Workout_Core_CLLocation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_CLLocation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void (*Apple_Workout_Core_RunningTrackInfo.location.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMd, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_CLLocation(0);
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
  v15 = *(type metadata accessor for Apple_Workout_Core_RunningTrackInfo(0) + 40);
  *(v5 + 12) = v15;
  outlined init with copy of Apple_Workout_Core_CLLocation?(v1 + v15, v8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v14[1] = 0u;
    v14[2] = 0u;
    *v14 = 0u;
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_CLLocation?(v8, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMd, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_CLLocation(v8, v14);
  }

  return Apple_Workout_Core_RunningTrackInfo.location.modify;
}

void Apple_Workout_Core_RunningTrackInfo.location.modify(uint64_t **a1, char a2)
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
    outlined init with copy of Apple_Workout_Core_CLLocation((*a1)[5], v4);
    outlined destroy of Apple_Workout_Core_CLLocation?(v9 + v3, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMd, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMR);
    outlined init with take of Apple_Workout_Core_CLLocation(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of Apple_Workout_Core_CLLocation(v5);
  }

  else
  {
    outlined destroy of Apple_Workout_Core_CLLocation?(v9 + v3, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMd, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMR);
    outlined init with take of Apple_Workout_Core_CLLocation(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t outlined destroy of Apple_Workout_Core_CLLocation(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_Core_CLLocation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL Apple_Workout_Core_RunningTrackInfo.hasLocation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMd, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Workout_Core_RunningTrackInfo(0);
  outlined init with copy of Apple_Workout_Core_CLLocation?(v0 + *(v5 + 40), v4);
  v6 = type metadata accessor for Apple_Workout_Core_CLLocation(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of Apple_Workout_Core_CLLocation?(v4, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMd, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMR);
  return v7;
}

Swift::Void __swiftcall Apple_Workout_Core_RunningTrackInfo.clearLocation()()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_RunningTrackInfo(0) + 40);
  outlined destroy of Apple_Workout_Core_CLLocation?(v0 + v1, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMd, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMR);
  v2 = type metadata accessor for Apple_Workout_Core_CLLocation(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

void Apple_Workout_Core_RunningTrackInfo.proximity.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Apple_Workout_Core_RunningTrackInfo.proximity.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Workout_Core_RunningTrackInfo.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_RunningTrackInfo(0) + 36);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_RunningTrackInfo.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_RunningTrackInfo(0) + 36);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t static Apple_Workout_Core_RunningTrackProximity._protobuf_nameMap.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
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

uint64_t Apple_Workout_Core_RunningTrackInfo.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        if (result == 4 || result == 5)
        {
LABEL_4:
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          goto LABEL_5;
        }

        if (result == 6)
        {
          dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            closure #1 in Apple_Workout_Core_RunningTrackInfo.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
            break;
          case 2:
            lazy protocol witness table accessor for type Apple_Workout_Core_RunningTrackProximity and conformance Apple_Workout_Core_RunningTrackProximity();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 3:
            goto LABEL_4;
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_RunningTrackInfo.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Workout_Core_RunningTrackInfo(0);
  type metadata accessor for Apple_Workout_Core_CLLocation(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_RunningTrackInfo and conformance Apple_Workout_Core_RunningTrackInfo(&lazy protocol witness table cache variable for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation, type metadata accessor for Apple_Workout_Core_CLLocation, &protocol conformance descriptor for Apple_Workout_Core_CLLocation);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Apple_Workout_Core_RunningTrackInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in Apple_Workout_Core_RunningTrackInfo.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      lazy protocol witness table accessor for type Apple_Workout_Core_RunningTrackProximity and conformance Apple_Workout_Core_RunningTrackProximity();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    if (*(v3 + 12))
    {
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    if (*(v3 + 16))
    {
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    if (*(v3 + 20))
    {
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    if (*(v3 + 24))
    {
      dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)();
    }

    type metadata accessor for Apple_Workout_Core_RunningTrackInfo(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_RunningTrackInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMd, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_CLLocation(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Workout_Core_RunningTrackInfo(0);
  outlined init with copy of Apple_Workout_Core_CLLocation?(a1 + *(v14 + 40), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_CLLocation?(v8, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMd, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMR);
  }

  outlined init with take of Apple_Workout_Core_CLLocation(v8, v13);
  lazy protocol witness table accessor for type Apple_Workout_Core_RunningTrackInfo and conformance Apple_Workout_Core_RunningTrackInfo(&lazy protocol witness table cache variable for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation, type metadata accessor for Apple_Workout_Core_CLLocation, &protocol conformance descriptor for Apple_Workout_Core_CLLocation);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_CLLocation(v13);
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_RunningTrackProximity and conformance Apple_Workout_Core_RunningTrackProximity()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_RunningTrackProximity and conformance Apple_Workout_Core_RunningTrackProximity;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_RunningTrackProximity and conformance Apple_Workout_Core_RunningTrackProximity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_RunningTrackProximity and conformance Apple_Workout_Core_RunningTrackProximity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_RunningTrackProximity and conformance Apple_Workout_Core_RunningTrackProximity;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_RunningTrackProximity and conformance Apple_Workout_Core_RunningTrackProximity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_RunningTrackProximity and conformance Apple_Workout_Core_RunningTrackProximity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_RunningTrackProximity and conformance Apple_Workout_Core_RunningTrackProximity;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_RunningTrackProximity and conformance Apple_Workout_Core_RunningTrackProximity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_RunningTrackProximity and conformance Apple_Workout_Core_RunningTrackProximity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_RunningTrackProximity and conformance Apple_Workout_Core_RunningTrackProximity;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_RunningTrackProximity and conformance Apple_Workout_Core_RunningTrackProximity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_RunningTrackProximity and conformance Apple_Workout_Core_RunningTrackProximity);
  }

  return result;
}

Swift::Int Apple_Workout_Core_RunningTrackInfo.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for Apple_Workout_Core_RunningTrackInfo(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_RunningTrackInfo and conformance Apple_Workout_Core_RunningTrackInfo(&lazy protocol witness table cache variable for type Apple_Workout_Core_RunningTrackInfo and conformance Apple_Workout_Core_RunningTrackInfo, type metadata accessor for Apple_Workout_Core_RunningTrackInfo, &protocol conformance descriptor for Apple_Workout_Core_RunningTrackInfo);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_RunningTrackInfo@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 20) = 0;
  *(a2 + 12) = 0;
  *(a2 + 28) = 0;
  UnknownStorage.init()();
  v4 = *(a1 + 40);
  v5 = type metadata accessor for Apple_Workout_Core_CLLocation(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_RunningTrackInfo@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_RunningTrackInfo(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_RunningTrackInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_RunningTrackInfo and conformance Apple_Workout_Core_RunningTrackInfo(&lazy protocol witness table cache variable for type Apple_Workout_Core_RunningTrackInfo and conformance Apple_Workout_Core_RunningTrackInfo, type metadata accessor for Apple_Workout_Core_RunningTrackInfo, &protocol conformance descriptor for Apple_Workout_Core_RunningTrackInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_RunningTrackProximity@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
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

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_RunningTrackInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_RunningTrackInfo and conformance Apple_Workout_Core_RunningTrackInfo(&lazy protocol witness table cache variable for type Apple_Workout_Core_RunningTrackInfo and conformance Apple_Workout_Core_RunningTrackInfo, type metadata accessor for Apple_Workout_Core_RunningTrackInfo, &protocol conformance descriptor for Apple_Workout_Core_RunningTrackInfo);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_RunningTrackInfo(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_RunningTrackInfo(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_Core_RunningTrackInfo and conformance Apple_Workout_Core_RunningTrackInfo(&lazy protocol witness table cache variable for type Apple_Workout_Core_RunningTrackInfo and conformance Apple_Workout_Core_RunningTrackInfo, type metadata accessor for Apple_Workout_Core_RunningTrackInfo, &protocol conformance descriptor for Apple_Workout_Core_RunningTrackInfo);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_RunningTrackInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static Apple_Workout_Core_RunningTrackInfo.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_CLLocation(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMd, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_CLLocationVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSg_ADtMR);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v26 - v16;
  v18 = *(type metadata accessor for Apple_Workout_Core_RunningTrackInfo(0) + 40);
  v19 = *(v14 + 56);
  outlined init with copy of Apple_Workout_Core_CLLocation?(a1 + v18, v17);
  outlined init with copy of Apple_Workout_Core_CLLocation?(a2 + v18, &v17[v19]);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) != 1)
  {
    outlined init with copy of Apple_Workout_Core_CLLocation?(v17, v12);
    if (v20(&v17[v19], 1, v4) != 1)
    {
      outlined init with take of Apple_Workout_Core_CLLocation(&v17[v19], v8);
      v23 = static Apple_Workout_Core_CLLocation.== infix(_:_:)(v12, v8);
      outlined destroy of Apple_Workout_Core_CLLocation(v8);
      outlined destroy of Apple_Workout_Core_CLLocation(v12);
      outlined destroy of Apple_Workout_Core_CLLocation?(v17, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMd, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMR);
      if ((v23 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    outlined destroy of Apple_Workout_Core_CLLocation(v12);
LABEL_6:
    outlined destroy of Apple_Workout_Core_CLLocation?(v17, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSg_ADtMR);
    goto LABEL_7;
  }

  if (v20(&v17[v19], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of Apple_Workout_Core_CLLocation?(v17, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMd, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMR);
LABEL_10:
  v24 = *a1;
  v25 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v25 > 1)
    {
      if (v25 == 2)
      {
        if (v24 != 2)
        {
          goto LABEL_7;
        }
      }

      else if (v24 != 3)
      {
        goto LABEL_7;
      }
    }

    else if (v25)
    {
      if (v24 != 1)
      {
        goto LABEL_7;
      }
    }

    else if (v24)
    {
      goto LABEL_7;
    }
  }

  else if (v24 != v25)
  {
    goto LABEL_7;
  }

  if (*(a1 + 3) == *(a2 + 12) && *(a1 + 4) == *(a2 + 16) && *(a1 + 5) == *(a2 + 20) && a1[3] == *(a2 + 24))
  {
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Apple_Workout_Core_RunningTrackInfo and conformance Apple_Workout_Core_RunningTrackInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v21 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v21 & 1;
  }

LABEL_7:
  v21 = 0;
  return v21 & 1;
}

unint64_t lazy protocol witness table accessor for type [Apple_Workout_Core_RunningTrackProximity] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Apple_Workout_Core_RunningTrackProximity] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Apple_Workout_Core_RunningTrackProximity] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore06Apple_a1_B22_RunningTrackProximityOGMd, &_sSay11WorkoutCore06Apple_a1_B22_RunningTrackProximityOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Apple_Workout_Core_RunningTrackProximity] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Apple_Workout_Core_RunningTrackProximity(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Apple_Workout_Core_RunningTrackProximity(uint64_t result, int a2, int a3)
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

uint64_t getEnumTag for Apple_Workout_Core_RunningTrackProximity(uint64_t a1)
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

uint64_t destructiveInjectEnumTag for Apple_Workout_Core_RunningTrackProximity(uint64_t result, int a2)
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

void type metadata completion function for Apple_Workout_Core_RunningTrackInfo(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Apple_Workout_Core_CLLocation?(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Apple_Workout_Core_CLLocation?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Apple_Workout_Core_CLLocation?)
  {
    type metadata accessor for Apple_Workout_Core_CLLocation(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Apple_Workout_Core_CLLocation?);
    }
  }
}

uint64_t outlined destroy of Apple_Workout_Core_CLLocation?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_Core_RunningTrackInfo and conformance Apple_Workout_Core_RunningTrackInfo(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void MirroredHostStartSource.init(protobuf:)(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8) == 1)
  {
    v4 = v3 != 0;
  }

  else
  {
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static WOLog.dataLink);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = v9;
      *v8 = 134218242;
      *(v8 + 4) = v3;
      *(v8 + 12) = 2080;
      *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6944705564616568, 0xED000079616C7073, &v10);
      _os_log_impl(&dword_20AEA4000, v6, v7, "Unrecognized MirroredHostStartSource rawValue: %ld, defaulted to %s", v8, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x20F2E9420](v9, -1, -1);
      MEMORY[0x20F2E9420](v8, -1, -1);
    }

    v4 = 0;
  }

  *a2 = v4;
}

uint64_t MirroredHostStartSource.description.getter()
{
  if (*v0)
  {
    return 0x6465726F7272696DLL;
  }

  else
  {
    return 0x6944705564616568;
  }
}

WorkoutCore::MirroredHostStartSource_optional __swiftcall MirroredHostStartSource.init(rawValue:)(Swift::Int rawValue)
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

void *protocol witness for RawRepresentable.init(rawValue:) in conformance MirroredHostStartSource@<X0>(void *result@<X0>, char *a2@<X8>)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MirroredHostStartSource()
{
  if (*v0)
  {
    return 0x6465726F7272696DLL;
  }

  else
  {
    return 0x6944705564616568;
  }
}

void protocol witness for MirroredEnumProtocol.init(protobuf:) in conformance MirroredHostStartSource(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  v4 = v2;
  MirroredHostStartSource.init(protobuf:)(&v3, a2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MirroredHostStartSource()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MirroredHostStartSource(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

unint64_t instantiation function for generic protocol witness table for MirroredHostStartSource(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MirroredHostStartSource and conformance MirroredHostStartSource();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type MirroredHostStartSource and conformance MirroredHostStartSource()
{
  result = lazy protocol witness table cache variable for type MirroredHostStartSource and conformance MirroredHostStartSource;
  if (!lazy protocol witness table cache variable for type MirroredHostStartSource and conformance MirroredHostStartSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredHostStartSource and conformance MirroredHostStartSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredHostStartSource and conformance MirroredHostStartSource;
  if (!lazy protocol witness table cache variable for type MirroredHostStartSource and conformance MirroredHostStartSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredHostStartSource and conformance MirroredHostStartSource);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MirroredHostStartSource(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MirroredHostStartSource(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t TrackRunningMetricsPublisher.trackInfo.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

void key path getter for TrackRunningMetricsPublisher.trackInfo : TrackRunningMetricsPublisher(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

double key path setter for TrackRunningMetricsPublisher.trackInfo : TrackRunningMetricsPublisher(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return result;
}

double TrackRunningMetricsPublisher.trackInfo.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return result;
}

uint64_t (*TrackRunningMetricsPublisher.trackInfo.modify(uint64_t *a1))()
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
  return TrackRunningMetricsPublisher.trackInfo.modify;
}

uint64_t key path setter for TrackRunningMetricsPublisher.$trackInfo : TrackRunningMetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore16RunningTrackInfoCSg_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore16RunningTrackInfoCSg_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore16RunningTrackInfoCSgGMd, &_s7Combine9PublishedVy11WorkoutCore16RunningTrackInfoCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t TrackRunningMetricsPublisher.$trackInfo.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore16RunningTrackInfoCSg_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore16RunningTrackInfoCSg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore16RunningTrackInfoCSgGMd, &_s7Combine9PublishedVy11WorkoutCore16RunningTrackInfoCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*TrackRunningMetricsPublisher.$trackInfo.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore16RunningTrackInfoCSg_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore16RunningTrackInfoCSg_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore28TrackRunningMetricsPublisher__trackInfo;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore16RunningTrackInfoCSgGMd, &_s7Combine9PublishedVy11WorkoutCore16RunningTrackInfoCSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return TrackRunningMetricsPublisher.$trackInfo.modify;
}

uint64_t TrackRunningMetricsPublisher.trackRunningCoordinator.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

void key path getter for TrackRunningMetricsPublisher.trackRunningCoordinator : TrackRunningMetricsPublisher(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

double key path setter for TrackRunningMetricsPublisher.trackRunningCoordinator : TrackRunningMetricsPublisher(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  static Published.subscript.setter();
  return result;
}

double TrackRunningMetricsPublisher.trackRunningCoordinator.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return result;
}

uint64_t (*TrackRunningMetricsPublisher.trackRunningCoordinator.modify(uint64_t *a1))()
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
  return TrackRunningMetricsPublisher.trackRunningCoordinator.modify;
}

void TrackRunningMetricsPublisher.trackInfo.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t TrackRunningMetricsPublisher.$trackInfo.getter(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for TrackRunningMetricsPublisher.$trackInfo : TrackRunningMetricsPublisher(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for TrackRunningMetricsPublisher.$trackRunningCoordinator : TrackRunningMetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore23TrackRunningCoordinatorC_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore23TrackRunningCoordinatorC_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore23TrackRunningCoordinatorCGMd, &_s7Combine9PublishedVy11WorkoutCore23TrackRunningCoordinatorCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t TrackRunningMetricsPublisher.$trackRunningCoordinator.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore23TrackRunningCoordinatorC_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore23TrackRunningCoordinatorC_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore23TrackRunningCoordinatorCGMd, &_s7Combine9PublishedVy11WorkoutCore23TrackRunningCoordinatorCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*TrackRunningMetricsPublisher.$trackRunningCoordinator.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore23TrackRunningCoordinatorC_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore23TrackRunningCoordinatorC_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore28TrackRunningMetricsPublisher__trackRunningCoordinator;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore23TrackRunningCoordinatorCGMd, &_s7Combine9PublishedVy11WorkoutCore23TrackRunningCoordinatorCGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return TrackRunningMetricsPublisher.$trackRunningCoordinator.modify;
}

void TrackRunningMetricsPublisher.$trackInfo.modify(uint64_t a1, char a2)
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

uint64_t TrackRunningMetricsPublisher.__allocating_init()()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore16RunningTrackInfoCSgMd, &_s11WorkoutCore16RunningTrackInfoCSgMR);
  Published.init(initialValue:)();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static TrackRunningCoordinator.shared;
  type metadata accessor for TrackRunningCoordinator(0);
  v2 = v1;
  Published.init(initialValue:)();
  return v0;
}

uint64_t TrackRunningMetricsPublisher.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore23TrackRunningCoordinatorCGMd, &_s7Combine9PublishedVy11WorkoutCore23TrackRunningCoordinatorCGMR);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore16RunningTrackInfoCSgGMd, &_s7Combine9PublishedVy11WorkoutCore16RunningTrackInfoCSgGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v16 - v9;
  v11 = OBJC_IVAR____TtC11WorkoutCore28TrackRunningMetricsPublisher__trackInfo;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore16RunningTrackInfoCSgMd, &_s11WorkoutCore16RunningTrackInfoCSgMR);
  Published.init(initialValue:)();
  (*(v7 + 32))(v0 + v11, v10, v6);
  v12 = OBJC_IVAR____TtC11WorkoutCore28TrackRunningMetricsPublisher__trackRunningCoordinator;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v13 = static TrackRunningCoordinator.shared;
  v17 = static TrackRunningCoordinator.shared;
  type metadata accessor for TrackRunningCoordinator(0);
  v14 = v13;
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v12, v5, v1);
  return v0;
}

uint64_t TrackRunningMetricsPublisher.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore28TrackRunningMetricsPublisher__trackInfo;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore16RunningTrackInfoCSgGMd, &_s7Combine9PublishedVy11WorkoutCore16RunningTrackInfoCSgGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore28TrackRunningMetricsPublisher__trackRunningCoordinator;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore23TrackRunningCoordinatorCGMd, &_s7Combine9PublishedVy11WorkoutCore23TrackRunningCoordinatorCGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t TrackRunningMetricsPublisher.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore28TrackRunningMetricsPublisher__trackInfo;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore16RunningTrackInfoCSgGMd, &_s7Combine9PublishedVy11WorkoutCore16RunningTrackInfoCSgGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore28TrackRunningMetricsPublisher__trackRunningCoordinator;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore23TrackRunningCoordinatorCGMd, &_s7Combine9PublishedVy11WorkoutCore23TrackRunningCoordinatorCGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance TrackRunningMetricsPublisher@<X0>(uint64_t *a1@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t TrackRunningMetricsPublisher.protobuf.getter()
{
  type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  return static Message.with(_:)();
}

uint64_t closure #1 in TrackRunningMetricsPublisher.protobuf.getter(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator(0);
  v19 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Workout_Core_RunningTrackInfo(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v20);

  if (v20)
  {
    lazy protocol witness table accessor for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_RunningTrackInfo and conformance Apple_Workout_Core_RunningTrackInfo, type metadata accessor for Apple_Workout_Core_RunningTrackInfo, &protocol conformance descriptor for Apple_Workout_Core_RunningTrackInfo);
    static Message.with(_:)();

    v12 = *(type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher(0) + 20);
    _s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgWOhTm_0(a1 + v12, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
    outlined init with take of Apple_Workout_Core_TrackRunningCoordinator(v11, a1 + v12, type metadata accessor for Apple_Workout_Core_RunningTrackInfo);
    (*(v8 + 56))(a1 + v12, 0, 1, v7);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v20);

  v14 = v20;
  MEMORY[0x28223BE20](v13, v15);
  *(&v18 - 2) = v14;
  lazy protocol witness table accessor for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_TrackRunningCoordinator and conformance Apple_Workout_Core_TrackRunningCoordinator, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator, &protocol conformance descriptor for Apple_Workout_Core_TrackRunningCoordinator);
  static Message.with(_:)();

  v16 = *(type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher(0) + 24);
  _s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgWOhTm_0(a1 + v16, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
  outlined init with take of Apple_Workout_Core_TrackRunningCoordinator(v6, a1 + v16, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator);
  return (*(v19 + 56))(a1 + v16, 0, 1, v3);
}

uint64_t TrackRunningMetricsPublisher.wireData()()
{
  v0 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher(0);
  MEMORY[0x28223BE20](v0, v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  lazy protocol witness table accessor for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  static Message.with(_:)();
  v4 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_TrackRunningMetricsPublisher(v3, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  return v4;
}

double Apple_Workout_Core_TrackRunningMetricsPublisher.decodeInto(publisher:)(uint64_t a1)
{
  v45 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v43 = &v39 - v4;
  v5 = type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator(0);
  v41 = *(v5 - 8);
  v42 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v44 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Workout_Core_RunningTrackInfo(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v39 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v39 - v18;
  v40 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher(0);
  v20 = *(v40 + 20);
  _s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgWOcTm_0(v1 + v20, v19, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  v21 = *(v9 + 48);
  v22 = v21(v19, 1, v8);
  v23 = v19;
  v24 = v1;
  _s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgWOhTm_0(v23, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  if (v22 != 1)
  {
    v25 = v1 + v20;
    v26 = v39;
    _s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgWOcTm_0(v25, v39, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
    if (v21(v26, 1, v8) == 1)
    {
      *v12 = 0;
      v12[8] = 1;
      *(v12 + 20) = 0;
      *(v12 + 12) = 0;
      *(v12 + 7) = 0;
      UnknownStorage.init()();
      v27 = *(v8 + 40);
      v28 = type metadata accessor for Apple_Workout_Core_CLLocation(0);
      (*(*(v28 - 8) + 56))(&v12[v27], 1, 1, v28);
      if (v21(v26, 1, v8) != 1)
      {
        _s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgWOhTm_0(v26, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
      }
    }

    else
    {
      outlined init with take of Apple_Workout_Core_TrackRunningCoordinator(v26, v12, type metadata accessor for Apple_Workout_Core_RunningTrackInfo);
    }

    v29 = Apple_Workout_Core_RunningTrackInfo.decoded.getter();
    outlined destroy of Apple_Workout_Core_TrackRunningMetricsPublisher(v12, type metadata accessor for Apple_Workout_Core_RunningTrackInfo);
    swift_getKeyPath();
    swift_getKeyPath();
    v46 = v29;

    static Published.subscript.setter();
  }

  v30 = v43;
  _s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgWOcTm_0(v24 + *(v40 + 24), v43, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
  v31 = v42;
  v32 = *(v41 + 48);
  if (v32(v30, 1, v42) == 1)
  {
    v33 = v44;
    *v44 = 0;
    UnknownStorage.init()();
    if (v32(v30, 1, v31) != 1)
    {
      _s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgWOhTm_0(v30, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
    }
  }

  else
  {
    v33 = v44;
    outlined init with take of Apple_Workout_Core_TrackRunningCoordinator(v30, v44, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v34 = static TrackRunningCoordinator.shared;
  v35 = *v33;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v46) = v35;
  v36 = v34;
  static Published.subscript.setter();
  outlined destroy of Apple_Workout_Core_TrackRunningMetricsPublisher(v33, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator);
  swift_getKeyPath();
  swift_getKeyPath();
  v46 = v36;

  v37 = v36;
  static Published.subscript.setter();
  return result;
}

char *TrackRunningMetricsPublisher.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v4 = specialized TrackRunningMetricsPublisher.__allocating_init(serializedData:)(a1, a2);
  outlined consume of Data._Representation(a1, a2);
  return v4;
}

uint64_t protocol witness for Protable.protobuf.getter in conformance TrackRunningMetricsPublisher()
{
  type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  return static Message.with(_:)();
}

uint64_t protocol witness for ProDatable.wireData() in conformance TrackRunningMetricsPublisher()
{
  v0 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher(0);
  MEMORY[0x28223BE20](v0, v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  lazy protocol witness table accessor for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  static Message.with(_:)();
  v4 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_TrackRunningMetricsPublisher(v3, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  return v4;
}

uint64_t protocol witness for static ProDatable.decodeProto(serializedData:) in conformance TrackRunningMetricsPublisher@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  result = specialized static TrackRunningMetricsPublisher.decodeProto(serializedData:)(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

uint64_t protocol witness for ProDatable.init(serializedData:) in conformance TrackRunningMetricsPublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char **a3@<X8>)
{
  v7 = specialized TrackRunningMetricsPublisher.__allocating_init(serializedData:)(a1, a2);
  result = outlined consume of Data._Representation(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t specialized static TrackRunningMetricsPublisher.decodeProto(serializedData:)(uint64_t a1, unint64_t a2)
{
  v25 = a1;
  v26 = a2;
  v2 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v28 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher(0);
  MEMORY[0x28223BE20](v27, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore23TrackRunningCoordinatorCGMd, &_s7Combine9PublishedVy11WorkoutCore23TrackRunningCoordinatorCGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore16RunningTrackInfoCSgGMd, &_s7Combine9PublishedVy11WorkoutCore16RunningTrackInfoCSgGMR);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v25 - v16;
  type metadata accessor for TrackRunningMetricsPublisher(0);
  v18 = swift_allocObject();
  v19 = OBJC_IVAR____TtC11WorkoutCore28TrackRunningMetricsPublisher__trackInfo;
  *&v29 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore16RunningTrackInfoCSgMd, &_s11WorkoutCore16RunningTrackInfoCSgMR);
  Published.init(initialValue:)();
  (*(v14 + 32))(v18 + v19, v17, v13);
  v20 = OBJC_IVAR____TtC11WorkoutCore28TrackRunningMetricsPublisher__trackRunningCoordinator;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v21 = static TrackRunningCoordinator.shared;
  *&v29 = static TrackRunningCoordinator.shared;
  type metadata accessor for TrackRunningCoordinator(0);
  v22 = v21;
  Published.init(initialValue:)();
  (*(v9 + 32))(v18 + v20, v12, v8);
  v32 = v25;
  v33 = v26;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  outlined copy of Data._Representation(v25, v26);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  v23 = v34;
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v23)
  {
  }

  else
  {
    Apple_Workout_Core_TrackRunningMetricsPublisher.decodeInto(publisher:)(v18);
    outlined destroy of Apple_Workout_Core_TrackRunningMetricsPublisher(v7, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  }

  return v18;
}

char *specialized TrackRunningMetricsPublisher.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore23TrackRunningCoordinatorCGMd, &_s7Combine9PublishedVy11WorkoutCore23TrackRunningCoordinatorCGMR);
  v29 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore16RunningTrackInfoCSgGMd, &_s7Combine9PublishedVy11WorkoutCore16RunningTrackInfoCSgGMR);
  v30 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v27 - v10;
  v12 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v12 - 8, v13);
  v14 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher(0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  v35 = a2;
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  v18 = v36;
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (!v18)
  {
    v19 = v7;
    v20 = v29;
    v28 = v4;
    v36 = 0;
    type metadata accessor for TrackRunningMetricsPublisher(0);
    v7 = swift_allocObject();
    v21 = OBJC_IVAR____TtC11WorkoutCore28TrackRunningMetricsPublisher__trackInfo;
    *&v31 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore16RunningTrackInfoCSgMd, &_s11WorkoutCore16RunningTrackInfoCSgMR);
    Published.init(initialValue:)();
    (*(v30 + 32))(&v7[v21], v11, v8);
    v22 = OBJC_IVAR____TtC11WorkoutCore28TrackRunningMetricsPublisher__trackRunningCoordinator;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v23 = static TrackRunningCoordinator.shared;
    *&v31 = static TrackRunningCoordinator.shared;
    type metadata accessor for TrackRunningCoordinator(0);
    v24 = v23;
    Published.init(initialValue:)();
    (*(v20 + 32))(&v7[v22], v19, v28);

    Apple_Workout_Core_TrackRunningMetricsPublisher.decodeInto(publisher:)(v25);

    outlined destroy of Apple_Workout_Core_TrackRunningMetricsPublisher(v17, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  }

  return v7;
}

uint64_t type metadata accessor for TrackRunningMetricsPublisher(uint64_t a1)
{
  result = type metadata singleton initialization cache for TrackRunningMetricsPublisher;
  if (!type metadata singleton initialization cache for TrackRunningMetricsPublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for TrackRunningMetricsPublisher(uint64_t a1)
{
  type metadata accessor for Published<RunningTrackInfo?>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<TrackRunningCoordinator>(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Published<RunningTrackInfo?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<RunningTrackInfo?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11WorkoutCore16RunningTrackInfoCSgMd, &_s11WorkoutCore16RunningTrackInfoCSgMR);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<RunningTrackInfo?>);
    }
  }
}

void type metadata accessor for Published<TrackRunningCoordinator>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<TrackRunningCoordinator>)
  {
    type metadata accessor for TrackRunningCoordinator(255);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<TrackRunningCoordinator>);
    }
  }
}

uint64_t _s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined destroy of Apple_Workout_Core_TrackRunningMetricsPublisher(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of Apple_Workout_Core_TrackRunningCoordinator(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t closure #1 in TrackRunningMetricsPublisher.protobuf.getterpartial apply(uint64_t a1)
{
  return partial apply for closure #1 in TrackRunningMetricsPublisher.protobuf.getter(a1);
}

{
  return partial apply for closure #1 in TrackRunningMetricsPublisher.protobuf.getter(a1);
}

{
  return partial apply for closure #1 in TrackRunningMetricsPublisher.protobuf.getter(a1);
}

void *specialized Dictionary.subscript.getter(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaDictionary.lookup(_:)();

    if (v4)
    {
      type metadata accessor for WorkoutAlertZone();
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

void specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    outlined init with copy of Any(*(a1 + 56) + 32 * v12, v35);
    *&v34 = v15;
    *(&v34 + 1) = v14;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    outlined init with take of Any(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    outlined init with take of Any(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    outlined init with take of Any(v31, v32);
    v16 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
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
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    outlined init with take of Any(v32, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + 16 * (v12 | (v11 << 6)));
        v15 = *v13;
        v14 = v13[1];

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSs11AnyHashableVGMd, &_sSDySSs11AnyHashableVGMR);
        swift_dynamicCast();
        outlined init with take of Any(&v22, v24);
        outlined init with take of Any(v24, v25);
        outlined init with take of Any(v25, &v23);
        v16 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v14);
        if (v17)
        {
          v8 = (v2[6] + 16 * v16);
          *v8 = v15;
          v8[1] = v14;
          v9 = v16;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0(v10);
          outlined init with take of Any(&v23, v10);
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
          v18 = (v2[6] + 16 * v16);
          *v18 = v15;
          v18[1] = v14;
          outlined init with take of Any(&v23, (v2[7] + 32 * v16));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + 16 * (v12 | (v11 << 6)));
        v15 = *v13;
        v14 = v13[1];

        swift_dynamicCast();
        outlined init with take of Any(&v22, v24);
        outlined init with take of Any(v24, v25);
        outlined init with take of Any(v25, &v23);
        v16 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v14);
        if (v17)
        {
          v8 = (v2[6] + 16 * v16);
          *v8 = v15;
          v8[1] = v14;
          v9 = v16;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0(v10);
          outlined init with take of Any(&v23, v10);
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
          v18 = (v2[6] + 16 * v16);
          *v18 = v15;
          v18[1] = v14;
          outlined init with take of Any(&v23, (v2[7] + 32 * v16));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo12HKSampleTypeCSaySo0C0CGGMd, &_ss18_DictionaryStorageCySo12HKSampleTypeCSaySo0C0CGGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = _sSo12HKSampleTypeCMaTm_0(0, &lazy cache variable for type metadata for HKSampleType, 0x277CCD8D8);
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = v5 + 63;
  if (v3 == MEMORY[0x277D837D0])
  {
    v23 = v8 >> 6;

    v24 = 0;
    if (v7)
    {
      goto LABEL_28;
    }

LABEL_29:
    while (1)
    {
      v28 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v28 >= v23)
      {
LABEL_36:

        return;
      }

      v7 = *(v4 + 8 * v28);
      ++v24;
      if (v7)
      {
        while (1)
        {
          v29 = __clz(__rbit64(v7));
          v7 &= v7 - 1;
          v30 = *(*(a1 + 48) + ((v28 << 9) | (8 * v29)));

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16HKQuantitySampleCGMd, &_sSaySo16HKQuantitySampleCGMR);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8HKSampleCGMd, &_sSaySo8HKSampleCGMR);
          swift_dynamicCast();
          v31 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
          if (v32)
          {
            v25 = *(v2 + 48);
            v26 = *(v25 + 8 * v31);
            *(v25 + 8 * v31) = v30;
            v27 = v31;

            *(*(v2 + 56) + 8 * v27) = v34;

            v24 = v28;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v33 = *(v2 + 16);
            if (v33 >= *(v2 + 24))
            {
              goto LABEL_40;
            }

            *(v2 + 64 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
            *(*(v2 + 48) + 8 * v31) = v30;
            *(*(v2 + 56) + 8 * v31) = v34;
            *(v2 + 16) = v33 + 1;
            v24 = v28;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

LABEL_28:
          v28 = v24;
        }
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = v2 + 64;

    v11 = 0;
    while (v7)
    {
LABEL_16:
      v14 = *(*(a1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v7)))));

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16HKQuantitySampleCGMd, &_sSaySo16HKQuantitySampleCGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8HKSampleCGMd, &_sSaySo8HKSampleCGMR);
      swift_dynamicCast();
      v15 = NSObject._rawHashValue(seed:)(*(v2 + 40));
      v16 = -1 << *(v2 + 32);
      v17 = v15 & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v12 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_38;
      }

      v12 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *(v10 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v2 + 48) + 8 * v12) = v14;
      *(*(v2 + 56) + 8 * v12) = v34;
      ++*(v2 + 16);
    }

    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v9)
      {
        goto LABEL_36;
      }

      v7 = *(v4 + 8 * v13);
      ++v11;
      if (v7)
      {
        v11 = v13;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
LABEL_40:
  __break(1u);
}

double key path setter for ZoneTracker.targetZoneTemplates : ZoneTracker(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLWorkoutZoneTracker_targetZoneTemplates;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

double ZoneTracker.targetZoneTemplates.getter()
{
  swift_beginAccess();

  return result;
}

id ZoneTracker.activityType.getter()
{
  v1 = OBJC_IVAR___NLWorkoutZoneTracker_activityType;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void key path setter for ZoneTracker.activityType : ZoneTracker(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLWorkoutZoneTracker_activityType;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t ZoneTracker.alertDelegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ZoneTracker.alertDelegate.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR___NLWorkoutZoneTracker_alertDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return ZoneTracker.alertDelegate.modify;
}

void ZoneTracker.alertDelegate.modify(void **a1, char a2)
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

uint64_t ZoneTracker.zoneTrackerDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR___NLWorkoutZoneTracker_zoneTrackerDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ZoneTracker.zoneTrackerDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___NLWorkoutZoneTracker_zoneTrackerDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return ZoneTracker.zoneTrackerDelegate.modify;
}

void ZoneTracker.zoneTrackerDelegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
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

uint64_t ZoneTracker.enforceDelayBetweenAlerts.getter()
{
  v1 = OBJC_IVAR___NLWorkoutZoneTracker_enforceDelayBetweenAlerts;
  swift_beginAccess();
  return *(v0 + v1);
}

void ZoneTracker.enforceDelayBetweenAlerts.setter(char a1)
{
  v3 = OBJC_IVAR___NLWorkoutZoneTracker_enforceDelayBetweenAlerts;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double ZoneTracker.minTimeBetweenAlerts.getter()
{
  v1 = OBJC_IVAR___NLWorkoutZoneTracker_minTimeBetweenAlerts;
  swift_beginAccess();
  return *(v0 + v1);
}

void ZoneTracker.minTimeBetweenAlerts.setter(double a1)
{
  v3 = OBJC_IVAR___NLWorkoutZoneTracker_minTimeBetweenAlerts;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void *ZoneTracker.currentDistance.getter()
{
  v1 = OBJC_IVAR___NLWorkoutZoneTracker_currentDistance;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ZoneTracker.currentDistance.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___NLWorkoutZoneTracker_currentDistance;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void key path setter for ZoneTracker.currentDistance : ZoneTracker(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLWorkoutZoneTracker_currentDistance;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

double ZoneTracker.currentDuration.getter()
{
  v1 = OBJC_IVAR___NLWorkoutZoneTracker_currentDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

void ZoneTracker.currentDuration.setter(double a1)
{
  v3 = OBJC_IVAR___NLWorkoutZoneTracker_currentDuration;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

_BYTE *ZoneTracker.__allocating_init(activityType:targetZones:distanceUnit:metadataSavingDelegate:)(void *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v8 = objc_allocWithZone(v4);
  v19 = OBJC_IVAR___NLWorkoutZoneTracker_alertDelegate;
  swift_unknownObjectWeakInit();
  v9 = &v8[OBJC_IVAR___NLWorkoutZoneTracker_zoneTrackerDelegate];
  *&v8[OBJC_IVAR___NLWorkoutZoneTracker_zoneTrackerDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR___NLWorkoutZoneTracker_currentDistance;
  *&v8[OBJC_IVAR___NLWorkoutZoneTracker_currentDistance] = 0;
  *&v8[OBJC_IVAR___NLWorkoutZoneTracker_currentDuration] = 0;
  v11 = OBJC_IVAR___NLWorkoutZoneTracker_lastPresentedAlertsByType;
  *&v8[v11] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo8NSNumberC_11WorkoutCore0D9AlertZoneCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v12 = OBJC_IVAR___NLWorkoutZoneTracker_metadataSavingDelegate;
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR___NLWorkoutZoneTracker_activityType;
  *&v8[OBJC_IVAR___NLWorkoutZoneTracker_activityType] = a1;
  v14 = a1;
  v15 = specialized static ZoneTracker.targetZoneDictionary(from:)(a2);
  if (v5)
  {

    swift_unknownObjectRelease();

    sub_20AED5124(&v8[v19]);
    sub_20AED5124(v9);

    sub_20AED5124(&v8[v12]);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = v15;

    *&v8[OBJC_IVAR___NLWorkoutZoneTracker_targetZoneTemplates] = v16;
    *&v8[OBJC_IVAR___NLWorkoutZoneTracker_distanceUnit] = a3;
    v8[OBJC_IVAR___NLWorkoutZoneTracker_enforceDelayBetweenAlerts] = 1;
    *&v8[OBJC_IVAR___NLWorkoutZoneTracker_minTimeBetweenAlerts] = 0x402E000000000000;
    *&v8[OBJC_IVAR___NLWorkoutZoneTracker_alertsHoldoffTime] = 0x404E000000000000;
    swift_unknownObjectWeakAssign();
    v21.receiver = v8;
    v21.super_class = v22;
    v17 = a3;
    v8 = objc_msgSendSuper2(&v21, sel_init);

    swift_unknownObjectRelease();
  }

  return v8;
}

_BYTE *ZoneTracker.init(activityType:targetZones:distanceUnit:metadataSavingDelegate:)(void *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v21 = a4;
  v17 = OBJC_IVAR___NLWorkoutZoneTracker_alertDelegate;
  swift_unknownObjectWeakInit();
  v8 = &v4[OBJC_IVAR___NLWorkoutZoneTracker_zoneTrackerDelegate];
  *&v4[OBJC_IVAR___NLWorkoutZoneTracker_zoneTrackerDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR___NLWorkoutZoneTracker_currentDistance;
  *&v4[OBJC_IVAR___NLWorkoutZoneTracker_currentDistance] = 0;
  *&v4[OBJC_IVAR___NLWorkoutZoneTracker_currentDuration] = 0;
  v10 = OBJC_IVAR___NLWorkoutZoneTracker_lastPresentedAlertsByType;
  *&v4[v10] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo8NSNumberC_11WorkoutCore0D9AlertZoneCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v18 = OBJC_IVAR___NLWorkoutZoneTracker_metadataSavingDelegate;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR___NLWorkoutZoneTracker_activityType;
  *&v4[OBJC_IVAR___NLWorkoutZoneTracker_activityType] = a1;
  v12 = a1;
  v13 = specialized static ZoneTracker.targetZoneDictionary(from:)(a2);
  if (v5)
  {

    swift_unknownObjectRelease();

    sub_20AED5124(&v4[v17]);
    sub_20AED5124(v8);

    sub_20AED5124(&v4[v18]);
    type metadata accessor for ZoneTracker();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = v13;

    *&v4[OBJC_IVAR___NLWorkoutZoneTracker_targetZoneTemplates] = v14;
    *&v4[OBJC_IVAR___NLWorkoutZoneTracker_distanceUnit] = a3;
    v4[OBJC_IVAR___NLWorkoutZoneTracker_enforceDelayBetweenAlerts] = 1;
    *&v4[OBJC_IVAR___NLWorkoutZoneTracker_minTimeBetweenAlerts] = 0x402E000000000000;
    *&v4[OBJC_IVAR___NLWorkoutZoneTracker_alertsHoldoffTime] = 0x404E000000000000;
    swift_unknownObjectWeakAssign();
    v20.receiver = v4;
    v20.super_class = type metadata accessor for ZoneTracker();
    v15 = a3;
    v4 = objc_msgSendSuper2(&v20, sel_init);

    swift_unknownObjectRelease();
  }

  return v4;
}

Swift::Void __swiftcall ZoneTracker.updateTargetZones(_:)(Swift::OpaquePointer a1)
{
  v2 = specialized static ZoneTracker.targetZoneDictionary(from:)(a1._rawValue);
  v3 = OBJC_IVAR___NLWorkoutZoneTracker_targetZoneTemplates;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

double ZoneTracker.updateTargetZones(from:)()
{
  v0 = LiveWorkoutConfiguration.currentTargetZones.getter();
  ZoneTracker.updateTargetZones(_:)(v0);

  return result;
}

void *ZoneTracker.lastAlert(for:)(char *a1)
{
  v2 = qword_20B43D6E0[*a1];
  ZoneTracker.targetZoneTemplate(for:)(v2);
  if (v3)
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
    v5 = OBJC_IVAR___NLWorkoutZoneTracker_lastPresentedAlertsByType;
    swift_beginAccess();
    v6 = *(v1 + v5);

    v7 = specialized Dictionary.subscript.getter(v4, v6);
  }

  else
  {
    if (one-time initialization token for zones != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static WOLog.zones);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136315138;
      v13 = WOTargetZoneTypeString(v2);
      if (v13)
      {
        v14 = v13;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v15 = Optional.description.getter();
      v17 = v16;

      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v20);

      *(v11 + 4) = v18;
      _os_log_impl(&dword_20AEA4000, v9, v10, "Nil targetZoneTemplate for type: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x20F2E9420](v12, -1, -1);
      MEMORY[0x20F2E9420](v11, -1, -1);
    }

    return 0;
  }

  return v7;
}

BOOL ZoneTracker.passedMinimumDistance(for:)(_BYTE *a1)
{
  if (*a1 - 1 >= 6)
  {
    if (*a1)
    {
LABEL_11:
      if (one-time initialization token for zones != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static WOLog.zones);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_20AEA4000, v19, v20, "minimumDistanceBeforeAlerting unexpectedly has no value, passedMinimumDistance returning true", v21, 2u);
        MEMORY[0x20F2E9420](v21, -1, -1);
      }

      return 1;
    }

    v6 = ZoneTracker.readMinimumDistanceBeforeAlerting()();
  }

  else
  {
    v2 = [*(v1 + OBJC_IVAR___NLWorkoutZoneTracker_distanceUnit) _isMetricDistance];
    v3 = objc_opt_self();
    if (v2)
    {
      v4 = [v3 meterUnitWithMetricPrefix_];
    }

    else
    {
      v4 = [v3 mileUnit];
    }

    v5 = v4;
    v6 = [objc_opt_self() quantityWithUnit:v5 doubleValue:0.0];

    if (!v6)
    {
      goto LABEL_11;
    }
  }

  v7 = OBJC_IVAR___NLWorkoutZoneTracker_currentDistance;
  swift_beginAccess();
  v8 = *(v1 + v7);
  if (v8)
  {
    v9 = objc_opt_self();
    v10 = v8;
    v11 = [v9 meterUnit];
    [v10 doubleValueForUnit_];
    v13 = v12;

    v14 = [v9 meterUnit];
    [v6 doubleValueForUnit_];
    v16 = v15;

    return v16 <= v13;
  }

  else
  {
    if (one-time initialization token for zones != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static WOLog.zones);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_20AEA4000, v23, v24, "currentDistance unexpectedly has no value, passedMinimumDistance returning false", v25, 2u);
      MEMORY[0x20F2E9420](v25, -1, -1);
    }

    return 0;
  }
}

HKQuantity_optional __swiftcall ZoneTracker.minimumDistanceBeforeAlerting(for:)(WorkoutCore::TargetZone::ZoneType a1)
{
  if (*a1 - 1 >= 6)
  {
    if (*a1)
    {
      v6 = 0;
    }

    else
    {
      v6 = ZoneTracker.readMinimumDistanceBeforeAlerting()();
    }
  }

  else
  {
    v2 = [*(v1 + OBJC_IVAR___NLWorkoutZoneTracker_distanceUnit) _isMetricDistance];
    v3 = objc_opt_self();
    if (v2)
    {
      v4 = [v3 meterUnitWithMetricPrefix_];
    }

    else
    {
      v4 = [v3 mileUnit];
    }

    v5 = v4;
    v6 = [objc_opt_self() quantityWithUnit:v5 doubleValue:0.0];
  }

  v8 = v6;
  result.value.super.isa = v8;
  result.is_nil = v7;
  return result;
}

id ZoneTracker.readMinimumDistanceBeforeAlerting()()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = MEMORY[0x20F2E6C00](0xD000000000000021, 0x800000020B4618B0);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      v3 = [objc_opt_self() meterUnit];
      v4 = [objc_opt_self() quantityWithUnit:v3 doubleValue:v6];

      return v4;
    }
  }

  else
  {
    _sSo8NSObjectCSgWOhTm_8(v9, &_sypSgMd, &_sypSgMR);
  }

  result = FIStandardDistanceQuantity();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

Swift::Double __swiftcall ZoneTracker.minimumHoldoffTime(for:)(WorkoutCore::TargetZone::ZoneType a1)
{
  v2 = *a1;
  v3 = v1 + OBJC_IVAR___NLWorkoutZoneTracker_zoneTrackerDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    v9 = v2;
    v6 = (*(v4 + 8))(&v9, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  else if (v2)
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = 0.0;
    if ((v7 & 1) == 0)
    {
      return *(v1 + OBJC_IVAR___NLWorkoutZoneTracker_alertsHoldoffTime);
    }
  }

  else
  {

    return 0.0;
  }

  return v6;
}

_BYTE *ZoneTracker.trackTargetZone(for:value:)(_BYTE *a1, Swift::Double a2)
{
  v3 = v2;
  v6 = type metadata accessor for Date();
  v8 = MEMORY[0x28223BE20](v6, v7);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = v90 - v11;
  MEMORY[0x28223BE20](v10, v13);
  v17 = v90 - v16;
  v18 = 0;
  if (a2 <= 0.0)
  {
    return v18;
  }

  v91 = v15;
  v93 = v14;
  LODWORD(v19) = *a1;
  LOBYTE(v101) = *a1;
  ZoneTracker.targetZoneTemplate(for:)(&v101);
  if (!v20)
  {
    goto LABEL_65;
  }

  v21 = v20;
  LOBYTE(v101) = *(v20 + 16);

  v22 = ZoneTracker.lastAlert(for:)(&v101);
  v94 = v6;
  if (v22 && (v23 = OBJC_IVAR___NLWorkoutZoneTracker_enforceDelayBetweenAlerts, swift_beginAccess(), *(v3 + v23) == 1))
  {
    v24 = v22;
    Date.init()();
    v25 = [v24 eventDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    Date.timeIntervalSince(_:)();
    v27 = v26;

    v28 = *(v93 + 8);
    v29 = v94;
    v28(v12, v94);
    v28(v17, v29);
    v30 = OBJC_IVAR___NLWorkoutZoneTracker_minTimeBetweenAlerts;
    swift_beginAccess();
    v31 = *(v3 + v30) < v27;
  }

  else
  {
    v31 = 1;
  }

  v96 = v31;
  LOBYTE(v101) = v19;
  v95 = ZoneTracker.passedMinimumDistance(for:)(&v101);
  v32 = OBJC_IVAR___NLWorkoutZoneTracker_currentDuration;
  swift_beginAccess();
  v33 = *(v3 + v32);
  v100[0] = v19;
  v34 = ZoneTracker.minimumHoldoffTime(for:)(v100);
  if (v22)
  {
    swift_beginAccess();
    v35 = *(v3 + OBJC_IVAR___NLWorkoutZoneTracker_distanceUnit);
    v36 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_alertValue;
    swift_beginAccess();
    v37 = *&v22[v36];

    v38 = v35;
    TargetZone.state(forDistanceUnit:currentValue:)(v38, v37);

    v39 = v100[0];
  }

  else
  {
    v39 = 0;
  }

  v40 = OBJC_IVAR___NLWorkoutZoneTracker_distanceUnit;
  v41 = *(v3 + OBJC_IVAR___NLWorkoutZoneTracker_distanceUnit);
  TargetZone.state(forDistanceUnit:currentValue:)(v41, a2);

  v42 = v100[0];
  swift_beginAccess();
  v43 = *(v21 + 24);
  swift_beginAccess();
  v45 = (v43 != *(v21 + 32) || v42 != 2) && v42 != 0;
  v46 = v39 != v42 && v45;
  if (one-time initialization token for zones != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  v90[1] = __swift_project_value_buffer(v47, static WOLog.zones);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v90[0] = v40;
    v92 = v22;
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v99[0] = v51;
    v52 = 0x5F676E696C6C6F72;
    v53 = 0xED00007265776F70;
    *v50 = 134219266;
    *(v50 + 4) = a2;
    *(v50 + 12) = 2080;
    v54 = 1701736302;
    if (v19 == 6)
    {
      v54 = 0x5F65676172657661;
    }

    else
    {
      v53 = 0xE400000000000000;
    }

    v55 = 0xEF65636E65646163;
    v56 = 0x5F65676172657661;
    if (v19 != 4)
    {
      v56 = 0xD000000000000013;
      v55 = 0x800000020B4544E0;
    }

    if (v19 <= 5)
    {
      v54 = v56;
      v53 = v55;
    }

    v57 = 0xD000000000000012;
    v58 = 0x800000020B454490;
    if (v19 != 2)
    {
      v57 = 0xD000000000000015;
      v58 = 0x800000020B4544B0;
    }

    if (v19)
    {
      v52 = 0x5F65676172657661;
    }

    if (v19 <= 1)
    {
      v59 = 0xEC00000065636170;
    }

    else
    {
      v52 = v57;
      v59 = v58;
    }

    if (v19 <= 3)
    {
      v60 = v52;
    }

    else
    {
      v60 = v54;
    }

    if (v19 <= 3)
    {
      v61 = v59;
    }

    else
    {
      v61 = v53;
    }

    v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, v99);

    *(v50 + 14) = v62;
    *(v50 + 22) = 1024;
    *(v50 + 24) = v46;
    *(v50 + 28) = 1024;
    LODWORD(v62) = v96;
    *(v50 + 30) = v96;
    *(v50 + 34) = 1024;
    *(v50 + 36) = v95;
    *(v50 + 40) = 1024;
    *(v50 + 42) = v34 <= v33;
    _os_log_impl(&dword_20AEA4000, v48, v49, "[targetzones] value:%f type:%s didChangeZoneState:%{BOOL}d\nenoughTimePassedBetweenAlerts:%{BOOL}d passedMinimumDistance:%{BOOL}d\npassedMinimumHoldoffTime:%{BOOL}d", v50, 0x2Eu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    MEMORY[0x20F2E9420](v51, -1, -1);
    MEMORY[0x20F2E9420](v50, -1, -1);

    v22 = v92;
    v40 = v90[0];
    if (!v62)
    {
      goto LABEL_50;
    }
  }

  else
  {

    if (!v96)
    {
LABEL_50:

      v18 = 0;
LABEL_51:

      return v18;
    }
  }

  if (!v46 || !v95 || v34 > v33)
  {
    goto LABEL_50;
  }

  v92 = v22;
  v63 = *(v3 + v40);
  TargetZone.state(forDistanceUnit:currentValue:)(v63, a2);

  v64 = qword_20B43D6B0[SLOBYTE(v99[0])];

  Date.init()();
  v65 = OBJC_IVAR___NLWorkoutZoneTracker_activityType;
  swift_beginAccess();
  v66 = *(v3 + v65);
  v67 = type metadata accessor for WorkoutAlertZone();
  v19 = objc_allocWithZone(v67);
  *(v19 + OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_targetZone) = v21;
  *(v19 + OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_alertValue) = a2;
  *(v19 + OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_activityType) = v66;
  v68 = v66;

  v69 = v68;
  *(v19 + OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_distanceType) = FIUIDistanceTypeForActivityType();
  v98.receiver = v19;
  v98.super_class = v67;
  v70 = objc_msgSendSuper2(&v98, sel_init);
  isa = Date._bridgeToObjectiveC()().super.isa;
  [v70 setEventDate_];

  [v70 setType_];
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v72, v73))
  {
    v19 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    *v19 = 138412290;
    *(v19 + 1) = v70;
    *v74 = v70;
    v75 = v70;
    _os_log_impl(&dword_20AEA4000, v72, v73, "Created zone alert: %@", v19, 0xCu);
    _sSo8NSObjectCSgWOhTm_8(v74, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v74, -1, -1);
    MEMORY[0x20F2E9420](v19, -1, -1);
  }

  else
  {
  }

  (*(v93 + 8))(v91, v94);
  v18 = v70;
  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.default.getter();

  v79 = os_log_type_enabled(v77, v78);
  v22 = v92;
  if (v79)
  {
    v19 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    *v19 = 138412290;
    *(v19 + 1) = v18;
    *v80 = v18;
    v81 = v18;
    _os_log_impl(&dword_20AEA4000, v77, v78, "[targetzones] Zone event reached. Registering event: %@", v19, 0xCu);
    _sSo8NSObjectCSgWOhTm_8(v80, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v80, -1, -1);
    MEMORY[0x20F2E9420](v19, -1, -1);
  }

  v82 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  v83 = OBJC_IVAR___NLWorkoutZoneTracker_lastPresentedAlertsByType;
  swift_beginAccess();
  v84 = *(v3 + v83);
  if ((v84 & 0xC000000000000001) == 0)
  {
    v88 = v18;
    goto LABEL_63;
  }

  if (v84 < 0)
  {
    v85 = *(v3 + v83);
  }

  else
  {
    v85 = v84 & 0xFFFFFFFFFFFFFF8;
  }

  v86 = v18;
  v87 = __CocoaSet.count.getter();
  if (!__OFADD__(v87, 1))
  {
    *(v3 + v83) = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo8NSNumberC_11WorkoutCore10TargetZoneCTt1g5Tm(v85, v87 + 1, &_ss18_DictionaryStorageCySo8NSNumberC11WorkoutCore0D9AlertZoneCGMd, &_ss18_DictionaryStorageCySo8NSNumberC11WorkoutCore0D9AlertZoneCGMR, type metadata accessor for WorkoutAlertZone, specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:));
LABEL_63:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v97 = *(v3 + v83);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, v82, isUniquelyReferenced_nonNull_native);
    *(v3 + v83) = v97;

    swift_endAccess();
    ZoneTracker.persistRecoveryData()();

    goto LABEL_51;
  }

  __break(1u);
LABEL_65:
  v101 = 0;
  v102 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);
  MEMORY[0x20F2E6D80](0xD000000000000021, 0x800000020B461610);
  v100[0] = v19;
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v101, v102, "WorkoutCore/ZoneTracker.swift", 29, 2, 185, 0);
  __break(1u);
  return result;
}

Swift::Void __swiftcall ZoneTracker.recoverState(from:)(HKLiveWorkoutBuilder from)
{
  v1 = [(objc_class *)from.super.super.isa metadata];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v4.value._rawValue = v2;
  ZoneTracker.recover(from:)(v4);
}

Swift::Void __swiftcall ZoneTracker.recover(from:)(Swift::OpaquePointer_optional from)
{
  v2 = v1;
  rawValue = from.value._rawValue;
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo8NSNumberC_11WorkoutCore0D9AlertZoneCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v5 = OBJC_IVAR___NLWorkoutZoneTracker_lastPresentedAlertsByType;
  swift_beginAccess();
  *(v2 + v5) = v4;

  if (rawValue)
  {
    if (rawValue[2])
    {
      v6 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002ELL, 0x800000020B461640);
      if (v7)
      {
        outlined init with copy of Any(rawValue[7] + 32 * v6, v51);
        if (swift_dynamicCast())
        {
          type metadata accessor for JSONDecoder();
          swift_allocObject();
          JSONDecoder.init()();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A9AlertZoneCGMd, _sSay11WorkoutCore0A9AlertZoneCGMR);
          lazy protocol witness table accessor for type [WorkoutAlertZone] and conformance <A> [A](&lazy protocol witness table cache variable for type [WorkoutAlertZone] and conformance <A> [A], &lazy protocol witness table cache variable for type WorkoutAlertZone and conformance WorkoutAlertZone, &protocol conformance descriptor for WorkoutAlertZone, MEMORY[0x277D83978]);
          v44 = v49;
          dispatch thunk of JSONDecoder.decode<A>(_:from:)();

          v17 = v51[0];
          if (v51[0] >> 62)
          {
            v18 = __CocoaSet.count.getter();
            if (v18)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v18 = *((v51[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v18)
            {
LABEL_10:
              v43 = v50;
              if (v18 < 1)
              {
                __break(1u);
                return;
              }

              v19 = 0;
              v47 = v17 & 0xC000000000000001;
              v45 = v18;
              v46 = v17;
              while (1)
              {
                if (v47)
                {
                  v22 = MEMORY[0x20F2E7A20](v19, v17);
                }

                else
                {
                  v22 = *(v17 + 8 * v19 + 32);
                }

                v23 = v22;
                v24 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_targetZone;
                swift_beginAccess();
                LOBYTE(v49) = *(*&v23[v24] + 16);
                ZoneTracker.targetZoneTemplate(for:)(&v49);
                if (v25)
                {
                  v26 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
                  swift_beginAccess();
                  v27 = *(v2 + v5);
                  if ((v27 & 0xC000000000000001) != 0)
                  {
                    if (v27 < 0)
                    {
                      v28 = *(v2 + v5);
                    }

                    else
                    {
                      v28 = v27 & 0xFFFFFFFFFFFFFF8;
                    }

                    v29 = v23;
                    v30 = __CocoaSet.count.getter();
                    if (__OFADD__(v30, 1))
                    {
                      __break(1u);
                      swift_once();
                      v8 = type metadata accessor for Logger();
                      __swift_project_value_buffer(v8, static WOLog.zones);
                      v9 = v17;
                      v10 = Logger.logObject.getter();
                      v11 = static os_log_type_t.error.getter();

                      if (os_log_type_enabled(v10, v11))
                      {
                        v12 = swift_slowAlloc();
                        v13 = swift_slowAlloc();
                        v51[0] = v13;
                        *v12 = 136315138;
                        swift_getErrorValue();
                        v14 = Error.localizedDescription.getter();
                        v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v51);

                        *(v12 + 4) = v16;
                        _os_log_impl(&dword_20AEA4000, v10, v11, "Error decoding recovery data: %s", v12, 0xCu);
                        __swift_destroy_boxed_opaque_existential_0(v13);
                        MEMORY[0x20F2E9420](v13, -1, -1);
                        MEMORY[0x20F2E9420](v12, -1, -1);
                        outlined consume of Data._Representation(v44, v23);
                      }

                      else
                      {
                        outlined consume of Data._Representation(v44, v23);
                      }

                      return;
                    }

                    *(v2 + v5) = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo8NSNumberC_11WorkoutCore10TargetZoneCTt1g5Tm(v28, v30 + 1, &_ss18_DictionaryStorageCySo8NSNumberC11WorkoutCore0D9AlertZoneCGMd, &_ss18_DictionaryStorageCySo8NSNumberC11WorkoutCore0D9AlertZoneCGMR, type metadata accessor for WorkoutAlertZone, specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:));
                  }

                  else
                  {
                    v20 = v23;
                  }

                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v48 = *(v2 + v5);
                  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, v26, isUniquelyReferenced_nonNull_native);
                  *(v2 + v5) = v48;

                  swift_endAccess();
                }

                else
                {
                  if (one-time initialization token for zones != -1)
                  {
                    swift_once();
                  }

                  v31 = type metadata accessor for Logger();
                  __swift_project_value_buffer(v31, static WOLog.zones);
                  v32 = v23;
                  v33 = Logger.logObject.getter();
                  v34 = static os_log_type_t.error.getter();

                  if (os_log_type_enabled(v33, v34))
                  {
                    v35 = swift_slowAlloc();
                    v36 = swift_slowAlloc();
                    v49 = v36;
                    *v35 = 136315138;
                    v37 = *(*&v23[v24] + 16);
                    if (v37 > 3)
                    {
                      if (*(*&v23[v24] + 16) > 5u)
                      {
                        if (v37 == 6)
                        {
                          v38 = 0x5F65676172657661;
                          v39 = 0xED00007265776F70;
                        }

                        else
                        {
                          v39 = 0xE400000000000000;
                          v38 = 1701736302;
                        }
                      }

                      else if (v37 == 4)
                      {
                        v38 = 0x5F65676172657661;
                        v39 = 0xEF65636E65646163;
                      }

                      else
                      {
                        v38 = 0xD000000000000013;
                        v39 = 0x800000020B4544E0;
                      }
                    }

                    else if (*(*&v23[v24] + 16) > 1u)
                    {
                      if (v37 == 2)
                      {
                        v38 = 0xD000000000000012;
                        v39 = 0x800000020B454490;
                      }

                      else
                      {
                        v38 = 0xD000000000000015;
                        v39 = 0x800000020B4544B0;
                      }
                    }

                    else
                    {
                      if (*(*&v23[v24] + 16))
                      {
                        v38 = 0x5F65676172657661;
                      }

                      else
                      {
                        v38 = 0x5F676E696C6C6F72;
                      }

                      v39 = 0xEC00000065636170;
                    }

                    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v49);

                    *(v35 + 4) = v40;
                    _os_log_impl(&dword_20AEA4000, v33, v34, "No matching targetZoneTemplate for type: %s. Skipping recovery for this zone.", v35, 0xCu);
                    __swift_destroy_boxed_opaque_existential_0(v36);
                    MEMORY[0x20F2E9420](v36, -1, -1);
                    MEMORY[0x20F2E9420](v35, -1, -1);
                  }

                  v18 = v45;
                  v17 = v46;
                }

                if (v18 == ++v19)
                {

                  v41 = v44;
                  v42 = v43;
                  goto LABEL_51;
                }
              }
            }
          }

          v41 = v49;
          v42 = v50;
LABEL_51:
          outlined consume of Data._Representation(v41, v42);
        }
      }
    }
  }
}

uint64_t ZoneTracker.persistRecoveryData()()
{
  swift_beginAccess();

  specialized _copyCollectionToContiguousArray<A>(_:)(v0);

  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A9AlertZoneCGMd, _sSay11WorkoutCore0A9AlertZoneCGMR);
  lazy protocol witness table accessor for type [WorkoutAlertZone] and conformance <A> [A](&lazy protocol witness table cache variable for type [WorkoutAlertZone] and conformance <A> [A], &lazy protocol witness table cache variable for type WorkoutAlertZone and conformance WorkoutAlertZone, &protocol conformance descriptor for WorkoutAlertZone, MEMORY[0x277D83948]);
  v1 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v3 = v2;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return outlined consume of Data._Representation(v1, v3);
  }

  v5 = Strong;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B423A90;
  *(inited + 32) = 0xD00000000000002ELL;
  *(inited + 72) = MEMORY[0x277CC9318];
  *(inited + 40) = 0x800000020B461640;
  *(inited + 48) = v1;
  *(inited + 56) = v3;
  outlined copy of Data._Representation(v1, v3);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  _sSo8NSObjectCSgWOhTm_8(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v5 insertOrUpdateMetadata:isa forceTopLevel:1];
  outlined consume of Data._Representation(v1, v3);

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall ZoneTracker.clearRecoveryData()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = MEMORY[0x20F2E6C00](0xD00000000000002ELL, 0x800000020B461640);
    [v1 removeMetadata:v2 forceTopLevel:1];

    swift_unknownObjectRelease();
  }
}

void ZoneTracker.update(with:metricType:)(void *a1, uint64_t a2)
{
  if ([a1 sessionIsActive])
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = [Strong canTriggerAlerts];
      swift_unknownObjectRelease();
      if (v6)
      {
        static ZoneTracker.targetZoneType(for:)(a2, &v14);
        v7 = v14;
        specialized static ZoneTracker.value(for:dataProvider:)(a2, a1);
        v9 = v8;
        v14 = v7;
        ZoneTracker.targetZoneTemplate(for:)(&v14);
        if (v10)
        {

          v14 = v7;
          v11 = ZoneTracker.trackTargetZone(for:value:)(&v14, v9);
          if (v11)
          {
            v12 = v11;
            v13 = swift_unknownObjectWeakLoadStrong();
            if (v13)
            {
              [v13 alertSource:v2 didTriggerAlert:v12];
              swift_unknownObjectRelease();
            }
          }
        }
      }
    }
  }
}

uint64_t static ZoneTracker.targetZoneType(for:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = result - 4;
  if (result - 4) < 0xD && ((0x1D91u >> v2))
  {
    *a2 = byte_20B43D6D0[v2];
  }

  else
  {
    _StringGuts.grow(_:)(53);
    MEMORY[0x20F2E6D80](0xD000000000000033, 0x800000020B461870);
    type metadata accessor for HKWorkoutMetricType(0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "WorkoutCore/ZoneTracker.swift", 29, 2, 338, 0);
    __break(1u);
  }

  return result;
}

void ZoneTracker.targetZoneTemplate(for:)(uint64_t a1)
{
  v3 = OBJC_IVAR___NLWorkoutZoneTracker_targetZoneTemplates;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v9 = -1 << *(v4 + 32);
    v6 = ~v9;
    v5 = v4 + 64;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v7 = v11 & *(v4 + 64);
    v8 = v4;
  }

  swift_bridgeObjectRetain_n();
  v12 = 0;
  v13 = (v6 + 64) >> 6;
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = v12;
  v15 = v7;
  v16 = v12;
  if (v7)
  {
LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v8 + 56) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (v18)
    {
      do
      {
        if (qword_20B43D6E0[*(v18 + 16)] == a1)
        {
          break;
        }

        v12 = v16;
        v7 = v17;
        if ((v8 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!__CocoaDictionary.Iterator.next()())
        {
          break;
        }

        swift_unknownObjectRelease();
        type metadata accessor for TargetZone();
        swift_dynamicCast();
        v18 = v19;
        v16 = v12;
        v17 = v7;
      }

      while (v19);
    }

LABEL_19:
    outlined consume of [NSNumber : TargetZone].Iterator._Variant(v8);
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
        goto LABEL_19;
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

void ZoneTracker.targetZoneTemplate(for:)(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR___NLWorkoutZoneTracker_targetZoneTemplates;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v9 = -1 << *(v4 + 32);
    v6 = ~v9;
    v5 = v4 + 64;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v7 = v11 & *(v4 + 64);
    v8 = v4;
  }

  swift_bridgeObjectRetain_n();
  v12 = 0;
  v13 = (v6 + 64) >> 6;
  v32 = v5;
  v31 = v13;
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = v12;
  v15 = v7;
  v16 = v12;
  if (v7)
  {
LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v8 + 56) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (!v18)
    {
LABEL_65:
      outlined consume of [NSNumber : TargetZone].Iterator._Variant(v8);

      return;
    }

    while (1)
    {
      v19 = *(v18 + 16);
      if (v19 > 3)
      {
        if (*(v18 + 16) > 5u)
        {
          if (v19 == 6)
          {
            v20 = 0x5F65676172657661;
            v21 = 0xED00007265776F70;
          }

          else
          {
            v21 = 0xE400000000000000;
            v20 = 1701736302;
          }
        }

        else if (v19 == 4)
        {
          v20 = 0x5F65676172657661;
          v21 = 0xEF65636E65646163;
        }

        else
        {
          v20 = 0xD000000000000013;
          v21 = 0x800000020B4544E0;
        }
      }

      else if (*(v18 + 16) > 1u)
      {
        if (v19 == 2)
        {
          v20 = 0xD000000000000012;
          v21 = 0x800000020B454490;
        }

        else
        {
          v20 = 0xD000000000000015;
          v21 = 0x800000020B4544B0;
        }
      }

      else
      {
        v20 = 0x5F676E696C6C6F72;
        v21 = 0xEC00000065636170;
        if (*(v18 + 16))
        {
          v20 = 0x5F65676172657661;
        }
      }

      v22 = v17;
      if (v2 > 3)
      {
        v25 = 1701736302;
        if (v2 == 6)
        {
          v25 = 0x5F65676172657661;
        }

        v26 = 0xED00007265776F70;
        if (v2 != 6)
        {
          v26 = 0xE400000000000000;
        }

        if (v2 == 4)
        {
          v27 = 0x5F65676172657661;
        }

        else
        {
          v27 = 0xD000000000000013;
        }

        v28 = 0x800000020B4544E0;
        if (v2 == 4)
        {
          v28 = 0xEF65636E65646163;
        }

        if (v2 <= 5)
        {
          v23 = v27;
        }

        else
        {
          v23 = v25;
        }

        if (v2 <= 5)
        {
          v24 = v28;
        }

        else
        {
          v24 = v26;
        }
      }

      else
      {
        if (v2 > 1)
        {
          if (v2 == 2)
          {
            v30 = 0xD000000000000012;
          }

          else
          {
            v30 = 0xD000000000000015;
          }

          if (v2 == 2)
          {
            v24 = 0x800000020B454490;
          }

          else
          {
            v24 = 0x800000020B4544B0;
          }

          if (v20 != v30)
          {
            goto LABEL_52;
          }

          goto LABEL_51;
        }

        v23 = 0x5F676E696C6C6F72;
        v24 = 0xEC00000065636170;
        if (v2)
        {
          if (v20 != 0x5F65676172657661)
          {
            goto LABEL_52;
          }

          goto LABEL_51;
        }
      }

      if (v20 != v23)
      {
        goto LABEL_52;
      }

LABEL_51:
      if (v21 == v24)
      {

        goto LABEL_65;
      }

LABEL_52:
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v29)
      {
        goto LABEL_65;
      }

      v12 = v16;
      v7 = v22;
      v5 = v32;
      v13 = v31;
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      if (__CocoaDictionary.Iterator.next()())
      {
        swift_unknownObjectRelease();
        type metadata accessor for TargetZone();
        swift_dynamicCast();
        v18 = v33;
        v16 = v12;
        v17 = v7;
        if (v33)
        {
          continue;
        }
      }

      goto LABEL_65;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_65;
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

Swift::Void __swiftcall ZoneTracker.saveTargetZonesMetadata()()
{
  v1 = OBJC_IVAR___NLWorkoutZoneTracker_targetZoneTemplates;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v7 = -1 << *(v2 + 32);
    v4 = ~v7;
    v3 = v2 + 64;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v5 = v9 & *(v2 + 64);
    v6 = v2;
  }

  swift_bridgeObjectRetain_n();
  v10 = 0;
  v11 = (v4 + 64) >> 6;
  while ((v6 & 0x8000000000000000) != 0)
  {
    if (!__CocoaDictionary.Iterator.next()() || (swift_unknownObjectRelease(), type metadata accessor for TargetZone(), swift_dynamicCast(), v14 = v10, v15 = v5, !v21))
    {
LABEL_20:
      outlined consume of [NSNumber : TargetZone].Iterator._Variant(v6);

      return;
    }

LABEL_18:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = Strong;
      v19 = TargetZone.metadata.getter();
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v19);

      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v18 insertOrUpdateMetadata:isa forceTopLevel:0];

      swift_unknownObjectRelease();
    }

    v10 = v14;
    v5 = v15;
  }

  v12 = v10;
  v13 = v5;
  v14 = v10;
  if (v5)
  {
LABEL_14:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v6 + 56) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));

    if (!v16)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_20;
    }

    v13 = *(v3 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

id ZoneTracker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ZoneTracker.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ZoneTracker();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void ZoneTracker.dataProvider(_:didUpdate:)(void *a1, unint64_t a2)
{
  if (a2 > 0x10)
  {
    return;
  }

  if (((1 << a2) & 0x1D910) == 0)
  {
    if (a2 == 1)
    {
      v7 = [objc_opt_self() meterUnit];
      if (a1)
      {
        v8 = v7;
        [objc_msgSend(a1 distanceProvider)];
        v10 = v9;
        swift_unknownObjectRelease();
        v11 = [objc_opt_self() quantityWithUnit:v8 doubleValue:v10];

        v12 = OBJC_IVAR___NLWorkoutZoneTracker_currentDistance;
        swift_beginAccess();
        v13 = *(v2 + v12);
        *(v2 + v12) = v11;

        return;
      }

LABEL_16:
      __break(1u);
      return;
    }

    if (a2 != 3)
    {
      return;
    }

    if (a1)
    {
      [a1 duration];
      v4 = v3;
      v5 = OBJC_IVAR___NLWorkoutZoneTracker_currentDuration;
      swift_beginAccess();
      *(v2 + v5) = v4;
      return;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_15;
  }

  ZoneTracker.update(with:metricType:)(a1, a2);
}

Swift::Void __swiftcall ZoneTracker.updateDistanceUnit(_:)(HKUnit_optional a1)
{
  if (a1.value.super.isa)
  {
    v3 = *(v1 + OBJC_IVAR___NLWorkoutZoneTracker_distanceUnit);
    *(v1 + OBJC_IVAR___NLWorkoutZoneTracker_distanceUnit) = a1.value.super.isa;
    v2 = a1.value.super.isa;
  }

  else
  {
    __break(1u);
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ZoneTrackerError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ZoneTrackerError(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

Swift::Int _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo8NSNumberC_11WorkoutCore10TargetZoneCTt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), void (*a6)(unint64_t, uint64_t))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = static _DictionaryStorage.convert(_:capacity:)();
    v25 = v8;
    __CocoaDictionary.makeIterator()();
    v9 = __CocoaDictionary.Iterator.next()();
    if (v9)
    {
      v10 = v9;
      _sSo12HKSampleTypeCMaTm_0(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      v11 = v10;
      do
      {
        v23 = v11;
        swift_dynamicCast();
        a5(0);
        swift_dynamicCast();
        v18 = *(v8 + 16);
        if (*(v8 + 24) <= v18)
        {
          a6(v18 + 1, 1);
        }

        v8 = v25;
        result = NSObject._rawHashValue(seed:)(*(v25 + 40));
        v13 = v25 + 64;
        v14 = -1 << *(v25 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v25 + 64 + 8 * (v15 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~*(v25 + 64 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = 0;
          v20 = (63 - v14) >> 6;
          do
          {
            if (++v16 == v20 && (v19 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v21 = v16 == v20;
            if (v16 == v20)
            {
              v16 = 0;
            }

            v19 |= v21;
            v22 = *(v13 + 8 * v16);
          }

          while (v22 == -1);
          v17 = __clz(__rbit64(~v22)) + (v16 << 6);
        }

        *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(*(v25 + 48) + 8 * v17) = v24;
        *(*(v25 + 56) + 8 * v17) = v23;
        ++*(v25 + 16);
        v11 = __CocoaDictionary.Iterator.next()();
      }

      while (v11);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v8;
}

uint64_t specialized static ZoneTracker.targetZoneDictionary(from:)(unint64_t isUniquelyReferenced_nonNull_native)
{
  v2 = v1;
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo8NSNumberC_11WorkoutCore10TargetZoneCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_71;
  }

  v5 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    return v4;
  }

LABEL_3:
  v6 = 0;
  v43 = v5;
  v44 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
  v41 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
  v42 = isUniquelyReferenced_nonNull_native;
  v40 = v2;
  while (1)
  {
    if (v44)
    {
      v7 = MEMORY[0x20F2E7A20](v6, isUniquelyReferenced_nonNull_native);
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_66;
      }
    }

    else
    {
      if (v6 >= *(v41 + 16))
      {
        goto LABEL_68;
      }

      v7 = *(isUniquelyReferenced_nonNull_native + 8 * v6 + 32);

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        v5 = __CocoaSet.count.getter();
        if (!v5)
        {
          return v4;
        }

        goto LABEL_3;
      }
    }

    v9 = [v7 primaryType];
    v10 = v7[16];
    if (v10 > 3)
    {
      if (v7[16] > 5u)
      {
        if (v10 != 6)
        {

LABEL_58:
          if (one-time initialization token for zones != -1)
          {
            swift_once();
          }

          v36 = type metadata accessor for Logger();
          __swift_project_value_buffer(v36, static WOLog.zones);
          v32 = Logger.logObject.getter();
          v37 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v32, v37))
          {
            v35 = 0;
            goto LABEL_64;
          }

          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&dword_20AEA4000, v32, v37, "Unsupported target zone type: WOTargetZoneTypeNone", v34, 2u);
          v35 = 0;
          goto LABEL_62;
        }

        v2 = 0xED00007265776F70;
      }

      else
      {
        v2 = (v10 == 4 ? 0xEF65636E65646163 : 0x800000020B4544E0);
      }
    }

    else
    {
      v11 = 0x800000020B4544B0;
      if (v10 == 2)
      {
        v11 = 0x800000020B454490;
      }

      v2 = (v7[16] <= 1u ? 0xEC00000065636170 : v11);
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
      goto LABEL_58;
    }

    v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
    v14 = v13;
    if ((v4 & 0xC000000000000001) == 0)
    {
      if (!*(v4 + 16) || (v2 = v4, v15 = specialized __RawDictionaryStorage.find<A>(_:)(v13), (v16 & 1) == 0))
      {
LABEL_33:

        goto LABEL_34;
      }

      v2 = *(*(v4 + 56) + 8 * v15);

      if (!v2)
      {
        goto LABEL_34;
      }

LABEL_52:

      if (one-time initialization token for zones != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      __swift_project_value_buffer(v31, static WOLog.zones);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v32, v33))
      {
        v35 = 1;
LABEL_64:

        lazy protocol witness table accessor for type ZoneTrackerError and conformance ZoneTrackerError();
        swift_allocError();
        *v38 = v35;
        swift_willThrow();

        return v4;
      }

      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_20AEA4000, v32, v33, "Unsupported duplicate target zone primary type in NLWorkoutZoneTracker", v34, 2u);
      v35 = 1;
LABEL_62:
      MEMORY[0x20F2E9420](v34, -1, -1);
      goto LABEL_64;
    }

    if (!__CocoaDictionary.lookup(_:)())
    {
      goto LABEL_33;
    }

    type metadata accessor for TargetZone();
    swift_dynamicCast();
    v2 = v45;

    if (v2)
    {
      goto LABEL_52;
    }

LABEL_34:
    swift_beginAccess();
    if (v7[40] != 1)
    {
      goto LABEL_4;
    }

    v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
    if ((v4 & 0xC000000000000001) != 0)
    {
      if (v4 >= 0)
      {
        v4 &= 0xFFFFFFFFFFFFFF8uLL;
      }

      v18 = __CocoaSet.count.getter();
      if (__OFADD__(v18, 1))
      {
        goto LABEL_69;
      }

      v4 = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo8NSNumberC_11WorkoutCore10TargetZoneCTt1g5Tm(v4, v18 + 1, &_ss18_DictionaryStorageCySo8NSNumberC11WorkoutCore10TargetZoneCGMd, &_ss18_DictionaryStorageCySo8NSNumberC11WorkoutCore10TargetZoneCGMR, type metadata accessor for TargetZone, specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:));
    }

    else
    {
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v4;
    v2 = v4;
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v17);
    v21 = *(v4 + 16);
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_67;
    }

    v24 = v19;
    if (*(v4 + 24) < v23)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v2 = &v45;
      specialized _NativeDictionary.copy()();
    }

LABEL_47:
    isUniquelyReferenced_nonNull_native = v42;
    v4 = v45;
    if (v24)
    {
      v27 = v45[7];
      v2 = *(v27 + 8 * v20);
      *(v27 + 8 * v20) = v7;

LABEL_4:

      goto LABEL_5;
    }

    v45[(v20 >> 6) + 8] |= 1 << v20;
    *(*(v4 + 48) + 8 * v20) = v17;
    *(*(v4 + 56) + 8 * v20) = v7;

    v28 = *(v4 + 16);
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_70;
    }

    *(v4 + 16) = v30;
LABEL_5:
    ++v6;
    if (v8 == v43)
    {
      return v4;
    }
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, isUniquelyReferenced_nonNull_native);
  v2 = v45;
  v25 = specialized __RawDictionaryStorage.find<A>(_:)(v17);
  if ((v24 & 1) == (v26 & 1))
  {
    v20 = v25;
    goto LABEL_47;
  }

  _sSo12HKSampleTypeCMaTm_0(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

double keypath_get_10Tm@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = *(v4 + v5);
  *a3 = result;
  return result;
}

void keypath_set_11Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

uint64_t specialized static ZoneTracker.value(for:dataProvider:)(uint64_t result, id a2)
{
  if (result <= 11)
  {
    switch(result)
    {
      case 4:
        result = [a2 paceProvider];
        if (!result)
        {
          return result;
        }

        [result currentPaceInMetersPerSecond];
        return swift_unknownObjectRelease();
      case 8:
        result = [a2 paceProvider];
        if (!result)
        {
          return result;
        }

        [result averagePaceInMetersPerSecond];
        return swift_unknownObjectRelease();
      case 11:
        result = [a2 powerProvider];
        if (result)
        {
          [result instantaneousPower];
          return swift_unknownObjectRelease();
        }

        break;
    }
  }

  else
  {
    if (result <= 14)
    {
      if (result == 12)
      {
        result = [a2 powerProvider];
        if (!result)
        {
          return result;
        }

        [result averagePower];
      }

      else
      {
        if (result != 14)
        {
          return result;
        }

        [objc_msgSend(a2 rollingPaceProvider)];
      }

      return swift_unknownObjectRelease();
    }

    if (result == 15)
    {
      result = [a2 cadenceProvider];
      if (!result)
      {
        return result;
      }

      [result currentCadence];
      return swift_unknownObjectRelease();
    }

    if (result == 16)
    {
      result = [a2 cadenceProvider];
      if (result)
      {
        [result averageCadence];
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [WorkoutAlertZone] and conformance <A> [A](unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore0A9AlertZoneCGMd, _sSay11WorkoutCore0A9AlertZoneCGMR);
    lazy protocol witness table accessor for type WorkoutAlertZone and conformance WorkoutAlertZone(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type WorkoutAlertZone and conformance WorkoutAlertZone(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WorkoutAlertZone();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sSo12HKSampleTypeCMaTm_0(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t lazy protocol witness table accessor for type ZoneTrackerError and conformance ZoneTrackerError()
{
  result = lazy protocol witness table cache variable for type ZoneTrackerError and conformance ZoneTrackerError;
  if (!lazy protocol witness table cache variable for type ZoneTrackerError and conformance ZoneTrackerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ZoneTrackerError and conformance ZoneTrackerError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ZoneTrackerError and conformance ZoneTrackerError;
  if (!lazy protocol witness table cache variable for type ZoneTrackerError and conformance ZoneTrackerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ZoneTrackerError and conformance ZoneTrackerError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ZoneTrackerError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ZoneTrackerError(uint64_t result, unsigned int a2, unsigned int a3)
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

id PacerDistanceGoalProgressAccumulator.__allocating_init(builder:workoutConfiguration:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = specialized PacerDistanceGoalProgressAccumulator.init(builder:workoutConfiguration:)(a1, a2);

  return v6;
}

uint64_t (*PacerDistanceGoalProgressAccumulator.workoutAlertDelegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR___NLPacerDistanceGoalProgressAccumulator_workoutAlertDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return PacerDistanceGoalProgressAccumulator.workoutAlertDelegate.modify;
}

uint64_t PacerDistanceGoalProgressAccumulator.goalCompletionTimeNumber.getter()
{
  if (*(v0 + OBJC_IVAR___NLPacerDistanceGoalProgressAccumulator_goalCompletionTime + 8))
  {
    return 0;
  }

  else
  {
    return MEMORY[0x20F2E7210](*(v0 + OBJC_IVAR___NLPacerDistanceGoalProgressAccumulator_goalCompletionTime));
  }
}

id @objc PacerDistanceGoalProgressAccumulator.workoutAlertDelegate.getter(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t PacerDistanceGoalProgressAccumulator.workoutAlertDelegate.setter(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*PacerDistanceGoalProgressAccumulator.eventPersistenceDelegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR___NLPacerDistanceGoalProgressAccumulator_eventPersistenceDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return PacerDistanceGoalProgressAccumulator.eventPersistenceDelegate.modify;
}

void PacerDistanceGoalProgressAccumulator.workoutAlertDelegate.modify(void **a1, char a2)
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

id PacerDistanceGoalProgressAccumulator.init(builder:workoutConfiguration:)(void *a1, void *a2)
{
  v4 = specialized PacerDistanceGoalProgressAccumulator.init(builder:workoutConfiguration:)(a1, a2);

  return v4;
}

Swift::Void __swiftcall PacerDistanceGoalProgressAccumulator.updateProgress(statistics:elapsedTime:)(HKStatistics statistics, Swift::Double elapsedTime)
{
  v5 = type metadata accessor for DateInterval();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v2 isAccumulating])
  {
    return;
  }

  v10 = *&v2[OBJC_IVAR___NLPacerDistanceGoalProgressAccumulator_activityType];
  [v10 effectiveTypeIdentifier];
  v11 = _HKWorkoutDistanceTypeForActivityType();
  if (!v11)
  {
    return;
  }

  v12 = v2;
  v40 = v11;
  _sSo8NSObjectCMaTm_0(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  v13 = [(objc_class *)statistics.super.isa quantityType];
  v14 = static NSObject.== infix(_:_:)();

  if ((v14 & 1) != 0 && (v15 = [(objc_class *)statistics.super.isa sumQuantity]) != 0)
  {
    v39 = v15;
    v16 = objc_opt_self();
    v17 = [v16 meterUnit];
    [v39 doubleValueForUnit_];
    v19 = v18;

    v20 = *&v12[OBJC_IVAR___NLPacerDistanceGoalProgressAccumulator_goalDistanceInMeters];
    if (v20 <= v19 && (v12[OBJC_IVAR___NLPacerDistanceGoalProgressAccumulator_goalCompletionTime + 8] & 1) != 0)
    {
      v38 = &v12[OBJC_IVAR___NLPacerDistanceGoalProgressAccumulator_goalCompletionTime];
      v21 = [(objc_class *)statistics.super.isa mostRecentQuantity];
      if (v21)
      {
        v22 = v21;
        v23 = [v16 meterUnit];
        [v22 doubleValueForUnit_];
        v25 = v24;

        v26 = [(objc_class *)statistics.super.isa mostRecentQuantityDateInterval];
        if (v26)
        {
          v27 = v26;
          static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

          DateInterval.duration.getter();
          v29 = (v19 - v20) / v25 * v28;
          v30 = elapsedTime - v29;
          v31 = v38;
          *v38 = v30;
          *(v31 + 8) = 0;
          v32 = type metadata accessor for WorkoutAlertPacer();
          v33 = objc_allocWithZone(v32);
          *&v33[OBJC_IVAR____TtC11WorkoutCore17WorkoutAlertPacer_activityType] = v10;
          *&v33[OBJC_IVAR____TtC11WorkoutCore17WorkoutAlertPacer_finishTime] = v30;
          *&v33[OBJC_IVAR____TtC11WorkoutCore17WorkoutAlertPacer_distanceGoalInMeters] = v20;
          v41.receiver = v33;
          v41.super_class = v32;
          v34 = v10;
          v35 = objc_msgSendSuper2(&v41, sel_init);
          [v35 setType_];
          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            [Strong alertSource:v12 didTriggerAlert:v35];
            swift_unknownObjectRelease();
          }

          PacerDistanceGoalProgressAccumulator.addDistanceGoalCompletionEvent(surplusSampleTime:sampleDateInterval:)(v29);

          (*(v6 + 8))(v9, v5);
          return;
        }
      }
    }

    v37 = v39;
  }

  else
  {
    v37 = v40;
  }
}

void PacerDistanceGoalProgressAccumulator.addDistanceGoalCompletionEvent(surplusSampleTime:sampleDateInterval:)(double a1)
{
  v2 = v1;
  v3 = type metadata accessor for DateInterval();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v73 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for Date();
  v7 = *(v74 - 8);
  v9 = MEMORY[0x28223BE20](v74, v8);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v66 - v14;
  v17 = MEMORY[0x28223BE20](v13, v16);
  v72 = &v66 - v18;
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v66 - v20;
  v22 = [v1 builder];
  v23 = [v22 startDate];

  if (v23)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    if (v1[OBJC_IVAR___NLPacerDistanceGoalProgressAccumulator_goalCompletionTime + 8])
    {
      (*(v7 + 8))(v21, v74);
    }

    else
    {
      v70 = v4;
      v71 = v3;
      v66 = &v1[OBJC_IVAR___NLPacerDistanceGoalProgressAccumulator_goalCompletionTime];
      v24 = *&v1[OBJC_IVAR___NLPacerDistanceGoalProgressAccumulator_goalCompletionTime];
      DateInterval.end.getter();
      v25 = v72;
      Date.addingTimeInterval(_:)();
      v26 = *(v7 + 8);
      v27 = v74;
      v68 = v7 + 8;
      v67 = v26;
      v26(v15, v74);
      v28 = *(v7 + 16);
      v69 = v21;
      v28(v15, v21, v27);
      v28(v11, v25, v27);
      DateInterval.init(start:end:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_20B423A20;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 72) = MEMORY[0x277D83B88];
      *(inited + 40) = v30;
      *(inited + 48) = 2;
      *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 88) = v31;
      v32 = objc_opt_self();
      v33 = [v32 meterUnit];
      v34 = *&v2[OBJC_IVAR___NLPacerDistanceGoalProgressAccumulator_goalDistanceInMeters];
      v35 = objc_opt_self();
      v36 = [v35 quantityWithUnit:v33 doubleValue:v34];

      v37 = _sSo8NSObjectCMaTm_0(0, &lazy cache variable for type metadata for HKQuantity, 0x277CCD7E8);
      *(inited + 120) = v37;
      *(inited + 96) = v36;
      *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 136) = v38;
      v39 = [v32 secondUnit];
      v40 = [v35 quantityWithUnit:v39 doubleValue:v24];

      *(inited + 168) = v37;
      *(inited + 144) = v40;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
      swift_arrayDestroy();
      isa = DateInterval._bridgeToObjectiveC()().super.isa;
      v42 = Dictionary._bridgeToObjectiveC()().super.isa;

      v43 = [objc_opt_self() workoutEventWithType:7 dateInterval:isa metadata:v42];

      if (one-time initialization token for app != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      __swift_project_value_buffer(v44, static WOLog.app);
      v45 = v2;
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v75[0] = v49;
        *v48 = 134218242;
        *(v48 + 4) = v34;
        *(v48 + 12) = 2080;
        v50 = v66[8];
        v75[1] = *v66;
        v76 = v50;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
        v51 = Optional.description.getter();
        v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, v75);

        *(v48 + 14) = v53;
        _os_log_impl(&dword_20AEA4000, v46, v47, "[Pacer] - completed goalDistance=%f in goalCompletionTime activeDuration=%s", v48, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v49);
        MEMORY[0x20F2E9420](v49, -1, -1);
        MEMORY[0x20F2E9420](v48, -1, -1);
      }

      v54 = v71;
      v55 = v70;
      v56 = v69;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v58 = Strong;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v59 = swift_allocObject();
        *(v59 + 16) = xmmword_20B425990;
        *(v59 + 32) = v43;
        _sSo8NSObjectCMaTm_0(0, &lazy cache variable for type metadata for HKWorkoutEvent, 0x277CCDC68);
        v60 = v43;
        v61 = Array._bridgeToObjectiveC()().super.isa;

        [v58 addWorkoutEvents_];

        swift_unknownObjectRelease();
      }

      v62 = [v45 updateHandler];
      if (v62)
      {
        v63 = v62;
        (*(v62 + 2))();
        _Block_release(v63);
      }

      (*(v55 + 8))(v73, v54);
      v64 = v74;
      v65 = v67;
      v67(v72, v74);
      v65(v56, v64);
    }
  }
}

Swift::Void __swiftcall PacerDistanceGoalProgressAccumulator.recoverFrom(_:)(Swift::OpaquePointer a1)
{
  v25[0] = MEMORY[0x277D84F90];
  if (a1._rawValue >> 62)
  {
LABEL_17:
    v2 = __CocoaSet.count.getter();
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1._rawValue & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x20F2E7A20](v3, a1._rawValue);
        }

        else
        {
          if (v3 >= *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v4 = *(a1._rawValue + v3 + 4);
        }

        v5 = v4;
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        if ([v4 fiui_isDistanceGoalCompleteEvent])
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v3;
      }

      while (v6 != v2);
      v7 = v25[0];
      if ((v25[0] & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_34;
    }
  }

  else
  {
    v2 = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v7 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_34;
  }

LABEL_19:
  if ((v7 & 0x4000000000000000) != 0)
  {
LABEL_34:
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_35;
    }

    goto LABEL_21;
  }

  if (!*(v7 + 16))
  {
LABEL_35:

    return;
  }

LABEL_21:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x20F2E7A20](0, v7);
  }

  else
  {
    if (!*(v7 + 16))
    {
      __break(1u);
      return;
    }

    v8 = *(v7 + 32);
  }

  v9 = v8;

  v10 = [v9 metadata];

  if (v10)
  {
    v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v11 + 16))
    {
      v14 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v13);
      v16 = v15;

      if (v16)
      {
        outlined init with copy of Any(*(v11 + 56) + 32 * v14, v25);

        _sSo8NSObjectCMaTm_0(0, &lazy cache variable for type metadata for HKQuantity, 0x277CCD7E8);
        if (swift_dynamicCast())
        {
          v17 = [objc_opt_self() secondUnit];
          [v24 doubleValueForUnit_];
          v19 = v18;

          v20 = &v23[OBJC_IVAR___NLPacerDistanceGoalProgressAccumulator_goalCompletionTime];
          *v20 = v19;
          v20[8] = 0;
          v21 = [v23 updateHandler];
          if (v21)
          {
            v22 = v21;
            (*(v21 + 2))();
            _Block_release(v22);
          }
        }

        return;
      }
    }

    else
    {
    }
  }
}

id PacerDistanceGoalProgressAccumulator.__allocating_init(builder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBuilder_];

  return v3;
}

id PacerDistanceGoalProgressAccumulator.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PacerDistanceGoalProgressAccumulator();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id specialized PacerDistanceGoalProgressAccumulator.init(builder:workoutConfiguration:)(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR___NLPacerDistanceGoalProgressAccumulator_goalCompletionTime];
  *v5 = 0;
  v5[8] = 1;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v7 = *(a2 + v6);
  *&v2[OBJC_IVAR___NLPacerDistanceGoalProgressAccumulator_activityType] = v7;
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v7;
  static Published.subscript.getter(&v14);

  v9 = v14;
  [v14 doubleValue];
  v11 = v10;

  *&v2[OBJC_IVAR___NLPacerDistanceGoalProgressAccumulator_goalDistanceInMeters] = v11;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for PacerDistanceGoalProgressAccumulator();
  return objc_msgSendSuper2(&v13, sel_initWithBuilder_, a1);
}

uint64_t keypath_getTm_3@<X0>(uint64_t *a3@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a3 = result;
  return result;
}

uint64_t _sSo8NSObjectCMaTm_0(uint64_t a1, unint64_t *a2, void *a3)
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

void *CompoundActivityTypeProvider.__allocating_init(occurrenceStore:domainAccessor:deprecatedSmartGoalStore:)(void *a1, uint64_t a2, void *a3)
{
  swift_allocObject();
  v6 = specialized CompoundActivityTypeProvider.init(occurrenceStore:domainAccessor:deprecatedSmartGoalStore:)(a1, a2, a3);

  swift_unknownObjectRelease();
  return v6;
}

void *CompoundActivityTypeProvider.init(occurrenceStore:domainAccessor:deprecatedSmartGoalStore:)(void *a1, uint64_t a2, void *a3)
{
  v5 = specialized CompoundActivityTypeProvider.init(occurrenceStore:domainAccessor:deprecatedSmartGoalStore:)(a1, a2, a3);

  swift_unknownObjectRelease();
  return v5;
}

void CompoundActivityTypeProvider.migrateActivityTypesFromDeprecatedStore()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v103 = &v99 - v9;
  MEMORY[0x28223BE20](v8, v10);
  *&v117 = &v99 - v11;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v114 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v115 = &v99 - v18;
  v19 = *(v0 + 4);
  if (v19)
  {
    v100 = v6;
    v20 = one-time initialization token for activityPicker;
    v106 = v19;
    if (v20 != -1)
    {
      goto LABEL_55;
    }

    while (1)
    {
      v21 = type metadata accessor for Logger();
      v22 = __swift_project_value_buffer(v21, static WOLog.activityPicker);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_20AEA4000, v23, v24, "Migrating activity types from NLSmartGoalStore.", v25, 2u);
        MEMORY[0x20F2E9420](v25, -1, -1);
      }

      isa = [objc_opt_self() defaultActivityTypesWithIsWheelchairUser:0 isSwimmingSupported:1 activityMoveMode:1];
      if (!isa)
      {
        _sSo8NSObjectCMaTm_1(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
        static Array._unconditionallyBridgeFromObjectiveC(_:)();
        isa = Array._bridgeToObjectiveC()().super.isa;
      }

      _sSo8NSObjectCMaTm_1(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
      v27 = MEMORY[0x277D84F90];
      v28 = Array._bridgeToObjectiveC()().super.isa;
      v29 = [v106 workoutActivityTypesInFrequencyOrderDescendingWithDefaultActivities:isa unsupportedActivities:v28];

      v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();
      v33 = os_log_type_enabled(v31, v32);
      v34 = v30 >> 62;
      v108 = v30;
      if (v33)
      {
        v35 = swift_slowAlloc();
        *v35 = 134217984;
        v36 = v34 ? __CocoaSet.count.getter() : *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
        *(v35 + 4) = v36;

        _os_log_impl(&dword_20AEA4000, v31, v32, "Migrated %ld activity types.", v35, 0xCu);
        MEMORY[0x20F2E9420](v35, -1, -1);
      }

      else
      {
      }

      Date.init()();
      v41 = v34 ? __CocoaSet.count.getter() : *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v105 = v12;
      v102 = v1;
      v104 = v13;
      v101 = v22;
      if (!v41)
      {
        break;
      }

      v118[0] = v27;
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v41 < 0)
      {
        __break(1u);
        goto LABEL_58;
      }

      v42 = v108;
      v107 = v108 & 0xFFFFFFFFFFFFFF8;
      if (v34)
      {
        v43 = __CocoaSet.count.getter();
      }

      else
      {
        v43 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v105;
      v45 = 0;
      v46 = 0;
      v112 = v42 & 0xC000000000000001;
      v111 = (v13 + 56);
      v110 = (v13 + 48);
      v116 = (v13 + 32);
      v113 = -(v43 & ~(v43 >> 63));
      v109 = -v41;
      v13 = v103;
      while (v113 != v45)
      {
        if (v112)
        {
          v48 = MEMORY[0x20F2E7A20](v46, v42);
        }

        else
        {
          if (v46 >= *(v107 + 16))
          {
            goto LABEL_54;
          }

          v48 = *(v42 + 8 * v46 + 32);
        }

        v49 = v48;
        v50 = v117;
        Date.addingTimeInterval(_:)();
        (*v111)(v50, 0, 1, v12);
        v51 = type metadata accessor for ActivityTypeListItem(0);
        v52 = objc_allocWithZone(v51);
        *&v52[OBJC_IVAR____TtC11WorkoutCore20ActivityTypeListItem_activityType] = v49;
        outlined init with copy of Date?(v50, v13);
        v53 = *v110;
        if ((*v110)(v13, 1, v12) == 1)
        {
          v54 = v49;
          v55 = v114;
          static Date.now.getter();
          v56 = v53(v13, 1, v12);
          v1 = v55;
          v42 = v108;
          if (v56 != 1)
          {
            _s10Foundation4DateVSgWOhTm_9(v13, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          }
        }

        else
        {
          v1 = v114;
          (*v116)(v114, v13, v12);
          v47 = v49;
        }

        ++v46;
        (*v116)(&v52[OBJC_IVAR____TtC11WorkoutCore20ActivityTypeListItem_orderDate], v1, v12);
        v119.receiver = v52;
        v119.super_class = v51;
        objc_msgSendSuper2(&v119, sel_init);

        _s10Foundation4DateVSgWOhTm_9(v117, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if (v109 == --v45)
        {

          v44 = v118[0];
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      swift_once();
    }

    v44 = MEMORY[0x277D84F90];
LABEL_38:
    v120 = v44;
    v57 = MEMORY[0x20F2E5300](1);
    v59 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    v117 = xmmword_20B423A90;
    *(inited + 16) = xmmword_20B423A90;
    *(inited + 32) = static HealthDataConstants.mediaTypeProperty.getter();
    v61 = MEMORY[0x277D837D0];
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v62;
    *(inited + 48) = v57;
    *(inited + 56) = v59;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    _s10Foundation4DateVSgWOhTm_9(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
    v63 = objc_allocWithZone(MEMORY[0x277D0A810]);
    v64 = Dictionary._bridgeToObjectiveC()().super.isa;

    v65 = [v63 initWithActivityTypeIdentifier:52 isIndoor:0 metadata:v64];

    if ([v106 isHiddenActivityType_])
    {
    }

    else
    {
      v66 = v65;
      v67 = v100;
      Date.init()();
      (*(v104 + 56))(v67, 0, 1, v105);
      v68 = objc_allocWithZone(type metadata accessor for ActivityTypeListItem(0));
      specialized ActivityTypeListItem.init(activityType:orderDate:)(v66, v67);

      MEMORY[0x20F2E6F30]();
      if (*((v120 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v120 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v69 = MEMORY[0x20F2E5300](0);
    v71 = v70;
    v72 = swift_initStackObject();
    *(v72 + 16) = v117;
    *(v72 + 32) = static HealthDataConstants.mediaTypeProperty.getter();
    *(v72 + 72) = v61;
    *(v72 + 40) = v73;
    *(v72 + 48) = v69;
    *(v72 + 56) = v71;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v72);
    swift_setDeallocating();
    _s10Foundation4DateVSgWOhTm_9(v72 + 32, &_sSS_yptMd, &_sSS_yptMR);
    v74 = objc_allocWithZone(MEMORY[0x277D0A810]);
    v75 = Dictionary._bridgeToObjectiveC()().super.isa;

    v76 = [v74 initWithActivityTypeIdentifier:37 isIndoor:0 metadata:v75];

    if ([v106 isHiddenActivityType_])
    {

      v77 = v102;
      v78 = v104;
    }

    else
    {
      v79 = v76;
      v80 = v100;
      Date.init()();
      v78 = v104;
      (*(v104 + 56))(v80, 0, 1, v105);
      v81 = objc_allocWithZone(type metadata accessor for ActivityTypeListItem(0));
      specialized ActivityTypeListItem.init(activityType:orderDate:)(v79, v80);

      MEMORY[0x20F2E6F30]();
      v77 = v102;
      if (*((v120 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v120 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v82 = v77[2];
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();

    v84 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11WorkoutCore20ActivityTypeListItemC_SayAFGTt0g5Tf4g_n(v83);

    v85 = specialized _copyCollectionToContiguousArray<A>(_:)(v84);

    v118[0] = v85;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore20ActivityTypeListItemCGMd, &_sSay11WorkoutCore20ActivityTypeListItemCGMR);
    lazy protocol witness table accessor for type [ActivityTypeListItem] and conformance <A> [A]();
    v86 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v88 = v87;

    v89 = v82[2];
    v90 = MEMORY[0x20F2E6C00](v82[3], v82[4]);
    v91 = Data._bridgeToObjectiveC()().super.isa;
    [v89 writeDataPerGizmoDomainAndKey:v90 data:v91];

    outlined consume of Data._Representation(v86, v88);

    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_20AEA4000, v92, v93, "Successfully wrote migrated activity types to ActivityPickerListStore.", v94, 2u);
      MEMORY[0x20F2E9420](v94, -1, -1);
    }

    v95 = v105;
    swift_beginAccess();
    v96 = v77[7];
    if (v96)
    {
      v97 = v77[8];

      v96(v98);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v96, v97);
    }

    (*(v78 + 8))(v115, v95);
  }

  else
  {
    if (one-time initialization token for activityPicker != -1)
    {
LABEL_58:
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static WOLog.activityPicker);
    *&v117 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v117, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_20AEA4000, v117, v38, "deprecatedSmartGoalStore is nil. Should not happen in normal usage.", v39, 2u);
      MEMORY[0x20F2E9420](v39, -1, -1);
    }

    v40 = v117;
  }
}

void CompoundActivityTypeProvider.performMigrationIfNeeded()()
{
  v1 = ActivityPickerListStore.fetchActivityTypesData()();
  v3 = v2 >> 60;
  if (v2 >> 60 != 15)
  {
    outlined consume of Data?(v1, v2);
  }

  if (one-time initialization token for activityPicker != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.activityPicker);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v3 > 0xE;
    _os_log_impl(&dword_20AEA4000, v5, v6, "ActivityPickerListStore is empty: %{BOOL}d", v7, 8u);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  if (v3 < 0xF)
  {
    oslog = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_20AEA4000, oslog, v20, "ActivityPickerListStore is not empty, skipping migration.", v21, 2u);
      MEMORY[0x20F2E9420](v21, -1, -1);
    }
  }

  else
  {
    v8 = *(v0 + 32);
    if (v8)
    {
      goto LABEL_16;
    }

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_20AEA4000, v9, v10, "Creating NLSmartGoalStore instance for migration.", v11, 2u);
      MEMORY[0x20F2E9420](v11, -1, -1);
    }

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if (one-time initialization token for healthStore != -1)
    {
      swift_once();
    }

    v12 = [objc_allocWithZone(NLSmartGoalStore) initWithHealthStore_];
    v13 = *(v0 + 32);
    *(v0 + 32) = v12;

    v8 = *(v0 + 32);
    if (v8)
    {
LABEL_16:
      v14 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = partial apply for closure #1 in CompoundActivityTypeProvider.performMigrationIfNeeded();
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_45;
      v15 = _Block_copy(aBlock);
      v16 = v8;

      [v16 setDidPopulateBlock_];
      _Block_release(v15);
    }

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_20AEA4000, v17, v18, "Initiating migration from NLSmartGoalStore.", v19, 2u);
      MEMORY[0x20F2E9420](v19, -1, -1);
    }

    CompoundActivityTypeProvider.migrateActivityTypesFromDeprecatedStore()();
  }
}

double closure #1 in CompoundActivityTypeProvider.performMigrationIfNeeded()(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    CompoundActivityTypeProvider.migrateActivityTypesFromDeprecatedStore()();
  }

  return result;
}

Swift::Void __swiftcall CompoundActivityTypeProvider.setActivityPickerWheelchairMode(wheelchairMode:)(Swift::Bool wheelchairMode)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v26 - v5;
  v7 = [objc_opt_self() wheelchairActivityTypes];
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = specialized _arrayConditionalCast<A, B>(_:)(v8);

  if (!v9)
  {
    goto LABEL_38;
  }

  v28 = v9;
  v10 = *(v1 + 16);
  if ([*(v10 + 16) isWorkoutPickerWheelchairModeEnabled] != wheelchairMode)
  {
    v11 = *(v10 + 16);
    if (wheelchairMode)
    {
      [v11 setWorkoutPickerWheelchairModeEnabled_];
      specialized MutableCollection<>.reverse()();
      v12 = v28;
      if (v28 >> 62)
      {
        v13 = __CocoaSet.count.getter();
        if (v13)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v13 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v13)
        {
LABEL_6:
          if (v13 >= 1)
          {
            for (i = 0; i != v13; ++i)
            {
              if ((v12 & 0xC000000000000001) != 0)
              {
                v15 = MEMORY[0x20F2E7A20](i, v12);
              }

              else
              {
                v15 = *(v12 + 8 * i + 32);
              }

              v16 = v15;
              static Date.now.getter();
              v17 = type metadata accessor for Date();
              (*(*(v17 - 8) + 56))(v6, 0, 1, v17);
              ActivityPickerListStore.addActivityType(_:date:)(v16, v6);
              _s10Foundation4DateVSgWOhTm_9(v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
            }

LABEL_35:

            return;
          }

          __break(1u);
          goto LABEL_37;
        }
      }
    }

    else
    {
      [v11 setWorkoutPickerWheelchairModeEnabled_];
      if (v9 >> 62)
      {
        v22 = __CocoaSet.count.getter();
        if (!v22)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v22 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v22)
        {
          goto LABEL_33;
        }
      }

      if (v22 < 1)
      {
LABEL_37:
        __break(1u);
LABEL_38:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000036, 0x800000020B461AB0, "WorkoutCore/CompoundActivityTypeProvider.swift", 46, 2, 112, 0);
        __break(1u);
        return;
      }

      for (j = 0; j != v22; ++j)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x20F2E7A20](j, v9);
        }

        else
        {
          v24 = *(v9 + 8 * j + 32);
        }

        v25 = v24;
        ActivityPickerListStore.removeActivityType(_:)(v24);
      }
    }

LABEL_33:

    goto LABEL_35;
  }

  if (one-time initialization token for activityPicker != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static WOLog.activityPicker);
  v27 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v27, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 67109120;
    *(v20 + 4) = wheelchairMode;
    _os_log_impl(&dword_20AEA4000, v27, v19, "Activity Picker wheelchair: %{BOOL}d is already set. Not modifying activity types.", v20, 8u);
    MEMORY[0x20F2E9420](v20, -1, -1);
  }

  v21 = v27;
}

void specialized MutableCollection<>.reverse()()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    goto LABEL_27;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    v3 = v2 - 1;
    while (!__OFSUB__(v2, 1))
    {
      if (v3 < 1)
      {
        return;
      }

      v4 = 0;
      v5 = v2 + 0x7FFFFFFFFFFFFFFFLL;
      while (1)
      {
        v6 = v2 - 1;
        if ((v1 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x20F2E7A20](v4, v1);
          v10 = MEMORY[0x20F2E7A20](v2 - 1, v1);
          goto LABEL_10;
        }

        v7 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v4 >= v7)
        {
          break;
        }

        if (v6 >= v7)
        {
          goto LABEL_25;
        }

        v8 = *(v1 + 8 * v2 + 24);
        v9 = *(v1 + 8 * v4 + 32);
        v10 = v8;
LABEL_10:
        v11 = v10;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = specialized _ArrayBuffer._consumeAndCreateNew()();
          v12 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v12) = 0;
        }

        v13 = v1 & 0xFFFFFFFFFFFFFF8;
        v14 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20) = v11;

        if ((v1 & 0x8000000000000000) != 0 || v12)
        {
          v1 = specialized _ArrayBuffer._consumeAndCreateNew()();
          v13 = v1 & 0xFFFFFFFFFFFFFF8;
        }

        if (v6 >= *(v13 + 16))
        {
          goto LABEL_24;
        }

        v15 = v13 + 8 * v2;
        v16 = *(v15 + 24);
        *(v15 + 24) = v9;

        *v0 = v1;
        if (v5 == v4)
        {
          goto LABEL_26;
        }

        ++v4;
        v17 = v2 - 2;
        --v2;
        if (v4 >= v17)
        {
          return;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      if (!__CocoaSet.count.getter())
      {
        return;
      }

      v2 = __CocoaSet.count.getter();
      v3 = v2 - 1;
    }

    __break(1u);
  }
}

void CompoundActivityTypeProvider.setActivityPickerActivityMoveMode(_:defaultActivityTypes:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 1);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v66 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v56 - v15;
  v17 = *(v2 + 16);
  if ((a1 == 2) != [*(v17 + 16) isWorkoutPickerFitnessJrModeEnabled])
  {
    [*(v17 + 16) setWorkoutPickerFitnessJrModeEnabled_];
    if (a1 != 2)
    {
      return;
    }

    v57 = v17;
    if (a2 >> 62)
    {
      v55 = __CocoaSet.count.getter();
      if (v55)
      {
        a1 = v55;
        v58 = a2 & 0xFFFFFFFFFFFFFF8;
        v69 = MEMORY[0x277D84F90];
        specialized ContiguousArray.reserveCapacity(_:)();
        v18 = __CocoaSet.count.getter();
        if (a1 < 0)
        {
          __break(1u);
          swift_once();
          v41 = type metadata accessor for Logger();
          __swift_project_value_buffer(v41, static WOLog.activityPicker);
          v42 = v5;
          v43 = Logger.logObject.getter();
          v44 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v43, v44))
          {
            v45 = swift_slowAlloc();
            v46 = swift_slowAlloc();
            *v45 = 138412290;
            v47 = v5;
            v48 = _swift_stdlib_bridgeErrorToNSError();
            *(v45 + 4) = v48;
            *v46 = v48;
            _os_log_impl(&dword_20AEA4000, v43, v44, "Failed to write activity types: %@", v45, 0xCu);
            _s10Foundation4DateVSgWOhTm_9(v46, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            MEMORY[0x20F2E9420](v46, -1, -1);
            MEMORY[0x20F2E9420](v45, -1, -1);
          }

          else
          {
          }

          return;
        }

        goto LABEL_6;
      }
    }

    else
    {
      a1 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a1)
      {
        v69 = MEMORY[0x277D84F90];
        specialized ContiguousArray.reserveCapacity(_:)();
        v58 = a2 & 0xFFFFFFFFFFFFFF8;
        v18 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
        v62 = a1;
        v63 = v9;
        v19 = 0;
        v20 = a2;
        v64 = a2;
        v65 = a2 & 0xC000000000000001;
        v59 = &v6[6];
        v60 = &v6[7];
        v67 = v6 + 4;
        v21 = v18 + 3;
        v22 = v66;
        v61 = v18;
        while ((v18 ^ v19) != 0x8000000000000000)
        {
          v25 = v21 - 4;
          if (v65)
          {
            v26 = MEMORY[0x20F2E7A20](v25, v20);
          }

          else
          {
            if ((v25 & 0x8000000000000000) != 0)
            {
              goto LABEL_30;
            }

            if (v25 >= *(v58 + 16))
            {
              goto LABEL_31;
            }

            v26 = *(v20 + 8 * v21);
          }

          v27 = v26;
          (*v60)(v16, 1, 1, v5);
          v28 = type metadata accessor for ActivityTypeListItem(0);
          v29 = objc_allocWithZone(v28);
          *&v29[OBJC_IVAR____TtC11WorkoutCore20ActivityTypeListItem_activityType] = v27;
          a1 = v16;
          outlined init with copy of Date?(v16, v22);
          v30 = *v59;
          if ((*v59)(v22, 1, v5) == 1)
          {
            v31 = v27;
            v32 = v63;
            static Date.now.getter();
            v33 = v30(v66, 1, v5);
            v23 = v32;
            v22 = v66;
            if (v33 != 1)
            {
              _s10Foundation4DateVSgWOhTm_9(v66, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
            }
          }

          else
          {
            v23 = v63;
            (v67->isa)(v63, v22, v5);
            v24 = v27;
          }

          ++v19;
          (v67->isa)(&v29[OBJC_IVAR____TtC11WorkoutCore20ActivityTypeListItem_orderDate], v23, v5);
          v68.receiver = v29;
          v68.super_class = v28;
          objc_msgSendSuper2(&v68, sel_init);

          v16 = a1;
          _s10Foundation4DateVSgWOhTm_9(a1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v21;
          v18 = v61;
          v20 = v64;
          if (v62 == v19)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }
    }

LABEL_24:
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();

    v39 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11WorkoutCore20ActivityTypeListItemC_SayAFGTt0g5Tf4g_n(v38);

    v40 = specialized _copyCollectionToContiguousArray<A>(_:)(v39);

    v69 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore20ActivityTypeListItemCGMd, &_sSay11WorkoutCore20ActivityTypeListItemCGMR);
    lazy protocol witness table accessor for type [ActivityTypeListItem] and conformance <A> [A]();
    v49 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v51 = v50;

    v52 = v57[2];
    v53 = MEMORY[0x20F2E6C00](v57[3], v57[4]);
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v52 writeDataPerGizmoDomainAndKey:v53 data:isa];

    outlined consume of Data._Representation(v49, v51);

    return;
  }

  if (one-time initialization token for activityPicker != -1)
  {
LABEL_32:
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, static WOLog.activityPicker);
  v67 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v67, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 67109120;
    *(v36 + 4) = a1 == 2;
    _os_log_impl(&dword_20AEA4000, v67, v35, "Activity picker tinker mode: %{BOOL}d is already set. Not modifying activity types.", v36, 8u);
    MEMORY[0x20F2E9420](v36, -1, -1);
  }

  v37 = v67;
}

uint64_t CompoundActivityTypeProvider.didPopulateBlock.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  sub_20AED5538(v1, *(v0 + 64));
  return v1;
}

uint64_t CompoundActivityTypeProvider.didPopulateBlock.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 56);
  v6 = *(v2 + 64);
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v5, v6);
}

uint64_t key path getter for CompoundActivityTypeProvider.didPopulateBlock : CompoundActivityTypeProvider@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
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
    v7 = _sIeg_ytIegr_TRTA_3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20AED5538(v4, v5);
}

uint64_t key path setter for CompoundActivityTypeProvider.didPopulateBlock : CompoundActivityTypeProvider(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = _sytIegr_Ieg_TRTA_3;
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
  sub_20AED5538(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t CompoundActivityTypeProvider.isHidden(activityType:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore20ActivityTypeListItemCGMd, &_sSay11WorkoutCore20ActivityTypeListItemCGMR);
  OS_dispatch_queue.sync<A>(execute:)();
  v2 = v17;
  if (v17 >> 62)
  {
    goto LABEL_24;
  }

  v3 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_25;
  }

LABEL_3:
  v18 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x20F2E7A20](v5, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      v8 = *&v6[OBJC_IVAR____TtC11WorkoutCore20ActivityTypeListItem_activityType];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v3 != v5);

    v2 = v18;
    if (v18 >> 62)
    {
      while (1)
      {
        v9 = __CocoaSet.count.getter();
        if (!v9)
        {
          break;
        }

LABEL_11:
        _sSo8NSObjectCMaTm_1(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
        v10 = 0;
        while (1)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x20F2E7A20](v10, v2);
          }

          else
          {
            if (v10 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_23;
            }

            v11 = *(v2 + 8 * v10 + 32);
          }

          v12 = v11;
          v13 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (static NSObject.== infix(_:_:)())
          {
            v14 = [a1 isStandard];
            v15 = [v12 isStandard];

            if (v14 == v15)
            {
              v16 = 0;
              goto LABEL_28;
            }
          }

          else
          {
          }

          ++v10;
          if (v13 == v9)
          {
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        v3 = __CocoaSet.count.getter();
        if (v3)
        {
          goto LABEL_3;
        }

LABEL_25:

        v2 = MEMORY[0x277D84F90];
        if (!(MEMORY[0x277D84F90] >> 62))
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
        goto LABEL_11;
      }
    }

LABEL_27:
    v16 = 1;
LABEL_28:

    return v16;
  }

  return result;
}

void CompoundActivityTypeProvider.hide(activityType:)(void *a1)
{
  v2 = v1;
  ActivityPickerListStore.removeActivityType(_:)(a1);
  if (one-time initialization token for activityPicker != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.activityPicker);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21[0] = v10;
    *v8 = 138412546;
    *(v8 + 4) = v5;
    *v9 = v5;
    *(v8 + 12) = 2080;
    v11 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v12 = Optional.description.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v21);

    *(v8 + 14) = v14;
    _os_log_impl(&dword_20AEA4000, v6, v7, "[CompoundActivityTypeProvider] Hiding %@. ActivityPickerListStore's removeActivityType return with result %s", v8, 0x16u);
    _s10Foundation4DateVSgWOhTm_9(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x20F2E9420](v10, -1, -1);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  v15 = [objc_opt_self() defaultCenter];
  v16 = *(v2 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B423A90;
  v21[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21[1] = v18;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = _sSo8NSObjectCMaTm_1(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
  *(inited + 72) = v5;
  v19 = v5;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  _s10Foundation4DateVSgWOhTm_9(inited + 32, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v15 postNotificationName:v16 object:0 userInfo:isa];
}

void CompoundActivityTypeProvider.show(activityType:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v15 - v6;
  static Date.now.getter();
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  ActivityPickerListStore.addActivityType(_:date:)(a1, v7);
  _s10Foundation4DateVSgWOhTm_9(v7, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v9 = [objc_opt_self() defaultCenter];
  v10 = *(v2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B423A90;
  v15[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15[1] = v12;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = _sSo8NSObjectCMaTm_1(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
  *(inited + 72) = a1;
  v13 = a1;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  _s10Foundation4DateVSgWOhTm_9(inited + 32, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v9 postNotificationName:v10 object:0 userInfo:isa];
}

double @objc CompoundActivityTypeProvider.hide(activityType:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(id))
{
  v5 = a3;

  a4(v5);

  return result;
}

uint64_t CompoundActivityTypeProvider.mostRecentOccurrenceDate(for:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = WorkoutConfigurationOccurrenceStore.recentWorkoutConfiguration(for:)(a1);
  if (v3)
  {
    v4 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
    v5 = v3;
    swift_beginAccess();
    v6 = *&v5[v4];

    v7 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_countModificationDate;
    swift_beginAccess();
    v8 = type metadata accessor for Date();
    v9 = *(v8 - 8);
    (*(v9 + 16))(a2, &v6[v7], v8);

    return (*(v9 + 56))(a2, 0, 1, v8);
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 56);

    return v12(a2, 1, 1, v11);
  }
}

uint64_t CompoundActivityTypeProvider.registerWorkoutOccurrence(with:goal:date:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v12 - v7;
  result = [objc_opt_self() isRunningInStoreDemoMode];
  if ((result & 1) == 0)
  {
    v10 = type metadata accessor for Date();
    v11 = *(v10 - 8);
    (*(v11 + 16))(v8, a3, v10);
    (*(v11 + 56))(v8, 0, 1, v10);
    ActivityPickerListStore.addActivityType(_:date:)(a1, v8);
    return _s10Foundation4DateVSgWOhTm_9(v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  return result;
}

uint64_t CompoundActivityTypeProvider.numberOfCompletedActivities(for:)(void *a1)
{
  v1 = WorkoutConfigurationOccurrenceStore.configurations(for:)(a1);
  v2 = v1;
  v3 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_17:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v6 = 0;
  while (v4 != v5)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x20F2E7A20](v5, v2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        goto LABEL_15;
      }

      v7 = *(v2 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v9 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
    swift_beginAccess();
    v10 = *&v8[v9];

    v11 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
    swift_beginAccess();
    v12 = *&v10[v11];

    ++v5;
    v13 = __OFADD__(v6, v12);
    v6 += v12;
    if (v13)
    {
      goto LABEL_16;
    }
  }

  return v6;
}

void CompoundActivityTypeProvider.inferLocationType(for:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:a1 isIndoor:1];
  v27 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:a1 isIndoor:0];
  v3 = WorkoutConfigurationOccurrenceStore.configurations(for:)(v2);
  v4 = v3;
  v26 = v2;
  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
LABEL_38:
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  v8 = 0;
  while (v6 != v7)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x20F2E7A20](v7, v4);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        goto LABEL_33;
      }

      v9 = *(v4 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_33:
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

    v11 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
    swift_beginAccess();
    v12 = *&v10[v11];

    v13 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
    swift_beginAccess();
    v14 = *&v12[v13];

    ++v7;
    v15 = __OFADD__(v8, v14);
    v8 += v14;
    if (v15)
    {
      goto LABEL_34;
    }
  }

  v16 = WorkoutConfigurationOccurrenceStore.configurations(for:)(v27);
  v17 = v16;
  v5 = v16 & 0xFFFFFFFFFFFFFF8;
  if (v16 >> 62)
  {
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = 0;
  v19 = 0;
  while (v4 != v18)
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x20F2E7A20](v18, v17);
    }

    else
    {
      if (v18 >= *(v5 + 16))
      {
        goto LABEL_36;
      }

      v20 = *(v17 + 8 * v18 + 32);
    }

    v21 = v20;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_35;
    }

    v22 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
    swift_beginAccess();
    v23 = *&v21[v22];

    v24 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
    swift_beginAccess();
    v25 = *&v23[v24];

    ++v18;
    v15 = __OFADD__(v19, v25);
    v19 += v25;
    if (v15)
    {
      goto LABEL_37;
    }
  }

  if (__OFADD__(v8, v19))
  {
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    return;
  }

  if (v8 + v19 < 1)
  {
    return;
  }

  if ((v19 * 3) >> 64 != (3 * v19) >> 63)
  {
    goto LABEL_41;
  }

  if (v8 < 3 * v19 && (v8 * 3) >> 64 != (3 * v8) >> 63)
  {
    goto LABEL_42;
  }
}

uint64_t CompoundActivityTypeProvider.deinit()
{

  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + 56), *(v0 + 64));
  return v0;
}

uint64_t CompoundActivityTypeProvider.__deallocating_deinit()
{

  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + 56), *(v0 + 64));

  return swift_deallocClassInstance();
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_89:
    v11 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
    }

    v90 = *(v9 + 2);
    if (v90 >= 2)
    {
      do
      {
        v91 = *v6;
        if (!*v6)
        {
          goto LABEL_125;
        }

        v6 = (v90 - 1);
        v92 = *&v9[16 * v90];
        v93 = *&v9[16 * v90 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((v91 + 8 * v92), (v91 + 8 * *&v9[16 * v90 + 16]), (v91 + 8 * v93), v11);
        if (v5)
        {
          break;
        }

        if (v93 < v92)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
        }

        if (v90 - 2 >= *(v9 + 2))
        {
          goto LABEL_115;
        }

        v94 = &v9[16 * v90];
        *v94 = v92;
        *(v94 + 1) = v93;
        specialized Array.remove(at:)(v90 - 1);
        v90 = *(v9 + 2);
        v6 = a3;
      }

      while (v90 > 1);
    }

LABEL_99:

    return;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    v11 = (v8 + 1);
    if (v8 + 1 < v7)
    {
      v103 = v7;
      v97 = v9;
      v12 = *v6;
      v13 = *(*v6 + 8 * v11);
      v6 = (8 * v10);
      v14 = v10;
      v15 = (v12 + 8 * v10);
      v17 = *v15;
      v16 = v15 + 2;
      v18 = v13;
      v19 = v17;
      v105 = static Date.> infix(_:_:)();

      v9 = v14;
      v20 = (v14 + 2);
      while (1)
      {
        v11 = v103;
        if (v103 == v20)
        {
          break;
        }

        v21 = *(v16 - 1);
        v22 = *v16;
        v23 = v21;
        LODWORD(v21) = static Date.> infix(_:_:)() & 1;

        v20 = (v20 + 1);
        ++v16;
        if ((v105 & 1) != v21)
        {
          v11 = (v20 - 1);
          break;
        }
      }

      v10 = v9;
      if ((v105 & 1) == 0)
      {
        goto LABEL_18;
      }

      if (v11 < v9)
      {
        goto LABEL_118;
      }

      if (v9 < v11)
      {
        v24 = 8 * v11 - 8;
        v25 = v11;
        v26 = v9;
        v9 = v97;
        do
        {
          v25 = (v25 - 1);
          if (v26 != v25)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_124;
            }

            v27 = *(v6 + v28);
            *(v6 + v28) = *(v28 + v24);
            *(v28 + v24) = v27;
          }

          ++v26;
          v24 -= 8;
          ++v6;
        }

        while (v26 < v25);
        v6 = a3;
      }

      else
      {
LABEL_18:
        v6 = a3;
        v9 = v97;
      }
    }

    v29 = v6[1];
    if (v11 < v29)
    {
      if (__OFSUB__(v11, v10))
      {
        goto LABEL_117;
      }

      if (v11 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_119;
        }

        if (&v10[a4] >= v29)
        {
          v30 = v6[1];
        }

        else
        {
          v30 = &v10[a4];
        }

        if (v30 < v10)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v11 != v30)
        {
          break;
        }
      }
    }

LABEL_38:
    if (v11 < v10)
    {
      goto LABEL_116;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    }

    v45 = *(v9 + 2);
    v44 = *(v9 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v9);
    }

    *(v9 + 2) = v46;
    v47 = &v9[16 * v45];
    *(v47 + 4) = v10;
    *(v47 + 5) = v11;
    v48 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    v107 = v11;
    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v9 + 4);
          v51 = *(v9 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_58:
          if (v53)
          {
            goto LABEL_105;
          }

          v66 = &v9[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_108;
          }

          v72 = &v9[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_112;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        v76 = &v9[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_72:
        if (v71)
        {
          goto LABEL_107;
        }

        v79 = &v9[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_110;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_79:
        v87 = v49 - 1;
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*v6)
        {
          goto LABEL_123;
        }

        v88 = *&v9[16 * v87 + 32];
        v11 = *&v9[16 * v49 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v6 + 8 * v88), (*v6 + 8 * *&v9[16 * v49 + 32]), (*v6 + 8 * v11), v48);
        if (v5)
        {
          goto LABEL_99;
        }

        if (v11 < v88)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
        }

        if (v87 >= *(v9 + 2))
        {
          goto LABEL_102;
        }

        v89 = &v9[16 * v87];
        *(v89 + 4) = v88;
        *(v89 + 5) = v11;
        specialized Array.remove(at:)(v49);
        v46 = *(v9 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v9[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_103;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_104;
      }

      v61 = &v9[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_106;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_109;
      }

      if (v65 >= v57)
      {
        v83 = &v9[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_113;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_58;
    }

LABEL_3:
    v7 = v6[1];
    v8 = v107;
    if (v107 >= v7)
    {
      goto LABEL_89;
    }
  }

  v98 = v9;
  v99 = v5;
  v31 = v10;
  v32 = *v6;
  v33 = *v6 + 8 * v11 - 8;
  v95 = v31;
  v34 = v31 - v11;
  v101 = v30;
LABEL_31:
  v104 = v33;
  v106 = v11;
  v35 = *(v32 + 8 * v11);
  v36 = v34;
  v37 = v33;
  while (1)
  {
    v38 = *v37;
    v39 = v35;
    v40 = v38;
    v41 = static Date.> infix(_:_:)();

    if ((v41 & 1) == 0)
    {
LABEL_30:
      v11 = (v106 + 1);
      v33 = v104 + 8;
      --v34;
      if ((v106 + 1) != v101)
      {
        goto LABEL_31;
      }

      v11 = v101;
      v9 = v98;
      v5 = v99;
      v6 = a3;
      v10 = v95;
      goto LABEL_38;
    }

    if (!v32)
    {
      break;
    }

    v42 = *v37;
    v35 = *(v37 + 8);
    *v37 = v35;
    *(v37 + 8) = v42;
    v37 -= 8;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(void **__dst, id *__src, id *a3, void **a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v15 = a4;
    if (a4 != __src || &__src[v12] <= a4)
    {
      memmove(a4, __src, 8 * v12);
    }

    v37 = &v15[v12];
    if (v10 >= 8 && v5 > v6)
    {
      v35 = v6;
LABEL_27:
      v24 = v5 - 1;
      v25 = v4 - 1;
      v26 = v37;
      do
      {
        v27 = v25;
        v28 = v25 + 1;
        v29 = *--v26;
        v30 = v24;
        v31 = *v24;
        v36 = v29;
        v32 = v31;
        v33 = static Date.> infix(_:_:)();

        if (v33)
        {
          v4 = v27;
          if (v28 != v5)
          {
            *v27 = *v30;
          }

          if (v37 <= v15 || (v5 = v30, v30 <= v35))
          {
            v5 = v30;
            goto LABEL_38;
          }

          goto LABEL_27;
        }

        if (v28 != v37)
        {
          *v27 = *v26;
        }

        v25 = v27 - 1;
        v37 = v26;
        v24 = v30;
      }

      while (v26 > v15);
      v37 = v26;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      v14 = a4;
      memmove(a4, __dst, 8 * v9);
      a4 = v14;
      v5 = __src;
    }

    v37 = &a4[v9];
    v15 = a4;
    if (v7 >= 8 && v5 < v4)
    {
      while (1)
      {
        v16 = v4;
        v17 = v6;
        v18 = *v15;
        v19 = *v5;
        v20 = v18;
        LOBYTE(v18) = static Date.> infix(_:_:)();

        if ((v18 & 1) == 0)
        {
          break;
        }

        v21 = v5;
        v22 = v17;
        v23 = v17 == v5++;
        if (!v23)
        {
          goto LABEL_16;
        }

LABEL_17:
        v6 = v22 + 1;
        if (v15 < v37)
        {
          v4 = v16;
          if (v5 < v16)
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      v21 = v15;
      v22 = v17;
      v23 = v17 == v15++;
      if (v23)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v22 = *v21;
      goto LABEL_17;
    }

LABEL_19:
    v5 = v6;
  }

LABEL_38:
  if (v5 != v15 || v5 >= (v15 + ((v37 - v15 + (v37 - v15 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v15, 8 * (v37 - v15));
  }

  return 1;
}

void *specialized CompoundActivityTypeProvider.init(occurrenceStore:domainAccessor:deprecatedSmartGoalStore:)(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v3[4] = 0;
  v3[5] = MEMORY[0x20F2E6C00](0xD000000000000023, 0x800000020B461C20);
  v3[6] = MEMORY[0x20F2E6C00](0xD000000000000023, 0x800000020B461C50);
  type metadata accessor for ActivityPickerListStore();
  v3[7] = 0;
  v3[8] = 0;
  swift_allocObject();
  v7 = swift_unknownObjectRetain();
  v3[2] = ActivityPickerListStore.init(domainAccessor:)(v7);
  v3[3] = a1;
  v8 = v3[4];
  v4[4] = a3;
  v9 = a1;
  v10 = a3;

  v11 = [objc_opt_self() defaultCenter];
  [v11 addObserver:v4 selector:sel_handleDomainAccessorRefresh name:@"WONPSDomainAccessorDidRefreshNotification" object:0];

  CompoundActivityTypeProvider.performMigrationIfNeeded()();
  return v4;
}