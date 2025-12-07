uint64_t sub_24069EC88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthenticationModel.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24069ECF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthenticationModel.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24069ED5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthenticationModel.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24069EE78(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2405DA4B0;

  return sub_2406924F4(a1, a2, v6);
}

uint64_t sub_24069EF28(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2405CE450;

  return sub_2406924F4(a1, a2, v6);
}

uint64_t sub_24069EFD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24069F038(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B64B0, &qword_240774850);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_24069F0E8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_240590794(0, &qword_27E4B88E8, 0x277D82BB8);
    v4 = sub_240759F54();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_24069F18C(uint64_t result)
{
  if (result)
  {
    v1 = qword_27E4B5EB8;

    if (v1 != -1)
    {
      swift_once();
    }

    v2 = sub_240759AE4();
    __swift_project_value_buffer(v2, qword_27E4B8518);

    v3 = sub_240759AC4();
    v4 = sub_24075A5D4();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v13 = v6;
      *v5 = 136315394;
      sub_240759BD4();

      v7 = sub_24075A0E4();
      v9 = sub_2405BBA7C(v7, v8, &v13);

      *(v5 + 4) = v9;
      *(v5 + 12) = 2080;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB8B0, &qword_2407749F0);
      v10 = sub_24075A0E4();
      v12 = sub_2405BBA7C(v10, v11, &v13);

      *(v5 + 14) = v12;
      _os_log_impl(&dword_240579000, v3, v4, "Setup controller session changed from %s to %s", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CC76B0](v6, -1, -1);
      MEMORY[0x245CC76B0](v5, -1, -1);
    }

    sub_240759BA4();
  }

  return result;
}

uint64_t SetupController.__allocating_init(queue:endpoint:inactiveSession:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_2406A95B8(a1, a2, a3);

  return v6;
}

uint64_t SetupController.init(queue:endpoint:inactiveSession:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_2406A95B8(a1, a2, a3);

  return v3;
}

uint64_t SetupController.__allocating_init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B18, &qword_24076CB30);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  v3 = sub_240759BE4();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  type metadata accessor for SetupController(0);
  swift_allocObject();
  return sub_2406A95B8(0, v2, 0);
}

uint64_t sub_24069F518()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v5 = sub_240759AE4();
  __swift_project_value_buffer(v5, qword_27E4B8518);
  v6 = sub_240759AC4();
  v7 = sub_24075A5D4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_240579000, v6, v7, "Invalidating setup controller", v8, 2u);
    MEMORY[0x245CC76B0](v8, -1, -1);
  }

  v9 = sub_24075A3D4();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v1;

  sub_24060351C(0, 0, v4, &unk_240774888, v10);
}

uint64_t sub_24069F6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_24069F700, a4, 0);
}

uint64_t sub_24069F700()
{
  *(v0 + 32) = *(*(v0 + 24) + OBJC_IVAR____TtC12AppleIDSetup15SetupController_activeSession);

  return MEMORY[0x2822009F8](sub_24069F77C, 0, 0);
}

uint64_t sub_24069F77C()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    sub_240759BA4();
  }

  **(v0 + 16) = v1 == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t SetupController.deinit()
{
  if (*(v0 + OBJC_IVAR____TtC12AppleIDSetup15SetupController_activeSession))
  {

    sub_240759BA4();
  }

  sub_2405B8A50(v0 + OBJC_IVAR____TtC12AppleIDSetup15SetupController_endpoint, &qword_27E4B9B18, &qword_24076CB30);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t SetupController.__deallocating_deinit()
{
  if (*(v0 + OBJC_IVAR____TtC12AppleIDSetup15SetupController_activeSession))
  {

    sub_240759BA4();
  }

  sub_2405B8A50(v0 + OBJC_IVAR____TtC12AppleIDSetup15SetupController_endpoint, &qword_27E4B9B18, &qword_24076CB30);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24069F9A0(uint64_t a1, uint64_t a2)
{
  v3[52] = a2;
  v3[53] = v2;
  v3[51] = a1;
  v3[54] = type metadata accessor for MachSetupMessage(0);
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B92A8, &qword_240779B50);
  v3[60] = swift_task_alloc();
  v4 = sub_240759744();
  v3[61] = v4;
  v3[62] = *(v4 - 8);
  v3[63] = swift_task_alloc();
  v3[64] = type metadata accessor for SetupContext(0);
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24069FB38, v2, 0);
}

uint64_t sub_24069FB38()
{
  v33 = v0;
  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v1 = v0[66];
  v2 = v0[52];
  v3 = sub_240759AE4();
  v0[67] = __swift_project_value_buffer(v3, qword_27E4B8518);
  sub_2406AA1DC(v2, v1, type metadata accessor for SetupContext);
  v4 = sub_240759AC4();
  v5 = sub_24075A5C4();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[66];
  if (v6)
  {
    v8 = v0[65];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32 = v10;
    *v9 = 136315138;
    sub_2406AA1DC(v7, v8, type metadata accessor for SetupContext);
    v11 = sub_24075A0E4();
    v13 = v12;
    sub_2406AA244(v7, type metadata accessor for SetupContext);
    v14 = sub_2405BBA7C(v11, v13, &v32);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_240579000, v4, v5, "Performing Apple ID Setup with context: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245CC76B0](v10, -1, -1);
    MEMORY[0x245CC76B0](v9, -1, -1);
  }

  else
  {

    sub_2406AA244(v7, type metadata accessor for SetupContext);
  }

  v16 = v0[62];
  v15 = v0[63];
  v18 = v0[60];
  v17 = v0[61];
  v19 = v0[52];
  v20 = v0[53];
  v21 = OBJC_IVAR____TtC12AppleIDSetup15SetupController_setupAnalyticsEvent;
  v0[68] = OBJC_IVAR____TtC12AppleIDSetup15SetupController_setupAnalyticsEvent;
  v22 = *(v20 + v21);

  sub_240759734();
  (*(v16 + 32))(v18, v15, v17);
  v23 = *(v16 + 56);
  v0[69] = v23;
  v0[70] = (v16 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v23(v18, 0, 1, v17);
  v24 = OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_startDate;
  swift_beginAccess();
  sub_2406A9C2C(v18, v22 + v24);
  swift_endAccess();

  v25 = sub_2406A3EF8(v19);
  v0[71] = v25;
  v26 = v0[58];
  v27 = v0[53];
  v28 = v0[52];
  v29 = OBJC_IVAR____TtC12AppleIDSetup15SetupController_activeSession;
  v0[72] = OBJC_IVAR____TtC12AppleIDSetup15SetupController_activeSession;
  v30 = *(v27 + v29);
  *(v27 + v29) = v25;
  swift_retain_n();
  sub_24069F18C(v30);

  sub_2406AA1DC(v28, v26, type metadata accessor for SetupModel);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x2822009F8](sub_24069FF4C, 0, 0);
}

uint64_t sub_24069FF4C()
{
  v1 = v0[71];
  v2 = v0[58];
  v3 = swift_task_alloc();
  v0[73] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[74] = v4;
  *v4 = v0;
  v4[1] = sub_2406A0040;
  v5 = v0[59];
  v6 = v0[54];

  return MEMORY[0x2822008A0](v5, 0, 0, 0x293A5F28646E6573, 0xE800000000000000, sub_2406A9C9C, v3, v6);
}

uint64_t sub_2406A0040()
{
  v2 = *v1;
  *(*v1 + 600) = v0;

  if (v0)
  {
    v3 = sub_2406A0A48;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 464);
    v6 = *(v2 + 424);

    sub_2406AA244(v5, type metadata accessor for MachSetupMessage);
    v3 = sub_2406A0188;
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_2406A0188()
{
  v85 = v0;
  sub_2406AA1DC(*(v0 + 472), *(v0 + 456), type metadata accessor for MachSetupMessage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 7)
  {
    v26 = *(v0 + 456);
    v27 = *v26;
    v28 = *(v26 + 8);
    v29 = *(v26 + 16);
    v30 = *(v26 + 24);
    v32 = *(v26 + 32);
    v31 = *(v26 + 40);
    v33 = *(v26 + 48);
    sub_2405AF8D8(*v26, v28, v29, v30, v32, v31, v33);
    v34 = sub_240759AC4();
    v35 = sub_24075A5E4();
    v81 = v31;
    v80 = v33;
    sub_2405AEA70(v27, v28, v29, v30, v32, v31, v33);
    log = v34;
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      sub_2405B8998();
      swift_allocError();
      *v38 = v27;
      *(v38 + 8) = v28;
      *(v38 + 16) = v29;
      *(v38 + 24) = v30;
      *(v38 + 32) = v32;
      *(v38 + 40) = v81;
      *(v38 + 48) = v80;
      sub_2405AF8D8(v27, v28, v29, v30, v32, v81, v80);
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 4) = v39;
      *v37 = v39;
      _os_log_impl(&dword_240579000, v34, v35, "Failed to perform setup with error: %@", v36, 0xCu);
      sub_2405B8A50(v37, &qword_27E4B92A0, &qword_240762400);
      MEMORY[0x245CC76B0](v37, -1, -1);
      MEMORY[0x245CC76B0](v36, -1, -1);
    }

    v77 = v30;
    v78 = v29;
    v40 = *(v0 + 576);
    v75 = v27;
    v76 = v32;
    v41 = *(v0 + 552);
    v42 = *(v0 + 544);
    v74 = v28;
    v44 = *(v0 + 496);
    v43 = *(v0 + 504);
    v46 = *(v0 + 480);
    v45 = *(v0 + 488);
    v83 = *(v0 + 472);
    v47 = *(v0 + 424);

    v48 = (v47 + v40);
    v49 = *(v47 + v42);

    sub_240759734();
    (*(v44 + 16))(v46, v43, v45);
    v41(v46, 0, 1, v45);
    v50 = OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_endDate;
    swift_beginAccess();
    sub_2406A9C2C(v46, v49 + v50);
    swift_endAccess();
    sub_2406A9CA4(v49);
    (*(v44 + 8))(v43, v45);

    sub_2405B8998();
    swift_allocError();
    *v51 = v75;
    *(v51 + 8) = v74;
    *(v51 + 16) = v78;
    *(v51 + 24) = v77;
    *(v51 + 32) = v76;
    *(v51 + 40) = v81;
    *(v51 + 48) = v80;
    swift_willThrow();
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_2406AA1DC(*(v0 + 472), *(v0 + 448), type metadata accessor for MachSetupMessage);
    v52 = sub_240759AC4();
    v53 = sub_24075A5E4();
    v54 = os_log_type_enabled(v52, v53);
    v55 = *(v0 + 448);
    if (v54)
    {
      v56 = *(v0 + 440);
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *&v84[0] = v58;
      *v57 = 136315138;
      sub_2406AA1DC(v55, v56, type metadata accessor for MachSetupMessage);
      v59 = sub_24075A0E4();
      v61 = v60;
      sub_2406AA244(v55, type metadata accessor for MachSetupMessage);
      v62 = sub_2405BBA7C(v59, v61, v84);

      *(v57 + 4) = v62;
      _os_log_impl(&dword_240579000, v52, v53, "Received unexpected mach setup message: %s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v58);
      MEMORY[0x245CC76B0](v58, -1, -1);
      MEMORY[0x245CC76B0](v57, -1, -1);
    }

    else
    {

      sub_2406AA244(v55, type metadata accessor for MachSetupMessage);
    }

    v63 = *(v0 + 552);
    v65 = *(v0 + 496);
    v64 = *(v0 + 504);
    v67 = *(v0 + 480);
    v66 = *(v0 + 488);
    v82 = *(v0 + 472);
    v68 = *(v0 + 424);
    v48 = (v68 + *(v0 + 576));
    v83 = *(v0 + 456);
    v69 = *(v68 + *(v0 + 544));

    sub_240759734();
    (*(v65 + 16))(v67, v64, v66);
    v63(v67, 0, 1, v66);
    v70 = OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_endDate;
    swift_beginAccess();
    sub_2406A9C2C(v67, v69 + v70);
    swift_endAccess();
    sub_2406A9CA4(v69);
    (*(v65 + 8))(v64, v66);

    sub_2405B8998();
    swift_allocError();
    *v71 = 0u;
    *(v71 + 16) = 0u;
    *(v71 + 32) = 0u;
    *(v71 + 48) = 6;
    swift_willThrow();
    sub_2406AA244(v82, type metadata accessor for MachSetupMessage);
LABEL_13:
    sub_2406AA244(v83, type metadata accessor for MachSetupMessage);
    v72 = *v48;
    *v48 = 0;
    sub_24069F18C(v72);

    v25 = *(v0 + 8);
    goto LABEL_14;
  }

  v2 = *(v0 + 456);
  *(v0 + 16) = *v2;
  v3 = v2[4];
  v5 = v2[1];
  v4 = v2[2];
  *(v0 + 64) = v2[3];
  *(v0 + 80) = v3;
  *(v0 + 32) = v5;
  *(v0 + 48) = v4;
  sub_2406AA12C(v0 + 16, v0 + 96);
  v6 = sub_240759AC4();
  v7 = sub_24075A5C4();
  sub_2406AA188(v0 + 16);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v84[0] = v9;
    *v8 = 136315138;
    v10 = *(v0 + 64);
    *(v0 + 208) = *(v0 + 48);
    *(v0 + 224) = v10;
    *(v0 + 240) = *(v0 + 80);
    v11 = *(v0 + 32);
    *(v0 + 176) = *(v0 + 16);
    *(v0 + 192) = v11;
    sub_2406AA12C(v0 + 16, v0 + 256);
    v12 = sub_24075A0E4();
    v14 = sub_2405BBA7C(v12, v13, v84);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_240579000, v6, v7, "Finished Apple ID Setup with report: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x245CC76B0](v9, -1, -1);
    MEMORY[0x245CC76B0](v8, -1, -1);
  }

  v15 = *(v0 + 576);
  v16 = *(v0 + 472);
  v17 = *(v0 + 424);
  v18 = *(v0 + 408);
  v19 = *(v0 + 64);
  v84[2] = *(v0 + 48);
  v84[3] = v19;
  v84[4] = *(v0 + 80);
  v20 = *(v0 + 32);
  v84[0] = *(v0 + 16);
  v84[1] = v20;

  sub_2407543CC(v84);

  sub_2406AA244(v16, type metadata accessor for MachSetupMessage);
  *v18 = *(v0 + 16);
  v21 = *(v0 + 32);
  v22 = *(v0 + 48);
  v23 = *(v0 + 80);
  v18[3] = *(v0 + 64);
  v18[4] = v23;
  v18[1] = v21;
  v18[2] = v22;
  v24 = *(v17 + v15);
  *(v17 + v15) = 0;
  sub_24069F18C(v24);

  v25 = *(v0 + 8);
LABEL_14:

  return v25();
}

uint64_t sub_2406A0A48()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 424);

  sub_2406AA244(v1, type metadata accessor for MachSetupMessage);

  return MEMORY[0x2822009F8](sub_2406A0AD4, v2, 0);
}

uint64_t sub_2406A0AD4()
{
  v1 = v0[72];
  v2 = v0[53];
  v3 = *(v2 + v1);
  *(v2 + v1) = 0;
  sub_24069F18C(v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2406A0BD8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for MachSetupMessage(0);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = type metadata accessor for ViewServiceConfiguration(0);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2406A0CD8, v1, 0);
}

uint64_t sub_2406A0CD8()
{
  v23 = v0;
  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[2];
  v3 = sub_240759AE4();
  v0[13] = __swift_project_value_buffer(v3, qword_27E4B8518);
  sub_2406AA1DC(v2, v1, type metadata accessor for ViewServiceConfiguration);
  v4 = sub_240759AC4();
  v5 = sub_24075A5C4();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[12];
  if (v6)
  {
    v8 = v0[11];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315138;
    sub_2406AA1DC(v7, v8, type metadata accessor for ViewServiceConfiguration);
    v11 = sub_24075A0E4();
    v13 = v12;
    sub_2406AA244(v7, type metadata accessor for ViewServiceConfiguration);
    v14 = sub_2405BBA7C(v11, v13, &v22);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_240579000, v4, v5, "Launching view service with configuration: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245CC76B0](v10, -1, -1);
    MEMORY[0x245CC76B0](v9, -1, -1);
  }

  else
  {

    sub_2406AA244(v7, type metadata accessor for ViewServiceConfiguration);
  }

  v15 = sub_2406A6668(sub_2406A19B0, 0, sub_2406A1C38, 0);
  v0[14] = v15;
  v16 = v0[8];
  v17 = v0[3];
  v18 = v0[2];
  v19 = OBJC_IVAR____TtC12AppleIDSetup15SetupController_activeSession;
  v0[15] = OBJC_IVAR____TtC12AppleIDSetup15SetupController_activeSession;
  v20 = *(v17 + v19);
  *(v17 + v19) = v15;
  swift_retain_n();
  sub_24069F18C(v20);

  sub_2406AA1DC(v18, v16, type metadata accessor for ViewServiceConfiguration);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x2822009F8](sub_2406A1040, 0, 0);
}

uint64_t sub_2406A1040()
{
  v1 = v0[14];
  v2 = v0[8];
  v3 = swift_task_alloc();
  v0[16] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_2406A1134;
  v5 = v0[9];
  v6 = v0[4];

  return MEMORY[0x2822008A0](v5, 0, 0, 0x293A5F28646E6573, 0xE800000000000000, sub_2406AB144, v3, v6);
}

uint64_t sub_2406A1134()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_2406A1840;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 64);
    v6 = *(v2 + 24);

    sub_2406AA244(v5, type metadata accessor for MachSetupMessage);
    v3 = sub_2406A127C;
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_2406A127C()
{
  v47 = v0;
  sub_2406AA1DC(v0[9], v0[7], type metadata accessor for MachSetupMessage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 8)
  {
    v19 = sub_240759AC4();
    v20 = sub_24075A5C4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_240579000, v19, v20, "Launching view service and received ack back", v21, 2u);
      MEMORY[0x245CC76B0](v21, -1, -1);
    }

    v22 = v0[15];
    v23 = v0[9];
    v24 = v0[3];

    sub_2406AA244(v23, type metadata accessor for MachSetupMessage);
    v25 = *(v24 + v22);
    *(v24 + v22) = 0;
    sub_24069F18C(v25);

    v26 = v0[1];
  }

  else
  {
    if (EnumCaseMultiPayload == 7)
    {
      v2 = v0[7];
      v3 = *v2;
      v4 = *(v2 + 8);
      v5 = *(v2 + 16);
      v6 = *(v2 + 24);
      v7 = *(v2 + 32);
      v8 = *(v2 + 40);
      v9 = *(v2 + 48);
      sub_2405AF8D8(*v2, v4, v5, v6, v7, v8, v9);
      v10 = sub_240759AC4();
      v11 = sub_24075A5E4();
      sub_2405AEA70(v3, v4, v5, v6, v7, v8, v9);
      if (os_log_type_enabled(v10, v11))
      {
        v44 = v11;
        v12 = swift_slowAlloc();
        log = v10;
        v13 = swift_slowAlloc();
        *v12 = 138412290;
        sub_2405B8998();
        swift_allocError();
        *v14 = v3;
        *(v14 + 8) = v4;
        *(v14 + 16) = v5;
        *(v14 + 24) = v6;
        *(v14 + 32) = v7;
        *(v14 + 40) = v8;
        *(v14 + 48) = v9;
        sub_2405AF8D8(v3, v4, v5, v6, v7, v8, v9);
        v15 = _swift_stdlib_bridgeErrorToNSError();
        *(v12 + 4) = v15;
        *v13 = v15;
        _os_log_impl(&dword_240579000, log, v44, "Failed to launch view service with error: %@", v12, 0xCu);
        sub_2405B8A50(v13, &qword_27E4B92A0, &qword_240762400);
        v16 = v13;
        v10 = log;
        MEMORY[0x245CC76B0](v16, -1, -1);
        MEMORY[0x245CC76B0](v12, -1, -1);
      }

      v17 = v0[9];

      sub_2405B8998();
      swift_allocError();
      *v18 = v3;
      *(v18 + 8) = v4;
      *(v18 + 16) = v5;
      *(v18 + 24) = v6;
      *(v18 + 32) = v7;
      *(v18 + 40) = v8;
      *(v18 + 48) = v9;
      swift_willThrow();
    }

    else
    {
      sub_2406AA1DC(v0[9], v0[6], type metadata accessor for MachSetupMessage);
      v27 = sub_240759AC4();
      v28 = sub_24075A5E4();
      v29 = os_log_type_enabled(v27, v28);
      v30 = v0[6];
      if (v29)
      {
        v31 = v0[5];
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v46 = v33;
        *v32 = 136315138;
        sub_2406AA1DC(v30, v31, type metadata accessor for MachSetupMessage);
        v34 = sub_24075A0E4();
        v36 = v35;
        sub_2406AA244(v30, type metadata accessor for MachSetupMessage);
        v37 = sub_2405BBA7C(v34, v36, &v46);

        *(v32 + 4) = v37;
        _os_log_impl(&dword_240579000, v27, v28, "Received unexpected mach setup message: %s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v33);
        MEMORY[0x245CC76B0](v33, -1, -1);
        MEMORY[0x245CC76B0](v32, -1, -1);
      }

      else
      {

        sub_2406AA244(v30, type metadata accessor for MachSetupMessage);
      }

      v38 = v0[9];
      v17 = v0[7];
      sub_2405B8998();
      swift_allocError();
      *v39 = 0u;
      *(v39 + 16) = 0u;
      *(v39 + 32) = 0u;
      *(v39 + 48) = 6;
      swift_willThrow();
      sub_2406AA244(v38, type metadata accessor for MachSetupMessage);
    }

    sub_2406AA244(v17, type metadata accessor for MachSetupMessage);
    v40 = v0[15];
    v41 = v0[3];
    v42 = *(v41 + v40);
    *(v41 + v40) = 0;
    sub_24069F18C(v42);

    v26 = v0[1];
  }

  return v26();
}

uint64_t sub_2406A1840()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);

  sub_2406AA244(v1, type metadata accessor for MachSetupMessage);

  return MEMORY[0x2822009F8](sub_2406A18CC, v2, 0);
}

uint64_t sub_2406A18CC()
{
  v1 = v0[15];
  v2 = v0[3];
  v3 = *(v2 + v1);
  *(v2 + v1) = 0;
  sub_24069F18C(v3);

  v4 = v0[1];

  return v4();
}

double sub_2406A19B0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_240759C44();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v11 = sub_240759AE4();
  __swift_project_value_buffer(v11, qword_27E4B8518);
  v12 = *(v5 + 16);
  v12(v10, a1, v4);
  v13 = sub_240759AC4();
  v14 = sub_24075A5D4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v24 = a2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v25 = v17;
    *v16 = 136315138;
    v12(v8, v10, v4);
    v18 = sub_24075A0E4();
    v20 = v19;
    (*(v5 + 8))(v10, v4);
    v21 = sub_2405BBA7C(v18, v20, &v25);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_240579000, v13, v14, "Dropping unexpected incoming message: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x245CC76B0](v17, -1, -1);
    v22 = v16;
    a2 = v24;
    MEMORY[0x245CC76B0](v22, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v10, v4);
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

