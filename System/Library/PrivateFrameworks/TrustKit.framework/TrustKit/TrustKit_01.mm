uint64_t TKDecisioningService.TKSpamDecisioningOutput.TKSpamClassification.rawValue.getter()
{
  v1 = 0x6D617053746F6ELL;
  if (*v0 != 1)
  {
    v1 = 1852989815;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1835102323;
  }
}

uint64_t TKDecisioningService.TKSpamDecisioningOutput.description.getter()
{
  v1 = *v0;
  if (qword_28141B580 != -1)
  {
    swift_once();
  }

  v2 = qword_28141B5C8;
  v3 = unk_28141B5D0;
  v4 = qword_28141B5C8 == 0x6C74636B74 && unk_28141B5D0 == 0xE500000000000000;
  if (v4 || (sub_26F779748() & 1) != 0 || v2 == 0xD000000000000014 && 0x800000026F7800A0 == v3 || (sub_26F779748() & 1) != 0)
  {
    sub_26F7794F8();
    0xE000000000000000, v5, v6, v7, v8, v9, v10, v11;
    v12 = 0xE700000000000000;
    v13 = 0x6D617053746F6ELL;
    if (v1 != 1)
    {
      v13 = 1852989815;
      v12 = 0xE400000000000000;
    }

    if (v1)
    {
      v14 = v13;
    }

    else
    {
      v14 = 1835102323;
    }

    if (v1)
    {
      v15 = v12;
    }

    else
    {
      v15 = 0xE400000000000000;
    }

    MEMORY[0x274395240](v14, v15);
    v15, v16, v17, v18, v19, v20, v21, v22;
    MEMORY[0x274395240](0x697369636564202CLL, 0xEF3D6F666E496E6FLL);
    v23 = sub_26F779208();
    v25 = v24;
  }

  else
  {
    v34 = 0xE700000000000000;
    v35 = 0x6D617053746F6ELL;
    if (v1 != 1)
    {
      v35 = 1852989815;
      v34 = 0xE400000000000000;
    }

    if (v1)
    {
      v23 = v35;
    }

    else
    {
      v23 = 1835102323;
    }

    if (v1)
    {
      v25 = v34;
    }

    else
    {
      v25 = 0xE400000000000000;
    }
  }

  MEMORY[0x274395240](v23);
  v25, v26, v27, v28, v29, v30, v31, v32;
  return 0x6E6F697369636564;
}

uint64_t TKDecisioningService.deinit()
{

  v1 = OBJC_IVAR____TtC8TrustKit20TKDecisioningService_logger;
  v2 = sub_26F779188();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t TKDecisioningService.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC8TrustKit20TKDecisioningService_logger;
  v2 = sub_26F779188();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_26F75B060()
{
  v1 = sub_26F779188();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 16) = 0;
  type metadata accessor for ClientAnalyticsManager(0);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC8TrustKit22ClientAnalyticsManager_logger;
  if (qword_28141B5B0 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_28141B608);
  v8 = *(v2 + 16);
  v8(v5 + v6, v7, v1);
  v9 = OBJC_IVAR____TtC8TrustKit22ClientAnalyticsManager_eligibilityManager;
  type metadata accessor for EligibilityManager(0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = OBJC_IVAR____TtC8TrustKit18EligibilityManager_logger;
  if (qword_28141B5A8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v1, qword_28141B5F0);
  v8(v10 + v11, v12, v1);
  *(v5 + v9) = v10;
  *(v0 + 24) = v5;
  type metadata accessor for SignpostsManager(0);
  v13 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v13 + 112) = MEMORY[0x277D84F98];
  if (qword_28141B5A0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v1, qword_28141B5D8);
  v8(v4, v14, v1);
  sub_26F7790D8();
  v8(v13 + OBJC_IVAR____TtC8TrustKit16SignpostsManager_logger, v7, v1);
  *(v0 + 32) = v13;
  *(v0 + 40) = xmmword_26F77BBE0;
  v15 = OBJC_IVAR____TtC8TrustKit20TKDecisioningService_logger;
  if (qword_28141B5B8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v1, qword_28141B620);
  v8(v0 + v15, v16, v1);
  return v0;
}

id sub_26F75B350()
{
  v0 = objc_allocWithZone(type metadata accessor for ServerClient(0));
  result = sub_26F754794(0);
  qword_28141B318 = result;
  return result;
}

uint64_t sub_26F75B38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v4 + 16) = v9;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = swift_allocObject();
  *(v4 + 24) = v10;
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;

  return MEMORY[0x2822009F8](sub_26F75B444, 0, 0);
}

uint64_t sub_26F75B444()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_26F75B52C;
  v3 = MEMORY[0x277D839B0];
  v4 = MEMORY[0x277D839B0];
  v5 = MEMORY[0x277D839B0];

  return MEMORY[0x282200740](v0 + 56, v3, v4, 0, 0, &unk_26F77C120, v1, v5);
}

uint64_t sub_26F75B52C()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_26F75B6B8;
  }

  else
  {

    v2 = sub_26F75B648;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26F75B648()
{

  v1 = *(v0 + 56);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_26F75B6B8()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_26F75B734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF6F0, &qword_26F77C0D8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F75B7D4, 0, 0);
}

uint64_t sub_26F75B7D4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_26F779338();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;

  v7 = MEMORY[0x277D84F78];
  sub_26F7576F0(v1, &unk_26F77C188, v6, MEMORY[0x277D84F78] + 8);
  sub_26F75E244(v1);
  v5(v1, 1, 1, v4);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;

  sub_26F7576F0(v1, &unk_26F77C198, v8, v7 + 8);
  sub_26F75E244(v1);
  v9 = swift_task_alloc();
  v0[6] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF718, &unk_26F77C1A0);
  *v9 = v0;
  v9[1] = sub_26F75B9C8;

  return MEMORY[0x2822004D0](v0 + 8, 0, 0, v10);
}

uint64_t sub_26F75B9C8()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_26F75BB8C;
  }

  else
  {
    v2 = sub_26F75BADC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_26F75BADC()
{
  if (*(v0 + 64))
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF628, &unk_26F77B8D8);
    sub_26F779388();

    v1 = *(v0 + 8);

    v1();
  }
}

uint64_t sub_26F75BB8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF628, &unk_26F77B8D8);
  sub_26F779388();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26F75BC30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF6F0, &qword_26F77C0D8);
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F75BCD0, 0, 0);
}

uint64_t sub_26F75BCD0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_26F779338();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;

  v7 = MEMORY[0x277D839B0];
  sub_26F7576F0(v1, &unk_26F77C138, v6, MEMORY[0x277D839B0]);
  sub_26F75E244(v1);
  v5(v1, 1, 1, v4);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;

  sub_26F7576F0(v1, &unk_26F77C148, v8, v7);
  sub_26F75E244(v1);
  v9 = swift_task_alloc();
  v0[6] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF710, &qword_26F77C150);
  *v9 = v0;
  v9[1] = sub_26F75BEBC;

  return MEMORY[0x2822004D0](v0 + 8, 0, 0, v10);
}

uint64_t sub_26F75BEBC()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_26F75C090;
  }

  else
  {
    v2 = sub_26F75BFD0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_26F75BFD0()
{
  v1 = *(v0 + 64);
  if (v1 == 2)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF628, &unk_26F77B8D8);
    sub_26F779388();

    v2 = *(v0 + 8);

    v2(v1 & 1);
  }
}

uint64_t sub_26F75C090()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF628, &unk_26F77B8D8);
  sub_26F779388();

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_26F75C134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF6F0, &qword_26F77C0D8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F75C1D4, 0, 0);
}

uint64_t sub_26F75C1D4()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = sub_26F779338();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;

  sub_26F7576F0(v1, &unk_26F77C0E8, v6, &type metadata for TKDecisioningService.TKSpamDecisioningOutput);
  sub_26F75E244(v1);
  v5(v1, 1, 1, v4);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v2;

  sub_26F7576F0(v1, &unk_26F77C0F8, v7, &type metadata for TKDecisioningService.TKSpamDecisioningOutput);
  sub_26F75E244(v1);
  v8 = swift_task_alloc();
  v0[9] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF6F8, &unk_26F77C100);
  *v8 = v0;
  v8[1] = sub_26F75C3C0;

  return MEMORY[0x2822004D0](v0 + 2, 0, 0, v9);
}

uint64_t sub_26F75C3C0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_26F75C58C;
  }

  else
  {
    v2 = sub_26F75C4D4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_26F75C4D4()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[4];
    *v2 = v0[2];
    *(v2 + 8) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF628, &unk_26F77B8D8);
    sub_26F779388();

    v3 = v0[1];

    v3();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26F75C58C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF628, &unk_26F77B8D8);
  sub_26F779388();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26F75C62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_26F75C64C, 0, 0);
}

uint64_t sub_26F75C64C()
{
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v0[7] = *(v1 + 24);

  v6 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_26F75C768;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_26F75C768()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_26F75F014;
  }

  else
  {
    v2 = sub_26F75F02C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26F75C87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_26F75C89C, 0, 0);
}

uint64_t sub_26F75C89C()
{
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v0[7] = *(v1 + 24);

  v6 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_26F75C9B8;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_26F75C9B8()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_26F75CB30;
  }

  else
  {
    v2 = sub_26F75CACC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26F75CACC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26F75CB30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26F75CB94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v4 = sub_26F7795B8();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = sub_26F7795A8();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F75CCBC, 0, 0);
}

uint64_t sub_26F75CCBC()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  sub_26F779588();
  sub_26F779598();
  v4 = *(v3 + 8);
  *(v0 + 112) = v4;
  *(v0 + 120) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  sub_26F7797C8();
  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  v6 = sub_26F75E3D0();
  *v5 = v0;
  v5[1] = sub_26F75CDEC;
  v7 = *(v0 + 104);
  v8 = *(v0 + 72);
  v9 = *(v0 + 56);

  return MEMORY[0x282200488](v7, v0 + 16, v8, v9, v6);
}

uint64_t sub_26F75CDEC()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = v2[14];
  if (v0)
  {
    v4 = v2[13];
    v5 = v2[10];
    (*(v2[8] + 8))(v2[9], v2[7]);
    v3(v4, v5);
    v6 = sub_26F75F020;
  }

  else
  {
    v7 = v2[13];
    v8 = v2[10];
    (*(v2[8] + 8))(v2[9], v2[7]);
    v3(v7, v8);
    v6 = sub_26F75F024;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26F75CF68(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_26F7795B8();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = sub_26F7795A8();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F75D090, 0, 0);
}

uint64_t sub_26F75D090()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  sub_26F779588();
  sub_26F779598();
  v4 = *(v3 + 8);
  *(v0 + 112) = v4;
  *(v0 + 120) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  sub_26F7797C8();
  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  v6 = sub_26F75E3D0();
  *v5 = v0;
  v5[1] = sub_26F75D1C0;
  v7 = *(v0 + 104);
  v8 = *(v0 + 72);
  v9 = *(v0 + 56);

  return MEMORY[0x282200488](v7, v0 + 16, v8, v9, v6);
}

uint64_t sub_26F75D1C0()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = v2[14];
  if (v0)
  {
    v4 = v2[13];
    v5 = v2[10];
    (*(v2[8] + 8))(v2[9], v2[7]);
    v3(v4, v5);
    v6 = sub_26F75D3E4;
  }

  else
  {
    v7 = v2[13];
    v8 = v2[10];
    (*(v2[8] + 8))(v2[9], v2[7]);
    v3(v7, v8);
    v6 = sub_26F75D33C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26F75D33C()
{
  sub_26F75E428();
  swift_allocError();
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_26F75D3E4()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_26F75D468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v4 = sub_26F7795B8();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = sub_26F7795A8();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F75D590, 0, 0);
}

uint64_t sub_26F75D590()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  sub_26F779588();
  sub_26F779598();
  v4 = *(v3 + 8);
  *(v0 + 112) = v4;
  *(v0 + 120) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  sub_26F7797C8();
  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  v6 = sub_26F75E3D0();
  *v5 = v0;
  v5[1] = sub_26F75D6C0;
  v7 = *(v0 + 104);
  v8 = *(v0 + 72);
  v9 = *(v0 + 56);

  return MEMORY[0x282200488](v7, v0 + 16, v8, v9, v6);
}

uint64_t sub_26F75D6C0()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = v2[14];
  if (v0)
  {
    v4 = v2[13];
    v5 = v2[10];
    (*(v2[8] + 8))(v2[9], v2[7]);
    v3(v4, v5);
    v6 = sub_26F75D8E0;
  }

  else
  {
    v7 = v2[13];
    v8 = v2[10];
    (*(v2[8] + 8))(v2[9], v2[7]);
    v3(v7, v8);
    v6 = sub_26F75D83C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26F75D83C()
{
  sub_26F75E428();
  swift_allocError();
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26F75D8E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26F75D960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_26F75DA00;

  return sub_26F75CF68(a2, a3);
}

uint64_t sub_26F75DA00(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1 & 1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_26F75DB14(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26F7486D8;

  return sub_26F75D960(a1, v5, v4);
}

uint64_t sub_26F75DBCC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26F75DC30(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_26F75DC48(uint64_t a1)
{
  v4 = *(v1 + 56);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26F7486D8;

  return sub_26F759608(a1, v1 + 16, v4);
}

unint64_t sub_26F75DCF8()
{
  result = qword_2806EF6D8;
  if (!qword_2806EF6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF6D8);
  }

  return result;
}

unint64_t sub_26F75DD50()
{
  result = qword_2806EF6E0;
  if (!qword_2806EF6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF6E0);
  }

  return result;
}

unint64_t sub_26F75DDA8()
{
  result = qword_2806EF6E8;
  if (!qword_2806EF6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF6E8);
  }

  return result;
}

uint64_t type metadata accessor for TKDecisioningService(uint64_t a1)
{
  result = qword_28141B2F0;
  if (!qword_28141B2F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F75DE50(uint64_t a1)
{
  result = sub_26F779188();
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

__n128 __swift_memcpy90_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_26F75DF40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 90))
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

uint64_t sub_26F75DF88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 90) = 1;
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

    *(result + 90) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26F75E030(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26F748118;

  return sub_26F75D468(a1, v5, v4);
}

uint64_t sub_26F75E0DC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26F7486D8;

  return sub_26F75C134(a1, a2, v7, v6);
}

uint64_t sub_26F75E190(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26F7486D8;

  return sub_26F75C62C(a1, v4, v5, v6);
}

uint64_t sub_26F75E244(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF6F0, &qword_26F77C0D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26F75E2AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26F7486D8;

  return sub_26F75C87C(a1, v4, v5, v6);
}

uint64_t sub_26F75E360(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF6F0, &qword_26F77C0D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26F75E3D0()
{
  result = qword_28141B148;
  if (!qword_28141B148)
  {
    sub_26F7795B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28141B148);
  }

  return result;
}

unint64_t sub_26F75E428()
{
  result = qword_2806EF700;
  if (!qword_2806EF700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF700);
  }

  return result;
}

void sub_26F75E47C(uint64_t result, _TtC8TrustKit22TrustKitUIServerClient *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a3 != 0xFF)
  {
    sub_26F75E490(result, a2, a3, a4, a5, a6, a7, a8);
  }
}

void sub_26F75E490(uint64_t a1, _TtC8TrustKit22TrustKitUIServerClient *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a3 <= 3u)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
  }
}

uint64_t sub_26F75E4D8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_26F75E4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_26F75F028;

  return sub_26F75BC30(a2, a3, a4);
}

uint64_t sub_26F75E5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_26F75E5C0, 0, 0);
}

uint64_t sub_26F75E5C0()
{
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v0[7] = *(v1 + 24);

  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_26F75E6DC;

  return v5(v0 + 10);
}

uint64_t sub_26F75E6DC()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_26F75F014;
  }

  else
  {
    v2 = sub_26F75F01C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26F75E7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_26F75E810, 0, 0);
}

uint64_t sub_26F75E810()
{
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v0[7] = *(v1 + 24);

  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_26F75E92C;

  return v5(v0 + 10);
}

uint64_t sub_26F75E92C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_26F75CB30;
  }

  else
  {
    v2 = sub_26F75EA40;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26F75EA40()
{
  v1 = *(v0 + 40);

  *v1 = *(v0 + 80);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26F75EAB0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26F7486D8;

  return sub_26F75E4F0(a1, a2, v7, v6);
}

uint64_t sub_26F75EB78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26F7486D8;

  return sub_26F75E5A0(a1, v4, v5, v6);
}

uint64_t sub_26F75EC40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26F7486D8;

  return sub_26F75E7F0(a1, v4, v5, v6);
}

uint64_t sub_26F75ED08(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26F7486D8;

  return sub_26F75CB94(a1, v5, v4);
}

uint64_t sub_26F75EDB4(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26F7486D8;

  return sub_26F75B734(a1, a2, v7, v6);
}

uint64_t sub_26F75EE68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26F7486D8;

  return sub_26F75C62C(a1, v4, v5, v6);
}

uint64_t objectdestroy_50Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26F75EF5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26F7486D8;

  return sub_26F75C62C(a1, v4, v5, v6);
}

