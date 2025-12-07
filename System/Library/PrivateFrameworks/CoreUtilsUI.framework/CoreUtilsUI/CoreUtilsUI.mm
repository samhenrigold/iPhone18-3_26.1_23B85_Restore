uint64_t sub_247C095D0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_247C0960C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_247C09644()
{
  MEMORY[0x24C1B6620](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_247C09680()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_247C096C0()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_247C09700()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_247C09748()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE622A0, &unk_247C13540);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 73) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_247C09820()
{
  v0 = sub_247C12BF0();
  __swift_allocate_value_buffer(v0, qword_280C3BAA8);
  __swift_project_value_buffer(v0, qword_280C3BAA8);
  return sub_247C12BE0();
}

void sub_247C0997C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_247C09AA8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_247C09B84()
{
  v1 = v0;
  v2 = OBJC_IVAR___CUFindMyLocateMeDeviceMonitor__monitorTask;
  if (*(v0 + OBJC_IVAR___CUFindMyLocateMeDeviceMonitor__monitorTask))
  {
    v3 = qword_280C3BAA0;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = sub_247C12BF0();
    __swift_project_value_buffer(v4, qword_280C3BAA8);
    v5 = sub_247C12BD0();
    v6 = sub_247C12D60();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_247C08000, v5, v6, "Session stop", v7, 2u);
      MEMORY[0x24C1B65B0](v7, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62218, &qword_247C13468);
    sub_247C12D30();

    *(v1 + v2) = 0;
  }

  v8 = OBJC_IVAR___CUFindMyLocateMeDeviceMonitor__systemMonitor;
  v9 = *(v1 + OBJC_IVAR___CUFindMyLocateMeDeviceMonitor__systemMonitor);
  if (v9)
  {
    [v9 invalidate];
    v9 = *(v1 + v8);
  }

  *(v1 + v8) = 0;
}

uint64_t sub_247C09DB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62220, &qword_247C13470);
  result = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10 - v4;
  v6 = OBJC_IVAR___CUFindMyLocateMeDeviceMonitor__monitorTask;
  if (!*(a1 + OBJC_IVAR___CUFindMyLocateMeDeviceMonitor__monitorTask))
  {
    v7 = sub_247C12D00();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v8;
    *(a1 + v6) = sub_247C0D994(0, 0, v5, &unk_247C13480, v9);
  }

  return result;
}

uint64_t sub_247C09F00()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62220, &qword_247C13470);
  result = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = OBJC_IVAR___CUFindMyLocateMeDeviceMonitor__monitorTask;
  if (!*(v0 + OBJC_IVAR___CUFindMyLocateMeDeviceMonitor__monitorTask))
  {
    v6 = sub_247C12D00();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v7;
    *(v0 + v5) = sub_247C0D994(0, 0, v4, &unk_247C134C8, v8);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_247C0A09C()
{
  result = qword_280C3BA90;
  if (!qword_280C3BA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE621F0, &qword_247C13460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3BA90);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_247C0A1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  v5 = sub_247C12E00();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v6 = sub_247C12E10();
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_247C0A2E0, 0, 0);
}

uint64_t sub_247C0A2E0()
{
  if (sub_247C12D40())
  {
    if (qword_280C3BAA0 != -1)
    {
      swift_once();
    }

    v1 = sub_247C12BF0();
    __swift_project_value_buffer(v1, qword_280C3BAA8);
    v2 = sub_247C12BD0();
    v3 = sub_247C12D60();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_247C08000, v2, v3, "Session exit", v4, 2u);
      MEMORY[0x24C1B65B0](v4, -1, -1);
    }

    v5 = v0[1];

    return v5();
  }

  else
  {
    if (qword_280C3BAA0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v7 = sub_247C12BF0();
    v0[21] = __swift_project_value_buffer(v7, qword_280C3BAA8);
    v8 = sub_247C12BD0();
    v9 = sub_247C12D60();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_247C08000, v8, v9, "Session start", v10, 2u);
      MEMORY[0x24C1B65B0](v10, -1, -1);
    }

    sub_247C12AD0();
    swift_task_alloc();
    v11 = *(sub_247C12AC0() - 8);
    swift_task_alloc();
    (*(v11 + 104))();
    sub_247C12AE0();

    sub_247C12B80();
    swift_allocObject();
    v12 = sub_247C12B90();
    v0[22] = v12;

    Strong = swift_unknownObjectWeakLoadStrong();
    v0[23] = Strong;
    if (Strong)
    {
      v14 = swift_task_alloc();
      v0[24] = v14;
      *v14 = v0;
      v14[1] = sub_247C0A750;

      return sub_247C0BE00(v12);
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62228, &qword_247C13490);
      v0[25] = v15;
      v0[26] = *(v15 - 8);
      v16 = swift_task_alloc();
      v0[27] = v16;
      v17 = swift_task_alloc();
      v0[28] = v17;
      *v17 = v0;
      v17[1] = sub_247C0A920;

      return MEMORY[0x28215FB80](v16);
    }
  }
}

uint64_t sub_247C0A750()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *v0;

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62228, &qword_247C13490);
  v1[25] = v4;
  v1[26] = *(v4 - 8);
  v5 = swift_task_alloc();
  v1[27] = v5;
  v6 = swift_task_alloc();
  v1[28] = v6;
  *v6 = v3;
  v6[1] = sub_247C0A920;

  return MEMORY[0x28215FB80](v5);
}

uint64_t sub_247C0A920()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_247C0B514;
  }

  else
  {
    v2 = sub_247C0AA34;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_247C0AA34()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62248, &qword_247C134A0);
  v0[30] = v1;
  v0[31] = *(v1 - 8);
  v0[32] = swift_task_alloc();
  sub_247C12D10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62250, &qword_247C134A8);
  v0[33] = swift_task_alloc();
  swift_beginAccess();
  v2 = swift_task_alloc();
  v0[34] = v2;
  *v2 = v0;
  v2[1] = sub_247C0ABAC;
  v3 = v0[33];
  v4 = v0[30];

  return MEMORY[0x2822003E8](v3, 0, 0, v4);
}

uint64_t sub_247C0ABAC()
{

  return MEMORY[0x2822009F8](sub_247C0ACA8, 0, 0);
}

