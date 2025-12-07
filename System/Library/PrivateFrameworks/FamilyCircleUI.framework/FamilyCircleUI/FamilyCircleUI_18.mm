uint64_t sub_21BD638CC(uint64_t a1, char a2)
{
  *(v3 + 341) = a2;
  *(v3 + 248) = a1;
  *(v3 + 256) = v2;
  v4 = sub_21BE26A4C();
  *(v3 + 264) = v4;
  *(v3 + 272) = *(v4 - 8);
  *(v3 + 280) = swift_task_alloc();
  sub_21BE28D7C();
  *(v3 + 288) = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  *(v3 + 296) = v6;
  *(v3 + 304) = v5;

  return MEMORY[0x2822009F8](sub_21BD639C4, v6, v5);
}

uint64_t sub_21BD639C4()
{
  v1 = [*(*(v0 + 256) + OBJC_IVAR____TtC14FamilyCircleUI24ChildRepairFlowViewModel_childMember) dsid];
  *(v0 + 312) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 341);
    v4 = *(v0 + 248);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7EF8, &unk_21BE40470);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21BE32770;
    *(inited + 32) = v4;
    *(inited + 64) = MEMORY[0x277D839B0];
    *(inited + 40) = v3;
    v6 = v2;
    v7 = v4;
    sub_21BBB6848(inited);
    swift_setDeallocating();
    sub_21BC545C8(inited + 32);
    v8 = objc_allocWithZone(MEMORY[0x277D08350]);
    type metadata accessor for FAUpdateMemberFlagKey(0);
    sub_21BC54630();
    v9 = sub_21BE288EC();

    v10 = [v8 initWithFamilyMemberDSID:v6 flags:v9];
    *(v0 + 320) = v10;

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 336) = 1;

    sub_21BE26CBC();
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 337;
    *(v0 + 24) = sub_21BD63C9C;
    v11 = swift_continuation_init();
    *(v0 + 208) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7F00, &qword_21BE40480);
    *(v0 + 152) = MEMORY[0x277D85DD0];
    *(v0 + 160) = 1107296256;
    *(v0 + 168) = sub_21BD63750;
    *(v0 + 176) = &block_descriptor_45;
    *(v0 + 184) = v11;
    [v10 startRequestWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_21BD63C9C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 328) = v2;
  v3 = *(v1 + 304);
  v4 = *(v1 + 296);
  if (v2)
  {
    v5 = sub_21BD63E98;
  }

  else
  {
    v5 = sub_21BD63DCC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21BD63DCC()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 340) = 0;

  sub_21BE26CBC();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21BD63E98()
{
  v21 = v0;
  v1 = *(v0 + 328);

  swift_willThrow();
  sub_21BE2614C();
  v2 = v1;
  v3 = sub_21BE26A2C();
  v4 = sub_21BE28FDC();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 272);
    v5 = *(v0 + 280);
    v7 = *(v0 + 264);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_21BE29A5C();
    v12 = sub_21BB3D81C(v10, v11, &v20);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_21BB35000, v3, v4, "Update member flag call failed with error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x21CF05C50](v9, -1, -1);
    MEMORY[0x21CF05C50](v8, -1, -1);

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v14 = *(v0 + 272);
    v13 = *(v0 + 280);
    v15 = *(v0 + 264);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 320);
  v17 = *(v0 + 312);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 338) = 0;

  sub_21BE26CBC();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 339) = 1;

  sub_21BE26CBC();
  swift_willThrow();

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_21BD6410C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  if (v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21BE26CBC();
}

uint64_t sub_21BD6429C()
{
  v1 = OBJC_IVAR____TtC14FamilyCircleUI24ChildRepairFlowViewModel__currentScreen;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB938, &unk_21BE47D90);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14FamilyCircleUI24ChildRepairFlowViewModel__showGenericAlert;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C78, &unk_21BE397A0);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC14FamilyCircleUI24ChildRepairFlowViewModel__isLoading, v4);
  v5(v0 + OBJC_IVAR____TtC14FamilyCircleUI24ChildRepairFlowViewModel__dismissSheet, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ChildRepairFlowViewModel(uint64_t a1)
{
  result = qword_27CDBB910;
  if (!qword_27CDBB910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BD64440(uint64_t a1)
{
  sub_21BC46D8C(319, &qword_27CDBB920, &type metadata for ChildRepairFlowViewModel.RepairScreen);
  if (v1 <= 0x3F)
  {
    sub_21BC46D8C(319, &qword_280BD6A70, MEMORY[0x277D839B0]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_21BD64568()
{
  result = qword_27CDBB928;
  if (!qword_27CDBB928)
  {
    result = swift_getWitnessTable(a1F, &type metadata for ChildRepairFlowViewModel.RepairScreen, v0, v1);
    atomic_store(result, &qword_27CDBB928);
  }

  return result;
}

uint64_t sub_21BD645BC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ChildRepairFlowViewModel(0);
  result = sub_21BE26C0C();
  *a2 = result;
  return result;
}

unint64_t sub_21BD64600()
{
  result = qword_27CDBB930;
  if (!qword_27CDBB930)
  {
    result = swift_getWitnessTable(byte_21BE47C00, &type metadata for ChildRepairFlowViewModel.FlowOrigin, v0, v1);
    atomic_store(result, &qword_27CDBB930);
  }

  return result;
}

void sub_21BD64654(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v3;
}

uint64_t sub_21BD646D4(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21BE26CBC();
}

uint64_t get_enum_tag_for_layout_string_14FamilyCircleUI18FAInformativeLabelV6ActionVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_21BD6477C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_21BD647C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_21BD64840@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 3);
  if (v3)
  {
    v5 = *(v1 + 4);
    v4 = *(v1 + 5);
    v6 = *(v1 + 2);
    v25 = *v1;
    v22 = v25;
    if (v1[3])
    {
      v7 = 10;
    }

    else
    {
      v7 = 32;
    }

    sub_21BBC8120(&v25, &v17);
    MEMORY[0x21CF03CA0](v7, 0xE100000000000000);

    MEMORY[0x21CF03CA0](91, 0xE100000000000000);
    MEMORY[0x21CF03CA0](v6, v3);
    MEMORY[0x21CF03CA0](10333, 0xE200000000000000);
    MEMORY[0x21CF03CA0](v5, v4);
    MEMORY[0x21CF03CA0](41, 0xE100000000000000);
    sub_21BE2767C();
    v17 = sub_21BE27DAC();
    v18 = v8;
    v19 = v9 & 1;
    v20 = v10;
    v21 = 0;
  }

  else
  {

    sub_21BE2767C();
    v17 = sub_21BE27DAC();
    v18 = v12;
    v19 = v11 & 1;
    v20 = v13;
    v21 = 1;
  }

  sub_21BE2784C();
  result = *&v22;
  v15 = v23;
  v16 = v24;
  *a1 = v22;
  *(a1 + 16) = v15;
  *(a1 + 32) = v16;
  return result;
}

id FAImageMarqueeViewWrapperImpl.__allocating_init(familyCircle:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl____lazy_storage___viewController] = 0;
  *&v3[OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl_familyCircle] = a1;
  v4 = a1;
  v5 = [v4 members];
  sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);
  v6 = sub_21BE28C3C();

  *&v3[OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl_membersToRender] = v6;
  v9.receiver = v3;
  v9.super_class = v1;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

id FAImageMarqueeViewWrapperImpl.init(familyCircle:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl____lazy_storage___viewController] = 0;
  *&v1[OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl_familyCircle] = a1;
  v2 = a1;
  v3 = [v2 members];
  sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);
  v4 = sub_21BE28C3C();

  *&v1[OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl_membersToRender] = v4;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for FAImageMarqueeViewWrapperImpl();
  v5 = objc_msgSendSuper2(&v7, sel_init);

  return v5;
}

id FAImageMarqueeViewWrapperImpl.__allocating_init(membersToRender:familyCircle:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl____lazy_storage___viewController] = 0;
  *&v5[OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl_membersToRender] = a1;
  *&v5[OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl_familyCircle] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id FAImageMarqueeViewWrapperImpl.init(membersToRender:familyCircle:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl____lazy_storage___viewController] = 0;
  *&v2[OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl_membersToRender] = a1;
  *&v2[OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl_familyCircle] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FAImageMarqueeViewWrapperImpl();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_21BD64E2C()
{
  v1 = OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl____lazy_storage___viewController;
  v2 = *(v0 + OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl____lazy_storage___viewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl____lazy_storage___viewController);
  }

  else
  {
    v4 = sub_21BD64ED8(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_21BD64ED8(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl_familyCircle);
  v2 = type metadata accessor for FAImageMarqueeViewModel();
  v3 = swift_allocObject();

  v8[0] = sub_21BC2AC78(v4);
  sub_21BC29DF8(v8);
  *(v3 + 16) = v8[0];
  v8[3] = v2;
  v8[4] = &off_282D8B0F8;
  v8[0] = v3;
  [objc_allocWithZone(FAProfilePictureStore) initWithFamilyCircle_];
  sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
  sub_21BC2ACA4();
  v8[5] = sub_21BE270CC();
  v8[6] = v5;
  v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB958, &unk_21BE47EE0));
  return sub_21BE2774C();
}

id FAImageMarqueeViewWrapperImpl.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FAImageMarqueeViewWrapperImpl.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FAImageMarqueeViewWrapperImpl();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_21BD651A8@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for ChecklistStateVars(0);
  sub_21BD67F14(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars, protocol conformance descriptor for ChecklistStateVars);
  *a1 = sub_21BE26E9C();
  *(a1 + 8) = v2 & 1;
  v3 = type metadata accessor for SharedGroceryListFlowView(0);
  v4 = *(v3 + 20);
  *(a1 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for SharedGroceryListItemModel(0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 18) = 0;
  *(v5 + 24) = [objc_allocWithZone(MEMORY[0x277D44850]) init];
  if (qword_280BD7CC0 != -1)
  {
    swift_once();
  }

  v6 = *(qword_280BD7CD0 + OBJC_IVAR____TtC14FamilyCircleUI25FamilySettingsApplication_aidaAccountManager);
  *(v5 + 32) = v6;
  v7 = v6;
  sub_21BE25F4C();
  v8 = (a1 + *(v3 + 24));
  sub_21BE283EC();
  *v8 = v11;
  v8[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB960, &qword_21BE47F28);
  sub_21BE283FC();
  if (*(v5 + 16) == 1)
  {
    *(v5 + 16) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BD67F14(&qword_27CDBAA00, type metadata accessor for SharedGroceryListItemModel, a1nF);
    sub_21BE25F0C();
  }

  return result;
}

void sub_21BD65478(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BD67F14(&qword_27CDBAA00, type metadata accessor for SharedGroceryListItemModel, a1nF);
  sub_21BE25F1C();

  *a2 = *(v3 + 16);
}

uint64_t type metadata accessor for SharedGroceryListFlowView(uint64_t a1)
{
  result = qword_27CDBB968;
  if (!qword_27CDBB968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BD655BC(uint64_t a1)
{
  sub_21BD656E8(319, &qword_27CDB56D8, type metadata accessor for ChecklistStateVars, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_21BD656E8(319, &qword_280BD6A40, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_21BD656E8(319, &qword_27CDBB978, type metadata accessor for SharedGroceryListItemModel, MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21BD656E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_21BD65768@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21BE2754C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SharedGroceryListFlowView(0);
  sub_21BBA3854(v1 + *(v10 + 20), v9, &unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21BE26F5C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_21BE28FEC();
    v13 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double sub_21BD65970@<D0>(uint64_t a1@<X8>)
{
  v94 = a1;
  v2 = type metadata accessor for SharedGroceryListFlowView(0);
  v3 = v2 - 8;
  v76 = *(v2 - 8);
  v4 = v76[8];
  MEMORY[0x28223BE20](v2);
  v77 = v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB56E0, &unk_21BE326D0);
  MEMORY[0x28223BE20](v93);
  v6 = (v68 - v5);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB980, &qword_21BE47FE8);
  MEMORY[0x28223BE20](v88);
  v92 = v68 - v7;
  v87 = type metadata accessor for SharedFamilyGroceryIntroView(0);
  MEMORY[0x28223BE20](v87);
  v85 = (v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB988, &qword_21BE47FF0);
  v79 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v86 = v68 - v9;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB990, &qword_21BE47FF8);
  v81 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v80 = v68 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB998, &qword_21BE48000);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v78 = v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v68 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB9A0, &qword_21BE48008);
  MEMORY[0x28223BE20](v17 - 8);
  v89 = v68 - v18;
  v19 = swift_allocBox();
  v95 = v1;
  v96 = v19;
  v21 = v20;
  v22 = (v1 + *(v3 + 32));
  v24 = *v22;
  v23 = v22[1];
  v97 = v24;
  v98 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB960, &qword_21BE47F28);
  sub_21BE283FC();
  type metadata accessor for SharedGroceryListItemModel(0);
  sub_21BD67F14(&qword_27CDBAA00, type metadata accessor for SharedGroceryListItemModel, a1nF);
  sub_21BE2864C();
  v25 = *(v12 + 16);
  v84 = v21;
  v82 = v25;
  v25(v16, v21, v11);
  sub_21BE2862C();
  v83 = *(v12 + 8);
  v83(v16, v11);
  v26 = v97;
  swift_getKeyPath();
  v97 = v26;
  sub_21BE25F1C();

  v27 = *(v26 + 16);

  if (v27)
  {
    v28 = v77;
    sub_21BD67F5C(v95, v77);
    v29 = (*(v76 + 80) + 16) & ~*(v76 + 80);
    v30 = swift_allocObject();
    sub_21BD67FC0(v28, v30 + v29);
    v31 = (v6 + *(v93 + 36));
    sub_21BE2701C();
    v32 = v96;

    sub_21BE28D8C();
    *v31 = &unk_21BE48078;
    v31[1] = v32;
    *v6 = sub_21BD686A0;
    v6[1] = v30;
    sub_21BBA3854(v6, v92, &qword_27CDB56E0, &unk_21BE326D0);
    swift_storeEnumTagMultiPayload();
    v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDB55A0, &unk_21BE32460);
    v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8130, &qword_21BE3ED60);
    v35 = sub_21BD67F14(&qword_27CDBB9A8, type metadata accessor for SharedFamilyGroceryIntroView, byte_21BE432F0);
    v36 = sub_21BB41FA4();
    v37 = sub_21BB3B038(&qword_27CDB8138, &qword_27CDB8130, &qword_21BE3ED60, MEMORY[0x277CE14C0]);
    v38 = MEMORY[0x277D837D0];
    v97 = v87;
    v98 = MEMORY[0x277D837D0];
    v99 = v34;
    v100 = MEMORY[0x277CE0BD8];
    v101 = v35;
    v102 = v36;
    v103 = v37;
    v104 = MEMORY[0x277CE0BC8];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v40 = sub_21BB3B038(&qword_27CDB5598, &unk_27CDB55A0, &unk_21BE32460, MEMORY[0x277CDF028]);
    v97 = v90;
    v98 = v38;
    v99 = v33;
    v100 = OpaqueTypeConformance2;
    v101 = v36;
    v102 = v40;
    swift_getOpaqueTypeConformance2();
    sub_21BBA6BC8();
    v41 = v89;
    sub_21BE2784C();
    sub_21BB3A4CC(v6, &qword_27CDB56E0, &unk_21BE326D0);
  }

  else
  {
    sub_21BD15C7C(v85);
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v77 = ObjCClassFromMetadata;
    v76 = objc_opt_self();
    v43 = [v76 bundleForClass_];
    v44 = sub_21BE2599C();
    v46 = v45;
    v71 = v45;

    v105 = v44;
    v106 = v46;
    v47 = v78;
    v82(v78, v84, v11);
    sub_21BE2863C();
    v48 = v83;
    v83(v47, v11);
    swift_getKeyPath();
    sub_21BE2865C();

    v49 = v48(v16, v11);
    v70 = v68;
    v68[1] = v97;
    v68[0] = v98;
    v69 = v99;
    MEMORY[0x28223BE20](v49);
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8130, &qword_21BE3ED60);
    v72 = sub_21BD67F14(&qword_27CDBB9A8, type metadata accessor for SharedFamilyGroceryIntroView, byte_21BE432F0);
    v74 = sub_21BB41FA4();
    v75 = sub_21BB3B038(&qword_27CDB8138, &qword_27CDB8130, &qword_21BE3ED60, MEMORY[0x277CE14C0]);
    v50 = v87;
    v51 = v85;
    sub_21BE280EC();

    sub_21BD67EB0(v51);
    v52 = [v76 bundleForClass_];
    v53 = sub_21BE2599C();
    v55 = v54;
    v85 = v54;

    v108 = v53;
    v109 = v55;
    v82(v47, v84, v11);
    sub_21BE2863C();
    v56 = v83;
    v83(v47, v11);
    swift_getKeyPath();
    sub_21BE2865C();

    v57 = v56(v16, v11);
    v84 = v68;
    LODWORD(v83) = v107;
    MEMORY[0x28223BE20](v57);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55A0, &unk_21BE32460);
    v97 = v50;
    v98 = MEMORY[0x277D837D0];
    v99 = v73;
    v100 = MEMORY[0x277CE0BD8];
    v101 = v72;
    v59 = v74;
    v102 = v74;
    v103 = v75;
    v104 = MEMORY[0x277CE0BC8];
    v60 = swift_getOpaqueTypeConformance2();
    v67 = sub_21BB3B038(&qword_27CDB5598, &unk_27CDB55A0, &unk_21BE32460, MEMORY[0x277CDF028]);
    v61 = v80;
    v62 = v90;
    v63 = v86;
    sub_21BE280FC();

    (*(v79 + 8))(v63, v62);
    v64 = v81;
    v65 = v91;
    (*(v81 + 16))(v92, v61, v91);
    swift_storeEnumTagMultiPayload();
    v97 = v62;
    v98 = MEMORY[0x277D837D0];
    v99 = v58;
    v100 = v60;
    v101 = v59;
    v102 = v67;
    swift_getOpaqueTypeConformance2();
    sub_21BBA6BC8();
    v41 = v89;
    sub_21BE2784C();
    (*(v64 + 8))(v61, v65);
  }

  sub_21BB55AA4(v41, v94);

  return result;
}

uint64_t sub_21BD667A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v55 = a2;
  v57 = a1;
  v64 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8158, &unk_21BE3AE50);
  MEMORY[0x28223BE20](v4 - 8);
  v63 = &v50 - v5;
  v6 = sub_21BE271FC();
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SharedGroceryListFlowView(0);
  v53 = *(v9 - 8);
  v10 = *(v53 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v54 = v10;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55A0, &unk_21BE32460);
  v56 = *(v65 - 8);
  v11 = MEMORY[0x28223BE20](v65);
  v62 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v50 - v13;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8160, &unk_21BE3AE60);
  v66 = *(v61 - 8);
  v15 = MEMORY[0x28223BE20](v61);
  v60 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v52 = &v50 - v17;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v51 = ObjCClassFromMetadata;
  v19 = objc_opt_self();
  v20 = [v19 bundleForClass_];
  v21 = sub_21BE2599C();
  v23 = v22;

  v67 = v21;
  v68 = v23;
  v24 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BD67F5C(a2, v24);
  v25 = (*(v53 + 80) + 24) & ~*(v53 + 80);
  v26 = swift_allocObject();
  v27 = v57;
  *(v26 + 16) = v57;
  sub_21BD67FC0(v24, v26 + v25);
  v53 = sub_21BB41FA4();

  sub_21BE2845C();
  sub_21BE271EC();
  sub_21BB3B038(&qword_27CDB5598, &unk_27CDB55A0, &unk_21BE32460, MEMORY[0x277CDF028]);
  v28 = v65;
  sub_21BE27FBC();
  (*(v58 + 8))(v8, v59);
  v29 = v56;
  v58 = *(v56 + 8);
  v59 = v56 + 8;
  (v58)(v14, v28);
  v30 = [v19 bundleForClass_];
  v31 = sub_21BE2599C();
  v33 = v32;

  v67 = v31;
  v68 = v33;
  v34 = v63;
  sub_21BE26DEC();
  v35 = sub_21BE26DFC();
  (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
  sub_21BD67F5C(v55, v24);
  v36 = swift_allocObject();
  *(v36 + 16) = v27;
  sub_21BD67FC0(v24, v36 + v25);

  v50 = v14;
  sub_21BE2844C();
  v37 = *(v66 + 16);
  v38 = v60;
  v39 = v61;
  v40 = v52;
  v37(v60, v52, v61);
  v41 = *(v29 + 16);
  v42 = v62;
  v43 = v14;
  v44 = v65;
  v41(v62, v43, v65);
  v45 = v64;
  v37(v64, v38, v39);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8168, &qword_21BE48080);
  v41(&v45[*(v46 + 48)], v42, v44);
  v47 = v58;
  (v58)(v50, v44);
  v48 = *(v66 + 8);
  v48(v40, v39);
  v47(v42, v44);
  return (v48)(v38, v39);
}

uint64_t sub_21BD66E58(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v32[1] = *MEMORY[0x277D85DE8];
  v2 = sub_21BE26F5C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB998, &qword_21BE48000);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v29 - v11;
  v13 = objc_opt_self();
  v32[0] = 0;
  v14 = [v13 urlDestinationTo:11 error:v32];
  v15 = v32[0];
  if (v14)
  {
    v16 = v14;
    sub_21BE25B5C();
    v17 = v15;

    v18 = 0;
  }

  else
  {
    v19 = v32[0];
    v20 = sub_21BE25A8C();
    v30 = v5;
    v21 = v2;
    v22 = v20;

    swift_willThrow();
    v23 = v22;
    v2 = v21;
    v5 = v30;

    v18 = 1;
  }

  v24 = sub_21BE25B9C();
  (*(*(v24 - 8) + 56))(v12, v18, 1, v24);
  sub_21BDEF00C(v12);
  v25 = swift_projectBox();
  (*(v7 + 16))(v9, v25, v6);
  sub_21BE2862C();
  (*(v7 + 8))(v9, v6);
  v26 = v32[0];
  if (*(v32[0] + 17))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v29 - 2) = v26;
    *(&v29 - 8) = 0;
    v32[0] = v26;
    sub_21BD67F14(&qword_27CDBAA00, type metadata accessor for SharedGroceryListItemModel, a1nF);
    sub_21BE25F0C();
  }

  else
  {
    *(v32[0] + 17) = 0;
  }

  sub_21BD65768(v5);
  sub_21BE26F4C();
  (*(v3 + 8))(v5, v2);
  return sub_21BB3A4CC(v12, &unk_27CDB57F0, &qword_21BE328A0);
}

