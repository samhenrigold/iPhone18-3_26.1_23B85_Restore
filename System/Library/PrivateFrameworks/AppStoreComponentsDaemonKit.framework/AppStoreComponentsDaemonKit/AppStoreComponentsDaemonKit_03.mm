unint64_t sub_22269E150()
{
  result = qword_281313108;
  if (!qword_281313108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281313108);
  }

  return result;
}

unint64_t sub_22269E1A4()
{
  result = qword_281314498;
  if (!qword_281314498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281314498);
  }

  return result;
}

unint64_t sub_22269E1F8()
{
  result = qword_2813131D0;
  if (!qword_2813131D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813131D0);
  }

  return result;
}

unint64_t sub_22269E24C()
{
  result = qword_2813130F8;
  if (!qword_2813130F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813130F8);
  }

  return result;
}

uint64_t sub_22269E2A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22269D4D4(v1);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_22269E2D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22266BE24;

  return sub_2226995E0();
}

uint64_t sub_22269E3D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22269E440(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_22269E4A8(void *a1)
{
  type metadata accessor for MetricsTopicProvider(0);
  v2 = sub_22269E580(a1);

  return v2;
}

uint64_t sub_22269E520(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_22269E580(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0136F8, &qword_222742670);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-v4];
  v6 = sub_22273916C();
  sub_222738B0C();

  sub_222738B3C();
  (*(v3 + 8))(v5, v2);
  if (v13[15] == 1)
  {
    [a1 setAnonymous_];
    [a1 setAccount_];
  }

  v7 = [a1 topic];
  v8 = sub_22273919C();
  v10 = v9;

  if (qword_27D0129E8 != -1)
  {
    swift_once();
  }

  if (sub_2226DC93C(v8, v10, qword_27D013F88))
  {

    MetricsTopicProvider.currentMetricsTopic.getter();
  }

  v11 = sub_22273916C();

  [a1 setTopic_];

  return a1;
}

uint64_t sub_22269E7A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_222660228;

  return sub_2226E39B0(a1, v4, v5, v7, v6);
}

uint64_t sub_22269E868(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22266BE24;

  return sub_222698338(a1, v1);
}

uint64_t sub_22269E904(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22266BE24;

  return sub_2226D31BC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22269E9E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22266BE24;

  return sub_22269D9F4(a1, v4);
}

id sub_22269EA98(char a1, uint64_t a2)
{
  if (a1)
  {

    return ASCPostRebootstrapNotification();
  }

  else
  {
    v3 = *(a2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_stateLock);
    [v3 lock];
    sub_22269F3A4(a2);

    return [v3 unlock];
  }
}

uint64_t (*sub_22269EB58(void *a1))(unsigned __int8 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_22269F7BC;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_22269F7C8;
}

id sub_22269EC0C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2227381BC();
  MEMORY[0x28223BE20](v4 - 8);
  if (qword_281312E18 != -1)
  {
    swift_once();
  }

  v5 = sub_222738F6C();
  __swift_project_value_buffer(v5, qword_281315AA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v9[3] = type metadata accessor for ObjectGraph(0);
  v9[0] = a1;

  sub_22273818C();
  sub_222672BA0(v9);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  v6 = *(v1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_stateLock);
  [*(v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_stateLock) lock];
  v7 = *(v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_bootstrapState);
  *(v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_bootstrapState) = a1 | 0x4000000000000000;
  sub_22269F78C(v7);

  return [v6 unlock];
}

id sub_22269EE44(unint64_t a1)
{
  v2 = v1;
  v4 = sub_2227381BC();
  MEMORY[0x28223BE20](v4 - 8);
  if (qword_281312E18 != -1)
  {
    swift_once();
  }

  v5 = sub_222738F6C();
  __swift_project_value_buffer(v5, qword_281315AA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  swift_getErrorValue();
  v12[3] = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1);
  sub_22273816C();
  sub_222672BA0(v12);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  v7 = *(v1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_stateLock);
  [*(v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_stateLock) lock];
  v8 = *(v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_bootstrapState);
  *(v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_bootstrapState) = a1 | 0x8000000000000000;
  sub_22269F78C(v8);
  v9 = a1;
  return [v7 unlock];
}

void sub_22269F0BC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_22269EC0C(v2);
  }
}

void sub_22269F118(unint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_22269EE44(a1);
  }
}

uint64_t sub_22269F174(uint64_t a1)
{
  v2 = sub_2227381BC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_bootstrapState;
  v4 = *(a1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_bootstrapState);
  if (v4 >> 62 == 2 || (v4 >> 62 == 3 ? (v5 = v4 == 0xC000000000000000) : (v5 = 0), v5))
  {
    sub_22262D930();
  }

  else
  {
    if (qword_281312E18 != -1)
    {
      swift_once();
    }

    v6 = sub_222738F6C();
    __swift_project_value_buffer(v6, qword_281315AA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    sub_2227381FC();
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    v7 = *(a1 + v3);
    v9[3] = &type metadata for BootstrapSession.BootstrapState;
    v9[0] = v7;
    sub_22269F7F4(v7);
    sub_22273816C();
    sub_222672BA0(v9);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C4C();
  }
}

uint64_t sub_22269F3A4(uint64_t a1)
{
  v2 = sub_2227381BC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_bootstrapState;
  v4 = *(a1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_bootstrapState);
  if (v4 >> 62 == 2 || (v4 >> 62 == 3 ? (v5 = v4 == 0xC000000000000000) : (v5 = 0), v5))
  {
    if (qword_281312E18 != -1)
    {
      swift_once();
    }

    v7 = sub_222738F6C();
    __swift_project_value_buffer(v7, qword_281315AA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    sub_2227381FC();
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    v8 = *(a1 + v3);
    v9[3] = &type metadata for BootstrapSession.BootstrapState;
    v9[0] = v8;
    sub_22269F7F4(v8);
    sub_22273816C();
    sub_222672BA0(v9);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C4C();
  }

  else
  {
    sub_22262D930();

    return ASCPostRebootstrapNotification();
  }
}

uint64_t get_enum_tag_for_layout_string_27AppStoreComponentsDaemonKit16BootstrapSessionC0F5State33_94851151D45C843AB9BA9A7FA3CA1DAFLLO(void *a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return (*a1 >> 3) + 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_22269F674(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 8))
  {
    return (*a1 + 125);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_22269F6D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_22269F730(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 3)) | 0xC000000000000000;
  }

  return result;
}

void sub_22269F78C(unint64_t a1)
{
  if ((a1 >> 62) > 1)
  {
    if (a1 >> 62 == 2)
    {
    }
  }

  else
  {
  }
}

unint64_t sub_22269F7F4(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  if (result >> 62 == 2)
  {
    return (result & 0x3FFFFFFFFFFFFFFFLL);
  }

  return result;
}

uint64_t sub_22269F82C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_22269F870()
{
  result = [objc_allocWithZone(type metadata accessor for Daemon()) init];
  qword_2813140D0 = result;
  return result;
}

id static Daemon.shared.getter()
{
  if (qword_2813140C0 != -1)
  {
    swift_once();
  }

  v1 = qword_2813140D0;

  return v1;
}

uint64_t sub_22269F8FC()
{
  result = sub_22273916C();
  qword_281315B98 = result;
  return result;
}

Swift::Void __swiftcall Daemon.run()()
{
  ObjectType = swift_getObjectType();
  v0 = sub_2227395DC();
  v31 = *(v0 - 8);
  v32 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_222737C4C();
  v4 = *(v3 - 8);
  v36 = v3;
  v37 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_222737C9C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22262E364(0, &qword_281312C98, 0x277D85CA0);
  sub_22262E364(0, &qword_281312CC0, 0x277D85C78);
  v11 = sub_22273955C();
  v12 = sub_2227395BC();

  swift_getObjectType();
  v42 = sub_22269FEEC;
  v43 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v39 = 1107296256;
  v40 = sub_22269F82C;
  v41 = &block_descriptor_7;
  v13 = _Block_copy(&aBlock);
  sub_222737C7C();
  sub_2226A001C();
  sub_2227395FC();
  _Block_release(v13);
  v14 = *(v37 + 8);
  v37 += 8;
  v30 = v14;
  v14(v6, v36);
  v15 = v8 + 8;
  v16 = *(v8 + 8);
  v29 = v15;
  v16(v10, v7);
  v35 = v12;
  sub_22273960C();
  sub_2227395CC();
  sub_2227395EC();
  (*(v31 + 8))(v2, v32);
  swift_getObjectType();
  v17 = swift_allocObject();
  v18 = v33;
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  v20 = ObjectType;
  *(v19 + 16) = v17;
  *(v19 + 24) = v20;
  v42 = sub_2226A0760;
  v43 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v39 = 1107296256;
  v21 = v18;
  v40 = sub_22269F82C;
  v41 = &block_descriptor_6;
  v22 = _Block_copy(&aBlock);

  sub_222737C7C();
  sub_2226A001C();
  sub_2227395FC();
  _Block_release(v22);
  v30(v6, v36);
  v16(v10, v7);

  sub_22273960C();
  JSRemoteInspectorSetInspectionEnabledByDefault();
  [objc_opt_self() setFlushDelayEnabled_];
  setenv("JSC_criticalGCMemoryThreshold", "0.25", 1);
  v23 = objc_autoreleasePoolPush();
  v24 = *(v21 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit6Daemon_session);
  v25 = *(v24 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_stateLock);
  [v25 lock];
  sub_22269F174(v24);
  [v25 unlock];
  objc_autoreleasePoolPop(v23);
  [*(v21 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit6Daemon_listener) resume];
  sub_222730D94();
  _CFRunLoopSetPerCalloutAutoreleasepoolEnabled();
  v26 = *MEMORY[0x277CBF058];
  do
  {
    v27 = objc_autoreleasePoolPush();
    v28 = CFRunLoopRunInMode(v26, 15.0, 1u);
    objc_autoreleasePoolPop(v27);
  }

  while ((v28 - 1) > 1);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

void sub_22269FEEC()
{
  if (qword_281312E18 != -1)
  {
    swift_once();
  }

  v0 = sub_222738F6C();
  __swift_project_value_buffer(v0, qword_281315AA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();

  exit(0);
}

uint64_t sub_2226A001C()
{
  sub_222737C4C();
  sub_222697744();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013A10, &qword_222742900);
  sub_2226A0E84();
  return sub_2227397BC();
}

uint64_t sub_2226A00A4(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v21 = a1;
  v2 = sub_222737C4C();
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_222737C9C();
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22273760C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281312E18 != -1)
  {
    swift_once();
  }

  v12 = sub_222738F6C();
  __swift_project_value_buffer(v12, qword_281315AA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();

  sub_22273963C();
  sub_22262E364(0, &qword_281312B40, 0x277D86200);
  v13 = sub_22273970C();
  sub_2227375FC();
  sub_2227375DC();

  (*(v9 + 8))(v11, v8);
  sub_22262E364(0, &qword_281312CC0, 0x277D85C78);
  v14 = sub_22273955C();
  v15 = swift_allocObject();
  v16 = v20;
  *(v15 + 16) = v21;
  *(v15 + 24) = v16;
  aBlock[4] = sub_2226A0E7C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22269F82C;
  aBlock[3] = &block_descriptor_16;
  v17 = _Block_copy(aBlock);

  sub_222737C7C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_222697744();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013A10, &qword_222742900);
  sub_2226A0E84();
  sub_2227397BC();
  MEMORY[0x223DBE8C0](0, v7, v4, v17);
  _Block_release(v17);

  (*(v24 + 8))(v4, v2);
  return (*(v22 + 8))(v7, v23);
}

void sub_2226A0548(uint64_t a1)
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_2813140D8 != -1)
  {
    swift_once();
  }

  v2 = qword_281315B98;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  [v1 postNotificationName:v2 object:Strong];
}