uint64_t sub_247C0ACA8()
{
  v1 = v0[33];
  v2 = sub_247C12B00();
  v0[35] = v2;
  v3 = *(v2 - 8);
  v4 = v3;
  v0[36] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v6 = v0[31];
    v5 = v0[32];
    v7 = v0[30];
    v9 = v0[26];
    v8 = v0[27];
    v10 = v0[25];

    (*(v6 + 8))(v5, v7);
    (*(v9 + 8))(v8, v10);

    if (sub_247C12D40())
    {
      if (qword_280C3BAA0 != -1)
      {
        swift_once();
      }

      v11 = sub_247C12BF0();
      __swift_project_value_buffer(v11, qword_280C3BAA8);
      v12 = sub_247C12BD0();
      v13 = sub_247C12D60();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_247C08000, v12, v13, "Session exit", v14, 2u);
        MEMORY[0x24C1B65B0](v14, -1, -1);
      }

      v15 = v0[1];

      return v15();
    }

    else
    {
      v21 = sub_247C12BF0();
      v0[21] = __swift_project_value_buffer(v21, qword_280C3BAA8);
      v22 = sub_247C12BD0();
      v23 = sub_247C12D60();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_247C08000, v22, v23, "Session start", v24, 2u);
        MEMORY[0x24C1B65B0](v24, -1, -1);
      }

      sub_247C12AD0();
      swift_task_alloc();
      v25 = *(sub_247C12AC0() - 8);
      swift_task_alloc();
      (*(v25 + 104))();
      sub_247C12AE0();

      sub_247C12B80();
      swift_allocObject();
      v26 = sub_247C12B90();
      v0[22] = v26;

      Strong = swift_unknownObjectWeakLoadStrong();
      v0[23] = Strong;
      if (Strong)
      {
        v28 = swift_task_alloc();
        v0[24] = v28;
        *v28 = v0;
        v28[1] = sub_247C0A750;

        return sub_247C0BE00(v26);
      }

      else
      {
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62228, &qword_247C13490);
        v0[25] = v32;
        v0[26] = *(v32 - 8);
        v33 = swift_task_alloc();
        v0[27] = v33;
        v34 = swift_task_alloc();
        v0[28] = v34;
        *v34 = v0;
        v34[1] = sub_247C0A920;

        return MEMORY[0x28215FB80](v33);
      }
    }
  }

  else
  {
    v17 = swift_task_alloc();
    v0[37] = v17;
    (*(v4 + 32))();
    v18 = swift_unknownObjectWeakLoadStrong();
    v0[38] = v18;
    if (v18)
    {
      v19 = swift_task_alloc();
      v0[39] = v19;
      *v19 = v0;
      v19[1] = sub_247C0B338;
      v20 = v0[22];

      return sub_247C0D0A8(v17, v20);
    }

    else
    {
      (*(v0[36] + 8))(v0[37], v0[35]);

      v29 = swift_task_alloc();
      v0[34] = v29;
      *v29 = v0;
      v29[1] = sub_247C0ABAC;
      v30 = v0[33];
      v31 = v0[30];

      return MEMORY[0x2822003E8](v30, 0, 0, v31);
    }
  }
}

uint64_t sub_247C0B338()
{
  v1 = *(*v0 + 304);

  return MEMORY[0x2822009F8](sub_247C0B44C, 0, 0);
}

uint64_t sub_247C0B44C()
{
  (*(v0[36] + 8))(v0[37], v0[35]);

  v1 = swift_task_alloc();
  v0[34] = v1;
  *v1 = v0;
  v1[1] = sub_247C0ABAC;
  v2 = v0[33];
  v3 = v0[30];

  return MEMORY[0x2822003E8](v2, 0, 0, v3);
}

uint64_t sub_247C0B514()
{
  v1 = *(v0 + 232);

  v2 = v1;
  v3 = sub_247C12BD0();
  v4 = sub_247C12D50();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 232);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_247C08000, v3, v4, "### Session failed: error=%@", v6, 0xCu);
    sub_247C0F490(v7, &qword_27EE62240, &qword_247C13498);
    MEMORY[0x24C1B65B0](v7, -1, -1);
    MEMORY[0x24C1B65B0](v6, -1, -1);
  }

  v11 = *(v0 + 120);
  v10 = *(v0 + 128);
  v12 = *(v0 + 112);

  sub_247C12E60();
  *(v0 + 88) = xmmword_247C13450;
  *(v0 + 72) = 0;
  *(v0 + 64) = 0;
  *(v0 + 80) = 1;
  v13 = sub_247C0EDC8(&qword_27EE62230, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_247C12E40();
  sub_247C0EDC8(&qword_27EE62238, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_247C12E20();
  v14 = *(v11 + 8);
  *(v0 + 320) = v14;
  *(v0 + 328) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v10, v12);
  v15 = swift_task_alloc();
  *(v0 + 336) = v15;
  *v15 = v0;
  v15[1] = sub_247C0B7C4;
  v17 = *(v0 + 136);
  v16 = *(v0 + 144);

  return MEMORY[0x2822008C8](v17, v0 + 64, v16, v13);
}

uint64_t sub_247C0B7C4()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    (*(v2 + 320))(*(v2 + 136), *(v2 + 112));
    v3 = sub_247C0BD58;
  }

  else
  {
    v5 = *(v2 + 152);
    v4 = *(v2 + 160);
    v6 = *(v2 + 144);
    (*(v2 + 320))(*(v2 + 136), *(v2 + 112));
    (*(v5 + 8))(v4, v6);
    v3 = sub_247C0B91C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_247C0B91C()
{
  if (sub_247C12D40())
  {
    if (qword_280C3BAA0 != -1)
    {
      swift_once();
    }

    v1 = sub_247C12BF0();
    __swift_project_value_buffer(v1, qword_280C3BAA8);
    v2 = sub_247C12BD0();
    v3 = sub_247C12D60();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_247C08000, v2, v3, "Session exit", v4, 2u);
      MEMORY[0x24C1B65B0](v4, -1, -1);
    }

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = sub_247C12BF0();
    *(v0 + 168) = __swift_project_value_buffer(v7, qword_280C3BAA8);
    v8 = sub_247C12BD0();
    v9 = sub_247C12D60();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_247C08000, v8, v9, "Session start", v10, 2u);
      MEMORY[0x24C1B65B0](v10, -1, -1);
    }

    sub_247C12AD0();
    swift_task_alloc();
    v11 = *(sub_247C12AC0() - 8);
    swift_task_alloc();
    (*(v11 + 104))();
    sub_247C12AE0();

    sub_247C12B80();
    swift_allocObject();
    v12 = sub_247C12B90();
    *(v0 + 176) = v12;

    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 184) = Strong;
    if (Strong)
    {
      v14 = swift_task_alloc();
      *(v0 + 192) = v14;
      *v14 = v0;
      v14[1] = sub_247C0A750;

      return sub_247C0BE00(v12);
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62228, &qword_247C13490);
      *(v0 + 200) = v15;
      *(v0 + 208) = *(v15 - 8);
      v16 = swift_task_alloc();
      *(v0 + 216) = v16;
      v17 = swift_task_alloc();
      *(v0 + 224) = v17;
      *v17 = v0;
      v17[1] = sub_247C0A920;

      return MEMORY[0x28215FB80](v16);
    }
  }
}

