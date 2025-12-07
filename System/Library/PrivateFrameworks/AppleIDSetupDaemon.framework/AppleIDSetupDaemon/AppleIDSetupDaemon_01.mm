uint64_t sub_2407F2BC0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = a2;

  return MEMORY[0x2822009F8](sub_2407F2CC0, 0, 0);
}

uint64_t sub_2407F2CC0()
{
  v1 = v0[28];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[19];
  v2[19] = v0[27];
  v2[20] = v1;
  v2[17] = v4;
  v2[18] = v3;
  return MEMORY[0x2822009F8](sub_2407F2CEC, v2, 0);
}

uint64_t sub_2407F2CEC()
{
  v1 = swift_task_alloc();
  *(v0 + 232) = v1;
  *v1 = v0;
  v1[1] = sub_2407F2D84;

  return sub_2408767B8();
}

uint64_t sub_2407F2D84(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v1;

  if (v1)
  {
    v4 = sub_2407F30A4;
  }

  else
  {
    v4 = sub_2407F2E98;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2407F2E98()
{
  v0[9] = v0[25];
  v1 = v0[30];
  v2 = v0[21];
  v3 = v0[17];

  v4 = v3;

  v5 = v2;

  sub_2408D4AA0();

  v6 = v1;
  v7 = sub_2408D4B10();
  v8 = sub_2408D4F20();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[30];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v10;
    *v12 = v10;
    v13 = v10;
    _os_log_impl(&dword_2407CF000, v7, v8, "Successfully registered aps connection: %@", v11, 0xCu);
    sub_2407DB3B0(v12);
    MEMORY[0x245CC9F60](v12, -1, -1);
    MEMORY[0x245CC9F60](v11, -1, -1);

    v7 = v0[30];
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_2407F30A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2407F3130()
{
  sub_2408D4B90();
  v1[2] = swift_task_alloc();
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();
  v2 = sub_2408D3490();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v3 = swift_task_alloc();
  v4 = *v0;
  v1[7] = v3;
  v1[8] = v4;

  return MEMORY[0x2822009F8](sub_2407F3234, 0, 0);
}

uint64_t sub_2407F3234()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = *MEMORY[0x277CED1F0];
  v5 = *(v2 + 104);
  v0[9] = v5;
  v0[10] = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v5(v1, v4, v3);
  v6 = sub_2408D3480();
  v7 = *(v2 + 8);
  v0[11] = v7;
  v0[12] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v3);
  if (v6)
  {
    if (qword_28130EFB8 != -1)
    {
      swift_once();
    }

    v8 = sub_2408D4B20();
    __swift_project_value_buffer(v8, qword_28130EFC0);
    v9 = sub_2408D4B10();
    v10 = sub_2408D4F10();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2407CF000, v9, v10, "Registering age migration listener", v11, 2u);
      MEMORY[0x245CC9F60](v11, -1, -1);
    }

    v12 = v0[8];

    v13 = sub_2407F3690;
LABEL_17:

    return MEMORY[0x2822009F8](v13, v12, 0);
  }

  if (qword_28130EFB8 != -1)
  {
    swift_once();
  }

  v14 = sub_2408D4B20();
  __swift_project_value_buffer(v14, qword_28130EFC0);
  v15 = sub_2408D4B10();
  v16 = sub_2408D4F20();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2407CF000, v15, v16, "Age migration feature is not enabled", v17, 2u);
    MEMORY[0x245CC9F60](v17, -1, -1);
  }

  v0[14] = 0;
  v18 = v0[11];
  v19 = v0[7];
  v20 = v0[5];
  (v0[9])(v19, *MEMORY[0x277CED228], v20);
  v21 = sub_2408D3480();
  v18(v19, v20);
  if (v21)
  {
    if (qword_28130EFB8 != -1)
    {
      swift_once();
    }

    v0[15] = __swift_project_value_buffer(v14, qword_28130EFC0);
    v22 = sub_2408D4B10();
    v23 = sub_2408D4F10();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2407CF000, v22, v23, "Sandstone is enabled, registering mach setup service", v24, 2u);
      MEMORY[0x245CC9F60](v24, -1, -1);
    }

    v12 = v0[8];

    v13 = sub_2407F3AD8;
    goto LABEL_17;
  }

  if (qword_28130EFB8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v14, qword_28130EFC0);
  v25 = sub_2408D4B10();
  v26 = sub_2408D4F30();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_2407CF000, v25, v26, "Not registering mach setup service, disabled", v27, 2u);
    MEMORY[0x245CC9F60](v27, -1, -1);
  }

  v28 = v0[1];

  return v28();
}

uint64_t sub_2407F3690()
{
  if (qword_28130F098 != -1)
  {
    swift_once();
  }

  v1 = qword_28130F620;
  v2 = *algn_28130F628;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_2407F49BC;
  *(v3 + 24) = 0;

  sub_2408D4B80();
  sub_2408D4BD0();
  swift_allocObject();
  sub_2408D4BC0();
  *(v0 + 104) = 0;

  sub_2408C7498(v4, v1, v2);

  return MEMORY[0x2822009F8](sub_2407F3858, 0, 0);
}

uint64_t sub_2407F3858()
{
  *(v0 + 112) = *(v0 + 104);
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  (*(v0 + 72))(v2, *MEMORY[0x277CED228], v3);
  v4 = sub_2408D3480();
  v1(v2, v3);
  if (v4)
  {
    if (qword_28130EFB8 != -1)
    {
      swift_once();
    }

    v5 = sub_2408D4B20();
    *(v0 + 120) = __swift_project_value_buffer(v5, qword_28130EFC0);
    v6 = sub_2408D4B10();
    v7 = sub_2408D4F10();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2407CF000, v6, v7, "Sandstone is enabled, registering mach setup service", v8, 2u);
      MEMORY[0x245CC9F60](v8, -1, -1);
    }

    v9 = *(v0 + 64);

    return MEMORY[0x2822009F8](sub_2407F3AD8, v9, 0);
  }

  else
  {
    if (qword_28130EFB8 != -1)
    {
      swift_once();
    }

    v10 = sub_2408D4B20();
    __swift_project_value_buffer(v10, qword_28130EFC0);
    v11 = sub_2408D4B10();
    v12 = sub_2408D4F30();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2407CF000, v11, v12, "Not registering mach setup service, disabled", v13, 2u);
      MEMORY[0x245CC9F60](v13, -1, -1);
    }

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_2407F3AD8()
{
  v1 = v0[14];
  v2 = swift_allocObject();
  *(v2 + 16) = sub_2407F4B90;
  *(v2 + 24) = 0;
  sub_2408D4B80();
  v0[16] = sub_2408D4BD0();
  swift_allocObject();
  sub_2408D4BC0();
  v0[17] = v1;
  if (v1)
  {

    v3 = v0[1];

    return v3();
  }

  else
  {

    sub_2408C7498(v5, 0xD000000000000021, 0x80000002408DA590);

    return MEMORY[0x2822009F8](sub_2407F3C74, 0, 0);
  }
}

uint64_t sub_2407F3C74()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  (*(v0 + 72))(v2, *MEMORY[0x277CED1F8], v3);
  v4 = sub_2408D3480();
  v1(v2, v3);
  v5 = sub_2408D4B10();
  if (v4)
  {
    v6 = sub_2408D4F10();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2407CF000, v5, v6, "Sandstone Repair is enabled, registering mach repair service", v7, 2u);
      MEMORY[0x245CC9F60](v7, -1, -1);
    }

    v8 = *(v0 + 64);

    return MEMORY[0x2822009F8](sub_2407F3E64, v8, 0);
  }

  else
  {
    v9 = sub_2408D4F30();
    if (os_log_type_enabled(v5, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2407CF000, v5, v9, "Not registering mach repair service, disabled", v10, 2u);
      MEMORY[0x245CC9F60](v10, -1, -1);
    }

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_2407F3E64()
{
  if (qword_28130F198 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = qword_28130F630;
  v3 = *algn_28130F638;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2407F4D40;
  *(v4 + 24) = 0;

  sub_2408D4B80();
  swift_allocObject();
  sub_2408D4BC0();
  if (!v1)
  {

    sub_2408C7498(v6, v2, v3);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2407F4020()
{
  v1 = sub_2408D4AC0();
  v0[5] = v1;
  v0[6] = *(v1 - 8);
  v0[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407F40DC, 0, 0);
}

uint64_t sub_2407F40DC()
{
  if (qword_28130EFB8 != -1)
  {
    swift_once();
  }

  v1 = sub_2408D4B20();
  *(v0 + 64) = __swift_project_value_buffer(v1, qword_28130EFC0);
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F20();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2407CF000, v2, v3, "Fetching APSEnvironment", v4, 2u);
    MEMORY[0x245CC9F60](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_2407F4264;
  v6 = MEMORY[0x277D837D0];

  return MEMORY[0x2821372C0](v0 + 16, 2000000000000000000, 0, &unk_2408D7358, 0, v6);
}

uint64_t sub_2407F4264()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_2407F43E4;
  }

  else
  {
    v2 = sub_2407F4378;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2407F4378()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_2407F43E4()
{
  v1 = *(v0 + 80);
  *(v0 + 32) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 80);
  if (v3)
  {

    v5 = sub_2408D4B10();
    v6 = sub_2408D4F30();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2407CF000, v5, v6, "Fetching APSEnvironment timed out", v7, 2u);
      MEMORY[0x245CC9F60](v7, -1, -1);
    }

    v9 = *(v0 + 48);
    v8 = *(v0 + 56);
    v10 = *(v0 + 40);

    (*(v9 + 8))(v8, v10);
    v11 = *(v0 + 32);
  }

  else
  {

    v12 = v4;
    v13 = sub_2408D4B10();
    v14 = sub_2408D4F30();

    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 80);
    if (v15)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = v16;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_2407CF000, v13, v14, "Error occurred in fetching APS environment: %@", v17, 0xCu);
      sub_2407DB3B0(v18);
      MEMORY[0x245CC9F60](v18, -1, -1);
      MEMORY[0x245CC9F60](v17, -1, -1);

      goto LABEL_9;
    }

    v11 = v16;
  }

LABEL_9:
  v21 = sub_2408D4D30();
  v23 = v22;

  v24 = *(v0 + 8);

  return v24(v21, v23);
}

id sub_2407F4668()
{
  v25 = v0;
  result = [objc_opt_self() sharedBag];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = [result APSEnvironment];

  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = sub_2408D4D30();
  v6 = v5;
  v7 = [objc_opt_self() isValidEnvironment_];

  if (!v7)
  {

LABEL_10:
    if (qword_28130EFB8 != -1)
    {
      swift_once();
    }

    v13 = sub_2408D4B20();
    __swift_project_value_buffer(v13, qword_28130EFC0);
    v14 = sub_2408D4B10();
    v15 = sub_2408D4F20();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = 136315138;
      v18 = sub_2408D4D30();
      v20 = sub_2408CC504(v18, v19, &v24);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_2407CF000, v14, v15, "Returning default APSEnvironment: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x245CC9F60](v17, -1, -1);
      MEMORY[0x245CC9F60](v16, -1, -1);
    }

    else
    {
    }

    v4 = sub_2408D4D30();
    v6 = v21;
    goto LABEL_16;
  }

  if (qword_28130EFB8 != -1)
  {
    swift_once();
  }

  v8 = sub_2408D4B20();
  __swift_project_value_buffer(v8, qword_28130EFC0);

  v9 = sub_2408D4B10();
  v10 = sub_2408D4F20();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_2408CC504(v4, v6, &v24);
    _os_log_impl(&dword_2407CF000, v9, v10, "Fetched APSEnvironment from AKURLBag: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x245CC9F60](v12, -1, -1);
    MEMORY[0x245CC9F60](v11, -1, -1);
  }

LABEL_16:
  v22 = *(v0 + 16);
  *v22 = v4;
  v22[1] = v6;
  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_2407F49BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_28130EFB8 != -1)
  {
    swift_once();
  }

  v4 = sub_2408D4B20();
  __swift_project_value_buffer(v4, qword_28130EFC0);

  v5 = sub_2408D4B10();
  v6 = sub_2408D4F10();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    sub_2408D4B70();

    v9 = sub_2408D4D40();
    v11 = sub_2408CC504(v9, v10, &v15);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_2407CF000, v5, v6, "Creating new MachAgeMigrationService for XPC session: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x245CC9F60](v8, -1, -1);
    MEMORY[0x245CC9F60](v7, -1, -1);
  }

  v12 = [objc_allocWithZone(MEMORY[0x277CF0130]) init];
  type metadata accessor for MachAgeMigrationService();
  swift_allocObject();

  v13 = sub_2408B4B90(v12, a1);

  *a2 = v13;
  return result;
}

uint64_t sub_2407F4B90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_28130EFB8 != -1)
  {
    swift_once();
  }

  v4 = sub_2408D4B20();
  __swift_project_value_buffer(v4, qword_28130EFC0);

  v5 = sub_2408D4B10();
  v6 = sub_2408D4F10();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15[0] = v8;
    *v7 = 136315138;
    sub_2408D4B70();

    v9 = sub_2408D4D40();
    v11 = sub_2408CC504(v9, v10, v15);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_2407CF000, v5, v6, "Creating new mach setup service for XPC session: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x245CC9F60](v8, -1, -1);
    MEMORY[0x245CC9F60](v7, -1, -1);
  }

  v12 = sub_2408D4150();

  v13 = sub_2408D4140();
  v15[3] = v12;
  v15[4] = MEMORY[0x277CED7C0];
  v15[0] = v13;
  return sub_2408B6100(a1, v15, a2);
}

uint64_t sub_2407F4D40@<X0>(uint64_t *a2@<X8>)
{
  if (qword_28130EFB8 != -1)
  {
    swift_once();
  }

  v3 = sub_2408D4B20();
  __swift_project_value_buffer(v3, qword_28130EFC0);

  v4 = sub_2408D4B10();
  v5 = sub_2408D4F10();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    sub_2408D4B70();

    v8 = sub_2408D4D40();
    v10 = sub_2408CC504(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2407CF000, v4, v5, "Creating new mach repair service for XPC session: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x245CC9F60](v7, -1, -1);
    MEMORY[0x245CC9F60](v6, -1, -1);
  }

  type metadata accessor for MachRepairService();
  swift_allocObject();

  v12 = sub_240873118(v11);

  *a2 = v12;
  return result;
}

void sub_2407F4EEC(void *a1, uint64_t a2)
{
  v3 = sub_2408D4B30();
  if (xpc_dictionary_get_string(a1, v3))
  {
    v4 = sub_2408D4D80();
    v6 = v5;
    if (qword_28130EFB8 != -1)
    {
      swift_once();
    }

    v7 = sub_2408D4B20();
    __swift_project_value_buffer(v7, qword_28130EFC0);

    v8 = sub_2408D4B10();
    v9 = sub_2408D4F20();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v26[0] = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_2408CC504(v4, v6, v26);
      _os_log_impl(&dword_2407CF000, v8, v9, "XPC event stream handler called with event name: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x245CC9F60](v11, -1, -1);
      MEMORY[0x245CC9F60](v10, -1, -1);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;

      v14 = sub_2408D4B10();
      v15 = sub_2408D4F20();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v25 = v17;
        *v16 = 136315138;
        *(v16 + 4) = sub_2408CC504(v4, v6, &v25);
        _os_log_impl(&dword_2407CF000, v14, v15, "Handing off event name to connection manager: %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v17);
        MEMORY[0x245CC9F60](v17, -1, -1);
        MEMORY[0x245CC9F60](v16, -1, -1);
      }

      sub_2408C3370(v4, v6);
    }

    else
    {

      v21 = sub_2408D4B10();
      v22 = sub_2408D4F20();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_2407CF000, v21, v22, "Connection manager has been released.", v23, 2u);
        MEMORY[0x245CC9F60](v23, -1, -1);
      }
    }
  }

  else
  {
    if (qword_28130EFB8 != -1)
    {
      swift_once();
    }

    v18 = sub_2408D4B20();
    __swift_project_value_buffer(v18, qword_28130EFC0);
    oslog = sub_2408D4B10();
    v19 = sub_2408D4F20();
    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2407CF000, oslog, v19, "No event name to handle in this notification. Ignoring.", v20, 2u);
      MEMORY[0x245CC9F60](v20, -1, -1);
    }
  }
}

uint64_t sub_2407F52B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_2407F5314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MachRepairService();
  sub_2407F6C9C(&qword_27E506FA8, type metadata accessor for MachRepairService, &unk_2408D7E14);
  return sub_2408D4BA0();
}

uint64_t sub_2407F53B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MachAgeMigrationService();
  sub_2407F6C9C(&qword_27E506F88, type metadata accessor for MachAgeMigrationService, &unk_2408D8FCC);
  return sub_2408D4BA0();
}

unint64_t sub_2407F5454(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F78, &qword_2408D7320);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F80, &qword_2408D7328);
    v7 = sub_2408D51D0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2407EEE04(v9, v5, &qword_27E506F78, &qword_2408D7320);
      result = sub_2408CCBA8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_2408D38D0();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_2408D3770();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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

unint64_t sub_2407F5674(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F48, &qword_2408D72E8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F50, &qword_2408D72F0);
    v7 = sub_2408D51D0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2407EEE04(v9, v5, &qword_27E506F48, &qword_2408D72E8);
      v11 = *v5;
      result = sub_2408CCC7C(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = sub_2408D38D0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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

unint64_t sub_2407F585C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F68, &unk_2408D7310);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F70, &unk_2408D9C80);
    v7 = sub_2408D51D0();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2407EEE04(v9, v5, &qword_27E506F68, &unk_2408D7310);
      result = sub_2408CCBA8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_2408D38D0();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7] + 16 * v13;
      v17 = v8[8];
      *v16 = *v8;
      *(v16 + 8) = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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

unint64_t sub_2407F5A54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F58, &qword_2408D72F8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F60, &unk_2408D7300);
    v7 = sub_2408D51D0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2407EEE04(v9, v5, &qword_27E506F58, &qword_2408D72F8);
      result = sub_2408CCBA8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_2408D38D0();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5071F0, &qword_2408D7640);
      result = sub_2407F64A8(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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

unint64_t sub_2407F5C68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F28, &qword_2408D72C8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F30, &unk_2408D72D0);
    v7 = sub_2408D51D0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2407EEE04(v9, v5, &qword_27E506F28, &qword_2408D72C8);
      v11 = *v5;
      result = sub_2408CCC7C(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F38, &unk_2408D8150);
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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

unint64_t sub_2407F5E5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F40, &qword_2408D72E0);
    v3 = sub_2408D51D0();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);
      sub_2407D256C(v5, v6);
      result = sub_2408CCC7C(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = v3[7] + 16 * result;
      *v10 = v5;
      *(v10 + 8) = v6;
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

unint64_t sub_2407F5F64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FD0, qword_2408D9B60);
    v3 = sub_2408D51D0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2408CCB30(v5, v6);
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2407F60A0(uint64_t *a1, int a2)
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

uint64_t sub_2407F60E8(uint64_t result, int a2, int a3)
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

unint64_t sub_2407F6144(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F90, &qword_2408D7330);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F98, &qword_2408D7338);
    v7 = sub_2408D51D0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2407EEE04(v9, v5, &qword_27E506F90, &qword_2408D7330);
      result = sub_2408CCD10(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_2408D4260();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FA0, &unk_2408D7340);
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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

unint64_t sub_2407F6370(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F18, &unk_2408D9C90);
    v3 = sub_2408D51D0();
    v4 = a1 + 32;

    while (1)
    {
      sub_2407EEE04(v4, &v11, &qword_27E506F20, &qword_2408D72C0);
      v5 = v11;
      result = sub_2408CCC7C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_2407F6498(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

_OWORD *sub_2407F6498(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2407F64A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5071F0, &qword_2408D7640);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2407F659C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FD8, &qword_2408D7380);
    v3 = sub_2408D51D0();
    v4 = a1 + 32;

    while (1)
    {
      sub_2407EEE04(v4, v13, &unk_27E506FE0, &qword_2408D9630);
      result = sub_2408CCDE4(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_2407F6498(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

void sub_2407F66D8(void *a1)
{
  v2 = sub_2408D3490();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28130EFB8 != -1)
  {
    swift_once();
  }

  v6 = sub_2408D4B20();
  __swift_project_value_buffer(v6, qword_28130EFC0);
  v7 = sub_2408D4B10();
  v8 = sub_2408D4F10();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2407CF000, v7, v8, "Configuring AIDA limitations for this platform (see AIDA logging for details)", v9, 2u);
    MEMORY[0x245CC9F60](v9, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  (*(v3 + 104))(v5, *MEMORY[0x277CED218], v2);
  v10 = sub_2408D4770();
  (*(v3 + 8))(v5, v2);
  v11 = objc_opt_self();
  if (v10)
  {
    sub_240872FB0(&unk_285283178);
    sub_2407F6BCC(&unk_285283198);
    v12 = sub_2408D4ED0();

    [v11 configureProcessSpecificServiceOwnerRejectionlist_];

    type metadata accessor for AIDAServiceType(0);
    sub_2407F6C9C(&qword_28130EF80, type metadata accessor for AIDAServiceType, &unk_2408D65CC);
    v13 = sub_2408D4ED0();
  }

  else
  {
    sub_240872FB0(&unk_2852831A8);
    swift_arrayDestroy();
    v14 = sub_2408D4ED0();

    [v11 configureProcessSpecificServiceOwnerRejectionlist_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FC8, &unk_2408D7370);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2408D71B0;
    v16 = *MEMORY[0x277CED1B0];
    *(inited + 32) = *MEMORY[0x277CED1B0];
    v17 = v16;
    sub_2408709E4(inited);
    swift_setDeallocating();
    sub_2407F6C40(inited + 32);
    type metadata accessor for AIDAServiceType(0);
    sub_2407F6C9C(&qword_28130EF80, type metadata accessor for AIDAServiceType, &unk_2408D65CC);
    v13 = sub_2408D4ED0();
  }

  [v11 configureProcessSpecificSupplementalServiceTypes_];
}

void *sub_2407F6AAC@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v4);
  *a1 = v4;
  return result;
}

unint64_t sub_2407F6B14()
{
  result = qword_27E506FB0;
  if (!qword_27E506FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E506FB0);
  }

  return result;
}

unint64_t sub_2407F6B68()
{
  result = qword_28130EF98;
  if (!qword_28130EF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E506DB0, &unk_2408D6D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28130EF98);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2407F6C40(uint64_t a1)
{
  type metadata accessor for AIDAServiceType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2407F6C9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_2407F6CF4(uint64_t a1)
{
  v2 = sub_2408D5090();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_24080D380(v2, *(a1 + 36), 0, a1);
  v5 = v4;
  return v4;
}

void sub_2407F6D64(uint64_t a1, void (*a2)(uint64_t *, id *), uint64_t a3, uint64_t a4)
{
  v16 = a1;
  v7 = a4 + 56;
  v8 = 1 << *(a4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a4 + 56);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  if (v10)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v15 = *(*(a4 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v10)))));
      v14 = v15;
      a2(&v16, &v15);
      if (v4)
      {
        break;
      }

      v10 &= v10 - 1;

      v12 = v13;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v11)
      {

        return;
      }

      v10 = *(v7 + 8 * v13);
      ++v12;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_2407F6EA0()
{
  v0 = sub_2408D4B20();
  __swift_allocate_value_buffer(v0, qword_27E506FF0);
  __swift_project_value_buffer(v0, qword_27E506FF0);
  return sub_2408D4910();
}

