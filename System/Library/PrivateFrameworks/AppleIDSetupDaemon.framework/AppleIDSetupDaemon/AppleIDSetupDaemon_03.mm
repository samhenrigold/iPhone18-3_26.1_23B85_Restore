uint64_t sub_24082B760()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_24082B9C8;
  }

  else
  {
    v4 = sub_24082B88C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24082B88C()
{
  v1 = v0[31];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[21];

  (*(v2 + 8))(v3, v4);
  sub_2407D9440(v1, &qword_27E507F00, &qword_2408D6D50);

  v5 = v0[1];
  v6 = v0[38];

  return v5(v6);
}

uint64_t sub_24082B9C8()
{

  v1 = v0[31];
  (*(v0[22] + 8))(v0[23], v0[21]);
  sub_2407D9440(v1, &qword_27E507F00, &qword_2408D6D50);

  v2 = v0[1];

  return v2();
}

uint64_t sub_24082BB0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x2822009F8](sub_24082BB30, 0, 0);
}

uint64_t sub_24082BB30()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_24082BD68;
    v4 = v0[6];
    v3 = v0[7];
    v5 = v0[5];

    return sub_24082C158(v5, v3, v4);
  }

  else
  {
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v7 = sub_2408D4B20();
    __swift_project_value_buffer(v7, qword_27E506C48);
    v8 = sub_2408D4B10();
    v9 = sub_2408D4F30();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2407CF000, v8, v9, "RemoteSetupService deallocated", v10, 2u);
      MEMORY[0x245CC9F60](v10, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
    sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0, &unk_2408D6E90);
    swift_allocError();
    *v11 = 12;
    swift_willThrow();
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_24082BD68()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_24082BEE0;
  }

  else
  {
    v2 = sub_24082BE7C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24082BE7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24082BEE0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_24082BF44(uint64_t a1)
{
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v1 = sub_2408D4B20();
  __swift_project_value_buffer(v1, qword_27E506C48);
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F10();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2407CF000, v2, v3, "Command router invalidated, cancelling remote setup service", v4, 2u);
    MEMORY[0x245CC9F60](v4, -1, -1);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v5 = sub_2408D3D70();
    sub_2408763D8(&qword_27E506D20, 255, MEMORY[0x277CED590], MEMORY[0x277CED598]);
    v6 = swift_allocError();
    (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277CED580], v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507460, &unk_2408D7F00);
    sub_2407D917C(&qword_27E507628, &qword_27E507460, &unk_2408D7F00, &unk_2408D6BD8);
    sub_2408D4270();
  }
}

uint64_t sub_24082C158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_2408D4220();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_2408D3E10();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_2408D4500();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v8 = sub_2408D4A40();
  v4[15] = v8;
  v4[16] = *(v8 - 8);
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24082C330, v3, 0);
}

uint64_t sub_24082C330()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x277CEDE00])
  {
    v5 = v0[17];
    v7 = v0[10];
    v6 = v0[11];
    v8 = v0[9];
    (*(v0[16] + 96))(v5, v0[15]);
    (*(v7 + 32))(v6, v5, v8);
    v31 = sub_24083ECA8;
    v9 = swift_task_alloc();
    v0[20] = v9;
    *v9 = v0;
    v9[1] = sub_24082C860;
    v10 = v0[11];
LABEL_3:
    v11 = v0[4];
    v12 = v0[2];

    return v31(v12, v10, v11);
  }

  if (v4 == *MEMORY[0x277CEDE08])
  {
    v14 = v0[17];
    v16 = v0[7];
    v15 = v0[8];
    v18 = v0[5];
    v17 = v0[6];
    (*(v0[16] + 96))(v14, v0[15]);
    (*(v16 + 32))(v15, v14, v17);
    sub_2408D3F20();
    v19 = *(v18 + 128);
    v20 = swift_task_alloc();
    v0[22] = v20;
    *v20 = v0;
    v20[1] = sub_24082C98C;
    v21 = v0[8];
    v22 = v0[2];

    return MEMORY[0x28213F3D0](v22, v21, v19);
  }

  else
  {
    if (v4 == *MEMORY[0x277CEDDF0])
    {
      v23 = v0[17];
      v24 = v0[14];
      v25 = v0[12];
      v26 = v0[13];
      (*(v0[16] + 96))(v23, v0[15]);
      (*(v26 + 32))(v24, v23, v25);
      v31 = sub_24083584C;
      v27 = swift_task_alloc();
      v0[18] = v27;
      *v27 = v0;
      v27[1] = sub_24082C734;
      v10 = v0[14];
      goto LABEL_3;
    }

    v28 = sub_2408D41D0();
    sub_2408763D8(&qword_27E5074F8, 255, MEMORY[0x277CED7F0], MEMORY[0x277CED7F8]);
    swift_allocError();
    (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277CED7E0], v28);
    swift_willThrow();
    (*(v0[16] + 8))(v0[17], v0[15]);

    v30 = v0[1];

    return v30();
  }
}

uint64_t sub_24082C734()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_24082CD68;
  }

  else
  {
    v4 = sub_24082CC6C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24082C860()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_24082CF14;
  }

  else
  {
    v4 = sub_24082CE18;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24082C98C()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_24082CBB8;
  }

  else
  {
    v4 = sub_24082CAB8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24082CAB8()
{
  v1 = v0[2];
  (*(v0[7] + 8))(v0[8], v0[6]);
  v2 = *MEMORY[0x277CEDE30];
  v3 = sub_2408D4A50();
  (*(*(v3 - 8) + 104))(v1, v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24082CBB8()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24082CC6C()
{
  v1 = v0[2];
  (*(v0[13] + 8))(v0[14], v0[12]);
  v2 = *MEMORY[0x277CEDE18];
  v3 = sub_2408D4A50();
  (*(*(v3 - 8) + 104))(v1, v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24082CD68()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24082CE18()
{
  v1 = v0[2];
  (*(v0[10] + 8))(v0[11], v0[9]);
  v2 = *MEMORY[0x277CEDE28];
  v3 = sub_2408D4A50();
  (*(*(v3 - 8) + 104))(v1, v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24082CF14()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24082CFC4(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_2408D4530();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D00, &unk_2408D7FE0);
  v2[13] = swift_task_alloc();
  v4 = sub_2408D36A0();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  sub_2408D33D0();
  v2[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A18, &qword_2408D67E8);
  v2[18] = swift_task_alloc();
  v5 = sub_2408D4500();
  v2[19] = v5;
  v2[20] = *(v5 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v6 = sub_2408D38D0();
  v2[23] = v6;
  v2[24] = *(v6 - 8);
  v2[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506A20, &unk_2408D67F0);
  v2[26] = swift_task_alloc();
  v7 = sub_2408D4660();
  v2[27] = v7;
  v2[28] = *(v7 - 8);
  v2[29] = swift_task_alloc();
  v8 = sub_2408D3970();
  v2[30] = v8;
  v2[31] = *(v8 - 8);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24082D33C, v1, 0);
}

uint64_t sub_24082D33C()
{
  v15 = v0;
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v1 = sub_2408D4B20();
  v0[34] = __swift_project_value_buffer(v1, qword_27E506C48);

  v2 = sub_2408D4B10();
  v3 = sub_2408D4F20();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v0[7] = v4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507220, &unk_2408D7670);
    v7 = sub_2408D4D40();
    v9 = sub_2408CC504(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2407CF000, v2, v3, "Authenticating remote device with model: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x245CC9F60](v6, -1, -1);
    MEMORY[0x245CC9F60](v5, -1, -1);
  }

  v13 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v10 = swift_task_alloc();
  v0[35] = v10;
  *v10 = v0;
  v10[1] = sub_24082D54C;
  v11 = v0[29];

  return v13(v11);
}

uint64_t sub_24082D54C()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x2822009F8](sub_24082D65C, v1, 0);
}

uint64_t sub_24082D65C(uint64_t a1)
{
  v2 = v1[30];
  v3 = v1[31];
  v5 = v1[28];
  v4 = v1[29];
  v7 = v1[26];
  v6 = v1[27];
  sub_2408D4630();
  (*(v5 + 8))(v4, v6);
  if ((*(v3 + 48))(v7, 1, v2) == 1)
  {
    sub_2407D9440(v1[26], &unk_27E506A20, &unk_2408D67F0);
    v8 = sub_2408D4B10();
    v9 = sub_2408D4F30();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2407CF000, v8, v9, "Expected nonnull account to be in authentication model during remote setup", v10, 2u);
      MEMORY[0x245CC9F60](v10, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
    sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0, &unk_2408D6E90);
    swift_allocError();
    *v11 = 0;
    swift_willThrow();

    v12 = v1[1];

    return v12();
  }

  else
  {
    (*(v1[31] + 32))(v1[33], v1[26], v1[30]);
    v15 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
    v14 = swift_task_alloc();
    v1[36] = v14;
    *v14 = v1;
    v14[1] = sub_24082D958;

    return v15(nullsub_1, 0);
  }
}

uint64_t sub_24082D958()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = *(v2 + 72);
  if (v0)
  {
    v4 = sub_24082DA84;
  }

  else
  {
    v4 = sub_24082DB9C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24082DA84()
{
  (*(v0[31] + 8))(v0[33], v0[30]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24082DB9C(uint64_t a1)
{
  v1[38] = *(v1[9] + 112);
  sub_2408D38F0();
  sub_24082F2B0(v1 + 2);
  v2 = __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v4 = *v2;
  v3 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = swift_task_alloc();
  v1[39] = v7;
  *v7 = v1;
  v7[1] = sub_24082DC98;
  v8 = v1[25];
  v9 = v1[9];

  return sub_24086F87C(v8, v4, v3, v5, v6, v9);
}

uint64_t sub_24082DC98(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 192);
  v5 = *(*v1 + 184);
  v6 = *(*v1 + 72);
  *(v2 + 392) = a1;

  (*(v4 + 8))(v3, v5);
  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));

  return MEMORY[0x2822009F8](sub_24082DE1C, v6, 0);
}

uint64_t sub_24082DE1C(uint64_t a1)
{
  if (*(v1 + 392) == 1)
  {
    v2 = swift_task_alloc();
    *(v1 + 320) = v2;
    *v2 = v1;
    v2[1] = sub_24082E230;
    v3 = *(v1 + 264);
    v4 = *(v1 + 64);

    return sub_240809854(v4, v3);
  }

  else
  {
    v6 = sub_2408D4B10();
    v7 = sub_2408D4F20();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2407CF000, v6, v7, "No symptoms found. Cleared for takeoff.", v8, 2u);
      MEMORY[0x245CC9F60](v8, -1, -1);
    }

    v9 = sub_2408D4B10();
    v10 = sub_2408D4F20();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2407CF000, v9, v10, "Continuing to SRP", v11, 2u);
      MEMORY[0x245CC9F60](v11, -1, -1);
    }

    v12 = *(v1 + 72);

    v13 = *(v12 + 240);
    *(v1 + 336) = v13;
    if (v13)
    {

      v14 = sub_2408D4B10();
      v15 = sub_2408D4F20();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_2407CF000, v14, v15, "Following standard magic/proxied auth pattern", v16, 2u);
        MEMORY[0x245CC9F60](v16, -1, -1);
      }

      v17 = swift_task_alloc();
      *(v1 + 344) = v17;
      *v17 = v1;
      v17[1] = sub_24082EAEC;
      v18 = *(v1 + 264);
      v19 = *(v1 + 64);

      return sub_24082F5BC(v19, v18, v13);
    }

    else
    {
      v20 = *(v1 + 264);
      v21 = *(v1 + 240);
      v22 = *(v1 + 248);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
      sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0, &unk_2408D6E90);
      swift_allocError();
      *v23 = 0;
      swift_willThrow();
      (*(v22 + 8))(v20, v21);

      v24 = *(v1 + 8);

      return v24();
    }
  }
}

uint64_t sub_24082E230(char a1)
{
  v4 = *v2;
  *(v4 + 328) = v1;

  v5 = *(v4 + 72);
  if (v1)
  {
    v6 = sub_24082E9D4;
  }

  else
  {
    *(v4 + 393) = a1 & 1;
    v6 = sub_24082E370;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24082E370(uint64_t a1)
{
  v2 = *(v1 + 393);
  v3 = sub_2408D4B10();
  if (v2)
  {
    v4 = sub_2408D4F20();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2407CF000, v3, v4, "Continuing to SRP", v5, 2u);
      MEMORY[0x245CC9F60](v5, -1, -1);
    }

    v6 = *(v1 + 72);

    v7 = *(v6 + 240);
    *(v1 + 336) = v7;
    if (v7)
    {

      v8 = sub_2408D4B10();
      v9 = sub_2408D4F20();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_2407CF000, v8, v9, "Following standard magic/proxied auth pattern", v10, 2u);
        MEMORY[0x245CC9F60](v10, -1, -1);
      }

      v11 = swift_task_alloc();
      *(v1 + 344) = v11;
      *v11 = v1;
      v11[1] = sub_24082EAEC;
      v12 = *(v1 + 264);
      v13 = *(v1 + 64);

      return sub_24082F5BC(v13, v12, v7);
    }

    v30 = *(v1 + 264);
    v31 = *(v1 + 240);
    v32 = *(v1 + 248);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
    sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0, &unk_2408D6E90);
    swift_allocError();
    *v33 = 0;
    swift_willThrow();
    (*(v32 + 8))(v30, v31);
    goto LABEL_18;
  }

  v15 = sub_2408D4F30();
  if (os_log_type_enabled(v3, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2407CF000, v3, v15, "Failing early as user did not repair their account", v16, 2u);
    MEMORY[0x245CC9F60](v16, -1, -1);
  }

  v17 = *(v1 + 144);
  v18 = *(v1 + 120);
  v19 = *(v1 + 128);
  v20 = *(v1 + 104);
  v21 = *(v1 + 112);
  v42 = *(v1 + 72);

  sub_2408D38A0();
  v22 = sub_2408D3720();
  (*(*(v22 - 8) + 56))(v17, 1, 1, v22);
  sub_2408D33C0();
  (*(v18 + 104))(v19, *MEMORY[0x277CED3A0], v21);
  sub_2408D38E0();
  v23 = sub_2408D36F0();
  (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
  sub_2408D44E0();
  v24 = *(v42 + 240);
  *(v1 + 368) = v24;
  if (!v24)
  {
    v34 = *(v1 + 264);
    v35 = *(v1 + 240);
    v36 = *(v1 + 248);
    v37 = *(v1 + 176);
    v38 = *(v1 + 152);
    v39 = *(v1 + 160);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
    sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0, &unk_2408D6E90);
    swift_allocError();
    *v40 = 0;
    swift_willThrow();
    (*(v39 + 8))(v37, v38);
    (*(v36 + 8))(v34, v35);
LABEL_18:

    v41 = *(v1 + 8);

    return v41();
  }

  (*(*(v1 + 160) + 16))(*(v1 + 168), *(v1 + 176), *(v1 + 152));
  v43 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);

  v25 = swift_task_alloc();
  *(v1 + 376) = v25;
  v26 = sub_2408763D8(&qword_27E506D10, 255, MEMORY[0x277CEDB20], MEMORY[0x277CEDB18]);
  *v25 = v1;
  v25[1] = sub_24082EE7C;
  v27 = *(v1 + 168);
  v28 = *(v1 + 152);
  v29 = *(v1 + 96);

  return v43(v29, v27, v28, v26);
}

