uint64_t sub_24AD3DB14()
{

  v1 = v0[40];
  v2 = v1;
  v3 = sub_24AD5E784();
  v4 = sub_24AD5EB44();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[29];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = sub_24AD5E324();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_24ACF2000, v3, v4, "Error processing CKDatabaseNotification: %{public}@", v7, 0xCu);
    sub_24AD06518(v8, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v8, -1, -1);
    MEMORY[0x24C22F400](v7, -1, -1);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_24AD3DCE0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_24AD3DDC8;

    return sub_24AD3DF24();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_24AD3DDC8()
{

  return MEMORY[0x2822009F8](sub_24AD3DEC4, 0, 0);
}

uint64_t sub_24AD3DEC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD3DF24()
{
  *(v1 + 40) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60A8, &qword_24AD60380);
  *(v1 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD3DFC0, v0, 0);
}

uint64_t sub_24AD3DFC0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  v4 = sub_24AD5A540(&qword_281065388, a2, type metadata accessor for CloudKitCoordinator, &protocol conformance descriptor for CloudKitCoordinator);
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  v6 = sub_24AD06578(0, &qword_2810649B8, 0x277CBC160);
  *v5 = v2;
  v5[1] = sub_24AD3E0F8;
  v7 = *(v2 + 40);

  return MEMORY[0x2822008A0](v2 + 16, v3, v4, 0x49746E756F636361, 0xED000029286F666ELL, sub_24AD5ACAC, v7, v6);
}

uint64_t sub_24AD3E0F8()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_24AD3E438;
  }

  else
  {
    v4 = sub_24AD3E224;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AD3E224()
{
  v1 = v0[2];
  v0[9] = v1;
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_24AD3E2C0;

  return sub_24AD3F218(v1);
}

uint64_t sub_24AD3E2C0()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_24AD3E3D0, v1, 0);
}

uint64_t sub_24AD3E3D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD3E438()
{
  v1 = *(v0 + 64);
  *(v0 + 24) = v1;
  v2 = (v0 + 24);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
  type metadata accessor for CKError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_4;
  }

  v4 = *(v0 + 32);
  *(v0 + 88) = v4;
  sub_24AD5E7B4();
  if (v5)
  {

LABEL_4:
    if (qword_2810653A0 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 64);
    v7 = sub_24AD5E7A4();
    __swift_project_value_buffer(v7, qword_2810654A0);
    v8 = v6;
    v9 = sub_24AD5E784();
    v10 = sub_24AD5EB54();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 64);
    if (v11)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      v15 = v12;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_24ACF2000, v9, v10, "Unhandled error from accountInfo in init: %{public}@", v13, 0xCu);
      sub_24AD06518(v14, &qword_27EFA61C8, &unk_24AD60C30);
      MEMORY[0x24C22F400](v14, -1, -1);
      MEMORY[0x24C22F400](v13, -1, -1);

LABEL_16:

      v24 = *(v0 + 8);

      return v24();
    }

    v17 = v12;
LABEL_15:

    goto LABEL_16;
  }

  v18 = sub_24AD5E7B4();
  if (v19)
  {
    if (qword_2810653A0 != -1)
    {
      swift_once();
    }

    v20 = sub_24AD5E7A4();
    __swift_project_value_buffer(v20, qword_2810654A0);
    v21 = sub_24AD5E784();
    v22 = sub_24AD5EB54();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_24ACF2000, v21, v22, "Missing retryAfterSeconds!", v23, 2u);
      MEMORY[0x24C22F400](v23, -1, -1);
    }

    v17 = *v2;
    goto LABEL_15;
  }

  *(v0 + 96) = v18;
  if (qword_2810653A0 != -1)
  {
    swift_once();
  }

  v26 = sub_24AD5E7A4();
  __swift_project_value_buffer(v26, qword_2810654A0);
  v27 = v4;
  v28 = sub_24AD5E784();
  v29 = sub_24AD5EB44();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138543362;
    v32 = v27;
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v30 + 4) = v33;
    *v31 = v33;
    _os_log_impl(&dword_24ACF2000, v28, v29, "Retryable error from accountInfo in init: %{public}@", v30, 0xCu);
    sub_24AD06518(v31, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v31, -1, -1);
    MEMORY[0x24C22F400](v30, -1, -1);
  }

  *(v0 + 112) = 0;
  v34 = swift_task_alloc();
  *(v0 + 104) = v34;
  *v34 = v0;
  v34[1] = sub_24AD3E8B4;

  return sub_24AD4B4EC((v0 + 112));
}

uint64_t sub_24AD3E8B4()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_24AD3E9C4, v1, 0);
}

uint64_t sub_24AD3E9C4()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 48);
  v4 = sub_24AD5E964();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  v6[5] = v2;
  sub_24AD4C458(0, 0, v3, &unk_24AD61390, v6);

  sub_24AD06518(v3, &qword_27EFA60A8, &qword_24AD60380);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_24AD3EB2C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_24AD3EBE8, Strong, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_24AD3EBE8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 56);
  v4 = sub_24AD5A540(&qword_281065388, a2, type metadata accessor for CloudKitCoordinator, &protocol conformance descriptor for CloudKitCoordinator);
  v5 = swift_task_alloc();
  *(v2 + 64) = v5;
  v6 = sub_24AD06578(0, &qword_2810649B8, 0x277CBC160);
  *v5 = v2;
  v5[1] = sub_24AD3ED20;
  v7 = *(v2 + 56);

  return MEMORY[0x2822008A0](v2 + 40, v3, v4, 0x49746E756F636361, 0xED000029286F666ELL, sub_24AD5ACAC, v7, v6);
}

uint64_t sub_24AD3ED20()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_24AD3F02C;
  }

  else
  {
    v4 = sub_24AD3EE4C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AD3EE70()
{
  if (qword_2810653A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = sub_24AD5E7A4();
  __swift_project_value_buffer(v2, qword_2810654A0);
  v3 = v1;
  v4 = sub_24AD5E784();
  v5 = sub_24AD5EB34();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 80);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_24ACF2000, v4, v5, "CKAccountChanged: %@", v7, 0xCu);
    sub_24AD06518(v8, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v8, -1, -1);
    MEMORY[0x24C22F400](v7, -1, -1);
  }

  v10 = swift_task_alloc();
  *(v0 + 88) = v10;
  *v10 = v0;
  v10[1] = sub_24AD3F0AC;
  v11 = *(v0 + 80);

  return sub_24AD3F218(v11);
}

uint64_t sub_24AD3F048()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD3F0AC()
{

  return MEMORY[0x2822009F8](sub_24AD3F1A8, 0, 0);
}

uint64_t sub_24AD3F1A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD3F218(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_24AD3F238, v1, 0);
}

uint64_t sub_24AD3F238()
{
  v26 = v0;
  if (qword_2810653A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_24AD5E7A4();
  __swift_project_value_buffer(v2, qword_2810654A0);
  v3 = v1;
  v4 = sub_24AD5E784();
  v5 = sub_24AD5EB64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 24);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_24ACF2000, v4, v5, "process accountInfo: %@", v7, 0xCu);
    sub_24AD06518(v8, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v8, -1, -1);
    MEMORY[0x24C22F400](v7, -1, -1);
  }

  v10 = *(v0 + 24);

  v11 = [v10 accountStatus];
  if (v11 <= 1)
  {
    if (!v11)
    {
      *(v0 + 102) = 0;
      v12 = (v0 + 102);
      v13 = swift_task_alloc();
      *(v0 + 40) = v13;
      *v13 = v0;
      v14 = sub_24AD3F70C;
      goto LABEL_21;
    }

    if (v11 == 1)
    {
      if ([*(v0 + 24) supportsDeviceToDeviceEncryption])
      {
        *(v0 + 101) = 4;
        v12 = (v0 + 101);
        v13 = swift_task_alloc();
        *(v0 + 48) = v13;
        *v13 = v0;
        v14 = sub_24AD3F800;
      }

      else
      {
        *(v0 + 100) = 3;
        v12 = (v0 + 100);
        v13 = swift_task_alloc();
        *(v0 + 56) = v13;
        *v13 = v0;
        v14 = sub_24AD3F8F4;
      }

      goto LABEL_21;
    }
  }

  else
  {
    switch(v11)
    {
      case 2:
        *(v0 + 99) = 1;
        v12 = (v0 + 99);
        v13 = swift_task_alloc();
        *(v0 + 64) = v13;
        *v13 = v0;
        v14 = sub_24AD3F9E8;
        goto LABEL_21;
      case 3:
        *(v0 + 98) = 2;
        v12 = (v0 + 98);
        v13 = swift_task_alloc();
        *(v0 + 72) = v13;
        *v13 = v0;
        v14 = sub_24AD3FADC;
        goto LABEL_21;
      case 4:
        *(v0 + 97) = 3;
        v12 = (v0 + 97);
        v13 = swift_task_alloc();
        *(v0 + 80) = v13;
        *v13 = v0;
        v14 = sub_24AD3FBD0;
        goto LABEL_21;
    }
  }

  v15 = *(v0 + 24);
  v16 = sub_24AD5E784();
  v17 = sub_24AD5EB44();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = *(v0 + 24);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v25 = v20;
    *v19 = 136315138;
    *(v0 + 16) = [v18 accountStatus];
    type metadata accessor for CKAccountStatus(0);
    v21 = sub_24AD5E854();
    v23 = sub_24AD2EDAC(v21, v22, &v25);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_24ACF2000, v16, v17, "Unhandled accountStatus: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x24C22F400](v20, -1, -1);
    MEMORY[0x24C22F400](v19, -1, -1);
  }

  *(v0 + 96) = 0;
  v12 = (v0 + 96);
  v13 = swift_task_alloc();
  *(v0 + 88) = v13;
  *v13 = v0;
  v14 = sub_24AD3FCC4;
LABEL_21:
  v13[1] = v14;

  return sub_24AD4B4EC(v12);
}

uint64_t sub_24AD3F70C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24AD3F800()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24AD3F8F4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24AD3F9E8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24AD3FADC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24AD3FBD0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24AD3FCC4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24AD3FDB8(uint64_t a1, uint64_t a2)
{
  v3 = sub_24AD5E234();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_24AD5E214();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24AD3FEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60A8, &qword_24AD60380);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  v10 = sub_24AD5E964();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v11;
  v12[5] = a3;
  sub_24AD0E738(0, 0, v9, a5, v12);
}

uint64_t sub_24AD3FFF0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_24AD400AC, Strong, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_24AD400AC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 56);
  v4 = sub_24AD5A540(&qword_281065388, a2, type metadata accessor for CloudKitCoordinator, &protocol conformance descriptor for CloudKitCoordinator);
  v5 = swift_task_alloc();
  *(v2 + 64) = v5;
  v6 = sub_24AD06578(0, &qword_2810649B8, 0x277CBC160);
  *v5 = v2;
  v5[1] = sub_24AD401E4;
  v7 = *(v2 + 56);

  return MEMORY[0x2822008A0](v2 + 40, v3, v4, 0x49746E756F636361, 0xED000029286F666ELL, sub_24AD59C98, v7, v6);
}

uint64_t sub_24AD401E4()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_24AD404F0;
  }

  else
  {
    v4 = sub_24AD40310;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AD40334()
{
  if (qword_2810653A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = sub_24AD5E7A4();
  __swift_project_value_buffer(v2, qword_2810654A0);
  v3 = v1;
  v4 = sub_24AD5E784();
  v5 = sub_24AD5EB34();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 80);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_24ACF2000, v4, v5, "CKIdentityUpdate: %@", v7, 0xCu);
    sub_24AD06518(v8, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v8, -1, -1);
    MEMORY[0x24C22F400](v7, -1, -1);
  }

  v10 = swift_task_alloc();
  *(v0 + 88) = v10;
  *v10 = v0;
  v10[1] = sub_24AD4050C;
  v11 = *(v0 + 80);

  return sub_24AD3F218(v11);
}

uint64_t sub_24AD4050C()
{

  return MEMORY[0x2822009F8](sub_24AD5AC94, 0, 0);
}

uint64_t CloudKitCoordinator.deinit()
{
  v1 = v0;
  if (qword_2810653A0 != -1)
  {
    swift_once();
  }

  v2 = sub_24AD5E7A4();
  __swift_project_value_buffer(v2, qword_2810654A0);
  v3 = sub_24AD5E784();
  v4 = sub_24AD5EB64();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24ACF2000, v3, v4, "CloudKitCoordinator deinit", v5, 2u);
    MEMORY[0x24C22F400](v5, -1, -1);
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_defaultActor_destroy();
  return v1;
}

uint64_t CloudKitCoordinator.__deallocating_deinit()
{
  CloudKitCoordinator.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24AD4077C(uint64_t a1, uint64_t a2)
{
  v39 = a1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FD0, &unk_24AD60290);
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

    sub_24AD39C64(0, 0, v37, &unk_24AD61498, v26);

    return (*(v34 + 8))(v36, v23);
  }

  return result;
}

uint64_t sub_24AD40B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_24AD40BA0, a4, 0);
}

uint64_t sub_24AD40BA0()
{
  sub_24AD40C00(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD40C00(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6068, &qword_24AD614A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v28 - v4;
  v6 = sub_24AD5E404();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v32 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  if (qword_2810653A0 != -1)
  {
    swift_once();
  }

  v12 = sub_24AD5E7A4();
  __swift_project_value_buffer(v12, qword_2810654A0);
  v31 = *(v7 + 16);
  v31(v11, a1, v6);
  v13 = sub_24AD5E784();
  v14 = sub_24AD5EB24();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = a1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v30 = v1;
    v28 = v17;
    v33[0] = v17;
    *v16 = 136446210;
    sub_24AD5A540(&qword_2810653E8, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v18 = sub_24AD5EF74();
    v19 = v5;
    v21 = v20;
    (*(v7 + 8))(v11, v6);
    v22 = sub_24AD2EDAC(v18, v21, v33);
    v5 = v19;

    *(v16 + 4) = v22;
    _os_log_impl(&dword_24ACF2000, v13, v14, "Removing accountStateContinuation for %{public}s", v16, 0xCu);
    v23 = v28;
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x24C22F400](v23, -1, -1);
    v24 = v16;
    a1 = v29;
    MEMORY[0x24C22F400](v24, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v11, v6);
  }

  v25 = v32;
  v31(v32, a1, v6);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FD0, &unk_24AD60290);
  (*(*(v26 - 8) + 56))(v5, 1, 1, v26);
  swift_beginAccess();
  sub_24AD071C0(v5, v25);
  return swift_endAccess();
}

uint64_t sub_24AD40F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA62A0, &unk_24AD61250);
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD4106C, a4, 0);
}

uint64_t sub_24AD4106C()
{
  v1 = *(v0 + 40);
  sub_24AD411B8(*(v0 + 48), *(v0 + 56));
  swift_beginAccess();
  *(v0 + 89) = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_24AD410F4, 0, 0);
}

uint64_t sub_24AD410F4()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  *(v0 + 88) = *(v0 + 89);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FD0, &unk_24AD60290);
  sub_24AD5E984();
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24AD411B8(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6068, &qword_24AD614A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v27 - v4;
  v6 = sub_24AD5E404();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v32 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - v10;
  if (qword_2810653A0 != -1)
  {
    swift_once();
  }

  v12 = sub_24AD5E7A4();
  __swift_project_value_buffer(v12, qword_2810654A0);
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
    sub_24AD5A540(&qword_2810653E8, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v17 = sub_24AD5EF74();
    v29 = a2;
    v19 = v18;
    (*(v7 + 8))(v11, v6);
    v20 = sub_24AD2EDAC(v17, v19, v34);
    a2 = v29;

    *(v16 + 4) = v20;
    _os_log_impl(&dword_24ACF2000, v13, v14, "Storing accountStateContinuation for %{public}s", v16, 0xCu);
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
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FD0, &unk_24AD60290);
  v25 = *(v24 - 8);
  (*(v25 + 16))(v5, v33, v24);
  (*(v25 + 56))(v5, 0, 1, v24);
  swift_beginAccess();
  sub_24AD071C0(v5, v23);
  return swift_endAccess();
}

uint64_t sub_24AD415B8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  swift_allocObject();
  swift_weakInit();
  (*(v5 + 104))(v7, *MEMORY[0x277D85778], v4);
  sub_24AD5E9C4();
}

uint64_t sub_24AD416D8(uint64_t a1, uint64_t a2)
{
  v39 = a1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FC0, &unk_24AD60280);
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

    sub_24AD39C64(0, 0, v37, &unk_24AD61470, v26);

    return (*(v34 + 8))(v36, v23);
  }

  return result;
}

uint64_t sub_24AD41ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_24AD5E404();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60A8, &qword_24AD60380);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v18 - v12;
  v14 = sub_24AD5E964();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v9 + 16))(&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v8);
  v15 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 4) = a2;
  (*(v9 + 32))(&v16[v15], &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);

  sub_24AD39C64(0, 0, v13, a5, v16);
}

uint64_t sub_24AD41CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_24AD41CD8, a4, 0);
}

uint64_t sub_24AD41CD8()
{
  sub_24AD41D38(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD41D38(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6060, &qword_24AD60278);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v28 - v4;
  v6 = sub_24AD5E404();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v32 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  if (qword_2810653A0 != -1)
  {
    swift_once();
  }

  v12 = sub_24AD5E7A4();
  __swift_project_value_buffer(v12, qword_2810654A0);
  v31 = *(v7 + 16);
  v31(v11, a1, v6);
  v13 = sub_24AD5E784();
  v14 = sub_24AD5EB24();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = a1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v30 = v1;
    v28 = v17;
    v33[0] = v17;
    *v16 = 136446210;
    sub_24AD5A540(&qword_2810653E8, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v18 = sub_24AD5EF74();
    v19 = v5;
    v21 = v20;
    (*(v7 + 8))(v11, v6);
    v22 = sub_24AD2EDAC(v18, v21, v33);
    v5 = v19;

    *(v16 + 4) = v22;
    _os_log_impl(&dword_24ACF2000, v13, v14, "Removing pushEventContinuation for %{public}s", v16, 0xCu);
    v23 = v28;
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x24C22F400](v23, -1, -1);
    v24 = v16;
    a1 = v29;
    MEMORY[0x24C22F400](v24, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v11, v6);
  }

  v25 = v32;
  v31(v32, a1, v6);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FC0, &unk_24AD60280);
  (*(*(v26 - 8) + 56))(v5, 1, 1, v26);
  swift_beginAccess();
  sub_24AD07418(v5, v25);
  return swift_endAccess();
}

uint64_t sub_24AD420D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_24AD420F4, a4, 0);
}

uint64_t sub_24AD420F4()
{
  sub_24AD42158(v0[3], v0[4]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_24AD42158(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6060, &qword_24AD60278);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v27 - v4;
  v6 = sub_24AD5E404();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v32 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - v10;
  if (qword_2810653A0 != -1)
  {
    swift_once();
  }

  v12 = sub_24AD5E7A4();
  __swift_project_value_buffer(v12, qword_2810654A0);
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
    sub_24AD5A540(&qword_2810653E8, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v17 = sub_24AD5EF74();
    v29 = a2;
    v19 = v18;
    (*(v7 + 8))(v11, v6);
    v20 = sub_24AD2EDAC(v17, v19, v34);
    a2 = v29;

    *(v16 + 4) = v20;
    _os_log_impl(&dword_24ACF2000, v13, v14, "Storing pushEventContinuation for %{public}s", v16, 0xCu);
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
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FC0, &unk_24AD60280);
  v25 = *(v24 - 8);
  (*(v25 + 16))(v5, v33, v24);
  (*(v25 + 56))(v5, 0, 1, v24);
  swift_beginAccess();
  sub_24AD07418(v5, v23);
  return swift_endAccess();
}

uint64_t sub_24AD42528(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24AD42548, v1, 0);
}

uint64_t sub_24AD42548()
{
  *(v0 + 32) = *(*(v0 + 24) + 120);
  sub_24AD5E774();
  sub_24AD5A540(&qword_281064A50, 255, MEMORY[0x277D08F50], MEMORY[0x277D08F58]);
  v2 = sub_24AD5E924();

  return MEMORY[0x2822009F8](sub_24AD4260C, v2, v1);
}

uint64_t sub_24AD4260C()
{
  sub_24AD5E744();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD42690(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = sub_24AD5A540(&qword_281065388, a2, type metadata accessor for CloudKitCoordinator, &protocol conformance descriptor for CloudKitCoordinator);
  v5 = swift_task_alloc();
  *(v2 + 40) = v5;
  v6 = sub_24AD06578(0, &qword_2810649B8, 0x277CBC160);
  *v5 = v2;
  v5[1] = sub_24AD427C8;
  v7 = *(v2 + 32);

  return MEMORY[0x2822008A0](v2 + 16, v3, v4, 0x49746E756F636361, 0xED000029286F666ELL, sub_24AD5ACAC, v7, v6);
}

uint64_t sub_24AD427C8()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_24AD4296C;
  }

  else
  {
    v4 = sub_24AD428F4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AD428F4()
{
  v1 = *(v0 + 16);
  v2 = [v1 supportsDeviceToDeviceEncryption];

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_24AD4296C()
{
  v17 = v0;
  if (qword_2810653A0 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_24AD5E7A4();
  __swift_project_value_buffer(v2, qword_2810654A0);
  v3 = v1;
  v4 = sub_24AD5E784();
  v5 = sub_24AD5EB44();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446466;
    *(v8 + 4) = sub_24AD2EDAC(0xD000000000000014, 0x800000024AD61F70, &v16);
    *(v8 + 12) = 2082;
    v0[3] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
    v11 = sub_24AD5E854();
    v13 = sub_24AD2EDAC(v11, v12, &v16);

    *(v8 + 14) = v13;
    _os_log_impl(&dword_24ACF2000, v4, v5, "%{public}s error: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C22F400](v9, -1, -1);
    MEMORY[0x24C22F400](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14(0);
}

uint64_t sub_24AD42B7C(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 40) = *a2;
  return MEMORY[0x2822009F8](sub_24AD42BA4, v2, 0);
}

uint64_t sub_24AD42BA4()
{
  v1 = *(v0 + 16);

  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_24AD42C4C;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = *(v0 + 40);

  return sub_24AD54DF0(v4, v4, v5, v6);
}

uint64_t sub_24AD42C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v4 + 16);
  v14 = *v4;

  v12 = *(v14 + 8);
  if (!v3)
  {
    v9 = a1;
    v10 = a2;
    v11 = a3;
  }

  return v12(v9, v10, v11);
}

uint64_t sub_24AD42DA0(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v3[8] = *v2;
  v4 = sub_24AD5E624();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD42E8C, 0, 0);
}

uint64_t sub_24AD42E8C()
{
  *(v0 + 96) = [objc_allocWithZone(MEMORY[0x277CBC4F0]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C8, &qword_24AD61260);
  *(v0 + 176) = 2;
  *(v0 + 104) = sub_24AD5E604();
  sub_24AD062C8(&qword_2810653A8, &qword_27EFA60C8, &qword_24AD61260, MEMORY[0x277D08A90]);
  v2 = sub_24AD5E924();
  *(v0 + 112) = v2;
  *(v0 + 120) = v1;

  return MEMORY[0x2822009F8](sub_24AD42F88, v2, v1);
}

uint64_t sub_24AD42F88()
{
  sub_24AD5E5F4();

  return MEMORY[0x2822009F8](sub_24AD42FF0, 0, 0);
}

uint64_t sub_24AD42FF0()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 64);
  v4 = *(v0 + 40);
  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  v6 = *(v0 + 48);
  *(v5 + 16) = v4;
  *(v5 + 24) = v6;
  *(v5 + 40) = v1;
  *(v5 + 48) = v3;
  v7 = v2;
  v8 = swift_task_alloc();
  *(v0 + 136) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA62E0, &qword_24AD61318);
  *v8 = v0;
  v8[1] = sub_24AD43108;

  return MEMORY[0x28210DEC0](v0 + 16, v2, 0, &unk_24AD61310, v5, v9);
}

