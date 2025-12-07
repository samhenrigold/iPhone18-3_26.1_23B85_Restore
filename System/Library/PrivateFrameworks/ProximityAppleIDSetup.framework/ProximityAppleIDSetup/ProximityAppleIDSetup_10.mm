uint64_t sub_26109CD20()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t sub_26109CD84(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FB6F34;

  return sub_26109C32C(a1, a2);
}

unint64_t sub_26109CE2C()
{
  result = qword_27FE66788;
  if (!qword_27FE66788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66788);
  }

  return result;
}

unint64_t sub_26109CE80()
{
  result = qword_27FE66790;
  if (!qword_27FE66790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66790);
  }

  return result;
}

unint64_t sub_26109CEE4(void *a1)
{
  a1[1] = sub_26109CF1C();
  a1[2] = sub_26109CF70();
  result = sub_26109CFC4();
  a1[3] = result;
  return result;
}

unint64_t sub_26109CF1C()
{
  result = qword_27FE66798;
  if (!qword_27FE66798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66798);
  }

  return result;
}

unint64_t sub_26109CF70()
{
  result = qword_27FE667A0;
  if (!qword_27FE667A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE667A0);
  }

  return result;
}

unint64_t sub_26109CFC4()
{
  result = qword_27FE667A8;
  if (!qword_27FE667A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE667A8);
  }

  return result;
}

unint64_t sub_26109D01C()
{
  result = qword_27FE667B0;
  if (!qword_27FE667B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE667B0);
  }

  return result;
}

unint64_t sub_26109D074(void *a1)
{
  v1 = 0xD00000000000002FLL;
  if (a1 != 1)
  {
    sub_2610BCF84();
    MEMORY[0x2666F7380](0xD000000000000031, 0x80000002610D28C0);
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE641D0, &qword_2610C0510);
    v4 = sub_2610BCA34();
    MEMORY[0x2666F7380](v4);

    return 0;
  }

  return v1;
}

unint64_t PASFlowStepProxiedTermsError.description.getter()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    v2 = 0xD000000000000023;
    if (v1 != 1)
    {
      v2 = 0xD00000000000002CLL;
    }

    if (v1)
    {
      return v2;
    }

    else
    {
      return 0xD000000000000023;
    }
  }

  else
  {
    sub_2610BCF84();

    v4 = sub_2610BD304();
    MEMORY[0x2666F7380](v4);

    return 0xD00000000000002BLL;
  }
}

uint64_t sub_26109D24C()
{
  if (*(v0 + 8) == 1)
  {
    return qword_2610CEDB8[*v0];
  }

  else
  {
    return 2201;
  }
}

uint64_t sub_26109D290(uint64_t a1)
{
  v2 = sub_26109FA34();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26109D2CC(uint64_t a1)
{
  v2 = sub_26109FA34();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_26109D31C()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms__anisetteProvisioningController);
  swift_beginAccess();
  if (*(v1 + 16))
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v3 = qword_27FE637E0;

    if (v3 != -1)
    {
      swift_once();
    }

    v2 = sub_260FA0E88();
    *(v1 + 16) = v2;
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_26109D3E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms__sourceAppleIDExchanger);
  swift_beginAccess();
  if (*(v1 + 16))
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v3 = qword_27FE637E0;

    if (v3 != -1)
    {
      swift_once();
    }

    v2 = sub_260F9F58C();
    *(v1 + 16) = v2;
    *(v1 + 24) = v4;
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_26109D4C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms__analyticsProvider);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &qword_27FE63AD0, qword_2610C7BC0);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE63AD0, qword_2610C7BC0);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9EB74(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &qword_27FE63AD0, qword_2610C7BC0);
  swift_endAccess();
}

uint64_t sub_26109D5FC()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms____lazy_storage___analytics;
  if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms____lazy_storage___analytics))
  {
    v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms____lazy_storage___analytics);
  }

  else
  {
    sub_26109D4C0(v6);
    v3 = v7;
    v4 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    v2 = (*(v4 + 8))(&type metadata for PASFlowStepProxiedTerms.AnalyticsEvent, &off_28738B108, v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t PASFlowStepProxiedTerms.presentTerms(with:)(uint64_t a1)
{
  *(v2 + 128) = a1;
  *(v2 + 136) = v1;
  return MEMORY[0x2822009F8](sub_26109D6E4, 0, 0);
}

uint64_t sub_26109D6E4()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  v0[18] = __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD44();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASFlowStepProxiedTerms presentTerms(with:)", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = v0[16];
  v6 = v0[17];

  sub_260FA99E0(v5, (v0 + 2));
  v7 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms_termsHandler;
  swift_beginAccess();
  sub_260FC3844((v0 + 2), v6 + v7, &qword_27FE667C8, &qword_2610CEA68);
  swift_endAccess();
  v8 = swift_task_alloc();
  v0[19] = v8;
  *v8 = v0;
  v8[1] = sub_26109D884;

  return sub_26109E1C4();
}

uint64_t sub_26109D884(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v4 = sub_26109DF08;
  }

  else
  {
    v4 = sub_26109D998;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_26109D998()
{
  v1 = v0[16];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v0[22] = sub_26109D31C();
  if (qword_27FE637F0 != -1)
  {
    swift_once();
  }

  v3 = *(v2 + 8);
  swift_retain_n();
  v5 = v3 + *v3;
  v4 = swift_task_alloc();
  v0[23] = v4;
  *v4 = v0;
  v4[1] = sub_26109DB68;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_26109DB68()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_26109DCA0, 0, 0);
}

uint64_t sub_26109DCA0()
{
  *(v0 + 192) = sub_26109D5FC();
  *(v0 + 80) = &type metadata for PASFlowStepProxiedTerms.AnalyticsEvent;
  *(v0 + 88) = &off_28738B108;
  *(v0 + 56) = 0;
  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  *v1 = v0;
  v1[1] = sub_26109DD64;

  return sub_261048744(v0 + 56, 0, 0);
}

void sub_26109DD64()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 56));

    MEMORY[0x2822009F8](sub_26109DEA8, 0, 0);
  }
}

uint64_t sub_26109DEA8()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26109DF08()
{
  v21 = v0;
  v1 = v0[21];
  v2 = v1;
  v3 = sub_2610BC794();
  v4 = sub_2610BCD64();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[21];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136446210;
    v0[15] = v5;
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, &v20);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, v3, v4, "Failed to load terms error: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  v12 = v0[21];
  v13 = v0[17] + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms_result;
  v14 = *v13;
  *v13 = v12;
  v15 = *(v13 + 8);
  *(v13 + 8) = 1;
  v16 = v12;
  sub_261007204(v14, v15);
  sub_2610BCC74();
  v0[26] = sub_2610BCC64();
  v18 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26109E0F4, v18, v17);
}

uint64_t sub_26109E0F4()
{

  sub_2610439BC();

  return MEMORY[0x2822009F8](sub_26109E164, 0, 0);
}

uint64_t sub_26109E164()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26109E1E4()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD44();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASFlowStepProxiedTerms fetchProxiedDevice", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = sub_26109D3E8();
  v7 = v6;
  *(v0 + 24) = v5;
  ObjectType = swift_getObjectType();
  v11 = (*(v7 + 40) + **(v7 + 40));
  v9 = swift_task_alloc();
  *(v0 + 32) = v9;
  *v9 = v0;
  v9[1] = sub_26109E3CC;

  return v11(ObjectType, v7);
}

uint64_t sub_26109E3CC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_26109E570;
  }

  else
  {
    swift_unknownObjectRelease();
    *(v4 + 48) = a1;
    v5 = sub_26109E4FC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26109E4FC()
{
  [*(v0 + 48) setLinkType_];
  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1(v2);
}

uint64_t sub_26109E570()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26109E5D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_260FB6DB4;

  return sub_26109E66C(a1);
}

uint64_t sub_26109E66C(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_26109E68C, 0, 0);
}

uint64_t sub_26109E68C()
{
  v1 = v0[8] + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms_result;
  v2 = *v1;
  *v1 = v0[7];
  v3 = *(v1 + 8);
  *(v1 + 8) = 0;
  sub_261007204(v2, v3);
  sub_2610BCC74();

  v0[9] = sub_2610BCC64();
  v5 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26109E74C, v5, v4);
}

uint64_t sub_26109E74C()
{

  sub_2610439BC();

  return MEMORY[0x2822009F8](sub_26109E7B8, 0, 0);
}

uint64_t sub_26109E7B8()
{
  *(v0 + 80) = sub_26109D5FC();
  *(v0 + 40) = &type metadata for PASFlowStepProxiedTerms.AnalyticsEvent;
  *(v0 + 48) = &off_28738B108;
  *(v0 + 16) = 1;
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_26109E880;

  return sub_261048744(v0 + 16, 0, 0);
}

void sub_26109E880()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
    v4 = *(v3 + 8);

    v4();
  }
}

uint64_t sub_26109E9BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_260FBF860;

  return sub_26109EA4C();
}

uint64_t sub_26109EA6C()
{
  sub_2610BCC74();
  *(v0 + 64) = sub_2610BCC64();
  v2 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26109EB00, v2, v1);
}

uint64_t sub_26109EB00()
{

  sub_261044FE4();

  return MEMORY[0x2822009F8](sub_26109EB6C, 0, 0);
}

uint64_t sub_26109EB6C()
{
  *(v0 + 72) = sub_26109D5FC();
  *(v0 + 40) = &type metadata for PASFlowStepProxiedTerms.AnalyticsEvent;
  *(v0 + 48) = &off_28738B108;
  *(v0 + 16) = 2;
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_26109EC34;

  return sub_261048744(v0 + 16, 0, 0);
}

void sub_26109EC34()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
    v4 = *(v3 + 8);

    v4();
  }
}

uint64_t PASFlowStepProxiedTerms.nextStep()(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms_result);
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms_result + 8);
  if (v3 == 255)
  {
    v1 = 0x80000002610D60A0;
    sub_260FC3450();
    swift_allocError();
    *v4 = 0xD00000000000002FLL;
    *(v4 + 8) = 0x80000002610D60A0;
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    *(v4 + 32) = 1;
  }

  else if ((v3 & 1) == 0)
  {
    v5 = v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v7 = *(v5 + 8);
    sub_260FA99E0(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms_account, v15);
    sub_261007228(v2, v3);

    PASAuthResults.acceptingTerms(with:)(v2, &v14);
    sub_261007204(v2, v3);

    v8 = v14;
    type metadata accessor for PASFlowStepSendAuthResults(0);
    v9 = swift_allocObject();
    v10 = OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults__sourceAppleIDExchanger;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65448, &unk_2610C65A0);
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v9 + v10) = v11;
    v12 = v9 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults_result;
    *v12 = 0;
    *(v12 + 8) = -1;
    sub_260FA99E0(v15, v9 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults_account);
    *(v9 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults_proxiedAuthResults) = v8;
    v1 = sub_26104DC44(Strong, v7);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    sub_26109FBC8(&qword_27FE65710, type metadata accessor for PASFlowStepSendAuthResults);
    return v1;
  }

  swift_willThrow();
  sub_261007228(v2, v3);
  return v1;
}

Swift::Void __swiftcall PASFlowStepProxiedTerms.dismissCancelAlert()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v16 - v4;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v6 = sub_2610BC7B4();
  __swift_project_value_buffer(v6, qword_27FE65900);
  v7 = sub_2610BC794();
  v8 = sub_2610BCD44();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_260F97000, v7, v8, "PASFlowStepProxiedTerms dismissCancelAlert", v9, 2u);
    MEMORY[0x2666F8720](v9, -1, -1);
  }

  v10 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms_termsHandler;
  swift_beginAccess();
  sub_260FA9918(v0 + v10, &v17, &qword_27FE667C8, &qword_2610CEA68);
  if (v18)
  {
    sub_260F98E14(&v17, v19);
    v11 = sub_2610BCC94();
    (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
    sub_260FA99E0(v19, &v17);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v1;
    sub_260F98E14(&v17, (v12 + 5));

    sub_261042434(0, 0, v5, &unk_2610CEAA8, v12);

    __swift_destroy_boxed_opaque_existential_0Tm(v19);
  }

  else
  {
    sub_260FA9980(&v17, &qword_27FE667C8, &qword_2610CEA68);
    v13 = sub_2610BC794();
    v14 = sub_2610BCD64();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_260F97000, v13, v14, "PASFlowStepProxiedTerms dismissCancelAlert termsHandler is nil", v15, 2u);
      MEMORY[0x2666F8720](v15, -1, -1);
    }
  }
}

uint64_t sub_26109F250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_260FBF860;

  return PASFlowStepProxiedTerms.presentTerms(with:)(a5);
}

uint64_t sub_26109F31C()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms_account));

  sub_261007204(*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms_result), *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms_result + 8));
  return sub_260FA9980(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms_termsHandler, &qword_27FE667C8, &qword_2610CEA68);
}

uint64_t PASFlowStepProxiedTerms.deinit()
{
  v0 = PASSourceFlowStepBase.deinit();

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms_account));

  sub_261007204(*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms_result), *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms_result + 8));
  sub_260FA9980(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms_termsHandler, &qword_27FE667C8, &qword_2610CEA68);
  return v0;
}

uint64_t PASFlowStepProxiedTerms.__deallocating_deinit()
{
  v0 = PASFlowStepProxiedTerms.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26109F4F4(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD00000000000001CLL;
  v3 = *a1;
  v4 = "edTermsPresented";
  if (v3 == 1)
  {
    v5 = 0xD00000000000001CLL;
  }

  else
  {
    v5 = 0xD00000000000001FLL;
  }

  if (v3 == 1)
  {
    v6 = "edTermsPresented";
  }

  else
  {
    v6 = "PASFlowStepProxiedTermsAgree";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000020;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = "t";
  }

  if (*a2 != 1)
  {
    v2 = 0xD00000000000001FLL;
    v4 = "PASFlowStepProxiedTermsAgree";
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000020;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = "t";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2610BD384();
  }

  return v11 & 1;
}

uint64_t sub_26109F5CC()
{
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_26109F668(uint64_t a1)
{
  sub_2610BCA54();
}

uint64_t sub_26109F6F0(uint64_t a1)
{
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

unint64_t sub_26109F788@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26109FF88(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26109F7B8(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001CLL;
  v3 = "edTermsPresented";
  if (*v1 != 1)
  {
    v2 = 0xD00000000000001FLL;
    v3 = "PASFlowStepProxiedTermsAgree";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD000000000000020;
    v4 = "t";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

uint64_t sub_26109F814(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_260FB6DB4;

  return sub_26109E5D4(a1);
}

uint64_t sub_26109F8AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_260FBF860;

  return sub_26109E9BC();
}

uint64_t sub_26109F93C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FBF860;

  return sub_26109F250(a1, v4, v5, v6, (v1 + 5));
}

unint64_t sub_26109F9FC(void *a1)
{
  a1[1] = sub_26109FA34();
  a1[2] = sub_26109FA88();
  result = sub_26109FADC();
  a1[3] = result;
  return result;
}

unint64_t sub_26109FA34()
{
  result = qword_27FE66800;
  if (!qword_27FE66800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66800);
  }

  return result;
}

unint64_t sub_26109FA88()
{
  result = qword_27FE66808;
  if (!qword_27FE66808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66808);
  }

  return result;
}

unint64_t sub_26109FADC()
{
  result = qword_27FE66810;
  if (!qword_27FE66810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66810);
  }

  return result;
}

unint64_t sub_26109FB30()
{
  result = qword_27FE66818;
  if (!qword_27FE66818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66818);
  }

  return result;
}

uint64_t sub_26109FB84(uint64_t a1)
{
  result = sub_26109FBC8(&qword_27FE653D0, type metadata accessor for PASFlowStepProxiedTerms);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26109FBC8(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t type metadata accessor for PASFlowStepProxiedTerms(uint64_t a1)
{
  result = qword_27FE66820;
  if (!qword_27FE66820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of PASTermsHandlerProtocol.loadProxiedTerms(proxiedDevice:anisetteDataProvider:appProvidedContext:acceptAction:declineAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = (*(a9 + 8) + **(a9 + 8));
  v17 = swift_task_alloc();
  *(v9 + 16) = v17;
  *v17 = v9;
  v17[1] = sub_260FBF860;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PASFlowStepProxiedTermsError(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for PASFlowStepProxiedTermsError(uint64_t result, int a2, int a3)
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

uint64_t sub_26109FE34(uint64_t a1)
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

uint64_t sub_26109FE50(uint64_t result, int a2)
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

unint64_t sub_26109FF34()
{
  result = qword_27FE66838;
  if (!qword_27FE66838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66838);
  }

  return result;
}

unint64_t sub_26109FF88(uint64_t a1, uint64_t a2)
{
  v2 = sub_2610BD154();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t PASFlowStepSafetySettings.nextStep()()
{
  v1 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  sub_260FA99E0(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepSafetySettings_account, v10);
  v4 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepSafetySettings_authResults);
  type metadata accessor for PASFlowStepSendSignInResults(0);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC21ProximityAppleIDSetup28PASFlowStepSendSignInResults__messageSessionProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE657C0, &qword_2610BEE90);
  v7 = swift_allocObject();
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0;
  *(v5 + v6) = v7;
  sub_260FA99E0(v10, v5 + OBJC_IVAR____TtC21ProximityAppleIDSetup28PASFlowStepSendSignInResults_account);
  *(v5 + OBJC_IVAR____TtC21ProximityAppleIDSetup28PASFlowStepSendSignInResults_authResults) = v4;

  v8 = sub_26104E0E4(Strong, v3);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(v10);
  sub_2610A03A0(&qword_27FE66840, type metadata accessor for PASFlowStepSendSignInResults);
  return v8;
}

void sub_2610A0198()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepSafetySettings_account));

  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepSafetySettings_result);
  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepSafetySettings_result + 8);

  sub_260FEBBC8(v1, v2);
}

uint64_t PASFlowStepSafetySettings.deinit()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_260F99170(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepSafetySettings_account));

  sub_260FEBBC8(*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepSafetySettings_result), *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepSafetySettings_result + 8));
  return v0;
}

uint64_t PASFlowStepSafetySettings.__deallocating_deinit()
{
  PASFlowStepSafetySettings.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2610A035C(uint64_t a1)
{
  result = sub_2610A03A0(&unk_27FE66870, type metadata accessor for PASFlowStepSafetySettings);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2610A03A0(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t type metadata accessor for PASFlowStepSafetySettings(uint64_t a1)
{
  result = qword_27FE66848;
  if (!qword_27FE66848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PASPickerSelection.selectedMemberId.getter()
{
  sub_260FDD49C(v0, &v6);
  if (v8 != 3)
  {
    if (v8 == 2)
    {
      v1 = [v6[2] aa_altDSID];
      if (!v1)
      {
LABEL_5:

        v2 = 0;
LABEL_8:
        __swift_destroy_boxed_opaque_existential_0Tm(v7);
        return v2;
      }
    }

    else
    {
      if (v8 != 1)
      {
        sub_260FDD4F8(&v6);
        return 0;
      }

      v1 = [v6[2] altDSID];
      if (!v1)
      {
        goto LABEL_5;
      }
    }

    v3 = v1;
    v2 = sub_2610BCA04();

    goto LABEL_8;
  }

  v4 = v6;

  if (*(v4 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_altDSID + 8))
  {
    v2 = *(v4 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_altDSID);
  }

  else
  {
    v2 = *(v4 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_appleID);
  }

  return v2;
}

uint64_t PASPickerSelection.description.getter()
{
  sub_260FDD49C(v0, &v2);
  if (v4 <= 1u)
  {
    if (v4)
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v3);
      return 0x6E65646E65706564;
    }

    else
    {
      sub_260FDD4F8(&v2);
      return 7824750;
    }
  }

  else if (v4 == 2)
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v3);
    return 0x6C616E6F73726570;
  }

  else if (v4 == 3)
  {
    sub_260FDD4F8(&v2);
    return 0xD000000000000016;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t get_enum_tag_for_layout_string_21ProximityAppleIDSetup18PASPickerSelectionO(uint64_t a1)
{
  if ((*(a1 + 48) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 48) & 7;
  }
}

uint64_t sub_2610A071C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 49))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 48);
  if (v3 >= 5)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2610A0758(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_2610A07A8(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 48) = a2;
  return result;
}

unint64_t sub_2610A07FC(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE658A0, &unk_2610C7BB0);
  if (a3)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2610BF410;
    strcpy((inited + 32), "member_count");
    *(inited + 72) = MEMORY[0x277D83B88];
    *(inited + 80) = &protocol witness table for Int;
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    *(inited + 48) = a1;
    *(inited + 88) = 0x6F697463656C6573;
    *(inited + 96) = 0xE90000000000006ELL;
    if (a2)
    {
      v7 = (*(a2 + 16) >> 59) & 0x18;
      v8 = *&aDependenperson[v7];
      v9 = *&aDependenperson[v7 + 24];
      *(inited + 128) = MEMORY[0x277D837D0];
      *(inited + 136) = &protocol witness table for String;
      *(inited + 104) = v8;
    }

    else
    {
      *(inited + 128) = MEMORY[0x277D837D0];
      *(inited + 136) = &protocol witness table for String;
      *(inited + 104) = 7824750;
      v9 = 0xE300000000000000;
    }

    *(inited + 112) = v9;
    v12 = sub_260FA8F34(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63BA0, &qword_2610BED60);
    swift_arrayDestroy();
  }

  else
  {
    v10 = swift_initStackObject();
    *(v10 + 16) = xmmword_2610BF400;
    *(v10 + 32) = 0x635F7265626D656DLL;
    v11 = v10 + 32;
    *(v10 + 72) = MEMORY[0x277D83B88];
    *(v10 + 80) = &protocol witness table for Int;
    *(v10 + 40) = 0xEC000000746E756FLL;
    *(v10 + 48) = a1;
    v12 = sub_260FA8F34(v10);
    swift_setDeallocating();
    sub_2610A09F8(v11);
  }

  return v12;
}

uint64_t sub_2610A09F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63BA0, &qword_2610BED60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2610A0A60(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t PASFlowStepAIDASignIn.__allocating_init(delegate:account:authResults:serviceOwnersManager:)(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void *a5)
{
  v11 = a3[3];
  v12 = a3[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a3, v11);
  v14 = sub_2610A5DC0(a1, a2, v13, a4, a5, v5, v11, v12);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  return v14;
}

ProximityAppleIDSetup::PASCDPEnrollmentStatus_optional __swiftcall PASCDPEnrollmentStatus.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_2610A0BD4(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 144) = a1;
  *(v2 + 152) = v3;
  return MEMORY[0x2822009F8](sub_2610A0BF8, 0, 0);
}

uint64_t sub_2610A0BF8()
{
  v2 = v0[18];
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_260FF73A4;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE668C0, &qword_2610C4530);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2610A0A60;
  v0[13] = &block_descriptor_8;
  v0[14] = v3;
  [v1 signInToAllServicesInBackgroundUsingContext:v2 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2610A0DEC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v3 = 0xD000000000000016;
  }

  if (v2)
  {
    v4 = "PASFlowStepProxiedTermsDisagree";
  }

  else
  {
    v4 = "unableToInitCDPContext";
  }

  if (*a2)
  {
    v5 = 0xD000000000000017;
  }

  else
  {
    v5 = 0xD000000000000016;
  }

  if (*a2)
  {
    v6 = "unableToInitCDPContext";
  }

  else
  {
    v6 = "PASFlowStepProxiedTermsDisagree";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2610BD384();
  }

  return v8 & 1;
}

uint64_t sub_2610A0E94()
{
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_2610A0F10(uint64_t a1)
{
  sub_2610BCA54();
}

uint64_t sub_2610A0F78(uint64_t a1)
{
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_2610A0FF0@<X0>(char *a2@<X8>)
{
  v3 = sub_2610BD154();

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

void sub_2610A1050(unint64_t *a1@<X8>)
{
  v2 = "unableToInitCDPContext";
  v3 = 0xD000000000000016;
  if (*v1)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v2 = "PASFlowStepProxiedTermsDisagree";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

unint64_t sub_2610A108C()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v3;
  v4 = sub_2610B4188(v1);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  v6 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &unk_27FE63C30, &unk_2610BEE00);
  return v6;
}

uint64_t sub_2610A1154(uint64_t a1)
{
  v2 = sub_2610A6474();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2610A1190(uint64_t a1)
{
  v2 = sub_2610A6474();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t PASFlowStepAIDASignIn.authResults.getter@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_authResults;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

uint64_t sub_2610A124C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn__messageSessionProvider);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &qword_27FE63CB0, &unk_2610BFDB0);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE63CB0, &unk_2610BFDB0);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9E15C(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &qword_27FE63CB0, &unk_2610BFDB0);
  swift_endAccess();
}

uint64_t sub_2610A1388@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn__accountManager);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &qword_27FE63B10, &qword_2610BED30);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE63B10, &qword_2610BED30);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9F080(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &qword_27FE63B10, &qword_2610BED30);
  swift_endAccess();
}

uint64_t PASFlowStepAIDASignIn.init(delegate:account:authResults:serviceOwnersManager:)(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void *a5)
{
  v11 = a3[3];
  v12 = a3[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a3, v11);
  MEMORY[0x28223BE20](v13, v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15);
  v17 = sub_2610A5C48(a1, a2, v15, a4, a5, v5, v11, v12);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  return v17;
}

uint64_t PASFlowStepAIDASignIn.isPersonalSignIn.getter()
{
  sub_260FA99E0(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_account, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66860, &qword_2610BFBA0);
  type metadata accessor for PASFamilyMember();
  v1 = swift_dynamicCast();
  if (v1)
  {
  }

  return v1 ^ 1u;
}

uint64_t PASFlowStepAIDASignIn.performSignIn(with:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = swift_task_alloc();
  v3[5] = v4;
  *v4 = v3;
  v4[1] = sub_2610A1704;

  return sub_2610A1C58();
}

uint64_t sub_2610A1704(char a1)
{
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_2610A1804, 0, 0);
}

