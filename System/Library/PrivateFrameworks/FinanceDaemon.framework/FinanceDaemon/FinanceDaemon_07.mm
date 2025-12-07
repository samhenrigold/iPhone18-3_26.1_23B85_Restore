uint64_t sub_226B676D4()
{
  v2 = *(*v1 + 192);
  v3 = *(*v1 + 184);
  v4 = *(*v1 + 176);
  *(*v1 + 232) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_226B67918;
  }

  else
  {

    v5 = sub_226B67854;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226B67854()
{
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 96, *(v0 + 120));
  v1 = swift_task_alloc();
  *(v0 + 208) = v1;
  *v1 = v0;
  v1[1] = sub_226B674C0;

  return MEMORY[0x282200310](v0 + 160, 0, 0);
}

uint64_t sub_226B67918()
{
  v22 = v0;
  if (qword_27D7A5F58 != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_27D7A7CF8);

  v3 = v1;
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9CC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[29];
  v8 = v0[27];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v9 = 136315394;
    v12 = sub_226D66F6C();
    v13 = MEMORY[0x22AA8A6A0](v8, v12);
    v15 = v14;

    v16 = sub_226AC4530(v13, v15, &v21);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2112;
    v17 = v7;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v18;
    *v10 = v18;
    _os_log_impl(&dword_226AB4000, v4, v5, "Error notifying scheduler for types %s: %@", v9, 0x16u);
    sub_226AC47B0(v10, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x22AA8BEE0](v11, -1, -1);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
  }

  else
  {
  }

  __swift_mutable_project_boxed_opaque_existential_1((v0 + 12), v0[15]);
  v19 = swift_task_alloc();
  v0[26] = v19;
  *v19 = v0;
  v19[1] = sub_226B674C0;

  return MEMORY[0x282200310](v0 + 20, 0, 0);
}

uint64_t sub_226B67BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_226AC40E8(a3, v25 - v10, &unk_27D7A8BA0, &qword_226D734E0);
  v12 = sub_226D6E79C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_226AC47B0(v11, &unk_27D7A8BA0, &qword_226D734E0);
  }

  else
  {
    sub_226D6E78C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_226D6E6CC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_226D6E40C() + 32;
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

uint64_t sub_226B67E88(uint64_t a1)
{
  sub_226AE532C(a1, v1 + 16);
  v3 = *(a1 + 48);
  *(v1 + 56) = *(a1 + 40);
  *(v1 + 64) = v3;
  v4 = *(a1 + 56);
  *(v1 + 72) = v4;
  sub_226AC40E8(a1 + 64, v1 + 80, &qword_27D7A6910, &unk_226D721C0);
  sub_226AE532C(a1 + 104, v1 + 120);
  sub_226AE532C(a1 + 144, v1 + 160);
  sub_226AE532C(a1 + 184, v1 + 200);
  sub_226AE532C(a1 + 224, v1 + 240);
  sub_226AE532C(a1 + 264, v1 + 280);
  *(v1 + 320) = *(a1 + 304);
  sub_226AE532C(a1 + 312, v1 + 328);
  result = sub_226AC40E8(a1 + 352, &v13, &qword_27D7A7038, &qword_226D73F40);
  if (!v14)
  {
    __break(1u);
    goto LABEL_6;
  }

  result = sub_226AC484C(&v13, v1 + 368);
  v6 = *(a1 + 392);
  if (!v6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *(v1 + 408) = v6;
  result = sub_226AC40E8(a1 + 400, v1 + 416, &unk_27D7A7660, &unk_226D7B420);
  v7 = *(a1 + 440);
  if (v7)
  {
    *(v1 + 456) = v7;
    sub_226AE532C(a1 + 448, v1 + 464);
    *(v1 + 504) = *(a1 + 488);
    v8 = *(a1 + 528);
    v9 = *(a1 + 512);
    *(v1 + 512) = *(a1 + 496);
    *(v1 + 528) = v9;
    *(v1 + 544) = v8;
    v10 = *(a1 + 536);
    v11 = v4;

    v12 = v3;
    sub_226B6A324(a1);
    *(v1 + 552) = v10;
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_226B6802C(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_226B68114;

  return v4();
}

uint64_t sub_226B68114()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_226B6820C(const void *a1, uint64_t a2)
{
  v9 = &type metadata for BankConnectEnvironmentImplementation;
  v10 = sub_226B6A16C();
  v8[0] = swift_allocObject();
  memcpy((v8[0] + 16), a1, 0x3B0uLL);
  *(a2 + 56) = 0;
  sub_226AE532C(v8, a2 + 16);
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v6 = sub_226D676AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7070, &qword_226D740C0);
  sub_226D6EB8C();

  v4 = *(a2 + 56);
  *(a2 + 56) = v7;

  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return a2;
}

id sub_226B68304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = sub_226D676CC();
  v26[3] = v10;
  v26[4] = &off_283A71950;
  v26[0] = a1;
  v25[3] = type metadata accessor for FinancialDataDeletedAccountsRemover();
  v25[4] = &protocol witness table for FinancialDataDeletedAccountsRemover;
  v25[0] = a2;
  v11 = type metadata accessor for BankConnectDataDeleter();
  v12 = objc_allocWithZone(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v26, v10);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = (&v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v14);
  v18 = *v16;
  v24[3] = v10;
  v24[4] = &off_283A71950;
  v24[0] = v18;
  sub_226AE532C(v24, &v12[OBJC_IVAR____TtC13FinanceDaemon22BankConnectDataDeleter_contextProvider]);
  v19 = &v12[OBJC_IVAR____TtC13FinanceDaemon22BankConnectDataDeleter_walletInfo];
  *v19 = a3;
  *(v19 + 1) = a4;
  sub_226AE532C(v25, &v12[OBJC_IVAR____TtC13FinanceDaemon22BankConnectDataDeleter_deletedAccountsApplicationRemover]);
  sub_226AE532C(a5, &v12[OBJC_IVAR____TtC13FinanceDaemon22BankConnectDataDeleter_walletMessageUpdater]);
  v23.receiver = v12;
  v23.super_class = v11;
  v20 = objc_msgSendSuper2(&v23, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(a5);
  __swift_destroy_boxed_opaque_existential_0Tm(v25);
  __swift_destroy_boxed_opaque_existential_0Tm(v24);
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  return v20;
}

void *sub_226B684C4(uint64_t a1, void *a2)
{
  v4 = sub_226D68D9C();
  MEMORY[0x28223BE20](v4);
  v14[3] = type metadata accessor for BackgroundDeliveryRegistrationManager();
  v14[4] = &protocol witness table for BackgroundDeliveryRegistrationManager;
  v14[0] = a1;
  swift_defaultActor_initialize();
  sub_226AE532C(v14, (a2 + 14));
  v5 = type metadata accessor for BackgroundDeliveryTasks();
  v6 = swift_allocObject();
  a2[22] = v5;
  a2[23] = &off_283A6E388;
  a2[19] = v6;
  sub_226D679FC();
  swift_allocObject();
  v7 = sub_226D679EC();
  v12 = sub_226D6929C();
  v13 = MEMORY[0x277CC7820];
  __swift_allocate_boxed_opaque_existential_1(&v11);
  sub_226D6928C();
  sub_226D68D8C();
  sub_226D69A8C();
  swift_allocObject();
  sub_226D69A7C();
  *&v11 = v7;
  v8 = sub_226D6A61C();
  swift_allocObject();
  v9 = sub_226D6A60C();
  v12 = v8;
  v13 = MEMORY[0x277CC7C48];
  *&v11 = v9;
  __swift_destroy_boxed_opaque_existential_0Tm(v14);
  sub_226AC484C(&v11, (a2 + 24));
  return a2;
}

uint64_t sub_226B686A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7090, &unk_226D75E10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19[-1] - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7098, &qword_226D740D8);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v19[-1] - v10);
  v12 = sub_226D66E1C();
  v19[3] = v12;
  v19[4] = MEMORY[0x277CC6538];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(v12 - 8) + 32))(boxed_opaque_existential_1, a1, v12);
  sub_226AE532C(v19, a2 + 16);
  v14 = sub_226D6A1FC();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  *v11 = 0;
  v15 = *(v8 + 36);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A70A0, &qword_226D75ED0);
  bzero(v11 + v15, *(*(v16 - 8) + 64));
  sub_226B6AFA4(v6, v11 + v15);
  __swift_destroy_boxed_opaque_existential_0Tm(v19);
  memcpy((a2 + OBJC_IVAR____TtC13FinanceDaemon35ExtractedOrderConfigurationProvider_cachedAllowList), v11, v9);
  return a2;
}

uint64_t sub_226B68888(uint64_t a1)
{
  v15[3] = &type metadata for BankConnectEnvironmentImplementation;
  v15[4] = sub_226B6A16C();
  v15[0] = swift_allocObject();
  sub_226B42014(a1, v15[0] + 16);
  v2 = [objc_opt_self() sharedScheduler];
  sub_226AE532C(v15, v14);
  v3 = swift_allocObject();
  sub_226AC484C(v14, v3 + 16);
  v4 = sub_226D6E36C();
  v5 = swift_allocObject();
  v5[2] = 0xD00000000000002DLL;
  v5[3] = 0x8000000226D804E0;
  v5[4] = &unk_226D74018;
  v5[5] = v3;
  v13[4] = sub_226B6B020;
  v13[5] = v5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_226C01160;
  v13[3] = &block_descriptor_68;
  v6 = _Block_copy(v13);

  v7 = [v2 registerForTaskWithIdentifier:v4 usingQueue:0 launchHandler:v6];
  _Block_release(v6);

  if ((v7 & 1) == 0)
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v8 = sub_226D6E07C();
    __swift_project_value_buffer(v8, qword_28105F710);
    v9 = sub_226D6E05C();
    v10 = sub_226D6E9CC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_226AB4000, v9, v10, "Transaction classification system task couldn't be registered.", v11, 2u);
      MEMORY[0x22AA8BEE0](v11, -1, -1);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v15);
}

uint64_t sub_226B68B14(uint64_t a1)
{
  v15[3] = &type metadata for BankConnectEnvironmentImplementation;
  v15[4] = sub_226B6A16C();
  v15[0] = swift_allocObject();
  sub_226B42014(a1, v15[0] + 16);
  v2 = [objc_opt_self() sharedScheduler];
  sub_226AE532C(v15, v14);
  v3 = swift_allocObject();
  sub_226AC484C(v14, v3 + 16);
  v4 = sub_226D6E36C();
  v5 = swift_allocObject();
  v5[2] = 0xD000000000000038;
  v5[3] = 0x8000000226D804A0;
  v5[4] = &unk_226D74010;
  v5[5] = v3;
  v13[4] = sub_226B6B020;
  v13[5] = v5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_226C01160;
  v13[3] = &block_descriptor_55;
  v6 = _Block_copy(v13);

  v7 = [v2 registerForTaskWithIdentifier:v4 usingQueue:0 launchHandler:v6];
  _Block_release(v6);

  if ((v7 & 1) == 0)
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v8 = sub_226D6E07C();
    __swift_project_value_buffer(v8, qword_28105F710);
    v9 = sub_226D6E05C();
    v10 = sub_226D6E9CC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_226AB4000, v9, v10, "Background refresh reminder system task couldn't be registered.", v11, 2u);
      MEMORY[0x22AA8BEE0](v11, -1, -1);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v15);
}

uint64_t sub_226B68DA0(uint64_t a1)
{
  v11[3] = &type metadata for BankConnectEnvironmentImplementation;
  v11[4] = sub_226B6A16C();
  v11[0] = swift_allocObject();
  sub_226B42014(a1, v11[0] + 16);
  v2 = __swift_project_boxed_opaque_existential_1(v11, &type metadata for BankConnectEnvironmentImplementation);
  sub_226B68888(v2);
  v3 = [objc_opt_self() sharedScheduler];
  v4 = sub_226D6E36C();
  v5 = [v3 taskRequestForIdentifier_];

  if (v5)
  {

    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v6 = sub_226D6E07C();
    __swift_project_value_buffer(v6, qword_28105F710);
    v7 = sub_226D6E05C();
    v8 = sub_226D6E9AC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_226AB4000, v7, v8, "Transaction classification system task is already registered. Skipping submission.", v9, 2u);
      MEMORY[0x22AA8BEE0](v9, -1, -1);
    }
  }

  else
  {
    sub_226D24B38();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v11);
}

uint64_t sub_226B68F50(uint64_t a1)
{
  v2 = type metadata accessor for OfflineLabSystemTask();
  v24[3] = &type metadata for BankConnectEnvironmentImplementation;
  v24[4] = sub_226B6A16C();
  v24[0] = swift_allocObject();
  sub_226B42014(a1, v24[0] + 16);
  if (qword_28105F660 != -1)
  {
    swift_once();
  }

  v3 = sub_226D6E07C();
  __swift_project_value_buffer(v3, qword_28105F668);
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9AC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_226AC4530(0xD000000000000022, 0x8000000226D80440, v22);
    _os_log_impl(&dword_226AB4000, v4, v5, "Registering for background system task: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
  }

  else
  {
  }

  v8 = [objc_opt_self() sharedScheduler];
  sub_226AE532C(v24, v23);
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  sub_226AC484C(v23, v9 + 24);
  v10 = sub_226D6E36C();
  v11 = swift_allocObject();
  v11[2] = 0xD000000000000022;
  v11[3] = 0x8000000226D80440;
  v11[4] = &unk_226D74000;
  v11[5] = v9;
  v22[4] = sub_226B173EC;
  v22[5] = v11;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 1107296256;
  v22[2] = sub_226C01160;
  v22[3] = &block_descriptor_4;
  v12 = _Block_copy(v22);

  v13 = [v8 registerForTaskWithIdentifier:v10 usingQueue:0 launchHandler:v12];
  _Block_release(v12);

  v14 = sub_226D6E05C();
  if (v13)
  {
    v15 = sub_226D6E9AC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_226AC4530(0xD000000000000022, 0x8000000226D80440, v22);
      _os_log_impl(&dword_226AB4000, v14, v15, "Registration for %s successful", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x22AA8BEE0](v17, -1, -1);
      v18 = v16;
LABEL_11:
      MEMORY[0x22AA8BEE0](v18, -1, -1);
    }
  }

  else
  {
    v19 = sub_226D6E9DC();
    if (os_log_type_enabled(v14, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_226AB4000, v14, v19, "Unable to register offline lab task", v20, 2u);
      v18 = v20;
      goto LABEL_11;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v24);
}

uint64_t sub_226B69368(uint64_t *a1)
{
  v2 = *a1;
  refreshed = type metadata accessor for InstitutionsRefreshSystemTask();
  v24[3] = v2;
  v24[4] = sub_226B6ABCC(qword_2810608F0, type metadata accessor for BankConnectServiceImplementation, &protocol conformance descriptor for BankConnectServiceImplementation);
  v24[0] = a1;
  v4 = qword_28105F708;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = sub_226D6E07C();
  __swift_project_value_buffer(v5, qword_28105F710);
  v6 = sub_226D6E05C();
  v7 = sub_226D6E9EC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_226AC4530(0xD000000000000027, 0x8000000226D80470, v22);
    _os_log_impl(&dword_226AB4000, v6, v7, "Registering for background system task: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
  }

  else
  {
  }

  v10 = [objc_opt_self() sharedScheduler];
  sub_226AE532C(v24, v23);
  v11 = swift_allocObject();
  *(v11 + 16) = refreshed;
  sub_226AC484C(v23, v11 + 24);
  v12 = sub_226D6E36C();
  v13 = swift_allocObject();
  v13[2] = 0xD000000000000027;
  v13[3] = 0x8000000226D80470;
  v13[4] = &unk_226D74008;
  v13[5] = v11;
  v22[4] = sub_226B6B020;
  v22[5] = v13;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 1107296256;
  v22[2] = sub_226C01160;
  v22[3] = &block_descriptor_43_0;
  v14 = _Block_copy(v22);

  v15 = [v10 registerForTaskWithIdentifier:v12 usingQueue:0 launchHandler:v14];
  _Block_release(v14);

  v16 = sub_226D6E05C();
  if (v15)
  {
    v17 = sub_226D6E9EC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v22[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_226AC4530(0xD000000000000027, 0x8000000226D80470, v22);
      v20 = "Successfully registered for %s";
LABEL_11:
      _os_log_impl(&dword_226AB4000, v16, v17, v20, v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x22AA8BEE0](v19, -1, -1);
      MEMORY[0x22AA8BEE0](v18, -1, -1);
    }
  }

  else
  {
    v17 = sub_226D6E9DC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v22[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_226AC4530(0xD000000000000027, 0x8000000226D80470, v22);
      v20 = "Unable to register for %s";
      goto LABEL_11;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v24);
}

uint64_t sub_226B697D4()
{
  v68 = *MEMORY[0x277D85DE8];
  v0 = sub_226D6CF3C();
  v62 = *(v0 - 8);
  v63 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v58 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_226D6D1AC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v58 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v58 - v11;
  MEMORY[0x28223BE20](v13);
  v64 = &v58 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v58 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v58 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v58 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v58 - v25;
  if (!_set_user_dir_suffix())
  {
    goto LABEL_15;
  }

  v59 = v6;
  v60 = v12;
  v61 = v9;
  v65 = v26;

  v27 = CPSharedResourcesDirectory();
  if (!v27)
  {
    __break(1u);
    goto LABEL_12;
  }

  v28 = v27;
  v29 = sub_226D6E39C();
  v31 = v30;

  v66 = v29;
  v67 = v31;
  MEMORY[0x22AA8A510](0x7972617262694C2FLL, 0xE800000000000000);
  sub_226D6D0BC();

  v32 = *(v4 + 32);
  v32(v20, v17, v3);
  sub_226D6D0FC();
  v58 = *(v4 + 8);
  v58(v20, v3);
  v32(v65, v23, v3);
  v33 = objc_opt_self();
  v34 = [v33 defaultManager];
  sub_226D6D17C();
  v35 = sub_226D6E36C();

  LOBYTE(v29) = [v34 fileExistsAtPath_];

  if (v29)
  {
LABEL_6:
    sub_226D6CF2C();
    sub_226D6CF1C();
    sub_226D6D0CC();
    (*(v62 + 8))(v2, v63);
    v40 = v58;
    v41 = CPSharedResourcesDirectory();
    v42 = v64;
    if (v41)
    {
      v43 = v41;
      v44 = sub_226D6E39C();
      v46 = v45;

      v66 = v44;
      v67 = v46;
      MEMORY[0x22AA8A510](0x7972617262694C2FLL, 0xE800000000000000);
      v47 = v59;
      sub_226D6D0BC();

      v48 = v61;
      v32(v61, v47, v3);
      v49 = v60;
      sub_226D6D0FC();
      v40(v48, v3);
      v32(v42, v49, v3);
      v50 = [v33 defaultManager];
      sub_226D6D17C();
      v51 = sub_226D6E36C();

      LOBYTE(v48) = [v50 fileExistsAtPath_];

      if (v48)
      {
LABEL_10:
        v40(v42, v3);
        return (v40)(v65, v3);
      }

      v52 = [v33 defaultManager];
      v53 = sub_226D6D0DC();
      v66 = 0;
      v54 = [v52 createDirectoryAtURL:v53 withIntermediateDirectories:1 attributes:0 error:&v66];

      if (v54)
      {
        v55 = v66;
        goto LABEL_10;
      }

      goto LABEL_14;
    }

LABEL_12:
    __break(1u);
  }

  v36 = [v33 defaultManager];
  v37 = sub_226D6D0DC();
  v66 = 0;
  v38 = [v36 createDirectoryAtURL:v37 withIntermediateDirectories:1 attributes:0 error:&v66];

  if (v38)
  {
    v39 = v66;
    goto LABEL_6;
  }

LABEL_14:
  v57 = v66;
  sub_226D6D04C();

  swift_willThrow();
LABEL_15:
  result = sub_226D6F0AC();
  __break(1u);
  return result;
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

unint64_t sub_226B6A0BC()
{
  result = qword_2810629C8;
  if (!qword_2810629C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810629C8);
  }

  return result;
}

unint64_t sub_226B6A110()
{
  result = qword_2810623E0[0];
  if (!qword_2810623E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810623E0);
  }

  return result;
}

unint64_t sub_226B6A16C()
{
  result = qword_28105FEE0;
  if (!qword_28105FEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105FEE0);
  }

  return result;
}

uint64_t objectdestroy_5Tm()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 43);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 54);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 60);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 65);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 70);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 75);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 80);
  if (v0[88])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 85);
  }

  if (v0[93])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 90);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 95);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 100);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 105);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 110);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 115);

  return MEMORY[0x2821FE8E8](v0, 960, 7);
}

uint64_t sub_226B6A378(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_226AE5A84;

  return sub_226B646D4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_226B6A468(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AD827C;

  return sub_226B64F98(a1, v4, v5, v6);
}

uint64_t sub_226B6A56C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AD827C;

  return sub_226B80654(v2, v0 + 24);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_226B6A61C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AE5A84;

  return sub_226BF6344(v2, v0 + 24);
}

uint64_t sub_226B6A6B4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_226AE5A84;

  return sub_226B6DED8(v0 + 16);
}

uint64_t sub_226B6A748()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_226AE5A84;

  return sub_226D22DC4(v0 + 16);
}

uint64_t objectdestroy_31Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226B6A81C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226AE5A84;

  return sub_226C9ACEC(a1, v4);
}

uint64_t sub_226B6A8D4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226AE5A84;

  return sub_226B65170(a1, a2, v2);
}

uint64_t sub_226B6A980()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226AE5A84;

  return sub_226B65418();
}

uint64_t sub_226B6AA18()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226AE5A84;

  return sub_226B65F20(v2, v3, v4);
}

uint64_t sub_226B6AAC0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226AE5A84;

  return sub_226B67134(v2, v3, v4);
}

uint64_t sub_226B6AB68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ApplicationWorkspaceEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226B6ABCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226B6AC14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AE5A84;

  return sub_226CBAB34(a1, v4, v5, v6);
}

uint64_t sub_226B6ACC8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AE5A84;

  return sub_226B6802C(v2);
}

uint64_t sub_226B6AD74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226B6ADDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226B6AE3C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t objectdestroy_17Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226B6AEBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AE5A84;

  return sub_226D37410(a1, v4, v5, v6);
}

