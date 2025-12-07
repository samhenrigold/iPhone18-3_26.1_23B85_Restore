uint64_t sub_243AB1D34(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void *DataclassAction.init(account:presenter:)(void *a1, void *a2)
{
  v4 = sub_243AB3EE8(a1, a2);

  return v4;
}

uint64_t sub_243AB1E70(char a1)
{
  *(v2 + 192) = v1;
  *(v2 + 225) = a1;
  return MEMORY[0x2822009F8](sub_243AB1E94, 0, 0);
}

uint64_t sub_243AB1E94()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 28;
  v0[3] = sub_243AB1FC0;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99AB8, qword_243AC83F0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_243ABE710;
  v0[13] = &block_descriptor_9;
  v0[14] = v2;
  [v1 setUserVisibleKeychainSyncEnabled:1 withCompletion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_243AB1FC0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_243AB20E8;
  }

  else
  {
    v2 = sub_243AB20D0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_243AB20E8(uint64_t a1)
{
  v38 = v1;
  v2 = *(v1 + 200);
  swift_willThrow();
  *(v1 + 168) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C10, &qword_243AC4C60);
  sub_243A2CFF0(0, &qword_27ED98FA0, 0x277CCA9B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v4 = *(v1 + 176);
  *(v1 + 208) = v4;
  v5 = [v4 domain];
  v6 = sub_243AC2858();
  v8 = v7;

  if (v6 == sub_243AC2858() && v8 == v9)
  {
  }

  else
  {
    v11 = sub_243AC2EE8();

    if ((v11 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  if ([v4 code] != -5700)
  {
LABEL_18:

LABEL_19:
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v22 = *(v1 + 200);
    v23 = sub_243AC1468();
    __swift_project_value_buffer(v23, qword_27EDA14A8);
    v24 = v22;
    v25 = sub_243AC1448();
    v26 = sub_243AC2B58();

    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v1 + 200);
    if (v27)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v37 = v30;
      *v29 = 136315138;
      swift_getErrorValue();
      v31 = sub_243AC2F58();
      v33 = sub_243AB73D8(v31, v32, &v37);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_243A1B000, v25, v26, "Could not enable keychain %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x245D47D20](v30, -1, -1);
      MEMORY[0x245D47D20](v29, -1, -1);
    }

    else
    {
    }

LABEL_24:
    v34 = *(v1 + 8);

    return v34(0);
  }

  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v12 = sub_243AC1468();
  __swift_project_value_buffer(v12, qword_27EDA14A8);
  v13 = sub_243AC1448();
  v14 = sub_243AC2B48();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_243A1B000, v13, v14, "CDP Flow Repair is needed. Initiating repair flow.", v15, 2u);
    MEMORY[0x245D47D20](v15, -1, -1);
  }

  v16 = *(v1 + 225);

  if (v16 == 1)
  {
    v17 = sub_243AC1448();
    v18 = sub_243AC2B58();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v1 + 200);
    if (v19)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_243A1B000, v17, v18, "CDP repair flow did not work. Bailing.", v21, 2u);
      MEMORY[0x245D47D20](v21, -1, -1);
    }

    goto LABEL_24;
  }

  v36 = swift_task_alloc();
  *(v1 + 216) = v36;
  *v36 = v1;
  v36[1] = sub_243AB2584;

  return sub_243AB2DC0();
}

uint64_t sub_243AB2584()
{

  return MEMORY[0x2822009F8](sub_243AB2680, 0, 0);
}

uint64_t sub_243AB2680()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_243AB26E8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_243AB2708, 0, 0);
}

uint64_t sub_243AB2708()
{
  v42 = v0;
  v1 = [*(v0 + 16) actions];
  sub_243A2CFF0(0, &qword_27ED98B88, 0x277CFB1B8);
  v2 = sub_243AC2998();

  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_18:

LABEL_19:
    if (qword_27ED98910 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_27;
  }

  if (!sub_243AC2DF8())
  {
    goto LABEL_18;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x245D470F0](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_27:
      swift_once();
LABEL_20:
      v27 = *(v0 + 16);
      v28 = sub_243AC1468();
      __swift_project_value_buffer(v28, qword_27EDA14A8);
      v29 = v27;
      v17 = sub_243AC1448();
      v30 = sub_243AC2B58();

      if (os_log_type_enabled(v17, v30))
      {
        v31 = *(v0 + 16);
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v41 = v33;
        *v32 = 136315138;
        v34 = [v31 identifier];
        v35 = sub_243AC2858();
        v37 = v36;

        v38 = sub_243AB73D8(v35, v37, &v41);

        *(v32 + 4) = v38;
        _os_log_impl(&dword_243A1B000, v17, v30, "Provided action is not a dataclass action for recommendation %s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v33);
        MEMORY[0x245D47D20](v33, -1, -1);
        MEMORY[0x245D47D20](v32, -1, -1);
      }

      goto LABEL_22;
    }

    v3 = *(v2 + 32);
  }

  v4 = v3;
  *(v0 + 32) = v3;

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {

    goto LABEL_19;
  }

  v6 = [v5 dataclasses];
  v7 = sub_243AC2998();

  if (*(v7 + 16))
  {
    v9 = *(v0 + 16);
    v8 = *(v0 + 24);

    v10 = sub_243AC2818();
    *(v0 + 40) = v10;

    v11 = swift_task_alloc();
    *(v0 + 48) = v11;
    v11[2] = v8;
    v11[3] = v10;
    v11[4] = v9;
    v12 = swift_task_alloc();
    *(v0 + 56) = v12;
    *v12 = v0;
    v12[1] = sub_243AB2C3C;
    v13 = MEMORY[0x277D839B0];

    return MEMORY[0x2822007B8](v0 + 64, 0, 0, 0xD000000000000021, 0x8000000243ACE670, sub_243AB455C, v11, v13);
  }

  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 16);
  v15 = sub_243AC1468();
  __swift_project_value_buffer(v15, qword_27EDA14A8);
  v16 = v14;
  v17 = sub_243AC1448();
  v18 = sub_243AC2B58();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = *(v0 + 16);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v41 = v21;
    *v20 = 136315138;
    v22 = [v19 identifier];
    v23 = sub_243AC2858();
    v25 = v24;

    v26 = sub_243AB73D8(v23, v25, &v41);

    *(v20 + 4) = v26;
    _os_log_impl(&dword_243A1B000, v17, v18, "Did not find any dataclasses to be enabled for %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x245D47D20](v21, -1, -1);
    MEMORY[0x245D47D20](v20, -1, -1);
  }

LABEL_22:
  v39 = *(v0 + 8);

  return v39(0);
}

uint64_t sub_243AB2C3C()
{

  return MEMORY[0x2822009F8](sub_243AB2D54, 0, 0);
}

uint64_t sub_243AB2D54()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 64);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_243AB2DC0()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243AB2E5C, 0, 0);
}

uint64_t sub_243AB2E5C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[2];
    if (!*(v3 + 32))
    {
      type metadata accessor for KeychainRepairFlowHelper();
      v4 = swift_allocObject();
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      *(v3 + 32) = v4;

      v3 = v0[2];
    }

    v5 = v0[3];
    v6 = sub_243AC2A98();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    sub_243AC2A58();

    v7 = sub_243AC2A48();
    v8 = swift_allocObject();
    v9 = MEMORY[0x277D85700];
    v8[2] = v7;
    v8[3] = v9;
    v8[4] = v3;
    sub_243A3306C(0, 0, v5, &unk_243ACAC88, v8);
  }

  else
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v10 = sub_243AC1468();
    __swift_project_value_buffer(v10, qword_27EDA14A8);
    v11 = sub_243AC1448();
    v12 = sub_243AC2B58();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_243A1B000, v11, v12, "Presenter is unavailable for CDP repair flow. Bailing!", v13, 2u);
      MEMORY[0x245D47D20](v13, -1, -1);
    }
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_243AB3098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_243AC2A58();
  v4[3] = sub_243AC2A48();
  v6 = sub_243AC2A28();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_243AB3130, v6, v5);
}

uint64_t sub_243AB3130()
{
  v1 = *(v0[2] + 32);
  v0[6] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_243AB3210;

    return sub_243ABE7DC();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_243AB3210(char a1)
{
  v2 = *v1;
  *(*v1 + 72) = a1;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);

  return MEMORY[0x2822009F8](sub_243AB335C, v4, v3);
}

uint64_t sub_243AB335C()
{
  if (*(v0 + 72) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 64) = v1;
    *v1 = v0;
    v1[1] = sub_243AB3434;

    return sub_243AB1E70(1);
  }

  else
  {

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_243AB3434()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_243AB3554, v3, v2);
}

uint64_t sub_243AB3554()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_243AB35B4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_243AB362C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C30, &qword_243AC4C88);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = aBlock - v10;
  v12 = *(a2 + 16);
  [v12 setEnabled:1 forDataclass:a3];
  v13 = [*(a2 + 24) accountStore];
  (*(v9 + 16))(v11, a1, v8);
  v14 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  (*(v9 + 32))(v15 + v14, v11, v8);
  aBlock[4] = sub_243AB4638;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243AB35B4;
  aBlock[3] = &block_descriptor_23;
  v16 = _Block_copy(aBlock);
  v17 = a4;

  [v13 saveAccount:v12 withCompletionHandler:v16];
  _Block_release(v16);
}

void sub_243AB3838(int a1, id a2, void *a3)
{
  if (a2)
  {
    v5 = a2;
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v6 = sub_243AC1468();
    __swift_project_value_buffer(v6, qword_27EDA14A8);
    v7 = a2;
    v8 = a3;
    v9 = sub_243AC1448();
    v10 = sub_243AC2B58();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21 = v12;
      *v11 = 136315394;
      v13 = [v8 identifier];
      v14 = sub_243AC2858();
      v16 = v15;

      v17 = sub_243AB73D8(v14, v16, &v21);

      *(v11 + 4) = v17;
      *(v11 + 12) = 2080;
      swift_getErrorValue();
      v18 = sub_243AC2F58();
      v20 = sub_243AB73D8(v18, v19, &v21);

      *(v11 + 14) = v20;
      _os_log_impl(&dword_243A1B000, v9, v10, "Enable dataclass failed for recommendation %s with error %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D47D20](v12, -1, -1);
      MEMORY[0x245D47D20](v11, -1, -1);
    }

    LOBYTE(v21) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C30, &qword_243AC4C88);
    sub_243AC2A38();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C30, &qword_243AC4C88);
    sub_243AC2A38();
  }
}

void sub_243AB3A98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C30, &qword_243AC4C88);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - v4;
  v6 = objc_opt_self();
  sub_243A2CFF0(0, &qword_27ED995D0, 0x277D85C78);
  v7 = sub_243AC2BC8();
  (*(v3 + 16))(v5, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v5, v2);
  aBlock[4] = sub_243AB43BC;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243AB1A78;
  aBlock[3] = &block_descriptor_14;
  v10 = _Block_copy(aBlock);

  [v6 setUserTier:2 queue:v7 completionHandler:v10];
  _Block_release(v10);
}

void sub_243AB3C84(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v3 = sub_243AC1468();
    __swift_project_value_buffer(v3, qword_27EDA14A8);
    v4 = a1;
    v5 = sub_243AC1448();
    v6 = sub_243AC2B58();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136315138;
      swift_getErrorValue();
      v9 = sub_243AC2F58();
      v11 = sub_243AB73D8(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_243A1B000, v5, v6, "Unable to turn on private relay: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x245D47D20](v8, -1, -1);
      MEMORY[0x245D47D20](v7, -1, -1);
    }

    LOBYTE(v12) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C30, &qword_243AC4C88);
    sub_243AC2A38();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C30, &qword_243AC4C88);
    sub_243AC2A38();
  }
}

uint64_t DataclassAction.deinit()
{

  MEMORY[0x245D47DE0](v0 + 40);
  return v0;
}

uint64_t DataclassAction.__deallocating_deinit()
{

  MEMORY[0x245D47DE0](v0 + 40);

  return swift_deallocClassInstance();
}

