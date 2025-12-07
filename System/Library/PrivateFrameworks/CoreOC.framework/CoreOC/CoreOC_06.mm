uint64_t sub_24600D438()
{
  v1 = v0[14];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[9];
  *(v0[5] + 32) = 1;
  v1(v3, v2, v4);
  v5 = sub_2460918D4();
  v6 = sub_246091FC4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_245F8A000, v5, v6, "    ... completed requestAssets() background task.", v7, 2u);
    MEMORY[0x24C1989D0](v7, -1, -1);
  }

  v8 = v0[16];
  v9 = v0[11];
  v10 = v0[9];

  v8(v9, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_24600D57C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24600D618()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2460113E4;

  return sub_24600CF3C();
}

uint64_t sub_24600D6A8(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_24600D6E8(a1);
  return v2;
}

uint64_t sub_24600D6E8(__int128 *a1)
{
  *(v1 + 16) = 0;
  sub_245F8E624(&qword_27EE3A680, &qword_246098960);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v1 + 24) = v3;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0;
  *(v1 + 32) = 0u;
  sub_246010ED8(a1, v5);
  swift_beginAccess();
  sub_246010E68(v5, v1 + 32);
  swift_endAccess();
  return v1;
}

uint64_t sub_24600D790()
{
  swift_beginAccess();
  if (*(v0 + 56))
  {
    sub_246010EF0(v0 + 32, v5);
    v1 = v6;
    v2 = v7;
    sub_246010F54(v5, v6);
    v3 = (*(v2 + 8))(v1, v2);
    sub_245F8E6F4(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_24600D84C()
{
  v1 = v0[2];
  v2 = *(v1 + 24);
  v0[3] = v2;
  v3 = swift_task_alloc();
  *(v3 + 16) = sub_246010F98;
  *(v3 + 24) = v1;
  os_unfair_lock_lock(v2 + 4);
  sub_24600A938();
  os_unfair_lock_unlock(v2 + 4);

  v5 = v0[2];
  v6 = *(v5 + 16);
  v0[4] = v6;
  if (v6)
  {

    v7 = swift_task_alloc();
    v0[5] = v7;
    v8 = sub_245F8E624(&qword_27EE39F10, &qword_246098FF0);
    *v7 = v0;
    v7[1] = sub_24600DA38;
    v9 = MEMORY[0x277D84950];
    v10 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200430](v8, v6, v10, v8, v9);
  }

  else
  {
    v11 = v0[3];
    v12 = swift_task_alloc();
    *(v12 + 16) = sub_2460113CC;
    *(v12 + 24) = v5;
    os_unfair_lock_lock(v11 + 4);
    sub_24600CC94();
    os_unfair_lock_unlock(v11 + 4);

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_24600DA38()
{
  *(*v1 + 48) = v0;

  if (v0)
  {

    v2 = sub_24600DC28;
  }

  else
  {
    v2 = sub_24600DB54;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24600DB54()
{

  v1 = v0[6];
  v3 = v0[2];
  v2 = v0[3];
  v4 = swift_task_alloc();
  *(v4 + 16) = sub_2460113CC;
  *(v4 + 24) = v3;
  os_unfair_lock_lock(v2 + 4);
  sub_24600CC94();
  os_unfair_lock_unlock(v2 + 4);

  if (!v1)
  {
    v6 = v0[1];

    return v6();
  }

  return result;
}

uint64_t sub_24600DC28()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  *(v3 + 16) = sub_246010FB4;
  *(v3 + 24) = v2;
  os_unfair_lock_lock(v1 + 4);
  sub_24600CC94();
  os_unfair_lock_unlock((v0[3] + 16));

  v4 = v0[1];

  return v4();
}

uint64_t sub_24600DCEC(uint64_t a1)
{
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_245F8E624(&qword_27EE3A778, &qword_246098980);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  if (*(a1 + 16))
  {
    v9 = sub_245FA31EC();
    (*(v3 + 16))(v5, v9, v2);
    v10 = sub_2460918D4();
    v11 = sub_246091FB4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_245F8A000, v10, v11, "    requestAssets() was called while a download task was already active!  Punting new call.", v12, 2u);
      MEMORY[0x24C1989D0](v12, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    sub_246010E14();
    swift_allocError();
    *v13 = 2;
    return swift_willThrow();
  }

  else
  {
    v15 = sub_246091EB4();
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = a1;

    *(a1 + 16) = sub_24600E4D0(0, 0, v8, &unk_246098BB0, v16);
  }
}

uint64_t sub_24600DF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a4;
  v5 = sub_2460918F4();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24600E034, 0, 0);
}

uint64_t sub_24600E034()
{
  v1 = *(v0 + 120);
  swift_beginAccess();
  sub_245F8E7A4(v1 + 32, v0 + 56, &qword_27EE3A770, &qword_246098968);
  if (*(v0 + 80))
  {
    sub_246010ED8((v0 + 56), v0 + 16);
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    sub_246010F54((v0 + 16), v2);
    v18 = (*(v3 + 16) + **(v3 + 16));
    v4 = swift_task_alloc();
    *(v0 + 152) = v4;
    *v4 = v0;
    v4[1] = sub_24600E2E0;

    return v18(v2, v3);
  }

  else
  {
    v7 = *(v0 + 136);
    v6 = *(v0 + 144);
    v8 = *(v0 + 128);
    sub_245F8E744(v0 + 56, &qword_27EE3A770, &qword_246098968);
    v9 = sub_245FA31EC();
    (*(v7 + 16))(v6, v9, v8);
    v10 = sub_2460918D4();
    v11 = sub_246091FB4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_245F8A000, v10, v11, "    Mobile asset provider was unexpectedly nil!", v12, 2u);
      MEMORY[0x24C1989D0](v12, -1, -1);
    }

    v14 = *(v0 + 136);
    v13 = *(v0 + 144);
    v15 = *(v0 + 128);

    (*(v14 + 8))(v13, v15);
    sub_246010E14();
    swift_allocError();
    *v16 = 0;
    swift_willThrow();

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_24600E2E0()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_24600E464;
  }

  else
  {
    v2 = sub_24600E3F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24600E3F4()
{
  sub_245F8E6F4((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24600E464()
{
  sub_245F8E6F4((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24600E4D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_245F8E624(&qword_27EE3A778, &qword_246098980);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_245F8E7A4(a3, v22 - v9, &qword_27EE3A778, &qword_246098980);
  v11 = sub_246091EB4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_245F8E744(v10, &qword_27EE3A778, &qword_246098980);
  }

  else
  {
    sub_246091EA4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_246091E64();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_246091C74() + 32;

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

      sub_245F8E744(a3, &qword_27EE3A778, &qword_246098980);

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

  sub_245F8E744(a3, &qword_27EE3A778, &qword_246098980);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void sub_24600E77C()
{
  v1 = sub_2460918F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 16))
  {

    v5 = sub_245FA31EC();
    (*(v2 + 16))(v4, v5, v1);
    v6 = sub_2460918D4();
    v7 = sub_246091FB4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_245F8A000, v6, v7, "Mobile asset provider download cancel called!", v8, 2u);
      MEMORY[0x24C1989D0](v8, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    sub_245F8E624(&qword_27EE39F10, &qword_246098FF0);
    sub_246091ED4();
  }
}

uint64_t sub_24600E924()
{

  sub_245F8E744(v0 + 32, &qword_27EE3A770, &qword_246098968);

  return swift_deallocClassInstance();
}

uint64_t sub_24600E97C(uint64_t a1)
{
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  swift_weakInit();
  *(v1 + 120) = 0;
  swift_weakAssign();

  return v1;
}

uint64_t sub_24600E9DC()
{
  v1 = v0;
  v2 = sub_245F8E624(&qword_27EE3A778, &qword_246098980);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v29 - v3;
  v5 = sub_2460918F4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v30 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  v11 = sub_245FA31EC();
  v12 = *(v6 + 16);
  v12(v10, v11, v5);
  v13 = sub_2460918D4();
  v14 = sub_246091FA4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = v4;
    v16 = v1;
    v17 = v15;
    *v15 = 0;
    _os_log_impl(&dword_245F8A000, v13, v14, "startDownloadIfNeeded called...", v15, 2u);
    v18 = v17;
    v1 = v16;
    v4 = v29;
    MEMORY[0x24C1989D0](v18, -1, -1);
  }

  v19 = *(v6 + 8);
  v19(v10, v5);
  if (*(v1 + 120))
  {
    v20 = v30;
    v12(v30, v11, v5);
    v21 = sub_2460918D4();
    v22 = sub_246091FC4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_245F8A000, v21, v22, "Detached asset download task already running, not making a new one.", v23, 2u);
      MEMORY[0x24C1989D0](v23, -1, -1);
    }

    return (v19)(v20, v5);
  }

  else
  {
    sub_246091E94();
    v25 = sub_246091EB4();
    (*(*(v25 - 8) + 56))(v4, 0, 1, v25);
    v26 = swift_allocObject();
    swift_weakInit();
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = v26;
    v28 = sub_24600FEA0(0, 0, v4, &unk_246098990, v27);
    sub_245F8E744(v4, &qword_27EE3A778, &qword_246098980);
    *(v1 + 120) = v28;
  }
}

uint64_t sub_24600ED4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[27] = a4;
  v5 = sub_2460918F4();
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24600EE48, 0, 0);
}

uint64_t sub_24600EE48()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[36] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_24600F040;
LABEL_7:

    return MEMORY[0x2822009F8](v3, v2, 0);
  }

  v4 = v0[35];
  v5 = v0[28];
  v6 = v0[29];
  v7 = sub_245FA31EC();
  (*(v6 + 16))(v4, v7, v5);
  v8 = sub_2460918D4();
  v9 = sub_246091FC4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_245F8A000, v8, v9, "Detached task no longer has a downloader object, not starting.", v10, 2u);
    MEMORY[0x24C1989D0](v10, -1, -1);
  }

  v11 = v0[35];
  v12 = v0[28];
  v13 = v0[29];

  (*(v13 + 8))(v11, v12);
  swift_beginAccess();
  v14 = swift_weakLoadStrong();
  v0[46] = v14;
  if (v14)
  {
    v2 = v14;
    v3 = sub_24600FA40;
    goto LABEL_7;
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_24600F040()
{
  *(v0 + 296) = swift_weakLoadStrong();

  return MEMORY[0x2822009F8](sub_24600F0B8, 0, 0);
}

uint64_t sub_24600F0B8()
{
  v1 = v0[37];
  if (!v1)
  {
    v32 = v0[35];
    v33 = v0[28];
    v34 = v0[29];
    v35 = sub_245FA31EC();
    (*(v34 + 16))(v32, v35, v33);
    v36 = sub_2460918D4();
    v37 = sub_246091FC4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_245F8A000, v36, v37, "Detached task no longer has a downloader object, not starting.", v38, 2u);
      MEMORY[0x24C1989D0](v38, -1, -1);
    }

    v39 = v0[35];
    v40 = v0[28];
    v41 = v0[29];

    (*(v41 + 8))(v39, v40);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v0[46] = Strong;
    if (Strong)
    {
      v16 = Strong;
      v17 = sub_24600FA40;
      goto LABEL_17;
    }

    goto LABEL_21;
  }

  swift_beginAccess();
  if (*(v1 + 56))
  {
    sub_246010EF0(v1 + 32, (v0 + 7));
    v2 = v0[10];
    v3 = v0[11];
    sub_246010F54(v0 + 7, v2);
    v4 = (*(v3 + 8))(v2, v3);
    sub_245F8E6F4(v0 + 7);
    if (v4)
    {
      v5 = v0[31];
      v6 = v0[28];
      v7 = v0[29];
      v8 = sub_245FA31EC();
      (*(v7 + 16))(v5, v8, v6);
      v9 = sub_2460918D4();
      v10 = sub_246091FC4();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_245F8A000, v9, v10, "Mobile assets are already available, not requesting again.", v11, 2u);
        MEMORY[0x24C1989D0](v11, -1, -1);
      }

      v12 = v0[31];
      v13 = v0[28];
      v14 = v0[29];

      (*(v14 + 8))(v12, v13);
      swift_beginAccess();
      v15 = swift_weakLoadStrong();
      v0[45] = v15;
      if (v15)
      {
        v16 = v15;
        v17 = sub_24600F9C8;
LABEL_17:

        return MEMORY[0x2822009F8](v17, v16, 0);
      }

LABEL_21:

      v43 = v0[1];

      return v43();
    }
  }

  v18 = v0[34];
  v19 = v0[28];
  v20 = v0[29];
  v21 = sub_245FA31EC();
  v0[38] = v21;
  v22 = *(v20 + 16);
  v0[39] = v22;
  v0[40] = (v20 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v22(v18, v21, v19);
  v23 = sub_2460918D4();
  v24 = sub_246091FC4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_245F8A000, v23, v24, "Task is now requesting mobile assets...", v25, 2u);
    MEMORY[0x24C1989D0](v25, -1, -1);
  }

  v26 = v0[34];
  v27 = v0[28];
  v28 = v0[29];

  v29 = *(v28 + 8);
  v0[41] = v29;
  v29(v26, v27);
  v30 = swift_task_alloc();
  v0[42] = v30;
  *v30 = v0;
  v30[1] = sub_24600F514;

  return sub_24600D82C();
}

uint64_t sub_24600F514()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_24600FAF8;
  }

  else
  {
    v2 = sub_24600F628;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24600F628(__n128 a1)
{
  v2 = *(v1 + 296);
  if (*(v2 + 56) && (sub_246010EF0(v2 + 32, v1 + 16), v3 = *(v1 + 40), v4 = *(v1 + 48), sub_246010F54((v1 + 16), v3), v5 = (*(v4 + 8))(v3, v4), sub_245F8E6F4((v1 + 16)), (v5 & 1) != 0))
  {
    v6 = (v1 + 264);
    (*(v1 + 312))(*(v1 + 264), *(v1 + 304), *(v1 + 224));
    v7 = sub_2460918D4();
    v8 = sub_246091FC4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "Successfully downloaded mobile assets.";
LABEL_7:
      _os_log_impl(&dword_245F8A000, v7, v8, v10, v9, 2u);
      v11 = *v6;
      MEMORY[0x24C1989D0](v9, -1, -1);
      goto LABEL_9;
    }
  }

  else
  {
    v6 = (v1 + 256);
    (*(v1 + 312))(*(v1 + 256), *(v1 + 304), *(v1 + 224), a1);
    v7 = sub_2460918D4();
    v8 = sub_246091FC4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "Failed to download mobile assets.";
      goto LABEL_7;
    }
  }

  v11 = *v6;
LABEL_9:
  v12 = *(v1 + 328);
  v13 = *(v1 + 224);

  v12(v11, v13);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v1 + 352) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_24600F8A8, Strong, 0);
  }

  else
  {

    v15 = *(v1 + 8);

    return v15();
  }
}

uint64_t sub_24600F8A8()
{
  *(*(v0 + 352) + 120) = 0;

  return MEMORY[0x2822009F8](sub_24600F920, 0, 0);
}

uint64_t sub_24600F920()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24600F9C8()
{
  *(*(v0 + 360) + 120) = 0;

  return MEMORY[0x2822009F8](sub_2460113F0, 0, 0);
}

uint64_t sub_24600FA40()
{
  *(*(v0 + 368) + 120) = 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24600FAF8()
{
  v1 = *(v0 + 344);
  (*(v0 + 312))(*(v0 + 240), *(v0 + 304), *(v0 + 224));
  v2 = v1;
  v3 = sub_2460918D4();
  v4 = sub_246091FB4();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 344);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_245F8A000, v3, v4, "Failed to download mobile assets: %@", v7, 0xCu);
    sub_245F8E744(v8, &qword_27EE3AE80, &qword_246096FA0);
    MEMORY[0x24C1989D0](v8, -1, -1);
    MEMORY[0x24C1989D0](v7, -1, -1);
  }

  else
  {
  }

  (*(v0 + 328))(*(v0 + 240), *(v0 + 224));
  v11 = *(v0 + 296);
  if (*(v11 + 56) && (sub_246010EF0(v11 + 32, v0 + 16), v12 = *(v0 + 40), v13 = *(v0 + 48), sub_246010F54((v0 + 16), v12), v14 = (*(v13 + 8))(v12, v13), sub_245F8E6F4((v0 + 16)), (v14 & 1) != 0))
  {
    v15 = (v0 + 264);
    (*(v0 + 312))(*(v0 + 264), *(v0 + 304), *(v0 + 224));
    v16 = sub_2460918D4();
    v17 = sub_246091FC4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "Successfully downloaded mobile assets.";
LABEL_10:
      _os_log_impl(&dword_245F8A000, v16, v17, v19, v18, 2u);
      v20 = *v15;
      MEMORY[0x24C1989D0](v18, -1, -1);
      goto LABEL_12;
    }
  }

  else
  {
    v15 = (v0 + 256);
    (*(v0 + 312))(*(v0 + 256), *(v0 + 304), *(v0 + 224));
    v16 = sub_2460918D4();
    v17 = sub_246091FC4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "Failed to download mobile assets.";
      goto LABEL_10;
    }
  }

  v20 = *v15;
LABEL_12:
  v21 = *(v0 + 328);
  v22 = *(v0 + 224);

  v21(v20, v22);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 352) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_24600F8A8, Strong, 0);
  }

  else
  {

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_24600FEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_245F8E624(&qword_27EE3A778, &qword_246098980);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_245F8E7A4(a3, v25 - v10, &qword_27EE3A778, &qword_246098980);
  v12 = sub_246091EB4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_245F8E744(v11, &qword_27EE3A778, &qword_246098980);
  }

  else
  {
    sub_246091EA4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_246091E64();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_246091C74() + 32;
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

uint64_t sub_246010160()
{
  if (*(v0 + 120))
  {

    sub_246091ED4();
  }

  *(v0 + 120) = 0;
}

uint64_t sub_2460101D4()
{
  swift_weakDestroy();

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_246010220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_2460922F4();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_246010320, 0, 0);
}

uint64_t sub_246010320()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_246092304();
  v5 = sub_246011370(&qword_27EE3A788, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_246092434();
  sub_246011370(&qword_27EE3A790, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_246092314();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_2460104B0;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_2460104B0()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24601066C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_24601066C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2460106D8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2460107D0;

  return v6(a1);
}

uint64_t sub_2460107D0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2460108C8()
{
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_245FA31EC();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_2460918D4();
  v6 = sub_246091FA4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_245F8A000, v5, v6, "Checking availability of mobile assets from CorePhotogrammetry...", v7, 2u);
    MEMORY[0x24C1989D0](v7, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return CPGCheckPhotogrammetryAssetsAvailability();
}

uint64_t sub_246010A1C()
{
  v1 = sub_2460918F4();
  v0[3] = v1;
  v0[4] = *(v1 - 8);
  v0[5] = swift_task_alloc();
  v0[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_246010B10, 0, 0);
}

uint64_t sub_246010B10()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = sub_245FA31EC();
  v5 = *(v3 + 16);
  v5(v1, v4, v2);
  v6 = sub_2460918D4();
  v7 = sub_246091FA4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_245F8A000, v6, v7, "Requesting download of mobile assets from CorePhotogrammetry...", v8, 2u);
    MEMORY[0x24C1989D0](v8, -1, -1);
  }

  v9 = v0[6];
  v10 = v0[3];
  v11 = v0[4];

  v12 = *(v11 + 8);
  v12(v9, v10);
  v0[2] = 0;
  if (CPGLoadPhotogrammetryAssetsSync())
  {
    v5(v0[5], v4, v0[3]);
    v13 = sub_2460918D4();
    v14 = sub_246091FB4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_245F8A000, v13, v14, "    Failed to download mobile assets!", v15, 2u);
      MEMORY[0x24C1989D0](v15, -1, -1);
    }

    v16 = v0[5];
    v17 = v0[3];

    v12(v16, v17);
    v18 = v0[2];
    if (v18)
    {
      type metadata accessor for CFError(0);
      sub_246011370(&qword_27EE3A798, type metadata accessor for CFError, MEMORY[0x277CC9CB8]);
      v19 = v18;
      swift_allocError();
      *v20 = v19;
    }

    else
    {
      sub_246010E14();
      swift_allocError();
      *v22 = 1;
    }

    swift_willThrow();

    v21 = v0[1];
  }

  else
  {

    v21 = v0[1];
  }

  return v21();
}

unint64_t sub_246010E14()
{
  result = qword_27EE3A768;
  if (!qword_27EE3A768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A768);
  }

  return result;
}

uint64_t sub_246010E68(uint64_t a1, uint64_t a2)
{
  v4 = sub_245F8E624(&qword_27EE3A770, &qword_246098968);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_246010ED8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_246010EF0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_246010F54(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_246010FE4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_246011020()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24600CD4C;

  return sub_24600ED4C(v3, v4, v5, v2);
}

unint64_t sub_2460110B8()
{
  result = qword_27EE3A780;
  if (!qword_27EE3A780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A780);
  }

  return result;
}

uint64_t sub_2460111AC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2460111E4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2460113E4;

  return sub_2460106D8(a1, v4);
}

uint64_t sub_24601129C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2460112DC()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2460113E4;

  return sub_24600DF74(v3, v4, v5, v2);
}

uint64_t sub_246011370(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL sub_2460113F4(CGImage *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2460918C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *MEMORY[0x277CBECE8];
  v9 = sub_246091BD4();
  v10 = CFURLCreateWithFileSystemPath(v8, v9, kCFURLPOSIXPathStyle, 0);

  if (!v10)
  {
    return 0;
  }

  sub_2460918B4();
  sub_2460918A4();
  (*(v5 + 8))(v7, v4);
  v11 = sub_246091BD4();

  v12 = CGImageDestinationCreateWithURL(v10, v11, 1uLL, 0);

  if (v12)
  {
    CGImageDestinationAddImage(v12, a1, 0);
    v13 = CGImageDestinationFinalize(v12);

    v10 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t sub_24601158C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    sub_245F8E624(&qword_27EE3A7A8, &qword_246098C00);
    swift_allocObject();

    v1 = sub_246091944();
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t sub_246011634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2460919F4();
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_246091A64();
  v9 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a3 + 32);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_24601EEA4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858DFDB8;
  v14 = _Block_copy(aBlock);

  sub_246091A14();
  v19 = MEMORY[0x277D84F90];
  sub_24601CC58(&qword_27EE3A380, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680, MEMORY[0x277D83970]);
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v11, v8, v14);
  _Block_release(v14);
  (*(v18 + 8))(v8, v6);
  (*(v9 + 8))(v11, v17);
}

uint64_t sub_24601194C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result;
  return result;
}

uint64_t sub_246011998()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    sub_24601158C();
    sub_245F8E624(&qword_27EE3A7A8, &qword_246098C00);
    sub_245F9218C(&qword_27EE3A7B0, &qword_27EE3A7A8, &qword_246098C00, MEMORY[0x277CBCEB0]);
    v1 = sub_2460919A4();

    *(v0 + 24) = v1;
  }

  return v1;
}

uint64_t ObjectCaptureBundleWriter.__allocating_init(publishers:url:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ObjectCaptureBundleWriter.init(publishers:url:)(a1, a2);
  return v4;
}