void sub_2406A1C38(uint64_t a1)
{
  v2 = sub_240759BF4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v6 = sub_240759AE4();
  __swift_project_value_buffer(v6, qword_27E4B8518);
  v7 = *(v3 + 16);
  v7(v5, a1, v2);
  v8 = sub_240759AC4();
  v9 = sub_24075A5E4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    sub_2406AB0E4(&qword_27E4B9BA0, MEMORY[0x277D855E8], MEMORY[0x277D855F0]);
    swift_allocError();
    v7(v12, v5, v2);
    v13 = _swift_stdlib_bridgeErrorToNSError();
    (*(v3 + 8))(v5, v2);
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_240579000, v8, v9, "XPC session has been cancelled with error: %@", v10, 0xCu);
    sub_2405B8A50(v11, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v11, -1, -1);
    MEMORY[0x245CC76B0](v10, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_2406A1EBC(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = type metadata accessor for MachSetupMessage(0);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2406A1F60, v2, 0);
}

uint64_t sub_2406A1F60()
{
  v28 = v0;
  v1 = *(v0[5] + OBJC_IVAR____TtC12AppleIDSetup15SetupController_activeSession);
  v0[9] = v1;
  if (v1)
  {
    v2 = qword_27E4B5EB8;

    if (v2 != -1)
    {
      swift_once();
    }

    v3 = v0[8];
    v4 = v0[4];
    v5 = sub_240759AE4();
    __swift_project_value_buffer(v5, qword_27E4B8518);
    sub_2406AA1DC(v4, v3, type metadata accessor for MachSetupMessage);

    v6 = sub_240759AC4();
    v7 = sub_24075A5C4();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[8];
    if (v8)
    {
      v10 = v0[7];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v27[0] = v12;
      *v11 = 136315394;
      sub_2406AA1DC(v9, v10, type metadata accessor for MachSetupMessage);
      v13 = sub_24075A0E4();
      v15 = v14;
      sub_2406AA244(v9, type metadata accessor for MachSetupMessage);
      v16 = sub_2405BBA7C(v13, v15, v27);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2080;
      v0[2] = v1;
      sub_240759BD4();

      v17 = sub_24075A0E4();
      v19 = sub_2405BBA7C(v17, v18, v27);

      *(v11 + 14) = v19;
      _os_log_impl(&dword_240579000, v6, v7, "Sending out message: %s with active xpc session: %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CC76B0](v12, -1, -1);
      MEMORY[0x245CC76B0](v11, -1, -1);
    }

    else
    {

      sub_2406AA244(v9, type metadata accessor for MachSetupMessage);
    }

    return MEMORY[0x2822009F8](sub_2406A2360, 0, 0);
  }

  else
  {
    if (qword_27E4B5EB8 != -1)
    {
      swift_once();
    }

    v20 = sub_240759AE4();
    __swift_project_value_buffer(v20, qword_27E4B8518);
    v21 = sub_240759AC4();
    v22 = sub_24075A5E4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_240579000, v21, v22, "Unable to send message due to no active session, not creating one", v23, 2u);
      MEMORY[0x245CC76B0](v23, -1, -1);
    }

    sub_2405B8998();
    swift_allocError();
    *v24 = 9;
    *(v24 + 8) = 0u;
    *(v24 + 24) = 0u;
    *(v24 + 40) = 0;
    *(v24 + 48) = 6;
    swift_willThrow();

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_2406A2360()
{
  v1 = v0[9];
  v2 = v0[4];
  v3 = swift_task_alloc();
  v0[10] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_2406A2454;
  v5 = v0[6];
  v6 = v0[3];

  return MEMORY[0x2822008A0](v6, 0, 0, 0x293A5F28646E6573, 0xE800000000000000, sub_2406AB144, v3, v5);
}

uint64_t sub_2406A2454()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_2406A25F4;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 40);

    v3 = sub_2406A257C;
    v4 = v5;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_2406A257C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2406A25F4()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_2406A2660, v1, 0);
}

uint64_t sub_2406A2660()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2406A26D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = a3;
  v56 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB860, &unk_2407749A0);
  MEMORY[0x28223BE20](v4 - 8);
  v58 = v55 - v5;
  v64 = type metadata accessor for MachSetupMessage(0);
  v6 = MEMORY[0x28223BE20](v64);
  v62 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v55 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v59 = v55 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v61 = v55 - v14;
  MEMORY[0x28223BE20](v13);
  v63 = v55 - v15;
  v16 = sub_240759C44();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v55 - v21;
  if (qword_27E4B5EB0 != -1)
  {
    swift_once();
  }

  v23 = sub_240759AE4();
  v24 = __swift_project_value_buffer(v23, qword_27E4B8500);
  v25 = *(v17 + 16);
  v25(v22, a1, v16);
  v60 = v24;
  v26 = sub_240759AC4();
  v27 = sub_24075A5D4();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v55[1] = a1;
    v29 = v28;
    v30 = swift_slowAlloc();
    v55[0] = v10;
    v31 = v30;
    *&v65 = v30;
    *v29 = 136315138;
    v25(v20, v22, v16);
    v32 = sub_24075A0E4();
    v34 = v33;
    (*(v17 + 8))(v22, v16);
    v35 = sub_2405BBA7C(v32, v34, &v65);

    *(v29 + 4) = v35;
    _os_log_impl(&dword_240579000, v26, v27, "Received XPC message: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    v36 = v31;
    v10 = v55[0];
    MEMORY[0x245CC76B0](v36, -1, -1);
    MEMORY[0x245CC76B0](v29, -1, -1);
  }

  else
  {

    (*(v17 + 8))(v22, v16);
  }

  sub_2406AB0E4(&qword_27E4BB878, type metadata accessor for MachSetupMessage, &protocol conformance descriptor for MachSetupMessage);
  v37 = v61;
  sub_240759C34();
  v38 = v62;
  v39 = v63;
  sub_2406AAB30(v37, v63, type metadata accessor for MachSetupMessage);
  v40 = v59;
  sub_2406AA1DC(v39, v59, type metadata accessor for MachSetupMessage);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v41 = v58;
    sub_2405E150C(v40, v58, &qword_27E4BB860, &unk_2407749A0);
    sub_2406A2FD0(v41, v56, v57);
    swift_storeEnumTagMultiPayload();
    sub_2406AB0E4(&qword_27E4BB880, type metadata accessor for MachSetupMessage, &protocol conformance descriptor for MachSetupMessage);
    sub_240759C24();
    sub_2406AA244(v10, type metadata accessor for MachSetupMessage);
    sub_2405B8A50(v41, &qword_27E4BB860, &unk_2407749A0);
    v42 = v39;
  }

  else
  {
    sub_2406AA1DC(v39, v38, type metadata accessor for MachSetupMessage);
    v43 = sub_240759AC4();
    v44 = sub_24075A5D4();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&v65 = v46;
      *v45 = 136315138;
      sub_2406AA1DC(v38, v10, type metadata accessor for MachSetupMessage);
      v47 = sub_24075A0E4();
      v48 = v38;
      v49 = v10;
      v50 = v47;
      v52 = v51;
      sub_2406AA244(v48, type metadata accessor for MachSetupMessage);
      v53 = sub_2405BBA7C(v50, v52, &v65);

      *(v45 + 4) = v53;
      v10 = v49;
      _os_log_impl(&dword_240579000, v43, v44, "Received unexpected mach setup message: %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x245CC76B0](v46, -1, -1);
      MEMORY[0x245CC76B0](v45, -1, -1);
    }

    else
    {

      sub_2406AA244(v38, type metadata accessor for MachSetupMessage);
    }

    *(v10 + 1) = 0u;
    *(v10 + 2) = 0u;
    *v10 = 0u;
    v10[48] = 6;
    swift_storeEnumTagMultiPayload();
    sub_2406AB0E4(&qword_27E4BB880, type metadata accessor for MachSetupMessage, &protocol conformance descriptor for MachSetupMessage);
    sub_240759C24();
    sub_2406AA244(v10, type metadata accessor for MachSetupMessage);
    sub_2406AA244(v39, type metadata accessor for MachSetupMessage);
    v42 = v59;
  }

  return sub_2406AA244(v42, type metadata accessor for MachSetupMessage);
}

void sub_2406A2FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a3;
  v63 = a2;
  v4 = type metadata accessor for SetupContext(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v52 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB858, &qword_240774998);
  v62 = *(v10 - 8);
  v59 = *(v62 + 64);
  MEMORY[0x28223BE20](v10);
  v60 = &v52 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB860, &unk_2407749A0);
  v57 = *(v12 - 8);
  v13 = *(v57 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v64 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v52 - v15;
  if (qword_27E4B5EA0 != -1)
  {
    swift_once();
  }

  v17 = sub_240759AE4();
  __swift_project_value_buffer(v17, qword_27E506810);
  v61 = a1;
  sub_2405B044C(a1, v16, &qword_27E4BB860, &unk_2407749A0);
  v18 = sub_240759AC4();
  v19 = sub_24075A5D4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v54 = v4;
    v21 = v20;
    v22 = swift_slowAlloc();
    v55 = v9;
    v23 = v22;
    *&aBlock = v22;
    *v21 = 136315138;
    v53 = v17;
    v24 = v13;
    sub_2405B044C(v16, v64, &qword_27E4BB860, &unk_2407749A0);
    v25 = sub_24075A0E4();
    v26 = v7;
    v28 = v27;
    sub_2405B8A50(v16, &qword_27E4BB860, &unk_2407749A0);
    v29 = sub_2405BBA7C(v25, v28, &aBlock);
    v7 = v26;
    v13 = v24;
    v17 = v53;

    *(v21 + 4) = v29;
    _os_log_impl(&dword_240579000, v18, v19, "Received coordinated model update: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    v30 = v23;
    v9 = v55;
    MEMORY[0x245CC76B0](v30, -1, -1);
    v31 = v21;
    v4 = v54;
    MEMORY[0x245CC76B0](v31, -1, -1);
  }

  else
  {

    sub_2405B8A50(v16, &qword_27E4BB860, &unk_2407749A0);
  }

  isEscapingClosureAtFileLocation = v63;
  sub_2405B044C(v63 + *(v4 + 20), &aBlock, &qword_27E4BAAE8, &qword_24076FC48);
  if (v67)
  {
    sub_24058C9C0(&aBlock, v71);
    v33 = v72;
    v34 = v73;
    __swift_project_boxed_opaque_existential_1(v71, v72);
    v35 = (*(v34 + 8))(v33, v34);
    if (!v35)
    {
      v35 = *(v56 + 112);
    }

    v36 = v35;
    sub_2405F7830(v71, v70);
    v9 = v64;
    sub_2405B044C(v61, v64, &qword_27E4BB860, &unk_2407749A0);
    v37 = v62;
    v38 = v60;
    (*(v62 + 16))(v60, v58, v10);
    v7 = ((*(v57 + 80) + 56) & ~*(v57 + 80));
    v39 = &v7[v13 + *(v37 + 80)] & ~*(v37 + 80);
    v40 = swift_allocObject();
    sub_24058C9C0(v70, v40 + 16);
    sub_2405E150C(v9, &v7[v40], &qword_27E4BB860, &unk_2407749A0);
    v41 = *(v37 + 32);
    v17 = v37 + 32;
    v41(v40 + v39, v38, v10);
    v42 = swift_allocObject();
    *(v42 + 16) = sub_2406AA934;
    *(v42 + 24) = v40;
    v68 = sub_240635D44;
    v69 = v42;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v66 = sub_2406C0E30;
    v67 = &block_descriptor_44;
    v43 = _Block_copy(&aBlock);

    dispatch_async_and_wait(v36, v43);

    _Block_release(v43);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1(v71);

      return;
    }

    __break(1u);
  }

  else
  {
    sub_2405B8A50(&aBlock, &qword_27E4BAAE8, &qword_24076FC48);
    if (qword_27E4B5EB0 == -1)
    {
      goto LABEL_12;
    }
  }

  swift_once();
LABEL_12:
  __swift_project_value_buffer(v17, qword_27E4B8500);
  sub_2406AA1DC(isEscapingClosureAtFileLocation, v9, type metadata accessor for SetupContext);
  v44 = sub_240759AC4();
  v45 = sub_24075A5E4();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *&aBlock = v47;
    *v46 = 136315138;
    sub_2406AA1DC(v9, v7, type metadata accessor for SetupContext);
    v48 = sub_24075A0E4();
    v50 = v49;
    sub_2406AA244(v9, type metadata accessor for SetupContext);
    v51 = sub_2405BBA7C(v48, v50, &aBlock);

    *(v46 + 4) = v51;
    _os_log_impl(&dword_240579000, v44, v45, "Unable to use exchange from context: %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v47);
    MEMORY[0x245CC76B0](v47, -1, -1);
    MEMORY[0x245CC76B0](v46, -1, -1);
  }

  else
  {

    sub_2406AA244(v9, type metadata accessor for SetupContext);
  }
}

uint64_t sub_2406A37C0(void *a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v20[0] = a2;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB858, &qword_240774998);
  v5 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v7 = v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB860, &unk_2407749A0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v12 = v20 - v11;
  v13 = a1[3];
  v14 = a1[4];
  v20[1] = __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_2405B044C(a2, v12, &qword_27E4BB860, &unk_2407749A0);
  v15 = v21;
  (*(v5 + 16))(v7, v22, v21);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = (v10 + *(v5 + 80) + v16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  sub_2405E150C(v12, v18 + v16, &qword_27E4BB860, &unk_2407749A0);
  (*(v5 + 32))(v18 + v17, v7, v15);
  (*(v14 + 16))(v20[0], sub_2406AAA1C, v18, v13, v14);
}

uint64_t sub_2406A3A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = type metadata accessor for MachSetupMessage(0);
  MEMORY[0x28223BE20](v43);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB868, &unk_2407749B0);
  v41 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v40 = &v35 - v9;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB870, &qword_2407831A0);
  v10 = MEMORY[0x28223BE20](v39);
  v38 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB860, &unk_2407749A0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v35 - v18;
  if (qword_27E4B5EA0 != -1)
  {
    swift_once();
  }

  v20 = sub_240759AE4();
  __swift_project_value_buffer(v20, qword_27E506810);
  sub_2405B044C(a2, v19, &qword_27E4BB860, &unk_2407749A0);
  v42 = a1;
  sub_2405B044C(a1, v13, &qword_27E4BB870, &qword_2407831A0);
  v21 = sub_240759AC4();
  v22 = sub_24075A5D4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = v7;
    v44 = v35;
    *v23 = 136315394;
    v37 = a3;
    sub_2405B044C(v19, v17, &qword_27E4BB860, &unk_2407749A0);
    v24 = sub_24075A0E4();
    v26 = v25;
    sub_2405B8A50(v19, &qword_27E4BB860, &unk_2407749A0);
    v27 = sub_2405BBA7C(v24, v26, &v44);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    sub_2405B044C(v13, v38, &qword_27E4BB870, &qword_2407831A0);
    v28 = sub_24075A0E4();
    v30 = v29;
    sub_2405B8A50(v13, &qword_27E4BB870, &qword_2407831A0);
    v31 = sub_2405BBA7C(v28, v30, &v44);

    *(v23 + 14) = v31;
    _os_log_impl(&dword_240579000, v21, v22, "Responding to model update (%s) with response: %s", v23, 0x16u);
    v32 = v35;
    swift_arrayDestroy();
    v7 = v36;
    MEMORY[0x245CC76B0](v32, -1, -1);
    MEMORY[0x245CC76B0](v23, -1, -1);
  }

  else
  {

    sub_2405B8A50(v13, &qword_27E4BB870, &qword_2407831A0);
    sub_2405B8A50(v19, &qword_27E4BB860, &unk_2407749A0);
  }

  sub_2405B044C(v42, v7, &qword_27E4BB870, &qword_2407831A0);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB858, &qword_240774998);
  v33 = v40;
  sub_24075A414();
  return (*(v41 + 8))(v33, v8);
}

uint64_t sub_2406A3EF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v2 - 8);
  v60 = &v58 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB8B8, &qword_2407749F8);
  v65 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v66 = v6;
  v67 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v58 - v7;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB8C0, &qword_240774A00);
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v10 = &v58 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB8C8, &qword_240774A08);
  v71 = *(v11 - 8);
  v72 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v58 = v13;
  v59 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v74 = &v58 - v14;
  v15 = type metadata accessor for SetupContext(0);
  v62 = *(v15 - 8);
  v16 = *(v62 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v64 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v58 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v58 - v21;
  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v69 = v8;
  v23 = sub_240759AE4();
  __swift_project_value_buffer(v23, qword_27E4B8518);
  v68 = a1;
  sub_2406AA1DC(a1, v22, type metadata accessor for SetupContext);
  v24 = sub_240759AC4();
  v25 = sub_24075A5D4();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v73 = v4;
    v28 = v27;
    v75 = v27;
    *v26 = 136315138;
    sub_2406AA1DC(v22, v20, type metadata accessor for SetupContext);
    v29 = sub_24075A0E4();
    v31 = v30;
    sub_2406AA244(v22, type metadata accessor for SetupContext);
    v32 = sub_2405BBA7C(v29, v31, &v75);

    *(v26 + 4) = v32;
    _os_log_impl(&dword_240579000, v24, v25, "Creating new XPC session for context: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x245CC76B0](v28, -1, -1);
    MEMORY[0x245CC76B0](v26, -1, -1);
  }

  else
  {

    sub_2406AA244(v22, type metadata accessor for SetupContext);
  }

  v73 = swift_allocBox();
  v34 = v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB858, &qword_240774998);
  v36 = (*(*(v35 - 8) + 56))(v34, 1, 1, v35);
  MEMORY[0x28223BE20](v36);
  *(&v58 - 2) = v34;
  type metadata accessor for MachSetupMessage(0);
  (*(v61 + 104))(v10, *MEMORY[0x277D85778], v63);
  sub_24075A484();
  v37 = v69;
  sub_2405B044C(v34, v69, &qword_27E4BB8B8, &qword_2407749F8);
  v38 = swift_allocObject();
  swift_weakInit();
  v39 = v67;
  sub_2405B044C(v37, v67, &qword_27E4BB8B8, &qword_2407749F8);
  v40 = v64;
  sub_2406AA1DC(v68, v64, type metadata accessor for SetupContext);
  v41 = (*(v65 + 80) + 24) & ~*(v65 + 80);
  v42 = (v66 + *(v62 + 80) + v41) & ~*(v62 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = v38;
  v44 = v43 + v41;
  v45 = v73;
  sub_2405E150C(v39, v44, &qword_27E4BB8B8, &qword_2407749F8);
  sub_2406AAB30(v40, v43 + v42, type metadata accessor for SetupContext);

  v46 = v70;
  v47 = sub_2406A6668(sub_2406AACEC, v43, sub_2406AADE0, v45);
  if (v46)
  {

    sub_2405B8A50(v37, &qword_27E4BB8B8, &qword_2407749F8);
    (*(v71 + 8))(v74, v72);
  }

  else
  {
    sub_2405B8A50(v37, &qword_27E4BB8B8, &qword_2407749F8);

    v48 = sub_24075A3D4();
    v49 = v60;
    (*(*(v48 - 8) + 56))(v60, 1, 1, v48);
    v51 = v71;
    v50 = v72;
    v52 = v59;
    (*(v71 + 16))(v59, v74, v72);
    v53 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v54 = v47;
    v55 = (v58 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
    v56 = swift_allocObject();
    *(v56 + 16) = 0;
    *(v56 + 24) = 0;
    (*(v51 + 32))(v56 + v53, v52, v50);
    *(v56 + v55) = v54;
    v47 = v54;

    sub_240656510(0, 0, v49, &unk_240774A18, v56);

    sub_2405B8A50(v49, &unk_27E4B9BF0, &qword_240762710);
    (*(v51 + 8))(v74, v50);
  }

  return v47;
}

uint64_t sub_2406A47DC(uint64_t a1, uint64_t a2)
{
  sub_2405B8A50(a2, &qword_27E4BB8B8, &qword_2407749F8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB858, &qword_240774998);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

double sub_2406A48B8@<D0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v50 = a4;
  v53 = a3;
  v57 = a1;
  v59 = a5;
  v5 = type metadata accessor for SetupContext(0);
  v51 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v52 = v6;
  v55 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_240759C44();
  v7 = *(v58 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v58);
  v10 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v56 = &v48 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v12 - 8);
  v54 = &v48 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB8B8, &qword_2407749F8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v48 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB858, &qword_240774998);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v21 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v48 - v22;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    sub_2405B044C(v53, v16, &qword_27E4BB8B8, &qword_2407749F8);
    if ((*(v18 + 48))(v16, 1, v17) != 1)
    {
      v37 = v23;
      v49 = v23;
      v38 = v7;
      v48 = *(v18 + 32);
      v53 = v18 + 32;
      v48(v37, v16, v17);
      v39 = sub_24075A3D4();
      (*(*(v39 - 8) + 56))(v54, 1, 1, v39);
      v40 = *(v7 + 16);
      v41 = v58;
      v40(v56, v57, v58);
      sub_2406AA1DC(v50, v55, type metadata accessor for SetupContext);
      (*(v18 + 16))(v21, v49, v17);
      v42 = (*(v38 + 80) + 40) & ~*(v38 + 80);
      v43 = (v8 + *(v51 + 80) + v42) & ~*(v51 + 80);
      v44 = (v52 + *(v18 + 80) + v43) & ~*(v18 + 80);
      v45 = swift_allocObject();
      *(v45 + 2) = 0;
      *(v45 + 3) = 0;
      *(v45 + 4) = v25;
      (*(v38 + 32))(&v45[v42], v56, v41);
      sub_2406AAB30(v55, &v45[v43], type metadata accessor for SetupContext);
      v48(&v45[v44], v21, v17);

      sub_240602F08(0, 0, v54, &unk_240774A38, v45);

      (*(v18 + 8))(v49, v17);
      goto LABEL_10;
    }

    sub_2405B8A50(v16, &qword_27E4BB8B8, &qword_2407749F8);
  }

  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v26 = sub_240759AE4();
  __swift_project_value_buffer(v26, qword_27E4B8518);
  v27 = *(v7 + 16);
  v28 = v58;
  v27(v10, v57, v58);
  v29 = sub_240759AC4();
  v30 = sub_24075A5E4();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v60 = v32;
    *v31 = 136315138;
    v27(v56, v10, v28);
    v33 = sub_24075A0E4();
    v35 = v34;
    (*(v7 + 8))(v10, v28);
    v36 = sub_2405BBA7C(v33, v35, &v60);

    *(v31 + 4) = v36;
    _os_log_impl(&dword_240579000, v29, v30, "Received a new XPC message but lost self: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x245CC76B0](v32, -1, -1);
    MEMORY[0x245CC76B0](v31, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v28);
  }

LABEL_10:
  v46 = v59;
  *(v59 + 32) = 0;
  result = 0.0;
  *v46 = 0u;
  v46[1] = 0u;
  return result;
}

uint64_t sub_2406A4F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_2406A4F94, a4, 0);
}

