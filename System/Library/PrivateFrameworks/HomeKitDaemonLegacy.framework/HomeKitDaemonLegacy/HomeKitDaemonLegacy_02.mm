id sub_253231360(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MatterAccessoryWriteAttributeLogEvent();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_253231458(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v8 = v7;
  v29 = a6;
  v30 = sub_253CCFF58();
  v15 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v18 = &v8[OBJC_IVAR____TtC19HomeKitDaemonLegacy37MatterAccessoryWriteAttributeLogEvent_coreAnalyticsEventName];
  *v18 = 0xD00000000000003BLL;
  *(v18 + 1) = 0x8000000253D4D890;
  *&v8[OBJC_IVAR____TtC19HomeKitDaemonLegacy37MatterAccessoryWriteAttributeLogEvent_coreAnalyticsEventOptions] = 0;
  swift_unknownObjectWeakAssign();
  *&v8[OBJC_IVAR____TtC19HomeKitDaemonLegacy37MatterAccessoryWriteAttributeLogEvent_nodeId] = a2;
  *&v8[OBJC_IVAR____TtC19HomeKitDaemonLegacy37MatterAccessoryWriteAttributeLogEvent_endpointId] = a3;
  *&v8[OBJC_IVAR____TtC19HomeKitDaemonLegacy37MatterAccessoryWriteAttributeLogEvent_clusterId] = a4;
  *&v8[OBJC_IVAR____TtC19HomeKitDaemonLegacy37MatterAccessoryWriteAttributeLogEvent_attributeId] = a5;
  v19 = v29;
  sub_253205FF8(v29, &v8[OBJC_IVAR____TtC19HomeKitDaemonLegacy37MatterAccessoryWriteAttributeLogEvent_value]);
  *&v8[OBJC_IVAR____TtC19HomeKitDaemonLegacy37MatterAccessoryWriteAttributeLogEvent_timedWriteTimeout] = a7;
  v20 = a7;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = [a1 uuid];
  sub_253CCFF38();

  v25 = sub_253CCFF18();
  (*(v15 + 8))(v17, v30);
  v26 = type metadata accessor for MatterAccessoryWriteAttributeLogEvent();
  v31.receiver = v8;
  v31.super_class = v26;
  v27 = objc_msgSendSuper2(&v31, sel_initWithHomeUUID_, v25);

  __swift_destroy_boxed_opaque_existential_0(v19);
  return v27;
}

id sub_253231668(void *a1)
{
  v2 = v1;
  v45 = a1;
  v3 = sub_253CCFF58();
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v46 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v45 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B70, &qword_253D49578);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v45 - v9;
  v11 = sub_253CCFEE8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v45 - v17;
  MEMORY[0x28223BE20](v16);
  v52 = sub_253CCFCF8();
  v49 = *(v52 - 8);
  v19 = MEMORY[0x28223BE20](v52);
  v51 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v50 = &v45 - v21;
  v22 = [v2 startDate];
  sub_253CCFEA8();

  v23 = [v2 endDate];
  if (v23)
  {
    v24 = v23;
    sub_253CCFEA8();

    v25 = *(v12 + 32);
    v25(v10, v15, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
    v25(v18, v10, v11);
  }

  else
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    v26 = [v2 startDate];
    sub_253CCFEA8();

    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      sub_253232320(v10);
    }
  }

  v27 = v50;
  sub_253CCFCE8();
  (*(v49 + 16))(v51, v27, v52);
  v28 = v45;
  v29 = [v45 spiClientIdentifier];
  sub_253CCFF38();

  sub_253CCFF08();
  v30 = v48;
  v31 = *(v47 + 8);
  v31(v7, v48);
  v32 = [v28 atHomeLevel] == 2 || objc_msgSend(v28, sel_atHomeLevel) == 3;
  LODWORD(v47) = v32;
  v33 = HMDRequestSourceAsString(*&v2[OBJC_IVAR____TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent_source]);
  if (!v33)
  {
    sub_253CD0968();
    v33 = sub_253CD0938();
  }

  v34 = v46;
  sub_253CCFF48();
  sub_253CCFF08();
  v31(v34, v30);
  v35 = objc_allocWithZone(MEMORY[0x277CF1980]);
  v36 = v51;
  v37 = sub_253CCFCD8();
  v38 = sub_253CD0938();

  v39 = sub_253CD0938();
  v40 = sub_253CD0938();

  v41 = [v35 initWithDateInterval:v37 homeUniqueIdentifier:v38 homeOccupancy:v47 source:v33 clientName:v39 eventCorrelationIdentifier:v40];

  v42 = *(v49 + 8);
  v43 = v52;
  v42(v36, v52);
  v42(v50, v43);
  return v41;
}

uint64_t sub_253231CD0()
{
  ObjectType = swift_getObjectType();
  v2 = sub_253CD07E8();
  v63 = *(v2 - 8);
  v64 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v54 - v7;
  MEMORY[0x28223BE20](v6);
  v62 = &v54 - v9;
  v10 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent_clusterId);
  v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  v12 = [v10 isEqualToNumber_];

  if (!v12)
  {
    sub_253211D58(ObjectType, &off_2864FB720);
    v38 = sub_253CD07C8();
    v39 = sub_253CD0C78();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_2531F8000, v38, v39, "Ignoring MatterAccessoryInvokeCommandLogEvent since MTRClusterIDType is not rvcOperationState", v40, 2u);
      MEMORY[0x259C040E0](v40, -1, -1);
    }

    v63[1](v5, v64);
    return MEMORY[0x277D84F90];
  }

  v13 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent_commandId);
  v14 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  LODWORD(v13) = [v13 isEqualToNumber_];

  if (!v13)
  {
    sub_253211D58(ObjectType, &off_2864FB720);
    v41 = sub_253CD07C8();
    v42 = sub_253CD0C78();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_2531F8000, v41, v42, "Ignoring MatterAccessoryInvokeCommandLogEvent MTRCommandIDType is not clusterRVCOperationalStateCommandResume", v43, 2u);
      MEMORY[0x259C040E0](v43, -1, -1);
    }

    v63[1](v8, v64);
    return MEMORY[0x277D84F90];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v44 = v62;
    sub_253211D58(ObjectType, &off_2864FB720);
    v45 = sub_253CD07C8();
    v46 = sub_253CD0C98();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_2531F8000, v45, v46, "Unable to donate to Biome due to nil home", v47, 2u);
      MEMORY[0x259C040E0](v47, -1, -1);
    }

    v63[1](v44, v64);
    return MEMORY[0x277D84F90];
  }

  v63 = Strong;
  v16 = sub_253231668(Strong);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A2AE8, &unk_253D4B300);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_253D48D90;
  v65 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent_nodeId);
  sub_2532322CC();
  sub_253CD0E08();
  v17 = [v10 description];
  if (!v17)
  {
    sub_253CD0968();
    v17 = sub_253CD0938();
  }

  v62 = objc_allocWithZone(MEMORY[0x277CF1960]);
  v60 = v16;
  v18 = sub_253CD0938();
  v61 = sub_253CD0938();

  v59 = sub_253CD0938();
  v58 = sub_253CD0938();
  v19 = sub_253CD0A38();
  v20 = sub_253CD0938();
  v21 = sub_253CD0938();
  v54 = v21;
  v22 = sub_253CD0938();
  v55 = v22;
  v23 = sub_253CD0938();
  v56 = v23;
  v24 = sub_253CD0938();
  v57 = v24;
  v25 = sub_253CD0A38();
  v26 = sub_253CD0938();
  v52 = v23;
  v53 = v24;
  v50 = v21;
  v51 = v22;
  v48 = v19;
  v49 = v20;
  v27 = v20;
  v28 = v19;
  v29 = v61;
  v30 = v60;
  v31 = v17;
  v32 = v17;
  v34 = v58;
  v33 = v59;
  v62 = [v62 initWithBase:v60 stringAccessoryState:v18 accessoryUniqueIdentifier:v61 serviceUniqueIdentifier:v31 serviceType:v59 characteristicType:v58 serviceGroupUniqueIdentifier:0 zoneUniqueIdentifiers:v48 roomUniqueIdentifier:v49 accessoryName:v50 serviceName:v51 roomName:v52 serviceGroupName:v53 zoneNames:v25 homeName:v26];

  v35 = v64;
  v36 = v63;
  *(v64 + 32) = v62;

  return v35;
}

unint64_t sub_2532322CC()
{
  result = qword_27F5A35F0;
  if (!qword_27F5A35F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5A35F0);
  }

  return result;
}

uint64_t sub_253232320(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B70, &qword_253D49578);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2532323EC(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_253232A64();
  v3 = sub_253CD0A38();
  [Strong accessoryReachabilityDidChange_];
}

id sub_2532324D4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = _s15SwiftExtensionsCMa_1();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_253232620()
{
  v1 = [objc_allocWithZone(_s15SwiftExtensionsCMa_1()) init];
  [v0 setSwiftExtensions_];

  v2 = [v0 _swiftExtensions];
  v3 = [v0 notificationCenter];
  v4 = type metadata accessor for WidgetAccessoryReachabilityMonitor();
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  v5[14] = MEMORY[0x277D84F98];
  v5[15] = 0;
  v5[16] = 0;
  v5[17] = v3;
  v12.receiver = v5;
  v12.super_class = v4;
  *&v2[OBJC_IVAR____TtCE19HomeKitDaemonLegacyCSo26HMDWidgetTimelineRefresherP33_B408D5CF3978727312E626FC8FA64E1D15SwiftExtensions_reachabilityMonitor] = objc_msgSendSuper2(&v12, sel_init);

  v6 = [v0 _swiftExtensions];
  v7 = _s49WidgetAccessoryReachabilityMonitorDelegateAdaptorCMa();
  v8 = objc_allocWithZone(v7);
  swift_unknownObjectUnownedInit();
  v11.receiver = v8;
  v11.super_class = v7;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  v10 = *&v6[OBJC_IVAR____TtCE19HomeKitDaemonLegacyCSo26HMDWidgetTimelineRefresherP33_B408D5CF3978727312E626FC8FA64E1D15SwiftExtensions_reachabilityMonitorDelegateAdapter];
  *&v6[OBJC_IVAR____TtCE19HomeKitDaemonLegacyCSo26HMDWidgetTimelineRefresherP33_B408D5CF3978727312E626FC8FA64E1D15SwiftExtensions_reachabilityMonitorDelegateAdapter] = v9;
}

void sub_2532327D4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = [v0 _swiftExtensions];
  v6 = *&v5[OBJC_IVAR____TtCE19HomeKitDaemonLegacyCSo26HMDWidgetTimelineRefresherP33_B408D5CF3978727312E626FC8FA64E1D15SwiftExtensions_reachabilityMonitor];

  if (v6)
  {
    v7 = [v1 _swiftExtensions];
    v8 = *&v7[OBJC_IVAR____TtCE19HomeKitDaemonLegacyCSo26HMDWidgetTimelineRefresherP33_B408D5CF3978727312E626FC8FA64E1D15SwiftExtensions_reachabilityMonitorDelegateAdapter];
    v9 = v8;

    if (v8)
    {
      v10 = sub_253CD0B58();
      (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
      v11 = swift_allocObject();
      v11[2] = 0;
      v11[3] = 0;
      v11[4] = v6;
      v11[5] = v9;
      v11[6] = &off_2864FB738;
      sub_25324690C(0, 0, v4, &unk_253D495E8, v11);
    }

    else
    {
    }
  }
}

unint64_t sub_253232A64()
{
  result = qword_281530EA0;
  if (!qword_281530EA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281530EA0);
  }

  return result;
}

uint64_t sub_253232AB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25320C438;

  return sub_253208F94(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_253232B78()
{
  v0 = sub_253CD07E8();
  __swift_allocate_value_buffer(v0, qword_27F5A3618);
  __swift_project_value_buffer(v0, qword_27F5A3618);
  sub_253CD0968();
  return sub_253CD07D8();
}

uint64_t sub_253232BF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  swift_defaultActor_initialize();
  *(v6 + 136) = sub_253CD02F8();
  *(v6 + 144) = sub_253233EE4(&qword_281531978, MEMORY[0x277D0EFE0], MEMORY[0x277D0EFD8]);
  __swift_allocate_boxed_opaque_existential_0((v6 + 112));
  sub_253CD02E8();
  *(v6 + 152) = 0u;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 216) = 0u;
  *(v6 + 232) = a1;
  *(v6 + 240) = a2;
  *(v6 + 248) = a3;
  *(v6 + 256) = a4;
  *(v6 + 264) = a5;
  *(v6 + 272) = 0;
  v12 = qword_27F5A2438;
  v13 = a1;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = sub_253CD07E8();
  __swift_project_value_buffer(v14, qword_27F5A3618);
  v15 = v13;
  v16 = sub_253CD07C8();
  v17 = sub_253CD0C78();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v18 = 136315650;
    v19 = sub_253CD0D38();
    v21 = sub_253277BA8(v19, v20, &v30);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    v22 = sub_253CD11F8();
    v24 = sub_253277BA8(v22, v23, &v30);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2080;
    v25 = sub_253CD11F8();
    v27 = sub_253277BA8(v25, v26, &v30);

    *(v18 + 24) = v27;
    _os_log_impl(&dword_2531F8000, v16, v17, "Configured to monitor queue %s, interval: %s, threshold: %s", v18, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C040E0](v29, -1, -1);
    MEMORY[0x259C040E0](v18, -1, -1);
  }

  else
  {
  }

  return v6;
}

uint64_t sub_253232E7C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v6[-v2];
  __swift_project_boxed_opaque_existential_0((v0 + 112), *(v0 + 136));
  sub_253CD0B38();
  v4 = sub_253CD0B58();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v7[3] = swift_getAssociatedTypeWitness();
  v7[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v7);

  sub_253CD0188();

  sub_253206054(v3, qword_27F5A2C48, &unk_253D48880);
  swift_beginAccess();
  sub_253233C14(v7, v0 + 152);
  return swift_endAccess();
}

uint64_t sub_25323306C()
{
  sub_2532330CC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2532330CC()
{
  v29 = sub_253CD0818();
  MEMORY[0x28223BE20](v29);
  v28 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_253CCFEE8();
  v2 = *(v26 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v26);
  v25 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v22 = &v22 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v27 = *(v0 + 232);
  v9 = sub_253CD0D38();
  v23 = v10;
  v24 = v9;
  __swift_project_boxed_opaque_existential_0((v0 + 112), *(v0 + 136));
  aBlock = *(v0 + 256);
  sub_253CD1068();
  sub_253CD0B38();
  v11 = sub_253CD0B58();
  (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(&aBlock);
  sub_253CD0188();
  sub_253206054(v8, qword_27F5A2C48, &unk_253D48880);
  swift_beginAccess();
  sub_253233C14(&aBlock, v0 + 192);
  swift_endAccess();
  v12 = v22;
  sub_253CCFED8();
  v13 = swift_allocObject();
  swift_weakInit();
  v15 = v25;
  v14 = v26;
  v16 = v12;
  (*(v2 + 16))(v25, v12, v26);
  v17 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  (*(v2 + 32))(v18 + v17, v15, v14);
  v19 = (v18 + ((v3 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  v20 = v23;
  *v19 = v24;
  v19[1] = v20;
  AssociatedConformanceWitness = sub_253233C84;
  v34 = v18;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v31 = sub_25321E9B8;
  AssociatedTypeWitness = &block_descriptor_5;
  _Block_copy(&aBlock);
  v35 = MEMORY[0x277D84F90];
  sub_253233EE4(&qword_281530ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31E8, &qword_253D48EA0);
  sub_2532268F0();
  sub_253CD0E38();
  sub_253CD0878();
  swift_allocObject();
  sub_253CD0868();

  sub_253CD0D18();

  return (*(v2 + 8))(v16, v14);
}

uint64_t sub_2532335D8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v34 - v7;
  v9 = sub_253CCFEE8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    v36 = a3;
    sub_253CCFED8();
    sub_253CCFE88();
    sub_253CD1218();
    v15 = sub_253CD1208();
    v37 = v10;
    if (v15)
    {
      if (qword_27F5A2438 != -1)
      {
        swift_once();
      }

      v16 = sub_253CD07E8();
      __swift_project_value_buffer(v16, qword_27F5A3618);

      v17 = sub_253CD07C8();
      v18 = sub_253CD0C88();

      if (!os_log_type_enabled(v17, v18))
      {
        goto LABEL_12;
      }

      v19 = swift_slowAlloc();
      v35 = v9;
      v20 = v19;
      v21 = swift_slowAlloc();
      v38 = v21;
      *v20 = 136315394;
      *(v20 + 4) = sub_253277BA8(v36, a4, &v38);
      *(v20 + 12) = 2080;
      v22 = sub_253CD11F8();
      v24 = sub_253277BA8(v22, v23, &v38);

      *(v20 + 14) = v24;
      v25 = "Healthy Queue: %s, delay: %s";
    }

    else
    {
      if (qword_27F5A2438 != -1)
      {
        swift_once();
      }

      v26 = sub_253CD07E8();
      __swift_project_value_buffer(v26, qword_27F5A3618);

      v17 = sub_253CD07C8();
      v18 = sub_253CD0C98();

      if (!os_log_type_enabled(v17, v18))
      {
        goto LABEL_12;
      }

      v27 = swift_slowAlloc();
      v35 = v9;
      v20 = v27;
      v21 = swift_slowAlloc();
      v38 = v21;
      *v20 = 136315394;
      *(v20 + 4) = sub_253277BA8(v36, a4, &v38);
      *(v20 + 12) = 2080;
      v28 = sub_253CD11F8();
      v30 = sub_253277BA8(v28, v29, &v38);

      *(v20 + 14) = v30;
      v25 = "Slow Queue: %s, delay: %s";
    }

    _os_log_impl(&dword_2531F8000, v17, v18, v25, v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C040E0](v21, -1, -1);
    v31 = v20;
    v9 = v35;
    MEMORY[0x259C040E0](v31, -1, -1);
LABEL_12:

    v32 = sub_253CD0B58();
    (*(*(v32 - 8) + 56))(v8, 1, 1, v32);
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = v14;

    sub_25324690C(0, 0, v8, &unk_253D49698, v33);

    return (*(v37 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_253233A74()
{
  v1 = v0[15];
  swift_beginAccess();
  sub_253233DE4(v1 + 192, (v0 + 2));
  if (v0[5])
  {
    sub_2532074E4((v0 + 2), (v0 + 7));
    sub_253206054((v0 + 2), &qword_27F5A3630, &unk_253D49680);
    __swift_project_boxed_opaque_existential_0(v0 + 7, v0[10]);
    sub_253CD0308();
    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  }

  else
  {
    sub_253206054((v0 + 2), &qword_27F5A3630, &unk_253D49680);
  }

  sub_253232E7C();
  v2 = v0[1];

  return v2();
}

uint64_t sub_253233B70()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));
  sub_253206054(v0 + 152, &qword_27F5A3630, &unk_253D49680);
  sub_253206054(v0 + 192, &qword_27F5A3630, &unk_253D49680);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_253233C14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3630, &unk_253D49680);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_253233C84()
{
  v1 = *(sub_253CCFEE8() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return sub_2532335D8(v3, v0 + v2, v5, v6);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_253233D30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25320C438;

  return sub_253233A54(a1, v4, v5, v6);
}

uint64_t sub_253233DE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3630, &unk_253D49680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_253233E54()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25320C7A8;

  return sub_25323304C(v0);
}

uint64_t sub_253233EE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_253233F2C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3648, &qword_253D496E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - v6;
  v8 = *(v2 + 120);
  *(v2 + 120) = a1;
  v9 = a1;

  v10 = *(v2 + 112);
  v11 = *(v10 + 16);

  if (v11)
  {
    v13 = 0;
    while (v13 < *(v10 + 16))
    {
      (*(v5 + 16))(v7, v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13++, v4);
      v15[1] = v9;
      v14 = v9;
      sub_253CD0AE8();
      result = (*(v5 + 8))(v7, v4);
      if (v11 == v13)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    *(v2 + 112) = MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2532340C0()
{
  if ([v0 discoveryController])
  {
    sub_253CD0E18();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    type metadata accessor for DiscoveryController(0);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_253226510(v5);
    return 0;
  }
}

id sub_253234174()
{
  v1 = [v0 lock];
  [v1 lock];

  if ([v0 delayedHomeManagerStorage])
  {
    sub_253CD0E18();
    swift_unknownObjectRelease();
    sub_2531FF150(v6, v7);
    sub_2531FF150(v7, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3650, &qword_253D496E8);
LABEL_5:
    swift_dynamicCast();
    v4 = [v0 lock];
    [v4 unlock];

    return v5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3650, &qword_253D496E8);
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = MEMORY[0x277D84F90];
  *(v2 + 120) = 0;
  [v0 setDelayedHomeManagerStorage_];

  result = [v0 delayedHomeManagerStorage];
  if (result)
  {
    sub_253CD0E18();
    swift_unknownObjectRelease();
    sub_2531FF150(v6, v7);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t static MainDriverUtilities.mainDriver(_:finishDelayedHomeManager:)(void *a1, void *a2)
{
  v4 = a1[3];
  v5 = __swift_project_boxed_opaque_existential_0(a1, v4);
  v6 = a2[3];
  v7 = __swift_project_boxed_opaque_existential_0(a2, v6);

  return sub_2532346EC(v5, v7, v2, v4, v6);
}

uint64_t sub_25323439C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 96) = a4;
  *(v5 + 104) = a5;
  return MEMORY[0x2822009F8](sub_2532343BC, 0, 0);
}

uint64_t sub_2532343BC()
{
  v1 = v0[13];
  sub_253205FF8(v0[12], (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31B0, &unk_253D4AB60);
  sub_253200644(0, &qword_27F5A3638, off_27971A190);
  swift_dynamicCast();
  v2 = v0[10];
  v3 = sub_253234174();
  v0[14] = v3;

  sub_253205FF8(v1, (v0 + 6));
  sub_253200644(0, &qword_27F5A3640, off_27971A138);
  swift_dynamicCast();
  v0[15] = v0[11];

  return MEMORY[0x2822009F8](sub_2532344D0, v3, 0);
}

uint64_t sub_2532344D0()
{
  v1 = *(v0 + 120);
  sub_253233F2C(v1);

  v2 = *(v0 + 8);

  return v2();
}

id MainDriverUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MainDriverUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MainDriverUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MainDriverUtilities.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MainDriverUtilities();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_2532346EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v17 - v10;
  v20[3] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, a1, a4);
  v19[3] = a5;
  v13 = __swift_allocate_boxed_opaque_existential_0(v19);
  (*(*(a5 - 8) + 16))(v13, a2, a5);
  v14 = sub_253CD0B58();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  sub_253205FF8(v20, v18);
  sub_253205FF8(v19, v17);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  sub_2531FF150(v18, (v15 + 32));
  sub_2531FF150(v17, (v15 + 64));
  sub_25324690C(0, 0, v11, &unk_253D496D0, v15);

  __swift_destroy_boxed_opaque_existential_0(v20);
  return __swift_destroy_boxed_opaque_existential_0(v19);
}

uint64_t sub_2532348E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25320C438;

  return sub_25323439C(a1, v4, v5, v1 + 32, v1 + 64);
}

id sub_253234994(uint64_t a1)
{
  v2 = v1;
  os_unfair_lock_lock((a1 + 16));
  v4 = *(a1 + 32);
  v5 = v4;
  os_unfair_lock_unlock((a1 + 16));
  if (!v4)
  {
    v6 = *(a1 + 88);
    v7 = *(a1 + 96);
    __swift_project_boxed_opaque_existential_0((a1 + 64), v6);
    v5 = (*(v7 + 24))(a1, v6, v7);
  }

  os_unfair_lock_lock((a1 + 16));
  v8 = *(a1 + 48);
  v9 = v8;
  os_unfair_lock_unlock((a1 + 16));
  if (!v8)
  {
    v10 = *(a1 + 88);
    v11 = *(a1 + 96);
    __swift_project_boxed_opaque_existential_0((a1 + 64), v10);
    v9 = (*(v11 + 40))(a1, v10, v11);
  }

  v12 = v5;
  v13 = v9;
  os_unfair_lock_lock(v2 + 4);
  os_unfair_lock_lock((a1 + 16));
  v14 = *(a1 + 24);
  v15 = v14;
  os_unfair_lock_unlock((a1 + 16));
  if (!v14)
  {
    v16 = [objc_allocWithZone(HMDAccountRegistry) initWithAppleAccountManager:v12 remoteAccountManager:v13];
    os_unfair_lock_lock((a1 + 16));
    v15 = v16;
    sub_253234FAC(a1 + 24);
    *(a1 + 24) = v16;
    os_unfair_lock_unlock((a1 + 16));
  }

  os_unfair_lock_unlock(v2 + 4);
  return v15;
}

id sub_253234B14(uint64_t a1)
{
  os_unfair_lock_lock(v1 + 4);
  os_unfair_lock_lock((a1 + 16));
  v3 = *(a1 + 40);
  v4 = v3;
  os_unfair_lock_unlock((a1 + 16));
  if (!v3)
  {
    v5 = [objc_allocWithZone(HMDIDSServiceManager) initWithDefaults];
    [v5 configure];
    os_unfair_lock_lock((a1 + 16));
    v6 = *(a1 + 40);
    v4 = v5;

    *(a1 + 40) = v5;
    os_unfair_lock_unlock((a1 + 16));
  }

  os_unfair_lock_unlock(v1 + 4);
  return v4;
}

uint64_t sub_253234BC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(os_unfair_lock_s *, uint64_t, uint64_t, id))
{
  v5 = v3;
  os_unfair_lock_lock((a1 + 16));
  v7 = *(a1 + 40);
  v8 = v7;
  os_unfair_lock_unlock((a1 + 16));
  if (!v7)
  {
    v9 = *(a1 + 88);
    v10 = *(a1 + 96);
    __swift_project_boxed_opaque_existential_0((a1 + 64), v9);
    v8 = (*(v10 + 32))(a1, v9, v10);
  }

  KeyPath = swift_getKeyPath();
  v12 = v8;
  os_unfair_lock_lock(v5 + 4);
  v13 = a3(v5 + 4, a1, KeyPath, v12);

  os_unfair_lock_unlock(v5 + 4);

  return v13;
}

id sub_253234DB0(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock(a2 + 4);
  v6 = swift_readAtKeyPath();
  v8 = *v7;
  v9 = *v7;
  v6(v13, 0);
  os_unfair_lock_unlock(a2 + 4);
  if (v8)
  {
    return v9;
  }

  v11 = [objc_allocWithZone(HMDAppleAccountManager) initWithIDSServiceManager_];
  os_unfair_lock_lock(a2 + 4);
  v13[0] = v11;
  v12 = v11;
  swift_setAtWritableKeyPath();
  os_unfair_lock_unlock(a2 + 4);
  return v12;
}

id sub_253234E9C(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, void *a4)
{
  os_unfair_lock_lock(a2 + 4);
  v6 = swift_readAtKeyPath();
  v8 = *v7;
  v9 = *v7;
  v6(v13, 0);
  os_unfair_lock_unlock(a2 + 4);
  if (v8)
  {
    return v9;
  }

  v11 = [objc_allocWithZone(HMDRemoteAccountManager) initWithIDSService_];
  swift_unknownObjectRelease();
  os_unfair_lock_lock(a2 + 4);
  v13[0] = v11;
  v12 = v11;
  swift_setAtWritableKeyPath();
  os_unfair_lock_unlock(a2 + 4);
  return v12;
}

uint64_t sub_253234FAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3660, qword_253D49778);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void Account.ChangeObserver.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  if (Strong)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = *&v1[OBJC_IVAR___HMDAccountChangeObserver_eventSubscriber];
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    aBlock[4] = sub_2532352D4;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2532352F8;
    aBlock[3] = &block_descriptor_6;
    v5 = _Block_copy(aBlock);
    v6 = v1;

    [v3 registerAccountChangeEventHandler_];
    swift_unknownObjectRelease();
    _Block_release(v5);
  }
}

