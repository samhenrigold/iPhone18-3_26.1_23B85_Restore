void sub_2370E47CC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_2370F42F8();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_2370E4830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92A40, &qword_2370F6840);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = sub_2370F4568();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v4;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a3;
  v13[8] = a4;
  v14 = v4;

  sub_2370E443C(0, 0, v11, &unk_2370F68D8, v13);
}

uint64_t sub_2370E496C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = swift_task_alloc();
  *(v8 + 16) = v13;
  *v13 = v8;
  v13[1] = sub_2370CD798;

  return sub_2370E609C(a5, a6, a7, a8);
}

uint64_t sub_2370E4A30(void *a1, int a2, uint64_t a3, void *aBlock)
{
  v5 = _Block_copy(aBlock);
  v6 = sub_2370F4458();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = a1;
  sub_2370E4830(v6, v8, sub_2370EA474, v9);
}

uint64_t sub_2370E4AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2370E4B0C, 0, 0);
}

uint64_t sub_2370E4B0C()
{
  v1 = *(*(v0 + 40) + *((*MEMORY[0x277D85000] & **(v0 + 40)) + 0x70));
  *(v0 + 48) = v1;
  return MEMORY[0x2822009F8](sub_2370E4B54, v1, 0);
}

uint64_t sub_2370E4B7C()
{
  type metadata accessor for OSTransaction(0);
  swift_allocObject();
  v0[7] = sub_2370DF688("synchronize", 11, 2);
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_2370E4C44;
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];

  return sub_2370E4F98(v3, v4, v5, v2);
}

uint64_t sub_2370E4C44()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_2370E4DC8;
  }

  else
  {
    v2 = sub_2370E4D58;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2370E4D58()
{
  sub_2370DFAA8();

  v1 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_2370E4F7C, v1, 0);
}

uint64_t sub_2370E4DC8()
{
  v1 = v0[9];
  sub_2370DFAA8();

  v2 = v1;
  v3 = sub_2370F4368();
  v4 = sub_2370F4608();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[9];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2370CC000, v3, v4, "handleSynchronize - caught error %{public}@", v6, 0xCu);
    sub_2370E9CE8(v7, &qword_27DE92780, &unk_2370F55D0);
    MEMORY[0x2383C5B60](v7, -1, -1);
    MEMORY[0x2383C5B60](v6, -1, -1);
  }

  v10 = v0[9];
  v11 = v0[3];

  v12 = v10;
  v11(v10);

  v13 = v0[6];

  return MEMORY[0x2822009F8](sub_2370E4F7C, v13, 0);
}

uint64_t sub_2370E4F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2370E4FBC, 0, 0);
}

uint64_t sub_2370E4FBC()
{
  sub_2370E51F4(*(v0 + 24));
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_2370E5058;
  v2 = *(v0 + 24);

  return sub_2370E53E4(v2);
}

uint64_t sub_2370E5058()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2370E5188, 0, 0);
  }
}

uint64_t sub_2370E5188()
{
  (*(v0 + 32))(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2370E51F4(void *a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = [a1 userInfo];
  v6 = sub_2370F4438();

  v7 = MEMORY[0x277D84F90];
  sub_2370D68CC(MEMORY[0x277D84F90]);

  sub_2370D68CC(v7);
  v8 = [a1 displayName];
  v9 = sub_2370F4458();
  v11 = v10;

  v17[3] = &type metadata for CustomContactProviderDomain;
  v17[4] = &protocol witness table for CustomContactProviderDomain;
  v12 = swift_allocObject();
  v17[0] = v12;
  strcpy((v12 + 16), "defaultDomain");
  *(v12 + 30) = -4864;
  *(v12 + 32) = v9;
  *(v12 + 40) = v11;
  *(v12 + 48) = v6;
  v13 = *((v4 & v3) + 0x58);
  v14 = *(v13 + 24);
  v15 = *((v4 & v3) + 0x50);

  v14(v17, v15, v13);
  __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_2370E53E4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2370E5404, 0, 0);
}

uint64_t sub_2370E5404()
{
  v31 = v0;
  v1 = *(v0 + 24);
  v2 = [*(v0 + 16) synchronizationReason];
  *(v0 + 32) = v2;
  *(v0 + 40) = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  v3 = v2;
  v4 = sub_2370F4368();
  v5 = sub_2370F4608();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v30 = v7;
    *v6 = 136446210;
    v8 = sub_2370F4458();
    v10 = sub_2370EE0B8(v8, v9, &v30);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2370CC000, v4, v5, "Synchronize reason: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x2383C5B60](v7, -1, -1);
    MEMORY[0x2383C5B60](v6, -1, -1);
  }

  v11 = sub_2370F4458();
  v13 = v12;
  if (sub_2370F4458() == v11 && v14 == v13)
  {
    goto LABEL_10;
  }

  v16 = sub_2370F4858();

  if (v16)
  {
LABEL_11:

LABEL_12:
    v18 = sub_2370F4368();
    v19 = sub_2370F4608();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2370CC000, v18, v19, "Will sync contacts", v20, 2u);
      MEMORY[0x2383C5B60](v20, -1, -1);
    }

    v21 = swift_task_alloc();
    *(v0 + 48) = v21;
    *v21 = v0;
    v21[1] = sub_2370E57F8;

    return sub_2370E5A54();
  }

  if (sub_2370F4458() == v11 && v17 == v13)
  {
    goto LABEL_10;
  }

  v23 = sub_2370F4858();

  if (v23)
  {
    goto LABEL_11;
  }

  if (sub_2370F4458() == v11 && v24 == v13)
  {
LABEL_10:

    goto LABEL_11;
  }

  v25 = sub_2370F4858();

  if (v25)
  {
    goto LABEL_12;
  }

  v26 = sub_2370F4368();
  v27 = sub_2370F4608();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_2370CC000, v26, v27, "Unknown synchronize reason", v28, 2u);
    MEMORY[0x2383C5B60](v28, -1, -1);
  }

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_2370E57F8()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_2370E59F0;
  }

  else
  {
    v2 = sub_2370E590C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2370E590C(uint64_t a1)
{
  v2 = sub_2370F4368();
  v3 = sub_2370F4608();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2370CC000, v2, v3, "Did sync contacts", v4, 2u);
    MEMORY[0x2383C5B60](v4, -1, -1);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_2370E59F0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2370E5A54()
{
  *(v1 + 168) = v0;
  *(v1 + 176) = *MEMORY[0x277D85000] & *v0;
  return MEMORY[0x2822009F8](sub_2370E5AAC, 0, 0);
}

uint64_t sub_2370E5AAC()
{
  v1 = type metadata accessor for ProviderStore(0);
  swift_allocObject();
  v2 = sub_2370EA640();
  v0[23] = v2;
  if (v2)
  {
    v3 = v2;
    v4 = v0[21];
    v5 = v0[22];
    v6 = MEMORY[0x277D85000];
    v7 = *&v4[*((*MEMORY[0x277D85000] & *v4) + 0x70)];
    v0[24] = v7;
    type metadata accessor for SyncManager();
    inited = swift_initStackObject();
    v0[25] = inited;
    *(inited + 40) = v1;
    *(inited + 48) = &off_284A367E0;
    *(inited + 16) = v3;
    *(inited + 56) = 0;
    *(inited + 64) = v7;
    swift_beginAccess();
    *(inited + 56) = 1;
    v9 = *((*v6 & *v4) + 0x68);
    v10 = *(v5 + 80);
    v0[14] = v10;
    v0[15] = *(*(v5 + 88) + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 11);
    (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, &v4[v9], v10);
    v0[19] = 0x746F6F722ELL;
    v0[20] = 0xE500000000000000;

    v12 = swift_task_alloc();
    v0[26] = v12;
    *v12 = v0;
    v12[1] = sub_2370E5DD4;

    return sub_2370E094C(v0 + 19, (v0 + 11));
  }

  else
  {
    v14 = sub_2370F4368();
    v15 = sub_2370F4608();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2370CC000, v14, v15, "Missing Contact Provider contact store", v16, 2u);
      MEMORY[0x2383C5B60](v16, -1, -1);
    }

    v17 = v0[22];

    type metadata accessor for ExtensionHost.HostError(0, *(v17 + 80), *(v17 + 88), v18);
    swift_getWitnessTable();
    swift_allocError();
    *v19 = 1;
    swift_willThrow();
    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_2370E5DD4()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_2370E6014;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v2 + 88));
    v3 = sub_2370E5F00;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2370E5F00(uint64_t a1)
{
  v2 = sub_2370F4368();
  v3 = sub_2370F4608();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2370CC000, v2, v3, "Synced contacts", v4, 2u);
    MEMORY[0x2383C5B60](v4, -1, -1);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_2370E6014()
{
  v1 = v0[25];

  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v1 + 16));

  __swift_destroy_boxed_opaque_existential_1(v0 + 11);
  v2 = v0[1];

  return v2();
}

uint64_t sub_2370E609C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  return MEMORY[0x2822009F8](sub_2370E60C4, 0, 0);
}

uint64_t sub_2370E60C4()
{
  v11 = v0;
  v1 = MEMORY[0x277D85000];

  v2 = sub_2370F4368();
  v3 = sub_2370F4608();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[6];
    v4 = v0[7];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_2370EE0B8(v5, v4, &v10);
    _os_log_impl(&dword_2370CC000, v2, v3, "ExtensionHost.handleInvalidate() for %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x2383C5B60](v7, -1, -1);
    MEMORY[0x2383C5B60](v6, -1, -1);
  }

  v8 = *(v0[10] + *((*v1 & *v0[10]) + 0x70));
  v0[11] = v8;

  return MEMORY[0x2822009F8](sub_2370E6260, v8, 0);
}

uint64_t sub_2370E6288()
{
  v1 = v0[10];
  swift_beginAccess();
  v2 = swift_allocObject();
  v0[12] = v2;
  *(v2 + 16) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_2370E63CC;

  return (sub_2370E3BDC)();
}