uint64_t sub_26F75F030()
{
  v1 = OBJC_IVAR____TtC8TrustKit22TrustKitUIServerClient_logger;
  v2 = sub_26F779188();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TrustKitUIServerClient(uint64_t a1)
{
  result = qword_2806EF730;
  if (!qword_2806EF730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F75F140(uint64_t a1)
{
  result = sub_26F779188();
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

void sub_26F75F1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_26F7793B8();
  *&v45[0] = 0;
  *(&v45[0] + 1) = 0xE000000000000000;
  sub_26F7794F8();
  MEMORY[0x274395240](0xD00000000000002FLL, 0x800000026F7802F0);
  MEMORY[0x274395240](a1, a2);
  MEMORY[0x274395240](0x746974627573202CLL, 0xEB000000003D656CLL);
  MEMORY[0x274395240](a3, a4);
  MEMORY[0x274395240](32032, 0xE200000000000000);
  sub_26F756E10(v10, 0, 0xE000000000000000, 0xD000000000000059, 0x800000026F7803A0, 75);
  0xE000000000000000, v11, v12, v13, v14, v15, v16, v17;
  v18 = *(v4 + 24);
  if (!v18 || (v46 = &unk_287FCC678, (v19 = swift_dynamicCastObjCProtocolConditional()) == 0))
  {
    v35 = sub_26F7793C8();
    sub_26F756E10(v35, 0xD00000000000002CLL, 0x800000026F780400, 0xD000000000000059, 0x800000026F7803A0, 78);
    return;
  }

  v20 = v19;
  v41 = v18;
  v21 = sub_26F779238();
  v22 = sub_26F779238();
  v23 = [objc_opt_self() attributeWithDomain:v21 name:v22];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF7A0, qword_26F77C210);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_26F77C1B0;
  *(v24 + 32) = v23;
  sub_26F75FCC4();
  v25 = v23;
  v26 = sub_26F7792C8();
  v24, v27, v28, v29, v30, v31, v32, v33;
  v34 = [v20 remoteTargetWithLaunchingAssertionAttributes_];

  if (v34)
  {
    sub_26F779468();
    swift_unknownObjectRelease();
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
  }

  v45[0] = v43;
  v45[1] = v44;
  if (*(&v44 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF7B0, &qword_26F77C228);
    if (swift_dynamicCast())
    {
      v36 = sub_26F779238();
      v37 = sub_26F779238();
      [v42 bannerWith:v36 and:v37];

      v38 = *(v5 + 24);
      if (v38)
      {
        v39 = v38;
        [v39 invalidate];
      }

      swift_unknownObjectRelease();
      goto LABEL_14;
    }
  }

  else
  {
    sub_26F74B148(v45);
  }

  v40 = sub_26F7793C8();
  sub_26F756E10(v40, 0xD00000000000002FLL, 0x800000026F780450, 0xD000000000000059, 0x800000026F7803A0, 84);

LABEL_14:
}

void sub_26F75F634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v69 = sub_26F7793B8();
  *&v73[0] = 0;
  *(&v73[0] + 1) = 0xE000000000000000;
  sub_26F7794F8();
  MEMORY[0x274395240]();
  MEMORY[0x274395240](a1, a2);
  MEMORY[0x274395240](0x746974627573202CLL, 0xEB000000003D656CLL);
  MEMORY[0x274395240](a3, a4);
  MEMORY[0x274395240](0x547261646172202CLL, 0xED00003D656C7469);
  MEMORY[0x274395240](a5, a6);
  MEMORY[0x274395240](0xD000000000000013, 0x800000026F780320);
  MEMORY[0x274395240](a7, a8);
  MEMORY[0x274395240](0xD000000000000013, 0x800000026F780340);
  v21 = [a9 description];
  v22 = sub_26F779248();
  v24 = v23;

  MEMORY[0x274395240](v22, v24);
  v24, v25, v26, v27, v28, v29, v30, v31;
  MEMORY[0x274395240](0xD000000000000015, 0x800000026F780360);
  MEMORY[0x274395240](a10, a11);
  MEMORY[0x274395240](0xD000000000000018, 0x800000026F780380);
  MEMORY[0x274395240](a12, a13);
  MEMORY[0x274395240](32032, 0xE200000000000000);
  sub_26F756E10(v69, 0, 0xE000000000000000, 0xD000000000000059, 0x800000026F7803A0, 93);
  0xE000000000000000, v32, v33, v34, v35, v36, v37, v38;
  v39 = *(v68 + 24);
  if (!v39 || (v74 = &unk_287FCC678, (v40 = swift_dynamicCastObjCProtocolConditional()) == 0))
  {
    v57 = sub_26F7793C8();
    sub_26F756E10(v57, 0xD00000000000002CLL, 0x800000026F780400, 0xD000000000000059, 0x800000026F7803A0, 96);
    return;
  }

  v41 = v40;
  v42 = v39;
  v43 = sub_26F779238();
  v44 = sub_26F779238();
  v45 = [objc_opt_self() attributeWithDomain:v43 name:v44];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF7A0, qword_26F77C210);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_26F77C1B0;
  *(v46 + 32) = v45;
  sub_26F75FCC4();
  v47 = v45;
  v48 = sub_26F7792C8();
  v46, v49, v50, v51, v52, v53, v54, v55;
  v56 = [v41 remoteTargetWithLaunchingAssertionAttributes_];

  if (v56)
  {
    sub_26F779468();
    swift_unknownObjectRelease();
  }

  else
  {
    v71 = 0u;
    v72 = 0u;
  }

  v73[0] = v71;
  v73[1] = v72;
  if (*(&v72 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF7B0, &qword_26F77C228);
    if (swift_dynamicCast())
    {
      v58 = v42;
      v59 = sub_26F779238();
      v60 = sub_26F779238();
      v61 = sub_26F779238();
      v62 = sub_26F779238();
      v63 = sub_26F779238();
      v64 = sub_26F779238();
      [v70 bannerWith:v59 and:v60 radarTitle:v61 radarDescription:v62 radarComponentID:a9 radarComponentName:v63 radarComponentVersion:v64];

      v65 = *(v68 + 24);
      if (v65)
      {
        v66 = v65;
        [v66 invalidate];
      }

      swift_unknownObjectRelease();
      goto LABEL_14;
    }
  }

  else
  {
    sub_26F74B148(v73);
  }

  v67 = sub_26F7793C8();
  sub_26F756E10(v67, 0xD00000000000002FLL, 0x800000026F780450, 0xD000000000000059, 0x800000026F7803A0, 102);

LABEL_14:
}

unint64_t sub_26F75FCC4()
{
  result = qword_2806EF7A8;
  if (!qword_2806EF7A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2806EF7A8);
  }

  return result;
}

void sub_26F75FD10(uint64_t a1, uint64_t a2, _TtC8TrustKit22TrustKitUIServerClient *a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *v3;
    sub_26F7625DC(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    a3, v9, v10, v11, v12, v13, v14, v15;
    *v3 = v34;
  }

  else
  {
    v16 = sub_26F768DE0(a2, a3);
    v18 = v17;
    a3, v17, v19, v20, v21, v22, v23, v24;
    if (v18)
    {
      v25 = swift_isUniquelyReferenced_nonNull_native();
      v33 = *v4;
      v35 = *v4;
      if (!v25)
      {
        sub_26F762B0C();
        v33 = v35;
      }

      *(*(v33 + 48) + 16 * v16 + 8), v26, v27, v28, v29, v30, v31, v32;

      sub_26F762090(v16, v33);
      *v4 = v33;
    }
  }
}

