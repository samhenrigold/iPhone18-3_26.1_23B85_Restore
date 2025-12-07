uint64_t *Apple_Workout_Core_PowerZonesAlertTargetZone.decoded.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Apple_Workout_Core_PowerZoneCustom(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v37 = (&v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Workout_Core_PowerZoneTarget(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v36 - v15;
  v17 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
  v18 = *(v17 - 8);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v36 - v24;
  outlined init with copy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type?(v1, v16, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type?(v16, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
    v26 = 0;
    v27 = 0.0;
    v28 = -64;
LABEL_9:
    v39 = v26;
    v40 = v27;
    v41 = v28;
    v35 = objc_allocWithZone(type metadata accessor for PowerZonesAlertTargetZone());
    return PowerZonesAlertTargetZone.init(type:)(&v39);
  }

  outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v16, v25, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
  outlined init with copy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v25, v22, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v22, v12, type metadata accessor for Apple_Workout_Core_PowerZoneTarget);
    v26 = *v12;
    v30 = v12[16];
    v39 = *(v12 + 1);
    LOBYTE(v40) = v30;
    Apple_Workout_Core_ZoneType.decoded.getter(&v38);
    outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v12, type metadata accessor for Apple_Workout_Core_PowerZoneTarget);
    outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v25, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
    v28 = 0;
    *&v27 = v38;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 1)
  {
    outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v22, v8, type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic);
    Apple_Workout_Core_PowerZoneAutomatic.decoded.getter(&v39);
    outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v8, type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic);
    outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v25, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
    v26 = v39;
    v27 = v40;
    v28 = v41;
    goto LABEL_9;
  }

  outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v25, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
  v31 = v37;
  outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v22, v37, type metadata accessor for Apple_Workout_Core_PowerZoneCustom);
  v33 = *v31;
  v32 = v31[1];
  result = outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v31, type metadata accessor for Apple_Workout_Core_PowerZoneCustom);
  if (v33 <= v32)
  {
    v26 = *&v33;
    v27 = v32;
    v28 = -123;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t Apple_Workout_Core_PowerZoneAutomatic.decoded.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v67 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v66 = &v60 - v9;
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v60 - v12;
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v60 - v15;
  v17 = type metadata accessor for Apple_Workout_Core_Zone(0);
  v18 = *(v17 - 8);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v70 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v25 = &v60 - v24;
  v27 = MEMORY[0x28223BE20](v23, v26);
  v69 = (&v60 - v28);
  MEMORY[0x28223BE20](v27, v29);
  v31 = (&v60 - v30);
  v68 = type metadata accessor for Apple_Workout_Core_CyclingPowerZone(0);
  result = MEMORY[0x28223BE20](v68, v32);
  v36 = (&v60 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = *(v1 + 1);
  v38 = *(v37 + 16);
  if (!v38)
  {
    v59 = 0;
LABEL_29:
    *a1 = *v1;
    *(a1 + 8) = v59;
    *(a1 + 16) = 64;
    return result;
  }

  v65 = v25;
  v71 = v16;
  v61 = v1;
  v62 = a1;
  v73 = MEMORY[0x277D84F90];
  v39 = v37 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
  v72 = *(v34 + 72);
  v40 = (v18 + 48);
  v63 = v31;
  v64 = v13;
  while (1)
  {
    outlined init with copy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v39, v36, type metadata accessor for Apple_Workout_Core_CyclingPowerZone);
    if (!v73)
    {
      goto LABEL_4;
    }

    v41 = *(v68 + 28);
    v42 = v71;
    outlined init with copy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type?(v36 + v41, v71, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
    v43 = *v40;
    if ((*v40)(v42, 1, v17) == 1)
    {
      *v31 = 0.0;
      v31[1] = 0.0;
      v31[2] = 0.0;
      UnknownStorage.init()();
      if (v43(v42, 1, v17) != 1)
      {
        outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type?(v71, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
      }
    }

    else
    {
      outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v42, v31, type metadata accessor for Apple_Workout_Core_Zone);
    }

    v44 = *v31;
    outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v31, type metadata accessor for Apple_Workout_Core_Zone);
    outlined init with copy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type?(v36 + v41, v13, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
    v45 = v43(v13, 1, v17);
    v46 = v70;
    if (v45 == 1)
    {
      v47 = v69;
      *v69 = 0.0;
      v47[1] = 0.0;
      v47[2] = 0.0;
      UnknownStorage.init()();
      if (v43(v13, 1, v17) != 1)
      {
        outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type?(v13, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
      }
    }

    else
    {
      v47 = v69;
      outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v13, v69, type metadata accessor for Apple_Workout_Core_Zone);
    }

    v48 = v47[1];
    result = outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v47, type metadata accessor for Apple_Workout_Core_Zone);
    if (v44 > v48)
    {
      break;
    }

    v49 = *v36;
    v50 = v36[1];
    if (*v36 > v50)
    {
      goto LABEL_31;
    }

    v51 = v66;
    outlined init with copy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type?(v36 + v41, v66, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
    if (v43(v51, 1, v17) == 1)
    {
      v52 = v65;
      *v65 = 0;
      v52[1] = 0;
      v52[2] = 0;
      UnknownStorage.init()();
      if (v43(v51, 1, v17) != 1)
      {
        outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type?(v51, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
      }
    }

    else
    {
      v52 = v65;
      outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v51, v65, type metadata accessor for Apple_Workout_Core_Zone);
    }

    v53 = *(v52 + 4);
    outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v52, type metadata accessor for Apple_Workout_Core_Zone);
    v54 = v36 + v41;
    v55 = v67;
    outlined init with copy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type?(v54, v67, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
    if (v43(v55, 1, v17) == 1)
    {
      *v46 = 0;
      *(v46 + 8) = 0;
      *(v46 + 16) = 0;
      UnknownStorage.init()();
      if (v43(v55, 1, v17) != 1)
      {
        outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type?(v55, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
      }
    }

    else
    {
      outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v55, v46, type metadata accessor for Apple_Workout_Core_Zone);
    }

    v56 = *(v46 + 20);
    outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v46, type metadata accessor for Apple_Workout_Core_Zone);
    type metadata accessor for CyclingPowerZone();
    result = swift_allocObject();
    *(result + 48) = v49;
    *(result + 56) = v50;
    v57 = floor(v44);
    v58 = floor(v48);
    if (v57 > v58)
    {
      goto LABEL_32;
    }

    *(result + 16) = v57;
    *(result + 24) = v58;
    *(result + 32) = v53;
    *(result + 40) = v56;
    MEMORY[0x20F2E6F30]();
    if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v31 = v63;
    v13 = v64;
LABEL_4:
    result = outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v36, type metadata accessor for Apple_Workout_Core_CyclingPowerZone);
    v39 += v72;
    if (!--v38)
    {
      v59 = v73;
      v1 = v61;
      a1 = v62;
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t outlined init with copy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void RouteDetectorFactory.createLocalRouteDetector(delegate:)(uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v6 = v4;
  v9 = type metadata accessor for RouteDetectorDataSource();
  v10 = objc_allocWithZone(v9);
  v10[OBJC_IVAR____TtC11WorkoutCore23RouteDetectorDataSource_type] = a3;
  v19.receiver = v10;
  v19.super_class = v9;
  v11 = objc_msgSendSuper2(&v19, sel_init);
  v12 = type metadata accessor for RouteDetectorAdapter();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC11WorkoutCore20RouteDetectorAdapter_routeDelegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = a2;
  swift_unknownObjectWeakAssign();
  v13[OBJC_IVAR____TtC11WorkoutCore20RouteDetectorAdapter_type] = a3;
  v18.receiver = v13;
  v18.super_class = v12;
  v14 = objc_msgSendSuper2(&v18, sel_init);
  swift_beginAccess();
  v15 = v14;
  MEMORY[0x20F2E6F30]();
  if (*((v6[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  swift_beginAccess();
  v16 = v11;
  MEMORY[0x20F2E6F30]();
  if (*((v6[4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6[4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v17 = [objc_allocWithZone(MEMORY[0x277D279F0]) initWithInitiator:*MEMORY[0x277D27930] delegate:v15 dataSource:v16 delegateQueue:v6[2]];
  a4[3] = type metadata accessor for MRRelevantRouteDetector(0, &lazy cache variable for type metadata for MRRelevantRouteDetector, 0x277D279F0);
  a4[4] = &protocol witness table for MRRelevantRouteDetector;

  *a4 = v17;
}

uint64_t RouteDetectorFactory.__deallocating_deinit()
{
  swift_beginAccess();
  v1 = MEMORY[0x277D84F90];
  *(v0 + 24) = MEMORY[0x277D84F90];

  swift_beginAccess();
  *(v0 + 32) = v1;

  return swift_deallocClassInstance();
}

uint64_t RouteDetectorAdapter.relevantRouteDetector(_:didDetectRelevantRoute:)(void *a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v16 - v7;
  v9 = v2[OBJC_IVAR____TtC11WorkoutCore20RouteDetectorAdapter_type];
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  if (v9)
  {
    v11 = &async function pointer to partial apply for closure #2 in RouteDetectorAdapter.relevantRouteDetector(_:didDetectRelevantRoute:);
  }

  else
  {
    v11 = &async function pointer to partial apply for closure #1 in RouteDetectorAdapter.relevantRouteDetector(_:didDetectRelevantRoute:);
  }

  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = v2;
  *(v12 + 40) = a1;
  *(v12 + 48) = a2;
  v13 = v2;
  v14 = a1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v8, v11, v12);
}

uint64_t closure #1 in RouteDetectorAdapter.relevantRouteDetector(_:didDetectRelevantRoute:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 40) = a6;
  *(v6 + 16) = a1;
  *(v6 + 24) = a4;
  return MEMORY[0x2822009F8](closure #1 in RouteDetectorAdapter.relevantRouteDetector(_:didDetectRelevantRoute:), 0, 0);
}

uint64_t closure #1 in RouteDetectorAdapter.relevantRouteDetector(_:didDetectRelevantRoute:)()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 32) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](closure #1 in RouteDetectorAdapter.relevantRouteDetector(_:didDetectRelevantRoute:), Strong, 0);
  }

  else
  {
    **(v0 + 16) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

{
  _s11WorkoutCore26BluetoothHeadphonesMonitorC13routeDetector_19didDetectLocalRouteyAA0K9Detecting_p_SbtFTf4enn_nSo010MRRelevantkG0C_Ttg5(*(v0 + 40), *(v0 + 32));
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](closure #1 in RouteDetectorAdapter.relevantRouteDetector(_:didDetectRelevantRoute:), 0, 0);
}

uint64_t closure #2 in RouteDetectorAdapter.relevantRouteDetector(_:didDetectRelevantRoute:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 40) = a6;
  *(v6 + 16) = a1;
  *(v6 + 24) = a4;
  return MEMORY[0x2822009F8](closure #2 in RouteDetectorAdapter.relevantRouteDetector(_:didDetectRelevantRoute:), 0, 0);
}

uint64_t closure #2 in RouteDetectorAdapter.relevantRouteDetector(_:didDetectRelevantRoute:)()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 32) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](closure #2 in RouteDetectorAdapter.relevantRouteDetector(_:didDetectRelevantRoute:), Strong, 0);
  }

  else
  {
    **(v0 + 16) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

{
  _s11WorkoutCore26BluetoothHeadphonesMonitorC13routeDetector_23didDetectCompanionRouteyAA0K9Detecting_p_SbtFTf4enn_nSo010MRRelevantkG0C_Ttg5(*(v0 + 40), *(v0 + 32));
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](closure #2 in RouteDetectorAdapter.relevantRouteDetector(_:didDetectRelevantRoute:), 0, 0);
}

{
  **(v0 + 16) = *(v0 + 32) == 0;
  return (*(v0 + 8))();
}

id BluetoothHeadphonesMonitor.init(routeDetectorFactory:)(uint64_t a1)
{
  v2 = v1;
  v25 = a1;
  swift_getObjectType();
  v24 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v4);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v7, v8);
  v9 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v9 - 8, v10);
  swift_defaultActor_initialize();
  *(v1 + 264) = 0;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 192) = 0u;
  swift_unknownObjectWeakInit();
  v23[1] = type metadata accessor for MRRelevantRouteDetector(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *&v29 = 0;
  *(&v29 + 1) = 0xE000000000000000;

  _StringGuts.grow(_:)(16);
  v11 = _typeName(_:qualified:)();
  v13 = v12;

  *&v29 = v11;
  *(&v29 + 1) = v13;
  MEMORY[0x20F2E6D80](0x746167656C65642ELL, 0xEE00657565755165);
  static DispatchQoS.unspecified.getter();
  *&v29 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v6, *MEMORY[0x277D85260], v24);
  v14 = v25;
  v15 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v2 + 120) = v15;
  outlined init with copy of RouteDetecting?(v14, &v27, &_s11WorkoutCore21RouteDetectorBuilding_pSgMd, &_s11WorkoutCore21RouteDetectorBuilding_pSgMR);
  if (v28)
  {

    outlined init with take of RouteDetectorBuilding(&v27, &v29);
  }

  else
  {
    v16 = type metadata accessor for RouteDetectorFactory();
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D84F90];
    v17[3] = MEMORY[0x277D84F90];
    v17[4] = v18;
    v17[2] = v15;
    v30 = v16;
    v31 = &protocol witness table for RouteDetectorFactory;
    v19 = v15;

    *&v29 = v17;
    if (v28)
    {
      outlined destroy of RouteDetecting?(&v27, &_s11WorkoutCore21RouteDetectorBuilding_pSgMd, &_s11WorkoutCore21RouteDetectorBuilding_pSgMR);
    }
  }

  outlined init with take of RouteDetectorBuilding(&v29, v2 + 216);
  *(v2 + 112) = 0;
  *(v2 + 208) = 0;
  v20 = type metadata accessor for BluetoothHeadphonesMonitor();
  v26.receiver = v2;
  v26.super_class = v20;
  v21 = objc_msgSendSuper2(&v26, sel_init);
  outlined destroy of RouteDetecting?(v14, &_s11WorkoutCore21RouteDetectorBuilding_pSgMd, &_s11WorkoutCore21RouteDetectorBuilding_pSgMR);
  return v21;
}

uint64_t BluetoothHeadphonesMonitor.setDelegate(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v23[-v8];
  v3[33] = a2;
  swift_unknownObjectWeakAssign();
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static WOLog.workoutVoice);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24[0] = v14;
    *v13 = 136315138;
    v15 = _typeName(_:qualified:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v24);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_20AEA4000, v11, v12, "[%s] Initial Overall Route Connected: false", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm_0(v14);
    MEMORY[0x20F2E9420](v14, -1, -1);
    MEMORY[0x20F2E9420](v13, -1, -1);
  }

  if (a1)
  {
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    *(v19 + 32) = a1;
    *(v19 + 40) = 0;
    swift_unknownObjectRetain();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &closure #1 in WorkoutVoiceMomentCoordinator.headphonesConnectionStatusUpdated(_:)partial apply, v19);
  }

  swift_beginAccess();
  outlined init with copy of RouteDetecting?((v3 + 16), v24, &_s11WorkoutCore14RouteDetecting_pSgMd, &_s11WorkoutCore14RouteDetecting_pSgMR);
  v20 = v25;
  outlined destroy of RouteDetecting?(v24, &_s11WorkoutCore14RouteDetecting_pSgMd, &_s11WorkoutCore14RouteDetecting_pSgMR);
  if (!v20)
  {
    __swift_project_boxed_opaque_existential_1(v3 + 27, v3[30]);
    RouteDetectorFactory.createLocalRouteDetector(delegate:)(&protocol witness table for BluetoothHeadphonesMonitor, v24);
    swift_beginAccess();
    outlined assign with take of RouteDetecting?(v24, (v3 + 16));
    swift_endAccess();
  }

  swift_beginAccess();
  outlined init with copy of RouteDetecting?((v3 + 21), v24, &_s11WorkoutCore14RouteDetecting_pSgMd, &_s11WorkoutCore14RouteDetecting_pSgMR);
  v21 = v25;
  result = outlined destroy of RouteDetecting?(v24, &_s11WorkoutCore14RouteDetecting_pSgMd, &_s11WorkoutCore14RouteDetecting_pSgMR);
  if (!v21)
  {
    __swift_project_boxed_opaque_existential_1(v3 + 27, v3[30]);
    RouteDetectorFactory.createCompanionRouteDetector(delegate:)(&protocol witness table for BluetoothHeadphonesMonitor, v24);
    swift_beginAccess();
    outlined assign with take of RouteDetecting?(v24, (v3 + 21));
    return swift_endAccess();
  }

  return result;
}

Swift::Void __swiftcall BluetoothHeadphonesMonitor.beginObserving()()
{
  swift_beginAccess();
  outlined init with copy of RouteDetecting?(v0 + 128, v8, &_s11WorkoutCore14RouteDetecting_pSgMd, &_s11WorkoutCore14RouteDetecting_pSgMR);
  if (v9)
  {
    outlined init with copy of RouteDetecting(v8, v5);
    outlined destroy of RouteDetecting?(v8, &_s11WorkoutCore14RouteDetecting_pSgMd, &_s11WorkoutCore14RouteDetecting_pSgMR);
    v1 = v6;
    v2 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    (*(v2 + 8))(v1, v2);
    __swift_destroy_boxed_opaque_existential_0Tm_0(v5);
  }

  else
  {
    outlined destroy of RouteDetecting?(v8, &_s11WorkoutCore14RouteDetecting_pSgMd, &_s11WorkoutCore14RouteDetecting_pSgMR);
  }

  swift_beginAccess();
  outlined init with copy of RouteDetecting?(v0 + 168, v8, &_s11WorkoutCore14RouteDetecting_pSgMd, &_s11WorkoutCore14RouteDetecting_pSgMR);
  if (v9)
  {
    outlined init with copy of RouteDetecting(v8, v5);
    outlined destroy of RouteDetecting?(v8, &_s11WorkoutCore14RouteDetecting_pSgMd, &_s11WorkoutCore14RouteDetecting_pSgMR);
    v3 = v6;
    v4 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    (*(v4 + 8))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm_0(v5);
  }

  else
  {
    outlined destroy of RouteDetecting?(v8, &_s11WorkoutCore14RouteDetecting_pSgMd, &_s11WorkoutCore14RouteDetecting_pSgMR);
  }
}

Swift::Void __swiftcall BluetoothHeadphonesMonitor.stopObserving()()
{
  swift_beginAccess();
  outlined init with copy of RouteDetecting?(v0 + 128, v8, &_s11WorkoutCore14RouteDetecting_pSgMd, &_s11WorkoutCore14RouteDetecting_pSgMR);
  if (v9)
  {
    outlined init with copy of RouteDetecting(v8, v5);
    outlined destroy of RouteDetecting?(v8, &_s11WorkoutCore14RouteDetecting_pSgMd, &_s11WorkoutCore14RouteDetecting_pSgMR);
    v1 = v6;
    v2 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    (*(v2 + 16))(v1, v2);
    __swift_destroy_boxed_opaque_existential_0Tm_0(v5);
  }

  else
  {
    outlined destroy of RouteDetecting?(v8, &_s11WorkoutCore14RouteDetecting_pSgMd, &_s11WorkoutCore14RouteDetecting_pSgMR);
  }

  swift_beginAccess();
  outlined init with copy of RouteDetecting?(v0 + 168, v8, &_s11WorkoutCore14RouteDetecting_pSgMd, &_s11WorkoutCore14RouteDetecting_pSgMR);
  if (v9)
  {
    outlined init with copy of RouteDetecting(v8, v5);
    outlined destroy of RouteDetecting?(v8, &_s11WorkoutCore14RouteDetecting_pSgMd, &_s11WorkoutCore14RouteDetecting_pSgMR);
    v3 = v6;
    v4 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    (*(v4 + 16))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm_0(v5);
  }

  else
  {
    outlined destroy of RouteDetecting?(v8, &_s11WorkoutCore14RouteDetecting_pSgMd, &_s11WorkoutCore14RouteDetecting_pSgMR);
  }
}

void BluetoothHeadphonesMonitor.updateHeadphonesConnectionStatus()()
{
  v1 = v0;
  swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v29 - v4;
  if (*(v0 + 113))
  {
    v6 = 1;
  }

  else
  {
    v6 = *(v0 + 208);
  }

  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v8 = __swift_project_value_buffer(v7, static WOLog.workoutVoice);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v29 = v8;
    v12 = v11;
    v13 = swift_slowAlloc();
    v30 = v13;
    *v12 = 136315394;
    v14 = _typeName(_:qualified:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v30);

    *(v12 + 4) = v16;
    *(v12 + 12) = 1024;
    *(v12 + 14) = v6;
    _os_log_impl(&dword_20AEA4000, v9, v10, "[%s] Overall Route Connected: %{BOOL}d", v12, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm_0(v13);
    MEMORY[0x20F2E9420](v13, -1, -1);
    MEMORY[0x20F2E9420](v12, -1, -1);
  }

  v17 = *(v1 + 112);
  *(v1 + 112) = v6;
  if (v6 != v17)
  {
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v30 = v21;
      *v20 = 136315394;
      v22 = _typeName(_:qualified:)();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v30);

      *(v20 + 4) = v24;
      *(v20 + 12) = 1024;
      *(v20 + 14) = v6;
      _os_log_impl(&dword_20AEA4000, v18, v19, "[%s] Notifying Observer of connection status update: %{BOOL}d", v20, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm_0(v21);
      MEMORY[0x20F2E9420](v21, -1, -1);
      MEMORY[0x20F2E9420](v20, -1, -1);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v26 = Strong;
      v27 = type metadata accessor for TaskPriority();
      (*(*(v27 - 8) + 56))(v5, 1, 1, v27);
      v28 = swift_allocObject();
      *(v28 + 16) = 0;
      *(v28 + 24) = 0;
      *(v28 + 32) = v26;
      *(v28 + 40) = v6;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in WorkoutVoiceMomentCoordinator.headphonesConnectionStatusUpdated(_:), v28);
    }
  }
}