uint64_t sub_226B6AFA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7090, &unk_226D75E10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for BankConnectAccountValidationTask(uint64_t a1)
{
  result = qword_27D7A70A8;
  if (!qword_27D7A70A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_226B6B0A8(uint64_t a1)
{
  sub_226D6B9BC();
  if (v1 <= 0x3F)
  {
    sub_226B20350(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_226B6B12C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_226D6B9BC();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  type metadata accessor for BankConnectWebServiceTaskIdentifier(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_226B6B1AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6998, &unk_226D73D10);
  v1 = *(type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_226D71840;
  v4 = sub_226D6B9BC();
  (*(*(v4 - 8) + 16))(v3 + v2, v0, v4);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v5 = sub_226B1ED68(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v5;
}

uint64_t sub_226B6B314(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AD827C;

  return sub_226B6B3A8(a1);
}

uint64_t sub_226B6B3A8(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  type metadata accessor for BankConnectAccountConnectionValidationResult(0);
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B6B438, 0, 0);
}

uint64_t sub_226B6B438()
{
  v1 = __swift_project_boxed_opaque_existential_1(*(v0 + 136), *(*(v0 + 136) + 24));
  *(v0 + 80) = &type metadata for BankConnectEnvironmentImplementation;
  v2 = sub_226B6A16C();
  *(v0 + 88) = v2;
  v3 = swift_allocObject();
  *(v0 + 56) = v3;
  sub_226B42014(v1, v3 + 16);
  v4 = type metadata accessor for BankConnectAccountConnectionValidator();
  v5 = swift_allocObject();
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, &type metadata for BankConnectEnvironmentImplementation);
  v7 = off_283A722F0;
  v8 = swift_task_alloc();
  v7[2](v8, v6, &type metadata for BankConnectEnvironmentImplementation);
  *(v0 + 120) = &type metadata for BankConnectEnvironmentImplementation;
  *(v0 + 128) = v2;
  v9 = swift_allocObject();
  *(v0 + 96) = v9;
  memcpy((v9 + 16), v8, 0x3B0uLL);
  sub_226AC484C((v0 + 96), v5 + 16);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));

  *(v0 + 40) = v4;
  *(v0 + 48) = &off_283A71A08;
  *(v0 + 16) = v5;
  __swift_project_boxed_opaque_existential_1((v0 + 16), v4);
  v10 = swift_task_alloc();
  *(v0 + 160) = v10;
  *v10 = v0;
  v10[1] = sub_226B6B640;
  v12 = *(v0 + 144);
  v11 = *(v0 + 152);

  return sub_226CE9490(v11, v12);
}

uint64_t sub_226B6B640()
{

  return MEMORY[0x2822009F8](sub_226B6B73C, 0, 0);
}

uint64_t sub_226B6B73C()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_226B6C480(v3);
  v4 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_226B6C680(v4);
  sub_226B6CA78(v1, type metadata accessor for BankConnectAccountConnectionValidationResult);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  v5 = v0[1];

  return v5();
}

unint64_t sub_226B6B804()
{
  sub_226D6B9BC();
  sub_226B6CAD8(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
  v0 = sub_226D6F1CC();
  MEMORY[0x22AA8A510](v0);

  MEMORY[0x22AA8A510](41, 0xE100000000000000);
  return 0xD000000000000028;
}

uint64_t sub_226B6B8B8(uint64_t a1)
{
  result = sub_226B6CAD8(&qword_27D7A70B8, type metadata accessor for BankConnectAccountValidationTask, &unk_226D74150);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226B6B9A0(uint64_t a1)
{
  result = sub_226B6CAD8(&qword_27D7A70C0, type metadata accessor for BankConnectAccountValidationTask, &unk_226D74104);
  *(a1 + 8) = result;
  return result;
}

void sub_226B6B9F8(void *a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v43[1] = *MEMORY[0x277D85DE8];
  v5 = sub_226D68CBC();
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v10 = type metadata accessor for BankConnectAccountConnectionValidationResult(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_226D6D4AC();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = sub_226D673EC();
  v40 = *(v14 - 8);
  v41 = v14;
  MEMORY[0x28223BE20](v14);
  v42 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_opt_self() currentQueryGenerationToken];
  v43[0] = 0;
  v17 = [a1 setQueryGenerationFromToken:v16 error:v43];

  v18 = v43[0];
  if (!v17)
  {
    v26 = v43[0];
    sub_226D6D04C();

    swift_willThrow();
    return;
  }

  sub_226D69F0C();
  v19 = v18;
  v20 = sub_226D69D9C();
  if (!v3 && v20)
  {
    v21 = v20;
    v22 = [v20 accountMatchObject];
    if (!v22)
    {
LABEL_15:

      return;
    }

    v23 = v22;
    v24 = v42;
    sub_226D673FC();
    sub_226D6D46C();
    sub_226D673CC();
    sub_226B6CB40(v39, v12, type metadata accessor for BankConnectAccountConnectionValidationResult);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (!EnumCaseMultiPayload)
      {
        v27 = v37;
        v28 = v12;
        v29 = v23;
        v30 = v38;
        (*(v37 + 32))(v9, v28, v38);
        sub_226D673AC();
        (*(v27 + 16))(v36, v9, v30);
        sub_226D673BC();
        v31 = v30;
        v23 = v29;
        (*(v27 + 8))(v9, v31);
        goto LABEL_13;
      }

      if (EnumCaseMultiPayload != 1)
      {
        (*(v40 + 8))(v24, v41);

        sub_226B6CA78(v12, type metadata accessor for BankConnectAccountConnectionValidationResult);
        return;
      }

      sub_226B6CA78(v12, type metadata accessor for BankConnectAccountConnectionValidationResult);
    }

    sub_226D673AC();
LABEL_13:

    v43[0] = 0;
    if ([a1 save_])
    {
      v32 = *(v40 + 8);
      v33 = v43[0];
      v32(v42, v41);

      goto LABEL_15;
    }

    v34 = v43[0];
    sub_226D6D04C();

    swift_willThrow();
    (*(v40 + 8))(v42, v41);
  }
}

void sub_226B6BEEC(uint64_t a1, void *a2)
{
  v55[1] = *MEMORY[0x277D85DE8];
  v4 = sub_226D6D61C();
  v52 = *(v4 - 8);
  v53 = v4;
  MEMORY[0x28223BE20](v4);
  v51 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_226D6D6DC();
  v49 = *(v6 - 8);
  v50 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D6D4AC();
  v48 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v45 - v13;
  v15 = type metadata accessor for BankConnectAccountValidationTask(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D69F0C();
  v18 = a1;
  v19 = a2;
  v20 = v54;
  v21 = sub_226D69D9C();
  if (!v20)
  {
    v45 = v14;
    v46 = v9;
    v23 = v51;
    v22 = v52;
    v24 = v53;
    v47 = v19;
    v54 = 0;
    if (v21)
    {
      v25 = v11;
      v26 = v21;
      sub_226D6D46C();
      (*(v22 + 104))(v23, *MEMORY[0x277CC9810], v24);
      sub_226D6D62C();
      (*(v22 + 8))(v23, v24);
      v27 = v45;
      sub_226D6D23C();
      (*(v49 + 8))(v8, v50);
      v28 = *(v48 + 8);
      v29 = v25;
      v30 = v46;
      v28(v29, v46);
      v31 = sub_226D6D3EC();
      v28(v27, v30);
      [v26 setEarliestAccountValidationStartDate_];

      v55[0] = 0;
      if ([v47 save_])
      {
        v32 = v55[0];
      }

      else
      {
        v44 = v55[0];
        sub_226D6D04C();

        swift_willThrow();
      }
    }

    else
    {
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v33 = sub_226D6E07C();
      __swift_project_value_buffer(v33, qword_28105F710);
      v34 = v18;
      v35 = v17;
      sub_226B6CB40(v34, v17, type metadata accessor for BankConnectAccountValidationTask);
      v36 = sub_226D6E05C();
      v37 = sub_226D6E9EC();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v55[0] = v39;
        *v38 = 136315138;
        sub_226D6B9BC();
        sub_226B6CAD8(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
        v40 = sub_226D6F1CC();
        v42 = v41;
        sub_226B6CA78(v35, type metadata accessor for BankConnectAccountValidationTask);
        v43 = sub_226AC4530(v40, v42, v55);

        *(v38 + 4) = v43;
        _os_log_impl(&dword_226AB4000, v36, v37, "Account %s doesn't exist", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v39);
        MEMORY[0x22AA8BEE0](v39, -1, -1);
        MEMORY[0x22AA8BEE0](v38, -1, -1);
      }

      else
      {

        sub_226B6CA78(v17, type metadata accessor for BankConnectAccountValidationTask);
      }
    }
  }
}

uint64_t sub_226B6C480(uint64_t a1)
{
  v4[3] = &type metadata for BankConnectEnvironmentImplementation;
  v4[4] = sub_226B6CA08();
  v4[0] = swift_allocObject();
  sub_226B42014(a1, v4[0] + 16);
  __swift_project_boxed_opaque_existential_1(v4, &type metadata for BankConnectEnvironmentImplementation);
  v3 = sub_226D676AC();
  sub_226D6EB7C();

  return __swift_destroy_boxed_opaque_existential_0Tm(v4);
}

uint64_t sub_226B6C680(uint64_t a1)
{
  v2 = type metadata accessor for BankConnectAccountValidationTask(0);
  MEMORY[0x28223BE20](v2 - 8);
  v5[3] = &type metadata for BankConnectEnvironmentImplementation;
  v5[4] = sub_226B6CA08();
  v5[0] = swift_allocObject();
  sub_226B42014(a1, v5[0] + 16);
  __swift_project_boxed_opaque_existential_1(v5, &type metadata for BankConnectEnvironmentImplementation);
  v4 = sub_226D676AC();
  sub_226D6EB7C();

  return __swift_destroy_boxed_opaque_existential_0Tm(v5);
}

unint64_t sub_226B6CA08()
{
  result = qword_28105FEE8;
  if (!qword_28105FEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105FEE8);
  }

  return result;
}

uint64_t sub_226B6CA78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226B6CAD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226B6CB40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_226B6CBA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = v3 + OBJC_IVAR____TtC13FinanceDaemon30DaemonCoreDataSpotlightIndexer_coreAnalytics;
  swift_beginAccess();
  if (*(v9 + 24))
  {
    sub_226AE532C(v9, aBlock);
    __swift_project_boxed_opaque_existential_1(aBlock, v14);
    v11[3] = &type metadata for DaemonCoreDataSpotlightIndexer.SpotlightIndexingEvent;
    v11[4] = sub_226B6DDC8();
    v11[0] = 0xD00000000000002DLL;
    v11[1] = 0x8000000226D80730;
    sub_226D69AFC();
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    __swift_destroy_boxed_opaque_existential_0Tm(aBlock);
  }

  v15 = a2;
  v16 = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226C0B9A8;
  v14 = &block_descriptor_7;
  v10 = _Block_copy(aBlock);

  v12.receiver = v4;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, sel_searchableIndex_reindexAllSearchableItemsWithAcknowledgementHandler_, a1, v10);
  _Block_release(v10);
}

void sub_226B6CDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = v4 + OBJC_IVAR____TtC13FinanceDaemon30DaemonCoreDataSpotlightIndexer_coreAnalytics;
  swift_beginAccess();
  if (*(v10 + 24))
  {
    sub_226AE532C(v10, aBlock);
    __swift_project_boxed_opaque_existential_1(aBlock, v16);
    v13[3] = &type metadata for DaemonCoreDataSpotlightIndexer.SpotlightIndexingEvent;
    v13[4] = sub_226B6DDC8();
    v13[0] = 0xD000000000000032;
    v13[1] = 0x8000000226D806F0;
    sub_226D69AFC();
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    __swift_destroy_boxed_opaque_existential_0Tm(aBlock);
  }

  v11 = sub_226D6E5CC();
  v17 = a3;
  v18 = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226C0B9A8;
  v16 = &block_descriptor_5;
  v12 = _Block_copy(aBlock);

  v14.receiver = v5;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, sel_searchableIndex_reindexSearchableItemsWithIdentifiers_acknowledgementHandler_, a1, v11, v12);
  _Block_release(v12);
}

uint64_t sub_226B6D03C(void *a1)
{
  v2 = v1;
  os_transaction_create();
  v4 = [a1 objectID];
  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v5 = sub_226D6E07C();
  __swift_project_value_buffer(v5, qword_28105F5E0);
  v6 = v4;
  v7 = sub_226D6E05C();
  v8 = sub_226D6E9BC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&dword_226AB4000, v7, v8, "Creating attribute set for object with ID: %@", v9, 0xCu);
    sub_226AC47B0(v10, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v10, -1, -1);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
  }

  if (*(v2 + OBJC_IVAR____TtC13FinanceDaemon30DaemonCoreDataSpotlightIndexer_context))
  {
    MEMORY[0x28223BE20](v12);
    v14 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A70D8, &unk_226D741A0);
    sub_226D6EB8C();

    swift_unknownObjectRelease();
    return v19;
  }

  else
  {
    v15 = sub_226D6E05C();
    v16 = sub_226D6E9CC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_226AB4000, v15, v16, "No context set", v17, 2u);
      MEMORY[0x22AA8BEE0](v17, -1, -1);
    }

    swift_unknownObjectRelease();
    return 0;
  }
}

void sub_226B6D3E8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v6 = sub_226D69B8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() currentQueryGenerationToken];
  v24[0] = 0;
  v11 = [a1 setQueryGenerationFromToken:v10 error:v24];

  v12 = v24[0];
  if (v11)
  {
    v24[0] = 0;
    v13 = v12;
    v14 = [a1 existingObjectWithID:a2 error:v24];
    v15 = v24[0];
    if (v14)
    {
      v16 = v14;
      v23 = a3;
      swift_getObjectType();
      v17 = swift_conformsToProtocol2();
      v18 = v15;
      if (v17)
      {
        sub_226B6D720();
        v19 = sub_226D6BC3C();

        (*(v7 + 8))(v9, v6);
      }

      else
      {

        v19 = 0;
      }

      *v23 = v19;
    }

    else
    {
      v21 = v24[0];
      sub_226D6D04C();

      swift_willThrow();
    }

    sub_226B6D63C(a1);
  }

  else
  {
    v20 = v24[0];
    sub_226D6D04C();

    swift_willThrow();
  }
}

void sub_226B6D63C(void *a1)
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if ([a1 setQueryGenerationFromToken:0 error:v3])
  {

    MEMORY[0x2821F9840]();
  }

  else
  {
    v1 = v3[0];
    v2 = sub_226D6D04C();

    swift_willThrow();
  }
}

uint64_t sub_226B6D720()
{
  v0 = sub_226D6D71C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_226D6D6DC();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_226D6D5DC();
  MEMORY[0x28223BE20](v2 - 8);
  sub_226D6D56C();
  sub_226D6D66C();
  sub_226D6D70C();
  return sub_226D69B5C();
}

void sub_226B6D8E4()
{
  v1 = v0;
  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_28105F5E0);
  v3 = sub_226D6E05C();
  v4 = sub_226D6E9EC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_226AB4000, v3, v4, "Reindexing Spotlight", v5, 2u);
    MEMORY[0x22AA8BEE0](v5, -1, -1);
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  v9[4] = sub_226B6DE1C;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_226B6DBD8;
  v9[3] = &block_descriptor_13;
  v7 = _Block_copy(v9);
  v8 = v1;

  [v8 deleteSpotlightIndexWithCompletionHandler_];
  _Block_release(v7);
}

void sub_226B6DA74()
{
  v0 = [objc_opt_self() defaultSearchableIndex];
  sub_226B6CBA8(v0, sub_226B6DAF0, 0);
}

void sub_226B6DAF0()
{
  if (qword_28105F5F8 != -1)
  {
    swift_once();
  }

  v0 = sub_226D6E07C();
  __swift_project_value_buffer(v0, qword_28105F600);
  oslog = sub_226D6E05C();
  v1 = sub_226D6E9AC();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_226AB4000, oslog, v1, "Reindexing acknowledged", v2, 2u);
    MEMORY[0x22AA8BEE0](v2, -1, -1);
  }
}

void sub_226B6DBD8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id sub_226B6DCCC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_226B6DDC8()
{
  result = qword_281062800;
  if (!qword_281062800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281062800);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_226B6DE30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_226B6DE78(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_226B6DEF8()
{
  sub_226AE532C(v0[19], (v0 + 9));
  v1 = v0[12];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 9), v1);
  v2 = *(v1 - 8);
  v3 = swift_task_alloc();
  v0[20] = v3;
  (*(v2 + 16))();
  v0[17] = &type metadata for BankConnectEnvironmentImplementation;
  v4 = sub_226B6A16C();
  v0[18] = v4;
  v5 = swift_allocObject();
  v0[14] = v5;
  memcpy((v5 + 16), v3, 0x3B0uLL);
  type metadata accessor for BackgroundRefreshReminderSystemTask();
  inited = swift_initStackObject();
  v0[21] = inited;
  v7 = v0[17];
  v8 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 14), v7);
  v9 = *(v7 - 8);
  v10 = swift_task_alloc();
  (*(v9 + 16))(v10, v8, v7);
  inited[5] = &type metadata for BankConnectEnvironmentImplementation;
  inited[6] = v4;
  v11 = swift_allocObject();
  inited[2] = v11;
  memcpy((v11 + 16), v10, 0x3B0uLL);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 14);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 9);
  v12 = sub_226B6EB28();
  if (v12 == 2)
  {

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = v12;
    v16 = swift_task_alloc();
    v0[22] = v16;
    *v16 = v0;
    v16[1] = sub_226B6E1F0;

    return sub_226B6E3DC(v15 & 1);
  }
}

uint64_t sub_226B6E1F0()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_226B6E370;
  }

  else
  {
    v2 = sub_226B6E304;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226B6E304()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226B6E370()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226B6E3DC(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 32) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  *(v2 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B6E47C, 0, 0);
}

uint64_t sub_226B6E47C()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 16), *(*(v0 + 16) + 40));
  v1 = sub_226D6BAAC();
  if (sub_226B6EB28() == 2)
  {
  }

  else
  {
    v2 = *(v0 + 24);
    v3 = *(v0 + 32);
    v4 = sub_226D6E79C();
    (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    *(v5 + 32) = v1;
    *(v5 + 40) = v3;

    sub_226B6E8CC(0, 0, v2, &unk_226D74280, v5);

    sub_226AC47B0(v2, &unk_27D7A8BA0, &qword_226D734E0);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_226B6E628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 40) = a5;
  *(v5 + 16) = a4;
  return MEMORY[0x2822009F8](sub_226B6E64C, 0, 0);
}

uint64_t sub_226B6E64C()
{

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_226B6E6F0;
  v2 = *(v0 + 40);
  v3 = *(v0 + 16);

  return sub_226B1757C(v2, v3);
}

uint64_t sub_226B6E6F0()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_226B6E868;
  }

  else
  {
    v2 = sub_226B6E804;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226B6E804()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226B6E868()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226B6E8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_226B6F240(a3, v22 - v9);
  v11 = sub_226D6E79C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_226AC47B0(v10, &unk_27D7A8BA0, &qword_226D734E0);
  }

  else
  {
    sub_226D6E78C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_226D6E6CC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_226D6E40C() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_226B6EB28()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_226D6BFCC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v8 = sub_226D6E07C();
  __swift_project_value_buffer(v8, qword_28105F710);
  v9 = sub_226D6E05C();
  v10 = sub_226D6E9AC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_226AB4000, v9, v10, "Starting background refresh reminder check.", v11, 2u);
    MEMORY[0x22AA8BEE0](v11, -1, -1);
  }

  sub_226D6BFBC();
  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  v12 = sub_226D676AC();
  MEMORY[0x28223BE20](v12);
  *&v16[-16] = v7;
  *&v16[-8] = v13;
  sub_226D6EB8C();
  v14 = (v5 + 8);

  if (!v1)
  {
    v2 = v16[15];
  }

  (*v14)(v7, v4);
  return v2;
}

uint64_t sub_226B6ED68(uint64_t a1)
{
  v22[0] = a1;
  v1 = sub_226D6D4AC();
  v23 = *(v1 - 8);
  v24 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68C8, &qword_226D74270);
  v4 = sub_226D6B7FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_226D72130;
  v9 = v8 + v7;
  v10 = *(v5 + 104);
  v10(v9, *MEMORY[0x277CC8008], v4);
  v10(v9 + v6, *MEMORY[0x277CC8000], v4);
  v10(v9 + 2 * v6, *MEMORY[0x277CC8010], v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8C20, &qword_226D72160);
  v11 = sub_226D6B81C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_226D70840;
  (*(v12 + 104))(v14 + v13, *MEMORY[0x277CC8028], v11);
  sub_226D6D46C();
  v15 = v22[1];
  v16 = sub_226D6BFAC();
  if (v15)
  {
    (*(v23 + 8))(v3, v24);
  }

  else
  {
    v18 = v16;
    (*(v23 + 8))(v3, v24);

    v19 = *(v18 + 16);

    if (v19)
    {
      v20 = *(sub_226D6BF9C() + 16);

      return v20 == 0;
    }

    else
    {
      sub_226D6BFCC();
      v21 = *(sub_226D6C14C() + 16) == 0;

      return (2 * v21);
    }
  }
}

uint64_t sub_226B6F0EC()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_226B6F148@<X0>(_BYTE *a1@<X8>)
{
  result = sub_226B6ED68(*(v1 + 24));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_226B6F17C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_226AD827C;

  return sub_226B6E628(a1, v4, v5, v6, v7);
}

uint64_t sub_226B6F240(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_226B6F2B0()
{
  v18[1] = *MEMORY[0x277D85DE8];
  v0 = objc_allocWithZone(MEMORY[0x277CF07D8]);
  v1 = sub_226D6E36C();
  v2 = [v0 initWithIdentifier_];

  v3 = v2;
  [v3 setPriority_];
  [v3 setInterval_];
  [v3 setMinDurationBetweenInstances_];
  [v3 setRequiresProtectionClass_];
  [v3 setRequiresUserInactivity_];
  [v3 setRequiresExternalPower_];
  [v3 setRequiresNetworkConnectivity_];
  v4 = sub_226D6E5CC();
  [v3 setInvolvedProcesses_];

  v5 = [objc_opt_self() sharedScheduler];
  v18[0] = 0;
  v6 = [v5 submitTaskRequest:v3 error:v18];

  if (v6)
  {
    v7 = v18[0];
  }

  else
  {
    v8 = v18[0];
    v9 = sub_226D6D04C();

    swift_willThrow();
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v10 = sub_226D6E07C();
    __swift_project_value_buffer(v10, qword_28105F710);
    v11 = v9;
    v12 = sub_226D6E05C();
    v13 = sub_226D6E9CC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = v9;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_226AB4000, v12, v13, "Couldn't submit request for background refresh reminder system task: %@", v14, 0xCu);
      sub_226AC47B0(v15, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v15, -1, -1);
      MEMORY[0x22AA8BEE0](v14, -1, -1);
    }

    else
    {
    }
  }
}

void sub_226B6F5E4()
{
  v19[1] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  v1 = [v0 sharedScheduler];
  v2 = sub_226D6E36C();
  v3 = [v1 taskRequestForIdentifier_];

  if (v3)
  {

    v4 = [v0 sharedScheduler];
    v5 = sub_226D6E36C();
    v19[0] = 0;
    v6 = [v4 cancelTaskRequestWithIdentifier:v5 error:v19];

    v7 = v19[0];
    if (v6)
    {

      v8 = v7;
    }

    else
    {
      v9 = v19[0];
      v10 = sub_226D6D04C();

      swift_willThrow();
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v11 = sub_226D6E07C();
      __swift_project_value_buffer(v11, qword_28105F710);
      v12 = v10;
      v13 = sub_226D6E05C();
      v14 = sub_226D6E9CC();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v15 = 138412290;
        v17 = v10;
        v18 = _swift_stdlib_bridgeErrorToNSError();
        *(v15 + 4) = v18;
        *v16 = v18;
        _os_log_impl(&dword_226AB4000, v13, v14, "Background refresh reminder system task couldn't be cancelled. Error: %@", v15, 0xCu);
        sub_226AC47B0(v16, &qword_27D7A5FB0, &qword_226D70870);
        MEMORY[0x22AA8BEE0](v16, -1, -1);
        MEMORY[0x22AA8BEE0](v15, -1, -1);
      }

      else
      {
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for BackgroundRefreshReminderNotificationAction(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BackgroundRefreshReminderNotificationAction(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_226B6FA14(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_226B6FA30(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

void *sub_226B6FA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_226D6BBAC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4[2] = sub_226B703AC(a2, a1);
  v14 = sub_226D6B8FC();
  v36 = a4;
  if (v14)
  {
    v34 = a3;
    v35 = a2;
    v15 = v4[2];
    type metadata accessor for StoreMappingCoordinator();
    swift_allocObject();

    v16 = sub_226B5E064(v15, a4);
    v5[4] = v16;
    v17 = objc_opt_self();

    v18 = [v17 defaultCenter];
    [v18 addObserver:v16 selector:sel_startSync_ name:*MEMORY[0x277CBE260] object:0];

    if (qword_28105F5F8 != -1)
    {
      swift_once();
    }

    v19 = sub_226D6E07C();
    __swift_project_value_buffer(v19, qword_28105F600);
    v20 = sub_226D6E05C();
    v21 = sub_226D6E9CC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_226AB4000, v20, v21, "Started mirroring coordinator", v22, 2u);
      MEMORY[0x22AA8BEE0](v22, -1, -1);
    }

    a3 = v34;
    a2 = v35;
  }

  else
  {
    v4[4] = 0;
  }

  (*(v11 + 16))(v13, a3, v10);
  sub_226D68D2C();
  swift_allocObject();
  v5[3] = sub_226D68D0C();

  sub_226D68D1C();

  v23 = v5[2];
  sub_226D6973C();

  v24 = sub_226D6971C();
  v25 = sub_226B6FF0C(v23, v24);
  v5[5] = v25;
  if (v25)
  {
    [v25 startSpotlightIndexing];
  }

  if (qword_28105F5F8 != -1)
  {
    swift_once();
  }

  v26 = sub_226D6E07C();
  __swift_project_value_buffer(v26, qword_28105F600);
  v27 = sub_226D6E05C();
  v28 = sub_226D6E9AC();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_226AB4000, v27, v28, "Started Spotlight indexing", v29, 2u);
    MEMORY[0x22AA8BEE0](v29, -1, -1);
  }

  (*(v11 + 8))(a3, v10);
  v30 = sub_226D6B94C();
  (*(*(v30 - 8) + 8))(a2, v30);
  v31 = sub_226D6B92C();
  (*(*(v31 - 8) + 8))(a1, v31);
  return v5;
}

uint64_t sub_226B6FE98()
{

  return swift_deallocClassInstance();
}

char *sub_226B6FF0C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = sub_226D6B70C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v22[3] = v3;
  v22[4] = MEMORY[0x277CC78A8];
  v22[0] = a2;
  v8 = sub_226D6769C();
  v9 = [v8 persistentStoreDescriptions];

  sub_226B709B4();
  sub_226D6E5EC();

  (*(v5 + 104))(v7, *MEMORY[0x277CC7FF0], v4);
  v10 = sub_226D6E5BC();

  (*(v5 + 8))(v7, v4);
  if (v10)
  {
    v11 = sub_226D6769C();
    v12 = [v11 persistentStoreCoordinator];

    v13 = [objc_allocWithZone(type metadata accessor for DaemonCoreDataSpotlightIndexer()) initForStoreWithDescription:v10 coordinator:v12];
    sub_226AE532C(v22, v21);
    v14 = OBJC_IVAR____TtC13FinanceDaemon30DaemonCoreDataSpotlightIndexer_coreAnalytics;
    swift_beginAccess();
    v15 = v13;
    sub_226B70A00(v21, v13 + v14);
    swift_endAccess();
    v16 = sub_226D676AC();
    v17 = *&v15[OBJC_IVAR____TtC13FinanceDaemon30DaemonCoreDataSpotlightIndexer_context];
    *&v15[OBJC_IVAR____TtC13FinanceDaemon30DaemonCoreDataSpotlightIndexer_context] = v16;

    v18 = [objc_opt_self() defaultCenter];
    [v18 addObserver:v15 selector:sel_indexSearchableItemsToCurrentHistoryToken name:*MEMORY[0x277CBE260] object:v12];

    __swift_destroy_boxed_opaque_existential_0Tm(v22);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v22);

    return 0;
  }

  return v15;
}