void sub_26F75FE08(uint64_t a1, uint64_t a2, _TtC8TrustKit22TrustKitUIServerClient *a3)
{
  if (*(a1 + 24))
  {
    sub_26F754784(a1, v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    sub_26F762754(v22, a2, a3, isUniquelyReferenced_nonNull_native);
    a3, v7, v8, v9, v10, v11, v12, v13;
    *v3 = v21;
  }

  else
  {
    sub_26F763768(a1, &qword_2806EF4B0, &qword_26F77C2E0);
    sub_26F7615FC(a2, a3, v22);
    a3, v14, v15, v16, v17, v18, v19, v20;
    sub_26F763768(v22, &qword_2806EF4B0, &qword_26F77C2E0);
  }
}

void sub_26F75FED8(uint64_t a1, uint64_t a2, _TtC8TrustKit22TrustKitUIServerClient *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF7B8, &qword_26F77C2B8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29 - v8;
  v10 = type metadata accessor for SignpostsManager.SignpostState(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_26F763768(a1, &qword_2806EF7B8, &qword_26F77C2B8);
    sub_26F7616A0(a2, a3, v9);
    a3, v14, v15, v16, v17, v18, v19, v20;
    sub_26F763768(v9, &qword_2806EF7B8, &qword_26F77C2B8);
  }

  else
  {
    sub_26F761598(a1, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *v3;
    sub_26F7628A4(v12, a2, a3, isUniquelyReferenced_nonNull_native);
    a3, v22, v23, v24, v25, v26, v27, v28;
    *v3 = v30;
  }
}

void sub_26F760098(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(v132) = a6;
  v131 = a5;
  v8 = a3;
  v128 = sub_26F779118();
  v127 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v126 = &v122[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_26F7790C8();
  v133 = *(v11 - 8);
  v134 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v129 = &v122[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v12);
  v130 = &v122[-v15];
  MEMORY[0x28223BE20](v14);
  v136 = &v122[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF7B8, &qword_26F77C2B8);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v122[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v22 = &v122[-v21];
  v23 = type metadata accessor for SignpostsManager.SignpostState(0);
  v135 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v137 = &v122[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((sub_26F7790E8() & 1) == 0)
  {
    v48 = sub_26F7793D8();
    sub_26F756E10(v48, 0xD000000000000036, 0x800000026F7804D0, 0xD000000000000055, 0x800000026F780510, 21);
    return;
  }

  v125 = a1;
  v140 = sub_26F779508();
  v141 = v25;
  MEMORY[0x274395240](45, 0xE100000000000000);
  MEMORY[0x274395240](a4, v131);
  v26 = v140;
  v27 = v141;
  swift_beginAccess();
  v28 = *(v6 + 112);
  v29 = *v28->endpoint;
  v30 = v8;
  v131 = v26;
  if (v29)
  {

    v31 = sub_26F768DE0(v26, v27);
    if (v32)
    {
      v39 = v135;
      sub_26F7614D8(*v28[1].endpoint + *(v135 + 72) * v31, v22);
      v28, v40, v41, v42, v43, v44, v45, v46;
      v47 = *(v39 + 56);
      v47(v22, 0, 1, v23);
      sub_26F761598(v22, v137);
      goto LABEL_10;
    }

    v28, v32, v33, v34, v35, v36, v37, v38;
  }

  v123 = v8;
  v49 = v137;
  v124 = v27;
  v50 = v135;
  v47 = *(v135 + 56);
  v47(v22, 1, 1, v23);
  sub_26F7790F8();
  sub_26F7790A8();
  *&v49[*(v23 + 20)] = 0;
  if ((*(v50 + 48))(v22, 1, v23) != 1)
  {
    sub_26F763768(v22, &qword_2806EF7B8, &qword_26F77C2B8);
  }

  v27 = v124;
  v30 = v123;
LABEL_10:
  sub_26F7614D8(v137, v20);
  v47(v20, 0, 1, v23);
  swift_beginAccess();

  sub_26F75FED8(v20, v131, v27);
  swift_endAccess();
  v51 = v136;
  if ((v132 & 1) == 0)
  {
LABEL_16:
    v64 = v133;
    v63 = v134;
    v132 = *(v133 + 16);
    v132(v51, v137, v134);
    v65 = sub_26F7790F8();
    v66 = sub_26F7793F8();
    if ((sub_26F779418() & 1) == 0)
    {
LABEL_20:

      v67 = v136;
LABEL_27:
      v132(v130, v67, v63);
      sub_26F779148();
      swift_allocObject();
      v89 = sub_26F779138();
      (*(v64 + 8))(v67, v63);
      v90 = sub_26F760B48(&v140);
      v91 = sub_26F760A74(v139, v131, v27);
      v93 = v92;
      if (!(*(v135 + 48))(v92, 1, v23))
      {
        *(v93 + *(v23 + 20)) = v89;
      }

      (v91)(v139, 0);
      (v90)(&v140, 0);

      goto LABEL_30;
    }

    LODWORD(v129) = v66;
    if ((v30 & 1) == 0)
    {
      if (!v125)
      {
        __break(1u);
        goto LABEL_20;
      }

LABEL_26:
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v140 = v76;
      *v75 = 136315138;
      v77 = sub_26F779508();
      v79 = v78;
      v80 = sub_26F760F20(v77, v78, &v140);
      v79, v81, v82, v83, v84, v85, v86, v87;
      *(v75 + 4) = v80;
      v67 = v136;
      v88 = sub_26F7790B8();
      _os_signpost_emit_with_name_impl(&dword_26F744000, v65, v129, v88, v125, "%s", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v76);
      MEMORY[0x274395F50](v76, -1, -1);
      MEMORY[0x274395F50](v75, -1, -1);

      v64 = v133;
      v63 = v134;
      goto LABEL_27;
    }

    if (v125 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v125 & 0xFFFFF800) == 0xD800)
      {
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      if (v125 >> 16 <= 0x10)
      {
        v125 = &v138;
        goto LABEL_26;
      }
    }

    __break(1u);
    goto LABEL_43;
  }

  if (!*&v137[*(v23 + 20)])
  {
LABEL_30:
    sub_26F76153C(v137);
    v27, v94, v95, v96, v97, v98, v99, v100;
    return;
  }

  v52 = sub_26F7790F8();
  v53 = v129;
  sub_26F779128();
  v54 = sub_26F7793E8();
  if (sub_26F779418())
  {
    if (v30)
    {
      if (v125 >> 32)
      {
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      if ((v125 & 0xFFFFF800) == 0xD800)
      {
LABEL_46:
        __break(1u);
        return;
      }

      if (v125 >> 16 > 0x10)
      {
        goto LABEL_44;
      }

      v27, v55, v56, v57, v58, v59, v60, v61;
      v62 = &v140;
    }

    else
    {
      v27, v55, v56, v57, v58, v59, v60, v61;
      v62 = v125;
      if (!v125)
      {
        __break(1u);
        goto LABEL_16;
      }
    }

    v101 = v128;
    v102 = v127;
    v103 = v126;
    v125 = v62;

    sub_26F779158();

    if ((*(v102 + 88))(v103, v101) == *MEMORY[0x277D85B00])
    {
      v104 = 0;
      v105 = 0;
      v106 = "[Error] Interval already ended";
    }

    else
    {
      (*(v102 + 8))(v103, v101);
      v106 = "%s";
      v105 = 2;
      v104 = 1;
    }

    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v140 = v108;
    *v107 = v105;
    *(v107 + 1) = v104;
    *(v107 + 2) = 2080;
    v109 = sub_26F779508();
    v111 = v110;
    v112 = sub_26F760F20(v109, v110, &v140);
    v111, v113, v114, v115, v116, v117, v118, v119;
    *(v107 + 4) = v112;
    v120 = v129;
    v121 = sub_26F7790B8();
    _os_signpost_emit_with_name_impl(&dword_26F744000, v52, v54, v121, v125, v106, v107, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v108);
    MEMORY[0x274395F50](v108, -1, -1);
    MEMORY[0x274395F50](v107, -1, -1);

    (*(v133 + 8))(v120, v134);
  }

  else
  {

    v27, v68, v69, v70, v71, v72, v73, v74;
    (*(v133 + 8))(v53, v134);
  }

  sub_26F76153C(v137);
}

uint64_t (*sub_26F760A74(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_26F76304C(v6, a2, a3);
  return sub_26F760AFC;
}

void sub_26F760AFC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_26F760B9C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 112), a2, a3, a4, a5, a6, a7, a8;
  v9 = OBJC_IVAR____TtC8TrustKit16SignpostsManager_signposter;
  v10 = sub_26F779108();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);
  v11 = OBJC_IVAR____TtC8TrustKit16SignpostsManager_logger;
  v12 = sub_26F779188();
  (*(*(v12 - 8) + 8))(v8 + v11, v12);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v8);
}

uint64_t sub_26F760C84(uint64_t a1)
{
  result = sub_26F779108();
  if (v2 <= 0x3F)
  {
    result = sub_26F779188();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_26F760DB0(uint64_t a1)
{
  sub_26F7790C8();
  if (v1 <= 0x3F)
  {
    sub_26F760E34(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26F760E34(uint64_t a1)
{
  if (!qword_28141B5C0)
  {
    sub_26F779148();
    v1 = sub_26F779428();
    if (!v2)
    {
      atomic_store(v1, &qword_28141B5C0);
    }
  }
}

uint64_t sub_26F760E8C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void sub_26F760EC4(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = v7;
  v9 = sub_26F760F20(v6, v7, a3);
  v8, v10, v11, v12, v13, v14, v15, v16;
  v17 = *a1;
  *v17 = v9;
  *a1 = v17 + 1;
}

unint64_t sub_26F760F20(uint64_t a1, _TtC8TrustKit22TrustKitUIServerClient *a2, uint64_t *a3)
{

  v6 = sub_26F760FEC(v18, 0, 0, 1, a1, a2);
  v14 = v18[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v18[0] = a1;
    v18[1] = a2;
    v16 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v15 = v6;
  a2, v7, v8, v9, v10, v11, v12, v13;
  ObjectType = swift_getObjectType();
  v18[0] = v15;
  v16 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_26F74B0EC(v18, v16);
    *a3 = v16 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v18);
  return v14;
}

unint64_t sub_26F760FEC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_26F7610F8(a5, a6);
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
    result = sub_26F779528();
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

void *sub_26F7610F8(uint64_t a1, unint64_t a2)
{
  v3 = sub_26F761144(a1, a2);
  sub_26F761274(&stru_287FC5E48);
  return v3;
}

void *sub_26F761144(uint64_t a1, unint64_t a2)
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

  v6 = sub_26F761360(v5, 0);
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

  result = sub_26F779528();
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
        v10 = sub_26F7792B8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26F761360(v10, 0);
        result = sub_26F7794E8();
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

void sub_26F761274(_TtC8TrustKit22TrustKitUIServerClient *a1)
{
  v2 = *a1->endpoint;
  v3 = *v1;
  v4 = *(*v1)->endpoint;
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *v3->connection >> 1)
  {
    if (*a1->endpoint)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v26 = v4 + v2;
  }

  else
  {
    v26 = v4;
  }

  v3 = sub_26F7613D4(isUniquelyReferenced_nonNull_native, v26, 1, v3, v11, v12, v13, v14);
  if (!*a1->endpoint)
  {
LABEL_13:
    a1, v8, v9, v10, v11, v12, v13, v14;
    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v15 = *v3->endpoint;
  if ((*v3->connection >> 1) - v15 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3->$__lazy_storage_$_interface[v15], a1->$__lazy_storage_$_interface, v2);
  a1, v16, v17, v18, v19, v20, v21, v22;
  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v23 = *v3->endpoint;
  v24 = __OFADD__(v23, v2);
  v25 = v23 + v2;
  if (!v24)
  {
    *v3->endpoint = v25;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_26F761360(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF7C8, &qword_26F77C2C8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

_TtC8TrustKit22TrustKitUIServerClient *sub_26F7613D4(_TtC8TrustKit22TrustKitUIServerClient *result, int64_t a2, void *a3, _TtC8TrustKit22TrustKitUIServerClient *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->connection;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
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

  v12 = *a4->endpoint;
  if (v11 <= v12)
  {
    v13 = *a4->endpoint;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF7C8, &qword_26F77C2C8);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    *v14->endpoint = v12;
    *v14->connection = 2 * v15 - 64;
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v16 = v14->$__lazy_storage_$_interface;
  v17 = a4->$__lazy_storage_$_interface;
  if (v9)
  {
    if (v14 != a4 || v16 >= &v17[v12])
    {
      memmove(v16, v17, v12);
    }

    *a4->endpoint = 0;
  }

  else
  {
    memcpy(v16, v17, v12);
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

_BYTE **sub_26F7614C8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_26F7614D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignpostsManager.SignpostState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F76153C(uint64_t a1)
{
  v2 = type metadata accessor for SignpostsManager.SignpostState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26F761598(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignpostsManager.SignpostState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_26F7615FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_26F768DE0(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    v19 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26F762C78();
      v17 = v19;
    }

    *(*(v17 + 48) + 16 * v8 + 8), v10, v11, v12, v13, v14, v15, v16;
    sub_26F754784((*(v17 + 56) + 32 * v8), a3);
    sub_26F762240(v8, v17);
    *v4 = v17;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_26F7616A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_26F768DE0(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    v27 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26F762E1C();
      v17 = v27;
    }

    *(*(v17 + 48) + 16 * v8 + 8), v10, v11, v12, v13, v14, v15, v16;
    v18 = *(v17 + 56);
    v19 = type metadata accessor for SignpostsManager.SignpostState(0);
    v26 = *(v19 - 8);
    sub_26F761598(v18 + *(v26 + 72) * v8, a3);
    sub_26F7623F0(v8, v17);
    *v4 = v17;
    v20 = *(v26 + 56);
    v21 = a3;
    v22 = 0;
    v23 = v19;
  }

  else
  {
    v24 = type metadata accessor for SignpostsManager.SignpostState(0);
    v20 = *(*(v24 - 8) + 56);
    v23 = v24;
    v21 = a3;
    v22 = 1;
  }

  return v20(v21, v22, 1, v23);
}

uint64_t sub_26F7617F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF7D0, &qword_26F77C2D0);
  v35 = v4;
  result = sub_26F7795F8();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_26F779848();
      sub_26F779298();
      result = sub_26F779888();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_26F761A9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF7D8, &qword_26F77C2D8);
  v33 = v4;
  result = sub_26F7795F8();
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
        sub_26F754784(v24, v34);
      }

      else
      {
        sub_26F74B0EC(v24, v34);
      }

      sub_26F779848();
      sub_26F779298();
      result = sub_26F779888();
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
      result = sub_26F754784(v34, (*(v7 + 56) + 32 * v15));
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

uint64_t sub_26F761D54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for SignpostsManager.SignpostState(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF7C0, &qword_26F77C2C0);
  v40 = v4;
  result = sub_26F7795F8();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
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
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_26F761598(v28, v41);
      }

      else
      {
        sub_26F7614D8(v28, v41);
      }

      sub_26F779848();
      sub_26F779298();
      result = sub_26F779888();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_26F761598(v41, *(v9 + 56) + v27 * v17);
      ++*(v9 + 16);
      v7 = v38;
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

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

void sub_26F762090(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26F779478() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 16 * v6 + 8);
      sub_26F779848();

      sub_26F779298();
      v10 = sub_26F779888();
      v9, v11, v12, v13, v14, v15, v16, v17;
      v18 = v10 & v7;
      if (v3 >= v8)
      {
        if (v18 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v18 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v18)
      {
LABEL_10:
        v19 = *(a2 + 48);
        v20 = (v19 + 16 * v3);
        v21 = (v19 + 16 * v6);
        if (v3 != v6 || v20 >= v21 + 1)
        {
          *v20 = *v21;
        }

        v22 = *(a2 + 56);
        v23 = (v22 + 8 * v3);
        v24 = (v22 + 8 * v6);
        if (v3 != v6 || v23 >= v24 + 1)
        {
          *v23 = *v24;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }
}

void sub_26F762240(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26F779478() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 16 * v6 + 8);
      sub_26F779848();

      sub_26F779298();
      v11 = sub_26F779888();
      v10, v12, v13, v14, v15, v16, v17, v18;
      v19 = v11 & v7;
      if (v3 >= v8)
      {
        if (v19 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v19 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v19)
      {
LABEL_10:
        v20 = *(a2 + 48);
        v21 = (v20 + 16 * v3);
        v22 = (v20 + 16 * v6);
        if (v3 != v6 || v21 >= v22 + 1)
        {
          *v21 = *v22;
        }

        v23 = *(a2 + 56);
        v24 = (v23 + 32 * v3);
        v25 = (v23 + 32 * v6);
        if (v3 != v6 || v24 >= v25 + 2)
        {
          v9 = v25[1];
          *v24 = *v25;
          v24[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }
}

void sub_26F7623F0(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26F779478() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + 16 * v6 + 8);
      sub_26F779848();

      sub_26F779298();
      v10 = sub_26F779888();
      v9, v11, v12, v13, v14, v15, v16, v17;
      v18 = v10 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v18 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v19 = *(a2 + 48);
      v20 = (v19 + 16 * v3);
      v21 = (v19 + 16 * v6);
      if (v3 != v6 || v20 >= v21 + 1)
      {
        *v20 = *v21;
      }

      v22 = *(a2 + 56);
      v23 = *(*(type metadata accessor for SignpostsManager.SignpostState(0) - 8) + 72);
      v24 = v23 * v3;
      v25 = v22 + v23 * v3;
      v26 = v23 * v6;
      v27 = v22 + v23 * v6 + v23;
      if (v24 < v26 || v25 >= v27)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v24 == v26)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v18 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v18)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v29 = *(a2 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v31;
    ++*(a2 + 36);
  }
}

uint64_t sub_26F7625DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26F768DE0(a2, a3);
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
      sub_26F7617F8(v16, a4 & 1);
      v11 = sub_26F768DE0(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_26F779798();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_26F762B0C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

_OWORD *sub_26F762754(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26F768DE0(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_26F762C78();
      v11 = v19;
      goto LABEL_8;
    }

    sub_26F761A9C(v16, a4 & 1);
    v11 = sub_26F768DE0(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_26F779798();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_26F754784(a1, v22);
  }

  else
  {
    sub_26F762A08(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_26F7628A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_26F768DE0(a2, a3);
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
      sub_26F762E1C();
      goto LABEL_7;
    }

    sub_26F761D54(v15, a4 & 1);
    v22 = sub_26F768DE0(a2, a3);
    if ((v16 & 1) == (v23 & 1))
    {
      v12 = v22;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_26F779798();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for SignpostsManager.SignpostState(0) - 8) + 72) * v12;

    return sub_26F763704(a1, v20);
  }

LABEL_13:
  sub_26F762A74(v12, a2, a3, a1, v18);
}

_OWORD *sub_26F762A08(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_26F754784(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_26F762A74(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for SignpostsManager.SignpostState(0);
  result = sub_26F761598(a4, v9 + *(*(v10 - 8) + 72) * a1);
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

id sub_26F762B0C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF7D0, &qword_26F77C2D0);
  v2 = *v0;
  v3 = sub_26F7795E8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_26F762C78()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF7D8, &qword_26F77C2D8);
  v2 = *v0;
  v3 = sub_26F7795E8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_26F74B0EC(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_26F754784(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_26F762E1C()
{
  v1 = v0;
  v2 = type metadata accessor for SignpostsManager.SignpostState(0);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF7C0, &qword_26F77C2C0);
  v4 = *v0;
  v5 = sub_26F7795E8();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_26F7614D8(*(v4 + 56) + v26, v30);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_26F761598(v25, *(v27 + 56) + v26);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void (*sub_26F76304C(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_26F763608(v7);
  v7[9] = sub_26F763158(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_26F7630F8;
}

void sub_26F7630F8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_26F763158(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t a1, char a2)
{
  v5 = v4;
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x68uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a3;
  v10[2] = v5;
  *v10 = a2;
  v12 = type metadata accessor for SignpostsManager.SignpostState(0);
  v11[3] = v12;
  v13 = *(v12 - 8);
  v14 = v13;
  v11[4] = v13;
  v15 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v11[6] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v11[6] = malloc(v15);
    v16 = malloc(v15);
  }

  v11[7] = v16;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF7B8, &qword_26F77C2B8) - 8) + 64);
  if (v9)
  {
    v11[8] = swift_coroFrameAlloc();
    v11[9] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v11[8] = malloc(v17);
    v11[9] = malloc(v17);
    v18 = malloc(v17);
  }

  v19 = v18;
  v11[10] = v18;
  v20 = *v5;
  v22 = sub_26F768DE0(a2, a3);
  *(v11 + 96) = v21 & 1;
  v23 = *(v20 + 16);
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
  }

  else
  {
    v26 = v21;
    v27 = *(v20 + 24);
    if (v27 >= v25 && (a4 & 1) != 0)
    {
LABEL_16:
      v11[11] = v22;
      if (v26)
      {
LABEL_17:
        sub_26F761598(*(*v5 + 56) + *(v14 + 72) * v22, v19);
        v28 = 0;
LABEL_21:
        (*(v14 + 56))(v19, v28, 1, v12);
        return sub_26F763420;
      }

LABEL_20:
      v28 = 1;
      goto LABEL_21;
    }

    if (v27 >= v25 && (a4 & 1) == 0)
    {
      sub_26F762E1C();
      goto LABEL_16;
    }

    sub_26F761D54(v25, a4 & 1);
    v29 = sub_26F768DE0(a2, a3);
    if ((v26 & 1) == (v30 & 1))
    {
      v22 = v29;
      v11[11] = v29;
      if (v26)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }
  }

  result = sub_26F779798();
  __break(1u);
  return result;
}

void sub_26F763420(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = (*(*a1 + 32) + 48);
  v5 = *(*a1 + 80);
  if (a2)
  {
    v6 = *(v2 + 8);
    sub_26F76363C(v5, v6);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 8);
    if (v7 != 1)
    {
      v10 = *(v2 + 2);
      sub_26F761598(v9, *(v2 + 6));
      v11 = *v10;
      v12 = *(v2 + 11);
      v13 = *(v2 + 6);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = *(v2 + 5);
        v16 = *v2;
        v15 = *(v2 + 1);
        sub_26F761598(v13, v14);
        sub_26F762A74(v12, v16, v15, v14, v11);

        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v17 = *(v2 + 9);
    sub_26F76363C(v5, v17);
    v18 = (*v4)(v17, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 9);
    if (v18 != 1)
    {
      v21 = *(v2 + 2);
      sub_26F761598(v9, *(v2 + 7));
      v11 = *v21;
      v12 = *(v2 + 11);
      v13 = *(v2 + 7);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_26F761598(v13, v11[7] + *(*(v2 + 4) + 72) * v12);
      goto LABEL_10;
    }
  }

  sub_26F763768(v9, &qword_2806EF7B8, &qword_26F77C2B8);
  if (v8)
  {
    v19 = *(v2 + 11);
    v20 = **(v2 + 2);
    sub_26F7636AC(*(v20 + 48) + 16 * v19);
    sub_26F7623F0(v19, v20);
  }

LABEL_10:
  v22 = *(v2 + 9);
  v23 = *(v2 + 10);
  v25 = *(v2 + 7);
  v24 = *(v2 + 8);
  v27 = *(v2 + 5);
  v26 = *(v2 + 6);
  sub_26F763768(v23, &qword_2806EF7B8, &qword_26F77C2B8);
  free(v23);
  free(v22);
  free(v24);
  free(v25);
  free(v26);
  free(v27);

  free(v2);
}

uint64_t (*sub_26F763608(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_26F763630;
}

uint64_t sub_26F76363C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF7B8, &qword_26F77C2B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F763704(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignpostsManager.SignpostState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F763768(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_26F7637C8()
{
  v1[9] = v0;
  v1[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF820, &qword_26F77C3A0);
  v2 = swift_task_alloc();
  v1[11] = v2;
  v3 = sub_26F778EF8();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[15] = v4;
  *v4 = v1;
  v4[1] = sub_26F763914;

  return sub_26F764320(v2);
}

uint64_t sub_26F763914()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_26F763BF8;
  }

  else
  {
    v2 = sub_26F763A28;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26F763A28()
{
  v1 = *(v0 + 88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = *v1;
    v3 = v1[1];
    v4 = *(v1 + 16);
    *(v0 + 16) = *v1;
    *(v0 + 24) = v3;
    *(v0 + 32) = v4;
    sub_26F747008();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v5 = v2;
    *(v5 + 8) = v3;
    *(v5 + 16) = v4;

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    (*(*(v0 + 104) + 32))(*(v0 + 112), v1, *(v0 + 96));
    v8 = [objc_opt_self() defaultSessionConfiguration];
    *(v0 + 136) = [objc_opt_self() sessionWithConfiguration_];

    v9 = swift_task_alloc();
    *(v0 + 144) = v9;
    *v9 = v0;
    v9[1] = sub_26F763C68;
    v10 = *(v0 + 112);

    return MEMORY[0x28211ECF8](v10, 0);
  }
}

uint64_t sub_26F763BF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26F763C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[19] = a1;
  v5[20] = a2;
  v5[21] = a3;
  v5[22] = v3;

  if (v3)
  {
    v6 = sub_26F764280;
  }

  else
  {
    v6 = sub_26F763D80;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26F763D80()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    if ([v1 statusCode] == 200)
    {
      v3 = v0[22];
      sub_26F778F28();
      swift_allocObject();
      sub_26F778F18();
      sub_26F7698D0();
      sub_26F778F08();
      v4 = v0[20];
      v5 = v0[21];
      v6 = v0[19];
      v7 = v0[17];
      v9 = v0[13];
      v8 = v0[14];
      v10 = v0[12];
      if (v3)
      {
        (*(v9 + 8))(v0[14], v0[12]);

        sub_26F74F35C(v6, v4);

        v11 = v0[1];

        return v11();
      }

      sub_26F74F35C(v6, v4);

      v42 = v0[5];
      v43 = v0[6];
      (*(v9 + 8))(v8, v10);
    }

    else
    {
      v92 = v0[20];
      v94 = v0[21];
      v88 = v0[17];
      v90 = v0[19];
      v3 = v0[13];
      v96 = v0[12];
      v98 = v0[14];
      v44 = sub_26F7793C8();
      sub_26F7794F8();
      0xE000000000000000, v45, v46, v47, v48, v49, v50, v51;
      v0[7] = [v2 statusCode];
      v52 = sub_26F779738();
      v54 = v53;
      MEMORY[0x274395240](v52);
      v54, v55, v56, v57, v58, v59, v60, v61;
      MEMORY[0x274395240](32032, 0xE200000000000000);
      sub_26F756E10(v44, 0xD000000000000022, 0x800000026F780B20, 0xD000000000000051, 0x800000026F780AC0, 45);
      0x800000026F780B20, v62, v63, v64, v65, v66, v67, v68;
      sub_26F7794F8();
      0xE000000000000000, v69, v70, v71, v72, v73, v74, v75;
      v0[8] = [v2 statusCode];
      v76 = sub_26F779738();
      v78 = v77;
      MEMORY[0x274395240](v76);
      v78, v79, v80, v81, v82, v83, v84, v85;
      MEMORY[0x274395240](32032, 0xE200000000000000);

      sub_26F74F35C(v90, v92);
      v42 = 0xD000000000000022;
      v43 = 0x800000026F780B20;
      (*(v3 + 8))(v98, v96);
      LODWORD(v3) = 1;
    }
  }

  else
  {
    v91 = v0[20];
    v93 = v0[21];
    v87 = v0[17];
    v89 = v0[19];
    v13 = v0[13];
    v95 = v0[12];
    v97 = v0[14];
    v14 = sub_26F7793C8();
    sub_26F7794F8();
    MEMORY[0x274395240](0xD00000000000003ALL, 0x800000026F780840);
    v15 = sub_26F779268();
    v17 = v16;
    MEMORY[0x274395240](v15);
    v17, v18, v19, v20, v21, v22, v23, v24;
    MEMORY[0x274395240](32032, 0xE200000000000000);
    sub_26F756E10(v14, 0, 0xE000000000000000, 0xD000000000000051, 0x800000026F780AC0, 40);
    0xE000000000000000, v25, v26, v27, v28, v29, v30, v31;
    sub_26F7794F8();
    MEMORY[0x274395240](0xD00000000000003ALL, 0x800000026F780840);
    v32 = sub_26F779268();
    v34 = v33;
    MEMORY[0x274395240](v32);
    v34, v35, v36, v37, v38, v39, v40, v41;
    MEMORY[0x274395240](32032, 0xE200000000000000);

    sub_26F74F35C(v89, v91);
    v42 = 0;
    v43 = 0xE000000000000000;
    (*(v13 + 8))(v97, v95);
    LODWORD(v3) = 1;
  }

  v86 = v0[1];

  return v86(v42, v43, v3 | (v3 << 8));
}

uint64_t sub_26F764280()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_26F764320(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_26F778EF8();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF828, &qword_26F77C3B0);
  v2[7] = swift_task_alloc();
  v4 = sub_26F779008();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F764480, 0, 0);
}

uint64_t sub_26F764480(uint64_t a1)
{
  if (qword_28141B570 != -1)
  {
    swift_once();
  }

  if (qword_28141B578 && (v2 = qword_28141B578, v3 = sub_26F779238(), v4 = [v2 BOOLForKey_], v3, v2, v4))
  {
    v5 = "eports.apple.com/v1/public_key";
    v6 = 0xD000000000000033;
  }

  else
  {
    v5 = "key. { statusCode=";
    v6 = 0xD00000000000002ELL;
  }

  v7 = v1[9];
  v67 = v1[8];
  v8 = v1[7];
  v9 = sub_26F7793B8();
  sub_26F7794F8();
  0xE000000000000000, v10, v11, v12, v13, v14, v15, v16;
  MEMORY[0x274395240](v6, v5 | 0x8000000000000000);
  MEMORY[0x274395240](32032, 0xE200000000000000);
  sub_26F756E10(v9, 0xD000000000000023, 0x800000026F780990, 0xD000000000000051, 0x800000026F780AC0, 71);
  0x800000026F780990, v17, v18, v19, v20, v21, v22, v23;
  sub_26F778FF8();
  (v5 | 0x8000000000000000), v24, v25, v26, v27, v28, v29, v30;
  if ((*(v7 + 48))(v8, 1, v67) == 1)
  {
    v31 = v1[2];
    sub_26F763768(v1[7], &qword_2806EF828, &qword_26F77C3B0);
    v32 = sub_26F7793B8();
    sub_26F7794F8();
    0xE000000000000000, v33, v34, v35, v36, v37, v38, v39;
    v40 = sub_26F779268();
    v42 = v41;
    MEMORY[0x274395240](v40);
    v42, v43, v44, v45, v46, v47, v48, v49;
    MEMORY[0x274395240](32032, 0xE200000000000000);
    sub_26F756E10(v32, 0xD000000000000018, 0x800000026F7809C0, 0xD000000000000051, 0x800000026F780AC0, 74);
    0x800000026F7809C0, v50, v51, v52, v53, v54, v55, v56;
    *v31 = 0xD000000000000015;
    *(v31 + 8) = 0x800000026F7809E0;
    *(v31 + 16) = 2;
  }

  else
  {
    v57 = v1[10];
    v58 = v1[11];
    v59 = v1[8];
    v60 = v1[9];
    v61 = v1[6];
    v62 = v1[4];
    v63 = v1[5];
    v64 = v1[2];
    (*(v60 + 32))(v58, v1[7], v59);
    (*(v60 + 16))(v57, v58, v59);
    sub_26F778EC8();
    sub_26F778EB8();
    (*(v60 + 8))(v58, v59);
    (*(v63 + 32))(v64, v61, v62);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF820, &qword_26F77C3A0);
  swift_storeEnumTagMultiPayload();

  v65 = v1[1];

  return v65();
}

uint64_t sub_26F76489C(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v2[21] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF820, &qword_26F77C3A0);
  v4 = swift_task_alloc();
  v2[22] = v4;
  v5 = sub_26F778EF8();
  v2[23] = v5;
  v2[24] = *(v5 - 8);
  v2[25] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[26] = v6;
  *v6 = v2;
  v6[1] = sub_26F7649F4;

  return sub_26F7652C8(v4, a1);
}

uint64_t sub_26F7649F4()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_26F764CD8;
  }

  else
  {
    v2 = sub_26F764B08;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26F764B08()
{
  v1 = *(v0 + 176);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = *v1;
    v3 = v1[1];
    v4 = *(v1 + 16);
    *(v0 + 112) = *v1;
    *(v0 + 120) = v3;
    *(v0 + 128) = v4;
    sub_26F747008();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v5 = v2;
    *(v5 + 8) = v3;
    *(v5 + 16) = v4;

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    (*(*(v0 + 192) + 32))(*(v0 + 200), v1, *(v0 + 184));
    v8 = [objc_opt_self() defaultSessionConfiguration];
    *(v0 + 224) = [objc_opt_self() sessionWithConfiguration_];

    v9 = swift_task_alloc();
    *(v0 + 232) = v9;
    *v9 = v0;
    v9[1] = sub_26F764D48;
    v10 = *(v0 + 200);

    return MEMORY[0x28211ECF8](v10, 0);
  }
}

uint64_t sub_26F764CD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26F764D48(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *v4;
  *(v7 + 240) = a3;
  *(v7 + 248) = v3;

  if (v3)
  {
    v8 = sub_26F765228;
  }

  else
  {
    sub_26F74F35C(a1, a2);
    v8 = sub_26F764E78;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26F764E78()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 statusCode];
    v4 = *(v0 + 240);
    v5 = *(v0 + 224);
    v7 = *(v0 + 192);
    v6 = *(v0 + 200);
    v8 = *(v0 + 184);
    if (v3 == 200)
    {

      (*(v7 + 8))(v6, v8);
      v9 = 0;
      v10 = 0;
      v11 = 0;
      goto LABEL_7;
    }

    v80 = sub_26F7793C8();
    v79 = v6;
    sub_26F7794F8();
    0xE000000000000000, v36, v37, v38, v39, v40, v41, v42;
    *(v0 + 136) = [v2 statusCode];
    v43 = sub_26F779738();
    v45 = v44;
    MEMORY[0x274395240](v43);
    v45, v46, v47, v48, v49, v50, v51, v52;
    MEMORY[0x274395240](32032, 0xE200000000000000);
    sub_26F756E10(v80, 0xD000000000000026, 0x800000026F780920, 0xD000000000000054, 0x800000026F780880, 37);
    0x800000026F780920, v53, v54, v55, v56, v57, v58, v59;
    sub_26F7794F8();
    0xE000000000000000, v60, v61, v62, v63, v64, v65, v66;
    *(v0 + 144) = [v2 statusCode];
    v67 = sub_26F779738();
    v69 = v68;
    MEMORY[0x274395240](v67);
    v69, v70, v71, v72, v73, v74, v75, v76;
    MEMORY[0x274395240](32032, 0xE200000000000000);

    v10 = 0xD000000000000026;
    v11 = 0x800000026F780920;
    (*(v7 + 8))(v79, v8);
  }

  else
  {
    v12 = *(v0 + 240);
    v13 = *(v0 + 224);
    v14 = *(v0 + 192);
    v81 = *(v0 + 184);
    v82 = *(v0 + 200);
    v15 = *(v0 + 152);
    v16 = sub_26F7793C8();
    sub_26F7794F8();
    MEMORY[0x274395240](0xD00000000000003ALL, 0x800000026F780840);
    v17 = *v15;
    v18 = v15[2];
    *(v0 + 32) = v15[1];
    *(v0 + 48) = v18;
    *(v0 + 16) = v17;
    sub_26F769640(v15, v0 + 64);
    v19 = sub_26F779268();
    v21 = v20;
    MEMORY[0x274395240](v19);
    v21, v22, v23, v24, v25, v26, v27, v28;
    MEMORY[0x274395240](32032, 0xE200000000000000);
    sub_26F756E10(v16, 0, 0xE000000000000000, 0xD000000000000054, 0x800000026F780880, 32);
    0xE000000000000000, v29, v30, v31, v32, v33, v34, v35;

    v11 = 0x800000026F7808E0;
    (*(v14 + 8))(v82, v81);
    v10 = 0xD000000000000037;
  }

  v9 = 1;
LABEL_7:

  v77 = *(v0 + 8);

  return v77(v10, v11, v9 | (v9 << 8));
}

uint64_t sub_26F765228()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_26F7652C8(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  v4 = sub_26F778EF8();
  v3[29] = v4;
  v3[30] = *(v4 - 8);
  v3[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF828, &qword_26F77C3B0);
  v3[32] = swift_task_alloc();
  v5 = sub_26F779008();
  v3[33] = v5;
  v3[34] = *(v5 - 8);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  sub_26F778F48();
  v3[37] = swift_task_alloc();
  v6 = sub_26F779058();
  v3[38] = v6;
  v3[39] = *(v6 - 8);
  v3[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F7654B4, 0, 0);
}

uint64_t sub_26F7654B4()
{
  v2 = *(v0 + 216);
  v4 = *v2;
  v3 = *(v2 + 8);
  v253 = v3;
  v245 = *v2;
  if (!v3)
  {
    v247 = 0;
    v249 = 0xE000000000000000;
    goto LABEL_20;
  }

  if (v3 >> 62)
  {
    v5 = sub_26F7795D8();
    if (v5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_4:
      v255 = MEMORY[0x277D84F90];
      v6 = v4;

      sub_26F76901C(0, v5 & ~(v5 >> 63), 0);
      if (v5 < 0)
      {
        __break(1u);
LABEL_62:
        swift_once();
        goto LABEL_31;
      }

      v7 = v255;
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = 0;
        do
        {
          v9 = MEMORY[0x2743954B0](v8, v3);
          v10 = SecCertificateCopyData(v9);
          v11 = sub_26F779048();
          v13 = v12;

          v14 = sub_26F779028();
          v16 = v15;
          MEMORY[0x274395240](v14);
          v16, v17, v18, v19, v20, v21, v22, v23;
          MEMORY[0x274395240](10, 0xE100000000000000);
          MEMORY[0x274395240](0xD000000000000019, 0x800000026F780A80);
          sub_26F74F35C(v11, v13);
          swift_unknownObjectRelease();
          v25 = *(v255 + 16);
          v24 = *(v255 + 24);
          if (v25 >= v24 >> 1)
          {
            sub_26F76901C((v24 > 1), v25 + 1, 1);
          }

          ++v8;
          *(v255 + 16) = v25 + 1;
          v26 = v255 + 16 * v25;
          *(v26 + 32) = 0xD00000000000001CLL;
          *(v26 + 40) = 0x800000026F780AA0;
        }

        while (v5 != v8);
      }

      else
      {
        v27 = (v3 + 32);
        do
        {
          v28 = *v27;
          v29 = SecCertificateCopyData(v28);
          v30 = sub_26F779048();
          v32 = v31;

          v33 = sub_26F779028();
          v35 = v34;
          MEMORY[0x274395240](v33);
          v35, v36, v37, v38, v39, v40, v41, v42;
          MEMORY[0x274395240](10, 0xE100000000000000);
          MEMORY[0x274395240](0xD000000000000019, 0x800000026F780A80);
          sub_26F74F35C(v30, v32);

          v44 = *(v255 + 16);
          v43 = *(v255 + 24);
          if (v44 >= v43 >> 1)
          {
            sub_26F76901C((v43 > 1), v44 + 1, 1);
          }

          *(v255 + 16) = v44 + 1;
          v45 = v255 + 16 * v44;
          *(v45 + 32) = 0xD00000000000001CLL;
          *(v45 + 40) = 0x800000026F780AA0;
          ++v27;
          --v5;
        }

        while (v5);
      }

      goto LABEL_19;
    }
  }

  v46 = v4;

  v7 = MEMORY[0x277D84F90];
LABEL_19:
  *(v0 + 200) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF680, &qword_26F77B990);
  sub_26F7696F4();
  v247 = sub_26F779228();
  v249 = v47;
  v7, v47, v48, v49, v50, v51, v52, v53;
  v2 = *(v0 + 216);
LABEL_20:
  sub_26F7546E4(*(v2 + 32), *(v2 + 40));
  sub_26F779068();
  sub_26F76969C();
  sub_26F779438();
  if (*(v0 + 178))
  {
    v54 = MEMORY[0x277D84F90];
  }

  else
  {
    v54 = MEMORY[0x277D84F90];
    v67 = MEMORY[0x277D84B78];
    v68 = MEMORY[0x277D84BC0];
    do
    {
      v69 = *(v0 + 177);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF848, &qword_26F77C3B8);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_26F77A180;
      *(v70 + 56) = v67;
      *(v70 + 64) = v68;
      *(v70 + 32) = v69;
      v71 = sub_26F779258();
      v73 = v72;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_26F768CD4(0, *v54->endpoint + 1, 1, v54, v74, v75, v76, v77);
      }

      v79 = *v54->endpoint;
      v78 = *v54->connection;
      if (v79 >= v78 >> 1)
      {
        v54 = sub_26F768CD4((v78 > 1), v79 + 1, 1, v54, v74, v75, v76, v77);
      }

      *v54->endpoint = v79 + 1;
      v80 = v54 + 16 * v79;
      *(v80 + 4) = v71;
      *(v80 + 5) = v73;
      sub_26F779438();
    }

    while (*(v0 + 178) != 1);
  }

  v55 = *(v0 + 216);
  (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));
  *(v0 + 184) = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF680, &qword_26F77B990);
  sub_26F7696F4();
  v56 = sub_26F779228();
  v58 = v57;
  v54, v57, v59, v60, v61, v62, v63, v64;
  v66 = *(v55 + 16);
  v65 = *(v55 + 24);
  sub_26F778F88();
  swift_allocObject();

  sub_26F778F78();
  sub_26F778F38();
  sub_26F778F58();
  *(v0 + 16) = v66;
  *(v0 + 24) = v65;
  *(v0 + 32) = v247;
  *(v0 + 40) = v249;
  *(v0 + 48) = v56;
  *(v0 + 56) = v58;
  sub_26F769758();
  v3 = sub_26F778F68();
  v1 = v81;
  v65, v81, v82, v83, v84, v85, v86, v87;
  v249, v88, v89, v90, v91, v92, v93, v94;
  v58, v95, v96, v97, v98, v99, v100, v101;
  if (qword_28141B570 != -1)
  {
    goto LABEL_62;
  }