uint64_t sub_2407F6EEC()
{
  sub_24080A730();
  sub_2407D9440(v0 + 16, &unk_27E507270, &qword_2408D76D0);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t sub_2407F6F8C(void *a1)
{
  if (qword_27E506928 != -1)
  {
    swift_once();
  }

  v2 = sub_2408D4B20();
  __swift_project_value_buffer(v2, qword_27E506FF0);
  v3 = a1;
  v4 = sub_2408D4B10();
  v5 = sub_2408D4F10();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v6 = 136315394;
    v9 = sub_2408D53B0();
    v11 = sub_2408CC504(v9, v10, &v15);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2112;
    v12 = a1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v13;
    *v7 = v13;
    _os_log_impl(&dword_2407CF000, v4, v5, "%s handling cancellation with error: %@", v6, 0x16u);
    sub_2407D9440(v7, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x245CC9F60](v8, -1, -1);
    MEMORY[0x245CC9F60](v6, -1, -1);
  }

  return sub_24080A730();
}

uint64_t sub_2407F7188(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_2408D3500();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EF8, &qword_2408D76B0);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407F72A0, 0, 0);
}

uint64_t sub_2407F72A0()
{
  v18 = v0;
  if (qword_27E506928 != -1)
  {
    swift_once();
  }

  v1 = sub_2408D4B20();
  v0[15] = __swift_project_value_buffer(v1, qword_27E506FF0);

  v2 = sub_2408D4B10();
  v3 = sub_2408D4F10();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[6];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    v0[4] = v4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A70, qword_2408D75E0);
    v7 = sub_2408D4D40();
    v9 = sub_2408CC504(v7, v8, &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2407CF000, v2, v3, "LocalSetupService called to setup with model: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x245CC9F60](v6, -1, -1);
    MEMORY[0x245CC9F60](v5, -1, -1);
  }

  v11 = v0[6];
  v10 = v0[7];
  sub_2408D34B0();
  swift_allocObject();
  v0[16] = sub_2408D34C0();
  sub_2408D49C0();
  sub_2408D48E0();
  swift_allocObject();
  v0[17] = sub_2408D48C0();
  sub_2408D48D0();
  sub_24080A424();
  v12 = swift_task_alloc();
  v0[18] = v12;
  *(v12 + 16) = v10;
  *(v12 + 24) = v11;
  v13 = swift_task_alloc();
  v0[19] = v13;
  v14 = sub_2408D3A60();
  v0[20] = v14;
  *v13 = v0;
  v13[1] = sub_2407F7554;
  v15 = v0[14];

  return MEMORY[0x2821400E8](v15, &unk_2408D76C0, v12, v14);
}

uint64_t sub_2407F7554()
{

  return MEMORY[0x2822009F8](sub_2407F766C, 0, 0);
}

uint64_t sub_2407F766C()
{
  sub_2407EEE04(*(v0 + 112), *(v0 + 104), &qword_27E506EF8, &qword_2408D76B0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = *(v0 + 104);
  if (EnumCaseMultiPayload == 1)
  {
  }

  else
  {
    sub_2407D9440(v2, &qword_27E506EF8, &qword_2408D76B0);
  }

  v3 = *(v0 + 112);
  v4 = *(v0 + 96);
  sub_24080A730();
  sub_2408D48B0();
  sub_2408D34A0();
  sub_2407EEE04(v3, v4, &qword_27E506EF8, &qword_2408D76B0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v18 = *(v0 + 160);
    v19 = *(v0 + 96);
    v20 = *(v0 + 40);
    sub_2407D9440(*(v0 + 112), &qword_27E506EF8, &qword_2408D76B0);

    (*(*(v18 - 8) + 32))(v20, v19, v18);

    v21 = *(v0 + 8);
LABEL_17:

    return v21();
  }

  v5 = *(v0 + 112);
  v6 = *(v0 + 96);
  v7 = *v6;
  *(v0 + 168) = *v6;
  *(v0 + 16) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
  swift_willThrowTypedImpl();

  sub_2407D9440(v5, &qword_27E506EF8, &qword_2408D76B0);
  *(v0 + 24) = v7;
  v8 = v7;
  if (swift_dynamicCast())
  {
    v9 = (*(*(v0 + 72) + 88))(*(v0 + 80), *(v0 + 64));
    v10 = *MEMORY[0x277CED270];
    if (v9 == *MEMORY[0x277CED2D8] || v9 == v10)
    {

      v22 = sub_2408D4B10();
      v23 = sub_2408D4F10();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_2407CF000, v22, v23, "LocalSetupService caught overall setup cancellation", v24, 2u);
        MEMORY[0x245CC9F60](v24, -1, -1);
      }

      v25 = *(v0 + 64);
      v26 = *(v0 + 72);

      sub_24080D61C(qword_27E506DC8, 255, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
      swift_allocError();
      (*(v26 + 104))(v27, v10, v25);
      swift_willThrow();
      goto LABEL_16;
    }

    if (v9 == *MEMORY[0x277CED268])
    {
      v11 = v9;

      v12 = sub_2408D4B10();
      v13 = sub_2408D4F10();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_2407CF000, v12, v13, "LocalSetupService caught overall setup skipped", v14, 2u);
        MEMORY[0x245CC9F60](v14, -1, -1);
      }

      v15 = *(v0 + 64);
      v16 = *(v0 + 72);

      sub_24080D61C(qword_27E506DC8, 255, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
      swift_allocError();
      (*(v16 + 104))(v17, v11, v15);
      swift_willThrow();

LABEL_16:

      v21 = *(v0 + 8);
      goto LABEL_17;
    }

    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
  }

  v29 = v7;
  v30 = sub_2408D4B10();
  v31 = sub_2408D4F30();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    v34 = v7;
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 4) = v35;
    *v33 = v35;
    _os_log_impl(&dword_2407CF000, v30, v31, "LocalSetupService caught overall setup failure: %@", v32, 0xCu);
    sub_2407D9440(v33, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v33, -1, -1);
    MEMORY[0x245CC9F60](v32, -1, -1);
  }

  v36 = swift_task_alloc();
  *(v0 + 176) = v36;
  *(v36 + 16) = v7;
  v38 = (*MEMORY[0x277CED860] + MEMORY[0x277CED860]);
  v37 = swift_task_alloc();
  *(v0 + 184) = v37;
  *v37 = v0;
  v37[1] = sub_2407F7D1C;

  return v38();
}

uint64_t sub_2407F7D1C()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_2407F7ED4;
  }

  else
  {

    v2 = sub_2407F7E38;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2407F7E38(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_2407F7ED4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2407F7F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2407D379C;

  return sub_2407F867C(a1, a3);
}

uint64_t sub_2407F8020(uint64_t a1, void *a2)
{
  v3 = sub_2408D35B0();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507268, &qword_2408D8240);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v21 - v7;
  v9 = sub_2408D3500();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E506928 != -1)
  {
    swift_once();
  }

  v13 = sub_2408D4B20();
  __swift_project_value_buffer(v13, qword_27E506FF0);
  v14 = sub_2408D4B10();
  v15 = sub_2408D4F20();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2407CF000, v14, v15, "Engaging with client to present error and wait for continuation", v16, 2u);
    MEMORY[0x245CC9F60](v16, -1, -1);
  }

  v21[5] = a2;
  v17 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
  v18 = swift_dynamicCast();
  v19 = *(v10 + 56);
  if (v18)
  {
    v19(v8, 0, 1, v9);
    (*(v10 + 32))(v12, v8, v9);
    (*(v10 + 16))(v5, v12, v9);
    v19(v5, 0, 6, v9);
    sub_2408D35D0();
    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    v19(v8, 1, 1, v9);
    sub_2407D9440(v8, &qword_27E507268, &qword_2408D8240);
    swift_getErrorValue();
    sub_2408D52A0();
    v19(v5, 0, 6, v9);
    return sub_2408D35D0();
  }
}

uint64_t sub_2407F8388(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_2408D35B0();
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407F8418, 0, 0);
}

uint64_t sub_2407F8418()
{
  v1 = v0[4];
  sub_2408D35C0();
  v2 = sub_2408D3500();
  v3 = (*(*(v2 - 8) + 48))(v1, 6, v2);
  sub_24080F6B4(v1, MEMORY[0x277CED338]);
  if (v3)
  {
    if (qword_27E506928 != -1)
    {
      swift_once();
    }

    v4 = sub_2408D4B20();
    __swift_project_value_buffer(v4, qword_27E506FF0);
    v5 = sub_2408D4B10();
    v6 = sub_2408D4F20();
    v7 = os_log_type_enabled(v5, v6);
    v8 = MEMORY[0x277CEDCB0];
    if (v7)
    {
      v9 = "Client has decided to proceed from the failure, moving on";
LABEL_10:
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2407CF000, v5, v6, v9, v12, 2u);
      MEMORY[0x245CC9F60](v12, -1, -1);
    }
  }

  else
  {
    if (qword_27E506928 != -1)
    {
      swift_once();
    }

    v10 = sub_2408D4B20();
    __swift_project_value_buffer(v10, qword_27E506FF0);
    v5 = sub_2408D4B10();
    v6 = sub_2408D4F20();
    v11 = os_log_type_enabled(v5, v6);
    v8 = MEMORY[0x277CEDCA8];
    if (v11)
    {
      v9 = "Client is remaining in failed state";
      goto LABEL_10;
    }
  }

  v13 = v0[2];

  v14 = *v8;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507260, &qword_2408D6860);
  (*(*(v15 - 8) + 104))(v13, v14, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_2407F867C(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v4 = sub_2408D3500();
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506DA0, &unk_2408D76A0);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v5 = sub_2408D38D0();
  v3[28] = v5;
  v3[29] = *(v5 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = type metadata accessor for SignInReport(0);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v6 = sub_2408D4660();
  v3[35] = v6;
  v3[36] = *(v6 - 8);
  v3[37] = swift_task_alloc();
  v7 = sub_2408D3C20();
  v3[38] = v7;
  v3[39] = *(v7 - 8);
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v8 = sub_2408D3630();
  v3[43] = v8;
  v3[44] = *(v8 - 8);
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407F8960, 0, 0);
}

uint64_t sub_2407F8960()
{
  *(v0[22] + 112) = v0[21];

  if (qword_27E506928 != -1)
  {
    swift_once();
  }

  v1 = sub_2408D4B20();
  v0[47] = __swift_project_value_buffer(v1, qword_27E506FF0);
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F20();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2407CF000, v2, v3, "Configuring authentication mode to require user interaction for local setup", v4, 2u);
    MEMORY[0x245CC9F60](v4, -1, -1);
  }

  v7 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
  v5 = swift_task_alloc();
  v0[48] = v5;
  *v5 = v0;
  v5[1] = sub_2407F8AF4;

  return v7(sub_2407FC7A0, 0);
}

uint64_t sub_2407F8AF4()
{
  v2 = *v1;
  *(v2 + 392) = v0;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2407F8CE4, 0, 0);
  }
}

uint64_t sub_2407F8CE4()
{
  v0[50] = sub_2407F5674(MEMORY[0x277D84F90]);
  v4 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v1 = swift_task_alloc();
  v0[51] = v1;
  *v1 = v0;
  v1[1] = sub_2407F8DA0;
  v2 = v0[46];

  return v4(v2);
}

uint64_t sub_2407F8DA0()
{

  return MEMORY[0x2822009F8](sub_2407F8E9C, 0, 0);
}

uint64_t sub_2407F8E9C(uint64_t a1)
{
  v2 = v1[46];
  v3 = v1[43];
  v4 = v1[44];
  v5 = v1[42];
  v6 = v1[38];
  v7 = v1[39];
  sub_2408D3540();
  v8 = *(v4 + 8);
  v1[52] = v8;
  v1[53] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v2, v3);
  v1[54] = sub_2408D3B20();
  v9 = *(v7 + 8);
  v1[55] = v9;
  v1[56] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v5, v6);
  v13 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v10 = swift_task_alloc();
  v1[57] = v10;
  *v10 = v1;
  v10[1] = sub_2407F8FC8;
  v11 = v1[45];

  return v13(v11);
}

uint64_t sub_2407F8FC8()
{

  return MEMORY[0x2822009F8](sub_2407F90C4, 0, 0);
}

uint64_t sub_2407F90C4(uint64_t a1)
{
  v38 = v1;
  v2 = v1[55];
  v3 = v1[54];
  v4 = v1[52];
  v5 = v1[45];
  v6 = v1[43];
  v7 = v1[41];
  v8 = v1[38];
  sub_2408D3540();
  v4(v5, v6);
  v9 = sub_2408D3AE0();
  v2(v7, v8);
  sub_24082A3C4(v9, v3);
  v1[15] = v10;
  v11 = sub_2408D4B10();
  v12 = sub_2408D4F20();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v37 = v14;
    *v13 = 136315138;
    type metadata accessor for AIDAServiceType(0);
    sub_24080D61C(&qword_28130EF80, 255, type metadata accessor for AIDAServiceType, &unk_2408D65CC);

    v15 = sub_2408D4EF0();
    v17 = v16;

    v18 = sub_2408CC504(v15, v17, &v37);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_2407CF000, v11, v12, "Configuring remaining services: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x245CC9F60](v14, -1, -1);
    MEMORY[0x245CC9F60](v13, -1, -1);
  }

  swift_beginAccess();
  v19 = v1[15];
  if (*(v19 + 16))
  {
    v20 = *MEMORY[0x277CED1A0];
    v22 = v1[49];
    v21 = v1[50];
    v1[63] = 0;
    v1[64] = v21;
    v1[61] = v19;
    v1[62] = v21;
    v1[59] = v22;
    v1[60] = v19 + 16;
    v1[58] = v20;
    v23 = sub_2408D4B10();
    v24 = sub_2408D4F20();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v37 = v26;
      *v25 = 136315138;
      type metadata accessor for AIDAServiceType(0);
      sub_24080D61C(&qword_28130EF80, 255, type metadata accessor for AIDAServiceType, &unk_2408D65CC);

      v27 = sub_2408D4EF0();
      v29 = v28;

      v30 = sub_2408CC504(v27, v29, &v37);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_2407CF000, v23, v24, "Current remaining services: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x245CC9F60](v26, -1, -1);
      MEMORY[0x245CC9F60](v25, -1, -1);
    }

    v36 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
    v31 = swift_task_alloc();
    v1[65] = v31;
    *v31 = v1;
    v32 = sub_2407F950C;
  }

  else
  {
    v33 = v1[50];
    v1[86] = 0;
    v1[88] = 0;
    v1[87] = 0;
    v1[85] = v33;
    v1[84] = v19;
    v36 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
    v31 = swift_task_alloc();
    v1[89] = v31;
    *v31 = v1;
    v32 = sub_2407FB4B8;
  }

  v31[1] = v32;
  v34 = v1[46];

  return v36(v34);
}

uint64_t sub_2407F950C()
{

  return MEMORY[0x2822009F8](sub_2407F9608, 0, 0);
}

uint64_t sub_2407F9608()
{
  v53 = v0;
  v1 = *(v0 + 416);
  v2 = *(v0 + 368);
  v3 = *(v0 + 344);
  v5 = *(v0 + 288);
  v4 = *(v0 + 296);
  v6 = *(v0 + 280);
  sub_2408D3520();
  v1(v2, v3);
  LOBYTE(v2) = sub_2408D45E0();
  v7 = *(v5 + 8);
  *(v0 + 528) = v7;
  *(v0 + 536) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v4, v6);
  if ((v2 & 1) == 0)
  {
    goto LABEL_5;
  }

  v8 = *(v0 + 480);
  v9 = *v8;
  if (!*v8)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_10:
    v18 = *(v0 + 472);
    *(v0 + 152) = v11;

    sub_24080C318((v0 + 152));
    if (v18)
    {
    }

    else
    {

      v35 = *(v0 + 152);
      *(v0 + 544) = v35;

      v36 = sub_2408D4B10();
      v37 = sub_2408D4F20();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v52 = v39;
        *v38 = 136315138;
        type metadata accessor for AIDAServiceType(0);
        v41 = MEMORY[0x245CC9210](v35, v40);
        v43 = sub_2408CC504(v41, v42, &v52);

        *(v38 + 4) = v43;
        _os_log_impl(&dword_2407CF000, v36, v37, "Configuring current services: %s", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v39);
        MEMORY[0x245CC9F60](v39, -1, -1);
        MEMORY[0x245CC9F60](v38, -1, -1);
      }

      v44 = swift_task_alloc();
      *(v0 + 552) = v44;
      *(v44 + 16) = v35;
      v51 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
      v45 = swift_task_alloc();
      *(v0 + 560) = v45;
      *v45 = v0;
      v45[1] = sub_2407F9D64;

      return v51(sub_24080F5F8, v44);
    }
  }

  v10 = *(v0 + 488);
  v11 = sub_240878450(*v8, 0);
  v12 = sub_2408788D0((v0 + 16), v11 + 4, v9, v10);
  v13 = *(v0 + 16);

  sub_2407D17F4(v13);
  if (v12 == v9)
  {
    goto LABEL_10;
  }

  __break(1u);
LABEL_5:
  v14 = *(*(v0 + 176) + 112);
  *(v0 + 576) = v14;
  if (v14)
  {

    v15 = swift_task_alloc();
    *(v0 + 584) = v15;
    *v15 = v0;
    v15[1] = sub_2407FA358;
    v16 = *(v0 + 272);

    return sub_2407FC9C8(v16, v14);
  }

  sub_24080D664();
  v19 = swift_allocError();
  *v20 = xmmword_2408D7390;
  swift_willThrow();
  v21 = *(v0 + 504);
  *(v0 + 728) = *(v0 + 496);
  *(v0 + 720) = v21;
  *(v0 + 128) = v19;
  v22 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
  if (swift_dynamicCast())
  {
    v23 = (*(*(v0 + 192) + 88))(*(v0 + 200), *(v0 + 184));
    *(v0 + 744) = v23;
    if (v23 == *MEMORY[0x277CED268])
    {
      v24 = v23;

      v25 = sub_2408D4B10();
      v26 = sub_2408D4F20();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = *(v0 + 184);
        v28 = *(v0 + 192);
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v29 = 138412290;
        sub_24080D61C(qword_27E506DC8, 255, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
        swift_allocError();
        (*(v28 + 104))(v31, v24, v27);
        v32 = _swift_stdlib_bridgeErrorToNSError();
        *(v29 + 4) = v32;
        *v30 = v32;
        _os_log_impl(&dword_2407CF000, v25, v26, "Local setup cancellation with setup error :%@", v29, 0xCu);
        sub_2407D9440(v30, &qword_27E506AB0, &unk_2408D6830);
        MEMORY[0x245CC9F60](v30, -1, -1);
        MEMORY[0x245CC9F60](v29, -1, -1);
      }

      v50 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
      v33 = swift_task_alloc();
      *(v0 + 736) = v33;
      *v33 = v0;
      v33[1] = sub_2407FBA6C;
      v34 = *(v0 + 368);

      return v50(v34);
    }

    v47 = *(v0 + 192);
    v46 = *(v0 + 200);
    v48 = *(v0 + 184);

    (*(v47 + 8))(v46, v48);
  }

  else
  {
  }

  swift_willThrow();

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_2407F9D64()
{
  *(*v1 + 568) = v0;

  if (v0)
  {

    v2 = sub_2407FB94C;
  }

  else
  {

    v2 = sub_2407F9ED8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2407F9ED8(uint64_t a1)
{
  v2 = *(*(v1 + 176) + 112);
  *(v1 + 576) = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    *(v1 + 584) = v3;
    *v3 = v1;
    v3[1] = sub_2407FA358;
    v4 = *(v1 + 272);

    return sub_2407FC9C8(v4, v2);
  }

  sub_24080D664();
  v6 = swift_allocError();
  *v7 = xmmword_2408D7390;
  swift_willThrow();
  v8 = *(v1 + 504);
  *(v1 + 728) = *(v1 + 496);
  *(v1 + 720) = v8;
  *(v1 + 128) = v6;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
  if (swift_dynamicCast())
  {
    v10 = (*(*(v1 + 192) + 88))(*(v1 + 200), *(v1 + 184));
    *(v1 + 744) = v10;
    if (v10 == *MEMORY[0x277CED268])
    {
      v11 = v10;

      v12 = sub_2408D4B10();
      v13 = sub_2408D4F20();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = *(v1 + 184);
        v15 = *(v1 + 192);
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        sub_24080D61C(qword_27E506DC8, 255, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
        swift_allocError();
        (*(v15 + 104))(v18, v11, v14);
        v19 = _swift_stdlib_bridgeErrorToNSError();
        *(v16 + 4) = v19;
        *v17 = v19;
        _os_log_impl(&dword_2407CF000, v12, v13, "Local setup cancellation with setup error :%@", v16, 0xCu);
        sub_2407D9440(v17, &qword_27E506AB0, &unk_2408D6830);
        MEMORY[0x245CC9F60](v17, -1, -1);
        MEMORY[0x245CC9F60](v16, -1, -1);
      }

      v26 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
      v20 = swift_task_alloc();
      *(v1 + 736) = v20;
      *v20 = v1;
      v20[1] = sub_2407FBA6C;
      v21 = *(v1 + 368);

      return v26(v21);
    }

    v23 = *(v1 + 192);
    v22 = *(v1 + 200);
    v24 = *(v1 + 184);

    (*(v23 + 8))(v22, v24);
  }

  else
  {
  }

  swift_willThrow();

  v25 = *(v1 + 8);

  return v25();
}

uint64_t sub_2407FA358(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 592) = a1;
  *(v3 + 600) = v1;

  if (v1)
  {
    v4 = sub_2407FC004;
  }

  else
  {

    v4 = sub_2407FA478;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_2407FA478()
{
  v63 = v0;
  v1 = v0[75];
  v58 = v0[74];
  v2 = sub_24086ED9C(*(v0[34] + *(v0[32] + 20)));
  v0[76] = v1;
  sub_240845108(v2);
  v4 = 0;
  v5 = v3 + 56;
  v59 = v3;
  v6 = -1;
  v7 = -1 << *(v3 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v3 + 56);
  v9 = (63 - v7) >> 6;
  v10 = v0[63];
  v11 = v0[64];
  v12 = v0[62];
LABEL_4:
  v0[77] = v10;
  while (1)
  {
    v0[79] = v12;
    v0[78] = v11;
    if (!v8)
    {
      while (1)
      {
        v13 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
          goto LABEL_38;
        }

        if (v13 >= v9)
        {
          break;
        }

        v8 = *(v5 + 8 * v13);
        ++v4;
        if (v8)
        {
          v4 = v13;
          goto LABEL_10;
        }
      }

      v38 = v0[33];
      v37 = v0[34];

      sub_24080F58C(v37, v38);
      v39 = sub_2408D4B10();
      v40 = sub_2408D4F20();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = v0[33];
        v42 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v62[0] = v60;
        *v42 = 136315394;

        sub_240845108(v43);
        type metadata accessor for AIDAServiceType(0);
        sub_24080D61C(&qword_28130EF80, 255, type metadata accessor for AIDAServiceType, &unk_2408D65CC);
        v44 = sub_2408D4EF0();
        v46 = v45;

        sub_24080F6B4(v41, type metadata accessor for SignInReport);
        v47 = sub_2408CC504(v44, v46, v62);

        *(v42 + 4) = v47;
        *(v42 + 12) = 2080;

        v48 = sub_2408D4EF0();
        v50 = v49;

        v51 = sub_2408CC504(v48, v50, v62);

        *(v42 + 14) = v51;
        _os_log_impl(&dword_2407CF000, v39, v40, "Subtracting all attempted services: %s from those remaining: %s", v42, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245CC9F60](v60, -1, -1);
        MEMORY[0x245CC9F60](v42, -1, -1);
      }

      else
      {
        v52 = v0[33];

        sub_24080F6B4(v52, type metadata accessor for SignInReport);
      }

      sub_240845108(v53);
      v55 = v54;
      swift_beginAccess();
      sub_24086C57C(v55);
      swift_endAccess();

      v61 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
      v56 = swift_task_alloc();
      v0[80] = v56;
      *v56 = v0;
      v56[1] = sub_2407FAA60;
      v57 = v0[46];

      v61(v57);
      return;
    }

LABEL_10:
    v14 = *(*(v59 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v8)))));
    (*(v0[29] + 16))(v0[31], v0[34], v0[28]);
    v15 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v0[18] = v11;
    v17 = sub_2408CCC7C(v15);
    v19 = v11[2];
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      break;
    }

    v23 = v18;
    if (v11[3] >= v22)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = v17;
        sub_2408C5870();
        v17 = v36;
      }
    }

    else
    {
      sub_2408C81A4(v22, isUniquelyReferenced_nonNull_native);
      v17 = sub_2408CCC7C(v15);
      if ((v23 & 1) != (v24 & 1))
      {
        type metadata accessor for AIDAServiceType(0);

        sub_2408D5280();
        return;
      }
    }

    v11 = v0[18];
    v25 = v0[31];
    v26 = v0[28];
    v27 = v0[29];
    if (v23)
    {
      (*(v27 + 40))(v11[7] + *(v27 + 72) * v17, v25, v26);
    }

    else
    {
      v11[(v17 >> 6) + 8] |= 1 << v17;
      *(v11[6] + 8 * v17) = v15;
      (*(v27 + 32))(v11[7] + *(v27 + 72) * v17, v25, v26);
      v28 = v11[2];
      v21 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v21)
      {
        goto LABEL_39;
      }

      v11[2] = v29;
    }

    v8 &= v8 - 1;
    v30 = sub_2408D4D30();
    v32 = v31;
    if (v30 == sub_2408D4D30() && v32 == v33)
    {

LABEL_27:

      v10 = v58;
      v12 = v11;
      goto LABEL_4;
    }

    v35 = sub_2408D5240();

    v12 = v11;
    if (v35)
    {
      goto LABEL_27;
    }
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