uint64_t sub_247C0BD58()
{
  v1 = v0[29];
  (*(v0[19] + 8))(v0[20], v0[18]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_247C0BE00(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = sub_247C12C00();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v4 = sub_247C12C20();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  v5 = sub_247C12B50();
  v2[18] = v5;
  v6 = *(v5 - 8);
  v2[19] = v6;
  v2[20] = *(v6 + 64);
  v7 = swift_task_alloc();
  v2[21] = v7;
  v8 = swift_task_alloc();
  v2[22] = v8;
  *v8 = v2;
  v8[1] = sub_247C0BFC8;

  return MEMORY[0x28215FB38](v7, 1);
}

uint64_t sub_247C0BFC8()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_247C0C3BC;
  }

  else
  {
    v2 = sub_247C0C0DC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_247C0C0DC()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62258, &qword_247C134B8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v1, v2);
  (*(v3 + 56))(v4, 0, 1, v2);
  sub_247C0DF68(v4);
  sub_247C0F490(v4, &qword_27EE62258, &qword_247C134B8);
  (*(v3 + 8))(v1, v2);

  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[14];
  v8 = v0[12];
  v9 = v0[13];
  v10 = v0[11];
  v16 = v0[15];
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = 1;
  v0[6] = sub_247C0F61C;
  v0[7] = v11;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_247C0FC20;
  v0[5] = &block_descriptor_42;
  v12 = _Block_copy(v0 + 2);
  v13 = v10;
  sub_247C12C10();
  v0[9] = MEMORY[0x277D84F90];
  sub_247C0EDC8(&qword_280C3BA98, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE621F0, &qword_247C13460);
  sub_247C0A09C();
  sub_247C12DB0();
  MEMORY[0x24C1B6090](0, v5, v7, v12);
  _Block_release(v12);
  (*(v9 + 8))(v7, v8);
  (*(v6 + 8))(v5, v16);

  v14 = v0[1];

  return v14();
}

uint64_t sub_247C0C3BC()
{
  v1 = v0[23];

  v0[8] = v1;
  v2 = sub_247C12AF0();
  v3 = *(v2 - 8);
  v4 = swift_task_alloc();
  v0[24] = v4;
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62218, &qword_247C13468);
  if (swift_dynamicCast())
  {
    v6 = (*(v3 + 88))(v4, v2);
    if (MEMORY[0x277D090A8] && v6 == *MEMORY[0x277D090A8])
    {

      if (qword_280C3BAA0 != -1)
      {
        swift_once();
      }

      v7 = sub_247C12BF0();
      v0[25] = __swift_project_value_buffer(v7, qword_280C3BAA8);
      v8 = sub_247C12BD0();
      v9 = sub_247C12D60();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_247C08000, v8, v9, "Get me device failed: missingMeDevice cached", v10, 2u);
        MEMORY[0x24C1B65B0](v10, -1, -1);
      }

      v11 = swift_task_alloc();
      v0[26] = v11;
      v12 = swift_task_alloc();
      v0[27] = v12;
      *v12 = v0;
      v12[1] = sub_247C0C974;

      return MEMORY[0x28215FB38](v11, 0);
    }

    (*(v3 + 8))(v4, v2);
  }

  if (qword_280C3BAA0 != -1)
  {
    swift_once();
  }

  v13 = v0[23];
  v14 = sub_247C12BF0();
  __swift_project_value_buffer(v14, qword_280C3BAA8);
  v15 = v13;
  v16 = sub_247C12BD0();
  v17 = sub_247C12D50();

  v18 = os_log_type_enabled(v16, v17);
  v19 = v0[23];
  if (v18)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    v22 = v19;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 4) = v23;
    *v21 = v23;
    _os_log_impl(&dword_247C08000, v16, v17, "### Get me device failed: cached, error=%@", v20, 0xCu);
    sub_247C0F490(v21, &qword_27EE62240, &qword_247C13498);
    MEMORY[0x24C1B65B0](v21, -1, -1);
    MEMORY[0x24C1B65B0](v20, -1, -1);
  }

  else
  {
  }

  v25 = v0[16];
  v24 = v0[17];
  v26 = v0[14];
  v27 = v0[12];
  v28 = v0[13];
  v29 = v0[11];
  v35 = v0[15];
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  *(v30 + 24) = 0;
  v0[6] = sub_247C0F61C;
  v0[7] = v30;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_247C0FC20;
  v0[5] = &block_descriptor_42;
  v31 = _Block_copy(v0 + 2);
  v32 = v29;
  sub_247C12C10();
  v0[9] = MEMORY[0x277D84F90];
  sub_247C0EDC8(&qword_280C3BA98, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE621F0, &qword_247C13460);
  sub_247C0A09C();
  sub_247C12DB0();
  MEMORY[0x24C1B6090](0, v24, v26, v31);
  _Block_release(v31);
  (*(v28 + 8))(v26, v27);
  (*(v25 + 8))(v24, v35);

  v33 = v0[1];

  return v33();
}

uint64_t sub_247C0C974()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_247C0CD80;
  }

  else
  {
    v2 = sub_247C0CA88;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_247C0CA88()
{
  v1 = v0[26];
  v2 = v0[18];
  v3 = v0[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62258, &qword_247C134B8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v1, v2);
  (*(v3 + 56))(v4, 0, 1, v2);
  sub_247C0DF68(v4);
  sub_247C0F490(v4, &qword_27EE62258, &qword_247C134B8);
  (*(v3 + 8))(v1, v2);

  v5 = v0[28] == 0;
  v7 = v0[16];
  v6 = v0[17];
  v8 = v0[14];
  v9 = v0[12];
  v10 = v0[13];
  v11 = v0[11];
  v17 = v0[15];
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v5;
  v0[6] = sub_247C0F61C;
  v0[7] = v12;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_247C0FC20;
  v0[5] = &block_descriptor_42;
  v13 = _Block_copy(v0 + 2);
  v14 = v11;
  sub_247C12C10();
  v0[9] = MEMORY[0x277D84F90];
  sub_247C0EDC8(&qword_280C3BA98, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE621F0, &qword_247C13460);
  sub_247C0A09C();
  sub_247C12DB0();
  MEMORY[0x24C1B6090](0, v6, v8, v13);
  _Block_release(v13);
  (*(v10 + 8))(v8, v9);
  (*(v7 + 8))(v6, v17);

  v15 = v0[1];

  return v15();
}

uint64_t sub_247C0CD80()
{
  v1 = v0[28];

  v2 = v1;
  v3 = sub_247C12BD0();
  v4 = sub_247C12D50();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[28];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_247C08000, v3, v4, "### Get me device failed: uncached, error=%@", v7, 0xCu);
    sub_247C0F490(v8, &qword_27EE62240, &qword_247C13498);
    MEMORY[0x24C1B65B0](v8, -1, -1);
    MEMORY[0x24C1B65B0](v7, -1, -1);
  }

  else
  {
  }

  v11 = v0[28] == 0;
  v13 = v0[16];
  v12 = v0[17];
  v14 = v0[14];
  v15 = v0[12];
  v16 = v0[13];
  v17 = v0[11];
  v23 = v0[15];
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v11;
  v0[6] = sub_247C0F61C;
  v0[7] = v18;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_247C0FC20;
  v0[5] = &block_descriptor_42;
  v19 = _Block_copy(v0 + 2);
  v20 = v17;
  sub_247C12C10();
  v0[9] = MEMORY[0x277D84F90];
  sub_247C0EDC8(&qword_280C3BA98, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE621F0, &qword_247C13460);
  sub_247C0A09C();
  sub_247C12DB0();
  MEMORY[0x24C1B6090](0, v12, v14, v19);
  _Block_release(v19);
  (*(v16 + 8))(v14, v15);
  (*(v13 + 8))(v12, v23);

  v21 = v0[1];

  return v21();
}

