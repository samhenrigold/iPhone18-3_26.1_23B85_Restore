id RCSChatBotBrandDataSourceObjcShim.init()()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CC37B0]) initWithQueue_];
  v14 = type metadata accessor for ChatbotTelephonyUtilities();
  v15 = &off_2827805F0;
  v13[0] = swift_initStaticObject();
  type metadata accessor for RCSChatBotBrandDataSource();
  v2 = swift_allocObject();
  v3 = __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
  MEMORY[0x28223BE20](v3, v3);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v5);
  v7 = sub_2155B0D34(v1, *v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v13);
  v8 = [objc_allocWithZone(BSOpaqueWrapper) initWithThing_];

  *&v0[OBJC_IVAR___IMBrandChatBotBrandDataSourceObjcShim_opaqueWrapper] = v8;
  v9 = type metadata accessor for RCSChatBotBrandDataSourceObjcShim();
  v12.receiver = v0;
  v12.super_class = v9;
  return objc_msgSendSuper2(&v12, sel_init);
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

void *sub_2155B0D34(void *a1, uint64_t a2, void *a3)
{
  v8[3] = type metadata accessor for ChatbotTelephonyUtilities();
  v8[4] = &off_2827805F0;
  v8[0] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA65080, &qword_2155DD788);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = MEMORY[0x277D84F98];
  a3[9] = v6;
  sub_2155B0E68(v8, (a3 + 4));
  a3[2] = a1;
  a3[3] = &off_28277F6B8;
  [a1 setDelegate_];
  __swift_destroy_boxed_opaque_existential_1(v8);
  return a3;
}

void sub_2155B0E18(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2155B0E68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_2155B0F9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_2155B1194(char a1, uint64_t a2, id a3)
{
  v6 = [a3 wrappedThing];
  sub_2155DAA1C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64F68, &qword_2155DD110);
  if (swift_dynamicCast())
  {
    sub_2155B146C(v16, v18);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
    MEMORY[0x28223BE20](v7 - 8, v8);
    v10 = &v15 - v9;
    sub_2155B13FC(a2, &v15 - v9);
    sub_2155B0E68(v18, v16);
    v11 = _s16BusinessServices12BrandManagerC14cachingEnabled8cacheURL35brandRemoteDataSourceNeedingFactoryACSb_10Foundation0H0VSgAA0cjklmN0_ptcfC_0(a1 & 1, v10, v16);
    __swift_destroy_boxed_opaque_existential_1(v18);
    *&v3[OBJC_IVAR___BSBrandManagerObjcShim_brandManager] = v11;
    v12 = type metadata accessor for BrandManagerObjcShim();
    v15.receiver = v3;
    v15.super_class = v12;
    v13 = objc_msgSendSuper2(&v15, sel_init);
    sub_2155B1F44(a2, &qword_27CA64B20, &qword_2155DBDC0);
    return v13;
  }

  else
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    result = sub_2155B1F44(v16, &qword_27CA64F70, &qword_2155DD118);
    __break(1u);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2155B13FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2155B146C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t _s16BusinessServices12BrandManagerC14cachingEnabled8cacheURL35brandRemoteDataSourceNeedingFactoryACSb_10Foundation0H0VSgAA0cjklmN0_ptcfC_0(char a1, uint64_t a2, void *a3)
{
  if (qword_280E1C288 != -1)
  {
    swift_once();
  }

  v6 = sub_2155DA75C();
  __swift_project_value_buffer(v6, qword_280E1C7F0);
  v7 = sub_2155DA72C();
  v8 = sub_2155DA97C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = a1 & 1;
    _os_log_impl(&dword_2155AF000, v7, v8, "Creating brandManger with caching enabled: %{BOOL}d", v9, 8u);
    MEMORY[0x21606C4C0](v9, -1, -1);
  }

  v10 = type metadata accessor for XPCDaemonConnection();
  v11 = objc_allocWithZone(v10);
  v12 = [objc_opt_self() interfaceWithProtocol_];
  v13 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v14 = sub_2155DA7DC();
  v15 = [v13 initWithMachServiceName:v14 options:0];

  *&v11[OBJC_IVAR____TtC16BusinessServices19XPCDaemonConnection_connection] = v15;
  [v15 setRemoteObjectInterface_];
  v29.receiver = v11;
  v29.super_class = v10;
  v16 = objc_msgSendSuper2(&v29, sel_init);

  type metadata accessor for BrandService();
  swift_allocObject();
  v17 = sub_2155B1950(a1 & 1, v16);
  sub_2155B0E68(a3, v27);
  v28 = v17;
  v26[3] = &type metadata for BrandRemoteDataSourceFactoryComposition;
  v26[4] = &off_282780930;
  v26[0] = swift_allocObject();
  sub_2155B1CB4(v27, v26[0] + 16);
  type metadata accessor for BrandManager();
  v18 = swift_allocObject();
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v26, &type metadata for BrandRemoteDataSourceFactoryComposition);
  MEMORY[0x28223BE20](v19, v19);
  v21 = (&v26[-1] - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);

  v23 = sub_2155B1D34(v21, v17, v18);
  __swift_destroy_boxed_opaque_existential_1(a3);
  sub_2155B1F44(a2, &qword_27CA64B20, &qword_2155DBDC0);
  sub_2155B1FA4(v27);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v23;
}

uint64_t sub_2155B17F4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2155DA75C();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_2155DA73C();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_2155B1950(int a1, uint64_t a2)
{
  v15 = a2;
  v14 = a1;
  v13 = sub_2155DA9BC();
  v3 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2155DA9AC();
  MEMORY[0x28223BE20](v7, v8);
  v9 = sub_2155DA79C();
  MEMORY[0x28223BE20](v9 - 8, v10);
  sub_2155B1BBC();
  sub_2155DA78C();
  v16 = MEMORY[0x277D84F90];
  sub_2155B1C08(&unk_280E1C268, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA64F00, &unk_2155DD3D0);
  sub_2155B1C50();
  sub_2155DAA2C();
  (*(v3 + 104))(v6, *MEMORY[0x277D85260], v13);
  *(v2 + 32) = sub_2155DA9EC();
  *(v2 + 24) = v14;
  v11 = v15;
  *(v2 + 16) = v15;
  [*(v11 + OBJC_IVAR____TtC16BusinessServices19XPCDaemonConnection_connection) resume];
  return v2;
}

unint64_t sub_2155B1BBC()
{
  result = qword_280E1C260;
  if (!qword_280E1C260)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E1C260);
  }

  return result;
}

uint64_t sub_2155B1C08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2155B1C50()
{
  result = qword_280E1C278;
  if (!qword_280E1C278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA64F00, &unk_2155DD3D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E1C278);
  }

  return result;
}

uint64_t sub_2155B1D34(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v22 = &type metadata for BrandRemoteDataSourceFactoryComposition;
  v23 = &off_282780930;
  v6 = swift_allocObject();
  *&v21 = v6;
  v7 = a1[1];
  v6[1] = *a1;
  v6[2] = v7;
  v6[3] = a1[2];
  if (qword_280E1C288 != -1)
  {
    swift_once();
  }

  v8 = sub_2155DA75C();
  __swift_project_value_buffer(v8, qword_280E1C7F0);
  sub_2155B0E68(&v21, v20);
  v9 = sub_2155DA72C();
  v10 = sub_2155DA97C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    sub_2155B0E68(v20, &v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64E48, &qword_2155DC970);
    v13 = sub_2155DA84C();
    v15 = v14;
    __swift_destroy_boxed_opaque_existential_1(v20);
    v16 = sub_2155BC03C(v13, v15, &v19);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_2155AF000, v9, v10, "Creating BrandManger with BrandDataSource: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x21606C4C0](v12, -1, -1);
    MEMORY[0x21606C4C0](v11, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  sub_2155B146C(&v21, a3 + 16);
  *(a3 + 56) = a2;
  return a3;
}

uint64_t sub_2155B1F44(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2155B2000(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 16));

  return a1(v1, 64, 7);
}

uint64_t Brand.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  sub_2155B1F44((v0 + 12), &qword_27CA64F58, &qword_2155DCFF0);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);

  return MEMORY[0x2821FE8D8](v0, 176, 7);
}

uint64_t BrandService.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_2155B223C()
{
  if (qword_27CA64B10 != -1)
  {
    swift_once();
  }

  qword_27CA65028 = qword_27CA65058;
  unk_27CA65030 = unk_27CA65060;
}

void sub_2155B22A8()
{
  v0 = [objc_allocWithZone(type metadata accessor for FrameworkBundleAnchor()) init];
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];

  v3 = sub_2155DA60C();
  v5 = v4;

  qword_27CA65058 = v3;
  unk_27CA65060 = v5;
}

uint64_t BrandRemoteDataSourceNeedingFactory.brandModelWithURI(_:usingSim:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return sub_2155B24CC(a1, a2, a5, a6, a7, a8);
}

{
  v15 = swift_allocObject();
  *(v15 + 16) = a5;
  *(v15 + 24) = a6;
  v16 = *(a8 + 16);

  v16(a1, a2, a3, a4, sub_2155D204C, v15, a7, a8);
}

uint64_t sub_2155B2494()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2155B2538()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_2155B2578()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_2155B25C4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_2155B2678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2155B2734(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2155B27E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2155B28A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2155B2964(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2155B29DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2155B2A5C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2155B2A94@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_27CA64DF8;
  *a1 = qword_27CA64DF0;
  a1[1] = v2;
}

uint64_t sub_2155B2AF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2155B2B68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2155B2BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2155B2CA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2155B2D54()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2155B2D8C()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2155B2DEC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2155B2E24()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2155B2E74()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2155B2EB0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2155B2EE8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2155B2F64()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2155B2FA0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2155B2FE0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2155B3018()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2155B3074()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2155B30AC()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2155B30F8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2155B3130()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2155B319C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2155B31E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA65070, "2\n");
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2155B3278()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

BusinessServices::BrandType_optional __swiftcall BrandType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t _s16BusinessServices10BrandModelPAAE14primaryLogoURL10Foundation0G0VSgvg_0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2155DA67C();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_2155B3464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W5>, uint64_t a6@<X6>, uint64_t a8@<X8>)
{
  v35 = a5;
  v33 = a3;
  v34 = a4;
  v31 = a1;
  v32 = a2;

  sub_2155B3AE0(a6);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v13 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v30 = &v28 - v13;
  v14 = sub_2155DA67C();
  v15 = *(*(v14 - 8) + 56);
  v16 = (v15)(&v28 - v13, 1, 1, v14);
  MEMORY[0x28223BE20](v16, v17);
  v29 = &v28 - v13;
  v15();
  *(a8 + 32) = 0;
  v18 = type metadata accessor for MapKitBrand(0);
  v19 = v18[13];
  (v15)(a8 + v19, 1, 1, v14);
  v20 = (a8 + v18[14]);
  v21 = (a8 + v18[15]);
  v22 = v18[17];
  v23 = (a8 + v18[16]);
  (v15)(a8 + v22, 1, 1, v14);
  v24 = (a8 + v18[18]);
  v25 = v32;
  *a8 = v31;
  *(a8 + 8) = v25;
  v26 = v34;
  *(a8 + 16) = v33;
  *(a8 + 24) = v26;
  *(a8 + 40) = 0u;
  *(a8 + 56) = 0u;
  *(a8 + 72) = 0u;
  *(a8 + 88) = v35;
  *(a8 + 96) = 0u;
  *(a8 + 112) = 0u;
  sub_2155B4C00(v30, a8 + v19);
  *v20 = 0;
  v20[1] = 0;
  *v21 = 0;
  v21[1] = 0;
  *v23 = 0;
  v23[1] = 0;
  result = sub_2155B4C00(v29, a8 + v22);
  *v24 = 0;
  v24[1] = 0;
  return result;
}

double sub_2155B365C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W5>, uint64_t a6@<X6>, uint64_t a8@<X8>)
{
  v41 = a5;
  v39 = a3;
  v40 = a4;
  v37 = a1;
  v38 = a2;

  sub_2155B3AE0(a6);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v13 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v36 = &v31 - v13;
  v14 = sub_2155DA67C();
  v15 = *(*(v14 - 8) + 56);
  v16 = (v15)(&v31 - v13, 1, 1, v14);
  MEMORY[0x28223BE20](v16, v17);
  v35 = &v31 - v13;
  v18 = v15();
  MEMORY[0x28223BE20](v18, v19);
  v34 = &v31 - v13;
  v15();
  v20 = type metadata accessor for RCSChatBotBrand(0);
  v33 = v20[13];
  (v15)(a8 + v33, 1, 1, v14);
  v21 = (a8 + v20[14]);
  v22 = (a8 + v20[15]);
  v23 = v20[16];
  v32 = v20[17];
  v24 = (a8 + v23);
  (v15)(a8 + v32, 1, 1, v14);
  v25 = v20[19];
  v26 = (a8 + v20[18]);
  (v15)(a8 + v25, 1, 1, v14);
  v27 = a8 + v20[20];
  v31 = xmmword_2155DBDB0;
  *v27 = xmmword_2155DBDB0;
  v28 = v38;
  *a8 = v37;
  *(a8 + 8) = v28;
  v29 = v40;
  *(a8 + 16) = v39;
  *(a8 + 24) = v29;
  *(a8 + 32) = 0u;
  *(a8 + 48) = 0u;
  *(a8 + 64) = 0u;
  *(a8 + 80) = 0;
  *(a8 + 96) = 0;
  *(a8 + 104) = 0;
  *(a8 + 88) = v41;
  *(a8 + 112) = 0;
  *(a8 + 120) = 0;
  sub_2155B4C00(v36, a8 + v33);
  *v21 = 0;
  v21[1] = 0;
  *v22 = 0;
  v22[1] = 0;
  *v24 = 0;
  v24[1] = 0;
  sub_2155B4C00(v35, a8 + v32);
  *v26 = 0;
  v26[1] = 0;
  sub_2155B4C00(v34, a8 + v25);
  sub_2155B4528(*v27, *(v27 + 8));
  result = *&v31;
  *v27 = v31;
  *(a8 + v20[21]) = 0;
  return result;
}

uint64_t BrandModel.init(brandURI:type:name:isVerified:logoURL:brandInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v25 = a7;
  v23 = a4;
  v24 = a5;
  v21 = a1;
  v22 = a2;

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v14 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = sub_2155DA67C();
  v16 = *(*(v15 - 8) + 56);
  v17 = v16(&v21 - v14, 1, 1, v15);
  MEMORY[0x28223BE20](v17, v18);
  v16(&v21 - v14, 1, 1, v15);
  v20 = a6;
  (*(a10 + 208))(v21, v22, v23, v24, 0, 0, 0, 0, 0, 0, 0, 0, v20, 0, 0, &v21 - v14, 0, 0, 0, 0, 0, 0, &v21 - v14, 0, 0, a9, a10);
  return sub_2155B3AE0(v25);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2155B3AE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2155B3B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unint64_t a28)
{
  sub_2155B4528(a27, a28);

  sub_2155B3AE0(a26);
  *(a9 + 32) = 0;
  v29 = type metadata accessor for MapKitBrand(0);
  v30 = v29[13];
  v31 = sub_2155DA67C();
  v32 = *(*(v31 - 8) + 56);
  v32(a9 + v30, 1, 1, v31);
  v33 = (a9 + v29[14]);
  v34 = (a9 + v29[15]);
  v35 = v29[17];
  v36 = (a9 + v29[16]);
  v32(a9 + v35, 1, 1, v31);
  v37 = (a9 + v29[18]);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 40) = a8;
  *(a9 + 48) = a10;
  *(a9 + 64) = a11;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13;
  *(a9 + 96) = a14;
  *(a9 + 104) = a15;
  *(a9 + 112) = a6;
  *(a9 + 120) = a7;
  sub_2155B4C00(a16, a9 + v30);
  *v33 = a17;
  v33[1] = a18;
  *v34 = a19;
  v34[1] = a20;
  *v36 = a21;
  v36[1] = a22;
  result = sub_2155B4C00(a23, a9 + v35);
  *v37 = a24;
  v37[1] = a25;
  return result;
}

uint64_t sub_2155B3D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, unint64_t a30)
{
  sub_2155B4528(a29, a30);

  sub_2155B3AE0(a28);
  *(a9 + 48) = 0;
  v31 = type metadata accessor for GenericBrand(0);
  v32 = v31[10];
  v33 = sub_2155DA67C();
  v34 = *(*(v33 - 8) + 56);
  v34(a9 + v32, 1, 1, v33);
  v34(a9 + v31[11], 1, 1, v33);
  v35 = (a9 + v31[12]);
  v36 = (a9 + v31[13]);
  v44 = (a9 + v31[14]);
  v45 = v31[17];
  v37 = (a9 + v31[16]);
  v34(a9 + v45, 1, 1, v33);
  v38 = (a9 + v31[18]);
  v43 = (a9 + v31[19]);
  v42 = v31[21];
  v39 = (a9 + v31[20]);
  v34(a9 + v42, 1, 1, v33);
  v40 = (a9 + v31[22]);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *v35 = a8;
  v35[1] = a10;
  *v36 = a11;
  v36[1] = a12;
  *v44 = a13;
  v44[1] = a14;
  *(a9 + v31[15]) = a15;
  *v37 = a16;
  v37[1] = a17;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  sub_2155B4C00(a18, a9 + v45);
  *v38 = a19;
  v38[1] = a20;
  *v43 = a21;
  v43[1] = a22;
  *v39 = a23;
  v39[1] = a24;
  result = sub_2155B4C00(a25, a9 + v42);
  *v40 = a26;
  v40[1] = a27;
  *(a9 + 40) = 0;
  *(a9 + 16) = 5;
  return result;
}

double sub_2155B4038@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unint64_t a28)
{
  v75 = a7;
  v73 = a6;
  v70 = a3;
  v71 = a4;
  v69 = a2;
  v67 = a1;
  v83 = a24;
  v84 = a25;
  v81 = a22;
  v82 = a23;
  v80 = a21;
  v78 = a8;
  v79 = a20;
  v76 = a18;
  v77 = a19;
  v74 = a17;
  v72 = a16;
  v68 = a15;
  v66 = a14;
  v65 = a13;
  v64 = a12;
  v63 = a11;
  v62 = a10;
  sub_2155B4528(a27, a28);

  sub_2155B3AE0(a26);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  MEMORY[0x28223BE20](v29 - 8, v30);
  v32 = &v58 - v31;
  v61 = &v58 - v31;
  v33 = sub_2155DA67C();
  v34 = *(*(v33 - 8) + 56);
  v34(v32, 1, 1, v33);
  v35 = type metadata accessor for RCSChatBotBrand(0);
  v60 = v35[13];
  v34((a9 + v60), 1, 1, v33);
  v36 = (a9 + v35[14]);
  v37 = (a9 + v35[15]);
  v38 = v35[16];
  v59 = v35[17];
  v39 = (a9 + v38);
  v34((a9 + v59), 1, 1, v33);
  v40 = v35[19];
  v41 = (a9 + v35[18]);
  v34((a9 + v40), 1, 1, v33);
  v42 = a9 + v35[20];
  v58 = xmmword_2155DBDB0;
  *v42 = xmmword_2155DBDB0;
  v43 = v69;
  v44 = v70;
  *a9 = v67;
  *(a9 + 8) = v43;
  v45 = v71;
  *(a9 + 16) = v44;
  *(a9 + 24) = v45;
  v46 = v75;
  *(a9 + 96) = v73;
  *(a9 + 104) = v46;
  v47 = v78;
  *(a9 + 32) = 0;
  *(a9 + 40) = v47;
  v48 = v63;
  *(a9 + 48) = v62;
  *(a9 + 64) = v48;
  *(a9 + 80) = v64;
  *(a9 + 88) = v65;
  v49 = v68;
  *(a9 + 112) = v66;
  *(a9 + 120) = v49;
  sub_2155B4C00(v72, a9 + v60);
  v50 = v76;
  v51 = v77;
  *v36 = v74;
  v36[1] = v50;
  v52 = v79;
  v53 = v80;
  *v37 = v51;
  v37[1] = v52;
  v55 = v81;
  v54 = v82;
  *v39 = v53;
  v39[1] = v55;
  sub_2155B4C00(v54, a9 + v59);
  v56 = v84;
  *v41 = v83;
  v41[1] = v56;
  sub_2155B4C00(v61, a9 + v40);
  sub_2155B4528(*v42, *(v42 + 8));
  result = *&v58;
  *v42 = v58;
  *(a9 + v35[21]) = 0;
  return result;
}

