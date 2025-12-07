uint64_t sub_2224852EC(uint64_t a1)
{
  v2 = sub_2224B4128();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E480, &qword_2224B5560);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E4A8, &qword_2224B5570);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = (&v18 - v10);
  sub_2224A7810(a1, &v18 - v10, &qword_27D00E4A8, &qword_2224B5570);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20[0] = *v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E498, &qword_2224B5568);
    sub_2224B48A8();
  }

  else
  {
    sub_2224A7660(v11, v5, &qword_27D00E480, &qword_2224B5560);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E498, &qword_2224B5568);
    sub_2224B48B8();
  }

  sub_2224A7810(a1, v9, &qword_27D00E4A8, &qword_2224B5570);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_2224A7878(v9, &qword_27D00E4A8, &qword_2224B5570);
  }

  v12 = *v9;
  if (qword_28130A578 != -1)
  {
    swift_once();
  }

  v13 = sub_2224B4628();
  __swift_project_value_buffer(v13, qword_28130A580);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
  sub_2224B4148();
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B4118();
  sub_2224B4108();
  swift_getErrorValue();
  v14 = v18;
  v15 = v19;
  v20[3] = v19;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v20);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_1Tm, v14, v15);
  sub_2224B40F8();
  sub_2224A7878(v20, &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4588();

  return MEMORY[0x223DB7AD0](v12);
}

uint64_t sub_2224856E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2224B4398();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222485750(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_2224B4398();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_22248584C()
{
  v1 = sub_2224B4398();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v5));

  return MEMORY[0x2821FE8E8](v0, ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_222485948(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_222485960()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2224859D4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_222485A10()
{
  v1 = v0;
  v2 = sub_2224B4398();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Connection.State(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2224A5830(v1, v8);
  v9 = (*(v3 + 48))(v8, 2, v2);
  if (v9)
  {
    if (v9 == 1)
    {
      return 1701602409;
    }

    else
    {
      return 0x6465736F6C63;
    }
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    v13[0] = 0x5B6E65706FLL;
    v13[1] = 0xE500000000000000;
    v11 = sub_2224B4388();
    MEMORY[0x223DB7580](v11);

    MEMORY[0x223DB7580](93, 0xE100000000000000);
    v12 = v13[0];
    (*(v3 + 8))(v5, v2);
    return v12;
  }
}

void Connection.PaginationOptions.pageSize.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t _s15OnDeviceStorage10ConnectionC17PaginationOptionsV8pageSizeA2E04PageH0O_tAA0abC5ErrorOYKcfC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2224B41F8();
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2224B4198();
  v10 = *(v9 - 8);
  result = MEMORY[0x28223BE20](v9);
  v13 = (&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *a1;
  v15 = *(a1 + 8);
  if ((v15 & 1) != 0 || v14 > 0)
  {
    *a3 = v14;
    *(a3 + 8) = v15;
  }

  else
  {
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_2224B49C8();

    v25 = 0xD000000000000027;
    v26 = 0x80000002224B5A60;
    v27 = v14;
    v16 = sub_2224B4A78();
    MEMORY[0x223DB7580](v16);

    v17 = v25;
    v18 = v26;
    *v13 = 0x657A695365676170;
    v13[1] = 0xE800000000000000;
    v13[2] = v17;
    v13[3] = v18;
    (*(v10 + 104))(v13, *MEMORY[0x277D37750], v9);
    sub_2224A76C8(&qword_27D00E328, MEMORY[0x277D37778], MEMORY[0x277D37780]);
    v19 = swift_allocError();
    (*(v10 + 16))(v20, v13, v9);
    MEMORY[0x223DB7AE0](v19);
    sub_2224B4208();
    *a2 = sub_2224B41E8();
    v21 = v24;
    *(a2 + 32) = v24;
    *(a2 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790], MEMORY[0x277D37788]);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((a2 + 8));
    (*(v23 + 32))(boxed_opaque_existential_1Tm, v8, v21);
    MEMORY[0x223DB7AD0](v19);
    (*(v10 + 8))(v13, v9);
    *(a2 + 48) = 7;
    sub_222485F68();
    return swift_willThrowTypedImpl();
  }

  return result;
}

unint64_t sub_222485F68()
{
  result = qword_28130A408;
  if (!qword_28130A408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28130A408);
  }

  return result;
}

uint64_t Connection.PaginationOptions.PageSize.init(integerLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

BOOL static Connection.PaginationOptions.PageSize.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

void *sub_222486004@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_222486014(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_222486050()
{
  v0 = sub_2224B4628();
  __swift_allocate_value_buffer(v0, qword_28130A600);
  v1 = __swift_project_value_buffer(v0, qword_28130A600);
  if (qword_28130A458 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_28130A730);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_222486118()
{
  v0 = sub_2224B46D8();
  __swift_allocate_value_buffer(v0, qword_28130A6E0);
  v1 = __swift_project_value_buffer(v0, qword_28130A6E0);
  if (qword_28130A448 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_28130A700);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_222486234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = swift_allocObject();
  swift_defaultActor_initialize();
  v11 = OBJC_IVAR____TtC15OnDeviceStorage10Connection_state;
  v12 = sub_2224B4398();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 2, v12);
  v13 = v10 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_credential;
  *v13 = a1;
  *(v13 + 8) = a2;
  *(v13 + 16) = a5;
  v14 = (v10 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_userId);
  *v14 = a3;
  v14[1] = a4;
  *(v10 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_insertValuesBatchSize) = 20480;
  *(v10 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_selectStatementBatchSize) = 204800;
  if (qword_28130A570 != -1)
  {
    swift_once();
  }

  sub_2224A7124(&qword_28130A748, v10 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession);
  return v10;
}

uint64_t sub_222486394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  swift_defaultActor_initialize();
  v11 = OBJC_IVAR____TtC15OnDeviceStorage10Connection_state;
  v12 = sub_2224B4398();
  (*(*(v12 - 8) + 56))(v5 + v11, 1, 2, v12);
  v13 = v5 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_credential;
  *v13 = a1;
  *(v13 + 8) = a2;
  *(v13 + 16) = a5;
  v14 = (v5 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_userId);
  *v14 = a3;
  v14[1] = a4;
  *(v5 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_insertValuesBatchSize) = 20480;
  *(v5 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_selectStatementBatchSize) = 204800;
  if (qword_28130A570 != -1)
  {
    swift_once();
  }

  sub_2224A7124(&qword_28130A748, v5 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession);
  return v5;
}

uint64_t _s15OnDeviceStorage10ConnectionC4openyyYaAA0abC5ErrorOYKF(uint64_t a1)
{
  v2[30] = v1;
  v2[31] = a1;
  v3 = sub_2224B41F8();
  v2[32] = v3;
  v2[33] = *(v3 - 8);
  v2[34] = swift_task_alloc();
  v4 = sub_2224B4198();
  v2[35] = v4;
  v2[36] = *(v4 - 8);
  v2[37] = swift_task_alloc();
  sub_2224B4128();
  v2[38] = swift_task_alloc();
  v5 = sub_2224B4398();
  v2[39] = v5;
  v2[40] = *(v5 - 8);
  v2[41] = swift_task_alloc();
  v6 = sub_2224B43B8();
  v2[42] = v6;
  v2[43] = *(v6 - 8);
  v2[44] = swift_task_alloc();
  type metadata accessor for Connection.State(0);
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v7 = sub_2224B46A8();
  v2[47] = v7;
  v2[48] = *(v7 - 8);
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222486768, v1, 0);
}

uint64_t sub_222486768()
{
  if (qword_28130A6D8 != -1)
  {
    swift_once();
  }

  v1 = sub_2224B46D8();
  __swift_project_value_buffer(v1, qword_28130A6E0);
  sub_2224B4698();
  v2 = sub_2224B46B8();
  v3 = sub_2224B4938();
  if (sub_2224B4948())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_2224B4688();
    _os_signpost_emit_with_name_impl(&dword_222484000, v2, v3, v5, "Open", "", v4, 2u);
    MEMORY[0x223DB7C20](v4, -1, -1);
  }

  v6 = *(v0 + 392);
  v7 = *(v0 + 400);
  v8 = *(v0 + 376);
  v9 = *(v0 + 384);

  (*(v9 + 16))(v6, v7, v8);
  sub_2224B4718();
  swift_allocObject();
  *(v0 + 408) = sub_2224B4708();
  (*(v9 + 8))(v7, v8);
  if (qword_28130A5F8 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 368);
  v11 = *(v0 + 320);
  v37 = *(v0 + 312);
  v12 = *(v0 + 240);
  v13 = sub_2224B4628();
  *(v0 + 416) = v13;
  *(v0 + 424) = __swift_project_value_buffer(v13, qword_28130A600);
  *(v0 + 432) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
  v14 = *(sub_2224B4148() - 8);
  *(v0 + 440) = *(v14 + 72);
  *(v0 + 68) = *(v14 + 80);
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B40E8();
  sub_2224B4568();

  v15 = OBJC_IVAR____TtC15OnDeviceStorage10Connection_state;
  *(v0 + 448) = OBJC_IVAR____TtC15OnDeviceStorage10Connection_state;
  swift_beginAccess();
  sub_2224A5830(v12 + v15, v10);
  LODWORD(v13) = (*(v11 + 48))(v10, 2, v37);
  sub_2224A70C4(v10, type metadata accessor for Connection.State);
  if (v13 == 1)
  {
    v16 = *(v0 + 240);
    sub_2224A63F8(*(v16 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_credential), *(v16 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_credential + 8));

    sub_2224B43A8();
    __swift_project_boxed_opaque_existential_1((v16 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession), *(v16 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession + 24));
    v17 = swift_task_alloc();
    *(v0 + 456) = v17;
    *v17 = v0;
    v17[1] = sub_222486F10;
    v18 = *(v0 + 352);
    v19 = *(v0 + 328);

    return sub_2224963C0(v19, v18, v0 + 72);
  }

  else
  {
    v21 = *(v0 + 360);
    v22 = *(v0 + 296);
    v23 = *(v0 + 280);
    v33 = *(v0 + 288);
    v34 = *(v0 + 272);
    v38 = *(v0 + 264);
    v35 = *(v0 + 248);
    v36 = *(v0 + 256);
    sub_2224A5830(v12 + v15, v21);
    v24 = sub_222485A10();
    v26 = v25;
    sub_2224A70C4(v21, type metadata accessor for Connection.State);
    *v22 = v24;
    v22[1] = v26;
    v22[2] = 0x29286E65706FLL;
    v22[3] = 0xE600000000000000;
    (*(v33 + 104))(v22, *MEMORY[0x277D37770], v23);
    *(swift_allocObject() + 16) = xmmword_2224B5060;
    sub_2224B4118();
    sub_2224B4108();
    *(v0 + 152) = v23;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 128));
    v28 = *(v33 + 16);
    v28(boxed_opaque_existential_1Tm, v22, v23);
    sub_2224B40F8();
    sub_2224A7878(v0 + 128, &qword_27D00E338, &qword_2224B5090);
    sub_2224B4108();
    sub_2224B4138();
    sub_2224B4588();

    sub_2224A76C8(&qword_27D00E328, MEMORY[0x277D37778], MEMORY[0x277D37780]);
    v29 = swift_allocError();
    v28(v30, v22, v23);
    MEMORY[0x223DB7AE0](v29);
    sub_2224B4208();
    *v35 = sub_2224B41E8();
    *(v35 + 32) = v36;
    *(v35 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790], MEMORY[0x277D37788]);
    v31 = __swift_allocate_boxed_opaque_existential_1Tm((v35 + 8));
    (*(v38 + 32))(v31, v34, v36);
    MEMORY[0x223DB7AD0](v29);
    *(v35 + 48) = 7;
    sub_222485F68();
    swift_willThrowTypedImpl();
    (*(v33 + 8))(v22, v23);
    sub_2224A6760("Open", 4, 2, *(v0 + 408));

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_222486F10()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 240);
  if (v0)
  {
    v5 = *(v3 + 88);
    *(v3 + 16) = *(v3 + 72);
    *(v3 + 32) = v5;
    *(v3 + 48) = *(v3 + 104);
    *(v3 + 64) = *(v3 + 120);
    v6 = sub_222487054;
  }

  else
  {
    v6 = sub_22248718C;
  }

  return MEMORY[0x2822009F8](v6, v4, 0);
}

uint64_t sub_222487054()
{
  v1 = *(v0 + 248);
  (*(*(v0 + 344) + 8))(*(v0 + 352), *(v0 + 336));
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  *(v1 + 48) = *(v0 + 64);
  *(v1 + 16) = v3;
  *(v1 + 32) = v4;
  *v1 = v2;
  sub_2224A6760("Open", 4, 2, *(v0 + 408));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22248718C()
{
  v1 = v0[56];
  v14 = v0[51];
  v2 = v0[45];
  v11 = v0[43];
  v3 = v0[41];
  v12 = v0[42];
  v13 = v0[44];
  v4 = v0[39];
  v5 = v0[40];
  v6 = v0[30];
  (*(v5 + 16))(v2, v3, v4);
  (*(v5 + 56))(v2, 0, 2, v4);
  swift_beginAccess();
  sub_2224A6444(v2, v6 + v1);
  swift_endAccess();
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B4118();
  sub_2224B4108();
  v7 = sub_2224B4388();
  v0[23] = MEMORY[0x277D837D0];
  v0[20] = v7;
  v0[21] = v8;
  sub_2224B40F8();
  sub_2224A7878((v0 + 20), &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4568();

  (*(v5 + 8))(v3, v4);
  (*(v11 + 8))(v13, v12);
  sub_2224A6760("Open", 4, 2, v14);

  v9 = v0[1];

  return v9();
}

uint64_t _s15OnDeviceStorage10ConnectionC5closeyyYaAA0abC5ErrorOYKF(uint64_t a1)
{
  v2[27] = v1;
  v2[28] = a1;
  type metadata accessor for Connection.State(0);
  v2[29] = swift_task_alloc();
  sub_2224B4128();
  v2[30] = swift_task_alloc();
  v3 = sub_2224B44C8();
  v2[31] = v3;
  v2[32] = *(v3 - 8);
  v2[33] = swift_task_alloc();
  v4 = sub_2224B46A8();
  v2[34] = v4;
  v2[35] = *(v4 - 8);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2224875BC, v1, 0);
}

uint64_t sub_2224875BC()
{
  if (qword_28130A6D8 != -1)
  {
    swift_once();
  }

  v1 = sub_2224B46D8();
  __swift_project_value_buffer(v1, qword_28130A6E0);
  sub_2224B4698();
  v2 = sub_2224B46B8();
  v3 = sub_2224B4938();
  if (sub_2224B4948())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_2224B4688();
    _os_signpost_emit_with_name_impl(&dword_222484000, v2, v3, v5, "Close", "", v4, 2u);
    MEMORY[0x223DB7C20](v4, -1, -1);
  }

  v6 = *(v0 + 288);
  v7 = *(v0 + 296);
  v8 = *(v0 + 272);
  v9 = *(v0 + 280);

  (*(v9 + 16))(v6, v7, v8);
  sub_2224B4718();
  swift_allocObject();
  *(v0 + 304) = sub_2224B4708();
  (*(v9 + 8))(v7, v8);
  if (qword_28130A5F8 != -1)
  {
    swift_once();
  }

  v10 = sub_2224B4628();
  *(v0 + 312) = v10;
  *(v0 + 320) = __swift_project_value_buffer(v10, qword_28130A600);
  *(v0 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
  v11 = *(sub_2224B4148() - 8);
  *(v0 + 336) = *(v11 + 72);
  *(v0 + 68) = *(v11 + 80);
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B40E8();
  sub_2224B4568();

  *(v0 + 344) = sub_222487F1C(0x292865736F6C63, 0xE700000000000000, (v0 + 16));
  *(v0 + 352) = v12;
  v13 = *(v0 + 216);

  sub_2224B44B8();
  __swift_project_boxed_opaque_existential_1((v13 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession), *(v13 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession + 24));
  v14 = swift_task_alloc();
  *(v0 + 360) = v14;
  *v14 = v0;
  v14[1] = sub_222487A34;
  v15 = *(v0 + 264);

  return sub_222497590(v15, v0 + 72);
}

uint64_t sub_222487A34(char a1)
{
  v4 = *v2;

  if (v1)
  {
    v6 = *(v4 + 216);
    v5 = *(v4 + 224);

    v7 = *(v4 + 72);
    v8 = *(v4 + 88);
    v9 = *(v4 + 104);
    *(v5 + 48) = *(v4 + 120);
    *(v5 + 16) = v8;
    *(v5 + 32) = v9;
    *v5 = v7;
    v10 = sub_222487B88;
    v11 = v6;
  }

  else
  {
    v11 = *(v4 + 216);
    *(v4 + 65) = a1 & 1;
    v10 = sub_222487C64;
  }

  return MEMORY[0x2822009F8](v10, v11, 0);
}

uint64_t sub_222487B88()
{
  (*(v0[32] + 8))(v0[33], v0[31]);
  sub_2224A6760("Close", 5, 2, v0[38]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_222487C64()
{
  v9 = *(v0 + 65);
  v2 = *(v0 + 344);
  v1 = *(v0 + 352);
  v13 = *(v0 + 304);
  v3 = *(v0 + 256);
  v10 = *(v0 + 248);
  v11 = *(v0 + 264);
  v4 = *(v0 + 232);
  v12 = *(v0 + 216);
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B4118();
  sub_2224B4108();
  *(v0 + 152) = MEMORY[0x277D837D0];
  *(v0 + 128) = v2;
  *(v0 + 136) = v1;
  sub_2224B40F8();
  sub_2224A7878(v0 + 128, &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  *(v0 + 184) = MEMORY[0x277D839B0];
  *(v0 + 160) = v9;
  sub_2224B40F8();
  sub_2224A7878(v0 + 160, &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4568();

  (*(v3 + 8))(v11, v10);
  v5 = sub_2224B4398();
  (*(*(v5 - 8) + 56))(v4, 2, 2, v5);
  v6 = OBJC_IVAR____TtC15OnDeviceStorage10Connection_state;
  swift_beginAccess();
  sub_2224A6444(v4, v12 + v6);
  swift_endAccess();
  sub_2224A6760("Close", 5, 2, v13);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_222487F1C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v51 = a3;
  v4 = v3;
  v45 = a1;
  v46 = a2;
  v5 = sub_2224B41F8();
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x28223BE20](v5);
  v48 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2224B4128();
  MEMORY[0x28223BE20](v7 - 8);
  v47 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2224B4198();
  v44 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = (&v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for Connection.State(0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v43 - v16;
  v18 = sub_2224B4398();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = OBJC_IVAR____TtC15OnDeviceStorage10Connection_state;
  swift_beginAccess();
  sub_2224A5830(v4 + v22, v17);
  if ((*(v19 + 48))(v17, 2, v18))
  {
    sub_2224A70C4(v17, type metadata accessor for Connection.State);
    sub_2224A5830(v4 + v22, v15);
    v23 = sub_222485A10();
    v25 = v24;
    sub_2224A70C4(v15, type metadata accessor for Connection.State);
    *v11 = v23;
    v11[1] = v25;
    v26 = v46;
    v11[2] = v45;
    v11[3] = v26;
    v27 = v44;
    (*(v44 + 104))(v11, *MEMORY[0x277D37770], v9);
    v28 = qword_28130A5F8;

    v29 = v9;
    v30 = v27;
    if (v28 != -1)
    {
      swift_once();
    }

    v31 = sub_2224B4628();
    v46 = __swift_project_value_buffer(v31, qword_28130A600);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
    sub_2224B4148();
    *(swift_allocObject() + 16) = xmmword_2224B5060;
    v53 = 1;
    sub_2224B4118();
    sub_2224B4108();
    v52[3] = v29;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v52);
    v33 = *(v27 + 16);
    v33(boxed_opaque_existential_1Tm, v11, v29);
    sub_2224B40F8();
    sub_2224A7878(v52, &qword_27D00E338, &qword_2224B5090);
    sub_2224B4108();
    sub_2224B4138();
    sub_2224B4588();

    sub_2224A76C8(&qword_27D00E328, MEMORY[0x277D37778], MEMORY[0x277D37780]);
    v34 = swift_allocError();
    v33(v35, v11, v29);
    MEMORY[0x223DB7AE0](v34);
    v36 = v48;
    sub_2224B4208();
    v37 = sub_2224B41E8();
    v38 = v29;
    v40 = v50;
    v39 = v51;
    *v51 = v37;
    *(v39 + 32) = v40;
    *(v39 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790], MEMORY[0x277D37788]);
    v41 = __swift_allocate_boxed_opaque_existential_1Tm((v39 + 8));
    (*(v49 + 32))(v41, v36, v40);
    MEMORY[0x223DB7AD0](v34);
    *(v39 + 48) = 7;
    sub_222485F68();
    swift_willThrowTypedImpl();
    (*(v30 + 8))(v11, v38);
  }

  else
  {
    (*(v19 + 32))(v21, v17, v18);
    v39 = sub_2224B4388();
    (*(v19 + 8))(v21, v18);
  }

  return v39;
}

uint64_t *Connection.deinit()
{
  v1 = *v0;
  v2 = type metadata accessor for Connection.State(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC15OnDeviceStorage10Connection_state;
  swift_beginAccess();
  sub_2224A5830(v0 + v5, v4);
  v6 = (v0 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession);
  v7 = *(v0 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_userId);
  v8 = *(v0 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_userId + 8);
  v9 = *__swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession), *(v0 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession + 24));

  sub_2224A6090(v4, v9, v7, v8, v1);

  sub_2224A70C4(v4, type metadata accessor for Connection.State);
  sub_2224A70C4(v0 + v5, type metadata accessor for Connection.State);
  sub_2224A64A8(*(v0 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_credential), *(v0 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_credential + 8));

  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t Connection.__deallocating_deinit()
{
  v1 = *v0;
  v2 = type metadata accessor for Connection.State(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC15OnDeviceStorage10Connection_state;
  swift_beginAccess();
  sub_2224A5830(v0 + v5, v4);
  v6 = (v0 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession);
  v7 = *(v0 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_userId);
  v8 = *(v0 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_userId + 8);
  v9 = *__swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession), *(v0 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession + 24));

  sub_2224A6090(v4, v9, v7, v8, v1);

  sub_2224A70C4(v4, type metadata accessor for Connection.State);
  sub_2224A70C4(v0 + v5, type metadata accessor for Connection.State);
  sub_2224A64A8(*(v0 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_credential), *(v0 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_credential + 8));

  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  swift_defaultActor_destroy();
  return swift_defaultActor_deallocate();
}

uint64_t sub_222488880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[30] = a6;
  v7[31] = a7;
  v7[28] = a4;
  v7[29] = a5;
  v8 = sub_2224B44C8();
  v7[32] = v8;
  v7[33] = *(v8 - 8);
  v7[34] = swift_task_alloc();
  sub_2224B4128();
  v7[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222488970, 0, 0);
}

uint64_t sub_222488970()
{
  if (qword_28130A5F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 232);
  v2 = sub_2224B4628();
  *(v0 + 288) = v2;
  *(v0 + 296) = __swift_project_value_buffer(v2, qword_28130A600);
  *(v0 + 304) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
  v3 = *(sub_2224B4148() - 8);
  *(v0 + 312) = *(v3 + 72);
  *(v0 + 68) = *(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B4118();
  sub_2224B4108();
  v4 = sub_2224B4388();
  *(v0 + 152) = MEMORY[0x277D837D0];
  *(v0 + 128) = v4;
  *(v0 + 136) = v5;
  sub_2224B40F8();
  sub_2224A7878(v0 + 128, &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4598();

  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_2224B4388();

  sub_2224B44B8();
  v6 = swift_task_alloc();
  *(v0 + 320) = v6;
  *v6 = v0;
  v6[1] = sub_222488C34;
  v7 = *(v0 + 272);

  return sub_222497590(v7, v0 + 72);
}

uint64_t sub_222488C34()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *(*v1 + 264);
  v5 = *(*v1 + 256);
  v6 = *v1;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = *(v2 + 88);
    *(v2 + 16) = *(v2 + 72);
    *(v2 + 32) = v7;
    *(v2 + 48) = *(v2 + 104);
    *(v2 + 64) = *(v2 + 120);

    return MEMORY[0x2822009F8](sub_222488DFC, 0, 0);
  }

  else
  {

    v8 = *(v6 + 8);

    return v8();
  }
}

uint64_t sub_222488DFC()
{
  sub_222485F68();
  v1 = swift_allocError();
  v3 = *(v0 + 32);
  v2 = *(v0 + 48);
  v4 = *(v0 + 16);
  *(v5 + 48) = *(v0 + 64);
  *(v5 + 16) = v3;
  *(v5 + 32) = v2;
  *v5 = v4;
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  MEMORY[0x223DB7AE0](v1);
  sub_2224B4118();
  sub_2224B4108();
  swift_getErrorValue();
  v6 = *(v0 + 192);
  v7 = *(v0 + 200);
  *(v0 + 184) = v7;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 160));
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1Tm, v6, v7);
  sub_2224B40F8();
  sub_2224A7878(v0 + 160, &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4588();

  MEMORY[0x223DB7AD0](v1);
  MEMORY[0x223DB7AD0](v1);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_222488FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E548, &qword_2224B55C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2224A7810(a3, v25 - v10, &qword_27D00E548, &qword_2224B55C0);
  v12 = sub_2224B48D8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2224A7878(v11, &qword_27D00E548, &qword_2224B55C0);
  }

  else
  {
    sub_2224B48C8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2224B4898();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2224B4828() + 32;
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

      sub_2224A7878(a3, &qword_27D00E548, &qword_2224B55C0);

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

  sub_2224A7878(a3, &qword_27D00E548, &qword_2224B55C0);
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

uint64_t _s15OnDeviceStorage10ConnectionC6selectySay0abC4Core3RowVGAE9QueryType_pYaAA0abC5ErrorOYKF(uint64_t a1, uint64_t a2)
{
  v3[15] = v2;
  v3[16] = a2;
  v3[14] = a1;
  v4 = sub_2224B46A8();
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2224893A8, v2, 0);
}

uint64_t sub_2224893A8()
{
  if (qword_28130A6D8 != -1)
  {
    swift_once();
  }

  v1 = sub_2224B46D8();
  __swift_project_value_buffer(v1, qword_28130A6E0);
  sub_2224B4698();
  v2 = sub_2224B46B8();
  v3 = sub_2224B4938();
  if (sub_2224B4948())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_2224B4688();
    _os_signpost_emit_with_name_impl(&dword_222484000, v2, v3, v5, "Select", "", v4, 2u);
    MEMORY[0x223DB7C20](v4, -1, -1);
  }

  v6 = v0[19];
  v7 = v0[20];
  v8 = v0[17];
  v9 = v0[18];
  v10 = v0[14];

  (*(v9 + 16))(v6, v7, v8);
  sub_2224B4718();
  swift_allocObject();
  v0[21] = sub_2224B4708();
  (*(v9 + 8))(v7, v8);
  v11 = v10[3];
  v12 = v10[4];
  v13 = __swift_project_boxed_opaque_existential_1(v10, v11);
  v0[12] = v11;
  v0[13] = *(v12 + 8);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v0 + 9);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1Tm, v13, v11);
  v15 = swift_task_alloc();
  v0[22] = v15;
  *v15 = v0;
  v15[1] = sub_2224895F0;

  return sub_22248988C((v0 + 9), (v0 + 2));
}

uint64_t sub_2224895F0(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    v5 = v4[15];
    v6 = sub_2224897CC;
  }

  else
  {
    v7 = v4[15];
    v4[23] = a1;
    __swift_destroy_boxed_opaque_existential_1Tm(v4 + 9);
    v6 = sub_22248972C;
    v5 = v7;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22248972C()
{
  sub_2224A6760("Select", 6, 2, v0[21]);

  v1 = v0[1];
  v2 = v0[23];

  return v1(v2);
}

uint64_t sub_2224897CC()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 128);
  v3 = *(v0 + 16);
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  *(v2 + 48) = *(v0 + 64);
  *(v2 + 16) = v4;
  *(v2 + 32) = v5;
  *v2 = v3;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));
  sub_2224A6760("Select", 6, 2, v1);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_22248988C(uint64_t a1, uint64_t a2)
{
  v3[53] = v2;
  v3[54] = a2;
  v3[52] = a1;
  v4 = sub_2224B41F8();
  v3[55] = v4;
  v3[56] = *(v4 - 8);
  v3[57] = swift_task_alloc();
  v5 = sub_2224B4198();
  v3[58] = v5;
  v3[59] = *(v5 - 8);
  v3[60] = swift_task_alloc();
  v6 = sub_2224B42A8();
  v3[61] = v6;
  v3[62] = *(v6 - 8);
  v3[63] = swift_task_alloc();
  sub_2224B4128();
  v3[64] = swift_task_alloc();
  v7 = sub_2224B4368();
  v3[65] = v7;
  v3[66] = *(v7 - 8);
  v3[67] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222489A90, v2, 0);
}

