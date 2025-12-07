uint64_t sub_24AD0E16C()
{
  v1 = v0[11];
  v2 = v0[9];
  *(v1 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCache) = v0[40];
  v3 = sub_24AD348CC(v2);

  *(v1 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_databases) = v3;

  return MEMORY[0x2822009F8](sub_24AD0E20C, v1, 0);
}

uint64_t sub_24AD0E20C()
{
  v1 = v0[13];
  v2 = v0[12];
  v3 = v0[2];
  swift_unknownObjectRelease();
  (*(v1 + 8))(v3, v2);

  v4 = v0[1];
  v5 = v0[11];

  return v4(v5);
}

uint64_t sub_24AD0E2E8()
{
  v9 = v0[35];
  v10 = v0[37];
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[19];
  v4 = v0[18];
  v5 = v0[11];
  v11 = v0[12];
  v12 = v0[2];
  v6 = *(v0[13] + 8);
  v6(v5 + v0[27]);

  (*(v2 + 8))(v5 + v9, v1);
  (*(v3 + 8))(v5 + v10, v4);
  swift_unknownObjectRelease();

  type metadata accessor for CloudKitStorage(0);
  swift_defaultActor_destroy();
  swift_unknownObjectRelease();
  (v6)(v12, v11);
  swift_deallocPartialClassInstance();

  v7 = v0[1];

  return v7();
}

uint64_t sub_24AD0E4CC()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60A8, &qword_24AD60380);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD0E568, v0, 0);
}

uint64_t sub_24AD0E568()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_24AD5E964();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = sub_24AD34F14(&qword_281064D10, type metadata accessor for CloudKitStorage, &protocol conformance descriptor for CloudKitStorage);
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = v4;
  v5[4] = v1;
  swift_retain_n();
  sub_24AD0E738(0, 0, v2, &unk_24AD60390, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_24AD0E6A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AD0C360;

  return sub_24AD0E9E4();
}

uint64_t sub_24AD0E738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60A8, &qword_24AD60380);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_24AD38B48(a3, v22 - v9, &qword_27EFA60A8, &qword_24AD60380);
  v11 = sub_24AD5E964();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_24AD06518(v10, &qword_27EFA60A8, &qword_24AD60380);
  }

  else
  {
    sub_24AD5E954();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_24AD5E924();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_24AD5E864() + 32;

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

      sub_24AD06518(a3, &qword_27EFA60A8, &qword_24AD60380);

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

  sub_24AD06518(a3, &qword_27EFA60A8, &qword_24AD60380);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_24AD0E9E4()
{
  v1[283] = v0;
  v2 = sub_24AD5E624();
  v1[284] = v2;
  v1[285] = *(v2 - 8);
  v1[286] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60B0, &qword_24AD603A0);
  v1[287] = swift_task_alloc();
  v3 = sub_24AD5E404();
  v1[288] = v3;
  v1[289] = *(v3 - 8);
  v1[290] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60B8, &qword_24AD603A8);
  v1[291] = v4;
  v1[292] = *(v4 - 8);
  v1[293] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD0EBA0, v0, 0);
}

uint64_t sub_24AD0EBA0()
{
  v41 = v0;
  if (qword_281064D70 != -1)
  {
LABEL_29:
    swift_once();
  }

  v1 = *(v0 + 2344);
  v2 = *(v0 + 2336);
  v3 = *(v0 + 2328);
  v4 = __swift_project_value_buffer(v3, qword_281064D78);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  sub_24AD5E124();
  (*(v2 + 8))(v1, v3);
  v5 = *(v0 + 2168);
  if (!v5)
  {
    goto LABEL_21;
  }

  v38 = *(v5 + 16);
  if (!v38)
  {

LABEL_21:
    v29 = *(v0 + 2264);
    v30 = swift_task_alloc();
    *(v0 + 2384) = v30;
    *(v30 + 16) = &unk_24AD603B8;
    *(v30 + 24) = v29;

    swift_asyncLet_begin();
    v31 = swift_task_alloc();
    *(v0 + 2392) = v31;
    *(v31 + 16) = &unk_24AD603D8;
    *(v31 + 24) = v29;

    swift_asyncLet_begin();
    v32 = swift_task_alloc();
    *(v0 + 2400) = v32;
    *(v32 + 16) = &unk_24AD603F0;
    *(v32 + 24) = v29;

    swift_asyncLet_begin();

    return MEMORY[0x282200928](v0 + 16);
  }

  if (qword_27EFA5E60 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 2312);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C0, &qword_24AD60400);
  __swift_project_value_buffer(v7, qword_27EFA6070);
  *(v0 + 2408) = 1;
  swift_beginAccess();
  sub_24AD5E134();
  swift_endAccess();
  *(v0 + 2216) = 0;
  swift_beginAccess();
  sub_24AD5E134();
  swift_endAccess();
  v8 = 0;
  v9 = (v6 + 48);
  v36 = v6;
  v37 = (v6 + 32);
  v10 = v5 + 40;
  v11 = MEMORY[0x277D84F90];
  do
  {
    if (v8 >= *(v5 + 16))
    {
      __break(1u);
      goto LABEL_29;
    }

    v12 = *(v0 + 2304);
    v13 = *(v0 + 2296);

    sub_24AD5E3D4();

    if ((*v9)(v13, 1, v12) == 1)
    {
      sub_24AD06518(*(v0 + 2296), &qword_27EFA60B0, &qword_24AD603A0);
    }

    else
    {
      v14 = *v37;
      (*v37)(*(v0 + 2320), *(v0 + 2296), *(v0 + 2304));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_24AD2E948(0, *(v11 + 2) + 1, 1, v11, &qword_27EFA6210, &qword_24AD60928, MEMORY[0x277CC95F0]);
      }

      v16 = *(v11 + 2);
      v15 = *(v11 + 3);
      if (v16 >= v15 >> 1)
      {
        v11 = sub_24AD2E948((v15 > 1), v16 + 1, 1, v11, &qword_27EFA6210, &qword_24AD60928, MEMORY[0x277CC95F0]);
      }

      v17 = *(v0 + 2320);
      v18 = *(v0 + 2304);
      *(v11 + 2) = v16 + 1;
      v14(&v11[((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v16], v17, v18);
    }

    ++v8;
    v10 += 16;
  }

  while (v38 != v8);

  if (qword_281064D90 != -1)
  {
    swift_once();
  }

  v19 = sub_24AD5E7A4();
  __swift_project_value_buffer(v19, qword_281065448);

  v20 = sub_24AD5E784();
  v21 = sub_24AD5EB44();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = *(v0 + 2304);
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v40 = v24;
    *v23 = 136446210;
    v25 = MEMORY[0x24C22E5C0](v11, v22);
    v27 = v26;

    v28 = sub_24AD2EDAC(v25, v27, &v40);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_24ACF2000, v20, v21, "Previous launch crashed with outstanding changeSets: %{public}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x24C22F400](v24, -1, -1);
    MEMORY[0x24C22F400](v23, -1, -1);
  }

  else
  {
  }

  *(v0 + 2352) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C8, &qword_24AD61260);
  *(v0 + 2409) = 5;
  *(v0 + 2360) = sub_24AD5E604();
  v39 = (*MEMORY[0x277D08A88] + MEMORY[0x277D08A88]);
  v33 = swift_task_alloc();
  *(v0 + 2368) = v33;
  *v33 = v0;
  v33[1] = sub_24AD0F278;
  v34 = *(v0 + 2264);

  return v39(&unk_24AD60410, v34);
}

uint64_t sub_24AD0F278()
{
  v2 = *v1;
  *(*v1 + 2376) = v0;

  if (v0)
  {
    v3 = *(v2 + 2264);
    v4 = sub_24AD0F92C;
    v5 = 0;
  }

  else
  {
    sub_24AD34D38();
    v6 = sub_24AD5E924();
    v8 = v7;
    v4 = sub_24AD0F3B8;
    v3 = v6;
    v5 = v8;
  }

  return MEMORY[0x2822009F8](v4, v3, v5);
}

uint64_t sub_24AD0F3B8()
{
  v1 = *(v0 + 2264);
  sub_24AD5E5D4();

  return MEMORY[0x2822009F8](sub_24AD0F428, v1, 0);
}

uint64_t sub_24AD0F428()
{
  v1 = v0[286];
  v2 = v0[285];
  v3 = v0[284];
  sub_24AD5E634();

  (*(v2 + 8))(v1, v3);
  v4 = v0[283];
  v5 = swift_task_alloc();
  v0[298] = v5;
  *(v5 + 16) = &unk_24AD603B8;
  *(v5 + 24) = v4;

  swift_asyncLet_begin();
  v6 = swift_task_alloc();
  v0[299] = v6;
  *(v6 + 16) = &unk_24AD603D8;
  *(v6 + 24) = v4;

  swift_asyncLet_begin();
  v7 = swift_task_alloc();
  v0[300] = v7;
  *(v7 + 16) = &unk_24AD603F0;
  *(v7 + 24) = v4;

  swift_asyncLet_begin();

  return MEMORY[0x282200928](v0 + 2);
}

uint64_t sub_24AD0F624()
{
  if (qword_281064D90 != -1)
  {
    swift_once();
  }

  v1 = sub_24AD5E7A4();
  __swift_project_value_buffer(v1, qword_281065448);
  v2 = sub_24AD5E784();
  v3 = sub_24AD5EB44();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24ACF2000, v2, v3, "CloudKitStorage.run() is not expected to terminate", v4, 2u);
    MEMORY[0x24C22F400](v4, -1, -1);
  }

  return MEMORY[0x282200920](v0 + 1296);
}

uint64_t sub_24AD0F75C()
{

  return MEMORY[0x282200920](v0 + 656);
}

uint64_t sub_24AD0F7EC()
{

  return MEMORY[0x282200920](v0 + 16);
}

uint64_t sub_24AD0F87C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD0F92C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD0F9E8()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6208, &qword_24AD60920);
  v2 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6170, &qword_24AD61280) - 8);
  v3 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24AD5F820;
  v5 = (v4 + v3);
  v6 = &v5[v2[14]];
  *v5 = 0;
  v8 = *(v1 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_containerIdentifier);
  v7 = *(v1 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_containerIdentifier + 8);
  v6[3] = MEMORY[0x277D837D0];
  v6[4] = sub_24AD388E4();
  *v6 = v8;
  v6[1] = v7;
  v9 = *MEMORY[0x277D08AB8];
  v10 = sub_24AD5E644();
  (*(*(v10 - 8) + 104))(v6, v9, v10);
  v11 = *MEMORY[0x277D08AC8];
  v12 = sub_24AD5E654();
  (*(*(v12 - 8) + 104))(v6, v11, v12);

  v13 = sub_24AD342C4(v4);
  swift_setDeallocating();
  sub_24AD06518(v5, &qword_27EFA6170, &qword_24AD61280);
  swift_deallocClassInstance();
  v14 = *(v0 + 8);

  return v14(v13);
}

uint64_t sub_24AD0FC08()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AD0C360;

  return sub_24AD0FC98();
}

uint64_t sub_24AD0FC98()
{
  v1[7] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6248, &qword_24AD609C0);
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD0FD64, v0, 0);
}

uint64_t sub_24AD0FD64()
{
  if (qword_281064D90 != -1)
  {
    swift_once();
  }

  v1 = sub_24AD5E7A4();
  v0[11] = __swift_project_value_buffer(v1, qword_281065448);
  v2 = sub_24AD5E784();
  v3 = sub_24AD5EB64();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24ACF2000, v2, v3, "Monitoring CloudKit AccountState stream", v4, 2u);
    MEMORY[0x24C22F400](v4, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60A0, &qword_24AD60368);
  sub_24AD5E994();
  v5 = sub_24AD34F14(&qword_281064D10, type metadata accessor for CloudKitStorage, &protocol conformance descriptor for CloudKitStorage);
  v6 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_state;
  v0[12] = v5;
  v0[13] = v6;
  v7 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCache;
  v0[14] = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_dataStore;
  v0[15] = v7;
  swift_beginAccess();
  v8 = v0[12];
  v9 = v0[7];
  v10 = swift_task_alloc();
  v0[16] = v10;
  *v10 = v0;
  v10[1] = sub_24AD0FF6C;
  v11 = v0[8];

  return MEMORY[0x2822003E8](v0 + 27, v9, v8, v11);
}

uint64_t sub_24AD0FF6C()
{
  v1 = *(*v0 + 56);

  return MEMORY[0x2822009F8](sub_24AD1007C, v1, 0);
}

uint64_t sub_24AD1007C()
{
  v1 = *(v0 + 216);
  if (v1 == 5 || (sub_24AD5E9D4() & 1) != 0)
  {
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
    v2 = sub_24AD5E784();
    v3 = sub_24AD5EB44();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_24ACF2000, v2, v3, "monitorCloudKitState is not expected to terminate", v4, 2u);
      MEMORY[0x24C22F400](v4, -1, -1);
    }

    v5 = *(v0 + 8);

    return v5();
  }

  v7 = sub_24AD5E784();
  v8 = sub_24AD5EB64();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *(v0 + 48) = v10;
    *v9 = 136446210;
    v11 = 0xE800000000000000;
    v12 = 0x6E776F6E6B6E752ELL;
    v13 = 0xEA0000000000746ELL;
    v14 = 0x756F6363416F6E2ELL;
    v15 = 0x800000024AD61CF0;
    v16 = 0xD000000000000013;
    if (v1 != 3)
    {
      v16 = 0xD000000000000011;
      v15 = 0x800000024AD61CD0;
    }

    if (v1 != 2)
    {
      v14 = v16;
      v13 = v15;
    }

    if (v1)
    {
      v12 = 0x636972747365722ELL;
      v11 = 0xEB00000000646574;
    }

    if (v1 <= 1)
    {
      v17 = v12;
    }

    else
    {
      v17 = v14;
    }

    if (v1 <= 1)
    {
      v18 = v11;
    }

    else
    {
      v18 = v13;
    }

    v19 = sub_24AD2EDAC(v17, v18, (v0 + 48));

    *(v9 + 4) = v19;
    _os_log_impl(&dword_24ACF2000, v7, v8, "cloudKitAccountStateStream event: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x24C22F400](v10, -1, -1);
    MEMORY[0x24C22F400](v9, -1, -1);
  }

  if (v1 <= 1)
  {
    if (v1)
    {
      *(v0 + 219) = 1;
      v24 = (v0 + 219);
      v25 = swift_task_alloc();
      *(v0 + 144) = v25;
      *v25 = v0;
      v26 = sub_24AD10808;
    }

    else
    {
      *(v0 + 220) = 0;
      v24 = (v0 + 220);
      v25 = swift_task_alloc();
      *(v0 + 136) = v25;
      *v25 = v0;
      v26 = sub_24AD10670;
    }

LABEL_39:
    v25[1] = v26;

    return sub_24AD1B554(v24);
  }

  if (v1 == 2)
  {
    v27 = *(*(v0 + 56) + *(v0 + 112) + 8);
    ObjectType = swift_getObjectType();
    v31 = (*(v27 + 56) + **(v27 + 56));
    v29 = swift_task_alloc();
    *(v0 + 152) = v29;
    *v29 = v0;
    v29[1] = sub_24AD109A0;

    return v31(ObjectType, v27);
  }

  else
  {
    if (v1 == 3)
    {
      v20 = *(v0 + 56);
      if (*(v20 + *(v0 + 104)) == 5)
      {
        v21 = *(v0 + 96);
        v22 = swift_task_alloc();
        *(v0 + 128) = v22;
        *v22 = v0;
        v22[1] = sub_24AD0FF6C;
        v23 = *(v0 + 64);

        return MEMORY[0x2822003E8](v0 + 216, v20, v21, v23);
      }

      *(v0 + 217) = 1;
      v24 = (v0 + 217);
      v25 = swift_task_alloc();
      *(v0 + 192) = v25;
      *v25 = v0;
      v26 = sub_24AD11100;
      goto LABEL_39;
    }

    v30 = swift_task_alloc();
    *(v0 + 200) = v30;
    *v30 = v0;
    v30[1] = sub_24AD11298;

    return sub_24AD24880();
  }
}

uint64_t sub_24AD10670()
{
  v1 = *v0;
  v2 = *v0;

  v3 = v1[12];
  v4 = v1[7];
  v5 = swift_task_alloc();
  v1[16] = v5;
  *v5 = v2;
  v5[1] = sub_24AD0FF6C;
  v6 = v1[8];

  return MEMORY[0x2822003E8](v1 + 27, v4, v3, v6);
}

uint64_t sub_24AD10808()
{
  v1 = *v0;
  v2 = *v0;

  v3 = v1[12];
  v4 = v1[7];
  v5 = swift_task_alloc();
  v1[16] = v5;
  *v5 = v2;
  v5[1] = sub_24AD0FF6C;
  v6 = v1[8];

  return MEMORY[0x2822003E8](v1 + 27, v4, v3, v6);
}

uint64_t sub_24AD109A0()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_24AD10C30;
  }

  else
  {
    v4 = sub_24AD10ACC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AD10ACC()
{
  v1 = *(v0[7] + v0[15]);
  v0[21] = v1;
  return MEMORY[0x2822009F8](sub_24AD10AF4, v1, 0);
}

uint64_t sub_24AD10AF4()
{
  v1 = *(v0 + 160);
  type metadata accessor for CloudKitCacheDatabase(0);
  sub_24AD34F14(&qword_281064FE8, type metadata accessor for CloudKitCacheDatabase, &unk_24AD5FCC0);
  sub_24AD5E6D4();
  *(v0 + 176) = v1;
  if (v1)
  {
    v2 = *(v0 + 56);

    return MEMORY[0x2822009F8](sub_24AD10DCC, v2, 0);
  }

  else
  {
    *(v0 + 218) = 2;
    v3 = swift_task_alloc();
    *(v0 + 184) = v3;
    *v3 = v0;
    v3[1] = sub_24AD10F68;

    return sub_24AD1B554((v0 + 218));
  }
}

uint64_t sub_24AD10C30()
{
  v1 = *(v0 + 160);
  v2 = v1;
  v3 = sub_24AD5E784();
  v4 = sub_24AD5EB44();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = sub_24AD5E324();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24ACF2000, v3, v4, "Error from purge: %@", v5, 0xCu);
    sub_24AD06518(v6, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v6, -1, -1);
    MEMORY[0x24C22F400](v5, -1, -1);
  }

  else
  {
  }

  *(v0 + 218) = 2;
  v8 = swift_task_alloc();
  *(v0 + 184) = v8;
  *v8 = v0;
  v8[1] = sub_24AD10F68;

  return sub_24AD1B554((v0 + 218));
}

uint64_t sub_24AD10DCC()
{
  v1 = *(v0 + 176);
  v2 = v1;
  v3 = sub_24AD5E784();
  v4 = sub_24AD5EB44();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = sub_24AD5E324();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_24ACF2000, v3, v4, "Error from purge: %@", v5, 0xCu);
    sub_24AD06518(v6, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v6, -1, -1);
    MEMORY[0x24C22F400](v5, -1, -1);
  }

  else
  {
  }

  *(v0 + 218) = 2;
  v8 = swift_task_alloc();
  *(v0 + 184) = v8;
  *v8 = v0;
  v8[1] = sub_24AD10F68;

  return sub_24AD1B554((v0 + 218));
}

uint64_t sub_24AD10F68()
{
  v1 = *v0;
  v2 = *v0;

  v3 = v1[12];
  v4 = v1[7];
  v5 = swift_task_alloc();
  v1[16] = v5;
  *v5 = v2;
  v5[1] = sub_24AD0FF6C;
  v6 = v1[8];

  return MEMORY[0x2822003E8](v1 + 27, v4, v3, v6);
}

uint64_t sub_24AD11100()
{
  v1 = *v0;
  v2 = *v0;

  v3 = v1[12];
  v4 = v1[7];
  v5 = swift_task_alloc();
  v1[16] = v5;
  *v5 = v2;
  v5[1] = sub_24AD0FF6C;
  v6 = v1[8];

  return MEMORY[0x2822003E8](v1 + 27, v4, v3, v6);
}

uint64_t sub_24AD11298()
{
  v2 = *v1;
  v2[26] = v0;

  if (v0)
  {
    v3 = v2[7];

    return MEMORY[0x2822009F8](sub_24AD11430, v3, 0);
  }

  else
  {
    v4 = v2[12];
    v5 = v2[7];
    v6 = swift_task_alloc();
    v2[16] = v6;
    *v6 = v2;
    v6[1] = sub_24AD0FF6C;
    v7 = v2[8];

    return MEMORY[0x2822003E8](v2 + 27, v5, v4, v7);
  }
}

uint64_t sub_24AD11430()
{
  v19 = v0;
  v1 = v0[26];
  v2 = v1;
  v3 = sub_24AD5E784();
  v4 = sub_24AD5EB44();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[26];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136446210;
    v0[5] = v5;
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
    v9 = sub_24AD5E854();
    v11 = sub_24AD2EDAC(v9, v10, &v18);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_24ACF2000, v3, v4, "Error processing CK event: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x24C22F400](v7, -1, -1);
    MEMORY[0x24C22F400](v6, -1, -1);
  }

  else
  {
    v12 = v0[26];
  }

  v13 = v0[12];
  v14 = v0[7];
  v15 = swift_task_alloc();
  v0[16] = v15;
  *v15 = v0;
  v15[1] = sub_24AD0FF6C;
  v16 = v0[8];

  return MEMORY[0x2822003E8](v0 + 27, v14, v13, v16);
}

uint64_t sub_24AD1161C(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_24AD11704;

  return v5();
}

uint64_t sub_24AD11704()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24AD117FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AD0C594;

  return sub_24AD1188C();
}

uint64_t sub_24AD1188C()
{
  v1[18] = v0;
  v1[19] = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6230, &qword_24AD60990);
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD11980, v0, 0);
}

uint64_t sub_24AD11980()
{
  if (qword_281064D90 != -1)
  {
    swift_once();
  }

  v1 = sub_24AD5E7A4();
  v0[23] = __swift_project_value_buffer(v1, qword_281065448);
  v2 = sub_24AD5E784();
  v3 = sub_24AD5EB64();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24ACF2000, v2, v3, "Monitoring CloudKit AccountState stream", v4, 2u);
    MEMORY[0x24C22F400](v4, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6090, &qword_24AD60358);
  sub_24AD5E994();
  v5 = sub_24AD34F14(&qword_281064D10, type metadata accessor for CloudKitStorage, &protocol conformance descriptor for CloudKitStorage);
  v0[24] = v5;
  v6 = v0[18];
  v7 = swift_task_alloc();
  v0[25] = v7;
  *v7 = v0;
  v7[1] = sub_24AD11B58;
  v8 = v0[20];

  return MEMORY[0x2822003E8](v0 + 12, v6, v5, v8);
}

uint64_t sub_24AD11B58()
{
  v1 = *(*v0 + 144);

  return MEMORY[0x2822009F8](sub_24AD11C68, v1, 0);
}

