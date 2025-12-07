uint64_t sub_260FFA180()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t PASAccountStore.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  return v0;
}

uint64_t PASAccountStore.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t sub_260FFA274()
{
  v1 = *(v0 + 16);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_260FFCBA0;

  return v6(v2, v3);
}

uint64_t sub_260FFA39C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_260FFCB98;

  return PASAccountStore.protoAccount()();
}

uint64_t sub_260FFA42C(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_260FFA454, 0, 0);
}

uint64_t sub_260FFA454()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
  v8 = (*(v5 + 16) + **(v5 + 16));
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_260FFCBA4;

  return v8(v3, v2, v4, v5);
}

uint64_t sub_260FFA594(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_260FFA5B8, 0, 0);
}

uint64_t sub_260FFA5B8()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v7 = (*(v4 + 24) + **(v4 + 24));
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_260FFCB9C;

  return v7(v2, v3, v4);
}

uint64_t sub_260FFA6F0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_260FF8508, 0, 0);
}

uint64_t sub_260FFA714(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return MEMORY[0x2822009F8](sub_260FFA738, 0, 0);
}

uint64_t sub_260FFA738()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = sub_260FA9AB4(0, &qword_27FE64D40, 0x277CB8F38);
  *v2 = v0;
  v2[1] = sub_260FFA848;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000010, 0x80000002610D36A0, sub_260FFCBA8, v1, v3);
}

uint64_t sub_260FFA848()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_260FFCB80;
  }

  else
  {

    v2 = sub_260FFCBAC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260FFA964(uint64_t a1, uint64_t a2)
{
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = *v2;
  return MEMORY[0x2822009F8](sub_260FFA98C, 0, 0);
}

uint64_t sub_260FFA98C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64D48, &qword_2610C4150);
  *v5 = v0;
  v5[1] = sub_260FFAAA4;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000027, 0x80000002610D36C0, sub_260FFCB88, v4, v6);
}

uint64_t sub_260FFAAA4()
{

  return MEMORY[0x2822009F8](sub_260FFCBB0, 0, 0);
}

uint64_t sub_260FFABBC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_260FB6F34;

  return PASAccountStore.idmsAccount(for:)(a1);
}

uint64_t sub_260FFAC54(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FFCB98;

  return PASAccountStore.transportableAuthKitAccount(_:includeCredential:)(a1, a2);
}

void *sub_260FFACFC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  a3[5] = a4;
  a3[6] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3 + 2);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  a3[10] = a5;
  a3[11] = a7;
  v14 = __swift_allocate_boxed_opaque_existential_1(a3 + 7);
  (*(*(a5 - 8) + 32))(v14, a2, a5);
  return a3;
}

void *sub_260FFADBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a7;
  v12 = *(a5 - 8);
  v13 = MEMORY[0x28223BE20](a1, a2);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v13, v18);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  (*(v17 + 16))(v20, a1, a4);
  (*(v12 + 16))(v15, a2, a5);
  return sub_260FFACFC(v20, v15, v21, a4, a5, a6, v24);
}

uint64_t sub_260FFAF5C(uint64_t a1)
{
  if (a1)
  {
    v3 = sub_2610BCB24();
  }

  else
  {
    v3 = 0;
  }

  v2[19] = v3;
  v2[2] = v2;
  v2[7] = v2 + 18;
  v2[3] = sub_260FFCB84;
  v4 = swift_continuation_init();
  v2[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64D78, &unk_2610C4520);
  v2[10] = MEMORY[0x277D85DD0];
  v2[11] = 1107296256;
  v2[12] = sub_260FF77F8;
  v2[13] = &block_descriptor_1;
  v2[14] = v4;
  [v1 accountsWithAccountTypeIdentifiers:v3 completion:v2 + 10];

  return MEMORY[0x282200938](v2 + 2);
}

id _s21ProximityAppleIDSetup24AKAccountManagerProtocolPAAE17fetchUserAgeRange7altDSIDSo06AKUseriJ0VSS_tF_0(uint64_t a1, uint64_t a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_self() sharedInstance];
  v3 = sub_2610BC9D4();
  v23[0] = 0;
  v4 = [v2 authKitAccountWithAltDSID:v3 error:v23];

  if (v4)
  {
    v5 = v23[0];
    v6 = [v2 userAgeRangeForAccount_];
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v7 = sub_2610BC7B4();
    __swift_project_value_buffer(v7, qword_27FE65900);
    v8 = sub_2610BC794();
    v9 = sub_2610BCD54();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = v6;
      _os_log_impl(&dword_260F97000, v8, v9, "Fetched userAgeRange from IdMS account: %lu", v10, 0xCu);
      MEMORY[0x2666F8720](v10, -1, -1);
    }
  }

  else
  {
    v11 = v23[0];
    v12 = sub_2610BC4F4();

    swift_willThrow();
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v13 = sub_2610BC7B4();
    __swift_project_value_buffer(v13, qword_27FE65900);
    v14 = v12;
    v15 = sub_2610BC794();
    v16 = sub_2610BCD54();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23[0] = v18;
      *v17 = 136315138;
      swift_getErrorValue();
      v19 = sub_2610BD4A4();
      v21 = sub_260FA5970(v19, v20, v23);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_260F97000, v15, v16, "Error fetching primary account for age range: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x2666F8720](v18, -1, -1);
      MEMORY[0x2666F8720](v17, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return v6;
}

unint64_t sub_260FFB3E8()
{
  result = qword_27FE64D50;
  if (!qword_27FE64D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64D50);
  }

  return result;
}

uint64_t dispatch thunk of PASAccountStoreProtocol.primaryAppleAccount()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FBF864;

  return v7(a1, a2);
}

uint64_t dispatch thunk of PASAccountStoreProtocol.protoAccount()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FBF864;

  return v7(a1, a2);
}

uint64_t dispatch thunk of PASAccountStoreProtocol.renewCredentials(for:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_260FBF864;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PASAccountStoreProtocol.saveAccount(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_260FBF864;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PASAccountStoreProtocol.removeAccount(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_260FBF864;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PASAccountStoreProtocol.credential(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_260FBF864;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PASAccountStoreProtocol.accountType(withAccountTypeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 56) + **(a4 + 56));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_260FBCD00;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PASAccountStoreProtocol.idmsAccount(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 64) + **(a3 + 64));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_260FBF864;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PASAccountStoreProtocol.transportableAuthKitAccount(_:includeCredential:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 72) + **(a4 + 72));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_260FBF864;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ACAccountStoreProtocol.aa_primaryAppleAccount()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FBD298;

  return v7(a1, a2);
}

uint64_t dispatch thunk of ACAccountStoreProtocol.renewCredentials(for:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_260FBF864;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ACAccountStoreProtocol.saveAccount(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_260FBD298;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of ACAccountStoreProtocol.removeAccount(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_260FBF864;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of ACAccountStoreProtocol.accounts(withAccountTypeIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 56) + **(a3 + 56));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_260FBF864;

  return v9(a1, a2, a3);
}

unint64_t sub_260FFC520(void *a1)
{
  a1[1] = sub_260FFC558();
  a1[2] = sub_260FFC5AC();
  result = sub_260FFC600();
  a1[3] = result;
  return result;
}

unint64_t sub_260FFC558()
{
  result = qword_27FE64D58;
  if (!qword_27FE64D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64D58);
  }

  return result;
}

unint64_t sub_260FFC5AC()
{
  result = qword_27FE64D60;
  if (!qword_27FE64D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64D60);
  }

  return result;
}

unint64_t sub_260FFC600()
{
  result = qword_27FE64D68;
  if (!qword_27FE64D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64D68);
  }

  return result;
}

unint64_t sub_260FFC658()
{
  result = qword_27FE64D70;
  if (!qword_27FE64D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64D70);
  }

  return result;
}

uint64_t sub_260FFC6D8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  if (a2)
  {
    v6 = sub_2610BC8F4();
  }

  else
  {
    v6 = 0;
  }

  v3[19] = v6;
  v3[2] = v3;
  v3[7] = v3 + 18;
  v3[3] = sub_260FFC840;
  v7 = swift_continuation_init();
  v3[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64D88, &qword_2610C4540);
  v3[10] = MEMORY[0x277D85DD0];
  v3[11] = 1107296256;
  v3[12] = sub_260FF718C;
  v3[13] = &block_descriptor_71;
  v3[14] = v7;
  [v4 renewCredentialsForAccount:a1 options:v6 completion:v3 + 10];

  return MEMORY[0x282200938](v3 + 2);
}

uint64_t sub_260FFC840(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 152);
  if (*(v2 + 48))
  {
    swift_willThrow();

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {
    v8 = *(v3 + 144);

    v9 = *(v4 + 8);

    return v9(v8);
  }
}

uint64_t sub_260FFC9A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64D98, &qword_2610C4550);
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  return sub_260FF9500(v1, v2, v3);
}

uint64_t block_copy_helper_77(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_260FFCA30()
{
  result = qword_27FE64DA0;
  if (!qword_27FE64DA0)
  {
    sub_2610BC8B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64DA0);
  }

  return result;
}

unint64_t sub_260FFCA88()
{
  result = qword_27FE64DB0;
  if (!qword_27FE64DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE64DA8, &qword_2610C4558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64DB0);
  }

  return result;
}

uint64_t sub_260FFCAEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64DB8, qword_2610C4560);
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_260FF8D40(v1, v2);
}

uint64_t PASTargetAccountOptionsProvider.targetAccountOptions.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();
}

uint64_t sub_260FFCC54()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();
}

uint64_t sub_260FFCCD0(uint64_t a1, uint64_t *a2)
{
  sub_260FFCDE4(a1, v4);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_260FFCDE4(v4, &v3);

  sub_2610BC854();
  sub_260FFCE54();
  return sub_260FFD044(v4);
}

uint64_t PASTargetAccountOptionsProvider.targetAccountOptions.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_260FFCDE4(a1, v3);

  sub_2610BC854();
  sub_260FFCE54();
  return sub_260FFD044(a1);
}

uint64_t sub_260FFCDE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63CF0, &qword_2610C2510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_260FFCE54()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v0 = sub_2610BC7B4();
  __swift_project_value_buffer(v0, qword_27FE65900);

  oslog = sub_2610BC794();
  v1 = sub_2610BCD54();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v10 = v3;
    *v2 = 136446210;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2610BC844();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63CF0, &qword_2610C2510);
    v4 = sub_2610BCE54();
    v6 = v5;
    sub_260FFD044(v9);
    v7 = sub_260FA5970(v4, v6, &v10);

    *(v2 + 4) = v7;
    _os_log_impl(&dword_260F97000, oslog, v1, "PASTargetAccountOptionsProtocol set %{public}s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v3);
    MEMORY[0x2666F8720](v3, -1, -1);
    MEMORY[0x2666F8720](v2, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_260FFD044(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63CF0, &qword_2610C2510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*PASTargetAccountOptionsProvider.targetAccountOptions.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  return sub_260FFD168;
}

void sub_260FFD168(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_260FFCDE4(*a1, v2 + 40);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_260FFCDE4(v2 + 40, v2 + 80);

    sub_2610BC854();
    sub_260FFCE54();
    sub_260FFD044(v2 + 40);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_260FFCDE4(v2, v2 + 40);

    sub_2610BC854();
    sub_260FFCE54();
  }

  sub_260FFD044(v2);

  free(v2);
}

uint64_t sub_260FFD268(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64DC8, &qword_2610C4600);
  sub_2610BC814();
  return swift_endAccess();
}

uint64_t sub_260FFD2E0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64DD0, &qword_2610C4608);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64DC8, &qword_2610C4600);
  sub_2610BC824();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t PASTargetAccountOptionsProvider.$targetAccountOptions.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64DD0, &qword_2610C4608);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64DC8, &qword_2610C4600);
  sub_2610BC824();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*PASTargetAccountOptionsProvider.$targetAccountOptions.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64DD0, &qword_2610C4608);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC21ProximityAppleIDSetup31PASTargetAccountOptionsProvider__targetAccountOptions;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64DC8, &qword_2610C4600);
  sub_2610BC814();
  swift_endAccess();
  return sub_260FD7A84;
}

uint64_t sub_260FFD710()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64DC8, &qword_2610C4600);
  sub_2610BC814();
  return swift_endAccess();
}

uint64_t PASTargetAccountOptionsProvider.setTargetAccountOptions(_:)(uint64_t a1)
{
  sub_260FFCDE4(a1, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_260FFCDE4(v3, &v2);

  sub_2610BC854();
  sub_260FFCE54();
  return sub_260FFD044(v3);
}

uint64_t PASTargetAccountOptionsProvider.deinit()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup31PASTargetAccountOptionsProvider__targetAccountOptions;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64DC8, &qword_2610C4600);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PASTargetAccountOptionsProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup31PASTargetAccountOptionsProvider__targetAccountOptions;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64DC8, &qword_2610C4600);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_260FFD920()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();
}

uint64_t sub_260FFD998(uint64_t a1)
{
  sub_260FFCDE4(a1, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_260FFCDE4(v3, &v2);

  sub_2610BC854();
  sub_260FFCE54();
  return sub_260FFD044(v3);
}

uint64_t sub_260FFDA54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000018 && 0x80000002610D3810 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_2610BD384();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_260FFDAE8(uint64_t a1)
{
  v2 = sub_260FFDCAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260FFDB24(uint64_t a1)
{
  v2 = sub_260FFDCAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PASTargetAccountOptions.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64DD8, &qword_2610C4610);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260FFDCAC();
  sub_2610BD5F4();
  v11 = v8;
  sub_260FFDD00();
  sub_2610BD2A4();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_260FFDCAC()
{
  result = qword_27FE64DE0;
  if (!qword_27FE64DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64DE0);
  }

  return result;
}

unint64_t sub_260FFDD00()
{
  result = qword_27FE64DE8;
  if (!qword_27FE64DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64DE8);
  }

  return result;
}

uint64_t PASTargetAccountOptions.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64DF0, &qword_2610C4618);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260FFDCAC();
  sub_2610BD5D4();
  if (!v2)
  {
    sub_260FFDEC0();
    sub_2610BD1E4();
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

unint64_t sub_260FFDEC0()
{
  result = qword_27FE64DF8;
  if (!qword_27FE64DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64DF8);
  }

  return result;
}

uint64_t sub_260FFDF68(uint64_t a1)
{
  v2 = sub_260FFE4DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260FFDFA4(uint64_t a1)
{
  v2 = sub_260FFE4DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_260FFDFE0()
{
  if (*v0)
  {
    return 0x646C696863;
  }

  else
  {
    return 0x796C696D6166;
  }
}

uint64_t sub_260FFE014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x796C696D6166 && a2 == 0xE600000000000000;
  if (v6 || (sub_2610BD384() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646C696863 && a2 == 0xE500000000000000)
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

uint64_t sub_260FFE0E8(uint64_t a1)
{
  v2 = sub_260FFE488();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260FFE124(uint64_t a1)
{
  v2 = sub_260FFE488();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_260FFE160(uint64_t a1)
{
  v2 = sub_260FFE530();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260FFE19C(uint64_t a1)
{
  v2 = sub_260FFE530();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PASTargetAccountOptionsType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64E00, &qword_2610C4620);
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v21 = &v19 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64E08, &qword_2610C4628);
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64E10, &qword_2610C4630);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v19 - v13;
  v15 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260FFE488();
  sub_2610BD5F4();
  v16 = (v11 + 8);
  if (v15)
  {
    v25 = 1;
    sub_260FFE4DC();
    v17 = v21;
    sub_2610BD234();
    (*(v22 + 8))(v17, v23);
  }

  else
  {
    v24 = 0;
    sub_260FFE530();
    sub_2610BD234();
    (*(v19 + 8))(v9, v20);
  }

  return (*v16)(v14, v10);
}

unint64_t sub_260FFE488()
{
  result = qword_27FE64E18;
  if (!qword_27FE64E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64E18);
  }

  return result;
}

unint64_t sub_260FFE4DC()
{
  result = qword_27FE64E20;
  if (!qword_27FE64E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64E20);
  }

  return result;
}

unint64_t sub_260FFE530()
{
  result = qword_27FE64E28;
  if (!qword_27FE64E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64E28);
  }

  return result;
}

uint64_t PASTargetAccountOptionsType.hashValue.getter()
{
  v1 = *v0;
  sub_2610BD514();
  MEMORY[0x2666F7E40](v1);
  return sub_2610BD574();
}

uint64_t PASTargetAccountOptionsType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64E30, &qword_2610C4638);
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64E38, &qword_2610C4640);
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64E40, &qword_2610C4648);
  v33 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v27 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260FFE488();
  v15 = v34;
  sub_2610BD5D4();
  if (v15)
  {
    v16 = a1;
  }

  else
  {
    v28 = v7;
    v34 = a1;
    v17 = v31;
    v18 = v32;
    v19 = sub_2610BD214();
    v20 = (2 * *(v19 + 16)) | 1;
    v35 = v19;
    v36 = v19 + 32;
    v37 = 0;
    v38 = v20;
    v21 = sub_260FCD090();
    if (v21 == 2 || v37 != v38 >> 1)
    {
      v23 = sub_2610BCFF4();
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE643B8, &qword_2610C4650);
      *v25 = &type metadata for PASTargetAccountOptionsType;
      sub_2610BD174();
      sub_2610BCFE4();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84160], v23);
      swift_willThrow();
      (*(v33 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v39 = v21;
      if (v21)
      {
        v40 = 1;
        sub_260FFE4DC();
        sub_2610BD164();
        v22 = v33;
        (*(v30 + 8))(v6, v17);
      }

      else
      {
        v40 = 0;
        sub_260FFE530();
        sub_2610BD164();
        v22 = v33;
        (*(v29 + 8))(v10, v28);
      }

      (*(v22 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v18 = v39 & 1;
    }

    v16 = v34;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v16);
}

uint64_t static PASTargetAccountOptionsType.from(deviceFlags:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_260FFEB1C(1u, a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_260FFEB1C(unsigned __int8 a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_2610BC554();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_260FAA188(a2, a3);
  sub_2610BC564();
  sub_260FFF27C();
  do
  {
    sub_2610BCE74();
    v11 = v14;
  }

  while ((v14 & 1) == 0 && v13[14] != a1);
  (*(v7 + 8))(v10, v6);
  return v11 ^ 1u;
}

unint64_t sub_260FFEC78()
{
  result = qword_27FE64E48;
  if (!qword_27FE64E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64E48);
  }

  return result;
}

uint64_t type metadata accessor for PASTargetAccountOptionsProvider(uint64_t a1)
{
  result = qword_27FE64E50;
  if (!qword_27FE64E50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_260FFED5C(uint64_t a1)
{
  sub_260FFEE04(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_260FFEE04(uint64_t a1)
{
  if (!qword_27FE64E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE63CF0, &qword_2610C2510);
    v1 = sub_2610BC864();
    if (!v2)
    {
      atomic_store(v1, &qword_27FE64E60);
    }
  }
}

unint64_t sub_260FFEEE0()
{
  result = qword_27FE64E68;
  if (!qword_27FE64E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64E68);
  }

  return result;
}

unint64_t sub_260FFEF38()
{
  result = qword_27FE64E70;
  if (!qword_27FE64E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64E70);
  }

  return result;
}

unint64_t sub_260FFEF90()
{
  result = qword_27FE64E78;
  if (!qword_27FE64E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64E78);
  }

  return result;
}

unint64_t sub_260FFEFE8()
{
  result = qword_27FE64E80;
  if (!qword_27FE64E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64E80);
  }

  return result;
}

unint64_t sub_260FFF040()
{
  result = qword_27FE64E88;
  if (!qword_27FE64E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64E88);
  }

  return result;
}

