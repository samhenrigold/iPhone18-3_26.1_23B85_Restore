uint64_t sub_22CE5395C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t DeviceActivityBudgetLevelProvider.__allocating_init(deviceActivityMonitors:)(uint64_t a1)
{
  v2 = swift_allocObject();
  DeviceActivityBudgetLevelProvider.init(deviceActivityMonitors:)(a1);
  return v2;
}

void *DeviceActivityBudgetLevelProvider.init(deviceActivityMonitors:)(uint64_t a1)
{
  v18 = a1;
  v19 = sub_22CE85FD4();
  v2 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22CE85FB4();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22CE85D34();
  MEMORY[0x28223BE20](v6 - 8);
  *(v1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED78, &unk_22CE87210);
  swift_allocObject();
  *(v1 + 24) = sub_22CE85CC4();
  sub_22CE4FC1C();
  v16 = "Inductive In-Band";
  sub_22CE85D24();
  v20 = MEMORY[0x277D84F90];
  v15[2] = sub_22CE425CC(&qword_281445320, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v15[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF10, &unk_22CE87930);
  sub_22CE40A60(&qword_281445328, &unk_27D9EEF10, &unk_22CE87930, MEMORY[0x277D83970]);
  sub_22CE86034();
  v7 = *MEMORY[0x277D85260];
  v8 = v2 + 104;
  v9 = *(v2 + 104);
  v15[0] = v8;
  v9(v4, v7, v19);
  v10 = sub_22CE86004();
  v11 = v17;
  v17[4] = v10;
  v16 = "yBudgetLevelProvider.internal";
  sub_22CE85D24();
  v20 = MEMORY[0x277D84F90];
  sub_22CE86034();
  v9(v4, v7, v19);
  v12 = sub_22CE86004();
  v13 = MEMORY[0x277D84FA0];
  v11[5] = v12;
  v11[6] = v13;
  v11[7] = v18;
  sub_22CE53D74();
  return v11;
}

uint64_t sub_22CE53D74()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED80, &unk_22CE87920);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE08, &qword_22CE878C0);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v20 = v0;
  v9 = *(v0 + 56);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = v9 + 32;
    v18 = *(v20 + 40);
    v19 = (v6 + 8);
    do
    {
      sub_22CE40D28(v11, v24);
      v12 = v25;
      v13 = v26;
      __swift_project_boxed_opaque_existential_1(v24, v25);
      v14 = (*(v13 + 8))(v12, v13);
      __swift_destroy_boxed_opaque_existential_1(v24);
      v22 = v14;
      v15 = v18;
      v23 = v18;
      v16 = sub_22CE85FC4();
      (*(*(v16 - 8) + 56))(v3, 1, 1, v16);
      v21 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE10, &qword_22CE878C8);
      sub_22CE4FC1C();
      sub_22CE40A60(&qword_281444838, &qword_27D9EEE10, &qword_22CE878C8, MEMORY[0x277CBCD90]);
      sub_22CE425CC(&qword_281445318, sub_22CE4FC1C, MEMORY[0x277D85228]);
      sub_22CE85CF4();
      sub_22CE505E4(v3);

      swift_allocObject();
      swift_weakInit();
      sub_22CE40A60(&qword_281444850, &qword_27D9EEE08, &qword_22CE878C0, MEMORY[0x277CBCD60]);
      sub_22CE85D04();

      (*v19)(v8, v4);
      swift_beginAccess();
      sub_22CE85CA4();
      swift_endAccess();

      v11 += 40;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t DeviceActivityBudgetLevelProvider.deinit()
{

  return v0;
}

uint64_t DeviceActivityBudgetLevelProvider.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

void sub_22CE5421C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v31 = a3;
  v4 = a4;
  v5 = *(a1 + 56);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = v5 + 32;
LABEL_3:
    v10 = v9 + 40 * v7;
    v4 = v7;
    do
    {
      if (v4 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_22;
      }

      sub_22CE40D28(v10, v28);
      v7 = v4 + 1;
      v11 = v29;
      v12 = v30;
      __swift_project_boxed_opaque_existential_1(v28, v29);
      v13 = (*(v12 + 16))(v11, v12);
      __swift_destroy_boxed_opaque_existential_1(v28);
      if (v13)
      {
        v8 = 1;
        v9 = v5 + 32;
        if ((v6 - 1) != v4)
        {
          goto LABEL_3;
        }

        v4 = a4;
        goto LABEL_11;
      }

      v10 += 40;
      ++v4;
    }

    while (v6 != v7);
    v4 = a4;
    if ((v8 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_11:
    v14 = v31;
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v15 = sub_22CE85C84();
    __swift_project_value_buffer(v15, qword_281445368);

    v16 = sub_22CE85C74();
    v17 = sub_22CE85FA4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v28[0] = v19;
      *v18 = 136380675;
      *(v18 + 4) = sub_22CE44280(a2, v14, v28);
      _os_log_impl(&dword_22CE3F000, v16, v17, "DeviceActivityBudgetLevelProvider has no opinion on budget level for %{private}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x2318C20D0](v19, -1, -1);
      MEMORY[0x2318C20D0](v18, -1, -1);
    }

    v20 = 3;
  }

  else
  {
LABEL_16:
    v6 = v31;
    if (qword_281445360 != -1)
    {
LABEL_22:
      swift_once();
    }

    v21 = sub_22CE85C84();
    __swift_project_value_buffer(v21, qword_281445368);

    v22 = sub_22CE85C74();
    v23 = sub_22CE85FA4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v28[0] = v25;
      *v24 = 136380931;
      *(v24 + 4) = sub_22CE44280(a2, v6, v28);
      *(v24 + 12) = 2082;
      *(v24 + 14) = sub_22CE44280(0x6576697463616E69, 0xE800000000000000, v28);
      _os_log_impl(&dword_22CE3F000, v22, v23, "DeviceActivityBudgetLevelProvider thinks %{private}s should have level %{public}s, privacy: .public)", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C20D0](v25, -1, -1);
      MEMORY[0x2318C20D0](v24, -1, -1);
    }

    v20 = 0;
  }

  *v4 = v20;
}

uint64_t DeviceActivityLevel.hashValue.getter()
{
  v1 = *v0;
  sub_22CE86204();
  MEMORY[0x2318C1AB0](v1);
  return sub_22CE86244();
}

uint64_t sub_22CE547A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE18, &unk_22CE87900);
  sub_22CE85FE4();
  return v1;
}

uint64_t sub_22CE54830()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE20, &qword_22CE87910);
    sub_22CE40A60(&qword_281444820, &qword_27D9EEE20, &qword_22CE87910, MEMORY[0x277CBCE20]);
    v1 = sub_22CE85CE4();
    *(v0 + 32) = v1;
  }

  return v1;
}

uint64_t (*sub_22CE54904(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_22CE54830();
  return sub_22CE5494C;
}

void sub_22CE5495C()
{
  v1 = *(v0 + 184);
  if (!v1 || !*(v1 + 16) || (sub_22CE4DE0C(), (v2 & 1) == 0))
  {
    if (qword_281444EA0 != -1)
    {
      swift_once();
    }

    v3 = off_281444EA8;
    v4 = *(*(off_281444EA8 + 5) + 16);
    os_unfair_lock_lock(v4);
    if (*(v3[3] + 16))
    {
      sub_22CE4DE0C();
      if (v5)
      {
        os_unfair_lock_unlock(v4);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_22CE54A30()
{
  v1 = *(v0 + 192);
  if (!v1 || !*(v1 + 16) || (sub_22CE4DE0C(), (v2 & 1) == 0))
  {
    if (qword_281444EA0 != -1)
    {
      swift_once();
    }

    v3 = off_281444EA8;
    v4 = *(*(off_281444EA8 + 5) + 16);
    os_unfair_lock_lock(v4);
    if (*(v3[4] + 16))
    {
      sub_22CE4DE0C();
      if (v5)
      {
        os_unfair_lock_unlock(v4);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t BudgetServer.__allocating_init(store:budgetLevelResolver:budgetEnforcementPolicyProvider:taskScheduler:windowDuration:maximumUpdateBudgetPerWindow:maximumPushToStartBudgetPerWindow:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(char *, uint64_t, uint64_t, uint64_t), int a8)
{
  LODWORD(v52) = a8;
  v50 = a6;
  v51 = a7;
  v49 = a5;
  v60 = a4;
  v61 = a3;
  v62 = a2;
  v63 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE28, &qword_22CE87918);
  v58 = *(v8 - 8);
  v59 = v8;
  MEMORY[0x28223BE20](v8);
  v57 = v45 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED80, &unk_22CE87920);
  MEMORY[0x28223BE20](v10 - 8);
  v56 = v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED88, &unk_22CE872C0);
  v54 = *(v12 - 8);
  v55 = v12;
  MEMORY[0x28223BE20](v12);
  v53 = v45 - v13;
  v47 = sub_22CE85FD4();
  v14 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v16 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22CE85FB4();
  MEMORY[0x28223BE20](v17);
  v18 = sub_22CE85D34();
  MEMORY[0x28223BE20](v18 - 8);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED78, &unk_22CE87210);
  swift_allocObject();
  *(v19 + 24) = sub_22CE85CC4();
  *(v19 + 32) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE20, &qword_22CE87910);
  swift_allocObject();
  *(v19 + 40) = sub_22CE85CC4();
  v48 = sub_22CE4FC1C();
  v46 = "deviceActivityMonitors";
  sub_22CE85D24();
  v64 = MEMORY[0x277D84F90];
  v45[3] = sub_22CE42614(&qword_281445320, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v45[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF10, &unk_22CE87930);
  v45[4] = sub_22CE40A60(&qword_281445328, &unk_27D9EEF10, &unk_22CE87930, MEMORY[0x277D83970]);
  sub_22CE86034();
  v20 = *MEMORY[0x277D85260];
  v21 = v14 + 104;
  v22 = *(v14 + 104);
  v45[1] = v21;
  v23 = v47;
  v22(v16, v20, v47);
  *(v19 + 48) = sub_22CE86004();
  v46 = "ns.BudgetServer.internal";
  sub_22CE85D24();
  v64 = MEMORY[0x277D84F90];
  sub_22CE86034();
  v22(v16, v20, v23);
  *(v19 + 56) = sub_22CE86004();
  *(v19 + 216) = 0u;
  *(v19 + 232) = 0u;
  v24 = MEMORY[0x277D84FA0];
  *(v19 + 248) = 0;
  *(v19 + 256) = v24;
  sub_22CE40D28(v63, v19 + 264);
  sub_22CE40D28(v60, v19 + 104);
  sub_22CE40D28(v61, v19 + 144);
  v25 = v50;
  *(v19 + 184) = v49;
  *(v19 + 192) = v25;
  *(v19 + 200) = v51;
  *(v19 + 208) = v52 & 1;
  sub_22CE40D28(v62, v19 + 64);
  if (qword_281444EA0 != -1)
  {
    swift_once();
  }

  v26 = *(v19 + 88);
  v27 = *(v19 + 96);
  __swift_project_boxed_opaque_existential_1((v19 + 64), v26);
  v64 = (*(*(v27 + 8) + 8))(v26);
  v65 = *(v19 + 48);
  v28 = v65;
  v29 = sub_22CE85FC4();
  v30 = *(v29 - 8);
  v51 = *(v30 + 56);
  v52 = v30 + 56;
  v31 = v56;
  v51(v56, 1, 1, v29);
  v32 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED90, &qword_22CE88F00);
  v50 = MEMORY[0x277CBCD90];
  sub_22CE40A60(&qword_281444830, &qword_27D9EED90, &qword_22CE88F00, MEMORY[0x277CBCD90]);
  v49 = sub_22CE42614(&qword_281445318, sub_22CE4FC1C, MEMORY[0x277D85228]);
  v33 = v53;
  sub_22CE85CF4();
  sub_22CE42330(v31, &qword_27D9EED80, &unk_22CE87920);

  v34 = swift_allocObject();
  swift_weakInit();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_22CE42780;
  *(v35 + 24) = v34;
  v36 = MEMORY[0x277CBCD60];
  sub_22CE40A60(&qword_281444848, &qword_27D9EED88, &unk_22CE872C0, MEMORY[0x277CBCD60]);

  v37 = v55;
  sub_22CE85D04();

  (*(v54 + 8))(v33, v37);
  swift_beginAccess();
  sub_22CE85CA4();
  swift_endAccess();

  v38 = *(v19 + 168);
  v39 = *(v19 + 176);
  __swift_project_boxed_opaque_existential_1((v19 + 144), v38);
  v64 = (*(v39 + 16))(v38, v39);
  v65 = *(v19 + 56);
  v40 = v65;
  v51(v31, 1, 1, v29);
  v41 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE30, &qword_22CE87940);
  sub_22CE40A60(&qword_281445348, &qword_27D9EEE30, &qword_22CE87940, v50);
  v42 = v57;
  sub_22CE85CF4();
  sub_22CE42330(v31, &qword_27D9EED80, &unk_22CE87920);

  swift_allocObject();
  swift_weakInit();

  sub_22CE40A60(&unk_281445350, &qword_27D9EEE28, &qword_22CE87918, v36);
  v43 = v59;
  sub_22CE85D04();

  (*(v58 + 8))(v42, v43);
  swift_beginAccess();
  sub_22CE85CA4();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1(v60);
  __swift_destroy_boxed_opaque_existential_1(v61);
  __swift_destroy_boxed_opaque_existential_1(v62);
  __swift_destroy_boxed_opaque_existential_1(v63);
  return v19;
}

void *BudgetServer.init(store:budgetLevelResolver:budgetEnforcementPolicyProvider:taskScheduler:windowDuration:maximumUpdateBudgetPerWindow:maximumPushToStartBudgetPerWindow:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = v8;
  LODWORD(v55) = a8;
  v53 = a6;
  v54 = a7;
  v52 = a5;
  v63 = a4;
  v64 = a3;
  v65 = a2;
  v66 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE28, &qword_22CE87918);
  v61 = *(v10 - 8);
  v62 = v10;
  MEMORY[0x28223BE20](v10);
  v60 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED80, &unk_22CE87920);
  MEMORY[0x28223BE20](v12 - 8);
  v59 = &v45 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED88, &unk_22CE872C0);
  v57 = *(v14 - 8);
  v58 = v14;
  MEMORY[0x28223BE20](v14);
  v56 = &v45 - v15;
  v51 = sub_22CE85FD4();
  v67 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22CE85FB4();
  MEMORY[0x28223BE20](v18);
  v19 = sub_22CE85D34();
  MEMORY[0x28223BE20](v19 - 8);
  *(v8 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED78, &unk_22CE87210);
  swift_allocObject();
  *(v8 + 24) = sub_22CE85CC4();
  *(v8 + 32) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE20, &qword_22CE87910);
  swift_allocObject();
  *(v8 + 40) = sub_22CE85CC4();
  v50 = sub_22CE4FC1C();
  v49 = "deviceActivityMonitors";
  sub_22CE85D24();
  v68 = MEMORY[0x277D84F90];
  v48 = sub_22CE42614(&qword_281445320, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF10, &unk_22CE87930);
  sub_22CE40A60(&qword_281445328, &unk_27D9EEF10, &unk_22CE87930, MEMORY[0x277D83970]);
  sub_22CE86034();
  v20 = *MEMORY[0x277D85260];
  v21 = *(v67 + 104);
  v67 += 104;
  v46 = v17;
  v22 = v17;
  v23 = v51;
  v21(v22, v20, v51);
  *(v8 + 48) = sub_22CE86004();
  v49 = "ns.BudgetServer.internal";
  sub_22CE85D24();
  v68 = MEMORY[0x277D84F90];
  sub_22CE86034();
  v21(v46, v20, v23);
  *(v8 + 56) = sub_22CE86004();
  *(v8 + 216) = 0u;
  *(v8 + 232) = 0u;
  v24 = MEMORY[0x277D84FA0];
  *(v8 + 248) = 0;
  *(v8 + 256) = v24;
  sub_22CE40D28(v66, v8 + 264);
  sub_22CE40D28(v63, v8 + 104);
  sub_22CE40D28(v64, v8 + 144);
  v25 = v53;
  *(v8 + 184) = v52;
  *(v8 + 192) = v25;
  *(v8 + 200) = v54;
  *(v8 + 208) = v55 & 1;
  sub_22CE40D28(v65, v8 + 64);
  if (qword_281444EA0 != -1)
  {
    swift_once();
  }

  v27 = *(v8 + 88);
  v26 = *(v8 + 96);
  __swift_project_boxed_opaque_existential_1(v9 + 8, v9[11]);
  v68 = (*(*(v26 + 8) + 8))(v27);
  v69 = v9[6];
  v28 = v69;
  v29 = sub_22CE85FC4();
  v30 = *(v29 - 8);
  v55 = *(v30 + 56);
  v67 = v30 + 56;
  v31 = v59;
  v55(v59, 1, 1, v29);
  v32 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED90, &qword_22CE88F00);
  v54 = MEMORY[0x277CBCD90];
  sub_22CE40A60(&qword_281444830, &qword_27D9EED90, &qword_22CE88F00, MEMORY[0x277CBCD90]);
  v53 = sub_22CE42614(&qword_281445318, sub_22CE4FC1C, MEMORY[0x277D85228]);
  v33 = v56;
  sub_22CE85CF4();
  sub_22CE42330(v31, &qword_27D9EED80, &unk_22CE87920);

  v34 = swift_allocObject();
  swift_weakInit();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_22CE5E864;
  *(v35 + 24) = v34;
  v36 = MEMORY[0x277CBCD60];
  sub_22CE40A60(&qword_281444848, &qword_27D9EED88, &unk_22CE872C0, MEMORY[0x277CBCD60]);

  v37 = v58;
  sub_22CE85D04();

  (*(v57 + 8))(v33, v37);
  swift_beginAccess();
  sub_22CE85CA4();
  swift_endAccess();

  v38 = v9[21];
  v39 = v9[22];
  __swift_project_boxed_opaque_existential_1(v9 + 18, v38);
  v68 = (*(v39 + 16))(v38, v39);
  v69 = v9[7];
  v40 = v69;
  v55(v31, 1, 1, v29);
  v41 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE30, &qword_22CE87940);
  sub_22CE40A60(&qword_281445348, &qword_27D9EEE30, &qword_22CE87940, v54);
  v42 = v60;
  sub_22CE85CF4();
  sub_22CE42330(v31, &qword_27D9EED80, &unk_22CE87920);

  swift_allocObject();
  swift_weakInit();

  sub_22CE40A60(&unk_281445350, &qword_27D9EEE28, &qword_22CE87918, v36);
  v43 = v62;
  sub_22CE85D04();

  (*(v61 + 8))(v42, v43);
  swift_beginAccess();
  sub_22CE85CA4();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1(v63);
  __swift_destroy_boxed_opaque_existential_1(v64);
  __swift_destroy_boxed_opaque_existential_1(v65);
  __swift_destroy_boxed_opaque_existential_1(v66);
  return v9;
}

uint64_t BudgetServer.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));

  sub_22CE42330(v0 + 216, &unk_27D9EEF30, &unk_22CE87948);

  __swift_destroy_boxed_opaque_existential_1((v0 + 264));
  return v0;
}

uint64_t BudgetServer.__deallocating_deinit()
{
  BudgetServer.deinit();

  return MEMORY[0x2821FE8D8](v0, 304, 7);
}