uint64_t BrandModel.init(brandURI:name:categories:localizedDescription:primaryPhoneNumber:primaryBrandColorHexString:secondaryBrandColorHexString:isVerified:verifiedBy:website:messageNumber:emailAddress:address:termsAndConditionsURL:localizedResponseTime:genericCSSTemplateURL:logoFingerprint:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, uint64_t a17, __int128 a18, __int128 a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 a23, uint64_t a24, uint64_t a25, unint64_t a26, uint64_t a27, uint64_t a28)
{
  v53 = a7;
  v54 = a8;
  v49 = a3;
  v50 = a4;
  v45 = a9;
  v46 = a1;
  v51 = a25;
  v52 = a6;
  v47 = a10;
  v48 = a2;
  v43 = a11;
  v41 = a13;
  v42 = a12;
  v40 = a14;
  v39 = a15;
  v38 = a18;
  v37 = a19;
  v36 = a23;
  v44 = a26;

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8, v30);
  v31 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  v32 = sub_2155B13FC(a17, &v36 - v31);
  MEMORY[0x28223BE20](v32, v33);
  sub_2155B13FC(a22, &v36 - v31);
  v35 = v40;
  (*(a28 + 208))(v46, v48, v49, v50, v52, v53, v54, v47, v43, *(&v43 + 1), v42, v41, v35, v39, a16, &v36 - v31, v38, *(&v38 + 1), v37, *(&v37 + 1), a20, a21, &v36 - v31, v36, *(&v36 + 1), a27, a28);
  sub_2155B4528(v51, v44);
  sub_2155B3AE0(v55);
  sub_2155B3AE0(a22);
  return sub_2155B3AE0(a17);
}

uint64_t sub_2155B4528(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2155B453C(a1, a2);
  }

  return a1;
}

uint64_t sub_2155B453C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t static BrandModel.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x28223BE20](AssociatedTypeWitness, v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v16 - v11;
  sub_2155DAA5C();
  sub_2155DAA5C();
  swift_getAssociatedConformanceWitness();
  v13 = sub_2155DA7CC();
  v14 = *(v5 + 8);
  v14(v9, AssociatedTypeWitness);
  v14(v12, AssociatedTypeWitness);
  return v13 & 1;
}

uint64_t BrandModel.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v5);
  v7 = &v9 - v6;
  sub_2155DAA5C();
  swift_getAssociatedConformanceWitness();
  sub_2155DA7BC();
  return (*(v4 + 8))(v7, AssociatedTypeWitness);
}

uint64_t BrandModel.description.getter(uint64_t a1, uint64_t a2)
{
  v6 = (*(a2 + 48))();
  MEMORY[0x21606B9D0](2108704, 0xE300000000000000);
  v4 = (*(a2 + 32))(a1, a2);
  MEMORY[0x21606B9D0](v4);

  return v6;
}

uint64_t MapKitBrand.brandURI.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MapKitBrand.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MapKitBrand.categories.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t MapKitBrand.primaryPhoneNumber.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t MapKitBrand.primaryBrandColorHexString.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t MapKitBrand.secondaryBrandColorHexString.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t MapKitBrand.verifiedBy.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t MapKitBrand.verifiedBy.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t MapKitBrand.localizedDescription.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t MapKitBrand.localizedDescription.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t MapKitBrand.website.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MapKitBrand(0) + 52);

  return sub_2155B13FC(v3, a1);
}

uint64_t MapKitBrand.website.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MapKitBrand(0) + 52);

  return sub_2155B4C00(a1, v3);
}

uint64_t sub_2155B4C00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MapKitBrand.emailAddress.getter()
{
  v1 = *(v0 + *(type metadata accessor for MapKitBrand(0) + 60));

  return v1;
}

uint64_t MapKitBrand.emailAddress.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MapKitBrand(0) + 60));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MapKitBrand.init(brandURI:name:localizedDescription:primaryPhoneNumber:primaryBrandColorHexString:secondaryBrandColorHexString:isVerified:verifiedBy:website:messageNumber:emailAddress:address:termsAndConditionsURL:localizedResponseTime:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  *(a9 + 32) = 0;
  v26 = type metadata accessor for MapKitBrand(0);
  v27 = v26[13];
  v28 = sub_2155DA67C();
  v29 = *(*(v28 - 8) + 56);
  v29(a9 + v27, 1, 1, v28);
  v30 = (a9 + v26[14]);
  v31 = (a9 + v26[15]);
  v32 = v26[17];
  v33 = (a9 + v26[16]);
  v29(a9 + v32, 1, 1, v28);
  v34 = (a9 + v26[18]);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13;
  *(a9 + 96) = a14;
  *(a9 + 104) = a15;
  *(a9 + 112) = a5;
  *(a9 + 120) = a6;
  sub_2155B4C00(a16, a9 + v27);
  *v30 = a17;
  v30[1] = a18;
  *v31 = a19;
  v31[1] = a20;
  *v33 = a21;
  v33[1] = a22;
  result = sub_2155B4C00(a23, a9 + v32);
  *v34 = a24;
  v34[1] = a25;
  return result;
}

uint64_t sub_2155B5154()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_2155B518C()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t sub_2155B51BC()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_2155B51EC()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t sub_2155B5224()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t sub_2155B5264(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 60));

  return v2;
}

uint64_t sub_2155B52A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int *a26)
{
  *(a9 + 32) = 0;
  v27 = a26[13];
  v28 = sub_2155DA67C();
  v29 = *(*(v28 - 8) + 56);
  v29(a9 + v27, 1, 1, v28);
  v30 = (a9 + a26[14]);
  v31 = (a9 + a26[15]);
  v32 = a26[17];
  v33 = (a9 + a26[16]);
  v29(a9 + v32, 1, 1, v28);
  v34 = (a9 + a26[18]);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13;
  *(a9 + 96) = a14;
  *(a9 + 104) = a15;
  *(a9 + 112) = a5;
  *(a9 + 120) = a6;
  sub_2155B4C00(a16, a9 + v27);
  *v30 = a17;
  v30[1] = a18;
  *v31 = a19;
  v31[1] = a20;
  *v33 = a21;
  v33[1] = a22;
  result = sub_2155B4C00(a23, a9 + v32);
  *v34 = a24;
  v34[1] = a25;
  return result;
}

uint64_t sub_2155B54D0()
{
  v2 = v0[2];

  MEMORY[0x21606B9D0](2108704, 0xE300000000000000);
  MEMORY[0x21606B9D0](*v0, v0[1]);
  return v2;
}

uint64_t sub_2155B5528(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 32))(a1) == 0xD00000000000002CLL && 0x80000002155E0480 == v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2155DABAC();
  }

  return v4 & 1;
}

uint64_t sub_2155B55B4(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 32))(a1) == 0xD00000000000002CLL && 0x80000002155E0450 == v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2155DABAC();
  }

  return v4 & 1;
}

uint64_t GenericBrand.init(brandURI:type:name:isVerified:logoURL:brandInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v13 = *a3;
  v14 = type metadata accessor for GenericBrand(0);
  *(a9 + 56) = 0;
  *(a9 + 64) = 0;
  *(a9 + 48) = 0;
  v15 = v14[10];
  v16 = sub_2155DA67C();
  v17 = *(*(v16 - 8) + 56);
  v17(a9 + v15, 1, 1, v16);
  v17(a9 + v14[11], 1, 1, v16);
  v18 = (a9 + v14[12]);
  *v18 = 0;
  v18[1] = 0;
  v19 = (a9 + v14[13]);
  *v19 = 0;
  v19[1] = 0;
  v20 = (a9 + v14[14]);
  *v20 = 0;
  v20[1] = 0;
  v21 = (a9 + v14[16]);
  *v21 = 0;
  v21[1] = 0;
  v17(a9 + v14[17], 1, 1, v16);
  v22 = (a9 + v14[18]);
  *v22 = 0;
  v22[1] = 0;
  v23 = (a9 + v14[19]);
  *v23 = 0;
  v23[1] = 0;
  v24 = (a9 + v14[20]);
  *v24 = 0;
  v24[1] = 0;
  v17(a9 + v14[21], 1, 1, v16);
  v25 = (a9 + v14[22]);
  *v25 = 0;
  v25[1] = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v13;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + v14[15]) = a6;
  result = sub_2155B4C00(a7, a9 + v15);
  *(a9 + 40) = a8;
  return result;
}

uint64_t GenericBrand.init(brandURI:name:localizedDescription:primaryPhoneNumber:primaryBrandColorHexString:secondaryBrandColorHexString:isVerified:verifiedBy:website:messageNumber:emailAddress:address:termsAndConditionsURL:localizedResponseTime:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  *(a9 + 48) = 0;
  v27 = type metadata accessor for GenericBrand(0);
  v28 = v27[10];
  v29 = sub_2155DA67C();
  v30 = *(*(v29 - 8) + 56);
  v30(a9 + v28, 1, 1, v29);
  v30(a9 + v27[11], 1, 1, v29);
  v31 = (a9 + v27[12]);
  v40 = (a9 + v27[13]);
  v32 = (a9 + v27[14]);
  v41 = v27[17];
  v33 = (a9 + v27[16]);
  v30(a9 + v41, 1, 1, v29);
  v34 = (a9 + v27[18]);
  v39 = (a9 + v27[19]);
  v38 = v27[21];
  v35 = (a9 + v27[20]);
  v30(a9 + v38, 1, 1, v29);
  v36 = (a9 + v27[22]);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *v31 = a7;
  v31[1] = a8;
  *v40 = a10;
  v40[1] = a11;
  *v32 = a12;
  v32[1] = a13;
  *(a9 + v27[15]) = a14;
  *v33 = a15;
  v33[1] = a16;
  *(a9 + 56) = a5;
  *(a9 + 64) = a6;
  sub_2155B4C00(a17, a9 + v41);
  *v34 = a18;
  v34[1] = a19;
  *v39 = a20;
  v39[1] = a21;
  *v35 = a22;
  v35[1] = a23;
  result = sub_2155B4C00(a24, a9 + v38);
  *v36 = a25;
  v36[1] = a26;
  *(a9 + 40) = 0;
  *(a9 + 16) = 5;
  return result;
}

uint64_t GenericBrand.brandURI.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t GenericBrand.name.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t GenericBrand.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t GenericBrand.brandInfo.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t GenericBrand.categories.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t GenericBrand.localizedDescription.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t GenericBrand.primaryLogoURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for GenericBrand(0) + 40);

  return sub_2155B13FC(v3, a1);
}

uint64_t GenericBrand.primaryLogoURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for GenericBrand(0) + 40);

  return sub_2155B4C00(a1, v3);
}

uint64_t GenericBrand.secondaryLogoURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for GenericBrand(0) + 44);

  return sub_2155B13FC(v3, a1);
}

uint64_t GenericBrand.secondaryLogoURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for GenericBrand(0) + 44);

  return sub_2155B4C00(a1, v3);
}

uint64_t GenericBrand.primaryPhoneNumber.getter()
{
  v1 = *(v0 + *(type metadata accessor for GenericBrand(0) + 48));

  return v1;
}

uint64_t GenericBrand.primaryPhoneNumber.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GenericBrand(0) + 48));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t GenericBrand.primaryBrandColorHexString.getter()
{
  v1 = *(v0 + *(type metadata accessor for GenericBrand(0) + 52));

  return v1;
}

uint64_t GenericBrand.primaryBrandColorHexString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GenericBrand(0) + 52));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_2155B5FFC(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 56));

  return v2;
}

uint64_t sub_2155B605C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 56));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t GenericBrand.isVerified.setter(char a1)
{
  result = type metadata accessor for GenericBrand(0);
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t sub_2155B61A4(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 64));

  return v2;
}

uint64_t sub_2155B6204(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 64));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_2155B62B0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 68);

  return sub_2155B13FC(v4, a2);
}

uint64_t sub_2155B6314(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = v2 + *(a2(0) + 68);

  return sub_2155B4C00(a1, v4);
}

uint64_t sub_2155B63BC(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 72));

  return v2;
}

uint64_t sub_2155B641C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 72));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t GenericBrand.emailAddress.getter()
{
  v1 = *(v0 + *(type metadata accessor for GenericBrand(0) + 76));

  return v1;
}

uint64_t GenericBrand.emailAddress.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GenericBrand(0) + 76));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t GenericBrand.address.getter()
{
  v1 = *(v0 + *(type metadata accessor for GenericBrand(0) + 80));

  return v1;
}

uint64_t GenericBrand.address.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GenericBrand(0) + 80));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t GenericBrand.termsAndConditionsURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for GenericBrand(0) + 84);

  return sub_2155B13FC(v3, a1);
}

uint64_t GenericBrand.termsAndConditionsURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for GenericBrand(0) + 84);

  return sub_2155B4C00(a1, v3);
}

uint64_t GenericBrand.localizedResponseTime.getter()
{
  v1 = *(v0 + *(type metadata accessor for GenericBrand(0) + 88));

  return v1;
}

uint64_t GenericBrand.localizedResponseTime.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GenericBrand(0) + 88));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

