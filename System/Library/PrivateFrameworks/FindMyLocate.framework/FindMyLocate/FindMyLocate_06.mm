uint64_t sub_1B80558C4(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 57) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B8055910, v1, 0);
}

uint64_t sub_1B8055910()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 57);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  *(v4 + 32) = v1;
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_1B8055A14;
  v6 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE04418](v0 + 56, 0xD00000000000001CLL, 0x80000001B80CD560, sub_1B805C950, v4, v6);
}

uint64_t sub_1B8055A14()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = *(v2 + 16);
    v4 = sub_1B8055B58;
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = sub_1B8055B3C;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B8055B58()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1B8055BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 88) = a5;
  *(v7 + 96) = a7;
  *(v7 + 128) = a6;
  *(v7 + 80) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B8055BE8, 0, 0);
}

uint64_t sub_1B8055BE8()
{
  v1 = swift_allocObject();
  *(v0 + 104) = v1;
  *(v1 + 16) = *(v0 + 88);

  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  v3 = _s18SettingsConnectionCMa(0);
  v4 = sub_1B805B74C();
  *v2 = v0;
  v2[1] = sub_1B8055CEC;

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B805BD24, v1, v3, v4);
}

uint64_t sub_1B8055CEC()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1B8055F3C;
  }

  else
  {

    v2 = sub_1B8055E08;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B8055E08()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 64);
  v3 = swift_allocObject();
  *(v3 + 16) = *(v0 + 88);
  *(v0 + 48) = sub_1B805BD2C;
  *(v0 + 56) = v3;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B8056304;
  *(v0 + 40) = &block_descriptor_72;
  v4 = _Block_copy((v0 + 16));

  [v2 isMyLocationEnabledWithCached:v1 completion:v4];
  _Block_release(v4);
  swift_unknownObjectRelease();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1B8055F3C()
{
  v14 = v0;

  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDEE8);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD00000000000001CLL, 0x80000001B80CD560, &v13);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Failed to create proxy in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v10 = v0[15];
  v0[9] = v10;
  sub_1B80C8ACC();

  v11 = v0[1];

  return v11();
}

uint64_t sub_1B8056144(void *a1)
{
  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDEE8);
  v3 = a1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD00000000000001CLL, 0x80000001B80CD560, &v11);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Proxy error in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v11 = a1;
  return sub_1B80C8ACC();
}

void sub_1B8056304(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1B805637C(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 57) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B80563C8, v1, 0);
}

uint64_t sub_1B80563C8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 57);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  *(v4 + 32) = v1;
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_1B80564CC;
  v6 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE04418](v0 + 56, 0xD000000000000025, 0x80000001B80CD510, sub_1B805C94C, v4, v6);
}

uint64_t sub_1B80564CC()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = *(v2 + 16);
    v4 = sub_1B805C948;
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = sub_1B805C998;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B80565F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 88) = a5;
  *(v7 + 96) = a7;
  *(v7 + 128) = a6;
  *(v7 + 80) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B805661C, 0, 0);
}

uint64_t sub_1B805661C()
{
  v1 = swift_allocObject();
  *(v0 + 104) = v1;
  *(v1 + 16) = *(v0 + 88);

  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  v3 = _s18SettingsConnectionCMa(0);
  v4 = sub_1B805B74C();
  *v2 = v0;
  v2[1] = sub_1B8056720;

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B805BBE0, v1, v3, v4);
}

uint64_t sub_1B8056720()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1B8056970;
  }

  else
  {

    v2 = sub_1B805683C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B805683C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 64);
  v3 = swift_allocObject();
  *(v3 + 16) = *(v0 + 88);
  *(v0 + 48) = sub_1B805BBE8;
  *(v0 + 56) = v3;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B8056304;
  *(v0 + 40) = &block_descriptor_56;
  v4 = _Block_copy((v0 + 16));

  [v2 areFriendshipRequestsAllowedWithCached:v1 completion:v4];
  _Block_release(v4);
  swift_unknownObjectRelease();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1B8056970()
{
  v14 = v0;

  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDEE8);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000025, 0x80000001B80CD510, &v13);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Failed to create proxy in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v10 = v0[15];
  v0[9] = v10;
  sub_1B80C8ACC();

  v11 = v0[1];

  return v11();
}

uint64_t sub_1B8056B78(void *a1)
{
  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDEE8);
  v3 = a1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000025, 0x80000001B80CD510, &v11);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Proxy error in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v11 = a1;
  return sub_1B80C8ACC();
}

void sub_1B8056D38(char a1, id a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (a2)
  {
    v6 = a2;
    sub_1B80C8ACC();
  }

  else
  {
    if (qword_1ED8DD790 != -1)
    {
      swift_once();
    }

    v9 = sub_1B80C900C();
    __swift_project_value_buffer(v9, qword_1ED8DDEE8);
    v10 = sub_1B80C8FEC();
    v11 = sub_1B80C941C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = a1 & 1;
      _os_log_impl(&dword_1B7FB5000, v10, v11, a5, v12, 8u);
      MEMORY[0x1B8CB8970](v12, -1, -1);
    }

    sub_1B80C8ADC();
  }
}

uint64_t sub_1B8056E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B8056EBC, 0, 0);
}

uint64_t sub_1B8056EBC()
{
  v1 = swift_allocObject();
  *(v0 + 104) = v1;
  *(v1 + 16) = *(v0 + 88);

  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  v3 = _s18SettingsConnectionCMa(0);
  v4 = sub_1B805B74C();
  *v2 = v0;
  v2[1] = sub_1B8056FC0;

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B805BAC0, v1, v3, v4);
}

uint64_t sub_1B8056FC0()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1B80571DC;
  }

  else
  {

    v2 = sub_1B80570DC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B80570DC()
{
  v1 = v0[11];
  v2 = v0[8];
  v0[6] = sub_1B805C988;
  v0[7] = v1;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B7FCE114;
  v0[5] = &block_descriptor_37_0;
  v3 = _Block_copy(v0 + 2);

  [v2 startMonitoringPreferencesChangeForClientWithCompletion_];
  _Block_release(v3);
  swift_unknownObjectRelease();
  v4 = v0[1];

  return v4();
}

uint64_t sub_1B80571DC()
{
  v14 = v0;

  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDEE8);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD00000000000002BLL, 0x80000001B80CD490, &v13);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Failed to create proxy in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v10 = v0[15];
  v0[9] = v10;
  sub_1B80C8ACC();

  v11 = v0[1];

  return v11();
}

uint64_t sub_1B80573E4(void *a1)
{
  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDEE8);
  v3 = a1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD00000000000002BLL, 0x80000001B80CD490, &v11);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Proxy error in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v11 = a1;
  return sub_1B80C8ACC();
}

uint64_t sub_1B80575A4(char a1)
{
  *(v2 + 24) = v1;
  *(v2 + 64) = a1;
  *(v2 + 32) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B80575F0, v1, 0);
}

uint64_t sub_1B80575F0()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 64);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  *(v4 + 32) = v1;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA661C8, &qword_1B80D3768);
  *v5 = v0;
  v5[1] = sub_1B7FFF050;

  return MEMORY[0x1EEE04418](v0 + 16, 0xD000000000000013, 0x80000001B80CD4F0, sub_1B805C960, v4, v6);
}

double sub_1B8057704(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v17 - v12;
  v14 = sub_1B80C92CC();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = a2;
  *(v15 + 40) = a1;
  *(v15 + 48) = a3;
  *(v15 + 56) = a4;

  sub_1B80A1D3C(0, 0, v13, a6, v15);

  return result;
}

uint64_t sub_1B8057830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 88) = a5;
  *(v7 + 96) = a7;
  *(v7 + 128) = a6;
  *(v7 + 80) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B8057858, 0, 0);
}

uint64_t sub_1B8057858()
{
  v1 = swift_allocObject();
  *(v0 + 104) = v1;
  *(v1 + 16) = *(v0 + 88);

  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  v3 = _s18SettingsConnectionCMa(0);
  v4 = sub_1B805B74C();
  *v2 = v0;
  v2[1] = sub_1B805795C;

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B805B8D8, v1, v3, v4);
}

uint64_t sub_1B805795C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1B8057BAC;
  }

  else
  {

    v2 = sub_1B8057A78;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B8057A78()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 64);
  v3 = swift_allocObject();
  *(v3 + 16) = *(v0 + 88);
  *(v0 + 48) = sub_1B805B8E0;
  *(v0 + 56) = v3;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B7FC5CCC;
  *(v0 + 40) = &block_descriptor_24;
  v4 = _Block_copy((v0 + 16));

  [v2 allDevicesWithCached:v1 completion:v4];
  _Block_release(v4);
  swift_unknownObjectRelease();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1B8057BAC()
{
  v14 = v0;

  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDEE8);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000013, 0x80000001B80CD4F0, &v13);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Failed to create proxy in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v10 = v0[15];
  v0[9] = v10;
  sub_1B80C8ACC();

  v11 = v0[1];

  return v11();
}

uint64_t sub_1B8057DB4(void *a1)
{
  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDEE8);
  v3 = a1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000013, 0x80000001B80CD4F0, &v11);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Proxy error in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v11 = a1;
  return sub_1B80C8ACC();
}

void sub_1B8057F74(uint64_t a1, unint64_t a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    v19 = a3;
    v4 = a3;
LABEL_5:
    sub_1B80C8ACC();

    return;
  }

  if (a2 >> 60 == 15)
  {
    sub_1B8010040();
    v3 = swift_allocError();
    *v5 = 1;
    v19 = v3;
    goto LABEL_5;
  }

  sub_1B80C8CBC();
  swift_allocObject();
  sub_1B7FC62D8(a1, a2);
  sub_1B80C8CAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA661C8, &qword_1B80D3768);
  sub_1B805B8E8();
  v8 = a1;
  v9 = a2;
  sub_1B80C8C9C();

  v10 = v19;
  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v11 = sub_1B80C900C();
  __swift_project_value_buffer(v11, qword_1ED8DDEE8);

  v12 = sub_1B80C8FEC();
  v13 = sub_1B80C941C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19 = v15;
    *v14 = 136315138;
    v16 = MEMORY[0x1B8CB7B30](v10, &type metadata for Device);
    v18 = sub_1B7FB84FC(v16, v17, &v19);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_1B7FB5000, v12, v13, "allDevices succeeded: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x1B8CB8970](v15, -1, -1);
    MEMORY[0x1B8CB8970](v14, -1, -1);
  }

  v19 = v10;
  sub_1B80C8ADC();
  sub_1B7FC72F8(v8, v9);
}

uint64_t sub_1B8058214()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B805825C, v0, 0);
}

uint64_t sub_1B805825C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1B7FFA350;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v4, 0xD00000000000001FLL, 0x80000001B80CD4D0, sub_1B805C990, v3, v5);
}

double sub_1B8058348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - v10;
  v12 = sub_1B80C92CC();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a2;
  v13[5] = a1;
  v13[6] = a3;

  sub_1B80A1D3C(0, 0, v11, a5, v13);

  return result;
}

uint64_t sub_1B8058464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B8058488, 0, 0);
}

uint64_t sub_1B8058488()
{
  v1 = swift_allocObject();
  *(v0 + 104) = v1;
  *(v1 + 16) = *(v0 + 88);

  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  v3 = _s18SettingsConnectionCMa(0);
  v4 = sub_1B805B74C();
  *v2 = v0;
  v2[1] = sub_1B805858C;

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B805B744, v1, v3, v4);
}

uint64_t sub_1B805858C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1B80587A8;
  }

  else
  {

    v2 = sub_1B80586A8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B80586A8()
{
  v1 = v0[11];
  v2 = v0[8];
  v0[6] = sub_1B805B7A4;
  v0[7] = v1;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B7FCE114;
  v0[5] = &block_descriptor_6;
  v3 = _Block_copy(v0 + 2);

  [v2 emulateShowSaveMeAlertCommandWithCompletion_];
  _Block_release(v3);
  swift_unknownObjectRelease();
  v4 = v0[1];

  return v4();
}

uint64_t sub_1B80587A8()
{
  v14 = v0;

  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDEE8);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD00000000000001FLL, 0x80000001B80CD4D0, &v13);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Failed to create proxy in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v10 = v0[15];
  v0[9] = v10;
  sub_1B80C8ACC();

  v11 = v0[1];

  return v11();
}

uint64_t sub_1B80589B0(void *a1)
{
  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDEE8);
  v3 = a1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD00000000000001FLL, 0x80000001B80CD4D0, &v11);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Proxy error in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v11 = a1;
  return sub_1B80C8ACC();
}

void sub_1B8058B70(void *a1)
{
  if (a1)
  {
    v2 = a1;
    sub_1B80C8ACC();
  }

  else
  {
    sub_1B80C8AEC();
  }
}

uint64_t sub_1B8058BC0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B8058C0C, v2, 0);
}

uint64_t sub_1B8058C0C()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v7 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v7;
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1B802CFA4;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v4, 0xD000000000000022, 0x80000001B80CD620, sub_1B805C3D4, v3, v5);
}

uint64_t sub_1B8058D14(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 56) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B8058D60, v1, 0);
}

uint64_t sub_1B8058D60()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 56);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  *(v4 + 32) = v1;
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_1B7FFA350;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v5, 0xD000000000000017, 0x80000001B80CD600, sub_1B805C288, v4, v6);
}

uint64_t sub_1B8058E60(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 56) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B8058EAC, v1, 0);
}

uint64_t sub_1B8058EAC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 56);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  *(v4 + 32) = v1;
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_1B7FFA350;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v5, 0xD000000000000021, 0x80000001B80CD5D0, sub_1B805C13C, v4, v6);
}

uint64_t sub_1B8058FAC(uint64_t a1, char a2)
{
  *(v3 + 64) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B8058FF8, v2, 0);
}

uint64_t sub_1B8058FF8()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 64);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  *(v4 + 32) = v1;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_1B800B9CC;
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE04418](v6, 0xD000000000000024, 0x80000001B80CD5A0, sub_1B805BF64, v4, &type metadata for Device);
}

uint64_t sub_1B80590FC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B8059144, v1, 0);
}

uint64_t sub_1B8059144()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1B800B9CC;
  v5 = v0[2];

  return MEMORY[0x1EEE04418](v5, 0xD000000000000019, 0x80000001B80CD580, sub_1B805BD50, v3, &type metadata for DeviceWithCompanion);
}

uint64_t sub_1B8059234(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 57) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B8059280, v1, 0);
}

uint64_t sub_1B8059280()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 57);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  *(v4 + 32) = v1;
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_1B80564CC;
  v6 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE04418](v0 + 56, 0xD00000000000001CLL, 0x80000001B80CD560, sub_1B805BC0C, v4, v6);
}

uint64_t sub_1B8059384(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 57) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B80593D0, v1, 0);
}

uint64_t sub_1B80593D0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 57);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  *(v4 + 32) = v1;
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_1B80564CC;
  v6 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE04418](v0 + 56, 0xD000000000000025, 0x80000001B80CD510, sub_1B805BAC8, v4, v6);
}

uint64_t sub_1B80594D4()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B805951C, v0, 0);
}

uint64_t sub_1B805951C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1B7FFA350;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v4, 0xD00000000000002BLL, 0x80000001B80CD490, sub_1B805B9C0, v3, v5);
}

uint64_t sub_1B8059608(char a1)
{
  *(v2 + 24) = v1;
  *(v2 + 64) = a1;
  *(v2 + 32) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B8059654, v1, 0);
}

uint64_t sub_1B8059654()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 64);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  *(v4 + 32) = v1;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA661C8, &qword_1B80D3768);
  *v5 = v0;
  v5[1] = sub_1B800CF88;

  return MEMORY[0x1EEE04418](v0 + 16, 0xD000000000000013, 0x80000001B80CD4F0, sub_1B805B7C0, v4, v6);
}

uint64_t sub_1B8059768()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B80597B0, v0, 0);
}

uint64_t sub_1B80597B0()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1B7FFA350;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v4, 0xD00000000000001FLL, 0x80000001B80CD4D0, sub_1B805B644, v3, v5);
}

uint64_t sub_1B805989C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = *(v0 + 120);
  v5 = sub_1B80C92CC();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;
  swift_retain_n();
  sub_1B809F924(0, 0, v3, &unk_1B80D3850, v6);

  sub_1B7FB86D4(v3, &unk_1EBA66000, &unk_1B80D2630);
  MEMORY[0x1B8CB8A10](v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1B80599F8()
{
  sub_1B805989C();

  return MEMORY[0x1EEE6DEF0](v0);
}

double sub_1B8059A24(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E7D40] & *v4;
  v10 = sub_1B80C8E9C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  if (qword_1ED8DD4C0 != -1)
  {
    swift_once();
  }

  v11 = sub_1B80C900C();
  __swift_project_value_buffer(v11, qword_1ED8DDE30);
  v12 = sub_1B80C8FEC();
  v13 = sub_1B80C941C();
  if (os_log_type_enabled(v12, v13))
  {
    v24 = a1;
    v14 = a2;
    v15 = a4;
    v16 = a3;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v25 = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_1B7FB84FC(0xD000000000000025, 0x80000001B80CD680, &v25);
    _os_log_impl(&dword_1B7FB5000, v12, v13, "%{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x1B8CB8970](v18, -1, -1);
    v19 = v17;
    a3 = v16;
    a4 = v15;
    a2 = v14;
    a1 = v24;
    MEMORY[0x1B8CB8970](v19, -1, -1);
  }

  sub_1B80C8A0C();
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v21[2] = *(v9 + 80);
  v21[3] = *(v9 + 88);
  v21[4] = v20;
  v21[5] = a1;
  v21[6] = a2;
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  *(v22 + 24) = a4;

  sub_1B804C5D4(a1, a2);

  _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
  sub_1B80C89EC();

  sub_1B80C8A3C();

  return result;
}

uint64_t sub_1B8059D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B8059D40, 0, 0);
}