uint64_t sub_21BD67278(uint64_t a1)
{
  v1 = sub_21BE26F5C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB998, &qword_21BE48000);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  v9 = swift_projectBox();
  (*(v6 + 16))(v8, v9, v5);
  sub_21BE2862C();
  (*(v6 + 8))(v8, v5);
  v10 = v14;
  if (*(v14 + 17))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v13 - 2) = v10;
    *(&v13 - 8) = 0;
    v14 = v10;
    sub_21BD67F14(&qword_27CDBAA00, type metadata accessor for SharedGroceryListItemModel, a1nF);
    sub_21BE25F0C();
  }

  else
  {
    *(v14 + 17) = 0;
  }

  sub_21BD65768(v4);
  sub_21BE26F4C();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_21BD67520(uint64_t a1)
{
  v2 = type metadata accessor for SharedGroceryListFlowView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  v7 = sub_21BE2599C();
  v9 = v8;

  v13[0] = v7;
  v13[1] = v9;
  sub_21BD67F5C(a1, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_21BD67FC0(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_21BB41FA4();
  return sub_21BE2845C();
}

uint64_t sub_21BD676BC(uint64_t a1)
{
  v16 = sub_21BE2754C();
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = sub_21BE26F5C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SharedGroceryListFlowView(0);
  sub_21BBA3854(a1 + *(v12 + 20), v7, &unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_21BE28FEC();
    v13 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  sub_21BE26F4C();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_21BD67944(uint64_t a1)
{
  v1[6] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB998, &qword_21BE48000);
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  sub_21BE28D7C();
  v1[10] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v1[11] = v4;
  v1[12] = v3;

  return MEMORY[0x2822009F8](sub_21BD67A44, v4, v3);
}

uint64_t sub_21BD67A44()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = swift_projectBox();
  v5 = *(v2 + 16);
  v5(v1, v4, v3);
  sub_21BE2862C();
  v6 = *(v2 + 8);
  v6(v1, v3);
  LOBYTE(v3) = sub_21BD30D68();

  if (v3)
  {
    v7 = v0[9];
    v8 = v0[7];

    v5(v7, v4, v8);
    sub_21BE2862C();
    v6(v7, v8);
    v9 = v0[4];
    if (*(v9 + 16))
    {
      swift_getKeyPath();
      v10 = swift_task_alloc();
      *(v10 + 16) = v9;
      *(v10 + 24) = 0;
      v0[5] = v9;
      sub_21BD67F14(&qword_27CDBAA00, type metadata accessor for SharedGroceryListItemModel, a1nF);
      sub_21BE25F0C();
    }

    else
    {
      *(v9 + 16) = 0;
    }

    v15 = v0[1];

    return v15();
  }

  else
  {
    v11 = v0[9];
    v12 = v0[7];
    v5(v11, v4, v12);
    sub_21BE2862C();
    v6(v11, v12);
    v0[13] = v0[3];
    v13 = swift_task_alloc();
    v0[14] = v13;
    *v13 = v0;
    v13[1] = sub_21BD67CF8;

    return sub_21BD30E84();
  }
}

uint64_t sub_21BD67CF8()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_21BD67E3C, v3, v2);
}

uint64_t sub_21BD67E3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BD67EB0(uint64_t a1)
{
  v2 = type metadata accessor for SharedFamilyGroceryIntroView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BD67F14(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21BD67F5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedGroceryListFlowView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BD67FC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedGroceryListFlowView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BD68024()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_21BBA6A64;

  return sub_21BD67944(v0);
}

uint64_t objectdestroyTm_25()
{
  v1 = type metadata accessor for SharedGroceryListFlowView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21BE26F5C();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_22Tm()
{
  v1 = type metadata accessor for SharedGroceryListFlowView(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21BE26F5C();
    (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21BD683C4(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for SharedGroceryListFlowView(0) - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

unint64_t sub_21BD6845C()
{
  result = qword_27CDBB9B0[0];
  if (!qword_27CDBB9B0[0])
  {
    v7[20] = v0;
    v7[21] = v1;
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB9A0, &qword_21BE48008);
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB988, &qword_21BE47FF0);
    v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDB55A0, &unk_21BE32460);
    type metadata accessor for SharedFamilyGroceryIntroView(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8130, &qword_21BE3ED60);
    sub_21BD67F14(&qword_27CDBB9A8, type metadata accessor for SharedFamilyGroceryIntroView, byte_21BE432F0);
    v5 = sub_21BB41FA4();
    v7[8] = sub_21BB3B038(&qword_27CDB8138, &qword_27CDB8130, &qword_21BE3ED60, MEMORY[0x277CE14C0]);
    v7[9] = MEMORY[0x277CE0BC8];
    v7[2] = v3;
    v7[3] = MEMORY[0x277D837D0];
    v7[4] = v4;
    v7[5] = swift_getOpaqueTypeConformance2();
    v7[6] = v5;
    v7[7] = sub_21BB3B038(&qword_27CDB5598, &unk_27CDB55A0, &unk_21BE32460, MEMORY[0x277CDF028]);
    v7[0] = swift_getOpaqueTypeConformance2();
    v7[1] = sub_21BBA6BC8();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v6, v7);
    atomic_store(result, qword_27CDBB9B0);
  }

  return result;
}

uint64_t sub_21BD686A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_xRi_zRi0_zlyq_Isegr_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21BD6875C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5D50, &qword_21BE36430);
  sub_21BE2719C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC520, &qword_21BE38BA0);
  sub_21BE2719C();
  sub_21BE2946C();
  swift_getTupleTypeMetadata2();
  v6 = sub_21BE286EC();
  v7 = MEMORY[0x277CE14C0];
  swift_getWitnessTable(MEMORY[0x277CE14C0], v6);
  sub_21BE284FC();
  swift_getTupleTypeMetadata2();
  v8 = sub_21BE286EC();
  swift_getWitnessTable(v7, v8);
  v9 = sub_21BE2848C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v18 - v14;
  v18[4] = v5;
  v18[5] = v4;
  v18[6] = v3;
  v19 = *(a1 + 40);
  v20 = *(a1 + 56);
  v21 = v18[0];
  sub_21BE275DC();
  sub_21BE2847C();
  swift_getWitnessTable(MEMORY[0x277CE1138], v9);
  sub_21BD37338();
  v16 = *(v10 + 8);
  v16(v13, v9);
  sub_21BD37338();
  return (v16)(v15, v9);
}

uint64_t sub_21BD689FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v43 = a7;
  v40 = a5;
  v41 = a6;
  v39 = a3;
  v37 = a2;
  v42 = a8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5D50, &qword_21BE36430);
  sub_21BE2719C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC520, &qword_21BE38BA0);
  sub_21BE2719C();
  sub_21BE2946C();
  swift_getTupleTypeMetadata2();
  v36 = sub_21BE286EC();
  WitnessTable = swift_getWitnessTable(MEMORY[0x277CE14C0], v36);
  v10 = sub_21BE284FC();
  v38 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v32 - v15;
  v17 = *(a4 - 8);
  v18 = MEMORY[0x28223BE20](v14);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v33 = &v32 - v22;
  (*(a1 + 32))(v21);
  v23 = v43;
  sub_21BD37338();
  v24 = *(v17 + 8);
  v32 = v17 + 8;
  v34 = v24;
  v24(v20, a4);
  sub_21BE2771C();
  v44 = v37;
  v45 = v39;
  v46 = a4;
  v47 = v40;
  v48 = v41;
  v49 = v23;
  v50 = a1;
  sub_21BE284EC();
  v25 = swift_getWitnessTable(MEMORY[0x277CE1198], v10);
  sub_21BD37338();
  v26 = v38;
  v27 = *(v38 + 8);
  v27(v13, v10);
  v28 = *(v17 + 16);
  v29 = v33;
  v28(v20, v33, a4);
  v54[0] = v20;
  (*(v26 + 16))(v13, v16, v10);
  v54[1] = v13;
  v53[0] = a4;
  v53[1] = v10;
  v51 = v43;
  v52 = v25;
  sub_21BDFE148(v54, 2uLL, v53);
  v27(v16, v10);
  v30 = v34;
  v34(v29, a4);
  v27(v13, v10);
  return v30(v20, a4);
}

uint64_t sub_21BD68E18@<X0>(void (**a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v66 = a5;
  v71 = a6;
  v59 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v58 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5D50, &qword_21BE36430);
  v60 = a3;
  v11 = sub_21BE2719C();
  v61 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v57 = &v55 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC520, &qword_21BE38BA0);
  v63 = sub_21BE2719C();
  v13 = sub_21BE2946C();
  v68 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v69 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v55 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v67 = &v55 - v20;
  v21 = *(a2 - 8);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v55 - v26;
  (*a1)(v25);
  v65 = v27;
  v70 = a4;
  sub_21BD37338();
  v28 = *(v21 + 8);
  v72 = a2;
  v64 = v21 + 8;
  v62 = v28;
  v29 = v28(v24, a2);
  v30 = a1[2];
  if (v30)
  {
    v56 = v18;
    v31 = v11;
    v32 = v21;
    v33 = v58;
    v30(v29);
    sub_21BE27BEC();
    v34 = v57;
    v35 = v60;
    v36 = v66;
    sub_21BE280CC();

    v37 = v33;
    v21 = v32;
    v11 = v31;
    v18 = v56;
    (*(v59 + 8))(v37, v35);
    sub_21BE2833C();
    v38 = sub_21BD69500(&unk_27CDBC3F0, &qword_27CDB5D50, &qword_21BE36430);
    v73[0] = v36;
    v73[1] = v38;
    swift_getWitnessTable(MEMORY[0x277CDFAD8], v11, v73);
    sub_21BE27F8C();

    (*(v61 + 8))(v34, v11);
    v39 = 0;
  }

  else
  {
    v39 = 1;
    v36 = v66;
  }

  v40 = v63;
  (*(*(v63 - 8) + 56))(v18, v39, 1, v63);
  v41 = sub_21BD69500(&unk_27CDBC3F0, &qword_27CDB5D50, &qword_21BE36430);
  v78[0] = v36;
  v78[1] = v41;
  v42 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable(MEMORY[0x277CDFAD8], v11, v78);
  v44 = sub_21BD69500(&qword_27CDB7970, &qword_27CDBC520, &qword_21BE38BA0);
  v77[0] = WitnessTable;
  v77[1] = v44;
  v76 = swift_getWitnessTable(v42, v40, v77);
  v45 = swift_getWitnessTable(MEMORY[0x277CE1550], v13, &v76);
  v46 = v67;
  sub_21BD37338();
  v47 = v68;
  v48 = *(v68 + 8);
  v48(v18, v13);
  v49 = v65;
  v50 = v72;
  (*(v21 + 16))(v24, v65, v72);
  v75[0] = v24;
  v51 = v69;
  (*(v47 + 16))(v69, v46, v13);
  v75[1] = v51;
  v74[0] = v50;
  v74[1] = v13;
  v73[2] = v70;
  v73[3] = v45;
  sub_21BDFE148(v75, 2uLL, v74);
  v48(v46, v13);
  v52 = v49;
  v53 = v62;
  v62(v52, v50);
  v48(v51, v13);
  return v53(v24, v50);
}

uint64_t sub_21BD69500(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable(MEMORY[0x277CE0868], v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for RecoveryContactIsSetupCell(uint64_t a1)
{
  result = qword_27CDBBA38;
  if (!qword_27CDBBA38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BD695C8(uint64_t a1)
{
  sub_21BCB057C(319);
  if (v1 <= 0x3F)
  {
    sub_21BBC8F58();
    if (v2 <= 0x3F)
    {
      type metadata accessor for RecoveryContactDataItem(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21BD6968C()
{
  v1 = sub_21BE2754C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);

  if ((v6 & 1) == 0)
  {
    sub_21BE28FEC();
    v7 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

double sub_21BD697CC@<D0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BC0, &qword_21BE33380);
  v34 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v33 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v35 = &v29 - v5;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBA48, &qword_21BE481F8);
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v41 = &v29 - v6;
  v40 = swift_allocBox();
  v8 = v7;
  sub_21BD6968C();
  type metadata accessor for ChecklistStateVars(0);
  v36 = sub_21BD6A330(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars, protocol conformance descriptor for ChecklistStateVars);
  v32 = v8;
  sub_21BE2864C();
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[7];
  v31 = v1[6];
  v13 = v1[4];
  v12 = v1[5];
  v14 = v1[8];
  v15 = *(type metadata accessor for RecoveryContactIsSetupCell(0) + 36);
  v53[3] = type metadata accessor for RecoveryContactDataItem(0);
  v53[4] = sub_21BD6A330(&qword_27CDB5E88, type metadata accessor for RecoveryContactDataItem, byte_21BE50CF8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v53);
  sub_21BD6A378(v1 + v15, boxed_opaque_existential_1);
  v43 = v9;
  v44 = v10;
  v45 = v31;
  v46 = v11;
  v47 = v13;
  v48 = v12;
  v49 = v14;
  v50 = sub_21BD6A328;
  v51 = v40;
  v52 = 0;
  v53[5] = 0;
  v17 = v34;
  v31 = *(v34 + 16);
  v18 = v33;
  v31(v33, v8, v2);

  v19 = v14;

  v20 = v35;
  v21 = v18;
  sub_21BE2863C();
  v22 = *(v17 + 8);
  v22(v21, v2);
  v30 = v22;
  swift_getKeyPath();
  sub_21BE2865C();

  v22(v20, v2);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBA50, &qword_21BE48228);
  v24 = sub_21BBC24D4();
  v34 = sub_21BD6A3DC();
  sub_21BE2806C();

  sub_21BBC7A74(&v43);
  v31(v20, v32, v2);
  sub_21BE2862C();
  v30(v20, v2);
  v25 = v43;
  swift_getKeyPath();
  v43 = v25;
  sub_21BE25F1C();

  swift_beginAccess();
  LOBYTE(v22) = BYTE3(v25[1].Kind);

  v42 = v22;

  v43 = &type metadata for ChecklistAlreadySetupButtonCell;
  v44 = v23;
  v45 = v24;
  v46 = v34;
  swift_getOpaqueTypeConformance2();
  v26 = v37;
  v27 = v41;
  sub_21BE281CC();

  (*(v38 + 8))(v27, v26);

  return result;
}

double sub_21BD69D8C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BC0, &qword_21BE33380);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - v3;
  v5 = swift_projectBox();
  (*(v2 + 16))(v4, v5, v1);
  sub_21BE2862C();
  (*(v2 + 8))(v4, v1);
  v6 = v9[3];
  swift_beginAccess();
  if (*(v6 + 19) == 1)
  {
    *(v6 + 19) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v9[-2] = v6;
    LOBYTE(v9[-1]) = 1;
    v9[2] = v6;
    sub_21BD6A330(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars, protocol conformance descriptor for ChecklistStateVars);
    sub_21BE25F0C();
  }

  return result;
}

uint64_t sub_21BD69F94@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BCB304C();
  sub_21BB41FA4();
  sub_21BE27F9C();

  v4 = [objc_opt_self() systemGroupedBackgroundColor];
  v5 = sub_21BE2826C();
  v6 = sub_21BE27B7C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBA50, &qword_21BE48228);
  v8 = a1 + *(result + 36);
  *v8 = v5;
  *(v8 + 8) = v6;
  return result;
}

void sub_21BD6A118(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BC0, &qword_21BE33380);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - v3;
  v5 = swift_projectBox();
  (*(v2 + 16))(v4, v5, v1);
  sub_21BE2862C();
  (*(v2 + 8))(v4, v1);
  v6 = v9;
  swift_getKeyPath();
  v9 = v6;
  sub_21BD6A330(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars, protocol conformance descriptor for ChecklistStateVars);
  sub_21BE25F1C();

  swift_beginAccess();
  LOBYTE(v4) = *(v6 + 19);

  if ((v4 & 1) == 0)
  {
    v7 = [objc_opt_self() defaultCenter];
    if (qword_27CDB4EB8 != -1)
    {
      swift_once();
    }

    [v7 postNotificationName:qword_27CDB7E68 object:0 userInfo:0 deliverImmediately:1];
  }
}

uint64_t sub_21BD6A330(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21BD6A378(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecoveryContactDataItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21BD6A3DC()
{
  result = qword_27CDBBA58;
  if (!qword_27CDBBA58)
  {
    v6[8] = v0;
    v6[9] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBA50, &qword_21BE48228);
    v4 = sub_21BCB304C();
    v5 = sub_21BB41FA4();
    v6[2] = &type metadata for RecoveryContactSetUpViewControllerWrapper;
    v6[3] = MEMORY[0x277D837D0];
    v6[4] = v4;
    v6[5] = v5;
    v6[0] = swift_getOpaqueTypeConformance2();
    v6[1] = sub_21BD6A4A8();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v6);
    atomic_store(result, &qword_27CDBBA58);
  }

  return result;
}

unint64_t sub_21BD6A4A8()
{
  result = qword_27CDBBB80;
  if (!qword_27CDBBB80)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9F30, &qword_21BE48230);
    result = swift_getWitnessTable(MEMORY[0x277CE0728], v3, v0, v1);
    atomic_store(result, &qword_27CDBBB80);
  }

  return result;
}