uint64_t ObjectCaptureBundleWriter.init(publishers:url:)(uint64_t a1, uint64_t a2)
{
  v187 = a2;
  v183 = a1;
  v189[3] = *MEMORY[0x277D85DE8];
  v3 = sub_245F8E624(&qword_27EE3A7B8, &qword_246098C08);
  v175 = *(v3 - 8);
  v176 = v3;
  MEMORY[0x28223BE20](v3);
  v174 = &v157 - v4;
  v173 = sub_245F8E624(&qword_27EE3A7C0, &qword_246098C10);
  v172 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v171 = &v157 - v5;
  v169 = sub_245F8E624(&qword_27EE3A7C8, &unk_246098C18);
  v168 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v167 = &v157 - v6;
  v166 = sub_245F8E624(&qword_27EE3A660, &qword_2460985D0);
  v165 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v164 = &v157 - v7;
  v163 = sub_245F8E624(&qword_27EE3A668, &qword_2460985D8);
  v162 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v161 = &v157 - v8;
  v9 = sub_245F8E624(&qword_27EE3A670, &qword_2460985E0);
  MEMORY[0x28223BE20](v9 - 8);
  v170 = &v157 - v10;
  v160 = sub_245F8E624(&qword_27EE3A678, &qword_2460985E8);
  v159 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v158 = &v157 - v11;
  *&v186 = sub_2460918F4();
  v181 = *(v186 - 8);
  MEMORY[0x28223BE20](v186);
  v185 = &v157 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_246092034();
  v180 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v179 = &v157 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_246092004();
  MEMORY[0x28223BE20](v14);
  v15 = sub_246091A64();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_245F90360();
  v178 = "aultActor";
  v184 = v2;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  sub_246091A44();
  v189[0] = MEMORY[0x277D84F90];
  sub_24601CC58(&qword_27EE3A9D0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_245F8E624(&unk_27EE3A230, &qword_246096660);
  sub_245F9218C(&qword_27EE3A9E0, &unk_27EE3A230, &qword_246096660, MEMORY[0x277D83970]);
  sub_2460921A4();
  (*(v180 + 104))(v179, *MEMORY[0x277D85260], v182);
  v17 = v184;
  v177 = v16;
  *(v17 + 32) = sub_246092074();
  *(v17 + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_subscriptions) = MEMORY[0x277D84FA0];
  v18 = (v17 + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_completionPromise);
  *v18 = 0;
  v18[1] = 0;
  v19 = v17 + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_sessionMetadata;
  *(v19 + 32) = 0;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  v20 = OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_shotMetadataMap;
  v21 = MEMORY[0x277D84F90];
  *(v17 + v20) = sub_24600A164(MEMORY[0x277D84F90]);
  v22 = OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_shotSquenceIDMap;
  *(v17 + v22) = sub_24601CB78(v21);
  *(v17 + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_sequenceID) = 0;
  v23 = OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_isPeridot;
  *(v17 + v23) = sub_246020934() & 1;
  v24 = OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_url;
  v25 = sub_246091704();
  v26 = *(v25 - 8);
  (*(v26 + 16))(v17 + v24, v187, v25);
  v27 = sub_245FA3174();
  v28 = v181;
  (*(v181 + 16))(v185, v27, v186);

  v29 = sub_2460918D4();
  v30 = sub_246091FC4();

  v31 = os_log_type_enabled(v29, v30);
  v182 = v25;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v180 = v26;
    v34 = v17;
    v35 = v33;
    v189[0] = v33;
    *v32 = 141558275;
    *(v32 + 4) = 1752392040;
    *(v32 + 12) = 2081;
    sub_24601CC58(&qword_27EE3A000, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v36 = sub_2460923D4();
    v38 = sub_245F8D3C0(v36, v37, v189);

    *(v32 + 14) = v38;
    _os_log_impl(&dword_245F8A000, v29, v30, "Bundle Writer: Writer output URL: %{private,mask.hash}s", v32, 0x16u);
    sub_245F8E6F4(v35);
    v39 = v35;
    v17 = v34;
    v26 = v180;
    MEMORY[0x24C1989D0](v39, -1, -1);
    MEMORY[0x24C1989D0](v32, -1, -1);
  }

  (*(v28 + 8))(v185, v186);
  v40 = objc_opt_self();
  v41 = [v40 defaultManager];
  v42 = sub_246091674();
  v189[0] = 0;
  v43 = [v41 createDirectoryAtURL:v42 withIntermediateDirectories:1 attributes:0 error:v189];

  v44 = v189[0];
  if (!v43)
  {
    goto LABEL_27;
  }

  v45 = v189[0];
  v46 = [v40 defaultManager];
  v47 = objc_opt_self();
  sub_245F8E624(&qword_27EE3A218, &qword_246098F60);
  v48 = swift_allocObject();
  v186 = xmmword_246096EF0;
  *(v48 + 16) = xmmword_246096EF0;
  *(v48 + 32) = sub_2460916F4();
  *(v48 + 40) = v49;
  *(v48 + 48) = 0x736567616D69;
  *(v48 + 56) = 0xE600000000000000;
  v50 = sub_246091DB4();

  v51 = [v47 pathWithComponents_];

  if (!v51)
  {
    sub_246091C04();
    v51 = sub_246091BD4();
  }

  v189[0] = 0;
  v52 = [v46 createDirectoryAtPath:v51 withIntermediateDirectories:1 attributes:0 error:v189];

  v53 = v189[0];
  if (!v52)
  {
    goto LABEL_29;
  }

  v54 = v189[0];
  v55 = [v40 defaultManager];
  v56 = swift_allocObject();
  *(v56 + 16) = v186;
  *(v56 + 32) = sub_2460916F4();
  *(v56 + 40) = v57;
  *(v56 + 48) = 0x616D5F6874706564;
  *(v56 + 56) = 0xEA00000000007370;
  v58 = sub_246091DB4();

  v59 = [v47 pathWithComponents_];

  if (!v59)
  {
    sub_246091C04();
    v59 = sub_246091BD4();
  }

  v189[0] = 0;
  v60 = [v55 createDirectoryAtPath:v59 withIntermediateDirectories:1 attributes:0 error:v189];

  v53 = v189[0];
  if (!v60)
  {
    goto LABEL_29;
  }

  v61 = v189[0];
  v62 = [v40 defaultManager];
  v63 = swift_allocObject();
  *(v63 + 16) = v186;
  *(v63 + 32) = sub_2460916F4();
  *(v63 + 40) = v64;
  *(v63 + 48) = 0x6E656469666E6F63;
  *(v63 + 56) = 0xEF7370616D5F6563;
  v65 = sub_246091DB4();

  v66 = [v47 pathWithComponents_];

  if (!v66)
  {
    sub_246091C04();
    v66 = sub_246091BD4();
  }

  v189[0] = 0;
  v67 = [v62 createDirectoryAtPath:v66 withIntermediateDirectories:1 attributes:0 error:v189];

  v53 = v189[0];
  if (!v67)
  {
    goto LABEL_29;
  }

  v68 = v189[0];
  v69 = [v40 defaultManager];
  v70 = swift_allocObject();
  *(v70 + 16) = v186;
  *(v70 + 32) = sub_2460916F4();
  *(v70 + 40) = v71;
  *(v70 + 48) = 0x6775626564;
  *(v70 + 56) = 0xE500000000000000;
  v72 = sub_246091DB4();

  v73 = [v47 pathWithComponents_];

  if (!v73)
  {
    sub_246091C04();
    v73 = sub_246091BD4();
  }

  v189[0] = 0;
  v74 = [v69 createDirectoryAtPath:v73 withIntermediateDirectories:1 attributes:0 error:v189];

  v53 = v189[0];
  if (!v74)
  {
    goto LABEL_29;
  }

  v75 = v189[0];
  v76 = [v40 defaultManager];
  v77 = v184;
  sub_2460168CC();
  v78 = sub_246091BD4();

  v189[0] = 0;
  v79 = [v76 &selRef:v78 setVideoFormat:1, 0, v189 + 1];

  v80 = v189[0];
  if (!v79 || (v81 = v189[0], v82 = [v40 defaultManager], sub_2460168E0(), v83 = sub_246091BD4(), , v189[0] = 0, v84 = objc_msgSend(v82, &selRef_setVideoFormat_ + 1, v83, 1, 0, v189), v82, v83, v80 = v189[0], !v84) || (v85 = v189[0], v86 = objc_msgSend(v40, sel_defaultManager), sub_246016A80(), v87 = sub_246091BD4(), , v189[0] = 0, v88 = objc_msgSend(v86, &selRef_setVideoFormat_ + 1, v87, 1, 0, v189), v86, v87, v80 = v189[0], !v88))
  {
    v156 = v80;
    sub_2460915D4();

    swift_willThrow();
    v17 = v77;
    goto LABEL_30;
  }

  v89 = v189[0];
  v90 = [v40 defaultManager];
  v91 = swift_allocObject();
  *(v91 + 16) = v186;
  *(v91 + 32) = sub_246016A98();
  *(v91 + 40) = v92;
  *(v91 + 48) = 0xD000000000000012;
  *(v91 + 56) = 0x80000002460A1510;
  v93 = sub_246091DB4();

  v94 = [v47 pathWithComponents_];

  if (!v94)
  {
    sub_246091C04();
    v94 = sub_246091BD4();
  }

  v189[0] = 0;
  v95 = [v90 createDirectoryAtPath:v94 withIntermediateDirectories:1 attributes:0 error:v189];

  v53 = v189[0];
  if (!v95)
  {
LABEL_29:
    v154 = v53;
    sub_2460915D4();

    swift_willThrow();
    v17 = v184;
    goto LABEL_30;
  }

  v96 = v189[0];
  v97 = [v40 defaultManager];
  v98 = swift_allocObject();
  *(v98 + 16) = v186;
  v17 = v184;
  *(v98 + 32) = sub_246016A98();
  *(v98 + 40) = v99;
  *(v98 + 48) = 0x736172656D6163;
  *(v98 + 56) = 0xE700000000000000;
  v100 = sub_246091DB4();

  v101 = [v47 pathWithComponents_];

  if (!v101)
  {
    sub_246091C04();
    v101 = sub_246091BD4();
  }

  v189[0] = 0;
  v102 = [v97 createDirectoryAtPath:v101 withIntermediateDirectories:1 attributes:0 error:v189];

  v44 = v189[0];
  if (!v102)
  {
LABEL_27:
    v153 = v44;
LABEL_28:
    sub_2460915D4();

    swift_willThrow();
LABEL_30:

    (*(v26 + 8))(v187, v182);
    return v17;
  }

  v103 = v189[0];
  v104 = [v40 defaultManager];
  sub_246016C4C();
  v105 = sub_246091BD4();

  v189[0] = 0;
  v106 = [v104 createDirectoryAtPath:v105 withIntermediateDirectories:1 attributes:0 error:v189];

  if ((v106 & 1) == 0)
  {
    v153 = v189[0];
    goto LABEL_28;
  }

  v107 = (*(*v183 + 216))(v189[0]);
  v188 = *(v17 + 32);
  v108 = v188;
  v189[0] = v107;
  v181 = sub_246092024();
  v109 = *(v181 - 8);
  v180 = *(v109 + 56);
  v110 = v109 + 56;
  v111 = v170;
  (v180)(v170, 1, 1, v181);
  v157 = v110;
  v112 = v108;
  sub_245F8E624(&qword_27EE3A690, &qword_2460985F0);
  v185 = MEMORY[0x277CBCD90];
  sub_245F9218C(&qword_27EE3A698, &qword_27EE3A690, &qword_2460985F0, MEMORY[0x277CBCD90]);
  *&v186 = sub_24601CC58(&qword_27EE3A6A0, sub_245F90360, MEMORY[0x277D85228]);
  v113 = v158;
  sub_2460919C4();
  sub_245F8E744(v111, &qword_27EE3A670, &qword_2460985E0);

  v114 = swift_allocObject();
  swift_weakInit();
  v115 = swift_allocObject();
  *(v115 + 16) = sub_24601CCD8;
  *(v115 + 24) = v114;
  v179 = MEMORY[0x277CBCD60];
  sub_245F9218C(&qword_27EE3A6A8, &qword_27EE3A678, &qword_2460985E8, MEMORY[0x277CBCD60]);

  v116 = v160;
  sub_2460919B4();

  (*(v159 + 8))(v113, v116);
  v178 = OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_subscriptions;
  swift_beginAccess();
  sub_246091904();
  swift_endAccess();

  v118 = v183;
  v119 = (*(*v183 + 264))(v117);
  v188 = *(v184 + 32);
  v120 = v188;
  v189[0] = v119;
  (v180)(v111, 1, 1, v181);
  v121 = v120;
  sub_245F8E624(&qword_27EE3A6B0, &qword_2460985F8);
  sub_245F9218C(&qword_27EE3A6B8, &qword_27EE3A6B0, &qword_2460985F8, v185);
  v122 = v161;
  sub_2460919C4();
  sub_245F8E744(v111, &qword_27EE3A670, &qword_2460985E0);

  swift_allocObject();
  swift_weakInit();
  sub_245F9218C(&qword_27EE3A6C0, &qword_27EE3A668, &qword_2460985D8, v179);
  v123 = v163;
  sub_2460919B4();

  (*(v162 + 8))(v122, v123);
  swift_beginAccess();
  sub_246091904();
  swift_endAccess();

  v125 = (*(*v118 + 312))(v124);
  v188 = *(v184 + 32);
  v126 = v188;
  v189[0] = v125;
  v127 = v111;
  (v180)(v111, 1, 1, v181);
  v128 = v126;
  sub_245F8E624(&qword_27EE3A6C8, &qword_246098600);
  sub_245F9218C(&qword_27EE3A6D0, &qword_27EE3A6C8, &qword_246098600, v185);
  v129 = v164;
  sub_2460919C4();
  sub_245F8E744(v111, &qword_27EE3A670, &qword_2460985E0);

  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();
  sub_245F9218C(&qword_27EE3A6D8, &qword_27EE3A660, &qword_2460985D0, v179);
  v130 = v166;
  sub_2460919B4();

  (*(v165 + 8))(v129, v130);
  swift_beginAccess();
  sub_246091904();
  swift_endAccess();

  v132 = v183;
  v133 = (*(*v183 + 360))(v131);
  v188 = *(v184 + 32);
  v134 = v188;
  v189[0] = v133;
  (v180)(v127, 1, 1, v181);
  v135 = v134;
  sub_245F8E624(&qword_27EE3A7D0, &qword_246098C28);
  sub_245F9218C(&qword_27EE3A7D8, &qword_27EE3A7D0, &qword_246098C28, v185);
  v136 = v167;
  sub_2460919C4();
  v137 = v127;
  sub_245F8E744(v127, &qword_27EE3A670, &qword_2460985E0);

  swift_allocObject();
  swift_weakInit();
  sub_245F9218C(&qword_27EE3A7E0, &qword_27EE3A7C8, &unk_246098C18, v179);
  v138 = v169;
  sub_2460919D4();

  (*(v168 + 8))(v136, v138);
  swift_beginAccess();
  sub_246091904();
  swift_endAccess();

  v140 = v132;
  v141 = (*(*v132 + 408))(v139);
  v188 = *(v184 + 32);
  v142 = v188;
  v189[0] = v141;
  v143 = v137;
  (v180)(v137, 1, 1, v181);
  v144 = v142;
  sub_245F8E624(&qword_27EE3A7E8, &qword_246098C30);
  sub_245F9218C(&qword_27EE3A7F0, &qword_27EE3A7E8, &qword_246098C30, v185);
  v145 = v171;
  sub_2460919C4();
  sub_245F8E744(v137, &qword_27EE3A670, &qword_2460985E0);

  swift_allocObject();
  swift_weakInit();
  sub_245F9218C(&qword_27EE3A7F8, &qword_27EE3A7C0, &qword_246098C10, v179);
  v146 = v173;
  sub_2460919D4();

  (*(v172 + 8))(v145, v146);
  swift_beginAccess();
  sub_246091904();
  swift_endAccess();

  v148 = (*(*v140 + 504))(v147);
  v188 = *(v184 + 32);
  v149 = v188;
  v189[0] = v148;
  (v180)(v137, 1, 1, v181);
  v150 = v149;
  sub_245F8E624(&qword_27EE3A800, &qword_246098C38);
  sub_245F9218C(&qword_27EE3A808, &qword_27EE3A800, &qword_246098C38, v185);
  v151 = v174;
  sub_2460919C4();
  sub_245F8E744(v143, &qword_27EE3A670, &qword_2460985E0);
  v17 = v184;

  swift_allocObject();
  swift_weakInit();

  sub_245F9218C(&qword_27EE3A810, &qword_27EE3A7B8, &qword_246098C08, v179);
  v152 = v176;
  sub_2460919D4();

  (*(v175 + 8))(v151, v152);
  swift_beginAccess();
  sub_246091904();
  swift_endAccess();

  (*(v26 + 8))(v187, v182);
  return v17;
}

uint64_t sub_246013988(__int128 *a1, double *a2, uint64_t a3)
{
  v43 = a2;
  v4 = sub_2460919F4();
  v41 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v39 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_246091A64();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  v42 = *(v7 - 8);
  v8 = *(v42 + 64);
  MEMORY[0x28223BE20](v7);
  v9 = sub_246091A04();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_245F8E624(&qword_27EE3ACE0, &unk_246098880);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v36 - v14;
  v16 = a1[1];
  v46 = *a1;
  v47 = v16;
  v48 = *(a1 + 4);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    v36 = v4;
    v19 = *v43;
    sub_24600B080(v43, v15);
    (*(v42 + 56))(v15, 0, 1, v7);
    swift_beginAccess();
    sub_245FFFC14(v15, v19);
    swift_endAccess();
    v20 = *&v46;
    v21 = OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_sequenceID;
    v22 = *(v18 + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_sequenceID);
    v23 = OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_shotSquenceIDMap;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44[0] = *(v18 + v23);
    *(v18 + v23) = 0x8000000000000000;
    sub_24601A908(v22, isUniquelyReferenced_nonNull_native, v20);
    *(v18 + v23) = v44[0];
    result = swift_endAccess();
    v25 = *(v18 + v21);
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (v26)
    {
      __break(1u);
    }

    else
    {
      *(v18 + v21) = v27;
      sub_245F90360();
      (*(v10 + 104))(v12, *MEMORY[0x277D851C8], v9);
      v28 = sub_246092084();
      (*(v10 + 8))(v12, v9);
      sub_24600B080(v43, &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      v29 = (*(v42 + 80) + 64) & ~*(v42 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = v18;
      v31 = v47;
      *(v30 + 24) = v46;
      *(v30 + 40) = v31;
      *(v30 + 56) = v48;
      sub_24600BE48(&v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29);
      aBlock[4] = sub_24601EDF4;
      aBlock[5] = v30;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_245F913A4;
      aBlock[3] = &unk_2858DFD68;
      v32 = _Block_copy(aBlock);

      sub_24600C978(&v46, v44);
      v33 = v37;
      sub_246091A14();
      v44[0] = MEMORY[0x277D84F90];
      sub_24601CC58(&qword_27EE3A380, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      sub_245F8E624(&qword_27EE39F38, &qword_246096680);
      sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680, MEMORY[0x277D83970]);
      v34 = v39;
      v35 = v36;
      sub_2460921A4();
      MEMORY[0x24C1969D0](0, v33, v34, v32);
      _Block_release(v32);

      (*(v41 + 8))(v34, v35);
      (*(v38 + 8))(v33, v40);
    }
  }

  return result;
}

void sub_246013FCC(uint64_t a1, uint64_t a2, double *a3)
{
  v6 = sub_2460918F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_shotSquenceIDMap;
  swift_beginAccess();
  v11 = *(a1 + v10);
  if (*(v11 + 16))
  {
    v12 = *a2;
    v13 = sub_24600790C(*a2);
    if (v14)
    {
      v55 = v7;
      v15 = *(*(v11 + 56) + 8 * v13);
      sub_246016DEC(v15, v12);
      v16 = sub_246091BD4();

      v17 = v16;
      v56 = v16;
      [v17 UTF8String];
      savePixelBufferToJpeg();
      v18 = *(a2 + 16);
      if (v18)
      {
        v19 = v18;
        sub_246016E0C(v15, v12);
        v20 = sub_246091BD4();

        v21 = v19;
        [v20 UTF8String];
        savePixelBufferFloat32ToTiff();
      }

      v22 = *(a2 + 24);
      if (v22)
      {
        v23 = v22;
        sub_246016E38(v15, v12);
        v24 = sub_246091BD4();

        v25 = v23;
        [v24 UTF8String];
        savePixelBufferOneComponent8ToPng();
      }

      v26 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
      v27 = a3 + v26[7];
      v28 = *(v27 + 7);
      v61[6] = *(v27 + 6);
      v61[7] = v28;
      v62 = *(v27 + 8);
      v63 = v27[144];
      v29 = *(v27 + 3);
      v61[2] = *(v27 + 2);
      v61[3] = v29;
      v30 = *(v27 + 5);
      v61[4] = *(v27 + 4);
      v61[5] = v30;
      v31 = *v27;
      v61[1] = *(v27 + 1);
      v61[0] = v31;
      if (sub_245F97C14(v61) == 1 || v63 == 1)
      {
        v32 = a3 + v26[8];
        if (v32[73] & 1) != 0 || (v32[72])
        {
          v33 = -1;
        }

        else
        {
          v33 = *(v32 + 8);
        }
      }

      else
      {
        v33 = *(&v62 + 1);
      }

      v34 = *a3;
      v35 = sub_246017284(v15, *a3);
      v37 = v36;
      memcpy(v59, a3 + 2, 0x188uLL);
      memcpy(v58, a3 + 2, 0x188uLL);
      sub_24601E2C0(v59, v57);
      LOBYTE(v35) = sub_24601CFEC(a3 + 1, v33, v35, v37, v34);

      memcpy(v60, v58, 0x188uLL);
      sub_24601E31C(v60);
      if ((v35 & 1) == 0)
      {
        v38 = sub_245FA3174();
        v39 = v55;
        (*(v55 + 16))(v9, v38, v6);
        v40 = sub_2460918D4();
        v41 = sub_246091FB4();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          _os_log_impl(&dword_245F8A000, v40, v41, "Bundle Writer: Failed to write shot camera to bundle!", v42, 2u);
          v43 = v42;
          v39 = v55;
          MEMORY[0x24C1989D0](v43, -1, -1);
        }

        (*(v39 + 8))(v9, v6);
      }

      sub_246019EA8(a3);
      v44 = sub_24601686C(v58);
      v45 = sub_246014518(v57, v34);
      v47 = v46;
      v48 = *(*(v26 - 1) + 48);
      if (!v48(v46, 1, v26))
      {
        *(v47 + v26[13]) = MEMORY[0x277D84F90];
      }

      (v45)(v57, 0);
      (v44)(v58, 0);
      v49 = sub_24601686C(v58);
      v50 = sub_246014518(v57, v34);
      v52 = v51;
      if (!v48(v51, 1, v26))
      {
        v53 = v26[11];
        v54 = *(v52 + v53);
        *(v52 + v53) = 0;
      }

      (v50)(v57, 0);
      (v49)(v58, 0);
    }
  }
}

uint64_t (*sub_246014518(uint64_t **a1, double a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_24601AB7C(v4, a2);
  return sub_246014598;
}

void sub_246014598(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_2460145E4(double *a1, uint64_t a2)
{
  v3 = sub_245F8E624(&qword_27EE3ACE0, &unk_246098880);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9[-v4];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = *a1;
    sub_24600B080(a1, v5);
    v8 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
    (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
    swift_beginAccess();
    sub_245FFFC14(v5, v7);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_24601471C(void **a1, uint64_t a2)
{
  v3 = sub_245F8E624(&qword_27EE3A858, &unk_246098D80);
  MEMORY[0x28223BE20](v3);
  v5 = (&v39 - v4);
  v6 = sub_2460918F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  v16 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    if (sub_2460176FC())
    {
      sub_246019040();
      if (v19)
      {
        if (sub_246019814())
        {
          v20 = v18 + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_completionPromise;
          v21 = *(v18 + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_completionPromise);
          if (v16 == 7)
          {
            if (v21)
            {
              v22 = *(v20 + 8);
              v23 = OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_url;
              v24 = sub_246091704();
              (*(*(v24 - 8) + 16))(v5, v18 + v23, v24);
              swift_storeEnumTagMultiPayload();

LABEL_20:
              v21(v5);
              sub_245FFDCC4(v21, v22);

              return sub_245F8E744(v5, &qword_27EE3A858, &unk_246098D80);
            }
          }

          else if (v21)
          {
            v22 = *(v20 + 8);
            sub_24600CA6C();
            v37 = swift_allocError();
            *v38 = v16;
            *v5 = v37;
            swift_storeEnumTagMultiPayload();
            sub_24601EC28(v21, v22);
            sub_24601EC38(v16);
            goto LABEL_20;
          }
        }

        else
        {
          v33 = sub_245FA3174();
          (*(v7 + 16))(v9, v33, v6);
          v34 = sub_2460918D4();
          v35 = sub_246091FB4();
          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            *v36 = 0;
            _os_log_impl(&dword_245F8A000, v34, v35, "Bundle Writer: Failed to write thumbnail image to bundle!", v36, 2u);
            MEMORY[0x24C1989D0](v36, -1, -1);
          }

          return (*(v7 + 8))(v9, v6);
        }
      }

      else
      {
        v29 = sub_245FA3174();
        (*(v7 + 16))(v12, v29, v6);
        v30 = sub_2460918D4();
        v31 = sub_246091FB4();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&dword_245F8A000, v30, v31, "Bundle Writer: Failed to write cameras with mobileSfM poses to bundle!", v32, 2u);
          MEMORY[0x24C1989D0](v32, -1, -1);
        }

        return (*(v7 + 8))(v12, v6);
      }
    }

    else
    {
      v25 = sub_245FA3174();
      (*(v7 + 16))(v15, v25, v6);
      v26 = sub_2460918D4();
      v27 = sub_246091FB4();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_245F8A000, v26, v27, "Bundle Writer: Failed to write metadata to bundle!", v28, 2u);
        MEMORY[0x24C1989D0](v28, -1, -1);
      }

      return (*(v7 + 8))(v15, v6);
    }
  }

  return result;
}

uint64_t sub_246014BDC(uint64_t a1, uint64_t a2)
{
  v52 = a1;
  v2 = sub_2460919F4();
  v50 = *(v2 - 8);
  v51 = v2;
  MEMORY[0x28223BE20](v2);
  v48 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_246091A64();
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v46 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_246091A04();
  v44 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2460918F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_245F8E624(&unk_27EE3AD50, &unk_24609AD00);
  MEMORY[0x28223BE20](v11);
  v13 = (&v43 - v12);
  v14 = sub_245F8E624(&qword_27EE3A350, &unk_2460969A0);
  v43 = *(v14 - 8);
  v15 = *(v43 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v43 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    sub_245F8E7A4(v52, v13, &unk_27EE3AD50, &unk_24609AD00);
    v52 = *v13;
    v22 = *(v13 + *(v11 + 64));
    sub_245FC5914(v13 + *(v11 + 48), v19, &qword_27EE3A350, &unk_2460969A0);
    v23 = OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_shotSquenceIDMap;
    swift_beginAccess();
    v24 = *(v21 + v23);
    v25 = v19;
    if (*(v24 + 16) && (v26 = sub_24600790C(v22), (v27 & 1) != 0))
    {
      v28 = *(*(v24 + 56) + 8 * v26);
      sub_245F90360();
      v29 = v44;
      v30 = v45;
      (*(v44 + 104))(v6, *MEMORY[0x277D851C8], v45);
      v31 = sub_246092084();
      (*(v29 + 8))(v6, v30);
      sub_245F8E7A4(v25, v16, &qword_27EE3A350, &unk_2460969A0);
      v32 = v25;
      v33 = (*(v43 + 80) + 40) & ~*(v43 + 80);
      v34 = swift_allocObject();
      *(v34 + 2) = v21;
      v34[3] = v22;
      *(v34 + 4) = v28;
      sub_245FC5914(v16, v34 + v33, &qword_27EE3A350, &unk_2460969A0);
      *(v34 + ((v15 + v33 + 7) & 0xFFFFFFFFFFFFFFF8)) = v52;
      aBlock[4] = sub_24601EB84;
      aBlock[5] = v34;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_245F913A4;
      aBlock[3] = &unk_2858DFD18;
      v35 = _Block_copy(aBlock);

      v36 = v46;
      sub_246091A14();
      v53 = MEMORY[0x277D84F90];
      sub_24601CC58(&qword_27EE3A380, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      sub_245F8E624(&qword_27EE39F38, &qword_246096680);
      sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680, MEMORY[0x277D83970]);
      v37 = v48;
      v38 = v51;
      sub_2460921A4();
      MEMORY[0x24C1969D0](0, v36, v37, v35);
      _Block_release(v35);

      (*(v50 + 8))(v37, v38);
      (*(v47 + 8))(v36, v49);
      sub_245F8E744(v32, &qword_27EE3A350, &unk_2460969A0);
    }

    else
    {

      v39 = sub_245FA3174();
      (*(v8 + 16))(v10, v39, v7);
      v40 = sub_2460918D4();
      v41 = sub_246091FB4();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_245F8A000, v40, v41, "Bundle Writer: Failed to get sequence id for plane!", v42, 2u);
        MEMORY[0x24C1989D0](v42, -1, -1);
      }

      (*(v8 + 8))(v10, v7);
      return sub_245F8E744(v19, &qword_27EE3A350, &unk_2460969A0);
    }
  }

  return result;
}

