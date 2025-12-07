uint64_t specialized DataLinkHost.init(publisher:session:coalescingPeriod:)(void *a1, void *a2, double a3)
{
  v4 = v3;
  v67 = a2;
  v68 = a1;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v73 = *(v6 - 8);
  v74 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v72 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v70 = *(v9 - 8);
  v71 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v69 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 40) = 0;
  swift_unknownObjectWeakInit();
  v12 = MEMORY[0x277D84F98];
  *(v3 + 72) = MEMORY[0x277D84F98];
  *(v3 + 80) = 0;
  *(v3 + 87) = 0;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  v13 = MEMORY[0x277D84FA0];
  *(v3 + 112) = 0;
  *(v3 + 120) = v12;
  *(v3 + 128) = 0;
  *(v3 + 136) = v13;
  aBlock[0] = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 18, 0);
  v14 = 0;
  v15 = aBlock[0];
  v16 = 0x800000020B4543C0;
  v17 = 0x800000020B4543A0;
  v18 = 0x800000020B454370;
  v19 = 0x800000020B454350;
  v20 = 0x800000020B454330;
  v21 = 0x800000020B454300;
  v22 = 0x800000020B4542E0;
  v23 = 0x800000020B4542C0;
  v24 = 0x800000020B4542A0;
  v25 = 0x800000020B454280;
  v26 = 0x800000020B454260;
  v27 = 0x800000020B454240;
  v28 = 0x800000020B454220;
  v29 = 0x800000020B4541F0;
  v30 = 0x800000020B4541D0;
  v75 = 0x800000020B4541B0;
  do
  {
    v31 = 0xED00007265687369;
    v32 = 0x6C6275506C616F67;
    switch(outlined read-only object #0 of static KnownPublishers.allCases.getter[v14 + 32])
    {
      case 1:
        v32 = 0xD00000000000001BLL;
        v31 = v30;
        break;
      case 2:
        v32 = 0xD000000000000016;
        v31 = v29;
        break;
      case 3:
        break;
      case 4:
        v32 = 0xD000000000000019;
        v31 = v28;
        break;
      case 5:
        v32 = 0xD000000000000019;
        v31 = v27;
        break;
      case 6:
        v32 = 0xD000000000000014;
        v31 = v26;
        break;
      case 7:
        v32 = 0xD000000000000019;
        v31 = v25;
        break;
      case 8:
        v32 = 0xD00000000000001ALL;
        v31 = v24;
        break;
      case 9:
        v32 = 0xD000000000000010;
        v31 = v23;
        break;
      case 0xA:
        v32 = 0xD000000000000015;
        v31 = v22;
        break;
      case 0xB:
        v32 = 0xD000000000000020;
        v31 = v21;
        break;
      case 0xC:
        v32 = 0xD000000000000018;
        v31 = v20;
        break;
      case 0xD:
        v32 = 0xD00000000000001ALL;
        v31 = v19;
        break;
      case 0xE:
        v32 = 0xD00000000000001CLL;
        v31 = v18;
        break;
      case 0xF:
        v31 = 0xE800000000000000;
        v32 = 0x6C6576654C706F54;
        break;
      case 0x10:
        v32 = 0xD000000000000015;
        v31 = v17;
        break;
      case 0x11:
        v32 = 0xD00000000000001ALL;
        v31 = v16;
        break;
      default:
        v32 = 0xD00000000000001FLL;
        v31 = v75;
        break;
    }

    aBlock[0] = v15;
    v34 = *(v15 + 16);
    v33 = *(v15 + 24);
    if (v34 >= v33 >> 1)
    {
      v60 = v22;
      v59 = v23;
      v58 = v24;
      v66 = v16;
      v65 = v17;
      v64 = v18;
      v63 = v19;
      v62 = v20;
      v61 = v21;
      v57 = v25;
      v56 = v26;
      v55 = v27;
      v54 = v28;
      v53 = v29;
      v52 = v30;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1);
      v30 = v52;
      v29 = v53;
      v28 = v54;
      v27 = v55;
      v26 = v56;
      v25 = v57;
      v24 = v58;
      v23 = v59;
      v22 = v60;
      v21 = v61;
      v20 = v62;
      v19 = v63;
      v18 = v64;
      v17 = v65;
      v16 = v66;
      v15 = aBlock[0];
    }

    ++v14;
    *(v15 + 16) = v34 + 1;
    v35 = v15 + 16 * v34;
    *(v35 + 32) = v32;
    *(v35 + 40) = v31;
  }

  while (v14 != 18);
  v36 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v15);

  *(v4 + 144) = v36;
  v37 = objc_allocWithZone(type metadata accessor for DataLinkHealthKitHostConnection(0));
  v38 = v67;
  v39 = specialized DataLinkHealthKitHostConnection.init(session:)(v38);

  v40 = v68;
  *(v4 + 48) = v39;
  *(v4 + 56) = v40;
  *(v4 + 64) = a3;
  v41 = &v39[OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_mirroredHostDelegate];
  swift_beginAccess();
  *(v41 + 1) = &protocol witness table for DataLinkHost;
  swift_unknownObjectWeakAssign();
  v42 = *(v4 + 56);
  v43 = v40;
  *(v4 + 112) = specialized DataLinkHost.createSink<A>(_:key:)(v42, 0x6C6576654C706F54, 0xE800000000000000);

  DataLinkHost.setupKeyedListeners(_:)(*(v4 + 56));
  _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v44 = static OS_dispatch_queue.main.getter();
  v45 = swift_allocObject();
  swift_weakInit();
  v46 = swift_allocObject();
  *(v46 + 16) = v45;
  *(v46 + 24) = a3;
  aBlock[4] = partial apply for closure #1 in DataLinkHost.init(publisher:session:coalescingPeriod:);
  aBlock[5] = v46;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_198;
  v47 = _Block_copy(aBlock);

  v48 = v69;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v49 = v72;
  v50 = v74;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v48, v49, v47);
  _Block_release(v47);

  (*(v73 + 8))(v49, v50);
  (*(v70 + 8))(v48, v71);
  return v4;
}

void partial apply for closure #1 in MirroredHostStartConfiguration.protobuf.getter(uint64_t a1)
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  closure #1 in MirroredHostStartConfiguration.protobuf.getter(a1, v2 | *(v1 + 16), *(v1 + 24));
}

{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  closure #1 in MirroredHostStartConfiguration.protobuf.getter(a1, v2 | *(v1 + 16), *(v1 + 24));
}

uint64_t partial apply for closure #1 in DataLinkHost.sendMirroredHostStartConfiguration(_:acknowledged:)(char a1, void *a2)
{
  if (*(v2 + 17))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return closure #1 in DataLinkHost.sendMirroredHostStartConfiguration(_:acknowledged:)(a1, a2, v3 | *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

uint64_t objectdestroy_18Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t outlined init with copy of Apple_Workout_Core_MirroredHostMessage(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of Apple_Workout_Core_MirroredHostMessage(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in DataLinkHost.addHostExpectation(_:)(uint64_t a1)
{
  v3 = *(type metadata accessor for DataLinkMirroredHostExpectation(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return closure #1 in DataLinkHost.addHostExpectation(_:)(a1, v4, v5);
}

uint64_t outlined destroy of Apple_Workout_Core_DataLinkMessage(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type MirroredClientMachTimestampResponse and conformance MirroredClientMachTimestampResponse()
{
  result = lazy protocol witness table cache variable for type MirroredClientMachTimestampResponse and conformance MirroredClientMachTimestampResponse;
  if (!lazy protocol witness table cache variable for type MirroredClientMachTimestampResponse and conformance MirroredClientMachTimestampResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredClientMachTimestampResponse and conformance MirroredClientMachTimestampResponse);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredClientMachTimestampResponse and conformance MirroredClientMachTimestampResponse;
  if (!lazy protocol witness table cache variable for type MirroredClientMachTimestampResponse and conformance MirroredClientMachTimestampResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredClientMachTimestampResponse and conformance MirroredClientMachTimestampResponse);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredClientMachTimestampResponse and conformance MirroredClientMachTimestampResponse;
  if (!lazy protocol witness table cache variable for type MirroredClientMachTimestampResponse and conformance MirroredClientMachTimestampResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredClientMachTimestampResponse and conformance MirroredClientMachTimestampResponse);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredClientMachTimestampResponse and conformance MirroredClientMachTimestampResponse;
  if (!lazy protocol witness table cache variable for type MirroredClientMachTimestampResponse and conformance MirroredClientMachTimestampResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredClientMachTimestampResponse and conformance MirroredClientMachTimestampResponse);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MirroredClientAlertStackResponse and conformance MirroredClientAlertStackResponse()
{
  result = lazy protocol witness table cache variable for type MirroredClientAlertStackResponse and conformance MirroredClientAlertStackResponse;
  if (!lazy protocol witness table cache variable for type MirroredClientAlertStackResponse and conformance MirroredClientAlertStackResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredClientAlertStackResponse and conformance MirroredClientAlertStackResponse);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredClientAlertStackResponse and conformance MirroredClientAlertStackResponse;
  if (!lazy protocol witness table cache variable for type MirroredClientAlertStackResponse and conformance MirroredClientAlertStackResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredClientAlertStackResponse and conformance MirroredClientAlertStackResponse);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredClientAlertStackResponse and conformance MirroredClientAlertStackResponse;
  if (!lazy protocol witness table cache variable for type MirroredClientAlertStackResponse and conformance MirroredClientAlertStackResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredClientAlertStackResponse and conformance MirroredClientAlertStackResponse);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataLinkHost.MirrorLinkState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DataLinkHost.MirrorLinkState(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type DataLinkHost.MirrorLinkState and conformance DataLinkHost.MirrorLinkState()
{
  result = lazy protocol witness table cache variable for type DataLinkHost.MirrorLinkState and conformance DataLinkHost.MirrorLinkState;
  if (!lazy protocol witness table cache variable for type DataLinkHost.MirrorLinkState and conformance DataLinkHost.MirrorLinkState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataLinkHost.MirrorLinkState and conformance DataLinkHost.MirrorLinkState);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t partial apply for closure #2 in closure #1 in DataLinkHost.addHostExpectation(_:)()
{
  v1 = *(type metadata accessor for DataLinkMirroredHostExpectation(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v3 + 40))(v0 + v2, ObjectType, v3);
}

unint64_t lazy protocol witness table accessor for type MirroredHostCountdownStart and conformance MirroredHostCountdownStart()
{
  result = lazy protocol witness table cache variable for type MirroredHostCountdownStart and conformance MirroredHostCountdownStart;
  if (!lazy protocol witness table cache variable for type MirroredHostCountdownStart and conformance MirroredHostCountdownStart)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredHostCountdownStart and conformance MirroredHostCountdownStart);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredHostCountdownStart and conformance MirroredHostCountdownStart;
  if (!lazy protocol witness table cache variable for type MirroredHostCountdownStart and conformance MirroredHostCountdownStart)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredHostCountdownStart and conformance MirroredHostCountdownStart);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredHostCountdownStart and conformance MirroredHostCountdownStart;
  if (!lazy protocol witness table cache variable for type MirroredHostCountdownStart and conformance MirroredHostCountdownStart)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredHostCountdownStart and conformance MirroredHostCountdownStart);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredHostCountdownStart and conformance MirroredHostCountdownStart;
  if (!lazy protocol witness table cache variable for type MirroredHostCountdownStart and conformance MirroredHostCountdownStart)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredHostCountdownStart and conformance MirroredHostCountdownStart);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MirroredHostMachTimestampRequest and conformance MirroredHostMachTimestampRequest()
{
  result = lazy protocol witness table cache variable for type MirroredHostMachTimestampRequest and conformance MirroredHostMachTimestampRequest;
  if (!lazy protocol witness table cache variable for type MirroredHostMachTimestampRequest and conformance MirroredHostMachTimestampRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredHostMachTimestampRequest and conformance MirroredHostMachTimestampRequest);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredHostMachTimestampRequest and conformance MirroredHostMachTimestampRequest;
  if (!lazy protocol witness table cache variable for type MirroredHostMachTimestampRequest and conformance MirroredHostMachTimestampRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredHostMachTimestampRequest and conformance MirroredHostMachTimestampRequest);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredHostMachTimestampRequest and conformance MirroredHostMachTimestampRequest;
  if (!lazy protocol witness table cache variable for type MirroredHostMachTimestampRequest and conformance MirroredHostMachTimestampRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredHostMachTimestampRequest and conformance MirroredHostMachTimestampRequest);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredHostMachTimestampRequest and conformance MirroredHostMachTimestampRequest;
  if (!lazy protocol witness table cache variable for type MirroredHostMachTimestampRequest and conformance MirroredHostMachTimestampRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredHostMachTimestampRequest and conformance MirroredHostMachTimestampRequest);
  }

  return result;
}

uint64_t objectdestroy_113Tm()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t partial apply for specialized thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> ()()
{
  v1 = *(v0 + 16);
  v3[3] = MEMORY[0x277D84F78] + 8;
  v1(v3);
  return __swift_destroy_boxed_opaque_existential_0(v3);
}

uint64_t Apple_Workout_Core_RacePositionStatePublisher.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  UnknownStorage.init()();
  v3 = *(v2 + 44);
  v4 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1 + v3, 1, 1, v4);
}

uint64_t Apple_Workout_Core_RacePositionStatePublisher.racePosition.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0) + 44);
  _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v1 + v3, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(a1, v1 + v3, type metadata accessor for Apple_Workout_Core_RacePosition);
  v4 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Workout_Core_RacePositionStatePublisher.racePosition.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
  outlined init with copy of Apple_Workout_Core_RacePosition?(v1 + *(v7 + 44), v6, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v6, a1, type metadata accessor for Apple_Workout_Core_RacePosition);
  }

  v10 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v6, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  }

  return result;
}

uint64_t Apple_Workout_Core_RacePosition.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  type metadata accessor for Apple_Workout_Core_RacePosition(0);
  return UnknownStorage.init()();
}

uint64_t _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t Apple_Workout_Core_RacePositionOnRoute.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  type metadata accessor for Apple_Workout_Core_RacePositionOnRoute(0);
  return UnknownStorage.init()();
}

uint64_t Apple_Workout_Core_RacePosition.notYetOnRoute.setter(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v3, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(a1, v3, a2);
  v6 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(*(v6 - 8) + 56);

  return v7(v3, 0, 1, v6);
}

uint64_t type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t Apple_Workout_Core_RacePositionState.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 7;
  *(a2 + 9) = 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_RacePositionState(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_RacePositionState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_RacePositionState and conformance Apple_Workout_Core_RacePositionState();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_RacePositionState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void Apple_Workout_Core_RacePositionStatePublisher.racePositionState.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Apple_Workout_Core_RacePositionStatePublisher.racePositionState.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t key path getter for Apple_Workout_Core_RacePositionStatePublisher.racePosition : Apple_Workout_Core_RacePositionStatePublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
  outlined init with copy of Apple_Workout_Core_RacePosition?(a1 + *(v8 + 44), v7, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v7, a2, type metadata accessor for Apple_Workout_Core_RacePosition);
  }

  v11 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v7, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_RacePositionStatePublisher.racePosition : Apple_Workout_Core_RacePositionStatePublisher(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_RacePosition(a1, v8, type metadata accessor for Apple_Workout_Core_RacePosition);
  v9 = *(type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0) + 44);
  _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(a2 + v9, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v8, a2 + v9, type metadata accessor for Apple_Workout_Core_RacePosition);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Apple_Workout_Core_RacePositionStatePublisher.racePosition.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
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
  v15 = *(type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0) + 44);
  *(v5 + 12) = v15;
  outlined init with copy of Apple_Workout_Core_RacePosition?(v1 + v15, v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
    }
  }

  else
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v8, v14, type metadata accessor for Apple_Workout_Core_RacePosition);
  }

  return Apple_Workout_Core_RacePositionStatePublisher.racePosition.modify;
}

void Apple_Workout_Core_RacePositionStatePublisher.racePosition.modify(uint64_t **a1, char a2)
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
    outlined init with copy of Apple_Workout_Core_RacePosition((*a1)[5], v4, type metadata accessor for Apple_Workout_Core_RacePosition);
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v9 + v3, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v4, v9 + v3, type metadata accessor for Apple_Workout_Core_RacePosition);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of Apple_Workout_Core_RacePosition(v5, type metadata accessor for Apple_Workout_Core_RacePosition);
  }

  else
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v9 + v3, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v5, v9 + v3, type metadata accessor for Apple_Workout_Core_RacePosition);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Apple_Workout_Core_RacePositionStatePublisher.hasRacePosition.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
  outlined init with copy of Apple_Workout_Core_RacePosition?(v0 + *(v5 + 44), v4, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  v6 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v4, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  return v7;
}

Swift::Void __swiftcall Apple_Workout_Core_RacePositionStatePublisher.clearRacePosition()()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0) + 44);
  _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v0 + v1, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  v2 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Workout_Core_RacePositionStatePublisher.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0) + 40);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_RacePositionStatePublisher.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0) + 40);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t outlined assign with take of Apple_Workout_Core_RacePosition.OneOf_Type?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Apple_Workout_Core_RacePosition.notYetOnRoute.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v10 - v6;
  outlined init with copy of Apple_Workout_Core_RacePosition?(v2, &v10 - v6, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v7, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v7, a1, type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute);
    }

    outlined destroy of Apple_Workout_Core_RacePosition(v7, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  }

  return UnknownStorage.init()();
}

uint64_t outlined destroy of Apple_Workout_Core_RacePosition(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t key path getter for Apple_Workout_Core_RacePosition.notYetOnRoute : Apple_Workout_Core_RacePosition@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v10 - v6;
  outlined init with copy of Apple_Workout_Core_RacePosition?(a1, &v10 - v6, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v7, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v7, a2, type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute);
    }

    outlined destroy of Apple_Workout_Core_RacePosition(v7, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  }

  return UnknownStorage.init()();
}

void (*Apple_Workout_Core_RacePosition.notYetOnRoute.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR) - 8) + 64);
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
  v9 = *(*(type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute(0) - 8) + 64);
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
  outlined init with copy of Apple_Workout_Core_RacePosition?(v1, v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v12 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v8, v11, type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute);
      return Apple_Workout_Core_RacePosition.notYetOnRoute.modify;
    }

    outlined destroy of Apple_Workout_Core_RacePosition(v8, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  }

  UnknownStorage.init()();
  return Apple_Workout_Core_RacePosition.notYetOnRoute.modify;
}

uint64_t outlined init with copy of Apple_Workout_Core_RacePosition(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t Apple_Workout_Core_RacePosition.onRoute.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v10 - v6;
  outlined init with copy of Apple_Workout_Core_RacePosition?(v2, &v10 - v6, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v7, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v7, a1, type metadata accessor for Apple_Workout_Core_RacePositionOnRoute);
    }

    outlined destroy of Apple_Workout_Core_RacePosition(v7, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  type metadata accessor for Apple_Workout_Core_RacePositionOnRoute(0);
  return UnknownStorage.init()();
}

uint64_t key path getter for Apple_Workout_Core_RacePosition.onRoute : Apple_Workout_Core_RacePosition@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v10 - v6;
  outlined init with copy of Apple_Workout_Core_RacePosition?(a1, &v10 - v6, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v7, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v7, a2, type metadata accessor for Apple_Workout_Core_RacePositionOnRoute);
    }

    outlined destroy of Apple_Workout_Core_RacePosition(v7, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  type metadata accessor for Apple_Workout_Core_RacePositionOnRoute(0);
  return UnknownStorage.init()();
}

void (*Apple_Workout_Core_RacePosition.onRoute.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR) - 8) + 64);
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
  v9 = *(*(type metadata accessor for Apple_Workout_Core_RacePositionOnRoute(0) - 8) + 64);
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
  outlined init with copy of Apple_Workout_Core_RacePosition?(v1, v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v12 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
LABEL_15:
    *v11 = 0;
    *(v11 + 8) = 0;
    UnknownStorage.init()();
    return Apple_Workout_Core_RacePosition.onRoute.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of Apple_Workout_Core_RacePosition(v8, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
    goto LABEL_15;
  }

  _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v8, v11, type metadata accessor for Apple_Workout_Core_RacePositionOnRoute);
  return Apple_Workout_Core_RacePosition.onRoute.modify;
}

uint64_t Apple_Workout_Core_RacePosition.offRoute.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v10 - v6;
  outlined init with copy of Apple_Workout_Core_RacePosition?(v2, &v10 - v6, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v7, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v7, a1, type metadata accessor for Apple_Workout_Core_RacePositionOffRoute);
    }

    outlined destroy of Apple_Workout_Core_RacePosition(v7, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  }

  return UnknownStorage.init()();
}

uint64_t key path getter for Apple_Workout_Core_RacePosition.offRoute : Apple_Workout_Core_RacePosition@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v10 - v6;
  outlined init with copy of Apple_Workout_Core_RacePosition?(a1, &v10 - v6, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v7, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v7, a2, type metadata accessor for Apple_Workout_Core_RacePositionOffRoute);
    }

    outlined destroy of Apple_Workout_Core_RacePosition(v7, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  }

  return UnknownStorage.init()();
}

