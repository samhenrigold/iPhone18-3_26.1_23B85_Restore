uint64_t sub_21CCB644C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_21CCB6470, 0, 0);
}

uint64_t sub_21CCB6470()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19170, &unk_21CD8F690);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F98, &qword_21CD88950);
  *v6 = v0;
  v6[1] = sub_21CCB44D0;
  v8 = *(v0 + 16);

  return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000023, 0x800000021CD9E250, sub_21CCC1BDC, v3, v7);
}

uint64_t sub_21CCB65B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_21CCB65DC, 0, 0);
}

uint64_t sub_21CCB65DC()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19170, &unk_21CD8F690);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = type metadata accessor for MobileDocumentReaderResponse(0);
  *v6 = v0;
  v6[1] = sub_21CCB44D0;
  v8 = *(v0 + 16);

  return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000023, 0x800000021CD9E250, sub_21CCC0E90, v3, v7);
}

void sub_21CCB6A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE19190, &qword_21CD8E260);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  if (a1)
  {
    v14 = sub_21CD83D74();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = a3;
    v15[5] = a1;
    v15[6] = a2;
    a5(a1, a2);

    sub_21CD5C550(0, 0, v13, a6, v15);
  }

  else
  {
    if (qword_280F77E40 != -1)
    {
      swift_once();
    }

    v16 = sub_21CD839F4();
    __swift_project_value_buffer(v16, qword_280F78E40);
    v21 = sub_21CD839D4();
    v17 = sub_21CD83E24();
    if (os_log_type_enabled(v21, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_21CC90000, v21, v17, "SendableXPCConnection onCancel is nil", v18, 2u);
      MEMORY[0x21CF18580](v18, -1, -1);
    }

    v19 = v21;
  }
}

uint64_t sub_21CCB6CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_21CCB6CC8, 0, 0);
}

uint64_t sub_21CCB6CC8()
{
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v1 = sub_21CD839F4();
  v0[5] = __swift_project_value_buffer(v1, qword_280F78E40);
  v2 = sub_21CD839D4();
  v3 = sub_21CD83E14();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CC90000, v2, v3, "SendableXPCConnection executing cancellation handler", v4, 2u);
    MEMORY[0x21CF18580](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  v8 = *(v7 + 16);
  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);
  v0[6] = v9;
  v9;
  os_unfair_lock_unlock((v8 + 24));
  v10 = swift_allocObject();
  v0[7] = v10;
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;

  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_21CCB6E9C;

  return (sub_21CCB4370)();
}

uint64_t sub_21CCB6E9C()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_21CCC4934;
  }

  else
  {
    v4 = *(v2 + 48);

    v3 = sub_21CCC49B0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21CCB6FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_21CCB6FE0, 0, 0);
}

uint64_t sub_21CCB6FE0()
{
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v1 = sub_21CD839F4();
  v0[5] = __swift_project_value_buffer(v1, qword_280F78E40);
  v2 = sub_21CD839D4();
  v3 = sub_21CD83E14();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CC90000, v2, v3, "SendableXPCConnection executing cancellation handler", v4, 2u);
    MEMORY[0x21CF18580](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  v8 = *(v7 + 16);
  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);
  v0[6] = v9;
  v9;
  os_unfair_lock_unlock((v8 + 24));
  v10 = swift_allocObject();
  v0[7] = v10;
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;

  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_21CCB6E9C;

  return (sub_21CCB45EC)();
}

uint64_t sub_21CCB71B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_21CCB71D8, 0, 0);
}

uint64_t sub_21CCB71D8()
{
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v1 = sub_21CD839F4();
  v0[5] = __swift_project_value_buffer(v1, qword_280F78E40);
  v2 = sub_21CD839D4();
  v3 = sub_21CD83E14();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CC90000, v2, v3, "SendableXPCConnection executing cancellation handler", v4, 2u);
    MEMORY[0x21CF18580](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  v8 = *(v7 + 16);
  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);
  v0[6] = v9;
  v9;
  os_unfair_lock_unlock((v8 + 24));
  v10 = swift_allocObject();
  v0[7] = v10;
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;

  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_21CCB6E9C;

  return (sub_21CCB45EC)();
}

uint64_t sub_21CCB73AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_21CCB73D0, 0, 0);
}

uint64_t sub_21CCB73D0()
{
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v1 = sub_21CD839F4();
  v0[5] = __swift_project_value_buffer(v1, qword_280F78E40);
  v2 = sub_21CD839D4();
  v3 = sub_21CD83E14();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CC90000, v2, v3, "SendableXPCConnection executing cancellation handler", v4, 2u);
    MEMORY[0x21CF18580](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  v8 = *(v7 + 16);
  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);
  v0[6] = v9;
  v9;
  os_unfair_lock_unlock((v8 + 24));
  v10 = swift_allocObject();
  v0[7] = v10;
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;

  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_21CCB6E9C;

  return (sub_21CCB45EC)();
}

uint64_t sub_21CCB75A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_21CCB75C8, 0, 0);
}

uint64_t sub_21CCB75C8()
{
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v1 = sub_21CD839F4();
  v0[5] = __swift_project_value_buffer(v1, qword_280F78E40);
  v2 = sub_21CD839D4();
  v3 = sub_21CD83E14();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CC90000, v2, v3, "SendableXPCConnection executing cancellation handler", v4, 2u);
    MEMORY[0x21CF18580](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  v8 = *(v7 + 16);
  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);
  v0[6] = v9;
  v9;
  os_unfair_lock_unlock((v8 + 24));
  v10 = swift_allocObject();
  v0[7] = v10;
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;

  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_21CCB779C;

  return (sub_21CCB4DEC)();
}

uint64_t sub_21CCB779C()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_21CCB78D0;
  }

  else
  {
    v4 = *(v2 + 48);

    v3 = sub_21CCB78BC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21CCB78D0()
{
  v1 = v0[9];
  v2 = v0[6];

  v3 = v1;
  v4 = sub_21CD839D4();
  v5 = sub_21CD83E34();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_21CC90000, v4, v5, "SendableXPCConnection error occurred when cancelling the task: %@", v8, 0xCu);
    sub_21CCB1928(v9, &qword_27CE18F68, &unk_21CD88800);
    MEMORY[0x21CF18580](v9, -1, -1);
    MEMORY[0x21CF18580](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_21CCB7A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_21CCB7A60, 0, 0);
}

uint64_t sub_21CCB7A60()
{
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v1 = sub_21CD839F4();
  v0[5] = __swift_project_value_buffer(v1, qword_280F78E40);
  v2 = sub_21CD839D4();
  v3 = sub_21CD83E14();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CC90000, v2, v3, "SendableXPCConnection executing cancellation handler", v4, 2u);
    MEMORY[0x21CF18580](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  v8 = *(v7 + 16);
  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);
  v0[6] = v9;
  v9;
  os_unfair_lock_unlock((v8 + 24));
  v10 = swift_allocObject();
  v0[7] = v10;
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;

  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_21CCB6E9C;

  return (sub_21CCB50CC)();
}

uint64_t sub_21CCB7C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_21CCB7C58, 0, 0);
}

uint64_t sub_21CCB7C58()
{
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v1 = sub_21CD839F4();
  v0[5] = __swift_project_value_buffer(v1, qword_280F78E40);
  v2 = sub_21CD839D4();
  v3 = sub_21CD83E14();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CC90000, v2, v3, "SendableXPCConnection executing cancellation handler", v4, 2u);
    MEMORY[0x21CF18580](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  v8 = *(v7 + 16);
  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);
  v0[6] = v9;
  v9;
  os_unfair_lock_unlock((v8 + 24));
  v10 = swift_allocObject();
  v0[7] = v10;
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;

  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_21CCB6E9C;

  return (sub_21CCB54A8)();
}

uint64_t sub_21CCB7E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_21CCB7E50, 0, 0);
}

uint64_t sub_21CCB7E50()
{
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v1 = sub_21CD839F4();
  v0[5] = __swift_project_value_buffer(v1, qword_280F78E40);
  v2 = sub_21CD839D4();
  v3 = sub_21CD83E14();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CC90000, v2, v3, "SendableXPCConnection executing cancellation handler", v4, 2u);
    MEMORY[0x21CF18580](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  v8 = *(v7 + 16);
  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);
  v0[6] = v9;
  v9;
  os_unfair_lock_unlock((v8 + 24));
  v10 = swift_allocObject();
  v0[7] = v10;
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;

  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_21CCB6E9C;

  return (sub_21CCB54A8)();
}

uint64_t sub_21CCB8024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_21CCB8048, 0, 0);
}

uint64_t sub_21CCB8048()
{
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v1 = sub_21CD839F4();
  v0[5] = __swift_project_value_buffer(v1, qword_280F78E40);
  v2 = sub_21CD839D4();
  v3 = sub_21CD83E14();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CC90000, v2, v3, "SendableXPCConnection executing cancellation handler", v4, 2u);
    MEMORY[0x21CF18580](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  v8 = *(v7 + 16);
  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);
  v0[6] = v9;
  v9;
  os_unfair_lock_unlock((v8 + 24));
  v10 = swift_allocObject();
  v0[7] = v10;
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;

  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_21CCB6E9C;

  return (sub_21CCB54A8)();
}

uint64_t sub_21CCB821C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_21CCB8240, 0, 0);
}

uint64_t sub_21CCB8240()
{
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v1 = sub_21CD839F4();
  v0[5] = __swift_project_value_buffer(v1, qword_280F78E40);
  v2 = sub_21CD839D4();
  v3 = sub_21CD83E14();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CC90000, v2, v3, "SendableXPCConnection executing cancellation handler", v4, 2u);
    MEMORY[0x21CF18580](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  v8 = *(v7 + 16);
  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);
  v0[6] = v9;
  v9;
  os_unfair_lock_unlock((v8 + 24));
  v10 = swift_allocObject();
  v0[7] = v10;
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;

  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_21CCB6E9C;

  return (sub_21CCB54A8)();
}

uint64_t sub_21CCB8414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_21CCB8438, 0, 0);
}

uint64_t sub_21CCB8438()
{
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v1 = sub_21CD839F4();
  v0[5] = __swift_project_value_buffer(v1, qword_280F78E40);
  v2 = sub_21CD839D4();
  v3 = sub_21CD83E14();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CC90000, v2, v3, "SendableXPCConnection executing cancellation handler", v4, 2u);
    MEMORY[0x21CF18580](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  v8 = *(v7 + 16);
  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);
  v0[6] = v9;
  v9;
  os_unfair_lock_unlock((v8 + 24));
  v10 = swift_allocObject();
  v0[7] = v10;
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;

  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_21CCB6E9C;

  return (sub_21CCB5A1C)();
}

uint64_t sub_21CCB860C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_21CCB8630, 0, 0);
}

uint64_t sub_21CCB8630()
{
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v1 = sub_21CD839F4();
  v0[5] = __swift_project_value_buffer(v1, qword_280F78E40);
  v2 = sub_21CD839D4();
  v3 = sub_21CD83E14();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CC90000, v2, v3, "SendableXPCConnection executing cancellation handler", v4, 2u);
    MEMORY[0x21CF18580](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  v8 = *(v7 + 16);
  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);
  v0[6] = v9;
  v9;
  os_unfair_lock_unlock((v8 + 24));
  v10 = swift_allocObject();
  v0[7] = v10;
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;

  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_21CCB6E9C;

  return (sub_21CCB5A1C)();
}

uint64_t sub_21CCB8804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_21CCB8828, 0, 0);
}

uint64_t sub_21CCB8828()
{
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v1 = sub_21CD839F4();
  v0[5] = __swift_project_value_buffer(v1, qword_280F78E40);
  v2 = sub_21CD839D4();
  v3 = sub_21CD83E14();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CC90000, v2, v3, "SendableXPCConnection executing cancellation handler", v4, 2u);
    MEMORY[0x21CF18580](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  v8 = *(v7 + 16);
  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);
  v0[6] = v9;
  v9;
  os_unfair_lock_unlock((v8 + 24));
  v10 = swift_allocObject();
  v0[7] = v10;
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;

  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_21CCB6E9C;

  return (sub_21CCB5A1C)();
}

uint64_t sub_21CCB89FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_21CCB8A20, 0, 0);
}

uint64_t sub_21CCB8A20()
{
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v1 = sub_21CD839F4();
  v0[5] = __swift_project_value_buffer(v1, qword_280F78E40);
  v2 = sub_21CD839D4();
  v3 = sub_21CD83E14();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CC90000, v2, v3, "SendableXPCConnection executing cancellation handler", v4, 2u);
    MEMORY[0x21CF18580](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  v8 = *(v7 + 16);
  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);
  v0[6] = v9;
  v9;
  os_unfair_lock_unlock((v8 + 24));
  v10 = swift_allocObject();
  v0[7] = v10;
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;

  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_21CCB6E9C;

  return (sub_21CCB5A1C)();
}

uint64_t sub_21CCB8BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_21CCB8C18, 0, 0);
}

uint64_t sub_21CCB8C18()
{
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v1 = sub_21CD839F4();
  v0[5] = __swift_project_value_buffer(v1, qword_280F78E40);
  v2 = sub_21CD839D4();
  v3 = sub_21CD83E14();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CC90000, v2, v3, "SendableXPCConnection executing cancellation handler", v4, 2u);
    MEMORY[0x21CF18580](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  v8 = *(v7 + 16);
  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);
  v0[6] = v9;
  v9;
  os_unfair_lock_unlock((v8 + 24));
  v10 = swift_allocObject();
  v0[7] = v10;
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;

  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_21CCB6E9C;

  return (sub_21CCB5A1C)();
}

uint64_t sub_21CCB8DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_21CCB8E10, 0, 0);
}

uint64_t sub_21CCB8E10()
{
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v1 = sub_21CD839F4();
  v0[5] = __swift_project_value_buffer(v1, qword_280F78E40);
  v2 = sub_21CD839D4();
  v3 = sub_21CD83E14();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CC90000, v2, v3, "SendableXPCConnection executing cancellation handler", v4, 2u);
    MEMORY[0x21CF18580](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  v8 = *(v7 + 16);
  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);
  v0[6] = v9;
  v9;
  os_unfair_lock_unlock((v8 + 24));
  v10 = swift_allocObject();
  v0[7] = v10;
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;

  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_21CCB6E9C;

  return (sub_21CCB5A1C)();
}

uint64_t sub_21CCB8FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_21CCB9008, 0, 0);
}

uint64_t sub_21CCB9008()
{
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v1 = sub_21CD839F4();
  v0[5] = __swift_project_value_buffer(v1, qword_280F78E40);
  v2 = sub_21CD839D4();
  v3 = sub_21CD83E14();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CC90000, v2, v3, "SendableXPCConnection executing cancellation handler", v4, 2u);
    MEMORY[0x21CF18580](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  v8 = *(v7 + 16);
  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);
  v0[6] = v9;
  v9;
  os_unfair_lock_unlock((v8 + 24));
  v10 = swift_allocObject();
  v0[7] = v10;
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;

  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_21CCB6E9C;

  return (sub_21CCB5A1C)();
}

uint64_t sub_21CCB91DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_21CCB9200, 0, 0);
}

uint64_t sub_21CCB9200()
{
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v1 = sub_21CD839F4();
  v0[5] = __swift_project_value_buffer(v1, qword_280F78E40);
  v2 = sub_21CD839D4();
  v3 = sub_21CD83E14();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CC90000, v2, v3, "SendableXPCConnection executing cancellation handler", v4, 2u);
    MEMORY[0x21CF18580](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  v8 = *(v7 + 16);
  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);
  v0[6] = v9;
  v9;
  os_unfair_lock_unlock((v8 + 24));
  v10 = swift_allocObject();
  v0[7] = v10;
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;

  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_21CCB6E9C;

  return (sub_21CCB5A1C)();
}

uint64_t sub_21CCB93D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v26 = a8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE19190, &qword_21CD8E260);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v25 - v18;
  v20 = sub_21CD83D74();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  (*(v13 + 16))(v16, a1, v12);
  v21 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 4) = a2;
  (*(v13 + 32))(&v22[v21], v16, v12);
  v23 = &v22[(v14 + v21 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v23 = a3;
  *(v23 + 1) = a4;

  sub_21CD5C550(0, 0, v19, v26, v22);
}

uint64_t sub_21CCB95DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v7[20] = a4;
  v7[21] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F70, &qword_21CD98400);
  v7[24] = v8;
  v9 = *(v8 - 8);
  v7[25] = v9;
  v7[26] = *(v9 + 64);
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CCB96B4, 0, 0);
}

uint64_t sub_21CCB96B4()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[25];
  v5 = v0[20];
  v4 = v0[21];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_21CCC4A08;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_21CD80FA4;
  v0[5] = &block_descriptor_473;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_21CD83EE4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_21CCB15A8((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE19020, &unk_21CD88D20);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[28] = v11) != 0))
  {
    v12 = v0[22];
    v0[16] = v11;
    v18 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[29] = v13;
    *v13 = v0;
    v13[1] = sub_21CCB9A78;

    return v18();
  }

  else
  {
    sub_21CD83F74();
    MEMORY[0x21CF175E0](0xD000000000000014, 0x800000021CD9E2A0);
    __swift_project_boxed_opaque_existential_0(v0 + 8, v0[11]);
    sub_21CD84184();
    MEMORY[0x21CF175E0](0xD000000000000013, 0x800000021CD9E2C0);
    MEMORY[0x21CF175E0](0xD000000000000050, 0x800000021CD9E3B0);
    sub_21CCB14E0();
    v15 = swift_allocError();
    *v16 = 2;
    *(v16 + 8) = 0;
    *(v16 + 16) = 0xE000000000000000;
    *(v16 + 24) = 0;
    v0[18] = v15;
    sub_21CD83CF4();
    __swift_destroy_boxed_opaque_existential_0(v0 + 8);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_21CCB9A78()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_21CCC49A4;
  }

  else
  {
    v2 = sub_21CCC49B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CCB9B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v7[20] = a4;
  v7[21] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F70, &qword_21CD98400);
  v7[24] = v8;
  v9 = *(v8 - 8);
  v7[25] = v9;
  v7[26] = *(v9 + 64);
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CCB9C64, 0, 0);
}