uint64_t sub_2610A1804()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 32) + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_result;
    v2 = *v1;
    *v1 = 1;
    v3 = *(v1 + 8);
    *(v1 + 8) = 0;
    sub_260FEBBC8(v2, v3);
    sub_2610BCC74();
    *(v0 + 64) = sub_2610BCC64();
    v5 = sub_2610BCBF4();

    return MEMORY[0x2822009F8](sub_2610A1BF0, v5, v4);
  }

  else
  {
    v6 = swift_task_alloc();
    *(v0 + 48) = v6;
    *v6 = v0;
    v6[1] = sub_2610A1938;
    v7 = *(v0 + 24);
    v8 = *(v0 + 16);

    return sub_2610A20A8(v8, v7);
  }
}

uint64_t sub_2610A1938(char a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_2610A1B2C;
  }

  else
  {
    *(v4 + 73) = a1 & 1;
    v5 = sub_2610A1A64;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2610A1A64()
{
  v1 = *(v0 + 56) != 0;
  v2 = *(v0 + 32) + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_result;
  v3 = *v2;
  *v2 = *(v0 + 73);
  v4 = *(v2 + 8);
  *(v2 + 8) = v1;
  sub_260FEBBC8(v3, v4);
  sub_2610BCC74();
  *(v0 + 64) = sub_2610BCC64();
  v6 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_2610A1BF0, v6, v5);
}

uint64_t sub_2610A1B2C()
{
  v1 = v0[7];
  v2 = v0[4] + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_result;
  v3 = *v2;
  *v2 = v1;
  v4 = *(v2 + 8);
  *(v2 + 8) = v1 != 0;
  sub_260FEBBC8(v3, v4);
  sub_2610BCC74();
  v0[8] = sub_2610BCC64();
  v6 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_2610A1BF0, v6, v5);
}

uint64_t sub_2610A1BF0()
{

  sub_2610439BC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2610A1C78()
{
  v17 = v0;
  v1 = v0[9] + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v3 = v0[9];
    v4 = *(v1 + 8);
    v5 = OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_authResults;
    swift_beginAccess();
    v16 = *(v3 + v5);

    sub_2610A2880(&v16);

    ObjectType = swift_getObjectType();
    v0[8] = *(v3 + v5);
    v7 = *(v4 + 16);

    v15 = (v7 + *v7);
    v8 = swift_task_alloc();
    v0[11] = v8;
    *v8 = v0;
    v8[1] = sub_2610A1F24;

    return (v15)(v0 + 8, ObjectType, v4);
  }

  else
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v10 = sub_2610BC7B4();
    __swift_project_value_buffer(v10, qword_27FE65900);
    v11 = sub_2610BC794();
    v12 = sub_2610BCD74();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_260F97000, v11, v12, "PASFlowStepAIDASignIn delegate is nil in askForSignIn", v13, 2u);
      MEMORY[0x2666F8720](v13, -1, -1);
    }

    v14 = v0[1];

    return v14(1);
  }
}

uint64_t sub_2610A1F24(char a1)
{
  *(*v1 + 96) = a1;

  return MEMORY[0x2822009F8](sub_2610A2044, 0, 0);
}

uint64_t sub_2610A2044()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 96);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2610A20A8(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_2610A20CC, 0, 0);
}

uint64_t sub_2610A20CC()
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v1 = sub_2610BC7B4();
    __swift_project_value_buffer(v1, qword_27FE65900);
    v2 = sub_2610BC794();
    v3 = sub_2610BCD74();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_260F97000, v2, v3, "PASFlowStepAIDASignIn delegate is nil in performSignIn", v4, 2u);
      MEMORY[0x2666F8720](v4, -1, -1);
    }
  }

  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_2610A2258;
  v6 = v0[6];
  v7 = v0[5];

  return sub_2610A2B38(v7, v6);
}

uint64_t sub_2610A2258(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 72) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5(0);
  }

  else
  {
    v7 = swift_task_alloc();
    *(v3 + 80) = v7;
    *v7 = v4;
    v7[1] = sub_2610A23D0;

    return sub_2610A3B68();
  }
}

uint64_t sub_2610A23D0()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_2610A27B0;
  }

  else
  {
    v2 = sub_2610A24E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2610A24E4()
{
  v1 = (v0[7] + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_serviceOwnersManager);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v7 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_2610A261C;
  v5 = v0[9];

  return v7(v5, v2, v3);
}

uint64_t sub_2610A261C(char a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_2610A2818;
  }

  else
  {
    *(v4 + 112) = a1 & 1;
    v5 = sub_2610A2748;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2610A2748()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 112);

  return v1(v2);
}

uint64_t sub_2610A27B0()
{
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_2610A2818()
{
  v1 = *(v0 + 8);

  return v1(0);
}

void sub_2610A2880(uint64_t *a1)
{
  v2 = v1;
  v3 = sub_260FDFE64(*a1);
  if (qword_27FE637F0 != -1)
  {
    swift_once();
  }

  v4 = qword_27FE64830;
  type metadata accessor for AKAppleIDAuthenticationAppProvidedContext(0);
  v22 = v5;
  *&v21 = v4;
  sub_260FA6A84(&v21, v20);
  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_260FA6B3C(v20, 0xD000000000000012, 0x80000002610D2F20, isUniquelyReferenced_nonNull_native);
  v8 = sub_260FDF608(v3);

  *&v21 = sub_260FA8A9C(MEMORY[0x277D84F90]);

  sub_260FE4DD0(v9, &v21, sub_260FE618C, 0, v8);
  swift_bridgeObjectRelease_n();
  v10 = sub_260FE03F8(v21);

  v11 = OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_authResults;
  swift_beginAccess();
  *(v2 + v11) = v10;

  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v12 = sub_2610BC7B4();
  __swift_project_value_buffer(v12, qword_27FE65900);

  v13 = sub_2610BC794();
  v14 = sub_2610BCD54();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&v20[0] = v16;
    *v15 = 141558274;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2080;

    v17 = sub_2610BCA34();
    v19 = sub_260FA5970(v17, v18, v20);

    *(v15 + 14) = v19;
    _os_log_impl(&dword_260F97000, v13, v14, "PASFlowStepAIDASignIn addAppProvidedContext to AuthResults:%{mask.hash}s", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    MEMORY[0x2666F8720](v16, -1, -1);
    MEMORY[0x2666F8720](v15, -1, -1);
  }
}

uint64_t sub_2610A2B38(uint64_t a1, uint64_t a2)
{
  v3[38] = a2;
  v3[39] = v2;
  v3[37] = a1;
  return MEMORY[0x2822009F8](sub_2610A2B5C, 0, 0);
}

uint64_t sub_2610A2B5C()
{
  v0[40] = OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_authResults;
  swift_beginAccess();

  sub_260FDF8D0(v1);

  v2 = objc_allocWithZone(MEMORY[0x277CFD4A8]);
  v3 = sub_2610BC8F4();

  v4 = [v2 initWithAuthenticationResults_];
  v0[41] = v4;

  if (v4)
  {
    sub_2610A124C((v0 + 7));
    v5 = v0[10];
    v6 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v5);
    v11 = (*(v6 + 16) + **(v6 + 16));
    v7 = swift_task_alloc();
    v0[42] = v7;
    *v7 = v0;
    v7[1] = sub_2610A2D98;

    return v11(v0 + 2, v5, v6);
  }

  else
  {
    sub_2610A63D8();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_2610A2D98()
{

  if (v0)
  {

    v1 = sub_2610A3500;
  }

  else
  {
    v1 = sub_2610A2EB0;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_2610A2EB0()
{
  v38 = v0;
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  sub_260FA99E0(*(v0 + 312) + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_account, v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66860, &qword_2610BFBA0);
  type metadata accessor for PASFamilyMember();
  if (swift_dynamicCast())
  {

    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v1 = sub_2610BC7B4();
    __swift_project_value_buffer(v1, qword_27FE65900);
    v2 = sub_2610BC794();
    v3 = sub_2610BCD54();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_19;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASFlowStepAIDASignIn this is not personal sigin, so skip on setting sharing channel", v4, 2u);
    v5 = v4;
LABEL_18:
    MEMORY[0x2666F8720](v5, -1, -1);
LABEL_19:

    goto LABEL_21;
  }

  sub_260FA9918(v0 + 16, v0 + 136, &unk_27FE668E0, &qword_2610C8230);
  if (*(v0 + 160))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64008, &unk_2610BF9A0);
    sub_260FA9AB4(0, &qword_27FE64010, 0x277D02880);
    if (swift_dynamicCast())
    {
      v6 = *(v0 + 288);
      if (qword_27FE63808 != -1)
      {
        swift_once();
      }

      v7 = *(v0 + 328);
      v8 = sub_2610BC7B4();
      __swift_project_value_buffer(v8, qword_27FE65900);
      v9 = v6;
      v10 = v7;
      v11 = sub_2610BC794();
      v12 = sub_2610BCD54();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = *(v0 + 328);
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *v14 = 138543874;
        *(v14 + 4) = v9;
        *(v14 + 12) = 2160;
        *(v14 + 14) = 1752392040;
        *(v14 + 22) = 2112;
        *(v14 + 24) = v13;
        *v15 = v9;
        v15[1] = v13;
        v16 = v9;
        v17 = v13;
        _os_log_impl(&dword_260F97000, v11, v12, "PASFlowStepAIDASignIn setting sharing channel (%{public}@ on cdp context (%{mask.hash}@)", v14, 0x20u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63FF0, &unk_2610BFDA0);
        swift_arrayDestroy();
        MEMORY[0x2666F8720](v15, -1, -1);
        MEMORY[0x2666F8720](v14, -1, -1);
      }

      v18 = *(v0 + 328);

      [v18 setSharingChannel_];
      goto LABEL_21;
    }
  }

  else
  {
    sub_260FA9980(v0 + 136, &unk_27FE668E0, &qword_2610C8230);
  }

  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v19 = *(v0 + 328);
  v20 = sub_2610BC7B4();
  __swift_project_value_buffer(v20, qword_27FE65900);
  sub_260FA9918(v0 + 16, v0 + 176, &unk_27FE668E0, &qword_2610C8230);
  v21 = v19;
  v2 = sub_2610BC794();
  v22 = sub_2610BCD64();

  if (os_log_type_enabled(v2, v22))
  {
    v23 = *(v0 + 328);
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = v36;
    *v24 = 136446722;
    sub_260FA9918(v0 + 176, v0 + 216, &unk_27FE668E0, &qword_2610C8230);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE668E0, &qword_2610C8230);
    v26 = sub_2610BCA34();
    v28 = v27;
    sub_260FA9980(v0 + 176, &unk_27FE668E0, &qword_2610C8230);
    v29 = sub_260FA5970(v26, v28, &v37);

    *(v24 + 4) = v29;
    *(v24 + 12) = 2160;
    *(v24 + 14) = 1752392040;
    *(v24 + 22) = 2112;
    *(v24 + 24) = v23;
    *v25 = v23;
    v30 = v23;
    _os_log_impl(&dword_260F97000, v2, v22, "PASFlowStepAIDASignIn unable to cast/unwrap message session (%{public}s for cdp context (%{mask.hash}@)", v24, 0x20u);
    sub_260FA9980(v25, &qword_27FE63FF0, &unk_2610BFDA0);
    MEMORY[0x2666F8720](v25, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    MEMORY[0x2666F8720](v36, -1, -1);
    v5 = v24;
    goto LABEL_18;
  }

  sub_260FA9980(v0 + 176, &unk_27FE668E0, &qword_2610C8230);
LABEL_21:
  v31 = *(v0 + 328);
  v32 = (*(v0 + 296))(v31);
  [v32 setShouldForceOperation_];
  [v32 setOperationUIPermissions_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64290, &unk_2610C0770);
  v33 = sub_2610BC8F4();

  [v32 setAuthenticationResults_];

  sub_260FA9980(v0 + 16, &unk_27FE668E0, &qword_2610C8230);
  v34 = *(v0 + 8);

  return v34(v32);
}

uint64_t sub_2610A3500()
{
  v38 = v0;
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  *(v0 + 16) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  sub_260FA99E0(*(v0 + 312) + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_account, v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66860, &qword_2610BFBA0);
  type metadata accessor for PASFamilyMember();
  if (swift_dynamicCast())
  {

    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v1 = sub_2610BC7B4();
    __swift_project_value_buffer(v1, qword_27FE65900);
    v2 = sub_2610BC794();
    v3 = sub_2610BCD54();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_19;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASFlowStepAIDASignIn this is not personal sigin, so skip on setting sharing channel", v4, 2u);
    v5 = v4;
LABEL_18:
    MEMORY[0x2666F8720](v5, -1, -1);
LABEL_19:

    goto LABEL_21;
  }

  sub_260FA9918(v0 + 16, v0 + 136, &unk_27FE668E0, &qword_2610C8230);
  if (*(v0 + 160))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64008, &unk_2610BF9A0);
    sub_260FA9AB4(0, &qword_27FE64010, 0x277D02880);
    if (swift_dynamicCast())
    {
      v6 = *(v0 + 288);
      if (qword_27FE63808 != -1)
      {
        swift_once();
      }

      v7 = *(v0 + 328);
      v8 = sub_2610BC7B4();
      __swift_project_value_buffer(v8, qword_27FE65900);
      v9 = v6;
      v10 = v7;
      v11 = sub_2610BC794();
      v12 = sub_2610BCD54();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = *(v0 + 328);
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *v14 = 138543874;
        *(v14 + 4) = v9;
        *(v14 + 12) = 2160;
        *(v14 + 14) = 1752392040;
        *(v14 + 22) = 2112;
        *(v14 + 24) = v13;
        *v15 = v9;
        v15[1] = v13;
        v16 = v9;
        v17 = v13;
        _os_log_impl(&dword_260F97000, v11, v12, "PASFlowStepAIDASignIn setting sharing channel (%{public}@ on cdp context (%{mask.hash}@)", v14, 0x20u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63FF0, &unk_2610BFDA0);
        swift_arrayDestroy();
        MEMORY[0x2666F8720](v15, -1, -1);
        MEMORY[0x2666F8720](v14, -1, -1);
      }

      v18 = *(v0 + 328);

      [v18 setSharingChannel_];
      goto LABEL_21;
    }
  }

  else
  {
    sub_260FA9980(v0 + 136, &unk_27FE668E0, &qword_2610C8230);
  }

  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v19 = *(v0 + 328);
  v20 = sub_2610BC7B4();
  __swift_project_value_buffer(v20, qword_27FE65900);
  sub_260FA9918(v0 + 16, v0 + 176, &unk_27FE668E0, &qword_2610C8230);
  v21 = v19;
  v2 = sub_2610BC794();
  v22 = sub_2610BCD64();

  if (os_log_type_enabled(v2, v22))
  {
    v23 = *(v0 + 328);
    v24 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = v36;
    *v24 = 136446722;
    sub_260FA9918(v0 + 176, v0 + 216, &unk_27FE668E0, &qword_2610C8230);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE668E0, &qword_2610C8230);
    v25 = sub_2610BCA34();
    v27 = v26;
    sub_260FA9980(v0 + 176, &unk_27FE668E0, &qword_2610C8230);
    v28 = sub_260FA5970(v25, v27, &v37);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2160;
    *(v24 + 14) = 1752392040;
    *(v24 + 22) = 2112;
    *(v24 + 24) = v23;
    *v35 = v23;
    v29 = v23;
    _os_log_impl(&dword_260F97000, v2, v22, "PASFlowStepAIDASignIn unable to cast/unwrap message session (%{public}s for cdp context (%{mask.hash}@)", v24, 0x20u);
    sub_260FA9980(v35, &qword_27FE63FF0, &unk_2610BFDA0);
    MEMORY[0x2666F8720](v35, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    MEMORY[0x2666F8720](v36, -1, -1);
    v5 = v24;
    goto LABEL_18;
  }

  sub_260FA9980(v0 + 176, &unk_27FE668E0, &qword_2610C8230);
LABEL_21:
  v30 = *(v0 + 328);
  v31 = (*(v0 + 296))(v30);
  [v31 setShouldForceOperation_];
  [v31 setOperationUIPermissions_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64290, &unk_2610C0770);
  v32 = sub_2610BC8F4();

  [v31 setAuthenticationResults_];

  sub_260FA9980(v0 + 16, &unk_27FE668E0, &qword_2610C8230);
  v33 = *(v0 + 8);

  return v33(v31);
}

uint64_t sub_2610A3B88()
{
  sub_260FA99E0(v0[18] + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_account, (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66860, &qword_2610BFBA0);
  type metadata accessor for PASFamilyMember();
  if (swift_dynamicCast())
  {

    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v1 = sub_2610BC7B4();
    __swift_project_value_buffer(v1, qword_27FE65900);
    v2 = sub_2610BC794();
    v3 = sub_2610BCD54();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_260F97000, v2, v3, "PASFlowStepAIDASignIn.startCDPServer this is not personal sigin. Don't start CDP server", v4, 2u);
      MEMORY[0x2666F8720](v4, -1, -1);
    }

    v5 = v0[1];

    return v5(0);
  }

  else
  {
    sub_2610A124C((v0 + 12));
    v7 = v0[15];
    v8 = v0[16];
    __swift_project_boxed_opaque_existential_1(v0 + 12, v7);
    v10 = (*(v8 + 16) + **(v8 + 16));
    v9 = swift_task_alloc();
    v0[19] = v9;
    *v9 = v0;
    v9[1] = sub_2610A3E0C;

    return v10(v0 + 7, v7, v8);
  }
}

uint64_t sub_2610A3E0C()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_2610A41A0;
  }

  else
  {
    v2 = sub_2610A3F20;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2610A3F20()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
  v1 = v0[10];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v2 = sub_260FA8D08(MEMORY[0x277D84F90]);
  v0[21] = v2;
  v3 = swift_task_alloc();
  v0[22] = v3;
  *v3 = v0;
  v3[1] = sub_2610A4018;
  v4 = MEMORY[0x277D839B0];

  return sub_260FAECF0((v0 + 24), 11, 0, 0, 1, v2, v1, v4);
}

uint64_t sub_2610A4018()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_2610A4208;
  }

  else
  {

    v2 = sub_2610A4134;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2610A4134()
{
  v1 = *(v0 + 192);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2610A41A0()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_2610A4208()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t PASFlowStepAIDASignIn.nextStep()()
{
  v1 = (v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_result);
  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_result + 8);
  if (v2 == 255)
  {
    v13 = 0x80000002610D6260;
    sub_260FC3450();
    swift_allocError();
    *v14 = 0xD000000000000023;
    *(v14 + 8) = 0x80000002610D6260;
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = 1;
    swift_willThrow();
  }

  else
  {
    v3 = v0;
    if (v2)
    {
      v4 = *v1;
      sub_260FEBBEC(*v1, *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_result + 8));
      sub_260FEBC04(v4, 1);
      if (qword_27FE63808 != -1)
      {
        swift_once();
      }

      v5 = sub_2610BC7B4();
      __swift_project_value_buffer(v5, qword_27FE65900);
      sub_260FEBC04(v4, 1);
      v6 = sub_2610BC794();
      v7 = sub_2610BCD64();
      sub_260FEBBC8(v4, v2);
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v43 = v9;
        *v8 = 136446210;
        v46 = v4;
        sub_260FEBC04(v4, 1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
        v10 = sub_2610BCA34();
        v12 = sub_260FA5970(v10, v11, &v43);

        *(v8 + 4) = v12;
        _os_log_impl(&dword_260F97000, v6, v7, "PASFlowStepAIDASignIn failed with error:\n%{public}s", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v9);
        MEMORY[0x2666F8720](v9, -1, -1);
        MEMORY[0x2666F8720](v8, -1, -1);
      }

      sub_260FEBBEC(v4, v2);
      v13 = sub_2610A5A28(v4);
      sub_260FEBBC8(v4, v2);
      if (v13)
      {
        swift_willThrow();
      }

      else
      {
        v43 = 0;
        v44 = 0xE000000000000000;
        sub_2610BCF84();
        MEMORY[0x2666F7380](0xD000000000000029, 0x80000002610D6290);
        v46 = v4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
        sub_2610BD0A4();
        v13 = v43;
        v40 = v44;
        sub_260FC3450();
        swift_allocError();
        *v41 = v13;
        *(v41 + 8) = v40;
        *(v41 + 16) = &unk_2610CF0D0;
        *(v41 + 24) = v3;
        *(v41 + 32) = 3;
        swift_willThrow();

        sub_260FEBBC8(v4, v2);
      }

      sub_260FEBBC8(v4, v2);
    }

    else
    {
      v15 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_account;
      v16 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_account + 24);
      v17 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_account + 32);
      __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_account), v16);
      v18 = (*(v17 + 24))(v16, v17);
      if (v19 && (v20 = v18, v21 = v19, sub_2610A1388(&v43), __swift_project_boxed_opaque_existential_1(&v43, v45), v22 = _s21ProximityAppleIDSetup24AKAccountManagerProtocolPAAE17fetchUserAgeRange7altDSIDSo06AKUseriJ0VSS_tF_0(v20, v21), , __swift_destroy_boxed_opaque_existential_0Tm(&v43), (v22 - 1) <= 1))
      {
        v23 = v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate;
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        v25 = *(v23 + 8);
        sub_260FA99E0(v15, &v43);
        v26 = OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_authResults;
        swift_beginAccess();
        v27 = *(v3 + v26);
        type metadata accessor for PASFlowStepSafetySettings(0);
        v28 = swift_allocObject();
        v29 = v28 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepSafetySettings_result;
        *v29 = 0;
        *(v29 + 8) = -1;
        sub_260FA99E0(&v43, v28 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepSafetySettings_account);
        *(v28 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepSafetySettings_authResults) = v27;

        v13 = sub_26104E0E4(Strong, v25);
        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0Tm(&v43);
        v30 = &unk_27FE66870;
        v31 = type metadata accessor for PASFlowStepSafetySettings;
      }

      else
      {
        v32 = v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate;
        swift_beginAccess();
        v33 = swift_unknownObjectWeakLoadStrong();
        v34 = *(v32 + 8);
        sub_260FA99E0(v15, &v43);
        v35 = OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_authResults;
        swift_beginAccess();
        v36 = *(v3 + v35);
        type metadata accessor for PASFlowStepSendSignInResults(0);
        v37 = swift_allocObject();
        v38 = OBJC_IVAR____TtC21ProximityAppleIDSetup28PASFlowStepSendSignInResults__messageSessionProvider;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE657C0, &qword_2610BEE90);
        v39 = swift_allocObject();
        *(v39 + 16) = 0u;
        *(v39 + 32) = 0u;
        *(v39 + 48) = 0;
        *(v37 + v38) = v39;
        sub_260FA99E0(&v43, v37 + OBJC_IVAR____TtC21ProximityAppleIDSetup28PASFlowStepSendSignInResults_account);
        *(v37 + OBJC_IVAR____TtC21ProximityAppleIDSetup28PASFlowStepSendSignInResults_authResults) = v36;

        v13 = sub_26104E0E4(v33, v34);
        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0Tm(&v43);
        v30 = &qword_27FE66840;
        v31 = type metadata accessor for PASFlowStepSendSignInResults;
      }

      sub_2610A60CC(v30, v31);
    }
  }

  return v13;
}

uint64_t sub_2610A4890(uint64_t a1)
{
  v1[5] = a1;
  sub_2610BCC74();
  v1[6] = sub_2610BCC64();
  v3 = sub_2610BCBF4();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](sub_2610A4928, v3, v2);
}

uint64_t sub_2610A4928()
{
  v1 = v0[5] + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v5 = sub_2610A60CC(&unk_27FE64F80, type metadata accessor for PASFlowStepAIDASignIn);
    v6 = *(v3 + 8);
    v11 = (*(v6 + 24) + **(v6 + 24));
    v7 = swift_task_alloc();
    v0[10] = v7;
    *v7 = v0;
    v7[1] = sub_2610A4AFC;
    v8 = v0[5];

    return v11(v8, v5, ObjectType, v6);
  }

  else
  {

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_2610A4AFC()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_260FF59C0, v3, v2);
}

void sub_2610A4C70()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_account));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_serviceOwnersManager));

  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_result);
  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_result + 8);

  sub_260FEBBC8(v1, v2);
}

uint64_t PASFlowStepAIDASignIn.deinit()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_260F99170(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_account));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_serviceOwnersManager));

  sub_260FEBBC8(*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_result), *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_result + 8));
  return v0;
}

uint64_t PASFlowStepAIDASignIn.__deallocating_deinit()
{
  PASFlowStepAIDASignIn.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

Swift::Void __swiftcall PASFlowStepAIDASignIn.cdpEnrollmentStatus(_:)(ProximityAppleIDSetup::PASCDPEnrollmentStatus a1)
{
  v2 = v1;
  v3 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v19[-v6];
  v8 = *v3;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v9 = sub_2610BC7B4();
  __swift_project_value_buffer(v9, qword_27FE65900);
  v10 = sub_2610BC794();
  v11 = sub_2610BCD84();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136446210;
    v19[7] = v8;
    v14 = sub_2610BCA34();
    v16 = sub_260FA5970(v14, v15, &v20);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_260F97000, v10, v11, "PASFlowStepAIDASignIn cdpEnrollmentStatus %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x2666F8720](v13, -1, -1);
    MEMORY[0x2666F8720](v12, -1, -1);
  }

  v17 = sub_2610BCC94();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v2;
  *(v18 + 40) = v8;

  sub_261042434(0, 0, v7, &unk_2610CF0E8, v18);
}

uint64_t sub_2610A50E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 225) = a5;
  *(v5 + 176) = a4;
  return MEMORY[0x2822009F8](sub_2610A5104, 0, 0);
}

uint64_t sub_2610A5104()
{
  sub_2610A124C((v0 + 11));
  v1 = v0[14];
  v2 = v0[15];
  __swift_project_boxed_opaque_existential_1(v0 + 11, v1);
  v5 = (*(v2 + 16) + **(v2 + 16));
  v3 = swift_task_alloc();
  v0[23] = v3;
  *v3 = v0;
  v3[1] = sub_2610A523C;

  return v5(v0 + 16, v1, v2);
}