void sub_2532352F8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v5(a2, a3);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t (*Account.ChangeObserver.delegate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___HMDAccountChangeObserver_delegate;
  *(v3 + 80) = v1;
  *(v3 + 88) = v5;
  swift_beginAccess();
  *(v4 + 72) = swift_unknownObjectWeakLoadStrong();
  return sub_253235420;
}

void sub_253235420(void **a1, uint64_t a2)
{
  v2 = a2;
  v3 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  if (v2)
  {
    if (!Strong)
    {
      v5 = v3[10];
      v6 = *&v5[OBJC_IVAR___HMDAccountChangeObserver_eventSubscriber];
      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      v3[4] = sub_253236720;
      v3[5] = v7;
      *v3 = MEMORY[0x277D85DD0];
      v3[1] = 1107296256;
      v3[2] = sub_2532352F8;
      v3[3] = &block_descriptor_7;
      v8 = _Block_copy(v3);
      v9 = v5;
      swift_unknownObjectRetain();

      [v6 registerAccountChangeEventHandler_];
      swift_unknownObjectRelease();
      _Block_release(v8);
      goto LABEL_7;
    }

LABEL_5:
    swift_unknownObjectRelease();
LABEL_7:
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  if (Strong)
  {
    goto LABEL_5;
  }

  v10 = v3[10];
  v11 = *&v10[OBJC_IVAR___HMDAccountChangeObserver_eventSubscriber];
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  v3[4] = sub_253236720;
  v3[5] = v12;
  *v3 = MEMORY[0x277D85DD0];
  v3[1] = 1107296256;
  v3[2] = sub_2532352F8;
  v3[3] = &block_descriptor_14;
  v13 = _Block_copy(v3);
  v14 = v10;

  [v11 registerAccountChangeEventHandler_];
  swift_unknownObjectRelease();
  _Block_release(v13);
LABEL_8:

  free(v3);
}

id Account.ChangeObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Account.ChangeObserver.init()()
{
  swift_getObjectType();
  v0 = [objc_opt_self() sharedSubscriber];
  v1 = [objc_opt_self() productInfo];
  result = [objc_opt_self() sharedManager];
  if (result)
  {
    v3 = result;
    v4 = [objc_opt_self() defaultCenter];
    v5 = sub_253236640(v0, v1, v3, v4);

    swift_deallocPartialClassInstance();
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_253235894(void *a1, int a2)
{
  v86 = a2;
  ObjectType = swift_getObjectType();
  v5 = sub_253CD07E8();
  v6 = *(v5 - 8);
  v87 = v5;
  v88 = v6;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v84 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v84 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v84 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v84 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v84 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v84 - v25;
  if (*(v2 + OBJC_IVAR___HMDAccountChangeObserver_isSharediPad) == 1)
  {
    sub_253211D58(ObjectType, &off_2864FB968);
    v27 = sub_253CD07C8();
    v28 = sub_253CD0C88();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2531F8000, v27, v28, "Ignoring change for shared iPad", v29, 2u);
      MEMORY[0x259C040E0](v29, -1, -1);
    }

    (*(v88 + 8))(v26, v87);
    return;
  }

  if (!a1)
  {
    sub_253211D58(ObjectType, &off_2864FB968);
    v43 = sub_253CD07C8();
    v44 = sub_253CD0C88();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 67109120;
      *(v45 + 4) = v86;
      _os_log_impl(&dword_2531F8000, v43, v44, "Ignoring change for nil account, change type: %u", v45, 8u);
      MEMORY[0x259C040E0](v45, -1, -1);
    }

    (*(v88 + 8))(v9, v87);
    return;
  }

  v30 = *MEMORY[0x277CEC688];
  v85 = a1;
  v31 = a1;
  if (![v31 aa:v30 isAccountClass:?])
  {
    sub_253211D58(ObjectType, &off_2864FB968);
    v46 = v31;
    v47 = sub_253CD07C8();
    v48 = sub_253CD0C88();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v49 = 138412290;
      *(v49 + 4) = v46;
      *v50 = v85;
      v51 = v46;
      _os_log_impl(&dword_2531F8000, v47, v48, "Ignoring change for non-primary account %@", v49, 0xCu);
      sub_2532365D8(v50);
      MEMORY[0x259C040E0](v50, -1, -1);
      MEMORY[0x259C040E0](v49, -1, -1);
    }

    else
    {
      v51 = v47;
      v47 = v46;
    }

    (*(v88 + 8))(v12, v87);
    return;
  }

  v32 = v86;
  if (v86 <= 3)
  {
    v84 = v2;
    switch(v86)
    {
      case 1:
        sub_253211D58(ObjectType, &off_2864FB968);
        v55 = v31;
        v56 = v31;
        v57 = sub_253CD07C8();
        v58 = sub_253CD0CB8();

        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          *v59 = 138412290;
          *(v59 + 4) = v56;
          *v60 = v85;
          v61 = v56;
          _os_log_impl(&dword_2531F8000, v57, v58, "Account added %@", v59, 0xCu);
          sub_2532365D8(v60);
          MEMORY[0x259C040E0](v60, -1, -1);
          MEMORY[0x259C040E0](v59, -1, -1);
        }

        (*(v88 + 8))(v24, v87);
        v62 = v84;
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        v31 = v55;
        if (!Strong)
        {
          goto LABEL_36;
        }

        [Strong accountChangeObserver:v62 observedAddedAccount:{v56, v84}];
        break;
      case 2:
        sub_253211D58(ObjectType, &off_2864FB968);
        v64 = v31;
        v65 = sub_253CD07C8();
        v66 = sub_253CD0CB8();

        if (os_log_type_enabled(v65, v66))
        {
          v67 = v31;
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          *v68 = 138412290;
          *(v68 + 4) = v64;
          *v69 = v85;
          v70 = v64;
          _os_log_impl(&dword_2531F8000, v65, v66, "Account modified %@", v68, 0xCu);
          sub_2532365D8(v69);
          MEMORY[0x259C040E0](v69, -1, -1);
          v71 = v68;
          v31 = v67;
          MEMORY[0x259C040E0](v71, -1, -1);
        }

        (*(v88 + 8))(v21, v87);
        v72 = v84;
        swift_beginAccess();
        v73 = swift_unknownObjectWeakLoadStrong();
        if (!v73)
        {
          goto LABEL_36;
        }

        [v73 accountChangeObserver:v72 observedModifiedAccount:{v64, v84}];
        break;
      case 3:
        sub_253211D58(ObjectType, &off_2864FB968);
        v33 = v31;
        v34 = sub_253CD07C8();
        v35 = sub_253CD0CB8();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = v31;
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          *v37 = 138412290;
          *(v37 + 4) = v33;
          *v38 = v85;
          v39 = v33;
          _os_log_impl(&dword_2531F8000, v34, v35, "Account removed %@", v37, 0xCu);
          sub_2532365D8(v38);
          MEMORY[0x259C040E0](v38, -1, -1);
          v40 = v37;
          v31 = v36;
          MEMORY[0x259C040E0](v40, -1, -1);
        }

        (*(v88 + 8))(v18, v87);
        v41 = v84;
        swift_beginAccess();
        v42 = swift_unknownObjectWeakLoadStrong();
        if (!v42)
        {
          goto LABEL_36;
        }

        [v42 accountChangeObserver:v41 observedDeletedAccount:{v33, v84}];
        break;
      default:
LABEL_24:
        sub_253211D58(ObjectType, &off_2864FB968);
        v52 = sub_253CD07C8();
        v53 = sub_253CD0C98();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 67109120;
          *(v54 + 4) = v32;
          _os_log_impl(&dword_2531F8000, v52, v53, "Unexpected, unhandled account change case: %u", v54, 8u);
          MEMORY[0x259C040E0](v54, -1, -1);
        }

        (*(v88 + 8))(v15, v87);
        goto LABEL_36;
    }

    swift_unknownObjectRelease();
    goto LABEL_36;
  }

  if ((v86 - 4) >= 2)
  {
    goto LABEL_24;
  }

LABEL_36:
  v74 = [v31 accountType];
  if (v74)
  {
    v75 = v74;
    v76 = [v74 identifier];

    if (v76)
    {
      v77 = v31;
      v78 = sub_253CD0968();
      v80 = v79;

      v81 = sub_253CD0968();
      if (v80)
      {
        if (v78 == v81 && v80 == v82)
        {
        }

        else
        {
          v83 = sub_253CD1118();

          if ((v83 & 1) == 0)
          {

            return;
          }
        }

        sub_253236248(v77);

        return;
      }

      v31 = v77;
    }

    else
    {
      sub_253CD0968();
    }

    return;
  }

  __break(1u);
}

id sub_253236248(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_253CD07E8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  if (*(v2 + OBJC_IVAR___HMDAccountChangeObserver_isHomePod) == 1)
  {
    sub_253211D58(ObjectType, &off_2864FB968);
    v12 = a1;
    v13 = sub_253CD07C8();
    v14 = sub_253CD0CB8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v12;
      *v16 = v12;
      v17 = v12;
      _os_log_impl(&dword_2531F8000, v13, v14, "IDSAccount change %@", v15, 0xCu);
      sub_2532365D8(v16);
      MEMORY[0x259C040E0](v16, -1, -1);
      MEMORY[0x259C040E0](v15, -1, -1);
    }

    (*(v6 + 8))(v11, v5);
    return [*(v2 + OBJC_IVAR___HMDAccountChangeObserver_notificationCenter) postNotificationName:@"HMDHomeManagerIDMSAccountUsernameDidUpdateNotification" object:0];
  }

  else
  {
    sub_253211D58(ObjectType, &off_2864FB968);
    v19 = sub_253CD07C8();
    v20 = sub_253CD0C88();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2531F8000, v19, v20, "Ignoring IDSAccount change on non-HomePod", v21, 2u);
      MEMORY[0x259C040E0](v21, -1, -1);
    }

    return (*(v6 + 8))(v9, v5);
  }
}

id sub_253236504(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2532365D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A2AC8, &qword_253D48890);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_253236640(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = type metadata accessor for Account.ChangeObserver();
  v9 = objc_allocWithZone(v8);
  swift_unknownObjectWeakInit();
  *&v9[OBJC_IVAR___HMDAccountChangeObserver_eventSubscriber] = a1;
  *&v9[OBJC_IVAR___HMDAccountChangeObserver_notificationCenter] = a4;
  v10 = a4;
  v11 = [a2 productClass] == 6;
  v9[OBJC_IVAR___HMDAccountChangeObserver_isHomePod] = v11;
  v12 = [a3 isSharedIPad];
  v9[OBJC_IVAR___HMDAccountChangeObserver_isSharediPad] = v12;
  v14.receiver = v9;
  v14.super_class = v8;
  return objc_msgSendSuper2(&v14, sel_init);
}

HMDCameraStreamManagerDataSource __swiftcall HMDCameraStreamManagerDataSource.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for HMDCameraStreamManagerDataSource()
{
  result = qword_27F5A36F8;
  if (!qword_27F5A36F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5A36F8);
  }

  return result;
}

id sub_253236874()
{
  result = [objc_allocWithZone(HMDRegistry) init];
  qword_281530EB8 = result;
  return result;
}

unint64_t type metadata accessor for HMDRegistry()
{
  result = qword_27F5A3700;
  if (!qword_27F5A3700)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5A3700);
  }

  return result;
}

id sub_253236AF8()
{
  if (qword_281531030 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_281531038);
  if (off_281531040)
  {
    v0 = off_281531040;
  }

  else
  {
    v0 = sub_25322D2BC(0x65446E6F6D656144, 0xED0000746C756166);
    off_281531040 = v0;
  }

  os_unfair_lock_unlock(&dword_281531038);
  os_unfair_lock_lock(v0 + 4);
  v1 = *(v0 + 3);
  v2 = v1;
  os_unfair_lock_unlock(v0 + 4);
  if (!v1)
  {
    v3 = *(v0 + 11);
    v4 = *(v0 + 12);
    __swift_project_boxed_opaque_existential_0(v0 + 8, v3);
    v2 = (*(v4 + 16))(v0, v3, v4);
  }

  return v2;
}

id sub_253236C18()
{
  if (qword_281531030 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_281531038);
  if (off_281531040)
  {
    v0 = off_281531040;
  }

  else
  {
    v0 = sub_25322D2BC(0x65446E6F6D656144, 0xED0000746C756166);
    off_281531040 = v0;
  }

  os_unfair_lock_unlock(&dword_281531038);
  os_unfair_lock_lock(v0 + 4);
  v1 = *(v0 + 4);
  v2 = v1;
  os_unfair_lock_unlock(v0 + 4);
  if (!v1)
  {
    v3 = *(v0 + 11);
    v4 = *(v0 + 12);
    __swift_project_boxed_opaque_existential_0(v0 + 8, v3);
    v2 = (*(v4 + 24))(v0, v3, v4);
  }

  return v2;
}

id sub_253236D38()
{
  if (qword_281531030 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_281531038);
  if (off_281531040)
  {
    v0 = off_281531040;
  }

  else
  {
    v0 = sub_25322D2BC(0x65446E6F6D656144, 0xED0000746C756166);
    off_281531040 = v0;
  }

  os_unfair_lock_unlock(&dword_281531038);
  os_unfair_lock_lock(v0 + 4);
  v1 = *(v0 + 5);
  v2 = v1;
  os_unfair_lock_unlock(v0 + 4);
  if (!v1)
  {
    v3 = *(v0 + 11);
    v4 = *(v0 + 12);
    __swift_project_boxed_opaque_existential_0(v0 + 8, v3);
    v2 = (*(v4 + 32))(v0, v3, v4);
  }

  return v2;
}

id sub_253236E58()
{
  if (qword_281531030 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_281531038);
  if (off_281531040)
  {
    v0 = off_281531040;
  }

  else
  {
    v0 = sub_25322D2BC(0x65446E6F6D656144, 0xED0000746C756166);
    off_281531040 = v0;
  }

  os_unfair_lock_unlock(&dword_281531038);
  os_unfair_lock_lock(v0 + 4);
  v1 = *(v0 + 6);
  v2 = v1;
  os_unfair_lock_unlock(v0 + 4);
  if (!v1)
  {
    v3 = *(v0 + 11);
    v4 = *(v0 + 12);
    __swift_project_boxed_opaque_existential_0(v0 + 8, v3);
    v2 = (*(v4 + 40))(v0, v3, v4);
  }

  return v2;
}

id sub_253237130(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v4 = [objc_opt_self() *a4];

  return v4;
}

unint64_t type metadata accessor for HMDHAPAccessoryDefaultDataSource()
{
  result = qword_27F5A3780;
  if (!qword_27F5A3780)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5A3780);
  }

  return result;
}

uint64_t sub_2532372B4()
{
  v1 = *v0;
  sub_253CD11C8();
  MEMORY[0x259C01140](v1);
  return sub_253CD11E8();
}

uint64_t sub_2532372FC()
{
  v1 = *v0;
  sub_253CD11C8();
  MEMORY[0x259C01140](v1);
  return sub_253CD11E8();
}

uint64_t sub_253237340()
{

  return swift_deallocClassInstance();
}

uint64_t _s9LifeCycleOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s9LifeCycleOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25323750C()
{
  result = qword_27F5A3790;
  if (!qword_27F5A3790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5A3790);
  }

  return result;
}

uint64_t sub_253237560()
{
  sub_2532375CC(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  return swift_deallocClassInstance();
}

id sub_253237670(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v27 = a6;
  v13 = sub_253CCFF58();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v17 = &v7[OBJC_IVAR____TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent_coreAnalyticsEventName];
  *v17 = 0xD00000000000003ALL;
  *(v17 + 1) = 0x8000000253D4D850;
  *&v7[OBJC_IVAR____TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent_coreAnalyticsEventOptions] = 0;
  swift_unknownObjectWeakAssign();
  *&v7[OBJC_IVAR____TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent_nodeId] = a2;
  *&v7[OBJC_IVAR____TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent_endpointId] = a3;
  *&v7[OBJC_IVAR____TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent_clusterId] = a4;
  *&v7[OBJC_IVAR____TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent_commandId] = a5;
  *&v7[OBJC_IVAR____TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent_source] = v27;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = [a1 uuid];
  sub_253CCFF38();

  v22 = sub_253CCFF18();
  (*(v14 + 8))(v16, v13);
  v23 = type metadata accessor for MatterAccessoryInvokeCommandLogEvent();
  v28.receiver = v7;
  v28.super_class = v23;
  v24 = objc_msgSendSuper2(&v28, sel_initWithHomeUUID_, v22);

  return v24;
}

unint64_t sub_2532379D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3070, &unk_253D48C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_253D48C40;
  *(inited + 32) = 0x644965646F6ELL;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  *(inited + 56) = 0x746E696F70646E65;
  *(inited + 64) = 0xEA00000000006449;
  v2 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent_endpointId);
  *(inited + 72) = v2;
  *(inited + 80) = 0x4972657473756C63;
  *(inited + 88) = 0xE900000000000064;
  v3 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent_clusterId);
  *(inited + 96) = v3;
  *(inited + 104) = 0x49646E616D6D6F63;
  *(inited + 112) = 0xE900000000000064;
  v4 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent_commandId);
  *(inited + 120) = v4;
  *(inited + 128) = 0x656372756F73;
  *(inited + 136) = 0xE600000000000000;
  v5 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent_source);
  v6 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v7 = v2;
  v8 = v3;
  v9 = v4;
  *(inited + 144) = [v6 initWithUnsignedInteger_];
  v10 = sub_253218704(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A37E0, &qword_253D49550);
  swift_arrayDestroy();
  return v10;
}