void *sub_243AB3EE8(void *a1, uint64_t a2)
{
  v2[4] = 0;
  swift_unknownObjectWeakInit();
  v2[2] = a1;
  v4 = objc_opt_self();
  v5 = a1;
  result = [v4 defaultStore];
  if (result)
  {
    v7 = result;
    v8 = [objc_allocWithZone(MEMORY[0x277CED1D0]) initWithAccountStore_];

    v2[3] = v8;
    swift_unknownObjectWeakAssign();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_243AB3FB4()
{
  v1 = [objc_opt_self() sharedConnection];
  if (!v1)
  {
    __break(1u);
    return MEMORY[0x2822007B8](v1, v2, v3, v4, v5, v6, v7, v8);
  }

  v9 = v1;
  v10 = [v1 isCloudPrivateRelayAllowed];

  if (v10)
  {
    v11 = swift_task_alloc();
    v0[2] = v11;
    *v11 = v0;
    v11[1] = sub_243AB41C4;
    v8 = MEMORY[0x277D839B0];
    v6 = sub_243AB3A98;
    v1 = v0 + 3;
    v5 = 0x8000000243ACE650;
    v2 = 0;
    v3 = 0;
    v4 = 0xD000000000000016;
    v7 = 0;

    return MEMORY[0x2822007B8](v1, v2, v3, v4, v5, v6, v7, v8);
  }

  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v12 = sub_243AC1468();
  __swift_project_value_buffer(v12, qword_27EDA14A8);
  v13 = sub_243AC1448();
  v14 = sub_243AC2B78();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_243A1B000, v13, v14, "Skipping Private Relay action because a restriction profile was detected", v15, 2u);
    MEMORY[0x245D47D20](v15, -1, -1);
  }

  v16 = v0[1];

  return v16(0);
}

uint64_t sub_243AB41C4()
{

  return MEMORY[0x2822009F8](sub_243AB42C0, 0, 0);
}

uint64_t sub_243AB4328()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C30, &qword_243AC4C88);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_243AB43BC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C30, &qword_243AC4C88);

  sub_243AB3C84(a1);
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243AB4468()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_243AB44A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_243A1FEA8;

  return sub_243AB3098(a1, v4, v5, v6);
}

uint64_t sub_243AB4568()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C30, &qword_243AC4C88);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_243AB4638(int a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C30, &qword_243AC4C88);
  v5 = *(v2 + 16);

  sub_243AB3838(a1, a2, v5);
}

char *sub_243AB46E4()
{
  v1 = *v0;
  v2 = v0[1];
  type metadata accessor for RecommendationsViewController();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v3[OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_recommendationsController] = v1;

  v4 = *&v3[OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_account];
  *&v3[OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_account] = v2;
  v5 = v2;

  return v3;
}

uint64_t sub_243AB4770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243AB4860();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_243AB47D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243AB4860();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_243AB4838(uint64_t a1)
{
  sub_243AB4860();
  sub_243AC1BF8();
  __break(1u);
}

unint64_t sub_243AB4860()
{
  result = qword_27ED9A840;
  if (!qword_27ED9A840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A840);
  }

  return result;
}

id CELiftUIDataSource.__allocating_init(account:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC21CloudRecommendationUI18CELiftUIDataSource____lazy_storage___backupDeviceUUID] = xmmword_243AC4E80;
  *&v3[OBJC_IVAR____TtC21CloudRecommendationUI18CELiftUIDataSource_account] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t CELiftUIDataSource.request(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_243AC1328();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243AC1318();
  CELiftUIDataSource.request(for:timeZone:)(a1, v7, a2);
  return (*(v5 + 8))(v7, v4);
}

uint64_t CELiftUIDataSource.data(for:)(uint64_t a1)
{
  v2[29] = a1;
  v2[30] = v1;
  v3 = sub_243AC1328();
  v2[31] = v3;
  v2[32] = *(v3 - 8);
  v2[33] = swift_task_alloc();
  v4 = sub_243AC1058();
  v2[34] = v4;
  v2[35] = *(v4 - 8);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243AB4B74, 0, 0);
}

uint64_t sub_243AB4B74()
{
  v25 = v0;
  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v1 = v0[42];
  v2 = v0[34];
  v3 = v0[35];
  v4 = v0[29];
  v5 = sub_243AC1468();
  v0[43] = __swift_project_value_buffer(v5, qword_27EDA14A8);
  v6 = *(v3 + 16);
  v0[44] = v6;
  v0[45] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = sub_243AC1448();
  v8 = sub_243AC2B48();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[42];
  v12 = v0[34];
  v11 = v0[35];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v13 = 136315138;
    sub_243AB796C();
    v14 = sub_243AC2EB8();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = sub_243AB73D8(v14, v16, &v24);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_243A1B000, v7, v8, "Fetching data for LiftUI request %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x245D47D20](v23, -1, -1);
    MEMORY[0x245D47D20](v13, -1, -1);
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  v0[46] = v17;
  v19 = objc_opt_self();
  v0[47] = v19;
  v0[48] = [v19 sharedSession];
  v20 = swift_task_alloc();
  v0[49] = v20;
  *v20 = v0;
  v20[1] = sub_243AB4DFC;
  v21 = v0[29];

  return MEMORY[0x28211ECF8](v21, 0);
}

uint64_t sub_243AB4DFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v4;
  *(v7 + 400) = a3;
  *(v7 + 408) = v3;

  if (v3)
  {
    v8 = sub_243AB6098;
  }

  else
  {

    *(v7 + 416) = a2;
    *(v7 + 424) = a1;
    v8 = sub_243AB4F38;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_243AB4F38()
{
  v46 = v0;
  *(v0 + 200) = vextq_s8(*(v0 + 416), *(v0 + 416), 8uLL);
  v3 = (v0 + 200);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = *(v0 + 400);
    if ([v5 statusCode] == 401)
    {
      (*(v0 + 352))(*(v0 + 328), *(v0 + 232), *(v0 + 272));
      v3 = sub_243AC1448();
      v7 = sub_243AC2B78();
      v8 = os_log_type_enabled(v3, v7);
      v2 = *(v0 + 368);
      v9 = *(v0 + 328);
      v1 = *(v0 + 272);
      if (v8)
      {
        v10 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v45 = v43;
        *v10 = 136315138;
        sub_243AB796C();
        v11 = sub_243AC2EB8();
        v13 = v12;
        v2(v9, v1);
        v14 = sub_243AB73D8(v11, v13, &v45);

        *(v10 + 4) = v14;
        _os_log_impl(&dword_243A1B000, v3, v7, "LiftUI auth failure. Renewing credentials for request %s", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v43);
        MEMORY[0x245D47D20](v43, -1, -1);
        MEMORY[0x245D47D20](v10, -1, -1);

        goto LABEL_16;
      }

LABEL_15:

      v2(v9, v1);
LABEL_16:
      v28 = [objc_allocWithZone(MEMORY[0x277CFB200]) init];
      *(v0 + 432) = v28;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 216;
      *(v0 + 24) = sub_243AB54C4;
      v29 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A860, &unk_243ACADE8);
      *(v0 + 80) = MEMORY[0x277D85DD0];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_243AB6ED0;
      *(v0 + 104) = &block_descriptor_15;
      *(v0 + 112) = v29;
      [v28 renewCredentialsWithCompletion_];
      v19 = v0 + 16;

      return MEMORY[0x282200938](v19);
    }
  }

  v16 = *(v0 + 416);
  v15 = *(v0 + 424);
  (*(v0 + 352))(*(v0 + 288), *(v0 + 232), *(v0 + 272));
  sub_243A88590(v15, v16);
  v17 = sub_243AC1448();
  v9 = sub_243AC2B48();
  if (os_log_type_enabled(v17, v9))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v42 = v19;
    v45 = v19;
    *v18 = 134218242;
    v20 = v16 >> 62;
    v44 = v9;
    if ((v16 >> 62) > 1)
    {
      if (v20 == 2)
      {
        v26 = *(v15 + 16);
        v25 = *(v15 + 24);
        v27 = __OFSUB__(v25, v26);
        v21 = v25 - v26;
        if (v27)
        {
          __break(1u);
          goto LABEL_15;
        }
      }

      else
      {
        v21 = 0;
      }
    }

    else if (v20)
    {
      LODWORD(v21) = HIDWORD(v15) - v15;
      if (__OFSUB__(HIDWORD(v15), v15))
      {
        __break(1u);
        return MEMORY[0x282200938](v19);
      }

      v21 = v21;
    }

    else
    {
      v21 = BYTE6(v16);
    }

    v41 = *(v0 + 400);
    v30 = *(v0 + 368);
    v31 = *(v0 + 288);
    v32 = *(v0 + 272);
    *(v18 + 4) = v21;
    sub_243A200C8(v15, v16);
    *(v18 + 12) = 2080;
    sub_243AB796C();
    v33 = sub_243AC2EB8();
    v35 = v34;
    v30(v31, v32);
    v36 = sub_243AB73D8(v33, v35, &v45);

    *(v18 + 14) = v36;
    _os_log_impl(&dword_243A1B000, v17, v44, "Finished fetching data (%ld bytes) for LiftUI request %s", v18, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x245D47D20](v42, -1, -1);
    MEMORY[0x245D47D20](v18, -1, -1);
  }

  else
  {
    v22 = *(v0 + 368);
    v23 = *(v0 + 288);
    v24 = *(v0 + 272);

    sub_243A200C8(v15, v16);
    v22(v23, v24);
  }

  swift_beginAccess();
  v38 = *(v0 + 200);
  v37 = *(v0 + 208);
  sub_243A88590(v38, v37);
  sub_243A200C8(v38, v37);

  v39 = *(v0 + 8);

  return v39(v38, v37);
}

uint64_t sub_243AB54C4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 440) = v1;
  if (v1)
  {
    v2 = sub_243AB6164;
  }

  else
  {
    v2 = sub_243AB55D4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_243AB55D4()
{
  v57 = v0;
  v1 = *(v0 + 216);

  if (v1)
  {
    (*(v0 + 352))(*(v0 + 296), *(v0 + 232), *(v0 + 272));
    v2 = sub_243AC1448();
    v3 = sub_243AC2B58();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 400);
    v6 = *(v0 + 368);
    v7 = *(v0 + 296);
    v8 = *(v0 + 272);
    if (v4)
    {
      v55 = *(v0 + 400);
      v9 = swift_slowAlloc();
      v52 = v6;
      v10 = swift_slowAlloc();
      v56 = v10;
      *v9 = 136315138;
      sub_243AB796C();
      v11 = sub_243AC2EB8();
      v13 = v12;
      v52(v7, v8);
      v14 = sub_243AB73D8(v11, v13, &v56);

      *(v9 + 4) = v14;
      v15 = "Failed to renew credentials for request %s";
LABEL_9:
      _os_log_impl(&dword_243A1B000, v2, v3, v15, v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x245D47D20](v10, -1, -1);
      MEMORY[0x245D47D20](v9, -1, -1);

LABEL_11:
      v43 = *(v0 + 200);
      v44 = *(v0 + 208);

      v45 = *(v0 + 8);

      return v45(v43, v44);
    }

    goto LABEL_10;
  }

  v16 = sub_243AC1018();
  [v16 mutableCopy];

  sub_243AC2C68();
  swift_unknownObjectRelease();
  sub_243AB79DC();
  v17 = swift_dynamicCast();
  v18 = *(v0 + 352);
  v19 = *(v0 + 272);
  if (!v17)
  {
    v18(*(v0 + 304), *(v0 + 232), *(v0 + 272));
    v2 = sub_243AC1448();
    v3 = sub_243AC2B58();
    v38 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 400);
    v6 = *(v0 + 368);
    v7 = *(v0 + 304);
    v8 = *(v0 + 272);
    if (v38)
    {
      v55 = *(v0 + 400);
      v9 = swift_slowAlloc();
      v54 = v6;
      v10 = swift_slowAlloc();
      v56 = v10;
      *v9 = 136315138;
      sub_243AB796C();
      v39 = sub_243AC2EB8();
      v41 = v40;
      v54(v7, v8);
      v42 = sub_243AB73D8(v39, v41, &v56);

      *(v9 + 4) = v42;
      v15 = "Failed to renew credentials for request %s. Unable to rerun request.";
      goto LABEL_9;
    }

LABEL_10:

    v6(v7, v8);
    goto LABEL_11;
  }

  v51 = *(v0 + 320);
  v21 = *(v0 + 256);
  v20 = *(v0 + 264);
  v22 = *(v0 + 240);
  v49 = *(v0 + 248);
  v50 = *(v0 + 232);
  *(v0 + 448) = *(v0 + 224);
  v23 = *(v22 + OBJC_IVAR____TtC21CloudRecommendationUI18CELiftUIDataSource_account);
  v24 = sub_243AB6330();
  v26 = v25;
  sub_243AC1318();
  sub_243AB67BC(v23, v24, v26);

  (*(v21 + 8))(v20, v49);
  v18(v51, v50, v19);
  v27 = sub_243AC1448();
  v28 = sub_243AC2B78();
  v29 = os_log_type_enabled(v27, v28);
  v30 = *(v0 + 368);
  v31 = *(v0 + 320);
  v32 = *(v0 + 272);
  if (v29)
  {
    v33 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v56 = v53;
    *v33 = 136315138;
    sub_243AB796C();
    v34 = sub_243AC2EB8();
    v36 = v35;
    v30(v31, v32);
    v37 = sub_243AB73D8(v34, v36, &v56);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_243A1B000, v27, v28, "Renewing credentials succeeded for request %s, retrying", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v53);
    MEMORY[0x245D47D20](v53, -1, -1);
    MEMORY[0x245D47D20](v33, -1, -1);
  }

  else
  {

    v30(v31, v32);
  }

  *(v0 + 456) = [*(v0 + 376) sharedSession];
  sub_243AC1028();
  v47 = swift_task_alloc();
  *(v0 + 464) = v47;
  *v47 = v0;
  v47[1] = sub_243AB5BC0;
  v48 = *(v0 + 312);

  return MEMORY[0x28211ECF8](v48, 0);
}