uint64_t sub_247C0D0A8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_247C0D0CC, 0, 0);
}

uint64_t sub_247C0D0CC()
{
  v45 = v0;
  v1 = sub_247C12B00();
  v2 = *(v1 - 8);
  v3 = swift_task_alloc();
  v0[5] = v3;
  (*(v2 + 16))();
  v4 = (*(v2 + 88))(v3, v1);
  if (MEMORY[0x277D091A8] && v4 == *MEMORY[0x277D091A8])
  {
    (*(v2 + 96))(v3, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62258, &qword_247C134B8);
    v5 = swift_task_alloc();
    sub_247C0F3B8(v3, v5);
    v6 = sub_247C12B50();
    v7 = *(v6 - 8);
    v8 = swift_task_alloc();
    v9 = swift_task_alloc();
    sub_247C0F428(v5, v9, &qword_27EE62258, &qword_247C134B8);
    if ((*(v7 + 48))(v9, 1, v6) == 1)
    {
      sub_247C0F490(v9, &qword_27EE62258, &qword_247C134B8);

      if (qword_280C3BAA0 != -1)
      {
        swift_once();
      }

      v10 = sub_247C12BF0();
      __swift_project_value_buffer(v10, qword_280C3BAA8);
      v11 = sub_247C12BD0();
      v12 = sub_247C12D60();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_247C08000, v11, v12, "Me device changed: nil", v13, 2u);
        MEMORY[0x24C1B65B0](v13, -1, -1);
      }
    }

    else
    {
      (*(v7 + 32))(v8, v9, v6);

      if (qword_280C3BAA0 != -1)
      {
        swift_once();
      }

      v21 = sub_247C12BF0();
      __swift_project_value_buffer(v21, qword_280C3BAA8);
      v22 = swift_task_alloc();
      v23 = *(v7 + 16);
      v43 = v22;
      v23(v22, v8, v6);
      v24 = swift_task_alloc();
      v23(v24, v8, v6);
      v25 = sub_247C12BD0();
      v26 = sub_247C12D60();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v44 = v42;
        *v27 = 136315394;
        log = v25;
        v28 = sub_247C12B10();
        v40 = v26;
        v30 = v29;
        v31 = *(v7 + 8);
        v39 = v28;
        v31(v43, v6);
        v32 = sub_247C0EE10(v39, v30, &v44);

        *(v27 + 4) = v32;
        *(v27 + 12) = 2080;
        v33 = sub_247C12B30();
        v35 = v34;
        v31(v24, v6);
        v36 = sub_247C0EE10(v33, v35, &v44);

        *(v27 + 14) = v36;
        _os_log_impl(&dword_247C08000, log, v40, "Me device changed: ids=%s, name=%s", v27, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1B65B0](v42, -1, -1);
        MEMORY[0x24C1B65B0](v27, -1, -1);

        v31(v8, v6);
      }

      else
      {

        v37 = *(v7 + 8);
        v37(v24, v6);
        v37(v43, v6);
        v37(v8, v6);
      }
    }

    sub_247C0DF68(v5);
    sub_247C0F490(v5, &qword_27EE62258, &qword_247C134B8);

    goto LABEL_30;
  }

  if (MEMORY[0x277D09170] && v4 == *MEMORY[0x277D09170] || MEMORY[0x277D09190] && v4 == *MEMORY[0x277D09190])
  {
LABEL_30:

    v38 = v0[1];

    return v38();
  }

  if (!MEMORY[0x277D09188] || v4 != *MEMORY[0x277D09188])
  {
    (*(v2 + 8))(v3, v1);
    goto LABEL_30;
  }

  if (qword_280C3BAA0 != -1)
  {
    swift_once();
  }

  v14 = sub_247C12BF0();
  __swift_project_value_buffer(v14, qword_280C3BAA8);
  v15 = sub_247C12BD0();
  v16 = sub_247C12D60();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_247C08000, v15, v16, "Session initialized", v17, 2u);
    MEMORY[0x24C1B65B0](v17, -1, -1);
  }

  v18 = swift_task_alloc();
  v0[6] = v18;
  *v18 = v0;
  v18[1] = sub_247C0D838;
  v19 = v0[3];

  return sub_247C0BE00(v19);
}

uint64_t sub_247C0D838()
{

  return MEMORY[0x2822009F8](sub_247C0D934, 0, 0);
}