uint64_t sub_24AD11C68()
{
  v43 = v0;
  v1 = v0[12];
  v2 = v0[13];
  v0[26] = v1;
  v0[27] = v2;
  if (v1 >> 2 == 0xFFFFFFFF)
  {
    (*(v0[21] + 8))(v0[22], v0[20]);
LABEL_5:
    v3 = sub_24AD5E784();
    v4 = sub_24AD5EB44();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_24ACF2000, v3, v4, "monitorCloudKitPushEvents is not expected to terminate", v5, 2u);
      MEMORY[0x24C22F400](v5, -1, -1);
    }

    v6 = v0[1];

    return v6();
  }

  if (sub_24AD5E9D4())
  {
    (*(v0[21] + 8))(v0[22], v0[20]);
    sub_24AD38AAC(v1);
    goto LABEL_5;
  }

  sub_24AD38AA0(v1, v2);
  v8 = sub_24AD5E784();
  v9 = sub_24AD5EB64();
  sub_24AD38AAC(v1);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v42 = v11;
    *v10 = 136315138;
    v0[14] = v1;
    v0[15] = v2;
    sub_24AD38AA0(v1, v2);
    v12 = sub_24AD5E854();
    v14 = sub_24AD2EDAC(v12, v13, &v42);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_24ACF2000, v8, v9, "cloudKitPushStream event: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x24C22F400](v11, -1, -1);
    MEMORY[0x24C22F400](v10, -1, -1);
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    sub_24AD38AA0(v1, v2);
    v21 = sub_24AD5E784();
    v22 = sub_24AD5EB64();
    sub_24AD38AAC(v1);
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v0[16] = v25;
      *v23 = 136315394;
      if (v1)
      {
        if (v1 == 1)
        {
          v26 = 0x646572616853;
        }

        else
        {
          v26 = 0x63696C627550;
        }

        v27 = 0xE600000000000000;
      }

      else
      {
        v26 = 0x65746176697250;
        v27 = 0xE700000000000000;
      }

      v36 = sub_24AD2EDAC(v26, v27, v0 + 16);

      *(v23 + 4) = v36;
      *(v23 + 12) = 2112;
      *(v23 + 14) = v2;
      *v24 = v2;
      sub_24AD38AA0(v1, v2);
      _os_log_impl(&dword_24ACF2000, v21, v22, "Recieved push event -- zone changed: database: %s; zone: %@", v23, 0x16u);
      sub_24AD06518(v24, &qword_27EFA61C8, &unk_24AD60C30);
      MEMORY[0x24C22F400](v24, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x24C22F400](v25, -1, -1);
      MEMORY[0x24C22F400](v23, -1, -1);
    }

    v38 = v0[18];
    v37 = v0[19];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6238, &qword_24AD60998);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24AD5F820;
    *(inited + 32) = v1;
    v40 = sub_24AD37828(inited);
    v0[32] = v40;
    swift_setDeallocating();
    v33 = swift_task_alloc();
    v0[33] = v33;
    v33[2] = v38;
    v33[3] = v40;
    v33[4] = v37;
    v41 = swift_task_alloc();
    v0[34] = v41;
    *v41 = v0;
    v41[1] = sub_24AD126D4;
    v35 = &unk_24AD609A0;
  }

  else
  {
    v15 = sub_24AD5E784();
    v16 = sub_24AD5EB64();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v0[17] = v18;
      *v17 = 136315138;
      if (v1)
      {
        if (v1 == 1)
        {
          v19 = 0x646572616853;
        }

        else
        {
          v19 = 0x63696C627550;
        }

        v20 = 0xE600000000000000;
      }

      else
      {
        v19 = 0x65746176697250;
        v20 = 0xE700000000000000;
      }

      v28 = sub_24AD2EDAC(v19, v20, v0 + 17);

      *(v17 + 4) = v28;
      _os_log_impl(&dword_24ACF2000, v15, v16, "Recieved push event -- database changed: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x24C22F400](v18, -1, -1);
      MEMORY[0x24C22F400](v17, -1, -1);
    }

    v30 = v0[18];
    v29 = v0[19];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6238, &qword_24AD60998);
    v31 = swift_initStackObject();
    *(v31 + 16) = xmmword_24AD5F820;
    *(v31 + 32) = v1;
    v32 = sub_24AD37828(v31);
    v0[28] = v32;
    swift_setDeallocating();
    v33 = swift_task_alloc();
    v0[29] = v33;
    v33[2] = v30;
    v33[3] = v32;
    v33[4] = v29;
    v34 = swift_task_alloc();
    v0[30] = v34;
    *v34 = v0;
    v34[1] = sub_24AD122F8;
    v35 = &unk_24AD609A8;
  }

  return MEMORY[0x28215EB00]("syncWithCloudKit", 16, 2, v35, v33);
}

uint64_t sub_24AD122F8()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = sub_24AD124E8;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_24AD12428;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AD12428()
{
  sub_24AD38AAC(v0[26]);
  v1 = v0[24];
  v2 = v0[18];
  v3 = swift_task_alloc();
  v0[25] = v3;
  *v3 = v0;
  v3[1] = sub_24AD11B58;
  v4 = v0[20];

  return MEMORY[0x2822003E8](v0 + 12, v2, v1, v4);
}

uint64_t sub_24AD124E8()
{
  v1 = v0[31];

  v2 = v1;
  v3 = sub_24AD5E784();
  v4 = sub_24AD5EB44();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[31];
  v7 = v0[26];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24ACF2000, v3, v4, "Error processing .databaseChanged: %{public}@", v8, 0xCu);
    sub_24AD06518(v9, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v9, -1, -1);
    MEMORY[0x24C22F400](v8, -1, -1);

    sub_24AD38AAC(v7);
  }

  else
  {

    sub_24AD38AAC(v7);
  }

  v12 = v0[24];
  v13 = v0[18];
  v14 = swift_task_alloc();
  v0[25] = v14;
  *v14 = v0;
  v14[1] = sub_24AD11B58;
  v15 = v0[20];

  return MEMORY[0x2822003E8](v0 + 12, v13, v12, v15);
}

uint64_t sub_24AD126D4()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = sub_24AD12804;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_24AD38C0C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AD12804()
{
  v1 = v0[35];

  v2 = v1;
  v3 = sub_24AD5E784();
  v4 = sub_24AD5EB44();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[35];
  v7 = v0[26];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24ACF2000, v3, v4, "Error processing .zoneChanged: %{public}@", v8, 0xCu);
    sub_24AD06518(v9, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v9, -1, -1);
    MEMORY[0x24C22F400](v8, -1, -1);

    sub_24AD38AAC(v7);
  }

  else
  {

    sub_24AD38AAC(v7);
  }

  v12 = v0[24];
  v13 = v0[18];
  v14 = swift_task_alloc();
  v0[25] = v14;
  *v14 = v0;
  v14[1] = sub_24AD11B58;
  v15 = v0[20];

  return MEMORY[0x2822003E8](v0 + 12, v13, v12, v15);
}

uint64_t sub_24AD129F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AD0C594;

  return sub_24AD12A80();
}

uint64_t sub_24AD12A80()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6218, &qword_24AD60938);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6220, &qword_24AD60940);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD12BB4, v0, 0);
}

uint64_t sub_24AD12BB4()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_zonesCreated;
  v0[9] = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_zonesCreated;
  if (*(v1 + v2))
  {

    v3 = v0[1];

    return v3();
  }

  else
  {
    if (qword_281064D90 != -1)
    {
      swift_once();
    }

    v5 = sub_24AD5E7A4();
    v0[10] = __swift_project_value_buffer(v5, qword_281065448);
    v6 = sub_24AD5E784();
    v7 = sub_24AD5EB64();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24ACF2000, v6, v7, "Monitoring APNS state stream", v8, 2u);
      MEMORY[0x24C22F400](v8, -1, -1);
    }

    v9 = v0[2];

    v10 = *(v9 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCoordinator);
    v0[11] = v10;

    return MEMORY[0x2822009F8](sub_24AD12D44, v10, 0);
  }
}

uint64_t sub_24AD12D44()
{
  *(v0 + 96) = *(*(v0 + 88) + 120);
  sub_24AD5E774();
  sub_24AD34F14(&qword_281064A50, MEMORY[0x277D08F50], MEMORY[0x277D08F58]);
  v2 = sub_24AD5E924();

  return MEMORY[0x2822009F8](sub_24AD12E04, v2, v1);
}

uint64_t sub_24AD12E04()
{
  v1 = *(v0 + 16);
  sub_24AD5E744();

  return MEMORY[0x2822009F8](sub_24AD12E74, v1, 0);
}

uint64_t sub_24AD12E74()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_24AD5E994();
  (*(v2 + 8))(v1, v3);
  v4 = sub_24AD34F14(&qword_281064D10, type metadata accessor for CloudKitStorage, &protocol conformance descriptor for CloudKitStorage);
  v0[13] = v4;
  v5 = v0[2];
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_24AD12F90;
  v7 = v0[6];

  return MEMORY[0x2822003E8](v0 + 17, v5, v4, v7);
}

uint64_t sub_24AD12F90()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_24AD130A0, v1, 0);
}

uint64_t sub_24AD130A0(uint64_t a1)
{
  v2 = *(v1 + 136);
  if (v2 == 2 || (v3 = *(v1 + 16), (*(v3 + *(v1 + 72)) & 1) != 0))
  {
    (*(*(v1 + 56) + 8))(*(v1 + 64), *(v1 + 48));
    v4 = sub_24AD5E784();
    v5 = sub_24AD5EB64();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24ACF2000, v4, v5, "Done monitoring APNS state stream", v6, 2u);
      MEMORY[0x24C22F400](v6, -1, -1);
    }

    v7 = *(v1 + 8);

    return v7();
  }

  else if (v2)
  {
    v9 = sub_24AD5E784();
    v10 = sub_24AD5EB64();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24ACF2000, v9, v10, "TRACE: APNS connected", v11, 2u);
      MEMORY[0x24C22F400](v11, -1, -1);
    }

    v12 = swift_task_alloc();
    *(v1 + 120) = v12;
    *v12 = v1;
    v12[1] = sub_24AD13324;

    return sub_24AD24880();
  }

  else
  {
    v13 = *(v1 + 104);
    v14 = swift_task_alloc();
    *(v1 + 112) = v14;
    *v14 = v1;
    v14[1] = sub_24AD12F90;
    v15 = *(v1 + 48);

    return MEMORY[0x2822003E8](v1 + 136, v3, v13, v15);
  }
}

uint64_t sub_24AD13324()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_24AD1354C;
  }

  else
  {
    v4 = sub_24AD13450;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AD13450()
{
  (*(v0[7] + 8))(v0[8], v0[6]);
  v1 = sub_24AD5E784();
  v2 = sub_24AD5EB64();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24ACF2000, v1, v2, "Done monitoring APNS state stream", v3, 2u);
    MEMORY[0x24C22F400](v3, -1, -1);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_24AD1354C()
{
  v1 = v0[16];
  v2 = v1;
  v3 = sub_24AD5E784();
  v4 = sub_24AD5EB44();

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
    _os_log_impl(&dword_24ACF2000, v3, v4, "Error creating zones from monitorAPNSState: %{public}@", v7, 0xCu);
    sub_24AD06518(v8, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v8, -1, -1);
    MEMORY[0x24C22F400](v7, -1, -1);
  }

  else
  {
  }

  v11 = v0[13];
  v12 = v0[2];
  v13 = swift_task_alloc();
  v0[14] = v13;
  *v13 = v0;
  v13[1] = sub_24AD12F90;
  v14 = v0[6];

  return MEMORY[0x2822003E8](v0 + 17, v12, v11, v14);
}

uint64_t sub_24AD13704(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_24AD0C594;

  return sub_24AD07718(a1, v3, a2, a3);
}

uint64_t sub_24AD137CC(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60D0, &qword_24AD60428);
  *(v3 + 40) = swift_task_alloc();
  v5 = type metadata accessor for CloudKitChangeSet(0);
  *(v3 + 48) = v5;
  *(v3 + 56) = *(v5 - 8);
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 96) = *a2;

  return MEMORY[0x2822009F8](sub_24AD138F8, v2, 0);
}

uint64_t sub_24AD138F8()
{
  if (MEMORY[0x24C22DDC0]())
  {
    sub_24AD0AE88();
    swift_allocError();
    *v1 = 0;
    swift_willThrow();

    v2 = *(v0 + 8);
LABEL_5:

    return v2();
  }

  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 40);
  sub_24AD38B48(*(v0 + 16), v5, &qword_27EFA60D0, &qword_24AD60428);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    sub_24AD06518(*(v0 + 40), &qword_27EFA60D0, &qword_24AD60428);

    v2 = *(v0 + 8);
    goto LABEL_5;
  }

  v7 = *(v0 + 96);
  v8 = *(v0 + 64);
  v9 = *(v0 + 32);
  v10 = *(v0 + 24);
  sub_24AD34D9C(*(v0 + 40), v8);
  v11 = swift_task_alloc();
  *(v0 + 72) = v11;
  *(v11 + 16) = v8;
  *(v11 + 24) = v10;
  *(v11 + 32) = v7;
  *(v11 + 40) = v9;
  v12 = swift_task_alloc();
  *(v0 + 80) = v12;
  *v12 = v0;
  v12[1] = sub_24AD13AFC;

  return MEMORY[0x28215EB00]("applyChangeSet", 14, 2, &unk_24AD60438, v11);
}

uint64_t sub_24AD13AFC()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_24AD13C9C;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_24AD13C24;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AD13C24()
{
  sub_24AD34EB0(*(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD13C9C()
{
  v1 = *(v0 + 64);

  sub_24AD34EB0(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AD13D1C(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 549) = a3;
  *(v3 + 192) = a1;
  *(v3 + 200) = a2;
  v4 = sub_24AD5F0D4();
  *(v3 + 208) = v4;
  *(v3 + 216) = *(v4 - 8);
  *(v3 + 224) = swift_task_alloc();
  v5 = sub_24AD5EE24();
  *(v3 + 232) = v5;
  *(v3 + 240) = *(v5 - 8);
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = swift_task_alloc();
  *(v3 + 288) = swift_task_alloc();
  *(v3 + 296) = swift_task_alloc();
  *(v3 + 304) = swift_task_alloc();
  *(v3 + 312) = swift_task_alloc();
  *(v3 + 320) = swift_task_alloc();
  *(v3 + 328) = type metadata accessor for CloudKitChangeSet(0);
  *(v3 + 336) = swift_task_alloc();
  *(v3 + 344) = swift_task_alloc();
  *(v3 + 352) = swift_task_alloc();
  *(v3 + 360) = swift_task_alloc();
  v6 = sub_24AD5E234();
  *(v3 + 368) = v6;
  *(v3 + 376) = *(v6 - 8);
  *(v3 + 384) = swift_task_alloc();
  v7 = sub_24AD5EE44();
  *(v3 + 392) = v7;
  *(v3 + 400) = *(v7 - 8);
  *(v3 + 408) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD13FB4, 0, 0);
}

uint64_t sub_24AD13FB4()
{
  v32 = v0;
  v1 = sub_24AD5EE34();
  if (MEMORY[0x24C22DDC0](v1))
  {
    v3 = *(v0 + 376);
    v2 = *(v0 + 384);
    v4 = *(v0 + 368);
    v5 = *(v0 + 328);
    v6 = *(v0 + 192);
    sub_24AD5E834();
    v7 = *(v5 + 20);
    v8 = sub_24AD5E404();
    *(v0 + 184) = v8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 160));
    (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v6 + v7, v8);
    sub_24AD5E224();
    v10 = [objc_opt_self() defaultCenter];
    v11 = sub_24AD5E204();
    [v10 postNotification_];

    (*(v3 + 8))(v2, v4);
    if (qword_281064D90 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 360);
    v13 = *(v0 + 192);
    v14 = sub_24AD5E7A4();
    *(v0 + 416) = __swift_project_value_buffer(v14, qword_281065448);
    sub_24AD38880(v13, v12);
    v15 = sub_24AD5E784();
    v16 = sub_24AD5EB64();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 360);
    if (v17)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v31 = v20;
      *v19 = 136446210;
      v21 = CloudKitChangeSet.description.getter();
      v23 = v22;
      sub_24AD34EB0(v18);
      v24 = sub_24AD2EDAC(v21, v23, &v31);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_24ACF2000, v15, v16, "Begin applying %{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x24C22F400](v20, -1, -1);
      MEMORY[0x24C22F400](v19, -1, -1);
    }

    else
    {

      sub_24AD34EB0(v18);
    }

    v26 = *(v0 + 549);
    v27 = *(v0 + 200);
    sub_24AD5EE14();
    *(v0 + 424) = *(v27 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCoordinator);
    *(v0 + 548) = v26;
    v28 = swift_task_alloc();
    *(v0 + 432) = v28;
    *v28 = v0;
    v28[1] = sub_24AD145BC;
    v29 = *(v0 + 192);

    return sub_24AD48D60(v29, (v0 + 548));
  }

  else
  {
    v25 = *(v0 + 200);
    *(v0 + 536) = *(*(v0 + 328) + 20);

    return MEMORY[0x2822009F8](sub_24AD14328, v25, 0);
  }
}

uint64_t sub_24AD14328()
{
  sub_24AD159C4(*(v0 + 192) + *(v0 + 536));

  return MEMORY[0x2822009F8](sub_24AD14398, 0, 0);
}

uint64_t sub_24AD14398()
{
  v20 = v0;
  if (qword_281064D90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 360);
  v2 = *(v0 + 192);
  v3 = sub_24AD5E7A4();
  *(v0 + 416) = __swift_project_value_buffer(v3, qword_281065448);
  sub_24AD38880(v2, v1);
  v4 = sub_24AD5E784();
  v5 = sub_24AD5EB64();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 360);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136446210;
    v10 = CloudKitChangeSet.description.getter();
    v12 = v11;
    sub_24AD34EB0(v7);
    v13 = sub_24AD2EDAC(v10, v12, &v19);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_24ACF2000, v4, v5, "Begin applying %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x24C22F400](v9, -1, -1);
    MEMORY[0x24C22F400](v8, -1, -1);
  }

  else
  {

    sub_24AD34EB0(v7);
  }

  v14 = *(v0 + 549);
  v15 = *(v0 + 200);
  sub_24AD5EE14();
  *(v0 + 424) = *(v15 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCoordinator);
  *(v0 + 548) = v14;
  v16 = swift_task_alloc();
  *(v0 + 432) = v16;
  *v16 = v0;
  v16[1] = sub_24AD145BC;
  v17 = *(v0 + 192);

  return sub_24AD48D60(v17, (v0 + 548));
}

uint64_t sub_24AD145BC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[55] = a1;
  v4[56] = a2;
  v4[57] = v2;

  if (v2)
  {
    v5 = sub_24AD157D8;
  }

  else
  {
    v5 = sub_24AD146D4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24AD146D4(uint64_t a1)
{
  v15 = v1;
  v3 = *(v1 + 440);
  v2 = *(v1 + 448);
  v4 = *(v1 + 549);
  v5 = *(v1 + 200);
  sub_24AD5EE14();
  v14 = v4;

  sub_24AD3B138(v3, v2, &v14, v12);

  v6 = v12[3];
  *(v1 + 48) = v12[2];
  *(v1 + 64) = v6;
  *(v1 + 80) = v13;
  v7 = v12[1];
  *(v1 + 16) = v12[0];
  *(v1 + 32) = v7;
  v8 = *(v5 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCache);
  v9 = *(v1 + 16);
  *(v1 + 104) = *(v1 + 32);
  v10 = *(v1 + 64);
  *(v1 + 120) = *(v1 + 48);
  *(v1 + 136) = v10;
  *(v1 + 464) = v8;
  *(v1 + 152) = *(v1 + 80);
  *(v1 + 88) = v9;

  return MEMORY[0x2822009F8](sub_24AD147E8, v8, 0);
}

uint64_t sub_24AD147E8()
{
  v1 = *(v0 + 456);
  sub_24ACFBDBC((v0 + 88));
  *(v0 + 472) = v1;
  if (v1)
  {

    v2 = sub_24AD15864;
  }

  else
  {
    v2 = sub_24AD14884;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24AD14884()
{
  v1 = *(v0[25] + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_dataStore + 8);
  ObjectType = swift_getObjectType();
  v8 = (*(v1 + 32) + **(v1 + 32));
  v3 = swift_task_alloc();
  v0[60] = v3;
  *v3 = v0;
  v3[1] = sub_24AD149C0;
  v4 = v0[55];
  v5 = v0[56];
  v6 = v0[24];

  return v8(v6, v4, v5, ObjectType, v1);
}

uint64_t sub_24AD149C0()
{
  v2 = *v1;
  *(*v1 + 488) = v0;

  if (v0)
  {

    v3 = sub_24AD15910;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 328);
    v6 = *(v2 + 200);

    *(v2 + 540) = *(v5 + 20);
    v3 = sub_24AD14B38;
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_24AD14B38()
{
  sub_24AD15BB0(*(v0 + 192) + *(v0 + 540));

  return MEMORY[0x2822009F8](sub_24AD14BA8, 0, 0);
}

uint64_t sub_24AD14BA8()
{
  v44 = v0;
  v2 = v0[39];
  v1 = v0[40];
  v4 = v0[37];
  v3 = v0[38];
  v5 = v0[29];
  v6 = v0[30];
  sub_24AD38880(v0[24], v0[44]);
  v7 = *(v6 + 16);
  v7(v3, v1, v5);
  v7(v4, v2, v5);
  v8 = sub_24AD5E784();
  v40 = sub_24AD5EB64();
  v9 = os_log_type_enabled(v8, v40);
  v10 = v0[50];
  v11 = v0[51];
  v12 = v0[49];
  v13 = v0[44];
  v14 = v0[40];
  v15 = v0[37];
  v41 = v0[38];
  v42 = v0[39];
  v16 = v0[29];
  v17 = v0[30];
  if (v9)
  {
    v39 = v0[51];
    log = v8;
    v18 = v0[27];
    v19 = v0[28];
    v33 = v0[26];
    v38 = v0[40];
    v20 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v43 = v34;
    *v20 = 136446466;
    v36 = v10;
    v37 = v12;
    v21 = CloudKitChangeSet.description.getter();
    v23 = v22;
    sub_24AD34EB0(v13);
    v24 = sub_24AD2EDAC(v21, v23, &v43);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    sub_24AD5F0C4();
    sub_24AD34F14(&qword_27EFA61F0, MEMORY[0x277D85938], MEMORY[0x277D85958]);
    v25 = sub_24AD5F0B4();
    v27 = v26;
    (*(v18 + 8))(v19, v33);
    v28 = *(v17 + 8);
    v28(v15, v16);
    v28(v41, v16);
    v29 = sub_24AD2EDAC(v25, v27, &v43);

    *(v20 + 14) = v29;
    _os_log_impl(&dword_24ACF2000, log, v40, "Done applying %{public}s duration: %s [Success]", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C22F400](v34, -1, -1);
    MEMORY[0x24C22F400](v20, -1, -1);
    sub_24AD06458((v0 + 2));

    v28(v42, v16);
    v28(v38, v16);
    (*(v36 + 8))(v39, v37);
  }

  else
  {
    sub_24AD06458((v0 + 2));

    v30 = *(v17 + 8);
    v30(v15, v16);
    v30(v41, v16);
    sub_24AD34EB0(v13);
    v30(v42, v16);
    v30(v14, v16);
    (*(v10 + 8))(v11, v12);
  }

  v31 = v0[1];

  return v31();
}

uint64_t sub_24AD14FF0()
{
  sub_24AD15BB0(*(v0 + 192) + *(v0 + 544));

  return MEMORY[0x2822009F8](sub_24AD15060, 0, 0);
}

uint64_t sub_24AD15060()
{
  v39 = v0;
  v1 = v0[40];
  v3 = v0[35];
  v2 = v0[36];
  v4 = v0[34];
  v5 = v0[29];
  v6 = v0[30];
  sub_24AD38880(v0[24], v0[43]);
  v7 = *(v6 + 16);
  v0[63] = v7;
  v0[64] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v3, v1, v5);
  v7(v4, v2, v5);
  v8 = sub_24AD5E784();
  v9 = sub_24AD5EB44();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[43];
  v12 = v0[34];
  v13 = v0[35];
  v15 = v0[29];
  v14 = v0[30];
  if (v10)
  {
    v16 = v0[27];
    v17 = v0[28];
    v34 = v0[26];
    v36 = v9;
    v18 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38[0] = v37;
    *v18 = 136446466;
    v33 = v13;
    v19 = CloudKitChangeSet.description.getter();
    log = v8;
    v21 = v20;
    sub_24AD34EB0(v11);
    v22 = sub_24AD2EDAC(v19, v21, v38);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    sub_24AD5F0C4();
    sub_24AD34F14(&qword_27EFA61F0, MEMORY[0x277D85938], MEMORY[0x277D85958]);
    v23 = sub_24AD5F0B4();
    v25 = v24;
    (*(v16 + 8))(v17, v34);
    v26 = *(v14 + 8);
    v27 = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v26(v12, v15);
    v26(v33, v15);
    v28 = sub_24AD2EDAC(v23, v25, v38);

    *(v18 + 14) = v28;
    _os_log_impl(&dword_24ACF2000, log, v36, "Done applying %{public}s duration: %s [Failure]", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C22F400](v37, -1, -1);
    MEMORY[0x24C22F400](v18, -1, -1);
  }

  else
  {

    v26 = *(v14 + 8);
    v27 = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v26(v12, v15);
    v26(v13, v15);
    sub_24AD34EB0(v11);
  }

  v0[65] = v26;
  v29 = v0[36];
  v30 = v0[29];
  v31 = v0[25];
  swift_willThrow();
  v0[66] = v27;
  v26(v29, v30);
  sub_24AD5EE14();

  return MEMORY[0x2822009F8](sub_24AD153A0, v31, 0);
}

uint64_t sub_24AD153A0()
{
  sub_24AD15BB0(*(v0 + 192) + *(v0 + 544));

  return MEMORY[0x2822009F8](sub_24AD15410, 0, 0);
}

uint64_t sub_24AD15410()
{
  v40 = v0;
  v1 = v0[63];
  v2 = v0[40];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[31];
  v6 = v0[29];
  sub_24AD38880(v0[24], v0[42]);
  v1(v4, v2, v6);
  v1(v5, v3, v6);
  v7 = sub_24AD5E784();
  v8 = sub_24AD5EB44();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[65];
  v11 = v0[42];
  v13 = v0[31];
  v12 = v0[32];
  v14 = v0[29];
  if (v9)
  {
    v33 = v0[28];
    v35 = v0[27];
    v36 = v0[26];
    v37 = v8;
    v15 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39[0] = v38;
    *v15 = 136446466;
    v16 = CloudKitChangeSet.description.getter();
    log = v7;
    v18 = v17;
    sub_24AD34EB0(v11);
    v19 = sub_24AD2EDAC(v16, v18, v39);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    sub_24AD5F0C4();
    sub_24AD34F14(&qword_27EFA61F0, MEMORY[0x277D85938], MEMORY[0x277D85958]);
    v20 = sub_24AD5F0B4();
    v22 = v21;
    v10(v13, v14);
    v10(v12, v14);
    (*(v35 + 8))(v33, v36);
    v23 = sub_24AD2EDAC(v20, v22, v39);

    *(v15 + 14) = v23;
    _os_log_impl(&dword_24ACF2000, log, v37, "Done applying %{public}s duration: %s [Tombstone failure]", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C22F400](v38, -1, -1);
    MEMORY[0x24C22F400](v15, -1, -1);
  }

  else
  {

    v10(v13, v14);
    v10(v12, v14);
    sub_24AD34EB0(v11);
  }

  v24 = v0[65];
  v25 = v0[50];
  v26 = v0[51];
  v27 = v0[49];
  v28 = v0[40];
  v29 = v0[33];
  v30 = v0[29];
  swift_willThrow();
  v24(v29, v30);
  v24(v28, v30);
  (*(v25 + 8))(v26, v27);

  v31 = v0[1];

  return v31();
}

uint64_t sub_24AD157D8(uint64_t a1)
{
  *(v1 + 496) = *(v1 + 456);
  v2 = *(v1 + 328);
  v3 = *(v1 + 200);
  sub_24AD5EE14();
  *(v1 + 544) = *(v2 + 20);

  return MEMORY[0x2822009F8](sub_24AD14FF0, v3, 0);
}

uint64_t sub_24AD15864()
{
  (*(*(v0 + 240) + 8))(*(v0 + 312), *(v0 + 232));
  sub_24AD06458(v0 + 16);
  *(v0 + 496) = *(v0 + 472);
  v1 = *(v0 + 328);
  v2 = *(v0 + 200);
  sub_24AD5EE14();
  *(v0 + 544) = *(v1 + 20);

  return MEMORY[0x2822009F8](sub_24AD14FF0, v2, 0);
}

uint64_t sub_24AD15910()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  sub_24AD06458(v0 + 16);
  (*(v3 + 8))(v1, v2);
  *(v0 + 496) = *(v0 + 488);
  v4 = *(v0 + 328);
  v5 = *(v0 + 200);
  sub_24AD5EE14();
  *(v0 + 544) = *(v4 + 20);

  return MEMORY[0x2822009F8](sub_24AD14FF0, v5, 0);
}

uint64_t sub_24AD159C4(uint64_t a1)
{
  v2 = sub_24AD5E404();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  (*(v3 + 16))(v6, a1, v2);
  swift_beginAccess();
  sub_24AD2F44C(v8, v6);
  (*(v3 + 8))(v8, v2);
  swift_endAccess();

  v10 = sub_24AD18EAC(v9);

  if (qword_281064D70 != -1)
  {
    swift_once();
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60B8, &qword_24AD603A8);
  __swift_project_value_buffer(v11, qword_281064D78);
  v13[1] = v10;
  swift_beginAccess();
  sub_24AD5E134();
  return swift_endAccess();
}

uint64_t sub_24AD15BB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60B0, &qword_24AD603A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  swift_beginAccess();
  sub_24AD32B8C(a1, v4);
  sub_24AD06518(v4, &qword_27EFA60B0, &qword_24AD603A0);
  swift_endAccess();

  v6 = sub_24AD18EAC(v5);

  if (*(v6 + 16))
  {
    if (qword_281064D70 != -1)
    {
      swift_once();
    }

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60B8, &qword_24AD603A8);
    __swift_project_value_buffer(v7, qword_281064D78);
    v11 = v6;
    swift_beginAccess();
  }

  else
  {

    if (qword_281064D70 != -1)
    {
      swift_once();
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60B8, &qword_24AD603A8);
    __swift_project_value_buffer(v8, qword_281064D78);
    v11 = 0;
    swift_beginAccess();
  }

  sub_24AD5E134();
  return swift_endAccess();
}