unint64_t sub_260FFF098()
{
  result = qword_27FE64E90;
  if (!qword_27FE64E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64E90);
  }

  return result;
}

unint64_t sub_260FFF0F0()
{
  result = qword_27FE64E98;
  if (!qword_27FE64E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64E98);
  }

  return result;
}

unint64_t sub_260FFF148()
{
  result = qword_27FE64EA0;
  if (!qword_27FE64EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64EA0);
  }

  return result;
}

unint64_t sub_260FFF1A0()
{
  result = qword_27FE64EA8;
  if (!qword_27FE64EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64EA8);
  }

  return result;
}

unint64_t sub_260FFF1F8()
{
  result = qword_27FE64EB0;
  if (!qword_27FE64EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64EB0);
  }

  return result;
}

BOOL sub_260FFF24C(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

unint64_t sub_260FFF27C()
{
  result = qword_27FE64EB8;
  if (!qword_27FE64EB8)
  {
    sub_2610BC554();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64EB8);
  }

  return result;
}

uint64_t PASFlowStepTargetProtoAccountStart.__allocating_init(delegate:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_26104E0E4(a1, a2);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t PASFlowStepTargetProtoAccountStart.init(delegate:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_26104E0E4(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t PASFlowStepTargetProtoAccountStart.deinit()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_260F99170(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate);
  return v0;
}

uint64_t PASFlowStepTargetProtoAccountStart.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_260F99170(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for PASFlowStepTargetProtoAccountStart(uint64_t a1)
{
  result = qword_27FE64EC0;
  if (!qword_27FE64EC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_260FFF658()
{
  sub_2610BD514();
  sub_2610BCA54();
  return sub_2610BD574();
}

uint64_t sub_260FFF6CC(uint64_t a1)
{
  sub_2610BD514();
  sub_2610BCA54();
  return sub_2610BD574();
}

uint64_t sub_260FFF720@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_2610BD154();

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_260FFF794(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v2;
  v6 = sub_2610BD634();
  v7 = v3;
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  MEMORY[0x2666F7380](0xD000000000000013, 0x80000002610D1920);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  v4 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &unk_27FE63C30, &unk_2610BEE00);
  return v4;
}

uint64_t sub_260FFF890(uint64_t a1)
{
  v2 = sub_2610BD634();
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  MEMORY[0x2666F7380](0xD000000000000013, 0x80000002610D1920);
  return v2;
}

uint64_t sub_260FFF8F4(uint64_t a1)
{
  v2 = sub_261002504();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_260FFF930(uint64_t a1)
{
  v2 = sub_261002504();

  return MEMORY[0x28211F4A8](a1, v2);
}

void *sub_260FFF96C()
{
  v1 = v0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = sub_2610BC794();
  v4 = sub_2610BCD54();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_260F97000, v3, v4, "PASHeartbeatController deinit", v5, 2u);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  sub_260FFFF1C();
  sub_260F99170(v1 + 16);
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 32));

  return v1;
}

uint64_t sub_260FFFA74()
{
  sub_260FFF96C();

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

void sub_260FFFACC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v13 - v4;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v6 = sub_2610BC7B4();
  __swift_project_value_buffer(v6, qword_27FE65900);
  v7 = sub_2610BC794();
  v8 = sub_2610BCD84();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_260F97000, v7, v8, "PASHeartbeatController start", v9, 2u);
    MEMORY[0x2666F8720](v9, -1, -1);
  }

  *(v1 + 80) = 1;
  if (!*(v1 + 72))
  {
    sub_261000768(10);
    v10 = sub_2610BCC94();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v11;
    sub_261042734(0, 0, v5, &unk_2610C4DD0, v12);
  }
}

uint64_t sub_260FFFCC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_260FFFCE8, 0, 0);
}

uint64_t sub_260FFFCE8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_260FFFDDC;

    return sub_261000050();
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_260FFFDDC()
{

  return MEMORY[0x2822009F8](sub_260FFFEF4, 0, 0);
}

void sub_260FFFF1C()
{
  v1 = v0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = sub_2610BC794();
  v4 = sub_2610BCD84();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_260F97000, v3, v4, "PASHeartbeatController stop", v5, 2u);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  *(v1 + 80) = 0;
  if (*(v1 + 72))
  {

    sub_2610BCCB4();
  }
}

uint64_t sub_261000050()
{
  *(v1 + 96) = v0;
  *(v1 + 104) = *v0;
  return MEMORY[0x2822009F8](sub_261000098, 0, 0);
}

uint64_t sub_261000098()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  v0[14] = __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASHeartbeatController registerForRequests", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  sub_261090178((v0 + 7));

  v5 = v0[10];
  v6 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v5);
  v9 = (*(v6 + 16) + **(v6 + 16));
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_26100029C;

  return v9(v0 + 2, v5, v6);
}

uint64_t sub_26100029C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_261000508;
  }

  else
  {
    v2 = sub_2610003B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2610003B0()
{
  v1 = v0[13];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63F80, &qword_2610C4DC0);
  sub_260FAE028(0x6165627472616568, 0xE900000000000074, 0, sub_261002658, v4, &unk_2610C4DB8, v5, v2, v6, v3);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v7 = v0[1];

  return v7();
}

uint64_t sub_261000508()
{
  v1 = v0[16];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v2 = v1;
  v3 = sub_2610BC794();
  v4 = sub_2610BCD64();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[16];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_260F97000, v3, v4, "PASHeartbeatController registerForRequests failed.\n%{public}@", v7, 0xCu);
    sub_260FA9980(v8, &qword_27FE63FF0, &unk_2610BFDA0);
    MEMORY[0x2666F8720](v8, -1, -1);
    MEMORY[0x2666F8720](v7, -1, -1);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_261000670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_261000690, 0, 0);
}

uint64_t sub_261000690()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + 72))
    {
      v2 = Strong;

      sub_2610BCCB4();

      Strong = v2;
    }

    v3 = *(Strong + 80);
  }

  else
  {
    v3 = 2;
  }

  **(v0 + 40) = v3;
  v4 = *(v0 + 8);

  return v4();
}

void sub_261000768(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v14 - v5;
  if (*(v1 + 80) == 1)
  {
    v7 = sub_2610BCC94();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = a1;
    v9[5] = v8;
    *(v1 + 72) = sub_261042434(0, 0, v6, &unk_2610C4DA8, v9);
  }

  else
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v10 = sub_2610BC7B4();
    __swift_project_value_buffer(v10, qword_27FE65900);
    v15 = sub_2610BC794();
    v11 = sub_2610BCD84();
    if (os_log_type_enabled(v15, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_260F97000, v15, v11, "PASHeartbeatController queueHearbeat stopped", v12, 2u);
      MEMORY[0x2666F8720](v12, -1, -1);
    }

    v13 = v15;
  }
}

uint64_t sub_261000980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v6 = sub_2610BCC34();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261000A40, 0, 0);
}

uint64_t sub_261000A40(uint64_t a1)
{
  v3 = *(v1 + 96);
  if (is_mul_ok(v3, 0x3B9ACA00uLL))
  {
    v4 = 1000000000 * v3;
    v5 = swift_task_alloc();
    *(v1 + 136) = v5;
    *v5 = v1;
    v5[1] = sub_261000AF4;
    a1 = v4;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200480](a1);
}

uint64_t sub_261000AF4()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_261000E80;
  }

  else
  {
    v2 = sub_261000C08;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261000C08()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[20] = v2;
    *v2 = v0;
    v2[1] = sub_261000CF8;

    return sub_2610013B0();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_261000CF8()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_261001114;
  }

  else
  {
    v2 = sub_261000E0C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261000E0C()
{
  sub_261000768(10);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261000E80()
{
  v1 = v0[18];
  v0[11] = v1;
  v2 = (v0 + 11);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
  if (swift_dynamicCast())
  {

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v6 = v0[15];
    v5 = v0[16];
    v7 = v0[14];
    if (Strong)
    {
      sub_261000768(15);
    }

    (*(v6 + 8))(v5, v7);
    v8 = *v2;
  }

  else
  {

    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v9 = sub_2610BC7B4();
    __swift_project_value_buffer(v9, qword_27FE65900);
    v10 = v1;
    v11 = sub_2610BC794();
    v12 = sub_2610BCD64();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      v15 = v1;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_260F97000, v11, v12, "PASHeartbeatController failed to sendHeartbeat.\n%{public}@", v13, 0xCu);
      sub_260FA9980(v14, &qword_27FE63FF0, &unk_2610BFDA0);
      MEMORY[0x2666F8720](v14, -1, -1);
      MEMORY[0x2666F8720](v13, -1, -1);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_261001C20();

      goto LABEL_13;
    }

    v8 = v1;
  }

LABEL_13:

  v17 = v0[1];

  return v17();
}

uint64_t sub_261001114()
{

  v1 = v0[21];
  v0[11] = v1;
  v2 = (v0 + 11);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
  if (swift_dynamicCast())
  {

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v6 = v0[15];
    v5 = v0[16];
    v7 = v0[14];
    if (Strong)
    {
      sub_261000768(15);
    }

    (*(v6 + 8))(v5, v7);
    v8 = *v2;
  }

  else
  {

    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v9 = sub_2610BC7B4();
    __swift_project_value_buffer(v9, qword_27FE65900);
    v10 = v1;
    v11 = sub_2610BC794();
    v12 = sub_2610BCD64();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      v15 = v1;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_260F97000, v11, v12, "PASHeartbeatController failed to sendHeartbeat.\n%{public}@", v13, 0xCu);
      sub_260FA9980(v14, &qword_27FE63FF0, &unk_2610BFDA0);
      MEMORY[0x2666F8720](v14, -1, -1);
      MEMORY[0x2666F8720](v13, -1, -1);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_261001C20();

      goto LABEL_13;
    }

    v8 = v1;
  }

LABEL_13:

  v17 = v0[1];

  return v17();
}

uint64_t sub_2610013B0()
{
  *(v1 + 168) = v0;
  *(v1 + 176) = *v0;
  return MEMORY[0x2822009F8](sub_2610013F8, 0, 0);
}

uint64_t sub_2610013F8()
{

  sub_261090178((v0 + 16));

  v1 = v0[19];
  v2 = v0[20];
  __swift_project_boxed_opaque_existential_1(v0 + 16, v1);
  v5 = (*(v2 + 16) + **(v2 + 16));
  v3 = swift_task_alloc();
  v0[23] = v3;
  *v3 = v0;
  v3[1] = sub_261001544;

  return v5(v0 + 11, v1, v2);
}

uint64_t sub_261001544()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_261001B48;
  }

  else
  {
    v2 = sub_261001658;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261001658()
{
  v1 = v0[22];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
  __swift_project_boxed_opaque_existential_1(v0 + 11, v0[14]);
  v2 = swift_allocObject();
  v0[25] = v2;
  *(v2 + 16) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE66540, &unk_2610C4040);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = 9;
  v4 = sub_26100207C();
  *(inited + 64) = MEMORY[0x277D83B88];
  *(inited + 40) = v4;
  v0[26] = sub_260FA8D08(inited);
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &qword_27FE63C20, &unk_2610BEDF0);
  v5 = swift_task_alloc();
  v0[27] = v5;
  *v5 = v0;
  v5[1] = sub_261001814;

  return sub_260FAF070((v0 + 29), 0x6165627472616568, 0xE900000000000074, 0, 2, 0, sub_261001DB8, v2);
}

uint64_t sub_261001814()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_261001BAC;
  }

  else
  {

    v2 = sub_261001938;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261001938()
{
  v13 = v0;
  if (*(v0 + 232))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 88));
    v1 = *(v0 + 8);
  }

  else
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v2 = sub_2610BC7B4();
    __swift_project_value_buffer(v2, qword_27FE65900);

    v3 = sub_2610BC794();
    v4 = sub_2610BCD64();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 168);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136446210;
      if (*(v5 + 80))
      {
        v8 = 0x216576696C61;
      }

      else
      {
        v8 = 0x6F6F742064616564;
      }

      if (*(v5 + 80))
      {
        v9 = 0xE600000000000000;
      }

      else
      {
        v9 = 0xE800000000000000;
      }

      v10 = sub_260FA5970(v8, v9, &v12);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_260F97000, v3, v4, "PASHeartbeatController other device has died and we are %{public}s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v7);
      MEMORY[0x2666F8720](v7, -1, -1);
      MEMORY[0x2666F8720](v6, -1, -1);
    }

    sub_2610021DC();
    swift_allocError();
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 88));
    v1 = *(v0 + 8);
  }

  return v1();
}

uint64_t sub_261001B48()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 128));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261001BAC()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 88));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261001C20()
{
  v1 = v0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = sub_2610BC794();
  v4 = sub_2610BCD84();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_260F97000, v3, v4, "PASHeartbeatController heartbeatDidFail", v5, 2u);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  *(v1 + 80) = 0;
  if (*(v1 + 72))
  {

    sub_2610BCCB4();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_2610123E4();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_261001D70(uint64_t a1, uint64_t a2)
{
  *(*v2 + 24) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_261001DBC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  sub_260FB17E4(a6, 9u, 9);
  v12 = v11;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v13 = sub_2610BC7B4();
  __swift_project_value_buffer(v13, qword_27FE65900);
  sub_260FBED78(a5);

  oslog = sub_2610BC794();
  v14 = sub_2610BCD54();
  sub_260FBED94(a5);

  if (os_log_type_enabled(oslog, v14))
  {
    v27 = a3;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v29[0] = v16;
    *v15 = 136446978;
    v17 = sub_260FADBA4(a5);
    v19 = sub_260FA5970(v17, v18, v29);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    if (v12)
    {
      v20 = 0;
      v21 = 0xE000000000000000;
    }

    else
    {
      sub_261002230();
      v20 = sub_2610BCE94();
      v21 = v22;
    }

    v23 = sub_260FA5970(v20, v21, v29);

    *(v15 + 14) = v23;
    *(v15 + 22) = 2082;
    *(v15 + 24) = sub_260FA5970(a1, a2, v29);
    *(v15 + 32) = 2082;
    if (a4)
    {
      v24 = v27;
    }

    else
    {
      v24 = 0;
    }

    if (a4)
    {
      v25 = a4;
    }

    else
    {
      v25 = 0xE000000000000000;
    }

    v26 = sub_260FA5970(v24, v25, v29);

    *(v15 + 34) = v26;
    _os_log_impl(&dword_260F97000, oslog, v14, "PASHeartbeatController %{public}s heartbeat at %{public}s - %{public}s - %{public}s", v15, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x2666F8720](v16, -1, -1);
    MEMORY[0x2666F8720](v15, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_26100207C()
{
  v0 = sub_2610BC5D4();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x28223BE20](v0, v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v13 - v7;
  sub_2610BC5C4();
  sub_2610583C0(v5);
  sub_2610BC584();
  v10 = round(v9);
  v11 = *(v1 + 8);
  v11(v5, v0);
  result = (v11)(v8, v0);
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v10 < 9.22337204e18)
  {
    return v10;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_2610021DC()
{
  result = qword_27FE64ED0;
  if (!qword_27FE64ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64ED0);
  }

  return result;
}

unint64_t sub_261002230()
{
  result = qword_27FE64ED8;
  if (!qword_27FE64ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64ED8);
  }

  return result;
}

uint64_t sub_261002284(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_260FB6DB4;

  return sub_261000980(a1, v4, v5, v7, v6);
}

uint64_t sub_261002344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_260FB6DB4;

  return sub_261000670(a1, a2, a3, v3);
}

uint64_t sub_2610023F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FBF860;

  return sub_260FFFCC8(a1, v4, v5, v6);
}

unint64_t sub_2610024CC(void *a1)
{
  a1[1] = sub_261002504();
  a1[2] = sub_261002558();
  result = sub_2610025AC();
  a1[3] = result;
  return result;
}

unint64_t sub_261002504()
{
  result = qword_27FE64EE0;
  if (!qword_27FE64EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64EE0);
  }

  return result;
}

unint64_t sub_261002558()
{
  result = qword_27FE64EE8;
  if (!qword_27FE64EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64EE8);
  }

  return result;
}

unint64_t sub_2610025AC()
{
  result = qword_27FE64EF0;
  if (!qword_27FE64EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64EF0);
  }

  return result;
}

unint64_t sub_261002604()
{
  result = qword_27FE64EF8;
  if (!qword_27FE64EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64EF8);
  }

  return result;
}

uint64_t sub_261002660()
{
  sub_2610BD514();
  sub_2610BCA54();
  return sub_2610BD574();
}

uint64_t sub_2610026E4(uint64_t a1)
{
  sub_2610BD514();
  sub_2610BCA54();
  return sub_2610BD574();
}

uint64_t sub_261002740@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_2610BD154();

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_2610027BC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v2;
  v6 = sub_2610BD634();
  v7 = v3;
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  MEMORY[0x2666F7380](0x41676E697373696DLL, 0xEE00746E756F6363);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  v4 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FD6C78(inited + 32);
  return v4;
}

uint64_t sub_2610028B0(uint64_t a1)
{
  v2 = sub_2610BD634();
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  MEMORY[0x2666F7380](0x41676E697373696DLL, 0xEE00746E756F6363);
  return v2;
}