void (*Apple_Workout_Core_RacePosition.offRoute.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR) - 8) + 64);
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
  v9 = *(*(type metadata accessor for Apple_Workout_Core_RacePositionOffRoute(0) - 8) + 64);
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
  outlined init with copy of Apple_Workout_Core_RacePosition?(v1, v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v12 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
LABEL_15:
    UnknownStorage.init()();
    return Apple_Workout_Core_RacePosition.offRoute.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    outlined destroy of Apple_Workout_Core_RacePosition(v8, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
    goto LABEL_15;
  }

  _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v8, v11, type metadata accessor for Apple_Workout_Core_RacePositionOffRoute);
  return Apple_Workout_Core_RacePosition.offRoute.modify;
}

uint64_t Apple_Workout_Core_RacePosition.completed.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v10 - v6;
  outlined init with copy of Apple_Workout_Core_RacePosition?(v2, &v10 - v6, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v7, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v7, a1, type metadata accessor for Apple_Workout_Core_RacePositionCompleted);
    }

    outlined destroy of Apple_Workout_Core_RacePosition(v7, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  }

  return UnknownStorage.init()();
}

uint64_t key path getter for Apple_Workout_Core_RacePosition.completed : Apple_Workout_Core_RacePosition@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v10 - v6;
  outlined init with copy of Apple_Workout_Core_RacePosition?(a1, &v10 - v6, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v7, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v7, a2, type metadata accessor for Apple_Workout_Core_RacePositionCompleted);
    }

    outlined destroy of Apple_Workout_Core_RacePosition(v7, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  }

  return UnknownStorage.init()();
}

void (*Apple_Workout_Core_RacePosition.completed.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR) - 8) + 64);
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
  v9 = *(*(type metadata accessor for Apple_Workout_Core_RacePositionCompleted(0) - 8) + 64);
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
  outlined init with copy of Apple_Workout_Core_RacePosition?(v1, v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v12 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
LABEL_15:
    UnknownStorage.init()();
    return Apple_Workout_Core_RacePosition.completed.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    outlined destroy of Apple_Workout_Core_RacePosition(v8, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
    goto LABEL_15;
  }

  _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v8, v11, type metadata accessor for Apple_Workout_Core_RacePositionCompleted);
  return Apple_Workout_Core_RacePosition.completed.modify;
}

uint64_t Apple_Workout_Core_RacePosition.unknown.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v10 - v6;
  outlined init with copy of Apple_Workout_Core_RacePosition?(v2, &v10 - v6, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v7, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v7, a1, type metadata accessor for Apple_Workout_Core_RacePositionUnknown);
    }

    outlined destroy of Apple_Workout_Core_RacePosition(v7, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  }

  return UnknownStorage.init()();
}

uint64_t key path getter for Apple_Workout_Core_RacePosition.unknown : Apple_Workout_Core_RacePosition@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v10 - v6;
  outlined init with copy of Apple_Workout_Core_RacePosition?(a1, &v10 - v6, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v7, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v7, a2, type metadata accessor for Apple_Workout_Core_RacePositionUnknown);
    }

    outlined destroy of Apple_Workout_Core_RacePosition(v7, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  }

  return UnknownStorage.init()();
}

void (*Apple_Workout_Core_RacePosition.unknown.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR) - 8) + 64);
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
  v9 = *(*(type metadata accessor for Apple_Workout_Core_RacePositionUnknown(0) - 8) + 64);
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
  outlined init with copy of Apple_Workout_Core_RacePosition?(v1, v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v12 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
LABEL_15:
    UnknownStorage.init()();
    return Apple_Workout_Core_RacePosition.unknown.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    outlined destroy of Apple_Workout_Core_RacePosition(v8, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
    goto LABEL_15;
  }

  _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v8, v11, type metadata accessor for Apple_Workout_Core_RacePositionUnknown);
  return Apple_Workout_Core_RacePosition.unknown.modify;
}

uint64_t Apple_Workout_Core_RacePosition.expired.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v10 - v6;
  outlined init with copy of Apple_Workout_Core_RacePosition?(v2, &v10 - v6, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v7, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      return _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v7, a1, type metadata accessor for Apple_Workout_Core_RacePositionExpired);
    }

    outlined destroy of Apple_Workout_Core_RacePosition(v7, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  }

  return UnknownStorage.init()();
}

uint64_t key path getter for Apple_Workout_Core_RacePosition.expired : Apple_Workout_Core_RacePosition@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v10 - v6;
  outlined init with copy of Apple_Workout_Core_RacePosition?(a1, &v10 - v6, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v7, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      return _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v7, a2, type metadata accessor for Apple_Workout_Core_RacePositionExpired);
    }

    outlined destroy of Apple_Workout_Core_RacePosition(v7, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  }

  return UnknownStorage.init()();
}

uint64_t key path setter for Apple_Workout_Core_RacePosition.notYetOnRoute : Apple_Workout_Core_RacePosition(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t a7)
{
  v10 = (a5)(0, a2, a3, a4);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v16 - v12;
  outlined init with copy of Apple_Workout_Core_RacePosition(a1, &v16 - v12, a6);
  _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(a2, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v13, a2, a6);
  v14 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v14 - 8) + 56))(a2, 0, 1, v14);
}

void (*Apple_Workout_Core_RacePosition.expired.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR) - 8) + 64);
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
  v9 = *(*(type metadata accessor for Apple_Workout_Core_RacePositionExpired(0) - 8) + 64);
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
  outlined init with copy of Apple_Workout_Core_RacePosition?(v1, v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v12 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
LABEL_15:
    UnknownStorage.init()();
    return Apple_Workout_Core_RacePosition.expired.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 5)
  {
    outlined destroy of Apple_Workout_Core_RacePosition(v8, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
    goto LABEL_15;
  }

  _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v8, v11, type metadata accessor for Apple_Workout_Core_RacePositionExpired);
  return Apple_Workout_Core_RacePosition.expired.modify;
}

void Apple_Workout_Core_RacePosition.notYetOnRoute.modify(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v7 = (*a1)[4];
  v8 = (*a1)[5];
  v9 = (*a1)[2];
  v10 = (*a1)[3];
  v12 = **a1;
  v11 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of Apple_Workout_Core_RacePosition((*a1)[3], v9, a3);
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v12, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v9, v12, a3);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(v12, 0, 1, v7);
    outlined destroy of Apple_Workout_Core_RacePosition(v10, a5);
  }

  else
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(**a1, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v10, v12, a3);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(v12, 0, 1, v7);
  }

  free(v10);
  free(v9);
  free(v11);

  free(v6);
}

uint64_t Apple_Workout_Core_RacePosition.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_RacePosition(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_RacePosition.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_RacePosition(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t static Apple_Workout_Core_RacePositionOnRoute.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  type metadata accessor for Apple_Workout_Core_RacePositionOnRoute(0);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t static Apple_Workout_Core_RacePositionNotYetOnRoute.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t Apple_Workout_Core_RacePositionOnRoute.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_RacePositionOnRoute(0) + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_RacePositionOnRoute.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_RacePositionOnRoute(0) + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Workout_Core_RacePositionNotYetOnRoute.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Apple_Workout_Core_RacePositionNotYetOnRoute.unknownFields.setter(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Apple_Workout_Core_RacePositionStatePublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result <= 4)
      {
        switch(result)
        {
          case 1:
            lazy protocol witness table accessor for type Apple_Workout_Core_RacePositionState and conformance Apple_Workout_Core_RacePositionState();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 2:
            closure #2 in Apple_Workout_Core_RacePositionStatePublisher.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
            break;
          case 4:
            goto LABEL_4;
        }
      }

      else if (result < 8 || result == 8)
      {
LABEL_4:
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #2 in Apple_Workout_Core_RacePositionStatePublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
  type metadata accessor for Apple_Workout_Core_RacePosition(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePosition and conformance Apple_Workout_Core_RacePosition, type metadata accessor for Apple_Workout_Core_RacePosition, &protocol conformance descriptor for Apple_Workout_Core_RacePosition);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Apple_Workout_Core_RacePositionStatePublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (lazy protocol witness table accessor for type Apple_Workout_Core_RacePositionState and conformance Apple_Workout_Core_RacePositionState(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in Apple_Workout_Core_RacePositionStatePublisher.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      if (v3[2])
      {
        dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
      }

      if (v3[3])
      {
        dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
      }

      if (v3[4])
      {
        dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
      }

      if (v3[5])
      {
        dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
      }

      if (v3[6])
      {
        dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
      }

      type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_RacePositionStatePublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
  outlined init with copy of Apple_Workout_Core_RacePosition?(a1 + *(v14 + 44), v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  }

  _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v8, v13, type metadata accessor for Apple_Workout_Core_RacePosition);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePosition and conformance Apple_Workout_Core_RacePosition, type metadata accessor for Apple_Workout_Core_RacePosition, &protocol conformance descriptor for Apple_Workout_Core_RacePosition);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_RacePosition(v13, type metadata accessor for Apple_Workout_Core_RacePosition);
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_RacePositionStatePublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0;
  UnknownStorage.init()();
  v4 = *(a1 + 44);
  v5 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_RacePositionStatePublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_RacePositionStatePublisher(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_RacePositionStatePublisher(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionStatePublisher and conformance Apple_Workout_Core_RacePositionStatePublisher, type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher, &protocol conformance descriptor for Apple_Workout_Core_RacePositionStatePublisher);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_RacePositionStatePublisher(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionStatePublisher and conformance Apple_Workout_Core_RacePositionStatePublisher, type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher, &protocol conformance descriptor for Apple_Workout_Core_RacePositionStatePublisher);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_RacePositionStatePublisher(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionStatePublisher and conformance Apple_Workout_Core_RacePositionStatePublisher, type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher, &protocol conformance descriptor for Apple_Workout_Core_RacePositionStatePublisher);

  return Message.hash(into:)();
}

uint64_t Apple_Workout_Core_RacePosition.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          closure #4 in Apple_Workout_Core_RacePosition.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
          break;
        case 5:
          closure #5 in Apple_Workout_Core_RacePosition.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
          break;
        case 6:
          closure #6 in Apple_Workout_Core_RacePosition.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          closure #1 in Apple_Workout_Core_RacePosition.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
          break;
        case 2:
          closure #2 in Apple_Workout_Core_RacePosition.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
          break;
        case 3:
          closure #3 in Apple_Workout_Core_RacePosition.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_RacePosition.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute(0);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v47 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v46 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v44 - v14;
  v16 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v44 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_RacePositionNotYetOnRouteVSgMd, &_s11WorkoutCore06Apple_a1_B26_RacePositionNotYetOnRouteVSgMR);
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
  outlined init with copy of Apple_Workout_Core_RacePosition?(a1, v15, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v44 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v15, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
    v36 = v51;
    v37 = v16;
  }

  else
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v15, v24, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v24, v21, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of Apple_Workout_Core_RacePosition(v21, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
      v36 = v51;
    }

    else
    {
      _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v31, &_s11WorkoutCore06Apple_a1_B26_RacePositionNotYetOnRouteVSgMd, &_s11WorkoutCore06Apple_a1_B26_RacePositionNotYetOnRouteVSgMR);
      v38 = v46;
      _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v21, v46, type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute);
      _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v38, v31, type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute);
      v36 = v51;
      v34(v31, 0, 1, v51);
    }
  }

  v39 = v49;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionNotYetOnRoute and conformance Apple_Workout_Core_RacePositionNotYetOnRoute, type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute, &protocol conformance descriptor for Apple_Workout_Core_RacePositionNotYetOnRoute);
  v40 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v31, &_s11WorkoutCore06Apple_a1_B26_RacePositionNotYetOnRouteVSgMd, &_s11WorkoutCore06Apple_a1_B26_RacePositionNotYetOnRouteVSgMR);
  }

  outlined init with copy of Apple_Workout_Core_RacePosition?(v31, v39, &_s11WorkoutCore06Apple_a1_B26_RacePositionNotYetOnRouteVSgMd, &_s11WorkoutCore06Apple_a1_B26_RacePositionNotYetOnRouteVSgMR);
  if ((*(v48 + 48))(v39, 1, v36) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v31, &_s11WorkoutCore06Apple_a1_B26_RacePositionNotYetOnRouteVSgMd, &_s11WorkoutCore06Apple_a1_B26_RacePositionNotYetOnRouteVSgMR);
    return _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v39, &_s11WorkoutCore06Apple_a1_B26_RacePositionNotYetOnRouteVSgMd, &_s11WorkoutCore06Apple_a1_B26_RacePositionNotYetOnRouteVSgMR);
  }

  else
  {
    v42 = v47;
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v39, v47, type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v31, &_s11WorkoutCore06Apple_a1_B26_RacePositionNotYetOnRouteVSgMd, &_s11WorkoutCore06Apple_a1_B26_RacePositionNotYetOnRouteVSgMR);
    v43 = v45;
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v45, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v42, v43, type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v43, 0, 1, v37);
  }
}

uint64_t closure #2 in Apple_Workout_Core_RacePosition.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_RacePositionOnRoute(0);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v46 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v47 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v44 - v14;
  v16 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v44 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_RacePositionOnRouteVSgMd, &_s11WorkoutCore06Apple_a1_B20_RacePositionOnRouteVSgMR);
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
  outlined init with copy of Apple_Workout_Core_RacePosition?(a1, v15, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v44 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v15, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
    v36 = v51;
    v37 = v16;
  }

  else
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v15, v24, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v24, v21, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v31, &_s11WorkoutCore06Apple_a1_B20_RacePositionOnRouteVSgMd, &_s11WorkoutCore06Apple_a1_B20_RacePositionOnRouteVSgMR);
      v38 = v47;
      _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v21, v47, type metadata accessor for Apple_Workout_Core_RacePositionOnRoute);
      _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v38, v31, type metadata accessor for Apple_Workout_Core_RacePositionOnRoute);
      v36 = v51;
      v34(v31, 0, 1, v51);
    }

    else
    {
      outlined destroy of Apple_Workout_Core_RacePosition(v21, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
      v36 = v51;
    }
  }

  v39 = v49;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionOnRoute and conformance Apple_Workout_Core_RacePositionOnRoute, type metadata accessor for Apple_Workout_Core_RacePositionOnRoute, &protocol conformance descriptor for Apple_Workout_Core_RacePositionOnRoute);
  v40 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v31, &_s11WorkoutCore06Apple_a1_B20_RacePositionOnRouteVSgMd, &_s11WorkoutCore06Apple_a1_B20_RacePositionOnRouteVSgMR);
  }

  outlined init with copy of Apple_Workout_Core_RacePosition?(v31, v39, &_s11WorkoutCore06Apple_a1_B20_RacePositionOnRouteVSgMd, &_s11WorkoutCore06Apple_a1_B20_RacePositionOnRouteVSgMR);
  if ((*(v48 + 48))(v39, 1, v36) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v31, &_s11WorkoutCore06Apple_a1_B20_RacePositionOnRouteVSgMd, &_s11WorkoutCore06Apple_a1_B20_RacePositionOnRouteVSgMR);
    return _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v39, &_s11WorkoutCore06Apple_a1_B20_RacePositionOnRouteVSgMd, &_s11WorkoutCore06Apple_a1_B20_RacePositionOnRouteVSgMR);
  }

  else
  {
    v42 = v46;
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v39, v46, type metadata accessor for Apple_Workout_Core_RacePositionOnRoute);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v31, &_s11WorkoutCore06Apple_a1_B20_RacePositionOnRouteVSgMd, &_s11WorkoutCore06Apple_a1_B20_RacePositionOnRouteVSgMR);
    v43 = v45;
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v45, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v42, v43, type metadata accessor for Apple_Workout_Core_RacePositionOnRoute);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v43, 0, 1, v37);
  }
}

uint64_t closure #3 in Apple_Workout_Core_RacePosition.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_RacePositionOffRoute(0);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v46 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v47 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v44 - v14;
  v16 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v44 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B21_RacePositionOffRouteVSgMd, &_s11WorkoutCore06Apple_a1_B21_RacePositionOffRouteVSgMR);
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
  outlined init with copy of Apple_Workout_Core_RacePosition?(a1, v15, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v44 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v15, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
    v36 = v51;
    v37 = v16;
  }

  else
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v15, v24, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v24, v21, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v31, &_s11WorkoutCore06Apple_a1_B21_RacePositionOffRouteVSgMd, &_s11WorkoutCore06Apple_a1_B21_RacePositionOffRouteVSgMR);
      v38 = v47;
      _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v21, v47, type metadata accessor for Apple_Workout_Core_RacePositionOffRoute);
      _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v38, v31, type metadata accessor for Apple_Workout_Core_RacePositionOffRoute);
      v36 = v51;
      v34(v31, 0, 1, v51);
    }

    else
    {
      outlined destroy of Apple_Workout_Core_RacePosition(v21, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
      v36 = v51;
    }
  }

  v39 = v49;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionOffRoute and conformance Apple_Workout_Core_RacePositionOffRoute, type metadata accessor for Apple_Workout_Core_RacePositionOffRoute, &protocol conformance descriptor for Apple_Workout_Core_RacePositionOffRoute);
  v40 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v31, &_s11WorkoutCore06Apple_a1_B21_RacePositionOffRouteVSgMd, &_s11WorkoutCore06Apple_a1_B21_RacePositionOffRouteVSgMR);
  }

  outlined init with copy of Apple_Workout_Core_RacePosition?(v31, v39, &_s11WorkoutCore06Apple_a1_B21_RacePositionOffRouteVSgMd, &_s11WorkoutCore06Apple_a1_B21_RacePositionOffRouteVSgMR);
  if ((*(v48 + 48))(v39, 1, v36) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v31, &_s11WorkoutCore06Apple_a1_B21_RacePositionOffRouteVSgMd, &_s11WorkoutCore06Apple_a1_B21_RacePositionOffRouteVSgMR);
    return _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v39, &_s11WorkoutCore06Apple_a1_B21_RacePositionOffRouteVSgMd, &_s11WorkoutCore06Apple_a1_B21_RacePositionOffRouteVSgMR);
  }

  else
  {
    v42 = v46;
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v39, v46, type metadata accessor for Apple_Workout_Core_RacePositionOffRoute);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v31, &_s11WorkoutCore06Apple_a1_B21_RacePositionOffRouteVSgMd, &_s11WorkoutCore06Apple_a1_B21_RacePositionOffRouteVSgMR);
    v43 = v45;
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v45, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v42, v43, type metadata accessor for Apple_Workout_Core_RacePositionOffRoute);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v43, 0, 1, v37);
  }
}

uint64_t closure #4 in Apple_Workout_Core_RacePosition.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_RacePositionCompleted(0);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v46 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v47 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v44 - v14;
  v16 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v44 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_RacePositionCompletedVSgMd, &_s11WorkoutCore06Apple_a1_B22_RacePositionCompletedVSgMR);
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
  outlined init with copy of Apple_Workout_Core_RacePosition?(a1, v15, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v44 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v15, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
    v36 = v51;
    v37 = v16;
  }

  else
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v15, v24, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v24, v21, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v31, &_s11WorkoutCore06Apple_a1_B22_RacePositionCompletedVSgMd, &_s11WorkoutCore06Apple_a1_B22_RacePositionCompletedVSgMR);
      v38 = v47;
      _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v21, v47, type metadata accessor for Apple_Workout_Core_RacePositionCompleted);
      _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v38, v31, type metadata accessor for Apple_Workout_Core_RacePositionCompleted);
      v36 = v51;
      v34(v31, 0, 1, v51);
    }

    else
    {
      outlined destroy of Apple_Workout_Core_RacePosition(v21, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
      v36 = v51;
    }
  }

  v39 = v49;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionCompleted and conformance Apple_Workout_Core_RacePositionCompleted, type metadata accessor for Apple_Workout_Core_RacePositionCompleted, &protocol conformance descriptor for Apple_Workout_Core_RacePositionCompleted);
  v40 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v31, &_s11WorkoutCore06Apple_a1_B22_RacePositionCompletedVSgMd, &_s11WorkoutCore06Apple_a1_B22_RacePositionCompletedVSgMR);
  }

  outlined init with copy of Apple_Workout_Core_RacePosition?(v31, v39, &_s11WorkoutCore06Apple_a1_B22_RacePositionCompletedVSgMd, &_s11WorkoutCore06Apple_a1_B22_RacePositionCompletedVSgMR);
  if ((*(v48 + 48))(v39, 1, v36) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v31, &_s11WorkoutCore06Apple_a1_B22_RacePositionCompletedVSgMd, &_s11WorkoutCore06Apple_a1_B22_RacePositionCompletedVSgMR);
    return _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v39, &_s11WorkoutCore06Apple_a1_B22_RacePositionCompletedVSgMd, &_s11WorkoutCore06Apple_a1_B22_RacePositionCompletedVSgMR);
  }

  else
  {
    v42 = v46;
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v39, v46, type metadata accessor for Apple_Workout_Core_RacePositionCompleted);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v31, &_s11WorkoutCore06Apple_a1_B22_RacePositionCompletedVSgMd, &_s11WorkoutCore06Apple_a1_B22_RacePositionCompletedVSgMR);
    v43 = v45;
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v45, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v42, v43, type metadata accessor for Apple_Workout_Core_RacePositionCompleted);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v43, 0, 1, v37);
  }
}