LABEL_31:
  v254 = v1;
  v248 = v3;
  if (qword_28141B578 && (v102 = qword_28141B578, v103 = sub_26F779238(), v104 = [v102 BOOLForKey_], v103, v102, (v104 & 1) != 0))
  {
    v105 = "X-Apple-FSR-Signature";
    v106 = 0xD000000000000036;
  }

  else
  {
    v105 = " report. { statusCode=";
    v106 = 0xD000000000000031;
  }

  v107 = *(v0 + 272);
  v250 = *(v0 + 264);
  v108 = *(v0 + 256);
  v109 = sub_26F7793B8();
  sub_26F7794F8();
  0xE000000000000000, v110, v111, v112, v113, v114, v115, v116;
  MEMORY[0x274395240](v106, v105 | 0x8000000000000000);
  MEMORY[0x274395240](32032, 0xE200000000000000);
  sub_26F756E10(v109, 0xD000000000000023, 0x800000026F780990, 0xD000000000000054, 0x800000026F780880, 74);
  0x800000026F780990, v117, v118, v119, v120, v121, v122, v123;
  sub_26F778FF8();
  (v105 | 0x8000000000000000), v124, v125, v126, v127, v128, v129, v130;
  if ((*(v107 + 48))(v108, 1, v250) != 1)
  {
    v167 = *(v0 + 280);
    v168 = *(v0 + 288);
    v170 = *(v0 + 264);
    v169 = *(v0 + 272);
    (*(v169 + 32))(v168, *(v0 + 256), v170);
    (*(v169 + 16))(v167, v168, v170);
    sub_26F778EC8();
    sub_26F778EB8();
    sub_26F7546E4(v248, v254);
    sub_26F778ED8();
    result = sub_26F778EE8();
    v172 = v254 >> 62;
    if ((v254 >> 62) > 1)
    {
      v173 = 0;
      if (v172 != 2)
      {
        goto LABEL_48;
      }

      v175 = *(v248 + 16);
      v174 = *(v248 + 24);
      v176 = __OFSUB__(v174, v175);
      v173 = v174 - v175;
      if (!v176)
      {
LABEL_46:
        if (v173 < 0)
        {
          __break(1u);
        }

LABEL_48:
        *(v0 + 192) = v173;
        v177 = sub_26F779738();
        v179 = v178;
        MEMORY[0x274395240](v177);
        v179, v180, v181, v182, v183, v184, v185, v186;
        sub_26F778EE8();
        0xE000000000000000, v187, v188, v189, v190, v191, v192, v193;
        if (v253)
        {
          if (!v245)
          {

            sub_26F74F35C(v248, v254);
            v253, v220, v221, v222, v223, v224, v225, v226;
            goto LABEL_55;
          }

          v194 = v245;
          v195 = sub_26F74EC80(v248, v254, v194);
          v198 = v195;
          v199 = v197;
          if ((v197 & 0x100) != 0)
          {
            v252 = *(v0 + 288);
            v232 = *(v0 + 272);
            v246 = *(v0 + 264);
            v233 = *(v0 + 240);
            v243 = *(v0 + 232);
            v244 = *(v0 + 248);
            *(v0 + 160) = v195;
            *(v0 + 168) = v196;
            *(v0 + 176) = v197;
            v234 = v196;
            sub_26F747008();
            swift_willThrowTypedImpl();
            swift_allocError();
            *v235 = v198;
            *(v235 + 8) = v234;
            *(v235 + 16) = v199;

            v253, v236, v237, v238, v239, v240, v241, v242;
            sub_26F74F35C(v248, v254);
            (*(v233 + 8))(v244, v243);
            (*(v232 + 8))(v252, v246);

            v231 = *(v0 + 8);
            goto LABEL_57;
          }

          v251 = v196;
          sub_26F779028();
          v201 = v200;
          sub_26F778EE8();

          v201, v202, v203, v204, v205, v206, v207, v208;
          sub_26F7697AC(v198, v251, v199, 0, v209, v210, v211, v212);

          v253, v213, v214, v215, v216, v217, v218, v219;
        }

        else
        {
        }

        sub_26F74F35C(v248, v254);
LABEL_55:
        v228 = *(v0 + 240);
        v227 = *(v0 + 248);
        v229 = *(v0 + 232);
        v230 = *(v0 + 208);
        (*(*(v0 + 272) + 8))(*(v0 + 288), *(v0 + 264));
        (*(v228 + 32))(v230, v227, v229);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF820, &qword_26F77C3A0);
        goto LABEL_56;
      }

      __break(1u);
    }

    else if (!v172)
    {
      v173 = BYTE6(v254);
      goto LABEL_48;
    }

    LODWORD(v173) = HIDWORD(v248) - v248;
    if (__OFSUB__(HIDWORD(v248), v248))
    {
      __break(1u);
      return result;
    }

    v173 = v173;
    goto LABEL_46;
  }

  v137 = *(v0 + 256);
  v138 = *(v0 + 208);
  v139 = *(v0 + 216);
  sub_26F7694E0(v245, v253, v131, v132, v133, v134, v135, v136);
  sub_26F763768(v137, &qword_2806EF828, &qword_26F77C3B0);
  v140 = sub_26F7793B8();
  sub_26F7794F8();
  0xE000000000000000, v141, v142, v143, v144, v145, v146, v147;
  v149 = v139[1];
  v148 = v139[2];
  *(v0 + 64) = *v139;
  *(v0 + 80) = v149;
  *(v0 + 96) = v148;
  sub_26F769640(v139, v0 + 112);
  v150 = sub_26F779268();
  v152 = v151;
  MEMORY[0x274395240](v150);
  v152, v153, v154, v155, v156, v157, v158, v159;
  MEMORY[0x274395240](32032, 0xE200000000000000);
  sub_26F756E10(v140, 0xD000000000000018, 0x800000026F7809C0, 0xD000000000000054, 0x800000026F780880, 77);
  0x800000026F7809C0, v160, v161, v162, v163, v164, v165, v166;
  sub_26F74F35C(v248, v1);

  *v138 = 0xD000000000000015;
  *(v138 + 8) = 0x800000026F7809E0;
  *(v138 + 16) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF820, &qword_26F77C3A0);
LABEL_56:
  swift_storeEnumTagMultiPayload();

  v231 = *(v0 + 8);
LABEL_57:

  return v231();
}

uint64_t sub_26F7661F8()
{
  v31 = v0;
  *(v0 + 92) = 0u;
  *(v0 + 108) = 0u;
  *(v0 + 124) = 1;
  if (sub_26F76A25C(0, v0 + 92))
  {
    v1 = swift_task_alloc();
    *(v0 + 272) = v1;
    *v1 = v0;
    v1[1] = sub_26F766478;

    return sub_26F7637C8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF7E8, &qword_26F77C2F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26F77A180;
    *(inited + 32) = 0x626967696C656E69;
    *(inited + 40) = 0xEA0000000000656CLL;
    sub_26F766F04();
    *(inited + 48) = sub_26F779408();
    v4 = sub_26F7693B4(inited);
    swift_setDeallocating();
    sub_26F763768(inited + 32, &qword_2806EF7F0, &qword_26F77C2F8);
    v28 = 0xD000000000000025;
    v29 = 0x800000026F7805B0;
    v30 = 0;
    v5 = sub_26F74B1B0(1u, v4, &v28);
    v4, v6, v7, v8, v9, v10, v11, v12;
    v5, v13, v14, v15, v16, v17, v18, v19;
    sub_26F75E47C(v28, v29, v30, v20, v21, v22, v23, v24);
    v25 = sub_26F7793C8();
    sub_26F756E10(v25, 0xD000000000000025, 0x800000026F7805B0, 0xD000000000000058, 0x800000026F7805E0, 37);
    sub_26F74AEE0();
    swift_allocError();
    *v26 = 0xD000000000000025;
    *(v26 + 8) = 0x800000026F7805B0;
    *(v26 + 16) = 0;
    swift_willThrow();
    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_26F766478(uint64_t a1, uint64_t a2, __int16 a3)
{
  v5 = *v4;
  *(v5 + 280) = a1;
  *(v5 + 288) = a2;
  *(v5 + 90) = a3;
  *(v5 + 296) = v3;

  if (v3)
  {
    v6 = sub_26F766C14;
  }

  else
  {
    v6 = sub_26F766594;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26F766594()
{
  v136 = v0;
  v1 = *(v0 + 90);
  if ((v1 & 0x100) != 0)
  {
    v17 = *(v0 + 280);
    v16 = *(v0 + 288);
    *(v0 + 152) = v17;
    *(v0 + 160) = v16;
    *(v0 + 168) = v1;
    sub_26F747008();
    swift_willThrowTypedImpl();
    v15 = swift_allocError();
    *v18 = v17;
    *(v18 + 8) = v16;
    *(v18 + 16) = v1;
    *(v0 + 248) = v15;
    MEMORY[0x274395DF0]();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF628, &unk_26F77B8D8);
    if (swift_dynamicCast())
    {
      v19 = *(v0 + 72);
      v20 = *(v0 + 80);
      v21 = *(v0 + 88);
      if (v21 > 0x11)
      {
        v117 = sub_26F74705C(*(v0 + 72), *(v0 + 80), *(v0 + 88));
        v119 = v118;
        sub_26F7694B8(v19, v20, v21, v120, v121, v122, v123, v124);
        v23 = 2;
        v19 = v117;
        v20 = v119;
      }

      else
      {
        if (((1 << v21) & 0x4001) != 0)
        {
          v22 = 0;
        }

        else
        {
          v22 = *(v0 + 88);
        }

        if (((1 << v21) & 0x3BFFC) != 0)
        {
          v23 = 2;
        }

        else
        {
          v23 = v22;
        }
      }

      v133 = v19;
      v134 = v20;
      v135 = v23;
      sub_26F75E4D8(v19, v20, v23);
      v24 = sub_26F74B1B0(1u, 0, &v133);
      v24, v25, v26, v27, v28, v29, v30, v31;
      sub_26F75E47C(v133, v134, v135, v32, v33, v34, v35, v36);
      v37 = sub_26F7793C8();
      v133 = 0;
      v134 = 0xE000000000000000;
      sub_26F7794F8();
      v134, v38, v39, v40, v41, v42, v43, v44;
      v133 = 0xD000000000000028;
      v134 = 0x800000026F780660;
      *(v0 + 128) = v19;
      *(v0 + 136) = v20;
      *(v0 + 144) = v23;
      sub_26F74AEE0();
      v45 = sub_26F7797F8();
      v47 = v46;
      MEMORY[0x274395240](v45);
      v47, v48, v49, v50, v51, v52, v53, v54;
      MEMORY[0x274395240](32032, 0xE200000000000000);
      v55 = v133;
      v56 = v134;
      v57 = v37;
      v58 = v134;
      v59 = 54;
      goto LABEL_28;
    }

    v60 = sub_26F7793C8();
    v61 = 47;
LABEL_30:
    sub_26F756E10(v60, 0xD00000000000001ALL, 0x800000026F780640, 0xD000000000000058, 0x800000026F7805E0, v61);
    sub_26F74AEE0();
    swift_allocError();
    *v115 = 0xD00000000000001ALL;
    *(v115 + 8) = 0x800000026F780640;
    *(v115 + 16) = 2;
    goto LABEL_31;
  }

  v2 = *(v0 + 296);
  v7 = sub_26F74F3B0(*(v0 + 280), *(v0 + 288));
  v9 = v8;
  v11 = v10;
  v12 = *(v0 + 90);
  v13 = *(v0 + 280);
  v14 = *(v0 + 288);
  if (v2)
  {
    v15 = v2;
    sub_26F7694D0(v13, v14, v12, 0, v3, v4, v5, v6);
LABEL_19:
    *(v0 + 256) = v15;
    MEMORY[0x274395DF0](v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF628, &unk_26F77B8D8);
    if (swift_dynamicCast())
    {
      v19 = *(v0 + 176);
      v20 = *(v0 + 184);
      v74 = *(v0 + 192);
      if (v74 > 0x11)
      {
        v125 = sub_26F74705C(*(v0 + 176), *(v0 + 184), *(v0 + 192));
        v127 = v126;
        sub_26F7694B8(v19, v20, v74, v128, v129, v130, v131, v132);
        v23 = 2;
        v19 = v125;
        v20 = v127;
      }

      else
      {
        if (((1 << v74) & 0x4001) != 0)
        {
          v75 = 0;
        }

        else
        {
          v75 = *(v0 + 192);
        }

        if (((1 << v74) & 0x3BFFC) != 0)
        {
          v23 = 2;
        }

        else
        {
          v23 = v75;
        }
      }

      v133 = v19;
      v134 = v20;
      v135 = v23;
      sub_26F75E4D8(v19, v20, v23);
      v76 = sub_26F74B1B0(1u, 0, &v133);
      v76, v77, v78, v79, v80, v81, v82, v83;
      sub_26F75E47C(v133, v134, v135, v84, v85, v86, v87, v88);
      v89 = sub_26F7793C8();
      v133 = 0;
      v134 = 0xE000000000000000;
      sub_26F7794F8();
      v134, v90, v91, v92, v93, v94, v95, v96;
      v133 = 0xD00000000000002DLL;
      v134 = 0x800000026F780690;
      *(v0 + 200) = v19;
      *(v0 + 208) = v20;
      *(v0 + 216) = v23;
      sub_26F74AEE0();
      v97 = sub_26F7797F8();
      v99 = v98;
      MEMORY[0x274395240](v97);
      v99, v100, v101, v102, v103, v104, v105, v106;
      MEMORY[0x274395240](32032, 0xE200000000000000);
      v55 = v133;
      v56 = v134;
      v57 = v89;
      v58 = v134;
      v59 = 70;
LABEL_28:
      sub_26F756E10(v57, v55, v58, 0xD000000000000058, 0x800000026F7805E0, v59);
      v56, v107, v108, v109, v110, v111, v112, v113;
      swift_allocError();
      *v114 = v19;
      *(v114 + 8) = v20;
      *(v114 + 16) = v23;
LABEL_31:
      swift_willThrow();

      v116 = *(v0 + 8);

      return v116();
    }

    v60 = sub_26F7793C8();
    v61 = 63;
    goto LABEL_30;
  }

  sub_26F7694D0(v13, v14, v12, 0, v3, v4, v5, v6);
  if ((v11 & 0x100) != 0)
  {
    *(v0 + 224) = v7;
    *(v0 + 232) = v9;
    *(v0 + 240) = v11;
    sub_26F747008();
    swift_willThrowTypedImpl();
    v15 = swift_allocError();
    *v73 = v7;
    *(v73 + 8) = v9;
    *(v73 + 16) = v11;
    goto LABEL_19;
  }

  v62 = sub_26F7793D8();
  sub_26F756E10(v62, 0xD000000000000017, 0x800000026F7806C0, 0xD000000000000058, 0x800000026F7805E0, 74);
  v133 = 0;
  v134 = 0;
  v135 = -1;
  v63 = sub_26F74B1B0(1u, 0, &v133);
  v63, v64, v65, v66, v67, v68, v69, v70;
  v71 = *(v0 + 8);

  return v71(v7, v9);
}

uint64_t sub_26F766C14()
{
  v61 = v0;
  v1 = *(v0 + 296);
  *(v0 + 248) = v1;
  MEMORY[0x274395DF0](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF628, &unk_26F77B8D8);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 72);
    v2 = *(v0 + 80);
    v4 = *(v0 + 88);
    if (v4 > 0x11)
    {
      v50 = sub_26F74705C(*(v0 + 72), *(v0 + 80), *(v0 + 88));
      v52 = v51;
      sub_26F7694B8(v3, v2, v4, v53, v54, v55, v56, v57);
      v6 = 2;
      v3 = v50;
      v2 = v52;
    }

    else
    {
      if (((1 << v4) & 0x4001) != 0)
      {
        v5 = 0;
      }

      else
      {
        v5 = *(v0 + 88);
      }

      if (((1 << v4) & 0x3BFFC) != 0)
      {
        v6 = 2;
      }

      else
      {
        v6 = v5;
      }
    }

    v58 = v3;
    v59 = v2;
    v60 = v6;
    sub_26F75E4D8(v3, v2, v6);
    v7 = sub_26F74B1B0(1u, 0, &v58);
    v7, v8, v9, v10, v11, v12, v13, v14;
    sub_26F75E47C(v58, v59, v60, v15, v16, v17, v18, v19);
    v20 = sub_26F7793C8();
    v58 = 0;
    v59 = 0xE000000000000000;
    sub_26F7794F8();
    v59, v21, v22, v23, v24, v25, v26, v27;
    v58 = 0xD000000000000028;
    v59 = 0x800000026F780660;
    *(v0 + 128) = v3;
    *(v0 + 136) = v2;
    *(v0 + 144) = v6;
    sub_26F74AEE0();
    v28 = sub_26F7797F8();
    v30 = v29;
    MEMORY[0x274395240](v28);
    v30, v31, v32, v33, v34, v35, v36, v37;
    MEMORY[0x274395240](32032, 0xE200000000000000);
    v38 = v59;
    sub_26F756E10(v20, v58, v59, 0xD000000000000058, 0x800000026F7805E0, 54);
    v38, v39, v40, v41, v42, v43, v44, v45;
  }

  else
  {
    v46 = sub_26F7793C8();
    v2 = 0x800000026F780640;
    sub_26F756E10(v46, 0xD00000000000001ALL, 0x800000026F780640, 0xD000000000000058, 0x800000026F7805E0, 47);
    v6 = 2;
    sub_26F74AEE0();
    v3 = 0xD00000000000001ALL;
  }

  swift_allocError();
  *v47 = v3;
  *(v47 + 8) = v2;
  *(v47 + 16) = v6;
  swift_willThrow();

  v48 = *(v0 + 8);

  return v48();
}

unint64_t sub_26F766F04()
{
  result = qword_28141B158;
  if (!qword_28141B158)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28141B158);
  }

  return result;
}