uint64_t BluetoothHeadphonesMonitor.__deallocating_deinit()
{
  outlined destroy of RouteDetecting?(v0 + 128, &_s11WorkoutCore14RouteDetecting_pSgMd, &_s11WorkoutCore14RouteDetecting_pSgMR);
  outlined destroy of RouteDetecting?(v0 + 168, &_s11WorkoutCore14RouteDetecting_pSgMd, &_s11WorkoutCore14RouteDetecting_pSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm_0((v0 + 216));
  sub_20AEC989C(v0 + 256);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RouteDetectorDataSource.RouteType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RouteDetectorDataSource.RouteType(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

id RouteDetectorAdapter.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for RouteDetectorDataSource.RouteType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RouteDetectorDataSource.RouteType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type RouteDetectorDataSource.RouteType and conformance RouteDetectorDataSource.RouteType()
{
  result = lazy protocol witness table cache variable for type RouteDetectorDataSource.RouteType and conformance RouteDetectorDataSource.RouteType;
  if (!lazy protocol witness table cache variable for type RouteDetectorDataSource.RouteType and conformance RouteDetectorDataSource.RouteType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RouteDetectorDataSource.RouteType and conformance RouteDetectorDataSource.RouteType);
  }

  return result;
}

uint64_t partial apply for closure #1 in WorkoutVoiceMomentCoordinator.headphonesConnectionStatusUpdated(_:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in WorkoutVoiceMomentCoordinator.headphonesConnectionStatusUpdated(_:);

  return closure #1 in WorkoutVoiceMomentCoordinator.headphonesConnectionStatusUpdated(_:)(a1, v4, v5, v6, v7);
}

uint64_t partial apply for closure #2 in RouteDetectorAdapter.relevantRouteDetector(_:didDetectRelevantRoute:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #2 in RouteDetectorAdapter.relevantRouteDetector(_:didDetectRelevantRoute:);

  return closure #2 in RouteDetectorAdapter.relevantRouteDetector(_:didDetectRelevantRoute:)(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_52Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t partial apply for closure #1 in RouteDetectorAdapter.relevantRouteDetector(_:didDetectRelevantRoute:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in RouteDetectorAdapter.relevantRouteDetector(_:didDetectRelevantRoute:);

  return closure #1 in RouteDetectorAdapter.relevantRouteDetector(_:didDetectRelevantRoute:)(a1, v4, v5, v6, v7, v8);
}

void _s11WorkoutCore26BluetoothHeadphonesMonitorC13routeDetector_19didDetectLocalRouteyAA0K9Detecting_p_SbtFTf4enn_nSo010MRRelevantkG0C_Ttg5(char a1, uint64_t a2)
{
  swift_getObjectType();
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.workoutVoice);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v12);

    *(v7 + 4) = v11;
    *(v7 + 12) = 1024;
    *(v7 + 14) = a1 & 1;
    _os_log_impl(&dword_20AEA4000, v5, v6, "[%s] Setting Local Route Connected: %{BOOL}d", v7, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm_0(v8);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  *(a2 + 113) = a1 & 1;
  BluetoothHeadphonesMonitor.updateHeadphonesConnectionStatus()();
}

void _s11WorkoutCore26BluetoothHeadphonesMonitorC13routeDetector_23didDetectCompanionRouteyAA0K9Detecting_p_SbtFTf4enn_nSo010MRRelevantkG0C_Ttg5(char a1, uint64_t a2)
{
  swift_getObjectType();
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.workoutVoice);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v12);

    *(v7 + 4) = v11;
    *(v7 + 12) = 1024;
    *(v7 + 14) = a1 & 1;
    _os_log_impl(&dword_20AEA4000, v5, v6, "[%s] Setting Companion Route Connected: %{BOOL}d", v7, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm_0(v8);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  *(a2 + 208) = a1 & 1;
  BluetoothHeadphonesMonitor.updateHeadphonesConnectionStatus()();
}

uint64_t outlined init with copy of RouteDetecting(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined assign with take of RouteDetecting?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore14RouteDetecting_pSgMd, &_s11WorkoutCore14RouteDetecting_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.headphonesConnectionStatusUpdated(_:)partial apply(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = closure #1 in WorkoutVoiceMomentCoordinator.headphonesConnectionStatusUpdated(_:)partial apply;

  return closure #1 in WorkoutVoiceMomentCoordinator.headphonesConnectionStatusUpdated(_:)(a1, v4, v5, v6, v7);
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.headphonesConnectionStatusUpdated(_:)partial apply()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t type metadata accessor for MRRelevantRouteDetector(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t outlined init with copy of RouteDetecting?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of RouteDetecting?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of RouteDetectorBuilding(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t UnlockedSinceBootMonitor.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*UnlockedSinceBootMonitor.delegate.modify(uint64_t *a1))()
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return UnlockedSinceBootMonitor.delegate.modify;
}

uint64_t UnlockedSinceBootMonitor.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = -1;
  *(v0 + 32) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t UnlockedSinceBootMonitor.init()()
{
  *(v0 + 16) = -1;
  *(v0 + 32) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t UnlockedSinceBootMonitor.handleKeyBagLockStatusNotification()()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_opt_self();

  if ([v11 isMainThread])
  {
    closure #1 in UnlockedSinceBootMonitor.handleKeyBagLockStatusNotification()(v10);
  }

  else
  {
    type metadata accessor for OS_dispatch_queue();
    v13 = static OS_dispatch_queue.main.getter();
    v18 = v5;
    v14 = v13;
    v15 = swift_allocObject();
    *(v15 + 16) = partial apply for closure #1 in UnlockedSinceBootMonitor.handleKeyBagLockStatusNotification();
    *(v15 + 24) = v10;
    aBlock[4] = closure #1 in static DispatchUtilities.ensureMainQueueOrAsync(block:)partial apply;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_23_0;
    v16 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F2E7580](0, v9, v4, v16);
    _Block_release(v16);

    (*(v1 + 8))(v4, v0);
    (*(v6 + 8))(v9, v18);
  }
}

uint64_t closure #1 in UnlockedSinceBootMonitor.handleKeyBagLockStatusNotification()(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static WOLog.app);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v17[0] = v7;
      *v6 = 67109378;
      *(v6 + 4) = MKBDeviceUnlockedSinceBoot() == 1;

      *(v6 + 8) = 2080;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v9 = *(v2 + 32);
      v17[1] = Strong;
      v17[2] = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33UnlockedSinceBootDelegateProtocol_pSgMd, &_s11WorkoutCore33UnlockedSinceBootDelegateProtocol_pSgMR);
      v10 = Optional.description.getter();
      v12 = v11;
      swift_unknownObjectRelease();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, v17);

      *(v6 + 10) = v13;
      _os_log_impl(&dword_20AEA4000, v4, v5, "[UnlockedSinceBoot] handleKeyBagLockStatusNotification, unlocked: %{BOOL}d, delegate: %s", v6, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x20F2E9420](v7, -1, -1);
      MEMORY[0x20F2E9420](v6, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v2 + 32);
      ObjectType = swift_getObjectType();
      v16 = MKBDeviceUnlockedSinceBoot() == 1;
      (*(v14 + 8))(v16, ObjectType, v14);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t UnlockedSinceBootMonitor.deinit()
{
  UnlockedSinceBootMonitor.stopMonitoring()();
  outlined destroy of weak UnlockedSinceBootDelegateProtocol?(v0 + 24);
  return v0;
}