uint64_t sub_222489A90()
{
  v1 = *(v0 + 536);
  __swift_project_boxed_opaque_existential_1(*(v0 + 416), *(*(v0 + 416) + 24));
  sub_2224903A4(0xD000000000000013, 0x80000002224B5ED0, (v0 + 16), v1);
  v2 = *(v0 + 536);
  v3 = *(v0 + 528);
  v4 = *(v0 + 520);
  v5 = sub_2224B41B8();
  *(v0 + 544) = v5;
  (*(v3 + 8))(v2, v4);
  if (qword_28130A5F8 != -1)
  {
    swift_once();
  }

  v6 = sub_2224B4628();
  *(v0 + 552) = v6;
  *(v0 + 560) = __swift_project_value_buffer(v6, qword_28130A600);
  *(v0 + 568) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
  v7 = *(sub_2224B4148() - 8);
  *(v0 + 576) = *(v7 + 72);
  *(v0 + 68) = *(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B4118();
  sub_2224B4108();
  *(v0 + 304) = MEMORY[0x277D83B88];
  *(v0 + 280) = v5;
  sub_2224B40F8();
  sub_2224A7878(v0 + 280, &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4568();

  *(v0 + 408) = MEMORY[0x277D84F90];
  *(v0 + 584) = OBJC_IVAR____TtC15OnDeviceStorage10Connection_userId;
  *(v0 + 592) = OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession;
  *(v0 + 600) = 0;
  sub_2224A7124(*(v0 + 416), v0 + 240);
  sub_222487F1C(0xD000000000000013, 0x80000002224B5ED0, (v0 + 128));

  sub_2224B42B8();
  v8 = (*(v0 + 424) + *(v0 + 592));
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v9 = swift_task_alloc();
  *(v0 + 608) = v9;
  *v9 = v0;
  v9[1] = sub_22248A064;
  v10 = *(v0 + 504);

  return sub_222498770(v10, v0 + 184);
}

uint64_t sub_22248A064(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 616) = a1;
  *(v3 + 624) = v1;

  if (v1)
  {
    v4 = *(v3 + 424);
    v5 = *(v3 + 432);

    v6 = *(v3 + 184);
    v7 = *(v3 + 200);
    v8 = *(v3 + 216);
    *(v5 + 48) = *(v3 + 232);
    *(v5 + 16) = v7;
    *(v5 + 32) = v8;
    *v5 = v6;
    v9 = sub_22248A1B4;
    v10 = v4;
  }

  else
  {
    v10 = *(v3 + 424);
    v9 = sub_22248A264;
  }

  return MEMORY[0x2822009F8](v9, v10, 0);
}

uint64_t sub_22248A1B4()
{
  (*(v0[62] + 8))(v0[63], v0[61]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22248A264()
{
  v1 = *(v0 + 616);
  v2 = *(v0 + 600);
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B4118();
  sub_2224B4108();
  v3 = *(v1 + 16);
  v4 = MEMORY[0x277D83B88];
  *(v0 + 336) = MEMORY[0x277D83B88];
  *(v0 + 312) = v3;
  sub_2224B40F8();
  sub_2224A7878(v0 + 312, &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  *(v0 + 368) = v4;
  *(v0 + 344) = v2;
  sub_2224B40F8();
  sub_2224A7878(v0 + 344, &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4568();

  if (*(v1 + 16))
  {
    v5 = *(v0 + 544);
    v7 = *(v0 + 496);
    v6 = *(v0 + 504);
    v8 = *(v0 + 488);
    sub_2224943AC(*(v0 + 616));
    v9 = sub_2224B4298();
    result = (*(v7 + 8))(v6, v8);
    if ((v9 & 1) == 0 && v3 >= v5)
    {
      v11 = *(v0 + 600);
      if (!__OFADD__(v11, 1))
      {
        v12 = *(v0 + 624);
        *(v0 + 600) = v11 + 1;
        sub_2224A7124(*(v0 + 416), v0 + 240);
        sub_222487F1C(0xD000000000000013, 0x80000002224B5ED0, (v0 + 128));
        if (v12)
        {
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 240));

          sub_222485F68();
          v13 = swift_allocError();
          v15 = *(v0 + 144);
          v14 = *(v0 + 160);
          v16 = *(v0 + 128);
          *(v17 + 48) = *(v0 + 176);
          *(v17 + 16) = v15;
          *(v17 + 32) = v14;
          *v17 = v16;
          v22 = *(v0 + 448);
          v21 = *(v0 + 456);
          v24 = *(v0 + 432);
          v23 = *(v0 + 440);
          MEMORY[0x223DB7AE0](v13);
          sub_2224B4208();
          *(v0 + 72) = sub_2224B41E8();
          *(v0 + 104) = v23;
          *(v0 + 112) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790], MEMORY[0x277D37788]);
          boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 80));
          (*(v22 + 32))(boxed_opaque_existential_1Tm, v21, v23);
          *(v0 + 120) = 7;
          sub_222485F68();
          swift_willThrowTypedImpl();
          MEMORY[0x223DB7AD0](v13);
          v26 = *(v0 + 72);
          v27 = *(v0 + 88);
          v28 = *(v0 + 104);
          *(v24 + 48) = *(v0 + 120);
          *(v24 + 16) = v27;
          *(v24 + 32) = v28;
          *v24 = v26;

          v29 = *(v0 + 8);

          return v29();
        }

        else
        {

          sub_2224B42B8();
          v30 = (*(v0 + 424) + *(v0 + 592));
          __swift_project_boxed_opaque_existential_1(v30, v30[3]);
          v31 = swift_task_alloc();
          *(v0 + 608) = v31;
          *v31 = v0;
          v31[1] = sub_22248A064;
          v32 = *(v0 + 504);

          return sub_222498770(v32, v0 + 184);
        }
      }

LABEL_20:
      __break(1u);
      return result;
    }
  }

  else
  {
    (*(*(v0 + 496) + 8))(*(v0 + 504), *(v0 + 488));
  }

  v18 = *(v0 + 600);
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B4118();
  result = sub_2224B4108();
  if (__OFADD__(v18, 1))
  {
    __break(1u);
    goto LABEL_20;
  }

  *(v0 + 400) = MEMORY[0x277D83B88];
  *(v0 + 376) = v18 + 1;
  sub_2224B40F8();
  sub_2224A7878(v0 + 376, &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4568();

  v19 = *(v0 + 408);

  v20 = *(v0 + 8);

  return v20(v19);
}

uint64_t _s15OnDeviceStorage10ConnectionC5plucky0abC4Core3RowVSgAE9QueryType_pYaAA0abC5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[28] = v3;
  v4[29] = a3;
  v4[26] = a1;
  v4[27] = a2;
  v5 = sub_2224B4228();
  v4[30] = v5;
  v4[31] = *(v5 - 8);
  v4[32] = swift_task_alloc();
  v6 = sub_2224B46A8();
  v4[33] = v6;
  v4[34] = *(v6 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22248AA34, v3, 0);
}

uint64_t sub_22248AA34()
{
  if (qword_28130A6D8 != -1)
  {
    swift_once();
  }

  v1 = sub_2224B46D8();
  __swift_project_value_buffer(v1, qword_28130A6E0);
  sub_2224B4698();
  v2 = sub_2224B46B8();
  v3 = sub_2224B4938();
  if (sub_2224B4948())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_2224B4688();
    _os_signpost_emit_with_name_impl(&dword_222484000, v2, v3, v5, "Pluck", "", v4, 2u);
    MEMORY[0x223DB7C20](v4, -1, -1);
  }

  v6 = v0[35];
  v7 = v0[36];
  v8 = v0[33];
  v9 = v0[34];
  v11 = v0[27];
  v10 = v0[28];

  (*(v9 + 16))(v6, v7, v8);
  sub_2224B4718();
  swift_allocObject();
  v0[37] = sub_2224B4708();
  (*(v9 + 8))(v7, v8);
  sub_2224A7124(v10 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession, (v0 + 16));
  __swift_project_boxed_opaque_existential_1(v0 + 16, v0[19]);
  v12 = v11[3];
  v13 = v11[4];
  v14 = __swift_project_boxed_opaque_existential_1(v11, v12);
  v0[24] = v12;
  v0[25] = *(v13 + 8);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v0 + 21);
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_1Tm, v14, v12);
  sub_222487F1C(0x3A5F286B63756C70, 0xE900000000000029, v0 + 2);

  sub_2224B4238();
  v16 = swift_task_alloc();
  v0[38] = v16;
  *v16 = v0;
  v16[1] = sub_22248ADE0;
  v17 = v0[32];
  v18 = v0[26];

  return sub_2224996B8(v18, v17, (v0 + 9));
}

uint64_t sub_22248ADE0()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[32];
  v5 = v2[31];
  v6 = v2[30];
  if (v0)
  {
    v7 = v3[28];
    v8 = v3[29];
    (*(v5 + 8))(v4, v6);
    v9 = *(v3 + 9);
    v10 = *(v3 + 11);
    v11 = *(v3 + 13);
    *(v8 + 48) = *(v3 + 120);
    *(v8 + 16) = v10;
    *(v8 + 32) = v11;
    *v8 = v9;
    v12 = sub_22248B028;
  }

  else
  {
    v7 = v3[28];
    (*(v5 + 8))(v4, v6);
    v12 = sub_22248AF78;
  }

  return MEMORY[0x2822009F8](v12, v7, 0);
}

uint64_t sub_22248AF78()
{
  v1 = v0[37];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  sub_2224A6760("Pluck", 5, 2, v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_22248B028()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  sub_2224A6760("Pluck", 5, 2, v0[37]);

  v1 = v0[1];

  return v1();
}

uint64_t _s15OnDeviceStorage10ConnectionC6selectySay0abC4Core3RowVGSSYaAA0abC5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = v3;
  v4[17] = a3;
  v4[14] = a1;
  v4[15] = a2;
  v5 = sub_2224B46A8();
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22248B1A8, v3, 0);
}

uint64_t sub_22248B1A8()
{
  if (qword_28130A6D8 != -1)
  {
    swift_once();
  }

  v1 = sub_2224B46D8();
  __swift_project_value_buffer(v1, qword_28130A6E0);
  sub_2224B4698();
  v2 = sub_2224B46B8();
  v3 = sub_2224B4938();
  if (sub_2224B4948())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_2224B4688();
    _os_signpost_emit_with_name_impl(&dword_222484000, v2, v3, v5, "Select(String)", "", v4, 2u);
    MEMORY[0x223DB7C20](v4, -1, -1);
  }

  v6 = v0[20];
  v7 = v0[21];
  v8 = v0[18];
  v9 = v0[19];
  v11 = v0[14];
  v10 = v0[15];

  (*(v9 + 16))(v6, v7, v8);
  sub_2224B4718();
  swift_allocObject();
  v0[22] = sub_2224B4708();
  (*(v9 + 8))(v7, v8);
  v12 = MEMORY[0x277D37928];
  v0[12] = MEMORY[0x277D837D0];
  v0[13] = v12;
  v0[9] = v11;
  v0[10] = v10;

  v13 = swift_task_alloc();
  v0[23] = v13;
  *v13 = v0;
  v13[1] = sub_22248B3C8;

  return sub_22248988C((v0 + 9), (v0 + 2));
}

uint64_t sub_22248B3C8(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    v5 = v4[16];
    v6 = sub_22248B5A4;
  }

  else
  {
    v7 = v4[16];
    v4[24] = a1;
    __swift_destroy_boxed_opaque_existential_1Tm(v4 + 9);
    v6 = sub_22248B504;
    v5 = v7;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22248B504()
{
  sub_2224A6760("Select(String)", 14, 2, v0[22]);

  v1 = v0[1];
  v2 = v0[24];

  return v1(v2);
}

uint64_t sub_22248B5A4()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 136);
  v3 = *(v0 + 16);
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  *(v2 + 48) = *(v0 + 64);
  *(v2 + 16) = v4;
  *(v2 + 32) = v5;
  *v2 = v3;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));
  sub_2224A6760("Select(String)", 14, 2, v1);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t _s15OnDeviceStorage10ConnectionC5plucky0abC4Core3RowVSgSSYaAA0abC5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[29] = v4;
  v5[30] = a4;
  v5[27] = a2;
  v5[28] = a3;
  v5[26] = a1;
  v6 = sub_2224B4228();
  v5[31] = v6;
  v5[32] = *(v6 - 8);
  v5[33] = swift_task_alloc();
  v7 = sub_2224B46A8();
  v5[34] = v7;
  v5[35] = *(v7 - 8);
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22248B794, v4, 0);
}

uint64_t sub_22248B794()
{
  if (qword_28130A6D8 != -1)
  {
    swift_once();
  }

  v1 = sub_2224B46D8();
  __swift_project_value_buffer(v1, qword_28130A6E0);
  sub_2224B4698();
  v2 = sub_2224B46B8();
  v3 = sub_2224B4938();
  if (sub_2224B4948())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_2224B4688();
    _os_signpost_emit_with_name_impl(&dword_222484000, v2, v3, v5, "Pluck(String)", "", v4, 2u);
    MEMORY[0x223DB7C20](v4, -1, -1);
  }

  v6 = v0[36];
  v7 = v0[37];
  v8 = v0[34];
  v9 = v0[35];
  v11 = v0[28];
  v10 = v0[29];
  v12 = v0[27];

  (*(v9 + 16))(v6, v7, v8);
  sub_2224B4718();
  swift_allocObject();
  v0[38] = sub_2224B4708();
  (*(v9 + 8))(v7, v8);
  sub_2224A7124(v10 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession, (v0 + 16));
  __swift_project_boxed_opaque_existential_1(v0 + 16, v0[19]);
  v13 = MEMORY[0x277D37928];
  v0[24] = MEMORY[0x277D837D0];
  v0[25] = v13;
  v0[21] = v12;
  v0[22] = v11;

  sub_222487F1C(0x3A5F286B63756C70, 0xE900000000000029, v0 + 2);

  sub_2224B4238();
  v14 = swift_task_alloc();
  v0[39] = v14;
  *v14 = v0;
  v14[1] = sub_22248BB18;
  v15 = v0[33];
  v16 = v0[26];

  return sub_2224996B8(v16, v15, (v0 + 9));
}

uint64_t sub_22248BB18()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[33];
  v5 = v2[32];
  v6 = v2[31];
  if (v0)
  {
    v7 = v3[29];
    v8 = v3[30];
    (*(v5 + 8))(v4, v6);
    v9 = *(v3 + 9);
    v10 = *(v3 + 11);
    v11 = *(v3 + 13);
    *(v8 + 48) = *(v3 + 120);
    *(v8 + 16) = v10;
    *(v8 + 32) = v11;
    *v8 = v9;
    v12 = sub_22248BD60;
  }

  else
  {
    v7 = v3[29];
    (*(v5 + 8))(v4, v6);
    v12 = sub_22248BCB0;
  }

  return MEMORY[0x2822009F8](v12, v7, 0);
}

uint64_t sub_22248BCB0()
{
  v1 = v0[38];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  sub_2224A6760("Pluck(String)", 13, 2, v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_22248BD60()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  sub_2224A6760("Pluck(String)", 13, 2, v0[38]);

  v1 = v0[1];

  return v1();
}

unint64_t Connection.select(paginated:options:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, v7);
  v16 = v5;
  v17 = v6;
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = *(v8 + 8);

  v14 = sub_2224A64B0(v11, &v16, v3, v7, v13);

  a3[3] = &type metadata for Connection.PaginatedSelectSequence;
  result = sub_2224A65A4();
  a3[4] = result;
  *a3 = v14;
  return result;
}

unint64_t Connection.select(paginated:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *a3;
  v9 = *(a3 + 8);

  v10 = sub_2224A65F8(a1, a2, v8, v9, v4);

  a4[3] = &type metadata for Connection.PaginatedSelectSequence;
  result = sub_2224A65A4();
  a4[4] = result;
  *a4 = v10;
  return result;
}

uint64_t _s15OnDeviceStorage10ConnectionC6scalaryx0abC4Core11ScalarQueryVyxGYaAA0abC5ErrorOYKAE5ValueRzlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[47] = v5;
  v6[48] = a5;
  v6[45] = a2;
  v6[46] = a3;
  v6[44] = a1;
  v7 = sub_2224B41F8();
  v6[49] = v7;
  v6[50] = *(v7 - 8);
  v6[51] = swift_task_alloc();
  v8 = sub_2224B4198();
  v6[52] = v8;
  v6[53] = *(v8 - 8);
  v6[54] = swift_task_alloc();
  v9 = sub_2224B4958();
  v6[55] = v9;
  v6[56] = *(v9 - 8);
  v6[57] = swift_task_alloc();
  v10 = sub_2224B4498();
  v6[58] = v10;
  v6[59] = *(v10 - 8);
  v6[60] = swift_task_alloc();
  v11 = sub_2224B45D8();
  v6[61] = v11;
  v6[62] = *(v11 - 8);
  v6[63] = swift_task_alloc();
  v12 = sub_2224B46A8();
  v6[64] = v12;
  v6[65] = *(v12 - 8);
  v6[66] = swift_task_alloc();
  v6[67] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22248C268, v5, 0);
}

uint64_t sub_22248C268()
{
  if (qword_28130A6D8 != -1)
  {
    swift_once();
  }

  v1 = sub_2224B46D8();
  __swift_project_value_buffer(v1, qword_28130A6E0);
  sub_2224B4698();
  v2 = sub_2224B46B8();
  v3 = sub_2224B4938();
  if (sub_2224B4948())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_2224B4688();
    _os_signpost_emit_with_name_impl(&dword_222484000, v2, v3, v5, "Scalar<V>", "", v4, 2u);
    MEMORY[0x223DB7C20](v4, -1, -1);
  }

  v6 = v0[67];
  v7 = v0[66];
  v8 = v0[65];
  v9 = v0[64];
  v10 = v0[47];
  v11 = v0[45];

  (*(v8 + 16))(v7, v6, v9);
  sub_2224B4718();
  swift_allocObject();
  v0[68] = sub_2224B4708();
  (*(v8 + 8))(v6, v9);
  sub_2224A7124(v10 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession, (v0 + 23));
  __swift_project_boxed_opaque_existential_1(v0 + 23, v0[26]);
  v12 = sub_2224B4218();
  v0[31] = v12;
  v0[32] = swift_getWitnessTable();
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v0 + 28);
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_1Tm, v11, v12);
  sub_222487F1C(0x5F2872616C616373, 0xEA0000000000293ALL, v0 + 2);

  sub_2224B4238();
  v14 = swift_task_alloc();
  v0[69] = v14;
  *v14 = v0;
  v14[1] = sub_22248C674;
  v15 = v0[63];
  v16 = v0[60];

  return sub_22249A5C8(v15, v16, (v0 + 16));
}

uint64_t sub_22248C674()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[60];
  v5 = v2[59];
  v6 = v2[58];
  v7 = v2[47];
  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v8 = *(v3 + 9);
    *(v3 + 9) = *(v3 + 8);
    *(v3 + 11) = v8;
    *(v3 + 13) = *(v3 + 10);
    *(v3 + 120) = *(v3 + 176);
    v9 = sub_22248CCAC;
  }

  else
  {
    v9 = sub_22248C808;
  }

  return MEMORY[0x2822009F8](v9, v7, 0);
}

uint64_t sub_22248C808()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 23);
  sub_2224B45C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E348, &qword_2224B50F0);
  if (swift_dynamicCast())
  {
    v1 = v0[68];
    v2 = v0[57];
    v3 = v0[46];
    v4 = v0[44];
    (*(v0[62] + 8))(v0[63], v0[61]);
    v5 = *(v3 - 8);
    (*(v5 + 56))(v2, 0, 1, v3);
    (*(v5 + 32))(v4, v2, v3);
    sub_2224A6760("Scalar<V>", 9, 2, v1);
  }

  else
  {
    v28 = v0[62];
    v29 = v0[61];
    v8 = v0[56];
    v7 = v0[57];
    v10 = v0[54];
    v9 = v0[55];
    v11 = v0[52];
    v12 = v0[53];
    v24 = v0[63];
    v25 = v0[51];
    v13 = v0[48];
    v26 = v0[49];
    v27 = v0[50];
    v14 = v0[46];
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
    (*(v8 + 8))(v7, v9);
    v0[43] = v14;
    swift_getMetatypeMetadata();
    v15 = sub_2224B4808();
    v17 = v16;
    sub_2224B45C8();
    v18 = sub_2224B4808();
    *v10 = 0x5F2872616C616373;
    v10[1] = 0xEA0000000000293ALL;
    v10[2] = v15;
    v10[3] = v17;
    v10[4] = v18;
    v10[5] = v19;
    (*(v12 + 104))(v10, *MEMORY[0x277D37758], v11);
    sub_2224A76C8(&qword_27D00E328, MEMORY[0x277D37778], MEMORY[0x277D37780]);
    v20 = swift_allocError();
    (*(v12 + 16))(v21, v10, v11);
    MEMORY[0x223DB7AE0](v20);
    sub_2224B4208();
    *v13 = sub_2224B41E8();
    *(v13 + 32) = v26;
    *(v13 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790], MEMORY[0x277D37788]);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v13 + 8));
    (*(v27 + 32))(boxed_opaque_existential_1Tm, v25, v26);
    MEMORY[0x223DB7AD0](v20);
    (*(v12 + 8))(v10, v11);
    *(v13 + 48) = 7;
    sub_222485F68();
    swift_willThrowTypedImpl();
    (*(v28 + 8))(v24, v29);
    sub_2224A6760("Scalar<V>", 9, 2, v0[68]);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_22248CCAC()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 72);
  v3 = *(v0 + 88);
  v4 = *(v0 + 104);
  *(v1 + 48) = *(v0 + 120);
  *(v1 + 16) = v3;
  *(v1 + 32) = v4;
  *v1 = v2;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 184));
  sub_2224A6760("Scalar<V>", 9, 2, *(v0 + 544));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t _s15OnDeviceStorage10ConnectionC6scalary9ValueTypeQzSg0abC4Core11ScalarQueryVyxSgGYaAA0abC5ErrorOYKAH0F0RzlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[47] = v5;
  v6[48] = a5;
  v6[45] = a2;
  v6[46] = a3;
  v6[44] = a1;
  v7 = sub_2224B41F8();
  v6[49] = v7;
  v6[50] = *(v7 - 8);
  v6[51] = swift_task_alloc();
  v8 = sub_2224B4198();
  v6[52] = v8;
  v6[53] = *(v8 - 8);
  v6[54] = swift_task_alloc();
  v6[55] = swift_getAssociatedTypeWitness();
  v9 = sub_2224B4958();
  v6[56] = v9;
  v6[57] = *(v9 - 8);
  v6[58] = swift_task_alloc();
  v10 = sub_2224B4958();
  v6[59] = v10;
  v6[60] = *(v10 - 8);
  v6[61] = swift_task_alloc();
  v11 = sub_2224B4498();
  v6[62] = v11;
  v6[63] = *(v11 - 8);
  v6[64] = swift_task_alloc();
  v12 = sub_2224B45D8();
  v6[65] = v12;
  v6[66] = *(v12 - 8);
  v6[67] = swift_task_alloc();
  v13 = sub_2224B46A8();
  v6[68] = v13;
  v6[69] = *(v13 - 8);
  v6[70] = swift_task_alloc();
  v6[71] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22248D100, v5, 0);
}

uint64_t sub_22248D100()
{
  if (qword_28130A6D8 != -1)
  {
    swift_once();
  }

  v1 = sub_2224B46D8();
  __swift_project_value_buffer(v1, qword_28130A6E0);
  sub_2224B4698();
  v2 = sub_2224B46B8();
  v3 = sub_2224B4938();
  if (sub_2224B4948())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_2224B4688();
    _os_signpost_emit_with_name_impl(&dword_222484000, v2, v3, v5, "Scalar<V?>", "", v4, 2u);
    MEMORY[0x223DB7C20](v4, -1, -1);
  }

  v6 = v0[71];
  v7 = v0[70];
  v8 = v0[69];
  v9 = v0[68];
  v10 = v0[47];
  v11 = v0[45];

  (*(v8 + 16))(v7, v6, v9);
  sub_2224B4718();
  swift_allocObject();
  v0[72] = sub_2224B4708();
  (*(v8 + 8))(v6, v9);
  sub_2224A7124(v10 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession, (v0 + 23));
  __swift_project_boxed_opaque_existential_1(v0 + 23, v0[26]);
  sub_2224B4958();
  v12 = sub_2224B4218();
  v0[31] = v12;
  v0[32] = swift_getWitnessTable();
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v0 + 28);
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_1Tm, v11, v12);
  sub_222487F1C(0x5F2872616C616373, 0xEA0000000000293ALL, v0 + 2);

  sub_2224B4238();
  v14 = swift_task_alloc();
  v0[73] = v14;
  *v14 = v0;
  v14[1] = sub_22248D524;
  v15 = v0[67];
  v16 = v0[64];

  return sub_22249A5C8(v15, v16, (v0 + 16));
}

uint64_t sub_22248D524()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[64];
  v5 = v2[63];
  v6 = v2[62];
  v7 = v2[47];
  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v8 = *(v3 + 9);
    *(v3 + 9) = *(v3 + 8);
    *(v3 + 11) = v8;
    *(v3 + 13) = *(v3 + 10);
    *(v3 + 120) = *(v3 + 176);
    v9 = sub_22248DCC0;
  }

  else
  {
    v9 = sub_22248D6B8;
  }

  return MEMORY[0x2822009F8](v9, v7, 0);
}

uint64_t sub_22248D6B8()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 23);
  sub_2224B45C8();
  if (!v0[36])
  {
    v6 = v0[61];
    v7 = v0[55];
    (*(v0[66] + 8))(v0[67], v0[65]);
    sub_2224A7878((v0 + 33), &qword_27D00E348, &qword_2224B50F0);
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E350, &qword_2224B5100);
  if (swift_dynamicCast())
  {
    v1 = v0[61];
    v2 = v0[58];
    v3 = v0[55];
    (*(v0[66] + 8))(v0[67], v0[65]);
    v4 = *(v3 - 8);
    v5 = *(v4 + 56);
    v5(v2, 0, 1, v3);
    (*(v4 + 32))(v1, v2, v3);
    v5(v1, 0, 1, v3);
LABEL_5:
    v8 = v0[72];
    v9 = v0[61];
    v10 = v0[57];
    v11 = v0[56];
    v12 = v0[44];
    (*(v10 + 56))(v9, 0, 1, v11);
    (*(v10 + 32))(v12, v9, v11);
    sub_2224A6760("Scalar<V?>", 10, 2, v8);

    v13 = v0[1];
    goto LABEL_7;
  }

  v37 = v0[66];
  v38 = v0[65];
  v15 = v0[60];
  v14 = v0[61];
  v16 = v0[58];
  v17 = v0[59];
  v18 = v0[56];
  v19 = v0[57];
  v20 = v0[54];
  v21 = v0[53];
  v32 = v0[67];
  v33 = v0[52];
  v36 = v0[50];
  v22 = v0[48];
  v34 = v0[51];
  v35 = v0[49];
  (*(*(v0[55] - 8) + 56))(v16, 1, 1);
  (*(v19 + 8))(v16, v18);
  (*(v19 + 56))(v14, 1, 1, v18);
  (*(v15 + 8))(v14, v17);
  v0[43] = v18;
  swift_getMetatypeMetadata();
  v23 = sub_2224B4808();
  v25 = v24;
  sub_2224B45C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E348, &qword_2224B50F0);
  v26 = sub_2224B4808();
  *v20 = 0x5F2872616C616373;
  v20[1] = 0xEA0000000000293ALL;
  v20[2] = v23;
  v20[3] = v25;
  v20[4] = v26;
  v20[5] = v27;
  (*(v21 + 104))(v20, *MEMORY[0x277D37758], v33);
  sub_2224A76C8(&qword_27D00E328, MEMORY[0x277D37778], MEMORY[0x277D37780]);
  v28 = swift_allocError();
  (*(v21 + 16))(v29, v20, v33);
  MEMORY[0x223DB7AE0](v28);
  sub_2224B4208();
  *v22 = sub_2224B41E8();
  *(v22 + 32) = v35;
  *(v22 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790], MEMORY[0x277D37788]);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v22 + 8));
  (*(v36 + 32))(boxed_opaque_existential_1Tm, v34, v35);
  MEMORY[0x223DB7AD0](v28);
  (*(v21 + 8))(v20, v33);
  *(v22 + 48) = 7;
  sub_222485F68();
  swift_willThrowTypedImpl();
  (*(v37 + 8))(v32, v38);
  sub_2224A6760("Scalar<V?>", 10, 2, v0[72]);

  v13 = v0[1];