uint64_t sub_2406A4F94()
{
  sub_2406A26D4(v0[3], v0[4], v0[5]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_2406A4FF8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB8B8, &qword_2407749F8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23 - v4;
  v6 = sub_240759BF4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_projectBox();
  if (qword_27E4B5EB0 != -1)
  {
    swift_once();
  }

  v11 = sub_240759AE4();
  __swift_project_value_buffer(v11, qword_27E4B8500);
  v12 = *(v7 + 16);
  v12(v9, a1, v6);
  v13 = sub_240759AC4();
  v14 = sub_24075A5E4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v5;
    *v15 = 138412290;
    sub_2406AB0E4(&qword_27E4B9BA0, MEMORY[0x277D855E8], MEMORY[0x277D855F0]);
    swift_allocError();
    v16 = v10;
    v12(v17, v9, v6);
    v18 = _swift_stdlib_bridgeErrorToNSError();
    (*(v7 + 8))(v9, v6);
    *(v15 + 4) = v18;
    v19 = v24;
    *v24 = v18;
    v10 = v16;
    _os_log_impl(&dword_240579000, v13, v14, "XPC session cancelled: %@", v15, 0xCu);
    sub_2405B8A50(v19, &qword_27E4B92A0, &qword_240762400);
    v5 = v25;
    MEMORY[0x245CC76B0](v19, -1, -1);
    MEMORY[0x245CC76B0](v15, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  swift_beginAccess();
  sub_2405B044C(v10, v5, &qword_27E4BB8B8, &qword_2407749F8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB858, &qword_240774998);
  v21 = *(v20 - 8);
  result = (*(v21 + 48))(v5, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_24075A424();
    return (*(v21 + 8))(v5, v20);
  }

  return result;
}

uint64_t sub_2406A53AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_240759C44();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v7 = type metadata accessor for MachSetupMessage(0);
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB8D0, &qword_240774A20);
  v5[17] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB8D8, &qword_240774A28);
  v5[18] = v8;
  v5[19] = *(v8 - 8);
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2406A55BC, 0, 0);
}

uint64_t sub_2406A55BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB8C8, &qword_240774A08);
  sub_24075A444();
  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_2406A5684;
  v2 = v0[17];
  v3 = v0[18];

  return MEMORY[0x2822003E8](v2, 0, 0, v3);
}

uint64_t sub_2406A5684()
{

  return MEMORY[0x2822009F8](sub_2406A5780, 0, 0);
}

uint64_t sub_2406A5780()
{
  v29 = v0;
  v1 = v0[17];
  if ((*(v0[10] + 48))(v1, 1, v0[9]) == 1)
  {
    (*(v0[19] + 8))(v0[20], v0[18]);
    if (qword_27E4B5EB0 != -1)
    {
      swift_once();
    }

    v2 = sub_240759AE4();
    __swift_project_value_buffer(v2, qword_27E4B8500);
    v3 = sub_240759AC4();
    v4 = sub_24075A5C4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_240579000, v3, v4, "End of outgoing messages to daemon", v5, 2u);
      MEMORY[0x245CC76B0](v5, -1, -1);
    }

    v6 = v0[1];

    return v6();
  }

  else
  {
    sub_2406AAB30(v1, v0[16], type metadata accessor for MachSetupMessage);
    if (qword_27E4B5EB0 != -1)
    {
      swift_once();
    }

    v8 = v0[15];
    v9 = v0[16];
    v10 = sub_240759AE4();
    v0[22] = __swift_project_value_buffer(v10, qword_27E4B8500);
    sub_2406AA1DC(v9, v8, type metadata accessor for MachSetupMessage);
    v11 = sub_240759AC4();
    v12 = sub_24075A5D4();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[15];
    if (v13)
    {
      v15 = v0[14];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v28 = v17;
      *v16 = 136315138;
      sub_2406AA1DC(v14, v15, type metadata accessor for MachSetupMessage);
      v18 = sub_24075A0E4();
      v20 = v19;
      sub_2406AA244(v14, type metadata accessor for MachSetupMessage);
      v21 = sub_2405BBA7C(v18, v20, &v28);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_240579000, v11, v12, "Sending message: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x245CC76B0](v17, -1, -1);
      MEMORY[0x245CC76B0](v16, -1, -1);
    }

    else
    {

      sub_2406AA244(v14, type metadata accessor for MachSetupMessage);
    }

    v22 = v0[16];
    v23 = v0[3];
    v24 = swift_task_alloc();
    v0[23] = v24;
    *(v24 + 16) = v23;
    *(v24 + 24) = v22;
    v25 = swift_task_alloc();
    v0[24] = v25;
    *v25 = v0;
    v25[1] = sub_2406A5C10;
    v26 = v0[8];
    v27 = v0[4];

    return MEMORY[0x2822008A0](v26, 0, 0, 0x293A5F28646E6573, 0xE800000000000000, sub_2406AAF14, v24, v27);
  }
}

uint64_t sub_2406A5C10()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_2406A6394;
  }

  else
  {

    v2 = sub_2406A5D2C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2406A5D2C()
{
  v63 = v0;
  v1 = *(v0[5] + 16);
  v1(v0[7], v0[8], v0[4]);
  v2 = sub_240759AC4();
  v3 = sub_24075A5D4();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[7];
  if (v4)
  {
    v6 = v0[5];
    v7 = v0[6];
    v8 = v0[4];
    v9 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v62[0] = v59;
    *v9 = 136315138;
    v1(v7, v5, v8);
    v10 = sub_24075A0E4();
    v12 = v11;
    v13 = *(v6 + 8);
    v13(v5, v8);
    v14 = sub_2405BBA7C(v10, v12, v62);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_240579000, v2, v3, "Sent message and received reply: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v59);
    MEMORY[0x245CC76B0](v59, -1, -1);
    MEMORY[0x245CC76B0](v9, -1, -1);
  }

  else
  {
    v15 = v0[4];
    v16 = v0[5];

    v13 = *(v16 + 8);
    v13(v5, v15);
  }

  v17 = v0[25];
  sub_2406AB0E4(&qword_27E4BB878, type metadata accessor for MachSetupMessage, &protocol conformance descriptor for MachSetupMessage);
  sub_240759C34();
  if (v17)
  {
    v13(v0[8], v0[4]);
    sub_2406AA1DC(v0[16], v0[11], type metadata accessor for MachSetupMessage);
    v18 = v17;
    v19 = sub_240759AC4();
    v20 = sub_24075A5E4();

    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[16];
    if (v21)
    {
      v23 = v0[14];
      v24 = v0[11];
      v60 = v0[16];
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v62[0] = v27;
      *v25 = 136315394;
      sub_2406AA1DC(v24, v23, type metadata accessor for MachSetupMessage);
      v28 = sub_24075A0E4();
      v30 = v29;
      sub_2406AA244(v24, type metadata accessor for MachSetupMessage);
      v31 = sub_2405BBA7C(v28, v30, v62);

      *(v25 + 4) = v31;
      *(v25 + 12) = 2112;
      v32 = v17;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 14) = v33;
      *v26 = v33;
      _os_log_impl(&dword_240579000, v19, v20, "Failed to send message (%s) with error: %@", v25, 0x16u);
      sub_2405B8A50(v26, &qword_27E4B92A0, &qword_240762400);
      MEMORY[0x245CC76B0](v26, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x245CC76B0](v27, -1, -1);
      MEMORY[0x245CC76B0](v25, -1, -1);

      v34 = v60;
    }

    else
    {
      v47 = v0[11];

      sub_2406AA244(v47, type metadata accessor for MachSetupMessage);
      v34 = v22;
    }
  }

  else
  {
    sub_2406AA1DC(v0[13], v0[12], type metadata accessor for MachSetupMessage);
    v35 = sub_240759AC4();
    v36 = sub_24075A5D4();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v0[16];
    if (v37)
    {
      v39 = v0[14];
      v40 = v0[12];
      v58 = v0[4];
      v61 = v0[8];
      v57 = v0[13];
      v56 = v0[16];
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v62[0] = v42;
      *v41 = 136315138;
      sub_2406AA1DC(v40, v39, type metadata accessor for MachSetupMessage);
      v43 = sub_24075A0E4();
      v45 = v44;
      sub_2406AA244(v40, type metadata accessor for MachSetupMessage);
      v46 = sub_2405BBA7C(v43, v45, v62);

      *(v41 + 4) = v46;
      _os_log_impl(&dword_240579000, v35, v36, "Decoded response: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x245CC76B0](v42, -1, -1);
      MEMORY[0x245CC76B0](v41, -1, -1);

      sub_2406AA244(v57, type metadata accessor for MachSetupMessage);
      v13(v61, v58);
      v34 = v56;
    }

    else
    {
      v49 = v0[12];
      v48 = v0[13];
      v50 = v0[8];
      v51 = v0[4];

      sub_2406AA244(v49, type metadata accessor for MachSetupMessage);
      sub_2406AA244(v48, type metadata accessor for MachSetupMessage);
      v13(v50, v51);
      v34 = v38;
    }
  }

  sub_2406AA244(v34, type metadata accessor for MachSetupMessage);
  v52 = swift_task_alloc();
  v0[21] = v52;
  *v52 = v0;
  v52[1] = sub_2406A5684;
  v53 = v0[17];
  v54 = v0[18];

  return MEMORY[0x2822003E8](v53, 0, 0, v54);
}

uint64_t sub_2406A6394()
{
  v26 = v0;

  v1 = v0[25];
  sub_2406AA1DC(v0[16], v0[11], type metadata accessor for MachSetupMessage);
  v2 = v1;
  v3 = sub_240759AC4();
  v4 = sub_24075A5E4();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[16];
  if (v5)
  {
    v7 = v0[14];
    v8 = v0[11];
    v24 = v0[16];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v9 = 136315394;
    sub_2406AA1DC(v8, v7, type metadata accessor for MachSetupMessage);
    v12 = sub_24075A0E4();
    v14 = v13;
    sub_2406AA244(v8, type metadata accessor for MachSetupMessage);
    v15 = sub_2405BBA7C(v12, v14, &v25);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2112;
    v16 = v1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v17;
    *v10 = v17;
    _os_log_impl(&dword_240579000, v3, v4, "Failed to send message (%s) with error: %@", v9, 0x16u);
    sub_2405B8A50(v10, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x245CC76B0](v11, -1, -1);
    MEMORY[0x245CC76B0](v9, -1, -1);

    v18 = v24;
  }

  else
  {
    v19 = v0[11];

    sub_2406AA244(v19, type metadata accessor for MachSetupMessage);
    v18 = v6;
  }

  sub_2406AA244(v18, type metadata accessor for MachSetupMessage);
  v20 = swift_task_alloc();
  v0[21] = v20;
  *v20 = v0;
  v20[1] = sub_2406A5684;
  v21 = v0[17];
  v22 = v0[18];

  return MEMORY[0x2822003E8](v21, 0, 0, v22);
}

uint64_t sub_2406A6668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v33 = a1;
  v34 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B18, &qword_24076CB30);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v30 - v10;
  v12 = sub_240759BE4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v4 + OBJC_IVAR____TtC12AppleIDSetup15SetupController_inactiveSession);
  if (v16)
  {
    v32 = v4;
    v17 = qword_27E4B5EB8;

    if (v17 != -1)
    {
      swift_once();
    }

    v18 = sub_240759AE4();
    __swift_project_value_buffer(v18, qword_27E4B8518);

    v19 = sub_240759AC4();
    v20 = sub_24075A5D4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v36 = v31;
      *v21 = 136315138;
      v35 = v16;
      sub_240759BD4();

      v22 = sub_24075A0E4();
      v24 = v6;
      v25 = sub_2405BBA7C(v22, v23, &v36);

      *(v21 + 4) = v25;
      v6 = v24;
      _os_log_impl(&dword_240579000, v19, v20, "Activating inactive session: %s", v21, 0xCu);
      v26 = v31;
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x245CC76B0](v26, -1, -1);
      MEMORY[0x245CC76B0](v21, -1, -1);
    }

    sub_240759B24();
    sub_240759B64();
    sub_240759B54();
    sub_240759BB4();
    if (v6)
    {
    }
  }

  else
  {
    sub_2405B044C(v4 + OBJC_IVAR____TtC12AppleIDSetup15SetupController_endpoint, v11, &qword_27E4B9B18, &qword_24076CB30);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_2405B8A50(v11, &qword_27E4B9B18, &qword_24076CB30);
      v27 = sub_2406A6DD0(0xD000000000000021, 0x80000002407867F0, v33, v34, a3, a4);
      if (!v5)
      {
        return v27;
      }
    }

    else
    {
      (*(v13 + 32))(v15, v11, v12);
      v28 = sub_2406A6A50(v15, v33, v34, a3, a4);
      if (!v5)
      {
        v16 = v28;
      }

      (*(v13 + 8))(v15, v12);
    }
  }

  return v16;
}

uint64_t sub_2406A6A50(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = a2;
  v41 = a3;
  v42 = a4;
  v8 = sub_240759B44();
  MEMORY[0x28223BE20](v8 - 8);
  v38 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_240759BE4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v36 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v19 = sub_240759AE4();
  __swift_project_value_buffer(v19, qword_27E4B8518);
  v20 = *(v11 + 16);
  v37 = a1;
  v43 = v20;
  v20(v18, a1, v10);
  v21 = sub_240759AC4();
  v22 = sub_24075A5D4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v35 = v5;
    v24 = v23;
    v33 = swift_slowAlloc();
    v44 = v33;
    *v24 = 136315138;
    v43(v16, v18, v10);
    v25 = sub_24075A0E4();
    v34 = a5;
    v27 = v26;
    (*(v11 + 8))(v18, v10);
    v28 = sub_2405BBA7C(v25, v27, &v44);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_240579000, v21, v22, "Creating new session with xpc endpoint: %s", v24, 0xCu);
    v29 = v33;
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x245CC76B0](v29, -1, -1);
    MEMORY[0x245CC76B0](v24, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v18, v10);
  }

  sub_240759BD4();
  v43(v36, v37, v10);
  v30 = *(v39 + 112);
  sub_240759B34();

  return sub_240759BC4();
}

uint64_t sub_2406A6DD0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_240759B44();
  MEMORY[0x28223BE20](v8 - 8);
  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v9 = sub_240759AE4();
  __swift_project_value_buffer(v9, qword_27E4B8518);

  v10 = sub_240759AC4();
  v11 = sub_24075A5D4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_2405BBA7C(a1, a2, &v18);
    _os_log_impl(&dword_240579000, v10, v11, "Creating new session for mach service: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x245CC76B0](v13, -1, -1);
    MEMORY[0x245CC76B0](v12, -1, -1);
  }

  sub_240759BD4();
  v14 = *(v17 + 112);

  v15 = v14;
  sub_240759B34();

  return sub_240759B14();
}

id __SetupController.__allocating_init(queue:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B18, &qword_24076CB30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = objc_allocWithZone(v2);
  v8 = sub_240759BE4();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  type metadata accessor for SetupController(0);
  swift_allocObject();
  v9 = a1;
  v10 = sub_2406A95B8(a1, v6, 0);
  v11 = type metadata accessor for __SetupController();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR_____AISSetupController_setupController] = v10;
  v15.receiver = v12;
  v15.super_class = v11;

  v13 = objc_msgSendSuper2(&v15, sel_init);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v13;
}

id __SetupController.init(queue:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B18, &qword_24076CB30);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_240759BE4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for SetupController(0);
  swift_allocObject();
  v6 = a1;
  v7 = sub_2406A95B8(a1, v4, 0);
  v8 = type metadata accessor for __SetupController();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR_____AISSetupController_setupController] = v7;
  v12.receiver = v9;
  v12.super_class = v8;

  v10 = objc_msgSendSuper2(&v12, sel_init);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v10;
}

uint64_t sub_2406A7458(void *a1, uint64_t a2, uint64_t a3)
{
  v70 = a2;
  v71 = a3;
  v4 = sub_240759C94();
  v66 = *(v4 - 8);
  v67 = v4;
  MEMORY[0x28223BE20](v4);
  v64 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_240759CE4();
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v62 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v7 - 8);
  v61 = &v58 - v8;
  v58 = type metadata accessor for SetupContext(0);
  v60 = *(v58 - 8);
  v9 = *(v60 + 64);
  v10 = MEMORY[0x28223BE20](v58);
  v11 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v59 = &v58 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v58 - v15;
  MEMORY[0x28223BE20](v14);
  v68 = &v58 - v17;
  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v18 = sub_240759AE4();
  __swift_project_value_buffer(v18, qword_27E4B8518);
  v19 = a1;
  v20 = sub_240759AC4();
  v21 = sub_24075A5C4();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    *(v22 + 4) = v19;
    *v23 = v19;
    v24 = v19;
    _os_log_impl(&dword_240579000, v20, v21, "__AISSetupController setup with context called: %@", v22, 0xCu);
    sub_2405B8A50(v23, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v23, -1, -1);
    v25 = v22;
    v11 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x245CC76B0](v25, -1, -1);
  }

  v26 = v19;
  v27 = sub_240759AC4();
  v28 = sub_24075A5D4();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    *(v29 + 4) = v26;
    *v30 = v26;
    v31 = v26;
    _os_log_impl(&dword_240579000, v27, v28, "Attempting to build setup context with compat objective-c context: %@", v29, 0xCu);
    sub_2405B8A50(v30, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v30, -1, -1);
    v32 = v29;
    v11 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x245CC76B0](v32, -1, -1);
  }

  SetupContext.Builder.init()(v72);
  SetupContext.Builder._context(_:)(v26);
  SetupContext.Builder.build()(v16);
  v33 = v68;
  sub_2406AAB30(v16, v68, type metadata accessor for SetupContext);
  v34 = v59;
  sub_2406AA1DC(v33, v59, type metadata accessor for SetupContext);
  v35 = v69;
  v36 = sub_240759AC4();
  v37 = sub_24075A5D4();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v73[0] = v69;
    *v38 = 136315394;
    v72[0] = *&v35[OBJC_IVAR_____AISSetupController_setupController];
    type metadata accessor for SetupController(0);

    v39 = sub_24075A0E4();
    v41 = sub_2405BBA7C(v39, v40, v73);

    *(v38 + 4) = v41;
    *(v38 + 12) = 2080;
    sub_2406AA1DC(v34, &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SetupContext);
    v42 = sub_24075A0E4();
    v44 = v43;
    sub_2406AA244(v34, type metadata accessor for SetupContext);
    v45 = v42;
    v11 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v46 = sub_2405BBA7C(v45, v44, v73);

    *(v38 + 14) = v46;
    _os_log_impl(&dword_240579000, v36, v37, "Calling setup controller (%s with built context: %s", v38, 0x16u);
    v47 = v69;
    swift_arrayDestroy();
    MEMORY[0x245CC76B0](v47, -1, -1);
    MEMORY[0x245CC76B0](v38, -1, -1);
  }

  else
  {

    sub_2406AA244(v34, type metadata accessor for SetupContext);
  }

  v48 = sub_24075A3D4();
  v49 = v61;
  (*(*(v48 - 8) + 56))(v61, 1, 1, v48);
  v50 = v68;
  sub_2406AA1DC(v68, v11, type metadata accessor for SetupContext);
  v51 = (*(v60 + 80) + 40) & ~*(v60 + 80);
  v52 = swift_allocObject();
  v52[2] = 0;
  v52[3] = 0;
  v52[4] = v35;
  sub_2406AAB30(v11, v52 + v51, type metadata accessor for SetupContext);
  v53 = (v52 + ((v9 + v51 + 7) & 0xFFFFFFFFFFFFFFF8));
  v55 = v70;
  v54 = v71;
  *v53 = v70;
  v53[1] = v54;
  v56 = v35;
  sub_24057B5BC(v55, v54);
  sub_240602F08(0, 0, v49, &unk_2407748B8, v52);

  return sub_2406AA244(v50, type metadata accessor for SetupContext);
}

uint64_t sub_2406A7EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[73] = a7;
  v7[72] = a6;
  v7[71] = a5;
  v7[70] = a4;
  v8 = sub_240759C94();
  v7[74] = v8;
  v7[75] = *(v8 - 8);
  v7[76] = swift_task_alloc();
  v9 = sub_240759CE4();
  v7[77] = v9;
  v7[78] = *(v9 - 8);
  v7[79] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2406A7FD4, 0, 0);
}

uint64_t sub_2406A7FD4()
{
  v0[80] = *(v0[70] + OBJC_IVAR_____AISSetupController_setupController);
  v1 = swift_task_alloc();
  v0[81] = v1;
  *v1 = v0;
  v1[1] = sub_2406A8080;
  v2 = v0[71];

  return sub_24069F9A0((v0 + 22), v2);
}