uint64_t sub_243AB5BC0(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *v4;
  v8[59] = v3;

  v9 = v8[57];
  v10 = v8[46];
  v11 = v8[39];
  v12 = v8[34];
  if (v3)
  {
    v10(v11, v12);

    v13 = sub_243AB6250;
  }

  else
  {
    v8[60] = a2;
    v8[61] = a1;
    v10(v11, v12);

    v13 = sub_243AB5D8C;
  }

  return MEMORY[0x2822009F8](v13, 0, 0);
}

void *sub_243AB5D8C()
{
  v32 = v0;
  v2 = *(v0 + 480);
  v1 = *(v0 + 488);
  v3 = *(v0 + 448);

  sub_243A200C8(*(v0 + 200), *(v0 + 208));
  *(v0 + 200) = v1;
  *(v0 + 208) = v2;
  v5 = *(v0 + 480);
  v4 = *(v0 + 488);
  (*(v0 + 352))(*(v0 + 288), *(v0 + 232), *(v0 + 272));
  sub_243A88590(v4, v5);
  v6 = sub_243AC1448();
  v7 = sub_243AC2B48();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    result = swift_slowAlloc();
    v29 = result;
    v31 = result;
    *v8 = 134218242;
    v10 = v5 >> 62;
    v30 = v7;
    if ((v5 >> 62) > 1)
    {
      if (v10 != 2)
      {
        v11 = 0;
        goto LABEL_13;
      }

      v16 = *(v4 + 16);
      v15 = *(v4 + 24);
      v17 = __OFSUB__(v15, v16);
      v11 = v15 - v16;
      if (!v17)
      {
        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!v10)
    {
      v11 = BYTE6(v5);
LABEL_13:
      v28 = *(v0 + 400);
      v18 = *(v0 + 368);
      v19 = *(v0 + 288);
      v20 = *(v0 + 272);
      *(v8 + 4) = v11;
      sub_243A200C8(v4, v5);
      *(v8 + 12) = 2080;
      sub_243AB796C();
      v21 = sub_243AC2EB8();
      v23 = v22;
      v18(v19, v20);
      v24 = sub_243AB73D8(v21, v23, &v31);

      *(v8 + 14) = v24;
      _os_log_impl(&dword_243A1B000, v6, v30, "Finished fetching data (%ld bytes) for LiftUI request %s", v8, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x245D47D20](v29, -1, -1);
      MEMORY[0x245D47D20](v8, -1, -1);

      goto LABEL_14;
    }

    LODWORD(v11) = HIDWORD(v4) - v4;
    if (__OFSUB__(HIDWORD(v4), v4))
    {
      __break(1u);
      return result;
    }

    v11 = v11;
    goto LABEL_13;
  }

  v12 = *(v0 + 368);
  v13 = *(v0 + 288);
  v14 = *(v0 + 272);

  sub_243A200C8(v4, v5);
  v12(v13, v14);
LABEL_14:
  swift_beginAccess();
  v26 = *(v0 + 200);
  v25 = *(v0 + 208);
  sub_243A88590(v26, v25);
  sub_243A200C8(v26, v25);

  v27 = *(v0 + 8);

  return v27(v26, v25);
}

uint64_t sub_243AB6098()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_243AB6164(uint64_t a1)
{
  v2 = v1[54];
  v3 = v1[50];
  swift_willThrow();

  sub_243A200C8(v1[25], v1[26]);

  v4 = v1[1];

  return v4();
}

uint64_t sub_243AB6250()
{
  v1 = v0[56];
  v2 = v0[50];

  sub_243A200C8(v0[25], v0[26]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_243AB6330()
{
  v1 = (v0 + OBJC_IVAR____TtC21CloudRecommendationUI18CELiftUIDataSource____lazy_storage___backupDeviceUUID);
  v2 = *(v0 + OBJC_IVAR____TtC21CloudRecommendationUI18CELiftUIDataSource____lazy_storage___backupDeviceUUID);
  v3 = *(v0 + OBJC_IVAR____TtC21CloudRecommendationUI18CELiftUIDataSource____lazy_storage___backupDeviceUUID + 8);
  v4 = v2;
  if (v3 == 1)
  {
    v5 = [objc_allocWithZone(MEMORY[0x277CFB180]) initWithAccount_];
    v6 = [v5 backupDeviceUUID];
    v4 = sub_243AC2858();
    v8 = v7;

    v9 = *v1;
    v10 = v1[1];
    *v1 = v4;
    v1[1] = v8;

    sub_243AB7A78(v9, v10);
  }

  sub_243AB7A8C(v2, v3);
  return v4;
}

id CELiftUIDataSource.init(account:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC21CloudRecommendationUI18CELiftUIDataSource____lazy_storage___backupDeviceUUID] = xmmword_243AC4E80;
  *&v1[OBJC_IVAR____TtC21CloudRecommendationUI18CELiftUIDataSource_account] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

void CELiftUIDataSource.request(for:timeZone:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v33 = a2;
  v34 = a3;
  v7 = sub_243AC1208();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v11 = sub_243AC1468();
  __swift_project_value_buffer(v11, qword_27EDA14A8);
  v12 = *(v8 + 16);
  v32 = a1;
  v12(v10, a1, v7);
  v13 = sub_243AC1448();
  v14 = sub_243AC2B78();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v30 = v3;
    v17 = v16;
    v35 = v16;
    *v15 = 136315138;
    v18 = sub_243AC11B8();
    v31 = v4;
    v20 = v19;
    (*(v8 + 8))(v10, v7);
    v21 = sub_243AB73D8(v18, v20, &v35);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_243A1B000, v13, v14, "Loading LiftUI for url: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    v22 = v17;
    v5 = v30;
    MEMORY[0x245D47D20](v22, -1, -1);
    MEMORY[0x245D47D20](v15, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  v23 = objc_allocWithZone(MEMORY[0x277CCAB70]);
  v24 = sub_243AC11C8();
  v25 = [v23 initWithURL:v24 cachePolicy:1 timeoutInterval:30.0];

  v26 = *(v5 + OBJC_IVAR____TtC21CloudRecommendationUI18CELiftUIDataSource_account);
  v27 = sub_243AB6330();
  sub_243AB67BC(v26, v27, v28);

  sub_243AC1028();
}

void sub_243AB67BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v47 = a2;
  v48 = a3;
  v6 = sub_243AC12B8();
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x28223BE20](v6);
  v51 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_243AC12E8();
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_243AC1268();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v3 ak_addAnisetteHeaders];
  [v3 ak_addDeviceUDIDHeader];
  [v3 aa_addMultiUserDeviceHeaderIfEnabled];
  [v3 aa:a1 addBasicAuthorizationHeaderWithAccount:0 preferUsingPassword:?];
  [v3 aa_addClientInfoHeaders];
  [v3 aa_addDeviceIDHeader];
  v15 = sub_243AC2818();
  [v3 aa:v15 addContentTypeHeaders:?];

  sub_243AC1258();
  sub_243AC12F8();
  v17 = v16;
  v18 = *(v12 + 8);
  v18(v14, v11);
  if (v17)
  {
    v19 = sub_243AC2818();

    v20 = sub_243AC2818();
    [v3 setValue:v19 forHTTPHeaderField:v20];
  }

  if (sub_243AC2128())
  {
    v21 = sub_243AC2818();
    v22 = sub_243AC2818();
    [v3 setValue:v21 forHTTPHeaderField:v22];
  }

  sub_243AC1258();
  v23 = sub_243AC1308();
  v18(v14, v11);
  if ((v23 * 1000) >> 64 != (1000 * v23) >> 63)
  {
    __break(1u);
    goto LABEL_19;
  }

  v54 = 1000 * v23;
  sub_243AC2EB8();
  v24 = sub_243AC2818();

  v25 = sub_243AC2818();
  [v4 setValue:v24 forHTTPHeaderField:v25];

  sub_243AC12D8();
  v26 = v51;
  sub_243AC12C8();
  (*(v49 + 8))(v10, v50);
  sub_243AC12A8();
  (*(v52 + 8))(v26, v53);
  v27 = sub_243AC2818();

  v28 = sub_243AC2818();
  [v4 setValue:v27 forHTTPHeaderField:v28];

  v29 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v29 setDateStyle_];
  [v29 setTimeStyle_];
  v30 = [v29 dateFormat];
  if (!v30)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v31 = v30;

  v32 = sub_243AC2818();
  [v4 setValue:v31 forHTTPHeaderField:v32];

  v33 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v33 setDateStyle_];
  [v33 setTimeStyle_];
  v34 = [v33 dateFormat];
  if (!v34)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v35 = v34;

  v36 = sub_243AC2818();
  [v4 setValue:v35 forHTTPHeaderField:v36];

  if (v48)
  {
    v37 = sub_243AC2818();
    v38 = sub_243AC2818();
    [v4 setValue:v37 forHTTPHeaderField:v38];
  }

  v39 = [objc_opt_self() ams_sharedAccountStore];
  v40 = [v39 ams_activeiTunesAccount];
  if (v40)
  {
    v41 = v40;
    v42 = [v40 ams_DSID];
    if (v42)
    {
      v43 = v42;
      v44 = [v42 stringValue];
      if (!v44)
      {
        sub_243AC2858();
        v44 = sub_243AC2818();
      }

      v45 = sub_243AC2818();
      [v4 setValue:v44 forHTTPHeaderField:v45];

      v46 = v39;
      v39 = v41;
    }

    else
    {
      v46 = v41;
    }
  }
}

uint64_t sub_243AB6ED0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C10, &qword_243AC4C60);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

id CELiftUIDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CELiftUIDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_243AB70B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_243AC1328();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243AC1318();
  CELiftUIDataSource.request(for:timeZone:)(a1, v7, a2);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_243AB71B0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_243AB7244;

  return CELiftUIDataSource.data(for:)(a1);
}

uint64_t sub_243AB7244(uint64_t a1, uint64_t a2)
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