void sub_246015340(double a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v121 = a4;
  v126 = *MEMORY[0x277D85DE8];
  v8 = sub_2460918F4();
  v9 = *(v8 - 8);
  v103 = v8;
  v104 = v9;
  MEMORY[0x28223BE20](v8);
  v102 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_246091704();
  v100 = *(v11 - 8);
  v101 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_246091834();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v117 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v116 = &v98 - v18;
  v19 = sub_245F8E624(&qword_27EE3A350, &unk_2460969A0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v98 - v20;
  sub_246017098(a3, a1);
  v105 = sub_246091BD4();

  v113 = sub_245F8E624(&qword_27EE3A440, &unk_2460979E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_246096460;
  *(inited + 32) = 0x64657463656C6573;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 72) = sub_245F8E624(&qword_27EE3A850, &unk_246098D70);
  sub_245F8E7A4(v121, v21, &qword_27EE3A350, &unk_2460969A0);
  v23 = (*(v15 + 48))(v21, 1, v14);
  v99 = v13;
  if (v23 == 1)
  {
    sub_245F8E744(v21, &qword_27EE3A350, &unk_2460969A0);
    v24 = 0;
    v25 = 0;
  }

  else
  {
    v24 = sub_2460917F4();
    v25 = v26;
    (*(v15 + 8))(v21, v14);
  }

  *(inited + 48) = v24;
  *(inited + 56) = v25;
  v121 = sub_245F8E498(inited);
  swift_setDeallocating();
  sub_245F8E744(inited + 32, &qword_27EE39EF8, &unk_246096ED0);
  v27 = a5 + 64;
  v28 = 1 << *(a5 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(a5 + 64);
  v31 = (v28 + 63) >> 6;
  v114 = v15 + 32;
  v115 = v15 + 16;
  v106 = (v15 + 8);

  v32 = 0;
  v112 = xmmword_246096640;
  v33 = v117;
  v110 = v14;
  v111 = a5;
  v108 = a5 + 64;
  v109 = v15;
  v107 = v31;
LABEL_9:
  if (v30)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v35 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    if (v35 >= v31)
    {
      break;
    }

    v30 = *(v27 + 8 * v35);
    ++v32;
    if (v30)
    {
      v32 = v35;
LABEL_14:
      v36 = v116;
      (*(v15 + 16))(v116, *(a5 + 48) + *(v15 + 72) * (__clz(__rbit64(v30)) | (v32 << 6)), v14);
      (*(v15 + 32))(v33, v36, v14);
      if (!*(a5 + 16))
      {
        goto LABEL_37;
      }

      v37 = sub_245FC1BDC(v33);
      if ((v38 & 1) == 0)
      {
        goto LABEL_38;
      }

      v39 = *(*(a5 + 56) + 8 * v37);
      v40 = swift_initStackObject();
      *(v40 + 16) = v112;
      *(v40 + 32) = 0x726F66736E617274;
      *(v40 + 40) = 0xE90000000000006DLL;
      v41 = v39;
      [v41 transform];
      sub_246020FBC(v42, v43, v44, v45);
      v47 = v46;
      v48 = sub_245F8E624(&unk_27EE3B1A0, &qword_246098F50);
      *(v40 + 48) = v47;
      *(v40 + 72) = v48;
      *(v40 + 80) = 0x7265746E6563;
      *(v40 + 88) = 0xE600000000000000;
      [v41 center];
      v49.n128_u32[3] = v120.n128_u32[3];
      v118 = v49;
      *&v50 = sub_2460210D8(v49).n128_u64[0];
      *(v40 + 96) = v51;
      *(v40 + 120) = v48;
      *(v40 + 128) = 0x746E65747865;
      *(v40 + 136) = 0xE600000000000000;
      v52 = [v41 planeExtent];
      [v52 width];
      v120 = v53;

      v54 = [v41 planeExtent];
      [v54 height];
      v119 = v55;

      v56.n128_u64[0] = v120.n128_u32[0];
      v56.n128_u64[1] = v119;
      sub_2460210D8(v56);
      *(v40 + 168) = v48;
      *(v40 + 144) = v57;
      v58 = sub_245F8E498(v40);
      swift_setDeallocating();
      sub_245F8E624(&qword_27EE39EF8, &unk_246096ED0);
      swift_arrayDestroy();
      v59 = sub_2460917F4();
      v61 = v60;
      v125 = sub_245F8E624(&qword_27EE39ED0, &unk_246096480);
      *&v124 = v58;
      sub_245F8E6C0(&v124, v123);
      v62 = v121;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v122 = v62;
      v65 = sub_245F8D968(v59, v61);
      v66 = *(v62 + 16);
      v67 = (v64 & 1) == 0;
      v68 = v66 + v67;
      if (__OFADD__(v66, v67))
      {
        goto LABEL_39;
      }

      v69 = v64;
      if (*(v62 + 24) >= v68)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v64 & 1) == 0)
          {
            goto LABEL_23;
          }

          goto LABEL_7;
        }

        sub_24600986C();
        if (v69)
        {
          goto LABEL_7;
        }

LABEL_23:
        v72 = v122;
        *(v122 + 8 * (v65 >> 6) + 64) |= 1 << v65;
        v73 = (v72[6] + 16 * v65);
        *v73 = v59;
        v73[1] = v61;
        sub_245F8E6C0(v123, (v72[7] + 32 * v65));
        v74 = v72[2];
        v75 = __OFADD__(v74, 1);
        v76 = v74 + 1;
        if (!v75)
        {
          v121 = v72;
          v72[2] = v76;
          goto LABEL_8;
        }

        goto LABEL_40;
      }

      sub_2460079FC(v68, isUniquelyReferenced_nonNull_native);
      v70 = sub_245F8D968(v59, v61);
      if ((v69 & 1) != (v71 & 1))
      {
        sub_246092424();
        __break(1u);
        return;
      }

      v65 = v70;
      if ((v69 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_7:

      v121 = v122;
      v34 = (*(v122 + 56) + 32 * v65);
      sub_245F8E6F4(v34);
      sub_245F8E6C0(v123, v34);
LABEL_8:
      v30 &= v30 - 1;

      v33 = v117;
      v14 = v110;
      (*v106)(v117, v110);
      v120 = v118;
      a5 = v111;
      v27 = v108;
      v15 = v109;
      v31 = v107;
      goto LABEL_9;
    }
  }

  v77 = sub_246091B34();

  sub_246091C04();
  v78 = objc_opt_self();
  *&v124 = 0;
  v79 = [v78 dataWithJSONObject:v77 options:3 error:&v124];
  if (v79)
  {
    v80 = v79;
    v81 = v124;
    v82 = sub_246091744();
    v84 = v83;

    v85 = *MEMORY[0x277CBECE8];
    v86 = sub_246091BD4();
    v87 = CFURLCreateWithFileSystemPath(v85, v86, kCFURLPOSIXPathStyle, 0);

    v88 = v104;
    if (v87)
    {
      v89 = v99;
      sub_2460916D4();
      sub_246091754();
      (*(v100 + 8))(v89, v101);

      sub_245FAEC7C(v82, v84);

      return;
    }

    sub_245FAEC7C(v82, v84);
  }

  else
  {
    v90 = v124;
    v91 = sub_2460915D4();

    swift_willThrow();
    v88 = v104;
  }

  v92 = sub_245FA3174();
  v94 = v102;
  v93 = v103;
  (*(v88 + 16))(v102, v92, v103);
  v95 = sub_2460918D4();
  v96 = sub_246091FB4();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    *v97 = 0;
    _os_log_impl(&dword_245F8A000, v95, v96, "Bundle Writer: Failed to write plane data to bundle!", v97, 2u);
    MEMORY[0x24C1989D0](v97, -1, -1);
  }

  else
  {
  }

  (*(v88 + 8))(v94, v93);
}

uint64_t sub_246015DC0(__int128 *a1, uint64_t a2)
{
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2460919F4();
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x28223BE20](v7);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_246091A64();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v37 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_246091A04();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v52 = a1[2];
  v53 = v14;
  v54 = a1[4];
  v15 = a1[1];
  v50 = *a1;
  v51 = v15;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    v47 = v52;
    v48 = v53;
    v49 = v54;
    v45 = v50;
    v46 = v51;
    v18 = *(&v54 + 1);
    v19 = OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_shotSquenceIDMap;
    swift_beginAccess();
    v20 = *(v17 + v19);
    if (*(v20 + 16) && (v21 = sub_24600790C(v18), (v22 & 1) != 0))
    {
      v23 = *(*(v20 + 56) + 8 * v21);
      sub_245F90360();
      (*(v11 + 104))(v13, *MEMORY[0x277D851C8], v10);
      sub_245F8E7A4(&v50, v44, &unk_27EE3AB00, &qword_246098D68);
      v36 = sub_246092084();
      (*(v11 + 8))(v13, v10);
      v24 = swift_allocObject();
      *(v24 + 24) = v18;
      v25 = v45;
      *(v24 + 56) = v46;
      v26 = v48;
      *(v24 + 72) = v47;
      *(v24 + 88) = v26;
      *(v24 + 16) = v17;
      *(v24 + 32) = v23;
      *(v24 + 104) = v49;
      *(v24 + 40) = v25;
      v44[4] = sub_24601EA24;
      v44[5] = v24;
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 1107296256;
      v44[2] = sub_245F913A4;
      v44[3] = &unk_2858DFCC8;
      v27 = _Block_copy(v44);

      v28 = v37;
      sub_246091A14();
      v43 = MEMORY[0x277D84F90];
      sub_24601CC58(&qword_27EE3A380, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      sub_245F8E624(&qword_27EE39F38, &qword_246096680);
      sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680, MEMORY[0x277D83970]);
      v29 = v39;
      v30 = v42;
      sub_2460921A4();
      v31 = v36;
      MEMORY[0x24C1969D0](0, v28, v29, v27);
      _Block_release(v27);

      (*(v41 + 8))(v29, v30);
      (*(v38 + 8))(v28, v40);
    }

    else
    {
      v32 = sub_245FA3174();
      (*(v4 + 16))(v6, v32, v3);
      v33 = sub_2460918D4();
      v34 = sub_246091FB4();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 134217984;
        *(v35 + 4) = v18;
        _os_log_impl(&dword_245F8A000, v33, v34, "Bundle Writer: Failed to get sequence id for depth point cloud for timestamp: %f!", v35, 0xCu);
        MEMORY[0x24C1989D0](v35, -1, -1);
      }

      else
      {
      }

      return (*(v4 + 8))(v6, v3);
    }
  }

  return result;
}

uint64_t sub_2460163B4(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_246091704();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2460170C0(a3, a1);
  v11 = *(a4 + 48);
  v14[2] = *(a4 + 32);
  v14[3] = v11;
  v15 = *(a4 + 64);
  v12 = *(a4 + 16);
  v14[0] = *a4;
  v14[1] = v12;
  sub_246091644();

  sub_24601D5E8(v14, v10, 4032.0, 3024.0);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_2460164F0(uint64_t a1, uint64_t a2)
{
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_246091704();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *a1;
  v12 = *(a1 + 24);
  v13 = *(a1 + 56);
  v29 = *(a1 + 40);
  v30 = v13;
  v31 = *(a1 + 72);
  v27 = *(a1 + 8);
  v28 = v12;
  memcpy(v32, (a1 + 80), 0x118uLL);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2460172AC(0, v11);
    v23[2] = v29;
    v23[3] = v30;
    v23[4].i64[0] = v31;
    v23[0] = v27;
    v23[1] = v28;
    sub_24601E370(&v27, v22);
    sub_246091644();

    sub_24601D5E8(v23[0].i64, v10, 1920.0, 1440.0);
    (*(v8 + 8))(v10, v7);
    v24[2] = v23[2];
    v24[3] = v23[3];
    v25 = v23[4].i64[0];
    v24[0] = v23[0];
    v24[1] = v23[1];
    sub_245FFEA90(v24);
    v15 = sub_2460174D4(0, v11);
    v17 = v16;
    memcpy(v23, v32, 0x118uLL);
    sub_24601E8F4(v32, v22);
    LOBYTE(v15) = sub_24601E3CC(v23, v15, v17, v11);

    memcpy(v26, v23, 0x118uLL);
    sub_24601E950(v26);
    if (v15)
    {
    }

    else
    {
      v18 = sub_245FA3174();
      (*(v4 + 16))(v6, v18, v3);
      v19 = sub_2460918D4();
      v20 = sub_246091FB4();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_245F8A000, v19, v20, "Bundle Writer: Failed to write camera to bundle!", v21, 2u);
        MEMORY[0x24C1989D0](v21, -1, -1);
      }

      return (*(v4 + 8))(v6, v3);
    }
  }

  return result;
}

uint64_t sub_2460168E0()
{
  v0 = objc_opt_self();
  sub_245F8E624(&qword_27EE3A218, &qword_246098F60);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_246096EF0;
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_246096EF0;
  *(v2 + 32) = sub_2460916F4();
  *(v2 + 40) = v3;
  strcpy((v2 + 48), "experimental");
  *(v2 + 61) = 0;
  *(v2 + 62) = -5120;
  v4 = sub_246091DB4();

  v5 = [v0 pathWithComponents_];

  v6 = sub_246091C04();
  v8 = v7;

  *(v1 + 32) = v6;
  *(v1 + 40) = v8;
  *(v1 + 48) = 0xD000000000000012;
  *(v1 + 56) = 0x80000002460A1510;
  v9 = sub_246091DB4();

  v10 = [v0 pathWithComponents_];

  v11 = sub_246091C04();
  return v11;
}

uint64_t sub_246016AB4(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  sub_245F8E624(&qword_27EE3A218, &qword_246098F60);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_246096EF0;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_246096EF0;
  *(v6 + 32) = sub_2460916F4();
  *(v6 + 40) = v7;
  strcpy((v6 + 48), "experimental");
  *(v6 + 61) = 0;
  *(v6 + 62) = -5120;
  v8 = sub_246091DB4();

  v9 = [v4 pathWithComponents_];

  v10 = sub_246091C04();
  v12 = v11;

  *(v5 + 32) = v10;
  *(v5 + 40) = v12;
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  v13 = sub_246091DB4();

  v14 = [v4 pathWithComponents_];

  v15 = sub_246091C04();
  return v15;
}

uint64_t sub_246016C4C()
{
  v0 = objc_opt_self();
  sub_245F8E624(&qword_27EE3A218, &qword_246098F60);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_246096EF0;
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_246096EF0;
  *(v2 + 32) = sub_2460916F4();
  *(v2 + 40) = v3;
  strcpy((v2 + 48), "experimental");
  *(v2 + 61) = 0;
  *(v2 + 62) = -5120;
  v4 = sub_246091DB4();

  v5 = [v0 pathWithComponents_];

  v6 = sub_246091C04();
  v8 = v7;

  *(v1 + 32) = v6;
  *(v1 + 40) = v8;
  *(v1 + 48) = 0xD00000000000001BLL;
  *(v1 + 56) = 0x80000002460A1720;
  v9 = sub_246091DB4();

  v10 = [v0 pathWithComponents_];

  v11 = sub_246091C04();
  return v11;
}

uint64_t sub_246016E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v12 = objc_opt_self();
  sub_245F8E624(&qword_27EE3A218, &qword_246098F60);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_246096EF0;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_246096EF0;
  *(v14 + 32) = sub_2460916F4();
  *(v14 + 40) = v15;
  *(v14 + 48) = a2;
  *(v14 + 56) = a3;
  v16 = sub_246091DB4();

  v17 = [v12 pathWithComponents_];

  v18 = sub_246091C04();
  v20 = v19;

  *(v13 + 32) = v18;
  *(v13 + 40) = v20;
  sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D83B88];
  *(v21 + 16) = xmmword_246096460;
  v23 = MEMORY[0x277D83C10];
  *(v21 + 56) = v22;
  *(v21 + 64) = v23;
  *(v21 + 32) = a1;
  v30 = sub_246091C24();
  v31 = v24;
  MEMORY[0x24C196640](95, 0xE100000000000000);
  v25 = sub_24602138C(a6);
  MEMORY[0x24C196640](v25);

  MEMORY[0x24C196640](a4, a5);
  *(v13 + 48) = v30;
  *(v13 + 56) = v31;
  v26 = sub_246091DB4();

  v27 = [v12 pathWithComponents_];

  v28 = sub_246091C04();
  return v28;
}

uint64_t sub_2460170E4(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, double a5)
{
  v10 = objc_opt_self();
  sub_245F8E624(&qword_27EE3A218, &qword_246098F60);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_246096EF0;
  *(v11 + 32) = a2();
  *(v11 + 40) = v12;
  sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D83B88];
  *(v13 + 16) = xmmword_246096460;
  v15 = MEMORY[0x277D83C10];
  *(v13 + 56) = v14;
  *(v13 + 64) = v15;
  *(v13 + 32) = a1;
  v22 = sub_246091C24();
  v23 = v16;
  MEMORY[0x24C196640](95, 0xE100000000000000);
  v17 = sub_24602138C(a5);
  MEMORY[0x24C196640](v17);

  MEMORY[0x24C196640](a3, a4);
  *(v11 + 48) = v22;
  *(v11 + 56) = v23;
  v18 = sub_246091DB4();

  v19 = [v10 pathWithComponents_];

  v20 = sub_246091C04();
  return v20;
}

uint64_t sub_2460172AC(uint64_t a1, double a2)
{
  v4 = objc_opt_self();
  sub_245F8E624(&qword_27EE3A218, &qword_246098F60);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_246096EF0;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_246096EF0;
  *(v6 + 32) = sub_246016A98();
  *(v6 + 40) = v7;
  *(v6 + 48) = 0xD000000000000012;
  *(v6 + 56) = 0x80000002460A1510;
  v8 = sub_246091DB4();

  v9 = [v4 pathWithComponents_];

  v10 = sub_246091C04();
  v12 = v11;

  *(v5 + 32) = v10;
  *(v5 + 40) = v12;
  sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D83B88];
  *(v13 + 16) = xmmword_246096460;
  v15 = MEMORY[0x277D83C10];
  *(v13 + 56) = v14;
  *(v13 + 64) = v15;
  *(v13 + 32) = a1;
  v22 = sub_246091C24();
  v23 = v16;
  MEMORY[0x24C196640](95, 0xE100000000000000);
  v17 = sub_24602138C(a2);
  MEMORY[0x24C196640](v17);

  MEMORY[0x24C196640](1987273518, 0xE400000000000000);
  *(v5 + 48) = v22;
  *(v5 + 56) = v23;
  v18 = sub_246091DB4();

  v19 = [v4 pathWithComponents_];

  v20 = sub_246091C04();
  return v20;
}

uint64_t sub_2460174D4(uint64_t a1, double a2)
{
  v4 = objc_opt_self();
  sub_245F8E624(&qword_27EE3A218, &qword_246098F60);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_246096EF0;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_246096EF0;
  *(v6 + 32) = sub_246016A98();
  *(v6 + 40) = v7;
  *(v6 + 48) = 0x736172656D6163;
  *(v6 + 56) = 0xE700000000000000;
  v8 = sub_246091DB4();

  v9 = [v4 pathWithComponents_];

  v10 = sub_246091C04();
  v12 = v11;

  *(v5 + 32) = v10;
  *(v5 + 40) = v12;
  sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D83B88];
  *(v13 + 16) = xmmword_246096460;
  v15 = MEMORY[0x277D83C10];
  *(v13 + 56) = v14;
  *(v13 + 64) = v15;
  *(v13 + 32) = a1;
  v22 = sub_246091C24();
  v23 = v16;
  MEMORY[0x24C196640](95, 0xE100000000000000);
  v17 = sub_24602138C(a2);
  MEMORY[0x24C196640](v17);

  MEMORY[0x24C196640](0x6E6F736A2ELL, 0xE500000000000000);
  *(v5 + 48) = v22;
  *(v5 + 56) = v23;
  v18 = sub_246091DB4();

  v19 = [v4 pathWithComponents_];

  v20 = sub_246091C04();
  return v20;
}