LABEL_7:

  return v13();
}

uint64_t sub_22248DCC0()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 72);
  v3 = *(v0 + 88);
  v4 = *(v0 + 104);
  *(v1 + 48) = *(v0 + 120);
  *(v1 + 16) = v3;
  *(v1 + 32) = v4;
  *v1 = v2;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 184));
  sub_2224A6760("Scalar<V?>", 10, 2, *(v0 + 576));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t _s15OnDeviceStorage10ConnectionC6existsySb0abC4Core6SelectVySbGYaAA0abC5ErrorOYKF(uint64_t a1, uint64_t a2)
{
  v3[45] = v2;
  v3[46] = a2;
  v3[44] = a1;
  v4 = sub_2224B41F8();
  v3[47] = v4;
  v3[48] = *(v4 - 8);
  v3[49] = swift_task_alloc();
  v5 = sub_2224B4198();
  v3[50] = v5;
  v3[51] = *(v5 - 8);
  v3[52] = swift_task_alloc();
  v6 = sub_2224B4498();
  v3[53] = v6;
  v3[54] = *(v6 - 8);
  v3[55] = swift_task_alloc();
  v7 = sub_2224B45D8();
  v3[56] = v7;
  v3[57] = *(v7 - 8);
  v3[58] = swift_task_alloc();
  v8 = sub_2224B46A8();
  v3[59] = v8;
  v3[60] = *(v8 - 8);
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22248E028, v2, 0);
}

uint64_t sub_22248E028()
{
  if (qword_28130A6D8 != -1)
  {
    swift_once();
  }

  v1 = sub_2224B46D8();
  __swift_project_value_buffer(v1, qword_28130A6E0);
  sub_2224B4698();
  v2 = sub_2224B46B8();
  v3 = sub_2224B4938();
  if (sub_2224B4948())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_2224B4688();
    _os_signpost_emit_with_name_impl(&dword_222484000, v2, v3, v5, "Exists", "", v4, 2u);
    MEMORY[0x223DB7C20](v4, -1, -1);
  }

  v6 = v0[61];
  v7 = v0[62];
  v8 = v0[59];
  v9 = v0[60];
  v11 = v0[44];
  v10 = v0[45];

  (*(v9 + 16))(v6, v7, v8);
  sub_2224B4718();
  swift_allocObject();
  v0[63] = sub_2224B4708();
  (*(v9 + 8))(v7, v8);
  sub_2224A7124(v10 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession, (v0 + 23));
  __swift_project_boxed_opaque_existential_1(v0 + 23, v0[26]);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E358, &qword_2224B5110);
  v0[31] = v12;
  v0[32] = sub_2224A77C8(&qword_27D00E360, &qword_27D00E358, &qword_2224B5110, MEMORY[0x277D378F0]);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v0 + 28);
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_1Tm, v11, v12);
  sub_222487F1C(0x5F28737473697865, 0xEA0000000000293ALL, v0 + 2);

  sub_2224B4238();
  v14 = swift_task_alloc();
  v0[64] = v14;
  *v14 = v0;
  v14[1] = sub_22248E42C;
  v15 = v0[58];
  v16 = v0[55];

  return sub_22249A5C8(v15, v16, (v0 + 16));
}

uint64_t sub_22248E42C()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[55];
  v5 = v2[54];
  v6 = v2[53];
  v7 = v2[45];
  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v8 = *(v3 + 9);
    *(v3 + 9) = *(v3 + 8);
    *(v3 + 11) = v8;
    *(v3 + 13) = *(v3 + 10);
    *(v3 + 120) = *(v3 + 176);
    v9 = sub_22248E9B4;
  }

  else
  {
    v9 = sub_22248E5C0;
  }

  return MEMORY[0x2822009F8](v9, v7, 0);
}

uint64_t sub_22248E5C0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 184));
  sub_2224B45C8();
  if (*(v0 + 288))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E350, &qword_2224B5100);
    if (swift_dynamicCast())
    {
      v1 = *(v0 + 504);
      (*(*(v0 + 456) + 8))(*(v0 + 464), *(v0 + 448));
      v2 = *(v0 + 65);
      sub_2224A6760("Exists", 6, 2, v1);

      v3 = *(v0 + 8);
      v4 = v2;
      goto LABEL_6;
    }
  }

  else
  {
    sub_2224A7878(v0 + 264, &qword_27D00E348, &qword_2224B50F0);
  }

  v21 = *(v0 + 464);
  v22 = *(v0 + 456);
  v23 = *(v0 + 448);
  v6 = *(v0 + 408);
  v5 = *(v0 + 416);
  v8 = *(v0 + 392);
  v7 = *(v0 + 400);
  v9 = *(v0 + 384);
  v20 = *(v0 + 376);
  v10 = *(v0 + 368);
  *(v0 + 344) = MEMORY[0x277D839B0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E368, &qword_2224B5118);
  v11 = sub_2224B4808();
  v13 = v12;
  sub_2224B45C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E348, &qword_2224B50F0);
  v14 = sub_2224B4808();
  *v5 = 0x5F28737473697865;
  v5[1] = 0xEA0000000000293ALL;
  v5[2] = v11;
  v5[3] = v13;
  v5[4] = v14;
  v5[5] = v15;
  (*(v6 + 104))(v5, *MEMORY[0x277D37758], v7);
  sub_2224A76C8(&qword_27D00E328, MEMORY[0x277D37778], MEMORY[0x277D37780]);
  v16 = swift_allocError();
  (*(v6 + 16))(v17, v5, v7);
  MEMORY[0x223DB7AE0](v16);
  sub_2224B4208();
  *v10 = sub_2224B41E8();
  *(v10 + 32) = v20;
  *(v10 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790], MEMORY[0x277D37788]);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v10 + 8));
  (*(v9 + 32))(boxed_opaque_existential_1Tm, v8, v20);
  MEMORY[0x223DB7AD0](v16);
  (*(v6 + 8))(v5, v7);
  *(v10 + 48) = 7;
  sub_222485F68();
  swift_willThrowTypedImpl();
  (*(v22 + 8))(v21, v23);
  sub_2224A6760("Exists", 6, 2, *(v0 + 504));

  v3 = *(v0 + 8);
  v4 = 0;
LABEL_6:

  return v3(v4);
}

uint64_t sub_22248E9B4()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 72);
  v3 = *(v0 + 88);
  v4 = *(v0 + 104);
  *(v1 + 48) = *(v0 + 120);
  *(v1 + 16) = v3;
  *(v1 + 32) = v4;
  *v1 = v2;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 184));
  sub_2224A6760("Exists", 6, 2, *(v0 + 504));

  v5 = *(v0 + 8);

  return v5(0);
}

uint64_t _s15OnDeviceStorage10ConnectionC6insertys5Int64V0abC4Core6InsertVYaAA0abC5ErrorOYKF(uint64_t a1, uint64_t a2)
{
  v3[55] = v2;
  v3[56] = a2;
  v3[54] = a1;
  sub_2224B4128();
  v3[57] = swift_task_alloc();
  v4 = sub_2224B4198();
  v3[58] = v4;
  v3[59] = *(v4 - 8);
  v3[60] = swift_task_alloc();
  v5 = sub_2224B4278();
  v3[61] = v5;
  v3[62] = *(v5 - 8);
  v3[63] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E370, &qword_2224B5128);
  v3[64] = v6;
  v3[65] = *(v6 - 8);
  v3[66] = swift_task_alloc();
  v7 = sub_2224B41F8();
  v3[67] = v7;
  v3[68] = *(v7 - 8);
  v3[69] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E378, &qword_2224B5130);
  v3[70] = swift_task_alloc();
  v8 = sub_2224B4368();
  v3[71] = v8;
  v3[72] = *(v8 - 8);
  v3[73] = swift_task_alloc();
  v9 = sub_2224B4558();
  v3[74] = v9;
  v3[75] = *(v9 - 8);
  v3[76] = swift_task_alloc();
  v10 = sub_2224B46A8();
  v3[77] = v10;
  v3[78] = *(v10 - 8);
  v3[79] = swift_task_alloc();
  v3[80] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22248EE24, v2, 0);
}

uint64_t sub_22248EE24()
{
  if (qword_28130A6D8 != -1)
  {
    swift_once();
  }

  v1 = sub_2224B46D8();
  __swift_project_value_buffer(v1, qword_28130A6E0);
  sub_2224B4698();
  v2 = sub_2224B46B8();
  v3 = sub_2224B4938();
  if (sub_2224B4948())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_2224B4688();
    _os_signpost_emit_with_name_impl(&dword_222484000, v2, v3, v5, "Insert", "", v4, 2u);
    MEMORY[0x223DB7C20](v4, -1, -1);
  }

  v6 = v0[80];
  v7 = v0[79];
  v8 = v0[78];
  v9 = v0[77];

  (*(v8 + 16))(v7, v6, v9);
  sub_2224B4718();
  swift_allocObject();
  v0[81] = sub_2224B4708();
  (*(v8 + 8))(v6, v9);
  v0[82] = sub_222487F1C(0x5F28747265736E69, 0xEA0000000000293ALL, v0 + 2);
  v0[83] = v10;
  sub_2224903A4(0x5F28747265736E69, 0xEA0000000000293ALL, v0 + 16, v0[73]);
  sub_2224B4548();
  v11 = v0[70];
  v12 = v0[65];
  v13 = v0[64];
  (*(v0[72] + 8))(v0[73], v0[71]);
  sub_2224B4538();
  v0[84] = sub_2224B49E8();

  v0[85] = OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession;
  v0[86] = OBJC_IVAR____TtC15OnDeviceStorage10Connection_userId;
  sub_2224B4A58();
  v14 = *(v12 + 48);
  v0[87] = v14;
  if (v14(v11, 1, v13) == 1)
  {

    if (qword_28130A5F8 != -1)
    {
      swift_once();
    }

    v15 = v0[81];
    v16 = v0[76];
    v17 = v0[75];
    v27 = v0[74];
    v18 = sub_2224B4628();
    __swift_project_value_buffer(v18, qword_28130A600);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
    sub_2224B4148();
    *(swift_allocObject() + 16) = xmmword_2224B5060;
    sub_2224B4118();
    sub_2224B4108();
    v0[50] = MEMORY[0x277D83B88];
    v0[47] = 0;
    sub_2224B40F8();
    sub_2224A7878((v0 + 47), &qword_27D00E338, &qword_2224B5090);
    sub_2224B4108();
    sub_2224B4138();
    sub_2224B4568();

    (*(v17 + 8))(v16, v27);
    sub_2224A6760("Insert", 6, 2, v15);

    v19 = v0[1];

    return v19(0);
  }

  else
  {
    v21 = *(v0[65] + 32);
    v0[88] = v21;
    v0[89] = 0;
    v22 = v0[85];
    v23 = v0[74];
    v24 = v0[55];
    v21(v0[66], v0[70], v0[64]);
    sub_2224A7124(v24 + v22, (v0 + 37));
    __swift_project_boxed_opaque_existential_1(v0 + 37, v0[40]);
    v0[45] = v23;
    v0[46] = sub_2224A76C8(&qword_28130A460, MEMORY[0x277D378E8], MEMORY[0x277D378D8]);
    __swift_allocate_boxed_opaque_existential_1Tm(v0 + 42);
    sub_2224B4178();
    sub_2224B4158();
    sub_2224B4188();

    sub_2224B4288();
    v25 = swift_task_alloc();
    v0[90] = v25;
    *v25 = v0;
    v25[1] = sub_22248F8FC;
    v26 = v0[63];

    return sub_22249B4D8(v26, (v0 + 30));
  }
}

uint64_t sub_22248F8FC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 408) = v2;
  *(v3 + 416) = a1;
  *(v3 + 424) = v1;
  *(v3 + 728) = v1;

  if (v1)
  {
    v5 = *(v3 + 496);
    v4 = *(v3 + 504);
    v6 = *(v3 + 488);
    v7 = *(v3 + 440);
    v8 = *(v3 + 448);

    (*(v5 + 8))(v4, v6);
    v9 = *(v3 + 240);
    v10 = *(v3 + 256);
    v11 = *(v3 + 272);
    *(v8 + 48) = *(v3 + 288);
    *(v8 + 16) = v10;
    *(v8 + 32) = v11;
    *v8 = v9;
    v12 = sub_222490230;
    v13 = v7;
  }

  else
  {
    v14 = *(v3 + 440);
    (*(*(v3 + 496) + 8))(*(v3 + 504), *(v3 + 488));
    v12 = sub_22248FA90;
    v13 = v14;
  }

  return MEMORY[0x2822009F8](v12, v13, 0);
}

uint64_t sub_22248FA90()
{
  v1 = *(v0 + 712);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 296));
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = *(v0 + 696);
  v4 = *(v0 + 560);
  v5 = *(v0 + 512);
  (*(*(v0 + 520) + 8))(*(v0 + 528), v5);
  sub_2224B4A58();
  if (v3(v4, 1, v5) == 1)
  {
    v38 = *(v0 + 416);

    if (qword_28130A5F8 == -1)
    {
LABEL_4:
      v6 = *(v0 + 648);
      v7 = *(v0 + 600);
      v32 = *(v0 + 592);
      v33 = *(v0 + 608);
      v8 = sub_2224B4628();
      __swift_project_value_buffer(v8, qword_28130A600);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
      sub_2224B4148();
      *(swift_allocObject() + 16) = xmmword_2224B5060;
      sub_2224B4118();
      sub_2224B4108();
      *(v0 + 400) = MEMORY[0x277D83B88];
      *(v0 + 376) = v2;
      sub_2224B40F8();
      sub_2224A7878(v0 + 376, &qword_27D00E338, &qword_2224B5090);
      sub_2224B4108();
      sub_2224B4138();
      sub_2224B4568();

      (*(v7 + 8))(v33, v32);
      sub_2224A6760("Insert", 6, 2, v6);

      v9 = *(v0 + 8);

      return v9(v38);
    }

LABEL_15:
    swift_once();
    goto LABEL_4;
  }

  v11 = *(v0 + 728);
  *(v0 + 712) = v2;
  v12 = *(v0 + 680);
  v39 = v11;
  v13 = *(v0 + 592);
  v14 = *(v0 + 440);
  (*(v0 + 704))(*(v0 + 528), *(v0 + 560), *(v0 + 512));
  sub_2224A7124(v14 + v12, v0 + 296);
  __swift_project_boxed_opaque_existential_1((v0 + 296), *(v0 + 320));
  *(v0 + 360) = v13;
  *(v0 + 368) = sub_2224A76C8(&qword_28130A460, MEMORY[0x277D378E8], MEMORY[0x277D378D8]);
  __swift_allocate_boxed_opaque_existential_1Tm((v0 + 336));
  sub_2224B4178();
  sub_2224B4158();
  sub_2224B4188();

  sub_2224B4288();
  if (v39)
  {
    v15 = *(v0 + 600);
    v34 = *(v0 + 592);
    v16 = *(v0 + 552);
    v17 = *(v0 + 544);
    v18 = *(v0 + 536);
    v35 = *(v0 + 608);
    v36 = *(v0 + 520);
    v37 = *(v0 + 512);
    v40 = *(v0 + 528);
    v19 = *(v0 + 472);
    v20 = *(v0 + 480);
    v21 = *(v0 + 464);
    v22 = *(v0 + 448);

    sub_2224A76C8(&qword_27D00E328, MEMORY[0x277D37778], MEMORY[0x277D37780]);
    v23 = swift_allocError();
    (*(v19 + 32))(v24, v20, v21);
    MEMORY[0x223DB7AE0](v23);
    sub_2224B4208();
    *(v0 + 184) = sub_2224B41E8();
    *(v0 + 216) = v18;
    *(v0 + 224) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790], MEMORY[0x277D37788]);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 192));
    (*(v17 + 32))(boxed_opaque_existential_1Tm, v16, v18);
    *(v0 + 232) = 7;
    sub_222485F68();
    swift_willThrowTypedImpl();

    MEMORY[0x223DB7AD0](v23);
    (*(v15 + 8))(v35, v34);
    v26 = *(v0 + 184);
    v27 = *(v0 + 200);
    v28 = *(v0 + 216);
    *(v22 + 48) = *(v0 + 232);
    *(v22 + 16) = v27;
    *(v22 + 32) = v28;
    *v22 = v26;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 296));
    (*(v36 + 8))(v40, v37);
    sub_2224A6760("Insert", 6, 2, *(v0 + 648));

    v29 = *(v0 + 8);

    return v29();
  }

  else
  {
    v30 = swift_task_alloc();
    *(v0 + 720) = v30;
    *v30 = v0;
    v30[1] = sub_22248F8FC;
    v31 = *(v0 + 504);

    return sub_22249B4D8(v31, v0 + 240);
  }
}

uint64_t sub_222490230()
{
  v1 = v0[76];
  v2 = v0[75];
  v3 = v0[74];
  v4 = v0[66];
  v5 = v0[65];
  v6 = v0[64];

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 37);
  (*(v5 + 8))(v4, v6);
  sub_2224A6760("Insert", 6, 2, v0[81]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2224903A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a3;
  v36 = a1;
  v5 = v4;
  v37 = a2;
  v35[1] = a4;
  v6 = sub_2224B41F8();
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x28223BE20](v6);
  v39 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2224B4198();
  v38 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = (v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for Connection.State(0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v35 - v15;
  v17 = sub_2224B4398();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC15OnDeviceStorage10Connection_state;
  swift_beginAccess();
  sub_2224A5830(v5 + v21, v16);
  if ((*(v18 + 48))(v16, 2, v17))
  {
    sub_2224A70C4(v16, type metadata accessor for Connection.State);
    sub_2224A5830(v5 + v21, v14);
    v22 = sub_222485A10();
    v24 = v23;
    sub_2224A70C4(v14, type metadata accessor for Connection.State);
    *v10 = v22;
    v10[1] = v24;
    v25 = v37;
    v10[2] = v36;
    v10[3] = v25;
    v26 = v38;
    (*(v38 + 104))(v10, *MEMORY[0x277D37770], v8);
    sub_2224A76C8(&qword_27D00E328, MEMORY[0x277D37778], MEMORY[0x277D37780]);
    v27 = swift_allocError();
    (*(v26 + 16))(v28, v10, v8);

    MEMORY[0x223DB7AE0](v27);
    v29 = v39;
    sub_2224B4208();
    v30 = sub_2224B41E8();
    v31 = v42;
    *v42 = v30;
    v32 = v41;
    v31[4] = v41;
    v31[5] = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790], MEMORY[0x277D37788]);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v31 + 1);
    (*(v40 + 32))(boxed_opaque_existential_1Tm, v29, v32);
    MEMORY[0x223DB7AD0](v27);
    (*(v26 + 8))(v10, v8);
    *(v31 + 48) = 7;
    sub_222485F68();
    return swift_willThrowTypedImpl();
  }

  else
  {
    (*(v18 + 32))(v20, v16, v17);
    sub_2224B4378();
    return (*(v18 + 8))(v20, v17);
  }
}

uint64_t _s15OnDeviceStorage10ConnectionC6upsertys5Int64VAA16DictionaryUpsertVYaAA0abC5ErrorOYKF(uint64_t a1, uint64_t a2)
{
  v3[69] = a2;
  v3[68] = v2;
  v3[67] = a1;
  sub_2224B4128();
  v3[70] = swift_task_alloc();
  v4 = sub_2224B4198();
  v3[71] = v4;
  v3[72] = *(v4 - 8);
  v3[73] = swift_task_alloc();
  v5 = sub_2224B4278();
  v3[74] = v5;
  v3[75] = *(v5 - 8);
  v3[76] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E370, &qword_2224B5128);
  v3[77] = v6;
  v3[78] = *(v6 - 8);
  v3[79] = swift_task_alloc();
  v7 = sub_2224B41F8();
  v3[80] = v7;
  v3[81] = *(v7 - 8);
  v3[82] = swift_task_alloc();
  v8 = sub_2224B4368();
  v3[83] = v8;
  v3[84] = *(v8 - 8);
  v3[85] = swift_task_alloc();
  v9 = sub_2224B46A8();
  v3[86] = v9;
  v3[87] = *(v9 - 8);
  v3[88] = swift_task_alloc();
  v3[89] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222490AF8, v2, 0);
}

uint64_t sub_222490AF8()
{
  v53 = v0;
  if (qword_28130A6D8 != -1)
  {
    swift_once();
  }

  v1 = sub_2224B46D8();
  __swift_project_value_buffer(v1, qword_28130A6E0);
  sub_2224B4698();
  v2 = sub_2224B46B8();
  v3 = sub_2224B4938();
  if (sub_2224B4948())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_2224B4688();
    _os_signpost_emit_with_name_impl(&dword_222484000, v2, v3, v5, "Upsert", "", v4, 2u);
    MEMORY[0x223DB7C20](v4, -1, -1);
  }

  v6 = *(v0 + 712);
  v7 = *(v0 + 704);
  v8 = *(v0 + 696);
  v9 = *(v0 + 688);
  v10 = *(v0 + 536);

  (*(v8 + 16))(v7, v6, v9);
  sub_2224B4718();
  swift_allocObject();
  v11 = sub_2224B4708();
  *(v0 + 720) = v11;
  (*(v8 + 8))(v6, v9);
  if (!*(*(v10 + 40) + 16))
  {
    if (qword_28130A5F8 != -1)
    {
      swift_once();
    }

    v12 = sub_2224B4628();
    __swift_project_value_buffer(v12, qword_28130A600);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
    sub_2224B4148();
    *(swift_allocObject() + 16) = xmmword_2224B5060;
    sub_2224B40E8();
    sub_2224B4568();

    goto LABEL_10;
  }

  sub_2224903A4(0x5F28747265737075, 0xEA0000000000293ALL, (v0 + 16), *(v0 + 680));
  *(v0 + 728) = sub_222487F1C(0x5F28747265737075, 0xEA0000000000293ALL, (v0 + 72));
  *(v0 + 736) = v15;
  v16 = *(v0 + 536);
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  sub_2224B4678();
  if (v17)
  {
    __swift_project_boxed_opaque_existential_1(*(v0 + 536), v16[3]);
    sub_2224B4668();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E380, &qword_2224B5148);
    sub_2224A77C8(&qword_28130A320, &qword_27D00E380, &qword_2224B5148, MEMORY[0x277D37920]);
    v37 = sub_2224B44D8();
    v38 = *(v0 + 680);
    v39 = *(v0 + 536);

    sub_2224A7124(v39, v0 + 352);
    *(v0 + 392) = v37;
    sub_2224AA918((v0 + 352), v38, 20480, &v52);
    v40 = *(v0 + 544);
    v41 = v52;
    *(v0 + 744) = v52;
    v42 = *(v41 + 16);
    *(v0 + 752) = v42;
    v43 = OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession;
    *(v0 + 760) = OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession;
    *(v0 + 768) = OBJC_IVAR____TtC15OnDeviceStorage10Connection_userId;
    if (v42)
    {
      v44 = *(v0 + 624);
      *(v0 + 776) = 0;
      if (*(v41 + 16))
      {
        (*(v44 + 16))(*(v0 + 632), v41 + ((*(v44 + 80) + 32) & ~*(v44 + 80)), *(v0 + 616));
        sub_2224A7124(v40 + v43, v0 + 400);
        __swift_project_boxed_opaque_existential_1((v0 + 400), *(v0 + 424));
        *(v0 + 464) = sub_2224B4558();
        *(v0 + 472) = sub_2224A76C8(&qword_28130A460, MEMORY[0x277D378E8], MEMORY[0x277D378D8]);
        __swift_allocate_boxed_opaque_existential_1Tm((v0 + 440));
        sub_2224B4178();
        sub_2224B4158();
        sub_2224B4188();

        sub_2224B4288();
        v49 = swift_task_alloc();
        *(v0 + 784) = v49;
        *v49 = v0;
        v49[1] = sub_22249193C;
        v50 = *(v0 + 608);

        return sub_22249B4D8(v50, v0 + 296);
      }

      __break(1u);
    }

    else
    {

      if (qword_28130A5F8 == -1)
      {
LABEL_22:
        v45 = *(v0 + 752);
        v11 = *(v0 + 720);
        v51 = *(v0 + 680);
        v46 = *(v0 + 672);
        v47 = *(v0 + 664);
        v48 = sub_2224B4628();
        __swift_project_value_buffer(v48, qword_28130A600);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
        sub_2224B4148();
        *(swift_allocObject() + 16) = xmmword_2224B5060;
        sub_2224B4118();
        sub_2224B4108();
        *(v0 + 504) = MEMORY[0x277D83B88];
        *(v0 + 480) = v45;
        sub_2224B40F8();
        sub_2224A7878(v0 + 480, &qword_27D00E338, &qword_2224B5090);
        sub_2224B4108();
        sub_2224B4138();
        sub_2224B4568();

        sub_2224A670C(v0 + 352);
        (*(v46 + 8))(v51, v47);
LABEL_10:
        sub_2224A6760("Upsert", 6, 2, v11);

        v13 = *(v0 + 8);

        return v13(0);
      }
    }

    swift_once();
    goto LABEL_22;
  }

  v18 = *(v0 + 576);
  v19 = *(v0 + 568);
  v20 = *(v0 + 536);
  sub_2224A76C8(&qword_27D00E328, MEMORY[0x277D37778], MEMORY[0x277D37780]);
  v21 = swift_allocError();
  v23 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v16[3]);
  *v23 = sub_2224B4668();
  v23[1] = v24;
  (*(v18 + 104))(v23, *MEMORY[0x277D37768], v19);
  swift_willThrow();
  v25 = *(v0 + 680);
  v26 = *(v0 + 672);
  v27 = *(v0 + 664);
  v28 = *(v0 + 656);
  v29 = *(v0 + 648);
  v30 = *(v0 + 640);
  v31 = *(v0 + 552);

  MEMORY[0x223DB7AE0](v21);
  sub_2224B4208();
  *(v0 + 128) = sub_2224B41E8();
  *(v0 + 160) = v30;
  *(v0 + 168) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790], MEMORY[0x277D37788]);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 136));
  (*(v29 + 32))(boxed_opaque_existential_1Tm, v28, v30);
  *(v0 + 176) = 7;
  sub_222485F68();
  swift_willThrowTypedImpl();
  MEMORY[0x223DB7AD0](v21);
  v33 = *(v0 + 128);
  v34 = *(v0 + 144);
  v35 = *(v0 + 160);
  *(v31 + 48) = *(v0 + 176);
  *(v31 + 16) = v34;
  *(v31 + 32) = v35;
  *v31 = v33;
  (*(v26 + 8))(v25, v27);
  sub_2224A6760("Upsert", 6, 2, *(v0 + 720));

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_22249193C(uint64_t a1)
{
  v3 = *v2;
  v3[64] = v2;
  v3[65] = a1;
  v3[66] = v1;
  v3[99] = v1;

  if (v1)
  {
    v4 = v3 + 37;
    v5 = v3[76];
    v6 = v3[75];
    v7 = v3[74];
    v8 = v3[69];
    v9 = v3[68];

    (*(v6 + 8))(v5, v7);
    v10 = *v4;
    v11 = *(v4 + 1);
    v12 = *(v4 + 2);
    *(v8 + 48) = *(v4 + 48);
    *(v8 + 16) = v11;
    *(v8 + 32) = v12;
    *v8 = v10;
    v13 = sub_22249226C;
    v14 = v9;
  }

  else
  {
    v15 = v3[68];
    (*(v3[75] + 8))(v3[76], v3[74]);
    v13 = sub_222491AF8;
    v14 = v15;
  }

  return MEMORY[0x2822009F8](v13, v14, 0);
}