void *sub_21BD6A534@<X0>(void *a1@<X8>)
{
  v3 = sub_21BE27A2C();
  v66 = *(v3 - 8);
  v67 = v3;
  MEMORY[0x28223BE20](v3);
  v64 = &v58[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v58[-v6];
  v8 = type metadata accessor for StaticSelectableCellTemplate(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v58[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBA80, &qword_21BE48300);
  v65 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v63 = &v58[-v11];
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBA88, &qword_21BE48308);
  MEMORY[0x28223BE20](v69);
  v13 = &v58[-v12];
  v14 = type metadata accessor for MemberDetailsAppleCashWrapper(0);
  v68 = *(v14 - 1);
  v15 = *(v68 + 64);
  v16 = &v58[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *(v1 + *(MEMORY[0x28223BE20](v14) + 32));
  v71 = a1;
  if (v17 == 1)
  {
    v67 = sub_21BE275DC();
    v89 = 0;
    sub_21BD6B00C(&v73);
    v102 = v85;
    v103 = v86;
    v98 = v81;
    v99 = v82;
    v100 = v83;
    v101 = v84;
    v94 = v77;
    v95 = v78;
    v96 = v79;
    v97 = v80;
    v90 = v73;
    v91 = v74;
    v92 = v75;
    v93 = v76;
    v116 = v84;
    v117 = v85;
    v118 = v86;
    v119 = v87;
    v112 = v80;
    v113 = v81;
    v114 = v82;
    v115 = v83;
    v108 = v76;
    v109 = v77;
    v110 = v78;
    v111 = v79;
    v104 = v87;
    v105 = v73;
    v106 = v74;
    v107 = v75;
    sub_21BBA3854(&v90, &v72, &qword_27CDB8BB0, &qword_21BE3D590);
    sub_21BB3A4CC(&v105, &qword_27CDB8BB0, &qword_21BE3D590);
    *&v88[183] = v101;
    *&v88[199] = v102;
    *&v88[215] = v103;
    *&v88[231] = v104;
    *&v88[119] = v97;
    *&v88[135] = v98;
    *&v88[151] = v99;
    *&v88[167] = v100;
    *&v88[55] = v93;
    *&v88[71] = v94;
    *&v88[87] = v95;
    *&v88[103] = v96;
    *&v88[7] = v90;
    *&v88[23] = v91;
    *&v88[39] = v92;
    v18 = v89;
    KeyPath = swift_getKeyPath();
    sub_21BD6BE18(v1, &v58[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    v20 = (*(v68 + 80) + 16) & ~*(v68 + 80);
    v21 = swift_allocObject();
    sub_21BD6BE7C(&v58[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)], v21 + v20);
    v22 = *&v88[208];
    *(v13 + 209) = *&v88[192];
    *(v13 + 225) = v22;
    *(v13 + 241) = *&v88[224];
    v23 = *&v88[144];
    *(v13 + 145) = *&v88[128];
    *(v13 + 161) = v23;
    v24 = *&v88[176];
    *(v13 + 177) = *&v88[160];
    *(v13 + 193) = v24;
    v25 = *&v88[80];
    *(v13 + 81) = *&v88[64];
    *(v13 + 97) = v25;
    v26 = *&v88[112];
    *(v13 + 113) = *&v88[96];
    *(v13 + 129) = v26;
    v27 = *&v88[16];
    *(v13 + 17) = *v88;
    *(v13 + 33) = v27;
    v28 = *&v88[48];
    *(v13 + 49) = *&v88[32];
    *v13 = v67;
    *(v13 + 1) = 0;
    v13[16] = v18;
    *(v13 + 32) = *&v88[239];
    *(v13 + 65) = v28;
    v13[264] = 1;
    *(v13 + 34) = KeyPath;
    *(v13 + 140) = 0;
    *(v13 + 36) = sub_21BD6C4D8;
    *(v13 + 37) = v21;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBA90, &unk_21BE48310);
    sub_21BD6C0D4();
    v29 = sub_21BD6C08C(&qword_27CDB7F90, type metadata accessor for StaticSelectableCellTemplate, aA7F);
    *&v73 = v8;
    *(&v73 + 1) = v29;
    swift_getOpaqueTypeConformance2();
    return sub_21BE2784C();
  }

  else
  {
    sub_21BD6BE18(v1, &v58[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    v31 = (*(v68 + 80) + 16) & ~*(v68 + 80);
    v32 = swift_allocObject();
    sub_21BD6BE7C(v16, v32 + v31);
    sub_21BBA3854(v1 + v14[5], v7, &unk_27CDB57F0, &qword_21BE328A0);
    swift_unknownObjectWeakLoadStrong();
    v33 = sub_21BD6BEF8();
    v61 = v34;
    v62 = v33;
    v35 = *(v1 + v14[6]);
    if (v35)
    {
      v60 = [v35 integerValue];
    }

    else
    {
      v60 = 0;
    }

    v36 = v1 + v14[10];
    v37 = *v36;
    v38 = *(v36 + 8);
    LOBYTE(v36) = *(v36 + 16);
    *&v105 = v37;
    *(&v105 + 1) = v38;
    LOBYTE(v106) = v36;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
    sub_21BE2856C();
    v39 = v90;
    v68 = v32;
    v40 = *(&v90 + 1);
    v59 = v91;
    if (qword_280BD76F0 != -1)
    {
      swift_once();
    }

    *v10 = 0x41435F454C505041;
    v10[1] = 0xEA00000000004853;
    sub_21BC438F8(v7, v10 + v8[5]);
    *(v10 + v8[6]) = 1;
    swift_unknownObjectWeakInit();

    swift_unknownObjectRelease();
    v41 = (v10 + v8[8]);
    v42 = v61;
    *v41 = v62;
    v41[1] = v42;
    v43 = v10 + v8[9];
    *v43 = v60;
    v43[8] = v35 == 0;
    v44 = (v10 + v8[10]);
    v45 = v68;
    *v44 = sub_21BD6BEE0;
    v44[1] = v45;
    v46 = v10 + v8[11];
    *v46 = v39;
    *(v46 + 1) = v40;
    v46[16] = v59;
    v47 = (v10 + v8[12]);
    *v47 = 0;
    v47[1] = 0;
    *(v10 + v8[13]) = 0;
    *(v10 + v8[14]) = 5;
    v48 = (v10 + v8[15]);
    type metadata accessor for ServicesStore(0);
    sub_21BD6C08C(&qword_27CDB5750, type metadata accessor for ServicesStore, protocol conformance descriptor for AsyncStore<A>);
    *v48 = sub_21BE270CC();
    v48[1] = v49;
    *(v10 + v8[16]) = 0;
    v50 = v10 + v8[17];
    LOBYTE(v90) = 0;
    sub_21BE283EC();
    v51 = *(&v105 + 1);
    *v50 = v105;
    *(v50 + 1) = v51;
    sub_21BB3A2A4(0, &qword_280BD6908, 0x277CCA9A0);
    v52 = [swift_getObjCClassFromMetadata() defaultCenter];
    if (qword_27CDB4EE0 != -1)
    {
      swift_once();
    }

    sub_21BE2935C();

    v53 = v64;
    sub_21BE27A0C();
    v54 = sub_21BD6C08C(&qword_27CDB7F90, type metadata accessor for StaticSelectableCellTemplate, aA7F);
    v55 = v63;
    sub_21BE2805C();
    (*(v66 + 8))(v53, v67);
    sub_21BC5E088(v10);
    v56 = v65;
    v57 = v70;
    (*(v65 + 16))(v13, v55, v70);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBA90, &unk_21BE48310);
    sub_21BD6C0D4();
    *&v105 = v8;
    *(&v105 + 1) = v54;
    swift_getOpaqueTypeConformance2();
    sub_21BE2784C();

    return (*(v56 + 8))(v55, v57);
  }
}

uint64_t sub_21BD6B00C@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_21BE2771C();
  v42 = 1;
  sub_21BD6B2B0(v43);
  *&v41[7] = v43[0];
  *&v41[23] = v43[1];
  *&v41[39] = v43[2];
  *&v41[55] = v43[3];
  sub_21BE286AC();
  sub_21BE2725C();
  v26[0] = v3;
  v26[1] = 0;
  v27[0] = 1;
  *&v27[17] = *&v41[16];
  *&v27[33] = *&v41[32];
  *&v27[49] = *&v41[48];
  *&v27[64] = *&v41[63];
  *&v27[1] = *v41;
  v4 = v22;
  *&v27[136] = v23;
  v5 = v21;
  *&v27[120] = v22;
  v6 = v23;
  *&v27[152] = v24;
  v7 = v24;
  *&v27[168] = v25;
  *&v27[72] = v19;
  *&v27[88] = v20;
  v8 = v19;
  v9 = v20;
  *&v27[104] = v21;
  *(&v18[9] + 7) = *&v27[128];
  *(&v18[10] + 7) = *&v27[144];
  *(&v18[11] + 7) = *&v27[160];
  *(&v18[12] + 7) = *(&v25 + 1);
  *(&v18[5] + 7) = *&v27[64];
  *(&v18[6] + 7) = *&v27[80];
  *(&v18[7] + 7) = *&v27[96];
  *(&v18[8] + 7) = *&v27[112];
  *(&v18[1] + 7) = *v27;
  *(&v18[2] + 7) = *&v27[16];
  *(&v18[3] + 7) = *&v27[32];
  *(&v18[4] + 7) = *&v27[48];
  *(v18 + 7) = v3;
  v10 = v18[8];
  *(a2 + 177) = v18[9];
  v11 = v18[11];
  *(a2 + 193) = v18[10];
  *(a2 + 209) = v11;
  *(a2 + 224) = *(&v18[11] + 15);
  v12 = v18[4];
  *(a2 + 113) = v18[5];
  v13 = v18[7];
  *(a2 + 129) = v18[6];
  *(a2 + 145) = v13;
  *(a2 + 161) = v10;
  v14 = v18[0];
  *(a2 + 49) = v18[1];
  v15 = v18[3];
  *(a2 + 65) = v18[2];
  *(a2 + 81) = v15;
  *(a2 + 97) = v12;
  *(a2 + 33) = v14;
  v31 = *&v41[16];
  v32 = *&v41[32];
  *v33 = *&v41[48];
  v30 = *v41;
  v37 = v4;
  v38 = v6;
  v39 = v7;
  v40 = v25;
  v34 = v8;
  v35 = v9;
  *a2 = 6;
  *(a2 + 8) = 0;
  *(a2 + 16) = &unk_282D86E60;
  *(a2 + 24) = &unk_282D86E90;
  *(a2 + 32) = 0;
  v28[0] = v3;
  v28[1] = 0;
  v29 = 1;
  *&v33[15] = *&v41[63];
  v36 = v5;

  sub_21BBA3854(v26, v17, &qword_27CDB6210, &qword_21BE340D0);
  sub_21BB3A4CC(v28, &qword_27CDB6210, &qword_21BE340D0);
}

uint64_t sub_21BD6B2B0@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  v4 = sub_21BE27DBC();
  v6 = v5;
  v8 = v7;
  sub_21BE2832C();
  v9 = sub_21BE27D4C();
  v32 = v10;
  v33 = v9;
  v31 = v11;
  v34 = v12;

  sub_21BBC7C7C(v4, v6, v8 & 1);

  sub_21BD6BEF8();
  v13 = sub_21BE27DBC();
  v15 = v14;
  v17 = v16;
  sub_21BE27BEC();
  v18 = sub_21BE27D9C();
  v20 = v19;
  v22 = v21;

  sub_21BBC7C7C(v13, v15, v17 & 1);

  sub_21BE2833C();
  v23 = sub_21BE27D4C();
  v25 = v24;
  v27 = v26;
  v29 = v28;

  sub_21BBC7C7C(v18, v20, v22 & 1);

  *a1 = v33;
  *(a1 + 8) = v32;
  *(a1 + 16) = v31 & 1;
  *(a1 + 24) = v34;
  *(a1 + 32) = v23;
  *(a1 + 40) = v25;
  *(a1 + 48) = v27 & 1;
  *(a1 + 56) = v29;
  sub_21BBA4A38(v33, v32, v31 & 1);

  sub_21BBA4A38(v23, v25, v27 & 1);

  sub_21BBC7C7C(v23, v25, v27 & 1);

  sub_21BBC7C7C(v33, v32, v31 & 1);
}

uint64_t sub_21BD6B554(uint64_t a1)
{
  v16 = sub_21BE2754C();
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = sub_21BE27B0C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MemberDetailsAppleCashWrapper(0);
  sub_21BBA3854(a1 + *(v12 + 52), v7, &qword_27CDB6138, &qword_21BE33F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_21BE28FEC();
    v13 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  sub_21BE27AFC();
  return (*(v9 + 8))(v11, v8);
}

void sub_21BD6B7F4(void *a1)
{
  if (a1)
  {
    v1 = [a1 navigationController];
    if (v1)
    {
      v2 = v1;
      v3 = [objc_allocWithZone(FAAppleCashPresentationHandler) initWithNavigationController_];
      [v3 presentPaymentPassDetailViewController];
      if (qword_27CDB4F90 != -1)
      {
        swift_once();
      }

      v4 = 257;
      sub_21BD23980(&v4);
    }
  }
}

void sub_21BD6B8B0(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = [v2 subscriberDSIDs];
    if (v3)
    {
      v4 = v3;
      sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
      v5 = sub_21BE28C3C();

      v6 = type metadata accessor for MemberDetailsAppleCashWrapper(0);
      if (*(a1 + *(v6 + 24)))
      {
        v11 = *(a1 + *(v6 + 24));
        MEMORY[0x28223BE20](v6);
        v10[2] = &v11;
        v8 = v7;
        v9 = sub_21BC9DAC4(sub_21BBF0CE4, v10, v5);

        if (v9)
        {
          if (qword_27CDB4F90 != -1)
          {
            swift_once();
          }

          LOWORD(v11) = 1;
        }

        else
        {
          if (qword_27CDB4F90 != -1)
          {
            swift_once();
          }

          LOWORD(v11) = 0;
        }

        sub_21BD23980(&v11);
      }

      else
      {
      }
    }
  }
}

uint64_t type metadata accessor for MemberDetailsAppleCashWrapper(uint64_t a1)
{
  result = qword_27CDBBA60;
  if (!qword_27CDBBA60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BD6BAC4(uint64_t a1)
{
  sub_21BC97780(319, &qword_27CDB8B60, &unk_27CDB6550, 0x277D08338);
  if (v1 <= 0x3F)
  {
    sub_21BD6BC70(319, &qword_280BD89E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_21BC97780(319, &qword_27CDB8B68, &qword_280BD68F8, 0x277CCABB0);
      if (v3 <= 0x3F)
      {
        sub_21BD39D4C();
        if (v4 <= 0x3F)
        {
          sub_21BD6BCD4(319);
          if (v5 <= 0x3F)
          {
            sub_21BD6BD68(319);
            if (v6 <= 0x3F)
            {
              sub_21BD6BC70(319, &qword_27CDB6118, MEMORY[0x277CDE530], MEMORY[0x277CDF468]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_21BD6BC70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_21BD6BCD4(uint64_t a1)
{
  if (!qword_27CDBBA70)
  {
    type metadata accessor for MemberDetailsAppleCashViewModel(255);
    sub_21BD6C08C(&qword_27CDBA118, type metadata accessor for MemberDetailsAppleCashViewModel, byte_21BE3F678);
    v1 = sub_21BE270DC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDBBA70);
    }
  }
}

void sub_21BD6BD68(uint64_t a1)
{
  if (!qword_27CDBBA78)
  {
    type metadata accessor for AppleCashFamilyCache();
    sub_21BD6C08C(&qword_27CDB9428, type metadata accessor for AppleCashFamilyCache, protocol conformance descriptor for SimpleFamilyServerCache);
    v1 = sub_21BE26EBC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDBBA78);
    }
  }
}

uint64_t sub_21BD6BE18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MemberDetailsAppleCashWrapper(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BD6BE7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MemberDetailsAppleCashWrapper(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BD6BEF8()
{
  type metadata accessor for MemberDetailsAppleCashWrapper(0);
  type metadata accessor for AppleCashFamilyCache();
  sub_21BD6C08C(&qword_27CDB9428, type metadata accessor for AppleCashFamilyCache, protocol conformance descriptor for SimpleFamilyServerCache);
  sub_21BE26EAC();
  sub_21BE1F1EC(&v6);
  v5[0] = v6;
  v5[1] = v7;
  v0 = sub_21BE20000(v5);

  if (!v0)
  {
    goto LABEL_6;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_6;
  }

  v6 = 0;
  v7 = 0;
  sub_21BE289FC();

  if (!v7)
  {
LABEL_6:
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    v1 = sub_21BE2599C();

    return v1;
  }

  return v6;
}

uint64_t sub_21BD6C08C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BD6C0D4()
{
  result = qword_27CDBBA98;
  if (!qword_27CDBBA98)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBA90, &unk_21BE48310);
    v4[0] = sub_21BD6C160();
    v4[1] = sub_21BBDD1FC();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBBA98);
  }

  return result;
}

unint64_t sub_21BD6C160()
{
  result = qword_27CDBBAA0;
  if (!qword_27CDBBAA0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8BB8, &qword_21BE3D5C8);
    v4[0] = sub_21BD6C218();
    v4[1] = sub_21BB3B038(&qword_27CDB6188, &qword_27CDB6190, &qword_21BE33F40, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBBAA0);
  }

  return result;
}

unint64_t sub_21BD6C218()
{
  result = qword_27CDBBAA8;
  if (!qword_27CDBBAA8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBAB0, &qword_21BE48320);
    v4[0] = sub_21BB3B038(&qword_27CDBBAB8, &qword_27CDBBAC0, &qword_21BE48328, MEMORY[0x277CE1138]);
    v4[1] = sub_21BBDD1A8();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBBAA8);
  }

  return result;
}

uint64_t objectdestroyTm_26()
{
  v1 = type metadata accessor for MemberDetailsAppleCashWrapper(0);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));

  v3 = v1[5];
  v4 = sub_21BE25B9C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  MEMORY[0x21CF05D90](v2 + v1[9]);

  sub_21BB47CE0(*(v2 + v1[12]), *(v2 + v1[12] + 8));
  v6 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21BE27B0C();
    (*(*(v7 - 8) + 8))(v2 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21BD6C4F0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for MemberDetailsAppleCashWrapper(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_21BD6C564()
{
  result = qword_27CDBBAC8;
  if (!qword_27CDBBAC8)
  {
    v5[8] = v0;
    v5[9] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDBBAD0, qword_21BE48368);
    v4 = sub_21BD6C0D4();
    v5[2] = type metadata accessor for StaticSelectableCellTemplate(255);
    v5[3] = sub_21BD6C08C(&qword_27CDB7F90, type metadata accessor for StaticSelectableCellTemplate, aA7F);
    v5[0] = v4;
    v5[1] = swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v5);
    atomic_store(result, &qword_27CDBBAC8);
  }

  return result;
}

uint64_t sub_21BD6C658()
{
  result = sub_21BE289CC();
  qword_27CDD4338 = result;
  return result;
}

uint64_t sub_21BD6C690()
{
  result = sub_21BE289CC();
  qword_27CDD4340 = result;
  return result;
}

uint64_t sub_21BD6C6C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BD6F8D0();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21BD6C72C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BD6F8D0();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21BD6C790(uint64_t a1)
{
  sub_21BD6F8D0();
  sub_21BE27ABC();
  __break(1u);
}

uint64_t sub_21BD6C7B8(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  v3 = sub_21BE2870C();
  v2[34] = v3;
  v2[35] = *(v3 - 8);
  v2[36] = swift_task_alloc();
  v4 = sub_21BE2874C();
  v2[37] = v4;
  v2[38] = *(v4 - 8);
  v2[39] = swift_task_alloc();
  v5 = sub_21BE26A4C();
  v2[40] = v5;
  v2[41] = *(v5 - 8);
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  sub_21BE28D7C();
  v2[44] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v2[45] = v7;
  v2[46] = v6;

  return MEMORY[0x2822009F8](sub_21BD6C970, v7, v6);
}

uint64_t sub_21BD6C970()
{
  v1 = v0[33];
  v2 = [objc_allocWithZone(FACircleContext) initWithEventType_];
  v0[47] = v2;
  v3 = sub_21BE25B2C();
  [v2 setUrlForContext_];

  v4 = [objc_allocWithZone(FACircleStateController) initWithPresenter_];
  v0[48] = v4;
  [v4 setPresentationType_];
  [v4 setModalPresentationStyle_];
  v0[22] = sub_21BD6D094;
  v0[23] = 0;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_21BB42A18;
  v0[21] = &block_descriptor_46;
  v5 = _Block_copy(v0 + 18);
  [v4 setPresentationHandler_];
  _Block_release(v5);
  v6 = sub_21BE289CC();
  [v2 setClientName_];

  v0[2] = v0;
  v0[7] = v0 + 30;
  v0[3] = sub_21BD6CBEC;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5950, &qword_21BE32B20);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BC2D85C;
  v0[13] = &block_descriptor_6_0;
  v0[14] = v7;
  [v4 performWithContext:v2 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BD6CBEC()
{
  v1 = *(*v0 + 368);
  v2 = *(*v0 + 360);

  return MEMORY[0x2822009F8](sub_21BD6CCF4, v2, v1);
}

uint64_t sub_21BD6CCF4()
{
  v26 = v0;

  v24 = v0[30];
  v1 = [v24 error];
  if (v1)
  {
    v2 = v1;
    v3 = v0[43];
    v5 = v0[40];
    v4 = v0[41];
    sub_21BE2614C();
    v6 = v2;
    sub_21BC51D50(v2, 0xD000000000000014, 0x800000021BE60300);
  }

  else
  {
    sub_21BE2614C();
    v7 = sub_21BE26A2C();
    v8 = sub_21BE28FFC();
    v9 = os_log_type_enabled(v7, v8);
    v4 = v0[41];
    v3 = v0[42];
    v5 = v0[40];
    if (v9)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v25 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_21BB3D81C(0x3A5F287472617473, 0xE900000000000029, &v25);
      _os_log_impl(&dword_21BB35000, v7, v8, "%s response ok", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x21CF05C50](v11, -1, -1);
      MEMORY[0x21CF05C50](v10, -1, -1);
    }
  }

  (*(v4 + 8))(v3, v5);
  v20 = v0[48];
  v21 = v0[47];
  v12 = v0[39];
  v13 = v0[36];
  v22 = v0[38];
  v23 = v0[37];
  v14 = v0[34];
  v19 = v0[35];
  sub_21BB3A2A4(0, &qword_280BD6930, 0x277D85C78);
  v18 = sub_21BE2925C();
  v0[28] = sub_21BD6D0B8;
  v0[29] = 0;
  v0[24] = MEMORY[0x277D85DD0];
  v0[25] = 1107296256;
  v0[26] = sub_21BB42A18;
  v0[27] = &block_descriptor_9;
  v15 = _Block_copy(v0 + 24);
  sub_21BE2872C();
  v0[31] = MEMORY[0x277D84F90];
  sub_21BBE3CE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBAF0, &unk_21BE3B600);
  sub_21BB3B038(&qword_280BD69A0, &qword_27CDBBAF0, &unk_21BE3B600, MEMORY[0x277D83970]);
  sub_21BE294DC();
  MEMORY[0x21CF04410](0, v12, v13, v15);
  _Block_release(v15);

  (*(v19 + 8))(v13, v14);
  (*(v22 + 8))(v12, v23);

  v16 = v0[1];

  return v16();
}

void sub_21BD6D0DC(void *a1, void *a2, uint64_t a3)
{
  v5 = [objc_opt_self() defaultCenter];
  v6 = v5;
  if (*a1 != -1)
  {
    swift_once();
    v5 = v6;
  }

  [v5 postNotificationName:*a2 object:0 userInfo:0 deliverImmediately:1];
}

uint64_t sub_21BD6D310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = sub_21BE28D7C();
  v3[6] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BD6D3B0, v5, v4);
}

uint64_t sub_21BD6D3B0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];

  v0[7] = _Block_copy(v1);
  v4 = v3;
  v5 = v2;
  v0[8] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BD6D464, v7, v6);
}

uint64_t sub_21BD6D464()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[2];

  sub_21BD6DBC0(v3);

  if (v1)
  {
    v4 = v0[7];
    v4[2](v4);
    _Block_release(v4);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BD6D694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = sub_21BE28D7C();
  v3[4] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BD6D730, v5, v4);
}

uint64_t sub_21BD6D730()
{
  v1 = v0[2];

  v0[5] = _Block_copy(v1);
  v0[6] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BD6D7D0, v3, v2);
}

uint64_t sub_21BD6D7D0()
{
  v1 = *(v0 + 40);

  if (v1)
  {
    v2 = *(v0 + 40);
    v2[2](v2);
    _Block_release(v2);
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21BD6D9D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v3[4] = sub_21BE28D7C();
  v3[5] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BD6DA74, v5, v4);
}

uint64_t sub_21BD6DA74()
{
  v1 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v1);
  v3 = v2;
  v0[7] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BD6DB20, v5, v4);
}

uint64_t sub_21BD6DB20()
{
  v1 = v0[6];
  v2 = v0[3];

  [v2 dismissViewControllerAnimated:1 completion:0];

  if (v1)
  {
    v3 = v0[6];
    v3[2](v3);
    _Block_release(v3);
  }

  v4 = v0[1];

  return v4();
}

void sub_21BD6DBC0(void *a1)
{
  [v1 addChildViewController_];
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v3;
  v5 = [a1 view];
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5;
  [v4 addSubview_];

  v7 = [a1 view];
  if (!v7)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = v7;
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];

  v9 = [a1 view];
  if (!v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = v9;
  v28 = [v1 view];
  if (!v28)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v11 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC1D0, &qword_21BE35080);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21BE397B0;
  v13 = [v10 topAnchor];
  v14 = [v28 topAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v12 + 32) = v15;
  v16 = [v10 bottomAnchor];
  v17 = [v28 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v12 + 40) = v18;
  v19 = [v10 leadingAnchor];
  v20 = [v28 safeAreaLayoutGuide];
  v21 = [v20 leadingAnchor];

  v22 = [v19 constraintEqualToAnchor_];
  *(v12 + 48) = v22;
  v23 = [v10 trailingAnchor];
  v24 = [v28 safeAreaLayoutGuide];
  v25 = [v24 trailingAnchor];

  v26 = [v23 constraintEqualToAnchor_];
  *(v12 + 56) = v26;
  sub_21BB3A2A4(0, &qword_27CDBBAE0, 0x277CCAAD0);
  v27 = sub_21BE28C1C();

  [v11 activateConstraints_];

  [a1 didMoveToParentViewController_];
}

id sub_21BD6E070()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FamilyDisclosureController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BD6E0E4@<X0>(void *a1@<X8>)
{
  v25 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7020, &qword_21BE39520);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBBA0, &qword_21BE48600);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  *v13 = sub_21BE275DC();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v14 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBBA8, &qword_21BE48608) + 44)];
  sub_21BE26EEC();
  v15 = *(v2 + 16);
  v15(v5, v7, v1);
  *v14 = 0;
  v14[8] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBBB0, &qword_21BE48610);
  v15(&v14[*(v16 + 48)], v5, v1);
  v17 = &v14[*(v16 + 64)];
  *v17 = 0;
  v17[8] = 1;
  v18 = *(v2 + 8);
  v18(v7, v1);
  v18(v5, v1);
  sub_21BBA3854(v13, v11, &qword_27CDBBBA0, &qword_21BE48600);
  v19 = v25;
  *v25 = 0;
  *(v19 + 8) = 1;
  v20 = v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBBB8, &qword_21BE48618);
  sub_21BBA3854(v11, v20 + *(v21 + 48), &qword_27CDBBBA0, &qword_21BE48600);
  v22 = v20 + *(v21 + 64);
  *v22 = 0;
  *(v22 + 8) = 1;
  sub_21BB3A4CC(v13, &qword_27CDBBBA0, &qword_21BE48600);
  return sub_21BB3A4CC(v11, &qword_27CDBBBA0, &qword_21BE48600);
}

uint64_t sub_21BD6E3AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v3 = type metadata accessor for DisclosureModalHostingView(0);
  v4 = v3 - 8;
  v42 = *(v3 - 8);
  v41[1] = *(v42 + 64);
  MEMORY[0x28223BE20](v3);
  v41[0] = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB18, &qword_21BE48580);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB20, &qword_21BE48588);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB28, &qword_21BE48590);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB30, &qword_21BE48598);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = v41 - v19;
  *v8 = sub_21BE2770C();
  *(v8 + 1) = 0;
  v8[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBBB38, &unk_21BE485A0);
  sub_21BD6E7FC(v2);
  sub_21BE2869C();
  sub_21BE2725C();
  sub_21BBB7D84(v8, v12, &qword_27CDBBB18, &qword_21BE48580);
  v21 = &v12[*(v10 + 44)];
  v22 = v49;
  *(v21 + 4) = v48;
  *(v21 + 5) = v22;
  *(v21 + 6) = v50;
  v23 = v45;
  *v21 = v44;
  *(v21 + 1) = v23;
  v24 = v47;
  *(v21 + 2) = v46;
  *(v21 + 3) = v24;
  v25 = sub_21BE271CC();
  LOBYTE(v10) = sub_21BE27B7C();
  sub_21BBB7D84(v12, v16, &qword_27CDBBB20, &qword_21BE48588);
  v26 = &v16[*(v14 + 44)];
  *v26 = v25;
  v26[8] = v10;
  v27 = v2;
  v28 = v2;
  v29 = v41[0];
  sub_21BD6F398(v28, v41[0]);
  v30 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v31 = swift_allocObject();
  sub_21BD6F3FC(v29, v31 + v30);
  sub_21BBB7D84(v16, v20, &qword_27CDBBB28, &qword_21BE48590);
  v32 = &v20[*(v18 + 44)];
  *v32 = sub_21BD6F460;
  v32[1] = v31;
  v32[2] = 0;
  v32[3] = 0;
  v33 = *(v4 + 48);
  sub_21BD6F398(v27, v29);
  v34 = swift_allocObject();
  sub_21BD6F3FC(v29, v34 + v30);
  v35 = v43;
  sub_21BBB7D84(v20, v43, &qword_27CDBBB30, &qword_21BE48598);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB48, &unk_21BE485B0);
  v37 = *(v36 + 52);
  v38 = sub_21BE2934C();
  result = (*(*(v38 - 8) + 16))(v35 + v37, v27 + v33, v38);
  v40 = (v35 + *(v36 + 56));
  *v40 = sub_21BD6F68C;
  v40[1] = v34;
  return result;
}

void *sub_21BD6E7FC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB58, &qword_21BE485D0);
  MEMORY[0x28223BE20](v3);
  v5 = &v30[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB60, &qword_21BE485D8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB68, &unk_21BE485E0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v30[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v30[-v13];
  v15 = type metadata accessor for DisclosureModalHostingView(0);
  v16 = (a1 + *(v15 + 24));
  v17 = *v16;
  v18 = *(v16 + 1);
  v30[16] = v17;
  v31 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE283FC();
  if (v30[15] == 1)
  {
    *v8 = sub_21BE2770C();
    *(v8 + 1) = 0;
    v8[16] = 1;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBBB90, &unk_21BE485F0);
    sub_21BD6E0E4(&v8[*(v19 + 44)]);
    if (qword_27CDB4E58 != -1)
    {
      swift_once();
    }

    v20 = byte_27CDD41B0;
    v21 = objc_opt_self();
    v22 = &selRef_systemGroupedBackgroundColor;
    if (!v20)
    {
      v22 = &selRef_secondarySystemBackgroundColor;
    }

    v23 = [v21 *v22];
    v24 = sub_21BE2826C();
    v25 = sub_21BE27B7C();
    sub_21BBB7D84(v8, v12, &qword_27CDBBB60, &qword_21BE485D8);
    v26 = &v12[*(v9 + 36)];
    *v26 = v24;
    v26[8] = v25;
    sub_21BBB7D84(v12, v14, &qword_27CDBBB68, &unk_21BE485E0);
    sub_21BBA3854(v14, v5, &qword_27CDBBB68, &unk_21BE485E0);
    swift_storeEnumTagMultiPayload();
    sub_21BD6F7EC();
    sub_21BD6F328();
    sub_21BE2784C();
    return sub_21BB3A4CC(v14, &qword_27CDBBB68, &unk_21BE485E0);
  }

  else
  {
    v28 = *(a1 + *(v15 + 32));
    *v5 = v28;
    swift_storeEnumTagMultiPayload();
    sub_21BD6F7EC();
    sub_21BD6F328();
    v29 = v28;
    return sub_21BE2784C();
  }
}