uint64_t sub_243AB737C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_243AB73D8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_243AB73D8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_243AB74A4(v11, 0, 0, 1, a1, a2);
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
    sub_243A20058(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_243AB74A4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_243AB75B0(a5, a6);
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
    result = sub_243AC2D48();
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

void *sub_243AB75B0(uint64_t a1, unint64_t a2)
{
  v3 = sub_243AB75FC(a1, a2);
  sub_243AB772C(&unk_2856B92F0);
  return v3;
}

void *sub_243AB75FC(uint64_t a1, unint64_t a2)
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

  v6 = sub_243AB99B4(v5, 0);
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

  result = sub_243AC2D48();
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
        v10 = sub_243AC28D8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_243AB99B4(v10, 0);
        result = sub_243AC2CF8();
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

uint64_t sub_243AB772C(uint64_t result)
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

  result = sub_243AB7818(result, v11, 1, v3);
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

char *sub_243AB7818(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED9A970, &unk_243ACAE80);
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

_BYTE **sub_243AB790C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_243AB791C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_243AB793C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_243AB796C()
{
  result = qword_27ED9A858;
  if (!qword_27ED9A858)
  {
    sub_243AC1058();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A858);
  }

  return result;
}

unint64_t sub_243AB79DC()
{
  result = qword_27ED9A868;
  if (!qword_27ED9A868)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ED9A868);
  }

  return result;
}

uint64_t sub_243AB7A78(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_243AB7A8C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_243AB7AA0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_243AB7AE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_243AB7B60@<X0>(void *a1@<X8>)
{
  sub_243A5A78C();
  result = sub_243AC1A38();
  *a1 = v3;
  return result;
}

uint64_t sub_243AB7BB0(id *a1)
{
  v1 = *a1;
  sub_243A5A78C();
  v2 = v1;
  return sub_243AC1A48();
}

uint64_t sub_243AB7C0C@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(v1 + 16) actions];
  sub_243A235B4();
  v4 = sub_243AC2998();

  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_19:

    sub_243AC2858();
    goto LABEL_20;
  }

  result = sub_243AC2DF8();
  if (!result)
  {
    goto LABEL_19;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x245D470F0](0, v4);
LABEL_6:
    v7 = v6;

    v8 = [v7 actionType];

    v9 = sub_243AC2858();
    v11 = v10;

    v12 = sub_243AC2858();
    if (v11)
    {
      if (v12 == v9 && v11 == v13)
      {

LABEL_11:

        sub_243AB7F90(&v22);
LABEL_12:

        sub_243AC1AE8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A870, &qword_243ACAF68);
        sub_243AB87A0();
        sub_243AC1AE8();

LABEL_22:
        v20 = v23;
        v21 = BYTE1(v23);
        *a1 = v22;
        *(a1 + 8) = v20;
        *(a1 + 9) = v21;
        return result;
      }

      v14 = sub_243AC2EE8();

      if (v14)
      {
        goto LABEL_11;
      }

      if (sub_243AC2858() == v9 && v11 == v15)
      {

LABEL_17:
        sub_243AB856C(&v22);
        goto LABEL_12;
      }

      v16 = sub_243AC2EE8();

      if (v16)
      {
        goto LABEL_17;
      }

LABEL_21:
      sub_243AC1A88();
      v22 = sub_243AC1D78();
      v23 = v17;
      v24 = v18 & 1;
      v25 = v19;
      sub_243AC20C8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A870, &qword_243ACAF68);
      sub_243AB87A0();
      result = sub_243AC1AE8();
      goto LABEL_22;
    }

LABEL_20:

    sub_243AC2858();

    goto LABEL_21;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void sub_243AB7F90(uint64_t *a1@<X8>)
{
  v3 = sub_243AC1298();
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_243AC1208();
  MEMORY[0x28223BE20](v6 - 8);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_243AC1638();
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A880, &qword_243ACAF70);
  v47 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A888, &qword_243ACAF78);
  MEMORY[0x28223BE20](v49);
  v14 = &v39 - v13;
  v15 = *(v1 + 16);
  v16 = [v15 actions];
  sub_243A235B4();
  v17 = sub_243AC2998();

  if (!(v17 >> 62))
  {
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!sub_243AC2DF8())
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v17 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x245D470F0](0, v17);
    goto LABEL_6;
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(v17 + 32);
LABEL_6:
    v19 = v18;

    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (v20)
    {
      v21 = v20;
      v41 = *(v1 + 8);
      v42 = a1;
      v22 = *&v41[OBJC_IVAR____TtC21CloudRecommendationUI30RecommendationsLiftUIPresenter_activeRecommendation];
      *&v41[OBJC_IVAR____TtC21CloudRecommendationUI30RecommendationsLiftUIPresenter_activeRecommendation] = v15;

      v23 = [v21 actionURL];
      sub_243AC11D8();

      sub_243AC15F8();
      swift_allocObject();
      v39 = v10;
      sub_243AC15E8();
      v40 = v19;

      sub_243AC1288();
      sub_243AC1278();
      (*(v44 + 8))(v5, v45);
      sub_243AC1628();
      v24 = *(v1 + 40);
      v25 = sub_243AB881C(&qword_27ED9A890, type metadata accessor for CELiftUIDataSource, &protocol conformance descriptor for CELiftUIDataSource);
      v26 = sub_243AB881C(&qword_27ED9A898, MEMORY[0x277D23388], MEMORY[0x277D23378]);
      v27 = v48;
      MEMORY[0x245D461E0](v24, v25, v48, v26);
      (*(v46 + 8))(v9, v27);
      v28 = sub_243A5A84C();
      v50 = v27;
      v51 = v26;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v30 = v39;
      MEMORY[0x245D461F0](v28, v39, OpaqueTypeConformance2);

      (*(v47 + 8))(v12, v30);
      KeyPath = swift_getKeyPath();
      v32 = &v14[*(v49 + 36)];
      v33 = v41;
      *v32 = KeyPath;
      v32[1] = v33;
      sub_243AB88B8();
      v34 = v33;
      a1 = v42;
      v35 = sub_243AC20C8();

LABEL_12:
      *a1 = v35;
      return;
    }

    v15 = v19;
LABEL_11:

    sub_243AC1A88();
    v50 = sub_243AC1D78();
    v51 = v36;
    v52 = v37 & 1;
    v53 = v38;
    v35 = sub_243AC20C8();
    goto LABEL_12;
  }

  __break(1u);
}

void sub_243AB856C(uint64_t *a1@<X8>)
{
  v3 = v1[2];
  v4 = [v3 actions];
  sub_243A235B4();
  v5 = sub_243AC2998();

  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!sub_243AC2DF8())
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x245D470F0](0, v5);
    goto LABEL_6;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v5 + 32);
LABEL_6:
    v7 = v6;

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v8 = *v1;
      v9 = swift_allocObject();
      *(v9 + 16) = v8;
      *(v9 + 24) = v3;
      v10 = swift_allocObject();
      *(v10 + 16) = v8;
      *(v10 + 24) = v3;
      v11 = type metadata accessor for RecommendationFlowControllerRepresentable.FlowControllerDelegate();
      v12 = objc_allocWithZone(v11);
      v13 = &v12[OBJC_IVAR____TtCV21CloudRecommendationUI41RecommendationFlowControllerRepresentable22FlowControllerDelegate_completion];
      *v13 = sub_243AB8A50;
      v13[1] = v9;
      v14 = &v12[OBJC_IVAR____TtCV21CloudRecommendationUI41RecommendationFlowControllerRepresentable22FlowControllerDelegate_cancellation];
      *v14 = sub_243AB8A58;
      v14[1] = v10;
      v17.receiver = v12;
      v17.super_class = v11;
      swift_retain_n();
      v3;
      v15 = v7;
      objc_msgSendSuper2(&v17, sel_init);
      sub_243A71E00();
      v16 = sub_243AC20C8();

LABEL_12:
      *a1 = v16;
      return;
    }

    v3 = v7;
LABEL_11:

    v16 = sub_243AC20C8();
    goto LABEL_12;
  }

  __break(1u);
}

unint64_t sub_243AB87A0()
{
  result = qword_27ED9A878;
  if (!qword_27ED9A878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A870, &qword_243ACAF68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A878);
  }

  return result;
}

uint64_t sub_243AB881C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_243AB8864@<X0>(void *a1@<X8>)
{
  sub_243A5A78C();
  result = sub_243AC1A38();
  *a1 = v3;
  return result;
}

unint64_t sub_243AB88B8()
{
  result = qword_27ED9A8A0;
  if (!qword_27ED9A8A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A888, &qword_243ACAF78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A880, &qword_243ACAF70);
    sub_243AC1638();
    sub_243AB881C(&qword_27ED9A898, MEMORY[0x277D23388], MEMORY[0x277D23378]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_243AB89E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A8A0);
  }

  return result;
}

unint64_t sub_243AB89E8()
{
  result = qword_27ED9A8A8;
  if (!qword_27ED9A8A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A8B0, &qword_243ACAFA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A8A8);
  }

  return result;
}

void sub_243AB8A60(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = [objc_opt_self() defaultStore];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 aa_primaryAppleAccount];

    if (v10)
    {
      sub_243AC15C8();
      swift_allocObject();
      v11 = v10;
      v12 = sub_243AC15B8();
      v13 = type metadata accessor for CELiftUIDataSource();
      v14 = objc_allocWithZone(v13);
      *&v14[OBJC_IVAR____TtC21CloudRecommendationUI18CELiftUIDataSource____lazy_storage___backupDeviceUUID] = xmmword_243AC4E80;
      *&v14[OBJC_IVAR____TtC21CloudRecommendationUI18CELiftUIDataSource_account] = v11;
      v16.receiver = v14;
      v16.super_class = v13;
      v15 = objc_msgSendSuper2(&v16, sel_init);
      *a4 = a1;
      a4[1] = a3;
      a4[2] = a2;
      a4[3] = v11;
      a4[4] = v12;
      a4[5] = v15;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_243AB8B7C()
{
  result = qword_27ED9A8B8;
  if (!qword_27ED9A8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27ED9A8C0, qword_243ACAFB0);
    sub_243AB87A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A8B8);
  }

  return result;
}

unint64_t sub_243AB8C0C(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_243AC2D48();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_243AB9A28(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

id sub_243AB8F0C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_liftUIPresenter;
  v5 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_liftUIPresenter);
  if (v5 || (v6 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_account), v7 = objc_allocWithZone(CELiftUIPresenter), v8 = v6, v9 = sub_243AC11C8(), v10 = [v7 initWithURL:v9 account:v8 data:0], v8, v9, v11 = *(v2 + v4), *(v2 + v4) = v10, v11, (v5 = *(v2 + v4)) != 0))
  {
    [v5 setDelegate_];
  }

  v12 = *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_activeRecommendation);
  *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_activeRecommendation) = a1;
  v13 = a1;

  result = *(v2 + v4);
  if (result)
  {
    v15 = *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_presenter);

    return [result presentInViewController:v15 animated:1];
  }

  return result;
}

