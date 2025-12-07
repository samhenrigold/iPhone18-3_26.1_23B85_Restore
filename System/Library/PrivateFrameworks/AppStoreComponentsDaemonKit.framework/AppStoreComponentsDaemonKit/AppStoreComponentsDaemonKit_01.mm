uint64_t sub_22266DA94()
{
  *(*v1 + 496) = v0;

  if (v0)
  {
    v2 = sub_22266DE54;
  }

  else
  {

    v2 = sub_22266DBB0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22266DBB0()
{
  v1 = v0[56];
  v2 = v0[53];
  v3 = v0[51];
  v4 = v0[39];
  v6 = v0[34];
  v5 = v0[35];
  v7 = v0[33];
  v8 = v0[29];
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  (*(v6 + 8))(v5, v7);
  v9 = *MEMORY[0x277D21CA8];
  v10 = sub_2227383CC();
  (*(*(v10 - 8) + 104))(v8, v9, v10);
  sub_22266110C(v2, v3, &qword_27D013000, &qword_222741668);
  v11 = v1(v3, 1, v4);
  v12 = v0[55];
  if (v11 == 1)
  {
    v13 = v0 + 51;
    v14 = v0[53];

    sub_222660468(v14, &qword_27D013000, &qword_222741668);
  }

  else
  {
    v15 = v0[43];
    v16 = v0[39];
    v17 = v0[40];
    (*(v17 + 32))(v15, v0[51], v16);
    __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
    sub_22273799C();

    (*(v17 + 8))(v15, v16);
    v13 = v0 + 53;
  }

  sub_222660468(*v13, &qword_27D013000, &qword_222741668);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v18 = v0[1];

  return v18();
}

uint64_t sub_22266DE54()
{
  v1 = v0[56];
  v2 = v0 + 53;
  v3 = v0[53];
  v4 = v0[50];
  v5 = v0[39];
  v7 = v0[34];
  v6 = v0[35];
  v8 = v0[33];

  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  (*(v7 + 8))(v6, v8);
  sub_22266110C(v3, v4, &qword_27D013000, &qword_222741668);
  v9 = v1(v4, 1, v5);
  v10 = v0[55];
  if (v9 == 1)
  {
    v11 = *v2;

    sub_222660468(v11, &qword_27D013000, &qword_222741668);
    v2 = v0 + 50;
  }

  else
  {
    v12 = v0[42];
    v13 = v0[39];
    v14 = v0[40];
    (*(v14 + 32))(v12, v0[50], v13);
    __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
    sub_22273799C();

    (*(v14 + 8))(v12, v13);
  }

  sub_222660468(*v2, &qword_27D013000, &qword_222741668);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v15 = v0[1];

  return v15();
}

uint64_t sub_22266E0B0()
{
  v1 = *(v0 + 448);
  v2 = (v0 + 424);
  v3 = *(v0 + 424);
  v4 = *(v0 + 392);
  v5 = *(v0 + 312);

  sub_22266110C(v3, v4, &qword_27D013000, &qword_222741668);
  v6 = v1(v4, 1, v5);
  v7 = *(v0 + 440);
  if (v6 == 1)
  {
    v8 = *v2;

    sub_222660468(v8, &qword_27D013000, &qword_222741668);
    v2 = (v0 + 392);
  }

  else
  {
    v10 = *(v0 + 320);
    v9 = *(v0 + 328);
    v11 = *(v0 + 312);
    (*(v10 + 32))(v9, *(v0 + 392), v11);
    __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    sub_22273799C();

    (*(v10 + 8))(v9, v11);
  }

  sub_222660468(*v2, &qword_27D013000, &qword_222741668);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_22266E2E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  sub_2227381BC();
  v3[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22266E3AC, 0, 0);
}

uint64_t sub_22266E3AC()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  v3 = sub_22273946C();
  v4 = *(*(v3 - 8) + 56);
  v4(v1, 1, 1, v3);
  sub_22266BCCC(v2, v0 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  sub_222634290((v0 + 16), v5 + 32);
  sub_2226FF5B4(v1, &unk_222741690, v5);
  sub_222660468(v1, &unk_27D013050, &qword_222741370);
  v4(v1, 1, 1, v3);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  sub_2226FF5B4(v1, &unk_2227416A0, v6);
  sub_222660468(v1, &unk_27D013050, &qword_222741370);
  v7 = swift_task_alloc();
  *(v0 + 152) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013008, &qword_2227416A8);
  *v7 = v0;
  v7[1] = sub_22266E5A4;

  return MEMORY[0x2822004D0](v0 + 168, 0, 0, v8);
}

uint64_t sub_22266E5A4()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_22266E76C;
  }

  else
  {
    v2 = sub_22266E6B8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22266E6B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013130, &qword_2227416B0);
  sub_22273949C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22266E76C()
{
  if (qword_27D0129A0 != -1)
  {
    swift_once();
  }

  v1 = sub_222738F6C();
  __swift_project_value_buffer(v1, qword_27D019C68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  swift_getErrorValue();
  v2 = v0[11];
  v3 = v0[12];
  v0[10] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v2, v3);
  sub_22273816C();
  sub_222660468((v0 + 7), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013130, &qword_2227416B0);
  sub_22273949C();
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_22266E9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013010, &qword_2227416B8);
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013018, &qword_2227416C0);
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22266EB38, 0, 0);
}

uint64_t sub_22266EB38()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013020, &qword_2227416C8);
  sub_22262BED4(&unk_281312FA0, &qword_27D013020, &qword_2227416C8, MEMORY[0x277D21A98]);
  sub_22273833C();

  (*(v4 + 16))(v1, v2, v3);
  sub_22262BED4(&qword_27D013028, &qword_27D013018, &qword_2227416C0, MEMORY[0x277D857C0]);
  sub_2227394AC();
  v5 = sub_22262BED4(&unk_27D013030, &qword_27D013010, &qword_2227416B8, MEMORY[0x277D857B0]);
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_22266ED18;
  v7 = *(v0 + 24);

  return MEMORY[0x282200308](v0 + 88, v7, v5);
}

uint64_t sub_22266ED18()
{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[4];
    v3 = v2[5];
    v5 = v2[3];

    (*(v4 + 8))(v3, v5);
    v6 = _ASCSignpostTag_valueTooLarge;
  }

  else
  {
    v6 = sub_22266EE58;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22266EE58()
{
  v1 = *(v0 + 88);
  if (v1 == 2)
  {
    (*(*(v0 + 32) + 8))(*(v0 + 40), *(v0 + 24));
LABEL_7:
    (*(*(v0 + 56) + 8))(*(v0 + 72), *(v0 + 48));

    v3 = *(v0 + 8);

    return v3();
  }

  if (v1)
  {
    (*(*(v0 + 32) + 8))(*(v0 + 40), *(v0 + 24));
    if (qword_27D0129A0 != -1)
    {
      swift_once();
    }

    v2 = sub_222738F6C();
    __swift_project_value_buffer(v2, qword_27D019C68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    sub_2227381FC();
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_22273813C();
    sub_222738C4C();

    goto LABEL_7;
  }

  v5 = sub_22262BED4(&unk_27D013030, &qword_27D013010, &qword_2227416B8, MEMORY[0x277D857B0]);
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_22266ED18;
  v7 = *(v0 + 24);

  return MEMORY[0x282200308](v0 + 88, v7, v5);
}

uint64_t sub_22266F108()
{
  v1 = sub_2227399BC();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22266F1C4, 0, 0);
}

uint64_t sub_22266F1C4()
{
  sub_222739BBC();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_22266F298;

  return sub_2227016CC(0x70801D946C940000, 2, 1000000000000000000, 0, 0);
}

uint64_t sub_22266F298()
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  *(*v1 + 48) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_22266F408;
  }

  else
  {
    v5 = sub_22266F46C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22266F408()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22266F46C()
{
  if (qword_27D0129A0 != -1)
  {
    swift_once();
  }

  v1 = sub_222738F6C();
  __swift_project_value_buffer(v1, qword_27D019C68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C6C();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22266F5FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_222660228;

  return sub_22266CD40(a1, a2, a3);
}

uint64_t sub_22266F6F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22266FA20();

  return MEMORY[0x28217FED0](a1, a2, a3, v6);
}

void sub_22266F748(char a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() sharedWorkspace];
  v6 = sub_2227372BC();
  sub_2226B0CA4(a3);
  v7 = sub_2227390FC();

  v8 = &selRef_openSensitiveURL_frontBoardOptions_;
  if ((a1 & 1) == 0)
  {
    v8 = &selRef_openURL_frontBoardOptions_;
  }
}

void sub_22266F830()
{
  v1 = *(sub_22273731C() - 8);
  v2 = (*(v1 + 80) + 17) & ~*(v1 + 80);
  sub_22266F748(*(v0 + 16), v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_22266F8C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22266F92C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22266F98C()
{
  result = qword_27D012F98;
  if (!qword_27D012F98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D012F98);
  }

  return result;
}

uint64_t sub_22266F9D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22266FA20()
{
  result = qword_27D012FF8;
  if (!qword_27D012FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D012FF8);
  }

  return result;
}

uint64_t sub_22266FA74(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_222660228;

  return sub_22266E2E4(a1, a2, v6);
}

uint64_t sub_22266FB24(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22266BE24;

  return sub_22266E9F8(a1, v4, v5, v1 + 32);
}

uint64_t sub_22266FBD4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22266BE24;

  return sub_22266F108();
}

unint64_t sub_22266FC94()
{
  result = qword_27D013040;
  if (!qword_27D013040)
  {
    sub_22262E364(255, &qword_27D013048, off_2784B0618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013040);
  }

  return result;
}

uint64_t sub_22266FCFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[73] = a3;
  v3[72] = a2;
  v3[71] = a1;
  sub_2227381BC();
  v3[74] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013060, &unk_2227412E0);
  v3[75] = v4;
  v3[76] = *(v4 - 8);
  v3[77] = swift_task_alloc();
  v3[78] = swift_task_alloc();
  v5 = sub_2227376CC();
  v3[79] = v5;
  v3[80] = *(v5 - 8);
  v3[81] = swift_task_alloc();
  v6 = sub_22273887C();
  v3[82] = v6;
  v3[83] = *(v6 - 8);
  v3[84] = swift_task_alloc();
  v3[85] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F70, &unk_222741260);
  v3[86] = v7;
  v3[87] = *(v7 - 8);
  v3[88] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22266FF34, 0, 0);
}

uint64_t sub_22266FF34()
{
  v1 = *(v0 + 576);
  type metadata accessor for ObjectGraph(0);
  sub_222738C9C();
  v2 = qword_281313EB0;
  swift_beginAccess();
  sub_222671774(v1 + v2, v0 + 216);
  if (*(v0 + 240))
  {
    v3 = *(v0 + 584);
    sub_222634290((v0 + 216), v0 + 176);
    sub_22262E364(0, &qword_27D013080, off_2784B06E8);
    sub_22273857C();
    v4 = *(v0 + 512);
    sub_22273886C();
    *(v0 + 520) = v3;
    if (qword_27D0129E0 != -1)
    {
      swift_once();
    }

    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0131A0, &unk_222741760);
    __swift_project_value_buffer(v5, qword_27D019CB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013090, &qword_222744020);
    sub_22273885C();
    if (v4)
    {
      *(v0 + 560) = v4;
      v6 = qword_27D0129D0;
      v7 = v4;
      if (v6 != -1)
      {
        swift_once();
      }

      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0131B0, &unk_222741790);
      __swift_project_value_buffer(v8, qword_27D019C98);
      sub_22273885C();
    }

    v9 = *(v0 + 648);
    v10 = *(v0 + 640);
    v11 = *(v0 + 632);
    (*(*(v0 + 664) + 32))(*(v0 + 680), *(v0 + 672), *(v0 + 656));
    __swift_project_boxed_opaque_existential_1((v0 + 176), *(v0 + 200));
    sub_222737B8C();
    if ((*(v10 + 88))(v9, v11) == *MEMORY[0x277CEBF78])
    {
      v12 = *(v0 + 584);
      (*(*(v0 + 640) + 8))(*(v0 + 648), *(v0 + 632));
      v13 = [v12 subscribedOffer];
      sub_2226839AC(v0 + 416);
      swift_unknownObjectRelease();
      if (*(v0 + 440))
      {
        v14 = *(v0 + 680);
        v15 = *(v0 + 664);
        v16 = *(v0 + 656);
        v17 = *(v0 + 624);
        v18 = *(v0 + 608);
        v19 = *(v0 + 600);
        sub_222634290((v0 + 416), v0 + 376);
        (*(v15 + 16))(v17, v14, v16);
        (*(v18 + 104))(v17, *MEMORY[0x277D21E10], v19);
        v20 = swift_task_alloc();
        *(v0 + 712) = v20;
        *v20 = v0;
        v20[1] = sub_222670AF0;
        v21 = *(v0 + 688);
        v22 = *(v0 + 624);
        v23 = *(v0 + 576);
        v24 = *(v0 + 568);
        v25 = v0 + 376;
LABEL_17:

        return MEMORY[0x28217F468](v24, v25, v22, v23, v21);
      }

      v32 = *(v0 + 696);
      v65 = *(v0 + 688);
      v67 = *(v0 + 704);
      v63 = *(v0 + 680);
      v33 = *(v0 + 664);
      v34 = *(v0 + 656);
      v35 = *(v0 + 584);
      sub_222660468(v0 + 416, &unk_27D013240, &unk_222741770);
      type metadata accessor for ASCAppOfferActionError(0);
      *(v0 + 552) = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2227412F0;
      *(inited + 32) = sub_22273919C();
      *(inited + 40) = v37;
      sub_22273991C();
      v38 = [v35 subscribedOffer];
      swift_getObjectType();
      swift_unknownObjectRelease();
      v39 = sub_222739D2C();
      v41 = v40;

      MEMORY[0x223DBE5D0](0xD00000000000001ELL, 0x80000002227481D0);
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 48) = v39;
      *(inited + 56) = v41;
      sub_222710688(inited);
      swift_setDeallocating();
      sub_222660468(inited + 32, &qword_27D013250, &unk_222741780);
      sub_2226717E4();
      sub_22273725C();
      swift_willThrow();
      (*(v33 + 8))(v63, v34);
      (*(v32 + 8))(v67, v65);
      goto LABEL_22;
    }

    v27 = [*(v0 + 584) notSubscribedOffer];
    sub_2226839AC(v0 + 296);
    swift_unknownObjectRelease();
    if (!*(v0 + 320))
    {
      v42 = *(v0 + 696);
      v61 = *(v0 + 680);
      v62 = *(v0 + 688);
      v43 = *(v0 + 664);
      v60 = *(v0 + 656);
      v66 = *(v0 + 704);
      v68 = *(v0 + 648);
      v44 = *(v0 + 640);
      v64 = *(v0 + 632);
      v45 = *(v0 + 584);
      sub_222660468(v0 + 296, &unk_27D013240, &unk_222741770);
      type metadata accessor for ASCAppOfferActionError(0);
      *(v0 + 536) = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
      v46 = swift_initStackObject();
      *(v46 + 16) = xmmword_2227412F0;
      *(v46 + 32) = sub_22273919C();
      *(v46 + 40) = v47;
      sub_22273991C();
      v48 = [v45 notSubscribedOffer];
      swift_getObjectType();
      swift_unknownObjectRelease();
      v49 = sub_222739D2C();
      v51 = v50;

      MEMORY[0x223DBE5D0](0xD00000000000001ELL, 0x80000002227481D0);
      *(v46 + 72) = MEMORY[0x277D837D0];
      *(v46 + 48) = v49;
      *(v46 + 56) = v51;
      sub_222710688(v46);
      swift_setDeallocating();
      sub_222660468(v46 + 32, &qword_27D013250, &unk_222741780);
      sub_2226717E4();
      sub_22273725C();
      swift_willThrow();
      (*(v43 + 8))(v61, v60);
      (*(v42 + 8))(v66, v62);
      (*(v44 + 8))(v68, v64);
LABEL_22:
      __swift_destroy_boxed_opaque_existential_1((v0 + 176));

      v52 = *(v0 + 8);

      return v52();
    }

    sub_222634290((v0 + 296), v0 + 256);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012FA0, &qword_2227414C8);
    sub_222738C9C();
    if (*(*__swift_project_boxed_opaque_existential_1((v0 + 336), *(v0 + 360)) + 16))
    {
      v28 = *(v0 + 616);
      v29 = *(v0 + 608);
      v30 = *(v0 + 600);
      (*(*(v0 + 664) + 16))(v28, *(v0 + 680), *(v0 + 656));
      (*(v29 + 104))(v28, *MEMORY[0x277D21E10], v30);
      v31 = swift_task_alloc();
      *(v0 + 752) = v31;
      *v31 = v0;
      v31[1] = sub_222671000;
      v21 = *(v0 + 688);
      v22 = *(v0 + 616);
      v23 = *(v0 + 576);
      v24 = *(v0 + 568);
      v25 = v0 + 256;
      goto LABEL_17;
    }

    if (qword_27D0129A0 != -1)
    {
      swift_once();
    }

    v53 = *(v0 + 584);
    v54 = sub_222738F6C();
    __swift_project_value_buffer(v54, qword_27D019C68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    sub_2227381FC();
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    v55 = [v53 id];
    *(v0 + 480) = sub_22262E364(0, &qword_281312B70, off_2784B05F0);
    *(v0 + 456) = v55;
    sub_22273815C();
    sub_222660468(v0 + 456, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C7C();

    v56 = [v53 &selRef_presentingSceneIdentifier + 3];
    *(v0 + 728) = v56;
    v57 = swift_task_alloc();
    *(v0 + 736) = v57;
    *v57 = v0;
    v57[1] = sub_222670D78;
    v58 = *(v0 + 576);
    v59 = *(v0 + 568);

    return sub_22266BE94(v59, v56, v58);
  }

  else
  {
    sub_222660468(v0 + 216, &qword_27D013070, &qword_222742730);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013078, &unk_222741750);

    return sub_22273851C();
  }
}

uint64_t sub_222670AF0()
{
  v2 = *v1;
  *(*v1 + 720) = v0;

  (*(v2[76] + 8))(v2[78], v2[75]);
  if (v0)
  {
    v3 = sub_222671168;
  }

  else
  {
    v3 = sub_222670C58;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_222670C58()
{
  v1 = v0[88];
  v2 = v0[87];
  v3 = v0[86];
  v4 = v0[85];
  v5 = v0[83];
  v6 = v0[82];
  __swift_destroy_boxed_opaque_existential_1(v0 + 47);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);

  v7 = v0[1];

  return v7();
}

uint64_t sub_222670D78()
{
  *(*v1 + 744) = v0;

  swift_unknownObjectRelease();
  if (v0)
  {
    v2 = sub_222671288;
  }

  else
  {
    v2 = sub_222670EAC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_222670EAC()
{
  v1 = v0[88];
  v2 = v0[87];
  v3 = v0[86];
  v4 = v0[85];
  v5 = v0[83];
  v6 = v0[82];
  v7 = v0[81];
  v8 = v0[80];
  v9 = v0[79];
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 42);
  (*(v8 + 8))(v7, v9);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);

  v10 = v0[1];

  return v10();
}

uint64_t sub_222671000()
{
  v2 = *v1;
  *(*v1 + 760) = v0;

  (*(v2[76] + 8))(v2[77], v2[75]);
  if (v0)
  {
    v3 = sub_2226713DC;
  }

  else
  {
    v3 = sub_22267183C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_222671168()
{
  v1 = v0[88];
  v2 = v0[87];
  v3 = v0[86];
  v4 = v0[85];
  v5 = v0[83];
  v6 = v0[82];
  __swift_destroy_boxed_opaque_existential_1(v0 + 47);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);

  v7 = v0[1];

  return v7();
}

uint64_t sub_222671288()
{
  v1 = v0[88];
  v2 = v0[87];
  v3 = v0[86];
  v4 = v0[85];
  v5 = v0[83];
  v6 = v0[82];
  v7 = v0[81];
  v8 = v0[80];
  v9 = v0[79];
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 42);
  (*(v8 + 8))(v7, v9);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);

  v10 = v0[1];

  return v10();
}

uint64_t sub_2226713DC()
{
  v1 = v0[88];
  v2 = v0[87];
  v3 = v0[86];
  v4 = v0[85];
  v5 = v0[83];
  v6 = v0[82];
  v7 = v0[81];
  v8 = v0[80];
  v9 = v0[79];
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 42);
  (*(v8 + 8))(v7, v9);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);

  v10 = v0[1];

  return v10();
}

uint64_t sub_222671530(void **a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F68, &unk_222741250);

  v9 = v7;
  v10 = sub_222738F2C();
  v11 = sub_22273946C();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_222741740;
  v12[5] = v8;
  v12[6] = v10;

  sub_2226D4E54(0, 0, v6, &unk_222741390, v12);

  return v10;
}

uint64_t sub_2226716C8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_222660228;

  return sub_22266FCFC(a1, v5, v4);
}

uint64_t sub_222671774(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013070, &qword_222742730);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2226717E4()
{
  result = qword_27D012C20;
  if (!qword_27D012C20)
  {
    type metadata accessor for ASCAppOfferActionError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D012C20);
  }

  return result;
}