id Daemon.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2226A0768()
{
  if (qword_281312E18 != -1)
  {
    swift_once();
  }

  v0 = sub_222738F6C();
  __swift_project_value_buffer(v0, qword_281315AA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();

  v1 = CFRunLoopGetMain();
  CFRunLoopStop(v1);

  exit(0);
}

BOOL sub_2226A08B0(void *a1)
{
  v2 = v1;
  v4 = sub_2227381BC();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = a1;
  v6 = sub_222735024(v5, 0xD000000000000024, 0x80000002227496A0);
  if (v6)
  {
    sub_2226978A0();
    v7 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit6Daemon_keepAlive;
    if (!*(v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit6Daemon_keepAlive))
    {
      *(v2 + v7) = os_transaction_create();
      swift_unknownObjectRelease();
    }

    v8 = *(v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit6Daemon_session);
    v9 = type metadata accessor for BootstrapSession();
    v28 = v9;
    v29 = &off_2835C8D08;
    v27[0] = v8;
    v10 = type metadata accessor for ServiceBrokerClient();
    v11 = objc_allocWithZone(v10);
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v27, v9);
    v13 = MEMORY[0x28223BE20](v12);
    v15 = (&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = *v15;
    v26[3] = v9;
    v26[4] = &off_2835C8D08;
    v26[0] = v17;
    sub_22266BCCC(v26, v11 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19ServiceBrokerClient_session);
    v25.receiver = v11;
    v25.super_class = v10;
    v18 = v8;
    v19 = objc_msgSendSuper2(&v25, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v26);
    __swift_destroy_boxed_opaque_existential_1(v27);
    v20 = v19;
    v21 = ASCServiceBrokerGetInterface(v20);
    sub_22273458C(v20, v21, v6);

    [v6 resume];
  }

  else
  {
    if (qword_281312E18 != -1)
    {
      swift_once();
    }

    v22 = sub_222738F6C();
    __swift_project_value_buffer(v22, qword_281315AA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    sub_2227381FC();
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    v28 = sub_22262E364(0, &qword_281312D20, 0x277CCAE80);
    v27[0] = v5;
    v23 = v5;
    sub_22273818C();
    sub_222672BA0(v27);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C6C();
  }

  return v6 != 0;
}

uint64_t sub_2226A0CC8()
{
  v1 = [objc_opt_self() daemonDefaults];
  v2 = [v1 disableShutdownTimer];

  if ((v2 & 1) == 0)
  {
    if (qword_281312E18 != -1)
    {
      swift_once();
    }

    v4 = sub_222738F6C();
    __swift_project_value_buffer(v4, qword_281315AA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    sub_2227381FC();
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_22273813C();
    sub_222738C4C();

    v5 = CFRunLoopGetMain();
    CFRunLoopStop(v5);

    exit(0);
  }

  *(v0 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit6Daemon_keepAlive) = 0;

  return swift_unknownObjectRelease();
}

unint64_t sub_2226A0E84()
{
  result = qword_281312DE0;
  if (!qword_281312DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D013A10, &qword_222742900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281312DE0);
  }

  return result;
}

void sub_2226A0EF8(void *a1)
{
  v3 = objc_opt_self();
  if (![v3 valueWithNewObjectInContext_])
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(v1 + 8);
  *&v14 = *v1;
  *(&v14 + 1) = v4;

  v5 = [v3 valueWithObject:sub_222739B6C() inContext:a1];
  swift_unknownObjectRelease();
  if (!v5)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_2227396AC();
  v14 = *(v1 + 16);
  if (*(&v14 + 1))
  {
    v13 = v14;
    sub_2226A1328(&v14, &v12);
    v6 = a1;
    v7 = sub_222739B2C();
    sub_22269E384(&v13);
  }

  else
  {
    v8 = a1;
    v7 = 0;
  }

  v9 = [v3 valueWithObject:v7 inContext:a1];
  swift_unknownObjectRelease();

  if (!v9)
  {
    goto LABEL_11;
  }

  sub_2227396AC();
  v10 = *(v1 + 40);
  *&v13 = *(v1 + 32);
  *(&v13 + 1) = v10;

  v11 = [v3 valueWithObject:sub_222739B6C() inContext:a1];
  swift_unknownObjectRelease();
  if (v11)
  {
    sub_2227396AC();
    return;
  }

LABEL_12:
  __break(1u);
}

id sub_2226A10E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_opt_self();
  result = [v6 valueWithNewObjectInContext_];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = result;

  v9 = [v6 valueWithObject:sub_222739B6C() inContext:a1];
  result = swift_unknownObjectRelease();
  if (!v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_2227396AC();
  v10 = *(a4 + 16);
  if (v10)
  {
    sub_22273997C();
    v11 = a4 + 40;
    do
    {

      sub_2226A0EF8(a1);

      sub_22273995C();
      sub_22273998C();
      sub_22273999C();
      sub_22273996C();
      v11 += 48;
      --v10;
    }

    while (v10);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013A18, &unk_222742D00);
  v12 = [v6 valueWithObject:sub_222739B6C() inContext:a1];
  result = swift_unknownObjectRelease();
  if (v12)
  {
    sub_2227396AC();
    return v8;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2226A1328(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013EB0, &qword_222743920);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
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

uint64_t sub_2226A13AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2226A13F4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2226A1464(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2226A14AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2226A14FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v31 = MEMORY[0x277D84F90];
  sub_2226AE7EC(0, v1, 0);
  v2 = v31;
  v4 = v3 + 64;
  result = sub_2227397CC();
  v6 = result;
  v7 = 0;
  v8 = *(v3 + 36);
  v25 = v3 + 72;
  v26 = v1;
  v27 = v8;
  v28 = v3 + 64;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v29 = v7;
    v11 = (*(v3 + 48) + 16 * v6);
    v12 = v11[1];
    v30 = *v11;
    v13 = v3;
    v14 = *(*(v3 + 56) + 8 * v6);
    v15 = *(v31 + 16);
    v16 = *(v31 + 24);

    if (v15 >= v16 >> 1)
    {
      result = sub_2226AE7EC((v16 > 1), v15 + 1, 1);
    }

    *(v31 + 16) = v15 + 1;
    v17 = (v31 + 24 * v15);
    v17[4] = v30;
    v17[5] = v12;
    v17[6] = v14;
    v9 = 1 << *(v13 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v3 = v13;
    v4 = v28;
    v18 = *(v28 + 8 * v10);
    if ((v18 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v27;
    if (v27 != *(v3 + 36))
    {
      goto LABEL_26;
    }

    v19 = v18 & (-2 << (v6 & 0x3F));
    if (v19)
    {
      v9 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v10 << 6;
      v21 = v10 + 1;
      v22 = (v25 + 8 * v10);
      while (v21 < (v9 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_2226A5ADC(v6, v27, 0);
          v9 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = sub_2226A5ADC(v6, v27, 0);
    }

LABEL_4:
    v7 = v29 + 1;
    v6 = v9;
    if (v29 + 1 == v26)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2226A175C()
{
  v0 = sub_222738F4C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_222738F6C();
  __swift_allocate_value_buffer(v4, qword_27D013A20);
  __swift_project_value_buffer(v4, qword_27D013A20);
  if (qword_281312E10 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_281315A90);
  (*(v1 + 16))(v3, v5, v0);
  return sub_222738F5C();
}

uint64_t sub_2226A18B0()
{
  *(v1 + 40) = v0;
  v2 = swift_task_alloc();
  *(v1 + 48) = v2;
  *v2 = v1;
  v2[1] = sub_2226A1944;

  return MEMORY[0x2821237B8]();
}

uint64_t sub_2226A1944(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_2226A1A44, 0, 0);
}

uint64_t sub_2226A1A44()
{
  if ((*(*__swift_project_boxed_opaque_existential_1((v0[5] + 40), *(v0[5] + 64)) + 16) & 1) == 0)
  {
    v5 = v0[7];
    v10 = *(v5 + 2);
    if (v10)
    {
      v1 = 0;
      v2 = 0;
      while (1)
      {
        result = *(v5 + 4);
        if (result == 0xD000000000000012 && 0x8000000222747B00 == *(v5 + 5))
        {
          break;
        }

        result = sub_222739B4C();
        if (result)
        {
          break;
        }

        ++v2;
        v1 -= 16;
        v5 += 16;
        if (v10 == v2)
        {
          v5 = v0[7];
          goto LABEL_19;
        }
      }

      v13 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
        return result;
      }

      v5 = v0[7];
      if (v13 != v10)
      {
        v17 = -v1;
        v18 = *(v5 + 2);
        v10 = v2;
        while (v13 < v18)
        {
          v2 = *&v5[v17 + 48];
          v1 = *&v5[v17 + 56];
          v20 = v2 == 0xD000000000000012 && 0x8000000222747B00 == v1;
          if (!v20 && (sub_222739B4C() & 1) == 0)
          {
            if (v13 != v10)
            {
              if (v10 >= v18)
              {
                goto LABEL_52;
              }

              v21 = &v5[16 * v10 + 32];
              v22 = *(v21 + 1);
              v24 = *v21;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v5 = sub_2226A54EC(v5);
              }

              v23 = &v5[16 * v10];
              *(v23 + 4) = v2;
              *(v23 + 5) = v1;

              if (v13 >= *(v5 + 2))
              {
                goto LABEL_53;
              }

              v19 = &v5[v17];
              *(v19 + 6) = v24;
              *(v19 + 7) = v22;
            }

            ++v10;
          }

          ++v13;
          v18 = *(v5 + 2);
          v17 += 16;
          if (v13 == v18)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
        goto LABEL_49;
      }

      v10 = v2;
    }

LABEL_19:
    v2 = *(v5 + 2);
    if (v10 <= v2)
    {
      if ((v10 & 0x8000000000000000) == 0)
      {
        if (!__OFADD__(v2, v10 - v2))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v0[4] = v5;
          if (!isUniquelyReferenced_nonNull_native || v10 > *(v5 + 3) >> 1)
          {
            if (v2 <= v10)
            {
              v15 = v10;
            }

            else
            {
              v15 = v2;
            }

            v5 = sub_222694EC0(isUniquelyReferenced_nonNull_native, v15, 1, v5);
            v0[4] = v5;
          }

          sub_2226CB960(v10, v2, 0);
          goto LABEL_29;
        }

        goto LABEL_51;
      }

LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v2 = 0xD000000000000012;
  v0[2] = 0xD000000000000012;
  v3 = v0[7];
  v1 = 0x8000000222747B00;
  v0[3] = 0x8000000222747B00;
  v4 = swift_task_alloc();
  *(v4 + 16) = v0 + 2;
  LOBYTE(v3) = sub_222730F54(sub_2226A5750, v4, v3);

  v5 = v0[7];
  if ((v3 & 1) == 0)
  {
    v6 = swift_isUniquelyReferenced_nonNull_native();
    v5 = v0[7];
    if (v6)
    {
LABEL_4:
      v8 = *(v5 + 2);
      v7 = *(v5 + 3);
      if (v8 >= v7 >> 1)
      {
        v5 = sub_222694EC0((v7 > 1), v8 + 1, 1, v5);
      }

      *(v5 + 2) = v8 + 1;
      v9 = &v5[16 * v8];
      *(v9 + 4) = v2;
      *(v9 + 5) = v1;
      goto LABEL_29;
    }

LABEL_54:
    v5 = sub_222694EC0(0, *(v5 + 2) + 1, 1, v5);
    goto LABEL_4;
  }

LABEL_29:
  v16 = v0[1];

  return v16(v5);
}

uint64_t sub_2226A1DA8(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  sub_2227381BC();
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2226A1E64, 0, 0);
}

uint64_t sub_2226A1E64()
{
  v66 = v1;
  v65[2] = *MEMORY[0x277D85DE8];
  v1[10] = 0;
  v2 = v1 + 10;
  os_eligibility_get_domain_answer();
  v63 = v1 + 10;
  v64 = v1;
  v3 = v1[13];
  if (v1[10] != 4)
  {
    v1 = (v3 + 64);
    v4 = -1;
    v5 = -1 << *(v3 + 32);
    if (-v5 < 64)
    {
      v4 = ~(-1 << -v5);
    }

    v6 = v4 & *(v3 + 64);
    v3 = (63 - v5) >> 6;
    v7 = v2[3];

    v8 = 0;
    v9 = MEMORY[0x277D84F90];
    while (v6)
    {
LABEL_12:
      v11 = *(*(v7 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v6)))));
      v0 = *(v11 + 16);
      v12 = *(v9 + 2);
      v13 = v12 + v0;
      if (__OFADD__(v12, v0))
      {
        goto LABEL_54;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v13 > *(v9 + 3) >> 1)
      {
        if (v12 <= v13)
        {
          v15 = v12 + v0;
        }

        else
        {
          v15 = v12;
        }

        v9 = sub_222694EC0(isUniquelyReferenced_nonNull_native, v15, 1, v9);
      }

      v6 &= v6 - 1;
      if (*(v11 + 16))
      {
        if ((*(v9 + 3) >> 1) - *(v9 + 2) < v0)
        {
          goto LABEL_56;
        }

        swift_arrayInitWithCopy();

        if (v0)
        {
          v16 = *(v9 + 2);
          v17 = __OFADD__(v16, v0);
          v18 = v16 + v0;
          if (v17)
          {
            __break(1u);
          }

          *(v9 + 2) = v18;
        }
      }

      else
      {

        if (v0)
        {
          goto LABEL_55;
        }
      }
    }

    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v10 >= v3)
      {
        v1 = v64;
        v19 = v64[13];
        v20 = v64[14];

        v21 = sub_2226AF640(v9);

        v22 = swift_task_alloc();
        *(v22 + 16) = v20;
        v23 = sub_2226A50BC(sub_2226A5844, v22, v21);

        v3 = sub_2226A5864(v19, v23);

        v58 = 0;
        goto LABEL_25;
      }

      v6 = v1[v10];
      ++v8;
      if (v6)
      {
        v8 = v10;
        goto LABEL_12;
      }
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v58 = 0;
LABEL_25:
  v0 = (v63 - 8);
  v60 = (v63 - 4);
  v1[16] = v3;
  if (qword_27D012990 != -1)
  {
LABEL_57:
    swift_once();
  }

  v24 = v1[13];
  v25 = sub_222738F6C();
  __swift_project_value_buffer(v25, qword_27D013A20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v1[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013A38, &qword_222742DC8);
  v1[2] = v3;
  v57 = v3;

  sub_22273816C();
  sub_222660468(v0, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  v26 = v24 + 64;
  v27 = -1;
  v28 = -1 << *(v24 + 32);
  if (-v28 < 64)
  {
    v27 = ~(-1 << -v28);
  }

  v3 = v27 & *(v24 + 64);
  v29 = (63 - v28) >> 6;
  v62 = v24;

  v30 = 0;
  v59 = MEMORY[0x277D84F90];
  v0 = v58;
  v61 = v26;
LABEL_29:
  v31 = v30;
  if (!v3)
  {
    goto LABEL_31;
  }

  do
  {
    v30 = v31;
LABEL_34:
    v32 = __clz(__rbit64(v3));
    v3 &= v3 - 1;
    v33 = (*(v62 + 48) + ((v30 << 10) | (16 * v32)));
    v34 = *v33;
    v35 = v33[1];
    v36 = objc_allocWithZone(MEMORY[0x277CC1E70]);

    v37 = sub_22273916C();
    v63[1] = 0;
    v38 = [v36 initWithBundleIdentifier:v37 allowPlaceholder:1 error:v63 + 1];

    v39 = v63[1];
    if (v38)
    {
      v42 = v39;
      v43 = [v38 localizedName];
      v44 = sub_22273919C();
      v1 = v45;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v59 = sub_22269544C(0, v59[2] + 1, 1, v59);
      }

      v47 = v59[2];
      v46 = v59[3];
      if (v47 >= v46 >> 1)
      {
        v59 = sub_22269544C((v46 > 1), v47 + 1, 1, v59);
      }

      v59[2] = v47 + 1;
      v48 = &v59[4 * v47];
      v48[4] = v34;
      v48[5] = v35;
      v48[6] = v44;
      v48[7] = v1;
      v26 = v61;
      goto LABEL_29;
    }

    v40 = v39;
    v41 = sub_22273727C();

    swift_willThrow();
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    v64[9] = MEMORY[0x277D837D0];
    v64[6] = v34;
    v64[7] = v35;

    v1 = v60;
    sub_22273816C();
    sub_222660468(v60, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C6C();

    v0 = 0;
    v31 = v30;
    v26 = v61;
  }

  while (v3);
  while (1)
  {
LABEL_31:
    v30 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      goto LABEL_53;
    }

    if (v30 >= v29)
    {
      break;
    }

    v3 = *(v26 + 8 * v30);
    ++v31;
    if (v3)
    {
      goto LABEL_34;
    }
  }

  if (v59[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013600, &qword_222742DD0);
    v49 = sub_222739A6C();
  }

  else
  {
    v49 = MEMORY[0x277D84F98];
  }

  v65[0] = v49;

  sub_2226A4D0C(v50, 1, v65);
  v64[17] = v0;
  if (v0)
  {

    return MEMORY[0x2821FEBD8](v0, "Swift/Dictionary.swift", 22, 1, 490);
  }

  else
  {

    v51 = v65[0];
    v64[18] = v65[0];
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013A40, &qword_222742DD8);
    v53 = swift_task_alloc();
    v64[19] = v53;
    *(v53 + 16) = v57;
    *(v53 + 24) = v51;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013A48, &qword_222742DF0);
    v55 = swift_task_alloc();
    v64[20] = v55;
    *v55 = v64;
    v55[1] = sub_2226A2744;
    v68 = v54;

    return MEMORY[0x282200600](v64 + 12, v52, v54, 0, 0, &unk_222742DE8, v53, v52);
  }
}

uint64_t sub_2226A2744()
{

  return MEMORY[0x2822009F8](sub_2226A28C8, 0, 0);
}

uint64_t sub_2226A28C8()
{
  v1 = sub_2226A14FC(*(v0 + 96));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2226A2988(uint64_t *a1, void *a2)
{
  v27 = a2;
  v3 = sub_2227381BC();
  MEMORY[0x28223BE20](v3 - 8);
  v30 = sub_22273793C();
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v29 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2227377AC();
  v26 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_222737C2C();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_2227377BC();
  v25 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v12 = a1[1];
  v14 = objc_allocWithZone(ASCAdamID);
  v31 = v13;
  v15 = sub_22273916C();
  v16 = [v14 initWithStringValue_];

  [v16 int64value];
  v17 = v32[5];
  sub_222737C1C();
  if (v17)
  {

    if (qword_27D012990 != -1)
    {
      swift_once();
    }

    v18 = sub_222738F6C();
    __swift_project_value_buffer(v18, qword_27D013A20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    sub_2227381FC();
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    v32[3] = MEMORY[0x277D837D0];
    v32[0] = v31;
    v32[1] = v12;

    sub_22273816C();
    sub_222660468(v32, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C6C();

    return 0;
  }

  else
  {
    (*(v26 + 104))(v7, *MEMORY[0x277CEBFE8], v5);
    sub_22273778C();

    __swift_project_boxed_opaque_existential_1(v27, v27[3]);
    v20 = v29;
    sub_2227379FC();
    (*(v25 + 8))(v11, v9);
    v21 = v28;
    v22 = v30;
    if ((*(v28 + 88))(v20, v30) == *MEMORY[0x277CEC0C0])
    {
      (*(v21 + 96))(v20, v22);
      v23 = sub_22273786C();
      (*(*(v23 - 8) + 8))(v20, v23);
      return 1;
    }

    else
    {
      (*(v21 + 8))(v20, v22);
      return 0;
    }
  }
}

uint64_t sub_2226A2F00@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *result;
  v24 = *(*result + 16);
  if (v24)
  {
    v5 = 0;
    v23 = v3 + 32;
    v6 = a2 + 56;
    v7 = MEMORY[0x277D84F90];
    v22 = *result;
    while (1)
    {
      v8 = v5;
      while (1)
      {
        if (v8 >= *(v3 + 16))
        {
          __break(1u);
          return result;
        }

        v5 = v8 + 1;
        if (*(a2 + 16))
        {
          break;
        }

LABEL_5:
        v8 = v5;
        if (v5 == v24)
        {
          goto LABEL_24;
        }
      }

      v9 = (v23 + 16 * v8);
      v11 = *v9;
      v10 = v9[1];
      sub_222739C5C();

      sub_22273924C();
      v12 = sub_222739C8C();
      v13 = -1 << *(a2 + 32);
      v14 = v12 & ~v13;
      if (((*(v6 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        break;
      }

      v15 = ~v13;
      while (1)
      {
        v16 = (*(a2 + 48) + 16 * v14);
        v17 = *v16 == v11 && v16[1] == v10;
        if (v17 || (sub_222739B4C() & 1) != 0)
        {
          break;
        }

        v14 = (v14 + 1) & v15;
        if (((*(v6 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2226AE80C(0, *(v7 + 16) + 1, 1);
      }

      v19 = *(v7 + 16);
      v18 = *(v7 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_2226AE80C((v18 > 1), v19 + 1, 1);
      }

      *(v7 + 16) = v19 + 1;
      v20 = v7 + 16 * v19;
      *(v20 + 32) = v11;
      *(v20 + 40) = v10;
      v3 = v22;
      if (v5 == v24)
      {
        goto LABEL_24;
      }
    }

LABEL_4:

    goto LABEL_5;
  }

  v7 = MEMORY[0x277D84F90];
LABEL_24:
  *a3 = v7;
  return result;
}

uint64_t sub_2226A30EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v5 = sub_2227374BC();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013A50, &qword_222742DF8);
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2226A3218, 0, 0);
}

uint64_t sub_2226A3218()
{
  v1 = v0[10];
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v5 = (63 - v3) >> 6;

  v9 = 0;
  if (v4)
  {
    while (1)
    {
      v10 = v9;
LABEL_9:
      v11 = v0[9];
      v12 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v13 = v12 | (v10 << 6);
      v14 = (*(v1 + 48) + 16 * v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = *(*(v1 + 56) + 8 * v13);

      sub_2226A3A20(v15, v16, v17, v11);

      if (!v4)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return MEMORY[0x282200308](v6, v7, v8);
    }

    if (v10 >= v5)
    {
      break;
    }

    v4 = *(v1 + 64 + 8 * v10);
    ++v9;
    if (v4)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013A40, &qword_222742DD8);
  sub_22273942C();
  v18 = MEMORY[0x277D84F98];
  v0[18] = MEMORY[0x277D84F98];
  v0[19] = v18;
  v19 = sub_2226A5AE8();
  v20 = swift_task_alloc();
  v0[20] = v20;
  *v20 = v0;
  v20[1] = sub_2226A33FC;
  v7 = v0[15];
  v6 = (v0 + 2);
  v8 = v19;

  return MEMORY[0x282200308](v6, v7, v8);
}

uint64_t sub_2226A33FC()
{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[16];
    v3 = v2[17];
    v5 = v2[15];

    (*(v4 + 8))(v3, v5);

    v6 = _ASCSignpostTag_valueTooLarge;
  }

  else
  {
    v6 = sub_2226A3550;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2226A3550()
{
  v2 = v0[1].i64[1];
  v1 = v0 + 1;
  v47 = v0[1].i64[0];
  if (v2)
  {
    v3 = v0[2].i64[0];
    if (v3)
    {
      v46 = *(v3 + 16);
      if (v46)
      {
        v4 = *(v0[6].i64[1] + 80);
        v45 = v3 + ((v4 + 32) & ~v4);
        v5 = v0[9].i64[0];

        v9 = 0;
        v10 = 0;
        v43 = v3;
        v44 = v2;
        while (1)
        {
          if (v10 >= *(v3 + 16))
          {
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
            return MEMORY[0x282200308](v6, v7, v8);
          }

          v11 = v0[5].i64[1];
          (*(v0[6].i64[1] + 16))(v0[7].i64[0], v45 + *(v0[6].i64[1] + 72) * v10, v0[6].i64[0]);
          v0[2].i64[1] = sub_2227374AC();
          v51 = sub_222739AFC();
          v13 = v12;
          v14 = *(v11 + 16);

          if (v14 && (v15 = sub_222688818(v47, v2), (v16 & 1) != 0))
          {
            v17 = (*(v0[5].i64[1] + 56) + 16 * v15);
            v49 = v17[1];
            v50 = *v17;
          }

          else
          {
            v49 = 0;
            v50 = 0;
          }

          v0[3].i64[0] = sub_22273749C();
          v18 = v1;
          v19 = sub_222739AFC();
          v48 = v20;
          sub_2226A5B4C(v9, 0);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v0[3].i64[1] = v5;
          v22 = sub_222688818(v51, v13);
          v23 = v5[2];
          v24 = (v7 & 1) == 0;
          v6 = v23 + v24;
          if (__OFADD__(v23, v24))
          {
            goto LABEL_40;
          }

          v25 = v7;
          if (v5[3] >= v6)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v5 = v18[2].i64[1];
              if (v7)
              {
                goto LABEL_17;
              }
            }

            else
            {
              v6 = sub_22268CDBC();
              v5 = v18[2].i64[1];
              if (v25)
              {
                goto LABEL_17;
              }
            }
          }

          else
          {
            sub_22268A364(v6, isUniquelyReferenced_nonNull_native);
            v6 = sub_222688818(v51, v13);
            if ((v25 & 1) != (v7 & 1))
            {

              return sub_222739B8C();
            }

            v22 = v6;
            v5 = v18[2].i64[1];
            if (v25)
            {
LABEL_17:

              goto LABEL_21;
            }
          }

          v5[(v22 >> 6) + 8] |= 1 << v22;
          v26 = (v5[6] + 16 * v22);
          *v26 = v51;
          v26[1] = v13;
          *(v5[7] + 8 * v22) = MEMORY[0x277D84F90];
          v27 = v5[2];
          v28 = __OFADD__(v27, 1);
          v29 = v27 + 1;
          if (v28)
          {
            goto LABEL_41;
          }

          v5[2] = v29;
LABEL_21:
          v30 = v5[7];
          v31 = *(v30 + 8 * v22);
          v32 = swift_isUniquelyReferenced_nonNull_native();
          *(v30 + 8 * v22) = v31;
          if ((v32 & 1) == 0)
          {
            v31 = sub_222695580(0, *(v31 + 2) + 1, 1, v31);
            *(v30 + 8 * v22) = v31;
          }

          v34 = *(v31 + 2);
          v33 = *(v31 + 3);
          if (v34 >= v33 >> 1)
          {
            *(v30 + 8 * v22) = sub_222695580((v33 > 1), v34 + 1, 1, v31);
          }

          ++v10;
          v6 = (*(v0[6].i64[1] + 8))(v0[7].i64[0], v0[6].i64[0]);
          v35 = *(v30 + 8 * v22);
          *(v35 + 16) = v34 + 1;
          v36 = (v35 + 48 * v34);
          v3 = v43;
          v2 = v44;
          v36[4] = v47;
          v36[5] = v44;
          v36[6] = v50;
          v36[7] = v49;
          v36[8] = v19;
          v36[9] = v48;
          v9 = sub_2226A4310;
          v1 = v18;
          if (v46 == v10)
          {

            v52 = vdupq_n_s64(v5);
            goto LABEL_32;
          }
        }
      }

      v52 = v0[9];
LABEL_32:
    }

    else
    {
      v52 = v0[9];
    }

    v0[9] = v52;
    v41 = sub_2226A5AE8();
    v42 = swift_task_alloc();
    v0[10].i64[0] = v42;
    *v42 = v0;
    v42[1] = sub_2226A33FC;
    v7 = v0[7].i64[1];
    v6 = v1;
    v8 = v41;

    return MEMORY[0x282200308](v6, v7, v8);
  }

  else
  {
    v37 = v0[9].i64[1];
    v38 = v0[4].i64[0];
    (*(v0[8].i64[0] + 8))(v0[8].i64[1], v0[7].i64[1]);
    *v38 = v37;

    v39 = v0->i64[1];

    return v39();
  }
}

void sub_2226A3A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a2;
  v47 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  MEMORY[0x28223BE20](v6 - 8);
  v48 = &v45 - v7;
  v8 = *(a3 + 16);
  if (!v8)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_81:
    v41 = v11;
    v42 = sub_22273946C();
    v43 = v48;
    (*(*(v42 - 8) + 56))(v48, 1, 1, v42);
    v44 = swift_allocObject();
    v44[2] = 0;
    v44[3] = 0;
    v44[4] = v47;
    v44[5] = v49;
    v44[6] = v41;

    sub_2226A40F8(v43, &unk_222742E08, v44);
    sub_222660468(v43, &unk_27D013050, &qword_222741370);
    return;
  }

  v9 = 0;
  v10 = a3 + 32;
  v11 = MEMORY[0x277D84F90];
  while (v9 < v8)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_83;
    }

    v13 = (v10 + 16 * v9);
    v14 = *v13;
    v15 = v13[1];
    ++v9;
    v16 = HIBYTE(v15) & 0xF;
    v17 = v14 & 0xFFFFFFFFFFFFLL;
    if ((v15 & 0x2000000000000000) != 0)
    {
      v18 = HIBYTE(v15) & 0xF;
    }

    else
    {
      v18 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      if ((v15 & 0x1000000000000000) != 0)
      {
        v34 = v11;

        v21 = sub_2226B4BD0(v14, v15, 10);
        v46 = v35;

        v11 = v34;
        if (v46)
        {
          goto LABEL_69;
        }

        goto LABEL_72;
      }

      if ((v15 & 0x2000000000000000) != 0)
      {
        v50[0] = v14;
        v50[1] = v15 & 0xFFFFFFFFFFFFFFLL;
        if (v14 == 43)
        {
          if (!v16)
          {
            goto LABEL_87;
          }

          if (--v16)
          {
            v21 = 0;
            v29 = v50 + 1;
            while (1)
            {
              v30 = *v29 - 48;
              if (v30 > 9)
              {
                break;
              }

              if (!is_mul_ok(v21, 0xAuLL))
              {
                break;
              }

              v24 = __CFADD__(10 * v21, v30);
              v21 = 10 * v21 + v30;
              if (v24)
              {
                break;
              }

              ++v29;
              if (!--v16)
              {
                goto LABEL_68;
              }
            }
          }
        }

        else if (v14 == 45)
        {
          if (!v16)
          {
            goto LABEL_86;
          }

          if (--v16)
          {
            v21 = 0;
            v25 = v50 + 1;
            while (1)
            {
              v26 = *v25 - 48;
              if (v26 > 9)
              {
                break;
              }

              if (!is_mul_ok(v21, 0xAuLL))
              {
                break;
              }

              v24 = 10 * v21 >= v26;
              v21 = 10 * v21 - v26;
              if (!v24)
              {
                break;
              }

              ++v25;
              if (!--v16)
              {
                goto LABEL_68;
              }
            }
          }
        }

        else if (v16)
        {
          v21 = 0;
          v32 = v50;
          while (1)
          {
            v33 = *v32 - 48;
            if (v33 > 9)
            {
              break;
            }

            if (!is_mul_ok(v21, 0xAuLL))
            {
              break;
            }

            v24 = __CFADD__(10 * v21, v33);
            v21 = 10 * v21 + v33;
            if (v24)
            {
              break;
            }

            ++v32;
            if (!--v16)
            {
              goto LABEL_68;
            }
          }
        }
      }

      else
      {
        if ((v14 & 0x1000000000000000) != 0)
        {
          v19 = ((v15 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v40 = v11;
          v19 = sub_22273993C();
          v11 = v40;
        }

        v20 = *v19;
        if (v20 == 43)
        {
          if (v17 < 1)
          {
            goto LABEL_84;
          }

          v16 = v17 - 1;
          if (v17 != 1)
          {
            v21 = 0;
            if (!v19)
            {
              goto LABEL_59;
            }

            v27 = v19 + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                break;
              }

              if (!is_mul_ok(v21, 0xAuLL))
              {
                break;
              }

              v24 = __CFADD__(10 * v21, v28);
              v21 = 10 * v21 + v28;
              if (v24)
              {
                break;
              }

              ++v27;
              if (!--v16)
              {
                goto LABEL_68;
              }
            }
          }
        }

        else if (v20 == 45)
        {
          if (v17 < 1)
          {
            goto LABEL_85;
          }

          v16 = v17 - 1;
          if (v17 != 1)
          {
            v21 = 0;
            if (!v19)
            {
              goto LABEL_59;
            }

            v22 = v19 + 1;
            while (1)
            {
              v23 = *v22 - 48;
              if (v23 > 9)
              {
                break;
              }

              if (!is_mul_ok(v21, 0xAuLL))
              {
                break;
              }

              v24 = 10 * v21 >= v23;
              v21 = 10 * v21 - v23;
              if (!v24)
              {
                break;
              }

              ++v22;
              if (!--v16)
              {
                goto LABEL_68;
              }
            }
          }
        }

        else if (v17)
        {
          v21 = 0;
          if (!v19)
          {
LABEL_59:
            LOBYTE(v16) = 0;
            goto LABEL_68;
          }

          while (1)
          {
            v31 = *v19 - 48;
            if (v31 > 9)
            {
              break;
            }

            if (!is_mul_ok(v21, 0xAuLL))
            {
              break;
            }

            v24 = __CFADD__(10 * v21, v31);
            v21 = 10 * v21 + v31;
            if (v24)
            {
              break;
            }

            ++v19;
            if (!--v17)
            {
              goto LABEL_59;
            }
          }
        }
      }

      v21 = 0;
      LOBYTE(v16) = 1;
LABEL_68:
      v51 = v16;
      if (v16)
      {
        goto LABEL_69;
      }

LABEL_72:
      v36 = v11;
      v37 = a4;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v11 = v36;
      }

      else
      {
        v11 = sub_2226956A0(0, *(v36 + 2) + 1, 1, v36);
      }

      v39 = *(v11 + 2);
      v38 = *(v11 + 3);
      if (v39 >= v38 >> 1)
      {
        v11 = sub_2226956A0((v38 > 1), v39 + 1, 1, v11);
      }

      *(v11 + 2) = v39 + 1;
      *&v11[8 * v39 + 32] = v21;
      a4 = v37;
      if (v12 == v8)
      {
        goto LABEL_81;
      }
    }

    else
    {
LABEL_69:
      if (v12 == v8)
      {
        goto LABEL_81;
      }
    }
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
}

uint64_t sub_2226A3F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x2822009F8](sub_2226A3F28, 0, 0);
}

uint64_t sub_2226A3F28()
{
  v1 = v0[4];
  v2 = v0[2];
  *v2 = v0[3];
  v2[1] = v1;

  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_2226A3FD8;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];

  return MEMORY[0x282123798](v5, v6, v4);
}

uint64_t sub_2226A3FD8(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_2226A40D8, 0, 0);
}

uint64_t sub_2226A40F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v20 - v9;
  sub_2226A5C24(a1, v20 - v9);
  v11 = sub_22273946C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_222660468(v10, &unk_27D013050, &qword_222741370);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_2227393FC();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_22273945C();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013A40, &qword_222742DD8);
  v18 = (v15 | v13);
  if (v15 | v13)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v13;
    v21[3] = v15;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v16;
  swift_task_create();
}