uint64_t sub_24082E9D4()
{
  (*(v0[31] + 8))(v0[33], v0[30]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24082EAEC(uint64_t a1)
{
  v4 = *v2;
  v4[44] = v1;

  v5 = v4[9];
  if (v1)
  {
    v6 = sub_24082ED54;
  }

  else
  {
    v4[45] = a1;
    v6 = sub_24082EC28;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24082EC28()
{
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[31];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];
  v5 = v0[45];

  return v4(v5);
}

uint64_t sub_24082ED54()
{
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[31];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24082EE7C()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v3 = v2[9];

    v4 = sub_24082F178;
  }

  else
  {
    v3 = v2[9];
    (*(v2[11] + 8))(v2[12], v2[10]);

    v4 = sub_24082EFD8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24082EFD8()
{
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[31];
  (*(v0[20] + 8))(v0[22], v0[19]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
  sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0, &unk_2408D6E90);
  swift_allocError();
  *v4 = 13;
  swift_willThrow();
  (*(v3 + 8))(v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24082F178()
{
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[31];
  (*(v0[20] + 8))(v0[22], v0[19]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

void *sub_24082F2B0@<X0>(void *a1@<X8>)
{
  v14 = a1;
  v16 = sub_2408D4FD0();
  v1 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2408D4FC0();
  MEMORY[0x28223BE20](v4);
  v5 = sub_2408D4C70();
  MEMORY[0x28223BE20](v5 - 8);
  v13 = [objc_opt_self() sharedInstance];
  v15 = sub_2407EEDBC(0, &qword_28130EF48, 0x277D85C78);
  sub_2408D4C60();
  v17 = MEMORY[0x277D84F90];
  sub_2408763D8(&unk_28130EF50, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506DB0, &unk_2408D6D80);
  sub_2407D917C(&qword_28130EF98, &qword_27E506DB0, &unk_2408D6D80, MEMORY[0x277D83970]);
  sub_2408D5080();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v16);
  v6 = sub_2408D4FF0();
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v8 = result;
    v9 = v14;
    v14[3] = &type metadata for SymptomReportGenerator;
    v9[4] = &off_285285708;
    result = swift_allocObject();
    *v9 = result;
    v10 = v13;
    result[2] = v8;
    result[3] = v10;
    v11 = MEMORY[0x277D84FA0];
    result[4] = v6;
    result[5] = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24082F5BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v5 = sub_2408D3D70();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D00, &unk_2408D7FE0);
  v4[20] = swift_task_alloc();
  v6 = sub_2408D3770();
  v4[21] = v6;
  v4[22] = *(v6 - 8);
  v4[23] = swift_task_alloc();
  v7 = sub_2408D3970();
  v4[24] = v7;
  v4[25] = *(v7 - 8);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A18, &qword_2408D67E8);
  v4[31] = swift_task_alloc();
  v8 = sub_2408D3490();
  v4[32] = v8;
  v4[33] = *(v8 - 8);
  v4[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24082F834, v3, 0);
}

uint64_t sub_24082F834()
{
  v69 = v0;
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
  __swift_project_boxed_opaque_existential_1((v0[16] + 144), *(v0[16] + 168));
  (*(v2 + 104))(v1, *MEMORY[0x277CED208], v3);
  v4 = sub_2408D4770();
  (*(v2 + 8))(v1, v3);
  if ((v4 & 1) != 0 && (v5 = v0[31], sub_2408D37A0(), v6 = sub_2408D3720(), v7 = (*(*(v6 - 8) + 48))(v5, 1, v6), sub_2407D9440(v5, &qword_27E506A18, &qword_2408D67E8), v7 != 1))
  {
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v19 = v0[30];
    v20 = v0[24];
    v21 = v0[25];
    v22 = v0[14];
    v23 = sub_2408D4B20();
    __swift_project_value_buffer(v23, qword_27E506C48);
    v24 = *(v21 + 16);
    (v24)(v19, v22, v20);
    v25 = sub_2408D4B10();
    v26 = sub_2408D4F20();
    v27 = os_log_type_enabled(v25, v26);
    v28 = v0[30];
    v30 = v0[24];
    v29 = v0[25];
    if (v27)
    {
      v31 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v68[0] = v63;
      *v31 = 136315138;
      sub_2408763D8(&qword_28130F418, 255, MEMORY[0x277CED3F8], MEMORY[0x277CED410]);
      v32 = sub_2408D5220();
      log = v24;
      v34 = v33;
      v35 = *(v29 + 8);
      v35(v28, v30);
      v36 = sub_2408CC504(v32, v34, v68);
      v24 = log;

      *(v31 + 4) = v36;
      _os_log_impl(&dword_2407CF000, v25, v26, "Family info is nonnull for account: %s, proceeding to do easy sign in", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v63);
      MEMORY[0x245CC9F60](v63, -1, -1);
      v37 = v31;
      v38 = v35;
      MEMORY[0x245CC9F60](v37, -1, -1);
    }

    else
    {

      v38 = *(v29 + 8);
      v38(v28, v30);
    }

    v0[35] = v38;
    sub_2408D37F0();
    v39 = v0[27];
    v40 = v0[24];
    v41 = v0[14];
    (v24)(v0[28], v0[29], v40);
    (v24)(v39, v41, v40);
    v42 = sub_2408D4B10();
    v43 = sub_2408D4F10();
    v44 = os_log_type_enabled(v42, v43);
    v46 = v0[27];
    v45 = v0[28];
    v47 = v0[24];
    if (v44)
    {
      loga = v42;
      v48 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v68[0] = v67;
      *v48 = 136315394;
      sub_2408763D8(&qword_28130F418, 255, MEMORY[0x277CED3F8], MEMORY[0x277CED410]);
      v49 = sub_2408D5220();
      v64 = v43;
      v50 = v38;
      v52 = v51;
      v50(v45, v47);
      v53 = sub_2408CC504(v49, v52, v68);

      *(v48 + 4) = v53;
      *(v48 + 12) = 2080;
      v54 = sub_2408D5220();
      v56 = v55;
      v50(v46, v47);
      v57 = sub_2408CC504(v54, v56, v68);

      *(v48 + 14) = v57;
      _os_log_impl(&dword_2407CF000, loga, v64, "Attempting challenged dependent auth with source: %s and target: %s", v48, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CC9F60](v67, -1, -1);
      MEMORY[0x245CC9F60](v48, -1, -1);
    }

    else
    {

      v38(v46, v47);
      v38(v45, v47);
    }

    v58 = swift_task_alloc();
    v0[36] = v58;
    *v58 = v0;
    v58[1] = sub_24082FF74;
    v59 = v0[29];
    v60 = v0[15];
    v62 = v0[13];
    v61 = v0[14];

    return sub_240832DF8(v62, v59, v61, v60);
  }

  else
  {
    v8 = v0[16];
    sub_2408D36D0();
    v9 = *(v8 + 128);
    v10 = *(v8 + 136);
    v11 = sub_2408D4150();
    v12 = sub_2408D4140();
    v13 = MEMORY[0x277CED7C0];
    v0[5] = v11;
    v0[6] = v13;
    v0[2] = v12;
    v14 = swift_task_alloc();
    v0[39] = v14;
    *v14 = v0;
    v14[1] = sub_2408302BC;
    v15 = v0[23];
    v16 = v0[20];
    v17 = v0[14];

    return sub_2407E52F0(v15, v17, v16, v9, v10, (v0 + 2));
  }
}

uint64_t sub_24082FF74(uint64_t a1)
{
  v4 = *v2;
  v4[37] = v1;

  v5 = v4[16];
  if (v1)
  {
    v6 = sub_2408301B8;
  }

  else
  {
    v4[38] = a1;
    v6 = sub_2408300B0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2408300B0()
{
  (*(v0 + 280))(*(v0 + 232), *(v0 + 192));
  v3 = *(v0 + 304);

  v1 = *(v0 + 8);

  return v1(v3);
}

uint64_t sub_2408301B8()
{
  (*(v0 + 280))(*(v0 + 232), *(v0 + 192));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2408302BC()
{
  v2 = *v1;
  v2[40] = v0;

  v3 = v2[16];
  sub_2407D9440(v2[20], &qword_27E506D00, &unk_2408D7FE0);
  __swift_destroy_boxed_opaque_existential_0Tm(v2 + 2);
  if (v0)
  {
    v4 = sub_240830C28;
  }

  else
  {
    v4 = sub_24083041C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24083041C()
{
  v53 = v0;
  v1 = *(v0 + 320);
  v2 = IdMSAccount.SRPResults.into()();
  (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
  if (v1)
  {
    *(v0 + 328) = v1;
    *(v0 + 80) = v1;
    v3 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
    if (swift_dynamicCast())
    {
      v4 = (*(*(v0 + 144) + 88))(*(v0 + 152), *(v0 + 136));
      if (v4 == *MEMORY[0x277CED588])
      {
        v5 = v4;

        if (qword_27E506918 != -1)
        {
          swift_once();
        }

        v6 = sub_2408D4B20();
        __swift_project_value_buffer(v6, qword_27E506C48);
        v7 = sub_2408D4B10();
        v8 = sub_2408D4F30();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = *(v0 + 136);
          v10 = *(v0 + 144);
          v11 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          *v11 = 138412290;
          sub_2408763D8(&qword_27E506D20, 255, MEMORY[0x277CED590], MEMORY[0x277CED598]);
          swift_allocError();
          (*(v10 + 104))(v13, v5, v9);
          v14 = _swift_stdlib_bridgeErrorToNSError();
          *(v11 + 4) = v14;
          *v12 = v14;
          _os_log_impl(&dword_2407CF000, v7, v8, "Failed to perform magic auth for account with error: %@", v11, 0xCu);
          sub_2407D9440(v12, &qword_27E506AB0, &unk_2408D6830);
          MEMORY[0x245CC9F60](v12, -1, -1);
          MEMORY[0x245CC9F60](v11, -1, -1);
        }

        v15 = *(v0 + 128);

        swift_beginAccess();
        v16 = *(v15 + 120);
        if (v16)
        {
          v17 = *(v0 + 136);
          v18 = *(v0 + 144);
          *(v0 + 88) = v16;
          sub_2408763D8(&qword_27E506D20, 255, MEMORY[0x277CED590], MEMORY[0x277CED598]);
          v19 = swift_allocError();
          (*(v18 + 104))(v20, v5, v17);
          *(v0 + 96) = v19;
          type metadata accessor for ProximityTransportConnector();
          sub_2408763D8(&qword_27E506E78, 255, type metadata accessor for ProximityTransportConnector, &unk_2408D6F38);
          sub_2408D3640();
        }

        v22 = *(v0 + 136);
        v21 = *(v0 + 144);
        sub_2408763D8(&qword_27E506D20, 255, MEMORY[0x277CED590], MEMORY[0x277CED598]);
        swift_allocError();
        (*(v21 + 104))(v23, v5, v22);
        swift_willThrow();

        v24 = *(v0 + 8);

        return v24();
      }

      (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
    }

    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v28 = *(v0 + 200);
    v27 = *(v0 + 208);
    v29 = *(v0 + 192);
    v30 = *(v0 + 112);
    v31 = sub_2408D4B20();
    __swift_project_value_buffer(v31, qword_27E506C48);
    (*(v28 + 16))(v27, v30, v29);
    v32 = v1;
    v33 = sub_2408D4B10();
    v34 = sub_2408D4F30();

    v35 = os_log_type_enabled(v33, v34);
    v37 = *(v0 + 200);
    v36 = *(v0 + 208);
    v38 = *(v0 + 192);
    if (v35)
    {
      v39 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v52 = v51;
      *v39 = 136315394;
      sub_2408763D8(&qword_28130F418, 255, MEMORY[0x277CED3F8], MEMORY[0x277CED410]);
      v40 = sub_2408D5220();
      v42 = v41;
      (*(v37 + 8))(v36, v38);
      v43 = sub_2408CC504(v40, v42, &v52);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2112;
      v44 = v1;
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v39 + 14) = v45;
      *v50 = v45;
      _os_log_impl(&dword_2407CF000, v33, v34, "Failed to perform magic auth for account (%s with error: %@", v39, 0x16u);
      sub_2407D9440(v50, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v50, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
      MEMORY[0x245CC9F60](v51, -1, -1);
      MEMORY[0x245CC9F60](v39, -1, -1);
    }

    else
    {

      (*(v37 + 8))(v36, v38);
    }

    v46 = swift_task_alloc();
    *(v0 + 336) = v46;
    *v46 = v0;
    v46[1] = sub_24083136C;
    v47 = *(v0 + 120);
    v49 = *(v0 + 104);
    v48 = *(v0 + 112);

    return sub_24083168C(v49, v48, v47);
  }

  else
  {

    v26 = *(v0 + 8);

    return v26(v2);
  }
}

uint64_t sub_240830C28()
{
  v51 = v0;
  v1 = *(v0 + 320);
  *(v0 + 80) = v1;
  *(v0 + 328) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
  if (swift_dynamicCast())
  {
    v3 = (*(*(v0 + 144) + 88))(*(v0 + 152), *(v0 + 136));
    if (v3 == *MEMORY[0x277CED588])
    {
      v4 = v3;

      if (qword_27E506918 != -1)
      {
        swift_once();
      }

      v5 = sub_2408D4B20();
      __swift_project_value_buffer(v5, qword_27E506C48);
      v6 = sub_2408D4B10();
      v7 = sub_2408D4F30();
      if (os_log_type_enabled(v6, v7))
      {
        v9 = *(v0 + 136);
        v8 = *(v0 + 144);
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        *v10 = 138412290;
        sub_2408763D8(&qword_27E506D20, 255, MEMORY[0x277CED590], MEMORY[0x277CED598]);
        swift_allocError();
        (*(v8 + 104))(v12, v4, v9);
        v13 = _swift_stdlib_bridgeErrorToNSError();
        *(v10 + 4) = v13;
        *v11 = v13;
        _os_log_impl(&dword_2407CF000, v6, v7, "Failed to perform magic auth for account with error: %@", v10, 0xCu);
        sub_2407D9440(v11, &qword_27E506AB0, &unk_2408D6830);
        MEMORY[0x245CC9F60](v11, -1, -1);
        MEMORY[0x245CC9F60](v10, -1, -1);
      }

      v14 = *(v0 + 128);

      swift_beginAccess();
      v15 = *(v14 + 120);
      if (v15)
      {
        v16 = *(v0 + 136);
        v17 = *(v0 + 144);
        *(v0 + 88) = v15;
        sub_2408763D8(&qword_27E506D20, 255, MEMORY[0x277CED590], MEMORY[0x277CED598]);
        v18 = swift_allocError();
        (*(v17 + 104))(v19, v4, v16);
        *(v0 + 96) = v18;
        type metadata accessor for ProximityTransportConnector();
        sub_2408763D8(&qword_27E506E78, 255, type metadata accessor for ProximityTransportConnector, &unk_2408D6F38);
        sub_2408D3640();
      }

      v20 = *(v0 + 136);
      v21 = *(v0 + 144);
      sub_2408763D8(&qword_27E506D20, 255, MEMORY[0x277CED590], MEMORY[0x277CED598]);
      swift_allocError();
      (*(v21 + 104))(v22, v4, v20);
      swift_willThrow();

      v23 = *(v0 + 8);

      return v23();
    }

    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
  }

  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v26 = *(v0 + 200);
  v25 = *(v0 + 208);
  v27 = *(v0 + 192);
  v28 = *(v0 + 112);
  v29 = sub_2408D4B20();
  __swift_project_value_buffer(v29, qword_27E506C48);
  (*(v26 + 16))(v25, v28, v27);
  v30 = v1;
  v31 = sub_2408D4B10();
  v32 = sub_2408D4F30();

  v33 = os_log_type_enabled(v31, v32);
  v35 = *(v0 + 200);
  v34 = *(v0 + 208);
  v36 = *(v0 + 192);
  if (v33)
  {
    v37 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v50 = v49;
    *v37 = 136315394;
    sub_2408763D8(&qword_28130F418, 255, MEMORY[0x277CED3F8], MEMORY[0x277CED410]);
    v38 = sub_2408D5220();
    v40 = v39;
    (*(v35 + 8))(v34, v36);
    v41 = sub_2408CC504(v38, v40, &v50);

    *(v37 + 4) = v41;
    *(v37 + 12) = 2112;
    v42 = v1;
    v43 = _swift_stdlib_bridgeErrorToNSError();
    *(v37 + 14) = v43;
    *v48 = v43;
    _os_log_impl(&dword_2407CF000, v31, v32, "Failed to perform magic auth for account (%s with error: %@", v37, 0x16u);
    sub_2407D9440(v48, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v48, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v49);
    MEMORY[0x245CC9F60](v49, -1, -1);
    MEMORY[0x245CC9F60](v37, -1, -1);
  }

  else
  {

    (*(v35 + 8))(v34, v36);
  }

  v44 = swift_task_alloc();
  *(v0 + 336) = v44;
  *v44 = v0;
  v44[1] = sub_24083136C;
  v45 = *(v0 + 120);
  v47 = *(v0 + 104);
  v46 = *(v0 + 112);

  return sub_24083168C(v47, v46, v45);
}

uint64_t sub_24083136C(uint64_t a1)
{
  v4 = *v2;
  v4[43] = v1;

  v5 = v4[16];
  if (v1)
  {
    v6 = sub_24083159C;
  }

  else
  {
    v4[44] = a1;
    v6 = sub_2408314A8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2408314A8()
{
  v3 = *(v0 + 352);

  v1 = *(v0 + 8);

  return v1(v3);
}

uint64_t sub_24083159C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24083168C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D00, &unk_2408D7FE0);
  v4[9] = swift_task_alloc();
  v5 = sub_2408D3770();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = sub_2408D36A0();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507F00, &qword_2408D6D50);
  v4[16] = swift_task_alloc();
  v7 = sub_2408D36F0();
  v4[17] = v7;
  v4[18] = *(v7 - 8);
  v4[19] = swift_task_alloc();
  v8 = sub_2408D38D0();
  v4[20] = v8;
  v4[21] = *(v8 - 8);
  v4[22] = swift_task_alloc();
  v9 = sub_2408D3970();
  v4[23] = v9;
  v4[24] = *(v9 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24083193C, v3, 0);
}

uint64_t sub_24083193C()
{
  v29 = v0;
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[6];
  v5 = sub_2408D4B20();
  v0[27] = __swift_project_value_buffer(v5, qword_27E506C48);
  v6 = *(v3 + 16);
  v0[28] = v6;
  v0[29] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = sub_2408D4B10();
  v8 = sub_2408D4F50();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[26];
  v11 = v0[23];
  v12 = v0[24];
  if (v9)
  {
    v13 = v0[21];
    v14 = v0[22];
    v26 = v8;
    v15 = v0[20];
    v16 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v16 = 136315138;
    v25 = v11;
    sub_2408D38F0();
    sub_2408763D8(&qword_27E506AA0, 255, MEMORY[0x277CED3D8], MEMORY[0x277CED3F0]);
    v17 = sub_2408D5220();
    v19 = v18;
    (*(v13 + 8))(v14, v15);
    v20 = *(v12 + 8);
    v20(v10, v25);
    v21 = sub_2408CC504(v17, v19, &v28);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_2407CF000, v7, v26, "Performing proxied auth for account %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    MEMORY[0x245CC9F60](v27, -1, -1);
    MEMORY[0x245CC9F60](v16, -1, -1);
  }

  else
  {

    v20 = *(v12 + 8);
    v20(v10, v11);
  }

  v0[30] = v20;
  sub_2408D3D80();
  sub_2408763D8(&qword_27E506D08, 255, MEMORY[0x277CED5B0], MEMORY[0x277CED5B8]);
  v23 = sub_2408D4E00();

  return MEMORY[0x2822009F8](sub_240831C28, v23, v22);
}

uint64_t sub_240831C28()
{
  sub_2408D3D30();
  *(v0 + 248) = 0;
  v1 = *(v0 + 64);

  return MEMORY[0x2822009F8](sub_240831CB8, v1, 0);
}

uint64_t sub_240831CB8()
{
  v1 = *(v0 + 152);
  v2 = swift_task_alloc();
  *(v0 + 256) = v2;
  *(v2 + 16) = *(v0 + 48);
  *(v2 + 32) = v1;
  v5 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
  v3 = swift_task_alloc();
  *(v0 + 264) = v3;
  *v3 = v0;
  v3[1] = sub_240831D98;

  return v5(sub_2407EECEC, v2);
}

uint64_t sub_240831D98()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = sub_240832834;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_240831F88;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_240831EC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_240831FB0()
{
  v1 = v0[35];
  v2 = v0[5];
  v3 = swift_task_alloc();
  v0[36] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[37] = v4;
  v5 = type metadata accessor for AuthenticationReport(0);
  *v4 = v0;
  v4[1] = sub_240832090;

  return MEMORY[0x2821400E8](v0 + 2, &unk_2408D8030, v3, v5);
}

uint64_t sub_240832090()
{

  return MEMORY[0x2822009F8](sub_2408321A8, 0, 0);
}

uint64_t sub_2408321A8()
{
  v1 = *(v0 + 16);
  *(v0 + 304) = v1;
  if (*(v0 + 24))
  {
    v2 = *(v0 + 64);
    *(v0 + 32) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
    swift_willThrowTypedImpl();
    v3 = sub_240832754;
    v4 = v2;
  }

  else
  {
    v4 = *(v0 + 64);
    v3 = sub_240832260;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_240832260()
{
  v41 = v0;
  v1 = *(v0 + 128);
  (*(v0 + 224))(*(v0 + 200), *(v0 + 48), *(v0 + 184));
  sub_2408CBA10(v1);
  sub_240820858(v1);
  sub_2407D9440(v1, &qword_27E507F00, &qword_2408D6D50);
  v2 = sub_2408CBDF8();
  if (v3)
  {
    v4 = v2;
    v5 = v3;

    v6 = sub_2408D4B10();
    v7 = sub_2408D4F50();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v40[0] = v9;
      *v8 = 136642819;
      *(v8 + 4) = sub_2408CC504(v4, v5, v40);
      _os_log_impl(&dword_2407CF000, v6, v7, "Successfully obtained passwordless token for proxied auth: %{sensitive}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x245CC9F60](v9, -1, -1);
      MEMORY[0x245CC9F60](v8, -1, -1);
    }

    v10 = *(v0 + 120);
    v11 = sub_2408CBE04();
    *v10 = v4;
    v10[1] = v5;
    v10[2] = v11;
    v10[3] = v12;
    v13 = MEMORY[0x277CED398];
LABEL_9:
    (*(*(v0 + 112) + 104))(*(v0 + 120), *v13, *(v0 + 104));
    sub_2408D3790();
    sub_2408D36D0();
    v23 = swift_task_alloc();
    *(v0 + 312) = v23;
    *v23 = v0;
    v23[1] = sub_240832924;
    v24 = *(v0 + 200);
    v25 = *(v0 + 96);
    v26 = *(v0 + 72);

    return sub_2407E8264(v25, v24, v26);
  }

  v14 = sub_2408CBDEC();
  if (v15)
  {
    v16 = v14;
    v17 = v15;

    v18 = sub_2408D4B10();
    v19 = sub_2408D4F50();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v40[0] = v21;
      *v20 = 136642819;
      *(v20 + 4) = sub_2408CC504(v16, v17, v40);
      _os_log_impl(&dword_2407CF000, v18, v19, "Successfully obtained raw password for proxied auth: %{sensitive}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x245CC9F60](v21, -1, -1);
      MEMORY[0x245CC9F60](v20, -1, -1);
    }

    v22 = *(v0 + 120);
    *v22 = v16;
    v22[1] = v17;
    v13 = MEMORY[0x277CED380];
    goto LABEL_9;
  }

  v28 = sub_2408D4B10();
  v29 = sub_2408D4F30();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_2407CF000, v28, v29, "Missing raw password from proxied auth results", v30, 2u);
    MEMORY[0x245CC9F60](v30, -1, -1);
  }

  v31 = *(v0 + 304);
  v32 = *(v0 + 200);
  v33 = *(v0 + 184);
  v34 = *(v0 + 144);
  v38 = *(v0 + 240);
  v39 = *(v0 + 152);
  v35 = *(v0 + 136);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
  sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0, &unk_2408D6E90);
  swift_allocError();
  *v36 = 0;
  swift_willThrow();
  sub_24080F564(v31, 0);
  v38(v32, v33);
  (*(v34 + 8))(v39, v35);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_240832754()
{
  (*(v0[18] + 8))(v0[19], v0[17]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_240832834()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_240832924()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  sub_2407D9440(v3, &qword_27E506D00, &unk_2408D7FE0);
  if (v0)
  {
    v5 = sub_240832CE0;
  }

  else
  {
    v5 = sub_240832A7C;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_240832A7C()
{
  v1 = v0[40];
  v2 = IdMSAccount.SRPResults.into()();
  v3 = v0[38];
  v4 = v0[30];
  if (v1)
  {
    v5 = v0[25];
    v6 = v0[23];
    v8 = v0[18];
    v7 = v0[19];
    v9 = v0[17];
    (*(v0[11] + 8))(v0[12], v0[10]);
    sub_24080F564(v3, 0);
    v4(v5, v6);
    (*(v8 + 8))(v7, v9);

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[25];
    v13 = v0[23];
    v14 = v0[18];
    v15 = v0[19];
    v18 = v0[17];
    v16 = v2;
    (*(v0[11] + 8))(v0[12], v0[10]);
    *(v16 + OBJC_IVAR____TtC18AppleIDSetupDaemon20AuthenticationReport_originalReport) = v3;

    v4(v12, v13);
    (*(v14 + 8))(v15, v18);

    v17 = v0[1];

    return v17(v16);
  }
}

uint64_t sub_240832CE0()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = *(v0 + 136);
  sub_24080F564(*(v0 + 304), 0);
  v1(v2, v3);
  (*(v5 + 8))(v4, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_240832DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D00, &unk_2408D7FE0);
  v5[14] = swift_task_alloc();
  v6 = sub_2408D3770();
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();
  v7 = sub_2408D36A0();
  v5[18] = v7;
  v5[19] = *(v7 - 8);
  v5[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507F00, &qword_2408D6D50);
  v5[21] = swift_task_alloc();
  v8 = sub_2408D36F0();
  v5[22] = v8;
  v5[23] = *(v8 - 8);
  v5[24] = swift_task_alloc();
  v9 = sub_2408D3970();
  v5[25] = v9;
  v5[26] = *(v9 - 8);
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v10 = sub_2408D38D0();
  v5[31] = v10;
  v5[32] = *(v10 - 8);
  v5[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408330C4, v4, 0);
}

uint64_t sub_2408330C4(uint64_t a1)
{
  v61 = v1;
  v3 = v1[32];
  v2 = v1[33];
  v4 = v1[31];
  sub_2408D38F0();
  v5 = sub_2408D3870();
  (*(v3 + 8))(v2, v4);
  if (v5)
  {
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v6 = v1[30];
    v7 = v1[25];
    v8 = v1[26];
    v9 = v1[11];
    v10 = sub_2408D4B20();
    __swift_project_value_buffer(v10, qword_27E506C48);
    (*(v8 + 16))(v6, v9, v7);
    v11 = sub_2408D4B10();
    v12 = sub_2408D4F10();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v1[30];
    v15 = v1[25];
    v16 = v1[26];
    if (v13)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v60 = v18;
      *v17 = 136315138;
      sub_2408763D8(&qword_28130F418, 255, MEMORY[0x277CED3F8], MEMORY[0x277CED410]);
      v19 = sub_2408D5220();
      v21 = v20;
      (*(v16 + 8))(v14, v15);
      v22 = sub_2408CC504(v19, v21, &v60);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_2407CF000, v11, v12, "Target account %s represents an unknown teen account not in a family yet. Performing challenged independent auth", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x245CC9F60](v18, -1, -1);
      MEMORY[0x245CC9F60](v17, -1, -1);
    }

    else
    {

      (*(v16 + 8))(v14, v15);
    }

    v48 = swift_task_alloc();
    v1[37] = v48;
    *v48 = v1;
    v48[1] = sub_2408336B8;
    v49 = v1[12];
    v50 = v1[11];
    v51 = v1[9];

    return sub_2408353FC(v51, v50, v49);
  }

  else
  {
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v23 = v1[28];
    v24 = v1[29];
    v25 = v1[25];
    v26 = v1[26];
    v28 = v1[10];
    v27 = v1[11];
    v29 = sub_2408D4B20();
    v1[34] = __swift_project_value_buffer(v29, qword_27E506C48);
    v30 = *(v26 + 16);
    v1[35] = v30;
    v1[36] = (v26 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v30(v24, v28, v25);
    v30(v23, v27, v25);
    v31 = sub_2408D4B10();
    v32 = sub_2408D4F50();
    v33 = os_log_type_enabled(v31, v32);
    v35 = v1[28];
    v34 = v1[29];
    v37 = v1[25];
    v36 = v1[26];
    if (v33)
    {
      v57 = v32;
      v38 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v60 = v58;
      *v38 = 136315394;
      sub_2408763D8(&qword_28130F418, 255, MEMORY[0x277CED3F8], MEMORY[0x277CED410]);
      v39 = sub_2408D5220();
      v41 = v40;
      log = v31;
      v42 = *(v36 + 8);
      v42(v34, v37);
      v43 = sub_2408CC504(v39, v41, &v60);

      *(v38 + 4) = v43;
      *(v38 + 12) = 2080;
      v44 = sub_2408D5220();
      v46 = v45;
      v42(v35, v37);
      v47 = sub_2408CC504(v44, v46, &v60);

      *(v38 + 14) = v47;
      _os_log_impl(&dword_2407CF000, log, v57, "Performing challenged dependent proxied auth with source: %s and target: %s", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CC9F60](v58, -1, -1);
      MEMORY[0x245CC9F60](v38, -1, -1);
    }

    else
    {

      v42 = *(v36 + 8);
      v42(v35, v37);
      v42(v34, v37);
    }

    v1[38] = v42;
    v53 = v1[10];
    v54 = swift_task_alloc();
    v1[39] = v54;
    *(v54 + 16) = v53;
    v59 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
    v55 = swift_task_alloc();
    v1[40] = v55;
    *v55 = v1;
    v55[1] = sub_240833904;

    return v59(sub_2407EECC0, v54);
  }
}

uint64_t sub_2408336B8(uint64_t a1)
{
  v2 = *v1;

  v4 = *(v2 + 8);
  if (!v7)
  {
    v3 = a1;
  }

  return v4(v3);
}

uint64_t sub_240833904()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = sub_2408340C8;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_240833A2C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_240833A54()
{
  v1 = v0[42];
  v2 = v0[9];
  v3 = swift_task_alloc();
  v0[43] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[44] = v4;
  v5 = type metadata accessor for AuthenticationReport(0);
  v0[45] = v5;
  *v4 = v0;
  v4[1] = sub_240833B38;

  return MEMORY[0x2821400E8](v0 + 2, &unk_2408D7500, v3, v5);
}

uint64_t sub_240833B38()
{

  return MEMORY[0x2822009F8](sub_240833C50, 0, 0);
}

uint64_t sub_240833C50()
{
  v1 = *(v0 + 16);
  *(v0 + 368) = v1;
  if (*(v0 + 24))
  {
    v2 = *(v0 + 104);
    *(v0 + 48) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
    swift_willThrowTypedImpl();
    v3 = sub_240833EF8;
    v4 = v2;
  }

  else
  {
    v4 = *(v0 + 104);
    v3 = sub_240833D08;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_240833D08()
{
  v15 = v0;
  v1 = *(v0 + 368);

  v2 = sub_2408D4B10();
  v3 = sub_2408D4F10();
  sub_24080F564(v1, 0);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 368);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    *(v0 + 64) = v4;

    v7 = sub_2408D4D40();
    v9 = sub_2408CC504(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2407CF000, v2, v3, "Finished authenticating parent: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x245CC9F60](v6, -1, -1);
    MEMORY[0x245CC9F60](v5, -1, -1);
    sub_24080F564(v4, 0);
  }

  else
  {
    v10 = *(v0 + 368);

    sub_24080F564(v10, 0);
  }

  sub_2408D3D80();
  sub_2408763D8(&qword_27E506D08, 255, MEMORY[0x277CED5B0], MEMORY[0x277CED5B8]);
  v12 = sub_2408D4E00();

  return MEMORY[0x2822009F8](sub_2408341BC, v12, v11);
}

uint64_t sub_240833EF8()
{
  v1 = *(v0 + 368);
  v2 = v1;
  v3 = sub_2408D4B10();
  v4 = sub_2408D4F30();
  sub_24080F564(v1, 1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 368);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2407CF000, v3, v4, "Failed to authenticate parent, things are about to go very badly: %@", v7, 0xCu);
    sub_2407D9440(v8, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v8, -1, -1);
    MEMORY[0x245CC9F60](v7, -1, -1);
    sub_24080F564(v6, 1);
  }

  else
  {

    sub_24080F564(v6, 1);
  }

  sub_2408D3D80();
  sub_2408763D8(&qword_27E506D08, 255, MEMORY[0x277CED5B0], MEMORY[0x277CED5B8]);
  v12 = sub_2408D4E00();

  return MEMORY[0x2822009F8](sub_2408341BC, v12, v11);
}

uint64_t sub_2408340C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2408341BC()
{
  v1 = v0[41];
  sub_2408D3D30();
  v0[47] = v1;
  v2 = v0[13];
  if (v1)
  {
    v3 = sub_240834458;
  }

  else
  {
    v3 = sub_24083424C;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_24083424C()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 80);
  v3 = swift_task_alloc();
  *(v0 + 384) = v3;
  *(v3 + 16) = *(v0 + 88);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v6 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
  v4 = swift_task_alloc();
  *(v0 + 392) = v4;
  *v4 = v0;
  v4[1] = sub_240834334;

  return v6(sub_2407EECC8, v3);
}

uint64_t sub_240834334()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = sub_240834DF8;
  }

  else
  {

    v4 = sub_240834544;
    v3 = 0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_240834458()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_240834544()
{
  v1 = v0[42];
  v2 = v0[9];
  v3 = swift_task_alloc();
  v0[51] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[52] = v4;
  *v4 = v0;
  v4[1] = sub_24083461C;
  v5 = v0[45];

  return MEMORY[0x2821400E8](v0 + 4, &unk_2408D8020, v3, v5);
}

uint64_t sub_24083461C()
{

  return MEMORY[0x2822009F8](sub_240834734, 0, 0);
}

uint64_t sub_240834734()
{
  v1 = *(v0 + 32);
  *(v0 + 424) = v1;
  if (*(v0 + 40))
  {
    v2 = *(v0 + 104);
    *(v0 + 56) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
    swift_willThrowTypedImpl();
    v3 = sub_240834CF4;
    v4 = v2;
  }

  else
  {
    v4 = *(v0 + 104);
    v3 = sub_2408347EC;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_2408347EC()
{
  v41 = v0;
  v1 = *(v0 + 168);
  (*(v0 + 280))(*(v0 + 216), *(v0 + 88), *(v0 + 200));
  sub_2408CBA10(v1);
  sub_240820858(v1);
  sub_2407D9440(v1, &qword_27E507F00, &qword_2408D6D50);
  v2 = sub_2408CBDF8();
  if (v3)
  {
    v4 = v2;
    v5 = v3;

    v6 = sub_2408D4B10();
    v7 = sub_2408D4F50();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v40[0] = v9;
      *v8 = 136642819;
      *(v8 + 4) = sub_2408CC504(v4, v5, v40);
      _os_log_impl(&dword_2407CF000, v6, v7, "Successfully obtained passwordless token for proxied auth: %{sensitive}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x245CC9F60](v9, -1, -1);
      MEMORY[0x245CC9F60](v8, -1, -1);
    }

    v10 = *(v0 + 160);
    v11 = sub_2408CBE04();
    *v10 = v4;
    v10[1] = v5;
    v10[2] = v11;
    v10[3] = v12;
    v13 = MEMORY[0x277CED398];
LABEL_9:
    (*(*(v0 + 152) + 104))(*(v0 + 160), *v13, *(v0 + 144));
    sub_2408D3790();
    sub_2408D36D0();
    v23 = swift_task_alloc();
    *(v0 + 432) = v23;
    *v23 = v0;
    v23[1] = sub_240834F0C;
    v24 = *(v0 + 216);
    v25 = *(v0 + 136);
    v26 = *(v0 + 112);

    return sub_2407E8264(v25, v24, v26);
  }

  v14 = sub_2408CBDEC();
  if (v15)
  {
    v16 = v14;
    v17 = v15;

    v18 = sub_2408D4B10();
    v19 = sub_2408D4F50();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v40[0] = v21;
      *v20 = 136642819;
      *(v20 + 4) = sub_2408CC504(v16, v17, v40);
      _os_log_impl(&dword_2407CF000, v18, v19, "Successfully obtained raw password for proxied auth: %{sensitive}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x245CC9F60](v21, -1, -1);
      MEMORY[0x245CC9F60](v20, -1, -1);
    }

    v22 = *(v0 + 160);
    *v22 = v16;
    v22[1] = v17;
    v13 = MEMORY[0x277CED380];
    goto LABEL_9;
  }

  v28 = sub_2408D4B10();
  v29 = sub_2408D4F30();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_2407CF000, v28, v29, "Missing raw password from proxied auth results", v30, 2u);
    MEMORY[0x245CC9F60](v30, -1, -1);
  }

  v31 = *(v0 + 424);
  v32 = *(v0 + 216);
  v33 = *(v0 + 200);
  v38 = *(v0 + 304);
  v39 = *(v0 + 192);
  v34 = *(v0 + 176);
  v35 = *(v0 + 184);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
  sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0, &unk_2408D6E90);
  swift_allocError();
  *v36 = 0;
  swift_willThrow();
  sub_24080F564(v31, 0);
  v38(v32, v33);
  (*(v35 + 8))(v39, v34);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_240834CF4()
{
  (*(v0[23] + 8))(v0[24], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_240834DF8()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_240834F0C()
{
  v2 = *v1;
  *(*v1 + 440) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  sub_2407D9440(v3, &qword_27E506D00, &unk_2408D7FE0);
  if (v0)
  {
    v5 = sub_2408352C4;
  }

  else
  {
    v5 = sub_240835064;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_240835064()
{
  v1 = v0[55];
  v12 = IdMSAccount.SRPResults.into()();
  v2 = v0[53];
  v3 = v0[38];
  v4 = v0[27];
  v5 = v0[24];
  v6 = v0[25];
  v7 = v0[22];
  v8 = v0[23];
  (*(v0[16] + 8))(v0[17], v0[15]);
  if (v1)
  {
    sub_24080F564(v2, 0);
    v3(v4, v6);
    (*(v8 + 8))(v5, v7);

    v9 = v0[1];

    return v9();
  }

  else
  {
    *(v12 + OBJC_IVAR____TtC18AppleIDSetupDaemon20AuthenticationReport_originalReport) = v2;

    v3(v4, v6);
    (*(v8 + 8))(v5, v7);

    v11 = v0[1];

    return v11(v12);
  }
}

uint64_t sub_2408352C4()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 216);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  sub_24080F564(*(v0 + 424), 0);
  v1(v2, v3);
  (*(v6 + 8))(v4, v5);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2408353FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_2408D3970();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_2408D38D0();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24083551C, v3, 0);
}

uint64_t sub_24083551C(uint64_t a1)
{
  v29 = v1;
  v3 = v1[10];
  v2 = v1[11];
  v4 = v1[9];
  sub_2408D38F0();
  v5 = sub_2408D3870();
  (*(v3 + 8))(v2, v4);
  if ((v5 & 1) == 0)
  {
    return sub_2408D5190();
  }

  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v7 = v1[7];
  v6 = v1[8];
  v8 = v1[6];
  v9 = v1[3];
  v10 = sub_2408D4B20();
  __swift_project_value_buffer(v10, qword_27E506C48);
  (*(v7 + 16))(v6, v9, v8);
  v11 = sub_2408D4B10();
  v12 = sub_2408D4F10();
  v13 = os_log_type_enabled(v11, v12);
  v15 = v1[7];
  v14 = v1[8];
  v16 = v1[6];
  if (v13)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28 = v18;
    *v17 = 136315138;
    sub_2408763D8(&qword_28130F418, 255, MEMORY[0x277CED3F8], MEMORY[0x277CED410]);
    v19 = sub_2408D5220();
    v21 = v20;
    (*(v15 + 8))(v14, v16);
    v22 = sub_2408CC504(v19, v21, &v28);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_2407CF000, v11, v12, "Performing proxied auth to challenge the independent: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    MEMORY[0x245CC9F60](v18, -1, -1);
    MEMORY[0x245CC9F60](v17, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v14, v16);
  }

  v24 = swift_task_alloc();
  v1[12] = v24;
  *v24 = v1;
  v24[1] = sub_2407EC61C;
  v25 = v1[4];
  v27 = v1[2];
  v26 = v1[3];

  return sub_24083168C(v27, v26, v25);
}

uint64_t sub_24083584C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_2408D4500();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24083591C, v3, 0);
}

uint64_t sub_24083591C()
{
  v32 = v0;
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[3];
  v5 = sub_2408D4B20();
  __swift_project_value_buffer(v5, qword_27E506C48);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_2408D4B10();
  v8 = sub_2408D4F10();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[9];
  if (v9)
  {
    v11 = v0[7];
    v12 = v0[8];
    v13 = v0[6];
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v30;
    *v14 = 136315138;
    v6(v12, v10, v13);
    v15 = sub_2408D4D40();
    v17 = v16;
    (*(v11 + 8))(v10, v13);
    v18 = sub_2408CC504(v15, v17, &v31);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_2407CF000, v7, v8, "Received authentication command: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    MEMORY[0x245CC9F60](v30, -1, -1);
    MEMORY[0x245CC9F60](v14, -1, -1);
  }

  else
  {
    v19 = v0[6];
    v20 = v0[7];

    (*(v20 + 8))(v10, v19);
  }

  v22 = v0[4];
  v21 = v0[5];
  v23 = v0[3];
  v24 = sub_2407D917C(&qword_27E507500, &qword_27E507460, &unk_2408D7F00, &unk_2408D6C34);
  v25 = swift_task_alloc();
  v0[10] = v25;
  v25[2] = v23;
  v25[3] = v21;
  v25[4] = v22;
  v26 = swift_task_alloc();
  v0[11] = v26;
  v27 = sub_2408D4530();
  *v26 = v0;
  v26[1] = sub_240835C14;
  v28 = v0[2];

  return MEMORY[0x2822008A0](v28, v21, v24, 0xD000000000000010, 0x80000002408DADF0, sub_240875398, v25, v27);
}

uint64_t sub_240835C14()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {
    v3 = v2[5];

    return MEMORY[0x2822009F8](sub_240876440, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_240835D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v29 = a2;
  v5 = sub_2408D4500();
  v26 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v27 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507508, &qword_2408D80E0);
  v25 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - v14;
  v28 = &v24 - v14;
  v16 = sub_2408D4E60();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v9 + 16))(v12, a1, v8);
  (*(v6 + 16))(&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v29, v5);
  v17 = sub_2407D917C(&qword_27E507500, &qword_27E507460, &unk_2408D7F00, &unk_2408D6C34);
  v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = (v10 + *(v6 + 80) + v18) & ~*(v6 + 80);
  v20 = (v7 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v22 = v30;
  *(v21 + 16) = v30;
  *(v21 + 24) = v17;
  (*(v9 + 32))(v21 + v18, v12, v25);
  (*(v6 + 32))(v21 + v19, v27, v26);
  *(v21 + v20) = v22;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v31;
  swift_retain_n();

  sub_24083AB60(0, 0, v28, &unk_2408D80F0, v21);
}

uint64_t sub_240836098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[30] = a6;
  v7[31] = a7;
  v7[28] = a4;
  v7[29] = a5;
  v7[32] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506CF0, &qword_2408D6C68);
  v7[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506CF8, &unk_2408D6C70);
  v7[34] = swift_task_alloc();
  sub_2408D4530();
  v7[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5071D0, &unk_2408D9C70);
  v7[36] = swift_task_alloc();
  v9 = sub_2408D3770();
  v7[37] = v9;
  v7[38] = *(v9 - 8);
  v7[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507230, &unk_2408D7680);
  v7[40] = swift_task_alloc();
  v10 = sub_2408D4570();
  v7[41] = v10;
  v7[42] = *(v10 - 8);
  v7[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A18, &qword_2408D67E8);
  v7[44] = swift_task_alloc();
  v11 = sub_2408D3490();
  v7[45] = v11;
  v7[46] = *(v11 - 8);
  v7[47] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506A20, &unk_2408D67F0);
  v7[48] = swift_task_alloc();
  v12 = sub_2408D4500();
  v7[49] = v12;
  v13 = *(v12 - 8);
  v7[50] = v13;
  v7[51] = *(v13 + 64);
  v7[52] = swift_task_alloc();
  v7[53] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507F00, &qword_2408D6D50);
  v7[54] = swift_task_alloc();
  v14 = sub_2408D3630();
  v7[55] = v14;
  v7[56] = *(v14 - 8);
  v7[57] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506DA8, &qword_2408D8100);
  v7[58] = swift_task_alloc();
  v7[59] = swift_task_alloc();
  v7[60] = swift_task_alloc();
  v15 = sub_2408D4660();
  v7[61] = v15;
  v7[62] = *(v15 - 8);
  v7[63] = swift_task_alloc();
  v7[64] = swift_task_alloc();
  v16 = sub_2408D38D0();
  v7[65] = v16;
  v7[66] = *(v16 - 8);
  v7[67] = swift_task_alloc();
  v7[68] = swift_task_alloc();
  v7[69] = swift_task_alloc();
  v7[70] = swift_task_alloc();
  v7[71] = swift_task_alloc();
  v17 = sub_2408D3970();
  v7[72] = v17;
  v7[73] = *(v17 - 8);
  v7[74] = swift_task_alloc();
  v7[75] = swift_task_alloc();
  v7[76] = swift_task_alloc();
  v7[77] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507510, &qword_2408D8108);
  v7[78] = swift_task_alloc();
  v7[79] = swift_task_alloc();
  v7[80] = swift_task_alloc();
  v7[81] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408366BC, a6, 0);
}