uint64_t sub_21CCB9C64()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[25];
  v5 = v0[20];
  v4 = v0[21];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_21CCC4A08;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_21CD80FA4;
  v0[5] = &block_descriptor_65;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_21CD83EE4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_21CCB15A8((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F88, &qword_21CD88890);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[28] = v11) != 0))
  {
    v12 = v0[22];
    v0[16] = v11;
    v18 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[29] = v13;
    *v13 = v0;
    v13[1] = sub_21CCB9A78;

    return v18();
  }

  else
  {
    sub_21CD83F74();
    MEMORY[0x21CF175E0](0xD000000000000014, 0x800000021CD9E2A0);
    __swift_project_boxed_opaque_existential_0(v0 + 8, v0[11]);
    sub_21CD84184();
    MEMORY[0x21CF175E0](0xD000000000000013, 0x800000021CD9E2C0);
    MEMORY[0x21CF175E0](0xD00000000000001DLL, 0x800000021CD9E320);
    sub_21CCB14E0();
    v15 = swift_allocError();
    *v16 = 2;
    *(v16 + 8) = 0;
    *(v16 + 16) = 0xE000000000000000;
    *(v16 + 24) = 0;
    v0[18] = v15;
    sub_21CD83CF4();
    __swift_destroy_boxed_opaque_existential_0(v0 + 8);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_21CCBA028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v7[20] = a4;
  v7[21] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F90, &qword_21CD88908);
  v7[24] = v8;
  v9 = *(v8 - 8);
  v7[25] = v9;
  v7[26] = *(v9 + 64);
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CCBA100, 0, 0);
}

uint64_t sub_21CCBA100()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[25];
  v5 = v0[20];
  v4 = v0[21];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_21CCC1A38;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_21CD80FA4;
  v0[5] = &block_descriptor_117;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_21CD83EE4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_21CCB15A8((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F88, &qword_21CD88890);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[28] = v11) != 0))
  {
    v12 = v0[22];
    v0[16] = v11;
    v18 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[29] = v13;
    *v13 = v0;
    v13[1] = sub_21CCBA4CC;

    return (v18)(v0 + 31, v0 + 16);
  }

  else
  {
    sub_21CD83F74();
    MEMORY[0x21CF175E0](0xD000000000000014, 0x800000021CD9E2A0);
    __swift_project_boxed_opaque_existential_0(v0 + 8, v0[11]);
    sub_21CD84184();
    MEMORY[0x21CF175E0](0xD000000000000013, 0x800000021CD9E2C0);
    MEMORY[0x21CF175E0](0xD00000000000001DLL, 0x800000021CD9E320);
    sub_21CCB14E0();
    v15 = swift_allocError();
    *v16 = 2;
    *(v16 + 8) = 0;
    *(v16 + 16) = 0xE000000000000000;
    *(v16 + 24) = 0;
    v0[18] = v15;
    sub_21CD83CF4();
    __swift_destroy_boxed_opaque_existential_0(v0 + 8);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_21CCBA4CC()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_21CCBA664;
  }

  else
  {
    v2 = sub_21CCBA5E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CCBA5E0()
{
  sub_21CD83D04();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CCBA664()
{
  v1 = v0[30];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  v0[19] = v1;
  sub_21CD83CF4();

  v2 = v0[1];

  return v2();
}

uint64_t sub_21CCBA6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191B0, &qword_21CD888C8);
  v7[25] = v8;
  v9 = *(v8 - 8);
  v7[26] = v9;
  v7[27] = *(v9 + 64);
  v7[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CCBA7D0, 0, 0);
}

uint64_t sub_21CCBA7D0()
{
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];
  v5 = v0[21];
  v4 = v0[22];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_21CCC1700;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_21CD80FA4;
  v0[5] = &block_descriptor_93;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_21CD83EE4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_21CCB15A8((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F88, &qword_21CD88890);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[29] = v11) != 0))
  {
    v12 = v0[23];
    v0[16] = v11;
    v18 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[30] = v13;
    *v13 = v0;
    v13[1] = sub_21CCBAB9C;

    return (v18)(v0 + 19, v0 + 16);
  }

  else
  {
    sub_21CD83F74();
    MEMORY[0x21CF175E0](0xD000000000000014, 0x800000021CD9E2A0);
    __swift_project_boxed_opaque_existential_0(v0 + 8, v0[11]);
    sub_21CD84184();
    MEMORY[0x21CF175E0](0xD000000000000013, 0x800000021CD9E2C0);
    MEMORY[0x21CF175E0](0xD00000000000001DLL, 0x800000021CD9E320);
    sub_21CCB14E0();
    v15 = swift_allocError();
    *v16 = 2;
    *(v16 + 8) = 0;
    *(v16 + 16) = 0xE000000000000000;
    *(v16 + 24) = 0;
    v0[18] = v15;
    sub_21CD83CF4();
    __swift_destroy_boxed_opaque_existential_0(v0 + 8);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_21CCBAB9C()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_21CCBAD34;
  }

  else
  {
    v2 = sub_21CCBACB0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CCBACB0()
{
  sub_21CD83D04();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CCBAD34()
{
  v1 = v0[31];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  v0[20] = v1;
  sub_21CD83CF4();

  v2 = v0[1];

  return v2();
}

uint64_t sub_21CCBADC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v7[20] = a4;
  v7[21] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F70, &qword_21CD98400);
  v7[24] = v8;
  v9 = *(v8 - 8);
  v7[25] = v9;
  v7[26] = *(v9 + 64);
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CCBAEA0, 0, 0);
}

uint64_t sub_21CCBAEA0()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[25];
  v5 = v0[20];
  v4 = v0[21];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_21CCC4434;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_21CD80FA4;
  v0[5] = &block_descriptor_447;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_21CD83EE4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_21CCB15A8((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19010, &qword_21CD88CD0);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[28] = v11) != 0))
  {
    v12 = v0[22];
    v0[16] = v11;
    v18 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[29] = v13;
    *v13 = v0;
    v13[1] = sub_21CCBB264;

    return v18();
  }

  else
  {
    sub_21CD83F74();
    MEMORY[0x21CF175E0](0xD000000000000014, 0x800000021CD9E2A0);
    __swift_project_boxed_opaque_existential_0(v0 + 8, v0[11]);
    sub_21CD84184();
    MEMORY[0x21CF175E0](0xD000000000000013, 0x800000021CD9E2C0);
    MEMORY[0x21CF175E0](0xD00000000000001BLL, 0x800000021CD9E390);
    sub_21CCB14E0();
    v15 = swift_allocError();
    *v16 = 2;
    *(v16 + 8) = 0;
    *(v16 + 16) = 0xE000000000000000;
    *(v16 + 24) = 0;
    v0[18] = v15;
    sub_21CD83CF4();
    __swift_destroy_boxed_opaque_existential_0(v0 + 8);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_21CCBB264()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_21CCBA664;
  }

  else
  {
    v2 = sub_21CCBB378;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CCBB378(uint64_t a1)
{
  sub_21CD83D04();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v1 + 64));

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_21CCBB3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v7[20] = a4;
  v7[21] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F70, &qword_21CD98400);
  v7[24] = v8;
  v9 = *(v8 - 8);
  v7[25] = v9;
  v7[26] = *(v9 + 64);
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CCBB4D0, 0, 0);
}

uint64_t sub_21CCBB4D0()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[25];
  v5 = v0[20];
  v4 = v0[21];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_21CCC4A08;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_21CD80FA4;
  v0[5] = &block_descriptor_410;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_21CD83EE4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_21CCB15A8((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18FF8, &qword_21CD88C68);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[28] = v11) != 0))
  {
    v12 = v0[22];
    v0[16] = v11;
    v18 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[29] = v13;
    *v13 = v0;
    v13[1] = sub_21CCB9A78;

    return v18();
  }

  else
  {
    sub_21CD83F74();
    MEMORY[0x21CF175E0](0xD000000000000014, 0x800000021CD9E2A0);
    __swift_project_boxed_opaque_existential_0(v0 + 8, v0[11]);
    sub_21CD84184();
    MEMORY[0x21CF175E0](0xD000000000000013, 0x800000021CD9E2C0);
    MEMORY[0x21CF175E0](0xD00000000000001FLL, 0x800000021CD9E370);
    sub_21CCB14E0();
    v15 = swift_allocError();
    *v16 = 2;
    *(v16 + 8) = 0;
    *(v16 + 16) = 0xE000000000000000;
    *(v16 + 24) = 0;
    v0[18] = v15;
    sub_21CD83CF4();
    __swift_destroy_boxed_opaque_existential_0(v0 + 8);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_21CCBB894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19008, &unk_21CD8E3A0);
  v7[25] = v8;
  v9 = *(v8 - 8);
  v7[26] = v9;
  v7[27] = *(v9 + 64);
  v7[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CCBB96C, 0, 0);
}

uint64_t sub_21CCBB96C()
{
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];
  v5 = v0[21];
  v4 = v0[22];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_21CCC40FC;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_21CD80FA4;
  v0[5] = &block_descriptor_425;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_21CD83EE4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_21CCB15A8((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18FF8, &qword_21CD88C68);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[29] = v11) != 0))
  {
    v12 = v0[23];
    v0[16] = v11;
    v18 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[30] = v13;
    *v13 = v0;
    v13[1] = sub_21CCBBD38;

    return (v18)(v0 + 19, v0 + 16);
  }

  else
  {
    sub_21CD83F74();
    MEMORY[0x21CF175E0](0xD000000000000014, 0x800000021CD9E2A0);
    __swift_project_boxed_opaque_existential_0(v0 + 8, v0[11]);
    sub_21CD84184();
    MEMORY[0x21CF175E0](0xD000000000000013, 0x800000021CD9E2C0);
    MEMORY[0x21CF175E0](0xD00000000000001FLL, 0x800000021CD9E370);
    sub_21CCB14E0();
    v15 = swift_allocError();
    *v16 = 2;
    *(v16 + 8) = 0;
    *(v16 + 16) = 0xE000000000000000;
    *(v16 + 24) = 0;
    v0[18] = v15;
    sub_21CD83CF4();
    __swift_destroy_boxed_opaque_existential_0(v0 + 8);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_21CCBBD38()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_21CCC4A10;
  }

  else
  {
    v2 = sub_21CCC49A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CCBBE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v7[20] = a4;
  v7[21] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F70, &qword_21CD98400);
  v7[24] = v8;
  v9 = *(v8 - 8);
  v7[25] = v9;
  v7[26] = *(v9 + 64);
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CCBBF24, 0, 0);
}

uint64_t sub_21CCBBF24()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[25];
  v5 = v0[20];
  v4 = v0[21];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_21CCC4A08;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_21CD80FA4;
  v0[5] = &block_descriptor_306;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_21CD83EE4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_21CCB15A8((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18FD8, &qword_21CD88B40);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[28] = v11) != 0))
  {
    v12 = v0[22];
    v0[16] = v11;
    v18 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[29] = v13;
    *v13 = v0;
    v13[1] = sub_21CCB9A78;

    return v18();
  }

  else
  {
    sub_21CD83F74();
    MEMORY[0x21CF175E0](0xD000000000000014, 0x800000021CD9E2A0);
    __swift_project_boxed_opaque_existential_0(v0 + 8, v0[11]);
    sub_21CD84184();
    MEMORY[0x21CF175E0](0xD000000000000013, 0x800000021CD9E2C0);
    MEMORY[0x21CF175E0](0xD00000000000002BLL, 0x800000021CD9E340);
    sub_21CCB14E0();
    v15 = swift_allocError();
    *v16 = 2;
    *(v16 + 8) = 0;
    *(v16 + 16) = 0xE000000000000000;
    *(v16 + 24) = 0;
    v0[18] = v15;
    sub_21CD83CF4();
    __swift_destroy_boxed_opaque_existential_0(v0 + 8);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_21CCBC2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v7[20] = a4;
  v7[21] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18FF0, &qword_21CD88C10);
  v7[24] = v8;
  v9 = *(v8 - 8);
  v7[25] = v9;
  v7[26] = *(v9 + 64);
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CCBC3C0, 0, 0);
}

uint64_t sub_21CCBC3C0()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[25];
  v5 = v0[20];
  v4 = v0[21];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_21CCC3BE4;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_21CD80FA4;
  v0[5] = &block_descriptor_388;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_21CD83EE4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_21CCB15A8((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18FD8, &qword_21CD88B40);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[28] = v11) != 0))
  {
    v12 = v0[22];
    v0[16] = v11;
    v18 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[29] = v13;
    *v13 = v0;
    v13[1] = sub_21CCBC78C;

    return (v18)(v0 + 31, v0 + 16);
  }

  else
  {
    sub_21CD83F74();
    MEMORY[0x21CF175E0](0xD000000000000014, 0x800000021CD9E2A0);
    __swift_project_boxed_opaque_existential_0(v0 + 8, v0[11]);
    sub_21CD84184();
    MEMORY[0x21CF175E0](0xD000000000000013, 0x800000021CD9E2C0);
    MEMORY[0x21CF175E0](0xD00000000000002BLL, 0x800000021CD9E340);
    sub_21CCB14E0();
    v15 = swift_allocError();
    *v16 = 2;
    *(v16 + 8) = 0;
    *(v16 + 16) = 0xE000000000000000;
    *(v16 + 24) = 0;
    v0[18] = v15;
    sub_21CD83CF4();
    __swift_destroy_boxed_opaque_existential_0(v0 + 8);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_21CCBC78C()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_21CCC49A4;
  }

  else
  {
    v2 = sub_21CCC49AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CCBC8A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18FE8, &qword_21CD88BC8);
  v7[25] = v8;
  v9 = *(v8 - 8);
  v7[26] = v9;
  v7[27] = *(v9 + 64);
  v7[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CCBC978, 0, 0);
}

uint64_t sub_21CCBC978()
{
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];
  v5 = v0[21];
  v4 = v0[22];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_21CCC38AC;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_21CD80FA4;
  v0[5] = &block_descriptor_362;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_21CD83EE4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_21CCB15A8((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18FD8, &qword_21CD88B40);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[29] = v11) != 0))
  {
    v12 = v0[23];
    v0[16] = v11;
    v18 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[30] = v13;
    *v13 = v0;
    v13[1] = sub_21CCBBD38;

    return (v18)(v0 + 19, v0 + 16);
  }

  else
  {
    sub_21CD83F74();
    MEMORY[0x21CF175E0](0xD000000000000014, 0x800000021CD9E2A0);
    __swift_project_boxed_opaque_existential_0(v0 + 8, v0[11]);
    sub_21CD84184();
    MEMORY[0x21CF175E0](0xD000000000000013, 0x800000021CD9E2C0);
    MEMORY[0x21CF175E0](0xD00000000000002BLL, 0x800000021CD9E340);
    sub_21CCB14E0();
    v15 = swift_allocError();
    *v16 = 2;
    *(v16 + 8) = 0;
    *(v16 + 16) = 0xE000000000000000;
    *(v16 + 24) = 0;
    v0[18] = v15;
    sub_21CD83CF4();
    __swift_destroy_boxed_opaque_existential_0(v0 + 8);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_21CCBCD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18FE0, &qword_21CD88B58);
  v7[25] = v8;
  v9 = *(v8 - 8);
  v7[26] = v9;
  v7[27] = *(v9 + 64);
  v7[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CCBCE1C, 0, 0);
}

uint64_t sub_21CCBCE1C()
{
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];
  v5 = v0[21];
  v4 = v0[22];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_21CCC33E4;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_21CD80FA4;
  v0[5] = &block_descriptor_323;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_21CD83EE4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_21CCB15A8((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18FD8, &qword_21CD88B40);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[29] = v11) != 0))
  {
    v12 = v0[23];
    v0[16] = v11;
    v18 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[30] = v13;
    *v13 = v0;
    v13[1] = sub_21CCBBD38;

    return (v18)(v0 + 19, v0 + 16);
  }

  else
  {
    sub_21CD83F74();
    MEMORY[0x21CF175E0](0xD000000000000014, 0x800000021CD9E2A0);
    __swift_project_boxed_opaque_existential_0(v0 + 8, v0[11]);
    sub_21CD84184();
    MEMORY[0x21CF175E0](0xD000000000000013, 0x800000021CD9E2C0);
    MEMORY[0x21CF175E0](0xD00000000000002BLL, 0x800000021CD9E340);
    sub_21CCB14E0();
    v15 = swift_allocError();
    *v16 = 2;
    *(v16 + 8) = 0;
    *(v16 + 16) = 0xE000000000000000;
    *(v16 + 24) = 0;
    v0[18] = v15;
    sub_21CD83CF4();
    __swift_destroy_boxed_opaque_existential_0(v0 + 8);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_21CCBD1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v7[20] = a4;
  v7[21] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F70, &qword_21CD98400);
  v7[24] = v8;
  v9 = *(v8 - 8);
  v7[25] = v9;
  v7[26] = *(v9 + 64);
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CCBD2C0, 0, 0);
}

uint64_t sub_21CCBD2C0()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[25];
  v5 = v0[20];
  v4 = v0[21];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_21CCC4A08;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_21CD80FA4;
  v0[5] = &block_descriptor_26;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_21CD83EE4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_21CCB15A8((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F78, &qword_21CD88820);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[28] = v11) != 0))
  {
    v12 = v0[22];
    v0[16] = v11;
    v18 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[29] = v13;
    *v13 = v0;
    v13[1] = sub_21CCB9A78;

    return v18();
  }

  else
  {
    sub_21CD83F74();
    MEMORY[0x21CF175E0](0xD000000000000014, 0x800000021CD9E2A0);
    __swift_project_boxed_opaque_existential_0(v0 + 8, v0[11]);
    sub_21CD84184();
    MEMORY[0x21CF175E0](0xD000000000000013, 0x800000021CD9E2C0);
    MEMORY[0x21CF175E0](0xD00000000000001DLL, 0x800000021CD9E2E0);
    sub_21CCB14E0();
    v15 = swift_allocError();
    *v16 = 2;
    *(v16 + 8) = 0;
    *(v16 + 16) = 0xE000000000000000;
    *(v16 + 24) = 0;
    v0[18] = v15;
    sub_21CD83CF4();
    __swift_destroy_boxed_opaque_existential_0(v0 + 8);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_21CCBD684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18FD0, &qword_21CD88AE8);
  v7[25] = v8;
  v9 = *(v8 - 8);
  v7[26] = v9;
  v7[27] = *(v9 + 64);
  v7[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CCBD75C, 0, 0);
}