uint64_t sub_26100291C(uint64_t a1)
{
  v2 = sub_2610039E4();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_261002958(uint64_t a1)
{
  v2 = sub_2610039E4();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t PASProtoAccount.AgeRange.hashValue.getter()
{
  v1 = *v0;
  sub_2610BD514();
  MEMORY[0x2666F7E40](v1);
  return sub_2610BD574();
}

uint64_t sub_261002A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E756F636361 && a2 == 0xE700000000000000)
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

uint64_t sub_261002ABC(uint64_t a1)
{
  v2 = sub_261003730();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261002AF8(uint64_t a1)
{
  v2 = sub_261003730();

  return MEMORY[0x2821FE720](a1, v2);
}

void PASProtoAccount.ageRange.getter(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  if ([v3 respondsToSelector_])
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v4 = sub_2610BC7B4();
    __swift_project_value_buffer(v4, qword_27FE65900);
    v5 = sub_2610BC794();
    v6 = sub_2610BCD54();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_260F97000, v5, v6, "We have the proto_ageRange method, using it", v7, 2u);
      MEMORY[0x2666F8720](v7, -1, -1);
    }

    v8 = [v3 proto_ageRange];
    if (v8 >= 4)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }
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
    v12 = sub_2610BCD54();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_260F97000, v11, v12, "We do not have the proto_ageRange method", v13, 2u);
      MEMORY[0x2666F8720](v13, -1, -1);
    }

    v9 = 0;
  }

  *a1 = v9;
}

uint64_t PASProtoAccount.__allocating_init(account:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t PASProtoAccount.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  PASProtoAccount.init(from:)(a1);
  return v2;
}

void *PASProtoAccount.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64F00, &qword_2610C4FD0);
  v25 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261003730();
  sub_2610BD5D4();
  if (!v2)
  {
    v22 = a1;
    v9 = v25;
    sub_260FE4B78();
    sub_2610BD1E4();
    v11 = v23;
    v10 = v24;
    sub_260FA9AB4(0, &qword_27FE64840, 0x277CCAAC8);
    sub_260FA9AB4(0, &qword_27FE64D80, 0x277CB8F30);
    v12 = sub_2610BCD94();
    v21 = v10;
    if (v12)
    {
      v15 = v12;
      (*(v9 + 8))(v8, v5);
      sub_260FAC46C(v11, v21);
      *(v3 + 16) = v15;
      v13 = v22;
      goto LABEL_4;
    }

    v16 = v11;
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v17 = sub_2610BC7B4();
    __swift_project_value_buffer(v17, qword_27FE65900);
    v18 = sub_2610BC794();
    v19 = sub_2610BCD64();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_260F97000, v18, v19, "PASAccountWithImage failed to init from decoder. Account is missing.", v20, 2u);
      MEMORY[0x2666F8720](v20, -1, -1);
    }

    sub_261003784();
    swift_allocError();
    swift_willThrow();
    sub_260FAC46C(v16, v21);
    (*(v9 + 8))(v8, v5);
    a1 = v22;
  }

  swift_deallocPartialClassInstance();
  v13 = a1;
LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  return v3;
}

uint64_t PASProtoAccount.encode(to:)(void *a1)
{
  v2 = v1;
  v19[2] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64F18, &qword_2610C4FD8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v19[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261003730();
  sub_2610BD5F4();
  v9 = objc_opt_self();
  v10 = *(v2 + 16);
  v19[0] = 0;
  v11 = [v9 archivedDataWithRootObject:v10 requiringSecureCoding:1 error:v19];
  v12 = v19[0];
  if (v11)
  {
    v13 = sub_2610BC534();
    v15 = v14;

    v19[0] = v13;
    v19[1] = v15;
    sub_260FE50F4();
    sub_2610BD2A4();
    (*(v5 + 8))(v8, v4);
    return sub_260FAC46C(v13, v15);
  }

  else
  {
    v17 = v12;
    sub_2610BC4F4();

    swift_willThrow();
    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t PASProtoAccount.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void *sub_2610033C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = PASProtoAccount.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

id PASProtoAccount.firstName.getter()
{
  v1 = *(v0 + 16);
  if ([v1 respondsToSelector_])
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v2 = sub_2610BC7B4();
    __swift_project_value_buffer(v2, qword_27FE65900);
    v3 = sub_2610BC794();
    v4 = sub_2610BCD54();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_260F97000, v3, v4, "We have the proto_givenName method, using it", v5, 2u);
      MEMORY[0x2666F8720](v5, -1, -1);
    }

    result = [v1 proto_givenName];
    if (result)
    {
      v7 = result;
      v8 = sub_2610BCA04();

      return v8;
    }
  }

  else
  {
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
      _os_log_impl(&dword_260F97000, v10, v11, "We do not have the proto_givenName method", v12, 2u);
      MEMORY[0x2666F8720](v12, -1, -1);
    }

    return 0;
  }

  return result;
}

unint64_t sub_261003730()
{
  result = qword_27FE64F08;
  if (!qword_27FE64F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64F08);
  }

  return result;
}

unint64_t sub_261003784()
{
  result = qword_27FE64F10;
  if (!qword_27FE64F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64F10);
  }

  return result;
}

unint64_t sub_2610037DC()
{
  result = qword_27FE64F20;
  if (!qword_27FE64F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64F20);
  }

  return result;
}

unint64_t sub_261003830(uint64_t a1, uint64_t a2)
{
  result = sub_261003858(a1, a2);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261003858(uint64_t a1, uint64_t a2)
{
  result = qword_27FE64F28;
  if (!qword_27FE64F28)
  {
    type metadata accessor for PASProtoAccount();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64F28);
  }

  return result;
}

unint64_t sub_261003958()
{
  result = qword_27FE64F30;
  if (!qword_27FE64F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64F30);
  }

  return result;
}

unint64_t sub_2610039AC(void *a1)
{
  a1[1] = sub_2610039E4();
  a1[2] = sub_261003A38();
  result = sub_261003A8C();
  a1[3] = result;
  return result;
}

unint64_t sub_2610039E4()
{
  result = qword_27FE64F38;
  if (!qword_27FE64F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64F38);
  }

  return result;
}

unint64_t sub_261003A38()
{
  result = qword_27FE64F40;
  if (!qword_27FE64F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64F40);
  }

  return result;
}

unint64_t sub_261003A8C()
{
  result = qword_27FE64F48;
  if (!qword_27FE64F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64F48);
  }

  return result;
}

unint64_t sub_261003AE4()
{
  result = qword_27FE64F50;
  if (!qword_27FE64F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64F50);
  }

  return result;
}

unint64_t sub_261003B3C()
{
  result = qword_27FE64F58;
  if (!qword_27FE64F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64F58);
  }

  return result;
}

unint64_t sub_261003B94()
{
  result = qword_27FE64F60;
  if (!qword_27FE64F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64F60);
  }

  return result;
}

unint64_t sub_261003BEC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v3;
  v4 = sub_26109D074(a1);
  *(inited + 72) = MEMORY[0x277D837D0];
  if (!v5)
  {
    sub_261007514(a1);
    v4 = sub_261003F8C(a1);
  }

  *(inited + 48) = v4;
  *(inited + 56) = v5;
  v6 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &unk_27FE63C30, &unk_2610BEE00);
  return v6;
}

unint64_t sub_261003CC0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = sub_2610BCA04();
  v4 = 0xD000000000000029;
  v5 = "nalSignInError.removeFailed";
  if (a1)
  {
    v4 = 0xD00000000000002BLL;
    v5 = "_anisetteDataProvider";
  }

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v3;
  *(inited + 48) = v4;
  *(inited + 56) = v5 | 0x8000000000000000;
  v6 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &unk_27FE63C30, &unk_2610BEE00);
  return v6;
}

unint64_t sub_261003DAC(char a1)
{
  v2 = 0xD000000000000029;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v4;
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = 0xD000000000000036;
    }

    else
    {
      v2 = 0xD00000000000002CLL;
    }

    if (a1 == 1)
    {
      v5 = "yError.noViewDetailsProvided";
    }

    else
    {
      v5 = "edTermsError.noData";
    }
  }

  else
  {
    v5 = "icationResultsProvided";
  }

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v2;
  *(inited + 56) = v5 | 0x8000000000000000;
  v6 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &unk_27FE63C30, &unk_2610BEE00);
  return v6;
}

unint64_t sub_261003EB4(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v5;
  v6 = sub_261004068(a1, a2 & 1);
  *(inited + 72) = MEMORY[0x277D837D0];
  if (!v7)
  {
    v6 = sub_261004068(a1, a2 & 1);
  }

  *(inited + 48) = v6;
  *(inited + 56) = v7;
  v8 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &unk_27FE63C30, &unk_2610BEE00);
  return v8;
}

unint64_t sub_261003F8C(void *a1)
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

    sub_261007524(a1);
    return 0;
  }

  return v1;
}

unint64_t sub_261004068(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 0xD000000000000023;
    if (a1 != 1)
    {
      v2 = 0xD00000000000002CLL;
    }

    if (a1)
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

unint64_t sub_26100416C()
{
  if (*v0)
  {
    return 0xD00000000000002BLL;
  }

  else
  {
    return 0xD000000000000029;
  }
}

uint64_t sub_2610041A8(uint64_t a1)
{
  v2 = sub_261007418();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2610041E4(uint64_t a1)
{
  v2 = sub_261007418();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t PASFlowStepPersonalSignIn.firstName.getter()
{
  v1 = [*(*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepPersonalSignIn_account) + 16) aa_firstName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2610BCA04();

  return v3;
}

uint64_t sub_261004294()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepPersonalSignIn__anisetteDataProvider);
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

uint64_t sub_261004360@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepPersonalSignIn__authenticator);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &qword_27FE63BD0, &qword_2610BED90);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE63BD0, &qword_2610BED90);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260FA097C(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &qword_27FE63BD0, &qword_2610BED90);
  swift_endAccess();
}

uint64_t sub_26100449C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepPersonalSignIn__accountStore);
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

uint64_t sub_261004608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v12 = a5(a1, a3, a4, v5, ObjectType, a2);
  swift_unknownObjectRelease();
  return v12;
}

id PASFlowStepPersonalSignIn.nextStep()()
{
  v1 = (v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepPersonalSignIn_result);
  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepPersonalSignIn_result + 8);
  if (v2 == 255)
  {
    v3 = 0x80000002610D3910;
    sub_260FC3450();
    swift_allocError();
    *v10 = 0xD000000000000030;
    *(v10 + 8) = 0x80000002610D3910;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
  }

  else
  {
    v3 = *v1;
    if ((v2 & 1) == 0)
    {
      v11 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v13 = *(v11 + 8);
      v14 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepPersonalSignIn_account);
      v15 = objc_allocWithZone(MEMORY[0x277CB8F48]);
      sub_261007228(v3, v2);

      v16 = [v15 init];
      v17 = [objc_allocWithZone(MEMORY[0x277CED1E8]) initWithAccountStore_];

      v3 = sub_261006E78(Strong, v13, v14, v3, v17);
      swift_unknownObjectRelease();
      sub_261007580(&unk_27FE64F80, type metadata accessor for PASFlowStepAIDASignIn, &protocol conformance descriptor for PASTargetFlowStepBase);
      return v3;
    }

    sub_2610071F8(*v1, 1);
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v4 = sub_2610BC7B4();
    __swift_project_value_buffer(v4, qword_27FE65900);
    sub_2610071F8(v3, 1);
    v5 = sub_2610BC794();
    v6 = sub_2610BCD64();
    sub_261007204(v3, v2);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138543362;
      sub_2610071F8(v3, 1);
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&dword_260F97000, v5, v6, "PASFlowStepPersonalSignIn nextStep finished with error %{public}@", v7, 0xCu);
      sub_260FA9980(v8, &qword_27FE63FF0, &unk_2610BFDA0);
      MEMORY[0x2666F8720](v8, -1, -1);
      MEMORY[0x2666F8720](v7, -1, -1);
    }
  }

  swift_willThrow();
  return v3;
}

uint64_t PASFlowStepPersonalSignIn.performSignIn(with:)(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_26100498C, 0, 0);
}

uint64_t sub_26100498C()
{
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
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASFlowStepPersonalSignIn performSignIn", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = v0[5];

  v6 = [*(*(v5 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepPersonalSignIn_account) + 16) username];
  if (v6)
  {
    v7 = v6;
    v8 = sub_2610BCA04();
    v10 = v9;

    v0[6] = v10;
    v11 = swift_task_alloc();
    v0[7] = v11;
    *v11 = v0;
    v11[1] = sub_261004BAC;
    v13 = v0[4];
    v12 = v0[5];

    return sub_261004ED0((v0 + 2), v12, v8, v10, v13);
  }

  else
  {
    v15 = v0[5];
    sub_261007240();
    v16 = swift_allocError();
    *v17 = 0;
    v18 = v15 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepPersonalSignIn_result;
    v19 = *(v15 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepPersonalSignIn_result);
    *v18 = v16;
    LOBYTE(v17) = *(v18 + 8);
    *(v18 + 8) = 1;
    sub_261007204(v19, v17);
    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_261004BAC()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_261004DA4;
  }

  else
  {
    v2 = sub_261004CDC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261004CDC()
{
  v1 = v0[8] != 0;
  v2 = v0[5] + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepPersonalSignIn_result;
  v3 = *v2;
  *v2 = v0[2];
  v4 = *(v2 + 8);
  *(v2 + 8) = v1;
  sub_261007204(v3, v4);
  sub_2610BCC74();
  v0[9] = sub_2610BCC64();
  v6 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_261004E68, v6, v5);
}

uint64_t sub_261004DA4()
{
  v1 = v0[8];
  v2 = v0[5] + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepPersonalSignIn_result;
  v3 = *v2;
  *v2 = v1;
  v4 = *(v2 + 8);
  *(v2 + 8) = v1 != 0;
  sub_261007204(v3, v4);
  sub_2610BCC74();
  v0[9] = sub_2610BCC64();
  v6 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_261004E68, v6, v5);
}

uint64_t sub_261004E68()
{

  sub_2610439BC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261004ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  return MEMORY[0x2822009F8](sub_261004EF8, 0, 0);
}

uint64_t sub_261004EF8()
{
  v1 = *(*(v0[10] + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepPersonalSignIn_account) + 16);
  v0[14] = v1;
  v2 = v1;
  [v2 markAllPropertiesDirty];
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_261004FB8;

  return sub_261005884(v2);
}

uint64_t sub_261004FB8()
{
  v2 = *v1;
  v2[16] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_261005584, 0, 0);
  }

  else
  {
    v3 = v2[14];
    v2[17] = v3;
    v4 = v3;
    v5 = swift_task_alloc();
    v2[18] = v5;
    *v5 = v2;
    v5[1] = sub_26100514C;

    return sub_2610063B4(v4);
  }
}