uint64_t sub_1B8059D40()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 192) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B8059DFC, Strong, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1B8059DFC()
{
  *(v0 + 200) = swift_unknownObjectWeakLoadStrong();

  return MEMORY[0x1EEE6DFA0](sub_1B8059E74, 0, 0);
}

uint64_t sub_1B8059E74()
{
  if (*(v0 + 200))
  {
    if (*(v0 + 168) >> 60 == 15)
    {
      v1 = 0;
      v2 = 0uLL;
      v3 = 0uLL;
      v4 = 0uLL;
    }

    else
    {
      sub_1B80C8CBC();
      swift_allocObject();
      sub_1B80C8CAC();
      sub_1B805B96C();
      sub_1B80C8C9C();

      v2 = *(v0 + 72);
      v3 = *(v0 + 88);
      v4 = *(v0 + 104);
      v1 = *(v0 + 120);
    }

    v7 = *(v0 + 184);
    *(v0 + 16) = v2;
    *(v0 + 32) = v3;
    *(v0 + 48) = v4;
    *(v0 + 64) = v1;
    v11 = (*(v7 + 8) + **(v7 + 8));
    v8 = swift_task_alloc();
    *(v0 + 208) = v8;
    *v8 = v0;
    v8[1] = sub_1B805A084;
    v9 = *(v0 + 176);
    v10 = *(v0 + 184);

    return v11(v0 + 16, v9, v10);
  }

  else
  {
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1B805A084()
{
  v2 = *v1;
  v2[27] = v0;

  sub_1B804FBC0(v2[2], v2[3], v2[4], v2[5], v2[6], v2[7]);
  if (v0)
  {
    v3 = sub_1B805A210;
  }

  else
  {
    v3 = sub_1B805A1AC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B805A1AC()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B805A210()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B805A274(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  *(v4 + 80) = a2;
  *(v4 + 32) = a1;
  v5 = sub_1B80C929C();
  *(v4 + 56) = v5;
  *(v4 + 64) = *(v5 - 8);
  *(v4 + 72) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B805A33C, 0, 0);
}

uint64_t sub_1B805A33C()
{
  v26 = v0;
  if (*(v0 + 80))
  {
    v1 = *(v0 + 32);
    *(v0 + 16) = v1;
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
    if (swift_dynamicCast())
    {
      (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
      if (qword_1ED8DD4C0 != -1)
      {
        swift_once();
      }

      v3 = sub_1B80C900C();
      __swift_project_value_buffer(v3, qword_1ED8DDE30);
      v4 = sub_1B80C8FEC();
      v5 = sub_1B80C941C();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_17;
      }

      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1B7FB5000, v4, v5, "meDeviceUpdated workItem cancelled", v6, 2u);
      v7 = v6;
    }

    else
    {
      if (qword_1ED8DD4C0 != -1)
      {
        swift_once();
      }

      v13 = *(v0 + 32);
      v14 = sub_1B80C900C();
      __swift_project_value_buffer(v14, qword_1ED8DDE30);
      v15 = v1;
      v4 = sub_1B80C8FEC();
      v16 = sub_1B80C93FC();
      sub_1B805C63C(v13, 1);
      if (!os_log_type_enabled(v4, v16))
      {
        goto LABEL_17;
      }

      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25 = v18;
      *v17 = 136446210;
      *(v0 + 24) = v1;
      v19 = v1;
      v20 = sub_1B80C90EC();
      v22 = sub_1B7FB84FC(v20, v21, &v25);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_1B7FB5000, v4, v16, "meDeviceUpdated workItem failure. Error %{public}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x1B8CB8970](v18, -1, -1);
      v7 = v17;
    }

    MEMORY[0x1B8CB8970](v7, -1, -1);
LABEL_17:

    (*(v0 + 40))(*(v0 + 32));
    goto LABEL_18;
  }

  if (qword_1ED8DD4C0 != -1)
  {
    swift_once();
  }

  v8 = sub_1B80C900C();
  __swift_project_value_buffer(v8, qword_1ED8DDE30);
  v9 = sub_1B80C8FEC();
  v10 = sub_1B80C941C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1B7FB5000, v9, v10, "meDeviceUpdated workItem success", v11, 2u);
    MEMORY[0x1B8CB8970](v11, -1, -1);
  }

  v12 = *(v0 + 40);

  v12(0);
LABEL_18:

  v23 = *(v0 + 8);

  return v23();
}

double sub_1B805A6D4(uint64_t a1, int a2, void *a3, void *aBlock)
{
  v5 = _Block_copy(aBlock);

  if (a3)
  {
    v6 = a3;
    a3 = sub_1B80C8D3C();
    v8 = v7;
  }

  else
  {
    v8 = 0xF000000000000000;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  sub_1B8059A24(a3, v8, sub_1B8011D00, v9);

  sub_1B7FC72F8(a3, v8);

  return result;
}

double sub_1B805A7B0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E7D40] & *v4;
  v10 = sub_1B80C8E9C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  if (qword_1ED8DD4C0 != -1)
  {
    swift_once();
  }

  v11 = sub_1B80C900C();
  __swift_project_value_buffer(v11, qword_1ED8DDE30);
  v12 = sub_1B80C8FEC();
  v13 = sub_1B80C941C();
  if (os_log_type_enabled(v12, v13))
  {
    v24 = a1;
    v14 = a2;
    v15 = a4;
    v16 = a3;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v25 = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_1B7FB84FC(0xD000000000000026, 0x80000001B80CD650, &v25);
    _os_log_impl(&dword_1B7FB5000, v12, v13, "%{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x1B8CB8970](v18, -1, -1);
    v19 = v17;
    a3 = v16;
    a4 = v15;
    a2 = v14;
    a1 = v24;
    MEMORY[0x1B8CB8970](v19, -1, -1);
  }

  sub_1B80C8A0C();
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v21[2] = *(v9 + 80);
  v21[3] = *(v9 + 88);
  v21[4] = v20;
  v21[5] = a1;
  v21[6] = a2;
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  *(v22 + 24) = a4;

  sub_1B7FC62D8(a1, a2);

  _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
  sub_1B80C89EC();

  sub_1B80C8A3C();

  return result;
}

uint64_t sub_1B805AAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[36] = a4;
  v5[37] = a5;
  v5[34] = a2;
  v5[35] = a3;
  v5[33] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B805AACC, 0, 0);
}

uint64_t sub_1B805AACC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 304) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B805AB88, Strong, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1B805AB88()
{
  *(v0 + 312) = swift_unknownObjectWeakLoadStrong();

  return MEMORY[0x1EEE6DFA0](sub_1B805AC00, 0, 0);
}

uint64_t sub_1B805AC00(__n128 a1)
{
  if (*(v1 + 312))
  {
    sub_1B80C8CBC();
    swift_allocObject();
    sub_1B80C8CAC();
    sub_1B805C648();
    sub_1B80C8C9C();
    v10 = *(v1 + 296);

    *(v1 + 117) = *(v1 + 61);
    v4 = *(v1 + 32);
    *(v1 + 104) = *(v1 + 48);
    v5 = *(v1 + 16);
    *(v1 + 88) = v4;
    *(v1 + 72) = v5;
    v9 = (*(v10 + 16) + **(v10 + 16));
    v6 = swift_task_alloc();
    *(v1 + 320) = v6;
    *v6 = v1;
    v6[1] = sub_1B805ADF4;
    v7 = *(v1 + 288);
    v8 = *(v1 + 296);

    return v9(v1 + 72, v7, v8);
  }

  else
  {
    v2 = *(v1 + 8);

    return v2();
  }
}

uint64_t sub_1B805ADF4()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 88);
  v5 = *(v2 + 104);
  if (v0)
  {
    *(v2 + 173) = *(v2 + 117);
    *(v2 + 144) = v4;
    *(v2 + 160) = v5;
    *(v2 + 128) = v3;
    sub_1B8051E08(v2 + 128);
    v6 = sub_1B805AFB8;
  }

  else
  {
    *(v2 + 229) = *(v2 + 117);
    *(v2 + 216) = v5;
    *(v2 + 200) = v4;
    *(v2 + 184) = v3;
    sub_1B8051E08(v2 + 184);
    v6 = sub_1B805AF54;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B805AF54()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B805AFB8()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B805B01C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  *(v4 + 80) = a2;
  *(v4 + 32) = a1;
  v5 = sub_1B80C929C();
  *(v4 + 56) = v5;
  *(v4 + 64) = *(v5 - 8);
  *(v4 + 72) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B805B0E4, 0, 0);
}

uint64_t sub_1B805B0E4()
{
  v27 = v0;
  if (*(v0 + 80))
  {
    v1 = *(v0 + 32);
    *(v0 + 16) = v1;
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
    if (swift_dynamicCast())
    {
      (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
      if (qword_1ED8DD4C0 != -1)
      {
        swift_once();
      }

      v3 = sub_1B80C900C();
      __swift_project_value_buffer(v3, qword_1ED8DDE30);
      v4 = sub_1B80C8FEC();
      v5 = sub_1B80C941C();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_17;
      }

      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v26 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_1B7FB84FC(0xD000000000000026, 0x80000001B80CD650, &v26);
      _os_log_impl(&dword_1B7FB5000, v4, v5, "%{public}s workItem cancelled", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x1B8CB8970](v7, -1, -1);
      v8 = v6;
    }

    else
    {
      if (qword_1ED8DD4C0 != -1)
      {
        swift_once();
      }

      v14 = *(v0 + 32);
      v15 = sub_1B80C900C();
      __swift_project_value_buffer(v15, qword_1ED8DDE30);
      v16 = v1;
      v4 = sub_1B80C8FEC();
      v17 = sub_1B80C93FC();
      sub_1B805C63C(v14, 1);
      if (!os_log_type_enabled(v4, v17))
      {
        goto LABEL_17;
      }

      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26 = v19;
      *v18 = 136446466;
      *(v18 + 4) = sub_1B7FB84FC(0xD000000000000026, 0x80000001B80CD650, &v26);
      *(v18 + 12) = 2082;
      *(v0 + 24) = v1;
      v20 = v1;
      v21 = sub_1B80C90EC();
      v23 = sub_1B7FB84FC(v21, v22, &v26);

      *(v18 + 14) = v23;
      _os_log_impl(&dword_1B7FB5000, v4, v17, "%{public}s workItem failure. Error %{public}s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v19, -1, -1);
      v8 = v18;
    }

    MEMORY[0x1B8CB8970](v8, -1, -1);
LABEL_17:

    (*(v0 + 40))(*(v0 + 32));
    goto LABEL_18;
  }

  if (qword_1ED8DD4C0 != -1)
  {
    swift_once();
  }

  v9 = sub_1B80C900C();
  __swift_project_value_buffer(v9, qword_1ED8DDE30);
  v10 = sub_1B80C8FEC();
  v11 = sub_1B80C941C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_1B7FB84FC(0xD000000000000026, 0x80000001B80CD650, &v26);
    _os_log_impl(&dword_1B7FB5000, v10, v11, "%{public}s workItem success", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1B8CB8970](v13, -1, -1);
    MEMORY[0x1B8CB8970](v12, -1, -1);
  }

  (*(v0 + 40))(0);
LABEL_18:

  v24 = *(v0 + 8);

  return v24();
}

double sub_1B805B560(uint64_t a1, int a2, void *a3, void *aBlock)
{
  v5 = _Block_copy(aBlock);
  v6 = a3;

  v7 = sub_1B80C8D3C();
  v9 = v8;

  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  sub_1B805A7B0(v7, v9, sub_1B8011BEC, v10);

  sub_1B7FC3CCC(v7, v9);

  return result;
}

uint64_t sub_1B805B67C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B7FC253C;

  return sub_1B8058464(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_1B805B74C()
{
  result = qword_1ED8DD540;
  if (!qword_1ED8DD540)
  {
    _s18SettingsConnectionCMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD540);
  }

  return result;
}

uint64_t sub_1B805B800(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B7FC253C;

  return sub_1B8057830(a1, v4, v5, v6, v7, v8, v9);
}

unint64_t sub_1B805B8E8()
{
  result = qword_1EBA661D0;
  if (!qword_1EBA661D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA661C8, &qword_1B80D3768);
    sub_1B805B96C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA661D0);
  }

  return result;
}

unint64_t sub_1B805B96C()
{
  result = qword_1ED8DD4D0;
  if (!qword_1ED8DD4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD4D0);
  }

  return result;
}

uint64_t sub_1B805B9F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B7FC253C;

  return sub_1B8056E98(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1B805BB08(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B7FC253C;

  return sub_1B80565F4(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1B805BC4C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B7FBA3EC;

  return sub_1B8055BC0(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1B805BD88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B7FC253C;

  return sub_1B8054E9C(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_1B805BE60()
{
  result = qword_1EBA661D8;
  if (!qword_1EBA661D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA661D8);
  }

  return result;
}

uint64_t sub_1B805BFA4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B7FC253C;

  return sub_1B8054314(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1B805C17C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B7FC253C;

  return sub_1B8053940(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1B805C2C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B7FC253C;

  return sub_1B80530B0(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1B805C3E0(uint64_t a1)
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
  v11[1] = sub_1B7FC253C;

  return sub_1B805264C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1B805C4D0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B7FC253C;

  return sub_1B805AAA4(v4, v5, v6, v2, v3);
}

uint64_t sub_1B805C58C(uint64_t a1, char a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1B7FC253C;

  return sub_1B805B01C(a1, a2 & 1, v7, v6);
}

void sub_1B805C63C(id a1, char a2)
{
  if (a2)
  {
  }
}

unint64_t sub_1B805C648()
{
  result = qword_1ED8DD4C8;
  if (!qword_1ED8DD4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD4C8);
  }

  return result;
}

uint64_t sub_1B805C69C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B7FBA3EC;

  return sub_1B8059D18(v4, v5, v6, v2, v3);
}

uint64_t sub_1B805C758(uint64_t a1, char a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1B7FC253C;

  return sub_1B805A274(a1, a2 & 1, v7, v6);
}

uint64_t objectdestroy_148Tm(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 16));
  a2(*(v3 + 32));

  return MEMORY[0x1EEE6BDD0](v3, a3, 7);
}

uint64_t sub_1B805C86C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B7FC253C;

  return sub_1B80133D8();
}

uint64_t Session.getAllDevices(cached:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 40) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B805C9DC, 0, 0);
}

uint64_t sub_1B805C9DC()
{
  v4 = v0;
  v3 = 2;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B805CA7C;

  return sub_1B7FC225C();
}

uint64_t sub_1B805CA7C()
{

  return MEMORY[0x1EEE6DFA0](sub_1B805CB78, 0, 0);
}

uint64_t sub_1B805CB78()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B805CC14;
  v2 = *(v0 + 40);

  return sub_1B80575A4(v2);
}

uint64_t sub_1B805CC14(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

FindMyLocate::ServiceEntitlements_optional __swiftcall ServiceEntitlements.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B80C967C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ServiceEntitlements.rawValue.getter()
{
  v1 = 0xD000000000000026;
  if (*v0 == 1)
  {
    v1 = 0xD00000000000002FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000002DLL;
  }
}

uint64_t sub_1B805CDF4(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000026;
  v3 = *a1;
  v4 = ".findmylocate.locationservice";
  if (v3 == 1)
  {
    v5 = 0xD00000000000002FLL;
  }

  else
  {
    v5 = 0xD000000000000026;
  }

  if (v3 == 1)
  {
    v6 = ".findmylocate.locationservice";
  }

  else
  {
    v6 = ".findmylocate.friendshipservice";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD00000000000002DLL;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = "kFMFGroupIdGroup";
  }

  if (*a2 == 1)
  {
    v2 = 0xD00000000000002FLL;
  }

  else
  {
    v4 = ".findmylocate.friendshipservice";
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD00000000000002DLL;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = "kFMFGroupIdGroup";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B80C981C();
  }

  return v11 & 1;
}

uint64_t sub_1B805CECC()
{
  sub_1B80C993C();
  sub_1B80C911C();

  return sub_1B80C997C();
}

uint64_t sub_1B805CF68(uint64_t a1)
{
  sub_1B80C911C();
}

uint64_t sub_1B805CFF0(uint64_t a1)
{
  sub_1B80C993C();
  sub_1B80C911C();

  return sub_1B80C997C();
}

uint64_t Session.sendFriendshipOffer(to:from:with:isFromGroup:)(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 392) = a5;
  *(v7 + 400) = v6;
  *(v7 + 480) = a6;
  *(v7 + 376) = a2;
  *(v7 + 384) = a4;
  *(v7 + 368) = a1;
  sub_1B80C8E9C();
  *(v7 + 408) = swift_task_alloc();
  *(v7 + 416) = type metadata accessor for FriendshipRequest(0);
  *(v7 + 424) = swift_task_alloc();
  v9 = sub_1B80C8E2C();
  *(v7 + 432) = v9;
  *(v7 + 440) = *(v9 - 8);
  *(v7 + 448) = swift_task_alloc();
  v10 = a3[9];
  *(v7 + 144) = a3[8];
  *(v7 + 160) = v10;
  *(v7 + 176) = a3[10];
  v11 = a3[5];
  *(v7 + 80) = a3[4];
  *(v7 + 96) = v11;
  v12 = a3[7];
  *(v7 + 112) = a3[6];
  *(v7 + 128) = v12;
  v13 = a3[1];
  *(v7 + 16) = *a3;
  *(v7 + 32) = v13;
  v14 = a3[3];
  *(v7 + 48) = a3[2];
  *(v7 + 64) = v14;

  return MEMORY[0x1EEE6DFA0](sub_1B805D1F4, 0, 0);
}