unint64_t sub_222671854()
{
  result = qword_27D0131C0;
  if (!qword_27D0131C0)
  {
    type metadata accessor for CancelOrPauseInstallAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0131C0);
  }

  return result;
}

uint64_t sub_2226718AC(uint64_t a1, uint64_t a2, void *a3)
{
  v3[37] = a2;
  v3[38] = a3;
  v3[36] = a1;
  v3[39] = *a3;
  v4 = sub_2227376DC();
  v3[40] = v4;
  v3[41] = *(v4 - 8);
  v3[42] = swift_task_alloc();
  v5 = sub_222737C2C();
  v3[43] = v5;
  v3[44] = *(v5 - 8);
  v3[45] = swift_task_alloc();
  sub_2227381BC();
  v3[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222671A20, 0, 0);
}

uint64_t sub_222671A20()
{
  if (qword_27D0129A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 296);
  v2 = sub_222738F6C();
  *(v0 + 376) = v2;
  *(v0 + 384) = __swift_project_value_buffer(v2, qword_27D019C68);
  *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v3 = *(sub_2227381FC() - 8);
  *(v0 + 400) = *(v3 + 72);
  *(v0 + 464) = *(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v4 = *(v1 + *(type metadata accessor for CancelOrPauseInstallAction(0) + 20));
  *(v0 + 408) = v4;
  v5 = sub_222672B54();
  *(v0 + 416) = v5;
  *(v0 + 120) = v5;
  *(v0 + 96) = v4;
  v6 = v4;
  sub_22273815C();
  sub_222672BA0(v0 + 96);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0130C8, &unk_222742680);
  sub_222738C9C();
  [v6 int64value];
  sub_222737C1C();
  v7 = *(v0 + 352);
  v8 = *(v0 + 360);
  v9 = *(v0 + 336);
  v10 = *(v0 + 344);
  v11 = *(v0 + 320);
  v12 = *(v0 + 328);
  v13 = *(v0 + 40);
  v21 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0132D0, &unk_222741830);
  v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2227412F0;
  (*(v7 + 16))(v15 + v14, v8, v10);
  v16 = sub_2226DD264(v15);
  swift_setDeallocating();
  v17 = *(v7 + 8);
  *(v0 + 424) = v17;
  *(v0 + 432) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v15 + v14, v10);
  swift_deallocClassInstance();
  *v9 = v16;
  (*(v12 + 104))(v9, *MEMORY[0x277CEBFA0], v11);
  v18 = swift_task_alloc();
  *(v0 + 440) = v18;
  *v18 = v0;
  v18[1] = sub_222671E28;
  v19 = *(v0 + 336);

  return MEMORY[0x28213E270](v19, v13, v21);
}

uint64_t sub_222671E28(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[56] = a1;
  v4[57] = v1;

  (*(v3[41] + 8))(v3[42], v3[40]);
  if (v1)
  {
    v5 = sub_2226726B4;
  }

  else
  {
    v5 = sub_222671F98;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_222671F98()
{
  v1 = v0[56];
  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_20:
    v42 = v0[53];
    v27 = v0[51];
    v26 = v0[52];
    v38 = v0[43];
    v41 = v0[45];

    *(swift_allocObject() + 16) = xmmword_2227413C0;
    sub_2227381AC();
    sub_22273819C();
    v0[35] = v26;
    v0[32] = v27;
    v28 = v27;
    sub_22273815C();
    sub_222672BA0((v0 + 32));
    sub_22273819C();
    sub_2227381CC();
    sub_22273813C();
    sub_222738C6C();

    v42(v41, v38);
    goto LABEL_21;
  }

  result = sub_22273984C();
  if (!result)
  {
    goto LABEL_20;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x223DBEC70](0, v0[56]);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[56] + 32);
  }

  v4 = [v3 progress];
  v43 = v3;
  if (!v4)
  {
    v39 = v0[53];
    v10 = v0[51];
    v11 = v0[52];
    v33 = v0[43];
    v35 = v0[45];
    *(swift_allocObject() + 16) = xmmword_2227413C0;
    sub_2227381AC();
    sub_22273819C();
    v0[19] = v11;
    v0[16] = v10;
    v12 = v10;
    sub_22273815C();
    sub_222672BA0((v0 + 16));
    sub_22273819C();
    sub_2227381CC();
    sub_22273813C();
    sub_222738C6C();

    goto LABEL_11;
  }

  v5 = v4;
  v0[10] = &type metadata for Feature;
  v0[11] = sub_222672C08();
  *(v0 + 56) = 1;
  v6 = sub_22273748C();
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  if ((v6 & 1) == 0)
  {
    v15 = [v5 cancellationHandler];
    if (v15)
    {
      v16 = v15;
      (*(v15 + 2))();
      _Block_release(v16);
    }

    v39 = v0[53];
    v18 = v0[51];
    v17 = v0[52];
    v36 = v0[45];
    v19 = v0[43];
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    v0[23] = v17;
    v0[20] = v18;
    v20 = v18;
    sub_22273815C();
    sub_222672BA0((v0 + 20));
    sub_22273819C();
    sub_2227381CC();
    sub_222738C4C();

    v13 = v36;
    v14 = v19;
    goto LABEL_15;
  }

  if ([v5 isPausable])
  {
    v39 = v0[53];
    v8 = v0[51];
    v7 = v0[52];
    v35 = v0[45];
    v33 = v0[43];
    [v5 pause];
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    v0[31] = v7;
    v0[28] = v8;
    v9 = v8;
    sub_22273815C();
    sub_222672BA0((v0 + 28));
    sub_22273819C();
    sub_2227381CC();
    sub_222738C4C();

LABEL_11:
    v14 = v33;
    v13 = v35;
LABEL_15:
    v39(v13, v14);
    goto LABEL_21;
  }

  v21 = [v5 cancellationHandler];
  if (v21)
  {
    v22 = v0[51];
    v23 = v0[52];
    v37 = v0[43];
    v40 = v0[45];
    v34 = v0[53];
    v24 = v21;
    (*(v21 + 2))();
    _Block_release(v24);
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    v0[27] = v23;
    v0[24] = v22;
    v25 = v22;
    sub_22273815C();
    sub_222672BA0((v0 + 24));
    sub_22273819C();
    sub_2227381CC();
    sub_222738C4C();

    v34(v40, v37);
  }

  else
  {
    (v0[53])(v0[45], v0[43]);
  }

LABEL_21:
  v29 = v0[36];
  v30 = *MEMORY[0x277D21CA8];
  v31 = sub_2227383CC();
  (*(*(v31 - 8) + 104))(v29, v30, v31);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v32 = v0[1];

  return v32();
}