uint64_t sub_226B701D8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6660, &qword_226D74320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_226D72130;
  *(inited + 32) = 0x6D6F44726F727265;
  *(inited + 40) = 0xEB000000006E6961;
  v3 = [a1 domain];
  v4 = sub_226D6E39C();
  v6 = v5;

  *(inited + 48) = v4;
  *(inited + 56) = v6;
  *(inited + 64) = 0x646F43726F727265;
  *(inited + 72) = 0xE900000000000065;
  [a1 code];
  *(inited + 80) = sub_226D6F1CC();
  *(inited + 88) = v7;
  *(inited + 96) = 0xD000000000000014;
  *(inited + 104) = 0x8000000226D808E0;
  v8 = [a1 localizedDescription];
  v9 = sub_226D6E39C();
  v11 = v10;

  *(inited + 112) = v9;
  *(inited + 120) = v11;
  v12 = sub_226B224FC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6668, &qword_226D71880);
  swift_arrayDestroy();
  type metadata accessor for OrdersAutoBugCaptureReporter();
  v13 = swift_initStackObject();
  v14 = [objc_allocWithZone(MEMORY[0x277CC85F0]) init];
  *(v13 + 16) = v14;
  sub_226BA2B08(v12);
}

uint64_t sub_226B703AC(uint64_t a1, uint64_t a2)
{
  v17[13] = *MEMORY[0x277D85DE8];
  v4 = sub_226D6D1AC();
  v5 = *(v4 - 8);
  v17[2] = v4;
  v17[3] = v5;
  MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v8);
  v9 = sub_226D6A98C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A70E8, &qword_226D74318) + 48);
  v14 = sub_226D6B94C();
  (*(*(v14 - 8) + 16))(v12, a1, v14);
  v15 = sub_226D6B92C();
  (*(*(v15 - 8) + 16))(&v12[v13], a2, v15);
  (*(v10 + 104))(v12, *MEMORY[0x277CC7CD0], v9);
  sub_226D676CC();
  swift_allocObject();
  return sub_226D6768C();
}

unint64_t sub_226B709B4()
{
  result = qword_28105F420;
  if (!qword_28105F420)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28105F420);
  }

  return result;
}

uint64_t sub_226B70A00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A70E0, &qword_226D741B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_226B70A70()
{
  v1 = sub_226D6D4AC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_226D6F2FC();
  sub_226D6D52C();
  sub_226B728E8(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_226D6E30C();
  v8 = type metadata accessor for AccountAndStartingDate(0);
  sub_226AC40E8(v0 + *(v8 + 20), v7, &qword_27D7A8BE0, &unk_226D718F0);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_226D6F31C();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_226D6F31C();
    sub_226B728E8(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_226D6E30C();
    (*(v2 + 8))(v4, v1);
  }

  return sub_226D6F35C();
}

uint64_t sub_226B70CC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D6D4AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v12 - v9;
  sub_226D6D52C();
  sub_226B728E8(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_226D6E30C();
  sub_226AC40E8(v2 + *(a2 + 20), v10, &qword_27D7A8BE0, &unk_226D718F0);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    return sub_226D6F31C();
  }

  (*(v5 + 32))(v7, v10, v4);
  sub_226D6F31C();
  sub_226B728E8(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_226D6E30C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_226B70F04(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D6D4AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v12 - v9;
  sub_226D6F2FC();
  sub_226D6D52C();
  sub_226B728E8(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_226D6E30C();
  sub_226AC40E8(v2 + *(a2 + 20), v10, &qword_27D7A8BE0, &unk_226D718F0);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_226D6F31C();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_226D6F31C();
    sub_226B728E8(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_226D6E30C();
    (*(v5 + 8))(v7, v4);
  }

  return sub_226D6F35C();
}

uint64_t sub_226B71160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v25 - v10;
  v12 = sub_226D6D4AC();
  v26 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v25 - v16;
  if (sub_226D6D4EC())
  {
    sub_226AC40E8(a3, v11, &qword_27D7A8BE0, &unk_226D718F0);
    v18 = *(v26 + 48);
    if (v18(v11, 1, v12) == 1)
    {
      sub_226AC47B0(v11, &qword_27D7A8BE0, &unk_226D718F0);
      v19 = 1;
    }

    else
    {
      v25[1] = v3;
      v20 = v11;
      v21 = *(v26 + 32);
      v21(v17, v20, v12);
      v22 = type metadata accessor for AccountAndStartingDate(0);
      sub_226AC40E8(a1 + *(v22 + 20), v8, &qword_27D7A8BE0, &unk_226D718F0);
      if (v18(v8, 1, v12) == 1)
      {
        (*(v26 + 8))(v17, v12);
        sub_226AC47B0(v8, &qword_27D7A8BE0, &unk_226D718F0);
        v19 = 1;
      }

      else
      {
        v21(v14, v8, v12);
        sub_226B728E8(&qword_27D7A66D8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        v19 = sub_226D6E34C();
        v23 = *(v26 + 8);
        v23(v14, v12);
        v23(v17, v12);
      }
    }
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t type metadata accessor for AccountAndStartingDate(uint64_t a1)
{
  result = qword_281061D28;
  if (!qword_281061D28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226B714D0@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = type metadata accessor for AccountAndStartingDate(0);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3);
  v35 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - v15;
  v17 = *a1;
  v18 = sub_226D6E36C();
  v19 = [v17 valueForKeyPath_];

  if (v19)
  {
    sub_226D6ED0C();
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  v41 = v39;
  v42 = v40;
  if (*(&v40 + 1))
  {
    v20 = sub_226D6D52C();
    v21 = swift_dynamicCast();
    (*(*(v20 - 8) + 56))(v16, v21 ^ 1u, 1, v20);
  }

  else
  {
    sub_226AC47B0(&v41, &unk_27D7A8BB0, &unk_226D74340);
    v22 = sub_226D6D52C();
    (*(*(v22 - 8) + 56))(v16, 1, 1, v22);
  }

  v23 = sub_226D6E36C();
  v24 = [v17 valueForKeyPath_];

  if (v24)
  {
    sub_226D6ED0C();
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  v25 = v37;
  v41 = v39;
  v42 = v40;
  if (*(&v40 + 1))
  {
    v26 = sub_226D6D4AC();
    v27 = swift_dynamicCast();
    (*(*(v26 - 8) + 56))(v10, v27 ^ 1u, 1, v26);
  }

  else
  {
    sub_226AC47B0(&v41, &unk_27D7A8BB0, &unk_226D74340);
    v28 = sub_226D6D4AC();
    (*(*(v28 - 8) + 56))(v10, 1, 1, v28);
  }

  sub_226AC40E8(v16, v13, &qword_27D7A6D68, &qword_226D75210);
  sub_226AC40E8(v10, v7, &qword_27D7A8BE0, &unk_226D718F0);
  v29 = sub_226D6D52C();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v13, 1, v29) == 1)
  {
    sub_226AC47B0(v7, &qword_27D7A8BE0, &unk_226D718F0);
    sub_226AC47B0(v13, &qword_27D7A6D68, &qword_226D75210);
    v31 = 1;
    v32 = v38;
  }

  else
  {
    v33 = v35;
    (*(v30 + 32))(v35, v13, v29);
    sub_226B72784(v7, v33 + *(v25 + 20));
    v32 = v38;
    sub_226B72720(v33, v38);
    v31 = 0;
  }

  (*(v36 + 56))(v32, v31, 1, v25);
  sub_226AC47B0(v10, &qword_27D7A8BE0, &unk_226D718F0);
  return sub_226AC47B0(v16, &qword_27D7A6D68, &qword_226D75210);
}

BOOL sub_226B71A3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D6D4AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C30, &unk_226D74330);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if ((sub_226D6D4EC() & 1) == 0)
  {
    return 0;
  }

  v22 = v7;
  v14 = *(type metadata accessor for AccountAndStartingDate(0) + 20);
  v15 = *(v11 + 48);
  sub_226AC40E8(a1 + v14, v13, &qword_27D7A8BE0, &unk_226D718F0);
  sub_226AC40E8(a2 + v14, &v13[v15], &qword_27D7A8BE0, &unk_226D718F0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_226AC47B0(v13, &qword_27D7A8BE0, &unk_226D718F0);
      return 1;
    }

    goto LABEL_7;
  }

  sub_226AC40E8(v13, v10, &qword_27D7A8BE0, &unk_226D718F0);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_226AC47B0(v13, &qword_27D7A6C30, &unk_226D74330);
    return 0;
  }

  v18 = v22;
  (*(v5 + 32))(v22, &v13[v15], v4);
  sub_226B728E8(&qword_27D7A6C38, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v19 = sub_226D6E35C();
  v20 = *(v5 + 8);
  v20(v18, v4);
  v20(v10, v4);
  sub_226AC47B0(v13, &qword_27D7A8BE0, &unk_226D718F0);
  return (v19 & 1) != 0;
}

uint64_t sub_226B71D90(uint64_t a1, uint64_t a2)
{
  v2 = sub_226D67F1C();
  v50 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A70F0, &qword_226D74328);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v44 - v4;
  v6 = type metadata accessor for AccountAndStartingDate(0);
  v48 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v51 = (&v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v47 = &v44 - v9;
  sub_226D683BC();
  v10 = [swift_getObjCClassFromMetadata() entityName];
  if (!v10)
  {
    sub_226D6E39C();
    v10 = sub_226D6E36C();
  }

  v11 = [objc_allocWithZone(MEMORY[0x277CBE428]) initWithEntityName_];

  v12 = sub_226D6834C();
  [v11 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6200, &unk_226D70C30);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_226D71840;
  v14 = MEMORY[0x277D837D0];
  *(v13 + 32) = 0x49746E756F636361;
  *(v13 + 40) = 0xE900000000000044;
  *(v13 + 88) = v14;
  *(v13 + 56) = v14;
  *(v13 + 64) = 0xD000000000000010;
  *(v13 + 72) = 0x8000000226D80900;
  v15 = sub_226D6E5CC();

  [v11 setPropertiesToFetch_];

  sub_226B04068();
  v16 = sub_226D6EBBC();
  v32 = v16;
  if (!(v16 >> 62))
  {
    v33 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v45 = v11;
    if (v33)
    {
      goto LABEL_8;
    }

LABEL_27:
    v36 = MEMORY[0x277D84F90];
LABEL_28:

    v43 = sub_226AE483C(v36);

    return v43;
  }

  v33 = sub_226D6EDFC();
  v45 = v11;
  if (!v33)
  {
    goto LABEL_27;
  }

LABEL_8:
  v34 = 0;
  v49 = v32 & 0xFFFFFFFFFFFFFF8;
  v50 = v32 & 0xC000000000000001;
  v35 = (v48 + 48);
  v36 = MEMORY[0x277D84F90];
  v46 = v6;
  while (1)
  {
    if (v50)
    {
      v37 = MEMORY[0x22AA8AFD0](v34, v32);
    }

    else
    {
      if (v34 >= *(v49 + 16))
      {
        goto LABEL_25;
      }

      v37 = *(v32 + 8 * v34 + 32);
    }

    v38 = v37;
    v2 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    v52[0] = v37;
    sub_226B714D0(v52, v5);

    if ((*v35)(v5, 1, v6) == 1)
    {
      sub_226AC47B0(v5, &qword_27D7A70F0, &qword_226D74328);
    }

    else
    {
      v39 = v47;
      sub_226B72720(v5, v47);
      sub_226B72720(v39, v51);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_226BBB680(0, v36[2] + 1, 1, v36);
      }

      v41 = v36[2];
      v40 = v36[3];
      if (v41 >= v40 >> 1)
      {
        v36 = sub_226BBB680((v40 > 1), v41 + 1, 1, v36);
      }

      v36[2] = v41 + 1;
      sub_226B72720(v51, v36 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v41);
      v6 = v46;
    }

    ++v34;
    if (v2 == v33)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  swift_once();
  v17 = sub_226D6E07C();
  __swift_project_value_buffer(v17, qword_28105F5E0);
  (*(v50 + 16))(v35, v33, v2);
  v18 = 0;
  v19 = sub_226D6E05C();
  v20 = sub_226D6E9CC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v50;
    v51 = v23;
    v52[0] = v23;
    *v21 = 136315394;
    sub_226B728E8(&qword_281062BC0, MEMORY[0x277CC7098], MEMORY[0x277CC70C8]);
    v25 = sub_226D6F1CC();
    v27 = v26;
    (*(v24 + 8))(v35, v2);
    v28 = sub_226AC4530(v25, v27, v52);

    *(v21 + 4) = v28;
    *(v21 + 12) = 2112;
    v29 = 0;
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 14) = v30;
    *v22 = v30;
    _os_log_impl(&dword_226AB4000, v19, v20, "Could not find accountIDs associated to Application %s: %@", v21, 0x16u);
    sub_226AC47B0(v22, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v22, -1, -1);
    v31 = v51;
    __swift_destroy_boxed_opaque_existential_0Tm(v51);
    MEMORY[0x22AA8BEE0](v31, -1, -1);
    MEMORY[0x22AA8BEE0](v21, -1, -1);
  }

  else
  {

    (*(v50 + 8))(v35, v2);
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_226B724B0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_226D6A34C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a2, v6, v8);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == *MEMORY[0x277CC7BB8])
  {

LABEL_3:
    (*(v7 + 8))(a2, v6);
    v12 = sub_226D67F1C();
    (*(*(v12 - 8) + 8))(a1, v12);
    return 0;
  }

  if (v11 == *MEMORY[0x277CC7BA0])
  {
    v14 = sub_226B71D90(a3, a1);

    (*(v7 + 8))(a2, v6);
    v15 = sub_226D67F1C();
    (*(*(v15 - 8) + 8))(a1, v15);
    return v14;
  }

  else
  {
    v16 = *MEMORY[0x277CC7BA8];
    v17 = v11;

    if (v17 == v16)
    {
      goto LABEL_3;
    }

    v18 = *(v7 + 8);
    v18(a2, v6);
    v19 = sub_226D67F1C();
    (*(*(v19 - 8) + 8))(a1, v19);
    v18(v10, v6);
    return MEMORY[0x277D84FA0];
  }
}

uint64_t sub_226B72720(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountAndStartingDate(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226B72784(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_226B7281C(uint64_t a1)
{
  sub_226D6D52C();
  if (v1 <= 0x3F)
  {
    sub_226B20350(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_226B728E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t BankConnectServiceImplementation.loadGrantedAccounts(forConsentID:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_226D6764C();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = sub_226D6D4AC();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B72A50, 0, 0);
}

uint64_t sub_226B72A50()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  sub_226D6BAAC();
  v4 = sub_226D676AC();
  v0[14] = v4;

  v5 = swift_task_alloc();
  v5[2] = v3;
  v5[3] = v1;
  v5[4] = v4;
  sub_226D6EB8C();
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[8];

  v9 = v0[3];
  v0[15] = v0[2];
  v0[16] = v9;
  sub_226D6D46C();
  v10 = __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  sub_226B41FC0();
  v19 = swift_allocObject();
  sub_226B42014(v10, v19 + 16);
  v11 = sub_226D6B13C();
  swift_allocObject();
  v12 = sub_226D6B12C();
  v0[4] = v12;
  v0[17] = v12;
  (*(v7 + 104))(v6, *MEMORY[0x277CC6D38], v8);
  v13 = swift_task_alloc();
  v0[18] = v13;
  *v13 = v0;
  v13[1] = sub_226B72CBC;
  v14 = v0[10];
  v16 = v0[5];
  v15 = v0[6];
  v17 = MEMORY[0x277CC7E10];

  return MEMORY[0x282119F18](v16, v15, v14, v11, v17);
}

uint64_t sub_226B72CBC()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);
  if (v0)
  {
    v3 = sub_226B72EF8;
  }

  else
  {
    v3 = sub_226B72E24;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226B72E24()
{
  v1 = v0[16];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
  v7 = v0[7];

  sub_226B7335C(v7, v2, v1, v4);

  (*(v5 + 8))(v4, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_226B72EF8()
{
  v27 = v0;

  if (qword_27D7A5F60 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_27D7A7D10);

  v3 = v1;
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9CC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[19];
    v8 = v0[5];
    v7 = v0[6];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_226AC4530(v8, v7, &v26);
    *(v9 + 12) = 2112;
    v12 = v6;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_226AB4000, v4, v5, "Failed to load granted accounts for consentID: %s with: %@.", v9, 0x16u);
    sub_226B17298(v10);
    MEMORY[0x22AA8BEE0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x22AA8BEE0](v11, -1, -1);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
  }

  v14 = v0[19];
  v16 = v0[15];
  v15 = v0[16];
  v17 = v0[13];
  v18 = v0[14];
  v19 = v0[12];
  v25 = v0[11];
  v20 = v0[7];
  v21 = sub_226D6A0DC();
  sub_226B42070(&qword_27D7A6290, MEMORY[0x277CC7AD0], MEMORY[0x277CC7AD8]);
  swift_allocError();
  *v22 = v14;
  (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277CC7AB0], v21);
  swift_willThrow();
  sub_226B7335C(v20, v16, v15, v17);

  (*(v19 + 8))(v17, v25);

  v23 = v0[1];

  return v23();
}

void sub_226B731F4(uint64_t *a4@<X8>)
{
  sub_226D6842C();
  v6 = sub_226D683FC();
  if (!v4)
  {
    if (v6)
    {
      v7 = v6;
      v8 = [v6 id];
      v9 = sub_226D6E39C();
      v11 = v10;

      *a4 = v9;
      a4[1] = v11;
    }

    else
    {
      v12 = sub_226D6A0DC();
      sub_226B42070(&qword_27D7A6290, MEMORY[0x277CC7AD0], MEMORY[0x277CC7AD8]);
      swift_allocError();
      (*(*(v12 - 8) + 104))(v13, *MEMORY[0x277CC7AB8], v12);
      swift_willThrow();
    }
  }
}

uint64_t sub_226B7335C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_226D6D4AC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6D46C();
  v11 = __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  sub_226AE532C((v11 + 41), v17);
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  sub_226D6D3BC();
  v13 = v12;
  v16[3] = &_s24InstitutionDurationEventVN;
  v16[4] = sub_226B420B8();
  v14 = swift_allocObject();
  v16[0] = v14;
  v14[2] = 0xD000000000000034;
  v14[3] = 0x8000000226D80940;
  v14[4] = a2;
  v14[5] = a3;
  v14[6] = v13;

  sub_226D69AFC();
  (*(v8 + 8))(v10, v7);
  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  return __swift_destroy_boxed_opaque_existential_0Tm(v17);
}

uint64_t BankConnectServiceImplementation.scheduleHistoricalTransactionTask(for:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_226D6A0DC();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = sub_226D6B9BC();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B7363C, 0, 0);
}

uint64_t sub_226B7363C()
{
  v1 = v0[12];
  v2 = v0[4];
  (*(v0[10] + 16))(v1, v0[3], v0[9]);
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  sub_226D6BAAC();
  v3 = sub_226D676AC();

  v4 = swift_task_alloc();
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  sub_226D6EB7C();
  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[10];

  (*(v7 + 8))(v5, v6);

  v8 = v0[1];

  return v8();
}

void sub_226B73BBC(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = sub_226D6D4AC();
  v37 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_226D6B9BC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D69F0C();
  v12 = sub_226D69D9C();
  if (!v2)
  {
    v13 = v12;
    v36 = v11;
    if (v12)
    {
      sub_226D6D46C();
      v14 = sub_226D6D3EC();
      (*(v37 + 8))(v7, v5);
      [v13 setEarliestHistoricalTransactionsRequestStartDate_];

      v38 = 0;
      if ([a2 save_])
      {
        v15 = v38;
      }

      else
      {
        v29 = v38;
        sub_226D6D04C();

        swift_willThrow();
      }
    }

    else
    {
      if (qword_27D7A5F60 != -1)
      {
        swift_once();
      }

      v16 = sub_226D6E07C();
      __swift_project_value_buffer(v16, qword_27D7A7D10);
      v17 = v36;
      v18 = a1;
      v19 = v8;
      (*(v9 + 16))(v36, v18, v8);
      v20 = sub_226D6E05C();
      v21 = sub_226D6E9CC();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v38 = v23;
        *v22 = 136315138;
        sub_226B42070(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
        v24 = sub_226D6F1CC();
        v25 = v17;
        v27 = v26;
        (*(v9 + 8))(v25, v19);
        v28 = sub_226AC4530(v24, v27, &v38);

        *(v22 + 4) = v28;
        _os_log_impl(&dword_226AB4000, v20, v21, "Failed to schedule historical transactions task, no account found for %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v23);
        MEMORY[0x22AA8BEE0](v23, -1, -1);
        MEMORY[0x22AA8BEE0](v22, -1, -1);
      }

      else
      {

        (*(v9 + 8))(v17, v8);
      }

      v30 = sub_226D6A0DC();
      sub_226B42070(&qword_27D7A6290, MEMORY[0x277CC7AD0], MEMORY[0x277CC7AD8]);
      swift_allocError();
      v32 = v31;
      v38 = 0;
      v39 = 0xE000000000000000;
      sub_226D6EEFC();

      v38 = 0xD000000000000015;
      v39 = 0x8000000226D80920;
      sub_226B42070(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
      v33 = sub_226D6F1CC();
      MEMORY[0x22AA8A510](v33);

      v34 = v39;
      *v32 = v38;
      v32[1] = v34;
      (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277CC7AC0], v30);
      swift_willThrow();
    }
  }
}

id sub_226B74118(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = sub_226D6E36C();

  v7[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() bundleRecordWithApplicationIdentifier:v2 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_226D6D04C();

    swift_willThrow();
  }

  return v3;
}

id sub_226B741F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_226B74118(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

id sub_226B7421C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  result = sub_226B742D0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_226B74270()
{
  v1 = [*v0 URL];
  sub_226D6D14C();
}

id sub_226B742D0(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v2 = [v1 initWithStoreItemIdentifier:a1 error:v6];
  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_226D6D04C();

    swift_willThrow();
  }

  return v2;
}

unint64_t sub_226B74384()
{
  v1 = v0;
  v2 = sub_226D6D4AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s9OperationOMa(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_226B76458(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *v8;
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v41 = 0;
      v42 = 0xE000000000000000;
      if (EnumCaseMultiPayload)
      {
        sub_226D6EEFC();

        v41 = 0xD000000000000014;
        v42 = 0x8000000226D80B60;
      }

      else
      {
        sub_226D6EEFC();

        v41 = 0xD000000000000014;
        v42 = 0x8000000226D80B80;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 2)
      {
        v41 = 0;
        v42 = 0xE000000000000000;
        sub_226D6EEFC();

        v41 = 0xD000000000000016;
        v42 = 0x8000000226D80B40;
        v17 = [v10 description];
        goto LABEL_23;
      }

      v41 = 0;
      v42 = 0xE000000000000000;
      if (EnumCaseMultiPayload == 3)
      {
        sub_226D6EEFC();

        v41 = 0xD000000000000028;
        v42 = 0x8000000226D80B10;
      }

      else
      {
        sub_226D6EEFC();
        MEMORY[0x22AA8A510](0xD000000000000032, 0x8000000226D80AD0);
      }
    }

    v17 = [v10 description];
LABEL_23:
    v25 = v17;
    v26 = sub_226D6E39C();
    v28 = v27;

    MEMORY[0x22AA8A510](v26, v28);

    MEMORY[0x22AA8A510](41, 0xE100000000000000);

    return v41;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v11 = v8[1];
      v41 = 0;
      v42 = 0xE000000000000000;
      sub_226D6EEFC();

      v41 = 0xD000000000000013;
      v42 = 0x8000000226D80A90;
      v20 = [v10 description];
      v21 = sub_226D6E39C();
      v23 = v22;

      MEMORY[0x22AA8A510](v21, v23);

      MEMORY[0x22AA8A510](0xD000000000000017, 0x8000000226D80AB0);
      v16 = [v11 description];
    }

    else
    {
      v11 = v8[1];
      v41 = 0;
      v42 = 0xE000000000000000;
      if (EnumCaseMultiPayload == 6)
      {
        sub_226D6EEFC();

        v41 = 0xD000000000000014;
        v42 = 0x8000000226D80A70;
      }

      else
      {
        sub_226D6EEFC();

        v41 = 0xD00000000000002BLL;
        v42 = 0x8000000226D80A40;
      }

      v12 = [v10 description];
      v13 = sub_226D6E39C();
      v15 = v14;

      MEMORY[0x22AA8A510](v13, v15);

      MEMORY[0x22AA8A510](8236, 0xE200000000000000);
      v16 = [v11 description];
    }

    v29 = v16;
    v30 = sub_226D6E39C();
    v32 = v31;

    MEMORY[0x22AA8A510](v30, v32);

    MEMORY[0x22AA8A510](41, 0xE100000000000000);

    return v41;
  }

  if (EnumCaseMultiPayload == 8)
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6DC8, &unk_226D731D0);
    (*(v3 + 32))(v5, v8 + *(v24 + 48), v2);
    v41 = 0;
    v42 = 0xE000000000000000;
    sub_226D6EEFC();
    MEMORY[0x22AA8A510](0xD000000000000037, 0x8000000226D80A00);
    v19 = [v10 description];
  }

  else
  {
    if (EnumCaseMultiPayload == 9)
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6DC8, &unk_226D731D0);
      (*(v3 + 32))(v5, v8 + *(v18 + 48), v2);
      v41 = 0;
      v42 = 0xE000000000000000;
      sub_226D6EEFC();
      MEMORY[0x22AA8A510](0xD000000000000039, 0x8000000226D809C0);
    }

    else
    {
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6DC8, &unk_226D731D0);
      (*(v3 + 32))(v5, v8 + *(v34 + 48), v2);
      v41 = 0;
      v42 = 0xE000000000000000;
      sub_226D6EEFC();
      MEMORY[0x22AA8A510](0xD000000000000037, 0x8000000226D80980);
    }

    v19 = [v10 description];
  }

  v35 = v19;
  v36 = sub_226D6E39C();
  v38 = v37;

  MEMORY[0x22AA8A510](v36, v38);

  MEMORY[0x22AA8A510](8236, 0xE200000000000000);
  sub_226B764BC(&qword_281062B80, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v39 = sub_226D6F1CC();
  MEMORY[0x22AA8A510](v39);

  MEMORY[0x22AA8A510](41, 0xE100000000000000);

  v40 = v41;
  (*(v3 + 8))(v5, v2);
  return v40;
}