uint64_t sub_1B805D1F4()
{
  v26 = v0;
  v2 = *(v0 + 440);
  v1 = *(v0 + 448);
  v3 = *(v0 + 424);
  v4 = *(v0 + 432);
  v5 = *(v0 + 416);
  v24 = *(v0 + 480);
  v6 = *(v0 + 400);
  v7 = *(v0 + 376);
  sub_1B80C99EC();
  sub_1B80C8DAC();
  v8 = v5[7];
  (*(v2 + 16))(v3 + v8, v1, v4);
  (*(v2 + 56))(v3 + v8, 0, 1, v4);
  LOBYTE(v4) = *(v6 + 80);
  v9 = *(v6 + 88);
  v10 = *(v6 + 96);
  v11 = *(v6 + 104);
  sub_1B805D84C(v0 + 16, v0 + 192);

  _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
  sub_1B80C899C();
  v12 = v3 + v5[10];
  *v12 = v4;
  *(v12 + 8) = v9;
  *(v12 + 16) = v10;
  *(v12 + 24) = v11;
  *(v3 + v5[5]) = v7;
  v13 = (v3 + v5[6]);
  v14 = *(v0 + 16);
  v15 = *(v0 + 48);
  v13[1] = *(v0 + 32);
  v13[2] = v15;
  *v13 = v14;
  v16 = *(v0 + 64);
  v17 = *(v0 + 80);
  v18 = *(v0 + 112);
  v13[5] = *(v0 + 96);
  v13[6] = v18;
  v13[3] = v16;
  v13[4] = v17;
  v19 = *(v0 + 128);
  v20 = *(v0 + 144);
  v21 = *(v0 + 176);
  v13[9] = *(v0 + 160);
  v13[10] = v21;
  v13[7] = v19;
  v13[8] = v20;
  *(v3 + v5[8]) = 0;
  *(v3 + v5[9]) = 3;
  *(v3 + v5[11]) = v24;

  v25 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v25);
  v22 = swift_task_alloc();
  *(v0 + 456) = v22;
  *v22 = v0;
  v22[1] = sub_1B805D3F4;

  return sub_1B7FC225C();
}

uint64_t sub_1B805D3F4()
{

  return MEMORY[0x1EEE6DFA0](sub_1B805D4F0, 0, 0);
}

uint64_t sub_1B805D4F0()
{
  v1 = swift_task_alloc();
  v0[58] = v1;
  *v1 = v0;
  v1[1] = sub_1B805D590;
  v2 = v0[53];
  v3 = v0[46];

  return sub_1B800624C(v3, v2);
}

uint64_t sub_1B805D590()
{
  *(*v1 + 472) = v0;

  if (v0)
  {
    v2 = sub_1B805D754;
  }

  else
  {
    v2 = sub_1B805D6A4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B805D6A4()
{
  v2 = v0[55];
  v1 = v0[56];
  v3 = v0[54];
  sub_1B805D8BC(v0[53]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B805D754()
{
  v2 = v0[55];
  v1 = v0[56];
  v3 = v0[54];
  sub_1B805D8BC(v0[53]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B805D84C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D78, &qword_1B80D2640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B805D8BC(uint64_t a1)
{
  v2 = type metadata accessor for FriendshipRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B805D91C()
{
  result = qword_1EBA661E0;
  if (!qword_1EBA661E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA661E0);
  }

  return result;
}

unint64_t sub_1B805D974()
{
  result = qword_1ED8DBBB8;
  if (!qword_1ED8DBBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DBBB8);
  }

  return result;
}

__n128 FriendshipCanShareLocationRequest.init(handle:origin:isFromGroup:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 24);
  *(a4 + 176) = *a2;
  *(a4 + 184) = *(a2 + 8);
  *(a4 + 200) = v4;
  v5 = *(a1 + 144);
  *(a4 + 128) = *(a1 + 128);
  *(a4 + 144) = v5;
  *(a4 + 160) = *(a1 + 160);
  v6 = *(a1 + 80);
  *(a4 + 64) = *(a1 + 64);
  *(a4 + 80) = v6;
  v7 = *(a1 + 112);
  *(a4 + 96) = *(a1 + 96);
  *(a4 + 112) = v7;
  v8 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v8;
  result = *(a1 + 48);
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 48) = result;
  *(a4 + 208) = a3;
  return result;
}

uint64_t FriendshipRequest.init(toHandles:callerHandle:endDate:origin:requestType:responseType:isFromGroup:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, char *a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v16 = sub_1B80C8E9C();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v32 = a2[8];
  v33 = a2[9];
  v34 = a2[10];
  v28 = a2[4];
  v29 = a2[5];
  v30 = a2[6];
  v31 = a2[7];
  v24 = *a2;
  v27 = a2[3];
  v25 = a2[1];
  v26 = a2[2];
  LOBYTE(a2) = *a4;
  v23 = *(a4 + 8);
  v17 = *(a4 + 24);
  LOBYTE(a5) = *a5;
  v18 = *a6;
  _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
  v19 = type metadata accessor for FriendshipRequest(0);
  sub_1B80C899C();
  v20 = a8 + v19[10];
  *v20 = a2;
  *(v20 + 8) = v23;
  *(v20 + 24) = v17;
  *(a8 + v19[5]) = a1;
  v21 = (a8 + v19[6]);
  v21[8] = v32;
  v21[9] = v33;
  v21[10] = v34;
  v21[4] = v28;
  v21[5] = v29;
  v21[6] = v30;
  v21[7] = v31;
  *v21 = v24;
  v21[1] = v25;
  v21[2] = v26;
  v21[3] = v27;
  *(a8 + v19[8]) = a5;
  *(a8 + v19[9]) = v18;
  result = sub_1B805DC34(a3, a8 + v19[7]);
  *(a8 + v19[11]) = a7;
  return result;
}

uint64_t type metadata accessor for FriendshipRequest(uint64_t a1)
{
  result = qword_1EBA65A10;
  if (!qword_1EBA65A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B805DC34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FriendshipRequest.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66020, &qword_1B80D2A10);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

double FriendshipRequest.toHandles.getter()
{
  type metadata accessor for FriendshipRequest(0);

  return result;
}

uint64_t FriendshipRequest.callerHandle.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FriendshipRequest(0) + 24));
  v4 = v3[7];
  v5 = v3[9];
  v27 = v3[8];
  v28 = v5;
  v6 = v3[9];
  v29 = v3[10];
  v7 = v3[3];
  v8 = v3[5];
  v23 = v3[4];
  v9 = v23;
  v24 = v8;
  v10 = v3[5];
  v11 = v3[7];
  v25 = v3[6];
  v12 = v25;
  v26 = v11;
  v13 = v3[1];
  v14 = v3[3];
  v21 = v3[2];
  v15 = v21;
  v22 = v14;
  v16 = v3[1];
  v20[0] = *v3;
  v17 = v20[0];
  v20[1] = v16;
  a1[8] = v27;
  a1[9] = v6;
  a1[10] = v3[10];
  a1[4] = v9;
  a1[5] = v10;
  a1[6] = v12;
  a1[7] = v4;
  *a1 = v17;
  a1[1] = v13;
  a1[2] = v15;
  a1[3] = v7;
  return sub_1B7FB8448(v20, &v19, &qword_1EBA65D78, &qword_1B80D2640);
}

uint64_t FriendshipRequest.requestType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FriendshipRequest(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t FriendshipRequest.respondType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FriendshipRequest(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

double FriendshipRequest.origin.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FriendshipRequest(0) + 40);
  v4 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;

  return result;
}

uint64_t FriendshipRequest.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v29[-v2];
  *&v42[0] = 0;
  *(&v42[0] + 1) = 0xE000000000000000;
  sub_1B80C952C();
  v41 = v42[0];
  MEMORY[0x1B8CB7A40](60, 0xE100000000000000);
  MEMORY[0x1B8CB7A40](0xD000000000000011, 0x80000001B80D39D0);
  MEMORY[0x1B8CB7A40](0x6469202020200A3ALL, 0xEA0000000000203ALL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66020, &qword_1B80D2A10);
  sub_1B8060054(&qword_1EBA661E8, MEMORY[0x1E699C7F8]);
  v4 = sub_1B80C97FC();
  MEMORY[0x1B8CB7A40](v4);

  MEMORY[0x1B8CB7A40](0x69726F202020200ALL, 0xED0000203A6E6967);
  v5 = type metadata accessor for FriendshipRequest(0);
  v6 = v0 + v5[10];
  v7 = *(v6 + 24);
  LOBYTE(v42[0]) = *v6;
  *(v42 + 8) = *(v6 + 8);
  *(&v42[1] + 1) = v7;
  v8 = RequestOrigin.description.getter();
  MEMORY[0x1B8CB7A40](v8);

  MEMORY[0x1B8CB7A40](0xD000000000000010, 0x80000001B80CD720);
  v9 = MEMORY[0x1B8CB7B30](*(v0 + v5[5]), &type metadata for Handle);
  MEMORY[0x1B8CB7A40](v9);

  MEMORY[0x1B8CB7A40](0xD000000000000013, 0x80000001B80CD740);
  v10 = (v0 + v5[6]);
  v11 = v10[7];
  v12 = v10[9];
  v49 = v10[8];
  v50 = v12;
  v13 = v10[9];
  v51 = v10[10];
  v14 = v10[3];
  v15 = v10[5];
  v45 = v10[4];
  v46 = v15;
  v16 = v10[5];
  v17 = v10[7];
  v47 = v10[6];
  v48 = v17;
  v18 = v10[1];
  v42[0] = *v10;
  v42[1] = v18;
  v19 = v10[3];
  v21 = *v10;
  v20 = v10[1];
  v43 = v10[2];
  v44 = v19;
  v38 = v49;
  v39 = v13;
  v40 = v10[10];
  v34 = v45;
  v35 = v16;
  v36 = v47;
  v37 = v11;
  v30 = v21;
  v31 = v20;
  v32 = v43;
  v33 = v14;
  sub_1B7FB8448(v42, v29, &qword_1EBA65D78, &qword_1B80D2640);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D78, &qword_1B80D2640);
  v22 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v22);

  MEMORY[0x1B8CB7A40](0x646E65202020200ALL, 0xEE00203A65746144);
  sub_1B7FB8448(v0 + v5[7], v3, &unk_1EBA65FD0, &unk_1B80D1920);
  v23 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v23);

  MEMORY[0x1B8CB7A40](0xD000000000000011, 0x80000001B80CD760);
  LOBYTE(v30) = *(v0 + v5[8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA661F0, &qword_1B80D3A08);
  v24 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v24);

  MEMORY[0x1B8CB7A40](0xD000000000000012, 0x80000001B80CD780);
  LOBYTE(v30) = *(v0 + v5[9]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA661F8, &qword_1B80D3A10);
  v25 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v25);

  MEMORY[0x1B8CB7A40](0xD000000000000011, 0x80000001B80CD7A0);
  if (*(v0 + v5[11]))
  {
    v26 = 1702195828;
  }

  else
  {
    v26 = 0x65736C6166;
  }

  if (*(v0 + v5[11]))
  {
    v27 = 0xE400000000000000;
  }

  else
  {
    v27 = 0xE500000000000000;
  }

  MEMORY[0x1B8CB7A40](v26, v27);

  MEMORY[0x1B8CB7A40](15882, 0xE200000000000000);
  return v41;
}

uint64_t sub_1B805E3C0()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6E696769726FLL;
  if (v1 != 6)
  {
    v3 = 0x72476D6F72467369;
  }

  v4 = 0x5474736575716572;
  if (v1 != 4)
  {
    v4 = 0x54646E6F70736572;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x614872656C6C6163;
  if (v1 != 2)
  {
    v5 = 0x65746144646E65;
  }

  if (*v0)
  {
    v2 = 0x656C646E61486F74;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B805E4D0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B80606B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B805E4F8(uint64_t a1)
{
  v2 = sub_1B805FDC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B805E534(uint64_t a1)
{
  v2 = sub_1B805FDC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FriendshipRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66200, &qword_1B80D3A18);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26[-v7 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B805FDC4();
  sub_1B80C99DC();
  LOBYTE(v43) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66020, &qword_1B80D2A10);
  sub_1B8060054(&qword_1EBA66210, MEMORY[0x1E699C7E0]);
  sub_1B80C97DC();
  if (!v2)
  {
    v9 = type metadata accessor for FriendshipRequest(0);
    v55[0] = *(v3 + v9[5]);
    v54 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DE8, &qword_1B80D3A20);
    sub_1B7FDC3C8(&qword_1ED8DBC00, sub_1B7FDC224, MEMORY[0x1E69E6300]);
    sub_1B80C97DC();
    v10 = (v3 + v9[6]);
    v11 = v10[8];
    v12 = v10[6];
    v50 = v10[7];
    v51 = v11;
    v13 = v10[8];
    v14 = v10[10];
    v52 = v10[9];
    v53 = v14;
    v15 = v10[4];
    v16 = v10[2];
    v46 = v10[3];
    v47 = v15;
    v17 = v10[4];
    v18 = v10[6];
    v48 = v10[5];
    v49 = v18;
    v19 = *v10;
    v20 = v10[2];
    v44 = v10[1];
    v45 = v20;
    v21 = *v10;
    v40 = v13;
    v41 = v52;
    v42 = v10[10];
    v43 = v21;
    v36 = v17;
    v37 = v48;
    v38 = v12;
    v39 = v50;
    v32 = v19;
    v33 = v44;
    v34 = v16;
    v35 = v46;
    v31 = 2;
    sub_1B7FB8448(&v43, v30, &qword_1EBA65D78, &qword_1B80D2640);
    sub_1B7FDC224();
    sub_1B80C977C();
    v30[8] = v40;
    v30[9] = v41;
    v30[10] = v42;
    v30[4] = v36;
    v30[5] = v37;
    v30[6] = v38;
    v30[7] = v39;
    v30[0] = v32;
    v30[1] = v33;
    v30[2] = v34;
    v30[3] = v35;
    sub_1B7FB86D4(v30, &qword_1EBA65D78, &qword_1B80D2640);
    v26[0] = 3;
    sub_1B80C8E2C();
    sub_1B7FBAD64(&qword_1ED8DC390, MEMORY[0x1E6969538]);
    sub_1B80C977C();
    v26[0] = *(v3 + v9[8]);
    v29 = 4;
    sub_1B805FE18();
    sub_1B80C977C();
    v26[0] = *(v3 + v9[9]);
    v29 = 5;
    sub_1B805FE6C();
    sub_1B80C977C();
    v22 = v3 + v9[10];
    v23 = *(v22 + 24);
    v26[0] = *v22;
    v27 = *(v22 + 8);
    v28 = v23;
    v29 = 6;
    sub_1B7FDC2CC();

    sub_1B80C97DC();

    v26[0] = 7;
    sub_1B80C979C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t FriendshipRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v34 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66020, &qword_1B80D2A10);
  v39 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - v7;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66228, &qword_1B80D3A28);
  v38 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v10 = &v34 - v9;
  v11 = type metadata accessor for FriendshipRequest(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1B805FDC4();
  v40 = v10;
  v15 = v42;
  sub_1B80C99BC();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_0(v59);
  }

  v42 = v5;
  v16 = v38;
  v17 = v39;
  LOBYTE(v48) = 0;
  sub_1B8060054(&qword_1EBA66230, MEMORY[0x1E699C7F0]);
  sub_1B80C972C();
  v18 = *(v17 + 32);
  v35 = v13;
  v36 = v6;
  v18(v13, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DE8, &qword_1B80D3A20);
  v43[0] = 1;
  sub_1B7FDC3C8(&qword_1ED8DBB88, sub_1B7FDC440, MEMORY[0x1E69E6330]);
  sub_1B80C972C();
  *&v35[*(v11 + 20)] = v48;
  v47 = 2;
  sub_1B7FDC440();
  sub_1B80C96CC();
  v34 = v11;
  v19 = &v35[*(v11 + 24)];
  v20 = v57;
  *(v19 + 8) = v56;
  *(v19 + 9) = v20;
  *(v19 + 10) = v58;
  v21 = v53;
  *(v19 + 4) = v52;
  *(v19 + 5) = v21;
  v22 = v55;
  *(v19 + 6) = v54;
  *(v19 + 7) = v22;
  v24 = v49;
  v23 = v50;
  *v19 = v48;
  *(v19 + 1) = v24;
  v25 = v51;
  *(v19 + 2) = v23;
  *(v19 + 3) = v25;
  sub_1B80C8E2C();
  v43[0] = 3;
  sub_1B7FBAD64(&qword_1ED8DBBD8, MEMORY[0x1E6969558]);
  v26 = v42;
  v27 = v40;
  sub_1B80C96CC();
  v28 = v34;
  sub_1B805DC34(v26, &v35[v34[7]]);
  v46 = 4;
  sub_1B805FEC0();
  sub_1B80C96CC();
  v29 = v35;
  v35[v28[8]] = v43[0];
  v46 = 5;
  sub_1B805FF14();
  sub_1B80C96CC();
  *(v29 + v28[9]) = v43[0];
  v46 = 6;
  sub_1B7FCFB00();
  sub_1B80C972C();
  v30 = v45;
  v31 = v29 + v28[10];
  *v31 = v43[0];
  *(v31 + 8) = v44;
  *(v31 + 24) = v30;
  v43[0] = 7;
  v32 = sub_1B80C96EC();
  (*(v16 + 8))(v27, v41);
  *(v29 + v28[11]) = v32 & 1;
  sub_1B805FF68(v29, v37);
  __swift_destroy_boxed_opaque_existential_0(v59);
  return sub_1B805D8BC(v29);
}