double sub_21BD6EB60(uint64_t a1)
{
  v2 = type metadata accessor for DisclosureModalHostingView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19[-v8];
  v10 = (a1 + *(v3 + 36));
  v11 = *v10;
  v12 = *(v10 + 1);
  v21 = *v10;
  v22 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE283FC();
  if ((v20 & 1) == 0)
  {
    v21 = v11;
    v22 = v12;
    v20 = 1;
    sub_21BE2840C();
    v14 = sub_21BE28DAC();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    sub_21BD6F398(a1, &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    sub_21BE28D7C();
    v15 = sub_21BE28D6C();
    v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    *(v17 + 16) = v15;
    *(v17 + 24) = v18;
    sub_21BD6F3FC(v6, v17 + v16);
    sub_21BBA932C(0, 0, v9, &unk_21BE485C8, v17);
  }

  return result;
}

uint64_t sub_21BD6ED90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_21BE28D7C();
  v4[3] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_21BD6EE28, v6, v5);
}

uint64_t sub_21BD6EE28()
{
  type metadata accessor for DisclosureModalHostingView(0);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_21BC34664;
  v2 = *(v0 + 16);

  return sub_21BD6C7B8(v2);
}

uint64_t sub_21BD6EED0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DisclosureModalHostingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  return sub_21BE2840C();
}

uint64_t sub_21BD6EF44()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBA6A64;

  return sub_21BD6D9D8(v2, v3, v4);
}

uint64_t sub_21BD6EFF8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBB7EB8;

  return sub_21BD6D694(v2, v3, v4);
}

uint64_t objectdestroyTm_27()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_21BD6F100()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBB7EB8;

  return sub_21BD6D310(v2, v3, v4);
}

uint64_t type metadata accessor for DisclosureModalHostingView(uint64_t a1)
{
  result = qword_27CDBBAF8;
  if (!qword_27CDBBAF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BD6F228(uint64_t a1)
{
  sub_21BE25B9C();
  if (v1 <= 0x3F)
  {
    sub_21BB40410(319);
    if (v2 <= 0x3F)
    {
      sub_21BB403C0();
      if (v3 <= 0x3F)
      {
        sub_21BB3A2A4(319, &qword_280BD8A28, 0x277CBEBD0);
        if (v4 <= 0x3F)
        {
          sub_21BE2934C();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_21BD6F328()
{
  result = qword_27CDBBB10;
  if (!qword_27CDBBB10)
  {
    result = swift_getWitnessTable(aQ_10, &type metadata for FamilyDisclosureControllerRepresentable, v0, v1);
    atomic_store(result, &qword_27CDBBB10);
  }

  return result;
}

uint64_t sub_21BD6F398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisclosureModalHostingView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BD6F3FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisclosureModalHostingView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_21BD6F460()
{
  v1 = *(type metadata accessor for DisclosureModalHostingView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21BD6EB60(v2);
}

uint64_t objectdestroy_50Tm()
{
  v1 = type metadata accessor for DisclosureModalHostingView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = sub_21BE25B9C();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_21BE26F5C();
    (*(*(v5 - 8) + 8))(v2 + v4, v5);
  }

  else
  {
  }

  v6 = v1[10];
  v7 = sub_21BE2934C();
  (*(*(v7 - 8) + 8))(v2 + v6, v7);

  return swift_deallocObject();
}

uint64_t sub_21BD6F68C(uint64_t a1)
{
  v3 = *(type metadata accessor for DisclosureModalHostingView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21BD6EED0(a1, v4);
}

uint64_t sub_21BD6F6FC(uint64_t a1)
{
  v4 = *(type metadata accessor for DisclosureModalHostingView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21BBB7EB8;

  return sub_21BD6ED90(a1, v6, v7, v1 + v5);
}

unint64_t sub_21BD6F7EC()
{
  result = qword_27CDBBB70;
  if (!qword_27CDBBB70)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBBB68, &unk_21BE485E0);
    v4[0] = sub_21BB3B038(&qword_27CDBBB78, &qword_27CDBBB60, &qword_21BE485D8, MEMORY[0x277CE1198]);
    v4[1] = sub_21BB3B038(&qword_27CDBBB80, &qword_27CDB9F30, &qword_21BE48230, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBBB70);
  }

  return result;
}

unint64_t sub_21BD6F8D0()
{
  result = qword_27CDBBBC0;
  if (!qword_27CDBBBC0)
  {
    result = swift_getWitnessTable(aMF_2, &type metadata for FamilyDisclosureControllerRepresentable, v0, v1);
    atomic_store(result, &qword_27CDBBBC0);
  }

  return result;
}

uint64_t sub_21BD6F92C()
{
  if (*v0 == 1)
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass_];
    v3 = sub_21BE2599C();

    return v3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_21BE32770;
    v6 = sub_21BE2917C();
    v8 = v7;
    *(v5 + 56) = MEMORY[0x277D837D0];
    *(v5 + 64) = sub_21BBBEFE8();
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    type metadata accessor for ConfirmChildAgeViewModel();
    v9 = swift_getObjCClassFromMetadata();
    v10 = objc_opt_self();

    v11 = [v10 bundleForClass_];
    sub_21BE2599C();

    v12 = sub_21BE289DC();

    return v12;
  }
}

uint64_t sub_21BD6FB28(void *a1)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  if (v3 == 1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_21BE33260;
    v5 = sub_21BE2917C();
    v7 = v6;
    v8 = MEMORY[0x277D837D0];
    *(v4 + 56) = MEMORY[0x277D837D0];
    v9 = sub_21BBBEFE8();
    *(v4 + 64) = v9;
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    [a1 age];
    sub_21BE28ECC();
    __swift_project_boxed_opaque_existential_1Tm(v23, v23[3]);
    v10 = sub_21BE29B8C();
    *(v4 + 96) = v8;
    *(v4 + 104) = v9;
    *(v4 + 72) = v10;
    *(v4 + 80) = v11;
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v13 = objc_opt_self();

    v14 = [v13 bundleForClass_];
  }

  else
  {
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_21BE32770;
    v16 = sub_21BE2917C();
    v18 = v17;
    *(v15 + 56) = MEMORY[0x277D837D0];
    *(v15 + 64) = sub_21BBBEFE8();
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    type metadata accessor for ConfirmChildAgeViewModel();
    v19 = swift_getObjCClassFromMetadata();
    v20 = objc_opt_self();

    v14 = [v20 bundleForClass_];
  }

  sub_21BE2599C();

  v21 = sub_21BE289DC();

  return v21;
}

uint64_t ShowParentalCellType.hashValue.getter()
{
  v1 = *v0;
  sub_21BE29ACC();
  MEMORY[0x21CF04C80](v1);
  return sub_21BE29B0C();
}

unint64_t sub_21BD6FF20()
{
  result = qword_27CDBBBD0;
  if (!qword_27CDBBBD0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ShowParentalCellType, &type metadata for ShowParentalCellType, v0, v1);
    atomic_store(result, &qword_27CDBBBD0);
  }

  return result;
}

uint64_t sub_21BD6FF84(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = result + 40;
    v6 = MEMORY[0x277D84F90];
    v15 = result + 40;
    do
    {
      v7 = (v5 + 16 * v4);
      v8 = v4;
      while (1)
      {
        if (v8 >= v3)
        {
          __break(1u);
LABEL_18:
          __break(1u);
          return result;
        }

        v4 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_18;
        }

        v9 = *(v7 - 1);
        v10 = *v7;
        sub_21BBBF0E4();
        sub_21BBBF138();

        if (sub_21BE2896C())
        {
          break;
        }

        ++v8;
        v7 += 2;
        if (v4 == v3)
        {
          goto LABEL_16;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21BC599DC(0, *(v6 + 16) + 1, 1);
      }

      v5 = v15;
      v12 = *(v6 + 16);
      v11 = *(v6 + 24);
      if (v12 >= v11 >> 1)
      {
        result = sub_21BC599DC((v11 > 1), v12 + 1, 1);
      }

      *(v6 + 16) = v12 + 1;
      v13 = v6 + 16 * v12;
      *(v13 + 32) = v9;
      *(v13 + 40) = v10;
    }

    while (v4 != v3);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

LABEL_16:
  v14 = *(v6 + 16);

  return v14 != 0;
}

char *sub_21BD70140(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a1;

  sub_21BD754AC(&v15, a2, a3, a4);

  v7 = v15;
  v8 = *(v15 + 2);
  if (v8)
  {
    v15 = MEMORY[0x277D84F90];
    sub_21BC599FC(0, v8, 0);
    v9 = v15;
    v10 = *(v15 + 2);
    v11 = 56;
    do
    {
      v12 = v7[v11];
      v15 = v9;
      v13 = *(v9 + 3);
      if (v10 >= v13 >> 1)
      {
        sub_21BC599FC((v13 > 1), v10 + 1, 1);
        v9 = v15;
      }

      *(v9 + 2) = v10 + 1;
      v9[v10 + 32] = v12;
      v11 += 32;
      ++v10;
      --v8;
    }

    while (v8);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v9;
}

uint64_t sub_21BD70288(uint64_t a1, uint64_t a2)
{
  v4 = *v2;

  v6 = sub_21BE2975C();
  sub_21BD72BA0(&v6, a2, v4);

  return v6;
}

BOOL sub_21BD70320(void *a1, void *a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v5);
  v7 = (*(v6 + 32))(v5, v6);
  if (*(a3 + 16) && (v8 = sub_21BBB3274(v7), (v9 & 1) != 0))
  {
    v10 = *(*(a3 + 56) + 8 * v8);
  }

  else
  {
    v10 = 0;
  }

  v11 = a2[3];
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v11);
  v13 = (*(v12 + 32))(v11, v12);
  v14 = *(a3 + 16);
  if (v14)
  {
    v15 = sub_21BBB3274(v13);
    if (v16)
    {
      v14 = *(*(a3 + 56) + 8 * v15);
    }

    else
    {
      v14 = 0;
    }
  }

  return v14 < v10;
}

BOOL sub_21BD70410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v5 = *(a2 + 24);
    v6 = sub_21BBB3230(*(a1 + 24));
    if (v7)
    {
      v8 = *(*(a3 + 56) + 8 * v6);
      v3 = *(a3 + 16);
      if (!v3)
      {
        return v3 < v8;
      }
    }

    else
    {
      v8 = 0;
      v3 = *(a3 + 16);
      if (!v3)
      {
        return v3 < v8;
      }
    }

    v9 = sub_21BBB3230(v5);
    if (v10)
    {
      v3 = *(*(a3 + 56) + 8 * v9);
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v3 < v8;
}

uint64_t sub_21BD704A4(uint64_t a1, uint64_t a2)
{

  v4 = sub_21BE2975C();
  sub_21BD73F94(&v4, a2, sub_21BDFD58C, sub_21BD71510);

  return v4;
}

uint64_t sub_21BD70548(char *__src, char *a2, unint64_t a3, char *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = a2 - __src;
  v10 = (a2 - __src) / 40;
  v11 = a3 - a2;
  v12 = (a3 - a2) / 40;
  if (v10 >= v12)
  {
    v32 = a2;
    if (a4 != a2 || &a2[40 * v12] <= a4)
    {
      memmove(a4, a2, 40 * v12);
    }

    v63 = &v6[40 * v12];
    if (v11 < 40 || v32 <= v8)
    {
      v31 = v32;
    }

    else
    {
      do
      {
        v56 = v32;
        v33 = (v32 - 40);
        v34 = (v63 - 40);
        v7 -= 40;
        v55 = v33;
        while (1)
        {
          sub_21BB3A35C(v34, v60);
          sub_21BB3A35C(v33, v57);
          v37 = v61;
          v38 = v62;
          __swift_project_boxed_opaque_existential_1Tm(v60, v61);
          v39 = (*(v38 + 32))(v37, v38);
          if (*(a5 + 16) && (v40 = sub_21BBB3274(v39), (v41 & 1) != 0))
          {
            v42 = *(*(a5 + 56) + 8 * v40);
          }

          else
          {
            v42 = 0;
          }

          v43 = v58;
          v44 = v59;
          __swift_project_boxed_opaque_existential_1Tm(v57, v58);
          v45 = (*(v44 + 32))(v43, v44);
          if (*(a5 + 16) && (v46 = sub_21BBB3274(v45), (v47 & 1) != 0))
          {
            v48 = *(*(a5 + 56) + 8 * v46);
          }

          else
          {
            v48 = 0;
          }

          __swift_destroy_boxed_opaque_existential_0Tm(v57);
          __swift_destroy_boxed_opaque_existential_0Tm(v60);
          if (v48 < v42)
          {
            break;
          }

          v33 = v55;
          if (v7 + 40 != v34 + 40)
          {
            v49 = *v34;
            v50 = *(v34 + 16);
            *(v7 + 32) = *(v34 + 32);
            *v7 = v49;
            *(v7 + 16) = v50;
          }

          v35 = v34 - 40;
          v7 -= 40;
          v36 = v34 > v6;
          v34 -= 40;
          if (!v36)
          {
            v63 = (v35 + 40);
            v31 = v56;
            goto LABEL_50;
          }
        }

        v31 = v55;
        if ((v7 + 40) != v56)
        {
          v51 = *v55;
          v52 = *(v55 + 1);
          *(v7 + 32) = *(v55 + 4);
          *v7 = v51;
          *(v7 + 16) = v52;
        }

        v63 = (v34 + 40);
        if (v34 + 40 <= v6)
        {
          break;
        }

        v32 = v55;
      }

      while (v55 > v8);
      v63 = (v34 + 40);
    }
  }

  else
  {
    if (a4 != __src || &__src[40 * v10] <= a4)
    {
      memmove(a4, __src, 40 * v10);
    }

    v63 = &v6[40 * v10];
    if (v9 >= 40 && a2 < v7)
    {
      v14 = a2;
      while (1)
      {
        sub_21BB3A35C(v14, v60);
        sub_21BB3A35C(v6, v57);
        v15 = v61;
        v16 = v62;
        __swift_project_boxed_opaque_existential_1Tm(v60, v61);
        v17 = (*(v16 + 32))(v15, v16);
        if (*(a5 + 16) && (v18 = sub_21BBB3274(v17), (v19 & 1) != 0))
        {
          v20 = *(*(a5 + 56) + 8 * v18);
        }

        else
        {
          v20 = 0;
        }

        v21 = v58;
        v22 = v59;
        __swift_project_boxed_opaque_existential_1Tm(v57, v58);
        v23 = (*(v22 + 32))(v21, v22);
        if (*(a5 + 16) && (v24 = sub_21BBB3274(v23), (v25 & 1) != 0))
        {
          v26 = *(*(a5 + 56) + 8 * v24);
        }

        else
        {
          v26 = 0;
        }

        __swift_destroy_boxed_opaque_existential_0Tm(v57);
        __swift_destroy_boxed_opaque_existential_0Tm(v60);
        if (v26 >= v20)
        {
          break;
        }

        v27 = v14;
        v28 = v8 == v14;
        v14 += 40;
        if (!v28)
        {
          goto LABEL_21;
        }

LABEL_22:
        v8 += 40;
        if (v6 >= v63 || v14 >= v7)
        {
          goto LABEL_24;
        }
      }

      v27 = v6;
      v28 = v8 == v6;
      v6 += 40;
      if (v28)
      {
        goto LABEL_22;
      }

LABEL_21:
      v29 = *v27;
      v30 = *(v27 + 1);
      *(v8 + 4) = *(v27 + 4);
      *v8 = v29;
      *(v8 + 1) = v30;
      goto LABEL_22;
    }

LABEL_24:
    v31 = v8;
  }

LABEL_50:
  v53 = (v63 - v6) / 40;
  if (v31 != v6 || v31 >= &v6[40 * v53])
  {
    memmove(v31, v6, 40 * v53);
  }

  return 1;
}

uint64_t sub_21BD70978(uint64_t *a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v24 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v24 = sub_21BDFD0AC(v24);
  }

  v20 = v6;
  *v6 = v24;
  v8 = (v24 + 16);
  v9 = *(v24 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v20 = v24;
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v6 = &v24[16 * v9];
      v12 = *v6;
      v13 = &v8[2 * v9];
      v14 = v13[1];
      __src = (v10 + 40 * *v6);
      v15 = (v10 + 40 * *v13);
      v16 = v10 + 40 * v14;

      sub_21BD70548(__src, v15, v16, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v20 = v24;

        return 1;
      }

      if (v14 < v12)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v17 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_13;
      }

      *v6 = v12;
      v6[1] = v14;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_14;
      }

      v9 = v17 - 1;
      memmove(v13, v13 + 2, 16 * v18);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v20 = v24;
    __break(1u);
  }

  return result;
}

uint64_t sub_21BD70B24(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a3[1];
  v135 = MEMORY[0x277D84F90];
  if (v6 >= 1)
  {
    swift_bridgeObjectRetain_n();
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v124 = a5;
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 >= v6)
      {
        v29 = v7 + 1;
      }

      else
      {
        v125 = v6;
        v11 = *a3;
        sub_21BB3A35C(*a3 + 40 * v10, &v132);
        sub_21BB3A35C(v11 + 40 * v9, v129);
        v12 = sub_21BD70320(&v132, v129, a5);
        if (v128)
        {
          __swift_destroy_boxed_opaque_existential_0Tm(v129);
          __swift_destroy_boxed_opaque_existential_0Tm(&v132);
          goto LABEL_112;
        }

        v13 = v12;
        v114 = v8;
        __swift_destroy_boxed_opaque_existential_0Tm(v129);
        __swift_destroy_boxed_opaque_existential_0Tm(&v132);
        v14 = v9 + 2;
        v115 = v9;
        v15 = 40 * v9;
        v16 = v11 + 40 * v9 + 80;
        while (v125 != v14)
        {
          sub_21BB3A35C(v16, &v132);
          sub_21BB3A35C(v16 - 40, v129);
          v19 = v133;
          v18 = v134;
          __swift_project_boxed_opaque_existential_1Tm(&v132, v133);
          v20 = (*(v18 + 32))(v19, v18);
          if (*(a5 + 16) && (v21 = sub_21BBB3274(v20), (v22 & 1) != 0))
          {
            v23 = *(*(a5 + 56) + 8 * v21);
          }

          else
          {
            v23 = 0;
          }

          v24 = v130;
          v25 = v131;
          __swift_project_boxed_opaque_existential_1Tm(v129, v130);
          v26 = (*(v25 + 32))(v24, v25);
          if (*(a5 + 16) && (v27 = sub_21BBB3274(v26), (v28 & 1) != 0))
          {
            v17 = *(*(a5 + 56) + 8 * v27);
          }

          else
          {
            v17 = 0;
          }

          __swift_destroy_boxed_opaque_existential_0Tm(v129);
          __swift_destroy_boxed_opaque_existential_0Tm(&v132);
          ++v14;
          v16 += 40;
          if (((v13 ^ (v17 >= v23)) & 1) == 0)
          {
            v125 = v14 - 1;
            break;
          }
        }

        v8 = v114;
        if (v13)
        {
          v30 = v115;
          v29 = v125;
          if (v125 < v115)
          {
            goto LABEL_135;
          }

          if (v115 >= v125)
          {
            v9 = v115;
          }

          else
          {
            v31 = 40 * v125 - 40;
            v32 = v125;
            do
            {
              if (v30 != --v32)
              {
                v33 = *a3;
                if (!*a3)
                {
                  goto LABEL_138;
                }

                v34 = v33 + v15;
                v35 = v33 + v31;
                sub_21BB3D104((v33 + v15), &v132);
                v36 = *(v35 + 32);
                v37 = *(v35 + 16);
                *v34 = *v35;
                *(v34 + 16) = v37;
                *(v34 + 32) = v36;
                sub_21BB3D104(&v132, v35);
              }

              ++v30;
              v31 -= 40;
              v15 += 40;
            }

            while (v30 < v32);
            v9 = v115;
          }
        }

        else
        {
          v9 = v115;
          v29 = v125;
        }
      }

      v38 = a3[1];
      if (v29 >= v38)
      {
        goto LABEL_39;
      }

      if (__OFSUB__(v29, v9))
      {
        goto LABEL_132;
      }

      if (v29 - v9 >= a4)
      {
        goto LABEL_39;
      }

      if (__OFADD__(v9, a4))
      {
        goto LABEL_133;
      }

      if (v9 + a4 < v38)
      {
        v38 = v9 + a4;
      }

      if (v38 < v9)
      {
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_137:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_138:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_139:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_140:
        result = swift_bridgeObjectRelease_n();
        __break(1u);
        return result;
      }

      if (v29 == v38)
      {
LABEL_39:
        v7 = v29;
        if (v29 < v9)
        {
          goto LABEL_131;
        }
      }

      else
      {
        v119 = v38;
        v116 = v9;
        v93 = *a3;
        v94 = *a3 + 40 * v29;
        v95 = v9 - v29;
        do
        {
          v127 = v29;
          v120 = v95;
          v122 = v94;
          v96 = v94;
          do
          {
            sub_21BB3A35C(v96, &v132);
            sub_21BB3A35C(v96 - 40, v129);
            v97 = v133;
            v98 = v134;
            __swift_project_boxed_opaque_existential_1Tm(&v132, v133);
            v99 = (*(v98 + 32))(v97, v98);
            if (*(a5 + 16) && (v100 = sub_21BBB3274(v99), (v101 & 1) != 0))
            {
              v102 = *(*(a5 + 56) + 8 * v100);
            }

            else
            {
              v102 = 0;
            }

            v103 = v130;
            v104 = v131;
            __swift_project_boxed_opaque_existential_1Tm(v129, v130);
            v105 = (*(v104 + 32))(v103, v104);
            if (*(a5 + 16) && (v106 = sub_21BBB3274(v105), (v107 & 1) != 0))
            {
              v108 = *(*(a5 + 56) + 8 * v106);
            }

            else
            {
              v108 = 0;
            }

            __swift_destroy_boxed_opaque_existential_0Tm(v129);
            __swift_destroy_boxed_opaque_existential_0Tm(&v132);
            if (v108 >= v102)
            {
              break;
            }

            if (!v93)
            {
              goto LABEL_136;
            }

            sub_21BB3D104(v96, &v132);
            v109 = *(v96 - 24);
            *v96 = *(v96 - 40);
            *(v96 + 16) = v109;
            *(v96 + 32) = *(v96 - 8);
            sub_21BB3D104(&v132, v96 - 40);
            v96 -= 40;
          }

          while (!__CFADD__(v95++, 1));
          v29 = v127 + 1;
          v94 = v122 + 40;
          v95 = v120 - 1;
        }

        while (v127 + 1 != v119);
        v9 = v116;
        v7 = v119;
        if (v119 < v116)
        {
          goto LABEL_131;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_21BBBCBFC(0, *(v8 + 2) + 1, 1, v8);
      }

      v40 = *(v8 + 2);
      v39 = *(v8 + 3);
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        v8 = sub_21BBBCBFC((v39 > 1), v40 + 1, 1, v8);
      }

      *(v8 + 2) = v41;
      v42 = v8 + 32;
      v43 = &v8[16 * v40 + 32];
      *v43 = v9;
      *(v43 + 1) = v7;
      v135 = v8;
      v126 = *a1;
      if (!*a1)
      {
        goto LABEL_139;
      }

      if (v40)
      {
        v118 = v7;
        v121 = v8 + 32;
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
LABEL_60:
            if (v48)
            {
              goto LABEL_122;
            }

            v61 = &v8[16 * v41];
            v63 = *v61;
            v62 = *(v61 + 1);
            v64 = __OFSUB__(v62, v63);
            v65 = v62 - v63;
            v66 = v64;
            if (v64)
            {
              goto LABEL_125;
            }

            v67 = &v42[16 * v44];
            v69 = *v67;
            v68 = *(v67 + 1);
            v55 = __OFSUB__(v68, v69);
            v70 = v68 - v69;
            if (v55)
            {
              goto LABEL_128;
            }

            if (__OFADD__(v65, v70))
            {
              goto LABEL_129;
            }

            if (v65 + v70 >= v47)
            {
              if (v47 < v70)
              {
                v44 = v41 - 2;
              }

              goto LABEL_81;
            }

            goto LABEL_74;
          }

          v71 = &v8[16 * v41];
          v73 = *v71;
          v72 = *(v71 + 1);
          v55 = __OFSUB__(v72, v73);
          v65 = v72 - v73;
          v66 = v55;
LABEL_74:
          if (v66)
          {
            goto LABEL_124;
          }

          v74 = &v42[16 * v44];
          v76 = *v74;
          v75 = *(v74 + 1);
          v55 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v55)
          {
            goto LABEL_127;
          }

          if (v77 < v65)
          {
            goto LABEL_3;
          }