uint64_t sub_2610A523C()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_2610A566C;
  }

  else
  {
    v2 = sub_2610A5350;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2610A5350()
{
  v1 = *(v0 + 225);
  v2 = *(v0 + 152);
  __swift_project_boxed_opaque_existential_1((v0 + 128), v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE66540, &unk_2610C4040);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = 6;
  v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 64) = sub_260FA9AB4(0, &qword_27FE63F00, 0x277CCABB0);
  *(inited + 40) = v4;
  v5 = sub_260FA8D08(inited);
  *(v0 + 200) = v5;
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &qword_27FE63C20, &unk_2610BEDF0);
  v6 = swift_task_alloc();
  *(v0 + 208) = v6;
  *v6 = v0;
  v6[1] = sub_2610A54E8;
  v7 = MEMORY[0x277D839B0];

  return sub_260FAECF0(v0 + 224, 6, 0, 0, 1, v5, v2, v7);
}

uint64_t sub_2610A54E8()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_2610A5840;
  }

  else
  {

    v2 = sub_2610A5604;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2610A5604()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 11);
  v1 = v0[1];

  return v1();
}

uint64_t sub_2610A566C()
{
  v15 = v0;
  v1 = v0[24];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 11);
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[21] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, v4, v5, "PASFlowStepAIDASignIn failed to send cdpEnrollmentStatus\n%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_2610A5840()
{
  v15 = v0;

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
  v1 = v0[27];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 11);
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[21] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, v4, v5, "PASFlowStepAIDASignIn failed to send cdpEnrollmentStatus\n%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_2610A5A28(uint64_t result)
{
  if (result)
  {
    v15 = result;
    v1 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    sub_260FA9AB4(0, &qword_27FE668D0, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      if ([v14 shouldDisplayToUser])
      {
        if (qword_27FE63808 != -1)
        {
          swift_once();
        }

        v2 = sub_2610BC7B4();
        __swift_project_value_buffer(v2, qword_27FE65900);
        v3 = v14;
        v4 = sub_2610BC794();
        v5 = sub_2610BCD84();

        if (os_log_type_enabled(v4, v5))
        {
          v6 = swift_slowAlloc();
          v7 = swift_slowAlloc();
          v15 = v7;
          *v6 = 136446210;
          v8 = v3;
          v9 = [v8 description];
          v10 = sub_2610BCA04();
          v12 = v11;

          v13 = sub_260FA5970(v10, v12, &v15);

          *(v6 + 4) = v13;
          _os_log_impl(&dword_260F97000, v4, v5, "PASFlowStepAIDASignIn received error: %{public}s", v6, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v7);
          MEMORY[0x2666F8720](v7, -1, -1);
          MEMORY[0x2666F8720](v6, -1, -1);
        }

        else
        {
        }

        return 1;
      }

      else
      {

        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2610A5C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24[3] = a7;
  v24[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a3, a7);
  v16 = *a4;
  v17 = OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn__messageSessionProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE657C0, &qword_2610BEE90);
  v18 = swift_allocObject();
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0u;
  *(v18 + 48) = 0;
  *(a6 + v17) = v18;
  v19 = OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn__accountManager;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65020, &unk_2610CF360);
  v20 = swift_allocObject();
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0u;
  *(v20 + 48) = 0;
  *(a6 + v19) = v20;
  v21 = a6 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_result;
  *v21 = 0;
  *(v21 + 8) = -1;
  sub_260FA99E0(v24, a6 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_account);
  *(a6 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_authResults) = v16;
  sub_260FA99E0(a5, a6 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_serviceOwnersManager);
  v22 = sub_26104E0E4(a1, a2);
  __swift_destroy_boxed_opaque_existential_0Tm(a5);
  __swift_destroy_boxed_opaque_existential_0Tm(v24);
  return v22;
}

uint64_t sub_2610A5DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a7 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  (*(v15 + 16))(v17, a3, a7);
  return sub_2610A5C48(a1, a2, v17, a4, a5, v18, a7, a8);
}

uint64_t sub_2610A5EDC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_260FB6DB4;

  return sub_2610A4890(v0);
}

uint64_t sub_2610A5F6C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_260FBF860;

  return sub_2610A50E0(a1, v4, v5, v6, v7);
}

unint64_t sub_2610A6034()
{
  result = qword_27FE668A0;
  if (!qword_27FE668A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE668A0);
  }

  return result;
}

uint64_t sub_2610A6088(uint64_t a1)
{
  result = sub_2610A60CC(&unk_27FE64F80, type metadata accessor for PASFlowStepAIDASignIn);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2610A60CC(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t type metadata accessor for PASFlowStepAIDASignIn(uint64_t a1)
{
  result = qword_27FE668A8;
  if (!qword_27FE668A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of PASAIDAServiceOwnersManagerProtocol.signInToAllServicesInBackground(using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_260FBD298;

  return v9(a1, a2, a3);
}

unint64_t sub_2610A6358()
{
  result = qword_27FE668B8;
  if (!qword_27FE668B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE668B8);
  }

  return result;
}

unint64_t sub_2610A63D8()
{
  result = qword_27FE668D8;
  if (!qword_27FE668D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE668D8);
  }

  return result;
}

unint64_t sub_2610A643C(void *a1)
{
  a1[1] = sub_2610A6474();
  a1[2] = sub_2610A64C8();
  result = sub_2610A651C();
  a1[3] = result;
  return result;
}

unint64_t sub_2610A6474()
{
  result = qword_27FE668F0;
  if (!qword_27FE668F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE668F0);
  }

  return result;
}

unint64_t sub_2610A64C8()
{
  result = qword_27FE668F8;
  if (!qword_27FE668F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE668F8);
  }

  return result;
}

unint64_t sub_2610A651C()
{
  result = qword_27FE66900;
  if (!qword_27FE66900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66900);
  }

  return result;
}

unint64_t sub_2610A6574()
{
  result = qword_27FE66908;
  if (!qword_27FE66908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66908);
  }

  return result;
}

uint64_t sub_2610A65EC()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2610A6680()
{
  v1 = v0[2];
  if (*(v1 + 112) == 1)
  {
    v2 = swift_task_alloc();
    v0[3] = v2;
    *v2 = v0;
    v2[1] = sub_2610A6760;

    return MEMORY[0x282200480](1);
  }

  else
  {
    *(v1 + 112) = 1;
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_2610A6760()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  v5 = *(v2 + 16);

  return MEMORY[0x2822009F8](sub_2610A6D4C, v5, 0);
}

uint64_t sub_2610A68E8@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for PASLock();
  v3 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v3 + 112) = 0;
  a1[3] = v2;
  a1[4] = &off_28738B450;
  *a1 = v3;
  return result;
}

uint64_t dispatch thunk of PASLocking.try()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FBCD00;

  return v7(a1, a2);
}

uint64_t dispatch thunk of PASLocking.lock()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FB6DB4;

  return v7(a1, a2);
}

uint64_t dispatch thunk of PASLocking.unlock()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FB6DB4;

  return v7(a1, a2);
}

uint64_t sub_2610A6D50(unsigned __int8 a1)
{
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_2610A6E7C(uint64_t a1, unsigned __int8 a2)
{
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_2610A6FC8()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_260FE1AB8;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64D90, &qword_2610C4548);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26106EFEC;
  v0[13] = &block_descriptor_9;
  v0[14] = v2;
  [v1 aa:v0 + 10 primaryAppleAccountWithCompletion:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2610A70E4(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FBD298;

  return v7(a1, a2);
}

uint64_t sub_2610A7210(uint64_t a1)
{
  sub_2610BCA54();
}

unint64_t sub_2610A732C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2610AA210(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2610A735C(uint64_t *a1@<X8>)
{
  v2 = 0x7465677261546F6ELL;
  v3 = *v1;
  v4 = 0xEE00656369766544;
  v5 = 0x656372756F536F6ELL;
  v6 = 0xEF746E756F636341;
  v7 = 0xD000000000000014;
  v8 = 0x80000002610D1C10;
  if (v3 != 4)
  {
    v7 = 0xD000000000000019;
    v8 = 0x80000002610D1C30;
  }

  if (v3 != 3)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0xEF64726F77737361;
  v10 = 0x5064657661536F6ELL;
  if (v3 != 1)
  {
    v10 = 0x7465677261546F6ELL;
    v9 = 0xEF746E756F636341;
  }

  if (*v1)
  {
    v2 = v10;
    v4 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v2 = v5;
    v11 = v6;
  }

  *a1 = v2;
  a1[1] = v11;
}

unint64_t sub_2610A7440()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v3;
  v4 = sub_2610B47B0(v1);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  v6 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &unk_27FE63C30, &unk_2610BEE00);
  return v6;
}

uint64_t sub_2610A7508(uint64_t a1)
{
  v2 = sub_2610AA0BC();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2610A7544(uint64_t a1)
{
  v2 = sub_2610AA0BC();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t *sub_2610A7580@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_2610A7598()
{
  result = sub_2610BC9D4();
  qword_27FE80B20 = result;
  return result;
}

uint64_t sub_2610A75D0(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x2822009F8](sub_2610A75F4, 0, 0);
}

uint64_t sub_2610A75F4()
{
  v1 = v0[10];
  v2 = v1[22];
  v0[11] = v2;
  if (*(v2 + 16))
  {
    v3 = v1[10];
    v4 = v1[11];
    __swift_project_boxed_opaque_existential_1(v1 + 7, v3);
    v8 = (*(v4 + 8) + **(v4 + 8));
    v5 = swift_task_alloc();
    v0[12] = v5;
    *v5 = v0;
    v5[1] = sub_2610A7768;

    return v8(v3, v4);
  }

  else
  {
    v7 = v0[1];

    return v7(0);
  }
}

uint64_t sub_2610A7768(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 104) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_2610A789C, 0, 0);
}

id sub_2610A789C()
{
  v1 = *(v0 + 104);
  if (!v1)
  {
    sub_26109CE2C();
    swift_allocError();
    *v10 = 3;
    swift_willThrow();
LABEL_11:
    v12 = *(v0 + 8);

    return v12();
  }

  v2 = *(v0 + 80);
  v3 = v2[5];
  v4 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v3);
  *(v0 + 112) = (*(v4 + 56))(v3, v4);
  *(v0 + 120) = v5;
  if (!v5)
  {
    sub_26109CE2C();
    swift_allocError();
    *v11 = 2;
    swift_willThrow();

    goto LABEL_11;
  }

  sub_260FA99E0((v2 + 2), v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66860, &qword_2610BFBA0);
  type metadata accessor for PASFamilyMember();
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 56);
    *(v0 + 128) = v6;
    if ([*(v6 + 16) isChildAccount] && sub_260FFF24C(0, *(v0 + 88)))
    {
      v7 = (*(v0 + 64))();
      *(v0 + 136) = v7;
      v8 = swift_task_alloc();
      *(v0 + 144) = v8;
      *v8 = v0;
      v8[1] = sub_2610A7E30;

      return sub_2610A9910(v7, v1);
    }
  }

  if (sub_260FFF24C(1u, *(v0 + 88)))
  {
    v13 = *(v0 + 104);
    *(v0 + 168) = (*(v0 + 64))();
    result = [v13 aa_altDSID];
    *(v0 + 176) = result;
    if (result)
    {
      v14 = *(v0 + 120);
      v15 = *(v0 + 80);
      v16 = v15[20];
      v17 = v15[21];
      __swift_project_boxed_opaque_existential_1(v15 + 17, v16);
      v30 = (*(v17 + 8) + **(v17 + 8));
      v18 = swift_task_alloc();
      *(v0 + 184) = v18;
      *v18 = v0;
      v18[1] = sub_2610A8500;
      v19 = *(v0 + 112);

      return v30(v19, v14, v16, v17);
    }

    __break(1u);
LABEL_29:
    __break(1u);
    return result;
  }

  if (sub_260FFF24C(2u, *(v0 + 88)))
  {
    v20 = *(v0 + 104);
    v21 = (*(v0 + 64))();
    *(v0 + 240) = v21;
    result = [v20 aa_altDSID];
    if (!result)
    {
      goto LABEL_29;
    }

    v22 = result;
    v23 = *(v0 + 80);
    v24 = sub_2610BC9D4();

    [v21 setUsername_];

    [v21 setAltDSID_];
    [v21 setAppProvidedContext_];
    [v21 setAuthenticationType_];
    v25 = v23[15];
    v26 = v23[16];
    __swift_project_boxed_opaque_existential_1(v23 + 12, v25);
    v31 = (*(v26 + 8) + **(v26 + 8));
    v27 = swift_task_alloc();
    *(v0 + 248) = v27;
    *v27 = v0;
    v27[1] = sub_2610A90B0;

    return v31(v21, v25, v26);
  }

  else
  {
    v28 = *(v0 + 104);

    v29 = *(v0 + 8);

    return v29(0);
  }
}

uint64_t sub_2610A7E30(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 152) = v1;

  if (v1)
  {
    v5 = sub_2610A7FF8;
  }

  else
  {

    *(v4 + 160) = a1;
    v5 = sub_2610A7F84;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2610A7F84()
{
  v1 = v0[20];
  v2 = v0[13];

  v3 = v0[1];

  return v3(v1);
}

id sub_2610A7FF8()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 152);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_260F97000, v4, v5, "PASFamilyMemberSourceAuthController passwordless auth failed with %{public}@", v8, 0xCu);
    sub_260FA9980(v9, &qword_27FE63FF0, &unk_2610BFDA0);
    MEMORY[0x2666F8720](v9, -1, -1);
    MEMORY[0x2666F8720](v8, -1, -1);
  }

  else
  {
  }

  if (sub_260FFF24C(1u, *(v0 + 88)))
  {
    v12 = *(v0 + 104);
    *(v0 + 168) = (*(v0 + 64))();
    result = [v12 aa_altDSID];
    *(v0 + 176) = result;
    if (result)
    {
      v14 = *(v0 + 120);
      v15 = *(v0 + 80);
      v16 = v15[20];
      v17 = v15[21];
      __swift_project_boxed_opaque_existential_1(v15 + 17, v16);
      v30 = (*(v17 + 8) + **(v17 + 8));
      v18 = swift_task_alloc();
      *(v0 + 184) = v18;
      *v18 = v0;
      v18[1] = sub_2610A8500;
      v19 = *(v0 + 112);

      return v30(v19, v14, v16, v17);
    }

    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (sub_260FFF24C(2u, *(v0 + 88)))
  {
    v20 = *(v0 + 104);
    v21 = (*(v0 + 64))();
    *(v0 + 240) = v21;
    result = [v20 aa_altDSID];
    if (!result)
    {
      goto LABEL_20;
    }

    v22 = result;
    v23 = *(v0 + 80);
    v24 = sub_2610BC9D4();

    [v21 setUsername_];

    [v21 setAltDSID_];
    [v21 setAppProvidedContext_];
    [v21 setAuthenticationType_];
    v25 = v23[15];
    v26 = v23[16];
    __swift_project_boxed_opaque_existential_1(v23 + 12, v25);
    v31 = (*(v26 + 8) + **(v26 + 8));
    v27 = swift_task_alloc();
    *(v0 + 248) = v27;
    *v27 = v0;
    v27[1] = sub_2610A90B0;

    return v31(v21, v25, v26);
  }

  else
  {
    v28 = *(v0 + 104);

    v29 = *(v0 + 8);

    return v29(0);
  }
}

uint64_t sub_2610A8500(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  *(v5 + 192) = a2;
  *(v5 + 200) = v2;

  if (v2)
  {
    v6 = *(v5 + 176);

    v7 = sub_2610A958C;
  }

  else
  {
    *(v5 + 208) = a1;
    v7 = sub_2610A8634;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2610A8634()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[10];
  v4 = sub_2610BC9D4();
  [v1 setUsername_];

  [v1 setAltDSID_];
  [v1 setAppProvidedContext_];
  [v1 setAuthenticationType_];
  v5 = sub_2610BC9D4();
  [v1 _setPassword_];

  v6 = v3[15];
  v7 = v3[16];
  __swift_project_boxed_opaque_existential_1(v3 + 12, v6);
  v10 = (*(v7 + 8) + **(v7 + 8));
  v8 = swift_task_alloc();
  v0[27] = v8;
  *v8 = v0;
  v8[1] = sub_2610A8814;

  return v10(v1, v6, v7);
}

uint64_t sub_2610A8814(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {
    v4 = sub_2610A8D1C;
  }

  else
  {
    v4 = sub_2610A8928;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

id sub_2610A8928()
{
  v1 = *(v0 + 168);
  if (*(v0 + 224))
  {
    v2 = *(v0 + 104);

    v3 = *(v0 + 224);
LABEL_14:
    v24 = *(v0 + 8);

    return v24(v3);
  }

  sub_26109CE2C();
  v4 = swift_allocError();
  *v5 = 4;
  swift_willThrow();

  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v6 = sub_2610BC7B4();
  __swift_project_value_buffer(v6, qword_27FE65900);
  v7 = v4;
  v8 = sub_2610BC794();
  v9 = sub_2610BCD64();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    v12 = v4;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_260F97000, v8, v9, "PASFamilyMemberSourceAuthController savePassword auth failed with %{public}@", v10, 0xCu);
    sub_260FA9980(v11, &qword_27FE63FF0, &unk_2610BFDA0);
    MEMORY[0x2666F8720](v11, -1, -1);
    MEMORY[0x2666F8720](v10, -1, -1);
  }

  else
  {
  }

  if (!sub_260FFF24C(2u, *(v0 + 88)))
  {
    v23 = *(v0 + 104);

    v3 = 0;
    goto LABEL_14;
  }

  v14 = *(v0 + 104);
  v15 = (*(v0 + 64))();
  *(v0 + 240) = v15;
  result = [v14 aa_altDSID];
  if (result)
  {
    v17 = result;
    v18 = *(v0 + 80);
    v19 = sub_2610BC9D4();

    [v15 setUsername_];

    [v15 setAltDSID_];
    [v15 setAppProvidedContext_];
    [v15 setAuthenticationType_];
    v20 = v18[15];
    v21 = v18[16];
    __swift_project_boxed_opaque_existential_1(v18 + 12, v20);
    v25 = (*(v21 + 8) + **(v21 + 8));
    v22 = swift_task_alloc();
    *(v0 + 248) = v22;
    *v22 = v0;
    v22[1] = sub_2610A90B0;

    return v25(v15, v20, v21);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2610A8D1C()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 232);
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v3 = sub_2610BC7B4();
  __swift_project_value_buffer(v3, qword_27FE65900);
  v4 = v2;
  v5 = sub_2610BC794();
  v6 = sub_2610BCD64();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_260F97000, v5, v6, "PASFamilyMemberSourceAuthController savePassword auth failed with %{public}@", v7, 0xCu);
    sub_260FA9980(v8, &qword_27FE63FF0, &unk_2610BFDA0);
    MEMORY[0x2666F8720](v8, -1, -1);
    MEMORY[0x2666F8720](v7, -1, -1);
  }

  else
  {
  }

  if (sub_260FFF24C(2u, *(v0 + 88)))
  {
    v11 = *(v0 + 104);
    v12 = (*(v0 + 64))();
    *(v0 + 240) = v12;
    result = [v11 aa_altDSID];
    if (result)
    {
      v14 = result;
      v15 = *(v0 + 80);
      v16 = sub_2610BC9D4();

      [v12 setUsername_];

      [v12 setAltDSID_];
      [v12 setAppProvidedContext_];
      [v12 setAuthenticationType_];
      v17 = v15[15];
      v18 = v15[16];
      __swift_project_boxed_opaque_existential_1(v15 + 12, v17);
      v22 = (*(v18 + 8) + **(v18 + 8));
      v19 = swift_task_alloc();
      *(v0 + 248) = v19;
      *v19 = v0;
      v19[1] = sub_2610A90B0;

      return v22(v12, v17, v18);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v20 = *(v0 + 104);

    v21 = *(v0 + 8);

    return v21(0);
  }

  return result;
}

uint64_t sub_2610A90B0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 256) = a1;
  *(v3 + 264) = v1;

  if (v1)
  {
    v4 = sub_2610A93D0;
  }

  else
  {
    v4 = sub_2610A91C4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2610A91C4()
{
  v1 = v0[30];
  if (v0[32])
  {
    v2 = v0[13];

    v3 = v0[32];
  }

  else
  {
    sub_26109CE2C();
    v4 = swift_allocError();
    *v5 = 4;
    swift_willThrow();

    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v6 = sub_2610BC7B4();
    __swift_project_value_buffer(v6, qword_27FE65900);
    v7 = v4;
    v8 = sub_2610BC794();
    v9 = sub_2610BCD64();

    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[13];
    if (v10)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138543362;
      v14 = v4;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_260F97000, v8, v9, "PASFamilyMemberSourceAuthController default auth failed with %{public}@", v12, 0xCu);
      sub_260FA9980(v13, &qword_27FE63FF0, &unk_2610BFDA0);
      MEMORY[0x2666F8720](v13, -1, -1);
      MEMORY[0x2666F8720](v12, -1, -1);
    }

    else
    {
    }

    v3 = 0;
  }

  v16 = v0[1];

  return v16(v3);
}

uint64_t sub_2610A93D0()
{
  v1 = *(v0 + 264);
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 104);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_260F97000, v4, v5, "PASFamilyMemberSourceAuthController default auth failed with %{public}@", v8, 0xCu);
    sub_260FA9980(v9, &qword_27FE63FF0, &unk_2610BFDA0);
    MEMORY[0x2666F8720](v9, -1, -1);
    MEMORY[0x2666F8720](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12(0);
}

id sub_2610A958C()
{
  v1 = *(v0 + 200);
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_260F97000, v4, v5, "PASFamilyMemberSourceAuthController savePassword auth failed with %{public}@", v6, 0xCu);
    sub_260FA9980(v7, &qword_27FE63FF0, &unk_2610BFDA0);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  else
  {
  }

  if (sub_260FFF24C(2u, *(v0 + 88)))
  {
    v10 = *(v0 + 104);
    v11 = (*(v0 + 64))();
    *(v0 + 240) = v11;
    result = [v10 aa_altDSID];
    if (result)
    {
      v13 = result;
      v14 = *(v0 + 80);
      v15 = sub_2610BC9D4();

      [v11 setUsername_];

      [v11 setAltDSID_];
      [v11 setAppProvidedContext_];
      [v11 setAuthenticationType_];
      v16 = v14[15];
      v17 = v14[16];
      __swift_project_boxed_opaque_existential_1(v14 + 12, v16);
      v21 = (*(v17 + 8) + **(v17 + 8));
      v18 = swift_task_alloc();
      *(v0 + 248) = v18;
      *v18 = v0;
      v18[1] = sub_2610A90B0;

      return v21(v11, v16, v17);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v19 = *(v0 + 104);

    v20 = *(v0 + 8);

    return v20(0);
  }

  return result;
}

uint64_t sub_2610A9910(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2610A9934, 0, 0);
}

uint64_t sub_2610A9934()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = [v1 username];
  [v2 setUsername_];

  v4 = [v1 aa_altDSID];
  [v2 setAltDSID_];

  [v2 setAuthenticationType_];
  v5 = sub_2610BC9D4();
  v6 = NSSelectorFromString(v5);

  if ([v2 respondsToSelector_])
  {
    v7 = v0[4];
    v8 = v7[5];
    v9 = v7[6];
    __swift_project_boxed_opaque_existential_1(v7 + 2, v8);
    (*(v9 + 48))(v8, v9);
    if (v10)
    {
      v11 = sub_2610BC9D4();
    }

    else
    {
      v11 = 0;
    }

    v16 = v0[2];
    [v16 performSelector:v6 withObject:v11];
    swift_unknownObjectRelease();
    v17 = v16;
    v18 = v16;
  }

  else
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v12 = sub_2610BC7B4();
    __swift_project_value_buffer(v12, qword_27FE65900);
    v13 = sub_2610BC794();
    v14 = sub_2610BCD64();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_260F97000, v13, v14, "PASFamilyMemberSourceAuthController, authContext does not respond to selector setProxiedAppleID:", v15, 2u);
      MEMORY[0x2666F8720](v15, -1, -1);
    }
  }

  if (qword_27FE63828 != -1)
  {
    swift_once();
  }

  v19 = v0[4];
  v20 = v0[2];
  [v20 setAppProvidedContext_];
  v21 = v19[15];
  v22 = v19[16];
  __swift_project_boxed_opaque_existential_1(v19 + 12, v21);
  v25 = (*(v22 + 8) + **(v22 + 8));
  v23 = swift_task_alloc();
  v0[5] = v23;
  *v23 = v0;
  v23[1] = sub_2610A9CB8;

  return v25(v20, v21, v22);
}

uint64_t sub_2610A9CB8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_2610A9DEC, 0, 0);
}

uint64_t sub_2610A9DEC()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    sub_26109CE2C();
    swift_allocError();
    *v3 = 5;
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_2610A9EBC()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 17);

  return MEMORY[0x2821FE8D8](v0, 184, 7);
}

unint64_t sub_2610A9F4C()
{
  result = qword_27FE66910;
  if (!qword_27FE66910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66910);
  }

  return result;
}

uint64_t sub_2610A9FA0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FB6F34;

  return sub_2610A75D0(a1, a2);
}

unint64_t sub_2610AA084(void *a1)
{
  a1[1] = sub_2610AA0BC();
  a1[2] = sub_2610AA110();
  result = sub_2610AA164();
  a1[3] = result;
  return result;
}

unint64_t sub_2610AA0BC()
{
  result = qword_27FE66918;
  if (!qword_27FE66918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66918);
  }

  return result;
}

unint64_t sub_2610AA110()
{
  result = qword_27FE66920;
  if (!qword_27FE66920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66920);
  }

  return result;
}

unint64_t sub_2610AA164()
{
  result = qword_27FE66928;
  if (!qword_27FE66928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66928);
  }

  return result;
}

unint64_t sub_2610AA1BC()
{
  result = qword_27FE66930;
  if (!qword_27FE66930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66930);
  }

  return result;
}