unint64_t sub_2155B67F0(char a1)
{
  result = 0x495255646E617262;
  switch(a1)
  {
    case 1:
      result = 0x707954646E617262;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 0x666E49646E617262;
      break;
    case 4:
      result = 0x69726F6765746163;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x4C7972616D697270;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0xD00000000000001ALL;
      break;
    case 10:
      result = 0xD00000000000001CLL;
      break;
    case 11:
      result = 0x6966697265567369;
      break;
    case 12:
      result = 0x6465696669726576;
      break;
    case 13:
      result = 0x65746973626577;
      break;
    case 14:
      result = 0x4E6567617373656DLL;
      break;
    case 15:
      result = 0x6464416C69616D65;
      break;
    case 16:
      result = 0x73736572646461;
      break;
    case 17:
      result = 0xD000000000000015;
      break;
    case 18:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2155B6A3C()
{
  v1 = *v0;
  sub_2155DAC3C();
  MEMORY[0x21606BD90](v1);
  return sub_2155DAC5C();
}

uint64_t sub_2155B6A84(uint64_t a1)
{
  v2 = *v1;
  sub_2155DAC3C();
  MEMORY[0x21606BD90](v2);
  return sub_2155DAC5C();
}

uint64_t sub_2155B6AD0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2155B96C8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2155B6B10(uint64_t a1)
{
  v2 = sub_2155B70F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2155B6B4C(uint64_t a1)
{
  v2 = sub_2155B70F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GenericBrand.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B28, &qword_2155DBDC8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2155B70F8();
  sub_2155DAC7C();
  LOBYTE(v12) = 0;
  sub_2155DAB5C();
  if (!v2)
  {
    LOBYTE(v12) = *(v3 + 16);
    v13 = 1;
    sub_2155B714C();
    sub_2155DAB7C();
    LOBYTE(v12) = 2;
    sub_2155DAB5C();
    v12 = *(v3 + 40);
    v13 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B40, &qword_2155DBDD0);
    sub_2155B8280(&qword_27CA64B48, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_2155DAB4C();
    v12 = *(v3 + 48);
    v13 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B50, &qword_2155DBDD8);
    sub_2155B82EC(&qword_27CA64B58, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_2155DAB4C();
    LOBYTE(v12) = 5;
    sub_2155DAB3C();
    type metadata accessor for GenericBrand(0);
    LOBYTE(v12) = 6;
    sub_2155DA67C();
    sub_2155B8358(&qword_27CA64B60, MEMORY[0x28220BE50]);
    sub_2155DAB4C();
    LOBYTE(v12) = 7;
    sub_2155DAB4C();
    LOBYTE(v12) = 8;
    sub_2155DAB3C();
    LOBYTE(v12) = 9;
    sub_2155DAB3C();
    LOBYTE(v12) = 10;
    sub_2155DAB3C();
    LOBYTE(v12) = 11;
    sub_2155DAB6C();
    LOBYTE(v12) = 12;
    sub_2155DAB3C();
    LOBYTE(v12) = 13;
    sub_2155DAB4C();
    LOBYTE(v12) = 14;
    sub_2155DAB3C();
    LOBYTE(v12) = 15;
    sub_2155DAB3C();
    LOBYTE(v12) = 16;
    sub_2155DAB3C();
    LOBYTE(v12) = 17;
    sub_2155DAB4C();
    LOBYTE(v12) = 18;
    sub_2155DAB3C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2155B70F8()
{
  result = qword_27CA64B30;
  if (!qword_27CA64B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA64B30);
  }

  return result;
}

unint64_t sub_2155B714C()
{
  result = qword_27CA64B38;
  if (!qword_27CA64B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA64B38);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t _s16BusinessServices11MapKitBrandV9hashValueSivg_0()
{
  sub_2155DAC3C();
  sub_2155DA87C();
  return sub_2155DAC5C();
}

uint64_t GenericBrand.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B68, &qword_2155DBDE0);
  v104 = *(v106 - 8);
  MEMORY[0x28223BE20](v106, v4);
  v6 = &v93 - v5;
  v7 = type metadata accessor for GenericBrand(0);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = (&v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v9 + 40);
  v13 = sub_2155DA67C();
  v14 = *(*(v13 - 8) + 56);
  v113 = v12;
  v14(v11 + v12, 1, 1, v13);
  v112 = v7[11];
  v14(v11 + v112, 1, 1, v13);
  v109 = v7[17];
  v14(v11 + v109, 1, 1, v13);
  v108 = v7[21];
  v111 = v11;
  v14(v11 + v108, 1, 1, v13);
  v15 = a1[3];
  v107 = a1;
  v16 = a1;
  v17 = v6;
  __swift_project_boxed_opaque_existential_1(v16, v15);
  sub_2155B70F8();
  sub_2155DAC6C();
  if (v2)
  {
    v114 = v2;
    v23 = v111;
    __swift_destroy_boxed_opaque_existential_1(v107);
    v110 = 0;
LABEL_4:

    sub_2155B3AE0(v23 + v113);
    sub_2155B3AE0(v23 + v112);

    sub_2155B3AE0(v23 + v109);

    return sub_2155B3AE0(v23 + v108);
  }

  v19 = v104;
  v18 = v105;
  LOBYTE(v115) = 0;
  v20 = v106;
  v21 = sub_2155DAB0C();
  v114 = 0;
  v25 = v111;
  *v111 = v21;
  v25[1] = v22;
  v116 = 1;
  sub_2155B822C();
  v26 = v114;
  sub_2155DAB2C();
  if (v26)
  {
    v114 = v26;
    (*(v19 + 8))(v17, v20);
    LODWORD(v106) = 0;
    v110 = 0;
    v102 = 0;
    v103 = 0;
    v99 = 0;
    v100 = 0;
    v101 = 0;
    goto LABEL_8;
  }

  *(v25 + 16) = v115;
  LOBYTE(v115) = 2;
  v27 = sub_2155DAB0C();
  v114 = 0;
  v25[3] = v27;
  v25[4] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B40, &qword_2155DBDD0);
  v116 = 3;
  sub_2155B8280(&qword_27CA64B78, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  v30 = v114;
  sub_2155DAAFC();
  v114 = v30;
  if (v30)
  {
    (*(v19 + 8))(v17, v20);
    v110 = 0;
    v102 = 0;
    v103 = 0;
    v99 = 0;
    v100 = 0;
    v101 = 0;
LABEL_14:
    LODWORD(v106) = 1;
    goto LABEL_8;
  }

  v101 = v115;
  v25[5] = v115;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B50, &qword_2155DBDD8);
  v116 = 4;
  sub_2155B82EC(&qword_27CA64B80, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  v31 = v114;
  sub_2155DAAFC();
  if (v31)
  {
    v114 = v31;
    (*(v19 + 8))(v17, v20);
    v110 = 0;
    v102 = 0;
    v103 = 0;
    v99 = 0;
    v100 = 0;
    goto LABEL_14;
  }

  v97 = v115;
  v25[6] = v115;
  LOBYTE(v115) = 5;
  v32 = sub_2155DAAEC();
  v114 = 0;
  v25[7] = v32;
  v25[8] = v33;
  v100 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  v110 = &v93;
  v96 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8, v35);
  v103 = v36;
  v37 = &v93 - v36;
  LOBYTE(v115) = 6;
  v38 = sub_2155B8358(&qword_27CA64B88, MEMORY[0x28220BE68]);
  v102 = v37;
  v95 = v38;
  v39 = v114;
  sub_2155DAAFC();
  v114 = v39;
  if (v39 || (v40 = sub_2155B4C00(v102, v25 + v113), v110 = &v93, MEMORY[0x28223BE20](v40, v41), LOBYTE(v115) = 7, v103 = &v93 - v103, v42 = v114, sub_2155DAAFC(), (v114 = v42) != 0))
  {
    (*(v19 + 8))(v17, v20);
    LODWORD(v106) = 1;
    v110 = 0;
    v102 = 0;
    v103 = 0;
    v99 = 0;
    goto LABEL_8;
  }

  sub_2155B4C00(v103, v25 + v112);
  LOBYTE(v115) = 8;
  v43 = v114;
  v44 = sub_2155DAAEC();
  v114 = v43;
  if (v43)
  {
    (*(v19 + 8))(v17, v20);
    v110 = 0;
    v102 = 0;
    v103 = 0;
    v99 = 0;
    LODWORD(v106) = 1;
    goto LABEL_8;
  }

  v46 = (v25 + v7[12]);
  *v46 = v44;
  v46[1] = v45;
  v99 = v45;
  LOBYTE(v115) = 9;
  v47 = v17;
  v48 = v114;
  v49 = sub_2155DAAEC();
  v103 = v50;
  v114 = v48;
  if (v48)
  {
    (*(v19 + 8))(v17, v106);
    v110 = 0;
    v102 = 0;
    v103 = 0;
LABEL_27:
    LODWORD(v106) = 1;
LABEL_28:
    v25 = v111;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v107);
    v23 = v25;

    v29 = 0;
    if (!v106)
    {
      goto LABEL_4;
    }

LABEL_9:
    v98 = v29;

    goto LABEL_4;
  }

  v51 = (v111 + v7[13]);
  v52 = v103;
  *v51 = v49;
  v51[1] = v52;
  LOBYTE(v115) = 10;
  v53 = v114;
  v54 = sub_2155DAAEC();
  v102 = v55;
  v114 = v53;
  if (v53)
  {
    (*(v19 + 8))(v17, v106);
    v110 = 0;
    v102 = 0;
    goto LABEL_27;
  }

  v56 = (v111 + v7[14]);
  v57 = v102;
  *v56 = v54;
  v56[1] = v57;
  LOBYTE(v115) = 11;
  v58 = v114;
  v59 = sub_2155DAB1C();
  v114 = v58;
  if (v58 || (*(v111 + v7[15]) = v59 & 1, LOBYTE(v115) = 12, v60 = v114, v61 = sub_2155DAAEC(), v110 = v62, (v114 = v60) != 0))
  {
    (*(v19 + 8))(v17, v106);
    v110 = 0;
    goto LABEL_27;
  }

  v63 = v110;
  v64 = (v111 + v7[16]);
  *v64 = v61;
  v64[1] = v63;
  MEMORY[0x28223BE20](v61, v62);
  v66 = &v93 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v115) = 13;
  v67 = v114;
  sub_2155DAAFC();
  v114 = v67;
  if (v67)
  {
    (*(v19 + 8))(v47, v106);
    LODWORD(v106) = 1;
    goto LABEL_28;
  }

  sub_2155B4C00(v66, v111 + v109);
  LOBYTE(v115) = 14;
  v68 = v114;
  v69 = sub_2155DAAEC();
  v94 = v70;
  v114 = v68;
  if (v68)
  {
    (*(v19 + 8))(v47, v106);
    goto LABEL_27;
  }

  v71 = (v111 + v7[18]);
  v72 = v94;
  *v71 = v69;
  v71[1] = v72;
  LOBYTE(v115) = 15;
  v73 = v114;
  v74 = sub_2155DAAEC();
  v93 = v75;
  v114 = v73;
  if (v73)
  {
    (*(v19 + 8))(v47, v106);
    v98 = 0;
    v93 = 0;
LABEL_40:
    __swift_destroy_boxed_opaque_existential_1(v107);
    v23 = v111;

    v29 = v98;
    goto LABEL_9;
  }

  v76 = (v111 + v7[19]);
  v77 = v93;
  *v76 = v74;
  v76[1] = v77;
  LOBYTE(v115) = 16;
  v78 = v114;
  v79 = sub_2155DAAEC();
  v98 = v80;
  v114 = v78;
  if (v78)
  {
    (*(v19 + 8))(v47, v106);
    v98 = 0;
    goto LABEL_40;
  }

  v81 = (v111 + v7[20]);
  v82 = v98;
  *v81 = v79;
  v81[1] = v82;
  MEMORY[0x28223BE20](v79, v80);
  v84 = &v93 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v115) = 17;
  v85 = v114;
  sub_2155DAAFC();
  v114 = v85;
  if (v85 || (sub_2155B4C00(v84, v111 + v108), LOBYTE(v115) = 18, v86 = v114, v87 = sub_2155DAAEC(), (v114 = v86) != 0))
  {
    (*(v19 + 8))(v47, v106);
    goto LABEL_40;
  }

  v89 = v87;
  v90 = v88;
  v91 = v111;
  v92 = (v111 + v7[22]);
  (*(v19 + 8))(v47, v106);
  *v92 = v89;
  v92[1] = v90;
  sub_2155B839C(v91, v18);
  __swift_destroy_boxed_opaque_existential_1(v107);
  return sub_2155B8400(v91);
}

uint64_t sub_2155B7E94()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_2155B7EF4(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 48));

  return v2;
}

uint64_t sub_2155B7F2C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 52));

  return v2;
}

uint64_t sub_2155B7F64(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 56));

  return v2;
}

uint64_t sub_2155B7FA8(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 64));

  return v2;
}

uint64_t sub_2155B7FE0(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 72));

  return v2;
}

uint64_t sub_2155B8018(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 76));

  return v2;
}

uint64_t sub_2155B8050(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 80));

  return v2;
}

uint64_t sub_2155B8098(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 88));

  return v2;
}

uint64_t sub_2155B81BC(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2155DABAC();
  }
}

uint64_t sub_2155B81EC(uint64_t a1)
{
  sub_2155DAC3C();
  sub_2155DA87C();
  return sub_2155DAC5C();
}

unint64_t sub_2155B822C()
{
  result = qword_27CA64B70;
  if (!qword_27CA64B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA64B70);
  }

  return result;
}