uint64_t sub_21CCBD75C()
{
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];
  v5 = v0[21];
  v4 = v0[22];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_21CCC2F18;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_21CD80FA4;
  v0[5] = &block_descriptor_284;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_21CD83EE4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_21CCB15A8((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F78, &qword_21CD88820);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[29] = v11) != 0))
  {
    v12 = v0[23];
    v0[16] = v11;
    v18 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[30] = v13;
    *v13 = v0;
    v13[1] = sub_21CCBBD38;

    return (v18)(v0 + 19, v0 + 16);
  }

  else
  {
    sub_21CD83F74();
    MEMORY[0x21CF175E0](0xD000000000000014, 0x800000021CD9E2A0);
    __swift_project_boxed_opaque_existential_0(v0 + 8, v0[11]);
    sub_21CD84184();
    MEMORY[0x21CF175E0](0xD000000000000013, 0x800000021CD9E2C0);
    MEMORY[0x21CF175E0](0xD00000000000001DLL, 0x800000021CD9E2E0);
    sub_21CCB14E0();
    v15 = swift_allocError();
    *v16 = 2;
    *(v16 + 8) = 0;
    *(v16 + 16) = 0xE000000000000000;
    *(v16 + 24) = 0;
    v0[18] = v15;
    sub_21CD83CF4();
    __swift_destroy_boxed_opaque_existential_0(v0 + 8);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_21CCBDB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18FC8, &qword_21CD88A78);
  v7[25] = v8;
  v9 = *(v8 - 8);
  v7[26] = v9;
  v7[27] = *(v9 + 64);
  v7[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CCBDC00, 0, 0);
}

uint64_t sub_21CCBDC00()
{
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];
  v5 = v0[21];
  v4 = v0[22];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_21CCC2A50;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_21CD80FA4;
  v0[5] = &block_descriptor_245;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_21CD83EE4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_21CCB15A8((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F78, &qword_21CD88820);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[29] = v11) != 0))
  {
    v12 = v0[23];
    v0[16] = v11;
    v18 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[30] = v13;
    *v13 = v0;
    v13[1] = sub_21CCBBD38;

    return (v18)(v0 + 19, v0 + 16);
  }

  else
  {
    sub_21CD83F74();
    MEMORY[0x21CF175E0](0xD000000000000014, 0x800000021CD9E2A0);
    __swift_project_boxed_opaque_existential_0(v0 + 8, v0[11]);
    sub_21CD84184();
    MEMORY[0x21CF175E0](0xD000000000000013, 0x800000021CD9E2C0);
    MEMORY[0x21CF175E0](0xD00000000000001DLL, 0x800000021CD9E2E0);
    sub_21CCB14E0();
    v15 = swift_allocError();
    *v16 = 2;
    *(v16 + 8) = 0;
    *(v16 + 16) = 0xE000000000000000;
    *(v16 + 24) = 0;
    v0[18] = v15;
    sub_21CD83CF4();
    __swift_destroy_boxed_opaque_existential_0(v0 + 8);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_21CCBDFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18FC0, &qword_21CD88A30);
  v7[25] = v8;
  v9 = *(v8 - 8);
  v7[26] = v9;
  v7[27] = *(v9 + 64);
  v7[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CCBE0A4, 0, 0);
}

uint64_t sub_21CCBE0A4()
{
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];
  v5 = v0[21];
  v4 = v0[22];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_21CCC2718;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_21CD80FA4;
  v0[5] = &block_descriptor_219;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_21CD83EE4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_21CCB15A8((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F78, &qword_21CD88820);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[29] = v11) != 0))
  {
    v12 = v0[23];
    v0[16] = v11;
    v18 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[30] = v13;
    *v13 = v0;
    v13[1] = sub_21CCBBD38;

    return (v18)(v0 + 19, v0 + 16);
  }

  else
  {
    sub_21CD83F74();
    MEMORY[0x21CF175E0](0xD000000000000014, 0x800000021CD9E2A0);
    __swift_project_boxed_opaque_existential_0(v0 + 8, v0[11]);
    sub_21CD84184();
    MEMORY[0x21CF175E0](0xD000000000000013, 0x800000021CD9E2C0);
    MEMORY[0x21CF175E0](0xD00000000000001DLL, 0x800000021CD9E2E0);
    sub_21CCB14E0();
    v15 = swift_allocError();
    *v16 = 2;
    *(v16 + 8) = 0;
    *(v16 + 16) = 0xE000000000000000;
    *(v16 + 24) = 0;
    v0[18] = v15;
    sub_21CD83CF4();
    __swift_destroy_boxed_opaque_existential_0(v0 + 8);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_21CCBE470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[24] = a6;
  v7[25] = a7;
  v7[22] = a4;
  v7[23] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18FB0, &qword_21CD889E0);
  v7[26] = v8;
  v9 = *(v8 - 8);
  v7[27] = v9;
  v7[28] = *(v9 + 64);
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CCBE548, 0, 0);
}

uint64_t sub_21CCBE548()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  v5 = v0[22];
  v4 = v0[23];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_21CCC23E0;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_21CD80FA4;
  v0[5] = &block_descriptor_193;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_21CD83EE4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_21CCB15A8((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F78, &qword_21CD88820);
  if (swift_dynamicCast() && (v11 = v0[19], (v0[30] = v11) != 0))
  {
    v12 = v0[24];
    v0[18] = v11;
    v18 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[31] = v13;
    *v13 = v0;
    v13[1] = sub_21CCBE914;

    return (v18)(v0 + 16, v0 + 18);
  }

  else
  {
    sub_21CD83F74();
    MEMORY[0x21CF175E0](0xD000000000000014, 0x800000021CD9E2A0);
    __swift_project_boxed_opaque_existential_0(v0 + 8, v0[11]);
    sub_21CD84184();
    MEMORY[0x21CF175E0](0xD000000000000013, 0x800000021CD9E2C0);
    MEMORY[0x21CF175E0](0xD00000000000001DLL, 0x800000021CD9E2E0);
    sub_21CCB14E0();
    v15 = swift_allocError();
    *v16 = 2;
    *(v16 + 8) = 0;
    *(v16 + 16) = 0xE000000000000000;
    *(v16 + 24) = 0;
    v0[20] = v15;
    sub_21CD83CF4();
    __swift_destroy_boxed_opaque_existential_0(v0 + 8);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_21CCBE914()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_21CCBEAAC;
  }

  else
  {
    v2 = sub_21CCBEA28;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CCBEA28()
{
  sub_21CD83D04();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CCBEAAC()
{
  v1 = v0[32];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  v0[21] = v1;
  sub_21CD83CF4();

  v2 = v0[1];

  return v2();
}

uint64_t sub_21CCBEB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v7[20] = a4;
  v7[21] = a5;
  type metadata accessor for MobileDocumentReaderConfigurationResponse(0);
  v7[24] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18FA8, &qword_21CD889A0);
  v7[25] = v8;
  v9 = *(v8 - 8);
  v7[26] = v9;
  v7[27] = *(v9 + 64);
  v7[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CCBEC44, 0, 0);
}

uint64_t sub_21CCBEC44()
{
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];
  v5 = v0[20];
  v4 = v0[21];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_21CCC20A8;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_21CD80FA4;
  v0[5] = &block_descriptor_169;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_21CD83EE4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_21CCB15A8((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F78, &qword_21CD88820);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[29] = v11) != 0))
  {
    v12 = v0[22];
    v0[16] = v11;
    v19 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[30] = v13;
    *v13 = v0;
    v13[1] = sub_21CCBF018;
    v14 = v0[24];

    return (v19)(v14, v0 + 16);
  }

  else
  {
    sub_21CD83F74();
    MEMORY[0x21CF175E0](0xD000000000000014, 0x800000021CD9E2A0);
    __swift_project_boxed_opaque_existential_0(v0 + 8, v0[11]);
    sub_21CD84184();
    MEMORY[0x21CF175E0](0xD000000000000013, 0x800000021CD9E2C0);
    MEMORY[0x21CF175E0](0xD00000000000001DLL, 0x800000021CD9E2E0);
    sub_21CCB14E0();
    v16 = swift_allocError();
    *v17 = 2;
    *(v17 + 8) = 0;
    *(v17 + 16) = 0xE000000000000000;
    *(v17 + 24) = 0;
    v0[18] = v16;
    sub_21CD83CF4();
    __swift_destroy_boxed_opaque_existential_0(v0 + 8);

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_21CCBF018()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_21CCBF1B8;
  }

  else
  {
    v2 = sub_21CCBF12C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CCBF12C()
{
  sub_21CD83D04();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CCBF1B8()
{
  v1 = v0[31];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  v0[19] = v1;
  sub_21CD83CF4();

  v2 = v0[1];

  return v2();
}

uint64_t sub_21CCBF258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[28] = a6;
  v7[29] = a7;
  v7[26] = a4;
  v7[27] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18FA0, &qword_21CD88958);
  v7[30] = v8;
  v9 = *(v8 - 8);
  v7[31] = v9;
  v7[32] = *(v9 + 64);
  v7[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CCBF330, 0, 0);
}

uint64_t sub_21CCBF330()
{
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[31];
  v5 = v0[26];
  v4 = v0[27];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_21CCC1D70;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_21CD80FA4;
  v0[5] = &block_descriptor_143;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_21CD83EE4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_21CCB15A8((v0 + 14), (v0 + 18));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F78, &qword_21CD88820);
  if (swift_dynamicCast() && (v11 = v0[23], (v0[34] = v11) != 0))
  {
    v12 = v0[28];
    v0[22] = v11;
    v18 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[35] = v13;
    *v13 = v0;
    v13[1] = sub_21CCBF6FC;

    return (v18)(v0 + 8, v0 + 22);
  }

  else
  {
    sub_21CD83F74();
    MEMORY[0x21CF175E0](0xD000000000000014, 0x800000021CD9E2A0);
    __swift_project_boxed_opaque_existential_0(v0 + 14, v0[17]);
    sub_21CD84184();
    MEMORY[0x21CF175E0](0xD000000000000013, 0x800000021CD9E2C0);
    MEMORY[0x21CF175E0](0xD00000000000001DLL, 0x800000021CD9E2E0);
    sub_21CCB14E0();
    v15 = swift_allocError();
    *v16 = 2;
    *(v16 + 8) = 0;
    *(v16 + 16) = 0xE000000000000000;
    *(v16 + 24) = 0;
    v0[24] = v15;
    sub_21CD83CF4();
    __swift_destroy_boxed_opaque_existential_0(v0 + 14);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_21CCBF6FC()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_21CCBF894;
  }

  else
  {
    v2 = sub_21CCBF810;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CCBF810()
{
  sub_21CD83D04();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CCBF894()
{
  v1 = v0[36];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 14);
  v0[25] = v1;
  sub_21CD83CF4();

  v2 = v0[1];

  return v2();
}

uint64_t sub_21CCBF928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v7[20] = a4;
  v7[21] = a5;
  type metadata accessor for MobileDocumentReaderResponse(0);
  v7[24] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F80, &qword_21CD88838);
  v7[25] = v8;
  v9 = *(v8 - 8);
  v7[26] = v9;
  v7[27] = *(v9 + 64);
  v7[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CCBFA2C, 0, 0);
}

uint64_t sub_21CCBFA2C()
{
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];
  v5 = v0[20];
  v4 = v0[21];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_21CCC1024;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_21CD80FA4;
  v0[5] = &block_descriptor_43;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_21CD83EE4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_21CCB15A8((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F78, &qword_21CD88820);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[29] = v11) != 0))
  {
    v12 = v0[22];
    v0[16] = v11;
    v19 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[30] = v13;
    *v13 = v0;
    v13[1] = sub_21CCBFE00;
    v14 = v0[24];

    return (v19)(v14, v0 + 16);
  }

  else
  {
    sub_21CD83F74();
    MEMORY[0x21CF175E0](0xD000000000000014, 0x800000021CD9E2A0);
    __swift_project_boxed_opaque_existential_0(v0 + 8, v0[11]);
    sub_21CD84184();
    MEMORY[0x21CF175E0](0xD000000000000013, 0x800000021CD9E2C0);
    MEMORY[0x21CF175E0](0xD00000000000001DLL, 0x800000021CD9E2E0);
    sub_21CCB14E0();
    v16 = swift_allocError();
    *v17 = 2;
    *(v17 + 8) = 0;
    *(v17 + 16) = 0xE000000000000000;
    *(v17 + 24) = 0;
    v0[18] = v16;
    sub_21CD83CF4();
    __swift_destroy_boxed_opaque_existential_0(v0 + 8);

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_21CCBFE00()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_21CCC49A0;
  }

  else
  {
    v2 = sub_21CCC4994;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CCBFF14(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v7 = sub_21CD839F4();
  __swift_project_value_buffer(v7, qword_280F78E40);
  v8 = a1;
  v9 = sub_21CD839D4();
  v10 = sub_21CD83E34();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = sub_21CD84224();
    v15 = sub_21CCC02FC(v13, v14, &v20);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_21CC90000, v9, v10, "XPC connection error: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x21CF18580](v12, -1, -1);
    MEMORY[0x21CF18580](v11, -1, -1);
  }

  sub_21CCB14E0();
  v16 = swift_allocError();
  *v17 = 4;
  *(v17 + 8) = 0xD000000000000014;
  *(v17 + 16) = 0x800000021CD9E300;
  *(v17 + 24) = a1;
  v20 = v16;
  v18 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  return sub_21CD83CF4();
}

uint64_t sub_21CCC0104(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21CCC01B8;

  return sub_21CCB32CC(a1, v4, v5, v6);
}

uint64_t sub_21CCC01B8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_21CCC02FC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21CCC03C8(v11, 0, 0, 1, a1, a2);
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
    sub_21CCB15A8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_21CCC03C8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_21CCC04D4(a5, a6);
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
    result = sub_21CD83FB4();
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

void *sub_21CCC04D4(uint64_t a1, unint64_t a2)
{
  v3 = sub_21CCC0520(a1, a2);
  sub_21CCC0650(&unk_282E6C760);
  return v3;
}

void *sub_21CCC0520(uint64_t a1, unint64_t a2)
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

  v6 = sub_21CCD8480(v5, 0);
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

  result = sub_21CD83FB4();
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
        v10 = sub_21CD83BA4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21CCD8480(v10, 0);
        result = sub_21CD83F64();
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

uint64_t sub_21CCC0650(uint64_t result)
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

  result = sub_21CCC073C(result, v11, 1, v3);
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

char *sub_21CCC073C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19018, &qword_21CD88CE0);
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

uint64_t sub_21CCC0880(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21CCC498C;

  return sub_21CCB91DC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21CCC0948(uint64_t a1, void *a2, int *a3)
{
  *(v3 + 16) = *a2;
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_21CCC4988;

  return v6(v3 + 16);
}

uint64_t sub_21CCC0A44(uint64_t a1, void *a2, int *a3)
{
  *(v3 + 16) = *a2;
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_21CCC0B40;

  return v6(v3 + 16);
}

uint64_t sub_21CCC0B40()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21CCC0C34(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21CCC498C;

  return sub_21CCC0948(a1, a2, v6);
}

uint64_t sub_21CCC0D48(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F70, &qword_21CD98400) - 8);
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
  v13[1] = sub_21CCC498C;

  return sub_21CCBD1E8(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_21CCC0EDC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F80, &qword_21CD88838) - 8);
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
  v13[1] = sub_21CCC498C;

  return sub_21CCBF928(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_21CCC10B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21CCC498C;

  return sub_21CCB73AC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21CCC1180(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21CCC498C;

  return sub_21CCC0948(a1, a2, v6);
}

uint64_t sub_21CCC1294(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F70, &qword_21CD98400) - 8);
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
  v13[1] = sub_21CCC498C;

  return sub_21CCB9B8C(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_21CCC13DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21CCC498C;

  return sub_21CCB71B4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21CCC14A4(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21CCC498C;

  return sub_21CCC0948(a1, a2, v6);
}

uint64_t sub_21CCC15B8(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191B0, &qword_21CD888C8) - 8);
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
  v13[1] = sub_21CCC498C;

  return sub_21CCBA6F8(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_21CCC1714(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21CCC498C;

  return sub_21CCB6FBC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21CCC17DC(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21CCC498C;

  return sub_21CCC0948(a1, a2, v6);
}

uint64_t sub_21CCC18F0(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F90, &qword_21CD88908) - 8);
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
  v13[1] = sub_21CCC498C;

  return sub_21CCBA028(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_21CCC1A4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21CCC498C;

  return sub_21CCB8FE4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21CCC1B14(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21CCC498C;

  return sub_21CCC0948(a1, a2, v6);
}

uint64_t sub_21CCC1C28(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18FA0, &qword_21CD88958) - 8);
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
  v13[1] = sub_21CCC498C;

  return sub_21CCBF258(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_21CCC1D84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21CCC498C;

  return sub_21CCB8DEC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21CCC1E4C(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21CCC498C;

  return sub_21CCC0948(a1, a2, v6);
}

uint64_t sub_21CCC1F60(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18FA8, &qword_21CD889A0) - 8);
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
  v13[1] = sub_21CCC498C;

  return sub_21CCBEB40(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_21CCC20BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21CCC498C;

  return sub_21CCB8BF4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21CCC2184(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21CCC498C;

  return sub_21CCC0948(a1, a2, v6);
}

uint64_t sub_21CCC2298(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18FB0, &qword_21CD889E0) - 8);
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
  v13[1] = sub_21CCC498C;

  return sub_21CCBE470(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_21CCC23F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21CCC498C;

  return sub_21CCB89FC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21CCC24BC(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21CCC498C;

  return sub_21CCC0948(a1, a2, v6);
}

uint64_t sub_21CCC25D0(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18FC0, &qword_21CD88A30) - 8);
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
  v13[1] = sub_21CCC498C;

  return sub_21CCBDFCC(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_21CCC272C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21CCC498C;

  return sub_21CCB8804(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21CCC27F4(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21CCC498C;

  return sub_21CCC0948(a1, a2, v6);
}

uint64_t sub_21CCC2908(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18FC8, &qword_21CD88A78) - 8);
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
  v13[1] = sub_21CCC498C;

  return sub_21CCBDB28(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_21CCC2A64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21CCC498C;

  return sub_21CCB860C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21CCC2B2C(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21CCC498C;

  return sub_21CCC0948(a1, a2, v6);
}

uint64_t sub_21CCC2BF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21CCC498C;

  return sub_21CCB8414(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21CCC2CBC(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21CCC498C;

  return sub_21CCC0948(a1, a2, v6);
}

uint64_t sub_21CCC2DD0(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18FD0, &qword_21CD88AE8) - 8);
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
  v13[1] = sub_21CCC498C;

  return sub_21CCBD684(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_21CCC2F2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21CCC498C;

  return sub_21CCB821C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21CCC2FF4(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21CCC498C;

  return sub_21CCC0948(a1, a2, v6);
}

uint64_t sub_21CCC3108(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F70, &qword_21CD98400) - 8);
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
  v13[1] = sub_21CCC498C;

  return sub_21CCBBE4C(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_21CCC329C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18FE0, &qword_21CD88B58) - 8);
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
  v13[1] = sub_21CCC498C;

  return sub_21CCBCD44(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_21CCC33F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21CCC498C;

  return sub_21CCB7C34(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21CCC34C0(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21CCC498C;

  return sub_21CCC0948(a1, a2, v6);
}

uint64_t sub_21CCC3588(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21CCC498C;

  return sub_21CCB8024(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21CCC3650(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21CCC498C;

  return sub_21CCC0948(a1, a2, v6);
}

uint64_t sub_21CCC3764(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18FE8, &qword_21CD88BC8) - 8);
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
  v13[1] = sub_21CCC498C;

  return sub_21CCBC8A0(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_21CCC38C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21CCC498C;

  return sub_21CCB7E2C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21CCC3988(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21CCC498C;

  return sub_21CCC0948(a1, a2, v6);
}

uint64_t sub_21CCC3A9C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18FF0, &qword_21CD88C10) - 8);
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
  v13[1] = sub_21CCC498C;

  return sub_21CCBC2E8(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_21CCC3BF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21CCC498C;

  return sub_21CCB7A3C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21CCC3CC0(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21CCC498C;

  return sub_21CCC0948(a1, a2, v6);
}

uint64_t sub_21CCC3DD4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F70, &qword_21CD98400) - 8);
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
  v13[1] = sub_21CCC498C;

  return sub_21CCBB3F8(a1, v7, v8, v9, v1 + v6, v11, v12);
}

unint64_t sub_21CCC3F68()
{
  result = qword_27CE19000;
  if (!qword_27CE19000)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE19000);
  }

  return result;
}

