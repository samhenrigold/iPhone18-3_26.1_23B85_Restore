uint64_t sub_2297A342C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5A0, &qword_22A582190);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v10 - 8);
  v33 = &v31 - v11;
  v12 = sub_22A4DD07C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v4;
  sub_229541CB0(v4, &off_283CE49C8);
  v16 = sub_22A4DD05C();
  v17 = sub_22A4DDCCC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v32 = v7;
    v19 = v6;
    v20 = v9;
    v21 = a1;
    v22 = v18;
    *v18 = 0;
    _os_log_impl(&dword_229538000, v16, v17, "Registering for primary resident changes", v18, 2u);
    v23 = v22;
    a1 = v21;
    v9 = v20;
    v6 = v19;
    v7 = v32;
    MEMORY[0x22AAD4E50](v23, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
  v24 = sub_22A4DDE5C();
  v25 = sub_22A4DD9DC();
  v26 = v33;
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v27 = swift_allocObject();
  swift_weakInit();
  sub_2295FE8C0(a1, v9);
  v28 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v24;
  v29[5] = v27;
  sub_2295FE930(v9, v29 + v28);
  *(v29 + ((v7 + v28 + 7) & 0xFFFFFFFFFFFFFFF8)) = v34;
  v2[3] = sub_22957F3C0(0, 0, v26, &unk_22A583028, v29);
}

uint64_t sub_2297A37B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[18] = a6;
  v7[19] = a7;
  v7[16] = a4;
  v7[17] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DCF0, &unk_22A57A560);
  v7[20] = v8;
  v7[21] = *(v8 - 8);
  v7[22] = swift_task_alloc();
  v9 = sub_22A4DD07C();
  v7[23] = v9;
  v7[24] = *(v9 - 8);
  v7[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBB0, &unk_22A57CD50);
  v7[26] = swift_task_alloc();
  v10 = sub_22A4DDE4C();
  v7[27] = v10;
  v7[28] = *(v10 - 8);
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297A3978, 0, 0);
}

uint64_t sub_2297A3978()
{

  sub_22A4DDE3C();
  swift_beginAccess();
  v1 = sub_2295F39B0();
  v2 = swift_task_alloc();
  v0[30] = v2;
  *v2 = v0;
  v2[1] = sub_2297A3A4C;
  v3 = v0[26];
  v4 = v0[27];

  return MEMORY[0x282200308](v3, v4, v1);
}

uint64_t sub_2297A3A4C()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_2295FE7D4;
  }

  else
  {
    v2 = sub_2297A3B60;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2297A3B7C()
{
  v1 = v0[26];
  v2 = sub_22A4DB21C();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[28] + 8))(v0[29], v0[27]);
LABEL_10:

    v19 = v0[1];

    return v19();
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v18 = v0[26];
    (*(v0[28] + 8))(v0[29], v0[27]);
    sub_2295F3A08(v18);
    goto LABEL_10;
  }

  v4 = Strong;
  sub_229541CB0(v0[19], &off_283CE49C8);
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCCC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_229538000, v5, v6, "Received HMDPrimaryResidentChangeMonitorConfirmedDeviceIdentifierChange", v7, 2u);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  v8 = v0[25];
  v9 = v0[23];
  v10 = v0[24];
  v12 = v0[21];
  v11 = v0[22];
  v13 = v0[19];
  v21 = v0[20];
  v22 = v0[26];

  (*(v10 + 8))(v8, v9);
  v0[5] = v13;
  v0[6] = &off_283CE49E0;
  v0[2] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5A0, &qword_22A582190);
  sub_22957F1C4((v0 + 2), (v0 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D610, &qword_22A578AD8);
  sub_22A4DDA0C();
  (*(v12 + 8))(v11, v21);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_2295F3A08(v22);
  v14 = sub_2295F39B0();
  v15 = swift_task_alloc();
  v0[30] = v15;
  *v15 = v0;
  v15[1] = sub_2297A3A4C;
  v16 = v0[26];
  v17 = v0[27];

  return MEMORY[0x282200308](v16, v17, v14);
}

uint64_t sub_2297A3ECC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5A0, &qword_22A582190) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_229569B30;

  return sub_2297A37B8(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_2297A4010(void *a1)
{
  v2 = [a1 isCurrentDevicePrimaryResident];
  v3 = [a1 homeManager];
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v3;
  v5 = [v3 capabilitiesController];

  if (v5)
  {
    v6 = [v5 currentResidentCapabilities];

    if (v6)
    {
      LODWORD(v5) = [v6 supportsDistributedExecutionOnPrimary];
      swift_unknownObjectRelease();
      return v2 & v5;
    }

LABEL_5:
    LODWORD(v5) = 0;
  }

  return v2 & v5;
}

uint64_t sub_2297A40D4(uint64_t a1, int a2)
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

uint64_t sub_2297A411C(uint64_t result, int a2, int a3)
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

uint64_t sub_2297A4178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = _s10SerializerVMa(0, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v18 - v11;
  v13 = *(v3 + 16);
  v22[0] = *v3;
  v22[1] = v13;
  v23 = *(v3 + 32);
  v14 = sub_2297E3C8C(v22, v18 - v11);
  (*(a3 + 32))(v12, a2, a3, v14);
  v15 = *(v9 + 36);
  v20 = AssociatedTypeWitness;
  v21 = AssociatedConformanceWitness;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1, &v12[v15], AssociatedTypeWitness);
  __swift_project_boxed_opaque_existential_0(v19, v20);
  v18[1] = swift_getDynamicType();
  v18[2] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D880FB0, &unk_22A5830F0);
  sub_22A4DD64C();
  sub_22A4DC48C();

  (*(v10 + 8))(v12, v9);
  return __swift_destroy_boxed_opaque_existential_0(v19);
}

void sub_2297A43C0()
{
  v1 = v0;
  if (qword_27D87BA10 != -1)
  {
    swift_once();
  }

  v2 = sub_22A4DD07C();
  __swift_project_value_buffer(v2, qword_27D8AB8C0);
  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDD0C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_229538000, v3, v4, "[STOP]", v5, 2u);
    MEMORY[0x22AAD4E50](v5, -1, -1);
  }

  v6 = *(v1 + 144);
  if (v6)
  {
    *(v1 + 144) = 0;
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = *(v1 + 136);
      v9 = v6 + 32;
      do
      {
        sub_2295404B0(v9, v11);
        __swift_project_boxed_opaque_existential_0(v11, v11[3]);
        v10 = sub_22A4DE5FC();
        __swift_destroy_boxed_opaque_existential_0(v11);
        [v8 removeObserver_];
        swift_unknownObjectRelease();
        v9 += 32;
        --v7;
      }

      while (v7);
    }
  }
}

uint64_t sub_2297A4544()
{
  if (qword_27D87BA10 != -1)
  {
    swift_once();
  }

  v1 = sub_22A4DD07C();
  __swift_project_value_buffer(v1, qword_27D8AB8C0);
  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDD0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_229538000, v2, v3, "[RETRIEVE]", v4, 2u);
    MEMORY[0x22AAD4E50](v4, -1, -1);
  }

  v5 = *(v0 + 8);
  v6 = MEMORY[0x277D84F90];

  return v5(v6);
}

uint64_t sub_2297A4660()
{
  MEMORY[0x22AAD4F90](v0 + 112);
  sub_2296B874C(v0 + 120);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2297A46D4()
{
  v0 = [swift_getObjCClassFromMetadata() logCategory];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    return sub_22A4DD08C();
  }

  else
  {
    sub_22A4DE1FC();

    v2 = [v0 description];
    v3 = sub_22A4DD5EC();
    v5 = v4;

    MEMORY[0x22AAD08C0](v3, v5);

    result = sub_22A4DE39C();
    __break(1u);
  }

  return result;
}

uint64_t sub_2297A4808(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v65 = sub_22A4DD26C();
  v70 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v69 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22A4DD29C();
  v67 = *(v8 - 8);
  v68 = v8;
  MEMORY[0x28223BE20](v8);
  v66 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881148, &qword_22A5832C0);
  v62 = *(v64 - 8);
  v10 = MEMORY[0x28223BE20](v64);
  v60 = v11;
  v61 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v59 = &v53 - v12;
  v13 = sub_22A4DD07C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v58 = swift_dynamicCastObjCClass();
  v63 = ObjectType;
  sub_2297A46D4();
  v17 = v3;
  v18 = a1;
  v19 = sub_22A4DD05C();
  v20 = sub_22A4DDCCC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v56 = v22;
    *v21 = 136315650;
    v71 = v22;
    aBlock = 91;
    v73 = 0xE100000000000000;
    v23 = [v17 logIdentifier];
    v24 = sub_22A4DD5EC();
    v57 = v17;
    v25 = v24;
    v55 = v13;
    v26 = a2;
    v28 = v27;

    MEMORY[0x22AAD08C0](v25, v28);
    a2 = v26;

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v29 = sub_2295A3E30(aBlock, v73, &v71);

    *(v21 + 4) = v29;
    *(v21 + 12) = 2080;
    if (v58)
    {
      v30 = 0x4D2065766974614ELL;
    }

    else
    {
      v30 = 0x7474614D2D504148;
    }

    if (v58)
    {
      v31 = 0xED00007265747461;
    }

    else
    {
      v31 = 0xEA00000000007265;
    }

    v32 = sub_2295A3E30(v30, v31, &v71);
    v17 = v57;

    *(v21 + 14) = v32;
    *(v21 + 22) = 2112;
    *(v21 + 24) = v18;
    v33 = v54;
    *v54 = v18;
    v34 = v18;
    _os_log_impl(&dword_229538000, v19, v20, "%s Converting %s accessory: %@", v21, 0x20u);
    sub_22953EAE4(v33, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v33, -1, -1);
    v35 = v56;
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v35, -1, -1);
    MEMORY[0x22AAD4E50](v21, -1, -1);

    (*(v14 + 8))(v16, v55);
  }

  else
  {

    (*(v14 + 8))(v16, v13);
  }

  v58 = [v17 workQueue];
  aBlock = a2;
  v36 = sub_229562F68(0, &qword_27D881150, off_278666188);
  v37 = a2;
  v38 = v59;
  MEMORY[0x22AACEC10](&aBlock, v36);
  v39 = v61;
  v40 = v62;
  v41 = v64;
  (*(v62 + 16))(v61, v38, v64);
  v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v43 = (v60 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  *(v44 + 16) = v17;
  *(v44 + 24) = v18;
  (*(v40 + 32))(v44 + v42, v39, v41);
  *(v44 + v43) = v63;
  v76 = sub_2297AD94C;
  v77 = v44;
  aBlock = MEMORY[0x277D85DD0];
  v73 = 1107296256;
  v74 = sub_22953E640;
  v75 = &block_descriptor_72;
  v45 = _Block_copy(&aBlock);
  v46 = v17;
  v47 = v18;
  v48 = v66;
  sub_22A4DD28C();
  v71 = MEMORY[0x277D84F90];
  sub_22953E260(&qword_281401CF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
  sub_229590C00(qword_281401CB0, &unk_27D87CEA0, &unk_22A577A40, MEMORY[0x277D83970]);
  v49 = v69;
  v50 = v65;
  sub_22A4DE03C();
  v51 = v58;
  MEMORY[0x22AAD0F80](0, v48, v49, v45);
  _Block_release(v45);

  (*(v70 + 8))(v49, v50);
  (*(v67 + 8))(v48, v68);
  (*(v40 + 8))(v38, v41);
}

id sub_2297A4F88(void *a1)
{
  v2 = v1;
  v4 = sub_22A4DD26C();
  v47 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v46 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22A4DD29C();
  v45 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v44 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_userPresenceSubscriptionManager);
  if (v8)
  {
    v43 = v4;
    v9 = *(v8 + OBJC_IVAR____TtC13HomeKitDaemon37UserPresenceUpdateSubscriptionManager_messageDispatcher);
    v10 = v2;
    v11 = v6;
    v12 = sub_22A4DD10C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
    v13 = swift_allocObject();
    v42 = a1;
    v14 = v13;
    v41 = xmmword_22A576190;
    *(v13 + 16) = xmmword_22A576190;
    v15 = objc_opt_self();
    *(v14 + 32) = [v15 policyWithEntitlements_];
    sub_229562F68(0, qword_281401B40, 0x277D0F838);
    v16 = sub_22A4DD81C();

    [v9 registerForMessage:v12 receiver:v8 policies:v16 selector:sel_handleSubscribeMessage_];

    v6 = v11;
    v2 = v10;

    v17 = sub_22A4DD11C();
    v18 = swift_allocObject();
    *(v18 + 16) = v41;
    *(v18 + 32) = [v15 policyWithEntitlements_];
    v19 = sub_22A4DD81C();

    v20 = v9;
    v4 = v43;
    [v20 registerForMessage:v17 receiver:v8 policies:v19 selector:sel_handleUnsubscribeMessage_];

    a1 = v42;
    v21 = [objc_opt_self() defaultCenter];
    [v21 addObserver:v8 selector:sel_handleHomePresenceUpdateNotification_ name:@"HMDHomePresenceUpdateNotification" object:0];
  }

  v22 = [a1 remoteEventRouterClientController];
  if (v22)
  {
    v23 = v22;
    result = [a1 msgDispatcher];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v25 = result;
    sub_229669FAC(result, v23);
  }

  v26 = [objc_msgSend(a1 featuresDataSource)];
  result = swift_unknownObjectRelease();
  if (v26)
  {
    v27 = [a1 workQueue];
    v28 = [objc_allocWithZone(type metadata accessor for HindsightCloudShareManagerEnergyKitDataSource()) init];
    v29 = objc_allocWithZone(HMDHomeHindsightCloudShareManager);
    v30 = a1;
    v31 = [v29 initWithHome:v30 workQueue:v27 dataSource:v28];

    v32 = OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_energyKitHindsightCloudShareManager;
    v33 = *(v2 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_energyKitHindsightCloudShareManager);
    *(v2 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_energyKitHindsightCloudShareManager) = v31;

    v34 = [v30 workQueue];
    v35 = *(v2 + v32);
    v36 = swift_allocObject();
    *(v36 + 16) = v35;
    aBlock[4] = sub_2297AD934;
    aBlock[5] = v36;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22953E640;
    aBlock[3] = &block_descriptor_66;
    v37 = _Block_copy(aBlock);
    v38 = v35;
    v39 = v44;
    sub_22A4DD28C();
    v48 = MEMORY[0x277D84F90];
    sub_22953E260(&qword_281401CF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
    sub_229590C00(qword_281401CB0, &unk_27D87CEA0, &unk_22A577A40, MEMORY[0x277D83970]);
    v40 = v46;
    sub_22A4DE03C();
    MEMORY[0x22AAD0F80](0, v39, v40, v37);
    _Block_release(v37);

    (*(v47 + 8))(v40, v4);
    (*(v45 + 8))(v39, v6);
  }

  return result;
}

id sub_2297A5708(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = _s22DefaultSwiftExtensionsCMa_0();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_2297A588C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v1 - 8);
  v61 = &v47 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881098, &qword_22A583220);
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x28223BE20](v3);
  v52 = &v47 - v4;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8810A0, &qword_22A583228);
  v56 = *(v58 - 8);
  v5 = *(v56 + 64);
  v6 = MEMORY[0x28223BE20](v58);
  v57 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v59 = &v47 - v7;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8810A8, &qword_22A583230);
  v8 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v10 = &v47 - v9;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8810B0, &qword_22A583238);
  v55 = *(v60 - 8);
  v11 = *(v55 + 64);
  v12 = MEMORY[0x28223BE20](v60);
  v51 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v47 - v13;
  v15 = sub_22A4DD2FC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (&v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v18 = [v0 workQueue];
  (*(v16 + 104))(v18, *MEMORY[0x277D85200], v15);
  v19 = sub_22A4DD31C();
  (*(v16 + 8))(v18, v15);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v20 = [objc_msgSend(v0 featuresDataSource)];
  swift_unknownObjectRelease();
  v21 = v0;
  if (!v20)
  {
    goto LABEL_10;
  }

  v22 = [v0 swiftExtensions];
  if (!v22)
  {
    goto LABEL_14;
  }

  v23 = v22;
  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v24 = *&v23[OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_primaryResidentNetworkInfoUpdateTask];

  swift_unknownObjectRelease();
  if (v24)
  {
    sub_22A4DDA7C();
  }

  v25 = [v0 swiftExtensions];
  if (!v25)
  {
    goto LABEL_16;
  }

  v49 = v25;
  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
LABEL_17:
    __break(1u);
    return;
  }

  v26 = *MEMORY[0x277D85778];
  (*(v8 + 104))(v10, v26, v50);
  v48 = v14;
  sub_22A4DDA6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8810B8, &qword_22A583240);
  (*(v53 + 104))(v52, v26, v54);
  v27 = v59;
  sub_22A4DDA6C();
  v28 = sub_22A4DD9DC();
  (*(*(v28 - 8) + 56))(v61, 1, 1, v28);
  v54 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = v55;
  v30 = v51;
  (*(v55 + 16))(v51, v14, v60);
  v31 = v56;
  v32 = v57;
  v33 = v27;
  v34 = v58;
  (*(v56 + 16))(v57, v33, v58);
  v35 = v21;
  v36 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v37 = (v11 + *(v31 + 80) + v36) & ~*(v31 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  v39 = v38 + v36;
  v21 = v35;
  v40 = v60;
  (*(v29 + 32))(v39, v30, v60);
  (*(v31 + 32))(v38 + v37, v32, v34);
  *(v38 + ((v5 + v37 + 7) & 0xFFFFFFFFFFFFFFF8)) = v54;
  v41 = sub_22957F3C0(0, 0, v61, &unk_22A583250, v38);
  (*(v31 + 8))(v59, v34);
  (*(v29 + 8))(v48, v40);
  *&v49[OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_primaryResidentNetworkInfoUpdateTask] = v41;
  swift_unknownObjectRelease();

LABEL_10:
  sub_2296F6028();
  v42 = [v21 homeActivityStateManager];
  if (v42)
  {
    v43 = v42;
    v44 = swift_allocObject();
    *(v44 + 16) = v21;
    aBlock[4] = sub_2297AD664;
    aBlock[5] = v44;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22953E640;
    aBlock[3] = &block_descriptor_37_1;
    v45 = _Block_copy(aBlock);
    v46 = v21;

    [v43 handlePrimaryResidentDidBecomeCurrentDeviceWithCompletion_];
    _Block_release(v45);
  }
}

uint64_t sub_2297A60CC(void *a1)
{
  v2 = sub_22A4DD26C();
  v15 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22A4DD29C();
  v5 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 workQueue];
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  aBlock[4] = sub_2297AD910;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22953E640;
  aBlock[3] = &block_descriptor_60_0;
  v10 = _Block_copy(aBlock);
  v11 = a1;
  sub_22A4DD28C();
  v16 = MEMORY[0x277D84F90];
  sub_22953E260(&qword_281401CF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
  sub_229590C00(qword_281401CB0, &unk_27D87CEA0, &unk_22A577A40, MEMORY[0x277D83970]);
  sub_22A4DE03C();
  MEMORY[0x22AAD0F80](0, v7, v4, v10);
  _Block_release(v10);

  (*(v15 + 8))(v4, v2);
  (*(v5 + 8))(v7, v14);
}

void sub_2297A63FC()
{
  v1 = sub_22A4DD2FC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v4 = [v0 workQueue];
  (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
  v5 = sub_22A4DD31C();
  (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = [objc_msgSend(v0 featuresDataSource)];
  swift_unknownObjectRelease();
  if (!v6)
  {
LABEL_10:
    sub_2296F6A90();
    sub_22973C8B0();
    return;
  }

  v7 = [v0 swiftExtensions];
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = v7;
  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = *&v8[OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_primaryResidentNetworkInfoUpdateTask];

  swift_unknownObjectRelease();
  if (v9)
  {
    sub_22A4DDA7C();
  }

  v10 = [v0 swiftExtensions];
  if (!v10)
  {
    goto LABEL_14;
  }

  v11 = v10;
  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    *&v11[OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_primaryResidentNetworkInfoUpdateTask] = 0;
    swift_unknownObjectRelease();

    goto LABEL_10;
  }

LABEL_15:
  __break(1u);
}

char *sub_2297A6684()
{
  ObjectType = swift_getObjectType();
  v1 = sub_22A4DD07C();
  v29 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &ObjectType - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &ObjectType - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &ObjectType - v8;
  v10 = sub_22A4DB7DC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&ObjectType - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = [objc_msgSend(v0 featuresDataSource];
  result = swift_unknownObjectRelease();
  if (!v14)
  {
    return result;
  }

  result = [v0 currentAccessory];
  if (!result)
  {
    return result;
  }

  v16 = [objc_opt_self() sharedManager];
  v17 = [v16 device];

  if (!v17)
  {
    (*(v11 + 56))(v9, 1, 1, v10);
LABEL_9:
    sub_22953EAE4(v9, &unk_27D87D2A0, &unk_22A578BD0);
    sub_2297A46D4();
    v19 = sub_22A4DD05C();
    v20 = sub_22A4DDCEC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_229538000, v19, v20, "Network diagnostics symptom not logged: current device IDS identifier is nil", v21, 2u);
      MEMORY[0x22AAD4E50](v21, -1, -1);
    }

    return (*(v29 + 8))(v3, v1);
  }

  v18 = [v17 idsIdentifier];

  if (v18)
  {
    sub_22A4DB79C();

    (*(v11 + 56))(v7, 0, 1, v10);
  }

  else
  {
    (*(v11 + 56))(v7, 1, 1, v10);
  }

  sub_229564B0C(v7, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    goto LABEL_9;
  }

  (*(v11 + 32))(v13, v9, v10);
  result = [v0 swiftExtensions];
  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  v22 = result;
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v23 = *&v22[OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_networkDiagnosticsSymptomReporter];

  swift_unknownObjectRelease();
  if (v23)
  {
    v24 = [v0 isCurrentDevicePrimaryResident];
    v25 = [v0 remoteEventRouterClientController];
    if (v25)
    {
      v26 = v25;
      v27 = [v25 primaryResidentClientHasConnectivity];
    }

    else
    {
      v27 = 0;
    }

    sub_2296B9074(v13, v24, v27);
  }

  return (*(v11 + 8))(v13, v10);
}

void sub_2297A6CA0(void *a1, void *a2, uint64_t a3)
{
  v43 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881148, &qword_22A5832C0);
  v6 = *(v5 - 8);
  v41 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v42 = &v38 - v7;
  v45 = sub_22A4DD07C();
  v8 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2297A46D4();
  v11 = a1;
  v12 = a2;
  v13 = sub_22A4DD05C();
  v14 = sub_22A4DDCCC();

  v15 = os_log_type_enabled(v13, v14);
  v44 = v11;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v39 = v17;
    *v16 = 136315394;
    v46 = v17;
    aBlock = 91;
    v48 = 0xE100000000000000;
    v18 = [v11 logIdentifier];
    v19 = v6;
    v20 = sub_22A4DD5EC();
    v40 = v5;
    v22 = v21;

    v23 = v20;
    v6 = v19;
    v11 = v44;
    MEMORY[0x22AAD08C0](v23, v22);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v24 = sub_2295A3E30(aBlock, v48, &v46);

    *(v16 + 4) = v24;
    v5 = v40;
    *(v16 + 12) = 2112;
    *(v16 + 14) = v12;
    v25 = v38;
    *v38 = v12;
    v26 = v12;
    _os_log_impl(&dword_229538000, v13, v14, "%s Removing Matter accessory from home's list: %@", v16, 0x16u);
    sub_22953EAE4(v25, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v25, -1, -1);
    v27 = v39;
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x22AAD4E50](v27, -1, -1);
    MEMORY[0x22AAD4E50](v16, -1, -1);
  }

  (*(v8 + 8))(v10, v45);
  [v11 _removeAccessory_];
  v53 = &unk_283F010C8;
  v28 = swift_dynamicCastObjCProtocolConditional();
  if (v28)
  {
    v29 = v28;
    if ([v28 respondsToSelector_])
    {
      v30 = v42;
      (*(v6 + 16))(v42, v43, v5);
      v31 = (*(v6 + 80) + 24) & ~*(v6 + 80);
      v32 = swift_allocObject();
      v33 = v44;
      *(v32 + 16) = v44;
      (*(v6 + 32))(v32 + v31, v30, v5);
      v51 = sub_2297AD9E8;
      v52 = v32;
      aBlock = MEMORY[0x277D85DD0];
      v48 = 1107296256;
      v49 = sub_22953E640;
      v50 = &block_descriptor_78_0;
      v34 = _Block_copy(&aBlock);
      v35 = v12;
      v36 = v33;
      v37 = v35;

      [v29 unconfigureMatterAccessoryWithCompletion_];
      _Block_release(v34);
    }
  }
}