id sub_253237C9C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MatterAccessoryInvokeCommandLogEvent();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_253237D74(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void *sub_253237E20(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_253CD0ED8())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x259C00F30](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_253237F34(uint64_t a1, unint64_t *a2, void *a3)
{
  v6 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_253CD0E88();
    v9 = v8;
    v10 = sub_253CD0F28();
    v12 = v11;
    v13 = MEMORY[0x259C00E10](v7, v9, v10, v11);
    sub_25323FB84(v10, v12, 1);
    if (v13)
    {
LABEL_3:
      sub_25323FB84(v7, v9, v6 != 0);
      return 0;
    }
  }

  else
  {
    v7 = sub_253CD0E48();
    v9 = *(a1 + 36);
    if (v7 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_25323DF88(v7, v9, v6 != 0, a1, a2, a3);
  v16 = v15;
  sub_25323FB84(v7, v9, v6 != 0);
  return v16;
}

uint64_t sub_253238068(uint64_t a1)
{
  v2 = sub_253CD0E48();
  if (v2 == 1 << *(a1 + 32))
  {
    return 43;
  }

  v4 = *(a1 + 36);

  return sub_25323E1A0(v2, v4, 0, a1);
}

uint64_t sub_2532380E0()
{
  sub_253CD0FB8();
  v4 = type metadata accessor for HomeDeviceEntity(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A37F0, &unk_253D499C8);
  v1 = sub_253CD00F8();
  MEMORY[0x259C00940](v1);

  MEMORY[0x259C00940](0x203A6469202CLL, 0xE600000000000000);
  sub_253CCFF58();
  sub_25323D848(&qword_281531980, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v2 = sub_253CD10E8();
  MEMORY[0x259C00940](v2);

  MEMORY[0x259C00940](0x203A656D616E202CLL, 0xE800000000000000);
  MEMORY[0x259C00940](*(v0 + *(v4 + 24)), *(v0 + *(v4 + 24) + 8));
  MEMORY[0x259C00940](0x203A65707974202CLL, 0xE800000000000000);
  sub_253CD1058();
  return 0;
}

uint64_t sub_253238270(NSObject *a1, char *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v142 = a4;
  v154 = a3;
  v146 = a1;
  v147 = a2;
  v6 = sub_253CCFF58();
  v150 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v151 = &v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v145 = &v129 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v135 = &v129 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v134 = &v129 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v139 = &v129 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v144 = &v129 - v18;
  MEMORY[0x28223BE20](v17);
  v143 = &v129 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A37F8, &qword_253D499D8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v133 = &v129 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v136 = &v129 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v129 - v25;
  v157 = type metadata accessor for HomeDeviceEntity(0);
  v152 = *(v157 - 8);
  v27 = MEMORY[0x28223BE20](v157);
  v130 = &v129 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v131 = &v129 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v137 = &v129 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v138 = &v129 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v129 = &v129 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v39 = (&v129 - v38);
  v40 = MEMORY[0x28223BE20](v37);
  v42 = (&v129 - v41);
  v43 = MEMORY[0x28223BE20](v40);
  v132 = &v129 - v44;
  MEMORY[0x28223BE20](v43);
  v153 = &v129 - v45;
  v158 = MEMORY[0x277D84FA0];
  v46 = [v4 services];
  sub_253200644(0, &qword_27F5A2B00, off_27971A228);
  v47 = sub_253CD0A58();

  if (v47 >> 62)
  {
    goto LABEL_68;
  }

  v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v140 = v39;
  v141 = v42;
  v148 = v6;
  if (v48)
  {
    v49 = 0;
    v155 = v47 & 0xFFFFFFFFFFFFFF8;
    v156 = v47 & 0xC000000000000001;
    v42 = (v152 + 48);
    v50 = MEMORY[0x277D84F90];
    v51 = (v152 + 56);
    v149 = v5;
    v39 = v48;
    while (1)
    {
      if (v156)
      {
        v52 = MEMORY[0x259C00F30](v49, v47);
      }

      else
      {
        if (v49 >= *(v155 + 16))
        {
          goto LABEL_66;
        }

        v52 = *(v47 + 8 * v49 + 32);
      }

      v53 = v52;
      v6 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        v48 = sub_253CD0ED8();
        goto LABEL_3;
      }

      if ([v52 isHidden])
      {

        (*v51)(v26, 1, 1, v157);
      }

      else
      {
        sub_25323987C(v154, v5, v26);

        if ((*v42)(v26, 1, v157) != 1)
        {
          sub_25323FC90(v26, v153, type metadata accessor for HomeDeviceEntity);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v50 = sub_2532837F4(0, v50[2] + 1, 1, v50);
          }

          v55 = v50[2];
          v54 = v50[3];
          if (v55 >= v54 >> 1)
          {
            v50 = sub_2532837F4((v54 > 1), v55 + 1, 1, v50);
          }

          v50[2] = v55 + 1;
          sub_25323FC90(v153, v50 + ((*(v152 + 80) + 32) & ~*(v152 + 80)) + *(v152 + 72) * v55, type metadata accessor for HomeDeviceEntity);
          v5 = v149;
          goto LABEL_7;
        }
      }

      sub_253206054(v26, &qword_27F5A37F8, &qword_253D499D8);
LABEL_7:
      ++v49;
      if (v6 == v39)
      {
        goto LABEL_21;
      }
    }
  }

  v50 = MEMORY[0x277D84F90];
LABEL_21:

  sub_25323E1F0(v50);

  v56 = [v5 mediaProfile];
  v57 = v148;
  v59 = v140;
  v58 = v141;
  if (v56)
  {
    v60 = v56;
    v61 = v136;
    sub_25323B6C4(v146, v147, v5, v136);
    if ((*(v152 + 48))(v61, 1, v157) == 1)
    {

      sub_253206054(v61, &qword_27F5A37F8, &qword_253D499D8);
    }

    else
    {
      v62 = v61;
      v63 = v132;
      sub_25323FC90(v62, v132, type metadata accessor for HomeDeviceEntity);
      sub_2532222E0(v63, v59);
      sub_25328713C(v58, v59);

      sub_25323FB28(v58);
      sub_25323FB28(v63);
    }
  }

  v64 = [v5 cameraProfiles];
  sub_253200644(0, &qword_27F5A3800, off_27971A038);
  sub_25323FAB8(&unk_27F5A3C40, &qword_27F5A3800, off_27971A038);
  v65 = sub_253CD0BF8();

  if ((v65 & 0xC000000000000001) != 0)
  {
    v66 = sub_253CD0ED8();
  }

  else
  {
    v66 = *(v65 + 16);
  }

  if (v66)
  {
    v67 = [v5 cameraProfiles];
    v68 = sub_253CD0BF8();

    v69 = sub_253237F34(v68, &qword_27F5A3800, off_27971A038);

    if (v69)
    {
      v70 = v133;
      sub_25323C290(v146, v147, v5, v133);
      if ((*(v152 + 48))(v70, 1, v157) == 1)
      {

        sub_253206054(v70, &qword_27F5A37F8, &qword_253D499D8);
      }

      else
      {
        v71 = v70;
        v72 = v129;
        sub_25323FC90(v71, v129, type metadata accessor for HomeDeviceEntity);
        sub_2532222E0(v72, v59);
        sub_25328713C(v58, v59);

        sub_25323FB28(v58);
        sub_25323FB28(v72);
      }
    }
  }

  v73 = [v5 siriEndpointProfile];
  if (v73)
  {
    v74 = v73;
    v75 = [v5 uuid];
    sub_253CCFF38();

    v76 = [v74 uniqueIdentifier];
    sub_253CCFF38();

    sub_25323E2FC(&unk_2864F9368);

    v77 = *MEMORY[0x277CCF2A8];
    v78 = [v74 uniqueIdentifier];
    v79 = v139;
    sub_253CCFF38();

    v80 = sub_253CCFF18();
    v81 = *(v150 + 8);
    v81(v79, v57);
    v82 = hm_assistantIdentifier();

    if (v82)
    {
      v83 = sub_253CD0968();
      v85 = v84;
    }

    else
    {
      v83 = 0;
      v85 = 0;
    }

    v81(v143, v57);
    v86 = v157;
    v26 = v137;
    v87 = &v137[*(v157 + 20)];
    *v87 = v83;
    v87[1] = v85;
    (*(v150 + 32))(v26, v144, v57);
    v88 = &v26[*(v86 + 24)];
    v89 = v147;
    *v88 = v146;
    *(v88 + 1) = v89;
    v26[*(v86 + 28)] = 41;
    v90 = v138;
    sub_25323FC90(v26, v138, type metadata accessor for HomeDeviceEntity);
    sub_2532222E0(v90, v59);

    sub_25328713C(v58, v59);

    sub_25323FB28(v58);
    sub_25323FB28(v90);
  }

  v91 = [v5 lightProfiles];
  sub_253200644(0, &qword_27F5A3808, off_27971A178);
  sub_25323FAB8(&unk_27F5A3C30, &qword_27F5A3808, off_27971A178);
  v92 = sub_253CD0BF8();

  if ((v92 & 0xC000000000000001) != 0)
  {
    v93 = sub_253CD0ED8();
  }

  else
  {
    v93 = *(v92 + 16);
  }

  if (v93)
  {
    v94 = [v5 lightProfiles];
    v95 = sub_253CD0BF8();

    v96 = sub_253237F34(v95, &qword_27F5A3808, off_27971A178);

    if (v96)
    {
      if ([v96 isNaturalLightingSupported])
      {
        v97 = [v5 uuid];
        sub_253CCFF38();

        v98 = [v96 uniqueIdentifier];
        sub_253CCFF38();

        sub_25323E2FC(&unk_2864F9390);

        v99 = *MEMORY[0x277CCF2A8];
        v100 = [v96 uniqueIdentifier];
        v101 = v139;
        sub_253CCFF38();

        v102 = sub_253CCFF18();
        v103 = *(v150 + 8);
        v103(v101, v57);
        v104 = hm_assistantIdentifier();

        if (v104)
        {
          v105 = sub_253CD0968();
          v107 = v106;
        }

        else
        {
          v105 = 0;
          v107 = 0;
        }

        v103(v134, v57);
        v108 = v157;
        v26 = v130;
        v109 = &v130[*(v157 + 20)];
        *v109 = v105;
        v109[1] = v107;
        (*(v150 + 32))(v26, v135, v57);
        v110 = &v26[*(v108 + 24)];
        v111 = v147;
        *v110 = v146;
        *(v110 + 1) = v111;
        v26[*(v108 + 28)] = 17;
        v112 = v131;
        sub_25323FC90(v26, v131, type metadata accessor for HomeDeviceEntity);
        sub_2532222E0(v112, v59);

        sub_25328713C(v58, v59);

        sub_25323FB28(v58);
        sub_25323FB28(v112);
      }

      else
      {
      }
    }
  }

  v113 = [v5 bridge];
  if (v113)
  {

    v114 = [v5 identifiersForBridgedAccessories];
    sub_25323D848(&qword_281531988, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v6 = v57;
    v115 = sub_253CD0BF8();

    v116 = 0;
    v42 = 0;
    v5 = (v115 + 56);
    v117 = 1 << *(v115 + 32);
    v118 = -1;
    if (v117 < 64)
    {
      v118 = ~(-1 << v117);
    }

    v47 = v118 & *(v115 + 56);
    v119 = (v117 + 63) >> 6;
    v156 = v150 + 16;
    v157 = v115;
    v155 = v150 + 32;
    v39 = (v150 + 8);
    while (v47)
    {
LABEL_60:
      v121 = v150;
      v122 = v145;
      (*(v150 + 16))(v145, *(v157 + 48) + *(v150 + 72) * (__clz(__rbit64(v47)) | (v116 << 6)), v6);
      v123 = v151;
      (*(v121 + 32))(v151, v122, v6);
      v124 = [v154 accessories];
      sub_253200644(0, &qword_281530EA0, off_279719FE0);
      v125 = sub_253CD0A58();

      MEMORY[0x28223BE20](v126);
      *(&v129 - 2) = v123;
      v26 = sub_253237E20(sub_25323FB08, (&v129 - 4), v125);

      if (v26)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v127 = sub_253238270(v146, v147, v154, v142);
          sub_2532392CC(v127);
        }
      }

      v47 &= v47 - 1;
      v6 = v148;
      (*v39)(v151);
    }

    while (1)
    {
      v120 = v116 + 1;
      if (__OFADD__(v116, 1))
      {
        goto LABEL_67;
      }

      if (v120 >= v119)
      {

        return v158;
      }

      v47 = *(v5 + v120);
      ++v116;
      if (v47)
      {
        v116 = v120;
        goto LABEL_60;
      }
    }
  }

  return v158;
}

uint64_t sub_2532392CC(uint64_t a1)
{
  v2 = type metadata accessor for HomeDeviceEntity(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v20 - v8;
  result = MEMORY[0x28223BE20](v7);
  v12 = &v20 - v11;
  v13 = 0;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 56);
  for (i = (v14 + 63) >> 6; v16; result = sub_25323FB28(v9))
  {
    v18 = v13;
LABEL_9:
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    sub_2532222E0(*(a1 + 48) + *(v3 + 72) * (v19 | (v18 << 6)), v12);
    sub_25323FC90(v12, v6, type metadata accessor for HomeDeviceEntity);
    sub_25328713C(v9, v6);
  }

  while (1)
  {
    v18 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v18 >= i)
    {
    }

    v16 = *(a1 + 56 + 8 * v18);
    ++v13;
    if (v16)
    {
      v13 = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_253239490(NSObject *a1, char *a2)
{
  v3 = v2;
  v6 = sub_253CD07E8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A37F8, &qword_253D499D8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for HomeDeviceEntity(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v3 hasMediaProfile])
  {
    sub_253CD0968();
    sub_25323D5A8();
    sub_253CD07D8();
    v18 = v3;
    v19 = sub_253CD07C8();
    v20 = sub_253CD0C98();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v18;
      *v22 = v18;
      v23 = v18;
      _os_log_impl(&dword_2531F8000, v19, v20, "Unable to create HomeDeviceEntity for %@ as there is no media profile for it", v21, 0xCu);
      sub_253206054(v22, &qword_27F5A2AC8, &qword_253D48890);
      MEMORY[0x259C040E0](v22, -1, -1);
      MEMORY[0x259C040E0](v21, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    return MEMORY[0x277D84FA0];
  }

  v17 = [v3 mediaProfile];
  sub_25323B6C4(a1, a2, v3, v12);

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_253206054(v12, &qword_27F5A37F8, &qword_253D499D8);
    return MEMORY[0x277D84FA0];
  }

  sub_25323FC90(v12, v16, type metadata accessor for HomeDeviceEntity);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31F0, &qword_253D4B200);
  v25 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_253D48DA0;
  sub_2532222E0(v16, v26 + v25);
  v27 = sub_25323E4B0(v26);
  swift_setDeallocating();
  sub_25323FB28(v26 + v25);
  swift_deallocClassInstance();
  sub_25323FB28(v16);
  return v27;
}

uint64_t sub_25323987C@<X0>(void *a1@<X2>, void *a2@<X4>, uint64_t a3@<X8>)
{
  v4 = v3;
  v189 = a2;
  v7 = sub_253CCFF58();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v178 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v188 = &v178 - v13;
  MEMORY[0x28223BE20](v12);
  v191 = &v178 - v14;
  v15 = sub_253CD07E8();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v178 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v193 = &v178 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v190 = &v178 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v192 = &v178 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v178 - v26;
  v196 = v4;
  v28 = [v4 name];
  if (!v28)
  {
    goto LABEL_12;
  }

  v184 = a1;
  v185 = v11;
  v186 = v8;
  v29 = v28;
  v30 = sub_253CD0968();
  v32 = v31;

  v33 = HIBYTE(v32) & 0xF;
  v187 = v30;
  v194 = v32;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v33 = v30 & 0xFFFFFFFFFFFFLL;
  }

  if (!v33 || (v197 = [objc_opt_self() getSharedInstance]) == 0)
  {

LABEL_12:
    sub_253CD0968();
    v36 = type metadata accessor for HomeDeviceEntity(0);
    sub_25323D5A8();
    sub_253CD07D8();
    v50 = v196;
    v51 = sub_253CD07C8();
    v52 = sub_253CD0C98();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v53 = 138412290;
      *(v53 + 4) = v50;
      *v54 = v50;
      v55 = v50;
      _os_log_impl(&dword_2531F8000, v51, v52, "Service does not have a name. %@", v53, 0xCu);
      sub_253206054(v54, &qword_27F5A2AC8, &qword_253D48890);
      MEMORY[0x259C040E0](v54, -1, -1);
      MEMORY[0x259C040E0](v53, -1, -1);
    }

    (*(v16 + 8))(v19, v15);
    return (*(*(v36 - 8) + 56))(a3, 1, 1, v36);
  }

  v181 = v7;
  v182 = v15;
  v34 = [v196 type];
  if (!v34)
  {
    sub_253CD0968();
    v34 = sub_253CD0938();
  }

  v35 = [v197 shouldFilterServiceOfType_];

  v183 = v16;
  if (v35)
  {
    sub_253CD0968();
    v36 = type metadata accessor for HomeDeviceEntity(0);
    sub_25323D5A8();
    sub_253CD07D8();
    v37 = v196;
    v38 = v194;

    v39 = sub_253CD07C8();
    v40 = sub_253CD0C78();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v196 = swift_slowAlloc();
      v199[0] = v196;
      *v41 = 136315394;
      v42 = [v37 type];
      v43 = sub_253CD0968();
      v44 = a3;
      v46 = v45;

      v47 = sub_253277BA8(v43, v46, v199);
      a3 = v44;

      *(v41 + 4) = v47;
      *(v41 + 12) = 2080;
      v48 = sub_253277BA8(v187, v38, v199);

      *(v41 + 14) = v48;
      _os_log_impl(&dword_2531F8000, v39, v40, "Siri does not support %s. Ignoring %s.", v41, 0x16u);
      v49 = v196;
      swift_arrayDestroy();
      MEMORY[0x259C040E0](v49, -1, -1);
      MEMORY[0x259C040E0](v41, -1, -1);
    }

    else
    {
    }

    (*(v183 + 8))(v27, v182);
    return (*(*(v36 - 8) + 56))(a3, 1, 1, v36);
  }

  v180 = a3;
  v57 = [v196 characteristics];
  v179 = sub_253200644(0, &qword_27F5A3818, off_27971A070);
  v58 = sub_253CD0A58();

  v199[0] = MEMORY[0x277D84F90];
  if (v58 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_253CD0ED8())
  {
    v60 = 0;
    v16 = v58 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v58 & 0xC000000000000001) != 0)
      {
        v61 = MEMORY[0x259C00F30](v60, v58);
      }

      else
      {
        if (v60 >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v61 = *(v58 + 8 * v60 + 32);
      }

      v62 = v61;
      v63 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        break;
      }

      v198 = v61;
      if (sub_25323AD74(&v198, v197))
      {
        sub_253CD1008();
        sub_253CD1038();
        sub_253CD1048();
        sub_253CD1018();
      }

      else
      {
      }

      ++v60;
      if (v63 == i)
      {
        v64 = v199[0];
        v16 = v183;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  v64 = MEMORY[0x277D84F90];
LABEL_35:

  if (v64 < 0 || (v64 & 0x4000000000000000) != 0)
  {
    goto LABEL_94;
  }

  for (j = *(v64 + 16); j; j = sub_253CD0ED8())
  {
    v199[0] = MEMORY[0x277D84FA0];
    if (qword_27F5A2458 != -1)
    {
      swift_once();
    }

    v65 = qword_27F5B7868;
    v66 = [v196 serviceType];
    v67 = sub_253CD0968();
    v69 = v68;

    if (*(v65 + 16))
    {
      v70 = sub_253217D84(v67, v69);
      v72 = v71;

      if (v72)
      {
        sub_253287638(&v198, *(*(v65 + 56) + v70));
      }
    }

    else
    {
    }

    v73 = [v196 serviceType];
    if (!v73)
    {
      sub_253CD0968();
      v73 = sub_253CD0938();
    }

    v74 = [v197 getServiceTypeAlias_];

    if (v74)
    {
      v75 = sub_253CD0968();
      v77 = v76;

      if (*(v65 + 16))
      {
        v78 = sub_253217D84(v75, v77);
        v80 = v79;

        if (v80)
        {
          sub_253287638(&v198, *(*(v65 + 56) + v78));
        }
      }

      else
      {
      }
    }

    v81 = [v196 associatedServiceType];
    if (v81)
    {
      v82 = v81;
      v83 = sub_253CD0968();
      v85 = v84;

      if (*(v65 + 16))
      {
        v86 = sub_253217D84(v83, v85);
        v88 = v87;

        if (v88)
        {
          sub_253287638(&v198, *(*(v65 + 56) + v86));
        }
      }

      else
      {
      }
    }

    v89 = 0;
    v16 = v64 & 0xC000000000000001;
    v90 = MEMORY[0x277D84F90];
LABEL_57:
    v192 = v90;
    v91 = v89;
    while (1)
    {
      if (v16)
      {
        v92 = MEMORY[0x259C00F30](v91, v64);
      }

      else
      {
        if (v91 >= *(v64 + 16))
        {
          goto LABEL_93;
        }

        v92 = *(v64 + 8 * v91 + 32);
      }

      v93 = v92;
      v89 = v91 + 1;
      if (__OFADD__(v91, 1))
      {
        break;
      }

      if (qword_27F5A2448 != -1)
      {
        swift_once();
      }

      v94 = qword_27F5B7858;
      v95 = [v93 type];
      v96 = sub_253CD0968();
      v98 = v97;

      if (*(v94 + 16))
      {
        v99 = sub_253217D84(v96, v98);
        v101 = v100;

        if (v101)
        {
          v102 = *(*(v94 + 56) + v99);

          v90 = v192;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v90 = sub_253283844(0, *(v90 + 2) + 1, 1, v90);
          }

          v105 = *(v90 + 2);
          v104 = *(v90 + 3);
          if (v105 >= v104 >> 1)
          {
            v90 = sub_253283844((v104 > 1), v105 + 1, 1, v90);
          }

          *(v90 + 2) = v105 + 1;
          v90[v105 + 32] = v102;
          if (v89 == j)
          {
LABEL_77:
            v106 = v199[0];

            v108 = sub_253238068(v107);

            if (v108 == 43)
            {

              v109 = v193;
              goto LABEL_83;
            }

            v109 = v193;
            if (*(v90 + 2))
            {
              LODWORD(v193) = v108;
              j = v106;

              sub_25328EDFC(v90);

              sub_253CD0968();
              v110 = type metadata accessor for HomeDeviceEntity(0);
              sub_25323D5A8();
              v111 = v190;
              sub_253CD07D8();
              v112 = v196;
              v113 = v189;

              v114 = sub_253CD07C8();
              v115 = sub_253CD0C88();

              if (os_log_type_enabled(v114, v115))
              {
                v116 = swift_slowAlloc();
                v117 = swift_slowAlloc();
                v192 = swift_slowAlloc();
                v198 = v192;
                *v116 = 138413314;
                v118 = [v113 category];
                *(v116 + 4) = v118;
                *v117 = v118;
                *(v116 + 12) = 2080;
                sub_25323FB90();
                v196 = v113;
                LODWORD(v189) = v115;

                v119 = sub_253CD0C08();
                v121 = v120;

                v122 = sub_253277BA8(v119, v121, &v198);

                *(v116 + 14) = v122;
                *(v116 + 22) = 2080;
                sub_25323FBE4();
                v123 = sub_253CD0C08();
                v125 = v124;

                v126 = sub_253277BA8(v123, v125, &v198);

                *(v116 + 24) = v126;
                *(v116 + 32) = 2080;
                v127 = [v112 &selRef_shouldEncodeNFCReaderKey];
                v128 = v191;
                sub_253CCFF38();

                sub_25323D848(&qword_281531980, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                v129 = v181;
                v130 = sub_253CD10E8();
                v132 = v131;
                (*(v186 + 8))(v128, v129);
                v133 = sub_253277BA8(v130, v132, &v198);

                *(v116 + 34) = v133;
                v113 = v196;
                *(v116 + 42) = 2112;
                *(v116 + 44) = v112;
                v117[1] = v112;
                v134 = v112;
                _os_log_impl(&dword_2531F8000, v114, v189, "Found %@, %s and %s for %s, %@", v116, 0x34u);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A2AC8, &qword_253D48890);
                swift_arrayDestroy();
                MEMORY[0x259C040E0](v117, -1, -1);
                v135 = v192;
                swift_arrayDestroy();
                MEMORY[0x259C040E0](v135, -1, -1);
                MEMORY[0x259C040E0](v116, -1, -1);

                (*(v183 + 8))(v190, v182);
              }

              else
              {

                (*(v183 + 8))(v111, v182);
              }

              v158 = v180;
              v159 = v188;
              v160 = [v113 uuid];
              sub_253CCFF38();

              v161 = [v112 spiClientIdentifier];
              sub_253CCFF38();

              v162 = [v112 urlString];
              v163 = v194;
              if (v162)
              {
                v164 = v162;
                v165 = sub_253CD0968();
                v167 = v166;
              }

              else
              {
                v165 = 0;
                v167 = 0;
              }

              v168 = sub_25323B19C(v184);
              sub_25328EE98(v168);

              v169 = v186;
              v170 = v181;
              (*(v186 + 8))(v159, v181);
              v171 = (v158 + v110[5]);
              *v171 = v165;
              v171[1] = v167;
              (*(v169 + 32))(v158, v185, v170);
              v172 = (v158 + v110[6]);
              *v172 = v187;
              v172[1] = v163;
              *(v158 + v110[7]) = v193;
              (*(*(v110 - 1) + 56))(v158, 0, 1, v110);
            }

            else
            {

LABEL_83:

              sub_253CD0968();
              v136 = type metadata accessor for HomeDeviceEntity(0);
              sub_25323D5A8();
              sub_253CD07D8();
              v137 = v196;

              v138 = sub_253CD07C8();
              v139 = sub_253CD0C98();

              if (!os_log_type_enabled(v138, v139))
              {

                (*(v183 + 8))(v109, v182);
                (*(*(v136 - 8) + 56))(v180, 1, 1, v136);
              }

              v140 = swift_slowAlloc();
              v196 = swift_slowAlloc();
              v198 = v196;
              *v140 = 136315650;
              v141 = [v137 spiClientIdentifier];
              v142 = v191;
              sub_253CCFF38();

              sub_25323D848(&qword_281531980, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
              j = v106;
              v143 = v181;
              v144 = sub_253CD10E8();
              v146 = v145;
              (*(v186 + 8))(v142, v143);
              v147 = sub_253277BA8(v144, v146, &v198);

              *(v140 + 4) = v147;
              *(v140 + 12) = 2080;
              v148 = [v137 serviceType];
              v149 = sub_253CD0968();
              v151 = v150;

              v152 = sub_253277BA8(v149, v151, &v198);

              *(v140 + 14) = v152;
              *(v140 + 22) = 2080;
              v153 = MEMORY[0x259C009D0](v64, v179);
              v155 = v154;

              v156 = sub_253277BA8(v153, v155, &v198);

              *(v140 + 24) = v156;
              _os_log_impl(&dword_2531F8000, v138, v139, "Could not figure out device type or capabilities for %s, %s, %s", v140, 0x20u);
              v157 = v196;
              swift_arrayDestroy();
              MEMORY[0x259C040E0](v157, -1, -1);
              MEMORY[0x259C040E0](v140, -1, -1);

              (*(v183 + 8))(v193, v182);
              (*(*(v136 - 8) + 56))(v180, 1, 1, v136);
            }
          }

          goto LABEL_57;
        }
      }

      else
      {
      }

      ++v91;
      if (v89 == j)
      {
        v90 = v192;
        goto LABEL_77;
      }
    }

    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    ;
  }

  sub_253CD0968();
  v173 = type metadata accessor for HomeDeviceEntity(0);
  sub_25323D5A8();
  v174 = v192;
  sub_253CD07D8();
  v175 = sub_253CD07C8();
  v176 = sub_253CD0C88();
  if (os_log_type_enabled(v175, v176))
  {
    v177 = swift_slowAlloc();
    *v177 = 0;
    _os_log_impl(&dword_2531F8000, v175, v176, "Only consider the services that have one or more Siri controllable attributes", v177, 2u);
    MEMORY[0x259C040E0](v177, -1, -1);
  }

  (*(v16 + 8))(v174, v182);
  return (*(*(v173 - 8) + 56))(v180, 1, 1, v173);
}