uint64_t closure #5 in Apple_Workout_Core_RacePosition.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_RacePositionUnknown(0);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v46 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v47 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v44 - v14;
  v16 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v44 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_RacePositionUnknownVSgMd, &_s11WorkoutCore06Apple_a1_B20_RacePositionUnknownVSgMR);
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
  outlined init with copy of Apple_Workout_Core_RacePosition?(a1, v15, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v44 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v15, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
    v36 = v51;
    v37 = v16;
  }

  else
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v15, v24, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v24, v21, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v31, &_s11WorkoutCore06Apple_a1_B20_RacePositionUnknownVSgMd, &_s11WorkoutCore06Apple_a1_B20_RacePositionUnknownVSgMR);
      v38 = v47;
      _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v21, v47, type metadata accessor for Apple_Workout_Core_RacePositionUnknown);
      _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v38, v31, type metadata accessor for Apple_Workout_Core_RacePositionUnknown);
      v36 = v51;
      v34(v31, 0, 1, v51);
    }

    else
    {
      outlined destroy of Apple_Workout_Core_RacePosition(v21, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
      v36 = v51;
    }
  }

  v39 = v49;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionUnknown and conformance Apple_Workout_Core_RacePositionUnknown, type metadata accessor for Apple_Workout_Core_RacePositionUnknown, &protocol conformance descriptor for Apple_Workout_Core_RacePositionUnknown);
  v40 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v31, &_s11WorkoutCore06Apple_a1_B20_RacePositionUnknownVSgMd, &_s11WorkoutCore06Apple_a1_B20_RacePositionUnknownVSgMR);
  }

  outlined init with copy of Apple_Workout_Core_RacePosition?(v31, v39, &_s11WorkoutCore06Apple_a1_B20_RacePositionUnknownVSgMd, &_s11WorkoutCore06Apple_a1_B20_RacePositionUnknownVSgMR);
  if ((*(v48 + 48))(v39, 1, v36) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v31, &_s11WorkoutCore06Apple_a1_B20_RacePositionUnknownVSgMd, &_s11WorkoutCore06Apple_a1_B20_RacePositionUnknownVSgMR);
    return _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v39, &_s11WorkoutCore06Apple_a1_B20_RacePositionUnknownVSgMd, &_s11WorkoutCore06Apple_a1_B20_RacePositionUnknownVSgMR);
  }

  else
  {
    v42 = v46;
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v39, v46, type metadata accessor for Apple_Workout_Core_RacePositionUnknown);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v31, &_s11WorkoutCore06Apple_a1_B20_RacePositionUnknownVSgMd, &_s11WorkoutCore06Apple_a1_B20_RacePositionUnknownVSgMR);
    v43 = v45;
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v45, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v42, v43, type metadata accessor for Apple_Workout_Core_RacePositionUnknown);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v43, 0, 1, v37);
  }
}

uint64_t closure #6 in Apple_Workout_Core_RacePosition.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_RacePositionExpired(0);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v46 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v47 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v44 - v14;
  v16 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v44 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_RacePositionExpiredVSgMd, &_s11WorkoutCore06Apple_a1_B20_RacePositionExpiredVSgMR);
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
  outlined init with copy of Apple_Workout_Core_RacePosition?(a1, v15, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v44 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v15, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
    v36 = v51;
    v37 = v16;
  }

  else
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v15, v24, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v24, v21, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v31, &_s11WorkoutCore06Apple_a1_B20_RacePositionExpiredVSgMd, &_s11WorkoutCore06Apple_a1_B20_RacePositionExpiredVSgMR);
      v38 = v47;
      _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v21, v47, type metadata accessor for Apple_Workout_Core_RacePositionExpired);
      _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v38, v31, type metadata accessor for Apple_Workout_Core_RacePositionExpired);
      v36 = v51;
      v34(v31, 0, 1, v51);
    }

    else
    {
      outlined destroy of Apple_Workout_Core_RacePosition(v21, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
      v36 = v51;
    }
  }

  v39 = v49;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionExpired and conformance Apple_Workout_Core_RacePositionExpired, type metadata accessor for Apple_Workout_Core_RacePositionExpired, &protocol conformance descriptor for Apple_Workout_Core_RacePositionExpired);
  v40 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v31, &_s11WorkoutCore06Apple_a1_B20_RacePositionExpiredVSgMd, &_s11WorkoutCore06Apple_a1_B20_RacePositionExpiredVSgMR);
  }

  outlined init with copy of Apple_Workout_Core_RacePosition?(v31, v39, &_s11WorkoutCore06Apple_a1_B20_RacePositionExpiredVSgMd, &_s11WorkoutCore06Apple_a1_B20_RacePositionExpiredVSgMR);
  if ((*(v48 + 48))(v39, 1, v36) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v31, &_s11WorkoutCore06Apple_a1_B20_RacePositionExpiredVSgMd, &_s11WorkoutCore06Apple_a1_B20_RacePositionExpiredVSgMR);
    return _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v39, &_s11WorkoutCore06Apple_a1_B20_RacePositionExpiredVSgMd, &_s11WorkoutCore06Apple_a1_B20_RacePositionExpiredVSgMR);
  }

  else
  {
    v42 = v46;
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v39, v46, type metadata accessor for Apple_Workout_Core_RacePositionExpired);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v31, &_s11WorkoutCore06Apple_a1_B20_RacePositionExpiredVSgMd, &_s11WorkoutCore06Apple_a1_B20_RacePositionExpiredVSgMR);
    v43 = v45;
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v45, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v42, v43, type metadata accessor for Apple_Workout_Core_RacePositionExpired);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v43, 0, 1, v37);
  }
}

uint64_t Apple_Workout_Core_RacePosition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v15 - v10;
  outlined init with copy of Apple_Workout_Core_RacePosition?(v3, &v15 - v10, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v12 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_14;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      closure #4 in Apple_Workout_Core_RacePosition.traverse<A>(visitor:)(v3, a1, a2, a3);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      closure #5 in Apple_Workout_Core_RacePosition.traverse<A>(visitor:)(v3, a1, a2, a3);
    }

    else
    {
      closure #6 in Apple_Workout_Core_RacePosition.traverse<A>(visitor:)(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      closure #2 in Apple_Workout_Core_RacePosition.traverse<A>(visitor:)(v3, a1, a2, a3);
    }

    else
    {
      closure #3 in Apple_Workout_Core_RacePosition.traverse<A>(visitor:)(v3, a1, a2, a3);
    }
  }

  else
  {
    closure #1 in Apple_Workout_Core_RacePosition.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = outlined destroy of Apple_Workout_Core_RacePosition(v11, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  if (!v4)
  {
LABEL_14:
    type metadata accessor for Apple_Workout_Core_RacePosition(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_RacePosition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_RacePosition?(a1, v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v8, v12, type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionNotYetOnRoute and conformance Apple_Workout_Core_RacePositionNotYetOnRoute, type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute, &protocol conformance descriptor for Apple_Workout_Core_RacePositionNotYetOnRoute);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_Core_RacePosition(v12, type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute);
  }

  result = outlined destroy of Apple_Workout_Core_RacePosition(v8, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t closure #2 in Apple_Workout_Core_RacePosition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_RacePositionOnRoute(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_RacePosition?(a1, v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v8, v12, type metadata accessor for Apple_Workout_Core_RacePositionOnRoute);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionOnRoute and conformance Apple_Workout_Core_RacePositionOnRoute, type metadata accessor for Apple_Workout_Core_RacePositionOnRoute, &protocol conformance descriptor for Apple_Workout_Core_RacePositionOnRoute);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_Core_RacePosition(v12, type metadata accessor for Apple_Workout_Core_RacePositionOnRoute);
  }

  result = outlined destroy of Apple_Workout_Core_RacePosition(v8, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t closure #3 in Apple_Workout_Core_RacePosition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_RacePositionOffRoute(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_RacePosition?(a1, v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v8, v12, type metadata accessor for Apple_Workout_Core_RacePositionOffRoute);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionOffRoute and conformance Apple_Workout_Core_RacePositionOffRoute, type metadata accessor for Apple_Workout_Core_RacePositionOffRoute, &protocol conformance descriptor for Apple_Workout_Core_RacePositionOffRoute);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_Core_RacePosition(v12, type metadata accessor for Apple_Workout_Core_RacePositionOffRoute);
  }

  result = outlined destroy of Apple_Workout_Core_RacePosition(v8, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t closure #4 in Apple_Workout_Core_RacePosition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_RacePositionCompleted(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_RacePosition?(a1, v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v8, v12, type metadata accessor for Apple_Workout_Core_RacePositionCompleted);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionCompleted and conformance Apple_Workout_Core_RacePositionCompleted, type metadata accessor for Apple_Workout_Core_RacePositionCompleted, &protocol conformance descriptor for Apple_Workout_Core_RacePositionCompleted);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_Core_RacePosition(v12, type metadata accessor for Apple_Workout_Core_RacePositionCompleted);
  }

  result = outlined destroy of Apple_Workout_Core_RacePosition(v8, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t closure #5 in Apple_Workout_Core_RacePosition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_RacePositionUnknown(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_RacePosition?(a1, v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v8, v12, type metadata accessor for Apple_Workout_Core_RacePositionUnknown);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionUnknown and conformance Apple_Workout_Core_RacePositionUnknown, type metadata accessor for Apple_Workout_Core_RacePositionUnknown, &protocol conformance descriptor for Apple_Workout_Core_RacePositionUnknown);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_Core_RacePosition(v12, type metadata accessor for Apple_Workout_Core_RacePositionUnknown);
  }

  result = outlined destroy of Apple_Workout_Core_RacePosition(v8, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t closure #6 in Apple_Workout_Core_RacePosition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_RacePositionExpired(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_RacePosition?(a1, v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v8, v12, type metadata accessor for Apple_Workout_Core_RacePositionExpired);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionExpired and conformance Apple_Workout_Core_RacePositionExpired, type metadata accessor for Apple_Workout_Core_RacePositionExpired, &protocol conformance descriptor for Apple_Workout_Core_RacePositionExpired);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_Core_RacePosition(v12, type metadata accessor for Apple_Workout_Core_RacePositionExpired);
  }

  result = outlined destroy of Apple_Workout_Core_RacePosition(v8, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_RacePosition@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_RacePosition@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_RacePosition(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_RacePosition(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePosition and conformance Apple_Workout_Core_RacePosition, type metadata accessor for Apple_Workout_Core_RacePosition, &protocol conformance descriptor for Apple_Workout_Core_RacePosition);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_RacePosition(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePosition and conformance Apple_Workout_Core_RacePosition, type metadata accessor for Apple_Workout_Core_RacePosition, &protocol conformance descriptor for Apple_Workout_Core_RacePosition);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_RacePosition(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePosition and conformance Apple_Workout_Core_RacePosition, type metadata accessor for Apple_Workout_Core_RacePosition, &protocol conformance descriptor for Apple_Workout_Core_RacePosition);

  return Message.hash(into:)();
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1)
{
  return one-time initialization function for _protobuf_nameMap(a1, static Apple_Workout_Core_RacePositionNotYetOnRoute._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Apple_Workout_Core_RacePositionOffRoute._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Apple_Workout_Core_RacePositionCompleted._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Apple_Workout_Core_RacePositionUnknown._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Apple_Workout_Core_RacePositionExpired._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Apple_Workout_Core_MirroredHostProtocolVersion._protobuf_nameMap, 0, "NAPILI_ALIGNED", 14);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Apple_Workout_Core_MirroredHostMachTimestampRequest._protobuf_nameMap, 1, "hostMachTimestamp", 17);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Apple_Workout_Core_MirroredClientPrecisionStart._protobuf_nameMap, 1, "precisionStartReferenceTime", 27);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Apple_Workout_Core_MirroredHostSummaryUpdate._protobuf_nameMap, 1, "hkWorkoutBlob", 13);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_RacePositionNotYetOnRoute(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionNotYetOnRoute and conformance Apple_Workout_Core_RacePositionNotYetOnRoute, type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute, &protocol conformance descriptor for Apple_Workout_Core_RacePositionNotYetOnRoute);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_RacePositionNotYetOnRoute(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionNotYetOnRoute and conformance Apple_Workout_Core_RacePositionNotYetOnRoute, type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute, &protocol conformance descriptor for Apple_Workout_Core_RacePositionNotYetOnRoute);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_RacePositionNotYetOnRoute(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionNotYetOnRoute and conformance Apple_Workout_Core_RacePositionNotYetOnRoute, type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute, &protocol conformance descriptor for Apple_Workout_Core_RacePositionNotYetOnRoute);

  return Message.hash(into:)();
}

uint64_t Apple_Workout_Core_RacePositionOnRoute.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeSingularFloatField(value:)();
    }
  }

  return result;
}

uint64_t Apple_Workout_Core_RacePositionOnRoute.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v4))
  {
    if (!*(v3 + 8) || (result = dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)(), !v4))
    {
      type metadata accessor for Apple_Workout_Core_RacePositionOnRoute(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_RacePositionOnRoute@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_RacePositionOnRoute@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_RacePositionOnRoute(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_RacePositionOnRoute(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionOnRoute and conformance Apple_Workout_Core_RacePositionOnRoute, type metadata accessor for Apple_Workout_Core_RacePositionOnRoute, &protocol conformance descriptor for Apple_Workout_Core_RacePositionOnRoute);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_RacePositionOnRoute(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionOnRoute and conformance Apple_Workout_Core_RacePositionOnRoute, type metadata accessor for Apple_Workout_Core_RacePositionOnRoute, &protocol conformance descriptor for Apple_Workout_Core_RacePositionOnRoute);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_RacePositionOnRoute(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionOnRoute and conformance Apple_Workout_Core_RacePositionOnRoute, type metadata accessor for Apple_Workout_Core_RacePositionOnRoute, &protocol conformance descriptor for Apple_Workout_Core_RacePositionOnRoute);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Apple_Workout_Core_RacePositionOnRoute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_RacePositionOffRoute(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionOffRoute and conformance Apple_Workout_Core_RacePositionOffRoute, type metadata accessor for Apple_Workout_Core_RacePositionOffRoute, &protocol conformance descriptor for Apple_Workout_Core_RacePositionOffRoute);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_RacePositionOffRoute(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionOffRoute and conformance Apple_Workout_Core_RacePositionOffRoute, type metadata accessor for Apple_Workout_Core_RacePositionOffRoute, &protocol conformance descriptor for Apple_Workout_Core_RacePositionOffRoute);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_RacePositionOffRoute(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionOffRoute and conformance Apple_Workout_Core_RacePositionOffRoute, type metadata accessor for Apple_Workout_Core_RacePositionOffRoute, &protocol conformance descriptor for Apple_Workout_Core_RacePositionOffRoute);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_RacePositionCompleted(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionCompleted and conformance Apple_Workout_Core_RacePositionCompleted, type metadata accessor for Apple_Workout_Core_RacePositionCompleted, &protocol conformance descriptor for Apple_Workout_Core_RacePositionCompleted);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_RacePositionCompleted(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionCompleted and conformance Apple_Workout_Core_RacePositionCompleted, type metadata accessor for Apple_Workout_Core_RacePositionCompleted, &protocol conformance descriptor for Apple_Workout_Core_RacePositionCompleted);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_RacePositionCompleted(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionCompleted and conformance Apple_Workout_Core_RacePositionCompleted, type metadata accessor for Apple_Workout_Core_RacePositionCompleted, &protocol conformance descriptor for Apple_Workout_Core_RacePositionCompleted);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_RacePositionUnknown(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionUnknown and conformance Apple_Workout_Core_RacePositionUnknown, type metadata accessor for Apple_Workout_Core_RacePositionUnknown, &protocol conformance descriptor for Apple_Workout_Core_RacePositionUnknown);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_RacePositionUnknown(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionUnknown and conformance Apple_Workout_Core_RacePositionUnknown, type metadata accessor for Apple_Workout_Core_RacePositionUnknown, &protocol conformance descriptor for Apple_Workout_Core_RacePositionUnknown);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_RacePositionUnknown(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionUnknown and conformance Apple_Workout_Core_RacePositionUnknown, type metadata accessor for Apple_Workout_Core_RacePositionUnknown, &protocol conformance descriptor for Apple_Workout_Core_RacePositionUnknown);

  return Message.hash(into:)();
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return _NameMap.init()();
}

uint64_t static Apple_Workout_Core_RacePositionState._protobuf_nameMap.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
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

uint64_t Apple_Workout_Core_RacePositionExpired.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
  }

  while (!v3 && (v5 & 1) == 0);
  return result;
}