uint64_t sub_2297A7128(void *a1, uint64_t a2)
{
  v4 = sub_22A4DD26C();
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22A4DD29C();
  v22 = *(v7 - 8);
  v23 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881148, &qword_22A5832C0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - v12;
  v21 = [a1 workQueue];
  (*(v11 + 16))(v13, a2, v10);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  (*(v11 + 32))(v15 + v14, v13, v10);
  aBlock[4] = sub_2297ADAD0;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22953E640;
  aBlock[3] = &block_descriptor_84_0;
  v16 = _Block_copy(aBlock);
  v17 = a1;
  sub_22A4DD28C();
  v25 = MEMORY[0x277D84F90];
  sub_22953E260(&qword_281401CF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
  sub_229590C00(qword_281401CB0, &unk_27D87CEA0, &unk_22A577A40, MEMORY[0x277D83970]);
  sub_22A4DE03C();
  v18 = v21;
  MEMORY[0x22AAD0F80](0, v9, v6, v16);
  _Block_release(v16);

  (*(v24 + 8))(v6, v4);
  (*(v22 + 8))(v9, v23);
}

void sub_2297A74E0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881148, &qword_22A5832C0);
  sub_22A4DBA4C();
  [a1 newMatterAccessoryFrom:v2 message:0];
}

void sub_2297A7548(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_22A4DD26C();
  MEMORY[0x28223BE20](v7);
  v9 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22A4DB7DC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v142 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v128 - v14;
  v16 = sub_22A4DD07C();
  v145 = *(v16 - 8);
  v146 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v143 = &v128 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v128 - v19;
  v147 = [a1 uuid];
  if (!v147)
  {
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v144 = a1;
  v21 = [a1 supportsNativeMatter];
  if (!v21 || (LOBYTE(aBlock) = 2, v22 = v21, MEMORY[0x22AAD0A90](v21, &aBlock), v22, aBlock == 2))
  {
    if (a2)
    {
      v23 = [objc_opt_self() hmErrorWithCode_];
      v24 = sub_22A4DB3DC();

      [a2 respondWithError_];
    }

    v25 = v147;

    return;
  }

  v141 = aBlock;
  v131 = v15;
  v135 = v10;
  v137 = a2;
  v26 = [v3 uuidToHAPAccessoryConfigTable];
  if (!v26)
  {
    goto LABEL_58;
  }

  v27 = v26;
  v136 = v11;
  v28 = [v26 objectForKey_];

  v138 = ObjectType;
  sub_2297A46D4();
  v29 = v3;
  v30 = v147;
  v31 = v28;
  v32 = sub_22A4DD05C();
  v33 = sub_22A4DDCCC();

  v34 = os_log_type_enabled(v32, v33);
  v134 = v9;
  v133 = v7;
  v139 = v31;
  v140 = v29;
  v132 = v28;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    v154[0] = v130;
    *v35 = 136315650;
    aBlock = 91;
    v149 = 0xE100000000000000;
    v37 = [v29 logIdentifier];
    v129 = v33;
    v38 = v37;
    v39 = v30;
    v40 = sub_22A4DD5EC();
    v42 = v41;

    v43 = v40;
    v30 = v39;
    MEMORY[0x22AAD08C0](v43, v42);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v44 = sub_2295A3E30(aBlock, v149, v154);

    *(v35 + 4) = v44;
    *(v35 + 12) = 2112;
    *(v35 + 14) = v39;
    *(v35 + 22) = 2112;
    *(v35 + 24) = v31;
    *v36 = v147;
    v36[1] = v28;
    v45 = v39;
    v46 = v31;
    _os_log_impl(&dword_229538000, v32, v129, "%s Creating new matter accessory from model %@ with hap accessory: %@", v35, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v36, -1, -1);
    v47 = v130;
    __swift_destroy_boxed_opaque_existential_0(v130);
    MEMORY[0x22AAD4E50](v47, -1, -1);
    MEMORY[0x22AAD4E50](v35, -1, -1);
  }

  v48 = *(v145 + 8);
  v48(v20, v146);
  v49 = v143;
  if (v141)
  {
    v50 = HMDMatterAccessory;
  }

  else
  {
    v50 = HMDHAPAccessory;
  }

  v51 = objc_allocWithZone(v50);
  v52 = v140;
  v53 = [v51 initWithTransaction:v144 home:v140];
  if (!v53)
  {
    v54 = 0;
LABEL_25:
    sub_2297A46D4();
    v64 = v52;
    v65 = sub_22A4DD05C();
    v66 = sub_22A4DDCEC();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v154[0] = v68;
      *v67 = 136315138;
      aBlock = 91;
      v149 = 0xE100000000000000;
      v69 = [v64 logIdentifier];
      v70 = sub_22A4DD5EC();
      v71 = v30;
      v73 = v72;

      MEMORY[0x22AAD08C0](v70, v73);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v74 = sub_2295A3E30(aBlock, v149, v154);

      *(v67 + 4) = v74;
      _os_log_impl(&dword_229538000, v65, v66, "%s Unable to allocate matter accessory", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v68);
      MEMORY[0x22AAD4E50](v68, -1, -1);
      MEMORY[0x22AAD4E50](v67, -1, -1);

      v75 = v143;
    }

    else
    {

      v75 = v49;
    }

    v48(v75, v146);
    return;
  }

  v54 = v53;
  v55 = [v54 matterAdapter];
  if (!v55)
  {

    goto LABEL_25;
  }

  v56 = v55;
  if (([v54 isPrimary] & 1) == 0)
  {

    return;
  }

  v128 = v30;
  if (!v137)
  {
    v58 = sub_22A4DDC2C();
    v59 = v142;
    goto LABEL_31;
  }

  v57 = [v137 name];
  v58 = sub_22A4DDC2C();
  v59 = v142;
  if (!v57)
  {
LABEL_31:

    goto LABEL_37;
  }

  v60 = sub_22A4DD5EC();
  v62 = v61;
  if (v60 == sub_22A4DD5EC() && v62 == v63)
  {
  }

  else
  {
    v76 = sub_22A4DE60C();

    if ((v76 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  v77 = [v144 publicKey];
  if (v77)
  {
    v78 = v77;
    v79 = sub_22A4DB62C();
    v81 = v80;

    v82 = [v144 pairingUsername];
    if (v82)
    {
      v83 = v82;
      v84 = sub_22A4DB61C();
      [v56 savePublicKey:v84 username:v83];
    }

    sub_2295798D4(v79, v81);
  }

LABEL_37:
  v147 = v56;
  v85 = [v52 accessoryBrowser];
  if (!v85)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v86 = v85;
  v87 = v144;
  v88 = [v144 identifier];
  if (!v88)
  {
    sub_22A4DD5EC();
    v88 = sub_22A4DD5AC();
  }

  v89 = [v87 accessorySetupHash];
  if (v89)
  {
    v90 = v89;
    v91 = sub_22A4DB62C();
    v93 = v92;

    v94 = sub_22A4DB61C();
    sub_2295798D4(v91, v93);
  }

  else
  {
    v94 = 0;
  }

  v95 = v137;
  [v86 registerPairedAccessory:v88 transports:1 setupHash:v94 delegate:v52];
  swift_unknownObjectRelease();

  [v52 addAccessory_];
  v96 = [v144 configurationTracker];
  if (!v96)
  {
    v96 = dispatch_group_create();
  }

  v97 = v54;
  v98 = [v52 msgDispatcher];
  if (!v98)
  {
    goto LABEL_60;
  }

  v99 = v98;
  [v97 configureWithHome:v52 msgDispatcher:v98 configurationTracker:v96 initialConfiguration:0];

  if (v95)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
    v100 = swift_allocObject();
    *(v100 + 16) = xmmword_22A576190;
    *(v100 + 32) = v97;
    sub_229562F68(0, &qword_281401C30, off_278665FE8);
    v101 = v52;
    v102 = v97;
    v103 = v95;
    v104 = sub_22A4DD81C();

    v105 = [v103 identifier];
    v106 = v131;
    sub_22A4DB79C();

    v107 = sub_22A4DB77C();
    (*(v136 + 8))(v106, v135);
    [v101 addNewlyConfiguredAccessories:v104 addSessionIdentifier:v107];

    v52 = v101;
    v59 = v142;
  }

  v108 = [v52 accessoryBrowser];
  if (!v108)
  {
    goto LABEL_61;
  }

  [v108 evaluateAccessoryDiscoveryState];
  swift_unknownObjectRelease();
  v109 = [v52 accessoryBrowser];
  v110 = v136;
  if (!v109)
  {
LABEL_62:
    __break(1u);
    return;
  }

  v111 = [v109 chipAccessoryServerBrowser];
  swift_unknownObjectRelease();
  v112 = v132;
  if (v111)
  {
    v113 = [v52 targetFabricUUID];
    if (v113)
    {
      v114 = v52;
      v115 = v113;
      sub_22A4DB79C();

      v116 = [v97 matterNodeID];
      v117 = [v116 unsignedLongLongValue];

      if (v117)
      {
        v118 = [v97 matterNodeID];
        v119 = sub_22A4DB77C();
        [v111 handleHomeAddedAccessoryWithNodeID:v118 fabricUUID:v119 localControl:{objc_msgSend(v114, sel_isCurrentDevicePrimaryResident)}];

        v52 = v114;
        (*(v110 + 8))(v59, v135);
        v95 = v137;
      }

      else
      {
        (*(v110 + 8))(v59, v135);

        v95 = v137;
        v52 = v114;
      }
    }

    else
    {
    }
  }

  v120 = [v95 transactionResult];
  [v120 markChanged];

  v121 = [v95 transactionResult];
  [v121 markSaveToAssistant];

  v122 = [v52 workQueue];
  v123 = swift_allocObject();
  v123[2] = v52;
  v123[3] = v97;
  v124 = v138;
  v123[4] = v112;
  v123[5] = v124;
  v152 = sub_2297AD658;
  v153 = v123;
  aBlock = MEMORY[0x277D85DD0];
  v149 = 1107296256;
  v150 = sub_22953E640;
  v151 = &block_descriptor_35;
  _Block_copy(&aBlock);
  v154[0] = MEMORY[0x277D84F90];
  sub_22953E260(&qword_281401CF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v125 = v52;
  v126 = v139;
  v127 = v97;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
  sub_229590C00(qword_281401CB0, &unk_27D87CEA0, &unk_22A577A40, MEMORY[0x277D83970]);
  sub_22A4DE03C();
  sub_22A4DD2EC();
  swift_allocObject();
  sub_22A4DD2DC();

  sub_22A4DDD4C();
}

id sub_2297A843C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22A4DD07C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v59 - v13;
  if ([a1 remoteAccessIsEnabled])
  {
    v65 = v12;
    v61 = a4;
    v62 = v9;
    sub_2297A46D4();
    v15 = a1;
    v16 = a2;
    v17 = sub_22A4DD05C();
    v18 = sub_22A4DDCCC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v64 = a3;
      v20 = v19;
      v21 = swift_slowAlloc();
      v60 = v21;
      *v20 = 136315394;
      v66 = 91;
      v67 = 0xE100000000000000;
      v68 = v21;
      v22 = [v15 logIdentifier];
      v23 = sub_22A4DD5EC();
      v63 = v8;
      v25 = v24;

      MEMORY[0x22AAD08C0](v23, v25);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v26 = sub_2295A3E30(v66, v67, &v68);

      *(v20 + 4) = v26;
      *(v20 + 12) = 2080;
      v27 = [v16 shortDescription];
      v28 = sub_22A4DD5EC();
      v30 = v29;

      v31 = v28;
      v8 = v63;
      v32 = sub_2295A3E30(v31, v30, &v68);

      *(v20 + 14) = v32;
      _os_log_impl(&dword_229538000, v17, v18, "%s Setting remote access enabled for accessory: %s", v20, 0x16u);
      v33 = v60;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v33, -1, -1);
      v34 = v20;
      a3 = v64;
      MEMORY[0x22AAD4E50](v34, -1, -1);
    }

    v9 = v62;
    (*(v62 + 8))(v14, v8);
    [v16 remoteAccessEnabled_];
    v12 = v65;
  }

  [a1 _reachabilityChangedForAccessory_reachable_];
  result = [a2 isPrimary];
  if (result)
  {
    sub_2297A46D4();
    v36 = a1;
    v37 = a2;
    v38 = sub_22A4DD05C();
    v39 = sub_22A4DDCCC();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v64 = a3;
      v41 = v40;
      v42 = swift_slowAlloc();
      *v41 = 136315394;
      v66 = 91;
      v67 = 0xE100000000000000;
      v68 = v42;
      v43 = [v36 logIdentifier];
      v44 = sub_22A4DD5EC();
      v63 = v8;
      v45 = v44;
      v65 = v12;
      v47 = v46;

      MEMORY[0x22AAD08C0](v45, v47);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v48 = sub_2295A3E30(v66, v67, &v68);

      *(v41 + 4) = v48;
      *(v41 + 12) = 2080;
      v49 = [v37 shortDescription];
      v50 = sub_22A4DD5EC();
      v52 = v51;

      v53 = sub_2295A3E30(v50, v52, &v68);

      *(v41 + 14) = v53;
      _os_log_impl(&dword_229538000, v38, v39, "%s Handling added primary accessory: %s", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v42, -1, -1);
      v54 = v41;
      a3 = v64;
      MEMORY[0x22AAD4E50](v54, -1, -1);

      (*(v9 + 8))(v65, v63);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }

    if (!a3)
    {
      result = [v36 accessoryBrowser];
      if (!result)
      {
        goto LABEL_20;
      }

      v55 = result;
      v56 = [v37 identifier];
      if (!v56)
      {
        sub_22A4DD5EC();
        v56 = sub_22A4DD5AC();
      }

      [v55 handleNewlyPairedAccessory:v56 linkType:0];
      swift_unknownObjectRelease();
    }

    result = [v36 accessoryBrowser];
    if (result)
    {
      v57 = result;
      v58 = [v37 identifier];
      if (!v58)
      {
        sub_22A4DD5EC();
        v58 = sub_22A4DD5AC();
      }

      [v57 removeUnassociatedAccessoryWithIdentifier_];
      swift_unknownObjectRelease();

      logAndPostNotification(@"HMDAccessoryConnectedNotification", v37, 0);
      [v36 notifyOfAddedAccessory_];
      return [v36 reevaluateAccessoryInfo];
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  return result;
}

void sub_2297A8AF4(id a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DD07C();
  v113 = *(v5 - 1);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v99 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v99 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v99 - v15;
  v17 = sub_22A4DB7DC();
  v112 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v111 = &v99 - v21;
  if (![v2 isCurrentDeviceConfirmedPrimaryResident])
  {
    sub_2297A46D4();
    v40 = v2;
    v41 = sub_22A4DD05C();
    v42 = sub_22A4DDCEC();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = v5;
      v45 = swift_slowAlloc();
      *&v114[0] = v45;
      *v43 = 136315138;
      *&v116[0] = 91;
      *(&v116[0] + 1) = 0xE100000000000000;
      v46 = [v40 logIdentifier];
      v47 = sub_22A4DD5EC();
      v49 = v48;

      MEMORY[0x22AAD08C0](v47, v49);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v50 = sub_2295A3E30(*&v116[0], *(&v116[0] + 1), v114);

      *(v43 + 4) = v50;
      _os_log_impl(&dword_229538000, v41, v42, "[%s] presence map fetch error: not primary resident", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x22AAD4E50](v45, -1, -1);
      MEMORY[0x22AAD4E50](v43, -1, -1);

      (*(v113 + 8))(v8, v44);
    }

    else
    {

      (*(v113 + 8))(v8, v5);
    }

    v69 = [objc_opt_self() hmPrivateErrorWithCode_];
    goto LABEL_37;
  }

  v22 = [a1 setForKey_];
  if (!v22)
  {
LABEL_33:
    sub_2297A46D4();
    v73 = v2;
    v74 = sub_22A4DD05C();
    v75 = sub_22A4DDCEC();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = v5;
      v78 = swift_slowAlloc();
      *&v114[0] = v78;
      *v76 = 136315138;
      *&v116[0] = 91;
      *(&v116[0] + 1) = 0xE100000000000000;
      v79 = [v73 logIdentifier];
      v80 = sub_22A4DD5EC();
      v81 = v11;
      v82 = a1;
      v84 = v83;

      MEMORY[0x22AAD08C0](v80, v84);
      a1 = v82;

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v85 = sub_2295A3E30(*&v116[0], *(&v116[0] + 1), v114);

      *(v76 + 4) = v85;
      _os_log_impl(&dword_229538000, v74, v75, "[%s] presence map fetch error: HMHomeUserUUIDsMessageKey is not set", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v78);
      MEMORY[0x22AAD4E50](v78, -1, -1);
      MEMORY[0x22AAD4E50](v76, -1, -1);

      (*(v113 + 8))(v81, v77);
    }

    else
    {

      (*(v113 + 8))(v11, v5);
    }

    v69 = [objc_opt_self() hmErrorWithCode_];
LABEL_37:
    v86 = v69;
    v72 = sub_22A4DB3DC();

    [a1 respondWithError_];
    goto LABEL_38;
  }

  v106 = ObjectType;
  v107 = v2;
  v105 = v11;
  v103 = v13;
  v110 = v5;
  v108 = a1;
  v23 = v22;
  v24 = sub_22A4DDB6C();

  v25 = 1 << *(v24 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v24 + 56);
  v28 = (v25 + 63) >> 6;
  v29 = (v112 + 56);
  v30 = (v112 + 48);
  v104 = (v112 + 32);

  v31 = 0;
  v109 = MEMORY[0x277D84F90];
  while (1)
  {
    v32 = v31;
    if (!v27)
    {
      break;
    }

LABEL_10:
    v33 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    sub_2295403F4(*(v24 + 48) + 40 * (v33 | (v31 << 6)), v116);
    v114[0] = v116[0];
    v114[1] = v116[1];
    v115 = v117;
    v34 = swift_dynamicCast();
    (*v29)(v16, v34 ^ 1u, 1, v17);
    if ((*v30)(v16, 1, v17) == 1)
    {
      sub_22953EAE4(v16, &unk_27D87D2A0, &unk_22A578BD0);
    }

    else
    {
      v102 = *v104;
      v102(v111, v16, v17);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v109 = sub_22958B1F0(0, *(v109 + 2) + 1, 1, v109);
      }

      v36 = *(v109 + 2);
      v35 = *(v109 + 3);
      v37 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        v101 = v36 + 1;
        v100 = v36;
        v39 = sub_22958B1F0((v35 > 1), v36 + 1, 1, v109);
        v37 = v101;
        v36 = v100;
        v109 = v39;
      }

      v38 = v109;
      *(v109 + 2) = v37;
      v102(&v38[((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v36], v111, v17);
    }
  }

  while (1)
  {
    v31 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
      return;
    }

    if (v31 >= v28)
    {
      break;
    }

    v27 = *(v24 + 56 + 8 * v31);
    ++v32;
    if (v27)
    {
      goto LABEL_10;
    }
  }

  v51 = v109;
  v52 = *(v109 + 2);
  if (!v52)
  {

    a1 = v108;
    v5 = v110;
    v11 = v105;
    v2 = v107;
    goto LABEL_33;
  }

  v53 = v107;
  v54 = [v107 homePresence];
  v55 = v110;
  if (v54)
  {
    v110 = v54;
    v56 = [v53 usersSupportingPresence];
    sub_229562F68(0, &qword_281401790, off_278666348);
    v113 = sub_22A4DD83C();

    v57 = v112 + 16;
    v112 = *(v112 + 16);
    v58 = v51 + ((*(v57 + 64) + 32) & ~*(v57 + 64));
    v111 = *(v57 + 56);
    v59 = (v57 - 8);
    v60 = MEMORY[0x277D84F98];
    for (i = (v112)(v20, v58, v17); ; i = (v112)(v20, v58, v17))
    {
      MEMORY[0x28223BE20](i);
      *(&v99 - 2) = v20;
      v64 = sub_22968FFF0(sub_2297AD638, (&v99 - 4), v113);
      if (v64)
      {
        v65 = v64;
        v66 = v110;
        if (([v110 isUserAtHome_] & 1) == 0)
        {
          [v66 isUserNotAtHome_];
        }

        v67 = sub_22A4DDFDC();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v116[0] = v60;
        sub_2295AC044(v67, v20, isUniquelyReferenced_nonNull_native);
      }

      else
      {
        v62 = sub_22A4DDFDC();
        v63 = swift_isUniquelyReferenced_nonNull_native();
        *&v116[0] = v60;
        sub_2295AC044(v62, v20, v63);
      }

      v60 = *&v116[0];
      (*v59)(v20, v17);
      v58 = &v111[v58];
      if (!--v52)
      {
        break;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    *(inited + 32) = sub_22A4DD5EC();
    *(inited + 40) = v71;
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881088, &unk_22A583210);
    *(inited + 48) = v60;
    sub_22956AC5C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &unk_27D87DE50, &qword_22A577CD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v72 = sub_22A4DD47C();

    [v108 respondWithPayload_];
    swift_unknownObjectRelease();
  }

  else
  {

    v87 = v103;
    sub_2297A46D4();
    v88 = v53;
    v89 = sub_22A4DD05C();
    v90 = sub_22A4DDCEC();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      *&v114[0] = v92;
      *v91 = 136315138;
      *&v116[0] = 91;
      *(&v116[0] + 1) = 0xE100000000000000;
      v93 = [v88 logIdentifier];
      v94 = sub_22A4DD5EC();
      v96 = v95;

      MEMORY[0x22AAD08C0](v94, v96);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v97 = sub_2295A3E30(*&v116[0], *(&v116[0] + 1), v114);

      *(v91 + 4) = v97;
      _os_log_impl(&dword_229538000, v89, v90, "[%s] presence map fetch error: homePresence is nil", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v92);
      MEMORY[0x22AAD4E50](v92, -1, -1);
      MEMORY[0x22AAD4E50](v91, -1, -1);
    }

    (*(v113 + 8))(v87, v55);
    v98 = [objc_opt_self() hmErrorWithCode_];
    v72 = sub_22A4DB3DC();

    [v108 respondWithError_];
  }

LABEL_38:
}

uint64_t sub_2297A9870(id *a1, uint64_t a2)
{
  v3 = sub_22A4DB7DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uuid];
  sub_22A4DB79C();

  v8 = sub_22A4DB78C();
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

id sub_2297A9A28()
{
  swift_getObjectType();
  v1 = sub_22A4DD07C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_msgSend(v0 featuresDataSource)];
  swift_unknownObjectRelease();
  if (v5)
  {
    v6 = [v0 homeActivityStateManager];
    if (!v6)
    {
      sub_2297A46D4();
      v11 = v0;
      v12 = sub_22A4DD05C();
      v13 = sub_22A4DDCEC();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *v14 = 136315138;
        v22 = 91;
        v23 = 0xE100000000000000;
        v24 = v15;
        v16 = [v11 logIdentifier];
        v17 = sub_22A4DD5EC();
        v19 = v18;

        MEMORY[0x22AAD08C0](v17, v19);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v20 = sub_2295A3E30(v22, v23, &v24);

        *(v14 + 4) = v20;
        _os_log_impl(&dword_229538000, v12, v13, "[%s] homeActivityStateManager is unexpectedly nil", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x22AAD4E50](v15, -1, -1);
        MEMORY[0x22AAD4E50](v14, -1, -1);
      }

      (*(v2 + 8))(v4, v1);
      return 0;
    }

    v7 = v6;
    v8 = [v6 userActivityStatesDetails];