uint64_t sub_21CCC3FB4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19008, &unk_21CD8E3A0) - 8);
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
  v13[1] = sub_21CCC498C;

  return sub_21CCBB894(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_21CCC4110(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21CCC01B8;

  return sub_21CCB75A4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21CCC41D8(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21CCC498C;

  return sub_21CCC0A44(a1, a2, v6);
}

uint64_t sub_21CCC42EC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F70, &qword_21CD98400) - 8);
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
  v13[1] = sub_21CCC498C;

  return sub_21CCBADC8(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21CCC4494(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21CCC498C;

  return sub_21CCB6CA4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21CCC455C(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21CCC498C;

  return sub_21CCC0948(a1, a2, v6);
}

uint64_t objectdestroy_18Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v7 + 16, v5 | 7);
}

uint64_t sub_21CCC4750(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F70, &qword_21CD98400) - 8);
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
  v13[1] = sub_21CCC498C;

  return sub_21CCB95DC(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t objectdestroy_22Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t DigitalPresentmentRequest.nonce.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC7CoreIDV25DigitalPresentmentRequest_nonce);
  sub_21CC96064(v1, *(v0 + OBJC_IVAR____TtC7CoreIDV25DigitalPresentmentRequest_nonce + 8));
  return v1;
}

uint64_t DigitalPresentmentRequest.merchantID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC7CoreIDV25DigitalPresentmentRequest_merchantID);

  return v1;
}

uint64_t DigitalPresentmentRequest.merchantNameOverride.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC7CoreIDV25DigitalPresentmentRequest_merchantNameOverride);

  return v1;
}

uint64_t sub_21CCC4AF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE19050, &qword_21CD88D30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *DigitalPresentmentRequest.__allocating_init(compoundDescriptor:nonce:merchantID:merchantNameOverride:merchantPrivacyPolicyOverride:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = objc_allocWithZone(v8);
  *&v17[OBJC_IVAR____TtC7CoreIDV25DigitalPresentmentRequest_compoundDescriptor] = *a1;
  v18 = &v17[OBJC_IVAR____TtC7CoreIDV25DigitalPresentmentRequest_nonce];
  *v18 = a2;
  *(v18 + 1) = a3;
  v19 = &v17[OBJC_IVAR____TtC7CoreIDV25DigitalPresentmentRequest_merchantID];
  *v19 = a4;
  *(v19 + 1) = a5;
  v20 = &v17[OBJC_IVAR____TtC7CoreIDV25DigitalPresentmentRequest_merchantNameOverride];
  *v20 = a6;
  *(v20 + 1) = a7;
  sub_21CCC4AF8(a8, &v17[OBJC_IVAR____TtC7CoreIDV25DigitalPresentmentRequest_merchantPrivacyPolicyOverride]);
  v23.receiver = v17;
  v23.super_class = v8;
  v21 = objc_msgSendSuper2(&v23, sel_init);
  sub_21CCC4D38(a8);
  return v21;
}

void *DigitalPresentmentRequest.init(compoundDescriptor:nonce:merchantID:merchantNameOverride:merchantPrivacyPolicyOverride:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();
  *&v8[OBJC_IVAR____TtC7CoreIDV25DigitalPresentmentRequest_compoundDescriptor] = *a1;
  v18 = &v8[OBJC_IVAR____TtC7CoreIDV25DigitalPresentmentRequest_nonce];
  *v18 = a2;
  *(v18 + 1) = a3;
  v19 = &v8[OBJC_IVAR____TtC7CoreIDV25DigitalPresentmentRequest_merchantID];
  *v19 = a4;
  *(v19 + 1) = a5;
  v20 = &v8[OBJC_IVAR____TtC7CoreIDV25DigitalPresentmentRequest_merchantNameOverride];
  *v20 = a6;
  *(v20 + 1) = a7;
  sub_21CCC4AF8(a8, &v8[OBJC_IVAR____TtC7CoreIDV25DigitalPresentmentRequest_merchantPrivacyPolicyOverride]);
  v23.receiver = v8;
  v23.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v23, sel_init);
  sub_21CCC4D38(a8);
  return v21;
}

uint64_t sub_21CCC4D38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE19050, &qword_21CD88D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall DigitalPresentmentRequest.encode(with:)(NSCoder with)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE19050, &qword_21CD88D30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v26 - v4;
  v6 = sub_21CD836D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + OBJC_IVAR____TtC7CoreIDV25DigitalPresentmentRequest_compoundDescriptor);
  if (v10)
  {
    v11 = type metadata accessor for XPCIdentityDocumentCompoundDescriptor();
    v12 = objc_allocWithZone(v11);
    *&v12[OBJC_IVAR____TtC7CoreIDV37XPCIdentityDocumentCompoundDescriptor_value] = v10;
    v26.receiver = v12;
    v26.super_class = v11;

    v13 = objc_msgSendSuper2(&v26, sel_init);
    v14 = sub_21CD83B04();
    [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];
  }

  v15 = (v1 + OBJC_IVAR____TtC7CoreIDV25DigitalPresentmentRequest_nonce);
  v16 = *(v1 + OBJC_IVAR____TtC7CoreIDV25DigitalPresentmentRequest_nonce + 8);
  if (v16 >> 60 != 15)
  {
    v17 = *v15;
    sub_21CCB18D4(*v15, *(v1 + OBJC_IVAR____TtC7CoreIDV25DigitalPresentmentRequest_nonce + 8));
    v18 = sub_21CD836E4();
    v19 = sub_21CD83B04();
    [(objc_class *)with.super.isa encodeObject:v18 forKey:v19];

    sub_21CC95F8C(v17, v16);
  }

  if (*(v1 + OBJC_IVAR____TtC7CoreIDV25DigitalPresentmentRequest_merchantID + 8))
  {
    v20 = sub_21CD83B04();
    v21 = sub_21CD83B04();
    [(objc_class *)with.super.isa encodeObject:v20 forKey:v21];
  }

  if (*(v1 + OBJC_IVAR____TtC7CoreIDV25DigitalPresentmentRequest_merchantNameOverride + 8))
  {
    v22 = sub_21CD83B04();
    v23 = sub_21CD83B04();
    [(objc_class *)with.super.isa encodeObject:v22 forKey:v23];
  }

  sub_21CCC4AF8(v1 + OBJC_IVAR____TtC7CoreIDV25DigitalPresentmentRequest_merchantPrivacyPolicyOverride, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_21CCC4D38(v5);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v24 = sub_21CD836B4();
    v25 = sub_21CD83B04();
    [(objc_class *)with.super.isa encodeObject:v24 forKey:v25];

    (*(v7 + 8))(v9, v6);
  }
}

id DigitalPresentmentRequest.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_21CCC53C0();

  return v4;
}

id DigitalPresentmentRequest.init(coder:)(void *a1)
{
  v2 = sub_21CCC53C0();

  return v2;
}

id DigitalPresentmentRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DigitalPresentmentRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21CCC53C0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE19050, &qword_21CD88D30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v31 - v4;
  type metadata accessor for XPCIdentityDocumentCompoundDescriptor();
  v6 = sub_21CD83E84();
  v7 = v6;
  if (v6)
  {
  }

  *&v0[OBJC_IVAR____TtC7CoreIDV25DigitalPresentmentRequest_compoundDescriptor] = v6;
  sub_21CCB17E8(0, &qword_27CE1A550, 0x277CBEA90);
  v8 = sub_21CD83E84();
  if (v8)
  {
    v9 = v8;
    v10 = sub_21CD836F4();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xF000000000000000;
  }

  v13 = &v0[OBJC_IVAR____TtC7CoreIDV25DigitalPresentmentRequest_nonce];
  *v13 = v10;
  v13[1] = v12;
  sub_21CCB17E8(0, &qword_27CE190E0, 0x277CCACA8);
  v14 = sub_21CD83E84();
  if (v14)
  {
    v15 = v14;
    v16 = sub_21CD83B24();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v19 = &v0[OBJC_IVAR____TtC7CoreIDV25DigitalPresentmentRequest_merchantID];
  *v19 = v16;
  v19[1] = v18;
  v20 = sub_21CD83E84();
  if (v20)
  {
    v21 = v20;
    v22 = sub_21CD83B24();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  v25 = &v0[OBJC_IVAR____TtC7CoreIDV25DigitalPresentmentRequest_merchantNameOverride];
  *v25 = v22;
  v25[1] = v24;
  sub_21CCB17E8(0, &qword_27CE190E8, 0x277CBEBC0);
  v26 = sub_21CD83E84();
  if (v26)
  {
    v27 = v26;
    sub_21CD836C4();

    v28 = sub_21CD836D4();
    (*(*(v28 - 8) + 56))(v5, 0, 1, v28);
  }

  else
  {

    v29 = sub_21CD836D4();
    (*(*(v29 - 8) + 56))(v5, 1, 1, v29);
  }

  sub_21CCC5B08(v5, v1 + OBJC_IVAR____TtC7CoreIDV25DigitalPresentmentRequest_merchantPrivacyPolicyOverride);
  v31.receiver = v1;
  v31.super_class = ObjectType;
  return objc_msgSendSuper2(&v31, sel_init);
}

uint64_t type metadata accessor for DigitalPresentmentRequest(uint64_t a1)
{
  result = qword_27CE190C0;
  if (!qword_27CE190C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21CCC5724(uint64_t a1)
{
  sub_21CCC5814(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21CCC5814(uint64_t a1)
{
  if (!qword_27CE190D0)
  {
    sub_21CD836D4();
    v1 = sub_21CD83EA4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CE190D0);
    }
  }
}

id sub_21CCC586C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE19050, &qword_21CD88D30);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v33 - v3;
  v5 = [a1 descriptor];
  if (v5)
  {
    IdentityDocumentCompoundDescriptor.init(_:)(v5, &v34);
    v6 = v34;
  }

  else
  {
    v6 = 0;
  }

  v7 = [a1 nonce];
  if (v7)
  {
    v8 = v7;
    v9 = sub_21CD836F4();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xF000000000000000;
  }

  v12 = [a1 merchantIdentifier];
  if (v12)
  {
    v13 = v12;
    v14 = sub_21CD83B24();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = [a1 merchantNameOverride];
  if (v17)
  {
    v18 = v17;
    v19 = sub_21CD83B24();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  v22 = [a1 merchantPrivacyPolicyOverride];
  if (v22)
  {
    v23 = v22;
    sub_21CD836C4();

    v24 = sub_21CD836D4();
    (*(*(v24 - 8) + 56))(v4, 0, 1, v24);
  }

  else
  {
    v25 = sub_21CD836D4();
    (*(*(v25 - 8) + 56))(v4, 1, 1, v25);
  }

  v26 = type metadata accessor for DigitalPresentmentRequest(0);
  v27 = objc_allocWithZone(v26);
  *&v27[OBJC_IVAR____TtC7CoreIDV25DigitalPresentmentRequest_compoundDescriptor] = v6;
  v28 = &v27[OBJC_IVAR____TtC7CoreIDV25DigitalPresentmentRequest_nonce];
  *v28 = v9;
  v28[1] = v11;
  v29 = &v27[OBJC_IVAR____TtC7CoreIDV25DigitalPresentmentRequest_merchantID];
  *v29 = v14;
  v29[1] = v16;
  v30 = &v27[OBJC_IVAR____TtC7CoreIDV25DigitalPresentmentRequest_merchantNameOverride];
  *v30 = v19;
  v30[1] = v21;
  sub_21CCC4AF8(v4, &v27[OBJC_IVAR____TtC7CoreIDV25DigitalPresentmentRequest_merchantPrivacyPolicyOverride]);
  v35.receiver = v27;
  v35.super_class = v26;
  v31 = objc_msgSendSuper2(&v35, sel_init);
  sub_21CCC4D38(v4);
  return v31;
}

uint64_t sub_21CCC5B08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE19050, &qword_21CD88D30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DigitalPresentmentResponse.encryptedData.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC7CoreIDV26DigitalPresentmentResponse_encryptedData);
  sub_21CCB18D4(v1, *(v0 + OBJC_IVAR____TtC7CoreIDV26DigitalPresentmentResponse_encryptedData + 8));
  return v1;
}

id DigitalPresentmentResponse.__allocating_init(encryptedData:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC7CoreIDV26DigitalPresentmentResponse_encryptedData];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id DigitalPresentmentResponse.init(encryptedData:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC7CoreIDV26DigitalPresentmentResponse_encryptedData];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

Swift::Void __swiftcall DigitalPresentmentResponse.encode(with:)(NSCoder with)
{
  v2 = sub_21CD836E4();
  v3 = sub_21CD83B04();
  [(objc_class *)with.super.isa encodeObject:v2 forKey:v3];
}

id DigitalPresentmentResponse.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_21CCC5FAC();
  v5 = sub_21CD83E84();
  if (v5)
  {
    v6 = v5;
    v7 = sub_21CD836F4();
    v9 = v8;

    v10 = &v2[OBJC_IVAR____TtC7CoreIDV26DigitalPresentmentResponse_encryptedData];
    *v10 = v7;
    v10[1] = v9;
    v17.receiver = v2;
    v17.super_class = ObjectType;
    v11 = objc_msgSendSuper2(&v17, sel_init);
  }

  else
  {
    if (qword_280F77E40 != -1)
    {
      swift_once();
    }

    v12 = sub_21CD839F4();
    __swift_project_value_buffer(v12, qword_280F78E40);
    v13 = sub_21CD839D4();
    v14 = sub_21CD83E24();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_21CC90000, v13, v14, "DigitalPresentmentResponse initWithCoder could not decode encryptedData", v15, 2u);
      MEMORY[0x21CF18580](v15, -1, -1);
    }

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v11;
}

unint64_t sub_21CCC5FAC()
{
  result = qword_27CE1A550;
  if (!qword_27CE1A550)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE1A550);
  }

  return result;
}

id DigitalPresentmentResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DigitalPresentmentResponse.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void __swiftcall DIIdentityAuthorizationController.init()(DIIdentityAuthorizationController *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id DIIdentityAuthorizationController.init()()
{
  v1 = [objc_opt_self() interfaceWithProtocol_];
  memset(v24, 0, sizeof(v24));
  v2 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v3 = sub_21CD83B04();
  v4 = [v2 initWithMachServiceName:v3 options:4096];

  sub_21CCB3200(v24, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19168, &qword_21CD88E00);
  v5 = swift_allocObject();
  [v4 setRemoteObjectInterface_];
  v21 = sub_21CCC655C;
  v22 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_21CCB3270;
  v20 = &block_descriptor_1;
  v6 = _Block_copy(&aBlock);

  [v4 setInvalidationHandler_];
  _Block_release(v6);
  v21 = sub_21CCC6568;
  v22 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_21CCB3270;
  v20 = &block_descriptor_3_0;
  v7 = _Block_copy(&aBlock);

  [v4 setInterruptionHandler_];
  _Block_release(v7);
  [v4 setExportedInterface_];
  sub_21CCB3200(v23, &aBlock);
  v8 = v20;
  if (v20)
  {
    v9 = __swift_project_boxed_opaque_existential_0(&aBlock, v20);
    v10 = *(v8 - 1);
    MEMORY[0x28223BE20](v9);
    v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v12);
    v13 = sub_21CD84194();
    (*(v10 + 8))(v12, v8);
    __swift_destroy_boxed_opaque_existential_0(&aBlock);
  }

  else
  {
    v13 = 0;
  }

  [v4 setExportedObject_];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19170, &unk_21CD8F690);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  *(v14 + 16) = v4;
  v5[2] = v14;
  v5[3] = sub_21CCC6574;
  v5[4] = 0;
  [v4 activate];

  sub_21CCC947C(v23);
  sub_21CCC947C(v24);
  *&v0[OBJC_IVAR___DIIdentityAuthorizationController_connection] = v5;
  v16.receiver = v0;
  v16.super_class = DIIdentityAuthorizationController;
  return objc_msgSendSuper2(&v16, sel_init);
}

id sub_21CCC6574()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCA9B8]);

  return [v0 initWithDomain:@"DIIdentityErrorDomain" code:0 userInfo:0];
}

uint64_t sub_21CCC65F0(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  sub_21CD83D54();
  v2[8] = sub_21CD83D44();
  v4 = sub_21CD83CD4();
  v2[9] = v4;
  v2[10] = v3;

  return MEMORY[0x2822009F8](sub_21CCC6688, v4, v3);
}

uint64_t sub_21CCC6688()
{
  v14 = v0;
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v1 = sub_21CD839F4();
  v0[11] = __swift_project_value_buffer(v1, qword_280F78E40);
  v2 = sub_21CD839D4();
  v3 = sub_21CD83E24();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CC90000, v2, v3, "DigitalPresentmentSession checkCanRequestDocument", v4, 2u);
    MEMORY[0x21CF18580](v4, -1, -1);
  }

  v5 = swift_unknownObjectRetain();
  IdentityDocumentCompoundDescriptor.init(_:)(v5, &v13);
  v6 = v13;
  if (v13)
  {
    v0[12] = *(v0[7] + OBJC_IVAR___DIIdentityAuthorizationController_connection);
    v7 = swift_allocObject();
    v0[13] = v7;
    *(v7 + 16) = v6;

    return MEMORY[0x2822009F8](sub_21CCC68AC, 0, 0);
  }

  else
  {

    v8 = sub_21CD839D4();
    v9 = sub_21CD83E34();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_21CC90000, v8, v9, "DigitalPresentmentSession checkCanRequestDocument invalid document descriptor", v10, 2u);
      MEMORY[0x21CF18580](v10, -1, -1);
    }

    v11 = v0[1];

    return v11(0);
  }
}