uint64_t sub_24AD43108()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_24AD43380;
  }

  else
  {

    v3 = sub_24AD43230;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24AD43230()
{
  *(v0 + 152) = *(v0 + 16);
  *(v0 + 168) = *(v0 + 32);
  return MEMORY[0x2822009F8](sub_24AD43258, *(v0 + 112), *(v0 + 120));
}

uint64_t sub_24AD43258()
{
  sub_24AD5E5E4();
  sub_24AD5E5D4();

  return MEMORY[0x2822009F8](sub_24AD432CC, 0, 0);
}

uint64_t sub_24AD432CC()
{
  v1 = v0[12];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  sub_24AD5E634();

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];
  v6 = v0[20];
  v7 = v0[21];
  v8 = v0[19];

  return v5(v8, v6, v7);
}

uint64_t sub_24AD43380()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AD43410(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 56) = a3;
  *(v5 + 64) = a5;
  *(v5 + 145) = a4;
  *(v5 + 48) = a2;
  v7 = sub_24AD5E624();
  *(v5 + 72) = v7;
  *(v5 + 80) = *(v7 - 8);
  *(v5 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD434DC, a2, 0);
}

uint64_t sub_24AD434DC()
{
  if ((sub_24AD5E0C4() & 1) != 0 && (v1 = objc_opt_self(), v2 = [v1 standardUserDefaults], v3 = sub_24AD5E834(), v4 = objc_msgSend(v2, sel_BOOLForKey_, v3), v3, v2, v4))
  {
    v5 = [v1 standardUserDefaults];
    v6 = sub_24AD5E834();
    [v5 setValue:0 forKey:v6];

    if (qword_2810653A0 != -1)
    {
      swift_once();
    }

    v7 = sub_24AD5E7A4();
    __swift_project_value_buffer(v7, qword_2810654A0);
    v8 = sub_24AD5E784();
    v9 = sub_24AD5EB44();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_24ACF2000, v8, v9, "Forcing .changeTokenExpired", v10, 2u);
      MEMORY[0x24C22F400](v10, -1, -1);
    }

    type metadata accessor for CKError(0);
    *(v0 + 40) = 21;
    sub_24AD52E18(MEMORY[0x277D84F90]);
    sub_24AD5A540(&qword_281064A28, 255, type metadata accessor for CKError, &unk_24AD5FAF0);
    sub_24AD5E314();
    v11 = *(v0 + 32);
    swift_willThrow();
    *(v0 + 96) = v11;
    *(v0 + 16) = v11;
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
    if (swift_dynamicCast())
    {
      v13 = *(v0 + 24);
      *(v0 + 104) = v13;
      v14 = swift_task_alloc();
      *(v0 + 112) = v14;
      *v14 = v0;
      v14[1] = sub_24AD43A18;

      return sub_24AD4A77C(v13);
    }

    else
    {
      if (qword_2810653A0 != -1)
      {
        swift_once();
      }

      v20 = *(v0 + 96);
      __swift_project_value_buffer(v7, qword_2810654A0);
      v21 = v20;
      v22 = sub_24AD5E784();
      v23 = sub_24AD5EB44();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = *(v0 + 96);
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138543362;
        v27 = v24;
        v28 = _swift_stdlib_bridgeErrorToNSError();
        *(v25 + 4) = v28;
        *v26 = v28;
        _os_log_impl(&dword_24ACF2000, v22, v23, "CloudKit error: %{public}@", v25, 0xCu);
        sub_24AD06518(v26, &qword_27EFA61C8, &unk_24AD60C30);
        MEMORY[0x24C22F400](v26, -1, -1);
        MEMORY[0x24C22F400](v25, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C8, &qword_24AD61260);
      *(v0 + 144) = 4;
      *(v0 + 120) = sub_24AD5E604();
      sub_24AD062C8(&qword_2810653A8, &qword_27EFA60C8, &qword_24AD61260, MEMORY[0x277D08A90]);
      v30 = sub_24AD5E924();

      return MEMORY[0x2822009F8](sub_24AD43D3C, v30, v29);
    }
  }

  else
  {
    v16 = swift_task_alloc();
    *(v0 + 128) = v16;
    *v16 = v0;
    v16[1] = sub_24AD43E80;
    v17 = *(v0 + 56);
    v18 = *(v0 + 64);
    v19 = *(v0 + 145);

    return sub_24AD45834(v16, v17, v19, v18);
  }
}

uint64_t sub_24AD43A18()
{
  v1 = *(*v0 + 48);

  return MEMORY[0x2822009F8](sub_24AD43B28, v1, 0);
}

uint64_t sub_24AD43B28()
{
  if (qword_2810653A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = sub_24AD5E7A4();
  __swift_project_value_buffer(v2, qword_2810654A0);
  v3 = v1;
  v4 = sub_24AD5E784();
  v5 = sub_24AD5EB44();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 96);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24ACF2000, v4, v5, "CloudKit error: %{public}@", v7, 0xCu);
    sub_24AD06518(v8, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v8, -1, -1);
    MEMORY[0x24C22F400](v7, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C8, &qword_24AD61260);
  *(v0 + 144) = 4;
  *(v0 + 120) = sub_24AD5E604();
  sub_24AD062C8(&qword_2810653A8, &qword_27EFA60C8, &qword_24AD61260, MEMORY[0x277D08A90]);
  v12 = sub_24AD5E924();

  return MEMORY[0x2822009F8](sub_24AD43D3C, v12, v11);
}

uint64_t sub_24AD43D3C()
{
  v1 = *(v0 + 48);
  sub_24AD5E614();
  sub_24AD5E5D4();

  return MEMORY[0x2822009F8](sub_24AD43DBC, v1, 0);
}

uint64_t sub_24AD43DBC()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];
  sub_24AD5E634();
  (*(v3 + 8))(v1, v2);
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_24AD43E80()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_24AD44020;
  }

  else
  {
    v4 = sub_24AD43FAC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AD43FAC()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AD44020()
{
  v1 = *(v0 + 136);
  *(v0 + 16) = v1;
  *(v0 + 96) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 24);
    *(v0 + 104) = v3;
    v4 = swift_task_alloc();
    *(v0 + 112) = v4;
    *v4 = v0;
    v4[1] = sub_24AD43A18;

    return sub_24AD4A77C(v3);
  }

  else
  {
    if (qword_2810653A0 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 96);
    v7 = sub_24AD5E7A4();
    __swift_project_value_buffer(v7, qword_2810654A0);
    v8 = v6;
    v9 = sub_24AD5E784();
    v10 = sub_24AD5EB44();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 96);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138543362;
      v14 = v11;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_24ACF2000, v9, v10, "CloudKit error: %{public}@", v12, 0xCu);
      sub_24AD06518(v13, &qword_27EFA61C8, &unk_24AD60C30);
      MEMORY[0x24C22F400](v13, -1, -1);
      MEMORY[0x24C22F400](v12, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C8, &qword_24AD61260);
    *(v0 + 144) = 4;
    *(v0 + 120) = sub_24AD5E604();
    sub_24AD062C8(&qword_2810653A8, &qword_27EFA60C8, &qword_24AD61260, MEMORY[0x277D08A90]);
    v17 = sub_24AD5E924();

    return MEMORY[0x2822009F8](sub_24AD43D3C, v17, v16);
  }
}

uint64_t sub_24AD442F8(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 48) = *a1;
  return MEMORY[0x2822009F8](sub_24AD44324, v3, 0);
}

uint64_t sub_24AD44324()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);

  v3 = v2;
  v4 = v1;
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_24AD443E0;
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  v8 = *(v0 + 16);
  v9 = *(v0 + 48);

  return sub_24AD55D74(v6, v6, v8, v7, v9);
}

uint64_t sub_24AD443E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v4 + 24);
  v9 = *(*v4 + 16);
  v15 = *v4;

  v13 = *(v15 + 8);
  if (!v3)
  {
    v10 = a1;
    v11 = a2;
    v12 = a3;
  }

  return v13(v10, v11, v12);
}

uint64_t sub_24AD44554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = *v3;
  v5 = sub_24AD5E624();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD44640, 0, 0);
}

uint64_t sub_24AD44640()
{
  *(v0 + 104) = [objc_allocWithZone(MEMORY[0x277CBC4F0]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C8, &qword_24AD61260);
  *(v0 + 184) = 3;
  *(v0 + 112) = sub_24AD5E604();
  sub_24AD062C8(&qword_2810653A8, &qword_27EFA60C8, &qword_24AD61260, MEMORY[0x277D08A90]);
  v2 = sub_24AD5E924();
  *(v0 + 120) = v2;
  *(v0 + 128) = v1;

  return MEMORY[0x2822009F8](sub_24AD4473C, v2, v1);
}

uint64_t sub_24AD4473C()
{
  sub_24AD5E5F4();

  return MEMORY[0x2822009F8](sub_24AD447A4, 0, 0);
}

uint64_t sub_24AD447A4()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v11 = *(v0 + 48);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v0 + 136) = v6;
  *(v6 + 16) = v11;
  *(v6 + 32) = v5;
  *(v6 + 40) = v1;
  *(v6 + 48) = v4;
  *(v6 + 56) = v3;
  v7 = v2;
  v8 = swift_task_alloc();
  *(v0 + 144) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA62B8, &qword_24AD612C0);
  *v8 = v0;
  v8[1] = sub_24AD448CC;

  return MEMORY[0x28210DEC0](v0 + 16, v2, 0, &unk_24AD612B8, v6, v9);
}

uint64_t sub_24AD448CC()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_24AD44B44;
  }

  else
  {

    v3 = sub_24AD449F4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24AD449F4()
{
  *(v0 + 160) = *(v0 + 16);
  *(v0 + 176) = *(v0 + 32);
  return MEMORY[0x2822009F8](sub_24AD44A1C, *(v0 + 120), *(v0 + 128));
}

uint64_t sub_24AD44A1C()
{
  sub_24AD5E5E4();
  sub_24AD5E5D4();

  return MEMORY[0x2822009F8](sub_24AD44A90, 0, 0);
}

uint64_t sub_24AD44A90()
{
  v1 = v0[13];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  sub_24AD5E634();

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];
  v6 = v0[21];
  v7 = v0[22];
  v8 = v0[20];

  return v5(v8, v6, v7);
}

uint64_t sub_24AD44B44()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AD44BD4(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  *(v4 + 72) = *a3;
  return MEMORY[0x2822009F8](sub_24AD44C00, v3, 0);
}

uint64_t sub_24AD44C00()
{
  v1 = objc_allocWithZone(MEMORY[0x277CBC5E8]);
  v2 = sub_24AD5E834();
  v3 = [v1 initWithZoneName_];
  *(v0 + 40) = v3;

  if (qword_2810653A0 != -1)
  {
    swift_once();
  }

  v4 = sub_24AD5E7A4();
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
  *(v0 + 48) = v12;
  *v12 = v0;
  v12[1] = sub_24AD44E18;
  v13 = *(v0 + 32);
  v14 = *(v0 + 72);

  return sub_24AD52F48(v13, v13, v14, v11);
}

uint64_t sub_24AD44E18(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v4[7] = v1;

  v6 = v4[4];
  if (v1)
  {
    v7 = sub_24AD44FE4;
  }

  else
  {
    v4[8] = a1;
    v7 = sub_24AD44F7C;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_24AD44F7C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1(v2);
}

uint64_t sub_24AD44FE4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD45048(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = a4;
  *(v4 + 80) = a3;
  *(v4 + 24) = a1;
  return MEMORY[0x2822009F8](sub_24AD45070, 0, 0);
}

uint64_t sub_24AD45070()
{
  v1 = v0[4];
  v2 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6120, &qword_24AD60CA0);
  v3 = swift_allocObject();
  v0[6] = v3;
  *(v3 + 16) = xmmword_24AD60330;
  *(v3 + 32) = v2;
  v4 = v2;

  return MEMORY[0x2822009F8](sub_24AD45118, v1, 0);
}

uint64_t sub_24AD45118()
{
  *(v0 + 56) = [*(*(v0 + 32) + 112) *off_278FFD950[*(v0 + 80)]];
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_24AD451E8;
  v2 = *(v0 + 48);
  v3 = MEMORY[0x277D84F90];

  return MEMORY[0x28210DEF8](v2, v3);
}

uint64_t sub_24AD451E8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  *(*v3 + 72) = a1;

  v6 = *(v4 + 56);
  if (v2)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24AD4538C, 0, 0);
  }
}

uint64_t sub_24AD4538C()
{
  v1 = *(v0 + 72);
  v2 = [*(v0 + 40) zoneID];
  v3 = v2;
  if (!*(v1 + 16) || (v4 = sub_24AD095D0(v2), (v5 & 1) == 0))
  {

    sub_24AD56C50();
    swift_allocError();
    *v9 = 2;
    swift_willThrow();
    goto LABEL_6;
  }

  v6 = *(*(v0 + 72) + 56) + 16 * v4;
  v7 = *v6;
  v8 = *(v6 + 8);
  sub_24ACF40BC(*v6);

  if (v8)
  {
    *(v0 + 16) = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
    swift_willThrowTypedImpl();
LABEL_6:
    v10 = *(v0 + 8);
    goto LABEL_7;
  }

  **(v0 + 24) = v7;
  v10 = *(v0 + 8);
LABEL_7:

  return v10();
}

uint64_t sub_24AD454E0(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 48) = *a2;
  return MEMORY[0x2822009F8](sub_24AD45508, v2, 0);
}

uint64_t sub_24AD45508()
{
  if (qword_2810653A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_24AD5E7A4();
  __swift_project_value_buffer(v2, qword_2810654A0);
  v3 = v1;
  v4 = sub_24AD5E784();
  v5 = sub_24AD5EB64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_24ACF2000, v4, v5, "delete zone:  %{public}@", v7, 0xCu);
    sub_24AD06518(v8, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v8, -1, -1);
    MEMORY[0x24C22F400](v7, -1, -1);
  }

  v10 = *(v0 + 16);

  v11 = v10;

  v12 = swift_task_alloc();
  *(v0 + 32) = v12;
  *v12 = v0;
  v12[1] = sub_24AD456D8;
  v14 = *(v0 + 16);
  v13 = *(v0 + 24);
  v15 = *(v0 + 48);

  return sub_24AD43410(v12, v13, v13, v15, v14);
}

uint64_t sub_24AD456D8()
{
  v2 = *v1;
  *(*v1 + 40) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_24AD4581C;
  }

  else
  {
    v4 = sub_24AD45804;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AD45834(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 72) = a3;
  *(v4 + 24) = a2;
  *(v4 + 32) = a4;
  return MEMORY[0x2822009F8](sub_24AD45858, 0, 0);
}

uint64_t sub_24AD45858()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6120, &qword_24AD60CA0);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = xmmword_24AD60330;
  *(v3 + 32) = v2;
  v4 = v2;

  return MEMORY[0x2822009F8](sub_24AD45900, v1, 0);
}

uint64_t sub_24AD45900()
{
  *(v0 + 48) = [*(*(v0 + 24) + 112) *off_278FFD950[*(v0 + 72)]];
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_24AD459D0;
  v2 = *(v0 + 40);
  v3 = MEMORY[0x277D84F90];

  return MEMORY[0x28210DEF8](v3, v2);
}

uint64_t sub_24AD459D0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  *(*v3 + 64) = a2;

  v6 = *(v4 + 48);
  if (v2)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24AD45B6C, 0, 0);
  }
}

uint64_t sub_24AD45B6C()
{
  if (!*(v0[8] + 16) || (v1 = sub_24AD095D0(v0[4]), (v2 & 1) == 0))
  {

    sub_24AD56C50();
    swift_allocError();
    *v6 = 2;
    swift_willThrow();
    goto LABEL_6;
  }

  v3 = *(v0[8] + 56) + 16 * v1;
  v4 = *v3;
  v5 = *(v3 + 8);
  sub_24AD063F0(*v3, v5);

  if (v5)
  {
    v0[2] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
    swift_willThrowTypedImpl();
LABEL_6:
    v7 = v0[1];
    goto LABEL_7;
  }

  v7 = v0[1];
LABEL_7:

  return v7();
}

uint64_t sub_24AD45C8C(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 56) = *a1;
  return MEMORY[0x2822009F8](sub_24AD45CB8, v3, 0);
}

uint64_t sub_24AD45CB8()
{
  *(v0 + 40) = [*(*(v0 + 32) + 112) *off_278FFD950[*(v0 + 56)]];
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_24AD45D80;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  return MEMORY[0x28210DEF8](v3, v2);
}

uint64_t sub_24AD45D80(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 40);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_24AD45EA8(uint64_t a1, _BYTE *a2)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  *(v3 + 80) = *a2;
  return MEMORY[0x2822009F8](sub_24AD45ED0, v2, 0);
}

uint64_t sub_24AD45ED0()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6120, &qword_24AD60CA0);
  v4 = swift_allocObject();
  *(v0 + 40) = v4;
  *(v4 + 16) = xmmword_24AD60330;
  *(v4 + 32) = v3;
  v5 = *(v2 + 112);
  v6 = v3;
  v7 = [v5 *off_278FFD950[v1]];
  *(v0 + 48) = v7;
  v8 = swift_task_alloc();
  *(v0 + 56) = v8;
  *v8 = v0;
  v8[1] = sub_24AD45FF0;
  v9 = MEMORY[0x277D84F90];

  return sub_24AD4631C(v4, v9, v7, 0, 1);
}

uint64_t sub_24AD45FF0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[8] = a1;
  v4[9] = v2;

  if (v2)
  {
    v5 = v4[4];
    v6 = sub_24AD462B0;
  }

  else
  {
    v7 = v4[6];
    v8 = v4[4];

    v6 = sub_24AD46134;
    v5 = v8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AD46134()
{
  v1 = *(v0 + 64);
  v2 = [*(v0 + 24) recordID];
  v3 = v2;
  if (!*(v1 + 16) || (v4 = sub_24AD09620(v2), (v5 & 1) == 0))
  {

    sub_24AD56C50();
    swift_allocError();
    *v9 = 2;
    swift_willThrow();
    goto LABEL_6;
  }

  v6 = *(*(v0 + 64) + 56) + 16 * v4;
  v7 = *v6;
  v8 = *(v6 + 8);
  sub_24ACF40BC(*v6);

  if (v8)
  {
    *(v0 + 16) = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
    swift_willThrowTypedImpl();
LABEL_6:
    v10 = *(v0 + 8);

    return v10();
  }

  v12 = *(v0 + 8);

  return v12(v7);
}

uint64_t sub_24AD462B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD4631C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 48) = a4;
  *(v6 + 56) = v5;
  *(v6 + 216) = a5;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  *(v6 + 24) = a1;
  v7 = sub_24AD5F0D4();
  *(v6 + 64) = v7;
  *(v6 + 72) = *(v7 - 8);
  *(v6 + 80) = swift_task_alloc();
  v8 = sub_24AD5EDD4();
  *(v6 + 88) = v8;
  *(v6 + 96) = *(v8 - 8);
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();
  *(v6 + 128) = swift_task_alloc();
  v9 = sub_24AD5EDF4();
  *(v6 + 136) = v9;
  *(v6 + 144) = *(v9 - 8);
  *(v6 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD464C4, v5, 0);
}