void sub_243AB9080(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_activeRecommendation);
  if (v2)
  {
    v3 = a1;
    if (a1)
    {
      v4 = v2;
      sub_243AC2CB8();
      if (*(v3 + 16) && (v5 = sub_243A2DD7C(v34), (v6 & 1) != 0))
      {
        sub_243A20058(*(v3 + 56) + 32 * v5, v35);
        sub_243A1FF9C(v34);
        if (swift_dynamicCast())
        {
          v7 = (0x8000000243ACBE00 >> 56) & 0xF;
          v8 = 16;
          if ((0x8000000243ACBE00 & 0x2000000000000000) != 0)
          {
            v9 = (0x8000000243ACBE00 >> 56) & 0xF;
          }

          else
          {
            v9 = 16;
          }

          if (v9)
          {
            if ((0x8000000243ACBE00 & 0x1000000000000000) != 0)
            {
              v3 = sub_243AB9A28(0xD000000000000010, 0x8000000243ACBE00, 10);
              v29 = v32;
LABEL_54:

              if (v29)
              {
                v3 = 0;
              }

              goto LABEL_56;
            }

            if ((0x8000000243ACBE00 & 0x2000000000000000) != 0)
            {
              v34[0] = 0xD000000000000010;
              v34[1] = 0x8000000243ACBE00 & 0xFFFFFFFFFFFFFFLL;
              if (v7)
              {
                v3 = 0;
                v26 = v34;
                while (1)
                {
                  v27 = *v26 - 48;
                  if (v27 > 9)
                  {
                    break;
                  }

                  v28 = 10 * v3;
                  if ((v3 * 10) >> 64 != (10 * v3) >> 63)
                  {
                    break;
                  }

                  v3 = v28 + v27;
                  if (__OFADD__(v28, v27))
                  {
                    break;
                  }

                  ++v26;
                  if (!--v7)
                  {
LABEL_51:
                    LOBYTE(v10) = 0;
                    goto LABEL_53;
                  }
                }
              }

              goto LABEL_52;
            }

            v10 = ((0x8000000243ACBE00 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v11 = *((0x8000000243ACBE00 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
            if (v11 == 43)
            {
              v20 = 15;
              v3 = 0;
              if ((0x8000000243ACBE00 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
              {
                v21 = ((0x8000000243ACBE00 & 0xFFFFFFFFFFFFFFFLL) + 33);
                while (1)
                {
                  v22 = *v21 - 48;
                  if (v22 > 9)
                  {
                    goto LABEL_52;
                  }

                  v23 = 10 * v3;
                  if ((v3 * 10) >> 64 != (10 * v3) >> 63)
                  {
                    goto LABEL_52;
                  }

                  v3 = v23 + v22;
                  if (__OFADD__(v23, v22))
                  {
                    goto LABEL_52;
                  }

                  ++v21;
                  if (!--v20)
                  {
                    goto LABEL_51;
                  }
                }
              }
            }

            else if (v11 == 45)
            {
              v12 = 15;
              v3 = 0;
              if ((0x8000000243ACBE00 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
              {
                v13 = ((0x8000000243ACBE00 & 0xFFFFFFFFFFFFFFFLL) + 33);
                while (1)
                {
                  v14 = *v13 - 48;
                  if (v14 > 9)
                  {
                    break;
                  }

                  v15 = 10 * v3;
                  if ((v3 * 10) >> 64 != (10 * v3) >> 63)
                  {
                    break;
                  }

                  v3 = v15 - v14;
                  if (__OFSUB__(v15, v14))
                  {
                    break;
                  }

                  ++v13;
                  if (!--v12)
                  {
                    goto LABEL_51;
                  }
                }

LABEL_52:
                v3 = 0;
                LOBYTE(v10) = 1;
              }
            }

            else
            {
              v3 = 0;
              if ((0x8000000243ACBE00 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
              {
                while (1)
                {
                  v24 = *v10 - 48;
                  if (v24 > 9)
                  {
                    goto LABEL_52;
                  }

                  v25 = 10 * v3;
                  if ((v3 * 10) >> 64 != (10 * v3) >> 63)
                  {
                    goto LABEL_52;
                  }

                  v3 = v25 + v24;
                  if (__OFADD__(v25, v24))
                  {
                    goto LABEL_52;
                  }

                  ++v10;
                  if (!--v8)
                  {
                    goto LABEL_51;
                  }
                }
              }
            }

LABEL_53:
            v35[0] = v10;
            v29 = v10;
            goto LABEL_54;
          }
        }
      }

      else
      {
        sub_243A1FF9C(v34);
      }

      v3 = 0;
    }

    else
    {
      v19 = v2;
    }

LABEL_56:
    v30 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_liftUIPresenter);
    *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_liftUIPresenter) = 0;

    v31 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_delegate);
    if (v31)
    {
      LOBYTE(v34[0]) = *(v31 + 136);
      swift_unknownObjectRetain();
      sub_243A3CF58(v2, v3, v34);
      swift_unknownObjectRelease();
    }

    return;
  }

  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v16 = sub_243AC1468();
  __swift_project_value_buffer(v16, qword_27EDA14A8);
  oslog = sub_243AC1448();
  v17 = sub_243AC2B58();
  if (os_log_type_enabled(oslog, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_243A1B000, oslog, v17, "No active recommendation. Bailing.", v18, 2u);
    MEMORY[0x245D47D20](v18, -1, -1);
  }
}

void sub_243AB9690(void *a1)
{
  v3 = OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_remoteUIPresenter;
  if (!*(v1 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_remoteUIPresenter))
  {
    v4 = [objc_allocWithZone(CERemoteUIPresenter) initWithAccount:*(v1 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_account) presenter:*(v1 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_presenter)];
    v5 = *(v1 + v3);
    *(v1 + v3) = v4;
  }

  v6 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_activeRecommendation);
  *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_activeRecommendation) = a1;
  v7 = a1;

  v8 = *(v1 + v3);
  if (v8)
  {
    [v8 setDelegate_];
    v9 = *(v1 + v3);
    if (v9)
    {
      v10 = v9;
      v11 = sub_243AC11C8();
      [v10 beginRUIFlowWithURL_];
    }
  }
}

id sub_243AB98C0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for URLAction();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *sub_243AB99B4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED9A970, &unk_243ACAE80);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_243AB9A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_243AC2938();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_243AB9FB4(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_243AC2D48();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_243AB9FB4(uint64_t a1, unint64_t a2)
{
  v2 = sub_243AC2948();
  v6 = sub_243ABA034(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_243ABA034(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_243AC2C48();
    if (!v9 || (v10 = v9, v11 = sub_243AB99B4(v9, 0), v12 = sub_243ABA18C(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_243AC2898();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_243AC2898();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_243AC2D48();
LABEL_4:

  return sub_243AC2898();
}

unint64_t sub_243ABA18C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_243ABA3AC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_243AC2908();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_243AC2D48();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_243ABA3AC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_243AC28E8();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_243ABA3AC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_243AC2918();
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
    v5 = MEMORY[0x245D46CC0](15, a1 >> 16);
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

void sub_243ABA428(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v3 = sub_243AC1468();
    __swift_project_value_buffer(v3, qword_27EDA14A8);
    v4 = a1;
    v5 = sub_243AC1448();
    v6 = sub_243AC2B58();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136315138;
      swift_getErrorValue();
      v9 = sub_243AC2F58();
      v11 = sub_243AB73D8(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_243A1B000, v5, v6, "Unable to load liftUI view. %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x245D47D20](v8, -1, -1);
      MEMORY[0x245D47D20](v7, -1, -1);
    }

    else
    {
    }
  }
}

void sub_243ABA5DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_activeRecommendation);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_liftUIPresenter);
    *(v0 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_liftUIPresenter) = 0;
    oslog = v1;

    v3 = *(v0 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_delegate);
    if (v3)
    {
      v8 = *(v3 + 136);
      swift_unknownObjectRetain();
      sub_243A3C96C(oslog, &v8);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v4 = sub_243AC1468();
    __swift_project_value_buffer(v4, qword_27EDA14A8);
    oslog = sub_243AC1448();
    v5 = sub_243AC2B58();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_243A1B000, oslog, v5, "No active recommendation. Bailing.", v6, 2u);
      MEMORY[0x245D47D20](v6, -1, -1);
    }
  }
}

void sub_243ABA72C(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_activeRecommendation);
  if (v2)
  {
    if (!a1)
    {
      v17 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_delegate);
      if (v17)
      {
        LOBYTE(v21) = *(v17 + 136);
        v18 = v2;
        swift_unknownObjectRetain();
        sub_243A3CF58(v18, 0, &v21);
        swift_unknownObjectRelease();
      }

      v19 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_remoteUIPresenter);
      *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_remoteUIPresenter) = 0;
      goto LABEL_16;
    }

    v4 = qword_27ED98910;
    v20 = v2;
    if (v4 != -1)
    {
      swift_once();
    }

    v5 = sub_243AC1468();
    __swift_project_value_buffer(v5, qword_27EDA14A8);
    v6 = a1;
    v7 = sub_243AC1448();
    v8 = sub_243AC2B58();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v21 = v10;
      *v9 = 136315138;
      swift_getErrorValue();
      v11 = sub_243AC2F58();
      v13 = sub_243AB73D8(v11, v12, &v21);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_243A1B000, v7, v8, "TurnOnApps flow completed with error %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x245D47D20](v10, -1, -1);
      MEMORY[0x245D47D20](v9, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v14 = sub_243AC1468();
    __swift_project_value_buffer(v14, qword_27EDA14A8);
    v20 = sub_243AC1448();
    v15 = sub_243AC2B58();
    if (os_log_type_enabled(v20, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_243A1B000, v20, v15, "Active recommendation unavailable, bailing.", v16, 2u);
      MEMORY[0x245D47D20](v16, -1, -1);
    }
  }

  v19 = v20;
LABEL_16:
}

void sub_243ABAA04(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_activeRecommendation);
  if (v2)
  {
    if (!a1)
    {
      v17 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_delegate);
      if (v17)
      {
        LOBYTE(v21) = *(v17 + 136);
        v18 = v2;
        swift_unknownObjectRetain();
        sub_243A3C96C(v18, &v21);
        swift_unknownObjectRelease();
      }

      v19 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_remoteUIPresenter);
      *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI9URLAction_remoteUIPresenter) = 0;
      goto LABEL_16;
    }

    v4 = qword_27ED98910;
    v20 = v2;
    if (v4 != -1)
    {
      swift_once();
    }

    v5 = sub_243AC1468();
    __swift_project_value_buffer(v5, qword_27EDA14A8);
    v6 = a1;
    v7 = sub_243AC1448();
    v8 = sub_243AC2B58();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v21 = v10;
      *v9 = 136315138;
      swift_getErrorValue();
      v11 = sub_243AC2F58();
      v13 = sub_243AB73D8(v11, v12, &v21);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_243A1B000, v7, v8, "TurnOnApps flow cancelled with error %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x245D47D20](v10, -1, -1);
      MEMORY[0x245D47D20](v9, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v14 = sub_243AC1468();
    __swift_project_value_buffer(v14, qword_27EDA14A8);
    v20 = sub_243AC1448();
    v15 = sub_243AC2B58();
    if (os_log_type_enabled(v20, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_243A1B000, v20, v15, "Active recommendation unavailable, bailing.", v16, 2u);
      MEMORY[0x245D47D20](v16, -1, -1);
    }
  }

  v19 = v20;
LABEL_16:
}