void sub_2226A4320(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v41[-1] - v13;
  v15 = HIBYTE(a2) & 0xF;
  v16 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v17 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {

      v20 = sub_2226B4BD0(a1, a2, 10);
      v39 = v38;

      if (v39)
      {
        return;
      }

      goto LABEL_65;
    }

    if ((a2 & 0x2000000000000000) != 0)
    {
      v41[0] = a1;
      v41[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (a1 == 43)
      {
        if (v15)
        {
          if (--v15)
          {
            v20 = 0;
            v28 = v41 + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                break;
              }

              if (!is_mul_ok(v20, 0xAuLL))
              {
                break;
              }

              v23 = __CFADD__(10 * v20, v29);
              v20 = 10 * v20 + v29;
              if (v23)
              {
                break;
              }

              ++v28;
              if (!--v15)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return;
      }

      if (a1 != 45)
      {
        if (v15)
        {
          v20 = 0;
          v31 = v41;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            if (!is_mul_ok(v20, 0xAuLL))
            {
              break;
            }

            v23 = __CFADD__(10 * v20, v32);
            v20 = 10 * v20 + v32;
            if (v23)
            {
              break;
            }

            ++v31;
            if (!--v15)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

      if (v15)
      {
        if (--v15)
        {
          v20 = 0;
          v24 = v41 + 1;
          while (1)
          {
            v25 = *v24 - 48;
            if (v25 > 9)
            {
              break;
            }

            if (!is_mul_ok(v20, 0xAuLL))
            {
              break;
            }

            v23 = 10 * v20 >= v25;
            v20 = 10 * v20 - v25;
            if (!v23)
            {
              break;
            }

            ++v24;
            if (!--v15)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        v18 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v18 = sub_22273993C();
      }

      v19 = *v18;
      if (v19 == 43)
      {
        if (v16 >= 1)
        {
          v15 = v16 - 1;
          if (v16 != 1)
          {
            v20 = 0;
            if (v18)
            {
              v26 = v18 + 1;
              while (1)
              {
                v27 = *v26 - 48;
                if (v27 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v20, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v23 = __CFADD__(10 * v20, v27);
                v20 = 10 * v20 + v27;
                if (v23)
                {
                  goto LABEL_63;
                }

                ++v26;
                if (!--v15)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_55;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v19 != 45)
      {
        if (v16)
        {
          v20 = 0;
          if (v18)
          {
            while (1)
            {
              v30 = *v18 - 48;
              if (v30 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v20, 0xAuLL))
              {
                goto LABEL_63;
              }

              v23 = __CFADD__(10 * v20, v30);
              v20 = 10 * v20 + v30;
              if (v23)
              {
                goto LABEL_63;
              }

              ++v18;
              if (!--v16)
              {
                goto LABEL_55;
              }
            }
          }

          goto LABEL_55;
        }

LABEL_63:
        v20 = 0;
        LOBYTE(v15) = 1;
LABEL_64:
        v42 = v15;
        if (v15)
        {
          return;
        }

LABEL_65:

        v33 = sub_2226B41FC(a3, a4);
        if ((v34 & 1) == 0)
        {
          v35 = v33;
          v36 = sub_22273946C();
          (*(*(v36 - 8) + 56))(v14, 1, 1, v36);
          v37 = swift_allocObject();
          v37[2] = 0;
          v37[3] = 0;
          v37[4] = a5;
          v37[5] = a6;
          v37[6] = v20;
          v37[7] = v35;

          sub_222697DAC(0, 0, v14, &unk_222742DB8, v37);
        }

        return;
      }

      if (v16 >= 1)
      {
        v15 = v16 - 1;
        if (v16 != 1)
        {
          v20 = 0;
          if (v18)
          {
            v21 = v18 + 1;
            while (1)
            {
              v22 = *v21 - 48;
              if (v22 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v20, 0xAuLL))
              {
                goto LABEL_63;
              }

              v23 = 10 * v20 >= v22;
              v20 = 10 * v20 - v22;
              if (!v23)
              {
                goto LABEL_63;
              }

              ++v21;
              if (!--v15)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_55:
          LOBYTE(v15) = 0;
          goto LABEL_64;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }
}

uint64_t sub_2226A4734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[24] = a6;
  v7[25] = a7;
  v7[22] = a4;
  v7[23] = a5;
  sub_2227381BC();
  v7[26] = swift_task_alloc();
  v12 = swift_task_alloc();
  v7[27] = v12;
  *v12 = v7;
  v12[1] = sub_2226A4824;

  return MEMORY[0x2821237A0](a4, a5, a6, a7, 0);
}

uint64_t sub_2226A4824()
{
  v2 = *v1;
  *(v2 + 224) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2226A4960, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2226A4960()
{
  if (qword_27D0129A0 != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = v0[23];
  v3 = v0[24];
  v10 = v0[22];
  v11 = v0[28];
  v12 = sub_222738F6C();
  __swift_project_value_buffer(v12, qword_27D019C68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v4 = MEMORY[0x277D84D38];
  v0[5] = MEMORY[0x277D84D38];
  v0[2] = v3;
  sub_22273816C();
  sub_222660468((v0 + 2), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  v0[9] = v4;
  v0[6] = v1;
  sub_22273816C();
  sub_222660468((v0 + 6), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  v0[13] = MEMORY[0x277D837D0];
  v0[10] = v10;
  v0[11] = v2;

  sub_22273816C();
  sub_222660468((v0 + 10), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  swift_getErrorValue();
  v5 = v0[18];
  v6 = v0[19];
  v0[17] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v5, v6);
  sub_22273816C();
  sub_222660468((v0 + 14), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  v8 = v0[1];

  return v8();
}

unint64_t *sub_2226A4C7C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_2226A5378(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void sub_2226A4D0C(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v4) = a2;
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = *a3;

  v10 = sub_222688818(v6, v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_222689324(v15, v4 & 1);
    v10 = sub_222688818(v6, v5);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_222739B8C();
    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_22268C598();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013130, &qword_2227416B0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v6;
  v22[1] = v5;
  v23 = (v21[7] + 16 * v10);
  *v23 = v7;
  v23[1] = v8;
  v24 = v21[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_22273991C();
    MEMORY[0x223DBE5D0](0xD00000000000001BLL, 0x8000000222749840);
    sub_2227399DC();
    MEMORY[0x223DBE5D0](39, 0xE100000000000000);
    sub_222739A1C();
    __break(1u);
    return;
  }

  v21[2] = v25;
  if (v39 != 1)
  {
    v4 = a1 + 11;
    v7 = 1;
    while (v7 < a1[2])
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v26 = *(v4 - 1);
      v8 = *v4;
      v27 = *a3;

      v28 = sub_222688818(v6, v5);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        sub_222689324(v32, 1);
        v28 = sub_222688818(v6, v5);
        if ((v16 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v35 = (v34[6] + 16 * v28);
      *v35 = v6;
      v35[1] = v5;
      v36 = (v34[7] + 16 * v28);
      *v36 = v26;
      v36[1] = v8;
      v37 = v34[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v34[2] = v38;
      v4 += 4;
      if (v39 == v7)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

unint64_t *sub_2226A50BC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v31 = a1;
  v33[2] = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v27 = v6;
    v32 = v3;
    v29 = &v26;
    MEMORY[0x28223BE20](a1);
    v28 = &v26 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v28, v7);
    v30 = 0;
    v8 = 0;
    v6 = v4 + 56;
    v9 = 1 << *(v4 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v16 = v13 | (v8 << 6);
      v17 = v4;
      v18 = (*(v4 + 48) + 16 * v16);
      v19 = v18[1];
      v33[0] = *v18;
      v33[1] = v19;

      v3 = v32;
      v20 = v31(v33);
      v32 = v3;
      if (v3)
      {

        return swift_willThrow();
      }

      v21 = v20;

      v4 = v17;
      if (v21)
      {
        *&v28[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        if (__OFADD__(v30++, 1))
        {
          __break(1u);
          return sub_2226942A4(v28, v27, v30, v4);
        }
      }
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        return sub_2226942A4(v28, v27, v30, v4);
      }

      v15 = *(v6 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v24 = swift_slowAlloc();
  v25 = sub_2226A4C7C(v24, v6, v4, v31);

  result = MEMORY[0x223DBFCA0](v24, -1, -1);
  if (!v3)
  {
    return v25;
  }

  return result;
}

unint64_t *sub_2226A5378(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v25 = a3;
  v22 = 0;
  v21 = result;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v25 + 48) + 16 * v14);
    v16 = v15[1];
    v24[0] = *v15;
    v24[1] = v16;

    v17 = a4(v24);

    if (v4)
    {
      return result;
    }

    if (v17)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        v19 = v25;

        return sub_2226942A4(v21, a2, v22, v19);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2226A5528(uint64_t a1, int *a2)
{
  *(v2 + 40) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  *v3 = v2;
  v3[1] = sub_2226A561C;

  return v5(v2 + 16);
}

uint64_t sub_2226A561C()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *v0;

  v4 = *(v1 + 32);
  *v2 = *(v1 + 16);
  *(v2 + 16) = v4;
  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_2226A5770(uint64_t a1)
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
  v10[1] = sub_222660228;

  return sub_2226A4734(a1, v4, v5, v6, v7, v9, v8);
}

void *sub_2226A5864(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A60, &qword_222742E38);
  result = sub_222739A3C();
  v5 = 0;
  v26 = a1;
  v8 = *(a1 + 64);
  v7 = a1 + 64;
  v6 = v8;
  v9 = 1 << *(v7 - 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v25 = result + 8;
  v28 = result;
  if ((v10 & v6) != 0)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v16 = v13 | (v5 << 6);
      v17 = (*(v26 + 48) + 16 * v16);
      v18 = *v17;
      v19 = v17[1];
      v30 = *(*(v26 + 56) + 8 * v16);

      sub_2226A2F00(&v30, a2, &v29);

      if (v2)
      {
        break;
      }

      *(v25 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v28;
      v20 = v29;
      v21 = (v28[6] + 16 * v16);
      *v21 = v18;
      v21[1] = v19;
      *(v28[7] + 8 * v16) = v20;
      v22 = v28[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_17;
      }

      v28[2] = v24;
      if (!v11)
      {
        goto LABEL_5;
      }
    }

    return v28;
  }

  else
  {
LABEL_5:
    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v12)
      {
        return result;
      }

      v15 = *(v7 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_2226A5A28(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22266BE24;

  return sub_2226A30EC(a1, a2, v7, v6);
}

uint64_t sub_2226A5ADC(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

unint64_t sub_2226A5AE8()
{
  result = qword_27D013A58;
  if (!qword_27D013A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D013A50, &qword_222742DF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013A58);
  }

  return result;
}

uint64_t sub_2226A5B4C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2226A5B5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22266BE24;

  return sub_2226A3F04(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2226A5C24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2226A5C94(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222660228;

  return sub_2226A5528(a1, v4);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_2226A5D68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_2226A5DB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2226A5E14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  while (1)
  {
    v4 = sub_22273919C();
    v6 = v5;
    if (v4 == sub_22273919C() && v6 == v7)
    {
      break;
    }

    v9 = sub_222739B4C();

    if (v9)
    {
      return v3;
    }

    if (v2 == ++v3)
    {
      return 0;
    }
  }

  return v3;
}

uint64_t sub_2226A5EEC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2226A5500(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 5, 8 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_2226A5F74(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2226A5514(v3);
    v3 = result;
  }

  v5 = *(v3 + 2);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[16 * a1];
    v8 = *(v7 + 4);
    memmove(v7 + 32, v7 + 48, 16 * (v5 - 1 - a1));
    *(v3 + 2) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

_BYTE *sub_2226A6000(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, int64_t a5, uint64_t a6, int64_t a7)
{
  v8 = v7;
  v12 = sub_2227381BC();
  MEMORY[0x28223BE20](v12 - 8);
  v37 = a2;
  v38 = a1;
  v36 = sub_2226A64EC(a1, a2);
  v13 = 1 << a3[32];
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a3 + 7);
  v16 = (v13 + 63) >> 6;

  v17 = 0;
  v18 = 0x2784B0000uLL;
  if (v15)
  {
    while (1)
    {
      v19 = v17;
LABEL_9:
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      [objc_opt_self() requestDidBeginWithTag_];
      if (!v15)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_23:
      swift_once();
      goto LABEL_21;
    }

    if (v19 >= v16)
    {
      break;
    }

    v15 = *&a3[8 * v19 + 56];
    ++v17;
    if (v15)
    {
      v17 = v19;
      goto LABEL_9;
    }
  }

  v21 = v8 + *(type metadata accessor for AMSMediaFetcher(0) + 28);
  v22 = *v21;
  if (*v21)
  {
    v23 = *(v21 + 1);

    v24 = sub_222738ADC();
    v25 = v36;
    v16 = a5;
    v26 = v22(v36, a4, a5, a6, a7, v24);
    sub_2226A5B4C(v22, v23);
  }

  else
  {
    v27 = sub_222738ADC();
    v28 = objc_allocWithZone(MEMORY[0x277CEE570]);
    v29 = sub_22273916C();
    v30 = sub_22273916C();
    v25 = v36;
    v26 = [v28 initWithType:v36 clientIdentifier:v29 clientVersion:v30 bag:v27];

    v16 = a5;
  }

  swift_unknownObjectRelease();
  v31 = *v8;
  a3 = v26;
  [a3 setClientInfo_];
  if (sub_2226A9470(v25))
  {
    type metadata accessor for AMSMediaTaskPlatform(0);
    v32 = sub_22273936C();
  }

  else
  {
    v32 = 0;
  }

  [a3 setAdditionalPlatforms_];

  if (sub_2226A6874(v37, v38))
  {
    v33 = sub_2227390FC();
  }

  else
  {
    v33 = 0;
  }

  v18 = MEMORY[0x277D837D0];
  [a3 setAdditionalQueryParams_];

  if (qword_281312E28 != -1)
  {
    goto LABEL_23;
  }

LABEL_21:
  v34 = sub_222738F6C();
  __swift_project_value_buffer(v34, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v45 = v18;
  v43 = a4;
  v44 = v16;

  sub_22273816C();
  sub_222660468(&v43, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  v45 = v18;
  v43 = a6;
  v44 = a7;

  sub_22273816C();
  sub_222660468(&v43, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  return a3;
}

uint64_t sub_2226A64EC(uint64_t a1, uint64_t a2)
{
  v2 = sub_22273919C();
  v4 = v3;
  if (v2 == sub_22273919C() && v4 == v5)
  {
    v8 = 6;
LABEL_22:

    return v8;
  }

  v7 = sub_222739B4C();

  if (v7)
  {
    return 6;
  }

  v9 = sub_22273919C();
  v11 = v10;
  if (v9 == sub_22273919C() && v11 == v12)
  {
    goto LABEL_21;
  }

  v14 = sub_222739B4C();

  if (v14)
  {
    return 0;
  }

  v15 = sub_22273919C();
  v17 = v16;
  if (v15 == sub_22273919C() && v17 == v18)
  {
    goto LABEL_16;
  }

  v19 = sub_222739B4C();

  if (v19)
  {
    return 7;
  }

  v20 = sub_22273919C();
  v22 = v21;
  if (v20 == sub_22273919C() && v22 == v23)
  {
LABEL_21:
    v8 = 0;
    goto LABEL_22;
  }

  v25 = sub_222739B4C();

  if (v25)
  {
    return 0;
  }

  v26 = sub_22273919C();
  v28 = v27;
  if (v26 == sub_22273919C() && v28 == v29)
  {
LABEL_16:
    v8 = 7;
    goto LABEL_22;
  }

  v30 = sub_222739B4C();

  if (v30)
  {
    return 7;
  }

  v31 = sub_22273919C();
  v33 = v32;
  if (v31 == sub_22273919C() && v33 == v34)
  {
    v8 = 1;
    goto LABEL_22;
  }

  v35 = sub_222739B4C();

  if (v35)
  {
    return 1;
  }

  v36 = sub_22273919C();
  v38 = v37;
  if (v36 == sub_22273919C() && v38 == v39)
  {
    v8 = 2;
    goto LABEL_22;
  }

  v40 = sub_222739B4C();

  if (v40)
  {
    return 2;
  }

  result = sub_222739A1C();
  __break(1u);
  return result;
}

unint64_t sub_2226A6874(uint64_t a1, uint64_t a2)
{
  v2 = sub_2226F492C(a1);
  if (!v2)
  {
    v2 = sub_222732D1C(MEMORY[0x277D84F90]);
  }

  v3 = v2;
  v4 = sub_22273919C();
  v6 = v5;
  if (v4 == sub_22273919C() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_222739B4C();

    if ((v9 & 1) == 0)
    {
      return v3;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22268BB0C(0xD000000000000015, 0x80000002227498F0, 0x646E65747865, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_22268BB0C(0xD000000000000012, 0x8000000222749910, 1752459639, 0xE400000000000000, v11);
  return v3;
}

uint64_t sub_2226A69BC(uint64_t a1, uint64_t a2)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return MEMORY[0x2822009F8](sub_2226A69DC, 0, 0);
}

uint64_t sub_2226A69DC()
{
  v2 = v0[13];
  v1 = v0[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A70, &qword_222742EA8);
  v3 = [v2 perform];
  v0[15] = sub_222738F0C();
  *(swift_allocObject() + 16) = v1;
  v4 = sub_22273872C();
  v5 = MEMORY[0x277D21FB0];
  v0[5] = v4;
  v0[6] = v5;
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);

  sub_22273871C();
  sub_222738E8C();

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v0[10] = v4;
  v0[11] = v5;
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  sub_22273871C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0145C0, &qword_222742EB0);
  v0[16] = sub_222738E6C();
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A80, &qword_222742EB8);
  v7 = sub_22262BED4(&qword_281312E58, &unk_27D013A80, &qword_222742EB8, MEMORY[0x277D224B8]);
  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = sub_2226A6C10;

  return MEMORY[0x282180360](v0 + 12, v6, v7);
}

uint64_t sub_2226A6C10()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_2226A6DB8;
  }

  else
  {
    *(v2 + 152) = *(v2 + 96);
    v3 = sub_2226A6D50;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2226A6D50()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 152);

  return v1(v2);
}

uint64_t sub_2226A6DB8()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_2226A6E1C(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_9:
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = [objc_opt_self() requestDidEndWithTag_];
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }
}

void sub_2226A6F20(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 responseDictionary];
  if (v3)
  {
    v4 = v3;
    v5 = sub_22273910C();
  }

  else
  {
    v5 = sub_222732F68(MEMORY[0x277D84F90]);
  }

  *a2 = v5;
}

uint64_t sub_2226A6FB0(uint64_t a1)
{
  *(v2 + 2584) = v1;
  *(v2 + 2576) = a1;
  return MEMORY[0x2822009F8](sub_2226A6FD4, 0, 0);
}

uint64_t sub_2226A6FD4()
{
  v1 = v0[322];
  if (v1 < 3)
  {
    v2 = v0[323];
    v3 = swift_task_alloc();
    v0[324] = v3;
    *(v3 + 16) = v2;
    swift_asyncLet_begin();
    v4 = swift_task_alloc();
    v0[325] = v4;
    *(v4 + 16) = v2;
    swift_asyncLet_begin();
    v5 = swift_task_alloc();
    v0[326] = v5;
    *(v5 + 16) = v2;
    swift_asyncLet_begin();
    v0[327] = sub_222732D1C(MEMORY[0x277D84F90]);
    v6 = sub_2226A71CC;
    v7 = v0 + 82;
    v8 = (v0 + 2681);
    v9 = v0 + 2;
LABEL_5:

    return MEMORY[0x282200928](v7, v8, v6, v9);
  }

  if (v1 == 7)
  {
    v10 = v0[323];
    v11 = swift_task_alloc();
    v0[332] = v11;
    *(v11 + 16) = v10;
    swift_asyncLet_begin();
    v0[333] = sub_222732D1C(MEMORY[0x277D84F90]);
    v6 = sub_2226A78A8;
    v7 = v0 + 2;
    v8 = v0 + 335;
    v9 = v0 + 82;
    goto LABEL_5;
  }

  v12 = sub_222732D1C(MEMORY[0x277D84F90]);
  v13 = v0[1];

  return v13(v12);
}

uint64_t sub_2226A71E8()
{
  if (*(v0 + 2681))
  {
    v1 = sub_222694EC0(0, 1, 1, MEMORY[0x277D84F90]);
    v3 = *(v1 + 2);
    v2 = *(v1 + 3);
    if (v3 >= v2 >> 1)
    {
      v1 = sub_222694EC0((v2 > 1), v3 + 1, 1, v1);
    }

    v4 = *(v0 + 2616);
    *(v1 + 2) = v3 + 1;
    v5 = &v1[16 * v3];
    strcpy(v5 + 32, "customArtwork");
    *(v5 + 23) = -4864;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_22268BB0C(0x6B726F77747261, 0xE700000000000000, 0xD00000000000001ELL, 0x80000002227499D0, isUniquelyReferenced_nonNull_native);
    v7 = v4;
  }

  else
  {
    v7 = *(v0 + 2616);
    v1 = MEMORY[0x277D84F90];
  }

  *(v0 + 2632) = v7;
  *(v0 + 2624) = v1;

  return MEMORY[0x282200928](v0 + 1296, v0 + 2682, sub_2226A7340, v0 + 16);
}

uint64_t sub_2226A7340()
{
  if (*(v0 + 2682))
  {
    v1 = sub_2226A7390;
    v2 = v0 + 656;
    v3 = v0 + 2681;
  }

  else
  {
    *(v0 + 2640) = *(v0 + 2624);
    v1 = sub_2226A7510;
    v2 = v0 + 1936;
    v3 = v0 + 2683;
  }

  return MEMORY[0x282200928](v2, v3, v1, v0 + 16);
}

uint64_t sub_2226A73AC()
{
  v1 = *(v0 + 2681);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 2624);
  if (v1 == 1)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v3 = sub_222694EC0(0, *(v3 + 2) + 1, 1, v3);
    }

    v5 = *(v3 + 2);
    v4 = *(v3 + 3);
    v6 = v5 + 1;
    if (v5 >= v4 >> 1)
    {
      v3 = sub_222694EC0((v4 > 1), v5 + 1, 1, v3);
    }

    v7 = 0x80000002227499B0;
    v8 = 0xD000000000000011;
  }

  else
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v3 = sub_222694EC0(0, *(v3 + 2) + 1, 1, v3);
    }

    v7 = 0xEB000000006B726FLL;
    v5 = *(v3 + 2);
    v9 = *(v3 + 3);
    v6 = v5 + 1;
    if (v5 >= v9 >> 1)
    {
      v3 = sub_222694EC0((v9 > 1), v5 + 1, 1, v3);
    }

    v8 = 0x777472416E6F6369;
  }

  *(v3 + 2) = v6;
  v10 = &v3[16 * v5];
  *(v10 + 4) = v8;
  *(v10 + 5) = v7;
  *(v0 + 2640) = v3;

  return MEMORY[0x282200928](v0 + 1936, v0 + 2683, sub_2226A7510, v0 + 16);
}

uint64_t sub_2226A752C()
{
  v9 = v0;
  v1 = *(v0 + 2632);
  if (*(v0 + 2683) == 1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = v1;
    sub_22268BB0C(0x6E69746152656761, 0xE900000000000067, 0x646E65747865, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  }

  if (*(*(v0 + 2640) + 16))
  {
    v8 = *(v0 + 2640);

    sub_2226A8938(&v8);

    *(v0 + 16) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AA8, &qword_222742EE0);
    sub_22262BED4(&qword_281312DD0, &qword_27D013AA8, &qword_222742EE0, MEMORY[0x277D83958]);
    v3 = sub_22273913C();
    v5 = v4;

    v6 = swift_isUniquelyReferenced_nonNull_native();
    v8 = v1;
    sub_22268BB0C(v3, v5, 0x615B646E65747865, 0xEC0000005D737070, v6);
    v1 = v8;
  }

  else
  {
  }

  *(v0 + 2648) = v1;

  return MEMORY[0x282200920](v0 + 1936, v0 + 2683, sub_2226A7718, v0 + 16);
}

uint64_t sub_2226A7734()
{

  return MEMORY[0x282200920](v0 + 1296, v0 + 2682, sub_2226A77A0, v0 + 16);
}

uint64_t sub_2226A77BC()
{

  return MEMORY[0x282200920](v0 + 656, v0 + 2681, sub_2226A7828, v0 + 16);
}

uint64_t sub_2226A7844()
{

  v1 = *(v0 + 2648);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2226A78C4()
{
  v13 = v0;
  if (*(v0 + 2680) == 1)
  {
    v1 = sub_222694EC0(0, 1, 1, MEMORY[0x277D84F90]);
    v3 = *(v1 + 2);
    v2 = *(v1 + 3);
    if (v3 >= v2 >> 1)
    {
      v1 = sub_222694EC0((v2 > 1), v3 + 1, 1, v1);
    }

    *(v1 + 2) = v3 + 1;
    v4 = &v1[16 * v3];
    *(v4 + 4) = 0x777472416E6F6369;
    *(v4 + 5) = 0xEB000000006B726FLL;
    goto LABEL_6;
  }

  v1 = MEMORY[0x277D84F90];
  if (*(MEMORY[0x277D84F90] + 16))
  {
LABEL_6:
    v12 = v1;

    sub_2226A8938(&v12);
    v5 = *(v0 + 2664);

    *(v0 + 656) = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AA8, &qword_222742EE0);
    sub_22262BED4(&qword_281312DD0, &qword_27D013AA8, &qword_222742EE0, MEMORY[0x277D83958]);
    v6 = sub_22273913C();
    v8 = v7;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = v5;
    sub_22268BB0C(v6, v8, 0x615B646E65747865, 0xEC0000005D737070, isUniquelyReferenced_nonNull_native);
    v10 = v12;
    goto LABEL_8;
  }

  v10 = *(v0 + 2664);
LABEL_8:
  *(v0 + 2672) = v10;

  return MEMORY[0x282200920](v0 + 16, v0 + 2680, sub_2226A7AF8, v0 + 656);
}

uint64_t sub_2226A7B14()
{

  v1 = *(v0 + 2672);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2226A7B78(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0136F8, &qword_222742670);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2226A7C44, 0, 0);
}

uint64_t sub_2226A7C44()
{
  type metadata accessor for AMSMediaFetcher(0);
  v1 = sub_22273916C();
  sub_222738B0C();

  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_2226A7D48;
  v3 = *(v0 + 32);

  return MEMORY[0x282180268](v0 + 64, sub_2226A9B54, 0, v3);
}

uint64_t sub_2226A7D48()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_2226A9B58, 0, 0);
}

uint64_t sub_2226A7EA0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0136F8, &qword_222742670);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2226A7F6C, 0, 0);
}

uint64_t sub_2226A7F6C()
{
  type metadata accessor for AMSMediaFetcher(0);
  v1 = sub_22273916C();
  sub_222738B0C();

  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_2226A7D48;
  v3 = *(v0 + 32);

  return MEMORY[0x282180268](v0 + 64, sub_2226A9B54, 0, v3);
}

uint64_t sub_2226A8070(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0136F8, &qword_222742670);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2226A813C, 0, 0);
}

uint64_t sub_2226A813C()
{
  type metadata accessor for AMSMediaFetcher(0);
  v1 = sub_22273916C();
  sub_222738B0C();

  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_2226A8240;
  v3 = *(v0 + 32);

  return MEMORY[0x282180268](v0 + 64, sub_2226A9B54, 0, v3);
}

uint64_t sub_2226A8240()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_2226A8398, 0, 0);
}

uint64_t sub_2226A8398()
{
  **(v0 + 16) = *(v0 + 64);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2226A8408(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0136F8, &qword_222742670);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2226A84D4, 0, 0);
}

uint64_t sub_2226A84D4()
{
  type metadata accessor for AMSMediaFetcher(0);
  v1 = sub_22273916C();
  sub_222738B0C();

  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_2226A7D48;
  v3 = *(v0 + 32);

  return MEMORY[0x282180268](v0 + 64, sub_2226A9B54, 0, v3);
}

uint64_t sub_2226A85D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A90, &unk_222741DC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0136F8, &qword_222742670);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27[-v7];
  v9 = sub_22273919C();
  v11 = v10;
  if (v9 == sub_22273919C() && v11 == v12)
  {
  }

  else
  {
    v14 = sub_222739B4C();

    if ((v14 & 1) == 0)
    {
      v15 = sub_22273919C();
      v17 = v16;
      if (v15 == sub_22273919C() && v17 == v18)
      {
      }

      else
      {
        v20 = sub_222739B4C();

        if ((v20 & 1) == 0)
        {
          return 0;
        }
      }

      type metadata accessor for AMSMediaFetcher(0);
      v26 = sub_22273916C();
      sub_222738B0C();

      sub_222738B3C();
      (*(v6 + 8))(v8, v5);
      if (v27[15] != 1)
      {
        return 0;
      }
    }
  }

  v21 = type metadata accessor for AMSMediaFetcher(0);
  __swift_project_boxed_opaque_existential_1((v1 + *(v21 + 24)), *(v1 + *(v21 + 24) + 24));
  sub_2227384EC();
  v22 = sub_222738CFC();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v4, 1, v22) == 1)
  {
    sub_222660468(v4, &unk_27D013A90, &unk_222741DC0);
    return 0;
  }

  v25 = MEMORY[0x223DBDFF0]();
  (*(v23 + 8))(v4, v22);
  return v25;
}

uint64_t sub_2226A8938(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2226A9410(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_2226A89A4(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2226A89A4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_222739AEC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_22273939C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2226A8B6C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2226A8A9C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2226A8A9C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_222739B4C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2226A8B6C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_2226A93FC(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_2226A9148((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_222739B4C();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_222739B4C();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2226958CC(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_2226958CC((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
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
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_2226A9148((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2226A93FC(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_2226A9370(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_222739B4C(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_2226A9148(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_222739B4C() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_222739B4C() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_2226A9370(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2226A93FC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t type metadata accessor for AMSMediaFetcher(uint64_t a1)
{
  result = qword_281313AE8;
  if (!qword_281313AE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2226A9470(uint64_t a1)
{
  if (a1 == 7)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AA0, &qword_222742EC0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_222742E90;
  v3 = *MEMORY[0x277CEE290];
  v4 = *MEMORY[0x277CEE298];
  v5 = MEMORY[0x277CEE280];
  *(v2 + 32) = *MEMORY[0x277CEE290];
  *(v2 + 40) = v4;
  v6 = *v5;
  v7 = *MEMORY[0x277CEE270];
  *(v2 + 48) = *v5;
  *(v2 + 56) = v7;
  v8 = *MEMORY[0x277CEE278];
  v9 = *MEMORY[0x277CEE288];
  *(v2 + 64) = *MEMORY[0x277CEE278];
  *(v2 + 72) = v9;
  v24 = v2;
  v10 = objc_opt_self();
  v11 = v3;
  v12 = v4;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  if ([v10 isPad])
  {
    v17 = v11;
  }

  else
  {
    v17 = v12;
  }

  v18 = v17;
  v19 = v2;
  v20 = sub_2226A5E14(v18, v2);
  v22 = v21;

  if (v22)
  {
    if (qword_281312E28 != -1)
    {
      swift_once();
    }

    v23 = sub_222738F6C();
    __swift_project_value_buffer(v23, qword_281315AC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    sub_2227381FC();
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_22273813C();
    sub_222738C6C();

    return v19;
  }

  else
  {

    return v24;
  }
}

uint64_t sub_2226A96E4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22266BE24;

  return sub_2226A7B78(a1, v4);
}

uint64_t sub_2226A9784(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22266BE24;

  return sub_2226A7EA0(a1, v4);
}

uint64_t sub_2226A9824(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222660228;

  return sub_2226A8070(a1, v4);
}

uint64_t sub_2226A98C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22266BE24;

  return sub_2226A8408(a1, v4);
}

void sub_2226A998C(uint64_t a1)
{
  sub_2226A9A40();
  if (v1 <= 0x3F)
  {
    sub_222738BBC();
    if (v2 <= 0x3F)
    {
      sub_2226A9A8C();
      if (v3 <= 0x3F)
      {
        sub_2226A9AF0(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_2226A9A40()
{
  result = qword_281312D58;
  if (!qword_281312D58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281312D58);
  }

  return result;
}

unint64_t sub_2226A9A8C()
{
  result = qword_281312F70;
  if (!qword_281312F70)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281312F70);
  }

  return result;
}

void sub_2226A9AF0(uint64_t a1)
{
  if (!qword_281312B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D013AB0, &unk_222742F30);
    v1 = sub_22273971C();
    if (!v2)
    {
      atomic_store(v1, &qword_281312B28);
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

uint64_t sub_2226A9B68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2226A9BB0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_2226A9C00()
{
  sub_222739C5C();
  sub_22273924C();
  sub_22273924C();
  return sub_222739C8C();
}

uint64_t sub_2226A9C68(uint64_t a1)
{
  sub_22273924C();

  return sub_22273924C();
}

uint64_t sub_2226A9CB8()
{
  sub_222739C5C();
  sub_22273924C();
  sub_22273924C();
  return sub_222739C8C();
}

uint64_t sub_2226A9D1C(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_222739B4C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_222739B4C();
    }
  }

  return result;
}

unint64_t sub_2226A9DC4()
{
  result = qword_27D013AB8;
  if (!qword_27D013AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013AB8);
  }

  return result;
}

unint64_t sub_2226A9E18(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a1 || (v8 = a1, v9 = sub_2226B270C(a2, a3), v11 = v10, v8, !v11))
  {
    v9 = 0xD00000000000001ELL;

    v13 = sub_22273919C();
    v15 = v14;
    if (v13 != sub_22273919C() || v15 != v16)
    {
      v18 = sub_222739B4C();

      if (v18)
      {
        goto LABEL_18;
      }

      v19 = sub_22273919C();
      v21 = v20;
      if (v19 != sub_22273919C() || v21 != v22)
      {
        v24 = sub_222739B4C();

        if ((v24 & 1) == 0)
        {
          v25 = sub_22273919C();
          v27 = v26;
          if (v25 != sub_22273919C() || v27 != v28)
          {
            v30 = sub_222739B4C();

            if (v30)
            {
              goto LABEL_21;
            }

            v31 = sub_22273919C();
            v33 = v32;
            if (v31 != sub_22273919C() || v33 != v34)
            {
              sub_222739B4C();

              goto LABEL_21;
            }
          }

LABEL_21:

          return v9;
        }

LABEL_18:

        return 0xD000000000000014;
      }
    }

    goto LABEL_18;
  }

  v12 = v8;
  sub_2226B29BC(a2, a3);

  return v9;
}

uint64_t sub_2226AA0E0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_2227373FC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013130, &qword_2227416B0);
    v10 = swift_allocError();
    *v11 = a3;
    v12 = a3;

    return MEMORY[0x282200958](v9, v10);
  }

  else
  {
    sub_2227373DC();
    (*(v6 + 32))(*(*(v9 + 64) + 40), v8, v5);
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_2226AA250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return MEMORY[0x2822009F8](sub_2226AA274, 0, 0);
}

uint64_t sub_2226AA274()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_2226AA3B0;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AC0, &unk_222743048);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2226AA0E0;
  v0[13] = &block_descriptor_8;
  v0[14] = v5;
  [v4 installApp:v2 onPairedDevice:v1 withCompletionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2226AA3B0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {

    return MEMORY[0x2822009F8](sub_2226AA4EC, 0, 0);
  }

  else
  {
    v3 = *(v1 + 8);

    return v3();
  }
}

uint64_t sub_2226AA4EC(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

id sub_2226AA558(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v35 = a4;
  v43 = *MEMORY[0x277D85DE8];
  v7 = sub_2227373BC();
  v33 = *(v7 - 8);
  v34 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v32 = (v10 + 16);
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2226AAB50;
  *(v12 + 24) = v11;
  v41 = sub_2226AAB5C;
  v42 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = sub_222685AC8;
  v40 = &block_descriptor_9;
  v13 = _Block_copy(&aBlock);

  [a3 setBeginEventProcessingBlock_];
  _Block_release(v13);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_2226AAB50;
  *(v14 + 24) = v11;
  v41 = sub_2226AAB74;
  v42 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = sub_222685AC8;
  v40 = &block_descriptor_12;
  v15 = _Block_copy(&aBlock);

  [a3 setEndEventProcessingBlock_];
  _Block_release(v15);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_2226AAB50;
  *(v16 + 24) = v11;
  v41 = sub_2226AAB8C;
  v42 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = sub_222685AC8;
  v40 = &block_descriptor_18;
  v17 = _Block_copy(&aBlock);

  [a3 setEmitEventProcessingBlock_];
  _Block_release(v17);
  v41 = sub_2226AAC54;
  v42 = v10;
  aBlock = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = sub_2226AAC5C;
  v40 = &block_descriptor_21;
  v18 = _Block_copy(&aBlock);
  v36 = v10;

  [a3 setDeviceRebootProcessingBlock_];
  _Block_release(v18);
  sub_22273704C();
  v19 = sub_22273734C();
  v20 = v34;
  v21 = *(v33 + 8);
  v21(v9, v34);
  sub_22273702C();
  v22 = sub_22273734C();
  v21(v9, v20);
  aBlock = 0;
  LODWORD(v13) = [a3 processLogArchiveWithPath:0 startDate:v19 endDate:v22 errorOut:&aBlock];

  v23 = aBlock;
  if (!v13)
  {
    v28 = aBlock;
    sub_22273727C();

    swift_willThrow();
    goto LABEL_5;
  }

  v24 = v32;
  swift_beginAccess();
  v25 = *v24;
  if (v25)
  {
    swift_willThrow();
    v26 = v23;
    v27 = v25;
LABEL_5:

    [a3 setBeginEventProcessingBlock_];
    [a3 setEndEventProcessingBlock_];
    return [a3 setEmitEventProcessingBlock_];
  }

  v30 = v23;

  [a3 setBeginEventProcessingBlock_];
  [a3 setEndEventProcessingBlock_];
  return [a3 setEmitEventProcessingBlock_];
}

uint64_t sub_2226AAACC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, _BYTE *))
{
  v4[0] = 0;
  a3(a1, a2, v4);
  return (v4[0] ^ 1) & 1;
}

uint64_t sub_2226AABA4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(v2 + 16);
  v5 = a2();
  return v4(v5, a1) & 1;
}

uint64_t sub_2226AABE8(uint64_t a1)
{
  sub_2226AAC9C();
  v2 = swift_allocError();
  swift_beginAccess();
  v3 = *(a1 + 16);
  *(a1 + 16) = v2;

  return 0;
}

uint64_t sub_2226AAC5C(uint64_t a1)
{
  v1 = *(a1 + 32);

  LOBYTE(v1) = v1(v2);

  return v1 & 1;
}

unint64_t sub_2226AAC9C()
{
  result = qword_27D013AC8;
  if (!qword_27D013AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013AC8);
  }

  return result;
}

uint64_t sub_2226AAD28()
{
  v0 = sub_22273780C();
  v27 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2227377CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = (&v24 - v11);
  sub_2227377DC();
  v13 = *(v4 + 88);
  if (v13(v12, v3) == *MEMORY[0x277CEC030])
  {
    v24 = *(v4 + 96);
    v25 = v0;
    v24(v12, v3);
    v26 = *v12;
    v14 = swift_projectBox();
    v15 = *(v4 + 16);
    v15(v9, v14, v3);
    v15(v6, v9, v3);
    v16 = v13(v6, v3);
    if (v16 == *MEMORY[0x277CEC020] || v16 == *MEMORY[0x277CEC018] || v16 == *MEMORY[0x277CEC028])
    {
      v24(v6, v3);
      v19 = v27;
      v20 = v25;
      (*(v27 + 32))(v2, v6, v25);
      v21 = sub_2227377FC();
      (*(v19 + 8))(v2, v20);
      (*(v4 + 8))(v9, v3);

      return v21;
    }

    v23 = *(v4 + 8);
    v23(v9, v3);
    v23(v6, v3);
  }

  else
  {
    (*(v4 + 8))(v12, v3);
  }

  return 0;
}

id sub_2226AB060(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_22273793C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v8);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == *MEMORY[0x277CEC0B8])
  {
    (*(v7 + 96))(v10, v6);
    v12 = sub_22273784C();
LABEL_5:
    (*(*(v12 - 8) + 8))(v10, v12);
LABEL_6:
    v13 = [objc_opt_self() deeplinkMetadata];

    return v13;
  }

  if (v11 == *MEMORY[0x277CEC0D0])
  {
    (*(v7 + 96))(v10, v6);
    v12 = sub_22273783C();
    goto LABEL_5;
  }

  if (v11 == *MEMORY[0x277CEC0D8] || v11 == *MEMORY[0x277CEC098])
  {
LABEL_11:
    (*(v7 + 8))(v10, v6);
    goto LABEL_6;
  }

  if (v11 == *MEMORY[0x277CEC090])
  {
    (*(v7 + 96))(v10, v6);
    v12 = sub_22273782C();
    goto LABEL_5;
  }

  if (v11 != *MEMORY[0x277CEC0C0])
  {
    if (v11 == *MEMORY[0x277CEC0A8] || v11 == *MEMORY[0x277CEC0C8] || v11 == *MEMORY[0x277CEC0B0])
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  (*(v7 + 96))(v10, v6);
  v15 = [a2 titles];
  type metadata accessor for ASCOfferTitleVariant(0);
  sub_2226AB470();
  v16 = sub_22273910C();

  if (*(v16 + 16) && (sub_222694708(), (v17 & 1) != 0))
  {
  }

  else
  {

    __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    sub_2227390BC();
  }

  v20 = objc_opt_self();
  v21 = sub_22273916C();

  v22 = [v20 textMetadataWithTitle:v21 subtitle:0];

  v23 = sub_22273786C();
  (*(*(v23 - 8) + 8))(v10, v23);
  return v22;
}

unint64_t sub_2226AB470()
{
  result = qword_281312C60;
  if (!qword_281312C60)
  {
    type metadata accessor for ASCOfferTitleVariant(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281312C60);
  }

  return result;
}

id sub_2226AB4C8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v44 = a4;
  v47 = a1;
  v6 = sub_22273793C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v46 = &v42 - v11;
  MEMORY[0x28223BE20](v12);
  v43 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AD0, &qword_222743118);
  MEMORY[0x28223BE20](v14);
  v16 = &v42 - v15;
  v17 = sub_2227376CC();
  v18 = *(v17 - 8);
  *&v19 = MEMORY[0x28223BE20](v17).n128_u64[0];
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a2;
  v22 = [a2 flags] & 4;
  (*(v18 + 16))(v21, a3, v17);
  v23 = (*(v18 + 88))(v21, v17);
  if (v23 == *MEMORY[0x277CEBF80])
  {
    (*(v18 + 96))(v21, v17);
    v24 = sub_2227376AC();
    (*(*(v24 - 8) + 8))(v21, v24);
LABEL_3:
    v25 = 0;
    goto LABEL_10;
  }

  if (v23 != *MEMORY[0x277CEBF70] && v23 != *MEMORY[0x277CEBF78])
  {
    if (v23 != *MEMORY[0x277CEBF88])
    {
      (*(v18 + 8))(v21, v17);
    }

    goto LABEL_3;
  }

  (*(v18 + 8))(v21, v17);
  v25 = 1;
LABEL_10:
  v27 = *(v14 + 48);
  v28 = *(v14 + 64);
  v29 = *(v7 + 16);
  v29(v16, v47, v6);
  v16[v27] = v22 >> 2;
  v16[v28] = v25;
  v30 = (*(v7 + 88))(v16, v6);
  if (v30 != *MEMORY[0x277CEC0B8])
  {
    if (v30 == *MEMORY[0x277CEC0D0])
    {
      v9 = v46;
      v29(v46, v16, v6);
      (*(v7 + 96))(v9, v6);
      v32 = sub_22273783C();
      if (!v22)
      {
        goto LABEL_18;
      }

      goto LABEL_32;
    }

    if (v30 != *MEMORY[0x277CEC0D8])
    {
      if (v30 == *MEMORY[0x277CEC098])
      {
        goto LABEL_33;
      }

      if (v30 == *MEMORY[0x277CEC0C0])
      {
        v9 = v43;
        v29(v43, v16, v6);
        (*(v7 + 96))(v9, v6);
        v32 = sub_22273786C();
        if (!v22)
        {
          goto LABEL_18;
        }

LABEL_32:
        (*(*(v32 - 8) + 8))(v9);
        if (v25)
        {
          goto LABEL_19;
        }

        goto LABEL_33;
      }

      if (v30 == *MEMORY[0x277CEC0A8])
      {
LABEL_33:
        (*(v7 + 8))(v16, v6);
        v37 = [v45 titles];
        type metadata accessor for ASCOfferTitleVariant(0);
        sub_2226AB470();
        v38 = sub_22273910C();

        if (*(v38 + 16) && (sub_222694708(), (v39 & 1) != 0))
        {
        }

        else
        {

          __swift_project_boxed_opaque_existential_1(v44, v44[3]);
          sub_2227390BC();
        }

        v40 = objc_opt_self();
        v41 = sub_22273916C();

        v34 = [v40 textMetadataWithTitle:v41 subtitle:0];

        return v34;
      }

      if (v30 != *MEMORY[0x277CEC0C8])
      {
        if (v30 != *MEMORY[0x277CEC0B0])
        {
          goto LABEL_19;
        }

        goto LABEL_33;
      }
    }

    if (v22)
    {
      v36 = v25;
    }

    else
    {
      v36 = 1;
    }

    if (v36)
    {
      goto LABEL_19;
    }

    goto LABEL_33;
  }

  v29(v9, v16, v6);
  (*(v7 + 96))(v9, v6);
  if (v22)
  {
    v31 = v25;
  }

  else
  {
    v31 = 1;
  }

  if (v31)
  {
    v32 = sub_22273784C();
LABEL_18:
    (*(*(v32 - 8) + 8))(v9);
LABEL_19:
    sub_2226AD794(v16);
    return 0;
  }

  v34 = [objc_opt_self() indeterminateProgressMetadata];
  v35 = sub_22273784C();
  (*(*(v35 - 8) + 8))(v9, v35);
  (*(v7 + 8))(v16, v6);
  return v34;
}

id sub_2226ABBE0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v71 = a2;
  v72 = a4;
  v68 = a3;
  v5 = sub_22273780C();
  v69 = *(v5 - 8);
  v70 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2227377CC();
  v67 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22273782C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22273793C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a1, v15, v17);
  v20 = (*(v16 + 88))(v19, v15);
  if (v20 == *MEMORY[0x277CEC0B8])
  {
    (*(v16 + 96))(v19, v15);
    v21 = [objc_opt_self() indeterminateProgressMetadata];
    v22 = sub_22273784C();
LABEL_5:
    (*(*(v22 - 8) + 8))(v19, v22);
    return v21;
  }

  if (v20 == *MEMORY[0x277CEC0D0])
  {
    (*(v16 + 96))(v19, v15);
    v23 = objc_opt_self();
    __swift_project_boxed_opaque_existential_1(v72, v72[3]);
    sub_2227390BC();
    v24 = sub_22273916C();

    v21 = [v23 textMetadataWithTitle:v24 subtitle:0];

    v22 = sub_22273783C();
    goto LABEL_5;
  }

  if (v20 == *MEMORY[0x277CEC0D8])
  {
    (*(v16 + 8))(v19, v15);
    v26 = objc_opt_self();
    __swift_project_boxed_opaque_existential_1(v72, v72[3]);
    sub_2227390BC();
    v27 = sub_22273916C();

    v28 = [v26 textMetadataWithTitle:v27 subtitle:0];
LABEL_8:
    v29 = v28;

    return v29;
  }

  if (v20 == *MEMORY[0x277CEC098])
  {
    (*(v16 + 8))(v19, v15);
    v30 = [objc_opt_self() redownloadMetadata];
LABEL_12:

    return v30;
  }

  if (v20 == *MEMORY[0x277CEC090])
  {
    (*(v16 + 96))(v19, v15);
    v31 = v11;
    (*(v12 + 32))(v14, v19, v11);
    v32 = sub_2226AAD28();
    if (v32)
    {

      v33 = [objc_opt_self() redownloadMetadata];
    }

    else
    {
      v73[3] = &type metadata for Feature;
      v73[4] = sub_222672C08();
      LOBYTE(v73[0]) = 1;
      v41 = sub_22273748C();
      __swift_destroy_boxed_opaque_existential_1(v73);
      if (v41)
      {
        sub_2227377DC();
        v42 = v67;
        if ((*(v67 + 88))(v10, v8) == *MEMORY[0x277CEC020])
        {
          (*(v42 + 96))(v10, v8);
          v43 = *(v69 + 8);
          v44 = v10;
          v45 = v70;
          v43(v44, v70);
          v46 = objc_opt_self();
          sub_22273781C();
          sub_2227377EC();
          v48 = v47;
          v43(v7, v45);
          v33 = [v46 progressMetadataWithValue:1 cancellable:v48];
        }

        else
        {
          (*(v42 + 8))(v10, v8);
          v62 = objc_opt_self();
          sub_22273781C();
          sub_2227377EC();
          v64 = v63;
          (*(v69 + 8))(v7, v70);
          v33 = [v62 progressMetadataWithValue:0 cancellable:v64];
        }
      }

      else
      {
        v52 = objc_opt_self();
        sub_22273781C();
        sub_2227377EC();
        v54 = v53;
        (*(v69 + 8))(v7, v70);
        v33 = [v52 progressMetadataWithValue:1 cancellable:v54];
      }
    }

    v29 = v33;
    (*(v12 + 8))(v14, v31);
    return v29;
  }

  if (v20 == *MEMORY[0x277CEC0C0])
  {
    (*(v16 + 96))(v19, v15);
    v34 = [v71 titles];
    type metadata accessor for ASCOfferTitleVariant(0);
    sub_2226AB470();
    v35 = sub_22273910C();

    if (*(v35 + 16) && (sub_222694708(), (v36 & 1) != 0))
    {
    }

    else
    {

      __swift_project_boxed_opaque_existential_1(v72, v72[3]);
      sub_2227390BC();
    }

    v49 = objc_opt_self();
    v50 = sub_22273916C();

    v21 = [v49 textMetadataWithTitle:v50 subtitle:0];

    v22 = sub_22273786C();
    goto LABEL_5;
  }

  v37 = v71;
  if (v20 != *MEMORY[0x277CEC0A8])
  {
    if (v20 == *MEMORY[0x277CEC0C8])
    {
      v51 = objc_opt_self();
      __swift_project_boxed_opaque_existential_1(v72, v72[3]);
      sub_2227390BC();
      v27 = sub_22273916C();

      v28 = [v51 textMetadataWithTitle:v27 subtitle:0];
      goto LABEL_8;
    }

    if (v20 != *MEMORY[0x277CEC0B0])
    {
      (*(v16 + 8))(v19, v15);
    }
  }

  if (([v37 flags] & 0x40) != 0)
  {
    v30 = [objc_opt_self() redownloadMetadata];
    goto LABEL_12;
  }

  v38 = [v37 titles];
  type metadata accessor for ASCOfferTitleVariant(0);
  sub_2226AB470();
  v39 = sub_22273910C();

  if (*(v39 + 16) && (sub_222694708(), (v40 & 1) != 0))
  {
  }

  else
  {

    __swift_project_boxed_opaque_existential_1(v72, v72[3]);
    sub_2227390BC();
  }

  v55 = [v37 subtitles];
  v56 = sub_22273910C();

  if (*(v56 + 16) && (v57 = sub_222694708(), (v58 & 1) != 0))
  {
    v59 = *(*(v56 + 56) + 16 * v57 + 8);
  }

  else
  {
    v59 = 0;
  }

  v60 = sub_22273916C();

  if (v59)
  {
    v61 = sub_22273916C();
  }

  else
  {
    v61 = 0;
  }

  v65 = [objc_opt_self() textMetadataWithTitle:v60 subtitle:v61];

  return v65;
}

id sub_2226AC790(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = sub_22273793C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = v12;
    swift_unknownObjectRetain();
    v14 = [v13 iapItemID];
    v15 = sub_2226DC824(v14, a3);

    if ([v13 streamlinedOffer])
    {
      ObjectType = swift_getObjectType();
      v17 = swift_conformsToProtocol2();
      if (v17)
      {
        v43 = a1;
        v44 = v8;
        v18 = *(v17 + 8);
        v19 = v17;
        swift_unknownObjectRetain();
        v20 = v18(ObjectType, v19);
        a1 = v43;
        v21 = v44;
        v22 = v20;
        swift_unknownObjectRelease_n();
        if (v22)
        {

          if ((v15 & 1) == 0)
          {
            (*(v9 + 16))(v11, a1, v21);
            v23 = (*(v9 + 88))(v11, v21);
            if (v23 == *MEMORY[0x277CEC098])
            {
              (*(v9 + 8))(v11, v21);
LABEL_8:
              v24 = [a2 titles];
              type metadata accessor for ASCOfferTitleVariant(0);
              sub_2226AB470();
              v25 = sub_22273910C();

              if (*(v25 + 16) && (sub_222694708(), (v26 & 1) != 0))
              {
              }

              else
              {

                __swift_project_boxed_opaque_existential_1(a4, a4[3]);
                sub_2227390BC();
              }

              v32 = [a2 subtitles];
              v33 = sub_22273910C();

              if (*(v33 + 16) && (v34 = sub_222694708(), (v35 & 1) != 0))
              {
                v36 = *(*(v33 + 56) + 16 * v34 + 8);
              }

              else
              {
                v36 = 0;
              }

              v37 = sub_22273916C();

              if (v36)
              {
                v38 = sub_22273916C();
              }

              else
              {
                v38 = 0;
              }

              v39 = [objc_opt_self() textMetadataWithTitle:v37 subtitle:v38];
              swift_unknownObjectRelease();

              return v39;
            }

            if (v23 == *MEMORY[0x277CEC0C0])
            {
              (*(v9 + 96))(v11, v21);
              v29 = [a2 titles];
              type metadata accessor for ASCOfferTitleVariant(0);
              sub_2226AB470();
              v30 = sub_22273910C();

              if (*(v30 + 16) && (sub_222694708(), (v31 & 1) != 0))
              {
              }

              else
              {

                __swift_project_boxed_opaque_existential_1(a4, a4[3]);
                sub_2227390BC();
              }

              v40 = objc_opt_self();
              v41 = sub_22273916C();

              v28 = [v40 textMetadataWithTitle:v41 subtitle:0];

              swift_unknownObjectRelease();
              v42 = sub_22273786C();
              (*(*(v42 - 8) + 8))(v11, v42);
            }

            else
            {
              if (v23 == *MEMORY[0x277CEC0A8] || v23 == *MEMORY[0x277CEC0B0])
              {
                goto LABEL_8;
              }

              v28 = sub_2226ABBE0(a1, a2, @"standard", a4);
              swift_unknownObjectRelease();
              (*(v9 + 8))(v11, v21);
            }

            return v28;
          }
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v28 = sub_2226ABBE0(a1, a2, @"standard", a4);
    swift_unknownObjectRelease();
    return v28;
  }

  return sub_2226ABBE0(a1, a2, @"standard", a4);
}

id sub_2226ACE1C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v59 = a4;
  v7 = sub_2227376AC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v56 - v12;
  v14 = sub_2227376CC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, a3, v14, v16);
  v19 = (*(v15 + 88))(v18, v14);
  if (v19 == *MEMORY[0x277CEBF80])
  {
    (*(v15 + 96))(v18, v14);
    (*(v8 + 32))(v13, v18, v7);
    v20 = v13;
    if (([a2 flags] & 8) == 0)
    {
      (*(v8 + 104))(v10, *MEMORY[0x277CEBF68], v7);
      v21 = sub_22273769C();
      v57 = *(v8 + 8);
      v58 = v8 + 8;
      v57(v10, v7);
      v22 = [a2 titles];
      type metadata accessor for ASCOfferTitleVariant(0);
      sub_2226AB470();
      v23 = sub_22273910C();

      v24 = *(v23 + 16);
      if (v21)
      {
        if (v24 && (sub_222694708(), (v25 & 1) != 0))
        {
        }

        else
        {

          __swift_project_boxed_opaque_existential_1(v59, v59[3]);
          sub_2227390BC();
        }

        v43 = sub_22273916C();

        v44 = [a2 subtitles];
        v45 = sub_22273910C();

        if (*(v45 + 16))
        {
          sub_222694708();
          v46 = v7;
          if (v47)
          {
            goto LABEL_34;
          }

          goto LABEL_38;
        }
      }

      else
      {
        if (v24 && (sub_222694708(), (v39 & 1) != 0))
        {
        }

        else
        {

          __swift_project_boxed_opaque_existential_1(v59, v59[3]);
          sub_2227390BC();
        }

        v43 = sub_22273916C();

        v48 = [a2 subtitles];
        v49 = sub_22273910C();

        if (*(v49 + 16))
        {
          sub_222694708();
          v46 = v7;
          if (v50)
          {
LABEL_34:

            v51 = sub_22273916C();

LABEL_39:
            v55 = [objc_opt_self() textMetadataWithTitle:v43 subtitle:v51];

            v57(v20, v46);
            return v55;
          }

LABEL_38:

          v51 = 0;
          goto LABEL_39;
        }
      }

      v51 = 0;
      v46 = v7;
      goto LABEL_39;
    }

    v30 = [a2 titles];
    type metadata accessor for ASCOfferTitleVariant(0);
    sub_2226AB470();
    v31 = sub_22273910C();

    if (*(v31 + 16) && (sub_222694708(), (v32 & 1) != 0))
    {
    }

    else
    {

      __swift_project_boxed_opaque_existential_1(v59, v59[3]);
      sub_2227390BC();
    }

    v37 = objc_opt_self();
    v38 = sub_22273916C();

    v36 = [v37 textMetadataWithTitle:v38 subtitle:0];

    (*(v8 + 8))(v13, v7);
    return v36;
  }

  if (v19 == *MEMORY[0x277CEBF70])
  {
    (*(v15 + 8))(v18, v14);
    v26 = objc_opt_self();
    v27 = sub_22273916C();
    v28 = [v26 textMetadataWithTitle:v27 subtitle:0];

    return v28;
  }

  if (v19 == *MEMORY[0x277CEBF78])
  {
    (*(v15 + 8))(v18, v14);
    v33 = [a2 flags];
    v34 = ASCOfferTitleVariantStandard;
    if ((v33 & 8) != 0)
    {
      v34 = ASCOfferTitleVariantPreorderSubscribed;
    }

    v35 = *v34;
    v36 = sub_2226ABBE0(a1, a2, v35, v59);

    return v36;
  }

  if (v19 != *MEMORY[0x277CEBF88])
  {
    (*(v15 + 8))(v18, v14);
  }

  v40 = [a2 titles];
  type metadata accessor for ASCOfferTitleVariant(0);
  sub_2226AB470();
  v41 = sub_22273910C();

  if (*(v41 + 16) && (sub_222694708(), (v42 & 1) != 0))
  {
  }

  else
  {

    __swift_project_boxed_opaque_existential_1(v59, v59[3]);
    sub_2227390BC();
  }

  v52 = objc_opt_self();
  v53 = sub_22273916C();

  v54 = [v52 textMetadataWithTitle:v53 subtitle:0];

  return v54;
}

uint64_t sub_2226AD794(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AD0, &qword_222743118);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *ASCOffer.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2227382CC();
  v4 = *(v3 - 8);
  v38 = v3;
  v39 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2227386BC();
  *&v8 = MEMORY[0x28223BE20](v7 - 8).n128_u64[0];
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v1 metrics];
  sub_22262E364(0, &qword_281312D38, off_2784B06F0);
  v12 = sub_22273937C();

  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_16:

    sub_2227386AC();
    return sub_2227383AC();
  }

  v13 = sub_22273984C();
  if (!v13)
  {
    goto LABEL_16;
  }

LABEL_3:
  v42 = MEMORY[0x277D84F90];
  result = sub_2226AE744(0, v13 & ~(v13 >> 63), 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v31 = v10;
    v32 = a1;
    v15 = 0;
    v16 = v42;
    v33 = v39 + 32;
    v34 = v12 & 0xC000000000000001;
    v36 = v12;
    v37 = v6;
    v35 = v13;
    do
    {
      if (v34)
      {
        v17 = MEMORY[0x223DBEC70](v15, v12);
      }

      else
      {
        v17 = *(v12 + 8 * v15 + 32);
      }

      v18 = v17;
      v19 = [v18 topic];
      if (v19)
      {
        v20 = v19;
        v21 = sub_22273919C();
        v40 = v22;
        v41 = v21;
      }

      else
      {
        v40 = 0;
        v41 = 0;
      }

      [v18 shouldFlush];
      v23 = [v18 fields];
      sub_22273910C();

      v24 = [v18 includingFields];
      v25 = sub_2227394CC();

      sub_2226ADE58(v25, sub_2226E92DC, 0);
      v26 = [v18 includingFields];
      v27 = sub_2227394CC();

      sub_2226AE0E4(v27, sub_2226E932C, 0);
      v28 = v37;
      sub_22273829C();

      v42 = v16;
      v30 = *(v16 + 16);
      v29 = *(v16 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_2226AE744((v29 > 1), v30 + 1, 1);
        v16 = v42;
      }

      ++v15;
      *(v16 + 16) = v30 + 1;
      (*(v39 + 32))(v16 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v30, v28, v38);
      v12 = v36;
    }

    while (v35 != v15);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2226ADBF8(uint64_t a1)
{
  v2 = sub_222737C2C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v25 - v10;
  v12 = *(a1 + 16);
  v13 = sub_2226AF5F8(&qword_27D0134D0, MEMORY[0x277CEC160], MEMORY[0x277CEC168]);
  result = MEMORY[0x223DBE820](v12, v2, v13);
  v15 = 0;
  v26 = a1;
  v27 = result;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v3 + 32;
  v25[3] = v3 + 16;
  v25[1] = v3 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v3 + 16))(v11, *(v26 + 48) + *(v3 + 72) * (v24 | (v23 << 6)), v2);
      (*(v3 + 32))(v5, v11, v2);
      sub_22268D61C(v8, v5);
      result = (*(v3 + 8))(v8, v2);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2226ADE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_222738ABC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014700, &unk_2227459B0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v27 - v14;
  v16 = *(a1 + 16);
  v17 = sub_2226AF5F8(&qword_27D013668, MEMORY[0x277D22320], MEMORY[0x277D22328]);
  v18 = MEMORY[0x223DBE820](v16, v6, v17);
  v34 = a3;
  v35 = v18;
  v19 = -1 << *(a1 + 32);
  v20 = ~v19;
  v21 = *(a1 + 56);
  v22 = -v19;
  v28 = a1;
  v29 = a1 + 56;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v30 = v20;
  v31 = 0;
  v32 = v23 & v21;
  v33 = a2;
  sub_222729B68(v15);
  v24 = *(v7 + 48);
  if (v24(v15, 1, v6) != 1)
  {
    v27[1] = a3;
    v25 = *(v7 + 32);
    do
    {
      v25(v9, v15, v6);
      sub_22268E030(v12, v9);
      (*(v7 + 8))(v12, v6);
      sub_222729B68(v15);
    }

    while (v24(v15, 1, v6) != 1);
    v18 = v35;
  }

  sub_2226342B0(v28);

  return v18;
}

uint64_t sub_2226AE0E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_222738A8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013B08, &qword_222743140);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v27 - v14;
  v16 = *(a1 + 16);
  v17 = sub_2226AF5F8(&qword_27D013650, MEMORY[0x277D22300], MEMORY[0x277D22308]);
  v18 = MEMORY[0x223DBE820](v16, v6, v17);
  v34 = a3;
  v35 = v18;
  v19 = -1 << *(a1 + 32);
  v20 = ~v19;
  v21 = *(a1 + 56);
  v22 = -v19;
  v28 = a1;
  v29 = a1 + 56;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v30 = v20;
  v31 = 0;
  v32 = v23 & v21;
  v33 = a2;
  sub_222729B50(v15);
  v24 = *(v7 + 48);
  if (v24(v15, 1, v6) != 1)
  {
    v27[1] = a3;
    v25 = *(v7 + 32);
    do
    {
      v25(v9, v15, v6);
      sub_22268DD50(v12, v9);
      (*(v7 + 8))(v12, v6);
      sub_222729B50(v15);
    }

    while (v24(v15, 1, v6) != 1);
    v18 = v35;
  }

  sub_2226342B0(v28);

  return v18;
}

uint64_t sub_2226AE3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v8 = MEMORY[0x223DBE820](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v29 = v8;
  v9 = -1 << *(a1 + 32);
  v10 = ~v9;
  v11 = *(a1 + 56);
  v12 = -v9;
  v22 = a1;
  v23 = a1 + 56;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v24 = v10;
  v25 = 0;
  v26 = v13 & v11;
  v27 = a2;
  v28 = a3;
  v14 = (a4)();
  if (v15)
  {
    v16 = v14;
    v17 = v15;
    do
    {
      sub_22268DC00(&v21, v16, v17);

      v16 = a4(v18);
      v17 = v19;
    }

    while (v19);
    v8 = v29;
  }

  sub_2226342B0(v22);

  return v8;
}

uint64_t sub_2226AE4AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = sub_22273984C();
  }

  else
  {
    v6 = *(a1 + 16);
  }

  v7 = MEMORY[0x223DBE820](v6, MEMORY[0x277D84D38], MEMORY[0x277D84D48]);
  v21 = v7;
  v8 = sub_2226AF170(a1, a2, a3, v22);
  v17 = v22[0];
  v18 = v22[1];
  v19 = v22[2];
  v20 = v23;
  sub_22272A158(v8);
  if ((v10 & 1) == 0)
  {
    v11 = v9;
    do
    {
      v12 = sub_22268E4BC(&v16, v11);
      sub_22272A158(v12);
      v11 = v13;
    }

    while ((v14 & 1) == 0);
    v7 = v21;
  }

  sub_2226342B0(v17);

  return v7;
}

uint64_t sub_2226AE5A4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v16 = a2;
  v6 = sub_22273793C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v7 + 16);
  v11(v10, a1, v6, v8);
  v12 = (*(v7 + 88))(v10, v6);
  v13 = *MEMORY[0x277CEC098];
  (*(v7 + 8))(v10, v6);
  if (v12 == v13 && (([v3 flags] & 0x200) != 0 || objc_msgSend(v16, sel_supportsDSIDLessInstall)))
  {
    return (*(v7 + 104))(a3, *MEMORY[0x277CEC0A8], v6);
  }

  else
  {
    return (v11)(a3, a1, v6);
  }
}