uint64_t sub_1B805F30C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66020, &qword_1B80D2A10);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FriendshipCanShareLocationRequest.handle.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[9];
  v25 = v1[8];
  v26 = v3;
  v4 = v1[9];
  v27 = v1[10];
  v5 = v1[3];
  v6 = v1[5];
  v21 = v1[4];
  v7 = v21;
  v22 = v6;
  v8 = v1[5];
  v9 = v1[7];
  v23 = v1[6];
  v10 = v23;
  v24 = v9;
  v11 = v1[1];
  v18[0] = *v1;
  v18[1] = v11;
  v12 = v1[3];
  v14 = *v1;
  v13 = v1[1];
  v19 = v1[2];
  v15 = v19;
  v20 = v12;
  a1[8] = v25;
  a1[9] = v4;
  a1[10] = v1[10];
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v10;
  a1[7] = v2;
  *a1 = v14;
  a1[1] = v13;
  a1[2] = v15;
  a1[3] = v5;
  return sub_1B7FC8DA4(v18, &v17);
}

double FriendshipCanShareLocationRequest.origin.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 200);
  *a1 = *(v1 + 176);
  *(a1 + 8) = *(v1 + 184);
  *(a1 + 24) = v2;

  return result;
}

uint64_t FriendshipCanShareLocationRequest.description.getter()
{
  sub_1B80C952C();
  MEMORY[0x1B8CB7A40](60, 0xE100000000000000);
  MEMORY[0x1B8CB7A40](0xD000000000000021, 0x80000001B80D3A10);
  MEMORY[0x1B8CB7A40](0x726F202020200A3ALL, 0xEE00203A6E696769);
  v0 = RequestOrigin.description.getter();
  MEMORY[0x1B8CB7A40](v0);

  MEMORY[0x1B8CB7A40](0x6E6168202020200ALL, 0xED0000203A656C64);
  v1 = Handle.description.getter();
  MEMORY[0x1B8CB7A40](v1);

  MEMORY[0x1B8CB7A40](0xD000000000000011, 0x80000001B80CD7A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66248, &qword_1B80D3A58);
  v2 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v2);

  MEMORY[0x1B8CB7A40](15882, 0xE200000000000000);
  return 0;
}

uint64_t sub_1B805F5FC()
{
  v1 = 0x6E696769726FLL;
  if (*v0 != 1)
  {
    v1 = 0x72476D6F72467369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C646E6168;
  }
}

uint64_t sub_1B805F658@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B8060954(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B805F680(uint64_t a1)
{
  v2 = sub_1B805FFCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B805F6BC(uint64_t a1)
{
  v2 = sub_1B805FFCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FriendshipCanShareLocationRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66250, &qword_1B80D3A60);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - v5;
  v7 = v1[9];
  v56 = v1[8];
  v57 = v7;
  v58 = v1[10];
  v8 = v1[5];
  v52 = v1[4];
  v53 = v8;
  v9 = v1[7];
  v54 = v1[6];
  v55 = v9;
  v10 = v1[1];
  v48 = *v1;
  v49 = v10;
  v11 = v1[3];
  v50 = v1[2];
  v51 = v11;
  v18 = *(v1 + 176);
  v12 = *(v1 + 23);
  v16 = *(v1 + 24);
  v17 = v12;
  v19 = *(v1 + 25);
  v15[1] = *(v1 + 208);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7FC8DA4(&v48, &v37);
  sub_1B805FFCC();
  sub_1B80C99DC();
  v45 = v56;
  v46 = v57;
  v47 = v58;
  v41 = v52;
  v42 = v53;
  v43 = v54;
  v44 = v55;
  v37 = v48;
  v38 = v49;
  v39 = v50;
  v40 = v51;
  v36 = 0;
  sub_1B7FDC224();
  v13 = v59;
  sub_1B80C97DC();
  if (v13)
  {
    v33 = v45;
    v34 = v46;
    v35 = v47;
    v29 = v41;
    v30 = v42;
    v31 = v43;
    v32 = v44;
    v25 = v37;
    v26 = v38;
    v27 = v39;
    v28 = v40;
    sub_1B7FCAD28(&v25);
  }

  else
  {
    v33 = v45;
    v34 = v46;
    v35 = v47;
    v29 = v41;
    v30 = v42;
    v31 = v43;
    v32 = v44;
    v25 = v37;
    v26 = v38;
    v27 = v39;
    v28 = v40;
    sub_1B7FCAD28(&v25);
    v21[0] = v18;
    v22 = v17;
    v23 = v16;
    v24 = v19;
    v20 = 1;
    sub_1B7FDC2CC();

    sub_1B80C97DC();

    v21[0] = 2;
    sub_1B80C976C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t FriendshipCanShareLocationRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66258, &qword_1B80D3A68);
  v5 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v7 = &v21 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B805FFCC();
  sub_1B80C99BC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v8 = v5;
  v79 = 0;
  sub_1B7FDC440();
  sub_1B80C972C();
  v74 = v63;
  v75 = v64;
  v76 = v65;
  v70 = v59;
  v71 = v60;
  v72 = v61;
  v73 = v62;
  v66 = v55;
  v67 = v56;
  v68 = v57;
  v69 = v58;
  LOBYTE(v25) = 1;
  sub_1B7FCFB00();
  sub_1B80C972C();
  v77 = v39;
  v22 = v40;
  v23 = *(&v39 + 1);
  v9 = *(&v40 + 1);
  v78 = 2;
  v10 = sub_1B80C96BC();
  (*(v8 + 8))(v7, v24);
  v33 = v74;
  v34 = v75;
  v35 = v76;
  v29 = v70;
  v30 = v71;
  v11 = v73;
  v31 = v72;
  v32 = v73;
  v25 = v66;
  v26 = v67;
  v12 = v69;
  v27 = v68;
  v28 = v69;
  LOBYTE(v8) = v77;
  LOBYTE(v36) = v77;
  v14 = v22;
  v13 = v23;
  *(&v36 + 1) = v23;
  *&v37 = v22;
  *(&v37 + 1) = v9;
  v38 = v10;
  *(a2 + 208) = v10;
  v15 = v30;
  *(a2 + 96) = v31;
  *(a2 + 112) = v11;
  v16 = v34;
  *(a2 + 128) = v33;
  *(a2 + 144) = v16;
  v17 = v29;
  *(a2 + 32) = v27;
  *(a2 + 48) = v12;
  *(a2 + 64) = v17;
  *(a2 + 80) = v15;
  v18 = v26;
  *a2 = v25;
  *(a2 + 16) = v18;
  v19 = v36;
  *(a2 + 160) = v35;
  *(a2 + 176) = v19;
  *(a2 + 192) = v37;
  sub_1B8010CC0(&v25, &v39);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v47 = v74;
  v48 = v75;
  v49 = v76;
  v43 = v70;
  v44 = v71;
  v45 = v72;
  v46 = v73;
  v39 = v66;
  v40 = v67;
  v41 = v68;
  v42 = v69;
  v50 = v8;
  v51 = v13;
  v52 = v14;
  v53 = v9;
  v54 = v10;
  return sub_1B8012D18(&v39);
}

unint64_t sub_1B805FDC4()
{
  result = qword_1EBA66208;
  if (!qword_1EBA66208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66208);
  }

  return result;
}

unint64_t sub_1B805FE18()
{
  result = qword_1EBA66218;
  if (!qword_1EBA66218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66218);
  }

  return result;
}

unint64_t sub_1B805FE6C()
{
  result = qword_1EBA66220;
  if (!qword_1EBA66220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66220);
  }

  return result;
}

unint64_t sub_1B805FEC0()
{
  result = qword_1EBA66238;
  if (!qword_1EBA66238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66238);
  }

  return result;
}

unint64_t sub_1B805FF14()
{
  result = qword_1EBA66240;
  if (!qword_1EBA66240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66240);
  }

  return result;
}

uint64_t sub_1B805FF68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FriendshipRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B805FFCC()
{
  result = qword_1ED8DC000;
  if (!qword_1ED8DC000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC000);
  }

  return result;
}

uint64_t sub_1B8060054(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA66020, &qword_1B80D2A10);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1B80600CC(uint64_t a1)
{
  sub_1B80602B8(319, &qword_1EBA66268, type metadata accessor for FriendshipRequest, MEMORY[0x1E699C7D8]);
  if (v1 <= 0x3F)
  {
    sub_1B806031C(319, &qword_1EBA65938, &type metadata for Handle, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1B806031C(319, &qword_1ED8DD998, &type metadata for Handle, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B80602B8(319, &qword_1ED8DDAC0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1B806031C(319, &qword_1EBA659F8, &type metadata for FriendshipRequestType, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1B806031C(319, &qword_1EBA659E0, &type metadata for FriendshipResponseToInviteType, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1B80602B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B806031C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 __swift_memcpy209_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_1B80603B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 209))
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

uint64_t sub_1B80603F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 208) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 209) = 1;
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

    *(result + 209) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B80604A4()
{
  result = qword_1EBA66270;
  if (!qword_1EBA66270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66270);
  }

  return result;
}

unint64_t sub_1B80604FC()
{
  result = qword_1EBA66278;
  if (!qword_1EBA66278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66278);
  }

  return result;
}

unint64_t sub_1B8060554()
{
  result = qword_1ED8DBFF0;
  if (!qword_1ED8DBFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DBFF0);
  }

  return result;
}

unint64_t sub_1B80605AC()
{
  result = qword_1ED8DBFF8;
  if (!qword_1ED8DBFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DBFF8);
  }

  return result;
}

unint64_t sub_1B8060604()
{
  result = qword_1EBA66280;
  if (!qword_1EBA66280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66280);
  }

  return result;
}

unint64_t sub_1B806065C()
{
  result = qword_1EBA66288;
  if (!qword_1EBA66288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66288);
  }

  return result;
}

uint64_t sub_1B80606B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C646E61486F74 && a2 == 0xE900000000000073 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614872656C6C6163 && a2 == 0xEC000000656C646ELL || (sub_1B80C981C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5474736575716572 && a2 == 0xEB00000000657079 || (sub_1B80C981C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x54646E6F70736572 && a2 == 0xEB00000000657079 || (sub_1B80C981C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E696769726FLL && a2 == 0xE600000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x72476D6F72467369 && a2 == 0xEB0000000070756FLL)
  {

    return 7;
  }

  else
  {
    v6 = sub_1B80C981C();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1B8060954(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E696769726FLL && a2 == 0xE600000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72476D6F72467369 && a2 == 0xEB0000000070756FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B80C981C();

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

BOOL static FriendshipRequestStatus.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 5:
      return v3 == 5;
    case 4:
      return v3 == 4;
    case 3:
      return v3 == 3;
  }

  if ((v3 - 3) < 3)
  {
    return 0;
  }

  return v2 == v3;
}

unint64_t sub_1B8060AF4()
{
  v1 = 0x73736563637573;
  v2 = 0x6572756C696166;
  if (*v0 != 2)
  {
    v2 = 0x676E69646E6570;
  }

  if (*v0)
  {
    v1 = 0xD00000000000001ELL;
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

uint64_t sub_1B8060B74@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B8064580(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B8060B9C(uint64_t a1)
{
  v2 = sub_1B806136C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8060BD8(uint64_t a1)
{
  v2 = sub_1B806136C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8060C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B80C981C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B8060CAC(uint64_t a1)
{
  v2 = sub_1B8061414();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8060CE8(uint64_t a1)
{
  v2 = sub_1B8061414();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8060D30(uint64_t a1)
{
  v2 = sub_1B80614BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8060D6C(uint64_t a1)
{
  v2 = sub_1B80614BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8060DA8(uint64_t a1)
{
  v2 = sub_1B80613C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8060DE4(uint64_t a1)
{
  v2 = sub_1B80613C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8060E20(uint64_t a1)
{
  v2 = sub_1B8061510();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8060E5C(uint64_t a1)
{
  v2 = sub_1B8061510();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FriendshipRequestStatus.encode(to:)(void *a1)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66290, &qword_1B80D3E80);
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v26 = &v22 - v3;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66298, &qword_1B80D3E88);
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v27 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA662A0, &qword_1B80D3E90);
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA662A8, &qword_1B80D3E98);
  v22 = *(v8 - 8);
  v23 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA662B0, &qword_1B80D3EA0);
  v11 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v13 = &v22 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B806136C();
  sub_1B80C99DC();
  switch(v14)
  {
    case 5:
      v37 = 3;
      sub_1B80613C0();
      v18 = v26;
      v17 = v32;
      sub_1B80C974C();
      (*(v28 + 8))(v18, v30);
      return (*(v11 + 8))(v13, v17);
    case 4:
      v34 = 1;
      sub_1B80614BC();
      v17 = v32;
      sub_1B80C974C();
      (*(v24 + 8))(v7, v25);
      return (*(v11 + 8))(v13, v17);
    case 3:
      v33 = 0;
      sub_1B8061510();
      v15 = v32;
      sub_1B80C974C();
      (*(v22 + 8))(v10, v23);
      return (*(v11 + 8))(v13, v15);
    default:
      v36 = 2;
      sub_1B8061414();
      v19 = v27;
      v20 = v32;
      sub_1B80C974C();
      v35 = v14;
      sub_1B8061468();
      v21 = v31;
      sub_1B80C97DC();
      (*(v29 + 8))(v19, v21);
      return (*(v11 + 8))(v13, v20);
  }
}

unint64_t sub_1B806136C()
{
  result = qword_1EBA662B8;
  if (!qword_1EBA662B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA662B8);
  }

  return result;
}

unint64_t sub_1B80613C0()
{
  result = qword_1EBA662C0;
  if (!qword_1EBA662C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA662C0);
  }

  return result;
}

unint64_t sub_1B8061414()
{
  result = qword_1EBA662C8;
  if (!qword_1EBA662C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA662C8);
  }

  return result;
}

unint64_t sub_1B8061468()
{
  result = qword_1EBA662D0;
  if (!qword_1EBA662D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA662D0);
  }

  return result;
}

unint64_t sub_1B80614BC()
{
  result = qword_1EBA662D8;
  if (!qword_1EBA662D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA662D8);
  }

  return result;
}

unint64_t sub_1B8061510()
{
  result = qword_1EBA662E0;
  if (!qword_1EBA662E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA662E0);
  }

  return result;
}

uint64_t FriendshipRequestStatus.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA662E8, &qword_1B80D3EA8);
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v52 = v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA662F0, &qword_1B80D3EB0);
  v6 = *(v5 - 8);
  v49 = v5;
  v50 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v51 = v41 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA662F8, &qword_1B80D3EB8);
  v47 = *(v8 - 8);
  v48 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66300, &qword_1B80D3EC0);
  v44 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66308, &qword_1B80D3EC8);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v41 - v16;
  v18 = a1[3];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1B806136C();
  v19 = v54;
  sub_1B80C99BC();
  if (!v19)
  {
    v20 = v13;
    v42 = v11;
    v43 = 0;
    v22 = v51;
    v21 = v52;
    v54 = v15;
    v23 = v53;
    v24 = v17;
    v25 = sub_1B80C973C();
    v26 = *(v25 + 16);
    if (!v26 || ((v27 = *(v25 + 32), v26 == 1) ? (v28 = v27 == 4) : (v28 = 1), v28))
    {
      v29 = sub_1B80C955C();
      swift_allocError();
      v31 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66310, &qword_1B80D3ED0);
      *v31 = &type metadata for FriendshipRequestStatus;
      sub_1B80C969C();
      sub_1B80C954C();
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6AF8], v29);
      swift_willThrow();
      (*(v54 + 8))(v24, v14);
      goto LABEL_21;
    }

    v41[1] = v25;
    if (v27 <= 1)
    {
      if (v27)
      {
        v57 = 1;
        sub_1B80614BC();
        v35 = v43;
        sub_1B80C968C();
        if (!v35)
        {
          (*(v47 + 8))(v10, v48);
          (*(v54 + 8))(v17, v14);
          swift_unknownObjectRelease();
          *v23 = 4;
          return __swift_destroy_boxed_opaque_existential_0(v55);
        }
      }

      else
      {
        v56 = 0;
        sub_1B8061510();
        v32 = v43;
        sub_1B80C968C();
        if (!v32)
        {
          (*(v44 + 8))(v20, v42);
          (*(v54 + 8))(v17, v14);
          swift_unknownObjectRelease();
          *v23 = 3;
          return __swift_destroy_boxed_opaque_existential_0(v55);
        }
      }

      (*(v54 + 8))(v17, v14);
LABEL_21:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0(v55);
    }

    if (v27 != 2)
    {
      v60 = 3;
      sub_1B80613C0();
      v36 = v21;
      v37 = v43;
      sub_1B80C968C();
      v38 = v54;
      if (!v37)
      {
        (*(v45 + 8))(v36, v46);
        (*(v38 + 8))(v24, v14);
        swift_unknownObjectRelease();
        *v23 = 5;
        return __swift_destroy_boxed_opaque_existential_0(v55);
      }

      (*(v54 + 8))(v24, v14);
      goto LABEL_21;
    }

    v59 = 2;
    sub_1B8061414();
    v33 = v43;
    sub_1B80C968C();
    v34 = v54;
    if (v33)
    {
      (*(v54 + 8))(v17, v14);
      goto LABEL_21;
    }

    sub_1B8061C70();
    v40 = v49;
    sub_1B80C972C();
    (*(v50 + 8))(v22, v40);
    (*(v34 + 8))(v17, v14);
    swift_unknownObjectRelease();
    *v23 = v58;
  }

  return __swift_destroy_boxed_opaque_existential_0(v55);
}