uint64_t sub_26100514C()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_2610057A0;
  }

  else
  {

    v3 = sub_261005268;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_261005268()
{
  sub_261004360((v0 + 2));
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v0[20] = sub_261004294();
  v4 = *(v1 + 16) + **(v1 + 16);
  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_2610053E0;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_2610053E0()
{
  *(*v1 + 176) = v0;

  swift_unknownObjectRelease();
  if (v0)
  {
    v2 = sub_261005810;
  }

  else
  {
    v2 = sub_261005510;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261005510()
{
  v1 = *(v0 + 112);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_261005584()
{
  v1 = *(v0 + 128);
  *(v0 + 56) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
  if (swift_dynamicCast() && (v3 = *(v0 + 64)) != 0)
  {

    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v4 = sub_2610BC7B4();
    __swift_project_value_buffer(v4, qword_27FE65900);
    v5 = sub_2610BC794();
    v6 = sub_2610BCD84();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_260F97000, v5, v6, "PASFlowStepPersonalSignIn performSignIn could not remove existing account. Trying to takeValues fromModifiedAccount instead", v7, 2u);
      MEMORY[0x2666F8720](v7, -1, -1);
    }

    v8 = *(v0 + 112);

    [v3 takeValuesFromModifiedAccount_];
    v9 = *(v0 + 56);
    v10 = v3;

    *(v0 + 136) = v10;
    v11 = swift_task_alloc();
    *(v0 + 144) = v11;
    *v11 = v0;
    v11[1] = sub_26100514C;

    return sub_2610063B4(v10);
  }

  else
  {

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_2610057A0()
{
  v1 = v0[17];
  v2 = v0[14];

  v3 = v0[1];

  return v3();
}

uint64_t sub_261005810()
{
  v1 = *(v0 + 112);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_261005884(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  return MEMORY[0x2822009F8](sub_2610058A4, 0, 0);
}

uint64_t sub_2610058A4()
{
  sub_26100449C((v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v6 = (*(v2 + 64) + **(v2 + 64));
  v3 = swift_task_alloc();
  v0[22] = v3;
  *v3 = v0;
  v3[1] = sub_2610059DC;
  v4 = v0[20];

  return v6(v4, v1, v2);
}

uint64_t sub_2610059DC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v4 = sub_261006030;
  }

  else
  {
    v4 = sub_261005AF0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_261005AF0()
{
  v1 = v0[23];
  v2 = v1;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  if (v1)
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v3 = sub_2610BC7B4();
    v0[25] = __swift_project_value_buffer(v3, qword_27FE65900);
    v4 = v2;
    v5 = sub_2610BC794();
    v6 = sub_2610BCD84();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 141558274;
      *(v7 + 4) = 1752392040;
      *(v7 + 12) = 2112;
      v9 = [v4 identifier];
      *(v7 + 14) = v9;
      *v8 = v9;
      _os_log_impl(&dword_260F97000, v5, v6, "PASFlowStepPersonalSignIn removeAccountIfExists found existing account: %{mask.hash}@", v7, 0x16u);
      sub_260FA9980(v8, &qword_27FE63FF0, &unk_2610BFDA0);
      MEMORY[0x2666F8720](v8, -1, -1);
      MEMORY[0x2666F8720](v7, -1, -1);
    }

    sub_26100449C((v0 + 7));
    v10 = v0[10];
    v11 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v10);
    v15 = (*(v11 + 40) + **(v11 + 40));
    v12 = swift_task_alloc();
    v0[26] = v12;
    *v12 = v0;
    v12[1] = sub_261005DCC;

    return v15(v4, v10, v11);
  }

  else
  {
    v14 = v0[1];

    return v14(0);
  }
}

uint64_t sub_261005DCC(char a1)
{
  v4 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v5 = sub_261006200;
  }

  else
  {
    *(v4 + 224) = a1 & 1;
    v5 = sub_261005EF8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_261005EF8()
{
  v1 = *(v0 + 224);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  v2 = sub_2610BC794();
  v3 = sub_2610BCD54();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 184);
  if (v1 == 1)
  {
    if (v4)
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "PASFlowStepPersonalSignIn removeAccountIfExists success";
LABEL_6:
      _os_log_impl(&dword_260F97000, v2, v3, v7, v6, 2u);
      MEMORY[0x2666F8720](v6, -1, -1);

      goto LABEL_8;
    }
  }

  else if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "PASFlowStepPersonalSignIn removeAccountIfExists failed";
    goto LABEL_6;
  }

  v2 = v5;
LABEL_8:

  v8 = *(v0 + 8);

  return v8(v1);
}

uint64_t sub_261006030()
{
  v16 = v0;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[24];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v10 = sub_2610BD4A4();
    v12 = sub_260FA5970(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_260F97000, v4, v5, "PASFlowStepPersonalSignIn removeAccountIfExists error finding existing account: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x2666F8720](v9, -1, -1);
    MEMORY[0x2666F8720](v8, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_261006200()
{
  v16 = v0;
  v1 = v0[27];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v2 = v1;
  v3 = sub_2610BC794();
  v4 = sub_2610BCD64();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    swift_getErrorValue();
    v7 = sub_2610BD4A4();
    v9 = sub_260FA5970(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_260F97000, v3, v4, "PASFlowStepPersonalSignIn removeAccountIfExists failed: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x2666F8720](v6, -1, -1);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  v10 = v0[27];
  v11 = v0[23];
  sub_261007240();
  swift_allocError();
  *v12 = v11;
  swift_willThrow();

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_2610063B4(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  return MEMORY[0x2822009F8](sub_2610063D4, 0, 0);
}

void sub_2610063D4()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  v0[22] = __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASFlowStepPersonalSignIn saveAccount", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = v0[20];

  sub_26100449C((v0 + 2));
  v6 = v0[5];
  v7 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  v8 = [v5 accountType];
  if (!v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v8;
  v10 = [v8 identifier];

  if (!v10)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v11 = sub_2610BCA04();
  v13 = v12;

  v0[23] = v13;
  v15 = (*(v7 + 56) + **(v7 + 56));
  v14 = swift_task_alloc();
  v0[24] = v14;
  *v14 = v0;
  v14[1] = sub_261006634;

  v15(v11, v13, v6, v7);
}

uint64_t sub_261006634(uint64_t a1)
{
  *(*v1 + 200) = a1;

  return MEMORY[0x2822009F8](sub_261006754, 0, 0);
}

uint64_t sub_261006754()
{
  v1 = *(v0 + 200);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  if (v1)
  {
    v2 = *(v0 + 200);
    [*(v0 + 160) setAccountType_];
  }

  sub_26100449C(v0 + 56);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v3);
  v8 = (*(v4 + 32) + **(v4 + 32));
  v5 = swift_task_alloc();
  *(v0 + 208) = v5;
  *v5 = v0;
  v5[1] = sub_2610068B8;
  v6 = *(v0 + 160);

  return v8(v6, v3, v4);
}

uint64_t sub_2610068B8(char a1)
{
  v4 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v5 = sub_261006A4C;
  }

  else
  {
    *(v4 + 224) = a1 & 1;
    v5 = sub_2610069E4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2610069E4()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  v1 = *(v0 + 224);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_261006A4C()
{
  v18 = v0;
  v1 = v0[27];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  swift_getErrorValue();
  v2 = v1;
  v3 = sub_2610BD4C4();

  v4 = v0[27];
  if (v3 == 5)
  {
    v5 = v4;
    v6 = sub_2610BC794();
    v7 = sub_2610BCD64();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[27];
    if (v8)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136446210;
      swift_getErrorValue();
      v12 = sub_2610BD4A4();
      v14 = sub_260FA5970(v12, v13, &v17);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_260F97000, v6, v7, "PASFlowStepPersonalSignIn saveAccount failed with error: %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x2666F8720](v11, -1, -1);
      MEMORY[0x2666F8720](v10, -1, -1);
    }

    v15 = v0[1];
  }

  else
  {
    swift_willThrow();
    v15 = v0[1];
  }

  return v15(0);
}

void sub_261006C54()
{

  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepPersonalSignIn_result);
  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepPersonalSignIn_result + 8);

  sub_261007204(v1, v2);
}

uint64_t PASFlowStepPersonalSignIn.deinit()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_260F99170(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate);

  sub_261007204(*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepPersonalSignIn_result), *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepPersonalSignIn_result + 8));
  return v0;
}

uint64_t PASFlowStepPersonalSignIn.__deallocating_deinit()
{
  PASFlowStepPersonalSignIn.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_261006E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[3] = sub_261007534();
  v19[4] = &protocol witness table for AIDAServiceOwnersManager;
  v19[0] = a5;
  type metadata accessor for PASFlowStepAIDASignIn(0);
  v10 = swift_allocObject();
  v18[3] = type metadata accessor for PASAccountWithImage();
  v18[4] = sub_261007580(&unk_27FE65010, type metadata accessor for PASAccountWithImage, &protocol conformance descriptor for PASAccountWithImage);
  v18[0] = a3;
  v11 = OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn__messageSessionProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE657C0, &qword_2610BEE90);
  v12 = swift_allocObject();
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0;
  *(v10 + v11) = v12;
  v13 = OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn__accountManager;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65020, &unk_2610CF360);
  v14 = swift_allocObject();
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0u;
  *(v14 + 48) = 0;
  *(v10 + v13) = v14;
  v15 = v10 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_result;
  *v15 = 0;
  *(v15 + 8) = -1;
  sub_260FA99E0(v18, v10 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_account);
  *(v10 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_authResults) = a4;
  sub_260FA99E0(v19, v10 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_serviceOwnersManager);
  v16 = sub_26104E0E4(a1, a2);
  __swift_destroy_boxed_opaque_existential_0Tm(v19);
  __swift_destroy_boxed_opaque_existential_0Tm(v18);
  return v16;
}

char *sub_261007024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepPersonalSignIn__anisetteDataProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65440, &unk_2610C5640);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(a4 + v10) = v11;
  v12 = OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepPersonalSignIn__authenticator;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FE65030, &qword_2610C4080);
  v13 = swift_allocObject();
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0;
  *(a4 + v12) = v13;
  v14 = OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepPersonalSignIn__accountStore;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64220, &unk_2610C0560);
  v15 = swift_allocObject();
  *(a4 + v14) = v15;
  v16 = a4 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepPersonalSignIn_result;
  *(v16 + 8) = -1;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  *v16 = 0;
  *(a4 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepPersonalSignIn_account) = a2;
  *(a4 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepPersonalSignIn_companionDevice) = a3;
  *(v15 + 48) = 0;
  v17 = a4 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate;
  *(a4 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  *(v17 + 8) = a6;
  swift_unknownObjectWeakAssign();
  return PASFlowStepBase.init()();
}

char *sub_261007180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();

  return sub_261007024(a1, a2, a3, v11, a5, a6);
}

id sub_2610071F8(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

void sub_261007204(void *result, char a2)
{
  if (a2 != -1)
  {
    sub_26100721C(result, a2 & 1);
  }
}

void sub_26100721C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

id sub_261007228(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_2610071F8(result, a2 & 1);
  }

  return result;
}

unint64_t sub_261007240()
{
  result = qword_27FE64F90;
  if (!qword_27FE64F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64F90);
  }

  return result;
}

uint64_t sub_261007294(uint64_t a1)
{
  result = sub_261007580(&unk_27FE64FC0, type metadata accessor for PASFlowStepPersonalSignIn, &protocol conformance descriptor for PASTargetFlowStepBase);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for PASFlowStepPersonalSignIn(uint64_t a1)
{
  result = qword_27FE64FD0;
  if (!qword_27FE64FD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2610073E0(void *a1)
{
  a1[1] = sub_261007418();
  a1[2] = sub_26100746C();
  result = sub_2610074C0();
  a1[3] = result;
  return result;
}

unint64_t sub_261007418()
{
  result = qword_27FE64FE0;
  if (!qword_27FE64FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64FE0);
  }

  return result;
}

unint64_t sub_26100746C()
{
  result = qword_27FE64FE8;
  if (!qword_27FE64FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64FE8);
  }

  return result;
}

unint64_t sub_2610074C0()
{
  result = qword_27FE64FF0;
  if (!qword_27FE64FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64FF0);
  }

  return result;
}

id sub_261007514(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_261007524(id a1)
{
  if (a1 != 1)
  {
  }
}

unint64_t sub_261007534()
{
  result = qword_27FE65008;
  if (!qword_27FE65008)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE65008);
  }

  return result;
}

uint64_t sub_261007580(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_261007614(char a1)
{
  sub_2610BD514();
  MEMORY[0x2666F7E40](a1 & 1);
  return sub_2610BD574();
}

uint64_t sub_261007678(uint64_t a1)
{
  sub_2610BD514();
  sub_2610075EC(v3, *v1);
  return sub_2610BD574();
}

uint64_t MessageSessionTransport.onReceive(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = *v3;
  v8 = *(v3 + 2);
  v7 = *(v3 + 3);
  v9 = *(v3 + 4);
  v10 = *(v3 + 5);
  v11 = *(v3 + 6);
  sub_260F9A2D8(v7, v9);
  *a3 = v13;
  *(a3 + 40) = v10;
  *(a3 + 48) = v11;
  *(a3 + 16) = v8;
  *(a3 + 24) = a1;
  *(a3 + 32) = a2;
}

uint64_t MessageSessionTransport.onInvalidation(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = v3[1];
  v10 = *v3;
  v7 = *(v3 + 4);
  sub_260F9A2D8(*(v3 + 5), *(v3 + 6));
  *a3 = v10;
  *(a3 + 16) = v9;
  *(a3 + 32) = v7;
  *(a3 + 40) = a1;
  *(a3 + 48) = a2;
}

uint64_t MessageSessionTransport.build()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  if (v6)
  {

    MessageSessionTransport.activate(with:)(v6, v7, a1, a2);
    return sub_260F9A2D8(v6, v7);
  }

  else
  {

    sub_260F9A2D8(0, v7);
    sub_260F9A2D8(v8, v9);
    type metadata accessor for MessageSessionTransport.Failure(0, *(a1 + 16), *(a1 + 24), v11);
    swift_getWitnessTable();
    swift_allocError();
    *v12 = 0;
    return swift_willThrow();
  }
}

void MessageSessionTransport.activate(with:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(v4 + 16);
  v26 = *v4;
  v27 = v8;
  v28 = *(v4 + 32);
  v29 = *(v4 + 48);
  sub_2610BC6F4();
  swift_allocObject();
  v9 = sub_2610BC6E4();
  sub_2610BC6C4();
  swift_allocObject();
  v10 = sub_2610BC6B4();
  v11 = v26;
  v12 = sub_2610BC9D4();
  v13 = swift_allocObject();
  v14 = *(a3 + 16);
  v15 = *(a3 + 24);
  v13[2] = v14;
  v13[3] = v15;
  v13[4] = v10;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = v9;
  *&v23 = sub_261007D64;
  *(&v23 + 1) = v13;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v22 = sub_26100861C;
  *(&v22 + 1) = &block_descriptor_2;
  v16 = _Block_copy(&aBlock);

  [v11 registerRequestID:v12 options:0 handler:v16];
  _Block_release(v16);

  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *(v17 + 24) = v15;
  v18 = v27;
  *(v17 + 32) = v26;
  *(v17 + 48) = v18;
  *(v17 + 64) = v28;
  *(v17 + 80) = v29;
  v25[4] = sub_261008820;
  v25[5] = v17;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 1107296256;
  v25[2] = sub_260FF8E10;
  v25[3] = &block_descriptor_6;
  v19 = _Block_copy(v25);
  (*(*(a3 - 8) + 16))(&aBlock, &v26, a3);

  [v11 setInvalidationHandler_];
  _Block_release(v19);
  [v11 activate];
  aBlock = v26;
  v22 = v27;
  v23 = v28;
  v24 = v29;
  sub_261008850(&aBlock, v9, v10, v14, v15, a4);
}

uint64_t MessageSessionTransport.identifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

double MessageSessionTransport.init(session:identifier:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = 0.0;
  *(a4 + 40) = 0u;
  *(a4 + 24) = 0u;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t sub_261007BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v25 = a3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v24 - v18;
  v20 = sub_2610BCC94();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = a9;
  v21[5] = a10;
  v21[6] = a2;
  v21[7] = a5;
  v21[8] = a6;
  v21[9] = a7;
  v22 = v25;
  v21[10] = a8;
  v21[11] = v22;
  v21[12] = a4;

  sub_261042434(0, 0, v19, &unk_2610C5990, v21);
}

uint64_t sub_261007D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[28] = v13;
  v8[29] = v14;
  v8[26] = v11;
  v8[27] = v12;
  v8[24] = a7;
  v8[25] = a8;
  v8[22] = a5;
  v8[23] = a6;
  v8[21] = a4;
  v8[30] = *(v13 - 8);
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261007E7C, 0, 0);
}

uint64_t sub_261007E7C()
{
  if (sub_26103B7A0(v0[21]))
  {
    sub_2610BC6A4();
    v12 = v0[33];
    v14 = v0[30];
    v13 = v0[31];
    v15 = v0[28];
    v16 = v0[23];

    (*(v14 + 16))(v13, v12, v15);
    v20 = (v16 + *v16);
    v17 = swift_task_alloc();
    v0[34] = v17;
    *v17 = v0;
    v17[1] = sub_261008170;
    v19 = v0[31];
    v18 = v0[32];

    return v20(v18, v19);
  }

  else
  {
    type metadata accessor for MessageSessionTransport.Failure(0, v0[28], v0[29], v1);
    swift_getWitnessTable();
    v2 = swift_allocError();
    *v3 = 1;
    swift_willThrow();
    v4 = v0[26];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63FF8, &unk_2610BF950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2610BF400;
    v0[18] = 7500389;
    v0[19] = 0xE300000000000000;
    v6 = MEMORY[0x277D837D0];
    sub_2610BCF24();
    swift_getErrorValue();
    v7 = sub_2610BD4B4();
    *(inited + 96) = v6;
    *(inited + 72) = v7;
    *(inited + 80) = v8;
    v9 = sub_260FA8BCC(inited);
    swift_setDeallocating();
    sub_26100A488(inited + 32);
    v4(4294960550, 0, v9);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_261008170()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_2610084AC;
  }

  else
  {
    v2 = sub_261008284;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261008284()
{
  v1 = v0[35];
  v2 = sub_2610BC6D4();
  if (v1)
  {
    v3 = v0[33];
    v4 = v0[28];
    v5 = *(v0[30] + 8);
    v5(v0[32], v4);
    v5(v3, v4);
    v6 = v0[26];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63FF8, &unk_2610BF950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2610BF400;
    v0[18] = 7500389;
    v0[19] = 0xE300000000000000;
    v8 = MEMORY[0x277D837D0];
    sub_2610BCF24();
    swift_getErrorValue();
    v9 = sub_2610BD4B4();
    *(inited + 96) = v8;
    *(inited + 72) = v9;
    *(inited + 80) = v10;
    v11 = sub_260FA8BCC(inited);
    swift_setDeallocating();
    sub_26100A488(inited + 32);
    v6(4294960550, 0, v11);
  }

  else
  {
    v13 = v0[32];
    v12 = v0[33];
    v14 = v0[30];
    v15 = v0[28];
    v16 = v0[26];
    v17 = sub_260FDF608(v2);

    v16(0, 0, v17);

    v18 = *(v14 + 8);
    v18(v13, v15);
    v18(v12, v15);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_2610084AC()
{
  (*(v0[30] + 8))(v0[33], v0[28]);
  v1 = v0[35];
  v2 = v0[26];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63FF8, &unk_2610BF950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  v0[18] = 7500389;
  v0[19] = 0xE300000000000000;
  v4 = MEMORY[0x277D837D0];
  sub_2610BCF24();
  swift_getErrorValue();
  v5 = sub_2610BD4B4();
  *(inited + 96) = v4;
  *(inited + 72) = v5;
  *(inited + 80) = v6;
  v7 = sub_260FA8BCC(inited);
  swift_setDeallocating();
  sub_26100A488(inited + 32);
  v2(4294960550, 0, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_26100861C(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v5 = *(a1 + 32);
  if (a2)
  {
    v6 = sub_2610BC914();
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_2610BC914();
  v8 = _Block_copy(a4);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  v5(v6, v7, sub_26100A384, v9);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_261008748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = sub_2610BC8F4();
    if (a3)
    {
LABEL_3:
      v8 = sub_2610BC8F4();
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

uint64_t sub_261008820()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    return v1();
  }

  return result;
}

__n128 sub_261008850@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = *a1;
  v10 = *(a1 + 2);
  v11 = type metadata accessor for ActivatedMessageSessionTransport(0, a4, a5, a4);
  sub_2610BC604();
  *(a6 + *(v11 + 48)) = 0;
  *a6 = v13;
  *(a6 + 16) = v10;
  result = *(a1 + 24);
  *(a6 + 40) = *(a1 + 40);
  *(a6 + 24) = result;
  *(a6 + 56) = a2;
  *(a6 + 64) = a3;
  return result;
}

Swift::Void __swiftcall ActivatedMessageSessionTransport.invalidate()()
{
  v2 = v0;
  *(v1 + *(v0 + 48)) = 1;
  [*v1 invalidate];
  v3 = *(*(v2 - 8) + 8);

  v3(v1, v2);
}

uint64_t sub_261008980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2610089A4, 0, 0);
}

uint64_t sub_2610089A4()
{
  v1 = v0[4];
  v0[6] = *(v1 + 16);
  v0[7] = *(v1 + 24);
  v2 = sub_2610BC6D4();
  v3 = sub_260FDF608(v2);
  v0[8] = v3;

  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_261008ABC;
  v5 = v0[4];

  return sub_261008D54(v3, v5);
}

uint64_t sub_261008ABC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_261008CF0;
  }

  else
  {

    *(v4 + 88) = a1;
    v5 = sub_261008BEC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_261008BEC()
{
  v1 = sub_26103B7A0(v0[11]);

  if (v1)
  {
    sub_2610BC6A4();
  }

  else
  {
    type metadata accessor for ActivatedMessageSessionTransport.Failure(0, v0[6], v0[7], v2);
    swift_getWitnessTable();
    swift_allocError();
    *v3 = 1;
    swift_willThrow();
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_261008CF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261008D54(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_261008D78, 0, 0);
}

uint64_t sub_261008D78()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63F70, &qword_2610BF440);
  *v5 = v0;
  v5[1] = sub_261008E9C;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0x5374736163696E75, 0xEF293A5F28646E65, sub_26100A260, v4, v6);
}

uint64_t sub_261008E9C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_261008FB8;
  }

  else
  {

    v2 = sub_260FF888C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261008FB8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_26100901C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65258, &qword_2610C5970);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = aBlock - v9;
  v11 = *v3;
  v12 = sub_2610BC9D4();
  v13 = sub_2610BC8F4();
  (*(v7 + 16))(v10, a2, v6);
  v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = *(a3 + 16);
  (*(v7 + 32))(v15 + v14, v10, v6);
  aBlock[4] = sub_26100A2AC;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26100B29C;
  aBlock[3] = &block_descriptor_37;
  v16 = _Block_copy(aBlock);

  [v11 sendRequestID:v12 options:0 request:v13 responseHandler:v16];
  _Block_release(v16);
}