Swift::Int Apple_Workout_Core_RacePositionStatePublisher.hashValue.getter(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  Hasher.init(_seed:)();
  a1(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(a2, a3, a4);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_RacePositionNotYetOnRoute@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_RacePositionNotYetOnRoute(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_RacePositionExpired(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionExpired and conformance Apple_Workout_Core_RacePositionExpired, type metadata accessor for Apple_Workout_Core_RacePositionExpired, &protocol conformance descriptor for Apple_Workout_Core_RacePositionExpired);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_RacePositionState@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
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

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_RacePositionExpired(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionExpired and conformance Apple_Workout_Core_RacePositionExpired, type metadata accessor for Apple_Workout_Core_RacePositionExpired, &protocol conformance descriptor for Apple_Workout_Core_RacePositionExpired);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_RacePositionStatePublisher(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_RacePositionExpired(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionExpired and conformance Apple_Workout_Core_RacePositionExpired, type metadata accessor for Apple_Workout_Core_RacePositionExpired, &protocol conformance descriptor for Apple_Workout_Core_RacePositionExpired);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_RacePositionStatePublisher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Apple_Workout_Core_RacePositionNotYetOnRoute(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Apple_Workout_Core_RacePositionStatePublisher.== infix(_:_:)(double *a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSg_ADtMR);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v27 - v15;
  v17 = *a1;
  v18 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v18 <= 2)
    {
      if (v18)
      {
        if (v18 == 1)
        {
          if (v17 != 1)
          {
            goto LABEL_35;
          }
        }

        else if (v17 != 2)
        {
          goto LABEL_35;
        }
      }

      else if (v17)
      {
        goto LABEL_35;
      }
    }

    else if (v18 > 4)
    {
      if (v18 == 5)
      {
        if (v17 != 5)
        {
          goto LABEL_35;
        }
      }

      else if (v17 != 6)
      {
        goto LABEL_35;
      }
    }

    else if (v18 == 3)
    {
      if (v17 != 3)
      {
        goto LABEL_35;
      }
    }

    else if (v17 != 4)
    {
      goto LABEL_35;
    }
  }

  else if (v17 != v18)
  {
    goto LABEL_35;
  }

  v19 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
  v20 = *(v19 + 44);
  v21 = a1;
  v22 = *(v13 + 48);
  v27 = v19;
  v28 = v21;
  outlined init with copy of Apple_Workout_Core_RacePosition?(v21 + v20, v16, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  outlined init with copy of Apple_Workout_Core_RacePosition?(a2 + v20, &v16[v22], &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  v23 = *(v5 + 48);
  if (v23(v16, 1, v4) != 1)
  {
    outlined init with copy of Apple_Workout_Core_RacePosition?(v16, v12, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
    if (v23(&v16[v22], 1, v4) == 1)
    {
      outlined destroy of Apple_Workout_Core_RacePosition(v12, type metadata accessor for Apple_Workout_Core_RacePosition);
      goto LABEL_13;
    }

    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(&v16[v22], v8, type metadata accessor for Apple_Workout_Core_RacePosition);
    v24 = specialized static Apple_Workout_Core_RacePosition.== infix(_:_:)(v12, v8);
    outlined destroy of Apple_Workout_Core_RacePosition(v8, type metadata accessor for Apple_Workout_Core_RacePosition);
    outlined destroy of Apple_Workout_Core_RacePosition(v12, type metadata accessor for Apple_Workout_Core_RacePosition);
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v16, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
    if (v24)
    {
      goto LABEL_22;
    }

LABEL_35:
    v25 = 0;
    return v25 & 1;
  }

  if (v23(&v16[v22], 1, v4) != 1)
  {
LABEL_13:
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v16, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSg_ADtMR);
    goto LABEL_35;
  }

  _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v16, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
LABEL_22:
  if (v28[2] != *(a2 + 16) || v28[3] != *(a2 + 24) || v28[4] != *(a2 + 32) || v28[5] != *(a2 + 40) || v28[6] != *(a2 + 48))
  {
    goto LABEL_35;
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v25 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v25 & 1;
}

uint64_t specialized static Apple_Workout_Core_RacePosition.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSg_AFtMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSg_AFtMR);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of Apple_Workout_Core_RacePosition?(a1, &v23 - v16, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  outlined init with copy of Apple_Workout_Core_RacePosition?(a2, &v17[v18], &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v17, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
LABEL_9:
      type metadata accessor for Apple_Workout_Core_RacePosition(0);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of Apple_Workout_Core_RacePosition?(v17, v12, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    outlined destroy of Apple_Workout_Core_RacePosition(v12, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
LABEL_6:
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v17, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSg_AFtMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSg_AFtMR);
    goto LABEL_7;
  }

  _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(&v17[v18], v8, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  v21 = specialized static Apple_Workout_Core_RacePosition.OneOf_Type.== infix(_:_:)(v12, v8);
  outlined destroy of Apple_Workout_Core_RacePosition(v8, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  outlined destroy of Apple_Workout_Core_RacePosition(v12, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v17, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static Apple_Workout_Core_RacePosition.OneOf_Type.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v76 = a1;
  v77 = a2;
  v2 = type metadata accessor for Apple_Workout_Core_RacePositionExpired(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v75 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Workout_Core_RacePositionUnknown(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v74 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Workout_Core_RacePositionCompleted(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v73 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Workout_Core_RacePositionOffRoute(0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v72 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for Apple_Workout_Core_RacePositionOnRoute(0);
  MEMORY[0x28223BE20](v69, v14);
  v71 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute(0);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v70 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  v21 = MEMORY[0x28223BE20](v19, v20);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v21, v24);
  v27 = &v68 - v26;
  v29 = MEMORY[0x28223BE20](v25, v28);
  v31 = &v68 - v30;
  v33 = MEMORY[0x28223BE20](v29, v32);
  v35 = &v68 - v34;
  v37 = MEMORY[0x28223BE20](v33, v36);
  v39 = (&v68 - v38);
  MEMORY[0x28223BE20](v37, v40);
  v42 = &v68 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeO_AEtMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeO_AEtMR);
  v45 = MEMORY[0x28223BE20](v43 - 8, v44);
  v47 = &v68 - v46;
  v48 = *(v45 + 56);
  outlined init with copy of Apple_Workout_Core_RacePosition(v76, &v68 - v46, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  outlined init with copy of Apple_Workout_Core_RacePosition(v77, &v47[v48], type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        outlined init with copy of Apple_Workout_Core_RacePosition(v47, v27, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
        if (swift_getEnumCaseMultiPayload() != 4)
        {
          v57 = type metadata accessor for Apple_Workout_Core_RacePositionUnknown;
          v58 = v27;
          goto LABEL_26;
        }

        v53 = &v47[v48];
        v54 = v74;
        _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v53, v74, type metadata accessor for Apple_Workout_Core_RacePositionUnknown);
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v52 = dispatch thunk of static Equatable.== infix(_:_:)();
        v55 = type metadata accessor for Apple_Workout_Core_RacePositionUnknown;
        outlined destroy of Apple_Workout_Core_RacePosition(v54, type metadata accessor for Apple_Workout_Core_RacePositionUnknown);
        v56 = v27;
      }

      else
      {
        outlined init with copy of Apple_Workout_Core_RacePosition(v47, v23, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
        if (swift_getEnumCaseMultiPayload() != 5)
        {
          v57 = type metadata accessor for Apple_Workout_Core_RacePositionExpired;
          v58 = v23;
          goto LABEL_26;
        }

        v63 = &v47[v48];
        v64 = v75;
        _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v63, v75, type metadata accessor for Apple_Workout_Core_RacePositionExpired);
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v52 = dispatch thunk of static Equatable.== infix(_:_:)();
        v55 = type metadata accessor for Apple_Workout_Core_RacePositionExpired;
        outlined destroy of Apple_Workout_Core_RacePosition(v64, type metadata accessor for Apple_Workout_Core_RacePositionExpired);
        v56 = v23;
      }

LABEL_29:
      outlined destroy of Apple_Workout_Core_RacePosition(v56, v55);
      outlined destroy of Apple_Workout_Core_RacePosition(v47, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
      return v52 & 1;
    }

    outlined init with copy of Apple_Workout_Core_RacePosition(v47, v31, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v59 = &v47[v48];
      v60 = v73;
      _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v59, v73, type metadata accessor for Apple_Workout_Core_RacePositionCompleted);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v52 = dispatch thunk of static Equatable.== infix(_:_:)();
      v55 = type metadata accessor for Apple_Workout_Core_RacePositionCompleted;
      outlined destroy of Apple_Workout_Core_RacePosition(v60, type metadata accessor for Apple_Workout_Core_RacePositionCompleted);
      v56 = v31;
      goto LABEL_29;
    }

    v57 = type metadata accessor for Apple_Workout_Core_RacePositionCompleted;
    v58 = v31;
LABEL_26:
    outlined destroy of Apple_Workout_Core_RacePosition(v58, v57);
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v47, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeO_AEtMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeO_AEtMR);
LABEL_27:
    v52 = 0;
    return v52 & 1;
  }

  if (!EnumCaseMultiPayload)
  {
    outlined init with copy of Apple_Workout_Core_RacePosition(v47, v42, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
    if (!swift_getEnumCaseMultiPayload())
    {
      v65 = &v47[v48];
      v66 = v70;
      _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v65, v70, type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v52 = dispatch thunk of static Equatable.== infix(_:_:)();
      v55 = type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute;
      outlined destroy of Apple_Workout_Core_RacePosition(v66, type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute);
      v56 = v42;
      goto LABEL_29;
    }

    v57 = type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute;
    v58 = v42;
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload != 1)
  {
    outlined init with copy of Apple_Workout_Core_RacePosition(v47, v35, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v57 = type metadata accessor for Apple_Workout_Core_RacePositionOffRoute;
      v58 = v35;
      goto LABEL_26;
    }

    v61 = &v47[v48];
    v62 = v72;
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v61, v72, type metadata accessor for Apple_Workout_Core_RacePositionOffRoute);
    type metadata accessor for UnknownStorage();
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v52 = dispatch thunk of static Equatable.== infix(_:_:)();
    v55 = type metadata accessor for Apple_Workout_Core_RacePositionOffRoute;
    outlined destroy of Apple_Workout_Core_RacePosition(v62, type metadata accessor for Apple_Workout_Core_RacePositionOffRoute);
    v56 = v35;
    goto LABEL_29;
  }

  outlined init with copy of Apple_Workout_Core_RacePosition(v47, v39, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v57 = type metadata accessor for Apple_Workout_Core_RacePositionOnRoute;
    v58 = v39;
    goto LABEL_26;
  }

  v50 = v71;
  _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(&v47[v48], v71, type metadata accessor for Apple_Workout_Core_RacePositionOnRoute);
  if (*v39 != *v50 || v39[2] != *(v50 + 8))
  {
    outlined destroy of Apple_Workout_Core_RacePosition(v50, type metadata accessor for Apple_Workout_Core_RacePositionOnRoute);
    goto LABEL_32;
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v51 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of Apple_Workout_Core_RacePosition(v50, type metadata accessor for Apple_Workout_Core_RacePositionOnRoute);
  if ((v51 & 1) == 0)
  {
LABEL_32:
    outlined destroy of Apple_Workout_Core_RacePosition(v39, type metadata accessor for Apple_Workout_Core_RacePositionOnRoute);
    outlined destroy of Apple_Workout_Core_RacePosition(v47, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
    goto LABEL_27;
  }

  outlined destroy of Apple_Workout_Core_RacePosition(v39, type metadata accessor for Apple_Workout_Core_RacePositionOnRoute);
  outlined destroy of Apple_Workout_Core_RacePosition(v47, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  v52 = 1;
  return v52 & 1;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_RacePositionState and conformance Apple_Workout_Core_RacePositionState()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionState and conformance Apple_Workout_Core_RacePositionState;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionState and conformance Apple_Workout_Core_RacePositionState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionState and conformance Apple_Workout_Core_RacePositionState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionState and conformance Apple_Workout_Core_RacePositionState;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionState and conformance Apple_Workout_Core_RacePositionState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionState and conformance Apple_Workout_Core_RacePositionState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionState and conformance Apple_Workout_Core_RacePositionState;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionState and conformance Apple_Workout_Core_RacePositionState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionState and conformance Apple_Workout_Core_RacePositionState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionState and conformance Apple_Workout_Core_RacePositionState;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionState and conformance Apple_Workout_Core_RacePositionState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionState and conformance Apple_Workout_Core_RacePositionState);
  }

  return result;
}

uint64_t _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type [Apple_Workout_Core_RacePositionState] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Apple_Workout_Core_RacePositionState] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Apple_Workout_Core_RacePositionState] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore06Apple_a1_B18_RacePositionStateOGMd, &_sSay11WorkoutCore06Apple_a1_B18_RacePositionStateOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Apple_Workout_Core_RacePositionState] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Apple_Workout_Core_RacePositionState(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Apple_Workout_Core_RacePositionState(uint64_t result, int a2, int a3)
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

uint64_t getEnumTag for Apple_Workout_Core_RacePositionState(uint64_t a1)
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

uint64_t destructiveInjectEnumTag for Apple_Workout_Core_RacePositionState(uint64_t result, int a2)
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

void type metadata completion function for Apple_Workout_Core_RacePositionStatePublisher(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Apple_Workout_Core_RacePosition?(319, &lazy cache variable for type metadata for Apple_Workout_Core_RacePosition?, type metadata accessor for Apple_Workout_Core_RacePosition);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for Apple_Workout_Core_RacePosition(uint64_t a1)
{
  type metadata accessor for Apple_Workout_Core_RacePosition?(319, &lazy cache variable for type metadata for Apple_Workout_Core_RacePosition.OneOf_Type?, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Apple_Workout_Core_RacePosition?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata completion function for Apple_Workout_Core_RacePosition.OneOf_Type(uint64_t a1)
{
  result = type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Workout_Core_RacePositionOnRoute(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Apple_Workout_Core_RacePositionOffRoute(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Apple_Workout_Core_RacePositionCompleted(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for Apple_Workout_Core_RacePositionUnknown(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for Apple_Workout_Core_RacePositionExpired(319);
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

uint64_t type metadata completion function for Apple_Workout_Core_RacePositionOnRoute(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_44Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_45Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata completion function for Apple_Workout_Core_RacePositionNotYetOnRoute(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t outlined init with copy of Apple_Workout_Core_RacePosition?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

char *WorkoutGoal.workoutCoreRepresentation(activityType:configurationType:validator:)(void *a1, char *a2, uint64_t a3)
{
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  v83 = *(v77 - 8);
  v8 = MEMORY[0x28223BE20](v77, v7);
  v74 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v75 = &v71 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  v72 = *(v12 - 8);
  v73 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v71 = &v71 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v78 = *(v15 - 8);
  v79 = v15;
  v17 = MEMORY[0x28223BE20](v15, v16);
  v76 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v71 - v20;
  v22 = type metadata accessor for WorkoutGoal();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a2;
  v80 = *(v23 + 16);
  v81 = v3;
  v80(v26, v3, v22);
  v28 = (*(v23 + 88))(v26, v22);
  if (v28 == *MEMORY[0x277CE3F78])
  {
    (*(v23 + 96))(v26, v22);
    v29 = *(v26 + 1);
    v85 = v27;
    if ((*(*a3 + 320))(1, a1, &v85))
    {
      type metadata accessor for NSUnitDuration(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
      v30 = v29;
      Measurement.init(value:unit:)();
      v31 = Measurement<>.hkQuantity.getter();
      v3 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:1 value:v31];

      (*(v78 + 8))(v21, v79);
      return v3;
    }

    v32 = a1;
    goto LABEL_8;
  }

  if (v28 == *MEMORY[0x277CE3F68])
  {
    (*(v23 + 96))(v26, v22);
    v29 = *(v26 + 1);
    v87 = v27;
    v32 = a1;
    v33 = (*(*a3 + 320))(2, a1, &v87);
    v34 = v83;
    if (v33)
    {
      type metadata accessor for NSUnitDuration(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
      v35 = v29;
      v36 = v75;
      Measurement.init(value:unit:)();
      v37 = Measurement<>.hkQuantity.getter();
      v3 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:2 value:v37];

      (*(v34 + 8))(v36, v77);
      return v3;
    }

    goto LABEL_8;
  }

  v45 = v83;
  if (v28 == *MEMORY[0x277CE3F70])
  {
    (*(v23 + 96))(v26, v22);
    v29 = *(v26 + 1);
    v86 = v27;
    v32 = a1;
    if ((*(*a3 + 320))(3, a1, &v86))
    {
      type metadata accessor for NSUnitDuration(0, &lazy cache variable for type metadata for NSUnitEnergy, 0x277CCADF8);
      v46 = v29;
      v47 = v71;
      Measurement.init(value:unit:)();
      v48 = Measurement<>.hkQuantity.getter();
      v3 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:3 value:v48];

      (*(v72 + 8))(v47, v73);
      return v3;
    }

LABEL_8:
    v38 = type metadata accessor for GoalValidationError();
    lazy protocol witness table accessor for type ImportError and conformance ImportError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, MEMORY[0x277CE40B0], MEMORY[0x277CE40B8]);
    swift_allocError();
    v3 = v39;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMd, _s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMR);
    v41 = *(v40 + 48);
    v80(v3, v81, v22);
    *&v3[v41] = [v32 effectiveTypeIdentifier];
    v42 = [v32 isIndoor];
    v43 = 2;
    if (!v42)
    {
      v43 = 3;
    }

    *&v3[*(v40 + 64)] = v43;
    (*(*(v38 - 8) + 104))(v3, *MEMORY[0x277CE40A0], v38);
    swift_willThrow();

    return v3;
  }

  if (v28 == *MEMORY[0x277CE3F58])
  {
    (*(v23 + 96))(v26, v22);
    v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCG_ACySo0C8DurationCGtMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCG_ACySo0C8DurationCGtMR) + 48);
    v50 = v78;
    (*(v78 + 32))(v76, v26, v79);
    v51 = v74;
    (*(v45 + 32))(v74, &v26[v49], v77);
    v88 = v27;
    v52 = a1;
    if (specialized WorkoutConfigurationValidator.supportsDistanceWithTimeGoal(activityType:configurationType:)(a1, &v88))
    {
      v53 = v51;
      v54 = Measurement<>.hkQuantity.getter();
      v55 = v76;
      v56 = Measurement<>.hkQuantity.getter();
      v3 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:2 value:v54 requiredDistance:v56];

      (*(v45 + 8))(v53, v77);
      (*(v50 + 8))(v55, v79);
    }

    else
    {
      v82 = type metadata accessor for GoalValidationError();
      lazy protocol witness table accessor for type ImportError and conformance ImportError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, MEMORY[0x277CE40B0], MEMORY[0x277CE40B8]);
      swift_allocError();
      v3 = v58;
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMd, _s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMR);
      v60 = *(v59 + 48);
      v80(v3, v81, v22);
      *&v3[v60] = [v52 effectiveTypeIdentifier];
      v61 = [v52 isIndoor];
      v62 = 2;
      if (!v61)
      {
        v62 = 3;
      }

      *&v3[*(v59 + 64)] = v62;
      (*(*(v82 - 8) + 104))(v3, *MEMORY[0x277CE40A0]);
      swift_willThrow();
      (*(v45 + 8))(v74, v77);
      (*(v50 + 8))(v76, v79);
    }
  }

  else if (v28 == *MEMORY[0x277CE3F60])
  {
    v84 = v27;
    v57 = a1;
    if ((*(*a3 + 320))(0, a1, &v84))
    {
      return [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:0 value:0];
    }

    else
    {
      v65 = type metadata accessor for GoalValidationError();
      lazy protocol witness table accessor for type ImportError and conformance ImportError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, MEMORY[0x277CE40B0], MEMORY[0x277CE40B8]);
      swift_allocError();
      v3 = v66;
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMd, _s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMR);
      v68 = *(v67 + 48);
      v80(v3, v81, v22);
      *&v3[v68] = [v57 effectiveTypeIdentifier];
      v69 = [v57 isIndoor];
      v70 = 2;
      if (!v69)
      {
        v70 = 3;
      }

      *&v3[*(v67 + 64)] = v70;
      (*(*(v65 - 8) + 104))(v3, *MEMORY[0x277CE40A0], v65);
      swift_willThrow();
    }
  }

  else
  {
    v63 = type metadata accessor for ImportError();
    lazy protocol witness table accessor for type ImportError and conformance ImportError(&lazy protocol witness table cache variable for type ImportError and conformance ImportError, MEMORY[0x277CE4010], MEMORY[0x277CE4018]);
    swift_allocError();
    (*(*(v63 - 8) + 104))(v64, *MEMORY[0x277CE4000], v63);
    swift_willThrow();
    (*(v23 + 8))(v26, v22);
  }

  return v3;
}

Swift::Bool __swiftcall NLSessionActivityGoal.isTimeAndDistanceGoal()()
{
  if ([v0 goalTypeIdentifier] == 2)
  {
    v1 = [v0 requiredDistance];
    if (v1)
    {

      LOBYTE(v1) = 1;
    }
  }

  else
  {
    LOBYTE(v1) = 0;
  }

  return v1;
}

uint64_t lazy protocol witness table accessor for type ImportError and conformance ImportError(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for NSUnitDuration(uint64_t a1, unint64_t *a2, void *a3)
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

id one-time initialization function for hoursMinutesFormatter(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v5 setAllowedUnits_];
  result = [v5 setZeroFormattingBehavior_];
  *a3 = v5;
  return result;
}

id one-time initialization function for accessibilityDateFormatter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v0 setZeroFormattingBehavior_];
  [v0 setUnitsStyle_];
  result = [v0 setAllowedUnits_];
  static ElapsedTimeFormatter.accessibilityDateFormatter = v0;
  return result;
}

uint64_t static ElapsedTimeFormatter.accessibilityStringFromElapsedTime(_:)()
{
  if (one-time initialization token for accessibilityDateFormatter != -1)
  {
    swift_once();
  }

  v0 = [static ElapsedTimeFormatter.accessibilityDateFormatter stringFromTimeInterval_];
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t specialized static ElapsedTimeFormatter.stringFromElapsedTime(_:trimDoubleLeadingZero:compactHours:)(char a1, char a2, double a3)
{
  if (a3 / 60.0 <= 90.0)
  {
    if (one-time initialization token for minutesSecondsFormatter != -1)
    {
      swift_once();
    }

    v5 = &static ElapsedTimeFormatter.minutesSecondsFormatter;
    goto LABEL_11;
  }

  if ((a2 & 1) == 0)
  {
    if (one-time initialization token for hoursMinutesSecondsFormatter != -1)
    {
      swift_once();
    }

    v5 = &static ElapsedTimeFormatter.hoursMinutesSecondsFormatter;
    goto LABEL_11;
  }

  if (one-time initialization token for hoursMinutesFormatter != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v5 = &static ElapsedTimeFormatter.hoursMinutesFormatter;
LABEL_11:
    v6 = *v5;
    if (a3 >= 0.0 || a3 <= -60.0)
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_20B423A90;
    if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (a3 >= 9.22337204e18)
    {
      goto LABEL_27;
    }

    if (a3 > -9.22337204e18)
    {
      v8 = MEMORY[0x277D83C10];
      *(v7 + 56) = MEMORY[0x277D83B88];
      *(v7 + 64) = v8;
      *(v7 + 32) = -a3;
      v9 = v6;
      v10 = String.init(format:_:)();
      v12 = v11;
      if ((a1 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }

  v13 = [v6 stringFromTimeInterval_];
  if (v13)
  {
    v14 = v13;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v15;

    if ((a1 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
    if ((a1 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

LABEL_22:
  v16._countAndFlagsBits = 12336;
  v16._object = 0xE200000000000000;
  if (String.hasPrefix(_:)(v16))
  {

    v17 = specialized Collection.dropFirst(_:)(1uLL, v10, v12);
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v10 = MEMORY[0x20F2E6D00](v17, v19, v21, v23);

    return v10;
  }

LABEL_24:

  return v10;
}

void static AppleExertionScale.range.setter(double a1, double a2)
{
  swift_beginAccess();
  *&static AppleExertionScale.range = a1;
  *(&static AppleExertionScale.range + 1) = a2;
}

void AppleExertionScale.rawValue.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = qword_20B42E308[v2];
  LOBYTE(v2) = asc_20B4590EA[v2];
  *a1 = v3;
  *(a1 + 8) = v2;
}

WorkoutCore::AppleExertionScale_optional __swiftcall AppleExertionScale.init(rawValue:)(WorkoutCore::ExertionValue rawValue)
{
  v2 = v1;
  v3 = *rawValue.level;
  if (*rawValue.level >= 0xBuLL)
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static WOLog.core);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 134218242;
      *(v8 + 4) = v3;
      *(v8 + 12) = 2080;
      *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x800000020B42E1B0, &v11);
      _os_log_impl(&dword_20AEA4000, v6, v7, "Invalid exertion level %ld for %s", v8, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x20F2E9420](v9, -1, -1);
      MEMORY[0x20F2E9420](v8, -1, -1);
    }

    v4 = 11;
  }

  else
  {
    v4 = byte_20B42E360[v3];
  }

  *v2 = v4;
  return rawValue.level;
}

uint64_t static AppleExertionScale.exertionForRow(_:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result > 9)
  {
    _StringGuts.grow(_:)(21);

    strcpy(v4, "Unknown row ");
    BYTE5(v4[1]) = 0;
    HIWORD(v4[1]) = -5120;
    v2 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x20F2E6D80](v2);

    MEMORY[0x20F2E6D80](0x20726F6620, 0xE500000000000000);
    MEMORY[0x20F2E6D80](0xD000000000000012, 0x800000020B42E1B0);
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v4[0], v4[1], "WorkoutCore/AppleExertionScale.swift", 36, 2, 101, 0);
  }

  else
  {
    if ((result & 0x8000000000000000) == 0)
    {
      *a2 = outlined read-only object #0 of static AppleExertionScale.allCases.getter[result + 32];
      return result;
    }

    _StringGuts.grow(_:)(27);

    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x20F2E6D80](v3);

    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000019, 0x800000020B4590B0, "WorkoutCore/AppleExertionScale.swift", 36, 2, 104, 0);
  }

  __break(1u);
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AppleExertionScale()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v6 = v1;
  AppleExertionScale.rawValue.getter(&v4);
  v2 = v5;
  MEMORY[0x20F2E7FF0](v4);
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AppleExertionScale()
{
  v5 = *v0;
  AppleExertionScale.rawValue.getter(&v3);
  v1 = v4;
  MEMORY[0x20F2E7FF0](v3);
  return MEMORY[0x20F2E7FF0](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AppleExertionScale(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  v7 = v2;
  AppleExertionScale.rawValue.getter(&v5);
  v3 = v6;
  MEMORY[0x20F2E7FF0](v5);
  MEMORY[0x20F2E7FF0](v3);
  return Hasher._finalize()();
}

WorkoutCore::AppleExertionScale_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AppleExertionScale(WorkoutCore::ExertionValue a1)
{
  v1 = *(a1.level + 8);
  v3 = *a1.level;
  v4 = v1;
  a1.level = &v3;
  return AppleExertionScale.init(rawValue:)(a1);
}

unint64_t lazy protocol witness table accessor for type AppleExertionScale and conformance AppleExertionScale()
{
  result = lazy protocol witness table cache variable for type AppleExertionScale and conformance AppleExertionScale;
  if (!lazy protocol witness table cache variable for type AppleExertionScale and conformance AppleExertionScale)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleExertionScale and conformance AppleExertionScale);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [AppleExertionScale] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [AppleExertionScale] and conformance [A];
  if (!lazy protocol witness table cache variable for type [AppleExertionScale] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore18AppleExertionScaleOGMd, &_sSay11WorkoutCore18AppleExertionScaleOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AppleExertionScale] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppleExertionScale(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppleExertionScale(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RaceAlerts.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RaceAlerts.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance RaceAlerts.CodingKeys@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance RaceAlerts.CodingKeys, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance RaceAlerts.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance RaceAlerts.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RaceAlerts.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RaceAlerts.CodingKeys and conformance RaceAlerts.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RaceAlerts.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RaceAlerts.CodingKeys and conformance RaceAlerts.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RaceAlerts.__allocating_init(aheadBehindAlertsEnabled:)(char a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t RaceAlerts.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  RaceAlerts.init(from:)(a1);
  return v2;
}

uint64_t RaceAlerts.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore10RaceAlertsC10CodingKeys33_36A94705790B12666887693346F21308LLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore10RaceAlertsC10CodingKeys33_36A94705790B12666887693346F21308LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RaceAlerts.CodingKeys and conformance RaceAlerts.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for RaceAlerts();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v5 + 8))(v8, v4);
    *(v1 + 16) = v10 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

unint64_t lazy protocol witness table accessor for type RaceAlerts.CodingKeys and conformance RaceAlerts.CodingKeys()
{
  result = lazy protocol witness table cache variable for type RaceAlerts.CodingKeys and conformance RaceAlerts.CodingKeys;
  if (!lazy protocol witness table cache variable for type RaceAlerts.CodingKeys and conformance RaceAlerts.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaceAlerts.CodingKeys and conformance RaceAlerts.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RaceAlerts.CodingKeys and conformance RaceAlerts.CodingKeys;
  if (!lazy protocol witness table cache variable for type RaceAlerts.CodingKeys and conformance RaceAlerts.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaceAlerts.CodingKeys and conformance RaceAlerts.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RaceAlerts.CodingKeys and conformance RaceAlerts.CodingKeys;
  if (!lazy protocol witness table cache variable for type RaceAlerts.CodingKeys and conformance RaceAlerts.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaceAlerts.CodingKeys and conformance RaceAlerts.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RaceAlerts.CodingKeys and conformance RaceAlerts.CodingKeys;
  if (!lazy protocol witness table cache variable for type RaceAlerts.CodingKeys and conformance RaceAlerts.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaceAlerts.CodingKeys and conformance RaceAlerts.CodingKeys);
  }

  return result;
}

uint64_t RaceAlerts.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore10RaceAlertsC10CodingKeys33_36A94705790B12666887693346F21308LLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore10RaceAlertsC10CodingKeys33_36A94705790B12666887693346F21308LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RaceAlerts.CodingKeys and conformance RaceAlerts.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  swift_beginAccess();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t static RaceAlerts.defaultRaceAlerts()()
{
  type metadata accessor for RaceAlerts();
  result = swift_allocObject();
  *(result + 16) = 1;
  return result;
}

Swift::Int RaceAlerts.hashValue.getter()
{
  Hasher.init(_seed:)();
  swift_beginAccess();
  Hasher._combine(_:)(*(v0 + 16));
  return Hasher._finalize()();
}

uint64_t protocol witness for Decodable.init(from:) in conformance RaceAlerts@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for RaceAlerts();
  v5 = swift_allocObject();
  result = RaceAlerts.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RaceAlerts()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  swift_beginAccess();
  Hasher._combine(_:)(*(v1 + 16));
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance RaceAlerts()
{
  v1 = *v0;
  swift_beginAccess();
  Hasher._combine(_:)(*(v1 + 16));
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RaceAlerts(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *v1;
  swift_beginAccess();
  Hasher._combine(_:)(*(v2 + 16));
  return Hasher._finalize()();
}

BOOL static RaceAlerts.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  LODWORD(a1) = *(a1 + 16);
  swift_beginAccess();
  return ((a1 ^ *(a2 + 16)) & 1) == 0;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance RaceAlerts(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  LODWORD(v2) = *(v2 + 16);
  swift_beginAccess();
  return ((v2 ^ *(v3 + 16)) & 1) == 0;
}

unint64_t RaceAlerts.description.getter()
{
  _StringGuts.grow(_:)(42);

  swift_beginAccess();
  if (*(v0 + 16))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 16))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x20F2E6D80](v1, v2);

  MEMORY[0x20F2E6D80](62, 0xE100000000000000);
  return 0xD000000000000027;
}

unint64_t lazy protocol witness table accessor for type RaceAlerts and conformance RaceAlerts()
{
  result = lazy protocol witness table cache variable for type RaceAlerts and conformance RaceAlerts;
  if (!lazy protocol witness table cache variable for type RaceAlerts and conformance RaceAlerts)
  {
    type metadata accessor for RaceAlerts();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaceAlerts and conformance RaceAlerts);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RaceAlerts.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for RaceAlerts.CodingKeys(_WORD *result, int a2, int a3)
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

uint64_t WorkoutDeviceType.supportsPedometer(activityType:)(void *a1)
{
  v3 = *v1;
  v4 = [a1 isIndoor];
  v5 = ([a1 isDownhillSnowSport] & 1) == 0 && objc_msgSend(a1, sel_effectiveTypeIdentifier) != 21;
  v6 = v5 & (v4 ^ 1);
  if (v3 == 2)
  {
    v6 = 0;
  }

  if (!v3)
  {
    v5 = 1;
  }

  if (v3 <= 1)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

void static MetricPlatter.addGymKitMetrics(to:workoutSettingsManager:)(id a1@<X1>, char *a2@<X0>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 1);
  v8 = [a1 defaultMetricsProvider];
  if (!v8)
  {
    __break(1u);
LABEL_34:
    __break(1u);
    return;
  }

  v9 = v8;
  v28 = v5;
  v29 = v6;
  v30 = a3;
  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v31 = MEMORY[0x277D84F90];
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = (v10 + 32);

    do
    {
      v13 = *v12++;
      if ([objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_])
      {
        MEMORY[0x20F2E6F30]();
        if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      --v11;
    }

    while (v11);
  }

  else
  {
  }

  type metadata accessor for NSNumber();
  isa = Array._bridgeToObjectiveC()().super.isa;

  swift_beginAccess();
  v15 = static MetricSlotProvider.standardMetricSlots;
  v16 = [a1 workoutActivityType];
  v17 = [v9 appendMachineMetricsToMetrics:isa maxNumMetrics:v15 activityType:v16];

  if (!v17)
  {
    goto LABEL_34;
  }

  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v18 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v20 = 0;
    v21 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x20F2E7A20](v20, v18);
      }

      else
      {
        if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v22 = *(v18 + 8 * v20 + 32);
      }

      v23 = v22;
      v24 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v25 = [v22 unsignedIntegerValue];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
      }

      v27 = *(v21 + 2);
      v26 = *(v21 + 3);
      if (v27 >= v26 >> 1)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v21);
      }

      *(v21 + 2) = v27 + 1;
      *&v21[8 * v27 + 32] = v25;
      ++v20;
      if (v24 == i)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  v21 = MEMORY[0x277D84F90];
LABEL_32:

  *v30 = v28;
  *(v30 + 8) = v21;
  *(v30 + 1) = v29;
}

WorkoutCore::RaceRoute __swiftcall RaceRoute.init(locations:)(Swift::OpaquePointer locations)
{
  v2 = v1;
  v3 = specialized _arrayConditionalCast<A, B>(_:)(locations._rawValue, &lazy cache variable for type metadata for CLRoutePoint, 0x277CBFC78);

  v5 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1)
{
  return specialized _arrayConditionalCast<A, B>(_:)(a1, &lazy cache variable for type metadata for CLRoutePoint, 0x277CBFC78);
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v24 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v26 = &v24 - v13;
  v14 = *(a1 + 16);
  v28 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
  v15 = v28;
  if (v14)
  {
    v16 = a1 + 32;
    v24 = v5;
    v25 = (v7 + 56);
    v17 = (v7 + 32);
    while (1)
    {
      outlined init with copy of Any(v16, v27);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      (*v25)(v5, 0, 1, v6);
      v18 = *v17;
      v19 = v26;
      (*v17)(v26, v5, v6);
      v18(v11, v19, v6);
      v28 = v15;
      v20 = v11;
      v22 = *(v15 + 16);
      v21 = *(v15 + 24);
      if (v22 >= v21 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
        v15 = v28;
      }

      *(v15 + 16) = v22 + 1;
      v18((v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v22), v20, v6);
      v16 += 32;
      --v14;
      v11 = v20;
      v5 = v24;
      if (!v14)
      {
        return v15;
      }
    }

    (*v25)(v5, 1, 1, v6);
    outlined destroy of UUID?(v5);
    return 0;
  }

  return v15;
}

{
  return specialized _arrayConditionalCast<A, B>(_:)(a1, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
}

{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      outlined init with copy of Any(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t getEnumTagSinglePayload for RaceRoute(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for RaceRoute(uint64_t result, int a2, int a3)
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

uint64_t specialized _arrayConditionalCast<A, B>(_:)(unint64_t a1)
{
  v8 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  specialized ContiguousArray.reserveCapacity(_:)();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x20F2E7A20](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __CocoaSet.count.getter();
    specialized ContiguousArray.reserveCapacity(_:)();
  }

  return v8;
}

uint64_t specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1, unint64_t *a2, void *a3)
{
  v10 = MEMORY[0x277D84F90];
  v6 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v6)
  {
    return v10;
  }

  for (i = a1 + 32; ; i += 32)
  {
    outlined init with copy of Any(i, v9);
    type metadata accessor for FIUIWorkoutActivityType(0, a2, a3);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v6)
    {
      return v10;
    }
  }

  return 0;
}

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t one-time initialization function for kMGQWatchAppButtonCapability()
{
  result = MEMORY[0x20F2E6C00](0xD000000000000018, 0x800000020B459150);
  static MobileGestaltConstants.kMGQWatchAppButtonCapability = result;
  return result;
}

id static MobileGestaltConstants.kMGQWatchAppButtonCapability.getter()
{
  if (one-time initialization token for kMGQWatchAppButtonCapability != -1)
  {
    swift_once();
  }

  v1 = static MobileGestaltConstants.kMGQWatchAppButtonCapability;

  return v1;
}

uint64_t getEnumTagSinglePayload for MobileGestaltConstants(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MobileGestaltConstants(_WORD *result, int a2, int a3)
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

WorkoutCore::WorkoutNotification::NotificationType_optional __swiftcall WorkoutNotification.NotificationType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of WorkoutNotification.NotificationType.init(rawValue:), v3);

  v7 = 8;
  if (v5 < 8)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t WorkoutNotification.NotificationType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6C61767265746E69;
  v3 = 0x697263736E617274;
  if (v1 != 6)
  {
    v3 = 1701736314;
  }

  v4 = 0x706D6F4365636172;
  if (v1 != 4)
  {
    v4 = 0x647261646E617473;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6E6F7473656C696DLL;
  if (v1 != 2)
  {
    v5 = 0x6D6F437265636170;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void protocol witness for RawRepresentable.rawValue.getter in conformance WorkoutNotification.NotificationType(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x6C61767265746E69;
  v5 = 0xEA00000000007470;
  v6 = 0x697263736E617274;
  if (v2 != 6)
  {
    v6 = 1701736314;
    v5 = 0xE400000000000000;
  }

  v7 = 0xEC0000006574656CLL;
  v8 = 0x706D6F4365636172;
  if (v2 != 4)
  {
    v8 = 0x647261646E617473;
    v7 = 0xE800000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000065;
  v10 = 0x6E6F7473656C696DLL;
  if (v2 != 2)
  {
    v10 = 0x6D6F437265636170;
    v9 = 0xED00006574656C70;
  }

  if (*v1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x800000020B454400;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

void WorkoutNotification.notificationType.getter(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_notificationType;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void WorkoutNotification.notificationType.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_notificationType;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

uint64_t key path setter for WorkoutNotification.units : WorkoutNotification(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_units;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

double WorkoutNotification.units.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t WorkoutNotification.units.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_units;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double WorkoutNotification.displayDuration.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_displayDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

void WorkoutNotification.displayDuration.setter(double a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_displayDuration;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t key path getter for WorkoutNotification.createdAt : WorkoutNotification@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_createdAt;
  swift_beginAccess();
  v5 = type metadata accessor for Date();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t key path setter for WorkoutNotification.createdAt : WorkoutNotification(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_createdAt;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t WorkoutNotification.createdAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_createdAt;
  swift_beginAccess();
  v4 = type metadata accessor for Date();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t WorkoutNotification.createdAt.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_createdAt;
  swift_beginAccess();
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

char *WorkoutNotification.description.getter()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = 91;
  v39 = 0xE100000000000000;
  v6 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_units;
  swift_beginAccess();
  v7 = *(v0 + v6);
  if (v7 >> 62)
  {
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  v35 = v0;
  v36 = v5;
  if (!v8)
  {
LABEL_31:
    v37 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
    v19 = BidirectionalCollection<>.joined(separator:)();
    v21 = v20;

    MEMORY[0x20F2E6D80](v19, v21);

    MEMORY[0x20F2E6D80](93, 0xE100000000000000);
    v23 = v38;
    v22 = v39;
    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v40 = v38;
    v41 = v39;
    MEMORY[0x20F2E6D80](60, 0xE100000000000000);
    v24 = _typeName(_:qualified:)();
    MEMORY[0x20F2E6D80](v24);

    MEMORY[0x20F2E6D80](0x203A6570797420, 0xE700000000000000);
    v25 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_notificationType;
    v26 = v35;
    swift_beginAccess();
    LOBYTE(v37) = *(v26 + v25);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x20F2E6D80](0x3A7374696E75202CLL, 0xE900000000000020);
    MEMORY[0x20F2E6D80](v23, v22);

    MEMORY[0x20F2E6D80](0x697461727564202CLL, 0xEC000000203A6E6FLL);
    swift_beginAccess();
    Double.write<A>(to:)();
    MEMORY[0x20F2E6D80](0x657461657263202CLL, 0xED0000203A744164);
    v27 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_createdAt;
    swift_beginAccess();
    v28 = v26 + v27;
    v29 = v36;
    (*(v2 + 16))(v36, v28, v1);
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x20F2E6D80](v30);

    (*(v2 + 8))(v29, v1);
    MEMORY[0x20F2E6D80](62, 0xE100000000000000);
    return v40;
  }

  v37 = MEMORY[0x277D84F90];

  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v32 = v2;
    v33 = v1;
    v11 = 0;
    v9 = v37;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x20F2E7A20](v11, v7);
      }

      else
      {
        v12 = *(v7 + 8 * v11 + 32);
      }

      swift_beginAccess();
      v13 = *(v12 + 16);

      v14 = 0xEE0065636E656461;
      v15 = 0x4365676172657661;
      switch(v13)
      {
        case 1:
          v15 = 0x5065676172657661;
          goto LABEL_23;
        case 2:
          v15 = 0x5065676172657661;
          v14 = 0xEC0000007265776FLL;
          break;
        case 3:
          v14 = 0xE700000000000000;
          v15 = 0x65636E65646163;
          break;
        case 4:
          v14 = 0xE800000000000000;
          v15 = 0x65636E6174736964;
          break;
        case 5:
          v14 = 0xE600000000000000;
          v15 = 0x796772656E65;
          break;
        case 6:
          v14 = 0xE700000000000000;
          v15 = 0x676E6964616568;
          break;
        case 7:
          v14 = 0xE900000000000065;
          v15 = 0x7461527472616568;
          break;
        case 8:
          v14 = 0xE500000000000000;
          v15 = 0x6567616D69;
          break;
        case 9:
          v14 = 0xE400000000000000;
          v15 = 1701011824;
          break;
        case 10:
          v15 = 0x6874695765636170;
          v14 = 0xEE0053504774756FLL;
          break;
        case 11:
          v14 = 0xE500000000000000;
          v15 = 0x7265776F70;
          break;
        case 12:
          v14 = 0xE800000000000000;
          v15 = 0x656D695465636172;
          break;
        case 13:
          v15 = 0x50676E696C6C6F72;
LABEL_23:
          v14 = 0xEB00000000656361;
          break;
        case 14:
          v14 = 0xE500000000000000;
          v15 = 0x74696C7073;
          break;
        case 15:
          v14 = 0xE600000000000000;
          v15 = 0x676E69727473;
          break;
        case 16:
          v14 = 0xE400000000000000;
          v15 = 1701669236;
          break;
        default:
          break;
      }

      v37 = v9;
      v17 = *(v9 + 16);
      v16 = *(v9 + 24);
      if (v17 >= v16 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
        v9 = v37;
      }

      ++v11;
      *(v9 + 16) = v17 + 1;
      v18 = v9 + 16 * v17;
      *(v18 + 32) = v15;
      *(v18 + 40) = v14;
    }

    while (v8 != v11);

    v1 = v33;
    v2 = v32;
    goto LABEL_31;
  }

  __break(1u);
  return result;
}

id WorkoutNotification.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WorkoutNotification.init()(uint64_t a1)
{
  static Date.now.getter();
  v1[OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_notificationType] = 5;
  *&v1[OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_units] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_displayDuration] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WorkoutNotification(0);
  return objc_msgSendSuper2(&v3, sel_init);
}

id WorkoutNotification.__allocating_init(units:notificationType:displayDuration:)(uint64_t a1, _BYTE *a2, double a3)
{
  v7 = objc_allocWithZone(v3);
  LOBYTE(a2) = *a2;
  static Date.now.getter();
  v7[OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_notificationType] = a2;
  *&v7[OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_units] = a1;
  *&v7[OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_displayDuration] = a3;
  v9.receiver = v7;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

id WorkoutNotification.init(units:notificationType:displayDuration:)(uint64_t a1, char *a2, double a3)
{
  v6 = *a2;
  static Date.now.getter();
  v3[OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_notificationType] = v6;
  *&v3[OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_units] = a1;
  *&v3[OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_displayDuration] = a3;
  v8.receiver = v3;
  v8.super_class = type metadata accessor for WorkoutNotification(0);
  return objc_msgSendSuper2(&v8, sel_init);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutNotification.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance WorkoutNotification.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutNotification.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance WorkoutNotification.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized WorkoutNotification.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance WorkoutNotification.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x7374696E75;
  v4 = 0xEF6E6F6974617275;
  v5 = 0x4479616C70736964;
  if (*v1 != 2)
  {
    v5 = 0x4164657461657263;
    v4 = 0xE900000000000074;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x800000020B454460;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance WorkoutNotification.CodingKeys()
{
  v1 = 0x7374696E75;
  v2 = 0x4479616C70736964;
  if (*v0 != 2)
  {
    v2 = 0x4164657461657263;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
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

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkoutNotification.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized WorkoutNotification.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkoutNotification.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkoutNotification.CodingKeys and conformance WorkoutNotification.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkoutNotification.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkoutNotification.CodingKeys and conformance WorkoutNotification.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

char *WorkoutNotification.init(from:)(void *a1)
{
  v3 = v1;
  v27 = type metadata accessor for Date();
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore0D12NotificationC10CodingKeys33_8DEBBB2F0B07F4632E4FD2278137350ELLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore0D12NotificationC10CodingKeys33_8DEBBB2F0B07F4632E4FD2278137350ELLOGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v23 - v11;
  v26 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_createdAt;
  static Date.now.getter();
  v13 = a1[3];
  v24 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  lazy protocol witness table accessor for type WorkoutNotification.CodingKeys and conformance WorkoutNotification.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v15 = v27;
    __swift_destroy_boxed_opaque_existential_1(v24);
    (*(v25 + 8))(&v3[v26], v15);
    type metadata accessor for WorkoutNotification(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v23 = v7;
    v29[0] = 0;
    v14._countAndFlagsBits = KeyedDecodingContainer.decode(_:forKey:)();
    WorkoutNotification.NotificationType.init(rawValue:)(v14);
    v17 = v29[0];
    if (v29[0] == 8)
    {
      v17 = 5;
    }

    v3[OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_notificationType] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A16NotificationUnitCGMd, &_sSay11WorkoutCore0A16NotificationUnitCGMR);
    v30 = 1;
    lazy protocol witness table accessor for type [WorkoutNotificationUnit] and conformance <A> [A](&lazy protocol witness table cache variable for type [WorkoutNotificationUnit] and conformance <A> [A], &lazy protocol witness table cache variable for type WorkoutNotificationUnit and conformance WorkoutNotificationUnit, &protocol conformance descriptor for WorkoutNotificationUnit, MEMORY[0x277D83978]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v18 = v27;
    *&v3[OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_units] = *v29;
    v29[0] = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    *&v3[OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_displayDuration] = v19;
    v29[0] = 3;
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    v20 = v23;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v9 + 8))(v12, v8);
    v21 = v26;
    swift_beginAccess();
    (*(v25 + 40))(&v3[v21], v20, v18);
    swift_endAccess();
    v22 = type metadata accessor for WorkoutNotification(0);
    v28.receiver = v3;
    v28.super_class = v22;
    v3 = objc_msgSendSuper2(&v28, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  return v3;
}

uint64_t WorkoutNotification.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for Date();
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore0D12NotificationC10CodingKeys33_8DEBBB2F0B07F4632E4FD2278137350ELLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore0D12NotificationC10CodingKeys33_8DEBBB2F0B07F4632E4FD2278137350ELLOGMR);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v20 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type WorkoutNotification.CodingKeys and conformance WorkoutNotification.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  swift_beginAccess();
  v24 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    (*(v10 + 8))(v13, v9);
  }

  else
  {

    v15 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_units;
    swift_beginAccess();
    v23 = *(v3 + v15);
    v22 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A16NotificationUnitCGMd, &_sSay11WorkoutCore0A16NotificationUnitCGMR);
    lazy protocol witness table accessor for type [WorkoutNotificationUnit] and conformance <A> [A](&lazy protocol witness table cache variable for type [WorkoutNotificationUnit] and conformance <A> [A], &lazy protocol witness table cache variable for type WorkoutNotificationUnit and conformance WorkoutNotificationUnit, &protocol conformance descriptor for WorkoutNotificationUnit, MEMORY[0x277D83948]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    swift_beginAccess();
    v22 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_createdAt;
    swift_beginAccess();
    v17 = v20;
    v18 = v3 + v16;
    v19 = v21;
    (*(v20 + 16))(v8, v18, v21);
    v25 = 3;
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v17 + 8))(v8, v19);
    return (*(v10 + 8))(v13, v9);
  }
}

id WorkoutNotification.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutNotification(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *protocol witness for Decodable.init(from:) in conformance WorkoutNotification@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for WorkoutNotification(0));
  result = WorkoutNotification.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void WorkoutNotification.protobuf.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v8 = *(v59 - 8);
  MEMORY[0x28223BE20](v59, v9);
  v52 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0);
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57, v11);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = MEMORY[0x277D84F90];
  v14 = type metadata accessor for Apple_Workout_Core_WorkoutNotification(0);
  UnknownStorage.init()();
  v15 = a1 + *(v14 + 32);
  *v15 = 0;
  v51 = v15;
  *(v15 + 8) = 1;
  v16 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_notificationType;
  swift_beginAccess();
  *a1 = qword_20B42E9A0[*(v1 + v16)];
  *(a1 + 8) = 1;
  v17 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_units;
  swift_beginAccess();
  v18 = *(v1 + v17);
  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_3;
    }

LABEL_23:
    v39 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_displayDuration;
    swift_beginAccess();
    *(a1 + 24) = *(v1 + v39);
    v40 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_createdAt;
    swift_beginAccess();
    (*(v4 + 16))(v7, v1 + v40, v3);
    Date.timeIntervalSinceReferenceDate.getter();
    v42 = v41;
    (*(v4 + 8))(v7, v3);
    v43 = v51;
    *v51 = v42;
    *(v43 + 8) = 0;
    return;
  }

  v44 = *(v1 + v17);
  v45 = __CocoaSet.count.getter();
  v18 = v44;
  v19 = v45;
  if (!v45)
  {
    goto LABEL_23;
  }

LABEL_3:
  if (v19 >= 1)
  {
    v46 = a1;
    v47 = v7;
    v48 = v1;
    v49 = v4;
    v50 = v3;
    v53 = v18 & 0xC000000000000001;
    v58 = (v8 + 56);
    v20 = v18;

    v21 = v20;
    v22 = 0;
    v23 = MEMORY[0x277D84F90];
    v55 = v20;
    v54 = v19;
    do
    {
      if (v53)
      {
        v24 = MEMORY[0x20F2E7A20](v22, v21);
      }

      else
      {
        v24 = *(v21 + 8 * v22 + 32);
      }

      *v13 = 0;
      v13[8] = 1;
      v25 = v57;
      UnknownStorage.init()();
      v26 = &v13[v25[6]];
      *v26 = 0;
      *(v26 + 1) = 0;
      v27 = &v13[v25[7]];
      *v27 = 0;
      v27[8] = 1;
      v28 = v25[8];
      v29 = *v58;
      (*v58)(&v13[v28], 1, 1, v59);
      v30 = &v13[v25[9]];
      *v30 = 0;
      *(v30 + 1) = 0;
      swift_beginAccess();
      *v13 = qword_20B42E9E0[*(v24 + 16)];
      v13[8] = 1;
      swift_beginAccess();
      v31 = *(v24 + 32);
      if (v31)
      {
        *v26 = *(v24 + 24);
        *(v26 + 1) = v31;
      }

      swift_beginAccess();
      if ((*(v24 + 48) & 1) == 0)
      {
        *v27 = *(v24 + 40);
        v27[8] = 0;
      }

      swift_beginAccess();
      v32 = *(v24 + 64);
      if (v32)
      {
        *v30 = *(v24 + 56);
        *(v30 + 1) = v32;
      }

      swift_beginAccess();
      v33 = *(v24 + 72);

      if (v33)
      {
        v34 = v33;

        v35 = v52;
        FIUIWorkoutActivityType.protobuf.getter(v52);

        outlined destroy of Any?(&v13[v28], &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
        outlined init with take of Apple_Workout_Core_WorkoutNotificationUnit(v35, &v13[v28], type metadata accessor for Apple_Workout_Core_Activity);
        v29(&v13[v28], 0, 1, v59);
      }

      else
      {
      }

      v36 = v54;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
      }

      v38 = v23[2];
      v37 = v23[3];
      if (v38 >= v37 >> 1)
      {
        v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v23);
      }

      ++v22;

      v23[2] = v38 + 1;
      outlined init with take of Apple_Workout_Core_WorkoutNotificationUnit(v13, v23 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v38, type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit);
      v21 = v55;
    }

    while (v36 != v22);

    a1 = v46;
    *(v46 + 16) = v23;
    v3 = v50;
    v4 = v49;
    v1 = v48;
    v7 = v47;
    goto LABEL_23;
  }

  __break(1u);
}