void sub_226B74B68(void *a1)
{
  v3 = sub_226D6D4AC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v13 = _s9OperationOMa(0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_226B76458(v1, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v17 = *v15;
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_226B74F50(*v15, a1);
        goto LABEL_21;
      }

      v20 = MEMORY[0x277CC7698];
      v21 = MEMORY[0x277CC7690];
    }

    else
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          sub_226B7569C(*v15, a1);
        }

        else
        {
          sub_226B75D44(*v15, a1);
        }

        goto LABEL_21;
      }

      v20 = MEMORY[0x277CC78E8];
      v21 = MEMORY[0x277CC78E0];
    }

    sub_226B75594(*v15, a1, v20, v21);
LABEL_21:

    return;
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload == 8)
    {
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6DC8, &unk_226D731D0);
      (*(v4 + 32))(v12, v15 + *(v22 + 48), v3);
      sub_226B76094(v17, v12, a1);
      (*(v4 + 8))(v12, v3);
    }

    else if (EnumCaseMultiPayload == 9)
    {
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6DC8, &unk_226D731D0);
      (*(v4 + 32))(v9, v15 + *(v19 + 48), v3);
      sub_226B761D8(v17, v9, a1);
      (*(v4 + 8))(v9, v3);
    }

    else
    {
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6DC8, &unk_226D731D0);
      (*(v4 + 32))(v6, v15 + *(v23 + 48), v3);
      sub_226B762F0(v17, v6, a1);
      (*(v4 + 8))(v6, v3);
    }

    v18 = v17;
  }

  else
  {
    if (EnumCaseMultiPayload == 5)
    {
      v18 = v15[1];
      sub_226B75B20(*v15, v18, a1);
    }

    else
    {
      v18 = v15[1];
      if (EnumCaseMultiPayload == 6)
      {
        sub_226B757B0(*v15, v15[1], a1);
      }

      else
      {
        sub_226B759EC(*v15, v15[1], a1);
      }
    }
  }
}

void *sub_226B74F50(uint64_t a1, void *a2)
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for ManagedConsentDeleter.Metadata(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_226D67F1C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6794C();
  result = sub_226D678FC();
  if (!v2)
  {
    v38 = a2;
    v39 = result;
    v40 = v4;
    v41 = v6;
    v42 = 0;
    v63[3] = &type metadata for WidgetRefresher;
    v63[4] = sub_226B31FA8();
    v12 = type metadata accessor for WalletMessageUpdater();
    v13 = swift_allocObject();
    v62[3] = v12;
    v62[4] = sub_226B764BC(&qword_281062070, type metadata accessor for WalletMessageUpdater, &protocol conformance descriptor for WalletMessageUpdater);
    v62[0] = v13;
    v61 = 0;
    memset(v60, 0, sizeof(v60));
    if (qword_281060130 != -1)
    {
      swift_once();
    }

    v14 = qword_281060138;
    v58 = type metadata accessor for FinancialDataDeletedAccountsRemover();
    v59 = &protocol witness table for FinancialDataDeletedAccountsRemover;
    *&v57 = v14;
    v15 = sub_226D6B5EC();
    v16 = MEMORY[0x277CC7F68];
    *(&v49 + 1) = v15;
    *&v50[0] = MEMORY[0x277CC7F68];
    __swift_allocate_boxed_opaque_existential_1(&v48);

    sub_226D6B5AC();
    v17 = sub_226D6A92C();
    v18 = objc_allocWithZone(v17);
    v19 = sub_226D6A91C();
    v56[3] = v17;
    v56[4] = MEMORY[0x277CC7CC8];
    v55[4] = v16;
    v56[0] = v19;
    v55[3] = v15;
    __swift_allocate_boxed_opaque_existential_1(v55);
    sub_226D6B58C();
    *&v50[0] = 0;
    v48 = 0u;
    v49 = 0u;
    sub_226B1B848(v63, &v48);
    sub_226AE532C(v62, v50 + 8);
    sub_226AE532C(v56, v51);
    sub_226AE532C(v55, v52 + 8);
    sub_226B1B8B8(v60, &v43);
    if (v44)
    {
      sub_226AC47B0(v60, &qword_27D7A6918, &unk_226D7BBC0);
      __swift_destroy_boxed_opaque_existential_0Tm(v55);
      __swift_destroy_boxed_opaque_existential_0Tm(v56);
      __swift_destroy_boxed_opaque_existential_0Tm(v62);
      sub_226AC47B0(v63, &qword_27D7A6910, &unk_226D721C0);
      sub_226AC484C(&v43, &v45);
      v20 = v41;
    }

    else
    {
      sub_226D67E6C();
      sub_226D67F0C();
      (*(v8 + 8))(v10, v7);
      v21 = objc_allocWithZone(MEMORY[0x277CE2028]);
      v22 = sub_226D6E36C();

      v23 = [v21 initWithBundleIdentifier_];

      v46 = sub_226AE59B4(0, &qword_28105F428, 0x277CE2028);
      v47 = MEMORY[0x277CC85E8];
      *&v45 = v23;
      sub_226AC47B0(v60, &qword_27D7A6918, &unk_226D7BBC0);
      __swift_destroy_boxed_opaque_existential_0Tm(v55);
      __swift_destroy_boxed_opaque_existential_0Tm(v56);
      __swift_destroy_boxed_opaque_existential_0Tm(v62);
      sub_226AC47B0(v63, &qword_27D7A6910, &unk_226D721C0);
      v20 = v41;
      if (v44)
      {
        sub_226AC47B0(&v43, &qword_27D7A6918, &unk_226D7BBC0);
      }
    }

    sub_226AC484C(&v45, v53);
    sub_226AC484C(&v57, v54 + 8);
    v64[12] = v54[0];
    v64[13] = v54[1];
    v64[14] = v54[2];
    v64[8] = v52[1];
    v64[9] = v52[2];
    v64[10] = v53[0];
    v64[11] = v53[1];
    v64[4] = v50[2];
    v64[5] = v51[0];
    v64[6] = v51[1];
    v64[7] = v52[0];
    v64[0] = v48;
    v64[1] = v49;
    v64[2] = v50[0];
    v64[3] = v50[1];
    v24 = v39;
    v25 = [v39 consentID];
    v26 = sub_226D6E39C();
    v28 = v27;

    MEMORY[0x28223BE20](v29);
    *(&v37 - 6) = v26;
    *(&v37 - 5) = v28;
    v30 = v38;
    *(&v37 - 4) = v38;
    *(&v37 - 3) = v64;
    *(&v37 - 16) = 1;
    v31 = v40;
    v32 = v42;
    sub_226D6EB8C();
    if (v32)
    {

      return sub_226B1B944(v64);
    }

    else
    {

      *&v48 = 0;
      if ([v30 save_])
      {
        v33._rawValue = *(v20 + *(v31 + 20));
        v34 = *(v20 + *(v31 + 24));
        v35 = v48;
        ManagedConsentDeleter.postProcess(_:shouldUpdateWalletMessages:)(v33, v34);

        sub_226B1B944(v64);
        return sub_226B77148(v20, type metadata accessor for ManagedConsentDeleter.Metadata);
      }

      else
      {
        v36 = v48;
        sub_226D6D04C();

        swift_willThrow();
        sub_226B1B944(v64);
        return sub_226B77148(v20, type metadata accessor for ManagedConsentDeleter.Metadata);
      }
    }
  }

  return result;
}