uint64_t sub_21CCC68AC()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = swift_task_alloc();
  v0[14] = v3;
  v3[2] = v2;
  v3[3] = &unk_21CD88E90;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[15] = v4;
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_21CCC69D0;
  v6 = MEMORY[0x277D839B0];

  return MEMORY[0x282200830](v0 + 18, &unk_21CD88EA0, v3, sub_21CCCA1F8, v4, 0, 0, v6);
}

uint64_t sub_21CCC69D0()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_21CCC6BF4;
    v4 = 0;
    v5 = 0;
  }

  else
  {

    *(v2 + 145) = *(v2 + 144);
    v4 = *(v2 + 72);
    v5 = *(v2 + 80);
    v3 = sub_21CCC6B18;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_21CCC6B18()
{

  v1 = sub_21CD839D4();
  v2 = sub_21CD83E24();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21CC90000, v1, v2, "DigitalPresentmentSession checkCanRequestDocument returned successfully", v3, 2u);
    MEMORY[0x21CF18580](v3, -1, -1);
  }

  v4 = *(v0 + 145);
  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_21CCC6BF4()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return MEMORY[0x2822009F8](sub_21CCC6C6C, v1, v2);
}

uint64_t sub_21CCC6C6C()
{
  v14 = v0;
  v1 = *(v0 + 136);

  v2 = v1;
  v3 = sub_21CD839D4();
  v4 = sub_21CD83E24();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 136);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_21CD84224();
    v10 = sub_21CCC02FC(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_21CC90000, v3, v4, "DigitalPresentmentSession checkCanRequestDocument error from xpc: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x21CF18580](v7, -1, -1);
    MEMORY[0x21CF18580](v6, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11(0);
}

uint64_t sub_21CCC6DF4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[20] = a1;
  v3[21] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F90, &qword_21CD88908);
  v3[22] = v5;
  v3[23] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *a2;
  v3[24] = v6;
  v3[25] = v7;

  return MEMORY[0x2822009F8](sub_21CCC6EC8, 0, 0);
}

uint64_t sub_21CCC6EC8()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v0 + 28;
  v5 = v0[24];
  v15 = v0[25];
  v8 = v0 + 22;
  v6 = v0[22];
  v7 = v8[1];
  v9 = v1[21];
  v10 = type metadata accessor for XPCIdentityDocumentCompoundDescriptor();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC7CoreIDV37XPCIdentityDocumentCompoundDescriptor_value] = v9;
  v1[18] = v11;
  v1[19] = v10;

  v12 = objc_msgSendSuper2(v1 + 9, sel_init);
  v1[26] = v12;
  v1[2] = v1;
  v1[7] = v4;
  v1[3] = sub_21CCC70D4;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
  sub_21CD83CE4();
  (*(v7 + 32))(boxed_opaque_existential_0, v5, v6);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21CCC72DC;
  v1[13] = &block_descriptor_63;
  [v15 canRequestDocumentWithCompoundDescriptor:v12 completionHandler:v3];
  (*(v7 + 8))(boxed_opaque_existential_0, v6);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_21CCC70D4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_21CCC7260;
  }

  else
  {
    v2 = sub_21CCC71E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CCC71E4()
{
  v1 = *(v0 + 208);
  **(v0 + 160) = *(v0 + 224);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21CCC7260()
{
  v1 = *(v0 + 208);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

void sub_21CCC72DC(uint64_t a1, char a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F90, &qword_21CD88908);
    sub_21CD83CF4();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F90, &qword_21CD88908);
    sub_21CD83D04();
  }
}

uint64_t sub_21CCC750C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_21CD83D54();
  v3[5] = sub_21CD83D44();
  v5 = sub_21CD83CD4();

  return MEMORY[0x2822009F8](sub_21CCC75A8, v5, v4);
}

uint64_t sub_21CCC75A8()
{
  v1 = v0[4];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  swift_unknownObjectRetain();
  v3 = v1;
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_21CCC7670;
  v5 = v0[2];

  return sub_21CCC65F0(v5);
}

uint64_t sub_21CCC7670(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 32);
  v6 = *v1;

  swift_unknownObjectRelease();
  if (v4)
  {
    v7 = *(v3 + 48);
    v7[2](v7, a1 & 1);
    _Block_release(v7);
  }

  v8 = *(v6 + 8);

  return v8();
}

uint64_t sub_21CCC77E8(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  sub_21CD83D54();
  v2[13] = sub_21CD83D44();
  v4 = sub_21CD83CD4();
  v2[14] = v4;
  v2[15] = v3;

  return MEMORY[0x2822009F8](sub_21CCC7880, v4, v3);
}

uint64_t sub_21CCC7880()
{
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v1 = sub_21CD839F4();
  v0[16] = __swift_project_value_buffer(v1, qword_280F78E40);
  v2 = sub_21CD839D4();
  v3 = sub_21CD83E24();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CC90000, v2, v3, "DigitalPresentmentSession requestDocument", v4, 2u);
    MEMORY[0x21CF18580](v4, -1, -1);
  }

  v5 = v0[11];
  v6 = v0[12];

  v7 = sub_21CCC586C(v5);
  v0[17] = v7;
  v0[18] = *(v6 + OBJC_IVAR___DIIdentityAuthorizationController_connection);
  v8 = swift_allocObject();
  v0[19] = v8;
  *(v8 + 16) = v7;
  v9 = v7;

  return MEMORY[0x2822009F8](sub_21CCC79E8, 0, 0);
}

uint64_t sub_21CCC79E8()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = swift_task_alloc();
  v0[20] = v3;
  v3[2] = v2;
  v3[3] = &unk_21CD88E48;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[21] = v4;
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[22] = v5;
  v6 = type metadata accessor for DigitalPresentmentResponse();
  *v5 = v0;
  v5[1] = sub_21CCC7B10;

  return MEMORY[0x282200830](v0 + 5, &unk_21CD88E58, v3, sub_21CCC9D84, v4, 0, 0, v6);
}

uint64_t sub_21CCC7B10()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_21CCC7DA0;
    v4 = 0;
    v5 = 0;
  }

  else
  {

    v2[24] = v2[5];
    v4 = v2[14];
    v5 = v2[15];
    v3 = sub_21CCC7C58;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_21CCC7C58()
{

  v1 = sub_21CD839D4();
  v2 = sub_21CD83E24();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21CC90000, v1, v2, "DigitalPresentmentSession requestDocument returned successfully", v3, 2u);
    MEMORY[0x21CF18580](v3, -1, -1);
  }

  v4 = v0[24];
  v5 = v0[17];

  v6 = objc_allocWithZone(DIIdentityDocument);
  v7 = sub_21CD836E4();
  v8 = [v6 initWithEncryptedData_];

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_21CCC7DA0()
{

  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return MEMORY[0x2822009F8](sub_21CCC7E18, v1, v2);
}

uint64_t sub_21CCC7E18()
{
  v23 = v0;
  v1 = *(v0 + 184);

  *(v0 + 48) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
  type metadata accessor for DIIdentityFatalError(0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 56);
    v4 = sub_21CD839D4();
    v5 = sub_21CD83E24();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v22[0] = v7;
      *v6 = 136315138;
      *(v0 + 80) = v3;
      sub_21CCC9D90();
      v8 = sub_21CD84224();
      v10 = sub_21CCC02FC(v8, v9, v22);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_21CC90000, v4, v5, "DigitalPresentmentSession requestDocument fatal error from xpc: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x21CF18580](v7, -1, -1);
      MEMORY[0x21CF18580](v6, -1, -1);
    }

    *(v0 + 72) = v3;
    sub_21CCC9D90();
    sub_21CD84224();
    return sub_21CD83FD4();
  }

  else
  {
    v12 = *(v0 + 184);

    v13 = v12;
    v14 = sub_21CD839D4();
    v15 = sub_21CD83E24();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22[0] = v17;
      *v16 = 136315138;
      swift_getErrorValue();
      v18 = sub_21CD84224();
      v20 = sub_21CCC02FC(v18, v19, v22);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_21CC90000, v14, v15, "DigitalPresentmentSession requestDocument error from xpc: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x21CF18580](v17, -1, -1);
      MEMORY[0x21CF18580](v16, -1, -1);
    }

    swift_willThrow();
    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_21CCC8154(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[19] = a1;
  v3[20] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191B0, &qword_21CD888C8);
  v3[21] = v5;
  v3[22] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *a2;
  v3[23] = v6;
  v3[24] = v7;

  return MEMORY[0x2822009F8](sub_21CCC8228, 0, 0);
}

uint64_t sub_21CCC8228()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[23];
  v6 = v0[24];
  v10 = v0 + 21;
  v8 = v0[21];
  v9 = v10[1];
  v13 = v1[20];
  v14 = v6;
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_21CCC83E8;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  type metadata accessor for DigitalPresentmentResponse();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
  sub_21CD83CE4();
  (*(v9 + 32))(boxed_opaque_existential_0, v7, v8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21CCC85DC;
  v1[13] = &block_descriptor_36;
  [v14 requestDocument:v13 completionHandler:v4];
  (*(v9 + 8))(boxed_opaque_existential_0, v8);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_21CCC83E8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_21CCC8564;
  }

  else
  {
    v2 = sub_21CCC84F8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CCC84F8()
{
  **(v0 + 152) = *(v0 + 144);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CCC8564()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

void sub_21CCC85DC(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191B0, &qword_21CD888C8);
    sub_21CD83CF4();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191B0, &qword_21CD888C8);
    sub_21CD83D04();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21CCC8814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_21CD83D54();
  v3[5] = sub_21CD83D44();
  v5 = sub_21CD83CD4();

  return MEMORY[0x2822009F8](sub_21CCC88B0, v5, v4);
}

uint64_t sub_21CCC88B0()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_21CCC8974;
  v7 = v0[2];

  return sub_21CCC77E8(v7);
}

uint64_t sub_21CCC8974(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  if (v3)
  {
    if (v6)
    {
      v10 = *(v5 + 48);
      v11 = sub_21CD83634();

      (v10)[2](v10, 0, v11);
      _Block_release(v10);
    }

    else
    {
    }
  }

  else if (v6)
  {
    v12 = *(v5 + 48);
    (v12)[2](v12, a1, 0);

    _Block_release(v12);
  }

  else
  {
  }

  v13 = *(v9 + 8);

  return v13();
}

uint64_t sub_21CCC8B6C()
{
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v1 = sub_21CD839F4();
  v0[7] = __swift_project_value_buffer(v1, qword_280F78E40);
  v2 = sub_21CD839D4();
  v3 = sub_21CD83E24();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CC90000, v2, v3, "DigitalPresentmentSession cancelRequest", v4, 2u);
    MEMORY[0x21CF18580](v4, -1, -1);
  }

  v5 = v0[6];

  v6 = *(v5 + OBJC_IVAR___DIIdentityAuthorizationController_connection);
  v7 = swift_task_alloc();
  v0[8] = v7;
  v7[2] = v6;
  v7[3] = &unk_21CD88E18;
  v7[4] = 0;
  v8 = swift_task_alloc();
  v0[9] = v8;
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;
  v9 = swift_task_alloc();
  v0[10] = v9;
  *v9 = v0;
  v9[1] = sub_21CCC8D50;
  v10 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v9, &unk_21CD88E20, v7, sub_21CCC9698, v8, 0, 0, v10);
}

uint64_t sub_21CCC8D50()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_21CCC8F44;
  }

  else
  {

    v2 = sub_21CCC8E74;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CCC8E74(uint64_t a1)
{
  v2 = sub_21CD839D4();
  v3 = sub_21CD83E24();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CC90000, v2, v3, "DigitalPresentmentSession cancelRequest returned successfully", v4, 2u);
    MEMORY[0x21CF18580](v4, -1, -1);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_21CCC8F44()
{
  v14 = v0;
  v1 = *(v0 + 88);

  v2 = v1;
  v3 = sub_21CD839D4();
  v4 = sub_21CD83E24();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 88);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_21CD84224();
    v10 = sub_21CCC02FC(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_21CC90000, v3, v4, "DigitalPresentmentSession cancelRequest error from xpc: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x21CF18580](v7, -1, -1);
    MEMORY[0x21CF18580](v6, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_21CCC90D0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F70, &qword_21CD98400);
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *a2;
  v2[20] = v5;
  v2[21] = v6;

  return MEMORY[0x2822009F8](sub_21CCC91A0, 0, 0);
}

uint64_t sub_21CCC91A0()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v6 = v0[20];
  v5 = v0[21];
  v9 = v0 + 18;
  v7 = v0[18];
  v8 = v9[1];
  v1[2] = v2;
  v1[3] = sub_21CCB2FBC;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
  sub_21CD83CE4();
  (*(v8 + 32))(boxed_opaque_existential_0, v6, v7);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21CD5C4C0;
  v1[13] = &block_descriptor_10;
  [v5 cancelRequestWithCompletionHandler_];
  (*(v8 + 8))(boxed_opaque_existential_0, v7);

  return MEMORY[0x282200938](v3);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21CCC947C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19160, &unk_21CD88740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for DIIdentityAuthorizationController()
{
  result = qword_27CE19188;
  if (!qword_27CE19188)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE19188);
  }

  return result;
}

uint64_t sub_21CCC9530(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21CCC498C;

  return sub_21CCC8B4C(a1, v4, v5, v6);
}

uint64_t sub_21CCC95E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21CCC498C;

  return sub_21CCB3504(a1, v4, v5, v6);
}

uint64_t sub_21CCC96A4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21CCC498C;

  return sub_21CCC8814(v2, v3, v4);
}

uint64_t sub_21CCC9758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_21CCC977C, 0, 0);
}

uint64_t sub_21CCC977C()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_21CCC9850;
  v5 = v0[4];
  v4 = v0[5];

  return sub_21CCB474C(v5, v4);
}

uint64_t sub_21CCC9850(char a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_21CCC4A0C, 0, 0);
  }

  else
  {
    v6 = *(v4 + 16);

    *v6 = a1 & 1;
    v7 = *(v5 + 8);

    return v7();
  }
}

uint64_t sub_21CCC99B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_21CCC99D8, 0, 0);
}

uint64_t sub_21CCC99D8()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_21CCC9AAC;
  v5 = v0[4];
  v4 = v0[5];

  return sub_21CCB4A9C(v5, v4);
}

uint64_t sub_21CCC9AAC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_21CCB3838, 0, 0);
  }

  else
  {
    v6 = *(v4 + 16);

    *v6 = a1;
    v7 = *(v5 + 8);

    return v7();
  }
}

uint64_t sub_21CCC9C0C(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21CCC498C;

  return sub_21CCC8154(a1, a2, v6);
}

uint64_t sub_21CCC9CBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21CCC01B8;

  return sub_21CCC99B4(a1, v4, v5, v6);
}

unint64_t sub_21CCC9D90()
{
  result = qword_27CE18C50;
  if (!qword_27CE18C50)
  {
    type metadata accessor for DIIdentityFatalError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE18C50);
  }

  return result;
}

uint64_t sub_21CCC9E00()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21CCC498C;

  return sub_21CCC750C(v2, v3, v4);
}

uint64_t sub_21CCC9EB4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21CCC498C;

  return sub_21CD01D30(v2, v3, v4);
}

uint64_t objectdestroy_17Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21CCC9FB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21CCC01B8;

  return sub_21CD01E18(a1, v4, v5, v6);
}

uint64_t sub_21CCCA080(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21CCC498C;

  return sub_21CCC6DF4(a1, a2, v6);
}

uint64_t sub_21CCCA130(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21CCC498C;

  return sub_21CCC9758(a1, v4, v5, v6);
}

id static DigitalPresentmentXPCInterface.interface()()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];

  return v0;
}

id static related decl e for DIIdentityError.make(_:)(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CCA9B8]);

  return [v2 initWithDomain:@"DIIdentityErrorDomain" code:a1 userInfo:0];
}

uint64_t DIIdentityNationalIDCardDescriptor.region.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 regionCode];
  if (v3)
  {
    v4 = v3;
    sub_21CD83B24();
  }

  sub_21CD83804();
  v5 = sub_21CD837F4();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, 0, 1, v5);
}

uint64_t sub_21CCCA3FC@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 regionCode];
  if (v3)
  {
    v4 = v3;
    sub_21CD83B24();
  }

  sub_21CD83804();
  v5 = sub_21CD837F4();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, 0, 1, v5);
}

uint64_t sub_21CCCA4BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F08, &qword_21CD885F8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_21CCCA6B0(a1, &v6 - v3);
  return DIIdentityNationalIDCardDescriptor.region.setter(v4);
}

uint64_t DIIdentityNationalIDCardDescriptor.region.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F08, &qword_21CD885F8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  sub_21CCCA6B0(a1, &v11 - v5);
  v7 = sub_21CD837F4();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_21CCCA720(v6);
    v9 = 0;
  }

  else
  {
    sub_21CD837C4();
    (*(v8 + 8))(v6, v7);
    v9 = sub_21CD83B04();
  }

  [v2 setRegionCode_];

  return sub_21CCCA720(a1);
}

uint64_t sub_21CCCA6B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F08, &qword_21CD885F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CCCA720(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F08, &qword_21CD885F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*DIIdentityNationalIDCardDescriptor.region.modify(void *a1))(uint64_t *a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x38uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F08, &qword_21CD885F8) - 8) + 64);
  if (v4)
  {
    v6[1] = swift_coroFrameAlloc();
    v6[2] = swift_coroFrameAlloc();
    v6[3] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v6[1] = malloc(v7);
    v6[2] = malloc(v7);
    v6[3] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[4] = v8;
  v10 = [v2 regionCode];
  if (v10)
  {
    v11 = v10;
    sub_21CD83B24();
  }

  sub_21CD83804();
  v12 = sub_21CD837F4();
  v6[5] = v12;
  v13 = *(v12 - 8);
  v6[6] = v13;
  (*(v13 + 56))(v9, 0, 1, v12);
  return sub_21CCCA944;
}