uint64_t sub_243ABACEC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_243AC1618();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A980, qword_243ACAFE0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_243ABAE30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_243AC1618();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A980, qword_243ACAFE0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for ScaledAsyncImageView(uint64_t a1)
{
  result = qword_27ED9A988;
  if (!qword_27ED9A988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243ABAFAC(uint64_t a1)
{
  sub_243ABB154(319, &qword_27ED99F80, MEMORY[0x277D232D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_243A90E60(319);
    if (v2 <= 0x3F)
    {
      sub_243AC1618();
      if (v3 <= 0x3F)
      {
        sub_243ABB0F0(319);
        if (v4 <= 0x3F)
        {
          sub_243ABB154(319, &qword_27ED9A9A8, MEMORY[0x277D231A8], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_243ABB0F0(uint64_t a1)
{
  if (!qword_27ED9A998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A9A0, &qword_243ACB028);
    v1 = sub_243AC2C38();
    if (!v2)
    {
      atomic_store(v1, &qword_27ED9A998);
    }
  }
}

void sub_243ABB154(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_243ABB1B8(unsigned __int8 a1)
{
  sub_243AC2FB8();
  sub_243AC28A8();

  return sub_243AC2FD8();
}

uint64_t sub_243ABB2BC(uint64_t a1, unsigned __int8 a2)
{
  sub_243AC2FB8();
  sub_243AC28A8();

  return sub_243AC2FD8();
}

uint64_t sub_243ABB3BC@<X0>(uint64_t a1@<X8>)
{
  v89 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A9D0, &qword_243ACB150);
  v75 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v74 = &v69 - v3;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A9D8, &qword_243ACB158);
  MEMORY[0x28223BE20](v76);
  v77 = &v69 - v4;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A9E0, &qword_243ACB160);
  MEMORY[0x28223BE20](v88);
  v78 = (&v69 - v5);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A9E8, &qword_243ACB168);
  v73 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v72 = &v69 - v6;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A9F0, &qword_243ACB170);
  MEMORY[0x28223BE20](v91);
  v93 = &v69 - v7;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A9F8, &qword_243ACB178);
  MEMORY[0x28223BE20](v81);
  v82 = &v69 - v8;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9AA00, &unk_243ACB180);
  MEMORY[0x28223BE20](v92);
  v83 = &v69 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D68, &qword_243AC67E0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v85 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v86 = &v69 - v13;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9AA08, &qword_243ACB190);
  v80 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v79 = &v69 - v14;
  v15 = sub_243AC1478();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v19 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v87 = &v69 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9AA10, &qword_243ACB198);
  v22 = v21 - 8;
  MEMORY[0x28223BE20](v21);
  v24 = &v69 - v23;
  v25 = sub_243ABC258();
  v26 = type metadata accessor for ScaledAsyncImageView(0);
  v27 = *(v1 + *(v26 + 40));
  v28 = *(v22 + 56);
  sub_243A224B4(v1 + *(v26 + 44), &v24[v28], &qword_27ED9A980, qword_243ACAFE0);
  if (v27)
  {
    if ((*(v16 + 48))(&v24[v28], 1, v15) == 1)
    {
      type metadata accessor for UIUtils();

      v29 = v86;
      sub_243A6FDB4(v25, v86);
      v30 = swift_allocObject();
      *(v30 + 16) = v27;
      sub_243A224B4(v29, v85, &qword_27ED98D68, &qword_243AC67E0);
      v31 = swift_allocObject();
      v31[2] = sub_243ABDF18;
      v31[3] = v30;
      v31[4] = nullsub_1;
      v31[5] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9AA58, &qword_243ACB1A8);
      sub_243ABDF84();
      v32 = v72;
      sub_243AC16D8();
      sub_243A2251C(v29, &qword_27ED98D68, &qword_243AC67E0);
      v33 = v73;
      v34 = v84;
      (*(v73 + 16))(v82, v32, v84);
      swift_storeEnumTagMultiPayload();
      sub_243ABD9A4(&qword_27ED9AA18, &qword_27ED9AA08, &qword_243ACB190);
      sub_243ABD9A4(&qword_27ED9AA30, &qword_27ED9A9E8, &qword_243ACB168);
      v35 = v83;
      sub_243AC1AE8();
      sub_243A224B4(v35, v93, &qword_27ED9AA00, &unk_243ACB180);
      swift_storeEnumTagMultiPayload();
      sub_243ABD8E8();
      sub_243ABD9F8();
      sub_243AC1AE8();

      sub_243A2251C(v35, &qword_27ED9AA00, &unk_243ACB180);
      return (*(v33 + 8))(v32, v34);
    }

    v78 = *(v16 + 32);
    v42 = &v24[v28];
    v43 = v87;
    v44 = v15;
    v78(v87, v42, v15);
    type metadata accessor for UIUtils();

    v45 = v86;
    v71 = v25;
    sub_243A6FDB4(v25, v86);
    v46 = swift_allocObject();
    *(v46 + 16) = v27;
    v70 = v16;
    v47 = *(v16 + 16);
    v48 = v44;
    v69 = v44;
    v47(v19, v43, v44);
    v49 = (*(v16 + 80) + 16) & ~*(v16 + 80);
    v50 = swift_allocObject();
    v78((v50 + v49), v19, v48);
    sub_243A224B4(v45, v85, &qword_27ED98D68, &qword_243AC67E0);
    v51 = swift_allocObject();
    v51[2] = sub_243ABE6F4;
    v51[3] = v46;
    v51[4] = sub_243ABE0C8;
    v51[5] = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9AA40, &qword_243ACB1A0);
    sub_243ABDE5C();
    v52 = v79;
    sub_243AC16D8();
    sub_243A2251C(v45, &qword_27ED98D68, &qword_243AC67E0);
    v53 = v80;
    v54 = v90;
    (*(v80 + 16))(v82, v52, v90);
    swift_storeEnumTagMultiPayload();
    sub_243ABD9A4(&qword_27ED9AA18, &qword_27ED9AA08, &qword_243ACB190);
    sub_243ABD9A4(&qword_27ED9AA30, &qword_27ED9A9E8, &qword_243ACB168);
    v55 = v83;
    sub_243AC1AE8();
    sub_243A224B4(v55, v93, &qword_27ED9AA00, &unk_243ACB180);
    swift_storeEnumTagMultiPayload();
    sub_243ABD8E8();
    sub_243ABD9F8();
    sub_243AC1AE8();

    sub_243A2251C(v55, &qword_27ED9AA00, &unk_243ACB180);
    (*(v53 + 8))(v52, v54);
    return (*(v70 + 8))(v87, v69);
  }

  v37 = v2;
  v39 = v74;
  v38 = v75;
  v84 = v37;
  if ((*(v16 + 48))(&v24[v28], 1, v15) != 1)
  {
    v56 = *(v16 + 32);
    v57 = &v24[v28];
    v58 = v87;
    v59 = v15;
    v56(v87, v57, v15);
    type metadata accessor for UIUtils();
    v60 = v86;
    v71 = v25;
    sub_243A6FDB4(v25, v86);
    v70 = v16;
    v61 = *(v16 + 16);
    v69 = v59;
    v61(v19, v58, v59);
    v62 = (*(v16 + 80) + 16) & ~*(v16 + 80);
    v63 = swift_allocObject();
    v56((v63 + v62), v19, v59);
    sub_243A224B4(v60, v85, &qword_27ED98D68, &qword_243AC67E0);
    v64 = swift_allocObject();
    v64[2] = sub_243ABC79C;
    v64[3] = 0;
    v64[4] = sub_243ABE70C;
    v64[5] = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9AA40, &qword_243ACB1A0);
    sub_243ABDE5C();
    v65 = v79;
    sub_243AC16D8();
    sub_243A2251C(v60, &qword_27ED98D68, &qword_243AC67E0);
    v66 = v80;
    v67 = v90;
    (*(v80 + 16))(v77, v65, v90);
    swift_storeEnumTagMultiPayload();
    sub_243ABD9A4(&qword_27ED9AA18, &qword_27ED9AA08, &qword_243ACB190);
    sub_243ABD9A4(&qword_27ED9AA20, &qword_27ED9A9D0, &qword_243ACB150);
    v68 = v78;
    sub_243AC1AE8();
    sub_243A224B4(v68, v93, &qword_27ED9A9E0, &qword_243ACB160);
    swift_storeEnumTagMultiPayload();
    sub_243ABD8E8();
    sub_243ABD9F8();
    sub_243AC1AE8();

    sub_243A2251C(v68, &qword_27ED9A9E0, &qword_243ACB160);
    (*(v66 + 8))(v65, v67);
    return (*(v70 + 8))(v87, v69);
  }

  type metadata accessor for UIUtils();
  sub_243A6FDB4(v25, v86);
  sub_243AC16E8();
  v40 = v84;
  (*(v38 + 16))(v77, v39, v84);
  swift_storeEnumTagMultiPayload();
  sub_243ABD9A4(&qword_27ED9AA18, &qword_27ED9AA08, &qword_243ACB190);
  sub_243ABD9A4(&qword_27ED9AA20, &qword_27ED9A9D0, &qword_243ACB150);
  v41 = v78;
  sub_243AC1AE8();
  sub_243A224B4(v41, v93, &qword_27ED9A9E0, &qword_243ACB160);
  swift_storeEnumTagMultiPayload();
  sub_243ABD8E8();
  sub_243ABD9F8();
  sub_243AC1AE8();

  sub_243A2251C(v41, &qword_27ED9A9E0, &qword_243ACB160);
  return (*(v38 + 8))(v39, v40);
}

id sub_243ABC258()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D68, &qword_243AC67E0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v33 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - v5;
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - v7;
  v9 = sub_243AC1208();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v30 = &v30 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v30 - v16;
  v34 = [objc_allocWithZone(MEMORY[0x277CFB1A0]) init];
  if (*(v0 + 24))
  {
    v35 = type metadata accessor for ScaledAsyncImageView(0);

    v36 = v0;
    sub_243AC1608();
    v31 = v13;

    sub_243AC11E8();

    v18 = *(v10 + 48);
    v19 = v18(v8, 1, v9);
    v32 = v10;
    if (v19 == 1)
    {
      sub_243A2251C(v8, &qword_27ED98D68, &qword_243AC67E0);
    }

    else
    {
      (*(v10 + 32))(v17, v8, v9);
      v20 = sub_243AC11C8();
      [v34 setURL1x_];

      (*(v10 + 8))(v17, v9);
    }

    sub_243AC1608();

    v21 = v34;
    sub_243AC11E8();

    if (v18(v6, 1, v9) == 1)
    {
      sub_243A2251C(v6, &qword_27ED98D68, &qword_243AC67E0);
    }

    else
    {
      v22 = v32;
      v23 = v30;
      (*(v32 + 32))(v30, v6, v9);
      v24 = sub_243AC11C8();
      [v21 setURL2x_];

      (*(v22 + 8))(v23, v9);
    }

    sub_243AC1608();

    v25 = v33;
    sub_243AC11E8();

    if (v18(v25, 1, v9) == 1)
    {
      sub_243A2251C(v25, &qword_27ED98D68, &qword_243AC67E0);
    }

    else
    {
      v27 = v31;
      v26 = v32;
      (*(v32 + 32))(v31, v25, v9);
      v28 = sub_243AC11C8();
      [v21 setURL3x_];

      (*(v26 + 8))(v27, v9);
    }

    return v21;
  }

  else
  {
    sub_243AC15F8();
    sub_243ABE2B8(&qword_27ED99F38, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
    result = sub_243AC18F8();
    __break(1u);
  }

  return result;
}

uint64_t sub_243ABC7B8(uint64_t a1)
{
  sub_243AC28A8();
}