uint64_t sub_2407FAA60()
{

  return MEMORY[0x2822009F8](sub_2407FAB5C, 0, 0);
}

uint64_t sub_2407FAB5C()
{
  v42 = v0;
  v1 = v0[66];
  v2 = v0[52];
  v3 = v0[46];
  v4 = v0[43];
  v5 = v0[37];
  v6 = v0[35];
  sub_2408D3520();
  v2(v3, v4);
  LOBYTE(v3) = sub_2408D45E0();
  v1(v5, v6);
  if ((v3 & 1) != 0 && *(v0[15] + 16) == 1)
  {
    v7 = swift_task_alloc();
    v0[81] = v7;
    *(v7 + 16) = v0 + 15;
    v39 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
    v8 = swift_task_alloc();
    v0[82] = v8;
    *v8 = v0;
    v8[1] = sub_2407FB000;

    return v39(sub_24080F5F0, v7);
  }

  sub_24080F6B4(v0[34], type metadata accessor for SignInReport);

  v10 = v0[15];
  if (*(v10 + 16))
  {
    v11 = v0[76];
    v12 = v0[79];
    v13 = v0[78];
    v0[63] = v0[77];
    v0[64] = v13;
    v0[61] = v10;
    v0[62] = v12;
    v0[59] = v11;
    v0[60] = v10 + 16;
    v14 = sub_2408D4B10();
    v15 = sub_2408D4F20();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v41 = v17;
      *v16 = 136315138;
      type metadata accessor for AIDAServiceType(0);
      sub_24080D61C(&qword_28130EF80, 255, type metadata accessor for AIDAServiceType, &unk_2408D65CC);

      v18 = sub_2408D4EF0();
      v20 = v19;

      v21 = sub_2408CC504(v18, v20, &v41);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_2407CF000, v14, v15, "Current remaining services: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x245CC9F60](v17, -1, -1);
      MEMORY[0x245CC9F60](v16, -1, -1);
    }

    v40 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
    v22 = swift_task_alloc();
    v0[65] = v22;
    *v22 = v0;
    v23 = sub_2407F950C;
    goto LABEL_19;
  }

  v24 = v0[77];
  v25 = v0[79];
  if (v24)
  {
    v26 = *(v24 + 16);
    if (v26)
    {
      v27 = sub_2408D4D30();
      v29 = v28;
      if (*(v26 + 16))
      {
        v30 = v27;

        v31 = sub_2408CCB30(v30, v29);
        v33 = v32;

        if (v33)
        {
          v34 = *(*(v26 + 56) + 8 * v31);
          swift_unknownObjectRetain();

          v0[17] = v34;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507190, &qword_2408D75F8);
          v35 = swift_dynamicCast();
          v36 = v0[13];
          v37 = v0[14];
          if (!v35)
          {
            v36 = 0;
            v37 = 0;
          }

          goto LABEL_18;
        }
      }
    }
  }

  v36 = 0;
  v37 = 0;
LABEL_18:
  v0[88] = v37;
  v0[87] = v36;
  v0[86] = v24;
  v0[85] = v25;
  v0[84] = v10;
  v40 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v22 = swift_task_alloc();
  v0[89] = v22;
  *v22 = v0;
  v23 = sub_2407FB4B8;
LABEL_19:
  v22[1] = v23;
  v38 = v0[46];

  return v40(v38);
}

uint64_t sub_2407FB000()
{
  *(*v1 + 664) = v0;

  if (v0)
  {
    v2 = sub_2407FC3C0;
  }

  else
  {
    v2 = sub_2407FB134;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2407FB134()
{
  v34 = v0;
  v1 = v0[34];

  sub_24080F6B4(v1, type metadata accessor for SignInReport);
  v2 = v0[15];
  if (!*(v2 + 16))
  {
    v16 = v0[77];
    v17 = v0[79];
    if (v16)
    {
      v18 = *(v16 + 16);
      if (v18)
      {
        v19 = sub_2408D4D30();
        v21 = v20;
        if (*(v18 + 16))
        {
          v22 = v19;

          v23 = sub_2408CCB30(v22, v21);
          v25 = v24;

          if (v25)
          {
            v26 = *(*(v18 + 56) + 8 * v23);
            swift_unknownObjectRetain();

            v0[17] = v26;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507190, &qword_2408D75F8);
            v27 = swift_dynamicCast();
            v28 = v0[13];
            v29 = v0[14];
            if (!v27)
            {
              v28 = 0;
              v29 = 0;
            }

            goto LABEL_13;
          }
        }
      }
    }

    v28 = 0;
    v29 = 0;
LABEL_13:
    v0[88] = v29;
    v0[87] = v28;
    v0[86] = v16;
    v0[85] = v17;
    v0[84] = v2;
    v32 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
    v14 = swift_task_alloc();
    v0[89] = v14;
    *v14 = v0;
    v15 = sub_2407FB4B8;
    goto LABEL_14;
  }

  v3 = v0[83];
  v4 = v0[79];
  v5 = v0[78];
  v0[63] = v0[77];
  v0[64] = v5;
  v0[61] = v2;
  v0[62] = v4;
  v0[59] = v3;
  v0[60] = v2 + 16;
  v6 = sub_2408D4B10();
  v7 = sub_2408D4F20();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33 = v9;
    *v8 = 136315138;
    type metadata accessor for AIDAServiceType(0);
    sub_24080D61C(&qword_28130EF80, 255, type metadata accessor for AIDAServiceType, &unk_2408D65CC);

    v10 = sub_2408D4EF0();
    v12 = v11;

    v13 = sub_2408CC504(v10, v12, &v33);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_2407CF000, v6, v7, "Current remaining services: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x245CC9F60](v9, -1, -1);
    MEMORY[0x245CC9F60](v8, -1, -1);
  }

  v32 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v14 = swift_task_alloc();
  v0[65] = v14;
  *v14 = v0;
  v15 = sub_2407F950C;
LABEL_14:
  v14[1] = v15;
  v30 = v0[46];

  return v32(v30);
}

uint64_t sub_2407FB4B8()
{

  return MEMORY[0x2822009F8](sub_2407FB5B4, 0, 0);
}

void *sub_2407FB5B4(uint64_t a1)
{
  v2 = v1[85];
  v3 = v1[52];
  v4 = v1[46];
  v5 = v1[43];
  v6 = v1[29];
  sub_2408D3540();
  v3(v4, v5);
  sub_2408D3B40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507250, &qword_2408D82A0);
  result = sub_2408D51B0();
  v8 = 0;
  v9 = v2 + 64;
  v36 = v6;
  v37 = v2;
  v10 = 1 << *(v2 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v2 + 64);
  v13 = (v10 + 63) >> 6;
  v35 = result + 8;
  v38 = result;
  if (v12)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v40 = (v12 - 1) & v12;
LABEL_10:
      v17 = v14 | (v8 << 6);
      v18 = v39[30];
      v19 = v39[28];
      v20 = *(*(v37 + 48) + 8 * v17);
      (*(v36 + 16))(v18, *(v37 + 56) + *(v36 + 72) * v17, v19);
      v21 = v20;
      v22 = sub_2408D38B0();
      v24 = v23;
      (*(v36 + 8))(v18, v19);
      *(v35 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      result = v38;
      *(v38[6] + 8 * v17) = v21;
      v25 = (v38[7] + 16 * v17);
      *v25 = v22;
      v25[1] = v24;
      v26 = v38[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      v38[2] = v28;
      v12 = v40;
      if (!v40)
      {
        goto LABEL_5;
      }
    }

LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_5:
    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      if (v8 >= v13)
      {
        break;
      }

      v16 = *(v9 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v40 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    v34 = v39[55];
    v29 = v39[40];
    v33 = v39[38];
    v30 = v39[26];
    v31 = v39[27];

    sub_2407EEE04(v31, v30, &qword_27E506DA0, &unk_2408D76A0);
    sub_2408D3A50();

    sub_2407D9440(v31, &qword_27E506DA0, &unk_2408D76A0);
    v34(v29, v33);

    v32 = v39[1];

    return v32();
  }

  return result;
}

uint64_t sub_2407FB94C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2407FBA6C()
{

  return MEMORY[0x2822009F8](sub_2407FBB68, 0, 0);
}

uint64_t sub_2407FBB68()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 416);
  v3 = *(v0 + 368);
  v4 = *(v0 + 344);
  v5 = *(v0 + 296);
  v6 = *(v0 + 280);
  sub_2408D3520();
  v2(v3, v4);
  LOBYTE(v3) = sub_2408D45E0();
  v1(v5, v6);
  if ((v3 & 1) == 0 || (v7 = *(v0 + 120), *(v7 + 16) != 1) || (v8 = , v9 = sub_2407F6CF4(v8), , !v9))
  {
LABEL_10:
    v18 = *(v0 + 744);
    v20 = *(v0 + 184);
    v19 = *(v0 + 192);

    sub_24080D61C(qword_27E506DC8, 255, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
    swift_allocError();
    (*(v19 + 104))(v21, v18, v20);
    swift_willThrow();

    v22 = *(v0 + 8);

    return v22();
  }

  v10 = sub_2408D4D30();
  v12 = v11;
  v13 = sub_2408D4D30();
  v15 = *(v0 + 720);
  if (v10 == v13 && v12 == v14)
  {

    if (!v15)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v17 = sub_2408D5240();

    if ((v17 & 1) == 0 || !v15)
    {
      goto LABEL_10;
    }
  }

  v24 = sub_2408D4B10();
  v25 = sub_2408D4F20();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_2407CF000, v24, v25, "User decided to cancel on store account sign in, breaking out", v26, 2u);
    MEMORY[0x245CC9F60](v26, -1, -1);
  }

  v27 = *(v0 + 728);
  v28 = *(v0 + 720);
  v29 = *(v28 + 16);
  if (v29)
  {
    v30 = sub_2408D4D30();
    v32 = v31;
    if (*(v29 + 16))
    {
      v33 = v30;

      v34 = sub_2408CCB30(v33, v32);
      v36 = v35;

      if (v36)
      {
        v37 = *(*(v29 + 56) + 8 * v34);
        swift_unknownObjectRetain();

        *(v0 + 136) = v37;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507190, &qword_2408D75F8);
        v38 = swift_dynamicCast();
        v39 = *(v0 + 104);
        v40 = *(v0 + 112);
        if (!v38)
        {
          v39 = 0;
          v40 = 0;
        }

        goto LABEL_23;
      }
    }
  }

  v39 = 0;
  v40 = 0;
LABEL_23:
  *(v0 + 704) = v40;
  *(v0 + 696) = v39;
  *(v0 + 688) = v28;
  *(v0 + 680) = v27;
  *(v0 + 672) = v7;
  v43 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v41 = swift_task_alloc();
  *(v0 + 712) = v41;
  *v41 = v0;
  v41[1] = sub_2407FB4B8;
  v42 = *(v0 + 368);

  return v43(v42);
}

uint64_t sub_2407FC004()
{

  v1 = *(v0 + 600);
  *(v0 + 128) = v1;
  v2 = *(v0 + 504);
  *(v0 + 728) = *(v0 + 496);
  *(v0 + 720) = v2;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
  if (swift_dynamicCast())
  {
    v4 = (*(*(v0 + 192) + 88))(*(v0 + 200), *(v0 + 184));
    *(v0 + 744) = v4;
    if (v4 == *MEMORY[0x277CED268])
    {
      v5 = v4;

      v6 = sub_2408D4B10();
      v7 = sub_2408D4F20();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = *(v0 + 184);
        v9 = *(v0 + 192);
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        *v10 = 138412290;
        sub_24080D61C(qword_27E506DC8, 255, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
        swift_allocError();
        (*(v9 + 104))(v12, v5, v8);
        v13 = _swift_stdlib_bridgeErrorToNSError();
        *(v10 + 4) = v13;
        *v11 = v13;
        _os_log_impl(&dword_2407CF000, v6, v7, "Local setup cancellation with setup error :%@", v10, 0xCu);
        sub_2407D9440(v11, &qword_27E506AB0, &unk_2408D6830);
        MEMORY[0x245CC9F60](v11, -1, -1);
        MEMORY[0x245CC9F60](v10, -1, -1);
      }

      v21 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
      v14 = swift_task_alloc();
      *(v0 + 736) = v14;
      *v14 = v0;
      v14[1] = sub_2407FBA6C;
      v15 = *(v0 + 368);

      return v21(v15);
    }

    v18 = *(v0 + 192);
    v17 = *(v0 + 200);
    v19 = *(v0 + 184);

    (*(v18 + 8))(v17, v19);
  }

  else
  {
  }

  swift_willThrow();

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_2407FC3C0()
{
  v1 = *(v0 + 272);

  sub_24080F6B4(v1, type metadata accessor for SignInReport);
  v2 = *(v0 + 664);
  *(v0 + 128) = v2;
  v3 = *(v0 + 616);
  *(v0 + 728) = *(v0 + 632);
  *(v0 + 720) = v3;
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
  if (swift_dynamicCast())
  {
    v5 = (*(*(v0 + 192) + 88))(*(v0 + 200), *(v0 + 184));
    *(v0 + 744) = v5;
    if (v5 == *MEMORY[0x277CED268])
    {
      v6 = v5;

      v7 = sub_2408D4B10();
      v8 = sub_2408D4F20();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = *(v0 + 184);
        v10 = *(v0 + 192);
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 138412290;
        sub_24080D61C(qword_27E506DC8, 255, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
        swift_allocError();
        (*(v10 + 104))(v13, v6, v9);
        v14 = _swift_stdlib_bridgeErrorToNSError();
        *(v11 + 4) = v14;
        *v12 = v14;
        _os_log_impl(&dword_2407CF000, v7, v8, "Local setup cancellation with setup error :%@", v11, 0xCu);
        sub_2407D9440(v12, &qword_27E506AB0, &unk_2408D6830);
        MEMORY[0x245CC9F60](v12, -1, -1);
        MEMORY[0x245CC9F60](v11, -1, -1);
      }

      v22 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
      v15 = swift_task_alloc();
      *(v0 + 736) = v15;
      *v15 = v0;
      v15[1] = sub_2407FBA6C;
      v16 = *(v0 + 368);

      return v22(v16);
    }

    v19 = *(v0 + 192);
    v18 = *(v0 + 200);
    v20 = *(v0 + 184);

    (*(v19 + 8))(v18, v20);
  }

  else
  {
  }

  swift_willThrow();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_2407FC7A0()
{
  v0 = sub_2408D4570();
  MEMORY[0x28223BE20](v0);
  (*(v2 + 104))(&v5[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277CEDC48]);
  v3 = sub_2408D3510();
  sub_2408D45C0();
  return v3(v5, 0);
}

uint64_t sub_2407FC898(uint64_t a1, uint64_t a2)
{

  v2 = sub_2408D3510();
  sub_2408D45A0();
  return v2(&v4, 0);
}

uint64_t sub_2407FC904(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();

  v2 = sub_2408D3530();
  sub_2408D3B30();
  v2(v5, 0);
  v3 = sub_2408D3530();
  sub_2408D3AF0();
  return v3(v5, 0);
}

uint64_t sub_2407FC9C8(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507228, &qword_2408D8160);
  v3[9] = swift_task_alloc();
  type metadata accessor for SignInReport(0);
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5071D0, &unk_2408D9C70);
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507F00, &qword_2408D6D50);
  v3[12] = swift_task_alloc();
  v4 = sub_2408D38D0();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v5 = sub_2408D3630();
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v6 = sub_2408D3C20();
  v3[20] = v6;
  v3[21] = *(v6 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v7 = sub_2408D4760();
  v3[25] = v7;
  v3[26] = *(v7 - 8);
  v3[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507230, &unk_2408D7680);
  v3[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407FCCD0, 0, 0);
}

uint64_t sub_2407FCCD0()
{
  v1 = v0[28];
  v2 = sub_2408D4660();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[29] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A70, qword_2408D75E0);
  v0[30] = v4;
  v5 = sub_2407D917C(&qword_27E506A78, &qword_27E506A70, qword_2408D75E0, MEMORY[0x277CED890]);
  v0[31] = v5;
  *v3 = v0;
  v3[1] = sub_2407FCE50;
  v6 = v0[28];

  return MEMORY[0x28213FC20](v6, sub_2407EE4C0, 0, sub_2407EE4E4, 0, v4, v2, v5);
}

uint64_t sub_2407FCE50(uint64_t a1)
{
  v4 = *v2;
  (*v2)[32] = v1;

  if (v1)
  {
    sub_2407D9440(v4[28], &qword_27E507230, &unk_2408D7680);
    v5 = sub_2407FD928;
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v4[33] = a1;
    sub_2407D917C(&qword_27E506A80, &qword_27E506A70, qword_2408D75E0, MEMORY[0x277CED898]);
    v8 = sub_2408D4E00();
    v7 = v9;
    v4[34] = v8;
    v4[35] = v9;
    v5 = sub_2407FCFEC;
    v6 = v8;
  }

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2407FCFEC()
{
  v1 = *(v0 + 224);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A88, &qword_2408D6820);
  sub_2407D917C(&qword_27E506A90, &qword_27E506A88, &qword_2408D6820, MEMORY[0x277CED540]);
  *(v0 + 288) = sub_2408D4680();

  sub_2407D9440(v1, &qword_27E507230, &unk_2408D7680);

  return MEMORY[0x2822009F8](sub_2407FD0DC, 0, 0);
}

uint64_t sub_2407FD0DC()
{
  sub_2408D4750();
  v4 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v1 = swift_task_alloc();
  *(v0 + 296) = v1;
  *v1 = v0;
  v1[1] = sub_2407FD190;
  v2 = *(v0 + 152);

  return v4(v2);
}

uint64_t sub_2407FD190()
{

  return MEMORY[0x2822009F8](sub_2407FD28C, 0, 0);
}

uint64_t sub_2407FD28C(uint64_t a1)
{
  v2 = v1[36];
  v3 = v1[24];
  v4 = v1[20];
  v5 = v1[21];
  v6 = v1[19];
  v7 = v1[16];
  v8 = v1[17];
  v9 = v1[8];
  sub_2408D3540();
  v10 = *(v8 + 8);
  v1[38] = v10;
  v1[39] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v6, v7);
  sub_2408D4730();
  v11 = *(v5 + 8);
  v1[40] = v11;
  v1[41] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v3, v4);
  v12 = swift_task_alloc();
  v1[42] = v12;
  *(v12 + 16) = v9;
  *(v12 + 24) = v2;
  v13 = swift_task_alloc();
  v1[43] = v13;
  v14 = type metadata accessor for AuthenticationReport(0);
  v1[44] = v14;
  *v13 = v1;
  v13[1] = sub_2407FD40C;

  return MEMORY[0x2821400E8](v1 + 2, &unk_2408D7690, v12, v14);
}

uint64_t sub_2407FD40C()
{

  return MEMORY[0x2822009F8](sub_2407FD524, 0, 0);
}