unint64_t sub_1B8061C70()
{
  result = qword_1EBA66318;
  if (!qword_1EBA66318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66318);
  }

  return result;
}

uint64_t sub_1B8061CC4()
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

uint64_t sub_1B8061CF8()
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

uint64_t sub_1B8061D2C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 8;
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

BOOL sub_1B8061D60()
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

BOOL sub_1B8061DBC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 5:
      return v3 == 5;
    case 4:
      return v3 == 4;
    case 3:
      return v3 == 3;
  }

  if ((v3 - 3) < 3)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t sub_1B8061E24()
{
  v1 = 0x5264696C61766E69;
  if (*v0 != 1)
  {
    v1 = 0x46646E616D6D6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x53676E697373696DLL;
  }
}

uint64_t sub_1B8061EA4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B80646EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B8061ECC(uint64_t a1)
{
  v2 = sub_1B8062418();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8061F08(uint64_t a1)
{
  v2 = sub_1B8062418();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8061F44(uint64_t a1)
{
  v2 = sub_1B806246C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8061F80(uint64_t a1)
{
  v2 = sub_1B806246C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8061FBC(uint64_t a1)
{
  v2 = sub_1B80624C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8061FF8(uint64_t a1)
{
  v2 = sub_1B80624C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8062034(uint64_t a1)
{
  v2 = sub_1B8062514();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8062070(uint64_t a1)
{
  v2 = sub_1B8062514();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FriendshipRequestError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66320, &qword_1B80D3ED8);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66328, &qword_1B80D3EE0);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66330, &qword_1B80D3EE8);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66338, &qword_1B80D3EF0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8062418();
  sub_1B80C99DC();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1B80624C0();
      v9 = v21;
      sub_1B80C974C();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1B806246C();
      v9 = v24;
      sub_1B80C974C();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1B8062514();
    sub_1B80C974C();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_1B8062418()
{
  result = qword_1EBA66340;
  if (!qword_1EBA66340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66340);
  }

  return result;
}

unint64_t sub_1B806246C()
{
  result = qword_1EBA66348;
  if (!qword_1EBA66348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66348);
  }

  return result;
}

unint64_t sub_1B80624C0()
{
  result = qword_1EBA66350;
  if (!qword_1EBA66350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66350);
  }

  return result;
}

unint64_t sub_1B8062514()
{
  result = qword_1EBA66358;
  if (!qword_1EBA66358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66358);
  }

  return result;
}

uint64_t FriendshipRequestError.hashValue.getter()
{
  v1 = *v0;
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v1);
  return sub_1B80C997C();
}

uint64_t FriendshipRequestError.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66360, &qword_1B80D3EF8);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v32 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66368, &qword_1B80D3F00);
  v35 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66370, &qword_1B80D3F08);
  v40 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66378, &unk_1B80D3F10);
  v42 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8062418();
  v13 = v43;
  sub_1B80C99BC();
  if (v13)
  {
    goto LABEL_10;
  }

  v33 = v7;
  v34 = 0;
  v14 = v40;
  v15 = v41;
  v43 = a1;
  v16 = v12;
  v17 = sub_1B80C973C();
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = *(v17 + 32);
    if (v18 == 1 && v19 != 3)
    {
      if (*(v17 + 32))
      {
        v40 = v17;
        v26 = v42;
        if (v19 == 1)
        {
          v45 = 1;
          sub_1B80624C0();
          v27 = v34;
          sub_1B80C968C();
          v28 = v39;
          if (v27)
          {
            (*(v26 + 8))(v16, v10);
            goto LABEL_9;
          }

          (*(v35 + 8))(v6, v38);
          (*(v26 + 8))(v16, v10);
        }

        else
        {
          v46 = 2;
          sub_1B806246C();
          v31 = v34;
          sub_1B80C968C();
          v28 = v39;
          if (v31)
          {
            (*(v26 + 8))(v16, v10);
            goto LABEL_9;
          }

          (*(v36 + 8))(v15, v37);
          (*(v26 + 8))(v16, v10);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v44 = 0;
        sub_1B8062514();
        v29 = v34;
        sub_1B80C968C();
        v30 = v42;
        if (v29)
        {
          (*(v42 + 8))(v12, v10);
          goto LABEL_9;
        }

        (*(v14 + 8))(v9, v33);
        (*(v30 + 8))(v12, v10);
        swift_unknownObjectRelease();
        v28 = v39;
      }

      *v28 = v19;
      v24 = v43;
      return __swift_destroy_boxed_opaque_existential_0(v24);
    }
  }

  v21 = sub_1B80C955C();
  swift_allocError();
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66310, &qword_1B80D3ED0);
  *v23 = &type metadata for FriendshipRequestError;
  sub_1B80C969C();
  sub_1B80C954C();
  (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6AF8], v21);
  swift_willThrow();
  (*(v42 + 8))(v12, v10);
LABEL_9:
  swift_unknownObjectRelease();
  a1 = v43;
LABEL_10:
  v24 = a1;
  return __swift_destroy_boxed_opaque_existential_0(v24);
}

double FriendshipRequestResult.result.getter()
{
  type metadata accessor for FriendshipRequestResult(0);

  return result;
}

uint64_t type metadata accessor for FriendshipRequestResult(uint64_t a1)
{
  result = qword_1EBA659E8;
  if (!qword_1EBA659E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double FriendshipRequestResult.requestIds.getter()
{
  type metadata accessor for FriendshipRequestResult(0);

  return result;
}

uint64_t FriendshipRequestResult.init(request:result:requestIds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1B8010290(a1, a4);
  result = type metadata accessor for FriendshipRequestResult(0);
  *(a4 + *(result + 24)) = a3;
  *(a4 + *(result + 20)) = a2;
  return result;
}

uint64_t FriendshipRequestResult.description.getter()
{
  sub_1B80C952C();
  MEMORY[0x1B8CB7A40](60, 0xE100000000000000);
  MEMORY[0x1B8CB7A40](0xD000000000000017, 0x80000001B80D3F00);
  MEMORY[0x1B8CB7A40](0x6572202020200A3ALL, 0xEF203A7473657571);
  v0 = FriendshipRequest.description.getter();
  MEMORY[0x1B8CB7A40](v0);

  MEMORY[0x1B8CB7A40](0x736572202020200ALL, 0xED0000203A746C75);
  type metadata accessor for FriendshipRequestResult(0);
  sub_1B8032C04();
  v1 = sub_1B80C902C();
  MEMORY[0x1B8CB7A40](v1);

  MEMORY[0x1B8CB7A40](0xD000000000000010, 0x80000001B80CD7F0);
  v2 = sub_1B80C902C();
  MEMORY[0x1B8CB7A40](v2);

  MEMORY[0x1B8CB7A40](15882, 0xE200000000000000);
  return 0;
}

uint64_t sub_1B8062EA8()
{
  v1 = 0x746C75736572;
  if (*v0 != 1)
  {
    v1 = 0x4974736575716572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74736575716572;
  }
}

uint64_t sub_1B8062F04@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B806481C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B8062F2C(uint64_t a1)
{
  v2 = sub_1B806324C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8062F68(uint64_t a1)
{
  v2 = sub_1B806324C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FriendshipRequestResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66380, &qword_1B80D3F38);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B806324C();
  sub_1B80C99DC();
  LOBYTE(v12) = 0;
  type metadata accessor for FriendshipRequest(0);
  sub_1B8063724(&qword_1EBA66028, &protocol conformance descriptor for FriendshipRequest);
  sub_1B80C97DC();
  if (!v2)
  {
    v9 = type metadata accessor for FriendshipRequestResult(0);
    v12 = *(v3 + *(v9 + 20));
    HIBYTE(v11) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66390, &qword_1B80D3F40);
    sub_1B8063768(&qword_1EBA66398, sub_1B7FDC224, sub_1B80632A0, MEMORY[0x1E69E5E38]);
    sub_1B80C97DC();
    v12 = *(v3 + *(v9 + 24));
    HIBYTE(v11) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA663A8, &qword_1B80D3F48);
    sub_1B806384C(&qword_1EBA663B0, sub_1B7FDC224, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_1B80C97DC();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1B806324C()
{
  result = qword_1EBA66388;
  if (!qword_1EBA66388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66388);
  }

  return result;
}

unint64_t sub_1B80632A0()
{
  result = qword_1EBA663A0;
  if (!qword_1EBA663A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA663A0);
  }

  return result;
}

uint64_t FriendshipRequestResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for FriendshipRequest(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA663B8, &qword_1B80D3F50);
  v20 = *(v7 - 8);
  v21 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = type metadata accessor for FriendshipRequestResult(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v22 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1B806324C();
  sub_1B80C99BC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v22);
  }

  v14 = v20;
  v15 = v12;
  LOBYTE(v24) = 0;
  sub_1B8063724(&qword_1EBA663C0, &protocol conformance descriptor for FriendshipRequest);
  v16 = v21;
  sub_1B80C972C();
  sub_1B8010290(v6, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66390, &qword_1B80D3F40);
  v23 = 1;
  sub_1B8063768(&qword_1EBA663C8, sub_1B7FDC440, sub_1B80637F8, MEMORY[0x1E69E5E58]);
  sub_1B80C972C();
  *(v15 + *(v10 + 20)) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA663A8, &qword_1B80D3F48);
  v23 = 2;
  sub_1B806384C(&qword_1EBA663D8, sub_1B7FDC440, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  sub_1B80C972C();
  (*(v14 + 8))(v9, v16);
  *(v15 + *(v10 + 24)) = v24;
  sub_1B8010450(v15, v19, type metadata accessor for FriendshipRequestResult);
  __swift_destroy_boxed_opaque_existential_0(v22);
  return sub_1B80638D0(v15, type metadata accessor for FriendshipRequestResult);
}

uint64_t sub_1B8063724(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FriendshipRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B8063768(unint64_t *a1, void (*a2)(void), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA66390, &qword_1B80D3F40);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B80637F8()
{
  result = qword_1EBA663D0;
  if (!qword_1EBA663D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA663D0);
  }

  return result;
}

uint64_t sub_1B806384C(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA663A8, &qword_1B80D3F48);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B80638D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B8063934()
{
  result = qword_1EBA663E0;
  if (!qword_1EBA663E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA663E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FriendshipRequestStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 4)
  {
    return v8 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FriendshipRequestStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1B8063B14(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1B8063B28(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

void sub_1B8063B80(uint64_t a1)
{
  type metadata accessor for FriendshipRequest(319);
  if (v1 <= 0x3F)
  {
    sub_1B8063C3C(319, &qword_1EBA65958, &type metadata for FriendshipRequestStatus);
    if (v2 <= 0x3F)
    {
      sub_1B8063C3C(319, &qword_1EBA65950, MEMORY[0x1E69E6158]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8063C3C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_1B8032C04();
    v4 = sub_1B80C903C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1B8063D44()
{
  result = qword_1EBA663E8;
  if (!qword_1EBA663E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA663E8);
  }

  return result;
}

unint64_t sub_1B8063D9C()
{
  result = qword_1EBA663F0;
  if (!qword_1EBA663F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA663F0);
  }

  return result;
}

unint64_t sub_1B8063DF4()
{
  result = qword_1EBA663F8;
  if (!qword_1EBA663F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA663F8);
  }

  return result;
}

unint64_t sub_1B8063E4C()
{
  result = qword_1EBA66400;
  if (!qword_1EBA66400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66400);
  }

  return result;
}

unint64_t sub_1B8063EA4()
{
  result = qword_1EBA66408;
  if (!qword_1EBA66408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66408);
  }

  return result;
}

unint64_t sub_1B8063EFC()
{
  result = qword_1EBA66410;
  if (!qword_1EBA66410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66410);
  }

  return result;
}

unint64_t sub_1B8063F54()
{
  result = qword_1EBA66418;
  if (!qword_1EBA66418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66418);
  }

  return result;
}

unint64_t sub_1B8063FAC()
{
  result = qword_1EBA66420;
  if (!qword_1EBA66420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66420);
  }

  return result;
}

unint64_t sub_1B8064004()
{
  result = qword_1EBA66428;
  if (!qword_1EBA66428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66428);
  }

  return result;
}

unint64_t sub_1B806405C()
{
  result = qword_1EBA66430;
  if (!qword_1EBA66430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66430);
  }

  return result;
}

unint64_t sub_1B80640B4()
{
  result = qword_1EBA66438;
  if (!qword_1EBA66438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66438);
  }

  return result;
}

unint64_t sub_1B806410C()
{
  result = qword_1EBA66440;
  if (!qword_1EBA66440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66440);
  }

  return result;
}

unint64_t sub_1B8064164()
{
  result = qword_1EBA66448;
  if (!qword_1EBA66448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66448);
  }

  return result;
}

unint64_t sub_1B80641BC()
{
  result = qword_1EBA66450;
  if (!qword_1EBA66450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66450);
  }

  return result;
}

unint64_t sub_1B8064214()
{
  result = qword_1EBA66458;
  if (!qword_1EBA66458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66458);
  }

  return result;
}

unint64_t sub_1B806426C()
{
  result = qword_1EBA66460;
  if (!qword_1EBA66460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66460);
  }

  return result;
}

unint64_t sub_1B80642C4()
{
  result = qword_1EBA66468;
  if (!qword_1EBA66468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66468);
  }

  return result;
}

unint64_t sub_1B806431C()
{
  result = qword_1EBA66470;
  if (!qword_1EBA66470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66470);
  }

  return result;
}

unint64_t sub_1B8064374()
{
  result = qword_1EBA66478;
  if (!qword_1EBA66478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66478);
  }

  return result;
}

unint64_t sub_1B80643CC()
{
  result = qword_1EBA66480;
  if (!qword_1EBA66480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66480);
  }

  return result;
}

unint64_t sub_1B8064424()
{
  result = qword_1EBA66488;
  if (!qword_1EBA66488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66488);
  }

  return result;
}

unint64_t sub_1B806447C()
{
  result = qword_1EBA66490;
  if (!qword_1EBA66490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66490);
  }

  return result;
}

unint64_t sub_1B80644D4()
{
  result = qword_1EBA66498;
  if (!qword_1EBA66498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66498);
  }

  return result;
}

unint64_t sub_1B806452C()
{
  result = qword_1EBA664A0;
  if (!qword_1EBA664A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA664A0);
  }

  return result;
}

uint64_t sub_1B8064580(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001B80CD810 == a2 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E69646E6570 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B80C981C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1B80646EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x53676E697373696DLL && a2 == 0xEF64497265767265;
  if (v4 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5264696C61766E69 && a2 == 0xEF65736E6F707365 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x46646E616D6D6F63 && a2 == 0xED000064656C6961)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B80C981C();

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

uint64_t sub_1B806481C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74736575716572 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746C75736572 && a2 == 0xE600000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4974736575716572 && a2 == 0xEA00000000007364)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B80C981C();

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