uint64_t sub_26100922C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65258, &qword_2610C5970);
    return sub_2610BCC14();
  }

  else
  {
    type metadata accessor for ActivatedMessageSessionTransport.Failure(0, a5, a6, a4);
    swift_getWitnessTable();
    swift_allocError();
    *v7 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65258, &qword_2610C5970);
    return sub_2610BCC04();
  }
}

uint64_t ActivatedMessageSessionTransport.availableRoutes.getter()
{
  v0 = sub_2610099F8(&unk_2873833F0);
  sub_261009DA4(&unk_287383410);
  return v0;
}

uint64_t ActivatedMessageSessionTransport.send(_:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 48) = *a3;
  *(v5 + 72) = *(a3 + 16);
  return MEMORY[0x2822009F8](sub_261009368, 0, 0);
}

uint64_t sub_261009368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  if (*(*(v4 + 40) + *(v5 + 48)))
  {
    v6 = 2;
LABEL_8:
    type metadata accessor for ActivatedMessageSessionTransport.Failure(0, *(v5 + 16), *(v5 + 24), a4);
    swift_getWitnessTable();
    swift_allocError();
    *v8 = v6;
    swift_willThrow();
    v9 = *(v4 + 8);

    return v9();
  }

  if (*(v4 + 72) != 2 || *(v4 + 48) != 0)
  {
    v6 = 0;
    goto LABEL_8;
  }

  v11 = swift_task_alloc();
  *(v4 + 64) = v11;
  *v11 = v4;
  v11[1] = sub_2610094C0;
  v12 = *(v4 + 32);
  v13 = *(v4 + 16);
  v14 = *(v4 + 24);

  return sub_261008980(v13, v14, v12);
}

uint64_t sub_2610094C0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2610095EC(unsigned __int8 a1)
{
  sub_2610BD514();
  MEMORY[0x2666F7E40](a1);
  return sub_2610BD574();
}

uint64_t sub_261009634()
{
  v0 = sub_2610099F8(&unk_2873833F0);
  sub_261009DA4(&unk_287383410);
  return v0;
}

uint64_t sub_261009670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_260FB6DB4;

  return ActivatedMessageSessionTransport.send(_:using:)(a1, a2, a3, a4);
}

uint64_t sub_26100974C(uint64_t a1)
{
  sub_2610BD514();
  sub_2610095C4(v3, *v1);
  return sub_2610BD574();
}

unint64_t sub_26100978C(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_2610BD0E4();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65240, &qword_2610C5958);
      result = sub_2610BCF64();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_2610BD0E4();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v21 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  v20 = v1;
  while (v21)
  {
    result = MEMORY[0x2666F78E0](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    sub_2610BC7E4();
    sub_26100A21C(&qword_27FE65248, MEMORY[0x277CBCDB0]);
    result = sub_2610BC984();
    v10 = -1 << *(v3 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *(v7 + 8 * (v11 >> 6));
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_26100A21C(&qword_27FE65250, MEMORY[0x277CBCDB8]);
      do
      {
        result = sub_2610BC9A4();
        if (result)
        {

          v1 = v20;
          goto LABEL_11;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v7 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v1 = v20;
    }

    *(v7 + 8 * v12) = v14 | v13;
    *(*(v3 + 48) + 8 * v11) = v8;
    v16 = *(v3 + 16);
    v9 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v17;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_2610099F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84FA0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65260, &unk_2610C5978);
  v3 = sub_2610BCF64();
  v4 = 0;
  v5 = v3 + 56;
  v38 = v1;
  v39 = a1 + 32;
  while (2)
  {
    v9 = v39 + 24 * v4;
    v11 = *v9;
    v10 = *(v9 + 8);
    v12 = *(v9 + 16);
    sub_2610BD514();
    if (v12)
    {
      if (v12 != 1)
      {
        MEMORY[0x2666F7E40](0);
        goto LABEL_12;
      }

      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    MEMORY[0x2666F7E40](v13);

    sub_2610BCA54();
LABEL_12:
    result = sub_2610BD574();
    v15 = -1 << *(v3 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    v18 = *(v5 + 8 * (v16 >> 6));
    v19 = 1 << v16;
    if (((1 << v16) & v18) == 0)
    {
      goto LABEL_43;
    }

    v40 = v4;
    v20 = ~v15;
    v22 = v12 == 2 && (v10 | v11) == 0;
    v41 = v22;
    do
    {
      v26 = *(v3 + 48) + 24 * v16;
      v28 = *v26;
      v27 = *(v26 + 8);
      v29 = *(v26 + 16);
      if (*(v26 + 16))
      {
        if (v29 != 1)
        {
          if (v41)
          {
            sub_26100A36C(v28, v27, 2u);
            v6 = 0;
            v7 = 0;
            v8 = 2;
            goto LABEL_4;
          }

          v23 = v11;
          v24 = v10;
          v25 = v12;
          goto LABEL_21;
        }

        if (v12 != 1)
        {
          sub_26100A354(v11, v10, v12);
          v23 = v28;
          v24 = v27;
          v25 = 1;
LABEL_21:
          sub_26100A354(v23, v24, v25);
          sub_26100A36C(v28, v27, v29);
          result = sub_26100A36C(v11, v10, v12);
          goto LABEL_22;
        }

        if (v28 == v11 && v27 == v10)
        {

          sub_26100A36C(v11, v10, 1u);
LABEL_46:
          v6 = v11;
          v7 = v10;
          v8 = 1;
          goto LABEL_4;
        }

        v31 = sub_2610BD384();
        sub_26100A354(v11, v10, 1u);
        sub_26100A354(v28, v27, 1u);
        sub_26100A36C(v28, v27, 1u);
        result = sub_26100A36C(v11, v10, 1u);
        if (v31)
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (v12)
        {
          sub_26100A354(v11, v10, v12);
          v23 = v28;
          v24 = v27;
          v25 = 0;
          goto LABEL_21;
        }

        if (v28 == v11 && v27 == v10)
        {

          sub_26100A36C(v11, v10, 0);
LABEL_48:
          v6 = v11;
          v7 = v10;
          v8 = 0;
LABEL_4:
          sub_26100A36C(v6, v7, v8);
          v1 = v38;
          v4 = v40;
          goto LABEL_5;
        }

        v33 = sub_2610BD384();
        sub_26100A354(v11, v10, 0);
        sub_26100A354(v28, v27, 0);
        sub_26100A36C(v28, v27, 0);
        result = sub_26100A36C(v11, v10, 0);
        if (v33)
        {
          goto LABEL_48;
        }
      }

LABEL_22:
      v16 = (v16 + 1) & v20;
      v17 = v16 >> 6;
      v18 = *(v5 + 8 * (v16 >> 6));
      v19 = 1 << v16;
    }

    while ((v18 & (1 << v16)) != 0);
    v1 = v38;
    v4 = v40;
LABEL_43:
    *(v5 + 8 * v17) = v18 | v19;
    v34 = *(v3 + 48) + 24 * v16;
    *v34 = v11;
    *(v34 + 8) = v10;
    *(v34 + 16) = v12;
    v35 = *(v3 + 16);
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (!v36)
    {
      *(v3 + 16) = v37;
LABEL_5:
      if (++v4 == v1)
      {
        return v3;
      }

      continue;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_261009E2C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_261009E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_261009EC8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_261009F10(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_261009F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for MessageSessionTransport(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    result = sub_2610BC6F4();
    if (v6 <= 0x3F)
    {
      result = sub_2610BC6C4();
      if (v7 <= 0x3F)
      {
        result = sub_2610BC614();
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_26100A0B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65238, &qword_2610C5950);
    v3 = sub_2610BCF64();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_2610BD514();

      sub_2610BCA54();
      result = sub_2610BD574();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_2610BD384();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
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

uint64_t sub_26100A21C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2610BC7E4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_26100A260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[2];
  v7 = v4[3];
  v8 = v4[5];
  v9 = type metadata accessor for ActivatedMessageSessionTransport(0, v6, v7, a4);
  sub_26100901C(v8, a1, v9);
}

uint64_t sub_26100A2AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65258, &qword_2610C5970) - 8);
  v10 = v3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_26100922C(a1, a2, a3, v10, v7, v8);
}

uint64_t sub_26100A354(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_26100A36C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_26100A38C(uint64_t a1)
{
  v3 = v1[3];
  v11 = v1[2];
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  v7 = v1[9];
  v8 = v1[10];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_260FB6DB4;

  return sub_261007D94(a1, v11, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_26100A488(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63C10, &qword_2610BEDE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26100A520(uint64_t a1, uint64_t a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = *(a2 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FE648D0, &qword_2610BF450);
  v7 = sub_2610BD594();
  MEMORY[0x28223BE20](v7, v8);
  v10 = (v35 - v9);
  (*(v11 + 16))(v35 - v9, a1, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = *v10;
    sub_260FA9AB4(0, &qword_27FE668D0, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v12 = v35[3];
      v13 = objc_opt_self();
      v37 = 0;
      v14 = [v13 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:&v37];
      v15 = v37;
      if (v14)
      {
        v16 = sub_2610BC534();
        v18 = v17;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63FF8, &unk_2610BF950);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2610BF400;
        v37 = 0x726F727265;
        v38 = 0xE500000000000000;
        sub_2610BCF24();
        *(inited + 96) = MEMORY[0x277CC9318];
        *(inited + 72) = v16;
        *(inited + 80) = v18;
        sub_260FAA188(v16, v18);
        sub_260FA8BCC(inited);
        swift_setDeallocating();
        sub_260FA9980(inited + 32, &qword_27FE63C10, &qword_2610BEDE0);

        sub_260FAC46C(v16, v18);
      }

      else
      {
        v23 = v15;
        v24 = sub_2610BC4F4();

        swift_willThrow();
        if (qword_27FE63808 != -1)
        {
          swift_once();
        }

        v25 = sub_2610BC7B4();
        __swift_project_value_buffer(v25, qword_27FE65900);
        v26 = v24;
        v27 = sub_2610BC794();
        v28 = sub_2610BCD74();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v37 = v30;
          *v29 = 136446210;
          v35[1] = v24;
          v31 = v24;
          v32 = sub_2610BCA34();
          v34 = sub_260FA5970(v32, v33, &v37);

          *(v29 + 4) = v34;
          _os_log_impl(&dword_260F97000, v27, v28, "PASMessageSessionKey failed to createResponse from: %{public}s", v29, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v30);
          MEMORY[0x2666F8720](v30, -1, -1);
          MEMORY[0x2666F8720](v29, -1, -1);
        }

        sub_260FA8BCC(MEMORY[0x277D84F90]);
      }

      return 4294960560;
    }

    else
    {
      result = sub_2610BD374();
      __break(1u);
    }
  }

  else
  {
    (*(v4 + 32))(v6, v10, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63FF8, &unk_2610BF950);
    v20 = swift_initStackObject();
    *(v20 + 16) = xmmword_2610BF400;
    v37 = 0x746C75736572;
    v38 = 0xE600000000000000;
    sub_2610BCF24();
    *(v20 + 96) = a2;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v20 + 72));
    (*(v4 + 16))(boxed_opaque_existential_1, v6, a2);
    sub_260FA8BCC(v20);
    swift_setDeallocating();
    sub_260FA9980(v20 + 32, &qword_27FE63C10, &qword_2610BEDE0);
    (*(v4 + 8))(v6, a2);
    return 0;
  }

  return result;
}

void sub_26100AA90(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_2610BCE64();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v60 - v10;
  v12 = *(a2 - 1);
  v14 = MEMORY[0x28223BE20](v9, v13);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    v74 = 0u;
    v75 = 0u;
    sub_260FA9980(&v74, &qword_27FE63830, &qword_2610BE8E0);
    goto LABEL_20;
  }

  v67 = v14;
  *&v72 = 0x726F727265;
  *(&v72 + 1) = 0xE500000000000000;
  sub_2610BCF24();
  if (!*(a1 + 16) || (v17 = sub_260FA60B4(&DynamicType), (v18 & 1) == 0))
  {
    sub_260FA9764(&DynamicType);
    v74 = 0u;
    v75 = 0u;
    goto LABEL_12;
  }

  sub_260FA3F5C(*(a1 + 56) + 32 * v17, &v74);
  sub_260FA9764(&DynamicType);
  if (!*(&v75 + 1))
  {
LABEL_12:
    sub_260FA9980(&v74, &qword_27FE63830, &qword_2610BE8E0);
LABEL_13:
    v68 = 0x746C75736572;
    v69 = 0xE600000000000000;
    sub_2610BCF24();
    if (*(a1 + 16))
    {
      v41 = sub_260FA60B4(&DynamicType);
      if (v42)
      {
        sub_260FA3F5C(*(a1 + 56) + 32 * v41, &v72);
        sub_260FA9764(&DynamicType);
        if (*(&v73 + 1))
        {
          sub_260FA6A84(&v72, &v74);
          sub_260FA3F5C(&v74, &DynamicType);
          if (swift_dynamicCast())
          {
            __swift_destroy_boxed_opaque_existential_0Tm(&v74);
            (*(v12 + 56))(v11, 0, 1, a2);
            v43 = *(v12 + 32);
            v43(v16, v11, a2);
            v43(a3, v16, a2);
            __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FE648D0, &qword_2610BF450);
            sub_2610BD594();
            swift_storeEnumTagMultiPayload();
            return;
          }

          (*(v12 + 56))(v11, 1, 1, a2);
          (*(v7 + 8))(v11, v67);
          __swift_project_boxed_opaque_existential_1(&v74, *(&v75 + 1));
          DynamicType = swift_getDynamicType();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65280, qword_2610C5C10);
          v50 = sub_2610BCA34();
          v52 = v51;
          DynamicType = a2;
          swift_getMetatypeMetadata();
          v53 = sub_2610BCA34();
          v55 = v54;
          sub_260FBE4B4();
          v56 = swift_allocError();
          *v57 = v50;
          *(v57 + 8) = v52;
          *(v57 + 16) = v53;
          *(v57 + 24) = v55;
          *(v57 + 32) = 2;
          v58 = sub_2610BC4E4();
          __swift_destroy_boxed_opaque_existential_0Tm(&v74);
          *a3 = v58;
          __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FE648D0, &qword_2610BF450);
          sub_2610BD594();
          swift_storeEnumTagMultiPayload();
          v49 = v56;
          goto LABEL_22;
        }

LABEL_21:
        sub_260FA9980(&v72, &qword_27FE63830, &qword_2610BE8E0);
        DynamicType = 0;
        v71 = 0xE000000000000000;
        sub_2610BCF84();

        DynamicType = 0xD00000000000001FLL;
        v71 = 0x80000002610D3DC0;
        *&v74 = a1;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64868, &unk_2610C26F0);
        v44 = sub_2610BCA34();
        MEMORY[0x2666F7380](v44);

        v45 = DynamicType;
        v46 = v71;
        sub_260FBE4B4();
        v47 = swift_allocError();
        *v48 = v45;
        *(v48 + 8) = v46;
        *(v48 + 16) = 0;
        *(v48 + 24) = 0;
        *(v48 + 32) = 4;
        *a3 = sub_2610BC4E4();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FE648D0, &qword_2610BF450);
        sub_2610BD594();
        swift_storeEnumTagMultiPayload();
        v49 = v47;
LABEL_22:

        return;
      }
    }

    sub_260FA9764(&DynamicType);
LABEL_20:
    v72 = 0u;
    v73 = 0u;
    goto LABEL_21;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v20 = DynamicType;
  v19 = v71;
  sub_260FA9AB4(0, &qword_27FE64840, 0x277CCAAC8);
  sub_260FA9AB4(0, &qword_27FE668D0, 0x277CCA9B8);
  v66 = v20;
  v21 = sub_2610BCD94();
  if (!v21)
  {
    v64 = v7;
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v22 = sub_2610BC7B4();
    __swift_project_value_buffer(v22, qword_27FE65900);
    v23 = v66;
    sub_260FAA188(v66, v19);
    v24 = sub_2610BC794();
    v25 = sub_2610BCD74();
    v65 = v19;
    sub_260FAC46C(v23, v19);
    v63 = v25;
    v26 = v25;
    v27 = v24;
    if (os_log_type_enabled(v24, v26))
    {
      v28 = swift_slowAlloc();
      v62 = v28;
      v29 = swift_slowAlloc();
      DynamicType = v29;
      *v28 = 136446210;
      v30 = v65;
      v31 = v66;
      sub_260FAA188(v66, v65);
      v32 = sub_2610BC504();
      v61 = v27;
      v33 = v32;
      v34 = v30;
      v36 = v35;
      sub_260FAC46C(v31, v34);
      v37 = sub_260FA5970(v33, v36, &DynamicType);

      v38 = v62;
      *(v62 + 1) = v37;
      v39 = v61;
      v40 = v38;
      _os_log_impl(&dword_260F97000, v61, v63, "PASMessageSessionKey failed to parse error response from: %{public}s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
      MEMORY[0x2666F8720](v29, -1, -1);
      MEMORY[0x2666F8720](v40, -1, -1);
      sub_260FAC46C(v31, v65);
    }

    else
    {

      sub_260FAC46C(v66, v65);
    }

    v7 = v64;
    goto LABEL_13;
  }

  v59 = v21;
  sub_260FAC46C(v66, v19);
  *a3 = v59;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FE648D0, &qword_2610BF450);
  sub_2610BD594();
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_26100B29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = *(a1 + 32);
  if (a3)
  {
    v7 = sub_2610BC914();
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
    v4 = sub_2610BC914();
  }

LABEL_4:

  v6(a2, v7, v4);
}

unint64_t sub_26100B374()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 32);
  if (v5 <= 2)
  {
    if (*(v0 + 32))
    {
      if (v5 == 1)
      {
        sub_2610BCF84();

        v12 = 0xD000000000000020;
        MEMORY[0x2666F7380](v1, v2);
        v6 = 544497952;
        v7 = 0xE400000000000000;
      }

      else
      {
        v12 = 0;
        sub_2610BCF84();
        MEMORY[0x2666F7380](0xD000000000000033, 0x80000002610D3D20);
        MEMORY[0x2666F7380](v1, v2);
        v6 = 0x746365707865202CLL;
        v7 = 0xEF3A657079546465;
      }

      MEMORY[0x2666F7380](v6, v7);
      v9 = v4;
      v10 = v3;
      goto LABEL_13;
    }

    sub_2610BCF84();

    v8 = 0xD000000000000022;
LABEL_10:
    v12 = v8;
    v9 = v1;
    v10 = v2;
LABEL_13:
    MEMORY[0x2666F7380](v9, v10);
    return v12;
  }

  if (v5 == 3)
  {
    sub_2610BCF84();

    v8 = 0xD00000000000002DLL;
    goto LABEL_10;
  }

  if (v5 == 4)
  {
    sub_2610BCF84();

    v8 = 0xD000000000000023;
    goto LABEL_10;
  }

  result = 0xD000000000000022;
  if (v4 | v2 | v1 | v3)
  {
    if (v1 != 1 || v4 | v2 | v3)
    {
      return 0xD00000000000001ELL;
    }

    else
    {
      return 0xD000000000000024;
    }
  }

  return result;
}