void sub_24AD464C4()
{
  v120 = v0;
  v1 = v0[5];
  sub_24AD5EDE4();
  [v1 scope];
  v2 = CKDatabaseScopeString();
  v3 = sub_24AD5E844();
  isUniquelyReferenced_nonNull_native = v4;

  if (qword_2810653A0 != -1)
  {
LABEL_54:
    swift_once();
  }

  v6 = sub_24AD5E7A4();
  v0[20] = __swift_project_value_buffer(v6, qword_2810654A0);
  swift_bridgeObjectRetain_n();

  v7 = sub_24AD5E784();
  v8 = sub_24AD5EB64();

  v103 = v0;
  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v119 = v11;
    *v10 = 136315650;
    v12 = sub_24AD2EDAC(v3, isUniquelyReferenced_nonNull_native, &v119);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2048;
    if (v9 >> 62)
    {
      v13 = sub_24AD5EC94();
    }

    else
    {
      v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    isUniquelyReferenced_nonNull_native = v103;
    v3 = v103[4];

    *(v10 + 14) = v13;

    *(v10 + 22) = 2048;
    *(v10 + 24) = *(v3 + 16);

    _os_log_impl(&dword_24ACF2000, v7, v8, "database: %s: modifyRecord: saving: %ld deleting: %ld", v10, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    v0 = v103;
    MEMORY[0x24C22F400](v11, -1, -1);
    MEMORY[0x24C22F400](v10, -1, -1);
  }

  else
  {
    v3 = v0[4];
    swift_bridgeObjectRelease_n();
  }

  v14 = v0[4];
  v15 = *(v14 + 16);
  v0[21] = v15;
  if (v15)
  {
    isUniquelyReferenced_nonNull_native = v14 + 48;
    do
    {
      v23 = *(isUniquelyReferenced_nonNull_native - 8);
      v115 = *(isUniquelyReferenced_nonNull_native - 16);
      v24 = *isUniquelyReferenced_nonNull_native;
      swift_bridgeObjectRetain_n();
      v25 = v24;
      v26 = [v25 recordName];
      v112 = sub_24AD5E844();
      v28 = v27;

      v29 = [v25 zoneID];
      v30 = [v29 zoneName];

      v110 = sub_24AD5E844();
      v32 = v31;

      v33 = [v25 zoneID];
      v34 = [v33 ownerName];

      v108 = sub_24AD5E844();
      v36 = v35;

      v37 = sub_24AD5E784();
      v3 = sub_24AD5EB64();

      v117 = v28;

      if (os_log_type_enabled(v37, v3))
      {
        v106 = v15;
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v119 = v17;
        *v16 = 136315906;
        v18 = sub_24AD2EDAC(v108, v36, &v119);

        *(v16 + 4) = v18;
        *(v16 + 12) = 2082;
        v19 = sub_24AD2EDAC(v110, v32, &v119);

        *(v16 + 14) = v19;
        *(v16 + 22) = 2082;
        v20 = sub_24AD2EDAC(v115, v23, &v119);

        *(v16 + 24) = v20;
        *(v16 + 32) = 2080;
        v21 = sub_24AD2EDAC(v112, v117, &v119);

        *(v16 + 34) = v21;
        _os_log_impl(&dword_24ACF2000, v37, v3, "delete: [Zone: %s/%{public}s; record: %{public}s/%s]", v16, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x24C22F400](v17, -1, -1);
        v22 = v16;
        v15 = v106;
        MEMORY[0x24C22F400](v22, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      isUniquelyReferenced_nonNull_native += 24;
      --v15;
    }

    while (v15);
  }

  v38 = v103;
  v39 = v103[3];
  if (v39 >> 62)
  {
    v40 = sub_24AD5EC94();
    v0 = v103[3];
    if (v40)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0 = v103[3];
    if (v40)
    {
LABEL_15:
      v41 = 0;
      v118 = v39 & 0xC000000000000001;
      v113 = v39 & 0xFFFFFFFFFFFFFF8;
      v42 = v0 + 4;
      v43 = MEMORY[0x277D84F98];
      v116 = v40;
      while (1)
      {
        if (v118)
        {
          v45 = MEMORY[0x24C22EA30](v41, v103[3]);
        }

        else
        {
          if (v41 >= *(v113 + 16))
          {
            goto LABEL_51;
          }

          v45 = v42[v41];
        }

        v46 = v45;
        v47 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        v0 = [v45 recordID];
        v48 = [v46 recordChangeTag];
        if (v48)
        {
          v49 = v43;
          v50 = v48;
          v3 = sub_24AD5E844();
          v52 = v51;

          v43 = v49;
        }

        else
        {
          v3 = 0;
          v52 = 0xE000000000000000;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v119 = v43;
        v53 = sub_24AD09620(v0);
        v55 = v43[2];
        v56 = (v54 & 1) == 0;
        v57 = __OFADD__(v55, v56);
        v58 = v55 + v56;
        if (v57)
        {
          goto LABEL_52;
        }

        v59 = v54;
        if (v43[3] >= v58)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v54 & 1) == 0)
            {
              goto LABEL_32;
            }
          }

          else
          {
            isUniquelyReferenced_nonNull_native = v53;
            sub_24AD0525C();
            v53 = isUniquelyReferenced_nonNull_native;
            v43 = v119;
            if ((v59 & 1) == 0)
            {
              goto LABEL_32;
            }
          }
        }

        else
        {
          sub_24AD04070(v58, isUniquelyReferenced_nonNull_native);
          isUniquelyReferenced_nonNull_native = v119;
          v53 = sub_24AD09620(v0);
          if ((v59 & 1) != (v60 & 1))
          {
            sub_24AD06578(0, &qword_27EFA6028, 0x277CBC5D0);

            sub_24AD5EFC4();
            return;
          }

          v43 = isUniquelyReferenced_nonNull_native;
          if ((v59 & 1) == 0)
          {
LABEL_32:
            v43[(v53 >> 6) + 8] |= 1 << v53;
            *(v43[6] + 8 * v53) = v0;
            v61 = (v43[7] + 16 * v53);
            *v61 = v3;
            v61[1] = v52;

            v62 = v43[2];
            v57 = __OFADD__(v62, 1);
            v63 = v62 + 1;
            if (v57)
            {
              goto LABEL_53;
            }

            v43[2] = v63;
            goto LABEL_17;
          }
        }

        v44 = (v43[7] + 16 * v53);
        *v44 = v3;
        v44[1] = v52;

LABEL_17:
        ++v41;
        if (v47 == v116)
        {
          v64 = v116;
          if (v116 < 1)
          {
            __break(1u);
            return;
          }

          v65 = 0;
          v102 = v103[3] + 32;
          v105 = v43;
          do
          {
            if (v118)
            {
              v73 = MEMORY[0x24C22EA30](v65, v103[3]);
            }

            else
            {
              v73 = *(v102 + 8 * v65);
            }

            v74 = v73;
            v75 = [v73 recordID];
            v76 = [v75 zoneID];

            v77 = [v76 ownerName];
            v114 = sub_24AD5E844();
            v79 = v78;

            v80 = [v74 recordID];
            v81 = [v80 zoneID];

            v82 = [v81 zoneName];
            v109 = sub_24AD5E844();
            v84 = v83;

            v111 = sub_24AD5EBE4();
            v86 = v85;
            v87 = [v74 recordID];
            v88 = [v87 recordName];

            v107 = sub_24AD5E844();
            v90 = v89;

            v91 = sub_24AD5E784();
            v92 = sub_24AD5EB64();

            if (os_log_type_enabled(v91, v92))
            {
              v66 = swift_slowAlloc();
              v104 = v74;
              v67 = swift_slowAlloc();
              v119 = v67;
              *v66 = 136315906;
              v68 = sub_24AD2EDAC(v114, v79, &v119);

              *(v66 + 4) = v68;
              *(v66 + 12) = 2082;
              v69 = sub_24AD2EDAC(v109, v84, &v119);

              *(v66 + 14) = v69;
              v64 = v116;
              *(v66 + 22) = 2082;
              v70 = sub_24AD2EDAC(v111, v86, &v119);

              *(v66 + 24) = v70;
              *(v66 + 32) = 2080;
              v71 = sub_24AD2EDAC(v107, v90, &v119);

              *(v66 + 34) = v71;
              _os_log_impl(&dword_24ACF2000, v91, v92, "modify: [Zone: %s/%{public}s; record: %{public}s/%s]", v66, 0x2Au);
              swift_arrayDestroy();
              MEMORY[0x24C22F400](v67, -1, -1);
              MEMORY[0x24C22F400](v66, -1, -1);
            }

            else
            {
            }

            ++v65;
            v72 = v105;
          }

          while (v64 != v65);
          v38 = v103;
          goto LABEL_57;
        }
      }
    }
  }

  v72 = MEMORY[0x277D84F98];
LABEL_57:
  v38[22] = v72;
  v93 = v38[5];
  sub_24AD5EDC4();

  v94 = v93;
  v95 = swift_task_alloc();
  v38[23] = v95;
  *v95 = v38;
  v95[1] = sub_24AD4707C;
  v96 = v38[6];
  v97 = *(v38 + 216);
  v99 = v38[4];
  v98 = v38[5];
  v100 = v38[3];
  v101 = v38[7];

  sub_24AD53E18(v101, v98, v100, v99, v96, v97);
}

uint64_t sub_24AD4707C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[24] = a1;
  v4[25] = a2;
  v4[26] = v2;

  if (v2)
  {
    v5 = v4[7];
    v6 = v4[5];

    v7 = sub_24AD48110;
    v8 = v5;
  }

  else
  {
    v9 = v4[7];
    v10 = v4[5];

    v7 = sub_24AD471E8;
    v8 = v9;
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

void sub_24AD471E8()
{
  v194 = v0;
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  sub_24AD5EDC4();
  v7 = *(v6 + 16);
  v7(v3, v1, v5);
  v8 = v2;
  v9 = v0;
  v7(v4, v8, v5);
  v10 = sub_24AD5E784();
  v11 = sub_24AD5EB64();
  v12 = os_log_type_enabled(v10, v11);
  v14 = v9[13];
  v13 = v9[14];
  v15 = v9[11];
  v16 = v9[12];
  v192 = v9;
  if (v12)
  {
    v17 = v9[10];
    v18 = v9[9];
    v181 = v9[8];
    v185 = swift_slowAlloc();
    v189 = swift_slowAlloc();
    v193[0] = v189;
    *v185 = 136315138;
    sub_24AD5F0C4();
    sub_24AD5A540(&qword_281064968, 255, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
    v19 = sub_24AD5F0B4();
    v21 = v20;
    (*(v18 + 8))(v17, v181);
    v22 = *(v16 + 8);
    v22(v14, v15);
    v161 = v22;
    v22(v13, v15);
    v23 = sub_24AD2EDAC(v19, v21, v193);
    v9 = v192;

    *(v185 + 4) = v23;
    _os_log_impl(&dword_24ACF2000, v10, v11, "modifyRecords duration: %s", v185, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v189);
    MEMORY[0x24C22F400](v189, -1, -1);
    MEMORY[0x24C22F400](v185, -1, -1);
  }

  else
  {

    v24 = *(v16 + 8);
    v24(v14, v15);
    v161 = v24;
    v24(v13, v15);
  }

  v25 = v9[24];
  v28 = *(v25 + 64);
  v27 = v25 + 64;
  v26 = v28;
  v170 = v9[22];
  v29 = -1;
  v30 = -1 << *(v9[24] + 32);
  if (-v30 < 64)
  {
    v29 = ~(-1 << -v30);
  }

  v31 = v29 & v26;
  v32 = (63 - v30) >> 6;
  v178 = v9[24];

  v33 = 0;
  v162 = v27;
  v163 = v32;
  while (v31)
  {
    v34 = v33;
LABEL_13:
    v35 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
    v36 = *(v178 + 56) + ((v34 << 10) | (16 * v35));
    v37 = *v36;
    if (*(v36 + 8))
    {
      v9[2] = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
      swift_willThrowTypedImpl();
      v33 = v34;
    }

    else
    {
      v175 = *v36;
      v38 = v37;
      v39 = [v38 recordID];
      v40 = [v39 zoneID];

      v41 = [v40 ownerName];
      v169 = sub_24AD5E844();
      v186 = v42;

      v43 = [v38 recordID];
      v44 = [v43 zoneID];

      v45 = [v44 zoneName];
      v167 = sub_24AD5E844();
      v171 = v46;

      v168 = sub_24AD5EBE4();
      v172 = v47;
      v48 = [v38 recordID];
      v49 = [v48 recordName];

      v166 = sub_24AD5E844();
      v182 = v50;

      v51 = [v38 recordID];
      v52 = v51;
      if (*(v170 + 16) && (v53 = sub_24AD09620(v51), (v54 & 1) != 0))
      {
        v55 = (*(v170 + 56) + 16 * v53);
        v165 = *v55;
        v190 = v55[1];
      }

      else
      {
        v165 = 0;
        v190 = 0xE000000000000000;
      }

      v56 = v186;

      v57 = [v38 recordChangeTag];
      if (v57)
      {
        v58 = v57;
        v164 = sub_24AD5E844();
        v187 = v59;
      }

      else
      {
        v187 = 0xE800000000000000;
        v164 = 0x3E44454C4941463CLL;
      }

      v60 = v172;

      v61 = v56;
      v62 = sub_24AD5E784();
      v63 = sub_24AD5EB64();

      v173 = v63;
      v64 = v63;
      v65 = v62;
      if (os_log_type_enabled(v62, v64))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v193[0] = v67;
        *v66 = 136316418;
        v68 = sub_24AD2EDAC(v169, v61, v193);

        *(v66 + 4) = v68;
        *(v66 + 12) = 2082;
        v69 = sub_24AD2EDAC(v167, v171, v193);

        *(v66 + 14) = v69;
        *(v66 + 22) = 2082;
        v70 = sub_24AD2EDAC(v168, v60, v193);

        *(v66 + 24) = v70;
        *(v66 + 32) = 2080;
        v71 = sub_24AD2EDAC(v166, v182, v193);

        *(v66 + 34) = v71;
        *(v66 + 42) = 2082;
        v72 = sub_24AD2EDAC(v165, v190, v193);

        *(v66 + 44) = v72;
        *(v66 + 52) = 2082;
        v73 = sub_24AD2EDAC(v164, v187, v193);

        *(v66 + 54) = v73;
        v74 = v65;
        _os_log_impl(&dword_24ACF2000, v65, v173, "changetag: [Zone: %s/%{public}s; record: %{public}s/%s] -- [%{public}s] -> [%{public}s]", v66, 0x3Eu);
        swift_arrayDestroy();
        MEMORY[0x24C22F400](v67, -1, -1);
        v9 = v192;
        MEMORY[0x24C22F400](v66, -1, -1);
        sub_24AD35214(v175);

        v33 = v34;
        v27 = v162;
        v32 = v163;
      }

      else
      {
        sub_24AD35214(v175);

        v33 = v34;
        v27 = v162;
        v32 = v163;
        v9 = v192;
      }
    }
  }

  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_73;
    }

    if (v34 >= v32)
    {
      break;
    }

    v31 = *(v27 + 8 * v34);
    ++v33;
    if (v31)
    {
      goto LABEL_13;
    }
  }

  v75 = v9[21];

  if (v75)
  {
    v76 = 0;
    v77 = (v9[4] + 48);
    v78 = MEMORY[0x277D84F98];
    while (1)
    {
      v81 = *(v77 - 2);
      v80 = *(v77 - 1);
      v82 = *v77;
      swift_bridgeObjectRetain_n();
      v83 = v82;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v193[0] = v78;
      v85 = sub_24AD09620(v83);
      v87 = v78[2];
      v88 = (v86 & 1) == 0;
      v89 = __OFADD__(v87, v88);
      v90 = v87 + v88;
      if (v89)
      {
        goto LABEL_74;
      }

      v91 = v86;
      if (v78[3] < v90)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_33;
      }

      v96 = v85;
      sub_24AD0525C();
      v85 = v96;
      v78 = v193[0];
      if (v91)
      {
LABEL_26:
        v79 = (v78[7] + 16 * v85);
        *v79 = v81;
        v79[1] = v80;

        goto LABEL_27;
      }

LABEL_34:
      v78[(v85 >> 6) + 8] |= 1 << v85;
      *(v78[6] + 8 * v85) = v83;
      v93 = (v78[7] + 16 * v85);
      *v93 = v81;
      v93[1] = v80;

      v94 = v78[2];
      v89 = __OFADD__(v94, 1);
      v95 = v94 + 1;
      if (v89)
      {
        goto LABEL_75;
      }

      v78[2] = v95;
LABEL_27:
      ++v76;
      v77 += 3;
      if (v76 == v192[21])
      {
        goto LABEL_39;
      }
    }

    sub_24AD04070(v90, isUniquelyReferenced_nonNull_native);
    v78 = v193[0];
    v85 = sub_24AD09620(v83);
    if ((v91 & 1) != (v92 & 1))
    {
      sub_24AD06578(0, &qword_27EFA6028, 0x277CBC5D0);
LABEL_63:

      sub_24AD5EFC4();
      return;
    }

LABEL_33:
    if (v91)
    {
      goto LABEL_26;
    }

    goto LABEL_34;
  }

  v78 = MEMORY[0x277D84F98];
LABEL_39:
  v97 = v192;
  v98 = v192[25];
  v101 = *(v98 + 64);
  v100 = v98 + 64;
  v99 = v101;
  v102 = -1;
  v103 = -1 << *(v192[25] + 32);
  if (-v103 < 64)
  {
    v102 = ~(-1 << -v103);
  }

  v104 = v102 & v99;
  v105 = (63 - v103) >> 6;
  v183 = v192[25];

  v106 = 0;
  v107 = MEMORY[0x277D84F98];
  v176 = v105;
  v179 = v100;
  while (v104)
  {
    v111 = v106;
LABEL_49:
    v112 = v107;
    v113 = __clz(__rbit64(v104)) | (v111 << 6);
    v114 = *(*(v183 + 48) + 8 * v113);
    v115 = *(v183 + 56) + 16 * v113;
    v116 = *v115;
    v117 = *(v115 + 8);
    if (!v78[2])
    {
      v152 = v114;
      sub_24AD063F0(v116, v117);
      v153 = v152;
      sub_24AD063F0(v116, v117);

      v121 = v116;
LABEL_68:
      v154 = v117;

      v155 = v97[18];
      v184 = v97[19];
      v156 = v97;
      v177 = v97[16];
      v180 = v97[17];
      v174 = v97[15];
      v157 = v97[11];

      v158 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v159 = sub_24AD5E834();
      [v158 initWithDomain:v159 code:0 userInfo:0];

      swift_willThrow();
      sub_24AD56CA4(v121, v154);

      sub_24AD56CA4(v121, v154);
      v161(v174, v157);
      v161(v177, v157);
      (*(v155 + 8))(v184, v180);

      v160 = v156[1];

      v160();
      return;
    }

    v118 = v114;
    sub_24AD063F0(v116, v117);
    v119 = v118;
    sub_24AD063F0(v116, v117);
    v120 = sub_24AD09620(v119);
    v121 = v116;
    if ((v122 & 1) == 0)
    {

      goto LABEL_68;
    }

    v123 = (v78[7] + 16 * v120);
    v125 = *v123;
    v124 = v123[1];
    v126 = v119;
    v127 = v117;
    v128 = v126;
    v188 = v121;
    v191 = v127;
    sub_24AD063F0(v121, v127);

    v107 = v112;
    v129 = swift_isUniquelyReferenced_nonNull_native();
    v193[0] = v112;
    v131 = sub_24AD096B4(v125, v124, v128);
    v132 = *(v112 + 16);
    v133 = (v130 & 1) == 0;
    v134 = v132 + v133;
    if (__OFADD__(v132, v133))
    {
      goto LABEL_76;
    }

    v135 = v130;
    if (v107[3] >= v134)
    {
      if ((v129 & 1) == 0)
      {
        sub_24AD050BC();
        v107 = v193[0];
      }
    }

    else
    {
      sub_24AD03D80(v134, v129);
      v136 = v193[0];
      v137 = sub_24AD096B4(v125, v124, v128);
      if ((v135 & 1) != (v138 & 1))
      {
        goto LABEL_63;
      }

      v131 = v137;
      v107 = v136;
    }

    v104 &= v104 - 1;
    if (v135)
    {
      v108 = v107[7] + 16 * v131;
      v109 = *v108;
      v110 = *(v108 + 8);
      *v108 = v188;
      *(v108 + 8) = v191;
      sub_24AD56CA4(v109, v110);

      sub_24AD56CA4(v188, v191);
      sub_24AD56CA4(v188, v191);
    }

    else
    {
      v107[(v131 >> 6) + 8] |= 1 << v131;
      v139 = (v107[6] + 24 * v131);
      *v139 = v125;
      v139[1] = v124;
      v139[2] = v128;
      v140 = v107[7] + 16 * v131;
      *v140 = v188;
      *(v140 + 8) = v191;
      sub_24AD56CA4(v188, v191);

      sub_24AD56CA4(v188, v191);
      v141 = v107[2];
      v89 = __OFADD__(v141, 1);
      v142 = v141 + 1;
      if (v89)
      {
        goto LABEL_77;
      }

      v107[2] = v142;
    }

    v106 = v111;
    v97 = v192;
    v105 = v176;
    v100 = v179;
  }

  while (1)
  {
    v111 = v106 + 1;
    if (__OFADD__(v106, 1))
    {
      break;
    }

    if (v111 >= v105)
    {
      v144 = v97[18];
      v143 = v97[19];
      v146 = v97[16];
      v145 = v97[17];
      v147 = v97[15];
      v148 = v97;
      v149 = v97[11];

      v161(v147, v149);
      v161(v146, v149);
      (*(v144 + 8))(v143, v145);

      v150 = v148[1];
      v151 = v148[24];

      v150(v151, v107);
      return;
    }

    v104 = *(v100 + 8 * v111);
    ++v106;
    if (v104)
    {
      goto LABEL_49;
    }
  }

LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
}

uint64_t sub_24AD48110()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  (*(v0[12] + 8))(v0[16], v0[11]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24AD481EC(uint64_t *a1, _BYTE *a2)
{
  v4 = *a1;
  *(v3 + 80) = v2;
  *(v3 + 88) = v4;
  *(v3 + 96) = *(a1 + 1);
  *(v3 + 152) = *a2;
  return MEMORY[0x2822009F8](sub_24AD48220, v2, 0);
}

uint64_t sub_24AD48220()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6130, &unk_24AD60540);
  inited = swift_initStackObject();
  *(v0 + 112) = inited;
  *(inited + 16) = xmmword_24AD5F820;
  *(inited + 32) = v4;
  *(inited + 40) = v2;
  *(inited + 48) = v3;
  v7 = *(v5 + 112);

  v8 = v3;
  v9 = [v7 *off_278FFD950[v1]];
  *(v0 + 120) = v9;
  v10 = swift_task_alloc();
  *(v0 + 128) = v10;
  *v10 = v0;
  v10[1] = sub_24AD48358;
  v11 = MEMORY[0x277D84F90];

  return sub_24AD4631C(v11, inited, v9, 0, 1);
}

uint64_t sub_24AD48358(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[17] = a2;
  v4[18] = v2;

  if (v2)
  {
    v5 = v4[10];
    v6 = sub_24AD485D4;
  }

  else
  {
    v7 = v4[15];
    v8 = v4[10];

    swift_setDeallocating();
    swift_arrayDestroy();

    v6 = sub_24AD484B0;
    v5 = v8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AD484B0()
{
  if (!*(v0[17] + 16) || (v1 = sub_24AD096B4(v0[11], v0[12], v0[13]), (v2 & 1) == 0))
  {

    sub_24AD56C50();
    swift_allocError();
    *v6 = 2;
    swift_willThrow();
    goto LABEL_6;
  }

  v3 = *(v0[17] + 56) + 16 * v1;
  v4 = *v3;
  v5 = *(v3 + 8);
  sub_24AD063F0(*v3, v5);

  if (v5)
  {
    v0[9] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
    swift_willThrowTypedImpl();
LABEL_6:
    v7 = v0[1];
    goto LABEL_7;
  }

  v7 = v0[1];
LABEL_7:

  return v7();
}

uint64_t sub_24AD485D4()
{
  swift_setDeallocating();
  swift_arrayDestroy();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD48654(uint64_t a1, uint64_t a2, uint64_t a3, char a4, _BYTE *a5)
{
  *(v6 + 72) = a4;
  *(v6 + 32) = a3;
  *(v6 + 40) = v5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 73) = *a5;
  return MEMORY[0x2822009F8](sub_24AD48684, v5, 0);
}

uint64_t sub_24AD48684()
{
  v1 = [*(*(v0 + 40) + 112) *off_278FFD950[*(v0 + 73)]];
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_24AD48754;
  v3 = *(v0 + 72);
  v4 = *(v0 + 32);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);

  return sub_24AD4631C(v6, v5, v1, v4, v3);
}

uint64_t sub_24AD48754(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 64) = v2;

  if (v2)
  {
    v8 = *(v6 + 40);

    return MEMORY[0x2822009F8](sub_24AD488C0, v8, 0);
  }

  else
  {

    v9 = *(v7 + 8);

    return v9(a1, a2);
  }
}

uint64_t sub_24AD488C0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD48924(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 40) = a2;
  *(v4 + 48) = v3;
  *(v4 + 32) = a1;
  *(v4 + 96) = *a3;
  return MEMORY[0x2822009F8](sub_24AD48950, v3, 0);
}

uint64_t sub_24AD48950()
{
  *(v0 + 56) = [*(*(v0 + 48) + 112) *off_278FFD950[*(v0 + 96)]];

  return MEMORY[0x2822009F8](sub_24AD489DC, 0, 0);
}

uint64_t sub_24AD489DC()
{
  v6 = *(v0 + 32);
  v1 = [objc_allocWithZone(MEMORY[0x277CBC4F0]) init];
  *(v0 + 64) = v1;
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *(v2 + 16) = v6;
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6228, &qword_24AD60CE0);
  *v3 = v0;
  v3[1] = sub_24AD48B00;

  return MEMORY[0x28210DEC0](v0 + 16, v1, 0, &unk_24AD60978, v2, v4);
}

uint64_t sub_24AD48B00()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_24AD48C88;
  }

  else
  {

    v2 = sub_24AD48C1C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24AD48C1C()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 8);

  return v4(v2, v3);
}

uint64_t sub_24AD48C88()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_24AD48CFC, v1, 0);
}