uint64_t UnlockedSinceBootMonitor.__deallocating_deinit()
{
  UnlockedSinceBootMonitor.stopMonitoring()();
  outlined destroy of weak UnlockedSinceBootDelegateProtocol?(v0 + 24);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall UnlockedSinceBootMonitor.startMonitoring()()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_opt_self();

  if ([v11 isMainThread])
  {
    closure #1 in UnlockedSinceBootMonitor.startMonitoring()(v10);
  }

  else
  {
    type metadata accessor for OS_dispatch_queue();
    v12 = static OS_dispatch_queue.main.getter();
    v17 = v5;
    v13 = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = partial apply for closure #1 in UnlockedSinceBootMonitor.startMonitoring();
    *(v14 + 24) = v10;
    aBlock[4] = closure #1 in static DispatchUtilities.ensureMainQueueOrAsync(block:)partial apply;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_11;
    v15 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F2E7580](0, v9, v4, v15);
    _Block_release(v15);

    (*(v1 + 8))(v4, v0);
    (*(v6 + 8))(v9, v17);
  }
}

void closure #1 in UnlockedSinceBootMonitor.startMonitoring()(uint64_t a1)
{
  aBlock[9] = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for DispatchQoS.QoSClass();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (*(Strong + 16) != -1)
    {
      if (one-time initialization token for app != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static WOLog.app);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v9, v10))
      {
        goto LABEL_19;
      }

      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_20AEA4000, v9, v10, "[UnlockedSinceBoot] already monitoring lock status notifications", v11, 2u);
      v12 = v11;
LABEL_18:
      MEMORY[0x20F2E9420](v12, -1, -1);
LABEL_19:

      return;
    }

    out_token = -1;
    type metadata accessor for OS_dispatch_queue();
    (*(v2 + 104))(v5, *MEMORY[0x277D851C8], v1);
    v13 = static OS_dispatch_queue.global(qos:)();
    (*(v2 + 8))(v5, v1);
    v14 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = partial apply for closure #1 in closure #1 in UnlockedSinceBootMonitor.startMonitoring();
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
    aBlock[3] = &block_descriptor_27;
    v15 = _Block_copy(aBlock);

    v16 = notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &out_token, v13, v15);
    _Block_release(v15);

    if (v16 || out_token == -1)
    {
      if (one-time initialization token for app != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, static WOLog.app);
      v9 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v9, v23))
      {
        goto LABEL_19;
      }

      v24 = swift_slowAlloc();
      *v24 = 67109120;
      *(v24 + 4) = v16;
      _os_log_impl(&dword_20AEA4000, v9, v23, "[UnlockedSinceBoot] error registering for lock status notifications, result: %u", v24, 8u);
      v12 = v24;
      goto LABEL_18;
    }

    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static WOLog.app);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      aBlock[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x800000020B4580A0, aBlock);
      _os_log_impl(&dword_20AEA4000, v18, v19, "[UnlockedSinceBoot] registered for lock status notifications: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x20F2E9420](v21, -1, -1);
      MEMORY[0x20F2E9420](v20, -1, -1);
    }

    *(v7 + 16) = out_token;
  }
}

uint64_t closure #1 in closure #1 in UnlockedSinceBootMonitor.startMonitoring()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    UnlockedSinceBootMonitor.handleKeyBagLockStatusNotification()();
  }

  return result;
}

uint64_t (*protocol witness for UnlockedSinceBootMonitorProtocol.delegate.modify in conformance UnlockedSinceBootMonitor(uint64_t *a1))()
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
  v7 = *(v5 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return protocol witness for UnlockedSinceBootMonitorProtocol.delegate.modify in conformance UnlockedSinceBootMonitor;
}

void UnlockedSinceBootMonitor.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LiveZone.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LiveZone.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LiveZone.CodingKeys@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance LiveZone.CodingKeys, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LiveZone.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance LiveZone.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LiveZone.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LiveZone.CodingKeys and conformance LiveZone.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LiveZone.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LiveZone.CodingKeys and conformance LiveZone.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void LiveZone.__allocating_init(displaySpan:configuration:elapsedTimeInZone:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  v10 = swift_allocObject();
  *(v10 + 48) = 0;
  swift_beginAccess();
  *(v10 + 48) = a5;
  v11 = floor(a3);
  v12 = floor(a4);
  if (v11 > v12)
  {
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v11;
    *(v10 + 24) = v12;
    *(v10 + 32) = a1;
    *(v10 + 40) = a2;
  }
}

void LiveZone.init(displaySpan:configuration:elapsedTimeInZone:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  *(v5 + 48) = 0;
  swift_beginAccess();
  *(v5 + 48) = a5;
  v11 = floor(a3);
  v12 = floor(a4);
  if (v11 > v12)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v11;
    *(v5 + 24) = v12;
    *(v5 + 32) = a1;
    *(v5 + 40) = a2;
  }
}

uint64_t LiveZone.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore8LiveZoneC10CodingKeys33_DC82D2A511146BC87E385E9C537E3EB3LLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore8LiveZoneC10CodingKeys33_DC82D2A511146BC87E385E9C537E3EB3LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v15[-1] - v7;
  *(v1 + 48) = 0;
  outlined init with copy of Decoder(a1, v15);
  Zone.init(from:)(v15);
  v10 = v9;
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    lazy protocol witness table accessor for type LiveZone.CodingKeys and conformance LiveZone.CodingKeys();
    dispatch thunk of Decoder.container<A>(keyedBy:)();
    KeyedDecodingContainer.decode(_:forKey:)();
    v12 = v11;
    (*(v5 + 8))(v8, v4);
    swift_beginAccess();
    *(v10 + 48) = v12;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

uint64_t outlined init with copy of Decoder(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t lazy protocol witness table accessor for type LiveZone.CodingKeys and conformance LiveZone.CodingKeys()
{
  result = lazy protocol witness table cache variable for type LiveZone.CodingKeys and conformance LiveZone.CodingKeys;
  if (!lazy protocol witness table cache variable for type LiveZone.CodingKeys and conformance LiveZone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LiveZone.CodingKeys and conformance LiveZone.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LiveZone.CodingKeys and conformance LiveZone.CodingKeys;
  if (!lazy protocol witness table cache variable for type LiveZone.CodingKeys and conformance LiveZone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LiveZone.CodingKeys and conformance LiveZone.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LiveZone.CodingKeys and conformance LiveZone.CodingKeys;
  if (!lazy protocol witness table cache variable for type LiveZone.CodingKeys and conformance LiveZone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LiveZone.CodingKeys and conformance LiveZone.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LiveZone.CodingKeys and conformance LiveZone.CodingKeys;
  if (!lazy protocol witness table cache variable for type LiveZone.CodingKeys and conformance LiveZone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LiveZone.CodingKeys and conformance LiveZone.CodingKeys);
  }

  return result;
}

uint64_t LiveZone.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore8LiveZoneC10CodingKeys33_DC82D2A511146BC87E385E9C537E3EB3LLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore8LiveZoneC10CodingKeys33_DC82D2A511146BC87E385E9C537E3EB3LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v9 - v6;
  result = Zone.encode(to:)(a1);
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    lazy protocol witness table accessor for type LiveZone.CodingKeys and conformance LiveZone.CodingKeys();
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    swift_beginAccess();
    KeyedEncodingContainer.encode(_:forKey:)();
    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

double protocol witness for LiveZoneProtocol.elapsedTimeInZone.getter in conformance LiveZone()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 48);
}

void protocol witness for LiveZoneProtocol.elapsedTimeInZone.setter in conformance LiveZone(double a1)
{
  v3 = *v1;
  swift_beginAccess();
  *(v3 + 48) = a1;
}

uint64_t protocol witness for Identifiable.id.getter in conformance LiveZone@<X0>(uint64_t *a1@<X8>)
{
  result = dispatch thunk of CustomStringConvertible.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t LiveZone.logString.getter()
{
  _StringGuts.grow(_:)(49);
  v0 = _typeName(_:qualified:)();
  MEMORY[0x20F2E6D80](v0);

  MEMORY[0x20F2E6D80](40, 0xE100000000000000);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v1);

  MEMORY[0x20F2E6D80](8236, 0xE200000000000000);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v2);

  MEMORY[0x20F2E6D80](0x616C707369642029, 0xEF203A6E61705379);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x20F2E6D80](3943982, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x20F2E6D80](0, 0xE000000000000000);

  MEMORY[0x20F2E6D80](0xD000000000000015, 0x800000020B458120);
  swift_beginAccess();
  Double.write<A>(to:)();
  return 0;
}

uint64_t getEnumTagSinglePayload for LiveZone.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for LiveZone.CodingKeys(_WORD *result, int a2, int a3)
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

Swift::Bool __swiftcall FIUIWorkoutActivityType.supportedForDevice(_:)(WorkoutCore::WorkoutDeviceType a1)
{
  if (*a1 != 3)
  {
    return 1;
  }

  v2 = [v1 effectiveTypeIdentifier];
  if ((v2 - 13) > 0x3A || ((1 << (v2 - 13)) & 0x600008001000801) == 0)
  {
    return 0;
  }

  else
  {
    return [v1 isIndoor] ^ 1;
  }
}

Swift::Double __swiftcall HKWorkoutBuilderQuantity.valueFor(unit:)(HKUnit unit)
{
  v3 = [v1 quantity];
  [v3 doubleValueForUnit_];
  v5 = v4;

  return v5;
}

uint64_t HKWorkoutBuilderQuantity.startDate.getter(void (*a1)(void))
{
  v3 = type metadata accessor for DateInterval();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 dateInterval];
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

  a1();
  return (*(v4 + 8))(v7, v3);
}

Swift::Double __swiftcall HKQuantitySample.valueFor(unit:)(HKUnit unit)
{
  v2 = [v1 quantity];
  [v2 _value];
  v4 = v3;

  return v4;
}

Swift::Bool __swiftcall HKQuantitySample.useSampleDuration()()
{
  v1 = [v0 quantityType];
  v2 = [v1 aggregationStyle];

  return v2 == 0;
}

void protocol witness for ChartableSample.startDate.getter in conformance HKQuantitySample(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
}

double protocol witness for ChartableSample.valueFor(unit:) in conformance HKQuantitySample()
{
  v1 = [*v0 quantity];
  [v1 _value];
  v3 = v2;

  return v3;
}

BOOL protocol witness for ChartableSample.useSampleDuration() in conformance HKQuantitySample()
{
  v1 = [*v0 quantityType];
  v2 = [v1 aggregationStyle];

  return v2 == 0;
}

uint64_t protocol witness for ChartableSample.startDate.getter in conformance HKWorkoutBuilderQuantity(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = type metadata accessor for DateInterval();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [*v3 dateInterval];
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

  a3();
  return (*(v6 + 8))(v9, v5);
}

double protocol witness for ChartableSample.valueFor(unit:) in conformance HKWorkoutBuilderQuantity(uint64_t a1)
{
  v3 = [*v1 quantity];
  [v3 doubleValueForUnit_];
  v5 = v4;

  return v5;
}

uint64_t ElevationSample.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

Swift::Double __swiftcall ElevationSample.valueFor(unit:)(HKUnit unit)
{
  v3 = *(v1 + *(type metadata accessor for ElevationSample(0) + 20));

  [v3 doubleValueForUnit_];
  return result;
}

uint64_t protocol witness for ChartableSample.startDate.getter in conformance ElevationSample@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Apple_Workout_Core_Activity.metadata.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Apple_Workout_Core_Activity.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_Activity(0) + 36);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_Activity.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_Activity(0) + 36);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Workout_Core_Activity.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  *a1 = 0;
  *(a1 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore06Apple_c1_D22_ActivityMetadataValueVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  type metadata accessor for Apple_Workout_Core_Activity(0);
  return UnknownStorage.init()();
}

uint64_t Apple_Workout_Core_ActivityMetadataValue.stringValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v7 - v3;
  outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v0, &v7 - v3, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v5 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v4, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return *v4;
    }

    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v4, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
  }

  return 0;
}

uint64_t key path getter for Apple_Workout_Core_ActivityMetadataValue.stringValue : Apple_Workout_Core_ActivityMetadataValue@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = (&v12 - v6);
  outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(a1, &v12 - v6, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    result = outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v7, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  }

  else
  {
    result = swift_getEnumCaseMultiPayload();
    if (!result)
    {
      v10 = *v7;
      v11 = v7[1];
      goto LABEL_6;
    }

    result = outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v7, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
  }

  v10 = 0;
  v11 = 0xE000000000000000;
LABEL_6:
  *a2 = v10;
  a2[1] = v11;
  return result;
}

uint64_t key path setter for Apple_Workout_Core_ActivityMetadataValue.stringValue : Apple_Workout_Core_ActivityMetadataValue(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];

  outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(a2, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  *a2 = v4;
  a2[1] = v3;
  v5 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, 0, 1, v5);
}

uint64_t Apple_Workout_Core_ActivityMetadataValue.stringValue.setter(uint64_t a1, uint64_t a2)
{
  outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v2, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  *v2 = a1;
  v2[1] = a2;
  v5 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(v2, 0, 1, v5);
}

void (*Apple_Workout_Core_ActivityMetadataValue.stringValue.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[3] = v8;
  outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v2, v8, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v10 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  v6[4] = v10;
  v11 = *(v10 - 8);
  v6[5] = v11;
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v9, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      v12 = *v9;
      v13 = v9[1];
      goto LABEL_12;
    }

    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v9, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
  }

  v12 = 0;
  v13 = 0xE000000000000000;
LABEL_12:
  *v6 = v12;
  v6[1] = v13;
  return Apple_Workout_Core_ActivityMetadataValue.stringValue.modify;
}

void Apple_Workout_Core_ActivityMetadataValue.stringValue.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v8 = (*a1)[2];
  v7 = (*a1)[3];
  if (a2)
  {

    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v8, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
    *v8 = v4;
    v8[1] = v3;
    swift_storeEnumTagMultiPayload();
    (*(v6 + 56))(v8, 0, 1, v5);
  }

  else
  {
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?((*a1)[2], &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
    *v8 = v4;
    v8[1] = v3;
    swift_storeEnumTagMultiPayload();
    (*(v6 + 56))(v8, 0, 1, v5);
  }

  free(v7);

  free(v2);
}

uint64_t Apple_Workout_Core_ActivityMetadataValue.quantityValue.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v10 - v6;
  outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v2, &v10 - v6, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v7, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of Apple_Workout_Core_HKQuantity(v7, a1, type metadata accessor for Apple_Workout_Core_HKQuantity);
    }

    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v7, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  type metadata accessor for Apple_Workout_Core_HKQuantity(0);
  return UnknownStorage.init()();
}

uint64_t key path setter for Apple_Workout_Core_ActivityMetadataValue.quantityValue : Apple_Workout_Core_ActivityMetadataValue(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_HKQuantity(a1, v7, type metadata accessor for Apple_Workout_Core_HKQuantity);
  outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(a2, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  outlined init with take of Apple_Workout_Core_HKQuantity(v7, a2, type metadata accessor for Apple_Workout_Core_HKQuantity);
  v8 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t Apple_Workout_Core_ActivityMetadataValue.quantityValue.setter(uint64_t a1)
{
  outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v1, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  outlined init with take of Apple_Workout_Core_HKQuantity(a1, v1, type metadata accessor for Apple_Workout_Core_HKQuantity);
  v3 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Workout_Core_ActivityMetadataValue.quantityValue.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR) - 8) + 64);
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
  v9 = *(*(type metadata accessor for Apple_Workout_Core_HKQuantity(0) - 8) + 64);
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
  outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v1, v8, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v12 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v8, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