uint64_t sub_2460176FC()
{
  v299 = *MEMORY[0x277D85DE8];
  v1 = sub_246091704();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v215 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_245F8E624(&qword_27EE3A350, &unk_2460969A0);
  MEMORY[0x28223BE20](v5 - 8);
  v241 = &v215 - v6;
  v252 = sub_245F8E624(&qword_27EE3A728, &unk_246098CF0);
  v249 = *(v252 - 8);
  MEMORY[0x28223BE20](v252);
  v240 = &v215 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v239 = &v215 - v9;
  MEMORY[0x28223BE20](v10);
  v238 = &v215 - v11;
  MEMORY[0x28223BE20](v12);
  v237 = &v215 - v13;
  MEMORY[0x28223BE20](v14);
  v236 = &v215 - v15;
  MEMORY[0x28223BE20](v16);
  v222 = &v215 - v17;
  MEMORY[0x28223BE20](v18);
  v235 = &v215 - v19;
  MEMORY[0x28223BE20](v20);
  v234 = &v215 - v21;
  MEMORY[0x28223BE20](v22);
  v233 = &v215 - v23;
  MEMORY[0x28223BE20](v24);
  v253 = (&v215 - v25);
  MEMORY[0x28223BE20](v26);
  v232 = (&v215 - v27);
  v250 = sub_2460917D4();
  v28 = *(v250 - 8);
  MEMORY[0x28223BE20](v250);
  v30 = &v215 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_246091864();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = &v215 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = v0;
  v35 = v0 + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_sessionMetadata;
  v36 = *(v0 + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_sessionMetadata + 8);
  if (v36)
  {
    v242 = v4;
    v218 = v1;
    v255 = *v35;
    v37 = *(v35 + 24);
    v254.i64[0] = *(v35 + 16);
    LODWORD(v251) = *(v35 + 32);
    v245.i64[0] = v36;

    v248 = v37;

    v38 = sub_24601F68C(0x6C65646F6DLL, 0xE500000000000000);
    if (v39)
    {
      v40 = v38;
    }

    else
    {
      v40 = 0;
    }

    v247.i64[0] = v40;
    v41 = 0xE000000000000000;
    if (v39)
    {
      v41 = v39;
    }

    v246.i64[0] = v41;
    type metadata accessor for ObjectCaptureSession(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v221 = [objc_opt_self() bundleForClass_];
    v43 = [v221 infoDictionary];
    v217 = v2;
    if (v43)
    {
      v44 = v43;
      v45 = sub_246091B64();

      if (*(v45 + 16) && (v46 = sub_245F8D968(0xD00000000000001ALL, 0x80000002460A16E0), (v47 & 1) != 0))
      {
        sub_245F8E5C8(*(v45 + 56) + 32 * v46, &v289);

        if (swift_dynamicCast())
        {
          v244 = *(&v279 + 1);
          v48 = v279;
          goto LABEL_15;
        }
      }

      else
      {
      }
    }

    v244 = 0xE300000000000000;
    v48 = 4271950;
LABEL_15:
    v50 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    sub_246091844();
    v51 = sub_246091854();
    (*(v32 + 8))(v34, v31);
    [v50 setLocale_];

    v52 = sub_246091BD4();
    [v50 setDateFormat_];

    sub_2460917C4();
    v53 = sub_246091774();
    (*(v28 + 8))(v30, v250);
    v220 = v50;
    v54 = [v50 stringFromDate_];

    v250 = sub_246091C04();
    v229 = v55;

    v231 = sub_245F8E624(&qword_27EE3A440, &unk_2460979E0);
    v56 = swift_allocObject();
    v230 = xmmword_246098BE0;
    *(v56 + 16) = xmmword_246098BE0;
    *(v56 + 32) = 0x6E6F6973726576;
    v57 = v255;
    *(v56 + 40) = 0xE700000000000000;
    *(v56 + 48) = v57;
    v58 = v245.i64[0];
    *(v56 + 56) = v245.i64[0];
    v59 = MEMORY[0x277D837D0];
    *(v56 + 72) = MEMORY[0x277D837D0];
    *(v56 + 80) = 0x696669746E656469;
    v60 = v254.i64[0];
    *(v56 + 88) = 0xEA00000000007265;
    *(v56 + 96) = v60;
    v61 = v248;
    *(v56 + 104) = v248;
    *(v56 + 120) = v59;
    *(v56 + 128) = 0x6567617265766F63;
    *(v56 + 136) = 0xE800000000000000;
    v62 = MEMORY[0x277D83A90];
    *(v56 + 144) = v251;
    *(v56 + 168) = v62;
    *(v56 + 176) = 0x6F69737265567773;
    *(v56 + 184) = 0xE90000000000006ELL;
    *(v56 + 192) = v48;
    *(v56 + 200) = v244;
    *(v56 + 216) = v59;
    strcpy((v56 + 224), "systemVersion");
    *(v56 + 238) = -4864;
    v63 = objc_opt_self();

    v64 = [v63 processInfo];
    v65 = [v64 operatingSystemVersionString];

    v66 = sub_246091C04();
    v68 = v67;

    *(v56 + 240) = v66;
    *(v56 + 248) = v68;
    *(v56 + 264) = v59;
    *(v56 + 272) = 0x7954656369766564;
    v69 = v247.i64[0];
    *(v56 + 280) = 0xEA00000000006570;
    *(v56 + 288) = v69;
    *(v56 + 296) = v246.i64[0];
    *(v56 + 312) = v59;
    *(v56 + 320) = 0x656D695465746164;
    v70 = v250;
    *(v56 + 328) = 0xE800000000000000;
    *(v56 + 336) = v70;
    *(v56 + 344) = v229;
    *(v56 + 360) = v59;
    *(v56 + 368) = 1936154996;
    *(v56 + 376) = 0xE400000000000000;
    v71 = sub_245F8E624(&qword_27EE3A818, &unk_246098D10);
    v72 = MEMORY[0x277D84F90];
    *(v56 + 384) = MEMORY[0x277D84F90];
    *(v56 + 408) = v71;
    *(v56 + 416) = 1953066613;
    *(v56 + 424) = 0xE400000000000000;
    *(v56 + 432) = 109;
    *(v56 + 440) = 0xE100000000000000;
    *(v56 + 456) = v59;
    *(v56 + 464) = 0x6F64697265507369;
    *(v56 + 472) = 0xE900000000000074;
    v73 = OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_isPeridot;
    v74 = v243;
    swift_beginAccess();
    v75 = *(v74 + v73);
    v76 = v72;
    *(v56 + 504) = MEMORY[0x277D839B0];
    *(v56 + 480) = v75;
    sub_24601CE08(v255, v58, v254.i64[0], v61);
    v219 = sub_245F8E498(v56);
    swift_setDeallocating();
    v229 = sub_245F8E624(&qword_27EE39EF8, &unk_246096ED0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v256 = v72;
    v77 = OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_shotMetadataMap;
    swift_beginAccess();
    v78 = *(v74 + v77);
    v79 = *(v78 + 16);
    if (v79)
    {
      v76 = sub_24601A590(*(v78 + 16), 0);
      sub_24601C508(&v289, v76 + ((*(v249 + 80) + 32) & ~*(v249 + 80)), v79, v78);
      v81 = v80;
      v82 = v289;
      swift_bridgeObjectRetain_n();
      sub_245F8E6B8(v82);
      v83 = v81 == v79;
      v84 = v252;
      if (!v83)
      {
        __break(1u);
      }
    }

    else
    {
      v84 = v252;
    }

    *&v289 = v76;
    sub_24601B154(&v289);
    v85 = v242;
    v86 = v253;
    v87 = *(v289 + 16);
    v216 = 0;
    if (v87)
    {
      v88 = *(v84 + 48);
      v89 = v249;
      v90 = *(v249 + 80);
      v215 = v289;
      v91 = v289 + ((v90 + 32) & ~v90);
      v227 = OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_shotSquenceIDMap;
      v228 = v88;
      swift_beginAccess();
      v92 = v91;
      v250 = v87 - 1;
      v225 = *(v89 + 72);
      v251 = xmmword_246096EF0;
      v226 = xmmword_246096460;
      while (1)
      {
        v244 = v92;
        v93 = v232;
        sub_245F8E7A4(v92, v232, &qword_27EE3A728, &unk_246098CF0);
        v94 = *(v84 + 48);
        *v86 = *v93;
        sub_24600BE48(v93 + v228, v86 + v94);
        v95 = v233;
        sub_245F8E7A4(v86, v233, &qword_27EE3A728, &unk_246098CF0);
        v96 = v95 + *(v84 + 48);
        v255 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
        v97 = v96 + v255[12];
        v98 = *v97;
        v99 = *(v97 + 8);
        sub_24601E148(v96);
        v100 = MEMORY[0x277D84F90];
        if ((v99 & 1) == 0)
        {
          *&v289 = v98;
          v100 = sub_24608BC64();
        }

        v248 = v100;
        v101 = swift_allocObject();
        *(v101 + 32) = 0x64496172656D6163;
        v249 = v101 + 32;
        *(v101 + 16) = v230;
        *(v101 + 40) = 0xE800000000000000;
        *(v101 + 48) = 0;
        *(v101 + 72) = MEMORY[0x277D83B88];
        *(v101 + 80) = 0x556E6F6973736573;
        *(v101 + 88) = 0xEB00000000444955;
        v102 = v234;
        sub_245F8E7A4(v86, v234, &qword_27EE3A728, &unk_246098CF0);
        v103 = v102 + *(v84 + 48);
        v104 = v241;
        sub_245F8E7A4(v103 + v255[6], v241, &qword_27EE3A350, &unk_2460969A0);
        sub_24601E148(v103);
        v105 = sub_246091834();
        v106 = *(v105 - 8);
        if ((*(v106 + 48))(v104, 1, v105) == 1)
        {
          sub_245F8E744(v104, &qword_27EE3A350, &unk_2460969A0);
          v107 = (v101 + 96);
          *(v101 + 120) = MEMORY[0x277D837D0];
        }

        else
        {
          v108 = sub_2460917F4();
          v110 = v109;
          (*(v106 + 8))(v104, v105);
          v107 = (v101 + 96);
          *(v101 + 120) = MEMORY[0x277D837D0];
          if (v110)
          {
            *v107 = v108;
            v86 = v253;
            goto LABEL_30;
          }

          v86 = v253;
        }

        *v107 = 0;
        v110 = 0xE000000000000000;
LABEL_30:
        *(v101 + 104) = v110;
        *(v101 + 128) = 0x49746E656D676573;
        *(v101 + 136) = 0xE900000000000064;
        v111 = v235;
        sub_245F8E7A4(v86, v235, &qword_27EE3A728, &unk_246098CF0);
        v112 = v111 + *(v84 + 48);
        v113 = v112 + v255[7];
        v114 = *(v113 + 64);
        v284 = *(v113 + 80);
        v283 = v114;
        v288 = *(v113 + 144);
        v287 = *(v113 + 128);
        v115 = *(v113 + 32);
        v282 = *(v113 + 48);
        v281 = v115;
        v116 = *(v113 + 96);
        v286 = *(v113 + 112);
        v285 = v116;
        v117 = *v113;
        v280 = *(v113 + 16);
        v279 = v117;
        sub_245F8E7A4(&v279, &v269, &qword_27EE3A990, &qword_246099C20);
        sub_24601E148(v112);
        v295 = v285;
        v296 = v286;
        v297 = v287;
        v298 = v288;
        v291 = v281;
        v292 = v282;
        v293 = v283;
        v294 = v284;
        v289 = v279;
        v290 = v280;
        if (sub_245F97C14(&v289) == 1)
        {
          v118 = (v101 + 144);
          *(v101 + 168) = MEMORY[0x277D83B88];
        }

        else
        {
          v119 = *(&v297 + 1);
          v120 = v298;
          sub_245F8E744(&v279, &qword_27EE3A990, &qword_246099C20);
          v118 = (v101 + 144);
          *(v101 + 168) = MEMORY[0x277D83B88];
          if ((v120 & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        v121 = v222;
        sub_245F8E7A4(v86, v222, &qword_27EE3A728, &unk_246098CF0);
        v122 = v121 + *(v84 + 48);
        v123 = v122 + v255[8];
        v119 = *(v123 + 64);
        v124 = *(v123 + 72);
        v125 = *(v123 + 73);
        sub_24601E148(v122);
        if (v125 & 1) != 0 || (v124)
        {
          *v118 = -1;
          goto LABEL_37;
        }

LABEL_36:
        *v118 = v119;
LABEL_37:
        *(v101 + 176) = 0x6D617473656D6974;
        *(v101 + 184) = 0xE900000000000070;
        v126 = v236;
        sub_245F8E7A4(v86, v236, &qword_27EE3A728, &unk_246098CF0);
        v127 = *(v84 + 48);
        v128 = *(v126 + v127);
        sub_24601E148(v126 + v127);
        *(v101 + 192) = sub_24602138C(v128);
        *(v101 + 200) = v129;
        *(v101 + 216) = MEMORY[0x277D837D0];
        *(v101 + 224) = 0x6172656D6163;
        *(v101 + 232) = 0xE600000000000000;
        v130 = sub_245F8E624(&qword_27EE3A820, &qword_246098D20);
        v131 = v86;
        inited = swift_initStackObject();
        *(inited + 16) = v251;
        *(inited + 32) = 0x69736E6972746E69;
        *(inited + 40) = 0xEA00000000007363;
        sub_245F8E7A4(v131, v126, &qword_27EE3A728, &unk_246098CF0);
        v133 = v126 + *(v84 + 48);
        v134 = *(v133 + 32);
        v257[0] = *(v133 + 16);
        v257[1] = v134;
        v257[2] = *(v133 + 48);
        sub_24601E148(v133);
        sub_246020EF0(v257);
        *(inited + 48) = v135;
        *(inited + 56) = 0x726F66736E617274;
        *(inited + 64) = 0xE90000000000006DLL;
        sub_245F8E7A4(v131, v126, &qword_27EE3A728, &unk_246098CF0);
        v136 = v126 + *(v84 + 48);
        v137 = *(v136 + 80);
        v254 = *(v136 + 64);
        v138 = *(v136 + 112);
        v246 = *(v136 + 96);
        v247 = v137;
        v245 = v138;
        sub_24601E148(v136);
        sub_246020FBC(v254, v247, v246, v245);
        *(inited + 72) = v139;
        v140 = sub_24601E1A4(inited);
        swift_setDeallocating();
        sub_245F8E624(&qword_27EE3A828, &qword_246098D28);
        swift_arrayDestroy();
        v141 = sub_245F8E624(&qword_27EE3A830, &unk_246098D30);
        *(v101 + 240) = v140;
        v254.i64[0] = v141;
        *(v101 + 264) = v141;
        *(v101 + 272) = 0x7463656A626FLL;
        *(v101 + 280) = 0xE600000000000000;
        v247.i64[0] = v130;
        v142 = swift_initStackObject();
        *(v142 + 16) = v251;
        *(v142 + 32) = 0x676E69646E756F62;
        *(v142 + 40) = 0xEB00000000786F42;
        v143 = v237;
        sub_245F8E7A4(v131, v237, &qword_27EE3A728, &unk_246098CF0);
        v144 = v143 + *(v84 + 48);
        v145 = v144 + v255[7];
        v146 = *(v145 + 80);
        v263 = *(v145 + 64);
        v264 = v146;
        v268 = *(v145 + 144);
        v147 = *(v145 + 128);
        v148 = *(v145 + 48);
        v261 = *(v145 + 32);
        v262 = v148;
        v149 = *(v145 + 96);
        v266 = *(v145 + 112);
        v267 = v147;
        v265 = v149;
        v150 = *(v145 + 16);
        v259 = *v145;
        v260 = v150;
        sub_245F8E7A4(&v259, v258, &qword_27EE3A990, &qword_246099C20);
        sub_24601E148(v144);
        v275 = v265;
        v276 = v266;
        v277 = v267;
        v278 = v268;
        v271 = v261;
        v272 = v262;
        v273 = v263;
        v274 = v264;
        v269 = v259;
        v270 = v260;
        if (sub_245F97C14(&v269) == 1)
        {
          OCNonModularSPI_Serialization_InvalidBoundingBoxTransform();
        }

        else
        {
          v245 = v270;
          v246 = v269;
          v223 = v272;
          v224 = v271;
          sub_245F8E744(&v259, &qword_27EE3A990, &qword_246099C20);
          v154 = v223;
          v153 = v224;
          v152 = v245;
          v151 = v246;
        }

        sub_246020FBC(v151, v152, v153, v154);
        *(v142 + 48) = v155;
        *(v142 + 56) = 0x726F66736E617274;
        *(v142 + 64) = 0xE90000000000006DLL;
        OCNonModularSPI_Serialization_InvalidObjectTransform();
        sub_246020FBC(v156, v157, v158, v159);
        *(v142 + 72) = v160;
        v161 = sub_24601E1A4(v142);
        swift_setDeallocating();
        swift_arrayDestroy();
        *(v101 + 288) = v161;
        *(v101 + 312) = v254.i64[0];
        *(v101 + 320) = 0x656E656373;
        *(v101 + 328) = 0xE500000000000000;
        v162 = swift_allocObject();
        *(v162 + 16) = v226;
        *(v162 + 32) = 0x676E69646E756F62;
        *(v162 + 40) = 0xEB00000000786F42;
        v163 = v238;
        sub_245F8E7A4(v253, v238, &qword_27EE3A728, &unk_246098CF0);
        v164 = v163 + *(v252 + 48);
        v165 = v164 + v255[8];
        v167 = *v165;
        v166 = *(v165 + 8);
        v169 = *(v165 + 16);
        v168 = *(v165 + 24);
        v170 = *(v165 + 32);
        v246.i64[0] = *(v165 + 40);
        v171 = *(v165 + 56);
        v245.i64[0] = *(v165 + 48);
        v247.i64[0] = v171;
        LOBYTE(v161) = *(v165 + 73);
        sub_24601E148(v164);
        if (v161)
        {
          OCNonModularSPI_Serialization_InvalidBoundingBoxTransform();
        }

        else
        {
          v172.i64[0] = v167;
          v172.i64[1] = v166;
          v173.i64[0] = v169;
          v173.i64[1] = v168;
          v174.i64[0] = v170;
          v174.i64[1] = v246.i64[0];
          v175.i64[0] = v245.i64[0];
          v175.i64[1] = v247.i64[0];
        }

        v85 = v242;
        sub_246020FBC(v172, v173, v174, v175);
        *(v162 + 48) = v176;
        v177 = sub_24601E1A4(v162);
        swift_setDeallocating();
        sub_245F8E744(v162 + 32, &qword_27EE3A828, &qword_246098D28);
        swift_deallocClassInstance();
        *(v101 + 336) = v177;
        v86 = v253;
        *(v101 + 360) = v254.i64[0];
        *(v101 + 368) = 0x4D65727574706163;
        *(v101 + 376) = 0xEB0000000065646FLL;
        v178 = v239;
        sub_245F8E7A4(v86, v239, &qword_27EE3A728, &unk_246098CF0);
        v84 = v252;
        v179 = v178 + *(v252 + 48);
        v180 = *(v179 + v255[9]);
        sub_24601E148(v179);
        if (v180 == 2)
        {
          v181 = -1;
        }

        else
        {
          v258[0] = v180 & 1;
          v181 = ObjectCaptureSession.Metadata.Shot.CaptureMode.rawValue.getter();
        }

        *(v101 + 384) = v181;
        *(v101 + 408) = MEMORY[0x277D83B88];
        *(v101 + 416) = 0x6B63616264656566;
        *(v101 + 424) = 0xE800000000000000;
        v182 = sub_245F8E624(&qword_27EE3A138, &qword_246097250);
        *(v101 + 432) = v248;
        *(v101 + 456) = v182;
        *(v101 + 464) = 0x65636E6575716573;
        *(v101 + 472) = 0xEA00000000006449;
        v183 = v240;
        sub_245F8E7A4(v86, v240, &qword_27EE3A728, &unk_246098CF0);
        v184 = *(v84 + 48);
        v185 = *(v183 + v184);
        sub_24601E148(v183 + v184);
        v186 = *(v243 + v227);
        if (*(v186 + 16) && (v187 = sub_24600790C(v185), (v188 & 1) != 0))
        {
          v189 = *(*(v186 + 56) + 8 * v187);
        }

        else
        {
          v189 = -1;
        }

        *(v101 + 504) = MEMORY[0x277D83B88];
        *(v101 + 480) = v189;
        sub_245F8E498(v101);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        sub_246091B34();

        MEMORY[0x24C196720](v190);
        if (*((v256 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v256 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_246091DF4();
        }

        sub_246091E34();
        sub_245F8E744(v86, &qword_27EE3A728, &unk_246098CF0);
        if (!v250)
        {
          v191 = v256;

          goto LABEL_56;
        }

        --v250;
        v92 = v244 + v225;
      }
    }

    v191 = MEMORY[0x277D84F90];
LABEL_56:
    *(&v290 + 1) = sub_245F8E624(&qword_27EE3A838, &qword_246098D40);
    *&v289 = v191;
    sub_245F8E6C0(&v289, &v279);
    v192 = v219;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v269.i64[0] = v192;
    sub_246008DF4(&v279, 0x73746F6873, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
    v194 = sub_246091B34();

    v195 = objc_opt_self();
    sub_245F8E624(&qword_27EE3A218, &qword_246098F60);
    v196 = swift_allocObject();
    *(v196 + 16) = xmmword_246096EF0;
    *(v196 + 32) = sub_2460916F4();
    *(v196 + 40) = v197;
    strcpy((v196 + 48), "metadata.json");
    *(v196 + 62) = -4864;
    v198 = sub_246091DB4();

    v199 = [v195 pathWithComponents_];

    sub_246091C04();
    v200 = objc_opt_self();
    *&v289 = 0;
    v201 = [v200 dataWithJSONObject:v194 options:3 error:&v289];
    if (v201)
    {
      v202 = v201;
      v203 = v289;
      v204 = sub_246091744();
      v206 = v205;

      v207 = *MEMORY[0x277CBECE8];
      v208 = sub_246091BD4();
      v209 = CFURLCreateWithFileSystemPath(v207, v208, kCFURLPOSIXPathStyle, 0);

      if (!v209)
      {
        sub_245FAEC7C(v204, v206);
        goto LABEL_63;
      }

      sub_2460916D4();
      v210 = v216;
      sub_246091754();
      if (!v210)
      {
        (*(v217 + 8))(v85, v218);

        sub_245FAEC7C(v204, v206);
        v49 = 1;
        goto LABEL_64;
      }

      (*(v217 + 8))(v85, v218);

      sub_245FAEC7C(v204, v206);
      v211 = v210;
    }

    else
    {
      v212 = v289;
      v213 = sub_2460915D4();

      swift_willThrow();
      v211 = v213;
    }

LABEL_63:
    v49 = 0;
LABEL_64:

    return v49;
  }

  return 0;
}

void sub_246019040()
{
  v1 = sub_2460918F4();
  v69 = *(v1 - 8);
  v70 = v1;
  MEMORY[0x28223BE20](v1);
  v68 = &v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  v73 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v72 = &v68 - v7;
  v8 = sub_245F8E624(&qword_27EE3A720, &unk_246098870);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = (&v68 - v12);
  v14 = OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_shotMetadataMap;
  swift_beginAccess();
  v15 = *(v0 + v14);
  v16 = *(v15 + 64);
  v71 = v15 + 64;
  v17 = 1 << *(v15 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v20 = OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_shotSquenceIDMap;
  v79 = v15;

  v82 = v0;
  v80 = v20;
  swift_beginAccess();
  v21 = 0;
  v22 = (v17 + 63) >> 6;
  v77 = xmmword_246096EF0;
  v76 = xmmword_246096460;
  v75 = v22;
  v78 = v5;
  if (v19)
  {
    while (1)
    {
      v23 = v21;
LABEL_12:
      v26 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v27 = v26 | (v23 << 6);
      v28 = *(*(v79 + 48) + 8 * v27);
      v29 = v72;
      sub_24600B080(*(v79 + 56) + *(v73 + 72) * v27, v72);
      v30 = sub_245F8E624(&qword_27EE3A728, &unk_246098CF0);
      v31 = *(v30 + 48);
      *v10 = v28;
      sub_24600BE48(v29, v10 + v31);
      (*(*(v30 - 8) + 56))(v10, 0, 1, v30);
      v25 = v23;
LABEL_13:
      sub_245FC5914(v10, v13, &qword_27EE3A720, &unk_246098870);
      v32 = sub_245F8E624(&qword_27EE3A728, &unk_246098CF0);
      v33 = (*(*(v32 - 8) + 48))(v13, 1, v32);
      if (v33 == 1)
      {
        break;
      }

      v34 = *v13;
      sub_24600BE48(v13 + *(v32 + 48), v5);
      v35 = &v5[*(v3 + 28)];
      v36 = *(v35 + 7);
      v87[6] = *(v35 + 6);
      v87[7] = v36;
      v88 = *(v35 + 8);
      v89 = v35[144];
      v37 = *(v35 + 3);
      v87[2] = *(v35 + 2);
      v87[3] = v37;
      v38 = *(v35 + 5);
      v87[4] = *(v35 + 4);
      v87[5] = v38;
      v39 = *v35;
      v87[1] = *(v35 + 1);
      v87[0] = v39;
      if (sub_245F97C14(v87) == 1 || v89 == 1)
      {
        v40 = &v5[*(v3 + 32)];
        if (v40[73] & 1) != 0 || (v40[72])
        {
          v41 = -1;
        }

        else
        {
          v41 = *(v40 + 8);
        }
      }

      else
      {
        v41 = *(&v88 + 1);
      }

      v43 = *(v82 + v80);
      if (!*(v43 + 16) || (v44 = sub_24600790C(v34), (v45 & 1) == 0) || (v74 = v33, v81 = v41, v46 = v3, v47 = *(*(v43 + 56) + 8 * v44), v48 = objc_opt_self(), sub_245F8E624(&qword_27EE3A218, &qword_246098F60), v49 = swift_allocObject(), *(v49 + 16) = v77, *(v49 + 32) = sub_246016C4C(), *(v49 + 40) = v50, sub_245F8E624(&qword_27EE39ED8, &unk_246098D00), v51 = swift_allocObject(), *(v51 + 16) = v76, *(v51 + 56) = MEMORY[0x277D83B88], *(v51 + 64) = MEMORY[0x277D83C10], *(v51 + 32) = v47, v84[0].i64[0] = sub_246091C24(), v84[0].i64[1] = v52, MEMORY[0x24C196640](95, 0xE100000000000000), v53 = sub_24602138C(v34), MEMORY[0x24C196640](v53), , MEMORY[0x24C196640](0x6E6F736A2ELL, 0xE500000000000000), v54 = v84[0].i64[1], *(v49 + 48) = v84[0].i64[0], *(v49 + 56) = v54, v55 = sub_246091DB4(), , v56 = v48, v5 = v78, v57 = [v56 pathWithComponents_], v55, v58 = sub_246091C04(), v60 = v59, v57, memcpy(v85, v5 + 16, 0x188uLL), memcpy(v84, v5 + 16, 0x188uLL), sub_24601E2C0(v85, &v83), LOBYTE(v58) = sub_24601CFEC(v84, v81, v58, v60, v34), , memcpy(v86, v84, 0x188uLL), sub_24601E31C(v86), (v58 & 1) == 0))
      {

        sub_24601E148(v5);
        return;
      }

      sub_24601E148(v5);
      v21 = v25;
      v3 = v46;
      v22 = v75;
      if (!v19)
      {
        goto LABEL_5;
      }
    }

    v61 = sub_245FA3174();
    v63 = v68;
    v62 = v69;
    v64 = v70;
    (*(v69 + 16))(v68, v61, v70);
    v65 = sub_2460918D4();
    v66 = sub_246091FA4();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_245F8A000, v65, v66, "Bundle Writer: Saved shot cameras with mobileSfM poses to the bundle!", v67, 2u);
      MEMORY[0x24C1989D0](v67, -1, -1);
    }

    (*(v62 + 8))(v63, v64);
  }

  else
  {
LABEL_5:
    if (v22 <= v21 + 1)
    {
      v24 = v21 + 1;
    }

    else
    {
      v24 = v22;
    }

    v25 = v24 - 1;
    while (1)
    {
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v23 >= v22)
      {
        v42 = sub_245F8E624(&qword_27EE3A728, &unk_246098CF0);
        (*(*(v42 - 8) + 56))(v10, 1, 1, v42);
        v19 = 0;
        goto LABEL_13;
      }

      v19 = *(v71 + 8 * v23);
      ++v21;
      if (v19)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

BOOL sub_246019814()
{
  v1 = sub_245F8E624(&qword_27EE3A720, &unk_246098870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v43 - v2);
  v4 = sub_245F8E624(&qword_27EE3A760, qword_2460988B8);
  MEMORY[0x28223BE20](v4);
  v6 = (&v43 - v5);
  swift_beginAccess();

  sub_246019CDC(v7, v3);

  v8 = sub_245F8E624(&qword_27EE3A728, &unk_246098CF0);
  if ((*(*(v8 - 8) + 48))(v3, 1, v8) == 1)
  {
    sub_245F8E744(v3, &qword_27EE3A720, &unk_246098870);
    return 0;
  }

  v9 = *(v8 + 48);
  v10 = *(v4 + 48);
  *v6 = *v3;
  sub_24600BE48(v3 + v9, v6 + v10);
  v11 = *v6;
  sub_24601E148(v6 + *(v4 + 48));
  v12 = OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_shotSquenceIDMap;
  swift_beginAccess();
  v13 = *(v0 + v12);
  if (!*(v13 + 16))
  {
    return 0;
  }

  v14 = sub_24600790C(v11);
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  v16 = *(*(v13 + 56) + 8 * v14);
  v17 = *MEMORY[0x277CBECE8];
  sub_246016DEC(v16, v11);
  v18 = sub_246091BD4();

  v19 = CFURLCreateWithFileSystemPath(v17, v18, kCFURLPOSIXPathStyle, 0);

  if (!v19)
  {
    return 0;
  }

  v20 = CGImageSourceCreateWithURL(v19, 0);
  if (!v20)
  {

    return 0;
  }

  v21 = v20;
  sub_245F8E624(&qword_27EE39F20, &qword_246096668);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_246096640;
  v23 = *MEMORY[0x277CD3578];
  *(inited + 32) = *MEMORY[0x277CD3578];
  v24 = MEMORY[0x277D839B0];
  *(inited + 40) = 1;
  v25 = *MEMORY[0x277CD3568];
  *(inited + 64) = v24;
  *(inited + 72) = v25;
  *(inited + 80) = 1;
  v26 = *MEMORY[0x277CD3660];
  *(inited + 104) = v24;
  *(inited + 112) = v26;
  *(inited + 144) = MEMORY[0x277D83B88];
  *(inited + 120) = 640;
  v27 = v23;
  v28 = v25;
  v29 = v26;
  sub_245F91D00(inited);
  swift_setDeallocating();
  sub_245F8E624(&qword_27EE39F28, &qword_246096670);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_24601CC58(&qword_27EE39F30, type metadata accessor for CFString, &unk_246096804);
  v30 = sub_246091B34();

  ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v21, 0, v30);
  if (!ThumbnailAtIndex)
  {

    return 0;
  }

  v32 = ThumbnailAtIndex;
  v33 = objc_opt_self();
  sub_245F8E624(&qword_27EE3A218, &qword_246098F60);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_246096EF0;
  *(v34 + 32) = sub_2460916F4();
  *(v34 + 40) = v35;
  strcpy((v34 + 48), "thumbnail.jpg");
  *(v34 + 62) = -4864;
  v36 = sub_246091DB4();

  v37 = [v33 pathWithComponents_];

  v38 = sub_246091C04();
  v40 = v39;

  v41 = sub_2460113F4(v32, v38, v40);

  return v41;
}

uint64_t sub_246019CDC@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v4 = sub_245F8E624(&qword_27EE3A728, &unk_246098CF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    v23 = v5;
    v10 = sub_24601C47C(v9);
    v11 = sub_2460921B4();
    v12 = sub_24601C99C(v11, *(a1 + 36), 0, v10, a1);
    v14 = v13;
    v16 = v15;
    v17 = *(v4 + 48);
    sub_24601CACC(&v8[v17], v12, v13, v15 & 1, a1);
    v19 = v18;
    sub_24601E2A8(v12, v14, v16 & 1);
    *a2 = v19;
    sub_24600BE48(&v8[v17], a2 + *(v4 + 48));
    return (*(v23 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v21 = *(v5 + 56);

    return v21(a2, 1, 1, v4, v6);
  }
}

void sub_246019EA8(double *a1)
{
  v54 = sub_2460918F4();
  v2 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v40 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v46 = &v40 - v5;
  v49 = sub_246091704();
  v6 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(type metadata accessor for ObjectCaptureSession.Metadata.Shot(0) + 52);
  v52 = a1;
  v9 = *(a1 + v8);
  if (v9 >> 62)
  {
LABEL_24:
    v10 = sub_246092354();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v47 = OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_isPeridot;
  v53 = OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_shotSquenceIDMap;
  swift_beginAccess();
  if (!v10)
  {
    return;
  }

  v11 = 0;
  v50 = v9 & 0xFFFFFFFFFFFFFF8;
  v51 = v9 & 0xC000000000000001;
  v41 = (v2 + 16);
  v42 = (v2 + 8);
  v43 = (v6 + 8);
  v44 = v10;
  v45 = v9;
  v12 = v57;
  while (v51)
  {
    v6 = MEMORY[0x24C196C20](v11, v9);
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_18;
    }

LABEL_10:
    v14 = *(v57 + v53);
    if (!*(v14 + 16))
    {
      goto LABEL_19;
    }

    v15 = sub_24600790C(*v52);
    if ((v16 & 1) == 0)
    {
      goto LABEL_19;
    }

    v55 = *(*(v14 + 56) + 8 * v15);
    v17 = v55;
    v56 = v13;
    v18 = *(*v6 + 104);
    v19 = v18();
    sub_2460172AC(v17, v19);
    v20 = (*(*v6 + 128))();
    v21 = v47;
    swift_beginAccess();
    sub_24602335C((v12 + v21), v58);
    swift_endAccess();

    v22 = v48;
    sub_246091644();

    sub_24601D5E8(v58, v22, 1920.0, 1440.0);
    (*v43)(v22, v49);
    v60[2] = v58[2];
    v60[3] = v58[3];
    v61 = v59;
    v60[0] = v58[0];
    v60[1] = v58[1];
    v23 = sub_245FFEA90(v60);
    v24 = (v18)(v23);
    v25 = sub_2460174D4(v55, v24);
    v27 = v26;
    v28 = (*(*v6 + 152))(v62);
    v29 = (v18)(v28);
    v2 = sub_24601DD74(v62, v25, v27, v29);

    if (v2)
    {

      v30 = v44;
      v9 = v45;
      v31 = v56;
    }

    else
    {
      v32 = sub_245FA3174();
      (*v41)(v46, v32, v54);
      v2 = sub_2460918D4();
      v33 = sub_246091FB4();
      v34 = os_log_type_enabled(v2, v33);
      v30 = v44;
      v31 = v56;
      if (v34)
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_245F8A000, v2, v33, "Bundle Writer: Failed to write camera to bundle!", v35, 2u);
        MEMORY[0x24C1989D0](v35, -1, -1);
      }

      (*v42)(v46, v54);
      v9 = v45;
    }

    ++v11;
    if (v31 == v30)
    {
      return;
    }
  }

  if (v11 >= *(v50 + 16))
  {
    __break(1u);
    goto LABEL_24;
  }

  v6 = *(v9 + 8 * v11 + 32);

  v13 = v11 + 1;
  if (!__OFADD__(v11, 1))
  {
    goto LABEL_10;
  }

LABEL_18:
  __break(1u);
LABEL_19:
  v36 = sub_245FA3174();
  (*v41)(v40, v36, v54);
  v37 = sub_2460918D4();
  v38 = sub_246091FB4();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_245F8A000, v37, v38, "Bundle Writer: Failed to get sequence ID from temporal depth point cloud timestamp", v39, 2u);
    MEMORY[0x24C1989D0](v39, -1, -1);
  }

  (*v42)(v40, v54);
}

uint64_t ObjectCaptureBundleWriter.deinit()
{

  v1 = OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_url;
  v2 = sub_246091704();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_245FFDCC4(*(v0 + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_completionPromise), *(v0 + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_completionPromise + 8));
  sub_24601CE08(*(v0 + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_sessionMetadata), *(v0 + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_sessionMetadata + 8), *(v0 + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_sessionMetadata + 16), *(v0 + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_sessionMetadata + 24));

  return v0;
}

uint64_t ObjectCaptureBundleWriter.__deallocating_deinit()
{
  ObjectCaptureBundleWriter.deinit();

  return swift_deallocClassInstance();
}

void *sub_24601A590(uint64_t a1, uint64_t a2)
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

  sub_245F8E624(&qword_27EE3A848, &unk_246098D58);
  v4 = *(sub_245F8E624(&qword_27EE3A728, &unk_246098CF0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24601A698(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_245F8E624(&qword_27EE3A860, &unk_246098DA0);
  result = sub_246092374();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = sub_2460924F4();
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

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
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
        goto LABEL_33;
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

    if (v4)
    {
      v29 = 1 << *(v5 + 32);
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

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

unint64_t sub_24601A908(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_24600790C(a3);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a2 & 1) == 0)
  {
    v17 = result;
    sub_24601AA30();
    result = v17;
    goto LABEL_8;
  }

  sub_24601A698(v14, a2 & 1);
  result = sub_24600790C(a3);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a3;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_246092424();
  __break(1u);
  return result;
}

void *sub_24601AA30()
{
  v1 = v0;
  sub_245F8E624(&qword_27EE3A860, &unk_246098DA0);
  v2 = *v0;
  v3 = sub_246092364();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void (*sub_24601AB7C(uint64_t *a1, double a2))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_24601B120(v5);
  v5[9] = sub_24601AC80(v5 + 4, isUniquelyReferenced_nonNull_native, a2);
  return sub_24601AC20;
}

void sub_24601AC20(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_24601AC80(uint64_t *a1, char a2, double a3))(uint64_t a1, char a2)
{
  v4 = v3;
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x60uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = v3;
  *v9 = a3;
  v11 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  *(v10 + 16) = v11;
  v12 = *(v11 - 8);
  v13 = v12;
  *(v10 + 24) = v12;
  v14 = *(v12 + 64);
  if (v8)
  {
    *(v10 + 32) = swift_coroFrameAlloc();
    *(v10 + 40) = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    *(v10 + 32) = malloc(*(v12 + 64));
    *(v10 + 40) = malloc(v14);
    v15 = malloc(v14);
  }

  *(v10 + 48) = v15;
  v16 = *(*(sub_245F8E624(&qword_27EE3ACE0, &unk_246098880) - 8) + 64);
  if (v8)
  {
    *(v10 + 56) = swift_coroFrameAlloc();
    *(v10 + 64) = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    *(v10 + 56) = malloc(v16);
    *(v10 + 64) = malloc(v16);
    v17 = malloc(v16);
  }

  v18 = v17;
  *(v10 + 72) = v17;
  v19 = *v4;
  v20 = sub_24600790C(a3);
  *(v10 + 88) = v21 & 1;
  v22 = *(v19 + 16);
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
    __break(1u);
    goto LABEL_22;
  }

  v26 = v21;
  v27 = *(v19 + 24);
  if (v27 < v25 || (a2 & 1) == 0)
  {
    if (v27 >= v25 && (a2 & 1) == 0)
    {
      v28 = v20;
      sub_246009C80();
      v20 = v28;
      goto LABEL_17;
    }

    sub_246008074(v25, a2 & 1);
    v20 = sub_24600790C(a3);
    if ((v26 & 1) == (v29 & 1))
    {
      goto LABEL_17;
    }

LABEL_22:
    result = sub_246092424();
    __break(1u);
    return result;
  }

LABEL_17:
  *(v10 + 80) = v20;
  if (v26)
  {
    sub_24600BE48(*(*v4 + 56) + *(v13 + 72) * v20, v18);
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  (*(v13 + 56))(v18, v30, 1, v11);
  return sub_24601AF30;
}

void sub_24601AF30(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  v4 = (*(*a1 + 24) + 48);
  v5 = *(*a1 + 72);
  if (a2)
  {
    v6 = *(v2 + 7);
    sub_245F8E7A4(v5, v6, &qword_27EE3ACE0, &unk_246098880);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 88);
    v9 = *(v2 + 7);
    if (v7 != 1)
    {
      v10 = *(v2 + 1);
      sub_24600BE48(v9, *(v2 + 5));
      v11 = *v10;
      v12 = *(v2 + 10);
      v13 = *(v2 + 5);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = *(v2 + 4);
        v15 = *v2;
        sub_24600BE48(v13, v14);
        sub_246009518(v12, v14, v11, v15);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v16 = *(v2 + 8);
    sub_245F8E7A4(v5, v16, &qword_27EE3ACE0, &unk_246098880);
    v17 = (*v4)(v16, 1, v3);
    v8 = *(v2 + 88);
    v9 = *(v2 + 8);
    if (v17 != 1)
    {
      v18 = *(v2 + 1);
      sub_24600BE48(v9, *(v2 + 6));
      v11 = *v18;
      v12 = *(v2 + 10);
      v13 = *(v2 + 6);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_24600BE48(v13, v11[7] + *(*(v2 + 3) + 72) * v12);
      goto LABEL_10;
    }
  }

  sub_245F8E744(v9, &qword_27EE3ACE0, &unk_246098880);
  if (v8)
  {
    sub_246008910(*(v2 + 10), **(v2 + 1));
  }

LABEL_10:
  v19 = *(v2 + 8);
  v20 = *(v2 + 9);
  v22 = *(v2 + 6);
  v21 = *(v2 + 7);
  v24 = *(v2 + 4);
  v23 = *(v2 + 5);
  sub_245F8E744(v20, &qword_27EE3ACE0, &unk_246098880);
  free(v20);
  free(v19);
  free(v21);
  free(v22);
  free(v23);
  free(v24);

  free(v2);
}

uint64_t (*sub_24601B120(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_24601B148;
}

void sub_24601B154(uint64_t *a1)
{
  v2 = *(sub_245F8E624(&qword_27EE3A728, &unk_246098CF0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_24601C798(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_24601B208(v5);
  *a1 = v3;
}

void sub_24601B208(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_2460923C4();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_245F8E624(&qword_27EE3A728, &unk_246098CF0);
        v6 = sub_246091E14();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_245F8E624(&qword_27EE3A728, &unk_246098CF0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_24601B59C(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_24601B34C(0, v2, 1, a1);
  }
}

void sub_24601B34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = sub_245F8E624(&qword_27EE3A728, &unk_246098CF0);
  MEMORY[0x28223BE20](v35);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v27 - v11);
  MEMORY[0x28223BE20](v13);
  v16 = (&v27 - v15);
  v29 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v34 = v17;
    v28 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v32 = v19;
    v33 = a3;
    v30 = v22;
    v31 = v21;
    v23 = v21;
    while (1)
    {
      sub_245F8E7A4(v22, v16, &qword_27EE3A728, &unk_246098CF0);
      sub_245F8E7A4(v19, v12, &qword_27EE3A728, &unk_246098CF0);
      v24 = *v16;
      v25 = *v12;
      sub_245F8E744(v12, &qword_27EE3A728, &unk_246098CF0);
      sub_245F8E744(v16, &qword_27EE3A728, &unk_246098CF0);
      if (v24 >= v25)
      {
LABEL_4:
        a3 = v33 + 1;
        v19 = v32 + v28;
        v21 = v31 - 1;
        v22 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      sub_245FC5914(v22, v9, &qword_27EE3A728, &unk_246098CF0);
      swift_arrayInitWithTakeFrontToBack();
      sub_245FC5914(v9, v19, &qword_27EE3A728, &unk_246098CF0);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_24601B59C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v99 = a1;
  v112 = sub_245F8E624(&qword_27EE3A728, &unk_246098CF0);
  v107 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v102 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v111 = &v97 - v8;
  MEMORY[0x28223BE20](v9);
  v113 = (&v97 - v10);
  MEMORY[0x28223BE20](v11);
  v13 = (&v97 - v12);
  v109 = a3;
  v14 = *(a3 + 8);
  if (v14 < 1)
  {
    v16 = MEMORY[0x277D84F90];
LABEL_96:
    a3 = *v99;
    if (!*v99)
    {
      goto LABEL_135;
    }

    a4 = v16;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = v110;
    if (isUniquelyReferenced_nonNull_native)
    {
      v92 = a4;
    }

    else
    {
LABEL_129:
      v92 = sub_245FAE62C(a4);
    }

    v114 = v92;
    a4 = *(v92 + 2);
    if (a4 >= 2)
    {
      while (*v109)
      {
        v93 = *&v92[16 * a4];
        v94 = v92;
        v95 = *&v92[16 * a4 + 24];
        sub_24601BE8C(*v109 + *(v107 + 72) * v93, *v109 + *(v107 + 72) * *&v92[16 * a4 + 16], *v109 + *(v107 + 72) * v95, a3);
        if (v15)
        {
          goto LABEL_107;
        }

        if (v95 < v93)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_245FAE62C(v94);
        }

        if (a4 - 2 >= *(v94 + 2))
        {
          goto LABEL_123;
        }

        v96 = &v94[16 * a4];
        *v96 = v93;
        *(v96 + 1) = v95;
        v114 = v94;
        sub_245FAE5A0(a4 - 1);
        v92 = v114;
        a4 = *(v114 + 2);
        if (a4 <= 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_133;
    }

LABEL_107:

    return;
  }

  v97 = a4;
  v15 = 0;
  v16 = MEMORY[0x277D84F90];
  v17 = &qword_27EE3A728;
  v18 = &unk_246098CF0;
  while (1)
  {
    v19 = v15;
    v103 = v16;
    if (v15 + 1 >= v14)
    {
      v14 = v15 + 1;
    }

    else
    {
      v20 = *v109;
      v21 = *(v107 + 72);
      a3 = *v109 + v21 * (v15 + 1);
      sub_245F8E7A4(a3, v13, v17, v18);
      v22 = v113;
      sub_245F8E7A4(v20 + v21 * v15, v113, v17, v18);
      v23 = *v13;
      v24 = *v22;
      sub_245F8E744(v22, v17, v18);
      sub_245F8E744(v13, v17, v18);
      v98 = v15;
      a4 = v15 + 2;
      v108 = v21;
      v25 = v20 + v21 * (v15 + 2);
      while (v14 != a4)
      {
        sub_245F8E7A4(v25, v13, v17, v18);
        v15 = v113;
        sub_245F8E7A4(a3, v113, v17, v18);
        v26 = *v13;
        v27 = *v15;
        sub_245F8E744(v15, v17, v18);
        sub_245F8E744(v13, v17, v18);
        ++a4;
        v25 += v108;
        a3 += v108;
        if (v23 < v24 == v26 >= v27)
        {
          v14 = a4 - 1;
          break;
        }
      }

      v19 = v98;
      if (v23 < v24)
      {
        if (v14 < v98)
        {
          goto LABEL_126;
        }

        if (v98 < v14)
        {
          a4 = v108 * (v14 - 1);
          v28 = v14 * v108;
          v29 = v14;
          v30 = v98;
          a3 = v98 * v108;
          v106 = v14;
          do
          {
            if (v30 != --v29)
            {
              v105 = v29;
              v31 = *v109;
              if (!*v109)
              {
                goto LABEL_132;
              }

              v15 = v31 + a3;
              sub_245FC5914(v31 + a3, v102, v17, v18);
              if (a3 < a4 || v15 >= v31 + v28)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (a3 != a4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_245FC5914(v102, v31 + a4, v17, v18);
              v29 = v105;
              v14 = v106;
            }

            ++v30;
            a4 -= v108;
            v28 -= v108;
            a3 += v108;
          }

          while (v30 < v29);
          v19 = v98;
        }
      }
    }

    v32 = v109[1];
    if (v14 < v32)
    {
      if (__OFSUB__(v14, v19))
      {
        goto LABEL_125;
      }

      if (v14 - v19 < v97)
      {
        if (__OFADD__(v19, v97))
        {
          goto LABEL_127;
        }

        if (v19 + v97 >= v32)
        {
          v15 = v109[1];
        }

        else
        {
          v15 = v19 + v97;
        }

        if (v15 < v19)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v14 != v15)
        {
          break;
        }
      }
    }

    v15 = v14;
    if (v14 < v19)
    {
      goto LABEL_124;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v16 = v103;
    }

    else
    {
      v16 = sub_245FAC394(0, *(v103 + 2) + 1, 1, v103);
    }

    a4 = *(v16 + 2);
    v33 = *(v16 + 3);
    a3 = a4 + 1;
    if (a4 >= v33 >> 1)
    {
      v16 = sub_245FAC394((v33 > 1), a4 + 1, 1, v16);
    }

    *(v16 + 2) = a3;
    v34 = &v16[16 * a4];
    *(v34 + 4) = v19;
    *(v34 + 5) = v15;
    v108 = *v99;
    if (!v108)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (1)
      {
        v35 = a3 - 1;
        if (a3 >= 4)
        {
          break;
        }

        if (a3 == 3)
        {
          v36 = *(v16 + 4);
          v37 = *(v16 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_52:
          if (v39)
          {
            goto LABEL_113;
          }

          v52 = &v16[16 * a3];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_116;
          }

          v58 = &v16[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_120;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = a3 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v62 = &v16[16 * a3];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_66:
        if (v57)
        {
          goto LABEL_115;
        }

        v65 = &v16[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_118;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v35 - 1;
        if (v35 - 1 >= a3)
        {
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*v109)
        {
          goto LABEL_131;
        }

        v73 = v16;
        a3 = *&v16[16 * a4 + 32];
        v74 = *&v16[16 * v35 + 40];
        v75 = v110;
        sub_24601BE8C(*v109 + *(v107 + 72) * a3, *v109 + *(v107 + 72) * *&v16[16 * v35 + 32], *v109 + *(v107 + 72) * v74, v108);
        v110 = v75;
        if (v75)
        {
          goto LABEL_107;
        }

        if (v74 < a3)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v73 = sub_245FAE62C(v73);
        }

        if (a4 >= *(v73 + 2))
        {
          goto LABEL_110;
        }

        v76 = &v73[16 * a4];
        *(v76 + 4) = a3;
        *(v76 + 5) = v74;
        v114 = v73;
        a4 = &v114;
        sub_245FAE5A0(v35);
        v16 = v114;
        a3 = *(v114 + 2);
        if (a3 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v16[16 * a3 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_111;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_112;
      }

      v47 = &v16[16 * a3];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_114;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_117;
      }

      if (v51 >= v43)
      {
        v69 = &v16[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_121;
        }

        if (v38 < v72)
        {
          v35 = a3 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v14 = v109[1];
    if (v15 >= v14)
    {
      goto LABEL_96;
    }
  }

  v77 = *v109;
  v78 = *(v107 + 72);
  v79 = *v109 + v78 * (v14 - 1);
  v80 = v14;
  v81 = -v78;
  v98 = v19;
  a4 = v19 - v80;
  v106 = v80;
  v100 = v78;
  v101 = v15;
  a3 = v77 + v80 * v78;
LABEL_85:
  v104 = a3;
  v105 = a4;
  v108 = v79;
  v82 = v79;
  while (1)
  {
    sub_245F8E7A4(a3, v13, v17, v18);
    v83 = v113;
    sub_245F8E7A4(v82, v113, v17, v18);
    v84 = *v13;
    v85 = *v83;
    sub_245F8E744(v83, v17, v18);
    sub_245F8E744(v13, v17, v18);
    if (v84 >= v85)
    {
LABEL_84:
      v15 = v101;
      v79 = v108 + v100;
      a4 = v105 - 1;
      a3 = v104 + v100;
      if (++v106 != v101)
      {
        goto LABEL_85;
      }

      v19 = v98;
      if (v101 < v98)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (!v77)
    {
      break;
    }

    v86 = v18;
    v87 = v17;
    v88 = v111;
    sub_245FC5914(a3, v111, v87, v86);
    swift_arrayInitWithTakeFrontToBack();
    v89 = v88;
    v17 = v87;
    v18 = v86;
    sub_245FC5914(v89, v82, v17, v86);
    v82 += v81;
    a3 += v81;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
}

void sub_24601BE8C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = a3;
  v43 = sub_245F8E624(&qword_27EE3A728, &unk_246098CF0);
  MEMORY[0x28223BE20](v43);
  v44 = (&v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v10 = (&v37 - v9);
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_60;
  }

  v13 = v45 - a2;
  if (v45 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_61;
  }

  v14 = (a2 - a1) / v12;
  v48 = a1;
  v47 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || a2 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v22 = a4 + v16;
    if (v16 >= 1)
    {
      v23 = -v12;
      v24 = a4 + v16;
      v40 = v23;
      v41 = a4;
      do
      {
        v38 = v22;
        v25 = a2;
        v26 = a2 + v23;
        v42 = v25;
        while (1)
        {
          v28 = v45;
          if (v25 <= a1)
          {
            v48 = v25;
            v46 = v38;
            goto LABEL_58;
          }

          v39 = v22;
          v45 += v23;
          v29 = v24 + v23;
          sub_245F8E7A4(v29, v10, &qword_27EE3A728, &unk_246098CF0);
          v30 = v26;
          v31 = v26;
          v32 = v10;
          v33 = v44;
          sub_245F8E7A4(v31, v44, &qword_27EE3A728, &unk_246098CF0);
          v34 = *v32;
          v35 = *v33;
          v36 = v33;
          v10 = v32;
          sub_245F8E744(v36, &qword_27EE3A728, &unk_246098CF0);
          sub_245F8E744(v32, &qword_27EE3A728, &unk_246098CF0);
          if (v34 < v35)
          {
            break;
          }

          v22 = v29;
          if (v28 < v24 || v45 >= v24)
          {
            swift_arrayInitWithTakeFrontToBack();
            v22 = v29;
            v26 = v30;
          }

          else
          {
            v26 = v30;
            if (v28 != v24)
            {
              swift_arrayInitWithTakeBackToFront();
              v22 = v29;
            }
          }

          v24 = v22;
          v25 = v42;
          v27 = v29 > v41;
          v23 = v40;
          if (!v27)
          {
            a2 = v42;
            goto LABEL_57;
          }
        }

        if (v28 < v42 || v45 >= v42)
        {
          a2 = v30;
          swift_arrayInitWithTakeFrontToBack();
          v23 = v40;
        }

        else
        {
          v23 = v40;
          a2 = v30;
          if (v28 != v42)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v22 = v39;
      }

      while (v24 > v41);
    }

LABEL_57:
    v48 = a2;
    v46 = v22;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v17 = a4 + v15;
    v46 = a4 + v15;
    if (v15 >= 1 && a2 < v45)
    {
      do
      {
        sub_245F8E7A4(a2, v10, &qword_27EE3A728, &unk_246098CF0);
        v19 = v44;
        sub_245F8E7A4(a4, v44, &qword_27EE3A728, &unk_246098CF0);
        v20 = *v10;
        v21 = *v19;
        sub_245F8E744(v19, &qword_27EE3A728, &unk_246098CF0);
        sub_245F8E744(v10, &qword_27EE3A728, &unk_246098CF0);
        if (v20 >= v21)
        {
          if (a1 < a4 || a1 >= a4 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v47 = a4 + v12;
          a4 += v12;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v12;
        }

        a1 += v12;
        v48 = a1;
      }

      while (a4 < v17 && a2 < v45);
    }
  }

LABEL_58:
  sub_24601C38C(&v48, &v47, &v46);
}

uint64_t sub_24601C38C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_245F8E624(&qword_27EE3A728, &unk_246098CF0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unint64_t sub_24601C47C(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x24C1989E0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x24C1989E0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_24601C508(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = sub_245F8E624(&qword_27EE3A728, &unk_246098CF0);
  v35 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v36 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v37 = (&v32 - v10);
  v39 = a4;
  v13 = *(a4 + 64);
  v12 = a4 + 64;
  v11 = v13;
  v14 = -1 << *(v12 - 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & v11;
  if (!a2)
  {
LABEL_18:
    v23 = 0;
LABEL_25:
    *a1 = v39;
    a1[1] = v12;
    a1[2] = ~v14;
    a1[3] = v23;
    a1[4] = v16;
    return;
  }

  if (!a3)
  {
    v23 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(v12 - 32);
    v34 = a1;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v19 = 1;
    while (v16)
    {
LABEL_14:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v17;
      v24 = v22 | (v17 << 6);
      v25 = *(v39 + 56);
      v26 = *(*(v39 + 48) + 8 * v24);
      v27 = v25 + *(*(type metadata accessor for ObjectCaptureSession.Metadata.Shot(0) - 8) + 72) * v24;
      v28 = v36;
      sub_24600B080(v27, &v36[*(v38 + 48)]);
      *v28 = v26;
      v29 = v28;
      a1 = v37;
      sub_245FC5914(v29, v37, &qword_27EE3A728, &unk_246098CF0);
      sub_245FC5914(a1, a2, &qword_27EE3A728, &unk_246098CF0);
      if (v19 == a3)
      {
        goto LABEL_23;
      }

      a2 += *(v35 + 72);
      v30 = __OFADD__(v19++, 1);
      v17 = v23;
      if (v30)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v12 + 8 * v21);
      ++v20;
      if (v16)
      {
        v17 = v21;
        goto LABEL_14;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v31 = v17 + 1;
    }

    else
    {
      v31 = v18;
    }

    v23 = v31 - 1;
LABEL_23:
    v14 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
}

void *sub_24601C7AC(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_245F8E624(&qword_27EE3A848, &unk_246098D58);
  v10 = *(sub_245F8E624(&qword_27EE3A728, &unk_246098CF0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_245F8E624(&qword_27EE3A728, &unk_246098CF0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_24601C99C(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if ((a4 & 0x8000000000000000) == 0)
  {
    if (!a4)
    {
      v16 = result;
      sub_24601E2B4(result, a2, a3 & 1);
      return v16;
    }

    v5 = 0;
    v6 = 1 << *(a5 + 32);
    while ((result & 0x8000000000000000) == 0 && result < v6)
    {
      if (a2 != *(a5 + 36))
      {
        goto LABEL_19;
      }

      v8 = result >> 6;
      v9 = *(a5 + 64 + 8 * (result >> 6));
      if ((v9 & (1 << result)) == 0)
      {
        goto LABEL_19;
      }

      v10 = v9 & (-2 << (result & 0x3F));
      if (v10)
      {
        result = __clz(__rbit64(v10)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v11 = v8 << 6;
        v12 = v8 + 1;
        v13 = (a5 + 72 + 8 * v8);
        while (v12 < (v6 + 63) >> 6)
        {
          v15 = *v13++;
          v14 = v15;
          v11 += 64;
          ++v12;
          if (v15)
          {
            result = __clz(__rbit64(v14)) + v11;
            goto LABEL_5;
          }
        }

        result = 1 << *(a5 + 32);
      }

LABEL_5:
      LODWORD(a2) = *(a5 + 36);
      if (v5++ == a4 - 1)
      {
        return result;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24601CACC(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v6 = result;
    v7 = *(a5 + 56);
    v8 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
    return sub_24600B080(v7 + *(*(v8 - 8) + 72) * a2, v6);
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_24601CB78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_245F8E624(&qword_27EE3A860, &unk_246098DA0);
    v3 = sub_246092384();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_24600790C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
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

uint64_t sub_24601CC58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24601CCA0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24601CCE0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24601CD28(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = *(a1 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_sessionMetadata;
    v8 = *(result + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_sessionMetadata);
    v9 = *(result + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_sessionMetadata + 8);
    v10 = *(result + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_sessionMetadata + 16);
    v11 = *(result + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_sessionMetadata + 24);
    *v7 = v2;
    *(v7 + 8) = v1;
    *(v7 + 16) = v4;
    *(v7 + 24) = v3;
    *(v7 + 32) = v5;

    sub_24601CE08(v8, v9, v10, v11);
  }

  return result;
}

double sub_24601CE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

uint64_t type metadata accessor for ObjectCaptureBundleWriter(uint64_t a1)
{
  result = qword_27EE3CC80;
  if (!qword_27EE3CC80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24601CEA0(uint64_t a1)
{
  result = sub_246091704();
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

uint64_t sub_24601CFEC(int32x4_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v101 = a3;
  v102 = a4;
  v113 = *MEMORY[0x277D85DE8];
  v8 = sub_246091704();
  v77 = *(v8 - 8);
  v78 = v8;
  MEMORY[0x28223BE20](v8);
  v76 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[1];
  v109[0] = *a1;
  v109[1] = v10;
  v11 = a1[3];
  v109[2] = a1[2];
  v12 = a1[5];
  v105 = a1[4];
  v106 = v11;
  v103 = a1[6];
  v104 = v12;
  v13 = a1[9].i64[0];
  v14 = a1[9].i64[1];
  v15 = a1[10].i64[1];
  v17 = a1[11].i64[0];
  v16 = a1[11].i64[1];
  v79 = a1[10].i64[0];
  v80 = v17;
  v83 = v16;
  v18 = a1[12].i64[0];
  v19 = a1[12].i64[1];
  v81 = v15;
  v82 = v18;
  v20 = a1[13].i8[0];
  v21 = a1[14].i64[0];
  v22 = a1[14].i64[1];
  v84 = v19;
  v85 = v21;
  v23 = a1[15].i64[1];
  v86 = a1[15].i64[0];
  v87 = v22;
  v24 = a1[16].i64[1];
  v88 = a1[16].i64[0];
  v89 = v23;
  v25 = a1[17].i64[1];
  v90 = a1[17].i64[0];
  v91 = v24;
  v26 = a1[18].i8[0];
  v27 = a1[19].i64[0];
  v28 = a1[19].i64[1];
  v92 = v25;
  v93 = v27;
  v29 = a1[20].i64[1];
  v94 = a1[20].i64[0];
  v95 = v28;
  v30 = a1[21].i64[1];
  v96 = a1[21].i64[0];
  v97 = v29;
  v31 = a1[22].i64[1];
  v98 = a1[22].i64[0];
  v99 = v30;
  v100 = v31;
  v107 = a1[23].u8[0];
  sub_245F8E624(&qword_27EE3A440, &unk_2460979E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2460977F0;
  *(inited + 32) = 0x64496172656D6163;
  v33 = MEMORY[0x277D83B88];
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = 0;
  *(inited + 72) = v33;
  *(inited + 80) = 0x49746E656D676573;
  *(inited + 88) = 0xE900000000000064;
  *(inited + 96) = a2;
  *(inited + 120) = v33;
  *(inited + 128) = 0x6D617473656D6974;
  *(inited + 136) = 0xE900000000000070;
  v34 = sub_24602138C(a5);
  v35 = MEMORY[0x277D837D0];
  *(inited + 144) = v34;
  *(inited + 152) = v36;
  *(inited + 168) = v35;
  *(inited + 176) = 0x69736E6972746E69;
  *(inited + 184) = 0xEA00000000007363;
  sub_246020EF0(v109);
  v38 = v37;
  v39 = sub_245F8E624(&unk_27EE3B1A0, &qword_246098F50);
  *(inited + 192) = v38;
  *(inited + 216) = v39;
  *(inited + 224) = 0x726F66736E617274;
  *(inited + 232) = 0xE90000000000006DLL;
  sub_246020FBC(v106, v105, v104, v103);
  *(inited + 264) = v39;
  *(inited + 240) = v40;
  v41 = sub_245F8E498(inited);
  swift_setDeallocating();
  sub_245F8E624(&qword_27EE39EF8, &unk_246096ED0);
  swift_arrayDestroy();
  if (v20)
  {
    if (v26)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v59.i64[0] = v13;
    v59.i64[1] = v14;
    v60.i64[0] = v79;
    v61.i64[0] = v80;
    v60.i64[1] = v81;
    v61.i64[1] = v83;
    v62.i64[0] = v82;
    v62.i64[1] = v84;
    sub_246020FBC(v59, v60, v61, v62);
    v112 = v39;
    *&v111 = v63;
    sub_245F8E6C0(&v111, v110);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v108 = v41;
    sub_246008DF4(v110, 0xD000000000000014, 0x80000002460A16A0, isUniquelyReferenced_nonNull_native);
    v41 = v108;
    if (v26)
    {
LABEL_3:
      if (v107)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v65.i64[0] = v85;
  v66.i64[0] = v86;
  v65.i64[1] = v87;
  v66.i64[1] = v89;
  v67.i64[0] = v88;
  v67.i64[1] = v91;
  v68.i64[0] = v90;
  v68.i64[1] = v92;
  sub_246020FBC(v65, v66, v67, v68);
  v112 = v39;
  *&v111 = v69;
  sub_245F8E6C0(&v111, v110);
  v70 = swift_isUniquelyReferenced_nonNull_native();
  v108 = v41;
  sub_246008DF4(v110, 0xD000000000000021, 0x80000002460A1670, v70);
  v41 = v108;
  if ((v107 & 1) == 0)
  {
LABEL_4:
    v42.i64[0] = v93;
    v43.i64[0] = v94;
    v42.i64[1] = v95;
    v43.i64[1] = v97;
    v44.i64[0] = v96;
    v44.i64[1] = v99;
    v45.i64[0] = v98;
    v45.i64[1] = v100;
    sub_246020FBC(v42, v43, v44, v45);
    v112 = v39;
    *&v111 = v46;
    sub_245F8E6C0(&v111, v110);
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v108 = v41;
    sub_246008DF4(v110, 0xD00000000000001FLL, 0x80000002460A1650, v47);
  }

LABEL_5:
  v48 = sub_246091B34();

  v49 = objc_opt_self();
  *&v111 = 0;
  v50 = [v49 dataWithJSONObject:v48 options:3 error:&v111];
  v51 = v111;
  if (!v50)
  {
    v71 = v51;
    v72 = sub_2460915D4();

    swift_willThrow();
LABEL_13:
    v74 = 0;
    goto LABEL_14;
  }

  v52 = sub_246091744();
  v54 = v53;

  v55 = *MEMORY[0x277CBECE8];
  v56 = sub_246091BD4();
  v57 = CFURLCreateWithFileSystemPath(v55, v56, kCFURLPOSIXPathStyle, 0);

  if (!v57)
  {
    sub_245FAEC7C(v52, v54);
    goto LABEL_13;
  }

  v58 = v76;
  sub_2460916D4();
  sub_246091754();
  (*(v77 + 8))(v58, v78);

  sub_245FAEC7C(v52, v54);
  v74 = 1;
LABEL_14:

  return v74;
}

void sub_24601D5E8(uint64_t *a1, uint64_t a2, double a3, double a4)
{
  v6 = sub_246091C44();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = a1[1];
  v13 = a1[2];
  v12 = a1[3];
  v15 = a1[4];
  v14 = a1[5];
  v17 = a1[6];
  v16 = a1[7];
  v18 = a1[8];
  v19 = 0x80000002460A15D0;
  v20 = 0xD00000000000007FLL;
  v98 = 0xD00000000000007FLL;
  v99 = 0x80000002460A15D0;
  v21 = *(v16 + 16);
  if (!v21)
  {
    goto LABEL_13;
  }

  if (v21 > *(v11 + 16))
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v21 > *(v10 + 16))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v21 > *(v13 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v21 > *(v12 + 16))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v21 > *(v15 + 16))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v21 > *(v14 + 16))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v21 > *(v17 + 16))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v21 <= *(v18 + 16))
  {
    v83[0] = v9;
    v83[1] = a2;
    v84 = v7;
    v85 = v6;
    v22 = 0;
    v93 = v10 + 32;
    v94 = v11 + 32;
    v91 = v12 + 32;
    v92 = v13 + 32;
    v89 = v14 + 32;
    v90 = v15 + 32;
    v87 = v21;
    v88 = v17 + 32;
    v23 = v18 + 40;
    v24 = v16 + 40;
    v86 = v18;
    do
    {
      v95 = v22 + 1;
      LOBYTE(v96) = *(v94 + v22);
      v96 = sub_2460923D4();
      v97 = v25;

      MEMORY[0x24C196640](44, 0xE100000000000000);

      v26 = v96;
      v27 = v97;
      LOBYTE(v96) = *(v93 + v22);
      v28 = sub_2460923D4();
      v30 = v29;
      v96 = v26;
      v97 = v27;

      MEMORY[0x24C196640](v28, v30);

      MEMORY[0x24C196640](44, 0xE100000000000000);

      v31 = v96;
      v32 = v97;
      LOBYTE(v96) = *(v92 + v22);
      v33 = sub_2460923D4();
      v35 = v34;
      v96 = v31;
      v97 = v32;

      MEMORY[0x24C196640](v33, v35);

      MEMORY[0x24C196640](44, 0xE100000000000000);

      v36 = v96;
      v37 = v97;
      v38 = sub_246091F04();
      v40 = v39;
      v96 = v36;
      v97 = v37;

      MEMORY[0x24C196640](v38, v40);

      MEMORY[0x24C196640](44, 0xE100000000000000);

      v41 = v96;
      v42 = v97;
      v43 = sub_246091F04();
      v45 = v44;
      v96 = v41;
      v97 = v42;

      MEMORY[0x24C196640](v43, v45);

      MEMORY[0x24C196640](44, 0xE100000000000000);

      v46 = v96;
      v47 = v97;
      v48 = sub_246091F04();
      v50 = v49;
      v96 = v46;
      v97 = v47;

      MEMORY[0x24C196640](v48, v50);

      MEMORY[0x24C196640](44, 0xE100000000000000);

      v51 = v96;
      v52 = v97;
      v53 = sub_246091F04();
      v55 = v54;
      v96 = v51;
      v97 = v52;

      MEMORY[0x24C196640](v53, v55);

      MEMORY[0x24C196640](44, 0xE100000000000000);

      v56 = v96;
      v57 = v97;
      v58 = sub_246091F04();
      v60 = v59;
      v96 = v56;
      v97 = v57;

      MEMORY[0x24C196640](v58, v60);

      MEMORY[0x24C196640](44, 0xE100000000000000);

      v61 = v96;
      v62 = v97;
      v63 = sub_246091F04();
      v65 = v64;
      v96 = v61;
      v97 = v62;

      MEMORY[0x24C196640](v63, v65);

      MEMORY[0x24C196640](44, 0xE100000000000000);

      v66 = v96;
      v67 = v97;
      v68 = sub_246091F04();
      v70 = v69;
      v96 = v66;
      v97 = v67;

      MEMORY[0x24C196640](v68, v70);

      MEMORY[0x24C196640](44, 0xE100000000000000);

      v71 = v96;
      v72 = v97;
      v73 = sub_246091F04();
      v75 = v74;
      v96 = v71;
      v97 = v72;

      MEMORY[0x24C196640](v73, v75);

      MEMORY[0x24C196640](44, 0xE100000000000000);

      v76 = v96;
      v77 = v97;
      v23 += 16;
      v78 = sub_246091F04();
      v80 = v79;
      v96 = v76;
      v97 = v77;

      MEMORY[0x24C196640](v78, v80);

      v81 = v96;
      v82 = v97;
      v96 = 10;
      v97 = 0xE100000000000000;
      MEMORY[0x24C196640](v81, v82);

      MEMORY[0x24C196640](v96, v97);

      v24 += 16;
      v22 = v95;
    }

    while (v87 != v95);
    v20 = v98;
    v19 = v99;
    v7 = v84;
    v6 = v85;
    v9 = v83[0];
LABEL_13:
    v96 = v20;
    v97 = v19;
    sub_246091C34();
    sub_245FA2AE4();
    sub_246092144();
    (*(v7 + 8))(v9, v6);

    return;
  }

LABEL_21:
  __break(1u);
}

uint64_t sub_24601DD74(int32x4_t *a1, uint64_t a2, uint64_t a3, double a4)
{
  v31[1] = a3;
  v34 = *MEMORY[0x277D85DE8];
  v6 = sub_246091704();
  v31[0] = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245F8E624(&qword_27EE3A440, &unk_2460979E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_246098BF0;
  *(inited + 32) = 0x64496172656D6163;
  v10 = MEMORY[0x277D83B88];
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = 1;
  *(inited + 72) = v10;
  *(inited + 80) = 0x6D617473656D6974;
  *(inited + 88) = 0xE900000000000070;
  v11 = MEMORY[0x277D839F8];
  *(inited + 96) = a4;
  *(inited + 120) = v11;
  *(inited + 128) = 0x69736E6972746E69;
  *(inited + 136) = 0xEA00000000007363;
  v12 = a1[1];
  v33[0] = *a1;
  v33[1] = v12;
  v33[2] = a1[2];
  sub_246020EF0(v33);
  v14 = v13;
  v15 = sub_245F8E624(&unk_27EE3B1A0, &qword_246098F50);
  *(inited + 144) = v14;
  *(inited + 168) = v15;
  *(inited + 176) = 0x726F66736E617274;
  *(inited + 184) = 0xE90000000000006DLL;
  sub_246020FBC(a1[3], a1[4], a1[5], a1[6]);
  *(inited + 216) = v15;
  *(inited + 192) = v16;
  sub_245F8E498(inited);
  swift_setDeallocating();
  sub_245F8E624(&qword_27EE39EF8, &unk_246096ED0);
  swift_arrayDestroy();
  v17 = sub_246091B34();

  v18 = objc_opt_self();
  v32 = 0;
  v19 = [v18 dataWithJSONObject:v17 options:3 error:&v32];
  v20 = v32;
  if (!v19)
  {
    v27 = v20;
    v28 = sub_2460915D4();

    swift_willThrow();
LABEL_6:
    v30 = 0;
    goto LABEL_7;
  }

  v21 = sub_246091744();
  v23 = v22;

  v24 = *MEMORY[0x277CBECE8];
  v25 = sub_246091BD4();
  v26 = CFURLCreateWithFileSystemPath(v24, v25, kCFURLPOSIXPathStyle, 0);

  if (!v26)
  {
    sub_245FAEC7C(v21, v23);
    goto LABEL_6;
  }

  sub_2460916D4();
  sub_246091754();
  (*(v31[0] + 8))(v8, v6);

  sub_245FAEC7C(v21, v23);
  v30 = 1;
LABEL_7:

  return v30;
}

uint64_t sub_24601E148(uint64_t a1)
{
  v2 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24601E1A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_245F8E624(&qword_27EE3A840, &qword_246098D48);
    v3 = sub_246092384();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_245F8D968(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

double sub_24601E2A8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

double sub_24601E2B4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_24601E3CC(int32x4_t *a1, uint64_t a2, uint64_t a3, double a4)
{
  v80 = a2;
  v81 = a3;
  v91 = *MEMORY[0x277D85DE8];
  v6 = sub_246091704();
  v64 = *(v6 - 8);
  v65 = v6;
  MEMORY[0x28223BE20](v6);
  v63 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[1];
  v87[0] = *a1;
  v87[1] = v8;
  v9 = a1[3];
  v87[2] = a1[2];
  v10 = a1[5];
  v84 = a1[4];
  v85 = v9;
  v82 = a1[6];
  v83 = v10;
  v11 = a1[8].i64[0];
  v13 = a1[9].i64[0];
  v12 = a1[9].i64[1];
  v15 = a1[10].i64[0];
  v14 = a1[10].i64[1];
  v66 = a1[8].i64[1];
  v67 = v15;
  v70 = v14;
  v16 = a1[11].i64[0];
  v17 = a1[11].i64[1];
  v68 = v12;
  v69 = v16;
  v18 = a1[12].i8[0];
  v19 = a1[13].i64[0];
  v20 = a1[13].i64[1];
  v71 = v17;
  v72 = v19;
  v21 = a1[14].i64[1];
  v73 = a1[14].i64[0];
  v74 = v20;
  v22 = a1[15].i64[1];
  v75 = a1[15].i64[0];
  v76 = v21;
  v23 = a1[16].i64[1];
  v77 = a1[16].i64[0];
  v78 = v22;
  v79 = v23;
  v24 = a1[17].i8[0];
  sub_245F8E624(&qword_27EE3A440, &unk_2460979E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_246098BF0;
  *(inited + 32) = 0x64496172656D6163;
  v26 = MEMORY[0x277D83B88];
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = 1;
  *(inited + 72) = v26;
  *(inited + 80) = 0x6D617473656D6974;
  *(inited + 88) = 0xE900000000000070;
  v27 = sub_24602138C(a4);
  v28 = MEMORY[0x277D837D0];
  *(inited + 96) = v27;
  *(inited + 104) = v29;
  *(inited + 120) = v28;
  *(inited + 128) = 0x69736E6972746E69;
  *(inited + 136) = 0xEA00000000007363;
  sub_246020EF0(v87);
  v31 = v30;
  v32 = sub_245F8E624(&unk_27EE3B1A0, &qword_246098F50);
  *(inited + 144) = v31;
  *(inited + 168) = v32;
  *(inited + 176) = 0x726F66736E617274;
  *(inited + 184) = 0xE90000000000006DLL;
  sub_246020FBC(v85, v84, v83, v82);
  *(inited + 216) = v32;
  *(inited + 192) = v33;
  v34 = sub_245F8E498(inited);
  swift_setDeallocating();
  sub_245F8E624(&qword_27EE39EF8, &unk_246096ED0);
  swift_arrayDestroy();
  if ((v18 & 1) == 0)
  {
    v35.i64[0] = v11;
    v35.i64[1] = v66;
    v36.i64[0] = v13;
    v36.i64[1] = v68;
    v37.i64[0] = v67;
    v37.i64[1] = v70;
    v38.i64[0] = v69;
    v38.i64[1] = v71;
    sub_246020FBC(v35, v36, v37, v38);
    v90 = v32;
    *&v89 = v39;
    sub_245F8E6C0(&v89, v88);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v86 = v34;
    sub_246008DF4(v88, 0xD000000000000014, 0x80000002460A16A0, isUniquelyReferenced_nonNull_native);
    v34 = v86;
  }

  if ((v24 & 1) == 0)
  {
    v41.i64[0] = v72;
    v42.i64[0] = v73;
    v41.i64[1] = v74;
    v42.i64[1] = v76;
    v43.i64[0] = v75;
    v43.i64[1] = v78;
    v44.i64[0] = v77;
    v44.i64[1] = v79;
    sub_246020FBC(v41, v42, v43, v44);
    v90 = v32;
    *&v89 = v45;
    sub_245F8E6C0(&v89, v88);
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v86 = v34;
    sub_246008DF4(v88, 0xD00000000000001ALL, 0x80000002460A1700, v46);
  }

  v47 = sub_246091B34();

  v48 = objc_opt_self();
  *&v89 = 0;
  v49 = [v48 dataWithJSONObject:v47 options:3 error:&v89];
  v50 = v89;
  if (!v49)
  {
    v58 = v50;
    v59 = sub_2460915D4();

    swift_willThrow();
LABEL_10:
    v61 = 0;
    goto LABEL_11;
  }

  v51 = sub_246091744();
  v53 = v52;

  v54 = *MEMORY[0x277CBECE8];
  v55 = sub_246091BD4();
  v56 = CFURLCreateWithFileSystemPath(v54, v55, kCFURLPOSIXPathStyle, 0);

  if (!v56)
  {
    sub_245FAEC7C(v51, v53);
    goto LABEL_10;
  }

  v57 = v63;
  sub_2460916D4();
  sub_246091754();
  (*(v64 + 8))(v57, v65);

  sub_245FAEC7C(v51, v53);
  v61 = 1;
LABEL_11:

  return v61;
}

uint64_t sub_24601E9A4()
{

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_24601EA38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24601EA50()
{
  v1 = *(sub_245F8E624(&qword_27EE3A350, &unk_2460969A0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_246091834();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

void sub_24601EB84()
{
  v1 = *(sub_245F8E624(&qword_27EE3A350, &unk_2460969A0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v0 + 2);
  v4 = v0[3];
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v0 + 4);

  sub_246015340(v4, v3, v6, v0 + v2, v5);
}

uint64_t sub_24601EC28(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

id sub_24601EC38(id result)
{
  if (result != 7)
  {
    return sub_24601EC48(result);
  }

  return result;
}

id sub_24601EC48(id result)
{
  if (result >= 7)
  {
    return result;
  }

  return result;
}

uint64_t sub_24601EC58()
{
  v1 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;

  v6 = v1[6];
  v7 = sub_246091834();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(&v5[v6], v7);
  }

  v9 = *&v5[v1[7] + 128];
  if (v9 != 1)
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_24601EDF4()
{
  v1 = *(type metadata accessor for ObjectCaptureSession.Metadata.Shot(0) - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 64) & ~*(v1 + 80)));

  sub_246013FCC(v2, v0 + 24, v3);
}

uint64_t sub_24601EE64()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24601EEA4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = (result + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_completionPromise);
    v5 = *(result + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_completionPromise);
    v6 = *(result + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_completionPromise + 8);
    *v4 = v1;
    v4[1] = v2;

    sub_245FFDCC4(v5, v6);
  }

  return result;
}

uint64_t sub_24601EF7C@<X0>(void *a1@<X8>)
{
  v2 = CPGProcessingLimitsForCurrentDevice();
  MaxImageDimension = CPGProcessingLimitsGetMaxImageDimension();
  MaxNumberOfSamples = CPGProcessingLimitsGetMaxNumberOfSamples();
  MaxTotalPixelCount = CPGProcessingLimitsGetMaxTotalPixelCount();
  v6 = MEMORY[0x24C197460](v2);
  v7 = MEMORY[0x24C1974A0](v2);
  sub_246029B3C(MaxImageDimension, MaxNumberOfSamples, MaxTotalPixelCount, v6, v7, a1);

  return MEMORY[0x2821532E8](v2);
}

char *sub_24601F018(char *a1)
{

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a1 = sub_245FF809C(0, *(a1 + 2) + 1, 1, a1);
  }

  v3 = *(a1 + 2);
  v2 = *(a1 + 3);
  v4 = v2 >> 1;
  v5 = v3 + 1;
  if (v2 >> 1 <= v3)
  {
    a1 = sub_245FF809C((v2 > 1), v3 + 1, 1, a1);
    v2 = *(a1 + 3);
    v4 = v2 >> 1;
  }

  *(a1 + 2) = v5;
  v6 = &a1[16 * v3];
  *(v6 + 4) = 0x312C373164615069;
  *(v6 + 5) = 0xE800000000000000;
  v7 = v3 + 2;
  if (v4 < (v3 + 2))
  {
    a1 = sub_245FF809C((v2 > 1), v3 + 2, 1, a1);
  }

  *(a1 + 2) = v7;
  v8 = &a1[16 * v5];
  *(v8 + 4) = 0x322C373164615069;
  *(v8 + 5) = 0xE800000000000000;
  v9 = *(a1 + 3);
  v10 = v3 + 3;
  if ((v3 + 3) > (v9 >> 1))
  {
    a1 = sub_245FF809C((v9 > 1), v3 + 3, 1, a1);
  }

  *(a1 + 2) = v10;
  v11 = &a1[16 * v7];
  *(v11 + 4) = 0x332C373164615069;
  *(v11 + 5) = 0xE800000000000000;
  v12 = *(a1 + 3);
  v13 = v3 + 4;
  if ((v3 + 4) > (v12 >> 1))
  {
    a1 = sub_245FF809C((v12 > 1), v3 + 4, 1, a1);
  }

  *(a1 + 2) = v13;
  v14 = &a1[16 * v10];
  *(v14 + 4) = 0x342C373164615069;
  *(v14 + 5) = 0xE800000000000000;
  v15 = *(a1 + 3);
  v16 = v3 + 5;
  if ((v3 + 5) > (v15 >> 1))
  {
    a1 = sub_245FF809C((v15 > 1), v3 + 5, 1, a1);
  }

  *(a1 + 2) = v16;
  v17 = &a1[16 * v13];
  *(v17 + 4) = 0x3831656E6F685069;
  *(v17 + 5) = 0xEA0000000000312CLL;
  v18 = *(a1 + 3);
  if ((v3 + 6) > (v18 >> 1))
  {
    a1 = sub_245FF809C((v18 > 1), v3 + 6, 1, a1);
  }

  *(a1 + 2) = v3 + 6;
  v19 = &a1[16 * v16];
  *(v19 + 4) = 0x3831656E6F685069;
  *(v19 + 5) = 0xEA0000000000322CLL;
  return a1;
}

uint64_t sub_24601F24C()
{
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v28[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v6 = &v28[-v5];
  v7 = sub_24601F68C(0x6C65646F6DLL, 0xE500000000000000);
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    v11 = sub_245FA3174();
    (*(v1 + 16))(v6, v11, v0);

    v12 = sub_2460918D4();
    v13 = sub_246091FC4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v29[0] = v15;
      *v14 = 136380931;
      *(v14 + 4) = sub_245F8D3C0(0x70707553434F7369, 0xEF2928646574726FLL, v29);
      *(v14 + 12) = 2082;
      *(v14 + 14) = sub_245F8D3C0(v9, v10, v29);
      _os_log_impl(&dword_245F8A000, v12, v13, "%{private}s: Device model detected at runtime: %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v15, -1, -1);
      MEMORY[0x24C1989D0](v14, -1, -1);
    }

    (*(v1 + 8))(v6, v0);
    v16 = sub_24601F018(byte_2858DFE10);
    v29[0] = v9;
    v29[1] = v10;
    MEMORY[0x28223BE20](v16);
    *&v28[-16] = v29;
    v17 = sub_245FCB944(sub_245FCBAD4, &v28[-32], v16);

    v18 = type metadata accessor for ARWorldTrackingConfigurationForObjectCapture();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    LODWORD(v20) = [ObjCClassFromMetadata isSupported];
    if (v20)
    {
      v20 = [v18 recommendedVideoFormatForHighResolutionFrameCapturing];
      if (v20)
      {

        LODWORD(v20) = [ObjCClassFromMetadata supportsFrameSemantics_];
        if (v20)
        {
          LOBYTE(v20) = [ObjCClassFromMetadata supportsFrameSemantics_];
        }
      }
    }

    v21 = v17 & v20;
  }

  else
  {
    v22 = sub_245FA3174();
    (*(v1 + 16))(v3, v22, v0);
    v23 = sub_2460918D4();
    v24 = sub_246091FB4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v29[0] = v26;
      *v25 = 136380675;
      *(v25 + 4) = sub_245F8D3C0(0x70707553434F7369, 0xEF2928646574726FLL, v29);
      _os_log_impl(&dword_245F8A000, v23, v24, "%{private}s: Failed to get device model at runtime.", v25, 0xCu);
      sub_245F8E6F4(v26);
      MEMORY[0x24C1989D0](v26, -1, -1);
      MEMORY[0x24C1989D0](v25, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t sub_24601F68C(uint64_t a1, uint64_t a2)
{
  v2 = sub_246091C44();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = *MEMORY[0x277CD2898];
  v4 = IOServiceMatching("IOPlatformExpertDevice");
  MatchingService = IOServiceGetMatchingService(v3, v4);
  v6 = sub_246091BD4();
  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, v6, *MEMORY[0x277CBECE8], 0);

  if (!CFProperty)
  {
    goto LABEL_15;
  }

  v8 = swift_unknownObjectRetain();
  v9 = CFGetTypeID(v8);
  if (v9 != CFStringGetTypeID())
  {
    v12 = CFGetTypeID(CFProperty);
    swift_unknownObjectRelease();
    if (v12 == CFDataGetTypeID())
    {
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        v13 = v21;
        sub_246091C34();
        v14 = sub_246091C14();
        v22 = v14;
        if (!v15)
        {
          v16 = v14;
          swift_unknownObjectRelease();
          sub_245FAEC7C(v13, v23);
LABEL_20:
          IOObjectRelease(MatchingService);
          return v16;
        }

        v16 = v14;
        v17 = sub_24601FD88(v14, v15);
        if (v18)
        {
          if (!v17 && v18 == 0xE100000000000000)
          {

LABEL_18:
            sub_24601FE08(v19);
            swift_unknownObjectRelease();
            sub_245FAEC7C(v13, v23);

            v16 = v22;
            goto LABEL_20;
          }

          v20 = sub_2460923E4();

          if (v20)
          {
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        sub_245FAEC7C(v13, v23);
        goto LABEL_20;
      }
    }

    swift_unknownObjectRelease();
LABEL_15:
    IOObjectRelease(MatchingService);
    return 0;
  }

  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    v10 = v21;
  }

  else
  {
    v10 = 0;
  }

  IOObjectRelease(MatchingService);
  return v10;
}

uint64_t sub_24601F93C()
{
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v23 - v5;
  v7 = sub_24601F68C(0x6C65646F6DLL, 0xE500000000000000);
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    v11 = sub_245FA3174();
    (*(v1 + 16))(v6, v11, v0);

    v12 = sub_2460918D4();
    v13 = sub_246091FC4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24[0] = v15;
      *v14 = 136380931;
      *(v14 + 4) = sub_245F8D3C0(0xD000000000000013, 0x80000002460A1760, v24);
      *(v14 + 12) = 2082;
      *(v14 + 14) = sub_245F8D3C0(v9, v10, v24);
      _os_log_impl(&dword_245F8A000, v12, v13, "%{private}s: Device type detected at runtime: %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v15, -1, -1);
      MEMORY[0x24C1989D0](v14, -1, -1);
    }

    (*(v1 + 8))(v6, v0);
    v24[0] = v9;
    v24[1] = v10;
    v23[0] = 0x656E6F685069;
    v23[1] = 0xE600000000000000;
    sub_245FA2AE4();
    v16 = sub_246092164();
  }

  else
  {
    v17 = sub_245FA3174();
    (*(v1 + 16))(v3, v17, v0);
    v18 = sub_2460918D4();
    v19 = sub_246091FB4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v24[0] = v21;
      *v20 = 136380675;
      *(v20 + 4) = sub_245F8D3C0(0xD000000000000013, 0x80000002460A1760, v24);
      _os_log_impl(&dword_245F8A000, v18, v19, "%{private}s: Failed to get device model at runtime!", v20, 0xCu);
      sub_245F8E6F4(v21);
      MEMORY[0x24C1989D0](v21, -1, -1);
      MEMORY[0x24C1989D0](v20, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_24601FCCC()
{
  result = sub_24601F93C();
  byte_27EE3F010 = result & 1;
  return result;
}

char *sub_24601FCF0()
{
  if (qword_27EE3CC90 != -1)
  {
    swift_once();
  }

  return &byte_27EE3F010;
}

uint64_t sub_24601FD40@<X0>(void *a1@<X8>)
{
  v2 = CPGProcessingLimitsForCurrentDevice();
  MaxNumberOfSamples = CPGProcessingLimitsGetMaxNumberOfSamples();
  _s6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackV8rawValueAGSi_tcfC_0(MaxNumberOfSamples, a1);

  return MEMORY[0x2821532E8](v2);
}

uint64_t sub_24601FD88(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_246091CA4();
  return sub_246091D64();
}

uint64_t sub_24601FE08(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return MEMORY[0x2821FBE70](a1);
  }

LABEL_5:
  a1 = sub_246091CA4();

  return MEMORY[0x2821FBE70](a1);
}

void sub_24601FE70()
{
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v67 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v67 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v67 - v8;
  v10 = sub_24601F68C(0x6C65646F6DLL, 0xE500000000000000);
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    v14 = sub_245FA3174();
    v69 = *(v1 + 16);
    v70 = v14;
    v69(v9);

    v15 = sub_2460918D4();
    v16 = sub_246091FC4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v68 = v6;
      v19 = v1;
      v20 = v18;
      v75 = v18;
      *v17 = 136380931;
      *(v17 + 4) = sub_245F8D3C0(0xD00000000000001DLL, 0x80000002460A1780, &v75);
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_245F8D3C0(v12, v13, &v75);
      _os_log_impl(&dword_245F8A000, v15, v16, "%{private}s: Device model detected at runtime: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      v21 = v20;
      v1 = v19;
      v6 = v68;
      MEMORY[0x24C1989D0](v21, -1, -1);
      MEMORY[0x24C1989D0](v17, -1, -1);
    }

    v22 = *(v1 + 8);
    v22(v9, v0);
    v75 = v12;
    v76 = v13;
    v73 = 44;
    v74 = 0xE100000000000000;
    sub_245FA2AE4();
    v23 = sub_246092114();
    if (v23[2])
    {

      if (!v23[2])
      {
        __break(1u);
        goto LABEL_77;
      }

      v25 = v23[4];
      v24 = v23[5];

      if ((sub_246020714(0x656E6F685069, 0xE600000000000000, v25, v24) & 1) == 0)
      {
        goto LABEL_77;
      }

      v75 = v25;
      v76 = v24;
      v73 = 0x656E6F685069;
      v74 = 0xE600000000000000;
      v71 = 0;
      v72 = 0xE000000000000000;
      v26 = sub_246092134();
      v28 = v27;

      v29 = HIBYTE(v28) & 0xF;
      v30 = v26 & 0xFFFFFFFFFFFFLL;
      if (!((v28 & 0x2000000000000000) != 0 ? HIBYTE(v28) & 0xF : v26 & 0xFFFFFFFFFFFFLL))
      {
        goto LABEL_77;
      }

      if ((v28 & 0x1000000000000000) != 0)
      {
        LOBYTE(v73) = 0;
        sub_245F8DA98(v26, v28, 10);
        goto LABEL_77;
      }

      if ((v28 & 0x2000000000000000) != 0)
      {
        v75 = v26;
        v76 = v28 & 0xFFFFFFFFFFFFFFLL;
        if (v26 == 43)
        {
          if (v29)
          {
            if (--v29)
            {
              v56 = 0;
              v57 = &v75 + 1;
              while (1)
              {
                v58 = *v57 - 48;
                if (v58 > 9)
                {
                  break;
                }

                v59 = 10 * v56;
                if ((v56 * 10) >> 64 != (10 * v56) >> 63)
                {
                  break;
                }

                v56 = v59 + v58;
                if (__OFADD__(v59, v58))
                {
                  break;
                }

                ++v57;
                if (!--v29)
                {
                  goto LABEL_76;
                }
              }
            }

            goto LABEL_75;
          }

          goto LABEL_85;
        }

        if (v26 != 45)
        {
          if (v29)
          {
            v63 = 0;
            v64 = &v75;
            while (1)
            {
              v65 = *v64 - 48;
              if (v65 > 9)
              {
                break;
              }

              v66 = 10 * v63;
              if ((v63 * 10) >> 64 != (10 * v63) >> 63)
              {
                break;
              }

              v63 = v66 + v65;
              if (__OFADD__(v66, v65))
              {
                break;
              }

              v64 = (v64 + 1);
              if (!--v29)
              {
                goto LABEL_76;
              }
            }
          }

          goto LABEL_75;
        }

        if (v29)
        {
          if (--v29)
          {
            v48 = 0;
            v49 = &v75 + 1;
            while (1)
            {
              v50 = *v49 - 48;
              if (v50 > 9)
              {
                break;
              }

              v51 = 10 * v48;
              if ((v48 * 10) >> 64 != (10 * v48) >> 63)
              {
                break;
              }

              v48 = v51 - v50;
              if (__OFSUB__(v51, v50))
              {
                break;
              }

              ++v49;
              if (!--v29)
              {
                goto LABEL_76;
              }
            }
          }

          goto LABEL_75;
        }
      }

      else
      {
        if ((v26 & 0x1000000000000000) != 0)
        {
          v32 = ((v28 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v32 = sub_2460922B4();
        }

        v33 = *v32;
        if (v33 == 43)
        {
          if (v30 >= 1)
          {
            v29 = v30 - 1;
            if (v30 != 1)
            {
              v52 = 0;
              if (v32)
              {
                v53 = v32 + 1;
                while (1)
                {
                  v54 = *v53 - 48;
                  if (v54 > 9)
                  {
                    goto LABEL_75;
                  }

                  v55 = 10 * v52;
                  if ((v52 * 10) >> 64 != (10 * v52) >> 63)
                  {
                    goto LABEL_75;
                  }

                  v52 = v55 + v54;
                  if (__OFADD__(v55, v54))
                  {
                    goto LABEL_75;
                  }

                  ++v53;
                  if (!--v29)
                  {
                    goto LABEL_76;
                  }
                }
              }

              goto LABEL_67;
            }

            goto LABEL_75;
          }

          goto LABEL_84;
        }

        if (v33 != 45)
        {
          if (v30)
          {
            v60 = 0;
            if (v32)
            {
              while (1)
              {
                v61 = *v32 - 48;
                if (v61 > 9)
                {
                  goto LABEL_75;
                }

                v62 = 10 * v60;
                if ((v60 * 10) >> 64 != (10 * v60) >> 63)
                {
                  goto LABEL_75;
                }

                v60 = v62 + v61;
                if (__OFADD__(v62, v61))
                {
                  goto LABEL_75;
                }

                ++v32;
                if (!--v30)
                {
                  goto LABEL_67;
                }
              }
            }

            goto LABEL_67;
          }

LABEL_75:
          LOBYTE(v29) = 1;
          goto LABEL_76;
        }

        if (v30 >= 1)
        {
          v29 = v30 - 1;
          if (v30 != 1)
          {
            v34 = 0;
            if (v32)
            {
              v35 = v32 + 1;
              while (1)
              {
                v36 = *v35 - 48;
                if (v36 > 9)
                {
                  goto LABEL_75;
                }

                v37 = 10 * v34;
                if ((v34 * 10) >> 64 != (10 * v34) >> 63)
                {
                  goto LABEL_75;
                }

                v34 = v37 - v36;
                if (__OFSUB__(v37, v36))
                {
                  goto LABEL_75;
                }

                ++v35;
                if (!--v29)
                {
                  goto LABEL_76;
                }
              }
            }

LABEL_67:
            LOBYTE(v29) = 0;
LABEL_76:
            LOBYTE(v73) = v29;
LABEL_77:

            return;
          }

          goto LABEL_75;
        }

        __break(1u);
      }

      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
      return;
    }

    (v69)(v6, v70, v0);

    v43 = sub_2460918D4();
    v44 = sub_246091FB4();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v75 = v46;
      *v45 = 136380931;
      *(v45 + 4) = sub_245F8D3C0(0xD00000000000001DLL, 0x80000002460A1780, &v75);
      *(v45 + 12) = 2082;
      v47 = sub_245F8D3C0(v12, v13, &v75);

      *(v45 + 14) = v47;
      _os_log_impl(&dword_245F8A000, v43, v44, "%{private}s: Failed to parse device model: %{public}s!", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v46, -1, -1);
      MEMORY[0x24C1989D0](v45, -1, -1);
    }

    else
    {
    }

    v22(v6, v0);
  }

  else
  {
    v38 = sub_245FA3174();
    (*(v1 + 16))(v3, v38, v0);
    v39 = sub_2460918D4();
    v40 = sub_246091FB4();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v75 = v42;
      *v41 = 136380675;
      *(v41 + 4) = sub_245F8D3C0(0xD00000000000001DLL, 0x80000002460A1780, &v75);
      _os_log_impl(&dword_245F8A000, v39, v40, "%{private}s: Failed to get device model at runtime!", v41, 0xCu);
      sub_245F8E6F4(v42);
      MEMORY[0x24C1989D0](v42, -1, -1);
      MEMORY[0x24C1989D0](v41, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
  }
}

uint64_t sub_246020714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_246091CF4();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v10 = sub_246091CF4();
      if (!v11)
      {

        return 1;
      }

      if (v6 == v10 && v7 == v11)
      {
      }

      else
      {
        v8 = sub_2460923E4();

        if ((v8 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v6 = sub_246091CF4();
      v7 = v9;
    }

    while (v9);
  }

  sub_246091CF4();
  v13 = v12;

  if (!v13)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

void sub_246020870()
{
  if (qword_27EE3CC90 != -1)
  {
    swift_once();
  }

  if (byte_27EE3F010 == 1)
  {
    sub_24601FE70();
    v2 = (v0 > 12) & ~v1;
  }

  else
  {
    v2 = 1;
  }

  byte_27EE3F011 = v2;
}

char *sub_2460208E4()
{
  if (qword_27EE3CC98 != -1)
  {
    swift_once();
  }

  return &byte_27EE3F011;
}

uint64_t sub_246020958()
{
  result = sub_245F92858();
  if (result == 2)
  {
    sub_24601FE70();
    result = (v1 > 15) & ~v2;
  }

  byte_27EE3F012 = result & 1;
  return result;
}

char *sub_246020998()
{
  if (qword_27EE3CCA0 != -1)
  {
    swift_once();
  }

  return &byte_27EE3F012;
}

unint64_t sub_2460209E8(__CVBuffer *a1, __CVBuffer *a2, __CVBuffer *a3, uint64_t a4, char a5, float32x4_t a6, float32x4_t a7, float32x4_t a8, float32x4_t a9, double a10, double a11)
{
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  v20 = Height;
  if (a5)
  {
    v21 = Height * a11;
  }

  else
  {
    v21 = a11;
  }

  if (a5)
  {
    v22 = Width * a10;
  }

  else
  {
    v22 = a10;
  }

  v23 = CVPixelBufferGetWidth(a2);
  v61 = a2;
  result = CVPixelBufferGetHeight(a2);
  v58 = v23;
  v25 = v22;
  v26 = ((v23 / Width) * v25) + 0.5;
  if (v26 <= -9.2234e18)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v26 >= 9.2234e18)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v27 = result;
  v28 = v21;
  v29 = ((result / v20) * v28) + 0.5;
  v30 = COERCE_INT(fabs(v29)) > 2139095039;
  if (COERCE_INT(fabs(((v23 / Width) * v25) + 0.5)) > 2139095039 || v30)
  {
    goto LABEL_53;
  }

  if (v29 <= -9.2234e18)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v29 >= 9.2234e18)
  {
LABEL_55:
    __break(1u);
    return result;
  }

  result = 0;
  v31 = v26;
  if ((v26 & 0x8000000000000000) == 0 && v23 > v31)
  {
    v32 = v29;
    if ((v29 & 0x8000000000000000) == 0 && v27 > v32)
    {
      v33 = MEMORY[0x277D83A90];
      sub_245F98918(v61, v26, v29, MEMORY[0x277D83A90], v65);
      result = sub_245F98918(a3, v31, v32, v33, &v64);
      if (v64 < 0.8)
      {
        v52 = a4;
        v34 = v31 - 3;
        v35 = -3;
        v36 = MEMORY[0x277D84F90];
        v37 = MEMORY[0x277D83A90];
        v59 = a3;
        v57 = v31;
        while (2)
        {
          v39 = v34 >= 0 && v34 < v58;
          a4 = -3;
          do
          {
            if (v39)
            {
              v40 = v32 + a4;
              if (__OFADD__(v32, a4))
              {
                __break(1u);
                goto LABEL_51;
              }

              if ((v40 & 0x8000000000000000) == 0 && v40 < v27)
              {
                sub_245F98918(v61, v34, v32 + a4, v37, &v64);
                v41 = v64;
                result = sub_245F98918(a3, v34, v32 + a4, v37, &v64);
                if (v64 > 0.7)
                {
                  result = swift_isUniquelyReferenced_nonNull_native();
                  if ((result & 1) == 0)
                  {
                    result = sub_245FB1254(0, *(v36 + 16) + 1, 1, v36);
                    v36 = result;
                  }

                  v43 = *(v36 + 16);
                  v42 = *(v36 + 24);
                  if (v43 >= v42 >> 1)
                  {
                    result = sub_245FB1254((v42 > 1), v43 + 1, 1, v36);
                    v36 = result;
                  }

                  *(v36 + 16) = v43 + 1;
                  *(v36 + 4 * v43 + 32) = v41;
                  a3 = v59;
                }
              }
            }

            ++a4;
          }

          while (a4 != 4);
          if (v35 == 3)
          {
            if (!*(v36 + 16))
            {

              return 0;
            }

            sub_246020E18(v36);
            v62 = v45;

            v44 = v62;
            v65[0] = v62;
            a4 = v52;
            if (v62 <= 0.0)
            {
              return 0;
            }

            goto LABEL_45;
          }

          ++v35;
          v34 = v57 + v35;
          if (!__OFADD__(v57, v35))
          {
            continue;
          }

          break;
        }

        __break(1u);
      }

      v44 = v65[0];
      if (v65[0] <= 0.0)
      {
        return 0;
      }

LABEL_45:
      v46 = v44 * (v25 - COERCE_FLOAT(*(a4 + 32)));
      v60 = (v44 * (v28 - COERCE_FLOAT(HIDWORD(*(a4 + 32))))) / *(a4 + 20);
      v63 = v44;
      v47 = *a4;
      ARVisionCameraToRenderingCoordinateTransform();
      return vaddq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a6, v51.f32[0]), a7, *v51.f32, 1), a8, v51, 2), a9, v51, 3), vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a6, v48.f32[0]), a7, *v48.f32, 1), a8, v48, 2), a9, v48, 3), v46 / v47), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a6, v49.f32[0]), a7, *v49.f32, 1), a8, v49, 2), a9, v49, 3), v60), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a6, v50.f32[0]), a7, *v50.f32, 1), a8, v50, 2), a9, v50, 3), v63)).u64[0];
    }
  }

  return result;
}

uint64_t sub_246020E18(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = a1;

  v1 = 0;
  sub_24602638C(&v4);
  v2 = *(v4 + 2);
  if ((v2 & 1) == 0)
  {
    if (v2)
    {
    }

    goto LABEL_8;
  }

  if ((v2 - 1) >> 1 < v2)
  {
  }

LABEL_9:
  __break(1u);

  __break(1u);
  return result;
}

double sub_246020EF0(int32x4_t *a1)
{
  sub_245F8E624(&qword_27EE3AE70, &unk_246097400);
  v2 = swift_allocObject();
  v3 = a1[1];
  v4 = a1[2];
  v5 = vuzp1q_s32(vuzp2q_s32(v3, v4), v3);
  v3.i64[0] = vtrn1q_s32(*a1, v3).u64[0];
  v3.i32[3] = HIDWORD(a1->i64[0]);
  v5.i32[2] = a1->i64[1];
  *&result = 9;
  v3.i32[2] = v4.i32[0];
  *(v2 + 16) = xmmword_246098DF0;
  *(v2 + 32) = v3;
  *(v2 + 48) = v5;
  *(v2 + 64) = v4.i32[2];
  return result;
}

uint64_t sub_246020F68@<X0>(uint64_t result@<X0>, __n128 *a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>, __n128 a5@<Q2>)
{
  if (*(result + 16) == 9)
  {
    a3.n128_u32[0] = *(result + 32);
    a4.n128_u32[0] = *(result + 36);
    a3.n128_u32[1] = *(result + 44);
    a3.n128_u32[2] = *(result + 56);
    a4.n128_u32[1] = *(result + 48);
    a4.n128_u32[2] = *(result + 60);
    a5.n128_u32[0] = *(result + 40);
    a5.n128_u32[1] = *(result + 52);
    a5.n128_u32[2] = *(result + 64);
    *a2 = a3;
    a2[1] = a4;
    a2[2] = a5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_246020FBC(int32x4_t a1, int32x4_t a2, int32x4_t a3, int32x4_t a4)
{
  sub_245F8E624(&qword_27EE3AE70, &unk_246097400);
  v4 = swift_allocObject();
  *&v5 = vzip1q_s32(a1, a2).u64[0];
  *(&v5 + 1) = vextq_s8(*&a3, vzip1q_s32(a3, a4), 8uLL).i64[1];
  *&v6 = vtrn2q_s32(a1, a2).u64[0];
  *(&v6 + 1) = __PAIR64__(a4.u32[1], a3.u32[1]);
  *(v4 + 16) = xmmword_246098E00;
  *(v4 + 32) = v5;
  *&v7 = vzip2q_s32(a1, a2).u64[0];
  *(&v7 + 1) = __PAIR64__(a4.u32[2], a3.u32[2]);
  *(v4 + 48) = v6;
  *(v4 + 64) = v7;
  result.n128_u64[0] = vuzp2q_s32(vuzp2q_s32(a1, a2), a1).u64[0];
  result.n128_u64[1] = __PAIR64__(a4.u32[3], a3.u32[3]);
  *(v4 + 80) = result;
  return result;
}

uint64_t sub_24602105C(uint64_t result)
{
  if (*(result + 16) != 16)
  {
    __break(1u);
  }

  return result;
}

__n128 sub_2460210D8(__n128 a1)
{
  sub_245F8E624(&qword_27EE3AE70, &unk_246097400);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_246096640;
  result = a1;
  *(v1 + 32) = a1.n128_u64[0];
  *(v1 + 40) = a1.n128_u32[2];
  return result;
}

float64x2_t sub_246021134@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  *&v3 = COERCE_FLOAT(*(a1 + 8));
  *&v4 = COERCE_FLOAT(*(a1 + 24));
  *&v5 = COERCE_FLOAT(*(a1 + 40));
  v6 = vcvtq_f64_f32(*(a1 + 16));
  *a2 = vcvtq_f64_f32(*a1);
  *(a2 + 16) = v3;
  result = vcvtq_f64_f32(*&v2);
  *(a2 + 32) = v6;
  *(a2 + 48) = v4;
  *(a2 + 64) = result;
  *(a2 + 80) = v5;
  return result;
}

float64x2_t sub_246021188@<Q0>(float64x2_t *a1@<X8>, float32x4_t a2@<Q0>, float32x4_t a3@<Q1>, float32x4_t a4@<Q2>, float32x4_t a5@<Q3>)
{
  *a1 = vcvtq_f64_f32(*a2.f32);
  a1[1] = vcvt_hight_f64_f32(a2);
  a1[2] = vcvtq_f64_f32(*a3.f32);
  a1[3] = vcvt_hight_f64_f32(a3);
  a1[4] = vcvtq_f64_f32(*a4.f32);
  a1[5] = vcvt_hight_f64_f32(a4);
  result = vcvt_hight_f64_f32(a5);
  a1[6] = vcvtq_f64_f32(*a5.f32);
  a1[7] = result;
  return result;
}

float sub_2460211F0@<S0>(float64x2_t *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v3 = vcvt_f32_f64(*a1);
  *&v2 = a1[1].f64[0];
  *(&v3 + 1) = v2;
  *&v4 = vcvt_f32_f64(a1[2]);
  *&v5 = a1[3].f64[0];
  *(&v4 + 1) = v5;
  *&v6 = vcvt_f32_f64(a1[4]);
  *&v7 = a1[5].f64[0];
  *(&v6 + 1) = v7;
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v6;
  return *&v3;
}

uint64_t sub_246021244(int32x4_t a1, int32x4_t a2, int32x4_t a3, int32x4_t a4)
{
  sub_246020FBC(a1, a2, a3, a4);
  v13 = v4;
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = MEMORY[0x277D83A90];
    v8 = MEMORY[0x277D83B08];
    do
    {
      v9 = *(v13 + 32 + 4 * v6);
      sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_246096460;
      *(v10 + 56) = v7;
      *(v10 + 64) = v8;
      *(v10 + 32) = v9;
      v11 = sub_246091C24();
      MEMORY[0x24C196640](v11);

      if (v6 < v5 - 1)
      {
        MEMORY[0x24C196640](44, 0xE100000000000000);
      }

      ++v6;
    }

    while (v5 != v6);
  }

  MEMORY[0x24C196640](93, 0xE100000000000000);
  return 91;
}

uint64_t sub_24602138C(double a1)
{
  sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_246096460;
  v3 = MEMORY[0x277D83A80];
  *(v2 + 56) = MEMORY[0x277D839F8];
  *(v2 + 64) = v3;
  *(v2 + 32) = a1;

  return sub_246091C24();
}

float sub_246021418(float result, float a2, float a3)
{
  if (result <= a2)
  {
    result = a2;
  }

  if (result > a3)
  {
    return a3;
  }

  return result;
}

double sub_24602142C()
{
  *zmmword_27EE3F020 = xmmword_246096F80;
  *&zmmword_27EE3F020[16] = xmmword_246098E10;
  result = -0.000348046946;
  *&zmmword_27EE3F020[32] = xmmword_246098E20;
  *&zmmword_27EE3F020[48] = xmmword_246098E30;
  return result;
}

void sub_246021460()
{
  if (qword_27EE3CCA8 != -1)
  {
    swift_once();
  }

  *zmmword_27EE3F060 = __invert_f4(*zmmword_27EE3F020);
}

double sub_2460214C8(float32x4_t a1)
{
  v1 = vmulq_f32(a1, a1);
  *v1.i8 = vadd_f32(*v1.i8, *&vextq_s8(v1, v1, 8uLL));
  v1.i32[0] = vadd_f32(*v1.i8, vdup_lane_s32(*v1.i8, 1)).u32[0];
  v2 = vrsqrte_f32(v1.u32[0]);
  v3 = vmul_f32(v2, vrsqrts_f32(v1.u32[0], vmul_f32(v2, v2)));
  *&result = vmulq_n_f32(a1, vmul_f32(v3, vrsqrts_f32(v1.u32[0], vmul_f32(v3, v3))).f32[0]).u64[0];
  return result;
}

double sub_246021574(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, __n128 a5)
{
  sub_245F8E624(&qword_27EE3AE70, &unk_246097400);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_246098BF0;
  *(inited + 32) = a5.n128_u64[0];
  *(inited + 40) = a5.n128_u32[2];
  *(inited + 44) = 1065353216;
  sub_246027190(inited);
  a5.n128_u32[0] = v6;
  swift_setDeallocating();
  *&result = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(a1, a5.n128_f32[0]), 0, a2), 0, a3), 0, a4).u64[0];
  return result;
}

double sub_246021644(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5)
{
  a5.i32[3] = 0;
  v5 = vrecpeq_f32(a5);
  v6 = vmulq_f32(v5, vrecpsq_f32(a5, v5));
  v10 = vmulq_f32(v6, vrecpsq_f32(a5, v6));
  sub_245F8E624(&qword_27EE3AE70, &unk_246097400);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_246098BF0;
  *(inited + 32) = v10.i64[0];
  *(inited + 40) = v10.i32[2];
  *(inited + 44) = 1065353216;
  sub_246027190(inited);
  v10.i32[0] = v8;
  swift_setDeallocating();
  *&result = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(a1, v10.f32[0]), 0, a2), 0, a3), 0, a4).u64[0];
  return result;
}

double sub_24602172C(float32x4_t a1, double a2, double a3, double a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8)
{
  v8 = vmulq_f32(a1, a1);
  *v8.i8 = vadd_f32(*v8.i8, *&vextq_s8(v8, v8, 8uLL));
  v8.i32[0] = vadd_f32(*v8.i8, vdup_lane_s32(*v8.i8, 1)).u32[0];
  v9 = vrsqrte_f32(v8.u32[0]);
  v10 = vmul_f32(v9, vrsqrts_f32(v8.u32[0], vmul_f32(v9, v9)));
  v11 = vmulq_n_f32(a1, vmul_f32(v10, vrsqrts_f32(v8.u32[0], vmul_f32(v10, v10))).f32[0]);
  *&result = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a5, v11.f32[0]), a6, *v11.f32, 1), a7, v11, 2), a8, v11, 3).u64[0];
  return result;
}

__n128 sub_24602181C@<Q0>(uint64_t a1@<X8>, float32x4_t a2@<Q0>, float32x4_t a3@<Q1>, float32x4_t a4@<Q2>, float32x4_t a5@<Q3>, float32x4_t a6@<Q4>, float32x4_t a7@<Q5>, float32x4_t a8@<Q6>, float32x4_t a9@<Q7>, float32x4_t a10, float32x4_t a11, float32x4_t a12, float32x4_t a13)
{
  v14 = vmulq_f32(a6, a6);
  v15 = vadd_f32(*v14.i8, *&vextq_s8(v14, v14, 8uLL));
  v15.i32[0] = vadd_f32(v15, vdup_lane_s32(v15, 1)).u32[0];
  v16 = vrsqrte_f32(v15.u32[0]);
  v17 = vmul_f32(v16, vrsqrts_f32(v15.u32[0], vmul_f32(v16, v16)));
  v18 = vmulq_n_f32(a6, vmul_f32(v17, vrsqrts_f32(v15.u32[0], vmul_f32(v17, v17))).f32[0]);
  v19 = vmulq_f32(a7, a7);
  *v19.i8 = vadd_f32(*v19.i8, *&vextq_s8(v19, v19, 8uLL));
  v19.i32[0] = vadd_f32(*v19.i8, vdup_lane_s32(*v19.i8, 1)).u32[0];
  v20 = vrsqrte_f32(v19.u32[0]);
  v21 = vmul_f32(v20, vrsqrts_f32(v19.u32[0], vmul_f32(v20, v20)));
  v22 = vmulq_n_f32(a7, vmul_f32(v21, vrsqrts_f32(v19.u32[0], vmul_f32(v21, v21))).f32[0]);
  v23 = vmulq_f32(a8, a8);
  *v23.i8 = vadd_f32(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
  v23.i32[0] = vadd_f32(*v23.i8, vdup_lane_s32(*v23.i8, 1)).u32[0];
  v24 = vrsqrte_f32(v23.u32[0]);
  v25 = vmul_f32(v24, vrsqrts_f32(v23.u32[0], vmul_f32(v24, v24)));
  v26 = vmulq_n_f32(a8, vmul_f32(v25, vrsqrts_f32(v23.u32[0], vmul_f32(v25, v25))).f32[0]);
  v36.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a10, v22.f32[0]), a11, *v22.f32, 1), a12, v22, 2), a13, v22, 3);
  v30 = v36.columns[1];
  v31 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a10, v18.f32[0]), a11, *v18.f32, 1), a12, v18, 2), a13, v18, 3);
  v36.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a10, a9.f32[0]), a11, *a9.f32, 1), a12, a9, 2), a13, a9, 3);
  v28 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a10, v26.f32[0]), a11, *v26.f32, 1), a12, v26, 2), a13, v26, 3);
  v29 = v36.columns[3];
  v36.columns[0] = v31;
  v36.columns[2] = v28;
  v37 = __invert_f4(v36);
  *a1 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37.columns[0], a2.f32[0]), v37.columns[1], *a2.f32, 1), v37.columns[2], a2, 2), v37.columns[3], a2, 3);
  *(a1 + 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37.columns[0], a3.f32[0]), v37.columns[1], *a3.f32, 1), v37.columns[2], a3, 2), v37.columns[3], a3, 3);
  *(a1 + 32) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37.columns[0], a4.f32[0]), v37.columns[1], *a4.f32, 1), v37.columns[2], a4, 2), v37.columns[3], a4, 3);
  *(a1 + 48) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37.columns[0], a5.f32[0]), v37.columns[1], *a5.f32, 1), v37.columns[2], a5, 2), v37.columns[3], a5, 3);
  *(a1 + 64) = v31;
  *(a1 + 80) = v30;
  result = v29;
  *(a1 + 96) = v28;
  *(a1 + 112) = v29;
  return result;
}