void sub_226B75594(uint64_t a1, void *a2, void (*a3)(void), uint64_t (*a4)(uint64_t, void *))
{
  v12[1] = *MEMORY[0x277D85DE8];
  a3(0);
  v8 = a4(a1, a2);
  if (!v4)
  {
    v9 = v8;
    [a2 deleteObject_];
    v12[0] = 0;
    if ([a2 save_])
    {
      v10 = v12[0];
    }

    else
    {
      v11 = v12[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }
}

void sub_226B7569C(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  sub_226D6794C();
  v4 = sub_226D678FC();
  if (!v2)
  {
    v5 = v4;
    sub_226D68F0C();
    v6 = v5;
    v7 = a2;

    v10[0] = 0;
    if ([v7 save_])
    {
      v8 = v10[0];
    }

    else
    {
      v9 = v10[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }
}

void sub_226B757B0(uint64_t a1, uint64_t a2, void *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  sub_226D68F0C();
  v5 = sub_226D68EBC();
  if (!v3)
  {
    v6 = v5;
    sub_226D6794C();
    v7 = sub_226D678FC();
    sub_226D68ECC();
    v10[0] = 0;
    if ([a3 save_])
    {
      v8 = v10[0];
    }

    else
    {
      v9 = v10[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }
}

void sub_226B759EC(uint64_t a1, uint64_t a2, void *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  sub_226D68F0C();
  v5 = sub_226D68EBC();
  if (!v3)
  {
    v6 = v5;
    sub_226D6996C();
    v7 = sub_226D6993C();
    sub_226D68EEC();
    v10[0] = 0;
    if ([a3 save_])
    {
      v8 = v10[0];
    }

    else
    {
      v9 = v10[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }
}

void sub_226B75B20(uint64_t a1, uint64_t a2, void *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  sub_226D68F0C();
  v5 = sub_226D68EBC();
  if (!v3)
  {
    v6 = v5;
    v7 = sub_226D68EBC();
    sub_226D68EDC();
    v10[0] = 0;
    if ([a3 save_])
    {
      v8 = v10[0];
    }

    else
    {
      v9 = v10[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }
}

void sub_226B75D44(uint64_t a1, void *a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v4 = sub_226D6A0AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v6);
  v8 = v21 - v7;
  sub_226D68F0C();
  v9 = sub_226D68EBC();
  if (!v2)
  {
    v10 = v9;
    sub_226D6A08C();
    v22 = v10;
    v11 = sub_226D6996C();
    sub_226D6A09C();
    v12 = sub_226D6991C();
    v21[2] = v11;

    if (v12)
    {
      v13 = v12;
      v14 = v12;
      v15 = v22;
      sub_226D6994C();
    }

    else
    {
      v15 = v22;
      v16 = v22;
      sub_226D6A08C();
      v21[1] = v16;
      v13 = 0;
      v17 = a2;
      v14 = sub_226D6998C();
    }

    v23[0] = 0;
    if ([a2 save_])
    {
      v18 = *(v5 + 8);
      v19 = v23[0];
      v18(v8, v4);
    }

    else
    {
      v20 = v23[0];
      sub_226D6D04C();

      swift_willThrow();
      (*(v5 + 8))(v8, v4);
    }
  }
}

void sub_226B76094(uint64_t a1, uint64_t a2, void *a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  sub_226D6794C();
  v5 = sub_226D678FC();
  if (!v3)
  {
    v6 = v5;
    v7 = sub_226D6D3EC();
    [v6 setBackgroundRefreshLastConfirmedAt_];

    v8 = [v6 backgroundRefreshConfirmationSequenceNumber];
    if (__OFADD__(v8, 1))
    {
      __break(1u);
    }

    [v6 setBackgroundRefreshConfirmationSequenceNumber_];
    v11[0] = 0;
    if ([a3 save_])
    {
      v9 = v11[0];
    }

    else
    {
      v10 = v11[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }
}

void sub_226B761D8(uint64_t a1, uint64_t a2, void *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  sub_226D6996C();
  v5 = sub_226D6993C();
  if (!v3)
  {
    v6 = v5;
    v7 = sub_226D6D3EC();
    [v6 setBackgroundRefreshLastConfirmedAt_];

    v10[0] = 0;
    if ([a3 save_])
    {
      v8 = v10[0];
    }

    else
    {
      v9 = v10[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }
}

void sub_226B762F0(uint64_t a1, uint64_t a2, void *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  sub_226D68F0C();
  v5 = sub_226D68EBC();
  if (!v3)
  {
    v6 = v5;
    v7 = sub_226D6D3EC();
    [v6 setBackgroundRefreshLastConfirmedAt_];

    v10[0] = 0;
    if ([a3 save_])
    {
      v8 = v10[0];
    }

    else
    {
      v9 = v10[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }
}

uint64_t _s9OperationOMa(uint64_t a1)
{
  result = qword_27D7A7100;
  if (!qword_27D7A7100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226B76458(uint64_t a1, uint64_t a2)
{
  v4 = _s9OperationOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226B764BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_226B76504(uint64_t a1)
{
  sub_226AE59B4(319, &qword_27D7A6370, 0x277CBE448);
  if (v1 <= 0x3F)
  {
    sub_226B76634(319, &qword_27D7A7110);
    if (v2 <= 0x3F)
    {
      sub_226B76634(319, &qword_27D7A7118);
      if (v3 <= 0x3F)
      {
        sub_226B7668C(319, &qword_27D7A7120, " otherCloudConsentID ");
        if (v4 <= 0x3F)
        {
          sub_226B7668C(319, &qword_27D7A7128, " fromLocalConsentID ");
          if (v5 <= 0x3F)
          {
            sub_226B7668C(319, &qword_27D7A7130, " fromLocalPendingConsent ");
            if (v6 <= 0x3F)
            {
              sub_226B76704(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_226B76634(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_226B7668C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_226AE59B4(255, &qword_27D7A6370, 0x277CBE448);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_226B76704(uint64_t a1)
{
  if (!qword_27D7A7138)
  {
    sub_226AE59B4(255, &qword_27D7A6370, 0x277CBE448);
    sub_226D6D4AC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D7A7138);
    }
  }
}

uint64_t sub_226B76788(char *a1, uint64_t a2)
{
  v109 = a1;
  v3 = sub_226D6D4AC();
  v4 = *(v3 - 8);
  v107 = v3;
  v108 = v4;
  MEMORY[0x28223BE20](v3);
  v100 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v101 = &v96 - v7;
  MEMORY[0x28223BE20](v8);
  v98 = &v96 - v9;
  MEMORY[0x28223BE20](v10);
  v99 = &v96 - v11;
  MEMORY[0x28223BE20](v12);
  v96 = &v96 - v13;
  MEMORY[0x28223BE20](v14);
  v97 = &v96 - v15;
  v16 = _s9OperationOMa(0);
  MEMORY[0x28223BE20](v16);
  v106 = (&v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v105 = (&v96 - v19);
  MEMORY[0x28223BE20](v20);
  v104 = (&v96 - v21);
  MEMORY[0x28223BE20](v22);
  v103 = &v96 - v23;
  MEMORY[0x28223BE20](v24);
  v102 = &v96 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = (&v96 - v27);
  MEMORY[0x28223BE20](v29);
  v31 = (&v96 - v30);
  MEMORY[0x28223BE20](v32);
  v34 = (&v96 - v33);
  MEMORY[0x28223BE20](v35);
  v37 = (&v96 - v36);
  MEMORY[0x28223BE20](v38);
  v40 = (&v96 - v39);
  MEMORY[0x28223BE20](v41);
  v43 = (&v96 - v42);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7140, &qword_226D744D0);
  MEMORY[0x28223BE20](v44 - 8);
  v46 = &v96 - v45;
  v48 = (&v96 + *(v47 + 56) - v45);
  sub_226B76458(v109, &v96 - v45);
  v49 = a2;
  v50 = v48;
  sub_226B76458(v49, v48);
  v109 = v46;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      v52 = v109;
      if (EnumCaseMultiPayload == 2)
      {
        sub_226B76458(v109, v37);
        v85 = *v37;
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          goto LABEL_47;
        }
      }

      else if (EnumCaseMultiPayload == 3)
      {
        sub_226B76458(v109, v34);
        v85 = *v34;
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          goto LABEL_47;
        }
      }

      else
      {
        sub_226B76458(v109, v31);
        v85 = *v31;
        if (swift_getEnumCaseMultiPayload() != 4)
        {
          goto LABEL_47;
        }
      }

      goto LABEL_32;
    }

    v52 = v109;
    if (EnumCaseMultiPayload)
    {
      sub_226B76458(v109, v40);
      v85 = *v40;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
LABEL_32:
        v54 = *v48;
        sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
LABEL_33:
        v68 = sub_226D6EC3C();

LABEL_34:
        sub_226B77148(v52, _s9OperationOMa);
        return v68 & 1;
      }
    }

    else
    {
      sub_226B76458(v109, v43);
      v85 = *v43;
      if (!swift_getEnumCaseMultiPayload())
      {
        goto LABEL_32;
      }
    }

LABEL_47:

    sub_226AC47B0(v52, &qword_27D7A7140, &qword_226D744D0);
    goto LABEL_48;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v52 = v109;
      sub_226B76458(v109, v28);
      v70 = *v28;
      v85 = v28[1];
      if (swift_getEnumCaseMultiPayload() != 5)
      {

        goto LABEL_47;
      }

      v71 = *v48;
      v54 = v48[1];
      sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
      v72 = sub_226D6EC3C();

      if ((v72 & 1) == 0)
      {
LABEL_26:

LABEL_44:
        sub_226B77148(v52, _s9OperationOMa);
LABEL_48:
        v68 = 0;
        return v68 & 1;
      }
    }

    else
    {
      v52 = v109;
      if (EnumCaseMultiPayload == 6)
      {
        v53 = v102;
        sub_226B76458(v109, v102);
        v84 = *v53;
        v85 = *(v53 + 8);
        if (swift_getEnumCaseMultiPayload() != 6)
        {
LABEL_36:

          goto LABEL_47;
        }
      }

      else
      {
        v83 = v103;
        sub_226B76458(v109, v103);
        v84 = *v83;
        v85 = *(v83 + 8);
        v86 = swift_getEnumCaseMultiPayload();
        if (v86 != 7)
        {
          goto LABEL_36;
        }
      }

      v55 = *v48;
      v54 = v48[1];
      sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
      v56 = sub_226D6EC3C();

      if ((v56 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_33;
  }

  if (EnumCaseMultiPayload == 8)
  {
    v52 = v109;
    v73 = v104;
    sub_226B76458(v109, v104);
    v85 = *v73;
    v74 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6DC8, &unk_226D731D0) + 48);
    v75 = swift_getEnumCaseMultiPayload();
    v57 = v108;
    if (v75 != 8)
    {
      (*(v108 + 8))(v73 + v74, v107);
      goto LABEL_47;
    }

    v76 = *v48;
    v77 = *(v108 + 32);
    v78 = v73 + v74;
    v79 = v97;
    v80 = v107;
    v77(v97, v78, v107);
    v81 = v50 + v74;
    v82 = v96;
    goto LABEL_39;
  }

  v57 = v108;
  if (EnumCaseMultiPayload != 9)
  {
    v52 = v109;
    v87 = v106;
    sub_226B76458(v109, v106);
    v85 = *v87;
    v88 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6DC8, &unk_226D731D0) + 48);
    v89 = swift_getEnumCaseMultiPayload();
    v80 = v107;
    if (v89 != 10)
    {
      (*(v57 + 8))(v87 + v88, v107);
      goto LABEL_47;
    }

    v76 = *v50;
    v77 = *(v57 + 32);
    v90 = v87 + v88;
    v79 = v101;
    v77(v101, v90, v107);
    v81 = v50 + v88;
    v82 = v100;
LABEL_39:
    v77(v82, v81, v80);
    sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
    v91 = sub_226D6EC3C();

    if ((v91 & 1) == 0)
    {
      v93 = *(v57 + 8);
      v93(v82, v80);
      v93(v79, v80);
      goto LABEL_44;
    }

    v68 = sub_226D6D44C();
    v92 = *(v57 + 8);
    v92(v82, v80);
    v92(v79, v80);
    goto LABEL_34;
  }

  v58 = v105;
  sub_226B76458(v109, v105);
  v85 = *v58;
  v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6DC8, &unk_226D731D0) + 48);
  v60 = swift_getEnumCaseMultiPayload();
  v61 = v107;
  if (v60 != 9)
  {
    (*(v57 + 8))(v58 + v59, v107);
    v52 = v109;
    goto LABEL_47;
  }

  v62 = *v48;
  v63 = *(v57 + 32);
  v64 = v99;
  v63(v99, v58 + v59, v107);
  v65 = v50 + v59;
  v66 = v98;
  v63(v98, v65, v61);
  sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
  v67 = sub_226D6EC3C();

  if ((v67 & 1) == 0)
  {
    v95 = *(v57 + 8);
    v95(v66, v61);
    v95(v64, v61);
    sub_226B77148(v109, _s9OperationOMa);
    goto LABEL_48;
  }

  v68 = sub_226D6D44C();
  v69 = *(v57 + 8);
  v69(v66, v61);
  v69(v64, v61);
  sub_226B77148(v109, _s9OperationOMa);
  return v68 & 1;
}

uint64_t sub_226B77148(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_226B771A8(unint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v152 = a2;
  v178 = a1;
  v132 = a3;
  v161 = sub_226D6E23C();
  v169 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v160 = &v125 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_226D6777C();
  v138 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v146 = &v125 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v166 = &v125 - v7;
  v174 = sub_226D6774C();
  v8 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v165 = &v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v176 = &v125 - v11;
  MEMORY[0x28223BE20](v12);
  v137 = &v125 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7148, &qword_226D744D8);
  MEMORY[0x28223BE20](v14 - 8);
  v151 = &v125 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v153 = &v125 - v17;
  v173 = sub_226D68D5C();
  v168 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v131 = &v125 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v130 = &v125 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v125 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v125 - v25;
  v175 = sub_226D6D52C();
  v154 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v171 = &v125 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v125 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7150, &qword_226D744E0);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v125 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v125 - v35;
  sub_226D6980C();
  v37 = sub_226D697CC();
  [v37 setReturnsObjectsAsFaults_];
  v38 = sub_226D6EBBC();
  if (v3)
  {

    return;
  }

  v148 = v36;
  v149 = v33;
  v150 = v30;
  v159 = v37;
  v162 = v26;
  v127 = v23;
  v39 = sub_226B78CA8(v38);
  v172 = 0;

  v41 = 0;
  v43 = v39 + 8;
  v42 = v39[8];
  v141 = v39;
  v44 = 1 << *(v39 + 32);
  v181 = MEMORY[0x277D84FA0];
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  else
  {
    v45 = -1;
  }

  v46 = v45 & v42;
  v180 = MEMORY[0x277D84F90];
  v47 = (v44 + 63) >> 6;
  v48 = v154;
  v140 = v154 + 16;
  v167 = (v154 + 32);
  v170 = (v168 + 48);
  v177 = v8 + 32;
  v145 = (v154 + 8);
  v128 = (v168 + 32);
  v126 = (v168 + 16);
  v129 = (v168 + 8);
  v158 = (v169 + 8);
  v139 = (v8 + 16);
  v157 = (v8 + 8);
  v136 = (v138 + 16);
  v135 = v138 + 8;
  v134 = v138 + 32;
  *&v40 = 138412290;
  v133 = v40;
  v163 = MEMORY[0x277D84F90];
  v164 = MEMORY[0x277D84F90];
  v49 = v137;
  v50 = v173;
  v143 = v39 + 8;
  v142 = v47;
  v144 = v8;
  while (2)
  {
    v51 = v150;
    while (1)
    {
      if (!v46)
      {
        if (v47 <= v41 + 1)
        {
          v53 = v41 + 1;
        }

        else
        {
          v53 = v47;
        }

        v54 = v53 - 1;
        v55 = v159;
        while (1)
        {
          v52 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
            break;
          }

          if (v52 >= v47)
          {
            v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7158, &qword_226D744E8);
            v64 = v149;
            (*(*(v91 - 8) + 56))(v149, 1, 1, v91);
            v168 = 0;
            v169 = v54;
            goto LABEL_20;
          }

          v46 = v43[v52];
          ++v41;
          if (v46)
          {
            v169 = v52;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      v169 = v41;
      v52 = v41;
LABEL_19:
      v168 = (v46 - 1) & v46;
      v56 = __clz(__rbit64(v46)) | (v52 << 6);
      v57 = v141;
      v58 = v175;
      v59 = v48;
      (*(v48 + 16))(v51, v141[6] + *(v48 + 72) * v56, v175);
      v60 = *(v57[7] + 8 * v56);
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7158, &qword_226D744E8);
      v62 = *(v61 + 48);
      v63 = *(v59 + 32);
      v64 = v149;
      v63(v149, v51, v58);
      *(v64 + v62) = v60;
      (*(*(v61 - 8) + 56))(v64, 0, 1, v61);

      v55 = v159;
      v50 = v173;
LABEL_20:
      v65 = v148;
      sub_226B78FF0(v64, v148);
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7158, &qword_226D744E8);
      if ((*(*(v66 - 8) + 48))(v65, 1, v66) == 1)
      {

        sub_226D679CC();

        return;
      }

      v178 = *(v65 + *(v66 + 48));
      v67 = v171;
      v68 = (*v167)(v171, v65, v175);
      v69 = v181;
      MEMORY[0x28223BE20](v68);
      *(&v125 - 2) = v67;
      v70 = v153;
      v71 = v172;
      sub_226BA2DD0(sub_226B79060, v69, v153);
      v72 = *v170;
      if ((*v170)(v70, 1, v50) != 1)
      {
        (*v128)(v162, v70, v50);
        v74 = v71;
        goto LABEL_44;
      }

      sub_226AC47B0(v70, &qword_27D7A7148, &qword_226D744D8);
      __swift_project_boxed_opaque_existential_1(v152 + 20, v152[23]);
      v73 = v151;
      sub_226D6BBCC();
      v74 = v71;
      if (v71)
      {

        (*v145)(v171, v175);
        return;
      }

      v50 = v173;
      if (v72(v73, 1, v173) != 1)
      {
        break;
      }

      sub_226AC47B0(v73, &qword_27D7A7148, &qword_226D744D8);
      v75 = v144;
      if (qword_27D7A5F40 != -1)
      {
        swift_once();
      }

      v76 = sub_226D6E07C();
      __swift_project_value_buffer(v76, qword_27D7A7CC8);
      v77 = sub_226D6E05C();
      v78 = sub_226D6E9CC();
      v79 = os_log_type_enabled(v77, v78);
      v80 = v178;
      if (v79)
      {
        v81 = swift_slowAlloc();
        *v81 = 0;
        _os_log_impl(&dword_226AB4000, v77, v78, "Failed to find key for sealed BankCredential", v81, 2u);
        MEMORY[0x22AA8BEE0](v81, -1, -1);
      }

      if (v80 >> 62)
      {
        v82 = sub_226D6EDFC();
        v172 = 0;
        if (!v82)
        {
LABEL_41:

          v84 = MEMORY[0x277D84F90];
          goto LABEL_8;
        }
      }

      else
      {
        v82 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v172 = 0;
        if (!v82)
        {
          goto LABEL_41;
        }
      }

      v179 = MEMORY[0x277D84F90];
      sub_226AE24AC(0, v82 & ~(v82 >> 63), 0);
      if (v82 < 0)
      {
        goto LABEL_72;
      }

      v83 = 0;
      v84 = v179;
      v85 = v80 & 0xC000000000000001;
      v86 = v174;
      do
      {
        if (v85)
        {
          MEMORY[0x22AA8AFD0](v83, v178);
        }

        else
        {
          v87 = *(v178 + 8 * v83 + 32);
        }

        sub_226D6776C();
        v179 = v84;
        v88 = v49;
        v90 = *(v84 + 16);
        v89 = *(v84 + 24);
        if (v90 >= v89 >> 1)
        {
          sub_226AE24AC((v89 > 1), v90 + 1, 1);
          v86 = v174;
          v84 = v179;
        }

        ++v83;
        *(v84 + 16) = v90 + 1;
        (*(v75 + 32))(v84 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v90, v88, v86);
        v49 = v88;
      }

      while (v82 != v83);

      v50 = v173;
LABEL_8:
      sub_226CEE0F8(v84);
      (*v145)(v171, v175);
      v48 = v154;
      v51 = v150;
      v43 = v143;
      v47 = v142;
      v46 = v168;
      v41 = v169;
    }

    v92 = v127;
    (*v128)(v127, v73, v50);
    v93 = *v126;
    (*v126)(v162, v92, v50);
    v94 = v131;
    v93(v131, v92, v50);
    v95 = v94;
    v96 = v130;
    sub_226C26BA0(v130, v95);
    v97 = *v129;
    (*v129)(v96, v50);
    v97(v92, v50);
LABEL_44:
    v98 = v144;
    v99 = v178;
    if (!(v178 >> 62))
    {
      v100 = *((v178 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v100)
      {
        goto LABEL_46;
      }

LABEL_68:
      v172 = v74;

      v50 = v173;
      (*v129)(v162, v173);
      (*v145)(v171, v175);
      v48 = v154;
      v43 = v143;
      v47 = v142;
      v46 = v168;
      v41 = v169;
      continue;
    }

    break;
  }

  v100 = sub_226D6EDFC();
  if (!v100)
  {
    goto LABEL_68;
  }

LABEL_46:
  if (v100 >= 1)
  {
    v101 = 0;
    v155 = v99 & 0xC000000000000001;
    v156 = v100;
    do
    {
      if (v155)
      {
        v104 = MEMORY[0x22AA8AFD0](v101, v99);
      }

      else
      {
        v104 = *(v99 + 8 * v101 + 32);
      }

      v172 = v104;
      sub_226D6776C();
      v105 = v160;
      sub_226D68D3C();
      v106 = v166;
      v107 = v74;
      sub_226D6773C();
      if (v74)
      {
        (*v158)(v105, v161);
        if (qword_27D7A5F40 != -1)
        {
          swift_once();
        }

        v108 = sub_226D6E07C();
        __swift_project_value_buffer(v108, qword_27D7A7CC8);
        v109 = v74;
        v110 = sub_226D6E05C();
        v111 = sub_226D6E9CC();

        if (os_log_type_enabled(v110, v111))
        {
          v112 = swift_slowAlloc();
          v113 = swift_slowAlloc();
          *v112 = v133;
          v114 = v107;
          v115 = _swift_stdlib_bridgeErrorToNSError();
          *(v112 + 4) = v115;
          *v113 = v115;
          _os_log_impl(&dword_226AB4000, v110, v111, "Failed to open sealed BankCredential with error: %@", v112, 0xCu);
          sub_226AC47B0(v113, &qword_27D7A5FB0, &qword_226D70870);
          MEMORY[0x22AA8BEE0](v113, -1, -1);
          MEMORY[0x22AA8BEE0](v112, -1, -1);
        }

        (*v139)(v165, v176, v174);
        v116 = v164;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v116 = sub_226BBB90C(0, v116[2] + 1, 1, v116);
        }

        v117 = v107;
        v119 = v116[2];
        v118 = v116[3];
        v99 = v178;
        if (v119 >= v118 >> 1)
        {
          v116 = sub_226BBB90C((v118 > 1), v119 + 1, 1, v116);
          v117 = v107;
        }

        v102 = v174;
        (*(v98 + 8))(v176, v174);
        v116[2] = v119 + 1;
        v103 = (*(v98 + 80) + 32) & ~*(v98 + 80);
        v164 = v116;
        (*(v98 + 32))(v116 + v103 + *(v98 + 72) * v119, v165, v102);
        v74 = 0;
      }

      else
      {
        (*v158)(v105, v161);
        (*v136)(v146, v106, v147);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v163 = sub_226BBB934(0, v163[2] + 1, 1, v163);
        }

        v121 = v163[2];
        v120 = v163[3];
        if (v121 >= v120 >> 1)
        {
          v163 = sub_226BBB934((v120 > 1), v121 + 1, 1, v163);
        }

        v122 = v138;
        v123 = v147;
        (*(v138 + 8))(v166, v147);
        (*v157)(v176, v174);
        v124 = v163;
        v163[2] = v121 + 1;
        (*(v122 + 32))(v124 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v121, v146, v123);
        v49 = v137;
      }

      ++v101;
    }

    while (v156 != v101);
    goto LABEL_68;
  }

LABEL_73:
  __break(1u);
}

uint64_t sub_226B78468(uint64_t a1, uint64_t a2)
{
  v2 = sub_226D6D52C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D68D4C();
  v6 = sub_226D6D4EC();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

id sub_226B78554@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v34 = a3;
  v44[1] = *MEMORY[0x277D85DE8];
  v43 = sub_226D6D52C();
  v7 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v41 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.n128_f64[0] = MEMORY[0x28223BE20](v9);
  v12 = &v34 - v10;
  v13 = *(a1 + 16);
  if (v13)
  {
    v15 = *(v7 + 16);
    v14 = v7 + 16;
    v42 = v15;
    v16 = *(v14 + 56);
    v36 = (*(v14 + 64) + 32) & ~*(v14 + 64);
    v17 = a1 + v36;
    v35 = (v14 + 16);
    v40 = (v14 - 8);
    v18 = MEMORY[0x277D84F90];
    v37 = v14;
    v38 = a2;
    v39 = &v34 - v10;
    (v15)(v12, a1 + v36, v43, v11);
    while (1)
    {
      sub_226D6980C();
      v24 = sub_226D697BC();
      if (v4)
      {
        break;
      }

      v25 = v24;
      if (v24)
      {
        v42(v41, v12, v43);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_226BBB95C(0, v18[2] + 1, 1, v18);
        }

        v27 = v18[2];
        v26 = v18[3];
        if (v27 >= v26 >> 1)
        {
          v29 = sub_226BBB95C((v26 > 1), v27 + 1, 1, v18);
          v28 = v16;
          v18 = v29;
        }

        else
        {
          v28 = v16;
        }

        v18[2] = v27 + 1;
        v19 = v18;
        v21 = v43;
        v16 = v28;
        (*v35)(v18 + v36 + v27 * v28, v41, v43);
        v20 = v38;
        [v38 deleteObject_];
      }

      else
      {
        v19 = v18;
        v20 = a2;
        v21 = v43;
      }

      v22 = v39;
      (*v40)(v39, v21);
      v17 += v16;
      --v13;
      v23 = v21;
      a2 = v20;
      v18 = v19;
      v4 = 0;
      v12 = v22;
      if (!v13)
      {
        goto LABEL_15;
      }

      (v42)(v22, v17, v23, v11);
    }

    (*v40)(v12, v43);
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
LABEL_15:
    v44[0] = 0;
    v30 = [a2 save_];
    v31 = v44[0];
    if (v30)
    {
      *v34 = v18;
      return v31;
    }

    else
    {
      v33 = v44[0];

      sub_226D6D04C();

      return swift_willThrow();
    }
  }
}

uint64_t sub_226B788B8(void *a1, char *a2, void *a3)
{
  v40 = a2;
  v38 = a3;
  v42[1] = *MEMORY[0x277D85DE8];
  v35 = sub_226D6D52C();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_226D6774C();
  v36 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  v12 = sub_226D68D5C();
  v39 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1 + 20, a1[23]);
  v15 = v41;
  result = sub_226D6BBBC();
  if (!v15)
  {
    v33 = v8;
    v34 = v12;
    v17 = v37;
    v18 = v38;
    v19 = v36;
    sub_226D6772C();
    v41 = 0;
    v32 = v11;
    sub_226D6980C();
    v20 = v5;
    sub_226D6771C();
    v21 = v18;
    v22 = v41;
    v23 = sub_226D697BC();
    v41 = v22;
    if (v22)
    {
      (*(v17 + 8))(v20, v35);
      (*(v19 + 8))(v32, v6);
      v24 = v34;
      v25 = v39;
    }

    else
    {
      v26 = v23;
      v40 = v14;
      (*(v17 + 8))(v20, v35);
      if (v26)
      {
        MEMORY[0x22AA85890](v26, v32);
      }

      else
      {
        (*(v19 + 16))(v33, v32, v6);
        v27 = v21;
        v26 = sub_226D6981C();
      }

      v42[0] = 0;
      if ([v21 save_])
      {
        v28 = *(v19 + 8);
        v29 = v42[0];
        v28(v32, v6);
        return (*(v39 + 8))(v40, v34);
      }

      v30 = v42[0];
      v31 = sub_226D6D04C();

      v41 = v31;
      swift_willThrow();
      (*(v19 + 8))(v32, v6);
      v24 = v34;
      v25 = v39;
      v14 = v40;
    }

    return (*(v25 + 8))(v14, v24);
  }

  return result;
}

void *sub_226B78CA8(unint64_t a1)
{
  v34 = sub_226D6D52C();
  v31 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x277D84F98];
  if (a1 >> 62)
  {
LABEL_24:
    v4 = sub_226D6EDFC();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v32 = a1 & 0xFFFFFFFFFFFFFF8;
      v33 = a1 & 0xC000000000000001;
      v29 = (v31 + 8);
      v30 = v31 + 32;
      v6 = MEMORY[0x277D84F98];
      v28 = xmmword_226D71F20;
      while (1)
      {
        if (v33)
        {
          v9 = MEMORY[0x22AA8AFD0](v5, a1);
        }

        else
        {
          if (v5 >= *(v32 + 16))
          {
            goto LABEL_21;
          }

          v9 = *(a1 + 8 * v5 + 32);
        }

        v10 = v9;
        v11 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v12 = v4;
        v13 = [v9 keyIdentifier];
        sub_226D6D4FC();

        v15 = sub_226C3049C(v3);
        v16 = v6[2];
        v17 = (v14 & 1) == 0;
        v18 = v16 + v17;
        if (__OFADD__(v16, v17))
        {
          goto LABEL_22;
        }

        v19 = v14;
        if (v6[3] < v18)
        {
          sub_226C331CC(v18, 1);
          v6 = v35;
          v20 = sub_226C3049C(v3);
          if ((v19 & 1) != (v21 & 1))
          {
            result = sub_226D6F25C();
            __break(1u);
            return result;
          }

          v15 = v20;
        }

        if (v19)
        {
          v7 = (*v29)(v3, v34);
          v8 = (v6[7] + 8 * v15);
          MEMORY[0x22AA8A610](v7);
          v4 = v12;
          if (*((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_226D6E61C();
            v4 = v12;
          }

          sub_226D6E65C();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
          v22 = swift_allocObject();
          *(v22 + 16) = v28;
          *(v22 + 32) = v10;
          v6[(v15 >> 6) + 8] |= 1 << v15;
          (*(v31 + 32))(v6[6] + *(v31 + 72) * v15, v3, v34);
          *(v6[7] + 8 * v15) = v22;
          v23 = v6[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_23;
          }

          v6[2] = v25;
          v4 = v12;
        }

        ++v5;
        if (v11 == v4)
        {
          return v6;
        }
      }
    }
  }

  return MEMORY[0x277D84F98];
}

uint64_t sub_226B78FF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7150, &qword_226D744E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for PostInstallTaskVersion(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for PostInstallPopulateTransactionCategoryTask(uint64_t result, int a2, int a3)
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

void sub_226B790DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v104 = a4;
  v111[6] = *MEMORY[0x277D85DE8];
  v109 = sub_226D680EC();
  v7 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v9 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() currentQueryGenerationToken];
  v111[0] = 0;
  v11 = [a1 setQueryGenerationFromToken:v10 error:v111];

  v12 = v111[0];
  if (!v11)
  {
    v29 = v111[0];
    v30 = sub_226D6D04C();

    v109 = v30;
    swift_willThrow();
    return;
  }

  v103 = sub_226D6AC0C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = v12;
  v15 = [ObjCClassFromMetadata entityName];
  if (!v15)
  {
    sub_226D6E39C();
    v15 = sub_226D6E36C();
  }

  v16 = [objc_allocWithZone(MEMORY[0x277CBE428]) initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_226D70840;
  v17 = sub_226D680CC();
  v18 = *(v17 + 16);
  v105 = a1;
  if (v18)
  {
    v100 = v4;
    v101 = v16;
    v111[0] = MEMORY[0x277D84F90];
    sub_226AE24F0(0, v18, 0);
    v19 = v111[0];
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v22 = *(v20 + 64);
    v99 = v17;
    v23 = v17 + ((v22 + 32) & ~v22);
    v106 = *(v20 + 56);
    v107 = v21;
    v108 = v20;
    v24 = (v20 - 8);
    do
    {
      v25 = v109;
      v107(v9, v23, v109);
      v26 = sub_226D680DC();
      (*v24)(v9, v25);
      v111[0] = v19;
      v28 = v19[2];
      v27 = v19[3];
      if (v28 >= v27 >> 1)
      {
        sub_226AE24F0((v27 > 1), v28 + 1, 1);
        v19 = v111[0];
      }

      v19[2] = v28 + 1;
      *(v19 + v28 + 16) = v26;
      v23 += v106;
      --v18;
    }

    while (v18);

    v5 = v100;
    v16 = v101;
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7160, &qword_226D7E370);
  v32 = v102;
  *(v102 + 56) = v31;
  *(v32 + 64) = sub_226B79CEC();
  *(v32 + 32) = v19;
  v33 = sub_226D6E91C();
  [v16 setPredicate_];

  [v16 setResultType_];
  v34 = sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
  v35 = sub_226D6EBBC();
  v109 = v5;
  if (v5)
  {

    return;
  }

  v36 = v35;
  v98 = v35 >> 62;
  if (!(v35 >> 62))
  {
    v37 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_16;
  }

LABEL_84:
  v37 = sub_226D6EDFC();
LABEL_16:
  v95 = v37;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v38 = sub_226D6E07C();
  v89 = __swift_project_value_buffer(v38, qword_28105F710);
  v39 = sub_226D6E05C();
  v40 = sub_226D6E9EC();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 134217984;
    *(v41 + 4) = v95;
    _os_log_impl(&dword_226AB4000, v39, v40, "Strarted populating transaction categories for %ld transactions", v41, 0xCu);
    MEMORY[0x22AA8BEE0](v41, -1, -1);
  }

  v43 = v95;
  if (v95 < 1)
  {
LABEL_74:

    return;
  }

  v44 = 0;
  v91 = v36 & 0xC000000000000001;
  if (v36 < 0)
  {
    v45 = v36;
  }

  else
  {
    v45 = v36 & 0xFFFFFFFFFFFFFF8;
  }

  v94 = v45;
  v92 = v36 & 0xFFFFFFFFFFFFFF8;
  v88 = (v36 & 0xFFFFFFFFFFFFFF8) + 32;
  v46 = 100;
  *&v42 = 134217984;
  v87 = v42;
  v90 = v36;
  v100 = v34;
  v101 = v16;
  while (1)
  {
    v93 = v46;
    if (v43 >= v46)
    {
      v47 = v46;
    }

    else
    {
      v47 = v43;
    }

    v48 = v43;
    v49 = __OFADD__(v44, 100);
    v50 = MEMORY[0x22AA8B6A0]();
    if (v49)
    {
      goto LABEL_79;
    }

    if (v48 >= v44 + 100)
    {
      v51 = v44 + 100;
    }

    else
    {
      v51 = v48;
    }

    v102 = v51;
    if (v51 < v44)
    {
      goto LABEL_80;
    }

    v99 = v44 + 100;
    v97 = v50;
    if (v98)
    {
      if (sub_226D6EDFC() < v44)
      {
        goto LABEL_81;
      }

      v52 = sub_226D6EDFC();
    }

    else
    {
      v52 = *(v92 + 16);
      if (v52 < v44)
      {
        goto LABEL_81;
      }
    }

    if (v52 < v102)
    {
      goto LABEL_82;
    }

    if (!v91 || v44 == v102)
    {

      if (!v98)
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (v44 >= v102)
      {
        goto LABEL_83;
      }

      v53 = v44;
      do
      {
        v54 = v53 + 1;
        sub_226D6EF0C();
        v53 = v54;
      }

      while (v47 != v54);
      if (!v98)
      {
LABEL_49:
        v55 = (2 * v102) | 1;
        v56 = v88;
        goto LABEL_52;
      }
    }

    sub_226D6F0CC();
    v56 = v57;
    v44 = v58;
    v55 = v59;
LABEL_52:
    sub_226AE4BCC(v56, v44, v55);
    v61 = v60;
    swift_unknownObjectRelease();
    if ((v61 & 0xC000000000000001) != 0)
    {
      sub_226D6EDBC();
      sub_226AE59FC();
      sub_226D6E8DC();
      v61 = v111[1];
      v62 = v111[2];
      v63 = v111[3];
      v64 = v111[4];
      v65 = v111[5];
    }

    else
    {
      v64 = 0;
      v66 = -1 << *(v61 + 32);
      v62 = (v61 + 56);
      v63 = ~v66;
      v67 = -v66;
      if (v67 < 64)
      {
        v68 = ~(-1 << v67);
      }

      else
      {
        v68 = -1;
      }

      v65 = (v68 & *(v61 + 56));
    }

    v44 = v99;
    v96 = v63;
    v16 = ((v63 + 64) >> 6);
    v107 = v64;
    if (v61 < 0)
    {
LABEL_65:
      v73 = sub_226D6EE2C();
      if (!v73)
      {
        goto LABEL_70;
      }

      v110 = v73;
      swift_dynamicCast();
      v71 = v111[0];
      v34 = v65;
      v72 = v109;
      if (!v111[0])
      {
        goto LABEL_70;
      }

      goto LABEL_67;
    }

    while (1)
    {
      v69 = v64;
      v70 = v65;
      if (!v65)
      {
        while (1)
        {
          v64 = v69 + 1;
          if (__OFADD__(v69, 1))
          {
            break;
          }

          if (v64 >= v16)
          {
            goto LABEL_70;
          }

          v70 = v62[v64];
          ++v69;
          if (v70)
          {
            goto LABEL_63;
          }
        }

        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

LABEL_63:
      v34 = (v70 - 1) & v70;
      v71 = *(*(v61 + 48) + ((v64 << 9) | (8 * __clz(__rbit64(v70)))));
      v72 = v109;
      if (!v71)
      {
        break;
      }

LABEL_67:
      v106 = v65;
      v74 = v62;
      v36 = v44;
      v108 = v71;
      v75 = sub_226D6AB0C();
      if (v72)
      {
        v109 = v72;

        sub_226AD3C20(v61);

        goto LABEL_76;
      }

      v76 = v75;
      sub_226D6C07C();
      v109 = 0;

      v65 = v34;
      v62 = v74;
      v107 = v64;
      if (v61 < 0)
      {
        goto LABEL_65;
      }
    }

LABEL_70:
    sub_226AD3C20(v61);
    v111[0] = 0;
    v77 = v105;
    v78 = [v105 save_];
    v36 = v90;
    v34 = v100;
    if ((v78 & 1) == 0)
    {
      break;
    }

    v79 = v111[0];
    [v77 reset];
    v80 = sub_226D6E05C();
    v81 = sub_226D6E9EC();
    v82 = os_log_type_enabled(v80, v81);
    v16 = v101;
    if (v82)
    {
      v83 = swift_slowAlloc();
      *v83 = v87;
      *(v83 + 4) = v102;
      _os_log_impl(&dword_226AB4000, v80, v81, "Populated transaction categories for %ld transactions", v83, 0xCu);
      MEMORY[0x22AA8BEE0](v83, -1, -1);
    }

    objc_autoreleasePoolPop(v97);
    v46 = v93 + 100;
    v43 = v95;
    if (v99 >= v95)
    {
      goto LABEL_74;
    }
  }

  v85 = v111[0];

  v86 = sub_226D6D04C();

  v109 = v86;
  swift_willThrow();
LABEL_76:
  v84 = v101;
  objc_autoreleasePoolPop(v97);
}

void sub_226B79B4C()
{
  sub_226D6C09C();
  swift_allocObject();
  sub_226D6C08C();
  v1 = sub_226D676AC();
  sub_226D6EB7C();
  if (!v0)
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v2 = sub_226D6E07C();
    __swift_project_value_buffer(v2, qword_28105F710);
    v3 = sub_226D6E05C();
    v4 = sub_226D6E9EC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_226AB4000, v3, v4, "Finished populating transaction categories", v5, 2u);
      MEMORY[0x22AA8BEE0](v5, -1, -1);
    }
  }
}

unint64_t sub_226B79CEC()
{
  result = qword_28105F500;
  if (!qword_28105F500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A7160, &qword_226D7E370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105F500);
  }

  return result;
}

void sub_226B79E7C(void *a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  sub_226D6C5CC();
  v2 = [swift_getObjCClassFromMetadata() fetchRequest];
  v3 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  v12[0] = 0;
  v4 = [a1 executeRequest:v3 error:v12];
  if (v4)
  {
    v5 = v4;
    v6 = v12[0];

    if (qword_28105F5D8 != -1)
    {
      swift_once();
    }

    v7 = sub_226D6E07C();
    __swift_project_value_buffer(v7, qword_28105F5E0);
    v8 = sub_226D6E05C();
    v9 = sub_226D6E9EC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_226AB4000, v8, v9, "Deleted all Entity Groups", v10, 2u);
      MEMORY[0x22AA8BEE0](v10, -1, -1);
    }
  }

  else
  {
    v11 = v12[0];
    sub_226D6D04C();

    swift_willThrow();
  }
}

void sub_226B7A0BC(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t (*a4)(void), void (*a5)(void), const char *a6, uint64_t a7)
{
  v42 = a3;
  v43 = a7;
  v41 = a6;
  v39 = a5;
  v10 = sub_226D6D52C();
  v40 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v34[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = (a4)(0, v11);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v34[-v16];
  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v18 = sub_226D6E07C();
  __swift_project_value_buffer(v18, qword_28105F5E0);
  (*(v15 + 16))(v17, a1, v14);

  v19 = sub_226D6E05C();
  v20 = sub_226D6E9EC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v38 = a1;
    v36 = v19;
    v22 = v21;
    v37 = swift_slowAlloc();
    v44 = v37;
    *v22 = 136315394;
    v35 = v20;
    v39();
    sub_226B7B4F0(&qword_27D7A6648, MEMORY[0x277CC9628]);
    v23 = sub_226D6F1CC();
    v39 = a2;
    v25 = v24;
    (*(v40 + 8))(v13, v10);
    (*(v15 + 8))(v17, v14);
    v26 = sub_226AC4530(v23, v25, &v44);
    a2 = v39;

    *(v22 + 4) = v26;
    *(v22 + 12) = 2080;
    sub_226B7B4F0(&qword_281062B60, MEMORY[0x277CC9600]);
    v27 = sub_226D6E8AC();
    v29 = sub_226AC4530(v27, v28, &v44);

    *(v22 + 14) = v29;
    v30 = v36;
    _os_log_impl(&dword_226AB4000, v36, v35, v41, v22, 0x16u);
    v31 = v37;
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v31, -1, -1);
    a1 = v38;
    MEMORY[0x22AA8BEE0](v22, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v17, v14);
  }

  v32 = sub_226D676AC();
  MEMORY[0x28223BE20](v32);
  *&v34[-32] = v33;
  *&v34[-24] = a1;
  *&v34[-16] = a2;
  sub_226D6EB7C();
}

uint64_t sub_226B7A4C8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void *), const char *a5, const char *a6)
{
  v32 = a5;
  v33 = a6;
  v35[1] = *MEMORY[0x277D85DE8];
  v11 = sub_226D6C86C();
  v34 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() currentQueryGenerationToken];
  v35[0] = 0;
  v15 = [a1 setQueryGenerationFromToken:v14 error:v35];

  if (!v15)
  {
    v26 = v35[0];
    sub_226D6D04C();

    return swift_willThrow();
  }

  v16 = v35[0];
  sub_226D6C85C();
  a4(a2, a3, a1);
  if (!v6)
  {
    if ([a1 hasChanges])
    {
      v35[0] = 0;
      if (![a1 save_])
      {
        v30 = v35[0];
        sub_226D6D04C();

        swift_willThrow();
        return (*(v34 + 8))(v13, v11);
      }

      v17 = qword_28105F5D8;
      v18 = v35[0];
      if (v17 != -1)
      {
        swift_once();
      }

      v19 = sub_226D6E07C();
      __swift_project_value_buffer(v19, qword_28105F5E0);
      v20 = sub_226D6E05C();
      v21 = sub_226D6E9EC();
      if (!os_log_type_enabled(v20, v21))
      {
        goto LABEL_15;
      }

      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = v21;
      v24 = v20;
      v25 = v32;
    }

    else
    {
      if (qword_28105F5D8 != -1)
      {
        swift_once();
      }

      v28 = sub_226D6E07C();
      __swift_project_value_buffer(v28, qword_28105F5E0);
      v20 = sub_226D6E05C();
      v29 = sub_226D6E9EC();
      if (!os_log_type_enabled(v20, v29))
      {
        goto LABEL_15;
      }

      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = v29;
      v24 = v20;
      v25 = v33;
    }

    _os_log_impl(&dword_226AB4000, v24, v23, v25, v22, 2u);
    MEMORY[0x22AA8BEE0](v22, -1, -1);
LABEL_15:
  }

  return (*(v34 + 8))(v13, v11);
}

void sub_226B7A880(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v29 = a3;
  v30 = a2;
  v7 = sub_226D6D52C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v11 = sub_226D6E07C();
  __swift_project_value_buffer(v11, qword_28105F5E0);
  (*(v8 + 16))(v10, a1, v7);
  v12 = sub_226D6E05C();
  v13 = sub_226D6E9EC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28 = v4;
    v15 = v14;
    v16 = swift_slowAlloc();
    v26 = a1;
    v17 = v16;
    v31 = v16;
    *v15 = 136315138;
    sub_226B7B4F0(&qword_27D7A6648, MEMORY[0x277CC9628]);
    v18 = sub_226D6F1CC();
    v27 = a4;
    v20 = v19;
    (*(v8 + 8))(v10, v7);
    v21 = sub_226AC4530(v18, v20, &v31);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_226AB4000, v12, v13, v29, v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    v22 = v17;
    a1 = v26;
    MEMORY[0x22AA8BEE0](v22, -1, -1);
    MEMORY[0x22AA8BEE0](v15, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  v23 = sub_226D676AC();
  MEMORY[0x28223BE20](v23);
  *(&v25 - 2) = v24;
  *(&v25 - 1) = a1;
  sub_226D6EB7C();
}

uint64_t sub_226B7AB58(void *a1, uint64_t a2, void (*a3)(uint64_t, void *), const char *a4, const char *a5)
{
  v30 = a4;
  v31 = a5;
  v32[1] = *MEMORY[0x277D85DE8];
  v9 = sub_226D6C79C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() currentQueryGenerationToken];
  v32[0] = 0;
  v14 = [a1 setQueryGenerationFromToken:v13 error:v32];

  if (!v14)
  {
    v25 = v32[0];
    sub_226D6D04C();

    return swift_willThrow();
  }

  v15 = v32[0];
  sub_226D6C78C();
  a3(a2, a1);
  if (!v5)
  {
    if ([a1 hasChanges])
    {
      v32[0] = 0;
      if (![a1 save_])
      {
        v29 = v32[0];
        sub_226D6D04C();

        swift_willThrow();
        return (*(v10 + 8))(v12, v9);
      }

      v16 = qword_28105F5D8;
      v17 = v32[0];
      if (v16 != -1)
      {
        swift_once();
      }

      v18 = sub_226D6E07C();
      __swift_project_value_buffer(v18, qword_28105F5E0);
      v19 = sub_226D6E05C();
      v20 = sub_226D6E9EC();
      if (!os_log_type_enabled(v19, v20))
      {
        goto LABEL_15;
      }

      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = v20;
      v23 = v19;
      v24 = v30;
    }

    else
    {
      if (qword_28105F5D8 != -1)
      {
        swift_once();
      }

      v27 = sub_226D6E07C();
      __swift_project_value_buffer(v27, qword_28105F5E0);
      v19 = sub_226D6E05C();
      v28 = sub_226D6E9EC();
      if (!os_log_type_enabled(v19, v28))
      {
        goto LABEL_15;
      }

      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = v28;
      v23 = v19;
      v24 = v31;
    }

    _os_log_impl(&dword_226AB4000, v23, v22, v24, v21, 2u);
    MEMORY[0x22AA8BEE0](v21, -1, -1);
LABEL_15:
  }

  return (*(v10 + 8))(v12, v9);
}

void sub_226B7AEF8(uint64_t a1, const char *a2, uint64_t a3)
{
  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v4 = sub_226D6E07C();
  __swift_project_value_buffer(v4, qword_28105F5E0);
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9CC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_226AB4000, v5, v6, a2, v7, 2u);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  v8 = sub_226D676AC();
  MEMORY[0x28223BE20](v8);
  sub_226D6EB7C();
}