unint64_t sub_2610AA210(uint64_t a1, uint64_t a2)
{
  v2 = sub_2610BD154();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t PASManateeRepairController.repair(featureName:securityUpgradeContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2610AA288, 0, 0);
}

uint64_t sub_2610AA288()
{
  v1 = (*(v0[5] + 56))();
  v0[6] = v1;
  v2 = [objc_allocWithZone(MEMORY[0x277CFD548]) initWithContext_];
  v0[7] = v2;
  if (v2)
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_2610AA3CC;
    v4 = v0[4];
    v6 = v0[2];
    v5 = v0[3];

    return sub_2610AAAA0(v6, v5, v1, v4);
  }

  else
  {
    sub_2610AA5D0();
    swift_allocError();
    swift_willThrow();

    v8 = v0[1];

    return v8(0);
  }
}

uint64_t sub_2610AA3CC(char a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_2610AA564;
  }

  else
  {
    *(v4 + 80) = a1 & 1;
    v5 = sub_2610AA4F8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2610AA4F8()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);
  v3 = *(v0 + 80);

  return v2(v3);
}

uint64_t sub_2610AA564()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2(0);
}

unint64_t sub_2610AA5D0()
{
  result = qword_27FE66938;
  if (!qword_27FE66938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66938);
  }

  return result;
}

uint64_t sub_2610AA624()
{
  sub_2610BD514();
  sub_2610BCA54();
  return sub_2610BD574();
}

uint64_t sub_2610AA698(uint64_t a1)
{
  sub_2610BD514();
  sub_2610BCA54();
  return sub_2610BD574();
}

uint64_t sub_2610AA6EC@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_2610BD154();

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_2610AA760(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v2;
  v6 = sub_2610BD634();
  v7 = v3;
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  MEMORY[0x2666F7380](0xD000000000000018, 0x80000002610D1C50);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  v4 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FD6C78(inited + 32);
  return v4;
}

uint64_t sub_2610AA84C(uint64_t a1)
{
  v2 = sub_2610BD634();
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  MEMORY[0x2666F7380](0xD000000000000018, 0x80000002610D1C50);
  return v2;
}

uint64_t sub_2610AA8B0(uint64_t a1)
{
  v2 = sub_2610AB41C();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2610AA8EC(uint64_t a1)
{
  v2 = sub_2610AB41C();

  return MEMORY[0x28211F4A8](a1, v2);
}

id sub_2610AA928()
{
  result = [objc_opt_self() contextForPrimaryAccount];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2610AA964(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64220, &unk_2610C0560);
  v8 = swift_allocObject();
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0;
  *(v3 + 72) = v8;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v9 = sub_2610BC7B4();
  __swift_project_value_buffer(v9, qword_27FE65900);
  v10 = sub_2610BC794();
  v11 = sub_2610BCD54();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_260F97000, v10, v11, "PASManateeRepairController init", v12, 2u);
    MEMORY[0x2666F8720](v12, -1, -1);
  }

  sub_260F98E14(a1, v4 + 16);
  *(v4 + 56) = a2;
  *(v4 + 64) = a3;
  return v4;
}

uint64_t sub_2610AAAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return MEMORY[0x2822009F8](sub_2610AAAC8, 0, 0);
}

uint64_t sub_2610AAAC8()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  v0[12] = __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASManateeRepairController begin repair", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = v0[10];
  v6 = v0[11];
  v8 = v0[8];
  v7 = v0[9];
  v9 = v0[7];

  v10 = v6[5];
  v11 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v10);
  (*(v11 + 8))(v9, v8, v7, v5, v10, v11);
  v12 = sub_2610BC794();
  v13 = sub_2610BCD84();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_260F97000, v12, v13, "PASManateeRepairController performing encryption state repair (if needed)", v14, 2u);
    MEMORY[0x2666F8720](v14, -1, -1);
  }

  v15 = v0[5];
  v16 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v15);
  v19 = (*(v16 + 8) + **(v16 + 8));
  v17 = swift_task_alloc();
  v0[13] = v17;
  *v17 = v0;
  v17[1] = sub_2610AAD80;

  return v19(v15, v16);
}

uint64_t sub_2610AAD80()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_2610AAF74;
  }

  else
  {
    v2 = sub_2610AAE94;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2610AAE94(uint64_t a1)
{
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASManateeRepairController repair completed successfully", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));
  v5 = *(v1 + 8);

  return v5(1);
}

uint64_t sub_2610AAF74()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1(0);
}

void *PASManateeRepairController.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return v0;
}

uint64_t PASManateeRepairController.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t sub_2610AB054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_260FB727C;

  return PASManateeRepairController.repair(featureName:securityUpgradeContext:)(a1, a2, a3);
}

uint64_t dispatch thunk of PASDeviceToDeviceEncryptionHelperProtocol.performDeviceToDeviceEncryptionStateRepair()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FBF864;

  return v7(a1, a2);
}

uint64_t dispatch thunk of PASManateeRepairControllerProtocol.repair(featureName:securityUpgradeContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_260FBD298;

  return v13(a1, a2, a3, a4, a5);
}

unint64_t sub_2610AB3E4(void *a1)
{
  a1[1] = sub_2610AB41C();
  a1[2] = sub_2610AB470();
  result = sub_2610AB4C4();
  a1[3] = result;
  return result;
}

unint64_t sub_2610AB41C()
{
  result = qword_27FE66940;
  if (!qword_27FE66940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66940);
  }

  return result;
}

unint64_t sub_2610AB470()
{
  result = qword_27FE66948;
  if (!qword_27FE66948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66948);
  }

  return result;
}

unint64_t sub_2610AB4C4()
{
  result = qword_27FE66950;
  if (!qword_27FE66950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66950);
  }

  return result;
}

unint64_t sub_2610AB51C()
{
  result = qword_27FE66958[0];
  if (!qword_27FE66958[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE66958);
  }

  return result;
}

uint64_t static Message.Metrics.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = *a2;
  v6 = type metadata accessor for Message.Metrics.EpochStage(0, a3, a4, a4);
  WitnessTable = swift_getWitnessTable();
  v8 = MEMORY[0x277D84D38];
  v9 = MEMORY[0x277D84D58];

  return MEMORY[0x2821FB928](v4, v5, v6, v8, WitnessTable, v9);
}

uint64_t Message.Metrics.epochsByStage.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void *Message.Metrics.init(sourceSendEpoch:destinationReceiveEpoch:destinationSendEpoch:sourceReceiveEpoch:)@<X0>(uint64_t a4@<X3>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v11 = type metadata accessor for Message.Metrics.EpochStage(255, a10, a11, a4);
  v12 = MEMORY[0x277D84D38];
  swift_getTupleTypeMetadata2();
  v13 = sub_2610BCB74();
  WitnessTable = swift_getWitnessTable();
  v15 = sub_261040F14(v13, v11, v12, WitnessTable);

  v23 = v15;
  v17 = type metadata accessor for Message.Metrics(0, a10, a11, v16);
  Message.Metrics.updatingEpoch(for:to:)(v17, &v20);
  LOBYTE(v23) = 1;
  Message.Metrics.updatingEpoch(for:to:)(v17, &v21);
  LOBYTE(v23) = 2;
  Message.Metrics.updatingEpoch(for:to:)(v17, &v22);
  result = Message.Metrics.updatingEpoch(for:to:)(v17, &v23);
  *a9 = v23;
  return result;
}

uint64_t Message.Metrics.updatingEpoch(for:to:)@<X0>(uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = *v5;
  type metadata accessor for Message.Metrics.EpochStage(255, *(a4 + 16), *(a4 + 24), a4);
  swift_getWitnessTable();
  sub_2610BC934();
  return sub_2610BC974();
}

uint64_t sub_2610AB8CC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Message.Metrics.EpochStage(0, *(a1 + 16), *(a1 + 24), a4);
  swift_getWitnessTable();
  sub_2610BC964();
  return v5;
}

unint64_t sub_2610AB9A4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v5 = a2();
  if (v6)
  {
    return 0;
  }

  v7 = v5;
  result = a3(a1);
  if (v9)
  {
    return 0;
  }

  if (result >= v7)
  {
    return 1000000000000000 * (result - v7);
  }

  __break(1u);
  return result;
}

uint64_t Message.Metrics.roundtripDuration.getter(uint64_t a1)
{
  Message.Metrics.onewaySendDuration.getter(a1);
  if (v2)
  {
    return 0;
  }

  Message.Metrics.onewayReceiveDuration.getter(a1);
  if (v3)
  {
    return 0;
  }

  else
  {
    return sub_2610BD604();
  }
}

uint64_t Message.Metrics.updateEpoch(for:to:)(char *a1, uint64_t a2, char a3, uint64_t a4)
{
  result = Message.Metrics.updatingEpoch(for:to:)(a4, &v6);
  *v4 = v6;
  return result;
}

uint64_t sub_2610ABB60(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x79427368636F7065 && a2 == 0xED00006567617453)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2610BD384();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2610ABC04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2610ABB60(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2610ABC38@<X0>(_BYTE *a1@<X8>)
{
  result = sub_260FBF8A0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2610ABC68(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2610ABCBC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t Message.Metrics.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v14 = *(a2 + 24);
  v15 = v6;
  _s7MetricsV10CodingKeysOMa(255, v6, v14, a4);
  swift_getWitnessTable();
  v7 = sub_2610BD2D4();
  v16 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v14 - v9;
  v11 = *v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_2610BD5F4();
  v19 = v11;
  type metadata accessor for Message.Metrics.EpochStage(255, v15, v14, v12);
  swift_getWitnessTable();
  sub_2610BC934();
  WitnessTable = swift_getWitnessTable();
  v18 = MEMORY[0x277D84D40];
  swift_getWitnessTable();
  sub_2610BD2A4();

  return (*(v16 + 8))(v10, v7);
}

uint64_t Message.Metrics.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = type metadata accessor for Message.Metrics.EpochStage(0, *(a2 + 16), *(a2 + 24), a4);
  WitnessTable = swift_getWitnessTable();
  v9 = MEMORY[0x277D84D38];
  v10 = MEMORY[0x277D84D48];

  return MEMORY[0x2821FB920](a1, v6, v7, v9, WitnessTable, v10);
}

uint64_t Message.Metrics.hashValue.getter(uint64_t a1)
{
  v6[9] = *v1;
  sub_2610BD514();
  Message.Metrics.hash(into:)(v6, a1, v3, v4);
  return sub_2610BD574();
}

uint64_t Message.Metrics.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, uint64_t a5@<X3>)
{
  v19 = a4;
  _s7MetricsV10CodingKeysOMa(255, a2, a3, a5);
  swift_getWitnessTable();
  v20 = sub_2610BD224();
  v18 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v9);
  v11 = &v17 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2610BD5D4();
  if (!v5)
  {
    v14 = v18;
    v13 = v19;
    type metadata accessor for Message.Metrics.EpochStage(255, a2, a3, v12);
    swift_getWitnessTable();
    sub_2610BC934();
    WitnessTable = swift_getWitnessTable();
    v22 = MEMORY[0x277D84D68];
    swift_getWitnessTable();
    v15 = v20;
    sub_2610BD1E4();
    (*(v14 + 8))(v11, v15);
    *v13 = v23;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_2610AC2A0(uint64_t a1, uint64_t a2)
{
  sub_2610BD514();
  Message.Metrics.hash(into:)(v6, a2, v3, v4);
  return sub_2610BD574();
}

uint64_t sub_2610AC2F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6553656372756F73 && a2 == 0xEA0000000000646ELL;
  if (v4 || (sub_2610BD384() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002610D6500 == a2 || (sub_2610BD384() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEF646E65536E6F69 || (sub_2610BD384() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6552656372756F73 && a2 == 0xED00006576696563)
  {

    return 3;
  }

  else
  {
    v6 = sub_2610BD384();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_2610AC47C(unsigned __int8 a1)
{
  v1 = 0x6553656372756F73;
  v2 = 0x74616E6974736564;
  if (a1 != 2)
  {
    v2 = 0x6552656372756F73;
  }

  if (a1)
  {
    v1 = 0xD000000000000012;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2610AC524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2610AC2F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2610AC554(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2610AC5A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_2610AC614(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2610AC668(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_2610AC6BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2610AC710(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_2610AC764(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2610AC7B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_2610AC80C@<X0>(uint64_t a2@<X2>, uint64_t (*a3)(void, void)@<X4>, _BYTE *a4@<X8>)
{
  v5 = a3(*(a2 + 16), *(a2 + 24));

  *a4 = v5 & 1;
  return result;
}

uint64_t sub_2610AC858(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2610AC8AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t Message.Metrics.EpochStage.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = _s7MetricsV10EpochStageO23SourceReceiveCodingKeysOMa(255, v7, v8, a4);
  WitnessTable = swift_getWitnessTable();
  v58 = v9;
  v10 = sub_2610BD2D4();
  v55 = *(v10 - 8);
  v56 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v54 = &v40 - v12;
  v14 = _s7MetricsV10EpochStageO25DestinationSendCodingKeysOMa(255, v7, v8, v13);
  v15 = swift_getWitnessTable();
  v53 = v14;
  v51 = v15;
  v52 = sub_2610BD2D4();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v16);
  v49 = &v40 - v17;
  v19 = _s7MetricsV10EpochStageO28DestinationReceiveCodingKeysOMa(255, v7, v8, v18);
  v20 = swift_getWitnessTable();
  v48 = v19;
  v46 = v20;
  v47 = sub_2610BD2D4();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47, v21);
  v44 = &v40 - v22;
  _s7MetricsV10EpochStageO20SourceSendCodingKeysOMa(255, v7, v8, v23);
  v42 = swift_getWitnessTable();
  v43 = sub_2610BD2D4();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43, v24);
  v40 = &v40 - v25;
  _s7MetricsV10EpochStageO10CodingKeysOMa(255, v7, v8, v26);
  swift_getWitnessTable();
  v59 = sub_2610BD2D4();
  v27 = *(v59 - 8);
  MEMORY[0x28223BE20](v59, v28);
  v30 = &v40 - v29;
  v31 = *v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2610BD5F4();
  v32 = (v27 + 8);
  if (v31 > 1)
  {
    if (v31 == 2)
    {
      v62 = 2;
      v35 = v49;
      v36 = v59;
      sub_2610BD234();
      (*(v50 + 8))(v35, v52);
    }

    else
    {
      v63 = 3;
      v39 = v54;
      v36 = v59;
      sub_2610BD234();
      (*(v55 + 8))(v39, v56);
    }

    return (*v32)(v30, v36);
  }

  else
  {
    if (v31)
    {
      v61 = 1;
      v37 = v44;
      v34 = v59;
      sub_2610BD234();
      (*(v45 + 8))(v37, v47);
    }

    else
    {
      v60 = 0;
      v33 = v40;
      v34 = v59;
      sub_2610BD234();
      (*(v41 + 8))(v33, v43);
    }

    return (*v32)(v30, v34);
  }
}

uint64_t Message.Metrics.EpochStage.hashValue.getter()
{
  v1 = *v0;
  sub_2610BD514();
  MEMORY[0x2666F7E40](v1);
  return sub_2610BD574();
}

uint64_t Message.Metrics.EpochStage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>, uint64_t a5@<X3>)
{
  v74 = a4;
  v8 = _s7MetricsV10EpochStageO23SourceReceiveCodingKeysOMa(255, a2, a3, a5);
  WitnessTable = swift_getWitnessTable();
  v73 = v8;
  v63 = sub_2610BD224();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63, v9);
  v71 = &v53 - v10;
  v12 = _s7MetricsV10EpochStageO25DestinationSendCodingKeysOMa(255, a2, a3, v11);
  v69 = swift_getWitnessTable();
  v70 = v12;
  v61 = sub_2610BD224();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61, v13);
  v68 = &v53 - v14;
  v16 = _s7MetricsV10EpochStageO28DestinationReceiveCodingKeysOMa(255, a2, a3, v15);
  v66 = swift_getWitnessTable();
  v67 = v16;
  v59 = sub_2610BD224();
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59, v17);
  v65 = &v53 - v18;
  v20 = _s7MetricsV10EpochStageO20SourceSendCodingKeysOMa(255, a2, a3, v19);
  v64 = swift_getWitnessTable();
  v57 = sub_2610BD224();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57, v21);
  v23 = &v53 - v22;
  _s7MetricsV10EpochStageO10CodingKeysOMa(255, a2, a3, v24);
  swift_getWitnessTable();
  v25 = sub_2610BD224();
  v26 = *(v25 - 8);
  v75 = v25;
  v76 = v26;
  MEMORY[0x28223BE20](v25, v27);
  v29 = &v53 - v28;
  v30 = a1[3];
  v82 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  v31 = v77;
  sub_2610BD5D4();
  if (!v31)
  {
    v54 = v23;
    v55 = v20;
    v77 = a2;
    v32 = v75;
    v33 = v29;
    *&v78 = sub_2610BD214();
    sub_2610BCBD4();
    swift_getWitnessTable();
    *&v80 = sub_2610BCEC4();
    *(&v80 + 1) = v34;
    *&v81 = v35;
    *(&v81 + 1) = v36;
    sub_2610BCEB4();
    swift_getWitnessTable();
    sub_2610BCD24();
    v37 = v78;
    if (v78 == 4 || (v53 = v80, v78 = v80, v79 = v81, (sub_2610BCD34() & 1) == 0))
    {
      v41 = v32;
      v42 = sub_2610BCFF4();
      swift_allocError();
      v44 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE643B8, &qword_2610C4650);
      *v44 = type metadata accessor for Message.Metrics.EpochStage(0, v77, a3, v45);
      sub_2610BD174();
      sub_2610BCFE4();
      (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277D84160], v42);
      swift_willThrow();
      (*(v76 + 8))(v33, v41);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v37 > 1)
      {
        v47 = v33;
        if (v37 == 2)
        {
          LOBYTE(v78) = 2;
          v48 = v68;
          sub_2610BD164();
          v40 = v74;
          v49 = v32;
          v50 = v76;
          (*(v60 + 8))(v48, v61);
        }

        else
        {
          LOBYTE(v78) = 3;
          v52 = v71;
          sub_2610BD164();
          v40 = v74;
          v49 = v32;
          v50 = v76;
          (*(v62 + 8))(v52, v63);
        }

        (*(v50 + 8))(v47, v49);
        goto LABEL_14;
      }

      v38 = v33;
      if (!v37)
      {
        LOBYTE(v78) = 0;
        v39 = v54;
        sub_2610BD164();
        v40 = v74;
        (*(v56 + 8))(v39, v57);
        (*(v76 + 8))(v38, v32);
LABEL_14:
        swift_unknownObjectRelease();
        *v40 = v37;
        return __swift_destroy_boxed_opaque_existential_0Tm(v82);
      }

      LOBYTE(v78) = 1;
      v51 = v65;
      sub_2610BD164();
      (*(v58 + 8))(v51, v59);
      (*(v76 + 8))(v33, v32);
      swift_unknownObjectRelease();
      *v74 = v37;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v82);
}

uint64_t sub_2610AD75C(uint64_t a1)
{
  sub_2610BD514();
  Message.Metrics.EpochStage.hash(into:)();
  return sub_2610BD574();
}

void static UInt64.epoch(for:)()
{
  sub_2610BC594();
  v1 = v0 * 1000.0;
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 >= 1.84467441e19)
  {
LABEL_7:
    __break(1u);
  }
}

uint64_t sub_2610AD9A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_2610ADA04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2610ADBE0()
{
  sub_2610BD514();
  sub_2610BCA54();
  return sub_2610BD574();
}

uint64_t sub_2610ADC54(uint64_t a1)
{
  sub_2610BD514();
  sub_2610BCA54();
  return sub_2610BD574();
}

uint64_t sub_2610ADCA8@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_2610BD154();

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_2610ADD1C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v2;
  v6 = sub_2610BD634();
  v7 = v3;
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  MEMORY[0x2666F7380](0xD000000000000012, 0x80000002610D1C70);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  v4 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FD6C78(inited + 32);
  return v4;
}

uint64_t sub_2610ADE08(uint64_t a1)
{
  v2 = sub_2610BD634();
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  MEMORY[0x2666F7380](0xD000000000000012, 0x80000002610D1C70);
  return v2;
}

unint64_t sub_2610ADE6C(void *a1)
{
  a1[1] = sub_2610ADEA4();
  a1[2] = sub_2610ADEF8();
  result = sub_2610ADF4C();
  a1[3] = result;
  return result;
}

unint64_t sub_2610ADEA4()
{
  result = qword_27FE66D60;
  if (!qword_27FE66D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66D60);
  }

  return result;
}

unint64_t sub_2610ADEF8()
{
  result = qword_27FE66D68;
  if (!qword_27FE66D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66D68);
  }

  return result;
}

unint64_t sub_2610ADF4C()
{
  result = qword_27FE66D70;
  if (!qword_27FE66D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66D70);
  }

  return result;
}

unint64_t sub_2610ADFA4()
{
  result = qword_27FE66D78;
  if (!qword_27FE66D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66D78);
  }

  return result;
}