uint64_t sub_2406A8080()
{
  *(*v1 + 656) = v0;

  if (v0)
  {
    v2 = sub_2406A8628;
  }

  else
  {
    v2 = sub_2406A8194;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2406A8194()
{
  v38 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 224);
  *(v0 + 48) = v1;
  *(v0 + 64) = v2;
  v3 = *(v0 + 240);
  v5 = *(v0 + 176);
  v4 = *(v0 + 192);
  *(v0 + 16) = v5;
  *(v0 + 32) = v4;
  *(v0 + 112) = v4;
  *(v0 + 128) = v1;
  *(v0 + 144) = v2;
  *(v0 + 160) = v3;
  *(v0 + 80) = v3;
  *(v0 + 96) = v5;
  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v6 = sub_240759AE4();
  __swift_project_value_buffer(v6, qword_27E4B8518);
  sub_2405B044C(v0 + 16, v0 + 256, &qword_27E4BB898, &unk_2407749D0);
  v7 = 0;
  v8 = sub_240759AC4();
  v9 = sub_24075A5C4();
  sub_2405B8A50(v0 + 16, &qword_27E4BB898, &unk_2407749D0);

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v37 = v11;
    *v10 = 136315394;
    v12 = *(v0 + 144);
    *(v0 + 368) = *(v0 + 128);
    *(v0 + 384) = v12;
    *(v0 + 400) = *(v0 + 160);
    v13 = *(v0 + 112);
    *(v0 + 336) = *(v0 + 96);
    *(v0 + 352) = v13;
    sub_2405B044C(v0 + 16, v0 + 416, &qword_27E4BB898, &unk_2407749D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB898, &unk_2407749D0);
    v14 = sub_24075A0E4();
    v16 = sub_2405BBA7C(v14, v15, &v37);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2080;
    *(v0 + 552) = 0;
    v17 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B8A20, qword_240767ED0);
    v18 = sub_24075A0E4();
    v20 = sub_2405BBA7C(v18, v19, &v37);

    *(v10 + 14) = v20;
    _os_log_impl(&dword_240579000, v8, v9, "Returning setup report  converted into objc: %s with error: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC76B0](v11, -1, -1);
    MEMORY[0x245CC76B0](v10, -1, -1);
  }

  v21 = *(v0 + 632);
  v35 = *(v0 + 624);
  v36 = *(v0 + 616);
  v22 = *(v0 + 608);
  v34 = *(v0 + 600);
  v23 = *(v0 + 592);
  v24 = *(v0 + 584);
  v25 = *(v0 + 576);
  v26 = *(*(v0 + 640) + 112);
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  *(v27 + 24) = v24;
  v28 = *(v0 + 144);
  *(v27 + 64) = *(v0 + 128);
  *(v27 + 80) = v28;
  *(v27 + 96) = *(v0 + 160);
  v29 = *(v0 + 112);
  *(v27 + 32) = *(v0 + 96);
  *(v27 + 48) = v29;
  *(v27 + 112) = 0;
  *(v0 + 528) = sub_2406AAB98;
  *(v0 + 536) = v27;
  *(v0 + 496) = MEMORY[0x277D85DD0];
  *(v0 + 504) = 1107296256;
  *(v0 + 512) = sub_240644810;
  *(v0 + 520) = &block_descriptor_56;
  v30 = _Block_copy((v0 + 496));
  v31 = v26;
  sub_24057B5BC(v25, v24);
  sub_240759CC4();
  *(v0 + 544) = MEMORY[0x277D84F90];
  sub_2406AB0E4(&qword_27E4B9B58, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B60, &unk_240770600);
  sub_240635FA0(&qword_27E4B9B68, &qword_27E4B9B60, &unk_240770600);
  sub_24075A794();
  MEMORY[0x245CC6370](0, v21, v22, v30);
  _Block_release(v30);

  (*(v34 + 8))(v22, v23);
  (*(v35 + 8))(v21, v36);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_2406A8628()
{
  v45 = v0;
  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 656);
  v2 = sub_240759AE4();
  __swift_project_value_buffer(v2, qword_27E4B8518);
  v3 = v1;
  v4 = sub_240759AC4();
  v5 = sub_24075A5E4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 656);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_240579000, v4, v5, "Failed to setup with error: %@", v7, 0xCu);
    sub_2405B8A50(v8, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v8, -1, -1);
    MEMORY[0x245CC76B0](v7, -1, -1);
  }

  v11 = *(v0 + 656);

  v12 = v11;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_27E4B8518);
  sub_2405B044C(v0 + 16, v0 + 256, &qword_27E4BB898, &unk_2407749D0);
  v13 = v11;
  v14 = sub_240759AC4();
  v15 = sub_24075A5C4();
  sub_2405B8A50(v0 + 16, &qword_27E4BB898, &unk_2407749D0);

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v44 = v17;
    *v16 = 136315394;
    v18 = *(v0 + 144);
    *(v0 + 368) = *(v0 + 128);
    *(v0 + 384) = v18;
    *(v0 + 400) = *(v0 + 160);
    v19 = *(v0 + 112);
    *(v0 + 336) = *(v0 + 96);
    *(v0 + 352) = v19;
    sub_2405B044C(v0 + 16, v0 + 416, &qword_27E4BB898, &unk_2407749D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB898, &unk_2407749D0);
    v20 = sub_24075A0E4();
    v22 = sub_2405BBA7C(v20, v21, &v44);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2080;
    *(v0 + 552) = v11;
    v23 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B8A20, qword_240767ED0);
    v24 = sub_24075A0E4();
    v26 = sub_2405BBA7C(v24, v25, &v44);

    *(v16 + 14) = v26;
    _os_log_impl(&dword_240579000, v14, v15, "Returning setup report  converted into objc: %s with error: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC76B0](v17, -1, -1);
    MEMORY[0x245CC76B0](v16, -1, -1);
  }

  v27 = v11;
  v28 = *(v0 + 632);
  v42 = *(v0 + 624);
  v43 = *(v0 + 616);
  v29 = *(v0 + 608);
  v40 = *(v0 + 592);
  v41 = *(v0 + 600);
  v30 = *(v0 + 584);
  v31 = *(v0 + 576);
  v32 = *(*(v0 + 640) + 112);
  v33 = swift_allocObject();
  *(v33 + 16) = v31;
  *(v33 + 24) = v30;
  v34 = *(v0 + 144);
  *(v33 + 64) = *(v0 + 128);
  *(v33 + 80) = v34;
  *(v33 + 96) = *(v0 + 160);
  v35 = *(v0 + 112);
  *(v33 + 32) = *(v0 + 96);
  *(v33 + 48) = v35;
  *(v33 + 112) = v27;
  *(v0 + 528) = sub_2406AAB98;
  *(v0 + 536) = v33;
  *(v0 + 496) = MEMORY[0x277D85DD0];
  *(v0 + 504) = 1107296256;
  *(v0 + 512) = sub_240644810;
  *(v0 + 520) = &block_descriptor_56;
  v36 = _Block_copy((v0 + 496));
  v37 = v32;
  sub_24057B5BC(v31, v30);
  sub_240759CC4();
  *(v0 + 544) = MEMORY[0x277D84F90];
  sub_2406AB0E4(&qword_27E4B9B58, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B60, &unk_240770600);
  sub_240635FA0(&qword_27E4B9B68, &qword_27E4B9B60, &unk_240770600);
  sub_24075A794();
  MEMORY[0x245CC6370](0, v28, v29, v36);
  _Block_release(v36);

  (*(v41 + 8))(v29, v40);
  (*(v42 + 8))(v28, v43);

  v38 = *(v0 + 8);

  return v38();
}

void sub_2406A8BE8(void (*a1)(void *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (*a3)
    {
      *&v11[24] = *(a3 + 24);
      *&v11[40] = *(a3 + 40);
      *&v11[56] = *(a3 + 56);
      *&v11[72] = *(a3 + 72);
      *&v11[8] = *(a3 + 8);
      *v11 = *a3;
      v6 = *(a3 + 16);
      v7 = *(a3 + 48);
      v12[2] = *(a3 + 32);
      v12[3] = v7;
      v12[4] = *(a3 + 64);
      v12[0] = *a3;
      v12[1] = v6;
      sub_2406AA12C(v12, v13);
      SetupReport.into()(v8);
      v10 = v9;
      v13[2] = *&v11[32];
      v13[3] = *&v11[48];
      v13[4] = *&v11[64];
      v13[0] = *v11;
      v13[1] = *&v11[16];
      sub_2406AA188(v13);
    }

    else
    {
      v10 = 0;
    }

    a1(v10, a4);
  }
}

void sub_2406A8DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_2407595C4();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id __SetupController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id __SetupController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for __SetupController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2406A8EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB8A0, &qword_2407749E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  (*(v5 + 16))(v11 - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  type metadata accessor for MachSetupMessage(0);
  sub_2406AB0E4(&qword_27E4BB880, type metadata accessor for MachSetupMessage, &protocol conformance descriptor for MachSetupMessage);
  sub_2406AB0E4(&qword_27E4BB878, type metadata accessor for MachSetupMessage, &protocol conformance descriptor for MachSetupMessage);
  sub_240759B94();
}

uint64_t sub_2406A90DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB888, &qword_2407749C0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  (*(v5 + 16))(v11 - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  type metadata accessor for MachRepairMessage(0);
  sub_2406AB0E4(&qword_27E4B8308, type metadata accessor for MachRepairMessage, &protocol conformance descriptor for MachRepairMessage);
  sub_2406AB0E4(&qword_27E4B8300, type metadata accessor for MachRepairMessage, &protocol conformance descriptor for MachRepairMessage);
  sub_240759B94();
}

uint64_t sub_2406A92C8(uint64_t a1)
{
  v2 = type metadata accessor for MachSetupMessage(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB8A8, &qword_2407749E8);
  MEMORY[0x28223BE20](v5);
  v7 = (v9 - v6);
  sub_2405B044C(a1, v9 - v6, &qword_27E4BB8A8, &qword_2407749E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9[1] = *v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB8A0, &qword_2407749E0);
    return sub_24075A354();
  }

  else
  {
    sub_2406AAB30(v7, v4, type metadata accessor for MachSetupMessage);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB8A0, &qword_2407749E0);
    return sub_24075A364();
  }
}

uint64_t sub_2406A9440(uint64_t a1)
{
  v2 = type metadata accessor for MachRepairMessage(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB890, &qword_2407749C8);
  MEMORY[0x28223BE20](v5);
  v7 = (v9 - v6);
  sub_2405B044C(a1, v9 - v6, &qword_27E4BB890, &qword_2407749C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9[1] = *v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB888, &qword_2407749C0);
    return sub_24075A354();
  }

  else
  {
    sub_2406AAB30(v7, v4, type metadata accessor for MachRepairMessage);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB888, &qword_2407749C0);
    return sub_24075A364();
  }
}

uint64_t sub_2406A95B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v32 = a2;
  v33 = a3;
  v31 = a1;
  v5 = sub_24075A634();
  v30 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24075A624();
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9AF8, &qword_24076CB20);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v28 - v10;
  v12 = sub_240759CB4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_240759CE4();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v19 = v31;
  *(v3 + OBJC_IVAR____TtC12AppleIDSetup15SetupController_inactiveSession) = 0;
  *(v3 + OBJC_IVAR____TtC12AppleIDSetup15SetupController_activeSession) = 0;
  if (!v19)
  {
    v28[1] = v18;
    v29 = v7;
    v31 = v5;
    qos_class_self();
    sub_240759CA4();
    v20 = *(v13 + 48);
    if (v20(v11, 1, v12) == 1)
    {
      (*(v13 + 104))(v15, *MEMORY[0x277D851B0], v12);
      if (v20(v11, 1, v12) != 1)
      {
        sub_2405B8A50(v11, &qword_27E4B9AF8, &qword_24076CB20);
      }
    }

    else
    {
      (*(v13 + 32))(v15, v11, v12);
    }

    sub_240590794(0, &qword_280FAD6F0, 0x277D85C78);
    sub_240759CD4();
    v34 = MEMORY[0x277D84F90];
    sub_2406AB0E4(&qword_280FAD6F8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B08, &qword_24076CB28);
    sub_240635FA0(&qword_280FAD728, &qword_27E4B9B08, &qword_24076CB28);
    sub_24075A794();
    (*(v30 + 104))(v29, *MEMORY[0x277D85260], v31);
    v19 = sub_24075A664();
  }

  *(v3 + 112) = v19;
  type metadata accessor for AISSetupAnalyticsEvent(0);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  v22 = OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_startDate;
  v23 = sub_240759744();
  v24 = *(*(v23 - 8) + 56);
  v24(v21 + v22, 1, 1, v23);
  v24(v21 + OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_endDate, 1, 1, v23);
  *(v21 + OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_didSucceed) = 0;
  v25 = OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_analytics;
  type metadata accessor for AISAnalytics();
  *(v21 + v25) = swift_initStaticObject();
  v26 = (v21 + OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_name);
  *v26 = 0xD00000000000001CLL;
  v26[1] = 0x8000000240788DE0;
  *(v4 + OBJC_IVAR____TtC12AppleIDSetup15SetupController_setupAnalyticsEvent) = v21;
  sub_2405E150C(v32, v4 + OBJC_IVAR____TtC12AppleIDSetup15SetupController_endpoint, &qword_27E4B9B18, &qword_24076CB30);
  *(v4 + OBJC_IVAR____TtC12AppleIDSetup15SetupController_inactiveSession) = v33;

  return v4;
}

uint64_t type metadata accessor for SetupController(uint64_t a1)
{
  result = qword_27E4BB848;
  if (!qword_27E4BB848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2406A9B78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2405CE450;

  return sub_24069F6E0(a1, v4, v5, v6);
}

uint64_t sub_2406A9C2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B92A8, &qword_240779B50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2406A9CA4(uint64_t a1)
{
  v36[3] = type metadata accessor for AISSetupAnalyticsEvent(0);
  v36[4] = &protocol witness table for AISSetupAnalyticsEvent;
  v36[0] = a1;

  v2 = sub_24075A084();

  sub_2405F7830(v36, &v34);
  v3 = swift_allocObject();
  sub_24058C9C0(&v34, v3 + 16);
  v32 = sub_2406AABA8;
  v33 = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24069F0E8;
  v31 = &block_descriptor_63;
  v4 = _Block_copy(aBlock);

  v5 = AnalyticsSendEventLazy();
  _Block_release(v4);

  if (!v5)
  {
    if (qword_280FAD9F0 != -1)
    {
      swift_once();
    }

    v20 = sub_240759AE4();
    __swift_project_value_buffer(v20, qword_280FADA00);
    sub_2405F7830(v36, aBlock);
    v7 = sub_240759AC4();
    v21 = sub_24075A5D4();
    if (os_log_type_enabled(v7, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v34 = v23;
      *v22 = 136315138;
      v24 = (*__swift_project_boxed_opaque_existential_1(aBlock, v31) + OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_name);
      v25 = *v24;
      v26 = v24[1];

      __swift_destroy_boxed_opaque_existential_1(aBlock);
      v27 = sub_2405BBA7C(v25, v26, &v34);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_240579000, v7, v21, "Failed to send Core Analytics event: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x245CC76B0](v23, -1, -1);
      v19 = v22;
      goto LABEL_10;
    }

LABEL_13:
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  if (qword_280FAD9F0 != -1)
  {
    swift_once();
  }

  v6 = sub_240759AE4();
  __swift_project_value_buffer(v6, qword_280FADA00);
  sub_2405F7830(v36, aBlock);
  sub_2405F7830(v36, &v34);
  v7 = sub_240759AC4();
  v8 = sub_24075A5D4();
  if (!os_log_type_enabled(v7, v8))
  {

    __swift_destroy_boxed_opaque_existential_1(&v34);
    goto LABEL_13;
  }

  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  v29 = v10;
  *v9 = 136315394;
  v11 = (*__swift_project_boxed_opaque_existential_1(aBlock, v31) + OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_name);
  v12 = *v11;
  v13 = v11[1];

  __swift_destroy_boxed_opaque_existential_1(aBlock);
  v14 = sub_2405BBA7C(v12, v13, &v29);

  *(v9 + 4) = v14;
  *(v9 + 12) = 2080;
  __swift_project_boxed_opaque_existential_1(&v34, v35);
  sub_240753CA8();
  sub_240590794(0, &qword_27E4B88E8, 0x277D82BB8);
  v15 = sub_240759F84();
  v17 = v16;

  __swift_destroy_boxed_opaque_existential_1(&v34);
  v18 = sub_2405BBA7C(v15, v17, &v29);

  *(v9 + 14) = v18;
  _os_log_impl(&dword_240579000, v7, v8, "Sent Core Analytics event:  %s %s", v9, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x245CC76B0](v10, -1, -1);
  v19 = v9;
LABEL_10:
  MEMORY[0x245CC76B0](v19, -1, -1);

  return __swift_destroy_boxed_opaque_existential_1(v36);
}

uint64_t sub_2406AA1DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2406AA244(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2406AA2C8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(0, *(v0 + 32));
  }

  return result;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2406AA314(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for SetupContext(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2405DA4B0;

  return sub_2406A7EAC(a1, v7, v8, v9, v1 + v6, v11, v12);
}

void sub_2406AA458(uint64_t a1)
{
  sub_240635A98(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of SetupController.setup(with:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 216) + **(*v2 + 216));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2405DA4B0;

  return v8(a1, a2);
}

uint64_t dispatch thunk of SetupController.launchViewService(with:)(uint64_t a1)
{
  v6 = (*(*v1 + 224) + **(*v1 + 224));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2405CE450;

  return v6(a1);
}

uint64_t dispatch thunk of SetupController.send(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 232) + **(*v2 + 232));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2405DA4B0;

  return v8(a1, a2);
}

uint64_t sub_2406AA934()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB860, &unk_2407749A0) - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB858, &qword_240774998) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_2406A37C0((v0 + 16), v0 + v2, v5);
}

uint64_t sub_2406AAA1C(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB860, &unk_2407749A0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB858, &qword_240774998) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_2406A3A14(a1, v1 + v4, v7);
}

uint64_t sub_2406AAB30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_49Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_2406AAC5C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

double sub_2406AACEC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB8B8, &qword_2407749F8) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for SetupContext(0) - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_2406A48B8(a1, v2 + v6, v9, a2);
}

uint64_t sub_2406AADE8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB8C8, &qword_240774A08) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2405DA4B0;

  return sub_2406A53AC(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_2406AAF1C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_240759C44() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for SetupContext(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB858, &qword_240774998) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_2405DA4B0;

  return sub_2406A4F70(a1, v13, v14, v15, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_2406AB0E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t AISAppleIDSignInResult.authResults.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AISAppleIDSignInResult_authResults;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id AISAppleIDSignInResult.__allocating_init(authResults:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___AISAppleIDSignInResult_authResults] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id AISAppleIDSignInResult.init(authResults:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___AISAppleIDSignInResult_authResults] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id AISAppleIDSignInResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AISAppleIDSignInResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ResourceAcquisitionManager.__allocating_init()()
{
  v0 = swift_allocObject();
  ResourceAcquisitionManager.init()(v0, v1, v2, v3);
  return v0;
}

uint64_t sub_2406AB70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  type metadata accessor for ResourceAcquisitionManager.Acquisition(255, *(*v4 + 80), a3, a4);
  sub_24075A714();
  v6 = *(*v5 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v5 + v7));
  sub_2406ACAB8((v5 + v6), &v9);
  os_unfair_lock_unlock((v5 + v7));

  return v9;
}

void sub_2406AB7E4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*a3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a3 + v6));
  a1(a3 + v5);
  os_unfair_lock_unlock((a3 + v6));
}

uint64_t sub_2406AB89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  type metadata accessor for ResourceAcquisitionManager.Acquisition(255, *(*v4 + 80), a3, a4);
  sub_24075A714();
  v6 = *(*v5 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v5 + v7));
  sub_2406ACAD8((v5 + v6));
  os_unfair_lock_unlock((v5 + v7));
}

uint64_t *ResourceAcquisitionManager.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v8 = 0;
  type metadata accessor for ResourceAcquisitionManager.Acquisition(255, *(v5 + 80), a3, a4);
  v6 = sub_24075A714();
  v4[2] = sub_2406AC3E8(&v8, v6);
  return v4;
}

void *sub_2406AB9DC(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*v4 + 80);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v25 - v11;
  sub_2406ABB80(v10, v13, v14, v15);
  type metadata accessor for ResourceAcquisitionManager.Acquisition(0, v8, v16, v17);
  a1();

  v19 = sub_2406AC730(v12, a3, a4, v18);
  (*(v9 + 8))(v12, v8);

  sub_2406AB89C(v20, v21, v22, v23);
  return v19;
}

void *ResourceAcquisitionManager.Acquisition.__allocating_init(wrappedValue:relinquish:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2406AC730(a1, a2, a3, a4);
  (*(*(*(v4 + 80) - 8) + 8))(a1);
  return v6;
}

BOOL sub_2406ABB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_2406AB70C(a1, a2, a3, a4);
  if (v4)
  {

    sub_2406AC00C(v5);
    sub_2406AB89C(0, v6, v7, v8);
  }

  return v4 != 0;
}

uint64_t ResourceAcquisitionManager.deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2406ABB80(a1, a2, a3, a4);

  return v4;
}

uint64_t ResourceAcquisitionManager.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2406ABB80(a1, a2, a3, a4);

  return swift_deallocClassInstance();
}

uint64_t sub_2406ABC40@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  sub_24075A714();
  v4 = *(*v3 + *MEMORY[0x277D841D0] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v3 + v5));
  sub_2406AC78C(v3 + v4, a1);
  os_unfair_lock_unlock((v3 + v5));
}

uint64_t sub_2406ABD14(uint64_t a1)
{
  sub_2406AC47C();
  v2 = sub_24075A714();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

void (*sub_2406ABD9C(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_24075A714();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  sub_2406ABC40(v9);
  return sub_2406ABEB8;
}

void sub_2406ABEB8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_2406AC47C();
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    sub_2406AC47C();
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

void *ResourceAcquisitionManager.Acquisition.init(wrappedValue:relinquish:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = sub_2406AC540(a1, a2, a3);
  (*(*(*(v5 + 80) - 8) + 8))(a1);
  return v6;
}

uint64_t sub_2406AC00C(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](a1);
  v25 = &v24 - v4;
  v5 = sub_24075A714();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v24 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - v13;
  sub_2406ABC40(&v24 - v13);
  v26 = v3;
  (*(v3 + 56))(v12, 1, 1, v2);
  sub_2406AC47C();
  v27 = *(v6 + 8);
  v27(v12, v5);
  v15 = v1[2];

  v28 = v2;
  swift_getFunctionTypeMetadata1();
  sub_24075A714();
  v16 = *(*v15 + *MEMORY[0x277D841D0] + 16);
  v17 = (*(*v15 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v15 + v17));
  sub_2406AC800((v15 + v16), &v29);
  os_unfair_lock_unlock((v15 + v17));

  v18 = v29.n128_u64[0];
  if (v29.n128_u64[0])
  {
    v19 = v29.n128_i64[1];
    (*(v6 + 16))(v9, v14, v5);
    v20 = v26;
    if ((*(v26 + 48))(v9, 1, v2) == 1)
    {
      v21 = v27;
      v27(v14, v5);
      sub_24058CA60(v18, v19);
      return v21(v9, v5);
    }

    v23 = v25;
    (*(v20 + 32))(v25, v9, v2);
    v18(v23);
    sub_24058CA60(v18, v19);
    (*(v20 + 8))(v23, v2);
  }

  return (v27)(v14, v5);
}

uint64_t ResourceAcquisitionManager.Acquisition.deinit()
{

  sub_2406AC00C(v1);

  return v0;
}

uint64_t ResourceAcquisitionManager.Acquisition.__deallocating_deinit()
{
  ResourceAcquisitionManager.Acquisition.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2406AC3E8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_24075A8E4();
  return sub_24075A8D4();
}

uint64_t sub_2406AC47C()
{
  v1 = *(v0 + 24);
  sub_24075A714();
  v2 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v1 + v3));
  sub_2406ACA10(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

void *sub_2406AC540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 80);
  v8 = sub_24075A714();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - v10;
  v12 = *(v7 - 8);
  (*(v12 + 16))(v18 - v10, a1, v7);
  (*(v12 + 56))(v11, 0, 1, v7);
  v13 = sub_2406AC3E8(v11, v8);
  (*(v9 + 8))(v11, v8);
  v3[3] = v13;
  v14 = swift_allocObject();
  v14[2] = v7;
  v14[3] = a2;
  v14[4] = a3;
  v18[0] = sub_2406AC9E8;
  v18[1] = v14;
  swift_getFunctionTypeMetadata1();
  v15 = sub_24075A714();
  v16 = sub_2406AC3E8(v18, v15);

  v3[2] = v16;
  return v3;
}

void *sub_2406AC730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ResourceAcquisitionManager.Acquisition(0, *(v4 + 80), a3, a4);
  swift_allocObject();
  return sub_2406AC540(a1, a2, a3);
}

__n128 sub_2406AC800@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  *a1 = 0uLL;
  return result;
}

uint64_t sub_2406ACA10(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = sub_24075A714();
  v5 = *(v4 - 8);
  (*(v5 + 8))(a1, v4);
  return (*(v5 + 16))(a1, v3, v4);
}

uint64_t sub_2406ACAD8(void *a1)
{
  v3 = *(v1 + 24);

  *a1 = v3;
}

uint64_t sub_2406ACB20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x277D841D0]) - 8) + 16))(a2, v3);
}

uint64_t SecureEnclave.P256.Signing.PrivateKey.signature<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_240759F04();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240759EA4();
  if (!v4)
  {
    v3 = sub_240759EE4();
    (*(v6 + 8))(v8, v5);
  }

  return v3;
}

uint64_t P256.Signing.PublicKey.isValidSignature<A>(_:for:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_240759F04();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - v12;
  v16[2] = a1;
  v16[3] = a2;
  sub_2405BB9D4(a1, a2);
  sub_2405BE3F8();
  sub_240759EF4();
  (*(v8 + 32))(v13, v11, v7);
  v14 = sub_240759F14();
  (*(v8 + 8))(v13, v7);
  return v14 & 1;
}

SecAccessControlRef sub_2406AD000(uint64_t (*a1)(uint64_t, SecAccessControlRef, void))
{
  result = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBEE8], 0, 0);
  if (result)
  {
    return a1(1, result, 0);
  }

  __break(1u);
  return result;
}

uint64_t sub_2406AD0B8@<X0>(void (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  a1();
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a3, 0, 1, v5);
}

SecAccessControlRef sub_2406AD168(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, SecAccessControlRef, void))
{
  result = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBEE8], 0, 0);
  if (result)
  {
    return a3(1, result, 0);
  }

  __break(1u);
  return result;
}