uint64_t sub_24AD15DB8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60D8, &unk_24AD60440);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - v2;
  swift_allocObject();
  swift_weakInit();
  (*(v1 + 104))(v3, *MEMORY[0x277D85778], v0);
  sub_24AD5E9C4();
}

uint64_t sub_24AD15EEC(uint64_t a1, uint64_t a2)
{
  v39 = a1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FA0, &qword_24AD5FE50);
  v35 = *(v38 - 8);
  v2 = *(v35 + 64);
  MEMORY[0x28223BE20](v38);
  v4 = &v27 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60A8, &qword_24AD60380);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27 - v6;
  v8 = sub_24AD5E404();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v36 = v13;
    sub_24AD5E3F4();
    v30 = v4;
    v31 = *(v9 + 16);
    v27 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v31(v27, v13, v8);
    v16 = *(v9 + 80);
    v34 = v9;
    v37 = v7;
    v32 = v16 | 7;
    v17 = swift_allocObject();
    v18 = v35;
    v28 = v8;
    v29 = v2;
    *(v17 + 16) = v15;
    v33 = *(v9 + 32);
    v19 = v27;
    v33(v17 + ((v16 + 24) & ~v16), v27, v8);

    v20 = v38;
    sub_24AD5E974();
    v21 = sub_24AD5E964();
    (*(*(v21 - 8) + 56))(v37, 1, 1, v21);
    v22 = v30;
    (*(v18 + 16))(v30, v39, v20);
    v23 = v28;
    v31(v19, v36, v28);
    v24 = (*(v18 + 80) + 40) & ~*(v18 + 80);
    v25 = (v29 + v16 + v24) & ~v16;
    v26 = swift_allocObject();
    *(v26 + 2) = 0;
    *(v26 + 3) = 0;
    *(v26 + 4) = v15;
    (*(v18 + 32))(&v26[v24], v22, v38);
    v33(&v26[v25], v19, v23);

    sub_24AD39C64(0, 0, v37, &unk_24AD608F8, v26);

    return (*(v34 + 8))(v36, v23);
  }

  return result;
}

uint64_t sub_24AD162F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24AD5E404();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60A8, &qword_24AD60380);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  v11 = sub_24AD5E964();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v6 + 16))(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
  v12 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a2;
  (*(v6 + 32))(&v13[v12], &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_24AD39C64(0, 0, v10, &unk_24AD60908, v13);
}

uint64_t sub_24AD164D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_24AD164F0, a4, 0);
}

uint64_t sub_24AD164F0()
{
  sub_24AD16550(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD16550(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6058, &unk_24AD60260);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25 - v3;
  v5 = sub_24AD5E404();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v29 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  if (qword_281064D90 != -1)
  {
    swift_once();
  }

  v11 = sub_24AD5E7A4();
  __swift_project_value_buffer(v11, qword_281065448);
  v28 = *(v6 + 16);
  v28(v10, a1, v5);
  v12 = sub_24AD5E784();
  v13 = sub_24AD5EB24();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27 = v4;
    v15 = v14;
    v25 = swift_slowAlloc();
    v30[0] = v25;
    *v15 = 136446210;
    sub_24AD34F14(&qword_2810653E8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v16 = sub_24AD5EF74();
    v26 = a1;
    v18 = v17;
    (*(v6 + 8))(v10, v5);
    v19 = sub_24AD2EDAC(v16, v18, v30);
    a1 = v26;

    *(v15 + 4) = v19;
    _os_log_impl(&dword_24ACF2000, v12, v13, "Removing stateContinuation for %{public}s", v15, 0xCu);
    v20 = v25;
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x24C22F400](v20, -1, -1);
    v21 = v15;
    v4 = v27;
    MEMORY[0x24C22F400](v21, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v10, v5);
  }

  v22 = v29;
  v28(v29, a1, v5);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FA0, &qword_24AD5FE50);
  (*(*(v23 - 8) + 56))(v4, 1, 1, v23);
  swift_beginAccess();
  sub_24AD06F68(v4, v22);
  return swift_endAccess();
}

uint64_t sub_24AD168EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61B8, &qword_24AD608B8);
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD169C0, a4, 0);
}

uint64_t sub_24AD169C0()
{
  v1 = *(v0 + 40);
  sub_24AD16B14(*(v0 + 48), *(v0 + 56));
  v2 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_state;
  swift_beginAccess();
  *(v0 + 89) = *(v1 + v2);

  return MEMORY[0x2822009F8](sub_24AD16A50, 0, 0);
}

uint64_t sub_24AD16A50()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  *(v0 + 88) = *(v0 + 89);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FA0, &qword_24AD5FE50);
  sub_24AD5E984();
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24AD16B14(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6058, &unk_24AD60260);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v27 - v4;
  v6 = sub_24AD5E404();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v32 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - v10;
  if (qword_281064D90 != -1)
  {
    swift_once();
  }

  v12 = sub_24AD5E7A4();
  __swift_project_value_buffer(v12, qword_281065448);
  v31 = *(v7 + 16);
  v31(v11, a2, v6);
  v13 = sub_24AD5E784();
  v14 = sub_24AD5EB24();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v30 = v5;
    v16 = v15;
    v28 = swift_slowAlloc();
    v34[0] = v28;
    *v16 = 136446210;
    sub_24AD34F14(&qword_2810653E8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v17 = sub_24AD5EF74();
    v29 = a2;
    v19 = v18;
    (*(v7 + 8))(v11, v6);
    v20 = sub_24AD2EDAC(v17, v19, v34);
    a2 = v29;

    *(v16 + 4) = v20;
    _os_log_impl(&dword_24ACF2000, v13, v14, "Storing stateContinuation for %{public}s", v16, 0xCu);
    v21 = v28;
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x24C22F400](v21, -1, -1);
    v22 = v16;
    v5 = v30;
    MEMORY[0x24C22F400](v22, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v11, v6);
  }

  v23 = v32;
  v31(v32, a2, v6);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FA0, &qword_24AD5FE50);
  v25 = *(v24 - 8);
  (*(v25 + 16))(v5, v33, v24);
  (*(v25 + 56))(v5, 0, 1, v24);
  swift_beginAccess();
  sub_24AD06F68(v5, v23);
  return swift_endAccess();
}

uint64_t sub_24AD16EE8(_BYTE *a1)
{
  *(v2 + 40) = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60D8, &unk_24AD60440);
  *(v2 + 48) = v4;
  *(v2 + 56) = *(v4 - 8);
  *(v2 + 64) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60E0, &qword_24AD60450);
  *(v2 + 72) = v5;
  *(v2 + 80) = *(v5 - 8);
  *(v2 + 88) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60E8, qword_24AD60458);
  *(v2 + 96) = v6;
  *(v2 + 104) = *(v6 - 8);
  *(v2 + 112) = swift_task_alloc();
  *(v2 + 145) = *a1;

  return MEMORY[0x2822009F8](sub_24AD17090, v1, 0);
}

uint64_t sub_24AD17090()
{
  v1 = *(v0 + 145);
  v2 = *(v0 + 40);
  v3 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_state;
  swift_beginAccess();
  if (*(v2 + v3) == v1)
  {

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v7 = *(v0 + 80);
    v6 = *(v0 + 88);
    v9 = *(v0 + 64);
    v8 = *(v0 + 72);
    v10 = *(v0 + 48);
    v11 = *(v0 + 56);
    swift_allocObject();
    swift_weakInit();
    (*(v11 + 104))(v9, *MEMORY[0x277D85778], v10);
    sub_24AD5E9C4();

    sub_24AD5E994();
    (*(v7 + 8))(v6, v8);
    v12 = sub_24AD34F14(&qword_281064D10, type metadata accessor for CloudKitStorage, &protocol conformance descriptor for CloudKitStorage);
    *(v0 + 120) = v12;
    *(v0 + 128) = 0;
    v13 = *(v0 + 40);
    v14 = swift_task_alloc();
    *(v0 + 136) = v14;
    *v14 = v0;
    v14[1] = sub_24AD172E4;
    v15 = *(v0 + 96);

    return MEMORY[0x2822003E8](v0 + 144, v13, v12, v15);
  }
}

uint64_t sub_24AD172E4()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_24AD173F4, v1, 0);
}

uint64_t sub_24AD173F4()
{
  v1 = *(v0 + 144);
  if (v1 == 7 || (v2 = *(v0 + 128), sub_24AD5E9E4(), v2) || v1 == *(v0 + 145))
  {
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    *(v0 + 128) = 0;
    v5 = *(v0 + 120);
    v6 = *(v0 + 40);
    v7 = swift_task_alloc();
    *(v0 + 136) = v7;
    *v7 = v0;
    v7[1] = sub_24AD172E4;
    v8 = *(v0 + 96);

    return MEMORY[0x2822003E8](v0 + 144, v6, v5, v8);
  }
}

uint64_t sub_24AD175BC()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_24AD17658;

  return sub_24AD42670();
}

uint64_t sub_24AD17658(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_24AD17754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_24AD1777C, v4, 0);
}

uint64_t sub_24AD1777C()
{
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCache);
  *(v0 + 56) = v1;
  return MEMORY[0x2822009F8](sub_24AD177A8, v1, 0);
}

uint64_t sub_24AD177A8()
{
  type metadata accessor for CloudKitCacheDatabase(0);
  sub_24AD34F14(&qword_281064FE8, type metadata accessor for CloudKitCacheDatabase, &unk_24AD5FCC0);
  *(v0 + 64) = sub_24AD5E694();

  return MEMORY[0x2822009F8](sub_24AD1785C, 0, 0);
}

uint64_t sub_24AD1785C()
{
  if (v0[8])
  {
    v1 = v0[7];

    return MEMORY[0x2822009F8](sub_24AD179A0, v1, 0);
  }

  else
  {
    v2 = sub_24AD5E664();
    sub_24AD34F14(&qword_27EFA5EF0, MEMORY[0x277D094E8], MEMORY[0x277D094F0]);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277D094E0], v2);
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_24AD179A0()
{
  sub_24ACF51C0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 64), *(v0 + 16));
  *(v0 + 72) = 0;

  return MEMORY[0x2822009F8](sub_24AD17A34, 0, 0);
}

uint64_t sub_24AD17A34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD17A98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD17AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_24AD17B24, v4, 0);
}

uint64_t sub_24AD17B24()
{
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCache);
  *(v0 + 56) = v1;
  return MEMORY[0x2822009F8](sub_24AD17B50, v1, 0);
}

uint64_t sub_24AD17B50()
{
  type metadata accessor for CloudKitCacheDatabase(0);
  sub_24AD34F14(&qword_281064FE8, type metadata accessor for CloudKitCacheDatabase, &unk_24AD5FCC0);
  *(v0 + 64) = sub_24AD5E694();

  return MEMORY[0x2822009F8](sub_24AD17C04, 0, 0);
}

uint64_t sub_24AD17C04()
{
  if (v0[8])
  {
    v1 = v0[7];

    return MEMORY[0x2822009F8](sub_24AD17D48, v1, 0);
  }

  else
  {
    v2 = sub_24AD5E664();
    sub_24AD34F14(&qword_27EFA5EF0, MEMORY[0x277D094E8], MEMORY[0x277D094F0]);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277D094E0], v2);
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_24AD17D48()
{
  sub_24ACF51F8(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 64), *(v0 + 16));
  *(v0 + 72) = 0;

  return MEMORY[0x2822009F8](sub_24AD38C18, 0, 0);
}

uint64_t sub_24AD17DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_24AD17E00, v3, 0);
}

uint64_t sub_24AD17E00()
{
  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCache);
  *(v0 + 48) = v1;
  return MEMORY[0x2822009F8](sub_24AD17E2C, v1, 0);
}

uint64_t sub_24AD17E2C()
{
  type metadata accessor for CloudKitCacheDatabase(0);
  sub_24AD34F14(&qword_281064FE8, type metadata accessor for CloudKitCacheDatabase, &unk_24AD5FCC0);
  *(v0 + 56) = sub_24AD5E694();

  return MEMORY[0x2822009F8](sub_24AD17EE0, 0, 0);
}

uint64_t sub_24AD17EE0()
{
  if (v0[7])
  {
    v1 = v0[6];

    return MEMORY[0x2822009F8](sub_24AD18024, v1, 0);
  }

  else
  {
    v2 = sub_24AD5E664();
    sub_24AD34F14(&qword_27EFA5EF0, MEMORY[0x277D094E8], MEMORY[0x277D094F0]);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277D094E0], v2);
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_24AD18024()
{
  v1 = sub_24ACF5C14(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 56));
  *(v0 + 64) = 0;
  *(v0 + 72) = v2;
  *(v0 + 80) = v1;

  return MEMORY[0x2822009F8](sub_24AD180BC, 0, 0);
}

uint64_t sub_24AD180BC()
{

  v1 = v0[1];
  v3 = v0[9];
  v2 = v0[10];

  return v1(v2, v3);
}

uint64_t sub_24AD18124()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD18188(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24AD181AC, v2, 0);
}

uint64_t sub_24AD181AC()
{
  *(v0 + 56) = 0;
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_24AD1825C;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_24AD44BD4(v3, v2, (v0 + 56));
}

uint64_t sub_24AD1825C(void *a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v6 = *(v4 + 32);

    return MEMORY[0x2822009F8](sub_24AD183AC, v6, 0);
  }

  else
  {

    v7 = *(v5 + 8);

    return v7();
  }
}

uint64_t sub_24AD183C4(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return MEMORY[0x2822009F8](sub_24AD183E8, v2, 0);
}

uint64_t sub_24AD183E8()
{
  v1 = v0[22];
  sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
  sub_24AD5E844();

  v2 = sub_24AD5EB74();
  v0[23] = v2;
  v0[24] = *(v1 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCache);
  v3 = swift_task_alloc();
  v0[25] = v3;
  *v3 = v0;
  v3[1] = sub_24AD184FC;

  return sub_24ACF71AC(v2);
}

uint64_t sub_24AD184FC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 208) = a1;
  *(v4 + 216) = v1;

  v5 = *(v3 + 176);
  if (v1)
  {
    v6 = sub_24AD18D04;
  }

  else
  {
    v6 = sub_24AD18630;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

char *sub_24AD18630()
{
  v1 = *(v0 + 208);
  if (v1 >> 62)
  {
    v2 = sub_24AD5EC94();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v25 = MEMORY[0x277D84F90];
    result = sub_24AD33620(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = 0;
    v24 = v0;
    v6 = *(v0 + 208);
    v7 = v25;
    v8 = v1 & 0xC000000000000001;
    v23 = v6 + 32;
    v9 = v2;
    do
    {
      if (v8)
      {
        v10 = MEMORY[0x24C22EA30](v5, *(v24 + 208));
      }

      else
      {
        v10 = *(v23 + 8 * v5);
      }

      v11 = v10;
      v12 = sub_24AD5EBE4();
      v14 = v13;
      v15 = [v11 recordID];

      v17 = *(v25 + 16);
      v16 = *(v25 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_24AD33620((v16 > 1), v17 + 1, 1);
      }

      ++v5;
      *(v25 + 16) = v17 + 1;
      v18 = (v25 + 24 * v17);
      v18[4] = v12;
      v18[5] = v14;
      v18[6] = v15;
    }

    while (v9 != v5);
    v0 = v24;

    v3 = MEMORY[0x277D84F90];
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  v19 = [*(*(*(v0 + 176) + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCoordinator) + 112) containerID];
  v20 = sub_24AD341CC(v3);
  *(v0 + 16) = v19;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = v3;
  *(v0 + 48) = v3;
  *(v0 + 56) = v3;
  *(v0 + 64) = v7;
  *(v0 + 72) = v20;
  *(v0 + 80) = v3;
  *(v0 + 264) = 0;
  v21 = swift_task_alloc();
  *(v0 + 224) = v21;
  *v21 = v0;
  v21[1] = sub_24AD18884;
  v22 = *(v0 + 184);

  return sub_24AD454E0(v22, (v0 + 264));
}

uint64_t sub_24AD18884()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = *(v2 + 176);
    v4 = sub_24AD18D68;
  }

  else
  {
    v3 = *(v2 + 192);
    v4 = sub_24AD1899C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AD1899C()
{
  v1 = v0[29];
  sub_24ACFB24C(v0[23]);
  v0[30] = v1;
  v2 = v0[22];
  if (v1)
  {
    v3 = sub_24AD18DD4;
  }

  else
  {
    v3 = sub_24AD18A28;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_24AD18A28()
{
  v1 = *(*(v0 + 176) + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_dataStore + 8);
  ObjectType = swift_getObjectType();
  v3 = *(v0 + 32);
  *(v0 + 88) = *(v0 + 16);
  v4 = *(v0 + 48);
  *(v0 + 136) = *(v0 + 64);
  *(v0 + 120) = v4;
  *(v0 + 152) = *(v0 + 80);
  *(v0 + 104) = v3;
  v7 = (*(v1 + 24) + **(v1 + 24));
  v5 = swift_task_alloc();
  *(v0 + 248) = v5;
  *v5 = v0;
  v5[1] = sub_24AD18B80;

  return v7(v0 + 88, ObjectType, v1);
}

uint64_t sub_24AD18B80()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 176);
  if (v0)
  {
    v4 = sub_24AD18E40;
  }

  else
  {
    v4 = sub_24AD18C98;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AD18C98()
{
  v1 = *(v0 + 184);
  sub_24AD06458(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AD18D04()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD18D68()
{
  v1 = *(v0 + 184);
  sub_24AD06458(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AD18DD4()
{
  v1 = *(v0 + 184);
  sub_24AD06458(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AD18E40()
{
  sub_24AD06458(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD18EAC(uint64_t a1)
{
  v35 = sub_24AD5E404();
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v27 = v1;
    v39 = MEMORY[0x277D84F90];
    sub_24AD33600(0, v5, 0);
    v38 = v39;
    v7 = a1 + 56;
    result = sub_24AD5EC54();
    v8 = result;
    v9 = 0;
    v32 = v3 + 8;
    v33 = v3 + 16;
    v28 = a1 + 64;
    v29 = v5;
    v30 = v3;
    v31 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      v12 = v34;
      v13 = v35;
      (*(v3 + 16))(v34, *(a1 + 48) + *(v3 + 72) * v8, v35);
      v37 = sub_24AD5E3E4();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v38;
      v39 = v38;
      v18 = *(v38 + 16);
      v17 = *(v38 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_24AD33600((v17 > 1), v18 + 1, 1);
        v16 = v39;
      }

      *(v16 + 16) = v18 + 1;
      v19 = v16 + 16 * v18;
      *(v19 + 32) = v37;
      *(v19 + 40) = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v31;
      v20 = *(v31 + 8 * v11);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v38 = v16;
      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v30;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v28 + 8 * v11);
        v3 = v30;
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_24ACF3B64(v8, v36, 0);
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_24ACF3B64(v8, v36, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v29)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_24AD191B4()
{
  *(v1 + 40) = v0;
  *(v1 + 48) = *v0;
  return MEMORY[0x2822009F8](sub_24AD191FC, v0, 0);
}

uint64_t sub_24AD191FC()
{
  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCoordinator);
  *(v0 + 56) = v1;
  return MEMORY[0x2822009F8](sub_24AD19228, v1, 0);
}

uint64_t sub_24AD19228()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  swift_beginAccess();
  *(v0 + 160) = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_24AD192AC, v2, 0);
}

uint64_t sub_24AD192AC()
{
  if (*(v0 + 160) == 4)
  {
    v1 = *(*(v0 + 40) + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCache);
    *(v0 + 64) = v1;

    return MEMORY[0x2822009F8](sub_24AD19420, v1, 0);
  }

  else
  {
    v2 = sub_24AD5E114();
    sub_24AD34F14(&qword_27EFA5F90, MEMORY[0x277D08938], MEMORY[0x277D08940]);
    swift_allocError();
    *v3 = 0xD000000000000031;
    v3[1] = 0x800000024AD61A70;
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277D08930], v2);
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_24AD19420()
{
  v0[9] = type metadata accessor for CloudKitCacheDatabase(0);
  v0[10] = sub_24AD34F14(&qword_281064FE8, type metadata accessor for CloudKitCacheDatabase, &unk_24AD5FCC0);
  sub_24AD5E6D4();
  v1 = v0[5];

  return MEMORY[0x2822009F8](sub_24AD19520, v1, 0);
}

uint64_t sub_24AD19520()
{
  v1 = (v0[5] + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_dataStore);
  v0[11] = *v1;
  v2 = v1[1];
  v0[12] = v2;
  ObjectType = swift_getObjectType();
  v0[13] = ObjectType;
  v6 = (*(v2 + 56) + **(v2 + 56));
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_24AD19660;

  return v6(ObjectType, v2);
}

uint64_t sub_24AD19660()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 64);

    return MEMORY[0x2822009F8](sub_24AD197A8, v6, 0);
  }
}

uint64_t sub_24AD197A8()
{
  v1 = v0[15];
  sub_24AD5E6F4();
  if (v1)
  {
    v2 = v0[1];

    return v2();
  }

  else
  {
    v7 = (*(v0[12] + 48) + **(v0[12] + 48));
    v4 = swift_task_alloc();
    v0[16] = v4;
    *v4 = v0;
    v4[1] = sub_24AD19908;
    v5 = v0[12];
    v6 = v0[13];

    return v7(v6, v5);
  }
}

uint64_t sub_24AD19908()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 40);

    return MEMORY[0x2822009F8](sub_24AD19A4C, v6, 0);
  }
}

uint64_t sub_24AD19A4C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = *(v2 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_databases);
  v4 = swift_task_alloc();
  v0[17] = v4;
  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v1;
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_24AD19B38;

  return MEMORY[0x28215EB00]("syncWithCloudKit", 16, 2, &unk_24AD60488, v4);
}

uint64_t sub_24AD19B38()
{
  v2 = *v1;
  v2[19] = v0;

  if (v0)
  {
    v3 = v2[5];

    return MEMORY[0x2822009F8](sub_24AD19C74, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_24AD19C74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD19CF8()
{
  v1 = *(v0 + 1080);
  v2 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_state;
  swift_beginAccess();
  if (*(v1 + v2) == 5)
  {
    *(v0 + 1344) = 1;
    v3 = swift_task_alloc();
    *(v0 + 1128) = v3;
    *v3 = v0;
    v3[1] = sub_24AD19EBC;

    return sub_24AD1B554((v0 + 1344));
  }

  else
  {
    v5 = sub_24AD5E114();
    sub_24AD34F14(&qword_27EFA5F90, MEMORY[0x277D08938], MEMORY[0x277D08940]);
    swift_allocError();
    *v6 = 0xD000000000000020;
    v6[1] = 0x800000024AD61AD0;
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D08930], v5);
    swift_willThrow();
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_24AD19EBC()
{
  v1 = *(*v0 + 1080);

  return MEMORY[0x2822009F8](sub_24AD19FCC, v1, 0);
}

uint64_t sub_24AD19FCC()
{
  v1 = v0[135];
  v2 = swift_allocObject();
  v0[142] = v2;
  *(v2 + 16) = &unk_24AD604A8;
  *(v2 + 24) = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60F0, qword_24AD604C0);
  swift_asyncLet_begin();
  v3 = v1 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_dataStore;
  v0[143] = *(v1 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_dataStore);
  v4 = *(v3 + 8);
  v0[144] = v4;
  ObjectType = swift_getObjectType();
  v0[145] = ObjectType;
  v8 = (*(v4 + 56) + **(v4 + 56));
  v6 = swift_task_alloc();
  v0[146] = v6;
  *v6 = v0;
  v6[1] = sub_24AD1A184;

  return v8(ObjectType, v4);
}

uint64_t sub_24AD1A184()
{
  v2 = *v1;
  v2[147] = v0;

  if (v0)
  {

    return MEMORY[0x282200920](v2 + 2);
  }

  else
  {
    v7 = (*(v2[144] + 48) + **(v2[144] + 48));
    v3 = swift_task_alloc();
    v2[148] = v3;
    *v3 = v2;
    v3[1] = sub_24AD1A380;
    v4 = v2[144];
    v5 = v2[145];

    return v7(v5, v4);
  }
}

uint64_t sub_24AD1A380()
{
  v2 = *v1;
  *(*v1 + 1192) = v0;

  if (v0)
  {

    return MEMORY[0x282200920](v2 + 16);
  }

  else
  {

    return MEMORY[0x282200930](v2 + 16, v2 + 984, sub_24AD1A4C4, v2 + 880);
  }
}

uint64_t sub_24AD1A4C4()
{
  *(v1 + 1200) = v0;
  if (v0)
  {
    return MEMORY[0x282200920](v1 + 16);
  }

  else
  {
    return MEMORY[0x2822009F8](sub_24AD1A508, *(v1 + 1080), 0);
  }
}

uint64_t sub_24AD1A508()
{
  v1 = *(v0 + 984);
  *(v0 + 1208) = v1;
  if (v1 >> 62)
  {
    v19 = sub_24AD5EC94();
    *(v0 + 1216) = v19;
    if (v19)
    {
LABEL_3:
      v3 = *(v0 + 1080);
      *(v0 + 1224) = *MEMORY[0x277CBBF28];
      v4 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCache;
      *(v0 + 1232) = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCoordinator;
      *(v0 + 1240) = *(v3 + v4);
      *(v0 + 1248) = *(v0 + 1200);
      v5 = *(v0 + 1208);

      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x24C22EA30](0, v5);
      }

      else
      {
        if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return MEMORY[0x2822009F8](v6, v7, v8);
        }

        v9 = *(v5 + 32);
      }

      *(v0 + 1256) = v9;
      *(v0 + 1264) = 1;
      v10 = [v9 zoneID];
      v11 = [v10 ownerName];

      v12 = sub_24AD5E844();
      v14 = v13;

      if (v12 == sub_24AD5E844() && v14 == v15)
      {

        v16 = 0;
      }

      else
      {
        v17 = sub_24AD5EF84();

        v16 = (v17 & 1) == 0;
      }

      *(v0 + 1346) = v16;
      v18 = *(v0 + 1240);
      *(v0 + 1272) = [v9 zoneID];
      v6 = sub_24AD1A7A4;
      v7 = v18;
      v8 = 0;

      return MEMORY[0x2822009F8](v6, v7, v8);
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 1216) = v2;
    if (v2)
    {
      goto LABEL_3;
    }
  }

  *(v0 + 1345) = 5;
  v20 = swift_task_alloc();
  *(v0 + 1336) = v20;
  *v20 = v0;
  v20[1] = sub_24AD1B160;

  return sub_24AD1B554((v0 + 1345));
}

uint64_t sub_24AD1A7A4()
{
  type metadata accessor for CloudKitCacheDatabase(0);
  sub_24AD34F14(&qword_281064FE8, type metadata accessor for CloudKitCacheDatabase, &unk_24AD5FCC0);
  *(v0 + 1280) = sub_24AD5E694();

  return MEMORY[0x2822009F8](sub_24AD1A858, 0, 0);
}

uint64_t sub_24AD1A858()
{
  if (v0[160])
  {
    v1 = v0[155];
    v2 = sub_24AD1A994;
  }

  else
  {
    v3 = v0[159];

    v4 = sub_24AD5E664();
    sub_24AD34F14(&qword_27EFA5EF0, MEMORY[0x277D094E8], MEMORY[0x277D094F0]);
    v5 = swift_allocError();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D094E0], v4);
    swift_willThrow();

    v0[166] = v5;
    v1 = v0[135];
    v2 = sub_24AD1AE2C;
  }

  return MEMORY[0x2822009F8](v2, v1, 0);
}