uint64_t sub_2610ADFF8(uint64_t a1)
{
  v2 = sub_2610ADEA4();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2610AE034(uint64_t a1)
{
  v2 = sub_2610ADEA4();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t PASFlowStepSourceStart.__allocating_init(delegate:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_26104DC44(a1, a2);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t PASFlowStepSourceStart.prepareForPresentation()()
{
  v1[2] = v0;
  v1[3] = sub_2610BCC74();
  v1[4] = sub_2610BCC64();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_2610AE180;

  return sub_26104582C();
}

uint64_t sub_2610AE180()
{
  *(*v1 + 48) = v0;

  v3 = sub_2610BCBF4();
  if (v0)
  {
    v4 = sub_260FC97F4;
  }

  else
  {
    v4 = sub_2610AE2DC;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_2610AE2DC()
{

  sub_2610439BC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t PASFlowStepSourceStart.nextStep()()
{
  v1 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  type metadata accessor for PASFlowStepCheckInternet(0);
  swift_allocObject();
  v4 = sub_2610B34E4(Strong, v3);
  swift_unknownObjectRelease();
  sub_2610AE5A0(&qword_27FE66D80, type metadata accessor for PASFlowStepCheckInternet);
  return v4;
}

uint64_t PASFlowStepSourceStart.init(delegate:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_26104DC44(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t PASFlowStepSourceStart.__deallocating_deinit()
{
  v0 = PASSourceFlowStepBase.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2610AE498()
{
  v1 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  type metadata accessor for PASFlowStepCheckInternet(0);
  swift_allocObject();
  v4 = sub_2610B34E4(Strong, v3);
  swift_unknownObjectRelease();
  sub_2610AE5A0(&qword_27FE66D80, type metadata accessor for PASFlowStepCheckInternet);
  return v4;
}

uint64_t sub_2610AE55C(uint64_t a1)
{
  result = sub_2610AE5A0(&qword_27FE65778, type metadata accessor for PASFlowStepSourceStart);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2610AE5A0(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t type metadata accessor for PASFlowStepSourceStart(uint64_t a1)
{
  result = qword_27FE66D88;
  if (!qword_27FE66D88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2610AE68C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v3 = 0x4F64696C61766E69;
  }

  if (v2)
  {
    v4 = 0xEE00736E6F697470;
  }

  else
  {
    v4 = 0x80000002610D1CA0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000014;
  }

  else
  {
    v5 = 0x4F64696C61766E69;
  }

  if (*a2)
  {
    v6 = 0x80000002610D1CA0;
  }

  else
  {
    v6 = 0xEE00736E6F697470;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2610BD384();
  }

  return v8 & 1;
}

uint64_t sub_2610AE744()
{
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_2610AE7D8(uint64_t a1)
{
  sub_2610BCA54();
}

uint64_t sub_2610AE858(uint64_t a1)
{
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_2610AE8E8@<X0>(char *a2@<X8>)
{
  v3 = sub_2610BD154();

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

void sub_2610AE948(unint64_t *a1@<X8>)
{
  v2 = 0x80000002610D1CA0;
  v3 = 0x4F64696C61766E69;
  if (*v1)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v2 = 0xEE00736E6F697470;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_2610AE998()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v3;
  v4 = sub_2610B40E0(v1);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  v6 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &unk_27FE63C30, &unk_2610BEE00);
  return v6;
}

uint64_t sub_2610AEA60(uint64_t a1)
{
  v2 = sub_2610AEEDC();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2610AEA9C(uint64_t a1)
{
  v2 = sub_2610AEEDC();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2610AEAD8(uint64_t a1)
{
  *&v12 = sub_2610BCA04();
  *(&v12 + 1) = v2;
  sub_2610BCF24();
  if (*(a1 + 16) && (v3 = sub_260FA60B4(v14), (v4 & 1) != 0))
  {
    sub_260FA3F5C(*(a1 + 56) + 32 * v3, &v15);
    sub_260FA9764(v14);
  }

  else
  {
    sub_260FA9764(v14);
    v15 = 0u;
    v16 = 0u;
  }

  sub_2610BCA04();
  sub_2610BCF24();
  if (*(a1 + 16) && (v5 = sub_260FA60B4(v14), (v6 & 1) != 0))
  {
    sub_260FA3F5C(*(a1 + 56) + 32 * v5, &v12);
    sub_260FA9764(v14);
    v7 = *(&v13 + 1) == 0;
    v8 = *(&v16 + 1);
    if (*(&v16 + 1))
    {
      goto LABEL_12;
    }
  }

  else
  {
    sub_260FA9764(v14);
    v12 = 0u;
    v13 = 0u;
    v7 = 1;
    v8 = *(&v16 + 1);
    if (*(&v16 + 1))
    {
      goto LABEL_12;
    }
  }

  if (v7)
  {
    v9 = 1;
LABEL_14:

    sub_2610AEE20();
    swift_allocError();
    *v10 = v9;
    swift_willThrow();
    goto LABEL_15;
  }

LABEL_12:
  if (v8 != 0 && !v7)
  {
    v9 = 0;
    goto LABEL_14;
  }

LABEL_15:
  sub_260FA9980(&v15, &qword_27FE63830, &qword_2610BE8E0);
  sub_260FA9980(&v12, &qword_27FE63830, &qword_2610BE8E0);
  return a1;
}

uint64_t sub_2610AEC98(char a1, uint64_t a2)
{
  *&v8 = sub_2610BCA04();
  *(&v8 + 1) = v4;
  sub_2610BCF24();
  v9 = MEMORY[0x277D839B0];
  LOBYTE(v8) = a1;
  sub_260FA6A84(&v8, v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_260FA6C8C(v7, v10, isUniquelyReferenced_nonNull_native);
  sub_260FA9764(v10);
  return a2;
}

uint64_t sub_2610AED3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2610BCA04();
  v6 = MEMORY[0x277D837D0];
  sub_2610BCF24();
  v11 = v6;
  *&v10 = a1;
  *(&v10 + 1) = a2;
  sub_260FA6A84(&v10, v9);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_260FA6C8C(v9, v12, isUniquelyReferenced_nonNull_native);
  sub_260FA9764(v12);
  return a3;
}

uint64_t sub_2610AEDF0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2610AEAD8(*v1);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_2610AEE20()
{
  result = qword_27FE66D98;
  if (!qword_27FE66D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66D98);
  }

  return result;
}

unint64_t sub_2610AEEA4(void *a1)
{
  a1[1] = sub_2610AEEDC();
  a1[2] = sub_2610AEF30();
  result = sub_2610AEF84();
  a1[3] = result;
  return result;
}

unint64_t sub_2610AEEDC()
{
  result = qword_27FE66DA0;
  if (!qword_27FE66DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66DA0);
  }

  return result;
}

unint64_t sub_2610AEF30()
{
  result = qword_27FE66DA8;
  if (!qword_27FE66DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66DA8);
  }

  return result;
}

unint64_t sub_2610AEF84()
{
  result = qword_27FE66DB0;
  if (!qword_27FE66DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66DB0);
  }

  return result;
}

unint64_t sub_2610AEFDC()
{
  result = qword_27FE66DB8;
  if (!qword_27FE66DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66DB8);
  }

  return result;
}

uint64_t sub_2610AF034(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FBD298;

  return v7(a1, a2);
}

uint64_t sub_2610AF188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_260FBCD00;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_2610AF2B8(uint64_t a1, uint64_t a2)
{
  v2 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  sub_2610AFE1C();
  **(*(v2 + 64) + 40) = sub_2610BCB34();

  return MEMORY[0x282200948](v2);
}

uint64_t sub_2610AF360()
{
  v1[2] = v0;
  v2 = sub_2610BC744();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_2610BC774();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = sub_2610BC714();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2610AF4E4, 0, 0);
}

uint64_t sub_2610AF4E4()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  (*(v0[7] + 16))(v0[8], v0[2], v0[6]);
  sub_2610BC704();
  (*(v4 + 16))(v1, v2, v3);
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_2610AF5F8;
  v6 = v0[11];
  v7 = v0[5];

  return MEMORY[0x282116960](v7, v6);
}

uint64_t sub_2610AF5F8()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_2610AF810;
  }

  else
  {
    v2 = sub_2610AF70C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2610AF70C()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];
  v8 = sub_2610BC734();
  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);

  v10 = v0[1];
  if (!v1)
  {
    v9 = v8;
  }

  return v10(v9);
}

uint64_t sub_2610AF810()
{
  (*(v0[10] + 8))(v0[12], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2610AF8B4(uint64_t a1, uint64_t a2)
{
  *(v2 + 232) = a1;
  *(v2 + 240) = a2;
  return MEMORY[0x2822009F8](sub_2610AF8D4, 0, 0);
}

uint64_t sub_2610AF8D4()
{
  v1 = objc_allocWithZone(MEMORY[0x277CC5DF8]);
  v2 = sub_2610BC9D4();
  v3 = [v1 initWithExtensionPointIdentifier_];
  v0[31] = v3;

  v4 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 28;
  v0[3] = sub_2610AFA4C;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66DC0, &qword_2610D0A48);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2610AF2B8;
  v0[13] = &block_descriptor_10;
  v0[14] = v5;
  [v4 executeQuery:v3 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2610AFA4C()
{

  return MEMORY[0x2822009F8](sub_2610AFB2C, 0, 0);
}

void *sub_2610AFB2C()
{
  v1 = *(v0 + 224);
  if (v1 >> 62)
  {
    v2 = sub_2610BD0E4();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:
    v18 = *(v0 + 248);

    v6 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_3:
  v24 = MEMORY[0x277D84F90];
  result = sub_2610525B4(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = (v0 + 144);
  v6 = v24;
  v20 = v1 & 0xC000000000000001;
  v21 = (v0 + 184);
  v22 = v2;
  v23 = v1;
  do
  {
    if (v20)
    {
      MEMORY[0x2666F78E0](v4, v1);
    }

    else
    {
      v7 = *(v1 + 8 * v4 + 32);
    }

    v8 = sub_2610BC774();
    *(v0 + 168) = v8;
    *(v0 + 176) = &off_28738BA98;
    __swift_allocate_boxed_opaque_existential_1(v5);
    sub_2610BC784();
    v10 = *(v24 + 16);
    v9 = *(v24 + 24);
    if (v10 >= v9 >> 1)
    {
      sub_2610525B4((v9 > 1), v10 + 1, 1);
    }

    ++v4;
    v11 = *(v0 + 168);
    v12 = v5;
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v5, v11);
    v14 = *(v11 - 8);
    v15 = swift_task_alloc();
    v16 = v13;
    v5 = v12;
    (*(v14 + 16))(v15, v16, v11);
    *(v0 + 208) = v8;
    *(v0 + 216) = &off_28738BA98;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
    (*(*(v8 - 8) + 32))(boxed_opaque_existential_1, v15, v8);
    *(v24 + 16) = v10 + 1;
    sub_260FA9F80(v21, v24 + 40 * v10 + 32);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);

    v1 = v23;
  }

  while (v22 != v4);

LABEL_14:
  v19 = *(v0 + 8);

  return v19(v6);
}

unint64_t sub_2610AFE1C()
{
  result = qword_27FE66DC8;
  if (!qword_27FE66DC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE66DC8);
  }

  return result;
}

uint64_t PASFlowStepSelectPicker.__allocating_init(delegate:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_2610B1410(a1, a2);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_2610AFEC4()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker__extensionCache);
  swift_beginAccess();
  if (*(v1 + 16))
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v3 = qword_27FE637E0;

    if (v3 != -1)
    {
      swift_once();
    }

    v2 = sub_260FA2288();
    *(v1 + 16) = v2;
  }

  return v2;
}

uint64_t sub_2610AFF90@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker__featureFlagsProvider);
  swift_beginAccess();
  sub_260FE609C(v3 + 16, &v6);
  if (v7)
  {
    return sub_260FA9F80(&v6, a1);
  }

  sub_260FA9980(&v6, &unk_27FE63C00, &qword_2610BEDD0);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9E668(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260FA9F80(&v6, v5);
  swift_beginAccess();
  sub_260FE610C(v5, v3 + 16);
  swift_endAccess();
}

uint64_t sub_2610B00AC()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker__targetAccountOptionsProvider);
  swift_beginAccess();
  if (*(v1 + 16))
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v3 = qword_27FE637E0;

    if (v3 != -1)
    {
      swift_once();
    }

    v2 = sub_260F9CD6C();
    *(v1 + 16) = v2;
    *(v1 + 24) = v4;
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

uint64_t PASFlowStepSelectPicker.prepareForPresentation()()
{
  v1[2] = v0;
  v1[3] = sub_2610BCC74();
  v1[4] = sub_2610BCC64();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_2610B0234;

  return sub_26104582C();
}

uint64_t sub_2610B0234()
{
  *(*v1 + 48) = v0;

  v3 = sub_2610BCBF4();
  if (v0)
  {
    v4 = sub_260FF5690;
  }

  else
  {
    v4 = sub_2610B0390;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_2610B0390()
{

  v1 = swift_allocObject();
  swift_weakInit();
  sub_260FC3450();
  swift_allocError();
  *v2 = 0xD00000000000002DLL;
  *(v2 + 8) = 0x80000002610D65C0;
  *(v2 + 16) = &unk_2610D0A60;
  *(v2 + 24) = v1;
  *(v2 + 32) = 0;
  swift_willThrow();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2610B047C(uint64_t a1)
{
  v1[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  v1[6] = swift_task_alloc();
  sub_2610BCC74();
  v1[7] = sub_2610BCC64();
  v3 = sub_2610BCBF4();
  v1[8] = v3;
  v1[9] = v2;

  return MEMORY[0x2822009F8](sub_2610B054C, v3, v2);
}

uint64_t sub_2610B054C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (!Strong)
  {

    v2 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_2610B0614, 0, 0);
}

uint64_t sub_2610B0614()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = sub_2610BCC94();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;
  sub_261042434(0, 0, v2, &unk_2610D0AF8, v4);

  v5 = v0[8];
  v6 = v0[9];

  return MEMORY[0x2822009F8](sub_2610B0700, v5, v6);
}

uint64_t sub_2610B0700()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2610B0788()
{
  v1 = sub_2610AFEC4();
  *(v0 + 40) = v1;

  return MEMORY[0x2822009F8](sub_2610B07F4, v1, 0);
}

uint64_t sub_2610B07F4()
{
  v1 = sub_261037C94();
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE658D0, &qword_2610C9540);
  *v2 = v0;
  v2[1] = sub_2610B08B8;

  return MEMORY[0x282200460](v0 + 16, v1, v3);
}

uint64_t sub_2610B08B8()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_2610B09E4, v1, 0);
}

uint64_t sub_2610B09E4()
{

  return MEMORY[0x2822009F8](sub_2610B0A4C, 0, 0);
}

uint64_t sub_2610B0A4C()
{
  *(v0 + 64) = *(v0 + 16);
  sub_2610BCC74();
  *(v0 + 80) = sub_2610BCC64();
  v2 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_2610B0AE8, v2, v1);
}

uint64_t sub_2610B0AE8()
{
  v1 = v0[9];
  v2 = v0[8];
  v3 = v0[4];

  v4 = (v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker_locatedExtension);
  v5 = *(v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker_locatedExtension);
  v6 = *(v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker_locatedExtension + 8);
  *v4 = v2;
  v4[1] = v1;
  sub_2610B17BC(v2, v1);
  sub_2610389C0(v5, v6);
  sub_2610439BC();

  return MEMORY[0x2822009F8](sub_2610B0B98, 0, 0);
}

uint64_t sub_2610B0B98()
{
  sub_2610389C0(*(v0 + 64), *(v0 + 72));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t PASFlowStepSelectPicker.nextStep()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker_locatedExtension);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker_locatedExtension + 8);
    v4 = qword_27FE63808;

    v5 = v3;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = sub_2610BC7B4();
    __swift_project_value_buffer(v6, qword_27FE65900);

    v7 = v5;
    v8 = sub_2610BC794();
    v9 = sub_2610BCD44();
    sub_2610389C0(v2, v3);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v48[0] = swift_slowAlloc();
      v11 = v48[0];
      *v10 = 136446210;
      __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
      v12 = sub_2610BC764();
      v14 = sub_260FA5970(v12, v13, v48);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_260F97000, v8, v9, "PASFlowStepSelectPicker nextStep loading picker extension %{public}s instead of family picker", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x2666F8720](v11, -1, -1);
      MEMORY[0x2666F8720](v10, -1, -1);
    }

    v15 = v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v17 = *(v15 + 8);
    type metadata accessor for PASFlowStepExtensionProvidedPicker(0);
    v18 = swift_allocObject();
    v19 = v18 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_result;
    *v19 = 0;
    *(v19 + 8) = 0;
    *(v19 + 16) = -1;
    v20 = OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker__accountProvider;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65760, &qword_2610BE940);
    v21 = swift_allocObject();
    *(v21 + 16) = 0u;
    *(v21 + 32) = 0u;
    *(v21 + 48) = 0;
    *(v18 + v20) = v21;
    v22 = (v18 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_locatedExtension);
    *v22 = v2;
    v22[1] = v7;
    v23 = sub_26104DC44(Strong, v17);
    swift_unknownObjectRelease();
    v24 = &unk_27FE66DD8;
    v25 = type metadata accessor for PASFlowStepExtensionProvidedPicker;
    goto LABEL_21;
  }

  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v26 = sub_2610BC7B4();
  __swift_project_value_buffer(v26, qword_27FE65900);
  v27 = sub_2610BC794();
  v28 = sub_2610BCD44();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_260F97000, v27, v28, "PASFlowStepSelectPicker nextStep no extension handle found", v29, 2u);
    MEMORY[0x2666F8720](v29, -1, -1);
  }

  sub_2610AFF90(v48);
  v30 = v49;
  v31 = v50;
  __swift_project_boxed_opaque_existential_1(v48, v49);
  LOBYTE(v51) = 4;
  LOBYTE(v30) = (*(v31 + 8))(&v51, v30, v31);
  __swift_destroy_boxed_opaque_existential_0Tm(v48);
  if (v30)
  {
    sub_2610B00AC();
    v33 = v32;
    ObjectType = swift_getObjectType();
    (*(v33 + 8))(v48, ObjectType, v33);
    swift_unknownObjectRelease();
    v35 = v49;
    if (v49)
    {
      v36 = v50;
      __swift_project_boxed_opaque_existential_1(v48, v49);
      (*(v36 + 8))(&v51, v35, v36);
      LODWORD(v36) = v51;
      __swift_destroy_boxed_opaque_existential_0Tm(v48);
      if (v36 == 1)
      {
        v37 = sub_2610BC794();
        v38 = sub_2610BCD44();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&dword_260F97000, v37, v38, "PASFlowStepSelectPicker nextStep is proto account picker", v39, 2u);
          MEMORY[0x2666F8720](v39, -1, -1);
        }

        v40 = v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
        swift_beginAccess();
        v41 = swift_unknownObjectWeakLoadStrong();
        v23 = sub_260FDCCC8(v41, *(v40 + 8));
        swift_unknownObjectRelease();
        v24 = &qword_27FE64750;
        v25 = type metadata accessor for PASFlowStepProtoAccountPicker;
        goto LABEL_21;
      }
    }

    else
    {
      sub_260FA9980(v48, &qword_27FE63CF0, &qword_2610C2510);
    }
  }

  v42 = sub_2610BC794();
  v43 = sub_2610BCD44();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_260F97000, v42, v43, "PASFlowStepSelectPicker nextStep is family picker", v44, 2u);
    MEMORY[0x2666F8720](v44, -1, -1);
  }

  v45 = v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
  swift_beginAccess();
  v46 = swift_unknownObjectWeakLoadStrong();
  v23 = sub_261068D50(v46, *(v45 + 8));
  swift_unknownObjectRelease();
  v24 = &qword_27FE660F0;
  v25 = type metadata accessor for PASFlowStepFamilyPicker;
LABEL_21:
  sub_2610B1608(v24, v25);
  return v23;
}

uint64_t PASFlowStepSelectPicker.init(delegate:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_2610B1410(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_2610B1230()
{
  sub_2610389C0(*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker_locatedExtension), *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker_locatedExtension + 8));
}

uint64_t PASFlowStepSelectPicker.deinit()
{
  v0 = PASSourceFlowStepBase.deinit();
  sub_2610389C0(*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker_locatedExtension), *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker_locatedExtension + 8));

  return v0;
}

uint64_t PASFlowStepSelectPicker.__deallocating_deinit()
{
  v0 = PASSourceFlowStepBase.deinit();
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker_locatedExtension);
  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker_locatedExtension + 8);

  sub_2610389C0(v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_2610B1410(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker_locatedExtension);
  *v5 = 0;
  v5[1] = 0;
  v6 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker__extensionCache;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64228, &unk_2610CCE80);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v2 + v6) = v7;
  v8 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker__accountProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65760, &qword_2610BE940);
  v9 = swift_allocObject();
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0;
  *(v2 + v8) = v9;
  v10 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker__featureFlagsProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63860, &unk_2610C2CE0);
  v11 = swift_allocObject();
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0;
  *(v2 + v10) = v11;
  v12 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSelectPicker__targetAccountOptionsProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE648E0, &qword_2610BEEC0);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v2 + v12) = v13;

  return sub_26104DC44(a1, a2);
}

uint64_t sub_2610B1534()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_260FB6DB4;

  return sub_2610B047C(v0);
}

uint64_t sub_2610B15C4(uint64_t a1)
{
  result = sub_2610B1608(&qword_27FE66588, type metadata accessor for PASFlowStepSelectPicker);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2610B1608(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t type metadata accessor for PASFlowStepSelectPicker(uint64_t a1)
{
  result = qword_27FE66E00;
  if (!qword_27FE66E00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2610B1708(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FBF860;

  return sub_2610B0768(a1, v4, v5, v6);
}

id sub_2610B17BC(id result, void *a2)
{
  if (result)
  {

    return a2;
  }

  return result;
}

uint64_t PASFlowStepCheckInternet.__allocating_init(delegate:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_2610B34E4(a1, a2);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t PASFlowStepCheckInternet.isNetworkReachable.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  return v1;
}

uint64_t sub_2610B18F0@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  *a2 = v4;
  return result;
}

uint64_t sub_2610B1970(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2610BC854();
}

uint64_t PASFlowStepCheckInternet.$isNetworkReachable.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  sub_2610BC814();
  return swift_endAccess();
}

uint64_t sub_2610B1A58(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  sub_2610BC814();
  return swift_endAccess();
}

uint64_t sub_2610B1AD0(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64790, &qword_2610C7710);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  sub_2610BC824();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t sub_2610B1C54@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepCheckInternet__reachabilityProvider);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &qword_27FE664F0, &qword_2610CD6D0);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE664F0, &qword_2610CD6D0);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260FA0470(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &qword_27FE664F0, &qword_2610CD6D0);
  swift_endAccess();
}

uint64_t sub_2610B1D90@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepCheckInternet__accountStore);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &qword_27FE65000, &qword_2610BEE60);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE65000, &qword_2610BEE60);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9DC50(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &qword_27FE65000, &qword_2610BEE60);
  swift_endAccess();
}

uint64_t PASFlowStepCheckInternet.prepareForPresentation()()
{
  v1[7] = v0;
  v1[8] = sub_2610BCC74();
  v1[9] = sub_2610BCC64();
  v2 = swift_task_alloc();
  v1[10] = v2;
  *v2 = v1;
  v2[1] = sub_2610B1F7C;

  return sub_26104582C();
}

uint64_t sub_2610B1F7C()
{
  *(*v1 + 88) = v0;

  v3 = sub_2610BCBF4();
  if (v0)
  {
    v4 = sub_2610B2250;
  }

  else
  {
    v4 = sub_2610B20D4;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_2610B20D4()
{

  sub_2610B1C54((v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  LOBYTE(v1) = (*(v2 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  sub_2610B22B4(v1 & 1);
  if (v1)
  {
    v3 = v0[7];
    sub_260FC3450();
    swift_allocError();
    *v4 = 0xD000000000000015;
    *(v4 + 8) = 0x80000002610D6650;
    *(v4 + 16) = &unk_2610D0B60;
    *(v4 + 24) = v3;
    *(v4 + 32) = 0;
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_2610B2250()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2610B22B4(char a1)
{
  if ((a1 & 1) == 0)
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v1 = sub_2610BC7B4();
    __swift_project_value_buffer(v1, qword_27FE65900);
    v2 = sub_2610BC794();
    v3 = sub_2610BCD64();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_260F97000, v2, v3, "PASFlowStepCheckInternet setNetworkReachable internet is NOT reachable", v4, 2u);
      MEMORY[0x2666F8720](v4, -1, -1);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2610BC854();
}

uint64_t sub_2610B240C()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  v0[37] = __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASFlowStepCheckInternet continueWithoutInternet", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  sub_2610B1D90((v0 + 21));
  v5 = v0[24];
  v6 = v0[25];
  __swift_project_boxed_opaque_existential_1(v0 + 21, v5);
  v9 = (*(v6 + 8) + **(v6 + 8));
  v7 = swift_task_alloc();
  v0[38] = v7;
  *v7 = v0;
  v7[1] = sub_2610B25FC;

  return v9(v5, v6);
}

uint64_t sub_2610B25FC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 312) = a1;
  *(v3 + 320) = v1;

  if (v1)
  {
    v4 = sub_2610B2BB0;
  }

  else
  {
    v4 = sub_2610B2710;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2610B2710()
{
  v1 = *(v0 + 312);
  if (!v1)
  {
    v8 = *(v0 + 288);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 168));
    v9 = v8 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 328) = Strong;
    if (Strong)
    {
      v11 = *(v9 + 8);
      swift_getObjectType();
      sub_260FE4BCC();
      v12 = swift_allocError();
      *v13 = 0;
      *(v0 + 16) = v12;
      *(v0 + 64) = 1;
      v17 = *(v11 + 16) + **(v11 + 16);
      v14 = swift_task_alloc();
      *(v0 + 336) = v14;
      *v14 = v0;
      v14[1] = sub_2610B2A20;

      __asm { BRAA            X3, X16 }
    }

    v15 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  v2 = *(v0 + 288);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 168));
  v3 = type metadata accessor for PASAccountWithImage();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = xmmword_2610BF320;
  *(v0 + 144) = v3;
  *(v0 + 152) = sub_2610B3768(&unk_27FE65010, type metadata accessor for PASAccountWithImage, &protocol conformance descriptor for PASAccountWithImage);
  *(v0 + 120) = v4;
  *(v0 + 160) = 0;
  v5 = OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepCheckInternet_noInternetResult;
  swift_beginAccess();
  sub_260FC3844(v0 + 120, v2 + v5, &qword_27FE66E20, &qword_2610D0B70);
  swift_endAccess();
  sub_2610BCC74();
  *(v0 + 344) = sub_2610BCC64();
  v7 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_2610B2B48, v7, v6);
}

uint64_t sub_2610B2A20()
{
  v1 = *v0;
  v4 = *v0;

  swift_unknownObjectRelease();
  sub_260FA9980(v1 + 16, &unk_27FE656D0, &unk_2610C0550);
  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2610B2B48()
{

  sub_2610439BC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2610B2BB0()
{
  v18 = v0;
  v1 = *(v0 + 320);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 168));
  v2 = v1;
  v3 = sub_2610BC794();
  v4 = sub_2610BCD64();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 320);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136446210;
    *(v0 + 280) = v5;
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, &v17);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, v3, v4, "PASFlowStepCheckInternet continueWithoutInternet failed %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  v12 = *(v0 + 288);
  *(v0 + 72) = *(v0 + 320);
  *(v0 + 112) = 1;
  v13 = OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepCheckInternet_noInternetResult;
  swift_beginAccess();
  sub_260FC3844(v0 + 72, v12 + v13, &qword_27FE66E20, &qword_2610D0B70);
  swift_endAccess();
  sub_2610BCC74();
  *(v0 + 344) = sub_2610BCC64();
  v15 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_2610B2B48, v15, v14);
}

NSObject *PASFlowStepCheckInternet.nextStep()()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  if (v33[0] == 1)
  {
    v1 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v3 = *(v1 + 8);
    type metadata accessor for PASFlowStepRepairLocalAccount(0);
    v4 = swift_allocObject();
    v5 = OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepRepairLocalAccount__authenticator;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FE65030, &qword_2610C4080);
    v6 = swift_allocObject();
    *(v6 + 16) = 0u;
    *(v6 + 32) = 0u;
    *(v6 + 48) = 0;
    *(v4 + v5) = v6;
    v7 = sub_26104DC44(Strong, v3);
    swift_unknownObjectRelease();
    v8 = &qword_27FE64D28;
    v9 = type metadata accessor for PASFlowStepRepairLocalAccount;
LABEL_13:
    sub_2610B3768(v8, v9, &protocol conformance descriptor for PASSourceFlowStepBase);
    return v7;
  }

  v10 = OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepCheckInternet_noInternetResult;
  swift_beginAccess();
  sub_260FA9918(v0 + v10, v33, &qword_27FE66E20, &qword_2610D0B70);
  if (v34 == 255)
  {
    v7 = 0x80000002610D6670;
    sub_260FC3450();
    swift_allocError();
    *v21 = 0xD000000000000026;
    *(v21 + 8) = 0x80000002610D6670;
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    *(v21 + 32) = 1;
  }

  else
  {
    if ((v34 & 1) == 0)
    {
      sub_260FA9980(v33, &qword_27FE66E28, &unk_2610D0B78);
      v22 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
      swift_beginAccess();
      v23 = swift_unknownObjectWeakLoadStrong();
      v24 = *(v22 + 8);
      type metadata accessor for PASFlowStepConnectPeer(0);
      v25 = swift_allocObject();
      v26 = OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer__deviceProvider;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65BC0, &qword_2610BFD90);
      v27 = swift_allocObject();
      *(v27 + 16) = 0;
      *(v27 + 24) = 0;
      *(v25 + v26) = v27;
      v28 = OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer__accountProvider;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65760, &qword_2610BE940);
      v29 = swift_allocObject();
      *(v29 + 16) = 0u;
      *(v29 + 32) = 0u;
      *(v29 + 48) = 0;
      *(v25 + v28) = v29;
      v30 = v25 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer_result;
      *v30 = 0;
      *(v30 + 8) = -1;
      v7 = sub_26104DC44(v23, v24);
      swift_unknownObjectRelease();
      v8 = &qword_27FE64D18;
      v9 = type metadata accessor for PASFlowStepConnectPeer;
      goto LABEL_13;
    }

    v11 = *v33;
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v12 = sub_2610BC7B4();
    __swift_project_value_buffer(v12, qword_27FE65900);
    v13 = v11;
    v7 = sub_2610BC794();
    v14 = sub_2610BCD64();

    if (os_log_type_enabled(v7, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v32[0] = v16;
      *v15 = 136446210;
      v35 = v11;
      v17 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
      v18 = sub_2610BCA34();
      v20 = sub_260FA5970(v18, v19, v32);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_260F97000, v7, v14, "PASFlowStepCheckInternet nextStep encountered error: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x2666F8720](v16, -1, -1);
      MEMORY[0x2666F8720](v15, -1, -1);
    }
  }

  swift_willThrow();
  return v7;
}