void sub_2460219BC(float a1)
{
  if (a1 <= 0.0)
  {
    __break(1u);
  }
}

double sub_2460219F0(simd_float4x4 *a1, double a2, double a3, double a4, double a5, double a6, double a7, float32x4_t a8)
{
  OCBoundingBox.init(transform:)(&v58, a1);
  v56 = v58.transform.columns[1];
  v57 = v58.transform.columns[0];
  v54 = v58.transform.columns[3];
  v55 = v58.transform.columns[2];
  OCBoundingBox.rotation.getter(v59);
  v53 = v59[0];
  v58.transform.columns[0] = v57;
  v58.transform.columns[1] = v56;
  v58.transform.columns[2] = v55;
  v58.transform.columns[3] = v54;
  OCBoundingBox.rotation.getter(v60);
  v46 = v60[1];
  v58.transform.columns[0] = v57;
  v58.transform.columns[1] = v56;
  v58.transform.columns[2] = v55;
  v58.transform.columns[3] = v54;
  OCBoundingBox.rotation.getter(v61);
  v8 = vmulq_f32(a8, a8);
  *&v9 = v8.f32[2] + vaddv_f32(*v8.f32);
  *v8.f32 = vrsqrte_f32(v9);
  *v8.f32 = vmul_f32(*v8.f32, vrsqrts_f32(v9, vmul_f32(*v8.f32, *v8.f32)));
  v50 = vmulq_n_f32(a8, vmul_f32(*v8.f32, vrsqrts_f32(v9, vmul_f32(*v8.f32, *v8.f32))).f32[0]);
  v52 = v62;
  sub_245F8E624(&unk_27EE3B240, &unk_246097000);
  v10 = swift_allocObject();
  v11.i64[0] = vsubq_f32(0, v53).u64[0];
  v11.f32[2] = 0.0 - v53.f32[2];
  v11.i32[3] = 0;
  v12.i64[0] = vsubq_f32(0, v52).u64[0];
  v12.f32[2] = 0.0 - v52.f32[2];
  v12.i32[3] = 0;
  v10[2] = v53;
  v10[3] = v11;
  v47 = v11;
  v48 = v12;
  v10[4] = v52;
  v10[5] = v12;
  v58.transform.columns[0].i64[0] = MEMORY[0x277D84F90];
  sub_245FC7B28(0, 4, 0);
  v13 = v58.transform.columns[0].i64[0];
  v15 = *(v58.transform.columns[0].i64[0] + 16);
  v14 = *(v58.transform.columns[0].i64[0] + 24);
  v16 = v14 >> 1;
  v17 = v15 + 1;
  if (v14 >> 1 <= v15)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v18 = v50;
    v19 = vmulq_f32(v50, v53);
    *(v13 + 16) = v17;
    *(v13 + 4 * v15 + 32) = v19.f32[2] + vaddv_f32(*v19.f32);
    v20 = v15 + 2;
    if (v16 < v20)
    {
      sub_245FC7B28((v14 > 1), v20, 1);
      v18 = v50;
      v13 = v58.transform.columns[0].i64[0];
    }

    v21 = vmulq_f32(v47, v18);
    *(v13 + 16) = v20;
    *(v13 + 4 * v17 + 32) = v21.f32[2] + vaddv_f32(*v21.f32);
    v23 = *(v13 + 16);
    v22 = *(v13 + 24);
    v24 = v23 + 1;
    if (v23 >= v22 >> 1)
    {
      sub_245FC7B28((v22 > 1), v23 + 1, 1);
      v18 = v50;
    }

    v25 = vmulq_f32(v52, v18);
    v26 = v58.transform.columns[0].i64[0];
    *(v58.transform.columns[0].i64[0] + 16) = v24;
    *(v26 + 4 * v23 + 32) = v25.f32[2] + vaddv_f32(*v25.f32);
    v27 = *(v26 + 24);
    v28 = v23 + 2;
    if (v28 > (v27 >> 1))
    {
      sub_245FC7B28((v27 > 1), v28, 1);
      v18 = v50;
      v26 = v58.transform.columns[0].i64[0];
    }

    v29 = vmulq_f32(v48, v18);
    *(v26 + 16) = v28;
    v15 = v26 + 32;
    *(v26 + 32 + 4 * v24) = v29.f32[2] + vaddv_f32(*v29.f32);
    swift_setDeallocating();
    swift_deallocClassInstance();
    v17 = *(v26 + 16);
    if (v17 < 2)
    {
      break;
    }

    v30 = 0;
    v31 = 0;
    v14 = (v26 + 36);
    v32 = 0x7FFFFFFFFFFFFFFFLL;
    v33 = 1;
    while (v32)
    {
      if (v31 < 0)
      {
        goto LABEL_26;
      }

      if (v31 >= v17)
      {
        goto LABEL_27;
      }

      v34 = *v14++;
      if (*(v15 + 4 * v31) < v34)
      {
        v30 = v33;
        v31 = v33;
      }

      ++v33;
      --v32;
      if (v17 == v33)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    sub_245FC7B28((v14 > 1), v17, 1);
    v13 = v58.transform.columns[0].i64[0];
    v14 = *(v58.transform.columns[0].i64[0] + 24);
    v16 = v14 >> 1;
  }

  v30 = 0;
LABEL_17:

  v58.transform.columns[0] = v57;
  v58.transform.columns[1] = v56;
  v58.transform.columns[2] = v55;
  v58.transform.columns[3] = v54;
  *v35.f32 = OCBoundingBox.extent.getter();
  v51 = v35;
  v58.transform.columns[0] = v57;
  v58.transform.columns[1] = v56;
  v58.transform.columns[2] = v55;
  v58.transform.columns[3] = v54;
  OCBoundingBox.rotation.getter(&v63);
  v39 = v63;
  v38 = v64;
  if (v17)
  {
    if (v30 == 1)
    {
      v39 = v52;
      v42 = vrev64q_s32(v51);
      v51 = vextq_s8(v42, v42, 0xCuLL);
      v38 = v46;
      v41 = v47;
    }

    else if (v30)
    {
      v36.i64[0] = v30;
      v37.i64[0] = 3;
      v43 = vdupq_lane_s64(vceqq_s64(v36, v37).i64[0], 0);
      v41 = vbslq_s8(v43, v48, v65);
      v39 = vbslq_s8(v43, v47, v63);
      v38 = vbslq_s8(v43, v46, v64);
    }

    else
    {
      v39 = v48;
      v40 = vrev64q_s32(v51);
      v51 = vextq_s8(v40, v40, 0xCuLL);
      v38 = v46;
      v41 = v53;
    }
  }

  else
  {
    v41 = v65;
  }

  v66[0] = v39;
  v66[1] = v38;
  v66[2] = v41;
  v44 = OCBoundingBox.position.getter();
  OCBoundingBox.init(position:extent:rotation:)(v66, &v58, v44, v51);
  return *v58.transform.columns[0].i64;
}