uint64_t sub_2370E63CC()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_2370E6798;
  }

  else
  {

    v2 = sub_2370E64E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2370E64E8()
{
  v1 = v0[10];
  v2 = swift_allocObject();
  v0[15] = v2;
  *(v2 + 16) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_2370E6614;

  return (sub_2370E3BDC)();
}

uint64_t sub_2370E6614()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_2370E69C8;
  }

  else
  {

    v2 = sub_2370E6730;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2370E6730()
{
  (*(v0 + 64))(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2370E6798()
{
  v1 = *(v0 + 112);

  *(v0 + 40) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92778, &qword_2370F5A60);
  if (swift_dynamicCast())
  {

    sub_2370CFD88();
    v1 = swift_allocError();
    *v3 = 9;
  }

  if (qword_27DE92480 != -1)
  {
    swift_once();
  }

  v4 = sub_2370F4388();
  __swift_project_value_buffer(v4, qword_27DE93E70);
  v5 = v1;
  v6 = sub_2370F4368();
  v7 = sub_2370F4608();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2370CC000, v6, v7, "ExtensionHost.handleInvalidate() error %{public}@", v8, 0xCu);
    sub_2370E9CE8(v9, &qword_27DE92780, &unk_2370F55D0);
    MEMORY[0x2383C5B60](v9, -1, -1);
    MEMORY[0x2383C5B60](v8, -1, -1);
  }

  v12 = *(v0 + 64);

  v13 = v1;
  v12(v1);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_2370E69C8()
{
  v1 = *(v0 + 136);

  *(v0 + 40) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92778, &qword_2370F5A60);
  if (swift_dynamicCast())
  {

    sub_2370CFD88();
    v1 = swift_allocError();
    *v3 = 9;
  }

  if (qword_27DE92480 != -1)
  {
    swift_once();
  }

  v4 = sub_2370F4388();
  __swift_project_value_buffer(v4, qword_27DE93E70);
  v5 = v1;
  v6 = sub_2370F4368();
  v7 = sub_2370F4608();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2370CC000, v6, v7, "ExtensionHost.handleInvalidate() error %{public}@", v8, 0xCu);
    sub_2370E9CE8(v9, &qword_27DE92780, &unk_2370F55D0);
    MEMORY[0x2383C5B60](v9, -1, -1);
    MEMORY[0x2383C5B60](v8, -1, -1);
  }

  v12 = *(v0 + 64);

  v13 = v1;
  v12(v1);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_2370E6BF8(uint64_t a1, void *a2)
{
  v3 = *((*MEMORY[0x277D85000] & *a2) + 0x58);
  v4 = *((*MEMORY[0x277D85000] & *a2) + 0x50);
  v7 = (*(v3 + 32) + **(v3 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2370CD798;

  return v7(v4, v3);
}

uint64_t sub_2370E6D84()
{
  v1 = *(*(v0 + 16) + *((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x70));
  *(v0 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2370E6DCC, v1, 0);
}

uint64_t sub_2370E6DF4()
{
  if (*(v0 + 32) == 1)
  {
    v1 = *(v0 + 24);
    sleep(1u);

    return MEMORY[0x2822009F8](sub_2370E6EA0, v1, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_2370E6EC8()
{
  if (*(v0 + 33) == 1)
  {
    v1 = *(v0 + 24);
    sleep(1u);

    return MEMORY[0x2822009F8](sub_2370E6EA0, v1, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

id sub_2370E6FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ExtensionHost(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_2370E7024(char *a1)
{
  v2 = *a1;
  v3 = MEMORY[0x277D85000];
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *a1) + 0x60);
  v6 = sub_2370F4388();
  (*(*(v6 - 8) + 8))(&a1[v5], v6);
  (*(*(*((v4 & v2) + 0x50) - 8) + 8))(&a1[*((*v3 & *a1) + 0x68)]);
}

uint64_t sub_2370E7154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  v7 = sub_2370F4778();
  v6[7] = v7;
  v8 = *(v7 - 8);
  v6[8] = v8;
  v6[9] = *(v8 + 64);
  v6[10] = swift_task_alloc();
  v9 = sub_2370F4758();
  v6[11] = v9;
  v10 = *(v9 - 8);
  v6[12] = v10;
  v6[13] = *(v10 + 64);
  v6[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92A40, &qword_2370F6840);
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2370E72C0, 0, 0);
}

uint64_t sub_2370E72C0()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[11];
  v20 = v0[10];
  v21 = v0[13];
  v16 = v0[8];
  v17 = v0[14];
  v18 = v0[6];
  v19 = v0[7];
  v4 = v0[4];
  v15 = v0[5];
  v5 = v0[3];
  v6 = sub_2370F4568();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v5;
  v8[5] = v4;

  sub_2370E8DDC(v1, &unk_2370F6850, v8);
  sub_2370E9CE8(v1, &qword_27DE92A40, &qword_2370F6840);
  v7(v1, 1, 1, v6);
  (*(v2 + 16))(v17, v15, v3);
  (*(v16 + 16))(v20, v18, v19);
  v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v10 = (v21 + *(v16 + 80) + v9) & ~*(v16 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  (*(v2 + 32))(v11 + v9, v17, v3);
  (*(v16 + 32))(v11 + v10, v20, v19);
  sub_2370E8DDC(v1, &unk_2370F6860, v11);
  sub_2370E9CE8(v1, &qword_27DE92A40, &qword_2370F6840);
  v12 = swift_task_alloc();
  v0[16] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92A48, &qword_2370F6868);
  *v12 = v0;
  v12[1] = sub_2370E759C;

  return MEMORY[0x2822004D0](v0 + 18, 0, 0, v13);
}

uint64_t sub_2370E759C()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_2370E7804;
  }

  else
  {
    v2 = sub_2370E76B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2370E76B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92778, &qword_2370F5A60);
  sub_2370F45B8();
  if (*(v0 + 144))
  {
    sub_2370F4548();
    sub_2370E9AA4(&qword_27DE92A50, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    swift_allocError();
    sub_2370F4418();
    swift_willThrow();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2370E7804()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2370E7884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92A68, &qword_2370F6870);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2370E7924, 0, 0);
}

uint64_t sub_2370E7924()
{
  v1 = *(v0 + 72);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92A70, &qword_2370F6878);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92A78, &qword_2370F6880);
  v3 = swift_allocObject();
  *(v0 + 80) = v3;
  *(v3 + ((*(*v3 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_2370E9BB0(v1, v3 + *(*v3 + *MEMORY[0x277D841D0] + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DE92A80, &qword_2370F6888);
  inited = swift_initStackObject();
  *(v0 + 88) = inited;
  *(inited + 24) = 0;
  *(inited + 16) = 0;
  sub_2370F4588();
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  v6 = *(v0 + 56);
  *(v5 + 16) = v3;
  *(v5 + 24) = inited;
  *(v5 + 32) = v6;
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *(v7 + 16) = inited;
  *(v7 + 24) = v3;
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_2370E7BC4;
  v9 = *(v0 + 48);
  v10 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v9, &unk_2370F6898, v5, sub_2370E9CE0, v7, 0, 0, v10);
}

uint64_t sub_2370E7BC4()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_2370E7D74;
  }

  else
  {

    v2 = sub_2370E7CE8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2370E7CE8()
{
  swift_setDeallocating();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2370E7D74()
{
  swift_setDeallocating();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2370E7E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2370E7E3C, 0, 0);
}

uint64_t sub_2370E7E3C()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 40);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_2370E7F34;
  v4 = *(v0 + 16);
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD00000000000001CLL, 0x80000002370FA020, sub_2370E9D48, v1, v5);
}

uint64_t sub_2370E7F34()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2370E8070, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2370E8070()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_2370E80D4(uint64_t a1, uint64_t a2, os_unfair_lock_s *a3)
{
  v5 = *(*a2 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*a2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a2 + v6));
  sub_2370E9D54(a2 + v5);
  os_unfair_lock_unlock((a2 + v6));
  os_unfair_lock_lock(a3 + 6);
  sub_2370E9D70(&a3[4]);
  os_unfair_lock_unlock(a3 + 6);
}

uint64_t sub_2370E81AC(uint64_t a1, uint64_t a2)
{
  sub_2370E9CE8(a1, &qword_27DE92A68, &qword_2370F6870);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92A70, &qword_2370F6878);
  v5 = *(v4 - 8);
  (*(v5 + 16))(a1, a2, v4);
  return (*(v5 + 56))(a1, 0, 1, v4);
}

uint64_t sub_2370E827C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92A40, &qword_2370F6840);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;

  v11 = sub_2370F4568();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = a4;

  result = sub_2370E443C(0, 0, v10, &unk_2370F68A8, v12);
  *a1 = result;
  return result;
}

uint64_t sub_2370E83B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92A70, &qword_2370F6878);
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2370E8488, 0, 0);
}

uint64_t sub_2370E8488()
{
  sub_2370F4588();
  v3 = (*(v0 + 16) + **(v0 + 16));
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_2370E8674;

  return v3();
}

uint64_t sub_2370E8674()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_2370E88F8;
  }

  else
  {
    v2 = sub_2370E8788;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2370E8788()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v4 = *(*v3 + *MEMORY[0x277D841D0] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  if (!(*(v2 + 48))(v3 + v4, 1, v1))
  {
    v7 = v0[6];
    v6 = v0[7];
    v8 = v0[5];
    (*(v7 + 16))(v6, v3 + v4, v8);
    sub_2370F4528();
    (*(v7 + 8))(v6, v8);
  }

  v9 = v0[5];
  v10 = v0[6];
  sub_2370E9CE8(v3 + v4, &qword_27DE92A68, &qword_2370F6870);
  (*(v10 + 56))(v3 + v4, 1, 1, v9);
  os_unfair_lock_unlock((v3 + v5));

  v11 = v0[1];

  return v11();
}

uint64_t sub_2370E88F8()
{
  v1 = v0[9];
  v2 = v0[4];
  *(swift_task_alloc() + 16) = v1;
  v3 = *(*v2 + *MEMORY[0x277D841D0] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v4));
  sub_2370E9F90(v2 + v3);
  os_unfair_lock_unlock((v2 + v4));

  v5 = v0[1];

  return v5();
}

uint64_t sub_2370E8A0C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92A70, &qword_2370F6878);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  if (!(*(v5 + 48))(a1, 1, v4))
  {
    (*(v5 + 16))(v7, a1, v4);
    v10[1] = a2;
    v8 = a2;
    sub_2370F4518();
    (*(v5 + 8))(v7, v4);
  }

  sub_2370E9CE8(a1, &qword_27DE92A68, &qword_2370F6870);
  return (*(v5 + 56))(a1, 1, 1, v4);
}