_BYTE *Apple_Workout_Core_WorkoutNotification.decoded.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v26 = *(v2 - 8);
  v27 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(type metadata accessor for WorkoutNotification(0)) init];
  v12 = *(v0 + 8);
  v28[3] = *v0;
  v29 = v12;
  Apple_Workout_Core_NotificationType.decoded.getter(v28);
  v13 = v28[0];
  v14 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_notificationType;
  swift_beginAccess();
  v11[v14] = v13;
  v15 = *(v1 + 16);
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_units;
    v18 = v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v19 = *(v7 + 72);
    do
    {
      outlined init with copy of Apple_Workout_Core_WorkoutNotificationUnit(v18, v10);
      Apple_Workout_Core_WorkoutNotificationUnit.decoded.getter();
      outlined destroy of Apple_Workout_Core_WorkoutNotificationUnit(v10);
      v20 = swift_beginAccess();
      MEMORY[0x20F2E6F30](v20);
      if (*((*&v11[v17] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v11[v17] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v25 = *((*&v11[v17] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v18 += v19;
      --v16;
    }

    while (v16);
  }

  v21 = *(v1 + 24);
  v22 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_displayDuration;
  swift_beginAccess();
  *&v11[v22] = v21;
  if ((*(v1 + *(type metadata accessor for Apple_Workout_Core_WorkoutNotification(0) + 32) + 8) & 1) == 0)
  {
    Date.init(timeIntervalSinceReferenceDate:)();
    v23 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_createdAt;
    swift_beginAccess();
    (*(v26 + 40))(&v11[v23], v5, v27);
    swift_endAccess();
  }

  return v11;
}

void Apple_Workout_Core_NotificationType.decoded.getter(_BYTE *a1@<X8>)
{
  if (*(v1 + 8))
  {
    *a1 = 0x607050403020100uLL >> (8 * *v1);
  }

  else
  {
    _StringGuts.grow(_:)(33);

    v2 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x20F2E6D80](v2);

    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000001FLL, 0x800000020B4591F0, "WorkoutCore/WorkoutNotification.swift", 37, 2, 160, 0);
    __break(1u);
  }
}

uint64_t type metadata accessor for WorkoutNotification(uint64_t a1)
{
  result = type metadata singleton initialization cache for WorkoutNotification;
  if (!type metadata singleton initialization cache for WorkoutNotification)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized static WorkoutNotification.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_notificationType;
  swift_beginAccess();
  v5 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_notificationType;
  v6 = *(a1 + v4);
  swift_beginAccess();
  if ((specialized == infix<A>(_:_:)(v6, *(a2 + v5)) & 1) != 0 && (v7 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_displayDuration, swift_beginAccess(), v8 = *(a1 + v7), v9 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_displayDuration, swift_beginAccess(), v8 == *(a2 + v9)))
  {
    v10 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_units;
    swift_beginAccess();
    v11 = *(a1 + v10);
    v12 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_units;
    swift_beginAccess();
    v13 = *(a2 + v12);

    v14 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore0B16NotificationUnitC_Tt1g5(v11, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

unint64_t lazy protocol witness table accessor for type WorkoutNotification.CodingKeys and conformance WorkoutNotification.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkoutNotification.CodingKeys and conformance WorkoutNotification.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutNotification.CodingKeys and conformance WorkoutNotification.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutNotification.CodingKeys and conformance WorkoutNotification.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutNotification.CodingKeys and conformance WorkoutNotification.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutNotification.CodingKeys and conformance WorkoutNotification.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutNotification.CodingKeys and conformance WorkoutNotification.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutNotification.CodingKeys and conformance WorkoutNotification.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutNotification.CodingKeys and conformance WorkoutNotification.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutNotification.CodingKeys and conformance WorkoutNotification.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutNotification.CodingKeys and conformance WorkoutNotification.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutNotification.CodingKeys and conformance WorkoutNotification.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutNotification.CodingKeys and conformance WorkoutNotification.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [WorkoutNotificationUnit] and conformance <A> [A](unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore0A16NotificationUnitCGMd, &_sSay11WorkoutCore0A16NotificationUnitCGMR);
    lazy protocol witness table accessor for type Date and conformance Date(a2, type metadata accessor for WorkoutNotificationUnit, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Date and conformance Date(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type WorkoutNotification.NotificationType and conformance WorkoutNotification.NotificationType()
{
  result = lazy protocol witness table cache variable for type WorkoutNotification.NotificationType and conformance WorkoutNotification.NotificationType;
  if (!lazy protocol witness table cache variable for type WorkoutNotification.NotificationType and conformance WorkoutNotification.NotificationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutNotification.NotificationType and conformance WorkoutNotification.NotificationType);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [String] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t type metadata completion function for WorkoutNotification(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for WorkoutNotification.NotificationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutNotification.NotificationType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutNotification.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WorkoutNotification.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t specialized WorkoutNotification.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of WorkoutNotification.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t outlined init with take of Apple_Workout_Core_WorkoutNotificationUnit(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of Apple_Workout_Core_WorkoutNotificationUnit(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_WorkoutNotificationUnit(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t one-time initialization function for changeNotification()
{
  result = MEMORY[0x20F2E6C00](0xD000000000000018, 0x800000020B459270);
  static TargetZoneStorage.changeNotification = result;
  return result;
}

id static TargetZoneStorage.changeNotification.getter()
{
  if (one-time initialization token for changeNotification != -1)
  {
    swift_once();
  }

  v1 = static TargetZoneStorage.changeNotification;

  return v1;
}

uint64_t static TargetZoneStorage.paceTargetZone(for:)(void *a1)
{
  v1 = specialized static TargetZoneStorage.targetZoneDict(zoneKey:activityType:)(0xD00000000000001DLL, 0x800000020B454520, a1);
  if (!v1 || (result = specialized TargetZone.__allocating_init(dict:)(v1)) == 0)
  {
    type metadata accessor for TargetZone();
    result = swift_allocObject();
    *(result + 16) = 1;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
  }

  return result;
}

uint64_t static TargetZoneStorage.cadenceTargetZone(for:)(void *a1)
{
  v1 = specialized static TargetZoneStorage.targetZoneDict(zoneKey:activityType:)(0xD000000000000020, 0x800000020B454540, a1);
  if (!v1 || (result = specialized TargetZone.__allocating_init(dict:)(v1)) == 0)
  {
    type metadata accessor for TargetZone();
    result = swift_allocObject();
    *(result + 16) = 4;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
  }

  return result;
}

uint64_t static TargetZoneStorage.powerTargetZone(for:)(void *a1)
{
  v1 = specialized static TargetZoneStorage.targetZoneDict(zoneKey:activityType:)(0xD00000000000001ELL, 0x800000020B454570, a1);
  if (!v1 || (result = specialized TargetZone.__allocating_init(dict:)(v1)) == 0)
  {
    type metadata accessor for TargetZone();
    result = swift_allocObject();
    *(result + 16) = 6;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
  }

  return result;
}

uint64_t static TargetZone.defaultTargetZone(typeKey:)(_BYTE *a1)
{
  v1 = 0x60401u >> (8 * *a1);
  type metadata accessor for TargetZone();
  result = swift_allocObject();
  *(result + 16) = v1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

unint64_t TargetZone.ZoneTypeKey.rawValue.getter()
{
  v1 = 0xD000000000000020;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001DLL;
  }
}

void *static TargetZoneStorage.alertEnablementDictionary(for:zoneKey:)(unint64_t a1, _BYTE *a2)
{
  v2 = "PaceTargetZonesByActivityType";
  v3 = 0xD000000000000020;
  if (*a2 != 1)
  {
    v3 = 0xD00000000000001ELL;
    v2 = "esByActivityType";
  }

  if (*a2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0xD00000000000001DLL;
  }

  if (*a2)
  {
    v5 = v2;
  }

  else
  {
    v5 = "r";
  }

  if (one-time initialization token for userDefaults != -1)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v6 = static TargetZoneStorage.userDefaults;
    v7 = MEMORY[0x20F2E6C00](v4, v5 | 0x8000000000000000);

    v4 = [v6 dictionaryForKey_];

    v5 = a1 >> 62;
    if (v4)
    {
      v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v8);
      v10 = v9;

      if (v10)
      {
        break;
      }
    }

    v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    if (v5)
    {
      v43 = __CocoaSet.count.getter();
      if (!v43)
      {
        return v13;
      }
    }

    else
    {
      v43 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v43)
      {
        return v13;
      }
    }

    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v45 = MEMORY[0x20F2E7A20](i, a1);
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_60;
        }

        v45 = *(a1 + 8 * i + 32);
      }

      v46 = v45;
      v5 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v47 = [v45 uniqueIdentifier];
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68 = v13;
      v4 = v13;
      v52 = specialized __RawDictionaryStorage.find<A>(_:)(v48, v50);
      v54 = v13[2];
      v55 = (v53 & 1) == 0;
      v35 = __OFADD__(v54, v55);
      v56 = v54 + v55;
      if (v35)
      {
        goto LABEL_61;
      }

      v57 = v53;
      if (v13[3] < v56)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v56, isUniquelyReferenced_nonNull_native);
        v4 = v68;
        v52 = specialized __RawDictionaryStorage.find<A>(_:)(v48, v50);
        if ((v57 & 1) != (v58 & 1))
        {
LABEL_74:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

LABEL_53:
        if (v57)
        {
          goto LABEL_42;
        }

        goto LABEL_54;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_53;
      }

      v4 = &v68;
      v62 = v52;
      specialized _NativeDictionary.copy()();
      v52 = v62;
      if (v57)
      {
LABEL_42:
        v4 = v52;

        v13 = v68;
        *(v4 + v68[7]) = 0;

        goto LABEL_43;
      }

LABEL_54:
      v13 = v68;
      v68[(v52 >> 6) + 8] |= 1 << v52;
      v59 = (v13[6] + 16 * v52);
      *v59 = v48;
      v59[1] = v50;
      *(v13[7] + v52) = 0;

      v60 = v13[2];
      v35 = __OFADD__(v60, 1);
      v61 = v60 + 1;
      if (v35)
      {
        goto LABEL_64;
      }

      v13[2] = v61;
LABEL_43:
      if (v5 == v43)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    swift_once();
  }

  if (v5)
  {
    v5 = a1 & 0xFFFFFFFFFFFFFF8;
    v11 = __CocoaSet.count.getter();
    if (v11)
    {
      goto LABEL_14;
    }

LABEL_69:
    v13 = MEMORY[0x277D84F98];
    goto LABEL_70;
  }

  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_69;
  }

LABEL_14:
  v12 = 0;
  v13 = MEMORY[0x277D84F98];
  while (2)
  {
    v14 = v12;
    while (2)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x20F2E7A20](v14, a1);
      }

      else
      {
        if (v14 >= *(v5 + 16))
        {
          goto LABEL_63;
        }

        v15 = *(a1 + 8 * v14 + 32);
      }

      v16 = v15;
      v12 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_62;
      }

      v17 = [v15 uniqueIdentifier];
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      if (!*(v10 + 16))
      {

        goto LABEL_17;
      }

      v4 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v19);
      v21 = v20;

      if ((v21 & 1) == 0 || (v22 = , (v23 = specialized TargetZone.__allocating_init(dict:)(v22)) == 0))
      {
LABEL_17:

        ++v14;
        if (v12 == v11)
        {
          goto LABEL_70;
        }

        continue;
      }

      break;
    }

    v64 = v5;
    v24 = v23;
    v25 = [v16 uniqueIdentifier];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    swift_beginAccess();
    v29 = *(v24 + 40);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v67 = v13;
    v65 = v26;
    v4 = v13;
    v31 = specialized __RawDictionaryStorage.find<A>(_:)(v26, v28);
    v33 = v13[2];
    v34 = (v32 & 1) == 0;
    v35 = __OFADD__(v33, v34);
    v36 = v33 + v34;
    if (v35)
    {
      __break(1u);
      goto LABEL_73;
    }

    v37 = v32;
    if (v13[3] < v36)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36, v30);
      v4 = v67;
      v31 = specialized __RawDictionaryStorage.find<A>(_:)(v65, v28);
      if ((v37 & 1) != (v38 & 1))
      {
        goto LABEL_74;
      }