uint64_t sub_24AD48CFC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD48D60(uint64_t a1, _BYTE *a2)
{
  *(v3 + 128) = a1;
  *(v3 + 136) = v2;
  *(v3 + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6260, &qword_24AD60CF0);
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 25) = *a2;

  return MEMORY[0x2822009F8](sub_24AD48E20, v2, 0);
}

uint64_t sub_24AD48E20()
{
  v1 = *(v0 + 128);
  v2 = type metadata accessor for CloudKitChangeSet(0);
  v3 = *(v1 + *(v2 + 28));
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v37 = v2;
    v43 = *(v0 + 144);
    v47 = MEMORY[0x277D84F90];
    sub_24AD33620(0, v4, 0);
    v5 = v47;
    v6 = v3 + 64;
    result = sub_24AD5EC54();
    v8 = result;
    v9 = 0;
    v10 = *(v3 + 36);
    v38 = v3 + 72;
    v39 = v4;
    v40 = v0;
    v41 = v10;
    v42 = v3 + 64;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v3 + 32))
    {
      v12 = v8 >> 6;
      if ((*(v6 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_25;
      }

      if (v10 != *(v3 + 36))
      {
        goto LABEL_26;
      }

      v44 = v9;
      v13 = *(v43 + 48);
      v14 = *(v0 + 152);
      v15 = *(v0 + 160);
      v16 = *(v3 + 56);
      v46 = v5;
      v17 = *(*(v3 + 48) + 8 * v8);
      v18 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
      sub_24AD065E0(v16 + *(*(v18 - 8) + 72) * v8, v15 + v13);
      *v14 = v17;
      v19 = (v14 + *(v43 + 48));
      sub_24AD06644(v15 + v13, v19);
      v45 = *v19;
      v20 = v3;
      v21 = v19[1];
      v22 = v17;
      v5 = v46;
      v23 = v22;

      result = sub_24AD06518(v14, &qword_27EFA6260, &qword_24AD60CF0);
      v25 = *(v46 + 16);
      v24 = *(v46 + 24);
      if (v25 >= v24 >> 1)
      {
        result = sub_24AD33620((v24 > 1), v25 + 1, 1);
        v5 = v46;
      }

      *(v5 + 16) = v25 + 1;
      v26 = (v5 + 24 * v25);
      v26[4] = v45;
      v26[5] = v21;
      v26[6] = v23;
      v11 = 1 << *(v20 + 32);
      if (v8 >= v11)
      {
        goto LABEL_27;
      }

      v3 = v20;
      v6 = v42;
      v27 = *(v42 + 8 * v12);
      if ((v27 & (1 << v8)) == 0)
      {
        goto LABEL_28;
      }

      v10 = v41;
      if (v41 != *(v3 + 36))
      {
        goto LABEL_29;
      }

      v28 = v27 & (-2 << (v8 & 0x3F));
      if (v28)
      {
        v11 = __clz(__rbit64(v28)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v0 = v40;
      }

      else
      {
        v29 = v12 << 6;
        v30 = (v38 + 8 * v12);
        v31 = v12 + 1;
        v0 = v40;
        while (v31 < (v11 + 63) >> 6)
        {
          v33 = *v30++;
          v32 = v33;
          v29 += 64;
          ++v31;
          if (v33)
          {
            result = sub_24ACF3B64(v8, v41, 0);
            v11 = __clz(__rbit64(v32)) + v29;
            goto LABEL_4;
          }
        }

        result = sub_24ACF3B64(v8, v41, 0);
      }

LABEL_4:
      v9 = v44 + 1;
      v8 = v11;
      if (v44 + 1 == v39)
      {
        v1 = *(v0 + 128);
        v2 = v37;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_21:
    *(v0 + 168) = v5;
    v34 = *(v1 + *(v2 + 24));
    v35 = [*(*(v0 + 136) + 112) *off_278FFD950[*(v0 + 25)]];
    *(v0 + 176) = v35;
    v36 = swift_task_alloc();
    *(v0 + 184) = v36;
    *v36 = v0;
    v36[1] = sub_24AD491D4;

    return sub_24AD4631C(v34, v5, v35, 0, 1);
  }

  return result;
}

uint64_t sub_24AD491D4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[24] = a1;
  v4[25] = a2;
  v4[26] = v2;

  if (v2)
  {
    v5 = v4[17];
    v6 = sub_24AD4A2DC;
  }

  else
  {
    v7 = v4[22];
    v8 = v4[17];

    v6 = sub_24AD4930C;
    v5 = v8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AD4930C()
{
  v140 = v0;
  v1 = *(v0 + 192);
  v137 = v1 + 64;
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v5 = (63 - v3) >> 6;
  swift_bridgeObjectRetain_n();
  v6 = 0;
  v128 = MEMORY[0x277D84F90];
  v7 = &qword_27EFA6268;
  v131 = v1;
  if (!v4)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v8 = *(v1 + 56) + ((v6 << 10) | (16 * __clz(__rbit64(v4))));
      v9 = *v8;
      LOBYTE(v8) = *(v8 + 8);
      v4 &= v4 - 1;
      *(v0 + 16) = v9;
      *(v0 + 24) = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6268, &qword_24AD60CF8);
      sub_24AD5F0A4();
      v10 = *(v0 + 80);
      if (v10)
      {
        break;
      }

      if (!v4)
      {
        goto LABEL_6;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v128 = sub_24AD2E67C(0, v128[2] + 1, 1, v128);
    }

    v13 = v128[2];
    v12 = v128[3];
    if (v13 >= v12 >> 1)
    {
      v128 = sub_24AD2E67C((v12 > 1), v13 + 1, 1, v128);
    }

    v128[2] = v13 + 1;
    v128[v13 + 4] = v10;
    v1 = v131;
  }

  while (v4);
  while (1)
  {
LABEL_6:
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_95;
    }

    if (v11 >= v5)
    {
      break;
    }

    v4 = *(v137 + 8 * v11);
    ++v6;
    if (v4)
    {
      v6 = v11;
      goto LABEL_4;
    }
  }

  v14 = *(v0 + 200);

  v15 = v14 + 64;
  v16 = -1;
  v17 = -1 << *(v14 + 32);
  if (-v17 < 64)
  {
    v16 = ~(-1 << -v17);
  }

  v18 = v16 & *(v14 + 64);
  v19 = (63 - v17) >> 6;
  v138 = v14;
  swift_bridgeObjectRetain_n();
  v20 = 0;
  v127 = MEMORY[0x277D84F90];
  v7 = &qword_27EFA6270;
  if (!v18)
  {
    goto LABEL_21;
  }

  do
  {
LABEL_19:
    while (1)
    {
      v21 = *(v138 + 56) + ((v20 << 10) | (16 * __clz(__rbit64(v18))));
      v22 = *v21;
      LOBYTE(v21) = *(v21 + 8);
      v18 &= v18 - 1;
      *(v0 + 32) = v22;
      *(v0 + 40) = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6270, &qword_24AD60D00);
      sub_24AD5F0A4();
      v23 = *(v0 + 88);
      if (v23)
      {
        break;
      }

      if (!v18)
      {
        goto LABEL_21;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v127 = sub_24AD2E67C(0, v127[2] + 1, 1, v127);
    }

    v26 = v127[2];
    v25 = v127[3];
    if (v26 >= v25 >> 1)
    {
      v127 = sub_24AD2E67C((v25 > 1), v26 + 1, 1, v127);
    }

    v127[2] = v26 + 1;
    v127[v26 + 4] = v23;
  }

  while (v18);
LABEL_21:
  while (1)
  {
    v24 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v24 >= v19)
    {

      if (v127[2])
      {
        v27 = -1;
        v28 = -1 << *(v138 + 32);
        if (-v28 < 64)
        {
          v27 = ~(-1 << -v28);
        }

        v29 = v27 & *(v138 + 64);
        v30 = (63 - v28) >> 6;
        v118 = *(v0 + 200);

        v31 = 0;
        v113 = v15;
        v114 = v30;
        if (v29)
        {
          goto LABEL_41;
        }

LABEL_37:
        while (1)
        {
          v32 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            goto LABEL_96;
          }

          if (v32 >= v30)
          {

            break;
          }

          v29 = *(v15 + 8 * v32);
          ++v31;
          if (v29)
          {
            while (1)
            {
              v33 = __clz(__rbit64(v29));
              v29 &= v29 - 1;
              v34 = v33 | (v32 << 6);
              v35 = (*(v118 + 48) + 24 * v34);
              v36 = v35[1];
              v129 = *v35;
              v37 = v35[2];
              v38 = *(v138 + 56) + 16 * v34;
              v39 = *v38;
              v40 = *(v38 + 8);
              *(v0 + 48) = *v38;
              *(v0 + 56) = v40;

              v7 = v37;
              sub_24AD063F0(v39, v40);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6270, &qword_24AD60D00);
              sub_24AD5F0A4();
              v135 = *(v0 + 96);
              if (v135)
              {
                v123 = v39;
                v124 = v40;
                v41 = v7;

                v42 = [v41 recordName];
                v117 = sub_24AD5E844();
                v121 = v43;

                v44 = [v41 zoneID];
                v45 = [v44 zoneName];

                v116 = sub_24AD5E844();
                v133 = v46;

                v120 = v41;
                v47 = [v41 zoneID];
                v48 = [v47 ownerName];

                v115 = sub_24AD5E844();
                v50 = v49;

                if (qword_2810653A0 != -1)
                {
                  swift_once();
                }

                v51 = sub_24AD5E7A4();
                __swift_project_value_buffer(v51, qword_2810654A0);

                v7 = v121;

                v52 = v135;
                v53 = sub_24AD5E784();
                v54 = sub_24AD5EB44();
                v119 = v50;

                log = v53;
                if (os_log_type_enabled(v53, v54))
                {
                  v55 = swift_slowAlloc();
                  v56 = swift_slowAlloc();
                  v112 = swift_slowAlloc();
                  v139[0] = v112;
                  *v55 = 136316162;
                  v57 = sub_24AD2EDAC(v115, v119, v139);

                  *(v55 + 4) = v57;
                  *(v55 + 12) = 2082;
                  v58 = sub_24AD2EDAC(v116, v133, v139);

                  *(v55 + 14) = v58;
                  *(v55 + 22) = 2082;
                  v59 = sub_24AD2EDAC(v129, v36, v139);

                  *(v55 + 24) = v59;
                  *(v55 + 32) = 2080;
                  v60 = sub_24AD2EDAC(v117, v121, v139);

                  *(v55 + 34) = v60;
                  *(v55 + 42) = 2112;
                  v61 = sub_24AD5E324();
                  *(v55 + 44) = v61;
                  *v56 = v61;
                  _os_log_impl(&dword_24ACF2000, log, v54, "Delete error: [Zone: %s/%{public}s; record: %{public}s/%s]: %@", v55, 0x34u);
                  sub_24AD06518(v56, &qword_27EFA61C8, &unk_24AD60C30);
                  MEMORY[0x24C22F400](v56, -1, -1);
                  swift_arrayDestroy();
                  MEMORY[0x24C22F400](v112, -1, -1);
                  MEMORY[0x24C22F400](v55, -1, -1);

                  v7 = v120;
                  sub_24AD56CA4(v123, v124);
                }

                else
                {

                  sub_24AD56CA4(v123, v124);
                  swift_bridgeObjectRelease_n();
                }

                v31 = v32;
                v15 = v113;
                v30 = v114;
                if (!v29)
                {
                  goto LABEL_37;
                }
              }

              else
              {

                sub_24AD56CA4(v39, v40);
                v31 = v32;
                if (!v29)
                {
                  goto LABEL_37;
                }
              }

LABEL_41:
              v32 = v31;
            }
          }
        }
      }

      if (v128[2])
      {
        v62 = -1;
        v63 = -1 << *(v131 + 32);
        if (-v63 < 64)
        {
          v62 = ~(-1 << -v63);
        }

        v7 = v62 & *(v131 + 64);
        v64 = (63 - v63) >> 6;
        v132 = *(v0 + 192);

        v65 = 0;
        while (v7)
        {
          v66 = v65;
LABEL_61:
          v67 = __clz(__rbit64(v7)) | (v66 << 6);
          v68 = *(*(v132 + 48) + 8 * v67);
          v69 = *(v131 + 56) + 16 * v67;
          v70 = *v69;
          v71 = *(v69 + 8);
          v7 &= v7 - 1;
          *(v0 + 64) = *v69;
          *(v0 + 72) = v71;
          v72 = v68;
          sub_24ACF40BC(v70);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6268, &qword_24AD60CF8);
          sub_24AD5F0A4();
          v73 = *(v0 + 104);
          if (v73)
          {
            v134 = v72;
            v136 = v70;
            v74 = [v72 recordName];
            v75 = sub_24AD5E844();
            v77 = v76;

            if (qword_2810653A0 != -1)
            {
              swift_once();
            }

            v78 = sub_24AD5E7A4();
            __swift_project_value_buffer(v78, qword_2810654A0);

            v79 = v73;
            v80 = sub_24AD5E784();
            v81 = sub_24AD5EB44();

            if (os_log_type_enabled(v80, v81))
            {
              v82 = swift_slowAlloc();
              v125 = v75;
              v83 = swift_slowAlloc();
              v130 = swift_slowAlloc();
              v139[0] = v130;
              *v82 = 141558531;
              *(v82 + 4) = 1752392040;
              *(v82 + 12) = 2081;
              v84 = sub_24AD2EDAC(v125, v77, v139);
              v126 = v80;
              v85 = v84;

              *(v82 + 14) = v85;
              *(v82 + 22) = 2112;
              v86 = sub_24AD5E324();
              *(v82 + 24) = v86;
              *v83 = v86;
              _os_log_impl(&dword_24ACF2000, v126, v81, "Modify error: record: %{private,mask.hash}s: %@", v82, 0x20u);
              sub_24AD06518(v83, &qword_27EFA61C8, &unk_24AD60C30);
              MEMORY[0x24C22F400](v83, -1, -1);
              __swift_destroy_boxed_opaque_existential_1Tm(v130);
              MEMORY[0x24C22F400](v130, -1, -1);
              MEMORY[0x24C22F400](v82, -1, -1);

              sub_24AD35214(v136);
            }

            else
            {
              sub_24AD35214(v136);
            }

            v65 = v66;
          }

          else
          {

            sub_24AD35214(v70);
            v65 = v66;
          }
        }

        while (1)
        {
          v66 = v65 + 1;
          if (__OFADD__(v65, 1))
          {
            goto LABEL_97;
          }

          if (v66 >= v64)
          {

            break;
          }

          v7 = *(v137 + 8 * v66);
          ++v65;
          if (v7)
          {
            goto LABEL_61;
          }
        }
      }

      v139[0] = v128;
      sub_24AD3AB74(v127);
      v7 = v139[0];
      *(v0 + 216) = v139[0];
      v87 = *(v7 + 16);
      if (v87 < 2)
      {
        goto LABEL_75;
      }

      if (qword_2810653A0 != -1)
      {
        goto LABEL_98;
      }

      goto LABEL_71;
    }

    v18 = *(v15 + 8 * v24);
    ++v20;
    if (v18)
    {
      v20 = v24;
      goto LABEL_19;
    }
  }

LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  swift_once();
LABEL_71:
  v88 = sub_24AD5E7A4();
  __swift_project_value_buffer(v88, qword_2810654A0);

  v89 = sub_24AD5E784();
  v90 = sub_24AD5EB44();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    *v91 = 134217984;
    *(v91 + 4) = *(v7 + 16);

    _os_log_impl(&dword_24ACF2000, v89, v90, "Multiple errors: %ld", v91, 0xCu);
    MEMORY[0x24C22F400](v91, -1, -1);
  }

  else
  {
  }

  v87 = *(v7 + 16);
LABEL_75:
  *(v0 + 224) = v87;
  if (v87)
  {
    v92 = 0;
    while (1)
    {
      *(v0 + 232) = v92;
      v93 = *(*(v0 + 216) + 8 * v92 + 32);
      *(v0 + 240) = v93;
      v94 = v93;
      if (qword_2810653A0 != -1)
      {
        swift_once();
      }

      v95 = sub_24AD5E7A4();
      __swift_project_value_buffer(v95, qword_2810654A0);
      v96 = v93;
      v97 = sub_24AD5E784();
      v98 = sub_24AD5EB44();

      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        *v99 = 138412290;
        v101 = sub_24AD5E324();
        *(v99 + 4) = v101;
        *v100 = v101;
        _os_log_impl(&dword_24ACF2000, v97, v98, "Process error: %@", v99, 0xCu);
        sub_24AD06518(v100, &qword_27EFA61C8, &unk_24AD60C30);
        MEMORY[0x24C22F400](v100, -1, -1);
        MEMORY[0x24C22F400](v99, -1, -1);
      }

      *(v0 + 112) = v93;
      v102 = v93;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
      type metadata accessor for CKError(0);
      if (swift_dynamicCast())
      {
        break;
      }

      v92 = *(v0 + 232) + 1;
      if (v92 == *(v0 + 224))
      {
        v108 = *(v0 + 216);

        if (*(v108 + 16))
        {
          v110 = *(*(v0 + 216) + 32);

          swift_willThrow();

          v111 = *(v0 + 8);

          return v111();
        }

        else
        {
          __break(1u);
        }

        return result;
      }
    }

    v106 = *(v0 + 120);
    *(v0 + 248) = v106;
    v107 = swift_task_alloc();
    *(v0 + 256) = v107;
    *v107 = v0;
    v107[1] = sub_24AD4A358;

    return sub_24AD4A77C(v106);
  }

  else
  {

    v103 = *(v0 + 8);
    v104 = *(v0 + 192);
    v105 = *(v0 + 200);

    return v103(v104, v105);
  }
}

uint64_t sub_24AD4A2DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD4A358()
{
  v1 = *(*v0 + 136);

  return MEMORY[0x2822009F8](sub_24AD4A468, v1, 0);
}

uint64_t sub_24AD4A468()
{
  v1 = *(v0 + 248);

  v2 = *(v0 + 232) + 1;
  if (v2 == *(v0 + 224))
  {
LABEL_2:
    v3 = *(v0 + 216);

    if (*(v3 + 16))
    {
      v5 = *(*(v0 + 216) + 32);

      swift_willThrow();

      v6 = *(v0 + 8);

      return v6();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    while (1)
    {
      *(v0 + 232) = v2;
      v7 = *(*(v0 + 216) + 8 * v2 + 32);
      *(v0 + 240) = v7;
      v8 = v7;
      if (qword_2810653A0 != -1)
      {
        swift_once();
      }

      v9 = sub_24AD5E7A4();
      __swift_project_value_buffer(v9, qword_2810654A0);
      v10 = v7;
      v11 = sub_24AD5E784();
      v12 = sub_24AD5EB44();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *v13 = 138412290;
        v15 = sub_24AD5E324();
        *(v13 + 4) = v15;
        *v14 = v15;
        _os_log_impl(&dword_24ACF2000, v11, v12, "Process error: %@", v13, 0xCu);
        sub_24AD06518(v14, &qword_27EFA61C8, &unk_24AD60C30);
        MEMORY[0x24C22F400](v14, -1, -1);
        MEMORY[0x24C22F400](v13, -1, -1);
      }

      *(v0 + 112) = v7;
      v16 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
      type metadata accessor for CKError(0);
      if (swift_dynamicCast())
      {
        break;
      }

      v2 = *(v0 + 232) + 1;
      if (v2 == *(v0 + 224))
      {
        goto LABEL_2;
      }
    }

    v17 = *(v0 + 120);
    *(v0 + 248) = v17;
    v18 = swift_task_alloc();
    *(v0 + 256) = v18;
    *v18 = v0;
    v18[1] = sub_24AD4A358;

    return sub_24AD4A77C(v17);
  }

  return result;
}

uint64_t sub_24AD4A77C(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_24AD4A79C, v1, 0);
}

uint64_t sub_24AD4A79C()
{
  *(v0 + 16) = *(v0 + 56);
  type metadata accessor for CKError(0);
  sub_24AD5A540(&qword_281064A08, 255, type metadata accessor for CKError, &unk_24AD5F9F0);
  v1 = sub_24AD5F004();
  v3 = v2;
  if (sub_24AD5E844() == v1 && v4 == v3)
  {
  }

  else
  {
    v6 = sub_24AD5EF84();

    if ((v6 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  *(v0 + 24) = *(v0 + 56);
  sub_24AD5A540(&qword_281064A28, 255, type metadata accessor for CKError, &unk_24AD5FAF0);
  sub_24AD5E2E4();
  if (*(v0 + 32) == 9)
  {
    *(v0 + 107) = 2;
    v7 = (v0 + 107);
    v8 = swift_task_alloc();
    *(v0 + 72) = v8;
    *v8 = v0;
    v9 = sub_24AD4AB90;
  }

  else
  {
    *(v0 + 40) = *(v0 + 56);
    sub_24AD5E2E4();
    v11 = *(v0 + 48);
    switch(v11)
    {
      case 'p':
        if (*(*(v0 + 64) + 161) == 1)
        {
          if (qword_2810653A0 != -1)
          {
            swift_once();
          }

          v12 = sub_24AD5E7A4();
          __swift_project_value_buffer(v12, qword_2810654A0);
          v13 = sub_24AD5E784();
          v14 = sub_24AD5EB44();
          if (os_log_type_enabled(v13, v14))
          {
            v15 = swift_slowAlloc();
            *v15 = 0;
            _os_log_impl(&dword_24ACF2000, v13, v14, "Got identity loss, in saveAndPropagate mode. This error is handled elsewhere.", v15, 2u);
            MEMORY[0x24C22F400](v15, -1, -1);
          }

          goto LABEL_24;
        }

        *(v0 + 104) = 3;
        v7 = (v0 + 104);
        v8 = swift_task_alloc();
        *(v0 + 96) = v8;
        *v8 = v0;
        v9 = sub_24AD4AED4;
        break;
      case 'o':
        *(v0 + 105) = 3;
        v7 = (v0 + 105);
        v8 = swift_task_alloc();
        *(v0 + 88) = v8;
        *v8 = v0;
        v9 = sub_24AD4ADC4;
        break;
      case 'n':
        *(v0 + 106) = 3;
        v7 = (v0 + 106);
        v8 = swift_task_alloc();
        *(v0 + 80) = v8;
        *v8 = v0;
        v9 = sub_24AD4ACB4;
        break;
      default:
LABEL_24:
        v16 = *(v0 + 8);

        return v16();
    }
  }

  v8[1] = v9;

  return sub_24AD4B4EC(v7);
}

uint64_t sub_24AD4AB90()
{
  v1 = *(*v0 + 64);

  return MEMORY[0x2822009F8](sub_24AD4ACA0, v1, 0);
}

uint64_t sub_24AD4ACB4()
{
  v1 = *(*v0 + 64);

  return MEMORY[0x2822009F8](sub_24AD5AC80, v1, 0);
}

uint64_t sub_24AD4ADC4()
{
  v1 = *(*v0 + 64);

  return MEMORY[0x2822009F8](sub_24AD5AC80, v1, 0);
}

uint64_t sub_24AD4AED4()
{
  v1 = *(*v0 + 64);

  return MEMORY[0x2822009F8](sub_24AD5AC80, v1, 0);
}

uint64_t CloudKitCoordinator.AccountState.description.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E752ELL;
  v3 = 0x756F6363416F6E2ELL;
  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x636972747365722ELL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24AD4B0C8()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E752ELL;
  v3 = 0x756F6363416F6E2ELL;
  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x636972747365722ELL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

id sub_24AD4B188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6338, &qword_24AD61440);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  (*(v7 + 16))(&v13 - v8, a1, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v9, v6);
  sub_24AD5EBB4();
  return [*(a3 + 112) addOperation_];
}

uint64_t sub_24AD4B2E0(int a1, id a2, char a3)
{
  if (a3)
  {
    v3 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6338, &qword_24AD61440);
    return sub_24AD5E934();
  }

  else
  {
    v5 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6338, &qword_24AD61440);
    return sub_24AD5E944();
  }
}