void sub_2370E8B84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92A70, &qword_2370F6878);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  os_unfair_lock_lock((a1 + 24));
  if (*(a1 + 16))
  {
    sub_2370F4578();
  }

  os_unfair_lock_unlock((a1 + 24));
  v8 = *(*a2 + *MEMORY[0x277D841D0] + 16);
  v9 = (*(*a2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a2 + v9));
  if (!(*(v5 + 48))(a2 + v8, 1, v4))
  {
    (*(v5 + 16))(v7, a2 + v8, v4);
    sub_2370F4548();
    sub_2370E9AA4(&qword_27DE92A50, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    v10 = swift_allocError();
    sub_2370F4418();
    v11[1] = v10;
    sub_2370F4518();
    (*(v5 + 8))(v7, v4);
  }

  sub_2370E9CE8(a2 + v8, &qword_27DE92A68, &qword_2370F6870);
  (*(v5 + 56))(a2 + v8, 1, 1, v4);
  os_unfair_lock_unlock((a2 + v9));
}

uint64_t sub_2370E8DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92A40, &qword_2370F6840);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v18 - v8;
  sub_2370E9B40(a1, v18 - v8);
  v10 = sub_2370F4568();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_2370E9CE8(v9, &qword_27DE92A40, &qword_2370F6840);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_2370F4508();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_2370F4558();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t sub_2370E8FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x2822009F8](sub_2370E8FDC, 0, 0);
}

uint64_t sub_2370E8FDC()
{
  sub_2370F4588();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = sub_2370F4778();
  v3 = sub_2370E9AA4(&qword_27DE92A58, MEMORY[0x277D85960], MEMORY[0x277D85968]);
  *v1 = v0;
  v1[1] = sub_2370E9120;
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);

  return MEMORY[0x282200488](v4, v0 + 16, v5, v2, v3);
}

uint64_t sub_2370E9120()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_2370E92BC;
  }

  else
  {
    v2 = sub_2370E9234;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2370E9234()
{
  sub_2370E9AEC();
  swift_allocError();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2370E92D4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2370E930C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2370D0220;

  return sub_2370E6BF8(a1, v4);
}

uint64_t sub_2370E93AC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2370E94A4;

  return v6(a1);
}

uint64_t sub_2370E94A4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2370E959C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2370D0220;

  return sub_2370E6D64(a1, v4);
}

uint64_t sub_2370E963C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_2370D0220;

  return sub_2370E7154(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_2370E9704()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2370E9744(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2370D0220;

  return sub_2370E7884(a1, v4, v5, v7, v6);
}

uint64_t sub_2370E9804()
{
  v1 = sub_2370F4758();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_2370F4778();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_2370E9954(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2370F4758() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_2370F4778() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2370CD798;

  return sub_2370E8FBC(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_2370E9AA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2370E9AEC()
{
  result = qword_27DE92A60;
  if (!qword_27DE92A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE92A60);
  }

  return result;
}

uint64_t sub_2370E9B40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92A40, &qword_2370F6840);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2370E9BB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92A68, &qword_2370F6870);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2370E9C20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2370D0220;

  return sub_2370E7E14(a1, v4, v5, v7, v6);
}

uint64_t sub_2370E9CE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2370E9D90()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2370E9DD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2370CD798;

  return sub_2370E83B8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2370E9EA0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2370E9ED8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2370D0220;

  return sub_2370E93AC(a1, v4);
}

id sub_2370E9FC4(uint64_t a1)
{
  v3 = *v1;
  v4 = MEMORY[0x277D85000];
  v5 = *MEMORY[0x277D85000];
  sub_2370F4378();
  v6 = *((v5 & v3) + 0x50);
  (*(*(v6 - 8) + 16))(&v1[*((*v4 & *v1) + 0x68)], a1, v6);
  type metadata accessor for ExtensionState();
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v7 + 112) = 0;
  *&v1[*((*v4 & *v1) + 0x70)] = v7;
  v9 = type metadata accessor for ExtensionHost(0, v6, *((v5 & v3) + 0x58), v8);
  v11.receiver = v1;
  v11.super_class = v9;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_2370EA174()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2370EA1BC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2370EA20C(uint64_t a1)
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
  v11[1] = sub_2370D0220;

  return sub_2370E496C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2370EA2E8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2370EA338(uint64_t a1)
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
  v10[1] = sub_2370D0220;

  return sub_2370E4388(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_2370EA43C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t dispatch thunk of ProviderStoreProtocol.add(_:itemIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 32))(a1, a2, a3);
}

{
  return (*(a4 + 48))(a1, a2, a3);
}

uint64_t sub_2370EA640()
{
  v1 = v0;
  v47 = *MEMORY[0x277D85DE8];
  v2 = sub_2370F4388();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC15ContactProvider13ProviderStore_logger;
  sub_2370F4378();
  v7 = OBJC_IVAR____TtC15ContactProvider13ProviderStore_contactProviderSupport;
  v8 = objc_allocWithZone(MEMORY[0x277CBDA98]);
  v9 = sub_2370F4448();
  v10 = [v8 initWithDomainIdentifier_];

  *(v1 + v7) = v10;
  (*(v3 + 16))(v5, v1 + v6, v2);
  v11 = sub_2370F4368();
  v12 = sub_2370F4608();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2370CC000, v11, v12, "ProviderStore.init", v13, 2u);
    MEMORY[0x2383C5B60](v13, -1, -1);
  }

  v14 = *(v3 + 8);
  v14(v5, v2);
  v15 = [*(v1 + v7) contactStore];
  if (!v15)
  {
    goto LABEL_16;
  }

  v16 = v15;
  v17 = [*(v1 + v7) domainContainerIdentifier];
  if (!v17)
  {
    goto LABEL_15;
  }

  v42 = v6;
  v18 = v17;
  v19 = sub_2370F4458();
  v21 = v20;

  v22 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE927E8, &qword_2370F5A58);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2370F5610;
  v41 = v19;
  *(v23 + 32) = v19;
  *(v23 + 40) = v21;

  v24 = sub_2370F44C8();

  v25 = [v22 predicateForContainersWithIdentifiers_];

  *&v44 = 0;
  v26 = [v16 containersMatchingPredicate:v25 error:&v44];

  v27 = v44;
  if (!v26)
  {
    v37 = v44;

    v38 = sub_2370F4308();

    swift_willThrow();
    v6 = v42;
LABEL_16:
    v14((v1 + v6), v2);

    type metadata accessor for ProviderStore(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  sub_2370DE668(0, &qword_27DE92BE8, 0x277CBDAD8);
  v28 = sub_2370F44D8();
  v29 = v27;

  if (v28 >> 62)
  {
    v39 = sub_2370F47A8();
    v6 = v42;
    if (v39)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  v6 = v42;
  if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_14:

LABEL_15:

    goto LABEL_16;
  }

LABEL_8:
  if ((v28 & 0xC000000000000001) != 0)
  {
    v30 = MEMORY[0x2383C5290](0, v28);
  }

  else
  {
    if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v30 = *(v28 + 32);
  }

  v31 = v30;

  *(v1 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_store) = v16;
  v32 = (v1 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_containerIdentifier);
  *v32 = v41;
  v32[1] = v21;
  v33 = v16;
  [v31 mutableCopy];
  sub_2370F4678();
  swift_unknownObjectRelease();
  sub_2370DE668(0, &unk_27DE92BF0, 0x277CBDB48);
  swift_dynamicCast();
  *(v1 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_container) = v43;
  v34 = [objc_allocWithZone(MEMORY[0x277CBDBA0]) init];
  *(v1 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_saveRequest) = v34;
  *(v1 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_isContainerDirty) = 0;
  v35 = type metadata accessor for StampedeManager(0);
  swift_allocObject();
  v36 = StampedeManager.init(notifyBatchSize:waitDivisor:)(1000, 350);
  v45 = v35;
  v46 = &protocol witness table for StampedeManager;

  *&v44 = v36;
  sub_2370CFE24(&v44, v1 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_stampedeManager);
  return v1;
}

uint64_t sub_2370EABF4(uint64_t result)
{
  if (*(result + 16))
  {
    v2 = v1;
    v3 = result;
    sub_2370EAF54(result, v1);
    v5 = v4;
    v27 = MEMORY[0x277D84F98];

    sub_2370EF570(v3, &v27);

    v6 = v27;
    if (qword_27DE92488 != -1)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v7 = sub_2370ECD70(v5, qword_27DE92B10);

      v27 = MEMORY[0x277D84F90];

      sub_2370EF8C4(v7, v6, v2, &v27);

      swift_bridgeObjectRelease_n();

      sub_2370EB7E4(v3, v27);
      v6 = v8;
      v26 = *(v8 + 16);
      if (!v26)
      {
        break;
      }

      v9 = 0;
      v24 = OBJC_IVAR____TtC15ContactProvider13ProviderStore_saveRequest;
      v23 = (v2 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_stampedeManager);
      v3 = (v8 + 56);
      v25 = v8;
      while (v9 < *(v6 + 2))
      {
        v11 = *(v3 - 3);
        v10 = *(v3 - 2);
        v12 = *(v3 - 1);
        if (*v3)
        {
          v13 = v11;

          v14 = sub_2370F4368();
          v15 = sub_2370F45F8();
          if (os_log_type_enabled(v14, v15))
          {
            v5 = swift_slowAlloc();
            *v5 = 0;
            _os_log_impl(&dword_2370CC000, v14, v15, "update contact items - failed to add an item", v5, 2u);
            MEMORY[0x2383C5B60](v5, -1, -1);
          }

          sub_2370D2DE0(v11, v10, v12);
        }

        else
        {
          sub_2370DC8F8(*(v3 - 3), *(v3 - 2), *(v3 - 1));
          v14 = v11;

          v16 = sub_2370F4448();
          [v14 setExternalUUID:v16];

          v17 = v2;
          v18 = *(v2 + v24);
          v19 = sub_2370F4448();
          [v18 addContact:v14 toContainerWithIdentifier:v19];

          v5 = v23[3];
          v20 = v23[4];
          __swift_project_boxed_opaque_existential_1(v23, v5);
          v21 = *(v20 + 8);
          v22 = v20;
          v2 = v17;
          v6 = v25;
          v21(v5, v22);
          sub_2370D2DE0(v11, v10, v12);
        }

        ++v9;

        v3 += 32;
        if (v26 == v9)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_15:
      swift_once();
    }

LABEL_12:
  }

  return result;
}

void sub_2370EAF54(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = 0;
    v5 = a1 + 56;
    v22 = MEMORY[0x277D84F90];
    v21 = a1 + 56;
    do
    {
      v6 = (v5 + 32 * v4);
      for (i = v4; ; ++i)
      {
        if (i >= v2)
        {
          __break(1u);
LABEL_18:
          __break(1u);
          return;
        }

        v4 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_18;
        }

        v9 = *(v6 - 2);
        v8 = *(v6 - 1);
        if ((*v6 & 1) == 0)
        {
          break;
        }

        v23 = i + 1;
        v10 = *(v6 - 3);
        v11 = v10;

        v12 = sub_2370F4368();
        v13 = sub_2370F45F8();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = v2;
          v15 = a2;
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&dword_2370CC000, v12, v13, "update contact items - failed to map a contact's identifier", v16, 2u);
          v17 = v16;
          a2 = v15;
          v2 = v14;
          MEMORY[0x2383C5B60](v17, -1, -1);
        }

        sub_2370D2DE0(v10, v9, v8);

        v6 += 32;
        if (v23 == v2)
        {
          return;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_2370EDE1C(0, *(v22 + 2) + 1, 1, v22);
      }

      v5 = v21;
      v19 = *(v22 + 2);
      v18 = *(v22 + 3);
      if (v19 >= v18 >> 1)
      {
        v22 = sub_2370EDE1C((v18 > 1), v19 + 1, 1, v22);
      }

      *(v22 + 2) = v19 + 1;
      v20 = &v22[16 * v19];
      *(v20 + 4) = v9;
      *(v20 + 5) = v8;
    }

    while (v4 != v2);
  }
}