uint64_t sub_1B806495C(uint64_t a1)
{
  v2 = sub_1B8064ED0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8064998(uint64_t a1)
{
  v2 = sub_1B8064ED0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80649D4()
{
  if (*v0)
  {
    return 7041889;
  }

  else
  {
    return 0x726566666FLL;
  }
}

uint64_t sub_1B8064A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726566666FLL && a2 == 0xE500000000000000;
  if (v6 || (sub_1B80C981C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7041889 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B80C981C();

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

uint64_t sub_1B8064ADC(uint64_t a1)
{
  v2 = sub_1B8064E7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8064B18(uint64_t a1)
{
  v2 = sub_1B8064E7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8064B54(uint64_t a1)
{
  v2 = sub_1B8064F24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8064B90(uint64_t a1)
{
  v2 = sub_1B8064F24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FriendshipRequestType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA664A8, &qword_1B80D4A90);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA664B0, &qword_1B80D4A98);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA664B8, &qword_1B80D4AA0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8064E7C();
  sub_1B80C99DC();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1B8064ED0();
    v14 = v18;
    sub_1B80C974C();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1B8064F24();
    sub_1B80C974C();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1B8064E7C()
{
  result = qword_1EBA664C0;
  if (!qword_1EBA664C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA664C0);
  }

  return result;
}

unint64_t sub_1B8064ED0()
{
  result = qword_1EBA664C8;
  if (!qword_1EBA664C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA664C8);
  }

  return result;
}

unint64_t sub_1B8064F24()
{
  result = qword_1EBA664D0;
  if (!qword_1EBA664D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA664D0);
  }

  return result;
}

uint64_t FriendshipRequestType.hashValue.getter()
{
  v1 = *v0;
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v1);
  return sub_1B80C997C();
}

uint64_t FriendshipRequestType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA664D8, &qword_1B80D4AA8);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA664E0, &qword_1B80D4AB0);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA664E8, &unk_1B80D4AB8);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8064E7C();
  v12 = v31;
  sub_1B80C99BC();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1B80C973C();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1B7FCC41C();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1B80C955C();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66310, &qword_1B80D3ED0);
      *v22 = &type metadata for FriendshipRequestType;
      sub_1B80C969C();
      sub_1B80C954C();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1B8064ED0();
        sub_1B80C968C();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1B8064F24();
        sub_1B80C968C();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_0(v13);
}

uint64_t sub_1B80654EC(uint64_t a1)
{
  v2 = sub_1B8065BB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8065528(uint64_t a1)
{
  v2 = sub_1B8065BB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8065564()
{
  v1 = 0x656E696C636564;
  if (*v0 != 1)
  {
    v1 = 0x776F4E746F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x747065636361;
  }
}

uint64_t sub_1B80655B8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B80668D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B80655E0(uint64_t a1)
{
  v2 = sub_1B8065AB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B806561C(uint64_t a1)
{
  v2 = sub_1B8065AB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8065658(uint64_t a1)
{
  v2 = sub_1B8065B5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8065694(uint64_t a1)
{
  v2 = sub_1B8065B5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80656D0(uint64_t a1)
{
  v2 = sub_1B8065B08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B806570C(uint64_t a1)
{
  v2 = sub_1B8065B08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FriendshipResponseToInviteType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA664F0, &qword_1B80D4AC8);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA664F8, &qword_1B80D4AD0);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66500, &qword_1B80D4AD8);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66508, &qword_1B80D4AE0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8065AB4();
  sub_1B80C99DC();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1B8065B5C();
      v9 = v21;
      sub_1B80C974C();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1B8065B08();
      v9 = v24;
      sub_1B80C974C();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1B8065BB0();
    sub_1B80C974C();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_1B8065AB4()
{
  result = qword_1EBA66510;
  if (!qword_1EBA66510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66510);
  }

  return result;
}

unint64_t sub_1B8065B08()
{
  result = qword_1EBA66518;
  if (!qword_1EBA66518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66518);
  }

  return result;
}

unint64_t sub_1B8065B5C()
{
  result = qword_1EBA66520;
  if (!qword_1EBA66520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66520);
  }

  return result;
}

unint64_t sub_1B8065BB0()
{
  result = qword_1EBA66528;
  if (!qword_1EBA66528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66528);
  }

  return result;
}

uint64_t FriendshipResponseToInviteType.hashValue.getter()
{
  v1 = *v0;
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v1);
  return sub_1B80C997C();
}

uint64_t FriendshipResponseToInviteType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66530, &qword_1B80D4AE8);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66538, &qword_1B80D4AF0);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66540, &qword_1B80D4AF8);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66548, &qword_1B80D4B00);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1B8065AB4();
  v15 = v36;
  sub_1B80C99BC();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1B80C973C();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1B7FCD6E4();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1B80C955C();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66310, &qword_1B80D3ED0);
      *v24 = &type metadata for FriendshipResponseToInviteType;
      sub_1B80C969C();
      sub_1B80C954C();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_1B8065B5C();
          sub_1B80C968C();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1B8065B08();
          v26 = v17;
          sub_1B80C968C();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1B8065BB0();
        sub_1B80C968C();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v37);
}

unint64_t sub_1B80661EC()
{
  result = qword_1EBA66550;
  if (!qword_1EBA66550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66550);
  }

  return result;
}

unint64_t sub_1B8066244()
{
  result = qword_1EBA66558;
  if (!qword_1EBA66558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66558);
  }

  return result;
}

unint64_t sub_1B806635C()
{
  result = qword_1EBA66560;
  if (!qword_1EBA66560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66560);
  }

  return result;
}

unint64_t sub_1B80663B4()
{
  result = qword_1EBA66568;
  if (!qword_1EBA66568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66568);
  }

  return result;
}

unint64_t sub_1B806640C()
{
  result = qword_1EBA66570;
  if (!qword_1EBA66570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66570);
  }

  return result;
}

unint64_t sub_1B8066464()
{
  result = qword_1EBA66578;
  if (!qword_1EBA66578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66578);
  }

  return result;
}

unint64_t sub_1B80664BC()
{
  result = qword_1EBA66580;
  if (!qword_1EBA66580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66580);
  }

  return result;
}

unint64_t sub_1B8066514()
{
  result = qword_1EBA66588;
  if (!qword_1EBA66588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66588);
  }

  return result;
}

unint64_t sub_1B806656C()
{
  result = qword_1EBA66590;
  if (!qword_1EBA66590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66590);
  }

  return result;
}

unint64_t sub_1B80665C4()
{
  result = qword_1EBA66598;
  if (!qword_1EBA66598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66598);
  }

  return result;
}

unint64_t sub_1B806661C()
{
  result = qword_1EBA665A0;
  if (!qword_1EBA665A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA665A0);
  }

  return result;
}

unint64_t sub_1B8066674()
{
  result = qword_1EBA665A8;
  if (!qword_1EBA665A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA665A8);
  }

  return result;
}

unint64_t sub_1B80666CC()
{
  result = qword_1EBA665B0;
  if (!qword_1EBA665B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA665B0);
  }

  return result;
}

unint64_t sub_1B8066724()
{
  result = qword_1EBA665B8;
  if (!qword_1EBA665B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA665B8);
  }

  return result;
}

unint64_t sub_1B806677C()
{
  result = qword_1EBA665C0;
  if (!qword_1EBA665C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA665C0);
  }

  return result;
}

unint64_t sub_1B80667D4()
{
  result = qword_1EBA665C8;
  if (!qword_1EBA665C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA665C8);
  }

  return result;
}

unint64_t sub_1B806682C()
{
  result = qword_1EBA665D0;
  if (!qword_1EBA665D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA665D0);
  }

  return result;
}

unint64_t sub_1B8066884()
{
  result = qword_1EBA665D8;
  if (!qword_1EBA665D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA665D8);
  }

  return result;
}

uint64_t sub_1B80668D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x747065636361 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656E696C636564 && a2 == 0xE700000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x776F4E746F6ELL && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B80C981C();

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

uint64_t sub_1B8066A00()
{
  v1 = 0x6572616853746F6ELL;
  if (*v0 != 1)
  {
    v1 = 0x6967696C45746F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x646572616873;
  }
}

uint64_t sub_1B8066A64@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B8069340(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B8066A8C(uint64_t a1)
{
  v2 = sub_1B8066FD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8066AC8(uint64_t a1)
{
  v2 = sub_1B8066FD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8066B04(uint64_t a1)
{
  v2 = sub_1B806702C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8066B40(uint64_t a1)
{
  v2 = sub_1B806702C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8066B7C(uint64_t a1)
{
  v2 = sub_1B8067080();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8066BB8(uint64_t a1)
{
  v2 = sub_1B8067080();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8066BF4(uint64_t a1)
{
  v2 = sub_1B80670D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8066C30(uint64_t a1)
{
  v2 = sub_1B80670D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FollowerState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA665E0, &qword_1B80D5280);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA665E8, &qword_1B80D5288);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA665F0, &qword_1B80D5290);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA665F8, &qword_1B80D5298);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8066FD8();
  sub_1B80C99DC();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1B8067080();
      v9 = v21;
      sub_1B80C974C();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1B806702C();
      v9 = v24;
      sub_1B80C974C();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1B80670D4();
    sub_1B80C974C();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_1B8066FD8()
{
  result = qword_1ED8DC248[0];
  if (!qword_1ED8DC248[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8DC248);
  }

  return result;
}

unint64_t sub_1B806702C()
{
  result = qword_1ED8DC208;
  if (!qword_1ED8DC208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC208);
  }

  return result;
}

unint64_t sub_1B8067080()
{
  result = qword_1ED8DC220;
  if (!qword_1ED8DC220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC220);
  }

  return result;
}

unint64_t sub_1B80670D4()
{
  result = qword_1EBA66600;
  if (!qword_1EBA66600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66600);
  }

  return result;
}

uint64_t FollowerState.hashValue.getter()
{
  v1 = *v0;
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v1);
  return sub_1B80C997C();
}

uint64_t FollowerState.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66608, &qword_1B80D52A0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66610, &qword_1B80D52A8);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66618, &qword_1B80D52B0);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66620, &unk_1B80D52B8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1B8066FD8();
  v15 = v36;
  sub_1B80C99BC();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1B80C973C();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1B7FCD6E4();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1B80C955C();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66310, &qword_1B80D3ED0);
      *v24 = &type metadata for FollowerState;
      sub_1B80C969C();
      sub_1B80C954C();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_1B8067080();
          sub_1B80C968C();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1B806702C();
          v26 = v17;
          sub_1B80C968C();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1B80670D4();
        sub_1B80C968C();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v37);
}

uint64_t sub_1B8067754()
{
  if (*v0)
  {
    return 0x6572616853746F6ELL;
  }

  else
  {
    return 0x646572616873;
  }
}

uint64_t sub_1B8067790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x646572616873 && a2 == 0xE600000000000000;
  if (v6 || (sub_1B80C981C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6572616853746F6ELL && a2 == 0xE900000000000064)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B80C981C();

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

uint64_t sub_1B8067870(uint64_t a1)
{
  v2 = sub_1B8067C88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80678AC(uint64_t a1)
{
  v2 = sub_1B8067C88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80678E8(uint64_t a1)
{
  v2 = sub_1B8067CDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8067924(uint64_t a1)
{
  v2 = sub_1B8067CDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8067960(uint64_t a1)
{
  v2 = sub_1B8067D30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B806799C(uint64_t a1)
{
  v2 = sub_1B8067D30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FollowingState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66628, &qword_1B80D52C8);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66630, &qword_1B80D52D0);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66638, &qword_1B80D52D8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8067C88();
  sub_1B80C99DC();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1B8067CDC();
    v14 = v18;
    sub_1B80C974C();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1B8067D30();
    sub_1B80C974C();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1B8067C88()
{
  result = qword_1ED8DC1F0;
  if (!qword_1ED8DC1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC1F0);
  }

  return result;
}

unint64_t sub_1B8067CDC()
{
  result = qword_1ED8DC1C8;
  if (!qword_1ED8DC1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC1C8);
  }

  return result;
}

unint64_t sub_1B8067D30()
{
  result = qword_1EBA66640;
  if (!qword_1EBA66640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66640);
  }

  return result;
}

uint64_t FollowingState.hashValue.getter()
{
  v1 = *v0;
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v1);
  return sub_1B80C997C();
}

uint64_t FollowingState.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66648, &qword_1B80D52E0);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66650, &qword_1B80D52E8);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66658, &qword_1B80D52F0);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8067C88();
  v12 = v31;
  sub_1B80C99BC();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1B80C973C();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1B7FCC41C();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1B80C955C();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66310, &qword_1B80D3ED0);
      *v22 = &type metadata for FollowingState;
      sub_1B80C969C();
      sub_1B80C954C();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1B8067CDC();
        sub_1B80C968C();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1B8067D30();
        sub_1B80C968C();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_0(v13);
}

FindMyLocate::FriendshipState __swiftcall FriendshipState.init(followerState:followingState:)(FindMyLocate::FollowerState followerState, FindMyLocate::FollowingState followingState)
{
  v3 = *followerState;
  *v2 = *followingState;
  v2[1] = v3;
  result.following = followerState;
  return result;
}

uint64_t sub_1B80682F8()
{
  if (*v0)
  {
    return 0x7265776F6C6C6F66;
  }

  else
  {
    return 0x6E69776F6C6C6F66;
  }
}

uint64_t sub_1B8068338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E69776F6C6C6F66 && a2 == 0xE900000000000067;
  if (v6 || (sub_1B80C981C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7265776F6C6C6F66 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B80C981C();

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

uint64_t sub_1B806841C(uint64_t a1)
{
  v2 = sub_1B8068630();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8068458(uint64_t a1)
{
  v2 = sub_1B8068630();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FriendshipState.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66660, &qword_1B80D52F8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v11 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8068630();
  sub_1B80C99DC();
  v15 = v8;
  v14 = 0;
  sub_1B8068684();
  sub_1B80C97DC();
  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    sub_1B80686D8();
    sub_1B80C97DC();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1B8068630()
{
  result = qword_1ED8DC1B0;
  if (!qword_1ED8DC1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC1B0);
  }

  return result;
}

unint64_t sub_1B8068684()
{
  result = qword_1EBA65A38;
  if (!qword_1EBA65A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA65A38);
  }

  return result;
}

unint64_t sub_1B80686D8()
{
  result = qword_1EBA65A48;
  if (!qword_1EBA65A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA65A48);
  }

  return result;
}

uint64_t FriendshipState.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66668, &qword_1B80D5300);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8068630();
  sub_1B80C99BC();
  if (!v2)
  {
    v15 = 0;
    sub_1B8068900();
    sub_1B80C972C();
    v9 = v16;
    v13 = 1;
    sub_1B8068954();
    sub_1B80C972C();
    (*(v6 + 8))(v8, v5);
    v11 = v14;
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1B8068900()
{
  result = qword_1EBA65A30;
  if (!qword_1EBA65A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA65A30);
  }

  return result;
}

unint64_t sub_1B8068954()
{
  result = qword_1EBA65A40;
  if (!qword_1EBA65A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA65A40);
  }

  return result;
}

unint64_t sub_1B8068A0C()
{
  result = qword_1EBA66670;
  if (!qword_1EBA66670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66670);
  }

  return result;
}

unint64_t sub_1B8068A64()
{
  result = qword_1EBA66678;
  if (!qword_1EBA66678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66678);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FriendshipState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
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

_WORD *storeEnumTagSinglePayload for FriendshipState(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

unint64_t sub_1B8068CBC()
{
  result = qword_1EBA66680;
  if (!qword_1EBA66680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66680);
  }

  return result;
}

unint64_t sub_1B8068D14()
{
  result = qword_1EBA66688;
  if (!qword_1EBA66688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66688);
  }

  return result;
}

unint64_t sub_1B8068D6C()
{
  result = qword_1EBA66690;
  if (!qword_1EBA66690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66690);
  }

  return result;
}

unint64_t sub_1B8068DC4()
{
  result = qword_1ED8DC1A0;
  if (!qword_1ED8DC1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC1A0);
  }

  return result;
}

unint64_t sub_1B8068E1C()
{
  result = qword_1ED8DC1A8;
  if (!qword_1ED8DC1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC1A8);
  }

  return result;
}

unint64_t sub_1B8068E74()
{
  result = qword_1ED8DC1D0;
  if (!qword_1ED8DC1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC1D0);
  }

  return result;
}

unint64_t sub_1B8068ECC()
{
  result = qword_1ED8DC1D8;
  if (!qword_1ED8DC1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC1D8);
  }

  return result;
}

unint64_t sub_1B8068F24()
{
  result = qword_1ED8DC1B8;
  if (!qword_1ED8DC1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC1B8);
  }

  return result;
}

unint64_t sub_1B8068F7C()
{
  result = qword_1ED8DC1C0;
  if (!qword_1ED8DC1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC1C0);
  }

  return result;
}

unint64_t sub_1B8068FD4()
{
  result = qword_1ED8DC1E0;
  if (!qword_1ED8DC1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC1E0);
  }

  return result;
}

unint64_t sub_1B806902C()
{
  result = qword_1ED8DC1E8;
  if (!qword_1ED8DC1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC1E8);
  }

  return result;
}

unint64_t sub_1B8069084()
{
  result = qword_1ED8DC228;
  if (!qword_1ED8DC228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC228);
  }

  return result;
}

unint64_t sub_1B80690DC()
{
  result = qword_1ED8DC230;
  if (!qword_1ED8DC230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC230);
  }

  return result;
}

unint64_t sub_1B8069134()
{
  result = qword_1ED8DC210;
  if (!qword_1ED8DC210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC210);
  }

  return result;
}

unint64_t sub_1B806918C()
{
  result = qword_1ED8DC218;
  if (!qword_1ED8DC218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC218);
  }

  return result;
}

unint64_t sub_1B80691E4()
{
  result = qword_1ED8DC1F8;
  if (!qword_1ED8DC1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC1F8);
  }

  return result;
}

unint64_t sub_1B806923C()
{
  result = qword_1ED8DC200;
  if (!qword_1ED8DC200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC200);
  }

  return result;
}

unint64_t sub_1B8069294()
{
  result = qword_1ED8DC238;
  if (!qword_1ED8DC238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC238);
  }

  return result;
}