uint64_t TKRecordService.upload(_:)(uint64_t a1, uint64_t a2)
{
  v3[52] = a2;
  v3[53] = v2;
  v3[51] = a1;
  return MEMORY[0x2822009F8](sub_26F766F74, 0, 0);
}

uint64_t sub_26F766F74()
{
  v142 = v0;
  *(v0 + 236) = 0u;
  *(v0 + 252) = 0u;
  *(v0 + 268) = 1;
  if (sub_26F76A25C(0, v0 + 236))
  {
    v1 = *(v0 + 416);
    *(v0 + 432) = OBJC_IVAR____TtC8TrustKit15TKRecordService_logger;
    v2 = sub_26F7793B8();
    sub_26F7794F8();
    0xE000000000000000, v3, v4, v5, v6, v7, v8, v9;
    v140 = 0xD000000000000021;
    v141 = 0x800000026F780740;
    sub_26F7794F8();
    0xE000000000000000, v10, v11, v12, v13, v14, v15, v16;
    v137 = 0x444964726F636572;
    v138 = 0xE90000000000003DLL;
    swift_beginAccess();
    v17 = v1[2];
    v18 = v1[3];

    MEMORY[0x274395240](v17, v18);
    v18, v19, v20, v21, v22, v23, v24, v25;
    MEMORY[0x274395240](0x64726F636572202CLL, 0xED00003D68736148);
    swift_beginAccess();
    v26 = v1[4];
    v27 = v1[5];
    sub_26F7546E4(v26, v27);
    v28 = sub_26F779028();
    v30 = v29;
    sub_26F74F35C(v26, v27);
    MEMORY[0x274395240](v28, v30);
    v30, v31, v32, v33, v34, v35, v36, v37;
    MEMORY[0x274395240](0x444964726F636572, 0xE90000000000003DLL);
    0xE90000000000003DLL, v38, v39, v40, v41, v42, v43, v44;
    MEMORY[0x274395240](32032, 0xE200000000000000);
    sub_26F756E10(v2, 0xD000000000000021, 0x800000026F780740, 0xD000000000000058, 0x800000026F7805E0, 97);
    0x800000026F780740, v45, v46, v47, v48, v49, v50, v51;
    type metadata accessor for AttestationManager(0);
    v52 = swift_allocObject();
    *(v0 + 440) = v52;
    *(v52 + 16) = sub_26F756138();
    v53 = OBJC_IVAR____TtC8TrustKit18AttestationManager_logger;
    if (qword_2806EF298 != -1)
    {
      swift_once();
    }

    v54 = sub_26F779188();
    v55 = __swift_project_value_buffer(v54, qword_2806F4998);
    (*(*(v54 - 8) + 16))(v52 + v53, v55, v54);
    if (DeviceIdentityIsSupported())
    {
      v56 = swift_task_alloc();
      *(v0 + 448) = v56;
      *v56 = v0;
      v56[1] = sub_26F7675E8;

      return sub_26F7551D8();
    }

    v59 = *(v0 + 408);

    v135 = sub_26F7793C8();
    v60 = 0x800000026F780770;
    sub_26F756E10(v135, 0xD00000000000001CLL, 0x800000026F780770, 0xD000000000000058, 0x800000026F7805E0, 103);
    *v59 = 0xD00000000000001CLL;
    v134 = 2;
  }

  else
  {
    v58 = *(v0 + 416);
    v59 = *(v0 + 408);
    v60 = 0x800000026F7806E0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF7E8, &qword_26F77C2F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26F77A180;
    *(inited + 32) = 0x626967696C656E69;
    *(inited + 40) = 0xEA0000000000656CLL;
    sub_26F766F04();
    *(inited + 48) = sub_26F779408();
    v62 = sub_26F7693B4(inited);
    swift_setDeallocating();
    sub_26F763768(inited + 32, &qword_2806EF7F0, &qword_26F77C2F8);
    v137 = 0xD000000000000029;
    v138 = 0x800000026F7806E0;
    v139 = 0;
    v63 = sub_26F74B1B0(2u, v62, &v137);
    v62, v64, v65, v66, v67, v68, v69, v70;
    v63, v71, v72, v73, v74, v75, v76, v77;
    sub_26F75E47C(v137, v138, v139, v78, v79, v80, v81, v82);
    LOBYTE(inited) = sub_26F7793C8();
    v137 = 0;
    v138 = 0xE000000000000000;
    sub_26F7794F8();
    v138, v83, v84, v85, v86, v87, v88, v89;
    v140 = 0xD00000000000002CLL;
    v141 = 0x800000026F780710;
    v137 = 0;
    v138 = 0xE000000000000000;
    sub_26F7794F8();
    v138, v90, v91, v92, v93, v94, v95, v96;
    v137 = 0x444964726F636572;
    v138 = 0xE90000000000003DLL;
    swift_beginAccess();
    v97 = v58[2];
    v98 = v58[3];

    MEMORY[0x274395240](v97, v98);
    v98, v99, v100, v101, v102, v103, v104, v105;
    MEMORY[0x274395240](0x64726F636572202CLL, 0xED00003D68736148);
    swift_beginAccess();
    v106 = v58[4];
    v107 = v58[5];
    sub_26F7546E4(v106, v107);
    v108 = sub_26F779028();
    v110 = v109;
    sub_26F74F35C(v106, v107);
    MEMORY[0x274395240](v108, v110);
    v110, v111, v112, v113, v114, v115, v116, v117;
    v118 = v138;
    MEMORY[0x274395240](v137, v138);
    v118, v119, v120, v121, v122, v123, v124, v125;
    MEMORY[0x274395240](32032, 0xE200000000000000);
    v126 = v141;
    sub_26F756E10(inited, v140, v141, 0xD000000000000058, 0x800000026F7805E0, 93);
    v126, v127, v128, v129, v130, v131, v132, v133;
    v134 = 0;
    *v59 = 0xD000000000000029;
  }

  v59[1] = v60;
  *(*(v0 + 408) + 16) = v134;
  v136 = *(v0 + 8);

  return v136();
}