LABEL_81:
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
            goto LABEL_134;
          }

          v82 = *a3;
          if (!*a3)
          {
            goto LABEL_137;
          }

          v83 = v8;
          v84 = &v42[16 * v44 - 16];
          v85 = *v84;
          v86 = v44;
          v87 = &v42[16 * v44];
          v88 = *(v87 + 1);
          v89 = (v82 + 40 * *v84);
          v90 = (v82 + 40 * *v87);
          v91 = v82 + 40 * v88;

          sub_21BD70548(v89, v90, v91, v126, v124);
          if (v128)
          {

            v135 = v83;
            goto LABEL_112;
          }

          if (v88 < v85)
          {
            goto LABEL_117;
          }

          v92 = *(v83 + 16);
          if (v86 > v92)
          {
            goto LABEL_118;
          }

          *v84 = v85;
          *(v84 + 1) = v88;
          if (v86 >= v92)
          {
            goto LABEL_119;
          }

          v41 = v92 - 1;
          memmove(v87, v87 + 16, 16 * (v92 - 1 - v86));
          v8 = v83;
          *(v83 + 16) = v92 - 1;
          v42 = v121;
          a5 = v124;
          if (v92 <= 2)
          {
LABEL_3:
            v135 = v8;
            v7 = v118;
            goto LABEL_4;
          }
        }

        v49 = &v42[16 * v41];
        v50 = *(v49 - 8);
        v51 = *(v49 - 7);
        v55 = __OFSUB__(v51, v50);
        v52 = v51 - v50;
        if (v55)
        {
          goto LABEL_120;
        }

        v54 = *(v49 - 6);
        v53 = *(v49 - 5);
        v55 = __OFSUB__(v53, v54);
        v47 = v53 - v54;
        v48 = v55;
        if (v55)
        {
          goto LABEL_121;
        }

        v56 = &v8[16 * v41];
        v58 = *v56;
        v57 = *(v56 + 1);
        v55 = __OFSUB__(v57, v58);
        v59 = v57 - v58;
        if (v55)
        {
          goto LABEL_123;
        }

        v55 = __OFADD__(v47, v59);
        v60 = v47 + v59;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v60 >= v52)
        {
          v78 = &v42[16 * v44];
          v80 = *v78;
          v79 = *(v78 + 1);
          v55 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v55)
          {
            goto LABEL_130;
          }

          if (v47 < v81)
          {
            v44 = v41 - 2;
          }

          goto LABEL_81;
        }

        goto LABEL_60;
      }

LABEL_4:
      v6 = a3[1];
      if (v7 >= v6)
      {
        goto LABEL_109;
      }
    }
  }

  swift_bridgeObjectRetain_n();