uint64_t sub_2406AD204@<X0>(void (*a1)(void)@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  a1();
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a3, 0, 1, v5);
}

uint64_t sub_2406AD2C0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_2406AD3A0@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t Sequence.asyncCompactMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return MEMORY[0x2822009F8](sub_2406AD474, 0, 0);
}

uint64_t sub_2406AD474()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v9 = *(v0 + 48);
  v3 = sub_24075A714();
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = *(v0 + 24);
  *(v4 + 16) = v2;
  *(v4 + 24) = v9;
  *(v4 + 40) = v1;
  *(v4 + 48) = v5;
  v6 = sub_24075A334();
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = sub_2406AD5AC;

  return MEMORY[0x282200740](v0 + 16, v3, v6, 0, 0, &unk_240774C60, v4, v3);
}

uint64_t sub_2406AD5AC()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_2405C2BB4;
  }

  else
  {

    v2 = sub_240671018;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2406AD6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v8[4] = a1;
  v8[5] = a2;
  v10 = sub_24075A714();
  v8[12] = v10;
  v8[13] = *(v10 - 8);
  v8[14] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[15] = AssociatedTypeWitness;
  v12 = *(AssociatedTypeWitness - 8);
  v8[16] = v12;
  v8[17] = *(v12 + 64);
  v8[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v8[19] = swift_task_alloc();
  sub_24075A714();
  v8[20] = swift_task_alloc();
  v8[21] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  v13 = sub_24075A4F4();
  v8[22] = v13;
  v8[23] = *(v13 - 8);
  v8[24] = swift_task_alloc();
  sub_24075A714();
  v8[25] = swift_task_alloc();
  v8[26] = *(a6 - 8);
  v8[27] = swift_task_alloc();
  v14 = swift_getAssociatedTypeWitness();
  v8[28] = v14;
  v8[29] = *(v14 - 8);
  v8[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2406ADA1C, 0, 0);
}

uint64_t sub_2406ADA1C()
{
  v1 = v0[16];
  (*(v0[26] + 16))(v0[27], v0[6], v0[9]);
  sub_24075A1C4();
  while (1)
  {
    v2 = v0[25];
    v3 = v0[15];
    swift_getAssociatedConformanceWitness();
    sub_24075A734();
    if ((*(v1 + 48))(v2, 1, v3) == 1)
    {
      break;
    }

    v4 = v0[25];
    v5 = v0[18];
    v6 = v0[19];
    v7 = v0[15];
    v8 = v0[8];
    v19 = v0[7];
    v20 = v0[11];
    v9 = sub_24075A3D4();
    v18 = *(v0 + 9);
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = *(v1 + 32);
    v10(v5, v4, v7);
    v11 = (*(v1 + 80) + 72) & ~*(v1 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = v18;
    *(v12 + 48) = v20;
    *(v12 + 56) = v19;
    *(v12 + 64) = v8;
    v10(v12 + v11, v5, v7);
    v13 = sub_24075A504();

    sub_2406AE390(v6, &unk_240774C70, v12, v13);
    sub_24066B5D8(v6);
  }

  (*(v0[29] + 8))(v0[30], v0[28]);
  v0[2] = sub_24075A2E4();
  sub_24075A4D4();
  v14 = swift_task_alloc();
  v0[31] = v14;
  *v14 = v0;
  v14[1] = sub_2406ADD38;
  v15 = v0[22];
  v16 = v0[20];

  return MEMORY[0x2822004E8](v16, 0, 0, v15, v0 + 3);
}

uint64_t sub_2406ADD38()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_2406AE0B8;
  }

  else
  {
    v2 = sub_2406ADE4C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2406ADE4C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 32);
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
    *v4 = *(v0 + 16);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 112);
    v8 = *(v0 + 88);
    v14 = *(v0 + 72);
    (*(v3 + 32))(v7, v1, v2);
    v9 = swift_task_alloc();
    *(v9 + 16) = v14;
    *(v9 + 32) = v8;
    *(v9 + 40) = v0 + 16;
    sub_24062239C(sub_2406AE640, v9, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, v10, v0 + 264);
    (*(v3 + 8))(v7, v2);

    v11 = swift_task_alloc();
    *(v0 + 248) = v11;
    *v11 = v0;
    v11[1] = sub_2406ADD38;
    v12 = *(v0 + 176);
    v13 = *(v0 + 160);

    return MEMORY[0x2822004E8](v13, 0, 0, v12, v0 + 24);
  }
}

uint64_t sub_2406AE0B8()
{
  (*(v0[23] + 8))(v0[24], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2406AE1A8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2405DA4B0;

  return sub_2406AD6C8(a1, a2, v9, v11, v10, v6, v7, v8);
}

uint64_t sub_2406AE284(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_2405CE450;

  return v11(a1, a6);
}

uint64_t sub_2406AE390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v19 - v9;
  sub_24066B568(a1, v19 - v9);
  v11 = sub_24075A3D4();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_24066B5D8(v10);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_24075A344();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_24075A3C4();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v5;
  v17 = (v15 | v13);
  if (v15 | v13)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v13;
    v20[3] = v15;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v16;
  swift_task_create();
}

uint64_t sub_2406AE564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24075A334();
  return sub_24075A314();
}

uint64_t sub_2406AE664(uint64_t a1)
{
  v3 = v2;
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_2405CE450;

  return sub_2406AE284(a1, v7, v8, v9, v10, v1 + v6);
}

uint64_t MessageSessionTransport.init(templateSession:identifier:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v20 = a2;
  v21 = a3;
  v8 = type metadata accessor for MessageSessionTransport(0, a4, a5, a4);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v20 - v11;
  *(v12 + 2) = 0u;
  *(v12 + 3) = 0u;
  v13 = *(v10 + 52);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71D0, &unk_240770200);
  v15 = *(*(v14 - 8) + 56);
  v15(&v12[v13], 1, 1, v14);
  v16 = *(v8 + 56);
  v15(&v12[v16], 1, 1, v14);
  v17 = [objc_allocWithZone(MEMORY[0x277D02880]) initWithTemplate_];
  if (v17)
  {
    *v12 = a1;
    *(v12 + 1) = v17;
    v18 = v21;
    *(v12 + 2) = v20;
    *(v12 + 3) = v18;
    (*(v9 + 16))(a6, v12, v8);
    (*(v9 + 56))(a6, 0, 1, v8);
    return (*(v9 + 8))(v12, v8);
  }

  else
  {

    sub_2405B8A50(&v12[v13], &qword_27E4B71C8, &unk_240762450);
    sub_2405B8A50(&v12[v16], &qword_27E4B71C8, &unk_240762450);
    return (*(v9 + 56))(a6, 1, 1, v8);
  }
}

uint64_t sub_2406AE9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = *(a1 + 32);
  if (a3)
  {
    v7 = sub_240759F74();
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (a4)
  {
LABEL_3:
    v4 = sub_240759F74();
  }

LABEL_4:

  v6(a2, v7, v4);
}

void sub_2406AEAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = sub_240759F54();
    if (a3)
    {
LABEL_3:
      v8 = sub_240759F54();
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  v9 = v8;
  (*(a4 + 16))(a4, a1, v7);
}

uint64_t MessageSessionTransport.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MessageSessionTransport.onReceive(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_24058CA60(*(v4 + 32), *(v4 + 40));
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  (*(*(a3 - 8) + 32))(a4, v4, a3);
}

uint64_t MessageSessionTransport.onInvalidation(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_24058CA60(*(v4 + 48), *(v4 + 56));
  *(v4 + 48) = a1;
  *(v4 + 56) = a2;
  (*(*(a3 - 8) + 32))(a4, v4, a3);
}

uint64_t MessageSessionTransport.build()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 32);
  if (v4)
  {
    v6 = *(v2 + 40);

    MessageSessionTransport.activate(with:)(v4, v6, a1, a2);
    return sub_24058CA60(v4, v6);
  }

  else
  {
    (*(*(a1 - 8) + 8))(v2, a1);
    type metadata accessor for MessageSessionTransport.Failure(0, *(a1 + 16), *(a1 + 24), v8);
    swift_getWitnessTable();
    swift_allocError();
    *v9 = 0;
    return swift_willThrow();
  }
}

uint64_t MessageSessionTransport.activate(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v96 = a2;
  v95 = a1;
  v99 = a4;
  v7 = a3 - 8;
  v101 = *(a3 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v98 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v83 - v10;
  v12 = *(v7 + 24);
  v13 = *(v7 + 32);
  v15 = type metadata accessor for MessageUnpacker(0, v12, v13, v14);
  v108 = *(v15 - 8);
  v109 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v106 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v83 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71C8, &unk_240762450);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v83 - v21;
  v24 = type metadata accessor for MessagePacker(0, v12, v13, v23);
  v104 = *(v24 - 8);
  v105 = v24;
  v25 = MEMORY[0x28223BE20](v24);
  v102 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v83 - v27;
  sub_2407594B4();
  swift_allocObject();
  v29 = sub_2407594A4();
  sub_24066BBD8(v5 + *(v7 + 64), v22);
  v103 = v28;
  MessagePacker.init(encoder:signingIdentity:topicIdentifier:)(v29, v22, 0, 0, v12, v13, v28);
  sub_240759484();
  swift_allocObject();
  v30 = sub_240759474();
  sub_24066BBD8(v5 + *(v7 + 60), v22);
  v107 = v19;
  v110 = v13;
  v111 = v12;
  MessageUnpacker.init(decoder:signingIdentity:topicIdentifier:)(v30, v22, 0, 0, v12, v13, v19);
  if (qword_27E4B5FA0 != -1)
  {
    swift_once();
  }

  v31 = sub_240759AE4();
  __swift_project_value_buffer(v31, qword_27E4BE2A0);
  v32 = v101;
  v33 = *(v101 + 16);
  v93 = v101 + 16;
  v92 = v33;
  v33(v11, v5, a3);
  v34 = sub_240759AC4();
  v35 = sub_24075A5D4();
  v36 = os_log_type_enabled(v34, v35);
  v100 = v5;
  v85 = a3;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    aBlock = v38;
    *v37 = 136315138;
    v40 = *(v11 + 2);
    v39 = *(v11 + 3);
    v41 = a3;
    v42 = *(v32 + 8);
    v91 = (v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;

    v42(v11, v41);
    v43 = sub_2405BBA7C(v40, v39, &aBlock);
    v5 = v100;

    *(v37 + 4) = v43;
    _os_log_impl(&dword_240579000, v34, v35, "Registering the message session with identifier: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x245CC76B0](v38, -1, -1);
    MEMORY[0x245CC76B0](v37, -1, -1);
  }

  else
  {

    v44 = *(v32 + 8);
    v91 = (v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v44(v11, a3);
  }

  v84 = *(v5 + 8);
  v83 = sub_24075A084();
  v45 = v108;
  v46 = *(v108 + 16);
  v88 = v108 + 16;
  v89 = v46;
  v47 = v106;
  v48 = v109;
  v46(v106, v107, v109);
  v49 = v104;
  v50 = *(v104 + 16);
  v86 = v104 + 16;
  v87 = v50;
  v51 = v102;
  v52 = v105;
  v50(v102, v103, v105);
  v53 = v45;
  v54 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v55 = (v94 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = v49;
  v57 = (*(v49 + 80) + v55 + 16) & ~*(v49 + 80);
  v58 = swift_allocObject();
  v59 = v110;
  *(v58 + 16) = v111;
  *(v58 + 24) = v59;
  (*(v53 + 32))(v58 + v54, v47, v48);
  v60 = (v58 + v55);
  v61 = v96;
  *v60 = v95;
  v60[1] = v61;
  (*(v56 + 32))(v58 + v57, v51, v52);
  v116 = sub_2406B1EAC;
  v117 = v58;
  aBlock = MEMORY[0x277D85DD0];
  v113 = 1107296256;
  v114 = sub_2406B0DF8;
  v115 = &block_descriptor_15;
  v62 = _Block_copy(&aBlock);

  v63 = v84;
  v64 = v83;
  [v84 registerRequestID:v83 options:0 handler:v62];
  _Block_release(v62);

  v65 = v98;
  v66 = v100;
  v67 = v85;
  v68 = v92;
  v92(v98, v100, v85);
  v69 = v101;
  v70 = (*(v101 + 80) + 32) & ~*(v101 + 80);
  v71 = swift_allocObject();
  v72 = v110;
  *(v71 + 16) = v111;
  *(v71 + 24) = v72;
  (*(v69 + 32))(v71 + v70, v65, v67);
  v116 = sub_2406B1FF0;
  v117 = v71;
  aBlock = MEMORY[0x277D85DD0];
  v113 = 1107296256;
  v114 = sub_240644810;
  v115 = &block_descriptor_6;
  v73 = _Block_copy(&aBlock);

  [v63 setInvalidationHandler_];
  _Block_release(v73);
  [v63 activate];
  v74 = v66;
  v75 = v67;
  v68(v65, v66, v67);
  v77 = v102;
  v76 = v103;
  v78 = v105;
  v87(v102, v103, v105);
  v80 = v106;
  v79 = v107;
  v81 = v109;
  v89(v106, v107, v109);
  sub_2406B0F0C(v65, v77, v80, v111, v110, v99);
  (*(v108 + 8))(v79, v81);
  (*(v104 + 8))(v76, v78);
  return (*(v69 + 8))(v74, v75);
}

uint64_t MessageSessionTransport.incomingSigningIdentity(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 52);
  sub_2405B8A50(v3 + v7, &qword_27E4B71C8, &unk_240762450);
  sub_24066BBD8(a1, v3 + v7);
  v8 = *(*(a2 - 8) + 32);

  return v8(a3, v3, a2);
}

uint64_t MessageSessionTransport.outgoingSigningIdentity(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 56);
  sub_2405B8A50(v3 + v7, &qword_27E4B71C8, &unk_240762450);
  sub_24066BBD8(a1, v3 + v7);
  v8 = *(*(a2 - 8) + 32);

  return v8(a3, v3, a2);
}

uint64_t sub_2406AF850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v52 = a7;
  v53 = a4;
  v49 = a6;
  v50 = a3;
  v51 = a2;
  v55 = type metadata accessor for MessagePacker(0, a9, a10, a4);
  v12 = *(v55 - 8);
  v45 = *(v12 + 64);
  MEMORY[0x28223BE20](v55);
  v14 = &v44 - v13;
  v47 = a9;
  v48 = a10;
  v46 = type metadata accessor for MessageUnpacker(0, a9, a10, v15);
  v16 = *(v46 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v46);
  v19 = &v44 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v20 - 8);
  v54 = &v44 - v21;
  if (qword_27E4B5FA0 != -1)
  {
    swift_once();
  }

  v22 = sub_240759AE4();
  __swift_project_value_buffer(v22, qword_27E4BE2A0);
  v23 = sub_240759AC4();
  v24 = sub_24075A5D4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = a5;
    v26 = a8;
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_240579000, v23, v24, "Finished registering the message session. Ready for sending/receiving messages!", v27, 2u);
    v28 = v27;
    a8 = v26;
    a5 = v25;
    MEMORY[0x245CC76B0](v28, -1, -1);
  }

  v29 = sub_24075A3D4();
  (*(*(v29 - 8) + 56))(v54, 1, 1, v29);
  v30 = v46;
  (*(v16 + 16))(v19, a5, v46);
  (*(v12 + 16))(v14, a8, v55);
  v31 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v32 = (v17 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v34 = (*(v12 + 80) + v33 + 16) & ~*(v12 + 80);
  v35 = &v45[v34 + 7];
  v45 = v14;
  v36 = v35 & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  *(v37 + 2) = 0;
  *(v37 + 3) = 0;
  v38 = v48;
  *(v37 + 4) = v47;
  *(v37 + 5) = v38;
  (*(v16 + 32))(&v37[v31], v19, v30);
  v39 = v52;
  *&v37[v32] = v51;
  v40 = &v37[v33];
  *v40 = v49;
  v40[1] = v39;
  (*(v12 + 32))(&v37[v34], v45, v55);
  v41 = &v37[v36];
  v42 = v53;
  *v41 = v50;
  v41[1] = v42;

  sub_240602F08(0, 0, v54, &unk_240774EE8, v37);
}

uint64_t sub_2406AFC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[30] = v13;
  v8[31] = v14;
  v8[28] = v11;
  v8[29] = v12;
  v8[26] = a7;
  v8[27] = a8;
  v8[24] = a5;
  v8[25] = a6;
  v8[23] = a4;
  v8[32] = *(v13 - 8);
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v8[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2406AFD40, 0, 0);
}

uint64_t sub_2406AFD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[35];
  v6 = v4[24];
  v7 = type metadata accessor for MessageUnpacker(0, v4[30], v4[31], a4);
  MessageUnpacker.unpack(_:)(v6, v7, v5);
  v8 = v4[25];
  (*(v4[32] + 16))(v4[33], v4[35], v4[30]);
  v13 = (v8 + *v8);
  v9 = swift_task_alloc();
  v4[36] = v9;
  *v9 = v4;
  v9[1] = sub_2406B0310;
  v11 = v4[33];
  v10 = v4[34];

  return v13(v10, v11);
}

uint64_t sub_2406B0310()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_2406B0930;
  }

  else
  {
    v2 = sub_2406B0424;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2406B0424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = v4;
  v5 = *(v4 + 296);
  v6 = *(v4 + 272);
  v7 = type metadata accessor for MessagePacker(0, *(v4 + 240), *(v4 + 248), a4);
  v8 = MessagePacker.pack(_:)(v6, v7);
  v9 = *(v4 + 280);
  v10 = *(v4 + 240);
  v11 = *(*(v4 + 256) + 8);
  v11(*(v4 + 272), v10);
  v11(v9, v10);
  if (v5)
  {
    if (qword_27E4B5FA0 != -1)
    {
      swift_once();
    }

    v12 = sub_240759AE4();
    __swift_project_value_buffer(v12, qword_27E4BE2A0);
    v13 = v5;
    v14 = sub_240759AC4();
    v15 = sub_24075A5E4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = v5;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_240579000, v14, v15, "Failed to handle incoming request with error: %@", v16, 0xCu);
      sub_2405B8A50(v17, &qword_27E4B92A0, &qword_240762400);
      MEMORY[0x245CC76B0](v17, -1, -1);
      MEMORY[0x245CC76B0](v16, -1, -1);
    }

    v20 = sub_2407595C4();
    v21 = NSErrorToOSStatus();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9FB0, &unk_24076DC50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_240765570;
    *(v4 + 144) = 0x726F727265;
    *(v4 + 152) = 0xE500000000000000;
    v23 = MEMORY[0x277D837D0];
    sub_24075A814();
    swift_getErrorValue();
    v24 = sub_24075AE14();
    *(inited + 96) = v23;
    *(inited + 72) = v24;
    *(inited + 80) = v25;
    v8 = sub_2405BD674(inited);
    swift_setDeallocating();
    sub_2405B8A50(inited + 32, &unk_27E4B73D0, &qword_240770790);
  }

  else
  {
    v21 = 0;
  }

  if (qword_27E4B5FA0 != -1)
  {
    swift_once();
  }

  v26 = sub_240759AE4();
  __swift_project_value_buffer(v26, qword_27E4BE2A0);

  v27 = sub_240759AC4();
  v28 = sub_24075A5D4();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v42[0] = v30;
    *v29 = 136315906;
    v31 = sub_240759F84();
    v33 = sub_2405BBA7C(v31, v32, v42);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2080;
    *(v4 + 168) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4BB810, &qword_2407747D0);
    v34 = sub_24075A0E4();
    v36 = sub_2405BBA7C(v34, v35, v42);

    *(v29 + 14) = v36;
    *(v29 + 22) = 2080;
    *(v4 + 176) = 0;
    v37 = sub_24075A0E4();
    v39 = sub_2405BBA7C(v37, v38, v42);

    *(v29 + 24) = v39;
    *(v29 + 32) = 1024;
    *(v29 + 34) = v21;
    _os_log_impl(&dword_240579000, v27, v28, "Responding to inRequest: %s with outResponse: %s, outOptions: %s, outStatus: %d", v29, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x245CC76B0](v30, -1, -1);
    MEMORY[0x245CC76B0](v29, -1, -1);
  }

  else
  {
  }

  (*(v4 + 224))(v21, 0, v8);

  v40 = *(v4 + 8);

  return v40();
}

uint64_t sub_2406B0930()
{
  v35 = v0;
  (*(*(v0 + 256) + 8))(*(v0 + 280), *(v0 + 240));
  v1 = *(v0 + 296);
  if (qword_27E4B5FA0 != -1)
  {
    swift_once();
  }

  v2 = sub_240759AE4();
  __swift_project_value_buffer(v2, qword_27E4BE2A0);
  v3 = v1;
  v4 = sub_240759AC4();
  v5 = sub_24075A5E4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_240579000, v4, v5, "Failed to handle incoming request with error: %@", v6, 0xCu);
    sub_2405B8A50(v7, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v7, -1, -1);
    MEMORY[0x245CC76B0](v6, -1, -1);
  }

  v10 = sub_2407595C4();
  v33 = NSErrorToOSStatus();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9FB0, &unk_24076DC50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_240765570;
  *(v0 + 144) = 0x726F727265;
  *(v0 + 152) = 0xE500000000000000;
  v12 = MEMORY[0x277D837D0];
  sub_24075A814();
  swift_getErrorValue();
  v13 = sub_24075AE14();
  *(inited + 96) = v12;
  *(inited + 72) = v13;
  *(inited + 80) = v14;
  v15 = sub_2405BD674(inited);
  swift_setDeallocating();
  sub_2405B8A50(inited + 32, &unk_27E4B73D0, &qword_240770790);

  v16 = qword_27E4B5FA0;

  if (v16 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_27E4BE2A0);

  v17 = sub_240759AC4();
  v18 = sub_24075A5D4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v34 = v20;
    *v19 = 136315906;
    v21 = sub_240759F84();
    v23 = sub_2405BBA7C(v21, v22, &v34);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    *(v0 + 168) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4BB810, &qword_2407747D0);
    v24 = sub_24075A0E4();
    v26 = sub_2405BBA7C(v24, v25, &v34);

    *(v19 + 14) = v26;
    *(v19 + 22) = 2080;
    *(v0 + 176) = 0;
    v27 = sub_24075A0E4();
    v29 = sub_2405BBA7C(v27, v28, &v34);

    *(v19 + 24) = v29;
    *(v19 + 32) = 1024;
    v30 = v33;
    *(v19 + 34) = v33;
    _os_log_impl(&dword_240579000, v17, v18, "Responding to inRequest: %s with outResponse: %s, outOptions: %s, outStatus: %d", v19, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x245CC76B0](v20, -1, -1);
    MEMORY[0x245CC76B0](v19, -1, -1);
  }

  else
  {

    v30 = v33;
  }

  (*(v0 + 224))(v30, 0, v15);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_2406B0DF8(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v5 = *(a1 + 32);
  if (a2)
  {
    v6 = sub_240759F74();
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_240759F74();
  v8 = _Block_copy(a4);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  v5(v6, v7, sub_240672430, v9);
}

uint64_t sub_2406B0F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for ActivatedMessageSessionTransport(0, a4, a5, a4);
  sub_2407597A4();
  *(a6 + v12[12]) = 0;
  v14 = type metadata accessor for MessageSessionTransport(0, a4, a5, v13);
  (*(*(v14 - 8) + 32))(a6, a1, v14);
  v15 = v12[9];
  v17 = type metadata accessor for MessagePacker(0, a4, a5, v16);
  (*(*(v17 - 8) + 32))(a6 + v15, a2, v17);
  v18 = v12[10];
  v20 = type metadata accessor for MessageUnpacker(0, a4, a5, v19);
  v21 = *(*(v20 - 8) + 32);

  return v21(a6 + v18, a3, v20);
}