uint64_t PASFlowStepCheckInternet.init(delegate:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_2610B34E4(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_2610B3264()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepCheckInternet__isNetworkReachable;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_260FA9980(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepCheckInternet_noInternetResult, &qword_27FE66E20, &qword_2610D0B70);
}

uint64_t PASFlowStepCheckInternet.deinit()
{
  v0 = PASSourceFlowStepBase.deinit();
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepCheckInternet__isNetworkReachable;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_260FA9980(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepCheckInternet_noInternetResult, &qword_27FE66E20, &qword_2610D0B70);

  return v0;
}

uint64_t PASFlowStepCheckInternet.__deallocating_deinit()
{
  v0 = PASSourceFlowStepBase.deinit();
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepCheckInternet__isNetworkReachable;

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_260FA9980(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepCheckInternet_noInternetResult, &qword_27FE66E20, &qword_2610D0B70);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_2610B34E4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v17[-v8];
  v10 = OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepCheckInternet__isNetworkReachable;
  v17[15] = 0;
  sub_2610BC804();
  (*(v6 + 32))(v2 + v10, v9, v5);
  v11 = v2 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepCheckInternet_noInternetResult;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0;
  *(v11 + 40) = -1;
  v12 = OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepCheckInternet__reachabilityProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE647A0, &unk_2610C2620);
  v13 = swift_allocObject();
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0;
  *(v2 + v12) = v13;
  v14 = OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepCheckInternet__accountStore;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64220, &unk_2610C0560);
  v15 = swift_allocObject();
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  *(v15 + 48) = 0;
  *(v2 + v14) = v15;
  return sub_26104DC44(a1, a2);
}

uint64_t sub_2610B3680()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_260FB6DB4;

  return sub_260FC77D0(v0);
}

uint64_t sub_2610B3710(uint64_t a1)
{
  result = sub_2610B3768(&qword_27FE66D80, type metadata accessor for PASFlowStepCheckInternet, &protocol conformance descriptor for PASSourceFlowStepBase);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2610B3768(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for PASFlowStepCheckInternet(uint64_t a1)
{
  result = qword_27FE66E40;
  if (!qword_27FE66E40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2610B3818(uint64_t a1)
{
  sub_260FDD7E4();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2610B38C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00656369766544;
  v3 = 0x7465677261546F6ELL;
  v4 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v7 = 0x656372756F536F6ELL;
      v8 = 0xEF746E756F636341;
    }

    else
    {
      if (a1 == 4)
      {
        v7 = 0xD000000000000014;
      }

      else
      {
        v7 = 0xD000000000000019;
      }

      if (v4 == 4)
      {
        v8 = 0x80000002610D1C10;
      }

      else
      {
        v8 = 0x80000002610D1C30;
      }
    }
  }

  else
  {
    v5 = 0x5064657661536F6ELL;
    v6 = 0xEF64726F77737361;
    if (a1 != 1)
    {
      v5 = 0x7465677261546F6ELL;
      v6 = 0xEF746E756F636341;
    }

    if (a1)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0x7465677261546F6ELL;
    }

    if (v4)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0xEE00656369766544;
    }
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v3 = 0x656372756F536F6ELL;
      goto LABEL_33;
    }

    if (a2 == 4)
    {
      v3 = 0xD000000000000014;
    }

    else
    {
      v3 = 0xD000000000000019;
    }

    if (a2 == 4)
    {
      v2 = 0x80000002610D1C10;
    }

    else
    {
      v2 = 0x80000002610D1C30;
    }

LABEL_30:
    if (v7 != v3)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    goto LABEL_30;
  }

  if (a2 == 1)
  {
    v2 = 0xEF64726F77737361;
    if (v7 != 0x5064657661536F6ELL)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

LABEL_33:
  v2 = 0xEF746E756F636341;
  if (v7 != v3)
  {
LABEL_36:
    v9 = sub_2610BD384();
    goto LABEL_37;
  }

LABEL_34:
  if (v8 != v2)
  {
    goto LABEL_36;
  }

  v9 = 1;
LABEL_37:

  return v9 & 1;
}

uint64_t sub_2610B3AB0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x617461446D6973;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x7369766F72506F64;
    }

    else
    {
      v4 = 0x65757165526C7275;
    }

    if (v3 == 2)
    {
      v5 = 0xEB000000006E6F69;
    }

    else
    {
      v5 = 0xEE00617461447473;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1684632420;
    }

    else
    {
      v4 = 0x617461446D6973;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0x7369766F72506F64;
  v8 = 0xEB000000006E6F69;
  if (a2 != 2)
  {
    v7 = 0x65757165526C7275;
    v8 = 0xEE00617461447473;
  }

  if (a2)
  {
    v2 = 1684632420;
    v6 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2610BD384();
  }

  return v11 & 1;
}

uint64_t sub_2610B3C0C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x52676E697373696DLL;
    }

    else
    {
      v3 = 0x5264696C61766E69;
    }

    if (v2)
    {
      v4 = 0xEF72657669656365;
    }

    else
    {
      v4 = 0xEC0000006574756FLL;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xD000000000000013;
    v4 = 0x80000002610D1CE0;
  }

  else if (a1 == 3)
  {
    v3 = 0x6164696C61766E69;
    v4 = 0xEB00000000646574;
  }

  else
  {
    v4 = 0xE700000000000000;
    v3 = 0x74756F656D6974;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x52676E697373696DLL;
    }

    else
    {
      v9 = 0x5264696C61766E69;
    }

    if (a2)
    {
      v8 = 0xEF72657669656365;
    }

    else
    {
      v8 = 0xEC0000006574756FLL;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x6164696C61766E69;
    v6 = 0xEB00000000646574;
    if (a2 != 3)
    {
      v5 = 0x74756F656D6974;
      v6 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000013;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0x80000002610D1CE0;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_2610BD384();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_2610B3DCC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x454E4F485049;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1145131081;
    }

    else
    {
      v4 = 0x4E574F4E4B4E55;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1146048585;
    }

    else
    {
      v4 = 0x454E4F485049;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0xE400000000000000;
  v8 = 1145131081;
  if (a2 != 2)
  {
    v8 = 0x4E574F4E4B4E55;
    v7 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 1146048585;
    v6 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2610BD384();
  }

  return v11 & 1;
}

uint64_t sub_2610B3EF4(char a1)
{
  v5 = sub_2610BD634();
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  if (a1)
  {
    v2 = 0xD000000000000016;
  }

  else
  {
    v2 = 0x6341534D44496F6ELL;
  }

  if (a1)
  {
    v3 = 0x80000002610D1900;
  }

  else
  {
    v3 = 0xED0000746E756F63;
  }

  MEMORY[0x2666F7380](v2, v3);

  return v5;
}

uint64_t sub_2610B3F9C(char a1)
{
  v5 = sub_2610BD634();
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  if (a1)
  {
    v2 = 0x5264696C61766E69;
  }

  else
  {
    v2 = 0xD000000000000013;
  }

  if (a1)
  {
    v3 = 0xEE0073746C757365;
  }

  else
  {
    v3 = 0x80000002610D18C0;
  }

  MEMORY[0x2666F7380](v2, v3);

  return v5;
}

uint64_t sub_2610B4044(char a1)
{
  v5 = sub_2610BD634();
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  if (a1)
  {
    v2 = 0x6563697665446F6ELL;
  }

  else
  {
    v2 = 0xD000000000000016;
  }

  if (a1)
  {
    v3 = 0xE800000000000000;
  }

  else
  {
    v3 = 0x80000002610D1900;
  }

  MEMORY[0x2666F7380](v2, v3);

  return v5;
}

uint64_t sub_2610B40E0(char a1)
{
  v5 = sub_2610BD634();
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  if (a1)
  {
    v2 = 0xD000000000000014;
  }

  else
  {
    v2 = 0x4F64696C61766E69;
  }

  if (a1)
  {
    v3 = 0x80000002610D1CA0;
  }

  else
  {
    v3 = 0xEE00736E6F697470;
  }

  MEMORY[0x2666F7380](v2, v3);

  return v5;
}

uint64_t sub_2610B4188(char a1)
{
  v5 = sub_2610BD634();
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  if (a1)
  {
    v2 = 0xD000000000000017;
  }

  else
  {
    v2 = 0xD000000000000016;
  }

  if (a1)
  {
    v3 = "unableToInitCDPContext";
  }

  else
  {
    v3 = "PASFlowStepProxiedTermsDisagree";
  }

  MEMORY[0x2666F7380](v2, v3 | 0x8000000000000000);

  return v5;
}

uint64_t sub_2610B4218(char a1)
{
  v5 = sub_2610BD634();
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = 0xD000000000000010;
    }

    else
    {
      v2 = 0x6569786F72506F6ELL;
    }

    if (a1 == 1)
    {
      v3 = 0x80000002610D1970;
    }

    else
    {
      v3 = 0xEF65636976654464;
    }
  }

  else
  {
    v3 = 0x80000002610D1950;
    v2 = 0xD000000000000013;
  }

  MEMORY[0x2666F7380](v2, v3);

  return v5;
}

uint64_t sub_2610B42E8(unsigned __int8 a1)
{
  v11 = sub_2610BD634();
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  v2 = 0xEC0000006574756FLL;
  v3 = 0x5264696C61766E69;
  v4 = 0x80000002610D1CE0;
  v5 = 0xD000000000000013;
  v6 = 0xEB00000000646574;
  v7 = 0x6164696C61766E69;
  if (a1 != 3)
  {
    v7 = 0x74756F656D6974;
    v6 = 0xE700000000000000;
  }

  if (a1 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (a1)
  {
    v3 = 0x52676E697373696DLL;
    v2 = 0xEF72657669656365;
  }

  if (a1 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (a1 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v4;
  }

  MEMORY[0x2666F7380](v8, v9);

  return v11;
}

uint64_t sub_2610B4404(char a1)
{
  v5 = sub_2610BD634();
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  if (a1)
  {
    v2 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xD000000000000017;
  }

  if (a1)
  {
    v3 = "missingDependentAppleID";
  }

  else
  {
    v3 = "E";
  }

  MEMORY[0x2666F7380](v2, v3 | 0x8000000000000000);

  return v5;
}

uint64_t sub_2610B4498(char a1)
{
  v5 = sub_2610BD634();
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  if (a1)
  {
    v2 = 0x41676E697373696DLL;
    if (a1 == 1)
    {
      v3 = 0xEF6563697665444BLL;
    }

    else
    {
      v3 = 0xEE00746E756F6363;
    }
  }

  else
  {
    v3 = 0x80000002610D1A50;
    v2 = 0xD000000000000010;
  }

  MEMORY[0x2666F7380](v2, v3);

  return v5;
}

uint64_t sub_2610B4558(char a1)
{
  v2 = 0xD000000000000010;
  v5 = sub_2610BD634();
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = 0xD000000000000021;
    }

    else
    {
      v2 = 0xD00000000000001ALL;
    }

    if (a1 == 1)
    {
      v3 = "noMessageSession";
    }

    else
    {
      v3 = "essageSessionType";
    }
  }

  else
  {
    v3 = "";
  }

  MEMORY[0x2666F7380](v2, v3 | 0x8000000000000000);

  return v5;
}

uint64_t sub_2610B4614(char a1)
{
  v5 = sub_2610BD634();
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = 0x446567616D496F6ELL;
    }

    else
    {
      v2 = 0x416C61636F4C6F6ELL;
    }

    if (a1 == 1)
    {
      v3 = 0xEB00000000617461;
    }

    else
    {
      v3 = 0xEE00746E756F6363;
    }
  }

  else
  {
    v3 = 0xE900000000000074;
    v2 = 0x7365757165526F6ELL;
  }

  MEMORY[0x2666F7380](v2, v3);

  return v5;
}

uint64_t sub_2610B46E4(char a1)
{
  v5 = sub_2610BD634();
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = 0x6E756F6363416F6ELL;
    }

    else
    {
      v2 = 0x6341534D44496F6ELL;
    }

    if (a1 == 1)
    {
      v3 = 0xE900000000000074;
    }

    else
    {
      v3 = 0xED0000746E756F63;
    }
  }

  else
  {
    v3 = 0x80000002610D1AE0;
    v2 = 0xD000000000000017;
  }

  MEMORY[0x2666F7380](v2, v3);

  return v5;
}

uint64_t sub_2610B47B0(unsigned __int8 a1)
{
  v12 = sub_2610BD634();
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  v2 = 0xEE00656369766544;
  v3 = 0x656372756F536F6ELL;
  v4 = 0xEF746E756F636341;
  v5 = 0xD000000000000014;
  v6 = 0x80000002610D1C10;
  if (a1 != 4)
  {
    v5 = 0xD000000000000019;
    v6 = 0x80000002610D1C30;
  }

  if (a1 != 3)
  {
    v3 = v5;
    v4 = v6;
  }

  v7 = 0xEF64726F77737361;
  v8 = 0x5064657661536F6ELL;
  if (a1 != 1)
  {
    v8 = 0x7465677261546F6ELL;
    v7 = 0xEF746E756F636341;
  }

  if (a1)
  {
    v2 = v7;
  }

  else
  {
    v8 = 0x7465677261546F6ELL;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v3;
  }

  if (a1 <= 2u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v4;
  }

  MEMORY[0x2666F7380](v9, v10);

  return v12;
}

uint64_t sub_2610B4904()
{
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_2610B4A08(uint64_t a1)
{
  sub_2610BCA54();
}

uint64_t sub_2610B4AF8(uint64_t a1)
{
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

unint64_t sub_2610B4BF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2610B7AE8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2610B4C28(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000006574756FLL;
  v4 = 0x5264696C61766E69;
  v5 = 0x80000002610D1CE0;
  v6 = 0xD000000000000013;
  v7 = 0xEB00000000646574;
  v8 = 0x6164696C61766E69;
  if (v2 != 3)
  {
    v8 = 0x74756F656D6974;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x52676E697373696DLL;
    v3 = 0xEF72657669656365;
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

unint64_t sub_2610B4CE8()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v3;
  v4 = sub_2610B42E8(v1);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  v6 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FD6C78(inited + 32);
  return v6;
}

uint64_t sub_2610B4DA0(uint64_t a1)
{
  v2 = sub_2610B80C8();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2610B4DDC(uint64_t a1)
{
  v2 = sub_2610B80C8();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t IDSMessageTransport.receiver.getter()
{
  v1 = *(v0 + 8);
  sub_260F9C55C(v1, *(v0 + 16));
  return v1;
}

uint64_t IDSMessageTransport.receiver.setter(uint64_t a1, uint64_t a2)
{
  result = sub_260F9A2D8(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_2610B4EAC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2610B844C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_260F9C55C(v3, v4);
}

uint64_t sub_2610B4F2C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2610B8424;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  sub_260F9C55C(v3, v4);
  result = sub_260F9A2D8(v7, v8);
  *(a2 + 24) = v6;
  *(a2 + 32) = v5;
  return result;
}

uint64_t IDSMessageTransport.invalidationHandler.getter()
{
  v1 = *(v0 + 24);
  sub_260F9C55C(v1, *(v0 + 32));
  return v1;
}

uint64_t IDSMessageTransport.invalidationHandler.setter(uint64_t a1, uint64_t a2)
{
  result = sub_260F9A2D8(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t IDSMessageTransport.pushToken.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t IDSMessageTransport.init(service:pushToken:responseTimeout:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27 = a6;
  v28 = a4;
  v29 = a5;
  v25 = a2;
  v26 = a3;
  v24 = sub_2610BCDC4();
  v9 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2610BCDA4();
  MEMORY[0x28223BE20](v13, v14);
  v15 = sub_2610BC8E4();
  MEMORY[0x28223BE20](v15 - 8, v16);
  *(a7 + 24) = 0u;
  *(a7 + 8) = 0u;
  *a7 = a1;
  sub_261028704();
  sub_2610BC8D4();
  v30 = MEMORY[0x277D84F90];
  sub_2610B52D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66E60, &qword_2610D0C60);
  sub_2610B5330();
  sub_2610BCED4();
  (*(v9 + 104))(v12, *MEMORY[0x277D85260], v24);
  v17 = sub_2610BCDF4();
  v19 = v25;
  v18 = v26;
  *(a7 + 48) = v17;
  *(a7 + 56) = v19;
  *(a7 + 64) = v18;
  type metadata accessor for IDSResponseHandler(0, v27, v20, v21);
  result = sub_2610698BC(v28, v29);
  *(a7 + 40) = result;
  return result;
}

unint64_t sub_2610B52D8()
{
  result = qword_27FE66E58;
  if (!qword_27FE66E58)
  {
    sub_2610BCDA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66E58);
  }

  return result;
}

unint64_t sub_2610B5330()
{
  result = qword_27FE66E68;
  if (!qword_27FE66E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE66E60, &qword_2610D0C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66E68);
  }

  return result;
}

uint64_t IDSMessageTransport.onReceive(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  sub_260F9A2D8(v3[1], v3[2]);
  *(a3 + 24) = *(v3 + 3);
  *(a3 + 40) = *(v3 + 5);
  *(a3 + 56) = *(v3 + 7);
  *a3 = v7;
  *(a3 + 8) = a1;
  *(a3 + 16) = a2;
}

uint64_t IDSMessageTransport.onInvalidation(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_260F9A2D8(*(v3 + 24), *(v3 + 32));
  *a3 = *v3;
  v7 = *(v3 + 16);
  *(a3 + 40) = *(v3 + 40);
  *(a3 + 56) = *(v3 + 56);
  *(a3 + 16) = v7;
  *(a3 + 24) = a1;
  *(a3 + 32) = a2;
}

id IDSMessageTransport.build()(uint64_t a1)
{
  v2 = v1[1];
  v15[0] = *v1;
  v15[1] = v2;
  v3 = v1[3];
  v15[2] = v1[2];
  v15[3] = v3;
  v16 = *(v1 + 8);
  if (*(&v15[0] + 1))
  {
    v4 = v1[3];
    v12 = v1[2];
    v13 = v4;
    v14 = *(v1 + 8);
    v5 = v1[1];
    v10 = *v1;
    v11 = v5;
    (*(*(a1 - 8) + 16))(v9, v15, a1);
    return sub_2610B7930(a1);
  }

  else
  {
    sub_26106ACF4();
    swift_allocError();
    *v8 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_2610B55C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = IDSMessageTransport.build()(a1);
  if (v3)
  {
    v7 = v2[3];
    v15 = v2[2];
    v16 = v7;
    v17 = *(v2 + 8);
    v8 = v2[1];
    v13 = *v2;
    v14 = v8;
    return (*(*(a1 - 8) + 8))(&v13, a1);
  }

  else
  {
    v10 = v6;
    v11 = v2[3];
    v15 = v2[2];
    v16 = v11;
    v17 = *(v2 + 8);
    v12 = v2[1];
    v13 = *v2;
    v14 = v12;
    result = (*(*(a1 - 8) + 8))(&v13, a1);
    *a2 = v10;
  }

  return result;
}

id sub_2610B56BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *MEMORY[0x277D85000];
  sub_2610BC604();
  *(v3 + qword_27FE66F28) = 0;
  v9 = v3 + qword_27FE66E78;
  v10 = *(a1 + 48);
  *(v9 + 2) = *(a1 + 32);
  *(v9 + 3) = v10;
  *(v9 + 8) = *(a1 + 64);
  v11 = *(a1 + 16);
  *v9 = *a1;
  *(v9 + 1) = v11;
  *(v3 + qword_27FE66F10) = a2;
  *(v3 + qword_27FE66F18) = a3;
  v13 = type metadata accessor for ActivatedIDSMessageTransport(0, *((v8 & v7) + 0x50), *((v8 & v7) + 0x58), v12);
  v15.receiver = v3;
  v15.super_class = v13;
  return objc_msgSendSuper2(&v15, sel_init);
}

void sub_2610B57A8()
{
  *(v0 + qword_27FE66F28) = 1;
  v1 = v0 + qword_27FE66E78;
  v2 = [*(v0 + qword_27FE66E78) removeDelegate_];
  v3 = *(v1 + 24);
  if (v3)
  {
    v3(v2);
  }
}

uint64_t sub_2610B583C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_260FB6DB4;

  return sub_2610B61E8(a5, a6, a7);
}

uint64_t sub_2610B58F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = swift_task_alloc();
  *(v8 + 16) = v13;
  *v13 = v8;
  v13[1] = sub_260FB6DB4;

  return sub_2610B5ABC(a5, a6, a7, a8, v16);
}

uint64_t sub_2610B59C0(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = a6;
  if (a5)
  {
    v12 = sub_2610BC914();
    if (v8)
    {
LABEL_3:
      v13 = sub_2610BCA04();
      v8 = v14;
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
LABEL_6:
  v15 = a3;
  v16 = a4;
  v17 = a7;
  v18 = a1;
  sub_2610B7B34(v12, v13, v8, a7);
}

uint64_t sub_2610B5ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *v5;
  v8 = *MEMORY[0x277D85000];
  v6[8] = *MEMORY[0x277D85000] & *v5;
  v9 = *((v8 & v7) + 0x50);
  v6[9] = v9;
  v6[10] = *(v9 - 8);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2610B5BE0, 0, 0);
}

uint64_t sub_2610B5BE0()
{
  v18 = v0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);

  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_260FA5970(v5, v4, &v17);
    _os_log_impl(&dword_260F97000, v2, v3, "Received request from peer for identifier: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  v8 = v0[7] + qword_27FE66E78;
  v9 = *(v8 + 8);
  v0[14] = v9;
  v0[15] = *(v8 + 16);
  if (v9)
  {

    sub_2610BC6A4();
    (*(v0[10] + 16))(v0[11], v0[13], v0[9]);
    v16 = (v9 + *v9);
    v13 = swift_task_alloc();
    v0[16] = v13;
    *v13 = v0;
    v13[1] = sub_2610B5F20;
    v15 = v0[11];
    v14 = v0[12];

    return v16(v14, v15);
  }

  else
  {
    sub_26106ACF4();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_2610B5F20()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_2610B6140;
  }

  else
  {
    v2 = sub_2610B6034;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2610B6034()
{
  v15 = v0;
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[5];
  v8 = v0[2];
  v9 = v0[3];
  v13[0] = v0[4];
  v13[1] = v7;
  v14 = 0;
  sub_2610B6AF8(v4, v13, v8, v9);
  sub_260F9A2D8(v2, v1);
  v10 = *(v6 + 8);
  v10(v4, v5);
  v10(v3, v5);

  v11 = v0[1];

  return v11();
}

uint64_t sub_2610B6140()
{
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[10];
  sub_260F9A2D8(v0[14], v0[15]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2610B61E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2610B620C, 0, 0);
}

uint64_t sub_2610B620C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = *(v1 + qword_27FE66E78 + 40);
  v0[6] = v3;
  v4 = swift_task_alloc();
  v0[7] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;

  return MEMORY[0x2822009F8](sub_2610B629C, v3, 0);
}

uint64_t sub_2610B629C()
{
  sub_261069A1C(v0[2], v0[3], sub_2610B83B4, v0[7]);

  v1 = v0[1];

  return v1();
}

id sub_2610B6320(id a1, uint64_t a2, uint64_t a3)
{
  v28[7] = *MEMORY[0x277D85DE8];
  v6 = *a3;
  v7 = *(a3 + 8);
  v8 = *(a3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE67030, &unk_2610C4160);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  v10 = 0x74736163696E75;
  if (v8 == 1)
  {
    v10 = v6;
    v11 = v7;
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  if (v8)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (v8)
  {
    v13 = v11;
  }

  else
  {
    v13 = v7;
  }

  v14 = inited;
  *(inited + 32) = v12;
  *(inited + 40) = v13;
  sub_26100A354(v6, v7, v8);
  v15 = sub_26100A0B4(v14);
  swift_setDeallocating();
  sub_2610B8360(v14 + 32);
  v16 = sub_2610BC6D4();
  if (v4)
  {
  }

  else
  {
    v17 = *(v3 + qword_27FE66E78);
    sub_260FDF608(v16);

    v18 = sub_2610BC8F4();

    sub_2610B660C(v15);

    v19 = sub_2610BCCF4();

    v20 = sub_2610BC8F4();
    v27 = 0;
    v28[0] = 0;
    v21 = [v17 sendMessage:v18 toDestinations:v19 priority:300 options:v20 identifier:v28 error:&v27];

    v22 = v27;
    a1 = v28[0];
    if (v21)
    {
      if (v28[0])
      {
        a1 = sub_2610BCA04();
      }

      else
      {
        sub_26106ACF4();
        swift_allocError();
        *v25 = 2;
        swift_willThrow();
      }

      v23 = v22;
    }

    else
    {
      v24 = v27;
      a1 = a1;
      sub_2610BC4F4();

      swift_willThrow();
    }
  }

  return a1;
}

uint64_t sub_2610B660C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE67038, &qword_2610D1040);
    v2 = sub_2610BCF64();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
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

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 56;

  v9 = 0;
  while (v5)
  {
LABEL_15:

    swift_dynamicCast();
    result = sub_2610BCF04();
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) == 0)
    {
      v16 = 0;
      v17 = (63 - v13) >> 6;
      while (++v15 != v17 || (v16 & 1) == 0)
      {
        v18 = v15 == v17;
        if (v15 == v17)
        {
          v15 = 0;
        }

        v16 |= v18;
        v19 = *(v7 + 8 * v15);
        if (v19 != -1)
        {
          v10 = __clz(__rbit64(~v19)) + (v15 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v14) & ~*(v7 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v5 &= v5 - 1;
    v11 = *(v2 + 48) + 40 * v10;
    *(v11 + 32) = v22;
    *v11 = v20;
    *(v11 + 16) = v21;
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

    v5 = *(a1 + 56 + 8 * v12);
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

uint64_t sub_2610B6840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  *(v4 + 40) = *a3;
  *(v4 + 80) = *(a3 + 16);
  return MEMORY[0x2822009F8](sub_2610B6874, 0, 0);
}

uint64_t sub_2610B6874()
{
  v15 = v0;
  v1 = sub_260FA8BCC(MEMORY[0x277D84F90]);
  v2 = sub_2610AEC98(1, v1);
  v3 = sub_2610AEAD8(v2);
  *(v0 + 56) = v3;
  v4 = v3;
  v5 = *(v0 + 80);
  v6 = *(v0 + 24);
  v13 = *(v0 + 40);
  v14 = v5;
  v7 = sub_2610B6320(v6, v4, &v13);
  *(v0 + 64) = v8;
  v9 = v8;
  v10 = swift_task_alloc();
  *(v0 + 72) = v10;
  *v10 = v0;
  v10[1] = sub_2610B69C4;
  v11 = *(v0 + 16);

  return sub_2610B6CD8(v11, v7, v9);
}

uint64_t sub_2610B69C4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_2610B6AF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = sub_260FA8BCC(MEMORY[0x277D84F90]);
  v12 = sub_2610AED3C(a3, a4, v11);
  v13 = sub_2610AEAD8(v12);
  if (!v4)
  {
    v23[0] = v8;
    v23[1] = v9;
    v24 = v10;
    v14 = sub_2610B6320(a1, v13, v23);
    v16 = v15;

    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v17 = sub_2610BC7B4();
    __swift_project_value_buffer(v17, qword_27FE65900);

    v18 = sub_2610BC794();
    v19 = sub_2610BCD84();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v23[0] = v21;
      *v20 = 136315138;
      v22 = sub_260FA5970(v14, v16, v23);

      *(v20 + 4) = v22;
      _os_log_impl(&dword_260F97000, v18, v19, "Sent response to peer for identifier: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x2666F8720](v21, -1, -1);
      MEMORY[0x2666F8720](v20, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_2610B6CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *MEMORY[0x277D85000] & *v3;
  return MEMORY[0x2822009F8](sub_2610B6D34, 0, 0);
}

uint64_t sub_2610B6D34()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = swift_task_alloc();
  v0[7] = v5;
  v5[2] = v2;
  v5[3] = v4;
  v5[4] = v3;
  v6 = swift_task_alloc();
  v0[8] = v6;
  v7 = *(v1 + 80);
  *v6 = v0;
  v6[1] = sub_2610B6E38;
  v8 = v0[2];

  return MEMORY[0x2822008A0](v8, 0, 0, 0xD00000000000002CLL, 0x80000002610D67D0, sub_2610B821C, v5, v7);
}

uint64_t sub_2610B6E38()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (!v0)
  {

    v3 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_2610B6F74, 0, 0);
}

uint64_t sub_2610B6F74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2610B6FD8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v26 = a4;
  v24 = *a2;
  v6 = *MEMORY[0x277D85000];
  v7 = *((*MEMORY[0x277D85000] & v24) + 0x50);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FE648D0, &qword_2610BF450);
  v8 = sub_2610BCC24();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v23 - v15;
  v17 = sub_2610BCC94();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v9 + 16))(v12, a1, v8);
  v18 = (*(v9 + 80) + 72) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = v7;
  *(v19 + 5) = *((v6 & v24) + 0x58);
  *(v19 + 6) = a2;
  v20 = v26;
  *(v19 + 7) = v25;
  *(v19 + 8) = v20;
  (*(v9 + 32))(&v19[v18], v12, v8);
  v21 = a2;

  sub_261042434(0, 0, v16, &unk_2610D1030, v19);
}

uint64_t sub_2610B723C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_2610B7260, 0, 0);
}