unint64_t sub_26100B5F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v1;
  v2 = sub_26100B374();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v2;
  *(inited + 56) = v3;
  v4 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &unk_27FE63C30, &unk_2610BEE00);
  return v4;
}

uint64_t sub_26100B6B0(uint64_t a1)
{
  v2 = sub_26100BAC8();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26100B6EC(uint64_t a1)
{
  v2 = sub_26100BAC8();

  return MEMORY[0x28211F4A8](a1, v2);
}

id sub_26100B728()
{
  v1 = [*v0 dispatchQueue];

  return v1;
}

uint64_t sub_26100B780(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;

  sub_26100B82C(a1, a2, a3, sub_26100BD14, v10);
}

uint64_t sub_26100B82C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2610BC9D4();
  if (a3)
  {
    a3 = sub_2610BC8F4();
  }

  v12[4] = a4;
  v12[5] = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_26100861C;
  v12[3] = &block_descriptor_4;
  v10 = _Block_copy(v12);

  [v5 registerRequestID:v9 options:a3 handler:v10];
  _Block_release(v10);
}

uint64_t get_enum_tag_for_layout_string_21ProximityAppleIDSetup22PASMessageSessionErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 7u) <= 4)
  {
    return *(a1 + 32) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_26100B9D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 33))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 32);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26100BA1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_26100BA64(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_26100BA90(void *a1)
{
  a1[1] = sub_26100BAC8();
  a1[2] = sub_26100BB1C();
  result = sub_26100BB70();
  a1[3] = result;
  return result;
}

unint64_t sub_26100BAC8()
{
  result = qword_27FE65268;
  if (!qword_27FE65268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65268);
  }

  return result;
}

unint64_t sub_26100BB1C()
{
  result = qword_27FE65270;
  if (!qword_27FE65270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65270);
  }

  return result;
}

unint64_t sub_26100BB70()
{
  result = qword_27FE65278;
  if (!qword_27FE65278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65278);
  }

  return result;
}

uint64_t sub_26100BBC4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_2610BC9D4();
  if (a3)
  {
    a3 = sub_2610BC8F4();
  }

  v11 = sub_2610BC8F4();
  v14[4] = a5;
  v14[5] = a6;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_26100B29C;
  v14[3] = &block_descriptor_3;
  v12 = _Block_copy(v14);

  [v6 sendRequestID:v10 options:a3 request:v11 responseHandler:v12];
  _Block_release(v12);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t PASFlowStepTargetStart.__allocating_init(delegate:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_26104E0E4(a1, a2);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t PASFlowStepTargetStart.init(delegate:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_26104E0E4(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t PASFlowStepTargetStart.deinit()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_260F99170(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate);
  return v0;
}

uint64_t PASFlowStepTargetStart.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_260F99170(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for PASFlowStepTargetStart(uint64_t a1)
{
  result = qword_27FE65288;
  if (!qword_27FE65288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26100C000@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASFlowStepLocalAuth__authenticator);
  swift_beginAccess();
  sub_260FF69D0(v3 + 16, &v6);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_26100D2D4(&v6);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260FA097C(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FF6A40(v5, v3 + 16);
  swift_endAccess();
}

uint64_t PASFlowStepLocalAuth.__allocating_init(delegate:familyMember:proxiedAuthResults:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = swift_allocObject();
  v9 = *a4;
  v10 = OBJC_IVAR____TtC21ProximityAppleIDSetup20PASFlowStepLocalAuth__authenticator;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FE65030, &qword_2610C4080);
  v11 = swift_allocObject();
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0;
  *(v8 + v10) = v11;
  v12 = v8 + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASFlowStepLocalAuth_result;
  *v12 = 0;
  *(v12 + 8) = -1;
  *(v8 + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASFlowStepLocalAuth_familyMember) = a3;
  *(v8 + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASFlowStepLocalAuth_proxiedAuthResults) = v9;
  v13 = sub_26104E0E4(a1, a2);
  swift_unknownObjectRelease();
  return v13;
}

uint64_t PASFlowStepLocalAuth.init(delegate:familyMember:proxiedAuthResults:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = OBJC_IVAR____TtC21ProximityAppleIDSetup20PASFlowStepLocalAuth__authenticator;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FE65030, &qword_2610C4080);
  v10 = swift_allocObject();
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0;
  *(v4 + v9) = v10;
  v11 = v4 + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASFlowStepLocalAuth_result;
  *v11 = 0;
  *(v11 + 8) = -1;
  *(v4 + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASFlowStepLocalAuth_familyMember) = a3;
  *(v4 + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASFlowStepLocalAuth_proxiedAuthResults) = v8;
  v12 = sub_26104E0E4(a1, a2);
  swift_unknownObjectRelease();
  return v12;
}

uint64_t PASFlowStepLocalAuth.performLocalAuth(with:)(uint64_t a1)
{
  *(v2 + 32) = v1;
  v4 = swift_task_alloc();
  *(v2 + 40) = v4;
  *v4 = v2;
  v4[1] = sub_26100C348;

  return sub_26100C650(v2 + 16, v1, a1);
}

uint64_t sub_26100C348()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_26100C524;
  }

  else
  {
    v2 = sub_26100C45C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26100C45C()
{
  v1 = v0[6] != 0;
  v2 = v0[4] + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASFlowStepLocalAuth_result;
  v3 = *v2;
  *v2 = v0[2];
  v4 = *(v2 + 8);
  *(v2 + 8) = v1;
  sub_261007204(v3, v4);
  sub_2610BCC74();
  v0[7] = sub_2610BCC64();
  v6 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26100C5E8, v6, v5);
}

uint64_t sub_26100C524()
{
  v1 = v0[6];
  v2 = v0[4] + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASFlowStepLocalAuth_result;
  v3 = *v2;
  *v2 = v1;
  v4 = *(v2 + 8);
  *(v2 + 8) = v1 != 0;
  sub_261007204(v3, v4);
  sub_2610BCC74();
  v0[7] = sub_2610BCC64();
  v6 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26100C5E8, v6, v5);
}

uint64_t sub_26100C5E8()
{

  sub_2610439BC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26100C650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  return MEMORY[0x2822009F8](sub_26100C674, 0, 0);
}

uint64_t sub_26100C674()
{
  v1 = v0[10];
  sub_26100C000((v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = OBJC_IVAR____TtC21ProximityAppleIDSetup20PASFlowStepLocalAuth_proxiedAuthResults;
  v0[12] = OBJC_IVAR____TtC21ProximityAppleIDSetup20PASFlowStepLocalAuth_proxiedAuthResults;
  v0[8] = *(v1 + v4);
  v5 = *(v3 + 8);

  v9 = (v5 + *v5);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_26100C7E0;
  v7 = v0[11];

  return (v9)(v0 + 7, v0 + 8, v7, v2, v3);
}

uint64_t sub_26100C7E0()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_26100C9E0;
  }

  else
  {
    v2 = sub_26100C8FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26100C8FC()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v3 = *(v2 + v1);
  v4 = sub_2610BCA04();
  v6 = sub_260FC86BC(v4, v5, v3);

  if (!v6)
  {
    v6 = sub_260FA8BCC(MEMORY[0x277D84F90]);
  }

  PASAuthResults.acceptingTerms(with:)(v6, *(v0 + 72));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_26100C9E0()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t PASFlowStepLocalAuth.nextStep()()
{
  v2 = (v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASFlowStepLocalAuth_result);
  v3 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASFlowStepLocalAuth_result + 8);
  if (v3 == 255)
  {
    sub_260FC3450();
    swift_allocError();
    *v12 = 0xD000000000000022;
    *(v12 + 8) = 0x80000002610D3E20;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = 1;
    swift_willThrow();
  }

  else
  {
    v4 = *v2;
    if (v3)
    {
      sub_261007228(*v2, *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASFlowStepLocalAuth_result + 8));
      sub_2610071F8(v4, 1);
      if (qword_27FE63808 != -1)
      {
        swift_once();
      }

      v5 = sub_2610BC7B4();
      __swift_project_value_buffer(v5, qword_27FE65900);
      sub_2610071F8(v4, 1);
      v6 = sub_2610BC794();
      v1 = sub_2610BCD64();
      sub_261007204(v4, v3);
      if (os_log_type_enabled(v6, v1))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v21[0] = v8;
        *v7 = 136446210;
        v21[3] = v4;
        sub_2610071F8(v4, 1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
        v9 = sub_2610BCA34();
        v11 = sub_260FA5970(v9, v10, v21);

        *(v7 + 4) = v11;
        _os_log_impl(&dword_260F97000, v6, v1, "PASFlowStepLocalAuth failed with error:\n%{public}s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v8);
        MEMORY[0x2666F8720](v8, -1, -1);
        MEMORY[0x2666F8720](v7, -1, -1);
      }

      swift_willThrow();
      sub_261007204(v4, v3);
    }

    else
    {
      v13 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v15 = *(v13 + 8);
      v16 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASFlowStepLocalAuth_familyMember);
      v17 = objc_allocWithZone(MEMORY[0x277CB8F48]);
      sub_261007228(v4, v3);
      sub_261007228(v4, v3);

      v18 = [v17 init];
      v19 = [objc_allocWithZone(MEMORY[0x277CED1E8]) initWithAccountStore_];

      v1 = sub_26100CFA8(Strong, v15, v16, v4, v19);
      swift_unknownObjectRelease();
      sub_261007204(v4, v3);
      sub_26100D28C(&unk_27FE64F80, type metadata accessor for PASFlowStepAIDASignIn, &protocol conformance descriptor for PASTargetFlowStepBase);
    }
  }

  return v1;
}

void sub_26100CDC4()
{

  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASFlowStepLocalAuth_result);
  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASFlowStepLocalAuth_result + 8);

  sub_261007204(v1, v2);
}

uint64_t PASFlowStepLocalAuth.deinit()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_260F99170(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate);

  sub_261007204(*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASFlowStepLocalAuth_result), *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASFlowStepLocalAuth_result + 8));
  return v0;
}

uint64_t PASFlowStepLocalAuth.__deallocating_deinit()
{
  PASFlowStepLocalAuth.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26100CFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[3] = sub_261007534();
  v19[4] = &protocol witness table for AIDAServiceOwnersManager;
  v19[0] = a5;
  type metadata accessor for PASFlowStepAIDASignIn(0);
  v10 = swift_allocObject();
  v18[3] = type metadata accessor for PASFamilyMember();
  v18[4] = sub_26100D28C(&unk_27FE64210, type metadata accessor for PASFamilyMember, &protocol conformance descriptor for PASFamilyMember);
  v18[0] = a3;
  v11 = OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn__messageSessionProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE657C0, &qword_2610BEE90);
  v12 = swift_allocObject();
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0;
  *(v10 + v11) = v12;
  v13 = OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn__accountManager;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65020, &unk_2610CF360);
  v14 = swift_allocObject();
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0u;
  *(v14 + 48) = 0;
  *(v10 + v13) = v14;
  v15 = v10 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_result;
  *v15 = 0;
  *(v15 + 8) = -1;
  sub_260FA99E0(v18, v10 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_account);
  *(v10 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_authResults) = a4;
  sub_260FA99E0(v19, v10 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_serviceOwnersManager);
  v16 = sub_26104E0E4(a1, a2);
  __swift_destroy_boxed_opaque_existential_0Tm(v19);
  __swift_destroy_boxed_opaque_existential_0Tm(v18);
  return v16;
}

uint64_t sub_26100D154(uint64_t a1)
{
  result = sub_26100D28C(&unk_27FE658B0, type metadata accessor for PASFlowStepLocalAuth, &protocol conformance descriptor for PASTargetFlowStepBase);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for PASFlowStepLocalAuth(uint64_t a1)
{
  result = qword_27FE652B0;
  if (!qword_27FE652B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26100D28C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26100D2D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63BD0, &qword_2610BED90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26100D350()
{
  v1 = 0x656B6F5468737570;
  if (*v0 != 1)
  {
    v1 = 0x6C69616D65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74736163696E75;
  }
}

uint64_t sub_26100D3AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26100EE20(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26100D3D4(uint64_t a1)
{
  v2 = sub_26100E6F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26100D410(uint64_t a1)
{
  v2 = sub_26100E6F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26100D460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C69616D65 && a2 == 0xE500000000000000)
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

uint64_t sub_26100D4E4(uint64_t a1)
{
  v2 = sub_26100E74C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26100D520(uint64_t a1)
{
  v2 = sub_26100E74C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26100D570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000)
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

uint64_t sub_26100D5F4(uint64_t a1)
{
  v2 = sub_26100E7A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26100D630(uint64_t a1)
{
  v2 = sub_26100E7A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26100D66C(uint64_t a1)
{
  v2 = sub_26100E7F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26100D6A8(uint64_t a1)
{
  v2 = sub_26100E7F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Route.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE652C0, &qword_2610C5D00);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v31 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE652C8, &qword_2610C5D08);
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE652D0, &qword_2610C5D10);
  v27 = *(v10 - 8);
  v28 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v26 - v12;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE652D8, &qword_2610C5D18);
  v14 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v15);
  v17 = &v26 - v16;
  v18 = *v1;
  v34 = v1[1];
  v35 = v18;
  v19 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26100E6F8();
  sub_2610BD5F4();
  if (!v19)
  {
    v38 = 1;
    sub_26100E7A0();
    v21 = v36;
    sub_2610BD234();
    v23 = v30;
    sub_2610BD274();
    (*(v29 + 8))(v9, v23);
    return (*(v14 + 8))(v17, v21);
  }

  if (v19 == 1)
  {
    v39 = 2;
    sub_26100E74C();
    v20 = v31;
    v21 = v36;
    sub_2610BD234();
    v22 = v33;
    sub_2610BD274();
    (*(v32 + 8))(v20, v22);
    return (*(v14 + 8))(v17, v21);
  }

  v37 = 0;
  sub_26100E7F4();
  v25 = v36;
  sub_2610BD234();
  (*(v27 + 8))(v13, v28);
  return (*(v14 + 8))(v17, v25);
}

uint64_t Route.hash(into:)(uint64_t a1)
{
  if (*(v1 + 16))
  {
    if (*(v1 + 16) != 1)
    {
      return MEMORY[0x2666F7E40](0);
    }

    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x2666F7E40](v2);

  return sub_2610BCA54();
}

uint64_t Route.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_2610BD514();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x2666F7E40](0);
      return sub_2610BD574();
    }

    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x2666F7E40](v2);
  sub_2610BCA54();
  return sub_2610BD574();
}

uint64_t Route.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65300, &qword_2610C5D20);
  v46 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v3);
  v49 = &v43 - v4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65308, &qword_2610C5D28);
  v47 = *(v45 - 8);
  MEMORY[0x28223BE20](v45, v5);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65310, &qword_2610C5D30);
  v48 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65318, &unk_2610C5D38);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v43 - v15;
  v17 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_26100E6F8();
  v18 = v51;
  sub_2610BD5D4();
  if (!v18)
  {
    v43 = 0;
    v20 = v48;
    v19 = v49;
    v51 = v13;
    v21 = v50;
    v22 = sub_2610BD214();
    v23 = (2 * *(v22 + 16)) | 1;
    v53 = v22;
    v54 = v22 + 32;
    v55 = 0;
    v56 = v23;
    v24 = sub_260FD5DC0();
    if (v24 == 3 || v55 != v56 >> 1)
    {
      v28 = sub_2610BCFF4();
      swift_allocError();
      v29 = v16;
      v31 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE643B8, &qword_2610C4650);
      *v31 = &type metadata for Route;
      sub_2610BD174();
      sub_2610BCFE4();
      (*(*(v28 - 8) + 104))(v31, *MEMORY[0x277D84160], v28);
      swift_willThrow();
      (*(v51 + 8))(v29, v12);
    }

    else
    {
      if (v24)
      {
        if (v24 == 1)
        {
          v57 = 1;
          sub_26100E7A0();
          v25 = v7;
          v26 = v43;
          sub_2610BD164();
          if (!v26)
          {
            v27 = v45;
            v38 = sub_2610BD1B4();
            v40 = v39;
            (*(v47 + 8))(v25, v27);
            (*(v51 + 8))(v16, v12);
            swift_unknownObjectRelease();
            v41 = 0;
LABEL_16:
            *v21 = v38;
            *(v21 + 8) = v40;
            *(v21 + 16) = v41;
            return __swift_destroy_boxed_opaque_existential_0Tm(v52);
          }
        }

        else
        {
          v57 = 2;
          sub_26100E74C();
          v34 = v43;
          sub_2610BD164();
          if (!v34)
          {
            v48 = v16;
            v35 = v44;
            v36 = sub_2610BD1B4();
            v37 = v51;
            v43 = 0;
            v38 = v36;
            v40 = v42;
            (*(v46 + 8))(v19, v35);
            (*(v37 + 8))(v48, v12);
            swift_unknownObjectRelease();
            v41 = 1;
            goto LABEL_16;
          }
        }
      }

      else
      {
        v57 = 0;
        sub_26100E7F4();
        v33 = v43;
        sub_2610BD164();
        if (!v33)
        {
          (*(v20 + 1))(v11, v8);
          (*(v51 + 8))(v16, v12);
          swift_unknownObjectRelease();
          v38 = 0;
          v40 = 0;
          v41 = 2;
          goto LABEL_16;
        }
      }

      (*(v51 + 8))(v16, v12);
    }

    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v52);
}

uint64_t sub_26100E28C()
{
  v1 = *(v0 + 16);
  sub_2610BD514();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x2666F7E40](0);
      return sub_2610BD574();
    }

    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x2666F7E40](v2);
  sub_2610BCA54();
  return sub_2610BD574();
}

uint64_t sub_26100E318(uint64_t a1)
{
  if (*(v1 + 16))
  {
    if (*(v1 + 16) != 1)
    {
      return MEMORY[0x2666F7E40](0);
    }

    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x2666F7E40](v2);

  return sub_2610BCA54();
}