uint64_t sub_2408366BC()
{
  v1 = v0[81];
  v2 = v0[77];
  v3 = v0[73];
  v71 = v0[71];
  v72 = v0[72];
  v4 = v0[66];
  v73 = v0[65];
  v5 = v0[28];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507508, &qword_2408D80E0);
  v0[82] = v6;
  v7 = *(v6 - 8);
  v0[83] = v7;
  (*(v7 + 16))(v1, v5, v6);
  v69 = v7;
  v8 = *(v7 + 56);
  v0[84] = v8;
  v0[85] = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v70 = v6;
  v68 = v8;
  v8(v1, 0, 1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507518, &qword_2408D8110);
  v9 = swift_allocObject();
  v0[86] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507520, &qword_2408D8118);
  v10 = swift_allocObject();
  *(v10 + ((*(*v10 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_2407EEE04(v1, v10 + *(*v10 + *MEMORY[0x277D841D0] + 16), &qword_27E507510, &qword_2408D8108);
  sub_2407D9440(v1, &qword_27E507510, &qword_2408D8108);
  v75 = v9;
  *(v9 + 16) = v10;
  sub_2408D44F0();
  sub_2408D38F0();
  v11 = *(v3 + 8);
  v0[87] = v11;
  v0[88] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v2, v72);
  v12 = sub_2408D38B0();
  v14 = v13;
  v15 = *(v4 + 8);
  v0[89] = v15;
  v0[90] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v71, v73);
  if (!v12 && v14 == 0xE000000000000000)
  {

LABEL_5:
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v17 = sub_2408D4B20();
    __swift_project_value_buffer(v17, qword_27E506C48);
    v18 = sub_2408D4B10();
    v19 = sub_2408D4F10();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2407CF000, v18, v19, "Marked as terminal auth, finishing auth stream continuation early", v20, 2u);
      MEMORY[0x245CC9F60](v20, -1, -1);
    }

    v22 = v0[59];
    v21 = v0[60];
    v23 = v0[58];
    v24 = v0[30];

    v25 = *(*v24 + 208);
    swift_beginAccess();
    sub_2407EEE04(v24 + v25, v21, &qword_27E506DA8, &qword_2408D8100);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506CE8, qword_2408D6B70);
    v27 = *(v26 - 8);
    (*(v27 + 56))(v22, 1, 1, v26);
    swift_beginAccess();
    sub_2407EEE6C(v22, v24 + v25);
    swift_endAccess();
    sub_2407EEE04(v21, v23, &qword_27E506DA8, &qword_2408D8100);
    v28 = (*(v27 + 48))(v23, 1, v26);
    v29 = v0[60];
    v30 = v0[58];
    if (v28 == 1)
    {
      sub_2407D9440(v0[60], &qword_27E506DA8, &qword_2408D8100);
      sub_2407D9440(v30, &qword_27E506DA8, &qword_2408D8100);
    }

    else
    {
      v0[27] = 0;
      sub_2408D4E90();
      sub_2407D9440(v29, &qword_27E506DA8, &qword_2408D8100);
      (*(v27 + 8))(v30, v26);
    }

    v31 = v0[80];
    v32 = *(v75 + 16);
    v33 = *(*v32 + *MEMORY[0x277D841D0] + 16);
    v34 = (*(*v32 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v32 + v34));
    sub_24080F060(v32 + v33, v31, &qword_27E507510, &qword_2408D8108);
    v68(v32 + v33, 1, 1, v70);
    os_unfair_lock_unlock((v32 + v34));

    v35 = (*(v69 + 48))(v31, 1, v70);
    v36 = v0[80];
    if (v35 != 1)
    {
      v37 = sub_2408D3500();
      sub_2408763D8(qword_27E506DC8, 255, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
      v38 = swift_allocError();
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277CED270], v37);
      v0[26] = v38;
      sub_2408D4E10();

      (*(v69 + 8))(v36, v70);
      goto LABEL_16;
    }

LABEL_14:
    sub_2407D9440(v36, &qword_27E507510, &qword_2408D8108);
LABEL_16:

    v40 = v0[1];

    return v40();
  }

  v16 = sub_2408D5240();

  if (v16)
  {
    goto LABEL_5;
  }

  v42 = v0[30];
  v43 = *(v42 + 248);
  v0[91] = v43;
  if (!v43)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
    sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0, &unk_2408D6E90);
    v46 = swift_allocError();
    *v47 = 2;
    swift_willThrow();
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v48 = sub_2408D4B20();
    __swift_project_value_buffer(v48, qword_27E506C48);
    v49 = v46;
    v50 = sub_2408D4B10();
    v51 = sub_2408D4F20();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 138412290;
      v54 = v46;
      v55 = _swift_stdlib_bridgeErrorToNSError();
      *(v52 + 4) = v55;
      *v53 = v55;
      _os_log_impl(&dword_2407CF000, v50, v51, "Caught Auth error: %@", v52, 0xCu);
      sub_2407D9440(v53, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v53, -1, -1);
      MEMORY[0x245CC9F60](v52, -1, -1);
    }

    v56 = v0[86];
    v57 = v0[84];
    v58 = v0[83];
    v59 = v0[82];
    v60 = v0[78];

    v61 = *(v56 + 16);
    v62 = *(*v61 + *MEMORY[0x277D841D0] + 16);
    v63 = (*(*v61 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v61 + v63));
    sub_24080F060(v61 + v62, v60, &qword_27E507510, &qword_2408D8108);
    v57(v61 + v62, 1, 1, v59);
    os_unfair_lock_unlock((v61 + v63));

    if ((*(v58 + 48))(v60, 1, v59) != 1)
    {
      v64 = v0[83];
      v65 = v0[82];
      v66 = v0[78];
      v0[24] = v46;
      v67 = v46;
      sub_2408D4E10();

      (*(v64 + 8))(v66, v65);
      goto LABEL_16;
    }

    v36 = v0[78];

    goto LABEL_14;
  }

  v44 = swift_allocObject();
  v0[92] = v44;
  *(v44 + 16) = v42;
  *(v44 + 24) = v9;
  v74 = (*MEMORY[0x277CED880] + MEMORY[0x277CED880]);

  v45 = swift_task_alloc();
  v0[93] = v45;
  *v45 = v0;
  v45[1] = sub_240837318;

  return v74(v0 + 2, sub_240875548, v44);
}

uint64_t sub_240837318()
{
  v1 = *(*v0 + 240);

  return MEMORY[0x2822009F8](sub_240837468, v1, 0);
}

uint64_t sub_240837468()
{
  v1 = *(v0[30] + 248);
  v0[94] = v1;
  if (v1)
  {
    v33 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);

    v2 = swift_task_alloc();
    v0[95] = v2;
    *v2 = v0;
    v2[1] = sub_240837A94;
    v3 = v0[57];

    return v33(v3);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
    sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0, &unk_2408D6E90);
    v5 = swift_allocError();
    *v6 = 2;
    swift_willThrow();
    v7 = v0[5];
    v8 = __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
    v9 = *(v7 - 8);
    v10 = swift_task_alloc();
    (*(v9 + 16))(v10, v8, v7);
    sub_2408D4670();

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v11 = sub_2408D4B20();
    __swift_project_value_buffer(v11, qword_27E506C48);
    v12 = v5;
    v13 = sub_2408D4B10();
    v14 = sub_2408D4F20();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = v5;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_2407CF000, v13, v14, "Caught Auth error: %@", v15, 0xCu);
      sub_2407D9440(v16, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v16, -1, -1);
      MEMORY[0x245CC9F60](v15, -1, -1);
    }

    v19 = v0[86];
    v20 = v0[84];
    v21 = v0[83];
    v22 = v0[82];
    v23 = v0[78];

    v24 = *(v19 + 16);
    v25 = *(*v24 + *MEMORY[0x277D841D0] + 16);
    v26 = (*(*v24 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v24 + v26));
    sub_24080F060(v24 + v25, v23, &qword_27E507510, &qword_2408D8108);
    v20(v24 + v25, 1, 1, v22);
    os_unfair_lock_unlock((v24 + v26));

    if ((*(v21 + 48))(v23, 1, v22) == 1)
    {
      v27 = v0[78];

      sub_2407D9440(v27, &qword_27E507510, &qword_2408D8108);
    }

    else
    {
      v28 = v0[83];
      v29 = v0[82];
      v30 = v0[78];
      v0[24] = v5;
      v31 = v5;
      sub_2408D4E10();

      (*(v28 + 8))(v30, v29);
    }

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_240837A94()
{
  v1 = *(*v0 + 240);

  return MEMORY[0x2822009F8](sub_240837BC0, v1, 0);
}

uint64_t sub_240837BC0()
{
  v139 = v0;
  v1 = v0[66];
  v2 = v0[65];
  v4 = v0[56];
  v3 = v0[57];
  v6 = v0[54];
  v5 = v0[55];
  sub_2408D3520();
  (*(v4 + 8))(v3, v5);
  sub_2408D45D0();
  if ((*(v1 + 48))(v6, 1, v2) == 1)
  {
    sub_2407D9440(v0[54], &qword_27E507F00, &qword_2408D6D50);
    goto LABEL_10;
  }

  v7 = v0[87];
  v8 = v0[76];
  v9 = v0[72];
  (*(v0[66] + 32))(v0[70], v0[54], v0[65]);
  sub_2408D44F0();
  v10 = sub_2408D3960();
  v7(v8, v9);
  LOBYTE(v8) = sub_2408764B4(*MEMORY[0x277CED1A0], v10);

  v11 = v0[89];
  if ((v8 & 1) == 0)
  {
    v11(v0[70], v0[65]);
    goto LABEL_10;
  }

  v12 = v0[87];
  v13 = v0[75];
  v14 = v0[72];
  v15 = v0[69];
  v16 = v0[65];
  sub_2408D44F0();
  sub_2408D38F0();
  v12(v13, v14);
  v17 = sub_2408D38B0();
  v19 = v18;
  v11(v15, v16);
  if (v17 == sub_2408D38B0() && v19 == v20)
  {

LABEL_9:
    (v0[89])(v0[70], v0[65]);
    goto LABEL_10;
  }

  v21 = sub_2408D5240();

  if (v21)
  {
    goto LABEL_9;
  }

  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v91 = v0[70];
  v92 = v0[68];
  v93 = v0[66];
  v94 = v0[65];
  v95 = v0[53];
  v96 = v0[49];
  v97 = v0[50];
  v98 = v0[29];
  v99 = sub_2408D4B20();
  __swift_project_value_buffer(v99, qword_27E506C48);
  (*(v93 + 16))(v92, v91, v94);
  (*(v97 + 16))(v95, v98, v96);
  v100 = sub_2408D4B10();
  v101 = sub_2408D4F30();
  v102 = os_log_type_enabled(v100, v101);
  v103 = v0[89];
  if (v102)
  {
    v126 = v0[87];
    v132 = v100;
    v104 = v0[76];
    v125 = v0[72];
    v137 = v0[70];
    v136 = v101;
    v105 = v0[68];
    v106 = v0[67];
    v107 = v0[65];
    v124 = v0[53];
    v129 = v0[50];
    v131 = v0[49];
    v108 = swift_slowAlloc();
    v134 = swift_slowAlloc();
    v138[0] = v134;
    *v108 = 136315394;
    v109 = sub_2408D38B0();
    v111 = v110;
    v103(v105, v107);
    v112 = sub_2408CC504(v109, v111, v138);

    *(v108 + 4) = v112;
    *(v108 + 12) = 2080;
    sub_2408D44F0();
    sub_2408D38F0();
    v126(v104, v125);
    v113 = sub_2408D38B0();
    v115 = v114;
    v103(v106, v107);
    (*(v129 + 8))(v124, v131);
    v116 = sub_2408CC504(v113, v115, v138);

    *(v108 + 14) = v116;
    _os_log_impl(&dword_2407CF000, v132, v136, "CandidateAccountID mismatch, expected: %s, actual: %s", v108, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC9F60](v134, -1, -1);
    MEMORY[0x245CC9F60](v108, -1, -1);

    v103(v137, v107);
  }

  else
  {
    v117 = v0[70];
    v118 = v0[68];
    v119 = v0[65];
    v120 = v0[53];
    v121 = v0[49];
    v122 = v0[50];

    (*(v122 + 8))(v120, v121);
    v103(v118, v119);
    v103(v117, v119);
  }

LABEL_10:
  v22 = v0[73];
  v23 = v0[72];
  v24 = v0[47];
  v25 = v0[48];
  v26 = v0[45];
  v27 = v0[46];
  v28 = v0[30];
  sub_2408D44F0();
  (*(v22 + 56))(v25, 0, 1, v23);
  sub_2408D4640();
  v135 = v28;
  __swift_project_boxed_opaque_existential_1((v28 + 144), *(v28 + 168));
  v133 = *MEMORY[0x277CED208];
  v130 = *(v27 + 104);
  v130(v24);
  v29 = sub_2408D4770();
  v128 = *(v27 + 8);
  v128(v24, v26);
  v30 = MEMORY[0x277CEDC38];
  if (v29)
  {
    v31 = v0[87];
    v32 = v0[74];
    v33 = v0[72];
    v34 = v0[44];
    v35 = MEMORY[0x277CEDC38];
    sub_2408D44F0();
    sub_2408D37A0();
    v31(v32, v33);
    v36 = sub_2408D3720();
    v37 = (*(*(v36 - 8) + 48))(v34, 1, v36);
    sub_2407D9440(v34, &qword_27E506A18, &qword_2408D67E8);
    if (v37 == 1)
    {
      v30 = v35;
    }

    else
    {
      v30 = MEMORY[0x277CEDC40];
    }
  }

  v38 = v0[51];
  v39 = v0[52];
  v41 = v0[49];
  v40 = v0[50];
  v42 = v0[47];
  v127 = v0[45];
  v43 = v0[31];
  v44 = v0[29];
  (*(v0[42] + 104))(v0[43], *v30, v0[41]);
  sub_2408D45C0();
  (*(v40 + 16))(v39, v44, v41);
  v45 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v46 = swift_allocObject();
  (*(v40 + 32))(v46 + v45, v39, v41);
  *(v46 + ((v38 + v45 + 7) & 0xFFFFFFFFFFFFFFF8)) = v43;

  sub_2408D4590();
  __swift_project_boxed_opaque_existential_1((v135 + 144), *(v135 + 168));
  (v130)(v42, v133, v127);
  v47 = sub_2408D4770();
  v128(v42, v127);
  if (v47)
  {
    v48 = *(v0[30] + 248);
    v0[96] = v48;
    v49 = v0[64];
    v50 = v0[61];
    v51 = v0[62];
    if (v48)
    {
      v52 = v0[40];
      (*(v51 + 16))(v52, v0[64], v0[61]);
      (*(v51 + 56))(v52, 0, 1, v50);

      v53 = swift_task_alloc();
      v0[97] = v53;
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A70, qword_2408D75E0);
      v0[98] = v54;
      v55 = sub_2407D917C(&qword_27E506A78, &qword_27E506A70, qword_2408D75E0, MEMORY[0x277CED890]);
      *v53 = v0;
      v53[1] = sub_240838B48;
      v56 = v0[61];
      v57 = v0[40];

      return MEMORY[0x28213FC20](v57, sub_2407EE4C0, 0, sub_2407EE4E4, 0, v54, v56, v55);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
      sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0, &unk_2408D6E90);
      v63 = swift_allocError();
      *v64 = 2;
      swift_willThrow();
      (*(v51 + 8))(v49, v50);
      v65 = v0[5];
      v66 = __swift_project_boxed_opaque_existential_1(v0 + 2, v65);
      v67 = *(v65 - 8);
      v68 = swift_task_alloc();
      (*(v67 + 16))(v68, v66, v65);
      sub_2408D4670();

      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
      if (qword_27E506918 != -1)
      {
        swift_once();
      }

      v69 = sub_2408D4B20();
      __swift_project_value_buffer(v69, qword_27E506C48);
      v70 = v63;
      v71 = sub_2408D4B10();
      v72 = sub_2408D4F20();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        *v73 = 138412290;
        v75 = v63;
        v76 = _swift_stdlib_bridgeErrorToNSError();
        *(v73 + 4) = v76;
        *v74 = v76;
        _os_log_impl(&dword_2407CF000, v71, v72, "Caught Auth error: %@", v73, 0xCu);
        sub_2407D9440(v74, &qword_27E506AB0, &unk_2408D6830);
        MEMORY[0x245CC9F60](v74, -1, -1);
        MEMORY[0x245CC9F60](v73, -1, -1);
      }

      v77 = v0[86];
      v78 = v0[84];
      v79 = v0[83];
      v80 = v0[82];
      v81 = v0[78];

      v82 = *(v77 + 16);
      v83 = *(*v82 + *MEMORY[0x277D841D0] + 16);
      v84 = (*(*v82 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v82 + v84));
      sub_24080F060(v82 + v83, v81, &qword_27E507510, &qword_2408D8108);
      v78(v82 + v83, 1, 1, v80);
      os_unfair_lock_unlock((v82 + v84));

      if ((*(v79 + 48))(v81, 1, v80) == 1)
      {
        v85 = v0[78];

        sub_2407D9440(v85, &qword_27E507510, &qword_2408D8108);
      }

      else
      {
        v86 = v0[83];
        v87 = v0[82];
        v88 = v0[78];
        v0[24] = v63;
        v89 = v63;
        sub_2408D4E10();

        (*(v86 + 8))(v88, v87);
      }

      v90 = v0[1];

      return v90();
    }
  }

  else
  {
    v58 = v0[63];
    v59 = v0[64];
    v60 = v0[61];
    v61 = v0[62];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507528, &qword_2408D8120);
    (*(v61 + 16))(v58, v59, v60);
    sub_2408D3CC0();
    sub_2407D917C(&qword_27E507530, &qword_27E507528, &qword_2408D8120, MEMORY[0x277CED548]);
    v62 = sub_2408D4680();

    v0[102] = v62;
    v0[103] = *(v0[30] + 112);

    return MEMORY[0x2822009F8](sub_24083934C, 0, 0);
  }
}

uint64_t sub_240838B48(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 792) = v1;

  if (v1)
  {
    v5 = v4[40];
    v6 = v4[30];
    sub_2407D9440(v5, &qword_27E507230, &unk_2408D7680);

    v7 = sub_240838E24;
    v8 = v6;
    v9 = 0;
  }

  else
  {
    v4[100] = a1;
    sub_2407D917C(&qword_27E506A80, &qword_27E506A70, qword_2408D75E0, MEMORY[0x277CED898]);
    v10 = sub_2408D4E00();
    v12 = v11;
    v7 = sub_240838CEC;
    v8 = v10;
    v9 = v12;
  }

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_240838CEC()
{
  v1 = v0[40];
  v2 = v0[30];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A88, &qword_2408D6820);
  sub_2407D917C(&qword_27E506A90, &qword_27E506A88, &qword_2408D6820, MEMORY[0x277CED540]);
  v0[101] = sub_2408D4680();

  sub_2407D9440(v1, &qword_27E507230, &unk_2408D7680);

  return MEMORY[0x2822009F8](sub_240838DF4, v2, 0);
}

uint64_t sub_240838DF4()
{
  v0[102] = v0[101];
  v0[103] = *(v0[30] + 112);
  return MEMORY[0x2822009F8](sub_24083934C, 0, 0);
}

uint64_t sub_240838E24()
{
  (*(v0[62] + 8))(v0[64], v0[61]);
  v1 = v0[5];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  sub_2408D4670();

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v5 = v0[99];
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v6 = sub_2408D4B20();
  __swift_project_value_buffer(v6, qword_27E506C48);
  v7 = v5;
  v8 = sub_2408D4B10();
  v9 = sub_2408D4F20();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v5;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_2407CF000, v8, v9, "Caught Auth error: %@", v10, 0xCu);
    sub_2407D9440(v11, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v11, -1, -1);
    MEMORY[0x245CC9F60](v10, -1, -1);
  }

  v14 = v0[86];
  v15 = v0[84];
  v16 = v0[83];
  v17 = v0[82];
  v18 = v0[78];

  v19 = *(v14 + 16);
  v20 = *(*v19 + *MEMORY[0x277D841D0] + 16);
  v21 = (*(*v19 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v19 + v21));
  sub_24080F060(v19 + v20, v18, &qword_27E507510, &qword_2408D8108);
  v15(v19 + v20, 1, 1, v17);
  os_unfair_lock_unlock((v19 + v21));

  if ((*(v16 + 48))(v18, 1, v17) == 1)
  {
    v22 = v0[78];

    sub_2407D9440(v22, &qword_27E507510, &qword_2408D8108);
  }

  else
  {
    v23 = v0[83];
    v24 = v0[82];
    v25 = v0[78];
    v0[24] = v5;
    v26 = v5;
    sub_2408D4E10();

    (*(v23 + 8))(v25, v24);
  }

  v27 = v0[1];

  return v27();
}

uint64_t sub_24083934C()
{
  v1 = swift_task_alloc();
  v0[52].i64[0] = v1;
  v1[1] = vextq_s8(v0[51], v0[51], 8uLL);
  v2 = swift_task_alloc();
  v0[52].i64[1] = v2;
  v3 = type metadata accessor for AuthenticationReport(0);
  *v2 = v0;
  v2[1] = sub_240839424;

  return MEMORY[0x2821400E8](&v0[11], &unk_2408D8128, v1, v3);
}

uint64_t sub_240839424()
{

  return MEMORY[0x2822009F8](sub_24083953C, 0, 0);
}