unint64_t sub_1B80692EC()
{
  result = qword_1ED8DC240;
  if (!qword_1ED8DC240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC240);
  }

  return result;
}

uint64_t sub_1B8069340(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646572616873 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572616853746F6ELL && a2 == 0xE900000000000064 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6967696C45746F6ELL && a2 == 0xEB00000000656C62)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B80C981C();

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

FindMyLocate::LocationShareState_optional __swiftcall LocationShareState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B80C967C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t LocationShareState.rawValue.getter()
{
  v1 = 0x6572616853746F6ELL;
  if (*v0 != 1)
  {
    v1 = 0x6967696C45746F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x646572616873;
  }
}

uint64_t sub_1B8069524(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6572616853746F6ELL;
  v4 = 0xE900000000000064;
  if (v2 != 1)
  {
    v3 = 0x6967696C45746F6ELL;
    v4 = 0xEB00000000656C62;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x646572616873;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0x6572616853746F6ELL;
  v8 = 0xE900000000000064;
  if (*a2 != 1)
  {
    v7 = 0x6967696C45746F6ELL;
    v8 = 0xEB00000000656C62;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x646572616873;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B80C981C();
  }

  return v11 & 1;
}

unint64_t sub_1B8069640()
{
  result = qword_1EBA66698;
  if (!qword_1EBA66698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66698);
  }

  return result;
}

uint64_t sub_1B8069694()
{
  sub_1B80C993C();
  sub_1B80C911C();

  return sub_1B80C997C();
}

uint64_t sub_1B8069740(uint64_t a1)
{
  sub_1B80C911C();
}

uint64_t sub_1B80697D8(uint64_t a1)
{
  sub_1B80C993C();
  sub_1B80C911C();

  return sub_1B80C997C();
}

void sub_1B806988C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE900000000000064;
  v5 = 0x6572616853746F6ELL;
  if (v2 != 1)
  {
    v5 = 0x6967696C45746F6ELL;
    v4 = 0xEB00000000656C62;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x646572616873;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1B80699B4()
{
  result = qword_1EBA666A0;
  if (!qword_1EBA666A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA666A0);
  }

  return result;
}

FindMyLocate::Account::TokenStatus_optional __swiftcall Account.TokenStatus.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t Account.icloudIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Account.dsid.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Account.authToken.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Account.authToken.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t Account.appToken.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t Account.appHostName.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t Account.apsEnvironment.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t Account.peopleURL.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

void __swiftcall Account.init(icloudIdentifier:dsid:authTokenStatus:appToken:appHostName:apsEnvironment:peopleURL:authToken:)(FindMyLocate::Account *__return_ptr retstr, Swift::String icloudIdentifier, Swift::String dsid, FindMyLocate::Account::TokenStatus authTokenStatus, Swift::String appToken, Swift::String_optional appHostName, Swift::String apsEnvironment, Swift::String_optional peopleURL, Swift::String_optional authToken)
{
  v9 = *authTokenStatus;
  retstr->icloudIdentifier = icloudIdentifier;
  retstr->dsid = dsid;
  retstr->authToken = authToken;
  retstr->authTokenStatus = v9;
  retstr->appToken = appToken;
  retstr->appHostName.value._countAndFlagsBits = appHostName.value._countAndFlagsBits;
  *&retstr->appHostName.value._object = *&appHostName.value._object;
  *&retstr->apsEnvironment._object = *(&peopleURL - 8);
  retstr->peopleURL.value._object = peopleURL.value._object;
}

unint64_t sub_1B8069CC4()
{
  v1 = *v0;
  v2 = 1684632420;
  v3 = 0x7269766E45737061;
  if (v1 != 6)
  {
    v3 = 0x5255656C706F6570;
  }

  v4 = 0x6E656B6F54707061;
  if (v1 != 4)
  {
    v4 = 0x4E74736F48707061;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 > 1u)
  {
    v2 = 0x656B6F5468747561;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B8069DE4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B806AA30(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B8069E0C(uint64_t a1)
{
  v2 = sub_1B806A15C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8069E48(uint64_t a1)
{
  v2 = sub_1B806A15C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Account.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA666A8, &qword_1B80D5D00);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v20 - v5;
  v7 = *(v1 + 16);
  v24 = *(v1 + 24);
  v25 = v7;
  v8 = *(v1 + 32);
  v22 = *(v1 + 40);
  v23 = v8;
  v21 = *(v1 + 48);
  v9 = *(v1 + 64);
  v20[5] = *(v1 + 56);
  v20[6] = v9;
  v10 = *(v1 + 80);
  v20[3] = *(v1 + 72);
  v20[4] = v10;
  v11 = *(v1 + 96);
  v20[1] = *(v1 + 88);
  v20[2] = v11;
  v12 = *(v1 + 112);
  v20[0] = *(v1 + 104);
  v13 = a1[3];
  v14 = a1;
  v16 = v15;
  __swift_project_boxed_opaque_existential_1(v14, v13);
  sub_1B806A15C();
  sub_1B80C99DC();
  v35 = 0;
  v17 = v26;
  sub_1B80C978C();
  if (v17)
  {
    return (*(v4 + 8))(v6, v16);
  }

  v18 = v21;
  v26 = v12;
  v34 = 1;
  sub_1B80C978C();
  v33 = 2;
  sub_1B80C975C();
  v32 = v18;
  v31 = 3;
  sub_1B806A1B0();
  sub_1B80C97DC();
  v30 = 4;
  sub_1B80C978C();
  v29 = 5;
  sub_1B80C975C();
  v28 = 6;
  sub_1B80C978C();
  v27 = 7;
  sub_1B80C975C();
  return (*(v4 + 8))(0, v16);
}

unint64_t sub_1B806A15C()
{
  result = qword_1EBA666B0;
  if (!qword_1EBA666B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA666B0);
  }

  return result;
}

unint64_t sub_1B806A1B0()
{
  result = qword_1EBA666B8;
  if (!qword_1EBA666B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA666B8);
  }

  return result;
}

uint64_t Account.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA666C0, &qword_1B80D5D08);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B806A15C();
  sub_1B80C99BC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    LOBYTE(v53[0]) = 0;
    v9 = sub_1B80C96DC();
    v44 = v10;
    LOBYTE(v53[0]) = 1;
    v11 = sub_1B80C96DC();
    *(&v43 + 1) = v12;
    *&v43 = v11;
    v42 = a2;
    LOBYTE(v53[0]) = 2;
    v13 = sub_1B80C96AC();
    v15 = v14;
    v40 = v13;
    LOBYTE(v45) = 3;
    sub_1B806A7D4();
    sub_1B80C972C();
    v16 = LOBYTE(v53[0]);
    LOBYTE(v53[0]) = 4;
    v17 = sub_1B80C96DC();
    v39 = v18;
    v63 = 1;
    v38 = v17;
    LOBYTE(v53[0]) = 5;
    v36 = sub_1B80C96AC();
    v37 = v16;
    v41 = v19;
    LOBYTE(v53[0]) = 6;
    v20 = sub_1B80C96DC();
    v22 = v21;
    v35 = v20;
    v64 = 7;
    v23 = sub_1B80C96AC();
    v24 = v8;
    v26 = v25;
    (*(v6 + 8))(v24, v5);
    *&v45 = v9;
    v27 = v44;
    *(&v45 + 1) = v44;
    v46 = v43;
    v28 = *(&v43 + 1);
    *&v47 = v40;
    *(&v47 + 1) = v15;
    LOBYTE(v48) = v37;
    *(&v48 + 1) = v38;
    *&v49 = v39;
    *(&v49 + 1) = v36;
    *&v50 = v41;
    *(&v50 + 1) = v35;
    *&v51 = v22;
    *(&v51 + 1) = v23;
    v52 = v26;
    v29 = v42;
    *(v42 + 112) = v26;
    v30 = v50;
    v29[4] = v49;
    v29[5] = v30;
    v29[6] = v51;
    v31 = v45;
    v32 = v46;
    v33 = v48;
    v29[2] = v47;
    v29[3] = v33;
    *v29 = v31;
    v29[1] = v32;
    sub_1B806A828(&v45, v53);
    __swift_destroy_boxed_opaque_existential_0(a1);
    v53[0] = v9;
    v53[1] = v27;
    v53[2] = v43;
    v53[3] = v28;
    v53[4] = v40;
    v53[5] = v15;
    v54 = v37;
    v55 = v38;
    v56 = v39;
    v57 = v36;
    v58 = v41;
    v59 = v35;
    v60 = v22;
    v61 = v23;
    v62 = v26;
    return sub_1B806A860(v53);
  }
}

unint64_t sub_1B806A7D4()
{
  result = qword_1EBA666C8;
  if (!qword_1EBA666C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA666C8);
  }

  return result;
}

unint64_t sub_1B806A894()
{
  result = qword_1EBA666D0;
  if (!qword_1EBA666D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA666D0);
  }

  return result;
}

unint64_t sub_1B806A92C()
{
  result = qword_1EBA666D8;
  if (!qword_1EBA666D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA666D8);
  }

  return result;
}

unint64_t sub_1B806A984()
{
  result = qword_1EBA666E0;
  if (!qword_1EBA666E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA666E0);
  }

  return result;
}

unint64_t sub_1B806A9DC()
{
  result = qword_1EBA666E8;
  if (!qword_1EBA666E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA666E8);
  }

  return result;
}

uint64_t sub_1B806AA30(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001B80CD830 == a2 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684632420 && a2 == 0xE400000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656B6F5468747561 && a2 == 0xE90000000000006ELL || (sub_1B80C981C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656B6F5468747561 && a2 == 0xEF7375746174536ELL || (sub_1B80C981C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E656B6F54707061 && a2 == 0xE800000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4E74736F48707061 && a2 == 0xEB00000000656D61 || (sub_1B80C981C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7269766E45737061 && a2 == 0xEE00746E656D6E6FLL || (sub_1B80C981C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x5255656C706F6570 && a2 == 0xE90000000000004CLL)
  {

    return 7;
  }

  else
  {
    v5 = sub_1B80C981C();

    if (v5)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t sub_1B806ACF0()
{
  result = qword_1EBA666F0;
  if (!qword_1EBA666F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA666F0);
  }

  return result;
}

void Address.init(mapItem:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v115 = 0;
  v116 = 0;
  v113 = 0;
  v114 = 0;
  v4 = [a1 name];
  if (v4)
  {
    v5 = v4;
    sub_1B80C90BC();

    v6 = sub_1B80C917C();
    v109 = v7;
    v110 = v6;
  }

  else
  {
    v109 = 0;
    v110 = 0;
  }

  v8 = [a1 geoAddress];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 formattedAddressLines];
    v11 = MEMORY[0x1E69E7CC0];
    if (v10)
    {
      v12 = v10;
      sub_1B80C920C();
    }

    v13 = [v9 structuredAddress];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 country];
      if (v15)
      {
        v16 = v15;
        sub_1B80C90BC();

        v17 = sub_1B80C917C();
        v106 = v18;
        v107 = v17;
      }

      else
      {
        v106 = 0;
        v107 = 0;
      }

      v21 = [v14 countryCode];
      if (v21)
      {
        v22 = v21;
        sub_1B80C90BC();

        v23 = sub_1B80C917C();
        v104 = v24;
        v105 = v23;
      }

      else
      {
        v104 = 0;
        v105 = 0;
      }

      v25 = [v14 thoroughfare];
      if (v25)
      {
        v26 = v25;
        sub_1B80C90BC();

        v103 = sub_1B80C917C();
        v115 = v103;
        v116 = v27;
      }

      else
      {
        v103 = 0;
        v27 = 0;
      }

      v111 = v27;
      v28 = [v14 fullThoroughfare];
      if (v28)
      {
        v29 = v28;
        sub_1B80C90BC();

        v30 = sub_1B80C917C();
        v101 = v31;
        v102 = v30;
      }

      else
      {
        v101 = 0;
        v102 = 0;
      }

      v32 = [v14 locality];
      if (v32)
      {
        v33 = v32;
        sub_1B80C90BC();

        v100 = sub_1B80C917C();
        v113 = v100;
        v114 = v34;
        v19 = v34;
      }

      else
      {
        v100 = 0;
        v19 = 0;
      }

      v35 = [v14 administrativeAreaCode];
      if (v35)
      {
        v36 = v35;
        sub_1B80C90BC();

        v37 = sub_1B80C917C();
        v97 = v38;
        v98 = v37;
      }

      else
      {
        v97 = 0;
        v98 = 0;
      }

      v39 = [v14 administrativeArea];
      if (v39)
      {
        v40 = v39;
        sub_1B80C90BC();

        v41 = sub_1B80C917C();
        v95 = v42;
        v96 = v41;
      }

      else
      {
        v95 = 0;
        v96 = 0;
      }

      v43 = [v14 subAdministrativeArea];
      if (v43)
      {
        v44 = v43;
        sub_1B80C90BC();

        v45 = sub_1B80C917C();
        v93 = v46;
        v94 = v45;
      }

      else
      {

        v93 = 0;
        v94 = 0;
      }

      v20 = v111;
    }

    else
    {

      v93 = 0;
      v94 = 0;
      v95 = 0;
      v96 = 0;
      v97 = 0;
      v98 = 0;
      v101 = 0;
      v102 = 0;
      v104 = 0;
      v105 = 0;
      v106 = 0;
      v107 = 0;
      v100 = 0;
      v19 = 0;
      v103 = 0;
      v20 = 0;
    }
  }

  else
  {
    v93 = 0;
    v94 = 0;
    v95 = 0;
    v96 = 0;
    v97 = 0;
    v98 = 0;
    v101 = 0;
    v102 = 0;
    v104 = 0;
    v105 = 0;
    v106 = 0;
    v107 = 0;
    v100 = 0;
    v19 = 0;
    v103 = 0;
    v20 = 0;
    v11 = MEMORY[0x1E69E7CC0];
  }

  v47 = [a1 geoAddress];
  if (v47 && (v48 = v47, v49 = [v47 structuredAddress], v48, v49) && (v50 = objc_msgSend(v49, sel_fullThoroughfare), v49, v50))
  {
    v51 = sub_1B80C90BC();
    v91 = v52;
    v92 = v51;
  }

  else
  {
    v91 = 0;
    v92 = 0;
  }

  v53 = [a1 geoAddress];
  v112 = v20;
  if (v53 && (v54 = v53, v55 = [v53 structuredAddress], v54, v55))
  {
    v56 = [v55 areaOfInterests];

    v57 = MEMORY[0x1E69E7CC0];
    if (v56)
    {
      sub_1B80C920C();
    }
  }

  else
  {
    v57 = MEMORY[0x1E69E7CC0];
  }

  v58 = [a1 addressObject];
  if (v58 && (v59 = v58, v60 = [v58 fullAddressNoCurrentCountryWithMultiline_], v59, v60))
  {
    v61 = sub_1B80C90BC();
    v89 = v62;
    v90 = v61;
  }

  else
  {
    v89 = 0;
    v90 = 0;
  }

  v63 = [a1 addressObject];
  v64 = v63;
  v108 = v11;
  if (!v63)
  {
    goto LABEL_55;
  }

  v65 = [v63 cityAndAboveNoCurrentCountryWithFallback_];
  if (!v65)
  {
    goto LABEL_55;
  }

  v66 = v65;
  v67 = sub_1B80C90BC();
  v69 = v68;

  v70 = HIBYTE(v69) & 0xF;
  if ((v69 & 0x2000000000000000) == 0)
  {
    v70 = v67 & 0xFFFFFFFFFFFFLL;
  }

  if (!v70)
  {

LABEL_55:
    v67 = 0;
    v69 = 0;
  }

  v71 = sub_1B806BBFC(&v115, &v113);
  v73 = v72;

  if (v73)
  {
    v74 = HIBYTE(v73) & 0xF;
    if ((v73 & 0x2000000000000000) == 0)
    {
      v74 = v71 & 0xFFFFFFFFFFFFLL;
    }

    if (!v74)
    {

      v71 = 0;
      v73 = 0;
    }
  }

  else
  {
    v71 = 0;
  }

  v99 = v19;
  v88 = v67;
  if (v64)
  {
    v75 = [v64 shortAddress];
    v87 = v57;
    if (v75)
    {
      v76 = v75;
      v77 = sub_1B80C90BC();
      v79 = v78;

      v80 = HIBYTE(v79) & 0xF;
      if ((v79 & 0x2000000000000000) == 0)
      {
        v80 = v77 & 0xFFFFFFFFFFFFLL;
      }

      if (v80)
      {
LABEL_69:
        v81 = [v64 fullAddressNoCurrentCountryWithMultiline_];
        if (v81)
        {
          v82 = v81;
          v83 = sub_1B80C90BC();
          v85 = v84;

          swift_unknownObjectRelease();
          v86 = HIBYTE(v85) & 0xF;
          if ((v85 & 0x2000000000000000) == 0)
          {
            v86 = v83 & 0xFFFFFFFFFFFFLL;
          }

          if (v86)
          {
            goto LABEL_77;
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }

        v83 = 0;
        v85 = 0;
LABEL_77:
        v57 = v87;
        goto LABEL_78;
      }
    }

    v77 = 0;
    v79 = 0;
    goto LABEL_69;
  }

  swift_unknownObjectRelease();
  v77 = 0;
  v79 = 0;
  v83 = 0;
  v85 = 0;
LABEL_78:
  *a2 = v110;
  a2[1] = v109;
  a2[2] = v108;
  a2[3] = v107;
  a2[4] = v106;
  a2[5] = v105;
  a2[6] = v104;
  a2[7] = v103;
  a2[8] = v112;
  a2[9] = v102;
  a2[10] = v101;
  a2[11] = v100;
  a2[12] = v99;
  a2[13] = v98;
  a2[14] = v97;
  a2[15] = v96;
  a2[16] = v95;
  a2[17] = v94;
  a2[18] = v93;
  a2[19] = v92;
  a2[20] = v91;
  a2[21] = v57;
  a2[22] = v90;
  a2[23] = v89;
  a2[24] = v88;
  a2[25] = v69;
  a2[26] = 0;
  a2[27] = 0;
  a2[28] = v71;
  a2[29] = v73;
  a2[30] = v77;
  a2[31] = v79;
  a2[32] = v83;
  a2[33] = v85;
}

uint64_t Address.description.getter()
{
  v25 = v0[2];
  v26 = v0[21];
  v27 = v0[25];
  v28 = v0[24];
  v29 = v0[27];
  v30 = v0[26];
  v32 = v0[28];
  v31 = v0[29];
  v33 = v0[31];
  v34 = v0[30];
  v35 = v0[33];
  v36 = v0[32];

  sub_1B80C952C();
  MEMORY[0x1B8CB7A40](0x203A6C6562616CLL, 0xE700000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D98, &qword_1B80DE6E0);
  v1 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v1);

  MEMORY[0x1B8CB7A40](0xD000000000000017, 0x80000001B80CD850);
  v2 = MEMORY[0x1B8CB7B30](v25, MEMORY[0x1E69E6158]);
  MEMORY[0x1B8CB7A40](v2);

  MEMORY[0x1B8CB7A40](0x7972746E756F630ALL, 0xEA0000000000203ALL);
  v3 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v3);

  MEMORY[0x1B8CB7A40](0x7972746E756F630ALL, 0xEE00203A65646F43);
  v4 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v4);

  MEMORY[0x1B8CB7A40](0x4E7465657274730ALL, 0xED0000203A656D61);
  v5 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v5);

  MEMORY[0x1B8CB7A40](0xD000000000000010, 0x80000001B80CD870);
  v6 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v6);

  MEMORY[0x1B8CB7A40](0x74696C61636F6C0ALL, 0xEB00000000203A79);
  v7 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v7);

  MEMORY[0x1B8CB7A40](0x6F4365746174730ALL, 0xEC000000203A6564);
  v8 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v8);

  MEMORY[0x1B8CB7A40](0xD000000000000015, 0x80000001B80CD890);
  v9 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v9);

  MEMORY[0x1B8CB7A40](0xD000000000000018, 0x80000001B80CD8B0);
  v10 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v10);

  MEMORY[0x1B8CB7A40](0xD000000000000013, 0x80000001B80CD8D0);
  v11 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v11);

  MEMORY[0x1B8CB7A40](0xD000000000000011, 0x80000001B80CD8F0);
  v12 = MEMORY[0x1B8CB7B30](v26, MEMORY[0x1E69E6158]);
  MEMORY[0x1B8CB7A40](v12);

  MEMORY[0x1B8CB7A40](0xD00000000000001ALL, 0x80000001B80CD910);
  v13 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v13);

  MEMORY[0x1B8CB7A40](0xD000000000000010, 0x80000001B80CD930);
  if (v27)
  {
    v14 = v28;
  }

  else
  {
    v14 = 45;
  }

  if (v27)
  {
    v15 = v27;
  }

  else
  {
    v15 = 0xE100000000000000;
  }

  MEMORY[0x1B8CB7A40](v14, v15);

  MEMORY[0x1B8CB7A40](0x72646441696F700ALL, 0xED0000203A737365);
  if (v29)
  {
    v16 = v30;
  }

  else
  {
    v16 = 45;
  }

  if (v29)
  {
    v17 = v29;
  }

  else
  {
    v17 = 0xE100000000000000;
  }

  MEMORY[0x1B8CB7A40](v16, v17);

  MEMORY[0x1B8CB7A40](0x64416C6C616D730ALL, 0xEF203A7373657264);
  if (v31)
  {
    v18 = v32;
  }

  else
  {
    v18 = 45;
  }

  if (v31)
  {
    v19 = v31;
  }

  else
  {
    v19 = 0xE100000000000000;
  }

  MEMORY[0x1B8CB7A40](v18, v19);

  MEMORY[0x1B8CB7A40](0xD000000000000010, 0x80000001B80CD950);
  if (v33)
  {
    v20 = v34;
  }

  else
  {
    v20 = 45;
  }

  if (v33)
  {
    v21 = v33;
  }

  else
  {
    v21 = 0xE100000000000000;
  }

  MEMORY[0x1B8CB7A40](v20, v21);

  MEMORY[0x1B8CB7A40](0x6441656772616C0ALL, 0xEF203A7373657264);
  if (v35)
  {
    v22 = v36;
  }

  else
  {
    v22 = 45;
  }

  if (v35)
  {
    v23 = v35;
  }

  else
  {
    v23 = 0xE100000000000000;
  }

  MEMORY[0x1B8CB7A40](v22, v23);

  return 0;
}