uint64_t sub_26F7675E8(uint64_t a1, uint64_t a2, __int16 a3)
{
  v5 = *v4;
  *(v5 + 456) = a1;
  *(v5 + 464) = a2;
  *(v5 + 234) = a3;
  *(v5 + 472) = v3;

  if (v3)
  {
    v6 = sub_26F768460;
  }

  else
  {
    v6 = sub_26F767704;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26F767704()
{
  v68 = v0;
  v1 = *(v0 + 234);
  v3 = *(v0 + 456);
  v2 = *(v0 + 464);
  if ((v1 & 0x100) != 0)
  {
    *(v0 + 296) = v3;
    *(v0 + 304) = v2;
    *(v0 + 312) = v1;
    sub_26F747008();
    swift_willThrowTypedImpl();
    v12 = swift_allocError();
    *v13 = v3;
    *(v13 + 8) = v2;
    *(v13 + 16) = v1;

    *(v0 + 392) = v12;
    MEMORY[0x274395DF0](v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF628, &unk_26F77B8D8);
    v14 = swift_dynamicCast();
    v15 = *(v0 + 408);
    if (v14)
    {
      v17 = *(v0 + 216);
      v16 = *(v0 + 224);
      v18 = *(v0 + 232);
      v65 = v17;
      v66 = v16;
      v67 = v18;
      sub_26F75E4D8(v17, v16, v18);
      sub_26F75E4D8(v17, v16, v18);
      v19 = sub_26F74B1B0(2u, 0, &v65);
      v19, v20, v21, v22, v23, v24, v25, v26;
      sub_26F75E47C(v65, v66, v67, v27, v28, v29, v30, v31);
      v64 = sub_26F7793C8();
      v65 = 0;
      v66 = 0xE000000000000000;
      sub_26F7794F8();
      v66, v32, v33, v34, v35, v36, v37, v38;
      v65 = 0xD000000000000025;
      v66 = 0x800000026F780790;
      *(v0 + 272) = v17;
      *(v0 + 280) = v16;
      *(v0 + 288) = v18;
      sub_26F74AEE0();
      v39 = sub_26F7797F8();
      v41 = v40;
      sub_26F75E490(v17, v16, v18, v42, v43, v44, v45, v46);
      MEMORY[0x274395240](v39, v41);
      v41, v47, v48, v49, v50, v51, v52, v53;
      MEMORY[0x274395240](32032, 0xE200000000000000);
      v54 = v66;
      sub_26F756E10(v64, v65, v66, 0xD000000000000058, 0x800000026F7805E0, 116);

      v54, v55, v56, v57, v58, v59, v60, v61;
    }

    else
    {
      v62 = sub_26F7793C8();
      v16 = 0x800000026F780640;
      sub_26F756E10(v62, 0xD00000000000001ALL, 0x800000026F780640, 0xD000000000000058, 0x800000026F7805E0, 110);

      LOBYTE(v18) = 2;
      v17 = 0xD00000000000001ALL;
    }

    *v15 = v17;
    v15[1] = v16;
    *(*(v0 + 408) + 16) = v18;
    v63 = *(v0 + 8);

    return v63();
  }

  else
  {
    v4 = *(v0 + 416);

    v5 = v4[2];
    v6 = v4[3];
    *(v0 + 480) = v6;
    v7 = v4[4];
    *(v0 + 488) = v7;
    v8 = v4[5];
    *(v0 + 496) = v8;
    *(v0 + 72) = v3;
    *(v0 + 80) = v2;
    *(v0 + 88) = v5;
    *(v0 + 96) = v6;
    *(v0 + 104) = v7;
    *(v0 + 112) = v8;
    v9 = v3;

    sub_26F7546E4(v7, v8);
    v10 = swift_task_alloc();
    *(v0 + 504) = v10;
    *v10 = v0;
    v10[1] = sub_26F767AA8;

    return sub_26F76489C(v0 + 72);
  }
}

uint64_t sub_26F767AA8(uint64_t a1, uint64_t a2, __int16 a3)
{
  v5 = *v4;
  *(v5 + 512) = a1;
  *(v5 + 520) = a2;
  *(v5 + 270) = a3;
  *(v5 + 528) = v3;

  if (v3)
  {
    v6 = sub_26F768138;
  }

  else
  {
    v6 = sub_26F767BC8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26F767BC8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v189 = v8;
  v9 = *(v8 + 270);
  if ((v9 & 0x100) != 0)
  {
    v88 = *(v8 + 520);
    v89 = *(v8 + 512);
    *(v8 + 368) = v89;
    *(v8 + 376) = v88;
    *(v8 + 384) = v9;
    sub_26F747008();
    swift_willThrowTypedImpl();
    v90 = swift_allocError();
    *v91 = v89;
    *(v91 + 8) = v88;
    *(v91 + 16) = v9;
    v93 = *(v8 + 488);
    v92 = *(v8 + 496);
    v94 = *(v8 + 480);
    sub_26F7694E0(*(v8 + 456), *(v8 + 464), v95, v96, v97, v98, v99, v100);
    v94, v101, v102, v103, v104, v105, v106, v107;
    sub_26F74F35C(v93, v92);
    *(v8 + 400) = v90;
    MEMORY[0x274395DF0](v90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF628, &unk_26F77B8D8);
    if (swift_dynamicCast())
    {
      v108 = *(v8 + 320);
      v109 = *(v8 + 328);
      v110 = *(v8 + 336);
      if (v110 > 0x11)
      {
        v175 = sub_26F74705C(*(v8 + 320), *(v8 + 328), *(v8 + 336));
        v177 = v176;
        sub_26F7694B8(v108, v109, v110, v178, v179, v180, v181, v182);
        v72 = 2;
        v108 = v175;
        v109 = v177;
      }

      else
      {
        if (((1 << v110) & 0x4001) != 0)
        {
          v111 = 0;
        }

        else
        {
          v111 = *(v8 + 336);
        }

        if (((1 << v110) & 0x3BFFC) != 0)
        {
          v72 = 2;
        }

        else
        {
          v72 = v111;
        }
      }

      v183 = *(v8 + 456);
      v184 = *(v8 + 464);
      v185 = *(v8 + 408);
      v186 = v108;
      v187 = v109;
      v188 = v72;
      sub_26F75E4D8(v108, v109, v72);
      sub_26F75E4D8(v108, v109, v72);
      v112 = sub_26F74B1B0(2u, 0, &v186);
      v112, v113, v114, v115, v116, v117, v118, v119;
      sub_26F75E47C(v186, v187, v188, v120, v121, v122, v123, v124);
      v125 = sub_26F7793C8();
      v186 = 0;
      v187 = 0xE000000000000000;
      sub_26F7794F8();
      v187, v126, v127, v128, v129, v130, v131, v132;
      v186 = 0xD000000000000025;
      v187 = 0x800000026F780790;
      *(v8 + 344) = v108;
      *(v8 + 352) = v109;
      *(v8 + 360) = v72;
      sub_26F74AEE0();
      v133 = sub_26F7797F8();
      v135 = v134;
      sub_26F75E490(v108, v109, v72, v136, v137, v138, v139, v140);
      MEMORY[0x274395240](v133, v135);
      v135, v141, v142, v143, v144, v145, v146, v147;
      MEMORY[0x274395240](32032, 0xE200000000000000);
      v148 = v187;
      sub_26F756E10(v125, v186, v187, 0xD000000000000058, 0x800000026F7805E0, 133);

      v184, v149, v150, v151, v152, v153, v154, v155;
      v148, v156, v157, v158, v159, v160, v161, v162;
      *v185 = v108;
      v185[1] = v109;
    }

    else
    {
      v163 = *(v8 + 456);
      v72 = *(v8 + 464);
      v164 = *(v8 + 408);
      v165 = sub_26F7793C8();
      sub_26F756E10(v165, 0xD00000000000001ALL, 0x800000026F780640, 0xD000000000000058, 0x800000026F7805E0, 126);

      v72, v166, v167, v168, v169, v170, v171, v172;
      *v164 = 0xD00000000000001ALL;
      v164[1] = 0x800000026F780640;
      LOBYTE(v72) = 2;
    }
  }

  else
  {
    v72 = *(v8 + 488);
    v10 = *(v8 + 496);
    v11 = *(v8 + 480);
    v13 = *(v8 + 456);
    v12 = *(v8 + 464);
    v15 = *(v8 + 408);
    v14 = *(v8 + 416);
    sub_26F7694E0(v13, v12, a3, a4, a5, a6, a7, a8);
    v11, v16, v17, v18, v19, v20, v21, v22;
    sub_26F74F35C(v72, v10);
    LOBYTE(v72) = sub_26F7793D8();
    sub_26F7794F8();
    0xE000000000000000, v23, v24, v25, v26, v27, v28, v29;
    sub_26F7794F8();
    0xE000000000000000, v30, v31, v32, v33, v34, v35, v36;
    v186 = 0x444964726F636572;
    v187 = 0xE90000000000003DLL;
    v37 = v14[2];
    v38 = v14[3];

    MEMORY[0x274395240](v37, v38);
    v38, v39, v40, v41, v42, v43, v44, v45;
    MEMORY[0x274395240](0x64726F636572202CLL, 0xED00003D68736148);
    v46 = v14[4];
    v47 = v14[5];
    sub_26F7546E4(v46, v47);
    v48 = sub_26F779028();
    v50 = v49;
    sub_26F74F35C(v46, v47);
    MEMORY[0x274395240](v48, v50);
    v50, v51, v52, v53, v54, v55, v56, v57;
    MEMORY[0x274395240](0x444964726F636572, 0xE90000000000003DLL);
    0xE90000000000003DLL, v58, v59, v60, v61, v62, v63, v64;
    MEMORY[0x274395240](32032, 0xE200000000000000);
    sub_26F756E10(v72, 0xD000000000000013, 0x800000026F7807C0, 0xD000000000000058, 0x800000026F7805E0, 137);
    0x800000026F7807C0, v65, v66, v67, v68, v69, v70, v71;
    v186 = 0;
    v187 = 0;
    LOBYTE(v72) = -1;
    v188 = -1;
    v73 = sub_26F74B1B0(2u, 0, &v186);

    v12, v74, v75, v76, v77, v78, v79, v80;
    v73, v81, v82, v83, v84, v85, v86, v87;
    *v15 = 0;
    v15[1] = 0;
  }

  *(*(v8 + 408) + 16) = v72;
  v173 = *(v8 + 8);

  return v173();
}

uint64_t sub_26F768138(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v101 = v8;
  v9 = *(v8 + 528);
  v11 = *(v8 + 488);
  v10 = *(v8 + 496);
  v12 = *(v8 + 480);
  sub_26F7694E0(*(v8 + 456), *(v8 + 464), a3, a4, a5, a6, a7, a8);
  v12, v13, v14, v15, v16, v17, v18, v19;
  sub_26F74F35C(v11, v10);
  *(v8 + 400) = v9;
  MEMORY[0x274395DF0](v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF628, &unk_26F77B8D8);
  if (swift_dynamicCast())
  {
    v21 = *(v8 + 320);
    v20 = *(v8 + 328);
    v22 = *(v8 + 336);
    if (v22 > 0x11)
    {
      v87 = sub_26F74705C(*(v8 + 320), *(v8 + 328), *(v8 + 336));
      v89 = v88;
      sub_26F7694B8(v21, v20, v22, v90, v91, v92, v93, v94);
      v24 = 2;
      v21 = v87;
      v20 = v89;
    }

    else
    {
      if (((1 << v22) & 0x4001) != 0)
      {
        v23 = 0;
      }

      else
      {
        v23 = *(v8 + 336);
      }

      if (((1 << v22) & 0x3BFFC) != 0)
      {
        v24 = 2;
      }

      else
      {
        v24 = v23;
      }
    }

    v96 = *(v8 + 456);
    v97 = *(v8 + 464);
    v25 = *(v8 + 408);
    v98 = v21;
    v99 = v20;
    v100 = v24;
    sub_26F75E4D8(v21, v20, v24);
    sub_26F75E4D8(v21, v20, v24);
    v26 = sub_26F74B1B0(2u, 0, &v98);
    v26, v27, v28, v29, v30, v31, v32, v33;
    sub_26F75E47C(v98, v99, v100, v34, v35, v36, v37, v38);
    v95 = sub_26F7793C8();
    v98 = 0;
    v99 = 0xE000000000000000;
    sub_26F7794F8();
    v99, v39, v40, v41, v42, v43, v44, v45;
    v98 = 0xD000000000000025;
    v99 = 0x800000026F780790;
    *(v8 + 344) = v21;
    *(v8 + 352) = v20;
    *(v8 + 360) = v24;
    sub_26F74AEE0();
    v46 = sub_26F7797F8();
    v48 = v47;
    sub_26F75E490(v21, v20, v24, v49, v50, v51, v52, v53);
    MEMORY[0x274395240](v46, v48);
    v48, v54, v55, v56, v57, v58, v59, v60;
    MEMORY[0x274395240](32032, 0xE200000000000000);
    v61 = v99;
    sub_26F756E10(v95, v98, v99, 0xD000000000000058, 0x800000026F7805E0, 133);

    v97, v62, v63, v64, v65, v66, v67, v68;
    v61, v69, v70, v71, v72, v73, v74, v75;
    *v25 = v21;
  }

  else
  {
    v24 = *(v8 + 456);
    v76 = *(v8 + 464);
    v25 = *(v8 + 408);
    v77 = sub_26F7793C8();
    v20 = 0x800000026F780640;
    sub_26F756E10(v77, 0xD00000000000001ALL, 0x800000026F780640, 0xD000000000000058, 0x800000026F7805E0, 126);

    v76, v78, v79, v80, v81, v82, v83, v84;
    *v25 = 0xD00000000000001ALL;
    LOBYTE(v24) = 2;
  }

  v25[1] = v20;
  *(*(v8 + 408) + 16) = v24;
  v85 = *(v8 + 8);

  return v85();
}

uint64_t sub_26F768460()
{
  v56 = v0;

  v1 = *(v0 + 472);
  *(v0 + 392) = v1;
  MEMORY[0x274395DF0](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF628, &unk_26F77B8D8);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 408);
    v4 = *(v0 + 216);
    v3 = *(v0 + 224);
    v5 = *(v0 + 232);
    v53 = v4;
    v54 = v3;
    v55 = v5;
    sub_26F75E4D8(v4, v3, v5);
    sub_26F75E4D8(v4, v3, v5);
    v6 = sub_26F74B1B0(2u, 0, &v53);
    v6, v7, v8, v9, v10, v11, v12, v13;
    sub_26F75E47C(v53, v54, v55, v14, v15, v16, v17, v18);
    v19 = sub_26F7793C8();
    v53 = 0;
    v54 = 0xE000000000000000;
    sub_26F7794F8();
    v54, v20, v21, v22, v23, v24, v25, v26;
    v53 = 0xD000000000000025;
    v54 = 0x800000026F780790;
    *(v0 + 272) = v4;
    *(v0 + 280) = v3;
    *(v0 + 288) = v5;
    sub_26F74AEE0();
    v27 = sub_26F7797F8();
    v29 = v28;
    sub_26F75E490(v4, v3, v5, v30, v31, v32, v33, v34);
    MEMORY[0x274395240](v27, v29);
    v29, v35, v36, v37, v38, v39, v40, v41;
    MEMORY[0x274395240](32032, 0xE200000000000000);
    v42 = v54;
    sub_26F756E10(v19, v53, v54, 0xD000000000000058, 0x800000026F7805E0, 116);

    v42, v43, v44, v45, v46, v47, v48, v49;
    *v2 = v4;
  }

  else
  {
    v2 = *(v0 + 408);
    v50 = sub_26F7793C8();
    v3 = 0x800000026F780640;
    sub_26F756E10(v50, 0xD00000000000001ALL, 0x800000026F780640, 0xD000000000000058, 0x800000026F7805E0, 110);

    *v2 = 0xD00000000000001ALL;
    LOBYTE(v5) = 2;
  }

  v2[1] = v3;
  *(*(v0 + 408) + 16) = v5;
  v51 = *(v0 + 8);

  return v51();
}

void *sub_26F7686E4()
{
  type metadata accessor for TKRecordService(0);
  v0 = swift_allocObject();
  result = sub_26F7688CC();
  qword_2806EF7E0 = v0;
  return result;
}

uint64_t static TKRecordService.shared.getter()
{
  if (qword_2806EF2A8 != -1)
  {
    swift_once();
  }
}

char *TKRecordService.deinit()
{

  v1 = OBJC_IVAR____TtC8TrustKit15TKRecordService_logger;
  v2 = sub_26F779188();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t TKRecordService.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC8TrustKit15TKRecordService_logger;
  v2 = sub_26F779188();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_26F7688CC()
{
  type metadata accessor for EligibilityManager(0);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v2 = OBJC_IVAR____TtC8TrustKit18EligibilityManager_logger;
  if (qword_28141B5A8 != -1)
  {
    swift_once();
  }

  v3 = sub_26F779188();
  v4 = __swift_project_value_buffer(v3, qword_28141B5F0);
  v5 = *(*(v3 - 8) + 16);
  v5(v1 + v2, v4, v3);
  v0[2] = v1;
  type metadata accessor for AttestationManager(0);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_26F756138();
  v7 = OBJC_IVAR____TtC8TrustKit18AttestationManager_logger;
  if (qword_2806EF298 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v3, qword_2806F4998);
  v5(v6 + v7, v8, v3);
  if (!DeviceIdentityIsSupported())
  {

    v6 = 0;
  }

  v0[3] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF810, &qword_26F77C390);
  v9 = swift_allocObject();
  type metadata accessor for RecordOperation(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC8TrustKit15RecordOperation_logger;
  if (qword_2806EF2A0 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v3, qword_2806F49B0);
  v5(v10 + v11, v12, v3);
  v9[2] = v10;
  v5(v9 + *(*v9 + 104), v12, v3);
  v0[4] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF818, &qword_26F77C398);
  v13 = swift_allocObject();
  type metadata accessor for KeyOperation(0);
  v14 = swift_allocObject();
  v5(v14 + OBJC_IVAR____TtC8TrustKit12KeyOperation_logger, v12, v3);
  v13[2] = v14;
  v5(v13 + *(*v13 + 104), v12, v3);
  v0[5] = v13;
  type metadata accessor for ClientAnalyticsManager(0);
  v15 = swift_allocObject();
  v16 = OBJC_IVAR____TtC8TrustKit22ClientAnalyticsManager_logger;
  if (qword_28141B5B0 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_28141B608);
  v5(v15 + v16, v17, v3);
  v18 = OBJC_IVAR____TtC8TrustKit22ClientAnalyticsManager_eligibilityManager;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v5(v19 + OBJC_IVAR____TtC8TrustKit18EligibilityManager_logger, v4, v3);
  *(v15 + v18) = v19;
  v0[6] = v15;
  v20 = OBJC_IVAR____TtC8TrustKit15TKRecordService_logger;
  if (qword_2806EF278 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v3, qword_2806F4938);
  v5(v0 + v20, v21, v3);
  return v0;
}

_TtC8TrustKit22TrustKitUIServerClient *sub_26F768CD4(_TtC8TrustKit22TrustKitUIServerClient *result, int64_t a2, void *a3, _TtC8TrustKit22TrustKitUIServerClient *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->connection;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
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

  v12 = *a4->endpoint;
  if (v11 <= v12)
  {
    v13 = *a4->endpoint;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF678, &qword_26F77B988);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    *v14->endpoint = v12;
    *v14->connection = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v17 = v14->$__lazy_storage_$_interface;
  v18 = a4->$__lazy_storage_$_interface;
  if (v9)
  {
    if (v14 != a4 || v17 >= &v18[16 * v12])
    {
      memmove(v17, v18, 16 * v12);
    }

    *a4->endpoint = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

unint64_t sub_26F768DE0(uint64_t a1, uint64_t a2)
{
  sub_26F779848();
  sub_26F779298();
  v4 = sub_26F779888();

  return sub_26F768E9C(a1, a2, v4);
}

unint64_t sub_26F768E58(uint64_t a1)
{
  v2 = sub_26F779488();

  return sub_26F768F54(a1, v2);
}

unint64_t sub_26F768E9C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_26F779748())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_26F768F54(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_26F769820(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x274395430](v9, a1);
      sub_26F76987C(v9);
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

char *sub_26F76901C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26F76903C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26F76903C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF678, &qword_26F77B988);
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

unint64_t sub_26F769148(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF7D8, &qword_26F77C2D8);
    v3 = sub_26F779608();
    v4 = a1 + 32;

    while (1)
    {
      sub_26F7697B8(v4, &v13, &qword_2806EF2E8, &qword_26F77A568);
      v5 = v13;
      v6 = v14;
      result = sub_26F768DE0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_26F754784(&v15, (v3[7] + 32 * result));
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

unint64_t sub_26F769278(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF850, &qword_26F77C3C0);
    v3 = sub_26F779608();
    v4 = a1 + 32;

    while (1)
    {
      sub_26F7697B8(v4, v13, &qword_2806EF688, &qword_26F77B998);
      result = sub_26F768E58(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_26F754784(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_26F7693B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF7D0, &qword_26F77C2D0);
    v3 = sub_26F779608();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_26F768DE0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

void sub_26F7694B8(uint64_t a1, _TtC8TrustKit22TrustKitUIServerClient *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a3 <= 0x1Cu)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
  }
}

void sub_26F7694D0(uint64_t a1, _TtC8TrustKit22TrustKitUIServerClient *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a4)
  {
    sub_26F7694B8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
  }
}

void sub_26F7694E0(void *a1, _TtC8TrustKit22TrustKitUIServerClient *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a2)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
  }
}

uint64_t type metadata accessor for TKRecordService(uint64_t a1)
{
  result = qword_2806EF800;
  if (!qword_2806EF800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F769578(uint64_t a1)
{
  result = sub_26F779188();
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

unint64_t sub_26F76969C()
{
  result = qword_2806EF830;
  if (!qword_2806EF830)
  {
    sub_26F779058();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF830);
  }

  return result;
}

unint64_t sub_26F7696F4()
{
  result = qword_2806EF838;
  if (!qword_2806EF838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806EF680, &qword_26F77B990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF838);
  }

  return result;
}

unint64_t sub_26F769758()
{
  result = qword_2806EF840;
  if (!qword_2806EF840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF840);
  }

  return result;
}

void sub_26F7697AC(uint64_t a1, _TtC8TrustKit22TrustKitUIServerClient *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a4)
  {
    sub_26F7694B8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    sub_26F74F35C(a1, a2);
  }
}

uint64_t sub_26F7697B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_26F7698D0()
{
  result = qword_2806EF858;
  if (!qword_2806EF858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF858);
  }

  return result;
}

uint64_t sub_26F76994C(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = *a1 == 0;
  if (*a1)
  {
    v9 = 0x636E657265666E69;
  }

  else
  {
    v9 = 0x756F72676B636162;
  }

  if (v8)
  {
    v10 = 0xEA0000000000646ELL;
  }

  else
  {
    v10 = 0xE900000000000065;
  }

  if (*a2)
  {
    v11 = 0x636E657265666E69;
  }

  else
  {
    v11 = 0x756F72676B636162;
  }

  if (*a2)
  {
    v12 = 0xE900000000000065;
  }

  else
  {
    v12 = 0xEA0000000000646ELL;
  }

  if (v9 == v11 && v10 == v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_26F779748();
  }

  v10, a2, v11, a4, a5, a6, a7, a8;
  v12, v15, v16, v17, v18, v19, v20, v21;
  return v14 & 1;
}

uint64_t sub_26F7699FC()
{
  v1 = *v0;
  sub_26F779848();
  if (v1)
  {
    v2 = 0xE900000000000065;
  }

  else
  {
    v2 = 0xEA0000000000646ELL;
  }

  sub_26F779298();
  v2, v3, v4, v5, v6, v7, v8, v9;
  return sub_26F779888();
}

void sub_26F769A88(uint64_t a1)
{
  if (*v1)
  {
    v2 = 0xE900000000000065;
  }

  else
  {
    v2 = 0xEA0000000000646ELL;
  }

  sub_26F779298();

  v2, v3, v4, v5, v6, v7, v8, v9;
}

uint64_t sub_26F769B00(uint64_t a1)
{
  v2 = *v1;
  sub_26F779848();
  if (v2)
  {
    v3 = 0xE900000000000065;
  }

  else
  {
    v3 = 0xEA0000000000646ELL;
  }

  sub_26F779298();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_26F779888();
}