void sub_2370EB14C(id *a1, uint64_t a2, uint64_t a3, char **a4)
{
  v7 = *a1;
  v8 = [*a1 externalUUID];
  if (v8)
  {
    v9 = v8;
    v10 = sub_2370F4458();
    v12 = v11;

    if (*(a2 + 16))
    {
      v13 = sub_2370EE660(v10, v12);
      if (v14)
      {
        v15 = *(*(a2 + 56) + 8 * v13);
        v16 = sub_2370EB490(v15, v7);
        if (v16)
        {
          v17 = v16;
          v18 = *(a3 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_saveRequest);
          [v17 mutableCopy];
          sub_2370F4678();
          swift_unknownObjectRelease();
          sub_2370DE668(0, &qword_27DE928F8, 0x277CBDB38);
          swift_dynamicCast();
          [v18 updateContact_];

          v19 = (a3 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_stampedeManager);
          v20 = *(a3 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_stampedeManager + 24);
          v21 = v19[4];
          __swift_project_boxed_opaque_existential_1(v19, v20);
          (*(v21 + 16))(v20, v21);
          v22 = *a4;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *a4 = v22;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v22 = sub_2370EDF28(0, *(v22 + 2) + 1, 1, v22);
            *a4 = v22;
          }

          v25 = *(v22 + 2);
          v24 = *(v22 + 3);
          if (v25 >= v24 >> 1)
          {
            *a4 = sub_2370EDF28((v24 > 1), v25 + 1, 1, v22);
          }

          v26 = *a4;
          *(v26 + 2) = v25 + 1;
          v27 = &v26[16 * v25];
          *(v27 + 4) = v10;
          *(v27 + 5) = v12;
        }

        else
        {
        }

        return;
      }
    }
  }

  v28 = v7;
  v29 = sub_2370F4368();
  v30 = sub_2370F45F8();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v39[0] = v32;
    *v31 = 136446210;
    v33 = [v28 externalUUID];
    if (v33)
    {
      v34 = v33;
      v35 = sub_2370F4458();
      v37 = v36;
    }

    else
    {
      v37 = 0xE500000000000000;
      v35 = 0x3E6C696E3CLL;
    }

    v38 = sub_2370EE0B8(v35, v37, v39);

    *(v31 + 4) = v38;
    _os_log_impl(&dword_2370CC000, v29, v30, "update contact items - failed find update contact for identifier %{public}s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x2383C5B60](v32, -1, -1);
    MEMORY[0x2383C5B60](v31, -1, -1);
  }
}

id sub_2370EB490(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CBDA68]) init];
  [v4 setIgnoreUnavailableKeys_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92BC0, &qword_2370F6AB0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2370F69C0;
  v6 = *MEMORY[0x277CBD010];
  v7 = *MEMORY[0x277CBCFF0];
  *(v5 + 32) = *MEMORY[0x277CBD010];
  *(v5 + 40) = v7;
  v8 = v6;
  v9 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92B90, &qword_2370F6A90);
  v10 = sub_2370F44C8();

  [v4 setIgnoredKeys_];

  sub_2370DE668(0, &qword_27DE92BC8, 0x277CBDA60);
  v11 = v4;
  v12 = a1;
  v13 = a2;
  v14 = sub_2370EF7E8(a2, a1, v4);

  v15 = v14;
  v16 = sub_2370F4368();
  v17 = sub_2370F4608();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    *(v18 + 4) = v15;
    *v19 = v15;
    v20 = v15;
    _os_log_impl(&dword_2370CC000, v16, v17, "update contact items - contact diff: %@", v18, 0xCu);
    sub_2370D01B8(v19);
    MEMORY[0x2383C5B60](v19, -1, -1);
    MEMORY[0x2383C5B60](v18, -1, -1);
  }

  result = [v15 contactByApplyingUpdatesToContact_];
  if (result)
  {
    v22 = result;

    return v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2370EB7E4(uint64_t a1, uint64_t a2)
{

  v4 = sub_2370EF9C8(a2);

  v5 = *(a1 + 16);
  if (!v5)
  {
LABEL_25:

    return;
  }

  v6 = 0;
  v30 = a1 + 32;
  v28 = MEMORY[0x277D84F90];
  v7 = v4 + 56;
  v29 = *(a1 + 16);
  while (v6 < v5)
  {
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_27;
    }

    v9 = v30 + 32 * v6;
    v11 = *v9;
    v10 = *(v9 + 8);
    v12 = *(v9 + 16);
    ++v6;
    if (*(v9 + 24))
    {
      v13 = v11;

      v14 = sub_2370F4368();
      v15 = sub_2370F45F8();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_2370CC000, v14, v15, "update contact items - failed filter an add item", v16, 2u);
        MEMORY[0x2383C5B60](v16, -1, -1);
      }

      sub_2370D2DE0(v11, v10, v12);

LABEL_24:
      v5 = v29;
      if (v8 == v29)
      {
        goto LABEL_25;
      }
    }

    else
    {
      sub_2370DC8F8(v11, v10, v12);
      v17 = *(v4 + 16);

      if (!v17 || (sub_2370F4928(), sub_2370F4488(), v18 = sub_2370F4948(), v19 = -1 << *(v4 + 32), v20 = v18 & ~v19, ((*(v7 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0))
      {
LABEL_19:

        v24 = v28;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2370D654C(0, *(v28 + 16) + 1, 1);
          v24 = v28;
        }

        v26 = *(v24 + 16);
        v25 = *(v24 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_2370D654C((v25 > 1), v26 + 1, 1);
          v24 = v28;
        }

        *(v24 + 16) = v26 + 1;
        v28 = v24;
        v27 = v24 + 32 * v26;
        *(v27 + 32) = v11;
        *(v27 + 40) = v10;
        *(v27 + 48) = v12;
        *(v27 + 56) = 0;
        goto LABEL_24;
      }

      v21 = ~v19;
      while (1)
      {
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22 == v10 && v12 == v22[1];
        if (v23 || (sub_2370F4858() & 1) != 0)
        {
          break;
        }

        v20 = (v20 + 1) & v21;
        if (((*(v7 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      sub_2370D2DE0(v11, v10, v12);

      if (v8 == v5)
      {
        goto LABEL_25;
      }
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t sub_2370EBAE4(void *a1, void *a2, SEL *a3)
{
  v6 = sub_2370F4448();
  [a1 setExternalUUID_];

  v7 = *(v3 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_saveRequest);
  v8 = sub_2370F4448();
  [v7 *a3];

  v9 = *(v3 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_stampedeManager + 24);
  v10 = *(v3 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_stampedeManager + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_stampedeManager), v9);
  return (*(v10 + 8))(v9, v10);
}

uint64_t sub_2370EBBC4(uint64_t result)
{
  if (*(result + 16))
  {
    v1 = sub_2370ECD70(result, MEMORY[0x277D84F90]);
    v2 = v1;
    v13 = v1 >> 62;
    if (v1 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2370F47A8())
    {
      v4 = 0;
      v5 = OBJC_IVAR____TtC15ContactProvider13ProviderStore_saveRequest;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x2383C5290](v4, v2);
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v6 = *(v2 + 8 * v4 + 32);
        }

        v7 = v6;
        v8 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v9 = *(v14 + v5);
        [v7 mutableCopy];
        sub_2370F4678();
        swift_unknownObjectRelease();
        sub_2370DE668(0, &qword_27DE928F8, 0x277CBDB38);
        swift_dynamicCast();
        [v9 deleteContact_];

        ++v4;
        if (v8 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:
    v10 = *(v14 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_stampedeManager + 24);
    v11 = *(v14 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_stampedeManager + 32);
    __swift_project_boxed_opaque_existential_1((v14 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_stampedeManager), v10);
    if (v13)
    {
      v12 = sub_2370F47A8();
    }

    else
    {
      v12 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return (*(v11 + 24))(v12, v10, v11);
  }

  return result;
}

void sub_2370EBDBC(uint64_t *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_container);
  v4 = [v3 providerMetadata];
  if (!v4)
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CBDB88]) init];
  }

  v5 = [v3 providerMetadata];
  if (v5)
  {
  }

  else
  {
    [v3 setProviderMetadata_];
  }

  v6 = [v4 itemAnchor];
  if (v6)
  {
    v7 = v6;
    v8 = sub_2370F4328();
    v10 = v9;

    v11 = [v4 itemOffset];
  }

  else
  {
    if (qword_27DE92470 != -1)
    {
      swift_once();
    }

    v10 = *(&xmmword_27DE92860 + 1);
    v8 = xmmword_27DE92860;
    v11 = qword_27DE92870;
    sub_2370CFCFC(xmmword_27DE92860, *(&xmmword_27DE92860 + 1));
  }

  *a1 = v8;
  a1[1] = v10;
  a1[2] = v11;
}

void sub_2370EBF08(uint64_t *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_container);
  v4 = [v3 providerMetadata];
  if (!v4)
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CBDB88]) init];
  }

  v5 = [v3 providerMetadata];
  if (v5)
  {
  }

  else
  {
    [v3 setProviderMetadata_];
  }

  if (![v4 isContentEnumerated])
  {
    v12 = sub_2370F4368();
    v13 = sub_2370F45F8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "syncAnchor not available as all content is not enumerated";
LABEL_13:
      _os_log_impl(&dword_2370CC000, v12, v13, v15, v14, 2u);
      MEMORY[0x2383C5B60](v14, -1, -1);
    }