uint64_t sub_2610B7290()
{
  sub_261069FE0(v0[3], v0[4], v0[5]);
  v1 = v0[1];

  return v1();
}

id ActivatedIDSMessageTransport.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ActivatedIDSMessageTransport.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ActivatedIDSMessageTransport(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_2610B7414(uint64_t a1)
{
  v2 = *(a1 + qword_27FE66E78 + 8);
  v3 = *(a1 + qword_27FE66E78 + 16);
  v4 = *(a1 + qword_27FE66E78 + 24);
  v5 = *(a1 + qword_27FE66E78 + 32);
  v6 = *(a1 + qword_27FE66E78 + 48);

  sub_260F9A2D8(v2, v3);
  sub_260F9A2D8(v4, v5);

  v7 = qword_27FE66F20;
  v8 = sub_2610BC614();
  v9 = *(*(v8 - 8) + 8);

  return v9(a1 + v7, v8);
}

uint64_t ActivatedIDSMessageTransport.availableRoutes.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FE66E80, &qword_2610D0C68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  v2 = *(v0 + qword_27FE66E78 + 64);
  *(inited + 32) = *(v0 + qword_27FE66E78 + 56);
  *(inited + 40) = v2;
  *(inited + 48) = 0;

  v3 = sub_2610099F8(inited);
  swift_setDeallocating();
  sub_261009DA4(inited + 32);
  return v3;
}

uint64_t ActivatedIDSMessageTransport.send(_:using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 48) = a2;
  *(v4 + 56) = v3;
  *(v4 + 40) = a1;
  *(v4 + 64) = *a3;
  *(v4 + 33) = *(a3 + 16);
  return MEMORY[0x2822009F8](sub_2610B75D8, 0, 0);
}

uint64_t sub_2610B75D8()
{
  if (*(*(v0 + 56) + qword_27FE66F28))
  {
    v1 = 3;
LABEL_11:
    sub_26106ACF4();
    swift_allocError();
    *v10 = v1;
    swift_willThrow();
    v11 = *(v0 + 8);

    return v11();
  }

  v2 = *(v0 + 33);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  if (v2 == 2 && (v4 | v3) == 0)
  {
    v1 = 0;
    goto LABEL_11;
  }

  *(v0 + 16) = v4;
  *(v0 + 24) = v3;
  *(v0 + 32) = v2;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_2610B7724;
  v7 = *(v0 + 48);
  v8 = *(v0 + 40);

  return sub_2610B6840(v8, v7, v0 + 16);
}

uint64_t sub_2610B7724()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (!v0)
  {
    v3 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_260FB5400, 0, 0);
}

uint64_t sub_2610B787C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_260FBF860;

  return ActivatedIDSMessageTransport.send(_:using:)(a1, a2, a3);
}

id sub_2610B7930(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 48);
  v20[2] = *(v1 + 32);
  v21 = v4;
  v22 = *(v1 + 64);
  v5 = *(v1 + 16);
  v20[0] = *v1;
  v20[1] = v5;
  sub_2610BC6F4();
  swift_allocObject();
  v6 = sub_2610BC6E4();
  sub_2610BC6C4();
  swift_allocObject();
  v7 = sub_2610BC6B4();
  v9 = type metadata accessor for ActivatedIDSMessageTransport(0, *(a1 + 16), *(a1 + 24), v8);
  v10 = *(v2 + 48);
  v18[2] = *(v2 + 32);
  v18[3] = v10;
  v19 = *(v2 + 64);
  v11 = *(v2 + 16);
  v18[0] = *v2;
  v18[1] = v11;
  v12 = *(a1 - 8);
  (*(v12 + 16))(v17, v20, a1);

  v13 = objc_allocWithZone(v9);
  v14 = sub_2610B56BC(v18, v6, v7);
  v15 = [objc_allocWithZone(MEMORY[0x277D18A20]) init];
  [v15 setWantsCrossAccountMessaging_];
  [*&v20[0] addDelegate:v14 withDelegateProperties:v15 queue:v21];

  (*(v12 + 8))(v20, a1);
  return v14;
}

unint64_t sub_2610B7AE8(uint64_t a1, uint64_t a2)
{
  v2 = sub_2610BD154();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2610B7B34(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  result = MEMORY[0x28223BE20](a1, v9);
  v12 = &v30 - v11;
  if (result)
  {
    result = sub_26103B7A0(result);
    if (result)
    {
      if (!a4)
      {
        __break(1u);
        return result;
      }

      v13 = result;
      v14 = [a4 incomingResponseIdentifier];
      if (v14)
      {
        v15 = v14;
        v16 = sub_2610BCA04();
        v18 = v17;

        v19 = sub_2610BCC94();
        (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
        v20 = swift_allocObject();
        v20[2] = 0;
        v20[3] = 0;
        v20[4] = v4;
        v20[5] = v16;
        v20[6] = v18;
        v20[7] = v13;
        v21 = v4;
        sub_261042434(0, 0, v12, &unk_2610D1060, v20);
      }

      v22 = [a4 outgoingResponseIdentifier];
      if (v22)
      {
        v23 = v22;
        v24 = sub_2610BCA04();
        v26 = v25;

        if (a3)
        {
          v27 = sub_2610BCC94();
          (*(*(v27 - 8) + 56))(v12, 1, 1, v27);
          v28 = swift_allocObject();
          v28[2] = 0;
          v28[3] = 0;
          v28[4] = v4;
          v28[5] = v24;
          v28[6] = v26;
          v28[7] = a2;
          v28[8] = a3;
          v28[9] = v13;
          v29 = v4;

          sub_261042D5C(0, 0, v12, &unk_2610D1050, v28);
        }
      }
    }
  }

  return result;
}

uint64_t sub_2610B7E1C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2610B7E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2610B7E9C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_2610B7EE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2610B7F4C(uint64_t a1)
{
  result = sub_2610BC614();
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

unint64_t sub_2610B8090(void *a1)
{
  a1[1] = sub_2610B80C8();
  a1[2] = sub_2610B811C();
  result = sub_2610B8170();
  a1[3] = result;
  return result;
}

unint64_t sub_2610B80C8()
{
  result = qword_27FE67010;
  if (!qword_27FE67010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE67010);
  }

  return result;
}

unint64_t sub_2610B811C()
{
  result = qword_27FE67018;
  if (!qword_27FE67018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE67018);
  }

  return result;
}

unint64_t sub_2610B8170()
{
  result = qword_27FE67020;
  if (!qword_27FE67020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE67020);
  }

  return result;
}

unint64_t sub_2610B81C8()
{
  result = qword_27FE67028;
  if (!qword_27FE67028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE67028);
  }

  return result;
}

uint64_t sub_2610B8228(uint64_t a1)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FE648D0, &qword_2610BF450);
  v5 = *(sub_2610BCC24() - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_260FB6DB4;

  return sub_2610B723C(a1, v7, v8, v9, v10, v11, v1 + v6);
}

uint64_t sub_2610B8474(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_260FB6DB4;

  return sub_2610B58F0(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2610B8560(uint64_t a1)
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
  v10[1] = sub_260FBF860;

  return sub_2610B583C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t static AuthenticateCommand.Response.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 41);
  v8 = *(a2 + 40);
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = *(a1 + 41);
  v10 = *a2;
  sub_261062BE4(*a1, v12, v13, v14, v15, v16, v17);
  sub_261062BE4(v2, v3, v4, v5, v6, v8, v7);
  sub_260FE514C();
  sub_261060DC0();
  sub_261060D68();
  LOBYTE(v2) = sub_2610BD5B4();
  sub_261062C28(v10, v3, v4, v5, v6, v8, v7);
  sub_261062C28(v11, v12, v13, v14, v15, v16, v17);
  return v2 & 1;
}

uint64_t AuthenticateCommand.Request.account.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[9];
  v25 = v1[8];
  v26[0] = v3;
  *(v26 + 9) = *(v1 + 153);
  v4 = v1[3];
  v5 = v1[5];
  v21 = v1[4];
  v6 = v21;
  v22 = v5;
  v7 = v1[5];
  v8 = v1[7];
  v23 = v1[6];
  v9 = v23;
  v24 = v8;
  v10 = v1[1];
  v18[0] = *v1;
  v18[1] = v10;
  v11 = v1[3];
  v13 = *v1;
  v12 = v1[1];
  v19 = v1[2];
  v14 = v19;
  v20 = v11;
  v15 = v1[9];
  a1[8] = v25;
  a1[9] = v15;
  *(a1 + 153) = *(v1 + 153);
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v9;
  a1[7] = v2;
  *a1 = v13;
  a1[1] = v12;
  a1[2] = v14;
  a1[3] = v4;
  return sub_260FD2DF8(v18, &v17);
}

__n128 AuthenticateCommand.Request.account.setter(uint64_t a1)
{
  v3 = v1[9];
  v13[8] = v1[8];
  v14[0] = v3;
  *(v14 + 9) = *(v1 + 153);
  v4 = v1[5];
  v13[4] = v1[4];
  v13[5] = v4;
  v5 = v1[7];
  v13[6] = v1[6];
  v13[7] = v5;
  v6 = v1[1];
  v13[0] = *v1;
  v13[1] = v6;
  v7 = v1[3];
  v13[2] = v1[2];
  v13[3] = v7;
  sub_260FD2E30(v13);
  v8 = *(a1 + 144);
  v1[8] = *(a1 + 128);
  v1[9] = v8;
  *(v1 + 153) = *(a1 + 153);
  v9 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v9;
  v10 = *(a1 + 112);
  v1[6] = *(a1 + 96);
  v1[7] = v10;
  v11 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v11;
  result = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = result;
  return result;
}

void AuthenticateCommand.Request.deviceInfo.getter(uint64_t *a1@<X8>)
{
  v2 = v1[22];
  v3 = v1[23];
  v4 = v1[24];
  v5 = v1[25];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_2610BA984(v2, v3, v4, v5);
}

__n128 AuthenticateCommand.Request.deviceInfo.setter(uint64_t a1)
{
  sub_2610BA9C8(v1[22], v1[23], v1[24], v1[25]);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 11) = *a1;
  *(v1 + 12) = v4;
  return result;
}

__n128 AuthenticateCommand.Request.init(from:)@<Q0>(_OWORD *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = a1[9];
  v4 = a1[11];
  v63 = a1[10];
  v64 = v4;
  v5 = a1[11];
  v65 = a1[12];
  v6 = a1[5];
  v7 = a1[7];
  v59 = a1[6];
  v60 = v7;
  v8 = a1[7];
  v9 = a1[9];
  v61 = a1[8];
  v62 = v9;
  v10 = a1[1];
  v11 = a1[3];
  v55 = a1[2];
  v56 = v11;
  v12 = a1[3];
  v13 = a1[5];
  v57 = a1[4];
  v58 = v13;
  v14 = a1[1];
  v54[0] = *a1;
  v54[1] = v14;
  v66[10] = v63;
  v66[11] = v5;
  v66[12] = a1[12];
  v66[6] = v59;
  v66[7] = v8;
  v66[8] = v61;
  v66[9] = v3;
  v66[2] = v55;
  v66[3] = v12;
  v66[4] = v57;
  v66[5] = v6;
  v66[0] = v54[0];
  v66[1] = v10;
  if (sub_260FEE778(v66) || (v15 = sub_260F9C524(v66), v41 = *v15, v16 = v15[4], v18 = v15[1], v17 = v15[2], v44 = v15[3], v45 = v16, v42 = v18, v43 = v17, v19 = v15[8], v21 = v15[5], v20 = v15[6], v48 = v15[7], v49 = v19, v46 = v21, v47 = v20, v22 = v15[12], v24 = v15[9], v23 = v15[10], v52 = v15[11], v53 = v22, v50 = v24, v51 = v23, get_enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0(&v41) != 2))
  {
    sub_260FEDBAC(v54);
    v33 = 0;
    v32 = 0;
    v31 = 0;
    v30 = 0;
  }

  else
  {
    v25 = sub_260F9C514(&v41);
    sub_2610BA9C8(0, 0, 0, 0);
    v26 = v25[22];
    v27 = v25[23];
    v28 = v25[24];
    v29 = v25[25];
    memmove(v40, v25, 0xA9uLL);
    sub_260FD2E30(v40);
    v30 = v26;
    v31 = v27;
    v32 = v28;
    v33 = v29;
  }

  sub_2610BA9C8(v30, v31, v32, v33);
  sub_2610BAA0C(&v41);
  v34 = v52;
  a2[10] = v51;
  a2[11] = v34;
  a2[12] = v53;
  v35 = v48;
  a2[6] = v47;
  a2[7] = v35;
  v36 = v50;
  a2[8] = v49;
  a2[9] = v36;
  v37 = v44;
  a2[2] = v43;
  a2[3] = v37;
  v38 = v46;
  a2[4] = v45;
  a2[5] = v38;
  result = v42;
  *a2 = v41;
  a2[1] = result;
  return result;
}

__n128 AuthenticateCommand.Request.into()@<Q0>(__n128 *a1@<X8>)
{
  v3 = v1[11];
  v25 = v1[10];
  v26 = v3;
  v27 = v1[12];
  v4 = v1[7];
  v21 = v1[6];
  v22 = v4;
  v5 = v1[9];
  v23 = v1[8];
  v24 = v5;
  v6 = v1[3];
  v17 = v1[2];
  v18 = v6;
  v7 = v1[5];
  v19 = v1[4];
  v20 = v7;
  v8 = v1[1];
  v15 = *v1;
  v16 = v8;
  sub_260F9B85C(&v15);
  v38 = v25;
  v39 = v26;
  v40 = v27;
  v34 = v21;
  v35 = v22;
  v36 = v23;
  v37 = v24;
  v30 = v17;
  v31 = v18;
  v32 = v19;
  v33 = v20;
  v28 = v15;
  v29 = v16;
  sub_260FEDCB8(&v28);
  v9 = v39;
  a1[10] = v38;
  a1[11] = v9;
  a1[12] = v40;
  v10 = v35;
  a1[6] = v34;
  a1[7] = v10;
  v11 = v37;
  a1[8] = v36;
  a1[9] = v11;
  v12 = v31;
  a1[2] = v30;
  a1[3] = v12;
  v13 = v33;
  a1[4] = v32;
  a1[5] = v13;
  result = v29;
  *a1 = v28;
  a1[1] = result;
  return result;
}

uint64_t sub_2610B8BB8()
{
  if (*v0)
  {
    return 0x6E49656369766564;
  }

  else
  {
    return 0x746E756F636361;
  }
}

uint64_t sub_2610B8BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E756F636361 && a2 == 0xE700000000000000;
  if (v6 || (sub_2610BD384() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E49656369766564 && a2 == 0xEA00000000006F66)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2610BD384();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2610B8CDC(uint64_t a1)
{
  v2 = sub_2610BAA30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2610B8D18(uint64_t a1)
{
  v2 = sub_2610BAA30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AuthenticateCommand.Request.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE67040, &qword_2610D1070);
  v50 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v17 - v5;
  v7 = v1[8];
  v8 = v1[9];
  v9 = v1[6];
  v47 = v1[7];
  v48 = v7;
  v49[0] = v8;
  *(v49 + 9) = *(v1 + 153);
  v10 = v1[5];
  v44 = v1[4];
  v45 = v10;
  v46 = v9;
  v11 = v1[1];
  v40 = *v1;
  v41 = v11;
  v12 = v1[3];
  v42 = v1[2];
  v43 = v12;
  v13 = *(v1 + 22);
  v19 = *(v1 + 23);
  v20 = v13;
  v14 = *(v1 + 24);
  v17 = *(v1 + 25);
  v18 = v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260FD2DF8(&v40, &v30);
  sub_2610BAA30();
  sub_2610BD5F4();
  v37 = v47;
  v38 = v48;
  v39[0] = v49[0];
  *(v39 + 9) = *(v49 + 9);
  v34 = v44;
  v35 = v45;
  v36 = v46;
  v30 = v40;
  v31 = v41;
  v32 = v42;
  v33 = v43;
  v29 = 0;
  sub_260FD3CFC();
  v15 = v21;
  sub_2610BD2A4();
  v27[8] = v38;
  *v28 = v39[0];
  *&v28[9] = *(v39 + 9);
  v27[4] = v34;
  v27[5] = v35;
  v27[6] = v36;
  v27[7] = v37;
  v27[0] = v30;
  v27[1] = v31;
  v27[2] = v32;
  v27[3] = v33;
  sub_260FD2E30(v27);
  if (!v15)
  {
    v23 = v20;
    v24 = v19;
    v25 = v18;
    v26 = v17;
    v22 = 1;
    sub_2610BA984(v20, v19, v18, v17);
    sub_260FD4240();
    sub_2610BD254();
    sub_2610BA9C8(v23, v24, v25, v26);
  }

  return (*(v50 + 8))(v6, v3);
}

uint64_t AuthenticateCommand.Request.hash(into:)(__int128 *a1)
{
  v2 = *(v1 + 184);
  IdMSAccount.hash(into:)(a1);
  if (!v2)
  {
    return sub_2610BD534();
  }

  sub_2610BD534();
  sub_2610BCA54();

  return sub_2610BCA54();
}

uint64_t AuthenticateCommand.Request.hashValue.getter()
{
  v1 = *(v0 + 184);
  sub_2610BD514();
  IdMSAccount.hash(into:)(v3);
  sub_2610BD534();
  if (v1)
  {
    sub_2610BCA54();
    sub_2610BCA54();
  }

  return sub_2610BD574();
}

void AuthenticateCommand.Request.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE67050, &qword_2610D1078);
  v5 = *(v67 - 8);
  MEMORY[0x28223BE20](v67, v6);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2610BAA30();
  sub_2610BD5D4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    sub_2610BA9C8(0, 0, 0, 0);
  }

  else
  {
    v9 = v5;
    v10 = a2;
    v46 = 0;
    sub_260FD3CA8();
    v11 = v67;
    sub_2610BD1E4();
    v65 = v55;
    v66[0] = v56[0];
    *(v66 + 9) = *(v56 + 9);
    v61 = v51;
    v62 = v52;
    v63 = v53;
    v64 = v54;
    v57 = v47;
    v58 = v48;
    v59 = v49;
    v60 = v50;
    v41 = 1;
    sub_260FD41EC();
    sub_2610BD194();
    (*(v9 + 8))(v8, v11);
    v12 = v42;
    v13 = v43;
    v14 = v44;
    v15 = v45;
    sub_2610BA9C8(0, 0, 0, 0);
    v31 = v65;
    v32 = v66[0];
    v33 = v66[1];
    v27 = v61;
    v28 = v62;
    v16 = v64;
    v29 = v63;
    v30 = v64;
    v23 = v57;
    v24 = v58;
    v17 = v60;
    v25 = v59;
    v26 = v60;
    *&v34 = v12;
    *(&v34 + 1) = v13;
    *&v35 = v14;
    *(&v35 + 1) = v15;
    v18 = v62;
    v10[6] = v63;
    v10[7] = v16;
    v19 = v32;
    v10[8] = v31;
    v10[9] = v19;
    v20 = v24;
    v21 = v27;
    v10[2] = v25;
    v10[3] = v17;
    v10[4] = v21;
    v10[5] = v18;
    *v10 = v23;
    v10[1] = v20;
    v22 = v34;
    v10[10] = v33;
    v10[11] = v22;
    v10[12] = v35;
    sub_261062C64(&v23, v36);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v36[8] = v65;
    v36[9] = v66[0];
    v36[10] = v66[1];
    v36[4] = v61;
    v36[5] = v62;
    v36[6] = v63;
    v36[7] = v64;
    v36[0] = v57;
    v36[1] = v58;
    v36[2] = v59;
    v36[3] = v60;
    v37 = v12;
    v38 = v13;
    v39 = v14;
    v40 = v15;
    sub_2610BAA84(v36);
  }
}

__n128 sub_2610B9508@<Q0>(__n128 *a1@<X8>)
{
  v3 = v1[11];
  v25 = v1[10];
  v26 = v3;
  v27 = v1[12];
  v4 = v1[7];
  v21 = v1[6];
  v22 = v4;
  v5 = v1[9];
  v23 = v1[8];
  v24 = v5;
  v6 = v1[3];
  v17 = v1[2];
  v18 = v6;
  v7 = v1[5];
  v19 = v1[4];
  v20 = v7;
  v8 = v1[1];
  v15 = *v1;
  v16 = v8;
  sub_260F9B85C(&v15);
  v38 = v25;
  v39 = v26;
  v40 = v27;
  v34 = v21;
  v35 = v22;
  v36 = v23;
  v37 = v24;
  v30 = v17;
  v31 = v18;
  v32 = v19;
  v33 = v20;
  v28 = v15;
  v29 = v16;
  sub_260FEDCB8(&v28);
  v9 = v39;
  a1[10] = v38;
  a1[11] = v9;
  a1[12] = v40;
  v10 = v35;
  a1[6] = v34;
  a1[7] = v10;
  v11 = v37;
  a1[8] = v36;
  a1[9] = v11;
  v12 = v31;
  a1[2] = v30;
  a1[3] = v12;
  v13 = v33;
  a1[4] = v32;
  a1[5] = v13;
  result = v29;
  *a1 = v28;
  a1[1] = result;
  return result;
}

uint64_t sub_2610B9620(__int128 *a1)
{
  v2 = *(v1 + 184);
  IdMSAccount.hash(into:)(a1);
  if (!v2)
  {
    return sub_2610BD534();
  }

  sub_2610BD534();
  sub_2610BCA54();

  return sub_2610BCA54();
}

uint64_t sub_2610B96F8(uint64_t a1)
{
  v2 = *(v1 + 184);
  sub_2610BD514();
  IdMSAccount.hash(into:)(v4);
  sub_2610BD534();
  if (v2)
  {
    sub_2610BCA54();
    sub_2610BCA54();
  }

  return sub_2610BD574();
}

uint64_t AuthenticateCommand.Response.result.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 41);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  v8 = *(v1 + 40);
  *(a1 + 40) = v8;
  *(a1 + 41) = v7;
  return sub_261062BE4(v2, v3, v4, v5, v6, v8, v7);
}

__n128 AuthenticateCommand.Response.result.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 41);
  sub_261062C28(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 41));
  result = *a1;
  v7 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v7;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 41) = v5;
  return result;
}