void sub_226B7B044(void *a1)
{
  v37[1] = *MEMORY[0x277D85DE8];
  v36 = sub_226D6D52C();
  v31 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_226D6C79C();
  v6 = *(v5 - 1);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6C78C();
  sub_226D6B4BC();
  v9 = sub_226D6B4AC();
  v10 = a1;
  v11 = sub_226D6EBBC();
  if (v1)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    v12 = v11;
    v34 = v10;
    if (v11 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_226D6EDFC())
    {
      v14 = v34;
      v28 = v9;
      v29 = v6;
      v35 = v8;
      v30 = v5;
      if (!i)
      {
        break;
      }

      v6 = 0;
      v32 = v12 & 0xFFFFFFFFFFFFFF8;
      v33 = v12 & 0xC000000000000001;
      ++v31;
      while (1)
      {
        if (v33)
        {
          v15 = MEMORY[0x22AA8AFD0](v6, v12);
        }

        else
        {
          if (v6 >= *(v32 + 16))
          {
            goto LABEL_22;
          }

          v15 = *(v12 + 8 * v6 + 32);
        }

        v5 = v15;
        v8 = (v6 + 1);
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v9 = v12;
        v16 = [v15 id];
        sub_226D6D4FC();

        sub_226D6C77C();
        (*v31)(v4, v36);

        ++v6;
        v14 = v34;
        if (v8 == i)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

LABEL_14:

    v37[0] = 0;
    if ([v14 save_])
    {
      v17 = qword_28105F5D8;
      v18 = v37[0];
      v19 = v30;
      v20 = v35;
      v21 = v28;
      if (v17 != -1)
      {
        swift_once();
      }

      v22 = sub_226D6E07C();
      __swift_project_value_buffer(v22, qword_28105F5E0);
      v23 = sub_226D6E05C();
      v24 = sub_226D6E9EC();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_226AB4000, v23, v24, "Deleted all Income Insights.", v25, 2u);
        MEMORY[0x22AA8BEE0](v25, -1, -1);
      }

      (*(v29 + 8))(v20, v19);
    }

    else
    {
      v26 = v37[0];
      sub_226D6D04C();

      swift_willThrow();
      (*(v29 + 8))(v35, v30);
    }
  }
}

uint64_t sub_226B7B4F0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_226D6D52C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AuthorisationStatusProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  AuthorisationStatusProvider.init()();
  return v0;
}

uint64_t AuthorisationStatusProvider.init()()
{
  v1 = sub_226D6EA4C();
  v19 = *(v1 - 8);
  v20 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_226D6EA3C();
  MEMORY[0x28223BE20](v4);
  v5 = sub_226D6E1BC();
  MEMORY[0x28223BE20](v5 - 8);
  *(v0 + 32) = 0;
  v6 = (v0 + 32);
  v7 = MEMORY[0x277D84F90];
  v8 = sub_226B2379C(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7168, &unk_226D74550);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = v8;
  *(v0 + 16) = v9;
  v10 = sub_226AE59B4(0, &qword_28105F470, 0x277D85C78);
  v17[1] = "iginTypeValue IN %@";
  v17[2] = v10;
  sub_226D6E19C();
  aBlock[0] = v7;
  sub_226B80204(&qword_28105F478, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C00, &qword_226D73DF0);
  sub_226AC4194(&qword_28105F518, &qword_27D7A6C00, &qword_226D73DF0, MEMORY[0x277D83970]);
  sub_226D6ED5C();
  (*(v19 + 104))(v3, *MEMORY[0x277D85260], v20);
  v11 = sub_226D6EA8C();
  v12 = v18;
  *(v18 + 24) = v11;
  v13 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_226B7FCA8;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226B7BBD4;
  aBlock[3] = &block_descriptor_6;
  v14 = _Block_copy(aBlock);
  v15 = v11;

  swift_beginAccess();
  notify_register_dispatch("com.apple.tcc.access.changed", v6, v15, v14);
  swift_endAccess();
  _Block_release(v14);

  return v12;
}

uint64_t sub_226B7BB48(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 16);

    os_unfair_lock_lock((v3 + 24));

    *(v3 + 16) = MEMORY[0x277D84F98];
    os_unfair_lock_unlock((v3 + 24));
  }

  return result;
}

uint64_t sub_226B7BBD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t AuthorisationStatusProvider.authStatus(auditToken:entitlements:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a5;
  v35 = a6;
  v11 = sub_226D68CEC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v33 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7170, &qword_226D74560);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v27 - v18;
  v20 = *(v6 + 16);
  os_unfair_lock_lock((v20 + 24));
  sub_226B7BEE8((v20 + 16), v19);
  os_unfair_lock_unlock((v20 + 24));
  sub_226B7FCC8(v19, v16);
  v21 = *(v12 + 48);
  v34 = v11;
  if (v21(v16, 1, v11) == 1)
  {
    v29 = HIDWORD(a3);
    v30 = HIDWORD(a4);
    v28 = HIDWORD(a2);
    v31 = 0;
    sub_226AC47B0(v16, &qword_27D7A7170, &qword_226D74560);
    v16 = v33;
    v22 = sub_226B7C10C(a1, a2, a3, a4, v33);
    v32 = &v27;
    MEMORY[0x28223BE20](v22);
    *(&v27 - 6) = a1;
    v24 = v28;
    v23 = v29;
    *(&v27 - 10) = a2;
    *(&v27 - 9) = v24;
    *(&v27 - 8) = a3;
    *(&v27 - 7) = v23;
    v25 = v30;
    *(&v27 - 6) = a4;
    *(&v27 - 5) = v25;
    *(&v27 - 2) = v16;
    os_unfair_lock_lock((v20 + 24));
    sub_226B7FD38(v20 + 16);
    os_unfair_lock_unlock((v20 + 24));
  }

  sub_226AC47B0(v19, &qword_27D7A7170, &qword_226D74560);
  return (*(v12 + 32))(v35, v16, v34);
}

uint64_t sub_226B7BEE8@<X0>(uint64_t *a1@<X0>, uint64_t a6@<X8>)
{
  v8 = sub_226D680FC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6810C();
  v12 = *a1;
  if (*(*a1 + 16) && (v13 = sub_226C302EC(v11), (v14 & 1) != 0))
  {
    v15 = v13;
    v16 = *(v12 + 56);
    v17 = sub_226D68CEC();
    v18 = *(v17 - 8);
    (*(v18 + 16))(a6, v16 + *(v18 + 72) * v15, v17);
    (*(v9 + 8))(v11, v8);
    return (*(v18 + 56))(a6, 0, 1, v17);
  }

  else
  {
    (*(v9 + 8))(v11, v8);
    v20 = sub_226D68CEC();
    return (*(*(v20 - 8) + 56))(a6, 1, 1, v20);
  }
}

uint64_t sub_226B7C10C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_226D68CEC();
  v23 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_226D67DDC())
  {
    v13 = *MEMORY[0x277CC75F8];
    v14 = *(v23 + 104);

    return v14(a5, v13, v10);
  }

  else
  {
    if (qword_27D7A5ED0 != -1)
    {
      swift_once();
    }

    v16 = MEMORY[0x277CC7600];
    if (qword_27D7B61D0)
    {
      v22 = a5;
      v20 = HIDWORD(a3);
      v21 = HIDWORD(a4);
      v17 = qword_27D7B61D0;
      v24 = a1;
      v25 = a2;
      v26 = a3;
      v27 = v20;
      a5 = v22;
      v28 = a4;
      v29 = v21;
      v18 = TCCAccessPreflightWithAuditToken();

      v19 = MEMORY[0x277CC7608];
      if (v18 != 1)
      {
        v19 = v16;
      }

      if (v18)
      {
        v16 = v19;
      }

      else
      {
        v16 = MEMORY[0x277CC75F8];
      }
    }

    (*(v23 + 104))(v12, *v16, v10);
    return (*(v23 + 32))(a5, v12, v10);
  }
}

uint64_t sub_226B7C32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7170, &qword_226D74560);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v16 - v8;
  v10 = sub_226D680FC();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6810C();
  v13 = sub_226D68CEC();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v9, a6, v13);
  (*(v14 + 56))(v9, 0, 1, v13);
  return sub_226D48C9C(v9, v12);
}

uint64_t AuthorisationStatusProvider.deinit()
{

  return v0;
}

uint64_t AuthorisationStatusProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_226B7C558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = a7;
  v8[22] = a8;
  v8[19] = a5;
  v8[20] = a6;
  v8[17] = a3;
  v8[18] = a4;
  v8[15] = a1;
  v8[16] = a2;
  v9 = sub_226D69ADC();
  v8[23] = v9;
  v8[24] = *(v9 - 8);
  v8[25] = swift_task_alloc();
  v10 = sub_226D69A9C();
  v8[26] = v10;
  v8[27] = *(v10 - 8);
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7180, &qword_226D74600);
  v8[30] = swift_task_alloc();
  v11 = sub_226D67F1C();
  v8[31] = v11;
  v8[32] = *(v11 - 8);
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();
  v12 = sub_226D68CEC();
  v8[37] = v12;
  v8[38] = *(v12 - 8);
  v8[39] = swift_task_alloc();
  v8[40] = swift_task_alloc();
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  sub_226D6E77C();
  v8[43] = sub_226D6E76C();
  v14 = sub_226D6E6CC();
  v8[44] = v14;
  v8[45] = v13;

  return MEMORY[0x2822009F8](sub_226B7C7F8, v14, v13);
}

uint64_t sub_226B7C7F8()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 296);
  v3 = *(v0 + 304);
  sub_226B7C10C(*(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 336));
  v4 = *MEMORY[0x277CC7600];
  *(v0 + 488) = v4;
  v5 = *(v3 + 104);
  *(v0 + 368) = v5;
  *(v0 + 376) = (v3 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v5(v1, v4, v2);
  v6 = sub_226D68CDC();
  v7 = *(v3 + 8);
  *(v0 + 384) = v7;
  *(v0 + 392) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v2);
  if ((v6 & 1) == 0)
  {
    v15 = *(v0 + 336);
    v16 = *(v0 + 296);
    v17 = *(v0 + 304);
    v18 = *(v0 + 120);

    (*(v17 + 32))(v18, v15, v16);
    goto LABEL_5;
  }

  v8 = *(v0 + 248);
  v9 = *(v0 + 256);
  v10 = *(v0 + 240);
  sub_226D67DFC();
  v11 = (*(v9 + 48))(v10, 1, v8);
  v12 = *(v0 + 240);
  if (v11 == 1)
  {
    v13 = *(v0 + 296);
    v14 = *(v0 + 120);
    v7(*(v0 + 336), v13);

    sub_226AC47B0(v12, &qword_27D7A7180, &qword_226D74600);
    v5(v14, v4, v13);
LABEL_5:

    v19 = *(v0 + 8);

    return v19();
  }

  (*(*(v0 + 256) + 32))(*(v0 + 288), *(v0 + 240), *(v0 + 248));
  sub_226D6D76C();
  *(v0 + 400) = MEMORY[0x22AA89800]();
  v21 = swift_task_alloc();
  *(v0 + 408) = v21;
  *v21 = v0;
  v21[1] = sub_226B7CAEC;

  return MEMORY[0x282198128]();
}

uint64_t sub_226B7CAEC(char a1)
{
  v2 = *v1;
  *(*v1 + 492) = a1;

  v3 = *(v2 + 360);
  v4 = *(v2 + 352);

  return MEMORY[0x2822009F8](sub_226B7CC14, v4, v3);
}

uint64_t sub_226B7CC14()
{
  v65 = v0;
  if (*(v0 + 492) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 416) = v1;
    *v1 = v0;
    v1[1] = sub_226B7D3D4;

    return MEMORY[0x282198120]();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7188, &qword_226D74608);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_226D70840;
  v3 = *MEMORY[0x277D6C0B8];
  if (!*MEMORY[0x277D6C0B8])
  {
    __break(1u);
    return MEMORY[0x282198120]();
  }

  *(inited + 32) = v3;
  v4 = inited + 32;
  *(inited + 40) = 1;
  v5 = inited;
  v6 = v3;
  sub_226B23BB0(v5);
  swift_setDeallocating();
  sub_226AC47B0(v4, &qword_27D7A7190, &qword_226D74610);
  type metadata accessor for CFString(0);
  sub_226B80204(&qword_27D7A6048, type metadata accessor for CFString, &unk_226D70A28);
  v7 = sub_226D6E2AC();
  *(v0 + 424) = v7;

  if (qword_27D7A5ED0 != -1)
  {
    swift_once();
  }

  v8 = qword_27D7B61D0;
  *(v0 + 432) = qword_27D7B61D0;
  v9 = MEMORY[0x277CC75F8];
  if (v8)
  {
    v62 = *(v0 + 320);
    v10 = *(v0 + 304);
    v61 = *(v0 + 312);
    v60 = *(v0 + 296);
    v12 = *(v0 + 152);
    v11 = *(v0 + 160);
    v13 = v7;
    v14 = *(v0 + 136);
    v15 = *(v0 + 144);
    v16 = HIDWORD(v15);
    v59 = *(v0 + 368);
    v17 = v8;
    *(v0 + 456) = v14;
    *(v0 + 464) = v15;
    v7 = v13;
    *(v0 + 468) = v16;
    *(v0 + 472) = v12;
    *(v0 + 480) = v11;
    LODWORD(v11) = TCCAccessCheckAuditToken();

    v18 = MEMORY[0x277CC7608];
    v19 = v11 == 0;
    v9 = MEMORY[0x277CC75F8];
    if (!v19)
    {
      v18 = MEMORY[0x277CC75F8];
    }

    v59(v61, *v18, v60);
    (*(v10 + 32))(v62, v61, v60);
  }

  else
  {
    (*(v0 + 368))(*(v0 + 320), *(v0 + 488), *(v0 + 296));
    if (qword_28105F5D8 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 280);
    v20 = *(v0 + 288);
    v23 = *(v0 + 248);
    v22 = *(v0 + 256);
    v24 = sub_226D6E07C();
    __swift_project_value_buffer(v24, qword_28105F5E0);
    (*(v22 + 16))(v21, v20, v23);
    v25 = sub_226D6E05C();
    v26 = sub_226D6E9CC();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 280);
    v30 = *(v0 + 248);
    v29 = *(v0 + 256);
    if (v27)
    {
      v31 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v64 = v63;
      *v31 = 136315138;
      sub_226B80204(&qword_281062BC0, MEMORY[0x277CC7098], MEMORY[0x277CC70C8]);
      v32 = v7;
      v33 = sub_226D6F1CC();
      v35 = v34;
      (*(v29 + 8))(v28, v30);
      v36 = v33;
      v7 = v32;
      v9 = MEMORY[0x277CC75F8];
      v37 = sub_226AC4530(v36, v35, &v64);

      *(v31 + 4) = v37;
      _os_log_impl(&dword_226AB4000, v25, v26, "Requesting auth status for %s but finance service is not available", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v63);
      MEMORY[0x22AA8BEE0](v63, -1, -1);
      MEMORY[0x22AA8BEE0](v31, -1, -1);
    }

    else
    {

      (*(v29 + 8))(v28, v30);
    }
  }

  v38 = *(v0 + 384);
  v39 = *(v0 + 328);
  v40 = *(v0 + 296);
  (*(v0 + 368))(v39, *v9, v40);
  v41 = sub_226D68CDC();
  v38(v39, v40);
  if (v41)
  {
    v42 = swift_task_alloc();
    *(v0 + 440) = v42;
    *v42 = v0;
    v42[1] = sub_226B7DCA4;
    v43 = *(v0 + 232);
    v44 = *(v0 + 152);
    v45 = *(v0 + 160);
    v46 = *(v0 + 136);
    v47 = *(v0 + 144);
    v48 = *(v0 + 128);

    return sub_226B7EA80(v43, v48, v46, v47, v44, v45);
  }

  else
  {
    v50 = *(v0 + 288);
    v52 = *(v0 + 168);
    v51 = *(v0 + 176);

    v53 = swift_task_alloc();
    v53[2] = v52;
    v53[3] = v50;
    v53[4] = v51;
    sub_226D6EB7C();
    v54 = *(v0 + 400);
    (*(v0 + 384))(*(v0 + 336), *(v0 + 296));

    v55 = *(v0 + 288);
    v56 = *(v0 + 248);
    v57 = *(v0 + 256);
    (*(*(v0 + 304) + 32))(*(v0 + 120), *(v0 + 320), *(v0 + 296));
    (*(v57 + 8))(v55, v56);

    v58 = *(v0 + 8);

    return v58();
  }
}

uint64_t sub_226B7D3D4(char a1)
{
  v2 = *v1;
  *(*v1 + 493) = a1;

  v3 = *(v2 + 360);
  v4 = *(v2 + 352);

  return MEMORY[0x2822009F8](sub_226B7D4FC, v4, v3);
}