uint64_t sub_247C0D934()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247C0D994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62220, &qword_247C13470);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_247C0F428(a3, v22 - v9, &qword_27EE62220, &qword_247C13470);
  v11 = sub_247C12D00();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_247C0F490(v10, &qword_27EE62220, &qword_247C13470);
  }

  else
  {
    sub_247C12CF0();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_247C12CC0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_247C12C50() + 32;

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

      sub_247C0F490(a3, &qword_27EE62220, &qword_247C13470);

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

  sub_247C0F490(a3, &qword_27EE62220, &qword_247C13470);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_247C0DC40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_247C12C00();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_247C12C20();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = *&v3[OBJC_IVAR___CUFindMyLocateMeDeviceMonitor__dispatchQueue];
  v14 = swift_allocObject();
  *(v14 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247C0FC20;
  aBlock[3] = a3;
  v15 = _Block_copy(aBlock);
  v16 = v3;
  sub_247C12C10();
  v18[1] = MEMORY[0x277D84F90];
  sub_247C0EDC8(&qword_280C3BA98, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE621F0, &qword_247C13460);
  sub_247C0A09C();
  sub_247C12DB0();
  MEMORY[0x24C1B6090](0, v13, v9, v15);
  _Block_release(v15);
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
}

uint64_t sub_247C0DF68(uint64_t a1)
{
  v2 = sub_247C12C00();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v64 = &v51[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_247C12C20();
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x28223BE20](v5);
  v61 = &v51[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_247C12B50();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v51[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62258, &qword_247C134B8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v51[-v12];
  sub_247C0F428(a1, &v51[-v12], &qword_27EE62258, &qword_247C134B8);
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    sub_247C0F490(v13, &qword_27EE62258, &qword_247C134B8);
    if (qword_280C3BAA0 != -1)
    {
      swift_once();
    }

    v14 = sub_247C12BF0();
    __swift_project_value_buffer(v14, qword_280C3BAA8);
    v15 = sub_247C12BD0();
    v16 = sub_247C12D60();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_247C08000, v15, v16, "Me device fetched: nil", v17, 2u);
      MEMORY[0x24C1B65B0](v17, -1, -1);
    }

    v18 = 0;
  }

  else
  {
    v58 = v3;
    v59 = v2;
    (*(v8 + 32))(&v51[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v13, v7);
    if (qword_280C3BAA0 != -1)
    {
      swift_once();
    }

    v19 = sub_247C12BF0();
    v20 = __swift_project_value_buffer(v19, qword_280C3BAA8);
    v56 = v51;
    MEMORY[0x28223BE20](v20);
    v21 = &v51[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v22 = *(v8 + 16);
    v23 = v22(v21, v21, v7);
    v54 = v51;
    MEMORY[0x28223BE20](v23);
    v22(v21, v21, v7);
    v24 = sub_247C12BD0();
    v25 = sub_247C12D60();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      aBlock[0] = v53;
      *v26 = 136315394;
      v27 = sub_247C12B10();
      v29 = v28;
      v52 = v25;
      v30 = *(v8 + 8);
      v55 = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v30(v21, v7);
      v31 = sub_247C0EE10(v27, v29, aBlock);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2080;
      v32 = sub_247C12B30();
      v34 = v33;
      v57 = v30;
      v30(v21, v7);
      v35 = sub_247C0EE10(v32, v34, aBlock);

      *(v26 + 14) = v35;
      _os_log_impl(&dword_247C08000, v24, v52, "Me device fetched: ids=%s, name=%s", v26, 0x16u);
      v36 = v53;
      swift_arrayDestroy();
      MEMORY[0x24C1B65B0](v36, -1, -1);
      MEMORY[0x24C1B65B0](v26, -1, -1);
    }

    else
    {

      v37 = *(v8 + 8);
      v55 = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v37(v21, v7);
      v57 = v37;
      v37(v21, v7);
    }

    sub_247C12B40();
    sub_247C12B10();
    v38 = sub_247C12B20();
    sub_247C12B30();
    v39 = objc_allocWithZone(CUFindMyLocateMeDevice);
    v40 = sub_247C12C30();

    v41 = sub_247C12C30();

    v42 = sub_247C12C30();

    v18 = [v39 initWithFindMyIdentifier:v40 idsID:v41 isThisDevice:v38 & 1 name:v42];

    v57(v10, v7);
    v43 = v18;
    v3 = v58;
    v2 = v59;
  }

  v44 = v60;
  v45 = swift_allocObject();
  *(v45 + 16) = v44;
  *(v45 + 24) = v18;
  aBlock[4] = sub_247C0F59C;
  aBlock[5] = v45;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247C0FC20;
  aBlock[3] = &block_descriptor_36;
  v46 = _Block_copy(aBlock);
  v47 = v44;
  v48 = v61;
  sub_247C12C10();
  v65 = MEMORY[0x277D84F90];
  sub_247C0EDC8(&qword_280C3BA98, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE621F0, &qword_247C13460);
  sub_247C0A09C();
  v49 = v64;
  sub_247C12DB0();
  MEMORY[0x24C1B6090](0, v48, v49, v46);
  _Block_release(v46);

  (*(v3 + 8))(v49, v2);
  (*(v62 + 8))(v48, v63);
}

id sub_247C0E788()
{
  result = *(v0 + OBJC_IVAR___CUFindMyLocateMeDeviceMonitor__systemMonitor);
  if (result)
  {
    result = [result firstUnlocked];
    if (result)
    {
      v2 = v0;
      if (qword_280C3BAA0 != -1)
      {
        swift_once();
      }

      v3 = sub_247C12BF0();
      __swift_project_value_buffer(v3, qword_280C3BAA8);
      v4 = sub_247C12BD0();
      v5 = sub_247C12D60();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_247C08000, v4, v5, "First unlocked", v6, 2u);
        MEMORY[0x24C1B65B0](v6, -1, -1);
      }

      v7 = OBJC_IVAR___CUFindMyLocateMeDeviceMonitor__monitorTask;
      if (*(v2 + OBJC_IVAR___CUFindMyLocateMeDeviceMonitor__monitorTask))
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62218, &qword_247C13468);
        sub_247C12D30();
      }

      *(v2 + v7) = 0;

      return sub_247C09F00();
    }
  }

  return result;
}

uint64_t sub_247C0E910(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_247C0E9E8(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_247C12C30();

  return v3;
}

id sub_247C0EB14()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_247C0EC3C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_247C0ED34()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_247C0FC2C;

  return sub_247C0A1B8(v3, v4, v5, v2);
}