uint64_t sub_2155B8280(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA64B40, &qword_2155DBDD0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2155B82EC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA64B50, &qword_2155DBDD8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2155B8358(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2155DA67C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2155B839C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenericBrand(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2155B8400(uint64_t a1)
{
  v2 = type metadata accessor for GenericBrand(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2155B8460()
{
  result = qword_27CA64BF0;
  if (!qword_27CA64BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA64BF0);
  }

  return result;
}

uint64_t sub_2155B84B4(void *a1)
{
  a1[1] = sub_2155B8560(&qword_27CA64BF8, type metadata accessor for MapKitBrand, &protocol conformance descriptor for MapKitBrand);
  a1[2] = sub_2155B8560(&qword_27CA64C00, type metadata accessor for MapKitBrand, &protocol conformance descriptor for MapKitBrand);
  result = sub_2155B8560(&qword_27CA64C08, type metadata accessor for MapKitBrand, &protocol conformance descriptor for MapKitBrand);
  a1[3] = result;
  return result;
}

uint64_t sub_2155B8560(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2155B85FC(void *a1)
{
  a1[1] = sub_2155B8560(&qword_27CA64C18, type metadata accessor for GenericBrand, &protocol conformance descriptor for GenericBrand);
  a1[2] = sub_2155B8560(&qword_27CA64C20, type metadata accessor for GenericBrand, &protocol conformance descriptor for GenericBrand);
  result = sub_2155B8560(&qword_27CA64C28, type metadata accessor for GenericBrand, &protocol conformance descriptor for GenericBrand);
  a1[3] = result;
  return result;
}

uint64_t sub_2155B86F0()
{
  v2 = v0[3];

  MEMORY[0x21606B9D0](2108704, 0xE300000000000000);
  MEMORY[0x21606B9D0](*v0, v0[1]);
  return v2;
}

uint64_t getEnumTagSinglePayload for BrandType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BrandType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_2155B8B8C(uint64_t a1)
{
  sub_2155B8E74(319, &qword_27CA64C50, &qword_27CA64B50, &qword_2155DBDD8);
  if (v1 <= 0x3F)
  {
    sub_2155B0E18(319, &qword_27CA64C58, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2155B8C98(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2155B8C98(uint64_t a1)
{
  if (!qword_27CA64C60)
  {
    sub_2155DA67C();
    v1 = sub_2155DAA0C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CA64C60);
    }
  }
}

void sub_2155B8D18(uint64_t a1)
{
  sub_2155B8E74(319, &qword_27CA64C80, &qword_27CA64B40, &qword_2155DBDD0);
  if (v1 <= 0x3F)
  {
    sub_2155B8E74(319, &qword_27CA64C50, &qword_27CA64B50, &qword_2155DBDD8);
    if (v2 <= 0x3F)
    {
      sub_2155B0E18(319, &qword_27CA64C58, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2155B8C98(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2155B8E74(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_2155DAA0C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for GenericBrand.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GenericBrand.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2155B906C()
{
  result = qword_27CA64C98;
  if (!qword_27CA64C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA64C98);
  }

  return result;
}

uint64_t sub_2155B9138(uint64_t a1, id *a2)
{
  result = sub_2155DA7EC();
  *a2 = 0;
  return result;
}

uint64_t sub_2155B91B0(uint64_t a1, id *a2)
{
  v3 = sub_2155DA7FC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2155B9230@<X0>(uint64_t *a1@<X8>)
{
  sub_2155DA80C();
  v2 = sub_2155DA7DC();

  *a1 = v2;
  return result;
}

void *sub_2155B9274@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2155B9284@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_2155DA7DC();

  *a2 = v3;
  return result;
}

uint64_t sub_2155B92CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2155DA80C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2155B92F8(uint64_t a1)
{
  v2 = sub_2155B8560(&qword_27CA64CC8, type metadata accessor for BSBrandServiceType, &unk_2155DC434);
  v3 = sub_2155B8560(&qword_27CA64CD0, type metadata accessor for BSBrandServiceType, &unk_2155DC3D4);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2155B9444()
{
  v0 = sub_2155DA80C();
  v1 = MEMORY[0x21606BA00](v0);

  return v1;
}

uint64_t sub_2155B9480(uint64_t a1)
{
  sub_2155DA80C();
  sub_2155DA87C();
}

uint64_t sub_2155B94D4(uint64_t a1)
{
  sub_2155DA80C();
  sub_2155DAC3C();
  sub_2155DA87C();
  v1 = sub_2155DAC5C();

  return v1;
}

uint64_t sub_2155B9548(void *a1, uint64_t *a2)
{
  v2 = sub_2155DA80C();
  v4 = v3;
  if (v2 == sub_2155DA80C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2155DABAC();
  }

  return v7 & 1;
}

unint64_t sub_2155B961C()
{
  result = qword_27CA64CB8;
  if (!qword_27CA64CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA64CB8);
  }

  return result;
}

unint64_t sub_2155B9674()
{
  result = qword_27CA64CC0;
  if (!qword_27CA64CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA64CC0);
  }

  return result;
}

uint64_t sub_2155B96C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x495255646E617262 && a2 == 0xE800000000000000;
  if (v4 || (sub_2155DABAC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x707954646E617262 && a2 == 0xE900000000000065 || (sub_2155DABAC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_2155DABAC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x666E49646E617262 && a2 == 0xE90000000000006FLL || (sub_2155DABAC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x69726F6765746163 && a2 == 0xEA00000000007365 || (sub_2155DABAC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002155E0370 == a2 || (sub_2155DABAC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4C7972616D697270 && a2 == 0xEE004C52556F676FLL || (sub_2155DABAC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002155E0390 == a2 || (sub_2155DABAC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002155E03B0 == a2 || (sub_2155DABAC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000002155E03D0 == a2 || (sub_2155DABAC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000002155E03F0 == a2 || (sub_2155DABAC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6966697265567369 && a2 == 0xEA00000000006465 || (sub_2155DABAC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6465696669726576 && a2 == 0xEA00000000007942 || (sub_2155DABAC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x65746973626577 && a2 == 0xE700000000000000 || (sub_2155DABAC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x4E6567617373656DLL && a2 == 0xED00007265626D75 || (sub_2155DABAC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6464416C69616D65 && a2 == 0xEC00000073736572 || (sub_2155DABAC() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x73736572646461 && a2 == 0xE700000000000000 || (sub_2155DABAC() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002155E0410 == a2 || (sub_2155DABAC() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002155E0430 == a2)
  {

    return 18;
  }

  else
  {
    v6 = sub_2155DABAC();

    if (v6)
    {
      return 18;
    }

    else
    {
      return 19;
    }
  }
}

unint64_t sub_2155B9CC0()
{
  result = qword_27CA64CD8;
  if (!qword_27CA64CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA64CD8);
  }

  return result;
}

uint64_t sub_2155B9D5C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2155B9D94(uint64_t a1)
{
  sub_2155B8C98(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_2155B9E0C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2155B9E2C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2155B9E60(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2155B9E80(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_2155B9F68()
{
  sub_2155DAC3C();
  MEMORY[0x21606BD90](0);
  return sub_2155DAC5C();
}

uint64_t sub_2155B9FD4(uint64_t a1)
{
  sub_2155DAC3C();
  MEMORY[0x21606BD90](0);
  return sub_2155DAC5C();
}

uint64_t NetworkProvider.__allocating_init(customURLCache:waitsForConnectivity:)(void *a1, char a2)
{
  v4 = swift_allocObject();
  v5 = [objc_opt_self() defaultSessionConfiguration];
  v6 = v5;
  if (a1)
  {
    [v5 setURLCache_];
  }

  [v6 setWaitsForConnectivity_];
  v7 = [objc_opt_self() sessionWithConfiguration_];

  *(v4 + 16) = v7;
  return v4;
}

uint64_t NetworkProvider.init(customURLCache:waitsForConnectivity:)(void *a1, char a2)
{
  v5 = [objc_opt_self() defaultSessionConfiguration];
  v6 = v5;
  if (a1)
  {
    [v5 setURLCache_];
  }

  [v6 setWaitsForConnectivity_];
  v7 = [objc_opt_self() sessionWithConfiguration_];

  *(v2 + 16) = v7;
  return v2;
}

uint64_t sub_2155BA1A0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2155BA24C;

  return sub_2155BA464(a1);
}

uint64_t sub_2155BA24C(uint64_t a1, uint64_t a2)
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

uint64_t NetworkProvider.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2155BA3B4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2155BACF0;

  return sub_2155BA464(a1);
}

uint64_t sub_2155BA464(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2155BA484, 0, 0);
}

uint64_t sub_2155BA484()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_2155BA528;
  v2 = *(v0 + 16);

  return MEMORY[0x28211ED08](v2, 0);
}

uint64_t sub_2155BA528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[5] = a1;
  v5[6] = a2;
  v5[7] = a3;

  if (v3)
  {
    v6 = v5[1];

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2155BA660, 0, 0);
  }
}

uint64_t sub_2155BA660()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1 && [v1 statusCode] == 200)
  {

    v2 = *(v0 + 8);
    v3 = *(v0 + 40);
    v4 = *(v0 + 48);

    return v2(v3, v4);
  }

  else
  {
    v6 = *(v0 + 48);
    v7 = *(v0 + 56);
    v8 = *(v0 + 40);
    sub_2155BAB5C();
    swift_allocError();
    swift_willThrow();

    sub_2155B453C(v8, v6);
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t dispatch thunk of NetworkProviderProtocol.performDataTask(with:usingSIM:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2155BACF4;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of NetworkProvider.performDataTask(with:usingSIM:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 96) + **(*v3 + 96));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2155BAA50;

  return v10(a1, a2, a3);
}

uint64_t sub_2155BAA50(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

unint64_t sub_2155BAB5C()
{
  result = qword_27CA64DD0;
  if (!qword_27CA64DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA64DD0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NetworkProviderError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for NetworkProviderError(_WORD *result, int a2, int a3)
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

unint64_t sub_2155BAC9C()
{
  result = qword_27CA64DD8;
  if (!qword_27CA64DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA64DD8);
  }

  return result;
}

id sub_2155BAD10()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v1 = [v0 getSubscriptionInfoWithError_];
  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_2155DA62C();

    swift_willThrow();
  }

  return v1;
}

id sub_2155BADE0(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v3 = [v2 readCachedChatBotRenderInformation:a1 forChatBot:a2 withError:v7];
  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_2155DA62C();

    swift_willThrow();
  }

  return v3;
}

id sub_2155BAEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if ([v3 fetchRenderInformation:a1 forChatBot:a2 withOperationID:a3 withError:v6])
  {
    return v6[0];
  }

  v5 = v6[0];
  sub_2155DA62C();

  return swift_willThrow();
}

id sub_2155BAF9C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for XPCDaemonConnection();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t URL.hasSecureScheme.getter()
{
  sub_2155DA65C();
  if (!v0)
  {
    return 0;
  }

  v1 = sub_2155DA85C();
  v3 = v2;

  if (v1 == 0x7370747468 && v3 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v5 = sub_2155DABAC();

    return v5 & 1;
  }
}

uint64_t String.isAppleMainBrandURI.getter(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000002CLL && 0x80000002155E0480 == a2)
  {
    return 1;
  }

  else
  {
    return sub_2155DABAC();
  }
}

uint64_t String.isAppleMakoBrandURI.getter(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000002CLL && 0x80000002155E0450 == a2)
  {
    return 1;
  }

  else
  {
    return sub_2155DABAC();
  }
}

uint64_t static BrandManagerError.errorDomain.getter()
{
  swift_beginAccess();
  v0 = qword_27CA64DF0;

  return v0;
}

uint64_t static BrandManagerError.errorDomain.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  qword_27CA64DF0 = a1;
  off_27CA64DF8 = a2;
}

uint64_t sub_2155BB238(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_27CA64DF0 = v2;
  off_27CA64DF8 = v1;
}

unint64_t BrandManagerError.errorUserInfo.getter()
{
  v1 = *v0;
  if (*v0 >= 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64E00, &qword_2155DC820);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2155DC7F0;
    *(inited + 32) = sub_2155DA80C();
    *(inited + 40) = v5;
    *(inited + 72) = sub_2155BC714();
    *(inited + 48) = v1;
    sub_2155BC760(v1);
    v6 = sub_2155BC5E4(inited);
    swift_setDeallocating();
    sub_2155B1F44(inited + 32, &qword_27CA64E10, &qword_2155DC828);
    return v6;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];

    return sub_2155BC5E4(v2);
  }
}

uint64_t sub_2155BB3A0()
{
  swift_beginAccess();
  v0 = qword_27CA64DF0;

  return v0;
}

unint64_t sub_2155BB404()
{
  v1 = *v0;
  if (*v0 >= 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64E00, &qword_2155DC820);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2155DC7F0;
    *(inited + 32) = sub_2155DA80C();
    *(inited + 40) = v5;
    *(inited + 72) = sub_2155BC714();
    *(inited + 48) = v1;
    sub_2155BC760(v1);
    v6 = sub_2155BC5E4(inited);
    swift_setDeallocating();
    sub_2155B1F44(inited + 32, &qword_27CA64E10, &qword_2155DC828);
    return v6;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];

    return sub_2155BC5E4(v2);
  }
}

uint64_t sub_2155BB55C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_280E1C288 != -1)
  {
    swift_once();
  }

  v10 = sub_2155DA75C();
  __swift_project_value_buffer(v10, qword_280E1C7F0);

  v11 = sub_2155DA72C();
  v12 = sub_2155DA99C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v26 = a3;
    *&v27[0] = swift_slowAlloc();
    v14 = *&v27[0];
    *v13 = 136446467;
    v15 = sub_2155DACAC();
    v17 = sub_2155BC03C(v15, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2081;
    *(v13 + 14) = sub_2155BC03C(a1, a2, v27);
    _os_log_impl(&dword_2155AF000, v11, v12, "[%{public}s] Fetching brand with URI: %{private}s", v13, 0x16u);
    swift_arrayDestroy();
    v18 = v14;
    a3 = v26;
    MEMORY[0x21606C4C0](v18, -1, -1);
    MEMORY[0x21606C4C0](v13, -1, -1);
  }

  v19 = __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
  v20 = v19[3];
  v21 = v19[4];
  __swift_project_boxed_opaque_existential_1(v19, v20);
  sub_2155B1CB4(v19, v27);
  v22 = swift_allocObject();
  v23 = v27[1];
  *(v22 + 16) = v27[0];
  *(v22 + 32) = v23;
  *(v22 + 48) = v27[2];
  *(v22 + 64) = a3;
  *(v22 + 72) = a4;
  v24 = *(v21 + 32);

  v24(a1, a2, 0, 0, sub_2155BC960, v22, v20, v21);
}

uint64_t sub_2155BB7DC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  if (qword_280E1C288 != -1)
  {
    swift_once();
  }

  v12 = sub_2155DA75C();
  __swift_project_value_buffer(v12, qword_280E1C7F0);

  v13 = sub_2155DA72C();
  v14 = sub_2155DA99C();

  if (os_log_type_enabled(v13, v14))
  {
    v28 = a4;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&v31[0] = v16;
    *v15 = 136446467;
    v17 = sub_2155DACAC();
    v19 = sub_2155BC03C(v17, v18, v31);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2081;
    *(v15 + 14) = sub_2155BC03C(a1, a2, v31);
    _os_log_impl(&dword_2155AF000, v13, v14, "[%{public}s] Fetching brand with URI: %{private}s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21606C4C0](v16, -1, -1);
    v20 = v15;
    a4 = v28;
    MEMORY[0x21606C4C0](v20, -1, -1);
  }

  v21 = __swift_project_boxed_opaque_existential_1((v7 + 16), *(v7 + 40));
  v22 = v21[3];
  v23 = v21[4];
  __swift_project_boxed_opaque_existential_1(v21, v22);
  sub_2155B1CB4(v21, v31);
  v24 = swift_allocObject();
  v25 = v31[1];
  *(v24 + 16) = v31[0];
  *(v24 + 32) = v25;
  *(v24 + 48) = v31[2];
  *(v24 + 64) = a5;
  *(v24 + 72) = a6;
  v26 = *(v23 + 32);

  v26(a1, a2, a3, a4, sub_2155BCD64, v24, v22, v23);
}

uint64_t sub_2155BBA64(uint64_t a1, uint64_t a2)
{

  sub_2155BE974(a1, a2);
}

uint64_t sub_2155BBABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;

  sub_2155BDB24(a1, a2, sub_2155BC9B4, v8);
}

void sub_2155BBB68(uint64_t a1, unint64_t a2, char a3, void (*a4)(uint64_t, unint64_t, id))
{
  if (a3)
  {
    v5 = sub_2155DA61C();
    a4(0, 0xF000000000000000, v5);
  }

  else
  {
    a4(a1, a2, 0);
  }
}

uint64_t sub_2155BBBE4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;

  sub_2155BEABC(a1, a2, a3, sub_2155BC9C0, v10);
}

void sub_2155BBCA0(char a1, char a2, void (*a3)(void, id))
{
  if (a2)
  {
    v4 = sub_2155DA61C();
    a3(0, v4);
  }

  else
  {
    a3(a1 & 1, 0);
  }
}

uint64_t sub_2155BBD1C(uint64_t a1, uint64_t a2, void *a3, double a4)
{

  LOBYTE(a3) = sub_2155BEF60(a1, a2, a3, a4);

  return a3 & 1;
}

uint64_t sub_2155BBDD0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, void (*a7)(void, void, void, void, void))
{
  if (qword_280E1C288 != -1)
  {
    swift_once();
  }

  v13 = sub_2155DA75C();
  __swift_project_value_buffer(v13, qword_280E1C7F0);

  v14 = sub_2155DA72C();
  v15 = sub_2155DA99C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v26 = a7;
    v25 = swift_slowAlloc();
    v28 = v25;
    *v16 = 136446466;
    v17 = sub_2155DACAC();
    v19 = a1;
    v20 = a3;
    v21 = a4;
    v22 = a5;
    v23 = sub_2155BC03C(v17, v18, &v28);

    *(v16 + 4) = v23;
    a5 = v22;
    a4 = v21;
    a3 = v20;
    a1 = v19;
    *(v16 + 12) = 2082;
    *(v16 + 14) = sub_2155BC03C(v19, a2, &v28);
    _os_log_impl(&dword_2155AF000, v14, v15, a6, v16, 0x16u);
    swift_arrayDestroy();
    a7 = v26;
    MEMORY[0x21606C4C0](v25, -1, -1);
    MEMORY[0x21606C4C0](v16, -1, -1);
  }

  a7(a1, a2, a3, a4, a5);
}

uint64_t BrandManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

unint64_t sub_2155BC03C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2155BC108(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2155B0F9C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2155BC108(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2155BC214(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2155DAA7C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_2155BC214(uint64_t a1, unint64_t a2)
{
  v3 = sub_2155BC260(a1, a2);
  sub_2155BC390(&unk_28277F180);
  return v3;
}

void *sub_2155BC260(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2155BC47C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2155DAA7C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2155DA89C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2155BC47C(v10, 0);
        result = sub_2155DAA4C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2155BC390(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2155BC4F0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2155BC47C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA64E38, &unk_2155DC960);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2155BC4F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA64E38, &unk_2155DC960);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_2155BC5E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA64E50, &qword_2155DC978);
    v3 = sub_2155DAACC();
    v4 = a1 + 32;

    while (1)
    {
      sub_2155BCCEC(v4, &v13, &qword_27CA64E10, &qword_2155DC828);
      v5 = v13;
      v6 = v14;
      result = sub_2155D0A68(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2155BCD54(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2155BC714()
{
  result = qword_27CA64E08;
  if (!qword_27CA64E08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CA64E08);
  }

  return result;
}

id sub_2155BC760(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

unint64_t sub_2155BC770(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64E28, &qword_2155DC950);
    v3 = sub_2155DAACC();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64E30, &qword_2155DC958);
  v6 = MEMORY[0x28223BE20](v4, v5);
  v9 = (&v24 - v8);
  if (!v2)
  {
    return v3;
  }

  v10 = *(v6 + 48);
  v11 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v12 = *(v7 + 72);

  while (1)
  {
    sub_2155BCCEC(v11, v9, &qword_27CA64E30, &qword_2155DC958);
    v13 = *v9;
    v14 = v9[1];
    result = sub_2155D0A68(*v9, v14);
    if (v16)
    {
      break;
    }

    v17 = result;
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v18 = (v3[6] + 16 * result);
    *v18 = v13;
    v18[1] = v14;
    v19 = v3[7];
    v20 = sub_2155DA70C();
    result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * v17, v9 + v10, v20);
    v21 = v3[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_12;
    }

    v3[2] = v23;
    v11 += v12;
    if (!--v2)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t objectdestroyTm()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

unint64_t sub_2155BC9D0()
{
  result = qword_27CA64E18;
  if (!qword_27CA64E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA64E18);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16BusinessServices17BrandManagerErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2155BCA54(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2155BCAB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_2155BCB0C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    a2 -= 0x7FFFFFFF;
    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    *result = a2;
  }

  return result;
}

unint64_t sub_2155BCC94()
{
  result = qword_27CA64E20;
  if (!qword_27CA64E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA64E20);
  }

  return result;
}

uint64_t sub_2155BCCEC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_2155BCD54(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_2155BCDF8(uint64_t a1)
{
  sub_2155BCEF4(319);
  if (v1 <= 0x3F)
  {
    sub_2155BCF58();
    if (v2 <= 0x3F)
    {
      sub_2155B8C98(319);
      if (v3 <= 0x3F)
      {
        sub_2155BCFA8();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2155BCEF4(uint64_t a1)
{
  if (!qword_27CA64C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA64B50, &qword_2155DBDD8);
    v1 = sub_2155DAA0C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CA64C50);
    }
  }
}

void sub_2155BCF58()
{
  if (!qword_27CA64C58)
  {
    v0 = sub_2155DAA0C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA64C58);
    }
  }
}

void sub_2155BCFA8()
{
  if (!qword_27CA64E80)
  {
    v0 = sub_2155DAA0C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA64E80);
    }
  }
}

double sub_2155BCFF8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v72 = a7;
  v68 = a5;
  v69 = a6;
  v65 = a3;
  v66 = a4;
  v63 = a2;
  v61 = a1;
  v79 = a24;
  v80 = a25;
  v77 = a22;
  v78 = a23;
  v76 = a21;
  v74 = a8;
  v75 = a20;
  v73 = a19;
  v70 = a17;
  v71 = a18;
  v67 = a16;
  v64 = a15;
  v62 = a14;
  v60 = a13;
  v59 = a12;
  v58 = a11;
  v57 = a10;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  MEMORY[0x28223BE20](v26 - 8, v27);
  v29 = &v53 - v28;
  v56 = &v53 - v28;
  v30 = sub_2155DA67C();
  v31 = *(*(v30 - 8) + 56);
  v31(v29, 1, 1, v30);
  v32 = type metadata accessor for RCSChatBotBrand(0);
  v55 = v32[13];
  v31((a9 + v55), 1, 1, v30);
  v33 = (a9 + v32[14]);
  v34 = (a9 + v32[15]);
  v35 = v32[16];
  v54 = v32[17];
  v36 = (a9 + v35);
  v31((a9 + v54), 1, 1, v30);
  v37 = v32[19];
  v38 = (a9 + v32[18]);
  v31((a9 + v37), 1, 1, v30);
  v39 = a9 + v32[20];
  v53 = xmmword_2155DBDB0;
  *v39 = xmmword_2155DBDB0;
  v40 = v63;
  *a9 = v61;
  *(a9 + 8) = v40;
  v41 = v66;
  *(a9 + 16) = v65;
  *(a9 + 24) = v41;
  v42 = v69;
  *(a9 + 96) = v68;
  *(a9 + 104) = v42;
  v43 = v72;
  *(a9 + 32) = 0;
  *(a9 + 40) = v43;
  *(a9 + 48) = v74;
  *(a9 + 56) = v57;
  v44 = v59;
  *(a9 + 72) = v58;
  *(a9 + 80) = v44;
  *(a9 + 88) = v60;
  v45 = v64;
  *(a9 + 112) = v62;
  *(a9 + 120) = v45;
  sub_2155B4C00(v67, a9 + v55);
  v46 = v71;
  *v33 = v70;
  v33[1] = v46;
  v47 = v75;
  v48 = v76;
  *v34 = v73;
  v34[1] = v47;
  v50 = v77;
  v49 = v78;
  *v36 = v48;
  v36[1] = v50;
  sub_2155B4C00(v49, a9 + v54);
  v51 = v80;
  *v38 = v79;
  v38[1] = v51;
  sub_2155B4C00(v56, a9 + v37);
  sub_2155B4528(*v39, *(v39 + 8));
  result = *&v53;
  *v39 = v53;
  *(a9 + v32[21]) = 0;
  return result;
}

uint64_t sub_2155BD2E4(uint64_t a1)
{
  v2 = v1 + *(a1 + 80);
  v3 = *v2;
  sub_2155BD468(*v2, *(v2 + 8));
  return v3;
}

uint64_t sub_2155BD398(void *a1)
{
  a1[1] = sub_2155BD424(&qword_27CA64E90, &unk_2155DC9B0);
  a1[2] = sub_2155BD424(&qword_27CA64E98, &unk_2155DC9D8);
  result = sub_2155BD424(&unk_27CA64EA0, &unk_2155DCA40);
  a1[3] = result;
  return result;
}

uint64_t sub_2155BD424(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RCSChatBotBrand(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2155BD468(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2155BD47C(a1, a2);
  }

  return a1;
}

uint64_t sub_2155BD47C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void sub_2155BD4D0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_2155BD538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v13 = *(v8 + 16);
  v14 = *&v13[OBJC_IVAR____TtC16BusinessServices19XPCDaemonConnection_connection];
  v15 = v13;
  v16 = [v14 remoteObjectProxy];
  sub_2155DAA1C();
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64EB0, &qword_2155DCAD8);
  swift_dynamicCast();
  v17 = aBlock[6];
  v18 = sub_2155DA7DC();
  v19 = sub_2155DA63C();
  if (a6)
  {
    a6 = sub_2155DA7DC();
  }

  v20 = *(v9 + 24);
  v21 = swift_allocObject();
  *(v21 + 16) = a7;
  *(v21 + 24) = a8;
  aBlock[4] = sub_2155C0614;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2155BDA78;
  aBlock[3] = &block_descriptor_26;
  v22 = _Block_copy(aBlock);

  [v17 assetDataForBrandURI:v18 URL:v19 type:a4 usingSim:a6 cachingEnabled:v20 completion:v22];
  _Block_release(v22);
  swift_unknownObjectRelease();
}

void sub_2155BD724(void *a1, unint64_t a2, id a3, void (*a4)(id, unint64_t, uint64_t))
{
  if (a3)
  {
    v6 = a3;
    if (qword_280E1C288 != -1)
    {
      swift_once();
    }

    v7 = sub_2155DA75C();
    __swift_project_value_buffer(v7, qword_280E1C7F0);
    v8 = a3;
    v9 = sub_2155DA72C();
    v10 = sub_2155DA98C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v26 = v12;
      *v11 = 136315138;
      v13 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64ED0, &unk_2155DCB70);
      v14 = sub_2155DA84C();
      v16 = sub_2155BC03C(v14, v15, &v26);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_2155AF000, v9, v10, "Error fetching logo: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x21606C4C0](v12, -1, -1);
      MEMORY[0x21606C4C0](v11, -1, -1);
    }

    v17 = a3;
    a4(a3, 0, 1);
  }

  else if (a2 >> 60 == 15)
  {
    if (qword_280E1C288 != -1)
    {
      swift_once();
    }

    v18 = sub_2155DA75C();
    __swift_project_value_buffer(v18, qword_280E1C7F0);
    v19 = sub_2155DA72C();
    v20 = sub_2155DA97C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2155AF000, v19, v20, "Got nil data for logo even when there was no error", v21, 2u);
      MEMORY[0x21606C4C0](v21, -1, -1);
    }

    sub_2155C061C();
    v22 = swift_allocError();
    *v23 = 1;
    a4(v22, 0, 1);
  }

  else
  {
    sub_2155BD47C(a1, a2);
    a4(a1, a2, 0);

    sub_2155B4528(a1, a2);
  }
}

uint64_t sub_2155BDA78(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = sub_2155DA69C();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_2155B4528(v4, v8);
}

void sub_2155BDB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 16);
  v9 = *&v8[OBJC_IVAR____TtC16BusinessServices19XPCDaemonConnection_connection];
  v10 = v8;
  v11 = [v9 remoteObjectProxy];
  sub_2155DAA1C();
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64EB0, &qword_2155DCAD8);
  swift_dynamicCast();
  v12 = aBlock[6];
  v13 = sub_2155DA63C();
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  aBlock[4] = sub_2155C08CC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2155BDA78;
  aBlock[3] = &block_descriptor_61;
  v15 = _Block_copy(aBlock);

  [v12 fetchAssetWithURL:v13 assetType:a2 completion:v15];
  _Block_release(v15);
  swift_unknownObjectRelease();
}

void sub_2155BDCC0(void *a1, unint64_t a2, id a3, uint64_t a4, void (*a5)(id, unint64_t, uint64_t))
{
  if (a3)
  {
    v8 = a3;
    if (qword_280E1C288 != -1)
    {
      swift_once();
    }

    v9 = sub_2155DA75C();
    __swift_project_value_buffer(v9, qword_280E1C7F0);
    v10 = a3;
    v11 = sub_2155DA72C();
    v12 = sub_2155DA98C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v28 = v14;
      *v13 = 134218242;
      *(v13 + 4) = a4;
      *(v13 + 12) = 2080;
      v15 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64ED0, &unk_2155DCB70);
      v16 = sub_2155DA84C();
      v18 = sub_2155BC03C(v16, v17, &v28);

      *(v13 + 14) = v18;
      _os_log_impl(&dword_2155AF000, v11, v12, "Error fetching asset of type %ld. Error: %s", v13, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x21606C4C0](v14, -1, -1);
      MEMORY[0x21606C4C0](v13, -1, -1);
    }

    v19 = a3;
    a5(a3, 0, 1);
  }

  else if (a2 >> 60 == 15)
  {
    if (qword_280E1C288 != -1)
    {
      swift_once();
    }

    v20 = sub_2155DA75C();
    __swift_project_value_buffer(v20, qword_280E1C7F0);
    v21 = sub_2155DA72C();
    v22 = sub_2155DA97C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2155AF000, v21, v22, "Got nil data for logo even when there was no error", v23, 2u);
      MEMORY[0x21606C4C0](v23, -1, -1);
    }

    sub_2155C061C();
    v24 = swift_allocError();
    *v25 = 1;
    a5(v24, 0, 1);
  }

  else
  {
    sub_2155BD47C(a1, a2);
    a5(a1, a2, 0);

    sub_2155B4528(a1, a2);
  }
}