uint64_t sub_2407FD524(uint64_t a1)
{
  v27 = v1;
  v2 = *(v1 + 16);
  *(v1 + 360) = v2;
  if (*(v1 + 24))
  {
    v4 = *(v1 + 208);
    v3 = *(v1 + 216);
    v5 = *(v1 + 200);
    *(v1 + 32) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
    swift_willThrowTypedImpl();

    (*(v4 + 8))(v3, v5);
LABEL_9:

    v21 = *(v1 + 8);

    return v21();
  }

  v6 = *(v1 + 104);
  v7 = *(v1 + 112);
  v8 = *(v1 + 96);
  sub_2408CBA10(v8);
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    sub_2407D9440(*(v1 + 96), &qword_27E507F00, &qword_2408D6D50);
    if (qword_27E506928 != -1)
    {
      swift_once();
    }

    v9 = sub_2408D4B20();
    __swift_project_value_buffer(v9, qword_27E506FF0);

    v10 = sub_2408D4B10();
    v11 = sub_2408D4F30();
    sub_24080F564(v2, 0);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v26 = v13;
      *v12 = 136315138;
      *(v1 + 40) = v2;

      v14 = sub_2408D4D40();
      v16 = sub_2408CC504(v14, v15, &v26);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_2407CF000, v10, v11, "Failed to retrieve ID from authentication report: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x245CC9F60](v13, -1, -1);
      MEMORY[0x245CC9F60](v12, -1, -1);
    }

    v17 = *(v1 + 208);
    v18 = *(v1 + 216);
    v19 = *(v1 + 200);
    sub_24080D664();
    swift_allocError();
    *v20 = xmmword_2408D73A0;
    swift_willThrow();

    sub_24080F564(v2, 0);
    (*(v17 + 8))(v18, v19);
    goto LABEL_9;
  }

  (*(*(v1 + 112) + 32))(*(v1 + 120), *(v1 + 96), *(v1 + 104));
  v25 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v23 = swift_task_alloc();
  *(v1 + 368) = v23;
  *v23 = v1;
  v23[1] = sub_2407FDA28;
  v24 = *(v1 + 152);

  return v25(v24);
}

uint64_t sub_2407FD928()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2407FDA28()
{

  return MEMORY[0x2822009F8](sub_2407FDB24, 0, 0);
}

uint64_t sub_2407FDB24(uint64_t a1)
{
  v2 = v1[40];
  v3 = v1[38];
  v4 = v1[24];
  v5 = v1[19];
  v6 = v1[20];
  v7 = v1[16];
  sub_2408D3540();
  v3(v5, v7);
  v1[47] = sub_2408D3B20();
  v2(v4, v6);
  v11 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v8 = swift_task_alloc();
  v1[48] = v8;
  *v8 = v1;
  v8[1] = sub_2407FDC2C;
  v9 = v1[18];

  return v11(v9);
}

uint64_t sub_2407FDC2C()
{

  return MEMORY[0x2822009F8](sub_2407FDD28, 0, 0);
}

uint64_t sub_2407FDD28(uint64_t a1)
{
  v35 = v1;
  v2 = v1[47];
  v3 = v1[40];
  v4 = v1[38];
  v5 = v1[23];
  v6 = v1[20];
  v7 = v1[18];
  v8 = v1[16];
  v31 = v1[15];
  sub_2408D3540();
  v4(v7, v8);
  v9 = sub_2408D3AE0();
  v3(v5, v6);
  sub_24082A3C4(v9, v2);
  v11 = v10;
  v12 = sub_2407F5674(MEMORY[0x277D84F90]);
  v13 = swift_task_alloc();
  *(v13 + 16) = v31;
  sub_2407F6D64(v12, sub_24080F570, v13, v11);
  v15 = v14;
  v1[49] = v14;

  if (qword_27E506928 != -1)
  {
    swift_once();
  }

  v16 = sub_2408D4B20();
  __swift_project_value_buffer(v16, qword_27E506FF0);

  v17 = sub_2408D4B10();
  v18 = sub_2408D4F20();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v34 = v20;
    *v19 = 136315138;
    type metadata accessor for AIDAServiceType(0);
    sub_24080D61C(&qword_28130EF80, 255, type metadata accessor for AIDAServiceType, &unk_2408D65CC);
    v21 = sub_2408D4CC0();
    v23 = sub_2408CC504(v21, v22, &v34);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_2407CF000, v17, v18, "Passing accountIDsByService: %s to signInPreflightHelper", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    MEMORY[0x245CC9F60](v20, -1, -1);
    MEMORY[0x245CC9F60](v19, -1, -1);
  }

  v24 = sub_2408D4740();
  v1[50] = v24;
  v1[51] = v25;
  if (v24)
  {
    v32 = (v24 + *v24);
    v26 = swift_task_alloc();
    v1[52] = v26;
    *v26 = v1;
    v26[1] = sub_2407FE110;
    v27 = v15;
    v28 = v32;
  }

  else
  {

    v33 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
    v30 = swift_task_alloc();
    v1[54] = v30;
    *v30 = v1;
    v30[1] = sub_2407FE318;
    v27 = v1[19];
    v28 = v33;
  }

  return v28(v27);
}

uint64_t sub_2407FE110()
{
  v2 = *v1;
  v3 = *v1;
  v2[53] = v0;

  v4 = v2[51];
  v5 = v2[50];
  if (v0)
  {

    sub_2407D1854(v5, v4);

    return MEMORY[0x2822009F8](sub_2407FEC78, 0, 0);
  }

  else
  {
    sub_2407D1854(v5, v4);

    v9 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
    v6 = swift_task_alloc();
    v2[54] = v6;
    *v6 = v3;
    v6[1] = sub_2407FE318;
    v7 = v2[19];

    return v9(v7);
  }
}

uint64_t sub_2407FE318()
{

  return MEMORY[0x2822009F8](sub_2407FE414, 0, 0);
}

uint64_t sub_2407FE414(uint64_t a1)
{
  v2 = v1[38];
  v4 = v1[21];
  v3 = v1[22];
  v5 = v1[19];
  v7 = v1[15];
  v6 = v1[16];
  v8 = v1[11];
  v16 = v1[9];
  v17 = v1[20];
  sub_2408D3540();
  v2(v5, v6);
  sub_2408CAC38(v7);
  v9 = sub_2408D3770();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  sub_2408D3A90();
  (*(v4 + 16))(v16, v3, v17);
  (*(v4 + 56))(v16, 0, 1, v17);
  v10 = swift_task_alloc();
  v1[55] = v10;
  *v10 = v1;
  v10[1] = sub_2407FE5DC;
  v11 = v1[30];
  v12 = v1[31];
  v13 = v1[20];
  v14 = v1[9];

  return MEMORY[0x28213FC20](v14, sub_2407EE514, 0, sub_2407EE538, 0, v11, v13, v12);
}

uint64_t sub_2407FE5DC(uint64_t a1)
{
  v4 = *v2;
  (*v2)[56] = v1;

  if (v1)
  {
    sub_2407D9440(v4[9], &qword_27E507228, &qword_2408D8160);
    v5 = sub_2407FE98C;
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v4[57] = a1;
    v6 = v4[34];
    v7 = v4[35];
    v5 = sub_2407FE728;
  }

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2407FE728()
{
  v1 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507238, &qword_2408D8180);
  sub_2407D917C(&unk_27E507240, &qword_27E507238, &qword_2408D8180, MEMORY[0x277CED540]);
  v2 = sub_2408D4680();
  v0[58] = v2;

  sub_2407D9440(v1, &qword_27E507228, &qword_2408D8160);
  v3 = swift_task_alloc();
  v0[59] = v3;
  *v3 = v0;
  v3[1] = sub_2407FE858;
  v4 = v0[10];

  return sub_240802688(v4, v2);
}

uint64_t sub_2407FE858()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_2407FEDD0;
  }

  else
  {
    v2 = sub_2407FEAFC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2407FE98C()
{
  v1 = v0[45];
  v2 = v0[40];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];
  v6 = v0[22];
  v7 = v0[20];
  v8 = v0[14];
  v11 = v0[13];
  v12 = v0[15];

  sub_24080F564(v1, 0);
  v2(v6, v7);
  (*(v4 + 8))(v3, v5);
  (*(v8 + 8))(v12, v11);

  v9 = v0[1];

  return v9();
}

uint64_t sub_2407FEAFC()
{
  v1 = v0[40];
  v2 = v0[27];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[22];
  v6 = v0[20];
  v7 = v0[14];
  v13 = v0[13];
  v14 = v0[15];
  v8 = v0[10];
  v9 = v0[6];

  v1(v5, v6);
  (*(v3 + 8))(v2, v4);
  sub_24080F334(v8, v9);
  (*(v7 + 8))(v14, v13);

  v10 = v0[1];
  v11 = v0[45];

  return v10(v11);
}

uint64_t sub_2407FEC78()
{
  v1 = v0[45];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[13];

  sub_24080F564(v1, 0);
  (*(v3 + 8))(v2, v4);
  (*(v6 + 8))(v5, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2407FEDD0()
{
  v1 = v0[45];
  v2 = v0[40];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];
  v6 = v0[22];
  v7 = v0[20];
  v8 = v0[14];
  v11 = v0[13];
  v12 = v0[15];

  sub_24080F564(v1, 0);
  v2(v6, v7);
  (*(v4 + 8))(v3, v5);
  (*(v8 + 8))(v12, v11);

  v9 = v0[1];

  return v9();
}

void sub_2407FEF40(uint64_t a1, void **a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507F00, &qword_2408D6D50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = *a2;
  v9 = sub_2408D38D0();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v7, a3, v9);
  (*(v10 + 56))(v7, 0, 1, v9);
  sub_2408C6C04(v7, v8);
}

uint64_t sub_2407FF060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_2407FF100;

  return sub_2407FF2E4(a3);
}

uint64_t sub_2407FF100(uint64_t a1)
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
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_2407FF24C, 0, 0);
  }
}

id sub_2407FF270()
{
  result = [objc_allocWithZone(MEMORY[0x277CF0178]) init];
  if (!result)
  {
    sub_24080D664();
    swift_allocError();
    *v1 = 0;
    v1[1] = 0;
    swift_willThrow();
    return 0;
  }

  return result;
}

uint64_t sub_2407FF2E4(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v3 = sub_2408D3500();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v4 = sub_2408D4660();
  v2[32] = v4;
  v2[33] = *(v4 - 8);
  v2[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407FF424, 0, 0);
}

uint64_t sub_2407FF424()
{
  v17 = v0;
  if (qword_27E506928 != -1)
  {
    swift_once();
  }

  v1 = sub_2408D4B20();
  v0[35] = __swift_project_value_buffer(v1, qword_27E506FF0);

  v2 = sub_2408D4B10();
  v3 = sub_2408D4F20();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[24];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    v0[23] = v4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507220, &unk_2408D7670);
    v7 = sub_2408D4D40();
    v9 = sub_2408CC504(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2407CF000, v2, v3, "Authenticating with model: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x245CC9F60](v6, -1, -1);
    MEMORY[0x245CC9F60](v5, -1, -1);
  }

  v10 = *(v0[25] + 120);

  v0[36] = v10(v11);

  v0[37] = swift_allocObject();
  swift_weakInit();
  objc_allocWithZone(sub_2408D3440());

  v0[38] = sub_2408D3450();
  v15 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v12 = swift_task_alloc();
  v0[39] = v12;
  *v12 = v0;
  v12[1] = sub_2407FF74C;
  v13 = v0[34];

  return v15(v13);
}

uint64_t sub_2407FF74C()
{

  return MEMORY[0x2822009F8](sub_2407FF848, 0, 0);
}

uint64_t sub_2407FF848()
{
  v1 = v0[38];
  v2 = v0[34];
  v3 = v0[32];
  v4 = v0[33];
  sub_240800E88(v2, v1);
  (*(v4 + 8))(v2, v3);
  v5 = v1;
  v6 = sub_2408D4B10();
  v7 = sub_2408D4F10();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[38];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v9;
    *v11 = v9;
    v12 = v9;
    _os_log_impl(&dword_2407CF000, v6, v7, "Authenticating with context: %@", v10, 0xCu);
    sub_2407D9440(v11, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v11, -1, -1);
    MEMORY[0x245CC9F60](v10, -1, -1);
  }

  v0[40] = v9;
  v13 = v0[38];
  v14 = v0[36];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2407FFA78;
  v15 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507208, &qword_2408D7668);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_240800D80;
  v0[13] = &block_descriptor_157;
  v0[14] = v15;
  [v14 authenticateWithContext:v13 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2407FFA78()
{
  v1 = *(*v0 + 48);
  *(*v0 + 328) = v1;
  if (v1)
  {
    v2 = sub_2407FFF74;
  }

  else
  {
    v2 = sub_2407FFB88;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2407FFB88(uint64_t a1)
{
  v33 = v1;
  v2 = v1[18];
  if (v2)
  {

    v3 = sub_2408D4B10();
    v4 = sub_2408D4F10();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v32 = v6;
      *v5 = 136642819;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507190, &qword_2408D75F8);
      v7 = sub_2408D4CC0();
      v9 = sub_2408CC504(v7, v8, &v32);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_2407CF000, v3, v4, "Successfully authenticated with results: %{sensitive}s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v6);
      MEMORY[0x245CC9F60](v6, -1, -1);
      MEMORY[0x245CC9F60](v5, -1, -1);
    }

    v10 = v1[40];
    v11 = v1[38];
    v12 = v1[36];
    type metadata accessor for AuthenticationReport(0);
    v13 = swift_allocObject();
    v14 = OBJC_IVAR____TtC18AppleIDSetupDaemon20AuthenticationReport__id;
    v15 = sub_2408D38D0();
    (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
    v16 = OBJC_IVAR____TtC18AppleIDSetupDaemon20AuthenticationReport_context;
    v17 = OBJC_IVAR____TtC18AppleIDSetupDaemon20AuthenticationReport_originalReport;
    *(v13 + 16) = v2;
    *(v13 + v16) = v10;
    *(v13 + v17) = 0;

    v18 = v1[1];

    return v18(v13);
  }

  else
  {
    v20 = v1[38];
    v21 = sub_2408D4B10();
    v22 = sub_2408D4F30();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = v1[40];
      v24 = v1[38];
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      *(v25 + 4) = v24;
      *v26 = v23;
      v27 = v24;
      _os_log_impl(&dword_2407CF000, v21, v22, "Failed to unwrap optional SRP results for context: %@", v25, 0xCu);
      sub_2407D9440(v26, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v26, -1, -1);
      MEMORY[0x245CC9F60](v25, -1, -1);
    }

    v28 = v1[38];
    v29 = v1[36];

    sub_24080D664();
    swift_allocError();
    *v30 = xmmword_2408D73A0;
    swift_willThrow();

    v31 = v1[1];

    return v31();
  }
}

uint64_t sub_2407FFF74(uint64_t a1)
{
  v2 = *(v1 + 328);
  v3 = *(v1 + 304);
  swift_willThrow();

  *(v1 + 152) = v2;
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
  v5 = swift_dynamicCast();
  v6 = *(v1 + 328);
  if (v5)
  {
    v8 = *(v1 + 240);
    v7 = *(v1 + 248);
    v9 = *(v1 + 232);
    v10 = *(v1 + 208);
    v11 = *(v1 + 216);

    (*(v11 + 32))(v8, v7, v10);
    v12 = *(v11 + 16);
    v12(v9, v8, v10);
    v13 = sub_2408D4B10();
    v14 = sub_2408D4F10();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v1 + 232);
    v17 = *(v1 + 208);
    v18 = *(v1 + 216);
    if (v15)
    {
      v67 = v12;
      v19 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *v19 = 138412290;
      sub_24080D61C(qword_27E506DC8, 255, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
      swift_allocError();
      v67(v20, v16, v17);
      v21 = _swift_stdlib_bridgeErrorToNSError();
      v68 = *(v18 + 8);
      v68(v16, v17);
      *(v19 + 4) = v21;
      *v66 = v21;
      _os_log_impl(&dword_2407CF000, v13, v14, "auth caught SetupError: %@", v19, 0xCu);
      sub_2407D9440(v66, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v66, -1, -1);
      v22 = v19;
      v12 = v67;
      MEMORY[0x245CC9F60](v22, -1, -1);
    }

    else
    {

      v68 = *(v18 + 8);
      v68(v16, v17);
    }

    v40 = *(v1 + 304);
    v41 = *(v1 + 288);
    v42 = *(v1 + 240);
    v43 = *(v1 + 208);
    sub_24080D61C(qword_27E506DC8, 255, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
    swift_allocError();
    v12(v44, v42, v43);
    swift_willThrow();

    v68(v42, v43);
    v45 = *(v1 + 152);
    goto LABEL_23;
  }

  *(v1 + 160) = v6;
  v23 = v6;
  sub_2407EEDBC(0, &qword_27E507210, 0x277CCA9B8);
  if (!swift_dynamicCast())
  {
    v46 = *(v1 + 304);
    v47 = *(v1 + 288);

    goto LABEL_24;
  }

  v24 = *(v1 + 168);
  v25 = sub_2408D4B10();
  v26 = sub_2408D4F10();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    *(v27 + 4) = v24;
    *v28 = v24;
    v29 = v24;
    _os_log_impl(&dword_2407CF000, v25, v26, "auth caught error: %@", v27, 0xCu);
    sub_2407D9440(v28, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v28, -1, -1);
    MEMORY[0x245CC9F60](v27, -1, -1);
  }

  if ([v24 ak_isUserSkippedError])
  {
    v30 = sub_2408D4B10();
    v31 = sub_2408D4F10();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2407CF000, v30, v31, "User opted to skip authentication, cancelling sign in", v32, 2u);
      MEMORY[0x245CC9F60](v32, -1, -1);
    }

    v33 = *(v1 + 304);
    v34 = *(v1 + 288);
    v35 = *(v1 + 208);
    v36 = *(v1 + 216);

    sub_24080D61C(qword_27E506DC8, 255, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
    swift_allocError();
    v38 = v37;
    v39 = MEMORY[0x277CED268];
  }

  else
  {
    if (![v24 ak_isUserCancelError])
    {
      v52 = v24;
      v53 = sub_2408D4B10();
      v54 = sub_2408D4F30();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *v55 = 138412290;
        *(v55 + 4) = v52;
        *v56 = v52;
        v57 = v52;
        _os_log_impl(&dword_2407CF000, v53, v54, "Failed to authenticate with error: %@", v55, 0xCu);
        sub_2407D9440(v56, &qword_27E506AB0, &unk_2408D6830);
        MEMORY[0x245CC9F60](v56, -1, -1);
        MEMORY[0x245CC9F60](v55, -1, -1);
      }

      v58 = *(v1 + 304);
      v59 = *(v1 + 288);
      v61 = *(v1 + 216);
      v60 = *(v1 + 224);
      v62 = *(v1 + 208);

      *(v1 + 176) = v52;
      sub_24080F430();
      sub_2408D52A0();
      sub_24080D61C(qword_27E506DC8, 255, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
      swift_allocError();
      (*(v61 + 16))(v63, v60, v62);
      swift_willThrow();

      (*(v61 + 8))(v60, v62);
      goto LABEL_22;
    }

    v48 = sub_2408D4B10();
    v49 = sub_2408D4F10();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_2407CF000, v48, v49, "User opted to cancel authentication, cancelling sign in", v50, 2u);
      MEMORY[0x245CC9F60](v50, -1, -1);
    }

    v33 = *(v1 + 304);
    v34 = *(v1 + 288);
    v35 = *(v1 + 208);
    v36 = *(v1 + 216);

    sub_24080D61C(qword_27E506DC8, 255, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
    swift_allocError();
    v38 = v51;
    v39 = MEMORY[0x277CED270];
  }

  (*(v36 + 104))(v38, *v39, v35);
  swift_willThrow();

LABEL_22:
  v45 = *(v1 + 160);
LABEL_23:

LABEL_24:

  v64 = *(v1 + 8);

  return v64();
}

uint64_t sub_240800804(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return MEMORY[0x2822009F8](sub_240800824, 0, 0);
}

uint64_t sub_240800824()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (!Strong)
  {
    goto LABEL_8;
  }

  v2 = Strong;
  v0[5] = *MEMORY[0x277CED1A0];
  v3 = v0[6];
  v4 = swift_task_alloc();
  *(v4 + 16) = v0 + 5;
  LOBYTE(v3) = sub_24080CF48(sub_24080F498, v4, v3);

  if ((v3 & 1) == 0)
  {

LABEL_8:
    v8 = v0[1];
    goto LABEL_9;
  }

  v5 = *(v2 + 112);
  v0[9] = v5;
  if (v5)
  {
    v10 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);

    v6 = swift_task_alloc();
    v0[10] = v6;
    *v6 = v0;
    v6[1] = sub_240800A20;

    return v10(sub_240800C0C, 0);
  }

  sub_24080D664();
  swift_allocError();
  *v9 = xmmword_2408D7390;
  swift_willThrow();

  v8 = v0[1];
LABEL_9:

  return v8();
}

uint64_t sub_240800A20()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_240800BA0;
  }

  else
  {

    v2 = sub_240800B3C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_240800B3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_240800BA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_240800C0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FC8, &unk_2408D7370);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2408D71B0;
  v1 = *MEMORY[0x277CED1A0];
  *(inited + 32) = *MEMORY[0x277CED1A0];
  v2 = v1;
  sub_2408709E4(inited);
  swift_setDeallocating();
  sub_24080F6B4(inited + 32, type metadata accessor for AIDAServiceType);
  v3 = sub_2408D3530();
  sub_2408D3B30();
  v3(v9, 0);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_2408D71B0;
  v5 = *MEMORY[0x277CED1B0];
  *(v4 + 32) = *MEMORY[0x277CED1B0];
  v6 = v5;
  sub_2408709E4(v4);
  swift_setDeallocating();
  sub_24080F6B4(v4 + 32, type metadata accessor for AIDAServiceType);
  v7 = sub_2408D3530();
  sub_2408D3AF0();
  return v7(v9, 0);
}

uint64_t sub_240800D80(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507190, &qword_2408D75F8);
      v9 = sub_2408D4CB0();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return MEMORY[0x282200950](v5);
  }
}

void sub_240800E88(uint64_t a1, void *a2)
{
  v91 = sub_2408D3970();
  v4 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v81 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506A20, &unk_2408D67F0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v87 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v88 = &v79 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507F00, &qword_2408D6D50);
  MEMORY[0x28223BE20](v10 - 8);
  v86 = &v79 - v11;
  v12 = sub_2408D4570();
  v84 = *(v12 - 8);
  v85 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v83 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v82 = &v79 - v15;
  v16 = sub_2408D4660();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E506928 != -1)
  {
    swift_once();
  }

  v20 = sub_2408D4B20();
  v21 = __swift_project_value_buffer(v20, qword_27E506FF0);
  v22 = *(v17 + 16);
  v92 = a1;
  v22(v19, a1, v16);
  v23 = a2;
  v89 = v21;
  v24 = sub_2408D4B10();
  v25 = sub_2408D4F20();

  v26 = os_log_type_enabled(v24, v25);
  v90 = v4;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v93 = v80;
    *v27 = 136315394;
    sub_24080D61C(&qword_27E507200, 255, MEMORY[0x277CEDC98], MEMORY[0x277CEDCA0]);
    v29 = sub_2408D5220();
    v31 = v30;
    (*(v17 + 8))(v19, v16);
    v32 = sub_2408CC504(v29, v31, &v93);

    *(v27 + 4) = v32;
    *(v27 + 12) = 2112;
    *(v27 + 14) = v23;
    *v28 = v23;
    v33 = v23;
    v34 = v23;
    _os_log_impl(&dword_2407CF000, v24, v25, "Applying model: %s to context: %@", v27, 0x16u);
    sub_2407D9440(v28, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v28, -1, -1);
    v35 = v80;
    __swift_destroy_boxed_opaque_existential_0Tm(v80);
    MEMORY[0x245CC9F60](v35, -1, -1);
    MEMORY[0x245CC9F60](v27, -1, -1);
  }

  else
  {
    v33 = v23;

    (*(v17 + 8))(v19, v16);
  }

  v36 = v85;
  v37 = v82;
  sub_2408D45B0();
  v39 = v83;
  v38 = v84;
  (*(v84 + 32))(v83, v37, v36);
  v40 = (*(v38 + 88))(v39, v36);
  v41 = v88;
  v42 = v33;
  v43 = v86;
  if (v40 == *MEMORY[0x277CEDC38])
  {
    v44 = 1;
    goto LABEL_13;
  }

  if (v40 != *MEMORY[0x277CEDC40])
  {
    if (v40 == *MEMORY[0x277CEDC48])
    {
      v44 = 2;
      goto LABEL_13;
    }

    (*(v38 + 8))(v39, v36);
  }

  v44 = 0;