void sub_21CCCA944(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v5 = *(*a1 + 32);
  if (a2)
  {
    v7 = *(v2 + 8);
    v6 = *(v2 + 16);
    sub_21CCCA6B0(v5, v6);
    sub_21CCCA6B0(v6, v7);
    if ((*(v4 + 48))(v7, 1, v3) == 1)
    {
      sub_21CCCA720(*(v2 + 8));
      v8 = 0;
    }

    else
    {
      v11 = *(v2 + 40);
      v12 = *(v2 + 48);
      v13 = *(v2 + 8);
      sub_21CD837C4();
      (*(v12 + 8))(v13, v11);
      v8 = sub_21CD83B04();
    }

    v15 = *(v2 + 24);
    v14 = *(v2 + 32);
    v17 = *(v2 + 8);
    v16 = *(v2 + 16);
    [*v2 setRegionCode_];

    sub_21CCCA720(v16);
  }

  else
  {
    v9 = *(v2 + 24);
    sub_21CCCA6B0(v5, v9);
    if ((*(v4 + 48))(v9, 1, v3) == 1)
    {
      sub_21CCCA720(*(v2 + 24));
      v10 = 0;
    }

    else
    {
      v18 = *(v2 + 40);
      v19 = *(v2 + 48);
      v20 = *(v2 + 24);
      sub_21CD837C4();
      (*(v19 + 8))(v20, v18);
      v10 = sub_21CD83B04();
    }

    v15 = *(v2 + 24);
    v14 = *(v2 + 32);
    v17 = *(v2 + 8);
    v16 = *(v2 + 16);
    [*v2 setRegionCode_];
  }

  sub_21CCCA720(v14);
  free(v14);
  free(v15);
  free(v16);
  free(v17);

  free(v2);
}

uint64_t IdentityDocumentCompoundDescriptor.init(_:)@<X0>(char *a1@<X0>, unsigned int (**a2)(char *, uint64_t, uint64_t)@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE191C0, &qword_21CD88EE0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v53 - v8;
  v10 = type metadata accessor for IdentityDocumentDescriptor(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v53 - v16;
  MEMORY[0x28223BE20](v15);
  v57 = (&v53 - v18);
  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  swift_unknownObjectRetain();
  v56 = v10;
  if (v19)
  {
    v20 = [v19 descriptors];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19230, &qword_21CD88EF8);
    v21 = sub_21CD83C84();

    if (v21 >> 62)
    {
      goto LABEL_29;
    }

    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v53 = a1;
    for (i = a2; v22; i = a2)
    {
      v23 = 0;
      *&v55 = v11;
      a2 = (v11 + 48);
      v24 = MEMORY[0x277D84F90];
      a1 = v56;
      while ((v21 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x21CF179D0](v23, v21);
        v11 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_27;
        }

LABEL_10:
        sub_21CCD18F8(v25, v9);
        if ((*a2)(v9, 1, a1) == 1)
        {
          sub_21CCB1928(v9, &qword_27CE191C0, &qword_21CD88EE0);
        }

        else
        {
          sub_21CCD16E8(v9, v57, type metadata accessor for IdentityDocumentDescriptor);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = sub_21CCCF2F8(0, v24[2] + 1, 1, v24, &qword_27CE191C8, &unk_21CD88EE8, type metadata accessor for IdentityDocumentDescriptor);
          }

          v27 = v24[2];
          v26 = v24[3];
          v28 = v24;
          if (v27 >= v26 >> 1)
          {
            v28 = sub_21CCCF2F8((v26 > 1), v27 + 1, 1, v24, &qword_27CE191C8, &unk_21CD88EE8, type metadata accessor for IdentityDocumentDescriptor);
          }

          v28[2] = v27 + 1;
          v24 = v28;
          sub_21CCD16E8(v57, v28 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v27, type metadata accessor for IdentityDocumentDescriptor);
          a1 = v56;
        }

        ++v23;
        if (v11 == v22)
        {
          goto LABEL_31;
        }
      }

      if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v25 = swift_unknownObjectRetain();
      v11 = v23 + 1;
      if (!__OFADD__(v23, 1))
      {
        goto LABEL_10;
      }

LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      v22 = sub_21CD83FE4();
      v53 = a1;
    }

    v24 = MEMORY[0x277D84F90];
LABEL_31:

    if (v24[2])
    {
      v30 = v24;
      v43 = qword_280F77E40;

      if (v43 != -1)
      {
        swift_once();
      }

      v44 = sub_21CD839F4();
      __swift_project_value_buffer(v44, qword_280F78E40);

      v45 = sub_21CD839D4();
      v46 = sub_21CD83E24();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v58 = v48;
        *v47 = 136315138;
        v49 = MEMORY[0x21CF176E0](v30, v56);
        v51 = v50;

        v52 = sub_21CCC02FC(v49, v51, &v58);

        *(v47 + 4) = v52;
        _os_log_impl(&dword_21CC90000, v45, v46, "IdentityDocumentCompoundDescriptor: DIIdentityAnyOfDescriptor descriptors %s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v48);
        MEMORY[0x21CF18580](v48, -1, -1);
        MEMORY[0x21CF18580](v47, -1, -1);

        result = swift_unknownObjectRelease_n();
      }

      else
      {

        swift_unknownObjectRelease_n();
      }
    }

    else
    {

      result = swift_unknownObjectRelease_n();
      v30 = 0;
    }

    a2 = i;
  }

  else
  {
    sub_21CCD18F8(a1, v7);
    if ((*(v11 + 48))(v7, 1, v10) == 1)
    {
      swift_unknownObjectRelease();
      result = sub_21CCB1928(v7, &qword_27CE191C0, &qword_21CD88EE0);
      v30 = 0;
    }

    else
    {
      v53 = a1;
      i = a2;
      sub_21CCD16E8(v7, v17, type metadata accessor for IdentityDocumentDescriptor);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE191C8, &unk_21CD88EE8);
      v31 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v32 = swift_allocObject();
      v55 = xmmword_21CD884B0;
      *(v32 + 16) = xmmword_21CD884B0;
      v57 = v32;
      sub_21CCD17B8(v17, v32 + v31, type metadata accessor for IdentityDocumentDescriptor);
      if (qword_280F77E40 != -1)
      {
        swift_once();
      }

      v33 = sub_21CD839F4();
      __swift_project_value_buffer(v33, qword_280F78E40);
      sub_21CCD17B8(v17, v14, type metadata accessor for IdentityDocumentDescriptor);
      v34 = sub_21CD839D4();
      v35 = sub_21CD83E24();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v58 = v37;
        *v36 = 136315138;
        v38 = swift_allocObject();
        *(v38 + 16) = v55;
        sub_21CCD17B8(v14, v38 + v31, type metadata accessor for IdentityDocumentDescriptor);
        v39 = MEMORY[0x21CF176E0](v38, v56);
        v41 = v40;

        sub_21CCD1868(v14, type metadata accessor for IdentityDocumentDescriptor);
        v42 = sub_21CCC02FC(v39, v41, &v58);

        *(v36 + 4) = v42;
        _os_log_impl(&dword_21CC90000, v34, v35, "IdentityDocumentCompoundDescriptor: default descriptors %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x21CF18580](v37, -1, -1);
        MEMORY[0x21CF18580](v36, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();

        sub_21CCD1868(v14, type metadata accessor for IdentityDocumentDescriptor);
      }

      result = sub_21CCD1868(v17, type metadata accessor for IdentityDocumentDescriptor);
      a2 = i;
      v30 = v57;
    }
  }

  *a2 = v30;
  return result;
}

uint64_t sub_21CCCB3A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 29295 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21CD841A4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21CCCB434(uint64_t a1)
{
  v2 = sub_21CCCF5E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCCB470(uint64_t a1)
{
  v2 = sub_21CCCF5E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CCCB4B8(uint64_t a1)
{
  v2 = sub_21CCCF634();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCCB4F4(uint64_t a1)
{
  v2 = sub_21CCCF634();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdentityDocumentCompoundDescriptor.LogicalOperator.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19238, &qword_21CD88F00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19240, &qword_21CD88F08);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCCF5E0();
  sub_21CD842B4();
  sub_21CCCF634();
  sub_21CD840E4();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t IdentityDocumentCompoundDescriptor.LogicalOperator.hashValue.getter()
{
  sub_21CD84264();
  MEMORY[0x21CF17CC0](0);
  return sub_21CD84294();
}

uint64_t IdentityDocumentCompoundDescriptor.LogicalOperator.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19258, &qword_21CD88F10);
  v16 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19260, &qword_21CD88F18);
  v6 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCCF5E0();
  sub_21CD842A4();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(sub_21CD840D4() + 16) == 1)
    {
      sub_21CCCF634();
      sub_21CD84034();
      v10 = v15;
      (*(v9 + 8))(v5, v3);
    }

    else
    {
      v11 = sub_21CD83FA4();
      swift_allocError();
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19268, &qword_21CD88F20);
      *v13 = &type metadata for IdentityDocumentCompoundDescriptor.LogicalOperator;
      sub_21CD84044();
      sub_21CD83F94();
      (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D84160], v11);
      swift_willThrow();
      v10 = v15;
    }

    (*(v10 + 8))(v8, v17);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_21CCCBA68()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 25;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_21CCCBA9C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_21CCCBAC8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 20;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21CCCBAFC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 10;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21CCCBB30()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21CCCBB64()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21CCCBB98()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 22;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21CCCBBCC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21CCCBC00()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21CCCBC4C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19238, &qword_21CD88F00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19240, &qword_21CD88F08);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCCF5E0();
  sub_21CD842B4();
  sub_21CCCF634();
  sub_21CD840E4();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_21CCCBE24()
{
  sub_21CD84264();
  MEMORY[0x21CF17CC0](0);
  return sub_21CD84294();
}

uint64_t sub_21CCCBE68()
{
  sub_21CD84264();
  MEMORY[0x21CF17CC0](0);
  return sub_21CD84294();
}