LABEL_15:
    *v11 = 0;
    v11[1] = 0;
    v11[2] = 0xE000000000000000;
    UnknownStorage.init()();
    return Apple_Workout_Core_ActivityMetadataValue.quantityValue.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v8, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
    goto LABEL_15;
  }

  outlined init with take of Apple_Workout_Core_HKQuantity(v8, v11, type metadata accessor for Apple_Workout_Core_HKQuantity);
  return Apple_Workout_Core_ActivityMetadataValue.quantityValue.modify;
}

void Apple_Workout_Core_ActivityMetadataValue.quantityValue.modify(uint64_t **a1, char a2)
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
    outlined init with copy of Apple_Workout_Core_HKQuantity((*a1)[3], v5, type metadata accessor for Apple_Workout_Core_HKQuantity);
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v8, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
    outlined init with take of Apple_Workout_Core_HKQuantity(v5, v8, type metadata accessor for Apple_Workout_Core_HKQuantity);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v6, type metadata accessor for Apple_Workout_Core_HKQuantity);
  }

  else
  {
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(**a1, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
    outlined init with take of Apple_Workout_Core_HKQuantity(v6, v8, type metadata accessor for Apple_Workout_Core_HKQuantity);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

double Apple_Workout_Core_ActivityMetadataValue.doubleValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v7 - v3;
  outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v0, &v7 - v3, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v5 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v4, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return *v4;
    }

    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v4, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
  }

  return 0.0;
}

uint64_t key path getter for Apple_Workout_Core_ActivityMetadataValue.doubleValue : Apple_Workout_Core_ActivityMetadataValue@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = (&v11 - v6);
  outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(a1, &v11 - v6, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    result = outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v7, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  result = swift_getEnumCaseMultiPayload();
  if (result != 2)
  {
    result = outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v7, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
    goto LABEL_6;
  }

  v10 = *v7;
LABEL_7:
  *a2 = v10;
  return result;
}

void (*Apple_Workout_Core_ActivityMetadataValue.doubleValue.modify(uint64_t *a1))(uint64_t **a1, uint64_t a2)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 8) = v2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[2] = v8;
  outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v2, v8, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v10 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  v6[3] = v10;
  v11 = *(v10 - 8);
  v6[4] = v11;
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v9, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v9, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
    goto LABEL_12;
  }

  v12 = *v9;
LABEL_13:
  *v6 = v12;
  return Apple_Workout_Core_ActivityMetadataValue.doubleValue.modify;
}

double Apple_Workout_Core_ActivityMetadataValue.dateValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v7 - v3;
  outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v0, &v7 - v3, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v5 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v4, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return *v4;
    }

    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v4, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
  }

  return 0.0;
}

uint64_t key path getter for Apple_Workout_Core_ActivityMetadataValue.dateValue : Apple_Workout_Core_ActivityMetadataValue@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = (&v11 - v6);
  outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(a1, &v11 - v6, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    result = outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v7, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  result = swift_getEnumCaseMultiPayload();
  if (result != 3)
  {
    result = outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v7, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
    goto LABEL_6;
  }

  v10 = *v7;
LABEL_7:
  *a2 = v10;
  return result;
}

uint64_t key path setter for Apple_Workout_Core_ActivityMetadataValue.doubleValue : Apple_Workout_Core_ActivityMetadataValue(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(a2, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  *a2 = v6;
  v7 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  swift_storeEnumTagMultiPayload();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, 0, 1, v7);
}

uint64_t Apple_Workout_Core_ActivityMetadataValue.doubleValue.setter(uint64_t a1, double a2)
{
  outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v2, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  *v2 = a2;
  v4 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  swift_storeEnumTagMultiPayload();
  v5 = *(*(v4 - 8) + 56);

  return v5(v2, 0, 1, v4);
}

void (*Apple_Workout_Core_ActivityMetadataValue.dateValue.modify(uint64_t *a1))(uint64_t **a1, uint64_t a2)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 8) = v2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[2] = v8;
  outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v2, v8, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v10 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  v6[3] = v10;
  v11 = *(v10 - 8);
  v6[4] = v11;
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v9, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v9, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
    goto LABEL_12;
  }

  v12 = *v9;
LABEL_13:
  *v6 = v12;
  return Apple_Workout_Core_ActivityMetadataValue.dateValue.modify;
}

void Apple_Workout_Core_ActivityMetadataValue.doubleValue.modify(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v7 = (*a1)[1];
  v6 = (*a1)[2];
  v8 = **a1;
  outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v7, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  *v7 = v8;
  swift_storeEnumTagMultiPayload();
  (*(v5 + 56))(v7, 0, 1, v4);
  free(v6);

  free(v3);
}