uint64_t sub_226B7D4FC()
{
  v71 = v0;
  if (*(v0 + 493))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7188, &qword_226D74608);
    result = swift_initStackObject();
    *(result + 16) = xmmword_226D70840;
    v2 = *MEMORY[0x277D6C0B8];
    if (!*MEMORY[0x277D6C0B8])
    {
      __break(1u);
      return result;
    }

    *(result + 32) = v2;
    v3 = result + 32;
    *(result + 40) = 1;
    v4 = result;
    v5 = v2;
    sub_226B23BB0(v4);
    swift_setDeallocating();
    sub_226AC47B0(v3, &qword_27D7A7190, &qword_226D74610);
    type metadata accessor for CFString(0);
    sub_226B80204(&qword_27D7A6048, type metadata accessor for CFString, &unk_226D70A28);
    v6 = sub_226D6E2AC();
    *(v0 + 424) = v6;

    if (qword_27D7A5ED0 != -1)
    {
      swift_once();
    }

    v7 = qword_27D7B61D0;
    *(v0 + 432) = qword_27D7B61D0;
    v8 = MEMORY[0x277CC75F8];
    if (v7)
    {
      v68 = *(v0 + 320);
      v9 = *(v0 + 304);
      v67 = *(v0 + 312);
      v66 = *(v0 + 296);
      v11 = *(v0 + 152);
      v10 = *(v0 + 160);
      v12 = v6;
      v13 = *(v0 + 136);
      v14 = *(v0 + 144);
      v15 = HIDWORD(v14);
      v65 = *(v0 + 368);
      v16 = v7;
      *(v0 + 456) = v13;
      *(v0 + 464) = v14;
      v6 = v12;
      *(v0 + 468) = v15;
      *(v0 + 472) = v11;
      *(v0 + 480) = v10;
      LODWORD(v10) = TCCAccessCheckAuditToken();

      v17 = MEMORY[0x277CC7608];
      v18 = v10 == 0;
      v8 = MEMORY[0x277CC75F8];
      if (!v18)
      {
        v17 = MEMORY[0x277CC75F8];
      }

      v65(v67, *v17, v66);
      (*(v9 + 32))(v68, v67, v66);
    }

    else
    {
      (*(v0 + 368))(*(v0 + 320), *(v0 + 488), *(v0 + 296));
      if (qword_28105F5D8 != -1)
      {
        swift_once();
      }

      v29 = *(v0 + 280);
      v28 = *(v0 + 288);
      v31 = *(v0 + 248);
      v30 = *(v0 + 256);
      v32 = sub_226D6E07C();
      __swift_project_value_buffer(v32, qword_28105F5E0);
      (*(v30 + 16))(v29, v28, v31);
      v33 = sub_226D6E05C();
      v34 = sub_226D6E9CC();
      v35 = os_log_type_enabled(v33, v34);
      v36 = *(v0 + 280);
      v38 = *(v0 + 248);
      v37 = *(v0 + 256);
      if (v35)
      {
        v39 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v70 = v69;
        *v39 = 136315138;
        sub_226B80204(&qword_281062BC0, MEMORY[0x277CC7098], MEMORY[0x277CC70C8]);
        v40 = v6;
        v41 = sub_226D6F1CC();
        v43 = v42;
        (*(v37 + 8))(v36, v38);
        v44 = v41;
        v6 = v40;
        v8 = MEMORY[0x277CC75F8];
        v45 = sub_226AC4530(v44, v43, &v70);

        *(v39 + 4) = v45;
        _os_log_impl(&dword_226AB4000, v33, v34, "Requesting auth status for %s but finance service is not available", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v69);
        MEMORY[0x22AA8BEE0](v69, -1, -1);
        MEMORY[0x22AA8BEE0](v39, -1, -1);
      }

      else
      {

        (*(v37 + 8))(v36, v38);
      }
    }

    v46 = *(v0 + 384);
    v47 = *(v0 + 328);
    v48 = *(v0 + 296);
    (*(v0 + 368))(v47, *v8, v48);
    v49 = sub_226D68CDC();
    v46(v47, v48);
    if (v49)
    {
      v50 = swift_task_alloc();
      *(v0 + 440) = v50;
      *v50 = v0;
      v50[1] = sub_226B7DCA4;
      v51 = *(v0 + 232);
      v52 = *(v0 + 152);
      v53 = *(v0 + 160);
      v54 = *(v0 + 136);
      v55 = *(v0 + 144);
      v56 = *(v0 + 128);

      return sub_226B7EA80(v51, v56, v54, v55, v52, v53);
    }

    v57 = *(v0 + 288);
    v59 = *(v0 + 168);
    v58 = *(v0 + 176);

    v60 = swift_task_alloc();
    v60[2] = v59;
    v60[3] = v57;
    v60[4] = v58;
    sub_226D6EB7C();
    v61 = *(v0 + 400);
    (*(v0 + 384))(*(v0 + 336), *(v0 + 296));

    v62 = *(v0 + 288);
    v63 = *(v0 + 248);
    v64 = *(v0 + 256);
    (*(*(v0 + 304) + 32))(*(v0 + 120), *(v0 + 320), *(v0 + 296));
    (*(v64 + 8))(v62, v63);
  }

  else
  {
    v19 = *(v0 + 400);
    v20 = *(v0 + 368);
    v21 = *(v0 + 488);
    v23 = *(v0 + 288);
    v22 = *(v0 + 296);
    v24 = *(v0 + 248);
    v25 = *(v0 + 256);
    v26 = *(v0 + 120);
    (*(v0 + 384))(*(v0 + 336), v22);

    v20(v26, v21, v22);
    (*(v25 + 8))(v23, v24);
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_226B7DCA4()
{
  v2 = *v1;
  *(*v1 + 448) = v0;

  v3 = *(v2 + 360);
  v4 = *(v2 + 352);
  if (v0)
  {
    v5 = sub_226B7E918;
  }

  else
  {
    v5 = sub_226B7DDE0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_226B7DDE0()
{
  v137 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);
  (*(v3 + 16))(v1, *(v0 + 232), v2);
  result = (*(v3 + 88))(v1, v2);
  if (result != *MEMORY[0x277CC7948])
  {
    if (result != *MEMORY[0x277CC7950])
    {
      v48 = *(v0 + 424);
      v112 = *(v0 + 336);
      v115 = *(v0 + 384);
      v125 = *(v0 + 320);
      v49 = *(v0 + 296);
      v50 = *(v0 + 304);
      v51 = *(v0 + 256);
      v129 = *(v0 + 248);
      v133 = *(v0 + 288);
      v52 = *(v0 + 232);
      v118 = *(v0 + 224);
      v54 = *(v0 + 208);
      v53 = *(v0 + 216);
      v55 = *(v0 + 120);

      v56 = *(v53 + 8);
      v56(v52, v54);
      v115(v112, v49);
      (*(v50 + 32))(v55, v125, v49);
      v56(v118, v54);
      (*(v51 + 8))(v133, v129);
LABEL_27:

      v47 = *(v0 + 8);
      goto LABEL_28;
    }

    v12 = *MEMORY[0x277D6C260];
    if (!*MEMORY[0x277D6C260])
    {
      __break(1u);
      return result;
    }

    v13 = *(v0 + 432);

    v14 = v12;
    v15 = sub_226D6E3EC();
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7198, &qword_226D74620);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_226D70840;
    *(inited + 32) = v15;
    v19 = inited + 32;
    *(inited + 40) = v17;
    *(inited + 48) = 1;
    sub_226B23CA0(inited);
    swift_setDeallocating();
    sub_226AC47B0(v19, &qword_27D7A71A0, &qword_226D74628);
    v20 = sub_226D6E2AC();

    if (v13)
    {
      v21 = *(v0 + 432);
      sub_226D67F0C();
      v22 = sub_226D6E36C();

      v23 = TCCAccessResetForBundleIdWithOptions();

      if (v23)
      {
        v24 = *(v0 + 424);
        v25 = *(v0 + 384);
        v132 = *(v0 + 336);
        v26 = *(v0 + 320);
        v27 = *(v0 + 296);
        v28 = *(v0 + 232);
        v29 = *(v0 + 208);
        v30 = *(v0 + 216);

        (*(v30 + 8))(v28, v29);
        v25(v26, v27);
        v25(v132, v27);
LABEL_25:
        v63 = *(v0 + 288);
        v64 = *(v0 + 248);
        v65 = *(v0 + 256);
        (*(v0 + 368))(*(v0 + 120), *(v0 + 488), *(v0 + 296));
        goto LABEL_26;
      }

      if (qword_28105F5D8 != -1)
      {
        swift_once();
      }

      v85 = *(v0 + 288);
      v86 = *(v0 + 272);
      v88 = *(v0 + 248);
      v87 = *(v0 + 256);
      v89 = sub_226D6E07C();
      __swift_project_value_buffer(v89, qword_28105F5E0);
      (*(v87 + 16))(v86, v85, v88);
      v90 = sub_226D6E05C();
      v114 = sub_226D6E9CC();
      v91 = os_log_type_enabled(v90, v114);
      v92 = *(v0 + 384);
      v93 = *(v0 + 336);
      v131 = *(v0 + 320);
      v135 = *(v0 + 296);
      v94 = *(v0 + 272);
      v95 = *(v0 + 248);
      v96 = *(v0 + 256);
      v127 = *(v0 + 232);
      v97 = *(v0 + 216);
      v120 = *(v0 + 424);
      v123 = *(v0 + 208);
      if (!v91)
      {

        (*(v96 + 8))(v94, v95);
        (*(v97 + 8))(v127, v123);
        v92(v131, v135);
        v92(v93, v135);
        goto LABEL_25;
      }

      v110 = *(v0 + 400);
      v98 = swift_slowAlloc();
      v117 = v20;
      v99 = swift_slowAlloc();
      v136[0] = v99;
      *v98 = 136315138;
      sub_226B80204(&qword_281062BC0, MEMORY[0x277CC7098], MEMORY[0x277CC70C8]);
      v106 = v92;
      v108 = v93;
      v100 = sub_226D6F1CC();
      v102 = v101;
      (*(v96 + 8))(v94, v95);
      v103 = sub_226AC4530(v100, v102, v136);

      *(v98 + 4) = v103;
      _os_log_impl(&dword_226AB4000, v90, v114, "Could not reset TCC for application with bundle: %s", v98, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v99);
      MEMORY[0x22AA8BEE0](v99, -1, -1);
      MEMORY[0x22AA8BEE0](v98, -1, -1);

      (*(v97 + 8))(v127, v123);
      v104 = v135;
      v73 = v106;
      v106(v131, v135);
      v105 = v108;
    }

    else
    {
      if (qword_28105F5D8 != -1)
      {
        swift_once();
      }

      v66 = *(v0 + 288);
      v67 = *(v0 + 256);
      v68 = *(v0 + 264);
      v69 = *(v0 + 248);
      v70 = sub_226D6E07C();
      __swift_project_value_buffer(v70, qword_28105F5E0);
      (*(v67 + 16))(v68, v66, v69);
      v71 = sub_226D6E05C();
      v113 = sub_226D6E9CC();
      v72 = os_log_type_enabled(v71, v113);
      v73 = *(v0 + 384);
      v74 = *(v0 + 336);
      v130 = *(v0 + 320);
      v134 = *(v0 + 296);
      v76 = *(v0 + 256);
      v75 = *(v0 + 264);
      v77 = *(v0 + 248);
      v126 = *(v0 + 232);
      v78 = *(v0 + 216);
      v119 = *(v0 + 424);
      v122 = *(v0 + 208);
      if (v72)
      {
        v109 = *(v0 + 400);
        v111 = *(v0 + 384);
        v79 = swift_slowAlloc();
        v116 = v20;
        v80 = swift_slowAlloc();
        v136[0] = v80;
        *v79 = 136315138;
        sub_226B80204(&qword_281062BC0, MEMORY[0x277CC7098], MEMORY[0x277CC70C8]);
        v107 = v74;
        v81 = sub_226D6F1CC();
        v83 = v82;
        (*(v76 + 8))(v75, v77);
        v84 = sub_226AC4530(v81, v83, v136);

        *(v79 + 4) = v84;
        _os_log_impl(&dword_226AB4000, v71, v113, "Trying to reset TCC for %s but finance service is not available", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v80);
        MEMORY[0x22AA8BEE0](v80, -1, -1);
        MEMORY[0x22AA8BEE0](v79, -1, -1);

        (*(v78 + 8))(v126, v122);
        v111(v130, v134);
        v111(v107, v134);
        goto LABEL_25;
      }

      (*(v76 + 8))(v75, v77);
      (*(v78 + 8))(v126, v122);
      v104 = v134;
      v73(v130, v134);
      v105 = v74;
    }

    v73(v105, v104);
    goto LABEL_25;
  }

  v6 = *(v0 + 216);
  v5 = *(v0 + 224);
  v8 = *(v0 + 200);
  v7 = *(v0 + 208);
  v9 = *(v0 + 184);
  v10 = *(v0 + 192);

  (*(v6 + 96))(v5, v7);
  (*(v10 + 32))(v8, v5, v9);
  if (sub_226D69ACC())
  {
    v11 = *(v0 + 424);

LABEL_13:
    v57 = *(v0 + 384);
    v58 = *(v0 + 336);
    v59 = *(v0 + 296);
    v61 = *(v0 + 192);
    v60 = *(v0 + 200);
    v62 = *(v0 + 184);
    (*(*(v0 + 216) + 8))(*(v0 + 232), *(v0 + 208));
    v57(v58, v59);
    (*(v61 + 8))(v60, v62);
    v63 = *(v0 + 288);
    v64 = *(v0 + 248);
    v65 = *(v0 + 256);
    (*(*(v0 + 304) + 32))(*(v0 + 120), *(v0 + 320), *(v0 + 296));
LABEL_26:
    (*(v65 + 8))(v63, v64);
    goto LABEL_27;
  }

  v31 = *(v0 + 448);
  v32 = *(v0 + 288);
  v33 = *(v0 + 200);
  v35 = *(v0 + 168);
  v34 = *(v0 + 176);
  v36 = swift_task_alloc();
  v36[2] = v35;
  v36[3] = v32;
  v36[4] = v33;
  v36[5] = v34;
  sub_226D6EB8C();
  v37 = *(v0 + 424);
  v38 = *(v0 + 400);
  if (!v31)
  {

    goto LABEL_13;
  }

  v39 = *(v0 + 384);
  v124 = *(v0 + 320);
  v128 = *(v0 + 336);
  v40 = *(v0 + 296);
  v121 = *(v0 + 232);
  v42 = *(v0 + 208);
  v41 = *(v0 + 216);
  v43 = *(v0 + 192);

  (*(v41 + 8))(v121, v42);
  v39(v124, v40);
  v39(v128, v40);
  v44 = *(v0 + 288);
  v45 = *(v0 + 248);
  v46 = *(v0 + 256);
  (*(v43 + 8))(*(v0 + 200), *(v0 + 184));
  (*(v46 + 8))(v44, v45);

  v47 = *(v0 + 8);
LABEL_28:

  return v47();
}

uint64_t sub_226B7E918()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 384);
  v3 = *(v0 + 320);
  v4 = *(v0 + 296);

  v2(v3, v4);
  v5 = *(v0 + 288);
  v6 = *(v0 + 256);
  v7 = *(v0 + 248);
  (*(v0 + 384))(*(v0 + 336), *(v0 + 296));
  (*(v6 + 8))(v5, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_226B7EA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[28] = a5;
  v6[29] = a6;
  v6[26] = a3;
  v6[27] = a4;
  v6[24] = a1;
  v6[25] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7180, &qword_226D74600);
  v6[30] = swift_task_alloc();
  v7 = sub_226D6A5CC();
  v6[31] = v7;
  v6[32] = *(v7 - 8);
  v6[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B7EB80, 0, 0);
}

uint64_t sub_226B7EB80()
{
  v1 = *(v0 + 256);
  v36 = *(v0 + 248);
  v37 = *(v0 + 264);
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  v5 = *(v0 + 208);
  v4 = *(v0 + 216);
  v38 = *(v0 + 240);
  v6 = objc_allocWithZone(MEMORY[0x277CF0B98]);
  *(v0 + 320) = v5;
  *(v0 + 328) = v4;
  *(v0 + 336) = v2;
  *(v0 + 344) = v3;
  v7 = [v6 initWithAuditToken_];
  v8 = [objc_opt_self() processHandleForAuditToken_];
  *(v0 + 272) = v8;

  sub_226D6ACEC();
  swift_allocObject();
  v9 = sub_226D6ACDC();
  *(v0 + 280) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A71A8, &qword_226D74630);

  v11 = sub_226D66DEC();

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A71B0, &qword_226D74638);
  v13 = objc_allocWithZone(v12);
  v14 = MEMORY[0x277D85000];
  *(v13 + *((*MEMORY[0x277D85000] & *v13) + 0x60)) = 0;
  v15 = (v13 + *((*v14 & *v13) + 0x68));
  v15[3] = v10;
  v15[4] = sub_226AC4194(&qword_27D7A71B8, &qword_27D7A71A8, &qword_226D74630, MEMORY[0x277CC6520]);
  *v15 = v11;
  *(v13 + *((*v14 & *v13) + 0x70)) = v9;
  *(v13 + *((*v14 & *v13) + 0x78)) = v8;
  *(v0 + 152) = v13;
  *(v0 + 160) = v12;

  v16 = v8;
  v17 = objc_msgSendSuper2((v0 + 152), sel_init);
  *(v0 + 288) = v17;
  *(v0 + 184) = MEMORY[0x277D84F98];
  (*(v1 + 104))(v37, *MEMORY[0x277CC7C28], v36);
  v18 = sub_226D6A5BC();
  v20 = v19;
  (*(v1 + 8))(v37, v36);
  *(v0 + 168) = v18;
  *(v0 + 176) = v20;
  v21 = MEMORY[0x277D837D0];
  sub_226D6EE8C();
  sub_226D67DFC();
  v22 = sub_226D67F1C();
  v23 = *(v22 - 8);
  v24 = (*(v23 + 48))(v38, 1, v22);
  v25 = *(v0 + 240);
  if (v24 == 1)
  {
    sub_226AC47B0(*(v0 + 240), &qword_27D7A7180, &qword_226D74600);
    sub_226D4A15C(v0 + 16, (v0 + 88));
    sub_226AC47B0(v0 + 88, &unk_27D7A8BB0, &unk_226D74340);
    sub_226AE5030(v0 + 16);
    v26 = *(v0 + 184);
  }

  else
  {
    v27 = sub_226D67F0C();
    *(v0 + 80) = v21;
    *(v0 + 56) = v27;
    *(v0 + 64) = v28;
    (*(v23 + 8))(v25, v22);
    sub_226B24A98((v0 + 56), (v0 + 120));
    v29 = *(v0 + 184);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_226BE64DC((v0 + 120), v0 + 16, isUniquelyReferenced_nonNull_native);
    sub_226AE5030(v0 + 16);
    v26 = v29;
    *(v0 + 184) = v29;
  }

  sub_226CDA424(3, v26);

  v31 = swift_task_alloc();
  *(v0 + 296) = v31;
  *(v31 + 16) = v17;
  v32 = swift_task_alloc();
  *(v0 + 304) = v32;
  v33 = sub_226D69A9C();
  *v32 = v0;
  v32[1] = sub_226B7F080;
  v34 = *(v0 + 192);

  return MEMORY[0x2822008A0](v34, 0, 0, 0xD000000000000019, 0x8000000226D80CD0, sub_226B80288, v31, v33);
}

uint64_t sub_226B7F080()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_226B7F228;
  }

  else
  {

    v2 = sub_226B7F19C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226B7F19C()
{
  v1 = v0[36];
  v2 = v0[34];

  v3 = v0[1];

  return v3();
}

uint64_t sub_226B7F228()
{
  v1 = v0[36];
  v2 = v0[34];

  v3 = v0[1];

  return v3();
}

void sub_226B7F2C8(uint64_t a1, void (**a2)(unint64_t, char *, uint64_t), uint64_t a3, void *a4)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v8 = sub_226D69AAC();
  FinancialDataAppPermissions.insertOrUpdateApplication(with:for:updateSharingStartDate:in:)(a2, v8, 1, a4);

  if (!v4)
  {
    v9 = sub_226D69ABC();
    v10 = sub_226C3F420(a2, v9, 1, a4);
    v11 = *(*(a1 + 16) + OBJC_IVAR____TtC13FinanceDaemonP33_23B5A450C6466867A8B5BE41FBDE409720PersistedPermissions_permissionsLock);
    MEMORY[0x28223BE20](v10);
    os_unfair_lock_lock((v11 + 24));
    sub_226B8024C((v11 + 16));
    os_unfair_lock_unlock((v11 + 24));

    v14[0] = 0;
    if ([a4 save_])
    {
      v12 = v14[0];
    }

    else
    {
      v13 = v14[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }
}

void sub_226B7F494(uint64_t a1, uint64_t a2, void *a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  sub_226D683BC();
  sub_226C1DE60(a2, a3);
  if (!v3)
  {
    v8 = *(*(a1 + 16) + OBJC_IVAR____TtC13FinanceDaemonP33_23B5A450C6466867A8B5BE41FBDE409720PersistedPermissions_permissionsLock);
    MEMORY[0x28223BE20](v7);
    os_unfair_lock_lock((v8 + 24));
    sub_226B80290((v8 + 16));
    os_unfair_lock_unlock((v8 + 24));
    v11[0] = 0;
    if ([a3 save_])
    {
      v9 = v11[0];
    }

    else
    {
      v10 = v11[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }
}

uint64_t sub_226B7F5FC(uint64_t a1, uint64_t a2)
{

  sub_226D6B35C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A71C0, &unk_226D74640);
  sub_226AC4194(&qword_27D7A71C8, &qword_27D7A71C0, &unk_226D74640, MEMORY[0x277CC7EC8]);
  return sub_226D66E2C();
}

void sub_226B7F6A4(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v40 = a2;
  v4 = sub_226D6D1AC();
  v39 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  if (!*MEMORY[0x277D6C0D0])
  {
    __break(1u);
    goto LABEL_34;
  }

  v13 = *a1;
  v14 = *MEMORY[0x277D6C0D0];
  v15 = [v13 __swift_objectForKeyedSubscript_];

  if (v15)
  {
    sub_226D6ED0C();
    swift_unknownObjectRelease();
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
  }

  v43[0] = v41;
  v43[1] = v42;
  if (!*(&v42 + 1))
  {
    sub_226AC47B0(v43, &unk_27D7A8BB0, &unk_226D74340);
    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0 || v44 != 1)
  {
    goto LABEL_17;
  }

  if (!*MEMORY[0x277D6C0C8])
  {
LABEL_34:
    __break(1u);
    return;
  }

  v16 = *MEMORY[0x277D6C0C8];
  v17 = [v13 __swift_objectForKeyedSubscript_];

  if (!v17)
  {
LABEL_17:
    v27 = v40;
    *v40 = 0;
    v27[1] = 0;
    return;
  }

  sub_226D6ED0C();
  swift_unknownObjectRelease();
  sub_226B24A98(&v41, v43);
  sub_226AC4708(v43, &v41);
  type metadata accessor for CFBundle(0);
  swift_dynamicCast();
  v18 = v44;
  v19 = CFBundleCopyBundleURL(v18);
  if (!v19)
  {
    v28 = CFBundleGetIdentifier(v18);

    __swift_destroy_boxed_opaque_existential_0Tm(v43);
    if (v28)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v41 = 0uLL;
        sub_226D6E38C();

        v29 = *(&v41 + 1);
        if (*(&v41 + 1))
        {
          v30 = v40;
          *v40 = v41;
          v30[1] = v29;
          return;
        }
      }

      else
      {
      }
    }

    else
    {
    }

    goto LABEL_17;
  }

  v20 = v19;
  sub_226D6D14C();

  v21 = v39;
  (*(v39 + 32))(v12, v9, v4);
  (*(v21 + 16))(v6, v12, v4);
  v22 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v23 = sub_226B7FB54(v6, 0);
  if (v2)
  {
    v24 = CFBundleGetIdentifier(v18);

    (*(v21 + 8))(v12, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v43);
    if (v24)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v41 = 0uLL;
        sub_226D6E38C();

        v25 = *(&v41 + 1);
        if (*(&v41 + 1))
        {
          v26 = v40;
          *v40 = v41;
          v26[1] = v25;
          return;
        }

        goto LABEL_29;
      }
    }

    else
    {
    }

LABEL_29:
    v37 = v40;
    *v40 = 0;
    v37[1] = 0;
    return;
  }

  v31 = v23;

  v32 = [v31 bundleIdentifier];
  if (v32)
  {
    v33 = v32;
    v34 = sub_226D6E39C();
    v36 = v35;

    v21 = v39;
  }

  else
  {

    v34 = 0;
    v36 = 0;
  }

  (*(v21 + 8))(v12, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(v43);
  v38 = v40;
  *v40 = v34;
  v38[1] = v36;
}