uint64_t sub_24083953C()
{
  v1 = *(v0 + 176);
  *(v0 + 848) = v1;
  if (*(v0 + 184))
  {
    v2 = *(v0 + 240);
    *(v0 + 200) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
    swift_willThrowTypedImpl();
    v3 = sub_240839E5C;
    v4 = v2;
  }

  else
  {
    v4 = *(v0 + 240);
    v3 = sub_2408395F4;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_2408395F4(uint64_t a1)
{
  v48 = v1;
  v40 = v1[89];
  v2 = v1[87];
  v3 = v1[76];
  v4 = v1[72];
  v5 = v1[67];
  v37 = v1[65];
  v7 = v1[38];
  v6 = v1[39];
  v42 = v1[36];
  v44 = v1[37];
  sub_2408D44F0();
  sub_2408D38F0();
  v2(v3, v4);
  sub_2408CAC38(v5);
  v40(v5, v37);
  sub_2408D44F0();
  sub_2408D38F0();
  v2(v3, v4);
  v41 = *(v7 + 16);
  v41(v42, v6, v44);
  (*(v7 + 56))(v42, 0, 1, v44);
  swift_beginAccess();
  sub_2408C6DC8(v42, v5);
  swift_endAccess();
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v8 = sub_2408D4B20();
  __swift_project_value_buffer(v8, qword_27E506C48);
  v9 = sub_2408D4B10();
  v10 = sub_2408D4F20();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v47 = v12;
    *v11 = 136315138;
    swift_beginAccess();
    sub_2408763D8(&qword_27E507558, 255, MEMORY[0x277CED3A8], MEMORY[0x277CED3C0]);
    v13 = sub_2408D5220();
    v15 = sub_2408CC504(v13, v14, &v47);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_2407CF000, v9, v10, "Produced SRP results with archived data: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x245CC9F60](v12, -1, -1);
    MEMORY[0x245CC9F60](v11, -1, -1);
  }

  v16 = v1[86];
  v17 = v1[84];
  v18 = v1[83];
  v19 = v1[82];
  v20 = v1[79];
  swift_beginAccess();
  sub_2408D3740();
  swift_endAccess();
  v21 = *(v16 + 16);
  v22 = *(*v21 + *MEMORY[0x277D841D0] + 16);
  v23 = (*(*v21 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v21 + v23));
  sub_24080F060(v21 + v22, v20, &qword_27E507510, &qword_2408D8108);
  v17(v21 + v22, 1, 1, v19);
  os_unfair_lock_unlock((v21 + v23));

  v24 = (*(v18 + 48))(v20, 1, v19);
  v25 = v1[106];
  if (v24 == 1)
  {
    v26 = v1[79];
    (*(v1[62] + 8))(v1[64], v1[61]);
    sub_24080F564(v25, 0);

    sub_2407D9440(v26, &qword_27E507510, &qword_2408D8108);
  }

  else
  {
    v46 = v1[83];
    v38 = v1[79];
    v39 = v1[82];
    v27 = v1[62];
    v43 = v1[61];
    v45 = v1[64];
    v28 = v1[33];
    v41(v28, v1[39], v1[37]);
    swift_storeEnumTagMultiPayload();
    v29 = MEMORY[0x277CED3A8];
    sub_2408763D8(&qword_27E507538, 255, MEMORY[0x277CED3A8], MEMORY[0x277CED3B8]);
    sub_2408763D8(&qword_27E507540, 255, v29, MEMORY[0x277CED3B0]);
    v30 = MEMORY[0x277CED418];
    sub_2408763D8(&qword_27E507548, 255, MEMORY[0x277CED418], MEMORY[0x277CED428]);
    sub_2408763D8(&qword_27E507550, 255, v30, MEMORY[0x277CED420]);
    sub_2408D5330();
    sub_2407D9440(v28, &qword_27E506CF0, &qword_2408D6C68);
    sub_2408D4520();
    sub_2408D4E20();

    sub_24080F564(v25, 0);
    (*(v27 + 8))(v45, v43);
    (*(v46 + 8))(v38, v39);
  }

  (*(v1[38] + 8))(v1[39], v1[37]);
  v31 = v1[5];
  v32 = __swift_project_boxed_opaque_existential_1(v1 + 2, v31);
  v33 = *(v31 - 8);
  v34 = swift_task_alloc();
  (*(v33 + 16))(v34, v32, v31);
  sub_2408D4670();

  __swift_destroy_boxed_opaque_existential_0Tm(v1 + 2);

  v35 = v1[1];

  return v35();
}

uint64_t sub_240839E5C()
{
  v1 = v0[64];
  v2 = v0[61];
  v3 = v0[62];

  (*(v3 + 8))(v1, v2);
  v4 = v0[5];
  v5 = __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  v6 = *(v4 - 8);
  v7 = swift_task_alloc();
  (*(v6 + 16))(v7, v5, v4);
  sub_2408D4670();

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v8 = v0[106];
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v9 = sub_2408D4B20();
  __swift_project_value_buffer(v9, qword_27E506C48);
  v10 = v8;
  v11 = sub_2408D4B10();
  v12 = sub_2408D4F20();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = v8;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_2407CF000, v11, v12, "Caught Auth error: %@", v13, 0xCu);
    sub_2407D9440(v14, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v14, -1, -1);
    MEMORY[0x245CC9F60](v13, -1, -1);
  }

  v17 = v0[86];
  v18 = v0[84];
  v19 = v0[83];
  v20 = v0[82];
  v21 = v0[78];

  v22 = *(v17 + 16);
  v23 = *(*v22 + *MEMORY[0x277D841D0] + 16);
  v24 = (*(*v22 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v22 + v24));
  sub_24080F060(v22 + v23, v21, &qword_27E507510, &qword_2408D8108);
  v18(v22 + v23, 1, 1, v20);
  os_unfair_lock_unlock((v22 + v24));

  if ((*(v19 + 48))(v21, 1, v20) == 1)
  {
    v25 = v0[78];

    sub_2407D9440(v25, &qword_27E507510, &qword_2408D8108);
  }

  else
  {
    v26 = v0[83];
    v27 = v0[82];
    v28 = v0[78];
    v0[24] = v8;
    v29 = v8;
    sub_2408D4E10();

    (*(v26 + 8))(v28, v27);
  }

  v30 = v0[1];

  return v30();
}

uint64_t sub_24083A394(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v63 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507510, &qword_2408D8108);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v56 - v7;
  v9 = sub_2408D35B0();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2408D3500();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v56 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v56 - v20;
  sub_2408D35C0();
  if ((*(v13 + 48))(v11, 6, v12))
  {
    return sub_240875C68(v11, MEMORY[0x277CED338]);
  }

  v60 = v16;
  v61 = v8;
  v59 = a3;
  (*(v13 + 32))(v21, v11, v12);
  (*(v13 + 104))(v19, *MEMORY[0x277CED270], v12);
  v23 = sub_2408D34F0();
  v24 = v19;
  v25 = *(v13 + 8);
  v25(v24, v12);
  if ((v23 & 1) == 0)
  {
    return (v25)(v21, v12);
  }

  v62 = v13 + 8;
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v26 = sub_2408D4B20();
  __swift_project_value_buffer(v26, qword_27E506C48);
  v27 = *(v13 + 16);
  v28 = v60;
  v27(v60, v21, v12);
  v29 = sub_2408D4B10();
  v30 = sub_2408D4F10();
  v31 = os_log_type_enabled(v29, v30);
  v58 = a1;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v57 = v25;
    v33 = v32;
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    sub_2408763D8(qword_27E506DC8, 255, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
    swift_allocError();
    v35 = v12;
    v36 = v21;
    v27(v37, v28, v35);
    v38 = _swift_stdlib_bridgeErrorToNSError();
    v57(v28, v35);
    *(v33 + 4) = v38;
    *v34 = v38;
    v21 = v36;
    v12 = v35;
    _os_log_impl(&dword_2407CF000, v29, v30, "User cancelled during authentication with error: %@", v33, 0xCu);
    sub_2407D9440(v34, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v34, -1, -1);
    v39 = v33;
    v25 = v57;
    MEMORY[0x245CC9F60](v39, -1, -1);
  }

  else
  {

    v25(v28, v12);
  }

  v40 = v59;
  swift_beginAccess();
  *(v40 + 120) = 0;

  sub_2408763D8(qword_27E506DC8, 255, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
  v41 = swift_allocError();
  v42 = v21;
  v27(v43, v21, v12);
  sub_24083B174(v41);

  v44 = *(v63 + 16);
  v45 = *(*v44 + *MEMORY[0x277D841D0] + 16);
  v46 = (*(*v44 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v44 + v46));
  v47 = v61;
  sub_24080F060(v44 + v45, v61, &qword_27E507510, &qword_2408D8108);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507508, &qword_2408D80E0);
  v49 = *(v48 - 8);
  (*(v49 + 56))(v44 + v45, 1, 1, v48);
  os_unfair_lock_unlock((v44 + v46));

  if ((*(v49 + 48))(v47, 1, v48) == 1)
  {
    sub_2407D9440(v47, &qword_27E507510, &qword_2408D8108);
  }

  else
  {
    v50 = sub_2408D41D0();
    sub_2408763D8(&qword_27E5074F8, 255, MEMORY[0x277CED7F0], MEMORY[0x277CED7F8]);
    v51 = swift_allocError();
    (*(*(v50 - 8) + 104))(v52, *MEMORY[0x277CED7D8], v50);
    v64 = v51;
    sub_2408D4E10();
    (*(v49 + 8))(v47, v48);
  }

  v53 = __swift_project_boxed_opaque_existential_1(v58, v58[3]);
  MEMORY[0x28223BE20](v53);
  (*(v55 + 16))(&v56 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2408D4670();
  return (v25)(v42, v12);
}

uint64_t sub_24083AB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2407EEE04(a3, v25 - v10, &unk_27E506BD0, &qword_2408D7AB0);
  v12 = sub_2408D4E60();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2407D9440(v11, &unk_27E506BD0, &qword_2408D7AB0);
  }

  else
  {
    sub_2408D4E50();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2408D4E00();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2408D4D50() + 32;
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

      sub_2407D9440(a3, &unk_27E506BD0, &qword_2408D7AB0);

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

  sub_2407D9440(a3, &unk_27E506BD0, &qword_2408D7AB0);
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

uint64_t sub_24083AE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2407EEE04(a3, v25 - v10, &unk_27E506BD0, &qword_2408D7AB0);
  v12 = sub_2408D4E60();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2407D9440(v11, &unk_27E506BD0, &qword_2408D7AB0);
  }

  else
  {
    sub_2408D4E50();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2408D4E00();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2408D4D50() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074B0, &unk_2408D7F70);
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

      sub_2407D9440(a3, &unk_27E506BD0, &qword_2408D7AB0);

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

  sub_2407D9440(a3, &unk_27E506BD0, &qword_2408D7AB0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074B0, &unk_2408D7F70);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_24083B174(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506DA8, &qword_2408D8100);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v22 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v22 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = v22 - v13;
  v15 = *(*v1 + 208);
  swift_beginAccess();
  sub_2407EEE04(v1 + v15, v14, &qword_27E506DA8, &qword_2408D8100);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506CE8, qword_2408D6B70);
  v17 = *(v16 - 8);
  (*(v17 + 56))(v12, 1, 1, v16);
  swift_beginAccess();
  sub_2407EEE6C(v12, v1 + v15);
  swift_endAccess();
  v18 = (v17 + 48);
  if (a1)
  {
    sub_2407EEE04(v14, v9, &qword_27E506DA8, &qword_2408D8100);
    if ((*v18)(v9, 1, v16) == 1)
    {
      sub_2407D9440(v14, &qword_27E506DA8, &qword_2408D8100);
      v19 = v9;
      return sub_2407D9440(v19, &qword_27E506DA8, &qword_2408D8100);
    }

    v22[0] = a1;
    v21 = a1;
    sub_2408D4E90();
    sub_2407D9440(v14, &qword_27E506DA8, &qword_2408D8100);
    return (*(v17 + 8))(v9, v16);
  }

  else
  {
    sub_2407EEE04(v14, v6, &qword_27E506DA8, &qword_2408D8100);
    if ((*v18)(v6, 1, v16) == 1)
    {
      sub_2407D9440(v14, &qword_27E506DA8, &qword_2408D8100);
      v19 = v6;
      return sub_2407D9440(v19, &qword_27E506DA8, &qword_2408D8100);
    }

    v22[0] = 0;
    sub_2408D4E90();
    sub_2407D9440(v14, &qword_27E506DA8, &qword_2408D8100);
    return (*(v17 + 8))(v6, v16);
  }
}

uint64_t sub_24083B498(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_2408D3980();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507600, &qword_2408D82D0);
  v3[9] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F38, &unk_2408D8150);
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v6 = sub_2408D3E40();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v7 = sub_2408D3E10();
  v3[18] = v7;
  v3[19] = *(v7 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v8 = sub_2408D38D0();
  v3[24] = v8;
  v3[25] = *(v8 - 8);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5071D0, &unk_2408D9C70);
  v3[28] = swift_task_alloc();
  v9 = sub_2408D3770();
  v3[29] = v9;
  v3[30] = *(v9 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506A20, &unk_2408D67F0);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v10 = sub_2408D3970();
  v3[35] = v10;
  v3[36] = *(v10 - 8);
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v11 = sub_2408D3C20();
  v3[39] = v11;
  v3[40] = *(v11 - 8);
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v12 = sub_2408D3EE0();
  v3[44] = v12;
  v3[45] = *(v12 - 8);
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24083B984, v2, 0);
}

uint64_t sub_24083B984()
{
  v1 = v0[47];
  v2 = v0[44];
  v3 = v0[45];
  v4 = *MEMORY[0x277CED640];
  v5 = *(v3 + 104);
  v0[48] = v5;
  v0[49] = (v3 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v5(v1, v4, v2);
  v9 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v6 = swift_task_alloc();
  v0[50] = v6;
  *v6 = v0;
  v6[1] = sub_24083BA60;
  v7 = v0[43];

  return v9(v7);
}

uint64_t sub_24083BA60()
{
  v1 = *(*v0 + 32);

  return MEMORY[0x2822009F8](sub_24083BB70, v1, 0);
}

uint64_t sub_24083BB70()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 312);
  v3 = *(v0 + 320);
  sub_2408D3A70();
  v5 = v4;
  v6 = *(v3 + 8);
  *(v0 + 408) = v6;
  *(v0 + 416) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  if (v5)
  {
    v8 = *(v0 + 368);
    v7 = *(v0 + 376);
    v9 = *(v0 + 352);
    v10 = *(v0 + 360);
    sub_2408D3ED0();
    (*(v10 + 40))(v7, v8, v9);
  }

  else
  {
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v11 = sub_2408D4B20();
    __swift_project_value_buffer(v11, qword_27E506C48);
    v12 = sub_2408D4B10();
    v13 = sub_2408D4F10();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2407CF000, v12, v13, "Found no server device model, defaulting to unknown", v14, 2u);
      MEMORY[0x245CC9F60](v14, -1, -1);
    }
  }

  v15 = *(v0 + 368);
  v16 = *(v0 + 352);
  v17 = *(v0 + 360);
  (*(v0 + 384))(v15, *MEMORY[0x277CED620], v16);
  sub_2408763D8(&qword_27E507608, 255, MEMORY[0x277CED648], MEMORY[0x277CED650]);
  v18 = sub_2408D4CF0();
  v19 = *(v17 + 8);
  *(v0 + 424) = v19;
  *(v0 + 432) = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v15, v16);
  if (v18 & 1) != 0 || (v20 = *(v0 + 368), v21 = *(v0 + 352), (*(v0 + 384))(v20, *MEMORY[0x277CED630], v21), v22 = sub_2408D4CF0(), v19(v20, v21), (v22))
  {
    (*(v0 + 424))(*(v0 + 376), *(v0 + 352));
    v27 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
    v23 = swift_task_alloc();
    *(v0 + 440) = v23;
    *v23 = v0;
    v23[1] = sub_24083BF04;

    return v27(nullsub_1, 0);
  }

  else
  {
    v28 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
    v25 = swift_task_alloc();
    *(v0 + 504) = v25;
    *v25 = v0;
    v25[1] = sub_24083D880;
    v26 = *(v0 + 328);

    return v28(v26);
  }
}

uint64_t sub_24083BF04()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
  }

  v7 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v4 = swift_task_alloc();
  *(v2 + 448) = v4;
  *v4 = v3;
  v4[1] = sub_24083C05C;
  v5 = *(v2 + 336);

  return v7(v5);
}

uint64_t sub_24083C05C()
{
  v1 = *(*v0 + 32);

  return MEMORY[0x2822009F8](sub_24083C16C, v1, 0);
}

uint64_t sub_24083C16C()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  v3 = *(v0 + 272);
  sub_2408D3BE0();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 272);
    v5 = &unk_27E506A20;
    v6 = &unk_2408D67F0;
LABEL_5:
    sub_2407D9440(v4, v5, v6);
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v11 = sub_2408D4B20();
    __swift_project_value_buffer(v11, qword_27E506C48);
    v12 = sub_2408D4B10();
    v13 = sub_2408D4F30();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2407CF000, v12, v13, "Expected nonnull account to be in authentication model during remote setup", v14, 2u);
      MEMORY[0x245CC9F60](v14, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
    sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0, &unk_2408D6E90);
    swift_allocError();
    *v15 = 0;
    swift_willThrow();
    goto LABEL_10;
  }

  v7 = *(v0 + 232);
  v8 = *(v0 + 240);
  v9 = *(v0 + 224);
  (*(*(v0 + 288) + 32))(*(v0 + 304), *(v0 + 272), *(v0 + 280));
  sub_2408D3A80();
  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
    v10 = *(v0 + 224);
    (*(*(v0 + 288) + 8))(*(v0 + 304), *(v0 + 280));
    v5 = &qword_27E5071D0;
    v6 = &unk_2408D9C70;
    v4 = v10;
    goto LABEL_5;
  }

  v18 = *(v0 + 32);
  (*(*(v0 + 240) + 32))(*(v0 + 256), *(v0 + 224), *(v0 + 232));
  v19 = *(v18 + 240);
  *(v0 + 456) = v19;
  if (v19)
  {

    sub_2408D38F0();
    v20 = swift_task_alloc();
    *(v0 + 464) = v20;
    *v20 = v0;
    v20[1] = sub_24083C824;
    v21 = *(v0 + 216);

    return sub_2407ED2BC(v21);
  }

  else
  {
    v23 = *(v0 + 248);
    v22 = *(v0 + 256);
    v24 = *(v0 + 232);
    v25 = *(v0 + 240);
    v26 = *(v0 + 32);
    (*(*(v0 + 288) + 16))(*(v0 + 296), *(v0 + 304), *(v0 + 280));
    (*(v25 + 16))(v23, v22, v24);
    sub_2408D3C00();
    sub_2408D3DD0();
    v27 = *(v26 + 240);
    *(v0 + 472) = v27;
    if (!v27)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
      sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0, &unk_2408D6E90);
      swift_allocError();
      *v33 = 0;
      swift_willThrow();
      v42 = *(v0 + 304);
      v34 = *(v0 + 288);
      v41 = *(v0 + 280);
      v35 = *(v0 + 256);
      v36 = *(v0 + 232);
      v37 = *(v0 + 240);
      v38 = *(v0 + 184);
      v40 = *(v0 + 144);
      v39 = *(v0 + 152);
      swift_willThrow();
      (*(v39 + 8))(v38, v40);
      (*(v37 + 8))(v35, v36);
      (*(v34 + 8))(v42, v41);
LABEL_10:
      (*(v0 + 408))(*(v0 + 336), *(v0 + 312));

      v16 = *(v0 + 8);

      return v16();
    }

    (*(*(v0 + 152) + 16))(*(v0 + 176), *(v0 + 184), *(v0 + 144));
    v43 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);

    v28 = swift_task_alloc();
    *(v0 + 480) = v28;
    v29 = sub_2408763D8(&qword_27E5075F8, 255, MEMORY[0x277CED608], MEMORY[0x277CED600]);
    *v28 = v0;
    v28[1] = sub_24083CDF4;
    v30 = *(v0 + 176);
    v31 = *(v0 + 144);
    v32 = *(v0 + 128);

    return v43(v32, v30, v31, v29);
  }
}

uint64_t sub_24083C824()
{
  v2 = *v1;

  v3 = v2[27];
  v4 = v2[25];
  v5 = v2[24];
  v6 = v2[4];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v7 = sub_240876420;
  }

  else
  {
    (*(v4 + 8))(v3, v5);

    v7 = sub_24083C9FC;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_24083C9FC()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 232);
  v4 = *(v0 + 240);
  v5 = *(v0 + 32);
  (*(*(v0 + 288) + 16))(*(v0 + 296), *(v0 + 304), *(v0 + 280));
  (*(v4 + 16))(v2, v1, v3);
  sub_2408D3C00();
  sub_2408D3DD0();
  v6 = *(v5 + 240);
  *(v0 + 472) = v6;
  if (v6)
  {
    (*(*(v0 + 152) + 16))(*(v0 + 176), *(v0 + 184), *(v0 + 144));
    v24 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);

    v7 = swift_task_alloc();
    *(v0 + 480) = v7;
    v8 = sub_2408763D8(&qword_27E5075F8, 255, MEMORY[0x277CED608], MEMORY[0x277CED600]);
    *v7 = v0;
    v7[1] = sub_24083CDF4;
    v9 = *(v0 + 176);
    v10 = *(v0 + 144);
    v11 = *(v0 + 128);

    return v24(v11, v9, v10, v8);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
    sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0, &unk_2408D6E90);
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    v23 = *(v0 + 304);
    v14 = *(v0 + 288);
    v22 = *(v0 + 280);
    v15 = *(v0 + 256);
    v16 = *(v0 + 232);
    v17 = *(v0 + 240);
    v18 = *(v0 + 184);
    v20 = *(v0 + 144);
    v19 = *(v0 + 152);
    swift_willThrow();
    (*(v19 + 8))(v18, v20);
    (*(v17 + 8))(v15, v16);
    (*(v14 + 8))(v23, v22);
    (*(v0 + 408))(*(v0 + 336), *(v0 + 312));

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_24083CDF4()
{
  v2 = *v1;
  *(*v1 + 488) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_24083D148;
  }

  else
  {
    v4 = sub_24083CF3C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24083CF3C()
{
  (*(v0[14] + 32))(v0[17], v0[16], v0[13]);
  v3 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
  v1 = swift_task_alloc();
  v0[62] = v1;
  *v1 = v0;
  v1[1] = sub_24083D010;

  return v3(sub_2407EE148, 0);
}

uint64_t sub_24083D010()
{
  v2 = *v1;

  v3 = *(v2 + 32);
  if (v0)
  {

    v4 = sub_240876450;
  }

  else
  {
    v4 = sub_24083D360;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24083D148(uint64_t a1)
{
  v12 = *(v1 + 304);
  v2 = *(v1 + 280);
  v3 = *(v1 + 288);
  v4 = *(v1 + 256);
  v5 = *(v1 + 232);
  v6 = *(v1 + 240);
  v7 = *(v1 + 184);
  v9 = *(v1 + 144);
  v8 = *(v1 + 152);
  swift_willThrow();
  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v12, v2);
  (*(v1 + 408))(*(v1 + 336), *(v1 + 312));

  v10 = *(v1 + 8);

  return v10();
}

void *sub_24083D360(uint64_t a1)
{
  v2 = v1[11];
  v3 = v1[6];
  sub_2408D38F0();
  v4 = sub_2408D3E20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F40, &qword_2408D72E0);
  result = sub_2408D51B0();
  v6 = 0;
  v7 = v4 + 64;
  v56 = v4;
  v8 = 1 << *(v4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v4 + 64);
  v11 = (v8 + 63) >> 6;
  v55 = (v2 + 8);
  v49 = (v3 + 32);
  v54 = result + 8;
  v57 = result;
  if (v10)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v58 = (v10 - 1) & v10;
LABEL_10:
      v15 = v12 | (v6 << 6);
      v16 = *(*(v56 + 48) + 8 * v15);
      (*(v2 + 16))(v1[12], *(v56 + 56) + *(v2 + 72) * v15, v1[10]);
      v17 = v16;
      sub_2408D4AD0();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v19 = v1[9];
      if (EnumCaseMultiPayload == 1)
      {
        v50 = v1[7];
        v53 = v17;
        v20 = v1[5];
        v21 = *v49;
        v51 = v1[10];
        v52 = v1[12];
        (*v49)(v50, v19, v20);
        sub_2408763D8(&qword_27E506D18, 255, MEMORY[0x277CED418], MEMORY[0x277CED430]);
        v22 = swift_allocError();
        v23 = v20;
        v17 = v53;
        v21(v24, v50, v23);
        (*v55)(v52, v51);
      }

      else
      {
        (*v55)(v1[12], v1[10]);
        v22 = *v19;
      }

      *(v54 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v57;
      *(v57[6] + 8 * v15) = v17;
      v25 = v57[7] + 16 * v15;
      *v25 = v22;
      *(v25 + 8) = EnumCaseMultiPayload == 1;
      v26 = v57[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      v57[2] = v28;
      v10 = v58;
      if (!v58)
      {
        goto LABEL_5;
      }
    }

LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_5:
    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_20;
      }

      if (v6 >= v11)
      {
        break;
      }

      v14 = *(v7 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v58 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    v48 = v1[51];
    v46 = v1[39];
    v47 = v1[42];
    v29 = v1[36];
    v42 = v1[35];
    v43 = v1[38];
    v30 = v1[30];
    v40 = v1[29];
    v41 = v1[32];
    v31 = v1[25];
    v44 = v1[24];
    v45 = v1[26];
    v39 = v1[23];
    v33 = v1[18];
    v32 = v1[19];
    v34 = v1[17];
    v35 = v1[14];
    v36 = v1[13];
    v37 = v1[2];

    (*(v35 + 8))(v34, v36);
    (*(v32 + 8))(v39, v33);
    (*(v30 + 8))(v41, v40);
    (*(v29 + 8))(v43, v42);
    v48(v47, v46);
    (*(v31 + 32))(v37, v45, v44);
    *(v37 + *(type metadata accessor for SignInReport(0) + 20)) = v57;

    v38 = v1[1];

    return v38();
  }

  return result;
}

uint64_t sub_24083D880()
{
  v1 = *(*v0 + 32);

  return MEMORY[0x2822009F8](sub_24083D990, v1, 0);
}

uint64_t sub_24083D990()
{
  v1 = v0[51];
  v2 = v0[41];
  v3 = v0[39];
  v4 = v0[35];
  v5 = v0[36];
  v6 = v0[33];
  sub_2408D3BE0();
  v1(v2, v3);
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    sub_2407D9440(v0[33], &unk_27E506A20, &unk_2408D67F0);
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v7 = sub_2408D4B20();
    __swift_project_value_buffer(v7, qword_27E506C48);
    v8 = sub_2408D4B10();
    v9 = sub_2408D4F30();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2407CF000, v8, v9, "Expected nonnull account to be in signin model during remote setup", v10, 2u);
      MEMORY[0x245CC9F60](v10, -1, -1);
    }

    v11 = v0[53];
    v12 = v0[47];
    v13 = v0[44];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
    sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0, &unk_2408D6E90);
    v14 = swift_allocError();
    *v15 = 0;
    swift_willThrow();
    v11(v12, v13);
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v16 = sub_2408D4B20();
    __swift_project_value_buffer(v16, qword_27E506C48);
    v17 = v14;
    v18 = sub_2408D4B10();
    v19 = sub_2408D4F30();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = v14;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_2407CF000, v18, v19, "Did not attempt fetching terms on source device due to error: %@", v20, 0xCu);
      sub_2407D9440(v21, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v21, -1, -1);
      MEMORY[0x245CC9F60](v20, -1, -1);
    }

    else
    {
    }

    v27 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
    v24 = swift_task_alloc();
    v0[55] = v24;
    *v24 = v0;
    v24[1] = sub_24083BF04;

    return v27(nullsub_1, 0);
  }

  else
  {
    v0[64] = sub_2408D3660();
    (*(v0[36] + 8))(v0[33], v0[35]);
    v26 = swift_task_alloc();
    v0[65] = v26;
    *v26 = v0;
    v26[1] = sub_24083DE2C;

    return sub_24080D3D0();
  }
}

uint64_t sub_24083DE2C(char a1)
{
  v4 = *v2;
  *(v4 + 528) = v1;

  v5 = *(v4 + 32);
  if (v1)
  {
    v6 = sub_24083E420;
  }

  else
  {
    *(v4 + 560) = a1 & 1;
    v6 = sub_24083DF6C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24083DF6C()
{
  if (*(v0 + 560))
  {

    (*(v0 + 424))(*(v0 + 376), *(v0 + 352));
LABEL_3:
    v30 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
    v1 = swift_task_alloc();
    *(v0 + 440) = v1;
    *v1 = v0;
    v1[1] = sub_24083BF04;

    return v30(nullsub_1, 0);
  }

  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v3 = sub_2408D4B20();
  __swift_project_value_buffer(v3, qword_27E506C48);
  v4 = sub_2408D4B10();
  v5 = sub_2408D4F30();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2407CF000, v4, v5, "Failing early as user did not repair their account", v6, 2u);
    MEMORY[0x245CC9F60](v6, -1, -1);
  }

  v7 = *(v0 + 32);

  sub_2408D3E00();
  v8 = *(v7 + 240);
  *(v0 + 536) = v8;
  if (!v8)
  {
    v14 = *(v0 + 512);
    v29 = *(v0 + 424);
    v28 = *(v0 + 376);
    v15 = *(v0 + 352);
    v16 = *(v0 + 168);
    v18 = *(v0 + 144);
    v17 = *(v0 + 152);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
    sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0, &unk_2408D6E90);
    v19 = swift_allocError();
    *v20 = 0;
    swift_willThrow();

    (*(v17 + 8))(v16, v18);
    v29(v28, v15);
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v3, qword_27E506C48);
    v21 = v19;
    v22 = sub_2408D4B10();
    v23 = sub_2408D4F30();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      v26 = v19;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v27;
      *v25 = v27;
      _os_log_impl(&dword_2407CF000, v22, v23, "Did not attempt fetching terms on source device due to error: %@", v24, 0xCu);
      sub_2407D9440(v25, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v25, -1, -1);
      MEMORY[0x245CC9F60](v24, -1, -1);
    }

    else
    {
    }

    goto LABEL_3;
  }

  (*(*(v0 + 152) + 16))(*(v0 + 160), *(v0 + 168), *(v0 + 144));
  v31 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);

  v9 = swift_task_alloc();
  *(v0 + 544) = v9;
  v10 = sub_2408763D8(&qword_27E5075F8, 255, MEMORY[0x277CED608], MEMORY[0x277CED600]);
  *v9 = v0;
  v9[1] = sub_24083E644;
  v11 = *(v0 + 160);
  v12 = *(v0 + 144);
  v13 = *(v0 + 120);

  return v31(v13, v11, v12, v10);
}