uint64_t CloudKitCoordinator.description.getter(uint64_t a1)
{
  v2 = type metadata accessor for CloudKitCoordinator();
  v4 = sub_24AD5A540(&qword_27EFA6278, v3, type metadata accessor for CloudKitCoordinator, &protocol conformance descriptor for CloudKitCoordinator);
  v5 = sub_24AD5EF54();
  MEMORY[0x24C22E570](v5);

  MEMORY[0x24C22E570](32, 0xE100000000000000);
  v6 = MEMORY[0x24C22EC50](v2, v4);
  MEMORY[0x24C22E570](v6);

  MEMORY[0x24C22E570](32, 0xE100000000000000);
  v7 = [*(v1 + 112) containerID];
  v8 = [v7 description];
  v9 = sub_24AD5E844();
  v11 = v10;

  MEMORY[0x24C22E570](v9, v11);

  MEMORY[0x24C22E570](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_24AD4B4EC(_BYTE *a1)
{
  *(v2 + 64) = v1;
  v4 = sub_24AD5E624();
  *(v2 + 72) = v4;
  *(v2 + 80) = *(v4 - 8);
  *(v2 + 88) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA62A0, &unk_24AD61250);
  *(v2 + 96) = v5;
  *(v2 + 104) = *(v5 - 8);
  *(v2 + 112) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FD0, &unk_24AD60290);
  *(v2 + 120) = v6;
  *(v2 + 128) = *(v6 - 8);
  *(v2 + 136) = swift_task_alloc();
  *(v2 + 178) = *a1;

  return MEMORY[0x2822009F8](sub_24AD4B688, v1, 0);
}

uint64_t sub_24AD4B688()
{
  v50 = v0;
  v1 = *(v0 + 178);
  v2 = *(v0 + 64);
  swift_beginAccess();
  if (*(v2 + 160) == v1)
  {

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    if (qword_2810653A0 != -1)
    {
LABEL_48:
      swift_once();
    }

    v5 = sub_24AD5E7A4();
    __swift_project_value_buffer(v5, qword_2810654A0);

    v6 = sub_24AD5E784();
    v7 = sub_24AD5EB64();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v49 = v9;
      *v8 = 136446466;
      v10 = *(v2 + 160);
      if (v10 <= 1)
      {
        if (*(v2 + 160))
        {
          v12 = 0x636972747365722ELL;
          v11 = 0xEB00000000646574;
        }

        else
        {
          v11 = 0xE800000000000000;
          v12 = 0x6E776F6E6B6E752ELL;
        }
      }

      else if (v10 == 2)
      {
        v12 = 0x756F6363416F6E2ELL;
        v11 = 0xEA0000000000746ELL;
      }

      else if (v10 == 3)
      {
        v11 = 0x800000024AD61CF0;
        v12 = 0xD000000000000013;
      }

      else
      {
        v12 = 0xD000000000000011;
        v11 = 0x800000024AD61CD0;
      }

      v13 = *(v0 + 178);
      v14 = sub_24AD2EDAC(v12, v11, &v49);

      *(v8 + 4) = v14;
      *(v8 + 12) = 2082;
      v15 = 0xE800000000000000;
      v16 = 0x756F6363416F6E2ELL;
      v17 = 0xEA0000000000746ELL;
      v18 = 0x800000024AD61CF0;
      v19 = 0xD000000000000013;
      if (v13 != 3)
      {
        v19 = 0xD000000000000011;
        v18 = 0x800000024AD61CD0;
      }

      if (v13 != 2)
      {
        v16 = v19;
        v17 = v18;
      }

      v20 = 0x636972747365722ELL;
      if (v13)
      {
        v15 = 0xEB00000000646574;
      }

      else
      {
        v20 = 0x6E776F6E6B6E752ELL;
      }

      if (v13 <= 1)
      {
        v21 = v20;
      }

      else
      {
        v21 = v16;
      }

      if (v13 <= 1)
      {
        v22 = v15;
      }

      else
      {
        v22 = v17;
      }

      v23 = sub_24AD2EDAC(v21, v22, &v49);

      *(v8 + 14) = v23;
      _os_log_impl(&dword_24ACF2000, v6, v7, "Account state: %{public}s -> %{public}s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C22F400](v9, -1, -1);
      MEMORY[0x24C22F400](v8, -1, -1);
    }

    v24 = *(v0 + 64);
    *(v2 + 160) = *(v0 + 178);
    swift_beginAccess();
    v25 = *(v24 + 144);
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
        _os_log_impl(&dword_24ACF2000, v27, v28, "Publishing AccountState change event to %ld subscribers", v29, 0xCu);
        MEMORY[0x24C22F400](v29, -1, -1);
      }

      v25 = *(v24 + 144);
    }

    v30 = v25 + 64;
    v31 = -1;
    v32 = -1 << *(v25 + 32);
    if (-v32 < 64)
    {
      v31 = ~(-1 << -v32);
    }

    v33 = v31 & *(v25 + 64);
    v2 = (63 - v32) >> 6;
    v44 = (*(v0 + 104) + 8);
    v45 = *(v0 + 128);
    v46 = v25;

    v34 = 0;
    if (v33)
    {
      while (1)
      {
        v35 = v34;
LABEL_42:
        v36 = *(v0 + 178);
        v37 = *(v0 + 136);
        v39 = *(v0 + 112);
        v38 = *(v0 + 120);
        v47 = *(v0 + 96);
        v40 = __clz(__rbit64(v33));
        v33 &= v33 - 1;
        (*(v45 + 16))(v37, *(v46 + 56) + *(v45 + 72) * (v40 | (v35 << 6)), v38);
        *(v0 + 176) = v36;
        sub_24AD5E984();
        (*v44)(v39, v47);
        (*(v45 + 8))(v37, v38);
        if (!v33)
        {
          goto LABEL_38;
        }
      }
    }

    while (1)
    {
LABEL_38:
      v35 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
        goto LABEL_48;
      }

      if (v35 >= v2)
      {
        break;
      }

      v33 = *(v30 + 8 * v35);
      ++v34;
      if (v33)
      {
        v34 = v35;
        goto LABEL_42;
      }
    }

    v41 = *(v0 + 178);

    *(v0 + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C8, &qword_24AD61260);
    *(v0 + 177) = 1;
    *(v0 + 152) = sub_24AD5E604();
    v42 = swift_task_alloc();
    *(v0 + 160) = v42;
    *(v42 + 16) = v41;
    v48 = (*MEMORY[0x277D08A88] + MEMORY[0x277D08A88]);
    v43 = swift_task_alloc();
    *(v0 + 168) = v43;
    *v43 = v0;
    v43[1] = sub_24AD4BCC4;

    return v48(&unk_24AD61270, v42);
  }
}

uint64_t sub_24AD4BCC4()
{

  if (v0)
  {
  }

  sub_24AD062C8(&qword_2810653A8, &qword_27EFA60C8, &qword_24AD61260, MEMORY[0x277D08A90]);
  v2 = sub_24AD5E924();

  return MEMORY[0x2822009F8](sub_24AD4BE1C, v2, v1);
}

uint64_t sub_24AD4BE1C(uint64_t a1)
{
  v2 = *(v1 + 64);
  sub_24AD5E5D4();

  return MEMORY[0x2822009F8](sub_24AD4BE8C, v2, 0);
}

uint64_t sub_24AD4BE8C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  sub_24AD5E634();

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24AD4BF40(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a2;
  *(v5 + 40) = a1;
  *(v5 + 48) = a5;
  return MEMORY[0x2822009F8](sub_24AD4BF64, 0, 0);
}

uint64_t sub_24AD4BF64()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v2 = Strong;
    *(v0 + 72) = sub_24AD5F0F4();
    *(v0 + 80) = v3;

    return MEMORY[0x2822009F8](sub_24AD4C038, v2, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_24AD4C038()
{
  sub_24AD4C0D4(*(v0 + 72), *(v0 + 80));

  return MEMORY[0x2822009F8](sub_24AD4C0AC, 0, 0);
}

uint64_t sub_24AD4C0D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60A8, &qword_24AD60380);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30 - v8;
  sub_24AD5E0F4();
  if (sub_24AD5E0E4())
  {

    if (qword_2810653A0 != -1)
    {
      swift_once();
    }

    v10 = sub_24AD5E7A4();
    __swift_project_value_buffer(v10, qword_2810654A0);
    v11 = sub_24AD5E784();
    v12 = sub_24AD5EB44();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_24ACF2000, v11, v12, "scheduleRetryInitialAccountInfo should not be called while holding a transaction!", v13, 2u);
      MEMORY[0x24C22F400](v13, -1, -1);
    }
  }

  if (qword_2810653A0 != -1)
  {
    swift_once();
  }

  v14 = sub_24AD5E7A4();
  __swift_project_value_buffer(v14, qword_2810654A0);
  v15 = sub_24AD5E784();
  v16 = sub_24AD5EB64();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v30 = v9;
    v31 = v18;
    v19 = v6;
    v20 = v18;
    *v17 = 136446210;
    v21 = sub_24AD5F0E4();
    v23 = sub_24AD2EDAC(v21, v22, &v31);

    *(v17 + 4) = v23;
    _os_log_impl(&dword_24ACF2000, v15, v16, "Scheduling accountInfo retry in %{public}s.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    v24 = v20;
    v6 = v19;
    v9 = v30;
    MEMORY[0x24C22F400](v24, -1, -1);
    MEMORY[0x24C22F400](v17, -1, -1);
  }

  v25 = sub_24AD5E964();
  (*(*(v25 - 8) + 56))(v9, 1, 1, v25);
  v27 = sub_24AD5A540(&qword_281065388, v26, type metadata accessor for CloudKitCoordinator, &protocol conformance descriptor for CloudKitCoordinator);
  v28 = swift_allocObject();
  v28[2] = v3;
  v28[3] = v27;
  v28[4] = a1;
  v28[5] = a2;
  v28[6] = v3;
  v28[7] = v6;
  swift_retain_n();
  sub_24AD0E738(0, 0, v9, &unk_24AD613C0, v28);
}

uint64_t sub_24AD4C458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60A8, &qword_24AD60380);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_24AD38B48(a3, v25 - v10, &qword_27EFA60A8, &qword_24AD60380);
  v12 = sub_24AD5E964();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24AD06518(v11, &qword_27EFA60A8, &qword_24AD60380);
  }

  else
  {
    sub_24AD5E954();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24AD5E924();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24AD5E864() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA62F0, &qword_24AD613A8);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      return v22;
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

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA62F0, &qword_24AD613A8);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_24AD4C72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v8 = sub_24AD5EDF4();
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD4C7F4, a6, 0);
}

uint64_t sub_24AD4C7F4()
{
  sub_24AD5EFF4();
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_24AD4C8B4;
  v3 = v0[5];
  v2 = v0[6];

  return sub_24AD51D54(v3, v2, 0, 0, 1);
}

uint64_t sub_24AD4C8B4()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  *(*v1 + 96) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = sub_24AD4CCA0;
  }

  else
  {
    v7 = sub_24AD4CA3C;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_24AD4CA3C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 56);
  v4 = sub_24AD5A540(&qword_281065388, a2, type metadata accessor for CloudKitCoordinator, &protocol conformance descriptor for CloudKitCoordinator);
  v5 = swift_task_alloc();
  *(v2 + 104) = v5;
  v6 = sub_24AD06578(0, &qword_2810649B8, 0x277CBC160);
  *v5 = v2;
  v5[1] = sub_24AD4CB74;
  v7 = *(v2 + 56);

  return MEMORY[0x2822008A0](v2 + 16, v3, v4, 0x49746E756F636361, 0xED000029286F666ELL, sub_24AD5ACAC, v7, v6);
}

uint64_t sub_24AD4CB74()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_24AD4CF1C;
  }

  else
  {
    v4 = sub_24AD4CD04;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AD4CCA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD4CD04()
{
  v1 = v0[2];
  v0[15] = v1;
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_24AD4CDA0;

  return sub_24AD3F218(v1);
}

uint64_t sub_24AD4CDA0()
{
  v1 = *(*v0 + 56);

  return MEMORY[0x2822009F8](sub_24AD4CEB0, v1, 0);
}

uint64_t sub_24AD4CEB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD4CF1C()
{
  v1 = *(v0 + 112);
  *(v0 + 24) = v1;
  v2 = (v0 + 24);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 32);
    sub_24AD5E7B4();
    if ((v5 & 1) == 0)
    {

      sub_24AD5E7B4();
      if (v18)
      {
        if (qword_2810653A0 != -1)
        {
          swift_once();
        }

        v19 = sub_24AD5E7A4();
        __swift_project_value_buffer(v19, qword_2810654A0);
        v20 = sub_24AD5E784();
        v21 = sub_24AD5EB54();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&dword_24ACF2000, v20, v21, "Missing retryAfterSeconds!", v22, 2u);
          MEMORY[0x24C22F400](v22, -1, -1);
        }

        v17 = *v2;
      }

      else
      {
        if (qword_2810653A0 != -1)
        {
          swift_once();
        }

        v23 = sub_24AD5E7A4();
        __swift_project_value_buffer(v23, qword_2810654A0);
        v24 = v4;
        v25 = sub_24AD5E784();
        v26 = sub_24AD5EB44();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          *v27 = 138543362;
          v29 = v24;
          v30 = _swift_stdlib_bridgeErrorToNSError();
          *(v27 + 4) = v30;
          *v28 = v30;
          _os_log_impl(&dword_24ACF2000, v25, v26, "Retryable error from scheduleRetryInitialAccountInfo in init: %{public}@", v27, 0xCu);
          sub_24AD06518(v28, &qword_27EFA61C8, &unk_24AD60C30);
          MEMORY[0x24C22F400](v28, -1, -1);
          MEMORY[0x24C22F400](v27, -1, -1);
        }

        v31 = sub_24AD5F0F4();
        sub_24AD4C0D4(v31, v32);

        v17 = *(v0 + 24);
      }

      goto LABEL_20;
    }
  }

  if (qword_2810653A0 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 112);
  v7 = sub_24AD5E7A4();
  __swift_project_value_buffer(v7, qword_2810654A0);
  v8 = v6;
  v9 = sub_24AD5E784();
  v10 = sub_24AD5EB54();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 112);
  if (v11)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138543362;
    v15 = v12;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_24ACF2000, v9, v10, "Unhandled error from scheduleRetryInitialAccountInfo in init: %{public}@", v13, 0xCu);
    sub_24AD06518(v14, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v14, -1, -1);
    MEMORY[0x24C22F400](v13, -1, -1);

    goto LABEL_21;
  }

  v17 = v12;
LABEL_20:

LABEL_21:

  v33 = *(v0 + 8);

  return v33();
}

void sub_24AD4D340(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6318, &qword_24AD61410);
    v2 = sub_24AD5EF14();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_24AD351B0(*(a1 + 56) + 32 * v12, v35);
    *&v34 = v15;
    *(&v34 + 1) = v14;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];

    swift_dynamicCast();
    sub_24ACF4008(v33, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6308, &qword_24AD613E8);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_24ACF4008(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_24ACF4008(v31, v32);
    v16 = sub_24AD5ECD4();
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    sub_24ACF4008(v32, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_24AD4D63C@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if ((result - 1) >= 3)
  {
    v2 = sub_24AD5E114();
    sub_24AD5A540(&qword_27EFA5F90, 255, MEMORY[0x277D08938], MEMORY[0x277D08940]);
    swift_allocError();
    v4 = v3;
    sub_24AD5ED34();

    v5 = sub_24AD5EF74();
    MEMORY[0x24C22E570](v5);

    *v4 = 0xD00000000000001CLL;
    v4[1] = 0x800000024AD61F00;
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D08930], v2);
    return swift_willThrow();
  }

  else
  {
    *a2 = 0x10002u >> (8 * (result - 1));
  }

  return result;
}

uint64_t sub_24AD4D7D4()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6208, &qword_24AD60920);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6170, &qword_24AD61280);
  v3 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v37 = *(*(v2 - 8) + 72);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24AD5F830;
  v43 = v4;
  v5 = v2;
  v48 = v2;
  v6 = (v4 + v3 + *(v2 + 48));
  *(v4 + v3) = 3;
  v7 = v4 + v3;
  v46 = v4 + v3;
  v38 = v1;
  v8 = [v1 notificationType];
  v6[3] = MEMORY[0x277D83B88];
  v42 = sub_24AD59928();
  v6[4] = v42;
  *v6 = v8;
  v9 = *MEMORY[0x277D08AC0];
  v40 = *MEMORY[0x277D08AC0];
  v10 = sub_24AD5E644();
  v47 = *(*(v10 - 8) + 104);
  v45 = v10;
  v47(v6, v9, v10);
  v11 = *MEMORY[0x277D08AC8];
  v36 = *MEMORY[0x277D08AC8];
  v35 = sub_24AD5E654();
  v12 = *(*(v35 - 8) + 104);
  v12(v6, v11, v35);
  v13 = (v7 + v37 + *(v5 + 48));
  *(v7 + v37) = 0;
  v14 = [v1 containerID];
  v15 = [v14 containerIdentifier];

  v16 = sub_24AD5E844();
  v18 = v17;

  v13[3] = MEMORY[0x277D837D0];
  v39 = sub_24AD388E4();
  v13[4] = v39;
  *v13 = v16;
  v13[1] = v18;
  v41 = *MEMORY[0x277D08AB8];
  (v47)(v13);
  v12(v13, v36, v35);
  v19 = (v46 + 2 * v37);
  v20 = &v19[*(v48 + 48)];
  *v19 = 1;
  v21 = [v38 databaseScope];
  v20[3] = MEMORY[0x277D83B88];
  v20[4] = v42;
  *v20 = v21;
  v47(v20, v40, v45);
  v12(v20, v36, v35);
  v22 = (v46 + 3 * v37);
  *v22 = 2;
  v23 = [v38 recordZoneID];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 zoneName];

    v26 = sub_24AD5E844();
    v28 = v27;

    v29 = &v22[*(v48 + 48)];
    v29[3] = MEMORY[0x277D837D0];
    v29[4] = v39;
    v30 = 0x6E776F6E6B6E753CLL;
    if (v28)
    {
      v30 = v26;
    }

    v31 = 0xE90000000000003ELL;
    if (v28)
    {
      v31 = v28;
    }
  }

  else
  {
    v29 = &v22[*(v48 + 48)];
    v29[3] = MEMORY[0x277D837D0];
    v29[4] = v39;
    v31 = 0xE90000000000003ELL;
    v30 = 0x6E776F6E6B6E753CLL;
  }

  *v29 = v30;
  v29[1] = v31;
  v47(v29, v41, v45);
  v12(v29, v36, v35);
  v32 = sub_24AD342C4(v43);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v33 = *(v44 + 8);

  return v33(v32);
}

uint64_t sub_24AD4DCC0()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6208, &qword_24AD60920);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6170, &qword_24AD61280);
  v3 = *(*(v2 - 8) + 72);
  v4 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v29 = 2 * v3;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_24AD5F840;
  v5 = v30 + v4;
  v25 = v1;
  v6 = (v30 + v4 + *(v2 + 48));
  *(v30 + v4) = 3;
  v7 = [v1 notificationType];
  v6[3] = MEMORY[0x277D83B88];
  v28 = sub_24AD59928();
  v6[4] = v28;
  *v6 = v7;
  v8 = *MEMORY[0x277D08AC0];
  v27 = *MEMORY[0x277D08AC0];
  v9 = sub_24AD5E644();
  v26 = *(*(v9 - 8) + 104);
  v26(v6, v8, v9);
  v10 = *MEMORY[0x277D08AC8];
  v24 = *MEMORY[0x277D08AC8];
  v11 = sub_24AD5E654();
  v12 = *(*(v11 - 8) + 104);
  v12(v6, v10, v11);
  v13 = (v5 + v3 + *(v2 + 48));
  *(v5 + v3) = 0;
  v14 = [v1 containerID];
  v15 = [v14 containerIdentifier];

  v16 = sub_24AD5E844();
  v18 = v17;

  v13[3] = MEMORY[0x277D837D0];
  v13[4] = sub_24AD388E4();
  *v13 = v16;
  v13[1] = v18;
  v26(v13, *MEMORY[0x277D08AB8], v9);
  v12(v13, v24, v11);
  v19 = (v5 + v29 + *(v2 + 48));
  *(v5 + v29) = 1;
  v20 = [v25 databaseScope];
  v19[3] = MEMORY[0x277D83B88];
  v19[4] = v28;
  *v19 = v20;
  v26(v19, v27, v9);
  v12(v19, v24, v11);
  v21 = sub_24AD342C4(v30);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v22 = *(v31 + 8);

  return v22(v21);
}

void sub_24AD4E038(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA62E8, &qword_24AD61350);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  v8 = *(a2 + 112);
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_24AD59CA0;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24AD4E2C0;
  aBlock[3] = &block_descriptor_155;
  v11 = _Block_copy(aBlock);

  [v8 accountInfoWithCompletionHandler_];
  _Block_release(v11);
}

uint64_t sub_24AD4E1EC(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA62E8, &qword_24AD61350);
    return sub_24AD5E934();
  }

  else if (a1)
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA62E8, &qword_24AD61350);
    return sub_24AD5E944();
  }

  else
  {
    result = sub_24AD5EEC4();
    __break(1u);
  }

  return result;
}

void sub_24AD4E2C0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_24AD4E36C()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6208, &qword_24AD60920);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6170, &qword_24AD61280);
  v3 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24AD5F820;
  v5 = (v4 + v3);
  *v5 = 4;
  if (v1 <= 1)
  {
    if (v1)
    {
      v6 = 0xEB00000000646574;
      v7 = 0x636972747365722ELL;
    }

    else
    {
      v6 = 0xE800000000000000;
      v7 = 0x6E776F6E6B6E752ELL;
    }
  }

  else if (v1 == 2)
  {
    v6 = 0xEA0000000000746ELL;
    v7 = 0x756F6363416F6E2ELL;
  }

  else if (v1 == 3)
  {
    v6 = 0x800000024AD61CF0;
    v7 = 0xD000000000000013;
  }

  else
  {
    v7 = 0xD000000000000011;
    v6 = 0x800000024AD61CD0;
  }

  v8 = &v5[*(v2 + 48)];
  v8[3] = MEMORY[0x277D837D0];
  v8[4] = sub_24AD388E4();
  *v8 = v7;
  v8[1] = v6;
  v9 = *MEMORY[0x277D08AB8];
  v10 = sub_24AD5E644();
  (*(*(v10 - 8) + 104))(v8, v9, v10);
  v11 = *MEMORY[0x277D08AC8];
  v12 = sub_24AD5E654();
  (*(*(v12 - 8) + 104))(v8, v11, v12);
  v13 = sub_24AD342C4(v4);
  swift_setDeallocating();
  sub_24AD06518(v5, &qword_27EFA6170, &qword_24AD61280);
  swift_deallocClassInstance();
  v14 = *(v0 + 8);

  return v14(v13);
}