uint64_t sub_25323AD74(id *a1, void *a2)
{
  v4 = sub_253CD07E8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  v11 = *a1;
  v12 = [*a1 type];
  if (!v12)
  {
    sub_253CD0968();
    v12 = sub_253CD0938();
  }

  v13 = sub_253CD0968();
  v15 = v14;
  v16 = [a2 shouldFilterCharacteristicOfTypeFromApp_];

  if (v16)
  {

    sub_253CD0968();
    type metadata accessor for HomeDeviceEntity(0);
    sub_25323D5A8();
    sub_253CD07D8();
    v17 = v11;
    v18 = sub_253CD07C8();
    v19 = sub_253CD0C88();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v17;
      *v21 = v17;
      v22 = v17;
      _os_log_impl(&dword_2531F8000, v18, v19, "Skipping %@ as it is not controllable by Siri", v20, 0xCu);
      sub_253206054(v21, &qword_27F5A2AC8, &qword_253D48890);
      MEMORY[0x259C040E0](v21, -1, -1);
      MEMORY[0x259C040E0](v20, -1, -1);
    }

    (*(v5 + 8))(v10, v4);
  }

  else
  {
    if (qword_27F5A2448 != -1)
    {
      swift_once();
    }

    if (*(qword_27F5B7858 + 16))
    {
      sub_253217D84(v13, v15);
      if (v23)
      {

        return 1;
      }
    }

    sub_253CD0968();
    type metadata accessor for HomeDeviceEntity(0);
    sub_25323D5A8();
    sub_253CD07D8();

    v25 = sub_253CD07C8();
    v26 = sub_253CD0C88();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v31 = v28;
      *v27 = 136315138;
      v29 = sub_253277BA8(v13, v15, &v31);

      *(v27 + 4) = v29;
      _os_log_impl(&dword_2531F8000, v25, v26, "Did not find mapping of %s to a HomeCapability", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x259C040E0](v28, -1, -1);
      MEMORY[0x259C040E0](v27, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v8, v4);
  }

  return 0;
}

void *sub_25323B19C(void *a1)
{
  v55 = sub_253CCFF58();
  v2 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v54 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for HomeGroupEntity(0);
  v47 = *(v4 - 8);
  v48 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v46 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v5);
  v45 = &v45 - v8;
  MEMORY[0x28223BE20](v7);
  v53 = &v45 - v9;
  v10 = [a1 serviceGroups];
  sub_253200644(0, &qword_281530E68, off_27971A230);
  v11 = sub_253CD0A58();

  if (v11 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_253CD0ED8())
  {
    v13 = 0;
    v51 = v11 & 0xFFFFFFFFFFFFFF8;
    v52 = v11 & 0xC000000000000001;
    v49 = v2 + 1;
    v57 = MEMORY[0x277D84F90];
    v50 = i;
    while (1)
    {
      if (v52)
      {
        v15 = MEMORY[0x259C00F30](v13, v11);
      }

      else
      {
        if (v13 >= *(v51 + 16))
        {
          goto LABEL_21;
        }

        v15 = *(v11 + 8 * v13 + 32);
      }

      v2 = v15;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v17 = v11;
      v18 = [v15 serviceUUIDs];
      v19 = sub_253CD0A58();

      v20 = [v56 uuid];
      v21 = v54;
      sub_253CCFF38();

      v22 = sub_253CCFF08();
      v24 = v23;
      v25 = (*v49)(v21, v55);
      v58[0] = v22;
      v58[1] = v24;
      MEMORY[0x28223BE20](v25);
      *(&v45 - 2) = v58;
      LOBYTE(v22) = sub_253237D74(sub_25323FC38, (&v45 - 4), v19);

      if (v22)
      {
        v26 = [v2 urlString];
        if (v26)
        {
          v27 = v26;
          v28 = sub_253CD0968();
          v30 = v29;
        }

        else
        {
          v28 = 0;
          v30 = 0;
        }

        v31 = v46;
        *v46 = v28;
        v31[1] = v30;
        v32 = [v2 spiClientIdentifier];
        v33 = v48;
        sub_253CCFF38();

        v34 = [v2 name];
        v35 = sub_253CD0968();
        v37 = v36;

        v38 = (v31 + *(v33 + 24));
        *v38 = v35;
        v38[1] = v37;
        v39 = v31;
        v40 = v45;
        sub_25323FC90(v39, v45, type metadata accessor for HomeGroupEntity);
        sub_25323FC90(v40, v53, type metadata accessor for HomeGroupEntity);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = sub_25328381C(0, v57[2] + 1, 1, v57);
        }

        v11 = v17;
        v42 = v57[2];
        v41 = v57[3];
        v2 = (v42 + 1);
        v14 = v50;
        if (v42 >= v41 >> 1)
        {
          v57 = sub_25328381C((v41 > 1), v42 + 1, 1, v57);
        }

        v43 = v57;
        v57[2] = v2;
        sub_25323FC90(v53, v43 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v42, type metadata accessor for HomeGroupEntity);
      }

      else
      {

        v11 = v17;
        v14 = v50;
      }

      ++v13;
      if (v16 == v14)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v57 = MEMORY[0x277D84F90];
LABEL_24:

  return v57;
}

uint64_t sub_25323B6C4@<X0>(NSObject *a1@<X0>, char *a2@<X1>, void *a3@<X4>, uint64_t a4@<X8>)
{
  v5 = v4;
  v98 = a1;
  v99 = a2;
  v108 = a4;
  ObjectType = swift_getObjectType();
  v7 = sub_253CD07E8();
  v8 = *(v7 - 8);
  v106 = v7;
  v107 = v8;
  v9 = MEMORY[0x28223BE20](v7);
  v104 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v95 = &v94 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = (&v94 - v13);
  v15 = sub_253CCFF58();
  v101 = *(v15 - 8);
  v102 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v97 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v94 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v94 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A37F8, &qword_253D499D8);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v94 - v24;
  v26 = [a3 category];
  v27 = [v26 categoryType];

  v28 = sub_253CD0968();
  v30 = v29;

  v31 = [v5 uniqueIdentifier];
  sub_253CCFF38();

  v32 = [a3 spiClientIdentifier];
  v103 = v20;
  sub_253CCFF38();

  v33 = [v5 urlString];
  if (v33)
  {
    v34 = v33;
    v96 = sub_253CD0968();
    v36 = v35;
  }

  else
  {
    v96 = 0;
    v36 = 0;
  }

  if (qword_27F5A2450 != -1)
  {
    swift_once();
  }

  v105 = v25;
  v37 = qword_27F5B7860;
  if (!*(qword_27F5B7860 + 16) || (v38 = sub_253217D84(v28, v30), (v39 & 1) == 0))
  {

    sub_253CD0968();
    v43 = type metadata accessor for HomeDeviceEntity(0);
    sub_25323D5A8();
    sub_253CD07D8();

    v44 = sub_253CD07C8();
    v45 = sub_253CD0C98();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v109 = v47;
      *v46 = 136315138;
      v48 = sub_253277BA8(v28, v30, &v109);
      v98 = v14;
      v99 = v22;
      v50 = v101;
      v49 = v102;
      v51 = v5;
      v52 = v48;

      *(v46 + 4) = v52;
      v5 = v51;
      _os_log_impl(&dword_2531F8000, v44, v45, "Unable to map accessory category %s to a device type.", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      v53 = v106;
      MEMORY[0x259C040E0](v47, -1, -1);
      MEMORY[0x259C040E0](v46, -1, -1);

      (*(v107 + 8))(v98, v53);
LABEL_14:
      v54 = *(v50 + 8);
      v54(v103, v49);
      v54(v99, v49);
LABEL_17:
      v57 = v105;
      (*(*(v43 - 1) + 56))(v105, 1, 1, v43);
      goto LABEL_21;
    }

    (*(v107 + 8))(v14, v106);
LABEL_16:
    v55 = v102;
    v56 = *(v101 + 8);
    v56(v103, v102);
    v56(v22, v55);
    goto LABEL_17;
  }

  v40 = *(*(v37 + 56) + v38);
  if (v28 != sub_253CD0968() || v30 != v41)
  {
    v58 = sub_253CD1118();

    if (v58)
    {
      v42 = &unk_2864F9228;
      goto LABEL_20;
    }

    if (v28 == sub_253CD0968() && v30 == v76)
    {
      v42 = &unk_2864F9250;
      goto LABEL_11;
    }

    v77 = sub_253CD1118();

    if (v77)
    {
      v42 = &unk_2864F9250;
      goto LABEL_20;
    }

    if (v28 == sub_253CD0968() && v30 == v78)
    {
LABEL_34:
      v42 = &unk_2864F9278;
      goto LABEL_11;
    }

    v79 = sub_253CD1118();

    if (v79)
    {
      goto LABEL_36;
    }

    if (v28 == sub_253CD0968() && v30 == v80)
    {
      goto LABEL_34;
    }

    v81 = sub_253CD1118();

    if (v81)
    {
LABEL_36:
      v42 = &unk_2864F9278;
      goto LABEL_20;
    }

    if (v28 == sub_253CD0968() && v30 == v82)
    {
      v42 = &unk_2864F92A0;
      goto LABEL_11;
    }

    v83 = sub_253CD1118();

    if (v83)
    {
      v42 = &unk_2864F92A0;
      goto LABEL_20;
    }

    sub_253CD0968();
    v43 = type metadata accessor for HomeDeviceEntity(0);
    sub_25323D5A8();
    v84 = v95;
    sub_253CD07D8();

    v85 = sub_253CD07C8();
    v86 = sub_253CD0C98();

    v98 = v85;
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v109 = v88;
      *v87 = 136315138;
      v89 = sub_253277BA8(v28, v30, &v109);
      v99 = v22;
      v50 = v101;
      v49 = v102;
      v90 = v5;
      v91 = v89;

      *(v87 + 4) = v91;
      v5 = v90;
      v92 = v98;
      _os_log_impl(&dword_2531F8000, v98, v86, "Please add support for %s to HomeDeviceEntity.", v87, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v88);
      v93 = v106;
      MEMORY[0x259C040E0](v88, -1, -1);
      MEMORY[0x259C040E0](v87, -1, -1);

      (*(v107 + 8))(v95, v93);
      goto LABEL_14;
    }

    (*(v107 + 8))(v84, v106);
    goto LABEL_16;
  }

  v42 = &unk_2864F9228;
LABEL_11:

LABEL_20:

  sub_25323E2FC(v42);

  v60 = v101;
  v59 = v102;
  v61 = v97;
  (*(v101 + 16))(v97, v22, v102);
  v62 = *(v60 + 8);
  v62(v103, v59);
  v62(v22, v59);
  v43 = type metadata accessor for HomeDeviceEntity(0);
  v63 = v105;
  v64 = &v105[v43[5]];
  *v64 = v96;
  v64[1] = v36;
  (*(v60 + 32))(v63, v61, v59);
  v65 = (v63 + v43[6]);
  v66 = v99;
  *v65 = v98;
  v65[1] = v66;
  *(v63 + v43[7]) = v40;
  v57 = v63;
  (*(*(v43 - 1) + 56))(v63, 0, 1, v43);

LABEL_21:
  type metadata accessor for HomeDeviceEntity(0);
  v67 = *(v43 - 1);
  if ((*(v67 + 48))(v57, 1, v43) == 1)
  {
    sub_253206054(v57, &qword_27F5A37F8, &qword_253D499D8);
    sub_253CD0C48();
    v68 = v5;
    v69 = sub_253CD07C8();
    v70 = sub_253CD0C98();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *v71 = 138412290;
      *(v71 + 4) = v68;
      *v72 = v68;
      v73 = v68;
      _os_log_impl(&dword_2531F8000, v69, v70, "Unable to create HomeDeviceEntity for %@", v71, 0xCu);
      sub_253206054(v72, &qword_27F5A2AC8, &qword_253D48890);
      MEMORY[0x259C040E0](v72, -1, -1);
      MEMORY[0x259C040E0](v71, -1, -1);
    }

    (*(v107 + 8))(v104, v106);
    v74 = 1;
  }

  else
  {
    sub_25323FC90(v57, v108, type metadata accessor for HomeDeviceEntity);
    v74 = 0;
  }

  return (*(v67 + 56))(v108, v74, 1, v43);
}

uint64_t sub_25323C290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X4>, uint64_t a4@<X8>)
{
  v5 = v4;
  v88 = a1;
  v89 = a2;
  v98 = a4;
  ObjectType = swift_getObjectType();
  v7 = sub_253CD07E8();
  v96 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v95 = v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v85[0] = v85 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = v85 - v12;
  v14 = sub_253CCFF58();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v87 = v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v85 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = v85 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A37F8, &qword_253D499D8);
  MEMORY[0x28223BE20](v23 - 8);
  v94 = v85 - v24;
  v85[1] = *MEMORY[0x277CCE8B8];
  v97 = sub_253CD0968();
  v26 = v25;
  v27 = [v5 uniqueIdentifier];
  v93 = v22;
  v28 = v20;
  sub_253CCFF38();

  v29 = [a3 spiClientIdentifier];
  sub_253CCFF38();

  v92 = v5;
  v30 = [v5 urlString];
  if (v30)
  {
    v31 = v30;
    v86 = sub_253CD0968();
    v33 = v32;
  }

  else
  {
    v86 = 0;
    v33 = 0;
  }

  v34 = v26;
  v35 = v97;
  if (qword_27F5A2450 != -1)
  {
    swift_once();
  }

  v36 = qword_27F5B7860;
  if (!*(qword_27F5B7860 + 16) || (v37 = sub_253217D84(v35, v26), (v38 & 1) == 0))
  {

    sub_253CD0968();
    v42 = type metadata accessor for HomeDeviceEntity(0);
    sub_25323D5A8();
    sub_253CD07D8();

    v43 = sub_253CD07C8();
    v44 = sub_253CD0C98();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v90 = v7;
      v47 = v46;
      v99 = v46;
      *v45 = 136315138;
      v48 = sub_253277BA8(v97, v34, &v99);
      v97 = v28;
      v49 = v48;

      *(v45 + 4) = v49;
      _os_log_impl(&dword_2531F8000, v43, v44, "Unable to map accessory category %s to a device type.", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      v50 = v47;
      v7 = v90;
      MEMORY[0x259C040E0](v50, -1, -1);
      MEMORY[0x259C040E0](v45, -1, -1);

      (*(v96 + 8))(v13, v7);
      v51 = *(v15 + 8);
      v51(v97, v14);
LABEL_16:
      v51(v93, v14);
      v52 = v94;
      (*(*(v42 - 1) + 56))(v94, 1, 1, v42);
      goto LABEL_20;
    }

    (*(v96 + 8))(v13, v7);
LABEL_15:
    v51 = *(v15 + 8);
    v51(v28, v14);
    goto LABEL_16;
  }

  v90 = v7;
  v39 = *(*(v36 + 56) + v37);
  if (v35 != sub_253CD0968() || v26 != v40)
  {
    v53 = sub_253CD1118();

    if (v53)
    {
      v41 = &unk_2864F92C8;
      goto LABEL_19;
    }

    if (v35 == sub_253CD0968() && v26 == v71)
    {
      v41 = &unk_2864F92F0;
      goto LABEL_11;
    }

    v72 = sub_253CD1118();

    if (v72)
    {
      v41 = &unk_2864F92F0;
      goto LABEL_19;
    }

    if (v35 == sub_253CD0968() && v26 == v73)
    {
LABEL_33:
      v41 = &unk_2864F9318;
      goto LABEL_11;
    }

    v74 = sub_253CD1118();

    if (v74)
    {
      goto LABEL_35;
    }

    if (v35 == sub_253CD0968() && v26 == v75)
    {
      goto LABEL_33;
    }

    v76 = sub_253CD1118();

    if (v76)
    {
LABEL_35:
      v41 = &unk_2864F9318;
      goto LABEL_19;
    }

    if (v35 == sub_253CD0968() && v26 == v77)
    {
      v41 = &unk_2864F9340;
      goto LABEL_11;
    }

    v78 = sub_253CD1118();

    if (v78)
    {
      v41 = &unk_2864F9340;
      goto LABEL_19;
    }

    sub_253CD0968();
    v42 = type metadata accessor for HomeDeviceEntity(0);
    sub_25323D5A8();
    v79 = v85[0];
    sub_253CD07D8();

    v80 = sub_253CD07C8();
    v81 = sub_253CD0C98();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v99 = v83;
      *v82 = 136315138;
      v84 = sub_253277BA8(v97, v34, &v99);

      *(v82 + 4) = v84;
      _os_log_impl(&dword_2531F8000, v80, v81, "Please add support for %s to HomeDeviceEntity.", v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v83);
      MEMORY[0x259C040E0](v83, -1, -1);
      MEMORY[0x259C040E0](v82, -1, -1);
    }

    else
    {
    }

    v7 = v90;
    (*(v96 + 8))(v79, v90);
    goto LABEL_15;
  }

  v41 = &unk_2864F92C8;
LABEL_11:

LABEL_19:

  sub_25323E2FC(v41);

  v54 = v87;
  v55 = v93;
  (*(v15 + 16))(v87, v93, v14);
  v56 = *(v15 + 8);
  v56(v28, v14);
  v56(v55, v14);
  v42 = type metadata accessor for HomeDeviceEntity(0);
  v52 = v94;
  v57 = &v94[v42[5]];
  *v57 = v86;
  v57[1] = v33;
  (*(v15 + 32))(v52, v54, v14);
  v58 = (v52 + v42[6]);
  v59 = v89;
  *v58 = v88;
  v58[1] = v59;
  *(v52 + v42[7]) = v39;
  (*(*(v42 - 1) + 56))(v52, 0, 1, v42);

  v7 = v90;
LABEL_20:
  type metadata accessor for HomeDeviceEntity(0);
  v60 = *(v42 - 1);
  if ((*(v60 + 48))(v52, 1, v42) == 1)
  {
    sub_253206054(v52, &qword_27F5A37F8, &qword_253D499D8);
    sub_253CD0C48();
    v61 = v92;
    v62 = sub_253CD07C8();
    v63 = sub_253CD0C98();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = v7;
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *v65 = 138412290;
      *(v65 + 4) = v61;
      *v66 = v61;
      v67 = v61;
      _os_log_impl(&dword_2531F8000, v62, v63, "Unable to create HomeDeviceEntity for %@", v65, 0xCu);
      sub_253206054(v66, &qword_27F5A2AC8, &qword_253D48890);
      MEMORY[0x259C040E0](v66, -1, -1);
      v68 = v65;
      v7 = v64;
      MEMORY[0x259C040E0](v68, -1, -1);
    }

    (*(v96 + 8))(v95, v7);
    v69 = 1;
  }

  else
  {
    sub_25323FC90(v52, v98, type metadata accessor for HomeDeviceEntity);
    v69 = 0;
  }

  return (*(v60 + 56))(v98, v69, 1, v42);
}

uint64_t sub_25323CDBC(id *a1, uint64_t a2)
{
  v3 = sub_253CCFF58();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uuid];
  sub_253CCFF38();

  v8 = sub_253CCFF28();
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

char *sub_25323CEC8()
{
  v1 = [v0 accessoryProfiles];
  if (v1)
  {
    v2 = v1;
    sub_253200644(0, &qword_27F5A2AF8, off_279719FE8);
    v3 = sub_253CD0A58();

    if (v3 >> 62)
    {
LABEL_23:
      v4 = sub_253CD0ED8();
      if (v4)
      {
LABEL_4:
        v5 = 0;
        v6 = MEMORY[0x277D84F90];
        v7 = &selRef_localizedMessageForSignificantEvents_cameraAccessory_;
        do
        {
          v8 = v5;
          while (1)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v9 = MEMORY[0x259C00F30](v8, v3);
            }

            else
            {
              if (v8 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_22;
              }

              v9 = *(v3 + 8 * v8 + 32);
            }

            v10 = v9;
            v5 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              __break(1u);
LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

            objc_opt_self();
            v11 = swift_dynamicCastObjCClass();
            if (v11)
            {
              break;
            }

            ++v8;
            if (v5 == v4)
            {
              goto LABEL_25;
            }
          }

          v12 = [v11 v7[369]];
          v13 = sub_253CD0968();
          v19 = v14;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_2532836C0(0, *(v6 + 2) + 1, 1, v6);
          }

          v16 = *(v6 + 2);
          v15 = *(v6 + 3);
          if (v16 >= v15 >> 1)
          {
            v6 = sub_2532836C0((v15 > 1), v16 + 1, 1, v6);
          }

          *(v6 + 2) = v16 + 1;
          v17 = &v6[16 * v16];
          *(v17 + 4) = v13;
          *(v17 + 5) = v19;
          v7 = &selRef_localizedMessageForSignificantEvents_cameraAccessory_;
        }

        while (v5 != v4);
        goto LABEL_25;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_4;
      }
    }

    v6 = MEMORY[0x277D84F90];
LABEL_25:

    return v6;
  }

  return MEMORY[0x277D84F90];
}

id sub_25323D0CC(void *a1, void *a2)
{
  v4 = sub_253CCFF58();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v27 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  result = [a2 mediaGroupsAggregateConsumer];
  if (result)
  {
    v15 = result;
    v16 = [a1 audioGroupIdentifier];
    if (v16)
    {
      v17 = v16;
      sub_253CCFF38();

      (*(v5 + 32))(v13, v11, v4);
      v18 = [a1 parentIdentifier];
      sub_253CCFF38();

      LOBYTE(v18) = sub_253CCFF28();
      v19 = *(v5 + 8);
      v19(v8, v4);
      if ((v18 & 1) == 0)
      {
        v20 = sub_253CCFF18();
        v21 = [v15 groupWithIdentifier_];

        if (v21)
        {
          v22 = sub_25323D3CC(v21, a2);

          v19(v13, v4);
          return v22;
        }

        v23 = sub_253CCFF18();
        v24 = [v15 destinationControllerDataWithIdentifier_];

        if (v24)
        {
          v25 = [v24 identifier];
          sub_253CCFF38();

          v26 = sub_253CCFF08();
          v19(v8, v4);
          v19(v13, v4);
          return v26;
        }
      }

      v19(v13, v4);
    }

    return 0;
  }

  return result;
}

uint64_t sub_25323D3CC(void *a1, void *a2)
{
  v4 = sub_253CCFF58();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a2 mediaGroupsAggregateConsumer];
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = v8;
  v10 = [a1 identifier];
  sub_253CCFF38();

  v11 = sub_253CCFF18();
  (*(v5 + 8))(v7, v4);
  v12 = [v9 destinationWithParentIdentifier_];

  if (!v12)
  {

LABEL_6:
    v16 = [a1 identifier];
    sub_253CCFF38();

    v13 = sub_253CCFF08();
    (*(v5 + 8))(v7, v4);
    return v13;
  }

  v13 = sub_25323D0CC(v12, a2);
  v15 = v14;

  if (!v15)
  {
    goto LABEL_6;
  }

  return v13;
}

uint64_t sub_25323D5A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A37F0, &unk_253D499C8);
  v0 = sub_253CD0978();
  MEMORY[0x259C00940](v0);

  return 0x2E786F626C6F6F54;
}