uint64_t sub_24083E420()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 376);
  v3 = *(v0 + 352);

  v1(v2, v3);
  v4 = *(v0 + 528);
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v5 = sub_2408D4B20();
  __swift_project_value_buffer(v5, qword_27E506C48);
  v6 = v4;
  v7 = sub_2408D4B10();
  v8 = sub_2408D4F30();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v4;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2407CF000, v7, v8, "Did not attempt fetching terms on source device due to error: %@", v9, 0xCu);
    sub_2407D9440(v10, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v10, -1, -1);
    MEMORY[0x245CC9F60](v9, -1, -1);
  }

  else
  {
  }

  v15 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
  v13 = swift_task_alloc();
  *(v0 + 440) = v13;
  *v13 = v0;
  v13[1] = sub_24083BF04;

  return v15(nullsub_1, 0);
}

uint64_t sub_24083E644()
{
  v2 = *v1;
  *(*v1 + 552) = v0;

  if (v0)
  {
    v3 = v2[4];

    v4 = sub_24083EA5C;
  }

  else
  {
    v3 = v2[4];
    (*(v2[14] + 8))(v2[15], v2[13]);

    v4 = sub_24083E7A4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24083E7A4()
{
  v1 = v0[64];
  v2 = v0[53];
  v3 = v0[47];
  v4 = v0[44];
  (*(v0[19] + 8))(v0[21], v0[18]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
  sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0, &unk_2408D6E90);
  v5 = swift_allocError();
  *v6 = 13;
  swift_willThrow();

  v2(v3, v4);
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v7 = sub_2408D4B20();
  __swift_project_value_buffer(v7, qword_27E506C48);
  v8 = v5;
  v9 = sub_2408D4B10();
  v10 = sub_2408D4F30();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v5;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_2407CF000, v9, v10, "Did not attempt fetching terms on source device due to error: %@", v11, 0xCu);
    sub_2407D9440(v12, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v12, -1, -1);
    MEMORY[0x245CC9F60](v11, -1, -1);
  }

  else
  {
  }

  v17 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
  v15 = swift_task_alloc();
  v0[55] = v15;
  *v15 = v0;
  v15[1] = sub_24083BF04;

  return v17(nullsub_1, 0);
}

uint64_t sub_24083EA5C()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 376);
  v3 = *(v0 + 352);
  v4 = *(v0 + 168);
  v5 = *(v0 + 144);
  v6 = *(v0 + 152);

  (*(v6 + 8))(v4, v5);
  v1(v2, v3);
  v7 = *(v0 + 552);
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v8 = sub_2408D4B20();
  __swift_project_value_buffer(v8, qword_27E506C48);
  v9 = v7;
  v10 = sub_2408D4B10();
  v11 = sub_2408D4F30();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v7;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_2407CF000, v10, v11, "Did not attempt fetching terms on source device due to error: %@", v12, 0xCu);
    sub_2407D9440(v13, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v13, -1, -1);
    MEMORY[0x245CC9F60](v12, -1, -1);
  }

  else
  {
  }

  v18 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
  v16 = swift_task_alloc();
  *(v0 + 440) = v16;
  *v16 = v0;
  v16[1] = sub_24083BF04;

  return v18(nullsub_1, 0);
}

uint64_t sub_24083ECA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_2408D3E10();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24083ED78, v3, 0);
}

uint64_t sub_24083ED78()
{
  v32 = v0;
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[3];
  v5 = sub_2408D4B20();
  __swift_project_value_buffer(v5, qword_27E506C48);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_2408D4B10();
  v8 = sub_2408D4F10();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[9];
  if (v9)
  {
    v11 = v0[7];
    v12 = v0[8];
    v13 = v0[6];
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v30;
    *v14 = 136315138;
    v6(v12, v10, v13);
    v15 = sub_2408D4D40();
    v17 = v16;
    (*(v11 + 8))(v10, v13);
    v18 = sub_2408CC504(v15, v17, &v31);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_2407CF000, v7, v8, "Received sign in request: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    MEMORY[0x245CC9F60](v30, -1, -1);
    MEMORY[0x245CC9F60](v14, -1, -1);
  }

  else
  {
    v19 = v0[6];
    v20 = v0[7];

    (*(v20 + 8))(v10, v19);
  }

  v22 = v0[4];
  v21 = v0[5];
  v23 = v0[3];
  v24 = sub_2407D917C(&qword_27E507500, &qword_27E507460, &unk_2408D7F00, &unk_2408D6C34);
  v25 = swift_task_alloc();
  v0[10] = v25;
  v25[2] = v23;
  v25[3] = v21;
  v25[4] = v22;
  v26 = swift_task_alloc();
  v0[11] = v26;
  v27 = sub_2408D3E40();
  *v26 = v0;
  v26[1] = sub_24083F070;
  v28 = v0[2];

  return MEMORY[0x2822008A0](v28, v21, v24, 0xD000000000000010, 0x80000002408DADF0, sub_2408755EC, v25, v27);
}

uint64_t sub_24083F070()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {
    v3 = v2[5];

    return MEMORY[0x2822009F8](sub_24083F1C4, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_24083F1C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24083F23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v29 = a2;
  v5 = sub_2408D3E10();
  v26 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v27 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507560, &qword_2408D8130);
  v25 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - v14;
  v28 = &v24 - v14;
  v16 = sub_2408D4E60();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v9 + 16))(v12, a1, v8);
  (*(v6 + 16))(&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v29, v5);
  v17 = sub_2407D917C(&qword_27E507500, &qword_27E507460, &unk_2408D7F00, &unk_2408D6C34);
  v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = (v10 + *(v6 + 80) + v18) & ~*(v6 + 80);
  v20 = (v7 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v22 = v30;
  *(v21 + 16) = v30;
  *(v21 + 24) = v17;
  (*(v9 + 32))(v21 + v18, v12, v25);
  (*(v6 + 32))(v21 + v19, v27, v26);
  *(v21 + v20) = v22;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v31;
  swift_retain_n();

  sub_24083AB60(0, 0, v28, &unk_2408D8140, v21);
}

uint64_t sub_24083F56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[66] = a7;
  v7[65] = a6;
  v7[63] = a4;
  v7[64] = a5;
  v9 = sub_2408D4B20();
  v7[67] = v9;
  v7[68] = *(v9 - 8);
  v7[69] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506CE8, qword_2408D6B70);
  v7[70] = v10;
  v7[71] = *(v10 - 8);
  v7[72] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507568, &qword_2408D8148);
  v7[73] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F38, &unk_2408D8150);
  v7[74] = v11;
  v7[75] = *(v11 - 8);
  v7[76] = swift_task_alloc();
  v7[77] = type metadata accessor for SignInReport(0);
  v7[78] = swift_task_alloc();
  v7[79] = swift_task_alloc();
  v7[80] = swift_task_alloc();
  v7[81] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5071F0, &qword_2408D7640);
  v7[82] = swift_task_alloc();
  v7[83] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507228, &qword_2408D8160);
  v7[84] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A18, &qword_2408D67E8);
  v7[85] = swift_task_alloc();
  v12 = sub_2408D3490();
  v7[86] = v12;
  v7[87] = *(v12 - 8);
  v7[88] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506A20, &unk_2408D67F0);
  v7[89] = swift_task_alloc();
  v13 = sub_2408D3630();
  v7[90] = v13;
  v7[91] = *(v13 - 8);
  v7[92] = swift_task_alloc();
  v14 = sub_2408D3C20();
  v7[93] = v14;
  v7[94] = *(v14 - 8);
  v7[95] = swift_task_alloc();
  v7[96] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D30, &unk_2408D80C0);
  v7[97] = v15;
  v7[98] = *(v15 - 8);
  v7[99] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5071D0, &unk_2408D9C70);
  v7[100] = swift_task_alloc();
  v7[101] = swift_task_alloc();
  v16 = sub_2408D38D0();
  v7[102] = v16;
  v7[103] = *(v16 - 8);
  v7[104] = swift_task_alloc();
  v7[105] = swift_task_alloc();
  v17 = sub_2408D3970();
  v7[106] = v17;
  v7[107] = *(v17 - 8);
  v7[108] = swift_task_alloc();
  v7[109] = swift_task_alloc();
  v7[110] = swift_task_alloc();
  sub_2408D3E40();
  v7[111] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506DA8, &qword_2408D8100);
  v7[112] = swift_task_alloc();
  v7[113] = swift_task_alloc();
  v7[114] = swift_task_alloc();
  v7[115] = swift_task_alloc();
  v7[116] = swift_task_alloc();
  v18 = sub_2408D3770();
  v7[117] = v18;
  v7[118] = *(v18 - 8);
  v7[119] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507570, &qword_2408D8168);
  v7[120] = swift_task_alloc();
  v7[121] = swift_task_alloc();
  v7[122] = swift_task_alloc();
  v7[123] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24083FC6C, a6, 0);
}

uint64_t sub_24083FC6C()
{
  v1 = v0[123];
  v2 = v0[63];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507560, &qword_2408D8130);
  v0[124] = v3;
  v4 = *(v3 - 8);
  v0[125] = v4;
  (*(v4 + 16))(v1, v2, v3);
  v5 = *(v4 + 56);
  v0[126] = v5;
  v0[127] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v61 = v5;
  v62 = v3;
  v5(v1, 0, 1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507578, &qword_2408D8170);
  v6 = swift_allocObject();
  v0[128] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507580, &qword_2408D8178);
  v7 = swift_allocObject();
  *(v7 + ((*(*v7 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  v8 = MEMORY[0x277D841D0];
  sub_2407EEE04(v1, v7 + *(*v7 + *MEMORY[0x277D841D0] + 16), &qword_27E507570, &qword_2408D8168);
  sub_2407D9440(v1, &qword_27E507570, &qword_2408D8168);
  v64 = v6;
  *(v6 + 16) = v7;
  if (sub_2408D3DB0())
  {
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v60 = v4;
    __swift_project_value_buffer(v0[67], qword_27E506C48);
    v9 = sub_2408D4B10();
    v10 = sub_2408D4F10();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2407CF000, v9, v10, "Marked as terminal sign in, finishing sign in stream continuation early", v11, 2u);
      MEMORY[0x245CC9F60](v11, -1, -1);
    }

    v12 = v0[116];
    v13 = v0[115];
    v14 = v0[114];
    v15 = v0[71];
    v16 = v0[70];
    v17 = v0[65];

    v18 = *(*v17 + 208);
    swift_beginAccess();
    sub_2407EEE04(v17 + v18, v12, &qword_27E506DA8, &qword_2408D8100);
    (*(v15 + 56))(v13, 1, 1, v16);
    swift_beginAccess();
    sub_2407EEE6C(v13, v17 + v18);
    swift_endAccess();
    sub_2407EEE04(v12, v14, &qword_27E506DA8, &qword_2408D8100);
    v19 = (*(v15 + 48))(v14, 1, v16);
    v20 = v0[116];
    v21 = v0[114];
    if (v19 == 1)
    {
      sub_2407D9440(v0[116], &qword_27E506DA8, &qword_2408D8100);
      sub_2407D9440(v21, &qword_27E506DA8, &qword_2408D8100);
    }

    else
    {
      v27 = v0[71];
      v28 = v0[70];
      v0[62] = 0;
      sub_2408D4E90();
      sub_2407D9440(v20, &qword_27E506DA8, &qword_2408D8100);
      (*(v27 + 8))(v21, v28);
    }

    v29 = v0[122];
    v30 = *(v6 + 16);
    v31 = *(*v30 + *MEMORY[0x277D841D0] + 16);
    v32 = (*(*v30 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v30 + v32));
    sub_24080F060(v30 + v31, v29, &qword_27E507570, &qword_2408D8168);
    v61(v30 + v31, 1, 1, v62);
    os_unfair_lock_unlock((v30 + v32));

    v33 = (*(v60 + 48))(v29, 1, v62);
    v34 = v0[122];
    if (v33 != 1)
    {
      sub_2408D3DE0();
      sub_2407F5C68(MEMORY[0x277D84F90]);
      sub_2408D3E30();
      sub_2408D4E20();

      (*(v60 + 8))(v34, v62);
LABEL_24:

      v59 = v0[1];

      return v59();
    }

    v35 = v34;
LABEL_22:
    sub_2407D9440(v35, &qword_27E507570, &qword_2408D8168);
    goto LABEL_24;
  }

  v22 = v0[65];
  v23 = *(v22 + 248);
  v0[129] = v23;
  if (!v23)
  {
    v36 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
    sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0, &unk_2408D6E90);
    v37 = swift_allocError();
    *v38 = 2;
    swift_willThrow();
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v0[67], qword_27E506C48);
    v39 = v37;
    v40 = sub_2408D4B10();
    v41 = sub_2408D4F20();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412290;
      v44 = v37;
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 4) = v45;
      *v43 = v45;
      _os_log_impl(&dword_2407CF000, v40, v41, "Caught Sign In error: %@", v42, 0xCu);
      sub_2407D9440(v43, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v43, -1, -1);
      MEMORY[0x245CC9F60](v42, -1, -1);
    }

    v46 = v0[128];
    v47 = v0[126];
    v48 = v0[125];
    v49 = v0[124];
    v50 = v0[120];

    v51 = *(v46 + 16);
    v52 = *(*v51 + *v36 + 16);
    v53 = (*(*v51 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v51 + v53));
    sub_24080F060(v51 + v52, v50, &qword_27E507570, &qword_2408D8168);
    v47(v51 + v52, 1, 1, v49);
    os_unfair_lock_unlock((v51 + v53));

    if ((*(v48 + 48))(v50, 1, v49) != 1)
    {
      v55 = v0[125];
      v56 = v0[124];
      v57 = v0[120];
      v0[58] = v37;
      v58 = v37;
      sub_2408D4E10();

      (*(v55 + 8))(v57, v56);
      goto LABEL_24;
    }

    v54 = v0[120];

    v35 = v54;
    goto LABEL_22;
  }

  v24 = swift_allocObject();
  v0[130] = v24;
  *(v24 + 16) = v22;
  *(v24 + 24) = v64;
  v63 = (*MEMORY[0x277CED880] + MEMORY[0x277CED880]);

  v25 = swift_task_alloc();
  v0[131] = v25;
  *v25 = v0;
  v25[1] = sub_2408407BC;

  return v63(v0 + 2, sub_240875954, v24);
}

uint64_t sub_2408407BC()
{
  v1 = *(*v0 + 520);

  return MEMORY[0x2822009F8](sub_24084090C, v1, 0);
}

uint64_t sub_24084090C()
{
  v42 = v0;
  sub_2408D3DC0();
  v1 = sub_2408D3730();
  if (v2 >> 60 != 15)
  {
    sub_240875A6C(v1, v2);
    goto LABEL_16;
  }

  v3 = v0[109];
  v4 = v0[107];
  v5 = v0[106];
  v6 = v0[65];
  sub_2408D3DE0();
  sub_2408D38F0();
  v40 = *(v4 + 8);
  v40(v3, v5);
  swift_beginAccess();
  v7 = *(v6 + 256);
  v8 = v0[105];
  if (!*(v7 + 16))
  {
    (*(v0[103] + 8))(v0[105], v0[102]);
LABEL_8:
    v14 = 1;
    goto LABEL_9;
  }

  v9 = sub_2408CCBA8(v8);
  if ((v10 & 1) == 0)
  {
    v15 = v0[105];
    v16 = v0[103];
    v17 = v0[102];

    (*(v16 + 8))(v15, v17);
    goto LABEL_8;
  }

  v11 = v0[105];
  v12 = v0[103];
  v13 = v0[102];
  (*(v0[118] + 16))(v0[101], *(v7 + 56) + *(v0[118] + 72) * v9, v0[117]);
  (*(v12 + 8))(v11, v13);

  v14 = 0;
LABEL_9:
  v18 = v0[118];
  v19 = v0[117];
  v20 = v0[101];
  v39 = *(v18 + 56);
  v39(v20, v14, 1, v19);
  if (!(*(v18 + 48))(v20, 1, v19))
  {
    sub_2408D3730();
  }

  v38 = v0[117];
  v21 = v0[110];
  v22 = v0[106];
  v23 = v0[104];
  v24 = v0[100];
  sub_2407D9440(v0[101], &qword_27E5071D0, &unk_2408D9C70);
  sub_2408D3740();
  sub_2408D3DE0();
  sub_2408D38F0();
  v40(v21, v22);
  v39(v24, 1, 1, v38);
  swift_beginAccess();
  sub_2408C6DC8(v24, v23);
  swift_endAccess();
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0[67], qword_27E506C48);
  v25 = sub_2408D4B10();
  v26 = sub_2408D4F20();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v41 = v28;
    *v27 = 136315138;
    swift_beginAccess();
    v29 = sub_2408D3730();
    v31 = v30;
    swift_endAccess();
    v0[54] = v29;
    v0[55] = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507590, &qword_2408D81A0);
    v32 = sub_2408D4D40();
    v34 = sub_2408CC504(v32, v33, &v41);

    *(v27 + 4) = v34;
    _os_log_impl(&dword_2407CF000, v25, v26, "Fetched cached SRP result archived data: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    MEMORY[0x245CC9F60](v28, -1, -1);
    MEMORY[0x245CC9F60](v27, -1, -1);
  }

LABEL_16:
  sub_2408D3D80();
  sub_2408763D8(&qword_27E506D08, 255, MEMORY[0x277CED5B0], MEMORY[0x277CED5B8]);
  v36 = sub_2408D4E00();

  return MEMORY[0x2822009F8](sub_240840DCC, v36, v35);
}

uint64_t sub_240840DCC()
{
  sub_2408D3D10();
  *(v0 + 1056) = 0;
  v1 = *(v0 + 520);

  return MEMORY[0x2822009F8](sub_240840E5C, v1, 0);
}

uint64_t sub_240840E5C()
{
  v1 = v0[99];
  v2 = v0[98];
  v3 = v0[97];
  v4 = v0[65];
  v5 = sub_2408D3C30();
  v0[133] = v5;
  (*(v2 + 8))(v1, v3);
  v6 = *(v4 + 248);
  v0[134] = v6;
  if (v6)
  {
    v40 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);

    v7 = swift_task_alloc();
    v0[135] = v7;
    *v7 = v0;
    v7[1] = sub_240841534;
    v8 = v0[92];

    return v40(v8);
  }

  else
  {
    v10 = v0[119];
    v11 = v0[118];
    v12 = v0[117];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
    sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0, &unk_2408D6E90);
    v13 = swift_allocError();
    *v14 = 2;
    swift_willThrow();

    (*(v11 + 8))(v10, v12);
    v15 = v0[5];
    v16 = __swift_project_boxed_opaque_existential_1(v0 + 2, v15);
    v17 = *(v15 - 8);
    v18 = swift_task_alloc();
    (*(v17 + 16))(v18, v16, v15);
    sub_2408D4670();

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v0[67], qword_27E506C48);
    v19 = v13;
    v20 = sub_2408D4B10();
    v21 = sub_2408D4F20();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = v13;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_2407CF000, v20, v21, "Caught Sign In error: %@", v22, 0xCu);
      sub_2407D9440(v23, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v23, -1, -1);
      MEMORY[0x245CC9F60](v22, -1, -1);
    }

    v26 = v0[128];
    v27 = v0[126];
    v28 = v0[125];
    v29 = v0[124];
    v30 = v0[120];

    v31 = *(v26 + 16);
    v32 = *(*v31 + *MEMORY[0x277D841D0] + 16);
    v33 = (*(*v31 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v31 + v33));
    sub_24080F060(v31 + v32, v30, &qword_27E507570, &qword_2408D8168);
    v27(v31 + v32, 1, 1, v29);
    os_unfair_lock_unlock((v31 + v33));

    if ((*(v28 + 48))(v30, 1, v29) == 1)
    {
      v34 = v0[120];

      sub_2407D9440(v34, &qword_27E507570, &qword_2408D8168);
    }

    else
    {
      v35 = v0[125];
      v36 = v0[124];
      v37 = v0[120];
      v0[58] = v13;
      v38 = v13;
      sub_2408D4E10();

      (*(v35 + 8))(v37, v36);
    }

    v39 = v0[1];

    return v39();
  }
}

uint64_t sub_240841534()
{
  v1 = *(*v0 + 520);

  return MEMORY[0x2822009F8](sub_240841660, v1, 0);
}

uint64_t sub_240841660(uint64_t a1)
{
  v122 = v1;
  v2 = v1[118];
  v118 = v1[117];
  v119 = v1[133];
  v3 = v1[107];
  v113 = v1[106];
  v115 = v1[119];
  v117 = v1[100];
  v4 = v1[96];
  v5 = v1[95];
  v6 = v1[94];
  v112 = v1[93];
  v7 = v1[92];
  v8 = v1[91];
  v9 = v1[90];
  v10 = v1[89];
  sub_2408D3540();
  (*(v8 + 8))(v7, v9);
  v111 = *(v6 + 16);
  v111(v5, v4, v112);
  sub_2408D3DE0();
  (*(v3 + 56))(v10, 0, 1, v113);
  sub_2408D3BF0();
  swift_beginAccess();
  (*(v2 + 16))(v117, v115, v118);
  (*(v2 + 56))(v117, 0, 1, v118);
  sub_2408D3A90();
  v114 = v119;
  sub_2408D3B70();
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v1[136] = __swift_project_value_buffer(v1[67], qword_27E506C48);

  v11 = sub_2408D4B10();
  v12 = sub_2408D4F20();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v121[0] = v14;
    *v13 = 136315138;
    type metadata accessor for AIDAServiceType(0);
    sub_2408763D8(&qword_28130EF80, 255, type metadata accessor for AIDAServiceType, &unk_2408D65CC);

    v15 = sub_2408D4EF0();
    v17 = v16;

    v18 = sub_2408CC504(v15, v17, v121);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_2407CF000, v11, v12, "Resetting required services to original: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x245CC9F60](v14, -1, -1);
    MEMORY[0x245CC9F60](v13, -1, -1);
  }

  sub_2408D3B30();

  v19 = sub_2408D4B10();
  v20 = sub_2408D4F20();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v121[0] = v22;
    *v21 = 136315138;
    type metadata accessor for AIDAServiceType(0);
    sub_2408763D8(&qword_28130EF80, 255, type metadata accessor for AIDAServiceType, &unk_2408D65CC);

    v23 = sub_2408D4EF0();
    v25 = v24;

    v26 = sub_2408CC504(v23, v25, v121);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_2407CF000, v19, v20, "Resetting desired services to original: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    MEMORY[0x245CC9F60](v22, -1, -1);
    MEMORY[0x245CC9F60](v21, -1, -1);
  }

  v27 = v1[88];
  v28 = v1[87];
  v29 = v1[86];
  v30 = v1[65];

  sub_2408D3AF0();
  sub_2408D3DF0();
  sub_2408D3C10();
  __swift_project_boxed_opaque_existential_1((v30 + 144), *(v30 + 168));
  (*(v28 + 104))(v27, *MEMORY[0x277CED208], v29);
  v31 = sub_2408D4770();
  (*(v28 + 8))(v27, v29);
  if ((v31 & 1) != 0 && (v32 = v1[108], v33 = v1[107], v34 = v1[106], v35 = v1[85], sub_2408D3DE0(), sub_2408D37A0(), (*(v33 + 8))(v32, v34), v36 = sub_2408D3720(), v37 = (*(*(v36 - 8) + 48))(v35, 1, v36), sub_2407D9440(v35, &qword_27E506A18, &qword_2408D67E8), v37 != 1))
  {
    v52 = sub_2408D4B10();
    v53 = sub_2408D4F10();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v121[0] = v55;
      *v54 = 136315138;
      swift_beginAccess();
      sub_2408763D8(&unk_27E5071B0, 255, MEMORY[0x277CED500], MEMORY[0x277CED508]);
      v56 = sub_2408D5220();
      v58 = sub_2408CC504(v56, v57, v121);

      *(v54 + 4) = v58;
      _os_log_impl(&dword_2407CF000, v52, v53, "Not modifying required/desired services from sign in model because age based account support is enabled: %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v55);
      MEMORY[0x245CC9F60](v55, -1, -1);
      MEMORY[0x245CC9F60](v54, -1, -1);
    }
  }

  else
  {
    v38 = v1[110];
    v39 = v1[107];
    v40 = v1[106];
    v116 = v40;
    sub_2408D3DE0();
    v41 = sub_2408D3960();
    v42 = *(v39 + 8);
    v42(v38, v40);
    v43 = sub_2408D3B10();
    v45 = v44;
    v46 = sub_24086E620(v41, *v44);

    *v45 = v46;
    v43(v1 + 7, 0);
    sub_2408D3DE0();
    v47 = sub_2408D3960();
    v42(v38, v116);
    v48 = sub_2408D3AD0();
    v50 = v49;
    v51 = sub_24086E620(v47, *v49);

    *v50 = v51;
    v48(v1 + 11, 0);
  }

  v59 = sub_2408D4B10();
  v60 = sub_2408D4F20();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v121[0] = v62;
    *v61 = 136315138;
    swift_beginAccess();
    sub_2408763D8(&unk_27E5071B0, 255, MEMORY[0x277CED500], MEMORY[0x277CED508]);
    v63 = sub_2408D5220();
    v65 = sub_2408CC504(v63, v64, v121);

    *(v61 + 4) = v65;
    _os_log_impl(&dword_2407CF000, v59, v60, "Attempting to sign in with model: %s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v62);
    MEMORY[0x245CC9F60](v62, -1, -1);
    MEMORY[0x245CC9F60](v61, -1, -1);
  }

  v66 = *(v1[65] + 248);
  v1[137] = v66;
  if (v66)
  {
    v67 = v1[95];
    v68 = v1[94];
    v69 = v1[93];
    v70 = v1[84];
    swift_beginAccess();
    v111(v70, v67, v69);
    (*(v68 + 56))(v70, 0, 1, v69);

    v71 = swift_task_alloc();
    v1[138] = v71;
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A70, qword_2408D75E0);
    v1[139] = v72;
    v73 = sub_2407D917C(&qword_27E506A78, &qword_27E506A70, qword_2408D75E0, MEMORY[0x277CED890]);
    *v71 = v1;
    v71[1] = sub_240842C7C;
    v74 = v1[93];
    v75 = v1[84];

    return MEMORY[0x28213FC20](v75, sub_2407EE514, 0, sub_2407EE538, 0, v72, v74, v73);
  }

  else
  {
    v120 = v1[119];
    v76 = v1[118];
    v77 = v1[117];
    v78 = v1[96];
    v79 = v1[95];
    v80 = v1[94];
    v81 = v1[93];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
    sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0, &unk_2408D6E90);
    v82 = swift_allocError();
    *v83 = 2;
    swift_willThrow();

    v84 = *(v80 + 8);
    v84(v78, v81);
    v84(v79, v81);
    (*(v76 + 8))(v120, v77);
    v85 = v1[5];
    v86 = __swift_project_boxed_opaque_existential_1(v1 + 2, v85);
    v87 = *(v85 - 8);
    v88 = swift_task_alloc();
    (*(v87 + 16))(v88, v86, v85);
    sub_2408D4670();

    __swift_destroy_boxed_opaque_existential_0Tm(v1 + 2);
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v1[67], qword_27E506C48);
    v89 = v82;
    v90 = sub_2408D4B10();
    v91 = sub_2408D4F20();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      *v92 = 138412290;
      v94 = v82;
      v95 = _swift_stdlib_bridgeErrorToNSError();
      *(v92 + 4) = v95;
      *v93 = v95;
      _os_log_impl(&dword_2407CF000, v90, v91, "Caught Sign In error: %@", v92, 0xCu);
      sub_2407D9440(v93, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v93, -1, -1);
      MEMORY[0x245CC9F60](v92, -1, -1);
    }

    v96 = v1[128];
    v97 = v1[126];
    v98 = v1[125];
    v99 = v1[124];
    v100 = v1[120];

    v101 = *(v96 + 16);
    v102 = *(*v101 + *MEMORY[0x277D841D0] + 16);
    v103 = (*(*v101 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v101 + v103));
    sub_24080F060(v101 + v102, v100, &qword_27E507570, &qword_2408D8168);
    v97(v101 + v102, 1, 1, v99);
    os_unfair_lock_unlock((v101 + v103));

    if ((*(v98 + 48))(v100, 1, v99) == 1)
    {
      v104 = v1[120];

      sub_2407D9440(v104, &qword_27E507570, &qword_2408D8168);
    }

    else
    {
      v105 = v1[125];
      v106 = v1[124];
      v107 = v1[120];
      v1[58] = v82;
      v108 = v82;
      sub_2408D4E10();

      (*(v105 + 8))(v107, v106);
    }

    v109 = v1[1];

    return v109();
  }
}