unint64_t sub_243ABC8AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_243ABE6A8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_243ABC8DC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE500000000000000;
  v6 = 0x78336C7275;
  v7 = 0xEB00000000726564;
  v8 = 0x6C6F686563616C70;
  if (v2 != 4)
  {
    v8 = 0x646F4D6567616D69;
    v7 = 0xEE00737265696669;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x78316C7275;
  if (v2 != 1)
  {
    v9 = 0x78326C7275;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_243ABC998()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x78336C7275;
  v4 = 0x6C6F686563616C70;
  if (v1 != 4)
  {
    v4 = 0x646F4D6567616D69;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x78316C7275;
  if (v1 != 1)
  {
    v5 = 0x78326C7275;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_243ABCA50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_243ABE6A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_243ABCA84(uint64_t a1)
{
  v2 = sub_243ABE140();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243ABCAC0(uint64_t a1)
{
  v2 = sub_243ABE140();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243ABCAFC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = sub_243AC1658();
  v4 = *(v3 - 8);
  v63 = v3;
  v64 = v4;
  MEMORY[0x28223BE20](v3);
  v62 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A980, qword_243ACAFE0);
  MEMORY[0x28223BE20](v6 - 8);
  v61 = &v56 - v7;
  v8 = sub_243AC1618();
  v9 = *(v8 - 8);
  v70 = v8;
  v71 = v9;
  v10 = MEMORY[0x28223BE20](v8);
  v65 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v68 = &v56 - v13;
  MEMORY[0x28223BE20](v12);
  v69 = &v56 - v14;
  v15 = sub_243AC1298();
  v66 = *(v15 - 8);
  v67 = v15;
  MEMORY[0x28223BE20](v15);
  v72 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9AA70, &qword_243ACB1B8);
  v73 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v56 - v18;
  v20 = type metadata accessor for ScaledAsyncImageView(0);
  MEMORY[0x28223BE20](v20);
  v22 = (&v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22[2] = MEMORY[0x277D84F90];
  sub_243AC15F8();
  sub_243ABE2B8(&qword_27ED99F38, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
  v23 = sub_243AC1908();
  v22[3] = v23;
  v22[4] = v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243ABE140();
  v25 = v74;
  sub_243AC2FE8();
  if (v25)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v26 = v72;
    v59 = v23;
    v57 = v22;
    v58 = v20;
    v74 = a1;
    LOBYTE(v75) = 0;
    v27 = sub_243AC2E68();
    v29 = v19;
    if (!v28)
    {
      sub_243AC1288();
      v31 = sub_243AC1278();
      v33 = v32;
      (*(v66 + 8))(v26, v67);
      v28 = v33;
      v27 = v31;
    }

    v34 = v58;
    v35 = v57;
    v36 = v70;
    *v57 = v27;
    v35[1] = v28;
    v72 = v28;
    LOBYTE(v75) = 1;
    sub_243ABE2B8(&qword_27ED98AC8, MEMORY[0x277D23340], MEMORY[0x277D23348]);
    v37 = v69;
    sub_243AC2E88();
    v38 = v35 + v34[7];
    v67 = *(v71 + 32);
    v67(v38, v37, v36);
    LOBYTE(v75) = 2;
    v39 = v68;
    v69 = 0;
    sub_243AC2E88();
    v40 = v39;
    v41 = v67;
    v67(v57 + v34[8], v40, v36);
    LOBYTE(v75) = 3;
    sub_243AC2E88();
    v42 = v57;
    v41(v57 + v34[9], v65, v36);
    sub_243AC1478();
    LOBYTE(v75) = 4;
    sub_243ABE2B8(&qword_27ED9AA80, MEMORY[0x277D231A8], MEMORY[0x277D231B0]);
    v43 = v61;
    sub_243AC2E78();
    sub_243ABE194(v43, v42 + v34[11]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9AA88, &qword_243ACB1C0);
    LOBYTE(v75) = 5;
    sub_243ABE204();
    sub_243AC2E78();
    v44 = v42;
    v45 = v77;
    if (v77)
    {
      v46 = *(v77 + 16);
      v47 = v73;
      if (v46)
      {
        v69 = v17;
        v70 = v29;
        v76 = MEMORY[0x277D84F90];
        sub_243A64FD4(0, v46, 0);
        v48 = v76;
        v49 = v63;
        v50 = *(v64 + 16);
        v51 = v45 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
        v71 = *(v64 + 72);
        v72 = v50;
        v52 = (v64 + 8);
        v64 += 16;
        do
        {
          v53 = v62;
          (v72)(v62, v51, v49);
          sub_243AC1648();
          v49 = v63;
          (*v52)(v53, v63);
          v76 = v48;
          v55 = *(v48 + 16);
          v54 = *(v48 + 24);
          if (v55 >= v54 >> 1)
          {
            sub_243A64FD4((v54 > 1), v55 + 1, 1);
            v49 = v63;
            v48 = v76;
          }

          *(v48 + 16) = v55 + 1;
          sub_243A71060(&v75, v48 + 40 * v55 + 32);
          v51 += v71;
          --v46;
        }

        while (v46);
        (*(v73 + 8))(v70, v69);

        v44 = v57;
      }

      else
      {

        (*(v47 + 8))(v29, v17);
        v48 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      (*(v73 + 8))(v29, v17);
      v48 = 0;
    }

    *(v44 + v58[10]) = v48;
    sub_243ABE300(v44, v60);
    __swift_destroy_boxed_opaque_existential_1(v74);
    return sub_243ABE364(v44);
  }
}

uint64_t sub_243ABD568(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_243ABD5EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_243ABE2B8(&qword_27ED9A9B0, type metadata accessor for ScaledAsyncImageView, &unk_243ACB0B8);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_243ABD668(uint64_t a1)
{
  v2 = sub_243ABE2B8(&qword_27ED9A9B0, type metadata accessor for ScaledAsyncImageView, &unk_243ACB0B8);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_243ABD6E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_243ABE2B8(&qword_27ED9A9C8, type metadata accessor for ScaledAsyncImageView, &unk_243ACB080);

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_243ABD7A0(uint64_t a1, uint64_t a2)
{
  sub_243ABE2B8(&qword_27ED9A9B0, type metadata accessor for ScaledAsyncImageView, &unk_243ACB0B8);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_243ABD8E8()
{
  result = qword_27ED9AA28;
  if (!qword_27ED9AA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9AA00, &unk_243ACB180);
    sub_243ABD9A4(&qword_27ED9AA18, &qword_27ED9AA08, &qword_243ACB190);
    sub_243ABD9A4(&qword_27ED9AA30, &qword_27ED9A9E8, &qword_243ACB168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9AA28);
  }

  return result;
}

uint64_t sub_243ABD9A4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_243ABD9F8()
{
  result = qword_27ED9AA38;
  if (!qword_27ED9AA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A9E0, &qword_243ACB160);
    sub_243ABD9A4(&qword_27ED9AA18, &qword_27ED9AA08, &qword_243ACB190);
    sub_243ABD9A4(&qword_27ED9AA20, &qword_27ED9A9D0, &qword_243ACB150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9AA38);
  }

  return result;
}

uint64_t sub_243ABDAB8(uint64_t a1, void (*a2)(uint64_t *__return_ptr), uint64_t a3, void (*a4)(void))
{
  if (sub_243AC1868())
  {
    a2(&v7);
    swift_retain_n();
    sub_243AC1AE8();
  }

  else
  {
    a4();
    sub_243AC1AE8();
  }

  return v7;
}

uint64_t sub_243ABDBC4@<X0>(void (*a1)(uint64_t *__return_ptr)@<X1>, void (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v13 = a3;
  v5 = sub_243AC1478();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9AA68, &qword_243ACB1B0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v13 - v10);
  if (sub_243AC1868())
  {
    a1(&v14);
    *v11 = v14;
    swift_storeEnumTagMultiPayload();
    sub_243ABE2B8(&qword_27ED9AA50, MEMORY[0x277D231A8], MEMORY[0x277D231A0]);
    swift_retain_n();
    sub_243AC1AE8();
  }

  else
  {
    a2(0);
    (*(v6 + 16))(v11, v8, v5);
    swift_storeEnumTagMultiPayload();
    sub_243ABE2B8(&qword_27ED9AA50, MEMORY[0x277D231A8], MEMORY[0x277D231A0]);
    sub_243AC1AE8();
    return (*(v6 + 8))(v8, v5);
  }
}

unint64_t sub_243ABDE5C()
{
  result = qword_27ED9AA48;
  if (!qword_27ED9AA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9AA40, &qword_243ACB1A0);
    sub_243ABE2B8(&qword_27ED9AA50, MEMORY[0x277D231A8], MEMORY[0x277D231A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9AA48);
  }

  return result;
}

uint64_t sub_243ABDF18@<X0>(uint64_t *a2@<X8>)
{
  result = sub_243AC1FF8();
  *a2 = result;
  return result;
}

uint64_t sub_243ABDF4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_243ABDAB8(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32));
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

unint64_t sub_243ABDF84()
{
  result = qword_27ED9AA60;
  if (!qword_27ED9AA60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9AA58, &qword_243ACB1A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9AA60);
  }

  return result;
}

uint64_t sub_243ABE008()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroyTm_12()
{
  v1 = sub_243AC1478();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_243ABE0CC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_243AC1478();
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

unint64_t sub_243ABE140()
{
  result = qword_27ED9AA78;
  if (!qword_27ED9AA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9AA78);
  }

  return result;
}

uint64_t sub_243ABE194(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A980, qword_243ACAFE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_243ABE204()
{
  result = qword_27ED9AA90;
  if (!qword_27ED9AA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9AA88, &qword_243ACB1C0);
    sub_243ABE2B8(&qword_27ED9AA98, MEMORY[0x277D23390], MEMORY[0x277D23398]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9AA90);
  }

  return result;
}

uint64_t sub_243ABE2B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_243ABE300(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScaledAsyncImageView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243ABE364(uint64_t a1)
{
  v2 = type metadata accessor for ScaledAsyncImageView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for ScaledAsyncImageView.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ScaledAsyncImageView.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_243ABE514()
{
  result = qword_27ED9AAA0;
  if (!qword_27ED9AAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9AAA8, &qword_243ACB1D8);
    sub_243ABD8E8();
    sub_243ABD9F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9AAA0);
  }

  return result;
}

unint64_t sub_243ABE5A4()
{
  result = qword_27ED9AAB0;
  if (!qword_27ED9AAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9AAB0);
  }

  return result;
}

unint64_t sub_243ABE5FC()
{
  result = qword_27ED9AAB8;
  if (!qword_27ED9AAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9AAB8);
  }

  return result;
}

unint64_t sub_243ABE654()
{
  result = qword_27ED9AAC0;
  if (!qword_27ED9AAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9AAC0);
  }

  return result;
}

unint64_t sub_243ABE6A8(uint64_t a1, uint64_t a2)
{
  v2 = sub_243AC2E58();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_243ABE710(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C10, &qword_243AC4C60);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_243ABE7FC()
{
  v1 = [objc_opt_self() sharedInstance];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  v3 = [v1 primaryAccountAltDSID];

  if (!v3)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x282200938](v1);
  }

  v4 = [objc_allocWithZone(MEMORY[0x277CFDAE8]) initWithAltDSID_];
  v0[23] = v4;

  [v4 setDeviceToDeviceEncryptionUpgradeUIStyle_];
  [v4 setDeviceToDeviceEncryptionUpgradeType_];
  v5 = sub_243AC2818();
  [v4 setFeatureName_];

  Strong = swift_unknownObjectWeakLoadStrong();
  [v4 setPresentingViewController_];

  v7 = [objc_allocWithZone(MEMORY[0x277CFDAF0]) initWithContext_];
  v0[24] = v7;
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_243ABEA44;
  v8 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99AB8, qword_243AC83F0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_243ABE710;
  v0[13] = &block_descriptor_16;
  v0[14] = v8;
  [v7 performDeviceToDeviceEncryptionStateRepairWithCompletion_];
  v1 = v0 + 2;

  return MEMORY[0x282200938](v1);
}

uint64_t sub_243ABEA44()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_243ABEBBC;
  }

  else
  {
    v2 = sub_243ABEB54;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_243ABEB54()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 208);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_243ABEBBC(uint64_t a1)
{
  v19 = v1;
  swift_willThrow();
  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v2 = v1[25];
  v3 = sub_243AC1468();
  __swift_project_value_buffer(v3, qword_27EDA14A8);
  v4 = v2;
  v5 = sub_243AC1448();
  v6 = sub_243AC2B58();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v1[24];
  v8 = v1[25];
  v10 = v1[23];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = sub_243AC2F58();
    v15 = sub_243AB73D8(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_243A1B000, v5, v6, "Unable to complete CDP repair flow. %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x245D47D20](v12, -1, -1);
    MEMORY[0x245D47D20](v11, -1, -1);
  }

  else
  {
  }

  v16 = v1[1];

  return v16(0);
}

uint64_t sub_243ABEDA4()
{
  MEMORY[0x245D47DE0](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for DelayedSpinner(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DelayedSpinner(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_243ABEED8@<X0>(void *a1@<X8>)
{
  if (*v1 == 1)
  {
    v3 = *(v1 + 8);
    result = sub_243AC2058();
    v5 = v7;
    v6 = v8;
  }

  else
  {
    v5 = 0;
    v3 = 0;
    v6 = 1;
  }

  *a1 = v5;
  a1[1] = v6;
  a1[2] = v3;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_243ABEF5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_243ABEFB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_243ABF020()
{
  result = qword_27ED9AAC8;
  if (!qword_27ED9AAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9AAD0, &qword_243ACB458);
    sub_243ABF0A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9AAC8);
  }

  return result;
}

unint64_t sub_243ABF0A4()
{
  result = qword_27ED9AAD8;
  if (!qword_27ED9AAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9AAD8);
  }

  return result;
}

uint64_t sub_243ABF114@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99420, &qword_243AC67F0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9AAE0, &unk_243ACB4B8);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v20[-v14];
  sub_243AC1778();
  v20[16] = a1;
  v21 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99D28, &qword_243AC8810);
  sub_243AC2068();
  if (v20[15])
  {
    v16 = 1.0;
  }

  else
  {
    v16 = 0.0;
  }

  (*(v9 + 32))(v15, v11, v8);
  *&v15[*(v13 + 44)] = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a4;
  v18 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9AAE8, &unk_243ACB4D8) + 36));
  sub_243AC17E8();

  sub_243AC2A78();
  *v18 = &unk_243ACB4D0;
  v18[1] = v17;
  return sub_243ABFC80(v15, a3);
}