LABEL_109:
  v111 = *a1;
  if (!*a1)
  {
    goto LABEL_140;
  }

  sub_21BD70978(&v135, v111, a3, a5);
  if (v128)
  {

LABEL_112:
    swift_bridgeObjectRelease_n();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_21BD71360(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v6 = *a4;
    v7 = *a4 + 40 * a3;
    v8 = result - a3;
LABEL_5:
    v32 = a3;
    v24 = v8;
    v25 = v7;
    while (1)
    {
      sub_21BB3A35C(v7, &v29);
      sub_21BB3A35C(v7 - 40, v26);
      v9 = v30;
      v10 = v31;
      __swift_project_boxed_opaque_existential_1Tm(&v29, v30);
      v11 = (*(v10 + 32))(v9, v10);
      if (*(a5 + 16) && (v12 = sub_21BBB3274(v11), (v13 & 1) != 0))
      {
        v14 = *(*(a5 + 56) + 8 * v12);
      }

      else
      {
        v14 = 0;
      }

      v15 = v27;
      v16 = v28;
      __swift_project_boxed_opaque_existential_1Tm(v26, v27);
      v17 = (*(v16 + 32))(v15, v16);
      if (*(a5 + 16) && (v18 = sub_21BBB3274(v17), (v19 & 1) != 0))
      {
        v20 = *(*(a5 + 56) + 8 * v18);
      }

      else
      {
        v20 = 0;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      result = __swift_destroy_boxed_opaque_existential_0Tm(&v29);
      if (v20 >= v14)
      {
LABEL_4:
        a3 = v32 + 1;
        v7 = v25 + 40;
        v8 = v24 - 1;
        if (v32 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      sub_21BB3D104(v7, &v29);
      v21 = *(v7 - 24);
      *v7 = *(v7 - 40);
      *(v7 + 16) = v21;
      *(v7 + 32) = *(v7 - 8);
      result = sub_21BB3D104(&v29, v7 - 40);
      v7 -= 40;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21BD71510(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_21BE2991C();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB59E8, &unk_21BE3A400);
        v8 = sub_21BE28C7C();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;

      sub_21BD70B24(v9, v10, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_21BD71360(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_21BD71668(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v8);
  v10 = (*(v9 + 32))(v8, v9);
  if (*(a3 + 16) && (v11 = sub_21BBB3274(v10), (v12 & 1) != 0))
  {
    v13 = *(*(a3 + 56) + 8 * v11);
  }

  else
  {
    v13 = 0;
  }

  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v14);
  result = (*(v15 + 24))(v14, v15);
  if (result)
  {
    v17 = a4;
  }

  else
  {
    v17 = 0;
  }

  v18 = v13 + v17;
  if (__OFADD__(v13, v17))
  {
    __break(1u);
  }

  else
  {
    v19 = a2[3];
    v20 = a2[4];
    __swift_project_boxed_opaque_existential_1Tm(a2, v19);
    v21 = (*(v20 + 32))(v19, v20);
    if (*(a3 + 16) && (v22 = sub_21BBB3274(v21), (v23 & 1) != 0))
    {
      v24 = *(*(a3 + 56) + 8 * v22);
    }

    else
    {
      v24 = 0;
    }

    v25 = a2[3];
    v26 = a2[4];
    __swift_project_boxed_opaque_existential_1Tm(a2, v25);
    result = (*(v26 + 24))(v25, v26);
    if (result)
    {
      v27 = a4;
    }

    else
    {
      v27 = 0;
    }

    v28 = __OFADD__(v24, v27);
    v29 = v24 + v27;
    if (!v28)
    {
      return v29 < v18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21BD717F0(char *__src, char *a2, unint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v85 = a6;
  v7 = a3;
  v8 = __src;
  v9 = a2 - __src;
  v10 = (a2 - __src) / 40;
  v11 = a3 - a2;
  v12 = (a3 - a2) / 40;
  if (v10 < v12)
  {
    v13 = a2;
    v14 = a4;
    if (a4 != __src || &__src[40 * v10] <= a4)
    {
      memmove(a4, __src, 40 * v10);
    }

    v76 = &v14[40 * v10];
    if (v9 >= 40 && v13 < v7)
    {
      v15 = v13;
      while (1)
      {
        __dst = v15;
        sub_21BB3A35C(v15, v82);
        sub_21BB3A35C(v14, v79);
        v16 = v83;
        v17 = v84;
        __swift_project_boxed_opaque_existential_1Tm(v82, v83);
        v18 = (*(v17 + 32))(v16, v17);
        if (*(a5 + 16) && (v19 = sub_21BBB3274(v18), (v20 & 1) != 0))
        {
          v21 = *(*(a5 + 56) + 8 * v19);
        }

        else
        {
          v21 = 0;
        }

        v22 = v83;
        v23 = v84;
        __swift_project_boxed_opaque_existential_1Tm(v82, v83);
        result = (*(v23 + 24))(v22, v23);
        v25 = v85;
        if ((result & 1) == 0)
        {
          v25 = 0;
        }

        v26 = __OFADD__(v21, v25);
        v27 = v21 + v25;
        if (v26)
        {
          goto LABEL_67;
        }

        v28 = v80;
        v29 = v81;
        __swift_project_boxed_opaque_existential_1Tm(v79, v80);
        v30 = (*(v29 + 32))(v28, v29);
        if (*(a5 + 16) && (v31 = sub_21BBB3274(v30), (v32 & 1) != 0))
        {
          v33 = *(*(a5 + 56) + 8 * v31);
        }

        else
        {
          v33 = 0;
        }

        v34 = v80;
        v35 = v81;
        __swift_project_boxed_opaque_existential_1Tm(v79, v80);
        result = (*(v35 + 24))(v34, v35);
        v36 = v85;
        if ((result & 1) == 0)
        {
          v36 = 0;
        }

        v37 = v33 + v36;
        if (__OFADD__(v33, v36))
        {
          goto LABEL_68;
        }

        __swift_destroy_boxed_opaque_existential_0Tm(v79);
        __swift_destroy_boxed_opaque_existential_0Tm(v82);
        if (v37 >= v27)
        {
          break;
        }

        v38 = __dst;
        v15 = (__dst + 40);
        if (v8 != __dst)
        {
          goto LABEL_26;
        }

LABEL_27:
        v8 += 40;
        if (v14 >= v76 || v15 >= v7)
        {
          goto LABEL_29;
        }
      }

      v38 = v14;
      v39 = v8 == v14;
      v14 += 40;
      v15 = __dst;
      if (v39)
      {
        goto LABEL_27;
      }

LABEL_26:
      v40 = *v38;
      v41 = *(v38 + 1);
      *(v8 + 4) = *(v38 + 4);
      *v8 = v40;
      *(v8 + 1) = v41;
      goto LABEL_27;
    }

LABEL_29:
    v42 = v8;
    goto LABEL_62;
  }

  if (a4 != a2 || &a2[40 * v12] <= a4)
  {
    v43 = a2;
    v44 = a4;
    memmove(a4, a2, 40 * v12);
    a4 = v44;
    a2 = v43;
  }

  v76 = &a4[40 * v12];
  v14 = a4;
  if (v11 < 40 || a2 <= v8)
  {
    v42 = a2;
LABEL_62:
    v73 = (v76 - v14) / 40;
    if (v42 != v14 || v42 >= &v14[40 * v73])
    {
      memmove(v42, v14, 40 * v73);
    }

    return 1;
  }

  v74 = a4;
LABEL_36:
  __dsta = a2;
  v45 = a2 - 40;
  v46 = (v76 - 40);
  v7 -= 40;
  v75 = a2 - 40;
  while (1)
  {
    sub_21BB3A35C(v46, v82);
    sub_21BB3A35C(v45, v79);
    v50 = v83;
    v49 = v84;
    __swift_project_boxed_opaque_existential_1Tm(v82, v83);
    v51 = (*(v49 + 32))(v50, v49);
    if (*(a5 + 16) && (v52 = sub_21BBB3274(v51), (v53 & 1) != 0))
    {
      v54 = *(*(a5 + 56) + 8 * v52);
    }

    else
    {
      v54 = 0;
    }

    v55 = v83;
    v56 = v84;
    __swift_project_boxed_opaque_existential_1Tm(v82, v83);
    result = (*(v56 + 24))(v55, v56);
    v57 = v85;
    if ((result & 1) == 0)
    {
      v57 = 0;
    }

    v26 = __OFADD__(v54, v57);
    v58 = v54 + v57;
    if (v26)
    {
      break;
    }

    v59 = v80;
    v60 = v81;
    __swift_project_boxed_opaque_existential_1Tm(v79, v80);
    v61 = (*(v60 + 32))(v59, v60);
    if (*(a5 + 16) && (v62 = sub_21BBB3274(v61), (v63 & 1) != 0))
    {
      v64 = *(*(a5 + 56) + 8 * v62);
    }

    else
    {
      v64 = 0;
    }

    v65 = v80;
    v66 = v81;
    __swift_project_boxed_opaque_existential_1Tm(v79, v80);
    result = (*(v66 + 24))(v65, v66);
    v67 = v85;
    if ((result & 1) == 0)
    {
      v67 = 0;
    }

    v68 = v64 + v67;
    if (__OFADD__(v64, v67))
    {
      goto LABEL_69;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v79);
    __swift_destroy_boxed_opaque_existential_0Tm(v82);
    if (v68 < v58)
    {
      v14 = v74;
      v42 = v75;
      if ((v7 + 40) != __dsta)
      {
        v71 = *v75;
        v72 = *(v75 + 1);
        *(v7 + 32) = *(v75 + 4);
        *v7 = v71;
        *(v7 + 16) = v72;
      }

      v76 = (v46 + 40);
      if (v46 + 40 <= v74 || (a2 = v75, v75 <= v8))
      {
        v76 = (v46 + 40);
        goto LABEL_62;
      }

      goto LABEL_36;
    }

    v14 = v74;
    v45 = v75;
    if (v7 + 40 != v46 + 40)
    {
      v69 = *v46;
      v70 = *(v46 + 16);
      *(v7 + 32) = *(v46 + 32);
      *v7 = v69;
      *(v7 + 16) = v70;
    }

    v47 = v46 - 40;
    v7 -= 40;
    v48 = v46 > v74;
    v46 -= 40;
    if (!v48)
    {
      v76 = (v47 + 40);
      v42 = __dsta;
      goto LABEL_62;
    }
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
  return result;
}

uint64_t sub_21BD71D5C(uint64_t *a1, char *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = a1;
  v8 = *a1;

  v27 = v8;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v27 = sub_21BDFD0AC(v27);
  }

  v22 = v7;
  *v7 = v27;
  v9 = v27 + 16;
  v10 = *(v27 + 2);
  if (v10 < 2)
  {
LABEL_9:

    *v22 = v27;
    return 1;
  }

  else
  {
    while (1)
    {
      v11 = *a3;
      if (!*a3)
      {
        break;
      }

      v12 = v6;
      v13 = &v27[16 * v10];
      v14 = *v13;
      v15 = v9;
      v16 = &v9[16 * v10];
      v17 = *(v16 + 1);
      __src = (v11 + 40 * *v13);
      v18 = (v11 + 40 * *v16);
      v7 = (v11 + 40 * v17);

      sub_21BD717F0(__src, v18, v7, a2, a4, a5);
      v6 = v12;

      if (v12)
      {
        *v22 = v27;

        return 1;
      }

      if (v17 < v14)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v19 = *v15;
      if (v10 - 2 >= *v15)
      {
        goto LABEL_13;
      }

      *v13 = v14;
      *(v13 + 1) = v17;
      v20 = v19 - v10;
      if (v19 < v10)
      {
        goto LABEL_14;
      }

      v9 = v15;
      v10 = v19 - 1;
      memmove(v16, v16 + 16, 16 * v20);
      *v15 = v10;
      if (v10 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v22 = v27;
    __break(1u);
  }

  return result;
}

uint64_t sub_21BD71F08(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v155 = MEMORY[0x277D84F90];
  v7 = a3[1];
  if (v7 >= 1)
  {
    swift_bridgeObjectRetain_n();
    v8 = 0;
    v9 = MEMORY[0x277D84F90];
    v143 = a5;
    while (1)
    {
      v10 = v8;
      if (v8 + 1 >= v7)
      {
        v7 = v8 + 1;
        goto LABEL_34;
      }

      v11 = *a3;
      sub_21BB3A35C(*a3 + 40 * (v8 + 1), &v152);
      sub_21BB3A35C(v11 + 40 * v8, v149);
      v145 = sub_21BD71668(&v152, v149, a5, a6);
      if (v144)
      {
        goto LABEL_128;
      }

      v131 = v9;
      __swift_destroy_boxed_opaque_existential_0Tm(v149);
      __swift_destroy_boxed_opaque_existential_0Tm(&v152);
      v12 = v8 + 2;
      v132 = v8;
      v13 = 40 * v8;
      v14 = v11 + 40 * v10 + 80;
      v140 = v7;
      do
      {
        if (v7 == v12)
        {
          goto LABEL_25;
        }

        sub_21BB3A35C(v14, &v152);
        sub_21BB3A35C(v14 - 40, v149);
        v16 = v153;
        v15 = v154;
        __swift_project_boxed_opaque_existential_1Tm(&v152, v153);
        v17 = (*(v15 + 32))(v16, v15);
        if (*(a5 + 16) && (v18 = sub_21BBB3274(v17), (v19 & 1) != 0))
        {
          v20 = *(*(a5 + 56) + 8 * v18);
        }

        else
        {
          v20 = 0;
        }

        v21 = v153;
        v22 = v154;
        __swift_project_boxed_opaque_existential_1Tm(&v152, v153);
        v23 = (*(v22 + 24))(v21, v22);
        v24 = a6;
        if ((v23 & 1) == 0)
        {
          v24 = 0;
        }

        v25 = v20 + v24;
        if (__OFADD__(v20, v24))
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
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
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }

        v26 = v150;
        v27 = v151;
        __swift_project_boxed_opaque_existential_1Tm(v149, v150);
        v28 = (*(v27 + 32))(v26, v27);
        if (*(a5 + 16) && (v29 = sub_21BBB3274(v28), (v30 & 1) != 0))
        {
          v31 = *(*(a5 + 56) + 8 * v29);
        }

        else
        {
          v31 = 0;
        }

        v32 = v150;
        v33 = v151;
        __swift_project_boxed_opaque_existential_1Tm(v149, v150);
        v34 = (*(v33 + 24))(v32, v33);
        v35 = a6;
        if ((v34 & 1) == 0)
        {
          v35 = 0;
        }

        v36 = v31 + v35;
        if (__OFADD__(v31, v35))
        {
          goto LABEL_130;
        }

        __swift_destroy_boxed_opaque_existential_0Tm(v149);
        __swift_destroy_boxed_opaque_existential_0Tm(&v152);
        v37 = v36 >= v25;
        ++v12;
        v14 += 40;
        v7 = v140;
      }

      while (((v145 ^ v37) & 1) != 0);
      v7 = v12 - 1;
LABEL_25:
      v9 = v131;
      v10 = v132;
      if (v145)
      {
        if (v7 >= v132)
        {
          if (v132 < v7)
          {
            v38 = 40 * v7 - 40;
            v39 = v7;
            do
            {
              if (v10 != --v39)
              {
                v40 = *a3;
                if (!*a3)
                {
                  goto LABEL_153;
                }

                v41 = v40 + v13;
                v42 = v40 + v38;
                sub_21BB3D104((v40 + v13), &v152);
                v43 = *(v42 + 32);
                v44 = *(v42 + 16);
                *v41 = *v42;
                *(v41 + 16) = v44;
                *(v41 + 32) = v43;
                sub_21BB3D104(&v152, v42);
              }

              ++v10;
              v38 -= 40;
              v13 += 40;
            }

            while (v10 < v39);
            v10 = v132;
          }

          goto LABEL_34;
        }

LABEL_150:
        __break(1u);
LABEL_151:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_152:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_153:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_154:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_155:
        result = swift_bridgeObjectRelease_n();
        __break(1u);
        return result;
      }

LABEL_34:
      v45 = a3[1];
      if (v7 >= v45)
      {
LABEL_43:
        v8 = v7;
        if (v7 < v10)
        {
          goto LABEL_146;
        }
      }

      else
      {
        if (__OFSUB__(v7, v10))
        {
          goto LABEL_147;
        }

        if (v7 - v10 >= a4)
        {
          goto LABEL_43;
        }

        if (__OFADD__(v10, a4))
        {
          goto LABEL_148;
        }

        if (v10 + a4 >= v45)
        {
          v46 = a3[1];
        }

        else
        {
          v46 = v10 + a4;
        }

        if (v46 < v10)
        {
          goto LABEL_149;
        }

        if (v7 == v46)
        {
          goto LABEL_43;
        }

        v133 = v10;
        v147 = *a3;
        v101 = *a3 + 40 * v7;
        v102 = v10 - v7;
        v136 = v46;
        do
        {
          v142 = v7;
          v137 = v102;
          v138 = v101;
          v103 = v101;
          do
          {
            sub_21BB3A35C(v103, &v152);
            sub_21BB3A35C(v103 - 40, v149);
            v104 = v153;
            v105 = v154;
            __swift_project_boxed_opaque_existential_1Tm(&v152, v153);
            v106 = (*(v105 + 32))(v104, v105);
            if (*(a5 + 16) && (v107 = sub_21BBB3274(v106), (v108 & 1) != 0))
            {
              v109 = *(*(a5 + 56) + 8 * v107);
            }

            else
            {
              v109 = 0;
            }

            v110 = v153;
            v111 = v154;
            __swift_project_boxed_opaque_existential_1Tm(&v152, v153);
            v112 = (*(v111 + 24))(v110, v111);
            v113 = a6;
            if ((v112 & 1) == 0)
            {
              v113 = 0;
            }

            v63 = __OFADD__(v109, v113);
            v114 = v109 + v113;
            if (v63)
            {
              __break(1u);
LABEL_127:
              __break(1u);
LABEL_128:
              __swift_destroy_boxed_opaque_existential_0Tm(v149);
              __swift_destroy_boxed_opaque_existential_0Tm(&v152);
LABEL_123:
              swift_bridgeObjectRelease_n();
            }

            v115 = v150;
            v116 = v151;
            __swift_project_boxed_opaque_existential_1Tm(v149, v150);
            v117 = (*(v116 + 32))(v115, v116);
            if (*(a5 + 16) && (v118 = sub_21BBB3274(v117), (v119 & 1) != 0))
            {
              v120 = *(*(a5 + 56) + 8 * v118);
            }

            else
            {
              v120 = 0;
            }

            v121 = v150;
            v122 = v151;
            __swift_project_boxed_opaque_existential_1Tm(v149, v150);
            v123 = (*(v122 + 24))(v121, v122);
            v124 = a6;
            if ((v123 & 1) == 0)
            {
              v124 = 0;
            }

            v63 = __OFADD__(v120, v124);
            v125 = v120 + v124;
            if (v63)
            {
              goto LABEL_127;
            }

            __swift_destroy_boxed_opaque_existential_0Tm(v149);
            __swift_destroy_boxed_opaque_existential_0Tm(&v152);
            if (v125 >= v114)
            {
              break;
            }

            if (!v147)
            {
              goto LABEL_151;
            }

            sub_21BB3D104(v103, &v152);
            v126 = *(v103 - 24);
            *v103 = *(v103 - 40);
            *(v103 + 16) = v126;
            *(v103 + 32) = *(v103 - 8);
            sub_21BB3D104(&v152, v103 - 40);
            v103 -= 40;
          }

          while (!__CFADD__(v102++, 1));
          v7 = v142 + 1;
          v101 = v138 + 40;
          v102 = v137 - 1;
          v8 = v136;
        }

        while (v142 + 1 != v136);
        v10 = v133;
        if (v136 < v133)
        {
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
          goto LABEL_150;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_21BBBCBFC(0, *(v9 + 2) + 1, 1, v9);
      }

      v48 = *(v9 + 2);
      v47 = *(v9 + 3);
      v49 = v48 + 1;
      if (v48 >= v47 >> 1)
      {
        v9 = sub_21BBBCBFC((v47 > 1), v48 + 1, 1, v9);
      }

      *(v9 + 2) = v49;
      v50 = v9 + 32;
      v51 = &v9[16 * v48 + 32];
      *v51 = v10;
      *(v51 + 1) = v8;
      v155 = v9;
      v146 = *a1;
      if (!*a1)
      {
        goto LABEL_154;
      }

      if (v48)
      {
        break;
      }

LABEL_4:
      v7 = a3[1];
      if (v8 >= v7)
      {
        goto LABEL_120;
      }
    }

    v135 = v8;
    v141 = v9 + 32;
    while (1)
    {
      v52 = v49 - 1;
      if (v49 >= 4)
      {
        break;
      }

      if (v49 == 3)
      {
        v53 = *(v9 + 4);
        v54 = *(v9 + 5);
        v63 = __OFSUB__(v54, v53);
        v55 = v54 - v53;
        v56 = v63;
LABEL_64:
        if (v56)
        {
          goto LABEL_137;
        }

        v69 = &v9[16 * v49];
        v71 = *v69;
        v70 = *(v69 + 1);
        v72 = __OFSUB__(v70, v71);
        v73 = v70 - v71;
        v74 = v72;
        if (v72)
        {
          goto LABEL_140;
        }

        v75 = &v50[16 * v52];
        v77 = *v75;
        v76 = *(v75 + 1);
        v63 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v63)
        {
          goto LABEL_143;
        }

        if (__OFADD__(v73, v78))
        {
          goto LABEL_144;
        }

        if (v73 + v78 >= v55)
        {
          if (v55 < v78)
          {
            v52 = v49 - 2;
          }

          goto LABEL_85;
        }

        goto LABEL_78;
      }

      v79 = &v9[16 * v49];
      v81 = *v79;
      v80 = *(v79 + 1);
      v63 = __OFSUB__(v80, v81);
      v73 = v80 - v81;
      v74 = v63;
LABEL_78:
      if (v74)
      {
        goto LABEL_139;
      }

      v82 = &v50[16 * v52];
      v84 = *v82;
      v83 = *(v82 + 1);
      v63 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v63)
      {
        goto LABEL_142;
      }

      if (v85 < v73)
      {
        goto LABEL_3;
      }

LABEL_85:
      if (v52 - 1 >= v49)
      {
        goto LABEL_131;
      }

      v90 = *a3;
      if (!*a3)
      {
        goto LABEL_152;
      }

      v91 = v9;
      v92 = &v50[16 * v52 - 16];
      v93 = *v92;
      v94 = v52;
      v95 = &v50[16 * v52];
      v96 = *(v95 + 1);
      v97 = (v90 + 40 * *v92);
      v98 = (v90 + 40 * *v95);
      v99 = v90 + 40 * v96;

      sub_21BD717F0(v97, v98, v99, v146, v143, a6);
      if (v144)
      {

        v155 = v91;
        goto LABEL_123;
      }

      if (v96 < v93)
      {
        goto LABEL_132;
      }

      v100 = *(v91 + 16);
      if (v94 > v100)
      {
        goto LABEL_133;
      }

      *v92 = v93;
      *(v92 + 1) = v96;
      if (v94 >= v100)
      {
        goto LABEL_134;
      }

      v49 = v100 - 1;
      memmove(v95, v95 + 16, 16 * (v100 - 1 - v94));
      v9 = v91;
      *(v91 + 16) = v100 - 1;
      v50 = v141;
      a5 = v143;
      if (v100 <= 2)
      {
LABEL_3:
        v155 = v9;
        v8 = v135;
        goto LABEL_4;
      }
    }

    v57 = &v50[16 * v49];
    v58 = *(v57 - 8);
    v59 = *(v57 - 7);
    v63 = __OFSUB__(v59, v58);
    v60 = v59 - v58;
    if (v63)
    {
      goto LABEL_135;
    }

    v62 = *(v57 - 6);
    v61 = *(v57 - 5);
    v63 = __OFSUB__(v61, v62);
    v55 = v61 - v62;
    v56 = v63;
    if (v63)
    {
      goto LABEL_136;
    }

    v64 = &v9[16 * v49];
    v66 = *v64;
    v65 = *(v64 + 1);
    v63 = __OFSUB__(v65, v66);
    v67 = v65 - v66;
    if (v63)
    {
      goto LABEL_138;
    }

    v63 = __OFADD__(v55, v67);
    v68 = v55 + v67;
    if (v63)
    {
      goto LABEL_141;
    }

    if (v68 >= v60)
    {
      v86 = &v50[16 * v52];
      v88 = *v86;
      v87 = *(v86 + 1);
      v63 = __OFSUB__(v87, v88);
      v89 = v87 - v88;
      if (v63)
      {
        goto LABEL_145;
      }

      if (v55 < v89)
      {
        v52 = v49 - 2;
      }

      goto LABEL_85;
    }

    goto LABEL_64;
  }

  swift_bridgeObjectRetain_n();
LABEL_120:
  v128 = *a1;
  if (!*a1)
  {
    goto LABEL_155;
  }

  sub_21BD71D5C(&v155, v128, a3, a5, a6);
  if (v144)
  {

    goto LABEL_123;
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_21BD72854(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_21BE2991C();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB59E8, &unk_21BE3A400);
        v10 = sub_21BE28C7C();
        *(v10 + 16) = v9;
      }

      *&v44 = v10 + 32;
      *(&v44 + 1) = v9;

      sub_21BD71F08(&v44, v41, a1, v8, a2, a3);

      *(v10 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v6 < 0)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    return result;
  }

  if (v6 <= 1)
  {
    return swift_bridgeObjectRelease_n();
  }

  v11 = *a1;

  v12 = -1;
  v13 = 1;
  v47 = v11;
  v37 = v6;
  while (2)
  {
    v39 = v13;
    v40 = v12;
    v38 = v11;
    do
    {
      sub_21BB3A35C(v11 + 40, &v44);
      sub_21BB3A35C(v11, v41);
      v14 = v45;
      v15 = v46;
      __swift_project_boxed_opaque_existential_1Tm(&v44, v45);
      v16 = (*(v15 + 32))(v14, v15);
      if (*(a2 + 16) && (v17 = sub_21BBB3274(v16), (v18 & 1) != 0))
      {
        v19 = *(*(a2 + 56) + 8 * v17);
      }

      else
      {
        v19 = 0;
      }

      v20 = v45;
      v21 = v46;
      __swift_project_boxed_opaque_existential_1Tm(&v44, v45);
      result = (*(v21 + 24))(v20, v21);
      if (result)
      {
        v22 = a3;
      }

      else
      {
        v22 = 0;
      }

      v23 = __OFADD__(v19, v22);
      v24 = v19 + v22;
      if (v23)
      {
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v25 = v42;
      v26 = v43;
      __swift_project_boxed_opaque_existential_1Tm(v41, v42);
      v27 = (*(v26 + 32))(v25, v26);
      if (*(a2 + 16) && (v28 = sub_21BBB3274(v27), (v29 & 1) != 0))
      {
        v30 = *(*(a2 + 56) + 8 * v28);
      }

      else
      {
        v30 = 0;
      }

      v31 = v42;
      v32 = v43;
      __swift_project_boxed_opaque_existential_1Tm(v41, v42);
      result = (*(v32 + 24))(v31, v32);
      if (result)
      {
        v33 = a3;
      }

      else
      {
        v33 = 0;
      }

      v34 = v30 + v33;
      if (__OFADD__(v30, v33))
      {
        goto LABEL_36;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v41);
      result = __swift_destroy_boxed_opaque_existential_0Tm(&v44);
      if (v34 >= v24)
      {
        break;
      }

      if (!v47)
      {
        goto LABEL_39;
      }

      sub_21BB3D104((v11 + 40), &v44);
      v35 = *(v11 + 16);
      *(v11 + 40) = *v11;
      *(v11 + 56) = v35;
      *(v11 + 72) = *(v11 + 32);
      sub_21BB3D104(&v44, v11);
      v11 -= 40;
    }

    while (!__CFADD__(v12++, 1));
    v13 = v39 + 1;
    v11 = v38 + 40;
    v12 = v40 - 1;
    if (v39 + 1 != v37)
    {
      continue;
    }

    return swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_21BD72BA0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_21BDFD58C(v6);
  }

  v7 = v6[2];
  v9[0] = (v6 + 4);
  v9[1] = v7;

  sub_21BD72854(v9, a2, a3);

  *a1 = v6;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_21BD72C54()
{
  v0 = sub_21BE26A4C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE261BC();
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FCC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_21BB35000, v4, v5, "ChecklistItemSorter created", v6, 2u);
    MEMORY[0x21CF05C50](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_21BD72D88()
{
  v0 = sub_21BE26A4C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE261BC();
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FCC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_21BB35000, v4, v5, "LegacyChecklistSorter created", v6, 2u);
    MEMORY[0x21CF05C50](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return -1000;
}

uint64_t sub_21BD72EE4(char *__dst, char *__src, char *a3, char *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v11 = __src - __dst;
  }

  v12 = v11 >> 5;
  v13 = a3 - __src;
  v14 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 5;
  if (v12 < v15)
  {
    v16 = 32 * v12;
    if (a4 != __dst || &__dst[v16] <= a4)
    {
      memmove(a4, __dst, v16);
    }

    v17 = &v6[v16];
    if (v10 < 32 || v8 >= v7)
    {
LABEL_31:
      v8 = v9;
      goto LABEL_58;
    }

    v55 = v7;
    v53 = &v6[v16];
    while (1)
    {
      v18 = v6[24];
      if (*(a5 + 16))
      {
        v19 = v6[24];
        v20 = v8[24];

        v21 = sub_21BBB3230(v20);
        if (v22)
        {
          v23 = *(*(a5 + 56) + 8 * v21);
        }

        else
        {
          v23 = 0;
        }

        v18 = v19;
      }

      else
      {

        v23 = 0;
      }

      v24 = v9;
      if (*(a5 + 16))
      {
        v25 = v6;
        v26 = sub_21BBB3230(v18);
        if (v27)
        {
          v28 = *(*(a5 + 56) + 8 * v26);
          goto LABEL_23;
        }
      }

      else
      {
        v25 = v6;
      }

      v28 = 0;
LABEL_23:

      if (v28 >= v23)
      {
        v33 = v25;
        v29 = v25;
        v6 = v25 + 32;
        v31 = v24;
        v32 = v55;
        if (v24 == v33)
        {
          goto LABEL_29;
        }

LABEL_28:
        v34 = *(v29 + 1);
        *v31 = *v29;
        *(v31 + 1) = v34;
        goto LABEL_29;
      }

      v29 = v8;
      v30 = v24 == v8;
      v8 += 32;
      v6 = v25;
      v31 = v24;
      v32 = v55;
      if (!v30)
      {
        goto LABEL_28;
      }

LABEL_29:
      v9 = (v31 + 32);
      v17 = v53;
      if (v6 >= v53 || v8 >= v32)
      {
        goto LABEL_31;
      }
    }
  }

  v35 = 32 * v15;
  if (a4 != __src || &__src[v35] <= a4)
  {
    memmove(a4, __src, 32 * v15);
  }

  v17 = &v6[v35];
  if (v13 >= 32 && v8 > v9)
  {
    v52 = v6;
LABEL_38:
    v7 -= 32;
    while (1)
    {
      v36 = *(v8 - 8);
      v54 = v17;
      if (*(a5 + 16))
      {
        v37 = *(v17 - 8);

        v38 = sub_21BBB3230(v37);
        if (v39)
        {
          v40 = *(*(a5 + 56) + 8 * v38);
          if (!*(a5 + 16))
          {
            goto LABEL_48;
          }

          goto LABEL_46;
        }
      }

      else
      {
      }

      v40 = 0;
      if (!*(a5 + 16))
      {
        goto LABEL_48;
      }

LABEL_46:
      v41 = sub_21BBB3230(v36);
      if ((v42 & 1) == 0)
      {
LABEL_48:
        v43 = 0;
        goto LABEL_49;
      }

      v43 = *(*(a5 + 56) + 8 * v41);
LABEL_49:

      if (v43 < v40)
      {
        v46 = v8 - 32;
        v6 = v52;
        v17 = v54;
        if (v7 + 32 != v8)
        {
          v47 = *(v8 - 1);
          *v7 = *v46;
          *(v7 + 1) = v47;
        }

        if (v54 <= v52 || (v8 -= 32, v46 <= v9))
        {
          v8 = v46;
          break;
        }

        goto LABEL_38;
      }

      v6 = v52;
      v44 = (v54 - 32);
      if (v7 + 32 != v54)
      {
        v45 = *(v54 - 1);
        *v7 = *v44;
        *(v7 + 1) = v45;
      }

      v7 -= 32;
      v17 = (v54 - 32);
      if (v44 <= v52)
      {
        v17 = (v54 - 32);
        break;
      }
    }
  }

LABEL_58:
  v48 = v17 - v6;
  v49 = v17 - v6 + 31;
  if (v48 < 0)
  {
    v48 = v49;
  }

  v50 = v48 & 0xFFFFFFFFFFFFFFE0;
  if (v8 != v6 || v8 >= &v6[v50])
  {
    memmove(v8, v6, v50);
  }

  return 1;
}

uint64_t sub_21BD732BC(uint64_t *a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v24 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v24 = sub_21BDFD0AC(v24);
  }

  v20 = v6;
  *v6 = v24;
  v8 = (v24 + 16);
  v9 = *(v24 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v20 = v24;
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v12 = &v24[16 * v9];
      v6 = *v12;
      v13 = &v8[2 * v9];
      v14 = v13[1];
      __dst = (v10 + 32 * *v12);
      v15 = (v10 + 32 * *v13);
      v16 = (v10 + 32 * v14);

      sub_21BD72EE4(__dst, v15, v16, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v20 = v24;

        return 1;
      }

      if (v14 < v6)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v17 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_13;
      }

      *v12 = v6;
      *(v12 + 1) = v14;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_14;
      }

      v9 = v17 - 1;
      memmove(v13, v13 + 2, 16 * v18);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v20 = v24;
    __break(1u);
  }

  return result;
}

uint64_t sub_21BD73464(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a3[1];
  v138 = MEMORY[0x277D84F90];
  if (v6 < 1)
  {
    swift_bridgeObjectRetain_n();
LABEL_111:
    v113 = *a1;
    if (!*a1)
    {
      goto LABEL_142;
    }

    sub_21BD732BC(&v138, v113, a3, a5);
    if (!v130)
    {

      swift_bridgeObjectRelease_n();
    }

LABEL_113:

LABEL_114:
    swift_bridgeObjectRelease_n();
  }

  swift_bridgeObjectRetain_n();
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v126 = a5;
  while (1)
  {
    if (v7 + 1 >= v6)
    {
      v6 = v7 + 1;
      goto LABEL_33;
    }

    v118 = v8;
    v9 = *a3;
    v10 = *a3 + 32 * (v7 + 1);
    v11 = *v10;
    v12 = *(v10 + 8);
    v13 = *(v10 + 16);
    LOBYTE(v10) = *(v10 + 24);
    v136[0] = v11;
    v136[1] = v12;
    v136[2] = v13;
    v137 = v10;
    v14 = v9 + 32 * v7;
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = *(v14 + 16);
    LOBYTE(v14) = *(v14 + 24);
    v134[0] = v15;
    v134[1] = v16;
    v134[2] = v17;
    v135 = v14;

    v131 = sub_21BD70410(v136, v134, a5);
    if (v130)
    {

      goto LABEL_114;
    }

    v18 = v7;
    v19 = v7 + 2;
    v116 = v18;
    v123 = 32 * v18;
    v20 = v9 + 32 * v18 + 48;
    v127 = v6;
    while (v6 != v19)
    {
      v23 = *(v20 + 8);
      if (!*(a5 + 16))
      {

LABEL_16:
        v27 = 0;
        if (!*(a5 + 16))
        {
          goto LABEL_8;
        }

        goto LABEL_17;
      }

      v24 = *(v20 + 40);

      v25 = sub_21BBB3230(v24);
      if ((v26 & 1) == 0)
      {
        goto LABEL_16;
      }

      v27 = *(*(a5 + 56) + 8 * v25);
      if (!*(a5 + 16))
      {
        goto LABEL_8;
      }

LABEL_17:
      v28 = sub_21BBB3230(v23);
      if (v29)
      {
        v21 = *(*(a5 + 56) + 8 * v28);
        goto LABEL_9;
      }

LABEL_8:
      v21 = 0;
LABEL_9:

      v22 = v21 >= v27;
      ++v19;
      v20 += 32;
      v6 = v127;
      if (((v131 ^ v22) & 1) == 0)
      {
        v6 = v19 - 1;
        break;
      }
    }

    v7 = v116;
    v8 = v118;
    v30 = v123;
    if (!v131)
    {
      goto LABEL_33;
    }

    if (v6 < v116)
    {
      goto LABEL_137;
    }

    if (v116 < v6)
    {
      v31 = 32 * v6 - 32;
      v32 = v6;
      v33 = v116;
      do
      {
        if (v33 != --v32)
        {
          v36 = *a3;
          if (!*a3)
          {
            goto LABEL_140;
          }

          v37 = (v36 + v30);
          v38 = (v36 + v31);
          v39 = *(v36 + v30);
          v40 = *(v36 + v30 + 8);
          v41 = *(v36 + v30 + 24);
          if (v30 != v31 || v37 >= v38 + 2)
          {
            v34 = v38[1];
            *v37 = *v38;
            v37[1] = v34;
          }

          v35 = v36 + v31;
          *v35 = v39;
          *(v35 + 8) = v40;
          *(v35 + 24) = v41;
        }

        ++v33;
        v31 -= 32;
        v30 += 32;
      }

      while (v33 < v32);
    }

LABEL_33:
    v42 = a3[1];
    if (v6 >= v42)
    {
      goto LABEL_59;
    }

    if (__OFSUB__(v6, v7))
    {
      goto LABEL_134;
    }

    if (v6 - v7 >= a4)
    {
      goto LABEL_59;
    }

    if (__OFADD__(v7, a4))
    {
      goto LABEL_135;
    }

    if (v7 + a4 < v42)
    {
      v42 = v7 + a4;
    }

    if (v42 < v7)
    {
      break;
    }

    if (v6 == v42)
    {
      goto LABEL_59;
    }

    v120 = v42;
    v117 = v7;
    v132 = *a3;
    v43 = (*a3 + 32 * v6 + 24);
    v44 = v7 - v6;
    while (2)
    {
      v128 = v6;
      v122 = v44;
      v124 = v43;
      while (2)
      {
        v45 = *(v43 - 32);
        if (!*(a5 + 16))
        {

LABEL_49:
          v49 = 0;
          if (!*(a5 + 16))
          {
            goto LABEL_52;
          }

          goto LABEL_50;
        }

        v46 = *v43;

        v47 = sub_21BBB3230(v46);
        if ((v48 & 1) == 0)
        {
          goto LABEL_49;
        }

        v49 = *(*(a5 + 56) + 8 * v47);
        if (!*(a5 + 16))
        {
LABEL_52:
          v52 = 0;
          goto LABEL_53;
        }

LABEL_50:
        v50 = sub_21BBB3230(v45);
        if ((v51 & 1) == 0)
        {
          goto LABEL_52;
        }

        v52 = *(*(a5 + 56) + 8 * v50);
LABEL_53:

        if (v52 >= v49)
        {
          break;
        }

        if (!v132)
        {
          goto LABEL_138;
        }

        v53 = v43 - 24;
        v55 = *(v43 - 56);
        v54 = *(v43 - 40);
        *(v43 - 32) = *v43;
        v43 -= 32;
        v56 = *(v43 + 1);
        v57 = *(v43 + 1);
        *v53 = v55;
        *(v53 + 1) = v54;
        *(v43 - 3) = v56;
        *(v43 - 1) = v57;
        if (!__CFADD__(v44++, 1))
        {
          continue;
        }

        break;
      }

      v6 = v128 + 1;
      v43 = v124 + 32;
      v44 = v122 - 1;
      if (v128 + 1 != v120)
      {
        continue;
      }

      break;
    }

    v7 = v117;
    v6 = v120;
LABEL_59:
    if (v6 < v7)
    {
      goto LABEL_133;
    }

    v121 = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_21BBBCBFC(0, *(v8 + 2) + 1, 1, v8);
    }

    v60 = *(v8 + 2);
    v59 = *(v8 + 3);
    v61 = v60 + 1;
    if (v60 >= v59 >> 1)
    {
      v8 = sub_21BBBCBFC((v59 > 1), v60 + 1, 1, v8);
    }

    *(v8 + 2) = v61;
    v62 = v8 + 32;
    v63 = &v8[16 * v60 + 32];
    *v63 = v7;
    *(v63 + 1) = v121;
    v138 = v8;
    v133 = *a1;
    if (!*a1)
    {
      goto LABEL_141;
    }

    if (v60)
    {
      v129 = v8 + 32;
      while (1)
      {
        v64 = v61 - 1;
        if (v61 >= 4)
        {
          break;
        }

        if (v61 == 3)
        {
          v65 = *(v8 + 4);
          v66 = *(v8 + 5);
          v75 = __OFSUB__(v66, v65);
          v67 = v66 - v65;
          v68 = v75;
LABEL_80:
          if (v68)
          {
            goto LABEL_124;
          }

          v81 = &v8[16 * v61];
          v83 = *v81;
          v82 = *(v81 + 1);
          v84 = __OFSUB__(v82, v83);
          v85 = v82 - v83;
          v86 = v84;
          if (v84)
          {
            goto LABEL_127;
          }

          v87 = &v62[16 * v64];
          v89 = *v87;
          v88 = *(v87 + 1);
          v75 = __OFSUB__(v88, v89);
          v90 = v88 - v89;
          if (v75)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v85, v90))
          {
            goto LABEL_131;
          }

          if (v85 + v90 >= v67)
          {
            if (v67 < v90)
            {
              v64 = v61 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        v91 = &v8[16 * v61];
        v93 = *v91;
        v92 = *(v91 + 1);
        v75 = __OFSUB__(v92, v93);
        v85 = v92 - v93;
        v86 = v75;
LABEL_94:
        if (v86)
        {
          goto LABEL_126;
        }

        v94 = &v62[16 * v64];
        v96 = *v94;
        v95 = *(v94 + 1);
        v75 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v75)
        {
          goto LABEL_129;
        }

        if (v97 < v85)
        {
          goto LABEL_3;
        }

LABEL_101:
        if (v64 - 1 >= v61)
        {
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
          goto LABEL_136;
        }

        v102 = *a3;
        if (!*a3)
        {
          goto LABEL_139;
        }

        v103 = v8;
        v104 = &v62[16 * v64 - 16];
        v105 = *v104;
        v106 = v64;
        v107 = &v62[16 * v64];
        v108 = *(v107 + 1);
        v109 = (v102 + 32 * *v104);
        v110 = (v102 + 32 * *v107);
        v111 = (v102 + 32 * v108);

        sub_21BD72EE4(v109, v110, v111, v133, v126);
        if (v130)
        {
          goto LABEL_113;
        }

        if (v108 < v105)
        {
          goto LABEL_119;
        }

        v8 = v103;
        v112 = *(v103 + 2);
        if (v106 > v112)
        {
          goto LABEL_120;
        }

        *v104 = v105;
        *(v104 + 1) = v108;
        if (v106 >= v112)
        {
          goto LABEL_121;
        }

        v61 = v112 - 1;
        memmove(v107, v107 + 16, 16 * (v112 - 1 - v106));
        *(v103 + 2) = v112 - 1;
        a5 = v126;
        v62 = v129;
        if (v112 <= 2)
        {
LABEL_3:
          v138 = v8;
          goto LABEL_4;
        }
      }

      v69 = &v62[16 * v61];
      v70 = *(v69 - 8);
      v71 = *(v69 - 7);
      v75 = __OFSUB__(v71, v70);
      v72 = v71 - v70;
      if (v75)
      {
        goto LABEL_122;
      }

      v74 = *(v69 - 6);
      v73 = *(v69 - 5);
      v75 = __OFSUB__(v73, v74);
      v67 = v73 - v74;
      v68 = v75;
      if (v75)
      {
        goto LABEL_123;
      }

      v76 = &v8[16 * v61];
      v78 = *v76;
      v77 = *(v76 + 1);
      v75 = __OFSUB__(v77, v78);
      v79 = v77 - v78;
      if (v75)
      {
        goto LABEL_125;
      }

      v75 = __OFADD__(v67, v79);
      v80 = v67 + v79;
      if (v75)
      {
        goto LABEL_128;
      }

      if (v80 >= v72)
      {
        v98 = &v62[16 * v64];
        v100 = *v98;
        v99 = *(v98 + 1);
        v75 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v75)
        {
          goto LABEL_132;
        }

        if (v67 < v101)
        {
          v64 = v61 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_80;
    }

LABEL_4:
    v6 = a3[1];
    v7 = v121;
    if (v121 >= v6)
    {
      goto LABEL_111;
    }
  }

LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_139:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_140:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_141:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_142:
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

uint64_t sub_21BD73CB0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v26 = *a4;
    v6 = (*a4 + 32 * a3 + 24);
    v7 = result - a3;
LABEL_5:
    v24 = v6;
    v25 = a3;
    v23 = v7;
    while (1)
    {
      v8 = *(v6 - 32);
      if (!*(a5 + 16))
      {
        break;
      }

      v9 = *v6;

      v10 = sub_21BBB3230(v9);
      if ((v11 & 1) == 0)
      {
        goto LABEL_11;
      }

      v12 = *(*(a5 + 56) + 8 * v10);
      if (!*(a5 + 16))
      {
        goto LABEL_14;
      }

LABEL_12:
      v13 = sub_21BBB3230(v8);
      if (v14)
      {
        v15 = *(*(a5 + 56) + 8 * v13);
        goto LABEL_15;
      }

LABEL_14:
      v15 = 0;
LABEL_15:

      if (v15 >= v12)
      {
        goto LABEL_4;
      }

      if (!v26)
      {
        __break(1u);
        return result;
      }

      v16 = v6 - 24;
      v18 = *(v6 - 56);
      v17 = *(v6 - 40);
      *(v6 - 32) = *v6;
      v6 -= 32;
      v19 = *(v6 + 1);
      v20 = *(v6 + 1);
      *v16 = v18;
      *(v16 + 1) = v17;
      *(v6 - 3) = v19;
      *(v6 - 1) = v20;
      if (__CFADD__(v7++, 1))
      {
LABEL_4:
        a3 = v25 + 1;
        v6 = v24 + 32;
        v7 = v23 - 1;
        if (v25 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

LABEL_11:
    v12 = 0;
    if (!*(a5 + 16))
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  return result;
}

uint64_t sub_21BD73E4C(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_21BE2991C();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        v8 = sub_21BE28C7C();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;

      sub_21BD73464(v9, v10, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_21BD73CB0(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_21BD73F94(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), void (*a4)(void *, uint64_t))
{
  v8 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = a3(v8);
  }

  v9 = *(v8 + 16);
  v11[0] = v8 + 32;
  v11[1] = v9;

  a4(v11, a2);

  *a1 = v8;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_21BD74050(uint64_t a1, uint64_t a2)
{
  v11 = a1;

  sub_21BD73F94(&v11, a2, sub_21BDFD5D4, sub_21BD73E4C);

  v3 = v11;
  v4 = *(v11 + 16);
  if (v4)
  {
    v11 = MEMORY[0x277D84F90];
    sub_21BC599FC(0, v4, 0);
    v5 = v11;
    v6 = *(v11 + 16);
    v7 = 56;
    do
    {
      v8 = *(v3 + v7);
      v11 = v5;
      v9 = *(v5 + 24);
      if (v6 >= v9 >> 1)
      {
        sub_21BC599FC((v9 > 1), v6 + 1, 1);
        v5 = v11;
      }

      *(v5 + 16) = v6 + 1;
      *(v5 + v6 + 32) = v8;
      v7 += 32;
      ++v6;
      --v4;
    }

    while (v4);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v5;
}

uint64_t sub_21BD741B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  v30 = *(a2 + 24);
  if (*(a3 + 16) && (v7 = sub_21BBB3230(*(a1 + 24)), (v8 & 1) != 0))
  {
    v31 = *(*(a3 + 56) + 8 * v7);
  }

  else
  {
    v31 = 0;
  }

  result = v5 + 32;
  v10 = -*(v5 + 16);
  v11 = -1;
  while (v10 + v11 != -1)
  {
    if (++v11 >= *(v5 + 16))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v12 = result + 40;
    sub_21BB3A35C(result, v32);
    v13 = v33;
    v14 = v34;
    __swift_project_boxed_opaque_existential_1Tm(v32, v33);
    v15 = (*(v14 + 24))(v13, v14);
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    result = v12;
    if ((v15 & 1) == 0)
    {
      v16 = 0;
      goto LABEL_11;
    }
  }

  v16 = v35;
LABEL_11:
  v17 = v31 + v16;
  if (__OFADD__(v31, v16))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (*(a3 + 16) && (v18 = sub_21BBB3230(v30), (v19 & 1) != 0))
  {
    v20 = *(*(a3 + 56) + 8 * v18);
  }

  else
  {
    v20 = 0;
  }

  result = v6 + 32;
  v21 = -*(v6 + 16);
  v22 = -1;
  while (v21 + v22 != -1)
  {
    if (++v22 >= *(v6 + 16))
    {
      goto LABEL_25;
    }

    v23 = result + 40;
    sub_21BB3A35C(result, v32);
    v24 = v33;
    v25 = v34;
    __swift_project_boxed_opaque_existential_1Tm(v32, v33);
    v26 = (*(v25 + 24))(v24, v25);
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    result = v23;
    if ((v26 & 1) == 0)
    {
      v27 = 0;
      goto LABEL_22;
    }
  }

  v27 = v35;
LABEL_22:
  v28 = __OFADD__(v20, v27);
  v29 = v20 + v27;
  if (!v28)
  {
    return v29 < v17;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_21BD743A0(char *__src, char *a2, char *a3, char *__dst, uint64_t a5, uint64_t a6)
{
  v6 = a3;
  v7 = a2;
  v8 = __src;
  v9 = a2 - __src;
  v10 = a2 - __src + 31;
  if (a2 - __src >= 0)
  {
    v10 = a2 - __src;
  }

  v11 = v10 >> 5;
  v12 = a3 - a2;
  v13 = a3 - a2 + 31;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 5;
  if (v11 >= v14)
  {
    v34 = 32 * v14;
    if (__dst != a2 || &a2[v34] <= __dst)
    {
      v35 = __dst;
      memmove(__dst, a2, 32 * v14);
      __dst = v35;
    }

    v59 = __dst;
    v17 = &__dst[v34];
    if (v12 < 32 || v7 <= v8)
    {
      v33 = v7;
      v16 = __dst;
      goto LABEL_50;
    }

    __dstb = v7;
    v56 = v8;
    while (1)
    {
      v36 = 0;
      v37 = v17;
      v57 = __dstb - 32;
      v58 = v6;
      while (1)
      {
        v38 = v37;
        v39 = &v37[v36];
        v40 = &v37[v36 - 32];
        v41 = *&v37[v36 - 24];
        v42 = *&v37[v36 - 16];
        v43 = v37[v36 - 8];
        v68 = *v40;
        v69 = v41;
        v70 = v42;
        v71 = v43;
        v44 = *(__dstb - 3);
        v45 = *(__dstb - 2);
        v46 = *(__dstb - 8);
        v64 = *(__dstb - 4);
        v65 = v44;
        v66 = v45;
        v67 = v46;

        v47 = v72;
        v48 = sub_21BD741B0(&v68, &v64, a5, a6);
        v72 = v47;
        if (v47)
        {

          v54 = v59;
          v33 = __dstb;
          v53 = (v38 - v59 + v36 + (v38 - v59 + v36 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0;
          if (__dstb >= v59 && __dstb < &v59[v53] && __dstb == v59)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        }

        v49 = v48;

        if (v49)
        {
          break;
        }

        v50 = &v58[v36];
        v37 = v38;
        if (&v58[v36] != v39)
        {
          v51 = *(v40 + 16);
          *(v50 - 2) = *v40;
          *(v50 - 1) = v51;
        }

        v36 -= 32;
        v17 = &v38[v36];
        v16 = v59;
        if (&v38[v36] <= v59)
        {
          v33 = __dstb;
          goto LABEL_50;
        }
      }

      v6 = &v58[v36 - 32];
      if (&v58[v36] != __dstb)
      {
        v52 = *(__dstb - 1);
        *v6 = *v57;
        *&v58[v36 - 16] = v52;
      }

      v17 = &v38[v36];
      v16 = v59;
      if (&v38[v36] > v59)
      {
        __dstb -= 32;
        if (v57 > v56)
        {
          continue;
        }
      }

      v17 = &v38[v36];
      v33 = v57;
      goto LABEL_50;
    }
  }

  v15 = 32 * v11;
  v16 = __dst;
  if (__dst != __src || &__src[v15] <= __dst)
  {
    memmove(__dst, __src, v15);
  }

  v17 = &v16[v15];
  if (v9 < 32)
  {
LABEL_21:
    v33 = v8;
LABEL_50:
    v53 = (v17 - v16 + (v17 - v16 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0;
    if (v33 >= v16 && v33 < &v16[v53] && v33 == v16)
    {
      goto LABEL_55;
    }

LABEL_53:
    v54 = v16;
LABEL_54:
    memmove(v33, v54, v53);
    goto LABEL_55;
  }

  if (v7 >= v6)
  {
    v33 = v8;
    goto LABEL_50;
  }

  __dsta = &v16[v15];
  while (1)
  {
    v18 = v6;
    v19 = v8;
    v20 = *(v7 + 1);
    v21 = *(v7 + 2);
    v22 = v7[24];
    v68 = *v7;
    v69 = v20;
    v70 = v21;
    v71 = v22;
    v23 = *(v16 + 1);
    v24 = *(v16 + 2);
    v25 = v16[24];
    v64 = *v16;
    v65 = v23;
    v66 = v24;
    v67 = v25;

    v26 = v72;
    v27 = sub_21BD741B0(&v68, &v64, a5, a6);
    v72 = v26;
    if (v26)
    {
      break;
    }

    v28 = v27;

    if ((v28 & 1) == 0)
    {
      v29 = v16;
      v30 = v19;
      v31 = v19 == v16;
      v16 += 32;
      if (v31)
      {
        goto LABEL_19;
      }

LABEL_18:
      v32 = *(v29 + 1);
      *v30 = *v29;
      *(v30 + 1) = v32;
      goto LABEL_19;
    }

    v29 = v7;
    v30 = v19;
    v31 = v19 == v7;
    v7 += 32;
    if (!v31)
    {
      goto LABEL_18;
    }

LABEL_19:
    v8 = v30 + 32;
    v17 = __dsta;
    if (v16 < __dsta)
    {
      v6 = v18;
      if (v7 < v18)
      {
        continue;
      }
    }

    goto LABEL_21;
  }

  v53 = (__dsta - v16 + (__dsta - v16 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0;
  if (v19 < v16 || v19 >= &v16[v53])
  {
    v33 = v19;
    v54 = v16;
    goto LABEL_54;
  }

  if (v19 != v16)
  {
    v33 = v19;
    goto LABEL_53;
  }

LABEL_55:

  return 1;
}

uint64_t sub_21BD7483C(char *a1, char *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = a1;
  v8 = *a1;

  v26 = v8;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_13:
    v26 = sub_21BDFD0AC(v26);
  }

  v21 = v7;
  *v7 = v26;
  v9 = v26 + 16;
  v10 = *(v26 + 2);
  if (v10 < 2)
  {
LABEL_9:

    *v21 = v26;
    return 1;
  }

  else
  {
    while (1)
    {
      v11 = *a3;
      if (!*a3)
      {
        break;
      }

      v12 = &v26[16 * v10];
      v13 = *v12;
      v14 = v9;
      v15 = &v9[16 * v10];
      v16 = *(v15 + 1);
      __src = (v11 + 32 * *v12);
      v17 = (v11 + 32 * *v15);
      v7 = (v11 + 32 * v16);

      sub_21BD743A0(__src, v17, v7, a2, a4, a5);
      if (v6)
      {
        goto LABEL_9;
      }

      if (v16 < v13)
      {
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        goto LABEL_13;
      }

      v18 = *v14;
      if (v10 - 2 >= *v14)
      {
        goto LABEL_11;
      }

      *v12 = v13;
      *(v12 + 1) = v16;
      v19 = v18 - v10;
      if (v18 < v10)
      {
        goto LABEL_12;
      }

      v9 = v14;
      v10 = v18 - 1;
      memmove(v15, v15 + 16, 16 * v19);
      *v14 = v10;
      if (v10 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v21 = v26;
    __break(1u);
  }

  return result;
}

uint64_t sub_21BD749C4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v145 = MEMORY[0x277D84F90];
  v9 = a3[1];
  if (v9 >= 1)
  {
    swift_bridgeObjectRetain_n();
    v10 = 0;
    v11 = MEMORY[0x277D84F90];
    v136 = a5;
    while (1)
    {
      if (v10 + 1 >= v9)
      {
        v25 = v10 + 1;
      }

      else
      {
        __dst = v9;
        v12 = *a3;
        v13 = *a3 + 32 * (v10 + 1);
        v14 = *v13;
        v15 = *(v13 + 8);
        v16 = *(v13 + 16);
        LOBYTE(v13) = *(v13 + 24);
        v141 = v14;
        v142 = v15;
        v143 = v16;
        v144 = v13;
        v17 = v12 + 32 * v10;
        v18 = *v17;
        v19 = *(v17 + 8);
        v20 = *(v17 + 16);
        LOBYTE(v17) = *(v17 + 24);
        v137 = v18;
        v138 = v19;
        v139 = v20;
        v140 = v17;

        v132 = sub_21BD741B0(&v141, &v137, a5, a6);
        if (v7)
        {
LABEL_100:

          goto LABEL_101;
        }

        v123 = v11;

        v21 = v10;
        v22 = (v10 + 2);
        v121 = v21;
        v23 = 32 * v21;
        v24 = v12 + 32 * v21 + 48;
        while (1)
        {
          v25 = __dst;
          if (__dst == v22)
          {
            break;
          }

          v26 = *(v24 + 24);
          v27 = *(v24 + 32);
          v28 = *(v24 + 40);
          v141 = *(v24 + 16);
          v142 = v26;
          v143 = v27;
          v144 = v28;
          v29 = *(v24 - 8);
          v30 = *v24;
          v31 = *(v24 + 8);
          v137 = *(v24 - 16);
          v138 = v29;
          v139 = v30;
          v140 = v31;

          v32 = sub_21BD741B0(&v141, &v137, v136, a6);

          ++v22;
          v24 += 32;
          if ((v132 ^ v32))
          {
            v25 = (v22 - 1);
            break;
          }
        }

        v7 = 0;
        v10 = v121;
        if (v132)
        {
          if (v25 < v121)
          {
            goto LABEL_123;
          }

          if (v121 < v25)
          {
            v33 = 32 * v25 - 32;
            v34 = v25;
            v35 = v121;
            do
            {
              if (v35 != --v34)
              {
                v38 = *a3;
                if (!*a3)
                {
                  goto LABEL_126;
                }

                v39 = (v38 + v23);
                v40 = (v38 + v33);
                v41 = *(v38 + v23);
                v42 = *(v38 + v23 + 8);
                v43 = *(v38 + v23 + 24);
                if (v23 != v33 || v39 >= v40 + 2)
                {
                  v36 = v40[1];
                  *v39 = *v40;
                  v39[1] = v36;
                }

                v37 = v38 + v33;
                *v37 = v41;
                *(v37 + 8) = v42;
                *(v37 + 24) = v43;
              }

              ++v35;
              v33 -= 32;
              v23 += 32;
            }

            while (v35 < v34);
          }
        }

        v11 = v123;
      }

      v44 = a3[1];
      if (v25 >= v44)
      {
        goto LABEL_32;
      }

      if (__OFSUB__(v25, v10))
      {
        goto LABEL_120;
      }

      if (v25 - v10 >= a4)
      {
        goto LABEL_32;
      }

      if (__OFADD__(v10, a4))
      {
        goto LABEL_121;
      }

      if (v10 + a4 >= v44)
      {
        v45 = a3[1];
      }

      else
      {
        v45 = v10 + a4;
      }

      if (v45 < v10)
      {
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_125:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_126:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_127:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_128:
        result = swift_bridgeObjectRelease_n();
        __break(1u);
        return result;
      }

      if (v25 == v45)
      {
LABEL_32:
        v46 = v25;
        if (v25 < v10)
        {
          goto LABEL_119;
        }
      }

      else
      {
        v122 = v10;
        v134 = v7;
        v126 = v45;
        v127 = *a3;
        v99 = *a3 + 32 * v25 + 24;
        v100 = v10 - v25;
        do
        {
          __dstb = v25;
          v118 = v100;
          v119 = v99;
          v101 = v99;
          do
          {
            v102 = (v101 - 24);
            v104 = *(v101 - 16);
            v103 = *(v101 - 8);
            v105 = *v101;
            v141 = *(v101 - 24);
            v142 = v104;
            v143 = v103;
            v144 = v105;
            v106 = *(v101 - 48);
            v107 = *(v101 - 40);
            v108 = *(v101 - 32);
            v137 = *(v101 - 56);
            v138 = v106;
            v139 = v107;
            v140 = v108;

            v109 = sub_21BD741B0(&v141, &v137, v136, a6);
            if (v134)
            {
              goto LABEL_100;
            }

            v110 = v109;

            if ((v110 & 1) == 0)
            {
              break;
            }

            if (!v127)
            {
              goto LABEL_125;
            }

            v112 = *(v101 - 56);
            v111 = *(v101 - 40);
            *(v101 - 32) = *v101;
            v101 -= 32;
            v113 = *(v101 + 8);
            v114 = *(v101 + 16);
            *v102 = v112;
            v102[1] = v111;
            *(v101 - 24) = v113;
            *(v101 - 16) = v114;
          }

          while (!__CFADD__(v100++, 1));
          v25 = (__dstb + 1);
          v99 = v119 + 32;
          v100 = v118 - 1;
          v46 = v126;
        }

        while (__dstb + 1 != v126);
        v7 = 0;
        v10 = v122;
        if (v126 < v122)
        {
          goto LABEL_119;
        }
      }

      v125 = v46;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_21BBBCBFC(0, *(v11 + 2) + 1, 1, v11);
      }

      v48 = *(v11 + 2);
      v47 = *(v11 + 3);
      v49 = v48 + 1;
      if (v48 >= v47 >> 1)
      {
        v11 = sub_21BBBCBFC((v47 > 1), v48 + 1, 1, v11);
      }

      *(v11 + 2) = v49;
      v50 = v11 + 32;
      v51 = &v11[16 * v48 + 32];
      *v51 = v10;
      *(v51 + 1) = v125;
      v145 = v11;
      __dsta = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v48)
      {
        while (1)
        {
          v52 = v49 - 1;
          a5 = v136;
          if (v49 >= 4)
          {
            break;
          }

          if (v49 == 3)
          {
            v53 = *(v11 + 4);
            v54 = *(v11 + 5);
            v63 = __OFSUB__(v54, v53);
            v55 = v54 - v53;
            v56 = v63;
LABEL_52:
            if (v56)
            {
              goto LABEL_110;
            }

            v69 = &v11[16 * v49];
            v71 = *v69;
            v70 = *(v69 + 1);
            v72 = __OFSUB__(v70, v71);
            v73 = v70 - v71;
            v74 = v72;
            if (v72)
            {
              goto LABEL_113;
            }

            v75 = &v50[16 * v52];
            v77 = *v75;
            v76 = *(v75 + 1);
            v63 = __OFSUB__(v76, v77);
            v78 = v76 - v77;
            if (v63)
            {
              goto LABEL_116;
            }

            if (__OFADD__(v73, v78))
            {
              goto LABEL_117;
            }

            if (v73 + v78 >= v55)
            {
              if (v55 < v78)
              {
                v52 = v49 - 2;
              }

              goto LABEL_73;
            }

            goto LABEL_66;
          }

          v79 = &v11[16 * v49];
          v81 = *v79;
          v80 = *(v79 + 1);
          v63 = __OFSUB__(v80, v81);
          v73 = v80 - v81;
          v74 = v63;
LABEL_66:
          if (v74)
          {
            goto LABEL_112;
          }

          v82 = &v50[16 * v52];
          v84 = *v82;
          v83 = *(v82 + 1);
          v63 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v63)
          {
            goto LABEL_115;
          }

          if (v85 < v73)
          {
            v145 = v11;
            goto LABEL_82;
          }

LABEL_73:
          if (v52 - 1 >= v49)
          {
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
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
            goto LABEL_122;
          }

          v90 = *a3;
          if (!*a3)
          {
            goto LABEL_124;
          }

          v91 = &v50[16 * v52 - 16];
          v92 = *v91;
          v93 = v52;
          v94 = &v50[16 * v52];
          v95 = *(v94 + 1);
          v96 = (v90 + 32 * *v91);
          v97 = (v90 + 32 * *v94);
          v133 = (v90 + 32 * v95);

          sub_21BD743A0(v96, v97, v133, __dsta, v136, a6);
          if (v7)
          {
            goto LABEL_101;
          }

          if (v95 < v92)
          {
            goto LABEL_105;
          }

          v98 = *(v11 + 2);
          if (v93 > v98)
          {
            goto LABEL_106;
          }

          *v91 = v92;
          *(v91 + 1) = v95;
          if (v93 >= v98)
          {
            goto LABEL_107;
          }

          v49 = v98 - 1;
          memmove(v94, v94 + 16, 16 * (v98 - 1 - v93));
          *(v11 + 2) = v98 - 1;
          v50 = v11 + 32;
          if (v98 <= 2)
          {
            v145 = v11;
            goto LABEL_81;
          }
        }

        v57 = &v50[16 * v49];
        v58 = *(v57 - 8);
        v59 = *(v57 - 7);
        v63 = __OFSUB__(v59, v58);
        v60 = v59 - v58;
        if (v63)
        {
          goto LABEL_108;
        }

        v62 = *(v57 - 6);
        v61 = *(v57 - 5);
        v63 = __OFSUB__(v61, v62);
        v55 = v61 - v62;
        v56 = v63;
        if (v63)
        {
          goto LABEL_109;
        }

        v64 = &v11[16 * v49];
        v66 = *v64;
        v65 = *(v64 + 1);
        v63 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v63)
        {
          goto LABEL_111;
        }

        v63 = __OFADD__(v55, v67);
        v68 = v55 + v67;
        if (v63)
        {
          goto LABEL_114;
        }

        if (v68 >= v60)
        {
          v86 = &v50[16 * v52];
          v88 = *v86;
          v87 = *(v86 + 1);
          v63 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v63)
          {
            goto LABEL_118;
          }

          if (v55 < v89)
          {
            v52 = v49 - 2;
          }

          goto LABEL_73;
        }

        goto LABEL_52;
      }

LABEL_81:
      a5 = v136;
LABEL_82:
      v9 = a3[1];
      v10 = v125;
      if (v125 >= v9)
      {
        goto LABEL_95;
      }
    }
  }

  swift_bridgeObjectRetain_n();
LABEL_95:
  v116 = *a1;
  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_21BD7483C(&v145, v116, a3, a5, a6);
  if (v7)
  {

LABEL_101:
    swift_bridgeObjectRelease_n();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_21BD7521C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = a1[1];
  v31 = a2;
  swift_bridgeObjectRetain_n();
  result = sub_21BE2991C();
  if (result >= v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      if (v6 <= 1)
      {
        return swift_bridgeObjectRelease_n();
      }

      v10 = *a1;

      v11 = v10 + 32;
      v12 = -1;
      v13 = 1;
      while (1)
      {
        v22 = v13;
        v23 = v11;
        v14 = *(v11 + 8);
        v15 = *(v11 + 16);
        v16 = *(v11 + 24);
        v27 = *v11;
        v28 = v14;
        v29 = v15;
        v30 = v16;
        v17 = *(v11 - 24);
        v18 = *(v11 - 16);
        v19 = *(v11 - 8);
        v25[0] = *(v11 - 32);
        v25[1] = v17;
        v25[2] = v18;
        v26 = v19;

        v20 = sub_21BD741B0(&v27, v25, v31, a3);
        if (v4)
        {
          break;
        }

        v21 = v20;

        if (v21)
        {
          goto LABEL_19;
        }

        v13 = v22 + 1;
        v11 = v23 + 32;
        --v12;
        if (v22 + 1 == v6)
        {
          return swift_bridgeObjectRelease_n();
        }
      }

      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    if (v6 >= -1)
    {
      v8 = result;
      if (v6 <= 1)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        v9 = sub_21BE28C7C();
        *(v9 + 16) = v6 / 2;
      }

      v27 = (v9 + 32);
      v28 = v6 / 2;

      sub_21BD749C4(&v27, v25, a1, v8, v31, a3);

      *(v9 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_21BD754AC(char **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_21BDFD5D4(v7);
  }

  v8 = *(v7 + 2);
  v10[0] = (v7 + 32);
  v10[1] = v8;

  sub_21BD7521C(v10, a2, a4);

  *a1 = v7;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_21BD755A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  if (a2)
  {
    v4 = sub_21BE289CC();
  }

  else
  {
    v4 = 0;
  }

  v5 = a3(v4);

  if (!v5)
  {
    return 0;
  }

  v6 = sub_21BE28A0C();

  return v6;
}

id sub_21BD7563C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  if (a3)
  {
    sub_21BE28A0C();
    v5 = sub_21BE289CC();
  }

  else
  {
    v5 = 0;
  }

  v6 = a4(v5);

  if (v6)
  {
    sub_21BE28A0C();

    v6 = sub_21BE289CC();
  }

  return v6;
}

uint64_t sub_21BD756EC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_21BE289CC();
  }

  else
  {
    v2 = 0;
  }

  v3 = _IDSCopyIDForPhoneNumberWithOptions();

  if (!v3)
  {
    return 0;
  }

  v4 = sub_21BE28A0C();

  return v4;
}

uint64_t sub_21BD75848(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21BBB8A28;

  return sub_21BD779F8(a1);
}

uint64_t sub_21BD758F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_21BD75914, 0, 0);
}

uint64_t sub_21BD75914()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *(v1 + 16) = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EF0, &unk_21BE33800);
  *v2 = v0;
  v2[1] = sub_21BD75A1C;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000021, 0x800000021BE60520, sub_21BD788D4, v1, v3);
}

uint64_t sub_21BD75A1C()
{

  return MEMORY[0x2822009F8](sub_21BD75B34, 0, 0);
}

void sub_21BD75B54(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBBE8, qword_21BE48850);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  sub_21BC71F58(a3);
  v9 = sub_21BE28C1C();

  v10 = sub_21BE289CC();
  v11 = sub_21BE289CC();
  sub_21BB3A2A4(0, &qword_280BD6930, 0x277D85C78);
  v12 = sub_21BE2925C();
  (*(v6 + 16))(v8, a1, v5);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  (*(v6 + 32))(v14 + v13, v8, v5);
  aBlock[4] = sub_21BD788DC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21BD763A0;
  aBlock[3] = &block_descriptor_46;
  v15 = _Block_copy(aBlock);

  [v17 refreshIDStatusForDestinations:v9 service:v10 listenerID:v11 queue:v12 completionBlock:v15];
  _Block_release(v15);
}

void sub_21BD75DBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v46 - v9;
  if (!a1)
  {
    sub_21BE2614C();
    v42 = sub_21BE26A2C();
    v43 = sub_21BE28FFC();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v61[0] = v45;
      *v44 = 136315138;
      *(v44 + 4) = sub_21BB3D81C(0xD000000000000021, 0x800000021BE60520, v61);
      _os_log_impl(&dword_21BB35000, v42, v43, "%s no results returned", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v45);
      MEMORY[0x21CF05C50](v45, -1, -1);
      MEMORY[0x21CF05C50](v44, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    *&v61[0] = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBBE8, qword_21BE48850);
LABEL_29:
    sub_21BE28D2C();
    return;
  }

  v49 = a2;
  v11 = a1 + 64;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 64);
  v15 = (v12 + 63) >> 6;
  v56 = (v5 + 8);
  v51 = "16@?24";

  v16 = 0;
  v55 = MEMORY[0x277D84F90];
  *&v17 = 136315394;
  v50 = v17;
  v53 = v10;
  v54 = v4;
  for (i = a1 + 64; v14; v15 = v48)
  {
LABEL_12:
    while (1)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      sub_21BBB71DC(*(a1 + 48) + 40 * (v19 | (v16 << 6)), v61);
      v59[0] = v61[0];
      v59[1] = v61[1];
      v60 = v62;
      if (*(a1 + 16))
      {
        v20 = sub_21BBB31E8(v59);
        if (v21)
        {
          sub_21BB3DCD4(*(a1 + 56) + 32 * v20, v58);
          sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
          if (swift_dynamicCast())
          {
            break;
          }
        }
      }

LABEL_23:
      sub_21BE2614C();
      sub_21BBB71DC(v59, v58);
      v30 = sub_21BE26A2C();
      v31 = sub_21BE28FFC();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v57 = v33;
        *v32 = v50;
        *(v32 + 4) = sub_21BB3D81C(0xD000000000000021, v51 | 0x8000000000000000, &v57);
        *(v32 + 12) = 2080;
        v34 = sub_21BE2955C();
        v35 = v15;
        v36 = a1;
        v38 = v37;
        sub_21BBB7238(v58);
        v39 = sub_21BB3D81C(v34, v38, &v57);
        a1 = v36;
        v15 = v35;
        v11 = i;

        *(v32 + 14) = v39;
        _os_log_impl(&dword_21BB35000, v30, v31, "%s %s not valid", v32, 0x16u);
        swift_arrayDestroy();
        v40 = v33;
        v4 = v54;
        MEMORY[0x21CF05C50](v40, -1, -1);
        v41 = v32;
        v10 = v53;
        MEMORY[0x21CF05C50](v41, -1, -1);
      }

      else
      {

        sub_21BBB7238(v58);
      }

      (*v56)(v10, v4);
      sub_21BBB7238(v59);
      if (!v14)
      {
        goto LABEL_8;
      }
    }

    v22 = v57;
    if ([v57 integerValue] != 1)
    {

      goto LABEL_23;
    }

    v48 = v15;
    v47 = sub_21BE2955C();
    v24 = v23;
    v25 = a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v55 = sub_21BBBC990(0, *(v55 + 2) + 1, 1, v55);
    }

    v27 = *(v55 + 2);
    v26 = *(v55 + 3);
    if (v27 >= v26 >> 1)
    {
      v55 = sub_21BBBC990((v26 > 1), v27 + 1, 1, v55);
    }

    sub_21BBB7238(v59);
    v28 = v55;
    *(v55 + 2) = v27 + 1;
    v29 = &v28[16 * v27];
    *(v29 + 4) = v47;
    *(v29 + 5) = v24;
    a1 = v25;
  }

LABEL_8:
  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v15)
    {

      *&v61[0] = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBBE8, qword_21BE48850);
      goto LABEL_29;
    }

    v14 = *(v11 + 8 * v18);
    ++v16;
    if (v14)
    {
      v16 = v18;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_21BD763A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_21BE2890C();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);
}

uint64_t sub_21BD765B8(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_21BE28C3C();
  v3[4] = v5;
  v6 = a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_21BD7669C;

  return sub_21BD779F8(v5);
}

uint64_t sub_21BD7669C(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v3 = *(*v1 + 16);
  v7 = *v1;

  v4 = sub_21BE28C1C();

  (v2)[2](v2, v4);

  _Block_release(v2);
  v5 = *(v7 + 8);

  return v5();
}

id IDSRecommendationProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IDSRecommendationProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IDSRecommendationProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

id IMessageHandleForPeopleRecommendations.__allocating_init(provider:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___IMessageHandlesForPeopleRecommendations_provider] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id IMessageHandleForPeopleRecommendations.init(provider:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___IMessageHandlesForPeopleRecommendations_provider] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for IMessageHandleForPeopleRecommendations();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_21BD769CC(uint64_t a1, uint64_t a2)
{
  v2 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  **(*(v2 + 64) + 40) = sub_21BE28C3C();

  return MEMORY[0x282200948](v2);
}

void sub_21BD76A3C(unint64_t a1, void (*a2)(void, void), uint64_t a3)
{
  v7 = sub_21BE26A4C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  if (a1 >> 62)
  {
    if (sub_21BE2951C())
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    sub_21BE28D8C();
    v14 = sub_21BE28DAC();
    (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = a1;
    v15[5] = v3;
    v15[6] = a2;
    v15[7] = a3;

    v16 = v3;

    sub_21BBA932C(0, 0, v13, &unk_21BE48780, v15);

    return;
  }

  sub_21BE2614C();
  v17 = sub_21BE26A2C();
  v18 = sub_21BE28FFC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_21BB3D81C(0xD00000000000002FLL, 0x800000021BE60460, &v22);
    _os_log_impl(&dword_21BB35000, v17, v18, " %s No recommendations supplied", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    MEMORY[0x21CF05C50](v20, -1, -1);
    MEMORY[0x21CF05C50](v19, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  a2(MEMORY[0x277D84F90], 0);
}

uint64_t sub_21BD76D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[21] = a6;
  v7[22] = a7;
  v7[19] = a4;
  v7[20] = a5;
  v8 = sub_21BE26A4C();
  v7[23] = v8;
  v7[24] = *(v8 - 8);
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BD76DF8, 0, 0);
}

uint64_t sub_21BD76DF8(uint64_t a1)
{
  v85 = v1;
  v2 = *(v1 + 152);
  if (v2 >> 62)
  {
    goto LABEL_59;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v3)
  {
    v4 = 0;
    v77 = OBJC_IVAR___IMessageHandlesForPeopleRecommendations_provider;
    v78 = *(v1 + 160);
    v5 = v2 & 0xC000000000000001;
    v72 = *(v1 + 152) + 32;
    v73 = v2 & 0xFFFFFFFFFFFFFF8;
    v71 = (*(v1 + 192) + 8);
    v6 = MEMORY[0x277D84F90];
    v7 = &selRef_bundleURL;
    v74 = v2 & 0xC000000000000001;
    v75 = v3;
    while (1)
    {
      if (v5)
      {
        v8 = MEMORY[0x21CF047C0](v4, *(v1 + 152));
      }

      else
      {
        if (v4 >= *(v73 + 16))
        {
          goto LABEL_58;
        }

        v8 = *(v72 + 8 * v4);
      }

      v9 = v8;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        v3 = sub_21BE2951C();
        goto LABEL_3;
      }

      v11 = [v8 v7[416]];
      if (!v11)
      {
        break;
      }

      v12 = [v9 v7[416]];
      if (v12)
      {
        v79 = v12;
        v80 = v9;
        v13 = [v12 emailAddressStrings];
        v14 = sub_21BE28C3C();

        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = *(v78 + v77);
          v17 = v14 + 40;
          do
          {

            v19 = sub_21BE289CC();

            v20 = [v16 getIDForEmailAddressWithHandle_];

            if (v20)
            {
              v21 = sub_21BE28A0C();
              v23 = v22;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v6 = sub_21BBBC990(0, *(v6 + 2) + 1, 1, v6);
              }

              v25 = *(v6 + 2);
              v24 = *(v6 + 3);
              if (v25 >= v24 >> 1)
              {
                v6 = sub_21BBBC990((v24 > 1), v25 + 1, 1, v6);
              }

              *(v6 + 2) = v25 + 1;
              v18 = &v6[16 * v25];
              *(v18 + 4) = v21;
              *(v18 + 5) = v23;
            }

            v17 += 16;
            --v15;
          }

          while (v15);
        }

        v2 = v79;
        v26 = [v79 phoneNumberStrings];
        v27 = sub_21BE28C3C();

        v28 = *(v27 + 16);
        if (v28)
        {
          v29 = *(v78 + v77);
          v30 = v27 + 40;
          do
          {

            v32 = sub_21BE289CC();

            v33 = [v29 getIDForPhoneNumberWithPhoneNumber_];

            if (v33)
            {
              v34 = sub_21BE28A0C();
              v36 = v35;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v6 = sub_21BBBC990(0, *(v6 + 2) + 1, 1, v6);
              }

              v2 = *(v6 + 2);
              v37 = *(v6 + 3);
              if (v2 >= v37 >> 1)
              {
                v6 = sub_21BBBC990((v37 > 1), v2 + 1, 1, v6);
              }

              *(v6 + 2) = v2 + 1;
              v31 = &v6[16 * v2];
              *(v31 + 4) = v34;
              *(v31 + 5) = v36;
            }

            v30 += 16;
            --v28;
          }

          while (v28);
        }

        v3 = v75;
        v1 = v76;
        v5 = v74;
LABEL_45:
        v7 = &selRef_bundleURL;
        goto LABEL_6;
      }

LABEL_6:
      if (v4 == v3)
      {
        goto LABEL_47;
      }
    }

    v38 = [v9 handle];
    if (v38 && (v39 = v38, v40 = [*(v78 + v77) getIDForEmailAddressWithHandle_], v39, v40) || (v41 = objc_msgSend(v9, sel_iMessageHandle, v71)) != 0 && (v42 = v41, v40 = objc_msgSend(*(v78 + v77), sel_getIDForBestGuessIDWithHandle_, v41), v42, v40))
    {
      v81 = sub_21BE28A0C();
      v44 = v43;

      v2 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_21BBBC990(0, *(v6 + 2) + 1, 1, v6);
      }

      v46 = *(v6 + 2);
      v45 = *(v6 + 3);
      if (v46 >= v45 >> 1)
      {
        v6 = sub_21BBBC990((v45 > 1), v46 + 1, 1, v6);
      }

      *(v6 + 2) = v46 + 1;
      v47 = &v6[16 * v46];
      *(v47 + 4) = v81;
      *(v47 + 5) = v44;
      goto LABEL_6;
    }

    v82 = v9;
    sub_21BE2614C();
    v2 = sub_21BE26A2C();
    v48 = sub_21BE28FFC();
    v49 = os_log_type_enabled(v2, v48);
    v50 = *(v1 + 200);
    v51 = *(v1 + 184);
    if (v49)
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_21BB35000, v2, v48, "Recommendation has no contact, handle, or iMessageHandle", v52, 2u);
      MEMORY[0x21CF05C50](v52, -1, -1);
    }

    (*v71)(v50, v51);
    goto LABEL_45;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_47:
  sub_21BE2614C();
  v53 = sub_21BE26A2C();
  v54 = sub_21BE28FFC();
  v55 = os_log_type_enabled(v53, v54);
  v56 = *(v1 + 208);
  v58 = *(v1 + 184);
  v57 = *(v1 + 192);
  if (v55)
  {
    v83 = *(v1 + 208);
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v84 = v60;
    *v59 = 136315138;

    v62 = MEMORY[0x21CF03DF0](v61, MEMORY[0x277D837D0]);
    v64 = v63;

    v65 = sub_21BB3D81C(v62, v64, &v84);

    *(v59 + 4) = v65;
    v1 = v76;
    _os_log_impl(&dword_21BB35000, v53, v54, "Checking IDStatus for handles: %s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v60);
    MEMORY[0x21CF05C50](v60, -1, -1);
    MEMORY[0x21CF05C50](v59, -1, -1);

    (*(v57 + 8))(v83, v58);
  }

  else
  {

    (*(v57 + 8))(v56, v58);
  }

  *(v1 + 216) = v6;
  if (*(v6 + 2))
  {
    v66 = *(*(v1 + 160) + OBJC_IVAR___IMessageHandlesForPeopleRecommendations_provider);

    v67 = sub_21BE28C1C();
    *(v1 + 224) = v67;

    *(v1 + 16) = v1;
    *(v1 + 56) = v1 + 144;
    *(v1 + 24) = sub_21BD77658;
    v68 = swift_continuation_init();
    *(v1 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBBE0, &qword_21BE48838);
    *(v1 + 80) = MEMORY[0x277D85DD0];
    *(v1 + 88) = 1107296256;
    *(v1 + 96) = sub_21BD769CC;
    *(v1 + 104) = &block_descriptor_47;
    *(v1 + 112) = v68;
    [v66 validateHandlesWithIdsDestinations:v67 completionHandler:v1 + 80];

    return MEMORY[0x282200938](v1 + 16);
  }

  else
  {
    (*(v1 + 168))(MEMORY[0x277D84F90], 0);

    v69 = *(v1 + 8);

    return v69();
  }
}