Swift::Void __swiftcall ActivatedMessageSessionTransport.invalidate()()
{
  v2 = v0;
  *(v1 + *(v0 + 48)) = 1;
  [*(v1 + 8) invalidate];
  v3 = *(*(v2 - 8) + 8);

  v3(v1, v2);
}

uint64_t sub_2406B10F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  return MEMORY[0x2822009F8](sub_2406B111C, 0, 0);
}

uint64_t sub_2406B111C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[21];
  v6 = v4[20];
  v7 = *(v5 + 16);
  v4[23] = v7;
  v8 = *(v5 + 24);
  v4[24] = v8;
  v9 = type metadata accessor for MessagePacker(0, v7, v8, a4);
  v10 = MessagePacker.pack(_:)(v6, v9);
  v4[25] = v10;
  v11 = v10;
  v12 = swift_task_alloc();
  v4[26] = v12;
  *v12 = v4;
  v12[1] = sub_2406B1238;
  v13 = v4[21];

  return sub_2406B1768(v11, v13);
}

uint64_t sub_2406B1238(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  if (v1)
  {
    v4 = sub_2406B1704;
  }

  else
  {

    v4 = sub_2406B1354;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2406B1354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = v4;
  v5 = v4[27];
  v6 = v4[28];
  v7 = v4[19];
  v8 = type metadata accessor for MessageUnpacker(0, v4[23], v4[24], a4);
  MessageUnpacker.unpack(_:)(v5, v8, v7);
  if (v6)
  {
    v9 = v6;
    v4[14] = 0x726F727265;
    v10 = v4[27];
    v4[15] = 0xE500000000000000;
    sub_24075A814();
    if (*(v10 + 16) && (v11 = sub_2405BB338((v4 + 2)), (v12 & 1) != 0))
    {
      sub_2405BD1CC(*(v4[27] + 56) + 32 * v11, (v4 + 7));
      sub_2405BD160((v4 + 2));

      v13 = swift_dynamicCast();
      if (v13)
      {
        v14 = v4[16];
      }

      else
      {
        v14 = 0;
      }

      if (v13)
      {
        v15 = v4[17];
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {

      sub_2405BD160((v4 + 2));
      v14 = 0;
      v15 = 0;
    }

    if (qword_27E4B5FA0 != -1)
    {
      swift_once();
    }

    v16 = sub_240759AE4();
    __swift_project_value_buffer(v16, qword_27E4BE2A0);
    v17 = v6;

    v18 = sub_240759AC4();
    v19 = sub_24075A5E4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = v32;
      *v20 = 138412546;
      v22 = v6;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      *(v20 + 12) = 2080;
      if (v15)
      {
        v24 = v14;
      }

      else
      {
        v24 = 0x3E6C6C756E3CLL;
      }

      if (v15)
      {
        v25 = v15;
      }

      else
      {
        v25 = 0xE600000000000000;
      }

      v26 = sub_2405BBA7C(v24, v25, &v33);

      *(v20 + 14) = v26;
      _os_log_impl(&dword_240579000, v18, v19, "Failed to unpack inResponse with error: %@ and inError: %s", v20, 0x16u);
      sub_2405B8A50(v21, &qword_27E4B92A0, &qword_240762400);
      MEMORY[0x245CC76B0](v21, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x245CC76B0](v32, -1, -1);
      MEMORY[0x245CC76B0](v20, -1, -1);
    }

    if (!v15)
    {
      swift_getErrorValue();
      v14 = sub_24075AE14();
      v15 = v28;
    }

    type metadata accessor for ActivatedMessageSessionTransport.Failure(0, v4[23], v4[24], v27);
    swift_getWitnessTable();
    swift_allocError();
    *v29 = v14;
    v29[1] = v15;
    swift_willThrow();

    v30 = v4[1];
  }

  else
  {

    v30 = v4[1];
  }

  return v30();
}

uint64_t sub_2406B1704()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2406B1768(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_2406B178C, 0, 0);
}

uint64_t sub_2406B178C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = *(v2 + 16);
  v4[3] = *(v2 + 24);
  v4[4] = v1;
  v4[5] = v3;
  v5 = swift_task_alloc();
  v0[7] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAD88, &qword_2407705E0);
  *v5 = v0;
  v5[1] = sub_240670EFC;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0x5374736163696E75, 0xEF293A5F28646E65, sub_2406B2464, v4, v6);
}

void sub_2406B18B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAD90, &unk_240774ED0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  v10 = *(v3 + 8);
  v11 = sub_24075A084();
  v12 = sub_240759F54();
  (*(v7 + 16))(v9, a2, v6);
  v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = *(a3 + 16);
  (*(v7 + 32))(v14 + v13, v9, v6);
  aBlock[4] = sub_2406B24B0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2406AE9F0;
  aBlock[3] = &block_descriptor_39_0;
  v15 = _Block_copy(aBlock);

  [v10 sendRequestID:v11 options:0 request:v12 responseHandler:v15];
  _Block_release(v15);
}

uint64_t sub_2406B1AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAD90, &unk_240774ED0);
    return sub_24075A364();
  }

  else
  {
    type metadata accessor for ActivatedMessageSessionTransport.Failure(0, a5, a6, a4);
    swift_getWitnessTable();
    swift_allocError();
    *v7 = xmmword_24075D8E0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAD90, &unk_240774ED0);
    return sub_24075A354();
  }
}

void *ActivatedMessageSessionTransport.messageSessionTemplate.getter()
{
  v0 = sub_2406B2060();
  v1 = v0;
  return v0;
}

uint64_t ActivatedMessageSessionTransport.send(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2406B1BE0, 0, 0);
}

uint64_t sub_2406B1BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[4];
  if (*(v4[5] + *(v5 + 48)))
  {
    type metadata accessor for ActivatedMessageSessionTransport.Failure(0, *(v5 + 16), *(v5 + 24), a4);
    swift_getWitnessTable();
    swift_allocError();
    *v6 = xmmword_240762440;
    swift_willThrow();
    v7 = v4[1];

    return v7();
  }

  else
  {
    v9 = swift_task_alloc();
    v4[6] = v9;
    *v9 = v4;
    v9[1] = sub_2405D3110;
    v10 = v4[4];
    v11 = v4[2];
    v12 = v4[3];

    return sub_2406B10F8(v11, v12, v10);
  }
}

void *sub_2406B1D1C()
{
  v0 = sub_2406B2060();
  v1 = v0;
  return v0;
}

uint64_t sub_2406B1D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2405CE450;

  return ActivatedMessageSessionTransport.send(_:)(a1, a2, a3);
}

void sub_2406B1DF8(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  (*(v2 + 16))(&v3 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  ActivatedMessageSessionTransport.invalidate()();
}

uint64_t sub_2406B1EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  v11 = *(type metadata accessor for MessageUnpacker(0, v9, v10, a4) - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(type metadata accessor for MessagePacker(0, v9, v10, v14) - 8);
  return sub_2406AF850(a1, a2, a3, a4, v4 + v12, *(v4 + v13), *(v4 + v13 + 8), v4 + ((v13 + *(v15 + 80) + 16) & ~*(v15 + 80)), v9, v10);
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2406B1FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for MessageSessionTransport(0, *(v4 + 16), *(v4 + 24), a4);
  v7 = *(v5 - 8);
  result = v5 - 8;
  v8 = *(v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + 48);
  if (v8)
  {
    return v8();
  }

  return result;
}

uint64_t sub_2406B209C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_2406B20D8(uint64_t a1)
{
  sub_2406B21DC();
  if (v1 <= 0x3F)
  {
    sub_240671AA8(319, &qword_27E4B6CC0, &qword_27E4B6CC8, &qword_24075EC18);
    if (v2 <= 0x3F)
    {
      sub_240671AA8(319, qword_27E4B7280, &qword_27E4B71D0, &unk_240770200);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_2406B21DC()
{
  result = qword_27E4BBA68[0];
  if (!qword_27E4BBA68[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27E4BBA68);
  }

  return result;
}

uint64_t sub_2406B2228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  result = type metadata accessor for MessageSessionTransport(319, v4, v5, a4);
  if (v8 <= 0x3F)
  {
    result = type metadata accessor for MessagePacker(319, v4, v5, v7);
    if (v10 <= 0x3F)
    {
      result = type metadata accessor for MessageUnpacker(319, v4, v5, v9);
      if (v11 <= 0x3F)
      {
        result = sub_2407597B4();
        if (v12 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_2406B2348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup32ActivatedMessageSessionTransportV7FailureOyx_G(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2406B239C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2406B23F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void sub_2406B2464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[2];
  v7 = v4[3];
  v8 = v4[5];
  v9 = type metadata accessor for ActivatedMessageSessionTransport(0, v6, v7, a4);
  sub_2406B18B0(v8, a1, v9);
}

uint64_t sub_2406B24B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAD90, &unk_240774ED0) - 8);
  v10 = v3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_2406B1AC0(a1, a2, a3, v10, v7, v8);
}

uint64_t sub_2406B2558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = v4[4];
  v8 = v4[5];
  v9 = *(type metadata accessor for MessageUnpacker(0, v7, v8, a4) - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(type metadata accessor for MessagePacker(0, v7, v8, v13) - 8);
  v15 = (v12 + *(v14 + 80) + 16) & ~*(v14 + 80);
  v22 = v4[3];
  v23 = v4[2];
  v21 = *(v4 + v11);
  v16 = v4 + v12;
  v17 = *(v4 + v12);
  v18 = *(v16 + 1);
  v19 = swift_task_alloc();
  *(v6 + 16) = v19;
  *v19 = v6;
  v19[1] = sub_2405CE450;

  return sub_2406AFC58(a1, v23, v22, v4 + v10, v21, v17, v18, v4 + v15);
}

char static AISDeviceClass.current.getter@<W0>(_BYTE *a2@<X8>)
{
  v3 = MobileGestalt_get_current_device();
  if (v3)
  {
    v4 = v3;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    LOBYTE(v3) = AISDeviceClass.init(rawValue:)(deviceClassNumber);
    v6 = v8;
    if (v8 == 8)
    {
      v6 = 0;
    }

    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return v3;
}

unint64_t AISDeviceClass.deviceName.getter()
{
  v1 = *v0;
  v2 = 0x656369766544;
  v3 = 0x615720656C707041;
  if (v1 != 6)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 6512973;
  if (v1 != 4)
  {
    v4 = 0x565420656C707041;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 1684099177;
  if (v1 != 2)
  {
    v5 = 0x646F50656D6F48;
  }

  if (*v0)
  {
    v2 = 0x656E6F685069;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t AISDeviceClass.localizableKeySuffix.getter()
{
  sub_2405F9728();
  sub_24075A744();

  sub_24075A744();

  v0 = sub_24075A0F4();

  return v0;
}

AppleIDSetup::AISDeviceClass_optional __swiftcall AISDeviceClass.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (rawValue > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return rawValue;
  }

  if ((rawValue - 1) > 0xA)
  {
    *v1 = 0;
  }

  else
  {
    *v1 = byte_240775092[(rawValue - 1)];
  }

  return rawValue;
}

AppleIDSetup::AISDeviceClass __swiftcall AISDeviceClass.init(value:)(Swift::Int value)
{
  if (value < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (value > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return value;
  }

  if ((value - 1) > 0xA)
  {
    *v1 = 0;
  }

  else
  {
    *v1 = byte_240775092[(value - 1)];
  }

  return value;
}

AppleIDSetup::AISDeviceClass __swiftcall AISDeviceClass.init(deviceModel:)(Swift::String deviceModel)
{
  v2 = v1;
  v3 = sub_24075A084();

  v4 = GestaltProductTypeStringToDeviceClass();

  if (v4 == 100)
  {
    v6 = 4;
  }

  else
  {
    result = AISDeviceClass.init(rawValue:)(v4).value;
    v6 = v7;
    if (v7 == 8)
    {
      v6 = 0;
    }
  }

  *v2 = v6;
  return result;
}

AppleIDSetup::AISDeviceClass __swiftcall AISDeviceClass.init(deviceClass:)(AppleIDSetup::AISDeviceClass deviceClass)
{
  if ((deviceClass - 1) > 0xAu)
  {
    *v1 = 0;
  }

  else
  {
    *v1 = byte_240775092[(deviceClass - 1)];
  }

  return deviceClass;
}

uint64_t sub_2406B2C30()
{
  v1 = *v0;
  sub_24075AE64();
  MEMORY[0x245CC6BA0](qword_2407750A0[v1]);
  return sub_24075AED4();
}

uint64_t sub_2406B2CB8(uint64_t a1)
{
  v2 = *v1;
  sub_24075AE64();
  MEMORY[0x245CC6BA0](qword_2407750A0[v2]);
  return sub_24075AED4();
}

Swift::String __swiftcall hardwareGeneralName(_:)(Swift::String_optional a1)
{
  object = a1.value._object;
  countAndFlagsBits = a1.value._countAndFlagsBits;
  v3 = 0x565420656C707041;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BBBF0, &qword_240774EF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BBBF8, &qword_240774EF8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - v8;
  v10 = sub_240759A04();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!object)
  {
    goto LABEL_10;
  }

  v14 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v14 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = sub_2407599D4();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);

  sub_2407599E4();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_2406B3064(v9);
LABEL_10:
    v20 = 0xE800000000000000;
    goto LABEL_11;
  }

  (*(v11 + 32))(v13, v9, v10);
  v16 = sub_2407599F4();
  if (!v17)
  {
    (*(v11 + 8))(v13, v10);
    goto LABEL_10;
  }

  v18 = v16;
  v19 = v17;
  (*(v11 + 8))(v13, v10);
  v20 = v19;
  v3 = v18;
LABEL_11:
  v21 = v3;
  result._object = v20;
  result._countAndFlagsBits = v21;
  return result;
}

uint64_t sub_2406B3064(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BBBF8, &qword_240774EF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::String __swiftcall getDeviceOSVersion()()
{
  v0 = _CFCopySystemVersionDictionaryValue();
  if (v0)
  {
    v2 = v0;
    v3 = sub_24075A0B4();
    v5 = v4;

    v6 = [objc_opt_self() processInfo];
    [v6 operatingSystemVersion];

    v10 = sub_24075AC34();
    v11 = v7;
    MEMORY[0x245CC5E60](46, 0xE100000000000000);
    v8 = sub_24075AC34();
    MEMORY[0x245CC5E60](v8);

    MEMORY[0x245CC5E60](58, 0xE100000000000000);
    MEMORY[0x245CC5E60](v3, v5);

    v0 = v10;
    v1 = v11;
  }

  else
  {
    __break(1u);
  }

  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

unint64_t sub_2406B31F8()
{
  result = qword_27E4BBC00;
  if (!qword_27E4BBC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BBC00);
  }

  return result;
}

unint64_t sub_2406B324C(void *a1)
{
  a1[1] = sub_240684C80();
  a1[2] = sub_240684ADC();
  result = sub_2406B3284();
  a1[3] = result;
  return result;
}

unint64_t sub_2406B3284()
{
  result = qword_27E4BBC08;
  if (!qword_27E4BBC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BBC08);
  }

  return result;
}

unint64_t sub_2406B32DC()
{
  result = qword_27E4BBC10;
  if (!qword_27E4BBC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4BBC18, &qword_240774FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BBC10);
  }

  return result;
}

unint64_t sub_2406B3350()
{
  result = qword_27E4BBC20[0];
  if (!qword_27E4BBC20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E4BBC20);
  }

  return result;
}

uint64_t ValueIntercept.__allocating_init(dropBehavior:)(char *a1)
{
  v2 = swift_allocObject();
  ValueIntercept.init(dropBehavior:)(a1);
  return v2;
}

uint64_t sub_2406B3450@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 104);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  sub_24075A374();
  v4 = sub_24075A714();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_2406B352C(uint64_t a1)
{
  v3 = *(*v1 + 104);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  sub_24075A374();
  v4 = sub_24075A714();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

BOOL sub_2406B3610()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  v0 = sub_24075A374();
  v1 = sub_24075A714();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - v3;
  sub_2406B3450(&v7 - v3);
  v5 = (*(*(v0 - 8) + 48))(v4, 1, v0) != 1;
  (*(v2 + 8))(v4, v1);
  return v5;
}

_BYTE *ValueIntercept.init(dropBehavior:)(char *a1)
{
  v2 = *a1;
  swift_defaultActor_initialize();
  v3 = *(*v1 + 104);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  v4 = sub_24075A374();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v1[112] = v2;
  return v1;
}

uint64_t sub_2406B3824(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x2822009F8](sub_2406B386C, v1, 0);
}

uint64_t sub_2406B386C()
{
  sub_2406B3F30();
  v1 = v0[3];
  v2 = *(v0[4] + 80);
  type metadata accessor for ValueIntercept(255, v2, v3, v4);
  WitnessTable = swift_getWitnessTable();
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_2406B39CC;
  v7 = v0[2];
  v8 = v0[3];

  return MEMORY[0x2822008A0](v7, v1, WitnessTable, 0xD000000000000012, 0x80000002407863C0, sub_2406B4264, v8, v2);
}

uint64_t sub_2406B39CC()
{
  v2 = *v1;
  v2[6] = v0;

  if (v0)
  {
    v3 = v2[3];

    return MEMORY[0x2822009F8](sub_2406B3B00, v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_2406B3B18(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  v3 = sub_24075A374();
  v4 = sub_24075A714();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  v7 = *(v3 - 8);
  (*(v7 + 16))(&v9 - v5, a1, v3);
  (*(v7 + 56))(v6, 0, 1, v3);
  return sub_2406B352C(v6);
}

uint64_t sub_2406B3C48@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v20 = a2;
  v4 = *(*v2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  v5 = sub_24075A374();
  v6 = sub_24075A714();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v19 - v12;
  v14 = *(v5 - 8);
  MEMORY[0x28223BE20](v11);
  v16 = &v19 - v15;
  sub_2406B3450(v13);
  if ((*(v14 + 48))(v13, 1, v5) == 1)
  {
    (*(*(v4 - 8) + 8))(a1, v4);
    result = (*(v7 + 8))(v13, v6);
    v18 = 1;
  }

  else
  {
    (*(v14 + 32))(v16, v13, v5);
    (*(v14 + 56))(v10, 1, 1, v5);
    sub_2406B352C(v10);
    sub_24075A364();
    result = (*(v14 + 8))(v16, v5);
    v18 = 0;
  }

  *v20 = v18;
  return result;
}

uint64_t sub_2406B3F30()
{
  v1 = *(*v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  v17[0] = v1;
  v2 = sub_24075A374();
  v3 = sub_24075A714();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v17 - v9;
  v11 = *(v2 - 8);
  MEMORY[0x28223BE20](v8);
  v13 = v17 - v12;
  sub_2406B3450(v10);
  if ((*(v11 + 48))(v10, 1, v2) == 1)
  {
    return (*(v4 + 8))(v10, v3);
  }

  (*(v11 + 32))(v13, v10, v2);
  if (v0[112])
  {
    type metadata accessor for ValueIntercept.DroppedPending(0, v17[0], v15, v16);
    swift_getWitnessTable();
    v17[3] = swift_allocError();
    sub_24075A354();
    (*(v11 + 56))(v7, 1, 1, v2);
    sub_2406B352C(v7);
  }

  else
  {
    type metadata accessor for ValueIntercept.DroppedNew(0, v17[0], v15, v16);
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();
  }

  return (*(v11 + 8))(v13, v2);
}

uint64_t ValueIntercept.deinit()
{
  v1 = *(*v0 + 104);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  sub_24075A374();
  v2 = sub_24075A714();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t ValueIntercept.__deallocating_deinit()
{
  ValueIntercept.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2406B43B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_24075AE64();
  a4(v6);
  return sub_24075AED4();
}

uint64_t sub_2406B4430(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  sub_24075A374();
  result = sub_24075A714();
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

uint64_t dispatch thunk of ValueIntercept.waitForIntercept()(uint64_t a1)
{
  v6 = (*(*v1 + 152) + **(*v1 + 152));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2405CE450;

  return v6(a1);
}

void *_objcCodable.wrappedValue.getter()
{
  v0 = sub_2406B2060();
  v1 = v0;
  return v0;
}

BOOL static _objcCodable.== infix(_:_:)(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  result = (*a1 | *a2) == 0;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = v3;
    v7 = v2;
    v8 = sub_24075A6D4();

    return v8 & 1;
  }

  return result;
}

uint64_t static _objcCodableDictionary<>.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  if (*a1)
  {
    if (v4)
    {
      swift_unknownObjectRetain();
      v5 = sub_24075A054();
      swift_unknownObjectRelease();
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = v4 == 0;
  }

  return v5 & 1;
}

uint64_t NSObject<>.into()@<X0>(void *a1@<X8>)
{
  type metadata accessor for DefaultObjcArchiver();
  result = type metadata accessor for DefaultObjcUnarchiver();
  *a1 = v1;
  return result;
}

id _customObjcCodable.wrappedValue.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t sub_2406B4928@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for DefaultObjcArchiver();
  result = type metadata accessor for DefaultObjcUnarchiver();
  *a2 = a1;
  return result;
}

id sub_2406B4960@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>, uint64_t a4@<X3>)
{
  type metadata accessor for _objcCodable(0, *(a1 + a2 - 8), a2, a4);
  v5 = sub_2406B2060();
  *a3 = v5;

  return v5;
}

void sub_2406B49BC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  _objcCodable.wrappedValue.setter(v1);
}

uint64_t _objcCodable.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for DefaultObjcArchiver();
  result = type metadata accessor for DefaultObjcUnarchiver();
  *a2 = a1;
  return result;
}

uint64_t sub_2406B4A24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2406B4A78(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t _objcCodable.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = *(a2 + 16);
  type metadata accessor for _objcCodable.CodingKeys(255, v14, a3, a4);
  swift_getWitnessTable();
  v6 = sub_24075AC24();
  v15 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v9 = *v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = v9;
  sub_24075AF74();
  v17 = v9;
  v11 = type metadata accessor for DefaultObjcArchiver();
  v12 = type metadata accessor for DefaultObjcUnarchiver();
  type metadata accessor for _customObjcCodable(0, v14, v11, v12);
  v16 = &protocol witness table for DefaultObjcArchiver;
  swift_getWitnessTable();
  sub_24075ABE4();

  return (*(v15 + 8))(v8, v6);
}

uint64_t _objcCodable.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v18 = a3;
  type metadata accessor for _objcCodable.CodingKeys(255, a2, a4, a5);
  swift_getWitnessTable();
  v19 = sub_24075AB44();
  v8 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v10 = &v17 - v9;
  type metadata accessor for DefaultObjcArchiver();
  type metadata accessor for DefaultObjcUnarchiver();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24075AF34();
  if (!v5)
  {
    v11 = v8;
    v12 = v18;
    v13 = type metadata accessor for DefaultObjcArchiver();
    v14 = type metadata accessor for DefaultObjcUnarchiver();
    type metadata accessor for _customObjcCodable(0, a2, v13, v14);
    v20 = &protocol witness table for DefaultObjcUnarchiver;
    swift_getWitnessTable();
    v15 = v19;
    sub_24075AAF4();
    (*(v11 + 8))(v10, v15);
    *v12 = v21;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t _customObjcCodable<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = v8;
  sub_24075AF54();
  if (v8)
  {
    v10 = (*(a3 + 16))(v9, a1, *(a2 + 16));
    if (v4)
    {
    }

    else
    {
      v12 = v10;
      v13 = v11;
      __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
      sub_240618E74();
      sub_24075AD24();

      sub_2405BCD98(v12, v13);
    }
  }

  else
  {
    __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
    sub_24075AD34();
  }

  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t _customObjcCodable<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v24 = a4;
  v25 = a3;
  v29 = a2;
  v8 = sub_24075A8C4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24075AF14();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22[1] = v11;
  v23 = a1;
  v12 = v29;
  v22[0] = v9;
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_240618EC8();
  sub_24075AD04();
  v13 = v26;
  v14 = v27;
  v15 = static ObjcUnarchiver.unarchivedObject<A>(assumingType:from:backing:)(v12, v26, v27, v23, v25, v12, v24);
  v18 = v15;
  if (!v15)
  {
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40);
    *v21 = v12;
    sub_24075A8A4();
    (*(v22[0] + 104))(v21, *MEMORY[0x277D84170], v8);
    swift_willThrow();
    sub_2405BCD98(v13, v14);
    __swift_destroy_boxed_opaque_existential_1(v28);
    a1 = v23;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v15;
  sub_2405BCD98(v13, v14);

  v16 = v23;
  __swift_destroy_boxed_opaque_existential_1(v28);
  *a5 = v18;
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t static _objcCodable<>.< infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if (*a1)
  {
    v2 = *a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    return 0;
  }

  else
  {
    return sub_24075A014() & 1;
  }
}

uint64_t _objcCodable.description.getter()
{
  if (!*v0)
  {
    return 7104878;
  }

  v1 = [*v0 description];
  v2 = sub_24075A0B4();

  return v2;
}

uint64_t _objcCodable.hash(into:)(uint64_t a1, uint64_t a2)
{
  sub_24075A714();
  swift_getWitnessTable();
  return sub_24075A724();
}

uint64_t _objcCodable.hashValue.getter(uint64_t a1)
{
  v4[9] = *v1;
  sub_24075AE64();
  _objcCodable.hash(into:)(v4, a1);
  return sub_24075AED4();
}

uint64_t sub_2406B5674(uint64_t a1, uint64_t a2)
{
  sub_24075AE64();
  _objcCodable.hash(into:)(v4, a2);
  return sub_24075AED4();
}

uint64_t _objcCodableDictionary.wrappedValue.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *v1 = a1;
  return result;
}

uint64_t _objcCodableDictionary.encode(to:)(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unknownObjectRetain();
  sub_24075AF54();
  if (v2)
  {
    v10[0] = 0;
    v3 = [objc_opt_self() archivedDataWithRootObject:v2 requiringSecureCoding:1 error:v10];
    v4 = v10[0];
    if (v3)
    {
      v5 = sub_2407596C4();
      v7 = v6;

      v10[0] = v5;
      v10[1] = v7;
      __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
      sub_240618E74();
      sub_24075AD24();
      swift_unknownObjectRelease();
      sub_2405BCD98(v5, v7);
    }

    else
    {
      v8 = v4;
      sub_2407595D4();

      swift_willThrow();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
    sub_24075AD34();
  }

  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t _objcCodableDictionary.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v23 = a2;
  v6 = sub_24075A8C4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24075AF14();
  if (!v3)
  {
    v21[1] = v9;
    v22 = a1;
    v21[0] = v7;
    __swift_project_boxed_opaque_existential_1(v25, v25[3]);
    sub_240618EC8();
    sub_24075AD04();
    v10 = v24[0];
    v11 = v24[1];
    sub_2405FD8E0();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_240775370;
    *(inited + 32) = sub_240590794(0, &unk_27E4B8900, 0x277CBEAC0);
    *(inited + 40) = sub_240590794(0, &qword_27E4BDF20, 0x277CCACA8);
    *(inited + 48) = sub_240590794(0, &qword_27E4B8910, 0x277CCABB0);
    *(inited + 56) = sub_240590794(0, &unk_27E4B8920, 0x277CBEA60);
    *(inited + 64) = sub_240590794(0, &unk_27E4BBE40, 0x277CBEAA8);
    *(inited + 72) = sub_240590794(0, &unk_27E4B8930, 0x277CBEA90);
    *(inited + 80) = sub_240590794(0, &qword_27E4BBE50, 0x277CBEB98);
    *(inited + 88) = sub_240590794(0, &qword_27E4BBE58, 0x277CBEB70);
    *(inited + 96) = sub_240590794(0, &unk_27E4BBE60, 0x277CBEB68);
    *(inited + 104) = sub_240590794(0, &qword_27E4B8918, 0x277CBEBC0);
    sub_240590794(0, qword_27E4BBE70, 0x277CCAAC8);
    sub_2406B5EA4(inited);

    sub_24075A614();
    v15 = v11;
    v16 = v10;

    if (v24[3])
    {
      v17 = v23;
      if (swift_dynamicCast())
      {
        v18 = v25[7];
        swift_unknownObjectRetain();
        sub_2405BCD98(v16, v15);
        swift_unknownObjectRelease();
        v13 = v22;
        __swift_destroy_boxed_opaque_existential_1(v25);
        *a3 = v18;
        return __swift_destroy_boxed_opaque_existential_1(v13);
      }
    }

    else
    {
      sub_24065CE64(v24);
      v17 = v23;
    }

    swift_allocError();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40);
    *v20 = v17;
    sub_24075A8A4();
    (*(v21[0] + 104))(v20, *MEMORY[0x277D84170], v6);
    swift_willThrow();
    sub_2405BCD98(v16, v15);
    __swift_destroy_boxed_opaque_existential_1(v25);
    a1 = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2406B5EA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_2406B81AC(0, v1, 0);
    v4 = a1 + 32;
    v2 = v9;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8940, &qword_240767DC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC088, &unk_2407758C0);
      swift_dynamicCast();
      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2406B81AC((v5 > 1), v6 + 1, 1);
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + 8 * v6 + 32) = v8;
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t _objcCodableDictionary<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_24075AE64();
  sub_24075A714();
  sub_24075A724();
  return sub_24075AED4();
}

uint64_t sub_2406B60D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_24075AE64();
  _objcCodableDictionary<>.hash(into:)(v6, a2, v4);
  return sub_24075AED4();
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

uint64_t sub_2406B6208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2406B6244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2406B6280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id static AISAppleIDSetupError.createError(code:message:)(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC090, &qword_2407758D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_240762420;
  *(inited + 32) = sub_24075A0B4();
  *(inited + 40) = v7;
  *(inited + 48) = a2;
  *(inited + 56) = a3;
  *(inited + 64) = sub_24075A0B4();
  *(inited + 72) = v8;
  *(inited + 80) = a2;
  *(inited + 88) = a3;
  swift_bridgeObjectRetain_n();
  v9 = sub_2405BD358(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC098, &qword_2407758D8);
  swift_arrayDestroy();
  v10 = qword_2407759D0[v5];
  sub_2405BA110(v9);

  v11 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v12 = sub_24075A084();
  v13 = sub_240759F54();

  v14 = [v11 initWithDomain:v12 code:v10 userInfo:v13];

  return v14;
}

uint64_t static AISAppleIDSetupError.reason(_:)(void *a1)
{
  v2 = [a1 userInfo];
  v3 = sub_240759F74();

  v4 = sub_24075A0B4();
  if (!*(v3 + 16))
  {

    goto LABEL_6;
  }

  v6 = sub_2405BB37C(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  sub_2405BD1CC(*(v3 + 56) + 32 * v6, v20);

  if (swift_dynamicCast())
  {
    return v19;
  }

LABEL_7:
  v9 = [a1 userInfo];
  v10 = sub_240759F74();

  v11 = sub_24075A0B4();
  if (!*(v10 + 16))
  {

    goto LABEL_12;
  }

  v13 = sub_2405BB37C(v11, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
LABEL_12:

    goto LABEL_13;
  }

  sub_2405BD1CC(*(v10 + 56) + 32 * v13, v20);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v17 = [a1 debugDescription];
    v16 = sub_24075A0B4();

    return v16;
  }

  return v19;
}

AppleIDSetup::AISAppleIDSetupError_optional __swiftcall AISAppleIDSetupError.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue <= -1003)
  {
    if (rawValue == -1101)
    {
      *v1 = 4;
      return rawValue;
    }

    if (rawValue == -1100)
    {
      *v1 = 3;
      return rawValue;
    }

LABEL_12:
    *v1 = 5;
    return rawValue;
  }

  if (rawValue == -1000)
  {
    *v1 = 0;
    return rawValue;
  }

  if (rawValue == -1001)
  {
    *v1 = 1;
    return rawValue;
  }

  if (rawValue != -1002)
  {
    goto LABEL_12;
  }

  *v1 = 2;
  return rawValue;
}