uint64_t sub_243ABF324(char a1, uint64_t a2, double a3)
{
  *(v3 + 24) = a3;
  *(v3 + 16) = a2;
  *(v3 + 56) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  *(v3 + 32) = swift_task_alloc();
  *(v3 + 40) = sub_243AC2A58();
  *(v3 + 48) = sub_243AC2A48();
  v5 = sub_243AC2A28();

  return MEMORY[0x2822009F8](sub_243ABF400, v5, v4);
}

uint64_t sub_243ABF400()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 24);
  v3 = *(v0 + 16);
  v4 = *(v0 + 56);

  v5 = sub_243AC2A98();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);

  v6 = sub_243AC2A48();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  *(v7 + 16) = v6;
  *(v7 + 24) = v8;
  *(v7 + 32) = v4;
  *(v7 + 40) = v3;
  *(v7 + 48) = v2;
  sub_243A30B68(0, 0, v1, &unk_243ACB4F0, v7);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_243ABF530(double a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 64) = a1;
  *(v6 + 56) = a6;
  *(v6 + 34) = a5;
  v7 = sub_243AC2DD8();
  *(v6 + 72) = v7;
  *(v6 + 80) = *(v7 - 8);
  *(v6 + 88) = swift_task_alloc();
  v8 = sub_243AC2DC8();
  *(v6 + 96) = v8;
  *(v6 + 104) = *(v8 - 8);
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();
  sub_243AC2A58();
  *(v6 + 128) = sub_243AC2A48();
  v10 = sub_243AC2A28();
  *(v6 + 136) = v10;
  *(v6 + 144) = v9;

  return MEMORY[0x2822009F8](sub_243ABF694, v10, v9);
}

uint64_t sub_243ABF694()
{
  *(v0 + 40) = *(v0 + 34);
  *(v0 + 48) = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99D28, &qword_243AC8810);
  sub_243AC2068();
  if (*(v0 + 33) == 1)
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 112);
    v4 = *(v0 + 96);
    v5 = *(v0 + 104);
    sub_243AC2DA8();
    sub_243AC2FF8();
    sub_243AC2DB8();
    v6 = *(v5 + 8);
    *(v0 + 152) = v6;
    *(v0 + 160) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v6(v3, v4);
    *(v0 + 24) = 0;
    *(v0 + 16) = 0;
    *(v0 + 32) = 1;
    sub_243AC2F48();
    v7 = swift_task_alloc();
    *(v0 + 168) = v7;
    v8 = sub_243AC001C(&qword_27ED9AAF0, MEMORY[0x277D85928], MEMORY[0x277D85930]);
    *v7 = v0;
    v7[1] = sub_243ABF88C;
    v9 = *(v0 + 120);
    v10 = *(v0 + 88);
    v11 = *(v0 + 72);

    return MEMORY[0x282200488](v9, v0 + 16, v10, v11, v8);
  }
}

uint64_t sub_243ABF88C()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = v2[19];
  if (v0)
  {
    v4 = v2[15];
    v5 = v2[12];
    (*(v2[10] + 8))(v2[11], v2[9]);
    v3(v4, v5);
    v6 = v2[17];
    v7 = v2[18];
    v8 = sub_243ABFB00;
  }

  else
  {
    v9 = v2[15];
    v10 = v2[12];
    (*(v2[10] + 8))(v2[11], v2[9]);
    v3(v9, v10);
    v6 = v2[17];
    v7 = v2[18];
    v8 = sub_243ABFA08;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_243ABFA08()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(v0 + 34);

  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *(v4 + 32) = v1;
  sub_243AC2168();
  sub_243AC17F8();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_243ABFB00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_243ABFB9C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_243ABFBD4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_243A1FEA8;

  return sub_243ABF324(v2, v3, v4);
}

uint64_t sub_243ABFC80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9AAE0, &unk_243ACB4B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243ABFCF0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_243ABFD30(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_243A1FEA8;

  return sub_243ABF530(v8, a1, v4, v5, v6, v7);
}

unint64_t sub_243ABFE70()
{
  result = qword_27ED9AAF8;
  if (!qword_27ED9AAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9AAE8, &unk_243ACB4D8);
    sub_243ABFF2C();
    sub_243AC001C(&qword_27ED9A220, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9AAF8);
  }

  return result;
}

unint64_t sub_243ABFF2C()
{
  result = qword_27ED9AB00;
  if (!qword_27ED9AB00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9AAE0, &unk_243ACB4B8);
    sub_243ABFFB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9AB00);
  }

  return result;
}

unint64_t sub_243ABFFB8()
{
  result = qword_27ED99450;
  if (!qword_27ED99450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99420, &qword_243AC67F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99450);
  }

  return result;
}

uint64_t sub_243AC001C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_243AC0088(void *a1, void *a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI16AppInstallAction_activeRecommendation);
  *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI16AppInstallAction_activeRecommendation) = a1;

  v6 = objc_allocWithZone(MEMORY[0x277CCABB8]);
  v7 = a1;
  v8 = [v6 init];
  v9 = [a2 appStoreID];
  if (!v9)
  {
    sub_243AC2858();
    v9 = sub_243AC2818();
  }

  v10 = [v8 numberFromString_];

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED9AC00, &qword_243AC6BD8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_243AC4AC0;
    *(inited + 32) = sub_243AC2858();
    *(inited + 40) = v12;
    *(inited + 72) = sub_243A5F5C8();
    *(inited + 48) = v10;
    *(inited + 80) = sub_243AC2858();
    *(inited + 88) = v13;
    v14 = MEMORY[0x277D837D0];
    *(inited + 120) = MEMORY[0x277D837D0];
    *(inited + 96) = 0x7966722E736369;
    *(inited + 104) = 0xE700000000000000;
    *(inited + 128) = sub_243AC2858();
    *(inited + 136) = v15;
    *(inited + 168) = v14;
    *(inited + 144) = 858796082;
    *(inited + 152) = 0xE400000000000000;
    v16 = v10;
    sub_243A2E2B4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED9AC10, &qword_243AC4E00);
    swift_arrayDestroy();
    v17 = *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI16AppInstallAction_storeProductViewController);
    [v17 setDelegate_];
    [v17 setShowsStoreButton_];
    v18 = sub_243AC27C8();

    v19 = swift_allocObject();
    *(v19 + 16) = v7;
    aBlock[4] = sub_243AC0EFC;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AB35B4;
    aBlock[3] = &block_descriptor_17;
    v20 = _Block_copy(aBlock);
    v21 = v7;

    [v17 loadProductWithParameters:v18 completionBlock:v20];
    _Block_release(v20);

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v23 = Strong;
      [Strong presentViewController:v17 animated:1 completion:0];
    }
  }

  else
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v24 = sub_243AC1468();
    __swift_project_value_buffer(v24, qword_27EDA14A8);
    oslog = sub_243AC1448();
    v25 = sub_243AC2B58();
    if (os_log_type_enabled(oslog, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_243A1B000, oslog, v25, "Unable to obtain App Store ID from action. Bailing.", v26, 2u);
      MEMORY[0x245D47D20](v26, -1, -1);
    }
  }
}

void sub_243AC0490(int a1, NSObject *a2, void *a3)
{
  if (a2)
  {
    v4 = a2;
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v5 = sub_243AC1468();
    __swift_project_value_buffer(v5, qword_27EDA14A8);
    v6 = a2;
    v7 = sub_243AC1448();
    v8 = sub_243AC2B58();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v27 = v10;
      *v9 = 136315394;
      *(v9 + 4) = sub_243AB73D8(0xD00000000000001ELL, 0x8000000243ACEA80, &v27);
      *(v9 + 12) = 2080;
      swift_getErrorValue();
      v11 = sub_243AC2F58();
      v13 = sub_243AB73D8(v11, v12, &v27);

      *(v9 + 14) = v13;
      _os_log_impl(&dword_243A1B000, v7, v8, "%s Unable to load appstore view %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D47D20](v10, -1, -1);
      MEMORY[0x245D47D20](v9, -1, -1);

      return;
    }

    v25 = a2;
  }

  else
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v15 = sub_243AC1468();
    __swift_project_value_buffer(v15, qword_27EDA14A8);
    v16 = a3;
    oslog = sub_243AC1448();
    v17 = sub_243AC2B48();

    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v27 = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_243AB73D8(0xD00000000000001ELL, 0x8000000243ACEA80, &v27);
      *(v18 + 12) = 2080;
      v20 = [v16 bundleID];
      v21 = sub_243AC2858();
      v23 = v22;

      v24 = sub_243AB73D8(v21, v23, &v27);

      *(v18 + 14) = v24;
      _os_log_impl(&dword_243A1B000, oslog, v17, "%s Presenting produc page fro app %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D47D20](v19, -1, -1);
      MEMORY[0x245D47D20](v18, -1, -1);

      return;
    }

    v25 = oslog;
  }
}

id AppInstallAction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppInstallAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_243AC09D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC21CloudRecommendationUI16AppInstallAction_activeRecommendation] = 0;
  v8 = &v4[OBJC_IVAR____TtC21CloudRecommendationUI16AppInstallAction_delegate];
  *&v4[OBJC_IVAR____TtC21CloudRecommendationUI16AppInstallAction_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *&v4[OBJC_IVAR____TtC21CloudRecommendationUI16AppInstallAction_controller] = a2;
  v9 = objc_allocWithZone(MEMORY[0x277CDD3A8]);

  v10 = [v9 init];
  *&v4[OBJC_IVAR____TtC21CloudRecommendationUI16AppInstallAction_storeProductViewController] = v10;
  *(v8 + 1) = a4;
  swift_unknownObjectWeakAssign();
  v12.receiver = v4;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

void _s21CloudRecommendationUI16AppInstallActionC21productViewController_13didFinishWithySo014SKStoreProducthI0CSg_So19SKProductPageResultVtF_0()
{
  v1 = *(v0 + OBJC_IVAR____TtC21CloudRecommendationUI16AppInstallAction_activeRecommendation);
  if (!v1)
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v13 = sub_243AC1468();
    __swift_project_value_buffer(v13, qword_27EDA14A8);
    v18 = sub_243AC1448();
    v14 = sub_243AC2B58();
    if (os_log_type_enabled(v18, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v19 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_243AB73D8(0xD00000000000001FLL, 0x8000000243ACEAA0, &v19);
      _os_log_impl(&dword_243A1B000, v18, v14, "%s Unable to get active recommendation. Bailing.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x245D47D20](v16, -1, -1);
      MEMORY[0x245D47D20](v15, -1, -1);
LABEL_19:

      return;
    }

    goto LABEL_20;
  }

  v2 = *(v0 + OBJC_IVAR____TtC21CloudRecommendationUI16AppInstallAction_storeProductViewController);
  v18 = v1;
  [v2 setDelegate_];
  v3 = [objc_opt_self() defaultWorkspace];
  if (v3)
  {
    v4 = v3;
    v5 = [v18 bundleID];
    if (!v5)
    {
      sub_243AC2858();
      v5 = sub_243AC2818();
    }

    v6 = [v4 applicationIsInstalled_];

    if (v6)
    {
      if (qword_27ED98910 != -1)
      {
        swift_once();
      }

      v7 = sub_243AC1468();
      __swift_project_value_buffer(v7, qword_27EDA14A8);
      v8 = sub_243AC1448();
      v9 = sub_243AC2B58();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v19 = v11;
        *v10 = 136315138;
        *(v10 + 4) = sub_243AB73D8(0xD00000000000001FLL, 0x8000000243ACEAA0, &v19);
        _os_log_impl(&dword_243A1B000, v8, v9, "%s App installed.", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v11);
        MEMORY[0x245D47D20](v11, -1, -1);
        MEMORY[0x245D47D20](v10, -1, -1);
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        LOBYTE(v19) = *(Strong + 136);
        sub_243A3CF58(v18, 0, &v19);
LABEL_18:
        swift_unknownObjectRelease();
        goto LABEL_19;
      }
    }

    else
    {
      v17 = swift_unknownObjectWeakLoadStrong();
      if (v17)
      {
        LOBYTE(v19) = *(v17 + 136);
        sub_243A3C96C(v18, &v19);
        goto LABEL_18;
      }
    }

LABEL_20:

    goto LABEL_19;
  }

  __break(1u);
}

uint64_t sub_243AC0EC4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}