uint64_t sub_246021E38(uint64_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, int8x16_t a5)
{
  v5 = vmulq_f32(a2, a2);
  *v5.i8 = vadd_f32(*v5.i8, *&vextq_s8(v5, v5, 8uLL));
  v5.i32[0] = vadd_f32(*v5.i8, vdup_lane_s32(*v5.i8, 1)).u32[0];
  v6 = vrsqrte_f32(v5.u32[0]);
  v7 = vmul_f32(v6, vrsqrts_f32(v5.u32[0], vmul_f32(v6, v6)));
  v8 = vmulq_n_f32(a2, vmul_f32(v7, vrsqrts_f32(v5.u32[0], vmul_f32(v7, v7))).f32[0]);
  v9 = vmulq_f32(a3, a3);
  *v9.i8 = vadd_f32(*v9.i8, *&vextq_s8(v9, v9, 8uLL));
  v9.i32[0] = vadd_f32(*v9.i8, vdup_lane_s32(*v9.i8, 1)).u32[0];
  v10 = vrsqrte_f32(v9.u32[0]);
  v11 = vmul_f32(v10, vrsqrts_f32(v9.u32[0], vmul_f32(v10, v10)));
  v12 = vmulq_n_f32(a3, vmul_f32(v11, vrsqrts_f32(v9.u32[0], vmul_f32(v11, v11))).f32[0]);
  v13 = vmulq_f32(a4, a4);
  *v13.i8 = vadd_f32(*v13.i8, *&vextq_s8(v13, v13, 8uLL));
  v13.i32[0] = vadd_f32(*v13.i8, vdup_lane_s32(*v13.i8, 1)).u32[0];
  v14 = vrsqrte_f32(v13.u32[0]);
  v15 = vmul_f32(v14, vrsqrts_f32(v13.u32[0], vmul_f32(v14, v14)));
  return sub_2460233E8(v8, v12, vmulq_n_f32(a4, vmul_f32(v15, vrsqrts_f32(v13.u32[0], vmul_f32(v15, v15))).f32[0]), a5);
}