LABEL_14:

    v8 = 0;
    v11 = 0;
    v10 = 0xF000000000000000;
    goto LABEL_15;
  }

  v6 = [v4 itemAnchor];
  if (!v6)
  {
    v12 = sub_2370F4368();
    v13 = sub_2370F45F8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "syncAnchor is missing after all content was enumerated";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v7 = v6;
  v8 = sub_2370F4328();
  v10 = v9;

  v11 = [v4 itemOffset];
LABEL_15:

  *a1 = v8;
  a1[1] = v10;
  a1[2] = v11;
}

void sub_2370EC0F4(uint64_t *a1)
{
  v2 = a1[2];
  v3 = *(v1 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_container);
  v4 = [v3 providerMetadata];
  if (!v4)
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CBDB88]) init];
  }

  v5 = [v3 providerMetadata];
  if (v5)
  {
  }

  else
  {
    [v3 setProviderMetadata_];
  }

  v6 = sub_2370F4318();
  [v4 setItemAnchor_];

  [v4 setItemOffset_];
  [v3 setProviderMetadata_];
  *(v1 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_isContainerDirty) = 1;
  v7 = *(v1 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_stampedeManager + 24);
  v8 = *(v1 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_stampedeManager + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_stampedeManager), v7);
  (*(v8 + 32))(v7, v8);
  sub_2370ED0FC();
}

void sub_2370EC260(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_container);
  v4 = [v3 providerMetadata];
  if (!v4)
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CBDB88]) init];
  }

  v5 = [v3 providerMetadata];
  if (v5)
  {
  }

  else
  {
    [v3 setProviderMetadata_];
  }

  v6 = sub_2370F4318();
  [v4 setItemAnchor_];

  [v4 setItemOffset_];
  [v4 setIsContentEnumerated_];
  [v3 setProviderMetadata_];
  *(v2 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_isContainerDirty) = 1;
  v7 = *(v2 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_stampedeManager + 24);
  v8 = *(v2 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_stampedeManager + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_stampedeManager), v7);
  (*(v8 + 40))(v7, v8);
  sub_2370ED0FC();
}

void sub_2370EC3F8(uint64_t *a1, char a2)
{
  v4 = a1[2];
  v5 = *(v2 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_container);
  v6 = [v5 providerMetadata];
  if (!v6)
  {
    v6 = [objc_allocWithZone(MEMORY[0x277CBDB88]) init];
  }

  v7 = [v5 providerMetadata];
  if (v7)
  {
  }

  else
  {
    [v5 setProviderMetadata_];
  }

  v8 = sub_2370F4318();
  [v6 setItemAnchor_];

  [v6 setItemOffset_];
  [v6 setIsMoreComing_];
  [v5 setProviderMetadata_];
  *(v2 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_isContainerDirty) = 1;
  v9 = *(v2 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_stampedeManager + 24);
  v10 = *(v2 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_stampedeManager + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_stampedeManager), v9);
  (*(v10 + 48))(a2 & 1, v9, v10);
  sub_2370ED0FC();
}

void sub_2370EC5A4(uint64_t a1, char a2, const char *a3, const char *a4, ...)
{
  v7 = v4;
  v9 = [objc_allocWithZone(MEMORY[0x277CBDBA0]) init];
  v10 = *(v7 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_saveRequest);
  *(v7 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_saveRequest) = v9;

  sub_2370CFD88();
  v11 = swift_allocError();
  *v12 = a2;
  v13 = == infix(_:_:)(a1, v11);

  if (v13)
  {
    v14 = sub_2370F4368();
    v15 = sub_2370F4608();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2370CC000, v14, v15, a3, v16, 2u);
      MEMORY[0x2383C5B60](v16, -1, -1);
    }

    sub_2370ECB0C();
  }

  else
  {
    v17 = (v7 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_stampedeManager);
    v18 = *(v7 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_stampedeManager + 24);
    v19 = *(v7 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_stampedeManager + 32);
    __swift_project_boxed_opaque_existential_1((v7 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_stampedeManager), v18);
    (*(v19 + 56))(a1, v18, v19);
    v20 = v17[3];
    v21 = v17[4];
    __swift_project_boxed_opaque_existential_1(v17, v20);
    if ((*(v21 + 72))(v20, v21))
    {
      sub_2370ED0FC();
    }
  }
}

void sub_2370EC8AC()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_container);
  v2 = [v1 providerMetadata];
  if (!v2)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277CBDB88]) init];
  }

  v3 = [v1 providerMetadata];
  if (v3)
  {
  }

  else
  {
    [v1 setProviderMetadata_];
  }

  v7 = v2;
  v4 = sub_2370F4368();
  v5 = sub_2370F4608();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67240960;
    *(v6 + 4) = [v7 isResetRequested];
    *(v6 + 8) = 1026;
    *(v6 + 10) = [v7 isContentEnumerated];
    *(v6 + 14) = 1026;
    *(v6 + 16) = [v7 isMoreComing];
    *(v6 + 20) = 2050;
    *(v6 + 22) = [v7 itemOffset];

    _os_log_impl(&dword_2370CC000, v4, v5, "isResetRequested = %{BOOL,public}d, isContentEnumerated = %{BOOL,public}d, isMoreComing = %{BOOL,public}d, itemOffset = %{public}ld", v6, 0x1Eu);
    MEMORY[0x2383C5B60](v6, -1, -1);
  }

  else
  {

    v4 = v7;
  }
}

id sub_2370ECA68()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_container);
  v2 = [v1 providerMetadata];
  if (!v2)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277CBDB88]) init];
  }

  v3 = [v1 providerMetadata];
  if (v3)
  {
  }

  else
  {
    [v1 setProviderMetadata_];
  }

  return v2;
}

void sub_2370ECB0C()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_container);
  v2 = [v1 providerMetadata];
  if (!v2)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277CBDB88]) init];
  }

  v5 = v2;
  v3 = [v1 providerMetadata];
  if (v3)
  {
  }

  else
  {
    [v1 setProviderMetadata_];
  }

  v4 = sub_2370F4318();
  [v5 setItemAnchor_];

  [v5 setItemOffset_];
  [v5 setIsContentEnumerated_];
  [v5 setIsMoreComing_];
  [v1 setProviderMetadata_];
  *(v0 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_isContainerDirty) = 1;
  sub_2370ED0FC();
}

uint64_t sub_2370ECD70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v35[1] = *MEMORY[0x277D85DE8];
  v5 = objc_allocWithZone(MEMORY[0x277CBDA70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92B90, &qword_2370F6A90);
  v6 = sub_2370F44C8();
  v7 = [v5 initWithKeysToFetch_];

  v8 = *(a1 + 16);
  if (v8)
  {
    v35[0] = MEMORY[0x277D84F90];
    sub_2370D652C(0, v8, 0);
    v9 = v35[0];
    v10 = (a1 + 40);
    do
    {
      v12 = *(v10 - 1);
      v11 = *v10;
      v35[0] = v9;
      v13 = v9[2];
      v14 = v9[3];

      if (v13 >= v14 >> 1)
      {
        sub_2370D652C((v14 > 1), v13 + 1, 1);
        v9 = v35[0];
      }

      v9[2] = v13 + 1;
      v15 = &v9[2 * v13];
      v15[4] = v12;
      v15[5] = v11;
      v10 += 2;
      --v8;
    }

    while (v8);
  }

  v16 = objc_opt_self();
  v17 = sub_2370F44C8();

  v18 = [v16 predicateForContactsMatchingExternalUUIDs_];

  [v7 setPredicate_];
  [v7 setUnifyResults_];
  v19 = *(v3 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_store);
  v35[0] = 0;
  v20 = [v19 executeFetchRequest:v7 error:v35];
  if (v20)
  {
    v21 = v20;
    v22 = v35[0];
    v23 = [v21 value];

    v35[0] = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92B98, &qword_2370F6A98);
    swift_dynamicCast();
    return v34;
  }

  else
  {
    v25 = v35[0];
    v26 = sub_2370F4308();

    swift_willThrow();
    v27 = v26;
    v28 = sub_2370F4368();
    v29 = sub_2370F45F8();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138543362;
      v32 = v26;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v33;
      *v31 = v33;
      _os_log_impl(&dword_2370CC000, v28, v29, "fetchContacts() - failed to fetch: %{public}@", v30, 0xCu);
      sub_2370D01B8(v31);
      MEMORY[0x2383C5B60](v31, -1, -1);
      MEMORY[0x2383C5B60](v30, -1, -1);
    }

    else
    {
    }

    return MEMORY[0x277D84F90];
  }
}

void sub_2370ED0FC()
{
  v1 = v0;
  v33[1] = *MEMORY[0x277D85DE8];
  v2 = (v0 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_stampedeManager);
  v3 = *(v0 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_stampedeManager + 24);
  v4 = *(v0 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_stampedeManager + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_stampedeManager), v3);
  v5 = (*(v4 + 64))(v3, v4);
  if (v5)
  {
    v6 = sub_2370F4368();
    v7 = sub_2370F4608();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2370CC000, v6, v7, "save() - will notify", v8, 2u);
      MEMORY[0x2383C5B60](v8, -1, -1);
    }
  }

  v9 = OBJC_IVAR____TtC15ContactProvider13ProviderStore_saveRequest;
  v10 = *(v1 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_container);
  v11 = *(v1 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_saveRequest);
  v12 = [v10 providerIdentifier];
  [v11 setTransactionAuthor_];

  [*(v1 + v9) setIgnoresContactProviderRestrictions_];
  [*(v1 + v9) setSuppressChangeNotifications_];
  v13 = OBJC_IVAR____TtC15ContactProvider13ProviderStore_isContainerDirty;
  if (*(v1 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_isContainerDirty) == 1)
  {
    [*(v1 + v9) updateContainer_];
    *(v1 + v13) = 0;
  }

  v14 = *(v1 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_store);
  v15 = *(v1 + v9);
  v33[0] = 0;
  if ([v14 executeSaveRequest:v15 error:v33])
  {
    v16 = v33[0];
    v17 = sub_2370F4368();
    v18 = sub_2370F4608();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2370CC000, v17, v18, "save() - did save", v19, 2u);
      MEMORY[0x2383C5B60](v19, -1, -1);
    }

    v20 = v2[3];
    v21 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v20);
    (*(v21 + 80))(v20, v21);
  }

  else
  {
    v22 = v33[0];
    v23 = sub_2370F4308();

    swift_willThrow();
    v24 = v23;
    v25 = sub_2370F4368();
    v26 = sub_2370F45F8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138543362;
      v29 = v23;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v30;
      *v28 = v30;
      _os_log_impl(&dword_2370CC000, v25, v26, "save() - did fail: %{public}@", v27, 0xCu);
      sub_2370D01B8(v28);
      MEMORY[0x2383C5B60](v28, -1, -1);
      MEMORY[0x2383C5B60](v27, -1, -1);
    }

    swift_willThrow();
  }

  v31 = [objc_allocWithZone(MEMORY[0x277CBDBA0]) init];
  v32 = *(v1 + v9);
  *(v1 + v9) = v31;
}