uint64_t sub_1B806BBFC(uint64_t *a1, uint64_t *a2)
{
  swift_beginAccess();
  v4 = a1[1];
  if (!v4)
  {
    return 0;
  }

  v5 = *a1;
  v6 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v6 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    return 0;
  }

  swift_beginAccess();
  v7 = a2[1];
  if (!v7)
  {
    return 0;
  }

  v8 = *a2;
  v9 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v9 = *a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    return 0;
  }

  type metadata accessor for BundleHelper();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_opt_self();

  v12 = [v11 bundleForClass_];
  sub_1B80C8C8C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E20, &unk_1B80D2110);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B80D20F0;
  v14 = MEMORY[0x1E69E6158];
  *(v13 + 56) = MEMORY[0x1E69E6158];
  v15 = sub_1B806BEAC();
  *(v13 + 32) = v5;
  *(v13 + 40) = v4;
  *(v13 + 96) = v14;
  *(v13 + 104) = v15;
  *(v13 + 64) = v15;
  *(v13 + 72) = v8;
  *(v13 + 80) = v7;
  v16 = sub_1B80C90CC();

  return v16;
}

uint64_t sub_1B806BDD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 272))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B806BE18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 272) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 272) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B806BEAC()
{
  result = qword_1EBA666F8;
  if (!qword_1EBA666F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA666F8);
  }

  return result;
}

uint64_t DefaultCustomLabel.localizedLabel.getter(__n128 a1)
{
  type metadata accessor for BundleHelper();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_1B80C8C8C();

  return v3;
}

FindMyLocate::DefaultCustomLabel_optional __swiftcall DefaultCustomLabel.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B80C967C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DefaultCustomLabel.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x656D6F683C21245FLL;
  v3 = 0x6F6863733C21245FLL;
  v4 = 0x3E6D79673C21245FLL;
  if (v1 != 3)
  {
    v4 = 0x6568746F3C21245FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6B726F773C21245FLL;
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

unint64_t sub_1B806C148()
{
  result = qword_1EBA66700;
  if (!qword_1EBA66700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66700);
  }

  return result;
}

uint64_t sub_1B806C19C()
{
  sub_1B80C993C();
  sub_1B80C911C();

  return sub_1B80C997C();
}

uint64_t sub_1B806C2A4(uint64_t a1)
{
  sub_1B80C911C();
}

uint64_t sub_1B806C398(uint64_t a1)
{
  sub_1B80C993C();
  sub_1B80C911C();

  return sub_1B80C997C();
}

void sub_1B806C4A8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x656D6F683C21245FLL;
  v4 = 0xEE005F24213E6C6FLL;
  v5 = 0x6F6863733C21245FLL;
  v6 = 0xEB000000005F2421;
  v7 = 0x3E6D79673C21245FLL;
  if (v2 != 3)
  {
    v7 = 0x6568746F3C21245FLL;
    v6 = 0xED00005F24213E72;
  }

  if (v2 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (*v1)
  {
    v3 = 0x6B726F773C21245FLL;
  }

  if (*v1 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (*v1 <= 1u)
  {
    v9 = 0xEC0000005F24213ELL;
  }

  else
  {
    v9 = v4;
  }

  *a1 = v8;
  a1[1] = v9;
}

uint64_t DecodedLocationNotification.handle.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[9];
  v25 = v1[8];
  v26 = v3;
  v4 = v1[9];
  v27 = v1[10];
  v5 = v1[3];
  v6 = v1[5];
  v21 = v1[4];
  v7 = v21;
  v22 = v6;
  v8 = v1[5];
  v9 = v1[7];
  v23 = v1[6];
  v10 = v23;
  v24 = v9;
  v11 = v1[1];
  v18[0] = *v1;
  v18[1] = v11;
  v12 = v1[3];
  v14 = *v1;
  v13 = v1[1];
  v19 = v1[2];
  v15 = v19;
  v20 = v12;
  a1[8] = v25;
  a1[9] = v4;
  a1[10] = v1[10];
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v10;
  a1[7] = v2;
  *a1 = v14;
  a1[1] = v13;
  a1[2] = v15;
  a1[3] = v5;
  return sub_1B805D84C(v18, &v17);
}

void *DecodedLocationNotification.contact.getter()
{
  v1 = *(v0 + 176);
  v2 = v1;
  return v1;
}

void *DecodedLocationNotification.location.getter()
{
  v1 = *(v0 + 184);
  v2 = v1;
  return v1;
}

uint64_t sub_1B806C65C()
{
  v1 = 0x746361746E6F63;
  if (*v0 != 1)
  {
    v1 = 0x6E6F697461636F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C646E6168;
  }
}

uint64_t sub_1B806C6B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B806D53C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B806C6DC(uint64_t a1)
{
  v2 = sub_1B806CAEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B806C718(uint64_t a1)
{
  v2 = sub_1B806CAEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 DecodedLocationNotification.init(handle:contact:location:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 144);
  *(a4 + 128) = *(a1 + 128);
  *(a4 + 144) = v4;
  *(a4 + 160) = *(a1 + 160);
  v5 = *(a1 + 80);
  *(a4 + 64) = *(a1 + 64);
  *(a4 + 80) = v5;
  v6 = *(a1 + 112);
  *(a4 + 96) = *(a1 + 96);
  *(a4 + 112) = v6;
  v7 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v7;
  result = *(a1 + 48);
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 48) = result;
  *(a4 + 176) = a2;
  *(a4 + 184) = a3;
  return result;
}

uint64_t DecodedLocationNotification.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66708, &qword_1B80D61A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  v9 = a1[3];
  v24 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1B806CAEC();
  sub_1B80C99BC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v24);
  }

  v10 = v6;
  v62 = 0;
  sub_1B7FDC440();
  sub_1B80C96CC();
  v11 = v5;
  v59 = v48;
  v60 = v49;
  v61 = v50;
  v55 = v44;
  v56 = v45;
  v57 = v46;
  v58 = v47;
  v51 = v40;
  v52 = v41;
  v53 = v42;
  v54 = v43;
  v12 = sub_1B806CBA8(1, &qword_1EBA65FC8, 0x1E695CD58, &qword_1EBA66760, &qword_1B80D6400);
  v13 = sub_1B806CBA8(2, &qword_1ED8DBBE8, 0x1E6985C40, &qword_1EBA66750, &qword_1B80D63F8);
  (*(v10 + 8))(v8, v11);
  v33 = v59;
  v34 = v60;
  v35 = v61;
  v29 = v55;
  v30 = v56;
  v14 = v58;
  v31 = v57;
  v32 = v58;
  v25 = v51;
  v26 = v52;
  v15 = v54;
  v27 = v53;
  v28 = v54;
  v16 = v60;
  a2[8] = v59;
  a2[9] = v16;
  v17 = v30;
  v18 = v31;
  a2[4] = v29;
  a2[5] = v17;
  *&v36 = v12;
  *(&v36 + 1) = v13;
  a2[6] = v18;
  a2[7] = v14;
  v19 = v26;
  v20 = v27;
  *a2 = v25;
  a2[1] = v19;
  a2[2] = v20;
  a2[3] = v15;
  v21 = v36;
  a2[10] = v35;
  a2[11] = v21;
  sub_1B806CEA4(&v25, v37);
  __swift_destroy_boxed_opaque_existential_0(v24);
  v37[8] = v59;
  v37[9] = v60;
  v37[10] = v61;
  v37[4] = v55;
  v37[5] = v56;
  v37[6] = v57;
  v37[7] = v58;
  v37[0] = v51;
  v37[1] = v52;
  v37[2] = v53;
  v37[3] = v54;
  v38 = v12;
  v39 = v13;
  return sub_1B804D010(v37);
}

unint64_t sub_1B806CAEC()
{
  result = qword_1EBA66710;
  if (!qword_1EBA66710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66710);
  }

  return result;
}

uint64_t sub_1B806CB40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D78, &qword_1B80D2640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B806CBA8(char a1, unint64_t *a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66708, &qword_1B80D61A8);
  sub_1B806D6A4();
  result = sub_1B80C96CC();
  if (!v5)
  {
    if (v17 >> 60 == 15)
    {
      return 0;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66748, &qword_1B80D63F0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1B80D1EB0;
      v12 = sub_1B7FBFCCC(0, a2, a3);
      *(v11 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
      *(v11 + 32) = v12;
      v13 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
      v14 = sub_1B80C91FC();

      v15 = [v13 initWithArray_];

      sub_1B80C93AC();
      sub_1B806D6F8();
      swift_allocError();
      swift_willThrow();
      return sub_1B7FC72F8(v16, v17);
    }
  }

  return result;
}

uint64_t DecodedLocationNotification.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66718, &qword_1B80D61B0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - v6;
  v8 = v1[9];
  v48 = v1[8];
  v49 = v8;
  v50 = v1[10];
  v9 = v1[5];
  v44 = v1[4];
  v45 = v9;
  v10 = v1[7];
  v46 = v1[6];
  v47 = v10;
  v11 = v1[1];
  v40 = *v1;
  v41 = v11;
  v12 = v1[3];
  v42 = v1[2];
  v43 = v12;
  v13 = *(v1 + 22);
  v16 = *(v1 + 23);
  v17 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B805D84C(&v40, &v29);
  sub_1B806CAEC();
  sub_1B80C99DC();
  v37 = v48;
  v38 = v49;
  v39 = v50;
  v33 = v44;
  v34 = v45;
  v35 = v46;
  v36 = v47;
  v29 = v40;
  v30 = v41;
  v31 = v42;
  v32 = v43;
  v51 = 0;
  sub_1B7FDC224();
  sub_1B80C977C();
  if (v2)
  {
    v26 = v37;
    v27 = v38;
    v28 = v39;
    v22 = v33;
    v23 = v34;
    v24 = v35;
    v25 = v36;
    v18 = v29;
    v19 = v30;
    v20 = v31;
    v21 = v32;
    sub_1B806CB40(&v18);
  }

  else
  {
    v14 = v16;
    v26 = v37;
    v27 = v38;
    v28 = v39;
    v22 = v33;
    v23 = v34;
    v24 = v35;
    v25 = v36;
    v18 = v29;
    v19 = v30;
    v20 = v31;
    v21 = v32;
    sub_1B806CB40(&v18);
    sub_1B806D154(v17, 1);
    sub_1B806D154(v14, 2);
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_1B806D154(void *a1, char a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = objc_opt_self();
    v11 = 0;
    v4 = a1;
    v5 = [v3 archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v11];
    v6 = v11;
    if (v5)
    {
      v7 = sub_1B80C8D3C();
      v9 = v8;

      v11 = v7;
      v12 = v9;
      sub_1B7FC62D8(v7, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66718, &qword_1B80D61B0);
      sub_1B806D650();
      sub_1B80C977C();
      sub_1B7FC72F8(v11, v12);

      sub_1B7FC3CCC(v7, v9);
    }

    else
    {
      v10 = v6;
      sub_1B80C8D0C();

      swift_willThrow();
    }
  }
}

uint64_t get_enum_tag_for_layout_string_12FindMyLocate6HandleVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_1B806D334(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 192))
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

uint64_t sub_1B806D390(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 192) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 192) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1B806D438()
{
  result = qword_1EBA66720;
  if (!qword_1EBA66720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66720);
  }

  return result;
}

unint64_t sub_1B806D490()
{
  result = qword_1EBA66728;
  if (!qword_1EBA66728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66728);
  }

  return result;
}

unint64_t sub_1B806D4E8()
{
  result = qword_1EBA66730;
  if (!qword_1EBA66730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66730);
  }

  return result;
}

uint64_t sub_1B806D53C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746361746E6F63 && a2 == 0xE700000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B80C981C();

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

unint64_t sub_1B806D650()
{
  result = qword_1EBA66738;
  if (!qword_1EBA66738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66738);
  }

  return result;
}

unint64_t sub_1B806D6A4()
{
  result = qword_1EBA66740;
  if (!qword_1EBA66740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66740);
  }

  return result;
}

unint64_t sub_1B806D6F8()
{
  result = qword_1EBA66758;
  if (!qword_1EBA66758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66758);
  }

  return result;
}