void __swiftcall getRotatedPlaneTransform(_:)(simd_float4x4 *__return_ptr retstr, ARPlaneAnchor *a2)
{
  [(ARPlaneAnchor *)a2 transform];
  v3 = [(ARPlaneAnchor *)a2 planeExtent];
  [(ARPlaneExtent *)v3 rotationOnYAxis];
  v5 = v4;

  v6 = __sincosf_stret(v5 * 0.5);
  v7 = vmulq_n_f32(xmmword_246098E50, v6.__sinval);
  v7.n128_u32[3] = LODWORD(v6.__cosval);
  MEMORY[0x24C196950](v7);
}

float sub_246021FD4(void *a1, void *a2)
{
  [a1 transform];
  v6 = v3;
  [a2 transform];
  return fabsf(COERCE_FLOAT(vsubq_f32(v6, v4).i32[1]));
}

void sub_246022048(uint64_t a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  v6 = *(*a1 + 96);
  if (v6() <= 0 || (v7 = (*(*a1 + 136))()) == 0)
  {
    a3[3] = 0u;
    a3[4] = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
    return;
  }

  v8 = v7;
  v9 = v6();
  if ((v9 & 0x8000000000000000) == 0)
  {
    v11 = v9;
    if (v9)
    {
      v56 = a3;
      type metadata accessor for OCVoxel(0);
      v12 = sub_246091E14();
      *(v12 + 16) = v11;
      v13 = (v12 + 16);
      bzero((v12 + 32), 48 * v11);
      v14._rawValue = v12;
    }

    else
    {
      v14._rawValue = MEMORY[0x277D84F90];
      v13 = (MEMORY[0x277D84F90] + 16);
      v11 = *(MEMORY[0x277D84F90] + 16);
      if (!v11)
      {
LABEL_29:
        OCVoxelCloud.init(voxels:transform:)(&v57, v14, v10);
        v38 = v57.transform.columns[0];
        v39 = v57.transform.columns[1];
        v40 = v57.transform.columns[2];
        v41 = v57.transform.columns[3];
        *a3 = v57.voxels._rawValue;
        a3[1] = v38;
        a3[2] = v39;
        a3[3] = v40;
        a3[4] = v41;
        return;
      }

      v56 = a3;
    }

    v15 = 0;
    v16 = (v14._rawValue + 64);
    v17 = v8 + 32;
    v18 = qword_27EE3C000;
    v19 = qword_27EE3C000;
    v20 = v11;
    while (1)
    {
      v21 = *(v17 - 32);
      v22 = floorf(*&v21);
      if ((LODWORD(v22) & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        break;
      }

      if (v22 <= -2147500000.0)
      {
        goto LABEL_31;
      }

      if (v22 >= 2147500000.0)
      {
        goto LABEL_32;
      }

      v23 = floorf(*(&v21 + 1));
      if ((LODWORD(v23) & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        goto LABEL_33;
      }

      if (v23 <= -2147500000.0)
      {
        goto LABEL_34;
      }

      if (v23 >= 2147500000.0)
      {
        goto LABEL_35;
      }

      v24 = floorf(*(&v21 + 2));
      if ((LODWORD(v24) & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        goto LABEL_36;
      }

      if (v24 <= -2147500000.0)
      {
        goto LABEL_37;
      }

      if (v24 >= 2147500000.0)
      {
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        goto LABEL_39;
      }

      v25 = *(v17 - 16);
      v26 = *v17;
      v27 = *(v17 + 4);
      v29.i32[3] = 1;
      v29.i32[0] = v22;
      v29.i32[1] = v23;
      v29.i32[2] = v24;
      v25.i32[3] = 0;
      v28 = *v17;
      v16[-2] = v29;
      v16[-1] = v25;
      v29.f32[0] = HIBYTE(v26) / 255.0;
      v30 = v29;
      v30.f32[1] = BYTE2(v26) / 255.0;
      v31 = v30;
      v31.f32[2] = BYTE1(v26) / 255.0;
      v32 = v31;
      v32.f32[3] = v28 / 255.0;
      if (a2)
      {
        if (v18[406] != -1)
        {
          rawValue = v14._rawValue;
          v50 = HIBYTE(v26) / 255.0;
          v52 = v32;
          v46 = v31;
          v48 = v30.i64[0];
          swift_once();
          v31 = v46;
          v30.i64[0] = v48;
          v29.f32[0] = v50;
          v32 = v52;
          v19 = qword_27EE3C000;
          v18 = qword_27EE3C000;
          v14._rawValue = rawValue;
        }

        v34 = *zmmword_27EE3F060;
        v33 = *&zmmword_27EE3F060[16];
        v36 = *&zmmword_27EE3F060[32];
        v35 = *&zmmword_27EE3F060[48];
        if (v19[405] != -1)
        {
          v55 = v14._rawValue;
          v51 = v29.i32[0];
          v53 = v32;
          v47 = v31;
          v49 = v30.i64[0];
          v44 = *&zmmword_27EE3F060[32];
          v45 = *&zmmword_27EE3F060[48];
          v42 = *zmmword_27EE3F060;
          v43 = *&zmmword_27EE3F060[16];
          swift_once();
          v34 = v42;
          v33 = v43;
          v36 = v44;
          v35 = v45;
          v31 = v47;
          v30.i64[0] = v49;
          v29.i32[0] = v51;
          v32 = v53;
          v19 = qword_27EE3C000;
          v18 = qword_27EE3C000;
          v14._rawValue = v55;
        }

        v37 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v34, v29.f32[0]), v33, *v30.f32, 1), v36, v31, 2), v35, v32, 3);
        v32 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*zmmword_27EE3F020, v27 * v37.f32[0]), *&zmmword_27EE3F020[16], *v37.f32, 1), *&zmmword_27EE3F020[32], v37, 2), *&zmmword_27EE3F020[48], v37, 3);
        v20 = *v13;
      }

      if (v15 >= v20)
      {
        goto LABEL_40;
      }

      ++v15;
      *v16 = v32;
      v16 += 3;
      v17 += 48;
      if (v11 == v15)
      {
        a3 = v56;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_246022454@<X0>(uint64_t a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>, __n128 a4@<Q0>, __n128 a5@<Q1>, __n128 a6@<Q2>, __n128 a7@<Q3>)
{
  v10 = *(*a1 + 96);
  result = v10();
  if (result <= 0 || (result = (*(*a1 + 136))()) == 0)
  {
    a3[3] = 0u;
    a3[4] = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
    return result;
  }

  v12 = result;
  result = v10();
  if ((result & 0x8000000000000000) == 0)
  {
    v13 = result;
    if (result)
    {
      type metadata accessor for OCPoint(0);
      v14 = sub_246091E14();
      *(v14 + 16) = v13;
      v15 = (v14 + 16);
      bzero((v14 + 32), 48 * v13);
      result = v14;
    }

    else
    {
      result = MEMORY[0x277D84F90];
      v15 = (MEMORY[0x277D84F90] + 16);
      v13 = *(MEMORY[0x277D84F90] + 16);
      if (!v13)
      {
LABEL_18:
        result = _s6CoreOC12OCVoxelCloudV6voxels9transformACSaySo0C0aG_So13simd_float4x4atcfC_0(result, v58, a4, a5, a6, a7);
        v36 = v58[1];
        v37 = v58[2];
        v38 = v58[3];
        v39 = v58[4];
        *a3 = v58[0].n128_u64[0];
        a3[1] = v36;
        a3[2] = v37;
        a3[3] = v38;
        a3[4] = v39;
        return result;
      }
    }

    v16 = 0;
    v17 = (result + 64);
    v18 = v12 + 32;
    v19 = 1.0;
    v20 = qword_27EE3C000;
    v21 = qword_27EE3C000;
    v22 = v13;
    while (v16 < v22)
    {
      v23 = *(v18 + 4);
      v27 = *(v18 - 32);
      v24 = *(v18 - 16);
      v27.f32[3] = v19;
      v25 = *v18;
      v24.i32[3] = 0;
      v26 = *v18;
      v17[-2] = v27;
      v17[-1] = v24;
      v24.f32[0] = v26 / 255.0;
      v27.f32[0] = HIBYTE(v25) / 255.0;
      v28 = v27;
      v28.f32[1] = BYTE2(v25) / 255.0;
      v29 = v28;
      v29.f32[2] = BYTE1(v25) / 255.0;
      v30 = v29;
      v30.i32[3] = v24.i32[0];
      if (a2)
      {
        if (v20[406] != -1)
        {
          v52 = result;
          v48 = HIBYTE(v25) / 255.0;
          v50 = v30;
          v44 = v29;
          v46 = v28.i64[0];
          swift_once();
          v29 = v44;
          v28.i64[0] = v46;
          v27.f32[0] = v48;
          v30 = v50;
          v21 = qword_27EE3C000;
          v20 = qword_27EE3C000;
          v19 = 1.0;
          result = v52;
        }

        v32 = *zmmword_27EE3F060;
        v31 = *&zmmword_27EE3F060[16];
        v34 = *&zmmword_27EE3F060[32];
        v33 = *&zmmword_27EE3F060[48];
        if (v21[405] != -1)
        {
          v53 = result;
          v49 = v27.i32[0];
          v51 = v30;
          v45 = v29;
          v47 = v28.i64[0];
          v42 = *&zmmword_27EE3F060[32];
          v43 = *&zmmword_27EE3F060[48];
          v40 = *zmmword_27EE3F060;
          v41 = *&zmmword_27EE3F060[16];
          swift_once();
          v32 = v40;
          v31 = v41;
          v34 = v42;
          v33 = v43;
          v29 = v45;
          v28.i64[0] = v47;
          v27.i32[0] = v49;
          v30 = v51;
          v21 = qword_27EE3C000;
          v20 = qword_27EE3C000;
          v19 = 1.0;
          result = v53;
        }

        v35 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v32, v27.f32[0]), v31, *v28.f32, 1), v34, v29, 2), v33, v30, 3);
        v30 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*zmmword_27EE3F020, v23 * v35.f32[0]), *&zmmword_27EE3F020[16], *v35.f32, 1), *&zmmword_27EE3F020[32], v35, 2), *&zmmword_27EE3F020[48], v35, 3);
        v22 = *v15;
      }

      if (v16 >= v22)
      {
        goto LABEL_20;
      }

      ++v16;
      *v17 = v30;
      v17 += 3;
      v18 += 48;
      if (v13 == v16)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_246022788@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(result + 8);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = *result;
  v41 = *(result + 48);
  v42 = *(result + 32);
  v39 = *(result + 80);
  v40 = *(result + 64);
  v5 = *(**result + 96);

  if ((v5)(v6) <= 0 || (v7 = (*(*v4 + 136))()) == 0 || (v8 = v7, (v9 = (*(*v3 + 136))()) == 0))
  {

LABEL_9:
    a2[3] = 0u;
    a2[4] = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
    return result;
  }

  v10 = v9;
  result = v5();
  if (result < 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  v12 = result;
  if (result)
  {
    type metadata accessor for OCPoint(0);
    v13 = sub_246091E14();
    *(v13 + 16) = v12;
    bzero((v13 + 32), 48 * v12);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
    v12 = *(MEMORY[0x277D84F90] + 16);
    if (!v12)
    {
      goto LABEL_13;
    }
  }

  v14 = (v13 + 64);
  v15 = v8 + 16;
  v16.i64[0] = 0xFF000000FFLL;
  v16.i64[1] = 0xFF000000FFLL;
  v17 = vdupq_n_s32(0x437F0000u);
  do
  {
    v18 = *(v15 + 16);
    v11.i32[0] = v18;
    v19 = vshrq_n_u32(v11, 0x18uLL).u32[0];
    v11.i32[1] = HIWORD(v18);
    v11.i32[2] = v18 >> 8;
    v20 = *(v15 - 16);
    v21 = *v15;
    v11.i32[3] = v18;
    v22 = vandq_s8(v11, v16);
    v22.i32[0] = v19;
    v20.i32[3] = 1.0;
    v21.i32[3] = 0;
    v14[-2] = v20;
    v14[-1] = v21;
    v11 = vdivq_f32(vcvtq_f32_u32(v22), v17);
    *v14 = v11;
    v14 += 3;
    v15 += 48;
    --v12;
  }

  while (v12);
LABEL_13:
  result = (*(*v3 + 96))();
  if ((result & 0x8000000000000000) == 0)
  {
    v23 = result;
    if (result)
    {
      v24 = sub_246091E14();
      *(v24 + 16) = v23;
      bzero((v24 + 32), 4 * v23);
    }

    else
    {
      v24 = MEMORY[0x277D84F90];
      v23 = *(MEMORY[0x277D84F90] + 16);
      if (!v23)
      {
        goto LABEL_22;
      }
    }

    if (v23 >= 8 && v24 - v10 < 0xFFFFFFFFFFFFFFE0)
    {
      v25 = v23 & 0x7FFFFFFFFFFFFFF8;
      v35 = (v10 + 16);
      v36 = (v24 + 48);
      v37 = v23 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v38 = *v35;
        *(v36 - 1) = *(v35 - 1);
        *v36 = v38;
        v35 += 2;
        v36 += 2;
        v37 -= 8;
      }

      while (v37);
      if (v23 == v25)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v25 = 0;
    }

    v26 = v23 - v25;
    v27 = 4 * v25;
    v28 = 4 * v25 + 32;
    v29 = (v10 + v27);
    do
    {
      v30 = *v29++;
      *(v24 + v28) = v30;
      v28 += 4;
      --v26;
    }

    while (v26);
LABEL_22:
    sub_246086638(v13, v24, v43, v42, v41, v40, v39);

    v31 = v43[2];
    v32 = v43[3];
    v33 = v43[4];
    v34 = v43[1];
    *a2 = v43[0];
    a2[1] = v34;
    a2[2] = v31;
    a2[3] = v32;
    a2[4] = v33;
    return result;
  }