uint64_t sub_222491AF8()
{
  v1 = *(v0 + 752);
  v2 = *(v0 + 632);
  v3 = *(v0 + 624);
  v4 = *(v0 + 616);
  v5 = *(v0 + 776) + 1;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 400));
  result = (*(v3 + 8))(v2, v4);
  if (v5 == v1)
  {
    v40 = *(v0 + 520);

    if (qword_28130A5F8 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 752);
    v8 = *(v0 + 720);
    v38 = *(v0 + 680);
    v9 = *(v0 + 672);
    v10 = *(v0 + 664);
    v11 = sub_2224B4628();
    __swift_project_value_buffer(v11, qword_28130A600);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
    sub_2224B4148();
    *(swift_allocObject() + 16) = xmmword_2224B5060;
    sub_2224B4118();
    sub_2224B4108();
    *(v0 + 504) = MEMORY[0x277D83B88];
    *(v0 + 480) = v7;
    sub_2224B40F8();
    sub_2224A7878(v0 + 480, &qword_27D00E338, &qword_2224B5090);
    sub_2224B4108();
    sub_2224B4138();
    sub_2224B4568();

    sub_2224A670C(v0 + 352);
    (*(v9 + 8))(v38, v10);
    sub_2224A6760("Upsert", 6, 2, v8);

    v12 = *(v0 + 8);

    return v12(v40);
  }

  else
  {
    v13 = *(v0 + 792);
    v14 = *(v0 + 776) + 1;
    *(v0 + 776) = v14;
    v15 = *(v0 + 744);
    if (v14 >= *(v15 + 16))
    {
      __break(1u);
    }

    else
    {
      v16 = *(v0 + 760);
      v41 = v13;
      v17 = *(v0 + 544);
      (*(*(v0 + 624) + 16))(*(v0 + 632), v15 + ((*(*(v0 + 624) + 80) + 32) & ~*(*(v0 + 624) + 80)) + *(*(v0 + 624) + 72) * v14, *(v0 + 616));
      sub_2224A7124(v17 + v16, v0 + 400);
      __swift_project_boxed_opaque_existential_1((v0 + 400), *(v0 + 424));
      *(v0 + 464) = sub_2224B4558();
      *(v0 + 472) = sub_2224A76C8(&qword_28130A460, MEMORY[0x277D378E8], MEMORY[0x277D378D8]);
      __swift_allocate_boxed_opaque_existential_1Tm((v0 + 440));
      sub_2224B4178();
      sub_2224B4158();
      sub_2224B4188();

      sub_2224B4288();
      if (v41)
      {
        v39 = *(v0 + 664);
        v42 = *(v0 + 680);
        v18 = *(v0 + 656);
        v19 = *(v0 + 648);
        v20 = *(v0 + 640);
        v36 = *(v0 + 632);
        v37 = *(v0 + 672);
        v21 = *(v0 + 624);
        v35 = *(v0 + 616);
        v22 = *(v0 + 584);
        v23 = *(v0 + 576);
        v24 = *(v0 + 568);
        v25 = *(v0 + 552);

        sub_2224A76C8(&qword_27D00E328, MEMORY[0x277D37778], MEMORY[0x277D37780]);
        v26 = swift_allocError();
        (*(v23 + 32))(v27, v22, v24);
        MEMORY[0x223DB7AE0](v26);
        sub_2224B4208();
        *(v0 + 240) = sub_2224B41E8();
        *(v0 + 272) = v20;
        *(v0 + 280) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790], MEMORY[0x277D37788]);
        boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 248));
        (*(v19 + 32))(boxed_opaque_existential_1Tm, v18, v20);
        *(v0 + 288) = 7;
        sub_222485F68();
        swift_willThrowTypedImpl();

        MEMORY[0x223DB7AD0](v26);
        sub_2224A670C(v0 + 352);
        v30 = *(v0 + 256);
        v29 = *(v0 + 272);
        v31 = *(v0 + 240);
        *(v25 + 48) = *(v0 + 288);
        *(v25 + 16) = v30;
        *(v25 + 32) = v29;
        *v25 = v31;
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 400));
        (*(v21 + 8))(v36, v35);
        (*(v37 + 8))(v42, v39);
        sub_2224A6760("Upsert", 6, 2, *(v0 + 720));

        v32 = *(v0 + 8);

        return v32();
      }

      else
      {
        v33 = swift_task_alloc();
        *(v0 + 784) = v33;
        *v33 = v0;
        v33[1] = sub_22249193C;
        v34 = *(v0 + 608);

        return sub_22249B4D8(v34, v0 + 296);
      }
    }
  }

  return result;
}

uint64_t sub_22249226C()
{
  v1 = v0[85];
  v2 = v0[84];
  v3 = v0[83];
  v4 = v0[79];
  v5 = v0[78];
  v6 = v0[77];
  sub_2224A670C((v0 + 44));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 50);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  sub_2224A6760("Upsert", 6, 2, v0[90]);

  v7 = v0[1];

  return v7();
}

uint64_t _s15OnDeviceStorage10ConnectionC6updateySi0abC4Core6UpdateVYaAA0abC5ErrorOYKF(uint64_t a1, uint64_t a2)
{
  v3[41] = v2;
  v3[42] = a2;
  v3[40] = a1;
  v4 = sub_2224B41F8();
  v3[43] = v4;
  v3[44] = *(v4 - 8);
  v3[45] = swift_task_alloc();
  v5 = sub_2224B42F8();
  v3[46] = v5;
  v3[47] = *(v5 - 8);
  v3[48] = swift_task_alloc();
  v6 = sub_2224B4368();
  v3[49] = v6;
  v3[50] = *(v6 - 8);
  v3[51] = swift_task_alloc();
  v7 = sub_2224B46A8();
  v3[52] = v7;
  v3[53] = *(v7 - 8);
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2224925A8, v2, 0);
}

uint64_t sub_2224925A8()
{
  if (qword_28130A6D8 != -1)
  {
    swift_once();
  }

  v1 = sub_2224B46D8();
  __swift_project_value_buffer(v1, qword_28130A6E0);
  sub_2224B4698();
  v2 = sub_2224B46B8();
  v3 = sub_2224B4938();
  if (sub_2224B4948())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_2224B4688();
    _os_signpost_emit_with_name_impl(&dword_222484000, v2, v3, v5, "Update", "", v4, 2u);
    MEMORY[0x223DB7C20](v4, -1, -1);
  }

  v6 = v0[54];
  v7 = v0[55];
  v8 = v0[52];
  v9 = v0[53];
  v10 = v0[51];

  (*(v9 + 16))(v6, v7, v8);
  sub_2224B4718();
  swift_allocObject();
  v0[56] = sub_2224B4708();
  (*(v9 + 8))(v7, v8);
  sub_2224903A4(0x5F28657461647075, 0xEA0000000000293ALL, v0 + 9, v10);
  sub_2224B45A8();
  v12 = v0[40];
  v11 = v0[41];
  (*(v0[50] + 8))(v0[51], v0[49]);
  sub_2224A7124(v11 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession, (v0 + 30));
  __swift_project_boxed_opaque_existential_1(v0 + 30, v0[33]);
  v13 = sub_2224B45B8();
  v0[38] = v13;
  v0[39] = sub_2224A76C8(&qword_27D00E388, MEMORY[0x277D37900], MEMORY[0x277D378F8]);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v0 + 35);
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_1Tm, v12, v13);
  sub_222487F1C(0x5F28657461647075, 0xEA0000000000293ALL, v0 + 16);

  sub_2224B4238();
  v15 = swift_task_alloc();
  v0[57] = v15;
  *v15 = v0;
  v15[1] = sub_222492B00;
  v16 = v0[48];

  return sub_22249C420(v16, (v0 + 23));
}

uint64_t sub_222492B00(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 376);

  v7 = (v6 + 8);
  v8 = *(v4 + 384);
  v9 = *(v4 + 368);
  if (v1)
  {
    v10 = *(v5 + 328);
    v11 = *(v5 + 336);
    (*v7)(v8, v9);
    v12 = *(v5 + 184);
    v13 = *(v5 + 200);
    v14 = *(v5 + 216);
    *(v11 + 48) = *(v5 + 232);
    *(v11 + 16) = v13;
    *(v11 + 32) = v14;
    *v11 = v12;
    v15 = sub_222492D80;
  }

  else
  {
    v10 = *(v5 + 328);
    *(v5 + 464) = a1;
    (*v7)(v8, v9);
    v15 = sub_222492CAC;
  }

  return MEMORY[0x2822009F8](v15, v10, 0);
}

uint64_t sub_222492CAC()
{
  v1 = v0[56];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 30);
  sub_2224A6760("Update", 6, 2, v1);

  v2 = v0[1];
  v3 = v0[58];

  return v2(v3);
}

uint64_t sub_222492D80()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 30);
  sub_2224A6760("Update", 6, 2, v0[56]);

  v1 = v0[1];

  return v1();
}

uint64_t _s15OnDeviceStorage10ConnectionC6deleteySi0abC4Core6DeleteVYaAA0abC5ErrorOYKF(uint64_t a1, uint64_t a2)
{
  v3[27] = v2;
  v3[28] = a2;
  v3[26] = a1;
  v4 = sub_2224B4258();
  v3[29] = v4;
  v3[30] = *(v4 - 8);
  v3[31] = swift_task_alloc();
  v5 = sub_2224B46A8();
  v3[32] = v5;
  v3[33] = *(v5 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222492F7C, v2, 0);
}

uint64_t sub_222492F7C()
{
  if (qword_28130A6D8 != -1)
  {
    swift_once();
  }

  v1 = sub_2224B46D8();
  __swift_project_value_buffer(v1, qword_28130A6E0);
  sub_2224B4698();
  v2 = sub_2224B46B8();
  v3 = sub_2224B4938();
  if (sub_2224B4948())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_2224B4688();
    _os_signpost_emit_with_name_impl(&dword_222484000, v2, v3, v5, "Delete", "", v4, 2u);
    MEMORY[0x223DB7C20](v4, -1, -1);
  }

  v6 = v0[34];
  v7 = v0[35];
  v8 = v0[32];
  v9 = v0[33];
  v11 = v0[26];
  v10 = v0[27];

  (*(v9 + 16))(v6, v7, v8);
  sub_2224B4718();
  swift_allocObject();
  v0[36] = sub_2224B4708();
  (*(v9 + 8))(v7, v8);
  sub_2224A7124(v10 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession, (v0 + 16));
  __swift_project_boxed_opaque_existential_1(v0 + 16, v0[19]);
  v12 = sub_2224B4528();
  v0[24] = v12;
  v0[25] = sub_2224A76C8(qword_27D00E390, MEMORY[0x277D378D0], MEMORY[0x277D378C8]);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v0 + 21);
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_1Tm, v11, v12);
  sub_222487F1C(0x5F286574656C6564, 0xEA0000000000293ALL, v0 + 2);

  sub_2224B4238();
  v14 = swift_task_alloc();
  v0[37] = v14;
  *v14 = v0;
  v14[1] = sub_22249334C;
  v15 = v0[31];

  return sub_22249CF8C(v15, (v0 + 9));
}

uint64_t sub_22249334C(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 240);

  v7 = (v6 + 8);
  v8 = *(v4 + 248);
  v9 = *(v4 + 232);
  if (v1)
  {
    v10 = *(v5 + 216);
    v11 = *(v5 + 224);
    (*v7)(v8, v9);
    v12 = *(v5 + 72);
    v13 = *(v5 + 88);
    v14 = *(v5 + 104);
    *(v11 + 48) = *(v5 + 120);
    *(v11 + 16) = v13;
    *(v11 + 32) = v14;
    *v11 = v12;
    v15 = sub_2224935AC;
  }

  else
  {
    v10 = *(v5 + 216);
    *(v5 + 304) = a1;
    (*v7)(v8, v9);
    v15 = sub_2224934F8;
  }

  return MEMORY[0x2822009F8](v15, v10, 0);
}

uint64_t sub_2224934F8()
{
  v1 = v0[36];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  sub_2224A6760("Delete", 6, 2, v1);

  v2 = v0[1];
  v3 = v0[38];

  return v2(v3);
}

uint64_t sub_2224935AC()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  sub_2224A6760("Delete", 6, 2, v0[36]);

  v1 = v0[1];

  return v1();
}

uint64_t _s15OnDeviceStorage10ConnectionC19triggerDataDeletionySiSSYaAA0abC5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[23] = v3;
  v4[24] = a3;
  v4[21] = a1;
  v4[22] = a2;
  v5 = sub_2224B44F8();
  v4[25] = v5;
  v4[26] = *(v5 - 8);
  v4[27] = swift_task_alloc();
  v6 = sub_2224B46A8();
  v4[28] = v6;
  v4[29] = *(v6 - 8);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222493788, v3, 0);
}

uint64_t sub_222493788()
{
  if (qword_28130A6D8 != -1)
  {
    swift_once();
  }

  v1 = sub_2224B46D8();
  __swift_project_value_buffer(v1, qword_28130A6E0);
  sub_2224B4698();
  v2 = sub_2224B46B8();
  v3 = sub_2224B4938();
  if (sub_2224B4948())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_2224B4688();
    _os_signpost_emit_with_name_impl(&dword_222484000, v2, v3, v5, "TriggerDataDeletion", "", v4, 2u);
    MEMORY[0x223DB7C20](v4, -1, -1);
  }

  v6 = v0[30];
  v7 = v0[31];
  v8 = v0[28];
  v9 = v0[29];
  v10 = v0[23];

  (*(v9 + 16))(v6, v7, v8);
  sub_2224B4718();
  swift_allocObject();
  v0[32] = sub_2224B4708();
  (*(v9 + 8))(v7, v8);
  sub_2224A7124(v10 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession, (v0 + 16));
  __swift_project_boxed_opaque_existential_1(v0 + 16, v0[19]);
  sub_222487F1C(0xD000000000000017, 0x80000002224B5C30, v0 + 2);

  sub_2224B44E8();
  v11 = swift_task_alloc();
  v0[33] = v11;
  *v11 = v0;
  v11[1] = sub_222493AEC;
  v12 = v0[27];

  return sub_22249D9D0(v12, (v0 + 9));
}

uint64_t sub_222493AEC(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 208);

  v7 = (v6 + 8);
  v8 = *(v4 + 216);
  v9 = *(v4 + 200);
  if (v1)
  {
    v10 = *(v5 + 184);
    v11 = *(v5 + 192);
    (*v7)(v8, v9);
    v12 = *(v5 + 72);
    v13 = *(v5 + 88);
    v14 = *(v5 + 104);
    *(v11 + 48) = *(v5 + 120);
    *(v11 + 16) = v13;
    *(v11 + 32) = v14;
    *v11 = v12;
    v15 = sub_222493D4C;
  }

  else
  {
    v10 = *(v5 + 184);
    *(v5 + 272) = a1;
    (*v7)(v8, v9);
    v15 = sub_222493C98;
  }

  return MEMORY[0x2822009F8](v15, v10, 0);
}

uint64_t sub_222493C98()
{
  v1 = v0[32];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  sub_2224A6760("TriggerDataDeletion", 19, 2, v1);

  v2 = v0[1];
  v3 = v0[34];

  return v2(v3);
}

uint64_t sub_222493D4C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  sub_2224A6760("TriggerDataDeletion", 19, 2, v0[32]);

  v1 = v0[1];

  return v1();
}

uint64_t _s15OnDeviceStorage10ConnectionC6statusySDyS2SG0abC4Core13StatusCommandOYaAA0abC5ErrorOYKF(uint64_t a1, uint64_t a2)
{
  v3[22] = v2;
  v3[23] = a2;
  v3[21] = a1;
  v4 = sub_2224B42C8();
  v3[24] = v4;
  v3[25] = *(v4 - 8);
  v3[26] = swift_task_alloc();
  v5 = sub_2224B42E8();
  v3[27] = v5;
  v3[28] = *(v5 - 8);
  v3[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222493F1C, v2, 0);
}

uint64_t sub_222493F1C()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = v0[21];
  sub_2224A7124(v0[22] + OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession, (v0 + 16));
  __swift_project_boxed_opaque_existential_1(v0 + 16, v0[19]);
  (*(v2 + 16))(v1, v4, v3);
  sub_222487F1C(0x5F28737574617473, 0xEA0000000000293ALL, v0 + 2);
  sub_2224B42D8();
  v5 = swift_task_alloc();
  v0[30] = v5;
  *v5 = v0;
  v5[1] = sub_222494104;
  v6 = v0[29];

  return sub_22249EBD8(v6, (v0 + 9));
}

uint64_t sub_222494104(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 224);

  v7 = (v6 + 8);
  v8 = *(v4 + 232);
  v9 = *(v4 + 216);
  if (v1)
  {
    v10 = *(v5 + 176);
    v11 = *(v5 + 184);
    (*v7)(v8, v9);
    v12 = *(v5 + 72);
    v13 = *(v5 + 88);
    v14 = *(v5 + 104);
    *(v11 + 48) = *(v5 + 120);
    *(v11 + 16) = v13;
    *(v11 + 32) = v14;
    *v11 = v12;
    v15 = sub_222494330;
  }

  else
  {
    v10 = *(v5 + 176);
    *(v5 + 248) = a1;
    (*v7)(v8, v9);
    v15 = sub_2224942B0;
  }

  return MEMORY[0x2822009F8](v15, v10, 0);
}

uint64_t sub_2224942B0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  v1 = v0[1];
  v2 = v0[31];

  return v1(v2);
}

uint64_t sub_222494330()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 128));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2224943AC(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_2224AF74C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_2224B4508();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2224944E4(uint64_t a1)
{
  v2[49] = a1;
  v2[50] = v1;
  v3 = sub_2224B41F8();
  v2[51] = v3;
  v2[52] = *(v3 - 8);
  v2[53] = swift_task_alloc();
  v4 = sub_2224B42A8();
  v2[54] = v4;
  v2[55] = *(v4 - 8);
  v2[56] = swift_task_alloc();
  sub_2224B4128();
  v2[57] = swift_task_alloc();
  v5 = sub_2224B4368();
  v2[58] = v5;
  v2[59] = *(v5 - 8);
  v2[60] = swift_task_alloc();
  v6 = sub_2224B46A8();
  v2[61] = v6;
  v2[62] = *(v6 - 8);
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2224946F0, v1, 0);
}

uint64_t sub_2224946F0()
{
  if ((*(*(v0 + 400) + 184) & 1) != 0 || (Strong = swift_weakLoadStrong(), (*(v0 + 520) = Strong) == 0))
  {
    **(v0 + 392) = 0;

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v2 = Strong;
    if (qword_28130A6D8 != -1)
    {
      swift_once();
    }

    v3 = sub_2224B46D8();
    __swift_project_value_buffer(v3, qword_28130A6E0);

    sub_2224B4698();
    v4 = sub_2224B46B8();
    v5 = sub_2224B4938();
    if (sub_2224B4948())
    {
      v6 = *(v0 + 400);
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = *(v6 + 176);

      v8 = sub_2224B4688();
      _os_signpost_emit_with_name_impl(&dword_222484000, v4, v5, v8, "PaginatedSelect.next", "batchIndex=%ld", v7, 0xCu);
      MEMORY[0x223DB7C20](v7, -1, -1);
    }

    else
    {
    }

    v11 = *(v0 + 512);
    v12 = *(v0 + 488);
    v13 = *(v0 + 496);
    v14 = *(v0 + 400);
    (*(v13 + 16))(*(v0 + 504), v11, v12);
    sub_2224B4718();
    swift_allocObject();
    *(v0 + 528) = sub_2224B4708();
    (*(v13 + 8))(v11, v12);
    if (*(v14 + 200) == 1)
    {
      v15 = *(v0 + 400);
      if (*(v15 + 160) == 1)
      {

        return MEMORY[0x2822009F8](sub_222494BC4, v2, 0);
      }

      v16 = *(v15 + 152);
      *(v15 + 192) = v16;
      *(v15 + 200) = 0;
    }

    else
    {
      v16 = *(v14 + 192);
    }

    *(v0 + 536) = v16;
    if (qword_28130A5F8 != -1)
    {
      swift_once();
    }

    v17 = sub_2224B4628();
    *(v0 + 544) = v17;
    *(v0 + 552) = __swift_project_value_buffer(v17, qword_28130A600);
    *(v0 + 560) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
    v18 = *(sub_2224B4148() - 8);
    *(v0 + 568) = *(v18 + 72);
    *(v0 + 68) = *(v18 + 80);
    *(swift_allocObject() + 16) = xmmword_2224B5060;
    sub_2224B4118();
    sub_2224B4108();
    *(v0 + 320) = MEMORY[0x277D83B88];
    *(v0 + 296) = v16;
    sub_2224B40F8();
    sub_2224A7878(v0 + 296, &qword_27D00E338, &qword_2224B5090);
    sub_2224B4108();
    sub_2224B4138();
    sub_2224B4568();

    v19 = swift_task_alloc();
    *(v0 + 576) = v19;
    *v19 = v0;
    v19[1] = sub_222494F14;
    v20 = *(v0 + 520);
    v21 = *(v0 + 448);
    v22 = *(v0 + 400);

    return sub_222495A2C(v21, v22, v16, v20);
  }
}

uint64_t sub_222494BC4()
{
  sub_2224903A4(0x29287478656ELL, 0xE600000000000000, v0 + 30, v0[60]);
  v1 = v0[50];

  return MEMORY[0x2822009F8](sub_222494C64, v1, 0);
}

uint64_t sub_222494C64()
{
  v2 = *(v0 + 472);
  v1 = *(v0 + 480);
  v3 = *(v0 + 464);
  __swift_project_boxed_opaque_existential_1((*(v0 + 400) + 112), *(*(v0 + 400) + 136));
  v4 = sub_2224B41B8();
  (*(v2 + 8))(v1, v3);
  v5 = *(v0 + 400);
  *(v5 + 192) = v4;
  *(v5 + 200) = 0;
  *(v0 + 536) = v4;
  if (qword_28130A5F8 != -1)
  {
    swift_once();
  }

  v6 = sub_2224B4628();
  *(v0 + 544) = v6;
  *(v0 + 552) = __swift_project_value_buffer(v6, qword_28130A600);
  *(v0 + 560) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
  v7 = *(sub_2224B4148() - 8);
  *(v0 + 568) = *(v7 + 72);
  *(v0 + 68) = *(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B4118();
  sub_2224B4108();
  *(v0 + 320) = MEMORY[0x277D83B88];
  *(v0 + 296) = v4;
  sub_2224B40F8();
  sub_2224A7878(v0 + 296, &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4568();

  v8 = swift_task_alloc();
  *(v0 + 576) = v8;
  *v8 = v0;
  v8[1] = sub_222494F14;
  v9 = *(v0 + 520);
  v10 = *(v0 + 448);
  v11 = *(v0 + 400);

  return sub_222495A2C(v10, v11, v4, v9);
}

uint64_t sub_222494F14()
{
  *(*v1 + 584) = v0;

  if (v0)
  {
    v2 = sub_222495240;
  }

  else
  {
    v2 = sub_222495028;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_222495044()
{
  __swift_project_boxed_opaque_existential_1((v0[65] + OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession), *(v0[65] + OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession + 24));
  v1 = swift_task_alloc();
  v0[74] = v1;
  *v1 = v0;
  v1[1] = sub_22249510C;
  v2 = v0[56];

  return sub_222498770(v2, (v0 + 23));
}

uint64_t sub_22249510C(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 600) = a1;

  v4 = *(v3 + 400);
  if (v1)
  {
    v5 = *(v3 + 200);
    v6 = *(v3 + 216);
    v7 = *(v3 + 184);
    *(v3 + 64) = *(v3 + 232);
    *(v3 + 32) = v5;
    *(v3 + 48) = v6;
    *(v3 + 16) = v7;
    v8 = sub_2224954BC;
  }

  else
  {
    v8 = sub_222495620;
  }

  return MEMORY[0x2822009F8](v8, v4, 0);
}

uint64_t sub_222495240()
{
  v1 = *(v0 + 584);
  v3 = *(v0 + 416);
  v2 = *(v0 + 424);
  v4 = *(v0 + 400);
  v5 = *(v0 + 408);
  MEMORY[0x223DB7AE0](v1);
  sub_2224B4208();
  *(v0 + 72) = sub_2224B41E8();
  *(v0 + 104) = v5;
  *(v0 + 112) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790], MEMORY[0x277D37788]);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 80));
  (*(v3 + 32))(boxed_opaque_existential_1Tm, v2, v5);
  *(v0 + 120) = 7;
  sub_222485F68();
  swift_willThrowTypedImpl();
  MEMORY[0x223DB7AD0](v1);

  return MEMORY[0x2822009F8](sub_222495360, v4, 0);
}

uint64_t sub_222495360()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 88);
  *(v0 + 16) = v1;
  *(v0 + 32) = v2;
  v3 = *(v0 + 104);
  *(v0 + 48) = v3;
  v4 = *(v0 + 120);
  *(v0 + 64) = v4;
  v5 = *(v0 + 528);
  v6 = *(v0 + 400);
  *(v0 + 176) = v4;
  *(v0 + 144) = v2;
  *(v0 + 160) = v3;
  *(v0 + 128) = v1;
  *(v6 + 184) = 1;
  sub_222485F68();
  swift_allocError();
  sub_2224A6F34(v0 + 128, v7);
  swift_willThrow();
  sub_2224A6F90(v0 + 128);
  sub_2224A6760("PaginatedSelect.next", 20, 2, v5);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2224954BC()
{
  (*(*(v0 + 440) + 8))(*(v0 + 448), *(v0 + 432));
  v1 = *(v0 + 528);
  v2 = *(v0 + 400);
  v3 = *(v0 + 32);
  *(v0 + 128) = *(v0 + 16);
  *(v0 + 144) = v3;
  *(v0 + 160) = *(v0 + 48);
  *(v0 + 176) = *(v0 + 64);
  *(v2 + 184) = 1;
  sub_222485F68();
  swift_allocError();
  sub_2224A6F34(v0 + 128, v4);
  swift_willThrow();
  sub_2224A6F90(v0 + 128);
  sub_2224A6760("PaginatedSelect.next", 20, 2, v1);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_222495620()
{
  v1 = v0[75];
  v2 = v0[50];
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B4118();
  sub_2224B4108();
  v3 = *(v1 + 16);
  v4 = MEMORY[0x277D83B88];
  v0[44] = MEMORY[0x277D83B88];
  v0[41] = v3;
  sub_2224B40F8();
  sub_2224A7878((v0 + 41), &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  v5 = *(v2 + 176);
  v0[48] = v4;
  v0[45] = v5;
  sub_2224B40F8();
  sub_2224A7878((v0 + 45), &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4568();

  if (*(v1 + 16))
  {
    v6 = v0[67];
    v8 = v0[55];
    v7 = v0[56];
    v9 = v0[54];
    v10 = sub_2224B4298();
    result = (*(v8 + 8))(v7, v9);
    if ((v10 & 1) != 0 || v3 < v6)
    {
      *(v0[50] + 184) = 1;
    }

    v12 = *(v2 + 176);
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      __break(1u);
      return result;
    }

    v15 = v0[75];
    v16 = v0[66];
    v17 = v0[49];
    *(v2 + 176) = v14;
    *v17 = v15;
  }

  else
  {
    v16 = v0[66];
    v19 = v0[49];
    v18 = v0[50];
    (*(v0[55] + 8))(v0[56], v0[54]);
    *(v18 + 184) = 1;

    *v19 = 0;
  }

  sub_2224A6760("PaginatedSelect.next", 20, 2, v16);

  v20 = v0[1];

  return v20();
}

uint64_t sub_2224958D4()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 256);
  *(v0 + 16) = v1;
  *(v0 + 32) = v2;
  v3 = *(v0 + 272);
  *(v0 + 48) = v3;
  v4 = *(v0 + 288);
  *(v0 + 64) = v4;
  v5 = *(v0 + 528);
  v6 = *(v0 + 400);
  *(v0 + 176) = v4;
  *(v0 + 144) = v2;
  *(v0 + 160) = v3;
  *(v0 + 128) = v1;
  *(v6 + 184) = 1;
  sub_222485F68();
  swift_allocError();
  sub_2224A6F34(v0 + 128, v7);
  swift_willThrow();
  sub_2224A6F90(v0 + 128);
  sub_2224A6760("PaginatedSelect.next", 20, 2, v5);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_222495A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a3;
  v4[17] = a4;
  v4[14] = a1;
  v4[15] = a2;
  v5 = sub_2224B4198();
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222495AF0, 0, 0);
}

uint64_t sub_222495AF0()
{
  v1 = *(v0 + 120);
  sub_2224A7124(v1 + 112, v0 + 72);

  return MEMORY[0x2822009F8](sub_222495B60, v1, 0);
}

uint64_t sub_222495B60()
{
  v1 = v0[17];
  v0[21] = *(v0[15] + 176);
  return MEMORY[0x2822009F8](sub_222495B88, v1, 0);
}

uint64_t sub_222495B88()
{
  v1 = sub_222487F1C(0x29287478656ELL, 0xE600000000000000, v0 + 2);
  v0[22] = 0;
  v0[23] = v2;
  v0[24] = v1;

  return MEMORY[0x2822009F8](sub_222495C34, 0, 0);
}