uint64_t sub_26100E3A0(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_2610BD514();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x2666F7E40](0);
      return sub_2610BD574();
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x2666F7E40](v3);
  sub_2610BCA54();
  return sub_2610BD574();
}

uint64_t Route.description.getter()
{
  v1 = *(v0 + 16);
  v2 = 0x74736163696E75;
  if (v1 == 1)
  {
    v2 = *v0;
  }

  if (*(v0 + 16))
  {
    v3 = v2;
  }

  else
  {
    v3 = *v0;
  }

  sub_26100A354(*v0, *(v0 + 8), v1);
  return v3;
}

uint64_t sub_26100E484()
{
  v1 = *(v0 + 16);
  v2 = 0x74736163696E75;
  if (v1 == 1)
  {
    v2 = *v0;
  }

  if (*(v0 + 16))
  {
    v3 = v2;
  }

  else
  {
    v3 = *v0;
  }

  sub_26100A354(*v0, *(v0 + 8), v1);
  return v3;
}

uint64_t _s21ProximityAppleIDSetup5RouteO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      v14 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_2610BD384();
        sub_26100A354(v6, v5, 0);
        sub_26100A354(v3, v2, 0);
        sub_26100A36C(v3, v2, 0);
        v11 = v6;
        v12 = v5;
        v13 = 0;
        goto LABEL_15;
      }

      sub_26100A354(v14, v2, 0);
      sub_26100A354(v3, v2, 0);
      sub_26100A36C(v3, v2, 0);
      v18 = v3;
      v19 = v2;
      v20 = 0;
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if (v4 == 1)
  {
    if (v7 == 1)
    {
      v8 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_2610BD384();
        sub_26100A354(v6, v5, 1u);
        sub_26100A354(v3, v2, 1u);
        sub_26100A36C(v3, v2, 1u);
        v11 = v6;
        v12 = v5;
        v13 = 1;
LABEL_15:
        sub_26100A36C(v11, v12, v13);
        return v10 & 1;
      }

      sub_26100A354(v8, v2, 1u);
      sub_26100A354(v3, v2, 1u);
      sub_26100A36C(v3, v2, 1u);
      v18 = v3;
      v19 = v2;
      v20 = 1;
      goto LABEL_24;
    }

LABEL_20:
    sub_26100A354(*a2, *(a2 + 8), v7);
    sub_26100A354(v3, v2, v4);
    sub_26100A36C(v3, v2, v4);
    sub_26100A36C(v6, v5, v7);
    return 0;
  }

  if (v7 != 2 || (v5 | v6) != 0)
  {
    goto LABEL_20;
  }

  sub_26100A36C(*a1, v2, 2u);
  v18 = 0;
  v19 = 0;
  v20 = 2;
LABEL_24:
  sub_26100A36C(v18, v19, v20);
  return 1;
}

unint64_t sub_26100E6F8()
{
  result = qword_27FE652E0;
  if (!qword_27FE652E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE652E0);
  }

  return result;
}

unint64_t sub_26100E74C()
{
  result = qword_27FE652E8;
  if (!qword_27FE652E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE652E8);
  }

  return result;
}

unint64_t sub_26100E7A0()
{
  result = qword_27FE652F0;
  if (!qword_27FE652F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE652F0);
  }

  return result;
}

unint64_t sub_26100E7F4()
{
  result = qword_27FE652F8;
  if (!qword_27FE652F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE652F8);
  }

  return result;
}

unint64_t sub_26100E848(void *a1)
{
  a1[1] = sub_26100E880();
  a1[2] = sub_26100E8D4();
  result = sub_26100E928();
  a1[3] = result;
  return result;
}

unint64_t sub_26100E880()
{
  result = qword_27FE65320;
  if (!qword_27FE65320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65320);
  }

  return result;
}

unint64_t sub_26100E8D4()
{
  result = qword_27FE65328;
  if (!qword_27FE65328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65328);
  }

  return result;
}

unint64_t sub_26100E928()
{
  result = qword_27FE65330;
  if (!qword_27FE65330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65330);
  }

  return result;
}

unint64_t sub_26100E980()
{
  result = qword_27FE65338;
  if (!qword_27FE65338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65338);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_21ProximityAppleIDSetup5RouteO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_26100E9F0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_26100EA5C()
{
  result = qword_27FE65340;
  if (!qword_27FE65340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65340);
  }

  return result;
}

unint64_t sub_26100EAB4()
{
  result = qword_27FE65348;
  if (!qword_27FE65348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65348);
  }

  return result;
}

unint64_t sub_26100EB0C()
{
  result = qword_27FE65350;
  if (!qword_27FE65350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65350);
  }

  return result;
}

unint64_t sub_26100EB64()
{
  result = qword_27FE65358;
  if (!qword_27FE65358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65358);
  }

  return result;
}

unint64_t sub_26100EBBC()
{
  result = qword_27FE65360;
  if (!qword_27FE65360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65360);
  }

  return result;
}

unint64_t sub_26100EC14()
{
  result = qword_27FE65368;
  if (!qword_27FE65368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65368);
  }

  return result;
}

unint64_t sub_26100EC6C()
{
  result = qword_27FE65370;
  if (!qword_27FE65370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65370);
  }

  return result;
}

unint64_t sub_26100ECC4()
{
  result = qword_27FE65378;
  if (!qword_27FE65378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65378);
  }

  return result;
}

unint64_t sub_26100ED1C()
{
  result = qword_27FE65380;
  if (!qword_27FE65380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65380);
  }

  return result;
}

unint64_t sub_26100ED74()
{
  result = qword_27FE65388;
  if (!qword_27FE65388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65388);
  }

  return result;
}

unint64_t sub_26100EDCC()
{
  result = qword_27FE65390;
  if (!qword_27FE65390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65390);
  }

  return result;
}

uint64_t sub_26100EE20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74736163696E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_2610BD384() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656B6F5468737570 && a2 == 0xE90000000000006ELL || (sub_2610BD384() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C69616D65 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2610BD384();

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

ProximityAppleIDSetup::PASFlowStepProxiedAuthError_optional __swiftcall PASFlowStepProxiedAuthError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2610BD154();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PASFlowStepProxiedAuthError.rawValue.getter()
{
  v1 = 0x6569786F72506F6ELL;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_26100F00C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEF65636976654464;
  v3 = 0xD000000000000010;
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x6569786F72506F6ELL;
  }

  if (v4 == 1)
  {
    v6 = 0x80000002610D1970;
  }

  else
  {
    v6 = 0xEF65636976654464;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000013;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x80000002610D1950;
  }

  if (*a2 == 1)
  {
    v2 = 0x80000002610D1970;
  }

  else
  {
    v3 = 0x6569786F72506F6ELL;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000013;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x80000002610D1950;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2610BD384();
  }

  return v11 & 1;
}

uint64_t sub_26100F0F4()
{
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_26100F1B0(uint64_t a1)
{
  sub_2610BCA54();
}

uint64_t sub_26100F258(uint64_t a1)
{
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

void sub_26100F31C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF65636976654464;
  v4 = 0x6569786F72506F6ELL;
  if (v2 == 1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x80000002610D1970;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000013;
  }

  if (v5)
  {
    v3 = 0x80000002610D1950;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_26100F394()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v3;
  v4 = sub_2610B4218(v1);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  v6 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &unk_27FE63C30, &unk_2610BEE00);
  return v6;
}

uint64_t sub_26100F45C(uint64_t a1)
{
  v2 = sub_2610113A8();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26100F498(uint64_t a1)
{
  v2 = sub_2610113A8();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t PASFlowStepProxiedAuth.targetDeviceKey.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth_targetDeviceKey);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t PASFlowStepProxiedAuth.accountFirstName.getter()
{
  v1 = [*(*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth_targetAccount) + 16) firstName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2610BCA04();

  return v3;
}

uint64_t PASFlowStepProxiedAuth.accountUsername.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth_targetAccount);
  v2 = objc_opt_self();
  v3 = [*(v1 + 16) appleID];
  v4 = [v2 formattedUsernameFromUsername_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_2610BCA04();

  return v5;
}

uint64_t sub_26100F67C()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth__anisetteDataProvider);
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

uint64_t sub_26100F748(void *a1, uint64_t (*a2)(void))
{
  v4 = *(v2 + *a1);
  swift_beginAccess();
  if (*(v4 + 16))
  {
    v5 = *(v4 + 16);
  }

  else
  {
    v6 = qword_27FE637E0;

    if (v6 != -1)
    {
      swift_once();
    }

    v5 = a2();
    *(v4 + 16) = v5;
    *(v4 + 24) = v7;
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v5;
}

uint64_t sub_26100F824@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth__accountStore);
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

uint64_t PASFlowStepProxiedAuth.__allocating_init(delegate:targetAccount:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_261011064(a1, a2, a3);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t PASFlowStepProxiedAuth.init(delegate:targetAccount:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_261011064(a1, a2, a3);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t PASFlowStepProxiedAuth.prepareForPresentation()()
{
  v1[29] = v0;
  v1[30] = sub_2610BCC74();
  v1[31] = sub_2610BCC64();
  v2 = swift_task_alloc();
  v1[32] = v2;
  *v2 = v1;
  v2[1] = sub_26100FAA8;

  return sub_26104582C();
}

uint64_t sub_26100FAA8()
{
  v2 = *v1;
  v2[33] = v0;

  v4 = sub_2610BCBF4();
  v2[34] = v4;
  v2[35] = v3;
  if (v0)
  {
    v5 = sub_261010380;
  }

  else
  {
    v5 = sub_26100FC08;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26100FC08()
{
  sub_26100F748(&OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth__deviceProvider, sub_260F9D764);
  v2 = v1;
  ObjectType = swift_getObjectType();
  (*(v2 + 8))(ObjectType, v2);
  swift_unknownObjectRelease();
  v4 = v0[5];
  if (v4)
  {
    v5 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    (*(v5 + 8))(v4, v5);
    v6 = v0[20];
    v7 = v0[21];
    __swift_project_boxed_opaque_existential_1(v0 + 17, v6);
    v8 = (*(v7 + 8))(v6, v7);
    v4 = v9;
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 17);
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  }

  else
  {
    sub_260FA9980((v0 + 2), &qword_27FE63858, &unk_2610BE900);
    v8 = 0;
  }

  v10 = (v0[29] + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth_targetDeviceKey);
  swift_beginAccess();
  *v10 = v8;
  v10[1] = v4;

  v11 = sub_26100F748(&OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth__sourceAppleIDExchanger, sub_260F9F58C);
  v13 = v12;
  v0[36] = v11;
  v14 = swift_getObjectType();
  v17 = (*(v13 + 40) + **(v13 + 40));
  v15 = swift_task_alloc();
  v0[37] = v15;
  *v15 = v0;
  v15[1] = sub_26100FE7C;

  return v17(v14, v13);
}

uint64_t sub_26100FE7C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 304) = v1;

  if (v1)
  {
    v5 = v4[34];
    v6 = v4[35];
    v7 = sub_2610103E4;
  }

  else
  {
    swift_unknownObjectRelease();
    v4[39] = a1;
    v5 = v4[34];
    v6 = v4[35];
    v7 = sub_26100FFAC;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_26100FFAC()
{
  v1 = v0[29];
  v2 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth_proxiedDevice);
  *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth_proxiedDevice) = v0[39];

  sub_26100F824((v0 + 12));
  v3 = v0[15];
  v4 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v3);
  v7 = (*(v4 + 8) + **(v4 + 8));
  v5 = swift_task_alloc();
  v0[40] = v5;
  *v5 = v0;
  v5[1] = sub_2610100F4;

  return v7(v3, v4);
}

uint64_t sub_2610100F4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 328) = a1;
  *(v4 + 336) = v1;

  v5 = *(v3 + 280);
  v6 = *(v3 + 272);
  if (v1)
  {
    v7 = sub_2610105C8;
  }

  else
  {
    v7 = sub_261010238;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_261010238()
{
  v1 = v0[41];

  if (v1)
  {
    v2 = v0[41];
    v1 = type metadata accessor for PASAccountWithImage();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    *(v3 + 24) = xmmword_2610BF320;
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
    v4 = sub_2610115FC(&unk_27FE65010, type metadata accessor for PASAccountWithImage, &protocol conformance descriptor for PASAccountWithImage);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
    v3 = 0;
    v4 = 0;
    v0[8] = 0;
    v0[9] = 0;
  }

  v5 = v0[29];
  v0[7] = v3;
  v0[10] = v1;
  v0[11] = v4;
  v6 = OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth_localAccount;
  swift_beginAccess();
  sub_260FC3844((v0 + 7), v5 + v6, &unk_27FE656B0, &unk_2610BFCE0);
  swift_endAccess();
  v7 = v0[1];

  return v7();
}

uint64_t sub_261010380()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2610103E4()
{
  v15 = v0;

  swift_unknownObjectRelease();
  v1 = v0[38];
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
    v0[28] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, v4, v5, "PASFlowStepProxiedAuth prepareForPresentation failed:\n%{public}s", v6, 0xCu);
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

uint64_t sub_2610105C8()
{
  v15 = v0;

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
  v1 = v0[42];
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
    v0[28] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, v4, v5, "PASFlowStepProxiedAuth prepareForPresentation failed:\n%{public}s", v6, 0xCu);
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

uint64_t PASFlowStepProxiedAuth.configureContext(_:)(void *a1)
{
  v3 = [*(*(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth_targetAccount) + 16) appleID];
  if (!v3)
  {
    sub_2610112C4();
    swift_allocError();
    *v13 = 0;
    return swift_willThrow();
  }

  v4 = v3;
  sub_2610BCA04();

  v5 = OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth_localAccount;
  swift_beginAccess();
  sub_260FA9918(v1 + v5, &v17, &unk_27FE656B0, &unk_2610BFCE0);
  if (!v18)
  {

    sub_260FA9980(&v17, &unk_27FE656B0, &unk_2610BFCE0);
    sub_2610112C4();
    swift_allocError();
    *v14 = 1;
    return swift_willThrow();
  }

  sub_260F98E14(&v17, v19);
  v6 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth_proxiedDevice);
  if (v6)
  {
    v7 = v6;
    [v7 setLinkType_];
    [a1 setAuthenticationType_];
    v8 = sub_2610BC9D4();

    [a1 setUsername_];

    v9 = v20;
    v10 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (*(v10 + 24))(v9, v10);
    if (v11)
    {
      v12 = sub_2610BC9D4();
    }

    else
    {
      v12 = 0;
    }

    [a1 setAltDSID_];

    if (qword_27FE637F0 != -1)
    {
      swift_once();
    }

    [a1 setAppProvidedContext_];
    [a1 setProxiedDevice_];
    [a1 setAnisetteDataProvider_];
    swift_unknownObjectRelease();
    [a1 setIsUsernameEditable_];
    [a1 setServiceType_];
  }

  else
  {

    sub_2610112C4();
    swift_allocError();
    *v16 = 2;
    swift_willThrow();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v19);
}

void PASFlowStepProxiedAuth.handleAuthResults(_:)(uint64_t *a1)
{
  *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth_authResults) = *a1;

  sub_2610439BC();
}

uint64_t PASFlowStepProxiedAuth.nextStep()()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth_authResults);
  if (v1)
  {
    v2 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v4 = *(v2 + 8);
    v5 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth_targetAccount);
    type metadata accessor for PASFlowStepProxiedTerms(0);
    v6 = swift_allocObject();

    v7 = sub_261010EC0(Strong, v4, v5, v1, v6);
    swift_unknownObjectRelease();
    sub_2610115FC(&qword_27FE653D0, type metadata accessor for PASFlowStepProxiedTerms, &protocol conformance descriptor for PASSourceFlowStepBase);
  }

  else
  {
    v7 = 0x80000002610D3EC0;
    sub_260FC3450();
    swift_allocError();
    *v8 = 0xD000000000000029;
    *(v8 + 8) = 0x80000002610D3EC0;
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    *(v8 + 32) = 1;
    swift_willThrow();
  }

  return v7;
}

uint64_t sub_261010CA4()
{

  sub_260FA9980(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth_localAccount, &unk_27FE656B0, &unk_2610BFCE0);
}

uint64_t PASFlowStepProxiedAuth.deinit()
{
  v0 = PASSourceFlowStepBase.deinit();

  sub_260FA9980(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth_localAccount, &unk_27FE656B0, &unk_2610BFCE0);

  return v0;
}

uint64_t PASFlowStepProxiedAuth.__deallocating_deinit()
{
  v0 = PASFlowStepProxiedAuth.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_261010EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[3] = type metadata accessor for PASFamilyMember();
  v20[4] = sub_2610115FC(&unk_27FE64210, type metadata accessor for PASFamilyMember, &protocol conformance descriptor for PASFamilyMember);
  v20[0] = a3;
  v10 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms__anisetteProvisioningController;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65440, &unk_2610C5640);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(a5 + v10) = v11;
  v12 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms__sourceAppleIDExchanger;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65448, &unk_2610C65A0);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(a5 + v12) = v13;
  v14 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms__analyticsProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65450, &unk_2610C7CC0);
  v15 = swift_allocObject();
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  *(v15 + 48) = 0;
  *(a5 + v14) = v15;
  *(a5 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms____lazy_storage___analytics) = 0;
  v16 = a5 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms_result;
  *v16 = 0;
  *(v16 + 8) = -1;
  v17 = a5 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms_termsHandler;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  sub_260FA99E0(v20, a5 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms_account);
  *(a5 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms_proxiedAuthResults) = a4;
  v18 = sub_26104DC44(a1, a2);
  __swift_destroy_boxed_opaque_existential_0Tm(v20);
  return v18;
}

uint64_t sub_261011064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth_targetDeviceKey);
  *v7 = 0;
  v7[1] = 0;
  v8 = OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth__authenticator;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FE65030, &qword_2610C4080);
  v9 = swift_allocObject();
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0;
  *(v3 + v8) = v9;
  v10 = OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth__deviceProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65BC0, &qword_2610BFD90);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v3 + v10) = v11;
  v12 = OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth__anisetteDataProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65440, &unk_2610C5640);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v3 + v12) = v13;
  v14 = OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth__sourceAppleIDExchanger;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65448, &unk_2610C65A0);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v3 + v14) = v15;
  v16 = OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth__accountStore;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64220, &unk_2610C0560);
  v17 = swift_allocObject();
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0u;
  *(v17 + 48) = 0;
  *(v3 + v16) = v17;
  *(v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth_proxiedDevice) = 0;
  v18 = v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth_localAccount;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0;
  *(v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth_authResults) = 0;
  if (!a1)
  {
    v19 = v3;
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v20 = sub_2610BC7B4();
    __swift_project_value_buffer(v20, qword_27FE65900);
    v21 = sub_2610BC794();
    v22 = sub_2610BCD74();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_260F97000, v21, v22, "PASFlowStepProxiedAuth delegate is nil in init", v23, 2u);
      MEMORY[0x2666F8720](v23, -1, -1);
    }

    v3 = v19;
  }

  *(v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepProxiedAuth_targetAccount) = a3;

  return sub_26104DC44(a1, a2);
}