uint64_t sub_2406B6780()
{
  v1 = *v0;
  sub_24075AE64();
  MEMORY[0x245CC6BA0](qword_2407759D0[v1]);
  return sub_24075AED4();
}

uint64_t sub_2406B6808(uint64_t a1)
{
  v2 = *v1;
  sub_24075AE64();
  MEMORY[0x245CC6BA0](qword_2407759D0[v2]);
  return sub_24075AED4();
}

unint64_t sub_2406B6878()
{
  result = qword_27E4BC0A0;
  if (!qword_27E4BC0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC0A0);
  }

  return result;
}

uint64_t static SymptomReport.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[3];
  v3 = a2[3];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_24075ACF4() & 1) == 0)
  {
    return 0;
  }

  return sub_2406B7F50(v2, v3);
}

AISSymptomReport __swiftcall SymptomReport.into()()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_24075A934();
    v7 = 0;
    v8 = (v1 + 120);
    while (v7 < *(v1 + 16))
    {
      v13 = *(v8 - 1);
      if (v13 <= 4)
      {
        v9 = qword_240775CD0[v13];
      }

      else
      {
        v9 = 0;
      }

      ++v7;
      v10 = *v8;
      v8 += 96;
      v11 = objc_allocWithZone(AISSymptom);
      v12 = sub_24075A084();
      [v11 initWithAltDSID:v12 priority:v10 problemFlag:v9 errorInfo:sub_24075AD74()];
      swift_unknownObjectRelease();

      sub_24075A914();
      sub_24075A944();
      sub_24075A954();
      v3 = sub_24075A924();
      if (v2 == v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    v14 = SymptomReport.combinedLegacyProblemFlags.getter();
    v15 = objc_allocWithZone(AISSymptomReport);
    v16 = sub_24075A084();
    sub_240642600();
    v17 = sub_24075A2B4();

    v18 = [v15 initWithAltDSID:v16 symptoms:v17 combinedProblemFlags:v14];

    v3 = v18;
  }

  result._combinedProblemFlags = v6;
  result._symptoms = v5;
  result._altDSID = v4;
  result.super.isa = v3;
  return result;
}

uint64_t SymptomReport.altDSID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SymptomReport.accountID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
}

uint64_t SymptomReport.unorderedSymptoms.getter()
{

  v1 = sub_24061CAF0(v0);

  return v1;
}

uint64_t SymptomReport.allSymptomKinds.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  v3 = sub_2406B8B48();

  result = MEMORY[0x245CC6270](v2, &type metadata for Symptom.Kind, v3);
  v11 = result;
  v5 = *(v1 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = (v1 + 112);
    while (v6 < *(v1 + 16))
    {
      ++v6;
      v8 = *v7;
      v7 += 12;
      sub_240669184(v8);
      sub_240666068(&v10, v8);
      result = sub_240669194(v10);
      if (v5 == v6)
      {
        v9 = v11;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = result;
LABEL_7:

    return v9;
  }

  return result;
}

uint64_t SymptomReport.combinedLegacyProblemFlags.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  v3 = sub_2406B8B48();

  result = MEMORY[0x245CC6270](v2, &type metadata for Symptom.Kind, v3);
  v19 = result;
  v5 = *(v1 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = (v1 + 112);
    while (v6 < *(v1 + 16))
    {
      ++v6;
      v8 = *v7;
      v7 += 12;
      sub_240669184(v8);
      sub_240666068(&v18, v8);
      result = sub_240669194(v18);
      if (v5 == v6)
      {
        v9 = v19;
        goto LABEL_7;
      }
    }
  }

  else
  {
    v9 = result;
LABEL_7:

    v10 = 0;
    v11 = 0;
    v12 = 1 << *(v9 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v9 + 56);
    while (v14)
    {
LABEL_17:
      v17 = *(*(v9 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v14)))));
      if (v17 <= 4)
      {
        v15 = qword_240775CD0[v17];
      }

      else
      {
        v15 = 0;
      }

      v14 &= v14 - 1;
      v11 |= v15;
    }

    while (1)
    {
      v16 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v16 >= ((v12 + 63) >> 6))
      {

        return v11;
      }

      v14 = *(v9 + 56 + 8 * v16);
      ++v10;
      if (v14)
      {
        v10 = v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t SymptomReport.init(altDSID:symptoms:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = sub_2406B6ED4(a3);
  *a4 = a1;
  a4[1] = a2;
  a4[2] = result;
  a4[3] = v8;
  return result;
}

uint64_t sub_2406B6ED4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = sub_2406B7EC0(*(a1 + 16), 0);
    v4 = sub_2406B8908(&v10, v3 + 32, v2, a1);
    v5 = v10;

    sub_24066B6F8(v5);
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x277D84F90];
LABEL_5:
  v6 = sub_2406B8640();
  v7 = sub_2406B8648(v3, 0, 1, v6);
  v8 = *(v3 + 2);

  if (v8 <= 0xF)
  {

    return 0;
  }

  return v7;
}

double SymptomReport.combine(with:)@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = a1[2];
  v4 = a1[3];
  v7 = *v2;
  v6 = v2[1];
  v8 = v7 == *a1 && v6 == a1[1];
  if (v8 || (sub_24075ACF4() & 1) != 0)
  {
    *a2 = v7;
    a2[1] = v6;
    a2[2] = v5;
    a2[3] = v4;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    *(a2 + 1) = 0u;
  }

  return result;
}

uint64_t sub_2406B7074()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x44495344746C61;
  }
}

uint64_t sub_2406B70B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x44495344746C61 && a2 == 0xE700000000000000;
  if (v6 || (sub_24075ACF4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000240789140 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24075ACF4();

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

uint64_t sub_2406B7198(uint64_t a1)
{
  v2 = sub_2406B8B9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406B71D4(uint64_t a1)
{
  v2 = sub_2406B8B9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SymptomReport.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC0B0, &qword_2407759F8);
  v12 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  v7 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406B8B9C();
  sub_24075AF74();
  LOBYTE(v13) = 0;
  sub_24075ABB4();
  if (!v2)
  {
    v13 = v11;
    v14 = v10;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC0C0, &qword_240775A00);
    sub_2406B8BF0(&qword_27E4BC0C8, sub_2405F5858, MEMORY[0x277CFB8A0]);
    sub_24075ABE4();
  }

  return (*(v12 + 8))(v6, v4);
}

uint64_t SymptomReport.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 24);
  sub_24075A114();

  return sub_2405ED470(a1, v3);
}

uint64_t SymptomReport.hashValue.getter()
{
  v1 = *(v0 + 24);
  sub_24075AE64();
  sub_24075A114();
  sub_2405ED470(v3, v1);
  return sub_24075AED4();
}

uint64_t SymptomReport.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC0D0, &qword_240775A08);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406B8B9C();
  sub_24075AF34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v16[0]) = 0;
  v9 = sub_24075AAC4();
  v11 = v10;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC0C0, &qword_240775A00);
  v17 = 1;
  sub_2406B8BF0(&qword_27E4BC0D8, sub_2405F5900, MEMORY[0x277CFB8B8]);
  sub_24075AAF4();
  (*(v6 + 8))(v8, v5);
  v13 = v16[0];
  v14 = v16[1];
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v13;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2406B7724(uint64_t *a1, void *a2)
{
  v2 = a1[3];
  v3 = a2[3];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_24075ACF4() & 1) == 0)
  {
    return 0;
  }

  return sub_2406B7F50(v2, v3);
}

uint64_t sub_2406B779C()
{
  v1 = *(v0 + 24);
  sub_24075AE64();
  sub_24075A114();
  sub_2405ED470(v3, v1);
  return sub_24075AED4();
}

uint64_t sub_2406B7800(__int128 *a1)
{
  v3 = *(v1 + 24);
  sub_24075A114();

  return sub_2405ED470(a1, v3);
}

uint64_t sub_2406B7844(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_24075AE64();
  sub_24075A114();
  sub_2405ED470(v4, v2);
  return sub_24075AED4();
}

unint64_t SymptomReport.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[3];
  strcpy(v23, "SymptomReport(");
  HIBYTE(v23[1]) = -18;
  *&v24[0] = v2;
  *(&v24[0] + 1) = v1;
  memset(&v24[1], 0, 64);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v18 = v24[0];
  v19 = 0u;

  v4 = IdMSAccount.ID.description.getter();
  v6 = v5;
  sub_240618468(v24);
  MEMORY[0x245CC5E60](v4, v6);

  MEMORY[0x245CC5E60](44, 0xE100000000000000);
  v7 = *(v3 + 16);
  v8 = sub_2406B8B48();

  result = MEMORY[0x245CC6270](v7, &type metadata for Symptom.Kind, v8);
  *&v18 = result;
  v10 = *(v3 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = (v3 + 112);
    while (v11 < *(v3 + 16))
    {
      ++v11;
      v13 = *v12;
      v12 += 12;
      sub_240669184(v13);
      sub_240666068(&v17, v13);
      result = sub_240669194(v17);
      if (v10 == v11)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    v14 = sub_24075A544();
    v16 = v15;

    MEMORY[0x245CC5E60](v14, v16);

    MEMORY[0x245CC5E60](41, 0xE100000000000000);
    return v23[0];
  }

  return result;
}

unint64_t SymptomReport.debugDescription.getter()
{
  v1 = *(v0 + 24);
  v2 = SymptomReport.description.getter();
  v3 = sub_2406B8C68(v1);
  v5 = v4;

  MEMORY[0x245CC5E60](v3, v5);

  return v2;
}

unint64_t sub_2406B7B08()
{
  v1 = *(v0 + 24);
  v2 = SymptomReport.description.getter();
  v3 = sub_2406B8C68(v1);
  v5 = v4;

  MEMORY[0x245CC5E60](v3, v5);

  return v2;
}

uint64_t sub_2406B7BCC(uint64_t a1, uint64_t (*a2)(unint64_t *))
{
  v4 = a1;
  v5 = *(v2 + 24);
  v6 = *(v5 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v15 = MEMORY[0x277D84F90];

    sub_2406B81CC(0, v6, 0);
    v8 = 112;
    v7 = v15;
    do
    {
      v9 = *(v5 + v8);
      sub_240669184(v9);
      v15 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_2406B81CC((v10 > 1), v11 + 1, 1);
        v7 = v15;
      }

      *(v7 + 16) = v11 + 1;
      *(v7 + 8 * v11 + 32) = v9;
      v8 += 96;
      --v6;
    }

    while (v6);
  }

  v15 = v4;
  MEMORY[0x28223BE20](a1);
  v14[2] = &v15;
  v12 = sub_2406B7E20(a2, v14, v7);

  return v12 & 1;
}

BOOL SymptomReport.requiresMissingServicesRepair.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v15 = MEMORY[0x277D84F90];

    sub_2406B81CC(0, v2, 0);
    v4 = 112;
    v3 = v15;
    do
    {
      v5 = *(v1 + v4);
      sub_240669184(v5);
      v7 = *(v15 + 16);
      v6 = *(v15 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_2406B81CC((v6 > 1), v7 + 1, 1);
      }

      *(v15 + 16) = v7 + 1;
      *(v15 + 8 * v7 + 32) = v5;
      v4 += 96;
      --v2;
    }

    while (v2);
  }

  v8 = *(v3 + 16);
  v9 = 32;
  do
  {
    v10 = v8;
    if (v8-- == 0)
    {
      break;
    }

    v12 = *(v3 + v9);
    v9 += 8;
  }

  while (v12 < 5);
  v13 = v10 != 0;

  return v13;
}

uint64_t sub_2406B7E20(uint64_t (*a1)(unint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = v7;
      v9 = *v6++;
      v12 = v9;
      sub_240669184(v9);
      v10 = a1(&v12);
      sub_240669194(v12);
      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v7 = v8 - 1;
    }

    while (v8);
  }

  return v4 & 1;
}

void *sub_2406B7EC0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC120, &qword_240775CB8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

uint64_t sub_2406B7F50(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v20 = v2;
  v21 = v3;
  v5 = (a1 + 32);
  v6 = v4 - 1;
  for (i = (a2 + 120); ; i += 96)
  {
    v8 = v5[3];
    v18[2] = v5[2];
    v18[3] = v8;
    *v19 = v5[4];
    *&v19[9] = *(v5 + 73);
    v9 = v5[1];
    v18[0] = *v5;
    v18[1] = v9;
    v10 = *(i - 1);
    v11 = *i;
    if (v18[0] != *(i - 88) && (sub_24075ACF4() & 1) == 0)
    {
      break;
    }

    v12 = *&v19[16];
    if (*&v19[16] <= 1)
    {
      if (!*&v19[16])
      {
        if (v10)
        {
          sub_240669184(v10);
          v16 = 0;
          goto LABEL_34;
        }

LABEL_22:
        sub_2405F1048(v18, v17);
        sub_240669194(v12);
        sub_240669194(v12);
        goto LABEL_23;
      }

      if (*&v19[16] == 1)
      {
        if (v10 != 1)
        {
          sub_240669184(v10);
          v16 = 1;
          goto LABEL_34;
        }

        goto LABEL_22;
      }
    }

    else
    {
      switch(*&v19[16])
      {
        case 2:
          if (v10 != 2)
          {
            sub_240669184(v10);
            v16 = 2;
            goto LABEL_34;
          }

          goto LABEL_22;
        case 3:
          if (v10 != 3)
          {
            sub_240669184(v10);
            v16 = 3;
            goto LABEL_34;
          }

          goto LABEL_22;
        case 4:
          if (v10 != 4)
          {
            sub_240669184(v10);
            v16 = 4;
LABEL_34:
            sub_240669194(v16);
            sub_240669194(v10);
            return 0;
          }

          goto LABEL_22;
      }
    }

    if (v10 < 5)
    {
      sub_240669184(v10);
      sub_240669184(v12);
      v16 = v12;
      goto LABEL_34;
    }

    sub_2405F1048(v18, v17);
    sub_240669184(v10);
    sub_240669184(v12);
    v14 = sub_240753B98();
    sub_240669194(v12);
    sub_240669194(v10);
    if ((v14 & 1) == 0)
    {
      sub_2405F10A4(v18);
      return 0;
    }

LABEL_23:
    v13 = v19[24];
    sub_2405F10A4(v18);
    if (v13 != v11)
    {
      return 0;
    }

    if (!v6)
    {
      return 1;
    }

    --v6;
    v5 += 6;
  }

  return 0;
}