id sub_226B7FB54(uint64_t a1, char a2)
{
  v3 = v2;
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = sub_226D6D0DC();
  v15[0] = 0;
  v7 = [v3 initWithURL:v6 allowPlaceholder:a2 & 1 error:v15];

  v8 = v15[0];
  if (v7)
  {
    v9 = sub_226D6D1AC();
    v10 = *(*(v9 - 8) + 8);
    v11 = v8;
    v10(a1, v9);
  }

  else
  {
    v12 = v15[0];
    sub_226D6D04C();

    swift_willThrow();
    v13 = sub_226D6D1AC();
    (*(*(v13 - 8) + 8))(a1, v13);
  }

  return v7;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_226B7FCC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7170, &qword_226D74560);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_226B7FDC0(uint64_t isUniquelyReferenced_nonNull_native)
{
  if (qword_27D7A5ED0 != -1)
  {
    goto LABEL_25;
  }

  while (qword_27D7B61D0)
  {
    v30 = isUniquelyReferenced_nonNull_native;
    v1 = qword_27D7B61D0;
    v2 = TCCAccessCopyInformation();
    isUniquelyReferenced_nonNull_native = v1;
    if (!v2)
    {
      goto LABEL_42;
    }

    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      isUniquelyReferenced_nonNull_native = v2;
LABEL_42:
      v31 = isUniquelyReferenced_nonNull_native;

      return;
    }

    v32 = 0;
    sub_226AE59B4(0, &qword_27D7A7178, 0x277CBEAC0);
    sub_226D6E5DC();

    v3 = v32;
    isUniquelyReferenced_nonNull_native = v1;
    if (!v32)
    {
      goto LABEL_42;
    }

    v4 = v32 & 0xFFFFFFFFFFFFFF8;
    if (v32 >> 62)
    {
      isUniquelyReferenced_nonNull_native = sub_226D6EDFC();
      v5 = isUniquelyReferenced_nonNull_native;
      v29 = v1;
      if (!isUniquelyReferenced_nonNull_native)
      {
LABEL_27:
        v7 = MEMORY[0x277D84F90];
LABEL_28:

        v16 = sub_226AE3C28(v7);

        v17 = v30[3];
        v18 = v30[4];
        __swift_project_boxed_opaque_existential_1(v30, v17);
        v19 = (*(v18 + 16))(v17, v18);
        v20 = sub_226AE3C28(v19);

        if (*(v20 + 16) <= *(v16 + 16) >> 3)
        {
          v32 = v16;
          sub_226D53D38(v20);

          v21 = v32;
        }

        else
        {
          v21 = sub_226D549F0(v20, v16);
        }

        v1 = v29;
        v22 = 0;
        v23 = 1 << *(v21 + 32);
        v24 = -1;
        if (v23 < 64)
        {
          v24 = ~(-1 << v23);
        }

        v25 = v24 & *(v21 + 56);
        v26 = (v23 + 63) >> 6;
        if (v25)
        {
          goto LABEL_39;
        }

        while (1)
        {
          v27 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if (v27 >= v26)
          {

            isUniquelyReferenced_nonNull_native = v29;
            goto LABEL_42;
          }

          v25 = *(v21 + 56 + 8 * v27);
          ++v22;
          if (v25)
          {
            v22 = v27;
            do
            {
LABEL_39:
              v25 &= v25 - 1;

              v28 = sub_226D6E36C();

              TCCAccessSetForBundleId();
            }

            while (v25);
            continue;
          }
        }

        __break(1u);
        return;
      }
    }

    else
    {
      v5 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v29 = v1;
      if (!v5)
      {
        goto LABEL_27;
      }
    }

    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        isUniquelyReferenced_nonNull_native = MEMORY[0x22AA8AFD0](v6, v3);
      }

      else
      {
        if (v6 >= *(v4 + 16))
        {
          goto LABEL_24;
        }

        isUniquelyReferenced_nonNull_native = *(v3 + 8 * v6 + 32);
      }

      v9 = isUniquelyReferenced_nonNull_native;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v34 = isUniquelyReferenced_nonNull_native;
      sub_226B7F6A4(&v34, &v32);

      v11 = v33;
      if (v33)
      {
        v12 = v32;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_226BBAB0C(0, *(v7 + 16) + 1, 1, v7);
          v7 = isUniquelyReferenced_nonNull_native;
        }

        v14 = *(v7 + 16);
        v13 = *(v7 + 24);
        if (v14 >= v13 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_226BBAB0C((v13 > 1), v14 + 1, 1, v7);
          v7 = isUniquelyReferenced_nonNull_native;
        }

        *(v7 + 16) = v14 + 1;
        v8 = v7 + 16 * v14;
        *(v8 + 32) = v12;
        *(v8 + 40) = v11;
        v4 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      ++v6;
      if (v10 == v5)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v15 = isUniquelyReferenced_nonNull_native;
    swift_once();
    isUniquelyReferenced_nonNull_native = v15;
  }
}

uint64_t sub_226B80204(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_226B802AC(uint64_t a1, void (**a2)(unint64_t, char *, uint64_t), uint64_t a3, uint64_t a4, void *a5)
{
  v9[1] = *MEMORY[0x277D85DE8];
  FinancialDataAppPermissions.insertOrUpdateApplication(with:for:updateSharingStartDate:in:)(a2, a3, a4, a5);
  if (!v5)
  {
    v9[0] = 0;
    if ([a5 save_])
    {
      v7 = v9[0];
    }

    else
    {
      v8 = v9[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }
}

void sub_226B80388(uint64_t a1, uint64_t a2, void *a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 320);
  sub_226D683BC();
  sub_226C1DE60(a2, a3);
  if (!v3)
  {
    v8 = *(*(v6 + 16) + OBJC_IVAR____TtC13FinanceDaemonP33_23B5A450C6466867A8B5BE41FBDE409720PersistedPermissions_permissionsLock);
    MEMORY[0x28223BE20](v7);
    os_unfair_lock_lock((v8 + 24));
    sub_226B80290((v8 + 16));
    os_unfair_lock_unlock((v8 + 24));
    v11[0] = 0;
    if ([a3 save_])
    {
      v9 = v11[0];
    }

    else
    {
      v10 = v11[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }
}

void sub_226B804F0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 320);
  v8 = sub_226C3F420(a2, a3, a4, a5);
  if (!v5)
  {
    v9 = *(*(v7 + 16) + OBJC_IVAR____TtC13FinanceDaemonP33_23B5A450C6466867A8B5BE41FBDE409720PersistedPermissions_permissionsLock);
    MEMORY[0x28223BE20](v8);
    os_unfair_lock_lock((v9 + 24));
    sub_226B8024C((v9 + 16));
    os_unfair_lock_unlock((v9 + 24));
    v12[0] = 0;
    if ([a5 save_])
    {
      v10 = v12[0];
    }

    else
    {
      v11 = v12[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }
}

uint64_t sub_226B80654(uint64_t a1, uint64_t a2)
{
  v2[20] = a2;
  v2[21] = type metadata accessor for OfflineLabSystemTask.OfflineLabSystemTaskError(0);
  v2[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B806E8, 0, 0);
}

uint64_t sub_226B806E8()
{
  v20 = v0;
  if (qword_28105F660 != -1)
  {
    swift_once();
  }

  v1 = sub_226D6E07C();
  v0[23] = __swift_project_value_buffer(v1, qword_28105F668);
  v2 = sub_226D6E05C();
  v3 = sub_226D6E9EC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_226AC4530(0xD000000000000022, 0x8000000226D80440, &v19);
    _os_log_impl(&dword_226AB4000, v2, v3, "Performing task: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x22AA8BEE0](v5, -1, -1);
    MEMORY[0x22AA8BEE0](v4, -1, -1);
  }

  sub_226AE532C(v0[20], (v0 + 9));
  v6 = v0[12];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 9), v6);
  v7 = *(v6 - 8);
  v8 = swift_task_alloc();
  v0[24] = v8;
  (*(v7 + 16))();
  v0[17] = &type metadata for BankConnectEnvironmentImplementation;
  v9 = sub_226B6A16C();
  v0[18] = v9;
  v10 = swift_allocObject();
  v0[14] = v10;
  memcpy((v10 + 16), v8, 0x3B0uLL);
  type metadata accessor for OfflineLabSystemTask();
  inited = swift_initStackObject();
  v0[25] = inited;
  v12 = v0[17];
  v13 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 14), v12);
  v14 = *(v12 - 8);
  v15 = swift_task_alloc();
  (*(v14 + 16))(v15, v13, v12);
  inited[5] = &type metadata for BankConnectEnvironmentImplementation;
  inited[6] = v9;
  v16 = swift_allocObject();
  inited[2] = v16;
  memcpy((v16 + 16), v15, 0x3B0uLL);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 14);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 9);
  v17 = swift_task_alloc();
  v0[26] = v17;
  *v17 = v0;
  v17[1] = sub_226B80A50;

  return sub_226B80F9C();
}

uint64_t sub_226B80A50()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_226B80CDC;
  }

  else
  {
    v2 = sub_226B80B64;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226B80B64(uint64_t a1)
{
  v11 = v1;
  v2 = sub_226D6E05C();
  v3 = sub_226D6E9EC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 200);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_226AC4530(0xD000000000000022, 0x8000000226D80440, &v10);
    _os_log_impl(&dword_226AB4000, v2, v3, "Completed offline lab system task: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_0Tm((v5 + 16));
  }

  else
  {

    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_0Tm((v5 + 16));
  }

  v8 = *(v1 + 8);

  return v8();
}

uint64_t sub_226B80CDC()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));

  *(v0 + 152) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  v4 = *(v0 + 176);
  v5 = sub_226D6D1AC();
  if ((*(*(v5 - 8) + 48))(v4, 3, v5) != 3)
  {
    sub_226B82ED0(v4, type metadata accessor for OfflineLabSystemTask.OfflineLabSystemTaskError);
LABEL_7:
    v9 = *(v0 + 216);

    v10 = v9;
    v11 = sub_226D6E05C();
    v12 = sub_226D6E9CC();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 216);
    if (v13)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = v14;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_226AB4000, v11, v12, "Error completing offline lab system task. Error: %@", v15, 0xCu);
      sub_226AC47B0(v16, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v16, -1, -1);
      MEMORY[0x22AA8BEE0](v15, -1, -1);
    }

    else
    {
    }

    goto LABEL_10;
  }

  v6 = sub_226D6E05C();
  v7 = sub_226D6E9EC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_226AB4000, v6, v7, "Offline lab system task exited due to no permission", v8, 2u);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
  }

LABEL_10:

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_226B80F9C()
{
  v1[14] = v0;
  v2 = sub_226D6C84C();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();
  v3 = sub_226D6D09C();
  v1[18] = v3;
  v1[19] = *(v3 - 8);
  v1[20] = swift_task_alloc();
  v4 = sub_226D6D1AC();
  v1[21] = v4;
  v1[22] = *(v4 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A71D0, &qword_226D76660);
  v1[25] = swift_task_alloc();
  v5 = sub_226D6D52C();
  v1[26] = v5;
  v1[27] = *(v5 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v6 = sub_226D692FC();
  v1[31] = v6;
  v1[32] = *(v6 - 8);
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B81234, 0, 0);
}

uint64_t sub_226B81234()
{
  v80 = v0;
  v1 = *(v0 + 112);
  v2 = __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_226B82E60((v2 + 88), v0 + 56);
  if (!*(v0 + 80))
  {
    v4 = *(v0 + 168);
    v5 = *(v0 + 176);
    sub_226AC47B0(v0 + 56, &qword_27D7A7048, &qword_226D74690);
    type metadata accessor for OfflineLabSystemTask.OfflineLabSystemTaskError(0);
    sub_226B83618(&qword_27D7A71D8, type metadata accessor for OfflineLabSystemTask.OfflineLabSystemTaskError, &unk_226D746CC);
    swift_allocError();
    (*(v5 + 56))(v6, 1, 3, v4);
    swift_willThrow();
LABEL_10:

    v22 = *(v0 + 8);
LABEL_11:

    return v22();
  }

  v3 = *(v0 + 272);
  sub_226AC484C((v0 + 56), v0 + 16);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_226BE2CD0(v3);
  v8 = *(v0 + 264);
  v7 = *(v0 + 272);
  v9 = *(v0 + 248);
  v10 = *(v0 + 256);
  (*(v10 + 104))(v8, *MEMORY[0x277CC7870], v9);
  v11 = sub_226D692EC();
  v12 = *(v10 + 8);
  v12(v8, v9);
  v12(v7, v9);
  if ((v11 & 1) == 0)
  {
    v19 = *(v0 + 168);
    v20 = *(v0 + 176);
    type metadata accessor for OfflineLabSystemTask.OfflineLabSystemTaskError(0);
    sub_226B83618(&qword_27D7A71D8, type metadata accessor for OfflineLabSystemTask.OfflineLabSystemTaskError, &unk_226D746CC);
    swift_allocError();
    (*(v20 + 56))(v21, 3, 3, v19);
    goto LABEL_8;
  }

  v13 = *(v0 + 200);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  OfflineLabConfigurationManager.userItem.getter(v13);
  v14 = *(v0 + 200);
  v15 = type metadata accessor for OfflineLabConfigurationManager.OfflineLabUserItem(0);
  if ((*(*(v15 - 8) + 48))(v14, 1, v15) == 1)
  {
    v17 = *(v0 + 168);
    v16 = *(v0 + 176);
    sub_226AC47B0(v14, &qword_27D7A71D0, &qword_226D76660);
    type metadata accessor for OfflineLabSystemTask.OfflineLabSystemTaskError(0);
    sub_226B83618(&qword_27D7A71D8, type metadata accessor for OfflineLabSystemTask.OfflineLabSystemTaskError, &unk_226D746CC);
    swift_allocError();
    (*(v16 + 56))(v18, 2, 3, v17);
LABEL_8:
    swift_willThrow();
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    goto LABEL_10;
  }

  v25 = *(v0 + 232);
  v24 = *(v0 + 240);
  v26 = *(v0 + 208);
  v27 = *(v0 + 216);
  v28 = *(v27 + 16);
  v28(v25, v14 + *(v15 + 20), v26);
  sub_226B82ED0(v14, type metadata accessor for OfflineLabConfigurationManager.OfflineLabUserItem);
  (*(v27 + 32))(v24, v25, v26);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v69 = v28;
  sub_226BE49B4();
  v29 = *(v0 + 216);
  v30 = *(v0 + 224);
  v31 = *(v0 + 208);
  v73 = *(v0 + 192);
  v75 = *(v0 + 176);
  v77 = *(v0 + 168);
  v32 = *(v0 + 152);
  v70 = *(v0 + 184);
  v71 = *(v0 + 160);
  v72 = *(v0 + 144);
  v33 = [objc_opt_self() defaultManager];
  v34 = [v33 temporaryDirectory];

  sub_226D6D14C();
  *&v78[0] = 0x4C656E696C66666FLL;
  *(&v78[0] + 1) = 0xEB000000002E6261;
  sub_226D6D51C();
  sub_226B83618(&qword_27D7A6648, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v35 = sub_226D6F1CC();
  MEMORY[0x22AA8A510](v35);

  v36 = *(v29 + 8);
  *(v0 + 280) = v36;
  *(v0 + 288) = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v36(v30, v31);
  v37 = *(&v78[0] + 1);
  *(v0 + 96) = *&v78[0];
  *(v0 + 104) = v37;
  (*(v32 + 104))(v71, *MEMORY[0x277CC91D8], v72);
  sub_226AEEF6C();
  sub_226D6D19C();
  (*(v32 + 8))(v71, v72);

  v38 = *(v75 + 8);
  *(v0 + 296) = v38;
  *(v0 + 304) = (v75 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v38(v70, v77);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v39 = sub_226D676AC();
  v79 = 0;
  memset(v78, 0, sizeof(v78));
  sub_226C614FC(v39, v78);
  v40 = sub_226C5EA88(v73);
  *(v0 + 312) = v40;
  v41 = v40;
  v76 = v36;

  if (!v41[2])
  {

    if (qword_28105F660 != -1)
    {
      swift_once();
    }

    v54 = sub_226D6E07C();
    __swift_project_value_buffer(v54, qword_28105F668);
    v55 = sub_226D6E05C();
    v56 = sub_226D6E9AC();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_226AB4000, v55, v56, "Nothing to upload. Returning.", v57, 2u);
      MEMORY[0x22AA8BEE0](v57, -1, -1);
    }

    v58 = *(v0 + 296);
    v59 = *(v0 + 280);
    v60 = *(v0 + 240);
    v61 = *(v0 + 208);
    v62 = *(v0 + 192);
    v63 = *(v0 + 168);
    sub_226B82F30(v62);
    v58(v62, v63);
    v59(v60, v61);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

    v22 = *(v0 + 8);
    goto LABEL_11;
  }

  v42 = objc_allocWithZone(MEMORY[0x277CBEAE0]);
  v43 = sub_226D6D0DC();
  v44 = [v42 initWithURL_];
  *(v0 + 320) = v44;

  v45 = *(v0 + 240);
  if (!v44)
  {
    v74 = *(v0 + 208);
    v64 = *(v0 + 192);
    v65 = *(v0 + 168);
    v66 = *(v0 + 176);

    type metadata accessor for OfflineLabSystemTask.OfflineLabSystemTaskError(0);
    sub_226B83618(&qword_27D7A71D8, type metadata accessor for OfflineLabSystemTask.OfflineLabSystemTaskError, &unk_226D746CC);
    swift_allocError();
    v68 = v67;
    (*(v66 + 16))(v67, v64, v65);
    (*(v66 + 56))(v68, 0, 3, v65);
    swift_willThrow();
    sub_226B82F30(v64);
    v38(v64, v65);
    v76(v45, v74);
    goto LABEL_9;
  }

  v46 = *(v0 + 136);
  v47 = *(v0 + 112);
  v69(*(v0 + 224), *(v0 + 240), *(v0 + 208));
  v48 = v44;
  sub_226D6C83C();
  v49 = __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  __swift_project_boxed_opaque_existential_1(v49 + 1, v49[4]);
  v50 = sub_226D6C2AC();
  *(v0 + 328) = v50;
  v51 = swift_task_alloc();
  *(v0 + 336) = v51;
  v51[2] = v47;
  v51[3] = v50;
  v51[4] = v46;
  v51[5] = v41;
  v52 = swift_task_alloc();
  *(v0 + 344) = v52;
  *v52 = v0;
  v52[1] = sub_226B81D18;
  v53 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282119B28](v52, &unk_226D746A0, v51, v53);
}

uint64_t sub_226B81D18()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_226B81F98;
  }

  else
  {

    v2 = sub_226B81E40;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226B81E40()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 296);
  v5 = *(v0 + 280);
  v6 = *(v0 + 240);
  v7 = *(v0 + 208);
  v8 = *(v0 + 192);
  v9 = *(v0 + 168);
  sub_226B82F30(v8);
  v4(v8, v9);
  v5(v6, v7);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_226B81F98()
{
  v10 = *(v0 + 296);
  v11 = *(v0 + 280);
  v9 = *(v0 + 240);
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  v3 = *(v0 + 168);
  v4 = *(v0 + 128);
  v5 = *(v0 + 136);
  v6 = *(v0 + 120);

  (*(v4 + 8))(v5, v6);
  sub_226B82F30(v2);
  v10(v2, v3);
  v11(v9, v1);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_226B8211C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  return MEMORY[0x2822009F8](sub_226B82140, 0, 0);
}

uint64_t sub_226B82140()
{
  if (qword_28105F660 != -1)
  {
    swift_once();
  }

  v1 = sub_226D6E07C();
  v0[6] = __swift_project_value_buffer(v1, qword_28105F668);
  v2 = sub_226D6E05C();
  v3 = sub_226D6E9AC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226AB4000, v2, v3, "Preparing to upload offline lab data", v4, 2u);
    MEMORY[0x22AA8BEE0](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_226B82298;
  v6 = v0[4];

  return MEMORY[0x282119B10](v6);
}

uint64_t sub_226B82298()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_226B82490;
  }

  else
  {
    v2 = sub_226B823AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226B823AC()
{
  sub_226B82600(1, *(v0 + 40));
  v1 = sub_226D6E05C();
  v2 = sub_226D6E9AC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_226AB4000, v1, v2, "Finished upload successfully", v3, 2u);
    MEMORY[0x22AA8BEE0](v3, -1, -1);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_226B82490()
{
  v1 = v0[8];
  v2 = v1;
  v3 = sub_226D6E05C();
  v4 = sub_226D6E9CC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_226AB4000, v3, v4, "Error uploading offline lab data: %@", v6, 0xCu);
    sub_226AC47B0(v7, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
  }

  v10 = v0[5];

  sub_226B82600(0, v10);
  swift_willThrow();
  v11 = v0[1];

  return v11();
}

uint64_t sub_226B82600(char a1, uint64_t a2)
{
  v5 = sub_226D6E07C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  v9 = sub_226D676AC();
  if (qword_28105F660 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v5, qword_28105F668);
  v11 = (*(v6 + 16))(v8, v10, v5);
  MEMORY[0x28223BE20](v11);
  *&v13[-32] = a2;
  *&v13[-24] = v9;
  *&v13[-16] = v8;
  v13[-8] = a1 & 1;
  sub_226D6EB7C();

  return (*(v6 + 8))(v8, v5);
}

uint64_t type metadata accessor for OfflineLabSystemTask.OfflineLabSystemTaskError(uint64_t a1)
{
  result = qword_27D7A71E0;
  if (!qword_27D7A71E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_226B8294C(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v51 = a4;
  v46 = a3;
  v56 = a2;
  v57[1] = *MEMORY[0x277D85DE8];
  v50 = sub_226D6D4AC();
  v6 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_226D6B9BC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v40 - v13;
  v15 = *(a1 + 16);
  if (v15)
  {
    v45 = v11;
    v16 = *(type metadata accessor for OfflineLabAccountInfo(0) - 8);
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v48 = (v6 + 8);
    v54 = (v17 - 8);
    v55 = v18;
    v19 = (a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80)));
    v52 = *(v16 + 72);
    *&v20 = 136315138;
    v40 = v20;
    v53 = v17;
    v47 = v8;
    v18(v14, v19, v8);
    while (1)
    {
      sub_226D69F0C();
      v22 = sub_226D69D9C();
      if (v4)
      {
        return (*v54)(v14, v8);
      }

      v23 = v22;
      if (v22)
      {
        sub_226D681FC();
        v21 = v49;
        sub_226D6D46C();
        sub_226D681EC();

        (*v48)(v21, v50);
        (*v54)(v14, v8);
      }

      else
      {
        v24 = v45;
        v55(v45, v14, v8);
        v25 = sub_226D6E05C();
        v26 = sub_226D6E9CC();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v43 = v27;
          v44 = swift_slowAlloc();
          v57[0] = v44;
          *v27 = v40;
          sub_226B83618(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
          v42 = v26;
          v28 = sub_226D6F1CC();
          v30 = v29;
          v31 = *v54;
          v41 = v25;
          v31(v24, v47);
          v32 = sub_226AC4530(v28, v30, v57);

          v33 = v43;
          *(v43 + 1) = v32;
          v34 = v41;
          v35 = v33;
          _os_log_impl(&dword_226AB4000, v41, v42, "Account with ID %s not found.", v33, 0xCu);
          v36 = v44;
          __swift_destroy_boxed_opaque_existential_0Tm(v44);
          MEMORY[0x22AA8BEE0](v36, -1, -1);
          MEMORY[0x22AA8BEE0](v35, -1, -1);

          v31(v14, v47);
          v8 = v47;
        }

        else
        {

          v37 = *v54;
          (*v54)(v24, v8);
          v37(v14, v8);
        }
      }

      v19 += v52;
      if (!--v15)
      {
        goto LABEL_11;
      }

      v55(v14, v19, v8);
    }
  }

  else
  {
LABEL_11:
    v57[0] = 0;
    if ([v56 save_])
    {
      return v57[0];
    }

    else
    {
      v39 = v57[0];
      sub_226D6D04C();

      return swift_willThrow();
    }
  }
}

uint64_t sub_226B82E60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7048, &qword_226D74690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226B82ED0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_226B82F30(uint64_t a1)
{
  v51[1] = *MEMORY[0x277D85DE8];
  v2 = sub_226D6D1AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v46 - v7;
  if (qword_28105F660 != -1)
  {
    swift_once();
  }

  v9 = sub_226D6E07C();
  v10 = __swift_project_value_buffer(v9, qword_28105F668);
  v11 = *(v3 + 16);
  v50 = a1;
  v47 = v11;
  v11(v8, a1, v2);
  v49 = v10;
  v12 = sub_226D6E05C();
  v13 = sub_226D6E9AC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v46 = v5;
    v15 = v3;
    v16 = v14;
    v17 = swift_slowAlloc();
    v51[0] = v17;
    *v16 = 136315138;
    sub_226B83618(&qword_27D7A7018, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v18 = sub_226D6F1CC();
    v20 = v19;
    v48 = *(v15 + 8);
    v48(v8, v2);
    v21 = sub_226AC4530(v18, v20, v51);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_226AB4000, v12, v13, "Finished. Removing output data file: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    MEMORY[0x22AA8BEE0](v17, -1, -1);
    v5 = v46;
    MEMORY[0x22AA8BEE0](v16, -1, -1);
  }

  else
  {

    v48 = *(v3 + 8);
    v48(v8, v2);
  }

  v22 = objc_opt_self();
  v23 = [v22 defaultManager];
  v24 = v50;
  sub_226D6D16C();
  v25 = sub_226D6E36C();

  v26 = [v23 fileExistsAtPath_];

  if (v26)
  {
    v27 = [v22 defaultManager];
    v28 = sub_226D6D0DC();
    v51[0] = 0;
    v29 = [v27 removeItemAtURL:v28 error:v51];

    v30 = v51[0];
    if (v29)
    {

      v31 = v30;
    }

    else
    {
      v46 = v51[0];
      v35 = v51[0];
      v36 = sub_226D6D04C();

      swift_willThrow();
      v47(v5, v24, v2);
      v37 = sub_226D6E05C();
      v38 = sub_226D6E9DC();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = v5;
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v51[0] = v41;
        *v40 = 136315138;
        sub_226B83618(&qword_27D7A7018, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v42 = sub_226D6F1CC();
        v44 = v43;
        v48(v39, v2);
        v45 = sub_226AC4530(v42, v44, v51);

        *(v40 + 4) = v45;
        _os_log_impl(&dword_226AB4000, v37, v38, "Unable to remove lab output file at: %s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v41);
        MEMORY[0x22AA8BEE0](v41, -1, -1);
        MEMORY[0x22AA8BEE0](v40, -1, -1);
      }

      else
      {

        v48(v5, v2);
      }
    }
  }

  else
  {
    v32 = sub_226D6E05C();
    v33 = sub_226D6E9AC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_226AB4000, v32, v33, "Not removing output data file because it does not exist.", v34, 2u);
      MEMORY[0x22AA8BEE0](v34, -1, -1);
    }
  }
}