LABEL_6:
    v10 = v8;

    return v10;
  }

  result = [v0 presenceMonitor];
  if (result)
  {
    v7 = result;
    v8 = [result currentHomePresence];
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void sub_2297A9CF8(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, uint64_t a7)
{
  v31 = a7;
  v33 = sub_22A4DB7DC();
  v13 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2295404B0(a5, v35);
  v16 = type metadata accessor for MatterAccessoryWriteAttributeLogEvent();
  v17 = objc_allocWithZone(v16);
  swift_unknownObjectWeakInit();
  v18 = &v17[OBJC_IVAR____TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent_coreAnalyticsEventName];
  *v18 = 0xD00000000000003BLL;
  *(v18 + 1) = 0x800000022A58A010;
  *&v17[OBJC_IVAR____TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent_coreAnalyticsEventOptions] = 0;
  v19 = v32;
  swift_unknownObjectWeakAssign();
  *&v17[OBJC_IVAR____TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent_nodeId] = a1;
  *&v17[OBJC_IVAR____TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent_endpointId] = a2;
  *&v17[OBJC_IVAR____TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent_clusterId] = a3;
  *&v17[OBJC_IVAR____TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent_attributeId] = a4;
  sub_2295404B0(v35, &v17[OBJC_IVAR____TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent_value]);
  *&v17[OBJC_IVAR____TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent_timedWriteTimeout] = a6;
  v20 = a6;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = [v19 uuid];
  sub_22A4DB79C();

  v25 = sub_22A4DB77C();
  (*(v13 + 8))(v15, v33);
  v34.receiver = v17;
  v34.super_class = v16;
  v26 = objc_msgSendSuper2(&v34, sel_initWithHomeUUID_, v25);

  __swift_destroy_boxed_opaque_existential_0(v35);
  v27 = [v19 logEventSubmitter];
  if (v27)
  {
    v28 = v27;
    if (v31)
    {
      v29 = sub_22A4DB3DC();
    }

    else
    {
      v29 = 0;
    }

    [v28 submitLogEvent:v26 error:v29];

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2297AA198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[36] = a5;
  v6[37] = a6;
  v6[35] = a4;
  v7 = sub_22A4DD90C();
  v6[38] = v7;
  v6[39] = *(v7 - 8);
  v6[40] = swift_task_alloc();
  v8 = sub_22A4DE2CC();
  v6[41] = v8;
  v6[42] = *(v8 - 8);
  v6[43] = swift_task_alloc();
  v6[44] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8810C0, &qword_22A583258);
  v6[45] = swift_task_alloc();
  v6[46] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8810C8, &qword_22A583260);
  v6[47] = swift_task_alloc();
  v6[48] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8810D0, &qword_22A583268);
  v6[49] = swift_task_alloc();
  v6[50] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8810D8, &qword_22A583270);
  v6[51] = swift_task_alloc();
  v6[52] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8810E0, &qword_22A583278);
  v6[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297AA3E4, 0, 0);
}

uint64_t sub_2297AA3E4()
{
  v1 = *(v0 + 424);
  v8 = *(v0 + 416);
  v7 = *(v0 + 408);
  v2 = *(v0 + 376);
  v6 = *(v0 + 392);
  v9 = *(v0 + 360);
  v10 = *(v0 + 352);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8810B0, &qword_22A583238);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8810A0, &qword_22A583228);
  v3 = MEMORY[0x277D857C0];
  sub_229590C00(&qword_27D8810E8, &qword_27D8810B0, &qword_22A583238, MEMORY[0x277D857C0]);
  sub_229590C00(&qword_27D8810F0, &qword_27D8810A0, &qword_22A583228, v3);
  sub_22A4DC4EC();
  sub_229590C00(&qword_27D8810F8, &qword_27D8810C8, &qword_22A583260, MEMORY[0x277CEF728]);
  sub_22A4DDB1C();
  sub_22953EAE4(v2, &qword_27D8810C8, &qword_22A583260);
  sub_22A4DC4DC();
  sub_229590C00(&qword_27D881100, &qword_27D8810D0, &qword_22A583268, MEMORY[0x277CEF718]);
  sub_22A4DDB2C();
  sub_22953EAE4(v6, &qword_27D8810D0, &qword_22A583268);
  sub_229590C00(&qword_27D881108, &qword_27D8810D8, &qword_22A583270, MEMORY[0x277CEF6E8]);
  sub_22A4DDB0C();
  sub_22953EAE4(v7, &qword_27D8810D8, &qword_22A583270);
  sub_22A4DE2DC();
  *(v1 + v8[15]) = xmmword_22A583180;
  v4 = v1 + v8[16];
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 1;
  *(v1 + v8[13]) = 16;
  *(v1 + v8[14]) = 16;
  sub_2297ABCAC(v9);
  *(v0 + 68) = *(v10 + 52);
  swift_beginAccess();

  return MEMORY[0x2822009F8](sub_2297AA710, 0, 0);
}

uint64_t sub_2297AA710()
{
  sub_2297AC8A8();
  if (v1)
  {
    v3 = *(v0 + 360);
    v4 = *(v3 + 72);
    if (v4 == 1)
    {
      v5 = swift_task_alloc();
      *(v0 + 440) = v5;
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881120, &qword_22A583298);
      *v5 = v0;
      v5[1] = sub_2297AAB58;
      v1 = v0 + 72;
    }

    else
    {
      v17 = *(v3 + 80);
      v18 = *(v3 + 40);
      v19 = *(v3 + 48);
      v20 = *(v3 + 32);
      v23 = *(v3 + 56);
      *(v0 + 16) = v20;
      *(v0 + 24) = v18;
      *(v0 + 32) = v19;
      *(v0 + 40) = v23;
      *(v0 + 56) = v4;
      *(v0 + 64) = v17;
      sub_2295AEF1C(v20, v18);
      sub_2295AEF1C(v19, v23);

      v21 = swift_task_alloc();
      *(v0 + 456) = v21;
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881120, &qword_22A583298);
      *v21 = v0;
      v21[1] = sub_2297AAC6C;
      v1 = v0 + 184;
    }

    return MEMORY[0x282141C00](v1, v2);
  }

  v6 = *(v0 + 360);
  v7 = (v6 + *(v0 + 68));
  if (*v7)
  {
    __break(1u);
    return MEMORY[0x282141C00](v1, v2);
  }

  v8 = *(v0 + 344);
  v9 = *(v0 + 352);
  v10 = *(v0 + 328);
  v11 = *(v0 + 336);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881110, &unk_22A583288) + 48);
  sub_22953E260(&unk_281401738, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_22A4DE2FC();
  (*(v11 + 40))(&v7[v12], v8, v10);
  v13 = *(v9 + 56);
  v14 = sub_22A4DE2EC();
  v15 = sub_22953E260(&qword_281401730, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  v16 = swift_task_alloc();
  *(v0 + 432) = v16;
  *v16 = v0;
  v16[1] = sub_2297AAA38;

  return MEMORY[0x2822008C8](&v7[v12], v6 + v13, v14, v15);
}

uint64_t sub_2297AAA38()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 576) = v0;
    v3 = sub_2297AB820;
  }

  else
  {
    v3 = sub_2297ABA1C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2297AAB58()
{
  *(*v1 + 448) = v0;

  if (v0)
  {
    v2 = sub_2297AB7FC;
  }

  else
  {
    v2 = sub_2297AB518;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2297AAC6C()
{
  *(*v1 + 464) = v0;

  if (v0)
  {
    v2 = sub_2297AAF1C;
  }

  else
  {
    v2 = sub_2297AAD80;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2297AAD80()
{
  v1 = *(v0 + 224);
  if (v1 == 1)
  {
    v3 = *(v0 + 32);
    v2 = *(v0 + 40);
    sub_229590D18(*(v0 + 16), *(v0 + 24));
    sub_229590D18(v3, v2);

    sub_2297AD80C(*(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224));

    return MEMORY[0x2822009F8](sub_2297AB264, 0, 0);
  }

  else
  {
    v4 = *(v0 + 360);
    v5 = *(v0 + 216);
    v6 = *(v0 + 232);
    v7 = *(v0 + 200);
    *(v0 + 128) = *(v0 + 184);
    *(v0 + 144) = v7;
    *(v0 + 160) = v5;
    *(v0 + 168) = v1;
    *(v0 + 176) = v6;
    v10 = (*(v4 + 16) + **(v4 + 16));
    v8 = swift_task_alloc();
    *(v0 + 472) = v8;
    *v8 = v0;
    v8[1] = sub_2297AAFB0;

    return v10(v0 + 16, v0 + 128);
  }
}

uint64_t sub_2297AAF1C()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_229590D18(v0[2], v0[3]);
  sub_229590D18(v2, v1);

  v0[72] = v0[58];

  return MEMORY[0x2822009F8](sub_2297AB820, 0, 0);
}

uint64_t sub_2297AAFB0(char a1)
{
  *(*v1 + 65) = a1;

  return MEMORY[0x2822009F8](sub_2297AB0B0, 0, 0);
}

uint64_t sub_2297AB0B0()
{
  if (*(v0 + 65) == 1)
  {
    v2 = *(v0 + 144);
    v1 = *(v0 + 152);
    sub_229590D18(*(v0 + 128), *(v0 + 136));
    sub_229590D18(v2, v1);

    v3 = swift_task_alloc();
    *(v0 + 456) = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881120, &qword_22A583298);
    *v3 = v0;
    v3[1] = sub_2297AAC6C;

    return MEMORY[0x282141C00](v0 + 184, v4);
  }

  else
  {
    v5 = *(v0 + 360);
    v7 = *(v0 + 32);
    v6 = *(v0 + 40);
    sub_229590D18(*(v0 + 16), *(v0 + 24));
    sub_229590D18(v7, v6);

    sub_2297AD80C(*(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56), *(v5 + 64), *(v5 + 72));
    v8 = *(v0 + 128);
    v9 = *(v0 + 136);
    *(v0 + 480) = v8;
    *(v0 + 488) = v9;
    v11 = *(v0 + 144);
    v10 = *(v0 + 152);
    *(v0 + 496) = v11;
    *(v0 + 504) = v10;
    v12 = *(v0 + 160);
    v13 = *(v0 + 168);
    *(v0 + 512) = v12;
    *(v0 + 520) = v13;
    v14 = *(v0 + 176);
    *(v0 + 66) = v14;
    *(v5 + 32) = v8;
    *(v5 + 40) = v9;
    *(v5 + 48) = v11;
    *(v5 + 56) = v10;
    *(v5 + 64) = v12;
    *(v5 + 72) = v13;
    *(v5 + 80) = v14;
    sub_2295AEF1C(v8, v9);
    sub_2295AEF1C(v11, v10);

    return MEMORY[0x2822009F8](sub_2297AB350, 0, 0);
  }
}

uint64_t sub_2297AB264()
{
  v1 = v0[45];
  sub_22953EAE4(v0[53], &qword_27D8810E0, &qword_22A583278);
  sub_22953EAE4(v1, &qword_27D8810C0, &qword_22A583258);

  v2 = v0[1];

  return v2();
}

uint64_t sub_2297AB350()
{
  v1 = *(v0 + 66);
  v2 = *(v0 + 520);
  v3 = *(v0 + 504);
  v4 = *(v0 + 512);
  v6 = *(v0 + 488);
  v5 = *(v0 + 496);
  v7 = *(v0 + 480);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_2297ABFB8(v7, v6, v5, v3, v4, v2, v1);

    sub_229590D18(v7, v6);
    sub_229590D18(v5, v3);

    return MEMORY[0x2822009F8](sub_2297AA710, 0, 0);
  }

  else
  {
    v10 = *(v0 + 360);
    sub_22953EAE4(*(v0 + 424), &qword_27D8810E0, &qword_22A583278);
    sub_229590D18(v7, v6);
    sub_229590D18(v5, v3);

    sub_22953EAE4(v10, &qword_27D8810C0, &qword_22A583258);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_2297AB518()
{
  v1 = *(v0 + 360);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  *(v0 + 528) = v3;
  *(v0 + 536) = v2;
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  *(v0 + 544) = v4;
  *(v0 + 552) = v5;
  v6 = *(v0 + 104);
  v7 = *(v0 + 112);
  *(v0 + 560) = v6;
  *(v0 + 568) = v7;
  v8 = *(v0 + 120);
  *(v0 + 67) = v8;
  sub_2297AD80C(*(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72));
  *(v1 + 32) = v3;
  *(v1 + 40) = v2;
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  *(v1 + 64) = v6;
  *(v1 + 72) = v7;
  *(v1 + 80) = v8;
  sub_2297AD86C(v3, v2, v4, v5, v6, v7);

  return MEMORY[0x2822009F8](sub_2297AB604, 0, 0);
}

uint64_t sub_2297AB604()
{
  v1 = *(v0 + 568);
  if (v1 == 1)
  {
    v2 = *(v0 + 360);
    sub_22953EAE4(*(v0 + 424), &qword_27D8810E0, &qword_22A583278);
LABEL_8:
    sub_22953EAE4(v2, &qword_27D8810C0, &qword_22A583258);

    v11 = *(v0 + 8);

    return v11();
  }

  v3 = *(v0 + 67);
  v4 = *(v0 + 560);
  v5 = *(v0 + 552);
  v6 = *(v0 + 544);
  v7 = *(v0 + 536);
  v8 = *(v0 + 528);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v2 = *(v0 + 360);
    sub_22953EAE4(*(v0 + 424), &qword_27D8810E0, &qword_22A583278);
    sub_229590D18(v8, v7);
    sub_229590D18(v6, v5);

    goto LABEL_8;
  }

  v10 = Strong;
  sub_2297ABFB8(v8, v7, v6, v5, v4, v1, v3);

  sub_229590D18(v8, v7);
  sub_229590D18(v6, v5);

  return MEMORY[0x2822009F8](sub_2297AA710, 0, 0);
}

uint64_t sub_2297AB820()
{
  v0[33] = v0[72];
  v0[73] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_2297AB8B4, 0, 0);
}

uint64_t sub_2297AB8B4()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 360);
  sub_22953EAE4(*(v0 + 424), &qword_27D8810E0, &qword_22A583278);
  sub_22953EAE4(v2, &qword_27D8810C0, &qword_22A583258);
  *(v0 + 272) = v1;
  v3 = v1;
  v4 = swift_dynamicCast();
  v5 = *(v0 + 576);
  if (v4)
  {
    v7 = *(v0 + 312);
    v6 = *(v0 + 320);
    v8 = *(v0 + 304);

    (*(v7 + 8))(v6, v8);
    v9 = *(v0 + 272);
  }

  else
  {

    v9 = v5;
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2297ABA1C()
{
  v1 = *(v0 + 360);
  v2 = *(v1 + 72);
  if (v2 == 1)
  {
    v3 = swift_task_alloc();
    *(v0 + 440) = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881120, &qword_22A583298);
    *v3 = v0;
    v3[1] = sub_2297AAB58;
    v5 = v0 + 72;
  }

  else
  {
    v6 = *(v1 + 80);
    v7 = *(v1 + 40);
    v8 = *(v1 + 48);
    v9 = *(v1 + 32);
    v12 = *(v1 + 56);
    *(v0 + 16) = v9;
    *(v0 + 24) = v7;
    *(v0 + 32) = v8;
    *(v0 + 40) = v12;
    *(v0 + 56) = v2;
    *(v0 + 64) = v6;
    sub_2295AEF1C(v9, v7);
    sub_2295AEF1C(v8, v12);

    v10 = swift_task_alloc();
    *(v0 + 456) = v10;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881120, &qword_22A583298);
    *v10 = v0;
    v10[1] = sub_2297AAC6C;
    v5 = v0 + 184;
  }

  return MEMORY[0x282141C00](v5, v4);
}

uint64_t sub_2297ABB98(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  v4 = *(a1 + 32);
  *(v2 + 112) = *(a1 + 48);
  v5 = *a2;
  v6 = a2[1];
  *(v2 + 48) = v4;
  *(v2 + 64) = v5;
  v7 = a2[2];
  *(v2 + 80) = v6;
  *(v2 + 96) = v7;
  *(v2 + 113) = *(a2 + 48);
  return MEMORY[0x2822009F8](sub_2297ABBE0, 0, 0);
}

uint64_t sub_2297ABBE0()
{
  if (!sub_229890738(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88)))
  {
LABEL_8:
    v3 = 0;
    goto LABEL_9;
  }

  v1 = *(v0 + 104);
  v2 = *(v0 + 56);
  v3 = (v2 | v1) == 0;
  if (v2 && v1)
  {
    if (*(v0 + 48) == *(v0 + 96) && v2 == v1 || (sub_22A4DE60C() & 1) != 0)
    {
      v3 = *(v0 + 112) ^ *(v0 + 113) ^ 1;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_9:
  v4 = *(v0 + 8);

  return v4(v3 & 1);
}

uint64_t sub_2297ABCAC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22A4DE2EC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v44 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8810D8, &qword_22A583270);
  sub_22A4DC4BC();
  v42 = v45;
  v41 = v46;
  v9 = (v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881130, &unk_22A5832A0) + 36));
  v10 = *v9;
  v11 = v9[1];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8810E0, &qword_22A583278);
  v13 = v12[14];
  v43 = *(v1 + v12[13]);
  v14 = *(v1 + v13);
  v15 = v12[16];
  v16 = (v1 + v12[15]);
  v17 = v16[1];
  v39 = *v16;
  v40 = v14;
  v18 = *(v1 + v15);
  v37 = *(v1 + v15 + 8);
  v38 = v18;
  v19 = *(v1 + v15 + 16);
  v20 = v12[17];
  v36 = v4;
  v21 = *(v4 + 16);
  v21(v8, v1 + v20, v3);
  *a1 = v42;
  *(a1 + 8) = v41;
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  v22 = v44;
  v42 = v11;
  v23 = v17;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8810C0, &qword_22A583258);
  v25 = a1 + *(v24 + 56);
  v26 = v37;
  *v25 = v38;
  *(v25 + 8) = v26;
  *(v25 + 16) = v19;
  v28 = v39;
  v27 = v40;
  result = (v21)(v22, v8, v3);
  v30 = *(v24 + 52);
  v31 = v43;
  v32 = (a1 + v30);
  v32[2] = v28;
  v32[3] = v23;
  if (v27 < v31 || v27 < 1)
  {
    __break(1u);
  }

  else
  {

    sub_22A4DE87C();
    result = sub_22A4DE84C();
    if (result)
    {
      *v32 = v31;
      v32[1] = v27;
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881110, &unk_22A583288);
      v21(v32 + *(v33 + 44), v22, v3);
      sub_22953E260(&qword_281401730, MEMORY[0x277D85928], MEMORY[0x277D85930]);
      sub_22A4DE68C();
      v34 = *(v36 + 8);
      v34(v22, v3);
      return (v34)(v8, v3);
    }
  }

  __break(1u);
  return result;
}

void sub_2297ABFB8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  ObjectType = swift_getObjectType();
  if ([v7 isCurrentDevicePrimaryResident])
  {
    v16 = [v7 backingStore];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 context];

      v25 = v18;
      if (v18)
      {
        if (a6)
        {
          v19 = sub_22A4DD8AC();
        }

        else
        {
          v19 = 0;
        }

        v20 = swift_allocObject();
        *(v20 + 16) = v8;
        *(v20 + 24) = a1;
        *(v20 + 32) = a2;
        *(v20 + 40) = a3;
        *(v20 + 48) = a4;
        *(v20 + 56) = a5;
        *(v20 + 64) = a6;
        *(v20 + 72) = a7;
        *(v20 + 80) = v19;
        *(v20 + 88) = v18;
        *(v20 + 96) = ObjectType;
        aBlock[4] = sub_2297AD8CC;
        aBlock[5] = v20;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_22953E640;
        aBlock[3] = &block_descriptor_54;
        v21 = _Block_copy(aBlock);
        v22 = v8;
        sub_2295AEF1C(a1, a2);
        sub_2295AEF1C(a3, a4);
        v23 = v19;
        v24 = v25;

        [v24 performBlock_];
        _Block_release(v21);
      }
    }
  }
}

uint64_t sub_2297AC198(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  v63 = a6;
  v64 = a4;
  v65 = a5;
  v14 = sub_22A4DD07C();
  v66 = *(v14 - 8);
  v67 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v62 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v62 - v17;
  v19 = sub_22A4DB7DC();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = objc_opt_self();
  v24 = [a1 uuid];
  sub_22A4DB79C();

  v25 = sub_22A4DB77C();
  (*(v20 + 8))(v22, v19);
  v26 = [v23 findHomeWithModelID_];

  if (v26)
  {
    v27 = [v26 primaryIPv4NetworkSignature];
    if (v27)
    {
      v28 = v27;
      v29 = sub_22A4DB62C();
      v31 = v30;

      if (v31 >> 60 != 15)
      {
        if (a3 >> 60 != 15)
        {
          sub_2295AEF1C(a2, a3);
          sub_2295AEF1C(v29, v31);
          v32 = sub_2297B7550(v29, v31, a2, a3);
          sub_229590D18(v29, v31);
          sub_229590D18(a2, a3);
          sub_229590D18(v29, v31);
          v34 = v64;
          v33 = v65;
          if (v32)
          {
            goto LABEL_17;
          }

          goto LABEL_15;
        }

LABEL_13:
        sub_2295AEF1C(a2, a3);
        sub_229590D18(v29, v31);
        sub_229590D18(a2, a3);
        v34 = v64;
        v33 = v65;
        if (a3 >> 60 == 15)
        {
          v39 = 0;
LABEL_16:
          [v26 setPrimaryIPv4NetworkSignature_];

LABEL_17:
          v40 = [v26 primaryIPv6NetworkSignature];
          if (v40)
          {
            v41 = v40;
            v42 = sub_22A4DB62C();
            v44 = v43;

            if (v44 >> 60 != 15)
            {
              if (v33 >> 60 != 15)
              {
                sub_2295AEF1C(v34, v33);
                sub_2295AEF1C(v42, v44);
                v45 = sub_2297B7550(v42, v44, v34, v33);
                sub_229590D18(v42, v44);
                sub_229590D18(v34, v33);
                sub_229590D18(v42, v44);
                if (!v45)
                {
                  goto LABEL_27;
                }

LABEL_29:
                v47 = [v26 primaryWiFiSSID];
                if (v47 && (v48 = v47, v49 = sub_22A4DD5EC(), v51 = v50, v48, v51))
                {
                  if (!a7)
                  {

                    v52 = 0;
                    goto LABEL_38;
                  }

                  if (v49 == v63 && v51 == a7)
                  {

                    goto LABEL_39;
                  }

                  v61 = sub_22A4DE60C();

                  if (v61)
                  {
LABEL_39:
                    v53 = [v26 primaryWiFiRequiresPassword];
                    if (v53)
                    {
                      v54 = v53;
                      if (a9)
                      {
                        sub_229562F68(0, &qword_281401770, 0x277CCABB0);
                        v55 = a9;
                        v56 = sub_22A4DDEDC();

                        if (v56)
                        {
                          goto LABEL_47;
                        }
                      }

                      else
                      {
                      }
                    }

                    else if (!a9)
                    {
LABEL_47:
                      if ([a10 save])
                      {
                        return swift_unknownObjectRelease();
                      }

                      v57 = v62;
                      sub_2297A46D4();
                      v58 = sub_22A4DD05C();
                      v59 = sub_22A4DDCEC();
                      if (os_log_type_enabled(v58, v59))
                      {
                        v60 = swift_slowAlloc();
                        *v60 = 0;
                        _os_log_impl(&dword_229538000, v58, v59, "Failed to save network info to working store", v60, 2u);
                        MEMORY[0x22AAD4E50](v60, -1, -1);
                        swift_unknownObjectRelease();
                      }

                      else
                      {

                        swift_unknownObjectRelease();
                      }

                      return (*(v66 + 8))(v57, v67);
                    }

                    [v26 setPrimaryWiFiRequiresPassword_];
                    goto LABEL_47;
                  }
                }

                else if (!a7)
                {
                  goto LABEL_39;
                }

                v52 = sub_22A4DD5AC();
LABEL_38:
                [v26 setPrimaryWiFiSSID_];

                goto LABEL_39;
              }

              goto LABEL_25;
            }
          }

          else
          {
            v42 = 0;
            v44 = 0xF000000000000000;
          }

          if (v33 >> 60 == 15)
          {
            sub_2295AEF1C(v34, v33);
            sub_229590D18(v42, v44);
            goto LABEL_29;
          }

LABEL_25:
          sub_2295AEF1C(v34, v33);
          sub_229590D18(v42, v44);
          sub_229590D18(v34, v33);
          if (v33 >> 60 == 15)
          {
            v46 = 0;
LABEL_28:
            [v26 setPrimaryIPv6NetworkSignature_];

            goto LABEL_29;
          }

LABEL_27:
          v46 = sub_22A4DB61C();
          goto LABEL_28;
        }

LABEL_15:
        v39 = sub_22A4DB61C();
        goto LABEL_16;
      }
    }

    else
    {
      v29 = 0;
      v31 = 0xF000000000000000;
    }

    if (a3 >> 60 == 15)
    {
      sub_2295AEF1C(a2, a3);
      sub_229590D18(v29, v31);
      v34 = v64;
      v33 = v65;
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  sub_2297A46D4();
  v35 = sub_22A4DD05C();
  v36 = sub_22A4DDCEC();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_229538000, v35, v36, "Failed to find home for network info update", v37, 2u);
    MEMORY[0x22AAD4E50](v37, -1, -1);
  }

  return (*(v66 + 8))(v18, v67);
}