uint64_t sub_2155BE024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[26] = a4;
  v5[27] = v4;
  v5[24] = a2;
  v5[25] = a3;
  v5[23] = a1;
  return MEMORY[0x2822009F8](sub_2155BE04C, 0, 0);
}

uint64_t sub_2155BE04C()
{
  v1 = v0[27];
  if (*(v1 + 24) == 1)
  {
    v2 = *(v1 + 16);
    v3 = *&v2[OBJC_IVAR____TtC16BusinessServices19XPCDaemonConnection_connection];
    v4 = v2;
    v5 = [v3 remoteObjectProxy];
    sub_2155DAA1C();

    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64EB0, &qword_2155DCAD8);
    swift_dynamicCast();
    v6 = v0[22];
    v0[28] = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64EC0, &qword_2155DCB60);
    v0[29] = v7;
    v0[30] = *(*(v7 - 8) + 64);
    v8 = swift_task_alloc();
    v0[31] = v8;
    v9 = sub_2155DA7DC();
    v0[32] = v9;
    v10 = sub_2155DA63C();
    v0[33] = v10;
    v0[2] = v0;
    v0[7] = v8;
    v0[3] = sub_2155BE390;
    v11 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64EC8, &qword_2155DCB68);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2155BE644;
    v0[13] = &block_descriptor_19;
    v0[14] = v11;
    [v6 logoFileURLForBrandURI:v9 remoteURL:v10 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    if (qword_280E1C288 != -1)
    {
      swift_once();
    }

    v12 = sub_2155DA75C();
    __swift_project_value_buffer(v12, qword_280E1C7F0);
    v13 = sub_2155DA72C();
    v14 = sub_2155DA99C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2155AF000, v13, v14, "This SPI only works when caching is enabled", v15, 2u);
      MEMORY[0x21606C4C0](v15, -1, -1);
    }

    sub_2155C0538();
    swift_allocError();
    *v16 = 0;
    swift_willThrow();
    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_2155BE390()
{
  v1 = *(*v0 + 48);
  *(*v0 + 272) = v1;
  if (v1)
  {
    v2 = sub_2155BE5B0;
  }

  else
  {
    v2 = sub_2155BE4A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2155BE4A0()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[31];
  v4 = v0[29];
  v5 = v0[23];
  v6 = swift_task_alloc();
  sub_2155C05A4(v3, v6);
  v7 = (v6 + *(v4 + 48));
  v8 = *v7;
  v9 = v7[1];
  v10 = sub_2155DA67C();
  (*(*(v10 - 8) + 32))(v5, v6, v10);

  swift_unknownObjectRelease();

  v11 = v0[1];

  return v11(v8, v9);
}

uint64_t sub_2155BE5B0()
{
  v1 = v0[33];
  v2 = v0[32];
  swift_willThrow();
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

uint64_t sub_2155BE644(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64ED0, &unk_2155DCB70);
    v6 = swift_allocError();
    *v7 = a4;
    v8 = a4;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64EC0, &qword_2155DCB60);
    v10 = v9 - 8;
    MEMORY[0x28223BE20](v9, v11);
    v13 = &v17 - v12;
    sub_2155DA64C();
    v14 = &v13[*(v10 + 56)];
    *v14 = sub_2155DA80C();
    v14[1] = v15;
    sub_2155C05A4(v13, *(*(v5 + 64) + 40));
    return swift_continuation_throwingResume();
  }
}

void sub_2155BE798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *&v7[OBJC_IVAR____TtC16BusinessServices19XPCDaemonConnection_connection];
  v9 = v7;
  v10 = [v8 remoteObjectProxy];
  sub_2155DAA1C();
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64EB0, &qword_2155DCAD8);
  swift_dynamicCast();
  v11 = aBlock[6];
  v12 = sub_2155DA7DC();
  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2155BE908;
  aBlock[3] = &block_descriptor_16;
  v13 = _Block_copy(aBlock);

  [v11 clearCachedAssetsForBrandURI:v12 completion:v13];
  _Block_release(v13);
  swift_unknownObjectRelease();
}

void sub_2155BE908(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_2155BE974(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *&v5[OBJC_IVAR____TtC16BusinessServices19XPCDaemonConnection_connection];
  v7 = v5;
  v8 = [v6 remoteObjectProxy];
  sub_2155DAA1C();
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64EB0, &qword_2155DCAD8);
  swift_dynamicCast();
  v9 = aBlock[6];
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2155BE908;
  aBlock[3] = &block_descriptor_64;
  v10 = _Block_copy(aBlock);

  [v9 clearUnusedCachedLogos_];
  _Block_release(v10);
  return swift_unknownObjectRelease();
}

void sub_2155BEABC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 16);
  v12 = *&v11[OBJC_IVAR____TtC16BusinessServices19XPCDaemonConnection_connection];
  v13 = v11;
  v14 = [v12 remoteObjectProxy];
  sub_2155DAA1C();
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64EB0, &qword_2155DCAD8);
  swift_dynamicCast();
  v15 = aBlock[6];
  v16 = sub_2155DA7DC();
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a4;
  v17[6] = a5;
  aBlock[4] = sub_2155C089C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2155BEEE8;
  aBlock[3] = &block_descriptor_55;
  v18 = _Block_copy(aBlock);
  v19 = a3;

  [v15 isBrandRegisteredWithIdentifier:v16 forService:v19 completion:v18];
  _Block_release(v18);
  swift_unknownObjectRelease();
}

void sub_2155BEC7C(char a1, id a2, void *a3, uint64_t a4, unint64_t a5, void (*a6)(void))
{
  v6 = a6;
  if (a2)
  {
    v11 = a2;
    if (qword_280E1C288 != -1)
    {
      swift_once();
    }

    v12 = sub_2155DA75C();
    __swift_project_value_buffer(v12, qword_280E1C7F0);
    v13 = a2;
    v14 = a3;

    v15 = sub_2155DA72C();
    v16 = sub_2155DA98C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v28 = v18;
      *v17 = 136315650;
      v19 = sub_2155DA80C();
      v21 = v6;
      v22 = sub_2155BC03C(v19, v20, &v28);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_2155BC03C(a4, a5, &v28);
      *(v17 + 22) = 2080;
      v23 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64ED0, &unk_2155DCB70);
      v24 = sub_2155DA84C();
      v26 = sub_2155BC03C(v24, v25, &v28);
      v6 = v21;

      *(v17 + 24) = v26;
      _os_log_impl(&dword_2155AF000, v15, v16, "Error fetching isBrandRegistered for Service %s Key %s Error: %s", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21606C4C0](v18, -1, -1);
      MEMORY[0x21606C4C0](v17, -1, -1);
    }

    v27 = a2;
    (v6)(a2, 1);
  }

  else
  {
    (a6)(a1 & 1, 0, a3, a4, a5);
  }
}

void sub_2155BEEE8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_2155BEF60(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v32 = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = (v7 + 16);
  v9 = *(v4 + 16);
  v10 = *&v9[OBJC_IVAR____TtC16BusinessServices19XPCDaemonConnection_connection];
  v30 = sub_2155C07CC;
  v31 = v7;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_2155BD4D0;
  v29 = &block_descriptor_43;
  v11 = _Block_copy(&aBlock);
  v12 = v9;
  swift_retain_n();
  v13 = v10;

  v14 = [v13 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v11);

  p_aBlock = &aBlock;
  sub_2155DAA1C();
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64EB0, &qword_2155DCAD8);
  if (swift_dynamicCast())
  {
    v16 = v32;
    v17 = sub_2155DA7DC();
    v18 = swift_allocObject();
    v18[2] = a3;
    v18[3] = a1;
    v18[4] = v16;
    v18[5] = v6;
    v18[6] = v7;
    v30 = sub_2155C07D4;
    v31 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v27 = 1107296256;
    v28 = sub_2155BEEE8;
    v29 = &block_descriptor_49;
    p_aBlock = _Block_copy(&aBlock);

    v19 = a3;

    [v25 isBrandRegisteredWithIdentifier:v17 forService:v19 timeout:p_aBlock completion:a4];
    _Block_release(p_aBlock);
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  v20 = *v8;
  if (*v8)
  {
    swift_willThrow();
    v21 = v20;
  }

  else
  {
    swift_beginAccess();
    LOBYTE(p_aBlock) = *(v6 + 16);
  }

  return p_aBlock & 1;
}

id sub_2155BF298(void *a1, uint64_t a2)
{
  v4 = sub_2155DA75C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2155DA74C();
  v9 = a1;
  v10 = sub_2155DA72C();
  v11 = sub_2155DA98C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = a1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_2155AF000, v10, v11, "Error connecting to remote object: %@", v12, 0xCu);
    sub_2155C07EC(v13);
    MEMORY[0x21606C4C0](v13, -1, -1);
    MEMORY[0x21606C4C0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  swift_beginAccess();
  v16 = *(a2 + 16);
  *(a2 + 16) = a1;

  return a1;
}

uint64_t sub_2155BF468(char a1, id a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v14 = a2;
    if (qword_280E1C288 != -1)
    {
      swift_once();
    }

    v15 = sub_2155DA75C();
    __swift_project_value_buffer(v15, qword_280E1C7F0);
    v16 = a2;
    v17 = a3;

    v18 = sub_2155DA72C();
    v19 = sub_2155DA98C();

    if (os_log_type_enabled(v18, v19))
    {
      v30 = a4;
      v20 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32[0] = v31;
      *v20 = 136315650;
      v21 = sub_2155DA80C();
      v23 = sub_2155BC03C(v21, v22, v32);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_2155BC03C(v30, a5, v32);
      *(v20 + 22) = 2080;
      v24 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64ED0, &unk_2155DCB70);
      v25 = sub_2155DA84C();
      v27 = sub_2155BC03C(v25, v26, v32);

      *(v20 + 24) = v27;
      _os_log_impl(&dword_2155AF000, v18, v19, "Error fetching isBrandRegistered for Service %s Key %s Error: %s", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21606C4C0](v31, -1, -1);
      MEMORY[0x21606C4C0](v20, -1, -1);
    }

    swift_beginAccess();
    *(a6 + 16) = 0;
    swift_beginAccess();
    v28 = *(a7 + 16);
    *(a7 + 16) = a2;
  }

  result = swift_beginAccess();
  *(a6 + 16) = a1 & 1;
  return result;
}

void sub_2155BF6E4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 16);
  v12 = *&v11[OBJC_IVAR____TtC16BusinessServices19XPCDaemonConnection_connection];
  v13 = v11;
  v14 = [v12 remoteObjectProxy];
  sub_2155DAA1C();
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64EB0, &qword_2155DCAD8);
  swift_dynamicCast();
  v15 = aBlock[6];
  v16 = sub_2155DA7DC();
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a4;
  v17[6] = a5;
  v17[7] = v5;
  aBlock[4] = sub_2155C0670;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2155BDA78;
  aBlock[3] = &block_descriptor_34;
  v18 = _Block_copy(aBlock);
  v19 = a3;

  [v15 brandDataWithIdentifier:v16 forService:v19 completion:v18];
  _Block_release(v18);
  swift_unknownObjectRelease();
}

void sub_2155BF8AC(uint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5, unint64_t a6, void (*a7)(void *, uint64_t), uint64_t a8, uint64_t a9)
{
  v47[1] = a8;
  v48 = a7;
  v47[0] = a5;
  v14 = type metadata accessor for GenericBrandLogoURLProvider(0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for GenericBrand(0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v22 = a3;
    if (qword_280E1C288 != -1)
    {
      swift_once();
    }

    v23 = sub_2155DA75C();
    __swift_project_value_buffer(v23, qword_280E1C7F0);
    v24 = a3;
    v25 = a4;

    v26 = sub_2155DA72C();
    v27 = sub_2155DA98C();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v55 = v29;
      *v28 = 136315650;
      v30 = sub_2155DA80C();
      v32 = sub_2155BC03C(v30, v31, &v55);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_2155BC03C(v47[0], a6, &v55);
      *(v28 + 22) = 2080;
      *&v52 = a3;
      v33 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64ED0, &unk_2155DCB70);
      v34 = sub_2155DA84C();
      v36 = sub_2155BC03C(v34, v35, &v55);

      *(v28 + 24) = v36;
      _os_log_impl(&dword_2155AF000, v26, v27, "Error fetching brand for Service %s Key %s Error: %s", v28, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21606C4C0](v29, -1, -1);
      MEMORY[0x21606C4C0](v28, -1, -1);
    }

    v37 = a3;
    v48(a3, 1);
  }

  else
  {
    v47[0] = a9;
    sub_2155DA5CC();
    swift_allocObject();
    sub_2155DA5BC();
    if (a2 >> 60 == 15)
    {
      sub_2155C0538();
      v38 = swift_allocError();
      *v39 = 2;
      v48(v38, 1);
    }

    else
    {
      v40 = a1;
      sub_2155BD47C(a1, a2);
      sub_2155B1C08(&unk_27CA64EE0, type metadata accessor for GenericBrand, &protocol conformance descriptor for GenericBrand);
      sub_2155DA5AC();
      sub_2155B13FC(&v21[*(v18 + 40)], v17);
      v41 = *(v14 + 20);
      v42 = sub_2155DA67C();
      (*(*(v42 - 8) + 56))(&v17[v41], 1, 1, v42);
      v56 = v18;
      v57 = sub_2155B1C08(&qword_27CA64EF0, type metadata accessor for GenericBrand, &protocol conformance descriptor for GenericBrand);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v55);
      sub_2155C0704(v21, boxed_opaque_existential_1, type metadata accessor for GenericBrand);
      v53 = v14;
      v54 = &off_28277F600;
      v44 = __swift_allocate_boxed_opaque_existential_1(&v52);
      sub_2155C0704(v17, v44, type metadata accessor for GenericBrandLogoURLProvider);
      v50 = type metadata accessor for BrandService();
      v51 = &off_28277F9B0;
      *&v49 = v47[0];
      type metadata accessor for Brand();
      v45 = swift_allocObject();
      sub_2155B146C(&v49, v45 + 136);
      sub_2155B146C(&v55, v45 + 16);
      sub_2155B146C(&v52, v45 + 56);
      *(v45 + 96) = 0u;
      *(v45 + 112) = 0u;
      *(v45 + 128) = 0;

      v48(v46, 0);

      sub_2155B4528(v40, a2);

      sub_2155C076C(v17, type metadata accessor for GenericBrandLogoURLProvider);
      sub_2155C076C(v21, type metadata accessor for GenericBrand);
    }
  }
}

void sub_2155BFE90(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 16);
  v12 = *&v11[OBJC_IVAR____TtC16BusinessServices19XPCDaemonConnection_connection];
  v13 = v11;
  v14 = [v12 remoteObjectProxy];
  sub_2155DAA1C();
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64EB0, &qword_2155DCAD8);
  swift_dynamicCast();
  v15 = aBlock[6];
  v16 = sub_2155DA7DC();
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a4;
  v17[6] = a5;
  aBlock[4] = sub_2155C037C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2155BDA78;
  aBlock[3] = &block_descriptor;
  v18 = _Block_copy(aBlock);
  v19 = a3;

  [v15 brandAssetWithIdentifier:v16 forService:v19 completion:v18];
  _Block_release(v18);
  swift_unknownObjectRelease();
}

void sub_2155C0050(uint64_t a1, unint64_t a2, id a3, void *a4, uint64_t a5, unint64_t a6, void (*a7)(void, void, void))
{
  if (a3)
  {
    v12 = a3;
    if (qword_280E1C288 != -1)
    {
      swift_once();
    }

    v13 = sub_2155DA75C();
    __swift_project_value_buffer(v13, qword_280E1C7F0);
    v14 = a3;
    v15 = a4;

    v16 = sub_2155DA72C();
    v17 = sub_2155DA98C();

    if (os_log_type_enabled(v16, v17))
    {
      v33 = a7;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v34 = v19;
      *v18 = 136315650;
      v20 = sub_2155DA80C();
      v22 = sub_2155BC03C(v20, v21, &v34);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_2155BC03C(a5, a6, &v34);
      *(v18 + 22) = 2080;
      v23 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64ED0, &unk_2155DCB70);
      v24 = sub_2155DA84C();
      v26 = sub_2155BC03C(v24, v25, &v34);

      *(v18 + 24) = v26;
      _os_log_impl(&dword_2155AF000, v16, v17, "Error fetching brand asset for Service %s Key %s Error: %s", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21606C4C0](v19, -1, -1);
      v27 = v18;
      a7 = v33;
      MEMORY[0x21606C4C0](v27, -1, -1);
    }

    v28 = a3;
    a7(a3, 0, 1);
  }

  else if (a2 >> 60 == 15)
  {
    sub_2155C0538();
    v29 = swift_allocError();
    *v30 = 2;
    a7(v29, 0, 1);
  }

  else
  {
    sub_2155BD47C(a1, a2);
    a7(a1, a2, 0);

    sub_2155B4528(a1, a2);
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2155C03F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2155BA24C;

  return sub_2155BE024(a1, a2, a3, a4);
}

unint64_t sub_2155C0538()
{
  result = qword_27CA64EB8;
  if (!qword_27CA64EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA64EB8);
  }

  return result;
}