LABEL_13:
  [v33 setAuthenticationType_];
  [v33 setServiceType_];
  [v33 setSupportsPiggybacking_];
  sub_2408D4650();
  if (v45)
  {
    v46 = sub_2408D4D00();
  }

  else
  {
    v46 = 0;
  }

  [v33 setIdmsDataToken_];

  sub_2408D45D0();
  v47 = sub_2408D38D0();
  v48 = *(v47 - 8);
  if ((*(v48 + 48))(v43, 1, v47) == 1)
  {
    sub_2407D9440(v43, &qword_27E507F00, &qword_2408D6D50);
  }

  else
  {
    sub_2408D38C0();
    v50 = v49;
    (*(v48 + 8))(v43, v47);
    if (v50)
    {
      v51 = sub_2408D4B10();
      v52 = sub_2408D4F10();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_2407CF000, v51, v52, "Applying username to context", v53, 2u);
        MEMORY[0x245CC9F60](v53, -1, -1);
      }

      v54 = sub_2408D4D00();

      [v42 setUsername_];

      [v42 setIsUsernameEditable_];
    }
  }

  sub_2408D4630();
  v55 = v87;
  sub_2407EEE04(v41, v87, &unk_27E506A20, &unk_2408D67F0);
  v57 = v90;
  v56 = v91;
  if ((*(v90 + 48))(v55, 1, v91) != 1)
  {
    v58 = v81;
    (*(v57 + 32))(v81, v55, v56);
    sub_2408018AC(v58, v42);
    (*(v57 + 8))(v58, v56);
  }

  sub_2407D9440(v41, &unk_27E506A20, &unk_2408D67F0);
  v59 = sub_2408D4580();
  if (v59)
  {
    v61 = v59;
    v62 = v60;
    v63 = v42;
    v64 = sub_2408D4B10();
    v65 = sub_2408D4F20();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *v66 = 138412290;
      *(v66 + 4) = v63;
      *v67 = v63;
      v68 = v63;
      _os_log_impl(&dword_2407CF000, v64, v65, "Executing context modifier for context: %@", v66, 0xCu);
      sub_2407D9440(v67, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v67, -1, -1);
      MEMORY[0x245CC9F60](v66, -1, -1);
    }

    v61(v63);
    sub_2407D1854(v61, v62);
  }

  v69 = v42;
  v70 = sub_2408D4B10();
  v71 = sub_2408D4F10();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v93 = v73;
    *v72 = 136315138;
    v74 = [v69 debugDescription];
    v75 = sub_2408D4D30();
    v77 = v76;

    v78 = sub_2408CC504(v75, v77, &v93);

    *(v72 + 4) = v78;
    _os_log_impl(&dword_2407CF000, v70, v71, "Completed applying model to context: %s", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v73);
    MEMORY[0x245CC9F60](v73, -1, -1);
    MEMORY[0x245CC9F60](v72, -1, -1);
  }
}

void sub_2408018AC(uint64_t a1, void *a2)
{
  v130 = a1;
  v131 = a2;
  v124 = sub_2408D36A0();
  v121 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v120 = &v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2408D3970();
  v126 = *(v4 - 8);
  v127 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v122 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v119 = &v114 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v114 = &v114 - v10;
  MEMORY[0x28223BE20](v9);
  v115 = &v114 - v11;
  v125 = sub_2408D38D0();
  v129 = *(v125 - 8);
  v12 = MEMORY[0x28223BE20](v125);
  v118 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v117 = &v114 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v116 = &v114 - v17;
  MEMORY[0x28223BE20](v16);
  v128 = &v114 - v18;
  v19 = sub_2408D3490();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v2 + 12);
  v123 = v2;
  __swift_project_boxed_opaque_existential_1(v2 + 9, v23);
  v24 = *MEMORY[0x277CED208];
  v25 = *(v20 + 104);
  v25(v22, v24, v19);
  LOBYTE(v23) = sub_2408D4770();
  v26 = *(v20 + 8);
  v26(v22, v19);
  if (v23 & 1) != 0 && (v27 = v128, sub_2408D38F0(), v28 = sub_2408D3850(), (*(v129 + 8))(v27, v125), (v28))
  {
    if (qword_27E506928 != -1)
    {
      swift_once();
    }

    v29 = sub_2408D4B20();
    __swift_project_value_buffer(v29, qword_27E506FF0);
    v31 = v126;
    v30 = v127;
    v32 = v115;
    (*(v126 + 16))(v115, v130, v127);
    v33 = sub_2408D4B10();
    v34 = sub_2408D4F20();
    v35 = os_log_type_enabled(v33, v34);
    v36 = v131;
    if (v35)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v132[0] = v38;
      *v37 = 136315138;
      sub_24080D61C(&qword_28130F418, 255, MEMORY[0x277CED3F8], MEMORY[0x277CED410]);
      v39 = sub_2408D5220();
      v41 = v40;
      (*(v31 + 8))(v32, v30);
      v42 = sub_2408CC504(v39, v41, v132);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_2407CF000, v33, v34, "Skipping applying credential to context as it represents a reserved new account: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      MEMORY[0x245CC9F60](v38, -1, -1);
      MEMORY[0x245CC9F60](v37, -1, -1);
    }

    else
    {

      (*(v31 + 8))(v32, v30);
    }

    [v36 setNeedsNewAppleID_];
    [v36 setRequestedNewAccountAgeRange_];
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v123 + 9, *(v123 + 12));
    v25(v22, v24, v19);
    v43 = sub_2408D4770();
    v26(v22, v19);
    v45 = v129;
    v44 = v130;
    v46 = v125;
    v47 = v128;
    if (v43 & 1) != 0 && (sub_2408D38F0(), v48 = sub_2408D3870(), (*(v45 + 8))(v47, v46), (v48))
    {
      v49 = v131;
      v51 = v126;
      v50 = v127;
      if (qword_27E506928 != -1)
      {
        swift_once();
      }

      v52 = sub_2408D4B20();
      __swift_project_value_buffer(v52, qword_27E506FF0);
      v53 = v114;
      (*(v51 + 16))(v114, v44, v50);
      v54 = sub_2408D4B10();
      v55 = sub_2408D4F20();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v132[0] = v57;
        *v56 = 136315138;
        sub_24080D61C(&qword_28130F418, 255, MEMORY[0x277CED3F8], MEMORY[0x277CED410]);
        v58 = sub_2408D5220();
        v59 = v50;
        v61 = v60;
        (*(v51 + 8))(v53, v59);
        v62 = sub_2408CC504(v58, v61, v132);

        *(v56 + 4) = v62;
        _os_log_impl(&dword_2407CF000, v54, v55, "Skipping applying account / credential to context as it represents a reserved unknown account id: %s", v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v57);
        MEMORY[0x245CC9F60](v57, -1, -1);
        MEMORY[0x245CC9F60](v56, -1, -1);
      }

      else
      {

        (*(v51 + 8))(v53, v50);
      }

      [v49 setIsUsernameEditable_];
    }

    else
    {
      [v131 setIsUsernameEditable_];
      v63 = v116;
      sub_2408D38F0();
      sub_2408D38C0();
      v65 = v64;
      v68 = *(v45 + 8);
      v67 = v45 + 8;
      v66 = v68;
      v68(v63, v46);
      v69 = v127;
      if (v65)
      {
        v70 = sub_2408D4D00();
      }

      else
      {
        v70 = 0;
      }

      v71 = v119;
      [v131 setUsername_];

      v72 = v117;
      sub_2408D38F0();
      v73 = sub_2408D38B0();
      v75 = v74;
      v66(v72, v46);

      v76 = HIBYTE(v75) & 0xF;
      if ((v75 & 0x2000000000000000) == 0)
      {
        v76 = v73 & 0xFFFFFFFFFFFFLL;
      }

      if (v76)
      {
        sub_2408D38F0();
        sub_2408D38B0();
        v66(v47, v46);
        v77 = sub_2408D4D00();
      }

      else
      {
        v77 = 0;
      }

      [v131 setAltDSID_];

      v78 = v118;
      sub_2408D38F0();
      sub_2408D3890();
      v80 = v79;
      v66(v78, v46);
      if (v80)
      {
        v81 = sub_2408D4D00();
      }

      else
      {
        v81 = 0;
      }

      [v131 setDSID_];

      if (qword_27E506928 != -1)
      {
        swift_once();
      }

      v123 = v66;
      v82 = sub_2408D4B20();
      v83 = __swift_project_value_buffer(v82, qword_27E506FF0);
      v84 = v126;
      v117 = *(v126 + 16);
      (v117)(v71, v44, v69);
      v118 = v83;
      v85 = sub_2408D4B10();
      v86 = v71;
      v87 = sub_2408D4F20();
      if (os_log_type_enabled(v85, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v132[0] = v89;
        *v88 = 136642819;
        v129 = v67;
        v90 = v120;
        sub_2408D3780();
        v91 = sub_2408D4D40();
        v93 = v92;
        v119 = *(v84 + 8);
        (v119)(v86, v127);
        v94 = sub_2408CC504(v91, v93, v132);
        v95 = v124;

        *(v88 + 4) = v94;
        v96 = v90;
        v46 = v125;
        _os_log_impl(&dword_2407CF000, v85, v87, "Applying credential: %{sensitive}s to context", v88, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v89);
        v97 = v89;
        v69 = v127;
        MEMORY[0x245CC9F60](v97, -1, -1);
        v98 = v88;
        v44 = v130;
        MEMORY[0x245CC9F60](v98, -1, -1);
      }

      else
      {

        v119 = *(v84 + 8);
        (v119)(v86, v69);
        v96 = v120;
        v95 = v124;
      }

      sub_2408D3780();
      v99 = v128;
      sub_2408D38F0();
      v100 = v131;
      sub_2408D3690();
      v123(v99, v46);
      (*(v121 + 8))(v96, v95);
      v101 = v122;
      (v117)(v122, v44, v69);
      v102 = v100;
      v103 = sub_2408D4B10();
      v104 = sub_2408D4F20();

      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v107 = v69;
        v108 = swift_slowAlloc();
        v132[0] = v108;
        *v105 = 136315394;
        sub_24080D61C(&qword_28130F418, 255, MEMORY[0x277CED3F8], MEMORY[0x277CED410]);
        v109 = sub_2408D5220();
        v111 = v110;
        (v119)(v101, v107);
        v112 = sub_2408CC504(v109, v111, v132);

        *(v105 + 4) = v112;
        *(v105 + 12) = 2112;
        *(v105 + 14) = v102;
        *v106 = v102;
        v113 = v102;
        _os_log_impl(&dword_2407CF000, v103, v104, "Configured authentication context for pre-found account (%s: %@", v105, 0x16u);
        sub_2407D9440(v106, &qword_27E506AB0, &unk_2408D6830);
        MEMORY[0x245CC9F60](v106, -1, -1);
        __swift_destroy_boxed_opaque_existential_0Tm(v108);
        MEMORY[0x245CC9F60](v108, -1, -1);
        MEMORY[0x245CC9F60](v105, -1, -1);
      }

      else
      {

        (v119)(v101, v69);
      }
    }
  }
}

uint64_t sub_240802688(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5071F0, &qword_2408D7640);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240802738, 0, 0);
}

uint64_t sub_240802738()
{
  v1 = swift_task_alloc();
  v0[4].i64[1] = v1;
  v1[1] = vextq_s8(v0[2], v0[2], 8uLL);
  v2 = swift_task_alloc();
  v0[5].i64[0] = v2;
  v3 = type metadata accessor for SignInReport(0);
  *v2 = v0;
  v2[1] = sub_240802810;
  v4 = v0[4].i64[0];

  return MEMORY[0x2821400E8](v4, &unk_2408D7650, v1, v3);
}

uint64_t sub_240802810()
{

  return MEMORY[0x2822009F8](sub_240802928, 0, 0);
}

uint64_t sub_240802928()
{
  sub_2407EEE04(v0[8], v0[7], &unk_27E5071F0, &qword_2408D7640);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[7];
  v2 = v0[8];
  if (EnumCaseMultiPayload == 1)
  {
    v0[2] = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
    swift_willThrowTypedImpl();
    sub_2407D9440(v2, &unk_27E5071F0, &qword_2408D7640);
  }

  else
  {
    v5 = v0[3];
    sub_2407D9440(v0[8], &unk_27E5071F0, &qword_2408D7640);
    sub_24080F334(v3, v5);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_240802A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2407DB6F0;

  return sub_240802B10(a1, a3);
}

uint64_t sub_240802B10(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507F00, &qword_2408D6D50);
  v3[9] = swift_task_alloc();
  v4 = sub_2408D38D0();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5071D0, &unk_2408D9C70);
  v3[13] = swift_task_alloc();
  v5 = sub_2408D3C20();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v6 = swift_task_alloc();
  v3[17] = v6;
  v7 = sub_2408D3770();
  v3[18] = v7;
  v3[19] = *(v7 - 8);
  v3[20] = swift_task_alloc();
  v10 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v8 = swift_task_alloc();
  v3[21] = v8;
  *v8 = v3;
  v8[1] = sub_240802D98;

  return v10(v6);
}

uint64_t sub_240802D98()
{

  return MEMORY[0x2822009F8](sub_240802E94, 0, 0);
}

uint64_t sub_240802E94()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[15];
  v6 = v0[13];
  sub_2408D3A80();
  v7 = *(v5 + 8);
  v0[22] = v7;
  v0[23] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v3, v4);
  if ((*(v2 + 48))(v6, 1, v1) == 1)
  {
    sub_2407D9440(v0[13], &qword_27E5071D0, &unk_2408D9C70);
    if (qword_27E506928 != -1)
    {
      swift_once();
    }

    v8 = sub_2408D4B20();
    __swift_project_value_buffer(v8, qword_27E506FF0);
    v9 = sub_2408D4B10();
    v10 = sub_2408D4F30();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2407CF000, v9, v10, "Missing SRP results to use for signing in", v11, 2u);
      MEMORY[0x245CC9F60](v11, -1, -1);
    }

    sub_24080D664();
    swift_allocError();
    *v12 = xmmword_2408D73A0;
    swift_willThrow();

    v13 = v0[1];

    return v13();
  }

  else
  {
    (*(v0[19] + 32))(v0[20], v0[13], v0[18]);
    v16 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
    v15 = swift_task_alloc();
    v0[24] = v15;
    *v15 = v0;
    v15[1] = sub_240803164;

    return v16(nullsub_1, 0);
  }
}

uint64_t sub_240803164()
{
  *(*v1 + 200) = v0;

  if (v0)
  {

    v2 = sub_240804BAC;
  }

  else
  {
    v2 = sub_240803280;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_240803280()
{
  v1 = v0[25];
  v2 = IdMSAccount.SRPResults.into()();
  v0[26] = v2;
  if (v1)
  {
    (*(v0[19] + 8))(v0[20], v0[18]);
LABEL_7:

    v12 = v0[1];

    return v12();
  }

  v3 = *(v2 + 16);
  v0[27] = v3;
  if (!v3)
  {
LABEL_6:
    v9 = v0[19];
    v8 = v0[20];
    v10 = v0[18];
    sub_24080D664();
    swift_allocError();
    *v11 = xmmword_2408D73A0;
    swift_willThrow();

    (*(v9 + 8))(v8, v10);
    goto LABEL_7;
  }

  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[9];

  sub_2408CBA10(v6);
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    v7 = v0[9];

    sub_2407D9440(v7, &qword_27E507F00, &qword_2408D6D50);
    goto LABEL_6;
  }

  v15 = v0[11];
  v14 = v0[12];
  v16 = v0[9];
  v17 = v0[10];
  v18 = *(v15 + 32);
  v0[28] = v18;
  v0[29] = (v15 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v18(v14, v16, v17);
  v21 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v19 = swift_task_alloc();
  v0[30] = v19;
  *v19 = v0;
  v19[1] = sub_2408034EC;
  v20 = v0[16];

  return v21(v20);
}

uint64_t sub_2408034EC()
{

  return MEMORY[0x2822009F8](sub_2408035E8, 0, 0);
}

uint64_t sub_2408035E8(uint64_t a1)
{
  v22 = v1;
  v2 = v1[22];
  v3 = v1[16];
  v4 = v1[14];
  v5 = sub_2408D3B20();
  v1[31] = v5;
  v2(v3, v4);
  if (qword_27E506928 != -1)
  {
    swift_once();
  }

  v6 = sub_2408D4B20();
  v1[32] = __swift_project_value_buffer(v6, qword_27E506FF0);

  v7 = sub_2408D4B10();
  v8 = sub_2408D4F10();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315395;
    type metadata accessor for AIDAServiceType(0);
    sub_24080D61C(&qword_28130EF80, 255, type metadata accessor for AIDAServiceType, &unk_2408D65CC);
    v11 = sub_2408D4EF0();
    v13 = sub_2408CC504(v11, v12, &v21);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2085;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507190, &qword_2408D75F8);
    v14 = sub_2408D4CC0();
    v16 = sub_2408CC504(v14, v15, &v21);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_2407CF000, v7, v8, "Signing into required services (%s) with SRP results: %{sensitive}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC9F60](v10, -1, -1);
    MEMORY[0x245CC9F60](v9, -1, -1);
  }

  v17 = v1[27];
  v18 = swift_task_alloc();
  v1[33] = v18;
  *v18 = v1;
  v18[1] = sub_2408038CC;
  v19 = v1[6];

  return sub_240805DC8(v19, v5, v17, sub_240805030, 0);
}

uint64_t sub_2408038CC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[34] = a1;
  v3[35] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_240804E18, 0, 0);
  }

  else
  {

    v8 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
    v5 = swift_task_alloc();
    v3[36] = v5;
    *v5 = v4;
    v5[1] = sub_240803A94;
    v6 = v3[16];

    return v8(v6);
  }
}

uint64_t sub_240803A94()
{

  return MEMORY[0x2822009F8](sub_240803B90, 0, 0);
}

uint64_t sub_240803B90(uint64_t a1)
{
  v2 = v1[22];
  v3 = v1[16];
  v4 = v1[14];
  v1[37] = sub_2408D3AE0();
  v2(v3, v4);
  v8 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v5 = swift_task_alloc();
  v1[38] = v5;
  *v5 = v1;
  v5[1] = sub_240803C68;
  v6 = v1[16];

  return v8(v6);
}

uint64_t sub_240803C68()
{

  return MEMORY[0x2822009F8](sub_240803D64, 0, 0);
}

uint64_t sub_240803D64()
{
  v75 = v0;
  v1 = v0[37];
  v71 = v0[27];
  v2 = v0[22];
  v3 = v0[16];
  v4 = v0[14];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];
  v8 = sub_2408D3B80();
  v2(v3, v4);
  sub_2408D4E40();
  v9 = sub_2408D4E60();
  (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v1;
  v10[5] = v71;
  v10[6] = v6;
  v10[7] = v7;

  v11 = sub_240805A88(0, 0, v5, &unk_2408D7628, v10);
  v0[39] = v11;
  sub_2407D9440(v5, &unk_27E506BD0, &qword_2408D7AB0);
  if (v8)
  {

    v12 = sub_2408D4B10();
    v13 = sub_2408D4F20();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v74 = v15;
      *v14 = 136315138;
      v0[4] = v11;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5071E0, &qword_2408D7638);
      v16 = sub_2408D4D40();
      v18 = sub_2408CC504(v16, v17, &v74);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_2407CF000, v12, v13, "Backgrounding desired service sign ins (%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x245CC9F60](v15, -1, -1);
      MEMORY[0x245CC9F60](v14, -1, -1);
    }

    v24 = 0;
    v25 = v0[37];
    v28 = *(v25 + 56);
    v27 = v25 + 56;
    v26 = v28;
    v72 = v0[37];
    v29 = -1;
    v30 = -1 << *(v72 + 32);
    if (-v30 < 64)
    {
      v29 = ~(-1 << -v30);
    }

    v31 = v29 & v26;
    v32 = (63 - v30) >> 6;
    v33 = v0[34];
    if ((v29 & v26) != 0)
    {
      goto LABEL_9;
    }

    do
    {
LABEL_10:
      v37 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v37 >= v32)
      {

        goto LABEL_31;
      }

      v31 = *(v27 + 8 * v37);
      ++v24;
    }

    while (!v31);
    while (1)
    {
      v38 = *(*(v72 + 48) + ((v37 << 9) | (8 * __clz(__rbit64(v31)))));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v74 = v33;
      v19 = sub_2408CCC7C(v38);
      v40 = v33[2];
      v41 = (v20 & 1) == 0;
      v42 = __OFADD__(v40, v41);
      v43 = v40 + v41;
      if (v42)
      {
        break;
      }

      v44 = v20;
      if (v33[3] >= v43)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v48 = v19;
          sub_2408C6540();
          v19 = v48;
          v33 = v74;
        }
      }

      else
      {
        sub_2408C94F8(v43, isUniquelyReferenced_nonNull_native);
        v33 = v74;
        v19 = sub_2408CCC7C(v38);
        if ((v44 & 1) != (v20 & 1))
        {
          type metadata accessor for AIDAServiceType(0);

          return sub_2408D5280();
        }
      }

      v31 &= v31 - 1;
      if (v44)
      {
        v34 = v33[7] + 16 * v19;
        v35 = *v34;
        v36 = *(v34 + 8);
        *v34 = 1;
        *(v34 + 8) = 0;
        sub_24080F17C(v35, v36);

        v24 = v37;
        if (!v31)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v33[(v19 >> 6) + 8] |= 1 << v19;
        *(v33[6] + 8 * v19) = v38;
        v45 = v33[7] + 16 * v19;
        *v45 = 1;
        *(v45 + 8) = 0;
        v46 = v33[2];
        v42 = __OFADD__(v46, 1);
        v47 = v46 + 1;
        if (v42)
        {
          goto LABEL_41;
        }

        v33[2] = v47;
        v24 = v37;
        if (!v31)
        {
          goto LABEL_10;
        }
      }