uint64_t sub_240842704()
{
  (*(v0[118] + 8))(v0[119], v0[117]);
  v1 = v0[5];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  sub_2408D4670();

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v5 = v0[132];
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0[67], qword_27E506C48);
  v6 = v5;
  v7 = sub_2408D4B10();
  v8 = sub_2408D4F20();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v5;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2407CF000, v7, v8, "Caught Sign In error: %@", v9, 0xCu);
    sub_2407D9440(v10, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v10, -1, -1);
    MEMORY[0x245CC9F60](v9, -1, -1);
  }

  v13 = v0[128];
  v14 = v0[126];
  v15 = v0[125];
  v16 = v0[124];
  v17 = v0[120];

  v18 = *(v13 + 16);
  v19 = *(*v18 + *MEMORY[0x277D841D0] + 16);
  v20 = (*(*v18 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v18 + v20));
  sub_24080F060(v18 + v19, v17, &qword_27E507570, &qword_2408D8168);
  v14(v18 + v19, 1, 1, v16);
  os_unfair_lock_unlock((v18 + v20));

  if ((*(v15 + 48))(v17, 1, v16) == 1)
  {
    v21 = v0[120];

    sub_2407D9440(v21, &qword_27E507570, &qword_2408D8168);
  }

  else
  {
    v22 = v0[125];
    v23 = v0[124];
    v24 = v0[120];
    v0[58] = v5;
    v25 = v5;
    sub_2408D4E10();

    (*(v22 + 8))(v24, v23);
  }

  v26 = v0[1];

  return v26();
}

uint64_t sub_240842C7C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1120) = v1;

  if (v1)
  {
    v5 = v4[84];
    v6 = v4[65];
    sub_2407D9440(v5, &qword_27E507228, &qword_2408D8160);

    v7 = sub_240844240;
    v8 = v6;
    v9 = 0;
  }

  else
  {
    v4[141] = a1;
    sub_2407D917C(&qword_27E506A80, &qword_27E506A70, qword_2408D75E0, MEMORY[0x277CED898]);
    v10 = sub_2408D4E00();
    v12 = v11;
    v7 = sub_240842E20;
    v8 = v10;
    v9 = v12;
  }

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_240842E20()
{
  v1 = v0[84];
  v2 = v0[65];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507238, &qword_2408D8180);
  sub_2407D917C(&unk_27E507240, &qword_27E507238, &qword_2408D8180, MEMORY[0x277CED540]);
  v0[142] = sub_2408D4680();

  sub_2407D9440(v1, &qword_27E507228, &qword_2408D8160);

  return MEMORY[0x2822009F8](sub_240842F28, v2, 0);
}

uint64_t sub_240842F28()
{
  v1 = v0[142];
  v2 = v0[65];
  v3 = swift_task_alloc();
  v0[143] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[144] = v4;
  *v4 = v0;
  v4[1] = sub_240843000;
  v5 = v0[83];
  v6 = v0[77];

  return MEMORY[0x2821400E8](v5, &unk_2408D8190, v3, v6);
}

uint64_t sub_240843000()
{
  v1 = *(*v0 + 520);

  return MEMORY[0x2822009F8](sub_24084312C, v1, 0);
}

uint64_t sub_24084312C()
{
  v156 = v0;
  v1 = *(v0 + 664);
  v2 = *(v0 + 656);
  v3 = *(v0 + 640);
  v4 = *(v0 + 616);
  sub_2408D38A0();
  v5 = sub_2407F5E5C(MEMORY[0x277D84F90]);
  v6 = *(v4 + 20);
  *(v3 + v6) = v5;
  sub_2407EEE04(v1, v2, &unk_27E5071F0, &qword_2408D7640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *(v0 + 656);
    v8 = *v7;
    *(v0 + 472) = *v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
    swift_willThrowTypedImpl();
    v9 = v8;
    v10 = sub_2408D4B10();
    v11 = sub_2408D4F20();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v155[0] = v13;
      *v12 = 136315138;
      *(v0 + 488) = v8;
      v14 = v8;
      v15 = sub_2408D4D40();
      v17 = sub_2408CC504(v15, v16, v155);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_2407CF000, v10, v11, "Error occurred during sign, finishing setup flow: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x245CC9F60](v13, -1, -1);
      MEMORY[0x245CC9F60](v12, -1, -1);
    }

    v18 = *(v0 + 896);
    v19 = *(v0 + 568);
    v20 = *(v0 + 560);
    v21 = *(v0 + 520);
    v22 = *(*v21 + 208);
    swift_beginAccess();
    sub_2407EEE04(v21 + v22, v18, &qword_27E506DA8, &qword_2408D8100);
    v23 = (*(v19 + 48))(v18, 1, v20);
    v24 = *(v0 + 896);
    if (v23)
    {
      sub_2407D9440(*(v0 + 896), &qword_27E506DA8, &qword_2408D8100);
    }

    else
    {
      v66 = *(v0 + 576);
      v67 = *(v0 + 568);
      v68 = *(v0 + 560);
      (*(v67 + 16))(v66, *(v0 + 896), v68);
      sub_2407D9440(v24, &qword_27E506DA8, &qword_2408D8100);
      *(v0 + 480) = v8;
      v69 = v8;
      sub_2408D4E90();
      (*(v67 + 8))(v66, v68);
    }

    v70 = *(v0 + 1064);
    v152 = *(v0 + 952);
    v153 = v8;
    v71 = *(v0 + 944);
    v72 = *(v0 + 768);
    v146 = *(v0 + 760);
    v149 = *(v0 + 936);
    v73 = *(v0 + 752);
    v74 = *(v0 + 744);
    v75 = *(v0 + 664);
    v76 = *(v0 + 640);
    swift_willThrow();

    sub_2407D9440(v75, &unk_27E5071F0, &qword_2408D7640);
    v77 = *(v73 + 8);
    v77(v72, v74);
    sub_240875C68(v76, type metadata accessor for SignInReport);
    v77(v146, v74);
    (*(v71 + 8))(v152, v149);
    v78 = *(v0 + 40);
    v79 = __swift_project_boxed_opaque_existential_1((v0 + 16), v78);
    v80 = *(v78 - 8);
    v81 = swift_task_alloc();
    (*(v80 + 16))(v81, v79, v78);
    sub_2408D4670();

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    if (qword_27E506918 == -1)
    {
      goto LABEL_24;
    }

    goto LABEL_43;
  }

  v25 = *(v0 + 640);
  v26 = *(v0 + 632);
  v27 = *(v0 + 600);
  sub_240875B98(*(v0 + 656), v26, type metadata accessor for SignInReport);
  sub_240875A08(v26, v25);
  v28 = *(v3 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F30, &unk_2408D72D0);
  v29 = sub_2408D51B0();
  v148 = v27;
  v151 = v29;
  v30 = v28 + 64;
  v31 = 1 << *(v28 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v28 + 64);
  v34 = (v31 + 63) >> 6;
  v145 = v29 + 64;
  v153 = v28;

  v35 = 0;
  if (v33)
  {
    while (1)
    {
      v36 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
LABEL_15:
      v39 = v36 | (v35 << 6);
      v40 = *(v0 + 608);
      v41 = *(v153[6] + 8 * v39);
      v42 = *(v0 + 592);
      v43 = v153[7] + 16 * v39;
      v44 = *v43;
      LOBYTE(v43) = *(v43 + 8);
      *(v0 + 448) = v44;
      *(v0 + 456) = v43;
      v45 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5071A0, &qword_2408D7610);
      sub_2408D5340();
      *(v145 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
      *(v151[6] + 8 * v39) = v45;
      (*(v148 + 32))(v151[7] + *(v148 + 72) * v39, v40, v42);
      v46 = v151[2];
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      if (v47)
      {
        break;
      }

      v151[2] = v48;
      if (!v33)
      {
        goto LABEL_10;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
LABEL_24:
    __swift_project_value_buffer(*(v0 + 536), qword_27E506C48);
    v82 = v153;
    v83 = sub_2408D4B10();
    v84 = sub_2408D4F20();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *v85 = 138412290;
      v87 = v153;
      v88 = _swift_stdlib_bridgeErrorToNSError();
      *(v85 + 4) = v88;
      *v86 = v88;
      _os_log_impl(&dword_2407CF000, v83, v84, "Caught Sign In error: %@", v85, 0xCu);
      sub_2407D9440(v86, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v86, -1, -1);
      MEMORY[0x245CC9F60](v85, -1, -1);
    }

    v89 = *(v0 + 1024);
    v90 = *(v0 + 1008);
    v91 = *(v0 + 1000);
    v92 = *(v0 + 992);
    v93 = *(v0 + 960);

    v94 = *(v89 + 16);
    v95 = *(*v94 + *MEMORY[0x277D841D0] + 16);
    v96 = (*(*v94 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v94 + v96));
    sub_24080F060(v94 + v95, v93, &qword_27E507570, &qword_2408D8168);
    v90(v94 + v95, 1, 1, v92);
    os_unfair_lock_unlock((v94 + v96));

    if ((*(v91 + 48))(v93, 1, v92) == 1)
    {
      v97 = *(v0 + 960);

      sub_2407D9440(v97, &qword_27E507570, &qword_2408D8168);
    }

    else
    {
      v98 = *(v0 + 1000);
      v99 = *(v0 + 992);
      v100 = *(v0 + 960);
      *(v0 + 464) = v153;
      v101 = v153;
      sub_2408D4E10();

      (*(v98 + 8))(v100, v99);
    }

    goto LABEL_38;
  }

LABEL_10:
  v37 = v35;
  while (1)
  {
    v35 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
      goto LABEL_42;
    }

    if (v35 >= v34)
    {
      break;
    }

    v38 = *(v30 + 8 * v35);
    ++v37;
    if (v38)
    {
      v36 = __clz(__rbit64(v38));
      v33 = (v38 - 1) & v38;
      goto LABEL_15;
    }
  }

  v49 = sub_2408D4B10();
  v50 = sub_2408D4F20();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = *(v0 + 640);
    v52 = *(v0 + 624);
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v155[0] = v54;
    *v53 = 136315138;
    swift_beginAccess();
    sub_240875C00(v51, v52, type metadata accessor for SignInReport);
    v55 = sub_2408D4D40();
    v57 = sub_2408CC504(v55, v56, v155);

    *(v53 + 4) = v57;
    _os_log_impl(&dword_2407CF000, v49, v50, "Yielding sign in report: %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v54);
    MEMORY[0x245CC9F60](v54, -1, -1);
    MEMORY[0x245CC9F60](v53, -1, -1);
  }

  v58 = *(v0 + 904);
  v59 = *(v0 + 568);
  v60 = *(v0 + 560);
  v61 = *(v0 + 520);
  v62 = *(*v61 + 208);
  swift_beginAccess();
  sub_2407EEE04(v61 + v62, v58, &qword_27E506DA8, &qword_2408D8100);
  v63 = (*(v59 + 48))(v58, 1, v60);
  v64 = *(v0 + 904);
  if (v63)
  {
    sub_2407D9440(*(v0 + 904), &qword_27E506DA8, &qword_2408D8100);
    v65 = 1;
  }

  else
  {
    v102 = *(v0 + 640);
    v103 = *(v0 + 624);
    v104 = *(v0 + 576);
    v105 = *(v0 + 568);
    v106 = *(v0 + 560);
    (*(v105 + 16))(v104, *(v0 + 904), v106);
    sub_2407D9440(v64, &qword_27E506DA8, &qword_2408D8100);
    swift_beginAccess();
    sub_240875C00(v102, v103, type metadata accessor for SignInReport);
    sub_2408D4E80();
    (*(v105 + 8))(v104, v106);
    v65 = 0;
  }

  v107 = *(v0 + 584);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507588, &qword_2408D8198);
  (*(*(v108 - 8) + 56))(v107, v65, 1, v108);
  sub_2407D9440(v107, &qword_27E507568, &qword_2408D8148);
  if (sub_2408D3DF0())
  {
    sub_2408D4910();
    v109 = sub_2408D4B10();
    v110 = sub_2408D4F10();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      *v111 = 0;
      _os_log_impl(&dword_2407CF000, v109, v110, "Marked as final sign in => Still waiting for termination request", v111, 2u);
      MEMORY[0x245CC9F60](v111, -1, -1);
    }

    v112 = *(v0 + 552);
    v113 = *(v0 + 544);
    v114 = *(v0 + 536);

    (*(v113 + 8))(v112, v114);
  }

  v115 = *(v0 + 1008);
  v116 = *(v0 + 1000);
  v117 = *(v0 + 992);
  v118 = *(v0 + 968);
  v119 = *(*(v0 + 1024) + 16);
  v120 = *(*v119 + *MEMORY[0x277D841D0] + 16);
  v121 = (*(*v119 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v119 + v121));
  sub_24080F060(v119 + v120, v118, &qword_27E507570, &qword_2408D8168);
  v115(v119 + v120, 1, 1, v117);
  os_unfair_lock_unlock((v119 + v121));

  v122 = (*(v116 + 48))(v118, 1, v117);
  v123 = *(v0 + 1064);
  if (v122 == 1)
  {
    v124 = *(v0 + 968);
    v125 = *(v0 + 768);
    v126 = *(v0 + 752);
    v127 = *(v0 + 744);
    v128 = *(v0 + 664);

    sub_2407D9440(v128, &unk_27E5071F0, &qword_2408D7640);
    v129 = *(v126 + 8);
    v129(v125, v127);
    sub_2407D9440(v124, &qword_27E507570, &qword_2408D8168);
  }

  else
  {
    v130 = *(v0 + 1000);
    v131 = *(v0 + 992);
    v132 = *(v0 + 968);
    v154 = *(v0 + 768);
    v133 = *(v0 + 752);
    v147 = *(v0 + 664);
    v150 = *(v0 + 744);
    sub_2408D3DE0();
    sub_2408D3E30();
    sub_2408D4E20();

    sub_2407D9440(v147, &unk_27E5071F0, &qword_2408D7640);
    v129 = *(v133 + 8);
    v129(v154, v150);
    (*(v130 + 8))(v132, v131);
  }

  v134 = *(v0 + 952);
  v135 = *(v0 + 944);
  v136 = *(v0 + 936);
  v137 = *(v0 + 760);
  v138 = *(v0 + 744);
  sub_240875C68(*(v0 + 640), type metadata accessor for SignInReport);
  v129(v137, v138);
  (*(v135 + 8))(v134, v136);
  v139 = *(v0 + 40);
  v140 = __swift_project_boxed_opaque_existential_1((v0 + 16), v139);
  v141 = *(v139 - 8);
  v142 = swift_task_alloc();
  (*(v141 + 16))(v142, v140, v139);
  sub_2408D4670();

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
LABEL_38:

  v143 = *(v0 + 8);

  return v143();
}

uint64_t sub_240844240()
{
  v1 = *(v0 + 952);
  v2 = *(v0 + 944);
  v3 = *(v0 + 936);
  v4 = *(v0 + 768);
  v5 = *(v0 + 760);
  v6 = *(v0 + 752);
  v7 = *(v0 + 744);

  v8 = *(v6 + 8);
  v8(v4, v7);
  v8(v5, v7);
  (*(v2 + 8))(v1, v3);
  v9 = *(v0 + 40);
  v10 = __swift_project_boxed_opaque_existential_1((v0 + 16), v9);
  v11 = *(v9 - 8);
  v12 = swift_task_alloc();
  (*(v11 + 16))(v12, v10, v9);
  sub_2408D4670();

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v13 = *(v0 + 1120);
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(*(v0 + 536), qword_27E506C48);
  v14 = v13;
  v15 = sub_2408D4B10();
  v16 = sub_2408D4F20();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    v19 = v13;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v20;
    *v18 = v20;
    _os_log_impl(&dword_2407CF000, v15, v16, "Caught Sign In error: %@", v17, 0xCu);
    sub_2407D9440(v18, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v18, -1, -1);
    MEMORY[0x245CC9F60](v17, -1, -1);
  }

  v21 = *(v0 + 1024);
  v22 = *(v0 + 1008);
  v23 = *(v0 + 1000);
  v24 = *(v0 + 992);
  v25 = *(v0 + 960);

  v26 = *(v21 + 16);
  v27 = *(*v26 + *MEMORY[0x277D841D0] + 16);
  v28 = (*(*v26 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v26 + v28));
  sub_24080F060(v26 + v27, v25, &qword_27E507570, &qword_2408D8168);
  v22(v26 + v27, 1, 1, v24);
  os_unfair_lock_unlock((v26 + v28));

  if ((*(v23 + 48))(v25, 1, v24) == 1)
  {
    v29 = *(v0 + 960);

    sub_2407D9440(v29, &qword_27E507570, &qword_2408D8168);
  }

  else
  {
    v30 = *(v0 + 1000);
    v31 = *(v0 + 992);
    v32 = *(v0 + 960);
    *(v0 + 464) = v13;
    v33 = v13;
    sub_2408D4E10();

    (*(v30 + 8))(v32, v31);
  }

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_240844804(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507570, &qword_2408D8168);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v50 - v7;
  v9 = sub_2408D35B0();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2408D3500();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v50 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v50 - v20;
  sub_2408D35C0();
  if ((*(v13 + 48))(v11, 6, v12))
  {
    return sub_240875C68(v11, MEMORY[0x277CED338]);
  }

  v53 = v16;
  v54 = v8;
  v55 = a3;
  (*(v13 + 32))(v21, v11, v12);
  (*(v13 + 104))(v19, *MEMORY[0x277CED270], v12);
  v23 = sub_2408D34F0();
  v24 = *(v13 + 8);
  v24(v19, v12);
  if ((v23 & 1) == 0)
  {
    return (v24)(v21, v12);
  }

  v56 = v24;
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v25 = sub_2408D4B20();
  __swift_project_value_buffer(v25, qword_27E506C48);
  v26 = *(v13 + 16);
  v27 = v53;
  v26(v53, v21, v12);
  v28 = sub_2408D4B10();
  v29 = sub_2408D4F30();
  v30 = os_log_type_enabled(v28, v29);
  v51 = a1;
  v52 = v26;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    sub_2408763D8(qword_27E506DC8, 255, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
    swift_allocError();
    v52(v33, v27, v12);
    v34 = _swift_stdlib_bridgeErrorToNSError();
    v56(v27, v12);
    *(v31 + 4) = v34;
    *v32 = v34;
    _os_log_impl(&dword_2407CF000, v28, v29, "User cancelled during sign in with error: %@", v31, 0xCu);
    sub_2407D9440(v32, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v32, -1, -1);
    v35 = v31;
    v26 = v52;
    MEMORY[0x245CC9F60](v35, -1, -1);
  }

  else
  {

    v56(v27, v12);
  }

  v36 = v55;
  swift_beginAccess();
  *(v36 + 120) = 0;

  v55 = sub_2408763D8(qword_27E506DC8, 255, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
  v37 = swift_allocError();
  v26(v38, v21, v12);
  sub_24083B174(v37);

  v39 = *(v57 + 16);
  v40 = *(*v39 + *MEMORY[0x277D841D0] + 16);
  v41 = (*(*v39 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v39 + v41));
  v42 = v54;
  sub_24080F060(v39 + v40, v54, &qword_27E507570, &qword_2408D8168);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507560, &qword_2408D8130);
  v44 = *(v43 - 8);
  (*(v44 + 56))(v39 + v40, 1, 1, v43);
  os_unfair_lock_unlock((v39 + v41));

  if ((*(v44 + 48))(v42, 1, v43) == 1)
  {
    sub_2407D9440(v42, &qword_27E507570, &qword_2408D8168);
  }

  else
  {
    v45 = swift_allocError();
    v52(v46, v21, v12);
    v58 = v45;
    sub_2408D4E10();
    (*(v44 + 8))(v42, v43);
  }

  v47 = __swift_project_boxed_opaque_existential_1(v51, v51[3]);
  MEMORY[0x28223BE20](v47);
  (*(v49 + 16))(&v50 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2408D4670();
  return (v56)(v21, v12);
}

uint64_t sub_240844F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_240844F74, a2, 0);
}

uint64_t sub_240844F74()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_240845014;
  v2 = v0[4];
  v3 = v0[2];

  return sub_240802688(v3, v2);
}

uint64_t sub_240845014()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_240845108(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for AIDAServiceType(0);
  v4 = v3;
  v5 = sub_2408763D8(&qword_28130EF80, 255, type metadata accessor for AIDAServiceType, &unk_2408D65CC);
  v6 = 0;
  v13[1] = MEMORY[0x245CC9340](v2, v4, v5);
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = v6;
LABEL_9:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    sub_24086A4D4(v13, *(*(a1 + 48) + ((v11 << 9) | (8 * v12))));
  }

  while (1)
  {
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      return;
    }

    v9 = *(a1 + 64 + 8 * v11);
    ++v6;
    if (v9)
    {
      v6 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_240845250(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_2408D3990();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v5 = sub_2408D4B20();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v6 = sub_2408D3500();
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506AB8, &qword_2408D7F20);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24084545C, v2, 0);
}

uint64_t sub_24084545C()
{
  v1 = v0[7];
  v2 = v0[8];
  *(v2 + 208) = v1;

  sub_2408D34B0();
  swift_allocObject();
  v0[27] = sub_2408D34C0();
  sub_2408D4A00();
  sub_2408D48E0();
  swift_allocObject();
  v0[28] = sub_2408D48C0();
  sub_2408D48D0();
  v3 = swift_task_alloc();
  v0[29] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[30] = v4;
  v5 = sub_2408D3C80();
  v0[31] = v5;
  *v4 = v0;
  v4[1] = sub_2408455C4;
  v6 = v0[26];

  return MEMORY[0x2821400E8](v6, &unk_2408D7F30, v3, v5);
}

uint64_t sub_2408455C4()
{
  v1 = *(*v0 + 64);

  return MEMORY[0x2822009F8](sub_2408456F0, v1, 0);
}

uint64_t sub_2408456F0(uint64_t a1)
{
  v3 = *(v1 + 200);
  v2 = *(v1 + 208);
  sub_2408D48B0();
  sub_2408D34A0();
  sub_2407EEE04(v2, v3, &qword_27E506AB8, &qword_2408D7F20);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v26 = *(v1 + 248);
    v27 = *(v1 + 200);
    v28 = *(v1 + 48);
    sub_2407D9440(*(v1 + 208), &qword_27E506AB8, &qword_2408D7F20);

    (*(*(v26 - 8) + 32))(v28, v27, v26);

    v29 = *(v1 + 8);
LABEL_29:

    return v29();
  }

  v4 = *(v1 + 200);
  v5 = *(v1 + 208);
  v6 = *v4;
  *(v1 + 256) = *v4;
  *(v1 + 16) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
  swift_willThrowTypedImpl();

  sub_2407D9440(v5, &qword_27E506AB8, &qword_2408D7F20);
  *(v1 + 24) = v6;
  v7 = v6;
  if (swift_dynamicCast())
  {
    v9 = *(v1 + 176);
    v8 = *(v1 + 184);
    v10 = *(v1 + 168);
    v11 = *(v1 + 136);
    v12 = *(v1 + 144);

    (*(v12 + 32))(v9, v8, v11);
    sub_2408D4910();
    v13 = *(v12 + 16);
    v13(v10, v9, v11);
    v14 = sub_2408D4B10();
    v15 = sub_2408D4F20();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v1 + 168);
    v19 = *(v1 + 136);
    v18 = *(v1 + 144);
    if (v16)
    {
      v20 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *v20 = 138412290;
      sub_2408763D8(qword_27E506DC8, 255, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
      swift_allocError();
      v21 = v13;
      v13(v22, v17, v19);
      v23 = _swift_stdlib_bridgeErrorToNSError();
      v24 = v17;
      v25 = *(v18 + 8);
      v25(v24, v19);
      *(v20 + 4) = v23;
      *v80 = v23;
      v13 = v21;
      _os_log_impl(&dword_2407CF000, v14, v15, "Repair flow cancelled with %@", v20, 0xCu);
      sub_2407D9440(v80, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v80, -1, -1);
      MEMORY[0x245CC9F60](v20, -1, -1);
    }

    else
    {

      v37 = v17;
      v25 = *(v18 + 8);
      v25(v37, v19);
    }

    v79 = v25;
    v38 = *(v1 + 176);
    v39 = *(v1 + 160);
    v41 = *(v1 + 136);
    v40 = *(v1 + 144);
    v42 = *(*(v1 + 112) + 8);
    v42(*(v1 + 128), *(v1 + 104));
    v13(v39, v38, v41);
    v43 = (*(v40 + 88))(v39, v41);
    v44 = *(v1 + 176);
    if (v43 == *MEMORY[0x277CED2D8] || v43 == *MEMORY[0x277CED270])
    {
      v58 = *(v1 + 136);
      v60 = *(v1 + 80);
      v59 = *(v1 + 88);
      v61 = *(v1 + 72);
      sub_2408763D8(qword_27E506DC8, 255, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
      sub_2408D52B0();
      sub_2408763D8(&qword_27E506AD8, 255, MEMORY[0x277CED460], MEMORY[0x277CED468]);
      swift_allocError();
      (*(v60 + 16))(v62, v59, v61);
      swift_willThrow();
      (*(v60 + 8))(v59, v61);
      v79(v44, v58);
    }

    else
    {
      v81 = v42;
      v45 = *(v1 + 152);
      v46 = *(v1 + 136);
      sub_2408D4910();
      v13(v45, v44, v46);
      v47 = sub_2408D4B10();
      v48 = sub_2408D4F20();
      v49 = os_log_type_enabled(v47, v48);
      v50 = *(v1 + 152);
      v51 = *(v1 + 136);
      if (v49)
      {
        v52 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        *v52 = 138412290;
        sub_2408763D8(qword_27E506DC8, 255, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
        swift_allocError();
        v53 = v13;
        v13(v54, v50, v51);
        v55 = _swift_stdlib_bridgeErrorToNSError();
        v56 = v51;
        v57 = v79;
        v79(v50, v56);
        *(v52 + 4) = v55;
        *v78 = v55;
        v13 = v53;
        _os_log_impl(&dword_2407CF000, v47, v48, "Unexpected %@ throwing as is.", v52, 0xCu);
        sub_2407D9440(v78, &qword_27E506AB0, &unk_2408D6830);
        MEMORY[0x245CC9F60](v78, -1, -1);
        MEMORY[0x245CC9F60](v52, -1, -1);
      }

      else
      {

        v73 = v51;
        v57 = v79;
        v79(v50, v73);
      }

      v74 = *(v1 + 176);
      v75 = *(v1 + 160);
      v76 = *(v1 + 136);
      v81(*(v1 + 120), *(v1 + 104));
      sub_2408763D8(qword_27E506DC8, 255, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
      swift_allocError();
      v13(v77, v74, v76);
      swift_willThrow();
      v57(v74, v76);
      v57(v75, v76);
    }

    v30 = (v1 + 24);
    goto LABEL_28;
  }

  v30 = (v1 + 32);

  *(v1 + 32) = v6;
  v31 = v6;
  if (swift_dynamicCast())
  {
    v33 = *(v1 + 88);
    v32 = *(v1 + 96);
    v35 = *(v1 + 72);
    v34 = *(v1 + 80);

    (*(v34 + 32))(v33, v32, v35);
    sub_2408763D8(&qword_27E506AD8, 255, MEMORY[0x277CED460], MEMORY[0x277CED468]);
    swift_allocError();
    (*(v34 + 16))(v36, v33, v35);
    swift_willThrow();
    (*(v34 + 8))(v33, v35);
LABEL_28:

    v29 = *(v1 + 8);
    goto LABEL_29;
  }

  *(v1 + 40) = v6;
  v63 = v6;
  if (swift_dynamicCast())
  {

    if (qword_27E506930 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v1 + 104), qword_27E507280);
    v64 = sub_2408D4B10();
    v65 = sub_2408D4F10();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_2407CF000, v64, v65, "caught user selected Manual, attempting local repair", v66, 2u);
      MEMORY[0x245CC9F60](v66, -1, -1);
    }

    v67 = swift_task_alloc();
    *(v1 + 288) = v67;
    *v67 = v1;
    v67[1] = sub_240846410;
    v68 = *(v1 + 48);
    v69 = *(v1 + 56);

    return sub_2407D2D20(v68, v69);
  }

  else
  {

    v71 = swift_task_alloc();
    *(v1 + 264) = v71;
    *(v71 + 16) = v6;
    v82 = (*MEMORY[0x277CED860] + MEMORY[0x277CED860]);
    v72 = swift_task_alloc();
    *(v1 + 272) = v72;
    *v72 = v1;
    v72[1] = sub_2408462E8;

    return v82();
  }
}