uint64_t sub_2155C05A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64EC0, &qword_2155DCB60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2155C061C()
{
  result = qword_27CA64ED8;
  if (!qword_27CA64ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA64ED8);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2155C0704(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2155C076C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2155C07EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64EF8, &unk_2155DCB80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t getEnumTagSinglePayload for BrandServiceError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BrandServiceError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2155C0A2C()
{
  result = qword_27CA64F10;
  if (!qword_27CA64F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA64F10);
  }

  return result;
}

void *OpaqueWrapper.__allocating_init(_:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  sub_2155B0F9C(a1, v3 + OBJC_IVAR____BSOpaqueWrapper_wrappedThing);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

void *OpaqueWrapper.init(_:)(void *a1)
{
  sub_2155B0F9C(a1, v1 + OBJC_IVAR____BSOpaqueWrapper_wrappedThing);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for OpaqueWrapper();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

id OpaqueWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OpaqueWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OpaqueWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of BrandAssetDataSource.assetData(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2155BAA50;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of BrandAssetDataSource.assetData(for:usingSim:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2155BACF4;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t BrandAssetNetworkFetcher.assetData(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2155C0F80, 0, 0);
}

uint64_t sub_2155C0F80()
{
  v22 = v0;
  if (qword_280E1C288 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_2155DA75C();
  __swift_project_value_buffer(v2, qword_280E1C7F0);
  v3 = sub_2155DA67C();
  v4 = *(v3 - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v1, v3);
  v6 = sub_2155DA72C();
  v7 = sub_2155DA97C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315138;
    sub_2155C19E0();
    v10 = sub_2155DAB8C();
    v12 = v11;
    (*(v4 + 8))(v5, v3);
    v13 = sub_2155BC03C(v10, v12, &v21);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_2155AF000, v6, v7, "Fetching data for URL: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x21606C4C0](v9, -1, -1);
    MEMORY[0x21606C4C0](v8, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v5, v3);
  }

  v14 = v0[3];

  v15 = v14[3];
  v16 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v20 = (*(v16 + 8) + **(v16 + 8));
  v17 = swift_task_alloc();
  v0[4] = v17;
  *v17 = v0;
  v17[1] = sub_2155C12B8;
  v18 = v0[2];

  return v20(v18, 0, 0, v15, v16);
}

uint64_t sub_2155C12B8(uint64_t a1, uint64_t a2)
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

uint64_t BrandAssetNetworkFetcher.assetData(for:usingSim:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2155C13EC, 0, 0);
}

uint64_t sub_2155C13EC()
{
  v30 = v0;
  if (qword_280E1C288 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = v0[2];
  v3 = sub_2155DA75C();
  __swift_project_value_buffer(v3, qword_280E1C7F0);
  v4 = sub_2155DA67C();
  v5 = *(v4 - 8);
  v6 = swift_task_alloc();
  (*(v5 + 16))(v6, v2, v4);

  v7 = sub_2155DA72C();
  v8 = sub_2155DA97C();

  if (os_log_type_enabled(v7, v8))
  {
    v25 = v0[4];
    v26 = v0[3];
    v9 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v29 = v27;
    *v9 = 136315394;
    sub_2155C19E0();
    v10 = sub_2155DAB8C();
    v12 = v11;
    (*(v5 + 8))(v6, v4);
    v13 = sub_2155BC03C(v10, v12, &v29);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    if (v25)
    {
      v14 = v26;
    }

    else
    {
      v14 = 0;
    }

    if (v25)
    {
      v15 = v1;
    }

    else
    {
      v15 = 0xE000000000000000;
    }

    v16 = sub_2155BC03C(v14, v15, &v29);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_2155AF000, v7, v8, "Fetching asset data for URL: %s and simID: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21606C4C0](v27, -1, -1);
    MEMORY[0x21606C4C0](v9, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v6, v4);
  }

  v17 = v0[5];

  v18 = v17[3];
  v19 = v17[4];
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v28 = (*(v19 + 8) + **(v19 + 8));
  v20 = swift_task_alloc();
  v0[6] = v20;
  *v20 = v0;
  v20[1] = sub_2155C1790;
  v21 = v0[3];
  v22 = v0[4];
  v23 = v0[2];

  return v28(v23, v21, v22, v18, v19);
}

uint64_t sub_2155C1790(uint64_t a1, uint64_t a2)
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

uint64_t sub_2155C18A0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2155BA24C;

  return BrandAssetNetworkFetcher.assetData(for:)(a1);
}

uint64_t sub_2155C1934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2155BACF0;

  return BrandAssetNetworkFetcher.assetData(for:usingSim:)(a1, a2, a3);
}

unint64_t sub_2155C19E0()
{
  result = qword_27CA64F28;
  if (!qword_27CA64F28)
  {
    sub_2155DA67C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA64F28);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2155C1A40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2155C1A88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BrandAssetNetworkFetchError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BrandAssetNetworkFetchError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2155C1C40()
{
  result = qword_27CA64F30;
  if (!qword_27CA64F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA64F30);
  }

  return result;
}

uint64_t RCSChatBotNetworkProvider.__allocating_init(customURLCache:waitsForConnectivity:)(void *a1, uint64_t a2)
{
  v2 = a2;
  swift_allocObject();
  v4 = sub_2155C320C(a1, v2);

  return v4;
}

uint64_t RCSChatBotNetworkProvider.init(customURLCache:waitsForConnectivity:)(void *a1, uint64_t a2)
{
  v3 = sub_2155C320C(a1, a2);

  return v3;
}

uint64_t sub_2155C1D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;

  return MEMORY[0x2822009F8](sub_2155C1DB0, 0, 0);
}

uint64_t sub_2155C1DB0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = [objc_allocWithZone(MEMORY[0x277CC37B0]) initWithQueue_];
  v0[7] = v3;
  v4 = v3;
  v5 = sub_2155CC020(v2, v1, v4, &off_28277F6B8);
  v0[8] = v5;

  if (v5)
  {
    v0[2] = 0;
    v8 = [v4 getSystemConfiguration:v5 withError:v0 + 2];
    v0[9] = v8;
    v9 = v0[2];
    if (v8)
    {
      v10 = v8;
      v11 = v9;
      v12 = [v10 identity];
      if (v12)
      {
        v13 = v0[6];
        v14 = v12;
        v15 = [v12 impi];

        v16 = sub_2155DA80C();
        v18 = v17;

        v19 = sub_2155DA71C();
        v0[10] = v19;
        v20 = *(v19 - 8);
        v0[11] = v20;
        v21 = swift_task_alloc();
        v0[12] = v21;
        v22 = [v5 slotID];
        v23 = MEMORY[0x277CF6F30];
        if (v22 == 1)
        {
          v23 = MEMORY[0x277CF6F28];
        }

        (*(v20 + 104))(v21, *v23, v19);
        v24 = sub_2155DA70C();
        v0[13] = v24;
        v0[14] = *(v24 - 8);
        v25 = swift_task_alloc();
        v0[15] = v25;
        v26 = *(v13 + 24);
        v27 = swift_task_alloc();
        v27[2] = v16;
        v27[3] = v18;
        v27[4] = v21;
        v27[5] = v10;
        v27[6] = v13;

        os_unfair_lock_lock((v26 + 24));
        sub_2155C3330((v26 + 16), v25);
        os_unfair_lock_unlock((v26 + 24));

        v39 = sub_2155DA59C();
        v0[16] = v39;
        v0[17] = *(v39 - 8);
        v40 = swift_task_alloc();
        v0[18] = v40;
        v41 = *(sub_2155DA67C() - 8);
        swift_task_alloc();
        (*(v41 + 16))();
        sub_2155DA58C();

        v42 = swift_task_alloc();
        v0[19] = v42;
        *v42 = v0;
        v42[1] = sub_2155C2484;

        return MEMORY[0x282146E18](v40);
      }

      if (qword_27CA64B00 != -1)
      {
        swift_once();
      }

      v34 = sub_2155DA75C();
      __swift_project_value_buffer(v34, qword_27CA66C00);
      v35 = sub_2155DA72C();
      v36 = sub_2155DA98C();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_2155AF000, v35, v36, "Did not find a valid impi", v37, 2u);
        MEMORY[0x21606C4C0](v37, -1, -1);
      }

      sub_2155C32DC();
      swift_allocError();
      *v38 = 2;
      swift_willThrow();
    }

    else
    {
      v33 = v9;
      sub_2155DA62C();

      swift_willThrow();
      v4 = v5;
    }
  }

  else
  {
    if (qword_27CA64B00 != -1)
    {
      swift_once();
    }

    v28 = sub_2155DA75C();
    __swift_project_value_buffer(v28, qword_27CA66C00);
    v29 = sub_2155DA72C();
    v30 = sub_2155DA98C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2155AF000, v29, v30, "Did not find any valid CTXPCServiceSubscriptionContext object", v31, 2u);
      MEMORY[0x21606C4C0](v31, -1, -1);
    }

    sub_2155C32DC();
    swift_allocError();
    *v32 = 0;
    swift_willThrow();
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_2155C2484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[20] = a1;
  v5[21] = a2;
  v5[22] = a3;
  v5[23] = v3;

  if (v3)
  {
    v6 = sub_2155C29A0;
  }

  else
  {
    v6 = sub_2155C25C8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2155C25C8()
{
  v1 = *(v0 + 168);
  v2 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v2 != 2 || *(*(v0 + 160) + 16) == *(*(v0 + 160) + 24))
    {
      goto LABEL_11;
    }
  }

  else if (v2)
  {
    if (*(v0 + 160) == *(v0 + 160) >> 32)
    {
LABEL_11:
      if (qword_27CA64B00 != -1)
      {
        swift_once();
      }

      v16 = *(v0 + 176);
      v17 = sub_2155DA75C();
      __swift_project_value_buffer(v17, qword_27CA66C00);
      v18 = v16;
      v19 = sub_2155DA72C();
      v20 = sub_2155DA98C();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = *(v0 + 176);
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 138412290;
        *(v22 + 4) = v21;
        *v23 = v21;
        v24 = v21;
        _os_log_impl(&dword_2155AF000, v19, v20, "Could not download any data. Response from server: %@", v22, 0xCu);
        sub_2155B1F44(v23, &qword_27CA64EF8, &unk_2155DCB80);
        MEMORY[0x21606C4C0](v23, -1, -1);
        MEMORY[0x21606C4C0](v22, -1, -1);
      }

      v36 = *(v0 + 168);
      v37 = *(v0 + 176);
      v26 = *(v0 + 136);
      v25 = *(v0 + 144);
      v27 = *(v0 + 120);
      v28 = *(v0 + 112);
      v38 = *(v0 + 128);
      v40 = *(v0 + 104);
      v29 = *(v0 + 88);
      v30 = *(v0 + 72);
      v42 = *(v0 + 80);
      v44 = *(v0 + 96);
      v31 = *(v0 + 64);
      v34 = *(v0 + 56);
      v35 = *(v0 + 160);

      sub_2155C32DC();
      swift_allocError();
      *v32 = 3;
      swift_willThrow();

      sub_2155B453C(v35, v36);
      (*(v26 + 8))(v25, v38);
      (*(v28 + 8))(v27, v40);

      (*(v29 + 8))(v44, v42);

      v33 = *(v0 + 8);

      return v33();
    }
  }

  else if ((v1 & 0xFF000000000000) == 0)
  {
    goto LABEL_11;
  }

  v3 = *(v0 + 176);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 120);
  v7 = *(v0 + 112);
  v39 = *(v0 + 128);
  v41 = *(v0 + 104);
  v9 = *(v0 + 88);
  v8 = *(v0 + 96);
  v43 = *(v0 + 80);
  v10 = *(v0 + 56);
  v11 = *(v0 + 64);

  (*(v5 + 8))(v4, v39);
  (*(v7 + 8))(v6, v41);

  (*(v9 + 8))(v8, v43);

  v12 = *(v0 + 8);
  v13 = *(v0 + 160);
  v14 = *(v0 + 168);

  return v12(v13, v14);
}

uint64_t sub_2155C29A0()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 112);
  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  v12 = *(v0 + 104);
  v13 = *(v0 + 80);
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);

  (*(v2 + 8))(v1, v3);
  (*(v5 + 8))(v4, v12);

  (*(v7 + 8))(v6, v13);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2155C2AD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v46 = a6;
  v47 = a5;
  v48 = a7;
  v11 = sub_2155DA70C();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  MEMORY[0x28223BE20](v14, v18);
  v20 = &v45 - v19;
  if (*(v17 + 16) && (v21 = sub_2155D0A68(a2, a3), (v22 & 1) != 0))
  {
    (*(v12 + 16))(v20, *(v17 + 56) + *(v12 + 72) * v21, v11);
    v23 = *(v12 + 32);
    v23(v16, v20, v11);
    if (qword_27CA64B00 != -1)
    {
      swift_once();
    }

    v24 = sub_2155DA75C();
    __swift_project_value_buffer(v24, qword_27CA66C00);
    v25 = sub_2155DA72C();
    v26 = sub_2155DA99C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2155AF000, v25, v26, "Using cached FileDownloader", v27, 2u);
      MEMORY[0x21606C4C0](v27, -1, -1);
    }

    return (v23)(v48, v16, v11);
  }

  else
  {
    if (qword_27CA64B00 != -1)
    {
      swift_once();
    }

    v29 = sub_2155DA75C();
    __swift_project_value_buffer(v29, qword_27CA66C00);
    v30 = sub_2155DA72C();
    v31 = sub_2155DA99C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2155AF000, v30, v31, "Creating new FileDownloader since impi changed", v32, 2u);
      MEMORY[0x21606C4C0](v32, -1, -1);
    }

    v33 = sub_2155DA71C();
    MEMORY[0x28223BE20](v33, v34);
    (*(v36 + 16))(&v45 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
    v37 = *(v46 + 16);
    v38 = v47;
    v39 = v37;
    v40 = v48;
    sub_2155DA6DC();
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64F48, &qword_2155DCF88);
    MEMORY[0x28223BE20](v41 - 8, v42);
    v44 = &v45 - v43;
    (*(v12 + 16))(&v45 - v43, v40, v11);
    (*(v12 + 56))(v44, 0, 1, v11);

    return sub_2155C2F24(v44, a2, a3);
  }
}

uint64_t sub_2155C2F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_2155DA70C();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(a1, 1, v7);
  if (v9 == 1)
  {
    sub_2155B1F44(a1, &qword_27CA64F48, &qword_2155DCF88);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64F48, &qword_2155DCF88);
    MEMORY[0x28223BE20](v11 - 8, v12);
    v14 = &v19 - v13;
    sub_2155C84F8(a2, a3, &v19 - v13);

    return sub_2155B1F44(v14, &qword_27CA64F48, &qword_2155DCF88);
  }

  else
  {
    MEMORY[0x28223BE20](v9, v10);
    v17 = &v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 32))(v17, a1, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_2155C90EC(v17, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t RCSChatBotNetworkProvider.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2155C315C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2155BA24C;

  return sub_2155C1D1C(a1, a2, a3);
}

uint64_t sub_2155C320C(uint64_t a1, char a2)
{
  v5 = sub_2155BC770(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64F50, &unk_2155DCF90);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = v5;
  *(v2 + 24) = v6;
  v7 = sub_2155DA6EC();
  v8 = v7;
  if (a1)
  {
    [v7 setURLCache_];
  }

  [v8 setWaitsForConnectivity_];
  v9 = [objc_opt_self() sessionWithConfiguration_];

  *(v2 + 16) = v9;
  return v2;
}

unint64_t sub_2155C32DC()
{
  result = qword_27CA64F38;
  if (!qword_27CA64F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA64F38);
  }

  return result;
}

uint64_t dispatch thunk of RCSChatBotNetworkProvider.performDataTask(with:usingSIM:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 128) + **(*v3 + 128));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2155BAA50;

  return v10(a1, a2, a3);
}

unint64_t sub_2155C3500()
{
  result = qword_27CA64F40;
  if (!qword_27CA64F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA64F40);
  }

  return result;
}

uint64_t BrandMessagingDetails.localizedResponseTime.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_2155C358C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_2155C35E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t BrandFactory.makeBrand(brandModel:brandLogoURLProvider:brandLogoDataProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = type metadata accessor for Brand();
  sub_2155B0E68(a1, v29);
  sub_2155B0E68(a2, v26);
  sub_2155C3864(a3, v25);
  v9 = v30;
  v10 = v31;
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
  MEMORY[0x28223BE20](v11, v11);
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v14 + 16))(v13);
  v15 = v27;
  v16 = v28;
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
  MEMORY[0x28223BE20](v17, v17);
  v19 = &v25[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v20 + 16))(v19);
  v24 = v7;
  v21 = type metadata accessor for BrandService();
  v22 = sub_2155D69E8(v13, v19, &v24, v25, v8, v9, v21, v15, v10, &off_28277F9B0, v16);

  __swift_destroy_boxed_opaque_existential_1(v26);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return v22;
}

uint64_t sub_2155C3864(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64F58, &qword_2155DCFF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for BrandFactory(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for BrandFactory(uint64_t result, int a2, int a3)
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

uint64_t sub_2155C3A10()
{
  v1 = v0;
  v27 = *MEMORY[0x277D85DE8];
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *&address.sa_data[6] = 0;
  *address.sa_data = 0;
  *&address.sa_len = 528;
  v2 = SCNetworkReachabilityCreateWithAddress(0, &address);
  if (v2)
  {
    v3 = v2;
    flags = 0;
    if (!SCNetworkReachabilityGetFlags(v2, &flags))
    {
      if (qword_27CA64B00 != -1)
      {
        swift_once();
      }

      v4 = sub_2155DA75C();
      __swift_project_value_buffer(v4, qword_27CA66C00);
      v5 = sub_2155DA72C();
      v6 = sub_2155DA99C();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_2155AF000, v5, v6, "Failed to determine initial reachability status", v7, 2u);
        MEMORY[0x21606C4C0](v7, -1, -1);
      }
    }

    *(v1 + 16) = v3;
    *(v1 + 24) = (flags & 2) != 0;
    context.info = v1;
    memset(&context.retain, 0, 24);
    context.version = 0;
    v8 = v3;
    if (!SCNetworkReachabilitySetCallback(v8, sub_2155C3E18, &context))
    {
      if (qword_27CA64B00 != -1)
      {
        swift_once();
      }

      v9 = sub_2155DA75C();
      __swift_project_value_buffer(v9, qword_27CA66C00);
      v10 = sub_2155DA72C();
      v11 = sub_2155DA99C();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_2155AF000, v10, v11, "Failed to configure reachability callback", v12, 2u);
        MEMORY[0x21606C4C0](v12, -1, -1);
      }
    }

    sub_2155B1BBC();
    v13 = sub_2155DA9CC();
    v14 = SCNetworkReachabilitySetDispatchQueue(v8, v13);

    if (!v14)
    {
      if (qword_27CA64B00 != -1)
      {
        swift_once();
      }

      v15 = sub_2155DA75C();
      __swift_project_value_buffer(v15, qword_27CA66C00);
      v16 = sub_2155DA72C();
      v17 = sub_2155DA99C();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_2155AF000, v16, v17, "Failed to configure reachability callback queue", v18, 2u);
        MEMORY[0x21606C4C0](v18, -1, -1);
      }
    }
  }

  else
  {
    if (qword_27CA64B00 != -1)
    {
      swift_once();
    }

    v19 = sub_2155DA75C();
    __swift_project_value_buffer(v19, qword_27CA66C00);
    v20 = sub_2155DA72C();
    v21 = sub_2155DA99C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2155AF000, v20, v21, "Failed to create network reachability", v22, 2u);
      MEMORY[0x21606C4C0](v22, -1, -1);
    }

    sub_2155C4000(*(v1 + 32), *(v1 + 40));
    type metadata accessor for NetworkReachabilityProvider();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v1;
}

uint64_t sub_2155C3E24()
{
  v1 = v0;
  if (SCNetworkReachabilitySetDispatchQueue(*(v0 + 16), 0))
  {
    if (qword_27CA64B00 != -1)
    {
      swift_once();
    }

    v2 = sub_2155DA75C();
    __swift_project_value_buffer(v2, qword_27CA66C00);
    v3 = sub_2155DA72C();
    v4 = sub_2155DA99C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Unscheduled reachability callback";
LABEL_10:
      _os_log_impl(&dword_2155AF000, v3, v4, v6, v5, 2u);
      MEMORY[0x21606C4C0](v5, -1, -1);
    }
  }

  else
  {
    if (qword_27CA64B00 != -1)
    {
      swift_once();
    }

    v7 = sub_2155DA75C();
    __swift_project_value_buffer(v7, qword_27CA66C00);
    v3 = sub_2155DA72C();
    v4 = sub_2155DA99C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Failed to unschedule reachability callback";
      goto LABEL_10;
    }
  }

  sub_2155C4000(*(v1 + 32), *(v1 + 40));
  return v1;
}