void sub_2297AC8A8()
{
  v1 = sub_22A4DE2CC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881110, &unk_22A583288) + 48);
  sub_22A4DE2EC();
  sub_22953E260(&qword_281401730, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_22A4DE68C();
  sub_22953E260(&unk_281401738, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_22A4DE30C();
  (*(v2 + 8))(v4, v1);
  sub_22A4DE83C();
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = v6 & ~(v6 >> 63);
  sub_22A4DE34C();
  sub_22A4DE2FC();
  (*(v2 + 40))(&v0[v5], v4, v1);
  v8 = *v0;
  v9 = *(v0 + 1);
  v10 = __OFSUB__(v9, *v0);
  v11 = v9 - *v0;
  if (v10)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v11 >= v7)
  {
    v11 = v7;
  }

  v10 = __OFADD__(v8, v11);
  v12 = v8 + v11;
  if (!v10)
  {
    *v0 = v12 - (v12 > 0);
    return;
  }

LABEL_13:
  __break(1u);
}

void *sub_2297ACB20(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v29 - v11;
  swift_defaultActor_initialize();
  v13 = MEMORY[0x277D84FA0];
  a5[14] = MEMORY[0x277D84FA0];
  a5[15] = v13;
  a5[16] = 0;
  a5[17] = v13;
  v14 = MEMORY[0x277D84F98];
  a5[18] = MEMORY[0x277D84F98];
  a5[20] = v13;
  a5[21] = v13;
  a5[25] = 0;
  swift_unknownObjectWeakInit();
  a5[25] = &off_283CE8C30;
  a5[26] = v14;
  swift_unknownObjectWeakAssign();
  a5[22] = a3;
  a5[23] = a2;
  a5[19] = a4;
  v15 = type metadata accessor for ActionSetState.Observer();
  v29.receiver = a5;
  v29.super_class = v15;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = objc_msgSendSuper2(&v29, sel_init);
  v20 = v19[19];
  v21 = v19;
  [v20 setDelegate_];
  [v16 addDelegate_];
  [v17 addObserver:v21 selector:sel_handleActionSetAddedWithNotification_ name:@"HMDActionSetAddedNotification" object:a1];

  if (swift_unknownObjectWeakLoadStrong())
  {
    v22 = v21[25];
    ObjectType = swift_getObjectType();
    v24 = (*(v22 + 72))(v21, ObjectType, v22);
    swift_unknownObjectRelease();
    v25 = sub_22A4DD9DC();
    (*(*(v25 - 8) + 56))(v12, 1, 1, v25);
    v26 = swift_allocObject();
    v26[2] = 0;
    v26[3] = 0;
    v26[4] = v21;
    v26[5] = v24;
    v27 = v21;
    sub_22957F3C0(0, 0, v12, &unk_22A5832D0, v26);
  }

  return v21;
}

id sub_2297ACD98(void *a1)
{
  v2 = v1;
  v4 = sub_22A4DB7DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_primaryResidentNetworkInfoUpdateTask] = 0;
  v8 = &v2[OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_roomPresencePublisher];
  *v8 = 0;
  *(v8 + 8) = 0u;
  *(v8 + 24) = 0u;
  *(v8 + 5) = 0;
  v9 = &v2[OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_roomPresenceStorage];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = &v2[OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_homeStorage];
  *(v10 + 4) = 0;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v46 = v10;
  *&v2[OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_energyKitHindsightCloudShareManager] = 0;
  v11 = [a1 uuid];
  sub_22A4DB79C();

  v12 = [a1 workQueue];
  Controller = type metadata accessor for AccessoryInfoFetchController(0);
  v14 = objc_allocWithZone(Controller);
  *&v14[OBJC_IVAR____TtC13HomeKitDaemon28AccessoryInfoFetchController_messageDispatcher] = 0;
  *&v14[OBJC_IVAR____TtC13HomeKitDaemon28AccessoryInfoFetchController_remoteEventRouterClientController] = 0;
  v44 = *(v5 + 16);
  v44(&v14[OBJC_IVAR____TtC13HomeKitDaemon28AccessoryInfoFetchController_messageTargetUUID], v7, v4);
  *&v14[OBJC_IVAR____TtC13HomeKitDaemon28AccessoryInfoFetchController_messageReceiveQueue] = v12;
  v53.receiver = v14;
  v53.super_class = Controller;
  v15 = objc_msgSendSuper2(&v53, sel_init);
  v45 = v5;
  v43 = *(v5 + 8);
  v43(v7, v4);
  *&v2[OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_accessoryInfoFetchController] = v15;
  LODWORD(Controller) = [objc_msgSend(a1 localCapabilitiesDataSource)];
  swift_unknownObjectRelease();
  v16 = 0;
  if (Controller)
  {
    v17 = a1;
    v18 = [v17 notificationRegistry];
    v19 = [objc_opt_self() defaultCenter];
    v20 = [objc_allocWithZone(MEMORY[0x277D0F7B0]) initWithMinimumTimeInterval:2 maximumTimeInterval:0 exponentialFactor:15.0 options:2000.0];
    type metadata accessor for ActionSetState.Observer();
    v21 = swift_allocObject();
    v16 = sub_2297ACB20(v17, v18, v19, v20, v21);
  }

  *&v2[OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_actionSetStateObserver] = v16;
  v22 = _s19SubscriptionManagerCMa();
  v23 = objc_allocWithZone(v22);
  v24 = &v23[OBJC_IVAR____TtCC13HomeKitDaemon14ActionSetState19SubscriptionManager_delegate];
  *&v23[OBJC_IVAR____TtCC13HomeKitDaemon14ActionSetState19SubscriptionManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v25 = OBJC_IVAR____TtCC13HomeKitDaemon14ActionSetState19SubscriptionManager_monitoredActionSets;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D881158, &qword_22A5832C8);
  v26 = swift_allocObject();
  *(v26 + 24) = 0;
  *(v26 + 16) = MEMORY[0x277D84F98];
  *&v23[v25] = v26;
  *(v24 + 1) = &off_283CE8330;
  swift_unknownObjectWeakAssign();
  v52.receiver = v23;
  v52.super_class = v22;
  *&v2[OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_actionSetStateSubscriptionManager] = objc_msgSendSuper2(&v52, sel_init);
  v27 = [a1 msgDispatcher];
  if (v27)
  {
    v28 = [a1 uuid];
    sub_22A4DB79C();

    updated = type metadata accessor for UserPresenceUpdateSubscriptionManager(0);
    v30 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v30 + 14) = [objc_opt_self() weakObjectsHashTable];
    v44(&v30[OBJC_IVAR____TtC13HomeKitDaemon37UserPresenceUpdateSubscriptionManager_uuid], v7, v4);
    *&v30[OBJC_IVAR____TtC13HomeKitDaemon37UserPresenceUpdateSubscriptionManager_messageDispatcher] = v27;
    v47.receiver = v30;
    v47.super_class = updated;
    v27 = objc_msgSendSuper2(&v47, &selRef_initWithBase_actionSetUniqueIdentifier_actionSetType_associatedAccessoryUniqueIdentifiers_actionSetName_homeName_);
    v43(v7, v4);
  }

  *&v2[OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_userPresenceSubscriptionManager] = v27;
  v31 = [a1 uuid];
  sub_22A4DB79C();

  v50 = &type metadata for SystemSymptomReporter;
  v51 = &off_283CDE2E8;
  type metadata accessor for NetworkDiagnosticsSymptomReporter(0);
  v32 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_0(v49, &type metadata for SystemSymptomReporter);
  v33 = v32 + OBJC_IVAR____TtC13HomeKitDaemon33NetworkDiagnosticsSymptomReporter_symptomReporter;
  *(v33 + 24) = &type metadata for SystemSymptomReporter;
  *(v33 + 32) = &off_283CDE2E8;
  v34 = OBJC_IVAR____TtC13HomeKitDaemon33NetworkDiagnosticsSymptomReporter_lastReportedState;
  v35 = type metadata accessor for NetworkDiagnosticsSymptomReporter.State(0);
  (*(*(v35 - 8) + 56))(v32 + v34, 1, 1, v35);
  (*(v45 + 32))(v32 + OBJC_IVAR____TtC13HomeKitDaemon33NetworkDiagnosticsSymptomReporter_homeUUID, v7, v4);
  __swift_destroy_boxed_opaque_existential_0(v49);
  *&v2[OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_networkDiagnosticsSymptomReporter] = v32;
  v36 = type metadata accessor for DefaultHomeStorage();
  swift_allocObject();
  v37 = a1;
  v38 = sub_229657878(v37);

  v50 = v36;
  v51 = &off_283CDEDA8;
  v49[0] = v38;
  v39 = v46;
  swift_beginAccess();
  sub_2297ADB6C(v49, v39);
  swift_endAccess();
  v40 = _s22DefaultSwiftExtensionsCMa_0();
  v48.receiver = v2;
  v48.super_class = v40;
  return objc_msgSendSuper2(&v48, sel_init);
}

void sub_2297AD3C4(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v28 = a6;
  v29 = a5;
  v30 = sub_22A4DB7DC();
  v12 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MatterAccessoryInvokeCommandLogEvent();
  v16 = objc_allocWithZone(v15);
  swift_unknownObjectWeakInit();
  v17 = &v16[OBJC_IVAR____TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent_coreAnalyticsEventName];
  *v17 = 0xD00000000000003ALL;
  *(v17 + 1) = 0x800000022A58ECD0;
  *&v16[OBJC_IVAR____TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent_coreAnalyticsEventOptions] = 0;
  swift_unknownObjectWeakAssign();
  *&v16[OBJC_IVAR____TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent_nodeId] = a1;
  *&v16[OBJC_IVAR____TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent_endpointId] = a2;
  *&v16[OBJC_IVAR____TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent_clusterId] = a3;
  *&v16[OBJC_IVAR____TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent_commandId] = a4;
  *&v16[OBJC_IVAR____TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent_source] = v29;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = [v7 uuid];
  sub_22A4DB79C();

  v22 = sub_22A4DB77C();
  (*(v12 + 8))(v14, v30);
  v31.receiver = v16;
  v31.super_class = v15;
  v23 = objc_msgSendSuper2(&v31, sel_initWithHomeUUID_, v22);

  v24 = [v7 logEventSubmitter];
  if (v24)
  {
    v25 = v24;
    if (v28)
    {
      v26 = sub_22A4DB3DC();
    }

    else
    {
      v26 = 0;
    }

    [v25 submitLogEvent:v23 error:v26];

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2297AD66C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8810B0, &qword_22A583238) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8810A0, &qword_22A583228) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_229586D38;

  return sub_2297AA198(a1, v10, v11, v1 + v6, v1 + v9, v12);
}

uint64_t sub_2297AD80C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6 != 1)
  {
    sub_229590D18(result, a2);
    sub_229590D18(a3, a4);
  }

  return result;
}

double sub_2297AD86C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6 != 1)
  {
    sub_2295AEF1C(a1, a2);
    sub_2295AEF1C(a3, a4);
  }

  return result;
}

id sub_2297AD934()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result configure];
  }

  __break(1u);
  return result;
}

void sub_2297AD94C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881148, &qword_22A5832C0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_2297A6CA0(v2, v3, v4);
}

uint64_t objectdestroy_74Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881148, &qword_22A5832C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2297ADAE8(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881148, &qword_22A5832C0) - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_2297ADB6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8804B0, &qword_22A581910);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2297ADBDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229569B30;

  return sub_22974E734(a1, v4, v5, v7, v6);
}

uint64_t sub_2297ADCE4(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    AssociatedTypeWitness = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return AssociatedTypeWitness;
}