id sub_2370ED4D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92BC0, &qword_2370F6AB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2370F69D0;
  v1 = *MEMORY[0x277CBD160];
  v2 = *MEMORY[0x277CBD068];
  *(v0 + 32) = *MEMORY[0x277CBD160];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x277CBD000];
  v4 = *MEMORY[0x277CBD058];
  *(v0 + 48) = *MEMORY[0x277CBD000];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x277CBCFF8];
  v6 = *MEMORY[0x277CBD0E0];
  *(v0 + 64) = *MEMORY[0x277CBCFF8];
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x277CBD070];
  v8 = *MEMORY[0x277CBD078];
  *(v0 + 80) = *MEMORY[0x277CBD070];
  *(v0 + 88) = v8;
  v9 = *MEMORY[0x277CBD090];
  v51 = *MEMORY[0x277CBCFB8];
  v10 = *MEMORY[0x277CBCFB8];
  *(v0 + 96) = *MEMORY[0x277CBD090];
  *(v0 + 104) = v10;
  v11 = *MEMORY[0x277CBD040];
  v50 = *MEMORY[0x277CBD0B0];
  v12 = *MEMORY[0x277CBD0B0];
  *(v0 + 112) = *MEMORY[0x277CBD040];
  *(v0 + 120) = v12;
  v48 = *MEMORY[0x277CBD0B8];
  v54 = *MEMORY[0x277CBD0A8];
  v13 = *MEMORY[0x277CBD0A8];
  *(v0 + 128) = *MEMORY[0x277CBD0B8];
  *(v0 + 136) = v13;
  v49 = *MEMORY[0x277CBD0C0];
  v57 = *MEMORY[0x277CBD028];
  v14 = *MEMORY[0x277CBD028];
  *(v0 + 144) = *MEMORY[0x277CBD0C0];
  *(v0 + 152) = v14;
  v15 = *MEMORY[0x277CBD098];
  v56 = *MEMORY[0x277CBCFC0];
  v16 = *MEMORY[0x277CBCFC0];
  *(v0 + 160) = *MEMORY[0x277CBD098];
  *(v0 + 168) = v16;
  v52 = *MEMORY[0x277CBD0C8];
  v59 = *MEMORY[0x277CBD168];
  v17 = *MEMORY[0x277CBD168];
  *(v0 + 176) = *MEMORY[0x277CBD0C8];
  *(v0 + 184) = v17;
  v55 = *MEMORY[0x277CBD120];
  v61 = *MEMORY[0x277CBD138];
  v18 = *MEMORY[0x277CBD138];
  *(v0 + 192) = *MEMORY[0x277CBD120];
  *(v0 + 200) = v18;
  v53 = *MEMORY[0x277CBD038];
  v60 = *MEMORY[0x277CBCF90];
  v19 = *MEMORY[0x277CBCF90];
  *(v0 + 208) = *MEMORY[0x277CBD038];
  *(v0 + 216) = v19;
  v58 = *MEMORY[0x277CBD080];
  v20 = *MEMORY[0x277CBCFB0];
  v63 = *MEMORY[0x277CBCFB0];
  *(v0 + 224) = *MEMORY[0x277CBD080];
  *(v0 + 232) = v20;
  v62 = *MEMORY[0x277CBCFF0];
  *(v0 + 240) = *MEMORY[0x277CBCFF0];
  qword_27DE92B10 = v0;
  v21 = v1;
  v22 = v2;
  v23 = v3;
  v24 = v4;
  v25 = v5;
  v26 = v6;
  v27 = v7;
  v28 = v8;
  v29 = v9;
  v30 = v51;
  v31 = v11;
  v32 = v50;
  v33 = v48;
  v34 = v54;
  v35 = v49;
  v36 = v57;
  v37 = v15;
  v38 = v56;
  v39 = v52;
  v40 = v59;
  v41 = v55;
  v42 = v61;
  v43 = v53;
  v44 = v60;
  v45 = v58;
  v46 = v63;

  return v62;
}

uint64_t sub_2370ED7C0()
{
  v1 = OBJC_IVAR____TtC15ContactProvider13ProviderStore_logger;
  v2 = sub_2370F4388();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_stampedeManager));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for ProviderStore(uint64_t a1)
{
  result = qword_27DE92B20;
  if (!qword_27DE92B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2370ED914(uint64_t a1)
{
  result = sub_2370F4388();
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

uint64_t sub_2370ED9D4()
{
  v1 = [*(*v0 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_container) externalIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2370F4458();

  return v3;
}

void sub_2370EDA48(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_container);
  v5 = sub_2370F4448();

  [v4 setExternalIdentifier_];

  *(v3 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_isContainerDirty) = 1;
}

uint64_t (*sub_2370EDAB8(uint64_t *a1))()
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC15ContactProvider13ProviderStore_container;
  a1[2] = *v1;
  a1[3] = v4;
  v5 = [*(v3 + v4) externalIdentifier];
  if (v5)
  {
    v6 = v5;
    v7 = sub_2370F4458();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  *a1 = v7;
  a1[1] = v9;
  return sub_2370EDB4C;
}

void sub_2370EDB4C(void *a1, char a2)
{
  v2 = a1[2];
  v3 = *(v2 + a1[3]);
  if (a2)
  {

    v4 = sub_2370F4448();

    [v3 setExternalIdentifier_];

    *(v2 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_isContainerDirty) = 1;
  }

  else
  {
    v5 = sub_2370F4448();

    [v3 setExternalIdentifier_];

    *(v2 + OBJC_IVAR____TtC15ContactProvider13ProviderStore_isContainerDirty) = 1;
  }
}

id sub_2370EDCBC()
{
  v0 = sub_2370ECA68();
  v1 = [v0 isContentEnumerated];

  return v1;
}

char *sub_2370EDE1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92BE0, &qword_2370F6AC8);
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

char *sub_2370EDF28(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE927E8, &qword_2370F5A58);
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

uint64_t sub_2370EE05C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_2370EE0B8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_2370EE0B8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2370EE184(v11, 0, 0, 1, a1, a2);
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
    sub_2370D71AC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2370EE184(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2370EE290(a5, a6);
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
    result = sub_2370F4718();
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

void *sub_2370EE290(uint64_t a1, unint64_t a2)
{
  v3 = sub_2370EE2DC(a1, a2);
  sub_2370EE40C(&unk_284A35BB8);
  return v3;
}

void *sub_2370EE2DC(uint64_t a1, unint64_t a2)
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

  v6 = sub_2370EE4F8(v5, 0);
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

  result = sub_2370F4718();
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
        v10 = sub_2370F44A8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2370EE4F8(v10, 0);
        result = sub_2370F46C8();
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

uint64_t sub_2370EE40C(uint64_t result)
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

  result = sub_2370EE56C(result, v11, 1, v3);
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

void *sub_2370EE4F8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92BD0, &qword_2370F6AB8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2370EE56C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92BD0, &qword_2370F6AB8);
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

unint64_t sub_2370EE660(uint64_t a1, uint64_t a2)
{
  sub_2370F4928();
  sub_2370F4488();
  v4 = sub_2370F4948();

  return sub_2370EE71C(a1, a2, v4);
}

unint64_t sub_2370EE6D8(uint64_t a1)
{
  v2 = sub_2370F4688();

  return sub_2370EE7D4(a1, v2);
}

unint64_t sub_2370EE71C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2370F4858())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2370EE7D4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2370EFA60(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x2383C5240](v9, a1);
      sub_2370EFABC(v9);
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

uint64_t sub_2370EE89C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_2370F4928();
  sub_2370F4488();
  v8 = sub_2370F4948();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_2370F4858() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_2370EEC4C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2370EE9EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE92BB0, &unk_2370F6AA0);
  result = sub_2370F46B8();
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
      sub_2370F4928();
      sub_2370F4488();
      result = sub_2370F4948();
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

uint64_t sub_2370EEC4C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_2370EE9EC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2370EEDCC();
      goto LABEL_16;
    }

    sub_2370EEF28(v8 + 1);
  }

  v10 = *v4;
  sub_2370F4928();
  sub_2370F4488();
  result = sub_2370F4948();
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

      result = sub_2370F4858();
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
  result = sub_2370F4888();
  __break(1u);
  return result;
}

void *sub_2370EEDCC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE92BB0, &unk_2370F6AA0);
  v2 = *v0;
  v3 = sub_2370F46A8();
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

uint64_t sub_2370EEF28(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE92BB0, &unk_2370F6AA0);
  result = sub_2370F46B8();
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
      sub_2370F4928();

      sub_2370F4488();
      result = sub_2370F4948();
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

uint64_t sub_2370EF160(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92BD8, &qword_2370F6AC0);
  v35 = v4;
  result = sub_2370F47C8();
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

      sub_2370F4928();
      sub_2370F4488();
      result = sub_2370F4948();
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

id sub_2370EF404()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92BD8, &qword_2370F6AC0);
  v2 = *v0;
  v3 = sub_2370F47B8();
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