uint64_t sub_2155C3FA8()
{
  sub_2155C3E24();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_2155C4000(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_2155C4010(char a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a1 & 2;
    v4 = *(a2 + 24) ^ (v3 >> 1);

    if (v4)
    {
      if (qword_27CA64B00 != -1)
      {
        swift_once();
      }

      v5 = sub_2155DA75C();
      __swift_project_value_buffer(v5, qword_27CA66C00);
      v6 = sub_2155DA72C();
      v7 = sub_2155DA97C();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 67109120;
        v9 = v3 >> 1;
        *(v8 + 4) = v9;
        _os_log_impl(&dword_2155AF000, v6, v7, "Network reachability changed: isReachable = %{BOOL}d", v8, 8u);
        MEMORY[0x21606C4C0](v8, -1, -1);
      }

      else
      {

        v9 = v3 >> 1;
      }

      *(a2 + 24) = v9;
      v13 = *(a2 + 32);
      if (v13)
      {
        v14 = *(a2 + 40);

        v13(v15);
        sub_2155C4000(v13, v14);
      }
    }
  }

  else
  {
    if (qword_27CA64B00 != -1)
    {
      swift_once();
    }

    v10 = sub_2155DA75C();
    __swift_project_value_buffer(v10, qword_27CA66C00);
    oslog = sub_2155DA72C();
    v11 = sub_2155DA97C();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2155AF000, oslog, v11, "Reachability callback info is nil", v12, 2u);
      MEMORY[0x21606C4C0](v12, -1, -1);
    }
  }
}

uint64_t sub_2155C42D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  v1 = swift_task_alloc();
  sub_2155DA66C();
  v2 = sub_2155DA67C();
  v3 = *(v2 - 8);
  result = (*(v3 + 48))(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v3 + 32))(*(v0 + 16), v1, v2);

    v5 = *(v0 + 8);

    return v5(0x6F69736E65747865, 0xEF6E656B6F74206ELL);
  }

  return result;
}

void sub_2155C4494(uint64_t a1, void (*a2)(id, unint64_t, uint64_t))
{
  if (*(v2 + 16) == 1)
  {
    v4 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v5 = sub_2155DA7DC();
    v15 = [v4 initWithDomain:v5 code:1 userInfo:0];

    a2(v15, 0, 1);
  }

  else
  {
    v6 = sub_2155DA83C();
    v7 = *(v6 - 8);
    MEMORY[0x28223BE20](v6, v8);
    v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2155DA82C();
    v11 = sub_2155DA81C();
    v13 = v12;
    (*(v7 + 8))(v10, v6);
    if (v13 >> 60 == 15)
    {
      __break(1u);
    }

    else
    {
      a2(v11, v13, 0);
      sub_2155B4528(v11, v13);
    }
  }
}

void sub_2155C4688(void (*a1)(id, unint64_t, uint64_t))
{
  if (*(v1 + 16) == 1)
  {
    v3 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v4 = sub_2155DA7DC();
    v14 = [v3 initWithDomain:v4 code:1 userInfo:0];

    a1(v14, 0, 1);
  }

  else
  {
    v5 = sub_2155DA83C();
    v6 = *(v5 - 8);
    MEMORY[0x28223BE20](v5, v7);
    v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2155DA82C();
    v10 = sub_2155DA81C();
    v12 = v11;
    (*(v6 + 8))(v9, v5);
    if (v12 >> 60 == 15)
    {
      __break(1u);
    }

    else
    {
      a1(v10, v12, 0);
      sub_2155B4528(v10, v12);
    }
  }
}

id BrandManagerObjcShim.__allocating_init(cachingEnabled:cacheURL:brandDataSourceWrapper:)(char a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_2155B1194(a1, a2, a3);

  return v8;
}

id BrandManagerObjcShim.init(cachingEnabled:cacheURL:brandDataSourceWrapper:)(char a1, uint64_t a2, void *a3)
{
  v4 = sub_2155B1194(a1, a2, a3);

  return v4;
}

uint64_t sub_2155C4904(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;

  sub_2155BB7DC(a1, a2, 0, 0, sub_2155C5918, v8);
}

uint64_t sub_2155C4AB8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;

  sub_2155BB7DC(a1, a2, a3, a4, sub_2155C5B60, v12);
}

uint64_t sub_2155C4CAC(uint64_t a1, uint64_t a2)
{

  sub_2155BE974(a1, a2);
}

void sub_2155C4DBC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_2155DA61C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_2155C4E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;

  sub_2155BDB24(a1, a2, sub_2155BC9B4, v8);
}

uint64_t sub_2155C5078(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;

  sub_2155BEABC(a1, a2, a3, sub_2155BC9C0, v10);
}

uint64_t sub_2155C5274(uint64_t a1, uint64_t a2, void *a3, double a4)
{

  v8 = sub_2155BEF60(a1, a2, a3, a4);

  return v8 & 1;
}

void sub_2155C53F4(uint64_t a1, char a2, void (*a3)(id, id))
{
  if (a2)
  {
    v8 = sub_2155DA61C();
    a3(0, v8);
  }

  else
  {
    v5 = type metadata accessor for BrandObjcShim();
    v6 = objc_allocWithZone(v5);
    *&v6[OBJC_IVAR___BSBrandObjcShim_brand] = a1;
    v9.receiver = v6;
    v9.super_class = v5;

    v7 = objc_msgSendSuper2(&v9, sel_init);
    a3(v7, 0);
  }
}

uint64_t sub_2155C5614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;

  a8(a1, a2, a3, a7, v15);
}

void sub_2155C56C8(uint64_t a1, uint64_t a2, char a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v5 = sub_2155DA61C();
    v6 = 0;
    v7 = v5;
  }

  else
  {
    v6 = sub_2155DA68C();
    v7 = v6;
    v5 = 0;
  }

  a4(v6, v5);
}

id BrandManagerObjcShim.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BrandManagerObjcShim.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BrandManagerObjcShim();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2155C5B68()
{
  sub_2155B3AE0(v0 + OBJC_IVAR____TtC16BusinessServices24FakeBrandLogoURLProvider_squareLogoURL);
  sub_2155B3AE0(v0 + OBJC_IVAR____TtC16BusinessServices24FakeBrandLogoURLProvider_wideLogoURL);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for FakeBrandLogoURLProvider(uint64_t a1)
{
  result = qword_27CA64F78;
  if (!qword_27CA64F78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2155C5C30(uint64_t a1)
{
  sub_2155B8C98(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2155C5CC0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16BusinessServices24FakeBrandLogoURLProvider_squareLogoURL;
  swift_beginAccess();
  return sub_2155B13FC(v3 + v4, a1);
}

void sub_2155C5D48(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, NSObject *a5, NSObject *a6)
{
  v11 = *(v6 + 16);
  v12 = *(v6 + 24);
  v13 = sub_2155CC020(a3, a4, v11, v12);
  if (v13)
  {
    v95 = v6;
    v101 = a6;
    v98 = a5;
    v100 = v13;
    v14 = sub_2155C9888(a1, a2);
    v16 = v15;
    v17 = [objc_allocWithZone(MEMORY[0x277CC36A0]) init];
    v96 = v14;
    v97 = v16;
    v18 = sub_2155DA7DC();
    [v17 setUri_];

    v19 = [objc_allocWithZone(MEMORY[0x277CC36B0]) init];
    v20 = sub_2155DA6CC();
    v99 = &v87;
    v21 = *(v20 - 8);
    MEMORY[0x28223BE20](v20, v22);
    v24 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2155DA6BC();
    v25 = sub_2155DA6AC();
    v27 = v26;
    (*(v21 + 8))(v24, v20);
    v28 = v100;
    v94 = v25;
    v99 = v27;
    v29 = sub_2155DA7DC();
    [v19 setUuid_];

    ObjectType = swift_getObjectType();
    v31 = (*(v12 + 40))(v28, v17, ObjectType, v12);
    v40 = v17;
    v89 = ObjectType;
    v41 = v97;
    v88 = v12;
    v90 = v11;
    v42 = v31;
    v93 = [v31 renderInformation];
    v43 = [v42 cacheType];
    if (qword_27CA64B00 != -1)
    {
      swift_once();
    }

    v91 = v19;
    v44 = sub_2155DA75C();
    __swift_project_value_buffer(v44, qword_27CA66C00);
    v45 = v41;

    v46 = sub_2155DA72C();
    v47 = sub_2155DA96C();

    v48 = os_log_type_enabled(v46, v47);
    v92 = v42;
    if (v48)
    {
      v49 = v40;
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v104[0] = v51;
      *v50 = 134218242;
      *(v50 + 4) = v43;
      *(v50 + 12) = 2080;
      *(v50 + 14) = sub_2155BC03C(v96, v45, v104);
      _os_log_impl(&dword_2155AF000, v46, v47, "brandModelWithURI: Chatbot Information cache state: %ld for %s", v50, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v51);
      v52 = v92;
      MEMORY[0x21606C4C0](v51, -1, -1);
      v53 = v50;
      v40 = v49;
      MEMORY[0x21606C4C0](v53, -1, -1);
    }

    else
    {
      v52 = v42;
    }

    if (v93)
    {
      if ((v43 + 1) < 2)
      {
        goto LABEL_21;
      }

      v54 = v43;
      if ((v43 - 1) > 1)
      {
LABEL_30:

LABEL_31:
        return;
      }

      v55 = v93;
      v56 = sub_2155DA72C();
      v57 = sub_2155DA96C();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_2155AF000, v56, v57, "brandModelWithURI: Using cached Chatbot Information", v58, 2u);
        v59 = v58;
        v54 = v43;
        MEMORY[0x21606C4C0](v59, -1, -1);
      }

      v43 = v54;
      sub_2155C67B8(v102, v103, v55, v96, v45, v54 == 2, 1);
      sub_2155BCCEC(v102, v104, &qword_27CA64F90, &qword_2155DD170);
      v105 = 0;
      (v98)(v104);

      sub_2155B1F44(v104, &qword_27CA64F88, &unk_2155DD160);
      sub_2155B1F44(v102, &qword_27CA64F90, &qword_2155DD170);
      v52 = v92;
    }

    if ((v43 + 1) <= 3 && v43 != 1)
    {
LABEL_21:
      v60 = v40;

      v61 = sub_2155DA72C();
      v62 = sub_2155DA96C();

      v87 = v61;
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v104[0] = v64;
        *v63 = 136315138;
        v65 = sub_2155BC03C(v96, v45, v104);

        *(v63 + 4) = v65;
        v66 = v87;
        _os_log_impl(&dword_2155AF000, v87, v62, "brandModelWithURI: Fetching Chatbot Information from remote source for %s", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v64);
        MEMORY[0x21606C4C0](v64, -1, -1);
        MEMORY[0x21606C4C0](v63, -1, -1);
      }

      else
      {
      }

      v69 = *(v95 + 72);
      MEMORY[0x28223BE20](v67, v68);
      v70 = v99;
      *(&v87 - 4) = v94;
      *(&v87 - 3) = v70;
      v71 = v101;
      *(&v87 - 2) = v98;
      *(&v87 - 1) = v71;
      os_unfair_lock_lock((v69 + 24));
      sub_2155C9AB0((v69 + 16));
      os_unfair_lock_unlock((v69 + 24));

      v72 = v100;
      v73 = v60;
      v74 = v60;
      v75 = v91;
      (*(v88 + 48))(v100, v74, v91, v89);

      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (qword_27CA64B00 != -1)
  {
    swift_once();
  }

  v32 = sub_2155DA75C();
  __swift_project_value_buffer(v32, qword_27CA66C00);
  v33 = sub_2155DA72C();
  v34 = sub_2155DA98C();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = a5;
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_2155AF000, v33, v34, "Did not find any valid CTXPCServiceSubscriptionContext object", v36, 2u);
    v37 = v36;
    a5 = v35;
    MEMORY[0x21606C4C0](v37, -1, -1);
  }

  sub_2155C32DC();
  v38 = swift_allocError();
  *v39 = 0;
  swift_willThrow();
  if (qword_280E1C288 != -1)
  {
    swift_once();
  }

  v76 = sub_2155DA75C();
  __swift_project_value_buffer(v76, qword_280E1C7F0);
  v77 = v38;
  v78 = sub_2155DA72C();
  v79 = sub_2155DA98C();

  if (os_log_type_enabled(v78, v79))
  {
    v80 = a5;
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    *v81 = 138412290;
    v83 = v38;
    v84 = _swift_stdlib_bridgeErrorToNSError();
    *(v81 + 4) = v84;
    *v82 = v84;
    _os_log_impl(&dword_2155AF000, v78, v79, "brandModelWithURI:resultHandler: error: %@", v81, 0xCu);
    sub_2155B1F44(v82, &qword_27CA64EF8, &unk_2155DCB80);
    MEMORY[0x21606C4C0](v82, -1, -1);
    v85 = v81;
    a5 = v80;
    MEMORY[0x21606C4C0](v85, -1, -1);
  }

  v104[0] = v38;
  v105 = 1;
  v86 = v38;
  (a5)(v104);

  sub_2155B1F44(v104, &qword_27CA64F88, &unk_2155DD160);
}

uint64_t sub_2155C67B8(uint64_t *a1, uint64_t *a2, id a3, unint64_t a4, unint64_t a5, int a6, int a7)
{
  LODWORD(v210) = a6;
  v11 = a3;
  v201 = a1;
  v202 = a2;
  v12 = 0x2781C1000uLL;
  v13 = [a3 botInfo];
  v14 = [v13 pcc];

  v15 = [v14 orgDetails];
  v16 = 0x2781C1000uLL;
  if (!v15)
  {
    goto LABEL_12;
  }

  v17 = [v15 orgName];

  if (!v17)
  {
    goto LABEL_12;
  }

  v18 = [v17 list];

  sub_2155CA05C(0, &qword_27CA64FC8, 0x277CC3690);
  v19 = sub_2155DA8FC();

  if (!(v19 >> 62))
  {
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  if (!sub_2155DAA9C())
  {
LABEL_11:

LABEL_12:

    v198 = a5;
    v199 = a4;
    goto LABEL_13;
  }

LABEL_5:
  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x21606BBB0](0, v19);
  }

  else
  {
    if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_128;
    }

    v20 = *(v19 + 32);
  }

  v21 = v20;

  v22 = [v21 displayName];

  if (!v22)
  {
    goto LABEL_12;
  }

  v23 = sub_2155DA80C();
  v198 = v24;
  v199 = v23;

LABEL_13:
  v25 = [v11 botInfo];
  v26 = [v25 pcc];

  v27 = [v26 orgDetails];
  v200 = a7;
  if (v27 && (v28 = [v27 orgDescription], v27, v28) && (v29 = objc_msgSend(v28, sel_orgDescription), v28, v29))
  {
    v30 = sub_2155DA80C();
    v196 = v31;
    v197 = v30;
  }

  else
  {
    v196 = 0;
    v197 = 0;
  }

  v32 = [v11 botInfo];
  v33 = [v32 pcc];

  v34 = [v33 orgDetails];
  if (v34 && (v35 = [v34 communicationAddress], v34, v35))
  {
    v36 = [v35 telInformation];

    v37 = [v36 telNumber];
    v38 = [v37 number];

    v39 = sub_2155DA80C();
    v194 = v40;
    v195 = v39;
  }

  else
  {
    v194 = 0;
    v195 = 0;
  }

  v41 = [v11 botInfo];
  v42 = [v41 pcc];

  v43 = [v42 orgDetails];
  v205 = a4;
  if (!v43 || (v44 = [v43 communicationAddress], v43, !v44))
  {
LABEL_38:
    v54 = 0;
    v56 = 0;
    goto LABEL_43;
  }

  v45 = [v44 uriList];

  v46 = [v45 list];
  sub_2155CA05C(0, &qword_27CA64FC0, 0x277CC3698);
  v47 = sub_2155DA8FC();

  if (!(v47 >> 62))
  {
    v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v48)
    {
      goto LABEL_26;
    }

LABEL_42:

    v54 = 0;
    v56 = 0;
    v16 = 0x2781C1000uLL;
    goto LABEL_43;
  }

LABEL_41:
  v48 = sub_2155DAA9C();
  if (!v48)
  {
    goto LABEL_42;
  }

LABEL_26:
  v49 = 0;
  while (1)
  {
    if ((v47 & 0xC000000000000001) != 0)
    {
      v50 = MEMORY[0x21606BBB0](v49, v47);
    }

    else
    {
      if (v49 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      v50 = *(v47 + 8 * v49 + 32);
    }

    v51 = v50;
    v12 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if ([v50 label] == 1)
    {
      break;
    }

    ++v49;
    v52 = v12 == v48;
    v12 = 0x2781C1000;
    if (v52)
    {
      goto LABEL_42;
    }
  }

  v53 = [v51 addressUri];

  v12 = 0x2781C1000;
  v16 = 0x2781C1000;
  if (!v53)
  {
    goto LABEL_38;
  }

  v54 = sub_2155DA80C();
  v56 = v55;

LABEL_43:
  v57 = [v11 *(v12 + 2264)];
  v58 = [v57 email];

  if (v58)
  {
    a4 = sub_2155DA80C();
    v7 = v59;
  }

  else
  {
    a4 = 0;
    v7 = 0;
  }

  v60 = [v11 *(v12 + 2264)];
  v61 = [v60 addresses];

  v193 = v54;
  v192 = v56;
  if (!v61)
  {
    goto LABEL_55;
  }

  v17 = [v61 *(v16 + 2352)];

  sub_2155CA05C(0, &qword_27CA64FB8, 0x277CC3680);
  v19 = sub_2155DA8FC();

  if (v19 >> 62)
  {
    if (sub_2155DAA9C())
    {
      goto LABEL_49;
    }

    goto LABEL_54;
  }

  if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_54:

LABEL_55:
    v189 = 0;
    v188 = 0;
    goto LABEL_56;
  }

LABEL_49:
  if ((v19 & 0xC000000000000001) != 0)
  {
LABEL_105:
    v62 = MEMORY[0x21606BBB0](0, v19);
  }

  else
  {
    if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_107;
    }

    v62 = *(v19 + 32);
  }

  v63 = v62;

  v64 = [v63 address];

  v189 = sub_2155DA80C();
  v188 = v65;