uint64_t sub_2408462E8()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = sub_240846820;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_240846728;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_240846410()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = sub_240846630;
  }

  else
  {
    v4 = sub_24084653C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24084653C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_240846630()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_240846728(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_240846820()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_240846920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2407DB6F0;

  return sub_2408469E4(a1, a3);
}

uint64_t sub_2408469E4(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = sub_2408D3A30();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507480, &qword_2408D7F40);
  v3[17] = swift_task_alloc();
  v5 = sub_2408D3D60();
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240846B48, v2, 0);
}

uint64_t sub_240846B48()
{
  v1 = v0[13];
  swift_beginAccess();
  v2 = *(v1 + 144);
  v0[22] = v2;
  if (v2)
  {
    v12 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);

    v3 = swift_task_alloc();
    v0[23] = v3;
    *v3 = v0;
    v3[1] = sub_240846DBC;
    v4 = v0[16];

    return v12(v4);
  }

  else
  {
    if (qword_27E506930 != -1)
    {
      swift_once();
    }

    v6 = sub_2408D4B20();
    __swift_project_value_buffer(v6, qword_27E507280);
    v7 = sub_2408D4B10();
    v8 = sub_2408D4F10();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2407CF000, v7, v8, "We do not have a valid connector. Cancelling early.", v9, 2u);
      MEMORY[0x245CC9F60](v9, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507488, &qword_2408D7F48);
    sub_2407D917C(&qword_27E507490, &qword_27E507488, &qword_2408D7F48, &unk_2408D7990);
    swift_allocError();
    *v10 = xmmword_2408D7CC0;
    *(v10 + 16) = 2;
    swift_willThrow();

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_240846DBC()
{
  v1 = *(*v0 + 104);

  return MEMORY[0x2822009F8](sub_240846ECC, v1, 0);
}

uint64_t sub_240846ECC()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v0[5] = sub_2408D3630();
  v0[6] = sub_2408763D8(&qword_27E507498, 255, MEMORY[0x277CED360], &unk_2408D9410);
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_2408D39B0();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[24] = v4;
  *v4 = v0;
  v4[1] = sub_240846FEC;
  v5 = v0[17];

  return sub_2407EF354(v5, (v0 + 2));
}

uint64_t sub_240846FEC()
{
  v1 = *v0;
  v2 = *(*v0 + 104);

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));

  return MEMORY[0x2822009F8](sub_240847104, v2, 0);
}

uint64_t sub_240847104()
{
  v34 = v0;
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2407D9440(v3, &qword_27E507480, &qword_2408D7F40);
    if (qword_27E506930 != -1)
    {
      swift_once();
    }

    v4 = sub_2408D4B20();
    __swift_project_value_buffer(v4, qword_27E507280);

    v5 = sub_2408D4B10();
    v6 = sub_2408D4F30();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[13];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v33 = v9;
      *v8 = 136315138;
      v0[10] = *(v7 + 144);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074A0, &qword_2408D7F50);
      v10 = sub_2408D4D40();
      v12 = sub_2408CC504(v10, v11, &v33);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_2407CF000, v5, v6, "Failed to get role with connector: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x245CC9F60](v9, -1, -1);
      MEMORY[0x245CC9F60](v8, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507488, &qword_2408D7F48);
    sub_2407D917C(&qword_27E507490, &qword_27E507488, &qword_2408D7F48, &unk_2408D7990);
    swift_allocError();
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 2;
    swift_willThrow();

    v14 = v0[1];

    return v14();
  }

  else
  {
    v17 = v0[20];
    v16 = v0[21];
    (*(v2 + 32))(v16, v3, v1);
    (*(v2 + 16))(v17, v16, v1);
    v18 = (*(v2 + 88))(v17, v1);
    if (v18 == *MEMORY[0x277CED560])
    {
      if (qword_27E506930 != -1)
      {
        swift_once();
      }

      v19 = sub_2408D4B20();
      __swift_project_value_buffer(v19, qword_27E507280);
      v20 = sub_2408D4B10();
      v21 = sub_2408D4F10();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_2407CF000, v20, v21, "Repairing up as client", v22, 2u);
        MEMORY[0x245CC9F60](v22, -1, -1);
      }

      v23 = v0[22];

      v32 = sub_240847B44;
      v24 = swift_task_alloc();
      v0[25] = v24;
      *v24 = v0;
      v25 = sub_2408476DC;
    }

    else
    {
      if (v18 != *MEMORY[0x277CED568])
      {
        return sub_2408D5190();
      }

      if (qword_27E506930 != -1)
      {
        swift_once();
      }

      v26 = sub_2408D4B20();
      __swift_project_value_buffer(v26, qword_27E507280);
      v27 = sub_2408D4B10();
      v28 = sub_2408D4F10();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_2407CF000, v27, v28, "Repairing up as server", v29, 2u);
        MEMORY[0x245CC9F60](v29, -1, -1);
      }

      v23 = v0[22];

      v32 = sub_24084E244;
      v24 = swift_task_alloc();
      v0[27] = v24;
      *v24 = v0;
      v25 = sub_24084796C;
    }

    v24[1] = v25;
    v30 = v0[12];
    v31 = v0[11];

    return v32(v31, v30, v23);
  }
}

uint64_t sub_2408476DC()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 104);
  if (v0)
  {
    v4 = sub_2408478C0;
  }

  else
  {
    v4 = sub_240847808;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_240847808()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[18];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2408478C0()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[19];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24084796C()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 104);
  if (v0)
  {
    v4 = sub_240847A98;
  }

  else
  {
    v4 = sub_24087645C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_240847A98()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[19];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_240847B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a2;
  v4[5] = v3;
  v4[3] = a1;
  v7 = sub_2408D3D90();
  v4[6] = v7;
  v4[7] = *(v7 - 8);
  v4[8] = swift_task_alloc();
  v8 = sub_2408D3DA0();
  v4[9] = v8;
  v4[10] = *(v8 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506AB8, &qword_2408D7F20);
  v4[13] = swift_task_alloc();
  v9 = swift_task_alloc();
  v4[14] = v9;
  v4[15] = swift_task_alloc();
  v10 = swift_task_alloc();
  v4[16] = v10;
  *v10 = v4;
  v10[1] = sub_240847D24;

  return sub_240849084(v9, a2, a3);
}

uint64_t sub_240847D24()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_2408482F0;
  }

  else
  {
    v4 = sub_240847E50;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_240847E50()
{
  v1 = v0[14];
  v2 = v0[15];
  swift_storeEnumTagMultiPayload();
  sub_24080F060(v1, v2, &qword_27E506AB8, &qword_2408D7F20);
  if (qword_27E506930 != -1)
  {
    swift_once();
  }

  v3 = sub_2408D4B20();
  v0[18] = __swift_project_value_buffer(v3, qword_27E507280);
  v4 = sub_2408D4B10();
  v5 = sub_2408D4F20();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2407CF000, v4, v5, "Sending finish repair command", v6, 2u);
    MEMORY[0x245CC9F60](v6, -1, -1);
  }

  v7 = v0[5];

  v8 = *(v7 + 200);
  v0[19] = v8;
  if (v8)
  {
    (*(v0[7] + 104))(v0[8], *MEMORY[0x277CED5D0], v0[6]);
    v26 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);

    v9 = swift_task_alloc();
    v0[20] = v9;
    v10 = sub_2408763D8(&qword_27E5074A8, 255, MEMORY[0x277CED5E0], MEMORY[0x277CED5D8]);
    *v9 = v0;
    v9[1] = sub_2408488A0;
    v11 = v0[11];
    v12 = v0[8];
    v13 = v0[6];

    return v26(v11, v12, v13, v10);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507488, &qword_2408D7F48);
    sub_2407D917C(&qword_27E507490, &qword_27E507488, &qword_2408D7F48, &unk_2408D7990);
    v15 = swift_allocError();
    *v16 = xmmword_2408D7CD0;
    *(v16 + 16) = 2;
    swift_willThrow();
    v17 = sub_2408D4B10();
    v18 = sub_2408D4F30();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2407CF000, v17, v18, "Failed to send finish command", v19, 2u);
      MEMORY[0x245CC9F60](v19, -1, -1);
    }

    sub_2407EEE04(v0[15], v0[13], &qword_27E506AB8, &qword_2408D7F20);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v21 = v0[15];
    v22 = v0[13];
    if (EnumCaseMultiPayload == 1)
    {
      v0[2] = *v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
      swift_willThrowTypedImpl();
      sub_2407D9440(v21, &qword_27E506AB8, &qword_2408D7F20);
    }

    else
    {
      v24 = v0[3];
      sub_2407D9440(v0[15], &qword_27E506AB8, &qword_2408D7F20);
      v25 = sub_2408D3C80();
      (*(*(v25 - 8) + 32))(v24, v22, v25);
    }

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_2408482F0()
{
  if (qword_27E506930 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = sub_2408D4B20();
  __swift_project_value_buffer(v2, qword_27E507280);
  v3 = v1;
  v4 = sub_2408D4B10();
  v5 = sub_2408D4F30();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[17];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2407CF000, v4, v5, "Failed to repair as client with error: %@", v7, 0xCu);
    sub_2407D9440(v8, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v8, -1, -1);
    MEMORY[0x245CC9F60](v7, -1, -1);
  }

  v11 = v0[17];
  v12 = v0[15];

  *v12 = v11;
  swift_storeEnumTagMultiPayload();
  if (qword_27E506930 != -1)
  {
    swift_once();
  }

  v0[18] = __swift_project_value_buffer(v2, qword_27E507280);
  v13 = sub_2408D4B10();
  v14 = sub_2408D4F20();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2407CF000, v13, v14, "Sending finish repair command", v15, 2u);
    MEMORY[0x245CC9F60](v15, -1, -1);
  }

  v16 = v0[5];

  v17 = *(v16 + 200);
  v0[19] = v17;
  if (v17)
  {
    (*(v0[7] + 104))(v0[8], *MEMORY[0x277CED5D0], v0[6]);
    v35 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);

    v18 = swift_task_alloc();
    v0[20] = v18;
    v19 = sub_2408763D8(&qword_27E5074A8, 255, MEMORY[0x277CED5E0], MEMORY[0x277CED5D8]);
    *v18 = v0;
    v18[1] = sub_2408488A0;
    v20 = v0[11];
    v21 = v0[8];
    v22 = v0[6];

    return v35(v20, v21, v22, v19);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507488, &qword_2408D7F48);
    sub_2407D917C(&qword_27E507490, &qword_27E507488, &qword_2408D7F48, &unk_2408D7990);
    v24 = swift_allocError();
    *v25 = xmmword_2408D7CD0;
    *(v25 + 16) = 2;
    swift_willThrow();
    v26 = sub_2408D4B10();
    v27 = sub_2408D4F30();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2407CF000, v26, v27, "Failed to send finish command", v28, 2u);
      MEMORY[0x245CC9F60](v28, -1, -1);
    }

    sub_2407EEE04(v0[15], v0[13], &qword_27E506AB8, &qword_2408D7F20);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v30 = v0[15];
    v31 = v0[13];
    if (EnumCaseMultiPayload == 1)
    {
      v0[2] = *v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
      swift_willThrowTypedImpl();
      sub_2407D9440(v30, &qword_27E506AB8, &qword_2408D7F20);
    }

    else
    {
      v33 = v0[3];
      sub_2407D9440(v0[15], &qword_27E506AB8, &qword_2408D7F20);
      v34 = sub_2408D3C80();
      (*(*(v34 - 8) + 32))(v33, v31, v34);
    }

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_2408488A0()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = v2[5];

    v4 = sub_240848C30;
  }

  else
  {
    v3 = v2[5];
    (*(v2[10] + 8))(v2[11], v2[9]);

    v4 = sub_240848A00;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_240848A00()
{
  v4 = (*MEMORY[0x277CED860] + MEMORY[0x277CED860]);
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074B0, &unk_2408D7F70);
  *v1 = v0;
  v1[1] = sub_240848AF8;

  return v4(v0 + 184, sub_240810B34, 0, &unk_2408D78E8, 0, v2);
}

uint64_t sub_240848AF8()
{
  v2 = *v1;

  v3 = *(v2 + 40);
  if (v0)
  {

    v4 = sub_240876460;
  }

  else
  {
    v4 = sub_240848E60;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_240848C30(uint64_t a1)
{
  v2 = v1[21];
  v3 = sub_2408D4B10();
  v4 = sub_2408D4F30();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2407CF000, v3, v4, "Failed to send finish command", v5, 2u);
    MEMORY[0x245CC9F60](v5, -1, -1);
  }

  sub_2407EEE04(v1[15], v1[13], &qword_27E506AB8, &qword_2408D7F20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = v1[15];
  v8 = v1[13];
  if (EnumCaseMultiPayload == 1)
  {
    v1[2] = *v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
    swift_willThrowTypedImpl();
    sub_2407D9440(v7, &qword_27E506AB8, &qword_2408D7F20);
  }

  else
  {
    v10 = v1[3];
    sub_2407D9440(v1[15], &qword_27E506AB8, &qword_2408D7F20);
    v11 = sub_2408D3C80();
    (*(*(v11 - 8) + 32))(v10, v8, v11);
  }

  v9 = v1[1];

  return v9();
}

uint64_t sub_240848E60(uint64_t a1)
{
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F10();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2407CF000, v2, v3, "Successfully sent finish", v4, 2u);
    MEMORY[0x245CC9F60](v4, -1, -1);
  }

  sub_2407EEE04(v1[15], v1[13], &qword_27E506AB8, &qword_2408D7F20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = v1[15];
  v7 = v1[13];
  if (EnumCaseMultiPayload == 1)
  {
    v1[2] = *v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
    swift_willThrowTypedImpl();
    sub_2407D9440(v6, &qword_27E506AB8, &qword_2408D7F20);
  }

  else
  {
    v9 = v1[3];
    sub_2407D9440(v1[15], &qword_27E506AB8, &qword_2408D7F20);
    v10 = sub_2408D3C80();
    (*(*(v10 - 8) + 32))(v9, v7, v10);
  }

  v8 = v1[1];

  return v8();
}

uint64_t sub_240849084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = a3;
  v4[25] = v3;
  v4[22] = a1;
  v4[23] = a2;
  v5 = sub_2408D48A0();
  v4[26] = v5;
  v4[27] = *(v5 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A98, &qword_2408D6828);
  v4[30] = swift_task_alloc();
  v6 = sub_2408D3EC0();
  v4[31] = v6;
  v4[32] = *(v6 - 8);
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v7 = sub_2408D38D0();
  v4[38] = v7;
  v4[39] = *(v7 - 8);
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v8 = sub_2408D3D90();
  v4[42] = v8;
  v4[43] = *(v8 - 8);
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v9 = sub_2408D3DA0();
  v4[46] = v9;
  v4[47] = *(v9 - 8);
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v10 = sub_2408D3D60();
  v4[55] = v10;
  v4[56] = *(v10 - 8);
  v4[57] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E90, &unk_2408D7F80);
  v4[58] = v11;
  v4[59] = *(v11 - 8);
  v4[60] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A30, &qword_2408D6800);
  v4[61] = swift_task_alloc();
  v12 = sub_2408D3970();
  v4[62] = v12;
  v4[63] = *(v12 - 8);
  v4[64] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506A20, &unk_2408D67F0);
  v4[65] = swift_task_alloc();
  v4[66] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240849528, v3, 0);
}

uint64_t sub_240849528()
{
  sub_2408D37F0();
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[62];
  v4 = v0[63];
  (*(v4 + 56))(v1, 0, 1, v3);
  sub_2407EEE04(v1, v2, &unk_27E506A20, &unk_2408D67F0);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_2407D9440(v0[65], &unk_27E506A20, &unk_2408D67F0);
    if (qword_27E506930 != -1)
    {
      swift_once();
    }

    v5 = sub_2408D4B20();
    __swift_project_value_buffer(v5, qword_27E507280);
    v6 = sub_2408D4B10();
    v7 = sub_2408D4F10();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2407CF000, v6, v7, "Repair failed no primary account", v8, 2u);
      MEMORY[0x245CC9F60](v8, -1, -1);
    }

    v9 = v0[66];

    v10 = sub_2408D3990();
    sub_2408763D8(&qword_27E506AD8, 255, MEMORY[0x277CED460], MEMORY[0x277CED468]);
    swift_allocError();
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FC8, &unk_2408D7370);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2408D71B0;
    v14 = *MEMORY[0x277CED1A0];
    *(inited + 32) = *MEMORY[0x277CED1A0];
    v15 = v14;
    v16 = sub_2408737B4(inited, &qword_27E507450, &unk_2408D7EF0);
    swift_setDeallocating();
    sub_240875C68(inited + 32, type metadata accessor for AIDAServiceType);
    *v12 = v16;
    (*(*(v10 - 8) + 104))(v12, *MEMORY[0x277CED448], v10);
    swift_willThrow();
    sub_2407D9440(v9, &unk_27E506A20, &unk_2408D67F0);

    v17 = v0[1];

    return v17();
  }

  else
  {
    (*(v0[63] + 32))(v0[64], v0[65], v0[62]);
    v19 = swift_task_alloc();
    v0[67] = v19;
    *v19 = v0;
    v19[1] = sub_240849A2C;
    v20 = v0[23];

    return sub_240855BAC(v20);
  }
}

uint64_t sub_240849A2C(char a1)
{
  v4 = *v2;
  *(v4 + 544) = v1;

  v5 = *(v4 + 200);
  if (v1)
  {
    v6 = sub_24084A0B0;
  }

  else
  {
    *(v4 + 932) = a1 & 1;
    v6 = sub_240849B6C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_240849B6C()
{
  if (*(v0 + 932) == 1)
  {
    if (qword_27E506930 != -1)
    {
      swift_once();
    }

    v1 = sub_2408D4B20();
    *(v0 + 552) = __swift_project_value_buffer(v1, qword_27E507280);
    v2 = sub_2408D4B10();
    v3 = sub_2408D4F20();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2407CF000, v2, v3, "Connecting transport for repair after user decided to proceed", v4, 2u);
      MEMORY[0x245CC9F60](v4, -1, -1);
    }

    v5 = *(v0 + 488);

    v6 = sub_2408D3630();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    v7 = swift_task_alloc();
    *(v0 + 560) = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A48, &qword_2408D6808);
    *(v0 + 568) = v8;
    v9 = sub_2407D917C(&qword_27E506A50, &qword_27E506A48, &qword_2408D6808, MEMORY[0x277CED890]);
    *v7 = v0;
    v7[1] = sub_24084A28C;
    v10 = *(v0 + 488);

    return MEMORY[0x28213FC20](v10, sub_240811518, 0, sub_24081153C, 0, v8, v6, v9);
  }

  else
  {
    if (qword_27E506930 != -1)
    {
      swift_once();
    }

    v11 = sub_2408D4B20();
    __swift_project_value_buffer(v11, qword_27E507280);
    v12 = sub_2408D4B10();
    v13 = sub_2408D4F30();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2407CF000, v12, v13, "User decided to not proceed with repair, cancelled", v14, 2u);
      MEMORY[0x245CC9F60](v14, -1, -1);
    }

    v15 = *(v0 + 528);
    v17 = *(v0 + 504);
    v16 = *(v0 + 512);
    v18 = *(v0 + 496);

    v19 = sub_2408D3990();
    sub_2408763D8(&qword_27E506AD8, 255, MEMORY[0x277CED460], MEMORY[0x277CED468]);
    swift_allocError();
    (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277CED438], v19);
    swift_willThrow();
    (*(v17 + 8))(v16, v18);
    sub_2407D9440(v15, &unk_27E506A20, &unk_2408D67F0);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_24084A0B0()
{
  v1 = v0[66];
  (*(v0[63] + 8))(v0[64], v0[62]);
  sub_2407D9440(v1, &unk_27E506A20, &unk_2408D67F0);

  v2 = v0[1];

  return v2();
}

uint64_t sub_24084A28C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 576) = v1;

  if (v1)
  {
    v5 = v4[25];
    sub_2407D9440(v4[61], &qword_27E506A30, &qword_2408D6800);
    v6 = sub_24084AA60;
    v7 = v5;
    v8 = 0;
  }

  else
  {
    v4[73] = a1;
    sub_2407D917C(&qword_27E506A58, &qword_27E506A48, &qword_2408D6808, MEMORY[0x277CED898]);
    v9 = sub_2408D4E00();
    v11 = v10;
    v6 = sub_24084A424;
    v7 = v9;
    v8 = v11;
  }

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_24084A424()
{
  v1 = v0[61];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A60, &unk_2408D6810);
  sub_2407D917C(&qword_27E506A68, &qword_27E506A60, &unk_2408D6810, MEMORY[0x277CED540]);
  v2 = sub_2408D4680();
  v0[74] = v2;

  sub_2407D9440(v1, &qword_27E506A30, &qword_2408D6800);
  v3 = swift_task_alloc();
  v0[75] = v3;
  *v3 = v0;
  v3[1] = sub_24084A568;
  v4 = v0[60];

  return sub_2408813B8(v4, v2);
}