uint64_t sub_21BD77658()
{

  return MEMORY[0x2822009F8](sub_21BD77738, 0, 0);
}

uint64_t sub_21BD77738()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);

  v3 = sub_21BC71F58(v2);

  v1(v3, 0);

  v4 = *(v0 + 8);

  return v4();
}

void sub_21BD7789C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = sub_21BE28C1C();
    if (a2)
    {
LABEL_3:
      v6 = sub_21BE25A7C();
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

id sub_21BD779B0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_21BD779F8(uint64_t a1)
{
  v1[6] = a1;
  v2 = sub_21BE26A4C();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BD77AC4, 0, 0);
}

uint64_t sub_21BD77AC4()
{
  v20 = v0;
  v1 = [objc_opt_self() sharedInstance];
  v0[11] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v0[6];
    v4 = swift_allocObject();
    v0[12] = v4;
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = v2;

    v6 = swift_task_alloc();
    v0[13] = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EF0, &unk_21BE33800);
    *v6 = v0;
    v6[1] = sub_21BD77D58;

    return MEMORY[0x2821372C0](v0 + 4, 0x8AC7230489E80000, 0, &unk_21BE48848, v4, v7);
  }

  else
  {
    sub_21BE2614C();
    v8 = sub_21BE26A2C();
    v9 = sub_21BE28FDC();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[10];
    v12 = v0[7];
    v13 = v0[8];
    if (v10)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_21BB3D81C(0xD000000000000021, 0x800000021BE60520, &v19);
      _os_log_impl(&dword_21BB35000, v8, v9, "%s IDSIDQueryController doesn't exist", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x21CF05C50](v15, -1, -1);
      MEMORY[0x21CF05C50](v14, -1, -1);
    }

    (*(v13 + 8))(v11, v12);

    v16 = v0[1];
    v17 = MEMORY[0x277D84F90];

    return v16(v17);
  }
}