LABEL_9:
      v37 = v24;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    return MEMORY[0x282200430](v19, v20, v21, v22, v23);
  }

  v49 = v0;
  v50 = *(v0[37] + 16);

  if (v50)
  {

    v51 = sub_2408D4B10();
    v52 = sub_2408D4F20();

    v53 = v49;
    if (os_log_type_enabled(v51, v52))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v74 = v55;
      *v54 = 136315138;
      v53[3] = v11;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5071E0, &qword_2408D7638);
      v56 = sub_2408D4D40();
      v58 = sub_2408CC504(v56, v57, &v74);

      *(v54 + 4) = v58;
      _os_log_impl(&dword_2407CF000, v51, v52, "Forcing synchronous desired service sign ins (%s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v55);
      MEMORY[0x245CC9F60](v55, -1, -1);
      MEMORY[0x245CC9F60](v54, -1, -1);
    }

    v59 = swift_task_alloc();
    v53[40] = v59;
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5071D8, &qword_2408D7630);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
    *v59 = v53;
    v59[1] = sub_24080458C;
    v23 = MEMORY[0x277D84950];
    v19 = (v53 + 2);
    v20 = v11;
    v21 = v60;

    return MEMORY[0x282200430](v19, v20, v21, v22, v23);
  }

  v33 = v49[34];
  v0 = v49;
LABEL_31:
  v0[42] = v33;
  v61 = sub_2408D4B10();
  v62 = sub_2408D4F20();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v74 = v64;
    *v63 = 136315138;
    type metadata accessor for AIDAServiceType(0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5071A0, &qword_2408D7610);
    sub_24080D61C(&qword_28130EF80, 255, type metadata accessor for AIDAServiceType, &unk_2408D65CC);
    v65 = sub_2408D4CC0();
    v67 = v66;

    v68 = sub_2408CC504(v65, v67, &v74);

    *(v63 + 4) = v68;
    _os_log_impl(&dword_2407CF000, v61, v62, "Finished signing in with results by service: %s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v64);
    MEMORY[0x245CC9F60](v64, -1, -1);
    MEMORY[0x245CC9F60](v63, -1, -1);
  }

  v73 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
  v69 = swift_task_alloc();
  v0[43] = v69;
  *v69 = v0;
  v69[1] = sub_240804960;

  return v73(sub_240805D04, 0);
}

uint64_t sub_24080458C()
{
  *(*v1 + 328) = v0;

  if (v0)
  {

    v2 = sub_240804F18;
  }

  else
  {
    v2 = sub_2408046A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2408046A8()
{
  v17 = v0;
  v1 = v0[41];
  v2 = v0[34];
  v3 = v0[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16[0] = v2;
  sub_24080E18C(v3, sub_24080D080, 0, isUniquelyReferenced_nonNull_native, v16);
  if (v1)
  {
  }

  else
  {

    v0[42] = v16[0];
    v6 = sub_2408D4B10();
    v7 = sub_2408D4F20();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16[0] = v9;
      *v8 = 136315138;
      type metadata accessor for AIDAServiceType(0);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5071A0, &qword_2408D7610);
      sub_24080D61C(&qword_28130EF80, 255, type metadata accessor for AIDAServiceType, &unk_2408D65CC);
      v10 = sub_2408D4CC0();
      v12 = v11;

      v13 = sub_2408CC504(v10, v12, v16);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_2407CF000, v6, v7, "Finished signing in with results by service: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x245CC9F60](v9, -1, -1);
      MEMORY[0x245CC9F60](v8, -1, -1);
    }

    v15 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
    v14 = swift_task_alloc();
    v0[43] = v14;
    *v14 = v0;
    v14[1] = sub_240804960;

    return v15(sub_240805D04, 0);
  }
}

uint64_t sub_240804960()
{

  if (v0)
  {

    v1 = sub_24080F7FC;
  }

  else
  {
    v1 = sub_240804A78;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_240804A78()
{
  v1 = v0[28];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v10 = v0[42];
  v5 = v0[12];
  v6 = v0[10];
  v7 = v0[5];

  (*(v3 + 8))(v2, v4);
  v1(v7, v5, v6);
  *(v7 + *(type metadata accessor for SignInReport(0) + 20)) = v10;

  v8 = v0[1];

  return v8();
}

uint64_t sub_240804BAC()
{
  v1 = IdMSAccount.SRPResults.into()();
  v0[26] = v1;
  v2 = *(v1 + 16);
  v0[27] = v2;
  if (!v2)
  {
LABEL_4:
    v8 = v0[19];
    v7 = v0[20];
    v9 = v0[18];
    sub_24080D664();
    swift_allocError();
    *v10 = xmmword_2408D73A0;
    swift_willThrow();

    (*(v8 + 8))(v7, v9);

    v11 = v0[1];

    return v11();
  }

  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[9];

  sub_2408CBA10(v5);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    v6 = v0[9];

    sub_2407D9440(v6, &qword_27E507F00, &qword_2408D6D50);
    goto LABEL_4;
  }

  v14 = v0[11];
  v13 = v0[12];
  v15 = v0[9];
  v16 = v0[10];
  v17 = *(v14 + 32);
  v0[28] = v17;
  v0[29] = (v14 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v17(v13, v15, v16);
  v20 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v18 = swift_task_alloc();
  v0[30] = v18;
  *v18 = v0;
  v18[1] = sub_2408034EC;
  v19 = v0[16];

  return v20(v19);
}

uint64_t sub_240804E18()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_240804F18()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

void sub_240805030(void *a1, void *a2, char a3)
{
  if (qword_27E506928 != -1)
  {
    swift_once();
  }

  v6 = sub_2408D4B20();
  __swift_project_value_buffer(v6, qword_27E506FF0);
  v7 = a1;
  v8 = a3 & 1;
  sub_2407D256C(a2, a3 & 1);
  v9 = sub_2408D4B10();
  v10 = sub_2408D4F20();

  sub_24080F17C(a2, a3 & 1);
  if (os_log_type_enabled(v9, v10))
  {
    v34 = a3;
    v11 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v37 = v33;
    *v11 = 136315394;
    type metadata accessor for AIDAServiceType(0);
    v12 = v7;
    v13 = sub_2408D4D40();
    v15 = sub_2408CC504(v13, v14, &v37);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    v35 = a2;
    v36 = v8;
    sub_2407D256C(a2, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5071A0, &qword_2408D7610);
    v16 = sub_2408D4D40();
    v18 = sub_2408CC504(v16, v17, &v37);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_2407CF000, v9, v10, "Running signInResultsHandler for service: %s, result: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC9F60](v33, -1, -1);
    v19 = v11;
    a3 = v34;
    MEMORY[0x245CC9F60](v19, -1, -1);
  }

  if (a3)
  {
    v20 = v7;
    sub_2407D256C(a2, 1);
    v21 = sub_2408D4B10();
    v22 = sub_2408D4F30();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v35 = v24;
      *v23 = 136315394;
      v37 = v20;
      type metadata accessor for AIDAServiceType(0);
      v25 = v20;
      v26 = sub_2408D4D40();
      v28 = sub_2408CC504(v26, v27, &v35);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2080;
      v37 = a2;
      v29 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
      v30 = sub_2408D4D40();
      v32 = sub_2408CC504(v30, v31, &v35);

      *(v23 + 14) = v32;
      _os_log_impl(&dword_2407CF000, v21, v22, "Signing in required service: %s failed due to error: %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CC9F60](v24, -1, -1);
      MEMORY[0x245CC9F60](v23, -1, -1);
    }

    swift_willThrow();
  }
}

uint64_t sub_2408053B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_2408053DC, 0, 0);
}

uint64_t sub_2408053DC()
{
  v18 = v0;
  sub_2408D4B00();
  swift_allocObject();
  v0[7] = sub_2408D4AE0();
  if (qword_27E506928 != -1)
  {
    swift_once();
  }

  v1 = sub_2408D4B20();
  __swift_project_value_buffer(v1, qword_27E506FF0);

  v2 = sub_2408D4B10();
  v3 = sub_2408D4F10();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v17 = v5;
    *v4 = 136315394;
    type metadata accessor for AIDAServiceType(0);
    sub_24080D61C(&qword_28130EF80, 255, type metadata accessor for AIDAServiceType, &unk_2408D65CC);
    v6 = sub_2408D4EF0();
    v8 = sub_2408CC504(v6, v7, &v17);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507190, &qword_2408D75F8);
    v9 = sub_2408D4CC0();
    v11 = sub_2408CC504(v9, v10, &v17);

    *(v4 + 14) = v11;
    _os_log_impl(&dword_2407CF000, v2, v3, "Signing into desired services (%s) with SRP results: %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC9F60](v5, -1, -1);
    MEMORY[0x245CC9F60](v4, -1, -1);
  }

  v12 = swift_task_alloc();
  v0[8] = v12;
  *v12 = v0;
  v12[1] = sub_2408056A8;
  v13 = v0[6];
  v14 = v0[3];
  v15 = v0[4];

  return sub_240805DC8(v13, v14, v15, 0, 0);
}

uint64_t sub_2408056A8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_24080584C;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_2408057D0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2408057D0()
{
  v1 = *(v0 + 56);
  **(v0 + 16) = *(v0 + 80);
  sub_2408058BC(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24080584C()
{
  sub_2408058BC(*(v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2408058BC(uint64_t *a1)
{
  if (qword_27E506928 != -1)
  {
    swift_once();
  }

  v1 = sub_2408D4B20();
  __swift_project_value_buffer(v1, qword_27E506FF0);

  v2 = sub_2408D4B10();
  v3 = sub_2408D4F20();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    sub_24080D61C(&qword_27E5071E8, 255, MEMORY[0x277CE4660], MEMORY[0x277CE4668]);
    v6 = sub_2408D5220();
    v8 = sub_2408CC504(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_2407CF000, v2, v3, "Completing OS transaction for background-sign-in: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x245CC9F60](v5, -1, -1);
    MEMORY[0x245CC9F60](v4, -1, -1);
  }

  return MEMORY[0x245CC8F30](v9, v10);
}

uint64_t sub_240805A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_2407EEE04(a3, v22 - v9, &unk_27E506BD0, &qword_2408D7AB0);
  v11 = sub_2408D4E60();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_2407D9440(v10, &unk_27E506BD0, &qword_2408D7AB0);
  }

  else
  {
    sub_2408D4E50();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2408D4E00();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2408D4D50() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5071D8, &qword_2408D7630);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5071D8, &qword_2408D7630);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_240805D04()
{
  v0 = sub_2408D3BA0();
  MEMORY[0x28223BE20](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CED4F0]);
  return sub_2408D3BC0();
}

uint64_t sub_240805DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[28] = a5;
  v6[29] = v5;
  v6[26] = a3;
  v6[27] = a4;
  v6[24] = a1;
  v6[25] = a2;
  v7 = sub_2408D4B20();
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240805E9C, 0, 0);
}

uint64_t sub_240805E9C()
{
  v57 = v0;
  if (qword_27E506928 != -1)
  {
    swift_once();
  }

  *(v0 + 272) = __swift_project_value_buffer(*(v0 + 240), qword_27E506FF0);

  v1 = sub_2408D4B10();
  v2 = sub_2408D4F10();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v56 = v4;
    *v3 = 136315394;
    type metadata accessor for AIDAServiceType(0);
    sub_24080D61C(&qword_28130EF80, 255, type metadata accessor for AIDAServiceType, &unk_2408D65CC);
    v5 = sub_2408D4EF0();
    v7 = sub_2408CC504(v5, v6, &v56);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507190, &qword_2408D75F8);
    v8 = sub_2408D4CC0();
    v10 = sub_2408CC504(v8, v9, &v56);

    *(v3 + 14) = v10;
    _os_log_impl(&dword_2407CF000, v1, v2, "Signing in to services (%s) with results: %s", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC9F60](v4, -1, -1);
    MEMORY[0x245CC9F60](v3, -1, -1);
  }

  v11 = *(v0 + 200);
  v12 = sub_2407F6370(MEMORY[0x277D84F90]);
  v13 = *MEMORY[0x277CED1A0];
  *(v0 + 280) = v12;
  *(v0 + 288) = v13;
  if (sub_2408764B4(v13, v11))
  {
    sub_2408D4910();
    v14 = sub_2408D4B10();
    v15 = sub_2408D4F20();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2407CF000, v14, v15, "Preparing to sign into iCloud", v16, 2u);
      MEMORY[0x245CC9F60](v16, -1, -1);
    }

    v17 = *(v0 + 264);
    v18 = *(v0 + 240);
    v19 = *(v0 + 248);

    (*(v19 + 8))(v17, v18);
    v20 = swift_task_alloc();
    *(v0 + 296) = v20;
    *v20 = v0;
    v20[1] = sub_2408065FC;
    v21 = *(v0 + 208);
    v22 = *(v0 + 192);

    return sub_24080D964(v22, v21);
  }

  else
  {
    v24 = *MEMORY[0x277CED1C0];
    if (sub_2408764B4(*MEMORY[0x277CED1C0], *(v0 + 200)))
    {
      sub_2408D4910();
      v25 = sub_2408D4B10();
      v26 = sub_2408D4F20();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_2407CF000, v25, v26, "Preparing to sign into iTunes", v27, 2u);
        MEMORY[0x245CC9F60](v27, -1, -1);
      }

      v29 = *(v0 + 248);
      v28 = *(v0 + 256);
      v30 = *(v0 + 240);

      (*(v29 + 8))(v28, v30);
      v31 = sub_24080DFB4();
      *(v0 + 40) = sub_2407EEDBC(0, &qword_27E5071A8, 0x277CEE698);
      *(v0 + 16) = v31;
      sub_2407F6498((v0 + 16), (v0 + 48));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = v12;
      sub_2408CA588((v0 + 48), v24, isUniquelyReferenced_nonNull_native);
    }

    v33 = *(v0 + 200);
    v34 = [objc_allocWithZone(MEMORY[0x277CED1D8]) init];
    *(v0 + 312) = v34;
    [v34 setOperationUIPermissions_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507190, &qword_2408D75F8);
    v35 = sub_2408D4C90();
    [v34 setAuthenticationResults_];

    type metadata accessor for AIDAServiceType(0);
    *(v0 + 320) = v36;
    sub_24080D61C(&qword_28130EF80, 255, type metadata accessor for AIDAServiceType, &unk_2408D65CC);
    v37 = sub_2408D4C90();

    [v34 setSignInContexts_];

    v38 = sub_2407F5E5C(MEMORY[0x277D84F90]);
    v39 = v38;
    v40 = *(v33 + 32);
    *(v0 + 153) = v40;
    v41 = -1;
    v42 = -1 << v40;
    if (-(-1 << v40) < 64)
    {
      v41 = ~(-1 << -v42);
    }

    v43 = v41 & *(v33 + 56);
    *(v0 + 328) = 0;
    *(v0 + 336) = v38;

    if (v43)
    {
      v44 = 0;
      v45 = *(v0 + 200);
LABEL_22:
      *(v0 + 344) = v43;
      *(v0 + 352) = v44;
      v47 = *(v0 + 312);
      v48 = *(v0 + 232);
      v49 = *(*(v45 + 48) + ((v44 << 9) | (8 * __clz(__rbit64(v43)))));
      *(v0 + 360) = v49;
      v50 = swift_task_alloc();
      *(v0 + 368) = v50;
      v50[2] = v49;
      v50[3] = v47;
      v50[4] = v48;
      v51 = v49;
      v52 = swift_task_alloc();
      *(v0 + 376) = v52;
      *v52 = v0;
      v52[1] = sub_240806B74;
      v53 = MEMORY[0x277D839B0];

      return MEMORY[0x2821400E8](v0 + 144, &unk_2408D7608, v50, v53);
    }

    else
    {
      v46 = 0;
      while (((63 - v42) >> 6) - 1 != v46)
      {
        v44 = v46 + 1;
        v45 = *(v0 + 200);
        v43 = *(v45 + 8 * v46++ + 64);
        if (v43)
        {
          goto LABEL_22;
        }
      }

      v54 = *(v0 + 312);

      v55 = *(v0 + 8);

      return v55(v39);
    }
  }
}

uint64_t sub_2408065FC(uint64_t a1)
{
  *(*v1 + 304) = a1;

  return MEMORY[0x2822009F8](sub_2408066FC, 0, 0);
}

uint64_t sub_2408066FC()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 288);
  v3 = type metadata accessor for CloudSignInContext();
  *(v0 + 80) = v1;
  *(v0 + 104) = v3;
  sub_2407F6498((v0 + 80), (v0 + 112));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2408CA588((v0 + 112), v2, isUniquelyReferenced_nonNull_native);
  v5 = *MEMORY[0x277CED1C0];
  if (sub_2408764B4(*MEMORY[0x277CED1C0], *(v0 + 200)))
  {
    v6 = (v0 + 48);
    sub_2408D4910();
    v7 = sub_2408D4B10();
    v8 = sub_2408D4F20();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2407CF000, v7, v8, "Preparing to sign into iTunes", v9, 2u);
      MEMORY[0x245CC9F60](v9, -1, -1);
    }

    v11 = *(v0 + 248);
    v10 = *(v0 + 256);
    v12 = *(v0 + 240);

    (*(v11 + 8))(v10, v12);
    v13 = sub_24080DFB4();
    *(v0 + 40) = sub_2407EEDBC(0, &qword_27E5071A8, 0x277CEE698);
    *(v0 + 16) = v13;
    sub_2407F6498((v0 + 16), v6);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_2408CA588(v6, v5, v14);
  }

  v15 = *(v0 + 200);
  v16 = [objc_allocWithZone(MEMORY[0x277CED1D8]) init];
  *(v0 + 312) = v16;
  [v16 setOperationUIPermissions_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507190, &qword_2408D75F8);
  v17 = sub_2408D4C90();
  [v16 setAuthenticationResults_];

  type metadata accessor for AIDAServiceType(0);
  *(v0 + 320) = v18;
  sub_24080D61C(&qword_28130EF80, 255, type metadata accessor for AIDAServiceType, &unk_2408D65CC);
  v19 = sub_2408D4C90();

  [v16 setSignInContexts_];

  v20 = sub_2407F5E5C(MEMORY[0x277D84F90]);
  v21 = v20;
  v22 = *(v15 + 32);
  *(v0 + 153) = v22;
  v23 = -1;
  v24 = -1 << v22;
  if (-(-1 << v22) < 64)
  {
    v23 = ~(-1 << -v24);
  }

  v25 = v23 & *(v15 + 56);
  *(v0 + 328) = 0;
  *(v0 + 336) = v20;

  if (v25)
  {
    v26 = 0;
    v27 = *(v0 + 200);
LABEL_12:
    *(v0 + 344) = v25;
    *(v0 + 352) = v26;
    v29 = *(v0 + 312);
    v30 = *(v0 + 232);
    v31 = *(*(v27 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));
    *(v0 + 360) = v31;
    v32 = swift_task_alloc();
    *(v0 + 368) = v32;
    v32[2] = v31;
    v32[3] = v29;
    v32[4] = v30;
    v33 = v31;
    v34 = swift_task_alloc();
    *(v0 + 376) = v34;
    *v34 = v0;
    v34[1] = sub_240806B74;
    v35 = MEMORY[0x277D839B0];

    return MEMORY[0x2821400E8](v0 + 144, &unk_2408D7608, v32, v35);
  }

  else
  {
    v28 = 0;
    while (((63 - v24) >> 6) - 1 != v28)
    {
      v26 = v28 + 1;
      v27 = *(v0 + 200);
      v25 = *(v27 + 8 * v28++ + 64);
      if (v25)
      {
        goto LABEL_12;
      }
    }

    v36 = *(v0 + 312);

    v37 = *(v0 + 8);

    return v37(v21);
  }
}

uint64_t sub_240806B74()
{

  return MEMORY[0x2822009F8](sub_240806C8C, 0, 0);
}

uint64_t sub_240806C8C()
{
  v60 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 216);
  v3 = *(v0 + 152);
  if (v2)
  {
    v4 = *(v0 + 328);
    v2(*(v0 + 360), *(v0 + 144), *(v0 + 152));
    if (v4)
    {
      v5 = *(v0 + 360);
      v6 = *(v0 + 312);

      sub_24080F17C(v1, v3);

      v7 = *(v0 + 8);

      return v7();
    }

    v9 = 0;
  }

  else
  {
    v9 = *(v0 + 328);
  }

  v10 = *(v0 + 360);
  sub_2407D256C(v1, v3);
  v11 = sub_2408D4B10();
  v12 = sub_2408D4F20();

  sub_24080F17C(v1, v3);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v0 + 360);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v59[0] = v15;
    *v14 = 136315394;
    *(v0 + 184) = v13;
    v16 = v13;
    v17 = sub_2408D4D40();
    v19 = sub_2408CC504(v17, v18, v59);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    *(v0 + 160) = v1;
    *(v0 + 168) = v3;
    sub_2407D256C(v1, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5071A0, &qword_2408D7610);
    v20 = sub_2408D4D40();
    v22 = sub_2408CC504(v20, v21, v59);

    *(v14 + 14) = v22;
    _os_log_impl(&dword_2407CF000, v11, v12, "Finished signing into service (%s) with result: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC9F60](v15, -1, -1);
    MEMORY[0x245CC9F60](v14, -1, -1);
  }

  v23 = *(v0 + 360);
  v24 = *(v0 + 336);
  sub_2407D256C(v1, v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 176) = v24;
  v26 = sub_2408CCC7C(v23);
  v28 = *(v24 + 16);
  v29 = (v27 & 1) == 0;
  v30 = __OFADD__(v28, v29);
  v31 = v28 + v29;
  if (v30)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    v58 = v26;
    sub_2408C6540();
    v26 = v58;
    goto LABEL_17;
  }

  v12 = v27;
  if (*(*(v0 + 336) + 24) >= v31)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

  v32 = *(v0 + 360);
  sub_2408C94F8(v31, isUniquelyReferenced_nonNull_native);
  v26 = sub_2408CCC7C(v32);
  if ((v12 & 1) != (v33 & 1))
  {

    return sub_2408D5280();
  }

LABEL_17:
  v34 = *(v0 + 176);
  v35 = *(v0 + 360);
  if (v12)
  {
    v36 = v34[7] + 16 * v26;
    v37 = *v36;
    v38 = *(v36 + 8);
    *v36 = v1;
    *(v36 + 8) = v3;
    sub_24080F17C(v37, v38);

    sub_24080F17C(v1, v3);
  }

  else
  {
    v34[(v26 >> 6) + 8] |= 1 << v26;
    *(v34[6] + 8 * v26) = v35;
    v39 = v34[7] + 16 * v26;
    *v39 = v1;
    *(v39 + 8) = v3;
    sub_24080F17C(v1, v3);
    v43 = v34[2];
    v30 = __OFADD__(v43, 1);
    v44 = v43 + 1;
    if (v30)
    {
      __break(1u);
      return MEMORY[0x2821400E8](v26, v40, v41, v42);
    }

    v34[2] = v44;
  }

  v46 = *(v0 + 344);
  v45 = *(v0 + 352);
  *(v0 + 328) = v9;
  *(v0 + 336) = v34;
  v47 = (v46 - 1) & v46;
  if (v47)
  {
    v48 = *(v0 + 200);
LABEL_27:
    *(v0 + 344) = v47;
    *(v0 + 352) = v45;
    v50 = *(v0 + 312);
    v51 = *(v0 + 232);
    v52 = *(*(v48 + 48) + ((v45 << 9) | (8 * __clz(__rbit64(v47)))));
    *(v0 + 360) = v52;
    v53 = swift_task_alloc();
    *(v0 + 368) = v53;
    v53[2] = v52;
    v53[3] = v50;
    v53[4] = v51;
    v54 = v52;
    v55 = swift_task_alloc();
    *(v0 + 376) = v55;
    *v55 = v0;
    v55[1] = sub_240806B74;
    v42 = MEMORY[0x277D839B0];
    v40 = &unk_2408D7608;
    v26 = v0 + 144;
    v41 = v53;

    return MEMORY[0x2821400E8](v26, v40, v41, v42);
  }

  while (1)
  {
    v49 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v49 >= (((1 << *(v0 + 153)) + 63) >> 6))
    {
      break;
    }

    v48 = *(v0 + 200);
    v47 = *(v48 + 8 * v49 + 56);
    ++v45;
    if (v47)
    {
      v45 = v49;
      goto LABEL_27;
    }
  }

  v56 = *(v0 + 312);

  v57 = *(v0 + 8);

  return v57(v34);
}