uint64_t sub_2226726B4()
{
  (*(v0 + 424))(*(v0 + 360), *(v0 + 344));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_222672750(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for CancelOrPauseInstallAction(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_222672980(a1, &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v11 = swift_allocObject();
  sub_2226729E4(&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  *(v11 + ((v9 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F68, &unk_222741250);

  v12 = sub_222738F2C();
  v13 = sub_22273946C();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_222741820;
  v14[5] = v11;
  v14[6] = v12;

  sub_2226D4E54(0, 0, v6, &unk_222741390, v14);

  return v12;
}

uint64_t sub_222672980(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CancelOrPauseInstallAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2226729E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CancelOrPauseInstallAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222672A48(uint64_t a1)
{
  v4 = *(type metadata accessor for CancelOrPauseInstallAction(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_222660228;

  return sub_2226718AC(a1, v1 + v5, v6);
}

unint64_t sub_222672B54()
{
  result = qword_281312B70;
  if (!qword_281312B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281312B70);
  }

  return result;
}

uint64_t sub_222672BA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0130C0, &unk_2227413B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_222672C08()
{
  result = qword_27D0130D0;
  if (!qword_27D0130D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0130D0);
  }

  return result;
}

uint64_t sub_222672CB0()
{
  v0 = sub_222738F4C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_222738F6C();
  __swift_allocate_value_buffer(v4, qword_27D0130D8);
  __swift_project_value_buffer(v4, qword_27D0130D8);
  if (qword_281312E10 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_281315A90);
  (*(v1 + 16))(v3, v5, v0);
  return sub_222738F5C();
}

uint64_t sub_222672E04(uint64_t a1, uint64_t a2, void *a3)
{
  v3[95] = a3;
  v3[94] = a2;
  v3[93] = a1;
  v3[96] = *a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013060, &unk_2227412E0);
  v3[97] = v4;
  v3[98] = *(v4 - 8);
  v3[99] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  v3[100] = swift_task_alloc();
  v5 = sub_222737FBC();
  v3[101] = v5;
  v3[102] = *(v5 - 8);
  v3[103] = swift_task_alloc();
  v6 = sub_2227378CC();
  v3[104] = v6;
  v3[105] = *(v6 - 8);
  v3[106] = swift_task_alloc();
  v7 = sub_2227377AC();
  v3[107] = v7;
  v3[108] = *(v7 - 8);
  v3[109] = swift_task_alloc();
  sub_222737C2C();
  v3[110] = swift_task_alloc();
  v8 = sub_2227377BC();
  v3[111] = v8;
  v3[112] = *(v8 - 8);
  v3[113] = swift_task_alloc();
  v9 = sub_22273793C();
  v3[114] = v9;
  v3[115] = *(v9 - 8);
  v3[116] = swift_task_alloc();
  v3[117] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F70, &unk_222741260);
  v3[118] = v10;
  v3[119] = *(v10 - 8);
  v3[120] = swift_task_alloc();
  sub_2227381BC();
  v3[121] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2226731D0, 0, 0);
}

uint64_t sub_2226731D0()
{
  if (![*(v0 + 752) organicOffer])
  {
    goto LABEL_8;
  }

  ObjectType = swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (!v2)
  {
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v3 = *(v2 + 8);
  v4 = v2;
  swift_unknownObjectRetain();
  v5 = v3(ObjectType, v4);
  *(v0 + 976) = v5;
  swift_unknownObjectRelease_n();
  if (!v5)
  {
LABEL_8:
    if (qword_27D012970 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 752);
    v12 = *(v0 + 744);
    v13 = sub_222738F6C();
    __swift_project_value_buffer(v13, qword_27D0130D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    sub_2227381FC();
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    v14 = [v11 id];
    *(v0 + 408) = sub_22262E364(0, &qword_281312B70, off_2784B05F0);
    *(v0 + 384) = v14;
    sub_22273816C();
    sub_222660468(v0 + 384, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C6C();

    v15 = *MEMORY[0x277D21CA0];
    v16 = sub_2227383CC();
    (*(*(v16 - 8) + 104))(v12, v15, v16);

    v17 = *(v0 + 8);

    return v17();
  }

  if ([*(v0 + 752) streamlinedOffer])
  {
    v6 = swift_getObjectType();
    v7 = swift_conformsToProtocol2();
    if (v7)
    {
      v8 = *(v7 + 8);
      v9 = v7;
      swift_unknownObjectRetain();
      v10 = v8(v6, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0;
  }

  *(v0 + 984) = v10;
  v19 = *(v0 + 760);
  sub_222738C9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013790, &qword_222741570);
  sub_222738C9C();
  v20 = qword_281313EB8;
  swift_beginAccess();
  sub_2226603F8(v19 + v20, v0 + 224);
  if (*(v0 + 248))
  {
    v21 = *(v0 + 752);
    sub_222634290((v0 + 224), v0 + 184);
    v22 = *(*__swift_project_boxed_opaque_existential_1((v0 + 144), *(v0 + 168)) + 16);

    os_unfair_lock_lock((v22 + 32));
    v23 = *(v22 + 16);

    sub_2226F7D38(v24, v23);
    v26 = v25;
    os_unfair_lock_unlock((v22 + 32));

    v27 = [v21 iapItemID];
    v28 = sub_2226DC824(v27, v26);

    __swift_project_boxed_opaque_existential_1((v0 + 184), *(v0 + 208));
    v29 = [v21 id];
    [v29 int64value];
    sub_222737C1C();
    v107 = v28;
    v106 = v10;
    v97 = v5;
    v30 = *(v0 + 904);
    v31 = *(v0 + 896);
    v105 = *(v0 + 888);
    v32 = *(v0 + 848);
    v33 = *(v0 + 840);
    v103 = *(v0 + 832);
    (*(*(v0 + 864) + 104))(*(v0 + 872), *MEMORY[0x277CEBFE8], *(v0 + 856));
    sub_22273778C();

    sub_2227113BC();
    sub_2227379EC();
    (*(v33 + 8))(v32, v103);
    (*(v31 + 8))(v30, v105);
    if (qword_27D012970 != -1)
    {
      swift_once();
    }

    v101 = *(v0 + 936);
    v102 = *(v0 + 928);
    v100 = *(v0 + 920);
    v99 = *(v0 + 912);
    v34 = *(v0 + 752);
    v104 = sub_222738F6C();
    *(v0 + 992) = v104;
    *(v0 + 1000) = __swift_project_value_buffer(v104, qword_27D0130D8);
    *(v0 + 1008) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    v35 = *(sub_2227381FC() - 8);
    *(v0 + 1016) = *(v35 + 72);
    *(v0 + 1112) = *(v35 + 80);
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    v36 = [v34 offerID];
    v37 = sub_22273919C();
    v39 = v38;

    v40 = MEMORY[0x277D837D0];
    *(v0 + 440) = MEMORY[0x277D837D0];
    *(v0 + 416) = v37;
    *(v0 + 424) = v39;
    sub_22273816C();
    sub_222660468(v0 + 416, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    v41 = [v34 offerType];
    type metadata accessor for ASCContingentOfferType(0);
    *(v0 + 472) = v42;
    *(v0 + 448) = v41;
    sub_22273816C();
    sub_222660468(v0 + 448, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    *(v0 + 504) = MEMORY[0x277D839B0];
    *(v0 + 480) = v10 != 0;
    sub_22273816C();
    sub_222660468(v0 + 480, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    v43 = [v34 iapItemID];
    v98 = sub_22262E364(0, &qword_281312B80, 0x277CCABB0);
    *(v0 + 536) = v98;
    *(v0 + 512) = v43;
    sub_22273816C();
    sub_222660468(v0 + 512, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    v44 = [v34 iapItemName];
    v45 = sub_22273919C();
    v47 = v46;

    *(v0 + 568) = v40;
    *(v0 + 544) = v45;
    *(v0 + 552) = v47;
    sub_22273816C();
    sub_222660468(v0 + 544, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    v48 = [v34 iapProductName];
    v49 = sub_22273919C();
    v51 = v50;

    *(v0 + 600) = v40;
    *(v0 + 576) = v49;
    *(v0 + 584) = v51;
    sub_22273816C();
    sub_222660468(v0 + 576, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    *(v0 + 632) = MEMORY[0x277D839B0];
    *(v0 + 608) = v107 & 1;
    sub_22273816C();
    sub_222660468(v0 + 608, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    v52 = [v34 id];
    v53 = [v52 numberValue];

    *(v0 + 664) = v98;
    *(v0 + 640) = v53;
    sub_22273816C();
    sub_222660468(v0 + 640, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    *(v0 + 696) = v99;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 672));
    v55 = *(v100 + 16);
    v55(boxed_opaque_existential_1, v101, v99);
    sub_22273816C();
    sub_222660468(v0 + 672, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C4C();

    v55(v102, v101, v99);
    v56 = (*(v100 + 88))(v102, v99);
    if (v56 == *MEMORY[0x277CEC098])
    {
      (*(*(v0 + 920) + 8))(*(v0 + 928), *(v0 + 912));
      v57 = v0;
      v58 = v107;
LABEL_25:
      if ((v106 == 0) | v58 & 1)
      {
        v59 = *(v57 + 760);
        v60 = v97;
      }

      else
      {
        v72 = *(v57 + 824);
        v73 = *(v57 + 816);
        v74 = *(v57 + 808);
        sub_22262E364(0, &qword_27D012FA8, off_2784B0700);
        v60 = v106;
        sub_222738C9C();
        v75 = *(v57 + 728);
        *(v57 + 736) = [v75 offerContextByAddingFlags_];
        sub_222737FAC();
        v59 = sub_22273855C();

        (*(v73 + 8))(v72, v74);
      }

LABEL_40:
      *(v57 + 1088) = v60;
      *(v57 + 1080) = v59;
      v83 = *(v57 + 792);
      v84 = *(v57 + 784);
      v85 = *(v57 + 776);
      *(v57 + 288) = sub_22262E364(0, &qword_27D012F98, off_2784B0610);
      *(v57 + 296) = sub_222675B10(&qword_27D0133A0, &qword_27D012F98, off_2784B0610, &protocol conformance descriptor for ASCAppOffer);
      *(v57 + 264) = v60;
      (*(v84 + 104))(v83, *MEMORY[0x277D21E18], v85);
      v86 = v60;
      v87 = swift_task_alloc();
      *(v57 + 1096) = v87;
      *v87 = v57;
      v87[1] = sub_2226751DC;
      v88 = *(v57 + 944);
      v89 = *(v57 + 792);
      v90 = *(v57 + 744);

      return MEMORY[0x28217F468](v90, v57 + 264, v89, v59, v88);
    }

    if (v56 != *MEMORY[0x277CEC0C0])
    {
      v57 = v0;
      v58 = v107;
      if (v56 == *MEMORY[0x277CEC0A8] || v56 == *MEMORY[0x277CEC0B0])
      {
        goto LABEL_25;
      }

      v76 = *(v0 + 928);
      v77 = *(v0 + 920);
      v78 = *(v0 + 912);
      v79 = *(v77 + 8);
      v60 = v97;
      v79(v76, v78);
LABEL_39:

      v59 = *(v57 + 760);
      goto LABEL_40;
    }

    v57 = v0;
    (*(*(v0 + 920) + 96))(*(v0 + 928), *(v0 + 912));
    if (v106)
    {
      if ((v107 & 1) == 0)
      {
        v61 = *(v0 + 800);
        v62 = *(v0 + 760);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013280, &qword_2227414E0);
        sub_222738C9C();
        sub_22266BCCC(v57 + 304, v57 + 344);
        v63 = swift_allocObject();
        *(v63 + 16) = v62;
        *(v63 + 24) = v106;
        sub_222634290((v57 + 344), v63 + 32);
        *(v63 + 72) = 1;
        v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F68, &unk_222741250);
        v65 = v106;

        v66 = sub_222738F2C();
        *(v57 + 1024) = v66;
        v67 = sub_22273946C();
        (*(*(v67 - 8) + 56))(v61, 1, 1, v67);
        v68 = swift_allocObject();
        v68[2] = 0;
        v68[3] = 0;
        v68[4] = &unk_2227414F0;
        v68[5] = v63;
        v68[6] = v66;

        sub_2226D4E54(0, 0, v61, &unk_2227418D0, v68);

        v69 = sub_22265DB48();
        v70 = swift_task_alloc();
        *(v57 + 1032) = v70;
        *v70 = v57;
        v70[1] = sub_22267457C;
        v71 = *(v57 + 744);

        return MEMORY[0x282180360](v71, v64, v69);
      }

      goto LABEL_38;
    }

    if (v107)
    {
LABEL_38:
      v80 = *(v0 + 928);
      v81 = sub_22273786C();
      v82 = *(*(v81 - 8) + 8);
      v60 = v97;
      v82(v80, v81);
      goto LABEL_39;
    }

    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_22273813C();
    sub_222738C4C();

    v91 = [v97 bundleID];
    v92 = sub_22273919C();
    v94 = v93;

    *(v57 + 1048) = v94;
    v95 = swift_task_alloc();
    *(v57 + 1056) = v95;
    *(v95 + 16) = v92;
    *(v95 + 24) = v94;
    v96 = swift_task_alloc();
    *(v57 + 1064) = v96;
    *v96 = v57;
    v96[1] = sub_222674A14;

    return MEMORY[0x2822007B8]();
  }

  else
  {
    sub_222660468(v0 + 224, &unk_27D013120, &unk_222741980);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137D0, &unk_2227413A0);

    return sub_22273851C();
  }
}

uint64_t sub_22267457C()
{
  *(*v1 + 1040) = v0;

  if (v0)
  {
    v2 = sub_22267485C;
  }

  else
  {
    v2 = sub_2226746B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2226746B0()
{
  v1 = *(v0 + 976);
  v2 = *(v0 + 960);
  v3 = *(v0 + 952);
  v4 = *(v0 + 944);
  v5 = *(v0 + 936);
  v6 = *(v0 + 928);
  v7 = *(v0 + 920);
  v8 = *(v0 + 912);

  __swift_destroy_boxed_opaque_existential_1((v0 + 304));
  (*(v7 + 8))(v5, v8);
  (*(v3 + 8))(v2, v4);
  v9 = sub_22273786C();
  (*(*(v9 - 8) + 8))(v6, v9);
  __swift_destroy_boxed_opaque_existential_1((v0 + 184));
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_22267485C()
{
  v1 = *(v0 + 976);
  v2 = *(v0 + 960);
  v3 = *(v0 + 952);
  v4 = *(v0 + 944);
  v5 = *(v0 + 936);
  v6 = *(v0 + 928);
  v7 = *(v0 + 920);
  v8 = *(v0 + 912);

  __swift_destroy_boxed_opaque_existential_1((v0 + 304));
  (*(v7 + 8))(v5, v8);
  (*(v3 + 8))(v2, v4);
  v9 = sub_22273786C();
  (*(*(v9 - 8) + 8))(v6, v9);
  __swift_destroy_boxed_opaque_existential_1((v0 + 184));
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_222674A14()
{

  return MEMORY[0x2822009F8](sub_222674B48, 0, 0);
}

uint64_t sub_222674B48()
{
  v18 = v0;
  v1 = [*(v0 + 976) bundleID];
  if (!v1)
  {
    sub_22273919C();
    v1 = sub_22273916C();
  }

  v2 = [*(v0 + 752) iapItemName];
  if (!v2)
  {
    sub_22273919C();
    v2 = sub_22273916C();
  }

  v3 = [*(v0 + 976) itemName];
  if (!v3)
  {
    sub_22273919C();
    v3 = sub_22273916C();
  }

  v4 = [*(v0 + 752) iapProductName];
  if (!v4)
  {
    sub_22273919C();
    v4 = sub_22273916C();
  }

  v5 = *(v0 + 752);
  v6 = [objc_allocWithZone(ASCSKPurchaseIntent) initWithBundleId:v1 productIdentifier:v2 appName:v3 productName:v4];
  *(v0 + 1072) = v6;

  v7 = [v5 offerType];
  v8 = *(v0 + 752);
  if (v7 == 1)
  {
    strcpy(v17, "adHocOfferId=");
    HIWORD(v17[1]) = -4864;
    v9 = [v8 offerID];
  }

  else
  {
    sub_22273991C();

    v9 = [v8 offerID];
  }

  v10 = v9;
  v11 = sub_22273919C();
  v13 = v12;

  MEMORY[0x223DBE5D0](v11, v13);

  v14 = sub_22273916C();

  [v6 setAdditionalBuyParams_];

  *(v0 + 16) = v0;
  *(v0 + 24) = sub_222674E8C;
  v15 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0130F8, &qword_2227418C8);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_222675634;
  *(v0 + 104) = &block_descriptor_1;
  *(v0 + 112) = v15;
  [v6 send_];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_222674E8C()
{

  return MEMORY[0x2822009F8](sub_222674F6C, 0, 0);
}

uint64_t sub_222674F6C()
{
  v1 = v0[122];
  v13 = v0[120];
  v2 = v0[119];
  v11 = v0[134];
  v12 = v0[118];
  v3 = v0[117];
  v4 = v0[115];
  v5 = v0[114];
  v14 = v0[93];
  v15 = v0[116];
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();

  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v13, v12);
  v6 = *MEMORY[0x277D21CA8];
  v7 = sub_2227383CC();
  (*(*(v7 - 8) + 104))(v14, v6, v7);
  v8 = sub_22273786C();
  (*(*(v8 - 8) + 8))(v15, v8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 23);
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);

  v9 = v0[1];

  return v9();
}

uint64_t sub_2226751DC()
{
  v2 = *v1;
  *(*v1 + 1104) = v0;

  (*(v2[98] + 8))(v2[99], v2[97]);
  if (v0)
  {
    v3 = sub_2226754A8;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 33);
    v3 = sub_222675330;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_222675330()
{
  v1 = v0[136];
  v2 = v0[123];
  v3 = v0[122];
  v4 = v0[120];
  v5 = v0[119];
  v6 = v0[118];
  v7 = v0[117];
  v8 = v0[115];
  v9 = v0[114];

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  __swift_destroy_boxed_opaque_existential_1(v0 + 23);
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);

  v10 = v0[1];

  return v10();
}

uint64_t sub_2226754A8()
{
  v1 = v0[136];
  v2 = v0[123];
  v3 = v0[122];
  v4 = v0[120];
  v5 = v0[119];
  v6 = v0[118];
  v7 = v0[117];
  v8 = v0[115];
  v9 = v0[114];

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  __swift_destroy_boxed_opaque_existential_1(v0 + 33);
  __swift_destroy_boxed_opaque_existential_1(v0 + 23);
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);

  v10 = v0[1];

  return v10();
}

uint64_t sub_222675634(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return MEMORY[0x282200948](v1);
}

uint64_t sub_222675668(void **a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *a1;
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F68, &unk_222741250);
  v9 = v7;

  v10 = sub_222738F2C();
  v11 = sub_22273946C();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2227418B8;
  v12[5] = v8;
  v12[6] = v10;

  sub_2226D4E54(0, 0, v6, &unk_222741390, v12);

  return v10;
}

uint64_t sub_222675800(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22266BE24;

  return sub_222672E04(a1, v5, v4);
}

void sub_2226758AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013100, &qword_2227418D8);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  v11 = objc_allocWithZone(ASCSKInstallSheetStatusUpdateRequest);
  v12 = sub_22273916C();
  aBlock[4] = sub_222675B5C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222675AA4;
  aBlock[3] = &block_descriptor_24;
  v13 = _Block_copy(aBlock);

  v14 = [v11 initWithAppBundleId:v12 isInstallSheetOpen:1 completionHandler:v13];
  _Block_release(v13);

  [v14 start];
}

void sub_222675AA4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_222675B10(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
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

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t getEnumTagSinglePayload for OfferAlertOfferActionImplementation(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for OfferAlertOfferActionImplementation(uint64_t result, int a2, int a3)
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

unint64_t sub_222675C84()
{
  result = qword_27D013110;
  if (!qword_27D013110)
  {
    sub_22262E364(255, &qword_27D013118, off_2784B06F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013110);
  }

  return result;
}

uint64_t sub_222675CF4()
{
  sub_222739C5C();
  MEMORY[0x223DBEFB0](0);
  return sub_222739C8C();
}

uint64_t sub_222675D60()
{
  sub_222739C5C();
  MEMORY[0x223DBEFB0](0);
  return sub_222739C8C();
}

uint64_t sub_222675DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[53] = a3;
  v4[54] = a4;
  v4[51] = a1;
  v4[52] = a2;
  v5 = sub_22273887C();
  v4[55] = v5;
  v4[56] = *(v5 - 8);
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  v6 = sub_2227383CC();
  v4[59] = v6;
  v4[60] = *(v6 - 8);
  v4[61] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013060, &unk_2227412E0);
  v4[62] = v7;
  v4[63] = *(v7 - 8);
  v4[64] = swift_task_alloc();
  v4[65] = swift_task_alloc();
  v4[66] = swift_task_alloc();
  v4[67] = type metadata accessor for CancelOrPauseInstallAction(0);
  v4[68] = swift_task_alloc();
  v4[69] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F70, &unk_222741260);
  v4[70] = v8;
  v4[71] = *(v8 - 8);
  v4[72] = swift_task_alloc();
  v4[73] = swift_task_alloc();
  v4[74] = swift_task_alloc();
  v9 = sub_22273782C();
  v4[75] = v9;
  v4[76] = *(v9 - 8);
  v4[77] = swift_task_alloc();
  v10 = sub_2227378CC();
  v4[78] = v10;
  v4[79] = *(v10 - 8);
  v4[80] = swift_task_alloc();
  v11 = sub_2227377AC();
  v4[81] = v11;
  v4[82] = *(v11 - 8);
  v4[83] = swift_task_alloc();
  sub_222737C2C();
  v4[84] = swift_task_alloc();
  v12 = sub_2227377BC();
  v4[85] = v12;
  v4[86] = *(v12 - 8);
  v4[87] = swift_task_alloc();
  v13 = sub_22273793C();
  v4[88] = v13;
  v4[89] = *(v13 - 8);
  v4[90] = swift_task_alloc();
  v4[91] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222676218, 0, 0);
}

uint64_t sub_222676218()
{
  v1 = *(v0 + 416);
  v2 = qword_281313EB8;
  swift_beginAccess();
  sub_2226603F8(v1 + v2, v0 + 136);
  if (*(v0 + 160))
  {
    v3 = *(v0 + 424);
    sub_222634290((v0 + 136), v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
    v4 = [v3 id];
    [v4 int64value];
    sub_222737C1C();
    v57 = *(v0 + 728);
    v6 = *(v0 + 712);
    v59 = *(v0 + 704);
    v60 = *(v0 + 720);
    v7 = *(v0 + 696);
    v8 = *(v0 + 688);
    v58 = *(v0 + 680);
    v9 = *(v0 + 640);
    v10 = *(v0 + 632);
    v56 = *(v0 + 624);
    (*(*(v0 + 656) + 104))(*(v0 + 664), *MEMORY[0x277CEBFE8], *(v0 + 648));
    sub_22273778C();

    sub_2227113C0();
    sub_2227379EC();
    (*(v10 + 8))(v9, v56);
    (*(v8 + 8))(v7, v58);
    (*(v6 + 16))(v60, v57, v59);
    v11 = (*(v6 + 88))(v60, v59);
    if (v11 == *MEMORY[0x277CEC0B8])
    {
      v12 = *(v0 + 544);
      v13 = *(v0 + 536);
      v14 = *(v0 + 520);
      v15 = *(v0 + 496);
      v16 = *(v0 + 504);
      v17 = *(v0 + 424);
      (*(*(v0 + 712) + 96))(*(v0 + 720), *(v0 + 704));
      type metadata accessor for ObjectGraph(0);
      sub_222738C9C();
      sub_2226605E0();
      *(v12 + *(v13 + 20)) = [v17 id];
      *(v0 + 280) = v13;
      *(v0 + 288) = sub_222679FE4(&qword_27D0131C0, type metadata accessor for CancelOrPauseInstallAction, &unk_222742090);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 256));
      sub_22267A1C8(v12, boxed_opaque_existential_1, type metadata accessor for CancelOrPauseInstallAction);
      (*(v16 + 104))(v14, *MEMORY[0x277D21E18], v15);
      v19 = swift_task_alloc();
      *(v0 + 752) = v19;
      *v19 = v0;
      v19[1] = sub_2226770B0;
      v20 = *(v0 + 560);
      v21 = *(v0 + 520);
      v22 = *(v0 + 408);
      v23 = *(v0 + 416);
      v24 = v0 + 256;
LABEL_11:

      return MEMORY[0x28217F468](v22, v24, v21, v23, v20);
    }

    if (v11 == *MEMORY[0x277CEC090])
    {
      v25 = *(v0 + 720);
      v26 = *(v0 + 616);
      v27 = *(v0 + 608);
      v28 = *(v0 + 600);
      (*(*(v0 + 712) + 96))(v25, *(v0 + 704));
      (*(v27 + 32))(v26, v25, v28);
      v29 = sub_2226AAD28();
      if (!v29)
      {
        v48 = *(v0 + 552);
        v49 = *(v0 + 536);
        v50 = *(v0 + 528);
        v51 = *(v0 + 496);
        v52 = *(v0 + 504);
        v53 = *(v0 + 424);
        type metadata accessor for ObjectGraph(0);
        sub_222738C9C();
        sub_2226605E0();
        *(v48 + *(v49 + 20)) = [v53 id];
        *(v0 + 320) = v49;
        *(v0 + 328) = sub_222679FE4(&qword_27D0131C0, type metadata accessor for CancelOrPauseInstallAction, &unk_222742090);
        v54 = __swift_allocate_boxed_opaque_existential_1((v0 + 296));
        sub_22267A1C8(v48, v54, type metadata accessor for CancelOrPauseInstallAction);
        (*(v52 + 104))(v50, *MEMORY[0x277D21E18], v51);
        v55 = swift_task_alloc();
        *(v0 + 736) = v55;
        *v55 = v0;
        v55[1] = sub_222676D70;
        v20 = *(v0 + 560);
        v21 = *(v0 + 528);
        v22 = *(v0 + 408);
        v23 = *(v0 + 416);
        v24 = v0 + 296;
        goto LABEL_11;
      }

      v30 = *(v0 + 728);
      v31 = *(v0 + 712);
      v32 = *(v0 + 704);
      v33 = *(v0 + 616);
      v34 = *(v0 + 608);
      v35 = *(v0 + 600);
      v36 = *(v0 + 480);
      v61 = *(v0 + 472);
      v37 = *(v0 + 408);
      v38 = v29;
      [v29 resume];

      (*(v34 + 8))(v33, v35);
      (*(v31 + 8))(v30, v32);
      (*(v36 + 104))(v37, *MEMORY[0x277D21CA8], v61);
      __swift_destroy_boxed_opaque_existential_1((v0 + 96));

      v39 = *(v0 + 8);

      return v39();
    }

    else
    {
      if ([*(v0 + 424) shouldCheckForAvailableDiskSpace])
      {
        if (qword_27D0129A0 != -1)
        {
          swift_once();
        }

        v40 = sub_222738F6C();
        __swift_project_value_buffer(v40, qword_27D019C68);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
        sub_2227381FC();
        *(swift_allocObject() + 16) = xmmword_2227412F0;
        sub_22273813C();
        sub_222738C6C();
      }

      v41 = [*(v0 + 424) checkRestrictionsForContentRating];
      if (v41)
      {

        if (qword_27D0129A0 != -1)
        {
          swift_once();
        }

        v42 = sub_222738F6C();
        __swift_project_value_buffer(v42, qword_27D019C68);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
        sub_2227381FC();
        *(swift_allocObject() + 16) = xmmword_2227412F0;
        sub_22273813C();
        sub_222738C6C();
      }

      v43 = swift_task_alloc();
      *(v0 + 768) = v43;
      *v43 = v0;
      v43[1] = sub_222677408;
      v44 = *(v0 + 488);
      v45 = *(v0 + 424);
      v46 = *(v0 + 432);
      v47 = *(v0 + 416);

      return sub_222678ED8(v44, v45, v47, v46);
    }
  }

  else
  {
    sub_222660468(v0 + 136, &unk_27D013120, &unk_222741980);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137D0, &unk_2227413A0);

    return sub_22273851C();
  }
}

uint64_t sub_222676D70()
{
  v2 = *v1;
  *(*v1 + 744) = v0;

  (*(v2[63] + 8))(v2[66], v2[62]);
  if (v0)
  {
    v3 = sub_2226780F0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 37);
    v3 = sub_222676EBC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_222676EBC()
{
  v1 = v0[91];
  v2 = v0[89];
  v3 = v0[88];
  v4 = v0[77];
  v5 = v0[76];
  v6 = v0[75];
  v7 = v0[74];
  v8 = v0[71];
  v9 = v0[70];
  sub_22267A230(v0[69], type metadata accessor for CancelOrPauseInstallAction);
  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  v10 = v0[1];

  return v10();
}

uint64_t sub_2226770B0()
{
  v2 = *v1;
  *(*v1 + 760) = v0;

  (*(v2[63] + 8))(v2[65], v2[62]);
  if (v0)
  {
    v3 = sub_2226782F4;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 32);
    v3 = sub_2226771FC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2226771FC()
{
  v1 = v0[91];
  v2 = v0[90];
  v3 = v0[89];
  v4 = v0[88];
  v5 = v0[73];
  v6 = v0[71];
  v7 = v0[70];
  sub_22267A230(v0[68], type metadata accessor for CancelOrPauseInstallAction);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v1, v4);
  v8 = sub_22273784C();
  (*(*(v8 - 8) + 8))(v2, v8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  v9 = v0[1];

  return v9();
}

uint64_t sub_222677408()
{
  v2 = *v1;
  *(*v1 + 776) = v0;

  if (v0)
  {
    v3 = sub_222678510;
  }

  else
  {
    (*(v2[60] + 8))(v2[61], v2[59]);
    v3 = sub_222677534;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_222677534()
{
  if ([*(v0 + 424) shouldPromptForConfirmation])
  {
    if (qword_27D0129A0 != -1)
    {
      swift_once();
    }

    v1 = sub_222738F6C();
    __swift_project_value_buffer(v1, qword_27D019C68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    sub_2227381FC();
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_22273813C();
    sub_222738C6C();
  }

  v2 = [*(v0 + 424) completionOffer];
  *(v0 + 784) = v2;
  if (v2)
  {
    sub_2226839AC(v0 + 216);
    if (*(v0 + 240))
    {
      v3 = *(v0 + 424);
      sub_222634290((v0 + 216), v0 + 176);
      sub_22262E364(0, &qword_27D013080, off_2784B06E8);
      sub_22273857C();
      v4 = *(v0 + 384);
      sub_22273886C();
      *(v0 + 392) = v3;
      if (qword_27D0129E0 != -1)
      {
        swift_once();
      }

      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0131A0, &unk_222741760);
      __swift_project_value_buffer(v5, qword_27D019CB0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013090, &qword_222744020);
      sub_22273885C();
      if (v4)
      {
        *(v0 + 400) = v4;
        v6 = qword_27D0129D0;
        v7 = v4;
        if (v6 != -1)
        {
          swift_once();
        }

        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0131B0, &unk_222741790);
        __swift_project_value_buffer(v8, qword_27D019C98);
        sub_22273885C();
      }

      v10 = *(v0 + 504);
      v9 = *(v0 + 512);
      v11 = *(v0 + 496);
      v12 = *(v0 + 464);
      v13 = *(v0 + 440);
      v14 = *(v0 + 448);
      (*(v14 + 32))(v12, *(v0 + 456), v13);
      type metadata accessor for ObjectGraph(0);
      sub_222738C9C();
      (*(v14 + 16))(v9, v12, v13);
      (*(v10 + 104))(v9, *MEMORY[0x277D21E10], v11);
      v15 = swift_task_alloc();
      *(v0 + 792) = v15;
      *v15 = v0;
      v15[1] = sub_222677D88;
      v16 = *(v0 + 560);
      v17 = *(v0 + 512);
      v18 = *(v0 + 408);
      v19 = *(v0 + 416);

      return MEMORY[0x28217F468](v18, v0 + 176, v17, v19, v16);
    }

    v36 = *(v0 + 728);
    v37 = *(v0 + 720);
    v27 = *(v0 + 712);
    v28 = *(v0 + 704);
    sub_222660468(v0 + 216, &unk_27D013240, &unk_222741770);
    type metadata accessor for ASCAppOfferActionError(0);
    *(v0 + 376) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2227412F0;
    *(inited + 32) = sub_22273919C();
    *(inited + 40) = v30;
    sub_22273991C();
    swift_getObjectType();
    v31 = sub_222739D2C();
    v33 = v32;

    MEMORY[0x223DBE5D0](0xD00000000000001ELL, 0x80000002227481D0);
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v31;
    *(inited + 56) = v33;
    sub_222710688(inited);
    swift_setDeallocating();
    sub_222660468(inited + 32, &qword_27D013250, &unk_222741780);
    sub_222679FE4(&qword_27D012C20, type metadata accessor for ASCAppOfferActionError, &unk_222740A74);
    sub_22273725C();
    swift_willThrow();
    swift_unknownObjectRelease();
    v34 = *(v27 + 8);
    v34(v36, v28);
    v34(v37, v28);
    __swift_destroy_boxed_opaque_existential_1((v0 + 96));

    v26 = *(v0 + 8);
  }

  else
  {
    v20 = *(v0 + 720);
    v21 = *(v0 + 704);
    v22 = *(v0 + 472);
    v23 = *(v0 + 480);
    v24 = *(v0 + 408);
    v25 = *(*(v0 + 712) + 8);
    v25(*(v0 + 728), v21);
    (*(v23 + 104))(v24, *MEMORY[0x277D21CA8], v22);
    v25(v20, v21);
    __swift_destroy_boxed_opaque_existential_1((v0 + 96));

    v26 = *(v0 + 8);
  }

  return v26();
}

uint64_t sub_222677D88()
{
  v2 = *v1;
  *(*v1 + 800) = v0;

  (*(v2[63] + 8))(v2[64], v2[62]);
  if (v0)
  {
    v3 = sub_222678CD0;
  }

  else
  {
    v3 = sub_222677EF0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_222677EF0()
{
  v1 = v0[91];
  v13 = v0[90];
  v2 = v0[89];
  v3 = v0[88];
  v4 = v0[72];
  v5 = v0[71];
  v6 = v0[70];
  v7 = v0[58];
  v9 = v0[55];
  v8 = v0[56];
  swift_unknownObjectRelease();
  (*(v5 + 8))(v4, v6);
  (*(v8 + 8))(v7, v9);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  v10 = *(v2 + 8);
  v10(v1, v3);
  v10(v13, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  v11 = v0[1];

  return v11();
}

uint64_t sub_2226780F0()
{
  v1 = v0[91];
  v2 = v0[89];
  v3 = v0[88];
  v4 = v0[77];
  v5 = v0[76];
  v6 = v0[75];
  v7 = v0[74];
  v8 = v0[71];
  v9 = v0[70];
  sub_22267A230(v0[69], type metadata accessor for CancelOrPauseInstallAction);
  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 37);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  v10 = v0[1];

  return v10();
}

uint64_t sub_2226782F4()
{
  v1 = v0[91];
  v2 = v0[90];
  v3 = v0[89];
  v4 = v0[88];
  v5 = v0[73];
  v6 = v0[71];
  v7 = v0[70];
  sub_22267A230(v0[68], type metadata accessor for CancelOrPauseInstallAction);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v1, v4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  v8 = sub_22273784C();
  (*(*(v8 - 8) + 8))(v2, v8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  v9 = v0[1];

  return v9();
}

uint64_t sub_222678510()
{
  *(v0 + 360) = *(v0 + 776);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013130, &qword_2227416B0);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 720);
    v2 = *(v0 + 704);
    v3 = *(v0 + 472);
    v4 = *(v0 + 480);
    v5 = *(v0 + 408);
    v6 = *(*(v0 + 712) + 8);
    v6(*(v0 + 728), v2);
    (*(v4 + 104))(v5, *MEMORY[0x277D21CA8], v3);

LABEL_15:
    v6(v1, v2);
    __swift_destroy_boxed_opaque_existential_1((v0 + 96));

    v28 = *(v0 + 8);
LABEL_16:

    return v28();
  }

  v7 = [*(v0 + 424) completionOffer];
  *(v0 + 784) = v7;
  if (!v7)
  {
    v1 = *(v0 + 720);
    v2 = *(v0 + 704);
    v25 = *(v0 + 472);
    v26 = *(v0 + 480);
    v27 = *(v0 + 408);
    v6 = *(*(v0 + 712) + 8);
    v6(*(v0 + 728), v2);
    (*(v26 + 104))(v27, *MEMORY[0x277D21CA8], v25);
    goto LABEL_15;
  }

  sub_2226839AC(v0 + 216);
  if (!*(v0 + 240))
  {
    v38 = *(v0 + 728);
    v39 = *(v0 + 720);
    v29 = *(v0 + 712);
    v30 = *(v0 + 704);
    sub_222660468(v0 + 216, &unk_27D013240, &unk_222741770);
    type metadata accessor for ASCAppOfferActionError(0);
    *(v0 + 376) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2227412F0;
    *(inited + 32) = sub_22273919C();
    *(inited + 40) = v32;
    sub_22273991C();
    swift_getObjectType();
    v33 = sub_222739D2C();
    v35 = v34;

    MEMORY[0x223DBE5D0](0xD00000000000001ELL, 0x80000002227481D0);
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v33;
    *(inited + 56) = v35;
    sub_222710688(inited);
    swift_setDeallocating();
    sub_222660468(inited + 32, &qword_27D013250, &unk_222741780);
    sub_222679FE4(&qword_27D012C20, type metadata accessor for ASCAppOfferActionError, &unk_222740A74);
    sub_22273725C();
    swift_willThrow();
    swift_unknownObjectRelease();
    v36 = *(v29 + 8);
    v36(v38, v30);
    v36(v39, v30);
    __swift_destroy_boxed_opaque_existential_1((v0 + 96));

    v28 = *(v0 + 8);
    goto LABEL_16;
  }

  v8 = *(v0 + 424);
  sub_222634290((v0 + 216), v0 + 176);
  sub_22262E364(0, &qword_27D013080, off_2784B06E8);
  sub_22273857C();
  v9 = *(v0 + 384);
  sub_22273886C();
  *(v0 + 392) = v8;
  if (qword_27D0129E0 != -1)
  {
    swift_once();
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0131A0, &unk_222741760);
  __swift_project_value_buffer(v10, qword_27D019CB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013090, &qword_222744020);
  sub_22273885C();
  if (v9)
  {
    *(v0 + 400) = v9;
    v11 = qword_27D0129D0;
    v12 = v9;
    if (v11 != -1)
    {
      swift_once();
    }

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0131B0, &unk_222741790);
    __swift_project_value_buffer(v13, qword_27D019C98);
    sub_22273885C();
  }

  v15 = *(v0 + 504);
  v14 = *(v0 + 512);
  v16 = *(v0 + 496);
  v17 = *(v0 + 464);
  v18 = *(v0 + 440);
  v19 = *(v0 + 448);
  (*(v19 + 32))(v17, *(v0 + 456), v18);
  type metadata accessor for ObjectGraph(0);
  sub_222738C9C();
  (*(v19 + 16))(v14, v17, v18);
  (*(v15 + 104))(v14, *MEMORY[0x277D21E10], v16);
  v20 = swift_task_alloc();
  *(v0 + 792) = v20;
  *v20 = v0;
  v20[1] = sub_222677D88;
  v21 = *(v0 + 560);
  v22 = *(v0 + 512);
  v23 = *(v0 + 408);
  v24 = *(v0 + 416);

  return MEMORY[0x28217F468](v23, v0 + 176, v22, v24, v21);
}

uint64_t sub_222678CD0()
{
  v1 = v0[91];
  v13 = v0[90];
  v2 = v0[89];
  v3 = v0[88];
  v4 = v0[72];
  v5 = v0[71];
  v6 = v0[70];
  v7 = v0[58];
  v9 = v0[55];
  v8 = v0[56];
  swift_unknownObjectRelease();
  (*(v5 + 8))(v4, v6);
  (*(v8 + 8))(v7, v9);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  v10 = *(v2 + 8);
  v10(v1, v3);
  v10(v13, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  v11 = v0[1];

  return v11();
}

uint64_t sub_222678ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x2822009F8](sub_222678EFC, 0, 0);
}

uint64_t sub_222678EFC()
{
  v1 = [*(v0 + 64) remoteControllerRequirement];
  *(v0 + 88) = v1;
  if (!v1)
  {
    v9 = *(v0 + 56);
    v10 = *MEMORY[0x277D21CA8];
    v11 = sub_2227383CC();
    (*(*(v11 - 8) + 104))(v9, v10, v11);
LABEL_12:
    v15 = *(v0 + 8);

    return v15();
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014830, &qword_222741240);
  type metadata accessor for ObjectGraph(0);
  sub_222738C9C();
  v3 = sub_22273919C();
  v5 = v4;
  if (v3 == sub_22273919C() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_222739B4C();

    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if ([swift_getObjCClassFromMetadata() userHasPairedGameController])
  {
LABEL_11:
    v12 = *(v0 + 56);

    v13 = *MEMORY[0x277D21CA8];
    v14 = sub_2227383CC();
    (*(*(v14 - 8) + 104))(v12, v13, v14);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    goto LABEL_12;
  }

  v33 = *(v0 + 72);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v32 = sub_2227390BC();
  v18 = v17;
  *(v0 + 96) = v17;
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v19 = sub_2227390BC();
  v21 = v20;
  *(v0 + 104) = v20;
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v22 = sub_2227390BC();
  v24 = v23;
  *(v0 + 112) = v23;
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v25 = sub_2227390BC();
  v27 = v26;
  *(v0 + 120) = v26;
  v28 = swift_task_alloc();
  *(v0 + 128) = v28;
  v28[2] = v25;
  v28[3] = v27;
  v28[4] = v22;
  v28[5] = v24;
  v28[6] = v32;
  v28[7] = v18;
  v28[8] = v19;
  v28[9] = v21;
  v28[10] = v33;
  v29 = swift_task_alloc();
  *(v0 + 136) = v29;
  v30 = sub_2227383CC();
  *v29 = v0;
  v29[1] = sub_222679330;
  v31 = *(v0 + 56);

  return MEMORY[0x2822008A0](v31, 0, 0, 0xD000000000000037, 0x80000002227486A0, sub_22267A02C, v28, v30);
}

uint64_t sub_222679330()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_2226794E8;
  }

  else
  {

    v2 = sub_22267947C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22267947C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2226794E8()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_222679594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v53 = a8;
  v52 = a7;
  v51 = a6;
  v43 = a5;
  v48 = a4;
  v42 = a3;
  v45 = a2;
  v41 = a1;
  v50 = a9;
  v54 = a10;
  v55 = *a10;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013060, &unk_2227412E0);
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v56 = &v38 - v11;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F70, &unk_222741260);
  v58 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v47 = &v38 - v12;
  v46 = type metadata accessor for AlertAction(0);
  MEMORY[0x28223BE20](v46);
  v44 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0131D0, &qword_222741998);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v38 - v16;
  v18 = sub_2227383BC();
  MEMORY[0x28223BE20](v18 - 8);

  sub_22273839C();
  v40 = *(v15 + 16);
  v40(v17, a1, v14);
  v19 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v20 = swift_allocObject();
  v39 = *(v15 + 32);
  v39(v20 + v19, v17, v14);
  v21 = sub_2227383EC();
  v64[3] = v21;
  v64[4] = MEMORY[0x277D21CB8];
  __swift_allocate_boxed_opaque_existential_1(v64);
  sub_2227383DC();
  v63[0] = v45;
  v63[1] = v42;
  sub_22273839C();
  v40(v17, v41, v14);
  v22 = swift_allocObject();
  v39(v22 + v19, v17, v14);
  v62[3] = v21;
  v62[4] = MEMORY[0x277D21CB8];
  __swift_allocate_boxed_opaque_existential_1(v62);
  sub_2227383DC();
  v61[0] = v48;
  v61[1] = v43;
  v23 = v44;
  sub_22273839C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012FF0, &qword_2227419A0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2227413C0;
  sub_22265D934(v61, v24 + 32);
  sub_22265D934(v63, v24 + 88);
  v25 = v46;
  v26 = (v23 + *(v46 + 20));
  v27 = v52;
  *v26 = v51;
  v26[1] = v27;
  v28 = (v23 + *(v25 + 24));
  v29 = v50;
  *v28 = v53;
  v28[1] = v29;
  v30 = v25;
  *(v23 + *(v25 + 28)) = v24;

  v31 = v47;
  v32 = v49;
  sub_222738C9C();
  v60[3] = v30;
  v60[4] = sub_222679FE4(&qword_27D0131E0, type metadata accessor for AlertAction, &unk_222741DF0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v60);
  sub_22267A1C8(v23, boxed_opaque_existential_1, type metadata accessor for AlertAction);
  v34 = v57;
  v35 = v56;
  v36 = v59;
  (*(v57 + 104))(v56, *MEMORY[0x277D21E18], v59);
  sub_22273862C();

  (*(v34 + 8))(v35, v36);
  (*(v58 + 8))(v31, v32);
  sub_22267A230(v23, type metadata accessor for AlertAction);
  sub_22265D990(v61);
  sub_22265D990(v63);
  return __swift_destroy_boxed_opaque_existential_1(v60);
}

uint64_t sub_222679C38()
{
  v0 = sub_2227383CC();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D21CA8], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0131D0, &qword_222741998);
  return sub_22273941C();
}

uint64_t sub_222679D24()
{
  sub_22267A290();
  swift_allocError();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0131D0, &qword_222741998);
  return sub_22273940C();
}

uint64_t sub_222679D94(void **a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = *a1;
  v9 = *v2;
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = v8;
  v10[4] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F68, &unk_222741250);

  v11 = v8;
  v12 = sub_222738F2C();
  v13 = sub_22273946C();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_222741978;
  v14[5] = v10;
  v14[6] = v12;

  sub_2226D4E54(0, 0, v7, &unk_222741390, v14);

  return v12;
}