char *sub_2406B818C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2406B820C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2406B81AC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2406B8310(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2406B81CC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2406B8414(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2406B81EC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2406B8520(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2406B820C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC130, &qword_240775CC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_2406B8310(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC128, &qword_240775CC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_2406B8414(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC110, &qword_240775CA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2406B8520(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC108, &qword_240775CA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2406B8648(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x245CC56D0](v6, a2);
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = MEMORY[0x245CC56E0](v8, a4);
    sub_2406B86C8(a1, (v10 + 16), v10 + 32);
    return v10;
  }

  return result;
}

uint64_t sub_2406B8718(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  v31 = result;
  if (!a2)
  {
    return result;
  }

  if (a2 < 0)
  {
    goto LABEL_24;
  }

  v7 = 0;
  while (1)
  {
    v8 = (v31 + 96 * v7);
    v9 = v8[1];
    v29[0] = *v8;
    v29[1] = v9;
    v10 = v8[2];
    v11 = v8[3];
    v12 = v8[4];
    *&v30[9] = *(v8 + 73);
    v29[3] = v11;
    *v30 = v12;
    v29[2] = v10;
    sub_24075AE64();
    v13 = *&v30[16];
    sub_2405F1048(v29, v24);
    sub_24075A114();
    if (v13 <= 1)
    {
      if (!v13)
      {
        v14 = 0;
        goto LABEL_16;
      }

      if (v13 == 1)
      {
        v14 = 1;
        goto LABEL_16;
      }
    }

    else
    {
      switch(v13)
      {
        case 2:
          v14 = 2;
          goto LABEL_16;
        case 3:
          v14 = 3;
          goto LABEL_16;
        case 4:
          v14 = 5;
LABEL_16:
          MEMORY[0x245CC6BA0](v14);
          goto LABEL_17;
      }
    }

    MEMORY[0x245CC6BA0](4);
    sub_2405F115C();
LABEL_17:
    sub_24075AE94();
    result = sub_24075AED4();
    v15 = 1 << *a3;
    v16 = __OFSUB__(v15, 1);
    v17 = v15 - 1;
    if (v16)
    {
      break;
    }

    v18 = v17 & result;
    v19 = sub_240759984();
    v21 = v20;
    v23 = v22;
    sub_2405F10A4(v29);
    v24[0] = a3;
    v24[1] = a4;
    v24[2] = v18;
    v25 = v19;
    v26 = v21;
    v27 = v23;
    v28 = 0;
    while (v25)
    {
      sub_2407599A4();
    }

    result = sub_240759994();
    if (++v7 == a2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void *sub_2406B8908(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!__dst)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 96 * (v17 | (v12 << 6)));
      v19 = v18[1];
      v26[0] = *v18;
      v26[1] = v19;
      v21 = v18[3];
      v20 = v18[4];
      v22 = v18[2];
      *&v27[9] = *(v18 + 73);
      v26[3] = v21;
      *v27 = v20;
      v26[2] = v22;
      memmove(v11, v18, 0x59uLL);
      if (v14 == v10)
      {
        sub_2405F1048(v26, v25);
        goto LABEL_24;
      }

      v11 += 96;
      sub_2405F1048(v26, v25);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v24 = v12 + 1;
    }

    else
    {
      v24 = (63 - v7) >> 6;
    }

    v12 = v24 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

BOOL sub_2406B8A9C(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 <= 1)
  {
    if (!v2)
    {
      return !v3;
    }

    if (v2 == 1)
    {
      return v3 == 1;
    }
  }

  else
  {
    switch(v2)
    {
      case 2:
        return v3 == 2;
      case 3:
        return v3 == 3;
      case 4:
        return v3 == 4;
    }
  }

  if (v3 < 5)
  {
    return 0;
  }

  return sub_240753B98() & 1;
}

unint64_t sub_2406B8B48()
{
  result = qword_27E4BC0A8;
  if (!qword_27E4BC0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC0A8);
  }

  return result;
}

unint64_t sub_2406B8B9C()
{
  result = qword_27E4BC0B8;
  if (!qword_27E4BC0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC0B8);
  }

  return result;
}

uint64_t sub_2406B8BF0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4BC0C0, &qword_240775A00);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2406B8C68(uint64_t a1)
{
  v25 = 91;
  v26 = 0xE100000000000000;
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = *(a1 + 80);
    v22 = *(a1 + 64);
    v23 = v3;
    v24[0] = *(a1 + 96);
    *(v24 + 9) = *(a1 + 105);
    v4 = *(a1 + 48);
    v20 = *(a1 + 32);
    v21 = v4;
    sub_2405F1048(&v20, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC118, &qword_240775CB0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_240765570;
    *(v5 + 56) = &type metadata for Symptom;
    v6 = swift_allocObject();
    *(v5 + 32) = v6;
    v7 = v23;
    v6[3] = v22;
    v6[4] = v7;
    v6[5] = v24[0];
    *(v6 + 89) = *(v24 + 9);
    v8 = v21;
    v6[1] = v20;
    v6[2] = v8;
    sub_2405F1048(&v20, v19);
    sub_24075A7E4();
    sub_2405F10A4(&v20);

    v9 = v1 - 1;
    if (v1 != 1)
    {
      v10 = (a1 + 128);
      do
      {
        v11 = v10[3];
        v22 = v10[2];
        v23 = v11;
        v24[0] = v10[4];
        *(v24 + 9) = *(v10 + 73);
        v12 = *v10;
        v13 = v10[1];
        v10 += 6;
        v20 = v12;
        v21 = v13;
        sub_2405F1048(&v20, v19);
        MEMORY[0x245CC5E60](8236, 0xE200000000000000);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC118, &qword_240775CB0);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_240765570;
        *(v14 + 56) = &type metadata for Symptom;
        v15 = swift_allocObject();
        *(v14 + 32) = v15;
        v16 = v23;
        v15[3] = v22;
        v15[4] = v16;
        v15[5] = v24[0];
        *(v15 + 89) = *(v24 + 9);
        v17 = v21;
        v15[1] = v20;
        v15[2] = v17;
        sub_2405F1048(&v20, v19);
        sub_24075A7E4();
        sub_2405F10A4(&v20);

        --v9;
      }

      while (v9);
    }
  }

  MEMORY[0x245CC5E60](93, 0xE100000000000000);
  return v25;
}

unint64_t sub_2406B8EFC(void *a1)
{
  a1[1] = sub_2405EEDE4();
  a1[2] = sub_2405EE9C8();
  result = sub_2406B8F34();
  a1[3] = result;
  return result;
}

unint64_t sub_2406B8F34()
{
  result = qword_27E4BC0E0;
  if (!qword_27E4BC0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC0E0);
  }

  return result;
}

unint64_t sub_2406B8F8C()
{
  result = qword_27E4BC0E8;
  if (!qword_27E4BC0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC0E8);
  }

  return result;
}

uint64_t sub_2406B8FE0(uint64_t a1, int a2)
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

uint64_t sub_2406B9028(uint64_t result, int a2, int a3)
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

unint64_t sub_2406B908C()
{
  result = qword_27E4BC0F0;
  if (!qword_27E4BC0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC0F0);
  }

  return result;
}

unint64_t sub_2406B90E4()
{
  result = qword_27E4BC0F8;
  if (!qword_27E4BC0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC0F8);
  }

  return result;
}

unint64_t sub_2406B913C()
{
  result = qword_27E4BC100;
  if (!qword_27E4BC100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC100);
  }

  return result;
}

uint64_t CUPasswordType.into(withPassword:)@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  if (a2 <= 3)
  {
    switch(a2)
    {
      case 1:
        v5 = 1;
        result = 4;
        goto LABEL_22;
      case 2:
        v5 = 1;
        result = 6;
        goto LABEL_22;
      case 3:
        v5 = 1;
        result = 8;
        goto LABEL_22;
    }

    goto LABEL_16;
  }

  if (a2 > 6)
  {
    if (a2 == 7)
    {
      v5 = 2;
      result = 1;
      goto LABEL_22;
    }

    if (a2 == 8)
    {
      result = 2;
LABEL_17:
      v5 = 2;
      goto LABEL_22;
    }

LABEL_16:
    result = 0;
    goto LABEL_17;
  }

  if (a2 == 4)
  {
    v5 = 0;
    result = 4;
    goto LABEL_22;
  }

  if (a2 != 5)
  {
    goto LABEL_16;
  }

  if (a1)
  {
    v3 = a3;
    result = sub_24075A124();
    a3 = v3;
  }

  else
  {
    result = 0;
  }

  v5 = 0;
LABEL_22:
  *a3 = result;
  *(a3 + 8) = v5;
  return result;
}

uint64_t *DiscoveryModel.CodeType.replacingUnknown(with:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = *(v2 + 8);
  if (v4 >= 2 && v3 == 0)
  {
    LOBYTE(v4) = *(result + 8);
    v3 = *result;
  }

  *a2 = v3;
  *(a2 + 8) = v4;
  return result;
}

uint64_t DiscoveryModel.CodeType.into()()
{
  v1 = *v0;
  if (!*(v0 + 8))
  {
    v1 -= 4;
    if (v1 < 5)
    {
      v2 = &unk_240775D04;
      return v2[v1];
    }

    return 5;
  }

  if (*(v0 + 8) != 1)
  {
    v2 = &unk_240775CF8;
    return v2[v1];
  }

  v1 -= 4;
  if (v1 >= 5)
  {
    return 5;
  }

  v2 = &unk_240775D18;
  return v2[v1];
}

id AISChildSetupFlowResult.__allocating_init(authResponse:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___AISChildSetupFlowResult_authResponse] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id AISChildSetupFlowResult.init(authResponse:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___AISChildSetupFlowResult_authResponse] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id AISChildSetupFlowResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AISChildSetupFlowResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CBDevice.into()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 identifier];
  if (v4)
  {
    v5 = v4;
    v6 = sub_24075A0B4();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = [v2 proximityServicePSM];
  v10 = [v2 nearbyActionType];
  v11 = [v2 nearbyActionFlags];
  AISDeviceClass.init(deviceClass:)([v2 nearbyActionDeviceClass]);
  result = [v2 nearbyActionExtraData];
  if (!result || (v13 = result, v14 = sub_2407596C4(), v16 = v15, v13, v17 = sub_240665E94(v14, v16), result = sub_2405BCD98(v14, v16), (v17 & 0x100) != 0))
  {
    LOBYTE(v17) = 0;
  }

  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  *(a1 + 20) = v10;
  *(a1 + 24) = v11;
  *(a1 + 28) = v18;
  *(a1 + 29) = 0;
  *(a1 + 30) = v17;
  return result;
}

uint64_t BLEDevice.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t BLEDevice.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void BLEDevice.nearbyActionPayload.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 28);
  v4 = *(v1 + 30);
  *a1 = *(v1 + 20);
  *(a1 + 4) = v2;
  *(a1 + 8) = v3;
  *(a1 + 10) = v4;
}

uint64_t BLEDevice.nearbyActionPayload.setter(uint64_t result)
{
  v2 = *(result + 4);
  v3 = *(result + 8);
  v4 = *(result + 10);
  *(v1 + 20) = *result;
  *(v1 + 24) = v2;
  *(v1 + 28) = v3;
  *(v1 + 30) = v4;
  return result;
}

uint64_t BLEDevice.init(identifier:proximityServicePSM:nearbyActionPayload:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a4;
  v6 = *(a4 + 1);
  v7 = *(a4 + 4);
  v8 = a4[10];
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 20) = v5;
  *(a5 + 24) = v6;
  *(a5 + 28) = v7;
  *(a5 + 30) = v8;
  return result;
}

uint64_t sub_2406B97B4()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_2406B981C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2406BAF9C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2406B9844(uint64_t a1)
{
  v2 = sub_2406BA8F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406B9880(uint64_t a1)
{
  v2 = sub_2406BA8F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BLEDevice.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC140, &qword_240775D80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - v5;
  v26 = *(v1 + 16);
  v7 = *(v1 + 20);
  v18 = *(v1 + 24);
  v19 = v7;
  v8 = *(v1 + 28);
  v16 = *(v1 + 29);
  v17 = v8;
  HIDWORD(v15) = *(v1 + 30);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406BA8F4();
  sub_24075AF74();
  v29 = 0;
  v9 = v20;
  sub_24075AB64();
  if (!v9)
  {
    v12 = v16;
    v11 = v17;
    v14 = v18;
    v13 = v19;
    v28 = 1;
    sub_24075AC04();
    v21[0] = v13;
    v22 = v14;
    v23 = v11;
    v24 = v12;
    v25 = BYTE4(v15);
    v27 = 2;
    sub_2406BA948();
    sub_24075ABE4();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t BLEDevice.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 28);
  if (*(v1 + 8))
  {
    sub_24075AE94();
    sub_24075A114();
  }

  else
  {
    sub_24075AE94();
  }

  sub_24075AEA4();
  sub_24075AE94();
  sub_24075AEB4();
  MEMORY[0x245CC6BA0](qword_2407760E0[v2]);
  sub_24075AE94();
  return sub_24075AE94();
}

uint64_t BLEDevice.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 28);
  sub_24075AE64();
  sub_24075AE94();
  if (v1)
  {
    sub_24075A114();
  }

  sub_24075AEA4();
  sub_24075AE94();
  sub_24075AEB4();
  MEMORY[0x245CC6BA0](qword_2407760E0[v2]);
  sub_24075AE94();
  sub_24075AE94();
  return sub_24075AED4();
}

uint64_t BLEDevice.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC158, &qword_240775D88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406BA8F4();
  sub_24075AF34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v22[0]) = 0;
    v9 = sub_24075AA74();
    v11 = v10;
    v12 = v9;
    LOBYTE(v22[0]) = 1;
    v34 = sub_24075AB14();
    v35 = 2;
    sub_2406BA99C();
    sub_24075AAF4();
    (*(v6 + 8))(v8, v5);
    v13 = v30;
    v14 = v31;
    v15 = v32;
    v19 = v33;
    v20 = v29;
    *v21 = v12;
    *&v21[8] = v11;
    v16 = v34;
    *&v21[16] = v34;
    v21[20] = v29;
    *&v21[24] = v30;
    v21[28] = v31;
    v21[29] = v32;
    v21[30] = v33;
    *a2 = *v21;
    *(a2 + 15) = *&v21[15];
    sub_240607D50(v21, v22);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v22[0] = v12;
    v22[1] = v11;
    v23 = v16;
    v24 = v20;
    v25 = v13;
    v26 = v14;
    v27 = v15;
    v28 = v19;
    return sub_2406BA9F0(v22);
  }
}

uint64_t sub_2406B9F5C()
{
  sub_24075AE64();
  BLEDevice.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t sub_2406B9FA0(uint64_t a1)
{
  sub_24075AE64();
  BLEDevice.hash(into:)(v2);
  return sub_24075AED4();
}

uint64_t BLEDevice.NearbyActionPayload.init(type:flags:deviceClass:problemFlags:advertisementFlags:)@<X0>(uint64_t result@<X0>, int a2@<W1>, char *a3@<X2>, char a4@<W3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a3;
  v7 = *a5;
  *a6 = result;
  *(a6 + 4) = a2;
  *(a6 + 8) = v6;
  *(a6 + 9) = a4;
  *(a6 + 10) = v7;
  return result;
}

uint64_t BLEDevice.NearbyActionPayload.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24075AF04();
  if (!v2)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
    v5 = sub_24075AC64();
    __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
    v6 = sub_24075AC74();
    __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
    sub_240684C80();
    sub_24075AC54();
    v7 = v13;
    __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
    v12 = sub_24075AC64();
    __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
    sub_2406403B0();
    sub_24075AC54();
    v9 = v13;
    __swift_destroy_boxed_opaque_existential_1(v10);
    *a2 = v5;
    *(a2 + 4) = v6;
    *(a2 + 8) = v7;
    *(a2 + 9) = v12;
    *(a2 + 10) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t BLEDevice.NearbyActionPayload.encode(to:)(void *a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24075AF44();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
  sub_24075AC94();
  if (!v2)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
    sub_24075ACA4();
    v8 = v3;
    __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
    sub_240684ADC();
    sub_24075AC84();
    __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
    sub_24075AC94();
    v8 = v4;
    __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
    sub_240640404();
    sub_24075AC84();
  }

  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t BLEDevice.NearbyActionPayload.hash(into:)()
{
  v1 = *(v0 + 8);
  sub_24075AE94();
  sub_24075AEB4();
  MEMORY[0x245CC6BA0](qword_2407760E0[v1]);
  sub_24075AE94();
  return sub_24075AE94();
}

uint64_t BLEDevice.NearbyActionPayload.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_24075AE64();
  sub_24075AE94();
  sub_24075AEB4();
  MEMORY[0x245CC6BA0](qword_2407760E0[v1]);
  sub_24075AE94();
  sub_24075AE94();
  return sub_24075AED4();
}

uint64_t sub_2406BA5B4()
{
  v1 = *(v0 + 8);
  sub_24075AE64();
  sub_24075AE94();
  sub_24075AEB4();
  MEMORY[0x245CC6BA0](qword_2407760E0[v1]);
  sub_24075AE94();
  sub_24075AE94();
  return sub_24075AED4();
}

uint64_t sub_2406BA654()
{
  v1 = *(v0 + 8);
  sub_24075AE94();
  sub_24075AEB4();
  MEMORY[0x245CC6BA0](qword_2407760E0[v1]);
  sub_24075AE94();
  return sub_24075AE94();
}

uint64_t sub_2406BA6C8(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_24075AE64();
  sub_24075AE94();
  sub_24075AEB4();
  MEMORY[0x245CC6BA0](qword_2407760E0[v2]);
  sub_24075AE94();
  sub_24075AE94();
  return sub_24075AED4();
}

BOOL _s12AppleIDSetup9BLEDeviceV19NearbyActionPayloadV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1))
  {
    return 0;
  }

  return qword_2407760E0[a1[8]] == qword_2407760E0[a2[8]] && a1[9] == a2[9] && a1[10] == a2[10];
}

BOOL _s12AppleIDSetup9BLEDeviceV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = *(a1 + 8);
  v5 = *(a1 + 20);
  v6 = *(a1 + 6);
  v7 = *(a1 + 28);
  v8 = *(a1 + 29);
  v9 = *(a1 + 30);
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 20);
  v13 = *(a2 + 24);
  v14 = *(a2 + 28);
  v15 = *(a2 + 29);
  v16 = *(a2 + 30);
  if (v3)
  {
    if (!v10)
    {
      return 0;
    }

    if (*a1 == *a2 && v3 == v10)
    {
      if (v4 != v11)
      {
        return 0;
      }

LABEL_12:
      v27[0] = v5;
      v28 = v6;
      v29 = v7;
      v30 = v8;
      v31 = v9;
      v22[0] = v12;
      v23 = v13;
      v24 = v14;
      v25 = v15;
      v26 = v16;
      return _s12AppleIDSetup9BLEDeviceV19NearbyActionPayloadV2eeoiySbAE_AEtFZ_0(v27, v22);
    }

    v20 = *(a1 + 6);
    v21 = *(a1 + 20);
    v18 = sub_24075ACF4();
    v17 = 0;
    if (v18)
    {
      v6 = v20;
      v5 = v21;
      if (v4 == v11)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v17 = 0;
    if (!v10 && v4 == v11)
    {
      goto LABEL_12;
    }
  }

  return v17;
}

unint64_t sub_2406BA8F4()
{
  result = qword_27E4BC148;
  if (!qword_27E4BC148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC148);
  }

  return result;
}

unint64_t sub_2406BA948()
{
  result = qword_27E4BC150;
  if (!qword_27E4BC150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC150);
  }

  return result;
}

unint64_t sub_2406BA99C()
{
  result = qword_27E4BC160;
  if (!qword_27E4BC160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC160);
  }

  return result;
}

unint64_t sub_2406BAA60()
{
  result = qword_27E4BC168;
  if (!qword_27E4BC168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC168);
  }

  return result;
}

unint64_t sub_2406BAAB4()
{
  result = qword_27E4BC170;
  if (!qword_27E4BC170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC170);
  }

  return result;
}

unint64_t sub_2406BAB08()
{
  result = qword_27E4BC178;
  if (!qword_27E4BC178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC178);
  }

  return result;
}

unint64_t sub_2406BAB60()
{
  result = qword_27E4BC180;
  if (!qword_27E4BC180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC180);
  }

  return result;
}

uint64_t sub_2406BABF4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_2406BAC48()
{
  result = qword_27E4BC188;
  if (!qword_27E4BC188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC188);
  }

  return result;
}

unint64_t sub_2406BACA0()
{
  result = qword_27E4BC190;
  if (!qword_27E4BC190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC190);
  }

  return result;
}

__n128 __swift_memcpy31_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_2406BAD08(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 31))
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

uint64_t sub_2406BAD64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 30) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 31) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 31) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy11_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for BLEDevice.NearbyActionPayload(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 11))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 8;
  v5 = v3 - 8;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for BLEDevice.NearbyActionPayload(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 7;
    }
  }

  return result;
}

unint64_t sub_2406BAE98()
{
  result = qword_27E4BC198;
  if (!qword_27E4BC198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC198);
  }

  return result;
}

unint64_t sub_2406BAEF0()
{
  result = qword_27E4BC1A0;
  if (!qword_27E4BC1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC1A0);
  }

  return result;
}

unint64_t sub_2406BAF48()
{
  result = qword_27E4BC1A8;
  if (!qword_27E4BC1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC1A8);
  }

  return result;
}

uint64_t sub_2406BAF9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000240789210 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000240789230 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

id SimpleAgeMigrationModelExchange.modelUpdateQueue.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t SimpleAgeMigrationModelExchange.init(modelUpdateQueue:body:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_2406BB160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_2405DA4B0;

  return XPCSession.send<A, B>(_:)(a1, a2, a3, a4, a5, a6);
}

uint64_t XPCSession.send<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_2406BB268, 0, 0);
}

uint64_t sub_2406BB268()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 48);
  *(v3 + 16) = *(v0 + 32);
  *(v3 + 32) = v4;
  *(v3 + 48) = v1;
  *(v3 + 56) = v2;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_2406BB364;
  v6 = *(v0 + 40);
  v7 = *(v0 + 16);

  return MEMORY[0x2822008A0](v7, 0, 0, 0x293A5F28646E6573, 0xE800000000000000, sub_2406BB84C, v3, v6);
}

uint64_t sub_2406BB364()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2405C2BB4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2406BB4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2405CE450;

  return XPCSession.send<A>(_:)(a1, a2, a3, a4);
}

uint64_t XPCSession.send<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2406BB58C, 0, 0);
}

uint64_t sub_2406BB58C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 32);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = sub_240759C44();
  *v4 = v0;
  v4[1] = sub_2406588D4;
  v6 = *(v0 + 16);

  return MEMORY[0x2822008A0](v6, 0, 0, 0x293A5F28646E6573, 0xE800000000000000, sub_2406BBA50, v3, v5);
}

uint64_t sub_2406BB690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19[0] = a3;
  v19[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  v12 = sub_24075A374();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v19 - v14;
  (*(v13 + 16))(v19 - v14, a1, v12);
  v16 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a4;
  *(v17 + 3) = a5;
  *(v17 + 4) = a6;
  *(v17 + 5) = a7;
  (*(v13 + 32))(&v17[v16], v15, v12);
  sub_240759B94();
}

uint64_t sub_2406BB85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  v5 = sub_24075A374();
  return sub_240658A74(a1, v5);
}

uint64_t sub_2406BB8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC1B8, &qword_2407761F0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v13 - v8;
  (*(v7 + 16))(v13 - v8, a1, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v9, v6);
  sub_240759B84();
}