void sub_26F769B88(void *a1@<X0>, char *a2@<X8>)
{
  v3 = a1[1];
  v4 = sub_26F779618();
  v3, v5, v6, v7, v8, v9, v10, v11;
  if (v4 == 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  if (!v4)
  {
    v12 = 0;
  }

  *a2 = v12;
}

void sub_26F769BE8(uint64_t *a1@<X8>)
{
  v2 = 0x756F72676B636162;
  if (*v1)
  {
    v2 = 0x636E657265666E69;
  }

  v3 = 0xEA0000000000646ELL;
  if (*v1)
  {
    v3 = 0xE900000000000065;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26F769C30()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_26F769E10(v0 + OBJC_IVAR____TtC8TrustKit37SignatureAnalysisDecisioningComponent_changeTokenCache);

  v1 = OBJC_IVAR____TtC8TrustKit37SignatureAnalysisDecisioningComponent_logger;
  v2 = sub_26F779188();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_26F769D1C(uint64_t a1)
{
  result = sub_26F779188();
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

uint64_t sub_26F769E10(uint64_t a1)
{
  v2 = type metadata accessor for ChangeTokenCache(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26F769EB4(uint64_t a1)
{
  result = type metadata accessor for SpamDecisioningAsset(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8TrustKit21SignatureMatchUtilityO12SearchResultVSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_s6ResultOy8TrustKit37SignatureAnalysisDecisioningComponentC16FetchInformationVAC4FailOGSg(uint64_t a1)
{
  v1 = *(a1 + 33);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_26F769F9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 105))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_26F769FF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_26F76A0C0(uint64_t a1)
{
  result = type metadata accessor for SpamDecisioningAsset(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_26F76A148()
{
  result = qword_2806EF8A8;
  if (!qword_2806EF8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF8A8);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26F76A1C0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_26F76A208(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26F76A25C(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (qword_28141B580 != -1)
  {
    swift_once();
  }

  v4 = qword_28141B5C8;
  v5 = unk_28141B5D0;
  v6 = sub_26F76A884();
  v7 = sub_26F74BD78(v4, v5, v6);
  v6, v8, v9, v10, v11, v12, v13, v14;
  if (v7)
  {
    if (sub_26F76A420(v3, a2))
    {
      return 1;
    }

    v31 = sub_26F7793D8();
    sub_26F756E10(v31, 0xD000000000000018, 0x800000026F780D20, 0xD000000000000057, 0x800000026F780CC0, 26);
  }

  else
  {
    v16 = sub_26F7793D8();
    sub_26F7794F8();
    0xE000000000000000, v17, v18, v19, v20, v21, v22, v23;
    MEMORY[0x274395240](v4, v5);
    MEMORY[0x274395240](32032, 0xE200000000000000);
    sub_26F756E10(v16, 0xD00000000000002ALL, 0x800000026F780C90, 0xD000000000000057, 0x800000026F780CC0, 21);
    0x800000026F780C90, v24, v25, v26, v27, v28, v29, v30;
  }

  return 0;
}

uint64_t sub_26F76A420(unsigned __int8 a1, uint64_t a2)
{
  error[1] = *MEMORY[0x277D85DE8];
  if (*(a2 + 32))
  {
    v3 = SecTaskCreateFromSelf(0);
    if (!v3)
    {
      v4 = sub_26F7793C8();
      v5 = 0xD000000000000019;
      v6 = 0x800000026F780D40;
      v7 = 59;
LABEL_14:
      sub_26F756E10(v4, v5, v6, 0xD000000000000057, 0x800000026F780CC0, v7);
      return 0;
    }
  }

  else
  {
    v8 = *(a2 + 16);
    *v49.val = *a2;
    *&v49.val[4] = v8;
    v3 = SecTaskCreateWithAuditToken(*MEMORY[0x277CBECE8], &v49);
    if (!v3)
    {
      v4 = sub_26F7793C8();
      v5 = 0xD00000000000002ALL;
      v6 = 0x800000026F780E20;
      v7 = 52;
      goto LABEL_14;
    }
  }

  v9 = v3;
  error[0] = 0;
  if (a1 - 1 >= 2)
  {
    if (a1)
    {
      v16 = sub_26F779238();
      v17 = SecTaskCopyValueForEntitlement(v9, v16, error);

      if (v17)
      {
        *v49.val = v17;
        if (swift_dynamicCast())
        {
          goto LABEL_17;
        }
      }

      v12 = sub_26F7793C8();
      v13 = 93;
    }

    else
    {
      v14 = sub_26F779238();
      v15 = SecTaskCopyValueForEntitlement(v9, v14, error);

      if (v15)
      {
        *v49.val = v15;
        if (swift_dynamicCast())
        {
          goto LABEL_17;
        }
      }

      v12 = sub_26F7793C8();
      v13 = 77;
    }

LABEL_21:
    sub_26F756E10(v12, 0xD00000000000001CLL, 0x800000026F780D80, 0xD000000000000057, 0x800000026F780CC0, v13);
    v46 = error[0];
    if (!error[0])
    {
LABEL_23:

      return 0;
    }

LABEL_22:

    goto LABEL_23;
  }

  v10 = sub_26F779238();
  v11 = SecTaskCopyValueForEntitlement(v9, v10, error);

  if (!v11 || (*v49.val = v11, !swift_dynamicCast()))
  {
    v12 = sub_26F7793C8();
    v13 = 85;
    goto LABEL_21;
  }

LABEL_17:
  v18 = error[0];
  if (error[0])
  {
    v19 = sub_26F7793C8();
    *v49.val = 0;
    *&v49.val[2] = 0xE000000000000000;
    sub_26F7794F8();
    *&v49.val[2], v20, v21, v22, v23, v24, v25, v26;
    *v49.val = 0xD000000000000025;
    *&v49.val[2] = 0x800000026F780DA0;
    v27 = v18;
    v50 = v27;
    type metadata accessor for CFError(0);
    sub_26F74F238();
    v28 = sub_26F7797F8();
    v30 = v29;

    MEMORY[0x274395240](v28, v30);
    v30, v31, v32, v33, v34, v35, v36, v37;
    MEMORY[0x274395240](32032, 0xE200000000000000);
    v38 = *&v49.val[2];
    sub_26F756E10(v19, *v49.val, *&v49.val[2], 0xD000000000000057, 0x800000026F780CC0, 101);
    v38, v39, v40, v41, v42, v43, v44, v45;
    v46 = error[0];
    if (!error[0])
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v48 = v50;

  return v48;
}

uint64_t sub_26F76A884()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = sub_26F76A8E0();
    v2 = *(v0 + 16);
    *(v0 + 16) = v1;

    v2, v3, v4, v5, v6, v7, v8, v9;
  }

  return v1;
}

uint64_t sub_26F76A8E0()
{
  v0 = sub_26F76B458(&unk_287FC5F98);
  swift_arrayDestroy();
  v13 = v0;
  if (qword_28141B570 != -1)
  {
    swift_once();
  }

  if (qword_28141B578)
  {
    v1 = qword_28141B578;
    v2 = sub_26F779238();
    v3 = [v1 BOOLForKey_];

    if (v3)
    {
      sub_26F76AB94(v12, 0xD000000000000014, 0x800000026F7800A0);
      v12[1], v4, v5, v6, v7, v8, v9, v10;
      return v13;
    }
  }

  return v0;
}

uint64_t sub_26F76AA00(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  v9 = OBJC_IVAR____TtC8TrustKit18EligibilityManager_logger;
  v10 = sub_26F779188();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EligibilityManager(uint64_t a1)
{
  result = qword_28141B3D0;
  if (!qword_28141B3D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F76AAF8(uint64_t a1)
{
  result = sub_26F779188();
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

uint64_t sub_26F76AB94(void *a1, uint64_t a2, _TtC8TrustKit22TrustKitUIServerClient *a3)
{
  v7 = *v3;
  sub_26F779848();
  sub_26F779298();
  v8 = sub_26F779888();
  v15 = -1 << *(v7 + 32);
  v16 = v8 & ~v15;
  if ((*(v7 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    while (1)
    {
      v18 = (*(v7 + 48) + 16 * v16);
      v19 = v18[1];
      v20 = *v18 == a2 && v19 == a3;
      if (v20 || (sub_26F779748() & 1) != 0)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v7 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    a3, v19, v9, v10, v11, v12, v13, v14;
    v23 = (*(v7 + 48) + 16 * v16);
    v24 = v23[1];
    *a1 = *v23;
    a1[1] = v24;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;

    sub_26F76AF44(a2, a3, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_26F76ACE4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF8B0, &unk_26F77CA30);
  result = sub_26F7794C8();
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
      sub_26F779848();
      sub_26F779298();
      result = sub_26F779888();
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

uint64_t sub_26F76AF44(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_26F76ACE4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_26F76B0C4();
      goto LABEL_16;
    }

    sub_26F76B220(v8 + 1);
  }

  v10 = *v4;
  sub_26F779848();
  sub_26F779298();
  result = sub_26F779888();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_26F779748();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_26F779788();
  __break(1u);
  return result;
}

void *sub_26F76B0C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF8B0, &unk_26F77CA30);
  v2 = *v0;
  v3 = sub_26F7794B8();
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

  return result;
}

uint64_t sub_26F76B220(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF8B0, &unk_26F77CA30);
  result = sub_26F7794C8();
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
      sub_26F779848();

      sub_26F779298();
      result = sub_26F779888();
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

uint64_t sub_26F76B458(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF8B0, &unk_26F77CA30);
    v3 = sub_26F7794D8();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_26F779848();

      sub_26F779298();
      result = sub_26F779888();
      v17 = ~(-1 << *(v3 + 32));
      for (i = result & v17; ; i = (i + 1) & v17)
      {
        v19 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v19) == 0)
        {
          break;
        }

        v20 = (*(v3 + 48) + 16 * i);
        v21 = v20[1];
        if (*v20 != v9 || v21 != v8)
        {
          result = sub_26F779748();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        v8, v21, v11, v12, v13, v14, v15, v16;
        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v19;
      v23 = (*(v3 + 48) + 16 * i);
      *v23 = v9;
      v23[1] = v8;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (!v25)
      {
        *(v3 + 16) = v26;
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

void sub_26F76B5C0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_26F779238();
  v2 = [v0 initWithSuiteName_];

  qword_28141B578 = v2;
}

uint64_t sub_26F76B630(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v10 = "it.inference.signature_analysis";
      v9 = 0xD000000000000028;
    }

    else
    {
      v10 = "it.inference.logic_graph";
      v9 = 0xD00000000000001CLL;
    }
  }

  else
  {
    if (a1)
    {
      v9 = 0xD00000000000002FLL;
    }

    else
    {
      v9 = 0xD00000000000002BLL;
    }

    if (v8)
    {
      v10 = "it.inference.sender_look_up";
    }

    else
    {
      v10 = "Read_Check_Enabled";
    }
  }

  v11 = (v10 | 0x8000000000000000);
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v12 = 0xD000000000000028;
    }

    else
    {
      v12 = 0xD00000000000001CLL;
    }

    if (a2 == 2)
    {
      v13 = "it.inference.signature_analysis";
    }

    else
    {
      v13 = "it.inference.logic_graph";
    }
  }

  else
  {
    if (a2)
    {
      v12 = 0xD00000000000002FLL;
    }

    else
    {
      v12 = 0xD00000000000002BLL;
    }

    if (a2)
    {
      v13 = "it.inference.sender_look_up";
    }

    else
    {
      v13 = "Read_Check_Enabled";
    }
  }

  v14 = (v13 | 0x8000000000000000);
  if (v9 == v12 && v11 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_26F779748();
  }

  v11, a2, v12, a4, a5, a6, a7, a8;
  v14, v16, v17, v18, v19, v20, v21, v22;
  return v15 & 1;
}

uint64_t sub_26F76B760(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = 0xD00000000000001ELL;
  v9 = "sResult";
  v10 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v12 = 0xD00000000000002ALL;
    }

    else
    {
      v12 = 0xD000000000000024;
    }

    if (v10)
    {
      v11 = "it.orca.createRecord";
    }

    else
    {
      v11 = "sResult";
    }
  }

  else if (a1 == 2)
  {
    v11 = "it.orca.fetchEncryptionKey";
    v12 = 0xD00000000000001ELL;
  }

  else if (a1 == 3)
  {
    v11 = "com.apple.trustkit.orca.upload";
    v12 = 0xD000000000000026;
  }

  else
  {
    v11 = "it.decisioning.prepare";
    v12 = 0xD000000000000028;
  }

  v13 = (v11 | 0x8000000000000000);
  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0xD00000000000002ALL;
    }

    else
    {
      v8 = 0xD000000000000024;
    }

    if (a2)
    {
      v9 = "it.orca.createRecord";
    }
  }

  else if (a2 == 2)
  {
    v9 = "it.orca.fetchEncryptionKey";
  }

  else if (a2 == 3)
  {
    v9 = "com.apple.trustkit.orca.upload";
    v8 = 0xD000000000000026;
  }

  else
  {
    v9 = "it.decisioning.prepare";
    v8 = 0xD000000000000028;
  }

  v14 = (v9 | 0x8000000000000000);
  if (v12 == v8 && v13 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_26F779748();
  }

  v13, a2, v8, a4, a5, a6, a7, a8;
  v14, v16, v17, v18, v19, v20, v21, v22;
  return v15 & 1;
}

uint64_t sub_26F76B8D0(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = 0xE900000000000067;
  v9 = a1;
  v10 = 0xED000070756B6F6FLL;
  v11 = 0x636E657265666E49;
  if (a1 == 2)
  {
    v11 = 0x4C5F7265646E6553;
  }

  else
  {
    v10 = 0xE900000000000065;
  }

  v12 = 0xD000000000000012;
  if (a1)
  {
    v8 = 0x800000026F77E800;
  }

  else
  {
    v12 = 0x6E6974726F706552;
  }

  if (a1 <= 1u)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  if (v9 <= 1)
  {
    v14 = v8;
  }

  else
  {
    v14 = v10;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v15 = 0x4C5F7265646E6553;
    }

    else
    {
      v15 = 0x636E657265666E49;
    }

    if (a2 == 2)
    {
      v16 = 0xED000070756B6F6FLL;
    }

    else
    {
      v16 = 0xE900000000000065;
    }

    if (v13 != v15)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a2)
    {
      v15 = 0xD000000000000012;
    }

    else
    {
      v15 = 0x6E6974726F706552;
    }

    if (a2)
    {
      v16 = 0x800000026F77E800;
    }

    else
    {
      v16 = 0xE900000000000067;
    }

    if (v13 != v15)
    {
      goto LABEL_31;
    }
  }

  if (v14 != v16)
  {
LABEL_31:
    v17 = sub_26F779748();
    goto LABEL_32;
  }

  v17 = 1;
LABEL_32:
  v14, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

uint64_t sub_26F76BA30(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v9 = 0xD000000000000010;
      v10 = 0x800000026F77E840;
    }

    else
    {
      v9 = 0x62616E455F534352;
      v10 = 0xEB0000000064656CLL;
    }
  }

  else
  {
    if (a1)
    {
      v9 = 0x62616E455F534D53;
    }

    else
    {
      v9 = 1934381653;
    }

    if (v8)
    {
      v10 = 0xEB0000000064656CLL;
    }

    else
    {
      v10 = 0xE400000000000000;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0xD000000000000010;
      v12 = 0x800000026F77E840;
      if (v9 != 0xD000000000000010)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v11 = 0x62616E455F534352;
      v12 = 0xEB0000000064656CLL;
      if (v9 != 0x62616E455F534352)
      {
LABEL_26:
        v13 = sub_26F779748();
        goto LABEL_27;
      }
    }
  }

  else
  {
    if (a2)
    {
      v11 = 0x62616E455F534D53;
    }

    else
    {
      v11 = 1934381653;
    }

    if (a2)
    {
      v12 = 0xEB0000000064656CLL;
    }

    else
    {
      v12 = 0xE400000000000000;
    }

    if (v9 != v11)
    {
      goto LABEL_26;
    }
  }

  if (v10 != v12)
  {
    goto LABEL_26;
  }

  v13 = 1;
LABEL_27:
  v10, a2, v11, a4, a5, a6, a7, a8;
  v12, v14, v15, v16, v17, v18, v19, v20;
  return v13 & 1;
}

uint64_t sub_26F76BBAC(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = 0xD000000000000010;
  v9 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v11 = 0x62616E455F534D53;
    }

    else
    {
      if (a1 == 4)
      {
        v12 = 0x800000026F77E840;
        v11 = 0xD000000000000010;
        goto LABEL_13;
      }

      v11 = 0x62616E455F534352;
    }

    v12 = 0xEB0000000064656CLL;
  }

  else
  {
    v10 = 0x800000026F77EA50;
    v11 = 0xD000000000000013;
    a4 = 0xD000000000000012;
    if (v9 != 1)
    {
      v11 = 0xD000000000000012;
      v10 = 0x800000026F77EA70;
    }

    if (v9)
    {
      v12 = v10;
    }

    else
    {
      v11 = 0xD000000000000015;
      v12 = 0x800000026F77EA30;
    }
  }

LABEL_13:
  if (a2 > 2u)
  {
    if (a2 == 4)
    {
      v17 = 0x800000026F77E840;
    }

    else
    {
      v8 = 0x62616E455F534352;
      v17 = 0xEB0000000064656CLL;
    }

    if (a2 == 3)
    {
      v15 = 0x62616E455F534D53;
    }

    else
    {
      v15 = v8;
    }

    if (a2 == 3)
    {
      v16 = 0xEB0000000064656CLL;
    }

    else
    {
      v16 = v17;
    }

    if (v11 != v15)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v13 = 0x800000026F77EA70;
    v14 = 0xD000000000000012;
    if (a2 == 1)
    {
      v14 = 0xD000000000000013;
      v13 = 0x800000026F77EA50;
    }

    if (a2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0xD000000000000015;
    }

    if (a2)
    {
      v16 = v13;
    }

    else
    {
      v16 = 0x800000026F77EA30;
    }

    if (v11 != v15)
    {
      goto LABEL_36;
    }
  }

  if (v12 != v16)
  {
LABEL_36:
    v18 = sub_26F779748();
    goto LABEL_37;
  }

  v18 = 1;
LABEL_37:
  v12, a2, v15, a4, a5, a6, a7, a8;
  v16, v19, v20, v21, v22, v23, v24, v25;
  return v18 & 1;
}

uint64_t sub_26F76BD54(unsigned __int8 a1)
{
  sub_26F779848();
  v2 = 0x800000026F77E840;
  if (a1 != 4)
  {
    v2 = 0xEB0000000064656CLL;
  }

  if (a1 == 3)
  {
    v2 = 0xEB0000000064656CLL;
  }

  v3 = 0x800000026F77EA30;
  v4 = 0x800000026F77EA50;
  if (a1 != 1)
  {
    v4 = 0x800000026F77EA70;
  }

  if (a1)
  {
    v3 = v4;
  }

  if (a1 <= 2u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  sub_26F779298();
  v5, v6, v7, v8, v9, v10, v11, v12;
  return sub_26F779888();
}

uint64_t sub_26F76BE64(uint64_t a1, unsigned __int8 a2)
{
  sub_26F779848();
  v3 = 0x800000026F77E840;
  if (a2 != 4)
  {
    v3 = 0xEB0000000064656CLL;
  }

  if (a2 == 3)
  {
    v3 = 0xEB0000000064656CLL;
  }

  v4 = 0x800000026F77EA30;
  v5 = 0x800000026F77EA50;
  if (a2 != 1)
  {
    v5 = 0x800000026F77EA70;
  }

  if (a2)
  {
    v4 = v5;
  }

  if (a2 <= 2u)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  sub_26F779298();
  v6, v7, v8, v9, v10, v11, v12, v13;
  return sub_26F779888();
}

uint64_t sub_26F76BF70(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF900, &qword_26F77CBD8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F76F8BC();
  sub_26F7798A8();
  v8 = v2[7];
  v9 = v2[9];
  v70 = v2[8];
  v71 = v9;
  v10 = v2[3];
  v11 = v2[5];
  v66 = v2[4];
  v67 = v11;
  v12 = v2[5];
  v13 = v2[7];
  v68 = v2[6];
  v69 = v13;
  v14 = v2[1];
  v63[0] = *v2;
  v63[1] = v14;
  v15 = v2[3];
  v17 = *v2;
  v16 = v2[1];
  v64 = v2[2];
  v65 = v15;
  v18 = v2[9];
  v58 = v70;
  v59 = v18;
  v54 = v66;
  v55 = v12;
  v56 = v68;
  v57 = v8;
  v50 = v17;
  v51 = v16;
  v72 = *(v2 + 20);
  v60 = *(v2 + 20);
  v52 = v64;
  v53 = v10;
  v49 = 0;
  sub_26F76FB28(v63, v47);
  sub_26F76FB60();
  v19 = v73;
  sub_26F779728();
  v47[8] = v58;
  v47[9] = v59;
  v48 = v60;
  v47[4] = v54;
  v47[5] = v55;
  v47[6] = v56;
  v47[7] = v57;
  v47[0] = v50;
  v47[1] = v51;
  v47[2] = v52;
  v47[3] = v53;
  sub_26F76F9B8(v47);
  if (!v19)
  {
    v20 = *(v2 + 248);
    v21 = *(v2 + 280);
    v61[6] = *(v2 + 264);
    v61[7] = v21;
    v62 = *(v2 + 37);
    v22 = *(v2 + 184);
    v23 = *(v2 + 216);
    v61[2] = *(v2 + 200);
    v61[3] = v23;
    v61[4] = *(v2 + 232);
    v61[5] = v20;
    v61[0] = *(v2 + 168);
    v61[1] = v22;
    v24 = *(v2 + 248);
    v25 = *(v2 + 280);
    v44 = *(v2 + 264);
    v45 = v25;
    v46 = *(v2 + 37);
    v26 = *(v2 + 184);
    v27 = *(v2 + 216);
    v40 = *(v2 + 200);
    v41 = v27;
    v42 = *(v2 + 232);
    v43 = v24;
    v38 = *(v2 + 168);
    v39 = v26;
    v37 = 1;
    sub_26F76FBB4(v61, v35);
    sub_26F76FBEC();
    sub_26F779728();
    v35[6] = v44;
    v35[7] = v45;
    v36 = v46;
    v35[2] = v40;
    v35[3] = v41;
    v35[4] = v42;
    v35[5] = v43;
    v35[0] = v38;
    v35[1] = v39;
    sub_26F76F9E8(v35);
    v28 = v2[20];
    v33 = v2[19];
    v34 = v28;
    v32 = 2;
    sub_26F76FC40();
    sub_26F779728();
    v29 = v2[22];
    v33 = v2[21];
    v34 = v29;
    v32 = 3;
    sub_26F76FC94();
    sub_26F779728();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_26F76C348(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EFB10, &qword_26F77DB20);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F7727E8();
  sub_26F7798A8();
  v14 = 0;
  sub_26F7796E8();
  if (!v5)
  {
    v13 = 1;
    sub_26F7796E8();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_26F76C564(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = v5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_26F7798A8();
  v13 = v7[1];
  v17 = *v7;
  v18 = v13;
  v19 = 0;
  sub_26F7722FC();
  v14 = v16[1];
  sub_26F779728();
  if (!v14)
  {
    *&v17 = *(v7 + 4);
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF988, &qword_26F77CFE0);
    sub_26F771420(&qword_2806EF9E8, MEMORY[0x277D837D8], MEMORY[0x277D839B8], MEMORY[0x277D83508]);
    sub_26F779728();
    *&v17 = *(v7 + 5);
    v19 = 2;
    sub_26F779728();
    *&v17 = *(v7 + 6);
    v19 = 3;
    sub_26F779728();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_26F76C7FC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF9B8, &qword_26F77CFF8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v164[-v7 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F770ADC();
  sub_26F7798A8();
  v9 = v3[1];
  v173[0] = *v3;
  v173[1] = v9;
  v11 = *v3;
  v10 = v3[1];
  v173[2] = v3[2];
  v174 = *(v3 + 6);
  v165 = v11;
  v166 = v10;
  v167 = v3[2];
  v168 = *(v3 + 6);
  v175 = 0;
  sub_26F771934(v173, v164);
  sub_26F77196C();
  sub_26F779728();
  if (v2)
  {
    v19 = *(&v165 + 1);
    v20 = *(&v166 + 1);
    v21 = v167;
    v168, v12, v13, v14, v15, v16, v17, v18;
    *(&v21 + 1), v22, v23, v24, v25, v26, v27, v28;
    v21, v29, v30, v31, v32, v33, v34, v35;
    v20, v36, v37, v38, v39, v40, v41, v42;
    v19, v43, v44, v45, v46, v47, v48, v49;
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    v163 = v6;
    v51 = *(&v165 + 1);
    v52 = *(&v166 + 1);
    v53 = v167;
    v168, v12, v13, v14, v15, v16, v17, v18;
    *(&v53 + 1), v54, v55, v56, v57, v58, v59, v60;
    v53, v61, v62, v63, v64, v65, v66, v67;
    v52, v68, v69, v70, v71, v72, v73, v74;
    v51, v75, v76, v77, v78, v79, v80, v81;
    v82 = *(v3 + 72);
    v171[0] = *(v3 + 56);
    v171[1] = v82;
    v171[2] = *(v3 + 88);
    v172 = *(v3 + 13);
    v83 = *(v3 + 72);
    v165 = *(v3 + 56);
    v166 = v83;
    v167 = *(v3 + 88);
    v168 = *(v3 + 13);
    v175 = 1;
    sub_26F7719C0(v171, v164);
    sub_26F7719F8();
    sub_26F779728();
    v84 = *(&v165 + 1);
    v85 = *(&v166 + 1);
    v86 = v167;
    v168, v87, v88, v89, v90, v91, v92, v93;
    *(&v86 + 1), v94, v95, v96, v97, v98, v99, v100;
    v86, v101, v102, v103, v104, v105, v106, v107;
    v85, v108, v109, v110, v111, v112, v113, v114;
    v84, v115, v116, v117, v118, v119, v120, v121;
    v122 = v3[8];
    v169[0] = v3[7];
    v169[1] = v122;
    v124 = v3[7];
    v123 = v3[8];
    v169[2] = v3[9];
    v170 = *(v3 + 20);
    v165 = v124;
    v166 = v123;
    v167 = v3[9];
    v168 = *(v3 + 20);
    v175 = 2;
    sub_26F771A4C(v169, v164);
    sub_26F771A84();
    sub_26F779728();
    v125 = *(&v165 + 1);
    v126 = *(&v166 + 1);
    v127 = v167;
    v168, v128, v129, v130, v131, v132, v133, v134;
    *(&v127 + 1), v135, v136, v137, v138, v139, v140, v141;
    v127, v142, v143, v144, v145, v146, v147, v148;
    v126, v149, v150, v151, v152, v153, v154, v155;
    v125, v156, v157, v158, v159, v160, v161, v162;
    return (*(v163 + 8))(v8, v5);
  }
}

unint64_t sub_26F76CB64(char a1)
{
  result = 0x62616E455F534D53;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
    case 14:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
    case 12:
      result = 0xD000000000000015;
      break;
    case 5:
    case 10:
      result = 0xD00000000000001BLL;
      break;
    case 6:
      result = 0xD00000000000001CLL;
      break;
    case 7:
      result = 0xD00000000000001DLL;
      break;
    case 8:
      result = 0xD000000000000022;
      break;
    case 9:
      result = 0xD000000000000023;
      break;
    case 11:
      result = 0xD000000000000016;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 15:
      return result;
    case 16:
      result = 0xD000000000000010;
      break;
    case 17:
      result = 0x62616E455F534352;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_26F76CD5C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF9D8, &qword_26F77D000);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F7713CC();
  sub_26F7798A8();
  LOBYTE(v11) = 0;
  sub_26F779708();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_26F779708();
    LOBYTE(v11) = 2;
    sub_26F7796E8();
    LOBYTE(v11) = 3;
    sub_26F779708();
    LOBYTE(v11) = 4;
    sub_26F779708();
    v11 = v3[6];
    HIBYTE(v10) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF978, &qword_26F77CFD8);
    sub_26F771AD8(&qword_2806EF9E0, MEMORY[0x277D837D8], MEMORY[0x277D83A08], MEMORY[0x277D83508]);
    sub_26F779728();
    LOBYTE(v11) = 6;
    sub_26F779708();
    LOBYTE(v11) = 7;
    sub_26F779708();
    LOBYTE(v11) = 8;
    sub_26F779708();
    LOBYTE(v11) = 9;
    sub_26F779708();
    LOBYTE(v11) = 10;
    sub_26F779708();
    LOBYTE(v11) = 11;
    sub_26F779718();
    LOBYTE(v11) = 12;
    sub_26F7796F8();
    LOBYTE(v11) = 13;
    sub_26F7796F8();
    LOBYTE(v11) = 14;
    sub_26F7796F8();
    v11 = v3[13];
    HIBYTE(v10) = 15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF988, &qword_26F77CFE0);
    sub_26F771420(&qword_2806EF9E8, MEMORY[0x277D837D8], MEMORY[0x277D839B8], MEMORY[0x277D83508]);
    sub_26F779728();
    v11 = v3[15];
    HIBYTE(v10) = 16;
    sub_26F779728();
    v11 = v3[16];
    HIBYTE(v10) = 17;
    sub_26F779728();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_26F76D298(void *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t (*a8)(void), uint64_t a9)
{
  v24 = a5;
  v22 = a3;
  v23 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a8();
  v15 = v11;
  sub_26F7798A8();
  LOBYTE(v27) = 0;
  v16 = v25;
  sub_26F7796F8();
  if (v16)
  {
    return (*(v12 + 8))(v14, v11);
  }

  v17 = v22;
  v18 = v23;
  v19 = v24;
  LOBYTE(v27) = 1;
  sub_26F7796F8();
  LOBYTE(v27) = 2;
  sub_26F7796F8();
  v27 = v17;
  v26 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF988, &qword_26F77CFE0);
  sub_26F771420(&qword_2806EF9E8, MEMORY[0x277D837D8], MEMORY[0x277D839B8], MEMORY[0x277D83508]);
  sub_26F779728();
  v27 = v18;
  v26 = 4;
  sub_26F779728();
  v27 = v19;
  v26 = 5;
  sub_26F779728();
  return (*(v12 + 8))(v14, v15);
}

uint64_t sub_26F76D57C()
{
  v1 = *v0;
  sub_26F779848();
  v2 = 0xE900000000000067;
  v3 = 0xED000070756B6F6FLL;
  if (v1 != 2)
  {
    v3 = 0xE900000000000065;
  }

  if (v1)
  {
    v2 = 0x800000026F77E800;
  }

  if (v1 <= 1)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  sub_26F779298();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_26F779888();
}

void sub_26F76D654(uint64_t a1)
{
  v2 = 0xE900000000000065;
  v3 = 0xE900000000000067;
  if (*v1 == 2)
  {
    v2 = 0xED000070756B6F6FLL;
  }

  if (*v1)
  {
    v3 = 0x800000026F77E800;
  }

  if (*v1 <= 1u)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  sub_26F779298();

  v4, v5, v6, v7, v8, v9, v10, v11;
}

uint64_t sub_26F76D718(uint64_t a1)
{
  v2 = *v1;
  sub_26F779848();
  v3 = 0xE900000000000067;
  v4 = 0xED000070756B6F6FLL;
  if (v2 != 2)
  {
    v4 = 0xE900000000000065;
  }

  if (v2)
  {
    v3 = 0x800000026F77E800;
  }

  if (v2 <= 1)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  sub_26F779298();
  v5, v6, v7, v8, v9, v10, v11, v12;
  return sub_26F779888();
}

unint64_t sub_26F76D7EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26F76F35C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26F76D81C(unint64_t *a1@<X8>)
{
  v2 = 0xE900000000000067;
  v3 = 0x6E6974726F706552;
  v4 = 0xED000070756B6F6FLL;
  v5 = 0x4C5F7265646E6553;
  if (*v1 != 2)
  {
    v5 = 0x636E657265666E49;
    v4 = 0xE900000000000065;
  }

  if (*v1)
  {
    v3 = 0xD000000000000012;
    v2 = 0x800000026F77E800;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 <= 1u)
  {
    v7 = v2;
  }

  else
  {
    v7 = v4;
  }

  *a1 = v6;
  a1[1] = v7;
}

unint64_t sub_26F76D8B0()
{
  v1 = 0x6E6974726F706552;
  v2 = 0x4C5F7265646E6553;
  if (*v0 != 2)
  {
    v2 = 0x636E657265666E49;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
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

unint64_t sub_26F76D940@<X0>(uint64_t a1@<X0>, _TtC8TrustKit22TrustKitUIServerClient *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26F76F35C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26F76D968(uint64_t a1)
{
  v2 = sub_26F76F8BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F76D9A4(uint64_t a1)
{
  v2 = sub_26F76F8BC();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26F76D9E0(void *a1@<X8>, void *a2@<X0>)
{
  sub_26F76F3A8(a2, v4);
  if (!v2)
  {
    memcpy(a1, v4, 0x170uLL);
  }
}

uint64_t sub_26F76DA44()
{
  if (*v0)
  {
    return 0x69746375646F7250;
  }

  else
  {
    return 16721;
  }
}

void sub_26F76DA78(uint64_t a1@<X0>, _TtC8TrustKit22TrustKitUIServerClient *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X7>, char *a9@<X8>)
{
  v11 = a1 == 16721 && a2 == 0xE200000000000000;
  if (v11 || (sub_26F779748() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    v13 = 0;
  }

  else if (a1 == 0x69746375646F7250 && a2 == 0xEA00000000006E6FLL)
  {
    0xEA00000000006E6FLL, a2, a3, a4, a5, a6, a7, a8;
    v13 = 1;
  }

  else
  {
    v14 = sub_26F779748();
    a2, v15, v16, v17, v18, v19, v20, v21;
    if (v14)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  *a9 = v13;
}

uint64_t sub_26F76DB60(uint64_t a1)
{
  v2 = sub_26F7727E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F76DB9C(uint64_t a1)
{
  v2 = sub_26F7727E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26F76DBD8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_26F770008(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

unint64_t sub_26F76DC28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26F7701EC(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_26F76DC58@<X0>(uint64_t a1@<X0>, _TtC8TrustKit22TrustKitUIServerClient *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26F7701EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26F76DC80(uint64_t a1)
{
  v2 = sub_26F7721AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F76DCBC(uint64_t a1)
{
  v2 = sub_26F7721AC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_26F76DD3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26F770238(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_26F76DD6C@<X0>(uint64_t a1@<X0>, _TtC8TrustKit22TrustKitUIServerClient *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26F770238(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26F76DD94(uint64_t a1)
{
  v2 = sub_26F772254();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F76DDD0(uint64_t a1)
{
  v2 = sub_26F772254();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26F76DE50()
{
  v1 = *v0;
  sub_26F779848();
  v2 = 0xE400000000000000;
  v3 = 0x800000026F77E840;
  if (v1 != 2)
  {
    v3 = 0xEB0000000064656CLL;
  }

  if (v1)
  {
    v2 = 0xEB0000000064656CLL;
  }

  if (v1 <= 1)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  sub_26F779298();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_26F779888();
}

void sub_26F76DF08(uint64_t a1)
{
  v2 = 0xE400000000000000;
  v3 = 0x800000026F77E840;
  if (*v1 != 2)
  {
    v3 = 0xEB0000000064656CLL;
  }

  if (*v1)
  {
    v2 = 0xEB0000000064656CLL;
  }

  if (*v1 <= 1u)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  sub_26F779298();

  v4, v5, v6, v7, v8, v9, v10, v11;
}

uint64_t sub_26F76DFAC(uint64_t a1)
{
  v2 = *v1;
  sub_26F779848();
  v3 = 0xE400000000000000;
  v4 = 0x800000026F77E840;
  if (v2 != 2)
  {
    v4 = 0xEB0000000064656CLL;
  }

  if (v2)
  {
    v3 = 0xEB0000000064656CLL;
  }

  if (v2 <= 1)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  sub_26F779298();
  v5, v6, v7, v8, v9, v10, v11, v12;
  return sub_26F779888();
}

unint64_t sub_26F76E060@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26F770634(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_26F76E090@<X0>(uint64_t a1@<X0>, _TtC8TrustKit22TrustKitUIServerClient *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26F770634(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26F76E0B8(uint64_t a1)
{
  v2 = sub_26F7722A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F76E0F4(uint64_t a1)
{
  v2 = sub_26F7722A8();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_26F76E174@<D0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a6@<X8>)
{
  sub_26F770284(a1, a2, a3, a4, v10);
  if (!v6)
  {
    v9 = v10[1];
    *a6 = v10[0];
    *(a6 + 16) = v9;
    result = *&v11;
    *(a6 + 32) = v11;
    *(a6 + 48) = v12;
  }

  return result;
}

uint64_t sub_26F76E1D4(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = *a1;
  v9 = 0x4E5F74726F706552;
  v10 = 0xEF6B6E754A5F746FLL;
  if (v8 != 1)
  {
    v9 = 0x4A5F74726F706552;
    v10 = 0xEB000000006B6E75;
  }

  if (*a1)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0x555F74726F706552;
  }

  if (v8)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0xEE006E776F6E6B6ELL;
  }

  v13 = 0x4E5F74726F706552;
  v14 = 0xEF6B6E754A5F746FLL;
  if (*a2 != 1)
  {
    v13 = 0x4A5F74726F706552;
    v14 = 0xEB000000006B6E75;
  }

  if (*a2)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0x555F74726F706552;
  }

  if (*a2)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0xEE006E776F6E6B6ELL;
  }

  if (v11 == v15 && v12 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_26F779748();
  }

  v12, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

uint64_t sub_26F76E308()
{
  v1 = *v0;
  sub_26F779848();
  v2 = 0xEF6B6E754A5F746FLL;
  if (v1 != 1)
  {
    v2 = 0xEB000000006B6E75;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xEE006E776F6E6B6ELL;
  }

  sub_26F779298();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_26F779888();
}

void sub_26F76E3CC(uint64_t a1)
{
  v2 = 0xEF6B6E754A5F746FLL;
  if (*v1 != 1)
  {
    v2 = 0xEB000000006B6E75;
  }

  if (*v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xEE006E776F6E6B6ELL;
  }

  sub_26F779298();

  v3, v4, v5, v6, v7, v8, v9, v10;
}

uint64_t sub_26F76E47C(uint64_t a1)
{
  v2 = *v1;
  sub_26F779848();
  v3 = 0xEF6B6E754A5F746FLL;
  if (v2 != 1)
  {
    v3 = 0xEB000000006B6E75;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0xEE006E776F6E6B6ELL;
  }

  sub_26F779298();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_26F779888();
}

unint64_t sub_26F76E53C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26F770680(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26F76E56C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE006E776F6E6B6ELL;
  v4 = 0xEF6B6E754A5F746FLL;
  v5 = 0x4E5F74726F706552;
  if (v2 != 1)
  {
    v5 = 0x4A5F74726F706552;
    v4 = 0xEB000000006B6E75;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x555F74726F706552;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_26F76E5EC()
{
  v1 = 0x4E5F74726F706552;
  if (*v0 != 1)
  {
    v1 = 0x4A5F74726F706552;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x555F74726F706552;
  }
}

unint64_t sub_26F76E668@<X0>(uint64_t a1@<X0>, _TtC8TrustKit22TrustKitUIServerClient *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26F770680(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26F76E690(uint64_t a1)
{
  v2 = sub_26F770ADC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F76E6CC(uint64_t a1)
{
  v2 = sub_26F770ADC();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_26F76E708@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_26F7706CC(a2, v9);
  if (!v2)
  {
    v5 = v9[9];
    *(a1 + 128) = v9[8];
    *(a1 + 144) = v5;
    *(a1 + 160) = v10;
    v6 = v9[5];
    *(a1 + 64) = v9[4];
    *(a1 + 80) = v6;
    v7 = v9[7];
    *(a1 + 96) = v9[6];
    *(a1 + 112) = v7;
    v8 = v9[1];
    *a1 = v9[0];
    *(a1 + 16) = v8;
    result = v9[3];
    *(a1 + 32) = v9[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t sub_26F76E798(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_26F76CB64(*a1);
  v5 = v4;
  v6 = sub_26F76CB64(v2);
  v14 = v7;
  if (v3 == v6 && v5 == v7)
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_26F779748();
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
  v14, v17, v18, v19, v20, v21, v22, v23;
  return v16 & 1;
}

uint64_t sub_26F76E820()
{
  v1 = *v0;
  sub_26F779848();
  sub_26F76CB64(v1);
  v3 = v2;
  sub_26F779298();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_26F779888();
}

void sub_26F76E884(uint64_t a1)
{
  sub_26F76CB64(*v1);
  v3 = v2;
  sub_26F779298();

  v3, v4, v5, v6, v7, v8, v9, v10;
}

uint64_t sub_26F76E8D8(uint64_t a1)
{
  v2 = *v1;
  sub_26F779848();
  sub_26F76CB64(v2);
  v4 = v3;
  sub_26F779298();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_26F779888();
}

unint64_t sub_26F76E938@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26F770C2C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_26F76E968@<X0>(unint64_t *a1@<X8>)
{
  result = sub_26F76CB64(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_26F76E9B0@<X0>(uint64_t a1@<X0>, _TtC8TrustKit22TrustKitUIServerClient *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26F770C2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26F76E9E4(uint64_t a1)
{
  v2 = sub_26F7713CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F76EA20(uint64_t a1)
{
  v2 = sub_26F7713CC();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_26F76EA5C@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_26F770C80(a2, v8);
  if (!v2)
  {
    v5 = v8[7];
    *(a1 + 96) = v8[6];
    *(a1 + 112) = v5;
    *(a1 + 128) = v9;
    v6 = v8[3];
    *(a1 + 32) = v8[2];
    *(a1 + 48) = v6;
    v7 = v8[5];
    *(a1 + 64) = v8[4];
    *(a1 + 80) = v7;
    result = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = result;
  }

  return result;
}

unint64_t sub_26F76EAE0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26F771490(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_26F76EB10@<X0>(uint64_t a1@<X0>, _TtC8TrustKit22TrustKitUIServerClient *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26F771490(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26F76EB38(uint64_t a1)
{
  v2 = sub_26F7714DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F76EB74(uint64_t a1)
{
  v2 = sub_26F7714DC();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26F76EC38(uint64_t a1)
{
  v2 = 0xEB0000000064656CLL;
  v3 = *v1;
  v4 = 0x800000026F77E840;
  if (v3 != 4)
  {
    v4 = 0xEB0000000064656CLL;
  }

  if (v3 != 3)
  {
    v2 = v4;
  }

  v5 = 0x800000026F77EA30;
  v6 = 0x800000026F77EA50;
  if (v3 != 1)
  {
    v6 = 0x800000026F77EA70;
  }

  if (*v1)
  {
    v5 = v6;
  }

  if (*v1 <= 2u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v2;
  }

  sub_26F779298();

  v7, v8, v9, v10, v11, v12, v13, v14;
}

unint64_t sub_26F76ED28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26F771530(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26F76ED58(unint64_t *a1@<X8>)
{
  v2 = 0x62616E455F534352;
  v3 = *v1;
  v4 = 0x800000026F77E840;
  if (v3 == 4)
  {
    v2 = 0xD000000000000010;
  }

  else
  {
    v4 = 0xEB0000000064656CLL;
  }

  if (v3 == 3)
  {
    v2 = 0x62616E455F534D53;
    v4 = 0xEB0000000064656CLL;
  }

  v5 = 0xD000000000000015;
  v6 = 0x800000026F77EA50;
  v7 = 0xD000000000000012;
  if (v3 == 1)
  {
    v7 = 0xD000000000000013;
  }

  else
  {
    v6 = 0x800000026F77EA70;
  }

  if (*v1)
  {
    v5 = v7;
    v8 = v6;
  }

  else
  {
    v8 = 0x800000026F77EA30;
  }

  if (*v1 <= 2u)
  {
    v9 = v5;
  }

  else
  {
    v9 = v2;
  }

  if (*v1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  *a1 = v9;
  a1[1] = v10;
}