uint64_t sub_222679F30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_222660228;

  return sub_222675DAC(a1, v4, v5, v6);
}

uint64_t sub_222679FE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_18Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0131D0, &qword_222741998);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22267A1C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22267A230(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22267A290()
{
  result = qword_27D0131E8;
  if (!qword_27D0131E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0131E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OfferAlertOfferActionImplementation.Error(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for OfferAlertOfferActionImplementation.Error(_WORD *result, int a2, int a3)
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

unint64_t sub_22267A3D0()
{
  result = qword_27D0131F0;
  if (!qword_27D0131F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0131F0);
  }

  return result;
}

void sub_22267A47C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013208, &qword_222741B08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2227412F0;
  sub_22273919C();
  sub_2227398CC();
  *(inited + 96) = MEMORY[0x277D839B0];
  *(inited + 72) = 1;
  sub_222732F68(inited);
  swift_setDeallocating();
  sub_222660468(inited + 32, &unk_27D014910, &qword_222741B10);
  v1 = sub_2227390FC();

  v2 = [objc_opt_self() optionsWithDictionary_];

  qword_27D013200 = v2;
}

uint64_t sub_22267A5A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_22273786C();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_222737C2C();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22267A6C0, 0, 0);
}

uint64_t sub_22267A6C0()
{
  v1 = v0[4];
  v2 = type metadata accessor for OpenAppAction(0);
  v0[12] = v2;
  [*(v1 + *(v2 + 20)) int64value];
  sub_222737C1C();
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_22267A7E4;
  v4 = v0[11];
  v5 = v0[5];

  return sub_22267C038(v4, v5);
}

uint64_t sub_22267A7E4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 112) = v2;

  if (v2)
  {
    v7 = sub_22267A918;
  }

  else
  {
    *(v6 + 120) = a2;
    *(v6 + 128) = a1;
    v7 = sub_22267AA98;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22267A918()
{
  v1 = *(v0 + 112);
  type metadata accessor for Code(0);
  *(v0 + 16) = 0;
  v2 = v1;
  sub_22267DDA4(&qword_27D012E20, type metadata accessor for Code, &unk_222741184);
  v3 = sub_22273716C();

  if (v3)
  {

    v4 = swift_task_alloc();
    *(v0 + 136) = v4;
    *v4 = v0;
    v4[1] = sub_22267AC58;
    v5 = *(v0 + 88);

    return sub_22267CBFC(v5);
  }

  else
  {
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_22267AA98()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  (*(v2 + 16))(v1, v0[4] + *(v0[12] + 24), v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x277CEC068])
  {
    v5 = *(v0[4] + *(v0[12] + 28));
    v6 = swift_task_alloc();
    v0[19] = v6;
    *v6 = v0;
    v6[1] = sub_22267AE14;
    v7 = v0[15];
    v8 = v0[16];

    return sub_22267D55C(v8, v7, v5);
  }

  else if (v4 == *MEMORY[0x277CEC070])
  {
    v10 = swift_task_alloc();
    v0[21] = v10;
    *v10 = v0;
    v10[1] = sub_22267AFD0;
    v11 = v0[15];
    v12 = v0[16];

    return sub_22267DA64(v12, v11);
  }

  else
  {
    v13 = v0[6];

    return MEMORY[0x2821FDEB8](v13, v13);
  }
}

uint64_t sub_22267AC58(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 144) = v2;

  if (v2)
  {
    v7 = sub_22267AD8C;
  }

  else
  {
    *(v6 + 120) = a2;
    *(v6 + 128) = a1;
    v7 = sub_22267AA98;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22267AD8C()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22267AE14()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_22267AF48;
  }

  else
  {
    v2 = sub_22267E158;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22267AF48()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22267AFD0()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_22267B1E0;
  }

  else
  {
    v2 = sub_22267B104;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22267B104()
{
  v1 = v0[3];
  (*(v0[10] + 8))(v0[11], v0[9]);
  v2 = *MEMORY[0x277D21CA8];
  v3 = sub_2227383CC();
  (*(*(v3 - 8) + 104))(v1, v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22267B1E0()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22267B268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[7] = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_22267B2DC, 0, 0);
}

uint64_t sub_22267B2DC()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v8 = *(v0 + 32);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  *(v4 + 32) = v8;
  *(v4 + 48) = v1;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013210, &qword_222741B18);
  *v5 = v0;
  v5[1] = sub_22267B404;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000030, 0x8000000222748700, sub_22267DDEC, v4, v6);
}

uint64_t sub_22267B404()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_22267B53C;
  }

  else
  {

    v2 = sub_22267B520;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22267B53C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_22267B5A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013220, &qword_222741B28);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  v8 = objc_opt_self();
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_22267E0D4;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22267B764;
  aBlock[3] = &block_descriptor_25;
  v11 = _Block_copy(aBlock);

  [v8 launchMessagesExtensionForApp:a2 withResultHandler:v11];
  _Block_release(v11);
}

uint64_t sub_22267B764(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_22267B7B8(uint64_t a1)
{
  if (sub_2226AFA08(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013220, &qword_222741B28);
    return sub_22273940C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013220, &qword_222741B28);
    return sub_22273941C();
  }
}

uint64_t sub_22267B82C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for OpenAppAction(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_222660520(a1, &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v11 = swift_allocObject();
  sub_22267BA5C(&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  *(v11 + ((v9 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F68, &unk_222741250);

  v12 = sub_222738F2C();
  v13 = sub_22273946C();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_222741AD0;
  v14[5] = v11;
  v14[6] = v12;

  sub_2226D4E54(0, 0, v6, &unk_222741390, v14);

  return v12;
}

uint64_t sub_22267BA5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpenAppAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22267BAC0(uint64_t a1)
{
  v4 = *(type metadata accessor for OpenAppAction(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_222660228;

  return sub_22267A5A0(a1, v1 + v5, v6);
}

void sub_22267BBCC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013218, &qword_222741B20);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = aBlock - v13;
  v15 = sub_22273916C();
  (*(v11 + 16))(v14, a1, v10);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v16, v14, v10);
  *(v17 + ((v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = a6;
  aBlock[4] = sub_22267DDFC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22267BFAC;
  aBlock[3] = &block_descriptor_2;
  v18 = _Block_copy(aBlock);

  [a2 openApplication:v15 withOptions:a5 completion:v18];
  _Block_release(v18);
}

void sub_22267BDC0(void *a1, id a2)
{
  if (a2)
  {
    v4 = a2;
    v5 = sub_22267DEB4(a2);
    if (v5)
    {
      v6 = v5;
      v7 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013218, &qword_222741B20);
      sub_22273940C();

      return;
    }
  }

  if (!a1)
  {
    if (qword_27D0129A0 != -1)
    {
      swift_once();
    }

    v8 = sub_222738F6C();
    __swift_project_value_buffer(v8, qword_27D019C68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    sub_2227381FC();
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_22273813C();
    sub_222738C4C();
  }

  v9 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013218, &qword_222741B20);
  sub_22273941C();
}

void sub_22267BFAC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_22267C038(uint64_t a1, void *a2)
{
  v2[21] = a1;
  v2[22] = a2;
  v2[23] = *a2;
  sub_2227381BC();
  v2[24] = swift_task_alloc();
  v3 = sub_2227376DC();
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22267C14C, 0, 0);
}

uint64_t sub_22267C14C()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0130C8, &unk_222742680);
  sub_222738C9C();
  v5 = v0[5];
  v15 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0132D0, &unk_222741830);
  v6 = sub_222737C2C();
  v0[28] = v6;
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2227412F0;
  v10 = *(v7 + 16);
  v0[29] = v10;
  v0[30] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v9 + v8, v4, v6);
  v11 = sub_2226DD264(v9);
  swift_setDeallocating();
  (*(v7 + 8))(v9 + v8, v6);
  swift_deallocClassInstance();
  *v1 = v11;
  (*(v2 + 104))(v1, *MEMORY[0x277CEBFA0], v3);
  v12 = swift_task_alloc();
  v0[31] = v12;
  *v12 = v0;
  v12[1] = sub_22267C384;
  v13 = v0[27];

  return MEMORY[0x28213E270](v13, v5, v15);
}

uint64_t sub_22267C384(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[32] = a1;
  v4[33] = v1;

  (*(v3[26] + 8))(v3[27], v3[25]);
  if (v1)
  {
    v5 = sub_22267CB78;
  }

  else
  {
    v5 = sub_22267C4F4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22267C4F4()
{
  v1 = v0[32];
  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_18:

    type metadata accessor for ASCOpenAppError(0);
    v0[20] = 0;
    sub_222710688(MEMORY[0x277D84F90]);
    sub_22267DDA4(&qword_27D012E38, type metadata accessor for ASCOpenAppError, &unk_22274111C);
    sub_22273725C();
    swift_willThrow();
    goto LABEL_19;
  }

  if (!sub_22273984C())
  {
    goto LABEL_18;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x223DBEC70](0, v0[32]);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_24;
    }

    v2 = *(v0[32] + 32);
  }

  if ([v2 isPlaceholder])
  {
    v20 = v2;
    if (qword_27D0129A0 == -1)
    {
LABEL_8:
      v3 = v0[29];
      v4 = v0[28];
      v5 = v0[21];
      v6 = sub_222738F6C();
      __swift_project_value_buffer(v6, qword_27D019C68);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
      sub_2227381FC();
      *(swift_allocObject() + 16) = xmmword_2227412F0;
      sub_2227381AC();
      sub_22273819C();
      v0[14] = v4;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 11);
      v3(boxed_opaque_existential_1, v5, v4);
      sub_22273816C();
      sub_222660468((v0 + 11), &qword_27D0130C0, &unk_2227413B0);
      sub_22273819C();
      sub_2227381CC();
      sub_222738C6C();

      type metadata accessor for ASCOpenAppError(0);
      v0[18] = 0;
      sub_222710688(MEMORY[0x277D84F90]);
      sub_22267DDA4(&qword_27D012E38, type metadata accessor for ASCOpenAppError, &unk_22274111C);
      sub_22273725C();
LABEL_13:
      swift_willThrow();

LABEL_19:
      __swift_destroy_boxed_opaque_existential_1(v0 + 2);

      v19 = v0[1];

      return v19();
    }