uint64_t sub_24084A568()
{
  v2 = *v1;
  *(*v1 + 608) = v0;

  v3 = *(v2 + 200);
  if (v0)
  {
    v4 = sub_24084A874;
  }

  else
  {
    v4 = sub_24084A694;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24084A694()
{
  v0[77] = *(v0[25] + 136);
  v1 = swift_task_alloc();
  v0[78] = v1;
  *v1 = v0;
  v1[1] = sub_24084A748;
  v2 = v0[74];

  return sub_240828170(v2);
}

uint64_t sub_24084A748(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 632) = v1;

  if (v1)
  {
    v5 = v4[25];
    v6 = sub_24084B078;
  }

  else
  {
    v5 = v4[77];
    v4[80] = a1;
    v6 = sub_24084AC3C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24084A874()
{
  v1 = v0[66];
  v3 = v0[63];
  v2 = v0[64];
  v4 = v0[62];

  (*(v3 + 8))(v2, v4);
  sub_2407D9440(v1, &unk_27E506A20, &unk_2408D67F0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24084AA60()
{
  v1 = v0[66];
  (*(v0[63] + 8))(v0[64], v0[62]);
  sub_2407D9440(v1, &unk_27E506A20, &unk_2408D67F0);

  v2 = v0[1];

  return v2();
}

uint64_t sub_24084AC3C()
{
  v1 = v0[25];
  v0[81] = sub_2408709F8(v0[80]);

  return MEMORY[0x2822009F8](sub_24084ACB8, v1, 0);
}

uint64_t sub_24084ACB8()
{
  v1 = v0[24];
  (*(v0[56] + 104))(v0[57], *MEMORY[0x277CED560], v0[55]);

  return MEMORY[0x2822009F8](sub_24084AD40, v1, 0);
}

uint64_t sub_24084AD40()
{
  v1 = *(v0 + 192);
  swift_beginAccess();
  sub_2407EEE04(v1 + 120, v0 + 56, &qword_27E506E98, &qword_2408D7FA0);
  v2 = *(v0 + 80);
  if (v2)
  {
    v3 = __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    *(v0 + 120) = v2;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
    (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, v3, v2);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  }

  else
  {
    sub_2407D9440(v0 + 56, &qword_27E506E98, &qword_2408D7FA0);
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
  }

  v5 = *(v0 + 648);
  v6 = swift_task_alloc();
  *(v0 + 656) = v6;
  *v6 = v0;
  v6[1] = sub_24084AEB4;
  v7 = *(v0 + 480);
  v8 = *(v0 + 456);

  return sub_2408595AC(v8, v7, v0 + 96, v5);
}

uint64_t sub_24084AEB4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[83] = a1;
  v4[84] = v1;

  v5 = v3[57];
  v6 = v3[56];
  v7 = v3[55];
  v8 = v3[25];
  (*(v6 + 8))(v5, v7);

  sub_2407D9440((v4 + 12), &qword_27E507FA0, &qword_2408D7FB0);
  if (v1)
  {
    v9 = sub_24084B490;
  }

  else
  {
    v9 = sub_24084B284;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_24084B078()
{
  v1 = v0[66];
  v3 = v0[63];
  v2 = v0[64];
  v4 = v0[62];
  v6 = v0[59];
  v5 = v0[60];
  v7 = v0[58];

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  sub_2407D9440(v1, &unk_27E506A20, &unk_2408D67F0);

  v8 = v0[1];

  return v8();
}

uint64_t sub_24084B284()
{
  v16 = v0;
  *(v0[25] + 200) = v0[83];
  swift_retain_n();

  v1 = sub_2408D4B10();
  v2 = sub_2408D4F20();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[83];
    v4 = v0[74];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315394;
    v0[20] = v4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A70, qword_2408D75E0);
    v7 = sub_2408D4D40();
    v9 = sub_2408CC504(v7, v8, &v15);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    v0[21] = v3;
    sub_2408D3D80();

    v10 = sub_2408D4D40();
    v12 = sub_2408CC504(v10, v11, &v15);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_2407CF000, v1, v2, "Configuring remote base for external use with model: %s router: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC9F60](v6, -1, -1);
    MEMORY[0x245CC9F60](v5, -1, -1);
  }

  v13 = v0[77];

  return MEMORY[0x2822009F8](sub_24084B69C, v13, 0);
}

uint64_t sub_24084B490()
{
  v1 = v0[66];
  v3 = v0[63];
  v2 = v0[64];
  v4 = v0[62];
  v6 = v0[59];
  v5 = v0[60];
  v7 = v0[58];

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  sub_2407D9440(v1, &unk_27E506A20, &unk_2408D67F0);

  v8 = v0[1];

  return v8();
}

uint64_t sub_24084B69C()
{
  sub_240813A10(v0[74], v0[83]);

  v3 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
  v1 = swift_task_alloc();
  v0[85] = v1;
  *v1 = v0;
  v1[1] = sub_24084B778;

  return v3(sub_240811890, 0);
}

uint64_t sub_24084B778()
{
  v2 = *v1;
  *(*v1 + 688) = v0;

  v3 = *(v2 + 200);
  if (v0)
  {
    v4 = sub_24084BB48;
  }

  else
  {
    v4 = sub_24084B8A4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24084B8A4()
{
  v27 = v0;

  v1 = sub_2408D4B10();
  v2 = sub_2408D4F10();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 664);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v26 = v5;
    *v4 = 136315138;
    *(v0 + 152) = v3;
    sub_2408D3D80();

    v6 = sub_2408D4D40();
    v8 = sub_2408CC504(v6, v7, &v26);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_2407CF000, v1, v2, "Established router for repair: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x245CC9F60](v5, -1, -1);
    MEMORY[0x245CC9F60](v4, -1, -1);
  }

  v9 = *(v0 + 360);
  v10 = *(v0 + 344);
  v11 = *(v0 + 328);
  v12 = *(v0 + 304);
  v13 = *(v0 + 312);
  sub_2408D38F0();
  v14 = sub_2408D38B0();
  v16 = v15;
  v17 = *(v13 + 8);
  *(v0 + 696) = v17;
  *(v0 + 704) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v11, v12);
  *v9 = v14;
  v9[1] = v16;
  *(v0 + 920) = *MEMORY[0x277CED5C8];
  v18 = *(v10 + 104);
  *(v0 + 712) = v18;
  *(v0 + 720) = (v10 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v18(v9);
  v25 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);
  v19 = swift_task_alloc();
  *(v0 + 728) = v19;
  v20 = sub_2408763D8(&qword_27E5074A8, 255, MEMORY[0x277CED5E0], MEMORY[0x277CED5D8]);
  *(v0 + 736) = v20;
  *v19 = v0;
  v19[1] = sub_24084BD60;
  v21 = *(v0 + 432);
  v22 = *(v0 + 360);
  v23 = *(v0 + 336);

  return v25(v21, v22, v23, v20);
}

uint64_t sub_24084BB48()
{
  v1 = v0[66];
  v3 = v0[63];
  v2 = v0[64];
  v4 = v0[62];
  v6 = v0[59];
  v5 = v0[60];
  v7 = v0[58];

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  sub_2407D9440(v1, &unk_27E506A20, &unk_2408D67F0);

  v8 = v0[1];

  return v8();
}

uint64_t sub_24084BD60()
{
  v2 = *v1;
  *(*v1 + 744) = v0;

  v3 = *(v2 + 200);
  if (v0)
  {
    v4 = sub_24084C788;
  }

  else
  {
    v4 = sub_24084BE8C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24084BE8C()
{
  v91 = v0;
  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  v3 = *(v0 + 368);
  v4 = *(v0 + 376);
  v5 = *(v4 + 16);
  *(v0 + 752) = v5;
  *(v0 + 760) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v2, v1, v3);
  v6 = *(v4 + 88);
  *(v0 + 768) = v6;
  *(v0 + 776) = (v4 + 88) & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
  v7 = v6(v2, v3);
  *(v0 + 924) = v7;
  if (v7 == *MEMORY[0x277CED5F0])
  {
    v8 = *(v0 + 424);
    v9 = *(v0 + 368);
    v10 = *(v0 + 376);
    v12 = *(v0 + 288);
    v11 = *(v0 + 296);
    v13 = *(v0 + 248);
    v14 = *(v0 + 256);
    v15 = *(v10 + 96);
    *(v0 + 784) = v15;
    *(v0 + 792) = (v10 + 96) & 0xFFFFFFFFFFFFLL | 0x41D000000000000;
    v15(v8, v9);
    v16 = *(v14 + 32);
    *(v0 + 800) = v16;
    *(v0 + 808) = (v14 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v16(v11, v8, v13);
    v17 = *(v14 + 16);
    *(v0 + 816) = v17;
    *(v0 + 824) = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v17(v12, v11, v13);
    v18 = sub_2408D4B10();
    v19 = sub_2408D4F20();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 288);
    v22 = *(v0 + 248);
    v23 = *(v0 + 256);
    if (v20)
    {
      v24 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v90[0] = v87;
      *v24 = 136315138;
      sub_2408763D8(&qword_27E5074B8, 255, MEMORY[0x277CED610], MEMORY[0x277CED618]);
      v25 = sub_2408D5220();
      v27 = v26;
      v28 = *(v23 + 8);
      v28(v21, v22);
      v29 = sub_2408CC504(v25, v27, v90);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_2407CF000, v18, v19, "Received generated symptom report from connected device: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v87);
      MEMORY[0x245CC9F60](v87, -1, -1);
      MEMORY[0x245CC9F60](v24, -1, -1);
    }

    else
    {

      v28 = *(v23 + 8);
      v28(v21, v22);
    }

    *(v0 + 832) = v28;
    v44 = sub_2408D3EB0();
    *(v0 + 840) = v44;
    v45 = *(v44 + 16);
    *(v0 + 848) = v45;
    if (v45)
    {
      v46 = *(v0 + 208);
      v47 = *(v0 + 216);
      v48 = *(v47 + 16);
      v47 += 16;
      v49 = *(v47 + 64);
      *(v0 + 928) = v49;
      v50 = (v49 + 32) & ~v49;
      *(v0 + 856) = *(v47 + 56);
      *(v0 + 864) = v48;
      *(v0 + 888) = 0;
      v51 = *(v0 + 232);
      *(v0 + 896) = v47 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v48(v51, v44 + v50, v46);
      v52 = swift_task_alloc();
      *(v0 + 904) = v52;
      *v52 = v0;
      v52[1] = sub_24084D8DC;
      v53 = *(v0 + 664);
      v54 = *(v0 + 232);

      return sub_240856D54(v54, v53);
    }

    else
    {

      v63 = sub_2408D4B10();
      v64 = sub_2408D4F20();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&dword_2407CF000, v63, v64, "Generating new symptom report for connected device", v65, 2u);
        MEMORY[0x245CC9F60](v65, -1, -1);
      }

      v86 = *(v0 + 712);
      v66 = *(v0 + 920);
      v67 = *(v0 + 696);
      v68 = *(v0 + 352);
      v69 = *(v0 + 336);
      v70 = *(v0 + 320);
      v71 = *(v0 + 304);

      sub_2408D38F0();
      v72 = sub_2408D38B0();
      v74 = v73;
      v67(v70, v71);
      *v68 = v72;
      v68[1] = v74;
      v86(v68, v66, v69);
      v89 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);
      v75 = swift_task_alloc();
      *(v0 + 872) = v75;
      *v75 = v0;
      v75[1] = sub_24084C9A0;
      v76 = *(v0 + 736);
      v77 = *(v0 + 408);
      v78 = *(v0 + 352);
      v79 = *(v0 + 336);

      return v89(v77, v78, v79, v76);
    }
  }

  else
  {
    v30 = *(v0 + 432);
    v31 = *(v0 + 416);
    v32 = *(v0 + 368);
    v88 = *(*(v0 + 376) + 8);
    v88(*(v0 + 424), v32);
    v5(v31, v30, v32);
    v33 = sub_2408D4B10();
    v34 = sub_2408D4F30();
    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 416);
    if (v35)
    {
      v37 = *(v0 + 384);
      v38 = *(v0 + 368);
      v39 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v90[0] = v85;
      *v39 = 136315138;
      v5(v37, v36, v38);
      v40 = sub_2408D4D40();
      v42 = v41;
      v88(v36, v38);
      v43 = sub_2408CC504(v40, v42, v90);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_2407CF000, v33, v34, "Did not receive symptom report: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v85);
      MEMORY[0x245CC9F60](v85, -1, -1);
      MEMORY[0x245CC9F60](v39, -1, -1);
    }

    else
    {
      v56 = *(v0 + 368);

      v88(v36, v56);
    }

    v57 = *(v0 + 504);
    v83 = *(v0 + 512);
    v84 = *(v0 + 528);
    v58 = *(v0 + 472);
    v81 = *(v0 + 480);
    v82 = *(v0 + 496);
    v80 = *(v0 + 464);
    v59 = *(v0 + 432);
    v60 = *(v0 + 368);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507488, &qword_2408D7F48);
    sub_2407D917C(&qword_27E507490, &qword_27E507488, &qword_2408D7F48, &unk_2408D7990);
    swift_allocError();
    *v61 = xmmword_2408D7CE0;
    *(v61 + 16) = 2;
    swift_willThrow();

    v88(v59, v60);
    (*(v58 + 8))(v81, v80);
    (*(v57 + 8))(v83, v82);
    sub_2407D9440(v84, &unk_27E506A20, &unk_2408D67F0);

    v62 = *(v0 + 8);

    return v62();
  }
}

uint64_t sub_24084C788()
{
  v1 = v0[66];
  v3 = v0[63];
  v2 = v0[64];
  v4 = v0[62];
  v6 = v0[59];
  v5 = v0[60];
  v7 = v0[58];

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  sub_2407D9440(v1, &unk_27E506A20, &unk_2408D67F0);

  v8 = v0[1];

  return v8();
}

uint64_t sub_24084C9A0()
{
  v2 = *v1;
  *(*v1 + 880) = v0;

  v3 = *(v2 + 200);
  if (v0)
  {
    v4 = sub_24084D674;
  }

  else
  {
    v4 = sub_24084CACC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24084CACC()
{
  v99 = v0;
  v1 = *(v0 + 924);
  v2 = *(v0 + 768);
  v3 = *(v0 + 400);
  v4 = *(v0 + 368);
  (*(v0 + 752))(v3, *(v0 + 408), v4);
  if (v2(v3, v4) == v1)
  {
    v5 = *(v0 + 816);
    v6 = *(v0 + 800);
    v7 = *(v0 + 400);
    v9 = *(v0 + 272);
    v8 = *(v0 + 280);
    v10 = *(v0 + 248);
    (*(v0 + 784))(v7, *(v0 + 368));
    v6(v8, v7, v10);
    v5(v9, v8, v10);
    v11 = sub_2408D4B10();
    v12 = sub_2408D4F20();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 832);
    v15 = *(v0 + 272);
    v16 = *(v0 + 248);
    if (v13)
    {
      v95 = *(v0 + 832);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v98[0] = v18;
      *v17 = 136315138;
      sub_2408763D8(&qword_27E5074B8, 255, MEMORY[0x277CED610], MEMORY[0x277CED618]);
      v19 = sub_2408D5220();
      v21 = v20;
      v95(v15, v16);
      v22 = sub_2408CC504(v19, v21, v98);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_2407CF000, v11, v12, "Received new symptom report: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x245CC9F60](v18, -1, -1);
      MEMORY[0x245CC9F60](v17, -1, -1);
    }

    else
    {

      v14(v15, v16);
    }

    v39 = sub_2408D3E70();
    v40 = sub_2408D3E70();
    if (*(v40 + 16) <= *(v39 + 16) >> 3)
    {
      v98[0] = v39;
      sub_24086C360(v40);
    }

    else
    {
      sub_24086C694(v40, v39);
    }

    v49 = *(v0 + 816);
    v50 = *(v0 + 280);
    v51 = *(v0 + 256);
    v92 = *(v0 + 264);
    v53 = *(v0 + 240);
    v52 = *(v0 + 248);
    sub_2408D3EA0();
    v49(v53, v50, v52);
    (*(v51 + 56))(v53, 0, 1, v52);
    sub_2408D3C60();
    v49(v92, v50, v52);
    v54 = sub_2408D4B10();
    v76 = sub_2408D4F10();
    v55 = os_log_type_enabled(v54, v76);
    v88 = *(v0 + 832);
    v56 = *(v0 + 528);
    v57 = *(v0 + 504);
    v58 = *(v0 + 512);
    v97 = *(v0 + 496);
    v93 = *(v0 + 480);
    v94 = *(v0 + 472);
    v90 = *(v0 + 464);
    v59 = *(v0 + 376);
    v84 = *(v0 + 368);
    v86 = *(v0 + 432);
    v80 = *(v0 + 408);
    v82 = *(v0 + 296);
    v78 = *(v0 + 280);
    v60 = *(v0 + 264);
    v61 = *(v0 + 248);
    if (v55)
    {
      v62 = swift_slowAlloc();
      v74 = v56;
      v63 = swift_slowAlloc();
      v98[0] = v63;
      *v62 = 136315138;
      sub_2408763D8(&qword_27E5074B8, 255, MEMORY[0x277CED610], MEMORY[0x277CED618]);
      v72 = v57;
      v73 = v58;
      v64 = sub_2408D5220();
      v66 = v65;
      v88(v60, v61);
      v67 = sub_2408CC504(v64, v66, v98);

      *(v62 + 4) = v67;
      _os_log_impl(&dword_2407CF000, v54, v76, "Successfully generated new symptom report: %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v63);
      MEMORY[0x245CC9F60](v63, -1, -1);
      MEMORY[0x245CC9F60](v62, -1, -1);

      v88(v78, v61);
      v68 = *(v59 + 8);
      v68(v80, v84);
      v88(v82, v61);
      v68(v86, v84);
      (*(v94 + 8))(v93, v90);
      (*(v72 + 8))(v73, v97);
      v69 = v74;
    }

    else
    {

      v88(v60, v61);
      v88(v78, v61);
      v70 = *(v59 + 8);
      v70(v80, v84);
      v88(v82, v61);
      v70(v86, v84);
      (*(v94 + 8))(v93, v90);
      (*(v57 + 8))(v58, v97);
      v69 = v56;
    }

    sub_2407D9440(v69, &unk_27E506A20, &unk_2408D67F0);

    v48 = *(v0 + 8);
  }

  else
  {
    v23 = *(v0 + 752);
    v24 = *(v0 + 408);
    v25 = *(v0 + 392);
    v26 = *(v0 + 368);
    v96 = *(*(v0 + 376) + 8);
    v96(*(v0 + 400), v26);
    v23(v25, v24, v26);
    v27 = sub_2408D4B10();
    v28 = sub_2408D4F30();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = *(v0 + 752);
      v31 = *(v0 + 384);
      v30 = *(v0 + 392);
      v32 = *(v0 + 368);
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v98[0] = v34;
      *v33 = 136315138;
      v29(v31, v30, v32);
      v35 = sub_2408D4D40();
      v37 = v36;
      v96(v30, v32);
      v38 = sub_2408CC504(v35, v37, v98);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_2407CF000, v27, v28, "Repair failed due to unexpected generate symptom report received: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      MEMORY[0x245CC9F60](v34, -1, -1);
      MEMORY[0x245CC9F60](v33, -1, -1);
    }

    else
    {
      v41 = *(v0 + 392);
      v42 = *(v0 + 368);

      v96(v41, v42);
    }

    v43 = *(v0 + 504);
    v89 = *(v0 + 512);
    v91 = *(v0 + 528);
    v44 = *(v0 + 472);
    v85 = *(v0 + 480);
    v87 = *(v0 + 496);
    v81 = *(v0 + 832);
    v83 = *(v0 + 464);
    v79 = *(v0 + 432);
    v45 = *(v0 + 408);
    v46 = *(v0 + 368);
    v75 = *(v0 + 248);
    v77 = *(v0 + 296);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507488, &qword_2408D7F48);
    sub_2407D917C(&qword_27E507490, &qword_27E507488, &qword_2408D7F48, &unk_2408D7990);
    swift_allocError();
    *v47 = xmmword_2408D7CE0;
    *(v47 + 16) = 2;
    swift_willThrow();

    v96(v45, v46);
    v81(v77, v75);
    v96(v79, v46);
    (*(v44 + 8))(v85, v83);
    (*(v43 + 8))(v89, v87);
    sub_2407D9440(v91, &unk_27E506A20, &unk_2408D67F0);

    v48 = *(v0 + 8);
  }

  return v48();
}

uint64_t sub_24084D674()
{
  v10 = v0[104];
  v1 = v0[63];
  v14 = v0[64];
  v15 = v0[66];
  v13 = v0[62];
  v2 = v0[59];
  v11 = v0[58];
  v12 = v0[60];
  v3 = v0[54];
  v5 = v0[46];
  v4 = v0[47];
  v6 = v0[37];
  v7 = v0[31];

  v10(v6, v7);
  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v12, v11);
  (*(v1 + 8))(v14, v13);
  sub_2407D9440(v15, &unk_27E506A20, &unk_2408D67F0);

  v8 = v0[1];

  return v8();
}

uint64_t sub_24084D8DC(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 933) = a1;
  *(v4 + 912) = v1;

  v5 = *(v3 + 200);
  if (v1)
  {
    v6 = sub_24084DE7C;
  }

  else
  {
    v6 = sub_24084DA14;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24084DA14()
{
  v49 = v0;
  (*(v0 + 864))(*(v0 + 224), *(v0 + 232), *(v0 + 208));
  v1 = sub_2408D4B10();
  v2 = sub_2408D4F10();
  if (os_log_type_enabled(v1, v2))
  {
    v44 = *(v0 + 933);
    v3 = *(v0 + 224);
    v46 = *(v0 + 232);
    v5 = *(v0 + 208);
    v4 = *(v0 + 216);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v48 = v7;
    *v6 = 136315394;
    sub_2408763D8(&qword_27E506A38, 255, MEMORY[0x277CEDDC0], MEMORY[0x277CEDDD8]);
    v8 = sub_2408D5220();
    v10 = v9;
    v11 = *(v4 + 8);
    v11(v3, v5);
    v12 = sub_2408CC504(v8, v10, &v48);

    *(v6 + 4) = v12;
    *(v6 + 12) = 1024;
    *(v6 + 14) = v44;
    _os_log_impl(&dword_2407CF000, v1, v2, "Repaired symptom: %s with result: %{BOOL}d", v6, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x245CC9F60](v7, -1, -1);
    MEMORY[0x245CC9F60](v6, -1, -1);

    v11(v46, v5);
  }

  else
  {
    v14 = *(v0 + 224);
    v13 = *(v0 + 232);
    v15 = *(v0 + 208);
    v16 = *(v0 + 216);

    v17 = *(v16 + 8);
    v17(v14, v15);
    v17(v13, v15);
  }

  v18 = *(v0 + 888) + 1;
  if (v18 == *(v0 + 848))
  {

    v19 = sub_2408D4B10();
    v20 = sub_2408D4F20();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2407CF000, v19, v20, "Generating new symptom report for connected device", v21, 2u);
      MEMORY[0x245CC9F60](v21, -1, -1);
    }

    v45 = *(v0 + 712);
    v22 = *(v0 + 920);
    v23 = *(v0 + 696);
    v24 = *(v0 + 352);
    v25 = *(v0 + 336);
    v26 = *(v0 + 320);
    v27 = *(v0 + 304);

    sub_2408D38F0();
    v28 = sub_2408D38B0();
    v30 = v29;
    v23(v26, v27);
    *v24 = v28;
    v24[1] = v30;
    v45(v24, v22, v25);
    v47 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);
    v31 = swift_task_alloc();
    *(v0 + 872) = v31;
    *v31 = v0;
    v31[1] = sub_24084C9A0;
    v32 = *(v0 + 736);
    v33 = *(v0 + 408);
    v34 = *(v0 + 352);
    v35 = *(v0 + 336);

    return v47(v33, v34, v35, v32);
  }

  else
  {
    *(v0 + 888) = v18;
    v37 = *(v0 + 864);
    v38 = *(v0 + 232);
    v39 = *(v0 + 208);
    v40 = *(v0 + 840) + ((*(v0 + 928) + 32) & ~*(v0 + 928)) + *(v0 + 856) * v18;
    *(v0 + 896) = (*(v0 + 216) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v37(v38, v40, v39);
    v41 = swift_task_alloc();
    *(v0 + 904) = v41;
    *v41 = v0;
    v41[1] = sub_24084D8DC;
    v42 = *(v0 + 664);
    v43 = *(v0 + 232);

    return sub_240856D54(v43, v42);
  }
}

uint64_t sub_24084DE7C()
{
  v1 = *(v0 + 912);
  v2 = v1;
  v3 = sub_2408D4B10();
  v4 = sub_2408D4F30();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 912);
  v7 = *(v0 + 232);
  v8 = *(v0 + 208);
  v9 = (*(v0 + 216) + 8);
  if (v5)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v6;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_2407CF000, v3, v4, "Failed to repair symptom: %@", v10, 0xCu);
    sub_2407D9440(v11, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v11, -1, -1);
    MEMORY[0x245CC9F60](v10, -1, -1);
  }

  else
  {
  }

  (*v9)(v7, v8);
  v14 = *(v0 + 888) + 1;
  if (v14 == *(v0 + 848))
  {

    v15 = sub_2408D4B10();
    v16 = sub_2408D4F20();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2407CF000, v15, v16, "Generating new symptom report for connected device", v17, 2u);
      MEMORY[0x245CC9F60](v17, -1, -1);
    }

    v40 = *(v0 + 712);
    v18 = *(v0 + 920);
    v19 = *(v0 + 696);
    v20 = *(v0 + 352);
    v21 = *(v0 + 336);
    v22 = *(v0 + 320);
    v23 = *(v0 + 304);

    sub_2408D38F0();
    v24 = sub_2408D38B0();
    v26 = v25;
    v19(v22, v23);
    *v20 = v24;
    v20[1] = v26;
    v40(v20, v18, v21);
    v41 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);
    v27 = swift_task_alloc();
    *(v0 + 872) = v27;
    *v27 = v0;
    v27[1] = sub_24084C9A0;
    v28 = *(v0 + 736);
    v29 = *(v0 + 408);
    v30 = *(v0 + 352);
    v31 = *(v0 + 336);

    return v41(v29, v30, v31, v28);
  }

  else
  {
    *(v0 + 888) = v14;
    v33 = *(v0 + 864);
    v34 = *(v0 + 232);
    v35 = *(v0 + 208);
    v36 = *(v0 + 840) + ((*(v0 + 928) + 32) & ~*(v0 + 928)) + *(v0 + 856) * v14;
    *(v0 + 896) = (*(v0 + 216) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v33(v34, v36, v35);
    v37 = swift_task_alloc();
    *(v0 + 904) = v37;
    *v37 = v0;
    v37[1] = sub_24084D8DC;
    v38 = *(v0 + 664);
    v39 = *(v0 + 232);

    return sub_240856D54(v39, v38);
  }
}

uint64_t sub_24084E244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A98, &qword_2408D6828);
  v4[10] = swift_task_alloc();
  v5 = sub_2408D3C80();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v6 = sub_2408D3500();
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5075B0, &qword_2408D81C8);
  v4[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506A20, &unk_2408D67F0);
  v4[21] = swift_task_alloc();
  v7 = sub_2408D38D0();
  v4[22] = v7;
  v4[23] = *(v7 - 8);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v8 = sub_2408D3EC0();
  v4[26] = v8;
  v4[27] = *(v8 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v9 = sub_2408D3A30();
  v4[30] = v9;
  v4[31] = *(v9 - 8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5075B8, &unk_2408D81D0);
  v4[35] = v10;
  v4[36] = *(v10 - 8);
  v4[37] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5075C0, &qword_2408D90A0);
  v4[38] = v11;
  v4[39] = *(v11 - 8);
  v4[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507328, &qword_2408D7900);
  v4[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24084E67C, v3, 0);
}

uint64_t sub_24084E67C()
{
  v1 = v0[41];
  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[35];
  v5 = v0[9];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507320, qword_2408D77F0);
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  *(swift_task_alloc() + 16) = v1;
  (*(v3 + 104))(v2, *MEMORY[0x277D858A0], v4);
  sub_2408D4EC0();

  v7 = *(*v5 + 200);
  swift_beginAccess();
  sub_240876008(v1, v5 + v7, &qword_27E507328, &qword_2408D7900);
  swift_endAccess();
  if (qword_27E506930 != -1)
  {
    swift_once();
  }

  v8 = sub_2408D4B20();
  v0[42] = __swift_project_value_buffer(v8, qword_27E507280);
  v9 = sub_2408D4B10();
  v10 = sub_2408D4F20();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2407CF000, v9, v10, "Checking to see if we need to continue to repair", v11, 2u);
    MEMORY[0x245CC9F60](v11, -1, -1);
  }

  v15 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v12 = swift_task_alloc();
  v0[43] = v12;
  *v12 = v0;
  v12[1] = sub_24084E910;
  v13 = v0[34];

  return v15(v13);
}

uint64_t sub_24084E910()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x2822009F8](sub_24084EA20, v1, 0);
}

uint64_t sub_24084EA20()
{
  v1 = swift_task_alloc();
  v0[44] = v1;
  *v1 = v0;
  v1[1] = sub_24084EAC0;
  v2 = v0[34];
  v3 = v0[29];

  return sub_2407D5F4C(v3, v2);
}

uint64_t sub_24084EAC0()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 72);
  if (v0)
  {
    v4 = sub_24084F310;
  }

  else
  {
    v4 = sub_24084EBEC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24084EBEC()
{
  v72 = v0;
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[30];
  v4 = v0[31];
  v65 = *(v0[27] + 16);
  v65(v0[28], v0[29], v0[26]);
  v5 = *(v4 + 16);
  v5(v2, v1, v3);
  v6 = sub_2408D4B10();
  v7 = sub_2408D4F20();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[31];
  v66 = v0[30];
  v68 = v0[33];
  v10 = v0[27];
  v11 = v0[28];
  v12 = v0[26];
  if (v8)
  {
    v58 = v0[25];
    v59 = v0[23];
    v60 = v0[22];
    log = v6;
    v13 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v71[0] = v61;
    *v13 = 67109378;
    v14 = sub_2408D3E50() & 1;
    v15 = *(v10 + 8);
    v15(v11, v12);
    v16 = v15;
    *(v13 + 4) = v14;
    *(v13 + 8) = 2080;
    sub_2408D3A10();
    v17 = sub_2408D38B0();
    v19 = v18;
    (*(v59 + 8))(v58, v60);
    v20 = *(v9 + 8);
    v20(v68, v66);
    v21 = sub_2408CC504(v17, v19, v71);

    *(v13 + 10) = v21;
    _os_log_impl(&dword_2407CF000, log, v7, "Repairs needed: %{BOOL}d for altDSID: %s", v13, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v61);
    MEMORY[0x245CC9F60](v61, -1, -1);
    MEMORY[0x245CC9F60](v13, -1, -1);
  }

  else
  {
    v22 = *(v10 + 8);
    v22(v0[28], v0[26]);
    v16 = v22;

    v20 = *(v9 + 8);
    v20(v68, v66);
  }

  v0[46] = v16;
  v0[47] = v20;
  if (sub_2408D3E50())
  {
    v23 = sub_2408D4B10();
    v24 = sub_2408D4F20();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2407CF000, v23, v24, "Continuing to repair", v25, 2u);
      MEMORY[0x245CC9F60](v25, -1, -1);
    }

    v26 = v0[45];

    sub_2408D3A10();
    sub_2408D3920();
    if (v26)
    {

      v27 = 1;
    }

    else
    {
      v27 = 0;
    }

    v53 = v0[29];
    v54 = v0[21];
    (*(v0[23] + 8))(v0[24], v0[22]);
    v55 = sub_2408D3970();
    (*(*(v55 - 8) + 56))(v54, v27, 1, v55);
    v56 = swift_task_alloc();
    v0[48] = v56;
    *(v56 + 16) = v53;
    *(v56 + 24) = v54;
    v70 = (*MEMORY[0x277CED860] + MEMORY[0x277CED860]);
    v57 = swift_task_alloc();
    v0[49] = v57;
    *v57 = v0;
    v57[1] = sub_24084F4AC;

    return v70();
  }

  else
  {
    v5(v0[32], v0[34], v0[30]);
    v28 = sub_2408D4B10();
    v29 = sub_2408D4F10();
    v30 = os_log_type_enabled(v28, v29);
    v31 = v0[31];
    v32 = v0[32];
    v33 = v0[30];
    if (v30)
    {
      v34 = v0[25];
      v67 = v0[30];
      v36 = v0[22];
      v35 = v0[23];
      v62 = v0[31];
      v37 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v71[0] = v69;
      *v37 = 136315138;
      loga = v29;
      sub_2408D3A10();
      sub_2408763D8(&qword_27E506AA0, 255, MEMORY[0x277CED3D8], MEMORY[0x277CED3F0]);
      v38 = sub_2408D5220();
      v40 = v39;
      (*(v35 + 8))(v34, v36);
      v41 = v62 + 8;
      v20(v32, v67);
      v42 = sub_2408CC504(v38, v40, v71);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_2407CF000, v28, loga, "No repairs are neeed for account: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v69);
      MEMORY[0x245CC9F60](v69, -1, -1);
      MEMORY[0x245CC9F60](v37, -1, -1);
    }

    else
    {

      v41 = v31 + 8;
      v20(v32, v33);
    }

    v0[55] = v41;
    v43 = v0[29];
    v44 = v0[26];
    v45 = v0[27];
    v46 = v0[25];
    v47 = v0[22];
    v48 = v0[23];
    v49 = v0[10];
    sub_2408D3A10();
    sub_2408D38B0();
    (*(v48 + 8))(v46, v47);
    v65(v49, v43, v44);
    (*(v45 + 56))(v49, 0, 1, v44);
    sub_2408D3C60();
    v50 = swift_task_alloc();
    v0[56] = v50;
    *v50 = v0;
    v50[1] = sub_24085089C;
    v51 = v0[6];

    return sub_240850B6C(v51);
  }
}