uint64_t Apple_Workout_Core_ActivityMetadataValue.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_ActivityMetadataValue(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_ActivityMetadataValue.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_ActivityMetadataValue(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Workout_Core_ActivityMetadataValue.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  type metadata accessor for Apple_Workout_Core_ActivityMetadataValue(0);
  return UnknownStorage.init()();
}

uint64_t Apple_Workout_Core_Activity.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1 || result == 2)
      {
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
      }
    }

    else if (result == 3 || result == 4)
    {
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }

    else if (result == 5)
    {
      closure #5 in Apple_Workout_Core_Activity.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t closure #5 in Apple_Workout_Core_Activity.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtobufString();
  type metadata accessor for Apple_Workout_Core_ActivityMetadataValue(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_ActivityMetadataValue and conformance Apple_Workout_Core_ActivityMetadataValue(&lazy protocol witness table cache variable for type Apple_Workout_Core_ActivityMetadataValue and conformance Apple_Workout_Core_ActivityMetadataValue, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue, &protocol conformance descriptor for Apple_Workout_Core_ActivityMetadataValue);
  lazy protocol witness table accessor for type Apple_Workout_Core_ActivityMetadataValue and conformance Apple_Workout_Core_ActivityMetadataValue(&lazy protocol witness table cache variable for type Apple_Workout_Core_ActivityMetadataValue and conformance Apple_Workout_Core_ActivityMetadataValue, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue, &protocol conformance descriptor for Apple_Workout_Core_ActivityMetadataValue);
  return dispatch thunk of Decoder.decodeMapField<A, B>(fieldType:value:)();
}

uint64_t Apple_Workout_Core_Activity.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v4))
  {
    if (!*(v3 + 4) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v4))
    {
      if (*(v3 + 8) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
      {
        if (*(v3 + 9) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
        {
          if (!*(*(v3 + 16) + 16) || (type metadata accessor for ProtobufString(), type metadata accessor for Apple_Workout_Core_ActivityMetadataValue(0), lazy protocol witness table accessor for type Apple_Workout_Core_ActivityMetadataValue and conformance Apple_Workout_Core_ActivityMetadataValue(&lazy protocol witness table cache variable for type Apple_Workout_Core_ActivityMetadataValue and conformance Apple_Workout_Core_ActivityMetadataValue, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue, &protocol conformance descriptor for Apple_Workout_Core_ActivityMetadataValue), lazy protocol witness table accessor for type Apple_Workout_Core_ActivityMetadataValue and conformance Apple_Workout_Core_ActivityMetadataValue(&lazy protocol witness table cache variable for type Apple_Workout_Core_ActivityMetadataValue and conformance Apple_Workout_Core_ActivityMetadataValue, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue, &protocol conformance descriptor for Apple_Workout_Core_ActivityMetadataValue), result = dispatch thunk of Visitor.visitMapField<A, B>(fieldType:value:fieldNumber:)(), !v4))
          {
            type metadata accessor for Apple_Workout_Core_Activity(0);
            return UnknownStorage.traverse<A>(visitor:)();
          }
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_Activity@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  *a1 = 0;
  *(a1 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore06Apple_c1_D22_ActivityMetadataValueVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_Activity@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_Activity(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_Activity(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_ActivityMetadataValue and conformance Apple_Workout_Core_ActivityMetadataValue(&lazy protocol witness table cache variable for type Apple_Workout_Core_Activity and conformance Apple_Workout_Core_Activity, type metadata accessor for Apple_Workout_Core_Activity, &protocol conformance descriptor for Apple_Workout_Core_Activity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_Activity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_ActivityMetadataValue and conformance Apple_Workout_Core_ActivityMetadataValue(&lazy protocol witness table cache variable for type Apple_Workout_Core_Activity and conformance Apple_Workout_Core_Activity, type metadata accessor for Apple_Workout_Core_Activity, &protocol conformance descriptor for Apple_Workout_Core_Activity);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_Activity(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_Core_ActivityMetadataValue and conformance Apple_Workout_Core_ActivityMetadataValue(&lazy protocol witness table cache variable for type Apple_Workout_Core_Activity and conformance Apple_Workout_Core_Activity, type metadata accessor for Apple_Workout_Core_Activity, &protocol conformance descriptor for Apple_Workout_Core_Activity);

  return Message.hash(into:)();
}

uint64_t static Apple_Workout_Core_Activity._protobuf_nameMap.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
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

uint64_t Apple_Workout_Core_ActivityMetadataValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        closure #3 in Apple_Workout_Core_ActivityMetadataValue.decodeMessage<A>(decoder:)(a1, v5, a2, a3, 2);
      }

      else if (result == 4)
      {
        closure #3 in Apple_Workout_Core_ActivityMetadataValue.decodeMessage<A>(decoder:)(a1, v5, a2, a3, 3);
      }
    }

    else if (result == 1)
    {
      closure #1 in Apple_Workout_Core_ActivityMetadataValue.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      closure #2 in Apple_Workout_Core_ActivityMetadataValue.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_ActivityMetadataValue.decodeMessage<A>(decoder:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v15 - v8;
  v17 = 0;
  v18 = 0;
  result = dispatch thunk of Decoder.decodeSingularStringField(value:)();
  if (v4)
  {
  }

  if (v18)
  {
    v19 = v18;
    v16 = v17;
    outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(a2, v9, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
    v11 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
    v12 = *(v11 - 8);
    v13 = (*(v12 + 48))(v9, 1, v11);
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v9, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
    if (v13 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(a2, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
    v14 = v19;
    *a2 = v16;
    a2[1] = v14;
    swift_storeEnumTagMultiPayload();
    return (*(v12 + 56))(a2, 0, 1, v11);
  }

  return result;
}

uint64_t closure #2 in Apple_Workout_Core_ActivityMetadataValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v46 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v47 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v44 - v14;
  v16 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v44 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
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
  outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(a1, v15, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v44 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v15, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
    v36 = v51;
    v37 = v16;
  }

  else
  {
    outlined init with take of Apple_Workout_Core_HKQuantity(v15, v24, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
    outlined init with take of Apple_Workout_Core_HKQuantity(v24, v21, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v31, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
      v38 = v47;
      outlined init with take of Apple_Workout_Core_HKQuantity(v21, v47, type metadata accessor for Apple_Workout_Core_HKQuantity);
      outlined init with take of Apple_Workout_Core_HKQuantity(v38, v31, type metadata accessor for Apple_Workout_Core_HKQuantity);
      v36 = v51;
      v34(v31, 0, 1, v51);
    }

    else
    {
      outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v21, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
      v36 = v51;
    }
  }

  v39 = v49;
  lazy protocol witness table accessor for type Apple_Workout_Core_ActivityMetadataValue and conformance Apple_Workout_Core_ActivityMetadataValue(&lazy protocol witness table cache variable for type Apple_Workout_Core_HKQuantity and conformance Apple_Workout_Core_HKQuantity, type metadata accessor for Apple_Workout_Core_HKQuantity, &protocol conformance descriptor for Apple_Workout_Core_HKQuantity);
  v40 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v31, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  }

  outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v31, v39, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  if ((*(v48 + 48))(v39, 1, v36) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v31, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
    return outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v39, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  }

  else
  {
    v42 = v46;
    outlined init with take of Apple_Workout_Core_HKQuantity(v39, v46, type metadata accessor for Apple_Workout_Core_HKQuantity);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v31, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
    v43 = v45;
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v45, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
    outlined init with take of Apple_Workout_Core_HKQuantity(v42, v43, type metadata accessor for Apple_Workout_Core_HKQuantity);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v43, 0, 1, v37);
  }
}

uint64_t closure #3 in Apple_Workout_Core_ActivityMetadataValue.decodeMessage<A>(decoder:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v17 - v9;
  v19 = 0;
  v20 = 1;
  result = dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
  if (!v5 && (v20 & 1) == 0)
  {
    v18 = 0;
    v12 = v19;
    outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(a2, v10, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
    v13 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
    v14 = *(v13 - 8);
    v15 = (*(v14 + 48))(v10, 1, v13);
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v10, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
    if (v15 != 1)
    {
      v16 = v18;
      result = dispatch thunk of Decoder.handleConflictingOneOf()();
      if (v16)
      {
        return result;
      }

      v18 = 0;
    }

    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(a2, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
    *a2 = v12;
    swift_storeEnumTagMultiPayload();
    return (*(v14 + 56))(a2, 0, 1, v13);
  }

  return result;
}

uint64_t Apple_Workout_Core_ActivityMetadataValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v15 - v10;
  outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v3, &v15 - v10, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v12 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        result = closure #3 in Apple_Workout_Core_ActivityMetadataValue.traverse<A>(visitor:)(v3, a1, a2, a3);
        if (v4)
        {
          return result;
        }
      }

      else
      {
        result = closure #4 in Apple_Workout_Core_ActivityMetadataValue.traverse<A>(visitor:)(v3, a1, a2, a3);
        if (v4)
        {
          return result;
        }
      }
    }

    else if (EnumCaseMultiPayload)
    {
      closure #2 in Apple_Workout_Core_ActivityMetadataValue.traverse<A>(visitor:)(v3, a1, a2, a3);
      result = outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v11, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
      if (v4)
      {
        return result;
      }
    }

    else
    {
      outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v11, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
      result = closure #1 in Apple_Workout_Core_ActivityMetadataValue.traverse<A>(visitor:)(v3, a1, a2, a3);
      if (v4)
      {
        return result;
      }
    }
  }

  type metadata accessor for Apple_Workout_Core_ActivityMetadataValue(0);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #1 in Apple_Workout_Core_ActivityMetadataValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v11 - v7;
  outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(a1, &v11 - v7, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v8, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  result = outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v8, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
  __break(1u);
  return result;
}

uint64_t closure #2 in Apple_Workout_Core_ActivityMetadataValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(a1, v8, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v8, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of Apple_Workout_Core_HKQuantity(v8, v12, type metadata accessor for Apple_Workout_Core_HKQuantity);
    lazy protocol witness table accessor for type Apple_Workout_Core_ActivityMetadataValue and conformance Apple_Workout_Core_ActivityMetadataValue(&lazy protocol witness table cache variable for type Apple_Workout_Core_HKQuantity and conformance Apple_Workout_Core_HKQuantity, type metadata accessor for Apple_Workout_Core_HKQuantity, &protocol conformance descriptor for Apple_Workout_Core_HKQuantity);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v12, type metadata accessor for Apple_Workout_Core_HKQuantity);
  }

  result = outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v8, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
  __break(1u);
  return result;
}

uint64_t closure #3 in Apple_Workout_Core_ActivityMetadataValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v11 - v7;
  outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(a1, &v11 - v7, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v8, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  result = outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v8, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
  __break(1u);
  return result;
}

uint64_t closure #4 in Apple_Workout_Core_ActivityMetadataValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v11 - v7;
  outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(a1, &v11 - v7, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v8, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  result = outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v8, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
  __break(1u);
  return result;
}

Swift::Int Apple_Workout_Core_Activity.hashValue.getter(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  Hasher.init(_seed:)();
  a1(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_ActivityMetadataValue and conformance Apple_Workout_Core_ActivityMetadataValue(a2, a3, a4);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_ActivityMetadataValue@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_ActivityMetadataValue@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_ActivityMetadataValue(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_ActivityMetadataValue(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_ActivityMetadataValue and conformance Apple_Workout_Core_ActivityMetadataValue(&lazy protocol witness table cache variable for type Apple_Workout_Core_ActivityMetadataValue and conformance Apple_Workout_Core_ActivityMetadataValue, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue, &protocol conformance descriptor for Apple_Workout_Core_ActivityMetadataValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_Activity@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
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

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_ActivityMetadataValue(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_ActivityMetadataValue and conformance Apple_Workout_Core_ActivityMetadataValue(&lazy protocol witness table cache variable for type Apple_Workout_Core_ActivityMetadataValue and conformance Apple_Workout_Core_ActivityMetadataValue, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue, &protocol conformance descriptor for Apple_Workout_Core_ActivityMetadataValue);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_Activity(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_ActivityMetadataValue(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_Core_ActivityMetadataValue and conformance Apple_Workout_Core_ActivityMetadataValue(&lazy protocol witness table cache variable for type Apple_Workout_Core_ActivityMetadataValue and conformance Apple_Workout_Core_ActivityMetadataValue, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue, &protocol conformance descriptor for Apple_Workout_Core_ActivityMetadataValue);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_Activity(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static Apple_Workout_Core_ActivityMetadataValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSg_AFtMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSg_AFtMR);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(a1, &v23 - v16, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(a2, &v17[v18], &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v17, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
LABEL_9:
      type metadata accessor for Apple_Workout_Core_ActivityMetadataValue(0);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_Core_ActivityMetadataValue and conformance Apple_Workout_Core_ActivityMetadataValue(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v17, v12, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v12, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
LABEL_6:
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v17, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSg_AFtMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSg_AFtMR);
    goto LABEL_7;
  }

  outlined init with take of Apple_Workout_Core_HKQuantity(&v17[v18], v8, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
  v21 = specialized static Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue.== infix(_:_:)(v12, v8);
  outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v8, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
  outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v12, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
  outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v17, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

BOOL specialized static Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v38 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
  MEMORY[0x28223BE20](v38, v4);
  v39 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v10 = (&v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = (&v38 - v13);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v38 - v17;
  MEMORY[0x28223BE20](v16, v19);
  v21 = (&v38 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0O_AEtMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0O_AEtMR);
  v24 = MEMORY[0x28223BE20](v22 - 8, v23);
  v26 = &v38 - v25;
  v27 = &v38 + *(v24 + 56) - v25;
  outlined init with copy of Apple_Workout_Core_HKQuantity(a1, &v38 - v25, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
  outlined init with copy of Apple_Workout_Core_HKQuantity(a2, v27, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      outlined init with copy of Apple_Workout_Core_HKQuantity(v26, v14, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_21;
      }

      v31 = *v14;
    }

    else
    {
      outlined init with copy of Apple_Workout_Core_HKQuantity(v26, v10, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_21;
      }

      v31 = *v10;
    }

    v34 = v31 == *v27;
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v26, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
    return v34;
  }

  if (EnumCaseMultiPayload)
  {
    outlined init with copy of Apple_Workout_Core_HKQuantity(v26, v18, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v18, type metadata accessor for Apple_Workout_Core_HKQuantity);
      goto LABEL_21;
    }

    v32 = v39;
    outlined init with take of Apple_Workout_Core_HKQuantity(v27, v39, type metadata accessor for Apple_Workout_Core_HKQuantity);
    if (*v18 != *v32 || (*(v18 + 1) == *(v32 + 8) ? (v33 = *(v18 + 2) == *(v32 + 16)) : (v33 = 0), !v33 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (type metadata accessor for UnknownStorage(), lazy protocol witness table accessor for type Apple_Workout_Core_ActivityMetadataValue and conformance Apple_Workout_Core_ActivityMetadataValue(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]), (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)))
    {
      outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v32, type metadata accessor for Apple_Workout_Core_HKQuantity);
      outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v18, type metadata accessor for Apple_Workout_Core_HKQuantity);
      goto LABEL_25;
    }

    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v32, type metadata accessor for Apple_Workout_Core_HKQuantity);
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v18, type metadata accessor for Apple_Workout_Core_HKQuantity);
LABEL_33:
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v26, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
    return 1;
  }

  outlined init with copy of Apple_Workout_Core_HKQuantity(v26, v21, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
  v30 = *v21;
  v29 = v21[1];
  if (!swift_getEnumCaseMultiPayload())
  {
    if (v30 != *v27 || v29 != *(v27 + 1))
    {
      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v37)
      {
        goto LABEL_33;
      }

LABEL_25:
      outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(v26, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
      return 0;
    }

    goto LABEL_33;
  }

LABEL_21:
  outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v26, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0O_AEtMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0O_AEtMR);
  return 0;
}

uint64_t specialized static Apple_Workout_Core_Activity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8) || *(a1 + 9) != *(a2 + 9) || (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_11WorkoutCore06Apple_b1_C22_ActivityMetadataValueVTt1g5(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Workout_Core_Activity(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_Core_ActivityMetadataValue and conformance Apple_Workout_Core_ActivityMetadataValue(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t outlined assign with take of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for Apple_Workout_Core_Activity(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_Core_ActivityMetadataValue and conformance Apple_Workout_Core_ActivityMetadataValue(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata completion function for Apple_Workout_Core_Activity(uint64_t a1)
{
  type metadata accessor for [String : Apple_Workout_Core_ActivityMetadataValue](319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for Apple_Workout_Core_ActivityMetadataValue(uint64_t a1)
{
  type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?)
  {
    type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?);
    }
  }
}

uint64_t type metadata completion function for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(uint64_t a1)
{
  result = type metadata accessor for Apple_Workout_Core_HKQuantity(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t outlined init with take of Apple_Workout_Core_HKQuantity(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with copy of Apple_Workout_Core_HKQuantity(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

Swift::Int FIUIWorkoutActivityType.configurationTypes.getter()
{
  v1 = v0;
  v8 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11WorkoutCore17ConfigurationTypeO_Tt0g5Tf4g_n(&outlined read-only object #0 of FIUIWorkoutActivityType.configurationTypes.getter);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static WorkoutDevicesProvider.shared;
  v2 = static WorkoutDevicesProvider.shared;
  v3 = WorkoutReadinessChecker.supportsPairedWatchFeatures()();

  if (v3)
  {
    if ([v1 effectiveTypeIdentifier] != 82)
    {
      specialized Set._Variant.insert(_:)(&v7, 1);
    }

    if ([v1 supportsRaceRoute])
    {
      specialized Set._Variant.insert(_:)(&v7, 2);
    }

    v4 = [v1 isIndoor];
    v5 = [v1 effectiveTypeIdentifier];
    if (v4)
    {
      if (v5 != 37 && v5 != 71)
      {
        return v8;
      }

LABEL_14:
      specialized Set._Variant.insert(_:)(&v7, 3);
      return v8;
    }

    if ((v5 - 13) <= 0x3A && ((1 << (v5 - 13)) & 0x400000001000001) != 0)
    {
      goto LABEL_14;
    }
  }

  return v8;
}

uint64_t specialized Set._Variant.insert(_:)(_BYTE *a1, uint64_t a2)
{
  v3 = a2;
  v4 = *v2;
  v5 = specialized RawRepresentable<>._rawHashValue(seed:)(*(*v2 + 40), a2);
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v28 = ~v6;
    while (1)
    {
      v8 = *(*(v4 + 48) + v7);
      if (v8 > 3)
      {
        if (*(*(v4 + 48) + v7) > 5u)
        {
          if (v8 == 6)
          {
            v12 = 0x5F65676172657661;
            v13 = 0xED00007265776F70;
          }

          else
          {
            v13 = 0xE400000000000000;
            v12 = 1701736302;
          }
        }

        else
        {
          if (v8 == 4)
          {
            v12 = 0x5F65676172657661;
          }

          else
          {
            v12 = 0xD000000000000013;
          }

          if (v8 == 4)
          {
            v13 = 0xEF65636E65646163;
          }

          else
          {
            v13 = 0x800000020B4544E0;
          }
        }
      }

      else
      {
        v9 = 0xD000000000000015;
        if (v8 == 2)
        {
          v9 = 0xD000000000000012;
          v10 = 0x800000020B454490;
        }

        else
        {
          v10 = 0x800000020B4544B0;
        }

        if (*(*(v4 + 48) + v7))
        {
          v11 = 0x5F65676172657661;
        }

        else
        {
          v11 = 0x5F676E696C6C6F72;
        }

        if (*(*(v4 + 48) + v7) <= 1u)
        {
          v12 = v11;
        }

        else
        {
          v12 = v9;
        }

        if (*(*(v4 + 48) + v7) <= 1u)
        {
          v13 = 0xEC00000065636170;
        }

        else
        {
          v13 = v10;
        }
      }

      v14 = 1701736302;
      if (v3 == 6)
      {
        v14 = 0x5F65676172657661;
      }

      v15 = 0xED00007265776F70;
      if (v3 != 6)
      {
        v15 = 0xE400000000000000;
      }

      if (v3 == 4)
      {
        v16 = 0x5F65676172657661;
      }

      else
      {
        v16 = 0xD000000000000013;
      }

      v17 = 0xEF65636E65646163;
      if (v3 != 4)
      {
        v17 = 0x800000020B4544E0;
      }

      if (v3 <= 5u)
      {
        v14 = v16;
        v15 = v17;
      }

      v18 = 0xD000000000000015;
      if (v3 == 2)
      {
        v18 = 0xD000000000000012;
        v19 = 0x800000020B454490;
      }

      else
      {
        v19 = 0x800000020B4544B0;
      }

      if (v3)
      {
        v20 = 0x5F65676172657661;
      }

      else
      {
        v20 = 0x5F676E696C6C6F72;
      }

      if (v3 <= 1u)
      {
        v18 = v20;
        v19 = 0xEC00000065636170;
      }

      v21 = v3 <= 3u ? v18 : v14;
      v22 = v3 <= 3u ? v19 : v15;
      if (v12 == v21 && v13 == v22)
      {
        break;
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v23)
      {
        goto LABEL_57;
      }

      v7 = (v7 + 1) & v28;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_55;
      }
    }

LABEL_57:
    result = 0;
    LOBYTE(v3) = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_55:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v26;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v3, v7, isUniquelyReferenced_nonNull_native);
    *v26 = v29;
    result = 1;
  }

  *a1 = v3;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(_BYTE *a1, Swift::Int a2)
{
  return specialized Set._Variant.insert(_:)(a1, a2, &_ss11_SetStorageCy11WorkoutCore0C25VoiceAvailabilityProviderC19UnavailabilityErrorOGMd, &_ss11_SetStorageCy11WorkoutCore0C25VoiceAvailabilityProviderC19UnavailabilityErrorOGMR, &type metadata for WorkoutVoiceAvailabilityProvider.UnavailabilityError);
}

{
  v5 = *v2;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](a2 + 1);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

{
  v4 = *v2;
  Hasher.init(_seed:)();
  KnownPublishers.rawValue.getter();
  String.hash(into:)();

  v5 = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
LABEL_60:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v16;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v7, isUniquelyReferenced_nonNull_native);
    *v16 = v18;
    result = 1;
    goto LABEL_63;
  }

  v8 = ~v6;
  while (2)
  {
    v9 = 0xED00007265687369;
    v10 = 0x6C6275506C616F67;
    switch(*(*(v4 + 48) + v7))
    {
      case 1:
        v10 = 0xD00000000000001BLL;
        v9 = 0x800000020B4541D0;
        break;
      case 2:
        v10 = 0xD000000000000016;
        v9 = 0x800000020B4541F0;
        break;
      case 3:
        break;
      case 4:
        v10 = 0xD000000000000019;
        v9 = 0x800000020B454220;
        break;
      case 5:
        v10 = 0xD000000000000019;
        v9 = 0x800000020B454240;
        break;
      case 6:
        v10 = 0xD000000000000014;
        v9 = 0x800000020B454260;
        break;
      case 7:
        v10 = 0xD000000000000019;
        v9 = 0x800000020B454280;
        break;
      case 8:
        v10 = 0xD00000000000001ALL;
        v9 = 0x800000020B4542A0;
        break;
      case 9:
        v10 = 0xD000000000000010;
        v9 = 0x800000020B4542C0;
        break;
      case 0xA:
        v10 = 0xD000000000000015;
        v9 = 0x800000020B4542E0;
        break;
      case 0xB:
        v10 = 0xD000000000000020;
        v9 = 0x800000020B454300;
        break;
      case 0xC:
        v10 = 0xD000000000000018;
        v9 = 0x800000020B454330;
        break;
      case 0xD:
        v10 = 0xD00000000000001ALL;
        v9 = 0x800000020B454350;
        break;
      case 0xE:
        v10 = 0xD00000000000001CLL;
        v9 = 0x800000020B454370;
        break;
      case 0xF:
        v9 = 0xE800000000000000;
        v10 = 0x6C6576654C706F54;
        break;
      case 0x10:
        v10 = 0xD000000000000015;
        v9 = 0x800000020B4543A0;
        break;
      case 0x11:
        v10 = 0xD00000000000001ALL;
        v9 = 0x800000020B4543C0;
        break;
      default:
        v10 = 0xD00000000000001FLL;
        v9 = 0x800000020B4541B0;
        break;
    }

    v11 = 0x6C6275506C616F67;
    v12 = 0xED00007265687369;
    switch(a2)
    {
      case 1:
        v12 = 0x800000020B4541D0;
        if (v10 == 0xD00000000000001BLL)
        {
          goto LABEL_54;
        }

        goto LABEL_55;
      case 2:
        v12 = 0x800000020B4541F0;
        if (v10 != 0xD000000000000016)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 3:
        goto LABEL_53;
      case 4:
        v12 = 0x800000020B454220;
        if (v10 != 0xD000000000000019)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 5:
        v12 = 0x800000020B454240;
        if (v10 != 0xD000000000000019)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 6:
        v12 = 0x800000020B454260;
        if (v10 != 0xD000000000000014)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 7:
        v12 = 0x800000020B454280;
        if (v10 != 0xD000000000000019)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 8:
        v12 = 0x800000020B4542A0;
        if (v10 != 0xD00000000000001ALL)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 9:
        v12 = 0x800000020B4542C0;
        if (v10 != 0xD000000000000010)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 10:
        v11 = 0xD000000000000015;
        v12 = 0x800000020B4542E0;
LABEL_53:
        if (v10 == v11)
        {
          goto LABEL_54;
        }

        goto LABEL_55;
      case 11:
        v12 = 0x800000020B454300;
        if (v10 != 0xD000000000000020)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 12:
        v12 = 0x800000020B454330;
        if (v10 != 0xD000000000000018)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 13:
        v12 = 0x800000020B454350;
        if (v10 != 0xD00000000000001ALL)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 14:
        v12 = 0x800000020B454370;
        if (v10 != 0xD00000000000001CLL)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 15:
        v12 = 0xE800000000000000;
        if (v10 != 0x6C6576654C706F54)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 16:
        v12 = 0x800000020B4543A0;
        if (v10 != 0xD000000000000015)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 17:
        v12 = 0x800000020B4543C0;
        if (v10 != 0xD00000000000001ALL)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      default:
        v12 = 0x800000020B4541B0;
        if (v10 != 0xD00000000000001FLL)
        {
          goto LABEL_55;
        }

LABEL_54:
        if (v9 != v12)
        {
LABEL_55:
          v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v13)
          {
            goto LABEL_62;
          }

          v7 = (v7 + 1) & v8;
          if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
          {
            goto LABEL_60;
          }

          continue;
        }

LABEL_62:
        result = 0;
        LOBYTE(a2) = *(*(v4 + 48) + v7);
LABEL_63:
        *a1 = a2;
        return result;
    }
  }
}

{
  v3 = v2;
  v5 = *v2;
  v6 = Hasher.init(_seed:)();
  MetricPlatterType.rawValue.getter(v6);
  String.hash(into:)();

  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_55:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v21;
    result = 1;
    goto LABEL_58;
  }

  v10 = ~v8;
  while (2)
  {
    v11 = 0xE800000000000000;
    v12 = 0x647261646E617473;
    switch(*(*(v5 + 48) + v9))
    {
      case 1:
        v12 = 0x647261646E617473;
        goto LABEL_13;
      case 2:
        v12 = 0x6C61767265746E69;
        break;
      case 3:
        v12 = 0x6C61767265746E69;
LABEL_13:
        v11 = 0xEE00646E6F636553;
        break;
      case 4:
        v11 = 0xE500000000000000;
        v12 = 0x7265636170;
        break;
      case 5:
        v11 = 0xE400000000000000;
        v12 = 1701011826;
        break;
      case 6:
        v11 = 0xE700000000000000;
        v12 = 0x746E656D676573;
        break;
      case 7:
        v12 = 0x7974697669746361;
        v11 = 0xED000073676E6952;
        break;
      case 8:
        v11 = 0xE500000000000000;
        v12 = 0x6F65646976;
        break;
      case 9:
        v11 = 0xE500000000000000;
        v12 = 0x74696C7073;
        break;
      case 0xA:
        v12 = 0x7461527472616568;
        v11 = 0xEE0073656E6F5A65;
        break;
      case 0xB:
        v11 = 0xEA00000000007472;
        v12 = 0x6F707369746C756DLL;
        break;
      case 0xC:
        v11 = 0xE500000000000000;
        v12 = 0x7265776F70;
        break;
      case 0xD:
        v12 = 0x6E6F5A7265776F70;
        v11 = 0xEA00000000007365;
        break;
      case 0xE:
        v12 = 0x6F69746176656C65;
        v11 = 0xE90000000000006ELL;
        break;
      case 0xF:
        v12 = 0x656D6F6465657073;
        v11 = 0xEB00000000726574;
        break;
      default:
        break;
    }

    v13 = 0xE800000000000000;
    v14 = 0x647261646E617473;
    switch(a2)
    {
      case 1:
        v15 = 0x647261646E617473;
        goto LABEL_37;
      case 2:
        if (v12 != 0x6C61767265746E69)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      case 3:
        v15 = 0x6C61767265746E69;
LABEL_37:
        v13 = 0xEE00646E6F636553;
        if (v12 != v15)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      case 4:
        v13 = 0xE500000000000000;
        v16 = 1701011824;
        goto LABEL_28;
      case 5:
        v13 = 0xE400000000000000;
        if (v12 != 1701011826)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      case 6:
        v13 = 0xE700000000000000;
        if (v12 != 0x746E656D676573)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      case 7:
        v13 = 0xED000073676E6952;
        if (v12 != 0x7974697669746361)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      case 8:
        v13 = 0xE500000000000000;
        if (v12 != 0x6F65646976)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      case 9:
        v13 = 0xE500000000000000;
        if (v12 != 0x74696C7073)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      case 10:
        v14 = 0x7461527472616568;
        v13 = 0xEE0073656E6F5A65;
        goto LABEL_48;
      case 11:
        v13 = 0xEA00000000007472;
        if (v12 != 0x6F707369746C756DLL)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      case 12:
        v13 = 0xE500000000000000;
        v16 = 1702326128;
LABEL_28:
        if (v12 != (v16 & 0xFFFF0000FFFFFFFFLL | 0x7200000000))
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      case 13:
        v13 = 0xEA00000000007365;
        if (v12 != 0x6E6F5A7265776F70)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      case 14:
        v13 = 0xE90000000000006ELL;
        if (v12 != 0x6F69746176656C65)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      case 15:
        v13 = 0xEB00000000726574;
        if (v12 != 0x656D6F6465657073)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      default:
LABEL_48:
        if (v12 != v14)
        {
          goto LABEL_50;
        }

LABEL_49:
        if (v11 != v13)
        {
LABEL_50:
          v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v17)
          {
            goto LABEL_57;
          }

          v9 = (v9 + 1) & v10;
          if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
          {
            goto LABEL_55;
          }

          continue;
        }

LABEL_57:
        result = 0;
        LOBYTE(a2) = *(*(v5 + 48) + v9);
LABEL_58:
        *a1 = a2;
        return result;
    }
  }
}

{
  return specialized Set._Variant.insert(_:)(a1, a2, &_ss11_SetStorageCy11WorkoutCore0C23ConfigurationFilterTypeOGMd, &_ss11_SetStorageCy11WorkoutCore0C23ConfigurationFilterTypeOGMR, &type metadata for WorkoutConfigurationFilterType);
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x20F2E7FD0](*(*v2 + 40));
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for WorkoutConfigurationOccurrenceStore.WorkoutConfigurationHolder();
      swift_dynamicCast();
      result = 0;
      *a1 = v31[0];
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v26 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC11WorkoutCore0E28ConfigurationOccurrenceStoreC0eG6Holder33_41A6A55DBE5760293367A7810ABE1D8CLLC_Tt1g5(v7, result + 1);
        v31[0] = v26;
        v27 = *(v26 + 16);
        if (*(v26 + 24) <= v27)
        {
          specialized _NativeSet.resize(capacity:)(v27 + 1);
          v26 = v31[0];
        }

        specialized _NativeSet._unsafeInsertNew(_:)(v28, v26);

        *v3 = v26;
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    v29 = v2;
    Hasher.init(_seed:)();
    v10 = *(a2 + 16);
    v11 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
    swift_beginAccess();
    MEMORY[0x20F2E7FF0](*(v10 + v11) + 1);
    v12 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
    swift_beginAccess();
    v13 = *(v10 + v12);
    NSObject.hash(into:)();

    v14 = Hasher._finalize()();
    v15 = -1 << *(v6 + 32);
    v16 = v14 & ~v15;
    if ((*(v6 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
    {
      v17 = ~v15;
      v18 = type metadata accessor for WorkoutConfiguration(0);
      while (1)
      {
        v19 = *(*(*(v6 + 48) + 8 * v16) + 16);
        v20 = a2;
        v21 = *(a2 + 16);
        v31[3] = v18;
        v31[4] = &protocol witness table for WorkoutConfiguration;
        v31[0] = v21;
        v22 = *((*MEMORY[0x277D85000] & *v19) + 0x1D0);

        v23 = v21;
        LOBYTE(v19) = v22(v31);

        __swift_destroy_boxed_opaque_existential_1(v31);
        if (v19)
        {
          break;
        }

        v16 = (v16 + 1) & v17;
        a2 = v20;
        if (((*(v6 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      *a1 = *(*(v6 + 48) + 8 * v16);

      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31[0] = *v29;

      specialized _NativeSet.insertNew(_:at:isUnique:)(v25, v16, isUniquelyReferenced_nonNull_native);
      *v29 = v31[0];
      *a1 = a2;
      return 1;
    }
  }

  return result;
}

uint64_t specialized Set._Variant.insert(_:)(_BYTE *a1, Swift::Int a2, uint64_t *a3, uint64_t *a4, unint64_t a5)
{
  v11 = *v5;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](a2);
  v12 = Hasher._finalize()();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (*(*(v11 + 48) + v14) != a2)
    {
      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v14, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v5 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC11WorkoutCore0E28ConfigurationOccurrenceStoreC0eG6Holder33_41A6A55DBE5760293367A7810ABE1D8CLLC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11WorkoutCore0C28ConfigurationOccurrenceStoreC0cE6Holder33_41A6A55DBE5760293367A7810ABE1D8CLLCGMd, &_ss11_SetStorageCy11WorkoutCore0C28ConfigurationOccurrenceStoreC0cE6Holder33_41A6A55DBE5760293367A7810ABE1D8CLLCGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for WorkoutConfigurationOccurrenceStore.WorkoutConfigurationHolder();
      do
      {
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          specialized _NativeSet.resize(capacity:)(v13 + 1);
        }

        v2 = v19;
        Hasher.init(_seed:)();
        v3 = *(v18 + 16);
        v4 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
        swift_beginAccess();
        MEMORY[0x20F2E7FF0](*(v3 + v4) + 1);
        v5 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
        swift_beginAccess();
        v6 = *(v3 + v5);
        NSObject.hash(into:)();

        result = Hasher._finalize()();
        v8 = v19 + 56;
        v9 = -1 << *(v19 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v19 + 56 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v19 + 56 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v19 + 48) + 8 * v12) = v18;
        ++*(v19 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC11WorkoutCore20ActivityTypeListItemC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11WorkoutCore20ActivityTypeListItemCGMd, &_ss11_SetStorageCy11WorkoutCore20ActivityTypeListItemCGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for ActivityTypeListItem(0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeSet.resize(capacity:)(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

Swift::Int specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11WorkoutCore10TargetZoneC0F4TypeOGMd, &_ss11_SetStorageCy11WorkoutCore10TargetZoneC0F4TypeOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v13 = -1 << *(v5 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v19 = v7[v6];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_16;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11WorkoutCore17ConfigurationTypeOGMd, &_ss11_SetStorageCy11WorkoutCore17ConfigurationTypeOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x20F2E7FF0](v17 + 1);
      result = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11WorkoutCore15KnownPublishersOGMd, &_ss11_SetStorageCy11WorkoutCore15KnownPublishersOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v13 = -1 << *(v5 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v19 = v7[v6];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_16;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11WorkoutCore17MetricPlatterTypeOGMd, &_ss11_SetStorageCy11WorkoutCore17MetricPlatterTypeOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v13 = -1 << *(v5 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v19 = v7[v6];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_16;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11WorkoutCore0C28ConfigurationOccurrenceStoreC0cE6Holder33_41A6A55DBE5760293367A7810ABE1D8CLLCGMd, &_ss11_SetStorageCy11WorkoutCore0C28ConfigurationOccurrenceStoreC0cE6Holder33_41A6A55DBE5760293367A7810ABE1D8CLLCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v1;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      v18 = *(v17 + 16);
      v19 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
      swift_beginAccess();
      MEMORY[0x20F2E7FF0](*(v18 + v19) + 1);
      v20 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
      swift_beginAccess();
      v21 = *(v18 + v20);
      NSObject.hash(into:)();

      result = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v30;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11WorkoutCore20ActivityTypeListItemCGMd, &_ss11_SetStorageCy11WorkoutCore20ActivityTypeListItemCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v5 + 40));
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySuGMd, &_ss11_SetStorageCySuGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = MEMORY[0x20F2E7FD0](*(v5 + 40), v17);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int specialized _NativeSet.resize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + (v16 | (v8 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x20F2E7FF0](v19);
      result = Hasher._finalize()();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v4 = v3;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = *(a1 + 16);
  v5 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
  swift_beginAccess();
  MEMORY[0x20F2E7FF0](*(v4 + v5) + 1);
  v6 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v7 = *(v4 + v6);
  NSObject.hash(into:)();

  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3)
{
  v34 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_61;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = specialized _NativeSet.copy()(&_ss11_SetStorageCy11WorkoutCore10TargetZoneC0F4TypeOGMd, &_ss11_SetStorageCy11WorkoutCore10TargetZoneC0F4TypeOGMR);
      goto LABEL_61;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v7 = *v3;
  result = specialized RawRepresentable<>._rawHashValue(seed:)(*(*v3 + 40), v34);
  v32 = v7;
  v33 = v7 + 56;
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v31 = ~v8;
    v9 = 0x5F676E696C6C6F72;
    do
    {
      v10 = *(*(v32 + 48) + a2);
      if (v10 > 3)
      {
        if (*(*(v32 + 48) + a2) > 5u)
        {
          if (v10 == 6)
          {
            v14 = 0x5F65676172657661;
            v15 = 0xED00007265776F70;
          }

          else
          {
            v15 = 0xE400000000000000;
            v14 = 1701736302;
          }
        }

        else
        {
          if (v10 == 4)
          {
            v14 = 0x5F65676172657661;
          }

          else
          {
            v14 = 0xD000000000000013;
          }

          if (v10 == 4)
          {
            v15 = 0xEF65636E65646163;
          }

          else
          {
            v15 = 0x800000020B4544E0;
          }
        }
      }

      else
      {
        v11 = 0xD000000000000015;
        if (v10 == 2)
        {
          v11 = 0xD000000000000012;
          v12 = 0x800000020B454490;
        }

        else
        {
          v12 = 0x800000020B4544B0;
        }

        if (*(*(v32 + 48) + a2))
        {
          v13 = 0x5F65676172657661;
        }

        else
        {
          v13 = v9;
        }

        if (*(*(v32 + 48) + a2) <= 1u)
        {
          v14 = v13;
        }

        else
        {
          v14 = v11;
        }

        if (*(*(v32 + 48) + a2) <= 1u)
        {
          v15 = 0xEC00000065636170;
        }

        else
        {
          v15 = v12;
        }
      }

      v16 = 1701736302;
      if (v34 == 6)
      {
        v16 = 0x5F65676172657661;
      }

      v17 = 0xED00007265776F70;
      if (v34 != 6)
      {
        v17 = 0xE400000000000000;
      }

      if (v34 == 4)
      {
        v18 = 0x5F65676172657661;
      }

      else
      {
        v18 = 0xD000000000000013;
      }

      v19 = 0xEF65636E65646163;
      if (v34 != 4)
      {
        v19 = 0x800000020B4544E0;
      }

      if (v34 <= 5u)
      {
        v16 = v18;
        v17 = v19;
      }

      v20 = 0xD000000000000015;
      if (v34 == 2)
      {
        v20 = 0xD000000000000012;
        v21 = 0x800000020B454490;
      }

      else
      {
        v21 = 0x800000020B4544B0;
      }

      v22 = v9;
      if (v34)
      {
        v9 = 0x5F65676172657661;
      }

      if (v34 <= 1u)
      {
        v20 = v9;
        v21 = 0xEC00000065636170;
      }

      v23 = v34 <= 3u ? v20 : v16;
      v24 = v34 <= 3u ? v21 : v17;
      if (v14 == v23 && v15 == v24)
      {
        goto LABEL_64;
      }

      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v25)
      {
        goto LABEL_65;
      }

      a2 = (a2 + 1) & v31;
      v9 = v22;
    }

    while (((*(v33 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_61:
  v26 = *v30;
  *(*v30 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v26 + 48) + a2) = v34;
  v27 = *(v26 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v26 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_64:

LABEL_65:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x20F2E7FD0](*(*v3 + 40), v4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()(&_ss11_SetStorageCy11WorkoutCore17ConfigurationTypeOGMd, &_ss11_SetStorageCy11WorkoutCore17ConfigurationTypeOGMR);
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v4 + 1);
  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        result = specialized _NativeSet.copy()(&_ss11_SetStorageCy11WorkoutCore15KnownPublishersOGMd, &_ss11_SetStorageCy11WorkoutCore15KnownPublishersOGMR);
        goto LABEL_67;
      }

      specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
    }

    v8 = *v3;
    Hasher.init(_seed:)();
    KnownPublishers.rawValue.getter();
    String.hash(into:)();

    result = Hasher._finalize()();
    v9 = -1 << *(v8 + 32);
    a2 = result & ~v9;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v10 = ~v9;
      while (2)
      {
        v11 = 0xED00007265687369;
        v12 = 0x6C6275506C616F67;
        switch(*(*(v8 + 48) + a2))
        {
          case 1:
            v12 = 0xD00000000000001BLL;
            v11 = 0x800000020B4541D0;
            break;
          case 2:
            v12 = 0xD000000000000016;
            v11 = 0x800000020B4541F0;
            break;
          case 3:
            break;
          case 4:
            v12 = 0xD000000000000019;
            v11 = 0x800000020B454220;
            break;
          case 5:
            v12 = 0xD000000000000019;
            v11 = 0x800000020B454240;
            break;
          case 6:
            v12 = 0xD000000000000014;
            v11 = 0x800000020B454260;
            break;
          case 7:
            v12 = 0xD000000000000019;
            v11 = 0x800000020B454280;
            break;
          case 8:
            v12 = 0xD00000000000001ALL;
            v11 = 0x800000020B4542A0;
            break;
          case 9:
            v12 = 0xD000000000000010;
            v11 = 0x800000020B4542C0;
            break;
          case 0xA:
            v12 = 0xD000000000000015;
            v11 = 0x800000020B4542E0;
            break;
          case 0xB:
            v12 = 0xD000000000000020;
            v11 = 0x800000020B454300;
            break;
          case 0xC:
            v12 = 0xD000000000000018;
            v11 = 0x800000020B454330;
            break;
          case 0xD:
            v12 = 0xD00000000000001ALL;
            v11 = 0x800000020B454350;
            break;
          case 0xE:
            v12 = 0xD00000000000001CLL;
            v11 = 0x800000020B454370;
            break;
          case 0xF:
            v11 = 0xE800000000000000;
            v12 = 0x6C6576654C706F54;
            break;
          case 0x10:
            v12 = 0xD000000000000015;
            v11 = 0x800000020B4543A0;
            break;
          case 0x11:
            v12 = 0xD00000000000001ALL;
            v11 = 0x800000020B4543C0;
            break;
          default:
            v12 = 0xD00000000000001FLL;
            v11 = 0x800000020B4541B0;
            break;
        }

        v13 = 0x6C6275506C616F67;
        v14 = 0xED00007265687369;
        switch(v5)
        {
          case 1:
            v14 = 0x800000020B4541D0;
            if (v12 == 0xD00000000000001BLL)
            {
              goto LABEL_61;
            }

            goto LABEL_62;
          case 2:
            v14 = 0x800000020B4541F0;
            if (v12 != 0xD000000000000016)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          case 3:
            goto LABEL_60;
          case 4:
            v14 = 0x800000020B454220;
            if (v12 != 0xD000000000000019)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          case 5:
            v14 = 0x800000020B454240;
            if (v12 != 0xD000000000000019)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          case 6:
            v14 = 0x800000020B454260;
            if (v12 != 0xD000000000000014)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          case 7:
            v14 = 0x800000020B454280;
            if (v12 != 0xD000000000000019)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          case 8:
            v14 = 0x800000020B4542A0;
            if (v12 != 0xD00000000000001ALL)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          case 9:
            v14 = 0x800000020B4542C0;
            if (v12 != 0xD000000000000010)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          case 10:
            v13 = 0xD000000000000015;
            v14 = 0x800000020B4542E0;
LABEL_60:
            if (v12 == v13)
            {
              goto LABEL_61;
            }

            goto LABEL_62;
          case 11:
            v14 = 0x800000020B454300;
            if (v12 != 0xD000000000000020)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          case 12:
            v14 = 0x800000020B454330;
            if (v12 != 0xD000000000000018)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          case 13:
            v14 = 0x800000020B454350;
            if (v12 != 0xD00000000000001ALL)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          case 14:
            v14 = 0x800000020B454370;
            if (v12 != 0xD00000000000001CLL)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          case 15:
            v14 = 0xE800000000000000;
            if (v12 != 0x6C6576654C706F54)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          case 16:
            v14 = 0x800000020B4543A0;
            if (v12 != 0xD000000000000015)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          case 17:
            v14 = 0x800000020B4543C0;
            if (v12 != 0xD00000000000001ALL)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          default:
            v14 = 0x800000020B4541B0;
            if (v12 != 0xD00000000000001FLL)
            {
              goto LABEL_62;
            }

LABEL_61:
            if (v11 == v14)
            {
              goto LABEL_70;
            }

LABEL_62:
            v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v15)
            {
              goto LABEL_71;
            }

            a2 = (a2 + 1) & v10;
            if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_67:
  v16 = *v20;
  *(*v20 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v16 + 48) + a2) = v5;
  v17 = *(v16 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
LABEL_70:

LABEL_71:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v19;
  }

  return result;
}

{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        result = specialized _NativeSet.copy()(&_ss11_SetStorageCy11WorkoutCore17MetricPlatterTypeOGMd, &_ss11_SetStorageCy11WorkoutCore17MetricPlatterTypeOGMR);
        goto LABEL_62;
      }

      specialized _NativeSet.copyAndResize(capacity:)(v7 + 1);
    }

    v9 = *v3;
    v10 = Hasher.init(_seed:)();
    MetricPlatterType.rawValue.getter(v10);
    String.hash(into:)();

    result = Hasher._finalize()();
    v11 = -1 << *(v9 + 32);
    a2 = result & ~v11;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v12 = ~v11;
      while (2)
      {
        v13 = 0xE800000000000000;
        v14 = 0x647261646E617473;
        switch(*(*(v9 + 48) + a2))
        {
          case 1:
            v14 = 0x647261646E617473;
            goto LABEL_20;
          case 2:
            v14 = 0x6C61767265746E69;
            break;
          case 3:
            v14 = 0x6C61767265746E69;
LABEL_20:
            v13 = 0xEE00646E6F636553;
            break;
          case 4:
            v13 = 0xE500000000000000;
            v14 = 0x7265636170;
            break;
          case 5:
            v13 = 0xE400000000000000;
            v14 = 1701011826;
            break;
          case 6:
            v13 = 0xE700000000000000;
            v14 = 0x746E656D676573;
            break;
          case 7:
            v14 = 0x7974697669746361;
            v13 = 0xED000073676E6952;
            break;
          case 8:
            v13 = 0xE500000000000000;
            v14 = 0x6F65646976;
            break;
          case 9:
            v13 = 0xE500000000000000;
            v14 = 0x74696C7073;
            break;
          case 0xA:
            v14 = 0x7461527472616568;
            v13 = 0xEE0073656E6F5A65;
            break;
          case 0xB:
            v13 = 0xEA00000000007472;
            v14 = 0x6F707369746C756DLL;
            break;
          case 0xC:
            v13 = 0xE500000000000000;
            v14 = 0x7265776F70;
            break;
          case 0xD:
            v14 = 0x6E6F5A7265776F70;
            v13 = 0xEA00000000007365;
            break;
          case 0xE:
            v14 = 0x6F69746176656C65;
            v13 = 0xE90000000000006ELL;
            break;
          case 0xF:
            v14 = 0x656D6F6465657073;
            v13 = 0xEB00000000726574;
            break;
          default:
            break;
        }

        v15 = 0xE800000000000000;
        v16 = 0x647261646E617473;
        switch(v6)
        {
          case 1:
            v17 = 0x647261646E617473;
            goto LABEL_44;
          case 2:
            if (v14 != 0x6C61767265746E69)
            {
              goto LABEL_57;
            }

            goto LABEL_56;
          case 3:
            v17 = 0x6C61767265746E69;
LABEL_44:
            v15 = 0xEE00646E6F636553;
            if (v14 != v17)
            {
              goto LABEL_57;
            }

            goto LABEL_56;
          case 4:
            v15 = 0xE500000000000000;
            v18 = 1701011824;
            goto LABEL_35;
          case 5:
            v15 = 0xE400000000000000;
            if (v14 != 1701011826)
            {
              goto LABEL_57;
            }

            goto LABEL_56;
          case 6:
            v15 = 0xE700000000000000;
            if (v14 != 0x746E656D676573)
            {
              goto LABEL_57;
            }

            goto LABEL_56;
          case 7:
            v15 = 0xED000073676E6952;
            if (v14 != 0x7974697669746361)
            {
              goto LABEL_57;
            }

            goto LABEL_56;
          case 8:
            v15 = 0xE500000000000000;
            if (v14 != 0x6F65646976)
            {
              goto LABEL_57;
            }

            goto LABEL_56;
          case 9:
            v15 = 0xE500000000000000;
            if (v14 != 0x74696C7073)
            {
              goto LABEL_57;
            }

            goto LABEL_56;
          case 10:
            v16 = 0x7461527472616568;
            v15 = 0xEE0073656E6F5A65;
            goto LABEL_55;
          case 11:
            v15 = 0xEA00000000007472;
            if (v14 != 0x6F707369746C756DLL)
            {
              goto LABEL_57;
            }

            goto LABEL_56;
          case 12:
            v15 = 0xE500000000000000;
            v18 = 1702326128;
LABEL_35:
            if (v14 != (v18 & 0xFFFF0000FFFFFFFFLL | 0x7200000000))
            {
              goto LABEL_57;
            }

            goto LABEL_56;
          case 13:
            v15 = 0xEA00000000007365;
            if (v14 != 0x6E6F5A7265776F70)
            {
              goto LABEL_57;
            }

            goto LABEL_56;
          case 14:
            v15 = 0xE90000000000006ELL;
            if (v14 != 0x6F69746176656C65)
            {
              goto LABEL_57;
            }

            goto LABEL_56;
          case 15:
            v15 = 0xEB00000000726574;
            if (v14 != 0x656D6F6465657073)
            {
              goto LABEL_57;
            }

            goto LABEL_56;
          default:
LABEL_55:
            if (v14 != v16)
            {
              goto LABEL_57;
            }

LABEL_56:
            if (v13 == v15)
            {
              goto LABEL_65;
            }

LABEL_57:
            v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v19)
            {
              goto LABEL_66;
            }

            a2 = (a2 + 1) & v12;
            if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_62:
  v20 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + a2) = v6;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_65:

LABEL_66:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v23;
  }

  return result;
}

{
  v24 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v7 = *v3;
  Hasher.init(_seed:)();
  v8 = *(v24 + 16);
  v9 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
  swift_beginAccess();
  MEMORY[0x20F2E7FF0](*(v8 + v9) + 1);
  v10 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v11 = *(v8 + v10);
  NSObject.hash(into:)();

  result = Hasher._finalize()();
  v12 = -1 << *(v7 + 32);
  a2 = result & ~v12;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    type metadata accessor for WorkoutConfigurationOccurrenceStore.WorkoutConfigurationHolder();
    v14 = type metadata accessor for WorkoutConfiguration(0);
    do
    {
      v15 = *(*(*(v7 + 48) + 8 * a2) + 16);
      v16 = *(v24 + 16);
      v25[3] = v14;
      v25[4] = &protocol witness table for WorkoutConfiguration;
      v25[0] = v16;
      v17 = *((*MEMORY[0x277D85000] & *v15) + 0x1D0);

      v18 = v16;
      LOBYTE(v15) = v17(v25);

      result = __swift_destroy_boxed_opaque_existential_1(v25);
      if (v15)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v19 = *v23;
  *(*v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v24;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t a6)
{
  v7 = result;
  v8 = *(*v6 + 16);
  v9 = *(*v6 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1, a4, a5);
  }

  else
  {
    if (v9 > v8)
    {
      v10 = a2;
      result = specialized _NativeSet.copy()(a4, a5);
      a2 = v10;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1, a4, a5);
  }

  v11 = *v6;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v7);
  result = Hasher._finalize()();
  v12 = -1 << *(v11 + 32);
  a2 = result & ~v12;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    while (*(*(v11 + 48) + a2) != v7)
    {
      a2 = (a2 + 1) & v13;
      if (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + a2) = v7;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void *specialized _NativeSet.copy()()
{
  return specialized _NativeSet.copy()(&_ss11_SetStorageCy11WorkoutCore15KnownPublishersOGMd, &_ss11_SetStorageCy11WorkoutCore15KnownPublishersOGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySuGMd, &_ss11_SetStorageCySuGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11WorkoutCore0C28ConfigurationOccurrenceStoreC0cE6Holder33_41A6A55DBE5760293367A7810ABE1D8CLLCGMd, &_ss11_SetStorageCy11WorkoutCore0C28ConfigurationOccurrenceStoreC0cE6Holder33_41A6A55DBE5760293367A7810ABE1D8CLLCGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11WorkoutCore20ActivityTypeListItemCGMd, &_ss11_SetStorageCy11WorkoutCore20ActivityTypeListItemCGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *specialized _NativeSet.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

Swift::Int specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11WorkoutCore10TargetZoneC0F4TypeOGMd, &_ss11_SetStorageCy11WorkoutCore10TargetZoneC0F4TypeOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_17:
      v19 = *(*(v3 + 48) + (v16 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v12 = -1 << *(v5 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v5 + 48) + v15) = v19;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11WorkoutCore17ConfigurationTypeOGMd, &_ss11_SetStorageCy11WorkoutCore17ConfigurationTypeOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x20F2E7FF0](v16 + 1);
      result = Hasher._finalize()();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11WorkoutCore15KnownPublishersOGMd, &_ss11_SetStorageCy11WorkoutCore15KnownPublishersOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_17:
      v19 = *(*(v3 + 48) + (v16 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v12 = -1 << *(v5 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v5 + 48) + v15) = v19;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11WorkoutCore17MetricPlatterTypeOGMd, &_ss11_SetStorageCy11WorkoutCore17MetricPlatterTypeOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_17:
      v19 = *(*(v3 + 48) + (v16 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v12 = -1 << *(v5 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v5 + 48) + v15) = v19;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11WorkoutCore0C28ConfigurationOccurrenceStoreC0cE6Holder33_41A6A55DBE5760293367A7810ABE1D8CLLCGMd, &_ss11_SetStorageCy11WorkoutCore0C28ConfigurationOccurrenceStoreC0cE6Holder33_41A6A55DBE5760293367A7810ABE1D8CLLCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v29 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      v17 = *(v16 + 16);
      v18 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
      swift_beginAccess();
      MEMORY[0x20F2E7FF0](*(v17 + v18) + 1);
      v19 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
      swift_beginAccess();
      v20 = *(v17 + v19);

      v21 = v20;
      NSObject.hash(into:)();

      result = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v11 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v11 + 8 * v24);
          if (v28 != -1)
          {
            v12 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v23) & ~*(v11 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11WorkoutCore20ActivityTypeListItemCGMd, &_ss11_SetStorageCy11WorkoutCore20ActivityTypeListItemCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(v5 + 40);
      v17 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = NSObject._rawHashValue(seed:)(v16);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v17;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v25;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySuGMd, &_ss11_SetStorageCySuGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = MEMORY[0x20F2E7FD0](*(v5 + 40), v16);
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

Swift::Int specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + (v15 | (v8 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x20F2E7FF0](v18);
      result = Hasher._finalize()();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v3;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v4 = v7;
  }

  return result;
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11WorkoutCore10TargetZoneC0H4TypeO_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11WorkoutCore10TargetZoneC0F4TypeOGMd, &_ss11_SetStorageCy11WorkoutCore10TargetZoneC0F4TypeOGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v31 = v1;
    v32 = a1 + 32;
    while (1)
    {
      v6 = *(v32 + v4);
      v33 = v4 + 1;
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v8 = ~(-1 << *(v3 + 32));
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) != 0)
      {
        do
        {
          v13 = *(*(v3 + 48) + v9);
          if (v13 > 3)
          {
            if (*(*(v3 + 48) + v9) > 5u)
            {
              if (v13 == 6)
              {
                v17 = 0x5F65676172657661;
                v18 = 0xED00007265776F70;
                if (v6 > 3)
                {
                  goto LABEL_32;
                }
              }

              else
              {
                v18 = 0xE400000000000000;
                v17 = 1701736302;
                if (v6 > 3)
                {
                  goto LABEL_32;
                }
              }
            }

            else
            {
              if (v13 == 4)
              {
                v17 = 0x5F65676172657661;
              }

              else
              {
                v17 = 0xD000000000000013;
              }

              if (v13 == 4)
              {
                v18 = 0xEF65636E65646163;
              }

              else
              {
                v18 = 0x800000020B4544E0;
              }

              if (v6 > 3)
              {
                goto LABEL_32;
              }
            }
          }

          else
          {
            v14 = 0xD000000000000015;
            if (v13 == 2)
            {
              v14 = 0xD000000000000012;
            }

            v15 = 0x800000020B4544B0;
            if (v13 == 2)
            {
              v15 = 0x800000020B454490;
            }

            v16 = 0x5F676E696C6C6F72;
            if (*(*(v3 + 48) + v9))
            {
              v16 = 0x5F65676172657661;
            }

            if (*(*(v3 + 48) + v9) <= 1u)
            {
              v17 = v16;
            }

            else
            {
              v17 = v14;
            }

            if (*(*(v3 + 48) + v9) <= 1u)
            {
              v18 = 0xEC00000065636170;
            }

            else
            {
              v18 = v15;
            }

            if (v6 > 3)
            {
LABEL_32:
              v19 = 1701736302;
              if (v6 == 6)
              {
                v19 = 0x5F65676172657661;
              }

              v20 = 0xED00007265776F70;
              if (v6 != 6)
              {
                v20 = 0xE400000000000000;
              }

              if (v6 == 4)
              {
                v21 = 0x5F65676172657661;
              }

              else
              {
                v21 = 0xD000000000000013;
              }

              v22 = 0xEF65636E65646163;
              if (v6 != 4)
              {
                v22 = 0x800000020B4544E0;
              }

              if (v6 <= 5)
              {
                v23 = v21;
              }

              else
              {
                v23 = v19;
              }

              if (v6 <= 5)
              {
                v24 = v22;
              }

              else
              {
                v24 = v20;
              }

              if (v17 != v23)
              {
                goto LABEL_55;
              }

              goto LABEL_54;
            }
          }

          if (v6 > 1)
          {
            if (v6 == 2)
            {
              v27 = 0xD000000000000012;
            }

            else
            {
              v27 = 0xD000000000000015;
            }

            if (v6 == 2)
            {
              v24 = 0x800000020B454490;
            }

            else
            {
              v24 = 0x800000020B4544B0;
            }

            if (v17 != v27)
            {
              goto LABEL_55;
            }
          }

          else
          {
            v25 = 0x5F676E696C6C6F72;
            v24 = 0xEC00000065636170;
            if (v6)
            {
              v25 = 0x5F65676172657661;
            }

            if (v17 != v25)
            {
              goto LABEL_55;
            }
          }

LABEL_54:
          if (v18 == v24)
          {

            goto LABEL_4;
          }

LABEL_55:
          v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v26)
          {
            goto LABEL_4;
          }

          v9 = (v9 + 1) & v8;
          v10 = v9 >> 6;
          v11 = *(v5 + 8 * (v9 >> 6));
          v12 = 1 << v9;
        }

        while ((v11 & (1 << v9)) != 0);
      }

      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v28 = *(v3 + 16);
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        break;
      }

      *(v3 + 16) = v30;
LABEL_4:
      v4 = v33;
      if (v33 == v31)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11WorkoutCore0E25VoiceAvailabilityProviderC19UnavailabilityErrorO_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11WorkoutCore0C25VoiceAvailabilityProviderC19UnavailabilityErrorOGMd, &_ss11_SetStorageCy11WorkoutCore0C25VoiceAvailabilityProviderC19UnavailabilityErrorOGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      Hasher.init(_seed:)();
      MEMORY[0x20F2E7FF0](v10);
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo9HRCDeviceC_Tt0g5Tf4g_n(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo9HRCDeviceCGMd, &_ss11_SetStorageCySo9HRCDeviceCGMR);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = __CocoaSet.count.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
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
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x20F2E7A20](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(*(v3 + 40));
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for HRCDevice();
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v3 + 40);
      v24 = *(v1 + 32 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *(v6 + 8 * (v27 >> 6));
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        type metadata accessor for HRCDevice();
        while (1)
        {
          v32 = *(*(v3 + 48) + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *(v6 + 8 * (v27 >> 6));
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v28) = v30 | v29;
        *(*(v3 + 48) + 8 * v27) = v24;
        v34 = *(v3 + 16);
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v35;
      }

      if (++v22 == v38)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11WorkoutCore17ConfigurationTypeO_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11WorkoutCore17ConfigurationTypeOGMd, &_ss11_SetStorageCy11WorkoutCore17ConfigurationTypeOGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      Hasher.init(_seed:)();
      MEMORY[0x20F2E7FF0](v10 + 1);
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation8CalendarV9ComponentOGMd, &_ss11_SetStorageCy10Foundation8CalendarV9ComponentOGMR);
    v11 = static _SetStorage.allocate(capacity:)();
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v2);
      lazy protocol witness table accessor for type AnyCancellable and conformance AnyCancellable(&lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v7, *(v11 + 48) + v20 * v16, v2);
          lazy protocol witness table accessor for type AnyCancellable and conformance AnyCancellable(&lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *v17;
          (*v17)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v2);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd, &_ss11_SetStorageCy7Combine14AnyCancellableCGMR);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = __CocoaSet.count.getter();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v21 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  v20 = v1;
  while (v21)
  {
    result = MEMORY[0x20F2E7A20](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    type metadata accessor for AnyCancellable();
    lazy protocol witness table accessor for type AnyCancellable and conformance AnyCancellable(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = -1 << *(v3 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *(v7 + 8 * (v11 >> 6));
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      lazy protocol witness table accessor for type AnyCancellable and conformance AnyCancellable(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB8]);
      do
      {
        result = dispatch thunk of static Equatable.== infix(_:_:)();
        if (result)
        {

          v1 = v20;
          goto LABEL_11;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v7 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v1 = v20;
    }

    *(v7 + 8 * v12) = v14 | v13;
    *(*(v3 + 48) + 8 * v11) = v8;
    v16 = *(v3 + 16);
    v9 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v17;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo19NLWorkoutSplitsTypeV_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo19NLWorkoutSplitsTypeVGMd, &_ss11_SetStorageCySo19NLWorkoutSplitsTypeVGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      Hasher.init(_seed:)();
      MEMORY[0x20F2E7FF0](v10);
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

unint64_t type metadata accessor for HRCDevice()
{
  result = lazy cache variable for type metadata for HRCDevice;
  if (!lazy cache variable for type metadata for HRCDevice)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for HRCDevice);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AnyCancellable and conformance AnyCancellable(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static NLSessionActivityGoal.canonical()()
{
  v0 = [objc_opt_self() secondUnit];
  v1 = [objc_opt_self() quantityWithUnit:v0 doubleValue:300.0];

  [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:2 value:v1];

  return swift_dynamicCastUnknownClassUnconditional();
}

uint64_t protocol witness for static Canonical.canonical() in conformance NLSessionActivityGoal@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() secondUnit];
  v3 = [objc_opt_self() quantityWithUnit:v2 doubleValue:300.0];

  [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:2 value:v3];
  result = swift_dynamicCastUnknownClassUnconditional();
  *a1 = result;
  return result;
}

uint64_t key path getter for TrackRunningMirroredSnapshot.trackModeEnabled : TrackRunningMirroredSnapshot@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  *a2 = v4;
  return result;
}

uint64_t key path setter for TrackRunningMirroredSnapshot.trackModeEnabled : TrackRunningMirroredSnapshot(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t TrackRunningMirroredSnapshot.trackModeEnabled.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t TrackRunningMirroredSnapshot.trackModeEnabled.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*TrackRunningMirroredSnapshot.trackModeEnabled.modify(uint64_t *a1))()
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
  return TrackRunningMirroredSnapshot.trackModeEnabled.modify;
}

void TrackRunningMirroredSnapshot.trackModeEnabled.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path getter for TrackRunningMirroredSnapshot.$trackModeEnabled : TrackRunningMirroredSnapshot(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for TrackRunningMirroredSnapshot.$trackModeEnabled : TrackRunningMirroredSnapshot(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t TrackRunningMirroredSnapshot.$trackModeEnabled.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t TrackRunningMirroredSnapshot.$trackModeEnabled.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*TrackRunningMirroredSnapshot.$trackModeEnabled.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore28TrackRunningMirroredSnapshot__trackModeEnabled;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return TrackRunningMirroredSnapshot.$trackModeEnabled.modify;
}

void TrackRunningMirroredSnapshot.$trackModeEnabled.modify(uint64_t a1, char a2)
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

uint64_t TrackRunningMirroredSnapshot.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore28TrackRunningMirroredSnapshot__trackModeEnabled;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t TrackRunningMirroredSnapshot.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore28TrackRunningMirroredSnapshot__trackModeEnabled;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TrackRunningMirroredSnapshot(uint64_t a1)
{
  result = type metadata singleton initialization cache for TrackRunningMirroredSnapshot;
  if (!type metadata singleton initialization cache for TrackRunningMirroredSnapshot)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for TrackRunningMirroredSnapshot(uint64_t a1)
{
  type metadata accessor for Published<Bool>();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t key path getter for LocationPositionPublisher.locations : LocationPositionPublisher@<X0>(void *a4@<X8>)
{
  return key path getter for LocationPositionPublisher.locations : LocationPositionPublisher(a4);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v6);

  *a4 = v6;
  return result;
}

uint64_t (*LocationPositionPublisher.locations.modify(uint64_t *a1))()
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
  return LocationPositionPublisher.locations.modify;
}

uint64_t key path setter for LocationPositionPublisher.$locations : LocationPositionPublisher(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySo10CLLocationCG_GMd, &_s7Combine9PublishedV9PublisherVySaySo10CLLocationCG_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo10CLLocationCGGMd, &_s7Combine9PublishedVySaySo10CLLocationCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t LocationPositionPublisher.$locations.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySo10CLLocationCG_GMd, &_s7Combine9PublishedV9PublisherVySaySo10CLLocationCG_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo10CLLocationCGGMd, &_s7Combine9PublishedVySaySo10CLLocationCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*LocationPositionPublisher.$locations.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySo10CLLocationCG_GMd, &_s7Combine9PublishedV9PublisherVySaySo10CLLocationCG_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore25LocationPositionPublisher__locations;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo10CLLocationCGGMd, &_s7Combine9PublishedVySaySo10CLLocationCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return LocationPositionPublisher.$locations.modify;
}

uint64_t LocationPositionPublisher.locations.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  return v3;
}

uint64_t key path setter for LocationPositionPublisher.locations : LocationPositionPublisher(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t LocationPositionPublisher.locations.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*LocationPositionPublisher.routePoints.modify(uint64_t *a1))()
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
  return LocationPositionPublisher.routePoints.modify;
}

uint64_t key path setter for LocationPositionPublisher.$routePoints : LocationPositionPublisher(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay10WorkoutKit10RoutePointVG_GMd, &_s7Combine9PublishedV9PublisherVySay10WorkoutKit10RoutePointVG_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay10WorkoutKit10RoutePointVGGMd, &_s7Combine9PublishedVySay10WorkoutKit10RoutePointVGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}