LABEL_24:
    swift_once();
    goto LABEL_8;
  }

  if ([v2 isLaunchProhibited])
  {
    v20 = v2;
    if (qword_27D0129A0 != -1)
    {
      swift_once();
    }

    v8 = v0[29];
    v9 = v0[28];
    v10 = v0[21];
    v11 = sub_222738F6C();
    __swift_project_value_buffer(v11, qword_27D019C68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    sub_2227381FC();
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    v0[10] = v9;
    v12 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
    v8(v12, v10, v9);
    sub_22273816C();
    sub_222660468((v0 + 7), &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C6C();

    type metadata accessor for ASCOpenAppError(0);
    v0[16] = 1;
    sub_222710688(MEMORY[0x277D84F90]);
    sub_22267DDA4(&qword_27D012E38, type metadata accessor for ASCOpenAppError, &unk_22274111C);
    sub_22273725C();
    goto LABEL_13;
  }

  v13 = [v2 bundleID];
  v14 = sub_22273919C();
  v16 = v15;

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v17 = v0[1];

  return v17(v14, v16);
}

uint64_t sub_22267CB78()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22267CBFC(uint64_t a1)
{
  *(v1 + 168) = a1;
  sub_2227381BC();
  *(v1 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22267CCB8, 0, 0);
}

uint64_t sub_22267CCB8()
{
  v1 = sub_222737BEC();
  if (v1 < 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v2 = v1;
  v3 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v0[14] = 0;
  v4 = [v3 initWithStoreItemIdentifier:v2 error:v0 + 14];
  v5 = v0[14];
  if (!v4)
  {
    v17 = v5;
    v18 = sub_22273727C();

    swift_willThrow();
    goto LABEL_10;
  }

  v6 = v4;
  v7 = v5;
  v8 = [v6 bundleIdentifier];
  if (!v8)
  {

LABEL_10:
    if (qword_27D0129A0 == -1)
    {
LABEL_11:
      v19 = v0[21];
      v20 = sub_222738F6C();
      __swift_project_value_buffer(v20, qword_27D019C68);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
      sub_2227381FC();
      *(swift_allocObject() + 16) = xmmword_2227412F0;
      sub_2227381AC();
      sub_22273819C();
      v21 = sub_222737C2C();
      v0[5] = v21;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
      (*(*(v21 - 8) + 16))(boxed_opaque_existential_1, v19, v21);
      sub_22273816C();
      sub_222660468((v0 + 2), &qword_27D0130C0, &unk_2227413B0);
      sub_22273819C();
      sub_2227381CC();
      sub_222738C6C();

      type metadata accessor for ASCOpenAppError(0);
      v0[16] = 0;
      sub_222710688(MEMORY[0x277D84F90]);
      sub_22267DDA4(&qword_27D012E38, type metadata accessor for ASCOpenAppError, &unk_22274111C);
      sub_22273725C();
      swift_willThrow();
LABEL_17:

      v28 = v0[1];

      return v28();
    }

LABEL_24:
    swift_once();
    goto LABEL_11;
  }

  v9 = v8;
  v10 = sub_22273919C();
  v12 = v11;

  if ([v6 isLaunchProhibited])
  {

    if (qword_27D0129A0 != -1)
    {
      swift_once();
    }

    v13 = v0[21];
    v14 = sub_222738F6C();
    __swift_project_value_buffer(v14, qword_27D019C68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    sub_2227381FC();
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    v15 = sub_222737C2C();
    v0[13] = v15;
    v16 = __swift_allocate_boxed_opaque_existential_1(v0 + 10);
    (*(*(v15 - 8) + 16))(v16, v13, v15);
    sub_22273816C();
    sub_222660468((v0 + 10), &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C6C();

    type metadata accessor for ASCOpenAppError(0);
    v0[20] = 1;
    sub_222710688(MEMORY[0x277D84F90]);
    sub_22267DDA4(&qword_27D012E38, type metadata accessor for ASCOpenAppError, &unk_22274111C);
    sub_22273725C();
LABEL_16:
    swift_willThrow();

    goto LABEL_17;
  }

  v23 = [v6 appClipMetadata];
  if (v23)
  {

    if (qword_27D0129A0 != -1)
    {
      swift_once();
    }

    v24 = v0[21];
    v25 = sub_222738F6C();
    __swift_project_value_buffer(v25, qword_27D019C68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    sub_2227381FC();
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    v26 = sub_222737C2C();
    v0[9] = v26;
    v27 = __swift_allocate_boxed_opaque_existential_1(v0 + 6);
    (*(*(v26 - 8) + 16))(v27, v24, v26);
    sub_22273816C();
    sub_222660468((v0 + 6), &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C6C();

    type metadata accessor for ASCOpenAppError(0);
    v0[18] = 0;
    sub_222710688(MEMORY[0x277D84F90]);
    sub_22267DDA4(&qword_27D012E38, type metadata accessor for ASCOpenAppError, &unk_22274111C);
    sub_22273725C();
    goto LABEL_16;
  }

  v30 = v0[1];

  return v30(v10, v12);
}

uint64_t sub_22267D55C(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 80) = a3;
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  return MEMORY[0x2822009F8](sub_22267D580, 0, 0);
}

uint64_t sub_22267D580()
{
  v1 = [objc_opt_self() serviceWithDefaultShellEndpoint];
  *(v0 + 48) = v1;
  if (v1)
  {
    if (*(v0 + 80) == 1)
    {
      if (qword_27D012978 != -1)
      {
        swift_once();
      }

      v2 = qword_27D013200;
      v3 = qword_27D013200;
    }

    else
    {
      v2 = 0;
    }

    *(v0 + 56) = v2;
    v7 = swift_task_alloc();
    *(v0 + 64) = v7;
    *v7 = v0;
    v7[1] = sub_22267D878;
    v9 = *(v0 + 32);
    v8 = *(v0 + 40);

    return sub_22267B268(v9, v8, v2);
  }

  else
  {
    if (qword_27D0129A0 != -1)
    {
      swift_once();
    }

    v4 = sub_222738F6C();
    __swift_project_value_buffer(v4, qword_27D019C68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    sub_2227381FC();
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_22273813C();
    sub_222738C6C();

    type metadata accessor for ASCOpenAppError(0);
    *(v0 + 24) = 2;
    sub_222710688(MEMORY[0x277D84F90]);
    sub_22267DDA4(&qword_27D012E38, type metadata accessor for ASCOpenAppError, &unk_22274111C);
    sub_22273725C();
    swift_willThrow();
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_22267D878(void *a1)
{
  *(*v2 + 72) = v1;

  if (v1)
  {
    v4 = sub_22267D9FC;
  }

  else
  {

    v4 = sub_22267D994;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22267D994()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22267D9FC()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22267DA64(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_22267DA84, 0, 0);
}

uint64_t sub_22267DA84()
{
  v1 = objc_allocWithZone(MEMORY[0x277CEC328]);
  v2 = sub_22273916C();
  v3 = [v1 initWithBundleID_];
  v0[4] = v3;

  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v3;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_22267DBB8;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD00000000000002FLL, 0x80000002227487E0, sub_22267E0CC, v4, v6);
}

uint64_t sub_22267DBB8()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_22267DD38;
  }

  else
  {

    v2 = sub_22267DCD4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22267DCD4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22267DD38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22267DDA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22267DDFC(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013218, &qword_222741B20);

  sub_22267BDC0(a1, a2);
}

uint64_t sub_22267DEB4(uint64_t a1)
{
  swift_getErrorValue();
  sub_2226B1E70(v18, v19);
  if (v1)
  {
    return 0;
  }

  swift_getErrorValue();
  sub_2226B1E8C(v16, v17);
  if (v3)
  {
    type metadata accessor for ASCOpenAppError(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2227412F0;
    *(inited + 32) = sub_22273919C();
    v5 = inited + 32;
    *(inited + 40) = v6;
    swift_getErrorValue();
    v7 = v11;
    v8 = v12;
  }

  else
  {
    type metadata accessor for ASCOpenAppError(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2227412F0;
    *(inited + 32) = sub_22273919C();
    v5 = inited + 32;
    *(inited + 40) = v9;
    swift_getErrorValue();
    v7 = v13;
    v8 = v14;
  }

  *(inited + 72) = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v7, v8);
  sub_222710688(inited);
  swift_setDeallocating();
  sub_222660468(v5, &qword_27D013250, &unk_222741780);
  sub_22267DDA4(&qword_27D012E38, type metadata accessor for ASCOpenAppError, &unk_22274111C);
  sub_22273725C();
  return v15;
}

uint64_t sub_22267E0D4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013220, &qword_222741B28);

  return sub_22267B7B8(a1);
}

uint64_t sub_22267E1B8(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013060, &unk_2227412E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v33 = &v30 - v5;
  v6 = type metadata accessor for AlertAction(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F70, &unk_222741260);
  v32 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v31 = &v30 - v10;
  sub_222738C9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014830, &qword_222741240);
  sub_222738C9C();
  v11 = *(a1 + *(type metadata accessor for PresentErrorAction(0) + 20));
  type metadata accessor for Code(0);
  v34[0] = 1;
  v12 = v11;
  sub_22267E718(&qword_27D012E20, type metadata accessor for Code, &unk_222741184);
  if (sub_22273716C())
  {

    __swift_project_boxed_opaque_existential_1(v35, v36);
    v13 = sub_2227390BC();
    v15 = v14;
    __swift_project_boxed_opaque_existential_1(v35, v36);
  }

  else
  {
    _s3__C4CodeOMa_2(0);
    v34[0] = 4;
    sub_22267E718(&qword_27D012C00, _s3__C4CodeOMa_2, &unk_222740B14);
    v16 = sub_22273716C();

    __swift_project_boxed_opaque_existential_1(v35, v36);
    if ((v16 & 1) == 0)
    {
      v13 = sub_2227390BC();
      v15 = v20;
      swift_getErrorValue();
      v18 = sub_222739BEC();
      goto LABEL_7;
    }

    v13 = sub_2227390BC();
    v15 = v17;
    __swift_project_boxed_opaque_existential_1(v35, v36);
  }

  v18 = sub_2227390BC();
LABEL_7:
  v21 = v18;
  v22 = v19;
  sub_22273839C();
  v23 = &v8[v6[5]];
  *v23 = v13;
  v23[1] = v15;
  v24 = &v8[v6[6]];
  *v24 = v21;
  *(v24 + 1) = v22;
  *&v8[v6[7]] = MEMORY[0x277D84F90];
  v34[3] = v6;
  v34[4] = sub_22267E718(&qword_27D0131E0, type metadata accessor for AlertAction, &unk_222741DF0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
  sub_22265D9E4(v8, boxed_opaque_existential_1);
  v26 = v33;
  (*(v4 + 104))(v33, *MEMORY[0x277D21E18], v3);
  v27 = v31;
  v28 = sub_22273862C();
  (*(v4 + 8))(v26, v3);
  sub_22265E21C(v8);
  (*(v32 + 8))(v27, v9);
  __swift_destroy_boxed_opaque_existential_1(v34);
  __swift_destroy_boxed_opaque_existential_1(v35);
  return v28;
}

uint64_t sub_22267E718(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22267E774()
{
  result = qword_27D013230;
  if (!qword_27D013230)
  {
    sub_22262E364(255, &qword_27D013238, off_2784B0720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013230);
  }

  return result;
}

uint64_t sub_22267E7DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[41] = a2;
  v3[42] = a3;
  v3[40] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013060, &unk_2227412E0);
  v3[43] = v4;
  v3[44] = *(v4 - 8);
  v3[45] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F70, &unk_222741260);
  v3[46] = v5;
  v3[47] = *(v5 - 8);
  v3[48] = swift_task_alloc();
  v6 = sub_22273887C();
  v3[49] = v6;
  v3[50] = *(v6 - 8);
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v7 = sub_2227378CC();
  v3[53] = v7;
  v3[54] = *(v7 - 8);
  v3[55] = swift_task_alloc();
  v8 = sub_22273793C();
  v3[56] = v8;
  v3[57] = *(v8 - 8);
  v3[58] = swift_task_alloc();
  v9 = sub_2227377AC();
  v3[59] = v9;
  v3[60] = *(v9 - 8);
  v3[61] = swift_task_alloc();
  sub_222737C2C();
  v3[62] = swift_task_alloc();
  v10 = sub_2227377BC();
  v3[63] = v10;
  v3[64] = *(v10 - 8);
  v3[65] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22267EB18, 0, 0);
}

uint64_t sub_22267EB18()
{
  v1 = *(v0 + 328);
  v2 = qword_281313EB8;
  swift_beginAccess();
  sub_2226603F8(v1 + v2, v0 + 136);
  if (*(v0 + 160))
  {
    v3 = *(v0 + 336);
    sub_222634290((v0 + 136), v0 + 96);
    v4 = [v3 id];
    [v4 int64value];
    sub_222737C1C();
    v7 = *(v0 + 464);
    v9 = *(v0 + 432);
    v8 = *(v0 + 440);
    v37 = *(v0 + 424);
    (*(*(v0 + 480) + 104))(*(v0 + 488), *MEMORY[0x277CEBFE8], *(v0 + 472));
    sub_22273778C();

    __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
    sub_2227113C0();
    sub_2227379EC();
    (*(v9 + 8))(v8, v37);
    *(v0 + 528) = sub_2226F2058(v7);
    sub_2226839AC(v0 + 216);
    if (*(v0 + 240))
    {
      v10 = *(v0 + 336);
      sub_222634290((v0 + 216), v0 + 176);
      sub_22262E364(0, &qword_27D013080, off_2784B06E8);
      sub_22273857C();
      v11 = *(v0 + 296);
      sub_22273886C();
      *(v0 + 304) = v10;
      if (qword_27D0129E0 != -1)
      {
        swift_once();
      }

      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0131A0, &unk_222741760);
      __swift_project_value_buffer(v12, qword_27D019CB0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013090, &qword_222744020);
      sub_22273885C();
      if (v11)
      {
        *(v0 + 312) = v11;
        v13 = qword_27D0129D0;
        v14 = v11;
        if (v13 != -1)
        {
          swift_once();
        }

        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0131B0, &unk_222741790);
        __swift_project_value_buffer(v15, qword_27D019C98);
        sub_22273885C();
      }

      v16 = *(v0 + 416);
      v17 = *(v0 + 392);
      v18 = *(v0 + 400);
      v19 = *(v0 + 360);
      v20 = *(v0 + 344);
      v21 = *(v0 + 352);
      (*(v18 + 32))(v16, *(v0 + 408), v17);
      type metadata accessor for ObjectGraph(0);
      sub_222738C9C();
      (*(v18 + 16))(v19, v16, v17);
      (*(v21 + 104))(v19, *MEMORY[0x277D21E10], v20);
      v22 = swift_task_alloc();
      *(v0 + 536) = v22;
      *v22 = v0;
      v22[1] = sub_22267F1A4;
      v23 = *(v0 + 360);
      v24 = *(v0 + 368);
      v25 = *(v0 + 320);
      v26 = *(v0 + 328);

      return MEMORY[0x28217F468](v25, v0 + 176, v23, v26, v24);
    }

    else
    {
      v27 = *(v0 + 512);
      v36 = *(v0 + 504);
      v38 = *(v0 + 520);
      v28 = *(v0 + 456);
      v34 = *(v0 + 448);
      v35 = *(v0 + 464);
      sub_222660468(v0 + 216, &unk_27D013240, &unk_222741770);
      type metadata accessor for ASCAppOfferActionError(0);
      *(v0 + 288) = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2227412F0;
      *(inited + 32) = sub_22273919C();
      *(inited + 40) = v30;
      sub_22273991C();
      swift_getObjectType();
      v31 = sub_222739D2C();
      v33 = v32;

      MEMORY[0x223DBE5D0](0xD00000000000001ELL, 0x80000002227481D0);
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 48) = v31;
      *(inited + 56) = v33;
      sub_222710688(inited);
      swift_setDeallocating();
      sub_222660468(inited + 32, &qword_27D013250, &unk_222741780);
      sub_2226717E4();
      sub_22273725C();
      swift_willThrow();
      swift_unknownObjectRelease();
      (*(v28 + 8))(v35, v34);
      (*(v27 + 8))(v38, v36);
      __swift_destroy_boxed_opaque_existential_1((v0 + 96));

      v5 = *(v0 + 8);

      return v5();
    }
  }

  else
  {
    sub_222660468(v0 + 136, &unk_27D013120, &unk_222741980);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137D0, &unk_2227413A0);

    return sub_22273851C();
  }
}

uint64_t sub_22267F1A4()
{
  v2 = *v1;
  *(*v1 + 544) = v0;

  (*(v2[44] + 8))(v2[45], v2[43]);
  if (v0)
  {
    v3 = sub_22267F480;
  }

  else
  {
    v3 = sub_22267F30C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22267F30C()
{
  v1 = v0[65];
  v2 = v0[64];
  v14 = v0[63];
  v3 = v0[57];
  v12 = v0[56];
  v13 = v0[58];
  v4 = v0[52];
  v6 = v0[49];
  v5 = v0[50];
  v8 = v0[47];
  v7 = v0[48];
  v9 = v0[46];
  swift_unknownObjectRelease();
  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  (*(v3 + 8))(v13, v12);
  (*(v2 + 8))(v1, v14);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  v10 = v0[1];

  return v10();
}

uint64_t sub_22267F480()
{
  v1 = v0[64];
  v13 = v0[63];
  v14 = v0[65];
  v2 = v0[57];
  v12 = v0[58];
  v3 = v0[56];
  v4 = v0[52];
  v6 = v0[49];
  v5 = v0[50];
  v7 = v0[47];
  v8 = v0[48];
  v9 = v0[46];
  swift_unknownObjectRelease();
  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  (*(v2 + 8))(v12, v3);
  (*(v1 + 8))(v14, v13);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  v10 = v0[1];

  return v10();
}

uint64_t sub_22267F604(void **a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F68, &unk_222741250);

  v9 = v7;
  v10 = sub_222738F2C();
  v11 = sub_22273946C();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_222741C18;
  v12[5] = v8;
  v12[6] = v10;

  sub_2226D4E54(0, 0, v6, &unk_222741390, v12);

  return v10;
}

uint64_t sub_22267F79C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_222660228;

  return sub_22267E7DC(a1, v5, v4);
}

unint64_t sub_22267F85C()
{
  result = qword_27D013380;
  if (!qword_27D013380)
  {
    sub_22267F8B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013380);
  }

  return result;
}

unint64_t sub_22267F8B4()
{
  result = qword_27D013258;
  if (!qword_27D013258)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D013258);
  }

  return result;
}

uint64_t sub_22267F90C(void *a1, void *a2)
{
  v4 = sub_22273731C();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v16[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 isSensitive];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0144A0, &unk_222741CA0);
  v10 = [a1 url];
  sub_2227372FC();

  v11 = sub_2227372BC();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v12 = [a2 openSensitiveURL_];
  }

  else
  {
    v12 = [a2 openURL_];
  }

  MEMORY[0x223DBE260](v12);
  v16[3] = sub_22273872C();
  v16[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v16);
  sub_22273871C();
  sub_2227383CC();
  v13 = sub_222738E6C();

  __swift_destroy_boxed_opaque_existential_1(v16);
  return v13;
}