uint64_t sub_25323D620()
{
  sub_253CD11C8();
  sub_253CCFF58();
  sub_25323D848(&qword_281531988, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253CD0908();
  return sub_253CD11E8();
}

uint64_t sub_25323D6A8(uint64_t a1)
{
  sub_253CCFF58();
  sub_25323D848(&qword_281531988, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

  return sub_253CD0908();
}

uint64_t sub_25323D72C()
{
  sub_253CD11C8();
  sub_253CCFF58();
  sub_25323D848(&qword_281531988, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253CD0908();
  return sub_253CD11E8();
}

uint64_t type metadata accessor for HomeDeviceEntity(uint64_t a1)
{
  result = qword_27F5A3838;
  if (!qword_27F5A3838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25323D848(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_25323D890()
{
  v1 = v0;
  v72[1] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for HomeDeviceEntity(0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v69 - v6;
  v8 = sub_253CD07E8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v69 - v13;
  if (qword_27F5A2460 != -1)
  {
    swift_once();
  }

  v15 = qword_27F5B7870;
  if (!*(qword_27F5B7870 + 16) || (v16 = sub_253217F20(*(v1 + *(v2 + 28))), (v17 & 1) == 0))
  {
    sub_253CD0968();
    sub_25323D5A8();
    sub_253CD07D8();
    sub_2532222E0(v1, v7);
    v36 = sub_253CD07C8();
    v37 = sub_253CD0C98();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v72[0] = v39;
      *v38 = 136315138;
      v40 = sub_2532380E0();
      v42 = v41;
      sub_25323FB28(v7);
      v43 = sub_253277BA8(v40, v42, v72);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_2531F8000, v36, v37, "Failed to create CCHomeService for %s as there is no cascade device type for it", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x259C040E0](v39, -1, -1);
      MEMORY[0x259C040E0](v38, -1, -1);
    }

    else
    {

      sub_25323FB28(v7);
    }

    (*(v9 + 8))(v14, v8);
    return 0;
  }

  v18 = *(*(v15 + 56) + 4 * v16);
  v19 = objc_allocWithZone(MEMORY[0x277D21000]);
  v20 = sub_253CD0938();
  v72[0] = 0;
  v21 = [v19 initWithName:v20 deviceType:v18 error:v72];

  v22 = v72[0];
  if (!v21)
  {
    v45 = v72[0];
    v46 = sub_253CCFE18();

    swift_willThrow();
    goto LABEL_15;
  }

  v23 = objc_allocWithZone(MEMORY[0x277D20FE0]);
  v72[0] = 0;
  v24 = v21;
  v25 = v22;
  v26 = [v23 initWithEntity:v24 entityType:4 error:v72];
  if (!v26)
  {
    v47 = v72[0];
    v46 = sub_253CCFE18();

    swift_willThrow();
    goto LABEL_15;
  }

  v70 = v26;
  v71 = v9;
  v27 = v72[0];

  v28 = sub_253CCFF08();
  v69 = v24;
  v29 = v28;
  v31 = v30;
  v32 = (v1 + *(v2 + 20));
  v33 = *v32;
  v34 = v32[1];
  v35 = objc_allocWithZone(MEMORY[0x277D20FE8]);

  v61 = sub_253242358(v29, v31, v33, v34);
  v62 = v69;
  v63 = objc_allocWithZone(MEMORY[0x277CF94C8]);
  v72[0] = 0;
  v64 = v70;
  v65 = [v63 initWithContent:v70 metaContent:v61 error:v72];
  v66 = v72[0];
  if (!v65)
  {
    v67 = v66;
    v68 = v64;
    v46 = sub_253CCFE18();

    swift_willThrow();
    v9 = v71;
LABEL_15:
    sub_253CD0968();
    sub_25323D5A8();
    sub_253CD07D8();
    sub_2532222E0(v1, v5);
    v48 = v46;
    v49 = sub_253CD07C8();
    v50 = sub_253CD0C98();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v71 = v9;
      v53 = v52;
      v54 = swift_slowAlloc();
      v72[0] = v54;
      *v51 = 136315394;
      v55 = sub_2532380E0();
      v70 = v8;
      v57 = v56;
      sub_25323FB28(v5);
      v58 = sub_253277BA8(v55, v57, v72);

      *(v51 + 4) = v58;
      *(v51 + 12) = 2112;
      v59 = v46;
      v60 = _swift_stdlib_bridgeErrorToNSError();
      *(v51 + 14) = v60;
      *v53 = v60;
      _os_log_impl(&dword_2531F8000, v49, v50, "Failed to create CCHomeService for %s: %@", v51, 0x16u);
      sub_253206054(v53, &qword_27F5A2AC8, &qword_253D48890);
      MEMORY[0x259C040E0](v53, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x259C040E0](v54, -1, -1);
      MEMORY[0x259C040E0](v51, -1, -1);

      (*(v71 + 8))(v12, v70);
    }

    else
    {

      sub_25323FB28(v5);
      (*(v9 + 8))(v12, v8);
    }

    return 0;
  }

  return v65;
}

void sub_25323DF88(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x259C00E60](a1, a2, v11);
      sub_253200644(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_253200644(0, a5, a6);
    if (sub_253CD0EB8() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_253CD0EC8();
    swift_dynamicCast();
    v6 = v19;
    v12 = sub_253CD0D78();
    v13 = -1 << *(a4 + 32);
    v10 = v12 & ~v13;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v14 = ~v13;
      do
      {
        v15 = *(*(a4 + 48) + 8 * v10);
        v16 = sub_253CD0D88();

        if (v16)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v14;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v17 = *(*(a4 + 48) + 8 * v10);

  v18 = v17;
}

uint64_t sub_25323E1A0(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_25323E1F0(uint64_t a1)
{
  v2 = type metadata accessor for HomeDeviceEntity(0) - 8;
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v3);
  v9 = &v13 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v12 = *(v7 + 72);
    do
    {
      sub_2532222E0(v11, v5);
      sub_25328713C(v9, v5);
      result = sub_25323FB28(v9);
      v11 += v12;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_25323E2FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3810, &unk_253D499E0);
    v3 = sub_253CD0F98();
    v4 = 0;
    v5 = v3 + 56;
    v20 = v1;
    v21 = a1 + 32;
    while (2)
    {
      v6 = *(v21 + v4);
      sub_253CD11C8();
      sub_253243DB4(v6);
      sub_253CD09A8();

      result = sub_253CD11E8();
      v8 = ~(-1 << *(v3 + 32));
      for (i = result & v8; ; i = (i + 1) & v8)
      {
        v10 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v10) == 0)
        {
          break;
        }

        v11 = sub_253243DB4(*(*(v3 + 48) + i));
        v13 = v12;
        if (v11 == sub_253243DB4(v6) && v13 == v14)
        {

          goto LABEL_4;
        }

        v16 = sub_253CD1118();

        if (v16)
        {
          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v10;
      *(*(v3 + 48) + i) = v6;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v20)
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

uint64_t sub_25323E4B0(uint64_t a1)
{
  v2 = type metadata accessor for HomeDeviceEntity(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3830, &unk_253D499F0);
    v10 = sub_253CD0F98();
    v11 = 0;
    v12 = v10 + 56;
    v25 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v26 = v9;
    v13 = *(v3 + 72);
    while (2)
    {
      sub_2532222E0(v25 + v13 * v11, v8);
      sub_253CD11C8();
      sub_253CCFF58();
      sub_25323D848(&qword_281531988, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_253CD0908();
      v15 = sub_253CD11E8();
      v16 = ~(-1 << *(v10 + 32));
      for (i = v15 & v16; ; i = (i + 1) & v16)
      {
        v18 = *(v12 + 8 * (i >> 6));
        if (((1 << i) & v18) == 0)
        {
          break;
        }

        sub_2532222E0(*(v10 + 48) + i * v13, v6);
        v19 = sub_253CCFF28();
        sub_25323FB28(v6);
        if (v19)
        {
          sub_25323FB28(v8);
          v14 = v26;
          goto LABEL_4;
        }
      }

      *(v12 + 8 * (i >> 6)) = (1 << i) | v18;
      result = sub_25323FC90(v8, *(v10 + 48) + i * v13, type metadata accessor for HomeDeviceEntity);
      v21 = *(v10 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      v14 = v26;
      if (!v22)
      {
        *(v10 + 16) = v23;
LABEL_4:
        if (++v11 == v14)
        {
          return v10;
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

uint64_t sub_25323E720(void *a1)
{
  v2 = sub_253CCFF58();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2AD0, &unk_253D486A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = [a1 destinationIdentifier];
  if (v9)
  {
    v10 = v9;
    sub_253CCFF38();

    (*(v3 + 32))(v8, v5, v2);
    (*(v3 + 56))(v8, 0, 1, v2);
    sub_253206054(v8, &unk_27F5A2AD0, &unk_253D486A0);
    v11 = [a1 identifier];
    sub_253CCFF38();

    v12 = sub_253CCFF08();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v3 + 56))(v8, 1, 1, v2);
    sub_253206054(v8, &unk_27F5A2AD0, &unk_253D486A0);
    return 0;
  }

  return v12;
}

uint64_t sub_25323E938(uint64_t a1, _BYTE *a2, void *a3)
{
  v4 = v3;
  v108 = a1;
  v109 = a2;
  ObjectType = swift_getObjectType();
  v7 = sub_253CD07E8();
  v116 = *(v7 - 8);
  v117 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v111 = &v101[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v8);
  v106 = &v101[-v11];
  MEMORY[0x28223BE20](v10);
  v13 = &v101[-v12];
  v14 = sub_253CCFF58();
  v112 = *(v14 - 8);
  v113 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v107 = &v101[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v101[-v18];
  MEMORY[0x28223BE20](v17);
  v21 = &v101[-v20];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A37F8, &qword_253D499D8);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v101[-v23];
  v25 = type metadata accessor for HomeDeviceEntity(0);
  v114 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v110 = &v101[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = [v3 audioDestination];
  if (v27)
  {
    v28 = v27;
    sub_25323D0CC(v27, a3);
  }

  else
  {
    v29 = [v3 audioDestinationControllerData];
    if (!v29)
    {
      goto LABEL_6;
    }

    v28 = v29;
    sub_25323E720(v29);
  }

LABEL_6:
  v118 = v25;
  v115 = v24;
  v30 = [v3 category];
  v31 = [v30 categoryType];

  v32 = sub_253CD0968();
  v34 = v33;

  v35 = [v4 spiClientIdentifier];
  sub_253CCFF38();

  v36 = [v4 uuid];
  sub_253CCFF38();

  v37 = [v4 urlString];
  if (v37)
  {
    v38 = v37;
    v39 = sub_253CD0968();
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = 0;
  }

  sub_25323CEC8();

  if (qword_27F5A2450 != -1)
  {
    swift_once();
  }

  v42 = qword_27F5B7860;
  if (!*(qword_27F5B7860 + 16) || (v43 = sub_253217D84(v32, v34), (v44 & 1) == 0))
  {

    sub_253CD0968();
    sub_25323D5A8();
    sub_253CD07D8();

    v51 = sub_253CD07C8();
    v52 = sub_253CD0C98();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v109 = v21;
      v55 = v54;
      v119 = v54;
      *v53 = 136315138;
      v56 = sub_253277BA8(v32, v34, &v119);

      *(v53 + 4) = v56;
      _os_log_impl(&dword_2531F8000, v51, v52, "Unable to map accessory category %s to a device type.", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v55);
      v58 = v116;
      v57 = v117;
      MEMORY[0x259C040E0](v55, -1, -1);
      MEMORY[0x259C040E0](v53, -1, -1);

      (*(v58 + 8))(v13, v57);
      v59 = v113;
      v60 = *(v112 + 8);
      v60(v19, v113);
      v60(v109, v59);
    }

    else
    {

      (*(v116 + 8))(v13, v117);
      v61 = v113;
      v62 = *(v112 + 8);
      v62(v19, v113);
      v62(v21, v61);
    }

    goto LABEL_20;
  }

  v105 = ObjectType;
  v102 = *(*(v42 + 56) + v43);
  v45 = sub_253CD0968();
  v103 = v39;
  v104 = v19;
  if (v32 != v45 || v34 != v46)
  {
    v64 = v21;
    v65 = sub_253CD1118();

    if (v65)
    {
      v47 = v64;
      v48 = &unk_2864F93B8;
LABEL_23:
      v49 = v115;
      v50 = v118;
      goto LABEL_24;
    }

    if (v32 == sub_253CD0968() && v34 == v84)
    {
      v47 = v64;
      v48 = &unk_2864F93E0;
      goto LABEL_16;
    }

    v85 = sub_253CD1118();

    if (v85)
    {
      v47 = v64;
      v48 = &unk_2864F93E0;
      goto LABEL_23;
    }

    if (v32 == sub_253CD0968() && v34 == v86)
    {
LABEL_37:
      v47 = v64;
      v48 = &unk_2864F9408;
      goto LABEL_16;
    }

    v87 = sub_253CD1118();

    if (v87)
    {
      goto LABEL_39;
    }

    if (v32 == sub_253CD0968() && v34 == v88)
    {
      goto LABEL_37;
    }

    v89 = sub_253CD1118();

    if (v89)
    {
LABEL_39:
      v47 = v64;
      v48 = &unk_2864F9408;
      goto LABEL_23;
    }

    if (v32 == sub_253CD0968() && v34 == v90)
    {
      v47 = v64;
      v48 = &unk_2864F9430;
      goto LABEL_16;
    }

    v91 = sub_253CD1118();

    v92 = v34;
    if (v91)
    {
      v47 = v64;
      v48 = &unk_2864F9430;
      goto LABEL_23;
    }

    sub_253CD0968();
    sub_25323D5A8();
    v93 = v106;
    sub_253CD07D8();

    v94 = sub_253CD07C8();
    v95 = sub_253CD0C98();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v119 = v97;
      *v96 = 136315138;
      v98 = sub_253277BA8(v32, v92, &v119);

      *(v96 + 4) = v98;
      _os_log_impl(&dword_2531F8000, v94, v95, "Please add support for %s to HomeDeviceEntity.", v96, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v97);
      MEMORY[0x259C040E0](v97, -1, -1);
      MEMORY[0x259C040E0](v96, -1, -1);
    }

    else
    {
    }

    (*(v116 + 8))(v93, v117);
    v99 = v113;
    v100 = *(v112 + 8);
    v100(v19, v113);
    v100(v64, v99);
LABEL_20:
    v63 = v114;
    v49 = v115;
    v50 = v118;
    (*(v114 + 56))(v115, 1, 1, v118);
    goto LABEL_25;
  }

  v47 = v21;
  v48 = &unk_2864F93B8;
LABEL_16:
  v49 = v115;
  v50 = v118;

LABEL_24:

  sub_25323E2FC(v48);

  v67 = v112;
  v66 = v113;
  v68 = v107;
  (*(v112 + 16))(v107, v47, v113);
  v69 = *(v67 + 8);
  v69(v104, v66);
  v69(v47, v66);
  v70 = (v49 + v50[5]);
  *v70 = v103;
  v70[1] = v41;
  (*(v67 + 32))(v49, v68, v66);
  v71 = (v49 + v50[6]);
  v72 = v109;
  *v71 = v108;
  v71[1] = v72;
  *(v49 + v50[7]) = v102;
  v63 = v114;
  (*(v114 + 56))(v49, 0, 1, v50);

LABEL_25:
  if ((*(v63 + 48))(v49, 1, v50) == 1)
  {
    sub_253206054(v49, &qword_27F5A37F8, &qword_253D499D8);
    sub_253CD0C48();
    v73 = v4;
    v74 = sub_253CD07C8();
    v75 = sub_253CD0C98();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v76 = 138412290;
      *(v76 + 4) = v73;
      *v77 = v73;
      v78 = v73;
      _os_log_impl(&dword_2531F8000, v74, v75, "Unable to create HomeDeviceEntity for %@", v76, 0xCu);
      sub_253206054(v77, &qword_27F5A2AC8, &qword_253D48890);
      MEMORY[0x259C040E0](v77, -1, -1);
      MEMORY[0x259C040E0](v76, -1, -1);
    }

    (*(v116 + 8))(v111, v117);
    return MEMORY[0x277D84FA0];
  }

  else
  {
    v80 = v110;
    sub_25323FC90(v49, v110, type metadata accessor for HomeDeviceEntity);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31F0, &qword_253D4B200);
    v81 = (*(v63 + 80) + 32) & ~*(v63 + 80);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_253D48DA0;
    sub_2532222E0(v80, v82 + v81);
    v83 = sub_25323E4B0(v82);
    swift_setDeallocating();
    sub_25323FB28(v82 + v81);
    swift_deallocClassInstance();
    sub_25323FB28(v80);
    return v83;
  }
}

uint64_t sub_25323F600(void *a1, void *a2)
{
  v4 = sub_253CD07E8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - v9;
  v11 = [a1 name];
  v12 = sub_253CD0968();
  v14 = v13;

  v15 = (v14 >> 56) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {

    sub_253CD0968();
    type metadata accessor for HomeDeviceEntity(0);
    sub_25323D5A8();
    sub_253CD07D8();
    v20 = a1;
    v21 = sub_253CD07C8();
    v22 = sub_253CD0C98();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v20;
      *v24 = v20;
      v25 = v20;
      _os_log_impl(&dword_2531F8000, v21, v22, "No name found for accessory or it is empty: %@", v23, 0xCu);
      sub_253206054(v24, &qword_27F5A2AC8, &qword_253D48890);
      MEMORY[0x259C040E0](v24, -1, -1);
      MEMORY[0x259C040E0](v23, -1, -1);
    }

    (*(v5 + 8))(v10, v4);
    return MEMORY[0x277D84FA0];
  }

  if (!a2)
  {

    sub_253CD0968();
    type metadata accessor for HomeDeviceEntity(0);
    sub_25323D5A8();
    sub_253CD07D8();
    v26 = a1;
    v27 = sub_253CD07C8();
    v28 = sub_253CD0C98();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v26;
      *v30 = v26;
      v31 = v26;
      _os_log_impl(&dword_2531F8000, v27, v28, "Accessory does not belong to a home: %@", v29, 0xCu);
      sub_253206054(v30, &qword_27F5A2AC8, &qword_253D48890);
      MEMORY[0x259C040E0](v30, -1, -1);
      MEMORY[0x259C040E0](v29, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    return MEMORY[0x277D84FA0];
  }

  v16 = a2;
  v17 = [a1 room];
  v35 = MEMORY[0x277D84FA0];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v18 = a1;
    v19 = sub_253238270(v12, v14, v16, v17);
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v18 = a1;
      v19 = sub_253239490(v12, v14);
    }

    else
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        goto LABEL_19;
      }

      v18 = a1;
      v19 = sub_25323E938(v12, v14, v16);
    }
  }

  v33 = v19;

  sub_2532392CC(v33);

  v16 = v17;
  v17 = v18;
LABEL_19:

  return v35;
}

uint64_t sub_25323FAB8(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_253200644(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25323FB28(uint64_t a1)
{
  v2 = type metadata accessor for HomeDeviceEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25323FB84(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

unint64_t sub_25323FB90()
{
  result = qword_27F5A3820;
  if (!qword_27F5A3820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5A3820);
  }

  return result;
}

unint64_t sub_25323FBE4()
{
  result = qword_27F5A3828;
  if (!qword_27F5A3828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5A3828);
  }

  return result;
}

uint64_t sub_25323FC38(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_253CD1118() & 1;
  }
}

uint64_t sub_25323FC90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_25323FD20(uint64_t a1)
{
  sub_253CCFF58();
  if (v1 <= 0x3F)
  {
    sub_25323FDBC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25323FDBC()
{
  if (!qword_27F5A3C60)
  {
    v0 = sub_253CD0DD8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5A3C60);
    }
  }
}

uint64_t sub_25323FE24()
{
  sub_253CD11C8();
  sub_253CCFF58();
  sub_253240240(&qword_281531988, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253CD0908();
  return sub_253CD11E8();
}

uint64_t sub_25323FEC0(uint64_t a1)
{
  sub_253CCFF58();
  sub_253240240(&qword_281531988, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_253CD0908();
}

uint64_t sub_25323FF40()
{
  sub_253CD11C8();
  sub_253CCFF58();
  sub_253240240(&qword_281531988, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253CD0908();
  return sub_253CD11E8();
}

uint64_t sub_25323FFE8()
{
  sub_253CD0FB8();
  v1 = type metadata accessor for HomeEntity(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3850, &unk_253D49B00);
  v2 = sub_253CD00F8();

  MEMORY[0x259C00940](0x203A6469202CLL, 0xE600000000000000);
  sub_253CCFF58();
  sub_253240240(&qword_281531980, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v3 = sub_253CD10E8();
  MEMORY[0x259C00940](v3);

  MEMORY[0x259C00940](0x203A656D616E202CLL, 0xE800000000000000);
  MEMORY[0x259C00940](*(v0 + *(v1 + 24)), *(v0 + *(v1 + 24) + 8));
  return v2;
}

uint64_t sub_253240130()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3850, &unk_253D49B00);
  v0 = sub_253CD00F8();
  MEMORY[0x259C00940](v0);

  return 0x2E786F626C6F6F54;
}

uint64_t type metadata accessor for HomeEntity(uint64_t a1)
{
  result = qword_2815316C0;
  if (!qword_2815316C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_253240240(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_253240288()
{
  v1 = v0;
  v48[1] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for HomeEntity(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_253CD07E8();
  v46 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(MEMORY[0x277D20FD0]);
  v9 = sub_253CD0938();
  v48[0] = 0;
  v10 = [v8 initWithName:v9 error:v48];

  v11 = v48[0];
  v47 = v7;
  if (v10)
  {
    v12 = objc_allocWithZone(MEMORY[0x277D20FE0]);
    v48[0] = 0;
    v13 = v10;
    v14 = v11;
    v15 = [v12 initWithEntity:v13 entityType:1 error:v48];
    if (v15)
    {
      v16 = v15;
      v45 = v5;
      v17 = v48[0];

      v18 = sub_253CCFF08();
      v20 = v19;
      v22 = *v1;
      v21 = v1[1];
      v23 = objc_allocWithZone(MEMORY[0x277D20FE8]);

      v40 = sub_253242358(v18, v20, v22, v21);
      v41 = objc_allocWithZone(MEMORY[0x277CF94C8]);
      v48[0] = 0;
      v42 = [v41 initWithContent:v16 metaContent:v40 error:v48];
      v43 = v48[0];
      if (v42)
      {

        return v42;
      }

      v44 = v43;
      v25 = sub_253CCFE18();

      swift_willThrow();
      v5 = v45;
    }

    else
    {
      v26 = v48[0];
      v25 = sub_253CCFE18();

      swift_willThrow();
    }

    v7 = v47;
  }

  else
  {
    v24 = v48[0];
    v25 = sub_253CCFE18();

    swift_willThrow();
  }

  sub_253CD0968();
  sub_253240130();
  sub_253CD07D8();
  sub_253240768(v1, v4);
  v27 = v25;
  v28 = sub_253CD07C8();
  v29 = sub_253CD0C98();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v48[0] = v32;
    *v30 = 136315394;
    v33 = sub_25323FFE8();
    v35 = v34;
    sub_2532407CC(v4);
    v36 = sub_253277BA8(v33, v35, v48);

    *(v30 + 4) = v36;
    *(v30 + 12) = 2112;
    v37 = v25;
    v38 = _swift_stdlib_bridgeErrorToNSError();
    *(v30 + 14) = v38;
    *v31 = v38;
    _os_log_impl(&dword_2531F8000, v28, v29, "Failed to create CCHome for %s: %@", v30, 0x16u);
    sub_2532365D8(v31);
    MEMORY[0x259C040E0](v31, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x259C040E0](v32, -1, -1);
    MEMORY[0x259C040E0](v30, -1, -1);

    (*(v46 + 8))(v47, v5);
  }

  else
  {

    sub_2532407CC(v4);
    (*(v46 + 8))(v7, v5);
  }

  return 0;
}

uint64_t sub_253240768(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2532407CC(uint64_t a1)
{
  v2 = type metadata accessor for HomeEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_253240850(uint64_t a1)
{
  sub_25323FDBC();
  if (v1 <= 0x3F)
  {
    sub_253CCFF58();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for HomeGroupEntity(uint64_t a1)
{
  result = qword_27F5A3868;
  if (!qword_27F5A3868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_253240970(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = [a1 urlString];
  if (v6)
  {
    v7 = v6;
    v8 = sub_253CD0968();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  *a3 = v8;
  a3[1] = v10;
  v11 = [a1 spiClientIdentifier];
  v12 = type metadata accessor for HomeGroupEntity(0);
  sub_253CCFF38();

  v13 = [a1 name];
  v14 = sub_253CD0968();
  v16 = v15;

  v17 = (a3 + *(v12 + 24));
  *v17 = v14;
  v17[1] = v16;
}

uint64_t sub_253240A68@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_253CD07E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 home];
  if (v8)
  {
    sub_253240970(a1, v8, a2);
    v9 = type metadata accessor for HomeGroupEntity(0);
    v10 = *(*(v9 - 8) + 56);

    return v10(a2, 0, 1, v9);
  }

  else
  {
    sub_253CD0968();
    v12 = type metadata accessor for HomeGroupEntity(0);
    sub_253240E60();
    sub_253CD07D8();
    v13 = a1;
    v14 = sub_253CD07C8();
    v15 = sub_253CD0C98();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v13;
      *v17 = v13;
      v18 = v13;
      _os_log_impl(&dword_2531F8000, v14, v15, "serviceGroup %@ does not have a home", v16, 0xCu);
      sub_2532365D8(v17);
      MEMORY[0x259C040E0](v17, -1, -1);
      MEMORY[0x259C040E0](v16, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    return (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  }
}

uint64_t sub_253240D18()
{
  sub_253CD0FB8();
  v1 = type metadata accessor for HomeGroupEntity(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3860, &unk_253D49BE0);
  v2 = sub_253CD00F8();

  MEMORY[0x259C00940](0x203A6469202CLL, 0xE600000000000000);
  sub_253CCFF58();
  sub_253241090(&qword_281531980, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v3 = sub_253CD10E8();
  MEMORY[0x259C00940](v3);

  MEMORY[0x259C00940](0x203A656D616E202CLL, 0xE800000000000000);
  MEMORY[0x259C00940](*(v0 + *(v1 + 24)), *(v0 + *(v1 + 24) + 8));
  return v2;
}

uint64_t sub_253240E60()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3860, &unk_253D49BE0);
  v0 = sub_253CD0978();
  MEMORY[0x259C00940](v0);

  return 0x2E786F626C6F6F54;
}

uint64_t sub_253240EDC()
{
  sub_253CD11C8();
  sub_253CCFF58();
  sub_253241090(&qword_281531988, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253CD0908();
  return sub_253CD11E8();
}

uint64_t sub_253240F78(uint64_t a1)
{
  sub_253CCFF58();
  sub_253241090(&qword_281531988, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_253CD0908();
}

uint64_t sub_253240FF8()
{
  sub_253CD11C8();
  sub_253CCFF58();
  sub_253241090(&qword_281531988, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253CD0908();
  return sub_253CD11E8();
}

uint64_t sub_253241090(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_2532410D8()
{
  v1 = v0;
  v48[1] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for HomeGroupEntity(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_253CD07E8();
  v46 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(MEMORY[0x277D21028]);
  v9 = sub_253CD0938();
  v48[0] = 0;
  v10 = [v8 initWithName:v9 error:v48];

  v11 = v48[0];
  v47 = v7;
  if (v10)
  {
    v12 = objc_allocWithZone(MEMORY[0x277D20FE0]);
    v48[0] = 0;
    v13 = v10;
    v14 = v11;
    v15 = [v12 initWithEntity:v13 entityType:5 error:v48];
    if (v15)
    {
      v16 = v15;
      v45 = v5;
      v17 = v48[0];

      v18 = sub_253CCFF08();
      v20 = v19;
      v22 = *v1;
      v21 = v1[1];
      v23 = objc_allocWithZone(MEMORY[0x277D20FE8]);

      v40 = sub_253242358(v18, v20, v22, v21);
      v41 = objc_allocWithZone(MEMORY[0x277CF94C8]);
      v48[0] = 0;
      v42 = [v41 initWithContent:v16 metaContent:v40 error:v48];
      v43 = v48[0];
      if (v42)
      {

        return v42;
      }

      v44 = v43;
      v25 = sub_253CCFE18();

      swift_willThrow();
      v5 = v45;
    }

    else
    {
      v26 = v48[0];
      v25 = sub_253CCFE18();

      swift_willThrow();
    }

    v7 = v47;
  }

  else
  {
    v24 = v48[0];
    v25 = sub_253CCFE18();

    swift_willThrow();
  }

  sub_253CD0968();
  sub_253240E60();
  sub_253CD07D8();
  sub_2532415B8(v1, v4);
  v27 = v25;
  v28 = sub_253CD07C8();
  v29 = sub_253CD0C98();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v48[0] = v32;
    *v30 = 136315394;
    v33 = sub_253240D18();
    v35 = v34;
    sub_25324161C(v4);
    v36 = sub_253277BA8(v33, v35, v48);

    *(v30 + 4) = v36;
    *(v30 + 12) = 2112;
    v37 = v25;
    v38 = _swift_stdlib_bridgeErrorToNSError();
    *(v30 + 14) = v38;
    *v31 = v38;
    _os_log_impl(&dword_2531F8000, v28, v29, "Failed to create CCHomeRoom for %s: %@", v30, 0x16u);
    sub_2532365D8(v31);
    MEMORY[0x259C040E0](v31, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x259C040E0](v32, -1, -1);
    MEMORY[0x259C040E0](v30, -1, -1);

    (*(v46 + 8))(v47, v5);
  }

  else
  {

    sub_25324161C(v4);
    (*(v46 + 8))(v7, v5);
  }

  return 0;
}

uint64_t sub_2532415B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeGroupEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25324161C(uint64_t a1)
{
  v2 = type metadata accessor for HomeGroupEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2532416A0(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = [a1 urlString];
  if (v6)
  {
    v7 = v6;
    v8 = sub_253CD0968();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = type metadata accessor for RoomEntity(0);
  v12 = (a3 + *(v11 + 20));
  *v12 = v8;
  v12[1] = v10;
  v13 = [a1 spiClientIdentifier];
  sub_253CCFF38();

  v14 = [a1 name];
  v15 = sub_253CD0968();
  v17 = v16;

  v18 = (a3 + *(v11 + 24));
  *v18 = v15;
  v18[1] = v17;
}

uint64_t sub_253241798@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_253CD07E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 home];
  if (v8)
  {
    sub_2532416A0(a1, v8, a2);
    v9 = type metadata accessor for RoomEntity(0);
    v10 = *(*(v9 - 8) + 56);

    return v10(a2, 0, 1, v9);
  }

  else
  {
    sub_253CD0968();
    v12 = type metadata accessor for RoomEntity(0);
    sub_253241B8C();
    sub_253CD07D8();
    v13 = a1;
    v14 = sub_253CD07C8();
    v15 = sub_253CD0C98();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v13;
      *v17 = v13;
      v18 = v13;
      _os_log_impl(&dword_2531F8000, v14, v15, "room %@ has no home", v16, 0xCu);
      sub_2532365D8(v17);
      MEMORY[0x259C040E0](v17, -1, -1);
      MEMORY[0x259C040E0](v16, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    return (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  }
}

uint64_t sub_253241A48()
{
  sub_253CD0FB8();
  v1 = type metadata accessor for RoomEntity(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3880, &unk_253D49CD0);
  v2 = sub_253CD00F8();

  MEMORY[0x259C00940](0x203A6469202CLL, 0xE600000000000000);
  sub_253CCFF58();
  sub_253241E2C(&qword_281531980, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v3 = sub_253CD10E8();
  MEMORY[0x259C00940](v3);

  MEMORY[0x259C00940](0x203A656D616E202CLL, 0xE800000000000000);
  MEMORY[0x259C00940](*(v0 + *(v1 + 24)), *(v0 + *(v1 + 24) + 8));
  return v2;
}

uint64_t sub_253241B8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3880, &unk_253D49CD0);
  v0 = sub_253CD00F8();
  MEMORY[0x259C00940](v0);

  return 0x2E786F626C6F6F54;
}

uint64_t sub_253241C08()
{
  sub_253CD11C8();
  sub_253CCFF58();
  sub_253241E2C(&qword_281531988, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253CD0908();
  return sub_253CD11E8();
}

uint64_t sub_253241C90(uint64_t a1)
{
  sub_253CCFF58();
  sub_253241E2C(&qword_281531988, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

  return sub_253CD0908();
}

uint64_t sub_253241D14()
{
  sub_253CD11C8();
  sub_253CCFF58();
  sub_253241E2C(&qword_281531988, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253CD0908();
  return sub_253CD11E8();
}

uint64_t type metadata accessor for RoomEntity(uint64_t a1)
{
  result = qword_281531608;
  if (!qword_281531608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_253241E2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_253241E74()
{
  v1 = v0;
  v49[1] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for RoomEntity(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_253CD07E8();
  v47 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(MEMORY[0x277D20FF0]);
  v9 = sub_253CD0938();
  v49[0] = 0;
  v10 = [v8 initWithName:v9 error:v49];

  v11 = v49[0];
  v48 = v7;
  if (v10)
  {
    v12 = objc_allocWithZone(MEMORY[0x277D20FE0]);
    v49[0] = 0;
    v13 = v10;
    v14 = v11;
    v15 = [v12 initWithEntity:v13 entityType:3 error:v49];
    if (v15)
    {
      v16 = v15;
      v46 = v5;
      v17 = v49[0];

      v18 = sub_253CCFF08();
      v20 = v19;
      v21 = (v1 + *(v2 + 20));
      v23 = *v21;
      v22 = v21[1];
      v24 = objc_allocWithZone(MEMORY[0x277D20FE8]);

      v41 = sub_253242358(v18, v20, v23, v22);
      v42 = objc_allocWithZone(MEMORY[0x277CF94C8]);
      v49[0] = 0;
      v43 = [v42 initWithContent:v16 metaContent:v41 error:v49];
      v44 = v49[0];
      if (v43)
      {

        return v43;
      }

      v45 = v44;
      v26 = sub_253CCFE18();

      swift_willThrow();
      v5 = v46;
    }

    else
    {
      v27 = v49[0];
      v26 = sub_253CCFE18();

      swift_willThrow();
    }

    v7 = v48;
  }

  else
  {
    v25 = v49[0];
    v26 = sub_253CCFE18();

    swift_willThrow();
  }

  sub_253CD0968();
  sub_253241B8C();
  sub_253CD07D8();
  sub_253242460(v1, v4);
  v28 = v26;
  v29 = sub_253CD07C8();
  v30 = sub_253CD0C98();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v49[0] = v33;
    *v31 = 136315394;
    v34 = sub_253241A48();
    v36 = v35;
    sub_2532424C4(v4);
    v37 = sub_253277BA8(v34, v36, v49);

    *(v31 + 4) = v37;
    *(v31 + 12) = 2112;
    v38 = v26;
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 14) = v39;
    *v32 = v39;
    _os_log_impl(&dword_2531F8000, v29, v30, "Failed to create CCHomeRoom for %s: %@", v31, 0x16u);
    sub_2532365D8(v32);
    MEMORY[0x259C040E0](v32, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x259C040E0](v33, -1, -1);
    MEMORY[0x259C040E0](v31, -1, -1);

    (*(v47 + 8))(v48, v5);
  }

  else
  {

    sub_2532424C4(v4);
    (*(v47 + 8))(v7, v5);
  }

  return 0;
}

id sub_253242358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = sub_253CD0938();

  if (a4)
  {
    v7 = sub_253CD0938();
  }

  else
  {
    v7 = 0;
  }

  v12[0] = 0;
  v8 = [v4 initWithSourceItemIdentifier:v6 assistantHomeKitIdentifier:v7 error:v12];

  if (v8)
  {
    v9 = v12[0];
  }

  else
  {
    v10 = v12[0];
    sub_253CCFE18();

    swift_willThrow();
  }

  return v8;
}

uint64_t sub_253242460(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoomEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2532424C4(uint64_t a1)
{
  v2 = type metadata accessor for RoomEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_253242548(uint64_t a1)
{
  sub_253CCFF58();
  if (v1 <= 0x3F)
  {
    sub_25323FDBC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2532425D4(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = [a1 urlString];
  if (v6)
  {
    v7 = v6;
    v8 = sub_253CD0968();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  *a3 = v8;
  a3[1] = v10;
  v11 = [a1 spiClientIdentifier];
  v12 = type metadata accessor for SceneEntity(0);
  sub_253CCFF38();

  v13 = [a1 name];
  v14 = sub_253CD0968();
  v16 = v15;

  v17 = (a3 + *(v12 + 24));
  *v17 = v14;
  v17[1] = v16;
}

uint64_t sub_2532426CC()
{
  sub_253CD0FB8();
  v1 = type metadata accessor for SceneEntity(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3890, &unk_253D49DB0);
  v2 = sub_253CD00F8();

  MEMORY[0x259C00940](0x203A6469202CLL, 0xE600000000000000);
  sub_253CCFF58();
  sub_253242D88(&qword_281531980, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v3 = sub_253CD10E8();
  MEMORY[0x259C00940](v3);

  MEMORY[0x259C00940](0x203A656D616E202CLL, 0xE800000000000000);
  MEMORY[0x259C00940](*(v0 + *(v1 + 24)), *(v0 + *(v1 + 24) + 8));
  return v2;
}

uint64_t sub_253242814()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3890, &unk_253D49DB0);
  v0 = sub_253CD0978();
  MEMORY[0x259C00940](v0);

  return 0x2E786F626C6F6F54;
}

uint64_t sub_253242890@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_253CD07E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 home];
  if (v8)
  {
    sub_2532425D4(a1, v8, a2);
    v9 = type metadata accessor for SceneEntity(0);
    v10 = *(*(v9 - 8) + 56);

    return v10(a2, 0, 1, v9);
  }

  else
  {
    sub_253CD0968();
    v12 = type metadata accessor for SceneEntity(0);
    sub_253242814();
    sub_253CD07D8();
    v13 = a1;
    v14 = sub_253CD07C8();
    v15 = sub_253CD0C98();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v13;
      *v17 = v13;
      v18 = v13;
      _os_log_impl(&dword_2531F8000, v14, v15, "Scene does not have valid home reference: %@", v16, 0xCu);
      sub_2532365D8(v17);
      MEMORY[0x259C040E0](v17, -1, -1);
      MEMORY[0x259C040E0](v16, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    return (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  }
}

uint64_t sub_253242B40()
{
  sub_253CD11C8();
  sub_253CCFF58();
  sub_253242D88(&qword_281531988, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253CD0908();
  return sub_253CD11E8();
}

uint64_t sub_253242BDC(uint64_t a1)
{
  sub_253CCFF58();
  sub_253242D88(&qword_281531988, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_253CD0908();
}

uint64_t sub_253242C5C()
{
  sub_253CD11C8();
  sub_253CCFF58();
  sub_253242D88(&qword_281531988, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253CD0908();
  return sub_253CD11E8();
}

uint64_t type metadata accessor for SceneEntity(uint64_t a1)
{
  result = qword_281531570;
  if (!qword_281531570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_253242D88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_253242DD0()
{
  v1 = v0;
  v48[1] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for SceneEntity(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_253CD07E8();
  v46 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(MEMORY[0x277D20FF8]);
  v9 = sub_253CD0938();
  v48[0] = 0;
  v10 = [v8 initWithName:v9 error:v48];

  v11 = v48[0];
  v47 = v7;
  if (v10)
  {
    v12 = objc_allocWithZone(MEMORY[0x277D20FE0]);
    v48[0] = 0;
    v13 = v10;
    v14 = v11;
    v15 = [v12 initWithEntity:v13 entityType:6 error:v48];
    if (v15)
    {
      v16 = v15;
      v45 = v5;
      v17 = v48[0];

      v18 = sub_253CCFF08();
      v20 = v19;
      v22 = *v1;
      v21 = v1[1];
      v23 = objc_allocWithZone(MEMORY[0x277D20FE8]);

      v40 = sub_253242358(v18, v20, v22, v21);
      v41 = objc_allocWithZone(MEMORY[0x277CF94C8]);
      v48[0] = 0;
      v42 = [v41 initWithContent:v16 metaContent:v40 error:v48];
      v43 = v48[0];
      if (v42)
      {

        return v42;
      }

      v44 = v43;
      v25 = sub_253CCFE18();

      swift_willThrow();
      v5 = v45;
    }

    else
    {
      v26 = v48[0];
      v25 = sub_253CCFE18();

      swift_willThrow();
    }

    v7 = v47;
  }

  else
  {
    v24 = v48[0];
    v25 = sub_253CCFE18();

    swift_willThrow();
  }

  sub_253CD0968();
  sub_253242814();
  sub_253CD07D8();
  sub_2532432B0(v1, v4);
  v27 = v25;
  v28 = sub_253CD07C8();
  v29 = sub_253CD0C98();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v48[0] = v32;
    *v30 = 136315394;
    v33 = sub_2532426CC();
    v35 = v34;
    sub_253243314(v4);
    v36 = sub_253277BA8(v33, v35, v48);

    *(v30 + 4) = v36;
    *(v30 + 12) = 2112;
    v37 = v25;
    v38 = _swift_stdlib_bridgeErrorToNSError();
    *(v30 + 14) = v38;
    *v31 = v38;
    _os_log_impl(&dword_2531F8000, v28, v29, "Failed to create CCHomeScene for %s: %@", v30, 0x16u);
    sub_2532365D8(v31);
    MEMORY[0x259C040E0](v31, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x259C040E0](v32, -1, -1);
    MEMORY[0x259C040E0](v30, -1, -1);

    (*(v46 + 8))(v47, v5);
  }

  else
  {

    sub_253243314(v4);
    (*(v46 + 8))(v7, v5);
  }

  return 0;
}

uint64_t sub_2532432B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SceneEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_253243314(uint64_t a1)
{
  v2 = type metadata accessor for SceneEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_253243398()
{
  sub_253CD0FB8();
  v1 = type metadata accessor for ZoneEntity(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A38A0, &unk_253D49E90);
  v2 = sub_253CD00F8();

  MEMORY[0x259C00940](0x203A6469202CLL, 0xE600000000000000);
  sub_253CCFF58();
  sub_2532437A4(&qword_281531980, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v3 = sub_253CD10E8();
  MEMORY[0x259C00940](v3);

  MEMORY[0x259C00940](0x203A656D616E202CLL, 0xE800000000000000);
  MEMORY[0x259C00940](*(v0 + *(v1 + 24)), *(v0 + *(v1 + 24) + 8));
  return v2;
}

uint64_t sub_2532434E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A38A0, &unk_253D49E90);
  v0 = sub_253CD00F8();
  MEMORY[0x259C00940](v0);

  return 0x2E786F626C6F6F54;
}

uint64_t sub_25324355C()
{
  sub_253CD11C8();
  sub_253CCFF58();
  sub_2532437A4(&qword_281531988, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253CD0908();
  return sub_253CD11E8();
}

uint64_t sub_2532435F8(uint64_t a1)
{
  sub_253CCFF58();
  sub_2532437A4(&qword_281531988, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_253CD0908();
}

uint64_t sub_253243678()
{
  sub_253CD11C8();
  sub_253CCFF58();
  sub_2532437A4(&qword_281531988, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253CD0908();
  return sub_253CD11E8();
}

uint64_t type metadata accessor for ZoneEntity(uint64_t a1)
{
  result = qword_27F5A38A8;
  if (!qword_27F5A38A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2532437A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_2532437EC()
{
  v1 = v0;
  v48[1] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for ZoneEntity(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_253CD07E8();
  v46 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(MEMORY[0x277D21038]);
  v9 = sub_253CD0938();
  v48[0] = 0;
  v10 = [v8 initWithName:v9 error:v48];

  v11 = v48[0];
  v47 = v7;
  if (v10)
  {
    v12 = objc_allocWithZone(MEMORY[0x277D20FE0]);
    v48[0] = 0;
    v13 = v10;
    v14 = v11;
    v15 = [v12 initWithEntity:v13 entityType:2 error:v48];
    if (v15)
    {
      v16 = v15;
      v45 = v5;
      v17 = v48[0];

      v18 = sub_253CCFF08();
      v20 = v19;
      v22 = *v1;
      v21 = v1[1];
      v23 = objc_allocWithZone(MEMORY[0x277D20FE8]);

      v40 = sub_253242358(v18, v20, v22, v21);
      v41 = objc_allocWithZone(MEMORY[0x277CF94C8]);
      v48[0] = 0;
      v42 = [v41 initWithContent:v16 metaContent:v40 error:v48];
      v43 = v48[0];
      if (v42)
      {

        return v42;
      }

      v44 = v43;
      v25 = sub_253CCFE18();

      swift_willThrow();
      v5 = v45;
    }

    else
    {
      v26 = v48[0];
      v25 = sub_253CCFE18();

      swift_willThrow();
    }

    v7 = v47;
  }

  else
  {
    v24 = v48[0];
    v25 = sub_253CCFE18();

    swift_willThrow();
  }

  sub_253CD0968();
  sub_2532434E0();
  sub_253CD07D8();
  sub_253243CCC(v1, v4);
  v27 = v25;
  v28 = sub_253CD07C8();
  v29 = sub_253CD0C98();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v48[0] = v32;
    *v30 = 136315394;
    v33 = sub_253243398();
    v35 = v34;
    sub_253243D30(v4);
    v36 = sub_253277BA8(v33, v35, v48);

    *(v30 + 4) = v36;
    *(v30 + 12) = 2112;
    v37 = v25;
    v38 = _swift_stdlib_bridgeErrorToNSError();
    *(v30 + 14) = v38;
    *v31 = v38;
    _os_log_impl(&dword_2531F8000, v28, v29, "Failed to create CCHomeZone for %s: %@", v30, 0x16u);
    sub_2532365D8(v31);
    MEMORY[0x259C040E0](v31, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x259C040E0](v32, -1, -1);
    MEMORY[0x259C040E0](v30, -1, -1);

    (*(v46 + 8))(v47, v5);
  }

  else
  {

    sub_253243D30(v4);
    (*(v46 + 8))(v7, v5);
  }

  return 0;
}

uint64_t sub_253243CCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ZoneEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_253243D30(uint64_t a1)
{
  v2 = type metadata accessor for ZoneEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_253243DB4(char a1)
{
  result = 0x7265776F70;
  switch(a1)
  {
    case 1:
      return 0x6669727550726961;
    case 2:
    case 13:
    case 39:
      return 0xD000000000000010;
    case 3:
      return 0x676E696772616863;
    case 4:
      return 0x5379726574746162;
    case 5:
    case 11:
    case 17:
    case 30:
    case 38:
      return 0xD000000000000012;
    case 6:
      return 0xD000000000000011;
    case 7:
      v4 = 1635020658;
      return v4 | 0x6E6F697400000000;
    case 8:
      return 0xD000000000000011;
    case 9:
      return 0x646F4D676E697773;
    case 10:
      return 0x65646F4D6E6166;
    case 12:
      return 0xD000000000000011;
    case 14:
      return 1801678700;
    case 15:
      return 0x6573696172;
    case 16:
      v4 = 1769172848;
      return v4 | 0x6E6F697400000000;
    case 18:
    case 29:
      return 0xD000000000000013;
    case 19:
      return 0x656E746867697262;
    case 20:
      return 0x726F6C6F63;
    case 21:
      return 0x4C6C61727574616ELL;
    case 22:
      return 0x696C617551726961;
    case 23:
      return 0x6E6544656E6F7A6FLL;
    case 24:
    case 33:
    case 34:
    case 43:
      return 0xD000000000000016;
    case 25:
    case 44:
      return 0xD000000000000015;
    case 26:
      v3 = 892489040;
      goto LABEL_42;
    case 27:
      v3 = 808537424;
LABEL_42:
      result = v3 | 0x736E654400000000;
      break;
    case 28:
    case 31:
    case 32:
      result = 0xD000000000000017;
      break;
    case 35:
      result = 0x6576654C6B616570;
      break;
    case 36:
      result = 0xD000000000000011;
      break;
    case 37:
      result = 0x657465446B61656CLL;
      break;
    case 40:
      result = 0x79746964696D7568;
      break;
    case 41:
      result = 0x74536E6F69746F6DLL;
      break;
    case 42:
      result = 0x746544656B6F6D73;
      break;
    case 45:
      result = 0x69666964696D7568;
      break;
    case 46:
      result = 0xD000000000000011;
      break;
    case 47:
      result = 0x6573556E69;
      break;
    case 48:
      result = 1886352499;
      break;
    case 49:
      result = 0x656D75736572;
      break;
    case 50:
      result = 0x6573756170;
      break;
    case 51:
      result = 0x676E696E61656C63;
      break;
    case 52:
      result = 0x7274536F65646976;
      break;
    case 53:
      result = 0x696C436F65646976;
      break;
    case 54:
      result = 0xD000000000000011;
      break;
    case 55:
      result = 0x4579616C70726961;
      break;
    case 56:
      result = 0x616964656DLL;
      break;
    case 57:
      result = 0x6D6F637265746E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_253244344()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A38B8, &qword_253D49ED0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_253D49EC0;
  *(v0 + 32) = sub_253CD0968();
  *(v0 + 40) = v1;
  *(v0 + 48) = 0;
  *(v0 + 56) = sub_253CD0968();
  *(v0 + 64) = v2;
  *(v0 + 72) = 2;
  *(v0 + 80) = sub_253CD0968();
  *(v0 + 88) = v3;
  *(v0 + 96) = 1;
  *(v0 + 104) = sub_253CD0968();
  *(v0 + 112) = v4;
  *(v0 + 120) = 3;
  *(v0 + 128) = sub_253CD0968();
  *(v0 + 136) = v5;
  *(v0 + 144) = 4;
  *(v0 + 152) = sub_253CD0968();
  *(v0 + 160) = v6;
  *(v0 + 168) = 4;
  *(v0 + 176) = sub_253CD0968();
  *(v0 + 184) = v7;
  *(v0 + 192) = 5;
  *(v0 + 200) = sub_253CD0968();
  *(v0 + 208) = v8;
  *(v0 + 216) = 6;
  *(v0 + 224) = sub_253CD0968();
  *(v0 + 232) = v9;
  *(v0 + 240) = 7;
  *(v0 + 248) = sub_253CD0968();
  *(v0 + 256) = v10;
  *(v0 + 264) = 8;
  *(v0 + 272) = sub_253CD0968();
  *(v0 + 280) = v11;
  *(v0 + 288) = 9;
  *(v0 + 296) = sub_253CD0968();
  *(v0 + 304) = v12;
  *(v0 + 312) = 10;
  *(v0 + 320) = sub_253CD0968();
  *(v0 + 328) = v13;
  *(v0 + 336) = 11;
  *(v0 + 344) = sub_253CD0968();
  *(v0 + 352) = v14;
  *(v0 + 360) = 12;
  *(v0 + 368) = sub_253CD0968();
  *(v0 + 376) = v15;
  *(v0 + 384) = 13;
  *(v0 + 392) = sub_253CD0968();
  *(v0 + 400) = v16;
  *(v0 + 408) = 13;
  *(v0 + 416) = sub_253CD0968();
  *(v0 + 424) = v17;
  *(v0 + 432) = 14;
  *(v0 + 440) = sub_253CD0968();
  *(v0 + 448) = v18;
  *(v0 + 456) = 14;
  *(v0 + 464) = sub_253CD0968();
  *(v0 + 472) = v19;
  *(v0 + 480) = 15;
  *(v0 + 488) = sub_253CD0968();
  *(v0 + 496) = v20;
  *(v0 + 504) = 15;
  *(v0 + 512) = sub_253CD0968();
  *(v0 + 520) = v21;
  *(v0 + 528) = 16;
  *(v0 + 536) = sub_253CD0968();
  *(v0 + 544) = v22;
  *(v0 + 552) = 16;
  *(v0 + 560) = sub_253CD0968();
  *(v0 + 568) = v23;
  *(v0 + 576) = 17;
  *(v0 + 584) = sub_253CD0968();
  *(v0 + 592) = v24;
  *(v0 + 600) = 17;
  *(v0 + 608) = sub_253CD0968();
  *(v0 + 616) = v25;
  *(v0 + 624) = 18;
  *(v0 + 632) = sub_253CD0968();
  *(v0 + 640) = v26;
  *(v0 + 648) = 19;
  *(v0 + 656) = sub_253CD0968();
  *(v0 + 664) = v27;
  *(v0 + 672) = 20;
  *(v0 + 680) = sub_253CD0968();
  *(v0 + 688) = v28;
  *(v0 + 696) = 20;
  *(v0 + 704) = sub_253CD0968();
  *(v0 + 712) = v29;
  *(v0 + 720) = 22;
  *(v0 + 728) = sub_253CD0968();
  *(v0 + 736) = v30;
  *(v0 + 744) = 23;
  *(v0 + 752) = sub_253CD0968();
  *(v0 + 760) = v31;
  *(v0 + 768) = 24;
  *(v0 + 776) = sub_253CD0968();
  *(v0 + 784) = v32;
  *(v0 + 792) = 25;
  *(v0 + 800) = sub_253CD0968();
  *(v0 + 808) = v33;
  *(v0 + 816) = 26;
  *(v0 + 824) = sub_253CD0968();
  *(v0 + 832) = v34;
  *(v0 + 840) = 27;
  *(v0 + 848) = sub_253CD0968();
  *(v0 + 856) = v35;
  *(v0 + 864) = 28;
  *(v0 + 872) = sub_253CD0968();
  *(v0 + 880) = v36;
  *(v0 + 888) = 34;
  *(v0 + 896) = sub_253CD0968();
  *(v0 + 904) = v37;
  *(v0 + 912) = 30;
  *(v0 + 920) = sub_253CD0968();
  *(v0 + 928) = v38;
  *(v0 + 936) = 33;
  *(v0 + 944) = sub_253CD0968();
  *(v0 + 952) = v39;
  *(v0 + 960) = 31;
  *(v0 + 968) = sub_253CD0968();
  *(v0 + 976) = v40;
  *(v0 + 984) = 29;
  *(v0 + 992) = sub_253CD0968();
  *(v0 + 1000) = v41;
  *(v0 + 1008) = 32;
  *(v0 + 1016) = sub_253CD0968();
  *(v0 + 1024) = v42;
  *(v0 + 1032) = 37;
  *(v0 + 1040) = sub_253CD0968();
  *(v0 + 1048) = v43;
  *(v0 + 1056) = 38;
  *(v0 + 1064) = sub_253CD0968();
  *(v0 + 1072) = v44;
  *(v0 + 1080) = 39;
  *(v0 + 1088) = sub_253CD0968();
  *(v0 + 1096) = v45;
  *(v0 + 1104) = 36;
  *(v0 + 1112) = sub_253CD0968();
  *(v0 + 1120) = v46;
  *(v0 + 1128) = 40;
  *(v0 + 1136) = sub_253CD0968();
  *(v0 + 1144) = v47;
  *(v0 + 1152) = 41;
  *(v0 + 1160) = sub_253CD0968();
  *(v0 + 1168) = v48;
  *(v0 + 1176) = 42;
  *(v0 + 1184) = sub_253CD0968();
  *(v0 + 1192) = v49;
  *(v0 + 1200) = 43;
  *(v0 + 1208) = sub_253CD0968();
  *(v0 + 1216) = v50;
  *(v0 + 1224) = 44;
  *(v0 + 1232) = sub_253CD0968();
  *(v0 + 1240) = v51;
  *(v0 + 1248) = 45;
  *(v0 + 1256) = sub_253CD0968();
  *(v0 + 1264) = v52;
  *(v0 + 1272) = 46;
  *(v0 + 1280) = sub_253CD0968();
  *(v0 + 1288) = v53;
  *(v0 + 1296) = 47;
  *(v0 + 1304) = sub_253CD0968();
  *(v0 + 1312) = v54;
  *(v0 + 1320) = 54;
  v55 = sub_253218968(v0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A38C0, &qword_253D49ED8);
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F5B7858 = v55;
  return result;
}

uint64_t sub_253244A40(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_253243DB4(*a1);
  v5 = v4;
  if (v3 == sub_253243DB4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_253CD1118();
  }

  return v8 & 1;
}

uint64_t sub_253244AC8()
{
  v1 = *v0;
  sub_253CD11C8();
  sub_253243DB4(v1);
  sub_253CD09A8();

  return sub_253CD11E8();
}

uint64_t sub_253244B2C(uint64_t a1)
{
  sub_253243DB4(*v1);
  sub_253CD09A8();
}

uint64_t sub_253244B80()
{
  v1 = *v0;
  sub_253CD11C8();
  sub_253243DB4(v1);
  sub_253CD09A8();

  return sub_253CD11E8();
}

unint64_t sub_253244BE0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_253244DE4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_253244C10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_253243DB4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for HomeCapability(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC7)
  {
    goto LABEL_17;
  }

  if (a2 + 57 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 57) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 57;
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

      return (*a1 | (v4 << 8)) - 57;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 57;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x3A;
  v8 = v6 - 58;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeCapability(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 57 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 57) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC7)
  {
    v4 = 0;
  }

  if (a2 > 0xC6)
  {
    v5 = ((a2 - 199) >> 8) + 1;
    *result = a2 + 57;
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
    *result = a2 + 57;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_253244D90()
{
  result = qword_27F5A38C8;
  if (!qword_27F5A38C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5A38C8);
  }

  return result;
}

unint64_t sub_253244DE4(uint64_t a1, uint64_t a2)
{
  v2 = sub_253CD1138();

  if (v2 >= 0x3A)
  {
    return 58;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_253244E38(char a1)
{
  result = 0x6669727550726961;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x79726574746162;
      break;
    case 3:
      result = 0x6172656D6163;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x53746361746E6F63;
      break;
    case 7:
      result = 0x6C6C6542726F6F64;
      break;
    case 8:
      result = 0x6B636F4C726F6F64;
      break;
    case 9:
      result = 7233894;
      break;
    case 10:
      result = 0x746563756166;
      break;
    case 11:
      result = 0x7265746C6966;
      break;
    case 12:
      result = 0x6F44656761726167;
      break;
    case 13:
      result = 0x6F43726574616568;
      break;
    case 14:
      result = 0xD000000000000016;
      break;
    case 15:
      result = 0x79746964696D7568;
      break;
    case 16:
      result = 0x736E65536B61656CLL;
      break;
    case 17:
      result = 0x6C7562746867696CLL;
      break;
    case 18:
      v3 = 0x53746867696CLL;
      goto LABEL_42;
    case 19:
      result = 0x65536E6F69746F6DLL;
      break;
    case 20:
    case 21:
      result = 0x657A69726F746F6DLL;
      break;
    case 22:
      result = 0x636E61707563636FLL;
      break;
    case 23:
      result = 0x74656C74756FLL;
      break;
    case 24:
      result = 0xD000000000000012;
      break;
    case 25:
      result = 0x7974697275636573;
      break;
    case 26:
      result = 0x7265776F6873;
      break;
    case 27:
      result = 1802398067;
      break;
    case 28:
      result = 1952541811;
      break;
    case 29:
      v3 = 0x53656B6F6D73;
LABEL_42:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000;
      break;
    case 30:
      result = 0x656C6B6E69727073;
      break;
    case 31:
      result = 0x686374697773;
      break;
    case 32:
      result = 0x69736976656C6574;
      break;
    case 33:
      result = 0xD000000000000011;
      break;
    case 34:
      result = 0x74736F6D72656874;
      break;
    case 35:
      result = 0x65766C6176;
      break;
    case 36:
      result = 0x6F43776F646E6977;
      break;
    case 37:
      result = 0x706F4D746F626F72;
      break;
    case 38:
      result = 0x646F50656D6F68;
      break;
    case 39:
      result = 0x5654656C707061;
      break;
    case 40:
      result = 0x72656B61657073;
      break;
    case 41:
      result = 0x6B63696B65646973;
      break;
    case 42:
      result = 0x736564616873;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2532452CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A38D0, &qword_253D49FC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_253D49FA0;
  *(inited + 32) = sub_253CD0968();
  *(inited + 40) = v1;
  *(inited + 48) = 25;
  *(inited + 56) = sub_253CD0968();
  *(inited + 64) = v2;
  *(inited + 72) = 20;
  *(inited + 80) = sub_253CD0968();
  *(inited + 88) = v3;
  *(inited + 96) = 8;
  *(inited + 104) = sub_253CD0968();
  *(inited + 112) = v4;
  *(inited + 120) = 9;
  *(inited + 128) = sub_253CD0968();
  *(inited + 136) = v5;
  *(inited + 144) = 12;
  *(inited + 152) = sub_253CD0968();
  *(inited + 160) = v6;
  *(inited + 168) = 3;
  *(inited + 176) = sub_253CD0968();
  *(inited + 184) = v7;
  *(inited + 192) = 17;
  *(inited + 200) = sub_253CD0968();
  *(inited + 208) = v8;
  *(inited + 216) = 23;
  *(inited + 224) = sub_253CD0968();
  *(inited + 232) = v9;
  *(inited + 240) = 31;
  *(inited + 248) = sub_253CD0968();
  *(inited + 256) = v10;
  *(inited + 264) = 31;
  *(inited + 272) = sub_253CD0968();
  *(inited + 280) = v11;
  *(inited + 288) = 34;
  *(inited + 296) = sub_253CD0968();
  *(inited + 304) = v12;
  *(inited + 312) = 7;
  *(inited + 320) = sub_253CD0968();
  *(inited + 328) = v13;
  *(inited + 336) = 21;
  *(inited + 344) = sub_253CD0968();
  *(inited + 352) = v14;
  *(inited + 360) = 36;
  *(inited + 368) = sub_253CD0968();
  *(inited + 376) = v15;
  *(inited + 384) = 14;
  *(inited + 392) = sub_253CD0968();
  *(inited + 400) = v16;
  *(inited + 408) = 13;
  *(inited + 416) = sub_253CD0968();
  *(inited + 424) = v17;
  *(inited + 432) = 13;
  *(inited + 440) = sub_253CD0968();
  *(inited + 448) = v18;
  *(inited + 456) = 14;
  *(inited + 464) = sub_253CD0968();
  *(inited + 472) = v19;
  *(inited + 480) = 0;
  *(inited + 488) = sub_253CD0968();
  *(inited + 496) = v20;
  *(inited + 504) = 39;
  *(inited + 512) = sub_253CD0968();
  *(inited + 520) = v21;
  *(inited + 528) = 38;
  *(inited + 536) = sub_253CD0968();
  *(inited + 544) = v22;
  *(inited + 552) = 40;
  *(inited + 560) = sub_253CD0968();
  *(inited + 568) = v23;
  *(inited + 576) = 40;
  *(inited + 584) = sub_253CD0968();
  *(inited + 592) = v24;
  *(inited + 600) = 30;
  *(inited + 608) = sub_253CD0968();
  *(inited + 616) = v25;
  *(inited + 624) = 26;
  *(inited + 632) = sub_253CD0968();
  *(inited + 640) = v26;
  *(inited + 648) = 27;
  *(inited + 656) = sub_253CD0968();
  *(inited + 664) = v27;
  *(inited + 672) = 32;
  *(inited + 680) = sub_253CD0968();
  *(inited + 688) = v28;
  *(inited + 696) = 32;
  *(inited + 704) = sub_253CD0968();
  *(inited + 712) = v29;
  *(inited + 720) = 32;
  v30 = sub_253218954(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A38D8, &qword_253D49FC8);
  result = swift_arrayDestroy();
  qword_27F5B7860 = v30;
  return result;
}

uint64_t sub_2532456A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A38D0, &qword_253D49FC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_253D49FB0;
  *(v0 + 32) = sub_253CD0968();
  *(v0 + 40) = v1;
  *(v0 + 48) = 0;
  *(v0 + 56) = sub_253CD0968();
  *(v0 + 64) = v2;
  *(v0 + 72) = 1;
  *(v0 + 80) = sub_253CD0968();
  *(v0 + 88) = v3;
  *(v0 + 96) = 2;
  *(v0 + 104) = sub_253CD0968();
  *(v0 + 112) = v4;
  *(v0 + 120) = 4;
  *(v0 + 128) = sub_253CD0968();
  *(v0 + 136) = v5;
  *(v0 + 144) = 5;
  *(v0 + 152) = sub_253CD0968();
  *(v0 + 160) = v6;
  *(v0 + 168) = 6;
  *(v0 + 176) = sub_253CD0968();
  *(v0 + 184) = v7;
  *(v0 + 192) = 7;
  *(v0 + 200) = sub_253CD0968();
  *(v0 + 208) = v8;
  *(v0 + 216) = 8;
  *(v0 + 224) = sub_253CD0968();
  *(v0 + 232) = v9;
  *(v0 + 240) = 9;
  *(v0 + 248) = sub_253CD0968();
  *(v0 + 256) = v10;
  *(v0 + 264) = 9;
  *(v0 + 272) = sub_253CD0968();
  *(v0 + 280) = v11;
  *(v0 + 288) = 10;
  *(v0 + 296) = sub_253CD0968();
  *(v0 + 304) = v12;
  *(v0 + 312) = 11;
  *(v0 + 320) = sub_253CD0968();
  *(v0 + 328) = v13;
  *(v0 + 336) = 12;
  *(v0 + 344) = sub_253CD0968();
  *(v0 + 352) = v14;
  *(v0 + 360) = 13;
  *(v0 + 368) = sub_253CD0968();
  *(v0 + 376) = v15;
  *(v0 + 384) = 14;
  *(v0 + 392) = sub_253CD0968();
  *(v0 + 400) = v16;
  *(v0 + 408) = 15;
  *(v0 + 416) = sub_253CD0968();
  *(v0 + 424) = v17;
  *(v0 + 432) = 16;
  *(v0 + 440) = sub_253CD0968();
  *(v0 + 448) = v18;
  *(v0 + 456) = 17;
  *(v0 + 464) = sub_253CD0968();
  *(v0 + 472) = v19;
  *(v0 + 480) = 18;
  *(v0 + 488) = sub_253CD0968();
  *(v0 + 496) = v20;
  *(v0 + 504) = 19;
  *(v0 + 512) = sub_253CD0968();
  *(v0 + 520) = v21;
  *(v0 + 528) = 20;
  *(v0 + 536) = sub_253CD0968();
  *(v0 + 544) = v22;
  *(v0 + 552) = 21;
  *(v0 + 560) = sub_253CD0968();
  *(v0 + 568) = v23;
  *(v0 + 576) = 22;
  *(v0 + 584) = sub_253CD0968();
  *(v0 + 592) = v24;
  *(v0 + 600) = 23;
  *(v0 + 608) = sub_253CD0968();
  *(v0 + 616) = v25;
  *(v0 + 624) = 25;
  *(v0 + 632) = sub_253CD0968();
  *(v0 + 640) = v26;
  *(v0 + 648) = 28;
  *(v0 + 656) = sub_253CD0968();
  *(v0 + 664) = v27;
  *(v0 + 672) = 29;
  *(v0 + 680) = sub_253CD0968();
  *(v0 + 688) = v28;
  *(v0 + 696) = 40;
  *(v0 + 704) = sub_253CD0968();
  *(v0 + 712) = v29;
  *(v0 + 720) = 30;
  *(v0 + 728) = sub_253CD0968();
  *(v0 + 736) = v30;
  *(v0 + 744) = 31;
  *(v0 + 752) = sub_253CD0968();
  *(v0 + 760) = v31;
  *(v0 + 768) = 33;
  *(v0 + 776) = sub_253CD0968();
  *(v0 + 784) = v32;
  *(v0 + 792) = 34;
  *(v0 + 800) = sub_253CD0968();
  *(v0 + 808) = v33;
  *(v0 + 816) = 35;
  *(v0 + 824) = sub_253CD0968();
  *(v0 + 832) = v34;
  *(v0 + 840) = 36;
  *(v0 + 848) = sub_253CD0968();
  *(v0 + 856) = v35;
  *(v0 + 864) = 32;
  *(v0 + 872) = sub_253CD0968();
  *(v0 + 880) = v36;
  *(v0 + 888) = 30;
  *(v0 + 896) = sub_253CD0968();
  *(v0 + 904) = v37;
  *(v0 + 912) = 30;
  *(v0 + 920) = sub_253CD0968();
  *(v0 + 928) = v38;
  *(v0 + 936) = 10;
  *(v0 + 944) = sub_253CD0968();
  *(v0 + 952) = v39;
  *(v0 + 960) = 26;
  *(v0 + 968) = sub_253CD0968();
  *(v0 + 976) = v40;
  *(v0 + 984) = 30;
  *(v0 + 992) = sub_253CD0968();
  *(v0 + 1000) = v41;
  *(v0 + 1008) = 3;
  *(v0 + 1016) = sub_253CD0968();
  *(v0 + 1024) = v42;
  *(v0 + 1032) = 3;
  *(v0 + 1040) = sub_253CD0968();
  *(v0 + 1048) = v43;
  *(v0 + 1056) = 3;
  *(v0 + 1064) = sub_253CD0968();
  *(v0 + 1072) = v44;
  *(v0 + 1080) = 3;
  v45 = sub_253218954(v0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A38D8, &qword_253D49FC8);
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F5B7868 = v45;
  return result;
}

unint64_t sub_253245C60()
{
  result = sub_253218A70(&unk_2864F9458);
  qword_27F5B7870 = result;
  return result;
}

uint64_t sub_253245C88(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_253244E38(*a1);
  v5 = v4;
  if (v3 == sub_253244E38(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_253CD1118();
  }

  return v8 & 1;
}

uint64_t sub_253245D10()
{
  v1 = *v0;
  sub_253CD11C8();
  sub_253244E38(v1);
  sub_253CD09A8();

  return sub_253CD11E8();
}

uint64_t sub_253245D74(uint64_t a1)
{
  sub_253244E38(*v1);
  sub_253CD09A8();
}

uint64_t sub_253245DC8()
{
  v1 = *v0;
  sub_253CD11C8();
  sub_253244E38(v1);
  sub_253CD09A8();

  return sub_253CD11E8();
}

unint64_t sub_253245E28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25324602C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_253245E58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_253244E38(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for HomeDeviceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD6)
  {
    goto LABEL_17;
  }

  if (a2 + 42 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 42) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 42;
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

      return (*a1 | (v4 << 8)) - 42;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 42;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2B;
  v8 = v6 - 43;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeDeviceType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 42 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 42) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD6)
  {
    v4 = 0;
  }

  if (a2 > 0xD5)
  {
    v5 = ((a2 - 214) >> 8) + 1;
    *result = a2 + 42;
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
    *result = a2 + 42;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_253245FD8()
{
  result = qword_27F5A38E0;
  if (!qword_27F5A38E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5A38E0);
  }

  return result;
}

unint64_t sub_25324602C(uint64_t a1, uint64_t a2)
{
  v2 = sub_253CD1138();

  if (v2 >= 0x2B)
  {
    return 43;
  }

  else
  {
    return v2;
  }
}

uint64_t getEnumTagSinglePayload for HomeError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD0)
  {
    goto LABEL_17;
  }

  if (a2 + 48 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 48) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 48;
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

      return (*a1 | (v4 << 8)) - 48;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 48;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x31;
  v8 = v6 - 49;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 48 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 48) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD0)
  {
    v4 = 0;
  }

  if (a2 > 0xCF)
  {
    v5 = ((a2 - 208) >> 8) + 1;
    *result = a2 + 48;
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
    *result = a2 + 48;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2532461D0(char a1)
{
  result = 0x6544737365636361;
  switch(a1)
  {
    case 1:
    case 16:
    case 22:
      return 0xD000000000000016;
    case 2:
    case 15:
    case 23:
    case 30:
      v3 = 5;
      goto LABEL_27;
    case 3:
      v3 = 11;
      goto LABEL_27;
    case 4:
    case 32:
    case 42:
    case 46:
      return 0xD00000000000001CLL;
    case 5:
      return 0x6F4C656369766564;
    case 6:
      return 0x4D6E696274737564;
    case 7:
      return 0x466E696274737564;
    case 8:
      return 0xD000000000000010;
    case 9:
      return 0x6574746142776F6CLL;
    case 10:
      return 0x694D646150706F6DLL;
    case 11:
    case 20:
      return 0xD000000000000014;
    case 12:
      return 0xD000000000000013;
    case 13:
      return 0xD000000000000010;
    case 14:
    case 24:
    case 25:
      return 0xD000000000000011;
    case 17:
    case 40:
    case 41:
    case 48:
      return 0xD000000000000017;
    case 18:
    case 19:
    case 29:
      return 0xD000000000000012;
    case 21:
      return 0xD000000000000010;
    case 26:
      return 0xD000000000000010;
    case 27:
      return 0x6E61547265746177;
    case 28:
      return 0xD000000000000010;
    case 31:
    case 34:
    case 37:
      return 0xD00000000000002ELL;
    case 33:
      return 0xD000000000000018;
    case 35:
      return 0xD00000000000001FLL;
    case 36:
      return 0xD000000000000020;
    case 38:
      return 0xD000000000000025;
    case 39:
      return 0xD000000000000028;
    case 43:
      v3 = 9;
LABEL_27:
      result = v3 | 0xD000000000000010;
      break;
    case 44:
      result = 0x6C616E7265746E69;
      break;
    case 45:
      result = 0xD000000000000010;
      break;
    case 47:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_253246658(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_2532461D0(*a1);
  v5 = v4;
  if (v3 == sub_2532461D0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_253CD1118();
  }

  return v8 & 1;
}

uint64_t sub_2532466E0()
{
  v1 = *v0;
  sub_253CD11C8();
  sub_2532461D0(v1);
  sub_253CD09A8();

  return sub_253CD11E8();
}

uint64_t sub_253246744(uint64_t a1)
{
  sub_2532461D0(*v1);
  sub_253CD09A8();
}

uint64_t sub_253246798()
{
  v1 = *v0;
  sub_253CD11C8();
  sub_2532461D0(v1);
  sub_253CD09A8();

  return sub_253CD11E8();
}

unint64_t sub_2532467F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2532468B8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_253246828@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2532461D0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_253246858()
{
  result = qword_27F5A38E8;
  if (!qword_27F5A38E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5A38E8);
  }

  return result;
}

unint64_t sub_2532468B8(uint64_t a1, uint64_t a2)
{
  v2 = sub_253CD1138();

  if (v2 >= 0x31)
  {
    return 49;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25324690C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2532168A0(a3, v25 - v10, qword_27F5A2C48, &unk_253D48880);
  v12 = sub_253CD0B58();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_253206054(v11, qword_27F5A2C48, &unk_253D48880);
  }

  else
  {
    sub_253CD0B48();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_253CD0AB8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_253CD0988() + 32;
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

      sub_253206054(a3, qword_27F5A2C48, &unk_253D48880);

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

  sub_253206054(a3, qword_27F5A2C48, &unk_253D48880);
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

uint64_t sub_253246C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2532168A0(a3, v25 - v10, qword_27F5A2C48, &unk_253D48880);
  v12 = sub_253CD0B58();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_253206054(v11, qword_27F5A2C48, &unk_253D48880);
  }

  else
  {
    sub_253CD0B48();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_253CD0AB8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_253CD0988() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3938, &qword_253D4A338);
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

      sub_253206054(a3, qword_27F5A2C48, &unk_253D48880);

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

  sub_253206054(a3, qword_27F5A2C48, &unk_253D48880);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3938, &qword_253D4A338);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_253246F20()
{
  result = sub_253CD0938();
  qword_281532BE8 = result;
  return result;
}

uint64_t sub_253246F58()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  __swift_destroy_boxed_opaque_existential_0((v0 + 112));
  __swift_destroy_boxed_opaque_existential_0((v0 + 152));
  sub_253206054(v0 + 192, &qword_27F5A3630, &unk_253D49680);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_25324701C()
{
  v1[7] = v0;
  v1[8] = *v0;
  v2 = sub_253CD07E8();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = type metadata accessor for CascadeIndexer.CascadeIndexingSession(0);
  v1[14] = swift_task_alloc();
  v3 = sub_253CD0738();
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2532471A8, v0, 0);
}

uint64_t sub_2532471A8()
{
  if (qword_2815314E0 != -1)
  {
    swift_once();
  }

  v1 = sub_253CD0768();
  __swift_project_value_buffer(v1, qword_281532BF8);
  sub_253CD0728();
  v2 = sub_253CD0758();
  v3 = sub_253CD0D58();
  if (sub_253CD0DA8())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_253CD0718();
    _os_signpost_emit_with_name_impl(&dword_2531F8000, v2, v3, v5, "CascadeIndexer.indexAllHomes.signpost", "", v4, 2u);
    MEMORY[0x259C040E0](v4, -1, -1);
  }

  v6 = v0[17];
  v7 = v0[18];
  v8 = v0[15];
  v9 = v0[16];

  (*(v9 + 16))(v6, v7, v8);
  sub_253CD07A8();
  swift_allocObject();
  v0[19] = sub_253CD0798();
  (*(v9 + 8))(v7, v8);
  v10 = swift_task_alloc();
  v0[20] = v10;
  *v10 = v0;
  v10[1] = sub_25324738C;
  v11 = v0[14];

  return sub_253247F44(v11);
}

uint64_t sub_25324738C()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_253247A7C;
  }

  else
  {
    v4 = sub_2532474B8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2532474B8()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[7];
  v4 = *(v3 + 136);
  v5 = __swift_project_boxed_opaque_existential_0((v3 + 112), v4);
  v6 = *(v4 - 8);
  v7 = swift_task_alloc();
  (*(v6 + 16))(v7, v5, v4);
  v8 = *v7;
  v0[22] = *v7;
  v9 = *(v6 + 8);
  v10 = v8;
  v9(v7, v4);

  v0[5] = v2;
  v0[6] = &off_2864FBEB8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  sub_2532515B0(v1, boxed_opaque_existential_0, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
  v12 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  v13 = swift_task_alloc();
  v0[23] = v13;
  *v13 = v0;
  v13[1] = sub_253247678;

  return sub_253250F9C(v10, v12);
}

uint64_t sub_253247678()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *v0;

  __swift_destroy_boxed_opaque_existential_0((v1 + 16));
  v4 = swift_task_alloc();
  *(v1 + 192) = v4;
  *v4 = v3;
  v4[1] = sub_2532477D8;

  return sub_253248480();
}

uint64_t sub_2532477D8()
{
  v1 = *(*v0 + 56);

  return MEMORY[0x2822009F8](sub_2532478E8, v1, 0);
}

uint64_t sub_2532478E8()
{
  sub_253211D58(v0[8], &off_2864FBD60);
  v1 = sub_253CD07C8();
  v2 = sub_253CD0C78();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[14];
  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[10];
  if (v3)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2531F8000, v1, v2, "Finished marking the cascade donation as complete", v8, 2u);
    MEMORY[0x259C040E0](v8, -1, -1);
  }

  (*(v7 + 8))(v5, v6);
  sub_253251550(v4, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
  sub_253247C68("CascadeIndexer.indexAllHomes.signpost", 37, 2, v0[19]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_253247A7C()
{
  v1 = v0[21];
  sub_253211D58(v0[8], &off_2864FBD60);
  v2 = v1;
  v3 = sub_253CD07C8();
  v4 = sub_253CD0C98();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[21];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2531F8000, v3, v4, "Error occurred during cascade donation: %@", v7, 0xCu);
    sub_253206054(v8, &qword_27F5A2AC8, &qword_253D48890);
    MEMORY[0x259C040E0](v8, -1, -1);
    MEMORY[0x259C040E0](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[10] + 8))(v0[11], v0[9]);
  sub_253247C68("CascadeIndexer.indexAllHomes.signpost", 37, 2, v0[19]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_253247C68(const char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v20 = a3;
  v5 = sub_253CD0778();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_253CD0738();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2815314E0 != -1)
  {
    swift_once();
  }

  v13 = sub_253CD0768();
  __swift_project_value_buffer(v13, qword_281532BF8);
  v14 = sub_253CD0758();
  sub_253CD0788();
  v19 = sub_253CD0D48();
  result = sub_253CD0DA8();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v20 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      sub_253CD07B8();

      if ((*(v6 + 88))(v8, v5) == *MEMORY[0x277D85B00])
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v16 = "";
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = sub_253CD0718();
      _os_signpost_emit_with_name_impl(&dword_2531F8000, v14, v19, v18, a1, v16, v17, 2u);
      MEMORY[0x259C040E0](v17, -1, -1);
LABEL_15:

      return (*(v10 + 8))(v12, v9);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v21;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_253247F44(uint64_t a1)
{
  v1[19] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3920, &qword_253D4A318);
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_253248010, 0, 0);
}

uint64_t sub_253248010()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v4 = v0[21];
  v5 = v0[22];
  v6 = v0[20];
  v10 = objc_opt_self();
  sub_253200644(0, &qword_27F5A3928, 0x277CF9500);
  v7 = sub_253CD0A38();
  v1[23] = v7;
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_253248220;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  sub_253200644(0, &qword_27F5A3930, 0x277CF94B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A2E90, &qword_253D4A320);
  sub_253CD0AC8();
  (*(v4 + 32))(boxed_opaque_existential_0, v5, v6);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_253249B94;
  v1[13] = &block_descriptor_7;
  [v10 fullSetDonationWithItemType:7690 descriptors:v7 completion:?];
  (*(v4 + 8))(boxed_opaque_existential_0, v6);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_253248220()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_253248404;
  }

  else
  {
    v2 = sub_253248330;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_253248330()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  *v2 = v1;
  type metadata accessor for CascadeIndexer.CascadeIndexingSession(0);
  sub_253CD0968();
  type metadata accessor for CascadeIndexer();
  sub_25324876C();
  sub_253CD07D8();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_253248404()
{
  v1 = *(v0 + 184);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_253248480()
{
  *(v1 + 24) = v0;

  return MEMORY[0x2822009F8](sub_253248510, 0, 0);
}

uint64_t sub_253248510()
{
  v1 = **(v0 + 24);
  *(v0 + 16) = 0;
  v2 = [v1 finish_];
  v3 = *(v0 + 16);
  if (v2)
  {
    type metadata accessor for CascadeIndexer.CascadeIndexingSession(0);
    v4 = v3;
    v5 = sub_253CD07C8();
    v6 = sub_253CD0C78();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2531F8000, v5, v6, "Successfully finished donating items to Cascade", v7, 2u);
      MEMORY[0x259C040E0](v7, -1, -1);
    }

    goto LABEL_6;
  }

  v8 = v3;
  v9 = sub_253CCFE18();

  swift_willThrow();
  type metadata accessor for CascadeIndexer.CascadeIndexingSession(0);
  v10 = v9;
  v5 = sub_253CD07C8();
  v11 = sub_253CD0C98();

  if (os_log_type_enabled(v5, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v9;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_2531F8000, v5, v11, "Error occurred while trying to finish the cascade indexing session: %@", v12, 0xCu);
    sub_253206054(v13, &qword_27F5A2AC8, &qword_253D48890);
    MEMORY[0x259C040E0](v13, -1, -1);
    MEMORY[0x259C040E0](v12, -1, -1);

LABEL_6:
    goto LABEL_8;
  }

LABEL_8:
  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_25324876C()
{
  swift_getMetatypeMetadata();
  v0 = sub_253CD0978();
  MEMORY[0x259C00940](v0);

  return 0x2E786F626C6F6F54;
}

uint64_t sub_2532487D8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v6[-v2];
  if (v0[29])
  {

    sub_253CD0BA8();
  }

  sub_253248F34();
  __swift_project_boxed_opaque_existential_0(v0 + 19, v0[22]);
  sub_253CD0B28();
  v4 = sub_253CD0B58();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v7[3] = swift_getAssociatedTypeWitness();
  v7[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v7);

  sub_253CD0188();

  sub_253206054(v3, qword_27F5A2C48, &unk_253D48880);
  swift_beginAccess();
  sub_253233C14(v7, (v0 + 24));
  return swift_endAccess();
}

uint64_t sub_2532489D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25322842C;

  return sub_25324701C();
}

uint64_t sub_253248A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_253CD07E8();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_253248B28, 0, 0);
}

uint64_t sub_253248B28()
{
  sub_253211D58(v0[6], &off_2864FBD60);
  v1 = sub_253CD07C8();
  v2 = sub_253CD0C78();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2531F8000, v1, v2, "Full donation of the home graph requested", v3, 2u);
    MEMORY[0x259C040E0](v3, -1, -1);
  }

  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];

  (*(v5 + 8))(v4, v6);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_253248CAC, Strong, 0);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_253248CAC()
{
  sub_2532487D8();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_253248F34()
{
  v1 = (v0 + 24);
  v2 = *v0;
  v3 = sub_253CD07E8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  sub_2532168A0(v1, &v12, &qword_27F5A3630, &unk_253D49680);
  if (!*(&v13 + 1))
  {
    return sub_253206054(&v12, &qword_27F5A3630, &unk_253D49680);
  }

  sub_2531FF170(&v12, v15);
  sub_253211D58(v2, &off_2864FBD60);
  v7 = sub_253CD07C8();
  v8 = sub_253CD0C78();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2531F8000, v7, v8, "Cancelling the debounce timer", v9, 2u);
    MEMORY[0x259C040E0](v9, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  __swift_project_boxed_opaque_existential_0(v15, v15[3]);
  sub_253CD0308();
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  swift_beginAccess();
  sub_253233C14(&v12, v1);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0(v15);
}

uint64_t sub_25324918C()
{
  sub_253248F34();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_253249224;

  return sub_253249318();
}

uint64_t sub_253249224()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_253249318()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2532493B4, v0, 0);
}

uint64_t sub_2532493B4()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_253CD0B58();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  v6 = sub_25324690C(0, 0, v1, &unk_253D4A228, v5);
  v0[4] = v6;
  *(v2 + 232) = v6;

  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_25324953C;
  v8 = MEMORY[0x277D84A98];
  v9 = MEMORY[0x277D84AC0];
  v10 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200440](v0 + 6, v6, v10, v8, v9);
}

uint64_t sub_25324953C()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_25324964C, v1, 0);
}

uint64_t sub_25324964C()
{
  v1 = *(v0 + 16);

  *(v1 + 232) = 0;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2532496E4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_25324979C, Strong, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_25324979C()
{
  v1 = v0[6];
  v2 = *(v1 + 136);
  v3 = __swift_project_boxed_opaque_existential_0((v1 + 112), v2);
  v4 = *(v2 - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v3, v2);
  v0[7] = *(v5 + 8);
  v6 = *(v4 + 8);

  v6(v5, v2);

  v11 = (*MEMORY[0x277D0EF80] + MEMORY[0x277D0EF80]);

  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_253249938;
  v8 = v0[6];
  v9 = MEMORY[0x277D84F78] + 8;

  return v11(&unk_253D4A250, v8, v9);
}

uint64_t sub_253249938(uint64_t a1)
{

  return MEMORY[0x2822009F8](sub_253249A80, 0, 0);
}

uint64_t sub_253249A80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_253249AE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25320C438;

  return sub_2532496C4(a1, v4, v5, v6);
}

void sub_253249B94(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3920, &qword_253D4A318);
    sub_253CD0AD8();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3920, &qword_253D4A318);
    sub_253CD0AE8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_253249C44(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for RoomEntity(0);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_253249D3C, 0, 0);
}

uint64_t sub_253249D3C()
{
  v45 = v0;
  v44[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 88);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v42 = v5;
    do
    {
      v7 = *(v0 + 104);
      v8 = *(v0 + 80);
      sub_2532515B0(v4, v7, type metadata accessor for RoomEntity);
      *(v0 + 40) = v8;
      *(v0 + 48) = &off_2864FBAA8;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
      sub_2532515B0(v7, boxed_opaque_existential_0, type metadata accessor for RoomEntity);
      __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
      v10 = sub_253241E74();
      if (v10)
      {
        v11 = v10;
        v12 = **(v0 + 72);
        *(v0 + 56) = 0;
        v13 = [v12 registerItem:v11 error:v0 + 56];
        v14 = *(v0 + 56);
        v15 = *(v0 + 104);
        if (!v13)
        {
          v31 = v14;
          v32 = sub_253CCFE18();

          swift_willThrow();
          sub_253251550(v15, type metadata accessor for RoomEntity);
          __swift_destroy_boxed_opaque_existential_0((v0 + 16));
          type metadata accessor for CascadeIndexer.CascadeIndexingSession(0);
          v33 = v32;
          v34 = sub_253CD07C8();
          v35 = sub_253CD0C98();

          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            *v36 = 138412290;
            v38 = v32;
            v39 = _swift_stdlib_bridgeErrorToNSError();
            *(v36 + 4) = v39;
            *v37 = v39;
            _os_log_impl(&dword_2531F8000, v34, v35, "Could not donate entities to cascade: %@", v36, 0xCu);
            sub_253206054(v37, &qword_27F5A2AC8, &qword_253D48890);
            MEMORY[0x259C040E0](v37, -1, -1);
            MEMORY[0x259C040E0](v36, -1, -1);
          }

          else
          {
          }

          break;
        }

        v16 = v14;
        sub_253251550(v15, type metadata accessor for RoomEntity);

        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      }

      else
      {
        v18 = *(v0 + 96);
        v17 = *(v0 + 104);
        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        type metadata accessor for CascadeIndexer.CascadeIndexingSession(0);
        sub_2532515B0(v17, v18, type metadata accessor for RoomEntity);
        v19 = sub_253CD07C8();
        v20 = sub_253CD0C98();
        v21 = os_log_type_enabled(v19, v20);
        v23 = *(v0 + 96);
        v22 = *(v0 + 104);
        if (v21)
        {
          v43 = *(v0 + 104);
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v44[0] = v25;
          *v24 = 136315138;
          v26 = sub_253CD00F8();
          v28 = v27;
          sub_253251550(v23, type metadata accessor for RoomEntity);
          v29 = sub_253277BA8(v26, v28, v44);

          *(v24 + 4) = v29;
          _os_log_impl(&dword_2531F8000, v19, v20, "Unable to create CascadeItem for %s)", v24, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v25);
          MEMORY[0x259C040E0](v25, -1, -1);
          v30 = v24;
          v5 = v42;
          MEMORY[0x259C040E0](v30, -1, -1);

          v6 = v43;
        }

        else
        {

          sub_253251550(v23, type metadata accessor for RoomEntity);
          v6 = v22;
        }

        sub_253251550(v6, type metadata accessor for RoomEntity);
      }

      v4 += v5;
      --v2;
    }

    while (v2);
  }

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_25324A1C4(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for ZoneEntity(0);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25324A2BC, 0, 0);
}

uint64_t sub_25324A2BC()
{
  v45 = v0;
  v44[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 88);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v42 = v5;
    do
    {
      v7 = *(v0 + 104);
      v8 = *(v0 + 80);
      sub_2532515B0(v4, v7, type metadata accessor for ZoneEntity);
      *(v0 + 40) = v8;
      *(v0 + 48) = &off_2864FBB08;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
      sub_2532515B0(v7, boxed_opaque_existential_0, type metadata accessor for ZoneEntity);
      __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
      v10 = sub_2532437EC();
      if (v10)
      {
        v11 = v10;
        v12 = **(v0 + 72);
        *(v0 + 56) = 0;
        v13 = [v12 registerItem:v11 error:v0 + 56];
        v14 = *(v0 + 56);
        v15 = *(v0 + 104);
        if (!v13)
        {
          v31 = v14;
          v32 = sub_253CCFE18();

          swift_willThrow();
          sub_253251550(v15, type metadata accessor for ZoneEntity);
          __swift_destroy_boxed_opaque_existential_0((v0 + 16));
          type metadata accessor for CascadeIndexer.CascadeIndexingSession(0);
          v33 = v32;
          v34 = sub_253CD07C8();
          v35 = sub_253CD0C98();

          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            *v36 = 138412290;
            v38 = v32;
            v39 = _swift_stdlib_bridgeErrorToNSError();
            *(v36 + 4) = v39;
            *v37 = v39;
            _os_log_impl(&dword_2531F8000, v34, v35, "Could not donate entities to cascade: %@", v36, 0xCu);
            sub_253206054(v37, &qword_27F5A2AC8, &qword_253D48890);
            MEMORY[0x259C040E0](v37, -1, -1);
            MEMORY[0x259C040E0](v36, -1, -1);
          }

          else
          {
          }

          break;
        }

        v16 = v14;
        sub_253251550(v15, type metadata accessor for ZoneEntity);

        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      }

      else
      {
        v18 = *(v0 + 96);
        v17 = *(v0 + 104);
        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        type metadata accessor for CascadeIndexer.CascadeIndexingSession(0);
        sub_2532515B0(v17, v18, type metadata accessor for ZoneEntity);
        v19 = sub_253CD07C8();
        v20 = sub_253CD0C98();
        v21 = os_log_type_enabled(v19, v20);
        v23 = *(v0 + 96);
        v22 = *(v0 + 104);
        if (v21)
        {
          v43 = *(v0 + 104);
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v44[0] = v25;
          *v24 = 136315138;
          v26 = sub_253CD00F8();
          v28 = v27;
          sub_253251550(v23, type metadata accessor for ZoneEntity);
          v29 = sub_253277BA8(v26, v28, v44);

          *(v24 + 4) = v29;
          _os_log_impl(&dword_2531F8000, v19, v20, "Unable to create CascadeItem for %s)", v24, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v25);
          MEMORY[0x259C040E0](v25, -1, -1);
          v30 = v24;
          v5 = v42;
          MEMORY[0x259C040E0](v30, -1, -1);

          v6 = v43;
        }

        else
        {

          sub_253251550(v23, type metadata accessor for ZoneEntity);
          v6 = v22;
        }

        sub_253251550(v6, type metadata accessor for ZoneEntity);
      }

      v4 += v5;
      --v2;
    }

    while (v2);
  }

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_25324A744(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for SceneEntity(0);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25324A83C, 0, 0);
}

uint64_t sub_25324A83C()
{
  v45 = v0;
  v44[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 88);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v42 = v5;
    do
    {
      v7 = *(v0 + 104);
      v8 = *(v0 + 80);
      sub_2532515B0(v4, v7, type metadata accessor for SceneEntity);
      *(v0 + 40) = v8;
      *(v0 + 48) = &off_2864FBAD8;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
      sub_2532515B0(v7, boxed_opaque_existential_0, type metadata accessor for SceneEntity);
      __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
      v10 = sub_253242DD0();
      if (v10)
      {
        v11 = v10;
        v12 = **(v0 + 72);
        *(v0 + 56) = 0;
        v13 = [v12 registerItem:v11 error:v0 + 56];
        v14 = *(v0 + 56);
        v15 = *(v0 + 104);
        if (!v13)
        {
          v31 = v14;
          v32 = sub_253CCFE18();

          swift_willThrow();
          sub_253251550(v15, type metadata accessor for SceneEntity);
          __swift_destroy_boxed_opaque_existential_0((v0 + 16));
          type metadata accessor for CascadeIndexer.CascadeIndexingSession(0);
          v33 = v32;
          v34 = sub_253CD07C8();
          v35 = sub_253CD0C98();

          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            *v36 = 138412290;
            v38 = v32;
            v39 = _swift_stdlib_bridgeErrorToNSError();
            *(v36 + 4) = v39;
            *v37 = v39;
            _os_log_impl(&dword_2531F8000, v34, v35, "Could not donate entities to cascade: %@", v36, 0xCu);
            sub_253206054(v37, &qword_27F5A2AC8, &qword_253D48890);
            MEMORY[0x259C040E0](v37, -1, -1);
            MEMORY[0x259C040E0](v36, -1, -1);
          }

          else
          {
          }

          break;
        }

        v16 = v14;
        sub_253251550(v15, type metadata accessor for SceneEntity);

        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      }

      else
      {
        v18 = *(v0 + 96);
        v17 = *(v0 + 104);
        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        type metadata accessor for CascadeIndexer.CascadeIndexingSession(0);
        sub_2532515B0(v17, v18, type metadata accessor for SceneEntity);
        v19 = sub_253CD07C8();
        v20 = sub_253CD0C98();
        v21 = os_log_type_enabled(v19, v20);
        v23 = *(v0 + 96);
        v22 = *(v0 + 104);
        if (v21)
        {
          v43 = *(v0 + 104);
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v44[0] = v25;
          *v24 = 136315138;
          v26 = sub_253CD00F8();
          v28 = v27;
          sub_253251550(v23, type metadata accessor for SceneEntity);
          v29 = sub_253277BA8(v26, v28, v44);

          *(v24 + 4) = v29;
          _os_log_impl(&dword_2531F8000, v19, v20, "Unable to create CascadeItem for %s)", v24, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v25);
          MEMORY[0x259C040E0](v25, -1, -1);
          v30 = v24;
          v5 = v42;
          MEMORY[0x259C040E0](v30, -1, -1);

          v6 = v43;
        }

        else
        {

          sub_253251550(v23, type metadata accessor for SceneEntity);
          v6 = v22;
        }

        sub_253251550(v6, type metadata accessor for SceneEntity);
      }

      v4 += v5;
      --v2;
    }

    while (v2);
  }

  v40 = *(v0 + 8);

  return v40();
}