uint64_t sub_2297ADDDC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = *(v4 - 8);
  v31 = *(v7 + 84);
  if (v31 <= v6)
  {
    v8 = *(v5 + 84);
  }

  else
  {
    v8 = *(v7 + 84);
  }

  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  v11 = *(v5 + 80);
  v12 = *(v5 + 64);
  v13 = *(v7 + 80);
  v14 = *(v10 + 80);
  if (*(v10 + 84) <= v8)
  {
    v15 = v8;
  }

  else
  {
    v15 = *(v10 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(v7 + 64) + v14;
  if (a2 > v15)
  {
    v17 = ((v16 + ((v12 + v13 + ((v11 + 16) & ~v11)) & ~v13)) & ~v14) + *(*(v9 - 8) + 64);
    v18 = 8 * v17;
    if (v17 <= 3)
    {
      v20 = ((a2 - v15 + ~(-1 << v18)) >> v18) + 1;
      if (HIWORD(v20))
      {
        v19 = *(a1 + v17);
        if (!v19)
        {
          goto LABEL_30;
        }

        goto LABEL_17;
      }

      if (v20 > 0xFF)
      {
        v19 = *(a1 + v17);
        if (!*(a1 + v17))
        {
          goto LABEL_30;
        }

        goto LABEL_17;
      }

      if (v20 < 2)
      {
LABEL_30:
        if (v15)
        {
          goto LABEL_31;
        }

        return 0;
      }
    }

    v19 = *(a1 + v17);
    if (!*(a1 + v17))
    {
      goto LABEL_30;
    }

LABEL_17:
    v21 = (v19 - 1) << v18;
    if (v17 > 3)
    {
      v21 = 0;
    }

    if (v17)
    {
      if (v17 <= 3)
      {
        v22 = v17;
      }

      else
      {
        v22 = 4;
      }

      if (v22 > 2)
      {
        if (v22 == 3)
        {
          v23 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v23 = *a1;
        }
      }

      else if (v22 == 1)
      {
        v23 = *a1;
      }

      else
      {
        v23 = *a1;
      }
    }

    else
    {
      v23 = 0;
    }

    return v15 + (v23 | v21) + 1;
  }

LABEL_31:
  v24 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & ~v11;
  if (v6 == v15)
  {
    v25 = *(v5 + 48);
    v26 = v6;
    v27 = AssociatedTypeWitness;

    return v25(v24, v26, v27);
  }

  v24 = (v24 + v12 + v13) & ~v13;
  if (v31 == v15)
  {
    v25 = *(v7 + 48);
    v26 = v31;
    v27 = v4;

    return v25(v24, v26, v27);
  }

  v29 = *(v10 + 48);
  v30 = (v16 + v24) & ~v14;

  return v29(v30);
}

void sub_2297AE188(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v5 - 8);
  v32 = v8;
  v31 = *(v8 + 84);
  if (v31 <= v7)
  {
    v9 = *(v6 + 84);
  }

  else
  {
    v9 = *(v8 + 84);
  }

  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = v10;
  if (*(v10 + 84) <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v6 + 80);
  v14 = *(v6 + 64);
  v15 = *(v8 + 80);
  v16 = *(v10 + 80);
  v17 = *(v8 + 64) + v16;
  v18 = ((v17 + ((v14 + v15 + ((v13 + 16) & ~v13)) & ~v15)) & ~v16) + *(v10 + 64);
  if (a3 <= v12)
  {
    v21 = 0;
    v19 = a1;
    v20 = a2;
  }

  else
  {
    v19 = a1;
    v20 = a2;
    if (v18 <= 3)
    {
      v24 = ((a3 - v12 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
      if (HIWORD(v24))
      {
        v21 = 4;
      }

      else
      {
        if (v24 < 0x100)
        {
          v25 = 1;
        }

        else
        {
          v25 = 2;
        }

        if (v24 >= 2)
        {
          v21 = v25;
        }

        else
        {
          v21 = 0;
        }
      }
    }

    else
    {
      v21 = 1;
    }
  }

  if (v12 < v20)
  {
    v22 = ~v12 + v20;
    if (v18 < 4)
    {
      v23 = (v22 >> (8 * v18)) + 1;
      if (v18)
      {
        v26 = v22 & ~(-1 << (8 * v18));
        bzero(v19, v18);
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *v19 = v26;
            if (v21 > 1)
            {
LABEL_53:
              if (v21 == 2)
              {
                *&v19[v18] = v23;
              }

              else
              {
                *&v19[v18] = v23;
              }

              return;
            }
          }

          else
          {
            *v19 = v22;
            if (v21 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *v19 = v26;
        v19[2] = BYTE2(v26);
      }

      if (v21 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(v19, v18);
      *v19 = v22;
      v23 = 1;
      if (v21 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v21)
    {
      v19[v18] = v23;
    }

    return;
  }

  if (v21 <= 1)
  {
    if (v21)
    {
      v19[v18] = 0;
      if (!v20)
      {
        return;
      }

      goto LABEL_34;
    }

LABEL_33:
    if (!v20)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v21 == 2)
  {
    *&v19[v18] = 0;
    goto LABEL_33;
  }

  *&v19[v18] = 0;
  if (!v20)
  {
    return;
  }

LABEL_34:
  v27 = (((v19 + 15) & 0xFFFFFFFFFFFFFFF8) + v13 + 8) & ~v13;
  if (v7 == v12)
  {
    v28 = *(v6 + 56);

LABEL_37:
    v28(v27);
    return;
  }

  v27 = (v27 + v14 + v15) & ~v15;
  if (v31 == v12)
  {
    v28 = *(v32 + 56);

    goto LABEL_37;
  }

  v29 = *(v11 + 56);
  v30 = (v17 + v27) & ~v16;

  v29(v30);
}

uint64_t sub_2297AE5C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  result = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v18 = &v27 - v17;
  if (a2 < a1 || a2 < 1)
  {
    __break(1u);
  }

  else
  {
    v28 = a1;
    v29 = a2;
    v30 = a4;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    sub_22A4DE3BC();
    v19 = sub_22A4DD51C();
    v20 = v18;
    v21 = *(v15 + 8);
    result = v21(v20, AssociatedTypeWitness);
    if (v19)
    {
      v23 = v29;
      *a7 = v28;
      *(a7 + 1) = v23;
      v24 = type metadata accessor for TokenBucket(0, a5, a6, v22);
      (*(v15 + 16))(&a7[*(v24 + 40)], a3, AssociatedTypeWitness);
      v25 = *(a5 - 8);
      v26 = v30;
      (*(v25 + 16))(&a7[*(v24 + 44)], v30, a5);
      sub_22A4DE68C();
      (*(v25 + 8))(v26, a5);
      return v21(a3, AssociatedTypeWitness);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2297AE858(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v5 = &v27 - v4;
  v6 = swift_getAssociatedTypeWitness();
  v32 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v9 = *(a1 + 48);
  sub_22A4DE68C();
  swift_getAssociatedConformanceWitness();
  v30 = v9;
  sub_22A4DE30C();
  v10 = *(v31 + 8);
  v29 = v5;
  v10(v5, AssociatedTypeWitness);
  v28 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v11 = v1;
  sub_22A4DE32C();
  v13 = v12;
  v14 = v12;
  v15 = *(v32 + 8);
  v32 += 8;
  result = v15(v8, v6);
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v17 = v11;
  sub_22A4DE34C();
  v18 = v15;
  v19 = v29;
  v20 = v30;
  v21 = v28;
  sub_22A4DE2FC();
  v18(v8, v6);
  result = (*(v31 + 40))(&v17[v20], v19, v21);
  v22 = *v17;
  v23 = *(v17 + 1);
  v24 = __OFSUB__(v23, *v17);
  v25 = v23 - *v17;
  if (v24)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v25 >= (v13 & ~(v13 >> 63)))
  {
    v25 = v13 & ~(v13 >> 63);
  }

  v24 = __OFADD__(v22, v25);
  v26 = v22 + v25;
  if (!v24)
  {
    result = v26 > 0;
    *v17 = v26 - result;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_2297AEBA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  result = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v11 - v8;
  if (*v2)
  {
    __break(1u);
  }

  else
  {
    v10 = *(a1 + 48);
    swift_getAssociatedConformanceWitness();
    sub_22A4DE2FC();
    (*(v6 + 40))(&v2[v10], v9, AssociatedTypeWitness);
    return (*(v6 + 16))(a2, &v2[v10], AssociatedTypeWitness);
  }

  return result;
}

uint64_t HMDHAPAccessory.demoModePath.getter()
{
  v1 = sub_22A4DB7DC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = demoModeConfigPath();
  v6 = sub_22A4DD5EC();
  v8 = v7;

  v14 = 47;
  v15 = 0xE100000000000000;
  v9 = [v0 uuid];
  sub_22A4DB79C();

  sub_229586A3C();
  v10 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v10);

  (*(v2 + 8))(v4, v1);
  v11 = v14;
  v12 = v15;
  v14 = v6;
  v15 = v8;

  MEMORY[0x22AAD08C0](v11, v12);

  return v14;
}

uint64_t HMDHAPAccessory.demoModeCameraPath.getter()
{
  v1 = [v0 demoModePath];
  v2 = sub_22A4DD5EC();

  MEMORY[0x22AAD08C0](0x736172656D61432FLL, 0xE800000000000000);

  return v2;
}

void sub_2297AF034(void *a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22A4DB4EC();
  v3 = [a1 fileExistsAtURL_];

  if (v3)
  {
    v4 = sub_22A4DB4EC();
    v8[0] = 0;
    v5 = [a1 removeItemAtURL:v4 error:v8];

    if (v5)
    {
      v6 = v8[0];
    }

    else
    {
      v7 = v8[0];
      sub_22A4DB3EC();

      swift_willThrow();
    }
  }
}

uint64_t static HomeUtilPassCommandHandler.handlePassCommandFor(data:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2297AF1DC;

  return sub_2297AF7E4(a1, a2);
}

uint64_t sub_2297AF1DC(uint64_t a1, uint64_t a2)
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

uint64_t sub_2297AF470(void *a1, void *aBlock)
{
  v2[2] = _Block_copy(aBlock);
  v4 = a1;
  v5 = sub_22A4DB62C();
  v7 = v6;

  v2[3] = v5;
  v2[4] = v7;
  v8 = swift_task_alloc();
  v2[5] = v8;
  *v8 = v2;
  v8[1] = sub_2297AF550;

  return sub_2297AF7E4(v5, v7);
}

uint64_t sub_2297AF550(uint64_t a1, void *a2)
{
  v4 = v2;
  v6 = *v3;
  v7 = *(*v3 + 32);
  v8 = *(*v3 + 24);
  v9 = *v3;

  sub_2295798D4(v8, v7);
  if (v4)
  {
    a2 = sub_22A4DB3DC();

    v10 = a2;
LABEL_3:
    v11 = 0;
    goto LABEL_6;
  }

  if (!a2)
  {
    v10 = 0;
    goto LABEL_3;
  }

  v12 = sub_22A4DD5AC();

  v11 = v12;
  v10 = 0;
  a2 = v12;
LABEL_6:
  v13 = *(v6 + 16);
  (v13)[2](v13, v11, v10);

  _Block_release(v13);
  v14 = *(v9 + 8);

  return v14();
}

id HomeUtilPassCommandHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HomeUtilPassCommandHandler.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeUtilPassCommandHandler();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HomeUtilPassCommandHandler.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for HomeUtilPassCommandHandler();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_2297AF7E4(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return MEMORY[0x2822009F8](sub_2297AF804, 0, 0);
}

uint64_t sub_2297AF804()
{
  sub_22A4DB0BC();
  swift_allocObject();
  sub_22A4DB0AC();
  sub_2297B0D10();
  sub_22A4DB09C();

  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  *(v0 + 64) = v2;
  *(v0 + 72) = v1;
  v3 = *(v0 + 32);
  *(v0 + 80) = v3;
  if (*(v0 + 40))
  {
    if (*(v0 + 40) == 1)
    {
      if (v1)
      {
        v4 = qword_281402DF8;

        if (v4 != -1)
        {
          swift_once();
        }

        v5 = swift_task_alloc();
        *(v0 + 208) = v5;
        *v5 = v0;
        v5[1] = sub_2297B07D4;

        return sub_229844D8C(v2, v1);
      }

      else
      {
        if (qword_281402DF8 != -1)
        {
          swift_once();
        }

        v10 = swift_task_alloc();
        *(v0 + 240) = v10;
        *v10 = v0;
        v10[1] = sub_2297B0984;

        return runHomeUtilOnDeviceTests(_:)(&unk_283CDBA00);
      }
    }

    if (qword_281402DF8 != -1)
    {
      swift_once();
    }

    v7 = static PassUpdater.shared;
    *(v0 + 88) = static PassUpdater.shared;
    v8 = sub_2297AFBC0;
  }

  else if (v3)
  {
    if (qword_281402DF8 != -1)
    {
      swift_once();
    }

    v7 = static PassUpdater.shared;
    *(v0 + 112) = static PassUpdater.shared;
    v8 = sub_2297AFDF0;
  }

  else
  {
    if ((v2 & 1) == 0)
    {
      if (qword_281402DF8 != -1)
      {
        swift_once();
      }

      v11 = static PassUpdater.shared;
      *(v0 + 168) = static PassUpdater.shared;
      *(v0 + 176) = [objc_opt_self() untrackedPlaceholderFlow];
      v9 = sub_2297B0480;
      v7 = v11;
      goto LABEL_17;
    }

    if (qword_281402DF8 != -1)
    {
      swift_once();
    }

    v7 = static PassUpdater.shared;
    *(v0 + 144) = static PassUpdater.shared;
    v8 = sub_2297B0170;
  }

  v9 = v8;
LABEL_17:

  return MEMORY[0x2822009F8](v9, v7, 0);
}

uint64_t sub_2297AFBC0()
{
  v3 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_2297AFC8C;

  return v3();
}

uint64_t sub_2297AFC8C()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 88);
  if (v0)
  {
    v4 = sub_2297AFDD8;
  }

  else
  {
    v4 = sub_2297AFDB8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2297AFDF0()
{
  v1 = v0[14];
  v3 = v0[9];
  v2 = v0[10];
  v4 = swift_task_alloc();
  v0[15] = v4;
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_2297AFEE8;

  return v7();
}

uint64_t sub_2297AFEE8()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = sub_2297B009C;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_2297B000C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2297B0028()
{
  sub_2297B0D64(v0[8], v0[9], v0[10], 0);
  v1 = v0[1];

  return v1(0, 0);
}

uint64_t sub_2297B009C()
{

  return MEMORY[0x2822009F8](sub_2297B0104, 0, 0);
}

uint64_t sub_2297B0104()
{
  sub_2297B0D64(v0[8], v0[9], v0[10], 0);
  v1 = v0[1];

  return v1();
}

uint64_t sub_2297B0170()
{
  v3 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_2297B023C;

  return v3();
}

uint64_t sub_2297B023C()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 144);
  if (v0)
  {
    v4 = sub_2297B03F8;
  }

  else
  {
    v4 = sub_2297B0368;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2297B0384()
{
  sub_2297B0D64(v0[8], v0[9], 0, 0);
  v1 = v0[1];

  return v1(0, 0);
}

uint64_t sub_2297B0414()
{
  sub_2297B0D64(v0[8], v0[9], 0, 0);
  v1 = v0[1];

  return v1();
}

uint64_t sub_2297B0480()
{
  v1 = swift_task_alloc();
  v2 = *(v0 + 168);
  *(v0 + 184) = v1;
  *(v1 + 16) = v2;
  v5 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v3 = swift_task_alloc();
  *(v0 + 192) = v3;
  *v3 = v0;
  v3[1] = sub_2297B0568;

  return v5();
}

uint64_t sub_2297B0568()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = *(v2 + 168);
    v4 = sub_2297B06F8;
  }

  else
  {
    v5 = *(v2 + 168);

    v4 = sub_2297B0690;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2297B0690()
{

  return MEMORY[0x2822009F8](sub_2297B0F70, 0, 0);
}

uint64_t sub_2297B06F8()
{

  return MEMORY[0x2822009F8](sub_2297B0768, 0, 0);
}

uint64_t sub_2297B0768()
{
  sub_2297B0D64(v0[8], v0[9], 0, 0);
  v1 = v0[1];

  return v1();
}

uint64_t sub_2297B07D4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 216) = v2;

  if (v2)
  {
    v7 = sub_2297B0BA4;
  }

  else
  {
    v8 = v6[9];
    v9 = v6[10];
    v10 = v6[8];
    v6[28] = a2;
    v6[29] = a1;
    sub_2297B0D64(v10, v8, v9, 1u);
    v7 = sub_2297B090C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2297B090C()
{
  v1 = v0[28];
  sub_2297B0D64(v0[8], v0[9], v0[10], 1u);
  v2 = v0[29];
  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_2297B0984(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 248) = v2;

  if (v2)
  {
    v7 = sub_2297B0B34;
  }

  else
  {
    *(v6 + 256) = a2;
    *(v6 + 264) = a1;
    v7 = sub_2297B0AB8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2297B0AB8()
{
  v1 = v0[32];
  sub_2297B0D64(v0[8], 0, v0[10], 1u);
  v2 = v0[33];
  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_2297B0B34()
{
  sub_2297B0D64(v0[8], 0, v0[10], 1u);
  v1 = v0[1];

  return v1();
}

uint64_t sub_2297B0BA4()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  sub_2297B0D64(v3, v1, v2, 1u);
  sub_2297B0D64(v3, v1, v2, 1u);
  v4 = v0[1];

  return v4();
}

uint64_t sub_2297B0C5C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_229569B30;

  return sub_2297AF470(v2, v3);
}

unint64_t sub_2297B0D10()
{
  result = qword_27D8811E0;
  if (!qword_27D8811E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8811E0);
  }

  return result;
}

uint64_t sub_2297B0D64(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
  }

  return result;
}

uint64_t sub_2297B0D84(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_229586D38;

  return sub_229858414(a1, v1);
}

uint64_t sub_2297B0E20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_229569B30;

  return sub_229858E7C(a1, v4, v5, v6);
}

uint64_t sub_2297B0ED4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_229586D38;

  return sub_2298570B4(a1, v1);
}

id sub_2297B0F74(void (**a1)(char *, uint64_t))
{
  v2 = v1;
  v4 = sub_22A4DB7DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 uuid];
  sub_22A4DB79C();

  LOBYTE(v8) = sub_22A4DB78C();
  v9 = *(v5 + 8);
  v9(v7, v4);
  if (v8)
  {
    swift_unknownObjectRetain();
    return v2;
  }

  v10 = sub_22A4DB77C();
  v11 = [v2 roomWithUUID_];

  if (v11)
  {
    return v11;
  }

  v12 = [v2 zones];
  sub_229562F68(0, &qword_281401788, off_278666398);
  v13 = sub_22A4DD83C();

  MEMORY[0x28223BE20](v14);
  *(&v32 - 2) = a1;
  v11 = sub_22968FFF0(sub_2297B1ECC, (&v32 - 4), v13);

  if (v11)
  {
    return v11;
  }

  result = [v2 actionSets];
  if (result)
  {
    v16 = result;
    sub_229562F68(0, &qword_281401C20, off_278666020);
    v17 = sub_22A4DD83C();

    MEMORY[0x28223BE20](v18);
    *(&v32 - 2) = a1;
    v11 = sub_22968FFF0(sub_2297B1FF8, (&v32 - 4), v17);

    if (v11)
    {
      return v11;
    }

    v19 = sub_2297B14B0(a1);
    if (v19)
    {
      return v19;
    }

    v19 = sub_2297B1878(a1);
    if (v19)
    {
      return v19;
    }

    result = [v2 mediaSystems];
    if (result)
    {
      v20 = result;
      sub_229562F68(0, &qword_27D880220, off_278666288);
      v21 = sub_22A4DD83C();

      if (v21 >> 62)
      {
        goto LABEL_33;
      }

      for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
      {
        v23 = 0;
        v35 = v21 & 0xFFFFFFFFFFFFFF8;
        v36 = v21 & 0xC000000000000001;
        v33 = i;
        v34 = v21;
        while (1)
        {
          if (v36)
          {
            v24 = MEMORY[0x22AAD13F0](v23, v21);
          }

          else
          {
            if (v23 >= *(v35 + 16))
            {
              goto LABEL_32;
            }

            v24 = *(v21 + 8 * v23 + 32);
          }

          v25 = v24;
          v38 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            break;
          }

          v26 = [v24 messageTargetUUID];
          sub_22A4DB79C();

          LOBYTE(v26) = sub_22A4DB78C();
          v9(v7, v4);
          if (v26)
          {

            return v25;
          }

          v27 = [v25 settingsController];
          if (v27)
          {
            v37 = v25;
            v28 = v27;
            v2 = [v28 messageHandler];
            v29 = [v2 messageTargetUUID];
            sub_22A4DB79C();

            LOBYTE(v29) = sub_22A4DB78C();
            v9(v7, v4);
            if (v29)
            {

              v31 = v37;
LABEL_30:

              return v2;
            }

            v30 = sub_22A4DB77C();
            v31 = [v28 settingForUUID_];

            if (v31)
            {
              goto LABEL_30;
            }

            swift_unknownObjectRelease();
            i = v33;
            v21 = v34;
          }

          else
          {
          }

          ++v23;
          if (v38 == i)
          {
            goto LABEL_34;
          }
        }

        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        ;
      }

LABEL_34:

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_2297B14B0(void (**a1)(char *, uint64_t))
{
  v24 = sub_22A4DB7DC();
  v3 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 triggers];
  if (!result)
  {
    goto LABEL_25;
  }

  v7 = result;
  sub_229562F68(0, &qword_27D8811E8, off_278666340);
  v8 = sub_22A4DD83C();

  if (v8 >> 62)
  {
    goto LABEL_23;
  }

  v25 = v8 & 0xFFFFFFFFFFFFFF8;
  v27 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v9 = 0;
  v26 = v8 & 0xC000000000000001;
  v23 = (v3 + 8);
  while (1)
  {
    if (v27 == v9)
    {

      return 0;
    }

    if (v26)
    {
      v13 = MEMORY[0x22AAD13F0](v9, v8);
    }

    else
    {
      if (v9 >= *(v25 + 16))
      {
        goto LABEL_22;
      }

      v13 = *(v8 + 8 * v9 + 32);
    }

    v14 = v13;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      v25 = v8 & 0xFFFFFFFFFFFFFF8;
      v27 = sub_22A4DE0EC();
      goto LABEL_4;
    }

    v15 = [v13 messageTargetUUID];
    sub_22A4DB79C();

    LOBYTE(v15) = sub_22A4DB78C();
    (*v23)(v5, v24);
    if (v15)
    {

      return v14;
    }

    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      break;
    }

LABEL_5:
    v10 = [v14 actionSets];
    sub_229562F68(0, &qword_281401C20, off_278666020);
    v11 = sub_22A4DD83C();

    MEMORY[0x28223BE20](v12);
    *(&v23 - 2) = a1;
    v3 = sub_22968FFF0(sub_2297B1FF8, (&v23 - 4), v11);

    ++v9;
    if (v3)
    {

      return v3;
    }
  }

  v17 = v16;
  v18 = v14;
  result = [v17 events];
  if (result)
  {
    v19 = result;
    sub_229562F68(0, &qword_27D8811F0, off_278666128);
    v20 = sub_22A4DD83C();

    MEMORY[0x28223BE20](v21);
    *(&v23 - 2) = a1;
    v22 = sub_22968FFF0(sub_2297B1FF8, (&v23 - 4), v20);

    if (v22)
    {

      return v22;
    }

    goto LABEL_5;
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

id sub_2297B1878(void *a1)
{
  v2 = v1;
  v49 = sub_22A4DB7DC();
  v4 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v2 accessories];
  sub_229562F68(0, &qword_281401C30, off_278665FE8);
  v7 = sub_22A4DD83C();

  if (v7 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    v9 = 0;
    v45 = v7 & 0xFFFFFFFFFFFFFF8;
    v46 = v7 & 0xC000000000000001;
    v47 = (v4 + 8);
    v43 = v7;
    v44 = i;
    while (1)
    {
      if (v46)
      {
        v11 = MEMORY[0x22AAD13F0](v9, v7);
      }

      else
      {
        if (v9 >= *(v45 + 16))
        {
          goto LABEL_31;
        }

        v11 = *(v7 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v14 = [v11 uuid];
      v15 = v48;
      sub_22A4DB79C();

      v4 = sub_22A4DB78C();
      v16 = *v47;
      (*v47)(v15, v49);
      if (v4)
      {

        return v12;
      }

      objc_opt_self();
      v17 = swift_dynamicCastObjCClass();
      if (v17)
      {
        v18 = v17;
        v19 = v12;
        v20 = a1;
        v21 = [v18 services];
        sub_229562F68(0, &unk_27D87D360, off_278666310);
        v22 = sub_22A4DD83C();

        MEMORY[0x28223BE20](v23);
        *(&v41 - 2) = v20;
        v24 = sub_22968FFF0(sub_2297B1FF8, (&v41 - 4), v22);

        if (v24)
        {

          return v24;
        }

        v4 = sub_229786B3C(v20);

        a1 = v20;
        v7 = v43;
        if (v4)
        {

LABEL_27:

          return v4;
        }
      }

      else
      {
        objc_opt_self();
        v29 = swift_dynamicCastObjCClass();
        if (v29)
        {
          v4 = v29;
          v30 = v12;
          v31 = [v4 settingsController];
          if (v31)
          {
            v42 = v30;
            v32 = a1;
            v33 = v31;
            v41 = [v33 messageHandler];
            v34 = [v41 messageTargetUUID];
            v35 = v48;
            sub_22A4DB79C();

            LOBYTE(v34) = sub_22A4DB78C();
            v16(v35, v49);
            if (v34)
            {

              v39 = v42;

              return v41;
            }

            v36 = v32;
            v37 = sub_22A4DB77C();
            v4 = [v33 settingForUUID_];

            v38 = v42;
            if (v4)
            {

              return v41;
            }

            swift_unknownObjectRelease();
            a1 = v36;
            v7 = v43;
          }

          else
          {
          }
        }
      }

      v25 = [v12 accessoryProfiles];
      if (v25)
      {
        v26 = v25;
        sub_229562F68(0, &qword_27D87D950, off_278665FF0);
        v27 = sub_22A4DD83C();

        MEMORY[0x28223BE20](v28);
        *(&v41 - 2) = a1;
        v4 = sub_22968FFF0(sub_2297B1FF8, (&v41 - 4), v27);

        v10 = v44;
        if (v4)
        {
          goto LABEL_27;
        }
      }

      else
      {

        v10 = v44;
      }

      ++v9;
      if (v13 == v10)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

LABEL_33:

  return 0;
}

uint64_t sub_2297B1EEC(id *a1, uint64_t a2)
{
  v3 = sub_22A4DB7DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 messageTargetUUID];
  sub_22A4DB79C();

  v8 = sub_22A4DB78C();
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

uint64_t sub_2297B2038(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5A0, &qword_22A582190);
  v49 = *(v5 - 8);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v55 = v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v7 - 8);
  v54 = v47 - v8;
  v9 = sub_22A4DD07C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v47 - v14;
  v56 = v4;
  sub_229541CB0(v4, &off_283CE4F78);
  v16 = sub_22A4DD05C();
  v17 = sub_22A4DDCCC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_229538000, v16, v17, "Registering for add current accessory notifications", v18, 2u);
    MEMORY[0x22AAD4E50](v18, -1, -1);
  }

  v19 = *(v10 + 8);
  v19(v15, v9);
  v53 = sub_22A4DDE5C();
  sub_229541CB0(v56, &off_283CE4F78);
  v20 = sub_22A4DD05C();
  v21 = sub_22A4DDCCC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_229538000, v20, v21, "Registering for remove current accessory notifications", v22, 2u);
    MEMORY[0x22AAD4E50](v22, -1, -1);
  }

  v19(v13, v9);
  v51 = sub_22A4DDE5C();
  v23 = sub_22A4DD9DC();
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v26 = v54;
  v47[1] = v24 + 56;
  v48 = v25;
  v25(v54, 1, 1, v23);
  v27 = swift_allocObject();
  swift_weakInit();
  v52 = a1;
  v28 = v55;
  sub_2295FE8C0(a1, v55);
  v29 = (*(v49 + 80) + 48) & ~*(v49 + 80);
  v30 = (v50 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = v53;
  v31[5] = v27;
  sub_2295FE930(v28, v31 + v29);
  *(v31 + v30) = v56;

  v32 = sub_22957F3C0(0, 0, v26, &unk_22A5833D0, v31);
  swift_beginAccess();
  v33 = v2[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2[3] = v33;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v33 = sub_22958A8B4(0, v33[2] + 1, 1, v33);
    v2[3] = v33;
  }

  v36 = v33[2];
  v35 = v33[3];
  if (v36 >= v35 >> 1)
  {
    v33 = sub_22958A8B4((v35 > 1), v36 + 1, 1, v33);
  }

  v33[2] = v36 + 1;
  v33[v36 + 4] = v32;
  v2[3] = v33;
  swift_endAccess();
  v37 = v54;
  v48(v54, 1, 1, v23);
  v38 = swift_allocObject();
  swift_weakInit();
  v39 = v55;
  sub_2295FE8C0(v52, v55);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v51;
  v40[5] = v38;
  sub_2295FE930(v39, v40 + v29);
  *(v40 + v30) = v56;

  v41 = sub_22957F3C0(0, 0, v37, &unk_22A5833E0, v40);
  swift_beginAccess();
  v42 = v2[3];
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v2[3] = v42;
  if ((v43 & 1) == 0)
  {
    v42 = sub_22958A8B4(0, v42[2] + 1, 1, v42);
    v2[3] = v42;
  }

  v45 = v42[2];
  v44 = v42[3];
  if (v45 >= v44 >> 1)
  {
    v42 = sub_22958A8B4((v44 > 1), v45 + 1, 1, v42);
  }

  v42[2] = v45 + 1;
  v42[v45 + 4] = v41;
  v2[3] = v42;
  swift_endAccess();
}

uint64_t sub_2297B2698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[18] = a6;
  v7[19] = a7;
  v7[16] = a4;
  v7[17] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DCF0, &unk_22A57A560);
  v7[20] = v8;
  v7[21] = *(v8 - 8);
  v7[22] = swift_task_alloc();
  v9 = sub_22A4DD07C();
  v7[23] = v9;
  v7[24] = *(v9 - 8);
  v7[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBB0, &unk_22A57CD50);
  v7[26] = swift_task_alloc();
  v10 = sub_22A4DDE4C();
  v7[27] = v10;
  v7[28] = *(v10 - 8);
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297B2858, 0, 0);
}

uint64_t sub_2297B2858()
{

  sub_22A4DDE3C();
  swift_beginAccess();
  v1 = sub_2295F39B0();
  v2 = swift_task_alloc();
  v0[30] = v2;
  *v2 = v0;
  v2[1] = sub_2297B292C;
  v3 = v0[26];
  v4 = v0[27];

  return MEMORY[0x282200308](v3, v4, v1);
}

uint64_t sub_2297B292C()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_2295FED88;
  }

  else
  {
    v2 = sub_2297B2A40;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2297B2A5C()
{
  v1 = v0[26];
  v2 = sub_22A4DB21C();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[28] + 8))(v0[29], v0[27]);
LABEL_10:

    v19 = v0[1];

    return v19();
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v18 = v0[26];
    (*(v0[28] + 8))(v0[29], v0[27]);
    sub_2295F3A08(v18);
    goto LABEL_10;
  }

  v4 = Strong;
  sub_229541CB0(v0[19], &off_283CE4F78);
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCCC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_229538000, v5, v6, "Received NSNotification.Name.HMDHomeManagerDidAddCurrentAccessory", v7, 2u);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  v8 = v0[25];
  v9 = v0[23];
  v10 = v0[24];
  v12 = v0[21];
  v11 = v0[22];
  v13 = v0[19];
  v21 = v0[20];
  v22 = v0[26];

  (*(v10 + 8))(v8, v9);
  v0[5] = v13;
  v0[6] = &off_283CE4F90;
  v0[2] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5A0, &qword_22A582190);
  sub_22957F1C4((v0 + 2), (v0 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D610, &qword_22A578AD8);
  sub_22A4DDA0C();
  (*(v12 + 8))(v11, v21);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_2295F3A08(v22);
  v14 = sub_2295F39B0();
  v15 = swift_task_alloc();
  v0[30] = v15;
  *v15 = v0;
  v15[1] = sub_2297B292C;
  v16 = v0[26];
  v17 = v0[27];

  return MEMORY[0x282200308](v16, v17, v14);
}

uint64_t sub_2297B2D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[18] = a6;
  v7[19] = a7;
  v7[16] = a4;
  v7[17] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DCF0, &unk_22A57A560);
  v7[20] = v8;
  v7[21] = *(v8 - 8);
  v7[22] = swift_task_alloc();
  v9 = sub_22A4DD07C();
  v7[23] = v9;
  v7[24] = *(v9 - 8);
  v7[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBB0, &unk_22A57CD50);
  v7[26] = swift_task_alloc();
  v10 = sub_22A4DDE4C();
  v7[27] = v10;
  v7[28] = *(v10 - 8);
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297B2F28, 0, 0);
}

uint64_t sub_2297B2F28()
{

  sub_22A4DDE3C();
  swift_beginAccess();
  v1 = sub_2295F39B0();
  v2 = swift_task_alloc();
  v0[30] = v2;
  *v2 = v0;
  v2[1] = sub_2297B2FFC;
  v3 = v0[26];
  v4 = v0[27];

  return MEMORY[0x282200308](v3, v4, v1);
}

uint64_t sub_2297B2FFC()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_2295FE7D4;
  }

  else
  {
    v2 = sub_2297B3110;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2297B312C()
{
  v1 = v0[26];
  v2 = sub_22A4DB21C();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[28] + 8))(v0[29], v0[27]);
LABEL_10:

    v19 = v0[1];

    return v19();
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v18 = v0[26];
    (*(v0[28] + 8))(v0[29], v0[27]);
    sub_2295F3A08(v18);
    goto LABEL_10;
  }

  v4 = Strong;
  sub_229541CB0(v0[19], &off_283CE4F78);
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCCC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_229538000, v5, v6, "Received NSNotification.Name.HMDHomeManagerDidRemoveCurrentAccessory", v7, 2u);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  v8 = v0[25];
  v9 = v0[23];
  v10 = v0[24];
  v12 = v0[21];
  v11 = v0[22];
  v13 = v0[19];
  v21 = v0[20];
  v22 = v0[26];

  (*(v10 + 8))(v8, v9);
  v0[5] = v13;
  v0[6] = &off_283CE4F90;
  v0[2] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5A0, &qword_22A582190);
  sub_22957F1C4((v0 + 2), (v0 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D610, &qword_22A578AD8);
  sub_22A4DDA0C();
  (*(v12 + 8))(v11, v21);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_2295F3A08(v22);
  v14 = sub_2295F39B0();
  v15 = swift_task_alloc();
  v0[30] = v15;
  *v15 = v0;
  v15[1] = sub_2297B2FFC;
  v16 = v0[26];
  v17 = v0[27];

  return MEMORY[0x282200308](v16, v17, v14);
}

BOOL sub_2297B3438(void *a1)
{
  v1 = [a1 currentAccessory];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

uint64_t sub_2297B34BC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5A0, &qword_22A582190) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_229586D38;

  return sub_2297B2698(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_2297B3600(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5A0, &qword_22A582190) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_229569B30;

  return sub_2297B2D68(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_2297B3744()
{
  if ([v0 discoveryController])
  {
    sub_22A4DE01C();
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
    sub_229609094(v5);
    return 0;
  }
}

id sub_2297B37F8()
{
  v1 = [v0 lock];
  [v1 lock];

  if ([v0 delayedHomeManagerStorage])
  {
    sub_22A4DE01C();
    swift_unknownObjectRelease();
    sub_229543C5C(v6, v7);
    sub_229543C5C(v7, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87F2C0, &unk_22A583410);
LABEL_5:
    swift_dynamicCast();
    v4 = [v0 lock];
    [v4 unlock];

    return v5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87F2C0, &unk_22A583410);
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = MEMORY[0x277D84F90];
  *(v2 + 120) = 0;
  [v0 setDelayedHomeManagerStorage_];

  result = [v0 delayedHomeManagerStorage];
  if (result)
  {
    sub_22A4DE01C();
    swift_unknownObjectRelease();
    sub_229543C5C(v6, v7);
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

  return sub_2297B3F04(v5, v7, v2, v4, v6);
}

uint64_t sub_2297B3A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 96) = a4;
  *(v5 + 104) = a5;
  return MEMORY[0x2822009F8](sub_2297B3A40, 0, 0);
}

uint64_t sub_2297B3A40()
{
  v1 = v0[13];
  sub_2295404B0(v0[12], (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  sub_229562F68(0, &qword_281401C00, off_278666240);
  swift_dynamicCast();
  v2 = v0[10];
  v3 = sub_2297B37F8();
  v0[14] = v3;

  sub_2295404B0(v1, (v0 + 6));
  sub_229562F68(0, &qword_281401BC0, off_2786661B8);
  swift_dynamicCast();
  v0[15] = v0[11];

  return MEMORY[0x2822009F8](sub_2297B3B54, v3, 0);
}

uint64_t sub_2297B3B54()
{
  v1 = *(v0 + 120);
  sub_2297B3D70(v1);

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

void sub_2297B3D70(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D428, &qword_22A5785A8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - v6;
  v8 = *(v2 + 120);
  *(v2 + 120) = a1;
  v9 = a1;

  v10 = *(v2 + 112);
  v11 = *(v10 + 16);

  if (v11)
  {
    v12 = 0;
    while (v12 < *(v10 + 16))
    {
      (*(v5 + 16))(v7, v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12++, v4);
      v14[1] = v9;
      v13 = v9;
      sub_22A4DD8FC();
      (*(v5 + 8))(v7, v4);
      if (v11 == v12)
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
}

uint64_t sub_2297B3F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v17 - v10;
  v20[3] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  v19[3] = a5;
  v13 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(a5 - 8) + 16))(v13, a2, a5);
  v14 = sub_22A4DD9DC();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  sub_2295404B0(v20, v18);
  sub_2295404B0(v19, v17);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  sub_229543C5C(v18, (v15 + 32));
  sub_229543C5C(v17, (v15 + 64));
  sub_22957F3C0(0, 0, v11, &unk_22A583428, v15);

  __swift_destroy_boxed_opaque_existential_0(v20);
  return __swift_destroy_boxed_opaque_existential_0(v19);
}

uint64_t sub_2297B40F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_229569B30;

  return sub_2297B3A20(a1, v4, v5, v1 + 32, v1 + 64);
}

BOOL static HasAliroAccessory.__derived_enum_equals(_:_:)(int a1, int a2)
{
  if (a1 == 2)
  {
    return a2 == 2;
  }

  if (a2 == 2)
  {
    return 0;
  }

  return (a2 ^ a1 ^ 1) & 1;
}

BOOL sub_2297B4244(_BOOL8 *a1, uint64_t *a2)
{
  if (!sub_2297B7550(*a1, a1[1], *a2, a2[1]) || !sub_2297B7550(a1[2], a1[3], a2[2], a2[3]))
  {
    return 0;
  }

  v4 = a1[4];
  v5 = a1[5];
  v6 = a2[4];
  v7 = a2[5];

  return sub_2297B7550(v4, v5, v6, v7);
}

BOOL sub_2297B42B4(_BOOL8 *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if (!sub_2297B7550(*a1, a1[1], *a2, a2[1]) || !sub_2297B7550(v2, v3, v6, v7))
  {
    return 0;
  }

  return sub_2297B7550(v4, v5, v8, v9);
}

uint64_t sub_2297B4364(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *(v5 + 1035) = a5;
  *(v5 + 1034) = a4;
  *(v5 + 616) = a3;
  *(v5 + 608) = a2;
  *(v5 + 600) = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8811F8, &qword_22A5837A0);
  *(v5 + 624) = v6;
  *(v5 + 632) = *(v6 - 8);
  *(v5 + 640) = swift_task_alloc();
  v7 = sub_22A4DB7DC();
  *(v5 + 648) = v7;
  v8 = *(v7 - 8);
  *(v5 + 656) = v8;
  *(v5 + 664) = *(v8 + 64);
  *(v5 + 672) = swift_task_alloc();
  *(v5 + 680) = swift_task_alloc();
  *(v5 + 688) = swift_task_alloc();
  *(v5 + 696) = swift_task_alloc();
  *(v5 + 704) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881200, &qword_22A5837A8);
  *(v5 + 712) = v9;
  *(v5 + 720) = *(v9 - 8);
  *(v5 + 728) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881208, qword_22A5837B0);
  *(v5 + 736) = v10;
  *(v5 + 744) = *(v10 - 8);
  *(v5 + 752) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297B45A4, 0, 0);
}