uint64_t sub_222495C34()
{
  v1 = v0[22];

  sub_2224B42B8();
  v2 = v0[20];
  if (v1)
  {
    v3 = v0[18];
    v4 = v0[19];
    sub_2224A76C8(&qword_27D00E328, MEMORY[0x277D37778], MEMORY[0x277D37780]);
    swift_allocError();
    (*(v4 + 32))(v5, v2, v3);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_222495D98()
{
  sub_222485F68();
  swift_allocError();
  v2 = *(v0 + 32);
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  *(v4 + 48) = *(v0 + 64);
  *(v4 + 16) = v2;
  *(v4 + 32) = v1;
  *v4 = v3;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_222495E30()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  swift_weakDestroy();
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_222495E70(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_222495F0C;

  return sub_2224944E4(a1);
}

uint64_t sub_222495F0C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_222496000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = v4;
  v5[12] = a4;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_2224B4898();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v5[13] = v6;
  v5[14] = v8;

  return MEMORY[0x2822009F8](sub_222496098, v6, v8);
}

uint64_t sub_222496098()
{
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_222496134;
  v2 = *(v0 + 80);

  return sub_2224944E4(v2);
}

uint64_t sub_222496134()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_222496288;
  }

  else
  {
    v5 = sub_222496270;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_222496288()
{
  v1 = *(v0 + 96);
  *(v0 + 72) = *(v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E428, &qword_2224B5510);
  swift_dynamicCast();
  sub_222485F68();
  swift_willThrowTypedImpl();
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  *(v1 + 48) = *(v0 + 64);
  *(v1 + 16) = v3;
  *(v1 + 32) = v4;
  *v1 = v2;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2224963C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = v3;
  v4[17] = a3;
  v4[14] = a1;
  v4[15] = a2;
  v4[18] = *v3;
  v4[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E568, &qword_2224B5608);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  sub_2224B4128();
  v4[22] = swift_task_alloc();
  v5 = sub_2224B41F8();
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();
  v6 = sub_2224B4198();
  v4[26] = v6;
  v4[27] = *(v6 - 8);
  v4[28] = swift_task_alloc();
  v7 = sub_2224B46A8();
  v4[29] = v7;
  v4[30] = *(v7 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v8 = sub_2224B43B8();
  v4[33] = v8;
  v4[34] = *(v8 - 8);
  v4[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222496640, v3, 0);
}

uint64_t sub_222496640()
{
  v49 = v0;
  if (qword_28130A598 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);
  v4 = *(v0 + 120);
  v5 = sub_2224B46D8();
  __swift_project_value_buffer(v5, qword_28130A5A0);
  v46 = *(v2 + 16);
  v46(v1, v4, v3);
  sub_2224B4698();
  v6 = sub_2224B46B8();
  v7 = sub_2224B4938();
  v8 = sub_2224B4948();
  v10 = *(v0 + 272);
  v9 = *(v0 + 280);
  v11 = *(v0 + 264);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v48 = v13;
    *v12 = 136315138;
    sub_2224A76C8(&qword_28130A480, MEMORY[0x277D37860], MEMORY[0x277D37868]);
    v14 = sub_2224B4A78();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_2224A5AE8(v14, v16, &v48);

    *(v12 + 4) = v17;
    v18 = sub_2224B4688();
    _os_signpost_emit_with_name_impl(&dword_222484000, v6, v7, v18, "send", "request=%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x223DB7C20](v13, -1, -1);
    MEMORY[0x223DB7C20](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v19 = *(v0 + 256);
  v20 = *(v0 + 240);
  v21 = *(v0 + 232);
  (*(v20 + 16))(*(v0 + 248), v19, v21);
  sub_2224B4718();
  swift_allocObject();
  v22 = sub_2224B4708();
  *(v0 + 288) = v22;
  (*(v20 + 8))(v19, v21);
  sub_2224A76C8(&qword_28130A478, MEMORY[0x277D37860], MEMORY[0x277D37858]);
  if (sub_2224B41C8() <= 10485760)
  {
    if (qword_28130A578 != -1)
    {
      swift_once();
    }

    v34 = *(v0 + 264);
    v35 = *(v0 + 144);
    v37 = *(v0 + 120);
    v36 = *(v0 + 128);
    v38 = sub_2224B4628();
    *(v0 + 296) = v38;
    *(v0 + 304) = __swift_project_value_buffer(v38, qword_28130A580);
    *(v0 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
    v39 = *(sub_2224B4148() - 8);
    *(v0 + 320) = *(v39 + 72);
    *(v0 + 352) = *(v39 + 80);
    *(swift_allocObject() + 16) = xmmword_2224B5060;
    sub_2224B4118();
    sub_2224B4108();
    *(v0 + 40) = v34;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 16));
    v46(boxed_opaque_existential_1Tm, v37, v34);
    sub_2224B40F8();
    sub_2224A7878(v0 + 16, &qword_27D00E338, &qword_2224B5090);
    sub_2224B4108();
    sub_2224B4138();
    sub_2224B4578();

    v41 = sub_2224A76C8(&qword_28130A568, type metadata accessor for DaemonSessionImplementation, &unk_2224B568C);
    v42 = swift_task_alloc();
    *(v0 + 328) = v42;
    v42[2] = v36;
    v42[3] = v37;
    v42[4] = v35;
    v43 = swift_task_alloc();
    *(v0 + 336) = v43;
    *v43 = v0;
    v43[1] = sub_222496E04;
    v45 = *(v0 + 152);
    v44 = *(v0 + 160);

    return MEMORY[0x2822008A0](v44, v36, v41, 0x293A5F28646E6573, 0xE800000000000000, sub_2224A7654, v42, v45);
  }

  else
  {
    v24 = *(v0 + 216);
    v23 = *(v0 + 224);
    v26 = *(v0 + 200);
    v25 = *(v0 + 208);
    v27 = *(v0 + 192);
    v47 = *(v0 + 184);
    v28 = *(v0 + 136);
    *v23 = sub_2224B41C8();
    v23[1] = 10485760;
    (*(v24 + 104))(v23, *MEMORY[0x277D37760], v25);
    sub_2224A76C8(&qword_27D00E328, MEMORY[0x277D37778], MEMORY[0x277D37780]);
    v29 = swift_allocError();
    (*(v24 + 16))(v30, v23, v25);
    MEMORY[0x223DB7AE0](v29);
    sub_2224B4208();
    *v28 = sub_2224B41E8();
    *(v28 + 32) = v47;
    *(v28 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790], MEMORY[0x277D37788]);
    v31 = __swift_allocate_boxed_opaque_existential_1Tm((v28 + 8));
    (*(v27 + 32))(v31, v26, v47);
    MEMORY[0x223DB7AD0](v29);
    (*(v24 + 8))(v23, v25);
    *(v28 + 48) = 7;
    sub_222485F68();
    swift_willThrowTypedImpl();
    sub_2224A8390("send", 4, 2, v22);

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_222496E04()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = *(v2 + 128);
    v4 = sub_2224972D0;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_222496F2C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_222496F2C()
{
  v1 = v0[43];
  sub_2224A7660(v0[20], v0[21], &qword_27D00E568, &qword_2224B5608);
  sub_2224B4318();
  if (v1)
  {
    sub_2224A7878(v0[21], &qword_27D00E568, &qword_2224B5608);
    v3 = v0[24];
    v2 = v0[25];
    v12 = v0[23];
    v13 = v0[36];
    v4 = v0[17];
    *(swift_allocObject() + 16) = xmmword_2224B5060;
    sub_2224B4118();
    sub_2224B4108();
    swift_getErrorValue();
    v5 = v0[10];
    v6 = v0[11];
    v0[9] = v6;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v0 + 6);
    (*(*(v6 - 8) + 16))(boxed_opaque_existential_1Tm, v5, v6);
    sub_2224B40F8();
    sub_2224A7878((v0 + 6), &qword_27D00E338, &qword_2224B5090);
    sub_2224B4108();
    sub_2224B4138();
    sub_2224B4588();

    MEMORY[0x223DB7AE0](v1);
    sub_2224B4208();
    *v4 = sub_2224B41E8();
    *(v4 + 32) = v12;
    *(v4 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790], MEMORY[0x277D37788]);
    v8 = __swift_allocate_boxed_opaque_existential_1Tm((v4 + 8));
    (*(v3 + 32))(v8, v2, v12);
    *(v4 + 48) = 7;
    sub_222485F68();
    swift_willThrowTypedImpl();
    MEMORY[0x223DB7AD0](v1);
    sub_2224A8390("send", 4, 2, v13);
  }

  else
  {
    v10 = v0[36];
    sub_2224A7878(v0[21], &qword_27D00E568, &qword_2224B5608);
    sub_2224A8390("send", 4, 2, v10);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_2224972D0()
{

  v1 = v0[43];
  v3 = v0[24];
  v2 = v0[25];
  v11 = v0[23];
  v12 = v0[36];
  v4 = v0[17];
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B4118();
  sub_2224B4108();
  swift_getErrorValue();
  v5 = v0[10];
  v6 = v0[11];
  v0[9] = v6;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v0 + 6);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1Tm, v5, v6);
  sub_2224B40F8();
  sub_2224A7878((v0 + 6), &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4588();

  MEMORY[0x223DB7AE0](v1);
  sub_2224B4208();
  *v4 = sub_2224B41E8();
  *(v4 + 32) = v11;
  *(v4 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790], MEMORY[0x277D37788]);
  v8 = __swift_allocate_boxed_opaque_existential_1Tm((v4 + 8));
  (*(v3 + 32))(v8, v2, v11);
  *(v4 + 48) = 7;
  sub_222485F68();
  swift_willThrowTypedImpl();
  MEMORY[0x223DB7AD0](v1);
  sub_2224A8390("send", 4, 2, v12);

  v9 = v0[1];

  return v9();
}

uint64_t sub_222497590(uint64_t a1, uint64_t a2)
{
  v3[15] = v2;
  v3[16] = a2;
  v3[14] = a1;
  v3[17] = *v2;
  v3[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E550, &qword_2224B55F0);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  sub_2224B4128();
  v3[21] = swift_task_alloc();
  v4 = sub_2224B41F8();
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();
  v5 = sub_2224B4198();
  v3[25] = v5;
  v3[26] = *(v5 - 8);
  v3[27] = swift_task_alloc();
  v6 = sub_2224B46A8();
  v3[28] = v6;
  v3[29] = *(v6 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v7 = sub_2224B44C8();
  v3[32] = v7;
  v3[33] = *(v7 - 8);
  v3[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222497810, v2, 0);
}

uint64_t sub_222497810()
{
  v49 = v0;
  if (qword_28130A598 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 256);
  v4 = *(v0 + 112);
  v5 = sub_2224B46D8();
  __swift_project_value_buffer(v5, qword_28130A5A0);
  v46 = *(v2 + 16);
  v46(v1, v4, v3);
  sub_2224B4698();
  v6 = sub_2224B46B8();
  v7 = sub_2224B4938();
  v8 = sub_2224B4948();
  v10 = *(v0 + 264);
  v9 = *(v0 + 272);
  v11 = *(v0 + 256);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v48 = v13;
    *v12 = 136315138;
    sub_2224A76C8(&qword_28130A470, MEMORY[0x277D37890], MEMORY[0x277D37898]);
    v14 = sub_2224B4A78();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_2224A5AE8(v14, v16, &v48);

    *(v12 + 4) = v17;
    v18 = sub_2224B4688();
    _os_signpost_emit_with_name_impl(&dword_222484000, v6, v7, v18, "send", "request=%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x223DB7C20](v13, -1, -1);
    MEMORY[0x223DB7C20](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v19 = *(v0 + 248);
  v20 = *(v0 + 232);
  v21 = *(v0 + 224);
  (*(v20 + 16))(*(v0 + 240), v19, v21);
  sub_2224B4718();
  swift_allocObject();
  v22 = sub_2224B4708();
  *(v0 + 280) = v22;
  (*(v20 + 8))(v19, v21);
  sub_2224A76C8(&qword_28130A468, MEMORY[0x277D37890], MEMORY[0x277D37888]);
  if (sub_2224B41C8() <= 10485760)
  {
    if (qword_28130A578 != -1)
    {
      swift_once();
    }

    v34 = *(v0 + 256);
    v35 = *(v0 + 136);
    v37 = *(v0 + 112);
    v36 = *(v0 + 120);
    v38 = sub_2224B4628();
    *(v0 + 288) = v38;
    *(v0 + 296) = __swift_project_value_buffer(v38, qword_28130A580);
    *(v0 + 304) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
    v39 = *(sub_2224B4148() - 8);
    *(v0 + 312) = *(v39 + 72);
    *(v0 + 344) = *(v39 + 80);
    *(swift_allocObject() + 16) = xmmword_2224B5060;
    sub_2224B4118();
    sub_2224B4108();
    *(v0 + 40) = v34;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 16));
    v46(boxed_opaque_existential_1Tm, v37, v34);
    sub_2224B40F8();
    sub_2224A7878(v0 + 16, &qword_27D00E338, &qword_2224B5090);
    sub_2224B4108();
    sub_2224B4138();
    sub_2224B4578();

    v41 = sub_2224A76C8(&qword_28130A568, type metadata accessor for DaemonSessionImplementation, &unk_2224B568C);
    v42 = swift_task_alloc();
    *(v0 + 320) = v42;
    v42[2] = v36;
    v42[3] = v37;
    v42[4] = v35;
    v43 = swift_task_alloc();
    *(v0 + 328) = v43;
    *v43 = v0;
    v43[1] = sub_222497FD8;
    v45 = *(v0 + 144);
    v44 = *(v0 + 152);

    return MEMORY[0x2822008A0](v44, v36, v41, 0x293A5F28646E6573, 0xE800000000000000, sub_2224A7620, v42, v45);
  }

  else
  {
    v24 = *(v0 + 208);
    v23 = *(v0 + 216);
    v26 = *(v0 + 192);
    v25 = *(v0 + 200);
    v27 = *(v0 + 184);
    v47 = *(v0 + 176);
    v28 = *(v0 + 128);
    *v23 = sub_2224B41C8();
    v23[1] = 10485760;
    (*(v24 + 104))(v23, *MEMORY[0x277D37760], v25);
    sub_2224A76C8(&qword_27D00E328, MEMORY[0x277D37778], MEMORY[0x277D37780]);
    v29 = swift_allocError();
    (*(v24 + 16))(v30, v23, v25);
    MEMORY[0x223DB7AE0](v29);
    sub_2224B4208();
    *v28 = sub_2224B41E8();
    *(v28 + 32) = v47;
    *(v28 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790], MEMORY[0x277D37788]);
    v31 = __swift_allocate_boxed_opaque_existential_1Tm((v28 + 8));
    (*(v27 + 32))(v31, v26, v47);
    MEMORY[0x223DB7AD0](v29);
    (*(v24 + 8))(v23, v25);
    *(v28 + 48) = 7;
    sub_222485F68();
    swift_willThrowTypedImpl();
    sub_2224A8390("send", 4, 2, v22);

    v32 = *(v0 + 8);

    return v32(0);
  }
}

uint64_t sub_222497FD8()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = *(v2 + 120);
    v4 = sub_2224984AC;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_222498100;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_222498100()
{
  v1 = *(v0 + 336);
  sub_2224A7660(*(v0 + 152), *(v0 + 160), &qword_27D00E550, &qword_2224B55F0);
  sub_2224B4318();
  if (v1)
  {
    sub_2224A7878(*(v0 + 160), &qword_27D00E550, &qword_2224B55F0);
    v3 = *(v0 + 184);
    v2 = *(v0 + 192);
    v14 = *(v0 + 176);
    v15 = *(v0 + 280);
    v4 = *(v0 + 128);
    *(swift_allocObject() + 16) = xmmword_2224B5060;
    sub_2224B4118();
    sub_2224B4108();
    swift_getErrorValue();
    v5 = *(v0 + 80);
    v6 = *(v0 + 88);
    *(v0 + 72) = v6;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 48));
    (*(*(v6 - 8) + 16))(boxed_opaque_existential_1Tm, v5, v6);
    sub_2224B40F8();
    sub_2224A7878(v0 + 48, &qword_27D00E338, &qword_2224B5090);
    sub_2224B4108();
    sub_2224B4138();
    sub_2224B4588();

    MEMORY[0x223DB7AE0](v1);
    sub_2224B4208();
    *v4 = sub_2224B41E8();
    *(v4 + 32) = v14;
    *(v4 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790], MEMORY[0x277D37788]);
    v8 = __swift_allocate_boxed_opaque_existential_1Tm((v4 + 8));
    (*(v3 + 32))(v8, v2, v14);
    *(v4 + 48) = 7;
    sub_222485F68();
    swift_willThrowTypedImpl();
    MEMORY[0x223DB7AD0](v1);
    sub_2224A8390("send", 4, 2, v15);

    v9 = *(v0 + 8);
    v10 = 0;
  }

  else
  {
    v11 = *(v0 + 280);
    sub_2224A7878(*(v0 + 160), &qword_27D00E550, &qword_2224B55F0);
    sub_2224A8390("send", 4, 2, v11);

    v12 = *(v0 + 348);

    v9 = *(v0 + 8);
    v10 = v12;
  }

  return v9(v10);
}

uint64_t sub_2224984AC()
{

  v1 = v0[42];
  v3 = v0[23];
  v2 = v0[24];
  v11 = v0[22];
  v12 = v0[35];
  v4 = v0[16];
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B4118();
  sub_2224B4108();
  swift_getErrorValue();
  v5 = v0[10];
  v6 = v0[11];
  v0[9] = v6;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v0 + 6);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1Tm, v5, v6);
  sub_2224B40F8();
  sub_2224A7878((v0 + 6), &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4588();

  MEMORY[0x223DB7AE0](v1);
  sub_2224B4208();
  *v4 = sub_2224B41E8();
  *(v4 + 32) = v11;
  *(v4 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790], MEMORY[0x277D37788]);
  v8 = __swift_allocate_boxed_opaque_existential_1Tm((v4 + 8));
  (*(v3 + 32))(v8, v2, v11);
  *(v4 + 48) = 7;
  sub_222485F68();
  swift_willThrowTypedImpl();
  MEMORY[0x223DB7AD0](v1);
  sub_2224A8390("send", 4, 2, v12);

  v9 = v0[1];

  return v9(0);
}