uint64_t sub_247C0EDC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_247C0EE10(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_247C0EEDC(v11, 0, 0, 1, a1, a2);
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
    sub_247C0F53C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_247C0EEDC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_247C0EFE8(a5, a6);
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
    result = sub_247C12DF0();
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

void *sub_247C0EFE8(uint64_t a1, unint64_t a2)
{
  v3 = sub_247C0F034(a1, a2);
  sub_247C0F164(&unk_2859D1400);
  return v3;
}

void *sub_247C0F034(uint64_t a1, unint64_t a2)
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

  v6 = sub_247C0F250(v5, 0);
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

  result = sub_247C12DF0();
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
        v10 = sub_247C12C70();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_247C0F250(v10, 0);
        result = sub_247C12DC0();
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

uint64_t sub_247C0F164(uint64_t result)
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

  result = sub_247C0F2C4(result, v11, 1, v3);
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

void *sub_247C0F250(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62260, &qword_247C134C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_247C0F2C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62260, &qword_247C134C0);
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

uint64_t sub_247C0F3B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62258, &qword_247C134B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_247C0F428(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_247C0F490(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_247C0F53C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_247C0F59C()
{
  v1 = *(v0 + 16);
  if (*&v1[OBJC_IVAR___CUFindMyLocateMeDeviceMonitor__monitorTask])
  {
    v2 = *(v0 + 24);
    v3 = [v1 meDeviceUpdatedHandler];
    if (v3)
    {
      v4 = v3;
      (*(v3 + 2))(v3, v2);

      _Block_release(v4);
    }
  }
}

void sub_247C0F61C()
{
  v1 = *(v0 + 16);
  if (*(v0 + 24) == 1)
  {
    v2 = OBJC_IVAR___CUFindMyLocateMeDeviceMonitor__systemMonitor;
    v3 = *(v1 + OBJC_IVAR___CUFindMyLocateMeDeviceMonitor__systemMonitor);
    if (v3)
    {
      v4 = qword_280C3BAA0;
      v5 = v3;
      if (v4 != -1)
      {
        swift_once();
      }

      v6 = sub_247C12BF0();
      __swift_project_value_buffer(v6, qword_280C3BAA8);
      v7 = sub_247C12BD0();
      v8 = sub_247C12D60();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_247C08000, v7, v8, "First unlock monitor stop", v9, 2u);
        MEMORY[0x24C1B65B0](v9, -1, -1);
      }

      [v5 invalidate];
      v10 = *(v1 + v2);
      *(v1 + v2) = 0;
    }
  }

  else
  {
    v11 = OBJC_IVAR___CUFindMyLocateMeDeviceMonitor__firstUnlockStarted;
    if ((*(v1 + OBJC_IVAR___CUFindMyLocateMeDeviceMonitor__firstUnlockStarted) & 1) == 0)
    {
      v12 = OBJC_IVAR___CUFindMyLocateMeDeviceMonitor__systemMonitor;
      if (!*(v1 + OBJC_IVAR___CUFindMyLocateMeDeviceMonitor__systemMonitor))
      {
        if (qword_280C3BAA0 != -1)
        {
          swift_once();
        }

        v13 = sub_247C12BF0();
        __swift_project_value_buffer(v13, qword_280C3BAA8);
        v14 = sub_247C12BD0();
        v15 = sub_247C12D60();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&dword_247C08000, v14, v15, "First unlock monitor start", v16, 2u);
          MEMORY[0x24C1B65B0](v16, -1, -1);
        }

        *(v1 + v11) = 1;
        v17 = [objc_allocWithZone(MEMORY[0x277D02938]) init];
        v18 = *(v1 + v12);
        *(v1 + v12) = v17;
        v19 = v17;

        [v19 setDispatchQueue_];
        v20 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v28 = sub_247C0FC28;
        v29 = v20;
        v24 = MEMORY[0x277D85DD0];
        v25 = 1107296256;
        v26 = sub_247C0FC20;
        v27 = &block_descriptor_48;
        v21 = _Block_copy(&v24);

        [v19 setFirstUnlockHandler_];
        _Block_release(v21);
        v22 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v28 = sub_247C0F9EC;
        v29 = v22;
        v24 = MEMORY[0x277D85DD0];
        v25 = 1107296256;
        v26 = sub_247C0FC20;
        v27 = &block_descriptor_52;
        v23 = _Block_copy(&v24);

        [v19 activateWithCompletion_];
        _Block_release(v23);
      }
    }
  }
}

void sub_247C0F9F0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_247C0E788();
  }
}

uint64_t objectdestroy_21Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_247C0FA80()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_247C0FB14;

  return sub_247C0A1B8(v3, v4, v5, v2);
}

uint64_t sub_247C0FB14()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_247C0FC48()
{
  v0 = sub_247C12BF0();
  __swift_allocate_value_buffer(v0, qword_27EE622C8);
  __swift_project_value_buffer(v0, qword_27EE622C8);
  sub_247C12BA0();
  return sub_247C12BE0();
}

uint64_t static CUQRCodeUtils.generateImage(message:size:scale:symbolName:forceLegacy:dispatchQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, double a7, double a8, double a9)
{
  *(v9 + 80) = a4;
  *(v9 + 88) = a6;
  *(v9 + 176) = a5;
  *(v9 + 72) = a3;
  *(v9 + 56) = a8;
  *(v9 + 64) = a9;
  *(v9 + 48) = a7;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  *(v9 + 96) = sub_247C12D90();
  *(v9 + 104) = swift_task_alloc();
  sub_247C12C20();
  *(v9 + 112) = swift_task_alloc();
  v10 = sub_247C12D70();
  *(v9 + 120) = v10;
  *(v9 + 128) = *(v10 - 8);
  *(v9 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_247C0FDF4, 0, 0);
}

uint64_t sub_247C0FDF4()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    v2 = *(v0 + 88);
  }

  else
  {
    v4 = *(v0 + 128);
    v3 = *(v0 + 136);
    v5 = *(v0 + 120);
    sub_247C102E0();
    (*(v4 + 104))(v3, *MEMORY[0x277D85268], v5);
    sub_247C12C10();
    *(v0 + 16) = MEMORY[0x277D84F90];
    sub_247C12898(&qword_27EE62270, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62278, &qword_247C134E8);
    sub_247C128E0(&qword_27EE62280, &qword_27EE62278, &qword_247C134E8);
    sub_247C12DB0();
    v2 = sub_247C12DA0();
    v1 = 0;
  }

  *(v0 + 144) = v2;
  v6 = *(v0 + 176);
  v8 = *(v0 + 72);
  v7 = *(v0 + 80);
  v9 = *(v0 + 64);
  v17 = *(v0 + 48);
  v11 = *(v0 + 32);
  v10 = *(v0 + 40);
  v12 = swift_task_alloc();
  *(v0 + 152) = v12;
  *(v12 + 16) = v2;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  *(v12 + 40) = v17;
  *(v12 + 56) = v9;
  *(v12 + 64) = v8;
  *(v12 + 72) = v7;
  *(v12 + 80) = v6;
  v13 = v1;
  v14 = swift_task_alloc();
  *(v0 + 160) = v14;
  type metadata accessor for CGImage(0);
  *v14 = v0;
  v14[1] = sub_247C1007C;

  return MEMORY[0x2822008A0](v0 + 24, 0, 0, 0xD000000000000047, 0x8000000247C13A90, sub_247C10704, v12, v15);
}

uint64_t sub_247C1007C()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {

    v3 = sub_247C10254;
  }

  else
  {

    v3 = sub_247C101C4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_247C101C4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_247C10254()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_247C102E0()
{
  result = qword_27EE62268;
  if (!qword_27EE62268)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE62268);
  }

  return result;
}

uint64_t sub_247C1032C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, double a8, double a9, double a10)
{
  v34 = a7;
  v32 = a5;
  v33 = a6;
  v31 = a3;
  v38 = a2;
  v15 = sub_247C12C00();
  v37 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_247C12C20();
  v35 = *(v18 - 8);
  v36 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE622A0, &unk_247C13540);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v31 - v23;
  (*(v22 + 16))(&v31 - v23, a1, v21);
  v25 = (*(v22 + 80) + 73) & ~*(v22 + 80);
  v26 = swift_allocObject();
  v27 = v32;
  *(v26 + 16) = v31;
  *(v26 + 24) = a4;
  *(v26 + 32) = a8;
  *(v26 + 40) = a9;
  *(v26 + 48) = a10;
  v28 = v33;
  *(v26 + 56) = v27;
  *(v26 + 64) = v28;
  *(v26 + 72) = v34;
  (*(v22 + 32))(v26 + v25, v24, v21);
  aBlock[4] = sub_247C127B4;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247C0FC20;
  aBlock[3] = &block_descriptor_15;
  v29 = _Block_copy(aBlock);

  sub_247C12C10();
  v39 = MEMORY[0x277D84F90];
  sub_247C12898(&qword_280C3BA98, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE621F0, &qword_247C13460);
  sub_247C128E0(&qword_280C3BA90, &qword_27EE621F0, &qword_247C13460);
  sub_247C12DB0();
  MEMORY[0x24C1B6090](0, v20, v17, v29);
  _Block_release(v29);
  (*(v37 + 8))(v17, v15);
  (*(v35 + 8))(v20, v36);
}