uint64_t sub_2297B45A4()
{
  v1 = [*(v0 + 608) walletKeyManager];
  *(v0 + 760) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 752);
    v4 = *(v0 + 744);
    v5 = *(v0 + 736);
    v6 = sub_22A4DBCDC();
    *(v0 + 768) = v6;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 568;
    *(v0 + 24) = sub_2297B4794;
    swift_continuation_init();
    *(v0 + 328) = v5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 304));
    sub_229562F68(0, &qword_281401770, 0x277CCABB0);
    sub_22A4DD8DC();
    (*(v4 + 32))(boxed_opaque_existential_1, v3, v5);
    *(v0 + 272) = MEMORY[0x277D85DD0];
    *(v0 + 280) = 1107296256;
    *(v0 + 288) = sub_2297B6744;
    *(v0 + 296) = &block_descriptor_36;
    [v2 fetchWalletKeyColorOptionWithFlow:v6 completion:?];
    (*(v4 + 8))(boxed_opaque_existential_1, v5);
    v1 = (v0 + 16);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v1);
}

uint64_t sub_2297B4794()
{

  return MEMORY[0x2822009F8](sub_2297B4874, 0, 0);
}

uint64_t sub_2297B4874()
{
  v1 = v0;
  v2 = v0 + 10;
  v3 = v0 + 72;
  v4 = v0[96];
  v5 = v0[95];
  v6 = v0[91];
  v7 = v0[90];
  v8 = v0[89];
  v9 = v1[76];
  v1[97] = v1[71];

  v10 = [v9 nfcReaderKeyManager];
  v1[98] = v10;
  v11 = sub_22A4DBCDC();
  v1[99] = v11;
  v1[10] = v1;
  v1[15] = v3;
  v1[11] = sub_2297B4A98;
  swift_continuation_init();
  v1[49] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 46);
  sub_229562F68(0, &unk_281401948, off_2786661E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  sub_22A4DD8DC();
  (*(v7 + 32))(boxed_opaque_existential_1, v6, v8);
  v1[42] = MEMORY[0x277D85DD0];
  v1[43] = 1107296256;
  v1[44] = sub_2297B67A4;
  v1[45] = &block_descriptor_40_0;
  [v10 fetchOrCreateReaderKeyOnQueueWithRequiresPrivateKey:0 flow:v11 completion:?];
  (*(v7 + 8))(boxed_opaque_existential_1, v8);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_2297B4A98()
{
  v1 = *(*v0 + 112);
  *(*v0 + 800) = v1;
  if (v1)
  {
    v2 = sub_2297B64E4;
  }

  else
  {
    v2 = sub_2297B4BA8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2297B4BA8()
{
  v1 = *(v0 + 792);
  v2 = *(v0 + 784);
  v3 = *(v0 + 608);
  v4 = *(v0 + 576);
  *(v0 + 808) = v4;

  v5 = [v4 publicKeyExternalRepresentation];
  v6 = sub_22A4DB62C();
  v8 = v7;

  *(v0 + 816) = v6;
  *(v0 + 824) = v8;
  v9 = [v4 identifier];
  v10 = sub_22A4DB62C();
  v12 = v11;

  *(v0 + 832) = v10;
  *(v0 + 840) = v12;
  v13 = objc_opt_self();
  v14 = [v4 publicKey];
  v15 = sub_22A4DB62C();
  v17 = v16;

  v18 = sub_22A4DB61C();
  sub_2295798D4(v15, v17);
  v19 = [v13 identifier16BytesForKey_];

  v20 = sub_22A4DB62C();
  v22 = v21;

  *(v0 + 848) = v20;
  *(v0 + 856) = v22;
  v23 = [v3 spiClientIdentifier];
  sub_22A4DB79C();

  v24 = [objc_opt_self() sharedRegistry];
  v25 = HMDBulletinBundleIdentifier();
  if (v25)
  {
    v26 = v25;
    v27 = [v24 applicationInfoForBundleIdentifier_];
    *(v0 + 864) = v27;

    if (v27)
    {
    }

    v28 = [objc_opt_self() sharedBulletinBoard];
    *(v0 + 872) = v28;
    if (v28)
    {
      v29 = v28;
      v30 = (v0 + 208);
      v31 = *(v0 + 640);
      v32 = *(v0 + 632);
      v33 = *(v0 + 624);
      *(v0 + 208) = v0;
      *(v0 + 248) = v0 + 1032;
      *(v0 + 216) = sub_2297B507C;
      swift_continuation_init();
      *(v0 + 520) = v33;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 496));
      sub_22A4DD8DC();
      (*(v32 + 32))(boxed_opaque_existential_1, v31, v33);
      *(v0 + 464) = MEMORY[0x277D85DD0];
      *(v0 + 472) = 1107296256;
      *(v0 + 480) = sub_229862C18;
      *(v0 + 488) = &block_descriptor_49_0;
      [v29 fetchAreUserNotificationsEnabledWithCompletion_];
      (*(v32 + 8))(boxed_opaque_existential_1, v33);
    }

    else
    {
      v30 = (v0 + 144);
      *(v0 + 1036) = 0;
      v35 = *(v0 + 640);
      v36 = *(v0 + 632);
      v37 = *(v0 + 624);
      v38 = [objc_allocWithZone(HMDHomeWalletDataSource) init];
      *(v0 + 880) = v38;
      *(v0 + 144) = v0;
      *(v0 + 184) = v0 + 1033;
      *(v0 + 152) = sub_2297B5330;
      swift_continuation_init();
      *(v0 + 456) = v37;
      v39 = __swift_allocate_boxed_opaque_existential_1((v0 + 432));
      sub_22A4DD8DC();
      (*(v36 + 32))(v39, v35, v37);
      *(v0 + 400) = MEMORY[0x277D85DD0];
      *(v0 + 408) = 1107296256;
      *(v0 + 416) = sub_229862C18;
      *(v0 + 424) = &block_descriptor_43_0;
      [v38 canNotifyAboutExpressModeWithCompletion_];
      (*(v36 + 8))(v39, v37);
    }

    v25 = v30;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v25);
}

uint64_t sub_2297B507C()
{

  return MEMORY[0x2822009F8](sub_2297B515C, 0, 0);
}

uint64_t sub_2297B515C()
{
  v1 = *(v0 + 1032);

  *(v0 + 1036) = v1;
  v2 = *(v0 + 640);
  v3 = *(v0 + 632);
  v4 = *(v0 + 624);
  v5 = [objc_allocWithZone(HMDHomeWalletDataSource) init];
  *(v0 + 880) = v5;
  *(v0 + 144) = v0;
  *(v0 + 184) = v0 + 1033;
  *(v0 + 152) = sub_2297B5330;
  swift_continuation_init();
  *(v0 + 456) = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 432));
  sub_22A4DD8DC();
  (*(v3 + 32))(boxed_opaque_existential_1, v2, v4);
  *(v0 + 400) = MEMORY[0x277D85DD0];
  *(v0 + 408) = 1107296256;
  *(v0 + 416) = sub_229862C18;
  *(v0 + 424) = &block_descriptor_43_0;
  [v5 canNotifyAboutExpressModeWithCompletion_];
  (*(v3 + 8))(boxed_opaque_existential_1, v4);

  return MEMORY[0x282200938](v0 + 144);
}

uint64_t sub_2297B5330()
{

  return MEMORY[0x2822009F8](sub_2297B5410, 0, 0);
}