LABEL_32:
      if (v37)
      {
        goto LABEL_33;
      }

LABEL_35:
      v13 = v67;
      v67[(v31 >> 6) + 8] |= 1 << v31;
      v40 = (v13[6] + 16 * v31);
      *v40 = v65;
      v40[1] = v28;
      *(v13[7] + v31) = v29;

      v41 = v13[2];
      v35 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (!v35)
      {
        v13[2] = v42;
        goto LABEL_37;
      }

LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    if (v30)
    {
      goto LABEL_32;
    }

    v4 = &v67;
    v39 = v31;
    specialized _NativeDictionary.copy()();
    v31 = v39;
    if ((v37 & 1) == 0)
    {
      goto LABEL_35;
    }

LABEL_33:
    v4 = v31;

    v13 = v67;
    *(v4 + v67[7]) = v29;

LABEL_37:
    v5 = v64;
    if (v12 != v11)
    {
      continue;
    }

    break;
  }

LABEL_70:

  return v13;
}

void *static TargetZoneStorage.heartRateAlertEnablementDictionary(for:)(unint64_t a1)
{
  swift_beginAccess();
  v3 = static HeartRateTargetZone.heartRateTargetZonesByActivityTypeKey;
  v2 = off_27C728570;
  v4 = one-time initialization token for userDefaults;

  if (v4 != -1)
  {
    goto LABEL_71;
  }

  while (1)
  {
    v5 = static TargetZoneStorage.userDefaults;
    v6 = MEMORY[0x20F2E6C00](v3, v2);

    v2 = [v5 dictionaryForKey_];

    v74 = a1;
    v7 = a1 >> 62;
    if (v2)
    {
      v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v8);
      v10 = v9;

      if (v10)
      {
        break;
      }
    }

    if (one-time initialization token for defaultZone != -1)
    {
      swift_once();
    }

    if (*(static HeartRateTargetZone.defaultZone + OBJC_IVAR___WOCoreHeartRateTargetZone_type) && *(static HeartRateTargetZone.defaultZone + OBJC_IVAR___WOCoreHeartRateTargetZone_type) != 1)
    {

      v2 = 0;
    }

    else
    {
      v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v2 = v43 ^ 1u;
    }

    v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    if (v7)
    {
      v65 = __CocoaSet.count.getter();
      v44 = a1;
      v45 = v65;
      if (!v65)
      {
        return v3;
      }
    }

    else
    {
      v44 = a1;
      v45 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v45)
      {
        return v3;
      }
    }

    a1 = 0;
    v71 = v44 & 0xFFFFFFFFFFFFFF8;
    v73 = v44 & 0xC000000000000001;
    v69 = v2 & 1;
    while (1)
    {
      if (v73)
      {
        v46 = MEMORY[0x20F2E7A20](a1);
      }

      else
      {
        if (a1 >= *(v71 + 16))
        {
          goto LABEL_66;
        }

        v46 = *(v44 + 8 * a1 + 32);
      }

      v47 = v46;
      v48 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        break;
      }

      v49 = [v46 uniqueIdentifier];
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v76[0] = v3;
      v2 = v3;
      v54 = specialized __RawDictionaryStorage.find<A>(_:)(v50, v52);
      v56 = v3[2];
      v57 = (v55 & 1) == 0;
      v41 = __OFADD__(v56, v57);
      v58 = v56 + v57;
      if (v41)
      {
        goto LABEL_67;
      }

      v59 = v55;
      if (v3[3] < v58)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v58, isUniquelyReferenced_nonNull_native);
        v2 = v76[0];
        v54 = specialized __RawDictionaryStorage.find<A>(_:)(v50, v52);
        if ((v59 & 1) != (v60 & 1))
        {
LABEL_80:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

LABEL_59:
        if (v59)
        {
          goto LABEL_48;
        }

        goto LABEL_60;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_59;
      }

      v2 = v76;
      v64 = v54;
      specialized _NativeDictionary.copy()();
      v54 = v64;
      if (v59)
      {
LABEL_48:
        v2 = v54;

        v3 = v76[0];
        *(*(v76[0] + 56) + v2) = v69;

        goto LABEL_49;
      }