id sub_22267FB70()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = [result getActivePairedDevice];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22267FBE4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_22267FC2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22267FCC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(__n128))
{
  v80 = a2;
  v85 = a1;
  v4 = type metadata accessor for WatchReinstallAction(0);
  v81 = *(v4 - 8);
  v5 = *(v81 + 64);
  MEMORY[0x28223BE20](v4);
  v82 = v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_222737C5C();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  MEMORY[0x28223BE20](v7 - 8);
  v76 = v71 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013270, qword_222741D50);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v71 - v13;
  v15 = sub_2227381BC();
  MEMORY[0x28223BE20](v15 - 8);
  MEMORY[0x28223BE20](v16);
  v17 = sub_222738F6C();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v83 = v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = a3(v19);
  if (v84)
  {
    v75 = v5;
    if (qword_27D0129A0 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v17, qword_27D019C68);
    v72 = v18;
    (*(v18 + 16))(v83, v21, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    v22 = *(sub_2227381FC() - 8);
    v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v71[2] = *(v22 + 72);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_2227413C0;
    v25 = v24 + v23;
    sub_2227381AC();
    sub_22273819C();
    v26 = v85 + *(v4 + 20);
    v28 = *v26;
    v27 = *(v26 + 8);
    v29 = *(v26 + 16);
    *(&v96 + 1) = &type metadata for WatchReinstallAction.Item;
    *&v95 = v28;
    *(&v95 + 1) = v27;
    LOBYTE(v96) = v29;
    sub_222682540(v28, v27, v29);
    v73 = v28;
    v74 = v27;
    sub_222682540(v28, v27, v29);
    sub_22273815C();
    sub_222660468(&v95, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    v71[1] = v25;
    sub_2227381CC();
    sub_2227381AC();
    sub_22273819C();
    v30 = [v84 pairingID];
    if (v30)
    {
      v31 = v30;
      sub_2227373DC();

      v32 = 0;
    }

    else
    {
      v32 = 1;
    }

    v34 = sub_2227373FC();
    v35 = *(v34 - 8);
    (*(v35 + 56))(v11, v32, 1, v34);
    sub_222682550(v11, v14);
    v36 = (*(v35 + 48))(v14, 1, v34);
    v37 = v72;
    if (v36 == 1)
    {
      sub_222660468(v14, &qword_27D013270, qword_222741D50);
      v95 = 0u;
      v96 = 0u;
    }

    else
    {
      *(&v96 + 1) = v34;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v95);
      (*(v35 + 32))(boxed_opaque_existential_1, v14, v34);
    }

    sub_22273815C();
    sub_222660468(&v95, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    sub_2227381CC();
    v39 = v83;
    sub_222738C4C();

    (*(v37 + 8))(v39, v17);
    if (v29)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013278, &unk_222741D68);
      v40 = objc_allocWithZone(MEMORY[0x277CEC4B0]);
      v41 = v73;
      v42 = v74;
      v43 = sub_22273916C();
      sub_2226825C0(v41, v42, 1);
      v44 = [v40 initWithBundleID_];

      *&v95 = v44;
      sub_222738EAC();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013870, &unk_222741D80);
      type metadata accessor for ObjectGraph(0);
      sub_222738C9C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0132A0, &unk_222742690);
      sub_222738C9C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137A0, &qword_222741D90);
      sub_222738C9C();
      sub_22266BCCC(&v91, &v88);
      sub_22266BCCC(&v95, v87);
      sub_22266BCCC(&v92, v86);
      v46 = swift_allocObject();
      sub_222634290(&v88, v46 + 16);
      sub_222634290(v87, v46 + 56);
      v47 = v73;
      *(v46 + 96) = v73;
      sub_222634290(v86, v46 + 104);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0132B0, &qword_222741DA8);
      v48 = v47;
      v49 = sub_222738F2C();
      v50 = sub_22273946C();
      v51 = v76;
      (*(*(v50 - 8) + 56))(v76, 1, 1, v50);
      v52 = swift_allocObject();
      v52[2] = 0;
      v52[3] = 0;
      v52[4] = &unk_222741DA0;
      v52[5] = v46;
      v52[6] = v49;

      sub_2226D4E54(0, 0, v51, &unk_222741DB0, v52);

      v53 = sub_22262D828();
      v54 = v78;
      v55 = v77;
      v56 = v79;
      (*(v78 + 104))(v77, *MEMORY[0x277D851C8], v79);
      v57 = sub_22273959C();
      (*(v54 + 8))(v55, v56);
      v89 = v53;
      v90 = MEMORY[0x277D225C0];
      *&v88 = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0132C0, &qword_222741DB8);
      sub_222738E6C();

      sub_2226825C0(v47, v74, 0);
      __swift_destroy_boxed_opaque_existential_1(&v91);
      __swift_destroy_boxed_opaque_existential_1(&v92);
      __swift_destroy_boxed_opaque_existential_1(&v95);
      __swift_destroy_boxed_opaque_existential_1(&v88);
    }

    v45 = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013280, &qword_2227414E0);
    type metadata accessor for ObjectGraph(0);

    sub_222738C9C();
    v58 = v85;
    v59 = v82;
    sub_2226825D0(v85, v82);
    sub_22266BCCC(&v95, &v92);
    v60 = (*(v81 + 80) + 16) & ~*(v81 + 80);
    v61 = (v45 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
    v62 = swift_allocObject();
    sub_222682634(v59, v62 + v60);
    v63 = v84;
    *(v62 + v61) = v84;
    sub_222634290(&v92, v62 + ((v61 + 15) & 0xFFFFFFFFFFFFFFF8));
    v64 = sub_22273872C();
    v93 = v64;
    v94 = MEMORY[0x277D21FB0];
    __swift_allocate_boxed_opaque_existential_1(&v92);
    v65 = v63;
    sub_22273871C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013288, &qword_222741D78);
    sub_222682740();
    sub_222738EDC();

    __swift_destroy_boxed_opaque_existential_1(&v92);
    sub_2226825D0(v58, v59);
    v66 = swift_allocObject();
    sub_222682634(v59, v66 + v60);
    *(v66 + v61) = v65;
    sub_2226825D0(v58, v59);
    v67 = swift_allocObject();
    sub_222682634(v59, v67 + v60);
    *(v67 + v61) = v65;
    v93 = v64;
    v68 = MEMORY[0x277D21FB0];
    v94 = MEMORY[0x277D21FB0];
    __swift_allocate_boxed_opaque_existential_1(&v92);
    v69 = v65;
    sub_22273871C();
    sub_222738E8C();

    __swift_destroy_boxed_opaque_existential_1(&v92);
    v93 = v64;
    v94 = v68;
    __swift_allocate_boxed_opaque_existential_1(&v92);
    sub_22273871C();
    sub_2227383CC();
    v70 = sub_222738E6C();

    __swift_destroy_boxed_opaque_existential_1(&v95);
    __swift_destroy_boxed_opaque_existential_1(&v92);
    return v70;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F68, &unk_222741250);
    type metadata accessor for ASCAppOfferActionError(0);
    *&v92 = 5;
    sub_222710688(MEMORY[0x277D84F90]);
    sub_2226824F8(&qword_27D012C20, type metadata accessor for ASCAppOfferActionError, &unk_222740A74);
    sub_22273725C();
    return sub_222738E9C();
  }
}

uint64_t sub_222680A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A90, &unk_222741DC0);
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222680B28, 0, 0);
}

uint64_t sub_222680B28()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2227384EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0132D0, &unk_222741830);
  sub_222737C2C();
  v6 = swift_allocObject();
  v0[8] = v6;
  *(v6 + 16) = xmmword_2227412F0;
  [v1 int64value];
  sub_222737C1C();
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_222680D50;
  v8 = v0[6];
  v9 = v0[7];

  return MEMORY[0x28213E4E0](v9, v6, v8, v4, v5);
}

uint64_t sub_222680D50(uint64_t a1)
{
  v4 = *v2;
  v4[10] = v1;

  v5 = v4[7];
  if (v1)
  {
    sub_222660468(v5, &unk_27D013A90, &unk_222741DC0);

    v6 = sub_222680F4C;
  }

  else
  {
    v4[11] = a1;
    sub_222660468(v5, &unk_27D013A90, &unk_222741DC0);

    v6 = sub_222680EDC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_222680EDC()
{
  **(v0 + 16) = *(v0 + 88);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_222680F4C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_222680FB0(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (!(*a1 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_10:
    type metadata accessor for ASCAppOfferActionError(0);
    sub_222710688(MEMORY[0x277D84F90]);
    sub_2226824F8(&qword_27D012C20, type metadata accessor for ASCAppOfferActionError, &unk_222740A74);
    sub_22273725C();
    swift_willThrow();
    return;
  }

  if (!sub_22273984C())
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223DBEC70](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v4 = *(v3 + 32);
  }

  v5 = v4;
  v6 = [objc_allocWithZone(MEMORY[0x277D1C208]) init];
  v7 = [v5 redownloadParams];
  if (!v7)
  {
    sub_22273919C();
    v7 = sub_22273916C();
  }

  [v6 setRedownloadParams_];

  v8 = [objc_allocWithZone(MEMORY[0x277CEC4D8]) initWithStoreMetadata_];
  *a2 = v8;
}

uint64_t sub_222681168(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v44 = a4;
  v46 = a3;
  v42[0] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  MEMORY[0x28223BE20](v5 - 8);
  v45 = v42 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013270, qword_222741D50);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v42 - v11;
  v13 = sub_2227381BC();
  MEMORY[0x28223BE20](v13 - 8);
  MEMORY[0x28223BE20](v14);
  v15 = sub_222738F6C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *a1;
  if (qword_27D0129A0 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v15, qword_27D019C68);
  (*(v16 + 16))(v18, v19, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v20 = *(sub_2227381FC() - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v42[1] = *(v20 + 72);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2227413C0;
  v23 = v22 + v21;
  v24 = 1;
  sub_2227381AC();
  sub_22273819C();
  v25 = v42[0] + *(type metadata accessor for WatchReinstallAction(0) + 20);
  v26 = *v25;
  v27 = *(v25 + 8);
  v28 = *(v25 + 16);
  *(&v48 + 1) = &type metadata for WatchReinstallAction.Item;
  *&v47 = v26;
  *(&v47 + 1) = v27;
  LOBYTE(v48) = v28;
  sub_222682540(v26, v27, v28);
  sub_22273815C();
  sub_222660468(&v47, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  v42[0] = v23;
  sub_2227381CC();
  sub_2227381AC();
  sub_22273819C();
  v29 = [v46 pairingID];
  if (v29)
  {
    v30 = v29;
    sub_2227373DC();

    v24 = 0;
  }

  v31 = sub_2227373FC();
  v32 = *(v31 - 8);
  (*(v32 + 56))(v9, v24, 1, v31);
  sub_222682550(v9, v12);
  if ((*(v32 + 48))(v12, 1, v31) == 1)
  {
    sub_222660468(v12, &qword_27D013270, qword_222741D50);
    v47 = 0u;
    v48 = 0u;
  }

  else
  {
    *(&v48 + 1) = v31;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v47);
    (*(v32 + 32))(boxed_opaque_existential_1, v12, v31);
  }

  sub_22273815C();
  sub_222660468(&v47, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  (*(v16 + 8))(v18, v15);
  sub_22266BCCC(v44, &v47);
  v34 = swift_allocObject();
  sub_222634290(&v47, v34 + 16);
  v35 = v46;
  *(v34 + 56) = v43;
  *(v34 + 64) = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013288, &qword_222741D78);
  swift_unknownObjectRetain();
  v36 = v35;
  v37 = sub_222738F2C();
  v38 = sub_22273946C();
  v39 = v45;
  (*(*(v38 - 8) + 56))(v45, 1, 1, v38);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = &unk_222741DD8;
  v40[5] = v34;
  v40[6] = v37;

  sub_2226D4E54(0, 0, v39, &unk_222741DE0, v40);

  return v37;
}

uint64_t sub_2226817DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_222681800, 0, 0);
}

uint64_t sub_222681800()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v9 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_222681930;
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];

  return v9(v7, v5, v6, v2, v3);
}