uint64_t sub_21BD77D58()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_21BD77EEC;
  }

  else
  {

    v2 = sub_21BD77E74;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21BD77E74()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_21BD77EEC()
{
  v1 = v0[14];
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];

  sub_21BE2614C();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v6 = v1;
  MEMORY[0x21CF03CA0](0xD000000000000021, 0x800000021BE60520);
  MEMORY[0x21CF03CA0](0x203A726F72726520, 0xE800000000000000);
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
  sub_21BE2977C();
  sub_21BC51D50(v1, v0[2], v0[3]);

  (*(v4 + 8))(v3, v5);

  v7 = v0[1];
  v8 = MEMORY[0x277D84F90];

  return v7(v8);
}

uint64_t sub_21BD780AC(uint64_t a1)
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
  v10[1] = sub_21BBB7EB8;

  return sub_21BD76D28(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t dispatch thunk of IDSRecommendationProvider.validateHandles(idsDestinations:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBB8A28;

  return v7(a1);
}

void sub_21BD783C4(unint64_t a1, void *a2, void (**a3)(void, void, void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_21BE26A4C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  if (a1 >> 62)
  {
    v14 = sub_21BE2951C();
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  _Block_copy(a3);
  if (v14)
  {
    sub_21BE28D8C();
    v15 = sub_21BE28DAC();
    (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = a1;
    v16[5] = a2;
    v16[6] = sub_21BD7871C;
    v16[7] = v13;

    v17 = a2;

    sub_21BBA932C(0, 0, v8, &unk_21BE48820, v16);
  }

  else
  {
    sub_21BE2614C();
    v18 = sub_21BE26A2C();
    v19 = sub_21BE28FFC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v24 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_21BB3D81C(0xD00000000000002FLL, 0x800000021BE60460, &v24);
      _os_log_impl(&dword_21BB35000, v18, v19, " %s No recommendations supplied", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x21CF05C50](v21, -1, -1);
      MEMORY[0x21CF05C50](v20, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    v22 = sub_21BE28C1C();
    (a3)[2](a3, v22, 0);
  }
}

uint64_t objectdestroyTm_28()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BD78774()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBA6A64;

  return sub_21BD765B8(v2, v3, v4);
}

uint64_t sub_21BD78828(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21BBA6A64;

  return sub_21BD758F0(a1, v5, v4);
}

void sub_21BD788DC(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBBE8, qword_21BE48850) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_21BD75DBC(a1, v4);
}

uint64_t sub_21BD78974()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

uint64_t sub_21BD789EC(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v2[8] = swift_task_alloc();
  v2[9] = sub_21BE28D7C();
  v2[10] = sub_21BE28D6C();
  v3 = swift_task_alloc();
  v2[11] = v3;
  *v3 = v2;
  v3[1] = sub_21BD78AD4;

  return sub_21BD78E34();
}

uint64_t sub_21BD78AD4()
{

  v1 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BD78C10, v1, v0);
}

uint64_t sub_21BD78C10()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);

  v4 = sub_21BE28DAC();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);

  v5 = sub_21BE28D6C();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v2;
  sub_21BBA932C(0, 0, v1, &unk_21BE488D8, v6);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  *v3 = *(v0 + 16);
  *(v3 + 16) = v8;
  *(v3 + 24) = v9;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_21BD78D88()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BBAFDA8;

  return sub_21BD79520();
}

uint64_t sub_21BD78E34()
{
  v1[6] = v0;
  v2 = sub_21BE26A4C();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  sub_21BE28D7C();
  v1[11] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v1[12] = v4;
  v1[13] = v3;

  return MEMORY[0x2822009F8](sub_21BD78F34, v4, v3);
}

uint64_t sub_21BD78F34()
{
  v3 = (*MEMORY[0x277D08060] + MEMORY[0x277D08060]);
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_21BD78FE0;

  return v3(0);
}

uint64_t sub_21BD78FE0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[15] = a1;
  v5[16] = a2;
  v5[17] = v2;

  v6 = v4[13];
  v7 = v4[12];
  if (v2)
  {
    v8 = sub_21BD7943C;
  }

  else
  {
    v8 = sub_21BD79128;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_21BD79128()
{
  v32 = v0;
  v1 = v0[16];

  if (v1 >> 60 == 15)
  {
    v2 = MEMORY[0x21CF01210](0xD000000000000032, 0x800000021BE606A0, 0xD000000000000010, 0x800000021BE573A0, 500);
    swift_willThrow();
LABEL_8:
    v24 = v0[8];
    v23 = v0[9];
    v25 = v0[7];
    sub_21BE261BC();
    v26 = v2;
    sub_21BC51D50(v2, 0xD000000000000035, 0x800000021BE60660);

    (*(v24 + 8))(v23, v25);
    goto LABEL_9;
  }

  v3 = sub_21BD247B0(v0[15], v0[16]);
  if (!v4)
  {
    v22 = v0[15];
    v21 = v0[16];
    v2 = MEMORY[0x21CF01210](0xD00000000000002DLL, 0x800000021BE606E0, 0xD000000000000010, 0x800000021BE573A0, 500);
    swift_willThrow();
    sub_21BBBF0B4(v22, v21);
    goto LABEL_8;
  }

  v7 = v3;
  v8 = v4;
  v9 = v6;
  v30 = v5;
  sub_21BE261BC();
  v10 = sub_21BE26A2C();
  v11 = sub_21BE28FFC();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[10];
  v15 = v0[7];
  v14 = v0[8];
  if (v12)
  {
    v29 = v7;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v31 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_21BB3D81C(0x6D6F724664616F6CLL, 0xEF29286568636143, &v31);
    _os_log_impl(&dword_21BB35000, v10, v11, "%s updated ChecklistRankingConfig", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    MEMORY[0x21CF05C50](v17, -1, -1);
    v18 = v16;
    v7 = v29;
    MEMORY[0x21CF05C50](v18, -1, -1);
  }

  (*(v14 + 8))(v13, v15);
  v19 = v0[15];
  v20 = v0[16];
  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v7;
  v0[3] = v8;
  v0[4] = v30;
  v0[5] = v9;

  sub_21BE26CBC();
  sub_21BBBF0B4(v19, v20);
LABEL_9:

  v27 = v0[1];

  return v27();
}

uint64_t sub_21BD7943C()
{

  v1 = v0[17];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  sub_21BE261BC();
  v5 = v1;
  sub_21BC51D50(v1, 0xD000000000000035, 0x800000021BE60660);

  (*(v3 + 8))(v2, v4);

  v6 = v0[1];

  return v6();
}