uint64_t sub_24AD4E61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v7 = sub_24AD5F0D4();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  v8 = sub_24AD5EDD4();
  v6[13] = v8;
  v6[14] = *(v8 - 8);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v9 = sub_24AD5EDF4();
  v6[19] = v9;
  v6[20] = *(v9 - 8);
  v6[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD4E7C0, 0, 0);
}

uint64_t sub_24AD4E7C0()
{
  v33 = v0;
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = v3;
  sub_24AD5EDE4();
  [v1 databaseScope];
  v4 = CKDatabaseScopeString();
  v5 = sub_24AD5E844();
  v7 = v6;

  *(v0 + 176) = v5;
  *(v0 + 184) = v7;
  sub_24AD5EDC4();
  if (v2)
  {
    v8 = *(v0 + 48);
    v9 = qword_2810653A0;
    v10 = v8;
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = sub_24AD5E7A4();
    __swift_project_value_buffer(v11, qword_2810654A0);

    v12 = v10;
    v13 = sub_24AD5E784();
    v14 = sub_24AD5EB64();

    if (os_log_type_enabled(v13, v14))
    {
      v16 = *(v0 + 176);
      v15 = *(v0 + 184);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v32 = v19;
      *v17 = 136315394;
      *(v17 + 4) = sub_24AD2EDAC(v16, v15, &v32);
      *(v17 + 12) = 2112;
      *(v17 + 14) = v12;
      *v18 = v8;
      v20 = v12;
      _os_log_impl(&dword_24ACF2000, v13, v14, "Fetching %s databaseChanges(since: %@)", v17, 0x16u);
      sub_24AD06518(v18, &qword_27EFA61C8, &unk_24AD60C30);
      MEMORY[0x24C22F400](v18, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x24C22F400](v19, -1, -1);
      MEMORY[0x24C22F400](v17, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_2810653A0 != -1)
    {
      swift_once();
    }

    v21 = sub_24AD5E7A4();
    __swift_project_value_buffer(v21, qword_2810654A0);

    v22 = sub_24AD5E784();
    v23 = sub_24AD5EB64();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_24AD2EDAC(v5, v7, &v32);
      _os_log_impl(&dword_24ACF2000, v22, v23, "Fetching %s databaseChanges(since: nil)", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x24C22F400](v25, -1, -1);
      MEMORY[0x24C22F400](v24, -1, -1);
    }

    v8 = 0;
  }

  *(v0 + 192) = v8;
  v26 = *(v0 + 40);
  v27 = v8;
  v28 = swift_task_alloc();
  *(v0 + 200) = v28;
  *v28 = v0;
  v28[1] = sub_24AD4EB98;
  v29 = *(v0 + 64);
  v30 = *(v0 + 40);

  return sub_24AD58664(v29, v30, v8);
}

uint64_t sub_24AD4EB98(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = *v5;
  v10 = *(*v5 + 192);
  v11 = *(*v5 + 40);
  *(v9 + 208) = a3;
  *(v9 + 216) = v4;

  if (v4)
  {

    v12 = sub_24AD4F3C4;
  }

  else
  {
    *(v9 + 280) = a4 & 1;
    *(v9 + 224) = a2;
    *(v9 + 232) = a1;
    v12 = sub_24AD4ED2C;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_24AD4ED2C()
{
  v66 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 192);
  v3 = *(v0 + 208);

  sub_24AD3AD94(v4, sub_24AD2E920, MEMORY[0x277CBBE40]);

  sub_24AD3AD94(v5, sub_24AD2E8F8, MEMORY[0x277CBBE60]);

  if (v1)
  {
    v6 = qword_2810653A0;
    v7 = *(v0 + 208);
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = sub_24AD5E7A4();
    __swift_project_value_buffer(v8, qword_2810654A0);

    v9 = v7;
    v10 = sub_24AD5E784();
    v11 = sub_24AD5EB64();

    if (os_log_type_enabled(v10, v11))
    {
      v13 = *(v0 + 176);
      v12 = *(v0 + 184);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v65 = v16;
      *v14 = 136315394;
      *(v14 + 4) = sub_24AD2EDAC(v13, v12, &v65);
      *(v14 + 12) = 2112;
      *(v14 + 14) = v9;
      *v15 = v9;
      v17 = v9;
      _os_log_impl(&dword_24ACF2000, v10, v11, "Fetching %s databaseChanges(since: %@)", v14, 0x16u);
      sub_24AD06518(v15, &qword_27EFA61C8, &unk_24AD60C30);
      MEMORY[0x24C22F400](v15, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x24C22F400](v16, -1, -1);
      MEMORY[0x24C22F400](v14, -1, -1);
    }

    else
    {
    }

    *(v0 + 192) = v9;
    v44 = *(v0 + 40);
    v45 = v9;
    v46 = swift_task_alloc();
    *(v0 + 200) = v46;
    *v46 = v0;
    v46[1] = sub_24AD4EB98;
    v47 = *(v0 + 64);
    v48 = *(v0 + 40);

    return sub_24AD58664(v47, v48, v9);
  }

  else
  {
    sub_24AD5EDC4();
    if (qword_2810653A0 != -1)
    {
      swift_once();
    }

    v18 = *(v0 + 136);
    v19 = *(v0 + 144);
    v21 = *(v0 + 120);
    v20 = *(v0 + 128);
    v22 = *(v0 + 104);
    v23 = *(v0 + 112);
    v24 = sub_24AD5E7A4();
    __swift_project_value_buffer(v24, qword_2810654A0);
    v25 = *(v23 + 16);
    v25(v20, v19, v22);
    v25(v21, v18, v22);

    v26 = sub_24AD5E784();
    v27 = sub_24AD5EB64();

    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 184);
    if (v28)
    {
      v30 = *(v0 + 176);
      v62 = v27;
      log = v26;
      v32 = *(v0 + 120);
      v31 = *(v0 + 128);
      v33 = *(v0 + 104);
      v34 = *(v0 + 112);
      v35 = *(v0 + 88);
      v36 = *(v0 + 96);
      v60 = *(v0 + 80);
      v37 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v65 = v63;
      *v37 = 136315394;
      v38 = sub_24AD2EDAC(v30, v29, &v65);

      *(v37 + 4) = v38;
      *(v37 + 12) = 2082;
      sub_24AD5F0C4();
      sub_24AD5A540(&qword_281064968, 255, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
      v39 = sub_24AD5F0B4();
      v41 = v40;
      (*(v35 + 8))(v36, v60);
      v42 = *(v34 + 8);
      v42(v32, v33);
      v42(v31, v33);
      v43 = sub_24AD2EDAC(v39, v41, &v65);

      *(v37 + 14) = v43;
      _os_log_impl(&dword_24ACF2000, log, v62, "Fetching %s databaseChanges duration: %{public}s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C22F400](v63, -1, -1);
      MEMORY[0x24C22F400](v37, -1, -1);
    }

    else
    {
      v51 = *(v0 + 120);
      v50 = *(v0 + 128);
      v52 = *(v0 + 104);
      v53 = *(v0 + 112);

      v42 = *(v53 + 8);
      v42(v51, v52);
      v42(v50, v52);
    }

    v54 = *(v0 + 208);
    v55 = *(v0 + 16);
    *(v0 + 240) = v42;
    *(v0 + 248) = v55;
    v56 = *(v55 + 16);
    v57 = swift_task_alloc();
    *(v0 + 256) = v57;
    v57[1] = vextq_s8(*(v0 + 56), *(v0 + 56), 8uLL);
    v57[2].i64[0] = v56;
    v57[2].i64[1] = v56;
    v64 = (*MEMORY[0x277D08A88] + MEMORY[0x277D08A88]);
    v58 = v54;
    v59 = swift_task_alloc();
    *(v0 + 264) = v59;
    *v59 = v0;
    v59[1] = sub_24AD4F4C4;

    return v64(&unk_24AD61330, v57);
  }
}

uint64_t sub_24AD4F3C4()
{
  v1 = *(v0 + 112);

  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 152);
  (*(v1 + 8))(*(v0 + 144), *(v0 + 104));
  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24AD4F4C4()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {

    v3 = sub_24AD4F73C;
  }

  else
  {

    v3 = sub_24AD4F60C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24AD4F60C()
{
  v1 = v0[30];
  v2 = v0[26];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[18];
  v11 = v0[19];
  v12 = v0[31];
  v6 = v0[17];
  v7 = v0[13];
  v8 = v0[4];

  v1(v6, v7);
  v1(v5, v7);
  (*(v4 + 8))(v3, v11);
  *v8 = v12;
  v8[1] = v0[3];
  v8[2] = v2;

  v9 = v0[1];

  return v9();
}

uint64_t sub_24AD4F73C()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 136);
  v3 = *(v0 + 104);

  v1(v2, v3);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v6 = *(v0 + 152);
  (*(v0 + 240))(*(v0 + 144), *(v0 + 104));
  (*(v5 + 8))(v4, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_24AD4F85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_24AD4F880, 0, 0);
}

uint64_t sub_24AD4F880()
{
  v34 = v0[4];
  v1 = v0[2];
  v37 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6208, &qword_24AD60920);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6170, &qword_24AD61280);
  v3 = *(*(v2 - 8) + 72);
  v4 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24AD5F830;
  v6 = v5 + v4;
  v7 = v2;
  v8 = (v5 + v4 + *(v2 + 48));
  *(v5 + v4) = 0;
  v32 = v5 + v4;
  v33 = v5;
  v9 = [*(v1 + 112) containerID];
  v10 = [v9 containerIdentifier];

  v11 = sub_24AD5E844();
  v13 = v12;

  v8[3] = MEMORY[0x277D837D0];
  v8[4] = sub_24AD388E4();
  *v8 = v11;
  v8[1] = v13;
  v14 = *MEMORY[0x277D08AB8];
  v15 = sub_24AD5E644();
  v38 = *(*(v15 - 8) + 104);
  v30 = v15;
  v38(v8, v14, v15);
  v16 = *MEMORY[0x277D08AC8];
  v17 = sub_24AD5E654();
  v18 = *(*(v17 - 8) + 104);
  v18(v8, v16, v17);
  v19 = (v6 + v3 + *(v7 + 48));
  *(v6 + v3) = 1;
  v20 = [v37 databaseScope];
  v19[3] = MEMORY[0x277D83B88];
  v31 = sub_24AD59928();
  v19[4] = v31;
  *v19 = v20;
  LODWORD(v37) = *MEMORY[0x277D08AC0];
  (v38)(v19);
  v18(v19, v16, v17);
  v21 = *(v7 + 48);
  v22 = (v32 + 2 * v3);
  *v22 = 5;
  v23 = &v22[v21];
  v23[3] = MEMORY[0x277D83B88];
  v23[4] = v31;
  *v23 = v34;
  v38(&v22[v21], v37, v30);
  v18(v23, v16, v17);
  v24 = *(v7 + 48);
  v25 = (v32 + 3 * v3);
  *v25 = 6;
  v26 = &v25[v24];
  v26[3] = MEMORY[0x277D83B88];
  v26[4] = v31;
  *v26 = v35;
  v38(&v25[v24], v37, v30);
  v18(v26, v16, v17);
  v27 = sub_24AD342C4(v33);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v28 = *(v36 + 8);

  return v28(v27);
}

uint64_t sub_24AD4FC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  v8 = sub_24AD5F0D4();
  v7[10] = v8;
  v7[11] = *(v8 - 8);
  v7[12] = swift_task_alloc();
  v9 = sub_24AD5EDD4();
  v7[13] = v9;
  v7[14] = *(v9 - 8);
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  v10 = sub_24AD5EDF4();
  v7[19] = v10;
  v7[20] = *(v10 - 8);
  v7[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD4FE20, 0, 0);
}

uint64_t sub_24AD4FE20()
{
  v46 = v0;
  v2 = v0[5];
  v1 = v0[6];
  v0[2] = MEMORY[0x277D84F90];
  sub_24AD5EDE4();
  [v1 databaseScope];
  v3 = CKDatabaseScopeString();
  v4 = sub_24AD5E844();
  v6 = v5;

  v0[22] = v4;
  v0[23] = v6;
  sub_24AD5EDC4();
  if (v2)
  {
    v7 = v0[5];
    v8 = qword_2810653A0;
    v9 = v7;
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = v0[7];
    v11 = sub_24AD5E7A4();
    __swift_project_value_buffer(v11, qword_2810654A0);

    v12 = v10;
    v13 = v9;
    v14 = sub_24AD5E784();
    v15 = sub_24AD5EB64();

    if (os_log_type_enabled(v14, v15))
    {
      v17 = v0[22];
      v16 = v0[23];
      v18 = v0[7];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = v44;
      *v19 = 136315650;
      *(v19 + 4) = sub_24AD2EDAC(v17, v16, &v45);
      *(v19 + 12) = 2080;
      v21 = [v18 zoneName];
      v22 = sub_24AD5E844();
      v24 = v23;

      v25 = sub_24AD2EDAC(v22, v24, &v45);

      *(v19 + 14) = v25;
      *(v19 + 22) = 2112;
      *(v19 + 24) = v13;
      *v20 = v7;
      v26 = v13;
      _os_log_impl(&dword_24ACF2000, v14, v15, "Fetching %s recordZoneChanges(zone: %s since: %@)", v19, 0x20u);
      sub_24AD06518(v20, &qword_27EFA61C8, &unk_24AD60C30);
      MEMORY[0x24C22F400](v20, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x24C22F400](v44, -1, -1);
      MEMORY[0x24C22F400](v19, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_2810653A0 != -1)
    {
      swift_once();
    }

    v27 = v0[7];
    v28 = sub_24AD5E7A4();
    __swift_project_value_buffer(v28, qword_2810654A0);

    v29 = v27;
    v30 = sub_24AD5E784();
    v31 = sub_24AD5EB64();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = v0[7];
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v45 = v34;
      *v33 = 136315394;
      *(v33 + 4) = sub_24AD2EDAC(v4, v6, &v45);
      *(v33 + 12) = 2080;
      v35 = [v32 zoneName];
      v36 = sub_24AD5E844();
      v38 = v37;

      v39 = sub_24AD2EDAC(v36, v38, &v45);

      *(v33 + 14) = v39;
      _os_log_impl(&dword_24ACF2000, v30, v31, "Fetching %s recordZoneChanges(zone: %s since: nil)", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C22F400](v34, -1, -1);
      MEMORY[0x24C22F400](v33, -1, -1);
    }

    v7 = 0;
  }

  v40 = MEMORY[0x277D84F98];
  v0[24] = v7;
  v0[25] = v40;
  v41 = swift_task_alloc();
  v0[26] = v41;
  *v41 = v0;
  v41[1] = sub_24AD502F0;
  v42 = v0[7];

  return MEMORY[0x28210DF00](v42, v7, 0, 0, 1);
}

uint64_t sub_24AD502F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = *v5;
  *(v9 + 216) = a3;
  *(v9 + 224) = v4;

  if (v4)
  {

    v10 = sub_24AD50E00;
  }

  else
  {
    *(v9 + 288) = a4 & 1;
    *(v9 + 232) = a2;
    *(v9 + 240) = a1;
    v10 = sub_24AD5044C;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_24AD5044C()
{
  v77 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 288);
  v3 = *(v0 + 216);
  v4 = *(v0 + 200);

  v5 = v3;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v76[0] = v4;
  sub_24AD59528(v1, sub_24AD522B4, 0, isUniquelyReferenced_nonNull_native, v76);

  v7 = v76[0];
  *(v0 + 248) = v76[0];

  sub_24AD3AD94(v8, sub_24AD2E8D0, MEMORY[0x277CBBE78]);

  if (v2)
  {
    v9 = qword_2810653A0;
    v10 = *(v0 + 216);
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 56);
    v12 = sub_24AD5E7A4();
    __swift_project_value_buffer(v12, qword_2810654A0);

    v13 = v11;
    v14 = v10;
    v15 = sub_24AD5E784();
    v16 = sub_24AD5EB64();

    if (os_log_type_enabled(v15, v16))
    {
      v73 = v7;
      v18 = *(v0 + 176);
      v17 = *(v0 + 184);
      v19 = *(v0 + 56);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v76[0] = v22;
      *v20 = 136315650;
      *(v20 + 4) = sub_24AD2EDAC(v18, v17, v76);
      *(v20 + 12) = 2080;
      v23 = [v19 zoneName];
      v24 = sub_24AD5E844();
      v26 = v25;

      v27 = sub_24AD2EDAC(v24, v26, v76);

      *(v20 + 14) = v27;
      *(v20 + 22) = 2112;
      *(v20 + 24) = v14;
      *v21 = v14;
      v28 = v14;
      _os_log_impl(&dword_24ACF2000, v15, v16, "Fetching %s recordZoneChanges(zone: %s since: %@)", v20, 0x20u);
      sub_24AD06518(v21, &qword_27EFA61C8, &unk_24AD60C30);
      MEMORY[0x24C22F400](v21, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x24C22F400](v22, -1, -1);
      MEMORY[0x24C22F400](v20, -1, -1);

      v7 = v73;
    }

    else
    {
    }

    *(v0 + 192) = v14;
    *(v0 + 200) = v7;
    v55 = swift_task_alloc();
    *(v0 + 208) = v55;
    *v55 = v0;
    v55[1] = sub_24AD502F0;
    v56 = *(v0 + 56);

    return MEMORY[0x28210DF00](v56, v14, 0, 0, 1);
  }

  else
  {
    v74 = v7;
    sub_24AD5EDC4();
    if (qword_2810653A0 != -1)
    {
      swift_once();
    }

    v29 = *(v0 + 136);
    v30 = *(v0 + 144);
    v32 = *(v0 + 120);
    v31 = *(v0 + 128);
    v33 = *(v0 + 104);
    v34 = *(v0 + 112);
    v35 = sub_24AD5E7A4();
    __swift_project_value_buffer(v35, qword_2810654A0);
    v36 = *(v34 + 16);
    v36(v31, v30, v33);
    v36(v32, v29, v33);

    v37 = sub_24AD5E784();
    v38 = sub_24AD5EB64();

    v39 = os_log_type_enabled(v37, v38);
    v40 = *(v0 + 184);
    if (v39)
    {
      v41 = *(v0 + 176);
      v71 = v38;
      log = v37;
      v43 = *(v0 + 120);
      v42 = *(v0 + 128);
      v44 = *(v0 + 104);
      v45 = *(v0 + 112);
      v46 = *(v0 + 88);
      v47 = *(v0 + 96);
      v69 = *(v0 + 80);
      v48 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v76[0] = v72;
      *v48 = 136315394;
      v49 = sub_24AD2EDAC(v41, v40, v76);

      *(v48 + 4) = v49;
      *(v48 + 12) = 2080;
      sub_24AD5F0C4();
      sub_24AD5A540(&qword_281064968, 255, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
      v50 = sub_24AD5F0B4();
      v52 = v51;
      (*(v46 + 8))(v47, v69);
      v53 = *(v45 + 8);
      v53(v43, v44);
      v53(v42, v44);
      v54 = sub_24AD2EDAC(v50, v52, v76);

      *(v48 + 14) = v54;
      _os_log_impl(&dword_24ACF2000, log, v71, "Fetching %s recordZoneChanges duration: %s", v48, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C22F400](v72, -1, -1);
      MEMORY[0x24C22F400](v48, -1, -1);
    }

    else
    {
      v58 = *(v0 + 120);
      v57 = *(v0 + 128);
      v59 = *(v0 + 104);
      v60 = *(v0 + 112);

      v53 = *(v60 + 8);
      v53(v58, v59);
      v53(v57, v59);
    }

    *(v0 + 256) = v53;
    v61 = *(v0 + 216);
    v62 = *(v0 + 72);
    v63 = *(v74 + 16);
    v64 = swift_task_alloc();
    *(v0 + 264) = v64;
    v65 = *(v0 + 48);
    *(v64 + 16) = v62;
    *(v64 + 24) = v65;
    *(v64 + 40) = v63;
    *(v64 + 48) = v63;
    v75 = (*MEMORY[0x277D08A88] + MEMORY[0x277D08A88]);
    v66 = v61;
    v67 = swift_task_alloc();
    *(v0 + 272) = v67;
    *v67 = v0;
    v67[1] = sub_24AD50B84;

    return v75(&unk_24AD612D0, v64);
  }
}

uint64_t sub_24AD50B84()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {

    v3 = sub_24AD50F00;
  }

  else
  {

    v3 = sub_24AD50CD0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24AD50CD0()
{
  v1 = v0[32];
  v2 = v0[27];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[18];
  v11 = v0[19];
  v12 = v0[31];
  v6 = v0[17];
  v7 = v0[13];
  v8 = v0[3];

  v1(v6, v7);
  v1(v5, v7);
  (*(v4 + 8))(v3, v11);
  *v8 = v12;
  v8[1] = v0[2];
  v8[2] = v2;

  v9 = v0[1];

  return v9();
}

uint64_t sub_24AD50E00()
{
  v1 = *(v0 + 112);

  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 152);
  (*(v1 + 8))(*(v0 + 144), *(v0 + 104));
  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24AD50F00()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 136);
  v3 = *(v0 + 104);

  v1(v2, v3);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v6 = *(v0 + 152);
  (*(v0 + 256))(*(v0 + 144), *(v0 + 104));
  (*(v5 + 8))(v4, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_24AD51020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_24AD51048, 0, 0);
}

uint64_t sub_24AD51048()
{
  v44 = v0[5];
  v45 = v0[6];
  v39 = v0[3];
  v41 = v0[4];
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6208, &qword_24AD60920);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6170, &qword_24AD61280);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v42 = 4 * *(v3 + 72);
  v5 = *(v3 + 72);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_24AD60BD0;
  v6 = v43 + v4;
  v7 = (v43 + v4 + *(v2 + 48));
  *(v43 + v4) = 0;
  v8 = [*(v1 + 112) containerID];
  v9 = [v8 containerIdentifier];

  v10 = sub_24AD5E844();
  v12 = v11;

  v7[3] = MEMORY[0x277D837D0];
  v38 = sub_24AD388E4();
  v7[4] = v38;
  *v7 = v10;
  v7[1] = v12;
  v13 = *MEMORY[0x277D08AB8];
  v37 = *MEMORY[0x277D08AB8];
  v48 = sub_24AD5E644();
  v47 = *(*(v48 - 8) + 104);
  v47(v7, v13, v48);
  v14 = *MEMORY[0x277D08AC8];
  v15 = sub_24AD5E654();
  v16 = *(*(v15 - 8) + 104);
  v16(v7, v14, v15);
  v34 = v5;
  v35 = v6;
  v33 = v2;
  v17 = (v6 + v5 + *(v2 + 48));
  *(v6 + v5) = 1;
  v18 = [v39 databaseScope];
  v17[3] = MEMORY[0x277D83B88];
  v40 = sub_24AD59928();
  v17[4] = v40;
  *v17 = v18;
  v36 = *MEMORY[0x277D08AC0];
  (v47)(v17);
  v16(v17, v14, v15);
  v32 = 2 * v5;
  v19 = (v6 + 2 * v5);
  v20 = &v19[*(v2 + 48)];
  *v19 = 2;
  v21 = [v41 zoneName];
  v22 = sub_24AD5E844();
  v24 = v23;

  v20[3] = MEMORY[0x277D837D0];
  v20[4] = v38;
  *v20 = v22;
  v20[1] = v24;
  v47(v20, v37, v48);
  v16(v20, v14, v15);
  v25 = *(v33 + 48);
  v26 = (v35 + v32 + v34);
  *v26 = 5;
  v27 = &v26[v25];
  v27[3] = MEMORY[0x277D83B88];
  v27[4] = v40;
  *v27 = v44;
  v47(&v26[v25], v36, v48);
  v16(v27, v14, v15);
  v28 = (v35 + v42 + *(v33 + 48));
  *(v35 + v42) = 6;
  v28[3] = MEMORY[0x277D83B88];
  v28[4] = v40;
  *v28 = v45;
  v47(v28, v36, v48);
  v16(v28, v14, v15);
  v29 = sub_24AD342C4(v43);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v30 = *(v46 + 8);

  return v30(v29);
}