uint64_t sub_222681930()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_222681A24(uint64_t a1, uint64_t a2, void *a3)
{
  v34 = a3;
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013270, qword_222741D50);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - v7;
  v9 = sub_2227381BC();
  MEMORY[0x28223BE20](v9 - 8);
  MEMORY[0x28223BE20](v10);
  v11 = sub_222738F6C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D0129A0 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, qword_27D019C68);
  (*(v12 + 16))(v14, v15, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v16 = *(sub_2227381FC() - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v33 = *(v16 + 72);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2227413C0;
  v19 = v18 + v17;
  v20 = 1;
  sub_2227381AC();
  sub_22273819C();
  v21 = v32 + *(type metadata accessor for WatchReinstallAction(0) + 20);
  v22 = *v21;
  v23 = *(v21 + 8);
  v24 = *(v21 + 16);
  *(&v36 + 1) = &type metadata for WatchReinstallAction.Item;
  *&v35 = v22;
  *(&v35 + 1) = v23;
  LOBYTE(v36) = v24;
  sub_222682540(v22, v23, v24);
  sub_22273815C();
  sub_222660468(&v35, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  v32 = v19;
  sub_2227381CC();
  sub_2227381AC();
  sub_22273819C();
  v25 = [v34 pairingID];
  if (v25)
  {
    v26 = v25;
    sub_2227373DC();

    v20 = 0;
  }

  v27 = sub_2227373FC();
  v28 = *(v27 - 8);
  (*(v28 + 56))(v5, v20, 1, v27);
  sub_222682550(v5, v8);
  if ((*(v28 + 48))(v8, 1, v27) == 1)
  {
    sub_222660468(v8, &qword_27D013270, qword_222741D50);
    v35 = 0u;
    v36 = 0u;
  }

  else
  {
    *(&v36 + 1) = v27;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v35);
    (*(v28 + 32))(boxed_opaque_existential_1, v8, v27);
  }

  sub_22273815C();
  sub_222660468(&v35, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_222681F1C(uint64_t a1, uint64_t a2, void *a3)
{
  v34 = a2;
  v35 = a3;
  v39 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013270, qword_222741D50);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - v7;
  v9 = sub_2227381BC();
  MEMORY[0x28223BE20](v9 - 8);
  MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v11);
  v12 = sub_222738F6C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D0129A0 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v12, qword_27D019C68);
  v36 = v15;
  v37 = v13;
  v17 = *(v13 + 16);
  v38 = v12;
  v17(v15, v16, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_222741CB0;
  v18 = 1;
  sub_2227381AC();
  sub_22273819C();
  v19 = v34 + *(type metadata accessor for WatchReinstallAction(0) + 20);
  v20 = *v19;
  v21 = *(v19 + 8);
  v22 = *(v19 + 16);
  *(&v43 + 1) = &type metadata for WatchReinstallAction.Item;
  *&v42 = v20;
  *(&v42 + 1) = v21;
  LOBYTE(v43) = v22;
  sub_222682540(v20, v21, v22);
  sub_22273815C();
  sub_222660468(&v42, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_2227381AC();
  sub_22273819C();
  v23 = [v35 pairingID];
  if (v23)
  {
    v24 = v23;
    sub_2227373DC();

    v18 = 0;
  }

  v25 = sub_2227373FC();
  v26 = *(v25 - 8);
  (*(v26 + 56))(v5, v18, 1, v25);
  sub_222682550(v5, v8);
  if ((*(v26 + 48))(v8, 1, v25) == 1)
  {
    sub_222660468(v8, &qword_27D013270, qword_222741D50);
    v42 = 0u;
    v43 = 0u;
  }

  else
  {
    *(&v43 + 1) = v25;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v42);
    (*(v26 + 32))(boxed_opaque_existential_1, v8, v25);
  }

  sub_22273815C();
  sub_222660468(&v42, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_2227381AC();
  sub_22273819C();
  swift_getErrorValue();
  v28 = v40;
  v29 = v41;
  *(&v43 + 1) = v41;
  v30 = __swift_allocate_boxed_opaque_existential_1(&v42);
  (*(*(v29 - 8) + 16))(v30, v28, v29);
  sub_22273816C();
  sub_222660468(&v42, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  v31 = v38;
  v32 = v36;
  sub_222738C6C();

  return (*(v37 + 8))(v32, v31);
}

uint64_t sub_2226824F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_222682540(void *a1, id a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return a1;
  }
}

uint64_t sub_222682550(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013270, qword_222741D50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2226825C0(void *a1, id a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2226825D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WatchReinstallAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222682634(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WatchReinstallAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222682698(uint64_t *a1)
{
  v3 = *(type metadata accessor for WatchReinstallAction(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);

  return sub_222681168(a1, v1 + v4, v6, v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
}

unint64_t sub_222682740()
{
  result = qword_27D013290;
  if (!qword_27D013290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D013288, &qword_222741D78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013290);
  }

  return result;
}

uint64_t sub_2226827A4(uint64_t a1)
{
  v3 = *(type metadata accessor for WatchReinstallAction(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_222681A24(a1, v1 + v4, v5);
}

uint64_t objectdestroy_2Tm()
{
  v1 = (type metadata accessor for WatchReinstallAction(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_2227383BC();
  (*(*(v6 - 8) + 8))(v5, v6);
  sub_2226825C0(*(v5 + v1[7]), *(v5 + v1[7] + 8), *(v5 + v1[7] + 16));

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_222682944(uint64_t a1)
{
  v3 = *(type metadata accessor for WatchReinstallAction(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_222681F1C(a1, v1 + v4, v5);
}

uint64_t sub_2226829E0(uint64_t a1)
{
  v4 = *(v1 + 96);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22266BE24;

  return sub_222680A84(a1, v1 + 16, v1 + 56, v4, v1 + 104);
}

uint64_t sub_222682A94(uint64_t a1)
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

  return sub_2226D2C38(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_222682B70(uint64_t a1)
{
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_222660228;

  return sub_2226817DC(a1, v1 + 16, v4, v5);
}

uint64_t sub_222682C20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_222660228;

  return sub_2226D2E40(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_222682CFC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2227383BC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t get_enum_tag_for_layout_string_9JetEngine11ActionModel_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_222682D98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_222682DE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for AlertAction(uint64_t a1)
{
  result = qword_281313F50;
  if (!qword_281313F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_222682EB0(uint64_t a1)
{
  sub_2227383BC();
  if (v1 <= 0x3F)
  {
    sub_222682F94(319, &unk_281312DF0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_222682F94(319, &qword_281312DE8, &type metadata for AlertAction.Button, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_222682F94(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_222683008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_2227383BC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t type metadata accessor for AppLaunchTrampolineAction(uint64_t a1)
{
  result = qword_2813141A0;
  if (!qword_2813141A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2226830F0(uint64_t a1)
{
  sub_2226831A4(319);
  if (v1 <= 0x3F)
  {
    sub_2226831FC(319);
    if (v2 <= 0x3F)
    {
      sub_2227383BC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2226831A4(uint64_t a1)
{
  if (!qword_2813144A0)
  {
    sub_22273731C();
    v1 = sub_22273971C();
    if (!v2)
    {
      atomic_store(v1, &qword_2813144A0);
    }
  }
}

void sub_2226831FC(uint64_t a1)
{
  if (!qword_281312F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D0132E0, qword_222741F90);
    v1 = sub_22273971C();
    if (!v2)
    {
      atomic_store(v1, &qword_281312F88);
    }
  }
}

uint64_t type metadata accessor for AppStoreRepairAction(uint64_t a1)
{
  result = qword_2813140A8;
  if (!qword_2813140A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2226832D4(uint64_t a1)
{
  sub_2227383BC();
  if (v1 <= 0x3F)
  {
    sub_222683358(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_222683358(uint64_t a1)
{
  if (!qword_281312B60)
  {
    sub_222672B54();
    v1 = sub_22273971C();
    if (!v2)
    {
      atomic_store(v1, &qword_281312B60);
    }
  }
}

uint64_t type metadata accessor for CancelOrPauseInstallAction(uint64_t a1)
{
  result = qword_281313298;
  if (!qword_281313298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_222683424(uint64_t a1)
{
  result = sub_2227383BC();
  if (v2 <= 0x3F)
  {
    result = sub_222672B54();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for OpenAppAction(uint64_t a1)
{
  result = qword_281314470;
  if (!qword_281314470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22268351C(uint64_t a1)
{
  result = sub_2227383BC();
  if (v2 <= 0x3F)
  {
    result = sub_222672B54();
    if (v3 <= 0x3F)
    {
      result = sub_22273786C();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for PresentErrorAction(uint64_t a1)
{
  result = qword_281313770;
  if (!qword_281313770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222683634(uint64_t a1)
{
  result = sub_2227383BC();
  if (v2 <= 0x3F)
  {
    result = sub_2226836B8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2226836B8()
{
  result = qword_281312B30;
  if (!qword_281312B30)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281312B30);
  }

  return result;
}

uint64_t type metadata accessor for WatchReinstallAction(uint64_t a1)
{
  result = qword_2813133C8;
  if (!qword_2813133C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222683790(uint64_t a1)
{
  result = sub_2227383BC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_222683810(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_222683858(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_2226838B8(uint64_t *a1, uint64_t *a2)
{
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      sub_222683960();
      return sub_2227396CC() & 1;
    }

    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    return 0;
  }

  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  return sub_222739B4C();
}

unint64_t sub_222683960()
{
  result = qword_281312B78;
  if (!qword_281312B78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281312B78);
  }

  return result;
}

double sub_2226839AC@<D0>(uint64_t a2@<X8>)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = &qword_27D012F78;
    v6 = off_2784B05F8;
    *(a2 + 24) = sub_22262E364(0, &qword_27D012F78, off_2784B05F8);
    v7 = qword_27D0133C0;
    v8 = &protocol conformance descriptor for ASCAlertOffer;
  }

  else
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v4 = v9;
      v5 = &qword_27D012F80;
      v6 = off_2784B0600;
      *(a2 + 24) = sub_22262E364(0, &qword_27D012F80, off_2784B0600);
      v7 = &qword_27D0133B0;
      v8 = &protocol conformance descriptor for ASCAppDistributionOffer;
    }

    else
    {
      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (v10)
      {
        v4 = v10;
        v5 = &qword_27D012F98;
        v6 = off_2784B0610;
        *(a2 + 24) = sub_22262E364(0, &qword_27D012F98, off_2784B0610);
        v7 = &qword_27D0133A0;
        v8 = &protocol conformance descriptor for ASCAppOffer;
      }

      else
      {
        objc_opt_self();
        v11 = swift_dynamicCastObjCClass();
        if (v11)
        {
          v4 = v11;
          v5 = &qword_27D013048;
          v6 = off_2784B0618;
          *(a2 + 24) = sub_22262E364(0, &qword_27D013048, off_2784B0618);
          v7 = &qword_27D013040;
          v8 = &protocol conformance descriptor for ASCArcadeOffer;
        }

        else
        {
          objc_opt_self();
          v12 = swift_dynamicCastObjCClass();
          if (v12)
          {
            v4 = v12;
            v5 = &qword_27D0130F0;
            v6 = off_2784B0630;
            *(a2 + 24) = sub_22262E364(0, &qword_27D0130F0, off_2784B0630);
            v7 = &unk_27D013390;
            v8 = &protocol conformance descriptor for ASCContingentOffer;
          }

          else
          {
            objc_opt_self();
            v13 = swift_dynamicCastObjCClass();
            if (v13)
            {
              v4 = v13;
              v5 = &qword_27D013118;
              v6 = off_2784B06F8;
              *(a2 + 24) = sub_22262E364(0, &qword_27D013118, off_2784B06F8);
              v7 = &qword_27D013110;
              v8 = &protocol conformance descriptor for ASCOfferAlertOffer;
            }

            else
            {
              objc_opt_self();
              v14 = swift_dynamicCastObjCClass();
              if (v14)
              {
                v4 = v14;
                v5 = &qword_27D013238;
                v6 = off_2784B0720;
                *(a2 + 24) = sub_22262E364(0, &qword_27D013238, off_2784B0720);
                v7 = &qword_27D013230;
                v8 = &protocol conformance descriptor for ASCStatefulOffer;
              }

              else
              {
                objc_opt_self();
                v15 = swift_dynamicCastObjCClass();
                if (!v15)
                {
                  *(a2 + 32) = 0;
                  result = 0.0;
                  *a2 = 0u;
                  *(a2 + 16) = 0u;
                  return result;
                }

                v4 = v15;
                v5 = &qword_27D013258;
                v6 = off_2784B0730;
                *(a2 + 24) = sub_22262E364(0, &qword_27D013258, off_2784B0730);
                v7 = &qword_27D013380;
                v8 = &protocol conformance descriptor for ASCURLOffer;
              }
            }
          }
        }
      }
    }
  }

  *(a2 + 32) = sub_222675B10(v7, v5, v6, v8);
  *a2 = v4;

  swift_unknownObjectRetain();
  return result;
}

uint64_t sub_222683D28(uint64_t a1, uint64_t a2)
{
  v4 = sub_222738FAC();
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = (&v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v42 = (&v41 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0132F0, &unk_222745700);
  v44 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  v12 = sub_22273823C();
  v13 = *(v12 - 8);
  v47 = v12;
  v48 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2227380FC();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v49 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v41 - v20;
  v22 = sub_2227380CC();
  result = 0;
  if ((v22 & 1) == 0)
  {
    v43 = a2;
    v41 = v15;
    sub_22273810C();
    v24 = sub_2227380EC();
    v26 = v25;
    (*(v17 + 8))(v21, v16);
    if (v26)
    {
      v27 = v24 == 0x66664F7472656C61 && v26 == 0xEA00000000007265;
      if (v27 || (sub_222739B4C() & 1) != 0)
      {

        v28 = &qword_27D013368;
        v29 = &unk_222742400;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013368, &unk_222742400);
        (*(v17 + 16))(v49, a1, v16);
        (*(v48 + 16))(v41, v43, v47);
        v30 = &unk_27D013370;
LABEL_16:
        sub_2226849D4(v30, v28, v29);
        sub_22273870C();
        return v52[0];
      }

      v36 = v43;
      if (v24 == 0xD000000000000014 && 0x8000000222748A00 == v26 || (sub_222739B4C() & 1) != 0)
      {

        v28 = &qword_27D013358;
        v29 = &qword_2227423F8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013358, &qword_2227423F8);
        (*(v17 + 16))(v49, a1, v16);
        (*(v48 + 16))(v41, v36, v47);
        v30 = &unk_27D013360;
        goto LABEL_16;
      }

      if (v24 == 0x726566664F707061 && v26 == 0xE800000000000000 || (sub_222739B4C() & 1) != 0)
      {

        v28 = &unk_27D014620;
        v29 = &unk_222745850;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014620, &unk_222745850);
        (*(v17 + 16))(v49, a1, v16);
        (*(v48 + 16))(v41, v36, v47);
        v30 = &unk_281313F80;
        goto LABEL_16;
      }

      if (v24 == 0x664F656461637261 && v26 == 0xEB00000000726566 || (sub_222739B4C() & 1) != 0)
      {

        v28 = &qword_27D013348;
        v29 = &qword_2227423F0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013348, &qword_2227423F0);
        (*(v17 + 16))(v49, a1, v16);
        (*(v48 + 16))(v41, v36, v47);
        v30 = &unk_27D013350;
        goto LABEL_16;
      }

      v37 = v24;
      if (v24 == 0x65676E69746E6F63 && v26 == 0xEF726566664F746ELL || (sub_222739B4C() & 1) != 0)
      {

        v28 = &qword_27D013338;
        v29 = &qword_2227423E8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013338, &qword_2227423E8);
        (*(v17 + 16))(v49, a1, v16);
        (*(v48 + 16))(v41, v36, v47);
        v30 = &unk_27D013340;
        goto LABEL_16;
      }

      if (v24 == 0x656C41726566666FLL && v26 == 0xEF726566664F7472 || (sub_222739B4C() & 1) != 0)
      {

        v28 = &qword_27D013328;
        v29 = &qword_2227423E0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013328, &qword_2227423E0);
        (*(v17 + 16))(v49, a1, v16);
        (*(v48 + 16))(v41, v36, v47);
        v30 = &unk_27D013330;
        goto LABEL_16;
      }

      if (v24 == 0x6C75666574617473 && v26 == 0xED0000726566664FLL || (sub_222739B4C() & 1) != 0)
      {

        v28 = &qword_27D013318;
        v29 = &qword_2227423D8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013318, &qword_2227423D8);
        (*(v17 + 16))(v49, a1, v16);
        (*(v48 + 16))(v41, v36, v47);
        v30 = &unk_27D013320;
        goto LABEL_16;
      }

      if (v24 == 0x726566664F6C7275 && v26 == 0xE800000000000000 || (sub_222739B4C() & 1) != 0)
      {

        v28 = &qword_27D013308;
        v29 = &qword_2227423D0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013308, &qword_2227423D0);
        (*(v17 + 16))(v49, a1, v16);
        (*(v48 + 16))(v41, v43, v47);
        v30 = &unk_27D013310;
        goto LABEL_16;
      }

      sub_22273821C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014120, &qword_2227423C0);
      sub_22273824C();
      (*(v44 + 8))(v11, v9);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013090, &qword_222744020);
      v39 = v42;
      *v42 = v37;
      v39[1] = v26;
      v39[2] = v38;
      (*(v45 + 104))();
      sub_2226848A4(v52, v50);
      if (v51)
      {
        __swift_project_boxed_opaque_existential_1(v50, v51);
        sub_22268497C();
        v32 = v46;
        v34 = swift_allocError();
        v33 = v45;
        v6 = v42;
        (*(v45 + 16))(v40, v42, v32);
        goto LABEL_11;
      }

      (*(v45 + 8))(v42, v46);
    }

    else
    {
      sub_22273821C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014120, &qword_2227423C0);
      sub_22273824C();
      (*(v44 + 8))(v11, v9);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013090, &qword_222744020);
      *v6 = 0x646E696B24;
      v6[1] = 0xE500000000000000;
      v6[2] = v31;
      v33 = v45;
      v32 = v46;
      (*(v45 + 104))(v6, *MEMORY[0x277D22530], v46);
      sub_2226848A4(v52, v50);
      if (v51)
      {
        __swift_project_boxed_opaque_existential_1(v50, v51);
        sub_22268497C();
        v34 = swift_allocError();
        (*(v33 + 16))(v35, v6, v32);
LABEL_11:
        sub_2227389AC();
        (*(v33 + 8))(v6, v32);
        sub_222684914(v52);

        __swift_destroy_boxed_opaque_existential_1(v50);
        return 0;
      }

      (*(v33 + 8))(v6, v32);
    }

    sub_222684914(v52);
    sub_222684914(v50);
    return 0;
  }

  return result;
}

uint64_t sub_2226848A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0132F8, &qword_2227423C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222684914(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0132F8, &qword_2227423C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22268497C()
{
  result = qword_27D013300;
  if (!qword_27D013300)
  {
    sub_222738FAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013300);
  }

  return result;
}

uint64_t sub_2226849D4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_222684D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_22273726C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id sub_222684DCC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_222684E54()
{
  v0 = sub_222738F6C();
  __swift_allocate_value_buffer(v0, qword_27D013440);
  v1 = __swift_project_value_buffer(v0, qword_27D013440);
  if (qword_27D0129B8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_281315AD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_222684F1C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013540, &qword_2227425A8);
  swift_allocObject();
  v0[5] = sub_2227390EC();
  v0[2] = sub_2227330A4(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013548, &qword_2227425B0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v0[3] = v2;
  v0[4] = [objc_allocWithZone(type metadata accessor for LSApplicationWorkspaceObserver()) init];
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v4 = result;
    [result addObserver_];

    *(v1[4] + OBJC_IVAR____TtC27AppStoreComponentsDaemonKitP33_D98DFBDF5C52B1301492409D5B79922F30LSApplicationWorkspaceObserver_changeObserver + 8) = &off_2835C8898;
    swift_unknownObjectWeakAssign();
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_222685024(uint64_t a1, int a2)
{
  v3 = v2;
  v77 = *MEMORY[0x277D85DE8];
  v6 = *v2;
  v7 = sub_2227381BC();
  MEMORY[0x28223BE20](v7 - 8);
  v61 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = 0;
  v9 = sub_222737C2C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v69 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v68 = &v51 - v13;
  v72 = MEMORY[0x277D84F90];
  if (a1)
  {
    v52 = v6;
    v53 = a2;
    v54 = v2;
    v14 = a1 + 56;
    v15 = 1 << *(a1 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(a1 + 56);
    v18 = (v15 + 63) >> 6;
    v66 = v10 + 32;
    v67 = v10 + 16;
    v63 = (v10 + 8);
    v56 = "B16@?0@LSApplicationRecord8";

    v19 = 0;
    v20 = MEMORY[0x277D84F90];
    v55 = xmmword_2227412F0;
    v65 = v9;
    v57 = a1;
    v64 = v10;
LABEL_6:
    if (v17)
    {
      goto LABEL_11;
    }

    while (1)
    {
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
      }

      if (v21 >= v18)
      {
        break;
      }

      v17 = *(v14 + 8 * v21);
      ++v19;
      if (v17)
      {
        v19 = v21;
LABEL_11:
        v22 = v68;
        (*(v10 + 16))(v68, *(a1 + 48) + *(v10 + 72) * (__clz(__rbit64(v17)) | (v19 << 6)), v9);
        (*(v10 + 32))(v69, v22, v9);
        v23 = sub_222737BEC();
        if (v23 < 0)
        {
          goto LABEL_33;
        }

        v24 = v23;
        v17 &= v17 - 1;
        v25 = objc_allocWithZone(MEMORY[0x277CC1E70]);
        aBlock[0] = 0;
        v26 = [v25 initWithStoreItemIdentifier:v24 error:aBlock];
        if (v26)
        {
          v27 = v26;
          v28 = aBlock[0];
          v29 = [v27 applicationState];
          v30 = [v29 isInstalled];

          if ((v30 & 1) != 0 && [v27 isInstalledFromDistributorOrWeb])
          {
            v31 = v27;
            MEMORY[0x223DBE6A0]();
            v9 = v65;
            if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_22273938C();
              v9 = v65;
            }

            sub_2227393AC();

            (*v63)(v69, v9);
            v20 = v72;
            v10 = v64;
          }

          else
          {
            v9 = v65;
            (*v63)(v69, v65);

            v10 = v64;
          }
        }

        else
        {
          v32 = aBlock[0];
          v33 = sub_22273727C();

          swift_willThrow();
          if (qword_27D012980 != -1)
          {
            swift_once();
          }

          v62 = sub_222738F6C();
          v60 = __swift_project_value_buffer(v62, qword_27D013440);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
          v34 = *(sub_2227381FC() - 8);
          v59 = (*(v34 + 80) + 32) & ~*(v34 + 80);
          *(swift_allocObject() + 16) = v55;
          sub_2227381AC();
          sub_22273819C();
          v35 = v69;
          v36 = sub_222737BEC();
          v74 = MEMORY[0x277D84A28];
          aBlock[0] = v36;
          sub_22273816C();
          sub_222660468(aBlock, &qword_27D0130C0, &unk_2227413B0);
          sub_22273819C();
          swift_getErrorValue();
          v58 = v33;
          v37 = v70;
          v38 = v71;
          v74 = v71;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(aBlock);
          (*(*(v38 - 1) + 16))(boxed_opaque_existential_1, v37, v38);
          sub_22273816C();
          sub_222660468(aBlock, &qword_27D0130C0, &unk_2227413B0);
          sub_22273819C();
          sub_2227381CC();
          sub_222738C6C();

          v9 = v65;
          (*v63)(v35, v65);
          v62 = 0;
          a1 = v57;
          v10 = v64;
        }

        goto LABEL_6;
      }
    }

    v3 = v54;
    LOBYTE(a2) = v53;
    v41 = a1;
    v6 = v52;
  }

  else
  {
    v41 = 0;
    v42 = [objc_opt_self() enumeratorWithOptions_];
    v75 = sub_222685A50;
    v76 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_222685AC8;
    v74 = &block_descriptor_4;
    v43 = _Block_copy(aBlock);
    [v42 setFilter_];
    _Block_release(v43);
    v44 = [v42 nextObject];
    if (v44)
    {
      do
      {
        v45 = v44;
        MEMORY[0x223DBE6A0]();
        if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22273938C();
        }

        sub_2227393AC();

        v20 = v72;
        v44 = [v42 nextObject];
      }

      while (v44);
    }

    else
    {
      v20 = MEMORY[0x277D84F90];
    }
  }

  v46 = v3[3];
  MEMORY[0x28223BE20](v40);
  *(&v51 - 4) = v20;
  *(&v51 - 3) = v3;
  *(&v51 - 2) = v41;
  *(&v51 - 1) = v6;
  MEMORY[0x28223BE20](v47);
  *(&v51 - 2) = sub_222688E0C;
  *(&v51 - 1) = v48;
  os_unfair_lock_lock(v46 + 4);
  sub_2226944C8(aBlock);
  os_unfair_lock_unlock(v46 + 4);
  v49 = aBlock[0];

  if (a2)
  {
    aBlock[0] = v49;
    sub_2227390DC();
  }
}

uint64_t sub_2226858E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  if (*(v6 + 16) && (v7 = sub_2226888D4(a2), (v8 & 1) != 0))
  {
    v9 = v7;
    v10 = *(v6 + 56);
    v11 = sub_22273793C();
    v12 = *(v11 - 8);
    (*(v12 + 16))(a3, v10 + *(v12 + 72) * v9, v11);
    (*(v12 + 56))(a3, 0, 1, v11);
  }

  else
  {
    v13 = sub_22273793C();
    (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }

  return swift_endAccess();
}

BOOL sub_222685A50(void *a1)
{
  v2 = [a1 applicationState];
  v3 = [v2 isInstalled];

  return v3 && ([a1 isInstalledFromDistributorOrWeb] & 1) != 0;
}

uint64_t sub_222685AC8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t sub_222685B20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2227381BC();
  v5 = [a1 iTunesMetadata];
  v6 = [v5 storeItemIdentifier];

  if (v6 < 0)
  {
    __break(1u);
    swift_once();
    v7 = sub_222738F6C();
    __swift_project_value_buffer(v7, qword_27D013440);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    sub_2227381FC();
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    v15 = MEMORY[0x277D84A28];
    v14[0] = v6;
    sub_22273816C();
    sub_222660468(v14, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    swift_getErrorValue();
    v15 = v13;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
    (*(*(v13 - 8) + 16))(boxed_opaque_existential_1);
    sub_22273816C();
    sub_222660468(v14, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C6C();

    v9 = sub_222737C2C();
    return (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
  }

  else
  {
    sub_222737C1C();
    v10 = sub_222737C2C();
    v11 = *(*(v10 - 8) + 56);

    return v11(a2, 0, 1, v10);
  }
}

void sub_222685EA8(unint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11 = objc_autoreleasePoolPush();
  sub_222685F40(a1, a2, a3, a4, &v12);
  objc_autoreleasePoolPop(v11);
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *a5 = v12;
  }
}

uint64_t sub_222685F40@<X0>(unint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v129 = a4;
  v131 = a3;
  v164 = a2;
  v130 = a5;
  v6 = sub_22273793C();
  v143 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v138 = &v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0134E0, &unk_222742560);
  MEMORY[0x28223BE20](v148);
  v9 = &v128 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012FB8, &qword_222741548);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v128 - v11;
  v13 = sub_2227381BC();
  MEMORY[0x28223BE20](v13 - 8);
  v154 = &v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v133 = &v128 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0134F0, &qword_222742570);
  MEMORY[0x28223BE20](v17 - 8);
  v135 = &v128 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v141 = &v128 - v20;
  MEMORY[0x28223BE20](v21);
  v147 = &v128 - v22;
  MEMORY[0x28223BE20](v23);
  v151 = &v128 - v24;
  MEMORY[0x28223BE20](v25);
  v168 = (&v128 - v26);
  MEMORY[0x28223BE20](v27);
  v29 = &v128 - v28;
  v172 = sub_222737C2C();
  v144 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v140 = &v128 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v169 = (&v128 - v32);
  MEMORY[0x28223BE20](v33);
  v149 = &v128 - v34;
  MEMORY[0x28223BE20](v35);
  v171 = &v128 - v36;
  MEMORY[0x28223BE20](v37);
  v39 = &v128 - v38;
  MEMORY[0x28223BE20](v40);
  v139 = &v128 - v41;
  v180 = MEMORY[0x277D84FA0];
  v179 = MEMORY[0x277D84FA0];
  v128 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_72:
    result = sub_22273984C();
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v163 = a1;
  v157 = v6;
  v134 = v29;
  v142 = v39;
  if (result)
  {
    if (result >= 1)
    {
      v39 = 0;
      v161 = a1 & 0xC000000000000001;
      v153 = "m LSApplicationRecord ";
      v158 = (v144 + 56);
      v146 = (v144 + 32);
      v156 = (v143 + 48);
      v155 = (v144 + 16);
      v150 = (v144 + 8);
      v145 = (v143 + 56);
      v132 = v143 + 16;
      v137 = (v143 + 32);
      v136 = (v143 + 8);
      v152 = xmmword_2227412F0;
      v162 = v9;
      v160 = v12;
      v159 = result;
      while (1)
      {
        if (v161)
        {
          v49 = MEMORY[0x223DBEC70](v39, a1);
        }

        else
        {
          v49 = *(a1 + 8 * v39 + 32);
        }

        v50 = v49;
        v29 = [v49 iTunesMetadata];
        v51 = [v29 storeItemIdentifier];

        if (v51 < 0)
        {
LABEL_71:
          __break(1u);
          goto LABEL_72;
        }

        v52 = v165;
        sub_222737C1C();
        v165 = v52;
        v170 = v50;
        if (v52)
        {
          v167 = v39;
          if (qword_27D012980 != -1)
          {
            swift_once();
          }

          v53 = sub_222738F6C();
          v166 = __swift_project_value_buffer(v53, qword_27D013440);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
          sub_2227381FC();
          *(swift_allocObject() + 16) = v152;
          sub_2227381AC();
          sub_22273819C();
          v178 = MEMORY[0x277D84A28];
          v177 = v51;
          sub_22273816C();
          sub_222660468(&v177, &qword_27D0130C0, &unk_2227413B0);
          sub_22273819C();
          v54 = v165;
          swift_getErrorValue();
          v55 = v175;
          v56 = v176;
          v178 = v176;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v177);
          (*(*(v56 - 8) + 16))(boxed_opaque_existential_1, v55, v56);
          sub_22273816C();
          sub_222660468(&v177, &qword_27D0130C0, &unk_2227413B0);
          sub_22273819C();
          sub_2227381CC();
          sub_222738C6C();

          v12 = v160;
          (*v158)(v160, 1, 1, v172);
          sub_222660468(v12, &qword_27D012FB8, &qword_222741548);
          v165 = 0;
          a1 = v163;
          v6 = v157;
          v9 = v162;
          v48 = v159;
          v39 = v167;
          goto LABEL_9;
        }

        v58 = v172;
        (*v158)(v12, 0, 1, v172);
        (*v146)(v169, v12, v58);
        v59 = v168;
        sub_2226875BC(v50, v168);
        v60 = *v156;
        if ((*v156)(v59, 1, v6) != 1)
        {
          v61 = v149;
          v62 = v172;
          (*v155)(v149, v169, v172);
          v63 = a1;
          v64 = v171;
          sub_22268D61C(v171, v61);
          v65 = v64;
          a1 = v63;
          v9 = v162;
          (*v150)(v65, v62);
        }

        v66 = v164;
        swift_beginAccess();
        v67 = *(v66 + 2);
        if (*(v67 + 16) && (v68 = sub_2226888D4(v169), (v69 & 1) != 0))
        {
          v70 = *(v67 + 56) + *(v143 + 72) * v68;
          v71 = v151;
          (*(v143 + 16))(v151, v70, v6);
          v72 = 0;
        }

        else
        {
          v72 = 1;
          v71 = v151;
        }

        (*v145)(v71, v72, 1, v6);
        swift_endAccess();
        v73 = *(v148 + 48);
        sub_22269450C(v71, v9);
        sub_22269450C(v168, v9 + v73);
        v74 = v60(v9, 1, v6) == 1;
        v75 = v71;
        v76 = v147;
        if (v74)
        {
          sub_222660468(v75, &qword_27D0134F0, &qword_222742570);
          if (v60(v9 + v73, 1, v6) != 1)
          {
            goto LABEL_30;
          }

          sub_222660468(v9, &qword_27D0134F0, &qword_222742570);
        }

        else
        {
          sub_22269450C(v9, v147);
          v77 = v60(v9 + v73, 1, v6);
          if (v77 == 1)
          {
            sub_222660468(v151, &qword_27D0134F0, &qword_222742570);
            (*v136)(v76, v6);
LABEL_30:
            sub_222660468(v9, &unk_27D0134E0, &unk_222742560);
LABEL_31:
            v78 = *v155;
            v79 = v6;
            v80 = v140;
            v81 = v172;
            (*v155)(v140, v169, v172);
            v82 = v141;
            sub_22269450C(v168, v141);
            swift_beginAccess();
            if (v60(v82, 1, v79) == 1)
            {
              sub_222660468(v82, &qword_27D0134F0, &qword_222742570);
              v43 = v135;
              sub_222689184(v80, v135);
              sub_222660468(v43, &qword_27D0134F0, &qword_222742570);
              v44 = *v150;
              (*v150)(v80, v81);
            }

            else
            {
              v83 = v138;
              (*v137)(v138, v82, v79);
              v84 = v164;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v174 = *(v84 + 2);
              *(v84 + 2) = 0x8000000000000000;
              sub_22268BF74(v83, v80, isUniquelyReferenced_nonNull_native);
              v44 = *v150;
              (*v150)(v80, v81);
              *(v84 + 2) = v174;
            }

            swift_endAccess();
            v45 = v149;
            v46 = v169;
            v78(v149, v169, v81);
            v47 = v171;
            sub_22268D61C(v171, v45);

            v44(v47, v81);
            v44(v46, v81);
            sub_222660468(v168, &qword_27D0134F0, &qword_222742570);
            a1 = v163;
            v9 = v162;
            v12 = v160;
            v6 = v157;
            goto LABEL_8;
          }

          v86 = v138;
          (*v137)(v138, v9 + v73, v6);
          sub_2226946C0(&qword_27D0134F8, MEMORY[0x277CEC0E0], MEMORY[0x277CEC0E8]);
          v87 = a1;
          v88 = v76;
          LODWORD(v167) = sub_22273915C();
          v89 = *v136;
          (*v136)(v86, v6);
          sub_222660468(v151, &qword_27D0134F0, &qword_222742570);
          v90 = v88;
          a1 = v87;
          v89(v90, v6);
          sub_222660468(v9, &qword_27D0134F0, &qword_222742570);
          if ((v167 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        (*v150)(v169, v172);
        sub_222660468(v168, &qword_27D0134F0, &qword_222742570);
        v12 = v160;
LABEL_8:
        v48 = v159;
LABEL_9:
        if (v48 == ++v39)
        {
          v167 = v179;
          v39 = v142;
          v91 = MEMORY[0x277D84FA0];
          goto LABEL_38;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v167 = MEMORY[0x277D84FA0];
    v91 = MEMORY[0x277D84FA0];
LABEL_38:
    v12 = v164;
    swift_beginAccess();
    v174 = v91;
    v29 = v12;

    v92 = sub_2226ADBF8(v156);
    v93 = v172;
    if (v131)
    {
      v92 = sub_2226936D0(v131, v92);
    }

    v94 = 0;
    v95 = v92 + 56;
    v96 = 1 << *(v92 + 32);
    if (v96 < 64)
    {
      v97 = ~(-1 << v96);
    }

    else
    {
      v97 = -1;
    }

    v98 = v97 & *(v92 + 56);
    v99 = (v96 + 63) >> 6;
    v170 = (v144 + 16);
    v158 = (v144 + 32);
    v166 = (v167 + 56);
    v168 = (v144 + 8);
    v155 = (v143 + 56);
    v154 = (v143 + 32);
    v160 = (v92 + 56);
    v159 = v99;
    v161 = v92;
LABEL_46:
    v107 = v94;
    if (!v98)
    {
      goto LABEL_48;
    }

    do
    {
      v94 = v107;
LABEL_51:
      v162 = (v98 - 1) & v98;
      v108 = v144;
      v109 = *(v144 + 72);
      v110 = *(v92 + 48) + v109 * (__clz(__rbit64(v98)) | (v94 << 6));
      v111 = v139;
      v169 = *(v144 + 16);
      (v169)(v139, v110, v93);
      (*(v108 + 32))(v39, v111, v93);
      v112 = v167;
      if (!*(v167 + 2))
      {
        v6 = v39;
LABEL_60:
        v120 = sub_2226888D4(v6);
        if (v121)
        {
          v122 = v120;
          v123 = v164;
          v124 = swift_isUniquelyReferenced_nonNull_native();
          v125 = *(v123 + 2);
          v173 = v125;
          *(v123 + 2) = 0x8000000000000000;
          if (!v124)
          {
            sub_22268CA68();
            v125 = v173;
          }

          v93 = v172;
          (*v168)(v125[6] + v122 * v109, v172);
          v102 = v134;
          v101 = v157;
          (*(v143 + 32))(v134, v125[7] + *(v143 + 72) * v122, v157);
          sub_22268B658(v122, v125);
          v156 = v125;
          *(v123 + 2) = v125;

          v100 = 0;
        }

        else
        {
          v100 = 1;
          v101 = v157;
          v102 = v134;
          v93 = v172;
        }

        (*v155)(v102, v100, 1, v101);
        sub_222660468(v102, &qword_27D0134F0, &qword_222742570);
        v103 = v149;
        v104 = v169;
        v9 = v170;
        (v169)(v149, v6, v93);
        v105 = v171;
        sub_22268D61C(v171, v103);
        v6 = v168;
        v106 = *v168;
        (*v168)(v105, v93);
        v104(v103, v142, v93);
        v39 = v142;
        v12 = &v180;
        sub_22268D61C(v105, v103);
        v106(v105, v93);
        v106(v39, v93);
        a1 = v163;
        v29 = v164;
        v92 = v161;
        v95 = v160;
        v99 = v159;
        v98 = v162;
        goto LABEL_46;
      }

      sub_2226946C0(&qword_27D0134D0, MEMORY[0x277CEC160], MEMORY[0x277CEC168]);
      v6 = v39;
      v113 = sub_22273911C();
      v114 = -1 << v112[32];
      v115 = v113 & ~v114;
      if (((*(v166 + ((v115 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v115) & 1) == 0)
      {
        goto LABEL_60;
      }

      v9 = ~v114;
      while (1)
      {
        v116 = *(v112 + 6) + v115 * v109;
        v117 = v171;
        v118 = v172;
        (v169)(v171, v116, v172);
        sub_2226946C0(&qword_27D0134D8, MEMORY[0x277CEC160], MEMORY[0x277CEC170]);
        v119 = sub_22273915C();
        v12 = *v168;
        (*v168)(v117, v118);
        if (v119)
        {
          break;
        }

        v115 = (v115 + 1) & v9;
        v112 = v167;
        if (((*(v166 + ((v115 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v115) & 1) == 0)
        {
          goto LABEL_60;
        }
      }

      v39 = v6;
      v93 = v172;
      (v12)(v6, v172);
      v107 = v94;
      a1 = v163;
      v29 = v164;
      v92 = v161;
      v95 = v160;
      v99 = v159;
      v98 = v162;
    }

    while (v162);
    while (1)
    {
LABEL_48:
      v94 = v107 + 1;
      if (__OFADD__(v107, 1))
      {
        __break(1u);
        goto LABEL_71;
      }

      if (v94 >= v99)
      {
        break;
      }

      v98 = *(v95 + 8 * v94);
      ++v107;
      if (v98)
      {
        goto LABEL_51;
      }
    }

    swift_endAccess();

    if (qword_27D012980 != -1)
    {
      swift_once();
    }

    v126 = sub_222738F6C();
    __swift_project_value_buffer(v126, qword_27D013440);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    sub_2227381FC();
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    v178 = v129;
    v177 = v29;

    sub_22273816C();
    sub_222660468(&v177, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    if (v128)
    {
      v127 = sub_22273984C();
    }

    else
    {
      v127 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v178 = MEMORY[0x277D83B88];
    v177 = v127;
    sub_22273816C();
    sub_222660468(&v177, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C4C();

    *v130 = v180;
  }

  return result;
}

uint64_t sub_2226875BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = sub_2227381BC();
  v7 = [a1 applicationState];
  v8 = [v7 isInstalled];

  if (v8 && [a1 isInstalledFromDistributorOrWeb])
  {
    if (qword_27D012980 != -1)
    {
      swift_once();
    }

    v9 = sub_222738F6C();
    __swift_project_value_buffer(v9, qword_27D013440);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    sub_2227381FC();
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    v24 = v5;
    v23[0] = v2;

    sub_22273816C();
    sub_222660468(v23, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    v24 = sub_22262E364(0, &qword_27D013508, 0x277CC1E70);
    v23[0] = a1;
    v10 = a1;
    sub_22273816C();
    sub_222660468(v23, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C5C();

    v11 = [v10 iTunesMetadata];
    v12 = [v11 versionIdentifier];

    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013510, &qword_222742580) + 48);
    v14 = *MEMORY[0x277CEC068];
    v15 = sub_22273786C();
    result = (*(*(v15 - 8) + 104))(a2, v14, v15);
    if ((v12 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      *(a2 + v13) = v12;
      v17 = *MEMORY[0x277CEC0C0];
      v18 = sub_22273793C();
      v19 = *(v18 - 8);
      (*(v19 + 104))(a2, v17, v18);
      return (*(v19 + 56))(a2, 0, 1, v18);
    }
  }

  else
  {
    if (qword_27D012980 != -1)
    {
      swift_once();
    }

    v20 = sub_222738F6C();
    __swift_project_value_buffer(v20, qword_27D013440);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    sub_2227381FC();
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    v24 = v5;
    v23[0] = v2;

    sub_22273816C();
    sub_222660468(v23, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    v24 = sub_22262E364(0, &qword_27D013508, 0x277CC1E70);
    v23[0] = a1;
    v21 = a1;
    sub_22273816C();
    sub_222660468(v23, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C4C();

    v22 = sub_22273793C();
    return (*(*(v22 - 8) + 56))(a2, 1, 1, v22);
  }

  return result;
}

uint64_t sub_222687BCC(unint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v43 = v2;
  v5 = v4;
  v6 = sub_2227381BC();
  MEMORY[0x28223BE20](v6 - 8);
  v42[1] = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012FB8, &qword_222741548);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v42 - v9;
  v11 = sub_222737C2C();
  v46 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v48 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v45 = v42 - v16;
  v51[0] = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_17:
    v23 = v14;
    v17 = sub_22273984C();
    v14 = v23;
    v49 = v23;
    if (v17)
    {
LABEL_3:
      v18 = 0;
      v19 = (a1 & 0xFFFFFFFFFFFFFF8);
      v50 = (a1 & 0xFFFFFFFFFFFFFF8);
      v47 = v17;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x223DBEC70](v18, a1, v15);
        }

        else
        {
          if (v18 >= v19[2])
          {
            goto LABEL_16;
          }

          v14 = *(a1 + 8 * v18 + 32);
        }

        v20 = v14;
        v21 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        if ([v14 isInstalledFromDistributorOrWeb])
        {
          sub_22273995C();
          sub_22273998C();
          sub_22273999C();
          v14 = sub_22273996C();
          v17 = v47;
          v19 = v50;
        }

        else
        {
        }

        ++v18;
      }

      while (v21 != v17);
      v22 = v51[0];
      if ((v51[0] & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_37;
    }
  }

  else
  {
    v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v49 = v14;
    if (v17)
    {
      goto LABEL_3;
    }
  }

  v22 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
  {
LABEL_19:
    if ((v22 & 0x4000000000000000) == 0)
    {
      v24 = *(v22 + 16);
      if (v24)
      {
        goto LABEL_21;
      }

      goto LABEL_38;
    }
  }

LABEL_37:
  while (1)
  {
    v24 = sub_22273984C();
    if (!v24)
    {
      break;
    }

LABEL_21:
    v25 = 0;
    v47 = v22 & 0xC000000000000001;
    v26 = (v46 + 48);
    v27 = (v46 + 32);
    v50 = MEMORY[0x277D84F90];
    v44 = v5;
    while (1)
    {
      if (v47)
      {
        v28 = MEMORY[0x223DBEC70](v25, v22);
      }

      else
      {
        if (v25 >= *(v22 + 16))
        {
          goto LABEL_36;
        }

        v28 = *(v22 + 8 * v25 + 32);
      }

      v29 = v28;
      v30 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      sub_222685B20(v28, v10);
      v31 = v49;

      if ((*v26)(v10, 1, v31) == 1)
      {
        sub_222660468(v10, &qword_27D012FB8, &qword_222741548);
      }

      else
      {
        v32 = *v27;
        v33 = v45;
        (*v27)(v45, v10, v31);
        v32(v48, v33, v31);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = sub_222694FF4(0, v50[2] + 1, 1, v50);
        }

        v35 = v50[2];
        v34 = v50[3];
        if (v35 >= v34 >> 1)
        {
          v50 = sub_222694FF4((v34 > 1), v35 + 1, 1, v50);
        }

        v36 = v49;
        v37 = v50;
        v50[2] = v35 + 1;
        v32(&v37[((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v35], v48, v36);
        v5 = v44;
      }

      ++v25;
      if (v30 == v24)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
  }

LABEL_38:
  v50 = MEMORY[0x277D84F90];
LABEL_39:

  if (qword_27D012980 != -1)
  {
    swift_once();
  }

  v38 = sub_222738F6C();
  __swift_project_value_buffer(v38, qword_27D013440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v52 = v5;
  v51[0] = v43;

  sub_22273816C();
  sub_222660468(v51, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013640, &qword_222742628);
  v39 = v50;
  v51[0] = v50;

  sub_22273816C();
  sub_222660468(v51, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C5C();

  v40 = sub_2226AF2C0(v39);

  sub_222685024(v40, 1);
}

uint64_t sub_222688270()
{

  return swift_deallocClassInstance();
}

uint64_t sub_222688318()
{
  sub_222685024(0, 1);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_222688384(uint64_t a1, char a2)
{
  *(v3 + 32) = a2;
  v4 = *v2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v4;
  return MEMORY[0x2822009F8](sub_2226883AC, 0, 0);
}

uint64_t sub_2226883AC()
{
  sub_222685024(*(v0 + 16), *(v0 + 32));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_222688414(char a1)
{
  *(v2 + 24) = a1;
  *(v2 + 16) = *v1;
  return MEMORY[0x2822009F8](sub_22268843C, 0, 0);
}

uint64_t sub_22268843C()
{
  sub_222685024(0, *(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

void sub_2226884A8()
{
  v1 = *(*v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_2226887F0();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_222688530(uint64_t result)
{
  if (result)
  {
    v1 = MEMORY[0x277D84F90];
    v9 = MEMORY[0x277D84F90];
    v2 = *(result + 16);
    if (v2)
    {
      v3 = result + 32;
      do
      {
        sub_22262BF70(v3, v8);
        sub_22262BF70(v8, v7);
        sub_22262E364(0, &qword_27D013638, 0x277CC1E60);
        if (swift_dynamicCast())
        {
          v4 = [v6 correspondingApplicationRecord];

          v5 = __swift_destroy_boxed_opaque_existential_1(v8);
          if (v4)
          {
            MEMORY[0x223DBE6A0](v5);
            if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_22273938C();
            }

            sub_2227393AC();
            v1 = v9;
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v8);
        }

        v3 += 32;
        --v2;
      }

      while (v2);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_222687BCC(v1);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2226886D0(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_22273937C();
  }

  else
  {
    v4 = 0;
  }

  v5 = a1;
  sub_222688530(v4);
}

unint64_t sub_222688818(uint64_t a1, uint64_t a2)
{
  sub_222739C5C();
  sub_22273924C();
  v4 = sub_222739C8C();

  return sub_222688ACC(a1, a2, v4);
}

unint64_t sub_222688890(uint64_t a1)
{
  v2 = sub_2227398AC();

  return sub_222688B84(a1, v2);
}

unint64_t sub_2226888D4(uint64_t a1)
{
  sub_222737C2C();
  sub_2226946C0(&qword_27D0134D0, MEMORY[0x277CEC160], MEMORY[0x277CEC168]);
  v2 = sub_22273911C();

  return sub_222688C4C(a1, v2);
}

unint64_t sub_22268896C(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x223DBEF80](*(v1 + 40), a1, 2);

  return sub_222688E2C(v2, v3);
}

unint64_t sub_2226889B4(uint64_t a1)
{
  v2 = sub_222739C4C();

  return sub_222688E9C(a1, v2);
}

unint64_t sub_2226889F8(uint64_t a1)
{
  v2 = sub_2227396BC();

  return sub_222688F08(a1, v2);
}

unint64_t sub_222688A3C(uint64_t a1)
{
  sub_22273919C();
  sub_222739C5C();
  sub_22273924C();
  v2 = sub_222739C8C();

  return sub_222688FDC(a1, v2);
}

unint64_t sub_222688ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_222739B4C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_222688B84(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_22269458C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x223DBEC00](v9, a1);
      sub_2226945E8(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_222688C4C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_222737C2C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_2226946C0(&qword_27D0134D8, MEMORY[0x277CEC160], MEMORY[0x277CEC170]);
      v16 = sub_22273915C();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_222688E2C(unsigned __int16 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 2 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_222688E9C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_222688F08(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_22262E364(0, &unk_281312CF8, off_2784B06D8);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2227396CC();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_222688FDC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_22273919C();
      v8 = v7;
      if (v6 == sub_22273919C() && v8 == v9)
      {
        break;
      }

      v11 = sub_222739B4C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

double sub_2226890E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_222688818(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22268C710();
      v10 = v12;
    }

    sub_22269457C((*(v10 + 56) + 32 * v8), a3);
    sub_22268B4A8(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_222689184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_2226888D4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22268CA68();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_222737C2C();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = sub_22273793C();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_22268B658(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_22273793C();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_222689324(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013600, &qword_222742DD0);
  v37 = v4;
  result = sub_222739A4C();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_222739C5C();
      sub_22273924C();
      result = sub_222739C8C();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2226895E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013520, &qword_222742590);
  v33 = v4;
  result = sub_222739A4C();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_22269457C(v24, v34);
      }

      else
      {
        sub_22262BF70(v24, v34);
      }

      sub_222739C5C();
      sub_22273924C();
      result = sub_222739C8C();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_22269457C(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
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
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_22268989C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013620, &qword_222742610);
  v38 = v4;
  result = sub_222739A4C();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + 40 * v23;
      if (v38)
      {
        v28 = *v27;
        v29 = *(v27 + 16);
        v41 = *(v27 + 32);
        v39 = v28;
        v40 = v29;
      }

      else
      {
        sub_22269458C(v27, &v39);
      }

      sub_222739C5C();
      sub_22273924C();
      result = sub_222739C8C();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v25;
      v16[1] = v26;
      v17 = *(v7 + 56) + 40 * v15;
      v18 = v39;
      v19 = v40;
      *(v17 + 32) = v41;
      *v17 = v18;
      *(v17 + 16) = v19;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_222689B6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = sub_22273793C();
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_222737C2C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013500, &qword_222742578);
  v47 = v4;
  result = sub_222739A4C();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_2226946C0(&qword_27D0134D0, MEMORY[0x277CEC160], MEMORY[0x277CEC168]);
      result = sub_22273911C();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_22268A014(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v39 = sub_22273731C();
  v5 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013550, &qword_2227425B8);
  v37 = v4;
  result = sub_222739A4C();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v3;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = (v5 + 16);
    v36 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 2 * v22);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v22;
      if (v37)
      {
        (*v16)(v38, v25, v39);
      }

      else
      {
        (*v35)(v38, v25, v39);
      }

      result = MEMORY[0x223DBEF80](*(v9 + 40), v23, 2);
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 2 * v18) = v23;
      result = (*v16)(*(v9 + 56) + v24 * v18, v38, v39);
      ++*(v9 + 16);
      v5 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_22268A364(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013630, &qword_222742620);
  v34 = v4;
  result = sub_222739A4C();
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

      sub_222739C5C();
      sub_22273924C();
      result = sub_222739C8C();
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

uint64_t sub_22268A60C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013538, &qword_2227425A0);
  v34 = v4;
  result = sub_222739A4C();
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
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_222739C5C();
      sub_22273924C();
      result = sub_222739C8C();
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
      *(*(v7 + 56) + v15) = v24;
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

uint64_t sub_22268A8AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0135F0, &qword_2227425E8);
  v33 = v4;
  result = sub_222739A4C();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {
      }

      sub_222739C5C();
      sub_22273924C();
      result = sub_222739C8C();
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
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_22268AB58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013628, &qword_222742618);
  result = sub_222739A4C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = sub_222739C4C();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22268ADC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013610, &qword_222742608);
  result = sub_222739A4C();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = sub_2227396BC();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}