uint64_t sub_2370EF570(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  v3 = a2;
  for (i = (result + 56); ; i += 32)
  {
    v9 = *(i - 3);
    v8 = *(i - 2);
    v10 = *(i - 1);
    v11 = *i;
    v12 = v9;

    if (v11)
    {
      v13 = sub_2370F4368();
      v14 = sub_2370F45F8();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_2370CC000, v13, v14, "update contact items - failed to map a contact by its identifier", v15, 2u);
        MEMORY[0x2383C5B60](v15, -1, -1);
      }

      v5 = v9;
      v6 = v8;
      v7 = v10;
      goto LABEL_4;
    }

    v36 = v9;
    v16 = v12;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    v37 = *v3;
    *v3 = 0x8000000000000000;
    v19 = v8;
    v21 = sub_2370EE660(v8, v10);
    v22 = v18[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      break;
    }

    v25 = v20;
    if (v18[3] >= v24)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v28 = v37;
        if ((v20 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        sub_2370EF404();
        v28 = v37;
        if ((v25 & 1) == 0)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      sub_2370EF160(v24, isUniquelyReferenced_nonNull_native);
      v26 = sub_2370EE660(v19, v10);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_23;
      }

      v21 = v26;
      v28 = v37;
      if ((v25 & 1) == 0)
      {
LABEL_17:
        v28[(v21 >> 6) + 8] |= 1 << v21;
        v31 = (v28[6] + 16 * v21);
        *v31 = v19;
        v31[1] = v10;
        *(v28[7] + 8 * v21) = v16;
        v32 = v28[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_22;
        }

        v28[2] = v34;
        goto LABEL_19;
      }
    }

    v29 = v28[7];
    v30 = *(v29 + 8 * v21);
    *(v29 + 8 * v21) = v16;

LABEL_19:
    v3 = a2;
    *a2 = v28;
    v5 = v36;
    v6 = v19;
    v7 = v10;
LABEL_4:
    result = sub_2370D2DE0(v5, v6, v7);
    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_2370F4898();
  __break(1u);
  return result;
}

id sub_2370EF7E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() diffContact:a1 to:a2 options:a3 error:v7];
  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_2370F4308();

    swift_willThrow();
  }

  return v3;
}

void sub_2370EF8C4(unint64_t a1, uint64_t a2, uint64_t a3, char **a4)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2370F47A8())
  {
    v8 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2383C5290](v8, a1);
      }

      else
      {
        if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v14 = v9;
      sub_2370EB14C(&v14, a2, a3, a4);

      if (!v4)
      {
        ++v8;
        if (v11 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_2370EF9C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x2383C5180](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2370EE89C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

ContactProvider::DefaultContactProviderDomain __swiftcall DefaultContactProviderDomain.init()()
{
  v1 = v0;
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v2 = sub_2370D68CC(MEMORY[0x277D84F90]);
  v1[2] = v2;
  result.userInfo._rawValue = v4;
  result.displayName._object = v3;
  result.displayName._countAndFlagsBits = v2;
  return result;
}

void __swiftcall CustomContactProviderDomain.init(identifier:)(ContactProvider::CustomContactProviderDomain *__return_ptr retstr, Swift::String identifier)
{
  retstr->identifier = identifier;
  retstr->displayName._countAndFlagsBits = 0;
  retstr->displayName._object = 0xE000000000000000;
  retstr->userInfo._rawValue = sub_2370D68CC(MEMORY[0x277D84F90]);
}

uint64_t DefaultContactProviderDomain.displayName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_2370EFC28()
{
  v1 = *v0;

  return v1;
}

uint64_t CustomContactProviderDomain.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CustomContactProviderDomain.displayName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CustomContactProviderDomain.displayName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t CustomContactProviderDomain.userInfo.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_2370EFD6C()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_2370EFDE0(uint64_t a1, int a2)
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

uint64_t sub_2370EFE28(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2370EFE8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2370EFED4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t withTimeout<A>(_:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_2370F4758();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v8 = sub_2370F4778();
  v6[12] = v8;
  v6[13] = *(v8 - 8);
  v6[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2370F005C, 0, 0);
}

uint64_t sub_2370F005C(uint64_t a1)
{
  v2 = v1[10];
  v3 = v1[8];
  v4 = v1[9];
  sub_2370F4768();
  sub_2370F4738();
  sub_2370F4748();
  v5 = *(v4 + 8);
  v1[15] = v5;
  v1[16] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v3);
  v6 = swift_task_alloc();
  v1[17] = v6;
  v7 = sub_2370F3D64(&qword_27DE92A58, MEMORY[0x277D85960], MEMORY[0x277D85968]);
  *v6 = v1;
  v6[1] = sub_2370F01A8;
  v8 = v1[14];
  v9 = v1[11];
  v10 = v1[12];
  v11 = v1[6];
  v12 = v1[7];
  v13 = v1[5];
  v14 = v1[2];

  return withDeadline<A, B>(_:clock:block:)(v14, v9, v8, v13, v11, v12, v10, v7);
}

uint64_t sub_2370F01A8()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_2370F0374;
  }

  else
  {
    v2 = sub_2370F02BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2370F02BC()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  (*(v0 + 120))(*(v0 + 88), *(v0 + 64));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2370F0374()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  (*(v0 + 120))(*(v0 + 88), *(v0 + 64));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2370F042C(char a1, char a2)
{
  sub_2370CFD88();
  v3 = sub_2370F4848();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = swift_allocError();
    *v5 = a1;
  }

  v11 = a2;
  v6 = sub_2370F4848();
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = swift_allocError();
    *v8 = v11;
  }

  v9 = == infix(_:_:)(v4, v7);

  return v9 & 1;
}

uint64_t sub_2370F0518()
{
  sub_2370E9AEC();
  v0 = sub_2370F4848();
  if (!v0)
  {
    v0 = swift_allocError();
  }

  v1 = v0;
  v2 = sub_2370F4848();
  if (!v2)
  {
    v2 = swift_allocError();
  }

  v3 = v2;
  v4 = == infix(_:_:)(v1, v2);

  return v4 & 1;
}

uint64_t AsyncTimeoutError.hashValue.getter()
{
  sub_2370F4928();
  MEMORY[0x2383C54E0](0);
  return sub_2370F4948();
}

uint64_t sub_2370F0638()
{
  sub_2370F4928();
  MEMORY[0x2383C54E0](0);
  return sub_2370F4948();
}

uint64_t sub_2370F06A4(uint64_t a1)
{
  sub_2370F4928();
  MEMORY[0x2383C54E0](0);
  return sub_2370F4948();
}

uint64_t withDeadline<A, B>(_:clock:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](sub_2370F0710, 0, 0);
}

uint64_t sub_2370F0710()
{
  v1 = *(v0 + 72);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  *(v2 + 16) = *(v0 + 56);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  *(v2 + 56) = v4;
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_2370F080C;
  v6 = *(v0 + 56);
  v7 = *(v0 + 16);

  return MEMORY[0x282200740](v7, v6, v6, 0, 0, &unk_2370F6BE8, v2, v6);
}

uint64_t sub_2370F080C()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2370F0948, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2370F0948()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t withTimeout<A, B>(_:clock:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[10] = AssociatedTypeWitness;
  v8[11] = *(AssociatedTypeWitness - 8);
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2370F0A9C, 0, 0);
}

uint64_t sub_2370F0A9C()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[11];
  sub_2370F48A8();
  swift_getAssociatedConformanceWitness();
  sub_2370F4728();
  v4 = *(v3 + 8);
  v0[14] = v4;
  v0[15] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_2370F0BD4;
  v6 = v0[13];
  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[6];
  v10 = v0[7];
  v11 = v0[4];
  v12 = v0[5];
  v13 = v0[2];

  return withDeadline<A, B>(_:clock:block:)(v13, v6, v11, v12, v9, v10, v7, v8);
}