LABEL_28:
  __break(1u);
  return result;
}

_BYTE *sub_246022A7C(void *a1)
{
  v2 = [a1 length];
  if (v2 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = v2;
  while (1)
  {
    result = [a1 echoIds];
    if (!result[v3])
    {
      break;
    }

    if (__OFADD__(v3, 3))
    {
      v3 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v3 += 3;
    }

    if (v3 >= v4)
    {
      return 0;
    }
  }

  v6 = __OFADD__(v3, 2);
  v7 = v3 + 2;
  if (!v6)
  {
    if (v7 < v4)
    {
      return (*([a1 echoIds] + v7) == 2);
    }

    return 0;
  }

  __break(1u);
  return result;
}

char *sub_246022B2C@<X0>(void *a1@<X0>, char a2@<W1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_246022A7C(a1);
  v8 = v7;
  *a3 = v7 & 1;
  if (v7)
  {
    v9 = 0.8;
  }

  else
  {
    v9 = 0.9;
  }

  if (v7)
  {
    v10 = 3;
  }

  else
  {
    v10 = 2;
  }

  OCDepthPointCloud.init()(&v84);
  result = [a1 length];
  if (result >= 1)
  {
    v12 = 0;
    v83 = v8 & a2;
    v13 = result;
    do
    {
      v15 = v12;
      v16 = __OFADD__(v12, v10);
      v12 += v10;
      if (v16)
      {
        v17 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v12;
      }

      result = [a1 echoIds];
      if (!result[v15])
      {
        if (v83)
        {
          v18 = v15 + 2;
          if (__OFADD__(v15, 2))
          {
            __break(1u);
            return result;
          }

          goto LABEL_29;
        }

        v19 = *([a1 confidences] + v15);
        v20 = *([a1 confidences] + v15 + 1);
        v77 = *([a1 points] + v15);
        result = [a1 points];
        if (v9 < (v19 - v20))
        {
          v18 = v15;
LABEL_29:
          if (v18 != -1)
          {
            result = [a1 points];
            if (fabsf(*&result[16 * v18 + 8]) >= 0.000001)
            {
              v78 = *([a1 bankIds] + v18);
              v22 = v84;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v22 = sub_245F8D874(0, *(v22 + 2) + 1, 1, v22);
              }

              v24 = *(v22 + 2);
              v23 = *(v22 + 3);
              v25 = v24 + 1;
              if (v24 >= v23 >> 1)
              {
                v63 = sub_245F8D874((v23 > 1), v24 + 1, 1, v22);
                v25 = v24 + 1;
                v22 = v63;
              }

              *(v22 + 2) = v25;
              v22[v24 + 32] = v78;
              *&v84 = v22;
              v79 = *([a1 spotIds] + v18);
              v26 = *(&v84 + 1);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v26 = sub_245F8D874(0, *(v26 + 2) + 1, 1, v26);
              }

              v28 = *(v26 + 2);
              v27 = *(v26 + 3);
              v29 = v28 + 1;
              if (v28 >= v27 >> 1)
              {
                v64 = sub_245F8D874((v27 > 1), v28 + 1, 1, v26);
                v29 = v28 + 1;
                v26 = v64;
              }

              *(v26 + 2) = v29;
              v26[v28 + 32] = v79;
              *(&v84 + 1) = v26;
              v80 = *([a1 echoIds] + v18);
              v30 = v85;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v30 = sub_245F8D874(0, *(v30 + 2) + 1, 1, v30);
              }

              v32 = *(v30 + 2);
              v31 = *(v30 + 3);
              v33 = v32 + 1;
              if (v32 >= v31 >> 1)
              {
                v65 = sub_245F8D874((v31 > 1), v32 + 1, 1, v30);
                v33 = v32 + 1;
                v30 = v65;
              }

              *(v30 + 2) = v33;
              v30[v32 + 32] = v80;
              *&v85 = v30;
              v34 = *([a1 euclideanDistances] + v18);
              v35 = *(&v85 + 1);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v35 = sub_245FB1254(0, *(v35 + 2) + 1, 1, v35);
              }

              v37 = *(v35 + 2);
              v36 = *(v35 + 3);
              v38 = v37 + 1;
              if (v37 >= v36 >> 1)
              {
                v66 = sub_245FB1254((v36 > 1), v37 + 1, 1, v35);
                v38 = v37 + 1;
                v35 = v66;
              }

              *(v35 + 2) = v38;
              *&v35[4 * v37 + 32] = v34;
              *(&v85 + 1) = v35;
              v39 = *([a1 confidences] + v18);
              v40 = v86;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v40 = sub_245FB1254(0, *(v40 + 2) + 1, 1, v40);
              }

              v42 = *(v40 + 2);
              v41 = *(v40 + 3);
              v43 = v42 + 1;
              if (v42 >= v41 >> 1)
              {
                v67 = sub_245FB1254((v41 > 1), v42 + 1, 1, v40);
                v43 = v42 + 1;
                v40 = v67;
              }

              *(v40 + 2) = v43;
              *&v40[4 * v42 + 32] = v39;
              *&v86 = v40;
              v44 = *([a1 intensities] + v18);
              v45 = *(&v86 + 1);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v45 = sub_245FB1254(0, *(v45 + 2) + 1, 1, v45);
              }

              v47 = *(v45 + 2);
              v46 = *(v45 + 3);
              v48 = v47 + 1;
              if (v47 >= v46 >> 1)
              {
                v68 = sub_245FB1254((v46 > 1), v47 + 1, 1, v45);
                v48 = v47 + 1;
                v45 = v68;
              }

              *(v45 + 2) = v48;
              *&v45[4 * v47 + 32] = v44;
              *(&v86 + 1) = v45;
              v49 = *([a1 signalToNoiseRatios] + v18);
              v50 = v87;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v50 = sub_245FB1254(0, *(v50 + 2) + 1, 1, v50);
              }

              v52 = *(v50 + 2);
              v51 = *(v50 + 3);
              v53 = v52 + 1;
              if (v52 >= v51 >> 1)
              {
                v69 = sub_245FB1254((v51 > 1), v52 + 1, 1, v50);
                v53 = v52 + 1;
                v50 = v69;
              }

              *(v50 + 2) = v53;
              *&v50[4 * v52 + 32] = v49;
              *&v87 = v50;
              v81 = *([a1 cameraPixels] + v18);
              v54 = *(&v87 + 1);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v54 = sub_246026288(0, *(v54 + 2) + 1, 1, v54);
              }

              v56 = *(v54 + 2);
              v55 = *(v54 + 3);
              v57 = v56 + 1;
              if (v56 >= v55 >> 1)
              {
                v70 = sub_246026288((v55 > 1), v56 + 1, 1, v54);
                v57 = v56 + 1;
                v54 = v70;
              }

              *(v54 + 2) = v57;
              *&v54[16 * v56 + 32] = v81;
              *(&v87 + 1) = v54;
              v82 = *([a1 points] + v18);
              v74 = *([a1 points] + v18);
              v73 = *([a1 points] + v18);
              v58 = v88;
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = sub_245FA26DC(0, *(v58 + 2) + 1, 1, v58);
                v58 = result;
              }

              v60 = *(v58 + 2);
              v59 = *(v58 + 3);
              v61 = v60 + 1;
              v62 = v75;
              if (v60 >= v59 >> 1)
              {
                result = sub_245FA26DC((v59 > 1), v60 + 1, 1, v58);
                v62 = v75;
                v61 = v60 + 1;
                v58 = result;
              }

              *&v14 = vmul_f32(__PAIR64__(DWORD1(v74), v82), 0xBA83126F3A83126FLL);
              *(&v14 + 1) = __PAIR64__(v62, COERCE_UNSIGNED_INT(vmuls_lane_f32(-0.001, v73, 2)));
              *(v58 + 2) = v61;
              *&v58[16 * v60 + 32] = v14;
              v88 = v58;
              v75 = HIDWORD(v14);
            }
          }

          continue;
        }

        v18 = v15 + 1;
        if ((v19 - v20) < -v9)
        {
          goto LABEL_29;
        }

        if (v9 < v19 && v9 < v20)
        {
          if (*(&v77 + 2) <= COERCE_FLOAT(*&result[16 * v15 + 24]))
          {
            v18 = v15;
          }

          goto LABEL_29;
        }
      }
    }

    while (v17 < v13);
  }

  v71 = v87;
  *(a4 + 32) = v86;
  *(a4 + 48) = v71;
  *(a4 + 64) = v88;
  v72 = v85;
  *a4 = v84;
  *(a4 + 16) = v72;
  return result;
}