unint64_t sub_2610112C4()
{
  result = qword_27FE653B8;
  if (!qword_27FE653B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE653B8);
  }

  return result;
}

unint64_t sub_26101131C()
{
  result = qword_27FE65400;
  if (!qword_27FE65400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65400);
  }

  return result;
}

unint64_t sub_261011370(void *a1)
{
  a1[1] = sub_2610113A8();
  a1[2] = sub_2610113FC();
  result = sub_261011450();
  a1[3] = result;
  return result;
}

unint64_t sub_2610113A8()
{
  result = qword_27FE65408;
  if (!qword_27FE65408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65408);
  }

  return result;
}

unint64_t sub_2610113FC()
{
  result = qword_27FE65410;
  if (!qword_27FE65410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65410);
  }

  return result;
}

unint64_t sub_261011450()
{
  result = qword_27FE65418;
  if (!qword_27FE65418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65418);
  }

  return result;
}

uint64_t sub_2610114A4(uint64_t a1)
{
  result = sub_2610115FC(&unk_27FE65420, type metadata accessor for PASFlowStepProxiedAuth, &protocol conformance descriptor for PASSourceFlowStepBase);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for PASFlowStepProxiedAuth(uint64_t a1)
{
  result = qword_27FE65430;
  if (!qword_27FE65430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2610115FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_261011658(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "noMessageSession";
  v4 = 0xD000000000000021;
  if (v2 == 1)
  {
    v5 = 0xD000000000000021;
  }

  else
  {
    v5 = 0xD00000000000001ALL;
  }

  if (v2 == 1)
  {
    v6 = "noMessageSession";
  }

  else
  {
    v6 = "essageSessionType";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "";
  }

  if (*a2 != 1)
  {
    v4 = 0xD00000000000001ALL;
    v3 = "essageSessionType";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000010;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "";
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

uint64_t sub_261011730()
{
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_2610117CC(uint64_t a1)
{
  sub_2610BCA54();
}

uint64_t sub_261011854(uint64_t a1)
{
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

unint64_t sub_2610118EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_261013484(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26101191C(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000010;
  v3 = "noMessageSession";
  v4 = 0xD000000000000021;
  if (*v1 != 1)
  {
    v4 = 0xD00000000000001ALL;
    v3 = "essageSessionType";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

unint64_t sub_261011978()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v3;
  v4 = sub_2610B4558(v1);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  v6 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &unk_27FE63C30, &unk_2610BEE00);
  return v6;
}

uint64_t sub_261011A40(uint64_t a1)
{
  v2 = sub_261013330();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_261011A7C(uint64_t a1)
{
  v2 = sub_261013330();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_261011AB8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  return v1;
}

uint64_t PASMessageSessionProvider.messageSessionStatusPublisher.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  sub_2610BC814();
  return swift_endAccess();
}

uint64_t PASMessageSessionProvider.deinit()
{
  v1 = v0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = sub_2610BC794();
  v4 = sub_2610BCD84();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_260F97000, v3, v4, "PASMessageSessionProvider deinit", v5, 2u);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  PASMessageSessionProvider.endMessageSession()();
  sub_260FA9980(v1 + 16, &unk_27FE668E0, &qword_2610C8230);
  sub_260FA9980(v1 + 56, &qword_27FE63D08, &unk_2610C65B0);
  v6 = OBJC_IVAR____TtC21ProximityAppleIDSetup25PASMessageSessionProvider__messageSessionStatus;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  (*(*(v7 - 8) + 8))(v1 + v6, v7);
  return v1;
}

Swift::Void __swiftcall PASMessageSessionProvider.endMessageSession()()
{
  v1 = v0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = sub_2610BC794();
  v4 = sub_2610BCD54();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_260F97000, v3, v4, "PASMessageSessionProvider endMessageSession", v5, 2u);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  swift_beginAccess();
  v6 = v1[10];
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(v1 + 7, v6);
    sub_260FFFF1C();
  }

  swift_beginAccess();
  if (v1[5])
  {
    sub_260FA99E0((v1 + 2), &v9);
    v7 = *(&v10 + 1);
    v8 = v11;
    __swift_project_boxed_opaque_existential_1(&v9, *(&v10 + 1));
    (*(v8 + 24))(v7, v8);
    __swift_destroy_boxed_opaque_existential_0Tm(&v9);
  }

  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  swift_beginAccess();
  sub_2610127FC(&v9, (v1 + 2));
  swift_endAccess();
}

uint64_t PASMessageSessionProvider.__deallocating_deinit()
{
  PASMessageSessionProvider.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t PASMessageSessionProvider.getMessageSession()@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_26101286C(v1 + 16, &v9);
  if (v10)
  {
    return sub_260F98E14(&v9, a1);
  }

  sub_260FA9980(&v9, &unk_27FE668E0, &qword_2610C8230);
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v4 = sub_2610BC7B4();
  __swift_project_value_buffer(v4, qword_27FE65900);
  v5 = sub_2610BC794();
  v6 = sub_2610BCD64();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_260F97000, v5, v6, "PASMessageSessionProvider has no message session", v7, 2u);
    MEMORY[0x2666F8720](v7, -1, -1);
  }

  sub_2610128DC();
  swift_allocError();
  *v8 = 0;
  return swift_willThrow();
}

void PASMessageSessionProvider.setMessageSession(fromTemplate:)(uint64_t a1)
{
  sub_260FA99E0(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64008, &unk_2610BF9A0);
  sub_261012930();
  if (swift_dynamicCast())
  {
    v2 = v8;
    v3 = [objc_allocWithZone(MEMORY[0x277D02880]) initWithTemplate_];
    if (v3)
    {
      v4 = v3;
      sub_26101297C(v3, v1);
    }

    else
    {
      sub_2610128DC();
      swift_allocError();
      *v6 = 2;
      swift_willThrow();
    }
  }

  else
  {
    sub_2610128DC();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
  }
}

uint64_t PASMessageSessionProvider.setMessageSession(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_261012BC0(v4, v1, v2, v3);
}

uint64_t sub_2610121CC()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  sub_2610BC814();
  return swift_endAccess();
}

uint64_t sub_261012244(uint64_t a1)
{
  PASMessageSessionProvider.getMessageSession()(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_2610122C4(uint64_t a1)
{
  PASMessageSessionProvider.setMessageSession(fromTemplate:)(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_261012340(void *a1)
{
  v3 = *v1;
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v4);
  sub_261012BC0(v6, v3, v4, v5);
  v7 = *(v2 + 8);

  return v7();
}

uint64_t sub_2610123E4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v15 - v4;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v6 = sub_2610BC7B4();
  __swift_project_value_buffer(v6, qword_27FE65900);
  v7 = sub_2610BC794();
  v8 = sub_2610BCD84();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_260F97000, v7, v8, "PASMessageSessionProvider heartbeatDidFail", v9, 2u);
    MEMORY[0x2666F8720](v9, -1, -1);
  }

  v10 = sub_2610BCC94();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  sub_2610BCC74();

  v11 = sub_2610BCC64();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v1;
  sub_261042434(0, 0, v5, &unk_2610C68A0, v12);
}

uint64_t sub_2610125C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_2610BCC74();
  *(v4 + 24) = sub_2610BCC64();
  v6 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26101265C, v6, v5);
}

uint64_t sub_26101265C()
{

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 32) = 0;

  sub_2610BC854();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261012708@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  *a2 = v4;
  return result;
}

uint64_t sub_261012788(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2610BC854();
}

uint64_t sub_2610127FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE668E0, &qword_2610C8230);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26101286C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE668E0, &qword_2610C8230);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2610128DC()
{
  result = qword_27FE65460;
  if (!qword_27FE65460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65460);
  }

  return result;
}

unint64_t sub_261012930()
{
  result = qword_27FE64010;
  if (!qword_27FE64010)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE64010);
  }

  return result;
}

uint64_t sub_26101297C(void *a1, uint64_t a2)
{
  v21[3] = sub_261012930();
  v21[4] = &protocol witness table for CUMessageSession;
  v21[0] = a1;
  swift_beginAccess();
  sub_26101286C(a2 + 16, &v16);
  if (v17)
  {
    sub_260F98E14(&v16, v18);
    swift_beginAccess();
    v4 = *(a2 + 80);
    if (v4)
    {
      __swift_project_boxed_opaque_existential_1((a2 + 56), v4);
      v5 = a1;
      sub_260FFFF1C();
    }

    else
    {
      v7 = a1;
    }

    v8 = v19;
    v9 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (*(v9 + 24))(v8, v9);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
  }

  else
  {
    v6 = a1;
    sub_260FA9980(&v16, &unk_27FE668E0, &qword_2610C8230);
  }

  sub_260FA99E0(v21, v18);
  swift_beginAccess();
  sub_2610127FC(v18, a2 + 16);
  swift_endAccess();
  [a1 activate];
  swift_beginAccess();
  v10 = *(a2 + 80);
  if (v10)
  {
    __swift_project_boxed_opaque_existential_1((a2 + 56), v10);
    sub_260FFFACC();
  }

  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v11 = sub_2610BC7B4();
  __swift_project_value_buffer(v11, qword_27FE65900);
  v12 = sub_2610BC794();
  v13 = sub_2610BCD84();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_260F97000, v12, v13, "PASMessageSessionProvider did setMessageSession", v14, 2u);
    MEMORY[0x2666F8720](v14, -1, -1);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v21);
}

uint64_t sub_261012BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[3] = a3;
  v23[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  swift_beginAccess();
  sub_26101286C(a2 + 16, &v18);
  if (v19)
  {
    sub_260F98E14(&v18, v20);
    swift_beginAccess();
    v9 = *(a2 + 80);
    if (v9)
    {
      __swift_project_boxed_opaque_existential_1((a2 + 56), v9);
      sub_260FFFF1C();
    }

    v10 = v21;
    v11 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (*(v11 + 24))(v10, v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
  }

  else
  {
    sub_260FA9980(&v18, &unk_27FE668E0, &qword_2610C8230);
  }

  sub_260FA99E0(v23, v20);
  swift_beginAccess();
  sub_2610127FC(v20, a2 + 16);
  swift_endAccess();
  (*(a4 + 16))(a3, a4);
  swift_beginAccess();
  v12 = *(a2 + 80);
  if (v12)
  {
    __swift_project_boxed_opaque_existential_1((a2 + 56), v12);
    sub_260FFFACC();
  }

  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v13 = sub_2610BC7B4();
  __swift_project_value_buffer(v13, qword_27FE65900);
  v14 = sub_2610BC794();
  v15 = sub_2610BCD84();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_260F97000, v14, v15, "PASMessageSessionProvider did setMessageSession", v16, 2u);
    MEMORY[0x2666F8720](v16, -1, -1);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v23);
}

uint64_t dispatch thunk of PASMessageSessionProviderProtocol.getMessageSession()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_260FB6DB4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PASMessageSessionProviderProtocol.setMessageSession(fromTemplate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_260FBF860;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PASMessageSessionProviderProtocol.setMessageSession(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_260FBF860;

  return v9(a1, a2, a3);
}

uint64_t type metadata accessor for PASMessageSessionProvider(uint64_t a1)
{
  result = qword_27FE65468;
  if (!qword_27FE65468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_261013234(uint64_t a1)
{
  sub_260FDD7E4();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_2610132F8(void *a1)
{
  a1[1] = sub_261013330();
  a1[2] = sub_261013384();
  result = sub_2610133D8();
  a1[3] = result;
  return result;
}

unint64_t sub_261013330()
{
  result = qword_27FE65478;
  if (!qword_27FE65478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65478);
  }

  return result;
}

unint64_t sub_261013384()
{
  result = qword_27FE65480;
  if (!qword_27FE65480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65480);
  }

  return result;
}

unint64_t sub_2610133D8()
{
  result = qword_27FE65488;
  if (!qword_27FE65488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65488);
  }

  return result;
}

unint64_t sub_261013430()
{
  result = qword_27FE65490;
  if (!qword_27FE65490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65490);
  }

  return result;
}

unint64_t sub_261013484(uint64_t a1, uint64_t a2)
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

uint64_t sub_2610134D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FB6DB4;

  return sub_2610125C4(a1, v4, v5, v6);
}

uint64_t PASDeviceClass.displayNameKey.getter()
{
  v1 = 0x454E4F485049;
  v2 = 1145131081;
  if (*v0 != 2)
  {
    v2 = 0x4E574F4E4B4E55;
  }

  if (*v0)
  {
    v1 = 1146048585;
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

uint64_t sub_2610135F4()
{
  v1 = v0;
  v38[3] = *MEMORY[0x277D85DE8];
  *(v0 + 24) = 0;
  v2 = (v0 + 24);
  v3 = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
  *(v2 - 1) = v3;
  swift_beginAccess();
  v37 = *v2;
  v4 = v37;
  v5 = [v3 canEvaluatePolicy:1 error:&v37];
  v6 = v37;
  *v2 = v37;
  v7 = v6;
  swift_endAccess();

  if (!v7)
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v32 = sub_2610BC7B4();
    __swift_project_value_buffer(v32, qword_27FE65900);
    v12 = sub_2610BC794();
    v33 = sub_2610BCD84();
    if (os_log_type_enabled(v12, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 67240192;
      *(v34 + 4) = v5;
      _os_log_impl(&dword_260F97000, v12, v33, "PASBiometryEvaluator result: %{BOOL,public}d", v34, 8u);
      MEMORY[0x2666F8720](v34, -1, -1);
    }

    goto LABEL_18;
  }

  v38[0] = v7;
  sub_261018DE4();
  type metadata accessor for LAError(0);
  v8 = v7;
  if ((swift_dynamicCast() & 1) == 0 || (v9 = v37, sub_261018E30(&qword_27FE63DA8, 255, type metadata accessor for LAError, &unk_2610BF1FC), sub_2610BC4B4(), v9, (v36 + 7) > 1))
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v21 = sub_2610BC7B4();
    __swift_project_value_buffer(v21, qword_27FE65900);
    v22 = v8;
    v12 = sub_2610BC794();
    v23 = sub_2610BCD64();

    if (os_log_type_enabled(v12, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v38[0] = v25;
      *v24 = 136446210;
      v26 = v22;
      v27 = [v26 description];
      v28 = sub_2610BCA04();
      v30 = v29;

      v31 = sub_260FA5970(v28, v30, v38);

      *(v24 + 4) = v31;
      _os_log_impl(&dword_260F97000, v12, v23, "PASBiometryEvaluator failed canEvaluatePolicy\n%{public}s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x2666F8720](v25, -1, -1);
      MEMORY[0x2666F8720](v24, -1, -1);

      return v1;
    }

LABEL_18:
    return v1;
  }

  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v10 = sub_2610BC7B4();
  __swift_project_value_buffer(v10, qword_27FE65900);
  v11 = v8;
  v12 = sub_2610BC794();
  v13 = sub_2610BCD84();

  if (!os_log_type_enabled(v12, v13))
  {

    goto LABEL_18;
  }

  v14 = swift_slowAlloc();
  v15 = swift_slowAlloc();
  v38[0] = v15;
  *v14 = 136446210;
  v16 = [v11 localizedDescription];
  v17 = sub_2610BCA04();
  v19 = v18;

  v20 = sub_260FA5970(v17, v19, v38);

  *(v14 + 4) = v20;
  _os_log_impl(&dword_260F97000, v12, v13, "PASBiometryEvaluator can't evaulate  - result: %{public}s", v14, 0xCu);
  __swift_destroy_boxed_opaque_existential_0Tm(v15);
  MEMORY[0x2666F8720](v15, -1, -1);
  MEMORY[0x2666F8720](v14, -1, -1);

  return v1;
}

uint64_t sub_261013AFC()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void (*PASDeviceProvider.targetDevice.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  return sub_261013C6C;
}

void (*PASDeviceProvider.$targetDevice.modify(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE654E8, &qword_2610C6948);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC21ProximityAppleIDSetup17PASDeviceProvider__targetDevice;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE654E0, &qword_2610C6940);
  sub_2610BC814();
  swift_endAccess();
  return sub_261018E7C;
}

uint64_t sub_261013E64(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  sub_260FA9918(a1, v12, &qword_27FE63850, qword_2610CC240);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_260FA9918(v12, &v11, &qword_27FE63850, qword_2610CC240);

  sub_2610BC854();
  sub_2610151E8(a5, a6, a7);
  return sub_260FA9980(v12, &qword_27FE63850, qword_2610CC240);
}

uint64_t sub_261013F58(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_260FA9918(a1, v9, &qword_27FE63850, qword_2610CC240);

  sub_2610BC854();
  sub_2610151E8(a2, a3, a4);
  return sub_260FA9980(a1, &qword_27FE63850, qword_2610CC240);
}

void (*PASDeviceProvider.targetDeviceContext.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  return sub_2610140E0;
}

void sub_2610140FC(uint64_t *a1, char a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v8 = *a1;
  if (a2)
  {
    sub_260FA9918(*a1, v8 + 40, &qword_27FE63850, qword_2610CC240);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_260FA9918(v8 + 40, v8 + 80, &qword_27FE63850, qword_2610CC240);

    sub_2610BC854();
    sub_2610151E8(a3, a4, a5);
    sub_260FA9980(v8 + 40, &qword_27FE63850, qword_2610CC240);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_260FA9918(v8, v8 + 40, &qword_27FE63850, qword_2610CC240);

    sub_2610BC854();
    sub_2610151E8(a3, a4, a5);
  }

  sub_260FA9980(v8, &qword_27FE63850, qword_2610CC240);

  free(v8);
}

uint64_t sub_26101428C(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646C8, &qword_2610C24F0);
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v17 - v13;
  v15 = *(v7 + 16);
  v15(&v17 - v13, a1, v6);
  v15(v11, v14, v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE654F8, &unk_2610C69A0);
  sub_2610BC824();
  swift_endAccess();
  return (*(v7 + 8))(v14, v6);
}

uint64_t sub_261014424(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646C8, &qword_2610C24F0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  (*(v4 + 16))(&v8 - v6, a1, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE654F8, &unk_2610C69A0);
  sub_2610BC824();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

void (*PASDeviceProvider.$targetDeviceContext.modify(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646C8, &qword_2610C24F0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC21ProximityAppleIDSetup17PASDeviceProvider__targetDeviceContext;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE654F8, &unk_2610C69A0);
  sub_2610BC814();
  swift_endAccess();
  return sub_261018E7C;
}