uint64_t sub_2370F0BD4()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_2370F0D68;
  }

  else
  {
    v2 = sub_2370F0CE8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2370F0CE8()
{
  (*(v0 + 112))(*(v0 + 104), *(v0 + 80));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2370F0D68()
{
  (*(v0 + 112))(*(v0 + 104), *(v0 + 80));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2370F0DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v16;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v10 = sub_2370F4668();
  v8[11] = v10;
  v8[12] = *(v10 - 8);
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();
  v11 = *(a8 - 8);
  v8[15] = v11;
  v8[16] = *(v11 + 64);
  v8[17] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[18] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v8[19] = v13;
  v8[20] = *(v13 + 64);
  v8[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92A40, &qword_2370F6840);
  v8[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2370F0FE8, 0, 0);
}

uint64_t sub_2370F0FE8()
{
  v1 = v0[22];
  v23 = v0[21];
  v25 = v0[20];
  v19 = v0[19];
  v20 = v0[18];
  v24 = v0[17];
  v2 = v0[9];
  v3 = v0[10];
  v14 = v2;
  v4 = v0[8];
  v21 = v0[15];
  v22 = v0[7];
  v5 = v0[5];
  v18 = v0[6];
  v16 = v0[4];
  v6 = sub_2370F4568();
  v15 = *(*(v6 - 8) + 56);
  v15(v1, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;
  v7[5] = v2;
  v7[6] = v3;
  v7[7] = v16;
  v7[8] = v5;

  v0[23] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE92778, &qword_2370F5A60);
  v17 = sub_2370F45C8();
  sub_2370F3170(v1, &unk_2370F6CE8, v7, v17);
  sub_2370F3A1C(v1);
  v15(v1, 1, 1, v6);
  (*(v19 + 16))(v23, v18, v20);
  (*(v21 + 16))(v24, v22, v2);
  v8 = (*(v19 + 80) + 56) & ~*(v19 + 80);
  v9 = (v25 + *(v21 + 80) + v8) & ~*(v21 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 4) = v4;
  *(v10 + 5) = v14;
  *(v10 + 6) = v3;
  (*(v19 + 32))(&v10[v8], v23, v20);
  (*(v21 + 32))(&v10[v9], v24, v14);
  sub_2370F3170(v1, &unk_2370F6D00, v10, v17);
  sub_2370F3A1C(v1);
  v11 = swift_task_alloc();
  v0[24] = v11;
  *v11 = v0;
  v11[1] = sub_2370F1308;
  v12 = v0[14];

  return MEMORY[0x2822004D0](v12, 0, 0, v17);
}

uint64_t sub_2370F1308()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_2370F1678;
  }

  else
  {
    v2 = sub_2370F141C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2370F141C()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[8];
  sub_2370F45B8();
  (*(v4 + 16))(v1, v2, v3);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(v1, 1, v5);
  v8 = *(v4 + 8);
  if (v7 == 1)
  {
    v9 = v0[14];
    v10 = v0[11];
    v8(v0[13], v10);
    sub_2370F4548();
    sub_2370F3D64(&qword_27DE92A50, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    swift_allocError();
    sub_2370F4418();
    swift_willThrow();
    v8(v9, v10);
  }

  else
  {
    v12 = v0[13];
    v13 = v0[8];
    v14 = v0[2];
    v8(v0[14], v0[11]);
    (*(v6 + 32))(v14, v12, v13);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_2370F1678()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2370F1714(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = v2[8];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2370CD798;

  return sub_2370F0DE8(a1, a2, v8, v9, v10, v11, v6, v7);
}

uint64_t sub_2370F1804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a1;
  v8[7] = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE92778, &qword_2370F5A60);
  v8[12] = sub_2370F4538();
  v9 = sub_2370F4668();
  v8[13] = v9;
  v8[14] = *(v9 - 8);
  v8[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2370F1904, 0, 0);
}

uint64_t sub_2370F1904()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  (*(*(*(v0 + 96) - 8) + 56))(v1, 1, 1);
  v4 = sub_2370F3DAC(v1, v3);
  *(v0 + 128) = v4;
  (*(v2 + 8))(v1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DE92A80, &qword_2370F6888);
  inited = swift_initStackObject();
  *(v0 + 136) = inited;
  *(inited + 24) = 0;
  *(inited + 16) = 0;
  sub_2370F4588();
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = *(v0 + 72);
  v9 = swift_task_alloc();
  *(v0 + 144) = v9;
  v10 = *(v0 + 56);
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  *(v9 + 32) = v6;
  *(v9 + 40) = v4;
  *(v9 + 48) = inited;
  *(v9 + 56) = v10;
  v11 = swift_task_alloc();
  *(v0 + 152) = v11;
  v11[2] = v8;
  v11[3] = v7;
  v11[4] = v6;
  v11[5] = inited;
  v11[6] = v4;
  v12 = swift_task_alloc();
  *(v0 + 160) = v12;
  *v12 = v0;
  v12[1] = sub_2370F1B28;
  v13 = *(v0 + 72);
  v14 = *(v0 + 48);

  return MEMORY[0x282200830](v14, &unk_2370F6D18, v9, sub_2370F3F04, v11, 0, 0, v13);
}

uint64_t sub_2370F1B28()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_2370F1CD8;
  }

  else
  {

    v2 = sub_2370F1C4C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2370F1C4C()
{
  swift_setDeallocating();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2370F1CD8()
{
  swift_setDeallocating();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2370F1D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](sub_2370F1DA4, 0, 0);
}

uint64_t sub_2370F1DA4()
{
  v1 = *(v0 + 72);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  *(v2 + 16) = *(v0 + 56);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  *(v2 + 56) = v4;
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_2370F1EB0;
  v6 = *(v0 + 56);
  v7 = *(v0 + 16);

  return MEMORY[0x2822008A0](v7, 0, 0, 0xD00000000000001CLL, 0x80000002370FA020, sub_2370F3F34, v2, v6);
}

uint64_t sub_2370F1EB0()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2370F4198, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

void sub_2370F1FEC(uint64_t a1, uint64_t a2, os_unfair_lock_s *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE92778, &qword_2370F5A60);
  sub_2370F4538();
  sub_2370F4668();
  v8 = *(*a2 + *MEMORY[0x277D841D0] + 16);
  v9 = (*(*a2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a2 + v9));
  sub_2370F3F48(a2 + v8);
  os_unfair_lock_unlock((a2 + v9));
  os_unfair_lock_lock(a3 + 6);
  sub_2370F3F68(&a3[4]);
  os_unfair_lock_unlock(a3 + 6);
}

uint64_t sub_2370F2118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE92778, &qword_2370F5A60);
  v5 = sub_2370F4538();
  v6 = sub_2370F4668();
  (*(*(v6 - 8) + 8))(a1, v6);
  v7 = *(v5 - 8);
  (*(v7 + 16))(a1, a2, v5);
  return (*(v7 + 56))(a1, 0, 1, v5);
}

uint64_t sub_2370F222C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92A40, &qword_2370F6840);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v20 - v15;

  v17 = sub_2370F4568();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a5;
  v18[5] = a6;
  v18[6] = a7;
  v18[7] = a2;
  v18[8] = a3;
  v18[9] = a4;

  result = sub_2370E443C(0, 0, v16, &unk_2370F6D28, v18);
  *a1 = result;
  return result;
}

uint64_t sub_2370F2388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v11;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v8[8] = *(a7 - 8);
  v8[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2370F244C, 0, 0);
}

uint64_t sub_2370F244C()
{
  sub_2370F4588();
  v4 = (v0[2] + *v0[2]);
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_2370F2670;
  v2 = v0[9];

  return v4(v2);
}

uint64_t sub_2370F2670()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_2370F28EC;
  }

  else
  {
    v2 = sub_2370F2784;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2370F2784()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  v10 = *(v0 + 40);
  *(v5 + 16) = v10;
  *(v5 + 32) = v3;
  *(v5 + 40) = v1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE92778, &qword_2370F5A60);
  sub_2370F4538();
  sub_2370F4668();
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v4 + v7));
  sub_2370F40E0(v4 + v6);
  os_unfair_lock_unlock((v4 + v7));

  (*(v2 + 8))(v1, v10);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2370F28EC()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v4 + 16) = *(v0 + 40);
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE92778, &qword_2370F5A60);
  sub_2370F4538();
  sub_2370F4668();
  v5 = *(*v3 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v6));
  sub_2370F40C0(v3 + v5);
  os_unfair_lock_unlock((v3 + v6));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2370F2A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE92778, &qword_2370F5A60);
  v9 = sub_2370F4538();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - v11;
  if (!(*(v10 + 48))(a1, 1, v9))
  {
    (*(v10 + 16))(v12, a1, v9);
    (*(v6 + 16))(v8, a2, a3);
    sub_2370F4528();
    (*(v10 + 8))(v12, v9);
  }

  v13 = sub_2370F4668();
  (*(*(v13 - 8) + 8))(a1, v13);
  return (*(v10 + 56))(a1, 1, 1, v9);
}

uint64_t sub_2370F2C70(uint64_t a1, void *a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE92778, &qword_2370F5A60);
  v5 = sub_2370F4538();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - v7;
  if (!(*(v6 + 48))(a1, 1, v5))
  {
    (*(v6 + 16))(v8, a1, v5);
    v12[1] = a2;
    v9 = a2;
    sub_2370F4518();
    (*(v6 + 8))(v8, v5);
  }

  v10 = sub_2370F4668();
  (*(*(v10 - 8) + 8))(a1, v10);
  return (*(v6 + 56))(a1, 1, 1, v5);
}

void sub_2370F2E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((a1 + 24));
  if (*(a1 + 16))
  {
    sub_2370F4578();
  }

  os_unfair_lock_unlock((a1 + 24));
  MEMORY[0x28223BE20](v5);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE92778, &qword_2370F5A60);
  sub_2370F4538();
  sub_2370F4668();
  v6 = *(*a2 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*a2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a2 + v7));
  sub_2370F3F14(a2 + v6);
  os_unfair_lock_unlock((a2 + v7));
}

uint64_t sub_2370F2F68(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE92778, &qword_2370F5A60);
  v3 = sub_2370F4538();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  if (!(*(v4 + 48))(a1, 1, v3))
  {
    (*(v4 + 16))(v6, a1, v3);
    sub_2370F4548();
    sub_2370F3D64(&qword_27DE92A50, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    v7 = swift_allocError();
    sub_2370F4418();
    v10[1] = v7;
    sub_2370F4518();
    (*(v4 + 8))(v6, v3);
  }

  v8 = sub_2370F4668();
  (*(*(v8 - 8) + 8))(a1, v8);
  return (*(v4 + 56))(a1, 1, 1, v3);
}

uint64_t sub_2370F3170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92A40, &qword_2370F6840);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v19 - v9;
  sub_2370E9B40(a1, v19 - v9);
  v11 = sub_2370F4568();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_2370F3A1C(v10);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_2370F4508();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_2370F4558();
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

uint64_t sub_2370F3344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a4;
  v8[3] = a5;
  v8[6] = swift_getAssociatedTypeWitness();
  v9 = sub_2370F4668();
  v8[7] = v9;
  v8[8] = *(v9 - 8);
  v8[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2370F3430, 0, 0);
}

uint64_t sub_2370F3430()
{
  sub_2370F4588();
  (*(*(v0[6] - 8) + 56))(v0[9], 1, 1);
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_2370F355C;
  v2 = v0[9];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];

  return MEMORY[0x282200488](v6, v2, v5, v3, v4);
}

uint64_t sub_2370F355C()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  *(*v1 + 88) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_2370F375C;
  }

  else
  {
    v5 = sub_2370F36CC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2370F36CC()
{
  sub_2370E9AEC();
  swift_allocError();
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2370F375C()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_2370F37C4()
{
  result = qword_27DE92C00;
  if (!qword_27DE92C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE92C00);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AsyncTimeoutError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AsyncTimeoutError(_WORD *result, int a2, int a3)
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

uint64_t sub_2370F3900()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2370F3940(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2370D0220;

  return sub_2370F1804(a1, v6, v7, v9, v10, v4, v5, v8);
}

uint64_t sub_2370F3A1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92A40, &qword_2370F6840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2370F3A84()
{
  v1 = *(v0 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 56) & ~v4;
  v6 = *(v1 - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + *(v3 + 64) + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v4 | v7;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, AssociatedTypeWitness);
  (*(v6 + 8))(v0 + v8, v1);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_2370F3BE0(uint64_t a1)
{
  v3 = v2;
  v6 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v10 = (v9 + *(v8 + 64) + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80);
  v11 = v1[2];
  v12 = v1[3];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2370D0220;

  return sub_2370F3344(a1, v11, v12, v1 + v9, v1 + v10, v6, v5, v7);
}

uint64_t sub_2370F3D64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2370F3DAC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_2370F4708();
  return sub_2370F46F8();
}

uint64_t sub_2370F3E28(uint64_t a1)
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
  v11[1] = sub_2370D0220;

  return sub_2370F1D78(a1, v7, v8, v9, v10, v4, v5, v6);
}

uint64_t sub_2370F3F8C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2370F3FD4(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2370CD798;

  return sub_2370F2388(a1, v6, v7, v8, v10, v9, v4, v5);
}

uint64_t sub_2370F4100@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x277D841D0]) - 8) + 16))(a2, v3);
}

uint64_t ExtensionState.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}