double AuthenticateCommand.Response.init(from:)@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[9];
  v4 = a1[11];
  v37 = a1[10];
  v38 = v4;
  v5 = a1[11];
  v39 = a1[12];
  v6 = a1[5];
  v7 = a1[7];
  v33 = a1[6];
  v34 = v7;
  v8 = a1[7];
  v9 = a1[9];
  v35 = a1[8];
  v36 = v9;
  v10 = a1[1];
  v11 = a1[3];
  v29 = a1[2];
  v30 = v11;
  v12 = a1[3];
  v13 = a1[5];
  v31 = a1[4];
  v32 = v13;
  v14 = a1[1];
  v28[0] = *a1;
  v28[1] = v14;
  v40[10] = v37;
  v40[11] = v5;
  v40[12] = a1[12];
  v40[6] = v33;
  v40[7] = v8;
  v40[8] = v35;
  v40[9] = v3;
  v40[2] = v29;
  v40[3] = v12;
  v40[4] = v31;
  v40[5] = v6;
  v40[0] = v28[0];
  v40[1] = v10;
  if (sub_260FEE778(v40) == 1)
  {
    v15 = sub_260F9C524(v40);
    v16 = *(v15 + 48);
    v18 = *v15;
    v17 = *(v15 + 16);
    v26[2] = *(v15 + 32);
    v26[3] = v16;
    v26[0] = v18;
    v26[1] = v17;
    v19 = *(v15 + 112);
    v21 = *(v15 + 64);
    v20 = *(v15 + 80);
    v26[6] = *(v15 + 96);
    v26[7] = v19;
    v26[4] = v21;
    v26[5] = v20;
    v23 = *(v15 + 144);
    v22 = *(v15 + 160);
    v24 = *(v15 + 128);
    v27 = *(v15 + 176);
    v26[9] = v23;
    v26[10] = v22;
    v26[8] = v24;
    if (get_enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0(v26) == 2)
    {
      sub_260F9C514(v26);
    }
  }

  sub_260FEDBAC(v28);
  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 40) = -256;
  return result;
}

__n128 AuthenticateCommand.Response.into()@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 4);
  v4 = *(v1 + 40);
  v5 = *(v1 + 41);
  v6 = v1[1];
  v13 = *v1;
  v14 = v6;
  *&v15 = v3;
  BYTE8(v15) = v4;
  BYTE9(v15) = v5;
  sub_260F9B85C(&v13);
  v33 = v21;
  v34 = v22;
  v35 = v23;
  *&v36 = v24;
  v29 = v17;
  v30 = v18;
  v31 = v19;
  v32 = v20;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  sub_260FEE86C(&v25);
  v7 = v36;
  *(a1 + 160) = v35;
  *(a1 + 176) = v7;
  *(a1 + 192) = v37;
  v8 = v32;
  *(a1 + 96) = v31;
  *(a1 + 112) = v8;
  v9 = v34;
  *(a1 + 128) = v33;
  *(a1 + 144) = v9;
  v10 = v28;
  *(a1 + 32) = v27;
  *(a1 + 48) = v10;
  v11 = v30;
  *(a1 + 64) = v29;
  *(a1 + 80) = v11;
  result = v26;
  *a1 = v25;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2610B9A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2610BD384();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2610B9AE8(uint64_t a1)
{
  v2 = sub_2610BAAB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2610B9B24(uint64_t a1)
{
  v2 = sub_2610BAAB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AuthenticateCommand.Response.encode(to:)(void *a1)
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE67058, &unk_2610D1080);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v3);
  v28 = &v16 - v4;
  v5 = *v1;
  v6 = *(v1 + 8);
  v8 = *(v1 + 16);
  v7 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = *(v1 + 41);
  v11 = a1[3];
  v18 = a1[4];
  v12 = *(v1 + 40);
  v17 = v12;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_261062BE4(v5, v6, v8, v7, v9, v12, v10);
  sub_2610BAAB4();
  sub_2610BD5F4();
  v21 = v5;
  v22 = v6;
  v23 = v8;
  v24 = v7;
  v25 = v9;
  v26 = v17;
  v27 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65CB0, &qword_2610C9998);
  sub_2610BAB5C(&qword_27FE67068, sub_260FF24C0, sub_260FF28D0, &protocol conformance descriptor for <> Result<A, B>);
  v13 = v19;
  v14 = v28;
  sub_2610BD2A4();
  sub_261062C28(v21, v22, v23, v24, v25, v26, v27);
  return (*(v20 + 8))(v14, v13);
}

uint64_t AuthenticateCommand.Response.hash(into:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65CB0, &qword_2610C9998);
  sub_26105FABC();
  sub_260FF35F4();
  return sub_2610BD5A4();
}

uint64_t AuthenticateCommand.Response.hashValue.getter()
{
  sub_2610BD514();
  sub_2610BAB08();
  sub_2610BC994();
  return sub_2610BD574();
}

uint64_t AuthenticateCommand.Response.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE67078, &qword_2610D1090);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2610BAAB4();
  sub_2610BD5D4();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65CB0, &qword_2610C9998);
    sub_2610BAB5C(&qword_27FE67080, sub_260FF2514, sub_260FF2A88, &protocol conformance descriptor for <> Result<A, B>);
    sub_2610BD1E4();
    (*(v6 + 8))(v9, v5);
    v10 = v16;
    v11 = v17;
    v12 = v18;
    v13 = v15[1];
    *a2 = v15[0];
    *(a2 + 16) = v13;
    *(a2 + 32) = v10;
    *(a2 + 40) = v11;
    *(a2 + 41) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

double sub_2610BA058@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[9];
  v4 = a1[11];
  v37 = a1[10];
  v38 = v4;
  v5 = a1[11];
  v39 = a1[12];
  v6 = a1[5];
  v7 = a1[7];
  v33 = a1[6];
  v34 = v7;
  v8 = a1[7];
  v9 = a1[9];
  v35 = a1[8];
  v36 = v9;
  v10 = a1[1];
  v11 = a1[3];
  v29 = a1[2];
  v30 = v11;
  v12 = a1[3];
  v13 = a1[5];
  v31 = a1[4];
  v32 = v13;
  v14 = a1[1];
  v28[0] = *a1;
  v28[1] = v14;
  v40[10] = v37;
  v40[11] = v5;
  v40[12] = a1[12];
  v40[6] = v33;
  v40[7] = v8;
  v40[8] = v35;
  v40[9] = v3;
  v40[2] = v29;
  v40[3] = v12;
  v40[4] = v31;
  v40[5] = v6;
  v40[0] = v28[0];
  v40[1] = v10;
  if (sub_260FEE778(v40) == 1)
  {
    v15 = sub_260F9C524(v40);
    v16 = *(v15 + 48);
    v18 = *v15;
    v17 = *(v15 + 16);
    v26[2] = *(v15 + 32);
    v26[3] = v16;
    v26[0] = v18;
    v26[1] = v17;
    v19 = *(v15 + 112);
    v21 = *(v15 + 64);
    v20 = *(v15 + 80);
    v26[6] = *(v15 + 96);
    v26[7] = v19;
    v26[4] = v21;
    v26[5] = v20;
    v23 = *(v15 + 144);
    v22 = *(v15 + 160);
    v24 = *(v15 + 128);
    v27 = *(v15 + 176);
    v26[9] = v23;
    v26[10] = v22;
    v26[8] = v24;
    if (get_enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0(v26) == 2)
    {
      sub_260F9C514(v26);
    }
  }

  sub_260FEDBAC(v28);
  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 40) = -256;
  return result;
}

__n128 sub_2610BA174@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 4);
  v4 = *(v1 + 40);
  v5 = *(v1 + 41);
  v6 = v1[1];
  v13 = *v1;
  v14 = v6;
  *&v15 = v3;
  BYTE8(v15) = v4;
  BYTE9(v15) = v5;
  sub_260F9B85C(&v13);
  v33 = v21;
  v34 = v22;
  v35 = v23;
  *&v36 = v24;
  v29 = v17;
  v30 = v18;
  v31 = v19;
  v32 = v20;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  sub_260FEE86C(&v25);
  v7 = v36;
  *(a1 + 160) = v35;
  *(a1 + 176) = v7;
  *(a1 + 192) = v37;
  v8 = v32;
  *(a1 + 96) = v31;
  *(a1 + 112) = v8;
  v9 = v34;
  *(a1 + 128) = v33;
  *(a1 + 144) = v9;
  v10 = v28;
  *(a1 + 32) = v27;
  *(a1 + 48) = v10;
  v11 = v30;
  *(a1 + 64) = v29;
  *(a1 + 80) = v11;
  result = v26;
  *a1 = v25;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2610BA26C(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 41);
  v8 = *(a2 + 40);
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = *(a1 + 41);
  v10 = *a2;
  sub_261062BE4(*a1, v12, v13, v14, v15, v16, v17);
  sub_261062BE4(v2, v3, v4, v5, v6, v8, v7);
  sub_260FE514C();
  sub_261060DC0();
  sub_261060D68();
  LOBYTE(v2) = sub_2610BD5B4();
  sub_261062C28(v10, v3, v4, v5, v6, v8, v7);
  sub_261062C28(v11, v12, v13, v14, v15, v16, v17);
  return v2 & 1;
}

uint64_t sub_2610BA398(uint64_t a1, uint64_t a2)
{
  sub_2610BD514();
  sub_2610BC994();
  return sub_2610BD574();
}

uint64_t sub_2610BA414(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65CB0, &qword_2610C9998);
  sub_26105FABC();
  sub_260FF35F4();
  return sub_2610BD5A4();
}

uint64_t sub_2610BA4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2610BD514();
  sub_2610BC994();
  return sub_2610BD574();
}

BOOL _s21ProximityAppleIDSetup19AuthenticateCommandV7RequestV2eeoiySbAE_AEtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[7];
  v3 = a1[9];
  v68 = a1[8];
  v69[0] = v3;
  *(v69 + 9) = *(a1 + 153);
  v4 = a1[3];
  v5 = a1[5];
  v64 = a1[4];
  v65 = v5;
  v6 = a1[5];
  v7 = a1[7];
  v66 = a1[6];
  v67 = v7;
  v8 = a1[1];
  v61[0] = *a1;
  v61[1] = v8;
  v9 = a1[3];
  v11 = *a1;
  v10 = a1[1];
  v62 = a1[2];
  v63 = v9;
  v12 = a2[7];
  v13 = a2[9];
  v77 = a2[8];
  v78[0] = v13;
  *(v78 + 9) = *(a2 + 153);
  v14 = a2[3];
  v15 = a2[5];
  v73 = a2[4];
  v74 = v15;
  v16 = a2[5];
  v17 = a2[7];
  v75 = a2[6];
  v76 = v17;
  v18 = a2[1];
  v70[0] = *a2;
  v70[1] = v18;
  v19 = a2[3];
  v21 = *a2;
  v20 = a2[1];
  v71 = a2[2];
  v72 = v19;
  v22 = a1[9];
  v59 = v68;
  v60[0] = v22;
  *(v60 + 9) = *(a1 + 153);
  v55 = v64;
  v56 = v6;
  v57 = v66;
  v58 = v2;
  v51 = v11;
  v52 = v10;
  v53 = v62;
  v54 = v4;
  v23 = a2[9];
  v49 = v77;
  v50[0] = v23;
  *(v50 + 9) = *(a2 + 153);
  v45 = v73;
  v46 = v16;
  v47 = v75;
  v48 = v12;
  v41 = v21;
  v42 = v20;
  v24 = *(a1 + 22);
  v25 = *(a1 + 23);
  v27 = *(a1 + 24);
  v26 = *(a1 + 25);
  v28 = *(a2 + 22);
  v29 = *(a2 + 23);
  v31 = *(a2 + 24);
  v30 = *(a2 + 25);
  v43 = v71;
  v44 = v14;
  sub_260FD2DF8(v61, v81);
  sub_260FD2DF8(v70, v81);
  v32 = _s21ProximityAppleIDSetup11IdMSAccountV2eeoiySbAC_ACtFZ_0(&v51, &v41);
  v79[8] = v49;
  v80[0] = v50[0];
  *(v80 + 9) = *(v50 + 9);
  v79[4] = v45;
  v79[5] = v46;
  v79[6] = v47;
  v79[7] = v48;
  v79[0] = v41;
  v79[1] = v42;
  v79[2] = v43;
  v79[3] = v44;
  sub_260FD2E30(v79);
  v81[8] = v59;
  v82[0] = v60[0];
  *(v82 + 9) = *(v60 + 9);
  v81[4] = v55;
  v81[5] = v56;
  v81[6] = v57;
  v81[7] = v58;
  v81[0] = v51;
  v81[1] = v52;
  v81[2] = v53;
  v81[3] = v54;
  sub_260FD2E30(v81);
  if ((v32 & 1) == 0)
  {
    return 0;
  }

  if (!v25)
  {
    sub_2610BA984(v24, 0, v27, v26);
    if (!v29)
    {
      sub_2610BA984(v28, 0, v31, v30);
      v33 = v24;
      v34 = 0;
      goto LABEL_20;
    }

    sub_2610BA984(v28, v29, v31, v30);
    goto LABEL_13;
  }

  if (!v29)
  {
    sub_2610BA984(v24, v25, v27, v26);
    sub_2610BA984(v28, 0, v31, v30);
    sub_2610BA984(v24, v25, v27, v26);

LABEL_13:
    sub_2610BA9C8(v24, v25, v27, v26);
    v35 = v28;
    v36 = v29;
    v37 = v31;
    v38 = v30;
LABEL_14:
    sub_2610BA9C8(v35, v36, v37, v38);
    return 0;
  }

  if ((v24 != v28 || v25 != v29) && (sub_2610BD384() & 1) == 0)
  {
    sub_2610BA984(v24, v25, v27, v26);
    sub_2610BA984(v28, v29, v31, v30);
    sub_2610BA984(v24, v25, v27, v26);
    sub_2610BA9C8(v28, v29, v31, v30);

    v35 = v24;
    v36 = v25;
    v37 = v27;
    v38 = v26;
    goto LABEL_14;
  }

  if (v27 == v31 && v26 == v30)
  {
    sub_2610BA984(v24, v25, v27, v26);
    sub_2610BA984(v28, v29, v27, v26);
    sub_2610BA984(v24, v25, v27, v26);
    sub_2610BA9C8(v28, v29, v27, v26);

    v33 = v24;
    v34 = v25;
LABEL_20:
    sub_2610BA9C8(v33, v34, v27, v26);
    return 1;
  }

  v40 = sub_2610BD384();
  sub_2610BA984(v24, v25, v27, v26);
  sub_2610BA984(v28, v29, v31, v30);
  sub_2610BA984(v24, v25, v27, v26);
  sub_2610BA9C8(v28, v29, v31, v30);

  sub_2610BA9C8(v24, v25, v27, v26);
  return (v40 & 1) != 0;
}

void sub_2610BA984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

void sub_2610BA9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

double sub_2610BAA0C(_OWORD *a1)
{
  result = 0.0;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_2610BAA30()
{
  result = qword_27FE67048;
  if (!qword_27FE67048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE67048);
  }

  return result;
}

unint64_t sub_2610BAAB4()
{
  result = qword_27FE67060;
  if (!qword_27FE67060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE67060);
  }

  return result;
}

unint64_t sub_2610BAB08()
{
  result = qword_27FE67070;
  if (!qword_27FE67070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE67070);
  }

  return result;
}

uint64_t sub_2610BAB5C(unint64_t *a1, void (*a2)(void), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE65CB0, &qword_2610C9998);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2610BABEC()
{
  result = qword_27FE67088;
  if (!qword_27FE67088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE67088);
  }

  return result;
}

unint64_t sub_2610BAC40(uint64_t a1)
{
  result = sub_2610BAC68();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2610BAC68()
{
  result = qword_27FE67090;
  if (!qword_27FE67090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE67090);
  }

  return result;
}

unint64_t sub_2610BACBC()
{
  result = qword_27FE67098;
  if (!qword_27FE67098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE67098);
  }

  return result;
}

unint64_t sub_2610BAD10(uint64_t a1)
{
  result = sub_2610BAD38();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2610BAD38()
{
  result = qword_27FE670A0;
  if (!qword_27FE670A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE670A0);
  }

  return result;
}

unint64_t sub_2610BADCC()
{
  result = qword_27FE670A8;
  if (!qword_27FE670A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE670A8);
  }

  return result;
}

unint64_t sub_2610BAE24()
{
  result = qword_27FE670B0;
  if (!qword_27FE670B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE670B0);
  }

  return result;
}

unint64_t sub_2610BAE78(uint64_t a1)
{
  result = sub_2610BAEA0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2610BAEA0()
{
  result = qword_27FE670B8;
  if (!qword_27FE670B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE670B8);
  }

  return result;
}

unint64_t sub_2610BAEF4(uint64_t a1)
{
  result = sub_2610BAF1C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2610BAF1C()
{
  result = qword_27FE670C0;
  if (!qword_27FE670C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE670C0);
  }

  return result;
}

uint64_t sub_2610BAFB0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_2610BB008()
{
  result = qword_27FE670C8;
  if (!qword_27FE670C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE670C8);
  }

  return result;
}

unint64_t sub_2610BB060()
{
  result = qword_27FE670D0;
  if (!qword_27FE670D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE670D0);
  }

  return result;
}

unint64_t sub_2610BB0B8()
{
  result = qword_27FE670D8;
  if (!qword_27FE670D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE670D8);
  }

  return result;
}

unint64_t sub_2610BB10C(uint64_t a1)
{
  result = sub_2610BACBC();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2610BB14C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
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

uint64_t sub_2610BB194(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2610BB22C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 42))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 41);
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

uint64_t sub_2610BB274(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = -a2;
    }
  }

  return result;
}

unint64_t sub_2610BB2F8()
{
  result = qword_27FE670E0;
  if (!qword_27FE670E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE670E0);
  }

  return result;
}

unint64_t sub_2610BB350()
{
  result = qword_27FE670E8;
  if (!qword_27FE670E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE670E8);
  }

  return result;
}

unint64_t sub_2610BB3A8()
{
  result = qword_27FE670F0;
  if (!qword_27FE670F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE670F0);
  }

  return result;
}

unint64_t sub_2610BB400()
{
  result = qword_27FE670F8;
  if (!qword_27FE670F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE670F8);
  }

  return result;
}

unint64_t sub_2610BB458()
{
  result = qword_27FE67100;
  if (!qword_27FE67100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE67100);
  }

  return result;
}

unint64_t sub_2610BB4B0()
{
  result = qword_27FE67108;
  if (!qword_27FE67108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE67108);
  }

  return result;
}

uint64_t PASFlowStepExtensionProvidedPicker.__allocating_init(delegate:locatedExtension:)(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v6 = swift_allocObject();
  v7 = v6 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_result;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = -1;
  v8 = OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker__accountProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65760, &qword_2610BE940);
  v9 = swift_allocObject();
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *(v6 + v8) = v9;
  *(v9 + 48) = 0;
  *(v6 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_locatedExtension) = *a3;
  v10 = sub_26104DC44(a1, a2);
  swift_unknownObjectRelease();
  return v10;
}

id PASFlowStepExtensionProvidedPicker.locatedExtension.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_locatedExtension + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_locatedExtension);
  a1[1] = v3;

  return v3;
}

uint64_t sub_2610BB620@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker__accountProvider);
  swift_beginAccess();
  sub_260FC8F7C(v3 + 16, &v6);
  if (v7)
  {
    return sub_260FA9F80(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE63C70, &unk_2610C0780);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9D258(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260FA9F80(&v6, v5);
  swift_beginAccess();
  sub_260FC8FEC(v5, v3 + 16);
  swift_endAccess();
}

uint64_t PASFlowStepExtensionProvidedPicker.init(delegate:locatedExtension:)(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v7 = v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_result;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = -1;
  v8 = OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker__accountProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65760, &qword_2610BE940);
  v9 = swift_allocObject();
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *(v3 + v8) = v9;
  *(v9 + 48) = 0;
  *(v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_locatedExtension) = *a3;
  v10 = sub_26104DC44(a1, a2);
  swift_unknownObjectRelease();
  return v10;
}

uint64_t PASFlowStepExtensionProvidedPicker.nextStep()(uint64_t a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_result);
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_result + 8);
  v5 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_result + 16);
  if (v5 == 255)
  {
    v1 = 0x80000002610D6840;
    sub_260FC3450();
    swift_allocError();
    *v17 = 0xD000000000000039;
    *(v17 + 8) = 0x80000002610D6840;
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    *(v17 + 32) = 1;
    goto LABEL_5;
  }

  if (v5)
  {
LABEL_5:
    swift_willThrow();
    sub_2610BC0F0(v4, v3, v5);
    return v1;
  }

  v6 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_locatedExtension);
  v7 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_locatedExtension + 8);
  v20[0] = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_result);
  v20[1] = v6;
  v20[2] = v7;
  v21 = 3;
  v8 = v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
  v22 = v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v10 = *(v8 + 8);
  sub_260FDD49C(v20, v19);
  type metadata accessor for PASFlowStepSendSelectedAccount(0);
  v11 = swift_allocObject();
  v12 = OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendSelectedAccount__messageSessionProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE657C0, &qword_2610BEE90);
  v13 = swift_allocObject();
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0;
  *(v11 + v12) = v13;
  v14 = OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendSelectedAccount__deviceProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65BC0, &qword_2610BFD90);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v11 + v14) = v15;
  *(v11 + OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendSelectedAccount_isSignInForSelfSupported) = 0;
  sub_260FDD49C(v19, v11 + OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendSelectedAccount_familyMemberSelection);
  sub_2610BC0F0(v4, v3, v5);

  v16 = v7;
  v1 = sub_26104DC44(Strong, v10);

  swift_unknownObjectRelease();
  sub_260FDD4F8(v19);
  sub_260FDD4F8(v20);
  sub_2610BC210(&qword_27FE64700, type metadata accessor for PASFlowStepSendSelectedAccount, &protocol conformance descriptor for PASSourceFlowStepBase);
  return v1;
}

void PASFlowStepExtensionProvidedPicker.setError(error:)(void *a1)
{
  sub_2610BBA80(a1, 0, 1);

  sub_2610439BC();
}

id sub_2610BBA80(void *a1, void *a2, char a3)
{
  v7 = v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_result;
  if (*(v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_result + 16) != 255)
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v8 = sub_2610BC7B4();
    __swift_project_value_buffer(v8, qword_27FE65900);

    v9 = sub_2610BC794();
    v10 = sub_2610BCD64();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v28 = v12;
      *v11 = 136315138;
      sub_2610BC0F0(*v7, *(v7 + 8), *(v7 + 16));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE67138, &qword_2610D1838);
      v13 = sub_2610BCA34();
      v15 = sub_260FA5970(v13, v14, &v28);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_260F97000, v9, v10, "PASFlowStepExtensionProvidedPicker setResult is clobbering existing result of %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x2666F8720](v12, -1, -1);
      MEMORY[0x2666F8720](v11, -1, -1);
    }
  }

  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v16 = sub_2610BC7B4();
  __swift_project_value_buffer(v16, qword_27FE65900);
  sub_2610BC108(a1, a2, a3 & 1);
  v17 = sub_2610BC794();
  v18 = sub_2610BCD44();
  sub_2610BC16C(a1, a2, a3 & 1);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v28 = v20;
    *v19 = 136315138;
    sub_2610BC108(a1, a2, a3 & 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE67130, &qword_2610D1830);
    v21 = sub_2610BCA34();
    v23 = sub_260FA5970(v21, v22, &v28);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_260F97000, v17, v18, "PASFlowStepExtensionProvidedPicker setResult to: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    MEMORY[0x2666F8720](v20, -1, -1);
    MEMORY[0x2666F8720](v19, -1, -1);
  }

  v24 = *v7;
  v25 = *(v7 + 8);
  *v7 = a1;
  *(v7 + 8) = a2;
  v26 = *(v7 + 16);
  *(v7 + 16) = a3 & 1;
  sub_2610BC154(v24, v25, v26);
  return sub_2610BC108(a1, a2, a3 & 1);
}

void PASFlowStepExtensionProvidedPicker.setPickedAccount(_:context:)(void *a1, void *a2)
{
  v4 = a1;
  v5 = a2;
  sub_2610BBA80(a1, a2, 0);
  sub_2610BB620(v13);
  v6 = v14;
  v7 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v12[3] = type metadata accessor for PASExtensionPickedAccount();
  v12[4] = sub_2610BC210(&qword_27FE65B68, type metadata accessor for PASExtensionPickedAccount, &protocol conformance descriptor for PASExtensionPickedAccount);
  v12[0] = v4;
  v11[3] = type metadata accessor for PASAccountContextExtension();
  v11[4] = &protocol witness table for PASAccountContextExtension;
  v11[0] = v5;
  v8 = *(v7 + 40);
  v9 = v4;
  v10 = v5;
  v8(v12, v11, v6, v7);
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  sub_260FA9980(v12, &unk_27FE656B0, &unk_2610BFCE0);
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  sub_2610439BC();
}

uint64_t sub_2610BBF40()
{

  sub_2610BC154(*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_result), *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_result + 8), *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_result + 16));
}

uint64_t PASFlowStepExtensionProvidedPicker.deinit()
{
  v0 = PASSourceFlowStepBase.deinit();

  sub_2610BC154(*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_result), *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_result + 8), *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_result + 16));

  return v0;
}

uint64_t PASFlowStepExtensionProvidedPicker.__deallocating_deinit()
{
  v0 = PASSourceFlowStepBase.deinit();
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_locatedExtension + 8);

  sub_2610BC154(*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_result), *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_result + 8), *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepExtensionProvidedPicker_result + 16));

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v2, v3);
}

id sub_2610BC0F0(id result, void *a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2610BC108(result, a2, a3 & 1);
  }

  return result;
}

id sub_2610BC108(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    v5 = a1;
    a1 = a2;
  }

  return a1;
}

void sub_2610BC154(void *result, void *a2, char a3)
{
  if (a3 != -1)
  {
    sub_2610BC16C(result, a2, a3 & 1);
  }
}

void sub_2610BC16C(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {

    a1 = a2;
  }
}

uint64_t sub_2610BC1B8(uint64_t a1)
{
  result = sub_2610BC210(&qword_27FE66DD8, type metadata accessor for PASFlowStepExtensionProvidedPicker, &protocol conformance descriptor for PASSourceFlowStepBase);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2610BC210(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for PASFlowStepExtensionProvidedPicker(uint64_t a1)
{
  result = qword_27FE67120;
  if (!qword_27FE67120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}