uint64_t sub_222498770(uint64_t a1, uint64_t a2)
{
  v3[16] = v2;
  v3[17] = a2;
  v3[15] = a1;
  v3[18] = *v2;
  v3[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E430, &qword_2224B5528);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  sub_2224B4128();
  v3[22] = swift_task_alloc();
  v4 = sub_2224B41F8();
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();
  v5 = sub_2224B4198();
  v3[26] = v5;
  v3[27] = *(v5 - 8);
  v3[28] = swift_task_alloc();
  v6 = sub_2224B46A8();
  v3[29] = v6;
  v3[30] = *(v6 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v7 = sub_2224B42A8();
  v3[33] = v7;
  v3[34] = *(v7 - 8);
  v3[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2224989F0, v2, 0);
}

uint64_t sub_2224989F0()
{
  v49 = v0;
  if (qword_28130A598 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);
  v4 = *(v0 + 120);
  v5 = sub_2224B46D8();
  __swift_project_value_buffer(v5, qword_28130A5A0);
  v46 = *(v2 + 16);
  v46(v1, v4, v3);
  sub_2224B4698();
  v6 = sub_2224B46B8();
  v7 = sub_2224B4938();
  v8 = sub_2224B4948();
  v10 = *(v0 + 272);
  v9 = *(v0 + 280);
  v11 = *(v0 + 264);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v48 = v13;
    *v12 = 136315138;
    sub_2224A76C8(&qword_28130A340, MEMORY[0x277D37800], MEMORY[0x277D37808]);
    v14 = sub_2224B4A78();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_2224A5AE8(v14, v16, &v48);

    *(v12 + 4) = v17;
    v18 = sub_2224B4688();
    _os_signpost_emit_with_name_impl(&dword_222484000, v6, v7, v18, "send", "request=%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x223DB7C20](v13, -1, -1);
    MEMORY[0x223DB7C20](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v19 = *(v0 + 256);
  v20 = *(v0 + 240);
  v21 = *(v0 + 232);
  (*(v20 + 16))(*(v0 + 248), v19, v21);
  sub_2224B4718();
  swift_allocObject();
  v22 = sub_2224B4708();
  *(v0 + 288) = v22;
  (*(v20 + 8))(v19, v21);
  sub_2224A76C8(&qword_28130A338, MEMORY[0x277D37800], MEMORY[0x277D377F8]);
  if (sub_2224B41C8() <= 10485760)
  {
    if (qword_28130A578 != -1)
    {
      swift_once();
    }

    v34 = *(v0 + 264);
    v35 = *(v0 + 144);
    v37 = *(v0 + 120);
    v36 = *(v0 + 128);
    v38 = sub_2224B4628();
    *(v0 + 296) = v38;
    *(v0 + 304) = __swift_project_value_buffer(v38, qword_28130A580);
    *(v0 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
    v39 = *(sub_2224B4148() - 8);
    *(v0 + 320) = *(v39 + 72);
    *(v0 + 352) = *(v39 + 80);
    *(swift_allocObject() + 16) = xmmword_2224B5060;
    sub_2224B4118();
    sub_2224B4108();
    *(v0 + 40) = v34;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 16));
    v46(boxed_opaque_existential_1Tm, v37, v34);
    sub_2224B40F8();
    sub_2224A7878(v0 + 16, &qword_27D00E338, &qword_2224B5090);
    sub_2224B4108();
    sub_2224B4138();
    sub_2224B4578();

    v41 = sub_2224A76C8(&qword_28130A568, type metadata accessor for DaemonSessionImplementation, &unk_2224B568C);
    v42 = swift_task_alloc();
    *(v0 + 328) = v42;
    v42[2] = v36;
    v42[3] = v37;
    v42[4] = v35;
    v43 = swift_task_alloc();
    *(v0 + 336) = v43;
    *v43 = v0;
    v43[1] = sub_2224991B4;
    v45 = *(v0 + 152);
    v44 = *(v0 + 160);

    return MEMORY[0x2822008A0](v44, v36, v41, 0x293A5F28646E6573, 0xE800000000000000, sub_2224A6FE4, v42, v45);
  }

  else
  {
    v24 = *(v0 + 216);
    v23 = *(v0 + 224);
    v26 = *(v0 + 200);
    v25 = *(v0 + 208);
    v27 = *(v0 + 192);
    v47 = *(v0 + 184);
    v28 = *(v0 + 136);
    *v23 = sub_2224B41C8();
    v23[1] = 10485760;
    (*(v24 + 104))(v23, *MEMORY[0x277D37760], v25);
    sub_2224A76C8(&qword_27D00E328, MEMORY[0x277D37778], MEMORY[0x277D37780]);
    v29 = swift_allocError();
    (*(v24 + 16))(v30, v23, v25);
    MEMORY[0x223DB7AE0](v29);
    sub_2224B4208();
    *v28 = sub_2224B41E8();
    *(v28 + 32) = v47;
    *(v28 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790], MEMORY[0x277D37788]);
    v31 = __swift_allocate_boxed_opaque_existential_1Tm((v28 + 8));
    (*(v27 + 32))(v31, v26, v47);
    MEMORY[0x223DB7AD0](v29);
    (*(v24 + 8))(v23, v25);
    *(v28 + 48) = 7;
    sub_222485F68();
    swift_willThrowTypedImpl();
    sub_2224A8390("send", 4, 2, v22);

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_2224991B4()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = *(v2 + 128);
    v4 = sub_2224A7974;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_2224992DC;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2224992DC()
{
  v1 = v0[43];
  sub_2224A7660(v0[20], v0[21], &qword_27D00E430, &qword_2224B5528);
  sub_2224B4318();
  if (v1)
  {
    sub_2224A7878(v0[21], &qword_27D00E430, &qword_2224B5528);
    v3 = v0[24];
    v2 = v0[25];
    v14 = v0[23];
    v15 = v0[36];
    v4 = v0[17];
    *(swift_allocObject() + 16) = xmmword_2224B5060;
    sub_2224B4118();
    sub_2224B4108();
    swift_getErrorValue();
    v5 = v0[10];
    v6 = v0[11];
    v0[9] = v6;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v0 + 6);
    (*(*(v6 - 8) + 16))(boxed_opaque_existential_1Tm, v5, v6);
    sub_2224B40F8();
    sub_2224A7878((v0 + 6), &qword_27D00E338, &qword_2224B5090);
    sub_2224B4108();
    sub_2224B4138();
    sub_2224B4588();

    MEMORY[0x223DB7AE0](v1);
    sub_2224B4208();
    *v4 = sub_2224B41E8();
    *(v4 + 32) = v14;
    *(v4 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790], MEMORY[0x277D37788]);
    v8 = __swift_allocate_boxed_opaque_existential_1Tm((v4 + 8));
    (*(v3 + 32))(v8, v2, v14);
    *(v4 + 48) = 7;
    sub_222485F68();
    swift_willThrowTypedImpl();
    MEMORY[0x223DB7AD0](v1);
    sub_2224A8390("send", 4, 2, v15);

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[36];
    sub_2224A7878(v0[21], &qword_27D00E430, &qword_2224B5528);
    sub_2224A8390("send", 4, 2, v11);

    v12 = v0[13];

    v13 = v0[1];

    return v13(v12);
  }
}

uint64_t sub_2224996B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = v3;
  v4[17] = a3;
  v4[14] = a1;
  v4[15] = a2;
  v4[18] = *v3;
  v4[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E518, &qword_2224B55A8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  sub_2224B4128();
  v4[22] = swift_task_alloc();
  v5 = sub_2224B41F8();
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();
  v6 = sub_2224B4198();
  v4[26] = v6;
  v4[27] = *(v6 - 8);
  v4[28] = swift_task_alloc();
  v7 = sub_2224B46A8();
  v4[29] = v7;
  v4[30] = *(v7 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v8 = sub_2224B4228();
  v4[33] = v8;
  v4[34] = *(v8 - 8);
  v4[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222499938, v3, 0);
}

uint64_t sub_222499938()
{
  v49 = v0;
  if (qword_28130A598 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);
  v4 = *(v0 + 120);
  v5 = sub_2224B46D8();
  __swift_project_value_buffer(v5, qword_28130A5A0);
  v46 = *(v2 + 16);
  v46(v1, v4, v3);
  sub_2224B4698();
  v6 = sub_2224B46B8();
  v7 = sub_2224B4938();
  v8 = sub_2224B4948();
  v10 = *(v0 + 272);
  v9 = *(v0 + 280);
  v11 = *(v0 + 264);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v48 = v13;
    *v12 = 136315138;
    sub_2224A76C8(&qword_27D00E528, MEMORY[0x277D377A8], MEMORY[0x277D377B0]);
    v14 = sub_2224B4A78();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_2224A5AE8(v14, v16, &v48);

    *(v12 + 4) = v17;
    v18 = sub_2224B4688();
    _os_signpost_emit_with_name_impl(&dword_222484000, v6, v7, v18, "send", "request=%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x223DB7C20](v13, -1, -1);
    MEMORY[0x223DB7C20](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v19 = *(v0 + 256);
  v20 = *(v0 + 240);
  v21 = *(v0 + 232);
  (*(v20 + 16))(*(v0 + 248), v19, v21);
  sub_2224B4718();
  swift_allocObject();
  v22 = sub_2224B4708();
  *(v0 + 288) = v22;
  (*(v20 + 8))(v19, v21);
  sub_2224A76C8(&qword_27D00E520, MEMORY[0x277D377A8], MEMORY[0x277D377A0]);
  if (sub_2224B41C8() <= 10485760)
  {
    if (qword_28130A578 != -1)
    {
      swift_once();
    }

    v34 = *(v0 + 264);
    v35 = *(v0 + 144);
    v37 = *(v0 + 120);
    v36 = *(v0 + 128);
    v38 = sub_2224B4628();
    *(v0 + 296) = v38;
    *(v0 + 304) = __swift_project_value_buffer(v38, qword_28130A580);
    *(v0 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
    v39 = *(sub_2224B4148() - 8);
    *(v0 + 320) = *(v39 + 72);
    *(v0 + 352) = *(v39 + 80);
    *(swift_allocObject() + 16) = xmmword_2224B5060;
    sub_2224B4118();
    sub_2224B4108();
    *(v0 + 40) = v34;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 16));
    v46(boxed_opaque_existential_1Tm, v37, v34);
    sub_2224B40F8();
    sub_2224A7878(v0 + 16, &qword_27D00E338, &qword_2224B5090);
    sub_2224B4108();
    sub_2224B4138();
    sub_2224B4578();

    v41 = sub_2224A76C8(&qword_28130A568, type metadata accessor for DaemonSessionImplementation, &unk_2224B568C);
    v42 = swift_task_alloc();
    *(v0 + 328) = v42;
    v42[2] = v36;
    v42[3] = v37;
    v42[4] = v35;
    v43 = swift_task_alloc();
    *(v0 + 336) = v43;
    *v43 = v0;
    v43[1] = sub_22249A0FC;
    v45 = *(v0 + 152);
    v44 = *(v0 + 160);

    return MEMORY[0x2822008A0](v44, v36, v41, 0x293A5F28646E6573, 0xE800000000000000, sub_2224A7324, v42, v45);
  }

  else
  {
    v24 = *(v0 + 216);
    v23 = *(v0 + 224);
    v26 = *(v0 + 200);
    v25 = *(v0 + 208);
    v27 = *(v0 + 192);
    v47 = *(v0 + 184);
    v28 = *(v0 + 136);
    *v23 = sub_2224B41C8();
    v23[1] = 10485760;
    (*(v24 + 104))(v23, *MEMORY[0x277D37760], v25);
    sub_2224A76C8(&qword_27D00E328, MEMORY[0x277D37778], MEMORY[0x277D37780]);
    v29 = swift_allocError();
    (*(v24 + 16))(v30, v23, v25);
    MEMORY[0x223DB7AE0](v29);
    sub_2224B4208();
    *v28 = sub_2224B41E8();
    *(v28 + 32) = v47;
    *(v28 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790], MEMORY[0x277D37788]);
    v31 = __swift_allocate_boxed_opaque_existential_1Tm((v28 + 8));
    (*(v27 + 32))(v31, v26, v47);
    MEMORY[0x223DB7AD0](v29);
    (*(v24 + 8))(v23, v25);
    *(v28 + 48) = 7;
    sub_222485F68();
    swift_willThrowTypedImpl();
    sub_2224A8390("send", 4, 2, v22);

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_22249A0FC()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = *(v2 + 128);
    v4 = sub_2224A7980;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_22249A224;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22249A224()
{
  v1 = v0[43];
  sub_2224A7660(v0[20], v0[21], &qword_27D00E518, &qword_2224B55A8);
  sub_2224B4318();
  if (v1)
  {
    sub_2224A7878(v0[21], &qword_27D00E518, &qword_2224B55A8);
    v3 = v0[24];
    v2 = v0[25];
    v12 = v0[23];
    v13 = v0[36];
    v4 = v0[17];
    *(swift_allocObject() + 16) = xmmword_2224B5060;
    sub_2224B4118();
    sub_2224B4108();
    swift_getErrorValue();
    v5 = v0[10];
    v6 = v0[11];
    v0[9] = v6;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v0 + 6);
    (*(*(v6 - 8) + 16))(boxed_opaque_existential_1Tm, v5, v6);
    sub_2224B40F8();
    sub_2224A7878((v0 + 6), &qword_27D00E338, &qword_2224B5090);
    sub_2224B4108();
    sub_2224B4138();
    sub_2224B4588();

    MEMORY[0x223DB7AE0](v1);
    sub_2224B4208();
    *v4 = sub_2224B41E8();
    *(v4 + 32) = v12;
    *(v4 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790], MEMORY[0x277D37788]);
    v8 = __swift_allocate_boxed_opaque_existential_1Tm((v4 + 8));
    (*(v3 + 32))(v8, v2, v12);
    *(v4 + 48) = 7;
    sub_222485F68();
    swift_willThrowTypedImpl();
    MEMORY[0x223DB7AD0](v1);
    sub_2224A8390("send", 4, 2, v13);
  }

  else
  {
    v10 = v0[36];
    sub_2224A7878(v0[21], &qword_27D00E518, &qword_2224B55A8);
    sub_2224A8390("send", 4, 2, v10);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_22249A5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = v3;
  v4[17] = a3;
  v4[14] = a1;
  v4[15] = a2;
  v4[18] = *v3;
  v4[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E4E8, &qword_2224B5590);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  sub_2224B4128();
  v4[22] = swift_task_alloc();
  v5 = sub_2224B41F8();
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();
  v6 = sub_2224B4198();
  v4[26] = v6;
  v4[27] = *(v6 - 8);
  v4[28] = swift_task_alloc();
  v7 = sub_2224B46A8();
  v4[29] = v7;
  v4[30] = *(v7 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v8 = sub_2224B4498();
  v4[33] = v8;
  v4[34] = *(v8 - 8);
  v4[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22249A848, v3, 0);
}

uint64_t sub_22249A848()
{
  v49 = v0;
  if (qword_28130A598 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);
  v4 = *(v0 + 120);
  v5 = sub_2224B46D8();
  __swift_project_value_buffer(v5, qword_28130A5A0);
  v46 = *(v2 + 16);
  v46(v1, v4, v3);
  sub_2224B4698();
  v6 = sub_2224B46B8();
  v7 = sub_2224B4938();
  v8 = sub_2224B4948();
  v10 = *(v0 + 272);
  v9 = *(v0 + 280);
  v11 = *(v0 + 264);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v48 = v13;
    *v12 = 136315138;
    sub_2224A76C8(&qword_27D00E4F8, MEMORY[0x277D37878], MEMORY[0x277D37880]);
    v14 = sub_2224B4A78();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_2224A5AE8(v14, v16, &v48);

    *(v12 + 4) = v17;
    v18 = sub_2224B4688();
    _os_signpost_emit_with_name_impl(&dword_222484000, v6, v7, v18, "send", "request=%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x223DB7C20](v13, -1, -1);
    MEMORY[0x223DB7C20](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v19 = *(v0 + 256);
  v20 = *(v0 + 240);
  v21 = *(v0 + 232);
  (*(v20 + 16))(*(v0 + 248), v19, v21);
  sub_2224B4718();
  swift_allocObject();
  v22 = sub_2224B4708();
  *(v0 + 288) = v22;
  (*(v20 + 8))(v19, v21);
  sub_2224A76C8(&qword_27D00E4F0, MEMORY[0x277D37878], MEMORY[0x277D37870]);
  if (sub_2224B41C8() <= 10485760)
  {
    if (qword_28130A578 != -1)
    {
      swift_once();
    }

    v34 = *(v0 + 264);
    v35 = *(v0 + 144);
    v37 = *(v0 + 120);
    v36 = *(v0 + 128);
    v38 = sub_2224B4628();
    *(v0 + 296) = v38;
    *(v0 + 304) = __swift_project_value_buffer(v38, qword_28130A580);
    *(v0 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
    v39 = *(sub_2224B4148() - 8);
    *(v0 + 320) = *(v39 + 72);
    *(v0 + 352) = *(v39 + 80);
    *(swift_allocObject() + 16) = xmmword_2224B5060;
    sub_2224B4118();
    sub_2224B4108();
    *(v0 + 40) = v34;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 16));
    v46(boxed_opaque_existential_1Tm, v37, v34);
    sub_2224B40F8();
    sub_2224A7878(v0 + 16, &qword_27D00E338, &qword_2224B5090);
    sub_2224B4108();
    sub_2224B4138();
    sub_2224B4578();

    v41 = sub_2224A76C8(&qword_28130A568, type metadata accessor for DaemonSessionImplementation, &unk_2224B568C);
    v42 = swift_task_alloc();
    *(v0 + 328) = v42;
    v42[2] = v36;
    v42[3] = v37;
    v42[4] = v35;
    v43 = swift_task_alloc();
    *(v0 + 336) = v43;
    *v43 = v0;
    v43[1] = sub_22249B00C;
    v45 = *(v0 + 152);
    v44 = *(v0 + 160);

    return MEMORY[0x2822008A0](v44, v36, v41, 0x293A5F28646E6573, 0xE800000000000000, sub_2224A72F0, v42, v45);
  }

  else
  {
    v24 = *(v0 + 216);
    v23 = *(v0 + 224);
    v26 = *(v0 + 200);
    v25 = *(v0 + 208);
    v27 = *(v0 + 192);
    v47 = *(v0 + 184);
    v28 = *(v0 + 136);
    *v23 = sub_2224B41C8();
    v23[1] = 10485760;
    (*(v24 + 104))(v23, *MEMORY[0x277D37760], v25);
    sub_2224A76C8(&qword_27D00E328, MEMORY[0x277D37778], MEMORY[0x277D37780]);
    v29 = swift_allocError();
    (*(v24 + 16))(v30, v23, v25);
    MEMORY[0x223DB7AE0](v29);
    sub_2224B4208();
    *v28 = sub_2224B41E8();
    *(v28 + 32) = v47;
    *(v28 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790], MEMORY[0x277D37788]);
    v31 = __swift_allocate_boxed_opaque_existential_1Tm((v28 + 8));
    (*(v27 + 32))(v31, v26, v47);
    MEMORY[0x223DB7AD0](v29);
    (*(v24 + 8))(v23, v25);
    *(v28 + 48) = 7;
    sub_222485F68();
    swift_willThrowTypedImpl();
    sub_2224A8390("send", 4, 2, v22);

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_22249B00C()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = *(v2 + 128);
    v4 = sub_2224A7980;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_22249B134;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22249B134()
{
  v1 = v0[43];
  sub_2224A7660(v0[20], v0[21], &qword_27D00E4E8, &qword_2224B5590);
  sub_2224B4318();
  if (v1)
  {
    sub_2224A7878(v0[21], &qword_27D00E4E8, &qword_2224B5590);
    v3 = v0[24];
    v2 = v0[25];
    v12 = v0[23];
    v13 = v0[36];
    v4 = v0[17];
    *(swift_allocObject() + 16) = xmmword_2224B5060;
    sub_2224B4118();
    sub_2224B4108();
    swift_getErrorValue();
    v5 = v0[10];
    v6 = v0[11];
    v0[9] = v6;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v0 + 6);
    (*(*(v6 - 8) + 16))(boxed_opaque_existential_1Tm, v5, v6);
    sub_2224B40F8();
    sub_2224A7878((v0 + 6), &qword_27D00E338, &qword_2224B5090);
    sub_2224B4108();
    sub_2224B4138();
    sub_2224B4588();

    MEMORY[0x223DB7AE0](v1);
    sub_2224B4208();
    *v4 = sub_2224B41E8();
    *(v4 + 32) = v12;
    *(v4 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790], MEMORY[0x277D37788]);
    v8 = __swift_allocate_boxed_opaque_existential_1Tm((v4 + 8));
    (*(v3 + 32))(v8, v2, v12);
    *(v4 + 48) = 7;
    sub_222485F68();
    swift_willThrowTypedImpl();
    MEMORY[0x223DB7AD0](v1);
    sub_2224A8390("send", 4, 2, v13);
  }

  else
  {
    v10 = v0[36];
    sub_2224A7878(v0[21], &qword_27D00E4E8, &qword_2224B5590);
    sub_2224A8390("send", 4, 2, v10);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_22249B4D8(uint64_t a1, uint64_t a2)
{
  v3[16] = v2;
  v3[17] = a2;
  v3[15] = a1;
  v3[18] = *v2;
  v3[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E4D0, &qword_2224B5578);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  sub_2224B4128();
  v3[22] = swift_task_alloc();
  v4 = sub_2224B41F8();
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();
  v5 = sub_2224B4198();
  v3[26] = v5;
  v3[27] = *(v5 - 8);
  v3[28] = swift_task_alloc();
  v6 = sub_2224B46A8();
  v3[29] = v6;
  v3[30] = *(v6 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v7 = sub_2224B4278();
  v3[33] = v7;
  v3[34] = *(v7 - 8);
  v3[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22249B758, v2, 0);
}

uint64_t sub_22249B758()
{
  v49 = v0;
  if (qword_28130A598 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);
  v4 = *(v0 + 120);
  v5 = sub_2224B46D8();
  __swift_project_value_buffer(v5, qword_28130A5A0);
  v46 = *(v2 + 16);
  v46(v1, v4, v3);
  sub_2224B4698();
  v6 = sub_2224B46B8();
  v7 = sub_2224B4938();
  v8 = sub_2224B4948();
  v10 = *(v0 + 272);
  v9 = *(v0 + 280);
  v11 = *(v0 + 264);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v48 = v13;
    *v12 = 136315138;
    sub_2224A76C8(&qword_28130A4A8, MEMORY[0x277D377E8], MEMORY[0x277D377F0]);
    v14 = sub_2224B4A78();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_2224A5AE8(v14, v16, &v48);

    *(v12 + 4) = v17;
    v18 = sub_2224B4688();
    _os_signpost_emit_with_name_impl(&dword_222484000, v6, v7, v18, "send", "request=%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x223DB7C20](v13, -1, -1);
    MEMORY[0x223DB7C20](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v19 = *(v0 + 256);
  v20 = *(v0 + 240);
  v21 = *(v0 + 232);
  (*(v20 + 16))(*(v0 + 248), v19, v21);
  sub_2224B4718();
  swift_allocObject();
  v22 = sub_2224B4708();
  *(v0 + 288) = v22;
  (*(v20 + 8))(v19, v21);
  sub_2224A76C8(&qword_28130A4A0, MEMORY[0x277D377E8], MEMORY[0x277D377E0]);
  if (sub_2224B41C8() <= 10485760)
  {
    if (qword_28130A578 != -1)
    {
      swift_once();
    }

    v34 = *(v0 + 264);
    v35 = *(v0 + 144);
    v37 = *(v0 + 120);
    v36 = *(v0 + 128);
    v38 = sub_2224B4628();
    *(v0 + 296) = v38;
    *(v0 + 304) = __swift_project_value_buffer(v38, qword_28130A580);
    *(v0 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
    v39 = *(sub_2224B4148() - 8);
    *(v0 + 320) = *(v39 + 72);
    *(v0 + 352) = *(v39 + 80);
    *(swift_allocObject() + 16) = xmmword_2224B5060;
    sub_2224B4118();
    sub_2224B4108();
    *(v0 + 40) = v34;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 16));
    v46(boxed_opaque_existential_1Tm, v37, v34);
    sub_2224B40F8();
    sub_2224A7878(v0 + 16, &qword_27D00E338, &qword_2224B5090);
    sub_2224B4108();
    sub_2224B4138();
    sub_2224B4578();

    v41 = sub_2224A76C8(&qword_28130A568, type metadata accessor for DaemonSessionImplementation, &unk_2224B568C);
    v42 = swift_task_alloc();
    *(v0 + 328) = v42;
    v42[2] = v36;
    v42[3] = v37;
    v42[4] = v35;
    v43 = swift_task_alloc();
    *(v0 + 336) = v43;
    *v43 = v0;
    v43[1] = sub_22249BF1C;
    v45 = *(v0 + 152);
    v44 = *(v0 + 160);

    return MEMORY[0x2822008A0](v44, v36, v41, 0x293A5F28646E6573, 0xE800000000000000, sub_2224A72BC, v42, v45);
  }

  else
  {
    v24 = *(v0 + 216);
    v23 = *(v0 + 224);
    v26 = *(v0 + 200);
    v25 = *(v0 + 208);
    v27 = *(v0 + 192);
    v47 = *(v0 + 184);
    v28 = *(v0 + 136);
    *v23 = sub_2224B41C8();
    v23[1] = 10485760;
    (*(v24 + 104))(v23, *MEMORY[0x277D37760], v25);
    sub_2224A76C8(&qword_27D00E328, MEMORY[0x277D37778], MEMORY[0x277D37780]);
    v29 = swift_allocError();
    (*(v24 + 16))(v30, v23, v25);
    MEMORY[0x223DB7AE0](v29);
    sub_2224B4208();
    *v28 = sub_2224B41E8();
    *(v28 + 32) = v47;
    *(v28 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790], MEMORY[0x277D37788]);
    v31 = __swift_allocate_boxed_opaque_existential_1Tm((v28 + 8));
    (*(v27 + 32))(v31, v26, v47);
    MEMORY[0x223DB7AD0](v29);
    (*(v24 + 8))(v23, v25);
    *(v28 + 48) = 7;
    sub_222485F68();
    swift_willThrowTypedImpl();
    sub_2224A8390("send", 4, 2, v22);

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_22249BF1C()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = *(v2 + 128);
    v4 = sub_2224A7974;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_22249C044;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22249C044()
{
  v1 = v0[43];
  sub_2224A7660(v0[20], v0[21], &qword_27D00E4D0, &qword_2224B5578);
  sub_2224B4318();
  if (v1)
  {
    sub_2224A7878(v0[21], &qword_27D00E4D0, &qword_2224B5578);
    v3 = v0[24];
    v2 = v0[25];
    v14 = v0[23];
    v15 = v0[36];
    v4 = v0[17];
    *(swift_allocObject() + 16) = xmmword_2224B5060;
    sub_2224B4118();
    sub_2224B4108();
    swift_getErrorValue();
    v5 = v0[10];
    v6 = v0[11];
    v0[9] = v6;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v0 + 6);
    (*(*(v6 - 8) + 16))(boxed_opaque_existential_1Tm, v5, v6);
    sub_2224B40F8();
    sub_2224A7878((v0 + 6), &qword_27D00E338, &qword_2224B5090);
    sub_2224B4108();
    sub_2224B4138();
    sub_2224B4588();

    MEMORY[0x223DB7AE0](v1);
    sub_2224B4208();
    *v4 = sub_2224B41E8();
    *(v4 + 32) = v14;
    *(v4 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790], MEMORY[0x277D37788]);
    v8 = __swift_allocate_boxed_opaque_existential_1Tm((v4 + 8));
    (*(v3 + 32))(v8, v2, v14);
    *(v4 + 48) = 7;
    sub_222485F68();
    swift_willThrowTypedImpl();
    MEMORY[0x223DB7AD0](v1);
    sub_2224A8390("send", 4, 2, v15);

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[36];
    sub_2224A7878(v0[21], &qword_27D00E4D0, &qword_2224B5578);
    sub_2224A8390("send", 4, 2, v11);

    v12 = v0[13];

    v13 = v0[1];

    return v13(v12);
  }
}

uint64_t sub_22249C420(uint64_t a1, uint64_t a2)
{
  v3[16] = v2;
  v3[17] = a2;
  v3[15] = a1;
  v3[18] = *v2;
  v3[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E480, &qword_2224B5560);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  sub_2224B4128();
  v3[22] = swift_task_alloc();
  v4 = sub_2224B41F8();
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();
  v5 = sub_2224B4198();
  v3[26] = v5;
  v3[27] = *(v5 - 8);
  v3[28] = swift_task_alloc();
  v6 = sub_2224B46A8();
  v3[29] = v6;
  v3[30] = *(v6 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v7 = sub_2224B42F8();
  v3[33] = v7;
  v3[34] = *(v7 - 8);
  v3[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22249C6A0, v2, 0);
}

uint64_t sub_22249C6A0()
{
  v49 = v0;
  if (qword_28130A598 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);
  v4 = *(v0 + 120);
  v5 = sub_2224B46D8();
  __swift_project_value_buffer(v5, qword_28130A5A0);
  v46 = *(v2 + 16);
  v46(v1, v4, v3);
  sub_2224B4698();
  v6 = sub_2224B46B8();
  v7 = sub_2224B4938();
  v8 = sub_2224B4948();
  v10 = *(v0 + 272);
  v9 = *(v0 + 280);
  v11 = *(v0 + 264);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v48 = v13;
    *v12 = 136315138;
    sub_2224A76C8(&qword_27D00E4C8, MEMORY[0x277D37830], MEMORY[0x277D37838]);
    v14 = sub_2224B4A78();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_2224A5AE8(v14, v16, &v48);

    *(v12 + 4) = v17;
    v18 = sub_2224B4688();
    _os_signpost_emit_with_name_impl(&dword_222484000, v6, v7, v18, "send", "request=%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x223DB7C20](v13, -1, -1);
    MEMORY[0x223DB7C20](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v19 = *(v0 + 256);
  v20 = *(v0 + 240);
  v21 = *(v0 + 232);
  (*(v20 + 16))(*(v0 + 248), v19, v21);
  sub_2224B4718();
  swift_allocObject();
  v22 = sub_2224B4708();
  *(v0 + 288) = v22;
  (*(v20 + 8))(v19, v21);
  sub_2224A76C8(&qword_27D00E4C0, MEMORY[0x277D37830], MEMORY[0x277D37828]);
  if (sub_2224B41C8() <= 10485760)
  {
    if (qword_28130A578 != -1)
    {
      swift_once();
    }

    v34 = *(v0 + 264);
    v35 = *(v0 + 144);
    v37 = *(v0 + 120);
    v36 = *(v0 + 128);
    v38 = sub_2224B4628();
    *(v0 + 296) = v38;
    *(v0 + 304) = __swift_project_value_buffer(v38, qword_28130A580);
    *(v0 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
    v39 = *(sub_2224B4148() - 8);
    *(v0 + 320) = *(v39 + 72);
    *(v0 + 352) = *(v39 + 80);
    *(swift_allocObject() + 16) = xmmword_2224B5060;
    sub_2224B4118();
    sub_2224B4108();
    *(v0 + 40) = v34;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 16));
    v46(boxed_opaque_existential_1Tm, v37, v34);
    sub_2224B40F8();
    sub_2224A7878(v0 + 16, &qword_27D00E338, &qword_2224B5090);
    sub_2224B4108();
    sub_2224B4138();
    sub_2224B4578();

    v41 = sub_2224A76C8(&qword_28130A568, type metadata accessor for DaemonSessionImplementation, &unk_2224B568C);
    v42 = swift_task_alloc();
    *(v0 + 328) = v42;
    v42[2] = v36;
    v42[3] = v37;
    v42[4] = v35;
    v43 = swift_task_alloc();
    *(v0 + 336) = v43;
    *v43 = v0;
    v43[1] = sub_22249CE64;
    v45 = *(v0 + 152);
    v44 = *(v0 + 160);

    return MEMORY[0x2822008A0](v44, v36, v41, 0x293A5F28646E6573, 0xE800000000000000, sub_2224A72B0, v42, v45);
  }

  else
  {
    v24 = *(v0 + 216);
    v23 = *(v0 + 224);
    v26 = *(v0 + 200);
    v25 = *(v0 + 208);
    v27 = *(v0 + 192);
    v47 = *(v0 + 184);
    v28 = *(v0 + 136);
    *v23 = sub_2224B41C8();
    v23[1] = 10485760;
    (*(v24 + 104))(v23, *MEMORY[0x277D37760], v25);
    sub_2224A76C8(&qword_27D00E328, MEMORY[0x277D37778], MEMORY[0x277D37780]);
    v29 = swift_allocError();
    (*(v24 + 16))(v30, v23, v25);
    MEMORY[0x223DB7AE0](v29);
    sub_2224B4208();
    *v28 = sub_2224B41E8();
    *(v28 + 32) = v47;
    *(v28 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790], MEMORY[0x277D37788]);
    v31 = __swift_allocate_boxed_opaque_existential_1Tm((v28 + 8));
    (*(v27 + 32))(v31, v26, v47);
    MEMORY[0x223DB7AD0](v29);
    (*(v24 + 8))(v23, v25);
    *(v28 + 48) = 7;
    sub_222485F68();
    swift_willThrowTypedImpl();
    sub_2224A8390("send", 4, 2, v22);

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_22249CE64()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = *(v2 + 128);
    v4 = sub_2224A7974;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_2224A7978;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22249CF8C(uint64_t a1, uint64_t a2)
{
  v3[16] = v2;
  v3[17] = a2;
  v3[15] = a1;
  v3[18] = *v2;
  v3[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E480, &qword_2224B5560);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  sub_2224B4128();
  v3[22] = swift_task_alloc();
  v4 = sub_2224B41F8();
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();
  v5 = sub_2224B4198();
  v3[26] = v5;
  v3[27] = *(v5 - 8);
  v3[28] = swift_task_alloc();
  v6 = sub_2224B46A8();
  v3[29] = v6;
  v3[30] = *(v6 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v7 = sub_2224B4258();
  v3[33] = v7;
  v3[34] = *(v7 - 8);
  v3[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22249D20C, v2, 0);
}

uint64_t sub_22249D20C()
{
  v49 = v0;
  if (qword_28130A598 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);
  v4 = *(v0 + 120);
  v5 = sub_2224B46D8();
  __swift_project_value_buffer(v5, qword_28130A5A0);
  v46 = *(v2 + 16);
  v46(v1, v4, v3);
  sub_2224B4698();
  v6 = sub_2224B46B8();
  v7 = sub_2224B4938();
  v8 = sub_2224B4948();
  v10 = *(v0 + 272);
  v9 = *(v0 + 280);
  v11 = *(v0 + 264);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v48 = v13;
    *v12 = 136315138;
    sub_2224A76C8(&qword_27D00E4B8, MEMORY[0x277D377D0], MEMORY[0x277D377D8]);
    v14 = sub_2224B4A78();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_2224A5AE8(v14, v16, &v48);

    *(v12 + 4) = v17;
    v18 = sub_2224B4688();
    _os_signpost_emit_with_name_impl(&dword_222484000, v6, v7, v18, "send", "request=%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x223DB7C20](v13, -1, -1);
    MEMORY[0x223DB7C20](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v19 = *(v0 + 256);
  v20 = *(v0 + 240);
  v21 = *(v0 + 232);
  (*(v20 + 16))(*(v0 + 248), v19, v21);
  sub_2224B4718();
  swift_allocObject();
  v22 = sub_2224B4708();
  *(v0 + 288) = v22;
  (*(v20 + 8))(v19, v21);
  sub_2224A76C8(&qword_27D00E4B0, MEMORY[0x277D377D0], MEMORY[0x277D377C8]);
  if (sub_2224B41C8() <= 10485760)
  {
    if (qword_28130A578 != -1)
    {
      swift_once();
    }

    v34 = *(v0 + 264);
    v35 = *(v0 + 144);
    v37 = *(v0 + 120);
    v36 = *(v0 + 128);
    v38 = sub_2224B4628();
    *(v0 + 296) = v38;
    *(v0 + 304) = __swift_project_value_buffer(v38, qword_28130A580);
    *(v0 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
    v39 = *(sub_2224B4148() - 8);
    *(v0 + 320) = *(v39 + 72);
    *(v0 + 352) = *(v39 + 80);
    *(swift_allocObject() + 16) = xmmword_2224B5060;
    sub_2224B4118();
    sub_2224B4108();
    *(v0 + 40) = v34;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 16));
    v46(boxed_opaque_existential_1Tm, v37, v34);
    sub_2224B40F8();
    sub_2224A7878(v0 + 16, &qword_27D00E338, &qword_2224B5090);
    sub_2224B4108();
    sub_2224B4138();
    sub_2224B4578();

    v41 = sub_2224A76C8(&qword_28130A568, type metadata accessor for DaemonSessionImplementation, &unk_2224B568C);
    v42 = swift_task_alloc();
    *(v0 + 328) = v42;
    v42[2] = v36;
    v42[3] = v37;
    v42[4] = v35;
    v43 = swift_task_alloc();
    *(v0 + 336) = v43;
    *v43 = v0;
    v43[1] = sub_22249CE64;
    v45 = *(v0 + 152);
    v44 = *(v0 + 160);

    return MEMORY[0x2822008A0](v44, v36, v41, 0x293A5F28646E6573, 0xE800000000000000, sub_2224A72A4, v42, v45);
  }

  else
  {
    v24 = *(v0 + 216);
    v23 = *(v0 + 224);
    v26 = *(v0 + 200);
    v25 = *(v0 + 208);
    v27 = *(v0 + 192);
    v47 = *(v0 + 184);
    v28 = *(v0 + 136);
    *v23 = sub_2224B41C8();
    v23[1] = 10485760;
    (*(v24 + 104))(v23, *MEMORY[0x277D37760], v25);
    sub_2224A76C8(&qword_27D00E328, MEMORY[0x277D37778], MEMORY[0x277D37780]);
    v29 = swift_allocError();
    (*(v24 + 16))(v30, v23, v25);
    MEMORY[0x223DB7AE0](v29);
    sub_2224B4208();
    *v28 = sub_2224B41E8();
    *(v28 + 32) = v47;
    *(v28 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790], MEMORY[0x277D37788]);
    v31 = __swift_allocate_boxed_opaque_existential_1Tm((v28 + 8));
    (*(v27 + 32))(v31, v26, v47);
    MEMORY[0x223DB7AD0](v29);
    (*(v24 + 8))(v23, v25);
    *(v28 + 48) = 7;
    sub_222485F68();
    swift_willThrowTypedImpl();
    sub_2224A8390("send", 4, 2, v22);

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_22249D9D0(uint64_t a1, uint64_t a2)
{
  v3[16] = v2;
  v3[17] = a2;
  v3[15] = a1;
  v3[18] = *v2;
  v3[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E480, &qword_2224B5560);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  sub_2224B4128();
  v3[22] = swift_task_alloc();
  v4 = sub_2224B41F8();
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();
  v5 = sub_2224B4198();
  v3[26] = v5;
  v3[27] = *(v5 - 8);
  v3[28] = swift_task_alloc();
  v6 = sub_2224B46A8();
  v3[29] = v6;
  v3[30] = *(v6 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v7 = sub_2224B44F8();
  v3[33] = v7;
  v3[34] = *(v7 - 8);
  v3[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22249DC50, v2, 0);
}

uint64_t sub_22249DC50()
{
  v49 = v0;
  if (qword_28130A598 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);
  v4 = *(v0 + 120);
  v5 = sub_2224B46D8();
  __swift_project_value_buffer(v5, qword_28130A5A0);
  v46 = *(v2 + 16);
  v46(v1, v4, v3);
  sub_2224B4698();
  v6 = sub_2224B46B8();
  v7 = sub_2224B4938();
  v8 = sub_2224B4948();
  v10 = *(v0 + 272);
  v9 = *(v0 + 280);
  v11 = *(v0 + 264);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v48 = v13;
    *v12 = 136315138;
    sub_2224A76C8(&qword_27D00E490, MEMORY[0x277D378A8], MEMORY[0x277D378B0]);
    v14 = sub_2224B4A78();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_2224A5AE8(v14, v16, &v48);

    *(v12 + 4) = v17;
    v18 = sub_2224B4688();
    _os_signpost_emit_with_name_impl(&dword_222484000, v6, v7, v18, "send", "request=%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x223DB7C20](v13, -1, -1);
    MEMORY[0x223DB7C20](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v19 = *(v0 + 256);
  v20 = *(v0 + 240);
  v21 = *(v0 + 232);
  (*(v20 + 16))(*(v0 + 248), v19, v21);
  sub_2224B4718();
  swift_allocObject();
  v22 = sub_2224B4708();
  *(v0 + 288) = v22;
  (*(v20 + 8))(v19, v21);
  sub_2224A76C8(&qword_27D00E488, MEMORY[0x277D378A8], MEMORY[0x277D378A0]);
  if (sub_2224B41C8() <= 10485760)
  {
    if (qword_28130A578 != -1)
    {
      swift_once();
    }

    v34 = *(v0 + 264);
    v35 = *(v0 + 144);
    v37 = *(v0 + 120);
    v36 = *(v0 + 128);
    v38 = sub_2224B4628();
    *(v0 + 296) = v38;
    *(v0 + 304) = __swift_project_value_buffer(v38, qword_28130A580);
    *(v0 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
    v39 = *(sub_2224B4148() - 8);
    *(v0 + 320) = *(v39 + 72);
    *(v0 + 352) = *(v39 + 80);
    *(swift_allocObject() + 16) = xmmword_2224B5060;
    sub_2224B4118();
    sub_2224B4108();
    *(v0 + 40) = v34;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 16));
    v46(boxed_opaque_existential_1Tm, v37, v34);
    sub_2224B40F8();
    sub_2224A7878(v0 + 16, &qword_27D00E338, &qword_2224B5090);
    sub_2224B4108();
    sub_2224B4138();
    sub_2224B4578();

    v41 = sub_2224A76C8(&qword_28130A568, type metadata accessor for DaemonSessionImplementation, &unk_2224B568C);
    v42 = swift_task_alloc();
    *(v0 + 328) = v42;
    v42[2] = v36;
    v42[3] = v37;
    v42[4] = v35;
    v43 = swift_task_alloc();
    *(v0 + 336) = v43;
    *v43 = v0;
    v43[1] = sub_22249E414;
    v45 = *(v0 + 152);
    v44 = *(v0 + 160);

    return MEMORY[0x2822008A0](v44, v36, v41, 0x293A5F28646E6573, 0xE800000000000000, sub_2224A7270, v42, v45);
  }

  else
  {
    v24 = *(v0 + 216);
    v23 = *(v0 + 224);
    v26 = *(v0 + 200);
    v25 = *(v0 + 208);
    v27 = *(v0 + 192);
    v47 = *(v0 + 184);
    v28 = *(v0 + 136);
    *v23 = sub_2224B41C8();
    v23[1] = 10485760;
    (*(v24 + 104))(v23, *MEMORY[0x277D37760], v25);
    sub_2224A76C8(&qword_27D00E328, MEMORY[0x277D37778], MEMORY[0x277D37780]);
    v29 = swift_allocError();
    (*(v24 + 16))(v30, v23, v25);
    MEMORY[0x223DB7AE0](v29);
    sub_2224B4208();
    *v28 = sub_2224B41E8();
    *(v28 + 32) = v47;
    *(v28 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790], MEMORY[0x277D37788]);
    v31 = __swift_allocate_boxed_opaque_existential_1Tm((v28 + 8));
    (*(v27 + 32))(v31, v26, v47);
    MEMORY[0x223DB7AD0](v29);
    (*(v24 + 8))(v23, v25);
    *(v28 + 48) = 7;
    sub_222485F68();
    swift_willThrowTypedImpl();
    sub_2224A8390("send", 4, 2, v22);

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_22249E414()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = *(v2 + 128);
    v4 = sub_22249E918;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_22249E53C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22249E53C()
{
  v1 = v0[43];
  sub_2224A7660(v0[20], v0[21], &qword_27D00E480, &qword_2224B5560);
  sub_2224B4318();
  if (v1)
  {
    sub_2224A7878(v0[21], &qword_27D00E480, &qword_2224B5560);
    v3 = v0[24];
    v2 = v0[25];
    v14 = v0[23];
    v15 = v0[36];
    v4 = v0[17];
    *(swift_allocObject() + 16) = xmmword_2224B5060;
    sub_2224B4118();
    sub_2224B4108();
    swift_getErrorValue();
    v5 = v0[10];
    v6 = v0[11];
    v0[9] = v6;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v0 + 6);
    (*(*(v6 - 8) + 16))(boxed_opaque_existential_1Tm, v5, v6);
    sub_2224B40F8();
    sub_2224A7878((v0 + 6), &qword_27D00E338, &qword_2224B5090);
    sub_2224B4108();
    sub_2224B4138();
    sub_2224B4588();

    MEMORY[0x223DB7AE0](v1);
    sub_2224B4208();
    *v4 = sub_2224B41E8();
    *(v4 + 32) = v14;
    *(v4 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790], MEMORY[0x277D37788]);
    v8 = __swift_allocate_boxed_opaque_existential_1Tm((v4 + 8));
    (*(v3 + 32))(v8, v2, v14);
    *(v4 + 48) = 7;
    sub_222485F68();
    swift_willThrowTypedImpl();
    MEMORY[0x223DB7AD0](v1);
    sub_2224A8390("send", 4, 2, v15);

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[36];
    sub_2224A7878(v0[21], &qword_27D00E480, &qword_2224B5560);
    sub_2224A8390("send", 4, 2, v11);

    v12 = v0[13];

    v13 = v0[1];

    return v13(v12);
  }
}

uint64_t sub_22249E918()
{

  v1 = v0[43];
  v3 = v0[24];
  v2 = v0[25];
  v11 = v0[23];
  v12 = v0[36];
  v4 = v0[17];
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B4118();
  sub_2224B4108();
  swift_getErrorValue();
  v5 = v0[10];
  v6 = v0[11];
  v0[9] = v6;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v0 + 6);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1Tm, v5, v6);
  sub_2224B40F8();
  sub_2224A7878((v0 + 6), &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4588();

  MEMORY[0x223DB7AE0](v1);
  sub_2224B4208();
  *v4 = sub_2224B41E8();
  *(v4 + 32) = v11;
  *(v4 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790], MEMORY[0x277D37788]);
  v8 = __swift_allocate_boxed_opaque_existential_1Tm((v4 + 8));
  (*(v3 + 32))(v8, v2, v11);
  *(v4 + 48) = 7;
  sub_222485F68();
  swift_willThrowTypedImpl();
  MEMORY[0x223DB7AD0](v1);
  sub_2224A8390("send", 4, 2, v12);

  v9 = v0[1];

  return v9();
}

uint64_t sub_22249EBD8(uint64_t a1, uint64_t a2)
{
  v3[16] = v2;
  v3[17] = a2;
  v3[15] = a1;
  v3[18] = *v2;
  v3[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E450, &qword_2224B5548);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  sub_2224B4128();
  v3[22] = swift_task_alloc();
  v4 = sub_2224B41F8();
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();
  v5 = sub_2224B4198();
  v3[26] = v5;
  v3[27] = *(v5 - 8);
  v3[28] = swift_task_alloc();
  v6 = sub_2224B46A8();
  v3[29] = v6;
  v3[30] = *(v6 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v7 = sub_2224B42E8();
  v3[33] = v7;
  v3[34] = *(v7 - 8);
  v3[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22249EE58, v2, 0);
}

uint64_t sub_22249EE58()
{
  v49 = v0;
  if (qword_28130A598 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);
  v4 = *(v0 + 120);
  v5 = sub_2224B46D8();
  __swift_project_value_buffer(v5, qword_28130A5A0);
  v46 = *(v2 + 16);
  v46(v1, v4, v3);
  sub_2224B4698();
  v6 = sub_2224B46B8();
  v7 = sub_2224B4938();
  v8 = sub_2224B4948();
  v10 = *(v0 + 272);
  v9 = *(v0 + 280);
  v11 = *(v0 + 264);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v48 = v13;
    *v12 = 136315138;
    sub_2224A76C8(&qword_27D00E460, MEMORY[0x277D37818], MEMORY[0x277D37820]);
    v14 = sub_2224B4A78();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_2224A5AE8(v14, v16, &v48);

    *(v12 + 4) = v17;
    v18 = sub_2224B4688();
    _os_signpost_emit_with_name_impl(&dword_222484000, v6, v7, v18, "send", "request=%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x223DB7C20](v13, -1, -1);
    MEMORY[0x223DB7C20](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v19 = *(v0 + 256);
  v20 = *(v0 + 240);
  v21 = *(v0 + 232);
  (*(v20 + 16))(*(v0 + 248), v19, v21);
  sub_2224B4718();
  swift_allocObject();
  v22 = sub_2224B4708();
  *(v0 + 288) = v22;
  (*(v20 + 8))(v19, v21);
  sub_2224A76C8(&qword_27D00E458, MEMORY[0x277D37818], MEMORY[0x277D37810]);
  if (sub_2224B41C8() <= 10485760)
  {
    if (qword_28130A578 != -1)
    {
      swift_once();
    }

    v34 = *(v0 + 264);
    v35 = *(v0 + 144);
    v37 = *(v0 + 120);
    v36 = *(v0 + 128);
    v38 = sub_2224B4628();
    *(v0 + 296) = v38;
    *(v0 + 304) = __swift_project_value_buffer(v38, qword_28130A580);
    *(v0 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
    v39 = *(sub_2224B4148() - 8);
    *(v0 + 320) = *(v39 + 72);
    *(v0 + 352) = *(v39 + 80);
    *(swift_allocObject() + 16) = xmmword_2224B5060;
    sub_2224B4118();
    sub_2224B4108();
    *(v0 + 40) = v34;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 16));
    v46(boxed_opaque_existential_1Tm, v37, v34);
    sub_2224B40F8();
    sub_2224A7878(v0 + 16, &qword_27D00E338, &qword_2224B5090);
    sub_2224B4108();
    sub_2224B4138();
    sub_2224B4578();

    v41 = sub_2224A76C8(&qword_28130A568, type metadata accessor for DaemonSessionImplementation, &unk_2224B568C);
    v42 = swift_task_alloc();
    *(v0 + 328) = v42;
    v42[2] = v36;
    v42[3] = v37;
    v42[4] = v35;
    v43 = swift_task_alloc();
    *(v0 + 336) = v43;
    *v43 = v0;
    v43[1] = sub_22249F61C;
    v45 = *(v0 + 152);
    v44 = *(v0 + 160);

    return MEMORY[0x2822008A0](v44, v36, v41, 0x293A5F28646E6573, 0xE800000000000000, sub_2224A7188, v42, v45);
  }

  else
  {
    v24 = *(v0 + 216);
    v23 = *(v0 + 224);
    v26 = *(v0 + 200);
    v25 = *(v0 + 208);
    v27 = *(v0 + 192);
    v47 = *(v0 + 184);
    v28 = *(v0 + 136);
    *v23 = sub_2224B41C8();
    v23[1] = 10485760;
    (*(v24 + 104))(v23, *MEMORY[0x277D37760], v25);
    sub_2224A76C8(&qword_27D00E328, MEMORY[0x277D37778], MEMORY[0x277D37780]);
    v29 = swift_allocError();
    (*(v24 + 16))(v30, v23, v25);
    MEMORY[0x223DB7AE0](v29);
    sub_2224B4208();
    *v28 = sub_2224B41E8();
    *(v28 + 32) = v47;
    *(v28 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790], MEMORY[0x277D37788]);
    v31 = __swift_allocate_boxed_opaque_existential_1Tm((v28 + 8));
    (*(v27 + 32))(v31, v26, v47);
    MEMORY[0x223DB7AD0](v29);
    (*(v24 + 8))(v23, v25);
    *(v28 + 48) = 7;
    sub_222485F68();
    swift_willThrowTypedImpl();
    sub_2224A8390("send", 4, 2, v22);

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_22249F61C()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = *(v2 + 128);
    v4 = sub_2224A7974;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_22249F744;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22249F744()
{
  v1 = v0[43];
  sub_2224A7660(v0[20], v0[21], &qword_27D00E450, &qword_2224B5548);
  sub_2224B4318();
  if (v1)
  {
    sub_2224A7878(v0[21], &qword_27D00E450, &qword_2224B5548);
    v3 = v0[24];
    v2 = v0[25];
    v14 = v0[23];
    v15 = v0[36];
    v4 = v0[17];
    *(swift_allocObject() + 16) = xmmword_2224B5060;
    sub_2224B4118();
    sub_2224B4108();
    swift_getErrorValue();
    v5 = v0[10];
    v6 = v0[11];
    v0[9] = v6;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v0 + 6);
    (*(*(v6 - 8) + 16))(boxed_opaque_existential_1Tm, v5, v6);
    sub_2224B40F8();
    sub_2224A7878((v0 + 6), &qword_27D00E338, &qword_2224B5090);
    sub_2224B4108();
    sub_2224B4138();
    sub_2224B4588();

    MEMORY[0x223DB7AE0](v1);
    sub_2224B4208();
    *v4 = sub_2224B41E8();
    *(v4 + 32) = v14;
    *(v4 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790], MEMORY[0x277D37788]);
    v8 = __swift_allocate_boxed_opaque_existential_1Tm((v4 + 8));
    (*(v3 + 32))(v8, v2, v14);
    *(v4 + 48) = 7;
    sub_222485F68();
    swift_willThrowTypedImpl();
    MEMORY[0x223DB7AD0](v1);
    sub_2224A8390("send", 4, 2, v15);

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[36];
    sub_2224A7878(v0[21], &qword_27D00E450, &qword_2224B5548);
    sub_2224A8390("send", 4, 2, v11);

    v12 = v0[13];

    v13 = v0[1];

    return v13(v12);
  }
}

uint64_t sub_22249FB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a1;
  v5 = sub_2224B41F8();
  v20[3] = *(v5 - 8);
  v20[4] = v5;
  MEMORY[0x28223BE20](v5);
  v20[2] = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2224B4128();
  MEMORY[0x28223BE20](v7 - 8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E570, &qword_2224B5610);
  v8 = *(v21 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v21);
  v11 = v20 - v10;
  v12 = sub_2224B4248();
  MEMORY[0x28223BE20](v12);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20[1] = sub_2224A7C1C();
  sub_2224B43B8();
  v20[0] = a4;
  sub_2224A76C8(&qword_28130A478, MEMORY[0x277D37860], MEMORY[0x277D37858]);
  sub_2224B41D8();
  v15 = v21;
  (*(v8 + 16))(v11, v22, v21);
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v8 + 32))(v18 + v16, v11, v15);
  *(v18 + v17) = v20[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E568, &qword_2224B5608);
  sub_2224A76C8(qword_28130A4B0, MEMORY[0x277D377B8], MEMORY[0x277D377C0]);
  sub_2224A77C8(&qword_28130A498, &qword_27D00E568, &qword_2224B5608, MEMORY[0x277D37840]);
  sub_2224B4768();
  sub_2224A70C4(v14, MEMORY[0x277D377B8]);
}

uint64_t sub_2224A01A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a1;
  v5 = sub_2224B41F8();
  v20[3] = *(v5 - 8);
  v20[4] = v5;
  MEMORY[0x28223BE20](v5);
  v20[2] = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2224B4128();
  MEMORY[0x28223BE20](v7 - 8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E558, &qword_2224B55F8);
  v8 = *(v21 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v21);
  v11 = v20 - v10;
  v12 = sub_2224B4248();
  MEMORY[0x28223BE20](v12);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20[1] = sub_2224A7C1C();
  sub_2224B44C8();
  v20[0] = a4;
  sub_2224A76C8(&qword_28130A468, MEMORY[0x277D37890], MEMORY[0x277D37888]);
  sub_2224B41D8();
  v15 = v21;
  (*(v8 + 16))(v11, v22, v21);
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v8 + 32))(v18 + v16, v11, v15);
  *(v18 + v17) = v20[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E550, &qword_2224B55F0);
  sub_2224A76C8(qword_28130A4B0, MEMORY[0x277D377B8], MEMORY[0x277D377C0]);
  sub_2224A77C8(&qword_28130A490, &qword_27D00E550, &qword_2224B55F0, MEMORY[0x277D37840]);
  sub_2224B4768();
  sub_2224A70C4(v14, MEMORY[0x277D377B8]);
}

uint64_t sub_2224A0820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a1;
  v5 = sub_2224B41F8();
  v20[3] = *(v5 - 8);
  v20[4] = v5;
  MEMORY[0x28223BE20](v5);
  v20[2] = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2224B4128();
  MEMORY[0x28223BE20](v7 - 8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E440, &qword_2224B5538);
  v8 = *(v21 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v21);
  v11 = v20 - v10;
  v12 = sub_2224B4248();
  MEMORY[0x28223BE20](v12);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20[1] = sub_2224A7C1C();
  sub_2224B42A8();
  v20[0] = a4;
  sub_2224A76C8(&qword_28130A338, MEMORY[0x277D37800], MEMORY[0x277D377F8]);
  sub_2224B41D8();
  v15 = v21;
  (*(v8 + 16))(v11, v22, v21);
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v8 + 32))(v18 + v16, v11, v15);
  *(v18 + v17) = v20[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E430, &qword_2224B5528);
  sub_2224A76C8(qword_28130A4B0, MEMORY[0x277D377B8], MEMORY[0x277D377C0]);
  sub_2224A77C8(&qword_28130A330, &qword_27D00E430, &qword_2224B5528, MEMORY[0x277D37840]);
  sub_2224B4768();
  sub_2224A70C4(v14, MEMORY[0x277D377B8]);
}

uint64_t sub_2224A0EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a1;
  v5 = sub_2224B41F8();
  v20[3] = *(v5 - 8);
  v20[4] = v5;
  MEMORY[0x28223BE20](v5);
  v20[2] = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2224B4128();
  MEMORY[0x28223BE20](v7 - 8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E530, &qword_2224B55B0);
  v8 = *(v21 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v21);
  v11 = v20 - v10;
  v12 = sub_2224B4248();
  MEMORY[0x28223BE20](v12);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20[1] = sub_2224A7C1C();
  sub_2224B4228();
  v20[0] = a4;
  sub_2224A76C8(&qword_27D00E520, MEMORY[0x277D377A8], MEMORY[0x277D377A0]);
  sub_2224B41D8();
  v15 = v21;
  (*(v8 + 16))(v11, v22, v21);
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v8 + 32))(v18 + v16, v11, v15);
  *(v18 + v17) = v20[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E518, &qword_2224B55A8);
  sub_2224A76C8(qword_28130A4B0, MEMORY[0x277D377B8], MEMORY[0x277D377C0]);
  sub_2224A77C8(&qword_27D00E538, &qword_27D00E518, &qword_2224B55A8, MEMORY[0x277D37840]);
  sub_2224B4768();
  sub_2224A70C4(v14, MEMORY[0x277D377B8]);
}

uint64_t sub_2224A1520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a1;
  v5 = sub_2224B41F8();
  v20[3] = *(v5 - 8);
  v20[4] = v5;
  MEMORY[0x28223BE20](v5);
  v20[2] = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2224B4128();
  MEMORY[0x28223BE20](v7 - 8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E500, &qword_2224B5598);
  v8 = *(v21 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v21);
  v11 = v20 - v10;
  v12 = sub_2224B4248();
  MEMORY[0x28223BE20](v12);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20[1] = sub_2224A7C1C();
  sub_2224B4498();
  v20[0] = a4;
  sub_2224A76C8(&qword_27D00E4F0, MEMORY[0x277D37878], MEMORY[0x277D37870]);
  sub_2224B41D8();
  v15 = v21;
  (*(v8 + 16))(v11, v22, v21);
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v8 + 32))(v18 + v16, v11, v15);
  *(v18 + v17) = v20[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E4E8, &qword_2224B5590);
  sub_2224A76C8(qword_28130A4B0, MEMORY[0x277D377B8], MEMORY[0x277D377C0]);
  sub_2224A77C8(&qword_27D00E508, &qword_27D00E4E8, &qword_2224B5590, MEMORY[0x277D37840]);
  sub_2224B4768();
  sub_2224A70C4(v14, MEMORY[0x277D377B8]);
}