LABEL_60:
      v3 = v76[0];
      *(v76[0] + 8 * (v54 >> 6) + 64) |= 1 << v54;
      v61 = (v3[6] + 16 * v54);
      *v61 = v50;
      v61[1] = v52;
      *(v3[7] + v54) = v69;

      v62 = v3[2];
      v41 = __OFADD__(v62, 1);
      v63 = v62 + 1;
      if (v41)
      {
        goto LABEL_70;
      }

      v3[2] = v63;
LABEL_49:
      ++a1;
      v44 = v74;
      if (v48 == v45)
      {
        return v3;
      }
    }

    __break(1u);
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
    swift_once();
  }

  if (v7)
  {
    v11 = a1;
    v72 = a1 & 0xFFFFFFFFFFFFFF8;
    a1 = __CocoaSet.count.getter();
    if (a1)
    {
      goto LABEL_6;
    }

LABEL_75:
    v3 = MEMORY[0x277D84F98];
    goto LABEL_76;
  }

  v11 = a1;
  v72 = a1 & 0xFFFFFFFFFFFFFF8;
  a1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!a1)
  {
    goto LABEL_75;
  }

LABEL_6:
  v12 = 0;
  v70 = v11 & 0xC000000000000001;
  v3 = MEMORY[0x277D84F98];
  while (2)
  {
    v13 = v12;
    while (2)
    {
      if (v70)
      {
        v14 = MEMORY[0x20F2E7A20](v13, v11);
      }

      else
      {
        if (v13 >= *(v72 + 16))
        {
          goto LABEL_69;
        }

        v14 = *(v11 + 8 * v13 + 32);
      }

      v15 = v14;
      v12 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_68;
      }

      v16 = [v14 uniqueIdentifier];
      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      if (!*(v10 + 16))
      {
        goto LABEL_8;
      }

      v2 = specialized __RawDictionaryStorage.find<A>(_:)(v2, v18);
      v20 = v19;

      if ((v20 & 1) == 0 || (v2 = *(*(v10 + 56) + 8 * v2), !*(v2 + 16)))
      {
LABEL_9:

        ++v13;
        if (v12 == a1)
        {
          goto LABEL_76;
        }

        continue;
      }

      break;
    }

    v21 = specialized __RawDictionaryStorage.find<A>(_:)(1701869940, 0xE400000000000000);
    if ((v22 & 1) == 0)
    {
LABEL_8:

      goto LABEL_9;
    }

    outlined init with copy of Any(*(v2 + 56) + 32 * v21, v76);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_9;
    }

    v2 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of static TargetZoneStorage.heartRateAlertEnablementDictionary(for:), v75);

    if (v2 >= 3)
    {
      goto LABEL_9;
    }

    v23 = [v15 uniqueIdentifier];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    if (v2 > 1u)
    {

      v67 = 0;
    }

    else
    {
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v67 = v27 ^ 1;
    }

    v28 = swift_isUniquelyReferenced_nonNull_native();
    v76[0] = v3;
    v68 = v24;
    v29 = v24;
    v30 = v26;
    v2 = v3;
    v32 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v26);
    v33 = v3[2];
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      __break(1u);
      goto LABEL_79;
    }

    v36 = v31;
    if (v3[3] >= v35)
    {
      if (v28)
      {
        if ((v31 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v2 = v76;
        specialized _NativeDictionary.copy()();
        if ((v36 & 1) == 0)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v35, v28);
      v2 = v76[0];
      v37 = specialized __RawDictionaryStorage.find<A>(_:)(v68, v30);
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_80;
      }

      v32 = v37;
      if ((v36 & 1) == 0)
      {
LABEL_35:
        v3 = v76[0];
        *(v76[0] + 8 * (v32 >> 6) + 64) |= 1 << v32;
        v39 = (v3[6] + 16 * v32);
        *v39 = v68;
        v39[1] = v30;
        *(v3[7] + v32) = v67 & 1;

        v40 = v3[2];
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (!v41)
        {
          v3[2] = v42;
          goto LABEL_37;
        }

LABEL_79:
        __break(1u);
        goto LABEL_80;
      }
    }

    v3 = v76[0];
    *(*(v76[0] + 56) + v32) = v67 & 1;

LABEL_37:
    v11 = v74;
    if (v12 != a1)
    {
      continue;
    }

    break;
  }

LABEL_76:

  return v3;
}

uint64_t static HeartRateTargetZone.zoneType(for:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (*(result + 16) && (v3 = result, result = specialized __RawDictionaryStorage.find<A>(_:)(1701869940, 0xE400000000000000), (v4 & 1) != 0) && (outlined init with copy of Any(*(v3 + 56) + 32 * result, v8), result = swift_dynamicCast(), (result & 1) != 0))
  {
    v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of HeartRateZoneType.init(rawValue:), v7);

    v6 = 3;
    if (v5 < 3)
    {
      v6 = v5;
    }
  }

  else
  {
    v6 = 3;
  }

  *a2 = v6;
  return result;
}

void *static TargetZoneStorage.powerZonesAlertEnablementDictionary(for:)(unint64_t a1)
{
  swift_beginAccess();
  v3 = static PowerZonesAlertTargetZone.powerZonesAlertTargetZonesByActivityTypeKey;
  v2 = off_27C728588;
  v4 = one-time initialization token for userDefaults;

  if (v4 != -1)
  {
    goto LABEL_63;
  }

  while (1)
  {
    v5 = static TargetZoneStorage.userDefaults;
    v6 = MEMORY[0x20F2E6C00](v3, v2);

    v2 = [v5 dictionaryForKey_];

    v7 = a1 >> 62;
    v76 = a1;
    if (v2)
    {
      v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v8);
      v10 = v9;

      if (v10)
      {
        break;
      }
    }

    if (one-time initialization token for defaultZone != -1)
    {
      swift_once();
    }

    v40 = static PowerZonesAlertTargetZone.defaultZone + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type;
    swift_beginAccess();
    v41 = *v40;
    v42 = *(v40 + 8);
    v43 = *(v40 + 16);
    v44 = v43 >> 6;
    v75 = 1;
    if (v43 >> 6 > 1)
    {
      v75 = v44 == 2;
    }

    else if (v44)
    {
      v45 = *v40;
      v46 = v42;
      v47 = v43;
      outlined copy of PowerZonesAlertZoneType(v41, v42, v43);
      LOBYTE(v43) = v47;
      v42 = v46;
      v41 = v45;
      v75 = 1;
    }

    outlined consume of PowerZonesAlertZoneType(v41, v42, v43);
    outlined consume of PowerZonesAlertZoneType(0, 0, 192);
    v2 = MEMORY[0x277D84F90];
    v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(MEMORY[0x277D84F90]);

    if (v7)
    {
      v48 = __CocoaSet.count.getter();
      if (!v48)
      {
        return v3;
      }
    }

    else
    {
      v48 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v48)
      {
        return v3;
      }
    }

    v49 = 0;
    v71 = a1 & 0xFFFFFFFFFFFFFF8;
    v73 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v73)
      {
        v50 = MEMORY[0x20F2E7A20](v49, a1);
      }

      else
      {
        if (v49 >= *(v71 + 16))
        {
          goto LABEL_58;
        }

        v50 = *(a1 + 8 * v49 + 32);
      }

      a1 = v50;
      v51 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      v52 = [v50 uniqueIdentifier];
      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v77 = v3;
      v2 = v3;
      v57 = specialized __RawDictionaryStorage.find<A>(_:)(v53, v55);
      v59 = v3[2];
      v60 = (v58 & 1) == 0;
      v31 = __OFADD__(v59, v60);
      v61 = v59 + v60;
      if (v31)
      {
        goto LABEL_59;
      }

      v62 = v58;
      if (v3[3] < v61)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v61, isUniquelyReferenced_nonNull_native);
        v2 = v77;
        v57 = specialized __RawDictionaryStorage.find<A>(_:)(v53, v55);
        if ((v62 & 1) != (v63 & 1))
        {
LABEL_72:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

LABEL_51:
        if (v62)
        {
          goto LABEL_40;
        }

        goto LABEL_52;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_51;
      }

      v2 = &v77;
      v67 = v57;
      specialized _NativeDictionary.copy()();
      v57 = v67;
      if (v62)
      {
LABEL_40:
        v2 = v57;

        v3 = v77;
        *(v77[7] + v2) = v75;

        goto LABEL_41;
      }

LABEL_52:
      v3 = v77;
      v77[(v57 >> 6) + 8] |= 1 << v57;
      v64 = (v3[6] + 16 * v57);
      *v64 = v53;
      v64[1] = v55;
      *(v3[7] + v57) = v75;

      v65 = v3[2];
      v31 = __OFADD__(v65, 1);
      v66 = v65 + 1;
      if (v31)
      {
        goto LABEL_62;
      }

      v3[2] = v66;
LABEL_41:
      ++v49;
      a1 = v76;
      if (v51 == v48)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    swift_once();
  }

  if (v7)
  {
    v74 = a1 & 0xFFFFFFFFFFFFFF8;
    v11 = __CocoaSet.count.getter();
    if (v11)
    {
      goto LABEL_6;
    }

LABEL_67:
    v3 = MEMORY[0x277D84F98];
    goto LABEL_68;
  }

  v74 = a1 & 0xFFFFFFFFFFFFFF8;
  v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_67;
  }

LABEL_6:
  v12 = 0;
  v13 = a1 & 0xC000000000000001;
  v3 = MEMORY[0x277D84F98];
  while (2)
  {
    v14 = v12;
    while (2)
    {
      if (v13)
      {
        v15 = MEMORY[0x20F2E7A20](v14, a1);
      }

      else
      {
        if (v14 >= *(v74 + 16))
        {
          goto LABEL_61;
        }

        v15 = *(a1 + 8 * v14 + 32);
      }

      a1 = v15;
      v12 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_60;
      }

      v16 = [v15 uniqueIdentifier];
      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      if (!*(v10 + 16))
      {

        goto LABEL_9;
      }

      v2 = specialized __RawDictionaryStorage.find<A>(_:)(v2, v18);
      v20 = v19;

      if ((v20 & 1) == 0 || (v2 = *(*(v10 + 56) + 8 * v2), v21 = , v22 = specialized static PowerZonesAlertTargetZone.alertIsEnabled(from:)(v21), , v22 == 2))
      {
LABEL_9:

        ++v14;
        a1 = v76;
        if (v12 == v11)
        {
          goto LABEL_68;
        }

        continue;
      }

      break;
    }

    v23 = [a1 uniqueIdentifier];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v69 = swift_isUniquelyReferenced_nonNull_native();
    v78 = v3;
    v70 = v24;
    v72 = v26;
    v2 = v3;
    v27 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v26);
    v29 = v3[2];
    v30 = (v28 & 1) == 0;
    v31 = __OFADD__(v29, v30);
    v32 = v29 + v30;
    if (v31)
    {
      __break(1u);
      goto LABEL_71;
    }

    v33 = v28;
    if (v3[3] >= v32)
    {
      if ((v69 & 1) == 0)
      {
        v2 = &v78;
        v39 = v27;
        specialized _NativeDictionary.copy()();
        v27 = v39;
      }

      v34 = v72;
      if (v33)
      {
        goto LABEL_23;
      }

LABEL_27:
      v3 = v78;
      v78[(v27 >> 6) + 8] |= 1 << v27;
      v36 = (v3[6] + 16 * v27);
      *v36 = v70;
      v36[1] = v34;
      *(v3[7] + v27) = v22 & 1;

      v37 = v3[2];
      v31 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (!v31)
      {
        v3[2] = v38;
        goto LABEL_29;
      }

LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v32, v69);
    v2 = v78;
    v34 = v72;
    v27 = specialized __RawDictionaryStorage.find<A>(_:)(v70, v72);
    if ((v33 & 1) != (v35 & 1))
    {
      goto LABEL_72;
    }

    if ((v33 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_23:
    v2 = v27;

    v3 = v78;
    *(v78[7] + v2) = v22 & 1;

LABEL_29:
    a1 = v76;
    if (v12 != v11)
    {
      continue;
    }

    break;
  }

LABEL_68:

  return v3;
}

id static HeartRateTargetZone.defaultHeartRateTargetZone()(void *a1, void **a2, uint64_t a3)
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

void static TargetZoneStorage.heartRateTargetZone(activityType:)(void *a1)
{
  swift_beginAccess();
  v3 = static HeartRateTargetZone.heartRateTargetZonesByActivityTypeKey;
  v2 = off_27C728570;

  v4 = specialized static TargetZoneStorage.targetZoneDict(zoneKey:activityType:)(v3, v2, a1);

  if (!v4 || (specialized HeartRateTargetZone.__allocating_init(dict:)(v4), !v5))
  {
    if (one-time initialization token for defaultZone != -1)
    {
      swift_once();
    }

    v6 = static HeartRateTargetZone.defaultZone;

    v7 = v6;
  }
}

uint64_t *static TargetZoneStorage.powerZonesAlertTargetZone(activityType:)(void *a1)
{
  swift_beginAccess();
  v3 = static PowerZonesAlertTargetZone.powerZonesAlertTargetZonesByActivityTypeKey;
  v2 = off_27C728588;

  v4 = specialized static TargetZoneStorage.targetZoneDict(zoneKey:activityType:)(v3, v2, a1);

  if (!v4 || (type metadata accessor for PowerZonesAlertTargetZone(), (result = PowerZonesAlertTargetZone.__allocating_init(dict:)(v4)) == 0))
  {
    if (one-time initialization token for defaultZone != -1)
    {
      swift_once();
    }

    v6 = static PowerZonesAlertTargetZone.defaultZone;

    return v6;
  }

  return result;
}

uint64_t *PowerZonesAlertTargetZone.__allocating_init(dict:)(uint64_t a1)
{
  static PowerZonesAlertTargetZone.fromDictionary(_:)(a1, &v20);
  v1 = v22;
  if (v22 < 0xF8u)
  {
    v12 = v20;
    v11 = v21;

    v20 = v12;
    v21 = v11;
    v22 = v1;
    v13 = objc_allocWithZone(type metadata accessor for PowerZonesAlertTargetZone());
    return PowerZonesAlertTargetZone.init(type:)(&v20);
  }

  else
  {
    if (one-time initialization token for alerts != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static WOLog.alerts);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v20 = v6;
      *v5 = 136315138;
      v7 = Dictionary.description.getter();
      v9 = v8;

      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, &v20);

      *(v5 + 4) = v10;
      _os_log_impl(&dword_20AEA4000, v3, v4, "Not able to generate PowerZonesAlertZoneType from dictionary: %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x20F2E9420](v6, -1, -1);
      MEMORY[0x20F2E9420](v5, -1, -1);
    }

    else
    {
    }

    v15 = type metadata accessor for PowerZonesAlertTargetZone();
    v16 = objc_allocWithZone(v15);
    v17 = &v16[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_defaultZonesDidLoad];
    *v17 = 0;
    *(v17 + 1) = 0;
    v18 = &v16[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type];
    *v18 = 0;
    *(v18 + 1) = 0;
    v18[16] = -64;
    v19.receiver = v16;
    v19.super_class = v15;
    return objc_msgSendSuper2(&v19, sel_init);
  }
}

BOOL static TargetZoneStorage.save(_:for:useLegacyUniqueIdentifier:)(void *a1, id a2, char a3)
{
  if (a3)
  {
    v5 = [a2 workoutActivityType];
    v6 = [v5 legacyUniqueIdentifier];
  }

  else
  {
    v6 = [a2 uniqueIdentifier];
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (one-time initialization token for alerts != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static WOLog.alerts);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v44[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, v44);
    _os_log_impl(&dword_20AEA4000, v11, v12, "Saving alerts for %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x20F2E9420](v14, -1, -1);
    MEMORY[0x20F2E9420](v13, -1, -1);
  }

  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v17 = (*(v16 + 8))(v15, v16);
  v19 = v18;
  if (v18)
  {
    v20 = v17;
    v42 = a2;
    if (one-time initialization token for userDefaults != -1)
    {
      swift_once();
    }

    v21 = static TargetZoneStorage.userDefaults;
    v22 = MEMORY[0x20F2E6C00](v20, v19);
    v23 = [v21 dictionaryForKey_];

    if (v23)
    {
      v24 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v24 = MEMORY[0x277D84F98];
    }

    v28 = a1[3];
    v29 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v28);
    v30 = (*(v29 + 16))(v28, v29);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    v44[0] = v30;
    outlined init with take of Any(v44, v43);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v43, v7, v9, isUniquelyReferenced_nonNull_native);

    v32 = static TargetZoneStorage.userDefaults;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v34 = MEMORY[0x20F2E6C00](v20, v19);
    [v32 setObject:isa forKey:v34];

    v35 = static TargetZoneStorage.userDefaults;
    v36 = objc_opt_self();
    v37 = v35;
    v38 = [v36 standardUserDefaults];
    type metadata accessor for NSUserDefaults(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
    LOBYTE(v34) = static NSObject.== infix(_:_:)();

    if (v34)
    {
      v39 = MEMORY[0x20F2E6C00](v20, v19);

      [v36 fu:v39 backupStandardUserDefaultsKey:?];
    }

    else
    {
    }

    v40 = [objc_opt_self() defaultCenter];
    if (one-time initialization token for changeNotification != -1)
    {
      swift_once();
    }

    [v40 postNotificationName:static TargetZoneStorage.changeNotification object:{v42, v42, v24}];
  }

  else
  {

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_20AEA4000, v25, v26, "No zone type key, skipping save.", v27, 2u);
      MEMORY[0x20F2E9420](v27, -1, -1);
    }
  }

  return v19 != 0;
}

void specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSDySSypGGMd, &_ss18_DictionaryStorageCySSSDySSypGGMR);
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

  do
  {
LABEL_10:
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    outlined init with copy of Any(*(a1 + 56) + 32 * v10, v24);
    *&v23 = v12;
    *(&v23 + 1) = v13;
    v21[2] = v23;
    v22[0] = v24[0];
    v22[1] = v24[1];
    v14 = v23;
    outlined init with take of Any(v22, v21);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(v14, *(&v14 + 1));
    if (v16)
    {
      *(v2[6] + 16 * v15) = v14;
      v8 = v15;

      *(v2[7] + 8 * v8) = v20;

      v7 = v9;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
      *(v2[6] + 16 * v15) = v14;
      *(v2[7] + 8 * v15) = v20;
      v17 = v2[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_23;
      }

      v2[2] = v19;
      v7 = v9;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v9 = v7;
  }
}

uint64_t static TargetZoneStorage.restoreFrom(_:activityType:)(uint64_t a1, id a2)
{
  v3 = [a2 workoutActivityType];
  v4 = [v3 uniqueIdentifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (*(a1 + 16))
  {
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v7);
    if (v9)
    {
      outlined init with copy of Any(*(a1 + 56) + 32 * v8, v20);
      outlined init with copy of Any(v20, v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
      if (swift_dynamicCast())
      {

        v10 = specialized TargetZone.__allocating_init(dict:)(v18);

        __swift_destroy_boxed_opaque_existential_0(v20);
        return v10;
      }

      __swift_destroy_boxed_opaque_existential_0(v20);
    }
  }

  if (one-time initialization token for alerts != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static WOLog.alerts);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20[0] = v16;
    *v15 = 136315138;
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, v20);

    *(v15 + 4) = v17;
    _os_log_impl(&dword_20AEA4000, v13, v14, "restoreFrom returning nil for %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x20F2E9420](v16, -1, -1);
    MEMORY[0x20F2E9420](v15, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t TargetZone.ZoneTypeKey.init(rawValue:)@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TargetZone.ZoneTypeKey.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *a2 = v7;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TargetZone.ZoneTypeKey(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "PaceTargetZonesByActivityType";
  v4 = 0xD000000000000020;
  if (v2 == 1)
  {
    v5 = 0xD000000000000020;
  }

  else
  {
    v5 = 0xD00000000000001ELL;
  }

  if (v2 == 1)
  {
    v6 = "PaceTargetZonesByActivityType";
  }

  else
  {
    v6 = "esByActivityType";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD00000000000001DLL;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "r";
  }

  if (*a2 != 1)
  {
    v4 = 0xD00000000000001ELL;
    v3 = "esByActivityType";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD00000000000001DLL;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "r";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TargetZone.ZoneTypeKey()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TargetZone.ZoneTypeKey(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TargetZone.ZoneTypeKey(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance TargetZone.ZoneTypeKey(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001DLL;
  v3 = "PaceTargetZonesByActivityType";
  v4 = 0xD000000000000020;
  if (*v1 != 1)
  {
    v4 = 0xD00000000000001ELL;
    v3 = "esByActivityType";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "r";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

Swift::String_optional __swiftcall TargetZone.zoneKey()()
{
  v1 = *(v0 + 16);
  if (v1 > 4)
  {
    if (v1 - 5 >= 2)
    {
      v2 = 0;
      v4 = 0;
    }

    else
    {
      v2 = 0xD00000000000001ELL;
      v4 = 0x800000020B454570;
    }
  }

  else
  {
    if (v1 >= 3)
    {
      v2 = 0xD000000000000020;
    }

    else
    {
      v2 = 0xD00000000000001DLL;
    }

    if (v1 >= 3)
    {
      v3 = "PaceTargetZonesByActivityType";
    }

    else
    {
      v3 = "r";
    }

    v4 = (v3 | 0x8000000000000000);
  }

  result.value._object = v4;
  result.value._countAndFlagsBits = v2;
  return result;
}

uint64_t TargetZone.dict()()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2 <= 3)
  {
    if (*(v0 + 16) > 1u)
    {
      if (v2 == 2)
      {
        v4 = 0xD000000000000012;
        v3 = 0x800000020B454490;
      }

      else
      {
        v3 = 0x800000020B4544B0;
        v4 = 0xD000000000000015;
      }

      goto LABEL_16;
    }

    v3 = 0xEC00000065636170;
    if (!v2)
    {
      v4 = 0x5F676E696C6C6F72;
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (*(v0 + 16) > 5u)
  {
    if (v2 == 6)
    {
      v3 = 0xED00007265776F70;
      goto LABEL_12;
    }

    v3 = 0xE400000000000000;
    v4 = 1701736302;
  }

  else
  {
    if (v2 == 4)
    {
      v3 = 0xEF65636E65646163;
LABEL_12:
      v4 = 0x5F65676172657661;
      goto LABEL_16;
    }

    v3 = 0x800000020B4544E0;
    v4 = 0xD000000000000013;
  }

LABEL_16:
  swift_beginAccess();
  v5 = *(v1 + 40) == 0;
  if (*(v1 + 40))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  v7 = MEMORY[0x277D837D0];
  v20 = MEMORY[0x277D837D0];
  if (v5)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  *&v19 = v4;
  *(&v19 + 1) = v3;
  outlined init with take of Any(&v19, v18);
  v9 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, 1701869940, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  swift_beginAccess();
  v11 = *(v1 + 24);
  v12 = MEMORY[0x277D839F8];
  v20 = MEMORY[0x277D839F8];
  *&v19 = v11;
  outlined init with take of Any(&v19, v18);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, 0x6D756D696E696DLL, 0xE700000000000000, v13);
  swift_beginAccess();
  v14 = *(v1 + 32);
  v20 = v12;
  *&v19 = v14;
  outlined init with take of Any(&v19, v18);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, 0x6D756D6978616DLL, 0xE700000000000000, v15);
  v20 = v7;
  *&v19 = v6;
  *(&v19 + 1) = v8;
  outlined init with take of Any(&v19, v18);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, 0x64656C62616E65, 0xE700000000000000, v16);
  return v9;
}

unint64_t protocol witness for TargetZoneStorable.zoneKey() in conformance TargetZone()
{
  v1 = *(*v0 + 16);
  if (v1 > 4)
  {
    if (v1 - 5 >= 2)
    {
      return 0;
    }

    else
    {
      return 0xD00000000000001ELL;
    }
  }

  else if (v1 >= 3)
  {
    return 0xD000000000000020;
  }

  else
  {
    return 0xD00000000000001DLL;
  }
}

Swift::String_optional __swiftcall HeartRateTargetZone.zoneKey()()
{
  v0 = HeartRateTargetZone.zoneKey()(&static HeartRateTargetZone.heartRateTargetZonesByActivityTypeKey, &off_27C728570);
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t HeartRateTargetZone.dict()()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR___WOCoreHeartRateTargetZone_type))
  {
    if (*(v0 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) == 1)
    {
      v2 = 0xE600000000000000;
      v3 = 0x6D6F74737563;
    }

    else
    {
      v2 = 0xE300000000000000;
      v3 = 6710895;
    }
  }

  else
  {
    v2 = 0xE900000000000063;
    v3 = 0x6974616D6F747561;
  }

  v20 = MEMORY[0x277D837D0];
  *&v19 = v3;
  *(&v19 + 1) = v2;
  outlined init with take of Any(&v19, v18);
  v4 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, 1701869940, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  v21 = v4;
  v6 = (v1 + OBJC_IVAR___WOCoreHeartRateTargetZone_customRange);
  swift_beginAccess();
  v7 = MEMORY[0x277D839F8];
  if (v6[2])
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0x756F427265776F6CLL, 0xEA0000000000646ELL, &v19);
    _sypSgWOhTm_0(&v19, &_sypSgMd, &_sypSgMR);
    if ((v6[2] & 1) == 0)
    {
LABEL_8:
      v8 = v6[1];
      v20 = v7;
      *&v19 = v8;
      outlined init with take of Any(&v19, v18);
      v9 = v21;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, 0x756F427265707075, 0xEA0000000000646ELL, v10);
      v21 = v9;
      goto LABEL_11;
    }
  }

  else
  {
    v11 = *v6;
    v20 = MEMORY[0x277D839F8];
    *&v19 = v11;
    outlined init with take of Any(&v19, v18);
    v12 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, 0x756F427265776F6CLL, 0xEA0000000000646ELL, v12);
    v21 = v4;
    if ((v6[2] & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  specialized Dictionary._Variant.removeValue(forKey:)(0x756F427265707075, 0xEA0000000000646ELL, &v19);
  _sypSgWOhTm_0(&v19, &_sypSgMd, &_sypSgMR);
LABEL_11:
  v13 = (v1 + OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZoneIndex);
  swift_beginAccess();
  if (v13[1])
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000010, 0x800000020B454030, &v19);
    _sypSgWOhTm_0(&v19, &_sypSgMd, &_sypSgMR);
    return v21;
  }

  else
  {
    v15 = *v13;
    v20 = MEMORY[0x277D83B88];
    *&v19 = v15;
    outlined init with take of Any(&v19, v18);
    v16 = v21;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, 0xD000000000000010, 0x800000020B454030, v17);
    return v16;
  }
}

unsigned __int8 *one-time initialization function for defaultZone()
{
  v2 = 2;
  v0 = objc_allocWithZone(type metadata accessor for HeartRateTargetZone());
  result = HeartRateTargetZone.init(type:customRange:defaultZoneIndex:defaultZones:)(&v2, 0, 0, 1, 0, 1, 0);
  static HeartRateTargetZone.defaultZone = result;
  return result;
}

uint64_t static HeartRateTargetZone.heartRateTargetZonesByActivityTypeKey.getter(uint64_t *a1, void *a2)
{
  swift_beginAccess();
  v3 = *a1;

  return v3;
}

uint64_t static HeartRateTargetZone.heartRateTargetZonesByActivityTypeKey.setter(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  swift_beginAccess();
  *a3 = a1;
  *a4 = a2;
}

Swift::String_optional __swiftcall PowerZonesAlertTargetZone.zoneKey()()
{
  v0 = HeartRateTargetZone.zoneKey()(&static PowerZonesAlertTargetZone.powerZonesAlertTargetZonesByActivityTypeKey, &off_27C728588);
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t HeartRateTargetZone.zoneKey()(uint64_t *a1, void *a2)
{
  swift_beginAccess();
  v3 = *a1;

  return v3;
}

unint64_t PowerZonesAlertTargetZone.dict()()
{
  v1 = (v0 + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type);
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = v4 >> 6;
  if (v4 >> 6 <= 1)
  {
    if (v5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_20B4282E0;
      *(inited + 32) = 1701869940;
      v18 = MEMORY[0x277D837D0];
      *(inited + 40) = 0xE400000000000000;
      *(inited + 48) = 0x6974616D6F747561;
      *(inited + 56) = 0xE900000000000063;
      *(inited + 72) = v18;
      *(inited + 80) = 0xD000000000000010;
      *(inited + 120) = MEMORY[0x277D83B88];
      *(inited + 88) = 0x800000020B454030;
      *(inited + 96) = v2;
      v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
LABEL_41:
      swift_arrayDestroy();
      return v19;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    v6 = swift_initStackObject();
    v7 = v6;
    *(v6 + 16) = xmmword_20B423A20;
    *(v6 + 32) = 1701869940;
    v8 = MEMORY[0x277D837D0];
    v9 = 0xE400000000000000;
    *(v6 + 40) = 0xE400000000000000;
    *(v6 + 48) = 0x746567726174;
    *(v6 + 56) = 0xE600000000000000;
    *(v6 + 72) = v8;
    *(v6 + 80) = 1701080941;
    *(v6 + 88) = 0xE400000000000000;
    if (v3 > 3u)
    {
      if (v3 > 5u)
      {
        if (v3 == 6)
        {
          v10 = 0x5F65676172657661;
          v9 = 0xED00007265776F70;
        }

        else
        {
          v10 = 1701736302;
        }
      }

      else if (v3 == 4)
      {
        v10 = 0x5F65676172657661;
        v9 = 0xEF65636E65646163;
      }

      else
      {
        v9 = 0x800000020B4544E0;
        v10 = 0xD000000000000013;
      }
    }

    else if (v3 > 1u)
    {
      if (v3 == 2)
      {
        v10 = 0xD000000000000012;
        v9 = 0x800000020B454490;
      }

      else
      {
        v9 = 0x800000020B4544B0;
        v10 = 0xD000000000000015;
      }
    }

    else
    {
      if (v3)
      {
        v10 = 0x5F65676172657661;
      }

      else
      {
        v10 = 0x5F676E696C6C6F72;
      }

      v9 = 0xEC00000065636170;
    }

    *(v6 + 96) = v10;
    *(v6 + 104) = v9;
    *(v6 + 120) = v8;
    *(v6 + 128) = 0x65756C6176;
    *(v6 + 168) = MEMORY[0x277D839F8];
    *(v6 + 136) = 0xE500000000000000;
    *(v6 + 144) = v2;
LABEL_40:
    v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v7);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
    goto LABEL_41;
  }

  if (v5 == 2)
  {
    v11 = v4 & 0x3F;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    v7 = swift_initStackObject();
    *(v7 + 16) = xmmword_20B423A20;
    *(v7 + 32) = 1701869940;
    v12 = 0xE400000000000000;
    v13 = MEMORY[0x277D837D0];
    *(v7 + 40) = 0xE400000000000000;
    *(v7 + 48) = 0x6D6F74737563;
    *(v7 + 56) = 0xE600000000000000;
    *(v7 + 72) = v13;
    *(v7 + 80) = 0x65676E6172;
    *(v7 + 88) = 0xE500000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_20B4282E0;
    *(v14 + 32) = v2;
    *(v14 + 40) = v3;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
    *(v7 + 96) = v14;
    *(v7 + 120) = v15;
    *(v7 + 128) = 1701080941;
    *(v7 + 136) = 0xE400000000000000;
    if (v11 > 3)
    {
      if (v11 > 5)
      {
        if (v11 == 6)
        {
          v16 = 0x5F65676172657661;
          v12 = 0xED00007265776F70;
        }

        else
        {
          v16 = 1701736302;
        }
      }

      else if (v11 == 4)
      {
        v16 = 0x5F65676172657661;
        v12 = 0xEF65636E65646163;
      }

      else
      {
        v12 = 0x800000020B4544E0;
        v16 = 0xD000000000000013;
      }
    }

    else if (v11 > 1)
    {
      if (v11 == 2)
      {
        v16 = 0xD000000000000012;
        v12 = 0x800000020B454490;
      }

      else
      {
        v12 = 0x800000020B4544B0;
        v16 = 0xD000000000000015;
      }
    }

    else
    {
      if (v11)
      {
        v16 = 0x5F65676172657661;
      }

      else
      {
        v16 = 0x5F676E696C6C6F72;
      }

      v12 = 0xEC00000065636170;
    }

    *(v7 + 168) = v13;
    *(v7 + 144) = v16;
    *(v7 + 152) = v12;
    goto LABEL_40;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_20B423A90;
  *(v20 + 32) = 1701869940;
  v21 = v20 + 32;
  *(v20 + 72) = MEMORY[0x277D837D0];
  *(v20 + 40) = 0xE400000000000000;
  *(v20 + 48) = 6710895;
  *(v20 + 56) = 0xE300000000000000;
  v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v20);
  swift_setDeallocating();
  _sypSgWOhTm_0(v21, &_sSS_yptMd, &_sSS_yptMR);
  return v19;
}

uint64_t static PowerZonesAlertTargetZone.fromDictionary(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!*(result + 16))
  {
    goto LABEL_56;
  }

  v3 = result;
  result = specialized __RawDictionaryStorage.find<A>(_:)(1701869940, 0xE400000000000000);
  if ((v4 & 1) == 0)
  {
    goto LABEL_56;
  }

  outlined init with copy of Any(*(v3 + 56) + 32 * result, v19);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_56;
  }

  if (v17 == 0x746567726174 && v18 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    if (*(v3 + 16))
    {
      result = specialized __RawDictionaryStorage.find<A>(_:)(0x65756C6176, 0xE500000000000000);
      if (v5)
      {
        outlined init with copy of Any(*(v3 + 56) + 32 * result, v19);
        result = swift_dynamicCast();
        if (result)
        {
          if (*(v3 + 16))
          {
            result = specialized __RawDictionaryStorage.find<A>(_:)(1701080941, 0xE400000000000000);
            if (v6)
            {
              outlined init with copy of Any(*(v3 + 56) + 32 * result, v19);
              result = swift_dynamicCast();
              if (result)
              {
                if (v17 == 0xD000000000000013 && 0x800000020B4544E0 == v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  *a2 = v17;
                  v7 = 5;
LABEL_17:
                  *(a2 + 8) = v7;
                  *(a2 + 16) = 0;
                  return result;
                }

                if (v17 == 0x5F65676172657661 && v18 == 0xED00007265776F70)
                {

LABEL_50:
                  *a2 = v17;
                  v7 = 6;
                  goto LABEL_17;
                }

                v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v15)
                {
                  goto LABEL_50;
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_56;
  }

  if ((v17 != 0x6974616D6F747561 || v18 != 0xE900000000000063) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (v17 == 0x6D6F74737563 && v18 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      if (!*(v3 + 16))
      {
        goto LABEL_56;
      }

      result = specialized __RawDictionaryStorage.find<A>(_:)(0x65676E6172, 0xE500000000000000);
      if ((v10 & 1) == 0)
      {
        goto LABEL_56;
      }

      outlined init with copy of Any(*(v3 + 56) + 32 * result, v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
      result = swift_dynamicCast();
      if ((result & 1) == 0)
      {
        goto LABEL_56;
      }

      if (v17[2] == 2)
      {
        v12 = v17[4];
        v11 = v17[5];

        if (!*(v3 + 16))
        {
          goto LABEL_39;
        }

        result = specialized __RawDictionaryStorage.find<A>(_:)(1701080941, 0xE400000000000000);
        if ((v13 & 1) == 0)
        {
          goto LABEL_39;
        }

        outlined init with copy of Any(*(v3 + 56) + 32 * result, v19);
        result = swift_dynamicCast();
        if ((result & 1) == 0)
        {
          goto LABEL_39;
        }

        if (v17 == 0xD000000000000013 && 0x800000020B4544E0 == v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

LABEL_39:
          *a2 = v12;
          *(a2 + 8) = v11;
          v9 = -123;
          goto LABEL_57;
        }

        if (v17 == 0x5F65676172657661 && v18 == 0xED00007265776F70)
        {

LABEL_55:
          *a2 = v12;
          *(a2 + 8) = v11;
          v9 = -122;
          goto LABEL_57;
        }

        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v16)
        {
          goto LABEL_55;
        }
      }

      else
      {
      }

LABEL_56:
      *a2 = 0;
      *(a2 + 8) = 0;
      v9 = -8;
      goto LABEL_57;
    }

    if (v17 == 6710895 && v18 == 0xE300000000000000)
    {
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    *a2 = 0;
    *(a2 + 8) = 0;
    v9 = -64;
    goto LABEL_57;
  }

  if (!*(v3 + 16))
  {
    goto LABEL_56;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x800000020B454030);
  if ((v8 & 1) == 0)
  {
    goto LABEL_56;
  }

  outlined init with copy of Any(*(v3 + 56) + 32 * result, v19);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_56;
  }

  *a2 = v17;
  *(a2 + 8) = 0;
  v9 = 64;
LABEL_57:
  *(a2 + 16) = v9;
  return result;
}

id one-time initialization function for defaultZone()
{
  v0 = type metadata accessor for PowerZonesAlertTargetZone();
  v1 = objc_allocWithZone(v0);
  v2 = &v1[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_defaultZonesDidLoad];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v1[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = -64;
  v5.receiver = v1;
  v5.super_class = v0;
  result = objc_msgSendSuper2(&v5, sel_init);
  static PowerZonesAlertTargetZone.defaultZone = result;
  return result;
}

uint64_t protocol witness for TargetZoneStorable.zoneKey() in conformance HeartRateTargetZone(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  swift_beginAccess();
  v5 = *a3;

  return v5;
}

uint64_t specialized static TargetZoneStorage.targetZoneDict(zoneKey:activityType:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (one-time initialization token for userDefaults != -1)
  {
    swift_once();
  }

  v6 = static TargetZoneStorage.userDefaults;
  v7 = MEMORY[0x20F2E6C00](a1, a2);
  v8 = [v6 dictionaryForKey_];

  if (v8)
  {
    v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v9);
    v11 = v10;

    if (v11)
    {
      v12 = [a3 uniqueIdentifier];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      if (*(v11 + 16))
      {
        v16 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v15);
        v18 = v17;

        if (v18)
        {
          v19 = *(*(v11 + 56) + 8 * v16);

          return v19;
        }
      }

      else
      {
      }
    }
  }

  return 0;
}