uint64_t sub_24AD1A994()
{
  v1 = *(v0 + 1248);
  *(v0 + 1288) = sub_24ACF74E8(*(v0 + 1272), *(v0 + 1280));
  *(v0 + 1296) = v1;
  if (v1)
  {

    v2 = sub_24AD1ADB0;
  }

  else
  {
    v2 = sub_24AD1AA34;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24AD1AA34()
{
  v1 = v0[159];
  v2 = v0[135];
  sub_24AD5E174();
  v0[163] = v0[129];

  return MEMORY[0x2822009F8](sub_24AD1AAD0, v2, 0);
}

uint64_t sub_24AD1AAD0()
{
  v1 = (v0 + 808);
  v2 = *(v0 + 1346);
  v14 = *(v0 + 1152);
  v3 = MEMORY[0x277D84F90];
  if (*(v0 + 1304))
  {
    v4 = *(v0 + 1304);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v5 = [*(*(*(v0 + 1080) + *(v0 + 1232)) + 112) containerID];
  v6 = sub_24AD341CC(v3);
  *(v0 + 696) = v5;
  *(v0 + 704) = v2;
  *(v0 + 712) = 0;
  *(v0 + 720) = v3;
  *(v0 + 728) = v3;
  *(v0 + 736) = v4;
  *(v0 + 744) = v3;
  *(v0 + 752) = v6;
  *(v0 + 760) = v3;
  *(v0 + 872) = v3;
  v7 = *(v0 + 744);
  *(v0 + 840) = *(v0 + 728);
  *(v0 + 856) = v7;
  v8 = *(v0 + 712);
  *v1 = *(v0 + 696);
  *(v0 + 824) = v8;
  v13 = (*(v14 + 24) + **(v14 + 24));
  v9 = swift_task_alloc();
  *(v0 + 1312) = v9;
  *v9 = v0;
  v9[1] = sub_24AD1AC88;
  v10 = *(v0 + 1160);
  v11 = *(v0 + 1152);

  return v13(v1, v10, v11);
}

uint64_t sub_24AD1AC88()
{
  v2 = *v1;
  *(*v1 + 1320) = v0;

  if (v0)
  {
    v3 = *(v2 + 1080);

    v4 = sub_24AD1B460;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 1080);
    v4 = sub_24AD1AF18;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_24AD1ADB0()
{

  *(v0 + 1328) = *(v0 + 1296);
  v1 = *(v0 + 1080);

  return MEMORY[0x2822009F8](sub_24AD1AE2C, v1, 0);
}

uint64_t sub_24AD1AE2C()
{

  return MEMORY[0x282200920](v0 + 16);
}

uint64_t sub_24AD1AEB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD1AF18()
{
  v1 = *(v0 + 1264);
  v2 = *(v0 + 1216);

  v3 = sub_24AD06458(v0 + 696);
  if (v1 != v2)
  {
    v7 = *(v0 + 1264);
    *(v0 + 1248) = *(v0 + 1320);
    v8 = *(v0 + 1208);
    if ((v8 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x24C22EA30](v7);
    }

    else
    {
      if (v7 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v3 = *(v8 + 8 * v7 + 32);
    }

    v9 = v3;
    *(v0 + 1256) = v3;
    *(v0 + 1264) = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      v10 = [v3 zoneID];
      v11 = [v10 ownerName];

      v12 = sub_24AD5E844();
      v14 = v13;

      if (v12 == sub_24AD5E844() && v14 == v15)
      {

        v18 = 0;
      }

      else
      {
        v17 = sub_24AD5EF84();

        v18 = (v17 & 1) == 0;
      }

      *(v0 + 1346) = v18;
      v19 = *(v0 + 1240);
      *(v0 + 1272) = [v9 zoneID];
      v3 = sub_24AD1A7A4;
      v8 = v19;
      v4 = 0;

      return MEMORY[0x2822009F8](v3, v8, v4);
    }

    __break(1u);
LABEL_20:
    __break(1u);
    return MEMORY[0x2822009F8](v3, v8, v4);
  }

  *(v0 + 1345) = 5;
  v5 = swift_task_alloc();
  *(v0 + 1336) = v5;
  *v5 = v0;
  v5[1] = sub_24AD1B160;

  return sub_24AD1B554((v0 + 1345));
}

uint64_t sub_24AD1B160()
{
  v1 = *v0;

  return MEMORY[0x282200920](v1 + 16);
}

uint64_t sub_24AD1B27C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD1B2FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD1B37C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD1B3FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD1B460()
{
  sub_24AD06458(v0 + 696);

  return MEMORY[0x282200920](v0 + 16);
}

uint64_t sub_24AD1B4F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD1B554(_BYTE *a1)
{
  *(v2 + 64) = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61B8, &qword_24AD608B8);
  *(v2 + 72) = v4;
  *(v2 + 80) = *(v4 - 8);
  *(v2 + 88) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FA0, &qword_24AD5FE50);
  *(v2 + 96) = v5;
  *(v2 + 104) = *(v5 - 8);
  *(v2 + 112) = swift_task_alloc();
  *(v2 + 121) = *a1;

  return MEMORY[0x2822009F8](sub_24AD1B694, v1, 0);
}

uint64_t sub_24AD1B694()
{
  v49 = v0;
  v1 = *(v0 + 121);
  v2 = *(v0 + 64);
  v3 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_state;
  swift_beginAccess();
  if (*(v2 + v3) != v1)
  {
    if (qword_281064D90 != -1)
    {
LABEL_55:
      swift_once();
    }

    v4 = sub_24AD5E7A4();
    __swift_project_value_buffer(v4, qword_281065448);

    v5 = sub_24AD5E784();
    v6 = sub_24AD5EB64();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 136315394;
      v9 = *(v2 + v3);
      v46 = v8;
      v48 = v8;
      if (v9 <= 2)
      {
        if (v9)
        {
          if (v9 == 1)
          {
            v11 = 0x6C696176616E752ELL;
            v10 = 0xEC000000656C6261;
          }

          else
          {
            v11 = 0x756F6363416F6E2ELL;
            v10 = 0xEA0000000000746ELL;
          }
        }

        else
        {
          v10 = 0xE800000000000000;
          v11 = 0x6E776F6E6B6E752ELL;
        }
      }

      else if (v9 > 4)
      {
        if (v9 == 5)
        {
          v11 = 0x62616C696176612ELL;
          v10 = 0xEA0000000000656CLL;
        }

        else
        {
          v11 = 0x6E6F43736E70612ELL;
          v10 = 0xEE0064657463656ELL;
        }
      }

      else if (v9 == 3)
      {
        v10 = 0xE800000000000000;
        v11 = 0x676E6964616F6C2ELL;
      }

      else
      {
        v11 = 0x646C69756265722ELL;
        v10 = 0xEB00000000676E69;
      }

      v12 = *(v0 + 121);
      v13 = sub_24AD2EDAC(v11, v10, &v48);

      *(v7 + 4) = v13;
      v14 = 0x62616C696176612ELL;
      *(v7 + 12) = 2080;
      if (v12 == 5)
      {
        v15 = 0xEA0000000000656CLL;
      }

      else
      {
        v14 = 0x6E6F43736E70612ELL;
        v15 = 0xEE0064657463656ELL;
      }

      v16 = 0xE800000000000000;
      v17 = 0x676E6964616F6C2ELL;
      if (v12 != 3)
      {
        v17 = 0x646C69756265722ELL;
        v16 = 0xEB00000000676E69;
      }

      if (v12 <= 4)
      {
        v14 = v17;
        v15 = v16;
      }

      v18 = 0x6C696176616E752ELL;
      v19 = 0xEA0000000000746ELL;
      if (v12 == 1)
      {
        v19 = 0xEC000000656C6261;
      }

      else
      {
        v18 = 0x756F6363416F6E2ELL;
      }

      if (!v12)
      {
        v18 = 0x6E776F6E6B6E752ELL;
        v19 = 0xE800000000000000;
      }

      if (v12 <= 2)
      {
        v20 = v18;
      }

      else
      {
        v20 = v14;
      }

      if (v12 <= 2)
      {
        v21 = v19;
      }

      else
      {
        v21 = v15;
      }

      v22 = sub_24AD2EDAC(v20, v21, &v48);

      *(v7 + 14) = v22;
      _os_log_impl(&dword_24ACF2000, v5, v6, "State: %s -> %s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C22F400](v46, -1, -1);
      MEMORY[0x24C22F400](v7, -1, -1);
    }

    v23 = *(v0 + 64);
    *(v2 + v3) = *(v0 + 121);
    v24 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_stateContinuations;
    swift_beginAccess();
    v25 = *(v23 + v24);
    v26 = *(v25 + 16);
    if (v26)
    {
      v27 = sub_24AD5E784();
      v28 = sub_24AD5EB64();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 134217984;
        *(v29 + 4) = v26;
        _os_log_impl(&dword_24ACF2000, v27, v28, "Publishing State change event to %ld subscribers", v29, 0xCu);
        MEMORY[0x24C22F400](v29, -1, -1);
      }

      v25 = *(v23 + v24);
    }

    v45 = v0;
    v30 = v25 + 64;
    v31 = -1;
    v32 = -1 << *(v25 + 32);
    if (-v32 < 64)
    {
      v31 = ~(-1 << -v32);
    }

    v33 = v31 & *(v25 + 64);
    v2 = (63 - v32) >> 6;
    v42 = (*(v0 + 80) + 8);
    v43 = *(v0 + 104);
    v44 = v25;

    v3 = 0;
    if (v33)
    {
      while (1)
      {
        v34 = v3;
LABEL_48:
        v0 = v45;
        v35 = *(v45 + 121);
        v36 = *(v45 + 112);
        v38 = *(v45 + 88);
        v37 = *(v45 + 96);
        v47 = *(v45 + 72);
        v39 = __clz(__rbit64(v33));
        v33 &= v33 - 1;
        (*(v43 + 16))(v36, *(v44 + 56) + *(v43 + 72) * (v39 | (v34 << 6)), v37);
        *(v45 + 120) = v35;
        sub_24AD5E984();
        (*v42)(v38, v47);
        (*(v43 + 8))(v36, v37);
        if (!v33)
        {
          goto LABEL_44;
        }
      }
    }

    while (1)
    {
LABEL_44:
      v34 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        goto LABEL_55;
      }

      if (v34 >= v2)
      {
        break;
      }

      v33 = *(v30 + 8 * v34);
      ++v3;
      if (v33)
      {
        v3 = v34;
        goto LABEL_48;
      }
    }

    v0 = v45;
  }

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_24AD1BCAC()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_24AD1BD48;

  return sub_24ACF4688();
}

uint64_t sub_24AD1BD48(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_24AD1BE48(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_24AD1BF34;

  return v5();
}

uint64_t sub_24AD1BF34(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_24AD1C064()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCache);
  *(v0 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24AD1C090, v1, 0);
}

uint64_t sub_24AD1C090()
{
  v1 = sub_24ACFABB4();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24AD1C10C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24AD1C130, v2, 0);
}

uint64_t sub_24AD1C130()
{
  if (sub_24AD1C25C(1u, *(v0[4] + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_databases)))
  {
    v1 = swift_task_alloc();
    v0[5] = v1;
    *v1 = v0;
    v1[1] = sub_24AD38C44;
    v3 = v0[2];
    v2 = v0[3];

    return sub_24AD39F84(v3, v2);
  }

  else
  {
    sub_24AD3514C();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }
}

BOOL sub_24AD1C25C(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_24AD5F074();
  MEMORY[0x24C22ED70](v3);
  v4 = sub_24AD5F094();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_24AD1C328(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24AD1C34C, v2, 0);
}