void *sub_2226AE744(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2226AEF94(a1, a2, a3, *v3, &qword_27D013B10, &qword_222743148, MEMORY[0x277D21BB8]);
  *v3 = result;
  return result;
}

char *sub_2226AE788(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2226AE8D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2226AE7A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2226AEF94(a1, a2, a3, *v3, &qword_27D012FD8, &qword_222741568, MEMORY[0x277CEC000]);
  *v3 = result;
  return result;
}

char *sub_2226AE7EC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2226AE9E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2226AE80C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2226AEB00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2226AE82C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2226AEC0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2226AE84C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2226AED2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2226AE86C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2226AEE74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2226AE88C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2226AEF94(a1, a2, a3, *v3, &unk_27D0130B0, &unk_2227414D0, MEMORY[0x277D21B28]);
  *v3 = result;
  return result;
}

char *sub_2226AE8D0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AE0, &unk_222743500);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2226AE9E0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013B00, &qword_222743138);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2226AEB00(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0145D0, &qword_222745770);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2226AEC0C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AD8, &qword_222743128);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2226AED2C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AF0, &unk_222743630);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AF8, &qword_222743130);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2226AEE74(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013B18, &qword_222743150);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2226AEF94(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_2226AF170@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    sub_22273980C();
    sub_22262E364(0, &qword_281312B80, 0x277CCABB0);
    sub_2226AF270(&qword_27D013AE8, &qword_281312B80, 0x277CCABB0);
    sub_2227394FC();
    result = v14;
    v7 = v15;
    v9 = v16;
    v8 = v17;
    v10 = v18;
  }

  else
  {
    v8 = 0;
    v11 = -1;
    v12 = -1 << *(result + 32);
    v7 = result + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v11 = ~(-1 << v13);
    }

    v10 = v11 & *(result + 56);
  }

  *a4 = result;
  a4[1] = v7;
  a4[2] = v9;
  a4[3] = v8;
  a4[4] = v10;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_2226AF270(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_22262E364(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2226AF2C0(uint64_t a1)
{
  v2 = sub_222737C2C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_2226AF5F8(&qword_27D0134D0, MEMORY[0x277CEC160], MEMORY[0x277CEC168]);
  result = MEMORY[0x223DBE820](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_22268D61C(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_2226AF45C(uint64_t a1)
{
  v2 = sub_2227377BC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_2226AF5F8(&unk_281312FF8, MEMORY[0x277CEC000], MEMORY[0x277CEC008]);
  result = MEMORY[0x223DBE820](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_22268D8FC(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_2226AF5F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2226AF640(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x223DBE820](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_22268DC00(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_2226AF6D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for ASCMetricsInvocationPoint(0);
  v4 = v3;
  v5 = sub_2226AF5F8(&qword_27D012D10, type metadata accessor for ASCMetricsInvocationPoint, &unk_222740940);
  result = MEMORY[0x223DBE820](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_22268E310(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_2226AF794(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22273984C())
  {
    v4 = sub_22262E364(0, &qword_281312B70, off_2784B05F0);
    v5 = sub_2226AF270(&qword_281312B58, &qword_281312B70, off_2784B05F0);
    result = MEMORY[0x223DBE820](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x223DBEC70](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_22268E59C(&v12, v10);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_22273984C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_2226AF8EC(uint64_t a1)
{
  v10[1] = MEMORY[0x277D84FA0];
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    sub_22268DBDC(v10, [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_]);
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_2226AFA08(uint64_t a1)
{
  switch(a1)
  {
    case 3:
      type metadata accessor for ASCOpenAppError(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2227412F0;
      *(inited + 32) = sub_22273919C();
      v3 = inited + 32;
      v4 = 0x8000000222749C30;
      *(inited + 72) = MEMORY[0x277D837D0];
      v5 = 0xD000000000000018;
      goto LABEL_7;
    case 2:
      type metadata accessor for ASCOpenAppError(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2227412F0;
      *(inited + 32) = sub_22273919C();
      v3 = inited + 32;
      v4 = 0x8000000222749C50;
      *(inited + 72) = MEMORY[0x277D837D0];
      v5 = 0xD000000000000011;
      goto LABEL_7;
    case 1:
      type metadata accessor for ASCOpenAppError(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2227412F0;
      *(inited + 32) = sub_22273919C();
      v3 = inited + 32;
      v4 = 0x8000000222749C70;
      *(inited + 72) = MEMORY[0x277D837D0];
      v5 = 0xD000000000000013;
LABEL_7:
      *(inited + 40) = v2;
      *(inited + 48) = v5;
      *(inited + 56) = v4;
      sub_222710688(inited);
      swift_setDeallocating();
      sub_2226AFC24(v3);
      sub_2226AFC8C();
      sub_22273725C();
      return v7;
  }

  return 0;
}

uint64_t sub_2226AFC24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013250, &unk_222741780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2226AFC8C()
{
  result = qword_27D012E38;
  if (!qword_27D012E38)
  {
    type metadata accessor for ASCOpenAppError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D012E38);
  }

  return result;
}

id sub_2226AFCE4(void *a1, void *a2, char *a3, int a4)
{
  v72 = a4;
  v77 = a3;
  v78 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013DC0, qword_222743950);
  MEMORY[0x28223BE20](v5 - 8);
  v75 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v76 = &v66 - v8;
  v9 = sub_22273793C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v73 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v84 = &v66 - v13;
  v14 = sub_2227381BC();
  MEMORY[0x28223BE20](v14 - 8);
  if (qword_27D0129A0 != -1)
  {
    swift_once();
  }

  v82 = sub_222738F6C();
  v80 = __swift_project_value_buffer(v82, qword_27D019C68);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v16 = *(sub_2227381FC() - 8);
  v17 = *(v16 + 72);
  v18 = *(v16 + 80);
  v81 = (v18 + 32) & ~v18;
  v69 = v18;
  v70 = v17;
  v71 = v15;
  v19 = swift_allocObject();
  v68 = xmmword_2227412F0;
  *(v19 + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v79 = a1;
  v20 = [a1 id];
  v67 = sub_22262E364(0, &qword_281312B70, off_2784B05F0);
  v86 = v67;
  v85[0] = v20;
  sub_22273816C();
  sub_222660468(v85, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  v86 = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v85);
  v22 = v10;
  v23 = *(v10 + 16);
  v24 = v77;
  v23(boxed_opaque_existential_1, v77, v9);
  sub_22273815C();
  sub_222660468(v85, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  v86 = sub_22262E364(0, &qword_27D012FA8, off_2784B0700);
  v85[0] = v78;
  v78 = v78;
  sub_22273815C();
  sub_222660468(v85, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  v25 = v84;
  v26 = v24;
  v23(v84, v24, v9);
  v27 = (*(v22 + 88))(v25, v9);
  v28 = *MEMORY[0x277CEC0D0];
  v83 = v9;
  if (v27 != v28)
  {
    v31 = v22;
    if (v27 == *MEMORY[0x277CEC0D8])
    {
      v39 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      [v39 setIsUpdate_];
      v37 = v22;
      v38 = *(v22 + 8);
      v38(v25, v9);
      v35 = v79;
      goto LABEL_12;
    }

    v35 = v79;
    if (v27 != *MEMORY[0x277CEC098])
    {
      if (v27 == *MEMORY[0x277CEC0A8] || v27 == *MEMORY[0x277CEC0B0])
      {
        v37 = v22;
        v38 = *(v22 + 8);
        v38(v84, v83);
        v39 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        goto LABEL_12;
      }

      goto LABEL_6;
    }

LABEL_11:
    v37 = v31;
    v38 = *(v31 + 8);
    v38(v84, v83);
    v39 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v39 setIsRedownload_];
    goto LABEL_12;
  }

  v29 = v73;
  v23(v73, v25, v9);
  v30 = v29;
  v31 = v22;
  (*(v22 + 96))(v29, v9);
  v32 = sub_22273783C();
  v33 = *(v32 - 8);
  v34 = (*(v33 + 88))(v30, v32);
  v35 = v79;
  if (v34 == *MEMORY[0x277CEC038])
  {
    goto LABEL_11;
  }

  (*(v33 + 8))(v30, v32);
LABEL_6:
  if ((v72 & 1) == 0)
  {
    *(swift_allocObject() + 16) = v68;
    sub_2227381AC();
    sub_22273819C();
    v62 = [v35 id];
    v86 = v67;
    v85[0] = v62;
    sub_22273816C();
    sub_222660468(v85, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C6C();

    v63 = *(v31 + 8);
    v64 = v83;
    v63(v24, v83);
    v63(v84, v64);
    return 0;
  }

  v36 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v37 = v31;
  v38 = *(v31 + 8);
  v39 = v36;
  v38(v84, v83);
LABEL_12:
  sub_2226EC744();
  v40 = sub_22273916C();

  [v39 setBuyParameters_];

  v41 = [v35 additionalHeaders];
  if (v41)
  {
    v42 = v41;
    v43 = sub_22273910C();

    sub_2226B09DC(v43);

    v44 = sub_2227390FC();
  }

  else
  {
    v44 = 0;
  }

  v45 = v75;
  [v39 setAdditionalHeaders_];

  v46 = [v35 preflightPackageURL];
  v74 = v37;
  if (v46)
  {
    v47 = v46;
    sub_2227372FC();

    v48 = 0;
  }

  else
  {
    v48 = 1;
  }

  v49 = sub_22273731C();
  v50 = *(v49 - 8);
  (*(v50 + 56))(v45, v48, 1, v49);
  v51 = v76;
  sub_2226B0F6C(v45, v76);
  if ((*(v50 + 48))(v51, 1, v49) == 1)
  {
    sub_222660468(v51, &qword_27D013DC0, qword_222743950);
    v52 = 0;
  }

  else
  {
    sub_22273729C();
    (*(v50 + 8))(v51, v49);
    v52 = sub_22273916C();
  }

  [v39 setPreflightURLString_];

  v53 = [v35 bundleID];
  if (!v53)
  {
    sub_22273919C();
    v53 = sub_22273916C();
  }

  [v39 setBundleID_];

  v54 = [v35 id];
  v55 = [v54 numberValue];

  [v39 setItemID_];
  v56 = [v35 itemName];
  if (!v56)
  {
    sub_22273919C();
    v56 = sub_22273916C();
  }

  [v39 setItemName_];

  v57 = [v35 vendorName];
  if (!v57)
  {
    sub_22273919C();
    v57 = sub_22273916C();
  }

  [v39 setVendorName_];

  [v39 setCreatesJobs_];
  v58 = sub_22273916C();
  [v39 setClientID_];

  if ([v35 flags])
  {
    [v39 setExtensionsToEnable_];
  }

  if (([v35 flags] & 0x20) != 0)
  {
    [v39 setForceWatchInstall_];
  }

  v59 = [v35 capabilities];
  [v39 setAppCapabilities_];

  v60 = [v35 flags];
  v61 = v78;
  if ((v60 & 0x200) != 0 || [v78 supportsDSIDLessInstall])
  {
    [v39 setIsDSIDLess_];

    v38(v26, v83);
  }

  else
  {
    v38(v26, v83);
  }

  return v39;
}

uint64_t sub_2226B09DC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013B20, &qword_222745B00);
    v2 = sub_222739A6C();
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

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_22269457C(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_22269457C(v29, v30);
    result = sub_2227398AC();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_22269457C(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2226B0CA4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013B20, &qword_222745B00);
    v2 = sub_222739A6C();
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

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_22262BF70(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_22269457C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_22269457C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_22269457C(v31, v32);
    result = sub_2227398AC();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
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
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_22269457C(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2226B0F6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013DC0, qword_222743950);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_2226B0FDC(void *a1)
{
  v1 = a1;
  v2 = [v1 redownloadParams];
  sub_22273919C();

  sub_2226B1104();
  sub_22273975C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013B28, &qword_222743158);
  sub_2226B1198();
  sub_22273913C();

  v3 = sub_22273916C();

  return v3;
}

unint64_t sub_2226B1104()
{
  result = qword_281312E00;
  if (!qword_281312E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281312E00);
  }

  return result;
}

unint64_t sub_2226B1198()
{
  result = qword_27D013B30;
  if (!qword_27D013B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D013B28, &qword_222743158);
    sub_2226B121C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013B30);
  }

  return result;
}

unint64_t sub_2226B121C()
{
  result = qword_281312DD0;
  if (!qword_281312DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D013AA8, &qword_222742EE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281312DD0);
  }

  return result;
}

id sub_2226B1280(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v75 - v10;
  v12 = *(v5 + 16);
  v12(&v75 - v10, v3, a1, v9);
  v13 = sub_222739B1C();
  v81 = v3;
  if (v13)
  {
    v14 = v13;
    (*(v5 + 8))(v11, a1);
  }

  else
  {
    v14 = swift_allocError();
    (*(v5 + 32))(v15, v11, a1);
  }

  v16 = sub_22273726C();

  v76 = v16;
  v17 = [v16 userInfo];
  v18 = sub_22273910C();

  v97 = v18;
  if (*(v18 + 16))
  {
    v19 = v18 + 64;
    v20 = 1 << *(v18 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v18 + 64);
    v23 = (v20 + 63) >> 6;

    v24 = 0;
    v81 = 0;
    v79 = v23;
    v80 = v18 + 64;
    v77 = v18;
    while (1)
    {
      if (!v22)
      {
        if (v23 <= v24 + 1)
        {
          v26 = v24 + 1;
        }

        else
        {
          v26 = v23;
        }

        v27 = v26 - 1;
        while (1)
        {
          v25 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (v25 >= v23)
          {
            v22 = 0;
            v93 = 0u;
            v94 = 0u;
            v24 = v27;
            v92 = 0u;
            goto LABEL_22;
          }

          v22 = *(v19 + 8 * v25);
          ++v24;
          if (v22)
          {
            v24 = v25;
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        result = sub_222739B8C();
        __break(1u);
        return result;
      }

      v25 = v24;
LABEL_21:
      v28 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v29 = v28 | (v25 << 6);
      v30 = (*(v18 + 48) + 16 * v29);
      v32 = *v30;
      v31 = v30[1];
      sub_22262BF70(*(v18 + 56) + 32 * v29, v91);
      *&v92 = v32;
      *(&v92 + 1) = v31;
      sub_22269457C(v91, &v93);

LABEL_22:
      v95 = v92;
      v96[0] = v93;
      v96[1] = v94;
      v33 = *(&v92 + 1);
      if (!*(&v92 + 1))
      {

        v66 = v76;
        v67 = [v76 domain];
        if (!v67)
        {
          sub_22273919C();
          v67 = sub_22273916C();
        }

        v68 = [v66 code];
        v69 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        v70 = sub_2227390FC();

        v71 = [v69 initWithDomain:v67 code:v68 userInfo:v70];

        goto LABEL_51;
      }

      v34 = v95;
      sub_22269457C(v96, &v92);
      sub_22262BF70(&v92, v91);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013130, &qword_2227416B0);
      v35 = swift_dynamicCast();
      if (v35)
      {
        break;
      }

      if (qword_27D012998 != -1)
      {
        v35 = swift_once();
      }

      *&v88 = v34;
      *(&v88 + 1) = v33;
      MEMORY[0x28223BE20](v35);
      *(&v75 - 2) = &v88;
      v58 = v81;
      v60 = sub_222730F54(sub_2226A5750, (&v75 - 4), v59);
      v81 = v58;
      if ((v60 & 1) == 0)
      {
        sub_2226890E0(v34, v33, &v88);

        sub_222672BA0(&v88);
        __swift_destroy_boxed_opaque_existential_1(&v92);
LABEL_9:
        v19 = v80;
        goto LABEL_10;
      }

      v61 = v34;
      sub_22262BF70(&v92, &v88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013B40, &unk_222743178);
      v62 = swift_dynamicCast();
      v19 = v80;
      if ((v62 & 1) != 0 && (swift_getObjectType(), v63 = [swift_getObjCClassFromMetadata() supportsSecureCoding], swift_unknownObjectRelease(), v63))
      {
        __swift_destroy_boxed_opaque_existential_1(&v92);
      }

      else
      {
        sub_2226890E0(v61, v33, &v88);

        sub_222672BA0(&v88);
        __swift_destroy_boxed_opaque_existential_1(&v92);
      }

LABEL_10:
      __swift_destroy_boxed_opaque_existential_1(v91);
      v23 = v79;
    }

    v78 = v90;
    swift_getErrorValue();
    v36 = sub_2226B1280(v86, v87);
    swift_getErrorValue();
    v37 = v34;
    v38 = v84;
    v39 = v85;
    v89 = v85;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v88);
    (*(*(v39 - 8) + 16))(boxed_opaque_existential_1, v38, v39);

    sub_22269457C(&v88, v83);
    v41 = v97;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = v41;
    v43 = v37;
    v45 = sub_222688818(v37, v33);
    v46 = v41[2];
    v47 = (v44 & 1) == 0;
    v48 = v46 + v47;
    if (__OFADD__(v46, v47))
    {
      goto LABEL_53;
    }

    v49 = v44;
    if (v41[3] < v48)
    {
      sub_2226895E4(v48, isUniquelyReferenced_nonNull_native);
      v50 = sub_222688818(v37, v33);
      if ((v49 & 1) != (v51 & 1))
      {
        goto LABEL_55;
      }

      v45 = v50;
      v52 = v78;
      if ((v49 & 1) == 0)
      {
        goto LABEL_28;
      }

LABEL_38:

      v64 = v82;
      v65 = (v82[7] + 32 * v45);
      __swift_destroy_boxed_opaque_existential_1(v65);
      sub_22269457C(v83, v65);

      __swift_destroy_boxed_opaque_existential_1(&v92);
      v97 = v64;
LABEL_39:
      v18 = v77;
      goto LABEL_9;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v52 = v78;
      if (v44)
      {
        goto LABEL_38;
      }
    }

    else
    {
      sub_22268C710();
      v52 = v78;
      if (v49)
      {
        goto LABEL_38;
      }
    }

LABEL_28:
    v53 = v82;
    v82[(v45 >> 6) + 8] |= 1 << v45;
    v54 = (v53[6] + 16 * v45);
    *v54 = v43;
    v54[1] = v33;
    sub_22269457C(v83, (v53[7] + 32 * v45));

    __swift_destroy_boxed_opaque_existential_1(&v92);
    v55 = v53[2];
    v56 = __OFADD__(v55, 1);
    v57 = v55 + 1;
    if (v56)
    {
      goto LABEL_54;
    }

    v53[2] = v57;
    v97 = v53;
    goto LABEL_39;
  }

  (v12)(v7, v81, a1);
  v72 = sub_222739B1C();
  if (v72)
  {
    v71 = v72;
    (*(v5 + 8))(v7, a1);
  }

  else
  {
    v71 = swift_allocError();
    (*(v5 + 32))(v73, v7, a1);
  }

  v70 = v76;
LABEL_51:

  return v71;
}

uint64_t sub_2226B1A94(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v34 = a1;
  v35 = a2;
  v7 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v33 - v12;
  v14 = *(v7 + 16);
  v33 = v15;
  v14(&v33 - v12, v15, v16, v11);
  v17 = sub_222739B1C();
  if (v17)
  {
    v18 = v17;
    (*(v7 + 8))(v13, a4);
  }

  else
  {
    v18 = swift_allocError();
    (*(v7 + 32))(v19, v13, a4);
  }

  v20 = sub_22273726C();

  v21 = [v20 code];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_22273933C();
  if (v21 == v36)
  {
    (v14)(v9, v33, a4);
    v22 = sub_222739B1C();
    if (v22)
    {
      v23 = v22;
      (*(v7 + 8))(v9, a4);
    }

    else
    {
      v23 = swift_allocError();
      (*(v7 + 32))(v25, v9, a4);
    }

    v26 = sub_22273726C();

    v27 = [v26 domain];
    v28 = sub_22273919C();
    v30 = v29;

    if (v28 == v34 && v30 == v35)
    {
      v24 = 1;
    }

    else
    {
      v24 = sub_222739B4C();
    }
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t sub_2226B1D70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0145D0, &qword_222745770);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_222743160;
  *(v0 + 32) = sub_22273919C();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_22273919C();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_22273919C();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_22273919C();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_22273919C();
  *(v0 + 104) = v5;
  *(v0 + 112) = sub_22273919C();
  *(v0 + 120) = v6;
  *(v0 + 128) = sub_22273919C();
  *(v0 + 136) = v7;
  *(v0 + 144) = sub_22273919C();
  *(v0 + 152) = v8;
  result = sub_22273919C();
  *(v0 + 160) = result;
  *(v0 + 168) = v10;
  qword_27D019C60 = v0;
  return result;
}

void sub_2226B1EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v33 = a4;
  v8 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22273919C();
  v13 = v12;
  type metadata accessor for FBSOpenApplicationErrorCode(0);
  v36[3] = v14;
  v36[4] = sub_2226B21E4();
  v36[0] = a3;
  LOBYTE(a3) = sub_2226B1A94(v11, v13, v36, a1, a2);

  __swift_destroy_boxed_opaque_existential_1(v36);
  if ((a3 & 1) == 0)
  {
    (*(v8 + 16))(v10, v4, a1);
    v15 = sub_222739B1C();
    if (v15)
    {
      v16 = v15;
      (*(v8 + 8))(v10, a1);
    }

    else
    {
      v16 = swift_allocError();
      (*(v8 + 32))(v17, v10, a1);
    }

    v18 = sub_22273726C();

    v19 = [v18 underlyingErrors];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013130, &qword_2227416B0);
    v20 = sub_22273937C();

    v21 = 0;
    v22 = *(v20 + 16);
    while (1)
    {
      if (v22 == v21)
      {
LABEL_9:

        return;
      }

      if (v21 >= *(v20 + 16))
      {
        break;
      }

      v23 = v21 + 1;
      v24 = *(v20 + 8 * v21 + 32);
      ErrorValue = swift_getErrorValue();
      v26 = v34;
      v27 = v35;
      v28 = *(v34 - 8);
      v29 = MEMORY[0x28223BE20](ErrorValue);
      v31 = &v33 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v28 + 16))(v31, v29);
      v32 = v24;
      LOBYTE(v27) = v33(v26, v27);
      (*(v28 + 8))(v31, v26);

      v21 = v23;
      if (v27)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}