uint64_t sub_24AD514E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_24AD5159C;

  return MEMORY[0x28210DF08](a3, a4);
}

uint64_t sub_24AD5159C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 32) = a2;
    *(v6 + 40) = a1;

    return MEMORY[0x2822009F8](sub_24AD516F8, 0, 0);
  }
}

uint64_t CloudKitCoordinator.Deletion.recordType.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static CloudKitCoordinator.Deletion.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_24AD5EF84() & 1) == 0)
  {
    return 0;
  }

  sub_24AD06578(0, &qword_281064970, 0x277D82BB8);
  return sub_24AD5EC04() & 1;
}

uint64_t CloudKitCoordinator.Deletion.hashValue.getter()
{
  sub_24AD5F074();
  sub_24AD5E874();
  sub_24AD5EC14();
  return sub_24AD5F094();
}

uint64_t sub_24AD51870()
{
  sub_24AD5F074();
  sub_24AD5E874();
  sub_24AD5EC14();
  return sub_24AD5F094();
}

uint64_t sub_24AD51904(uint64_t a1)
{
  sub_24AD5F074();
  sub_24AD5E874();
  sub_24AD5EC14();
  return sub_24AD5F094();
}

uint64_t sub_24AD51960(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_24AD5EF84() & 1) == 0)
  {
    return 0;
  }

  sub_24AD06578(0, &qword_281064970, 0x277D82BB8);
  return sub_24AD5EC04() & 1;
}

uint64_t CloudKitCoordinator.Database.description.getter()
{
  v1 = 0x646572616853;
  if (*v0 != 1)
  {
    v1 = 0x63696C627550;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65746176697250;
  }
}

FindMyCloudKit::CloudKitCoordinator::Database_optional __swiftcall CloudKitCoordinator.Database.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_24AD51A60()
{
  v1 = 0x646572616853;
  if (*v0 != 1)
  {
    v1 = 0x63696C627550;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65746176697250;
  }
}

uint64_t sub_24AD51AB4()
{
  v0 = sub_24AD5E7A4();
  __swift_allocate_value_buffer(v0, qword_281065430);
  __swift_project_value_buffer(v0, qword_281065430);
  return sub_24AD5E794();
}

uint64_t sub_24AD51B2C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AD11704;

  return v6(a1);
}

unint64_t sub_24AD51C24(uint64_t a1, uint64_t a2)
{
  sub_24AD5F074();
  sub_24AD5E874();
  v4 = sub_24AD5F094();

  return sub_24AD51C9C(a1, a2, v4);
}

unint64_t sub_24AD51C9C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_24AD5EF84())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_24AD51D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_24AD5EDD4();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_24AD51E54, 0, 0);
}

uint64_t sub_24AD51E54()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_24AD5EDF4();
  v5 = sub_24AD5A540(&qword_27EFA62F8, 255, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_24AD5EFD4();
  sub_24AD5A540(&qword_281064968, 255, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_24AD5EE04();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_24AD51FEC;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_24AD51FEC()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24AD521A8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_24AD521A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD52214(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_24AD5EC94();
LABEL_9:
  result = sub_24AD5ED54();
  *v2 = result;
  return result;
}

id sub_24AD522B4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA62D0, &qword_24AD612F0) + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA62C8, &qword_24AD612E8);
  v7 = *a1;
  sub_24AD38B48(a1 + v4, a2 + *(v5 + 48), &qword_27EFA5F30, &qword_24AD5FDF8);
  *a2 = v7;

  return v7;
}

uint64_t sub_24AD52354(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24AD5EC94();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_24AD5EC94();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24AD062C8(&qword_27EFA6350, &qword_27EFA6348, &qword_24AD61460, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6348, &qword_24AD61460);
            v9 = sub_24AD33A64(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_24AD06578(0, &qword_27EFA5F18, 0x277CBC5A0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24AD52508(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_24AD525FC;

  return v5(v2 + 32);
}

uint64_t sub_24AD525FC()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_24AD52710@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA62D0, &qword_24AD612F0);
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v40 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F30, &qword_24AD5FDF8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA62D8, &qword_24AD612F8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v45 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v11);
  v15 = (&v40 - v14);
  v16 = *v1;
  v17 = v1[1];
  v19 = v1[2];
  v18 = v1[3];
  v20 = v1[4];
  v40 = v5;
  v44 = v19;
  if (v20)
  {
    v41 = a1;
    v21 = v18;
LABEL_11:
    v25 = (v20 - 1) & v20;
    v26 = __clz(__rbit64(v20)) | (v21 << 6);
    v27 = *(*(v16 + 48) + 8 * v26);
    sub_24AD38B48(*(v16 + 56) + *(v7 + 72) * v26, v9, &qword_27EFA5F30, &qword_24AD5FDF8);
    v28 = v43;
    v29 = *(v43 + 48);
    *v15 = v27;
    v30 = v9;
    v31 = v28;
    sub_24AD599EC(v30, v15 + v29, &qword_27EFA5F30, &qword_24AD5FDF8);
    v32 = v42;
    (*(v42 + 56))(v15, 0, 1, v31);
    v33 = v27;
    v24 = v21;
    a1 = v41;
LABEL_12:
    *v1 = v16;
    v1[1] = v17;
    v34 = v45;
    v1[2] = v44;
    v1[3] = v24;
    v1[4] = v25;
    v35 = v1[5];
    sub_24AD599EC(v15, v34, &qword_27EFA62D8, &qword_24AD612F8);
    v36 = 1;
    if ((*(v32 + 48))(v34, 1, v31) != 1)
    {
      v37 = v34;
      v38 = v40;
      sub_24AD599EC(v37, v40, &qword_27EFA62D0, &qword_24AD612F0);
      v35(v38);
      sub_24AD06518(v38, &qword_27EFA62D0, &qword_24AD612F0);
      v36 = 0;
    }

    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA62C8, &qword_24AD612E8);
    return (*(*(v39 - 8) + 56))(a1, v36, 1, v39);
  }

  else
  {
    v22 = (v19 + 64) >> 6;
    if (v22 <= v18 + 1)
    {
      v23 = v18 + 1;
    }

    else
    {
      v23 = (v19 + 64) >> 6;
    }

    v24 = v23 - 1;
    while (1)
    {
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v21 >= v22)
      {
        v32 = v42;
        v31 = v43;
        (*(v42 + 56))(&v40 - v14, 1, 1, v43);
        v25 = 0;
        goto LABEL_12;
      }

      v20 = *(v17 + 8 * v21);
      ++v18;
      if (v20)
      {
        v41 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24AD52AFC()
{
  if (qword_2810653A0 != -1)
  {
    swift_once();
  }

  v1 = sub_24AD5E7A4();
  __swift_project_value_buffer(v1, qword_2810654A0);
  v2 = sub_24AD5E784();
  v3 = sub_24AD5EB64();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 16);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_24ACF2000, v2, v3, "APNS connected: %{BOOL}d", v5, 8u);
    MEMORY[0x24C22F400](v5, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_24AD52C20(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AD0C594;

  return sub_24AD3C2C4(a1);
}

uint64_t sub_24AD52CDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AD0C594;

  return sub_24AD3DCC0(a1, v4, v5, v6);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24AD52E18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA62A8, &qword_24AD61290);
    v3 = sub_24AD5EF14();
    v4 = a1 + 32;

    while (1)
    {
      sub_24AD38B48(v4, &v13, &qword_27EFA62B0, &qword_24AD61298);
      v5 = v13;
      v6 = v14;
      result = sub_24AD51C24(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_24ACF4008(&v15, (v3[7] + 32 * result));
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

uint64_t sub_24AD52F48(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = a4;
  *(v4 + 153) = a3;
  *(v4 + 56) = a1;
  v6 = sub_24AD5E624();
  *(v4 + 80) = v6;
  *(v4 + 88) = *(v6 - 8);
  *(v4 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD53014, a1, 0);
}

uint64_t sub_24AD53014()
{
  if ((sub_24AD5E0C4() & 1) != 0 && (v1 = objc_opt_self(), v2 = [v1 standardUserDefaults], v3 = sub_24AD5E834(), v4 = objc_msgSend(v2, sel_BOOLForKey_, v3), v3, v2, v4))
  {
    v5 = [v1 standardUserDefaults];
    v6 = sub_24AD5E834();
    [v5 setValue:0 forKey:v6];

    if (qword_2810653A0 != -1)
    {
      swift_once();
    }

    v7 = sub_24AD5E7A4();
    __swift_project_value_buffer(v7, qword_2810654A0);
    v8 = sub_24AD5E784();
    v9 = sub_24AD5EB44();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_24ACF2000, v8, v9, "Forcing .changeTokenExpired", v10, 2u);
      MEMORY[0x24C22F400](v10, -1, -1);
    }

    type metadata accessor for CKError(0);
    *(v0 + 48) = 21;
    sub_24AD52E18(MEMORY[0x277D84F90]);
    sub_24AD5A540(&qword_281064A28, 255, type metadata accessor for CKError, &unk_24AD5FAF0);
    sub_24AD5E314();
    v11 = *(v0 + 40);
    swift_willThrow();
    *(v0 + 104) = v11;
    *(v0 + 24) = v11;
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
    if (swift_dynamicCast())
    {
      v13 = *(v0 + 32);
      *(v0 + 112) = v13;
      v14 = swift_task_alloc();
      *(v0 + 120) = v14;
      *v14 = v0;
      v14[1] = sub_24AD53558;

      return sub_24AD4A77C(v13);
    }

    else
    {
      if (qword_2810653A0 != -1)
      {
        swift_once();
      }

      v20 = *(v0 + 104);
      __swift_project_value_buffer(v7, qword_2810654A0);
      v21 = v20;
      v22 = sub_24AD5E784();
      v23 = sub_24AD5EB44();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = *(v0 + 104);
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138543362;
        v27 = v24;
        v28 = _swift_stdlib_bridgeErrorToNSError();
        *(v25 + 4) = v28;
        *v26 = v28;
        _os_log_impl(&dword_24ACF2000, v22, v23, "CloudKit error: %{public}@", v25, 0xCu);
        sub_24AD06518(v26, &qword_27EFA61C8, &unk_24AD60C30);
        MEMORY[0x24C22F400](v26, -1, -1);
        MEMORY[0x24C22F400](v25, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C8, &qword_24AD61260);
      *(v0 + 152) = 4;
      *(v0 + 128) = sub_24AD5E604();
      sub_24AD062C8(&qword_2810653A8, &qword_27EFA60C8, &qword_24AD61260, MEMORY[0x277D08A90]);
      v30 = sub_24AD5E924();

      return MEMORY[0x2822009F8](sub_24AD5387C, v30, v29);
    }
  }

  else
  {
    v16 = swift_task_alloc();
    *(v0 + 136) = v16;
    *v16 = v0;
    v16[1] = sub_24AD539A8;
    v17 = *(v0 + 64);
    v18 = *(v0 + 72);
    v19 = *(v0 + 153);

    return sub_24AD45048(v0 + 16, v17, v19, v18);
  }
}

uint64_t sub_24AD53558()
{
  v1 = *(*v0 + 56);

  return MEMORY[0x2822009F8](sub_24AD53668, v1, 0);
}

uint64_t sub_24AD53668()
{
  if (qword_2810653A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = sub_24AD5E7A4();
  __swift_project_value_buffer(v2, qword_2810654A0);
  v3 = v1;
  v4 = sub_24AD5E784();
  v5 = sub_24AD5EB44();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 104);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24ACF2000, v4, v5, "CloudKit error: %{public}@", v7, 0xCu);
    sub_24AD06518(v8, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v8, -1, -1);
    MEMORY[0x24C22F400](v7, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C8, &qword_24AD61260);
  *(v0 + 152) = 4;
  *(v0 + 128) = sub_24AD5E604();
  sub_24AD062C8(&qword_2810653A8, &qword_27EFA60C8, &qword_24AD61260, MEMORY[0x277D08A90]);
  v12 = sub_24AD5E924();

  return MEMORY[0x2822009F8](sub_24AD5387C, v12, v11);
}

uint64_t sub_24AD5387C()
{
  v1 = *(v0 + 56);
  sub_24AD5E614();
  sub_24AD5E5D4();

  return MEMORY[0x2822009F8](sub_24AD538FC, v1, 0);
}

uint64_t sub_24AD538FC()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[11];
  sub_24AD5E634();
  (*(v3 + 8))(v1, v2);
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_24AD539A8()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_24AD53B40;
  }

  else
  {
    v4 = sub_24AD53AD4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AD53AD4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24AD53B40()
{
  v1 = *(v0 + 144);
  *(v0 + 24) = v1;
  *(v0 + 104) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 32);
    *(v0 + 112) = v3;
    v4 = swift_task_alloc();
    *(v0 + 120) = v4;
    *v4 = v0;
    v4[1] = sub_24AD53558;

    return sub_24AD4A77C(v3);
  }

  else
  {
    if (qword_2810653A0 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 104);
    v7 = sub_24AD5E7A4();
    __swift_project_value_buffer(v7, qword_2810654A0);
    v8 = v6;
    v9 = sub_24AD5E784();
    v10 = sub_24AD5EB44();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 104);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138543362;
      v14 = v11;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_24ACF2000, v9, v10, "CloudKit error: %{public}@", v12, 0xCu);
      sub_24AD06518(v13, &qword_27EFA61C8, &unk_24AD60C30);
      MEMORY[0x24C22F400](v13, -1, -1);
      MEMORY[0x24C22F400](v12, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C8, &qword_24AD61260);
    *(v0 + 152) = 4;
    *(v0 + 128) = sub_24AD5E604();
    sub_24AD062C8(&qword_2810653A8, &qword_27EFA60C8, &qword_24AD61260, MEMORY[0x277D08A90]);
    v17 = sub_24AD5E924();

    return MEMORY[0x2822009F8](sub_24AD5387C, v17, v16);
  }
}

uint64_t sub_24AD53E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 169) = a6;
  *(v6 + 72) = a4;
  *(v6 + 80) = a5;
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  *(v6 + 48) = a1;
  v8 = sub_24AD5E624();
  *(v6 + 88) = v8;
  *(v6 + 96) = *(v8 - 8);
  *(v6 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD53EE8, a1, 0);
}

uint64_t sub_24AD53EE8()
{
  if ((sub_24AD5E0C4() & 1) != 0 && (v1 = objc_opt_self(), v2 = [v1 standardUserDefaults], v3 = sub_24AD5E834(), v4 = objc_msgSend(v2, sel_BOOLForKey_, v3), v3, v2, v4))
  {
    v5 = [v1 standardUserDefaults];
    v6 = sub_24AD5E834();
    [v5 setValue:0 forKey:v6];

    if (qword_2810653A0 != -1)
    {
      swift_once();
    }

    v7 = sub_24AD5E7A4();
    __swift_project_value_buffer(v7, qword_2810654A0);
    v8 = sub_24AD5E784();
    v9 = sub_24AD5EB44();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_24ACF2000, v8, v9, "Forcing .changeTokenExpired", v10, 2u);
      MEMORY[0x24C22F400](v10, -1, -1);
    }

    type metadata accessor for CKError(0);
    *(v0 + 40) = 21;
    sub_24AD52E18(MEMORY[0x277D84F90]);
    sub_24AD5A540(&qword_281064A28, 255, type metadata accessor for CKError, &unk_24AD5FAF0);
    sub_24AD5E314();
    v11 = *(v0 + 32);
    swift_willThrow();
    *(v0 + 112) = v11;
    *(v0 + 16) = v11;
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
    if (swift_dynamicCast())
    {
      v13 = *(v0 + 24);
      *(v0 + 120) = v13;
      v14 = swift_task_alloc();
      *(v0 + 128) = v14;
      *v14 = v0;
      v14[1] = sub_24AD543C8;

      return sub_24AD4A77C(v13);
    }

    if (qword_2810653A0 != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 112);
    __swift_project_value_buffer(v7, qword_2810654A0);
    v20 = v19;
    v21 = sub_24AD5E784();
    v22 = sub_24AD5EB44();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = *(v0 + 112);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138543362;
      v26 = v23;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v27;
      *v25 = v27;
      _os_log_impl(&dword_24ACF2000, v21, v22, "CloudKit error: %{public}@", v24, 0xCu);
      sub_24AD06518(v25, &qword_27EFA61C8, &unk_24AD60C30);
      MEMORY[0x24C22F400](v25, -1, -1);
      MEMORY[0x24C22F400](v24, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C8, &qword_24AD61260);
    *(v0 + 168) = 4;
    *(v0 + 136) = sub_24AD5E604();
    sub_24AD062C8(&qword_2810653A8, &qword_27EFA60C8, &qword_24AD61260, MEMORY[0x277D08A90]);
    v28 = sub_24AD5E924();
    v30 = v29;
    v16 = sub_24AD546EC;
    v17 = v28;
    v18 = v30;
  }

  else
  {
    v16 = sub_24AD54818;
    v17 = 0;
    v18 = 0;
  }

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_24AD543C8()
{
  v1 = *(*v0 + 48);

  return MEMORY[0x2822009F8](sub_24AD544D8, v1, 0);
}

uint64_t sub_24AD544D8()
{
  if (qword_2810653A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = sub_24AD5E7A4();
  __swift_project_value_buffer(v2, qword_2810654A0);
  v3 = v1;
  v4 = sub_24AD5E784();
  v5 = sub_24AD5EB44();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 112);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24ACF2000, v4, v5, "CloudKit error: %{public}@", v7, 0xCu);
    sub_24AD06518(v8, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v8, -1, -1);
    MEMORY[0x24C22F400](v7, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C8, &qword_24AD61260);
  *(v0 + 168) = 4;
  *(v0 + 136) = sub_24AD5E604();
  sub_24AD062C8(&qword_2810653A8, &qword_27EFA60C8, &qword_24AD61260, MEMORY[0x277D08A90]);
  v12 = sub_24AD5E924();

  return MEMORY[0x2822009F8](sub_24AD546EC, v12, v11);
}

uint64_t sub_24AD546EC()
{
  v1 = *(v0 + 48);
  sub_24AD5E614();
  sub_24AD5E5D4();

  return MEMORY[0x2822009F8](sub_24AD5476C, v1, 0);
}

uint64_t sub_24AD5476C()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[12];
  sub_24AD5E634();
  (*(v3 + 8))(v1, v2);
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_24AD54818()
{
  v1 = *(v0 + 72);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v12 = MEMORY[0x277D84F90];
    sub_24AD5ED94();
    v4 = (v1 + 48);
    do
    {
      v5 = *v4;
      v4 += 3;
      v6 = v5;
      sub_24AD5ED74();
      sub_24AD5EDA4();
      sub_24AD5EDB4();
      sub_24AD5ED84();
      --v2;
    }

    while (v2);
    v3 = v12;
  }

  *(v0 + 144) = v3;
  v7 = swift_task_alloc();
  *(v0 + 152) = v7;
  *v7 = v0;
  v7[1] = sub_24AD54944;
  v8 = *(v0 + 169);
  v9 = *(v0 + 80);
  v10 = *(v0 + 64);

  return MEMORY[0x28210DE78](v10, v3, v9, v8);
}

uint64_t sub_24AD54944(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(v6 + 160) = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](sub_24AD54AAC, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7(a1, a2);
  }
}

uint64_t sub_24AD54AAC()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_24AD54B18, v1, 0);
}

uint64_t sub_24AD54B18()
{
  v1 = *(v0 + 160);
  *(v0 + 16) = v1;
  *(v0 + 112) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 24);
    *(v0 + 120) = v3;
    v4 = swift_task_alloc();
    *(v0 + 128) = v4;
    *v4 = v0;
    v4[1] = sub_24AD543C8;

    return sub_24AD4A77C(v3);
  }

  else
  {
    if (qword_2810653A0 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 112);
    v7 = sub_24AD5E7A4();
    __swift_project_value_buffer(v7, qword_2810654A0);
    v8 = v6;
    v9 = sub_24AD5E784();
    v10 = sub_24AD5EB44();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 112);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138543362;
      v14 = v11;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_24ACF2000, v9, v10, "CloudKit error: %{public}@", v12, 0xCu);
      sub_24AD06518(v13, &qword_27EFA61C8, &unk_24AD60C30);
      MEMORY[0x24C22F400](v13, -1, -1);
      MEMORY[0x24C22F400](v12, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C8, &qword_24AD61260);
    *(v0 + 168) = 4;
    *(v0 + 136) = sub_24AD5E604();
    sub_24AD062C8(&qword_2810653A8, &qword_27EFA60C8, &qword_24AD61260, MEMORY[0x277D08A90]);
    v17 = sub_24AD5E924();

    return MEMORY[0x2822009F8](sub_24AD546EC, v17, v16);
  }
}

uint64_t sub_24AD54DF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 153) = a4;
  *(v4 + 56) = a2;
  *(v4 + 64) = a3;
  *(v4 + 48) = a1;
  v6 = sub_24AD5E624();
  *(v4 + 72) = v6;
  *(v4 + 80) = *(v6 - 8);
  *(v4 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD54EBC, a1, 0);
}