uint64_t sub_24AD1C34C()
{
  if (sub_24AD1C25C(1u, *(v0[4] + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_databases)))
  {
    v1 = swift_task_alloc();
    v0[5] = v1;
    *v1 = v0;
    v1[1] = sub_24AD38C44;
    v3 = v0[2];
    v2 = v0[3];

    return sub_24AD3A204(v3, v2);
  }

  else
  {
    sub_24AD3514C();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_24AD1C478(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24AD1C49C, v2, 0);
}

uint64_t sub_24AD1C49C()
{
  if (sub_24AD1C25C(1u, *(v0[4] + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_databases)))
  {
    sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
    sub_24AD5E844();

    v1 = sub_24AD5EB74();
    v0[5] = v1;
    v2 = swift_task_alloc();
    v0[6] = v2;
    *v2 = v0;
    v2[1] = sub_24AD1C63C;

    return sub_24ACF834C(v1);
  }

  else
  {
    sub_24AD3514C();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_24AD1C63C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v4 = *(v3 + 32);
    v5 = sub_24AD1C828;
  }

  else
  {
    v6 = *(v3 + 32);

    v5 = sub_24AD1C760;
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AD1C760()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = [*(v0 + 56) participants];
    sub_24AD06578(0, &qword_27EFA6100, 0x277CBC6A0);
    v3 = sub_24AD5E8C4();
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_24AD1C828()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD1C88C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24AD1C8B0, v2, 0);
}

uint64_t sub_24AD1C8B0()
{
  if (sub_24AD1C25C(1u, *(v0[4] + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_databases)))
  {
    v1 = swift_task_alloc();
    v0[5] = v1;
    *v1 = v0;
    v1[1] = sub_24AD1C9DC;
    v3 = v0[2];
    v2 = v0[3];

    return sub_24AD3A560(v3, v2);
  }

  else
  {
    sub_24AD3514C();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_24AD1C9DC(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_24AD1CADC(uint64_t a1)
{
  v2[53] = a1;
  v2[54] = v1;
  v2[55] = *v1;
  return MEMORY[0x2822009F8](sub_24AD1CB24, v1, 0);
}

uint64_t sub_24AD1CB24()
{
  v1 = *(v0[54] + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_databases);
  v0[56] = v1;
  if (sub_24AD1C25C(1u, v1))
  {
    v2 = *(v0[54] + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCoordinator);
    v0[57] = v2;

    return MEMORY[0x2822009F8](sub_24AD1CC20, v2, 0);
  }

  else
  {
    sub_24AD3514C();
    swift_allocError();
    *v3 = 1;
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_24AD1CC20()
{
  v1 = v0[53];
  v2 = *(v0[57] + 112);
  v0[2] = v0;
  v0[7] = v0 + 52;
  v0[3] = sub_24AD1CD50;
  v3 = swift_continuation_init();
  v0[44] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6108, &qword_24AD604F8);
  v0[37] = MEMORY[0x277D85DD0];
  v0[38] = 1107296256;
  v0[39] = sub_24AD2E470;
  v0[40] = &block_descriptor;
  v0[41] = v3;
  [v2 acceptShareMetadata:v1 completionHandler:v0 + 37];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24AD1CD50()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 464) = v2;
  v3 = *(v1 + 456);
  if (v2)
  {
    v4 = sub_24AD1CE64;
  }

  else
  {
    v4 = sub_24AD1CED0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AD1CE64(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_24AD1CED0()
{
  v1 = v0[54];
  v0[59] = v0[52];
  return MEMORY[0x2822009F8](sub_24AD1CEF4, v1, 0);
}

uint64_t sub_24AD1CEF4()
{
  v16 = v0;
  v1 = *(v0 + 472);
  v2 = *(v0 + 432);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6110, &qword_24AD60500);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24AD5F820;
  v4 = v1;
  *(inited + 32) = [v4 recordID];
  *(inited + 40) = v4;
  *(inited + 48) = 0;
  v5 = sub_24AD34694(inited);
  swift_setDeallocating();
  sub_24AD06518(inited + 32, &qword_27EFA6118, &qword_24AD60508);
  v6 = sub_24AD3479C(MEMORY[0x277D84F90]);
  v15 = 1;
  sub_24AD3B138(v5, v6, &v15, v13);

  v7 = v13[3];
  *(v0 + 112) = v13[2];
  *(v0 + 128) = v7;
  *(v0 + 144) = v14;
  v8 = v13[1];
  *(v0 + 80) = v13[0];
  *(v0 + 96) = v8;
  v9 = *(v2 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCache);
  v10 = *(v0 + 80);
  *(v0 + 168) = *(v0 + 96);
  v11 = *(v0 + 128);
  *(v0 + 184) = *(v0 + 112);
  *(v0 + 200) = v11;
  *(v0 + 480) = v9;
  *(v0 + 216) = *(v0 + 144);
  *(v0 + 152) = v10;

  return MEMORY[0x2822009F8](sub_24AD1D07C, v9, 0);
}

uint64_t sub_24AD1D07C()
{
  sub_24ACFBDBC((v0 + 152));
  *(v0 + 488) = 0;
  v1 = *(v0 + 432);

  return MEMORY[0x2822009F8](sub_24AD1D10C, v1, 0);
}

uint64_t sub_24AD1D10C()
{
  v1 = *(*(v0 + 432) + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_dataStore + 8);
  ObjectType = swift_getObjectType();
  *(v0 + 288) = *(v0 + 144);
  v3 = *(v0 + 128);
  *(v0 + 256) = *(v0 + 112);
  *(v0 + 272) = v3;
  v4 = *(v0 + 96);
  *(v0 + 224) = *(v0 + 80);
  *(v0 + 240) = v4;
  v7 = (*(v1 + 24) + **(v1 + 24));
  v5 = swift_task_alloc();
  *(v0 + 496) = v5;
  *v5 = v0;
  v5[1] = sub_24AD1D25C;

  return v7(v0 + 224, ObjectType, v1);
}

uint64_t sub_24AD1D25C()
{
  v2 = *v1;
  *(*v1 + 504) = v0;

  v3 = *(v2 + 432);
  if (v0)
  {
    v4 = sub_24AD1D6CC;
  }

  else
  {
    v4 = sub_24AD1D374;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AD1D374()
{
  v2 = v0[55];
  v1 = v0[56];
  v3 = v0[54];
  v4 = swift_task_alloc();
  v0[64] = v4;
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[65] = v5;
  *v5 = v0;
  v5[1] = sub_24AD1D458;

  return MEMORY[0x28215EB00]("syncWithCloudKit", 16, 2, &unk_24AD60510, v4);
}

uint64_t sub_24AD1D458()
{
  v2 = *v1;
  *(*v1 + 528) = v0;

  if (v0)
  {
    v3 = *(v2 + 432);
    v4 = sub_24AD1D5EC;
  }

  else
  {
    v5 = *(v2 + 432);

    v4 = sub_24AD1D580;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AD1D580()
{
  v1 = *(v0 + 472);
  sub_24AD06458(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AD1D5EC()
{
  v1 = *(v0 + 472);

  sub_24AD06458(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AD1D660()
{
  sub_24AD06458(v0 + 80);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD1D6CC()
{
  sub_24AD06458(v0 + 80);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD1D738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[33] = a4;
  v5[34] = v4;
  v5[31] = a2;
  v5[32] = a3;
  v5[30] = a1;
  return MEMORY[0x2822009F8](sub_24AD1D760, v4, 0);
}

uint64_t sub_24AD1D760()
{
  if (sub_24AD1C25C(1u, *(v0[34] + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_databases)))
  {
    v1 = v0[34];
    sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
    sub_24AD5E844();

    v2 = sub_24AD5EB74();
    v0[35] = v2;
    v0[36] = *(v1 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCache);
    v3 = swift_task_alloc();
    v0[37] = v3;
    *v3 = v0;
    v3[1] = sub_24AD1D904;

    return sub_24ACF834C(v2);
  }

  else
  {
    sub_24AD3514C();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_24AD1D904(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 304) = a1;
  *(v4 + 312) = v1;

  v5 = *(v3 + 272);
  if (v1)
  {
    v6 = sub_24AD1DDC0;
  }

  else
  {
    v6 = sub_24AD1DA38;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AD1DA38()
{
  v1 = *(v0 + 304);
  if (v1)
  {
    v2 = *(v0 + 272);
    [*(v0 + 304) addParticipant_];
    v3 = *(v2 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCoordinator);
    *(v0 + 320) = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6120, &qword_24AD60CA0);
    v4 = swift_allocObject();
    *(v0 + 328) = v4;
    *(v4 + 16) = xmmword_24AD60330;
    *(v4 + 32) = v1;
    v5 = v1;

    return MEMORY[0x2822009F8](sub_24AD1DB7C, v3, 0);
  }

  else
  {
    v6 = *(v0 + 280);
    sub_24AD3514C();
    swift_allocError();
    *v7 = 2;
    swift_willThrow();

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_24AD1DB7C()
{
  v1 = [*(v0[40] + 112) privateCloudDatabase];
  v0[42] = v1;
  v2 = swift_task_alloc();
  v0[43] = v2;
  *v2 = v0;
  v2[1] = sub_24AD1DC48;
  v3 = v0[41];
  v4 = MEMORY[0x277D84F90];

  return sub_24AD4631C(v3, v4, v1, 0, 1);
}

uint64_t sub_24AD1DC48(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[44] = a1;
  v5[45] = a2;
  v5[46] = v2;

  v6 = v4[42];
  if (v2)
  {
    v7 = v5[38];
    v8 = v5[34];

    v9 = sub_24AD1E080;
  }

  else
  {
    v8 = v5[34];

    v9 = sub_24AD1DE24;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_24AD1DDC0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD1DE24()
{
  v23 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 304);

  v3 = [v2 recordID];

  if (!*(v1 + 16) || (v4 = sub_24AD09620(v3), (v5 & 1) == 0))
  {

LABEL_6:
    v11 = *(v0 + 304);
    v12 = *(v0 + 280);

    sub_24AD3514C();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();

    goto LABEL_7;
  }

  v6 = *(*(v0 + 352) + 56) + 16 * v4;
  v7 = *v6;
  *(v0 + 376) = *v6;
  v8 = *(v6 + 8);
  sub_24ACF40BC(v7);

  if (v8)
  {
    v9 = *(v0 + 304);
    v10 = *(v0 + 280);

    *(v0 + 232) = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
    swift_willThrowTypedImpl();

LABEL_7:
    v14 = *(v0 + 8);

    return v14();
  }

  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  *(v0 + 384) = v16;
  if (!v16)
  {
    sub_24AD35214(v7);

    goto LABEL_6;
  }

  v18 = *(v0 + 352);
  v17 = *(v0 + 360);
  v19 = *(v0 + 288);
  v22[0] = 0;
  sub_24AD3B138(v18, v17, v22, v0 + 16);

  v20 = *(v0 + 16);
  *(v0 + 104) = *(v0 + 32);
  v21 = *(v0 + 64);
  *(v0 + 120) = *(v0 + 48);
  *(v0 + 136) = v21;
  *(v0 + 152) = *(v0 + 80);
  *(v0 + 88) = v20;

  return MEMORY[0x2822009F8](sub_24AD1E0EC, v19, 0);
}

uint64_t sub_24AD1E080()
{
  v1 = *(v0 + 304);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AD1E0EC()
{
  v1 = *(v0 + 368);
  sub_24ACFBDBC((v0 + 88));
  *(v0 + 392) = v1;
  v2 = *(v0 + 272);
  if (v1)
  {
    v3 = sub_24AD1E76C;
  }

  else
  {
    v3 = sub_24AD1E17C;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_24AD1E17C()
{
  v1 = *(*(v0 + 272) + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_dataStore + 8);
  ObjectType = swift_getObjectType();
  *(v0 + 224) = *(v0 + 80);
  v3 = *(v0 + 64);
  *(v0 + 192) = *(v0 + 48);
  *(v0 + 208) = v3;
  v4 = *(v0 + 32);
  *(v0 + 160) = *(v0 + 16);
  *(v0 + 176) = v4;
  v7 = (*(v1 + 24) + **(v1 + 24));
  v5 = swift_task_alloc();
  *(v0 + 400) = v5;
  *v5 = v0;
  v5[1] = sub_24AD1E2CC;

  return v7(v0 + 160, ObjectType, v1);
}

uint64_t sub_24AD1E2CC()
{
  v2 = *v1;
  *(*v1 + 408) = v0;

  v3 = *(v2 + 272);
  if (v0)
  {
    v4 = sub_24AD1E7F0;
  }

  else
  {
    v4 = sub_24AD1E3E4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AD1E3E4()
{
  v1 = [*(v0 + 384) URL];
  if (!v1)
  {
    v11 = *(v0 + 376);
    v12 = *(v0 + 304);
    v13 = *(v0 + 280);
    sub_24AD3514C();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
    sub_24AD06458(v0 + 16);
    sub_24AD35214(v11);

LABEL_24:
    v29 = *(v0 + 8);

    return v29();
  }

  v2 = *(v0 + 384);
  v3 = v1;
  sub_24AD5E354();

  v4 = [v2 participants];
  sub_24AD06578(0, &qword_27EFA6100, 0x277CBC6A0);
  v5 = sub_24AD5E8C4();

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_4;
    }

    goto LABEL_22;
  }

LABEL_21:
  v6 = sub_24AD5EC94();
  if (!v6)
  {
LABEL_22:
    v25 = *(v0 + 376);
    v17 = *(v0 + 304);
    v26 = *(v0 + 280);
    v22 = *(v0 + 240);

    sub_24AD3514C();
    swift_allocError();
    *v27 = 0;
    swift_willThrow();

    sub_24AD06458(v0 + 16);
    v24 = v25;
LABEL_23:
    sub_24AD35214(v24);

    v28 = sub_24AD5E364();
    (*(*(v28 - 8) + 8))(v22, v28);
    goto LABEL_24;
  }

LABEL_4:
  v7 = 0;
  while (1)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x24C22EA30](v7, v5);
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v8 = *(v5 + 8 * v7 + 32);
    }

    v9 = v8;
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    sub_24AD06578(0, &qword_281064970, 0x277D82BB8);
    if (sub_24AD5EC04())
    {
      break;
    }

    ++v7;
    if (v10 == v6)
    {
      goto LABEL_22;
    }
  }

  v15 = [v9 invitationToken];
  v16 = *(v0 + 376);
  v17 = *(v0 + 304);
  v18 = *(v0 + 280);
  if (!v15)
  {
    v22 = *(v0 + 240);
    sub_24AD3514C();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();

    sub_24AD06458(v0 + 16);
    v24 = v16;
    goto LABEL_23;
  }

  v19 = v15;

  sub_24AD06458(v0 + 16);
  sub_24AD35214(v16);

  v20 = *(v0 + 8);

  return v20(v19);
}

uint64_t sub_24AD1E76C()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 280);

  sub_24AD35214(v1);
  sub_24AD06458(v0 + 16);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24AD1E7F0()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 280);

  sub_24AD35214(v1);
  sub_24AD06458(v0 + 16);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24AD1E874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[32] = a3;
  v4[33] = v3;
  v4[30] = a1;
  v4[31] = a2;
  return MEMORY[0x2822009F8](sub_24AD1E898, v3, 0);
}

uint64_t sub_24AD1E898()
{
  if (sub_24AD1C25C(1u, *(v0[33] + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_databases)))
  {
    v1 = v0[33];
    sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
    sub_24AD5E844();

    v2 = sub_24AD5EB74();
    v0[34] = v2;
    v0[35] = *(v1 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCache);
    v3 = swift_task_alloc();
    v0[36] = v3;
    *v3 = v0;
    v3[1] = sub_24AD1EA3C;

    return sub_24ACF834C(v2);
  }

  else
  {
    sub_24AD3514C();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_24AD1EA3C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 296) = a1;
  *(v4 + 304) = v1;

  v5 = *(v3 + 264);
  if (v1)
  {
    v6 = sub_24AD1EEF8;
  }

  else
  {
    v6 = sub_24AD1EB70;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AD1EB70(uint64_t a1)
{
  v2 = *(v1 + 296);
  if (v2)
  {
    v3 = *(v1 + 264);
    [*(v1 + 296) removeParticipant_];
    v4 = *(v3 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCoordinator);
    *(v1 + 312) = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6120, &qword_24AD60CA0);
    v5 = swift_allocObject();
    *(v1 + 320) = v5;
    *(v5 + 16) = xmmword_24AD60330;
    *(v5 + 32) = v2;
    v6 = v2;

    return MEMORY[0x2822009F8](sub_24AD1ECB4, v4, 0);
  }

  else
  {
    v7 = *(v1 + 272);
    sub_24AD3514C();
    swift_allocError();
    *v8 = 2;
    swift_willThrow();

    v9 = *(v1 + 8);

    return v9();
  }
}

uint64_t sub_24AD1ECB4()
{
  v1 = [*(v0[39] + 112) privateCloudDatabase];
  v0[41] = v1;
  v2 = swift_task_alloc();
  v0[42] = v2;
  *v2 = v0;
  v2[1] = sub_24AD1ED80;
  v3 = v0[40];
  v4 = MEMORY[0x277D84F90];

  return sub_24AD4631C(v3, v4, v1, 0, 1);
}

uint64_t sub_24AD1ED80(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[43] = a1;
  v5[44] = a2;
  v5[45] = v2;

  v6 = v4[41];
  if (v2)
  {
    v7 = v5[37];
    v8 = v5[33];

    v9 = sub_24AD1F140;
  }

  else
  {
    v8 = v5[33];

    v9 = sub_24AD1EF5C;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_24AD1EEF8()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD1EF5C()
{
  v19 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 296);

  v3 = [v2 recordID];

  if (*(v1 + 16) && (v4 = sub_24AD09620(v3), (v5 & 1) != 0))
  {
    v6 = *(*(v0 + 344) + 56) + 16 * v4;
    v7 = *v6;
    v8 = *(v6 + 8);
    sub_24ACF40BC(*v6);

    if (v8)
    {
      v9 = *(v0 + 296);
      v10 = *(v0 + 272);

      *(v0 + 232) = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
      swift_willThrowTypedImpl();

      v11 = *(v0 + 8);

      return v11();
    }

    sub_24AD35214(v7);
  }

  else
  {
  }

  v14 = *(v0 + 344);
  v13 = *(v0 + 352);
  v15 = *(v0 + 280);
  v18 = 0;
  sub_24AD3B138(v14, v13, &v18, v0 + 16);

  v16 = *(v0 + 16);
  *(v0 + 104) = *(v0 + 32);
  v17 = *(v0 + 64);
  *(v0 + 120) = *(v0 + 48);
  *(v0 + 136) = v17;
  *(v0 + 152) = *(v0 + 80);
  *(v0 + 88) = v16;

  return MEMORY[0x2822009F8](sub_24AD1F1AC, v15, 0);
}

uint64_t sub_24AD1F140()
{
  v1 = *(v0 + 296);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AD1F1AC()
{
  v1 = *(v0 + 360);
  sub_24ACFBDBC((v0 + 88));
  *(v0 + 368) = v1;
  v2 = *(v0 + 264);
  if (v1)
  {
    v3 = sub_24AD1F518;
  }

  else
  {
    v3 = sub_24AD1F23C;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_24AD1F23C()
{
  v1 = *(*(v0 + 264) + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_dataStore + 8);
  ObjectType = swift_getObjectType();
  *(v0 + 224) = *(v0 + 80);
  v3 = *(v0 + 64);
  *(v0 + 192) = *(v0 + 48);
  *(v0 + 208) = v3;
  v4 = *(v0 + 32);
  *(v0 + 160) = *(v0 + 16);
  *(v0 + 176) = v4;
  v7 = (*(v1 + 24) + **(v1 + 24));
  v5 = swift_task_alloc();
  *(v0 + 376) = v5;
  *v5 = v0;
  v5[1] = sub_24AD1F38C;

  return v7(v0 + 160, ObjectType, v1);
}

uint64_t sub_24AD1F38C()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  v3 = *(v2 + 264);
  if (v0)
  {
    v4 = sub_24AD1F58C;
  }

  else
  {
    v4 = sub_24AD1F4A4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AD1F4A4()
{
  v1 = v0[37];
  v2 = v0[34];
  sub_24AD06458((v0 + 2));

  v3 = v0[1];

  return v3();
}

uint64_t sub_24AD1F518()
{
  v1 = *(v0 + 296);

  sub_24AD06458(v0 + 16);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AD1F58C()
{
  v1 = *(v0 + 296);

  sub_24AD06458(v0 + 16);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AD1F600(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24AD1F624, v2, 0);
}

uint64_t sub_24AD1F624()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCache);
  v0[5] = v1;
  sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
  sub_24AD5E844();

  v0[6] = sub_24AD5EB74();

  return MEMORY[0x2822009F8](sub_24AD1F704, v1, 0);
}

uint64_t sub_24AD1F704()
{
  type metadata accessor for CloudKitCacheDatabase(0);
  sub_24AD34F14(&qword_281064FE8, type metadata accessor for CloudKitCacheDatabase, &unk_24AD5FCC0);
  *(v0 + 56) = sub_24AD5E694();

  return MEMORY[0x2822009F8](sub_24AD1F7B8, 0, 0);
}

uint64_t sub_24AD1F7B8()
{
  if (v0[7])
  {
    v1 = v0[5];

    return MEMORY[0x2822009F8](sub_24AD1F914, v1, 0);
  }

  else
  {
    v2 = v0[6];
    v3 = sub_24AD5E664();
    sub_24AD34F14(&qword_27EFA5EF0, MEMORY[0x277D094E8], MEMORY[0x277D094F0]);
    swift_allocError();
    (*(*(v3 - 8) + 104))(v4, *MEMORY[0x277D094E0], v3);
    swift_willThrow();

    v5 = v0[1];

    return v5(0);
  }
}

uint64_t sub_24AD1F914()
{
  *(v0 + 72) = sub_24ACF7DD4(*(v0 + 48), *(v0 + 56));
  *(v0 + 64) = 0;

  return MEMORY[0x2822009F8](sub_24AD1F9AC, 0, 0);
}

uint64_t sub_24AD1F9AC()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1(v2);
}

uint64_t sub_24AD1FA1C()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_24AD1FA8C(uint64_t a1, uint64_t a2)
{
  v3[31] = a2;
  v3[32] = v2;
  v3[30] = a1;
  return MEMORY[0x2822009F8](sub_24AD1FAB0, v2, 0);
}

uint64_t sub_24AD1FAB0()
{
  if (sub_24AD1C25C(1u, *(v0[32] + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_databases)))
  {
    v1 = swift_task_alloc();
    v0[33] = v1;
    *v1 = v0;
    v1[1] = sub_24AD1FBD0;
    v2 = v0[31];
    v3 = v0[30];

    return sub_24AD1F600(v3, v2);
  }

  else
  {
    sub_24AD3514C();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_24AD1FBD0(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v4 + 256);
    *(v4 + 376) = a1 & 1;

    return MEMORY[0x2822009F8](sub_24AD1FD20, v8, 0);
  }
}

uint64_t sub_24AD1FD20(uint64_t a1)
{
  if (*(v1 + 376))
  {
    sub_24AD3514C();
    swift_allocError();
    *v2 = 3;
    swift_willThrow();
    v3 = *(v1 + 8);

    return v3();
  }

  else
  {
    v5 = *(v1 + 256);
    sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
    sub_24AD5E844();

    v6 = sub_24AD5EB74();
    *(v1 + 272) = v6;
    v7 = [objc_allocWithZone(MEMORY[0x277CBC680]) initWithRecordZoneID_];
    *(v1 + 280) = v7;
    v8 = *(v5 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCoordinator);
    *(v1 + 288) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6120, &qword_24AD60CA0);
    v9 = swift_allocObject();
    *(v1 + 296) = v9;
    *(v9 + 16) = xmmword_24AD60330;
    *(v9 + 32) = v7;
    v10 = v7;

    return MEMORY[0x2822009F8](sub_24AD1FEE4, v8, 0);
  }
}

uint64_t sub_24AD1FEE4()
{
  v1 = [*(v0[36] + 112) privateCloudDatabase];
  v0[38] = v1;
  v2 = swift_task_alloc();
  v0[39] = v2;
  *v2 = v0;
  v2[1] = sub_24AD1FFB0;
  v3 = v0[37];
  v4 = MEMORY[0x277D84F90];

  return sub_24AD4631C(v3, v4, v1, 0, 1);
}

uint64_t sub_24AD1FFB0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[40] = a1;
  v5[41] = a2;
  v5[42] = v2;

  v6 = v4[38];
  if (v2)
  {
    v7 = v5[35];
    v8 = v5[32];

    v9 = sub_24AD20314;
  }

  else
  {
    v8 = v5[32];

    v9 = sub_24AD20128;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_24AD20128()
{
  v20 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 280);

  v3 = [v2 recordID];

  if (*(v1 + 16) && (v4 = sub_24AD09620(v3), (v5 & 1) != 0))
  {
    v6 = *(*(v0 + 320) + 56) + 16 * v4;
    v7 = *v6;
    v8 = *(v6 + 8);
    sub_24ACF40BC(*v6);

    if (v8)
    {
      v10 = *(v0 + 272);
      v9 = *(v0 + 280);

      *(v0 + 232) = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
      swift_willThrowTypedImpl();

      v11 = *(v0 + 8);

      return v11();
    }

    sub_24AD35214(v7);
  }

  else
  {
  }

  v14 = *(v0 + 320);
  v13 = *(v0 + 328);
  v15 = *(v0 + 256);
  v19 = 0;
  sub_24AD3B138(v14, v13, &v19, v0 + 16);

  v16 = *(v15 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCache);
  v17 = *(v0 + 16);
  *(v0 + 104) = *(v0 + 32);
  v18 = *(v0 + 64);
  *(v0 + 120) = *(v0 + 48);
  *(v0 + 136) = v18;
  *(v0 + 344) = v16;
  *(v0 + 152) = *(v0 + 80);
  *(v0 + 88) = v17;

  return MEMORY[0x2822009F8](sub_24AD2037C, v16, 0);
}

uint64_t sub_24AD20314()
{
  v1 = *(v0 + 280);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AD2037C()
{
  v1 = *(v0 + 336);
  sub_24ACFBDBC((v0 + 88));
  *(v0 + 352) = v1;
  v2 = *(v0 + 256);
  if (v1)
  {
    v3 = sub_24AD206E0;
  }

  else
  {
    v3 = sub_24AD20408;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_24AD20408()
{
  v1 = *(*(v0 + 256) + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_dataStore + 8);
  ObjectType = swift_getObjectType();
  *(v0 + 224) = *(v0 + 80);
  v3 = *(v0 + 64);
  *(v0 + 192) = *(v0 + 48);
  *(v0 + 208) = v3;
  v4 = *(v0 + 32);
  *(v0 + 160) = *(v0 + 16);
  *(v0 + 176) = v4;
  v7 = (*(v1 + 24) + **(v1 + 24));
  v5 = swift_task_alloc();
  *(v0 + 360) = v5;
  *v5 = v0;
  v5[1] = sub_24AD20558;

  return v7(v0 + 160, ObjectType, v1);
}

uint64_t sub_24AD20558()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  v3 = *(v2 + 256);
  if (v0)
  {
    v4 = sub_24AD20750;
  }

  else
  {
    v4 = sub_24AD20670;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AD20670()
{
  v1 = v0[34];
  v2 = v0[35];
  sub_24AD06458((v0 + 2));

  v3 = v0[1];

  return v3();
}

uint64_t sub_24AD206E0()
{
  v1 = *(v0 + 280);

  sub_24AD06458(v0 + 16);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AD20750()
{
  v1 = *(v0 + 280);

  sub_24AD06458(v0 + 16);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AD207C0(uint64_t a1, uint64_t a2)
{
  v3[38] = a2;
  v3[39] = v2;
  v3[37] = a1;
  return MEMORY[0x2822009F8](sub_24AD207E4, v2, 0);
}

uint64_t sub_24AD207E4()
{
  if (sub_24AD1C25C(1u, *(v0[39] + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_databases)))
  {
    v1 = v0[39];
    sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
    sub_24AD5E844();

    v2 = sub_24AD5EB74();
    v0[40] = v2;
    v0[41] = *(v1 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCache);
    v3 = swift_task_alloc();
    v0[42] = v3;
    *v3 = v0;
    v3[1] = sub_24AD20988;

    return sub_24ACF834C(v2);
  }

  else
  {
    sub_24AD3514C();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_24AD20988(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 344) = a1;
  *(v4 + 352) = v1;

  v5 = *(v3 + 312);
  if (v1)
  {
    v6 = sub_24AD20E20;
  }

  else
  {
    v6 = sub_24AD20ABC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AD20ABC()
{
  v1 = *(v0 + 344);
  if (v1)
  {
    v2 = *(v0 + 312);
    v3 = v1;
    v4 = sub_24AD5EBE4();
    v6 = v5;
    *(v0 + 360) = v4;
    *(v0 + 368) = v5;
    v7 = [v3 recordID];
    *(v0 + 376) = v7;

    v8 = *(v2 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCoordinator);
    *(v0 + 384) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6130, &unk_24AD60540);
    inited = swift_initStackObject();
    *(v0 + 392) = inited;
    *(inited + 16) = xmmword_24AD5F820;
    *(inited + 32) = v4;
    *(inited + 40) = v6;
    *(inited + 48) = v7;

    v10 = v7;

    return MEMORY[0x2822009F8](sub_24AD20C0C, v8, 0);
  }

  else
  {

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_24AD20C0C()
{
  v1 = [*(v0[48] + 112) privateCloudDatabase];
  v0[50] = v1;
  v2 = swift_task_alloc();
  v0[51] = v2;
  *v2 = v0;
  v2[1] = sub_24AD20CD8;
  v3 = v0[49];
  v4 = MEMORY[0x277D84F90];

  return sub_24AD4631C(v4, v3, v1, 0, 1);
}

uint64_t sub_24AD20CD8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[52] = a1;
  v4[53] = a2;
  v4[54] = v2;

  if (v2)
  {
    v5 = v4[48];
    v6 = sub_24AD21060;
  }

  else
  {
    v7 = v4[50];
    v8 = v4[39];

    swift_setDeallocating();
    swift_arrayDestroy();
    v6 = sub_24AD20E84;
    v5 = v8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AD20E20()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD20E84()
{
  v25 = v0;
  if (*(*(v0 + 424) + 16))
  {
    v2 = *(v0 + 368);
    v1 = *(v0 + 376);
    v3 = *(v0 + 360);

    v4 = sub_24AD096B4(v3, v2, v1);
    if (v5)
    {
      v6 = *(*(v0 + 424) + 56) + 16 * v4;
      v7 = *v6;
      v8 = *(v6 + 8);
      sub_24AD063F0(*v6, v8);

      if (v8)
      {
        v9 = *(v0 + 376);
        v10 = *(v0 + 344);
        v11 = *(v0 + 320);

        *(v0 + 288) = v7;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
        swift_willThrowTypedImpl();

        v12 = *(v0 + 8);

        return v12();
      }
    }

    else
    {
    }
  }

  v15 = *(v0 + 416);
  v14 = *(v0 + 424);
  v16 = *(v0 + 328);
  v24 = 0;
  sub_24AD3B138(v15, v14, &v24, v22);

  v17 = v22[3];
  *(v0 + 48) = v22[2];
  *(v0 + 64) = v17;
  v18 = v22[1];
  *(v0 + 16) = v22[0];
  *(v0 + 32) = v18;
  v19 = *(v0 + 16);
  *(v0 + 104) = *(v0 + 32);
  v20 = *(v0 + 64);
  *(v0 + 120) = *(v0 + 48);
  *(v0 + 136) = v20;
  v21 = v23;
  *(v0 + 80) = v23;
  *(v0 + 152) = v21;
  *(v0 + 88) = v19;

  return MEMORY[0x2822009F8](sub_24AD21168, v16, 0);
}

uint64_t sub_24AD21060()
{
  v1 = *(v0 + 312);

  swift_setDeallocating();
  swift_arrayDestroy();

  return MEMORY[0x2822009F8](sub_24AD210E8, v1, 0);
}

uint64_t sub_24AD210E8()
{
  v1 = v0[47];
  v2 = v0[43];
  v3 = v0[40];

  v4 = v0[1];

  return v4();
}

uint64_t sub_24AD21168()
{
  v1 = *(v0 + 432);
  sub_24ACFBDBC((v0 + 88));
  *(v0 + 440) = v1;
  v2 = *(v0 + 312);
  if (v1)
  {
    v3 = sub_24AD214EC;
  }

  else
  {
    v3 = sub_24AD211F8;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_24AD211F8()
{
  v1 = *(*(v0 + 312) + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_dataStore + 8);
  ObjectType = swift_getObjectType();
  *(v0 + 224) = *(v0 + 80);
  v3 = *(v0 + 64);
  *(v0 + 192) = *(v0 + 48);
  *(v0 + 208) = v3;
  v4 = *(v0 + 32);
  *(v0 + 160) = *(v0 + 16);
  *(v0 + 176) = v4;
  v7 = (*(v1 + 24) + **(v1 + 24));
  v5 = swift_task_alloc();
  *(v0 + 448) = v5;
  *v5 = v0;
  v5[1] = sub_24AD21348;

  return v7(v0 + 160, ObjectType, v1);
}

uint64_t sub_24AD21348()
{
  v2 = *v1;
  *(*v1 + 456) = v0;

  v3 = *(v2 + 312);
  if (v0)
  {
    v4 = sub_24AD21574;
  }

  else
  {
    v4 = sub_24AD21460;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AD21460()
{
  v1 = v0[47];
  v2 = v0[43];
  v3 = v0[40];
  sub_24AD06458((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_24AD214EC()
{
  v1 = v0[47];
  v2 = v0[43];
  v3 = v0[40];

  sub_24AD06458((v0 + 2));
  v4 = v0[1];

  return v4();
}

uint64_t sub_24AD21574()
{
  v1 = v0[47];
  v2 = v0[43];
  v3 = v0[40];

  sub_24AD06458((v0 + 2));
  v4 = v0[1];

  return v4();
}

uint64_t sub_24AD215FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[40] = a4;
  v5[41] = v4;
  v5[38] = a2;
  v5[39] = a3;
  v5[37] = a1;
  return MEMORY[0x2822009F8](sub_24AD21624, v4, 0);
}

uint64_t sub_24AD21624()
{
  if (sub_24AD1C25C(1u, *(v0[41] + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_databases)))
  {
    v1 = v0[41];
    sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);

    v2 = sub_24AD5EB74();
    v0[42] = v2;
    v0[43] = *(v1 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCache);
    v3 = swift_task_alloc();
    v0[44] = v3;
    *v3 = v0;
    v3[1] = sub_24AD217BC;

    return sub_24ACF834C(v2);
  }

  else
  {
    sub_24AD3514C();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_24AD217BC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 360) = a1;
  *(v4 + 368) = v1;

  v5 = *(v3 + 328);
  if (v1)
  {
    v6 = sub_24AD21A20;
  }

  else
  {
    v6 = sub_24AD218F0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AD218F0()
{
  v1 = v0[45];
  if (!v1)
  {
    v1 = [objc_allocWithZone(MEMORY[0x277CBC680]) initWithRecordZoneID_];
  }

  v0[47] = v1;
  v2 = v0[41];
  v3 = v1;
  v4 = sub_24AD5EBE4();
  v6 = v5;
  v0[48] = v4;
  v0[49] = v5;
  v7 = [v3 recordID];
  v0[50] = v7;

  v8 = *(v2 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCoordinator);
  v0[51] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6130, &unk_24AD60540);
  inited = swift_initStackObject();
  v0[52] = inited;
  *(inited + 16) = xmmword_24AD5F820;
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  *(inited + 48) = v7;

  v10 = v7;

  return MEMORY[0x2822009F8](sub_24AD21A84, v8, 0);
}

uint64_t sub_24AD21A20()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD21A84()
{
  v1 = [*(v0[51] + 112) sharedCloudDatabase];
  v0[53] = v1;
  v2 = swift_task_alloc();
  v0[54] = v2;
  *v2 = v0;
  v2[1] = sub_24AD21B50;
  v3 = v0[52];
  v4 = MEMORY[0x277D84F90];

  return sub_24AD4631C(v4, v3, v1, 0, 1);
}

uint64_t sub_24AD21B50(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[55] = a1;
  v4[56] = a2;
  v4[57] = v2;

  if (v2)
  {
    v5 = v4[51];
    v6 = sub_24AD21E78;
  }

  else
  {
    v7 = v4[53];
    v8 = v4[41];

    swift_setDeallocating();
    swift_arrayDestroy();
    v6 = sub_24AD21C98;
    v5 = v8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AD21C98()
{
  v25 = v0;
  if (*(*(v0 + 448) + 16))
  {
    v2 = *(v0 + 392);
    v1 = *(v0 + 400);
    v3 = *(v0 + 384);

    v4 = sub_24AD096B4(v3, v2, v1);
    if (v5)
    {
      v6 = *(*(v0 + 448) + 56) + 16 * v4;
      v7 = *v6;
      v8 = *(v6 + 8);
      sub_24AD063F0(*v6, v8);

      if (v8)
      {
        v9 = *(v0 + 400);
        v10 = *(v0 + 376);
        v11 = *(v0 + 336);

        *(v0 + 288) = v7;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
        swift_willThrowTypedImpl();

        v12 = *(v0 + 8);

        return v12();
      }
    }

    else
    {
    }
  }

  v15 = *(v0 + 440);
  v14 = *(v0 + 448);
  v16 = *(v0 + 344);
  v24 = 1;
  sub_24AD3B138(v15, v14, &v24, v22);

  v17 = v22[3];
  *(v0 + 48) = v22[2];
  *(v0 + 64) = v17;
  v18 = v22[1];
  *(v0 + 16) = v22[0];
  *(v0 + 32) = v18;
  v19 = *(v0 + 16);
  *(v0 + 104) = *(v0 + 32);
  v20 = *(v0 + 64);
  *(v0 + 120) = *(v0 + 48);
  *(v0 + 136) = v20;
  v21 = v23;
  *(v0 + 80) = v23;
  *(v0 + 152) = v21;
  *(v0 + 88) = v19;

  return MEMORY[0x2822009F8](sub_24AD21F84, v16, 0);
}

uint64_t sub_24AD21E78()
{
  v1 = *(v0 + 328);

  swift_setDeallocating();
  swift_arrayDestroy();

  return MEMORY[0x2822009F8](sub_24AD21F00, v1, 0);
}

uint64_t sub_24AD21F00()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 336);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24AD21F84()
{
  v1 = *(v0 + 456);
  sub_24ACFBDBC((v0 + 88));
  *(v0 + 464) = v1;
  v2 = *(v0 + 328);
  if (v1)
  {
    v3 = sub_24AD22394;
  }

  else
  {
    v3 = sub_24AD22014;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_24AD22014()
{
  v1 = *(*(v0 + 328) + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_dataStore + 8);
  ObjectType = swift_getObjectType();
  *(v0 + 224) = *(v0 + 80);
  v3 = *(v0 + 64);
  *(v0 + 192) = *(v0 + 48);
  *(v0 + 208) = v3;
  v4 = *(v0 + 32);
  *(v0 + 160) = *(v0 + 16);
  *(v0 + 176) = v4;
  v7 = (*(v1 + 24) + **(v1 + 24));
  v5 = swift_task_alloc();
  *(v0 + 472) = v5;
  *v5 = v0;
  v5[1] = sub_24AD22164;

  return v7(v0 + 160, ObjectType, v1);
}

uint64_t sub_24AD22164()
{
  v2 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v3 = *(v2 + 328);
    v4 = sub_24AD22420;
  }

  else
  {
    v3 = *(v2 + 344);
    v4 = sub_24AD2227C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AD2227C()
{
  v1 = v0[60];
  sub_24ACFB24C(v0[42]);
  v0[61] = v1;
  v2 = v0[41];
  if (v1)
  {
    v3 = sub_24AD224AC;
  }

  else
  {
    v3 = sub_24AD22308;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_24AD22308()
{
  v1 = v0[50];
  v2 = v0[47];
  v3 = v0[42];
  sub_24AD06458((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_24AD22394()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 336);

  sub_24AD06458(v0 + 16);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24AD22420()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 336);

  sub_24AD06458(v0 + 16);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24AD224AC()
{
  v1 = v0[50];
  v2 = v0[47];
  v3 = v0[42];
  sub_24AD06458((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t CloudKitStorage.deinit()
{
  v1 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_containerURL;
  v2 = sub_24AD5E364();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitAccountStateStream;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60A0, &qword_24AD60368);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitPushStream;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6090, &qword_24AD60358);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  swift_unknownObjectRelease();

  swift_defaultActor_destroy();
  return v0;
}

uint64_t CloudKitStorage.__deallocating_deinit()
{
  CloudKitStorage.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t CloudKitStorage.State.description.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E752ELL;
  v3 = 0x62616C696176612ELL;
  if (v1 != 5)
  {
    v3 = 0x6E6F43736E70612ELL;
  }

  v4 = 0x676E6964616F6C2ELL;
  if (v1 != 3)
  {
    v4 = 0x646C69756265722ELL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6C696176616E752ELL;
  if (v1 != 1)
  {
    v5 = 0x756F6363416F6E2ELL;
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

uint64_t sub_24AD22824()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E752ELL;
  v3 = 0x62616C696176612ELL;
  if (v1 != 5)
  {
    v3 = 0x6E6F43736E70612ELL;
  }

  v4 = 0x676E6964616F6C2ELL;
  if (v1 != 3)
  {
    v4 = 0x646C69756265722ELL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6C696176616E752ELL;
  if (v1 != 1)
  {
    v5 = 0x756F6363416F6E2ELL;
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

uint64_t sub_24AD22940()
{
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_dataStore + 8);
  ObjectType = swift_getObjectType();
  v5 = (*(v1 + 8) + **(v1 + 8));
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_24AD22A70;

  return v5(ObjectType, v1);
}

uint64_t sub_24AD22A70(uint64_t a1)
{
  v2 = *(*v1 + 48);
  *(*v1 + 64) = a1;

  return MEMORY[0x2822009F8](sub_24AD22B88, v2, 0);
}

uint64_t sub_24AD22B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[8];
  v5 = *(v4 + 2);
  v3[9] = v5;
  if (v5)
  {
    v6 = v3[6];
    v7 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCoordinator;
    v3[10] = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCache;
    v8 = *(v6 + v7);
    v9 = *MEMORY[0x277CBBF28];
    v3[11] = v8;
    v3[12] = v9;
    v3[13] = 0;
    if (*(v4 + 2))
    {
      v3[14] = *(v4 + 4);
      v3[15] = *(v4 + 5);

      v4 = sub_24AD22C98;
      a2 = v8;
      a3 = 0;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x2822009F8](v4, a2, a3);
  }

  else
  {

    *(v3[6] + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_zonesCreated) = 1;
    v10 = v3[1];

    return v10();
  }
}

uint64_t sub_24AD22C98()
{
  v1 = objc_allocWithZone(MEMORY[0x277CBC5E8]);
  v2 = sub_24AD5E834();
  v3 = [v1 initWithZoneName_];
  v0[16] = v3;

  if (qword_2810653A0 != -1)
  {
    swift_once();
  }

  v4 = sub_24AD5E7A4();
  v0[17] = v4;
  __swift_project_value_buffer(v4, qword_2810654A0);
  v5 = v3;
  v6 = sub_24AD5E784();
  v7 = sub_24AD5EB64();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_24ACF2000, v6, v7, "create zone:  %{public}@", v8, 0xCu);
    sub_24AD06518(v9, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v9, -1, -1);
    MEMORY[0x24C22F400](v8, -1, -1);
  }

  v11 = v5;

  v12 = swift_task_alloc();
  v0[18] = v12;
  *v12 = v0;
  v12[1] = sub_24AD22EB4;
  v13 = v0[11];

  return sub_24AD52F48(v13, v13, 0, v11);
}

uint64_t sub_24AD22EB4(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 152) = v1;

  v5 = *(v4 + 88);

  if (v1)
  {
    v6 = sub_24AD23194;
  }

  else
  {
    *(v4 + 160) = a1;
    v6 = sub_24AD23014;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AD23014()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_24AD23098, v2, 0);
}

uint64_t sub_24AD23098(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[13] + 1;
  if (v4 == v3[9])
  {

    *(v3[6] + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_zonesCreated) = 1;
    v5 = v3[1];

    return v5();
  }

  else
  {
    v3[13] = v4;
    v7 = v3[8];
    if (v4 >= *(v7 + 16))
    {
      __break(1u);
    }

    else
    {
      v8 = v3[11];
      v9 = v7 + 16 * v4;
      v3[14] = *(v9 + 32);
      v3[15] = *(v9 + 40);

      a1 = sub_24AD22C98;
      a2 = v8;
      a3 = 0;
    }

    return MEMORY[0x2822009F8](a1, a2, a3);
  }
}

uint64_t sub_24AD23194()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_24AD23200, v1, 0);
}

uint64_t sub_24AD23200()
{
  v1 = *(v0 + 152);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 24);
    *(v0 + 32) = v3;
    *(v0 + 168) = v3;
    sub_24AD34F14(&qword_281064A28, type metadata accessor for CKError, &unk_24AD5FAF0);
    sub_24AD5E2E4();
    if (*(v0 + 40) == 112)
    {
      sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
      sub_24AD5E844();

      v4 = sub_24AD5EB74();
      *(v0 + 176) = v4;
      if (qword_281064D90 != -1)
      {
        swift_once();
      }

      *(v0 + 184) = __swift_project_value_buffer(*(v0 + 136), qword_281065448);
      v5 = v4;
      v6 = sub_24AD5E784();
      v7 = sub_24AD5EB44();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *v8 = 138543362;
        *(v8 + 4) = v5;
        *v9 = v5;
        v10 = v5;
        _os_log_impl(&dword_24ACF2000, v6, v7, "Identity missing attempting to create zone: %{public}@", v8, 0xCu);
        sub_24AD06518(v9, &qword_27EFA61C8, &unk_24AD60C30);
        MEMORY[0x24C22F400](v9, -1, -1);
        MEMORY[0x24C22F400](v8, -1, -1);
      }

      v11 = v5;
      v12 = sub_24AD5E784();
      v13 = sub_24AD5EB64();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *v14 = 138543362;
        *(v14 + 4) = v11;
        *v15 = v11;
        v16 = v11;
        _os_log_impl(&dword_24ACF2000, v12, v13, "Deleting unreadable zone: %{public}@", v14, 0xCu);
        sub_24AD06518(v15, &qword_27EFA61C8, &unk_24AD60C30);
        MEMORY[0x24C22F400](v15, -1, -1);
        MEMORY[0x24C22F400](v14, -1, -1);
      }

      *(v0 + 240) = 0;
      v17 = swift_task_alloc();
      *(v0 + 192) = v17;
      *v17 = v0;
      v17[1] = sub_24AD23618;

      return sub_24AD454E0(v11, (v0 + 240));
    }

    swift_willThrow();
  }

  else
  {
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_24AD23618()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);

    v4 = sub_24AD23BF0;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 48);
    v4 = sub_24AD2374C;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_24AD2374C()
{
  v1 = *(v0 + 176);
  v2 = sub_24AD5E784();
  v3 = sub_24AD5EB64();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 176);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    *(v5 + 4) = v4;
    *v6 = v4;
    v7 = v4;
    _os_log_impl(&dword_24ACF2000, v2, v3, "Re-creating new zone: %{public}@", v5, 0xCu);
    sub_24AD06518(v6, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v6, -1, -1);
    MEMORY[0x24C22F400](v5, -1, -1);
  }

  *(v0 + 241) = 0;
  v8 = swift_task_alloc();
  *(v0 + 208) = v8;
  *v8 = v0;
  v8[1] = sub_24AD238CC;
  v10 = *(v0 + 112);
  v9 = *(v0 + 120);

  return sub_24AD44BD4(v10, v9, (v0 + 241));
}

uint64_t sub_24AD238CC(void *a1)
{
  v4 = *v2;
  *(*v2 + 216) = v1;

  v5 = *(v4 + 48);
  if (v1)
  {

    v6 = sub_24AD23C60;
  }

  else
  {

    v6 = sub_24AD23A18;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AD23A18()
{
  v1 = *(v0[6] + v0[10]);
  v0[28] = v1;
  return MEMORY[0x2822009F8](sub_24AD23A40, v1, 0);
}

uint64_t sub_24AD23A40()
{
  v1 = v0[27];
  sub_24ACFB24C(v0[22]);
  v0[29] = v1;
  if (v1)
  {
    v2 = v0[6];

    v3 = sub_24AD23CD0;
    v4 = v2;
  }

  else
  {
    v4 = v0[6];
    v3 = sub_24AD23AE0;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_24AD23AE0()
{
  v1 = *(v0 + 168);

  v5 = *(v0 + 104) + 1;
  if (v5 == *(v0 + 72))
  {

    *(*(v0 + 48) + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_zonesCreated) = 1;
    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    *(v0 + 104) = v5;
    v8 = *(v0 + 64);
    if (v5 >= *(v8 + 16))
    {
      __break(1u);
    }

    else
    {
      v9 = *(v0 + 88);
      v10 = v8 + 16 * v5;
      *(v0 + 112) = *(v10 + 32);
      *(v0 + 120) = *(v10 + 40);

      v2 = sub_24AD22C98;
      v3 = v9;
      v4 = 0;
    }

    return MEMORY[0x2822009F8](v2, v3, v4);
  }
}

uint64_t sub_24AD23BF0()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AD23C60()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AD23CD0()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AD23D60()
{
  v1 = v0[6];
  sub_24AD06578(0, &qword_281064978, 0x277CBC2A0);

  v2 = sub_24AD5EB94();
  v0[7] = v2;
  v3 = *(v1 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCoordinator);
  v0[8] = v3;
  v0[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6120, &qword_24AD60CA0);
  v4 = swift_allocObject();
  v0[10] = v4;
  *(v4 + 16) = xmmword_24AD60330;
  *(v4 + 32) = v2;
  v5 = v2;

  return MEMORY[0x2822009F8](sub_24AD23E68, v3, 0);
}

uint64_t sub_24AD23E68()
{
  *(v0 + 88) = [*(*(v0 + 64) + 112) privateCloudDatabase];

  return MEMORY[0x2822009F8](sub_24AD23EE8, 0, 0);
}

uint64_t sub_24AD23EE8()
{
  v1 = v0[10];
  v2 = [objc_allocWithZone(MEMORY[0x277CBC4F0]) init];
  v0[12] = v2;
  v3 = swift_task_alloc();
  v4 = MEMORY[0x277D84F90];
  v0[13] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  v5 = swift_task_alloc();
  v0[14] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6228, &qword_24AD60CE0);
  v0[15] = v6;
  *v5 = v0;
  v5[1] = sub_24AD24008;

  return MEMORY[0x28210DEC0](v0 + 2, v2, 0, &unk_24AD60978, v3, v6);
}

uint64_t sub_24AD24008()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_24AD2429C;
  }

  else
  {

    v2 = sub_24AD24124;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24AD24124()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_24AD241B8, v2, 0);
}

uint64_t sub_24AD241B8()
{
  if (sub_24AD1C25C(1u, *(v0[6] + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_databases)))
  {
    v1 = v0[8];
    v2 = v0[7];
    v3 = swift_allocObject();
    v0[17] = v3;
    *(v3 + 16) = xmmword_24AD60330;
    *(v3 + 32) = v2;

    return MEMORY[0x2822009F8](sub_24AD24398, v1, 0);
  }

  else
  {
    v4 = v0[7];

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_24AD2429C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_24AD24334, v2, 0);
}

uint64_t sub_24AD24334()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD24398()
{
  *(v0 + 144) = [*(*(v0 + 64) + 112) sharedCloudDatabase];

  return MEMORY[0x2822009F8](sub_24AD24418, 0, 0);
}

uint64_t sub_24AD24418()
{
  v1 = v0[17];
  v2 = [objc_allocWithZone(MEMORY[0x277CBC4F0]) init];
  v0[19] = v2;
  v3 = swift_task_alloc();
  v4 = MEMORY[0x277D84F90];
  v0[20] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = sub_24AD24520;
  v6 = v0[15];

  return MEMORY[0x28210DEC0](v0 + 4, v2, 0, &unk_24AD60980, v3, v6);
}

uint64_t sub_24AD24520()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_24AD24734;
  }

  else
  {

    v2 = sub_24AD2463C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24AD2463C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_24AD246D0, v2, 0);
}

uint64_t sub_24AD246D0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD24734()
{
  v1 = *(v0 + 64);

  return MEMORY[0x2822009F8](sub_24AD247A8, v1, 0);
}

uint64_t sub_24AD247A8()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_24AD2481C, v1, 0);
}

uint64_t sub_24AD2481C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD24880()
{
  *(v1 + 80) = v0;
  *(v1 + 88) = *v0;
  return MEMORY[0x2822009F8](sub_24AD248C8, v0, 0);
}

uint64_t sub_24AD248C8()
{
  v1 = *(*(v0 + 80) + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_dataStore + 8);
  ObjectType = swift_getObjectType();
  v5 = (*(v1 + 48) + **(v1 + 48));
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_24AD249F8;

  return v5(ObjectType, v1);
}

uint64_t sub_24AD249F8()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 80);

    return MEMORY[0x2822009F8](sub_24AD24B40, v6, 0);
  }
}

uint64_t sub_24AD24B40()
{
  v1 = *(*(v0 + 80) + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCache);
  *(v0 + 112) = v1;
  return MEMORY[0x2822009F8](sub_24AD24B6C, v1, 0);
}

uint64_t sub_24AD24B6C()
{
  v1 = v0[13];
  type metadata accessor for CloudKitCacheDatabase(0);
  sub_24AD34F14(&qword_281064FE8, type metadata accessor for CloudKitCacheDatabase, &unk_24AD5FCC0);
  sub_24AD5E6F4();
  if (v1)
  {
    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = swift_task_alloc();
    v0[15] = v4;
    *v4 = v0;
    v4[1] = sub_24AD24C90;

    return sub_24AD22920();
  }
}

uint64_t sub_24AD24C90()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v2 + 128) = v6;
    *v6 = v3;
    v6[1] = sub_24AD24E00;

    return sub_24AD23D40();
  }
}

uint64_t sub_24AD24E00()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v2 + 136) = v6;
    *v6 = v3;
    v6[1] = sub_24AD24F70;

    return sub_24AD26748();
  }
}

uint64_t sub_24AD24F70(char a1)
{
  v3 = *v1;
  v4 = *v1;

  if (a1)
  {
    *(v3 + 253) = 5;
    v5 = (v3 + 253);
    v6 = swift_task_alloc();
    *(v5 - 109) = v6;
    *v6 = v4;
    v6[1] = sub_24AD25108;
  }

  else
  {
    *(v3 + 248) = 3;
    v5 = (v3 + 248);
    v7 = swift_task_alloc();
    *(v5 - 9) = v7;
    *v7 = v4;
    v7[1] = sub_24AD257E0;
  }

  return sub_24AD1B554(v5);
}

uint64_t sub_24AD25108()
{
  v1 = *(*v0 + 80);

  return MEMORY[0x2822009F8](sub_24AD25218, v1, 0);
}

uint64_t sub_24AD25218()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = *(v2 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_databases);
  v4 = swift_task_alloc();
  v0[19] = v4;
  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v1;
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_24AD25304;

  return MEMORY[0x28215EB00]("syncWithCloudKit", 16, 2, &unk_24AD60970, v4);
}

uint64_t sub_24AD25304()
{
  v2 = *v1;
  v2[21] = v0;

  if (v0)
  {
    v3 = v2[10];

    return MEMORY[0x2822009F8](sub_24AD25440, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_24AD25440()
{
  v1 = *(v0 + 168);

  *(v0 + 48) = v1;
  v2 = (v0 + 48);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 56);
    *(v0 + 64) = v4;
    sub_24AD34F14(&qword_281064A28, type metadata accessor for CKError, &unk_24AD5FAF0);
    sub_24AD5E2E4();
    if (*(v0 + 72) == 3)
    {
      v5 = *(v0 + 80);

      *(v5 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_initialFetchFailed) = 1;
      if (qword_281064D90 != -1)
      {
        swift_once();
      }

      v6 = sub_24AD5E7A4();
      __swift_project_value_buffer(v6, qword_281065448);
      v7 = v4;
      v8 = sub_24AD5E784();
      v9 = sub_24AD5EB44();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        *v10 = 138543362;
        v12 = sub_24AD5E324();
        *(v10 + 4) = v12;
        *v11 = v12;
        _os_log_impl(&dword_24ACF2000, v8, v9, "Error from syncWithCloudKit: %{public}@", v10, 0xCu);
        sub_24AD06518(v11, &qword_27EFA61C8, &unk_24AD60C30);
        MEMORY[0x24C22F400](v11, -1, -1);
        MEMORY[0x24C22F400](v10, -1, -1);
      }

      swift_willThrow();
      goto LABEL_14;
    }
  }

  if (qword_281064D90 != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 168);
  v14 = sub_24AD5E7A4();
  __swift_project_value_buffer(v14, qword_281065448);
  v15 = v13;
  v16 = sub_24AD5E784();
  v17 = sub_24AD5EB44();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138543362;
    v20 = sub_24AD5E324();
    *(v18 + 4) = v20;
    *v19 = v20;
    _os_log_impl(&dword_24ACF2000, v16, v17, "Error from syncWithCloudKit: %{public}@", v18, 0xCu);
    sub_24AD06518(v19, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v19, -1, -1);
    MEMORY[0x24C22F400](v18, -1, -1);
  }

  swift_willThrow();
LABEL_14:
  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_24AD257E0()
{
  v1 = *(*v0 + 80);

  return MEMORY[0x2822009F8](sub_24AD258F0, v1, 0);
}

uint64_t sub_24AD258F0()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = *(v2 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_databases);
  v4 = swift_task_alloc();
  v0[23] = v4;
  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v1;
  v5 = swift_task_alloc();
  v0[24] = v5;
  *v5 = v0;
  v5[1] = sub_24AD259DC;

  return MEMORY[0x28215EB00]("syncWithCloudKit", 16, 2, &unk_24AD60968, v4);
}

uint64_t sub_24AD259DC()
{
  v2 = *v1;
  *(v2 + 200) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);

    return MEMORY[0x2822009F8](sub_24AD25D8C, v3, 0);
  }

  else
  {

    *(v2 + 251) = 5;
    v4 = swift_task_alloc();
    *(v2 + 208) = v4;
    *v4 = v2;
    v4[1] = sub_24AD25B5C;

    return sub_24AD1B554((v2 + 251));
  }
}

uint64_t sub_24AD25B5C()
{
  v1 = *v0;
  v5 = *v0;

  *(v1 + 252) = 5;
  v2 = (v1 + 252);
  v3 = swift_task_alloc();
  *(v2 - 36) = v3;
  *v3 = v5;
  v3[1] = sub_24AD25C94;

  return sub_24AD1B554(v2);
}

uint64_t sub_24AD25C94()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24AD25D8C()
{
  v1 = *(v0 + 200);

  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 24);
    *(v0 + 32) = v3;
    sub_24AD34F14(&qword_281064A28, type metadata accessor for CKError, &unk_24AD5FAF0);
    sub_24AD5E2E4();
    if (*(v0 + 40) == 3)
    {
      v4 = *(v0 + 80);

      *(v4 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_initialFetchFailed) = 1;
      if (qword_281064D90 != -1)
      {
        swift_once();
      }

      v5 = sub_24AD5E7A4();
      __swift_project_value_buffer(v5, qword_281065448);
      v6 = v3;
      v7 = sub_24AD5E784();
      v8 = sub_24AD5EB44();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        *v9 = 138543362;
        v11 = sub_24AD5E324();
        *(v9 + 4) = v11;
        *v10 = v11;
        _os_log_impl(&dword_24ACF2000, v7, v8, "Error from syncWithCloudKit: %{public}@", v9, 0xCu);
        sub_24AD06518(v10, &qword_27EFA61C8, &unk_24AD60C30);
        MEMORY[0x24C22F400](v10, -1, -1);
        MEMORY[0x24C22F400](v9, -1, -1);
      }

      swift_willThrow();
      *(v0 + 224) = v6;
      v12 = v6;
      if (qword_281064D90 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v5, qword_281065448);
      v13 = v6;
      v14 = sub_24AD5E784();
      v15 = sub_24AD5EB44();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138543362;
        v18 = sub_24AD5E324();
        *(v16 + 4) = v18;
        *v17 = v18;
        _os_log_impl(&dword_24ACF2000, v14, v15, "Error during .manateeAvailable handler: %{public}@", v16, 0xCu);
        sub_24AD06518(v17, &qword_27EFA61C8, &unk_24AD60C30);
        MEMORY[0x24C22F400](v17, -1, -1);
        MEMORY[0x24C22F400](v16, -1, -1);
      }

      *(v0 + 250) = 1;
      v19 = (v0 + 250);
      v20 = swift_task_alloc();
      *(v0 + 232) = v20;
      *v20 = v0;
      v21 = sub_24AD262DC;
      goto LABEL_18;
    }
  }

  v22 = *(v0 + 80);

  *(v22 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_initialFetchFailed) = 1;
  if (qword_281064D90 != -1)
  {
    swift_once();
  }

  v23 = *(v0 + 200);
  v24 = sub_24AD5E7A4();
  __swift_project_value_buffer(v24, qword_281065448);
  v25 = v23;
  v26 = sub_24AD5E784();
  v27 = sub_24AD5EB44();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138543362;
    v30 = sub_24AD5E324();
    *(v28 + 4) = v30;
    *v29 = v30;
    _os_log_impl(&dword_24ACF2000, v26, v27, "Error from initial syncWithCloudKit: %{public}@", v28, 0xCu);
    sub_24AD06518(v29, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v29, -1, -1);
    MEMORY[0x24C22F400](v28, -1, -1);
  }

  *(v0 + 249) = 1;
  v19 = (v0 + 249);
  v20 = swift_task_alloc();
  *(v0 + 240) = v20;
  *v20 = v0;
  v21 = sub_24AD2645C;
LABEL_18:
  v20[1] = v21;

  return sub_24AD1B554(v19);
}

uint64_t sub_24AD262DC()
{
  v1 = *(*v0 + 80);

  return MEMORY[0x2822009F8](sub_24AD263EC, v1, 0);
}

uint64_t sub_24AD263EC()
{
  v1 = *(v0 + 224);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AD2645C()
{
  v1 = *(*v0 + 80);

  return MEMORY[0x2822009F8](sub_24AD2656C, v1, 0);
}

uint64_t sub_24AD2656C(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 200);
  *(v1 + 224) = v2;
  v3 = v2;
  if (qword_281064D90 != -1)
  {
    swift_once();
  }

  v4 = sub_24AD5E7A4();
  __swift_project_value_buffer(v4, qword_281065448);
  v5 = v2;
  v6 = sub_24AD5E784();
  v7 = sub_24AD5EB44();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = sub_24AD5E324();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_24ACF2000, v6, v7, "Error during .manateeAvailable handler: %{public}@", v8, 0xCu);
    sub_24AD06518(v9, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v9, -1, -1);
    MEMORY[0x24C22F400](v8, -1, -1);
  }

  *(v1 + 250) = 1;
  v11 = swift_task_alloc();
  *(v1 + 232) = v11;
  *v11 = v1;
  v11[1] = sub_24AD262DC;

  return sub_24AD1B554((v1 + 250));
}

uint64_t sub_24AD26768()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCache);
  *(v0 + 24) = v1;
  *(v0 + 48) = 0;
  return MEMORY[0x2822009F8](sub_24AD26798, v1, 0);
}

uint64_t sub_24AD26798()
{
  *(v0 + 32) = sub_24ACF9580((v0 + 48));
  *(v0 + 40) = 0;
  v1 = *(v0 + 16);

  return MEMORY[0x2822009F8](sub_24AD26828, v1, 0);
}

uint64_t sub_24AD26828()
{
  v1 = *(v0 + 32);
  if (v1)
  {
  }

  v2 = *(v0 + 8);

  return v2(v1 != 0);
}

uint64_t sub_24AD26894()
{
  if (qword_281064D90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_24AD5E7A4();
  __swift_project_value_buffer(v2, qword_281065448);
  v3 = v1;
  v4 = sub_24AD5E784();
  v5 = sub_24AD5EB44();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 40);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24ACF2000, v4, v5, "Error in alreadyHaveDatabaseTokens: %{public}@", v8, 0xCu);
    sub_24AD06518(v9, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v9, -1, -1);
    MEMORY[0x24C22F400](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12(0);
}

uint64_t sub_24AD26A3C(uint64_t a1, uint64_t a2)
{
  v2[141] = a2;
  v2[140] = a1;
  v3 = sub_24AD5EA64();
  v2[142] = v3;
  v2[143] = *(v3 - 8);
  v2[144] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD26B00, 0, 0);
}

uint64_t sub_24AD26B00()
{
  v1 = (v0[140] + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_dataStore);
  v0[145] = *v1;
  v2 = v1[1];
  v0[146] = v2;
  ObjectType = swift_getObjectType();
  v0[147] = ObjectType;
  v6 = (*(v2 + 48) + **(v2 + 48));
  v4 = swift_task_alloc();
  v0[148] = v4;
  *v4 = v0;
  v4[1] = sub_24AD26C40;

  return v6(ObjectType, v2);
}

uint64_t sub_24AD26C40()
{
  v2 = *v1;
  *(*v1 + 1192) = v0;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24AD26D90, 0, 0);
  }
}

uint64_t sub_24AD26D90()
{
  v1 = *(*(v0 + 1120) + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCache);
  *(v0 + 1200) = v1;
  return MEMORY[0x2822009F8](sub_24AD26DBC, v1, 0);
}

uint64_t sub_24AD26DBC()
{
  v1 = *(v0 + 1192);
  type metadata accessor for CloudKitCacheDatabase(0);
  sub_24AD34F14(&qword_281064FE8, type metadata accessor for CloudKitCacheDatabase, &unk_24AD5FCC0);
  sub_24AD5E6F4();
  *(v0 + 1208) = v1;
  if (v1)
  {

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 1200);
    *(v0 + 1493) = 0;

    return MEMORY[0x2822009F8](sub_24AD26EC4, v4, 0);
  }
}

uint64_t sub_24AD26EC4()
{
  v1 = *(v0 + 1208);
  *(v0 + 1216) = sub_24ACF9580((v0 + 1493));
  *(v0 + 1224) = v1;
  if (v1)
  {
    v2 = sub_24AD28060;
    v3 = 0;
  }

  else
  {
    v3 = *(v0 + 1200);
    v2 = sub_24AD26F60;
  }

  return MEMORY[0x2822009F8](v2, v3, 0);
}

uint64_t sub_24AD26F60()
{
  v1 = *(v0 + 1224);
  v2 = sub_24ACFA1A8();
  *(v0 + 1232) = v2;
  *(v0 + 1240) = v1;
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_24AD280C4, 0, 0);
  }

  else
  {
    v3 = v2;
    *(v0 + 1492) = 0;
    v4 = swift_task_alloc();
    *(v0 + 1248) = v4;
    *v4 = v0;
    v4[1] = sub_24AD27068;
    v5 = *(v0 + 1216);

    return sub_24AD29E60(v0 + 520, v5, v3, (v0 + 1492));
  }
}

uint64_t sub_24AD27068()
{
  *(*v1 + 1256) = v0;

  if (v0)
  {
    v2 = sub_24AD28318;
  }

  else
  {
    v2 = sub_24AD2718C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24AD2718C()
{
  v1 = *(v0 + 536);
  *(v0 + 304) = *(v0 + 520);
  *(v0 + 320) = v1;
  v2 = *(v0 + 584);
  *(v0 + 368) = v2;
  v3 = *(v0 + 568);
  *(v0 + 336) = *(v0 + 552);
  *(v0 + 352) = v3;
  v4 = *(v0 + 304);
  *(v0 + 1264) = v4;
  *(v0 + 1024) = *(v0 + 528);
  v5 = *(v0 + 328);
  *(v0 + 1272) = v5;
  v6 = *(v0 + 552);
  v7 = *(v0 + 568);
  *(v0 + 1016) = v2;
  *(v0 + 984) = v6;
  *(v0 + 1000) = v7;
  if (v4)
  {
    v8 = *(v0 + 1200);
    *(v0 + 232) = v4;
    *(v0 + 240) = *(v0 + 528);
    *(v0 + 256) = v5;
    v9 = *(v0 + 568);
    *(v0 + 264) = *(v0 + 552);
    *(v0 + 280) = v9;
    *(v0 + 296) = *(v0 + 584);
    v10 = sub_24AD272D4;
LABEL_5:

    return MEMORY[0x2822009F8](v10, v8, 0);
  }

  *(v0 + 1304) = *(v0 + 1256);
  if (sub_24AD1C25C(1u, *(v0 + 1128)))
  {
    v8 = *(v0 + 1200);
    *(v0 + 1491) = 1;
    v10 = sub_24AD277DC;
    goto LABEL_5;
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24AD272D4()
{
  v1 = *(v0 + 1256);
  sub_24ACFBDBC((v0 + 232));
  *(v0 + 1280) = v1;
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_24AD285E8, 0, 0);
  }

  else
  {
    v2 = *(v0 + 1272);
    v3 = *(v0 + 1168);
    *(v0 + 16) = *(v0 + 1264);
    *(v0 + 24) = *(v0 + 1024);
    *(v0 + 40) = v2;
    *(v0 + 80) = *(v0 + 1016);
    v4 = *(v0 + 1000);
    *(v0 + 48) = *(v0 + 984);
    *(v0 + 64) = v4;
    v9 = (*(v3 + 24) + **(v3 + 24));
    v5 = swift_task_alloc();
    *(v0 + 1288) = v5;
    *v5 = v0;
    v5[1] = sub_24AD27470;
    v6 = *(v0 + 1176);
    v7 = *(v0 + 1168);

    return v9(v0 + 16, v6, v7);
  }
}

uint64_t sub_24AD27470()
{
  *(*v1 + 1296) = v0;

  if (v0)
  {
    v2 = sub_24AD288D0;
  }

  else
  {
    v2 = sub_24AD27584;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24AD27584(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 1272);
  v5 = *(v4 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = *(v3 + 1144);
    v22 = MEMORY[0x277D84F90];
    sub_24AD5ED94();
    v10 = *(v7 + 16);
    v8 = v7 + 16;
    v9 = v10;
    v11 = v4 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);
    do
    {
      v13 = *(v3 + 1152);
      v14 = *(v3 + 1136);
      v15 = v9(v13, v11, v14);
      MEMORY[0x24C22E740](v15);
      (*(v8 - 8))(v13, v14);
      sub_24AD5ED74();
      sub_24AD5EDA4();
      sub_24AD5EDB4();
      a1 = sub_24AD5ED84();
      v11 += v12;
      --v5;
    }

    while (v5);
    v6 = v22;
  }

  if (v6 >> 62)
  {
    a1 = sub_24AD5EC94();
    v16 = a1;
    if (!a1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_14;
    }
  }

  if (v16 < 1)
  {
    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  for (i = 0; i != v16; ++i)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x24C22EA30](i, v6);
    }

    else
    {
      v18 = *(v6 + 8 * i + 32);
    }

    v19 = v18;
    sub_24AD37F24(v18);
  }

LABEL_14:

  sub_24AD06518(v3 + 304, &qword_27EFA61C0, &qword_24AD608C8);
  *(v3 + 1304) = *(v3 + 1296);
  if (sub_24AD1C25C(1u, *(v3 + 1128)))
  {
    a2 = *(v3 + 1200);
    *(v3 + 1491) = 1;
    a1 = sub_24AD277DC;
    a3 = 0;

    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v20 = *(v3 + 8);

  return v20();
}

uint64_t sub_24AD277DC()
{
  v1 = *(v0 + 1304);
  *(v0 + 1312) = sub_24ACF9580((v0 + 1491));
  *(v0 + 1320) = v1;
  if (v1)
  {
    v2 = sub_24AD28C34;
    v3 = 0;
  }

  else
  {
    v3 = *(v0 + 1200);
    v2 = sub_24AD27878;
  }

  return MEMORY[0x2822009F8](v2, v3, 0);
}

uint64_t sub_24AD27878()
{
  v1 = *(v0 + 1320);
  v2 = sub_24ACFA1A8();
  *(v0 + 1328) = v2;
  *(v0 + 1336) = v1;
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_24AD28CA0, 0, 0);
  }

  else
  {
    v3 = v2;
    *(v0 + 1490) = 1;
    v4 = swift_task_alloc();
    *(v0 + 1344) = v4;
    *v4 = v0;
    v4[1] = sub_24AD27984;
    v5 = *(v0 + 1312);

    return sub_24AD29E60(v0 + 160, v5, v3, (v0 + 1490));
  }
}

uint64_t sub_24AD27984()
{
  *(*v1 + 1352) = v0;

  if (v0)
  {
    v2 = sub_24AD2938C;
  }

  else
  {
    v2 = sub_24AD27A98;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24AD27A98()
{
  v1 = *(v0 + 176);
  *(v0 + 808) = *(v0 + 160);
  *(v0 + 824) = v1;
  v3 = *(v0 + 192);
  v2 = *(v0 + 208);
  *(v0 + 840) = v3;
  *(v0 + 856) = v2;
  v4 = *(v0 + 224);
  *(v0 + 872) = v4;
  v5 = *(v0 + 808);
  *(v0 + 1360) = v5;
  *(v0 + 1040) = *(v0 + 168);
  v6 = *(v0 + 832);
  *(v0 + 1368) = v6;
  *(v0 + 944) = v3;
  *(v0 + 960) = v2;
  *(v0 + 976) = v4;
  if (v5)
  {
    v7 = *(v0 + 1200);
    *(v0 + 88) = v5;
    *(v0 + 96) = *(v0 + 168);
    *(v0 + 112) = v6;
    v8 = *(v0 + 208);
    *(v0 + 120) = *(v0 + 192);
    *(v0 + 136) = v8;
    *(v0 + 152) = *(v0 + 224);

    return MEMORY[0x2822009F8](sub_24AD27BB0, v7, 0);
  }

  else
  {
    v9 = *(v0 + 1312);
    v10 = *(v0 + 1216);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_24AD27BB0()
{
  v1 = *(v0 + 1352);
  sub_24ACFBDBC((v0 + 88));
  *(v0 + 1376) = v1;
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_24AD29658, 0, 0);
  }

  else
  {
    v2 = *(v0 + 1368);
    v3 = *(v0 + 1168);
    *(v0 + 376) = *(v0 + 1360);
    *(v0 + 384) = *(v0 + 1040);
    *(v0 + 400) = v2;
    v4 = *(v0 + 960);
    *(v0 + 408) = *(v0 + 944);
    *(v0 + 424) = v4;
    *(v0 + 440) = *(v0 + 976);
    v9 = (*(v3 + 24) + **(v3 + 24));
    v5 = swift_task_alloc();
    *(v0 + 1384) = v5;
    *v5 = v0;
    v5[1] = sub_24AD27D4C;
    v6 = *(v0 + 1176);
    v7 = *(v0 + 1168);

    return v9(v0 + 376, v6, v7);
  }
}

uint64_t sub_24AD27D4C()
{
  *(*v1 + 1392) = v0;

  if (v0)
  {
    v2 = sub_24AD2993C;
  }

  else
  {

    v2 = sub_24AD27E68;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_24AD27E68()
{
  v1 = v0[171];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = v0[143];
    v20 = MEMORY[0x277D84F90];
    sub_24AD5ED94();
    v7 = *(v4 + 16);
    v5 = v4 + 16;
    v6 = v7;
    v8 = v1 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v9 = *(v5 + 56);
    do
    {
      v10 = v0[144];
      v11 = v0[142];
      v12 = v6(v10, v8, v11);
      MEMORY[0x24C22E740](v12);
      (*(v5 - 8))(v10, v11);
      sub_24AD5ED74();
      sub_24AD5EDA4();
      sub_24AD5EDB4();
      sub_24AD5ED84();
      v8 += v9;
      --v2;
    }

    while (v2);
    v3 = v20;
  }

  if (v3 >> 62)
  {
    v13 = sub_24AD5EC94();
    if (!v13)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v13 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_14;
    }
  }

  if (v13 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v13; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x24C22EA30](i, v3);
    }

    else
    {
      v15 = *(v3 + 8 * i + 32);
    }

    v16 = v15;
    sub_24AD37F24(v15);
  }

LABEL_14:
  v17 = v0[164];
  v18 = v0[152];

  sub_24AD06518((v0 + 101), &qword_27EFA61C0, &qword_24AD608C8);

  v19 = v0[1];

  v19();
}

uint64_t sub_24AD28060()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD280C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD28130()
{
  *(*v1 + 1416) = v0;

  if (v0)
  {
    v2 = sub_24AD28BB8;
  }

  else
  {
    v2 = sub_24AD28244;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24AD28244()
{
  *(v0 + 1304) = *(v0 + 1416);
  if (sub_24AD1C25C(1u, *(v0 + 1128)))
  {
    v1 = *(v0 + 1200);
    *(v0 + 1491) = 1;

    return MEMORY[0x2822009F8](sub_24AD277DC, v1, 0);
  }

  else
  {

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_24AD28318()
{
  v1 = *(v0 + 1256);
  *(v0 + 1056) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 1064);
    *(v0 + 1400) = v3;
    *(v0 + 1072) = v3;
    sub_24AD34F14(&qword_281064A28, type metadata accessor for CKError, &unk_24AD5FAF0);
    sub_24AD5E2E4();
    if (*(v0 + 1080) == 21)
    {
      if (qword_281064D90 != -1)
      {
        swift_once();
      }

      v4 = sub_24AD5E7A4();
      __swift_project_value_buffer(v4, qword_281065448);
      v5 = v3;
      v6 = sub_24AD5E784();
      v7 = sub_24AD5EB44();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *v8 = 138543362;
        v10 = v5;
        v11 = _swift_stdlib_bridgeErrorToNSError();
        *(v8 + 4) = v11;
        *v9 = v11;
        _os_log_impl(&dword_24ACF2000, v6, v7, "privateDatabaseToken is expired: %{public}@", v8, 0xCu);
        sub_24AD06518(v9, &qword_27EFA61C8, &unk_24AD60C30);
        MEMORY[0x24C22F400](v9, -1, -1);
        MEMORY[0x24C22F400](v8, -1, -1);
      }

      v12 = swift_task_alloc();
      *(v0 + 1408) = v12;
      *v12 = v0;
      v12[1] = sub_24AD28130;

      return sub_24AD191B4();
    }

    v14 = *(v0 + 1216);
    swift_willThrow();
  }

  else
  {
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_24AD285E8()
{
  sub_24AD06518(v0 + 304, &qword_27EFA61C0, &qword_24AD608C8);
  v1 = *(v0 + 1280);
  *(v0 + 1056) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 1064);
    *(v0 + 1400) = v3;
    *(v0 + 1072) = v3;
    sub_24AD34F14(&qword_281064A28, type metadata accessor for CKError, &unk_24AD5FAF0);
    sub_24AD5E2E4();
    if (*(v0 + 1080) == 21)
    {
      if (qword_281064D90 != -1)
      {
        swift_once();
      }

      v4 = sub_24AD5E7A4();
      __swift_project_value_buffer(v4, qword_281065448);
      v5 = v3;
      v6 = sub_24AD5E784();
      v7 = sub_24AD5EB44();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *v8 = 138543362;
        v10 = v5;
        v11 = _swift_stdlib_bridgeErrorToNSError();
        *(v8 + 4) = v11;
        *v9 = v11;
        _os_log_impl(&dword_24ACF2000, v6, v7, "privateDatabaseToken is expired: %{public}@", v8, 0xCu);
        sub_24AD06518(v9, &qword_27EFA61C8, &unk_24AD60C30);
        MEMORY[0x24C22F400](v9, -1, -1);
        MEMORY[0x24C22F400](v8, -1, -1);
      }

      v12 = swift_task_alloc();
      *(v0 + 1408) = v12;
      *v12 = v0;
      v12[1] = sub_24AD28130;

      return sub_24AD191B4();
    }

    v14 = *(v0 + 1216);
    swift_willThrow();
  }

  else
  {
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_24AD288D0()
{
  sub_24AD06518(v0 + 304, &qword_27EFA61C0, &qword_24AD608C8);
  v1 = *(v0 + 1296);
  *(v0 + 1056) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 1064);
    *(v0 + 1400) = v3;
    *(v0 + 1072) = v3;
    sub_24AD34F14(&qword_281064A28, type metadata accessor for CKError, &unk_24AD5FAF0);
    sub_24AD5E2E4();
    if (*(v0 + 1080) == 21)
    {
      if (qword_281064D90 != -1)
      {
        swift_once();
      }

      v4 = sub_24AD5E7A4();
      __swift_project_value_buffer(v4, qword_281065448);
      v5 = v3;
      v6 = sub_24AD5E784();
      v7 = sub_24AD5EB44();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *v8 = 138543362;
        v10 = v5;
        v11 = _swift_stdlib_bridgeErrorToNSError();
        *(v8 + 4) = v11;
        *v9 = v11;
        _os_log_impl(&dword_24ACF2000, v6, v7, "privateDatabaseToken is expired: %{public}@", v8, 0xCu);
        sub_24AD06518(v9, &qword_27EFA61C8, &unk_24AD60C30);
        MEMORY[0x24C22F400](v9, -1, -1);
        MEMORY[0x24C22F400](v8, -1, -1);
      }

      v12 = swift_task_alloc();
      *(v0 + 1408) = v12;
      *v12 = v0;
      v12[1] = sub_24AD28130;

      return sub_24AD191B4();
    }

    v14 = *(v0 + 1216);
    swift_willThrow();
  }

  else
  {
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_24AD28BB8()
{
  v1 = *(v0 + 1216);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AD28C34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD28CA0()
{
  v1 = *(v0 + 1312);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AD28D14()
{
  sub_24ACF9C80((v0 + 1489));
  *(v0 + 1432) = 0;
  *(v0 + 1488) = 1;
  v1 = swift_task_alloc();
  *(v0 + 1440) = v1;
  *v1 = v0;
  v1[1] = sub_24AD28E24;
  v2 = *(v0 + 1328);
  v3 = *(v0 + 1312);

  return sub_24AD29E60(v0 + 448, v3, v2, (v0 + 1488));
}

uint64_t sub_24AD28E24()
{
  *(*v1 + 1448) = v0;

  if (v0)
  {
    v2 = sub_24AD29CA4;
  }

  else
  {
    v2 = sub_24AD28F48;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24AD28F48()
{
  v1 = *(v0 + 464);
  *(v0 + 592) = *(v0 + 448);
  *(v0 + 608) = v1;
  v2 = *(v0 + 496);
  *(v0 + 624) = *(v0 + 480);
  *(v0 + 640) = v2;
  *(v0 + 656) = *(v0 + 512);
  v3 = *(v0 + 592);
  *(v0 + 1456) = v3;
  v4 = *(v0 + 504);
  *(v0 + 912) = *(v0 + 488);
  *(v0 + 928) = v4;
  v5 = *(v0 + 472);
  *(v0 + 880) = *(v0 + 456);
  *(v0 + 896) = v5;
  if (v3)
  {
    v6 = *(v0 + 1200);
    *(v0 + 664) = v3;
    v7 = *(v0 + 472);
    *(v0 + 672) = *(v0 + 456);
    *(v0 + 688) = v7;
    v8 = *(v0 + 504);
    *(v0 + 704) = *(v0 + 488);
    *(v0 + 720) = v8;

    return MEMORY[0x2822009F8](sub_24AD29050, v6, 0);
  }

  else
  {
    v9 = *(v0 + 1312);
    v10 = *(v0 + 1216);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_24AD29050()
{
  v1 = *(v0 + 1448);
  sub_24ACFBDBC((v0 + 664));
  *(v0 + 1464) = v1;
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_24AD29D28, 0, 0);
  }

  else
  {
    v2 = *(v0 + 1168);
    *(v0 + 736) = *(v0 + 1456);
    v3 = *(v0 + 896);
    *(v0 + 744) = *(v0 + 880);
    *(v0 + 760) = v3;
    v4 = *(v0 + 928);
    *(v0 + 776) = *(v0 + 912);
    *(v0 + 792) = v4;
    v9 = (*(v2 + 24) + **(v2 + 24));
    v5 = swift_task_alloc();
    *(v0 + 1472) = v5;
    *v5 = v0;
    v5[1] = sub_24AD291DC;
    v6 = *(v0 + 1176);
    v7 = *(v0 + 1168);

    return v9(v0 + 736, v6, v7);
  }
}

uint64_t sub_24AD291DC()
{
  *(*v1 + 1480) = v0;

  if (v0)
  {
    v2 = sub_24AD29DC4;
  }

  else
  {
    v2 = sub_24AD292F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24AD292F0()
{
  v1 = *(v0 + 1312);
  v2 = *(v0 + 1216);

  sub_24AD06518(v0 + 592, &qword_27EFA61C0, &qword_24AD608C8);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24AD2938C()
{
  v1 = *(v0 + 1352);
  *(v0 + 1088) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 1096);
    *(v0 + 1424) = v3;
    *(v0 + 1104) = v3;
    sub_24AD34F14(&qword_281064A28, type metadata accessor for CKError, &unk_24AD5FAF0);
    sub_24AD5E2E4();
    if (*(v0 + 1112) == 21)
    {
      if (qword_281064D90 != -1)
      {
        swift_once();
      }

      v4 = sub_24AD5E7A4();
      __swift_project_value_buffer(v4, qword_281065448);
      v5 = v3;
      v6 = sub_24AD5E784();
      v7 = sub_24AD5EB44();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *v8 = 138543362;
        v10 = v5;
        v11 = _swift_stdlib_bridgeErrorToNSError();
        *(v8 + 4) = v11;
        *v9 = v11;
        _os_log_impl(&dword_24ACF2000, v6, v7, "sharedDatabaseToken is expired: %{public}@", v8, 0xCu);
        sub_24AD06518(v9, &qword_27EFA61C8, &unk_24AD60C30);
        MEMORY[0x24C22F400](v9, -1, -1);
        MEMORY[0x24C22F400](v8, -1, -1);
      }

      v12 = *(v0 + 1200);

      *(v0 + 1489) = 1;

      return MEMORY[0x2822009F8](sub_24AD28D14, v12, 0);
    }

    v15 = *(v0 + 1312);
    v16 = *(v0 + 1216);

    swift_willThrow();
  }

  else
  {
    v13 = *(v0 + 1312);
    v14 = *(v0 + 1216);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_24AD29658()
{
  sub_24AD06518(v0 + 808, &qword_27EFA61C0, &qword_24AD608C8);
  v1 = *(v0 + 1376);
  *(v0 + 1088) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 1096);
    *(v0 + 1424) = v3;
    *(v0 + 1104) = v3;
    sub_24AD34F14(&qword_281064A28, type metadata accessor for CKError, &unk_24AD5FAF0);
    sub_24AD5E2E4();
    if (*(v0 + 1112) == 21)
    {
      if (qword_281064D90 != -1)
      {
        swift_once();
      }

      v4 = sub_24AD5E7A4();
      __swift_project_value_buffer(v4, qword_281065448);
      v5 = v3;
      v6 = sub_24AD5E784();
      v7 = sub_24AD5EB44();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *v8 = 138543362;
        v10 = v5;
        v11 = _swift_stdlib_bridgeErrorToNSError();
        *(v8 + 4) = v11;
        *v9 = v11;
        _os_log_impl(&dword_24ACF2000, v6, v7, "sharedDatabaseToken is expired: %{public}@", v8, 0xCu);
        sub_24AD06518(v9, &qword_27EFA61C8, &unk_24AD60C30);
        MEMORY[0x24C22F400](v9, -1, -1);
        MEMORY[0x24C22F400](v8, -1, -1);
      }

      v12 = *(v0 + 1200);

      *(v0 + 1489) = 1;

      return MEMORY[0x2822009F8](sub_24AD28D14, v12, 0);
    }

    v15 = *(v0 + 1312);
    v16 = *(v0 + 1216);

    swift_willThrow();
  }

  else
  {
    v13 = *(v0 + 1312);
    v14 = *(v0 + 1216);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_24AD2993C()
{
  sub_24AD06518(v0 + 808, &qword_27EFA61C0, &qword_24AD608C8);
  v1 = *(v0 + 1392);
  *(v0 + 1088) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 1096);
    *(v0 + 1424) = v3;
    *(v0 + 1104) = v3;
    sub_24AD34F14(&qword_281064A28, type metadata accessor for CKError, &unk_24AD5FAF0);
    sub_24AD5E2E4();
    if (*(v0 + 1112) == 21)
    {
      if (qword_281064D90 != -1)
      {
        swift_once();
      }

      v4 = sub_24AD5E7A4();
      __swift_project_value_buffer(v4, qword_281065448);
      v5 = v3;
      v6 = sub_24AD5E784();
      v7 = sub_24AD5EB44();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *v8 = 138543362;
        v10 = v5;
        v11 = _swift_stdlib_bridgeErrorToNSError();
        *(v8 + 4) = v11;
        *v9 = v11;
        _os_log_impl(&dword_24ACF2000, v6, v7, "sharedDatabaseToken is expired: %{public}@", v8, 0xCu);
        sub_24AD06518(v9, &qword_27EFA61C8, &unk_24AD60C30);
        MEMORY[0x24C22F400](v9, -1, -1);
        MEMORY[0x24C22F400](v8, -1, -1);
      }

      v12 = *(v0 + 1200);

      *(v0 + 1489) = 1;

      return MEMORY[0x2822009F8](sub_24AD28D14, v12, 0);
    }

    v15 = *(v0 + 1312);
    v16 = *(v0 + 1216);

    swift_willThrow();
  }

  else
  {
    v13 = *(v0 + 1312);
    v14 = *(v0 + 1216);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_24AD29C20()
{
  v1 = *(v0 + 1312);
  v2 = *(v0 + 1216);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24AD29CA4()
{
  v1 = *(v0 + 1312);
  v2 = *(v0 + 1216);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24AD29D28()
{
  v1 = *(v0 + 1312);
  v2 = *(v0 + 1216);

  sub_24AD06518(v0 + 592, &qword_27EFA61C0, &qword_24AD608C8);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24AD29DC4()
{
  v1 = *(v0 + 1312);
  v2 = *(v0 + 1216);

  sub_24AD06518(v0 + 592, &qword_27EFA61C0, &qword_24AD608C8);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24AD29E60(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(v5 + 216) = a3;
  *(v5 + 224) = v4;
  *(v5 + 200) = a1;
  *(v5 + 208) = a2;
  v7 = sub_24AD5EAD4();
  *(v5 + 232) = v7;
  *(v5 + 240) = *(v7 - 8);
  *(v5 + 248) = swift_task_alloc();
  v8 = sub_24AD5EAA4();
  *(v5 + 256) = v8;
  *(v5 + 264) = *(v8 - 8);
  *(v5 + 272) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F30, &qword_24AD5FDF8);
  *(v5 + 280) = v9;
  *(v5 + 288) = *(v9 - 8);
  *(v5 + 296) = swift_task_alloc();
  *(v5 + 304) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C0, &qword_24AD60400);
  *(v5 + 312) = v10;
  *(v5 + 320) = *(v10 - 8);
  *(v5 + 328) = swift_task_alloc();
  v11 = sub_24AD5EA64();
  *(v5 + 336) = v11;
  *(v5 + 344) = *(v11 - 8);
  *(v5 + 352) = swift_task_alloc();
  *(v5 + 360) = swift_task_alloc();
  *(v5 + 368) = swift_task_alloc();
  *(v5 + 376) = swift_task_alloc();
  *(v5 + 384) = swift_task_alloc();
  *(v5 + 550) = *a4;

  return MEMORY[0x2822009F8](sub_24AD2A0FC, v4, 0);
}

uint64_t sub_24AD2A0FC()
{
  v1 = *(*(v0 + 224) + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCoordinator);
  *(v0 + 392) = v1;
  return MEMORY[0x2822009F8](sub_24AD2A128, v1, 0);
}

uint64_t sub_24AD2A128()
{
  v1 = *(v0 + 208);

  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 400) = v3;
  *v3 = v0;
  v3[1] = sub_24AD2A1D8;
  v4 = *(v0 + 392);
  v5 = *(v0 + 208);
  v6 = *(v0 + 550);

  return sub_24AD54DF0(v4, v4, v5, v6);
}

uint64_t sub_24AD2A1D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v5[51] = a1;
  v5[52] = a2;
  v5[53] = a3;

  if (v3)
  {
    v7 = v5[26];

    v8 = v6[1];

    return v8();
  }

  else
  {
    v10 = v5[28];
    v11 = v5[26];

    return MEMORY[0x2822009F8](sub_24AD2A3EC, v10, 0);
  }
}

uint64_t sub_24AD2A3EC()
{
  v172 = v0;
  v1 = MEMORY[0x277D84F90];
  if (!*(v0 + 550))
  {
    v23 = v0[51];
    v171 = MEMORY[0x277D84F90];
    v24 = *(v23 + 16);
    if (!v24)
    {
      goto LABEL_33;
    }

    v25 = v0[43];
    v26 = *(v25 + 16);
    v25 += 16;
    v166 = v26;
    v27 = v23 + ((*(v25 + 64) + 32) & ~*(v25 + 64));
    v28 = *(v25 + 56);
    v29 = (v25 - 8);
    v9 = MEMORY[0x277D84F90];
    for (i = v26(v0[48], v27, v0[42]); ; i = v166(v0[48], v27, v0[42]))
    {
      v31 = MEMORY[0x24C22E740](i);
      v32 = [v31 ownerName];

      v33 = sub_24AD5E844();
      v35 = v34;

      if (v33 == sub_24AD5E844() && v35 == v36)
      {
      }

      else
      {
        v38 = sub_24AD5EF84();

        if ((v38 & 1) == 0)
        {
          (*v29)(v0[48], v0[42]);
          goto LABEL_20;
        }
      }

      v40 = v0[48];
      v41 = v0[42];
      MEMORY[0x24C22E740](v39);
      v42 = (*v29)(v40, v41);
      MEMORY[0x24C22E590](v42);
      if (*((v171 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v171 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24AD5E8E4();
        v0 = v170;
      }

      sub_24AD5E904();
      v9 = v171;
LABEL_20:
      v27 += v28;
      if (!--v24)
      {
        goto LABEL_34;
      }
    }
  }

  if (*(v0 + 550) != 1)
  {
    sub_24AD37964(MEMORY[0x277D84F90]);
    v0[8] = v1;
    v0[9] = v1;
    goto LABEL_58;
  }

  v2 = v0[51];
  v171 = MEMORY[0x277D84F90];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[43];
    v5 = *(v4 + 16);
    v4 += 16;
    v165 = v5;
    v6 = v2 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v7 = *(v4 + 56);
    v8 = (v4 - 8);
    v9 = MEMORY[0x277D84F90];
    for (j = v5(v0[47], v6, v0[42]); ; j = v165(v0[47], v6, v0[42]))
    {
      v11 = MEMORY[0x24C22E740](j);
      v12 = [v11 ownerName];

      v13 = sub_24AD5E844();
      v15 = v14;

      if (v13 == sub_24AD5E844() && v15 == v16)
      {
        break;
      }

      v18 = sub_24AD5EF84();

      if (v18)
      {
        goto LABEL_6;
      }

      v20 = v0[47];
      v21 = v0[42];
      MEMORY[0x24C22E740](v19);
      v22 = (*v8)(v20, v21);
      MEMORY[0x24C22E590](v22);
      if (*((v171 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v171 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24AD5E8E4();
        v0 = v170;
      }

      sub_24AD5E904();
      v9 = v171;
LABEL_7:
      v6 += v7;
      if (!--v3)
      {
        goto LABEL_34;
      }
    }

LABEL_6:
    (*v8)(v0[47], v0[42]);
    goto LABEL_7;
  }

LABEL_33:
  v9 = MEMORY[0x277D84F90];
LABEL_34:
  v43 = *(v0 + 550);
  sub_24AD37964(v9);
  v1 = MEMORY[0x277D84F90];
  v0[8] = MEMORY[0x277D84F90];
  v0[9] = v1;
  if (!v43)
  {

    v62 = sub_24AD37CDC();
    v45 = v62;
    v171 = v1;
    v169 = v62 & 0xFFFFFFFFFFFFFF8;
    if (v62 >> 62)
    {
      v63 = sub_24AD5EC94();
    }

    else
    {
      v63 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v64 = MEMORY[0x277D84F90];
    if (!v63)
    {
      goto LABEL_80;
    }

    v65 = 0;
LABEL_63:
    v66 = v65;
    while (1)
    {
      if ((v45 & 0xC000000000000001) != 0)
      {
        v67 = MEMORY[0x24C22EA30](v66, v45);
      }

      else
      {
        if (v66 >= *(v169 + 16))
        {
          goto LABEL_105;
        }

        v67 = *(v45 + 8 * v66 + 32);
      }

      v68 = v67;
      v65 = v66 + 1;
      if (__OFADD__(v66, 1))
      {
        break;
      }

      v69 = v64;
      v70 = [v67 ownerName];
      v71 = sub_24AD5E844();
      v73 = v72;

      if (v71 == sub_24AD5E844() && v73 == v74)
      {

LABEL_77:
        MEMORY[0x24C22E590](v77);
        if (*((v171 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v171 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24AD5E8E4();
          v0 = v170;
        }

        sub_24AD5E904();
        v64 = v171;
        if (v65 == v63)
        {
LABEL_80:

          if (v64 >> 62)
          {
            v78 = sub_24AD5EC94();
            if (!v78)
            {
              goto LABEL_111;
            }
          }

          else
          {
            v78 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v78)
            {
              goto LABEL_111;
            }
          }

          v171 = MEMORY[0x277D84F90];
          sub_24AD33640(0, v78 & ~(v78 >> 63), 0);
          if (v78 < 0)
          {
            goto LABEL_151;
          }

          v79 = 0;
          v80 = v0[43];
          v81 = v171;
          do
          {
            if ((v64 & 0xC000000000000001) != 0)
            {
              MEMORY[0x24C22EA30](v79, v64);
            }

            else
            {
              v82 = *(v64 + 8 * v79 + 32);
            }

            sub_24AD5EA44();
            v171 = v81;
            v84 = *(v81 + 16);
            v83 = *(v81 + 24);
            if (v84 >= v83 >> 1)
            {
              sub_24AD33640((v83 > 1), v84 + 1, 1);
              v81 = v171;
            }

            v85 = v0[46];
            v86 = v0[42];
            ++v79;
            *(v81 + 16) = v84 + 1;
            (*(v80 + 32))(v81 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v84, v85, v86);
          }

          while (v78 != v79);
          goto LABEL_101;
        }

        goto LABEL_63;
      }

      v76 = sub_24AD5EF84();

      if (v76)
      {
        goto LABEL_77;
      }

      ++v66;
      v64 = v69;
      if (v65 == v63)
      {
        goto LABEL_80;
      }
    }

LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  if (v43 != 1)
  {
LABEL_58:

    v61 = MEMORY[0x277D84FA0];
    goto LABEL_113;
  }

  v44 = sub_24AD37CDC();
  v45 = v44;
  v171 = v1;
  if (v44 >> 62)
  {
LABEL_106:
    v168 = v45 & 0xFFFFFFFFFFFFFF8;
    v46 = sub_24AD5EC94();
    goto LABEL_38;
  }

  v168 = v44 & 0xFFFFFFFFFFFFFF8;
  v46 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_38:
  v47 = MEMORY[0x277D84F90];
  if (!v46)
  {
    goto LABEL_91;
  }

  v48 = 0;
  do
  {
    v49 = v48;
    while (1)
    {
      if ((v45 & 0xC000000000000001) != 0)
      {
        v50 = MEMORY[0x24C22EA30](v49, v45);
      }

      else
      {
        if (v49 >= *(v168 + 16))
        {
          goto LABEL_104;
        }

        v50 = *(v45 + 8 * v49 + 32);
      }

      v51 = v50;
      v48 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        __break(1u);
        goto LABEL_103;
      }

      v52 = v47;
      v53 = [v50 ownerName];
      v54 = sub_24AD5E844();
      v56 = v55;

      if (v54 != sub_24AD5E844() || v56 != v57)
      {
        break;
      }

LABEL_42:

      ++v49;
      v47 = v52;
      if (v48 == v46)
      {
        goto LABEL_91;
      }
    }

    v59 = sub_24AD5EF84();

    if (v59)
    {
      goto LABEL_42;
    }

    MEMORY[0x24C22E590](v60);
    if (*((v171 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v171 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24AD5E8E4();
      v0 = v170;
    }

    sub_24AD5E904();
    v47 = v171;
  }

  while (v48 != v46);
LABEL_91:

  if (v47 >> 62)
  {
    v87 = sub_24AD5EC94();
    if (!v87)
    {
      goto LABEL_111;
    }

LABEL_93:
    v171 = MEMORY[0x277D84F90];
    sub_24AD33640(0, v87 & ~(v87 >> 63), 0);
    if (v87 < 0)
    {
      goto LABEL_152;
    }

    v88 = 0;
    v89 = v0[43];
    v81 = v171;
    do
    {
      if ((v47 & 0xC000000000000001) != 0)
      {
        MEMORY[0x24C22EA30](v88, v47);
      }

      else
      {
        v90 = *(v47 + 8 * v88 + 32);
      }

      sub_24AD5EA44();
      v171 = v81;
      v92 = *(v81 + 16);
      v91 = *(v81 + 24);
      if (v92 >= v91 >> 1)
      {
        sub_24AD33640((v91 > 1), v92 + 1, 1);
        v81 = v171;
      }

      v93 = v0[45];
      v94 = v0[42];
      ++v88;
      *(v81 + 16) = v92 + 1;
      (*(v89 + 32))(v81 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v92, v93, v94);
    }

    while (v87 != v88);
LABEL_101:

    goto LABEL_112;
  }

  v87 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v87)
  {
    goto LABEL_93;
  }

LABEL_111:

  v81 = MEMORY[0x277D84F90];
LABEL_112:
  v61 = sub_24AD375B0(v81);

  v1 = MEMORY[0x277D84F90];
LABEL_113:
  v95 = sub_24AD375B0(v0[51]);

  v96 = sub_24AD2D918(v95, v61);
  v97 = v96;
  v98 = *(v96 + 16);
  if (v98)
  {
    v99 = v0[43];
    v100 = sub_24AD2ECB0(*(v96 + 16), 0);
    v101 = sub_24AD33F28(&v171, &v100[(*(v99 + 80) + 32) & ~*(v99 + 80)], v98, v97);
    sub_24ACF40D8(v171);
    if (v101 == v98)
    {
      v0 = v170;
      goto LABEL_117;
    }

    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    swift_once();
LABEL_125:
    v120 = sub_24AD5E7A4();
    __swift_project_value_buffer(v120, qword_281065448);
    v121 = sub_24AD5E784();
    v122 = sub_24AD5EB24();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      *v123 = 0;
      _os_log_impl(&dword_24ACF2000, v121, v122, "databaseChangeToken unchanged", v123, 2u);
      MEMORY[0x24C22F400](v123, -1, -1);
    }

    v124 = v170[53];
    v125 = v170[26];
    v126 = v170[25];

    v127 = v170;
    *(v126 + 64) = 0;
    *(v126 + 32) = 0u;
    *(v126 + 48) = 0u;
    *v126 = 0u;
    *(v126 + 16) = 0u;
    goto LABEL_141;
  }

  v100 = MEMORY[0x277D84F90];
LABEL_117:
  v0[54] = v100;
  v102 = v0[49];
  *(v0 + 551) = *(v102 + 161);
  v0[10] = v1;
  v103 = *(v100 + 2);
  v0[55] = v103;
  if (v103)
  {
    v104 = v0[43];
    v105 = v0[27];
    v106 = *(v104 + 80);
    *(v0 + 136) = v106;
    v107 = MEMORY[0x277D84F98];
    v0[59] = MEMORY[0x277D84F98];
    v0[60] = v1;
    v0[57] = 0;
    v0[58] = v1;
    v0[56] = v107;
    if (!*(v100 + 2))
    {
      goto LABEL_150;
    }

    v108 = v0;
    v109 = v105 & 0xC000000000000001;
    v110 = v108[44];
    v111 = v108[42];
    v112 = (*(v104 + 16))(v110, &v100[(v106 + 32) & ~v106], v111);
    v113 = MEMORY[0x24C22E740](v112);
    v108[61] = v113;
    (*(v104 + 8))(v110, v111);
    if (v109)
    {
      v114 = v113;
      v115 = sub_24AD5EE94();

      v116 = v170;
      if (v115)
      {
        v170[24] = v115;
        sub_24AD06578(0, &qword_281064980, 0x277CBC670);
        swift_dynamicCast();
        v115 = v170[23];
      }
    }

    else if (*(v108[27] + 16))
    {
      v128 = sub_24AD095D0(v113);
      v116 = v170;
      if (v129)
      {
        v115 = *(*(v170[27] + 56) + 8 * v128);
        v130 = v115;
      }

      else
      {
        v115 = 0;
      }
    }

    else
    {
      v115 = 0;
      v116 = v170;
    }

    v116[62] = v115;
    v161 = v116[49];

    return MEMORY[0x2822009F8](sub_24AD2B42C, v161, 0);
  }

  else
  {
    v117 = v0;
    v118 = v0[26];
    if (v118)
    {
      sub_24AD06578(0, &qword_281064970, 0x277D82BB8);
      v119 = v118;
      if (sub_24AD5EC04())
      {

        if (qword_281064D90 != -1)
        {
          goto LABEL_153;
        }

        goto LABEL_125;
      }

      v102 = v117[49];
    }

    v127 = v117;
    v131 = [*(v102 + 112) containerID];
    v133 = v117[8];
    v132 = v117[9];
    v134 = *(v133 + 16);
    if (v134)
    {
      v162 = v131;
      v163 = v117[9];
      v135 = v117[53];
      v136 = v117[30];
      v171 = v1;
      v137 = v135;
      sub_24AD33620(0, v134, 0);
      v138 = v171;
      v139 = *(v136 + 16);
      v136 += 16;
      v140 = v133 + ((*(v136 + 64) + 32) & ~*(v136 + 64));
      v164 = *(v136 + 56);
      v167 = v139;
      v141 = (v136 - 8);
      do
      {
        v142 = v170[31];
        v143 = v170[29];
        v167(v142, v140, v143);
        v144 = sub_24AD5EAB4();
        v146 = v145;
        v147 = MEMORY[0x24C22E7B0]();
        (*v141)(v142, v143);
        v171 = v138;
        v149 = *(v138 + 16);
        v148 = *(v138 + 24);
        if (v149 >= v148 >> 1)
        {
          sub_24AD33620((v148 > 1), v149 + 1, 1);
          v138 = v171;
        }

        *(v138 + 16) = v149 + 1;
        v150 = (v138 + 24 * v149);
        v150[4] = v144;
        v150[5] = v146;
        v150[6] = v147;
        v140 += v164;
        --v134;
      }

      while (v134);
      v151 = v170[53];

      v127 = v170;

      v1 = MEMORY[0x277D84F90];
      v152 = v162;
      v132 = v163;
    }

    else
    {
      v153 = v131;

      v152 = v153;
      v138 = MEMORY[0x277D84F90];
    }

    v154 = *(v127 + 53);
    v155 = v127[52];
    v156 = *(v127 + 550);
    v157 = v127[25];
    *v157 = v152;
    *(v157 + 8) = v156;
    *(v157 + 16) = v154;
    *(v157 + 32) = v155;
    *(v157 + 40) = v132;
    v158 = MEMORY[0x277D84F98];
    *(v157 + 48) = v138;
    *(v157 + 56) = v158;
    *(v157 + 64) = v1;
LABEL_141:

    v159 = v127[1];

    return v159();
  }
}