uint64_t sub_2224A1BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a1;
  v5 = sub_2224B41F8();
  v20[3] = *(v5 - 8);
  v20[4] = v5;
  MEMORY[0x28223BE20](v5);
  v20[2] = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2224B4128();
  MEMORY[0x28223BE20](v7 - 8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E4D8, &qword_2224B5580);
  v8 = *(v21 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v21);
  v11 = v20 - v10;
  v12 = sub_2224B4248();
  MEMORY[0x28223BE20](v12);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20[1] = sub_2224A7C1C();
  sub_2224B4278();
  v20[0] = a4;
  sub_2224A76C8(&qword_28130A4A0, MEMORY[0x277D377E8], MEMORY[0x277D377E0]);
  sub_2224B41D8();
  v15 = v21;
  (*(v8 + 16))(v11, v22, v21);
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v8 + 32))(v18 + v16, v11, v15);
  *(v18 + v17) = v20[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E4D0, &qword_2224B5578);
  sub_2224A76C8(qword_28130A4B0, MEMORY[0x277D377B8], MEMORY[0x277D377C0]);
  sub_2224A77C8(&qword_28130A488, &qword_27D00E4D0, &qword_2224B5578, MEMORY[0x277D37840]);
  sub_2224B4768();
  sub_2224A70C4(v14, MEMORY[0x277D377B8]);
}

uint64_t sub_2224A2220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a1;
  v5 = sub_2224B41F8();
  v20[3] = *(v5 - 8);
  v20[4] = v5;
  MEMORY[0x28223BE20](v5);
  v20[2] = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2224B4128();
  MEMORY[0x28223BE20](v7 - 8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E498, &qword_2224B5568);
  v8 = *(v21 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v21);
  v11 = v20 - v10;
  v12 = sub_2224B4248();
  MEMORY[0x28223BE20](v12);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20[1] = sub_2224A7C1C();
  sub_2224B42F8();
  v20[0] = a4;
  sub_2224A76C8(&qword_27D00E4C0, MEMORY[0x277D37830], MEMORY[0x277D37828]);
  sub_2224B41D8();
  v15 = v21;
  (*(v8 + 16))(v11, v22, v21);
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v8 + 32))(v18 + v16, v11, v15);
  *(v18 + v17) = v20[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E480, &qword_2224B5560);
  sub_2224A76C8(qword_28130A4B0, MEMORY[0x277D377B8], MEMORY[0x277D377C0]);
  sub_2224A77C8(&qword_27D00E4A0, &qword_27D00E480, &qword_2224B5560, MEMORY[0x277D37840]);
  sub_2224B4768();
  sub_2224A70C4(v14, MEMORY[0x277D377B8]);
}

uint64_t sub_2224A28A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a1;
  v5 = sub_2224B41F8();
  v20[3] = *(v5 - 8);
  v20[4] = v5;
  MEMORY[0x28223BE20](v5);
  v20[2] = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2224B4128();
  MEMORY[0x28223BE20](v7 - 8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E498, &qword_2224B5568);
  v8 = *(v21 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v21);
  v11 = v20 - v10;
  v12 = sub_2224B4248();
  MEMORY[0x28223BE20](v12);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20[1] = sub_2224A7C1C();
  sub_2224B4258();
  v20[0] = a4;
  sub_2224A76C8(&qword_27D00E4B0, MEMORY[0x277D377D0], MEMORY[0x277D377C8]);
  sub_2224B41D8();
  v15 = v21;
  (*(v8 + 16))(v11, v22, v21);
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v8 + 32))(v18 + v16, v11, v15);
  *(v18 + v17) = v20[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E480, &qword_2224B5560);
  sub_2224A76C8(qword_28130A4B0, MEMORY[0x277D377B8], MEMORY[0x277D377C0]);
  sub_2224A77C8(&qword_27D00E4A0, &qword_27D00E480, &qword_2224B5560, MEMORY[0x277D37840]);
  sub_2224B4768();
  sub_2224A70C4(v14, MEMORY[0x277D377B8]);
}

uint64_t sub_2224A2F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a1;
  v5 = sub_2224B41F8();
  v20[3] = *(v5 - 8);
  v20[4] = v5;
  MEMORY[0x28223BE20](v5);
  v20[2] = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2224B4128();
  MEMORY[0x28223BE20](v7 - 8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E498, &qword_2224B5568);
  v8 = *(v21 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v21);
  v11 = v20 - v10;
  v12 = sub_2224B4248();
  MEMORY[0x28223BE20](v12);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20[1] = sub_2224A7C1C();
  sub_2224B44F8();
  v20[0] = a4;
  sub_2224A76C8(&qword_27D00E488, MEMORY[0x277D378A8], MEMORY[0x277D378A0]);
  sub_2224B41D8();
  v15 = v21;
  (*(v8 + 16))(v11, v22, v21);
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v8 + 32))(v18 + v16, v11, v15);
  *(v18 + v17) = v20[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E480, &qword_2224B5560);
  sub_2224A76C8(qword_28130A4B0, MEMORY[0x277D377B8], MEMORY[0x277D377C0]);
  sub_2224A77C8(&qword_27D00E4A0, &qword_27D00E480, &qword_2224B5560, MEMORY[0x277D37840]);
  sub_2224B4768();
  sub_2224A70C4(v14, MEMORY[0x277D377B8]);
}

uint64_t sub_2224A35A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a1;
  v5 = sub_2224B41F8();
  v20[3] = *(v5 - 8);
  v20[4] = v5;
  MEMORY[0x28223BE20](v5);
  v20[2] = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2224B4128();
  MEMORY[0x28223BE20](v7 - 8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E468, &qword_2224B5550);
  v8 = *(v21 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v21);
  v11 = v20 - v10;
  v12 = sub_2224B4248();
  MEMORY[0x28223BE20](v12);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20[1] = sub_2224A7C1C();
  sub_2224B42E8();
  v20[0] = a4;
  sub_2224A76C8(&qword_27D00E458, MEMORY[0x277D37818], MEMORY[0x277D37810]);
  sub_2224B41D8();
  v15 = v21;
  (*(v8 + 16))(v11, v22, v21);
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v8 + 32))(v18 + v16, v11, v15);
  *(v18 + v17) = v20[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E450, &qword_2224B5548);
  sub_2224A76C8(qword_28130A4B0, MEMORY[0x277D377B8], MEMORY[0x277D377C0]);
  sub_2224A77C8(&qword_27D00E470, &qword_27D00E450, &qword_2224B5548, MEMORY[0x277D37840]);
  sub_2224B4768();
  sub_2224A70C4(v14, MEMORY[0x277D377B8]);
}

uint64_t sub_2224A3C20(uint64_t a1)
{
  v2 = sub_2224B4128();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E568, &qword_2224B5608);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E578, &qword_2224B5618);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = (&v18 - v10);
  sub_2224A7810(a1, &v18 - v10, &qword_27D00E578, &qword_2224B5618);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20[0] = *v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E570, &qword_2224B5610);
    sub_2224B48A8();
  }

  else
  {
    sub_2224A7660(v11, v5, &qword_27D00E568, &qword_2224B5608);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E570, &qword_2224B5610);
    sub_2224B48B8();
  }

  sub_2224A7810(a1, v9, &qword_27D00E578, &qword_2224B5618);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_2224A7878(v9, &qword_27D00E578, &qword_2224B5618);
  }

  v12 = *v9;
  if (qword_28130A578 != -1)
  {
    swift_once();
  }

  v13 = sub_2224B4628();
  __swift_project_value_buffer(v13, qword_28130A580);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
  sub_2224B4148();
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B4118();
  sub_2224B4108();
  swift_getErrorValue();
  v14 = v18;
  v15 = v19;
  v20[3] = v19;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v20);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_1Tm, v14, v15);
  sub_2224B40F8();
  sub_2224A7878(v20, &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4588();

  return MEMORY[0x223DB7AD0](v12);
}