LABEL_56:
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  v17 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66 - 8, v67);
  v68 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v212 = &v173 - v68;
  v69 = [v11 *(v12 + 2264)];
  v70 = [v69 tcPageUrl];

  MEMORY[0x28223BE20](v71, v72);
  if (v70)
  {
    sub_2155DA64C();

    v73 = sub_2155DA67C();
    (*(*(v73 - 8) + 56))(&v173 - v68, 0, 1, v73);
  }

  else
  {
    v74 = sub_2155DA67C();
    (*(*(v74 - 8) + 56))(&v173 - v68, 1, 1, v74);
  }

  v75 = sub_2155C9F94(&v173 - v68, v212);
  v187 = &v173;
  MEMORY[0x28223BE20](v75, v76);
  v77 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v211 = &v173 - v77;
  v78 = [v11 *(v12 + 2264)];
  v79 = [v78 website];

  MEMORY[0x28223BE20](v80, v81);
  v82 = &v173 - v77;
  if (v79)
  {
    sub_2155DA64C();

    v83 = 0;
  }

  else
  {
    v83 = 1;
  }

  v84 = v210;
  v85 = sub_2155DA67C();
  v86 = *(v85 - 8);
  v209 = *(v86 + 56);
  v210 = v85;
  v208 = v86 + 56;
  (v209)(v82, v83, 1);
  sub_2155C9F94(v82, v211);
  v191 = a4;
  v190 = v7;
  if (v84)
  {
    a4 = 0;
  }

  else
  {
    v87 = [v11 verificationDetails];
    a4 = [v87 verified];
  }

  v88 = [v11 verificationDetails];
  v89 = [v88 verifiedBy];

  v185 = sub_2155DA80C();
  v184 = v90;

  MEMORY[0x28223BE20](v91, v92);
  v7 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = (&v173 - v7);
  v207 = a4;
  v204 = a5;
  v186 = &v173;
  v203 = (&v173 - v7);
  if (!a4 || (v94 = [v11 *(v12 + 2264)], v95 = objc_msgSend(v94, sel_pcc), v94, v96 = objc_msgSend(v95, sel_orgDetails), v95, !v96) || (v97 = objc_msgSend(v96, sel_mediaList), v96, !v97))
  {
    v104 = 1;
    goto LABEL_80;
  }

  v98 = [v97 entry];

  v99 = [v98 list];
  sub_2155CA05C(0, &qword_27CA64FB0, 0x277CC3688);
  v19 = sub_2155DA8FC();

  v180 = v11;
  if (!(v19 >> 62))
  {
    v100 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v100)
    {
      goto LABEL_70;
    }

LABEL_129:

    v104 = 1;
    v93 = v203;
    a5 = v204;
    v11 = v180;
    v12 = 0x2781C1000;
    goto LABEL_80;
  }

LABEL_128:
  v100 = sub_2155DAA9C();
  if (!v100)
  {
    goto LABEL_129;
  }

LABEL_70:
  v101 = 0;
  a5 = v19 & 0xC000000000000001;
  v11 = (v19 & 0xFFFFFFFFFFFFFF8);
  v12 = 0x2781C1000uLL;
  while (1)
  {
    if (a5)
    {
      v102 = MEMORY[0x21606BBB0](v101, v19);
    }

    else
    {
      if (v101 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_104;
      }

      v102 = *(v19 + 8 * v101 + 32);
    }

    a4 = v102;
    v103 = v101 + 1;
    if (__OFADD__(v101, 1))
    {
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    if (![v102 label])
    {
      break;
    }

    ++v101;
    if (v103 == v100)
    {
      goto LABEL_129;
    }
  }

  v121 = [a4 media];

  a5 = v204;
  v11 = v180;
  v12 = 0x2781C1000;
  if (v121)
  {
    v122 = [v121 mediaUrl];

    v123 = [v122 url];
    v93 = v203;
    sub_2155DA64C();

    v104 = 0;
  }

  else
  {
    v104 = 1;
    v93 = v203;
  }

LABEL_80:
  v105 = v209;
  v106 = (v209)(v93, v104, 1, v210);
  v183 = &v173;
  MEMORY[0x28223BE20](v106, v107);
  v206 = &v173 - v7;
  v105();
  v108 = [v11 *(v12 + 2264)];
  v109 = [v108 pcc];

  v110 = [v109 orgDetails];
  if (v110)
  {
    v111 = [v110 mediaList];

    if (v111)
    {
      v112 = [v111 entry];

      v113 = [v112 list];
      sub_2155CA05C(0, &qword_27CA64FB0, 0x277CC3688);
      v54 = sub_2155DA8FC();

      v180 = v11;
      v12 = a5;
      if (!(v54 >> 62))
      {
        v114 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v114)
        {
          goto LABEL_84;
        }

        goto LABEL_108;
      }

LABEL_107:
      v114 = sub_2155DAA9C();
      if (v114)
      {
LABEL_84:
        a4 = 0;
        v19 = v54 & 0xC000000000000001;
        a5 = v54 & 0xFFFFFFFFFFFFFF8;
        v11 = 0x2781C1000;
        while (1)
        {
          if (v19)
          {
            v115 = MEMORY[0x21606BBB0](a4, v54);
          }

          else
          {
            if (a4 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_102;
            }

            v115 = *(v54 + 8 * a4 + 32);
          }

          v7 = v115;
          v116 = a4 + 1;
          if (__OFADD__(a4, 1))
          {
            __break(1u);
LABEL_102:
            __break(1u);
            goto LABEL_103;
          }

          if (![v115 label])
          {
            break;
          }

          ++a4;
          if (v116 == v114)
          {
            goto LABEL_108;
          }
        }

        v117 = [v7 media];

        if (!v117)
        {
          goto LABEL_109;
        }

        v118 = [v117 fingerprint];

        a5 = v12;
        v11 = v180;
        if (v118)
        {
          v119 = [v118 data];

          v182 = sub_2155DA69C();
          v181 = v120;
        }

        else
        {
          v182 = 0;
          v181 = 0xF000000000000000;
        }

        goto LABEL_110;
      }

LABEL_108:

LABEL_109:
      v182 = 0;
      v181 = 0xF000000000000000;
      a5 = v12;
      v11 = v180;
LABEL_110:
      v12 = 0x2781C1000uLL;
      goto LABEL_111;
    }
  }

  v182 = 0;
  v181 = 0xF000000000000000;
LABEL_111:
  v124 = [v11 *(v12 + 2264)];
  v125 = [v124 pcc];

  v126 = [v125 orgDetails];
  v127 = v207;
  if (v126 && (v128 = [v126 categoryList], v126, v128))
  {
    v129 = [v128 categoryList];

    v180 = sub_2155DA8FC();
  }

  else
  {
    v180 = 0;
  }

  if (qword_280E1C288 != -1)
  {
    swift_once();
  }

  v130 = sub_2155DA75C();
  __swift_project_value_buffer(v130, qword_280E1C7F0);

  v131 = sub_2155DA72C();
  v132 = sub_2155DA96C();

  if (os_log_type_enabled(v131, v132))
  {
    v133 = swift_slowAlloc();
    v134 = swift_slowAlloc();
    v213 = v134;
    *v133 = 136315394;
    *(v133 + 4) = sub_2155BC03C(v205, a5, &v213);
    *(v133 + 12) = 2080;
    if (v127)
    {
      v135 = 0x6465696669726556;
    }

    else
    {
      v135 = 0x6966697265766E55;
    }

    if (v127)
    {
      v136 = 0xE800000000000000;
    }

    else
    {
      v136 = 0xEA00000000006465;
    }

    v137 = sub_2155BC03C(v135, v136, &v213);

    *(v133 + 14) = v137;
    _os_log_impl(&dword_2155AF000, v131, v132, "Brand with URI %s is %s", v133, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21606C4C0](v134, -1, -1);
    MEMORY[0x21606C4C0](v133, -1, -1);
  }

  v179 = &v173;
  MEMORY[0x28223BE20](v138, v139);
  v140 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v176 = &v173 - v140;
  v141 = sub_2155BCCEC(v211, &v173 - v140, &qword_27CA64B20, &qword_2155DBDC0);
  v178 = &v173;
  MEMORY[0x28223BE20](v141, v142);
  v175 = &v173 - v140;
  v143 = sub_2155BCCEC(v212, &v173 - v140, &qword_27CA64B20, &qword_2155DBDC0);
  v177 = &v173;
  MEMORY[0x28223BE20](v143, v144);
  v174 = &v173 - v140;
  sub_2155BCCEC(v206, &v173 - v140, &qword_27CA64B20, &qword_2155DBDC0);
  v145 = type metadata accessor for RCSChatBotBrand(0);
  v146 = v201;
  v201[3] = v145;
  v146[4] = sub_2155CA004();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v146);
  v201 = v145[13];
  v148 = v209;
  v149 = v210;
  (v209)(v201 + boxed_opaque_existential_1, 1, 1);
  v150 = (boxed_opaque_existential_1 + v145[14]);
  v151 = (boxed_opaque_existential_1 + v145[15]);
  v152 = v145[16];
  v173 = v145[17];
  v153 = (boxed_opaque_existential_1 + v152);
  v154 = v149;
  (v148)(boxed_opaque_existential_1 + v173, 1, 1, v149);
  v155 = v145[19];
  v156 = (boxed_opaque_existential_1 + v145[18]);
  (v148)(boxed_opaque_existential_1 + v155, 1, 1, v154);
  v157 = boxed_opaque_existential_1 + v145[20];
  *v157 = xmmword_2155DBDB0;
  v158 = v204;
  *boxed_opaque_existential_1 = v205;
  boxed_opaque_existential_1[1] = v158;
  v159 = v198;
  boxed_opaque_existential_1[2] = v199;
  boxed_opaque_existential_1[3] = v159;
  v160 = v196;
  boxed_opaque_existential_1[12] = v197;
  boxed_opaque_existential_1[13] = v160;
  v161 = v194;
  v162 = v195;
  boxed_opaque_existential_1[4] = v180;
  boxed_opaque_existential_1[5] = v162;
  boxed_opaque_existential_1[6] = v161;
  *(boxed_opaque_existential_1 + 7) = 0u;
  *(boxed_opaque_existential_1 + 9) = 0u;
  *(boxed_opaque_existential_1 + 88) = v207;
  v163 = v184;
  boxed_opaque_existential_1[14] = v185;
  boxed_opaque_existential_1[15] = v163;

  sub_2155B4C00(v176, v201 + boxed_opaque_existential_1);
  v164 = v192;
  *v150 = v193;
  v150[1] = v164;
  v165 = v190;
  *v151 = v191;
  v151[1] = v165;
  v166 = v188;
  *v153 = v189;
  v153[1] = v166;
  sub_2155B4C00(v175, boxed_opaque_existential_1 + v173);
  *v156 = 0;
  v156[1] = 0;
  sub_2155B4C00(v174, boxed_opaque_existential_1 + v155);
  sub_2155B4528(*v157, *(v157 + 1));
  v167 = v181;
  *v157 = v182;
  *(v157 + 1) = v167;
  *(boxed_opaque_existential_1 + v145[21]) = v200 & 1;
  v168 = type metadata accessor for ChatBotLogoURLProvider(0);
  v169 = v202;
  v202[3] = v168;
  v169[4] = &off_28277F868;
  v170 = __swift_allocate_boxed_opaque_existential_1(v169);
  v171 = v203;
  sub_2155BCCEC(v203, v170, &qword_27CA64B20, &qword_2155DBDC0);
  (v209)(v170 + *(v168 + 20), 1, 1, v210);
  sub_2155B1F44(v206, &qword_27CA64B20, &qword_2155DBDC0);
  sub_2155B1F44(v171, &qword_27CA64B20, &qword_2155DBDC0);
  sub_2155B1F44(v211, &qword_27CA64B20, &qword_2155DBDC0);
  return sub_2155B1F44(v212, &qword_27CA64B20, &qword_2155DBDC0);
}

uint64_t sub_2155C7D40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  if (*(*a1 + 16) && (v11 = sub_2155D0A68(a2, a3), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
    v14 = swift_allocObject();
    *(v14 + 16) = a4;
    *(v14 + 24) = a5;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_2155CB860(0, v13[2] + 1, 1, v13);
    }

    v16 = v13[2];
    v15 = v13[3];
    if (v16 >= v15 >> 1)
    {
      v13 = sub_2155CB860((v15 > 1), v16 + 1, 1, v13);
    }

    v13[2] = v16 + 1;
    v17 = &v13[2 * v16];
    v17[4] = sub_2155CA134;
    v17[5] = v14;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64FD0, &qword_2155DD200);
    v13 = swift_allocObject();
    *(v13 + 1) = xmmword_2155DC7F0;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;
    v13[4] = sub_2155CA0A4;
    v13[5] = v18;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *a1;
  sub_2155C926C(v13, a2, a3, isUniquelyReferenced_nonNull_native);

  *a1 = v21;
  return result;
}

void *RCSChatBotBrandDataSource.deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return v0;
}

uint64_t RCSChatBotBrandDataSource.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t sub_2155C7FEC(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6, unint64_t a7, void *a8)
{
  v8 = *result;
  if (!*(*result + 16))
  {
    return result;
  }

  result = sub_2155D0A68(a2, a3);
  if ((v13 & 1) == 0)
  {
    return result;
  }

  v14 = *(*(v8 + 56) + 8 * result);
  v44 = v14;
  if (!a4)
  {

LABEL_14:
    v27 = *(v14 + 16);
    if (v27)
    {
      v28 = v14 + 40;
      v29 = &type metadata for RCSChatBotBrandDataSourceError;
      v30 = 0x2781C1000uLL;
      do
      {
        v32 = *(v28 - 8);

        v33 = [a8 *(v30 + 2248)];
        if (v33)
        {
          v34 = v33;
          v50 = v32;
          if (qword_280E1C288 != -1)
          {
            swift_once();
          }

          v35 = sub_2155DA75C();
          __swift_project_value_buffer(v35, qword_280E1C7F0);
          v36 = v34;
          v31 = sub_2155DA72C();
          v37 = sub_2155DA98C();
          if (os_log_type_enabled(v31, v37))
          {
            v38 = a8;
            v39 = v29;
            v40 = swift_slowAlloc();
            *v40 = 134217984;
            *(v40 + 4) = [v36 value];

            _os_log_impl(&dword_2155AF000, v31, v37, "Failed to fetch chatbot rendering information. CTLazuliErrorType: %ld", v40, 0xCu);
            v41 = v40;
            v29 = v39;
            a8 = v38;
            v30 = 0x2781C1000;
            MEMORY[0x21606C4C0](v41, -1, -1);
          }

          else
          {

            v31 = v36;
          }

          v32 = v50;
        }

        sub_2155C9F40();
        v47[0] = swift_allocError();
        v49 = 1;
        (v32)(v47);

        sub_2155B1F44(v47, &qword_27CA64F88, &unk_2155DD160);
        v28 += 16;
        --v27;
      }

      while (v27);
    }

    else
    {
    }

LABEL_29:
    sub_2155C8668(a2, a3);
  }

  v15 = [a4 renderInformation];
  if (!v15)
  {
    goto LABEL_14;
  }

  v16 = v15;
  result = sub_2155C67B8(v46, v45, v15, a6, a7, [a4 cacheType] == 2, 0);
  v17 = *(v14 + 16);
  if (!v17)
  {

LABEL_28:
    __swift_destroy_boxed_opaque_existential_1(v45);
    __swift_destroy_boxed_opaque_existential_1(v46);
    goto LABEL_29;
  }

  v50 = v16;
  v18 = 0;
  v19 = v14 + 40;
  while (v18 < *(v14 + 16))
  {
    v20 = *(v19 - 8);
    v21 = qword_280E1C288;

    if (v21 != -1)
    {
      swift_once();
    }

    v22 = sub_2155DA75C();
    __swift_project_value_buffer(v22, qword_280E1C7F0);
    v23 = sub_2155DA72C();
    v24 = sub_2155DA96C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2155AF000, v23, v24, "Successfully returning chatbot rendering information", v25, 2u);
      v26 = v25;
      v14 = v44;
      MEMORY[0x21606C4C0](v26, -1, -1);
    }

    ++v18;

    sub_2155B0E68(v46, v47);
    sub_2155B0E68(v45, &v48);
    v49 = 0;
    v20(v47);

    result = sub_2155B1F44(v47, &qword_27CA64F88, &unk_2155DD160);
    v19 += 16;
    if (v17 == v18)
    {

      goto LABEL_28;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2155C84F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_2155D0A68(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2155C9498();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_2155DA70C();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_2155C8D50(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_2155DA70C();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_2155C8668(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_2155D0A68(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_2155C9718();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_2155C8F3C(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_2155C8700(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64E28, &qword_2155DC950);
  v41 = v4;
  result = sub_2155DAABC();
  v7 = result;
  if (*(v5 + 16))
  {
    v39 = v2;
    v40 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v44 = (v12 - 1) & v12;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = sub_2155DA70C();
      v43 = &v39;
      v22 = *(v21 - 8);
      MEMORY[0x28223BE20](v21, v23);
      v25 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      v26 = *(v5 + 56);
      v27 = (*(v5 + 48) + 16 * v20);
      v28 = v27[1];
      v45 = *v27;
      v42 = *(v29 + 72);
      v30 = v26 + v42 * v20;
      if (v41)
      {
        (*(v22 + 32))(&v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v21);
      }

      else
      {
        (*(v22 + 16))(&v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v21);
      }

      sub_2155DAC3C();
      sub_2155DA87C();
      result = sub_2155DAC5C();
      v31 = -1 << *(v7 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v45;
      v16[1] = v28;
      result = (*(v22 + 32))(*(v7 + 56) + v42 * v15, v25, v21);
      ++*(v7 + 16);
      v12 = v44;
      v5 = v40;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v44 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v9, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_2155C8AA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64FA0, &unk_2155DD1F0);
  v34 = v4;
  result = sub_2155DAABC();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_2155DAC3C();
      sub_2155DA87C();
      result = sub_2155DAC5C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_2155C8D50(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2155DAA3C() + 1) & ~v5;
    while (1)
    {
      sub_2155DAC3C();

      sub_2155DA87C();
      v9 = sub_2155DAC5C();

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
      v15 = *(*(sub_2155DA70C() - 8) + 72);
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

uint64_t sub_2155C8F3C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2155DAA3C() + 1) & ~v5;
    do
    {
      sub_2155DAC3C();

      sub_2155DA87C();
      v9 = sub_2155DAC5C();

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

uint64_t sub_2155C90EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_2155D0A68(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_2155C9498();
      goto LABEL_7;
    }

    sub_2155C8700(v15, a4 & 1);
    v26 = sub_2155D0A68(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_2155DABCC();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_2155DA70C();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_2155C93E8(v12, a2, a3, a1, v18);
}

uint64_t sub_2155C926C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2155D0A68(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2155C8AA8(v16, a4 & 1);
      v11 = sub_2155D0A68(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_2155DABCC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_2155C9718();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_2155C93E8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_2155DA70C();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void *sub_2155C9498()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64E28, &qword_2155DC950);
  v2 = *v0;
  v3 = sub_2155DAAAC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v34 = v1;
    result = (v3 + 64);
    v6 = v2 + 64;
    v7 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v7)
    {
      result = memmove(result, (v2 + 64), 8 * v7);
    }

    v9 = 0;
    v10 = *(v2 + 16);
    v35 = v2;
    v36 = v4;
    *(v4 + 16) = v10;
    v11 = 1 << *(v2 + 32);
    v12 = *(v2 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v9 << 6);
        v20 = v35;
        v21 = 16 * v19;
        v22 = (*(v35 + 48) + 16 * v19);
        v23 = *v22;
        v37 = v22[1];
        v38 = v23;
        v24 = sub_2155DA70C();
        v39 = &v34;
        v25 = *(v24 - 8);
        MEMORY[0x28223BE20](v24, v26);
        v28 = &v34 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
        v30 = *(v29 + 72) * v19;
        (*(v25 + 16))(v28, *(v20 + 56) + v30, v24);
        v31 = v36;
        v32 = (*(v36 + 48) + v21);
        v33 = v37;
        *v32 = v38;
        v32[1] = v33;
        (*(v25 + 32))(*(v31 + 56) + v30, v28, v24);
      }

      while (v14);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v15)
      {

        v1 = v34;
        v4 = v36;
        goto LABEL_21;
      }

      v18 = *(v6 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}