uint64_t sub_240807214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  return MEMORY[0x2822009F8](sub_240807238, 0, 0);
}

uint64_t sub_240807238()
{
  v26 = v0;
  v1 = v0;
  v2 = v0 + 10;
  if (qword_27E506928 != -1)
  {
    swift_once();
  }

  v3 = v1[19];
  v4 = v1[20];
  v5 = sub_2408D4B20();
  __swift_project_value_buffer(v5, qword_27E506FF0);
  v6 = v3;
  v7 = v4;
  v8 = sub_2408D4B10();
  v9 = sub_2408D4F20();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v1[19];
    v11 = v1[20];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25 = v14;
    *v12 = 136315394;
    v1[10] = v10;
    type metadata accessor for AIDAServiceType(0);
    v15 = v10;
    v16 = sub_2408D4D40();
    v18 = sub_2408CC504(v16, v17, &v25);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2112;
    *(v12 + 14) = v11;
    *v13 = v11;
    v19 = v11;
    _os_log_impl(&dword_2407CF000, v8, v9, "Signing into service (%s) with context: %@", v12, 0x16u);
    sub_2407D9440(v13, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x245CC9F60](v14, -1, -1);
    MEMORY[0x245CC9F60](v12, -1, -1);
  }

  v20 = v1[20];
  v21 = v1[19];
  v22 = *(v1[21] + 64);
  v1[2] = v1;
  v1[7] = v1 + 23;
  v1[3] = sub_24080750C;
  v23 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5071C0, &qword_2408D6CC0);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_24085F49C;
  v1[13] = &block_descriptor_1;
  v1[14] = v23;
  [v22 signInService:v21 withContext:v20 completion:v2];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_24080750C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_240807640;
  }

  else
  {
    v2 = sub_24080761C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_240807640(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_2408076AC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FD8, &qword_2408D7380);
    v2 = sub_2408D51D0();
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

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_unknownObjectRetain();
    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507190, &qword_2408D75F8);
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_2407F6498(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_2407F6498(v29, v30);
    result = sub_2408D50B0();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_2407F6498(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_240807978(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_2408D3970();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507100, &unk_2408D75C0);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506A20, &unk_2408D67F0);
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v5 = sub_2408D3630();
  v2[18] = v5;
  v2[19] = *(v5 - 8);
  v2[20] = swift_task_alloc();
  v6 = sub_2408D3C20();
  v2[21] = v6;
  v2[22] = *(v6 - 8);
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240807BD8, 0, 0);
}

uint64_t sub_240807BD8()
{
  v15 = v0;
  if (qword_27E506928 != -1)
  {
    swift_once();
  }

  v1 = sub_2408D4B20();
  v0[24] = __swift_project_value_buffer(v1, qword_27E506FF0);

  v2 = sub_2408D4B10();
  v3 = sub_2408D4F20();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v0[2] = v4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A70, qword_2408D75E0);
    v7 = sub_2408D4D40();
    v9 = sub_2408CC504(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2407CF000, v2, v3, "Finding eligible accounts for model: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x245CC9F60](v6, -1, -1);
    MEMORY[0x245CC9F60](v5, -1, -1);
  }

  v13 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v10 = swift_task_alloc();
  v0[25] = v10;
  *v10 = v0;
  v10[1] = sub_240807DE8;
  v11 = v0[20];

  return v13(v11);
}

uint64_t sub_240807DE8()
{

  return MEMORY[0x2822009F8](sub_240807EE4, 0, 0);
}

uint64_t sub_240807EE4(uint64_t a1)
{
  v103 = v1;
  v3 = v1[19];
  v2 = v1[20];
  v4 = v1[18];
  sub_2408D3540();
  (*(v3 + 8))(v2, v4);
  v5 = sub_2408D3B20();
  v6 = sub_2408D3AE0();
  sub_24082A3C4(v6, v5);
  v8 = v7;
  v9 = v7 + 56;
  v10 = -1;
  v11 = -1 << *(v7 + 32);
  if (-v11 < 64)
  {
    v10 = ~(-1 << -v11);
  }

  v12 = v10 & *(v7 + 56);
  v13 = (63 - v11) >> 6;

  v14 = 0;
  v15 = MEMORY[0x277D84F90];
  while (v12)
  {
LABEL_11:
    v18 = v96[4];
    v100 = *(*(v8 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v12)))));
    v19 = v100;
    sub_2408089C8(&v100, v18, &v101);

    if (v102)
    {
      v97 = v102;
      v20 = v101;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_240869AE0(0, v15[2] + 1, 1, v15);
      }

      v22 = v15[2];
      v21 = v15[3];
      v23 = v97;
      if (v22 >= v21 >> 1)
      {
        v24 = sub_240869AE0((v21 > 1), v22 + 1, 1, v15);
        v23 = v97;
        v15 = v24;
      }

      v15[2] = v22 + 1;
      v16 = &v15[3 * v22];
      v16[4] = v20;
      *(v16 + 5) = v23;
    }

    v12 &= v12 - 1;
  }

  while (1)
  {
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_52;
    }

    if (v17 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v17);
    ++v14;
    if (v12)
    {
      v14 = v17;
      goto LABEL_11;
    }
  }

  if (v15[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507110, &qword_2408D75D0);
    v25 = sub_2408D51D0();
  }

  else
  {
    v25 = MEMORY[0x277D84F98];
  }

  v26 = v96;
  v101 = v25;
  sub_24080D0C8(v15, 1, &v101);

  v27 = v101;

  v28 = sub_2408D4B10();
  v29 = sub_2408D4F20();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v101 = v31;
    *v30 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507120, &qword_2408D75D8);
    v32 = sub_2408D4CC0();
    v34 = sub_2408CC504(v32, v33, &v101);

    *(v30 + 4) = v34;
    v26 = v96;
    _os_log_impl(&dword_2407CF000, v28, v29, "Discovered eligible accounts: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    MEMORY[0x245CC9F60](v31, -1, -1);
    MEMORY[0x245CC9F60](v30, -1, -1);
  }

  v35 = v26[12];
  v37 = v26[5];
  v36 = v26[6];
  v38 = v26[4];
  v39 = swift_allocObject();
  *(v39 + 16) = sub_24080F058;
  *(v39 + 24) = v38;
  v40 = sub_24080D61C(&qword_27E507118, 255, MEMORY[0x277CED3F8], MEMORY[0x277CED400]);
  swift_retain_n();
  v41 = MEMORY[0x245CC9340](0, v37, v40);
  v42 = 0;
  v44 = v27 + 64;
  v43 = *(v27 + 64);
  v45 = -1 << *(v27 + 32);
  v101 = v41;
  if (-v45 < 64)
  {
    v46 = ~(-1 << -v45);
  }

  else
  {
    v46 = -1;
  }

  v47 = v46 & v43;
  v89 = (63 - v45) >> 6;
  v48 = (v36 + 48);
  v94 = (v35 + 56);
  v95 = (v36 + 32);
  v92 = (v36 + 56);
  v93 = (v35 + 48);
  v91 = (v36 + 8);
  v98 = (v36 + 48);
  if ((v46 & v43) != 0)
  {
    goto LABEL_36;
  }

LABEL_27:
  v49 = v42;
  while (1)
  {
    v50 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      break;
    }

    if (v50 >= v89)
    {
      v47 = 0;
      if (v89 <= v42 + 1)
      {
        v51 = v42 + 1;
      }

      else
      {
        v51 = v89;
      }

      v50 = v51 - 1;
      v52 = 1;
      goto LABEL_39;
    }

    v47 = *(v44 + 8 * v50);
    ++v49;
    if (v47)
    {
      while (1)
      {
        v54 = v26[15];
        v53 = v26[16];
        v55 = v26[4];
        v56 = v26[5];
        v57 = __clz(__rbit64(v47));
        v47 &= v47 - 1;
        v58 = *(*(v27 + 56) + 8 * (v57 | (v50 << 6)));

        sub_240808F44(v58, v55, v54);
        v26 = v96;

        sub_24080F060(v54, v53, &unk_27E506A20, &unk_2408D67F0);
        v48 = v98;
        v59 = (*v98)(v53, 1, v56);
        v60 = v96[16];
        if (v59 == 1)
        {
          sub_2407D9440(v60, &unk_27E506A20, &unk_2408D67F0);
          v42 = v50;
          v44 = v27 + 64;
          if (!v47)
          {
            goto LABEL_27;
          }
        }

        else
        {
          sub_24080F060(v60, v96[10], &unk_27E506A20, &unk_2408D67F0);
          v52 = 0;
LABEL_39:
          v61 = v26[10];
          v62 = v26[11];
          v63 = v26[9];
          (*v94)(v61, v52, 1, v62);
          sub_24080F060(v61, v63, &unk_27E507100, &unk_2408D75C0);
          if ((*v93)(v63, 1, v62) == 1)
          {
            (*v92)(v26[17], 1, 1, v26[5]);
            v64 = *v48;
          }

          else
          {
            v65 = v26[13];
            v66 = v26[14];
            v90 = v26[5];
            sub_24080F060(v26[9], v66, &unk_27E506A20, &unk_2408D67F0);
            sub_2407EEE04(v66, v65, &unk_27E506A20, &unk_2408D67F0);
            v64 = *v48;
            if ((*v48)(v65, 1, v90) == 1)
            {
              goto LABEL_53;
            }

            v67 = v26[17];
            v68 = v26[14];
            v69 = v26[5];
            (*v95)(v67, v26[13], v69);
            sub_2407D9440(v68, &unk_27E506A20, &unk_2408D67F0);
            (*v92)(v67, 0, 1, v69);
          }

          v70 = v26[17];
          v71 = v26[5];
          if (v64(v70, 1, v71) == 1)
          {

            sub_2407D17F4(v27);

            v74 = v101;

            v75 = sub_2408D4B10();
            v76 = sub_2408D4F10();

            v77 = os_log_type_enabled(v75, v76);
            v78 = v26[22];
            v79 = v26[23];
            v80 = v26[21];
            v99 = v74;
            if (v77)
            {
              v81 = swift_slowAlloc();
              v82 = swift_slowAlloc();
              v101 = v82;
              *v81 = 136315138;
              v83 = sub_2408D4EF0();
              v85 = sub_2408CC504(v83, v84, &v101);

              *(v81 + 4) = v85;
              _os_log_impl(&dword_2407CF000, v75, v76, "Discovered IdMS accounts: %s", v81, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v82);
              v86 = v82;
              v26 = v96;
              MEMORY[0x245CC9F60](v86, -1, -1);
              MEMORY[0x245CC9F60](v81, -1, -1);
            }

            (*(v78 + 8))(v79, v80);

            v87 = v26[1];

            return v87(v99);
          }

          v73 = v26[7];
          v72 = v26[8];
          (*v95)(v73, v70, v71);
          sub_24086A1EC(v72, v73);
          (*v91)(v72, v71);
          v42 = v50;
          v44 = v27 + 64;
          v48 = v98;
          if (!v47)
          {
            goto LABEL_27;
          }
        }

LABEL_36:
        v50 = v42;
      }
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:

  __break(1u);
  return result;
}

void sub_2408089C8(void **a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = sub_2408D3490();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = a2[8];
  v14 = [v13 accountForService_];
  if (v14)
  {
    v15 = v14;
    v16 = [v13 altDSIDForAccount:v14 service:v12];
    if (v16)
    {
      v17 = v16;
      v18 = sub_2408D4D30();
      v64 = v19;

      if (qword_27E506928 != -1)
      {
        swift_once();
      }

      v20 = sub_2408D4B20();
      __swift_project_value_buffer(v20, qword_27E506FF0);
      v21 = v12;
      v22 = sub_2408D4B10();
      v23 = sub_2408D4F20();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v62 = a3;
        v25 = v24;
        v63 = swift_slowAlloc();
        v66 = v63;
        *v25 = 136315138;
        v65 = v21;
        type metadata accessor for AIDAServiceType(0);
        v26 = v21;
        v27 = sub_2408D4D40();
        v29 = sub_2408CC504(v27, v28, &v66);

        *(v25 + 4) = v29;
        _os_log_impl(&dword_2407CF000, v22, v23, "Discovered eligible account for: %s", v25, 0xCu);
        v30 = v63;
        __swift_destroy_boxed_opaque_existential_0Tm(v63);
        MEMORY[0x245CC9F60](v30, -1, -1);
        v31 = v25;
        a3 = v62;
        MEMORY[0x245CC9F60](v31, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FC8, &unk_2408D7370);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2408D71B0;
      *(inited + 32) = v21;
      v33 = v21;
      v34 = sub_2408709E4(inited);
      swift_setDeallocating();
      sub_24080F6B4(inited + 32, type metadata accessor for AIDAServiceType);

      v35 = v64;
      *a3 = v18;
      a3[1] = v35;
      a3[2] = v34;
      return;
    }
  }

  v64 = v11;
  if (qword_27E506928 != -1)
  {
    swift_once();
  }

  v36 = sub_2408D4B20();
  __swift_project_value_buffer(v36, qword_27E506FF0);
  v37 = v12;
  v38 = sub_2408D4B10();
  v39 = sub_2408D4F20();

  v40 = os_log_type_enabled(v38, v39);
  v63 = v9;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v62 = a3;
    v42 = v41;
    v61 = swift_slowAlloc();
    v66 = v61;
    *v42 = 136315138;
    v65 = v37;
    type metadata accessor for AIDAServiceType(0);
    v43 = v37;
    v44 = sub_2408D4D40();
    v46 = sub_2408CC504(v44, v45, &v66);

    *(v42 + 4) = v46;
    v4 = v3;
    _os_log_impl(&dword_2407CF000, v38, v39, "Did not find the account for service: %s", v42, 0xCu);
    v47 = v61;
    __swift_destroy_boxed_opaque_existential_0Tm(v61);
    MEMORY[0x245CC9F60](v47, -1, -1);
    v48 = v42;
    a3 = v62;
    MEMORY[0x245CC9F60](v48, -1, -1);
  }

  v49 = sub_2408D4D30();
  v51 = v50;
  v52 = sub_2408D4D30();
  v54 = v64;
  if (v49 == v52 && v51 == v53)
  {
  }

  else
  {
    v55 = sub_2408D5240();

    if ((v55 & 1) == 0)
    {
LABEL_18:
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      return;
    }
  }

  __swift_project_boxed_opaque_existential_1(a2 + 9, a2[12]);
  v56 = v63;
  (v63[13])(v54, *MEMORY[0x277CED218], v8);
  v57 = sub_2408D4770();
  (v56[1])(v54, v8);
  if (v57)
  {
    goto LABEL_18;
  }

  v58 = sub_2408094C8();
  if (!v4)
  {
    *a3 = v58;
    a3[1] = v59;
    a3[2] = v60;
  }
}

uint64_t sub_240808F44@<X0>(uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a5;
  v7 = sub_2408D3490();
  v31 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506A20, &unk_2408D67F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v29 - v11;
  v13 = a4[7];
  v14 = sub_2408D4D00();
  v15 = [v13 authKitAccountWithAltDSID_];

  if (v15)
  {
    sub_2408D5030();

    v16 = sub_2408D3970();
    (*(*(v16 - 8) + 56))(v12, 0, 1, v16);
  }

  else
  {
    v16 = sub_2408D3970();
    (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  }

  sub_2408D3970();
  v30 = *(*(v16 - 8) + 48);
  if (!v30(v12, 1, v16))
  {
    v17 = sub_2408D3950();
    *v18 = sub_24086E620(a3, *v18);
    v17(v33, 0);
  }

  v19 = *MEMORY[0x277CED1B0];
  if (sub_2408764B4(*MEMORY[0x277CED1B0], a3))
  {
    __swift_project_boxed_opaque_existential_1(a4 + 9, a4[12]);
    v20 = v31;
    (*(v31 + 104))(v9, *MEMORY[0x277CED218], v7);
    v21 = sub_2408D4770();
    (*(v20 + 8))(v9, v7);
    if ((v21 & 1) == 0)
    {
      if (qword_27E506928 != -1)
      {
        swift_once();
      }

      v22 = sub_2408D4B20();
      __swift_project_value_buffer(v22, qword_27E506FF0);
      v23 = sub_2408D4B10();
      v24 = sub_2408D4F10();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_2407CF000, v23, v24, "Explicitly adding GameCenter to services for IdMS account, only as a temporary workaround", v25, 2u);
        MEMORY[0x245CC9F60](v25, -1, -1);
      }

      if (!v30(v12, 1, v16))
      {
        v26 = v19;
        v27 = sub_2408D3950();
        sub_24086A4D4(&v34, v26);

        v27(v33, 0);
      }
    }
  }

  return sub_24080F060(v12, v32, &unk_27E506A20, &unk_2408D67F0);
}

uint64_t sub_2408094C8()
{
  v2 = v0;
  if (qword_27E506928 != -1)
  {
    swift_once();
  }

  v3 = sub_2408D4B20();
  __swift_project_value_buffer(v3, qword_27E506FF0);
  v4 = sub_2408D4B10();
  v5 = sub_2408D4F20();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2407CF000, v4, v5, "Checking for GameCenter account", v6, 2u);
    MEMORY[0x245CC9F60](v6, -1, -1);
  }

  v7 = [*(v2 + 56) primaryAuthKitAccount];
  if (!v7 || (v8 = v7, v9 = [v7 aida_alternateDSID], v8, !v9))
  {
    v15 = sub_2408D4B10();
    v16 = sub_2408D4F20();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "No primary AuthKit account found on device. Cannot get altDSID to search for GameCenter account.";
LABEL_19:
      _os_log_impl(&dword_2407CF000, v15, v16, v18, v17, 2u);
      MEMORY[0x245CC9F60](v17, -1, -1);
    }

LABEL_20:

    return 0;
  }

  v10 = sub_2408D4D30();

  v11 = [objc_opt_self() defaultStore];
  if (!v11)
  {
LABEL_17:

    v15 = sub_2408D4B10();
    v16 = sub_2408D4F20();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "Did not find the account for GameCenter";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v12 = v11;
  v13 = *MEMORY[0x277CED1B0];
  v14 = sub_2408D4F60();
  if (v1)
  {

    return v10;
  }

  if (!v14)
  {

    goto LABEL_17;
  }

  v19 = v14;
  v20 = sub_2408D4B10();
  v21 = sub_2408D4F20();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_2407CF000, v20, v21, "Discovered eligible account for GameCenter", v22, 2u);
    MEMORY[0x245CC9F60](v22, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FC8, &unk_2408D7370);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2408D71B0;
  *(inited + 32) = v13;
  v24 = v13;
  sub_2408709E4(inited);
  swift_setDeallocating();
  sub_24080F6B4(inited + 32, type metadata accessor for AIDAServiceType);

  return v10;
}

uint64_t sub_240809854(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_240809878, 0, 0);
}

uint64_t sub_240809878()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = sub_2408D3910();
  v0[5] = v2;
  v3 = v2;
  v4 = v0[4];

  if ([*(v4 + 56) securityLevelForAccount_] == 2)
  {
    if (qword_27E506928 != -1)
    {
      swift_once();
    }

    v5 = sub_2408D4B20();
    __swift_project_value_buffer(v5, qword_27E506FF0);
    v6 = sub_2408D4B10();
    v7 = sub_2408D4F20();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2407CF000, v6, v7, "Account is SA account. Skipping preflight repair.", v8, 2u);
      MEMORY[0x245CC9F60](v8, -1, -1);
    }

    v9 = v0[1];

    return v9(1);
  }

  else
  {
    if (qword_27E506928 != -1)
    {
      swift_once();
    }

    v11 = sub_2408D4B20();
    v0[6] = __swift_project_value_buffer(v11, qword_27E506FF0);
    v12 = sub_2408D4B10();
    v13 = sub_2408D4F20();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2407CF000, v12, v13, "Performing Preflight Repair ...", v14, 2u);
      MEMORY[0x245CC9F60](v14, -1, -1);
    }

    v15 = v0[3];

    v16 = swift_task_alloc();
    v0[7] = v16;
    *(v16 + 16) = v15;
    v19 = (*MEMORY[0x277CED860] + MEMORY[0x277CED860]);
    v17 = swift_task_alloc();
    v0[8] = v17;
    *v17 = v0;
    v17[1] = sub_240809BA4;
    v18 = MEMORY[0x277D839B0];

    return v19(v0 + 10, sub_24080F050, v16, &unk_2408D75B0, 0, v18);
  }
}

uint64_t sub_240809BA4()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_240809DB8;
  }

  else
  {

    v2 = sub_240809CC0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_240809CC0(uint64_t a1)
{
  v2 = *(v1 + 80);
  v3 = sub_2408D4B10();
  v4 = sub_2408D4F10();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v1 + 40);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v2;
    _os_log_impl(&dword_2407CF000, v3, v4, "User completed repair with success: %{BOOL}d", v7, 8u);
    MEMORY[0x245CC9F60](v7, -1, -1);
  }

  v8 = *(v1 + 8);

  return v8(v2);
}

uint64_t sub_240809DB8()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_240809E2C(uint64_t a1, uint64_t a2)
{
  v3 = sub_2408D3970();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2408D45F0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a2, v3);
  sub_2408D4540();
  (*(v8 + 104))(v10, *MEMORY[0x277CEDC68], v7);
  return sub_2408D4610();
}

uint64_t sub_240809FB8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2408D45F0();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_2408D4560();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24080A0D4, 0, 0);
}