uint64_t sub_21CCCBEC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CD83744();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18EC8, &unk_21CD885C0);
  MEMORY[0x28223BE20](v8 - 8);
  v48 = &v41 - v9;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19368, &qword_21CD8EF10);
  MEMORY[0x28223BE20](v49);
  v11 = &v41 - v10;
  v52 = type metadata accessor for MobileDocumentRegistration(0);
  v12 = MEMORY[0x28223BE20](v52);
  v14 = (&v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v17 = (&v41 - v16);
  v18 = *(a1 + 16);
  if (v18 == *(a2 + 16))
  {
    if (!v18 || a1 == a2)
    {
      return 1;
    }

    v42 = v11;
    v43 = v7;
    v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v20 = a1 + v19;
    v21 = a2 + v19;
    v41 = (v5 + 32);
    v44 = (v5 + 8);
    v46 = *(v15 + 72);
    v47 = (v5 + 48);
    v22 = &qword_27CE18EC8;
    while (1)
    {
      sub_21CCD17B8(v20, v17, type metadata accessor for MobileDocumentRegistration);
      v51 = v21;
      sub_21CCD17B8(v21, v14, type metadata accessor for MobileDocumentRegistration);
      v24 = *v17 == *v14 && v17[1] == v14[1];
      if (!v24 && (sub_21CD841A4() & 1) == 0 || (sub_21CCCC4F8(v17[2], v14[2]) & 1) == 0)
      {
        break;
      }

      v50 = v20;
      v25 = *(v52 + 24);
      v26 = *(v49 + 48);
      sub_21CCD1750(v17 + v25, v11, v22, &unk_21CD885C0);
      sub_21CCD1750(v14 + v25, &v11[v26], v22, &unk_21CD885C0);
      v27 = v22;
      v28 = *v47;
      if ((*v47)(v11, 1, v4) == 1)
      {
        if (v28(&v11[v26], 1, v4) != 1)
        {
          goto LABEL_23;
        }

        sub_21CCB1928(v11, v22, &unk_21CD885C0);
        v29 = v50;
      }

      else
      {
        sub_21CCD1750(v11, v48, v22, &unk_21CD885C0);
        if (v28(&v11[v26], 1, v4) == 1)
        {
          (*v44)(v48, v4);
LABEL_23:
          sub_21CCB1928(v11, &qword_27CE19368, &qword_21CD8EF10);
          break;
        }

        v30 = &v11[v26];
        v31 = v48;
        v32 = v43;
        (*v41)(v43, v30, v4);
        sub_21CCD1820(&qword_27CE19370, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
        v45 = sub_21CD83A84();
        v33 = *v44;
        v34 = v32;
        v35 = v31;
        v11 = v42;
        (*v44)(v34, v4);
        v33(v35, v4);
        sub_21CCB1928(v11, v27, &unk_21CD885C0);
        v22 = v27;
        v29 = v50;
        if ((v45 & 1) == 0)
        {
          break;
        }
      }

      v36 = *(v52 + 28);
      v37 = *(v17 + v36);
      v38 = *(v17 + v36 + 8);
      v39 = (v14 + v36);
      if (v37 == *v39 && v38 == v39[1])
      {
        sub_21CCD1868(v14, type metadata accessor for MobileDocumentRegistration);
        sub_21CCD1868(v17, type metadata accessor for MobileDocumentRegistration);
      }

      else
      {
        v23 = sub_21CD841A4();
        sub_21CCD1868(v14, type metadata accessor for MobileDocumentRegistration);
        sub_21CCD1868(v17, type metadata accessor for MobileDocumentRegistration);
        if ((v23 & 1) == 0)
        {
          return 0;
        }
      }

      v21 = v51 + v46;
      v20 = v29 + v46;
      if (!--v18)
      {
        return 1;
      }
    }

    sub_21CCD1868(v14, type metadata accessor for MobileDocumentRegistration);
    sub_21CCD1868(v17, type metadata accessor for MobileDocumentRegistration);
  }

  return 0;
}

uint64_t sub_21CCCC468(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_21CD841A4() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_21CCCC4F8(uint64_t a1, uint64_t a2)
{
  v33[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v9 = *(i - 1);
      v8 = *i;
      v10 = *v4 >> 62;
      v11 = *i >> 62;
      if (v10 == 3)
      {
        break;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v20 = *(v7 + 16);
          v19 = *(v7 + 24);
          v17 = __OFSUB__(v19, v20);
          v13 = v19 - v20;
          if (v17)
          {
            goto LABEL_62;
          }

          goto LABEL_28;
        }

        v13 = 0;
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

      else if (v10)
      {
        LODWORD(v13) = HIDWORD(v7) - v7;
        if (__OFSUB__(HIDWORD(v7), v7))
        {
          goto LABEL_63;
        }

        v13 = v13;
        if (v11 <= 1)
        {
LABEL_29:
          if (v11)
          {
            LODWORD(v18) = HIDWORD(v9) - v9;
            if (__OFSUB__(HIDWORD(v9), v9))
            {
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
            }

            v18 = v18;
          }

          else
          {
            v18 = BYTE6(v8);
          }

          goto LABEL_33;
        }
      }

      else
      {
        v13 = BYTE6(v6);
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

LABEL_22:
      if (v11 != 2)
      {
        if (v13)
        {
          return 0;
        }

        goto LABEL_6;
      }

      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      if (v17)
      {
        goto LABEL_61;
      }

LABEL_33:
      if (v13 != v18)
      {
        return 0;
      }

      if (v13 < 1)
      {
        goto LABEL_6;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v31 = v3;
          v21 = *(v7 + 16);
          v30 = *(v7 + 24);
          sub_21CCB18D4(v7, v6);
          sub_21CCB18D4(v9, v8);
          v22 = sub_21CD834C4();
          if (v22)
          {
            v23 = sub_21CD834E4();
            if (__OFSUB__(v21, v23))
            {
              goto LABEL_66;
            }

            v22 += v21 - v23;
          }

          if (__OFSUB__(v30, v21))
          {
            goto LABEL_65;
          }

          sub_21CD834D4();
          v24 = v22;
          v25 = v9;
          v26 = v8;
          v3 = v31;
          goto LABEL_54;
        }

        memset(v33, 0, 14);
        sub_21CCB18D4(v7, v6);
        sub_21CCB18D4(v9, v8);
      }

      else
      {
        if (v10)
        {
          if (v7 >> 32 < v7)
          {
            goto LABEL_64;
          }

          sub_21CCB18D4(v7, v6);
          sub_21CCB18D4(v9, v8);
          v27 = sub_21CD834C4();
          if (v27)
          {
            v28 = sub_21CD834E4();
            if (__OFSUB__(v7, v28))
            {
              goto LABEL_67;
            }

            v27 += v7 - v28;
          }

          sub_21CD834D4();
          v24 = v27;
          v25 = v9;
          v26 = v8;
LABEL_54:
          sub_21CCCF08C(v24, v25, v26, v33);
          sub_21CCB1880(v9, v8);
          sub_21CCB1880(v7, v6);
          if ((v33[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }

        v33[0] = *(v4 - 1);
        LOWORD(v33[1]) = v6;
        BYTE2(v33[1]) = BYTE2(v6);
        BYTE3(v33[1]) = BYTE3(v6);
        BYTE4(v33[1]) = BYTE4(v6);
        BYTE5(v33[1]) = BYTE5(v6);
        sub_21CCB18D4(v7, v6);
        sub_21CCB18D4(v9, v8);
      }

      sub_21CCCF08C(v33, v9, v8, &v32);
      sub_21CCB1880(v9, v8);
      sub_21CCB1880(v7, v6);
      if (!v32)
      {
        return 0;
      }

LABEL_6:
      v4 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    if (v7)
    {
      v12 = 0;
    }

    else
    {
      v12 = v6 == 0xC000000000000000;
    }

    v13 = 0;
    v14 = v12 && *i >> 62 == 3;
    if (v14 && !v9 && v8 == 0xC000000000000000)
    {
      goto LABEL_6;
    }

LABEL_28:
    if (v11 <= 1)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  return 1;
}

uint64_t sub_21CCCC904(uint64_t a1, uint64_t a2)
{
  v51[3] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for MobileDocumentReaderIdentityKeyResponse.StatusItem(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v10 = (&v45 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    v48 = 0;
    v49 = v15;
    v46 = v4;
    while (1)
    {
      sub_21CCD17B8(v13, v10, type metadata accessor for MobileDocumentReaderIdentityKeyResponse.StatusItem);
      sub_21CCD17B8(v14, v7, type metadata accessor for MobileDocumentReaderIdentityKeyResponse.StatusItem);
      v16 = *v10 == *v7 && v10[1] == v7[1];
      if (!v16 && (sub_21CD841A4() & 1) == 0 || (sub_21CD83764() & 1) == 0)
      {
LABEL_70:
        sub_21CCD1868(v7, type metadata accessor for MobileDocumentReaderIdentityKeyResponse.StatusItem);
        sub_21CCD1868(v10, type metadata accessor for MobileDocumentReaderIdentityKeyResponse.StatusItem);
        return 0;
      }

      v17 = *(v4 + 24);
      v18 = *(v10 + v17);
      v19 = *(v10 + v17 + 8);
      v20 = (v7 + v17);
      v21 = *v20;
      v22 = v20[1];
      v23 = v19 >> 62;
      v24 = v22 >> 62;
      if (v19 >> 62 == 3)
      {
        break;
      }

      if (v23 > 1)
      {
        if (v23 != 2)
        {
          goto LABEL_37;
        }

        v30 = *(v18 + 16);
        v29 = *(v18 + 24);
        v31 = __OFSUB__(v29, v30);
        v28 = v29 - v30;
        if (v31)
        {
          goto LABEL_73;
        }

        if (v24 <= 1)
        {
          goto LABEL_35;
        }
      }

      else if (v23)
      {
        LODWORD(v28) = HIDWORD(v18) - v18;
        if (__OFSUB__(HIDWORD(v18), v18))
        {
          goto LABEL_74;
        }

        v28 = v28;
        if (v24 <= 1)
        {
LABEL_35:
          if (v24)
          {
            LODWORD(v32) = HIDWORD(v21) - v21;
            if (__OFSUB__(HIDWORD(v21), v21))
            {
              goto LABEL_72;
            }

            v32 = v32;
          }

          else
          {
            v32 = BYTE6(v22);
          }

          goto LABEL_44;
        }
      }

      else
      {
        v28 = BYTE6(v19);
        if (v24 <= 1)
        {
          goto LABEL_35;
        }
      }

LABEL_38:
      if (v24 != 2)
      {
        if (v28)
        {
          goto LABEL_70;
        }

LABEL_6:
        sub_21CCD1868(v7, type metadata accessor for MobileDocumentReaderIdentityKeyResponse.StatusItem);
        sub_21CCD1868(v10, type metadata accessor for MobileDocumentReaderIdentityKeyResponse.StatusItem);
        goto LABEL_7;
      }

      v34 = *(v21 + 16);
      v33 = *(v21 + 24);
      v31 = __OFSUB__(v33, v34);
      v32 = v33 - v34;
      if (v31)
      {
        __break(1u);
LABEL_72:
        __break(1u);
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
LABEL_78:
        __break(1u);
      }

LABEL_44:
      if (v28 != v32)
      {
        goto LABEL_70;
      }

      if (v28 < 1)
      {
        goto LABEL_6;
      }

      if (v23 > 1)
      {
        if (v23 != 2)
        {
          memset(v51, 0, 14);
          goto LABEL_64;
        }

        v47 = v21;
        v35 = *(v18 + 16);
        v45 = *(v18 + 24);
        v36 = sub_21CD834C4();
        if (v36)
        {
          v37 = sub_21CD834E4();
          if (__OFSUB__(v35, v37))
          {
            goto LABEL_77;
          }

          v36 += v35 - v37;
        }

        if (__OFSUB__(v45, v35))
        {
          goto LABEL_76;
        }
      }

      else
      {
        if (!v23)
        {
          v51[0] = v18;
          LOWORD(v51[1]) = v19;
          BYTE2(v51[1]) = BYTE2(v19);
          BYTE3(v51[1]) = BYTE3(v19);
          BYTE4(v51[1]) = BYTE4(v19);
          BYTE5(v51[1]) = BYTE5(v19);
LABEL_64:
          v41 = v48;
          sub_21CCCF08C(v51, v21, v22, &v50);
          v48 = v41;
          v42 = v50;
          goto LABEL_67;
        }

        v47 = v21;
        v38 = v18;
        if (v18 >> 32 < v18)
        {
          goto LABEL_75;
        }

        v39 = sub_21CD834C4();
        if (v39)
        {
          v45 = v39;
          v40 = sub_21CD834E4();
          if (__OFSUB__(v38, v40))
          {
            goto LABEL_78;
          }

          v36 = v38 - v40 + v45;
        }

        else
        {
          v36 = 0;
        }
      }

      sub_21CD834D4();
      v43 = v48;
      sub_21CCCF08C(v36, v47, v22, v51);
      v48 = v43;
      v42 = v51[0];
      v4 = v46;
LABEL_67:
      sub_21CCD1868(v7, type metadata accessor for MobileDocumentReaderIdentityKeyResponse.StatusItem);
      sub_21CCD1868(v10, type metadata accessor for MobileDocumentReaderIdentityKeyResponse.StatusItem);
      if ((v42 & 1) == 0)
      {
        return 0;
      }

LABEL_7:
      v14 += v49;
      v13 += v49;
      if (!--v11)
      {
        return 1;
      }
    }

    if (v18)
    {
      v25 = 0;
    }

    else
    {
      v25 = v19 == 0xC000000000000000;
    }

    if (v25 && v22 >> 62 == 3 && !v21 && v22 == 0xC000000000000000)
    {
      goto LABEL_6;
    }

LABEL_37:
    v28 = 0;
    if (v24 <= 1)
    {
      goto LABEL_35;
    }

    goto LABEL_38;
  }

  return 1;
}

uint64_t sub_21CCCCE0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 80);
  v4 = (a2 + 40);
  while (1)
  {
    v5 = *(v3 - 5);
    result = *(v3 - 4);
    v7 = *(v3 - 3);
    v9 = *(v3 - 2);
    v8 = *(v3 - 1);
    v10 = *v3;
    v32[0] = *(v3 - 6);
    v32[1] = v5;
    v32[2] = result;
    v33 = v7;
    v34 = v9;
    v35 = v8;
    v36 = v10;
    if (!v2)
    {
      break;
    }

    v11 = *v4;
    v12 = v4[1];
    v23 = v2;
    v24 = v4[2];
    v13 = v4[3];
    v25 = v4[5];
    v26 = v4[4];
    v27[0] = *(v4 - 1);
    v27[1] = v11;
    v27[2] = v12;
    v28 = v24;
    v29 = v13;
    v30 = v26;
    v31 = v25;

    sub_21CC96064(v7, v9);
    sub_21CC96064(v8, v10);

    sub_21CC96064(v24, v13);
    sub_21CC96064(v26, v25);
    v14 = _s7CoreIDV39MobileDocumentReaderCertificateResponseV10StatusItemV2eeoiySbAE_AEtFZ_0(v32, v27);
    v15 = v28;
    v16 = v29;
    v17 = v30;
    v18 = v31;

    sub_21CC95F8C(v15, v16);
    sub_21CC95F8C(v17, v18);
    v19 = v33;
    v20 = v34;
    v21 = v35;
    v22 = v36;

    sub_21CC95F8C(v19, v20);
    sub_21CC95F8C(v21, v22);
    if (v14)
    {
      v3 += 7;
      v4 += 7;
      v2 = v23 - 1;
      if (v23 != 1)
      {
        continue;
      }
    }

    return v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_21CCCCFB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 48)
    {
      v5 = *(a1 + i + 48);
      v6 = *(a1 + i + 56);
      v7 = *(a1 + i + 64);
      v8 = *(a1 + i + 72);
      v9 = *(a2 + i + 48);
      v10 = *(a2 + i + 56);
      v11 = *(a2 + i + 64);
      v12 = *(a2 + i + 72);
      v13 = *(a1 + i + 32) == *(a2 + i + 32) && *(a1 + i + 40) == *(a2 + i + 40);
      if (!v13 && (sub_21CD841A4() & 1) == 0)
      {
        break;
      }

      v14 = v5 == v9 && v6 == v10;
      if (!v14 && (sub_21CD841A4() & 1) == 0)
      {
        break;
      }

      if (v8)
      {
        if (v11 == (v7 != 0))
        {
          v15 = v12;
        }

        else
        {
          v15 = 0;
        }

        if ((v15 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v7 == v11)
        {
          v4 = v12;
        }

        else
        {
          v4 = 1;
        }

        if (v4)
        {
          return 0;
        }
      }

      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_21CCCD0D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 16)
    {
      v6 = *(v3 - 1);
      v7 = *(i - 1);
      if (*v3 == 1)
      {
        switch(v6)
        {
          case 1:
          case 2:
          case 3:
            v8 = v7 == v6;
            v9 = *i ^ 1;
            if (!v8)
            {
              v9 = 1;
            }

            if (v9)
            {
              return 0;
            }

            goto LABEL_9;
          case 4:
            if (v7 == 4)
            {
              v18 = *i;
            }

            else
            {
              v18 = 0;
            }

            if ((v18 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_9;
          case 5:
            if (v7 == 5)
            {
              v14 = *i;
            }

            else
            {
              v14 = 0;
            }

            if ((v14 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_9;
          case 6:
            if (v7 == 6)
            {
              v15 = *i;
            }

            else
            {
              v15 = 0;
            }

            if ((v15 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_9;
          case 7:
            if (v7 == 7)
            {
              v12 = *i;
            }

            else
            {
              v12 = 0;
            }

            if ((v12 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_9;
          case 8:
            if (v7 == 8)
            {
              v17 = *i;
            }

            else
            {
              v17 = 0;
            }

            if ((v17 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_9;
          case 9:
            if (v7 == 9)
            {
              v10 = *i;
            }

            else
            {
              v10 = 0;
            }

            if ((v10 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_9;
          case 10:
            if (v7 == 10)
            {
              v16 = *i;
            }

            else
            {
              v16 = 0;
            }

            if ((v16 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_9;
          case 11:
            if (v7 == 11)
            {
              v25 = *i;
            }

            else
            {
              v25 = 0;
            }

            if ((v25 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_9;
          case 12:
            if (v7 == 12)
            {
              v11 = *i;
            }

            else
            {
              v11 = 0;
            }

            if ((v11 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_9;
          case 13:
            if (v7 == 13)
            {
              v19 = *i;
            }

            else
            {
              v19 = 0;
            }

            if ((v19 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_9;
          case 14:
            if (v7 == 14)
            {
              v27 = *i;
            }

            else
            {
              v27 = 0;
            }

            if ((v27 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_9;
          case 15:
            if (v7 == 15)
            {
              v13 = *i;
            }

            else
            {
              v13 = 0;
            }

            if ((v13 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_9;
          case 16:
            if (v7 == 16)
            {
              v29 = *i;
            }

            else
            {
              v29 = 0;
            }

            if ((v29 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_9;
          case 17:
            if (v7 == 17)
            {
              v20 = *i;
            }

            else
            {
              v20 = 0;
            }

            if ((v20 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_9;
          case 18:
            if (v7 == 18)
            {
              v23 = *i;
            }

            else
            {
              v23 = 0;
            }

            if ((v23 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_9;
          case 19:
            if (v7 == 19)
            {
              v28 = *i;
            }

            else
            {
              v28 = 0;
            }

            if ((v28 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_9;
          case 20:
            if (v7 == 20)
            {
              v21 = *i;
            }

            else
            {
              v21 = 0;
            }

            if ((v21 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_9;
          case 21:
            if (v7 == 21)
            {
              v22 = *i;
            }

            else
            {
              v22 = 0;
            }

            if ((v22 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_9;
          case 22:
            if (v7 == 22)
            {
              v26 = *i;
            }

            else
            {
              v26 = 0;
            }

            if ((v26 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_9;
          case 23:
            if (v7 > 0x16)
            {
              v30 = *i;
            }

            else
            {
              v30 = 0;
            }

            if ((v30 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_9;
          default:
            if (v7)
            {
              v24 = 0;
            }

            else
            {
              v24 = *i;
            }

            if ((v24 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_9;
        }
      }

      v5 = v6 == v7 ? *i : 1;
      if (v5)
      {
        break;
      }

LABEL_9:
      v3 += 16;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_21CCCD2CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CD837F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DigitalPresentmentDocumentType(0);
  MEMORY[0x28223BE20](v7 - 8);
  v40 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19388, &unk_21CD89B40);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  v41 = type metadata accessor for IdentityDocumentDescriptor(0);
  v12 = MEMORY[0x28223BE20](v41);
  v43 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  v17 = *(a1 + 16);
  if (v17 != *(a2 + 16))
  {
    goto LABEL_20;
  }

  if (!v17 || a1 == a2)
  {
    v32 = 1;
    return v32 & 1;
  }

  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = a1 + v18;
  v20 = a2 + v18;
  v42 = (v5 + 48);
  v34 = (v5 + 32);
  v35 = v9;
  v36 = (v5 + 8);
  v39 = *(v14 + 72);
  while (1)
  {
    sub_21CCD17B8(v19, v16, type metadata accessor for IdentityDocumentDescriptor);
    v21 = v43;
    sub_21CCD17B8(v20, v43, type metadata accessor for IdentityDocumentDescriptor);
    v22 = *(v9 + 48);
    sub_21CCD17B8(v16, v11, type metadata accessor for DigitalPresentmentDocumentType);
    sub_21CCD17B8(v21, &v11[v22], type metadata accessor for DigitalPresentmentDocumentType);
    v23 = *v42;
    v24 = (*v42)(v11, 2, v4);
    if (!v24)
    {
      break;
    }

    if (v24 == 1)
    {
      if (v23(&v11[v22], 2, v4) != 1)
      {
        goto LABEL_18;
      }
    }

    else if (v23(&v11[v22], 2, v4) != 2)
    {
      goto LABEL_18;
    }

LABEL_13:
    sub_21CCD1868(v11, type metadata accessor for DigitalPresentmentDocumentType);
    v31 = v43;
    v32 = sub_21CCFB7DC(*&v16[*(v41 + 20)], *(v43 + *(v41 + 20)));
    sub_21CCD1868(v31, type metadata accessor for IdentityDocumentDescriptor);
    sub_21CCD1868(v16, type metadata accessor for IdentityDocumentDescriptor);
    if (v32)
    {
      v20 += v39;
      v19 += v39;
      if (--v17)
      {
        continue;
      }
    }

    return v32 & 1;
  }

  sub_21CCD17B8(v11, v40, type metadata accessor for DigitalPresentmentDocumentType);
  if (!v23(&v11[v22], 2, v4))
  {
    v25 = v40;
    v26 = v4;
    v27 = v38;
    (*v34)(v38, &v11[v22], v26);
    v37 = MEMORY[0x21CF17230](v25, v27);
    v28 = *v36;
    v29 = v27;
    v4 = v26;
    v30 = v25;
    v9 = v35;
    (*v36)(v29, v4);
    v28(v30, v4);
    if ((v37 & 1) == 0)
    {
      sub_21CCD1868(v11, type metadata accessor for DigitalPresentmentDocumentType);
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  (*v36)(v40, v4);
LABEL_18:
  sub_21CCB1928(v11, &qword_27CE19388, &unk_21CD89B40);
LABEL_19:
  sub_21CCD1868(v43, type metadata accessor for IdentityDocumentDescriptor);
  sub_21CCD1868(v16, type metadata accessor for IdentityDocumentDescriptor);
LABEL_20:
  v32 = 0;
  return v32 & 1;
}

uint64_t sub_21CCCD7FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    v4 = (a2 + 56);
    do
    {
      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      v7 = *v3;
      v8 = *(v4 - 2);
      v9 = *(v4 - 1);
      v10 = *v4;
      if (v5)
      {
        if (!v8)
        {
          return 0;
        }

        v11 = *(v3 - 3) == *(v4 - 3) && v5 == v8;
        if (!v11 && (sub_21CD841A4() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v8)
      {
        return 0;
      }

      v12 = v6 == v9 && v7 == v10;
      if (!v12 && (sub_21CD841A4() & 1) == 0)
      {
        return 0;
      }

      v3 += 4;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_21CCCD8E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 72);
    for (i = (a2 + 40); ; i += 6)
    {
      v5 = *(v3 - 3);
      v6 = *(v3 - 2);
      v7 = *v3;
      v13 = *(v3 - 1);
      v9 = i[1];
      v8 = i[2];
      v11 = i[3];
      v10 = i[4];
      if ((*(v3 - 5) != *(i - 1) || *(v3 - 4) != *i) && (sub_21CD841A4() & 1) == 0)
      {
        break;
      }

      if (v6)
      {
        if (!v8 || (v5 != v9 || v6 != v8) && (sub_21CD841A4() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v8)
      {
        return 0;
      }

      if (v7)
      {
        if (!v10 || (v13 != v11 || v7 != v10) && (sub_21CD841A4() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v10)
      {
        return 0;
      }

      v3 += 6;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_21CCCDA20(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CD83504();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19318, &qword_21CD95170);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v66 - v12;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19338, &qword_21CD89400);
  v14 = MEMORY[0x28223BE20](v81);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v66 - v17;
  v83 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege(0);
  v19 = MEMORY[0x28223BE20](v83);
  v84 = (&v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v23 = (&v66 - v22);
  v24 = *(a1 + 16);
  if (v24 != *(a2 + 16))
  {
    return 0;
  }

  if (!v24 || a1 == a2)
  {
    return 1;
  }

  v71 = v7;
  v72 = v16;
  v66 = v11;
  v67 = v13;
  v25 = 0;
  v26 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v27 = a1 + v26;
  v74 = v18;
  v75 = a2 + v26;
  v78 = (v5 + 48);
  v79 = v4;
  v69 = v27;
  v70 = (v5 + 32);
  v73 = (v5 + 8);
  v28 = *(v21 + 72);
  v82 = (&v66 - v22);
  v77 = v24;
  v68 = v28;
  while (1)
  {
    result = sub_21CCD17B8(v27 + v28 * v25, v23, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege);
    if (v25 == v77)
    {
      break;
    }

    v76 = v25;
    v30 = v84;
    sub_21CCD17B8(v75 + v28 * v25, v84, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege);
    v31 = *v23 == *v30 && v23[1] == v30[1];
    if (!v31 && (sub_21CD841A4() & 1) == 0)
    {
      goto LABEL_47;
    }

    v32 = v83[5];
    v33 = *(v81 + 48);
    v34 = v74;
    sub_21CCD1750(v82 + v32, v74, &qword_27CE19318, &qword_21CD95170);
    sub_21CCD1750(v84 + v32, v34 + v33, &qword_27CE19318, &qword_21CD95170);
    v35 = v79;
    v36 = *v78;
    if ((*v78)(v34, 1, v79) == 1)
    {
      if (v36(v34 + v33, 1, v35) != 1)
      {
        goto LABEL_46;
      }

      sub_21CCB1928(v34, &qword_27CE19318, &qword_21CD95170);
    }

    else
    {
      v37 = v67;
      sub_21CCD1750(v34, v67, &qword_27CE19318, &qword_21CD95170);
      if (v36(v34 + v33, 1, v35) == 1)
      {
        goto LABEL_45;
      }

      v38 = v71;
      (*v70)(v71, v34 + v33, v35);
      sub_21CCD1820(&qword_27CE19340, MEMORY[0x277CC8990], MEMORY[0x277CC89A8]);
      v39 = sub_21CD83A84();
      v40 = *v73;
      (*v73)(v38, v35);
      v40(v37, v35);
      sub_21CCB1928(v34, &qword_27CE19318, &qword_21CD95170);
      if ((v39 & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    v41 = v83[6];
    v42 = *(v81 + 48);
    v34 = v72;
    sub_21CCD1750(v82 + v41, v72, &qword_27CE19318, &qword_21CD95170);
    sub_21CCD1750(v84 + v41, v34 + v42, &qword_27CE19318, &qword_21CD95170);
    v35 = v79;
    if (v36(v34, 1, v79) == 1)
    {
      if (v36(v34 + v42, 1, v35) != 1)
      {
        goto LABEL_46;
      }

      sub_21CCB1928(v34, &qword_27CE19318, &qword_21CD95170);
    }

    else
    {
      v37 = v66;
      sub_21CCD1750(v34, v66, &qword_27CE19318, &qword_21CD95170);
      if (v36(v34 + v42, 1, v35) == 1)
      {
LABEL_45:
        (*v73)(v37, v35);
LABEL_46:
        sub_21CCB1928(v34, &qword_27CE19338, &qword_21CD89400);
LABEL_47:
        sub_21CCD1868(v84, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege);
        sub_21CCD1868(v82, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege);
        return 0;
      }

      v43 = v71;
      (*v70)(v71, v34 + v42, v35);
      sub_21CCD1820(&qword_27CE19340, MEMORY[0x277CC8990], MEMORY[0x277CC89A8]);
      v44 = sub_21CD83A84();
      v45 = *v73;
      (*v73)(v43, v35);
      v45(v37, v35);
      sub_21CCB1928(v34, &qword_27CE19318, &qword_21CD95170);
      if ((v44 & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    v46 = v83[7];
    v47 = *(v82 + v46);
    v48 = *(v84 + v46);
    v49 = *(v47 + 16);
    if (v49 != *(v48 + 16))
    {
      goto LABEL_47;
    }

    if (v49 && v47 != v48)
    {
      v50 = (v47 + 72);
      v51 = (v48 + 40);
      do
      {
        v52 = *(v50 - 3);
        v53 = *(v50 - 2);
        v54 = *(v50 - 1);
        v55 = *v50;
        v57 = v51[1];
        v56 = v51[2];
        v59 = v51[3];
        v58 = v51[4];
        if (*(v50 - 5) != *(v51 - 1) || *(v50 - 4) != *v51)
        {
          v60 = *(v50 - 1);
          v80 = v51[4];
          v61 = v55;
          v62 = v52;
          v63 = sub_21CD841A4();
          v52 = v62;
          v55 = v61;
          v58 = v80;
          v54 = v60;
          if ((v63 & 1) == 0)
          {
            goto LABEL_47;
          }
        }

        if (v53)
        {
          if (!v56)
          {
            goto LABEL_47;
          }

          if (v52 != v57 || v53 != v56)
          {
            v64 = v54;
            v65 = sub_21CD841A4();
            v54 = v64;
            if ((v65 & 1) == 0)
            {
              goto LABEL_47;
            }
          }
        }

        else if (v56)
        {
          goto LABEL_47;
        }

        if (v55)
        {
          if (!v58 || (v54 != v59 || v55 != v58) && (sub_21CD841A4() & 1) == 0)
          {
            goto LABEL_47;
          }
        }

        else if (v58)
        {
          goto LABEL_47;
        }

        v50 += 6;
        v51 += 6;
      }

      while (--v49);
    }

    v25 = v76 + 1;
    sub_21CCD1868(v84, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege);
    v23 = v82;
    sub_21CCD1868(v82, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege);
    result = 1;
    v28 = v68;
    v27 = v69;
    if (v25 == v77)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21CCCE260(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19320, &qword_21CD893F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v65 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19330, &qword_21CD893F8);
  MEMORY[0x28223BE20](v11);
  v13 = &v65 - v12;
  v14 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v21 = &v65 - v20;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
    return 0;
  }

  if (!v22 || a1 == a2)
  {
    return 1;
  }

  v75 = *(a1 + 16);
  v76 = v18;
  v71 = v4;
  v72 = v10;
  v23 = 0;
  v24 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v25 = a1 + v24;
  v26 = a2 + v24;
  v74 = (v5 + 48);
  v27 = *(v19 + 72);
  v69 = v11;
  v70 = v7;
  v67 = v26;
  v68 = v25;
  v66 = v27;
  while (1)
  {
    v28 = v23;
    v29 = v27 * v23;
    result = sub_21CCD17B8(v25 + v29, v21, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege);
    v73 = v28;
    if (v28 == v75)
    {
      break;
    }

    sub_21CCD17B8(v26 + v29, v17, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege);
    v31 = *(v11 + 48);
    sub_21CCD1750(v21, v13, &qword_27CE19320, &qword_21CD893F0);
    sub_21CCD1750(v17, &v13[v31], &qword_27CE19320, &qword_21CD893F0);
    v32 = *v74;
    if ((*v74)(v13, 1, v4) == 1)
    {
      if (v32(&v13[v31], 1, v4) != 1)
      {
        goto LABEL_61;
      }

      result = sub_21CCB1928(v13, &qword_27CE19320, &qword_21CD893F0);
    }

    else
    {
      v33 = v72;
      sub_21CCD1750(v13, v72, &qword_27CE19320, &qword_21CD893F0);
      if (v32(&v13[v31], 1, v4) == 1)
      {
        sub_21CCD1868(v33, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass);
LABEL_61:
        sub_21CCB1928(v13, &qword_27CE19330, &qword_21CD893F8);
LABEL_62:
        sub_21CCD1868(v17, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege);
        sub_21CCD1868(v21, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege);
        return 0;
      }

      sub_21CCD16E8(&v13[v31], v7, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass);
      v34 = static MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass.== infix(_:_:)(v33, v7);
      sub_21CCD1868(v7, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass);
      sub_21CCD1868(v33, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass);
      result = sub_21CCB1928(v13, &qword_27CE19320, &qword_21CD893F0);
      if ((v34 & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    v35 = *(v76 + 20);
    v36 = *&v21[v35];
    v37 = *&v17[v35];
    v38 = *(v36 + 16);
    if (v38 != *(v37 + 16))
    {
      goto LABEL_62;
    }

    if (v38)
    {
      v39 = v36 == v37;
    }

    else
    {
      v39 = 1;
    }

    if (!v39)
    {
      v45 = (v36 + 56);
      v46 = (v37 + 56);
      while (v38)
      {
        v47 = *(v45 - 2);
        v48 = *(v45 - 1);
        v49 = *v45;
        v50 = *(v46 - 2);
        v51 = *(v46 - 1);
        v52 = *v46;
        if (v47)
        {
          if (!v50)
          {
            goto LABEL_62;
          }

          result = *(v45 - 3);
          if (result != *(v46 - 3) || v47 != v50)
          {
            result = sub_21CD841A4();
            if ((result & 1) == 0)
            {
              goto LABEL_62;
            }
          }
        }

        else if (v50)
        {
          goto LABEL_62;
        }

        if (v48 != v51 || v49 != v52)
        {
          result = sub_21CD841A4();
          if ((result & 1) == 0)
          {
            goto LABEL_62;
          }
        }

        v45 += 4;
        v46 += 4;
        if (!--v38)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_66;
    }

LABEL_17:
    v40 = *(v76 + 24);
    v41 = *&v21[v40];
    v42 = *&v17[v40];
    v43 = *(v41 + 16);
    if (v43 != *(v42 + 16))
    {
      goto LABEL_62;
    }

    if (v43)
    {
      v44 = v41 == v42;
    }

    else
    {
      v44 = 1;
    }

    if (!v44)
    {
      v55 = (v41 + 56);
      v56 = (v42 + 56);
      while (v43)
      {
        v57 = *(v55 - 2);
        v58 = *(v55 - 1);
        v59 = *v55;
        v60 = *(v56 - 2);
        v61 = *(v56 - 1);
        v62 = *v56;
        if (v57)
        {
          if (!v60)
          {
            goto LABEL_62;
          }

          result = *(v55 - 3);
          if (result != *(v56 - 3) || v57 != v60)
          {
            result = sub_21CD841A4();
            if ((result & 1) == 0)
            {
              goto LABEL_62;
            }
          }
        }

        else if (v60)
        {
          goto LABEL_62;
        }

        if (v58 != v61 || v59 != v62)
        {
          result = sub_21CD841A4();
          if ((result & 1) == 0)
          {
            goto LABEL_62;
          }
        }

        v55 += 4;
        v56 += 4;
        if (!--v43)
        {
          goto LABEL_23;
        }
      }

LABEL_66:
      __break(1u);
      break;
    }

LABEL_23:
    v23 = v73 + 1;
    sub_21CCD1868(v17, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege);
    sub_21CCD1868(v21, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege);
    result = 1;
    v7 = v70;
    v4 = v71;
    v25 = v68;
    v11 = v69;
    v27 = v66;
    v26 = v67;
    if (v23 == v75)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s7CoreIDV28MobileDocumentReaderResponseV0c8IdentityD8ElementsV3SexO9hashValueSivg_0()
{
  v1 = *v0;
  sub_21CD84264();
  MEMORY[0x21CF17CC0](v1);
  return sub_21CD84294();
}

uint64_t sub_21CCCE8E0()
{
  v1 = *v0;
  sub_21CD84264();
  MEMORY[0x21CF17CC0](v1);
  return sub_21CD84294();
}

uint64_t sub_21CCCE924()
{
  if (*v0)
  {
    return 0x4F6C616369676F6CLL;
  }

  else
  {
    return 0x7470697263736564;
  }
}

uint64_t sub_21CCCE974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7470697263736564 && a2 == 0xEB0000000073726FLL;
  if (v6 || (sub_21CD841A4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4F6C616369676F6CLL && a2 == 0xEF726F7461726570)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21CD841A4();

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

uint64_t sub_21CCCEA5C(uint64_t a1)
{
  v2 = sub_21CCCF688();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CCCEA98(uint64_t a1)
{
  v2 = sub_21CCCF688();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdentityDocumentCompoundDescriptor.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19270, &qword_21CD88F28);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-v6];
  v8 = *v1;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCCF688();

  sub_21CD842B4();
  v11 = v8;
  v10[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19280, &qword_21CD88F30);
  sub_21CCD0154(&qword_27CE19288, &qword_27CE19290, &protocol conformance descriptor for IdentityDocumentDescriptor, MEMORY[0x277D83948]);
  sub_21CD84164();

  if (!v2)
  {
    v10[14] = 1;
    sub_21CCCF6DC();
    sub_21CD84164();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t IdentityDocumentCompoundDescriptor.hashValue.getter()
{
  v1 = *v0;
  sub_21CD84264();
  sub_21CCCFE38(v3, v1);
  MEMORY[0x21CF17CC0](0);
  return sub_21CD84294();
}

uint64_t IdentityDocumentCompoundDescriptor.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE192A0, &qword_21CD88F38);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CCCF688();
  sub_21CD842A4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19280, &qword_21CD88F30);
  v11[15] = 0;
  sub_21CCD0154(&qword_27CE192A8, &qword_27CE192B0, &protocol conformance descriptor for IdentityDocumentDescriptor, MEMORY[0x277D83978]);
  sub_21CD840C4();
  v9 = v12;
  v11[14] = 1;
  sub_21CCD01F0();
  sub_21CD840C4();
  (*(v6 + 8))(v8, v5);
  *a2 = v9;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_21CCCEFA8()
{
  v1 = *v0;
  sub_21CD84264();
  sub_21CCCFE38(v3, v1);
  MEMORY[0x21CF17CC0](0);
  return sub_21CD84294();
}

uint64_t sub_21CCCF030()
{
  v1 = *v0;
  sub_21CD84264();
  sub_21CCCFE38(v3, v1);
  MEMORY[0x21CF17CC0](0);
  return sub_21CD84294();
}

uint64_t sub_21CCCF08C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_21CD834C4();
    if (v10)
    {
      v11 = sub_21CD834E4();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_21CD834D4();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_21CD834C4();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_21CD834E4();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_21CD834D4();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

void *sub_21CCCF2F8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_21CCCF4E8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  v17 = 16 * v10;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[v17])
    {
      memmove(v15, v16, v17);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, v17);
  }

  return v12;
}

unint64_t sub_21CCCF5E0()
{
  result = qword_27CE19248;
  if (!qword_27CE19248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19248);
  }

  return result;
}

unint64_t sub_21CCCF634()
{
  result = qword_27CE19250;
  if (!qword_27CE19250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19250);
  }

  return result;
}

unint64_t sub_21CCCF688()
{
  result = qword_27CE19278;
  if (!qword_27CE19278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19278);
  }

  return result;
}

unint64_t sub_21CCCF6DC()
{
  result = qword_27CE19298;
  if (!qword_27CE19298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19298);
  }

  return result;
}

uint64_t sub_21CCCF730(uint64_t a1, uint64_t a2)
{
  v3 = sub_21CD83744();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v28 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18EC8, &unk_21CD885C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - v7;
  v9 = type metadata accessor for MobileDocumentRegistration(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 16);
  result = MEMORY[0x21CF17CC0](v13);
  v33 = v13;
  if (v13)
  {
    v15 = v10;
    v16 = 0;
    v17 = *(v9 + 24);
    v31 = &v12[*(v9 + 28)];
    v32 = v17;
    v30 = a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v18 = (v4 + 48);
    v29 = *(v15 + 72);
    v26 = (v4 + 8);
    v27 = (v4 + 32);
    do
    {
      v20 = v3;
      sub_21CCD17B8(v30 + v29 * v16, v12, type metadata accessor for MobileDocumentRegistration);
      sub_21CD83B74();
      v21 = *(v12 + 2);
      MEMORY[0x21CF17CC0](*(v21 + 16));
      v22 = *(v21 + 16);
      if (v22)
      {
        v23 = (v21 + 40);
        do
        {
          v24 = *(v23 - 1);
          v25 = *v23;
          sub_21CCB18D4(v24, *v23);
          sub_21CD83704();
          sub_21CCB1880(v24, v25);
          v23 += 2;
          --v22;
        }

        while (v22);
      }

      sub_21CCD1750(&v12[v32], v8, &qword_27CE18EC8, &unk_21CD885C0);
      v3 = v20;
      if ((*v18)(v8, 1, v20) == 1)
      {
        sub_21CD84284();
      }

      else
      {
        v19 = v28;
        (*v27)(v28, v8, v20);
        sub_21CD84284();
        sub_21CCD1820(&qword_27CE19360, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
        sub_21CD83A64();
        (*v26)(v19, v20);
      }

      ++v16;
      sub_21CD83B74();
      result = sub_21CCD1868(v12, type metadata accessor for MobileDocumentRegistration);
    }

    while (v16 != v33);
  }

  return result;
}

uint64_t sub_21CCCFAC4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MobileDocumentReaderIdentityKeyResponse.StatusItem(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  result = MEMORY[0x21CF17CC0](v7);
  if (v7)
  {
    v9 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v10 = *(v4 + 72);
    do
    {
      sub_21CCD17B8(v9, v6, type metadata accessor for MobileDocumentReaderIdentityKeyResponse.StatusItem);
      sub_21CD83B74();
      sub_21CD83794();
      sub_21CCD1820(&qword_27CE19348, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_21CD83A64();
      sub_21CD83704();
      result = sub_21CCD1868(v6, type metadata accessor for MobileDocumentReaderIdentityKeyResponse.StatusItem);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_21CCCFC6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x21CF17CC0](v3);
  v17 = v3;
  if (v3)
  {
    v5 = 0;
    v16 = a2 + 32;
    do
    {
      v6 = (v16 + 56 * v5);
      v8 = v6[2];
      v7 = v6[3];
      v10 = v6[4];
      v9 = v6[5];
      v11 = v6[6];

      v18 = v7;
      sub_21CC96064(v7, v10);
      v19 = v9;
      sub_21CC96064(v9, v11);
      sub_21CD83B74();
      if (v8)
      {
        sub_21CD84284();
        MEMORY[0x21CF17CC0](*(v8 + 16));
        v12 = *(v8 + 16);
        if (v12)
        {
          v13 = v8 + 40;
          do
          {

            sub_21CD83B74();

            v13 += 16;
            --v12;
          }

          while (v12);
        }
      }

      else
      {
        sub_21CD84284();
      }

      if (v10 >> 60 == 15)
      {
        sub_21CD84284();
        v15 = v18;
        v14 = v19;
      }

      else
      {
        sub_21CD84284();
        v15 = v18;
        sub_21CD83704();
        v14 = v19;
      }

      sub_21CD84284();
      if (v11 >> 60 != 15)
      {
        sub_21CD83704();
      }

      sub_21CC95F8C(v15, v10);
      result = sub_21CC95F8C(v14, v11);
      ++v5;
    }

    while (v5 != v17);
  }

  return result;
}

uint64_t sub_21CCCFE38(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CD837F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v29 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DigitalPresentmentDocumentType(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IdentityDocumentDescriptor(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 16);
  result = MEMORY[0x21CF17CC0](v14);
  if (v14)
  {
    v16 = *(v10 + 20);
    v17 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v18 = *(v11 + 72);
    v19 = v5;
    v20 = (v5 + 48);
    v26 = (v19 + 8);
    v27 = (v19 + 32);
    v28 = v18;
    do
    {
      sub_21CCD17B8(v17, v13, type metadata accessor for IdentityDocumentDescriptor);
      sub_21CCD17B8(v13, v9, type metadata accessor for DigitalPresentmentDocumentType);
      v24 = (*v20)(v9, 2, v4);
      if (v24)
      {
        if (v24 == 1)
        {
          v25 = 0;
        }

        else
        {
          v25 = 2;
        }

        MEMORY[0x21CF17CC0](v25);
      }

      else
      {
        v21 = v16;
        v22 = v29;
        (*v27)(v29, v9, v4);
        MEMORY[0x21CF17CC0](1);
        sub_21CCD1820(&qword_27CE19380, MEMORY[0x277CC9698], MEMORY[0x277CC96A8]);
        sub_21CD83A64();
        v23 = v22;
        v16 = v21;
        v18 = v28;
        (*v26)(v23, v4);
      }

      sub_21CCD4DD4(a1, *&v13[v16]);
      result = sub_21CCD1868(v13, type metadata accessor for IdentityDocumentDescriptor);
      v17 += v18;
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t sub_21CCD0154(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE19280, &qword_21CD88F30);
    sub_21CCD1820(a2, type metadata accessor for IdentityDocumentDescriptor, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21CCD01F0()
{
  result = qword_27CE192B8;
  if (!qword_27CE192B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE192B8);
  }

  return result;
}

unint64_t sub_21CCD0248()
{
  result = qword_27CE192C0;
  if (!qword_27CE192C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE192C0);
  }

  return result;
}

unint64_t sub_21CCD02A0()
{
  result = qword_27CE192C8;
  if (!qword_27CE192C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE192C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MobileDocumentReaderSupportChecker(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for MobileDocumentReaderSupportChecker(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IdentityDocumentCompoundDescriptor.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for IdentityDocumentCompoundDescriptor.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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