id sub_2297B5410()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 608);
  *(v0 + 1037) = *(v0 + 1033);

  *(v0 + 1038) = [v2 isOwnerUser];
  v3 = [v2 currentUser];
  *(v0 + 888) = v3;
  if (v3)
  {
    v4 = *(v0 + 608);
    v5 = [v3 uuid];
    sub_22A4DB79C();

    result = [v4 walletKeyManager];
    if (result)
    {
      v7 = result;
      v8 = [result shouldRollWalletKeyAfterMigration];

      if (!v8)
      {
        v10 = 2;
        goto LABEL_10;
      }

      result = [*(v0 + 608) walletKeyManager];
      if (result)
      {
        v9 = result;
        v10 = [result shouldEnableExpressModeAfterMigration];

LABEL_10:
        *(v0 + 1039) = v10;
        v20 = [*(v0 + 608) homeManager];
        if (v20)
        {
          v21 = v20;
          v22 = [v20 homeUUIDsWithAutoAddWalletKeySuppressed];

          sub_2295EF000();
          v23 = sub_22A4DDB6C();
        }

        else
        {
          v23 = 0;
        }

        *(v0 + 896) = v23;
        v24 = [objc_opt_self() sharedManager];
        *(v0 + 1040) = [v24 isLostOrNeedsExitAuth];

        v25 = [objc_opt_self() systemStore];
        *(v0 + 904) = [v25 getPreferredHH2ControllerKey];

        if (qword_281402D28 != -1)
        {
          swift_once();
        }

        v26 = [*(v0 + 608) uuid];
        sub_22A4DB79C();

        v27 = swift_task_alloc();
        *(v0 + 912) = v27;
        *v27 = v0;
        v27[1] = sub_2297B5840;
        v28 = *(v0 + 688);

        return ACWGKeyManager.getIssuerKeyPairExternalRepresentationFromKeychain(forHomeUUID:)(v0 + 528, v28);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v31 = *(v0 + 848);
  v32 = *(v0 + 856);
  v11 = *(v0 + 840);
  v12 = *(v0 + 832);
  v13 = *(v0 + 824);
  v14 = *(v0 + 816);
  v15 = *(v0 + 808);
  v16 = *(v0 + 776);
  v17 = *(v0 + 656);
  v29 = *(v0 + 648);
  v30 = *(v0 + 704);
  sub_2297B8424();
  swift_allocError();
  *v18 = xmmword_22A583430;
  swift_willThrow();

  sub_2295798D4(v14, v13);
  sub_2295798D4(v12, v11);
  sub_2295798D4(v31, v32);
  (*(v17 + 8))(v30, v29);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_2297B5840()
{
  v2 = *v1;
  *(v2 + 920) = v0;
  v3 = *(v2 + 544);
  *(v2 + 928) = *(v2 + 528);
  *(v2 + 944) = v3;

  v4 = *(v2 + 688);
  v5 = *(v2 + 656);
  v6 = *(v2 + 648);
  if (v0)
  {
    v7 = *(v5 + 8);
    *(v2 + 1016) = v7;
    *(v2 + 1024) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v6);

    v8 = sub_2297B65DC;
  }

  else
  {
    v9 = *(v5 + 8);
    *(v2 + 960) = v9;
    *(v2 + 968) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v4, v6);
    v8 = sub_2297B59C0;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2297B59C0()
{
  v1 = *(v0 + 608);
  v2 = [v1 hasAnyAccessoryWithUnifiedAccessWalletKeySupport];
  v3 = [v1 hasAnyAccessoryWithAliroNFCSupport];
  v4 = [v1 hasAnyAccessoryWithAliroUWBSupport];
  v5 = [v1 hasAnyAccessoryWithWalletKeyAndAccessCodeSupport];
  v6 = [objc_opt_self() sharedConnection];
  if (!v6)
  {
    __break(1u);
    return MEMORY[0x2822008A0](v6, v7, v8, v9, v10, v11, v12, v13);
  }

  v14 = v6;
  v15 = *(v0 + 920);
  v16 = *(v0 + 608);
  v17 = [v6 isPasscodeSet];

  v92 = [v16 backingStore];
  *(v0 + 592) = v92;
  v56 = sub_229562F68(0, &unk_281401B80, off_278666058);
  sub_22A4DBD4C();
  v95 = *(v0 + 928);
  v96 = *(v0 + 936);
  v94 = *(v0 + 904);
  if (!v15)
  {
    if (v3)
    {
      v26 = 0;
    }

    else
    {
      v26 = 2;
    }

    v90 = *(v0 + 944);
    v91 = *(v0 + 952);
    if (v4)
    {
      v26 = 1;
    }

    v88 = v26;
    v86 = *(v0 + 1040);
    v70 = *(v0 + 896);
    v68 = *(v0 + 1038);
    v69 = *(v0 + 1039);
    v71 = *(v0 + 1037);
    v67 = *(v0 + 1036);
    v82 = v2;
    v27 = *(v0 + 864);
    v76 = *(v0 + 840);
    v77 = *(v0 + 848);
    v73 = *(v0 + 824);
    v74 = *(v0 + 832);
    v72 = *(v0 + 816);
    v78 = *(v0 + 776);
    v80 = *(v0 + 856);
    v84 = v17;
    v28 = *(v0 + 704);
    v29 = *(v0 + 696);
    v30 = *(v0 + 680);
    v31 = *(v0 + 672);
    v60 = *(v0 + 664);
    v62 = v31;
    v32 = *(v0 + 656);
    v75 = v5;
    v33 = *(v0 + 648);
    v64 = *(v0 + 1034);
    v65 = *(v0 + 1035);
    v63 = *(v0 + 616);
    v34 = *(v0 + 608);
    v57 = v30;
    v58 = v34;

    v66 = v27 != 0;
    v35 = *(v0 + 584);
    v93 = [v35 context];
    *(v0 + 976) = v93;

    v36 = *(v32 + 16);
    v36(v30, v29, v33);
    v36(v31, v28, v33);
    v37 = *(v32 + 80);
    v38 = (v37 + 24) & ~v37;
    v39 = (v38 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
    v40 = (v39 + 19) & 0xFFFFFFFFFFFFFFF8;
    v41 = (v37 + v40 + 10) & ~v37;
    v42 = (v41 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
    v61 = (v42 + 75) & 0xFFFFFFFFFFFFFFF8;
    v59 = (v61 + 15) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    *(v0 + 984) = v43;
    *(v43 + 16) = v34;
    v44 = *(v32 + 32);
    v44(v43 + v38, v57, v33);
    v45 = v43 + v39;
    *v45 = v70;
    *(v45 + 8) = v69;
    *(v45 + 9) = v68;
    *(v45 + 10) = v67;
    *(v45 + 11) = v71;
    v46 = v43 + v40;
    *v46 = v63;
    *(v46 + 8) = v64 & 1;
    *(v46 + 9) = v65;
    v44(v43 + v41, v62, v33);
    v47 = v43 + v42;
    *v47 = v72;
    *(v47 + 8) = v73;
    *(v47 + 16) = v74;
    *(v47 + 24) = v76;
    *(v47 + 32) = v77;
    *(v47 + 40) = v80;
    *(v47 + 48) = v66;
    *(v47 + 49) = v86;
    v48 = v43 + ((v42 + 57) & 0xFFFFFFFFFFFFFFF8);
    *v48 = v78;
    *(v48 + 8) = v82;
    *(v48 + 9) = v88;
    *(v48 + 10) = v75;
    *(v43 + v61) = v94;
    v49 = (v43 + v59);
    *v49 = v95;
    v49[1] = v96;
    v50 = v43 + ((v59 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v50 = v90;
    *(v50 + 8) = v91;
    *(v50 + 16) = v84;
    v51 = v58;
    sub_22956C148(v72, v73);
    sub_22956C148(v74, v76);
    sub_22956C148(v77, v80);
    v52 = v78;
    v53 = v94;
    sub_2295AEF1C(v95, v96);
    v54 = swift_task_alloc();
    *(v0 + 992) = v54;
    v54[2] = v93;
    v54[3] = sub_2297B8478;
    v54[4] = v43;
    v55 = swift_task_alloc();
    *(v0 + 1000) = v55;
    v13 = type metadata accessor for HomePassState(0);
    *v55 = v0;
    v55[1] = sub_2297B6080;
    v6 = *(v0 + 600);
    v11 = sub_2297B8604;
    v10 = 0x800000022A58A7E0;
    v7 = 0;
    v8 = 0;
    v9 = 0xD000000000000016;
    v12 = v54;

    return MEMORY[0x2822008A0](v6, v7, v8, v9, v10, v11, v12, v13);
  }

  v18 = *(v0 + 960);
  v19 = *(v0 + 888);
  v87 = *(v0 + 856);
  v81 = *(v0 + 840);
  v83 = *(v0 + 848);
  v79 = *(v0 + 832);
  v20 = *(v0 + 824);
  v21 = *(v0 + 816);
  v22 = *(v0 + 776);
  v89 = *(v0 + 704);
  v85 = *(v0 + 696);
  v23 = *(v0 + 648);

  sub_229590D18(v95, v96);

  sub_2295798D4(v21, v20);
  sub_2295798D4(v79, v81);
  sub_2295798D4(v83, v87);

  v18(v85, v23);
  v18(v89, v23);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_2297B6080()
{
  *(*v1 + 1008) = v0;

  if (v0)
  {
    v2 = sub_2297B633C;
  }

  else
  {

    v2 = sub_2297B61A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2297B61A8()
{
  v1 = *(v0 + 976);
  v18 = *(v0 + 960);
  v2 = *(v0 + 936);
  v3 = *(v0 + 928);
  v4 = *(v0 + 888);
  v16 = *(v0 + 848);
  v17 = *(v0 + 856);
  v14 = *(v0 + 832);
  v15 = *(v0 + 840);
  v12 = *(v0 + 904);
  v13 = *(v0 + 824);
  v5 = *(v0 + 816);
  v6 = *(v0 + 776);
  v7 = *(v0 + 704);
  v8 = *(v0 + 696);
  v9 = *(v0 + 648);

  sub_229590D18(v3, v2);
  sub_2295798D4(v5, v13);
  sub_2295798D4(v14, v15);
  sub_2295798D4(v16, v17);
  v18(v8, v9);
  v18(v7, v9);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2297B633C()
{
  v1 = v0[122];
  v19 = v0[120];
  v2 = v0[117];
  v3 = v0[116];
  v4 = v0[111];
  v16 = v0[106];
  v17 = v0[107];
  v13 = v0[104];
  v14 = v0[105];
  v11 = v0[113];
  v12 = v0[103];
  v5 = v0[102];
  v6 = v0[101];
  v7 = v0[97];
  v18 = v0[88];
  v15 = v0[87];
  v8 = v0[81];

  sub_229590D18(v3, v2);
  sub_2295798D4(v5, v12);
  sub_2295798D4(v13, v14);
  sub_2295798D4(v16, v17);
  v19(v15, v8);
  v19(v18, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_2297B64E4(uint64_t a1)
{
  v2 = v1[99];
  v3 = v1[98];
  v4 = v1[97];
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

uint64_t sub_2297B65DC()
{
  v1 = *(v0 + 1016);
  v2 = *(v0 + 904);
  v3 = *(v0 + 888);
  v13 = *(v0 + 848);
  v14 = *(v0 + 856);
  v4 = *(v0 + 832);
  v5 = *(v0 + 824);
  v6 = *(v0 + 816);
  v7 = *(v0 + 776);
  v15 = *(v0 + 704);
  v11 = *(v0 + 840);
  v12 = *(v0 + 696);
  v8 = *(v0 + 648);

  sub_2295798D4(v6, v5);
  sub_2295798D4(v4, v11);
  sub_2295798D4(v13, v14);
  v1(v12, v8);
  v1(v15, v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_2297B6744(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v3 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881208, qword_22A5837B0);
  return sub_22A4DD8FC();
}

void sub_2297B67A4(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881200, &qword_22A5837A8);
    sub_22A4DD8EC();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881200, &qword_22A5837A8);
    sub_22A4DD8FC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2297B6854@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>, unsigned __int8 a10, char a11, uint64_t a12, _OWORD *a13, unsigned __int8 a14, unsigned __int8 a15, void *a16, unsigned __int8 a17, unsigned __int8 a18, unsigned __int8 a19, void *a20, char *a21, unint64_t a22, uint64_t a23, char *a24, unsigned __int8 a25)
{
  v166 = a3;
  v162 = a8;
  v163 = a9;
  v159 = a7;
  v160 = a5;
  v161 = a6;
  v157 = a4;
  v165 = a2;
  v158 = type metadata accessor for HomePassData(0);
  MEMORY[0x28223BE20](v158);
  v164 = &v129 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22A4DB7DC();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v129 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v129 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v129 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v129 - v38;
  v40 = objc_opt_self();
  v156 = a1;
  v41 = [a1 uuid];
  sub_22A4DB79C();

  v42 = sub_22A4DB77C();
  (*(v28 + 8))(v39, v27);
  v43 = [v40 findHomeWithModelID_];

  v169 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D290, &qword_22A57BB20);
  v44 = v167;
  sub_22A4DBD4C();
  if (v44)
  {
    return swift_unknownObjectRelease();
  }

  v155 = "SError16";
  v167 = "mePassState.swift";
  v151 = v37;
  v152 = v34;
  v153 = v31;
  v150 = v28;
  v154 = v27;
  swift_unknownObjectRelease();
  v46 = v168[0];
  v47 = [v168[0] name];
  if (v47)
  {
    v48 = v47;
    v49 = sub_22A4DD5EC();
    v51 = v50;
  }

  else
  {
    v49 = 0;
    v51 = 0;
  }

  v52 = v166;
  v169 = v49;
  v170 = v51;
  sub_22A4DBD4C();

  v53 = v168[1];
  v149 = v168[0];
  v54 = [v46 hasOnboardedForWalletKey];
  if (v54)
  {
    v55 = v54;
    v148 = [v54 BOOLValue];
  }

  else
  {
    v148 = 0;
  }

  v56 = sub_22A4DB77C();
  v57 = [v46 findHomeMemberWithUUID_];

  v169 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881210, &unk_22A5837C8);
  sub_22A4DBD4C();
  swift_unknownObjectRelease();
  v58 = v168[0];
  v59 = [v46 matCredGRK];
  if (!v59)
  {

    sub_22962F2A8();
    swift_allocError();
    *v95 = xmmword_22A583440;
    *(v95 + 16) = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  v139 = v58;
  v60 = v59;
  v141 = sub_22A4DB62C();
  v140 = v61;

  v62 = [v46 accessories];
  v143 = 0;
  v142 = v53;
  v144 = v46;
  if (!v62)
  {
    v145 = MEMORY[0x277D84F90];
    v65 = v164;
    goto LABEL_43;
  }

  v63 = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881220, &qword_22A5837D8);
  v64 = sub_22A4DD83C();

  v65 = v164;
  v155 = v64;
  if (v64 >> 62)
  {
LABEL_40:
    v66 = v64 & 0xFFFFFFFFFFFFFF8;
    v67 = sub_22A4DE0EC();
    if (v67)
    {
      goto LABEL_13;
    }

LABEL_41:
    v145 = MEMORY[0x277D84F90];
    goto LABEL_42;
  }

  v66 = v64 & 0xFFFFFFFFFFFFFF8;
  v67 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v67)
  {
    goto LABEL_41;
  }

LABEL_13:
  v68 = v67;
  v69 = 0;
  v145 = MEMORY[0x277D84F90];
  v70 = v155;
  v167 = (v155 & 0xC000000000000001);
  v147 = v67;
  v146 = v66;
  do
  {
    v64 = v69;
    while (1)
    {
      if (v167)
      {
        MEMORY[0x22AAD13F0](v64, v70);
        v69 = v64 + 1;
        if (__OFADD__(v64, 1))
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (v64 >= *(v66 + 16))
        {
          goto LABEL_39;
        }

        swift_unknownObjectRetain();
        v69 = v64 + 1;
        if (__OFADD__(v64, 1))
        {
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }
      }

      v171 = &unk_283F59838;
      v71 = swift_dynamicCastObjCProtocolConditional();
      if (v71)
      {
        v72 = v71;
        v73 = [v71 preexistingMatCredGRK];
        if (v73)
        {
          break;
        }
      }

      swift_unknownObjectRelease();
LABEL_16:
      ++v64;
      if (v69 == v68)
      {
        goto LABEL_42;
      }
    }

    v74 = v73;
    v75 = sub_22A4DB62C();
    v77 = v76;

    v78 = [v72 preexistingMatCredRGI];
    if (!v78)
    {
      swift_unknownObjectRelease();
      sub_2295798D4(v75, v77);
      goto LABEL_26;
    }

    v79 = v78;
    v80 = sub_22A4DB62C();
    v82 = v81;

    v83 = [v72 preexistingMatCredRPK];
    if (!v83)
    {
      swift_unknownObjectRelease();
      sub_2295798D4(v80, v82);
      sub_2295798D4(v75, v77);
      v65 = v164;
LABEL_26:
      v66 = v146;
      v68 = v147;
      v70 = v155;
      goto LABEL_16;
    }

    v84 = v83;
    v85 = sub_22A4DB62C();
    v138 = v86;

    swift_unknownObjectRelease();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = v146;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v145 = sub_22958BAC4(0, *(v145 + 2) + 1, 1, v145);
    }

    v88 = v77;
    v90 = *(v145 + 2);
    v89 = *(v145 + 3);
    if (v90 >= v89 >> 1)
    {
      v94 = sub_22958BAC4((v89 > 1), v90 + 1, 1, v145);
      v88 = v77;
      v145 = v94;
    }

    v91 = v145;
    *(v145 + 2) = v90 + 1;
    v92 = &v91[48 * v90];
    *(v92 + 4) = v80;
    *(v92 + 5) = v82;
    v93 = v138;
    *(v92 + 6) = v85;
    *(v92 + 7) = v93;
    *(v92 + 8) = v75;
    *(v92 + 9) = v88;
    v68 = v147;
    v65 = v164;
    v70 = v155;
  }

  while (v69 != v147);
LABEL_42:

  v52 = v166;
LABEL_43:
  LODWORD(v147) = a25;
  v155 = a24;
  v146 = a23;
  v166 = a20;
  v167 = a21;
  v137 = a19;
  v136 = a18;
  v135 = a17;
  v133 = a15;
  v132 = a14;
  v96 = MEMORY[0x277D84FA0];
  if (v52)
  {
    v96 = v52;
  }

  v134 = v96;
  LODWORD(v138) = a10;

  v97 = systemInfo();
  v131 = [v97 isMigrating];

  v130 = [objc_opt_self() isWalletVisible];
  v98 = a11 | v148;
  v99 = [v156 uuid];
  sub_22A4DB79C();

  v100 = *(v150 + 16);
  v101 = v154;
  v100(v152, a12, v154);
  v100(v153, v165, v101);
  v165 = productClass();
  v156 = [a16 integerValue];
  v102 = [v139 accessCode];
  if (v102)
  {
    v103 = [v102 accessCode];
    swift_unknownObjectRelease();
    v104 = a22;
    if (v103)
    {
      v105 = sub_22A4DD5EC();
      v107 = v106;

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v105 = 0;
      v107 = 0;
    }

    v65 = v164;
  }

  else
  {
    v104 = a22;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v105 = 0;
    v107 = 0;
  }

  v108 = v150;
  v109 = v151;
  *v65 = v98 & 1;
  v110 = v158;
  v111 = v65;
  v112 = *(v108 + 32);
  v113 = v154;
  v112(v111 + *(v158 + 20), v109, v154);
  v112(v111 + v110[6], v152, v113);
  v112(v111 + v110[7], v153, v113);
  v114 = (v111 + v110[8]);
  v115 = a13[1];
  *v114 = *a13;
  v114[1] = v115;
  v114[2] = a13[2];
  v116 = (v111 + v110[9]);
  v117 = v142;
  *v116 = v149;
  v116[1] = v117;
  *(v111 + v110[10]) = v165;
  *(v111 + v110[11]) = v132 & 1;
  *(v111 + v110[12]) = v133 & 1;
  *(v111 + v110[13]) = v156;
  v118 = (v111 + v110[14]);
  *v118 = v105;
  v118[1] = v107;
  v119 = (v111 + v110[15]);
  v120 = v140;
  *v119 = v141;
  v119[1] = v120;
  *(v111 + v110[16]) = v145;
  *(v111 + v110[17]) = v135 & 1;
  *(v111 + v110[18]) = v136;
  *(v111 + v110[19]) = v137 & 1;
  v122 = v166;
  v121 = v167;
  *(v111 + v110[20]) = v166;
  v123 = (v111 + v110[21]);
  *v123 = v121;
  v123[1] = v104;
  v124 = (v111 + v110[22]);
  v125 = v155;
  *v124 = v146;
  v124[1] = v125;
  *(v111 + v110[23]) = v147 & 1;
  v126 = v163;
  *v163 = v134;
  *(v126 + 8) = v131;
  *(v126 + 9) = v157;
  *(v126 + 10) = v130;
  *(v126 + 11) = v160 & 1;
  *(v126 + 12) = v161 & 1;
  *(v126 + 13) = v159 & 1;
  v126[2] = v162;
  *(v126 + 24) = v138 & 1;
  v127 = type metadata accessor for HomePassState(0);
  sub_229656450(v111, v126 + *(v127 + 48));

  sub_2297B8610(a13, v168);
  v128 = v122;
  return sub_2295AEF1C(v121, v104);
}

BOOL sub_2297B7550(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_22956C148(a3, a4);
          return sub_2296753AC(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s13HomeKitDaemon0A8PassDataV23__derived_struct_equalsySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = type metadata accessor for HomePassData(0);
  if ((sub_22A4DB78C() & 1) == 0)
  {
    goto LABEL_26;
  }

  if ((sub_22A4DB78C() & 1) == 0)
  {
    goto LABEL_26;
  }

  if ((sub_22A4DB78C() & 1) == 0)
  {
    goto LABEL_26;
  }

  v6 = v5[8];
  v7 = *&a1[v6];
  v8 = *&a1[v6 + 8];
  v9 = *&a1[v6 + 16];
  v10 = *&a1[v6 + 24];
  v11 = *&a1[v6 + 40];
  v48 = *&a1[v6 + 32];
  v12 = &a2[v6];
  v14 = *(v12 + 2);
  v13 = *(v12 + 3);
  v15 = *(v12 + 4);
  v16 = *(v12 + 5);
  if (!sub_2297B7550(v7, v8, *v12, *(v12 + 1)) || !sub_2297B7550(v9, v10, v14, v13) || !sub_2297B7550(v48, v11, v15, v16))
  {
    goto LABEL_26;
  }

  v17 = v5[9];
  v18 = *&a1[v17];
  v19 = *&a1[v17 + 8];
  v20 = &a2[v17];
  if ((v18 != *v20 || v19 != *(v20 + 1)) && (sub_22A4DE60C() & 1) == 0)
  {
    goto LABEL_26;
  }

  if (*&a1[v5[10]] != *&a2[v5[10]] || a1[v5[11]] != a2[v5[11]] || a1[v5[12]] != a2[v5[12]] || *&a1[v5[13]] != *&a2[v5[13]])
  {
    goto LABEL_26;
  }

  v21 = v5[14];
  v22 = &a1[v21];
  v23 = *&a1[v21 + 8];
  v24 = &a2[v21];
  v25 = *(v24 + 1);
  if (v23)
  {
    if (!v25 || (*v22 != *v24 || v23 != v25) && (sub_22A4DE60C() & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (v25)
  {
    goto LABEL_26;
  }

  if (!sub_2297B7550(*&a1[v5[15]], *&a1[v5[15] + 8], *&a2[v5[15]], *&a2[v5[15] + 8]) || (sub_2296AF4F4(*&a1[v5[16]], *&a2[v5[16]]) & 1) == 0 || a1[v5[17]] != a2[v5[17]])
  {
    goto LABEL_26;
  }

  v27 = v5[18];
  v28 = a1[v27];
  v29 = a2[v27];
  if (v28 == 2)
  {
    if (v29 != 2)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v26 = 0;
    if (v29 == 2 || ((v29 ^ v28) & 1) != 0)
    {
      return v26 & 1;
    }
  }

  if (a1[v5[19]] != a2[v5[19]])
  {
    goto LABEL_26;
  }

  v30 = v5[20];
  v31 = *&a1[v30];
  v32 = *&a2[v30];
  if (v31)
  {
    if (!v32)
    {
      goto LABEL_26;
    }

    sub_229562F68(0, &qword_281401978, 0x277CFEC20);
    v33 = v32;
    v34 = v31;
    v35 = sub_22A4DDEDC();

    if ((v35 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (v32)
  {
    goto LABEL_26;
  }

  v36 = v5[21];
  v38 = *&a1[v36];
  v37 = *&a1[v36 + 8];
  v39 = &a2[v36];
  v41 = *v39;
  v40 = v39[1];
  if (v37 >> 60 != 15)
  {
    if (v40 >> 60 != 15)
    {
      sub_2295AEF1C(v38, v37);
      sub_2295AEF1C(v41, v40);
      v42 = sub_2297B7550(v38, v37, v41, v40);
      sub_229590D18(v41, v40);
      sub_229590D18(v38, v37);
      if (!v42)
      {
        goto LABEL_26;
      }

      goto LABEL_45;
    }

LABEL_43:
    sub_2295AEF1C(v38, v37);
    sub_2295AEF1C(v41, v40);
    sub_229590D18(v38, v37);
    sub_229590D18(v41, v40);
    goto LABEL_26;
  }

  if (v40 >> 60 != 15)
  {
    goto LABEL_43;
  }

  sub_2295AEF1C(v38, v37);
  sub_2295AEF1C(v41, v40);
  sub_229590D18(v38, v37);
LABEL_45:
  v43 = v5[22];
  v44 = &a1[v43];
  v45 = *&a1[v43 + 8];
  v46 = &a2[v43];
  v47 = *(v46 + 1);
  if (v45)
  {
    if (!v47 || (*v44 != *v46 || v45 != v47) && (sub_22A4DE60C() & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_52:
    v26 = a1[v5[23]] ^ a2[v5[23]] ^ 1;
    return v26 & 1;
  }

  if (!v47)
  {
    goto LABEL_52;
  }

LABEL_26:
  v26 = 0;
  return v26 & 1;
}

uint64_t _s13HomeKitDaemon0A9PassStateV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_2296CBB24(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v5 = *(a1 + 9);
  v6 = *(a2 + 9);
  if (v5 == 2)
  {
    if (v6 != 2)
    {
      return 0;
    }
  }

  else if (v6 == 2 || ((v6 ^ v5) & 1) != 0)
  {
    return 0;
  }

  if (*(a1 + 10) != *(a2 + 10) || *(a1 + 11) != *(a2 + 11) || *(a1 + 12) != *(a2 + 12) || *(a1 + 13) != *(a2 + 13))
  {
    return 0;
  }

  v7 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (*(a2 + 24))
    {
      goto LABEL_19;
    }

    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    v7 = 1;
  }

  if (v7)
  {
    return 0;
  }

LABEL_19:
  v8 = *(type metadata accessor for HomePassState(0) + 48);

  return _s13HomeKitDaemon0A8PassDataV23__derived_struct_equalsySbAC_ACtFZ_0((a1 + v8), (a2 + v8));
}

void sub_2297B7C38(uint64_t a1)
{
  sub_2297B7CF8(319);
  if (v1 <= 0x3F)
  {
    sub_2297B7D5C(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for HomePassData(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2297B7CF8(uint64_t a1)
{
  if (!qword_281401C68)
  {
    sub_22A4DB7DC();
    sub_2295EF000();
    v1 = sub_22A4DDBBC();
    if (!v2)
    {
      atomic_store(v1, &qword_281401C68);
    }
  }
}

void sub_2297B7D5C(uint64_t a1)
{
  if (!qword_281401818)
  {
    type metadata accessor for HMHomeWalletKeyAddOptions(255);
    v1 = sub_22A4DDF9C();
    if (!v2)
    {
      atomic_store(v1, &qword_281401818);
    }
  }
}

void sub_2297B7DDC(uint64_t a1)
{
  sub_22A4DB7DC();
  if (v1 <= 0x3F)
  {
    type metadata accessor for HMFProductClass(319);
    if (v2 <= 0x3F)
    {
      sub_2297B7FF8(319, &qword_281401CE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2297B7FF8(319, &qword_281401CC8, &type metadata for PreexistingKeys, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          sub_2297B7F90(319);
          if (v5 <= 0x3F)
          {
            sub_2297B7FF8(319, &unk_2814038A0, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_2297B7F90(uint64_t a1)
{
  if (!qword_281401970)
  {
    sub_229562F68(255, &qword_281401978, 0x277CFEC20);
    v1 = sub_22A4DDF9C();
    if (!v2)
    {
      atomic_store(v1, &qword_281401970);
    }
  }
}

void sub_2297B7FF8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for UWBCapabilityChanged(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
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

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for UWBCapabilityChanged(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
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

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

_BYTE *sub_2297B81BC(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExpressSettings(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for ExpressSettings(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t sub_2297B8364(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 48))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2297B83B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_2297B8424()
{
  result = qword_281402308[0];
  if (!qword_281402308[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281402308);
  }

  return result;
}

uint64_t sub_2297B8478@<X0>(void *a1@<X8>)
{
  v3 = *(sub_22A4DB7DC() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 19) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 10) & ~v4;
  v10 = (v6 + v9) & 0xFFFFFFFFFFFFFFF8;
  v11 = v1 + v7;
  v12 = (v10 + 75) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = v1 + ((v10 + 57) & 0xFFFFFFFFFFFFFFF8);
  v15 = v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
  return sub_2297B6854(*(v1 + 16), v1 + v5, *v11, *(v11 + 8), *(v11 + 9), *(v11 + 10), *(v11 + 11), *(v1 + v8), a1, *(v1 + v8 + 8), *(v1 + v8 + 9), v1 + v9, (v1 + v10), *(v1 + v10 + 48), *(v1 + v10 + 49), *v14, *(v14 + 8), *(v14 + 9), *(v14 + 10), *(v1 + v12), *(v1 + v13), *(v1 + v13 + 8), *v15, *(v15 + 8), *(v15 + 16));
}

uint64_t sub_2297B8688()
{
  v1[26] = v0;
  v2 = sub_22A4DD26C();
  v1[27] = v2;
  v1[28] = *(v2 - 8);
  v1[29] = swift_task_alloc();
  v3 = sub_22A4DD29C();
  v1[30] = v3;
  v1[31] = *(v3 - 8);
  v1[32] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881228, &qword_22A5837F8);
  v1[33] = v4;
  v1[34] = *(v4 - 8);
  v1[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297B880C, 0, 0);
}

uint64_t sub_2297B880C()
{
  v1 = [*(v0 + 208) dataSource];
  *(v0 + 288) = v1;
  if (v1)
  {
    v2 = v1;
    v4 = *(v0 + 272);
    v3 = *(v0 + 280);
    v5 = *(v0 + 264);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 192;
    *(v0 + 24) = sub_2297B8A30;
    swift_continuation_init();
    *(v0 + 136) = v5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
    sub_2297B9688();
    sub_22A4DD8DC();
    (*(v4 + 32))(boxed_opaque_existential_1, v3, v5);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_2297B8D28;
    *(v0 + 104) = &block_descriptor_37;
    [v2 detectNearbyAccessoriesOnMismatchNetworkWithCompletionHandler_];
    (*(v4 + 8))(boxed_opaque_existential_1, v5);

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_2297B8A30()
{

  return MEMORY[0x2822009F8](sub_2297B8B10, 0, 0);
}

uint64_t sub_2297B8B10()
{
  v1 = v0[32];
  v2 = v0[29];
  v14 = v0[31];
  v15 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[26];
  v6 = v0[24];
  swift_unknownObjectRelease();
  v13 = [v5 workQueue];
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  v0[22] = sub_2297B96D4;
  v0[23] = v7;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_22953E640;
  v0[21] = &block_descriptor_16_0;
  v8 = _Block_copy(v0 + 18);
  v9 = v5;
  v10 = v6;
  sub_22A4DD28C();
  v0[25] = MEMORY[0x277D84F90];
  sub_22974B658();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
  sub_22953E5DC();
  sub_22A4DE03C();
  MEMORY[0x22AAD0F80](0, v1, v2, v8);
  _Block_release(v8);

  (*(v3 + 8))(v2, v4);
  (*(v14 + 8))(v1, v15);

  v11 = v0[1];

  return v11();
}

uint64_t sub_2297B8D28(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v3 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881228, &qword_22A5837F8);
  return sub_22A4DD8FC();
}

id sub_2297B8D88(void *a1, void *a2)
{
  result = [a1 _isNearbyDiscoveryActive];
  if (result)
  {
    v5 = [a2 accessoriesNotOnWiFi];
    if (!v5)
    {
      sub_22A4DB7DC();
      sub_22A4DD83C();
      v5 = sub_22A4DD81C();
    }

    [a1 setNearbyAccessoryUUIDsNotOnCurrentNetwork_];

    v6 = [a2 accessoriesNotOnWiFiAndNotConnectingToPrimaryResident];
    if (!v6)
    {
      sub_22A4DB7DC();
      sub_22A4DD83C();
      v6 = sub_22A4DD81C();
    }

    [a1 setNearbyAccessoryUUIDsNotConnectToPrimaryResident_];

    v7 = [a2 accessoriesReportingDiagnostic];
    if (!v7)
    {
      sub_22A4DB7DC();
      sub_22A4DD83C();
      v7 = sub_22A4DD81C();
    }

    [a1 setNearbyAccessoryUUIDsReportingDiagnostic_];

    return [a1 _updateSymptomsForAllRegisteredAccessories];
  }

  return result;
}

uint64_t sub_2297B9090(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2297B9138;

  return sub_2297B8688();
}

uint64_t sub_2297B9138()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v4 = *v0;

  if (v2)
  {
    v5 = *(v1 + 24);
    v5[2](v5);
    _Block_release(v5);
  }

  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_2297B9280@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() driver];
  v3 = sub_2297B3744();

  if (v3)
  {
    type metadata accessor for AssertionHandle();
    v4 = swift_allocObject();
    sub_2297B9494(v3, 0xD000000000000014, 0x800000022A58C0A0, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D840, &qword_22A578DC8);
  v5 = sub_22A4DDF8C();

  result = swift_getObjectType();
  a1[3] = result;
  *a1 = v5;
  return result;
}

uint64_t sub_2297B9494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + 32) = &off_283CE25F0;
  swift_unknownObjectWeakAssign();
  type metadata accessor for AssertionHandle.Assertion(0);
  v8 = swift_allocObject();
  sub_22A4DB7CC();
  if (!a3)
  {
    a2 = sub_22A4DB76C();
    a3 = v9;
  }

  v10 = (v8 + OBJC_IVAR____TtCC13HomeKitDaemon15AssertionHandle9Assertion_reason);
  *v10 = a2;
  v10[1] = a3;
  *(a4 + 16) = v8;
  v11 = *(a1 + OBJC_IVAR___HMDDiscoveryController_assertions);

  os_unfair_lock_lock((v11 + 24));
  sub_2297B95C0((v11 + 16), &v22);
  os_unfair_lock_unlock((v11 + 24));
  v12 = v22;

  sub_229714B48(v8, v13, v14, v15, v16, v17, v18, v19, v21, v22);
  if (v12 == 1)
  {
    sub_229714110();
  }

  return a4;
}

uint64_t sub_2297B95DC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_229586D38;

  return sub_2297B9090(v2, v3);
}

unint64_t sub_2297B9688()
{
  result = qword_281401808;
  if (!qword_281401808)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281401808);
  }

  return result;
}

uint64_t block_copy_helper_14_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2297B96F4(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))(a1);
  v9[0] = sub_22A4DD5EC();
  v9[1] = v3;
  sub_22A4DE18C();
  if (*(v2 + 16) && (v4 = sub_2295402E8(v8), (v5 & 1) != 0))
  {
    sub_2295404B0(*(v2 + 56) + 32 * v4, v9);
    sub_22954045C(v8);

    if (swift_dynamicCast())
    {
      return v7;
    }
  }

  else
  {

    sub_22954045C(v8);
  }

  return 0;
}

uint64_t sub_2297B97D8(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))(a1);
  v9[0] = sub_22A4DD5EC();
  v9[1] = v3;
  sub_22A4DE18C();
  if (*(v2 + 16) && (v4 = sub_2295402E8(v8), (v5 & 1) != 0))
  {
    sub_2295404B0(*(v2 + 56) + 32 * v4, v9);
    sub_22954045C(v8);

    if (swift_dynamicCast())
    {
      return v7;
    }
  }

  else
  {

    sub_22954045C(v8);
  }

  return 0;
}

uint64_t sub_2297B992C()
{
  swift_getObjectType();
  v1 = sub_22A4DB7DC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[0] = 91;
  v9[1] = 0xE100000000000000;
  v5 = sub_22A4DE8EC();
  MEMORY[0x22AAD08C0](v5);

  MEMORY[0x22AAD08C0](47, 0xE100000000000000);
  v6 = [v0 homeUUID];
  sub_22A4DB79C();

  sub_229586A3C();
  v7 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v7);

  (*(v2 + 8))(v4, v1);
  MEMORY[0x22AAD08C0](93, 0xE100000000000000);
  return v9[0];
}

id sub_2297B9CB8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CleanEnergyAutomationReducedEnergyLogEvent();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_2297B9D10(uint64_t a1)
{
  v3 = v1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a1;
    v28 = MEMORY[0x277D84F90];
    sub_229583714(0, v4, 0);
    v6 = v28;
    v24 = v5 + 64;
    v7 = sub_22A4DE04C();
    v8 = 0;
    v25 = *(v5 + 36);
    v22 = v5 + 72;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v5 + 32))
    {
      v9 = v7 >> 6;
      if ((*(v24 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_23;
      }

      if (v25 != *(v5 + 36))
      {
        goto LABEL_24;
      }

      v23 = v8;
      v10 = v5;
      v11 = *(*(v5 + 56) + 8 * v7);
      v26[0] = *(*(v5 + 48) + 8 * v7);
      v26[1] = v11;
      v2 = v11;
      sub_2297C1A30(v26, &v27);
      if (v3)
      {
        goto LABEL_28;
      }

      v12 = v27;
      v28 = v6;
      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_229583714((v13 > 1), v14 + 1, 1);
        v6 = v28;
      }

      *(v6 + 16) = v14 + 1;
      *(v6 + 8 * v14 + 32) = v12;
      v2 = (1 << *(v10 + 32));
      if (v7 >= v2)
      {
        goto LABEL_25;
      }

      v15 = *(v24 + 8 * v9);
      if ((v15 & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      v5 = v10;
      if (v25 != *(v10 + 36))
      {
        goto LABEL_27;
      }

      v16 = v15 & (-2 << (v7 & 0x3F));
      if (v16)
      {
        v2 = (__clz(__rbit64(v16)) | v7 & 0x7FFFFFFFFFFFFFC0);
      }

      else
      {
        v17 = v9 << 6;
        v18 = v9 + 1;
        v19 = (v22 + 8 * v9);
        while (v18 < (v2 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            sub_22962F424(v7, v25, 0);
            v2 = (__clz(__rbit64(v20)) + v17);
            goto LABEL_4;
          }
        }

        sub_22962F424(v7, v25, 0);
      }

LABEL_4:
      v3 = 0;
      v8 = v23 + 1;
      v7 = v2;
      if (v23 + 1 == v4)
      {
        return;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:

    __break(1u);
  }
}

uint64_t sub_2297B9F8C()
{
  v1 = OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_backgroundTaskManager;
  v2 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_backgroundTaskManager);

  v3 = sub_22A4DD5AC();

  [v2 cancelTaskWithIdentifier:v3 onObserver:v0];

  v4 = OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_homeUUID;
  v5 = sub_22A4DB7DC();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_messenger));
  swift_unknownObjectRelease();

  v6 = OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger;
  v7 = sub_22A4DD07C();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2297BA0F8()
{
  sub_2297B9F8C();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for DefaultUserActivityReportCoordinator(uint64_t a1)
{
  result = qword_27D8812E8;
  if (!qword_27D8812E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2297BA178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_229586D38;

  return sub_2297BB134(a5, a6);
}

uint64_t sub_2297BA380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_229569B30;

  return sub_2297BBC38(a5);
}

uint64_t sub_2297BA52C()
{
  v1[2] = v0;
  v2 = sub_22A4DD07C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297BA5EC, v0, 0);
}

uint64_t sub_2297BA5EC()
{
  v19 = v0;
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  *(v4 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_isCoordinating) = 1;
  (*(v1 + 16))(v2, v4 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger, v3);

  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCCC();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[4];
  v8 = v0[5];
  v10 = v0[3];
  if (v7)
  {
    v17 = v0[5];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 136315138;
    v18[0] = v12;
    v18[1] = 91;
    v18[2] = 0xE100000000000000;
    v13 = sub_22A4DB76C();
    MEMORY[0x22AAD08C0](v13);

    MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
    MEMORY[0x22AAD08C0](0xD000000000000013, 0x800000022A596900);
    MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
    v14 = sub_2295A3E30(91, 0xE100000000000000, v18);

    *(v11 + 4) = v14;
    _os_log_impl(&dword_229538000, v5, v6, "%s Beginning coordination", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AAD4E50](v12, -1, -1);
    MEMORY[0x22AAD4E50](v11, -1, -1);

    (*(v9 + 8))(v17, v10);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_2297BA994(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_229669DAC;

  return sub_2297BA52C();
}

uint64_t sub_2297BAA3C(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_2297BAA5C, v1, 0);
}

uint64_t sub_2297BAA5C()
{
  v1 = *(v0 + 48);
  v2 = OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_currentReports;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {
    v4 = sub_2296DC084(1);
    if (v5)
    {
      if (*(*(v3 + 56) + 8 * v4))
      {
        sub_2297C0578(0, *(v0 + 40), 1);
      }
    }
  }

  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_2297BAB40;

  return sub_2297C0BEC();
}

uint64_t sub_2297BAB40()
{
  v1 = *(*v0 + 48);

  return MEMORY[0x2822009F8](sub_2297BAC50, v1, 0);
}

uint64_t sub_2297BADFC(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);

  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_22965E220;

  return sub_2297BAA3C(a1);
}

uint64_t sub_2297BB030(const void *a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);

  return MEMORY[0x2822009F8](sub_2297BB0AC, a2, 0);
}

uint64_t sub_2297BB0AC()
{
  v1 = v0[3];
  v2 = *(v0[2] + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_isCoordinating);

  v1[2](v1, v2);
  _Block_release(v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_2297BB134(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = sub_22A4DD07C();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297BB204, v2, 0);
}

uint64_t sub_2297BB204()
{
  v76 = v0;
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];
  v5 = OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger;
  v0[18] = OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger;
  v6 = *(v3 + 16);
  v0[19] = v6;
  v0[20] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4 + v5, v2);

  v7 = sub_22A4DD05C();
  v8 = sub_22A4DDCCC();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[17];
  v11 = v0[14];
  v12 = v0[15];
  v72 = v0;
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 136315138;
    v73 = v14;
    v74 = 91;
    v75 = 0xE100000000000000;
    v15 = sub_22A4DB76C();
    MEMORY[0x22AAD08C0](v15);

    MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
    MEMORY[0x22AAD08C0](0xD000000000000017, 0x800000022A5968E0);
    MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
    v16 = sub_2295A3E30(91, 0xE100000000000000, &v73);

    *(v13 + 4) = v16;
    _os_log_impl(&dword_229538000, v7, v8, "%s started", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AAD4E50](v14, -1, -1);
    MEMORY[0x22AAD4E50](v13, -1, -1);

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[21] = v17;
  v18 = v0[12];
  if (v18 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    v20 = 0;
    v21 = v0[13];
    v22 = OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_currentReports;
    v69 = v18 & 0xFFFFFFFFFFFFFF8;
    v71 = v18 & 0xC000000000000001;
    v67 = v0[12] + 32;
    while (1)
    {
      if (v71)
      {
        v25 = MEMORY[0x22AAD13F0](v20, v0[12]);
      }

      else
      {
        if (v20 >= *(v69 + 16))
        {
          goto LABEL_27;
        }

        v25 = *(v67 + 8 * v20);
      }

      v26 = v25;
      v27 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v28 = [swift_getObjCClassFromObject() contributorType];
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v74 = *(v21 + v22);
      v18 = v74;
      v0 = v21;
      *(v21 + v22) = 0x8000000000000000;
      v30 = sub_2296DC084(v28);
      v32 = *(v18 + 16);
      v33 = (v31 & 1) == 0;
      v34 = __OFADD__(v32, v33);
      v35 = v32 + v33;
      if (v34)
      {
        goto LABEL_25;
      }

      v36 = v31;
      if (*(v18 + 24) < v35)
      {
        sub_2298966F8(v35, isUniquelyReferenced_nonNull_native);
        v18 = v74;
        v30 = sub_2296DC084(v28);
        if ((v36 & 1) != (v37 & 1))
        {
LABEL_49:
          type metadata accessor for HMDHomeActivityStateContributorType(0);

          return sub_22A4DE67C();
        }

LABEL_19:
        if (v36)
        {
          goto LABEL_7;
        }

        goto LABEL_20;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_19;
      }

      v40 = v30;
      sub_229899CFC();
      v30 = v40;
      v18 = v74;
      if (v36)
      {
LABEL_7:
        v23 = *(v18 + 56);
        v24 = *(v23 + 8 * v30);
        *(v23 + 8 * v30) = 0;

        goto LABEL_8;
      }

LABEL_20:
      *(v18 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      *(*(v18 + 48) + 8 * v30) = v28;
      *(*(v18 + 56) + 8 * v30) = 0;
      v38 = *(v18 + 16);
      v34 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v34)
      {
        goto LABEL_26;
      }

      *(v18 + 16) = v39;
LABEL_8:
      v21 = v0;
      *(v0 + v22) = v18;
      v0 = v72;
      swift_endAccess();
      [v26 setStateChangeDelegate_];

      ++v20;
      if (v27 == i)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

LABEL_29:
  v41 = v0[13];
  v42 = v0[11];
  v43 = OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_detectorsByContributorType;
  swift_beginAccess();
  *(v41 + v43) = MEMORY[0x277D84F98];

  if (v42 >> 62)
  {
    goto LABEL_56;
  }

  v44 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v44)
  {
LABEL_31:
    v45 = 0;
    v66 = v42 & 0xFFFFFFFFFFFFFF8;
    v68 = v42 & 0xC000000000000001;
    v65 = v0[11] + 32;
    while (1)
    {
      if (v68)
      {
        v49 = MEMORY[0x22AAD13F0](v45, v0[11]);
      }

      else
      {
        if (v45 >= *(v66 + 16))
        {
          goto LABEL_55;
        }

        v49 = *(v65 + 8 * v45);
      }

      v42 = v49;
      if (__OFADD__(v45, 1))
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        v44 = sub_22A4DE0EC();
        if (!v44)
        {
          goto LABEL_57;
        }

        goto LABEL_31;
      }

      v70 = v45 + 1;
      v50 = [swift_getObjCClassFromObject() contributorType];
      swift_beginAccess();
      v51 = v42;
      v52 = swift_isUniquelyReferenced_nonNull_native();
      v74 = *(v41 + v43);
      v42 = v74;
      v53 = v41;
      *(v41 + v43) = 0x8000000000000000;
      v54 = sub_2296DC084(v50);
      v56 = *(v42 + 16);
      v57 = (v55 & 1) == 0;
      v34 = __OFADD__(v56, v57);
      v58 = v56 + v57;
      if (v34)
      {
        goto LABEL_53;
      }

      v41 = v55;
      if (*(v42 + 24) < v58)
      {
        break;
      }

      if (v52)
      {
        goto LABEL_44;
      }

      v62 = v54;
      sub_229899E58();
      v54 = v62;
      v42 = v74;
      if (v41)
      {
LABEL_32:
        v46 = *(v42 + 56);
        v47 = *(v46 + 8 * v54);
        *(v46 + 8 * v54) = v51;

        goto LABEL_33;
      }

LABEL_45:
      *(v42 + 8 * (v54 >> 6) + 64) |= 1 << v54;
      *(*(v42 + 48) + 8 * v54) = v50;
      *(*(v42 + 56) + 8 * v54) = v51;
      v60 = *(v42 + 16);
      v34 = __OFADD__(v60, 1);
      v61 = v60 + 1;
      if (v34)
      {
        goto LABEL_54;
      }

      *(v42 + 16) = v61;
LABEL_33:
      v0 = v72;
      v48 = v72[13];
      v41 = v53;
      *(v53 + v43) = v42;
      swift_endAccess();
      [v51 setStateChangeDelegate_];

      ++v45;
      if (v70 == v44)
      {
        goto LABEL_57;
      }
    }

    sub_229896984(v58, v52);
    v42 = v74;
    v54 = sub_2296DC084(v50);
    if ((v41 & 1) != (v59 & 1))
    {
      goto LABEL_49;
    }

LABEL_44:
    if (v41)
    {
      goto LABEL_32;
    }

    goto LABEL_45;
  }

LABEL_57:
  v64 = swift_task_alloc();
  v0[22] = v64;
  *v64 = v0;
  v64[1] = sub_2297BB8F4;

  return sub_2297BBC38(1);
}

uint64_t sub_2297BB8F4()
{
  v1 = *(*v0 + 104);

  return MEMORY[0x2822009F8](sub_2297BBA04, v1, 0);
}

uint64_t sub_2297BBA04()
{
  v15 = v0;
  (*(v0 + 152))(*(v0 + 128), *(v0 + 104) + *(v0 + 144), *(v0 + 112));

  v1 = sub_22A4DD05C();
  v2 = sub_22A4DDCCC();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 168);
  v5 = *(v0 + 128);
  v6 = *(v0 + 112);
  if (v3)
  {
    v13 = *(v0 + 168);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136315138;
    v14[0] = v8;
    v14[1] = 91;
    v14[2] = 0xE100000000000000;
    v9 = sub_22A4DB76C();
    MEMORY[0x22AAD08C0](v9);

    MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
    MEMORY[0x22AAD08C0](0xD000000000000017, 0x800000022A5968E0);
    MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
    v10 = sub_2295A3E30(91, 0xE100000000000000, v14);

    *(v7 + 4) = v10;
    _os_log_impl(&dword_229538000, v1, v2, "%s finished", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AAD4E50](v8, -1, -1);
    MEMORY[0x22AAD4E50](v7, -1, -1);

    v13(v5, v6);
  }

  else
  {

    v4(v5, v6);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2297BBC38(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_2297BBC58, v1, 0);
}

uint64_t sub_2297BBC58()
{
  v1 = v0[6];
  v2 = OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_isCoordinating;
  v0[7] = OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_isCoordinating;
  *(v1 + v2) = 1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_2297BBD00;

  return sub_2297BC064();
}

uint64_t sub_2297BBD00()
{
  v1 = *(*v0 + 48);

  return MEMORY[0x2822009F8](sub_2297BBE10, v1, 0);
}

uint64_t sub_2297BBE10()
{
  if (sub_2297BC470())
  {
    v1 = *(v0 + 48);
    v2 = OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_currentReports;
    swift_beginAccess();
    v3 = *(v1 + v2);
    if (*(v3 + 16))
    {
      v4 = sub_2296DC084(1);
      if (v5)
      {
        if (*(*(v3 + 56) + 8 * v4))
        {
          sub_2297C0578(0, *(v0 + 40), 1);
        }
      }
    }

    v6 = swift_task_alloc();
    *(v0 + 72) = v6;
    *v6 = v0;
    v6[1] = sub_2297BBF38;

    return sub_2297C0BEC();
  }

  else
  {
    *(*(v0 + 48) + *(v0 + 56)) = 0;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_2297BBF38()
{
  v1 = *(*v0 + 48);

  return MEMORY[0x2822009F8](sub_2297BC048, v1, 0);
}

uint64_t sub_2297BC084()
{
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_detectorsByContributorType;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 48) = v3;
  v4 = *(v3 + 32);
  *(v0 + 88) = v4;
  v5 = -1;
  v6 = -1 << v4;
  if (-(-1 << v4) < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v3 + 64);

  if (v7)
  {
    v9 = 0;
LABEL_8:
    *(v0 + 56) = v7;
    *(v0 + 64) = v9;
    v11 = *(*(v8 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v7)))));
    *(v0 + 72) = v11;
    v12 = v11;
    v13 = swift_task_alloc();
    *(v0 + 80) = v13;
    *v13 = v0;
    v13[1] = sub_2297BC20C;

    return sub_2297BEDD4(v12, 0);
  }

  else
  {
    v10 = 0;
    while (((63 - v6) >> 6) - 1 != v10)
    {
      v9 = v10 + 1;
      v7 = *(v8 + 8 * v10++ + 72);
      if (v7)
      {
        goto LABEL_8;
      }
    }

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_2297BC20C()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_2297BC31C, v1, 0);
}

void sub_2297BC31C()
{
  v1 = *(v0 + 64);
  v2 = (*(v0 + 56) - 1) & *(v0 + 56);
  if (v2)
  {
    v3 = *(v0 + 48);
LABEL_7:
    *(v0 + 56) = v2;
    *(v0 + 64) = v1;
    v5 = *(*(v3 + 56) + ((v1 << 9) | (8 * __clz(__rbit64(v2)))));
    *(v0 + 72) = v5;
    v6 = v5;
    v7 = swift_task_alloc();
    *(v0 + 80) = v7;
    *v7 = v0;
    v7[1] = sub_2297BC20C;

    sub_2297BEDD4(v6, 0);
  }

  else
  {
    while (1)
    {
      v4 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
        return;
      }

      v3 = *(v0 + 48);
      if (v4 >= (((1 << *(v0 + 88)) + 63) >> 6))
      {
        break;
      }

      v2 = *(v3 + 8 * v4 + 64);
      ++v1;
      if (v2)
      {
        v1 = v4;
        goto LABEL_7;
      }
    }

    v8 = *(v0 + 8);

    v8();
  }
}

uint64_t sub_2297BC470()
{
  v1 = v0;
  v2 = sub_22A4DD07C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_currentReports;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (*(v7 + 16))
  {
    v8 = sub_2296DC084(1);
    if (v9)
    {
      if (*(*(v7 + 56) + 8 * v8))
      {
        return 1;
      }
    }
  }

  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger, v2);

  v11 = sub_22A4DD05C();
  v12 = sub_22A4DDCCC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 136315394;
    v17 = 91;
    v18 = 0xE100000000000000;
    v19 = v14;
    v15 = sub_22A4DB76C();
    MEMORY[0x22AAD08C0](v15);

    MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
    MEMORY[0x22AAD08C0](0xD00000000000001ELL, 0x800000022A5968C0);
    MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
    v16 = sub_2295A3E30(v17, v18, &v19);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2048;
    *(v13 + 14) = 1;
    _os_log_impl(&dword_229538000, v11, v12, "%s Nothing to send because contributor type %lu value is unknown", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AAD4E50](v14, -1, -1);
    MEMORY[0x22AAD4E50](v13, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

uint64_t sub_2297BC704(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_22A4DD07C();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297BC7C4, v1, 0);
}

uint64_t sub_2297BC7C4()
{
  v31 = v0;
  v1 = *(v0 + 48);
  v2 = [*(v0 + 40) contributorType];
  v3 = OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_detectorsByContributorType;
  swift_beginAccess();
  if (*(*(v1 + v3) + 16) && (sub_2296DC084(v2), (v4 & 1) != 0))
  {
    v5 = *(v0 + 40);
    v6 = [v5 contributorType];
    v7 = [v5 reason];
    v8 = swift_task_alloc();
    *(v0 + 80) = v8;
    *v8 = v0;
    v8[1] = sub_2297BCB6C;

    return sub_2297BCC7C(v5, v6, v7);
  }

  else
  {
    v10 = *(v0 + 40);
    (*(*(v0 + 64) + 16))(*(v0 + 72), *(v0 + 48) + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger, *(v0 + 56));
    v11 = v10;

    v12 = sub_22A4DD05C();
    v13 = sub_22A4DDCEC();

    v14 = os_log_type_enabled(v12, v13);
    v16 = *(v0 + 64);
    v15 = *(v0 + 72);
    v17 = *(v0 + 56);
    if (v14)
    {
      v18 = *(v0 + 40);
      v29 = *(v0 + 56);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v19 = 136315650;
      v30[0] = v21;
      v30[1] = 91;
      v30[2] = 0xE100000000000000;
      v22 = sub_22A4DB76C();
      v28 = v15;
      MEMORY[0x22AAD08C0](v22);

      MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
      MEMORY[0x22AAD08C0](0x6F70657228746573, 0xEC000000293A7472);
      MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
      v23 = sub_2295A3E30(91, 0xE100000000000000, v30);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2048;
      v24 = [v18 contributorType];

      *(v19 + 14) = v24;
      *(v19 + 22) = 2112;
      *(v19 + 24) = v18;
      *v20 = v18;
      v25 = v18;
      _os_log_impl(&dword_229538000, v12, v13, "%s Asked to set user activity report for unknown contributor type %lu: %@", v19, 0x20u);
      sub_22953EAE4(v20, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v20, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x22AAD4E50](v21, -1, -1);
      MEMORY[0x22AAD4E50](v19, -1, -1);

      (*(v16 + 8))(v28, v29);
    }

    else
    {
      v26 = *(v0 + 40);

      (*(v16 + 8))(v15, v17);
    }

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_2297BCB6C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2297BCC7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v5 = sub_22A4DD07C();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v6 = sub_22A4DB74C();
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297BCDA8, v3, 0);
}

uint64_t sub_2297BCDA8()
{
  v63 = v0;
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_currentReports;
  swift_beginAccess();
  v58 = v2;
  v59 = v1;
  v3 = *(v1 + v2);
  if (*(v3 + 16) && (v4 = sub_2296DC084(*(v0 + 80)), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
    if (v6)
    {
      v7 = *(v0 + 72);
      if (v7)
      {
        v9 = *(v0 + 144);
        v8 = *(v0 + 152);
        v10 = *(v0 + 128);
        v11 = *(v0 + 136);
        v12 = v6;
        v13 = v7;
        v14 = [v13 lastUpdateTimestamp];
        sub_22A4DB70C();

        v15 = [v12 lastUpdateTimestamp];
        sub_22A4DB70C();

        LOBYTE(v15) = sub_22A4DB6BC();
        v16 = *(v11 + 8);
        v16(v9, v10);
        v16(v8, v10);
        if ((v15 & 1) == 0)
        {

LABEL_23:

          v52 = *(v0 + 8);

          return v52();
        }
      }

      else
      {
        v53 = v6;
      }
    }
  }

  else
  {
    v6 = 1;
  }

  *(v0 + 160) = v6;
  v18 = *(v0 + 112);
  v17 = *(v0 + 120);
  v19 = *(v0 + 96);
  v56 = *(v0 + 104);
  v21 = *(v0 + 72);
  v20 = *(v0 + 80);
  swift_beginAccess();
  v54 = v21;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v61 = *(v59 + v58);
  *(v59 + v58) = 0x8000000000000000;
  sub_2295AC210(v21, v20, isUniquelyReferenced_nonNull_native);
  *(v59 + v58) = v61;
  swift_endAccess();
  (*(v18 + 16))(v17, v19 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger, v56);
  v23 = v54;

  sub_22954BCAC(v6);
  v24 = sub_22A4DD05C();
  v25 = sub_22A4DDCCC();

  sub_22954BC9C(v6);

  if (os_log_type_enabled(v24, v25))
  {
    v26 = *(v0 + 80);
    v55 = *(v0 + 72);
    v27 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *v27 = 136315906;
    v60 = v57;
    v61 = 91;
    v62 = 0xE100000000000000;
    v28 = sub_22A4DB76C();
    MEMORY[0x22AAD08C0](v28);

    MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
    MEMORY[0x22AAD08C0](0xD000000000000015, 0x800000022A596880);
    MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
    v29 = sub_2295A3E30(91, 0xE100000000000000, &v60);

    *(v27 + 4) = v29;
    *(v27 + 12) = 2048;
    *(v27 + 14) = v26;
    *(v27 + 22) = 2080;
    *(v0 + 64) = v6;
    sub_22954BCAC(v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881380, &qword_22A583A48);
    v30 = sub_22A4DD64C();
    v32 = sub_2295A3E30(v30, v31, &v60);

    *(v27 + 24) = v32;
    *(v27 + 32) = 2080;
    if (v55)
    {
      v61 = 678716787;
      v62 = 0xE400000000000000;
      v33 = v23;
      v34 = [v33 description];
      v35 = sub_22A4DD5EC();
      v37 = v36;

      MEMORY[0x22AAD08C0](v35, v37);

      MEMORY[0x22AAD08C0](41, 0xE100000000000000);

      v38 = v61;
      v39 = v62;
    }

    else
    {
      v39 = 0xE500000000000000;
      v38 = 0x7465736E75;
    }

    v44 = *(v0 + 112);
    v43 = *(v0 + 120);
    v45 = *(v0 + 104);
    v46 = sub_2295A3E30(v38, v39, &v60);

    *(v27 + 34) = v46;
    _os_log_impl(&dword_229538000, v24, v25, "%s Updated value of contributor type %lu from %s to %s", v27, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v57, -1, -1);
    MEMORY[0x22AAD4E50](v27, -1, -1);

    (*(v44 + 8))(v43, v45);
  }

  else
  {
    v41 = *(v0 + 112);
    v40 = *(v0 + 120);
    v42 = *(v0 + 104);

    (*(v41 + 8))(v40, v42);
  }

  if ((sub_2297BDAD0(*(v0 + 80), v6) & 1) == 0)
  {
    sub_22954BC9C(v6);
    goto LABEL_23;
  }

  v47 = *(v59 + v58);
  if (*(v47 + 16))
  {
    v48 = sub_2296DC084(1);
    if (v49)
    {
      if (*(*(v47 + 56) + 8 * v48))
      {
        sub_2297C0578(*(v0 + 80), *(v0 + 88), 0);
      }
    }
  }

  v50 = swift_task_alloc();
  *(v0 + 168) = v50;
  *v50 = v0;
  v50[1] = sub_2297BD388;

  return sub_2297C0BEC();
}

uint64_t sub_2297BD388()
{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](sub_2297BD498, v1, 0);
}

uint64_t sub_2297BD498()
{
  sub_22954BC9C(*(v0 + 160));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2297BD514(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_22A4DD07C();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297BD5D8, v2, 0);
}

uint64_t sub_2297BD5D8()
{
  v22 = v0;
  v1 = v0[7];
  v2 = OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_detectorsByContributorType;
  swift_beginAccess();
  if (*(*(v1 + v2) + 16) && (sub_2296DC084(v0[5]), (v3 & 1) != 0))
  {
    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = sub_2297C2ED0;
    v5 = v0[6];
    v6 = v0[5];

    return sub_2297BCC7C(0, v6, v5);
  }

  else
  {
    (*(v0[9] + 16))(v0[10], v0[7] + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger, v0[8]);

    v8 = sub_22A4DD05C();
    v9 = sub_22A4DDCEC();

    v10 = os_log_type_enabled(v8, v9);
    v12 = v0[9];
    v11 = v0[10];
    v13 = v0[8];
    if (v10)
    {
      v20 = v0[10];
      v19 = v0[5];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 136315394;
      v21[0] = v15;
      v21[1] = 91;
      v21[2] = 0xE100000000000000;
      v16 = sub_22A4DB76C();
      MEMORY[0x22AAD08C0](v16);

      MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
      MEMORY[0x22AAD08C0](0xD00000000000001BLL, 0x800000022A596860);
      MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
      v17 = sub_2295A3E30(91, 0xE100000000000000, v21);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2048;
      *(v14 + 14) = v19;
      _os_log_impl(&dword_229538000, v8, v9, "%s Asked to unset user activity report for unknown contributor type %lu", v14, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x22AAD4E50](v15, -1, -1);
      MEMORY[0x22AAD4E50](v14, -1, -1);

      (*(v12 + 8))(v20, v13);
    }

    else
    {

      (*(v12 + 8))(v11, v13);
    }

    v18 = v0[1];

    return v18();
  }
}