uint64_t sub_24080A0D4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_2408D4600();
  if ((*(v2 + 88))(v1, v3) == *MEMORY[0x277CEDC78])
  {
    v5 = v0[8];
    v4 = v0[9];
    v7 = v0[6];
    v6 = v0[7];
    (*(v0[5] + 96))(v7, v0[4]);
    (*(v5 + 32))(v4, v7, v6);
    if (qword_27E506928 != -1)
    {
      swift_once();
    }

    v8 = sub_2408D4B20();
    __swift_project_value_buffer(v8, qword_27E506FF0);
    v9 = sub_2408D4B10();
    v10 = sub_2408D4F10();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2407CF000, v9, v10, "Finished preflight repair", v11, 2u);
      MEMORY[0x245CC9F60](v11, -1, -1);
    }

    v13 = v0[8];
    v12 = v0[9];
    v14 = v0[7];
    v15 = v0[2];

    v16 = sub_2408D4550();
    (*(v13 + 8))(v12, v14);
    *v15 = v16 & 1;
    v17 = *MEMORY[0x277CEDCB0];
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D60, &qword_2408D6D08);
    (*(*(v18 - 8) + 104))(v15, v17, v18);
  }

  else
  {
    (*(v0[5] + 8))(v0[6], v0[4]);
    if (qword_27E506928 != -1)
    {
      swift_once();
    }

    v19 = sub_2408D4B20();
    __swift_project_value_buffer(v19, qword_27E506FF0);
    v20 = sub_2408D4B10();
    v21 = sub_2408D4F20();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2407CF000, v20, v21, "Waiting on preflight to finish", v22, 2u);
      MEMORY[0x245CC9F60](v22, -1, -1);
    }

    v23 = v0[2];

    v24 = *MEMORY[0x277CEDCA8];
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D60, &qword_2408D6D08);
    (*(*(v25 - 8) + 104))(v23, v24, v25);
  }

  v26 = v0[1];

  return v26();
}

void sub_24080A424()
{
  if (*(v0 + 136))
  {
    if (qword_27E506928 != -1)
    {
      swift_once();
    }

    v1 = sub_2408D4B20();
    __swift_project_value_buffer(v1, qword_27E506FF0);
    oslog = sub_2408D4B10();
    v2 = sub_2408D4F20();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_2407CF000, oslog, v2, "We already have profile and process assertions, skipping assertion acquisition.", v3, 2u);
      MEMORY[0x245CC9F60](v3, -1, -1);
    }
  }

  else
  {
    v4 = v0;
    if (qword_27E506928 != -1)
    {
      swift_once();
    }

    v5 = sub_2408D4B20();
    __swift_project_value_buffer(v5, qword_27E506FF0);
    v6 = sub_2408D4B10();
    v7 = sub_2408D4F20();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2407CF000, v6, v7, "Acquiring user profile and process assertions", v8, 2u);
      MEMORY[0x245CC9F60](v8, -1, -1);
    }

    sub_2408D4B00();
    swift_allocObject();
    *(v4 + 136) = sub_2408D4AE0();

    oslog = sub_2408D4B10();
    v9 = sub_2408D4F10();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5070F0, &qword_2408D75A8);
      v12 = sub_2408D4D40();
      v14 = sub_2408CC504(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_2407CF000, oslog, v9, "Acquired process transaction: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x245CC9F60](v11, -1, -1);
      MEMORY[0x245CC9F60](v10, -1, -1);

      return;
    }
  }
}

uint64_t sub_24080A730()
{
  v1 = v0;
  if (qword_27E506928 != -1)
  {
    swift_once();
  }

  v2 = sub_2408D4B20();
  __swift_project_value_buffer(v2, qword_27E506FF0);

  v3 = sub_2408D4B10();
  v4 = sub_2408D4F20();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5070F0, &qword_2408D75A8);
    v7 = sub_2408D4D40();
    v9 = sub_2408CC504(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2407CF000, v3, v4, "Relinquishing process transaction: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x245CC9F60](v6, -1, -1);
    MEMORY[0x245CC9F60](v5, -1, -1);
  }

  if (*(v1 + 136))
  {

    MEMORY[0x245CC8F30](v10);
  }

  *(v1 + 136) = 0;
}

uint64_t sub_24080A8E0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 40) = a1;
  *(v2 + 48) = v3;
  return MEMORY[0x2822009F8](sub_24080A904, 0, 0);
}

uint64_t sub_24080A904()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v1[1] = vextq_s8(*(v0 + 40), *(v0 + 40), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = type metadata accessor for AuthenticationReport(0);
  *v2 = v0;
  v2[1] = sub_24080A9DC;

  return MEMORY[0x2821400E8](v0 + 16, &unk_2408D7500, v1, v3);
}

uint64_t sub_24080A9DC()
{

  return MEMORY[0x2822009F8](sub_24080AAF4, 0, 0);
}

uint64_t sub_24080AAF4()
{
  if (*(v0 + 24))
  {
    *(v0 + 32) = *(v0 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
    swift_willThrowTypedImpl();
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 8);
    v4 = *(v0 + 16);

    return v3(v4);
  }
}

uint64_t sub_24080AE44(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_2408D3BA0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E506928 != -1)
  {
    swift_once();
  }

  v9 = sub_2408D4B20();
  __swift_project_value_buffer(v9, qword_27E506FF0);
  v10 = sub_2408D4B10();
  v11 = sub_2408D4F20();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2407CF000, v10, v11, "Setting sign in model state to .showTerms", v12, 2u);
    MEMORY[0x245CC9F60](v12, -1, -1);
  }

  if (!*(a2 + OBJC_IVAR____TtC18AppleIDSetupDaemon18CloudSignInContext_requiredTerms))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5070E0, &qword_2408D75A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2408D73B0;
    v14 = *MEMORY[0x277CEC720];
    *(inited + 32) = *MEMORY[0x277CEC720];
    v15 = *MEMORY[0x277CEC728];
    v16 = *MEMORY[0x277CEC730];
    *(inited + 40) = *MEMORY[0x277CEC728];
    *(inited + 48) = v16;
    v17 = *MEMORY[0x277CEC738];
    v26 = v6;
    v18 = *MEMORY[0x277CEC740];
    *(inited + 56) = v17;
    *(inited + 64) = v18;
    v19 = v14;
    v20 = v15;
    v21 = v16;
    v22 = v17;
    v23 = v18;
    v6 = v26;
    sub_2408737A0(inited);
    swift_setDeallocating();
    type metadata accessor for AATermsEntry(0);
    swift_arrayDestroy();
  }

  v24 = a3;
  sub_2408D41A0();
  (*(v6 + 104))(v8, *MEMORY[0x277CED4F8], v5);
  return sub_2408D3BC0();
}

uint64_t sub_24080B110(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2408D3BA0();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_2408D41C0();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24080B22C, 0, 0);
}

uint64_t sub_24080B22C(uint64_t a1)
{
  v3 = v1[5];
  v2 = v1[6];
  v4 = v1[4];
  sub_2408D3BB0();
  if ((*(v3 + 88))(v2, v4) == *MEMORY[0x277CED4C8])
  {
    v6 = v1[8];
    v5 = v1[9];
    v8 = v1[6];
    v7 = v1[7];
    (*(v1[5] + 96))(v8, v1[4]);
    (*(v6 + 32))(v5, v8, v7);
    if (qword_27E506928 != -1)
    {
      swift_once();
    }

    v9 = sub_2408D4B20();
    __swift_project_value_buffer(v9, qword_27E506FF0);
    v10 = sub_2408D4B10();
    v11 = sub_2408D4F10();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2407CF000, v10, v11, "Finished showing terms", v12, 2u);
      MEMORY[0x245CC9F60](v12, -1, -1);
    }

    v14 = v1[8];
    v13 = v1[9];
    v15 = v1[7];
    v16 = v1[2];

    v17 = sub_2408D41B0();
    (*(v14 + 8))(v13, v15);
    *v16 = v17 & 1;
    v18 = *MEMORY[0x277CEDCB0];
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D60, &qword_2408D6D08);
    (*(*(v19 - 8) + 104))(v16, v18, v19);
  }

  else
  {
    (*(v1[5] + 8))(v1[6], v1[4]);
    if (qword_27E506928 != -1)
    {
      swift_once();
    }

    v20 = sub_2408D4B20();
    __swift_project_value_buffer(v20, qword_27E506FF0);
    v21 = sub_2408D4B10();
    v22 = sub_2408D4F20();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2407CF000, v21, v22, "Waiting on terms to finish", v23, 2u);
      MEMORY[0x245CC9F60](v23, -1, -1);
    }

    v24 = v1[2];

    v25 = *MEMORY[0x277CEDCA8];
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D60, &qword_2408D6D08);
    (*(*(v26 - 8) + 104))(v24, v25, v26);
  }

  v27 = v1[1];

  return v27();
}

uint64_t sub_24080B70C(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_24080B7F4;

  return sub_24080E450(v9);
}

uint64_t sub_24080B7F4(char a1, void *a2)
{
  v4 = v2;
  v7 = *(*v3 + 40);
  v8 = *(*v3 + 32);
  v9 = *(*v3 + 24);
  v10 = *(*v3 + 16);
  v11 = *v3;

  v12 = (v7 + 16);
  v13 = *(v11 + 40);
  if (v4)
  {
    v14 = sub_2408D33E0();

    (*v12)(v13, 0, 0, v14);
    _Block_release(v13);
  }

  else
  {
    (*v12)(v13, a1 & 1, a2, 0);
    _Block_release(v13);
  }

  v15 = *(v11 + 8);

  return v15();
}

uint64_t sub_24080BB60(int a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v4[2](v4, 1);
  _Block_release(v4);
  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_24080BBDC(uint64_t a1, void *a2)
{
  v3 = sub_2408D3BA0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2407EEDBC(0, &qword_27E5070C8, 0x277CB8F30);
  v7 = a2;
  sub_2408D5020();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5070D0, &qword_2408D7540);
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  (*(v4 + 104))(v6, *MEMORY[0x277CED4B8], v3);
  return sub_2408D3BC0();
}

uint64_t sub_24080BEC8(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_24080BFB0;

  return sub_24080EABC(v9);
}

uint64_t sub_24080BFB0(char a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v9 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v7 = *(v9 + 8);

  return v7();
}

id sub_24080C160()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudSignInContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24080C214(uint64_t a1, uint64_t a2)
{
  result = sub_24080D61C(&qword_27E5070B8, a2, type metadata accessor for LocalSetupService, &unk_2408D7494);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24080C26C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2407DB6F0;

  return sub_2407FF060(a1, v5, v4);
}

uint64_t sub_24080C318(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24086F2F4(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_24080C384(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_24080C384(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2408D5210();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for AIDAServiceType(0);
        v5 = sub_2408D4DF0();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_24080C590(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_24080C480(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_24080C480(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = result - a3;
LABEL_6:
    v8 = v7;
    v9 = v6;
    while (1)
    {
      v10 = sub_2408D4D30();
      v12 = v11;
      if (v10 == sub_2408D4D30() && v12 == v13)
      {

LABEL_5:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v15 = sub_2408D5240();

      if ((v15 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v16 = *v9;
      result = v9[1];
      *v9 = result;
      v9[1] = v16;
      --v9;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24080C590(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v104 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_104:
    v6 = *v104;
    if (!*v104)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_106:
      v94 = v5;
      v95 = *(v8 + 2);
      if (v95 >= 2)
      {
        while (*a3)
        {
          v5 = v95 - 1;
          v96 = *&v8[16 * v95];
          v97 = *&v8[16 * v95 + 24];
          sub_24080CC64((*a3 + 8 * v96), (*a3 + 8 * *&v8[16 * v95 + 16]), (*a3 + 8 * v97), v6);
          if (v94)
          {
          }

          if (v97 < v96)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_24086E528(v8);
          }

          if (v95 - 2 >= *(v8 + 2))
          {
            goto LABEL_131;
          }

          v98 = &v8[16 * v95];
          *v98 = v96;
          *(v98 + 1) = v97;
          result = sub_24086E49C(v95 - 1);
          v95 = *(v8 + 2);
          if (v95 <= 1)
          {
          }
        }

        goto LABEL_141;
      }
    }

LABEL_137:
    result = sub_24086E528(v8);
    v8 = result;
    goto LABEL_106;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *a3;
      v11 = sub_2408D4D30();
      v13 = v12;
      v15 = v11 == sub_2408D4D30() && v13 == v14;
      v100 = v5;
      if (v15)
      {
        v107 = 0;
      }

      else
      {
        v107 = sub_2408D5240();
      }

      v102 = v9;
      v16 = v10 + 8 * v9 + 16;
      v105 = 8 * v9;
      v17 = 8 * v9 + 8;
      do
      {
        v5 = v7;
        v20 = v17;
        if (++v7 >= v6)
        {
          break;
        }

        v21 = v8;
        v22 = v6;
        v23 = v7;
        v24 = sub_2408D4D30();
        v26 = v25;
        v28 = v24 == sub_2408D4D30() && v26 == v27;
        v18 = v28 ? 0 : sub_2408D5240();

        v19 = v107 ^ v18;
        v16 += 8;
        v17 = v20 + 8;
        v7 = v23;
        v6 = v22;
        v8 = v21;
      }

      while ((v19 & 1) == 0);
      if (v107)
      {
        v29 = v102;
        if (v7 < v102)
        {
          goto LABEL_134;
        }

        if (v102 >= v7)
        {
          v5 = v100;
          v9 = v102;
          goto LABEL_31;
        }

        v30 = v105;
        do
        {
          if (v29 != v5)
          {
            v32 = *a3;
            if (!*a3)
            {
              goto LABEL_140;
            }

            v33 = *(v32 + v30);
            *(v32 + v30) = *(v32 + v20);
            *(v32 + v20) = v33;
          }

          ++v29;
          v20 -= 8;
          v30 += 8;
        }

        while (v29 < v5--);
      }

      v5 = v100;
      v9 = v102;
    }

LABEL_31:
    v34 = a3[1];
    if (v7 < v34)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_53:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_240869E00(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v49 = *(v8 + 2);
    v48 = *(v8 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      result = sub_240869E00((v48 > 1), v49 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v50;
    v51 = &v8[16 * v49];
    *(v51 + 4) = v9;
    *(v51 + 5) = v7;
    v52 = *v104;
    if (!*v104)
    {
      goto LABEL_142;
    }

    if (v49)
    {
      while (1)
      {
        v53 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v54 = *(v8 + 4);
          v55 = *(v8 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_73:
          if (v57)
          {
            goto LABEL_121;
          }

          v70 = &v8[16 * v50];
          v72 = *v70;
          v71 = *(v70 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_124;
          }

          v76 = &v8[16 * v53 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_128;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v53 = v50 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v80 = &v8[16 * v50];
        v82 = *v80;
        v81 = *(v80 + 1);
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_87:
        if (v75)
        {
          goto LABEL_123;
        }

        v83 = &v8[16 * v53];
        v85 = *(v83 + 4);
        v84 = *(v83 + 5);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_126;
        }

        if (v86 < v74)
        {
          goto LABEL_3;
        }

LABEL_94:
        v91 = v53 - 1;
        if (v53 - 1 >= v50)
        {
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
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
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
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v92 = *&v8[16 * v91 + 32];
        v6 = *&v8[16 * v53 + 40];
        sub_24080CC64((*a3 + 8 * v92), (*a3 + 8 * *&v8[16 * v53 + 32]), (*a3 + 8 * v6), v52);
        if (v5)
        {
        }

        if (v6 < v92)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_24086E528(v8);
        }

        if (v91 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v93 = &v8[16 * v91];
        *(v93 + 4) = v92;
        *(v93 + 5) = v6;
        result = sub_24086E49C(v53);
        v50 = *(v8 + 2);
        if (v50 <= 1)
        {
          goto LABEL_3;
        }
      }

      v58 = &v8[16 * v50 + 32];
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_119;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_120;
      }

      v65 = &v8[16 * v50];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_122;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_125;
      }

      if (v69 >= v61)
      {
        v87 = &v8[16 * v53 + 32];
        v89 = *v87;
        v88 = *(v87 + 1);
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_129;
        }

        if (v56 < v90)
        {
          v53 = v50 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_104;
    }
  }

  v35 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_135;
  }

  if (v35 >= v34)
  {
    v35 = a3[1];
  }

  if (v35 < v9)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v7 == v35)
  {
    goto LABEL_53;
  }

  v101 = v5;
  v103 = v9;
  v36 = *a3;
  v6 = *a3 + 8 * v7 - 8;
  v37 = v9 - v7;
  v106 = v35;
LABEL_42:
  v108 = v7;
  v38 = v37;
  v39 = v6;
  while (1)
  {
    v40 = sub_2408D4D30();
    v42 = v41;
    if (v40 == sub_2408D4D30() && v42 == v43)
    {

LABEL_41:
      v7 = v108 + 1;
      v6 += 8;
      --v37;
      if (v108 + 1 == v106)
      {
        v7 = v106;
        v5 = v101;
        v9 = v103;
        goto LABEL_53;
      }

      goto LABEL_42;
    }

    v45 = sub_2408D5240();

    if ((v45 & 1) == 0)
    {
      goto LABEL_41;
    }

    if (!v36)
    {
      break;
    }

    v46 = *v39;
    *v39 = v39[1];
    v39[1] = v46;
    --v39;
    if (__CFADD__(v38++, 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_24080CC64(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_47;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = sub_2408D4D30();
      v18 = v17;
      v20 = v16 == sub_2408D4D30() && v18 == v19;
      if (v20)
      {
        break;
      }

      v21 = sub_2408D5240();

      if ((v21 & 1) == 0)
      {
        goto LABEL_22;
      }

      v15 = v6;
      v20 = v7 == v6;
      v6 += 8;
      if (!v20)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

LABEL_22:
    v15 = v4;
    v20 = v7 == v4;
    v4 += 8;
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
    do
    {
      v32 = v6;
      v22 = v6 - 8;
      v5 -= 8;
      v23 = v14;
      while (1)
      {
        v23 -= 8;
        v6 = v22;
        v24 = sub_2408D4D30();
        v26 = v25;
        v28 = v24 == sub_2408D4D30() && v26 == v27;
        v29 = v28 ? 0 : sub_2408D5240();

        v30 = v5 + 8;
        if (v29)
        {
          break;
        }

        v22 = v6;
        if (v30 != v14)
        {
          *v5 = *v23;
        }

        v5 -= 8;
        v14 = v23;
        if (v23 <= v4)
        {
          v14 = v23;
          v6 = v32;
          goto LABEL_47;
        }
      }

      if (v30 != v32)
      {
        *v5 = *v6;
      }
    }

    while (v14 > v4 && v6 > v7);
  }

LABEL_47:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_24080CF48(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_24080CFF0(void *a1, uint64_t *a2)
{
  v2 = sub_2408D4D30();
  v4 = v3;
  if (v2 == sub_2408D4D30() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2408D5240();
  }

  return v7 & 1;
}

id sub_24080D080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  v5 = v2;

  return sub_2407D256C(v3, v4);
}

unint64_t sub_24080D0C8(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(i) = a2;
  v6 = result;
  v8 = *(result + 32);
  v7 = *(result + 40);
  v9 = *(result + 48);
  v10 = *a3;

  result = sub_2408CCB30(v8, v7);
  v12 = v10[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v16) = v11;
  if (v10[3] < v15)
  {
    sub_2408C7EFC(v15, i & 1);
    result = sub_2408CCB30(v8, v7);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = sub_2408D5280();
    __break(1u);
  }

  if (i)
  {
LABEL_7:
    v18 = *a3;
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_11:
    v18[(result >> 6) + 8] |= 1 << result;
    v24 = (v18[6] + 16 * result);
    *v24 = v8;
    v24[1] = v7;
    *(v18[7] + 8 * result) = v9;
    v25 = v18[2];
    v14 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v18[2] = v26;
    v16 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v23 = result;
  sub_2408C5700();
  result = v23;
  v18 = *a3;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v19 = *(v18[7] + 8 * result);
  v20 = result;

  sub_24082A3C4(v9, v19);
  v22 = v21;

  *(v18[7] + 8 * v20) = v22;

  v16 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    for (i = (v6 + 72); ; i += 3)
    {
      v9 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v31 = *a3;

      result = sub_2408CCB30(v9, v6);
      v33 = v31[2];
      v34 = (v32 & 1) == 0;
      v14 = __OFADD__(v33, v34);
      v35 = v33 + v34;
      if (v14)
      {
        break;
      }

      v8 = v32;
      if (v31[3] < v35)
      {
        sub_2408C7EFC(v35, 1);
        result = sub_2408CCB30(v9, v6);
        if ((v8 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      v3 = *a3;
      if (v8)
      {
        v27 = *(v3[7] + 8 * result);
        v28 = result;

        sub_24082A3C4(v7, v27);
        v30 = v29;

        *(v3[7] + 8 * v28) = v30;
      }

      else
      {
        v3[(result >> 6) + 8] |= 1 << result;
        v37 = (v3[6] + 16 * result);
        *v37 = v9;
        v37[1] = v6;
        *(v3[7] + 8 * result) = v7;
        v38 = v3[2];
        v14 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v14)
        {
          goto LABEL_24;
        }

        v3[2] = v39;
      }

      if (!--v16)
      {
        return result;
      }
    }

    goto LABEL_23;
  }

  return result;
}

uint64_t sub_24080D380(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_24080D3EC()
{
  if (qword_27E506928 != -1)
  {
    swift_once();
  }

  v1 = sub_2408D4B20();
  __swift_project_value_buffer(v1, qword_27E506FF0);
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F20();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2407CF000, v2, v3, "Requesting Terms ...", v4, 2u);
    MEMORY[0x245CC9F60](v4, -1, -1);
  }

  v5 = sub_2408D4B10();
  v6 = sub_2408D4F50();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2407CF000, v5, v6, "Pre Sign In terms is not supported", v7, 2u);
    MEMORY[0x245CC9F60](v7, -1, -1);
  }

  v8 = sub_2408D3500();
  sub_24080D61C(qword_27E506DC8, 255, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
  swift_allocError();
  (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277CED280], v8);
  swift_willThrow();
  v10 = *(v0 + 8);

  return v10(0);
}

uint64_t sub_24080D61C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24080D664()
{
  result = qword_27E5070C0;
  if (!qword_27E5070C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5070C0);
  }

  return result;
}

uint64_t sub_24080D6B8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2407DB6F0;

  return sub_24080BEC8(v2, v3, v5, v4);
}

id sub_24080D778(uint64_t a1, uint64_t a2)
{
  v3 = sub_2408D4B20();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2408D3B90())
  {
    sub_2408D4910();
    v7 = sub_2408D4B10();
    v8 = sub_2408D4F10();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2407CF000, v7, v8, "CDP setup is suppressed for this sign in", v9, 2u);
      MEMORY[0x245CC9F60](v9, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    return 0;
  }

  else
  {
    sub_2408076AC(a2);
    v11 = objc_allocWithZone(MEMORY[0x277CFD4A8]);
    v12 = sub_2408D4C90();

    v10 = [v11 initWithAuthenticationResults_];

    if (v10)
    {
      v13 = v10;
      v14 = sub_2408D3B60();
      [v13 setSharingChannel_];
    }
  }

  return v10;
}

uint64_t sub_24080D964(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_2408D4B20();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_2408D3C20();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[12] = v5;
  v8 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v6 = swift_task_alloc();
  v2[13] = v6;
  *v6 = v2;
  v6[1] = sub_24080DAE0;

  return v8(v5);
}