uint64_t BudgetServer.handle(pushEvent:)(uint64_t a1)
{
  v3 = type metadata accessor for PushEvent(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *(v1 + 48);
  sub_22CE5E660(a1, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PushEvent);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_22CE5E5F8(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for PushEvent);
  *(v8 + ((v5 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_22CE5CDB4;
  *(v9 + 24) = v8;
  aBlock[4] = sub_22CE42778;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CE50228;
  aBlock[3] = &block_descriptor_1;
  v10 = _Block_copy(aBlock);

  dispatch_sync(v6, v10);
  _Block_release(v10);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CE5621C(uint64_t *a1)
{
  v2 = type metadata accessor for PushEvent.EventType(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PushEvent(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_281445360 != -1)
  {
    swift_once();
  }

  v8 = sub_22CE85C84();
  __swift_project_value_buffer(v8, qword_281445368);
  sub_22CE5E660(a1, v7, type metadata accessor for PushEvent);
  v9 = sub_22CE85C74();
  v10 = sub_22CE85FA4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 136446210;
    v23 = v4;
    v24 = v12;
    v22 = v2;
    v13 = *v7;
    v14 = v7[1];

    sub_22CE5E6C8(v7, type metadata accessor for PushEvent);
    v15 = sub_22CE44280(v13, v14, &v24);

    *(v11 + 4) = v15;
    v4 = v23;
    _os_log_impl(&dword_22CE3F000, v9, v10, "Received push event for %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x2318C20D0](v12, -1, -1);
    MEMORY[0x2318C20D0](v11, -1, -1);
  }

  else
  {

    sub_22CE5E6C8(v7, type metadata accessor for PushEvent);
  }

  sub_22CE56590();
  sub_22CE5E660(a1 + *(v5 + 32), v4, type metadata accessor for PushEvent.EventType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_22CE5E6C8(v4, type metadata accessor for PushEvent.EventType);
      v17 = a1[5];
      v24 = a1[4];
      v25 = v17;
      v18 = *a1;
      v19 = a1[1];

      sub_22CE57154(&v24, v18, v19);
LABEL_12:

      sub_22CE578E8(v18, v19);
      return sub_22CE59234();
    }

    if (*(a1 + *(v5 + 44)) == 1)
    {
      v20 = a1[5];
      v24 = a1[4];
      v25 = v20;
      v18 = *a1;
      v19 = a1[1];

      sub_22CE58994(&v24, v18, v19);
      goto LABEL_12;
    }
  }

  else
  {
    sub_22CE584E0(*a1, a1[1]);
    sub_22CE5E6C8(v4, type metadata accessor for PushEvent.EventType);
  }

  return sub_22CE59234();
}

uint64_t sub_22CE56590()
{
  v1 = sub_22CE85D14();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22CE85D34();
  v86 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v85 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_22CE85974();
  v7 = *(v104 - 8);
  v8 = MEMORY[0x28223BE20](v104);
  v102 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v98 = &v81 - v11;
  MEMORY[0x28223BE20](v10);
  v97 = &v81 - v12;
  v100 = type metadata accessor for Budget(0);
  v94 = *(v100 - 8);
  v13 = MEMORY[0x28223BE20](v100);
  v90 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v88 = &v81 - v16;
  MEMORY[0x28223BE20](v15);
  v93 = &v81 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE60, &qword_22CE87B40);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v103 = (&v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v99 = &v81 - v21;
  v22 = sub_22CE85D44();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = (&v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v92 = v0;
  v26 = v0[6];
  *v25 = v26;
  (*(v23 + 104))(v25, *MEMORY[0x277D85200], v22);
  v27 = v26;
  LOBYTE(v26) = sub_22CE85D54();
  result = (*(v23 + 8))(v25, v22);
  if (v26)
  {
    v81 = v4;
    v82 = v5;
    v83 = v2;
    v84 = v1;
    v29 = v92[36];
    v30 = v92[37];
    __swift_project_boxed_opaque_existential_1(v92 + 33, v29);
    result = (*(v30 + 8))(v29, v30);
    v91 = 0;
    v32 = 0;
    v34 = result + 64;
    v33 = *(result + 64);
    v95 = result;
    v35 = 1 << *(result + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & v33;
    v38 = (v35 + 63) >> 6;
    v101 = (v7 + 8);
    v89 = (v7 + 16);
    *&v31 = 136380675;
    v87 = v31;
    v39 = v88;
    v40 = v103;
    v96 = result + 64;
    while (v37)
    {
      v41 = v32;
LABEL_18:
      v44 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v45 = v44 | (v41 << 6);
      v46 = (*(v95 + 48) + 16 * v45);
      v48 = *v46;
      v47 = v46[1];
      v49 = v93;
      sub_22CE5E660(*(v95 + 56) + *(v94 + 72) * v45, v93, type metadata accessor for Budget);
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE58, &qword_22CE87B38);
      v51 = *(v50 + 48);
      v52 = v103;
      *v103 = v48;
      v52[1] = v47;
      v40 = v52;
      sub_22CE5E5F8(v49, v52 + v51, type metadata accessor for Budget);
      (*(*(v50 - 8) + 56))(v40, 0, 1, v50);

LABEL_19:
      v53 = v99;
      sub_22CE44874(v40, v99, &qword_27D9EEE60, &qword_22CE87B40);
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE58, &qword_22CE87B38);
      if ((*(*(v54 - 8) + 48))(v53, 1, v54) == 1)
      {

        if (v91)
        {
          aBlock[4] = sub_22CE5E868;
          aBlock[5] = v92;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_22CE42F10;
          aBlock[3] = &block_descriptor_56;
          v77 = _Block_copy(aBlock);

          v78 = v85;
          sub_22CE85D24();
          v105 = MEMORY[0x277D84F90];
          sub_22CE42614(&qword_281445338, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF20, &qword_22CE872D0);
          sub_22CE40A60(&qword_281445330, &unk_27D9EEF20, &qword_22CE872D0, MEMORY[0x277D83970]);
          v79 = v81;
          v80 = v84;
          sub_22CE86034();
          MEMORY[0x2318C1890](0, v78, v79, v77);
          _Block_release(v77);
          (*(v83 + 8))(v79, v80);
          (*(v86 + 8))(v78, v82);
        }

        return result;
      }

      sub_22CE5E5F8(v53 + *(v54 + 48), v39, type metadata accessor for Budget);
      v55 = v102;
      sub_22CE85954();
      v56 = sub_22CE858F4();
      v57 = *v101;
      (*v101)(v55, v104);
      if (v56)
      {
        v58 = v98;
        sub_22CE858C4();
      }

      else
      {
        v58 = v98;
        (*v89)(v98, v39, v104);
      }

      v59 = v97;
      sub_22CE85914();
      v60 = v104;
      v57(v58, v104);
      v61 = v102;
      sub_22CE85954();
      v62 = sub_22CE85904();
      v57(v61, v60);
      v57(v59, v60);
      v40 = v103;
      if (v62)
      {
        v63 = v92[36];
        v64 = v92[37];
        __swift_project_boxed_opaque_existential_1(v92 + 33, v63);
        (*(v64 + 32))(*(v39 + *(v100 + 24)), *(v39 + *(v100 + 24) + 8), v63, v64);
        if (qword_281445360 != -1)
        {
          swift_once();
        }

        v65 = sub_22CE85C84();
        __swift_project_value_buffer(v65, qword_281445368);
        v66 = v90;
        sub_22CE5E660(v39, v90, type metadata accessor for Budget);
        v67 = sub_22CE85C74();
        v68 = sub_22CE85FA4();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          aBlock[0] = v70;
          *v69 = v87;
          v71 = (v66 + *(v100 + 24));
          v73 = *v71;
          v72 = v71[1];

          sub_22CE5E6C8(v66, type metadata accessor for Budget);
          v74 = sub_22CE44280(v73, v72, aBlock);
          v40 = v103;

          *(v69 + 4) = v74;
          _os_log_impl(&dword_22CE3F000, v67, v68, "Removed expired budget for %{private}s", v69, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v70);
          MEMORY[0x2318C20D0](v70, -1, -1);
          v75 = v69;
          v39 = v88;
          MEMORY[0x2318C20D0](v75, -1, -1);
        }

        else
        {

          sub_22CE5E6C8(v66, type metadata accessor for Budget);
        }

        v91 = 1;
      }

      result = sub_22CE5E6C8(v39, type metadata accessor for Budget);
      v34 = v96;
    }

    if (v38 <= v32 + 1)
    {
      v42 = v32 + 1;
    }

    else
    {
      v42 = v38;
    }

    v43 = v42 - 1;
    while (1)
    {
      v41 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v41 >= v38)
      {
        v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE58, &qword_22CE87B38);
        (*(*(v76 - 8) + 56))(v40, 1, 1, v76);
        v37 = 0;
        v32 = v43;
        goto LABEL_19;
      }

      v37 = *(v34 + 8 * v41);
      ++v32;
      if (v37)
      {
        v32 = v41;
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22CE57154(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v64 = a3;
  v7 = sub_22CE85D14();
  v62 = *(v7 - 8);
  v63 = v7;
  MEMORY[0x28223BE20](v7);
  v60 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_22CE85D34();
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22CE85974();
  v56 = *(v10 - 8);
  v57 = v10;
  MEMORY[0x28223BE20](v10);
  v55 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Budget(0);
  v13 = *(v12 - 1);
  MEMORY[0x28223BE20](v12);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEBA0, &qword_22CE86D20);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v53 - v17;
  v19 = sub_22CE85D44();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = (&v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *a1;
  v53 = a1[1];
  v54 = v23;
  v24 = *(v4 + 48);
  *v22 = v24;
  (*(v20 + 104))(v22, *MEMORY[0x277D85200], v19);
  v25 = v24;
  LOBYTE(v24) = sub_22CE85D54();
  v27 = *(v20 + 8);
  v26 = v20 + 8;
  v27(v22, v19);
  if ((v24 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_4;
  }

  v28 = *(v4 + 288);
  v29 = *(v4 + 296);
  __swift_project_boxed_opaque_existential_1((v4 + 264), v28);
  v26 = v64;
  (*(v29 + 16))(a2, v64, v28, v29);
  v30 = (*(v13 + 48))(v18, 1, v12);
  result = sub_22CE42330(v18, &qword_27D9EEBA0, &qword_22CE86D20);
  if (v30 != 1)
  {
    return result;
  }

  if (qword_281445360 != -1)
  {
    goto LABEL_12;
  }

LABEL_4:
  v32 = sub_22CE85C84();
  __swift_project_value_buffer(v32, qword_281445368);

  v33 = sub_22CE85C74();
  v34 = sub_22CE85FA4();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    aBlock[0] = v36;
    *v35 = 136446210;
    *(v35 + 4) = sub_22CE44280(a2, v26, aBlock);
    _os_log_impl(&dword_22CE3F000, v33, v34, "Adding push-to-start budget for %{public}s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x2318C20D0](v36, -1, -1);
    MEMORY[0x2318C20D0](v35, -1, -1);
  }

  v37 = v26;
  if (*(v4 + 208))
  {
    v38 = 10;
  }

  else
  {
    v38 = *(v4 + 200);
  }

  v39 = v53;

  v40 = v55;
  sub_22CE85954();
  LOBYTE(aBlock[0]) = 1;
  sub_22CE5495C();
  v42 = v41;
  sub_22CE858C4();
  v43 = v12[5];
  v44 = &v15[v12[7]];
  *v44 = v54;
  *(v44 + 1) = v39;
  v45 = &v15[v12[6]];
  *v45 = a2;
  *(v45 + 1) = v37;
  v15[v12[9]] = 0;
  v46 = *(v56 + 40);

  v46(v15, v40, v57);
  *&v15[v43] = v38;
  *&v15[v12[10]] = v42;
  *&v15[v12[11]] = v38;
  v15[v12[8]] = 1;
  v47 = *(v4 + 288);
  v48 = *(v4 + 296);
  __swift_project_boxed_opaque_existential_1((v4 + 264), v47);
  (*(v48 + 24))(v15, v47, v48);
  aBlock[4] = sub_22CE5E868;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CE42F10;
  aBlock[3] = &block_descriptor_59;
  v49 = _Block_copy(aBlock);

  v50 = v58;
  sub_22CE85D24();
  v65 = MEMORY[0x277D84F90];
  sub_22CE42614(&qword_281445338, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF20, &qword_22CE872D0);
  sub_22CE40A60(&qword_281445330, &unk_27D9EEF20, &qword_22CE872D0, MEMORY[0x277D83970]);
  v51 = v60;
  v52 = v63;
  sub_22CE86034();
  MEMORY[0x2318C1890](0, v50, v51, v49);
  _Block_release(v49);
  (*(v62 + 8))(v51, v52);
  (*(v59 + 8))(v50, v61);
  sub_22CE5E6C8(v15, type metadata accessor for Budget);
}

void sub_22CE578E8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v59 = sub_22CE85D14();
  v64 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v62 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_22CE85D34();
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v60 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEBA0, &qword_22CE86D20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v58 - v9;
  v65 = type metadata accessor for Budget(0);
  v11 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22CE85D44();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = v3[6];
  *v17 = v18;
  (*(v15 + 104))(v17, *MEMORY[0x277D85200], v14);
  v19 = v18;
  LOBYTE(v18) = sub_22CE85D54();
  (*(v15 + 8))(v17, v14);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (os_variant_has_internal_ui())
  {
    v20 = [objc_opt_self() standardUserDefaults];
    v21 = sub_22CE85DF4();
    v22 = [v20 BOOLForKey_];

    if (v22)
    {
      if (qword_281445360 != -1)
      {
        swift_once();
      }

      v23 = sub_22CE85C84();
      __swift_project_value_buffer(v23, qword_281445368);
      v24 = sub_22CE85C74();
      v25 = sub_22CE85F84();
      if (!os_log_type_enabled(v24, v25))
      {
        goto LABEL_13;
      }

      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_22CE3F000, v24, v25, "Automation flag set, not reducing budget.", v26, 2u);
      goto LABEL_12;
    }
  }

  v27 = v3[36];
  v28 = v3[37];
  __swift_project_boxed_opaque_existential_1(v3 + 33, v27);
  (*(v28 + 16))(a1, a2, v27, v28);
  v29 = v65;
  if ((*(v11 + 48))(v10, 1, v65) == 1)
  {
    sub_22CE42330(v10, &qword_27D9EEBA0, &qword_22CE86D20);
    if (qword_281445360 == -1)
    {
LABEL_10:
      v30 = sub_22CE85C84();
      __swift_project_value_buffer(v30, qword_281445368);

      v24 = sub_22CE85C74();
      v31 = sub_22CE85FA4();

      if (!os_log_type_enabled(v24, v31))
      {
LABEL_13:

        return;
      }

      v26 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      aBlock = v32;
      *v26 = 136446210;
      *(v26 + 4) = sub_22CE44280(a1, a2, &aBlock);
      _os_log_impl(&dword_22CE3F000, v24, v31, "Budget does not exist; not reducing budget for %{public}s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x2318C20D0](v32, -1, -1);
LABEL_12:
      MEMORY[0x2318C20D0](v26, -1, -1);
      goto LABEL_13;
    }

LABEL_29:
    swift_once();
    goto LABEL_10;
  }

  sub_22CE5E5F8(v10, v13, type metadata accessor for Budget);
  v33 = *(v29 + 20);
  v34 = *&v13[v33];
  v35 = v34 - 1;
  if (__OFSUB__(v34, 1))
  {
    __break(1u);
  }

  else
  {
    *&v13[v33] = v35;
    v36 = v3[36];
    v37 = v3[37];
    __swift_project_boxed_opaque_existential_1(v3 + 33, v36);
    (*(v37 + 24))(v13, v36, v37);
    if (qword_281445360 == -1)
    {
      goto LABEL_16;
    }
  }

  swift_once();
LABEL_16:
  v38 = sub_22CE85C84();
  __swift_project_value_buffer(v38, qword_281445368);

  v39 = sub_22CE85C74();
  v40 = sub_22CE85FA4();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    aBlock = v42;
    *v41 = 136446466;
    *(v41 + 4) = sub_22CE44280(a1, a2, &aBlock);
    *(v41 + 12) = 2050;
    *(v41 + 14) = v35;
    _os_log_impl(&dword_22CE3F000, v39, v40, "Reduced budget for %{public}s to: %{public}ld", v41, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x2318C20D0](v42, -1, -1);
    MEMORY[0x2318C20D0](v41, -1, -1);
  }

  v43 = v59;
  LOBYTE(aBlock) = 2;
  if (sub_22CE59D94(a1, a2, &aBlock))
  {
    v44 = swift_allocObject();
    v44[2] = v3;
    v44[3] = a1;
    v44[4] = a2;
    v71 = sub_22CE5E7CC;
    v72 = v44;
    aBlock = MEMORY[0x277D85DD0];
    v68 = 1107296256;
    v45 = &block_descriptor_83;
LABEL_24:
    v69 = sub_22CE42F10;
    v70 = v45;
    v48 = _Block_copy(&aBlock);

    v49 = v60;
    sub_22CE85D24();
    v73 = MEMORY[0x277D84F90];
    sub_22CE42614(&qword_281445338, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF20, &qword_22CE872D0);
    sub_22CE40A60(&qword_281445330, &unk_27D9EEF20, &qword_22CE872D0, MEMORY[0x277D83970]);
    v50 = v62;
    sub_22CE86034();
    MEMORY[0x2318C1890](0, v49, v50, v48);
    _Block_release(v48);
    (*(v64 + 8))(v50, v43);
    v51 = v49;
    v29 = v65;
    (*(v61 + 8))(v51, v63);

    goto LABEL_25;
  }

  LOBYTE(aBlock) = 1;
  if (sub_22CE59D94(a1, a2, &aBlock))
  {
    v46 = swift_allocObject();
    v46[2] = v3;
    v46[3] = a1;
    v46[4] = a2;
    v71 = sub_22CE5E768;
    v72 = v46;
    aBlock = MEMORY[0x277D85DD0];
    v68 = 1107296256;
    v45 = &block_descriptor_77;
    goto LABEL_24;
  }

  LOBYTE(aBlock) = 0;
  if (sub_22CE59D94(a1, a2, &aBlock))
  {
    v47 = swift_allocObject();
    v47[2] = v3;
    v47[3] = a1;
    v47[4] = a2;
    v71 = sub_22CE5E744;
    v72 = v47;
    aBlock = MEMORY[0x277D85DD0];
    v68 = 1107296256;
    v45 = &block_descriptor_71;
    goto LABEL_24;
  }

LABEL_25:
  swift_beginAccess();
  v52 = &v13[*(v29 + 28)];
  v53 = v52[1];
  aBlock = *v52;
  v68 = v53;

  v54 = sub_22CE5C1A0(&aBlock);

  if (v54)
  {
    v71 = sub_22CE5E728;
    v72 = v3;
    aBlock = MEMORY[0x277D85DD0];
    v68 = 1107296256;
    v69 = sub_22CE42F10;
    v70 = &block_descriptor_65;
    v55 = _Block_copy(&aBlock);

    v56 = v60;
    sub_22CE85D24();
    v66 = MEMORY[0x277D84F90];
    sub_22CE42614(&qword_281445338, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF20, &qword_22CE872D0);
    sub_22CE40A60(&qword_281445330, &unk_27D9EEF20, &qword_22CE872D0, MEMORY[0x277D83970]);
    v57 = v62;
    sub_22CE86034();
    MEMORY[0x2318C1890](0, v56, v57, v55);
    _Block_release(v55);
    (*(v64 + 8))(v57, v43);
    (*(v61 + 8))(v56, v63);
  }

  sub_22CE5E6C8(v13, type metadata accessor for Budget);
}

uint64_t sub_22CE584E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22CE85D14();
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22CE85D34();
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEBA0, &qword_22CE86D20);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v30 - v13;
  v15 = sub_22CE85D44();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (&v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = v3[6];
  *v18 = v19;
  (*(v16 + 104))(v18, *MEMORY[0x277D85200], v15);
  v20 = v19;
  LOBYTE(v19) = sub_22CE85D54();
  result = (*(v16 + 8))(v18, v15);
  if (v19)
  {
    v22 = v3[36];
    v23 = v3[37];
    __swift_project_boxed_opaque_existential_1(v3 + 33, v22);
    (*(v23 + 16))(a1, a2, v22, v23);
    v24 = type metadata accessor for Budget(0);
    v25 = (*(*(v24 - 8) + 48))(v14, 1, v24);
    result = sub_22CE42330(v14, &qword_27D9EEBA0, &qword_22CE86D20);
    if (v25 != 1)
    {
      v26 = v3[36];
      v27 = v3[37];
      __swift_project_boxed_opaque_existential_1(v3 + 33, v26);
      (*(v27 + 32))(a1, a2, v26, v27);
      aBlock[4] = sub_22CE5E868;
      aBlock[5] = v3;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_22CE42F10;
      aBlock[3] = &block_descriptor_62;
      v28 = _Block_copy(aBlock);

      sub_22CE85D24();
      v35 = MEMORY[0x277D84F90];
      sub_22CE42614(&qword_281445338, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF20, &qword_22CE872D0);
      sub_22CE40A60(&qword_281445330, &unk_27D9EEF20, &qword_22CE872D0, MEMORY[0x277D83970]);
      v29 = v34;
      sub_22CE86034();
      MEMORY[0x2318C1890](0, v11, v8, v28);
      _Block_release(v28);
      (*(v33 + 8))(v8, v29);
      (*(v31 + 8))(v11, v32);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CE58994(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v80 = a3;
  v81 = a2;
  v6 = sub_22CE85D14();
  v74 = *(v6 - 8);
  v75 = v6;
  MEMORY[0x28223BE20](v6);
  v72 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_22CE85D34();
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v70 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_22CE85974();
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Budget(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v69 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEBA0, &qword_22CE86D20);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v62 - v14;
  v16 = sub_22CE85D44();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = (&v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = a1[1];
  v65 = *a1;
  v64 = v20;
  v21 = v3[6];
  *v19 = v21;
  v22 = *(v17 + 104);
  v78 = *MEMORY[0x277D85200];
  v77 = v22;
  v22(v19);
  v76 = v21;
  v23 = sub_22CE85D54();
  v24 = *(v17 + 8);
  v79 = v16;
  v24(v19, v16);
  if ((v23 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_4;
  }

  v63 = v24;
  v25 = v4[36];
  v26 = v4[37];
  __swift_project_boxed_opaque_existential_1(v4 + 33, v25);
  (*(v26 + 16))(v81, v80, v25, v26);
  LODWORD(v25) = (*(v11 + 48))(v15, 1, v10);
  result = sub_22CE42330(v15, &qword_27D9EEBA0, &qword_22CE86D20);
  if (v25 != 1)
  {
    return result;
  }

  v62 = v10;
  if (qword_281445360 != -1)
  {
    goto LABEL_10;
  }

LABEL_4:
  v28 = sub_22CE85C84();
  __swift_project_value_buffer(v28, qword_281445368);
  v29 = v80;

  v30 = sub_22CE85C74();
  v31 = sub_22CE85FA4();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    aBlock = v33;
    *v32 = 136446210;
    *(v32 + 4) = sub_22CE44280(v81, v29, &aBlock);
    _os_log_impl(&dword_22CE3F000, v30, v31, "Adding activity push budget for %{public}s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x2318C20D0](v33, -1, -1);
    MEMORY[0x2318C20D0](v32, -1, -1);
  }

  v35 = v76;
  v34 = v77;
  *v19 = v76;
  v36 = v79;
  v34(v19, v78, v79);
  v37 = v35;
  LOBYTE(v35) = sub_22CE85D54();
  result = v63(v19, v36);
  if (v35)
  {
    v38 = v4[11];
    v39 = v4[12];
    __swift_project_boxed_opaque_existential_1(v4 + 8, v38);
    v40 = v65;
    v41 = v64;
    aBlock = v65;
    v84 = v64;
    (*(v39 + 16))(&v82, &aBlock, v38, v39);
    v42 = v29;
    v43 = v82;

    v44 = v66;
    sub_22CE85954();
    LOBYTE(aBlock) = v43;
    sub_22CE54A30();
    v79 = v45;
    LOBYTE(aBlock) = v43;
    sub_22CE5495C();
    v47 = v46;
    LOBYTE(aBlock) = v43;
    sub_22CE54A30();
    v49 = v48;
    v50 = v69;
    sub_22CE858C4();
    v51 = v62;
    v52 = v62[5];
    v53 = (v50 + v62[7]);
    *v53 = v40;
    v53[1] = v41;
    v54 = (v50 + v51[6]);
    *v54 = v81;
    v54[1] = v42;
    *(v50 + v51[9]) = 1;
    v55 = *(v67 + 40);

    v55(v50, v44, v68);
    *(v50 + v52) = v79;
    *(v50 + v51[10]) = v47;
    *(v50 + v51[11]) = v49;
    *(v50 + v51[8]) = v43;
    v56 = v4[36];
    v57 = v4[37];
    __swift_project_boxed_opaque_existential_1(v4 + 33, v56);
    (*(v57 + 24))(v50, v56, v57);
    v87 = sub_22CE5E868;
    v88 = v4;
    aBlock = MEMORY[0x277D85DD0];
    v84 = 1107296256;
    v85 = sub_22CE42F10;
    v86 = &block_descriptor_86;
    v58 = _Block_copy(&aBlock);

    v59 = v70;
    sub_22CE85D24();
    v82 = MEMORY[0x277D84F90];
    sub_22CE42614(&qword_281445338, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF20, &qword_22CE872D0);
    sub_22CE40A60(&qword_281445330, &unk_27D9EEF20, &qword_22CE872D0, MEMORY[0x277D83970]);
    v60 = v72;
    v61 = v75;
    sub_22CE86034();
    MEMORY[0x2318C1890](0, v59, v60, v58);
    _Block_release(v58);
    (*(v74 + 8))(v60, v61);
    (*(v71 + 8))(v59, v73);
    sub_22CE5E6C8(v50, type metadata accessor for Budget);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CE59234()
{
  v1 = v0;
  v2 = sub_22CE85C04();
  v46 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v47 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22CE85C14();
  v5 = *(v4 - 8);
  v49 = v4;
  v50 = v5;
  MEMORY[0x28223BE20](v4);
  v48 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22CE85974();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v45 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v39 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v39 - v14;
  v16 = sub_22CE85D44();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = (&v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = v1[6];
  *v19 = v20;
  (*(v17 + 104))(v19, *MEMORY[0x277D85200], v16);
  v21 = v20;
  LOBYTE(v20) = sub_22CE85D54();
  (*(v17 + 8))(v19, v16);
  if ((v20 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_7;
  }

  swift_beginAccess();
  sub_22CE4DD94((v1 + 27), &v52, &unk_27D9EEF30, &unk_22CE87948);
  if (*(&v53 + 1))
  {
    sub_22CE40D28(&v52, v51);
    sub_22CE42330(&v52, &unk_27D9EEF30, &unk_22CE87948);
    __swift_project_boxed_opaque_existential_1(v51, v51[3]);
    sub_22CE85C94();
    __swift_destroy_boxed_opaque_existential_1(v51);
  }

  else
  {
    sub_22CE42330(&v52, &unk_27D9EEF30, &unk_22CE87948);
  }

  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  swift_beginAccess();
  sub_22CE423C0(&v52, (v1 + 27));
  swift_endAccess();
  sub_22CE5B618(v15);
  sub_22CE858D4();
  v22 = sub_22CE85904();
  v19 = v8;
  v23 = v8[1];
  v23(v13, v7);
  if ((v22 & 1) == 0)
  {
    return (v23)(v15, v7);
  }

  v44 = v23;
  if (qword_281445360 != -1)
  {
    goto LABEL_13;
  }

LABEL_7:
  v24 = sub_22CE85C84();
  __swift_project_value_buffer(v24, qword_281445368);
  v25 = v19[2];
  v26 = v45;
  v43 = v19 + 2;
  v42 = v25;
  v25(v45, v15, v7);
  v27 = sub_22CE85C74();
  v28 = sub_22CE85FA4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v39 = v29;
    v40 = swift_slowAlloc();
    *&v52 = v40;
    *v29 = 136446210;
    sub_22CE42614(&qword_2814452A0, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v30 = sub_22CE86174();
    v41 = v2;
    v32 = v31;
    v44(v26, v7);
    v33 = sub_22CE44280(v30, v32, &v52);
    v2 = v41;

    v34 = v39;
    *(v39 + 1) = v33;
    v35 = v34;
    _os_log_impl(&dword_22CE3F000, v27, v28, "Scheduling wake to re-evaluate push subscription budgets at %{public}s", v34, 0xCu);
    v36 = v40;
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x2318C20D0](v36, -1, -1);
    MEMORY[0x2318C20D0](v35, -1, -1);
  }

  else
  {

    v44(v26, v7);
  }

  v42(v13, v15, v7);
  (*(v46 + 104))(v47, *MEMORY[0x277D4D510], v2);
  v38 = v48;
  sub_22CE85BF4();
  __swift_project_boxed_opaque_existential_1(v1 + 13, v1[16]);
  swift_allocObject();
  swift_weakInit();

  sub_22CE85C24();

  (*(v50 + 8))(v38, v49);
  v44(v15, v7);

  swift_beginAccess();
  sub_22CE423C0(&v52, (v1 + 27));
  return swift_endAccess();
}

uint64_t sub_22CE59A58@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEBA0, &qword_22CE86D20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for Budget(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22CE85D44();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[6];
  *v15 = v16;
  (*(v13 + 104))(v15, *MEMORY[0x277D85200], v12);
  v17 = v16;
  LOBYTE(v16) = sub_22CE85D54();
  result = (*(v13 + 8))(v15, v12);
  if (v16)
  {
    v19 = a1[36];
    v20 = a1[37];
    __swift_project_boxed_opaque_existential_1(a1 + 33, v19);
    (*(v20 + 16))(v24, v25, v19, v20);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      result = sub_22CE42330(v7, &qword_27D9EEBA0, &qword_22CE86D20);
      v21 = 0;
    }

    else
    {
      sub_22CE5E5F8(v7, v11, type metadata accessor for Budget);
      v22 = *&v11[*(v8 + 20)];
      result = sub_22CE5E6C8(v11, type metadata accessor for Budget);
      v21 = v22 < 1;
    }

    *v26 = v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CE59D94(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = v3;
  v30 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEBA0, &qword_22CE86D20);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v28[-v8];
  v10 = type metadata accessor for Budget(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_22CE85D44();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v28[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = *a3;
  v18 = v4[6];
  *v17 = v18;
  (*(v15 + 104))(v17, *MEMORY[0x277D85200], v14);
  v19 = v18;
  LOBYTE(v18) = sub_22CE85D54();
  result = (*(v15 + 8))(v17, v14);
  if ((v18 & 1) == 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v21 = v4[36];
  v22 = v4[37];
  __swift_project_boxed_opaque_existential_1(v4 + 33, v21);
  (*(v22 + 16))(a1, v30, v21, v22);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_22CE42330(v9, &qword_27D9EEBA0, &qword_22CE86D20);
    return 0;
  }

  result = sub_22CE5E5F8(v9, v13, type metadata accessor for Budget);
  v23 = *&v13[*(v10 + 44)];
  v24 = *&v13[*(v10 + 20)];
  v25 = v23 - v24;
  if (__OFSUB__(v23, v24))
  {
    goto LABEL_8;
  }

  v31 = v29;
  sub_22CE54A30();
  v27 = v26;
  sub_22CE5E6C8(v13, type metadata accessor for Budget);
  return v25 >= v27;
}

uint64_t sub_22CE5A0AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE18, &unk_22CE87900);
  sub_22CE85FE4();
  return v1;
}

uint64_t sub_22CE5A310@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, unsigned __int8 *a5@<X8>)
{
  v9 = a1[21];
  v10 = a1[22];
  __swift_project_boxed_opaque_existential_1(a1 + 18, v9);
  (*(v10 + 8))(v16, v9, v10);
  sub_22CE56590();
  v14 = a2;
  v15 = a3;
  v17 = a4;
  sub_22CE5A438(&v14, &v17, v16, &v18);
  v11 = v18;
  v14 = a2;
  v15 = a3;
  v17 = a4;
  sub_22CE5ACF0(&v14, &v17, v16, &v18);
  result = __swift_destroy_boxed_opaque_existential_1(v16);
  v13 = v18;
  if (v11 != 3)
  {
    if (v18 > 1u)
    {
      if (v18 == 2 && v11 < 2)
      {
        goto LABEL_12;
      }
    }

    else if (v18 && !v11)
    {
      goto LABEL_12;
    }

    v13 = v11;
    goto LABEL_12;
  }

  if (v18 == 3)
  {
    v13 = a4;
  }

LABEL_12:
  *a5 = v13;
  return result;
}

uint64_t sub_22CE5A438@<X0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v86 = a3;
  v8 = type metadata accessor for Budget(0);
  v101 = *(v8 - 8);
  v102 = v8;
  MEMORY[0x28223BE20](v8);
  v85 = &v82[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE58, &qword_22CE87B38);
  v91 = *(v103 - 8);
  v10 = MEMORY[0x28223BE20](v103);
  v84 = &v82[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v10);
  v93 = &v82[-v13];
  v14 = MEMORY[0x28223BE20](v12);
  v99 = &v82[-v15];
  v16 = MEMORY[0x28223BE20](v14);
  v95 = &v82[-v17];
  MEMORY[0x28223BE20](v16);
  v98 = &v82[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE60, &qword_22CE87B40);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v89 = &v82[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v88 = &v82[-v22];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEBA0, &qword_22CE86D20);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v90 = &v82[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v24);
  v92 = &v82[-v26];
  v27 = sub_22CE85D44();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v82[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = a1[1];
  v97 = *a1;
  v94 = v31;
  v83 = *a2;
  v32 = v4[6];
  *v30 = v32;
  (*(v28 + 104))(v30, *MEMORY[0x277D85200], v27);
  v33 = v32;
  LOBYTE(a2) = sub_22CE85D54();
  result = (*(v28 + 8))(v30, v27);
  if (a2)
  {
    v87 = a4;
    v35 = v4[36];
    v36 = v4[37];
    __swift_project_boxed_opaque_existential_1(v4 + 33, v35);
    v37 = (*(v36 + 8))(v35, v36);
    v38 = v37;
    v39 = v37 + 64;
    v40 = 1 << *(v37 + 32);
    v41 = -1;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    v42 = v41 & *(v37 + 64);
    v43 = (v40 + 63) >> 6;

    v44 = 0;
    v45 = &qword_27D9EEE58;
    v46 = v95;
    v96 = v39;
    v100 = result;
    while (v42)
    {
      v48 = v45;
LABEL_13:
      v50 = __clz(__rbit64(v42)) | (v44 << 6);
      v51 = (*(v38 + 48) + 16 * v50);
      v52 = *v51;
      v53 = v51[1];
      v54 = v103;
      v55 = v98;
      sub_22CE5E660(*(v38 + 56) + *(v101 + 72) * v50, &v98[*(v103 + 48)], type metadata accessor for Budget);
      *v55 = v52;
      v55[1] = v53;
      sub_22CE44874(v55, v46, v48, &qword_22CE87B38);
      v56 = v99;
      sub_22CE4DD94(v46, v99, v48, &qword_22CE87B38);

      v57 = &v56[*(v54 + 48)];
      v45 = v48;
      LOBYTE(v52) = *(v57 + *(v102 + 36));
      sub_22CE5E6C8(v57, type metadata accessor for Budget);
      if ((v52 & 1) == 0)
      {
        v58 = v93;
        sub_22CE4DD94(v46, v93, v48, &qword_22CE87B38);

        v59 = &v58[*(v103 + 48)];
        v60 = (v59 + *(v102 + 28));
        v61 = *v60;
        v62 = v60[1];

        sub_22CE5E6C8(v59, type metadata accessor for Budget);
        if (v61 == v97 && v62 == v94)
        {

          v63 = v95;
          goto LABEL_25;
        }

        v47 = sub_22CE86194();

        v46 = v95;
        if (v47)
        {

          v63 = v46;
LABEL_25:
          v65 = v88;
          sub_22CE44874(v63, v88, &qword_27D9EEE58, &qword_22CE87B38);
          v64 = v91;
          v66 = v103;
          (*(v91 + 56))(v65, 0, 1, v103);
          v67 = v87;
          v69 = v89;
          v68 = v90;
LABEL_18:

          sub_22CE44874(v65, v69, &qword_27D9EEE60, &qword_22CE87B40);
          v70 = 1;
          v71 = (*(v64 + 48))(v69, 1, v66);
          v72 = v92;
          if (v71 != 1)
          {
            v73 = v84;
            sub_22CE44874(v69, v84, &qword_27D9EEE58, &qword_22CE87B38);

            sub_22CE5E5F8(&v73[*(v66 + 48)], v72, type metadata accessor for Budget);
            v70 = 0;
          }

          v74 = v101;
          v75 = v70;
          v76 = v102;
          (*(v101 + 56))(v72, v75, 1, v102);
          sub_22CE4DD94(v72, v68, &qword_27D9EEBA0, &qword_22CE86D20);
          if ((*(v74 + 48))(v68, 1, v76) == 1)
          {
            sub_22CE42330(v72, &qword_27D9EEBA0, &qword_22CE86D20);
            result = sub_22CE42330(v68, &qword_27D9EEBA0, &qword_22CE86D20);
            v77 = 3;
          }

          else
          {
            v78 = v68;
            v79 = v85;
            sub_22CE5E5F8(v78, v85, type metadata accessor for Budget);
            v80 = v86[3];
            v81 = v86[4];
            __swift_project_boxed_opaque_existential_1(v86, v80);
            v104 = v83;
            (*(v81 + 8))(&v105, &v104, v79, v80, v81);
            sub_22CE5E6C8(v79, type metadata accessor for Budget);
            result = sub_22CE42330(v72, &qword_27D9EEBA0, &qword_22CE86D20);
            v77 = v105;
          }

          *v67 = v77;
          return result;
        }
      }

      v42 &= v42 - 1;
      result = sub_22CE42330(v46, v48, &qword_22CE87B38);
      v38 = v100;
      v39 = v96;
    }

    while (1)
    {
      v49 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      if (v49 >= v43)
      {

        v64 = v91;
        v65 = v88;
        v66 = v103;
        (*(v91 + 56))(v88, 1, 1, v103);
        v67 = v87;
        v69 = v89;
        v68 = v90;
        goto LABEL_18;
      }

      v42 = *(v39 + 8 * v49);
      ++v44;
      if (v42)
      {
        v48 = v45;
        v44 = v49;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22CE5ACF0@<X0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v98 = a4;
  v8 = sub_22CE85974();
  v97 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v96 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE58, &qword_22CE87B38);
  v10 = MEMORY[0x28223BE20](v107);
  v106 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v105 = (&v88 - v13);
  MEMORY[0x28223BE20](v12);
  v104 = &v88 - v14;
  v99 = type metadata accessor for Budget(0);
  v112 = *(v99 - 8);
  v15 = MEMORY[0x28223BE20](v99);
  v95 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v108 = &v88 - v18;
  MEMORY[0x28223BE20](v17);
  v103 = &v88 - v19;
  v20 = sub_22CE85D44();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = (&v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *a1;
  v25 = a1[1];
  v26 = v4;
  v94 = *a2;
  v27 = *(v4 + 48);
  *v23 = v27;
  (*(v21 + 104))(v23, *MEMORY[0x277D85200], v20);
  v28 = v27;
  LOBYTE(v27) = sub_22CE85D54();
  result = (*(v21 + 8))(v23, v20);
  if ((v27 & 1) == 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v30 = v26;
  v31 = *(v26 + 288);
  v32 = *(v26 + 296);
  v93 = v30;
  __swift_project_boxed_opaque_existential_1((v30 + 264), v31);
  v33 = (*(v32 + 8))(v31, v32);

  v34 = sub_22CE5E42C(v33, v24, v25);

  v35 = *(v34 + 16);
  v92 = v24;
  v91 = v25;
  if (v35)
  {
    v89 = v8;
    v90 = a3;
    v115[0] = MEMORY[0x277D84F90];
    sub_22CE4BB84(0, v35, 0);
    v36 = v115[0];
    v113 = v34 + 64;
    result = sub_22CE86044();
    v37 = result;
    v38 = 0;
    v100 = v34 + 72;
    v101 = v35;
    v39 = v112;
    v40 = v34;
    v102 = v34;
    while ((v37 & 0x8000000000000000) == 0 && v37 < 1 << *(v40 + 32))
    {
      v42 = v37 >> 6;
      if ((*(v113 + 8 * (v37 >> 6)) & (1 << v37)) == 0)
      {
        goto LABEL_30;
      }

      v43 = *(v40 + 36);
      v109 = v38;
      v110 = v43;
      v44 = v39;
      v112 = v36;
      v45 = v107;
      v46 = *(v107 + 48);
      v47 = *(v40 + 56);
      v48 = (*(v40 + 48) + 16 * v37);
      v50 = *v48;
      v49 = v48[1];
      v111 = *(v44 + 72);
      v51 = v104;
      sub_22CE5E660(v47 + v111 * v37, &v104[v46], type metadata accessor for Budget);
      v52 = v105;
      *v105 = v50;
      v52[1] = v49;
      sub_22CE5E5F8(&v51[v46], v52 + *(v45 + 48), type metadata accessor for Budget);
      v53 = v52;
      v54 = v106;
      sub_22CE44874(v53, v106, &qword_27D9EEE58, &qword_22CE87B38);

      v55 = *(v45 + 48);
      v36 = v112;
      v56 = v103;
      sub_22CE5E5F8(v54 + v55, v103, type metadata accessor for Budget);
      v115[0] = v36;
      v58 = *(v36 + 16);
      v57 = *(v36 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_22CE4BB84((v57 > 1), v58 + 1, 1);
        v36 = v115[0];
      }

      *(v36 + 16) = v58 + 1;
      result = sub_22CE5E5F8(v56, v36 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + v58 * v111, type metadata accessor for Budget);
      v40 = v102;
      v41 = 1 << *(v102 + 32);
      if (v37 >= v41)
      {
        goto LABEL_31;
      }

      v59 = *(v113 + 8 * v42);
      if ((v59 & (1 << v37)) == 0)
      {
        goto LABEL_32;
      }

      if (v110 != *(v102 + 36))
      {
        goto LABEL_33;
      }

      v39 = v44;
      v60 = v59 & (-2 << (v37 & 0x3F));
      if (v60)
      {
        v41 = __clz(__rbit64(v60)) | v37 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v61 = v42 << 6;
        v62 = v42 + 1;
        v63 = (v100 + 8 * v42);
        while (v62 < (v41 + 63) >> 6)
        {
          v65 = *v63++;
          v64 = v65;
          v61 += 64;
          ++v62;
          if (v65)
          {
            result = sub_22CE4D50C(v37, v110, 0);
            v41 = __clz(__rbit64(v64)) + v61;
            goto LABEL_5;
          }
        }

        result = sub_22CE4D50C(v37, v110, 0);
      }

LABEL_5:
      v38 = v109 + 1;
      v37 = v41;
      if (v109 + 1 == v101)
      {

        a3 = v90;
        v8 = v89;
        v66 = *(v36 + 16);
        if (!v66)
        {
          goto LABEL_26;
        }

        goto LABEL_21;
      }
    }

    goto LABEL_29;
  }

  v36 = MEMORY[0x277D84F90];
  v39 = v112;
  v66 = *(MEMORY[0x277D84F90] + 16);
  if (v66)
  {
LABEL_21:
    v67 = 0;
    v68 = *(v99 + 20);
    v69 = v36 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
    v70 = *(v39 + 72);
    v71 = v108;
    while (1)
    {
      sub_22CE5E660(v69, v71, type metadata accessor for Budget);
      v72 = *(v71 + v68);
      result = sub_22CE5E6C8(v71, type metadata accessor for Budget);
      v73 = __OFADD__(v67, v72);
      v67 += v72;
      if (v73)
      {
        break;
      }

      v69 += v70;
      if (!--v66)
      {

        v74 = v91;

        v75 = v96;
        sub_22CE85954();
        LOBYTE(v115[0]) = 1;
        sub_22CE5495C();
        v77 = v76;
        LOBYTE(v115[0]) = 1;
        sub_22CE54A30();
        v79 = v78;
        v80 = v95;
        sub_22CE858C4();
        v81 = v99;
        v82 = *(v99 + 20);
        v83 = (v80 + *(v99 + 28));
        *v83 = v92;
        v83[1] = v74;
        v84 = (v80 + v81[6]);
        *v84 = 0x7461676572676761;
        v84[1] = 0xEF74656764754265;
        *(v80 + v81[9]) = 1;
        (*(v97 + 40))(v80, v75, v8);
        *(v80 + v82) = v67;
        *(v80 + v81[10]) = v77;
        *(v80 + v81[11]) = v79;
        *(v80 + v81[8]) = 1;
        v85 = a3[3];
        v86 = a3[4];
        __swift_project_boxed_opaque_existential_1(a3, v85);
        v114 = v94;
        (*(v86 + 8))(v115, &v114, v80, v85, v86);
        result = sub_22CE5E6C8(v80, type metadata accessor for Budget);
        v87 = v115[0];
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_26:

  v87 = 3;
LABEL_27:
  *v98 = v87;
  return result;
}

uint64_t sub_22CE5B618@<X0>(char *a1@<X8>)
{
  v80 = a1;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE58, &qword_22CE87B38);
  v2 = MEMORY[0x28223BE20](v99);
  v82 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v85 = &v80 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v93 = &v80 - v7;
  MEMORY[0x28223BE20](v6);
  v100 = &v80 - v8;
  v9 = sub_22CE85974();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v81 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v80 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v84 = &v80 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v97 = &v80 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v92 = &v80 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v91 = &v80 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v90 = &v80 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v80 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v80 - v29;
  v31 = sub_22CE85D44();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = (&v80 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = v1[6];
  *v34 = v35;
  (*(v32 + 104))(v34, *MEMORY[0x277D85200], v31);
  v36 = v35;
  LOBYTE(v35) = sub_22CE85D54();
  result = (*(v32 + 8))(v34, v31);
  if (v35)
  {
    v83 = v15;
    v38 = v1[36];
    v39 = v1[37];
    __swift_project_boxed_opaque_existential_1(v1 + 33, v38);
    v40 = (*(v39 + 8))(v38, v39);
    sub_22CE858D4();
    v42 = *(v10 + 16);
    v41 = v10 + 16;
    v86 = v42;
    v42(v28, v30, v9);
    v43 = v40 + 64;
    v44 = 1 << *(v40 + 32);
    v45 = -1;
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    v46 = v45 & *(v40 + 64);
    v47 = (v44 + 63) >> 6;
    v48 = (v41 - 8);
    v87 = v41;
    v94 = (v41 + 16);
    v95 = v40;

    v49 = 0;
    v96 = v28;
    v88 = v47;
    v89 = v30;
    while (v46)
    {
LABEL_12:
      v53 = __clz(__rbit64(v46)) | (v49 << 6);
      v54 = *(v95 + 56);
      v55 = (*(v95 + 48) + 16 * v53);
      v57 = *v55;
      v56 = v55[1];
      v58 = type metadata accessor for Budget(0);
      v59 = v54 + *(*(v58 - 8) + 72) * v53;
      v60 = v99;
      v61 = v100;
      sub_22CE5E660(v59, v100 + *(v99 + 48), type metadata accessor for Budget);
      *v61 = v57;
      *(v61 + 8) = v56;
      v62 = v93;
      sub_22CE4DD94(v61, v93, &qword_27D9EEE58, &qword_22CE87B38);

      v63 = v62 + *(v60 + 48);
      v64 = v97;
      sub_22CE85954();
      LOBYTE(v61) = sub_22CE858F4();
      v65 = *v48;
      (*v48)(v64, v9);
      if (v61)
      {
        v66 = v92;
        sub_22CE858C4();
      }

      else
      {
        v66 = v92;
        v86(v92, v63, v9);
      }

      v98 = v58;
      v67 = v91;
      sub_22CE85914();
      v65(v66, v9);
      sub_22CE5E6C8(v63, type metadata accessor for Budget);
      sub_22CE858C4();
      v68 = sub_22CE858F4();
      v65(v64, v9);
      v65(v67, v9);
      if (v68)
      {
        v69 = v85;
        sub_22CE4DD94(v100, v85, &qword_27D9EEE58, &qword_22CE87B38);

        v70 = v69 + *(v99 + 48);
        sub_22CE85954();
        v71 = sub_22CE858F4();
        v65(v64, v9);
        v30 = v89;
        v72 = v83;
        if (v71)
        {
          sub_22CE858C4();
        }

        else
        {
          v86(v83, v70, v9);
        }

        v73 = v84;
        sub_22CE85914();
        v65(v72, v9);
        sub_22CE5E6C8(v70, type metadata accessor for Budget);
        v28 = v96;
        v74 = sub_22CE85904();
        v65(v73, v9);
        if (v74)
        {
          v75 = v82;
          sub_22CE4DD94(v100, v82, &qword_27D9EEE58, &qword_22CE87B38);

          v76 = v75 + *(v99 + 48);
          v77 = v97;
          sub_22CE85954();
          v78 = sub_22CE858F4();
          v65(v77, v9);
          v79 = v81;
          if (v78)
          {
            sub_22CE858C4();
          }

          else
          {
            v86(v81, v76, v9);
          }

          v51 = v90;
          sub_22CE85914();
          v65(v79, v9);
          sub_22CE42330(v100, &qword_27D9EEE58, &qword_22CE87B38);
          v28 = v96;
          v65(v96, v9);
          sub_22CE5E6C8(v76, type metadata accessor for Budget);
          v50 = *v94;
        }

        else
        {
          sub_22CE42330(v100, &qword_27D9EEE58, &qword_22CE87B38);
          v50 = *v94;
          v51 = v90;
          (*v94)(v90, v28, v9);
        }
      }

      else
      {
        sub_22CE42330(v100, &qword_27D9EEE58, &qword_22CE87B38);
        v50 = *v94;
        v51 = v90;
        v28 = v96;
        (*v94)(v90, v96, v9);
        v30 = v89;
      }

      v46 &= v46 - 1;
      result = (v50)(v28, v51, v9);
      v47 = v88;
    }

    while (1)
    {
      v52 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v52 >= v47)
      {
        (*v48)(v30, v9);

        (*v94)(v80, v28, v9);
      }

      v46 = *(v43 + 8 * v52);
      ++v49;
      if (v46)
      {
        v49 = v52;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22CE5BF40(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v3 = sub_22CE85C84();
    __swift_project_value_buffer(v3, qword_281445368);
    v4 = sub_22CE85C74();
    v5 = sub_22CE85FA4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_22CE3F000, v4, v5, "Waking to re-evaluate push subscription budgets", v6, 2u);
      MEMORY[0x2318C20D0](v6, -1, -1);
    }

    v7 = *(v2 + 48);
    v8 = swift_allocObject();
    *(v8 + 16) = sub_22CE5E7F8;
    *(v8 + 24) = v2;
    aBlock[4] = sub_22CE5E888;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22CE50228;
    aBlock[3] = &block_descriptor_94;
    v9 = _Block_copy(aBlock);

    dispatch_sync(v7, v9);

    _Block_release(v9);
    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if (v7)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_22CE5C158(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  sub_22CE85CB4();
}

uint64_t sub_22CE5C1A0(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_22CE85D44();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  v8 = a1[1];
  v10 = *(v2 + 48);
  *v7 = v10;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v11 = v10;
  v12 = sub_22CE85D54();
  (*(v5 + 8))(v7, v4);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_39;
  }

  v14 = 0;
  v15 = 0;
  v49 = "; activityIdentifier: ";
  *&v13 = 136380931;
  v47 = v13;
  *&v13 = 136381187;
  v46 = v13;
  v50 = v9;
  v48 = v2;
  while (1)
  {
    v12 = *(&unk_2840174C8 + v15 + 32);
    v16 = v14;
    v53 = v9;
    v54 = v8;
    LOBYTE(v52) = v12;
    v17 = sub_22CE5C85C(&v53, &v52);
    if ((v18 & 1) == 0)
    {
      break;
    }

    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v19 = sub_22CE85C84();
    __swift_project_value_buffer(v19, qword_281445368);

    v20 = sub_22CE85C74();
    v21 = sub_22CE85FA4();

    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_4;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v52 = v23;
    v53 = v9;
    *v22 = v47;
    v54 = v8;

    MEMORY[0x2318C1750](0xD000000000000017, v49 | 0x8000000000000000);
    v24 = sub_22CE44280(v53, v54, &v52);

    *(v22 + 4) = v24;
    *(v22 + 12) = 2082;
    if (v12)
    {
      v25 = 0x7974697669746361;
    }

    else
    {
      v25 = 0x74536F5468737570;
    }

    if (v12)
    {
      v26 = 0xE800000000000000;
    }

    else
    {
      v26 = 0xEB00000000747261;
    }

    v27 = sub_22CE44280(v25, v26, &v52);

    *(v22 + 14) = v27;
    v9 = v50;
    _os_log_impl(&dword_22CE3F000, v20, v21, "Topic %{private}s has not used any budget for %{public}s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318C20D0](v23, -1, -1);
LABEL_3:
    MEMORY[0x2318C20D0]();
LABEL_4:

    v14 = 1;
    v15 = 1u;
    if (v16)
    {
      return 0;
    }
  }

  if (v17 > 0)
  {
    v51 = v17;
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v28 = sub_22CE85C84();
    __swift_project_value_buffer(v28, qword_281445368);

    v20 = sub_22CE85C74();
    v29 = sub_22CE85FA4();

    if (!os_log_type_enabled(v20, v29))
    {
      goto LABEL_4;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v52 = v31;
    v53 = v9;
    *v30 = v46;
    v54 = v8;

    MEMORY[0x2318C1750](0xD000000000000017, v49 | 0x8000000000000000);
    v32 = sub_22CE44280(v53, v54, &v52);

    *(v30 + 4) = v32;
    *(v30 + 12) = 2082;
    if (v12)
    {
      v33 = 0x7974697669746361;
    }

    else
    {
      v33 = 0x74536F5468737570;
    }

    if (v12)
    {
      v34 = 0xE800000000000000;
    }

    else
    {
      v34 = 0xEB00000000747261;
    }

    v35 = sub_22CE44280(v33, v34, &v52);

    *(v30 + 14) = v35;
    *(v30 + 22) = 2050;
    v9 = v50;
    *(v30 + 24) = v51;
    _os_log_impl(&dword_22CE3F000, v20, v29, "Topic %{private}s has remaining budget for %{public}s of %{public}ld", v30, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2318C20D0](v31, -1, -1);
    goto LABEL_3;
  }

  if (qword_281445360 != -1)
  {
LABEL_39:
    swift_once();
  }

  v37 = sub_22CE85C84();
  __swift_project_value_buffer(v37, qword_281445368);

  v38 = sub_22CE85C74();
  v39 = sub_22CE85FA4();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v40 = v47;
    v52 = v41;
    v53 = v50;
    v54 = v8;

    MEMORY[0x2318C1750](0xD000000000000017, v49 | 0x8000000000000000);
    v42 = sub_22CE44280(v53, v54, &v52);

    *(v40 + 4) = v42;
    *(v40 + 12) = 2082;
    if (v12)
    {
      v43 = 0x7974697669746361;
    }

    else
    {
      v43 = 0x74536F5468737570;
    }

    if (v12)
    {
      v44 = 0xE800000000000000;
    }

    else
    {
      v44 = 0xEB00000000747261;
    }

    v45 = sub_22CE44280(v43, v44, &v52);

    *(v40 + 14) = v45;
    _os_log_impl(&dword_22CE3F000, v38, v39, "Topic %{private}s is out of budget because %{public}s is exhausted", v40, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318C20D0](v41, -1, -1);
    MEMORY[0x2318C20D0](v40, -1, -1);
  }

  return 1;
}

uint64_t sub_22CE5C85C(uint64_t *a1, unsigned __int8 *a2)
{
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE58, &qword_22CE87B38);
  v5 = MEMORY[0x28223BE20](v67);
  v59 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v65 = &v56 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = (&v56 - v9);
  v11 = sub_22CE85D44();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *a1;
  v60 = a1[1];
  v61 = v15;
  v64 = *a2;
  v16 = v2[6];
  *v14 = v16;
  (*(v12 + 104))(v14, *MEMORY[0x277D85200], v11);
  v17 = v16;
  LOBYTE(a1) = sub_22CE85D54();
  result = (*(v12 + 8))(v14, v11);
  if (a1)
  {
    v19 = v2[36];
    v20 = v2[37];
    __swift_project_boxed_opaque_existential_1(v2 + 33, v19);
    v21 = (*(v20 + 8))(v19, v20);
    v23 = v21 + 64;
    v22 = *(v21 + 64);
    v24 = *(v21 + 32);
    v58 = 1;
    v25 = 1 << v24;
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & v22;
    v28 = (v25 + 63) >> 6;
    v66 = v21;

    v57 = 0;
    v29 = 0;
    v30 = &qword_27D9EEE58;
    v62 = v28;
    v63 = v23;
    if (v27)
    {
      while (1)
      {
        v31 = v30;
LABEL_10:
        v33 = __clz(__rbit64(v27));
        v27 &= v27 - 1;
        v34 = v33 | (v29 << 6);
        v35 = *(v66 + 56);
        v36 = (*(v66 + 48) + 16 * v34);
        v38 = *v36;
        v37 = v36[1];
        v39 = type metadata accessor for Budget(0);
        v40 = v35 + *(*(v39 - 1) + 72) * v34;
        v41 = v67;
        sub_22CE5E660(v40, v10 + *(v67 + 48), type metadata accessor for Budget);
        *v10 = v38;
        v10[1] = v37;
        v42 = v65;
        sub_22CE4DD94(v10, v65, v31, &qword_22CE87B38);

        v43 = v42 + *(v41 + 48);
        v30 = v31;
        LODWORD(v37) = *(v43 + v39[9]);
        sub_22CE5E6C8(v43, type metadata accessor for Budget);
        if (v64 != v37)
        {
          break;
        }

        v44 = v59;
        sub_22CE4DD94(v10, v59, v31, &qword_22CE87B38);

        v45 = v44 + *(v67 + 48);
        v46 = (v45 + v39[7]);
        v47 = *v46;
        v48 = v46[1];

        sub_22CE5E6C8(v45, type metadata accessor for Budget);
        if (v47 == v61 && v48 == v60)
        {
        }

        else
        {
          v49 = sub_22CE86194();

          if ((v49 & 1) == 0)
          {
            break;
          }
        }

        if (v58)
        {
          v50 = v65;
          sub_22CE44874(v10, v65, v31, &qword_22CE87B38);

          v51 = v50 + *(v67 + 48);
          v57 = *(v51 + v39[5]);
          result = sub_22CE5E6C8(v51, type metadata accessor for Budget);
        }

        else
        {
          v52 = v65;
          sub_22CE4DD94(v10, v65, v31, &qword_22CE87B38);

          v53 = v52 + *(v67 + 48);
          v54 = *(v53 + v39[5]);
          sub_22CE5E6C8(v53, type metadata accessor for Budget);
          result = sub_22CE42330(v10, v31, &qword_22CE87B38);
          v55 = __OFADD__(v57, v54);
          v57 += v54;
          if (v55)
          {
            goto LABEL_25;
          }
        }

        v58 = 0;
LABEL_15:
        v28 = v62;
        v23 = v63;
        if (!v27)
        {
          goto LABEL_6;
        }
      }

      result = sub_22CE42330(v10, v31, &qword_22CE87B38);
      goto LABEL_15;
    }

LABEL_6:
    while (1)
    {
      v32 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v32 >= v28)
      {

        return v57;
      }

      v27 = *(v23 + 8 * v32);
      ++v29;
      if (v27)
      {
        v31 = v30;
        v29 = v32;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void *sub_22CE5CD74()
{
  type metadata accessor for IDSBagValueServer();
  swift_allocObject();
  result = sub_22CE5D06C();
  off_281444EA8 = result;
  return result;
}

uint64_t sub_22CE5CDB4()
{
  v1 = *(type metadata accessor for PushEvent(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_22CE5621C(v2);
}

unint64_t sub_22CE5CEB8()
{
  result = qword_27D9EEE38;
  if (!qword_27D9EEE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9EEE38);
  }

  return result;
}

void *sub_22CE5D06C()
{
  v1 = v0;
  v12 = sub_22CE85FD4();
  v2 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22CE85FB4();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22CE85D34();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_22CE4FC1C();
  v11[0] = "et timeout expiration";
  v11[1] = v7;
  sub_22CE85D24();
  v13 = MEMORY[0x277D84F90];
  sub_22CE42614(&qword_281445320, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF10, &unk_22CE87930);
  sub_22CE40A60(&qword_281445328, &unk_27D9EEF10, &unk_22CE87930, MEMORY[0x277D83970]);
  sub_22CE86034();
  (*(v2 + 104))(v4, *MEMORY[0x277D85260], v12);
  v0[2] = sub_22CE86004();
  v0[3] = sub_22CE62A70(&unk_284017428);
  v0[4] = sub_22CE62B50(&unk_284017478);
  type metadata accessor for UnfairLock();
  v8 = swift_allocObject();
  v9 = swift_slowAlloc();
  *(v8 + 16) = v9;
  *v9 = 0;
  v1[5] = v8;
  sub_22CE5D32C();
  return v1;
}

uint64_t sub_22CE5D32C()
{
  v1 = sub_22CE85D14();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22CE85D34();
  v5 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *(v0 + 16);
  aBlock[4] = sub_22CE5DDCC;
  v14 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CE42F10;
  aBlock[3] = &block_descriptor_47;
  v8 = _Block_copy(aBlock);

  sub_22CE85D24();
  v12 = MEMORY[0x277D84F90];
  sub_22CE42614(&qword_281445338, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF20, &qword_22CE872D0);
  sub_22CE40A60(&qword_281445330, &unk_27D9EEF20, &qword_22CE872D0, MEMORY[0x277D83970]);
  sub_22CE86034();
  MEMORY[0x2318C1890](0, v7, v4, v8);
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v11);
}

void sub_22CE5D5E0(void *a1)
{
  v2 = [objc_opt_self() sharedInstanceForBagType_];
  v3 = sub_22CE85DF4();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_22CE86024();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v31 = v29;
  v32 = v30;
  if (!*(&v30 + 1))
  {
    sub_22CE42330(&v31, &qword_27D9EEE40, &qword_22CE87B20);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v7 = sub_22CE85C84();
    __swift_project_value_buffer(v7, qword_281445368);
    v8 = sub_22CE85C74();
    v9 = sub_22CE85F94();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_47;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "Could not load frequent burst window bag value";
    goto LABEL_46;
  }

  v5 = sub_22CE85DF4();
  v6 = [v2 objectForKey_];

  if (v6)
  {
    sub_22CE86024();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v31 = v29;
  v32 = v30;
  if (!*(&v30 + 1))
  {
    sub_22CE42330(&v31, &qword_27D9EEE40, &qword_22CE87B20);
    goto LABEL_19;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v14 = sub_22CE85C84();
    __swift_project_value_buffer(v14, qword_281445368);
    v8 = sub_22CE85C74();
    v9 = sub_22CE85F94();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_47;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "Could not load reduced burst window bag value";
    goto LABEL_46;
  }

  v12 = sub_22CE85DF4();
  v13 = [v2 objectForKey_];

  if (v13)
  {
    sub_22CE86024();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v31 = v29;
  v32 = v30;
  if (!*(&v30 + 1))
  {
    sub_22CE42330(&v31, &qword_27D9EEE40, &qword_22CE87B20);
    goto LABEL_29;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_29:
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v17 = sub_22CE85C84();
    __swift_project_value_buffer(v17, qword_281445368);
    v8 = sub_22CE85C74();
    v9 = sub_22CE85F94();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_47;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "Could not load reduced burst bag value";
    goto LABEL_46;
  }

  v15 = sub_22CE85DF4();
  v16 = [v2 objectForKey_];

  if (v16)
  {
    sub_22CE86024();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v31 = v29;
  v32 = v30;
  if (!*(&v30 + 1))
  {
    sub_22CE42330(&v31, &qword_27D9EEE40, &qword_22CE87B20);
    goto LABEL_42;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_42:
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v27 = sub_22CE85C84();
    __swift_project_value_buffer(v27, qword_281445368);
    v8 = sub_22CE85C74();
    v9 = sub_22CE85F94();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_47;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "Could not load frequent burst bag value";
LABEL_46:
    _os_log_impl(&dword_22CE3F000, v8, v9, v11, v10, 2u);
    MEMORY[0x2318C20D0](v10, -1, -1);
LABEL_47:

    goto LABEL_48;
  }

  if (qword_281445360 != -1)
  {
    swift_once();
  }

  v18 = sub_22CE85C84();
  __swift_project_value_buffer(v18, qword_281445368);
  v19 = sub_22CE85C74();
  v20 = sub_22CE85FA4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134349824;
    *(v21 + 4) = v28;
    *(v21 + 12) = 2050;
    *(v21 + 14) = v28;
    *(v21 + 22) = 2050;
    *(v21 + 24) = v28;
    *(v21 + 32) = 2050;
    *(v21 + 34) = v28;
    _os_log_impl(&dword_22CE3F000, v19, v20, "Fetched IDS bag values; frequent window: %{public}ld; reduced window: %{public}ld; frequent burst: %{public}ld; reduced burst: %{public}ld", v21, 0x2Au);
    MEMORY[0x2318C20D0](v21, -1, -1);
  }

  v22 = *(a1[5] + 16);
  os_unfair_lock_lock(v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE48, &qword_22CE87B28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22CE878F0;
  *(inited + 32) = 2;
  *(inited + 40) = v28;
  *(inited + 48) = 1;
  *(inited + 56) = v28;
  *(inited + 64) = 0;
  *(inited + 72) = 0x40AC200000000000;
  v24 = sub_22CE62A70(inited);
  swift_setDeallocating();
  a1[3] = v24;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE50, &qword_22CE87B30);
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_22CE878F0;
  *(v25 + 32) = 2;
  *(v25 + 40) = v28;
  *(v25 + 48) = 1;
  *(v25 + 56) = v28;
  *(v25 + 64) = 0;
  *(v25 + 72) = 15;
  v26 = sub_22CE62B50(v25);
  swift_setDeallocating();
  a1[4] = v26;

  os_unfair_lock_unlock(v22);
LABEL_48:
}

uint64_t sub_22CE5DD58()
{

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

unint64_t *sub_22CE5DDD4(unint64_t *result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_22CE5DFC4(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t sub_22CE5DE78()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_22CE56590();
  v4 = v1[36];
  v5 = v1[37];
  __swift_project_boxed_opaque_existential_1(v1 + 33, v4);
  return (*(v5 + 16))(v2, v3, v4, v5);
}

uint64_t sub_22CE5DF04@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v6 = *(v1 + 40);
  result = sub_22CE59D94(v3, v4, &v6);
  *a1 = result & 1;
  return result;
}

uint64_t sub_22CE5DF58@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[36];
  v4 = v1[37];
  __swift_project_boxed_opaque_existential_1(v1 + 33, v3);
  result = (*(v4 + 8))(v3, v4);
  *a1 = result;
  return result;
}

uint64_t sub_22CE5DFC4(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v45 = a2;
  v50 = a5;
  v52 = a4;
  v46 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE58, &qword_22CE87B38);
  v7 = MEMORY[0x28223BE20](v6);
  v49 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v56 = &v44 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = (&v44 - v11);
  v13 = type metadata accessor for Budget(0);
  v54 = *(v13 - 8);
  v55 = v13;
  result = MEMORY[0x28223BE20](v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0;
  v57 = a3;
  v20 = a3[8];
  v19 = a3 + 8;
  v18 = v20;
  v21 = 1 << *(v19 - 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v47 = 0;
  v48 = (v21 + 63) >> 6;
  v53 = v16;
  while (v23)
  {
    v24 = __clz(__rbit64(v23));
    v59 = (v23 - 1) & v23;
LABEL_13:
    v27 = v24 | (v17 << 6);
    v28 = v57[7];
    v29 = (v57[6] + 16 * v27);
    v30 = *v29;
    v31 = v29[1];
    v32 = *(v54 + 72);
    v51 = v27;
    sub_22CE5E660(v28 + v32 * v27, v16, type metadata accessor for Budget);
    *v12 = v30;
    v12[1] = v31;
    sub_22CE5E660(v16, v12 + *(v6 + 48), type metadata accessor for Budget);
    v33 = v56;
    sub_22CE4DD94(v12, v56, &qword_27D9EEE58, &qword_22CE87B38);
    v58 = v31;
    swift_bridgeObjectRetain_n();

    v34 = v33 + *(v6 + 48);
    v35 = v55;
    v36 = *(v34 + *(v55 + 36));
    sub_22CE5E6C8(v34, type metadata accessor for Budget);
    if ((v36 & 1) == 0)
    {
      sub_22CE42330(v12, &qword_27D9EEE58, &qword_22CE87B38);
      v16 = v53;
      goto LABEL_5;
    }

    v37 = v49;
    sub_22CE4DD94(v12, v49, &qword_27D9EEE58, &qword_22CE87B38);

    v38 = v37 + *(v6 + 48);
    v39 = (v38 + *(v35 + 28));
    v40 = *v39;
    v41 = v39[1];

    sub_22CE5E6C8(v38, type metadata accessor for Budget);
    if (v40 == v52 && v41 == v50)
    {
      sub_22CE42330(v12, &qword_27D9EEE58, &qword_22CE87B38);

      v16 = v53;
LABEL_19:
      sub_22CE5E6C8(v16, type metadata accessor for Budget);

      *(v46 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
      v43 = __OFADD__(v47++, 1);
      v23 = v59;
      if (v43)
      {
        __break(1u);
        return sub_22CE6234C(v46, v45, v47, v57);
      }
    }

    else
    {
      v42 = sub_22CE86194();
      sub_22CE42330(v12, &qword_27D9EEE58, &qword_22CE87B38);

      v16 = v53;
      if (v42)
      {
        goto LABEL_19;
      }

LABEL_5:
      sub_22CE5E6C8(v16, type metadata accessor for Budget);

      v23 = v59;
    }
  }

  v25 = v17;
  while (1)
  {
    v17 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v17 >= v48)
    {
      return sub_22CE6234C(v46, v45, v47, v57);
    }

    v26 = v19[v17];
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v59 = (v26 - 1) & v26;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CE5E42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  v11 = swift_bridgeObjectRetain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();

      v12 = sub_22CE5DDD4(v14, v9, a1, a2, a3);
      MEMORY[0x2318C20D0](v14, -1, -1);
      swift_bridgeObjectRelease_n();
      return v12;
    }
  }

  MEMORY[0x28223BE20](v11);
  bzero(v15 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0), v10);

  v12 = sub_22CE5DFC4((v15 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0)), v9, a1, a2, a3);

  if (v3)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v12;
}

uint64_t sub_22CE5E5F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CE5E660(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CE5E6C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_67Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22CE5E7F8()
{
  sub_22CE56590();

  return sub_22CE59234();
}

uint64_t sub_22CE5E96C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    if (!v4)
    {
      break;
    }

LABEL_8:
    v10 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v11 = *(v1 + 56) + 72 * (v10 | (v7 << 6));
    v25 = *v11;
    v13 = *(v11 + 32);
    v12 = *(v11 + 48);
    v14 = *(v11 + 64);
    v26 = *(v11 + 16);
    v27 = v13;
    v29 = v14;
    v28 = v12;
    if ((v14 & 0x800000) == 0)
    {
      sub_22CE41214(&v25, v24);
      result = swift_isUniquelyReferenced_nonNull_native();
      v30 = v8;
      if ((result & 1) == 0)
      {
        result = sub_22CE4BBC8(0, *(v8 + 16) + 1, 1);
        v8 = v30;
      }

      v15 = *(v8 + 16);
      v16 = *(v8 + 24);
      v17 = v15 + 1;
      if (v15 >= v16 >> 1)
      {
        v22 = *(v8 + 16);
        v23 = v15 + 1;
        result = sub_22CE4BBC8((v16 > 1), v15 + 1, 1);
        v15 = v22;
        v17 = v23;
        v8 = v30;
      }

      *(v8 + 16) = v17;
      v18 = v8 + 72 * v15;
      *(v18 + 32) = v25;
      v19 = v26;
      v20 = v27;
      v21 = v28;
      *(v18 + 96) = v29;
      *(v18 + 64) = v20;
      *(v18 + 80) = v21;
      *(v18 + 48) = v19;
    }
  }

  while (1)
  {
    v7 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      return v8;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++v9;
    if (v4)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CE5EB20()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (v4)
  {
LABEL_9:
    v10 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v11 = *(v1 + 56) + 72 * (v10 | (v7 << 6));
    v25 = *v11;
    v13 = *(v11 + 32);
    v12 = *(v11 + 48);
    v14 = *(v11 + 64);
    v26 = *(v11 + 16);
    v27 = v13;
    v29 = v14;
    v28 = v12;
    if ((v14 & 0x800000) != 0 && !v14)
    {
      sub_22CE41214(&v25, v24);
      result = swift_isUniquelyReferenced_nonNull_native();
      v30 = v8;
      if ((result & 1) == 0)
      {
        result = sub_22CE4BBC8(0, *(v8 + 16) + 1, 1);
        v8 = v30;
      }

      v15 = *(v8 + 16);
      v16 = *(v8 + 24);
      v17 = v15 + 1;
      if (v15 >= v16 >> 1)
      {
        v22 = *(v8 + 16);
        v23 = v15 + 1;
        result = sub_22CE4BBC8((v16 > 1), v15 + 1, 1);
        v15 = v22;
        v17 = v23;
        v8 = v30;
      }

      *(v8 + 16) = v17;
      v18 = v8 + 72 * v15;
      *(v18 + 32) = v25;
      v19 = v26;
      v20 = v27;
      v21 = v28;
      *(v18 + 96) = v29;
      *(v18 + 64) = v20;
      *(v18 + 80) = v21;
      *(v18 + 48) = v19;
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return v8;
    }

    v4 = *(v1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CE5ECD4()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (v4)
  {
LABEL_9:
    v10 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v11 = *(v1 + 56) + 72 * (v10 | (v7 << 6));
    v25 = *v11;
    v13 = *(v11 + 32);
    v12 = *(v11 + 48);
    v14 = *(v11 + 64);
    v26 = *(v11 + 16);
    v27 = v13;
    v29 = v14;
    v28 = v12;
    if ((v14 & 0x800000) != 0 && v14 == 1)
    {
      sub_22CE41214(&v25, v24);
      result = swift_isUniquelyReferenced_nonNull_native();
      v30 = v8;
      if ((result & 1) == 0)
      {
        result = sub_22CE4BBC8(0, *(v8 + 16) + 1, 1);
        v8 = v30;
      }

      v15 = *(v8 + 16);
      v16 = *(v8 + 24);
      v17 = v15 + 1;
      if (v15 >= v16 >> 1)
      {
        v22 = *(v8 + 16);
        v23 = v15 + 1;
        result = sub_22CE4BBC8((v16 > 1), v15 + 1, 1);
        v15 = v22;
        v17 = v23;
        v8 = v30;
      }

      *(v8 + 16) = v17;
      v18 = v8 + 72 * v15;
      *(v18 + 32) = v25;
      v19 = v26;
      v20 = v27;
      v21 = v28;
      *(v18 + 96) = v29;
      *(v18 + 64) = v20;
      *(v18 + 80) = v21;
      *(v18 + 48) = v19;
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return v8;
    }

    v4 = *(v1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t PushSubscriptionStore.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_22CE62C30(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t sub_22CE5EEF8(__int128 *a1)
{
  v2 = v1;
  v3 = a1[3];
  v63 = a1[2];
  v64 = v3;
  v65 = *(a1 + 16);
  v4 = a1[1];
  v61 = *a1;
  v62 = v4;
  if ((v65 & 0x800000) != 0)
  {
    *&v36 = *(&v62 + 1);
    *(&v36 + 1) = v62;
    swift_beginAccess();
    v7 = *(v1 + 16);
    v8 = *(v2 + 16);
    v11 = *(v8 + 64);
    v10 = v8 + 64;
    v9 = v11;
    v12 = 1 << *(v7 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & v9;
    v15 = (v12 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    v17 = 0;
    while (v14)
    {
      v18 = v17;
LABEL_13:
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v20 = v19 | (v18 << 6);
      v21 = (*(v7 + 48) + 16 * v20);
      v23 = *v21;
      v22 = v21[1];
      v24 = *(v7 + 56) + 72 * v20;
      v54 = *v24;
      v25 = *(v24 + 16);
      v26 = *(v24 + 32);
      v27 = *(v24 + 48);
      v58 = *(v24 + 64);
      v56 = v26;
      v57 = v27;
      v55 = v25;
      *&v59[0] = v23;
      *(&v59[0] + 1) = v22;
      v60 = v58;
      v59[3] = v26;
      v59[4] = v27;
      v59[1] = v54;
      v59[2] = v25;
      if (v58 | (SBYTE2(v58) << 16)) < 0 && (__PAIR128__(v55, *(&v55 + 1)) == v36 || (sub_22CE86194()))
      {

        sub_22CE41214(&v54, &v49);

        sub_22CE632E8(&v54);
        v28 = *(v2 + 16);
        if (*(v28 + 16))
        {

          v29 = sub_22CE498B0(v23, v22);
          v6 = *(&v36 + 1);
          v5 = v36;
          if (v30)
          {
            v31 = *(v28 + 56) + 72 * v29;
            v37 = *v31;
            v33 = *(v31 + 32);
            v32 = *(v31 + 48);
            v34 = *(v31 + 64);
            v38 = *(v31 + 16);
            v39 = v33;
            v41 = v34;
            v40 = v32;
            sub_22CE41214(&v37, &v49);

            v44 = v39;
            v45 = v40;
            v46 = v41;
            v42 = v37;
            v43 = v38;
            swift_beginAccess();

            sub_22CE49C48(v23, v22, &v49);

            v47[2] = v51;
            v47[3] = v52;
            v48 = v53;
            v47[0] = v49;
            v47[1] = v50;
            sub_22CE42330(v47, &qword_27D9EEE78, &qword_22CE88E90);
            swift_endAccess();

            v51 = v44;
            v52 = v45;
            v53 = v46;
            v49 = v42;
            v50 = v43;
          }

          else
          {

            v53 = 0;
            v51 = 0u;
            v52 = 0u;
            v49 = 0u;
            v50 = 0u;
          }
        }

        else
        {

          v53 = 0;
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v6 = *(&v36 + 1);
          v5 = v36;
        }

        sub_22CE42330(&v49, &qword_27D9EEE78, &qword_22CE88E90);
LABEL_19:

        goto LABEL_20;
      }

      sub_22CE41214(&v54, &v49);
      result = sub_22CE42330(v59, &qword_27D9EEE70, &unk_22CE87C20);
      v17 = v18;
    }

    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v15)
      {

        v6 = *(&v36 + 1);
        v5 = v36;
        goto LABEL_19;
      }

      v14 = *(v10 + 8 * v18);
      ++v17;
      if (v14)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v49 = *a1;
    v59[0] = *a1;
    sub_22CE6333C(&v49, &v54);
    MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
    v5 = *(&v59[0] + 1);
    v6 = *&v59[0];
LABEL_20:
    swift_beginAccess();
    sub_22CE41214(&v61, v59);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v59[0] = *(v2 + 16);
    *(v2 + 16) = 0x8000000000000000;
    sub_22CE619E4(&v61, v6, v5, isUniquelyReferenced_nonNull_native);

    *(v2 + 16) = *&v59[0];
    return swift_endAccess();
  }

  return result;
}

double sub_22CE5F324@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v7 = *(v3 + 16);
  if (!*(v7 + 16))
  {
    goto LABEL_5;
  }

  v8 = sub_22CE498B0(a1, a2);
  if ((v9 & 1) == 0)
  {

LABEL_5:
    *(a3 + 64) = 0;
    *&v15 = 0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return *&v15;
  }

  v10 = *(v7 + 56) + 72 * v8;
  v19 = *v10;
  v12 = *(v10 + 32);
  v11 = *(v10 + 48);
  v13 = *(v10 + 64);
  v20 = *(v10 + 16);
  v21 = v12;
  v23 = v13;
  v22 = v11;
  sub_22CE41214(&v19, v29);

  v26 = v21;
  v27 = v22;
  v28 = v23;
  v24 = v19;
  v25 = v20;
  swift_beginAccess();

  sub_22CE49C48(a1, a2, v17);

  v29[2] = v17[2];
  v29[3] = v17[3];
  v30 = v18;
  v29[0] = v17[0];
  v29[1] = v17[1];
  sub_22CE42330(v29, &qword_27D9EEE78, &qword_22CE88E90);
  swift_endAccess();
  v14 = v27;
  *(a3 + 32) = v26;
  *(a3 + 48) = v14;
  *(a3 + 64) = v28;
  v15 = v25;
  *a3 = v24;
  *(a3 + 16) = v15;
  return *&v15;
}

char *sub_22CE5F49C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  v4 = sub_22CE6360C(v3, sub_22CE63398);

  v6 = sub_22CE6360C(v5, sub_22CE6378C);

  *(v2 + 16) = v6;

  v7 = v4[2];
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = sub_22CE40F80(v4[2], 0);
  v9 = sub_22CE41080(&v11, v8 + 32, v7, v4);
  sub_22CE412C8(v11);
  if (v9 != v7)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v8;
}

uint64_t sub_22CE5F5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(a3 + 64) | (*(a3 + 66) << 16)) < 0)
  {
    v5 = *(a3 + 32);
    v6 = *(a3 + 40);
    if (*(a3 + 64) >= 2u)
    {
      return 0;
    }
  }

  else
  {
    v5 = *(a3 + 16);
    v6 = *(a3 + 24);
  }

  if (v5 == a4 && v6 == a5)
  {
    return 1;
  }

  else
  {
    return sub_22CE86194();
  }
}

uint64_t sub_22CE5F618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a3 + 64) | (*(a3 + 66) << 16)) < 0)
  {
    v5 = *(a3 + 16);
    v6 = *(a3 + 24);

    if (*(a4 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:

    v9 = 1;
    return v9 & 1;
  }

  v11 = *a3;
  v12 = *(a3 + 8);

  MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
  v5 = v11;
  v6 = v12;
  if (!*(a4 + 16))
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_22CE498B0(v5, v6);
  v8 = v7;

  v9 = v8 ^ 1;
  return v9 & 1;
}

double sub_22CE5F6E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v7 = *(v3 + 16);
  if (*(v7 + 16))
  {

    v8 = sub_22CE498B0(a1, a2);
    if (v9)
    {
      v10 = *(v7 + 56) + 72 * v8;
      v18[0] = *v10;
      v12 = *(v10 + 32);
      v11 = *(v10 + 48);
      v13 = *(v10 + 64);
      v18[1] = *(v10 + 16);
      v18[2] = v12;
      v19 = v13;
      v18[3] = v11;
      v14 = *(v10 + 48);
      *(a3 + 32) = *(v10 + 32);
      *(a3 + 48) = v14;
      *(a3 + 64) = *(v10 + 64);
      v15 = *(v10 + 16);
      *a3 = *v10;
      *(a3 + 16) = v15;
      sub_22CE41214(v18, v17);

      return result;
    }
  }

  *(a3 + 64) = 0;
  result = 0.0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_22CE5F7C4@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = swift_beginAccess();
  v8 = 0;
  v9 = *(v3 + 16);
  v10 = 1 << *(v9 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v9 + 64);
  v13 = (v10 + 63) >> 6;
  if (v12)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v14 >= v13)
    {
      *(a3 + 64) = 0;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    v12 = *(v9 + 64 + 8 * v14);
    ++v8;
    if (v12)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v16 = *(v9 + 56) + 72 * (v15 | (v14 << 6));
        v18 = *(v16 + 32);
        v17 = *(v16 + 48);
        v19 = *(v16 + 64);
        v24 = *(v16 + 16);
        v23 = *v16;
        v25 = v18;
        v26 = v17;
        v27 = v19;
        if ((v19 & 0x800000) != 0)
        {
          if (v24 == __PAIR128__(a2, a1) || (result = sub_22CE86194(), (result & 1) != 0))
          {

            sub_22CE41214(&v23, v22);

            v20 = v26;
            *(a3 + 32) = v25;
            *(a3 + 48) = v20;
            *(a3 + 64) = v27;
            v21 = v24;
            *a3 = v23;
            *(a3 + 16) = v21;
            return result;
          }

          v8 = v14;
          if (!v12)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v8 = v14;
          if (!v12)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v14 = v8;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CE5F958@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a3;
  v9 = a3[1];
  swift_beginAccess();
  v10 = *(v6 + 16);
  v11 = 1 << *(v10 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v10 + 64);
  v14 = (v11 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v16 = 0;
  while (v13)
  {
    v17 = v16;
LABEL_11:
    v18 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v19 = v18 | (v17 << 6);
    v20 = (*(v10 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(v10 + 56) + 72 * v19;
    v39 = *v23;
    v24 = *(v23 + 16);
    v25 = *(v23 + 32);
    v26 = *(v23 + 48);
    v43 = *(v23 + 64);
    v41 = v25;
    v42 = v26;
    v40 = v24;
    v44[0] = v21;
    v44[1] = v22;
    v49 = v43;
    v47 = v25;
    v48 = v26;
    v45 = v39;
    v46 = v24;
    if (v39 == __PAIR128__(v9, v8) || (sub_22CE86194()) && (v43 | (SBYTE2(v43) << 16)) < 0 && v43 == 1)
    {
      v28 = *(&v42 + 1);
      v27 = v42;
      if (v41 == __PAIR128__(a2, a1) || (v32 = *(&v42 + 1), v33 = v42, v29 = sub_22CE86194(), v28 = v32, v27 = v33, (v29 & 1) != 0))
      {
        if (v27 == a4 && v28 == a5 || (sub_22CE86194() & 1) != 0)
        {

          sub_22CE41214(&v39, v38);

          v30 = v42;
          *(a6 + 32) = v41;
          *(a6 + 48) = v30;
          *(a6 + 64) = v43;
          v31 = v40;
          *a6 = v39;
          *(a6 + 16) = v31;
          return result;
        }
      }
    }

    sub_22CE41214(&v39, v38);
    result = sub_22CE42330(v44, &qword_27D9EEE70, &unk_22CE87C20);
    v16 = v17;
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v14)
    {

      *(a6 + 64) = 0;
      *(a6 + 32) = 0u;
      *(a6 + 48) = 0u;
      *a6 = 0u;
      *(a6 + 16) = 0u;
      return result;
    }

    v13 = *(v10 + 64 + 8 * v17);
    ++v16;
    if (v13)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CE5FBD8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v11 = 0;
  while (v8)
  {
    v12 = v11;
LABEL_9:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = v13 | (v12 << 6);
    v15 = (*(v5 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(v5 + 56) + 72 * v14;
    v26 = *v18;
    v19 = *(v18 + 16);
    v20 = *(v18 + 32);
    v21 = *(v18 + 48);
    v30 = *(v18 + 64);
    v28 = v20;
    v29 = v21;
    v27 = v19;
    v31[0] = v16;
    v31[1] = v17;
    v36 = v30;
    v34 = v20;
    v35 = v21;
    v32 = v26;
    v33 = v19;
    if ((v30 | (SBYTE2(v30) << 16)) < 0)
    {
      v23 = *(&v28 + 1);
      v22 = v28;
      if (v30 < 2u)
      {
        goto LABEL_11;
      }

      sub_22CE41214(&v26, v25);
      result = sub_22CE42330(v31, &qword_27D9EEE70, &unk_22CE87C20);
      v11 = v12;
    }

    else
    {
      v23 = *(&v27 + 1);
      v22 = v27;
LABEL_11:
      if (v22 == a1 && v23 == a2)
      {

        sub_22CE41214(&v26, v25);
        sub_22CE42330(v31, &qword_27D9EEE70, &unk_22CE87C20);
LABEL_19:

        return 1;
      }

      v24 = sub_22CE86194();

      sub_22CE41214(&v26, v25);
      result = sub_22CE42330(v31, &qword_27D9EEE70, &unk_22CE87C20);
      if (v24)
      {
        goto LABEL_19;
      }

      v11 = v12;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return 0;
    }

    v8 = *(v5 + 64 + 8 * v12);
    ++v11;
    if (v8)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CE5FE14(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = *a3;
  v27 = a3[1];
  swift_beginAccess();
  v6 = *(v3 + 16);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v12 = 0;
  while (v9)
  {
LABEL_10:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v12 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v6 + 56) + 72 * v15;
    v29 = *v19;
    v20 = *(v19 + 16);
    v21 = *(v19 + 32);
    v22 = *(v19 + 48);
    v33 = *(v19 + 64);
    v31 = v21;
    v32 = v22;
    v30 = v20;
    v34[0] = v17;
    v34[1] = v18;
    v39 = v33;
    v37 = v21;
    v38 = v22;
    v35 = v29;
    v36 = v20;
    if (v29 != __PAIR128__(v27, v5) && (sub_22CE86194() & 1) == 0)
    {
      goto LABEL_4;
    }

    if ((v33 | (SBYTE2(v33) << 16)) < 0)
    {
      v24 = *(&v31 + 1);
      v23 = v31;
      if (v33 < 2u)
      {
        goto LABEL_14;
      }

LABEL_4:

      sub_22CE41214(&v29, v28);
      result = sub_22CE42330(v34, &qword_27D9EEE70, &unk_22CE87C20);
    }

    else
    {
      v24 = *(&v30 + 1);
      v23 = v30;
LABEL_14:
      if (v23 == a1 && v24 == a2)
      {

        sub_22CE41214(&v29, v28);
        sub_22CE42330(v34, &qword_27D9EEE70, &unk_22CE87C20);
LABEL_22:

        return 1;
      }

      v25 = sub_22CE86194();

      sub_22CE41214(&v29, v28);
      result = sub_22CE42330(v34, &qword_27D9EEE70, &unk_22CE87C20);
      if (v25)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return 0;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_22CE60080(unint64_t a1, unint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = a3[1];
  v8[0] = *a3;
  v8[1] = v5;
  sub_22CE5F958(a1, a2, v8, a4, a5, v9);
  v6 = v10;
  if (v10)
  {
    sub_22CE42330(v9, &qword_27D9EEE78, &qword_22CE88E90);
  }

  return v6 != 0;
}

uint64_t PushSubscriptionStore.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

char *sub_22CE601C8()
{
  swift_beginAccess();

  return sub_22CE46B74(v0);
}

BOOL sub_22CE60338(unint64_t a1, unint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = a3[1];
  v8[0] = *a3;
  v8[1] = v5;
  sub_22CE5F958(a1, a2, v8, a4, a5, v9);
  v6 = v10;
  if (v10)
  {
    sub_22CE42330(v9, &qword_27D9EEE78, &qword_22CE88E90);
  }

  return v6 != 0;
}

void *sub_22CE6039C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEEB8, &qword_22CE87CF0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEEC0, &qword_22CE87CF8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22CE604E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB58, &qword_22CE88EF0);
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

char *sub_22CE605F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE98, &qword_22CE87CB8);
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

char *sub_22CE6070C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB68, &qword_22CE86CE8);
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

char *sub_22CE60818(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EECD8, &qword_22CE86D38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_22CE6093C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EECD0, &qword_22CE86D30);
  v39 = v4;
  result = sub_22CE86154();
  v7 = result;
  if (*(v5 + 16))
  {
    v38 = v5;
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
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 72 * v21;
      if (v39)
      {
        v46 = *(v25 + 32);
        v44 = *(v25 + 16);
        v42 = *v25;
        v43 = *(v25 + 48);
        v40 = *(v25 + 8);
        v41 = *(v25 + 56);
        v26 = *(v25 + 64) | (*(v25 + 66) << 16);
        LOBYTE(v45) = *(v25 + 67);
      }

      else
      {
        v28 = *(v25 + 32);
        v27 = *(v25 + 48);
        v29 = *(v25 + 16);
        v26 = *(v25 + 64);
        v48 = v26;
        v47[1] = v29;
        v47[2] = v28;
        v47[3] = v27;
        v45 = HIBYTE(v26);
        v46 = v28;
        v47[0] = *v25;
        v44 = v29;
        v42 = *&v47[0];
        v43 = v27;
        v40 = *(&v47[0] + 1);
        v41 = *(&v27 + 1);

        sub_22CE41214(v47, v49);
      }

      sub_22CE86204();
      sub_22CE85E54();
      result = sub_22CE86244();
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
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 72 * v15;
      *v17 = v42;
      *(v17 + 8) = v40;
      *(v17 + 16) = v44;
      *(v17 + 32) = v46;
      *(v17 + 48) = v43;
      *(v17 + 56) = v41;
      *(v17 + 66) = BYTE2(v26);
      *(v17 + 64) = v26;
      *(v17 + 67) = v45;
      ++*(v7 + 16);
      v5 = v38;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v39 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero(v9, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_22CE60CB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v49 = a6;
  v9 = v6;
  v10 = a2;
  v11 = a3(0);
  v46 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v48 = &v43 - v12;
  v13 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v47 = v10;
  result = sub_22CE86154();
  v15 = result;
  if (*(v13 + 16))
  {
    v44 = v6;
    v45 = v13;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v22 = result + 64;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v28 = v25 | (v16 << 6);
      v29 = *(v13 + 56);
      v30 = (*(v13 + 48) + 16 * v28);
      v32 = *v30;
      v31 = v30[1];
      v33 = *(v46 + 72);
      v34 = v29 + v33 * v28;
      if (v47)
      {
        sub_22CE63AAC(v34, v48, v49);
      }

      else
      {
        sub_22CE63A44(v34, v48, v49);
      }

      sub_22CE86204();
      sub_22CE85E54();
      result = sub_22CE86244();
      v35 = -1 << *(v15 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v22 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v22 + 8 * v37);
          if (v41 != -1)
          {
            v23 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v36) & ~*(v22 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v24 = (*(v15 + 48) + 16 * v23);
      *v24 = v32;
      v24[1] = v31;
      result = sub_22CE63AAC(v48, *(v15 + 56) + v33 * v23, v49);
      ++*(v15 + 16);
      v13 = v45;
    }

    v26 = v16;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v27 = v17[v16];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v20 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v9 = v44;
      goto LABEL_34;
    }

    v42 = 1 << *(v13 + 32);
    v9 = v44;
    if (v42 >= 64)
    {
      bzero(v17, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v9 = v15;
  return result;
}

uint64_t sub_22CE60FF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB80, &qword_22CE86D00);
  v38 = v4;
  result = sub_22CE86154();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
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
      v39 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = (*(v5 + 56) + 32 * v21);
      v25 = v24[1];
      v40 = *v24;
      v41 = *v22;
      v27 = v24[2];
      v26 = v24[3];
      if ((v38 & 1) == 0)
      {

        sub_22CE41BF0(v27, v26);
      }

      sub_22CE86204();
      sub_22CE85E54();
      result = sub_22CE86244();
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
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v41;
      v16[1] = v23;
      v17 = (*(v7 + 56) + 32 * v15);
      v12 = v39;
      *v17 = v40;
      v17[1] = v25;
      v17[2] = v27;
      v17[3] = v26;
      ++*(v7 + 16);
      v5 = v37;
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
        v39 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
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

uint64_t sub_22CE612D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB50, &unk_22CE86CD0);
  v33 = v4;
  result = sub_22CE86154();
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

        swift_unknownObjectRetain();
      }

      sub_22CE86204();
      sub_22CE85E54();
      result = sub_22CE86244();
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

uint64_t sub_22CE61588(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB60, &qword_22CE86CE0);
  v30 = v4;
  result = sub_22CE86154();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_22CE86204();
      MEMORY[0x2318C1AB0](v20);
      result = sub_22CE86244();
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
      *(*(v7 + 48) + v15) = v20;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
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

uint64_t sub_22CE61818(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_22CE498B0(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for PushToken(0);
      return sub_22CE63B14(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for PushToken);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_22CE4A404();
    goto LABEL_7;
  }

  sub_22CE60CB4(v15, a4 & 1, type metadata accessor for PushToken, &unk_27D9EECF0, qword_22CE86D50, type metadata accessor for PushToken);
  v22 = sub_22CE498B0(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = sub_22CE861B4();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_22CE621D4(v12, a2, a3, a1, v18, type metadata accessor for PushToken, type metadata accessor for PushToken);
}

uint64_t sub_22CE619E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22CE498B0(a2, a3);
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
      sub_22CE6093C(v16, a4 & 1);
      v11 = sub_22CE498B0(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_22CE861B4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_22CE4A430();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 72 * v11;

    return sub_22CE639E8(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = v21[7] + 72 * v11;
  *v25 = *a1;
  v26 = *(a1 + 16);
  v27 = *(a1 + 32);
  v28 = *(a1 + 48);
  *(v25 + 64) = *(a1 + 64);
  *(v25 + 32) = v27;
  *(v25 + 48) = v28;
  *(v25 + 16) = v26;
  v29 = v21[2];
  v15 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v30;
}

uint64_t sub_22CE61B84(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_22CE498B0(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for Budget(0);
      return sub_22CE63B14(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for Budget);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_22CE4A5F4();
    goto LABEL_7;
  }

  sub_22CE60CB4(v15, a4 & 1, type metadata accessor for Budget, &qword_27D9EEBA8, &qword_22CE86D28, type metadata accessor for Budget);
  v22 = sub_22CE498B0(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = sub_22CE861B4();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_22CE621D4(v12, a2, a3, a1, v18, type metadata accessor for Budget, type metadata accessor for Budget);
}

uint64_t sub_22CE61D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_22CE498B0(a5, a6);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 < v22 || (a7 & 1) != 0)
    {
      sub_22CE60FF4(v22, a7 & 1);
      v17 = sub_22CE498B0(a5, a6);
      if ((v23 & 1) != (v26 & 1))
      {
LABEL_18:
        result = sub_22CE861B4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = v17;
      sub_22CE4A874();
      v17 = v25;
    }
  }

  v27 = *v8;
  if (v23)
  {
    v28 = (v27[7] + 32 * v17);
    v29 = v28[2];
    v30 = v28[3];
    *v28 = a1;
    v28[1] = a2;
    v28[2] = a3;
    v28[3] = a4;

    return sub_22CE4E0DC(v29, v30);
  }

  v27[(v17 >> 6) + 8] |= 1 << v17;
  v32 = (v27[6] + 16 * v17);
  *v32 = a5;
  v32[1] = a6;
  v33 = (v27[7] + 32 * v17);
  *v33 = a1;
  v33[1] = a2;
  v33[2] = a3;
  v33[3] = a4;
  v34 = v27[2];
  v21 = __OFADD__(v34, 1);
  v35 = v34 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27[2] = v35;
}

uint64_t sub_22CE61F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_22CE498B0(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_22CE612D0(v18, a5 & 1);
      v13 = sub_22CE498B0(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_22CE861B4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_22CE4AA0C();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;

    return swift_unknownObjectRelease();
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

unint64_t sub_22CE62088(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_22CE4DE0C();
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_22CE61588(v14, a3 & 1);
      result = sub_22CE4DE0C();
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_22CE861B4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_22CE4AB8C();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t sub_22CE621D4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = a5[7];
  v13 = a6(0);
  result = sub_22CE63AAC(a4, v12 + *(*(v13 - 8) + 72) * a1, a7);
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

unint64_t *sub_22CE62280(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, __int128 *))
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

    v8 = sub_22CE63438(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_22CE62388(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t *a6, uint64_t *a7, uint64_t (*a8)(void))
{
  v49 = a8;
  v14 = a5(0);
  v45 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v48 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v44 = &v43 - v17;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  result = sub_22CE86164();
  v19 = result;
  if (a2 < 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = *a1;
  }

  v21 = 0;
  v22 = result + 64;
  v43 = a4;
  while (v20)
  {
    v23 = __clz(__rbit64(v20));
    v46 = (v20 - 1) & v20;
LABEL_16:
    v26 = v23 | (v21 << 6);
    v27 = a4[7];
    v28 = (a4[6] + 16 * v26);
    v30 = *v28;
    v29 = v28[1];
    v31 = v44;
    v47 = *(v45 + 72);
    v32 = v49;
    sub_22CE63A44(v27 + v47 * v26, v44, v49);
    sub_22CE63AAC(v31, v48, v32);
    sub_22CE86204();

    sub_22CE85E54();
    result = sub_22CE86244();
    v33 = -1 << *(v19 + 32);
    v34 = result & ~v33;
    v35 = v34 >> 6;
    if (((-1 << v34) & ~*(v22 + 8 * (v34 >> 6))) == 0)
    {
      v37 = 0;
      v38 = (63 - v33) >> 6;
      while (++v35 != v38 || (v37 & 1) == 0)
      {
        v39 = v35 == v38;
        if (v35 == v38)
        {
          v35 = 0;
        }

        v37 |= v39;
        v40 = *(v22 + 8 * v35);
        if (v40 != -1)
        {
          v36 = __clz(__rbit64(~v40)) + (v35 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v36 = __clz(__rbit64((-1 << v34) & ~*(v22 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v22 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
    v41 = (*(v19 + 48) + 16 * v36);
    *v41 = v30;
    v41[1] = v29;
    result = sub_22CE63AAC(v48, *(v19 + 56) + v36 * v47, v49);
    ++*(v19 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v43;
    v20 = v46;
    if (!a3)
    {
      return v19;
    }
  }

  v24 = v21;
  while (1)
  {
    v21 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v21 >= a2)
    {
      return v19;
    }

    v25 = a1[v21];
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v46 = (v25 - 1) & v25;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22CE626A0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EECD0, &qword_22CE86D30);
  result = sub_22CE86164();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v39 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + 72 * v16);
    v22 = v21[1];
    v23 = v21[2];
    v24 = v21[3];
    v45 = *(v21 + 16);
    v43 = v23;
    v44 = v24;
    v41 = *v21;
    v42 = v22;
    sub_22CE86204();

    sub_22CE41214(&v41, v40);
    sub_22CE85E54();
    result = sub_22CE86244();
    v25 = -1 << *(v9 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
    {
      v29 = 0;
      v30 = (63 - v25) >> 6;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v12 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = (*(v9 + 48) + 16 * v28);
    *v33 = v19;
    v33[1] = v20;
    v34 = *(v9 + 56) + 72 * v28;
    *v34 = v41;
    v35 = v42;
    v36 = v43;
    v37 = v44;
    *(v34 + 64) = v45;
    *(v34 + 32) = v36;
    *(v34 + 48) = v37;
    *(v34 + 16) = v35;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v39;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_22CE62924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return;
    }
  }
}

void sub_22CE62988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;

  if ((v7 & 0x800000) != 0)
  {

    sub_22CE62A0C(a3, a4, a5, a6, v7);
  }
}

void sub_22CE62A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return;
    }
  }
}

unint64_t sub_22CE62A70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE88, &qword_22CE87CA0);
    v3 = sub_22CE86164();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_22CE4DE0C();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_22CE62B50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE80, &qword_22CE87C98);
    v3 = sub_22CE86164();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_22CE4DE0C();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_22CE62C30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EECD0, &qword_22CE86D30);
  v3 = sub_22CE86164();

  v4 = *(a1 + 64);
  v5 = *(a1 + 96);
  v29 = *(a1 + 80);
  v30 = v5;
  v31 = *(a1 + 112);
  v6 = *(a1 + 48);
  v26 = *(a1 + 32);
  v27 = v6;
  v28 = v4;
  v8 = *(&v26 + 1);
  v7 = v26;
  sub_22CE4DD94(&v26, v25, &qword_27D9EEEB0, &unk_22CE87CE0);
  result = sub_22CE498B0(v7, v8);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = (a1 + 120);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v12 = (v3[6] + 16 * result);
    *v12 = v7;
    v12[1] = v8;
    v13 = v3[7] + 72 * result;
    *v13 = v27;
    v14 = v28;
    v15 = v29;
    v16 = v30;
    *(v13 + 64) = v31;
    *(v13 + 32) = v15;
    *(v13 + 48) = v16;
    *(v13 + 16) = v14;
    v17 = v3[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      break;
    }

    v3[2] = v19;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v20 = (v11 + 88);
    v21 = v11[2];
    v22 = v11[4];
    v29 = v11[3];
    v30 = v22;
    v31 = *(v11 + 20);
    v23 = v11[1];
    v26 = *v11;
    v27 = v23;
    v28 = v21;
    v8 = *(&v26 + 1);
    v7 = v26;
    sub_22CE4DD94(&v26, v25, &qword_27D9EEEB0, &unk_22CE87CE0);
    result = sub_22CE498B0(v7, v8);
    v11 = v20;
    if (v24)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22CE62DF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEEA8, &unk_22CE87CD0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEBA8, &qword_22CE86D28);
    v7 = sub_22CE86164();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_22CE4DD94(v9, v5, &qword_27D9EEEA8, &unk_22CE87CD0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_22CE498B0(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Budget(0);
      result = sub_22CE63AAC(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for Budget);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_22CE62FD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEEA0, &unk_22CE87CC0);
    v3 = sub_22CE86164();
    for (i = (a1 + 33); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_22CE4DE0C();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_22CE630B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE90, &unk_22CE87CA8);
    v3 = sub_22CE86164();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_22CE498B0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_22CE631CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB50, &unk_22CE86CD0);
    v3 = sub_22CE86164();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      swift_unknownObjectRetain();
      result = sub_22CE498B0(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

uint64_t sub_22CE633A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_22CE63994();
  result = MEMORY[0x2318C1800](v2, &type metadata for Topic, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;

      sub_22CE82C08(&v8, v7, v6);

      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

unint64_t *sub_22CE63438(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, __int128 *))
{
  v26 = 0;
  v25 = result;
  v4 = 0;
  v38 = a3;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(v38 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = *(v38 + 56) + 72 * v13;
    v34[0] = *v17;
    v19 = *(v17 + 32);
    v18 = *(v17 + 48);
    v20 = *(v17 + 16);
    v35 = *(v17 + 64);
    v34[2] = v19;
    v34[3] = v18;
    v34[1] = v20;
    v21 = *(v17 + 48);
    v31 = *(v17 + 32);
    v32 = v21;
    v33 = *(v17 + 64);
    v22 = *(v17 + 16);
    v29 = *v17;
    v30 = v22;

    sub_22CE41214(v34, v28);
    LOBYTE(v16) = a4(v16, v15, &v29);
    v36[2] = v31;
    v36[3] = v32;
    v37 = v33;
    v36[0] = v29;
    v36[1] = v30;
    sub_22CE632E8(v36);

    if (v16)
    {
      *(v25 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v26++, 1))
      {
        __break(1u);
        return sub_22CE626A0(v25, a2, v26, v38);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_22CE626A0(v25, a2, v26, v38);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_22CE6360C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, __int128 *))
{
  v4 = a1;
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v8 = v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_22CE63438(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_22CE62280(v10, v6, v4, a2);
  result = MEMORY[0x2318C20D0](v10, -1, -1);
  if (!v2)
  {
    return v11;
  }

  return result;
}

unint64_t sub_22CE63994()
{
  result = qword_281445400;
  if (!qword_281445400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281445400);
  }

  return result;
}

uint64_t sub_22CE63A44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CE63AAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CE63B14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t PushToken.token.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22CE4E0DC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t PushToken.subscriptionIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PushToken.subscriptionIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PushToken.environmentName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PushToken.environmentName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t PushToken.topic.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;
}

uint64_t PushToken.topic.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  return result;
}

uint64_t PushToken.expirationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PushToken(0) + 32);

  return sub_22CE63D88(v3, a1);
}

uint64_t sub_22CE63D88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF40, &qword_22CE86C00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PushToken.expirationDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PushToken(0) + 32);

  return sub_22CE63E3C(a1, v3);
}

uint64_t sub_22CE63E3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF40, &qword_22CE86C00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t PushToken.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF40, &qword_22CE86C00);
  MEMORY[0x28223BE20](v2);
  v4 = &v12 - v3;
  v15 = sub_22CE4F0F4(*v0, v0[1]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF90, &qword_22CE87110);
  sub_22CE4F5FC();
  v5 = sub_22CE85DC4();
  v7 = v6;

  v15 = 0;
  v16 = 0xE000000000000000;
  sub_22CE860F4();
  MEMORY[0x2318C1750](0xD000000000000018, 0x800000022CE8A660);
  MEMORY[0x2318C1750](v1[2], v1[3]);
  MEMORY[0x2318C1750](0xD000000000000013, 0x800000022CE8A680);
  MEMORY[0x2318C1750](v1[4], v1[5]);
  MEMORY[0x2318C1750](0x3A6369706F74203BLL, 0xE900000000000020);
  v8 = v0[7];
  v13 = v0[6];
  v14 = v8;

  MEMORY[0x2318C1750](0xD000000000000017, 0x800000022CE89D50);
  MEMORY[0x2318C1750](v13, v14);

  MEMORY[0x2318C1750](0x3A6E656B6F74203BLL, 0xE900000000000020);
  MEMORY[0x2318C1750](v5, v7);

  MEMORY[0x2318C1750](0xD000000000000012, 0x800000022CE8A6A0);
  v9 = type metadata accessor for PushToken(0);
  sub_22CE63D88(v0 + *(v9 + 32), v4);
  v10 = sub_22CE85E24();
  MEMORY[0x2318C1750](v10);

  return v15;
}

uint64_t PushToken.init(subscriptionIdentifier:environmentName:topic:token:expirationDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v16 = *a5;
  v17 = a5[1];
  v18 = *(type metadata accessor for PushToken(0) + 32);
  v19 = sub_22CE85974();
  (*(*(v19 - 8) + 56))(&a9[v18], 1, 1, v19);
  *(a9 + 2) = a1;
  *(a9 + 3) = a2;
  *(a9 + 4) = a3;
  *(a9 + 5) = a4;
  *(a9 + 6) = v16;
  *(a9 + 7) = v17;
  *a9 = a6;
  *(a9 + 1) = a7;

  return sub_22CE63E3C(a8, &a9[v18]);
}

uint64_t PushToken.hash(into:)(uint64_t a1)
{
  v2 = sub_22CE85974();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF40, &qword_22CE86C00);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  sub_22CE858B4();
  sub_22CE85E54();
  sub_22CE85E54();
  sub_22CE85E54();
  v9 = type metadata accessor for PushToken(0);
  sub_22CE63D88(v1 + *(v9 + 32), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return sub_22CE86224();
  }

  (*(v3 + 32))(v5, v8, v2);
  sub_22CE86224();
  sub_22CE6492C(&unk_2814452A8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_22CE85D94();
  return (*(v3 + 8))(v5, v2);
}

uint64_t PushToken.hashValue.getter()
{
  sub_22CE86204();
  PushToken.hash(into:)(v1);
  return sub_22CE86244();
}

uint64_t sub_22CE64450()
{
  sub_22CE86204();
  PushToken.hash(into:)(v1);
  return sub_22CE86244();
}

uint64_t sub_22CE64494(uint64_t a1)
{
  sub_22CE86204();
  PushToken.hash(into:)(v2);
  return sub_22CE86244();
}

BOOL _s24SessionPushNotifications0B5TokenV2eeoiySbAC_ACtFZ_0(_BOOL8 *a1, uint64_t *a2)
{
  v4 = sub_22CE85974();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF40, &qword_22CE86C00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEEC8, &qword_22CE87DD8);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  if (!sub_22CE51390(*a1, a1[1], *a2, a2[1]) || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_22CE86194() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_22CE86194() & 1) == 0 || (a1[6] != a2[6] || a1[7] != a2[7]) && (sub_22CE86194() & 1) == 0)
  {
    return 0;
  }

  v14 = *(type metadata accessor for PushToken(0) + 32);
  v15 = *(v11 + 48);
  sub_22CE63D88(a1 + v14, v13);
  sub_22CE63D88(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_22CE42330(v13, &qword_27D9EEF40, &qword_22CE86C00);
      return 1;
    }

    goto LABEL_16;
  }

  sub_22CE63D88(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_16:
    sub_22CE42330(v13, &qword_27D9EEEC8, &qword_22CE87DD8);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_22CE6492C(&qword_27D9EEED0, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v18 = sub_22CE85DE4();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  sub_22CE42330(v13, &qword_27D9EEF40, &qword_22CE86C00);
  return (v18 & 1) != 0;
}

void sub_22CE6489C(uint64_t a1)
{
  sub_22CE519F8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_22CE6492C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_22CE64974(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22CE85884();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[2] = a1;
  v3[3] = a2;
  sub_22CE65C18();

  v10 = sub_22CE64B9C(a1, a2);
  if (!v10 || (v17 = v10, v18 = [v10 URL], sub_22CE85874(), v18, v19 = sub_22CE85864(), (*(v7 + 8))(v9, v6), Unique = _CFBundleCreateUnique(), v19, v17, !Unique))
  {
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v11 = sub_22CE85C84();
    __swift_project_value_buffer(v11, qword_281445368);
    v12 = sub_22CE85C74();
    v13 = sub_22CE85F94();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_22CE3F000, v12, v13, "StringLocalizer could not open bundle", v14, 2u);
      MEMORY[0x2318C20D0](v14, -1, -1);
    }

    Unique = 0;
  }

  v3[4] = Unique;
  return v3;
}

id sub_22CE64B9C(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22CE85DF4();

  v7[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() bundleRecordWithApplicationIdentifier:v2 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_22CE85834();

    swift_willThrow();
  }

  return v3;
}

uint64_t StringLocalizer.deinit()
{
  v1 = *(v0 + 32);
  if (v1)
  {
  }

  return v0;
}

uint64_t StringLocalizer.__deallocating_deinit()
{
  v1 = *(v0 + 32);
  if (v1)
  {
  }

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

unint64_t sub_22CE64CE8(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v40 = a4;
  v37 = a3;
  v10 = sub_22CE859F4();
  v38 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22CE85A14();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEED8, &qword_22CE87DF0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v36 - v18;
  if (!a2)
  {
    goto LABEL_8;
  }

  v39 = a5;
  v20 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v20 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v20 && (v21 = *(v6 + 32)) != 0)
  {
    v36[1] = a1;
    v36[0] = v21;
    sub_22CE859D4();
    sub_22CE85A04();
    (*(v14 + 8))(v16, v13);
    sub_22CE859E4();
    (*(v38 + 8))(v12, v10);
    v22 = sub_22CE859C4();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v19, 1, v22) == 1)
    {
      sub_22CE65B50(v19);
    }

    else
    {
      sub_22CE859B4();
      (*(v23 + 8))(v19, v22);
    }

    v25 = v36[0];
    v26 = sub_22CE85DF4();
    v27 = v40;

    v28 = sub_22CE85DF4();

    v29 = sub_22CE85DF4();

    v30 = CFBundleCopyLocalizedStringForLocalization();

    if (v30)
    {
      v31 = v30;
      v32 = sub_22CE85E04();
      v34 = v33;
      if (v37)
      {
        v35 = v37;
      }

      else
      {
        v35 = MEMORY[0x277D84F90];
      }

      v27 = _s24SessionPushNotifications15StringLocalizerC015formatLocalizedD0_9argumentsS2S_Says06CustomD11Convertible_pGtFZ_0(v32, v34, v35);
    }

    else
    {
    }

    return v27;
  }

  else
  {
LABEL_8:

    return v40;
  }
}

unint64_t sub_22CE650D8(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_22CE65228(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_22CE860E4();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_22CE86114() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_22CE65228(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_22CE652C0(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_22CE65334(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_22CE652C0(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_22CE65458(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_22CE65334(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_22CE86114();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

unint64_t sub_22CE65458(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_22CE85EE4();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x2318C1770](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t _s24SessionPushNotifications15StringLocalizerC015formatLocalizedD0_9argumentsS2S_Says06CustomD11Convertible_pGtFZ_0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = a3;
  v5 = 0;
  v6 = 4 * v3;
  v40 = a3 + 32;
  v41 = 4 * v3;
  while (1)
  {
    v7 = sub_22CE85F04();
    v9 = v8;
    if (v6 > sub_22CE85E74() >> 14)
    {
      break;
    }

    MEMORY[0x2318C1750](v7, v9);

LABEL_6:
    if (v6 <= sub_22CE85E74() >> 14)
    {
      return 0;
    }
  }

  v10 = sub_22CE85F04();
  v12 = v11;
  if ((v7 != 37 || v9 != 0xE100000000000000) && (sub_22CE86194() & 1) == 0)
  {

    MEMORY[0x2318C1750](v7, v9);

    v6 = v41;
    goto LABEL_6;
  }

  if (v10 == 64 && v12 == 0xE100000000000000 || (sub_22CE86194() & 1) != 0)
  {

    if (v5 < *(v4 + 16))
    {
      if (v5 < 0)
      {
        goto LABEL_94;
      }

      __swift_project_boxed_opaque_existential_1((v40 + 40 * v5), *(v40 + 40 * v5 + 24));
      v14 = sub_22CE86174();
      MEMORY[0x2318C1750](v14);
    }

    v15 = __OFADD__(v5++, 1);
    if (v15)
    {
      goto LABEL_93;
    }

    goto LABEL_18;
  }

  if (v10 != 2573 || v12 != 0xE200000000000000)
  {
    result = sub_22CE86194();
    if ((result & 1) == 0)
    {
      if ((v12 & 0x2000000000000000) != 0)
      {
        v16 = HIBYTE(v12) & 0xF;
      }

      else
      {
        v16 = v10 & 0xFFFFFFFFFFFFLL;
      }

      if (!v16)
      {
        goto LABEL_95;
      }

      if ((v12 & 0x1000000000000000) != 0)
      {
        v17 = sub_22CE85E44();
      }

      else
      {
        v17 = sub_22CE860D4() << 16;
      }

      v18 = v17 >> 14 == 4 * v16;
      v4 = a3;
      if (!v18)
      {
        goto LABEL_66;
      }

      result = sub_22CE650D8(v10, v12);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_101;
      }

      if ((result & 0xFFFFFF80) != 0)
      {
LABEL_66:

        if (v10 == 37 && v12 == 0xE100000000000000)
        {
        }

        else
        {
          v33 = sub_22CE86194();

          if ((v33 & 1) == 0)
          {
LABEL_18:
            v6 = v41;
            goto LABEL_6;
          }
        }

        MEMORY[0x2318C1750](37, 0xE100000000000000);
        goto LABEL_18;
      }

      result = sub_22CE650D8(v10, v12);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_102;
      }

      if ((result & 0xFFFFFF00) != 0)
      {
        goto LABEL_96;
      }
    }
  }

  if ((sub_22CE85DB4() & 1) == 0)
  {
    goto LABEL_66;
  }

  swift_bridgeObjectRetain_n();
  v19 = 0;
  v20 = v12;
  if (v10 != 2573)
  {
    goto LABEL_39;
  }

  while (2)
  {
    if (v20 == 0xE200000000000000)
    {
LABEL_38:

      goto LABEL_58;
    }

LABEL_39:
    result = sub_22CE86194();
    if (result)
    {
      goto LABEL_38;
    }

    if ((v20 & 0x2000000000000000) != 0)
    {
      v21 = HIBYTE(v20) & 0xF;
    }

    else
    {
      v21 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (!v21)
    {
      goto LABEL_91;
    }

    if ((v20 & 0x1000000000000000) != 0)
    {
      v26 = sub_22CE85E44();
    }

    else
    {
      if ((v20 & 0x2000000000000000) != 0)
      {
        v23 = v10;
      }

      else
      {
        if ((v10 & 0x1000000000000000) != 0)
        {
          v22 = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v22 = sub_22CE86114();
        }

        v23 = *v22;
      }

      v24 = v23;
      v25 = (__clz(~v23) - 24) << 16;
      if (v24 < 0)
      {
        v26 = v25;
      }

      else
      {
        v26 = 65541;
      }
    }

    if (v26 >> 14 != 4 * v21)
    {
      goto LABEL_71;
    }

    result = sub_22CE650D8(v10, v20);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_99;
    }

    if ((result & 0xFFFFFF80) != 0)
    {
LABEL_71:

LABEL_72:

      sub_22CE85E84();
      if (sub_22CE85F04() == 36 && v34 == 0xE100000000000000)
      {
      }

      else
      {
        v35 = sub_22CE86194();

        if ((v35 & 1) == 0)
        {
          goto LABEL_84;
        }
      }

      sub_22CE85E74();
      if (sub_22CE85F04() == 64 && v36 == 0xE100000000000000)
      {

LABEL_80:
        if (v19 < *(a3 + 16))
        {
          if (v19 < 0)
          {
            goto LABEL_97;
          }

          __swift_project_boxed_opaque_existential_1((v40 + 40 * v19), *(v40 + 40 * v19 + 24));
          v38 = sub_22CE86174();
          MEMORY[0x2318C1750](v38);
        }

        sub_22CE85EA4();

        goto LABEL_85;
      }

      v37 = sub_22CE86194();

      if (v37)
      {
        goto LABEL_80;
      }

LABEL_84:

LABEL_85:
      v4 = a3;
      v6 = v41;
      goto LABEL_6;
    }

    result = sub_22CE650D8(v10, v20);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_100;
    }

    v27 = result;

    if ((v27 & 0xFFFFFF00) != 0)
    {
      goto LABEL_92;
    }

LABEL_58:
    result = sub_22CE85DB4();
    if ((result & 1) == 0)
    {
      goto LABEL_72;
    }

    v28 = (v19 * 10) >> 64;
    v29 = 10 * v19;
    if (v28 == v29 >> 63)
    {
      result = sub_22CE85DA4();
      if (v30)
      {
        goto LABEL_98;
      }

      v15 = __OFADD__(v29, result);
      v19 = v29 + result;
      if (v15)
      {
        goto LABEL_90;
      }

      sub_22CE85E74();
      v10 = sub_22CE85F04();
      v32 = v31;

      v20 = v32;
      if (v10 == 2573)
      {
        continue;
      }

      goto LABEL_39;
    }

    break;
  }

  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
  return result;
}

uint64_t sub_22CE65B50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEED8, &qword_22CE87DF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22CE65C18()
{
  result = qword_27D9EEEE0;
  if (!qword_27D9EEEE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D9EEEE0);
  }

  return result;
}

uint64_t PushSubscription.activityIdentifier.getter()
{
  if (((*(v0 + 64) | (*(v0 + 66) << 16)) & 0x80000000) == 0)
  {
    return 0;
  }

  v1 = *(v0 + 16);

  return v1;
}

uint64_t PushSubscription.id.getter()
{
  if ((*(v0 + 32) | (*(v0 + 66) << 16)) < 0)
  {
    v1 = v0[2];
  }

  else
  {
    v3 = *v0;

    MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
    return v3;
  }

  return v1;
}

uint64_t static Priority.< infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      if (!*a2)
      {
        return 1;
      }
    }

    else if (*a2 < 2u)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t Priority.description.getter()
{
  v1 = 0x6E7574726F70706FLL;
  if (*v0 != 1)
  {
    v1 = 0x6E696B61576E6F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C616D726F6ELL;
  }
}

SessionPushNotifications::Priority_optional __swiftcall Priority.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_22CE65E0C(_BYTE *a1, _BYTE *a2)
{
  if (!*a1)
  {
    return 0;
  }

  if (*a1 == 1)
  {
    if (*a2)
    {
      return 0;
    }
  }

  else if (*a2 > 1u)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_22CE65E3C(_BYTE *a1, _BYTE *a2)
{
  if (!*a2)
  {
    return 1;
  }

  if (*a2 == 1)
  {
    if (*a1)
    {
      return 1;
    }
  }

  else if (*a1 > 1u)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_22CE65E6C(_BYTE *a1, _BYTE *a2)
{
  if (!*a1)
  {
    return 1;
  }

  if (*a1 == 1)
  {
    if (*a2)
    {
      return 1;
    }
  }

  else if (*a2 > 1u)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_22CE65E9C(_BYTE *a1, _BYTE *a2)
{
  if (!*a2)
  {
    return 0;
  }

  if (*a2 == 1)
  {
    if (*a1)
    {
      return 0;
    }
  }

  else if (*a1 > 1u)
  {
    return 0;
  }

  return 1;
}

uint64_t PushSubscription.SubscriptionType.Activity.PushType.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (!*(v0 + 32))
  {
    v6 = 0x203A6E656B6F74;
    goto LABEL_5;
  }

  if (*(v0 + 32) == 1)
  {
    v4 = v0[2];
    v3 = v0[3];
    v6 = 0x3A6C656E6E616863;
    MEMORY[0x2318C1750](v1, v2);
    MEMORY[0x2318C1750](8251, 0xE200000000000000);
    v1 = v4;
    v2 = v3;
LABEL_5:
    MEMORY[0x2318C1750](v1, v2);
    return v6;
  }

  return 0x6C616E7265747865;
}

uint64_t PushSubscription.SubscriptionType.Activity.PushType.hash(into:)(uint64_t a1)
{
  if (*(v1 + 32))
  {
    if (*(v1 + 32) != 1)
    {
      return MEMORY[0x2318C1AB0](2);
    }

    MEMORY[0x2318C1AB0](1);
    sub_22CE85E54();
  }

  else
  {
    MEMORY[0x2318C1AB0](0);
  }

  return sub_22CE85E54();
}

uint64_t PushSubscription.SubscriptionType.Activity.PushType.hashValue.getter()
{
  v1 = *(v0 + 32);
  sub_22CE86204();
  if (v1)
  {
    if (v1 == 1)
    {
      MEMORY[0x2318C1AB0](1);
      sub_22CE85E54();
      sub_22CE85E54();
    }

    else
    {
      MEMORY[0x2318C1AB0](2);
    }
  }

  else
  {
    MEMORY[0x2318C1AB0](0);
    sub_22CE85E54();
  }

  return sub_22CE86244();
}

uint64_t sub_22CE66110()
{
  v1 = *(v0 + 32);
  sub_22CE86204();
  if (v1)
  {
    if (v1 == 1)
    {
      MEMORY[0x2318C1AB0](1);
      sub_22CE85E54();
      sub_22CE85E54();
    }

    else
    {
      MEMORY[0x2318C1AB0](2);
    }
  }

  else
  {
    MEMORY[0x2318C1AB0](0);
    sub_22CE85E54();
  }

  return sub_22CE86244();
}

uint64_t sub_22CE661CC(uint64_t a1)
{
  if (*(v1 + 32))
  {
    if (*(v1 + 32) != 1)
    {
      return MEMORY[0x2318C1AB0](2);
    }

    MEMORY[0x2318C1AB0](1);
    sub_22CE85E54();
  }

  else
  {
    MEMORY[0x2318C1AB0](0);
  }

  return sub_22CE85E54();
}

uint64_t sub_22CE66288(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_22CE86204();
  if (v2)
  {
    if (v2 == 1)
    {
      MEMORY[0x2318C1AB0](1);
      sub_22CE85E54();
      sub_22CE85E54();
    }

    else
    {
      MEMORY[0x2318C1AB0](2);
    }
  }

  else
  {
    MEMORY[0x2318C1AB0](0);
    sub_22CE85E54();
  }

  return sub_22CE86244();
}

uint64_t PushSubscription.SubscriptionType.Activity.activityIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PushSubscription.SubscriptionType.Activity.activityIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void PushSubscription.SubscriptionType.Activity.pushType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 48);
  *(a1 + 32) = v6;
  sub_22CE62924(v2, v3, v4, v5, v6);
}

__n128 PushSubscription.SubscriptionType.Activity.pushType.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_22CE62A0C(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v5;
  *(v1 + 48) = v3;
  return result;
}

uint64_t PushSubscription.SubscriptionType.Activity.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  v8 = *(v0 + 49);
  v9 = *(v0 + 50);
  sub_22CE860F4();
  MEMORY[0x2318C1750](0xD000000000000014, 0x800000022CE8A710);
  MEMORY[0x2318C1750](v1, v2);
  MEMORY[0x2318C1750](0x795468737570203BLL, 0xEC000000203A6570);
  if (!v7)
  {
    v19 = 0x203A6E656B6F74;
    v20 = 0xE700000000000000;
    v10 = v3;
    v11 = v4;
    goto LABEL_5;
  }

  if (v7 == 1)
  {
    v19 = 0x3A6C656E6E616863;
    v20 = 0xE900000000000020;
    MEMORY[0x2318C1750](v3, v4);
    MEMORY[0x2318C1750](8251, 0xE200000000000000);
    v10 = v5;
    v11 = v6;
LABEL_5:
    MEMORY[0x2318C1750](v10, v11);
    v12 = v19;
    v13 = v20;
    goto LABEL_7;
  }

  v13 = 0xE800000000000000;
  v12 = 0x6C616E7265747865;
LABEL_7:
  MEMORY[0x2318C1750](v12, v13);

  MEMORY[0x2318C1750](0x656870457369203BLL, 0xEF203A6C6172656DLL);
  if (v8)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (v8)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x2318C1750](v14, v15);

  MEMORY[0x2318C1750](0xD000000000000019, 0x800000022CE8A730);
  if (v9)
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (v9)
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  MEMORY[0x2318C1750](v16, v17);

  return 0;
}

uint64_t PushSubscription.SubscriptionType.Activity.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 48);
  sub_22CE85E54();
  if (v2)
  {
    if (v2 == 1)
    {
      MEMORY[0x2318C1AB0](1);
      sub_22CE85E54();
      sub_22CE85E54();
    }

    else
    {
      MEMORY[0x2318C1AB0](2);
    }
  }

  else
  {
    MEMORY[0x2318C1AB0](0);
    sub_22CE85E54();
  }

  sub_22CE86224();
  return sub_22CE86224();
}

uint64_t PushSubscription.SubscriptionType.Activity.hashValue.getter()
{
  v1 = *(v0 + 48);
  sub_22CE86204();
  sub_22CE85E54();
  if (v1)
  {
    if (v1 == 1)
    {
      MEMORY[0x2318C1AB0](1);
      sub_22CE85E54();
      sub_22CE85E54();
    }

    else
    {
      MEMORY[0x2318C1AB0](2);
    }
  }

  else
  {
    MEMORY[0x2318C1AB0](0);
    sub_22CE85E54();
  }

  sub_22CE86224();
  sub_22CE86224();
  return sub_22CE86244();
}

uint64_t sub_22CE6689C()
{
  sub_22CE86204();
  PushSubscription.SubscriptionType.Activity.hash(into:)(v1);
  return sub_22CE86244();
}

uint64_t sub_22CE668E0(uint64_t a1)
{
  sub_22CE86204();
  PushSubscription.SubscriptionType.Activity.hash(into:)(v2);
  return sub_22CE86244();
}

uint64_t PushSubscription.SubscriptionType.description.getter()
{
  if (((*(v0 + 48) | (*(v0 + 50) << 16)) & 0x80000000) == 0)
  {
    return 0x74536F5468737570;
  }

  v2 = PushSubscription.SubscriptionType.Activity.description.getter();
  MEMORY[0x2318C1750](v2);

  return 0x7974697669746361;
}

uint64_t PushSubscription.SubscriptionType.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 48) | (*(v1 + 50) << 16);
  if (v2 < 0)
  {
    MEMORY[0x2318C1AB0](1);
    sub_22CE85E54();
    if (v2)
    {
      if (v2 == 1)
      {
        MEMORY[0x2318C1AB0](1);
        sub_22CE85E54();
        sub_22CE85E54();
      }

      else
      {
        MEMORY[0x2318C1AB0](2);
      }
    }

    else
    {
      MEMORY[0x2318C1AB0](0);
      sub_22CE85E54();
    }

    sub_22CE86224();
    return sub_22CE86224();
  }

  else
  {
    MEMORY[0x2318C1AB0](0);

    return sub_22CE85E54();
  }
}

uint64_t PushSubscription.SubscriptionType.hashValue.getter()
{
  v1 = *(v0 + 48) | (*(v0 + 50) << 16);
  sub_22CE86204();
  if (v1 < 0)
  {
    MEMORY[0x2318C1AB0](1);
    sub_22CE85E54();
    if (v1)
    {
      if (v1 == 1)
      {
        MEMORY[0x2318C1AB0](1);
        sub_22CE85E54();
        sub_22CE85E54();
      }

      else
      {
        MEMORY[0x2318C1AB0](2);
      }
    }

    else
    {
      MEMORY[0x2318C1AB0](0);
      sub_22CE85E54();
    }

    sub_22CE86224();
    sub_22CE86224();
  }

  else
  {
    MEMORY[0x2318C1AB0](0);
    sub_22CE85E54();
  }

  return sub_22CE86244();
}

uint64_t sub_22CE66C3C()
{
  v1 = *(v0 + 48) | (*(v0 + 50) << 16);
  sub_22CE86204();
  if (v1 < 0)
  {
    MEMORY[0x2318C1AB0](1);
    PushSubscription.SubscriptionType.Activity.hash(into:)(v3);
  }

  else
  {
    MEMORY[0x2318C1AB0](0);
    sub_22CE85E54();
  }

  return sub_22CE86244();
}

uint64_t sub_22CE66CF8(uint64_t a1)
{
  if ((*(v1 + 48) | (*(v1 + 50) << 16)) < 0)
  {
    MEMORY[0x2318C1AB0](1);
    return PushSubscription.SubscriptionType.Activity.hash(into:)(a1);
  }

  else
  {
    MEMORY[0x2318C1AB0](0);

    return sub_22CE85E54();
  }
}

uint64_t sub_22CE66DD0(uint64_t a1)
{
  v2 = *(v1 + 48) | (*(v1 + 50) << 16);
  sub_22CE86204();
  if (v2 < 0)
  {
    MEMORY[0x2318C1AB0](1);
    PushSubscription.SubscriptionType.Activity.hash(into:)(v4);
  }

  else
  {
    MEMORY[0x2318C1AB0](0);
    sub_22CE85E54();
  }

  return sub_22CE86244();
}

uint64_t sub_22CE66E88()
{
  if (((*(v0 + 48) | (*(v0 + 50) << 16)) & 0x80000000) == 0)
  {
    return 0x74536F5468737570;
  }

  v2 = PushSubscription.SubscriptionType.Activity.description.getter();
  MEMORY[0x2318C1750](v2);

  return 0x7974697669746361;
}

uint64_t static PushSubscription.pushToStartSubscriptionID(topic:)(uint64_t *a1)
{
  v2 = *a1;

  MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
  return v2;
}

uint64_t PushSubscription.topic.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t PushSubscription.topic.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

__n128 PushSubscription.subscriptionType.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 50);
  v8 = *(v1 + 64);
  v7 = v1 + 64;
  sub_22CE62988(*(v7 - 48), *(v7 - 40), *(v7 - 32), *(v7 - 24), *(v7 - 16), *(v7 - 8), v8 | (*(v7 + 2) << 16));
  result = *a1;
  v10 = *(a1 + 16);
  *(v7 - 48) = *a1;
  *(v7 - 32) = v10;
  *(v7 - 16) = v3;
  *(v7 - 8) = v4;
  *(v7 + 2) = v6;
  *v7 = v5;
  return result;
}

uint64_t PushSubscription.owner.getter()
{

  return sub_22CE85B74();
}

uint64_t PushSubscription.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 32) | (*(v0 + 66) << 16);
  v4 = *(v0 + 67);
  sub_22CE860F4();

  MEMORY[0x2318C1750](0xD000000000000017, 0x800000022CE89D50);
  MEMORY[0x2318C1750](v2, v1);

  MEMORY[0x2318C1750](0xD000000000000014, 0x800000022CE8A750);
  if (v3 < 0)
  {
    v7 = PushSubscription.SubscriptionType.Activity.description.getter();
    MEMORY[0x2318C1750](v7);

    v6 = 0x7974697669746361;
    v5 = 0xEA0000000000203ALL;
  }

  else
  {
    v5 = 0xEB00000000747261;
    v6 = 0x74536F5468737570;
  }

  MEMORY[0x2318C1750](v6, v5);

  MEMORY[0x2318C1750](0x69726F697270203BLL, 0xEC000000203A7974);
  if (v4)
  {
    if (v4 == 1)
    {
      v8 = 0xED00006369747369;
      v9 = 0x6E7574726F70706FLL;
    }

    else
    {
      v8 = 0xE900000000000067;
      v9 = 0x6E696B61576E6F6ELL;
    }
  }

  else
  {
    v8 = 0xE600000000000000;
    v9 = 0x6C616D726F6ELL;
  }

  MEMORY[0x2318C1750](v9, v8);

  return 0x203A6369706F74;
}

uint64_t static PushSubscription.activityTokenSubscription(activityIdentifier:environmentName:topic:priority:isEphemeral:exceededReducedBudget:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, char *a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v9 = a5[1];
  v10 = *a6;
  *a9 = *a5;
  *(a9 + 8) = v9;
  if (a8)
  {
    v11 = 0x10000;
  }

  else
  {
    v11 = 0;
  }

  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  if (a7)
  {
    v12 = -8388352;
  }

  else
  {
    v12 = -8388608;
  }

  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = 0;
  *(a9 + 56) = 0;
  *(a9 + 64) = v12;
  *(a9 + 66) = (v12 | v11) >> 16;
  *(a9 + 67) = v10;
}

__n128 PushSubscription.init(activityIdentifier:topic:pushType:priority:isEphemeral:exceededReducedBudget:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v8 = a3[1];
  v9 = *(a4 + 32);
  v10 = *a5;
  *a8 = *a3;
  *(a8 + 8) = v8;
  if (a7)
  {
    v11 = 0x10000;
  }

  else
  {
    v11 = 0;
  }

  if (a6)
  {
    v12 = -8388352;
  }

  else
  {
    v12 = -8388608;
  }

  *(a8 + 16) = a1;
  *(a8 + 24) = a2;
  result = *a4;
  v14 = *(a4 + 16);
  *(a8 + 32) = *a4;
  *(a8 + 48) = v14;
  *(a8 + 64) = v12 & 0xFFFC | v9 & 3;
  *(a8 + 66) = (v12 | v11) >> 16;
  *(a8 + 67) = v10;
  return result;
}

uint64_t static PushSubscription.activityChannelSubscription(activityIdentifier:environmentName:topic:channel:priority:isEphemeral:exceededReducedBudget:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, char a10, char a11)
{
  v11 = a5[1];
  v12 = *a8;
  *a9 = *a5;
  *(a9 + 8) = v11;
  if (a10)
  {
    v13 = -8388351;
  }

  else
  {
    v13 = -8388607;
  }

  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = v13;
  *(a9 + 66) = BYTE2(v13) | ((a11 & 1) != 0);
  *(a9 + 67) = v12;
}

uint64_t static PushSubscription.externalSubscription(activityIdentifier:environmentName:topic:priority:isEphemeral:exceededReducedBudget:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X4>, char *a4@<X5>, char a5@<W6>, char a6@<W7>, uint64_t a7@<X8>)
{
  v7 = a3[1];
  v8 = *a4;
  *a7 = *a3;
  *(a7 + 8) = v7;
  if (a6)
  {
    v9 = 0x10000;
  }

  else
  {
    v9 = 0;
  }

  if (a5)
  {
    v10 = -8388350;
  }

  else
  {
    v10 = -8388606;
  }

  *(a7 + 16) = a1;
  *(a7 + 24) = a2;
  *(a7 + 32) = 0u;
  *(a7 + 48) = 0u;
  *(a7 + 64) = v10;
  *(a7 + 66) = (v10 | v9) >> 16;
  *(a7 + 67) = v8;
}

uint64_t static PushSubscription.pushToStartSubscription(environmentName:topic:priority:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a3[1];
  v6 = *a4;
  *a5 = *a3;
  *(a5 + 8) = v5;
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 63) = 0;
  *(a5 + 67) = v6;
}

uint64_t PushSubscription.priority(applying:budget:)(void *a1, uint64_t a2)
{
  v4 = *(v2 + 67);
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v8 = v4;
  return (*(v6 + 8))(&v8, a2, v5, v6);
}

uint64_t sub_22CE6762C@<X0>(void *a1@<X8>)
{
  if ((*(v1 + 32) | (*(v1 + 66) << 16)) < 0)
  {
    v4 = v1[2];
  }

  else
  {
    v5 = *v1;
    v6 = v1[1];

    MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
    v4 = v5;
    result = v6;
  }

  *a1 = v4;
  a1[1] = result;
  return result;
}

uint64_t PushSubscription.channel.getter()
{
  v1 = 0;
  if (((*(v0 + 64) | (*(v0 + 66) << 16)) & 0x800000) != 0 && *(v0 + 64) == 1)
  {
    v1 = *(v0 + 48);
  }

  return v1;
}

uint64_t PushSubscription.environment.getter()
{
  if (((*(v0 + 64) | (*(v0 + 66) << 16)) & 0x800000) != 0)
  {
    if ((*(v0 + 64) & 0xFE) != 0)
    {
      return 0;
    }

    v1 = (v0 + 32);
  }

  else
  {
    v1 = (v0 + 16);
  }

  v2 = *v1;

  return v2;
}

uint64_t _s24SessionPushNotifications0B12SubscriptionV0D4TypeO8ActivityV0bE0O2eeoiySbAI_AItFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (!*(a2 + 32))
    {
      v18 = *a1;
      if (v3 == v8 && v2 == v7)
      {
        sub_22CE62924(v18, v2, v10, v9, 0);
        sub_22CE62924(v3, v2, v5, v4, 0);
        sub_22CE62A0C(v3, v2, v5, v4, 0);
        v13 = v3;
        v14 = v2;
        v15 = v10;
        v16 = v9;
        v17 = 0;
        goto LABEL_28;
      }

      v20 = sub_22CE86194();
      sub_22CE62924(v8, v7, v10, v9, 0);
      sub_22CE62924(v3, v2, v5, v4, 0);
      sub_22CE62A0C(v3, v2, v5, v4, 0);
      v21 = v8;
      v22 = v7;
      v23 = v10;
      v24 = v9;
      v25 = 0;
LABEL_25:
      sub_22CE62A0C(v21, v22, v23, v24, v25);
      return v20 & 1;
    }

    goto LABEL_22;
  }

  if (v6 != 1)
  {
    if (v11 == 2 && (v7 | v8 | v10 | v9) == 0)
    {
      sub_22CE62A0C(*a1, v2, v5, v4, 2);
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 2;
      goto LABEL_28;
    }

    goto LABEL_22;
  }

  if (v11 != 1)
  {
LABEL_22:
    sub_22CE62924(*a2, *(a2 + 8), v10, v9, v11);
    sub_22CE62924(v3, v2, v5, v4, v6);
    sub_22CE62A0C(v3, v2, v5, v4, v6);
    v27 = v8;
    v28 = v7;
    v29 = v10;
    v30 = v9;
    v31 = v11;
LABEL_23:
    sub_22CE62A0C(v27, v28, v29, v30, v31);
    return 0;
  }

  v12 = v3 == v8 && v2 == v7;
  if (!v12 && (sub_22CE86194() & 1) == 0)
  {
    sub_22CE62924(v8, v7, v10, v9, 1);
    sub_22CE62924(v3, v2, v5, v4, 1);
    sub_22CE62A0C(v3, v2, v5, v4, 1);
    v27 = v8;
    v28 = v7;
    v29 = v10;
    v30 = v9;
    v31 = 1;
    goto LABEL_23;
  }

  if (v5 != v10 || v4 != v9)
  {
    v20 = sub_22CE86194();
    sub_22CE62924(v8, v7, v10, v9, 1);
    sub_22CE62924(v3, v2, v5, v4, 1);
    sub_22CE62A0C(v3, v2, v5, v4, 1);
    v21 = v8;
    v22 = v7;
    v23 = v10;
    v24 = v9;
    v25 = 1;
    goto LABEL_25;
  }

  sub_22CE62924(v8, v7, v5, v4, 1);
  sub_22CE62924(v3, v2, v5, v4, 1);
  sub_22CE62A0C(v3, v2, v5, v4, 1);
  v13 = v8;
  v14 = v7;
  v15 = v5;
  v16 = v4;
  v17 = 1;
LABEL_28:
  sub_22CE62A0C(v13, v14, v15, v16, v17);
  return 1;
}

uint64_t _s24SessionPushNotifications0B12SubscriptionV0D4TypeO8ActivityV2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v17 = *(a2 + 49);
  v18 = *(a1 + 49);
  v15 = *(a2 + 50);
  v16 = *(a1 + 50);
  if (*a1 == *a2 && a1[1] == *(a2 + 8) || (v12 = sub_22CE86194(), result = 0, (v12 & 1) != 0))
  {
    v24 = v2;
    v25 = v3;
    v26 = v4;
    v27 = v5;
    v28 = v6;
    v19 = v7;
    v20 = v8;
    v21 = v9;
    v22 = v10;
    v23 = v11;
    sub_22CE62924(v2, v3, v4, v5, v6);
    sub_22CE62924(v7, v8, v9, v10, v11);
    v14 = _s24SessionPushNotifications0B12SubscriptionV0D4TypeO8ActivityV0bE0O2eeoiySbAI_AItFZ_0(&v24, &v19);
    sub_22CE62A0C(v19, v20, v21, v22, v23);
    sub_22CE62A0C(v24, v25, v26, v27, v28);
    result = 0;
    if ((v14 & 1) != 0 && ((v18 ^ v17) & 1) == 0)
    {
      return v16 ^ v15 ^ 1u;
    }
  }

  return result;
}

uint64_t _s24SessionPushNotifications0B12SubscriptionV0D4TypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48) | (*(a1 + 50) << 16);
  v10 = *a2;
  v9 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = *(a2 + 48) | (*(a2 + 50) << 16);
  v14 = *(a2 + 32);
  v15 = *(a2 + 40);
  if ((v8 & 0x80000000) != 0)
  {
    if ((v13 & 0x80000000) != 0)
    {
      v48[0] = *a1;
      v48[1] = v2;
      v32 = v2;
      v48[2] = v4;
      v48[3] = v5;
      v48[4] = v7;
      v48[5] = v6;
      v49 = v8 & 0x1FF;
      v50 = BYTE2(v8) & 1;
      v45[0] = v10;
      v45[1] = v9;
      v45[2] = v11;
      v45[3] = v12;
      v45[4] = v14;
      v45[5] = v15;
      v38 = v11;
      v46 = v13 & 0x1FF;
      v47 = BYTE2(v13) & 1;
      v41 = v9;
      v43 = v10;
      v26 = v11;
      v27 = v12;
      v33 = v12;
      v28 = v5;
      v29 = v9;
      v30 = v8;
      sub_22CE449A4(v10, v9, v26, v27, v14, v15, v13);
      sub_22CE449A4(v3, v32, v4, v28, v7, v6, v30);
      sub_22CE449A4(v43, v29, v38, v33, v14, v15, v13);
      sub_22CE449A4(v3, v32, v4, v28, v7, v6, v30);
      v19 = _s24SessionPushNotifications0B12SubscriptionV0D4TypeO8ActivityV2eeoiySbAG_AGtFZ_0(v48, v45);
      sub_22CE62988(v3, v32, v4, v28, v7, v6, v30);
      sub_22CE62988(v43, v41, v38, v33, v14, v15, v13);
      sub_22CE62988(v43, v41, v38, v33, v14, v15, v13);
      sub_22CE62988(v3, v32, v4, v28, v7, v6, v30);
      return v19 & 1;
    }

    goto LABEL_6;
  }

  if ((v13 & 0x80000000) != 0)
  {
LABEL_6:
    v40 = *(a2 + 8);
    v42 = *a2;
    v44 = *(a2 + 32);
    v20 = *(a1 + 48) | (*(a1 + 50) << 16);
    v35 = *(a2 + 48) | (*(a2 + 50) << 16);
    v21 = *(a1 + 8);
    sub_22CE449A4(*a2, v40, v11, v12, v44, v15, v35);
    sub_22CE449A4(v3, v21, v4, v5, v7, v6, v20);
    sub_22CE62988(v3, v21, v4, v5, v7, v6, v20);
    sub_22CE62988(v42, v40, v11, v12, v44, v15, v35);
    v19 = 0;
    return v19 & 1;
  }

  v36 = *(a1 + 48) | (*(a1 + 50) << 16);
  v34 = *(a1 + 24);
  v39 = *(a1 + 32);
  v37 = *(a1 + 40);
  if (__PAIR128__(v2, v3) != __PAIR128__(v9, v10))
  {
    v22 = *a2;
    v23 = *(a2 + 8);
    v24 = *(a1 + 8);
    v31 = sub_22CE86194();
    sub_22CE449A4(v22, v23, v11, v12, v14, v15, v13);
    sub_22CE449A4(v3, v24, v4, v34, v39, v37, v36);
    sub_22CE62988(v3, v24, v4, v34, v39, v37, v36);
    sub_22CE62988(v22, v23, v11, v12, v14, v15, v13);
    return v31 & 1;
  }

  v16 = *(a2 + 24);
  v17 = *(a2 + 32);
  v18 = *(a1 + 8);
  sub_22CE449A4(v3, v2, v11, v16, v17, v15, v13);
  sub_22CE449A4(v3, v18, v4, v34, v7, v6, v36);
  sub_22CE62988(v3, v18, v4, v34, v7, v6, v36);
  sub_22CE62988(v3, v18, v11, v16, v17, v15, v13);
  v19 = 1;
  return v19 & 1;
}

uint64_t _s24SessionPushNotifications0B12SubscriptionV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v6 = a1[5];
  v5 = a1[6];
  v7 = a1[7];
  v8 = *(a1 + 66);
  v9 = *(a1 + 32);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
  v15 = *(a2 + 56);
  v16 = *(a2 + 66);
  v17 = *(a2 + 64);
  v34 = *(a2 + 67);
  v35 = *(a1 + 67);
  if (*a1 == *a2 && a1[1] == *(a2 + 8) || (v30 = *(a2 + 56), v31 = *(a2 + 40), v18 = a1[6], v32 = *(a2 + 32), v33 = *(a2 + 48), v19 = a1[2], v20 = a1[3], v28 = *(a2 + 24), v29 = *(a2 + 16), v21 = a1[4], v22 = a1[5], v23 = *(a1 + 66), v24 = sub_22CE86194(), v8 = v23, v5 = v18, v6 = v22, v11 = v28, v4 = v21, v10 = v29, v15 = v30, v3 = v20, v14 = v33, v2 = v19, v13 = v31, v12 = v32, v25 = v24, result = 0, (v25 & 1) != 0))
  {
    v44 = v2;
    v45 = v3;
    v46 = v4;
    v47 = v6;
    v48 = v5;
    v49 = v7;
    v50 = v9;
    v51 = (v9 | (v8 << 16)) >> 16;
    v36 = v10;
    v37 = v11;
    v38 = v12;
    v39 = v13;
    v40 = v14;
    v41 = v15;
    v43 = (v17 | (v16 << 16)) >> 16;
    v42 = v17;
    sub_22CE449A4(v2, v3, v4, v6, v5, v7, v9 | (v8 << 16));
    sub_22CE449A4(v10, v11, v12, v13, v14, v15, v17 | (v16 << 16));
    v27 = _s24SessionPushNotifications0B12SubscriptionV0D4TypeO2eeoiySbAE_AEtFZ_0(&v44, &v36);
    sub_22CE62988(v36, v37, v38, v39, v40, v41, v42 | (v43 << 16));
    sub_22CE62988(v44, v45, v46, v47, v48, v49, v50 | (v51 << 16));
    return v27 & (v35 == v34);
  }

  return result;
}