uint64_t sub_2224A4018(uint64_t a1)
{
  v2 = sub_2224B4128();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E550, &qword_2224B55F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E560, &qword_2224B5600);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = (&v18 - v10);
  sub_2224A7810(a1, &v18 - v10, &qword_27D00E560, &qword_2224B5600);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20[0] = *v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E558, &qword_2224B55F8);
    sub_2224B48A8();
  }

  else
  {
    sub_2224A7660(v11, v5, &qword_27D00E550, &qword_2224B55F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E558, &qword_2224B55F8);
    sub_2224B48B8();
  }

  sub_2224A7810(a1, v9, &qword_27D00E560, &qword_2224B5600);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_2224A7878(v9, &qword_27D00E560, &qword_2224B5600);
  }

  v12 = *v9;
  if (qword_28130A578 != -1)
  {
    swift_once();
  }

  v13 = sub_2224B4628();
  __swift_project_value_buffer(v13, qword_28130A580);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
  sub_2224B4148();
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B4118();
  sub_2224B4108();
  swift_getErrorValue();
  v14 = v18;
  v15 = v19;
  v20[3] = v19;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v20);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_1Tm, v14, v15);
  sub_2224B40F8();
  sub_2224A7878(v20, &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4588();

  return MEMORY[0x223DB7AD0](v12);
}

uint64_t sub_2224A4410(uint64_t a1)
{
  v2 = sub_2224B4128();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E430, &qword_2224B5528);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E448, &qword_2224B5540);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = (&v18 - v10);
  sub_2224A7810(a1, &v18 - v10, &qword_27D00E448, &qword_2224B5540);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20[0] = *v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E440, &qword_2224B5538);
    sub_2224B48A8();
  }

  else
  {
    sub_2224A7660(v11, v5, &qword_27D00E430, &qword_2224B5528);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E440, &qword_2224B5538);
    sub_2224B48B8();
  }

  sub_2224A7810(a1, v9, &qword_27D00E448, &qword_2224B5540);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_2224A7878(v9, &qword_27D00E448, &qword_2224B5540);
  }

  v12 = *v9;
  if (qword_28130A578 != -1)
  {
    swift_once();
  }

  v13 = sub_2224B4628();
  __swift_project_value_buffer(v13, qword_28130A580);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
  sub_2224B4148();
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B4118();
  sub_2224B4108();
  swift_getErrorValue();
  v14 = v18;
  v15 = v19;
  v20[3] = v19;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v20);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_1Tm, v14, v15);
  sub_2224B40F8();
  sub_2224A7878(v20, &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4588();

  return MEMORY[0x223DB7AD0](v12);
}

uint64_t sub_2224A4808(uint64_t a1)
{
  v2 = sub_2224B4128();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E518, &qword_2224B55A8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E540, &qword_2224B55B8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = (&v18 - v10);
  sub_2224A7810(a1, &v18 - v10, &qword_27D00E540, &qword_2224B55B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20[0] = *v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E530, &qword_2224B55B0);
    sub_2224B48A8();
  }

  else
  {
    sub_2224A7660(v11, v5, &qword_27D00E518, &qword_2224B55A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E530, &qword_2224B55B0);
    sub_2224B48B8();
  }

  sub_2224A7810(a1, v9, &qword_27D00E540, &qword_2224B55B8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_2224A7878(v9, &qword_27D00E540, &qword_2224B55B8);
  }

  v12 = *v9;
  if (qword_28130A578 != -1)
  {
    swift_once();
  }

  v13 = sub_2224B4628();
  __swift_project_value_buffer(v13, qword_28130A580);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
  sub_2224B4148();
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B4118();
  sub_2224B4108();
  swift_getErrorValue();
  v14 = v18;
  v15 = v19;
  v20[3] = v19;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v20);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_1Tm, v14, v15);
  sub_2224B40F8();
  sub_2224A7878(v20, &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4588();

  return MEMORY[0x223DB7AD0](v12);
}

uint64_t sub_2224A4C00(uint64_t a1)
{
  v2 = sub_2224B4128();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E4E8, &qword_2224B5590);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E510, &qword_2224B55A0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = (&v18 - v10);
  sub_2224A7810(a1, &v18 - v10, &qword_27D00E510, &qword_2224B55A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20[0] = *v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E500, &qword_2224B5598);
    sub_2224B48A8();
  }

  else
  {
    sub_2224A7660(v11, v5, &qword_27D00E4E8, &qword_2224B5590);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E500, &qword_2224B5598);
    sub_2224B48B8();
  }

  sub_2224A7810(a1, v9, &qword_27D00E510, &qword_2224B55A0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_2224A7878(v9, &qword_27D00E510, &qword_2224B55A0);
  }

  v12 = *v9;
  if (qword_28130A578 != -1)
  {
    swift_once();
  }

  v13 = sub_2224B4628();
  __swift_project_value_buffer(v13, qword_28130A580);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
  sub_2224B4148();
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B4118();
  sub_2224B4108();
  swift_getErrorValue();
  v14 = v18;
  v15 = v19;
  v20[3] = v19;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v20);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_1Tm, v14, v15);
  sub_2224B40F8();
  sub_2224A7878(v20, &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4588();

  return MEMORY[0x223DB7AD0](v12);
}

uint64_t sub_2224A4FF8(uint64_t a1)
{
  v2 = sub_2224B4128();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E4D0, &qword_2224B5578);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E4E0, &qword_2224B5588);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = (&v18 - v10);
  sub_2224A7810(a1, &v18 - v10, &qword_27D00E4E0, &qword_2224B5588);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20[0] = *v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E4D8, &qword_2224B5580);
    sub_2224B48A8();
  }

  else
  {
    sub_2224A7660(v11, v5, &qword_27D00E4D0, &qword_2224B5578);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E4D8, &qword_2224B5580);
    sub_2224B48B8();
  }

  sub_2224A7810(a1, v9, &qword_27D00E4E0, &qword_2224B5588);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_2224A7878(v9, &qword_27D00E4E0, &qword_2224B5588);
  }

  v12 = *v9;
  if (qword_28130A578 != -1)
  {
    swift_once();
  }

  v13 = sub_2224B4628();
  __swift_project_value_buffer(v13, qword_28130A580);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
  sub_2224B4148();
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B4118();
  sub_2224B4108();
  swift_getErrorValue();
  v14 = v18;
  v15 = v19;
  v20[3] = v19;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v20);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_1Tm, v14, v15);
  sub_2224B40F8();
  sub_2224A7878(v20, &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4588();

  return MEMORY[0x223DB7AD0](v12);
}

uint64_t sub_2224A53F0(uint64_t a1)
{
  v2 = sub_2224B4128();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E450, &qword_2224B5548);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E478, &qword_2224B5558);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = (&v18 - v10);
  sub_2224A7810(a1, &v18 - v10, &qword_27D00E478, &qword_2224B5558);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20[0] = *v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E468, &qword_2224B5550);
    sub_2224B48A8();
  }

  else
  {
    sub_2224A7660(v11, v5, &qword_27D00E450, &qword_2224B5548);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E468, &qword_2224B5550);
    sub_2224B48B8();
  }

  sub_2224A7810(a1, v9, &qword_27D00E478, &qword_2224B5558);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_2224A7878(v9, &qword_27D00E478, &qword_2224B5558);
  }

  v12 = *v9;
  if (qword_28130A578 != -1)
  {
    swift_once();
  }

  v13 = sub_2224B4628();
  __swift_project_value_buffer(v13, qword_28130A580);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
  sub_2224B4148();
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B4118();
  sub_2224B4108();
  swift_getErrorValue();
  v14 = v18;
  v15 = v19;
  v20[3] = v19;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v20);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_1Tm, v14, v15);
  sub_2224B40F8();
  sub_2224A7878(v20, &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4588();

  return MEMORY[0x223DB7AD0](v12);
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

uint64_t sub_2224A5830(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Connection.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2224A58F8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2224A59F0;

  return v6(a1);
}

uint64_t sub_2224A59F0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_2224A5AE8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2224A5BB4(v11, 0, 0, 1, a1, a2);
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
    sub_2224A703C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_2224A5BB4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2224A5CC0(a5, a6);
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
    result = sub_2224B49D8();
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

void *sub_2224A5CC0(uint64_t a1, unint64_t a2)
{
  v3 = sub_2224A5D0C(a1, a2);
  sub_2224A5E3C(&unk_2835ABAF8);
  return v3;
}

void *sub_2224A5D0C(uint64_t a1, unint64_t a2)
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

  v6 = sub_2224A5F28(v5, 0);
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

  result = sub_2224B49D8();
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
        v10 = sub_2224B4858();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2224A5F28(v10, 0);
        result = sub_2224B49B8();
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

uint64_t sub_2224A5E3C(uint64_t result)
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

  result = sub_2224A5F9C(result, v11, 1, v3);
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

void *sub_2224A5F28(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E438, &qword_2224B5530);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2224A5F9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E438, &qword_2224B5530);
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

uint64_t sub_2224A6090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a4;
  v33 = a5;
  v34 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E548, &qword_2224B55C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29 - v8;
  v10 = type metadata accessor for Connection.State(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2224B4398();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v17 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v29 - v18;
  v36[3] = type metadata accessor for DaemonSessionImplementation();
  v36[4] = &off_2835ABEC8;
  v36[0] = a2;
  sub_2224A5830(a1, v12);
  if ((*(v14 + 48))(v12, 2, v13))
  {

    sub_2224A70C4(v12, type metadata accessor for Connection.State);
  }

  else
  {
    v30 = *(v14 + 32);
    v30(v19, v12, v13);
    v20 = sub_2224B48D8();
    v21 = *(*(v20 - 8) + 56);
    v31 = v9;
    v21(v9, 1, 1, v20);
    (*(v14 + 16))(v17, v19, v13);
    sub_2224A7124(v36, v35);
    v22 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v23 = (v15 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = (v23 + 47) & 0xFFFFFFFFFFFFFFF8;
    v29 = a2;
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    v30((v25 + v22), v17, v13);
    sub_222485948(v35, v25 + v23);
    v26 = (v25 + v24);
    v27 = v32;
    *v26 = v34;
    v26[1] = v27;
    *(v25 + ((v24 + 23) & 0xFFFFFFFFFFFFFFF8)) = v33;

    sub_222488FD8(0, 0, v31, &unk_2224B55D0, v25);

    (*(v14 + 8))(v19, v13);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v36);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2224A6444(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Connection.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2224A64B0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[3] = a4;
  v13[4] = a5;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v13);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a4);
  v9 = *a2;
  LOBYTE(a2) = *(a2 + 8);
  sub_2224A7124(v13, v12);
  type metadata accessor for Connection.PaginatedSelectIterator();
  v10 = swift_allocObject();
  swift_defaultActor_initialize();
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  swift_weakInit();
  *(v10 + 176) = 0;
  *(v10 + 184) = 0;
  *(v10 + 192) = 0;
  *(v10 + 200) = 1;
  sub_222485948(v12, v10 + 112);
  *(v10 + 152) = v9;
  *(v10 + 160) = a2;
  swift_weakAssign();
  return v10;
}

unint64_t sub_2224A65A4()
{
  result = qword_27D00E340;
  if (!qword_27D00E340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D00E340);
  }

  return result;
}

uint64_t sub_2224A65F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v10[0] = a1;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = MEMORY[0x277D37928];
  v10[1] = a2;
  sub_2224A7124(v10, v9);
  type metadata accessor for Connection.PaginatedSelectIterator();
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  swift_weakInit();
  *(v7 + 176) = 0;
  *(v7 + 184) = 0;
  *(v7 + 192) = 0;
  *(v7 + 200) = 1;
  sub_222485948(v9, v7 + 112);
  *(v7 + 152) = a3;
  *(v7 + 160) = a4 & 1;
  swift_weakAssign();
  return v7;
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

uint64_t sub_2224A6760(const char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v20 = a3;
  v5 = sub_2224B46E8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2224B46A8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28130A6D8 != -1)
  {
    swift_once();
  }

  v13 = sub_2224B46D8();
  __swift_project_value_buffer(v13, qword_28130A6E0);
  v14 = sub_2224B46B8();
  sub_2224B46F8();
  v19 = sub_2224B4928();
  result = sub_2224B4948();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v20 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      sub_2224B4728();

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
      v18 = sub_2224B4688();
      _os_signpost_emit_with_name_impl(&dword_222484000, v14, v19, v18, a1, v16, v17, 2u);
      MEMORY[0x223DB7C20](v17, -1, -1);
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

uint64_t sub_2224A6A70(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2224A6AA8(uint64_t a1)
{
  result = type metadata accessor for Connection.State(319);
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

uint64_t sub_2224A6BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2224A6C2C(uint64_t *a1, int a2)
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

uint64_t sub_2224A6C74(uint64_t result, int a2, int a3)
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Connection.PaginationOptions.PageSize(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Connection.PaginationOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

uint64_t storeEnumTagSinglePayload for Connection.PaginationOptions.PageSize(uint64_t result, int a2, int a3)
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

uint64_t sub_2224A6D6C(uint64_t a1)
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

uint64_t sub_2224A6D8C(uint64_t result, int a2)
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

uint64_t sub_2224A6E18(uint64_t a1)
{
  v1 = sub_2224B4398();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

unint64_t sub_2224A6EB8(uint64_t a1)
{
  result = sub_2224A6EE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2224A6EE0()
{
  result = qword_27D00E420;
  if (!qword_27D00E420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D00E420);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
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

uint64_t sub_2224A703C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2224A70C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2224A7124(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2224A71BC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, unint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v4 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a4(a1, v4 + v7, v8);
}

uint64_t sub_2224A7358(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2224B4398() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = (v1 + ((v7 + 47) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_222495F0C;

  return sub_222488880(a1, v8, v9, v1 + v6, v1 + v7, v11, v12);
}

uint64_t sub_2224A74B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2224A797C;

  return sub_2224A58F8(a1, v4);
}

uint64_t sub_2224A7568(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222495F0C;

  return sub_2224A58F8(a1, v4);
}

uint64_t sub_2224A7660(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2224A76C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v7 + 8, v5 | 7);
}

uint64_t sub_2224A77C8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_2224A7810(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2224A7878(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
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

uint64_t sub_2224A7984()
{
  v0 = sub_2224B4628();
  __swift_allocate_value_buffer(v0, qword_28130A580);
  v1 = __swift_project_value_buffer(v0, qword_28130A580);
  if (qword_28130A458 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_28130A730);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2224A7A4C()
{
  v0 = sub_2224B4608();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2224B46D8();
  __swift_allocate_value_buffer(v4, qword_28130A5A0);
  __swift_project_value_buffer(v4, qword_28130A5A0);
  if (qword_28130A450 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_28130A718);
  (*(v1 + 16))(v3, v5, v0);
  sub_2224B45F8();
  (*(v1 + 8))(v3, v0);
  return sub_2224B46C8();
}

uint64_t sub_2224A7BCC(uint64_t a1)
{
  v1 = type metadata accessor for DaemonSessionImplementation();
  swift_allocObject();
  result = sub_2224A8114();
  qword_28130A760 = v1;
  unk_28130A768 = &off_2835ABEC8;
  qword_28130A748 = result;
  return result;
}

uint64_t sub_2224A7C1C()
{
  v2 = v0;
  v3 = sub_2224B4758();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_2224B4128();
  MEMORY[0x28223BE20](v4 - 8);
  if (*(v0 + 112))
  {
    v5 = *(v0 + 112);
LABEL_3:

    return v5;
  }

  if (qword_28130A578 != -1)
  {
    swift_once();
  }

  v6 = sub_2224B4628();
  __swift_project_value_buffer(v6, qword_28130A580);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
  sub_2224B4148();
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B4118();
  sub_2224B4108();
  v7 = sub_2224B4518();
  v12[3] = MEMORY[0x277D837D0];
  v12[0] = v7;
  v12[1] = v8;
  sub_2224B40F8();
  sub_2224A866C(v12);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4568();

  v5 = sub_2224B4778();
  sub_2224B4518();
  v9 = *(v2 + 120);

  sub_2224B4748();
  v10 = sub_2224B4738();
  if (!v1)
  {
    v5 = v10;
    *(v2 + 112) = v10;

    goto LABEL_3;
  }

  return v5;
}

uint64_t sub_2224A7EEC(uint64_t a1)
{
  v3 = sub_2224B4128();
  MEMORY[0x28223BE20](v3 - 8);
  if (qword_28130A578 != -1)
  {
    swift_once();
  }

  v4 = sub_2224B4628();
  __swift_project_value_buffer(v4, qword_28130A580);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
  sub_2224B4148();
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B4118();
  sub_2224B4108();
  v5 = sub_2224B4788();
  v8[3] = v5;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v8);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1Tm, a1, v5);
  sub_2224B40F8();
  sub_2224A866C(v8);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4588();

  *(v1 + 112) = 0;
}

uint64_t sub_2224A8114()
{
  v1 = sub_2224B48F8();
  MEMORY[0x28223BE20](v1);
  v2 = sub_2224B47A8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_2224B4908();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  sub_2224A86D8();
  (*(v4 + 104))(v6, *MEMORY[0x277D85268], v3);
  sub_2224B4798();
  v8[1] = MEMORY[0x277D84F90];
  sub_2224A8724();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E580, &qword_2224B56B8);
  sub_2224A877C();
  sub_2224B4968();
  *(v0 + 120) = sub_2224B4918();
  return v0;
}

uint64_t sub_2224A832C()
{

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_2224A8390(const char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v20 = a3;
  v5 = sub_2224B46E8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2224B46A8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28130A598 != -1)
  {
    swift_once();
  }

  v13 = sub_2224B46D8();
  __swift_project_value_buffer(v13, qword_28130A5A0);
  v14 = sub_2224B46B8();
  sub_2224B46F8();
  v19 = sub_2224B4928();
  result = sub_2224B4948();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v20 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      sub_2224B4728();

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
      v18 = sub_2224B4688();
      _os_signpost_emit_with_name_impl(&dword_222484000, v14, v19, v18, a1, v16, v17, 2u);
      MEMORY[0x223DB7C20](v17, -1, -1);
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

uint64_t sub_2224A866C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E338, &qword_2224B5090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2224A86D8()
{
  result = qword_28130A418;
  if (!qword_28130A418)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28130A418);
  }

  return result;
}

unint64_t sub_2224A8724()
{
  result = qword_28130A420;
  if (!qword_28130A420)
  {
    sub_2224B48F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28130A420);
  }

  return result;
}

unint64_t sub_2224A877C()
{
  result = qword_28130A428;
  if (!qword_28130A428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D00E580, &qword_2224B56B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28130A428);
  }

  return result;
}

uint64_t static OnDeviceStorageError.clientError(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2224B41F8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2224B4198();
  sub_2224A89AC(&qword_27D00E328, MEMORY[0x277D37778], MEMORY[0x277D37780]);
  v9 = swift_allocError();
  (*(*(v8 - 8) + 16))(v10, a1, v8);
  MEMORY[0x223DB7AE0](v9);
  sub_2224B4208();
  *a2 = sub_2224B41E8();
  *(a2 + 32) = v4;
  *(a2 + 40) = sub_2224A89AC(qword_28130A348, MEMORY[0x277D37790], MEMORY[0x277D37788]);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((a2 + 8));
  (*(v5 + 32))(boxed_opaque_existential_1Tm, v7, v4);
  result = MEMORY[0x223DB7AD0](v9);
  *(a2 + 48) = 7;
  return result;
}

uint64_t sub_2224A89AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s15OnDeviceStorage04withabC5ErroryxxyKXEAA0abcE0OYKlF(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2224B41F8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = a1(v9);
  if (v4)
  {
    MEMORY[0x223DB7AE0](v4);
    sub_2224B4208();
    *a4 = sub_2224B41E8();
    *(a4 + 32) = v7;
    *(a4 + 40) = sub_2224A89AC(qword_28130A348, MEMORY[0x277D37790], MEMORY[0x277D37788]);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((a4 + 8));
    (*(v8 + 32))(boxed_opaque_existential_1Tm, v11, v7);
    *(a4 + 48) = 7;
    sub_222485F68();
    swift_willThrowTypedImpl();
    return MEMORY[0x223DB7AD0](v4);
  }

  return result;
}

uint64_t _s15OnDeviceStorage04withabC5ErroryxxyYaYbKXEYaAA0abcE0OYKlF(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a5;
  v8 = sub_2224B41F8();
  v5[3] = v8;
  v5[4] = *(v8 - 8);
  v5[5] = swift_task_alloc();
  v11 = (a2 + *a2);
  v9 = swift_task_alloc();
  v5[6] = v9;
  *v9 = v5;
  v9[1] = sub_2224A8CD8;

  return v11(a1);
}

uint64_t sub_2224A8CD8()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2224A8E14, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2224A8E14()
{
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  MEMORY[0x223DB7AE0](v1);
  sub_2224B4208();
  *v5 = sub_2224B41E8();
  *(v5 + 32) = v4;
  *(v5 + 40) = sub_2224A89AC(qword_28130A348, MEMORY[0x277D37790], MEMORY[0x277D37788]);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v5 + 8));
  (*(v3 + 32))(boxed_opaque_existential_1Tm, v2, v4);
  *(v5 + 48) = 7;
  sub_222485F68();
  swift_willThrowTypedImpl();
  MEMORY[0x223DB7AD0](v1);

  v7 = v0[1];

  return v7();
}

uint64_t OnDeviceStorageError.errorCode.getter()
{
  v1 = v0;
  v2 = sub_2224B4648();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2224A6F34(v1, &v9);
  if (v11 == 7)
  {
    v6 = v9;
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  else
  {
    (*(v3 + 104))(v5, *MEMORY[0x277D37910], v2);
    v6 = sub_2224B4638();
    (*(v3 + 8))(v5, v2);
    sub_2224A6F90(&v9);
  }

  return v6;
}

unint64_t OnDeviceStorageError.errorUserInfo.getter()
{
  v1 = v0;
  v2 = sub_2224A9E04(MEMORY[0x277D84F90]);
  sub_2224A6F34(v0, &v36);
  v3 = MEMORY[0x277D837D0];
  if (v38 != 7)
  {
    v6 = 0x80000002224B60B0;
    sub_2224A6F90(&v36);
    v4 = 0xD00000000000007ALL;
    goto LABEL_5;
  }

  sub_222485948((&v36 + 8), v33);
  __swift_project_boxed_opaque_existential_1(v33, v34);
  v4 = sub_2224B4088();
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  if (v6)
  {
LABEL_5:
    v7 = sub_2224B47C8();
    v9 = v8;
    v37 = v3;
    *&v36 = v4;
    *(&v36 + 1) = v6;
    sub_2224A9F14(&v36, v33);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v2;
    sub_2224A9C48(v33, v7, v9, isUniquelyReferenced_nonNull_native);

    v2 = v35;
  }

  sub_2224A6F34(v1, &v36);
  if (v38 == 7)
  {
    sub_222485948((&v36 + 8), v33);
    __swift_project_boxed_opaque_existential_1(v33, v34);
    v11 = sub_2224B4078();
    v13 = v12;
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    if (v13)
    {
      v14 = sub_2224B47C8();
      v16 = v15;
      v37 = v3;
      *&v36 = v11;
      *(&v36 + 1) = v13;
      sub_2224A9F14(&v36, v33);
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v35 = v2;
      sub_2224A9C48(v33, v14, v16, v17);

      v2 = v35;
    }
  }

  else
  {
    sub_2224A6F90(&v36);
  }

  sub_2224A6F34(v1, &v36);
  if (v38 == 7)
  {
    sub_222485948((&v36 + 8), v33);
    __swift_project_boxed_opaque_existential_1(v33, v34);
    v18 = sub_2224B4098();
    v20 = v19;
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    if (v20)
    {
      v21 = sub_2224B47C8();
      v23 = v22;
      v37 = v3;
      *&v36 = v18;
      *(&v36 + 1) = v20;
      sub_2224A9F14(&v36, v33);
      v24 = swift_isUniquelyReferenced_nonNull_native();
      v35 = v2;
      sub_2224A9C48(v33, v21, v23, v24);

      v2 = v35;
    }
  }

  else
  {
    sub_2224A6F90(&v36);
  }

  sub_2224A6F34(v1, &v36);
  if (v38 == 7)
  {
    sub_222485948((&v36 + 8), v33);
    __swift_project_boxed_opaque_existential_1(v33, v34);
    v25 = sub_2224B4068();
    v27 = v26;
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    if (v27)
    {
      v28 = sub_2224B47C8();
      v30 = v29;
      v37 = v3;
      *&v36 = v25;
      *(&v36 + 1) = v27;
      sub_2224A9F14(&v36, v33);
      v31 = swift_isUniquelyReferenced_nonNull_native();
      v35 = v2;
      sub_2224A9C48(v33, v28, v30, v31);

      return v35;
    }
  }

  else
  {
    sub_2224A6F90(&v36);
  }

  return v2;
}

uint64_t OnDeviceStorageError.errorDescription.getter()
{
  sub_2224A6F34(v0, v4);
  if (v6 == 7)
  {
    sub_222485948(&v5, v3);
    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    v1 = sub_2224B4088();
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    return v1;
  }

  else
  {
    sub_2224A6F90(v4);
    return 0xD00000000000007ALL;
  }
}

uint64_t sub_2224A94E4(uint64_t (*a1)(uint64_t, uint64_t))
{
  sub_2224A6F34(v1, v10);
  if (v12 == 7)
  {
    sub_222485948(&v11, v7);
    v3 = v8;
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v5 = a1(v3, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    return v5;
  }

  else
  {
    sub_2224A6F90(v10);
    return 0;
  }
}

uint64_t OnDeviceStorageError.description.getter()
{
  sub_2224A6F34(v0, v7);
  if (v9 == 7)
  {
    sub_222485948(&v8, v6);
    v1 = __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    MEMORY[0x28223BE20](v1);
    (*(v3 + 16))(v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
    v4 = sub_2224B4808();
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  else
  {
    sub_2224A6F34(v0, v6);
    v4 = sub_2224A96E4(v6);
    sub_2224A6F90(v7);
  }

  return v4;
}

uint64_t sub_2224A96E4(uint64_t a1)
{
  sub_2224A6F34(a1, v8);
  if (v10 == 7)
  {
    sub_222485948(&v9, v7);
    v2 = __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    MEMORY[0x28223BE20](v2);
    (*(v4 + 16))(v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v5 = sub_2224B4808();
    sub_2224A6F90(a1);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  else
  {
    sub_2224A6F34(a1, v7);
    v5 = sub_2224A96E4(v7);
    sub_2224A6F90(a1);
    sub_2224A6F90(v8);
  }

  return v5;
}

uint64_t OnDeviceStorageError.debugDescription.getter()
{
  sub_2224A6F34(v0, v7);
  if (v9 == 7)
  {
    sub_222485948(&v8, v6);
    v1 = __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    MEMORY[0x28223BE20](v1);
    (*(v3 + 16))(v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
    v4 = sub_2224B4818();
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  else
  {
    sub_2224A6F34(v0, v6);
    v4 = sub_2224B4818();
    sub_2224A6F90(v7);
  }

  return v4;
}

uint64_t sub_2224A99B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_2224A6F34(v3, v12);
  if (v14 == 7)
  {
    sub_222485948(&v13, v9);
    v5 = v10;
    v6 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v7 = a3(v5, v6);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    return v7;
  }

  else
  {
    sub_2224A6F90(v12);
    return 0;
  }
}

uint64_t sub_2224A9A8C()
{
  v1 = v0;
  v2 = sub_2224B4648();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2224A6F34(v1, &v9);
  if (v11 == 7)
  {
    v6 = v9;
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  else
  {
    (*(v3 + 104))(v5, *MEMORY[0x277D37910], v2);
    v6 = sub_2224B4638();
    (*(v3 + 8))(v5, v2);
    sub_2224A6F90(&v9);
  }

  return v6;
}

uint64_t sub_2224A9BC8(uint64_t a1)
{
  v2 = sub_2224AA010();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2224A9C04(uint64_t a1)
{
  v2 = sub_2224AA010();

  return MEMORY[0x28211F4A8](a1, v2);
}

_OWORD *sub_2224A9C48(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2224AFB88(a2, a3);
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
      sub_2224B0238();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2224AFC00(v16, a4 & 1);
    v11 = sub_2224AFB88(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_2224B4AB8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);

    return sub_2224A9F14(a1, v22);
  }

  else
  {
    sub_2224A9D98(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_2224A9D98(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2224A9F14(a4, (a5[7] + 32 * a1));
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

unint64_t sub_2224A9E04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E588, &qword_2224B5918);
    v3 = sub_2224B4A48();
    v4 = a1 + 32;

    while (1)
    {
      sub_2224AA064(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_2224AFB88(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2224A9F14(&v15, (v3[7] + 32 * result));
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

_OWORD *sub_2224A9F14(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
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

uint64_t sub_2224A9F4C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 49))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 48);
  if (v3 >= 8)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2224A9F88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
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

uint64_t sub_2224A9FD8(uint64_t result, unsigned int a2)
{
  if (a2 > 7)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 8;
    LOBYTE(a2) = 8;
  }

  *(result + 48) = a2;
  return result;
}