uint64_t sub_247C1074C(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62290, &qword_247C13530);
  if (swift_dynamicCast())
  {
    sub_247C12738(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_247C12A60();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_0(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_247C0F490(__src, &qword_27EE62298, &qword_247C13538);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_247C12DF0();
  }

  sub_247C10CB8(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_247C1145C(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v34[2] = v39;
  v10 = sub_247C10D80(sub_247C12668, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_247C12A90();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_247C112D8(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_247C12C70();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_247C12CA0();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_247C12DF0();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_247C112D8(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_247C12C80();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_247C12AA0();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_247C12AA0();
    sub_247C12724(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_247C12724(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_247C126D0(*&__src[0], *(&__src[0] + 1));

  sub_247C12614(v32, *(&v32 + 1));
  return v32;
}

void sub_247C10C6C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t *sub_247C10CB8@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_247C113A4(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_247C12A50();
      swift_allocObject();
      v8 = sub_247C12A00();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_247C12A80();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

char *sub_247C10D80(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_247C12614(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_247C12614(v7, v6);
    *v4 = xmmword_247C134D0;
    sub_247C12614(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_247C12A10() && __OFSUB__(v7, sub_247C12A40()))
      {
LABEL_26:
        __break(1u);
      }

      sub_247C12A50();
      swift_allocObject();
      v14 = sub_247C129F0();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_247C11224(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_247C12614(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_247C134D0;
    sub_247C12614(0, 0xC000000000000000);
    sub_247C12A70();
    result = sub_247C11224(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

_BYTE *sub_247C11124@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_247C113A4(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_247C114FC(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_247C11578(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_247C111B8(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_247C11224(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_247C12A10();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_247C12A40();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_247C12A30();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

unint64_t sub_247C112D8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_247C12CB0();
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
    v5 = MEMORY[0x24C1B5FA0](15, a1 >> 16);
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

uint64_t sub_247C11354@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_247C12DE0();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_247C113A4(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_247C1145C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_247C12A50();
      swift_allocObject();
      sub_247C12A20();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_247C12A80();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_247C114FC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_247C12A50();
  swift_allocObject();
  result = sub_247C12A00();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_247C12A80();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_247C11578(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_247C12A50();
  swift_allocObject();
  result = sub_247C12A00();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

char *sub_247C115FC(uint64_t a1, unint64_t a2)
{
  v4 = objc_opt_self();
  v5 = [v4 QRCodeGenerator];

  v6 = sub_247C1074C(a1, a2);
  v8 = v7;
  v9 = sub_247C12AB0();
  sub_247C12614(v6, v8);
  [v5 setMessage_];

  v10 = 0x278EDC000;
  v11 = [v5 outputImage];
  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = v11;
  [v11 extent];
  if (CGRectGetWidth(v22) <= 0.0 || ([v12 extent], CGRectGetHeight(v23) <= 0.0))
  {

LABEL_8:
    v18 = objc_allocWithZone(sub_247C12BB0());
    sub_247C12BC0();
    swift_willThrow();
LABEL_9:

    return v10;
  }

  v13 = [v4 colorInvertFilter];
  [v13 setInputImage_];
  v14 = [v13 outputImage];
  if (!v14)
  {
    v20 = objc_allocWithZone(sub_247C12BB0());
    sub_247C12BC0();
    swift_willThrow();

    v5 = v13;
    goto LABEL_9;
  }

  v15 = v14;
  v16 = [v4 maskToAlphaFilter];
  [v16 setInputImage_];
  v17 = [v16 outputImage];
  if (!v17)
  {
    v10 = "code image failed";
    v21 = objc_allocWithZone(sub_247C12BB0());
    sub_247C12BC0();
    swift_willThrow();

    v5 = v16;
    goto LABEL_9;
  }

  v10 = v17;

  return v10;
}

uint64_t sub_247C11894(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5, double a6, double a7, double a8)
{
  v9 = v8;
  v11 = a4;
  v14 = a6;
  MidX = *&a2;
  if (!a4)
  {
    goto LABEL_12;
  }

  if (a7 < a6)
  {
    a6 = a7;
  }

  v16 = a6 * 0.15;
  v17 = [objc_opt_self() configurationWithPointSize:4 weight:a6 * 0.15];
  v18 = sub_247C12C30();
  v19 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  if (!v19 || (v20 = [objc_opt_self() blackColor], v21 = objc_msgSend(v19, sel_imageWithTintColor_renderingMode_, v20, 1), v20, v19, !v21))
  {
    sub_247C12DD0();

    aBlock.a = -2.31584178e77;
    *&aBlock.b = 0x8000000247C13B30;
    MEMORY[0x24C1B5F70](a3, v11);
    isEscapingClosureAtFileLocation = objc_allocWithZone(sub_247C12BB0());
    v9 = sub_247C12BC0();
    swift_willThrow();

    v29 = 0;
    v22 = 0;
LABEL_11:
    sub_247C09AA8(v29, v22);
    if (v9)
    {
      return isEscapingClosureAtFileLocation;
    }

LABEL_12:
    isEscapingClosureAtFileLocation = 0x1FA9AC000uLL;
    if (a5 != 2 && (a5 & 1) != 0)
    {
      v30 = sub_247C115FC(a1, *&MidX);
      if (v9)
      {
        goto LABEL_42;
      }

      v31 = v30;
      v32 = 0x1FA9AC000uLL;
LABEL_31:
      v59 = v14 * a8;
      v60 = a7 * a8;
      v61 = v31;
      [v61 0x1FA9ACDF0];
      v62 = v59 / CGRectGetWidth(v99);
      [v61 0x1FA9ACDF0];
      v63 = v60 / CGRectGetHeight(v100);
      if (v63 >= v62)
      {
        v63 = v62;
      }

      CGAffineTransformMakeScale(&aBlock, v63, v63);
      v64 = [v61 imageByApplyingTransform_];

      if (v11)
      {
        v65 = v11;
        [v64 0x1FA9ACDF0];
        v67 = v66;
        v69 = v68;
        v71 = v70;
        v73 = v72;
        [v65 0x1FA9ACDF0];
        x = v101.origin.x;
        y = v101.origin.y;
        width = v101.size.width;
        height = v101.size.height;
        MidX = CGRectGetMidX(v101);
        v102.origin.x = x;
        v102.origin.y = y;
        v102.size.width = width;
        v102.size.height = height;
        MidY = CGRectGetMidY(v102);
        v103.origin.x = v67;
        v103.origin.y = v69;
        v103.size.width = v71;
        v103.size.height = v73;
        v79 = CGRectGetMidX(v103);
        v104.origin.x = v67;
        v104.origin.y = v69;
        v104.size.width = v71;
        v104.size.height = v73;
        v80 = CGRectGetMidY(v104);
        CGAffineTransformMakeTranslation(&aBlock, v79 - MidX, v80 - MidY);
        v81 = [v65 imageByApplyingTransform_];
        v82 = [objc_opt_self() sourceOverCompositingFilter];
        v83 = [objc_opt_self() clearColor];
        v84 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithColor_];

        v85 = 0x278EDC000uLL;
        [v82 setBackgroundImage_];

        [v82 setInputImage_];
        v86 = [v82 outputImage];
        if (v86)
        {
        }

        else
        {
          isEscapingClosureAtFileLocation = objc_allocWithZone(sub_247C12BB0());
          v92 = sub_247C12BC0();
          swift_willThrow();

          if (v92)
          {

            return isEscapingClosureAtFileLocation;
          }

          v85 = 0x278EDC000;
        }

        v87 = [objc_opt_self() sourceOutCompositingFilter];
        [v87 *(v85 + 896)];
        [v87 setInputImage_];
        v88 = [v87 outputImage];
        if (!v88)
        {

          isEscapingClosureAtFileLocation = objc_allocWithZone(sub_247C12BB0());
          sub_247C12BC0();
          swift_willThrow();

          return isEscapingClosureAtFileLocation;
        }

        v89 = v88;

        v64 = v89;
        v32 = 0x278EDC000uLL;
      }

      v90 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
      [v64 *(v32 + 864)];
      v91 = [v90 createCGImage:v64 fromRect:?];
      if (v91)
      {
        isEscapingClosureAtFileLocation = v91;

        return isEscapingClosureAtFileLocation;
      }

      isEscapingClosureAtFileLocation = objc_allocWithZone(sub_247C12BB0());
      sub_247C12BC0();
      swift_willThrow();

LABEL_42:
      return isEscapingClosureAtFileLocation;
    }

    if (v11)
    {
      v33 = 0.25;
    }

    else
    {
      v33 = 0.0;
    }

    v34 = [objc_opt_self() roundedQRCodeGeneratorFilter];
    *&v35 = v33;
    [v34 setCenterSpaceSize_];
    v36 = objc_opt_self();
    v37 = [v36 clearColor];
    v38 = [objc_allocWithZone(MEMORY[0x277CBF730]) initWithColor_];

    [v34 setColor0_];
    v39 = [v36 labelColor];
    v40 = [objc_allocWithZone(MEMORY[0x277CBF730]) initWithColor_];

    [v34 setColor1_];
    v41 = sub_247C12C30();

    [v34 setCorrectionLevel_];

    v42 = *&MidX;

    v43 = sub_247C1074C(a1, v42);
    v45 = v44;
    v46 = sub_247C12AB0();
    v32 = 0x1FA9AC000uLL;
    sub_247C12614(v43, v45);
    [v34 setMessage_];

    [v34 setRoundedData_];
    LODWORD(v47) = 24.0;
    [v34 setScale_];
    v48 = [v34 outputImage];
    v31 = v48;
    if (v48)
    {
      [v48 0x1FA9ACDF0];
      if (CGRectGetWidth(v97) > 0.0)
      {
        [v31 0x1FA9ACDF0];
        if (CGRectGetHeight(v98) > 0.0)
        {

          v49 = v9;
          if (!v9)
          {
            goto LABEL_31;
          }

          goto LABEL_26;
        }
      }
    }

    v50 = objc_allocWithZone(sub_247C12BB0());
    v49 = sub_247C12BC0();
    swift_willThrow();

    if (!v49)
    {
      goto LABEL_31;
    }

LABEL_26:
    if (qword_27EE622C0 != -1)
    {
      swift_once();
    }

    v51 = sub_247C12BF0();
    __swift_project_value_buffer(v51, qword_27EE622C8);
    v52 = v49;
    v53 = sub_247C12BD0();
    v54 = sub_247C12D50();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v55 = 138412290;
      v57 = v49;
      v58 = _swift_stdlib_bridgeErrorToNSError();
      *(v55 + 4) = v58;
      *v56 = v58;
      _os_log_impl(&dword_247C08000, v53, v54, "### create rounded QR code failed, falling back to legacy QR code: error=%@", v55, 0xCu);
      sub_247C0F490(v56, &qword_27EE62240, &qword_247C13498);
      MEMORY[0x24C1B65B0](v56, -1, -1);
      MEMORY[0x24C1B65B0](v55, -1, -1);
    }

    v31 = sub_247C115FC(a1, *&MidX);
    goto LABEL_31;
  }

  v11 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
  v22 = swift_allocObject();
  *(v22 + 16) = v14;
  *(v22 + 24) = a7;
  *(v22 + 32) = v16;
  *(v22 + 40) = v16;
  *(v22 + 48) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_247C12578;
  *(v23 + 24) = v22;
  *&aBlock.tx = sub_247C125D4;
  *&aBlock.ty = v23;
  *&aBlock.a = MEMORY[0x277D85DD0];
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_247C10C6C;
  *&aBlock.d = &block_descriptor_0;
  v24 = _Block_copy(&aBlock);
  v93 = v21;

  v25 = [v11 imageWithActions_];

  _Block_release(v24);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v28 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithImage_];
    if (v28)
    {
      v11 = v28;

      if (!v8)
      {
        goto LABEL_12;
      }

      return isEscapingClosureAtFileLocation;
    }

    isEscapingClosureAtFileLocation = objc_allocWithZone(sub_247C12BB0());
    v9 = sub_247C12BC0();
    swift_willThrow();

    v29 = sub_247C12578;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for CUQRCodeUtils(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CUQRCodeUtils(_WORD *result, int a2, int a3)
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

id sub_247C12578()
{
  v4.size.width = *(v0 + 32);
  v4.size.height = *(v0 + 40);
  v1 = *(v0 + 48);
  v4.origin.x = (*(v0 + 16) - v4.size.width) * 0.5;
  v4.origin.y = (*(v0 + 24) - v4.size.height) * 0.5;
  v5 = CGRectIntegral(v4);

  return [v1 drawInRect_];
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_247C12614(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void *sub_247C12668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_247C111B8(sub_247C12794, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_247C126D0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_247C12724(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_247C12614(result, a2);
  }

  return result;
}

uint64_t sub_247C12738(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_247C127B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE622A0, &unk_247C13540);
  sub_247C11894(*(v0 + 16), *(v0 + 24), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE622A0, &unk_247C13540);
  return sub_247C12CE0();
}

uint64_t sub_247C12898(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_247C128E0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_247C12940(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_247C12960(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_247C1299C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}