uint64_t sub_24AD54EBC()
{
  if ((sub_24AD5E0C4() & 1) != 0 && (v1 = objc_opt_self(), v2 = [v1 standardUserDefaults], v3 = sub_24AD5E834(), v4 = objc_msgSend(v2, sel_BOOLForKey_, v3), v3, v2, v4))
  {
    v5 = [v1 standardUserDefaults];
    v6 = sub_24AD5E834();
    [v5 setValue:0 forKey:v6];

    if (qword_2810653A0 != -1)
    {
      swift_once();
    }

    v7 = sub_24AD5E7A4();
    __swift_project_value_buffer(v7, qword_2810654A0);
    v8 = sub_24AD5E784();
    v9 = sub_24AD5EB44();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_24ACF2000, v8, v9, "Forcing .changeTokenExpired", v10, 2u);
      MEMORY[0x24C22F400](v10, -1, -1);
    }

    type metadata accessor for CKError(0);
    *(v0 + 40) = 21;
    sub_24AD52E18(MEMORY[0x277D84F90]);
    sub_24AD5A540(&qword_281064A28, 255, type metadata accessor for CKError, &unk_24AD5FAF0);
    sub_24AD5E314();
    v11 = *(v0 + 32);
    swift_willThrow();
    *(v0 + 96) = v11;
    *(v0 + 16) = v11;
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
    if (swift_dynamicCast())
    {
      v13 = *(v0 + 24);
      *(v0 + 104) = v13;
      v14 = swift_task_alloc();
      *(v0 + 112) = v14;
      *v14 = v0;
      v14[1] = sub_24AD5539C;

      return sub_24AD4A77C(v13);
    }

    if (qword_2810653A0 != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 96);
    __swift_project_value_buffer(v7, qword_2810654A0);
    v20 = v19;
    v21 = sub_24AD5E784();
    v22 = sub_24AD5EB44();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = *(v0 + 96);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138543362;
      v26 = v23;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v27;
      *v25 = v27;
      _os_log_impl(&dword_24ACF2000, v21, v22, "CloudKit error: %{public}@", v24, 0xCu);
      sub_24AD06518(v25, &qword_27EFA61C8, &unk_24AD60C30);
      MEMORY[0x24C22F400](v25, -1, -1);
      MEMORY[0x24C22F400](v24, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C8, &qword_24AD61260);
    *(v0 + 152) = 4;
    *(v0 + 120) = sub_24AD5E604();
    sub_24AD062C8(&qword_2810653A8, &qword_27EFA60C8, &qword_24AD61260, MEMORY[0x277D08A90]);
    v28 = sub_24AD5E924();
    v30 = v29;
    v16 = sub_24AD556C0;
    v17 = v28;
    v18 = v30;
  }

  else
  {
    v16 = sub_24AD557EC;
    v17 = 0;
    v18 = 0;
  }

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_24AD5539C()
{
  v1 = *(*v0 + 48);

  return MEMORY[0x2822009F8](sub_24AD554AC, v1, 0);
}

uint64_t sub_24AD554AC()
{
  if (qword_2810653A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = sub_24AD5E7A4();
  __swift_project_value_buffer(v2, qword_2810654A0);
  v3 = v1;
  v4 = sub_24AD5E784();
  v5 = sub_24AD5EB44();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 96);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24ACF2000, v4, v5, "CloudKit error: %{public}@", v7, 0xCu);
    sub_24AD06518(v8, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v8, -1, -1);
    MEMORY[0x24C22F400](v7, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C8, &qword_24AD61260);
  *(v0 + 152) = 4;
  *(v0 + 120) = sub_24AD5E604();
  sub_24AD062C8(&qword_2810653A8, &qword_27EFA60C8, &qword_24AD61260, MEMORY[0x277D08A90]);
  v12 = sub_24AD5E924();

  return MEMORY[0x2822009F8](sub_24AD556C0, v12, v11);
}

uint64_t sub_24AD556C0()
{
  v1 = *(v0 + 48);
  sub_24AD5E614();
  sub_24AD5E5D4();

  return MEMORY[0x2822009F8](sub_24AD55740, v1, 0);
}

uint64_t sub_24AD55740()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[10];
  sub_24AD5E634();
  (*(v3 + 8))(v1, v2);
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_24AD557EC()
{
  v1 = [*(*(v0 + 56) + 112) *off_278FFD950[*(v0 + 153)]];
  *(v0 + 128) = v1;
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = sub_24AD558B4;
  v3 = *(v0 + 64);

  return sub_24AD42DA0(v3, v1);
}

uint64_t sub_24AD558B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  *(v8 + 144) = v3;

  if (v3)
  {

    return MEMORY[0x2822009F8](sub_24AD55A30, 0, 0);
  }

  else
  {

    v9 = *(v8 + 8);

    return v9(a1, a2, a3);
  }
}

uint64_t sub_24AD55A30()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_24AD55A9C, v1, 0);
}

uint64_t sub_24AD55A9C()
{
  v1 = *(v0 + 144);
  *(v0 + 16) = v1;
  *(v0 + 96) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 24);
    *(v0 + 104) = v3;
    v4 = swift_task_alloc();
    *(v0 + 112) = v4;
    *v4 = v0;
    v4[1] = sub_24AD5539C;

    return sub_24AD4A77C(v3);
  }

  else
  {
    if (qword_2810653A0 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 96);
    v7 = sub_24AD5E7A4();
    __swift_project_value_buffer(v7, qword_2810654A0);
    v8 = v6;
    v9 = sub_24AD5E784();
    v10 = sub_24AD5EB44();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 96);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138543362;
      v14 = v11;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_24ACF2000, v9, v10, "CloudKit error: %{public}@", v12, 0xCu);
      sub_24AD06518(v13, &qword_27EFA61C8, &unk_24AD60C30);
      MEMORY[0x24C22F400](v13, -1, -1);
      MEMORY[0x24C22F400](v12, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C8, &qword_24AD61260);
    *(v0 + 152) = 4;
    *(v0 + 120) = sub_24AD5E604();
    sub_24AD062C8(&qword_2810653A8, &qword_27EFA60C8, &qword_24AD61260, MEMORY[0x277D08A90]);
    v17 = sub_24AD5E924();

    return MEMORY[0x2822009F8](sub_24AD556C0, v17, v16);
  }
}

uint64_t sub_24AD55D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 161) = a5;
  *(v5 + 64) = a3;
  *(v5 + 72) = a4;
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  v7 = sub_24AD5E624();
  *(v5 + 80) = v7;
  *(v5 + 88) = *(v7 - 8);
  *(v5 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD55E40, a1, 0);
}

uint64_t sub_24AD55E40()
{
  if ((sub_24AD5E0C4() & 1) != 0 && (v1 = objc_opt_self(), v2 = [v1 standardUserDefaults], v3 = sub_24AD5E834(), v4 = objc_msgSend(v2, sel_BOOLForKey_, v3), v3, v2, v4))
  {
    v5 = [v1 standardUserDefaults];
    v6 = sub_24AD5E834();
    [v5 setValue:0 forKey:v6];

    if (qword_2810653A0 != -1)
    {
      swift_once();
    }

    v7 = sub_24AD5E7A4();
    __swift_project_value_buffer(v7, qword_2810654A0);
    v8 = sub_24AD5E784();
    v9 = sub_24AD5EB44();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_24ACF2000, v8, v9, "Forcing .changeTokenExpired", v10, 2u);
      MEMORY[0x24C22F400](v10, -1, -1);
    }

    type metadata accessor for CKError(0);
    *(v0 + 40) = 21;
    sub_24AD52E18(MEMORY[0x277D84F90]);
    sub_24AD5A540(&qword_281064A28, 255, type metadata accessor for CKError, &unk_24AD5FAF0);
    sub_24AD5E314();
    v11 = *(v0 + 32);
    swift_willThrow();
    *(v0 + 104) = v11;
    *(v0 + 16) = v11;
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
    if (swift_dynamicCast())
    {
      v13 = *(v0 + 24);
      *(v0 + 112) = v13;
      v14 = swift_task_alloc();
      *(v0 + 120) = v14;
      *v14 = v0;
      v14[1] = sub_24AD56320;

      return sub_24AD4A77C(v13);
    }

    if (qword_2810653A0 != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 104);
    __swift_project_value_buffer(v7, qword_2810654A0);
    v20 = v19;
    v21 = sub_24AD5E784();
    v22 = sub_24AD5EB44();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = *(v0 + 104);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138543362;
      v26 = v23;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v27;
      *v25 = v27;
      _os_log_impl(&dword_24ACF2000, v21, v22, "CloudKit error: %{public}@", v24, 0xCu);
      sub_24AD06518(v25, &qword_27EFA61C8, &unk_24AD60C30);
      MEMORY[0x24C22F400](v25, -1, -1);
      MEMORY[0x24C22F400](v24, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C8, &qword_24AD61260);
    *(v0 + 160) = 4;
    *(v0 + 128) = sub_24AD5E604();
    sub_24AD062C8(&qword_2810653A8, &qword_27EFA60C8, &qword_24AD61260, MEMORY[0x277D08A90]);
    v28 = sub_24AD5E924();
    v30 = v29;
    v16 = sub_24AD56644;
    v17 = v28;
    v18 = v30;
  }

  else
  {
    v16 = sub_24AD566C4;
    v17 = 0;
    v18 = 0;
  }

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_24AD56320()
{
  v1 = *(*v0 + 48);

  return MEMORY[0x2822009F8](sub_24AD56430, v1, 0);
}

uint64_t sub_24AD56430()
{
  if (qword_2810653A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = sub_24AD5E7A4();
  __swift_project_value_buffer(v2, qword_2810654A0);
  v3 = v1;
  v4 = sub_24AD5E784();
  v5 = sub_24AD5EB44();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 104);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24ACF2000, v4, v5, "CloudKit error: %{public}@", v7, 0xCu);
    sub_24AD06518(v8, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v8, -1, -1);
    MEMORY[0x24C22F400](v7, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C8, &qword_24AD61260);
  *(v0 + 160) = 4;
  *(v0 + 128) = sub_24AD5E604();
  sub_24AD062C8(&qword_2810653A8, &qword_27EFA60C8, &qword_24AD61260, MEMORY[0x277D08A90]);
  v12 = sub_24AD5E924();

  return MEMORY[0x2822009F8](sub_24AD56644, v12, v11);
}

uint64_t sub_24AD56644()
{
  v1 = *(v0 + 48);
  sub_24AD5E614();
  sub_24AD5E5D4();

  return MEMORY[0x2822009F8](sub_24AD538FC, v1, 0);
}

uint64_t sub_24AD566C4()
{
  v1 = [*(*(v0 + 56) + 112) *off_278FFD950[*(v0 + 161)]];
  *(v0 + 136) = v1;
  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  *v2 = v0;
  v2[1] = sub_24AD56790;
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);

  return sub_24AD44554(v4, v3, v1);
}

uint64_t sub_24AD56790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  *(v8 + 152) = v3;

  if (v3)
  {

    return MEMORY[0x2822009F8](sub_24AD5690C, 0, 0);
  }

  else
  {

    v9 = *(v8 + 8);

    return v9(a1, a2, a3);
  }
}

uint64_t sub_24AD5690C()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_24AD56978, v1, 0);
}

uint64_t sub_24AD56978()
{
  v1 = *(v0 + 152);
  *(v0 + 16) = v1;
  *(v0 + 104) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 24);
    *(v0 + 112) = v3;
    v4 = swift_task_alloc();
    *(v0 + 120) = v4;
    *v4 = v0;
    v4[1] = sub_24AD56320;

    return sub_24AD4A77C(v3);
  }

  else
  {
    if (qword_2810653A0 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 104);
    v7 = sub_24AD5E7A4();
    __swift_project_value_buffer(v7, qword_2810654A0);
    v8 = v6;
    v9 = sub_24AD5E784();
    v10 = sub_24AD5EB44();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 104);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138543362;
      v14 = v11;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_24ACF2000, v9, v10, "CloudKit error: %{public}@", v12, 0xCu);
      sub_24AD06518(v13, &qword_27EFA61C8, &unk_24AD60C30);
      MEMORY[0x24C22F400](v13, -1, -1);
      MEMORY[0x24C22F400](v12, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C8, &qword_24AD61260);
    *(v0 + 160) = 4;
    *(v0 + 128) = sub_24AD5E604();
    sub_24AD062C8(&qword_2810653A8, &qword_27EFA60C8, &qword_24AD61260, MEMORY[0x277D08A90]);
    v17 = sub_24AD5E924();

    return MEMORY[0x2822009F8](sub_24AD56644, v17, v16);
  }
}

unint64_t sub_24AD56C50()
{
  result = qword_27EFA6258;
  if (!qword_27EFA6258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA6258);
  }

  return result;
}

void sub_24AD56CA4(id a1, char a2)
{
  if (a2)
  {
  }
}

unint64_t sub_24AD56CB4()
{
  result = qword_27EFA6280;
  if (!qword_27EFA6280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA6280);
  }

  return result;
}

unint64_t sub_24AD56D0C()
{
  result = qword_27EFA6288;
  if (!qword_27EFA6288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA6288);
  }

  return result;
}

unint64_t sub_24AD56D64()
{
  result = qword_27EFA6290;
  if (!qword_27EFA6290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA6290);
  }

  return result;
}

unint64_t sub_24AD56DBC()
{
  result = qword_27EFA6298;
  if (!qword_27EFA6298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA6298);
  }

  return result;
}

unint64_t sub_24AD56E14()
{
  result = qword_281065390;
  if (!qword_281065390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281065390);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IdentityLossResolutionMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IdentityLossResolutionMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t dispatch thunk of CloudKitCoordinator.__allocating_init(containerIdentifier:bundleIdentifier:containerEnvironment:mode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(v6 + 288) + **(v6 + 288));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_24AD5AC9C;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of CloudKitCoordinator.connectionStateStream()(uint64_t a1)
{
  v6 = (*(*v1 + 312) + **(*v1 + 312));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AD0C594;

  return v6(a1);
}

uint64_t dispatch thunk of CloudKitCoordinator.fetch(databaseChangeToken:database:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 336) + **(*v2 + 336));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AD5AC78;

  return v8(a1, a2);
}

uint64_t dispatch thunk of CloudKitCoordinator.fetchZoneChanges(database:zone:zoneChangeToken:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 344) + **(*v3 + 344));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_24AD575EC;

  return v10(a1, a2, a3);
}

uint64_t sub_24AD575EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;

  v7 = *(v9 + 8);

  return v7(a1, a2, a3);
}

uint64_t dispatch thunk of CloudKitCoordinator.create(zoneName:database:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 352) + **(*v3 + 352));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_24AD35664;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of CloudKitCoordinator.delete(zoneIdentifier:database:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 360) + **(*v2 + 360));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AD0C594;

  return v8(a1, a2);
}

uint64_t dispatch thunk of CloudKitCoordinator.modifyRecordZones(database:saving:deleting:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 368) + **(*v3 + 368));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_24AD5ACA8;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of CloudKitCoordinator.modify(record:database:savePolicy:atomically:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 376) + **(*v4 + 376));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_24AD38C10;

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CloudKitCoordinator.delete(recordIdentifier:database:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 384) + **(*v2 + 384));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AD0C594;

  return v8(a1, a2);
}

uint64_t dispatch thunk of CloudKitCoordinator.modifyRecords(saving:deleting:savePolicy:atomically:database:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 392) + **(*v5 + 392));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_24AD57E80;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t sub_24AD57E80(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t dispatch thunk of CloudKitCoordinator.modifySubscriptions(saving:deleting:database:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 400) + **(*v3 + 400));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_24AD5ACA8;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of CloudKitCoordinator.apply(changeSet:database:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 408) + **(*v2 + 408));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AD5ACA8;

  return v8(a1, a2);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24AD58224(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 2;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_24AD58274(uint64_t result, int a2, int a3)
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
      *result = 4 * -a2;
      *(result + 8) = 0;
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_24AD582FC(uint64_t a1, int a2)
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

uint64_t sub_24AD58344(uint64_t result, int a2, int a3)
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

uint64_t sub_24AD583A4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_24AD58434(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24AD584F4()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AD5AC9C;

  return sub_24AD4E34C(v2);
}

uint64_t sub_24AD58588(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_24AD0C360;

  return sub_24AD4FC78(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_24AD58664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v5 = sub_24AD5E624();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD5872C, a1, 0);
}

uint64_t sub_24AD5872C()
{
  if ((sub_24AD5E0C4() & 1) != 0 && (v1 = objc_opt_self(), v2 = [v1 standardUserDefaults], v3 = sub_24AD5E834(), v4 = objc_msgSend(v2, sel_BOOLForKey_, v3), v3, v2, v4))
  {
    v5 = [v1 standardUserDefaults];
    v6 = sub_24AD5E834();
    [v5 setValue:0 forKey:v6];

    if (qword_2810653A0 != -1)
    {
      swift_once();
    }

    v7 = sub_24AD5E7A4();
    __swift_project_value_buffer(v7, qword_2810654A0);
    v8 = sub_24AD5E784();
    v9 = sub_24AD5EB44();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_24ACF2000, v8, v9, "Forcing .changeTokenExpired", v10, 2u);
      MEMORY[0x24C22F400](v10, -1, -1);
    }

    type metadata accessor for CKError(0);
    *(v0 + 40) = 21;
    sub_24AD52E18(MEMORY[0x277D84F90]);
    sub_24AD5A540(&qword_281064A28, 255, type metadata accessor for CKError, &unk_24AD5FAF0);
    sub_24AD5E314();
    v11 = *(v0 + 32);
    swift_willThrow();
    *(v0 + 96) = v11;
    *(v0 + 16) = v11;
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
    if (swift_dynamicCast())
    {
      v13 = *(v0 + 24);
      *(v0 + 104) = v13;
      v14 = swift_task_alloc();
      *(v0 + 112) = v14;
      *v14 = v0;
      v14[1] = sub_24AD58C74;

      return sub_24AD4A77C(v13);
    }

    else
    {
      if (qword_2810653A0 != -1)
      {
        swift_once();
      }

      v18 = *(v0 + 96);
      __swift_project_value_buffer(v7, qword_2810654A0);
      v19 = v18;
      v20 = sub_24AD5E784();
      v21 = sub_24AD5EB44();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = *(v0 + 96);
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138543362;
        v25 = v22;
        v26 = _swift_stdlib_bridgeErrorToNSError();
        *(v23 + 4) = v26;
        *v24 = v26;
        _os_log_impl(&dword_24ACF2000, v20, v21, "CloudKit error: %{public}@", v23, 0xCu);
        sub_24AD06518(v24, &qword_27EFA61C8, &unk_24AD60C30);
        MEMORY[0x24C22F400](v24, -1, -1);
        MEMORY[0x24C22F400](v23, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C8, &qword_24AD61260);
      *(v0 + 144) = 4;
      *(v0 + 120) = sub_24AD5E604();
      sub_24AD062C8(&qword_2810653A8, &qword_27EFA60C8, &qword_24AD61260, MEMORY[0x277D08A90]);
      v28 = sub_24AD5E924();

      return MEMORY[0x2822009F8](sub_24AD58F98, v28, v27);
    }
  }

  else
  {
    v16 = swift_task_alloc();
    *(v0 + 128) = v16;
    *v16 = v0;
    v16[1] = sub_24AD590C8;
    v17 = *(v0 + 64);

    return MEMORY[0x28210DEC8](v17, 0, 1);
  }
}

uint64_t sub_24AD58C74()
{
  v1 = *(*v0 + 48);

  return MEMORY[0x2822009F8](sub_24AD58D84, v1, 0);
}

uint64_t sub_24AD58D84()
{
  if (qword_2810653A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = sub_24AD5E7A4();
  __swift_project_value_buffer(v2, qword_2810654A0);
  v3 = v1;
  v4 = sub_24AD5E784();
  v5 = sub_24AD5EB44();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 96);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24ACF2000, v4, v5, "CloudKit error: %{public}@", v7, 0xCu);
    sub_24AD06518(v8, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v8, -1, -1);
    MEMORY[0x24C22F400](v7, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C8, &qword_24AD61260);
  *(v0 + 144) = 4;
  *(v0 + 120) = sub_24AD5E604();
  sub_24AD062C8(&qword_2810653A8, &qword_27EFA60C8, &qword_24AD61260, MEMORY[0x277D08A90]);
  v12 = sub_24AD5E924();

  return MEMORY[0x2822009F8](sub_24AD58F98, v12, v11);
}

uint64_t sub_24AD58F98()
{
  v1 = *(v0 + 48);
  sub_24AD5E614();
  sub_24AD5E5D4();

  return MEMORY[0x2822009F8](sub_24AD59018, v1, 0);
}

uint64_t sub_24AD59018()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[10];
  sub_24AD5E634();
  (*(v3 + 8))(v1, v2);
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_24AD590C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v10 = *v5;
  v11 = *v5;
  *(*v5 + 136) = v4;

  if (v4)
  {
    v12 = *(v10 + 48);

    return MEMORY[0x2822009F8](sub_24AD59250, v12, 0);
  }

  else
  {

    v13 = *(v11 + 8);

    return v13(a1, a2, a3, a4 & 1);
  }
}

uint64_t sub_24AD59250()
{
  v1 = *(v0 + 136);
  *(v0 + 16) = v1;
  *(v0 + 96) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 24);
    *(v0 + 104) = v3;
    v4 = swift_task_alloc();
    *(v0 + 112) = v4;
    *v4 = v0;
    v4[1] = sub_24AD58C74;

    return sub_24AD4A77C(v3);
  }

  else
  {
    if (qword_2810653A0 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 96);
    v7 = sub_24AD5E7A4();
    __swift_project_value_buffer(v7, qword_2810654A0);
    v8 = v6;
    v9 = sub_24AD5E784();
    v10 = sub_24AD5EB44();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 96);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138543362;
      v14 = v11;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_24ACF2000, v9, v10, "CloudKit error: %{public}@", v12, 0xCu);
      sub_24AD06518(v13, &qword_27EFA61C8, &unk_24AD60C30);
      MEMORY[0x24C22F400](v13, -1, -1);
      MEMORY[0x24C22F400](v12, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C8, &qword_24AD61260);
    *(v0 + 144) = 4;
    *(v0 + 120) = sub_24AD5E604();
    sub_24AD062C8(&qword_2810653A8, &qword_27EFA60C8, &qword_24AD61260, MEMORY[0x277D08A90]);
    v17 = sub_24AD5E924();

    return MEMORY[0x2822009F8](sub_24AD58F98, v17, v16);
  }
}

uint64_t sub_24AD59528(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F30, &qword_24AD5FDF8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA62C0, &qword_24AD612E0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = (&v38 - v15);
  v17 = -1 << *(a1 + 32);
  v18 = ~v17;
  v19 = *(a1 + 64);
  v20 = -v17;
  v39 = a1;
  v40 = a1 + 64;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v41 = v18;
  v42 = 0;
  v43 = v21 & v19;
  v44 = a2;
  v45 = a3;

  v38 = a3;

  while (1)
  {
    sub_24AD52710(v16);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA62C8, &qword_24AD612E8);
    if ((*(*(v22 - 8) + 48))(v16, 1, v22) == 1)
    {
      sub_24ACF40D8(v39);
    }

    v23 = *v16;
    sub_24AD599EC(v16 + *(v22 + 48), v13, &qword_27EFA5F30, &qword_24AD5FDF8);
    v24 = *a5;
    v26 = sub_24AD09620(v23);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      break;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if (a4)
      {
        v33 = *a5;
        if ((v25 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_24AD05784();
        v33 = *a5;
        if ((v30 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:

      sub_24AD5997C(v13, v33[7] + *(v11 + 72) * v26);
      a4 = 1;
    }

    else
    {
      sub_24AD04804(v29, a4 & 1);
      v31 = sub_24AD09620(v23);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_21;
      }

      v26 = v31;
      v33 = *a5;
      if (v30)
      {
        goto LABEL_5;
      }

LABEL_14:
      v33[(v26 >> 6) + 8] |= 1 << v26;
      *(v33[6] + 8 * v26) = v23;
      sub_24AD599EC(v13, v33[7] + *(v11 + 72) * v26, &qword_27EFA5F30, &qword_24AD5FDF8);
      v34 = v33[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_20;
      }

      v33[2] = v36;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  sub_24AD06578(0, &qword_27EFA6028, 0x277CBC5D0);
  result = sub_24AD5EFC4();
  __break(1u);
  return result;
}