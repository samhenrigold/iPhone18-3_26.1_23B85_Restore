uint64_t sub_1D2E98734()
{
  v22 = v0;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  __swift_project_value_buffer(v1, qword_1EDED2DB8);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v21[0] = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1D2E685B0(0xD000000000000017, 0x80000001D2EE7480, v21);
    _os_log_impl(&dword_1D2E46000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1D38AF660](v5, -1, -1);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v6 = *(v0 + 192);
  swift_beginAccess();
  sub_1D2E9B054(v6 + 264, v0 + 16);
  if (*(v0 + 40))
  {
    v8 = *(v0 + 208);
    v7 = *(v0 + 216);
    v9 = *(v0 + 200);
    sub_1D2E4C014((v0 + 16), v0 + 56);
    v10 = __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    (*(v8 + 16))(v7, *v10 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_callUUID, v9);
    v11 = sub_1D2EE3E88();
    (*(v8 + 8))(v7, v9);
    if (v11)
    {
      __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
      v12 = swift_task_alloc();
      *(v0 + 224) = v12;
      *v12 = v0;
      v12[1] = sub_1D2E98AF4;
      v13 = *(v0 + 184);

      return sub_1D2EAD820(v13);
    }

    v17 = sub_1D2EE45F8();
    v18 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1D2E685B0(0xD000000000000017, 0x80000001D2EE7480, v21);
      _os_log_impl(&dword_1D2E46000, v17, v18, "%s: unknown callID in the request. Ignoring.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1D38AF660](v20, -1, -1);
      MEMORY[0x1D38AF660](v19, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1((v0 + 56));

    v16 = *(v0 + 8);
  }

  else
  {
    sub_1D2E94910();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();

    v16 = *(v0 + 8);
  }

  return v16();
}

uint64_t sub_1D2E98AF4()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  v3 = *(v2 + 192);
  if (v0)
  {
    v4 = sub_1D2E9C430;
  }

  else
  {
    v4 = sub_1D2E98C20;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D2E98C20()
{
  v1 = *(v0 + 192);
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  *(v0 + 96) = 0u;
  swift_beginAccess();
  sub_1D2E9BF90(v0 + 96, v1 + 264);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  v2 = *(v0 + 8);

  return v2();
}

void sub_1D2E98CD0(uint64_t a1@<X8>)
{
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v2 = sub_1D2EE4618();
  __swift_project_value_buffer(v2, qword_1EDED2DB8);
  v3 = sub_1D2EE45F8();
  v4 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_1D2E685B0(0xD000000000000011, 0x80000001D2EE7460, &v7);
    _os_log_impl(&dword_1D2E46000, v3, v4, "%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1D38AF660](v6, -1, -1);
    MEMORY[0x1D38AF660](v5, -1, -1);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
}

uint64_t sub_1D2E98E20(uint64_t a1)
{
  *(v2 + 360) = a1;
  *(v2 + 368) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D2E98E40, v1, 0);
}

uint64_t sub_1D2E98E40()
{
  v18 = v0;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  __swift_project_value_buffer(v1, qword_1EDED2DB8);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v17 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1D2E685B0(0xD00000000000001DLL, 0x80000001D2EE6750, &v17);
    _os_log_impl(&dword_1D2E46000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1D38AF660](v5, -1, -1);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v6 = *(v0 + 368);
  swift_beginAccess();
  sub_1D2E9B054(v6 + 264, v0 + 192);
  if (*(v0 + 216))
  {
    sub_1D2E94910();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();
    sub_1D2E9BFC8(v0 + 192);
    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v8 = *(v0 + 360);
    v9 = *(v0 + 368);
    v11 = *(v9 + 224);
    v10 = *(v9 + 240);
    v12 = *(v9 + 256);
    *(v0 + 136) = *(v9 + 208);
    *(v0 + 184) = v12;
    *(v0 + 168) = v10;
    *(v0 + 152) = v11;
    sub_1D2EE1290(v0 + 16);
    (*(v9 + 112))(v8, v0 + 16);
    sub_1D2E6912C(v0 + 232, v0 + 272);
    swift_beginAccess();
    sub_1D2E9BF90(v0 + 272, v6 + 264);
    swift_endAccess();
    __swift_project_boxed_opaque_existential_1((v0 + 232), *(v0 + 256));
    v15 = swift_task_alloc();
    *(v0 + 376) = v15;
    *v15 = v0;
    v15[1] = sub_1D2E99120;
    v16 = *(v0 + 360);

    return sub_1D2EB0DF4(v16);
  }
}

uint64_t sub_1D2E99120()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  v3 = *(v2 + 368);
  if (v0)
  {
    v4 = sub_1D2E992B0;
  }

  else
  {
    v4 = sub_1D2E9924C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D2E9924C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 232));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2E992B0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 232));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2E99314(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = sub_1D2EE3EB8();
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2E993D4, v1, 0);
}

uint64_t sub_1D2E993D4()
{
  v22 = v0;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  __swift_project_value_buffer(v1, qword_1EDED2DB8);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v21[0] = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1D2E685B0(0xD00000000000001CLL, 0x80000001D2EE6770, v21);
    _os_log_impl(&dword_1D2E46000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1D38AF660](v5, -1, -1);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v6 = *(v0 + 192);
  swift_beginAccess();
  sub_1D2E9B054(v6 + 264, v0 + 16);
  if (*(v0 + 40))
  {
    v8 = *(v0 + 208);
    v7 = *(v0 + 216);
    v9 = *(v0 + 200);
    sub_1D2E4C014((v0 + 16), v0 + 56);
    v10 = __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    (*(v8 + 16))(v7, *v10 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_callUUID, v9);
    v11 = sub_1D2EE3E88();
    (*(v8 + 8))(v7, v9);
    if (v11)
    {
      *(v0 + 128) = 0;
      *(v0 + 112) = 0u;
      *(v0 + 96) = 0u;
      swift_beginAccess();
      sub_1D2E9BF90(v0 + 96, v6 + 264);
      swift_endAccess();
      __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
      v12 = swift_task_alloc();
      *(v0 + 224) = v12;
      *v12 = v0;
      v12[1] = sub_1D2E997DC;
      v13 = *(v0 + 184);

      return sub_1D2EAEEE8(v13);
    }

    v17 = sub_1D2EE45F8();
    v18 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1D2E685B0(0xD00000000000001CLL, 0x80000001D2EE6770, v21);
      _os_log_impl(&dword_1D2E46000, v17, v18, "%s: unknown callID in the request. Ignoring.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1D38AF660](v20, -1, -1);
      MEMORY[0x1D38AF660](v19, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1((v0 + 56));

    v16 = *(v0 + 8);
  }

  else
  {
    sub_1D2E94910();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();

    v16 = *(v0 + 8);
  }

  return v16();
}

uint64_t sub_1D2E997DC()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  v3 = *(v2 + 192);
  if (v0)
  {
    v4 = sub_1D2E99978;
  }

  else
  {
    v4 = sub_1D2E99908;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D2E99908()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2E99978()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2E999E4(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v3 = sub_1D2EE3EB8();
  v2[17] = v3;
  v2[18] = *(v3 - 8);
  v2[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2E99AA4, v1, 0);
}

uint64_t sub_1D2E99AA4()
{
  v23 = v0;
  v1 = *(v0 + 128);
  swift_beginAccess();
  sub_1D2E9B054(v1 + 264, v0 + 16);
  if (*(v0 + 40))
  {
    v3 = *(v0 + 144);
    v2 = *(v0 + 152);
    v4 = *(v0 + 136);
    sub_1D2E4C014((v0 + 16), v0 + 56);
    v5 = __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    (*(v3 + 16))(v2, *v5 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_callUUID, v4);
    v6 = sub_1D2EE3E88();
    (*(v3 + 8))(v2, v4);
    if (v6)
    {
      v7 = *__swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
      v8 = swift_task_alloc();
      *(v0 + 160) = v8;
      *v8 = v0;
      v8[1] = sub_1D2E99E24;
      v9 = *(v0 + 120);
      v10 = *(v0 + 128);

      return sub_1D2E9B1D0(v7, v9, v10);
    }

    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v16 = sub_1D2EE4618();
    __swift_project_value_buffer(v16, qword_1EDED2DB8);
    v17 = sub_1D2EE45F8();
    v18 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v22 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1D2E685B0(0xD000000000000015, 0x80000001D2EE7440, &v22);
      _os_log_impl(&dword_1D2E46000, v17, v18, "%s: unknown callID in the request. Ignoring.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1D38AF660](v20, -1, -1);
      MEMORY[0x1D38AF660](v19, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  }

  else
  {
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v12 = sub_1D2EE4618();
    __swift_project_value_buffer(v12, qword_1EDED2DB8);
    v13 = sub_1D2EE45F8();
    v14 = sub_1D2EE4DB8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1D2E46000, v13, v14, "No active session", v15, 2u);
      MEMORY[0x1D38AF660](v15, -1, -1);
    }
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1D2E99E24()
{
  v1 = *(*v0 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1D2E99F34, v1, 0);
}

uint64_t sub_1D2E99F34()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2E99F9C(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 120) = a4;
  *(v6 + 128) = v5;
  *(v6 + 152) = a5;
  *(v6 + 112) = a3;
  v9 = (a1 + *a1);
  v7 = swift_task_alloc();
  *(v6 + 136) = v7;
  *v7 = v6;
  v7[1] = sub_1D2E9A098;

  return v9();
}

uint64_t sub_1D2E9A098()
{
  v2 = *v1;
  v2[18] = v0;

  if (v0)
  {
    v3 = v2[16];

    return MEMORY[0x1EEE6DFA0](sub_1D2E9A1CC, v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1D2E9A1CC()
{
  v25 = v0;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = sub_1D2EE4618();
  __swift_project_value_buffer(v2, qword_1EDED2DB8);
  v3 = v1;
  v4 = sub_1D2EE45F8();
  v5 = sub_1D2EE4DB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24[0] = v23;
    *v6 = 136446466;
    v7 = sub_1D2EE4FD8();
    v9 = sub_1D2E685B0(v7, v8, v24);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2082;
    swift_getErrorValue();
    v10 = *(v0 + 80);
    v11 = *(v0 + 88);
    v12 = sub_1D2EE4E58();
    v13 = *(v12 - 8);
    v14 = swift_task_alloc();
    v15 = *(v11 - 8);
    (*(v15 + 16))(v14, v10, v11);
    (*(v15 + 56))(v14, 0, 1, v11);
    v16 = sub_1D2EE2754(v14, v11);
    v18 = v17;
    (*(v13 + 8))(v14, v12);

    v19 = sub_1D2E685B0(v16, v18, v24);

    *(v6 + 14) = v19;
    _os_log_impl(&dword_1D2E46000, v4, v5, "Error performing %{public}s %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38AF660](v23, -1, -1);
    MEMORY[0x1D38AF660](v6, -1, -1);
  }

  v20 = *(v0 + 128);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  swift_beginAccess();
  sub_1D2E9BF90(v0 + 16, v20 + 264);
  swift_endAccess();
  swift_willThrow();
  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1D2E9A50C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1D2EE3EB8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739040, &qword_1D2EF2460);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v24[-v14];
  swift_beginAccess();
  result = sub_1D2E9B054(v4 + 264, &v27);
  if (v28)
  {
    v25 = a2;
    sub_1D2E4C014(&v27, v26);
    v17 = *(*(*__swift_project_boxed_opaque_existential_1(v26, v26[3]) + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_stateMachine) + 16);
    os_unfair_lock_lock((v17 + 36));
    v18 = *(v17 + 32);
    os_unfair_lock_unlock((v17 + 36));
    result = __swift_destroy_boxed_opaque_existential_1(v26);
    if (v18 < 2)
    {
      v19 = sub_1D2EE4CB8();
      (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
      (*(v10 + 16))(&v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v9);
      v20 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v21 = (v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
      v22 = swift_allocObject();
      *(v22 + 16) = 0;
      *(v22 + 24) = 0;
      (*(v10 + 32))(v22 + v20, v12, v9);
      v23 = (v22 + v21);
      *v23 = a3;
      v23[1] = a4;
      *(v22 + ((v21 + 19) & 0xFFFFFFFFFFFFFFF8)) = v25;

      sub_1D2ED7FB0(0, 0, v15, &unk_1D2EF3C10, v22);
    }
  }

  return result;
}

uint64_t sub_1D2E9A7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v11 = a7 == 6;
  v12 = swift_task_alloc();
  *(v7 + 16) = v12;
  *v12 = v7;
  v12[1] = sub_1D2E5BA34;

  return sub_1D2E9CA64(a4, a5, a6, v11);
}

uint64_t sub_1D2E9A870()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 128));
  __swift_destroy_boxed_opaque_existential_1((v0 + 168));

  sub_1D2E9BFC8(v0 + 264);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

CallIntelligence::WaitOnHoldError_optional __swiftcall WaitOnHoldError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D2EE5118();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t WaitOnHoldError.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x5364696C61766E69;
  v3 = 0x436E776F6E6B6E75;
  if (v1 != 5)
  {
    v3 = 0xD000000000000019;
  }

  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0x6C6961466B736174;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000013;
  if (v1 != 1)
  {
    v5 = 0xD000000000000012;
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

unint64_t sub_1D2E9AA68()
{
  result = qword_1EC739030;
  if (!qword_1EC739030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739030);
  }

  return result;
}

uint64_t sub_1D2E9AAC8(uint64_t a1)
{
  sub_1D2EE4AC8();
}

void sub_1D2E9AC14(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000065746174;
  v4 = 0x5364696C61766E69;
  v5 = 0xEF444955556C6C61;
  v6 = 0x436E776F6E6B6E75;
  if (v2 != 5)
  {
    v6 = 0xD000000000000019;
    v5 = 0x80000001D2EE62E0;
  }

  v7 = 0xD000000000000013;
  v8 = 0x80000001D2EE62B0;
  if (v2 != 3)
  {
    v7 = 0x6C6961466B736174;
    v8 = 0xEA00000000006465;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xD000000000000013;
  v10 = 0x80000001D2EE6270;
  if (v2 != 1)
  {
    v9 = 0xD000000000000012;
    v10 = 0x80000001D2EE6290;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v10;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for WaitOnHoldError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WaitOnHoldError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16CallIntelligence16HoldAssistServerC5StateO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D2E9AF6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D2E9AFBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

double sub_1D2E9B018(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D2E9B08C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1D2EE3EB8() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 19) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1D2E7DE28;

  return sub_1D2E9A7A0(a1, v9, v10, v1 + v6, v12, v13, v14);
}

uint64_t sub_1D2E9B1D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738A70, &qword_1D2EF20F0);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v6 = sub_1D2EE3EB8();
  v3[25] = v6;
  v3[26] = *(v6 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v7 = type metadata accessor for WaitOnHoldSession(0);
  v3[32] = v7;
  v3[5] = v7;
  v3[6] = &off_1F4E94D30;
  v3[2] = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D2E9B354, a3, 0);
}

uint64_t sub_1D2E9B354()
{
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[32]);
  v1 = swift_task_alloc();
  v0[33] = v1;
  *v1 = v0;
  v1[1] = sub_1D2E9B3F8;
  v2 = v0[19];

  return sub_1D2EAE378(v2);
}

uint64_t sub_1D2E9B3F8()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  v3 = *(v2 + 160);
  if (v0)
  {
    v4 = sub_1D2E9B918;
  }

  else
  {
    v4 = sub_1D2E9B524;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D2E9B524()
{
  v37 = v0;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 248);
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  v4 = *(v0 + 152);
  v5 = sub_1D2EE4618();
  __swift_project_value_buffer(v5, qword_1EDED2DB8);
  v6 = v4;
  v7 = *(v3 + 16);
  v7(v1, v6, v2);
  v8 = sub_1D2EE45F8();
  v9 = sub_1D2EE4DD8();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 248);
  v13 = *(v0 + 200);
  v12 = *(v0 + 208);
  if (v10)
  {
    v33 = v8;
    v15 = *(v0 + 184);
    v14 = *(v0 + 192);
    v16 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = v35;
    v34 = v16;
    *v16 = 136315138;
    v7(v14, v11, v13);
    (*(v12 + 56))(v14, 0, 1, v13);
    sub_1D2E5D050(v14, v15, &qword_1EC738A70, &qword_1D2EF20F0);
    if ((*(v12 + 48))(v15, 1, v13) == 1)
    {
      v17 = *(v0 + 208);
      v18 = *(v0 + 192);
      sub_1D2E5D0B8(*(v0 + 184), &qword_1EC738A70, &qword_1D2EF20F0);
      sub_1D2E5D0B8(v18, &qword_1EC738A70, &qword_1D2EF20F0);
      v19 = 0xE300000000000000;
      v20 = 7104878;
      (*(v17 + 8))(*(v0 + 248), *(v0 + 200));
    }

    else
    {
      v21 = *(v0 + 224);
      v22 = *(v0 + 232);
      v32 = v9;
      v24 = *(v0 + 200);
      v23 = *(v0 + 208);
      v25 = *(v0 + 192);
      (*(v23 + 32))(v22, *(v0 + 184), v24);
      v7(v21, v22, v24);
      v20 = sub_1D2EE4AA8();
      v19 = v26;
      v27 = *(v23 + 8);
      v27(v22, v24);
      v9 = v32;
      sub_1D2E5D0B8(v25, &qword_1EC738A70, &qword_1D2EF20F0);
      v27(*(v0 + 248), *(v0 + 200));
    }

    v28 = sub_1D2E685B0(v20, v19, &v36);

    *(v34 + 1) = v28;
    _os_log_impl(&dword_1D2E46000, v33, v9, "Successfully ended WaitOnHoldSession for call %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x1D38AF660](v35, -1, -1);
    MEMORY[0x1D38AF660](v34, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v29 = *(v0 + 160);
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  swift_beginAccess();
  sub_1D2E9BF90(v0 + 56, v29 + 264);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1D2E9B918()
{
  v49 = v0;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 272);
  v2 = *(v0 + 240);
  v3 = *(v0 + 200);
  v4 = *(v0 + 208);
  v5 = *(v0 + 152);
  v6 = sub_1D2EE4618();
  __swift_project_value_buffer(v6, qword_1EDED2DB8);
  v47 = *(v4 + 16);
  v47(v2, v5, v3);
  v7 = v1;
  v8 = sub_1D2EE45F8();
  v9 = sub_1D2EE4DD8();

  if (os_log_type_enabled(v8, v9))
  {
    v45 = v9;
    log = v8;
    v10 = *(v0 + 240);
    v11 = *(v0 + 200);
    v12 = *(v0 + 208);
    v13 = *(v0 + 168);
    v14 = *(v0 + 176);
    v15 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v48 = v44;
    *v15 = 136315394;
    v47(v14, v10, v11);
    (*(v12 + 56))(v14, 0, 1, v11);
    sub_1D2E5D050(v14, v13, &qword_1EC738A70, &qword_1D2EF20F0);
    if ((*(v12 + 48))(v13, 1, v11) == 1)
    {
      v16 = *(v0 + 208);
      v17 = *(v0 + 176);
      sub_1D2E5D0B8(*(v0 + 168), &qword_1EC738A70, &qword_1D2EF20F0);
      sub_1D2E5D0B8(v17, &qword_1EC738A70, &qword_1D2EF20F0);
      v18 = *(v16 + 8);
      v19 = 0xE300000000000000;
      v20 = 7104878;
    }

    else
    {
      v24 = *(v0 + 216);
      v25 = *(v0 + 224);
      v27 = *(v0 + 200);
      v26 = *(v0 + 208);
      v43 = *(v0 + 176);
      (*(v26 + 32))(v24, *(v0 + 168), v27);
      v47(v25, v24, v27);
      v20 = sub_1D2EE4AA8();
      v19 = v28;
      v18 = *(v26 + 8);
      v18(v24, v27);
      sub_1D2E5D0B8(v43, &qword_1EC738A70, &qword_1D2EF20F0);
    }

    v29 = *(v0 + 272);
    v18(*(v0 + 240), *(v0 + 200));
    v30 = sub_1D2E685B0(v20, v19, &v48);

    *(v15 + 4) = v30;
    *(v15 + 12) = 2080;
    swift_getErrorValue();
    v31 = *(v0 + 96);
    v32 = *(v0 + 104);
    v33 = sub_1D2EE4E58();
    v34 = *(v33 - 8);
    v35 = swift_task_alloc();
    v36 = *(v32 - 8);
    (*(v36 + 16))(v35, v31, v32);
    (*(v36 + 56))(v35, 0, 1, v32);
    v37 = sub_1D2EE2754(v35, v32);
    v39 = v38;
    (*(v34 + 8))(v35, v33);

    v40 = sub_1D2E685B0(v37, v39, &v48);

    *(v15 + 14) = v40;
    _os_log_impl(&dword_1D2E46000, log, v45, "Error ending WaitOnHoldSession for call %s %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38AF660](v44, -1, -1);
    MEMORY[0x1D38AF660](v15, -1, -1);
  }

  else
  {
    v21 = *(v0 + 240);
    v22 = *(v0 + 200);
    v23 = *(v0 + 208);

    (*(v23 + 8))(v21, v22);
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v41 = *(v0 + 8);

  return v41();
}

void sub_1D2E9BE4C()
{
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v0 = sub_1D2EE4618();
  __swift_project_value_buffer(v0, qword_1EDED2DB8);
  oslog = sub_1D2EE45F8();
  v1 = sub_1D2EE4DD8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136446210;
    *(v2 + 4) = sub_1D2E685B0(0x293A5F28676E6970, 0xE800000000000000, &v5);
    _os_log_impl(&dword_1D2E46000, oslog, v1, "%{public}s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v3);
    MEMORY[0x1D38AF660](v3, -1, -1);
    MEMORY[0x1D38AF660](v2, -1, -1);
  }
}

uint64_t sub_1D2E9BFF8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D2E7DE28;

  return sub_1D2E985B0(v2, v3);
}

unint64_t sub_1D2E9C090()
{
  result = qword_1EC739048;
  if (!qword_1EC739048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739048);
  }

  return result;
}

uint64_t sub_1D2E9C0E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D2E5BA34;

  return sub_1D2E977D0(a1, v4, v5, v6);
}

unint64_t sub_1D2E9C198()
{
  result = qword_1EC739060;
  if (!qword_1EC739060)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC739060);
  }

  return result;
}

uint64_t sub_1D2E9C1E4(uint64_t a1)
{
  v4 = *(sub_1D2EE3EB8() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D2E5BA34;

  return sub_1D2E97524(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1D2E9C2DC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1D2EE3EB8() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v8 = (v7 + 11) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = *(v1 + v7);
  v12 = v1[4];
  v13 = *(v1 + v8);
  v14 = *(v1 + v8 + 8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1D2E7DE28;

  return sub_1D2E96BFC(a1, v9, v10, v12, v1 + v6, v11, v13, v14);
}

uint64_t sub_1D2E9C434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 8) + **(a6 + 8));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1D2E5BA34;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1D2E9C57C(uint64_t a1)
{
  v1[19] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739070, &unk_1D2EF3CD0);
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2E9C648, 0, 0);
}

uint64_t sub_1D2E9C648()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[20];
  v9 = v1[19];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_1D2E9C800;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  sub_1D2E9D860(0, &qword_1EC739078, 0x1E69832B0);
  sub_1D2EE4C38();
  (*(v7 + 32))(boxed_opaque_existential_0, v6, v8);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1D2E9C974;
  v1[13] = &block_descriptor_5;
  [v9 getNotificationSettingsWithCompletionHandler_];
  (*(v7 + 8))(boxed_opaque_existential_0, v8);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1D2E9C800()
{

  return MEMORY[0x1EEE6DFA0](sub_1D2E9C8E0, 0, 0);
}

uint64_t sub_1D2E9C8E0()
{
  v1 = *(v0 + 144);
  v2 = [v1 authorizationStatus];

  v3 = *(v0 + 8);

  return v3(v2 == 2);
}

uint64_t sub_1D2E9C974(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v3 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739070, &unk_1D2EF3CD0);
  return sub_1D2EE4C58();
}

void sub_1D2E9C9D4(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738D00, &qword_1D2EF2808);
    sub_1D2EE4C48();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738D00, &qword_1D2EF2808);
    sub_1D2EE4C58();
  }
}

uint64_t sub_1D2E9CA64(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 296) = a4;
  *(v4 + 192) = a2;
  *(v4 + 200) = a3;
  *(v4 + 184) = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738D00, &qword_1D2EF2808);
  *(v4 + 208) = v5;
  *(v4 + 216) = *(v5 - 8);
  *(v4 + 224) = swift_task_alloc();
  sub_1D2EE3F78();
  *(v4 + 232) = swift_task_alloc();
  sub_1D2EE4A28();
  *(v4 + 240) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2E9CB90, 0, 0);
}

uint64_t sub_1D2E9CB90()
{
  v1 = *(v0 + 296);
  sub_1D2EE4A18();
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v4 = [v3 bundleForClass_];
  sub_1D2EE3F38();
  sub_1D2EE4A88();
  if (v1 == 1)
  {

    sub_1D2EE4A18();
    v5 = [v3 bundleForClass_];
    sub_1D2EE3F38();
    sub_1D2EE4A88();
  }

  v6 = [objc_allocWithZone(MEMORY[0x1E6983220]) init];
  *(v0 + 248) = v6;
  v7 = sub_1D2EE4A38();
  [v6 setTitle_];

  v8 = sub_1D2EE4A38();

  [v6 setBody_];

  [v6 setInterruptionLevel_];
  sub_1D2EE3E68();
  v9 = v6;
  v10 = sub_1D2EE4A38();

  *(v0 + 256) = [objc_opt_self() requestWithIdentifier:v10 content:v9 trigger:0];

  v11 = objc_allocWithZone(MEMORY[0x1E6983308]);
  v12 = sub_1D2EE4A38();
  v13 = [v11 initWithBundleIdentifier_];
  *(v0 + 264) = v13;

  v14 = swift_task_alloc();
  *(v0 + 272) = v14;
  *v14 = v0;
  v14[1] = sub_1D2E9CEA8;

  return sub_1D2E9C57C(v13);
}

uint64_t sub_1D2E9CEA8(char a1)
{
  *(*v1 + 297) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D2E9CFA8, 0, 0);
}

uint64_t sub_1D2E9CFA8()
{
  v30 = v0;
  if (*(v0 + 297) == 1)
  {
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 256);
    v2 = sub_1D2EE4618();
    *(v0 + 280) = __swift_project_value_buffer(v2, qword_1EDED2DB8);
    v3 = v1;
    v4 = sub_1D2EE45F8();
    v5 = sub_1D2EE4DD8();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 256);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v29 = v8;
      *v7 = 136315138;
      *(v0 + 176) = v6;
      sub_1D2E9D860(0, &qword_1EC739068, 0x1E6983298);
      v9 = v6;
      v10 = sub_1D2EE4AA8();
      v12 = sub_1D2E685B0(v10, v11, &v29);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_1D2E46000, v4, v5, "Posting notification to inform user of error %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x1D38AF660](v8, -1, -1);
      MEMORY[0x1D38AF660](v7, -1, -1);
    }

    v13 = *(v0 + 264);
    v28 = *(v0 + 256);
    v15 = *(v0 + 216);
    v14 = *(v0 + 224);
    v16 = *(v0 + 208);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1D2E9D3D0;
    swift_continuation_init();
    *(v0 + 136) = v16;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 112));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B50, &qword_1D2EF2420);
    sub_1D2EE4C38();
    (*(v15 + 32))(boxed_opaque_existential_0, v14, v16);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1D2E9C9D4;
    *(v0 + 104) = &block_descriptor_1;
    [v13 addNotificationRequest:v28 withCompletionHandler:v0 + 80];
    (*(v15 + 8))(boxed_opaque_existential_0, v16);

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v18 = sub_1D2EE4618();
    __swift_project_value_buffer(v18, qword_1EDED2DB8);
    v19 = sub_1D2EE45F8();
    v20 = sub_1D2EE4DD8();
    v21 = os_log_type_enabled(v19, v20);
    v23 = *(v0 + 256);
    v22 = *(v0 + 264);
    v24 = *(v0 + 248);
    if (v21)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1D2E46000, v19, v20, "Notifications not authorized", v25, 2u);
      MEMORY[0x1D38AF660](v25, -1, -1);
    }

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_1D2E9D3D0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 288) = v1;
  if (v1)
  {
    v2 = sub_1D2E9D568;
  }

  else
  {
    v2 = sub_1D2E9D4E0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D2E9D4E0()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D2E9D568(uint64_t a1)
{
  v28 = v1;
  v2 = *(v1 + 288);
  swift_willThrow();
  v3 = v2;
  v4 = sub_1D2EE45F8();
  v5 = sub_1D2EE4DB8();

  if (os_log_type_enabled(v4, v5))
  {
    v25 = *(v1 + 256);
    v26 = *(v1 + 264);
    v23 = *(v1 + 288);
    v24 = *(v1 + 248);
    v6 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v27 = v22;
    *v6 = 136315138;
    swift_getErrorValue();
    v7 = *(v1 + 144);
    v8 = *(v1 + 152);
    v9 = sub_1D2EE4E58();
    v10 = *(v9 - 8);
    v11 = swift_task_alloc();
    v12 = *(v8 - 8);
    (*(v12 + 16))(v11, v7, v8);
    (*(v12 + 56))(v11, 0, 1, v8);
    v13 = sub_1D2EE2754(v11, v8);
    v15 = v14;
    (*(v10 + 8))(v11, v9);

    v16 = sub_1D2E685B0(v13, v15, &v27);

    *(v6 + 4) = v16;
    _os_log_impl(&dword_1D2E46000, v4, v5, "Error posting notification: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x1D38AF660](v22, -1, -1);
    MEMORY[0x1D38AF660](v6, -1, -1);
  }

  else
  {
    v17 = *(v1 + 288);
    v19 = *(v1 + 256);
    v18 = *(v1 + 264);
  }

  v20 = *(v1 + 8);

  return v20();
}

uint64_t sub_1D2E9D860(uint64_t a1, unint64_t *a2, void *a3)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D2E9D8D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1D2E9D91C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1D2E9D980()
{
  result = qword_1EC739080;
  if (!qword_1EC739080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739080);
  }

  return result;
}

uint64_t sub_1D2E9D9D4(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    result = sub_1D2E4FDA8(a3);
    if (v7)
    {
      v8 = result;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v3;
      v13 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D2EDC49C();
        v10 = v13;
      }

      result = sub_1D2E9E60C(v8, v10);
      *v4 = v10;
    }
  }

  else
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    result = sub_1D2EC8EC8(a3, v12, *&a1);
    *v3 = v14;
  }

  return result;
}

uint64_t sub_1D2E9DA90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 4;
  }

  os_unfair_lock_lock((a1 + 52));
  if (*(a1 + 48) == 1 && v2 < *(a1 + 24))
  {
    os_unfair_lock_unlock((a1 + 52));
    return 4;
  }

  else
  {
    os_unfair_lock_unlock((a1 + 52));
    v6 = sub_1D2E9E7A0(1, a2);
    os_unfair_lock_lock((a1 + 52));
    v7 = *(a1 + 32);
    os_unfair_lock_unlock((a1 + 52));
    v8 = sub_1D2E9E7A0(0, a2);
    os_unfair_lock_lock((a1 + 52));
    v9 = *(a1 + 40);
    os_unfair_lock_unlock((a1 + 52));
    if (v7 <= v6)
    {
      if (v9 > v8)
      {
        return 1;
      }

      else
      {
        return 3;
      }
    }

    else
    {
      return 2 * (v9 > v8);
    }
  }
}

uint64_t sub_1D2E9DB80(uint64_t a1)
{
  sub_1D2EE4FB8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739088, &qword_1D2EF3E20);
  result = swift_allocObject();
  *(result + 16) = xmmword_1D2EF3D10;
  if (!*(a1 + 16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = result;
  result = sub_1D2E4FDA8(0);
  if ((v4 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = *(*(a1 + 56) + 8 * result);
  v6 = MEMORY[0x1E69E63B0];
  v7 = MEMORY[0x1E69E6438];
  v3[7] = MEMORY[0x1E69E63B0];
  v3[8] = v7;
  v3[4] = v5;
  v8 = sub_1D2EE4A78();
  MEMORY[0x1D38AE570](v8);

  MEMORY[0x1D38AE570](0x686365657073202CLL, 0xE90000000000003ALL);
  result = swift_allocObject();
  *(result + 16) = xmmword_1D2EF3D10;
  if (!*(a1 + 16))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result;
  result = sub_1D2E4FDA8(1);
  if ((v10 & 1) == 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = *(*(a1 + 56) + 8 * result);
  v9[7] = v6;
  v9[8] = v7;
  v9[4] = v11;
  v12 = sub_1D2EE4A78();
  MEMORY[0x1D38AE570](v12);

  MEMORY[0x1D38AE570](0x636E656C6973202CLL, 0xEA00000000003A65);
  result = swift_allocObject();
  *(result + 16) = xmmword_1D2EF3D10;
  if (!*(a1 + 16))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = result;
  result = sub_1D2E4FDA8(2);
  if ((v14 & 1) == 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = *(*(a1 + 56) + 8 * result);
  v13[7] = v6;
  v13[8] = v7;
  v13[4] = v15;
  v16 = sub_1D2EE4A78();
  MEMORY[0x1D38AE570](v16);

  MEMORY[0x1D38AE570](0x3A726568746F202CLL, 0xE800000000000000);
  result = swift_allocObject();
  *(result + 16) = xmmword_1D2EF3D10;
  if (!*(a1 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v17 = result;
  result = sub_1D2E4FDA8(3);
  if (v18)
  {
    v19 = *(*(a1 + 56) + 8 * result);
    v17[7] = v6;
    v17[8] = v7;
    v17[4] = v19;
    v20 = sub_1D2EE4A78();
    MEMORY[0x1D38AE570](v20);

    return 0x3A636973756DLL;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1D2E9DE44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v87 = MEMORY[0x1E69E7CC0];
    sub_1D2EDCA18(0, v5, 0);
    v7 = v87;
    v8 = (a2 + 32);
    v9 = v5;
    do
    {
      v10 = *v8;
      v11 = 0;
      if (*(*v8 + 16))
      {
        v12 = sub_1D2E4FDA8(0);
        if (v13)
        {
          v11 = *(*(v10 + 56) + 8 * v12);
        }
      }

      v15 = *(v87 + 16);
      v14 = *(v87 + 24);
      v16 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        sub_1D2EDCA18((v14 > 1), v15 + 1, 1);
      }

      *(v87 + 16) = v16;
      *(v87 + 8 * v15 + 32) = v11;
      ++v8;
      --v9;
    }

    while (v9);
  }

  else
  {
    v16 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v16)
    {

      v24 = 0.0;
      goto LABEL_29;
    }

    v7 = MEMORY[0x1E69E7CC0];
  }

  if (v16 < 4)
  {
    v17 = 0;
    v18 = 0.0;
LABEL_17:
    v21 = v16 - v17;
    v22 = (v7 + 8 * v17 + 32);
    do
    {
      v23 = *v22++;
      v18 = v18 + v23;
      --v21;
    }

    while (v21);
    goto LABEL_19;
  }

  v17 = v16 & 0xFFFFFFFFFFFFFFFCLL;
  v19 = (v7 + 48);
  v18 = 0.0;
  v20 = v16 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v18 = v18 + *(v19 - 2) + *(v19 - 1) + *v19 + v19[1];
    v19 += 4;
    v20 -= 4;
  }

  while (v20);
  if (v16 != v17)
  {
    goto LABEL_17;
  }

LABEL_19:

  v24 = v18 / v16;
  if (v5)
  {
    sub_1D2EDCA18(0, v5, 0);
    v25 = v6;
    v26 = (a2 + 32);
    v27 = v5;
    do
    {
      v28 = *v26;
      v29 = 0;
      if (*(*v26 + 16))
      {
        v30 = sub_1D2E4FDA8(1);
        if (v31)
        {
          v29 = *(*(v28 + 56) + 8 * v30);
        }
      }

      v33 = *(v6 + 16);
      v32 = *(v6 + 24);
      v34 = v33 + 1;
      if (v33 >= v32 >> 1)
      {
        sub_1D2EDCA18((v32 > 1), v33 + 1, 1);
      }

      *(v6 + 16) = v34;
      *(v6 + 8 * v33 + 32) = v29;
      ++v26;
      --v27;
    }

    while (v27);
    goto LABEL_31;
  }

LABEL_29:
  v34 = *(v6 + 16);
  if (!v34)
  {

    v42 = 0.0;
    goto LABEL_48;
  }

  v25 = v6;
LABEL_31:
  if (v34 < 4)
  {
    v35 = 0;
    v36 = 0.0;
LABEL_36:
    v39 = v34 - v35;
    v40 = (v25 + 8 * v35 + 32);
    do
    {
      v41 = *v40++;
      v36 = v36 + v41;
      --v39;
    }

    while (v39);
    goto LABEL_38;
  }

  v35 = v34 & 0xFFFFFFFFFFFFFFFCLL;
  v37 = (v25 + 48);
  v36 = 0.0;
  v38 = v34 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v36 = v36 + *(v37 - 2) + *(v37 - 1) + *v37 + v37[1];
    v37 += 4;
    v38 -= 4;
  }

  while (v38);
  if (v34 != v35)
  {
    goto LABEL_36;
  }

LABEL_38:

  v42 = v36 / v34;
  if (v5)
  {
    sub_1D2EDCA18(0, v5, 0);
    v43 = v6;
    v44 = (a2 + 32);
    v45 = v5;
    do
    {
      v46 = *v44;
      v47 = 0;
      if (*(*v44 + 16))
      {
        v48 = sub_1D2E4FDA8(2);
        if (v49)
        {
          v47 = *(*(v46 + 56) + 8 * v48);
        }
      }

      v51 = *(v6 + 16);
      v50 = *(v6 + 24);
      v52 = v51 + 1;
      if (v51 >= v50 >> 1)
      {
        sub_1D2EDCA18((v50 > 1), v51 + 1, 1);
      }

      *(v6 + 16) = v52;
      *(v6 + 8 * v51 + 32) = v47;
      ++v44;
      --v45;
    }

    while (v45);
    goto LABEL_50;
  }

LABEL_48:
  v52 = *(v6 + 16);
  if (!v52)
  {

    v60 = 0.0;
    goto LABEL_67;
  }

  v43 = v6;
LABEL_50:
  if (v52 < 4)
  {
    v53 = 0;
    v54 = 0.0;
LABEL_55:
    v57 = v52 - v53;
    v58 = (v43 + 8 * v53 + 32);
    do
    {
      v59 = *v58++;
      v54 = v54 + v59;
      --v57;
    }

    while (v57);
    goto LABEL_57;
  }

  v53 = v52 & 0xFFFFFFFFFFFFFFFCLL;
  v55 = (v43 + 48);
  v54 = 0.0;
  v56 = v52 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v54 = v54 + *(v55 - 2) + *(v55 - 1) + *v55 + v55[1];
    v55 += 4;
    v56 -= 4;
  }

  while (v56);
  if (v52 != v53)
  {
    goto LABEL_55;
  }

LABEL_57:

  v60 = v54 / v52;
  if (v5)
  {
    sub_1D2EDCA18(0, v5, 0);
    v61 = (a2 + 32);
    do
    {
      v62 = *v61;
      v63 = 0;
      if (*(*v61 + 16))
      {
        v64 = sub_1D2E4FDA8(3);
        if (v65)
        {
          v63 = *(*(v62 + 56) + 8 * v64);
        }
      }

      v67 = *(v6 + 16);
      v66 = *(v6 + 24);
      v68 = v67 + 1;
      if (v67 >= v66 >> 1)
      {
        sub_1D2EDCA18((v66 > 1), v67 + 1, 1);
      }

      *(v6 + 16) = v68;
      *(v6 + 8 * v67 + 32) = v63;
      ++v61;
      --v5;
    }

    while (v5);
LABEL_68:
    if (v68 > 3)
    {
      v69 = v68 & 0xFFFFFFFFFFFFFFFCLL;
      v71 = (v6 + 48);
      v70 = 0.0;
      v72 = v68 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v70 = v70 + *(v71 - 2) + *(v71 - 1) + *v71 + v71[1];
        v71 += 4;
        v72 -= 4;
      }

      while (v72);
      if (v68 == v69)
      {
        goto LABEL_75;
      }
    }

    else
    {
      v69 = 0;
      v70 = 0.0;
    }

    v73 = v68 - v69;
    v74 = (v6 + 8 * v69 + 32);
    do
    {
      v75 = *v74++;
      v70 = v70 + v75;
      --v73;
    }

    while (v73);
LABEL_75:

    v76 = v70 / v68;
    goto LABEL_76;
  }

LABEL_67:
  v68 = *(v6 + 16);
  if (v68)
  {
    goto LABEL_68;
  }

  v76 = 0.0;
LABEL_76:
  v77 = sub_1D2E9DA90(a1, a2);
  if (v77 == 4)
  {
    v78 = 0;
    if (v24 > 0.0)
    {
      goto LABEL_83;
    }
  }

  else
  {
    v78 = v77 == 0;
    if (v24 > 0.0)
    {
      goto LABEL_83;
    }
  }

  if (v42 <= 0.0 && v60 <= 0.0)
  {
    v79 = type metadata accessor for AudioHistEvent(0);
    v80 = *(*(v79 - 8) + 56);
    v81 = v79;
    v82 = a3;
    v83 = 1;
    goto LABEL_84;
  }

LABEL_83:
  v84 = type metadata accessor for AudioHistEvent(0);
  sub_1D2EE3E38();
  *a3 = 0xD000000000000037;
  *(a3 + 8) = 0x80000001D2EE7580;
  *(a3 + 16) = 0xD000000000000011;
  *(a3 + 24) = 0x80000001D2EE75C0;
  *(a3 + 32) = 0xD000000000000014;
  *(a3 + 40) = 0x80000001D2EE75E0;
  *(a3 + 48) = 0xD000000000000011;
  *(a3 + 56) = 0x80000001D2EE7600;
  *(a3 + 64) = 0xD000000000000013;
  *(a3 + 72) = 0x80000001D2EE7620;
  *(a3 + 80) = 0xD000000000000012;
  *(a3 + 88) = 0x80000001D2EE7640;
  *(a3 + 96) = 0x6F6365725F706974;
  *(a3 + 104) = 0xEF6465646E656D6DLL;
  *(a3 + 112) = 0x726573755F706974;
  *(a3 + 120) = 0xEF6E6F697463615FLL;
  strcpy((a3 + 128), "failure_reason");
  *(a3 + 143) = -18;
  *(a3 + 144) = v24;
  *(a3 + 152) = 0;
  *(a3 + 160) = 1.0 - v42;
  *(a3 + 168) = 0;
  *(a3 + 176) = v76;
  *(a3 + 184) = 0;
  *(a3 + 192) = v60;
  *(a3 + 200) = 0;
  *(a3 + 208) = v42;
  *(a3 + 216) = 0;
  *(a3 + 217) = v78;
  *(a3 + 218) = 1027;
  v80 = *(*(v84 - 8) + 56);
  v82 = a3;
  v83 = 0;
  v81 = v84;
LABEL_84:

  return v80(v82, v83, 1, v81);
}

void sub_1D2E9E5D4(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_1D2E9E60C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D2EE4ED8() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + v6);
      sub_1D2EE5338();
      MEMORY[0x1D38AEDD0](v9);
      result = sub_1D2EE5378();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

double sub_1D2E9E7A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = (a2 + 32);
    v5 = 0.0;
    v6 = 0.0;
    do
    {
      v7 = *v4;
      v8 = 0.0;
      if (*(*v4 + 16))
      {
        v9 = sub_1D2E4FDA8(a1);
        v8 = 0.0;
        if (v10)
        {
          v8 = *(*(v7 + 56) + 8 * v9);
        }
      }

      v6 = v6 + v8;
      v5 = v5 + 1.0;
      ++v4;
      --v3;
    }

    while (v3);
    v11 = v6 / v5;
  }

  else
  {
    v11 = NAN;
  }

  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v12 = sub_1D2EE4618();
  __swift_project_value_buffer(v12, qword_1EDED2DB8);
  v13 = sub_1D2EE45F8();
  v14 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21 = v16;
    *v15 = 136315394;
    v17 = sub_1D2EE4AA8();
    v19 = sub_1D2E685B0(v17, v18, &v21);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2048;
    *(v15 + 14) = v11;
    _os_log_impl(&dword_1D2E46000, v13, v14, "Average classification score %s: %f", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1D38AF660](v16, -1, -1);
    MEMORY[0x1D38AF660](v15, -1, -1);
  }

  return v11;
}

uint64_t sub_1D2E9E97C(void *a1)
{
  result = sub_1D2EDD324(MEMORY[0x1E69E7CC0]);
  v36 = result;
  if (a1)
  {
    v3 = [a1 analysisResult];
    v4 = sub_1D2EE49B8();

    v34 = 0x636973756DLL;
    v35 = 0xE500000000000000;
    sub_1D2EE4F68();
    if (*(v4 + 16) && (v5 = sub_1D2E4FD64(v33), (v6 & 1) != 0))
    {
      sub_1D2E68F60(*(v4 + 56) + 32 * v5, &v34);
      sub_1D2E5073C(v33);

      v7 = swift_dynamicCast();
      if (v7)
      {
        v8 = v32;
      }

      else
      {
        v8 = 0;
      }

      v9 = v7 ^ 1;
    }

    else
    {

      sub_1D2E5073C(v33);
      v8 = 0;
      v9 = 1;
    }

    sub_1D2E9D9D4(v8, v9, 0);
    v10 = [a1 analysisResult];
    v11 = sub_1D2EE49B8();

    v34 = 0x686365657073;
    v35 = 0xE600000000000000;
    sub_1D2EE4F68();
    if (*(v11 + 16) && (v12 = sub_1D2E4FD64(v33), (v13 & 1) != 0))
    {
      sub_1D2E68F60(*(v11 + 56) + 32 * v12, &v34);
      sub_1D2E5073C(v33);

      v14 = swift_dynamicCast();
      if (v14)
      {
        v15 = v32;
      }

      else
      {
        v15 = 0;
      }

      v16 = v14 ^ 1;
    }

    else
    {

      sub_1D2E5073C(v33);
      v15 = 0;
      v16 = 1;
    }

    sub_1D2E9D9D4(v15, v16, 1);
    v17 = [a1 analysisResult];
    v18 = sub_1D2EE49B8();

    v34 = 0x65636E656C6973;
    v35 = 0xE700000000000000;
    sub_1D2EE4F68();
    if (*(v18 + 16) && (v19 = sub_1D2E4FD64(v33), (v20 & 1) != 0))
    {
      sub_1D2E68F60(*(v18 + 56) + 32 * v19, &v34);
      sub_1D2E5073C(v33);

      v21 = swift_dynamicCast();
      if (v21)
      {
        v22 = v32;
      }

      else
      {
        v22 = 0;
      }

      v23 = v21 ^ 1;
    }

    else
    {

      sub_1D2E5073C(v33);
      v22 = 0;
      v23 = 1;
    }

    result = sub_1D2E9D9D4(v22, v23, 2);
    v24 = v36;
    if (*(v36 + 16))
    {
      result = sub_1D2E4FDA8(0);
      if (v25)
      {
        if (*(v24 + 16))
        {
          v26 = *(*(v24 + 56) + 8 * result);
          result = sub_1D2E4FDA8(1);
          if (v27)
          {
            if (*(v24 + 16))
            {
              v28 = *(*(v24 + 56) + 8 * result);
              result = sub_1D2E4FDA8(2);
              if (v29)
              {
                v30 = 1.0 - v26 - v28 - *(*(v24 + 56) + 8 * result);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v33[0] = v24;
                sub_1D2EC8EC8(3, isUniquelyReferenced_nonNull_native, v30);

                return v33[0];
              }

LABEL_36:
              __break(1u);
              return result;
            }

LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

LABEL_33:
        __break(1u);
        goto LABEL_34;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_33;
  }

  return result;
}

unint64_t sub_1D2E9ED88()
{
  result = qword_1EC739090;
  if (!qword_1EC739090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739090);
  }

  return result;
}

id sub_1D2E9EDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v61 = a2;
  v62 = a3;
  v56 = a1;
  ObjectType = swift_getObjectType();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7391E8, &qword_1D2EF4058);
  v67 = *(v8 - 8);
  v68 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739190, &qword_1D2EF3FC0);
  v69 = *(v10 - 8);
  v70 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v63 = &v55 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7391B0, &qword_1D2EF3FF0);
  v64 = *(v12 - 8);
  v65 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v60 = &v55 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7391F0, &qword_1D2EF4060);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v55 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7391A0, &unk_1D2EF3FE0);
  v72 = *(v18 - 8);
  v73 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v55 = &v55 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7391C0, &qword_1D2EF4000);
  v21 = *(v20 - 8);
  v58 = v20;
  v59 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v55 - v22;
  v24 = &v5[OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_mediaAnalyzerMutex];
  *v24 = 0;
  *(v24 + 1) = 0;
  *&v5[OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_dutyCyclingTask] = 0;
  v25 = &v5[OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_dutyCycleLength];
  v26 = v62;
  *v25 = v61;
  v25[1] = v26;
  v27 = &v5[OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_dutyCycleInitialDelay];
  *v27 = a4;
  *(v27 + 1) = a5;
  sub_1D2EA1F0C();
  v28 = *MEMORY[0x1E69E8650];
  (*(v15 + 104))(v17, v28, v14);
  v57 = v23;
  v29 = v55;
  sub_1D2EE4CC8();
  (*(v15 + 8))(v17, v14);
  (*(v21 + 16))(&v5[OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_mediaAnalysisEventStream], v23, v20);
  v30 = v29;
  (*(v72 + 16))(&v5[OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_mediaAnalysisEventStreamContinuation], v29, v73);
  v32 = v66;
  v31 = v67;
  v33 = v68;
  (*(v67 + 104))(v66, v28, v68);
  v34 = v60;
  v35 = v63;
  sub_1D2EE4CC8();
  (*(v31 + 8))(v32, v33);
  v37 = v64;
  v36 = v65;
  (*(v64 + 16))(&v5[OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_soundAnalyzerEventStream], v34, v65);
  v39 = v69;
  v38 = v70;
  (*(v69 + 16))(&v5[OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_soundAnalyzerEventStreamContinuation], v35, v70);
  v40 = &v5[OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_config];
  v41 = v56;
  v42 = *(v56 + 80);
  *(v40 + 4) = *(v56 + 64);
  *(v40 + 5) = v42;
  *(v40 + 6) = *(v41 + 96);
  *(v40 + 14) = *(v41 + 112);
  v43 = *(v41 + 16);
  *v40 = *v41;
  *(v40 + 1) = v43;
  v44 = *(v41 + 48);
  *(v40 + 2) = *(v41 + 32);
  *(v40 + 3) = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7391F8, &qword_1D2EF4068);
  v45 = swift_allocObject();
  *(v45 + 52) = 0;
  *(v45 + 16) = 1;
  *(v45 + 24) = 0;
  __asm { FMOV            V0.2D, #0.5 }

  *(v45 + 32) = _Q0;
  *(v45 + 48) = 1;
  v51 = &v5[OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_aggregator];
  v52 = MEMORY[0x1E69E7CC0];
  *v51 = v45;
  v51[1] = v52;
  v51[2] = 0;
  v74.receiver = v5;
  v74.super_class = ObjectType;
  v53 = objc_msgSendSuper2(&v74, sel_init);
  (*(v39 + 8))(v35, v38);
  (*(v37 + 8))(v34, v36);
  (*(v72 + 8))(v30, v73);
  (*(v59 + 8))(v57, v58);
  return v53;
}

id sub_1D2E9F418(id *a1, uint64_t a2, char *a3, int a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7391C0, &qword_1D2EF4000);
  v56 = *(v8 - 8);
  v57 = v8;
  v9 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v55 = &v52 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739040, &qword_1D2EF2460);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v58 = &v52 - v12;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v13 = sub_1D2EE4618();
  __swift_project_value_buffer(v13, qword_1EDED2DB8);
  v14 = sub_1D2EE45F8();
  v15 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = a3;
    v17 = a4;
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = a2;
    _os_log_impl(&dword_1D2E46000, v14, v15, "Starting MediaAnalyzer client for stream token %ld", v18, 0xCu);
    v19 = v18;
    a4 = v17;
    a3 = v16;
    MEMORY[0x1D38AF660](v19, -1, -1);
  }

  v20 = [objc_allocWithZone(MEMORY[0x1E69865A0]) initWithDelegate:a3 delegateQueue:0 analysisType:1 streamToken:a2];
  v21 = sub_1D2EE45F8();
  v22 = sub_1D2EE4DD8();
  v23 = os_log_type_enabled(v21, v22);
  if (v20)
  {
    if (v23)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1D2E46000, v21, v22, "MediaAnalyzer client successfully created", v24, 2u);
      MEMORY[0x1D38AF660](v24, -1, -1);
    }

    *a1 = v20;
    result = [v20 enableMediaAnalyzer_];
    v26 = &a3[OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_config];
    if (a4)
    {
      v27 = *(v26 + 14);
      if ((v27 & 0x8000000000000000) == 0)
      {
        v28 = 104;
LABEL_16:
        v33 = *&v26[v28];
        v34 = *(v26 + 8);
        v35 = &a3[OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_aggregator];
        swift_beginAccess();
        v36 = *v35;
        os_unfair_lock_lock((*v35 + 52));
        v37 = (a4 & 1) == 0;
        LOBYTE(v36[4]._os_unfair_lock_opaque) = v37;
        *&v36[6]._os_unfair_lock_opaque = v27;
        *&v36[8]._os_unfair_lock_opaque = v34;
        *&v36[10]._os_unfair_lock_opaque = v33;
        LOBYTE(v36[12]._os_unfair_lock_opaque) = v37;
        os_unfair_lock_unlock(v36 + 13);
        *(v35 + 1) = MEMORY[0x1E69E7CC0];
        *(v35 + 2) = v27;
        swift_endAccess();

        v38 = OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_mediaAnalysisEventStream;
        v39 = sub_1D2EE4CB8();
        v40 = *(v39 - 8);
        v41 = *(v40 + 56);
        v54 = a4;
        v42 = v58;
        v52 = v40 + 56;
        v53 = v41;
        v41(v58, 1, 1, v39);
        v44 = v55;
        v43 = v56;
        v45 = v57;
        (*(v56 + 16))(v55, &a3[v38], v57);
        v46 = (*(v43 + 80) + 32) & ~*(v43 + 80);
        v47 = swift_allocObject();
        *(v47 + 16) = 0;
        *(v47 + 24) = 0;
        (*(v43 + 32))(v47 + v46, v44, v45);
        *(v47 + ((v9 + v46 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
        v48 = a3;
        sub_1D2ED7FB0(0, 0, v42, &unk_1D2EF4020, v47);

        if (v54)
        {
          v49 = OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_dutyCyclingTask;
          if (*&v48[OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_dutyCyclingTask])
          {

            sub_1D2EE4D38();
          }

          *&v48[v49] = 0;
        }

        else
        {
          v53(v42, 1, 1, v39);
          v50 = swift_allocObject();
          v50[2] = 0;
          v50[3] = 0;
          v50[4] = v48;
          v51 = v48;
          *&v51[OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_dutyCyclingTask] = sub_1D2ED7FB0(0, 0, v42, &unk_1D2EF4030, v50);
        }
      }

      __break(1u);
    }

    else
    {
      v27 = *(v26 + 7);
      if ((v27 & 0x8000000000000000) == 0)
      {
        v28 = 72;
        goto LABEL_16;
      }
    }

    __break(1u);
    return result;
  }

  if (v23)
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1D2E46000, v21, v22, "MediaAnalyzer is nil", v29, 2u);
    MEMORY[0x1D38AF660](v29, -1, -1);
  }

  v30 = sub_1D2EE4CB8();
  v31 = v58;
  (*(*(v30 - 8) + 56))(v58, 1, 1, v30);
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  sub_1D2E8CB18(0, 0, v31, &unk_1D2EF4010, v32);

  return sub_1D2E5D0B8(v31, &qword_1EC739040, &qword_1D2EF2460);
}

uint64_t sub_1D2E9FA64()
{
  *(v0 + 56) = type metadata accessor for AudioHistEvent(0);
  *(v0 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2E9FAF4, 0, 0);
}

uint64_t sub_1D2E9FAF4(uint64_t a1)
{
  v3 = v1[7];
  v2 = v1[8];
  sub_1D2EE3E38();
  *v2 = 0xD000000000000037;
  *(v2 + 8) = 0x80000001D2EE7580;
  *(v2 + 16) = 0xD000000000000011;
  *(v2 + 24) = 0x80000001D2EE75C0;
  *(v2 + 32) = 0xD000000000000014;
  *(v2 + 40) = 0x80000001D2EE75E0;
  *(v2 + 48) = 0xD000000000000011;
  *(v2 + 56) = 0x80000001D2EE7600;
  *(v2 + 64) = 0xD000000000000013;
  *(v2 + 72) = 0x80000001D2EE7620;
  *(v2 + 80) = 0xD000000000000012;
  *(v2 + 88) = 0x80000001D2EE7640;
  *(v2 + 96) = 0x6F6365725F706974;
  *(v2 + 104) = 0xEF6465646E656D6DLL;
  *(v2 + 112) = 0x726573755F706974;
  *(v2 + 120) = 0xEF6E6F697463615FLL;
  strcpy((v2 + 128), "failure_reason");
  *(v2 + 143) = -18;
  *(v2 + 144) = 0;
  *(v2 + 152) = 1;
  *(v2 + 160) = 0;
  *(v2 + 168) = 1;
  *(v2 + 176) = 0;
  *(v2 + 184) = 1;
  *(v2 + 192) = 0;
  *(v2 + 200) = 1;
  *(v2 + 208) = 0;
  *(v2 + 216) = 1;
  *(v2 + 217) = 768;
  *(v2 + 219) = 0;
  v1[5] = v3;
  v1[6] = &off_1F4E95AF8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 2);
  sub_1D2EA2BAC(v2, boxed_opaque_existential_0);
  sub_1D2EDFAC8();
  sub_1D2E8E940((v1 + 2));
  sub_1D2EA2C10(v2);

  v5 = v1[1];

  return v5();
}

uint64_t sub_1D2E9FCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739040, &qword_1D2EF2460);
  v4[12] = swift_task_alloc();
  v5 = sub_1D2EE5078();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v6 = sub_1D2EE5088();
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2E9FE34, 0, 0);
}

uint64_t sub_1D2E9FE34()
{
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  *(v0 + 160) = __swift_project_value_buffer(v1, qword_1EDED2DB8);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Starting media analysis duty cycling", v4, 2u);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v5 = OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_mediaAnalyzerMutex;
  *(v0 + 168) = OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_dutyCycleLength;
  *(v0 + 176) = v5;
  if (sub_1D2EE4D48())
  {
    v6 = sub_1D2EE45F8();
    v7 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1D2E46000, v6, v7, "Stopping media analysis duty cycling", v8, 2u);
      MEMORY[0x1D38AF660](v8, -1, -1);
    }

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    *(v0 + 57) = 0;
    v12 = *(v0 + 112);
    v11 = *(v0 + 120);
    v13 = *(v0 + 104);
    v14 = (*(v0 + 88) + *(v0 + 168));
    v15 = *v14;
    v16 = v14[1];
    sub_1D2EE52E8();
    *(v0 + 64) = v15;
    *(v0 + 72) = v16;
    *(v0 + 48) = 0;
    *(v0 + 40) = 0;
    *(v0 + 56) = 1;
    v17 = sub_1D2EA2EF8(&qword_1EC7391C8, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
    sub_1D2EE52C8();
    sub_1D2EA2EF8(&qword_1EC7391D0, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
    sub_1D2EE5098();
    v18 = *(v12 + 8);
    *(v0 + 184) = v18;
    *(v0 + 192) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v18(v11, v13);
    v19 = swift_task_alloc();
    *(v0 + 200) = v19;
    *v19 = v0;
    v19[1] = sub_1D2EA01AC;
    v21 = *(v0 + 128);
    v20 = *(v0 + 136);

    return MEMORY[0x1EEE6DE58](v21, v0 + 40, v20, v17);
  }
}

uint64_t sub_1D2EA01AC()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    (*(v2 + 184))(*(v2 + 128), *(v2 + 104));
    v3 = sub_1D2EA06B8;
  }

  else
  {
    v5 = *(v2 + 144);
    v4 = *(v2 + 152);
    v6 = *(v2 + 136);
    (*(v2 + 184))(*(v2 + 128), *(v2 + 104));
    (*(v5 + 8))(v4, v6);
    v3 = sub_1D2EA0304;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D2EA0304()
{
  if (sub_1D2EE4D48())
  {
    v1 = sub_1D2EE45F8();
    v2 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = "Duty cycling task is cancelled";
LABEL_12:
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1D2E46000, v1, v2, v3, v11, 2u);
      MEMORY[0x1D38AF660](v11, -1, -1);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v4 = *(v0 + 88) + *(v0 + 176);
  os_unfair_lock_lock(v4);
  v5 = *(v4 + 8);
  if (v5)
  {
    [v5 enableMediaAnalyzer_];
  }

  v6 = sub_1D2EE45F8();
  v7 = sub_1D2EE4DD8();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 57);
  if (v8)
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    v9 ^= 1u;
    *(v10 + 4) = v9;
    _os_log_impl(&dword_1D2E46000, v6, v7, "Duty cycling status enabled=%{BOOL}d", v10, 8u);
    MEMORY[0x1D38AF660](v10, -1, -1);
  }

  else
  {

    LOBYTE(v9) = v9 ^ 1;
  }

  os_unfair_lock_unlock((*(v0 + 88) + *(v0 + 176)));
  if (sub_1D2EE4D48())
  {
    v1 = sub_1D2EE45F8();
    v2 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = "Stopping media analysis duty cycling";
      goto LABEL_12;
    }

LABEL_13:

    v12 = *(v0 + 8);

    return v12();
  }

  *(v0 + 57) = v9;
  v15 = *(v0 + 112);
  v14 = *(v0 + 120);
  v16 = *(v0 + 104);
  v17 = (*(v0 + 88) + *(v0 + 168));
  v18 = *v17;
  v19 = v17[1];
  sub_1D2EE52E8();
  *(v0 + 64) = v18;
  *(v0 + 72) = v19;
  *(v0 + 48) = 0;
  *(v0 + 40) = 0;
  *(v0 + 56) = 1;
  v20 = sub_1D2EA2EF8(&qword_1EC7391C8, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1D2EE52C8();
  sub_1D2EA2EF8(&qword_1EC7391D0, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1D2EE5098();
  v21 = *(v15 + 8);
  *(v0 + 184) = v21;
  *(v0 + 192) = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v14, v16);
  v22 = swift_task_alloc();
  *(v0 + 200) = v22;
  *v22 = v0;
  v22[1] = sub_1D2EA01AC;
  v24 = *(v0 + 128);
  v23 = *(v0 + 136);

  return MEMORY[0x1EEE6DE58](v24, v0 + 40, v23, v20);
}

uint64_t sub_1D2EA06B8()
{
  v27 = v0;
  v1 = v0[26];
  (*(v0[18] + 8))(v0[19], v0[17]);
  v2 = v1;
  v3 = sub_1D2EE45F8();
  v4 = sub_1D2EE4DB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v5 = 136315138;
    swift_getErrorValue();
    v6 = v0[2];
    v7 = v0[3];
    v8 = sub_1D2EE4E58();
    v9 = *(v8 - 8);
    v10 = swift_task_alloc();
    v11 = *(v7 - 8);
    (*(v11 + 16))(v10, v6, v7);
    (*(v11 + 56))(v10, 0, 1, v7);
    v12 = sub_1D2EE2754(v10, v7);
    v14 = v13;
    (*(v9 + 8))(v10, v8);

    v15 = sub_1D2E685B0(v12, v14, &v26);

    *(v5 + 4) = v15;
    _os_log_impl(&dword_1D2E46000, v3, v4, "Media analysis duty cycling failed with error %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x1D38AF660](v25, -1, -1);
    MEMORY[0x1D38AF660](v5, -1, -1);
  }

  v16 = v0[26];
  v17 = v0[12];
  v18 = sub_1D2EE4CB8();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  sub_1D2E8CB18(0, 0, v17, &unk_1D2EF4040, v19);

  sub_1D2E5D0B8(v17, &qword_1EC739040, &qword_1D2EF2460);
  v20 = sub_1D2EE45F8();
  v21 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1D2E46000, v20, v21, "Stopping media analysis duty cycling", v22, 2u);
    MEMORY[0x1D38AF660](v22, -1, -1);
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_1D2EA0A78()
{
  *(v0 + 56) = type metadata accessor for AudioHistEvent(0);
  *(v0 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2EA0B08, 0, 0);
}

uint64_t sub_1D2EA0B08(uint64_t a1)
{
  v3 = v1[7];
  v2 = v1[8];
  sub_1D2EE3E38();
  *v2 = 0xD000000000000037;
  *(v2 + 8) = 0x80000001D2EE7580;
  *(v2 + 16) = 0xD000000000000011;
  *(v2 + 24) = 0x80000001D2EE75C0;
  *(v2 + 32) = 0xD000000000000014;
  *(v2 + 40) = 0x80000001D2EE75E0;
  *(v2 + 48) = 0xD000000000000011;
  *(v2 + 56) = 0x80000001D2EE7600;
  *(v2 + 64) = 0xD000000000000013;
  *(v2 + 72) = 0x80000001D2EE7620;
  *(v2 + 80) = 0xD000000000000012;
  *(v2 + 88) = 0x80000001D2EE7640;
  *(v2 + 96) = 0x6F6365725F706974;
  *(v2 + 104) = 0xEF6465646E656D6DLL;
  *(v2 + 112) = 0x726573755F706974;
  *(v2 + 120) = 0xEF6E6F697463615FLL;
  strcpy((v2 + 128), "failure_reason");
  *(v2 + 143) = -18;
  *(v2 + 144) = 0;
  *(v2 + 152) = 1;
  *(v2 + 160) = 0;
  *(v2 + 168) = 1;
  *(v2 + 176) = 0;
  *(v2 + 184) = 1;
  *(v2 + 192) = 0;
  *(v2 + 200) = 1;
  *(v2 + 208) = 0;
  *(v2 + 216) = 1;
  *(v2 + 217) = 768;
  *(v2 + 219) = 3;
  v1[5] = v3;
  v1[6] = &off_1F4E95AF8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 2);
  sub_1D2EA2BAC(v2, boxed_opaque_existential_0);
  sub_1D2EDFAC8();
  sub_1D2E8E940((v1 + 2));
  sub_1D2EA2C10(v2);

  v5 = v1[1];

  return v5();
}

uint64_t sub_1D2EA0CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7391D8, &qword_1D2EF4048);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7391E0, &qword_1D2EF4050);
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2EA0E20, 0, 0);
}

uint64_t sub_1D2EA0E20()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7391C0, &qword_1D2EF4000);
  sub_1D2EE4D08();
  v1 = OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_soundAnalyzerEventStreamContinuation;
  v0[14] = OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_aggregator;
  v0[15] = v1;
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_1D2EA0F00;
  v3 = v0[11];

  return MEMORY[0x1EEE6D9C8](v0 + 5, 0, 0, v3);
}

uint64_t sub_1D2EA0F00()
{

  return MEMORY[0x1EEE6DFA0](sub_1D2EA0FFC, 0, 0);
}

uint64_t sub_1D2EA0FFC()
{
  v62 = v0;
  v1 = v0 + 40;
  v2 = *(v0 + 40);
  if (v2)
  {
    swift_beginAccess();
    v3 = v2;
    v4 = sub_1D2E9E97C(v2);
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v5 = sub_1D2EE4618();
    __swift_project_value_buffer(v5, qword_1EDED2DB8);

    v6 = sub_1D2EE45F8();
    v7 = sub_1D2EE4DA8();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = v3;
      v10 = swift_slowAlloc();
      v61 = v10;
      *v8 = 136315138;
      v11 = sub_1D2E9DB80(v4);
      v13 = sub_1D2E685B0(v11, v12, &v61);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_1D2E46000, v6, v7, "Running classification score: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      v14 = v10;
      v3 = v9;
      v1 = v0 + 40;
      MEMORY[0x1D38AF660](v14, -1, -1);
      MEMORY[0x1D38AF660](v8, -1, -1);
    }

    v15 = *(v0 + 112);
    v16 = *(v0 + 56);
    v17 = v16 + v15;
    v18 = *(v16 + v15 + 16);
    if (v18)
    {
      v19 = *(v17 + 8);
      if (*(v19 + 2) == v18)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v17 + 8) = v19;
        if (!isUniquelyReferenced_nonNull_native || (v18 - 1) > *(v19 + 3) >> 1)
        {
          v21 = *(v0 + 56) + *(v0 + 112);
          v19 = sub_1D2EC823C(isUniquelyReferenced_nonNull_native, v18, 1, v19);
          *(v21 + 8) = v19;
        }

        v22 = *(v0 + 56) + *(v0 + 112);
        sub_1D2EA2FEC((v19 + 32));
        v23 = *(v19 + 2);
        memmove(v19 + 32, v19 + 40, 8 * v23 - 8);
        *(v19 + 2) = v23 - 1;
        *(v22 + 8) = v19;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1D2EC823C(0, *(v19 + 2) + 1, 1, v19);
      }

      v25 = *(v19 + 2);
      v24 = *(v19 + 3);
      if (v25 >= v24 >> 1)
      {
        v19 = sub_1D2EC823C((v24 > 1), v25 + 1, 1, v19);
      }

      v26 = *(v0 + 56) + *(v0 + 112);
      *(v19 + 2) = v25 + 1;
      *&v19[8 * v25 + 32] = v4;
      *(v26 + 8) = v19;
      v15 = *(v0 + 112);
      v16 = *(v0 + 56);
    }

    v27 = (v16 + v15);
    swift_endAccess();
    v28 = *(v16 + v15 + 8);
    v29 = *(v28 + 16);
    if (v29)
    {
      v30 = *v27;

      os_unfair_lock_lock((v30 + 52));
      if ((*(v30 + 48) & 1) != 0 && v29 < *(v30 + 24))
      {
        os_unfair_lock_unlock((v30 + 52));
      }

      else
      {
        os_unfair_lock_unlock((v30 + 52));
        v33 = sub_1D2E9E7A0(1, v28);
        os_unfair_lock_lock((v30 + 52));
        v34 = *(v30 + 32);
        os_unfair_lock_unlock((v30 + 52));
        v35 = sub_1D2E9E7A0(0, v28);
        os_unfair_lock_lock((v30 + 52));
        v36 = *(v30 + 40);
        os_unfair_lock_unlock((v30 + 52));

        v37 = sub_1D2EE45F8();
        v38 = sub_1D2EE4DD8();
        if (os_log_type_enabled(v37, v38))
        {
          if (v36 > v35)
          {
            v39 = 1;
          }

          else
          {
            v39 = 3;
          }

          if (v34 > v33)
          {
            v40 = 2 * (v36 > v35);
          }

          else
          {
            v40 = v39;
          }

          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v61 = v42;
          *v41 = 136315138;
          *(v1 + 97) = v40;
          v43 = sub_1D2EE4AA8();
          v45 = sub_1D2E685B0(v43, v44, &v61);

          *(v41 + 4) = v45;
          _os_log_impl(&dword_1D2E46000, v37, v38, "Sound analysis prediction: %s", v41, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v42);
          MEMORY[0x1D38AF660](v42, -1, -1);
          MEMORY[0x1D38AF660](v41, -1, -1);
        }

        v46 = (*(v0 + 56) + *(v0 + 112));
        v47 = v46[1];
        v48 = *(v47 + 16);
        if (v48)
        {
          v49 = *v46;

          os_unfair_lock_lock((v49 + 52));
          if ((*(v49 + 48) & 1) != 0 && v48 < *(v49 + 24))
          {
            os_unfair_lock_unlock((v49 + 52));
          }

          else
          {
            v50 = *(v0 + 72);
            v51 = *(v0 + 80);
            v52 = *(v0 + 64);
            os_unfair_lock_unlock((v49 + 52));
            v53 = sub_1D2E9E7A0(1, v47);
            os_unfair_lock_lock((v49 + 52));
            v54 = *(v49 + 32);
            os_unfair_lock_unlock((v49 + 52));
            v55 = sub_1D2E9E7A0(0, v47);
            os_unfair_lock_lock((v49 + 52));
            v56 = *(v49 + 40);
            os_unfair_lock_unlock((v49 + 52));

            if (v56 > v55)
            {
              v57 = 1;
            }

            else
            {
              v57 = 3;
            }

            v58 = 2 * (v56 > v55);
            if (v54 <= v53)
            {
              v58 = v57;
            }

            *(v0 + 136) = v58;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739190, &qword_1D2EF3FC0);
            sub_1D2EE4CD8();
            (*(v50 + 8))(v51, v52);
          }
        }
      }
    }

    v59 = swift_task_alloc();
    *(v0 + 128) = v59;
    *v59 = v0;
    v59[1] = sub_1D2EA0F00;
    v60 = *(v0 + 88);

    return MEMORY[0x1EEE6D9C8](v1, 0, 0, v60);
  }

  else
  {
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_1D2EA16D0(id *a1, uint64_t a2)
{
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v4 = sub_1D2EE4618();
  __swift_project_value_buffer(v4, qword_1EDED2DB8);
  v5 = sub_1D2EE45F8();
  v6 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1D2E46000, v5, v6, "Stopping MediaAnalyzer client", v7, 2u);
    MEMORY[0x1D38AF660](v7, -1, -1);
  }

  if (*a1)
  {
    [*a1 enableMediaAnalyzer_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7391A0, &unk_1D2EF3FE0);
  sub_1D2EE4CE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739190, &qword_1D2EF3FC0);
  sub_1D2EE4CE8();
  v8 = OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_dutyCyclingTask;
  if (*(a2 + OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_dutyCyclingTask))
  {

    sub_1D2EE4D38();
  }

  *(a2 + v8) = 0;

  v9 = a2 + OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_aggregator;
  swift_beginAccess();
  *(v9 + 8) = MEMORY[0x1E69E7CC0];
}

id sub_1D2EA18B0(id *a1, uint64_t a2)
{
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v4 = sub_1D2EE4618();
  __swift_project_value_buffer(v4, qword_1EDED2DB8);
  v5 = sub_1D2EE45F8();
  v6 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1D2E46000, v5, v6, "Disabling MediaAnalyzer client", v7, 2u);
    MEMORY[0x1D38AF660](v7, -1, -1);
  }

  v8 = OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_dutyCyclingTask;
  if (*(a2 + OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_dutyCyclingTask))
  {

    sub_1D2EE4D38();
  }

  *(a2 + v8) = 0;

  result = *a1;
  if (*a1)
  {
    return [result enableMediaAnalyzer_];
  }

  return result;
}

void sub_1D2EA1A0C(uint64_t a1, char a2)
{
  v5 = &v2[OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_mediaAnalyzerMutex];
  os_unfair_lock_lock(&v2[OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_mediaAnalyzerMutex]);
  sub_1D2EA18B0(v5 + 1, v2);
  os_unfair_lock_unlock(v5);
  os_unfair_lock_lock(v5);
  sub_1D2E9F418(v5 + 1, a1, v2, a2 & 1);

  os_unfair_lock_unlock(v5);
}

uint64_t type metadata accessor for SoundClassificationResultsProvider(uint64_t a1)
{
  result = qword_1EC7390E8;
  if (!qword_1EC7390E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D2EA1CD4(uint64_t a1)
{
  sub_1D2EA1EB8(319, &qword_1EC7390F8, MEMORY[0x1E69E8698]);
  if (v1 <= 0x3F)
  {
    sub_1D2EA1EB8(319, &qword_1EC739100, MEMORY[0x1E69E8660]);
    if (v2 <= 0x3F)
    {
      sub_1D2EA1F58(319, &qword_1EC739108, MEMORY[0x1E69E8698]);
      if (v3 <= 0x3F)
      {
        sub_1D2EA1F58(319, &qword_1EC739118, MEMORY[0x1E69E8660]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1D2EA1EB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for SoundAnalyzerPrediction);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D2EA1F0C()
{
  result = qword_1EC739110;
  if (!qword_1EC739110)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC739110);
  }

  return result;
}

void sub_1D2EA1F58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D2EA1F0C();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D2EA20B8()
{
  *(v0 + 56) = type metadata accessor for AudioHistEvent(0);
  *(v0 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2EA2148, 0, 0);
}

uint64_t sub_1D2EA2148(uint64_t a1)
{
  v3 = v1[7];
  v2 = v1[8];
  sub_1D2EE3E38();
  *v2 = 0xD000000000000037;
  *(v2 + 8) = 0x80000001D2EE7580;
  *(v2 + 16) = 0xD000000000000011;
  *(v2 + 24) = 0x80000001D2EE75C0;
  *(v2 + 32) = 0xD000000000000014;
  *(v2 + 40) = 0x80000001D2EE75E0;
  *(v2 + 48) = 0xD000000000000011;
  *(v2 + 56) = 0x80000001D2EE7600;
  *(v2 + 64) = 0xD000000000000013;
  *(v2 + 72) = 0x80000001D2EE7620;
  *(v2 + 80) = 0xD000000000000012;
  *(v2 + 88) = 0x80000001D2EE7640;
  *(v2 + 96) = 0x6F6365725F706974;
  *(v2 + 104) = 0xEF6465646E656D6DLL;
  *(v2 + 112) = 0x726573755F706974;
  *(v2 + 120) = 0xEF6E6F697463615FLL;
  strcpy((v2 + 128), "failure_reason");
  *(v2 + 143) = -18;
  *(v2 + 144) = 0;
  *(v2 + 152) = 1;
  *(v2 + 160) = 0;
  *(v2 + 168) = 1;
  *(v2 + 176) = 0;
  *(v2 + 184) = 1;
  *(v2 + 192) = 0;
  *(v2 + 200) = 1;
  *(v2 + 208) = 0;
  *(v2 + 216) = 1;
  *(v2 + 217) = 768;
  *(v2 + 219) = 2;
  v1[5] = v3;
  v1[6] = &off_1F4E95AF8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 2);
  sub_1D2EA2BAC(v2, boxed_opaque_existential_0);
  sub_1D2EDFAC8();
  sub_1D2E8E940((v1 + 2));
  sub_1D2EA2C10(v2);

  v5 = v1[1];

  return v5();
}

void sub_1D2EA238C(char a1, void *a2)
{
  if (a2)
  {
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v4 = sub_1D2EE4618();
    __swift_project_value_buffer(v4, qword_1EDED2DB8);
    v5 = a2;
    v6 = sub_1D2EE45F8();
    v7 = sub_1D2EE4DB8();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19 = v9;
      *v8 = 136315650;
      *(v8 + 4) = sub_1D2E685B0(0xD000000000000021, 0x80000001D2EE7830, &v19);
      *(v8 + 12) = 1024;
      *(v8 + 14) = a1 & 1;
      *(v8 + 18) = 2080;
      v10 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B50, &qword_1D2EF2420);
      v11 = sub_1D2EE4AA8();
      v13 = sub_1D2E685B0(v11, v12, &v19);

      *(v8 + 20) = v13;
      _os_log_impl(&dword_1D2E46000, v6, v7, "%s enabled=%{BOOL}d error=%s", v8, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x1D38AF660](v9, -1, -1);
      MEMORY[0x1D38AF660](v8, -1, -1);
    }
  }

  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v14 = sub_1D2EE4618();
  __swift_project_value_buffer(v14, qword_1EDED2DB8);
  v15 = sub_1D2EE45F8();
  v16 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_1D2E685B0(0xD000000000000021, 0x80000001D2EE7830, &v19);
    *(v17 + 12) = 1024;
    *(v17 + 14) = a1 & 1;
    _os_log_impl(&dword_1D2E46000, v15, v16, "%s enabled=%{BOOL}d", v17, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1D38AF660](v18, -1, -1);
    MEMORY[0x1D38AF660](v17, -1, -1);
  }
}

uint64_t sub_1D2EA2678(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739198, &qword_1D2EF3FD8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v8 = sub_1D2EE4618();
  __swift_project_value_buffer(v8, qword_1EDED2DB8);
  v9 = sub_1D2EE45F8();
  v10 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_1D2E685B0(0xD00000000000003BLL, 0x80000001D2EE77F0, &v16);
    *(v11 + 12) = 2048;
    *(v11 + 14) = a2;
    _os_log_impl(&dword_1D2E46000, v9, v10, "%s token %ld", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1D38AF660](v12, -1, -1);
    MEMORY[0x1D38AF660](v11, -1, -1);
  }

  v16 = a1;
  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7391A0, &unk_1D2EF3FE0);
  sub_1D2EE4CD8();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1D2EA28B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739040, &qword_1D2EF2460);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v11 - v1;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v3 = sub_1D2EE4618();
  __swift_project_value_buffer(v3, qword_1EDED2DB8);
  v4 = sub_1D2EE45F8();
  v5 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1D2E685B0(0xD00000000000001DLL, 0x80000001D2EE77D0, &v12);
    _os_log_impl(&dword_1D2E46000, v4, v5, "%s AVCMediaAnalyzer server has died", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1D38AF660](v7, -1, -1);
    MEMORY[0x1D38AF660](v6, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739190, &qword_1D2EF3FC0);
  sub_1D2EE4CE8();
  v8 = sub_1D2EE4CB8();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  sub_1D2E8CB18(0, 0, v2, &unk_1D2EF3FD0, v9);

  return sub_1D2E5D0B8(v2, &qword_1EC739040, &qword_1D2EF2460);
}

uint64_t sub_1D2EA2B00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D2E7DE28;

  return sub_1D2EA20B8();
}

uint64_t sub_1D2EA2BAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioHistEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2EA2C10(uint64_t a1)
{
  v2 = type metadata accessor for AudioHistEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D2EA2C6C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D2E7DE28;

  return sub_1D2E9FA64();
}

uint64_t sub_1D2EA2D18(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7391C0, &qword_1D2EF4000) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D2E7DE28;

  return sub_1D2EA0CEC(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1D2EA2E44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D2E5BA34;

  return sub_1D2E9FCD4(a1, v4, v5, v6);
}

uint64_t sub_1D2EA2EF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D2EA2F40()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D2E7DE28;

  return sub_1D2EA0A78();
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D2EA3054(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[33])
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

uint64_t sub_1D2EA30A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1D2EA313C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D2E5BA34;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1D2EA327C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x69737341646C6F68;
  v4 = 0xEA00000000007473;
  if (v2 != 1)
  {
    v3 = 0x6E614D7465737361;
    v4 = 0xEF746E656D656761;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7463417472616D73;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEC000000736E6F69;
  }

  v7 = 0x69737341646C6F68;
  v8 = 0xEA00000000007473;
  if (*a2 != 1)
  {
    v7 = 0x6E614D7465737361;
    v8 = 0xEF746E656D656761;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7463417472616D73;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEC000000736E6F69;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D2EE5288();
  }

  return v11 & 1;
}

uint64_t sub_1D2EA33A4()
{
  sub_1D2EE5338();
  sub_1D2EE4AC8();

  return sub_1D2EE5378();
}

uint64_t sub_1D2EA3460(uint64_t a1)
{
  sub_1D2EE4AC8();
}

uint64_t sub_1D2EA3508(uint64_t a1)
{
  sub_1D2EE5338();
  sub_1D2EE4AC8();

  return sub_1D2EE5378();
}

unint64_t sub_1D2EA35C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D2EA3AC0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D2EA35F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000736E6F69;
  v4 = 0xEA00000000007473;
  v5 = 0x69737341646C6F68;
  if (v2 != 1)
  {
    v5 = 0x6E614D7465737361;
    v4 = 0xEF746E656D656761;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7463417472616D73;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void sub_1D2EA3668(uint64_t *a1, char a2)
{
  if (*a1)
  {
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v2 = sub_1D2EE4618();
    __swift_project_value_buffer(v2, qword_1EDED2DB8);
    v3 = sub_1D2EE45F8();
    v4 = sub_1D2EE4DB8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1D2E46000, v3, v4, "os_transaction already exists", v5, 2u);
      MEMORY[0x1D38AF660](v5, -1, -1);
    }
  }

  else
  {
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v7 = sub_1D2EE4618();
    __swift_project_value_buffer(v7, qword_1EDED2DB8);
    v8 = sub_1D2EE45F8();
    v9 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1D2E46000, v8, v9, "Requesting os_transaction", v10, 2u);
      MEMORY[0x1D38AF660](v10, -1, -1);
    }

    sub_1D2EE4AB8();

    v11 = os_transaction_create();

    *a1 = v11;
  }
}

void sub_1D2EA38A8(uint64_t *a1)
{
  if (*a1)
  {
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v2 = sub_1D2EE4618();
    __swift_project_value_buffer(v2, qword_1EDED2DB8);
    v3 = sub_1D2EE45F8();
    v4 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1D2E46000, v3, v4, "Released os_transaction", v5, 2u);
      MEMORY[0x1D38AF660](v5, -1, -1);
    }

    swift_unknownObjectRelease();
    *a1 = 0;
  }

  else
  {
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v6 = sub_1D2EE4618();
    __swift_project_value_buffer(v6, qword_1EDED2DB8);
    v7 = sub_1D2EE45F8();
    v8 = sub_1D2EE4DB8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D2E46000, v7, v8, "No os_transaction to release", v9, 2u);
      MEMORY[0x1D38AF660](v9, -1, -1);
    }
  }
}

unint64_t sub_1D2EA3A6C()
{
  result = qword_1EC739200;
  if (!qword_1EC739200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739200);
  }

  return result;
}

unint64_t sub_1D2EA3AC0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D2EE5118();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D2EA3B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D2E7DE28;

  return v9(a1, a2, a3);
}

uint64_t sub_1D2EA3C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D2E7DE28;

  return v9(a1, a2, a3);
}

uint64_t sub_1D2EA3D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D2E7DE28;

  return v9(a1, a2, a3);
}

uint64_t sub_1D2EA3E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D2E7DE28;

  return v9(a1, a2, a3);
}

uint64_t sub_1D2EA3FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D2E7DE28;

  return v9(a1, a2, a3);
}

uint64_t sub_1D2EA40E8(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 56) + **(a2 + 56));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D2E7DE28;

  return v7(a1, a2);
}

uint64_t sub_1D2EA4214(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738CA8, &qword_1D2EF2610);
  v4 = *(v3 - 8);
  result = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v12 - v6;
  v8 = v1[1];
  if (v8)
  {
    if (*(*v1 + 16) == v8)
    {
      sub_1D2E90F9C(0, 1);
    }

    sub_1D2E5D050(a1, v7, &qword_1EC738CA8, &qword_1D2EF2610);
    v9 = *v1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1D2EC8348(0, v9[2] + 1, 1, v9);
    }

    v11 = v9[2];
    v10 = v9[3];
    if (v11 >= v10 >> 1)
    {
      v9 = sub_1D2EC8348((v10 > 1), v11 + 1, 1, v9);
    }

    v9[2] = v11 + 1;
    result = sub_1D2EB5E64(v7, v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11, &qword_1EC738CA8, &qword_1D2EF2610);
    *v1 = v9;
  }

  return result;
}

uint64_t sub_1D2EA4398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739040, &qword_1D2EF2460);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1D2E5D050(a3, v22 - v9, &qword_1EC739040, &qword_1D2EF2460);
  v11 = sub_1D2EE4CB8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1D2E5D0B8(v10, &qword_1EC739040, &qword_1D2EF2460);
  }

  else
  {
    sub_1D2EE4CA8();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1D2EE4C28();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1D2EE4AB8() + 32;

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

      sub_1D2E5D0B8(a3, &qword_1EC739040, &qword_1D2EF2460);

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

  sub_1D2E5D0B8(a3, &qword_1EC739040, &qword_1D2EF2460);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1D2EA4644(uint64_t a1)
{
  v2 = sub_1D2EE4EC8();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_1D2EB4A2C(v2, *(a1 + 36), 0, a1);

  return v4;
}

uint64_t sub_1D2EA46C0(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_1D2EE4EE8();
    v5 = v4;
    v6 = sub_1D2EE4F38();
    v8 = v7;
    v9 = MEMORY[0x1D38AE980](v3, v5, v6, v7);
    sub_1D2EB5DF0(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1D2EB5DF0(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_1D2EE4EC8();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1D2EB3FD8(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_1D2EB5DF0(v3, v5, v2 != 0);
  return v12;
}

uint64_t sub_1D2EA47DC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D2EE3C28();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_1D2EE3C08();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1D2EA48D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7392D0, &qword_1D2EF4528);
  sub_1D2EE3EF8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D2EF4210;
  sub_1D2EE3EE8();
  sub_1D2EE3EE8();
  sub_1D2EE3EE8();
  sub_1D2EE3EE8();
  sub_1D2EE3EE8();
  sub_1D2EE3EE8();
  sub_1D2EE3EE8();
  sub_1D2EE3EE8();
  v1 = sub_1D2EE3704(v0);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1EC746650 = v1;
  return result;
}

void sub_1D2EA4A70(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, uint64_t a8, void *a9)
{
  v10 = v9;
  v120 = a8;
  v121 = a7;
  v115 = a3;
  v116 = a6;
  v118 = a5;
  v124 = a4;
  v122 = a2;
  v114 = a9;
  v135 = *MEMORY[0x1E69E9840];
  v110 = *v9;
  v94 = type metadata accessor for ReturnToCallPredictorEvent(0);
  MEMORY[0x1EEE9AC00](v94);
  v95 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739250, &qword_1D2EF4398);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v97 = &v93 - v14;
  v112 = type metadata accessor for PersistenceConfiguration(0);
  MEMORY[0x1EEE9AC00](v112);
  v111 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_1D2EE3EB8();
  v119 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v117 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738E30, &unk_1D2EF3080);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v93 - v19;
  v21 = sub_1D2EE3E48();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v10 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_detectedLanguages;
  *v25 = 0;
  v26 = MEMORY[0x1E69E7CC0];
  *(v25 + 2) = 10;
  *(v25 + 1) = v26;
  v107 = v25 + 8;
  v27 = v10 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_ringbackTimer;
  *v27 = 0;
  *(v27 + 1) = 0;
  v109 = v27 + 8;
  v28 = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_lock;
  sub_1D2EE3E38();
  v29 = *(v18 + 56);
  *v20 = 1;
  v30 = v21;
  v31 = v118;
  (*(v22 + 32))(&v20[v29], v24, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738E38, &qword_1D2EF3090);
  v32 = swift_allocObject();
  *(v32 + ((*(*v32 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1D2EB5E64(v20, v32 + *(*v32 + *MEMORY[0x1E69E6B68] + 16), &qword_1EC738E30, &unk_1D2EF3080);
  v108 = v28;
  *(v10 + v28) = v32;
  v33 = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_musicDetectorLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7392F0, &qword_1D2EF4548);
  v34 = swift_allocObject();
  *(v34 + 32) = 0;
  *(v34 + 16) = 2;
  *(v34 + 24) = 0;
  v106 = v33;
  *(v10 + v33) = v34;
  v35 = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_holdDetectionState;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7392F8, &qword_1D2EF4550);
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  *(v36 + 32) = 0;
  v105 = v35;
  *(v10 + v35) = v36;
  v37 = *(a1 + 80);
  *(v10 + 5) = *(a1 + 64);
  *(v10 + 6) = v37;
  *(v10 + 7) = *(a1 + 96);
  v10[16] = *(a1 + 112);
  v38 = *(a1 + 16);
  *(v10 + 1) = *a1;
  *(v10 + 2) = v38;
  v39 = *(a1 + 48);
  *(v10 + 3) = *(a1 + 32);
  *(v10 + 4) = v39;
  v40 = v119;
  v41 = *(v119 + 16);
  v104 = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_callUUID;
  v42 = v123;
  v96 = v41;
  v41(v10 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_callUUID, v122, v123);
  v43 = v117;
  sub_1D2EE3EA8();
  v44 = *(v40 + 32);
  v103 = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_id;
  v44(v10 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_id, v43, v42);
  v102 = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_callCenter;
  v45 = v115;
  *(v10 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_callCenter) = v115;
  v46 = *(v10 + 6);
  v127[4] = *(v10 + 5);
  v127[5] = v46;
  v127[6] = *(v10 + 7);
  v128 = v10[16];
  v47 = *(v10 + 2);
  v127[0] = *(v10 + 1);
  v127[1] = v47;
  v48 = *(v10 + 4);
  v127[2] = *(v10 + 3);
  v127[3] = v48;
  v49 = objc_allocWithZone(type metadata accessor for CaptionProvider(0));
  v115 = v45;
  v50 = sub_1D2E85E94(v127, 0, 0);
  v101 = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_captionProvider;
  *(v10 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_captionProvider) = v50;
  type metadata accessor for WaitOnHoldStateMachine();
  v51 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739300, &qword_1D2EF4558);
  v52 = swift_allocObject();
  *(v52 + 36) = 0;
  *(v52 + 16) = 0;
  *(v52 + 24) = 0;
  *(v52 + 32) = 2;
  *(v51 + 16) = v52;
  v99 = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_stateMachine;
  *(v10 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_stateMachine) = v51;
  v100 = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_transactionManager;
  sub_1D2E6912C(v124, v10 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_transactionManager);
  v53 = objc_allocWithZone(type metadata accessor for SoundClassificationResultsProvider(0));
  v54 = sub_1D2E9EDDC(a1, 0x236EFCBCBB340000, 1, 0x40AAD21B3B700000, 3);
  v98 = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_soundClassificationResultsProvider;
  *(v10 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_soundClassificationResultsProvider) = v54;
  if (v31)
  {
    v55 = v31;
  }

  else
  {
    v57 = v111;
    v56 = v112;
    if (qword_1EDECF980 != -1)
    {
      swift_once();
    }

    v58 = __swift_project_value_buffer(v56, qword_1EDED2D50);
    sub_1D2EB5DFC(v58, v57, type metadata accessor for PersistenceConfiguration);
    type metadata accessor for AnsweringMachineController(0);
    swift_allocObject();
    v55 = sub_1D2E9257C(a1, v57, sub_1D2E9251C, 0);
  }

  *(v10 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_answeringMachine) = v55;
  v112 = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_notificationManager;
  sub_1D2E6912C(v121, v10 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_notificationManager);
  v59 = v114;
  v111 = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_audioSystemController;
  *(v10 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_audioSystemController) = v114;
  v60 = __swift_project_boxed_opaque_existential_1(v124, v124[3]);
  v61 = v60[1];
  MEMORY[0x1EEE9AC00](v60);
  *(&v93 - 16) = v62;
  *(&v93 - 1) = v61;

  v114 = v59;
  os_unfair_lock_lock((v61 + 24));
  v63 = v113;
  sub_1D2E82478((v61 + 16));
  if (v63)
  {
    os_unfair_lock_unlock((v61 + 24));
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock((v61 + 24));
    sub_1D2E5D050(v120, &v129, &qword_1EC739308, &qword_1D2EF4560);
    if (*(&v130 + 1))
    {
      sub_1D2E4C014(&v129, &v132);
      sub_1D2E4C014(&v132, v10 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_returnToCallDetector);
      v64 = v122;
    }

    else
    {
      sub_1D2E5D0B8(&v129, &qword_1EC739308, &qword_1D2EF4560);
      v131 = 0;
      v129 = 0u;
      v130 = 0u;
      v79 = *(v10 + 6);
      v125[4] = *(v10 + 5);
      v125[5] = v79;
      v125[6] = *(v10 + 7);
      v126 = v10[16];
      v80 = *(v10 + 2);
      v125[0] = *(v10 + 1);
      v125[1] = v80;
      v81 = *(v10 + 4);
      v125[2] = *(v10 + 3);
      v125[3] = v81;
      v82 = type metadata accessor for ReturnToCallDetector();
      swift_allocObject();
      v83 = sub_1D2E8EA38(&v129, v125);
      v64 = v122;
      v133 = v82;
      v134 = &off_1F4E940B8;
      *&v132 = v83;
      sub_1D2E4C014(&v132, v10 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_returnToCallDetector);
    }

    v65 = _TUIsInternalInstall();
    v66 = v116;
    if (v65 && [v116 waitOnHoldLoggingEnabled])
    {
      if (qword_1EDECFF10 != -1)
      {
        swift_once();
      }

      v67 = sub_1D2EE4618();
      __swift_project_value_buffer(v67, qword_1EDED2DB8);
      v68 = sub_1D2EE45F8();
      v69 = sub_1D2EE4DD8();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&dword_1D2E46000, v68, v69, "Creating transcription logger", v70, 2u);
        MEMORY[0x1D38AF660](v70, -1, -1);
      }

      v71 = v117;
      v96(v117, v64, v123);
      v72 = v97;
      sub_1D2EB7634(v71, v97);
      sub_1D2EB5E64(v72, v10 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_transcriptLogger, &qword_1EC739250, &qword_1D2EF4398);
      v73 = v114;
    }

    else
    {
      if (qword_1EDECFF10 != -1)
      {
        swift_once();
      }

      v74 = sub_1D2EE4618();
      __swift_project_value_buffer(v74, qword_1EDED2DB8);
      v75 = v66;
      v76 = sub_1D2EE45F8();
      v77 = sub_1D2EE4DD8();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 67109376;
        *(v78 + 4) = _TUIsInternalInstall();
        *(v78 + 8) = 1024;
        *(v78 + 10) = [v75 waitOnHoldLoggingEnabled];

        _os_log_impl(&dword_1D2E46000, v76, v77, "Not creating transcript logger - _TUIsInternalInstall: %{BOOL}d, waitOnHoldLoggingEnabled: %{BOOL}d", v78, 0xEu);
        MEMORY[0x1D38AF660](v78, -1, -1);
      }

      else
      {

        v76 = v75;
      }

      v73 = v114;

      v84 = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_transcriptLogger;
      v85 = type metadata accessor for WaitOnHoldTranscriptLogger(0);
      (*(*(v85 - 8) + 56))(v10 + v84, 1, 1, v85);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7392A0, &qword_1D2EF4468);
    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_1D2EF3D10;
    v87 = *MEMORY[0x1E69AEA40];
    *(v86 + 32) = *MEMORY[0x1E69AEA40];
    type metadata accessor for Name(0);
    v88 = v87;
    v89 = sub_1D2EE4BD8();

    v90 = *MEMORY[0x1E69AECD8];
    *&v132 = 0;
    LOBYTE(v87) = [v73 setAttribute:v89 forKey:v90 error:&v132];

    if (v87)
    {
      v91 = v132;

      sub_1D2E5D0B8(v120, &qword_1EC739308, &qword_1D2EF4560);
      __swift_destroy_boxed_opaque_existential_1(v121);
      (*(v119 + 8))(v64, v123);
    }

    else
    {
      v92 = v132;
      sub_1D2EE3CE8();

      swift_willThrow();

      sub_1D2E5D0B8(v120, &qword_1EC739308, &qword_1D2EF4560);
      __swift_destroy_boxed_opaque_existential_1(v121);
      (*(v119 + 8))(v64, v123);
    }

    __swift_destroy_boxed_opaque_existential_1(v124);
  }
}

uint64_t sub_1D2EA5970()
{
  v1 = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_transactionManager;
  sub_1D2E6912C(v0 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_transactionManager, v8);
  v2 = __swift_project_boxed_opaque_existential_1(v8, v8[3])[1];
  os_unfair_lock_lock((v2 + 24));
  sub_1D2EA38A8((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
  __swift_destroy_boxed_opaque_existential_1(v8);
  v3 = [objc_opt_self() defaultCenter];
  [v3 removeObserver:v0 name:*MEMORY[0x1E69D8EB8] object:0];

  v4 = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_id;
  v5 = sub_1D2EE3EB8();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_returnToCallDetector));
  __swift_destroy_boxed_opaque_existential_1((v0 + v1));

  sub_1D2E5D0B8(v0 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_transcriptLogger, &qword_1EC739250, &qword_1D2EF4398);
  v6(v0 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_callUUID, v5);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_notificationManager));

  sub_1D2E5D0B8(v0 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_detectedLanguages + 8, &qword_1EC739258, &qword_1D2EF43A0);
  sub_1D2E5D0B8(v0 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_ringbackTimer + 8, &qword_1EC739260, &qword_1D2EF43A8);

  return v0;
}

uint64_t sub_1D2EA5BB8()
{
  sub_1D2EA5970();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WaitOnHoldSession(uint64_t a1)
{
  result = qword_1EC739228;
  if (!qword_1EC739228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D2EA5C64(uint64_t a1)
{
  sub_1D2EE3EB8();
  if (v1 <= 0x3F)
  {
    sub_1D2EA5D94(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D2EA5D94(uint64_t a1)
{
  if (!qword_1EC739238)
  {
    type metadata accessor for WaitOnHoldTranscriptLogger(255);
    v1 = sub_1D2EE4E58();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC739238);
    }
  }
}

uint64_t sub_1D2EA5DEC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1D2EA5E48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1D2EA5EA8(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739268, &unk_1D2EF43B8);
  v2[24] = swift_task_alloc();
  v3 = type metadata accessor for AudioHistEvent(0);
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v4 = sub_1D2EE3EB8();
  v2[29] = v4;
  v5 = *(v4 - 8);
  v2[30] = v5;
  v2[31] = *(v5 + 64);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2EA6028, 0, 0);
}

uint64_t sub_1D2EA6028()
{
  v67 = v0;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v1 = v0[17].i64[0];
  v3 = v0[14].i64[1];
  v2 = v0[15].i64[0];
  v4 = v0[11].i64[0];
  v5 = sub_1D2EE4618();
  __swift_project_value_buffer(v5, qword_1EDED2DB8);
  v65 = *(v2 + 16);
  v65(v1, v4, v3);
  v6 = sub_1D2EE45F8();
  v7 = sub_1D2EE4DD8();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[17].i64[0];
  v11 = v0[14].i64[1];
  v10 = v0[15].i64[0];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v66[0] = v13;
    *v12 = 136315138;
    sub_1D2EB3E94(&qword_1EC7384D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v14 = sub_1D2EE5258();
    v16 = v15;
    v17 = v11;
    v18 = *(v10 + 8);
    v18(v9, v17);
    v19 = sub_1D2E685B0(v14, v16, v66);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_1D2E46000, v6, v7, "Starting WaitOnHoldSession for call %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1D38AF660](v13, -1, -1);
    MEMORY[0x1D38AF660](v12, -1, -1);
  }

  else
  {

    v20 = v11;
    v18 = *(v10 + 8);
    v18(v9, v20);
  }

  v21 = *(v0[11].i64[1] + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_holdDetectionState);
  os_unfair_lock_lock((v21 + 32));
  if (*(v21 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B50, &qword_1D2EF2420);
    sub_1D2EE4D38();
  }

  *(v21 + 16) = 0;

  if (*(v21 + 24))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B50, &qword_1D2EF2420);
    sub_1D2EE4D38();
  }

  v22 = v0[11].i64[1];
  *(v21 + 24) = 0;

  os_unfair_lock_unlock((v21 + 32));
  v23 = *(v22 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_soundClassificationResultsProvider);
  v0[17].i64[1] = v23;
  v24 = v23 + OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_mediaAnalyzerMutex;
  os_unfair_lock_lock((v23 + OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_mediaAnalyzerMutex));
  sub_1D2EA18B0((v24 + 8), v23);
  os_unfair_lock_unlock(v24);
  v25 = *(*(v0[11].i64[1] + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_stateMachine) + 16);
  os_unfair_lock_lock(v25 + 9);
  sub_1D2EB48B0(&v25[4]);
  v63 = v0[11];
  os_unfair_lock_unlock(v25 + 9);
  sub_1D2E9D860(0, &qword_1EDECF788, 0x1E69E9610);
  v26 = sub_1D2EE4DE8();
  *(swift_task_alloc() + 16) = vextq_s8(v63, v63, 8uLL);
  sub_1D2EE4DF8();
  v27 = v0[16].i64[1];
  v28 = v0[14].i64[1];
  v29 = v0[11].i64[0];

  v64 = v0[6].i8[8];
  v62 = v0[7].i64[0];
  v30 = v28;
  v31 = v0[7].i64[1];
  v65(v27, v29, v30);

  v32 = sub_1D2EE45F8();
  v33 = sub_1D2EE4DD8();

  v34 = os_log_type_enabled(v32, v33);
  v35 = v0[16].i64[1];
  v36 = v0[14].i64[1];
  if (v34)
  {
    v37 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v66[0] = v60;
    *v37 = 136315394;
    sub_1D2EB3E94(&qword_1EC7384D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v38 = sub_1D2EE5258();
    v59 = v33;
    v40 = v39;
    v18(v35, v36);
    v41 = sub_1D2E685B0(v38, v40, v66);

    *(v37 + 4) = v41;
    *(v37 + 12) = 2080;
    v0[9].i8[8] = v64;
    v0[10].i64[0] = v62;
    v0[10].i64[1] = v31;

    v42 = sub_1D2EE4AA8();
    v44 = sub_1D2E685B0(v42, v43, v66);

    *(v37 + 14) = v44;
    _os_log_impl(&dword_1D2E46000, v32, v59, "Loaded details for call %s: %s", v37, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38AF660](v60, -1, -1);
    MEMORY[0x1D38AF660](v37, -1, -1);
  }

  else
  {

    v18(v35, v36);
  }

  v45 = v0[16].i64[0];
  v47 = v0[14].i64[1];
  v46 = v0[15].i64[0];
  v48 = v0[11].i64[0];
  v49 = [objc_opt_self() defaultCenter];
  v61 = *MEMORY[0x1E69D8EF8];
  v50 = [objc_opt_self() mainQueue];
  v51 = swift_allocObject();
  swift_weakInit();
  v65(v45, v48, v47);
  v52 = (*(v46 + 80) + 24) & ~*(v46 + 80);
  v53 = swift_allocObject();
  *(v53 + 16) = v51;
  (*(v46 + 32))(v53 + v52, v45, v47);
  v0[3].i64[0] = sub_1D2EB48E8;
  v0[3].i64[1] = v53;
  v0[1].i64[0] = MEMORY[0x1E69E9820];
  v0[1].i64[1] = 1107296256;
  v0[2].i64[0] = sub_1D2EA47DC;
  v0[2].i64[1] = &block_descriptor_69;
  v54 = _Block_copy(&v0[1]);

  v55 = [v49 addObserverForName:v61 object:0 queue:v50 usingBlock:v54];
  _Block_release(v54);

  swift_unknownObjectRelease();
  sub_1D2EA7A50();

  v56 = swift_task_alloc();
  v0[18].i64[0] = v56;
  *v56 = v0;
  v56[1] = sub_1D2EA68E0;
  v57 = v0[11].i64[0];

  return sub_1D2EA7C90(v57);
}

uint64_t sub_1D2EA68E0()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D2EA6A64, 0, 0);
  }
}

uint64_t sub_1D2EA6A64()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  v4 = (v0[35] + OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_aggregator);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];

  sub_1D2E9DE44(v5, v6, v3);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1D2E5D0B8(v0[24], &qword_1EC739268, &unk_1D2EF43B8);
  }

  else
  {
    v8 = v0[27];
    v7 = v0[28];
    v9 = v0[25];
    sub_1D2EB5384(v0[24], v7, type metadata accessor for AudioHistEvent);
    sub_1D2EE101C(v7, 2, v8);
    v0[11] = v9;
    v0[12] = &off_1F4E95AF8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 8);
    sub_1D2EB5DFC(v8, boxed_opaque_existential_0, type metadata accessor for AudioHistEvent);
    sub_1D2EDFAC8();
    sub_1D2EB5664(v8, type metadata accessor for AudioHistEvent);
    sub_1D2EB5664(v7, type metadata accessor for AudioHistEvent);
    sub_1D2E8E940((v0 + 8));
  }

  sub_1D2EA814C(1);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D2EA6C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69 = a2;
  v5 = sub_1D2EE3C28();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739040, &qword_1D2EF2460);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v65 = v64 - v10;
  v11 = sub_1D2EE3EB8();
  v67 = *(v11 - 8);
  v12 = *(v67 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v66 = v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v64 - v14;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v16 = sub_1D2EE4618();
  v68 = __swift_project_value_buffer(v16, qword_1EDED2DB8);
  v17 = sub_1D2EE45F8();
  v18 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v64[1] = v12;
    v20 = a1;
    v21 = a3;
    v22 = v8;
    v23 = v6;
    v24 = v15;
    v25 = v5;
    v26 = v11;
    v27 = v19;
    *v19 = 0;
    _os_log_impl(&dword_1D2E46000, v17, v18, "Received TUCallSubtypeChanged notification", v19, 2u);
    v28 = v27;
    v11 = v26;
    v5 = v25;
    v15 = v24;
    v6 = v23;
    v8 = v22;
    a3 = v21;
    a1 = v20;
    MEMORY[0x1D38AF660](v28, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v30 = result;
    sub_1D2EE3C18();
    if (v74[3])
    {
      sub_1D2E9D860(0, &qword_1EC739060, 0x1E69D8A40);
      if (swift_dynamicCast())
      {
        v31 = *&v72[0];
        v32 = [*&v72[0] uniqueProxyIdentifierUUID];
        sub_1D2EE3E98();

        LOBYTE(v32) = sub_1D2EE3E88();
        v33 = v67;
        v34 = *(v67 + 8);
        v34(v15, v11);
        if (v32)
        {
          v35 = sub_1D2EE4CB8();
          v36 = v65;
          (*(*(v35 - 8) + 56))(v65, 1, 1, v35);
          (*(v33 + 16))(v15, a3, v11);
          v37 = (*(v33 + 80) + 40) & ~*(v33 + 80);
          v38 = swift_allocObject();
          *(v38 + 2) = 0;
          *(v38 + 3) = 0;
          *(v38 + 4) = v30;
          (*(v33 + 32))(&v38[v37], v15, v11);
          sub_1D2ED7FB0(0, 0, v36, &unk_1D2EF4538, v38);
        }

        else
        {
          v46 = *(v33 + 16);
          v47 = v66;
          v46(v66, a3, v11);
          v48 = v31;
          v49 = sub_1D2EE45F8();
          v50 = sub_1D2EE4DD8();

          if (!os_log_type_enabled(v49, v50))
          {

            return (v34)(v47, v11);
          }

          v51 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v74[0] = v68;
          *v51 = 136315394;
          sub_1D2EB3E94(&qword_1EC7384D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
          v69 = v30;
          LODWORD(v67) = v50;
          v52 = sub_1D2EE5258();
          v53 = v47;
          v55 = v54;
          v34(v53, v11);
          v56 = sub_1D2E685B0(v52, v55, v74);

          *(v51 + 4) = v56;
          *(v51 + 12) = 2080;
          v57 = [v48 uniqueProxyIdentifierUUID];
          sub_1D2EE3E98();

          v58 = sub_1D2EE5258();
          v60 = v59;
          v34(v15, v11);
          v61 = sub_1D2E685B0(v58, v60, v74);

          *(v51 + 14) = v61;
          _os_log_impl(&dword_1D2E46000, v49, v67, "Dropping media tokens changed for call due to UUID mismatch, expected=%s, actual=%s", v51, 0x16u);
          v62 = v68;
          swift_arrayDestroy();
          MEMORY[0x1D38AF660](v62, -1, -1);
          MEMORY[0x1D38AF660](v51, -1, -1);
        }
      }
    }

    else
    {
      sub_1D2E5D0B8(v74, &qword_1EC7385A0, &qword_1D2EEF120);
    }

    (*(v6 + 16))(v8, a1, v5);
    v39 = sub_1D2EE45F8();
    v40 = sub_1D2EE4DB8();
    if (!os_log_type_enabled(v39, v40))
    {

      return (*(v6 + 8))(v8, v5);
    }

    v69 = v30;
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v73 = v42;
    *v41 = 136315138;
    sub_1D2EE3C18();
    sub_1D2E5D050(v74, &v70, &qword_1EC7385A0, &qword_1D2EEF120);
    if (v71)
    {
      sub_1D2EB5B88(&v70, v72);
      sub_1D2E68F60(v72, &v70);
      v43 = sub_1D2EE4AA8();
      v45 = v44;
      __swift_destroy_boxed_opaque_existential_1(v72);
      sub_1D2E5D0B8(v74, &qword_1EC7385A0, &qword_1D2EEF120);
      (*(v6 + 8))(v8, v5);
    }

    else
    {
      sub_1D2E5D0B8(&v70, &qword_1EC7385A0, &qword_1D2EEF120);
      sub_1D2E5D0B8(v74, &qword_1EC7385A0, &qword_1D2EEF120);
      (*(v6 + 8))(v8, v5);
      v45 = 0xE300000000000000;
      v43 = 7104878;
    }

    v63 = sub_1D2E685B0(v43, v45, &v73);

    *(v41 + 4) = v63;
    _os_log_impl(&dword_1D2E46000, v39, v40, "notification.object is not a TUCall %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x1D38AF660](v42, -1, -1);
    MEMORY[0x1D38AF660](v41, -1, -1);
  }

  return result;
}

uint64_t sub_1D2EA7528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 72) = a4;
  *(v5 + 80) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D2EA7548, 0, 0);
}

uint64_t sub_1D2EA7548()
{
  v21 = v0;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  __swift_project_value_buffer(v1, qword_1EDED2DB8);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Reconfiguring session with new media tokens", v4, 2u);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v19 = *(v0 + 72);

  sub_1D2E9D860(0, &qword_1EDECF788, 0x1E69E9610);
  v5 = sub_1D2EE4DE8();
  *(swift_task_alloc() + 16) = v19;
  sub_1D2EE4DF8();
  v6 = *(v0 + 72);

  v7 = *(v0 + 16);
  v8 = *(v6 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_answeringMachine);
  v9 = *(v8 + OBJC_IVAR____TtC16CallIntelligence26AnsweringMachineController_lock);
  v10 = swift_task_alloc();
  *(v10 + 16) = v8;
  *(v10 + 24) = v7;
  v11 = *(*v9 + *MEMORY[0x1E69E6B68] + 16);
  v12 = (*(*v9 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v9 + v12));
  sub_1D2EB5C90(v9 + v11, &v20);
  v15 = *(v0 + 72);
  os_unfair_lock_unlock((v9 + v12));

  v16 = v20;

  v17 = *(v15 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_captionProvider);
  v18 = *(v17 + OBJC_IVAR____TtC16CallIntelligence15CaptionProvider_captionMutex);
  os_unfair_lock_lock(v18 + 17);
  sub_1D2E8337C(&v18[4], v16, v17);
  os_unfair_lock_unlock(v18 + 17);
  sub_1D2EA1A0C(v16, 1);
  v13 = *(v0 + 8);

  return v13();
}

void sub_1D2EA7A50()
{
  v15 = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7392A0, &qword_1D2EF4468);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D2EF3D10;
  v3 = *MEMORY[0x1E69AEA40];
  *(v2 + 32) = *MEMORY[0x1E69AEA40];
  v4 = *(v0 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_audioSystemController);
  type metadata accessor for Name(0);
  v5 = v3;
  v6 = sub_1D2EE4BD8();

  v7 = *MEMORY[0x1E69AECD8];
  *&v14[0] = 0;
  v8 = [v4 setAttribute:v6 forKey:v7 error:v14];

  v9 = *&v14[0];
  if (v8)
  {
    memset(v14, 0, sizeof(v14));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7392A8, &unk_1D2EF4470);
    v10 = swift_allocObject();
    v10[12]._os_unfair_lock_opaque = 0;
    sub_1D2E5D050(v14, &v10[4], &qword_1EC7385A0, &qword_1D2EEF120);
    v11 = v9;
    v12 = sub_1D2E5D0B8(v14, &qword_1EC7385A0, &qword_1D2EEF120);
    MEMORY[0x1EEE9AC00](v12);
    os_unfair_lock_lock(v10 + 12);
    sub_1D2EB495C(&v10[4]);
    os_unfair_lock_unlock(v10 + 12);
    if (v1)
    {
      __break(1u);
    }

    else
    {
    }
  }

  else
  {
    v13 = *&v14[0];
    sub_1D2EE3CE8();

    swift_willThrow();
  }
}

uint64_t sub_1D2EA7C90(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D2EA7CB0, 0, 0);
}

uint64_t sub_1D2EA7CB0()
{
  v21 = v0;
  v1 = sub_1D2EAF4C4();
  v0[5] = v1;
  v2 = objc_allocWithZone(MEMORY[0x1E69D8CF0]);
  v3 = v1;
  v4 = sub_1D2EE3E78();
  v5 = [v2 initWithCallUUID:v4 session:v3];
  v0[6] = v5;

  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v6 = sub_1D2EE4618();
  __swift_project_value_buffer(v6, qword_1EDED2DB8);
  v7 = v5;
  v8 = sub_1D2EE45F8();
  v9 = sub_1D2EE4DD8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315138;
    v0[2] = v7;
    sub_1D2E9D860(0, &qword_1EC739270, 0x1E69D8CF0);
    v12 = v7;
    v13 = sub_1D2EE4AA8();
    v15 = sub_1D2E685B0(v13, v14, &v20);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1D2E46000, v8, v9, "Posting session to callservicesd %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1D38AF660](v11, -1, -1);
    MEMORY[0x1D38AF660](v10, -1, -1);
  }

  v16 = v0[4];
  v17 = swift_task_alloc();
  v0[7] = v17;
  *(v17 + 16) = v16;
  *(v17 + 24) = v7;
  v18 = swift_task_alloc();
  v0[8] = v18;
  *v18 = v0;
  v18[1] = sub_1D2EA7F54;

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1D2EA7F54()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1D2EA80D8;
  }

  else
  {

    v2 = sub_1D2EA8070;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D2EA8070()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D2EA80D8()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D2EA814C(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7391B0, &qword_1D2EF3FF0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739040, &qword_1D2EF2460);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v27 - v10;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v12 = sub_1D2EE4618();
  __swift_project_value_buffer(v12, qword_1EDED2DB8);
  v13 = sub_1D2EE45F8();
  v14 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v27 = v2;
    v28 = v16;
    v17 = a1;
    v18 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_1D2E685B0(0xD000000000000034, 0x80000001D2EE7AE0, &v28);
    _os_log_impl(&dword_1D2E46000, v13, v14, "%s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    v19 = v18;
    a1 = v17;
    v2 = v27;
    MEMORY[0x1D38AF660](v19, -1, -1);
    MEMORY[0x1D38AF660](v15, -1, -1);
  }

  v20 = *(v2 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_soundClassificationResultsProvider);
  v21 = OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_soundAnalyzerEventStream;
  v22 = sub_1D2EE4CB8();
  (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
  (*(v5 + 16))(v8, v20 + v21, v4);
  v23 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v24 = v23 + v6;
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  (*(v5 + 32))(v25 + v23, v8, v4);
  *(v25 + v24) = a1 & 1;
  *(v25 + (v24 & 0xFFFFFFFFFFFFFFF8) + 8) = v2;

  sub_1D2EA4398(0, 0, v11, &unk_1D2EF4430, v25);
}

uint64_t sub_1D2EA8488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for CaptionEvent(0);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7392B0, &qword_1D2EF44A0);
  v5[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7392B8, &qword_1D2EF44A8);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2EA85E8, 0, 0);
}

uint64_t sub_1D2EA85E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738CB0, &qword_1D2EF2618);
  sub_1D2EE4D08();
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_1D2EA86B0;
  v2 = v0[7];
  v3 = v0[8];

  return MEMORY[0x1EEE6D9C8](v2, 0, 0, v3);
}

uint64_t sub_1D2EA86B0()
{

  return MEMORY[0x1EEE6DFA0](sub_1D2EA87AC, 0, 0);
}

uint64_t sub_1D2EA87AC()
{
  v1 = v0[7];
  if ((*(v0[5] + 48))(v1, 1, v0[4]) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    sub_1D2EB5384(v1, v0[6], type metadata accessor for CaptionEvent);
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_1D2EA8900;
    v5 = v0[6];

    return sub_1D2EA8C5C(v5);
  }
}

uint64_t sub_1D2EA8900()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1D2EA8AD4;
  }

  else
  {
    v2 = sub_1D2EA8A14;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D2EA8A14()
{
  sub_1D2EB5664(v0[6], type metadata accessor for CaptionEvent);
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_1D2EA86B0;
  v2 = v0[7];
  v3 = v0[8];

  return MEMORY[0x1EEE6D9C8](v2, 0, 0, v3);
}

uint64_t sub_1D2EA8AD4()
{
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  __swift_project_value_buffer(v1, qword_1EDED2DB8);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DB8();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[13];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Error handling caption event", v6, 2u);
    MEMORY[0x1D38AF660](v6, -1, -1);
  }

  sub_1D2EB5664(v0[6], type metadata accessor for CaptionEvent);
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_1D2EA86B0;
  v8 = v0[7];
  v9 = v0[8];

  return MEMORY[0x1EEE6D9C8](v8, 0, 0, v9);
}

uint64_t sub_1D2EA8C5C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739040, &qword_1D2EF2460);
  v2[9] = swift_task_alloc();
  v3 = sub_1D2EE3EF8();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = type metadata accessor for CaptionEvent(0);
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2EA8D84, 0, 0);
}

uint64_t sub_1D2EA8D84()
{
  v40 = v0;
  sub_1D2EB5DFC(*(v0 + 56), *(v0 + 112), type metadata accessor for CaptionEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = *(v0 + 112);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v4 = *(v0 + 88);
      v3 = *(v0 + 96);
      v5 = *(v0 + 80);
      v6 = *(v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738CA8, &qword_1D2EF2610) + 48));
      (*(v4 + 32))(v3, v2, v5);
      v7 = swift_task_alloc();
      *(v0 + 136) = v7;
      *v7 = v0;
      v7[1] = sub_1D2EA94E4;
      v8 = *(v0 + 96);

      return sub_1D2EAB714(v8, v6);
    }

    v14 = *v2;
    *(v0 + 152) = *v2;
    *(v0 + 40) = v14;
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B50, &qword_1D2EF2420);
    if (swift_dynamicCast())
    {
      v16 = *(v0 + 192);
      if (v16 == 5)
      {
        v17 = *(v0 + 64);
        v18 = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_callUUID;
        v19 = swift_task_alloc();
        *(v0 + 176) = v19;
        *v19 = v0;
        v20 = sub_1D2EA98D0;
        goto LABEL_22;
      }

      if (v16 == 7)
      {
        v17 = *(v0 + 64);
        v18 = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_callUUID;
        v19 = swift_task_alloc();
        *(v0 + 160) = v19;
        *v19 = v0;
        v20 = sub_1D2EA968C;
LABEL_22:
        v19[1] = v20;

        return sub_1D2EABE9C(v17 + v18);
      }
    }

    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v21 = sub_1D2EE4618();
    __swift_project_value_buffer(v21, qword_1EDED2DB8);
    v22 = v14;
    v23 = sub_1D2EE45F8();
    v24 = sub_1D2EE4DB8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = v38;
      *v25 = 136315138;
      swift_getErrorValue();
      v26 = *(v0 + 16);
      v27 = *(v0 + 24);
      v28 = sub_1D2EE4E58();
      v29 = *(v28 - 8);
      v30 = swift_task_alloc();
      v37 = v24;
      v31 = *(v27 - 8);
      (*(v31 + 16))(v30, v26, v27);
      (*(v31 + 56))(v30, 0, 1, v27);
      v32 = sub_1D2EE2754(v30, v27);
      v34 = v33;
      (*(v29 + 8))(v30, v28);

      v35 = sub_1D2E685B0(v32, v34, &v39);

      *(v25 + 4) = v35;
      _os_log_impl(&dword_1D2E46000, v23, v37, "Ignoring unknown error: %s in caption event stream", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x1D38AF660](v38, -1, -1);
      MEMORY[0x1D38AF660](v25, -1, -1);
    }

    else
    {
    }

    v36 = *(v0 + 8);

    return v36();
  }

  else
  {
    v10 = *v2;
    v11 = *(v2 + 8);
    *(v0 + 120) = v11;
    v12 = *(v2 + 16);
    v13 = swift_task_alloc();
    *(v0 + 128) = v13;
    *v13 = v0;
    v13[1] = sub_1D2EA9350;

    return sub_1D2EAA4C0(v10, v11, v12);
  }
}

uint64_t sub_1D2EA9350()
{

  return MEMORY[0x1EEE6DFA0](sub_1D2EA9468, 0, 0);
}

uint64_t sub_1D2EA9468()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2EA94E4()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1D2EA9B14;
  }

  else
  {
    v2 = sub_1D2EA95F8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D2EA95F8()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D2EA968C()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1D2EA9BB0;
  }

  else
  {
    v2 = sub_1D2EA97A0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D2EA97A0()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 72);
  v3 = sub_1D2EE4CB8();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_1D2E8CB18(0, 0, v2, &unk_1D2EF44D8, v4);

  sub_1D2E5D0B8(v2, &qword_1EC739040, &qword_1D2EF2460);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D2EA98D0()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1D2EA9C44;
  }

  else
  {
    v2 = sub_1D2EA99E4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D2EA99E4()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 72);
  v3 = sub_1D2EE4CB8();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_1D2E8CB18(0, 0, v2, &unk_1D2EF44C8, v4);

  sub_1D2E5D0B8(v2, &qword_1EC739040, &qword_1D2EF2460);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D2EA9B14()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D2EA9BB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2EA9C44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2EA9CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v30 = a6;
  v31 = a7;
  v29 = a5;
  v26 = a3;
  v32 = a1;
  v10 = sub_1D2EE3EB8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2E5D0B8(a1, &qword_1EC7385A0, &qword_1D2EEF120);
  v14 = [objc_opt_self() defaultCenter];
  v15 = *MEMORY[0x1E69AEA40];
  v27 = *(a2 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_audioSystemController);
  v28 = v15;
  (*(v11 + 16))(v13, a4, v10);
  v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v17 = (v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v26;
  *(v18 + 24) = a2;
  (*(v11 + 32))(v18 + v16, v13, v10);
  v19 = v18 + v17;
  *v19 = v29;
  v20 = v31;
  *(v19 + 8) = v30;
  *(v19 + 16) = v20;
  aBlock[4] = sub_1D2EB4984;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D2EA47DC;
  aBlock[3] = &block_descriptor_77;
  v21 = _Block_copy(aBlock);

  v22 = [v14 addObserverForName:v28 object:v27 queue:0 usingBlock:v21];
  _Block_release(v21);

  result = swift_getObjectType();
  v24 = v32;
  *(v32 + 24) = result;
  *v24 = v22;
  return result;
}

void sub_1D2EA9F68(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v41 = a5;
  v39 = a4;
  v40 = a3;
  v38 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC739050, &unk_1D2EF4480);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v34 - v10;
  v12 = sub_1D2EE3C28();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v37 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v34 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v34 - v19;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v21 = sub_1D2EE4618();
  __swift_project_value_buffer(v21, qword_1EDED2DB8);
  v22 = *(v13 + 16);
  v22(v20, a1, v12);
  v23 = sub_1D2EE45F8();
  v24 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v23, v24))
  {
    v36 = v24;
    v25 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v42 = v35;
    *v25 = 136315138;
    v22(v11, v20, v12);
    (*(v13 + 56))(v11, 0, 1, v12);
    sub_1D2E5D050(v11, v9, &unk_1EC739050, &unk_1D2EF4480);
    if ((*(v13 + 48))(v9, 1, v12) == 1)
    {
      sub_1D2E5D0B8(v9, &unk_1EC739050, &unk_1D2EF4480);
      sub_1D2E5D0B8(v11, &unk_1EC739050, &unk_1D2EF4480);
      (*(v13 + 8))(v20, v12);
      v26 = 0xE300000000000000;
      v27 = 7104878;
    }

    else
    {
      (*(v13 + 32))(v18, v9, v12);
      v22(v37, v18, v12);
      v28 = sub_1D2EE4AA8();
      v26 = v29;
      v30 = *(v13 + 8);
      v30(v18, v12);
      sub_1D2E5D0B8(v11, &unk_1EC739050, &unk_1D2EF4480);
      v30(v20, v12);
      v27 = v28;
    }

    v31 = sub_1D2E685B0(v27, v26, &v42);

    *(v25 + 4) = v31;
    _os_log_impl(&dword_1D2E46000, v23, v36, "WE GOT A NOTIFICATION %s", v25, 0xCu);
    v32 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x1D38AF660](v32, -1, -1);
    MEMORY[0x1D38AF660](v25, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v20, v12);
  }

  v33 = v38;
  os_unfair_lock_lock(v38 + 12);
  sub_1D2EAA3E0(&v33[4]);
  os_unfair_lock_unlock(v33 + 12);
  sub_1D2EB4A80(v39, v41);
}

double sub_1D2EAA3E0(__int128 *a1)
{
  v2 = a1[1];
  v5 = *a1;
  v6 = v2;
  if (*(&v2 + 1))
  {
    sub_1D2EB5B88(&v5, v7);
    v3 = [objc_opt_self() defaultCenter];
    __swift_project_boxed_opaque_existential_1(v7, v8);
    [v3 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    sub_1D2E5D0B8(&v5, &qword_1EC7385A0, &qword_1D2EEF120);
  }

  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1D2EAA4C0(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 56) = a2;
  *(v4 + 64) = v3;
  *(v4 + 176) = a3;
  *(v4 + 48) = a1;
  v5 = sub_1D2EE3E48();
  *(v4 + 72) = v5;
  *(v4 + 80) = *(v5 - 8);
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738E30, &unk_1D2EF3080);
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739040, &qword_1D2EF2460);
  *(v4 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739250, &qword_1D2EF4398);
  *(v4 + 128) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2EAA640, 0, 0);
}

uint64_t sub_1D2EAA640()
{
  v75 = v0;
  v1 = *(*(v0 + 64) + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_musicDetectorLock);
  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 32));
  if (v2 == 3 || v2 == 0)
  {
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v4 = sub_1D2EE4618();
    __swift_project_value_buffer(v4, qword_1EDED2DB8);
    v5 = sub_1D2EE45F8();
    v6 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v74[0] = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_1D2E685B0(0xD000000000000034, 0x80000001D2EE7B70, v74);
      _os_log_impl(&dword_1D2E46000, v5, v6, "%s with music", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x1D38AF660](v8, -1, -1);
      MEMORY[0x1D38AF660](v7, -1, -1);
    }
  }

  else
  {
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v11 = sub_1D2EE4618();
    *(v0 + 136) = __swift_project_value_buffer(v11, qword_1EDED2DB8);
    v12 = sub_1D2EE45F8();
    v13 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v74[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1D2E685B0(0xD000000000000034, 0x80000001D2EE7B70, v74);
      _os_log_impl(&dword_1D2E46000, v12, v13, "%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1D38AF660](v15, -1, -1);
      MEMORY[0x1D38AF660](v14, -1, -1);
    }

    v16 = *(*(v0 + 64) + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_stateMachine);
    v17 = *(v16 + 16);
    os_unfair_lock_lock((v17 + 36));
    v18 = *(v17 + 32);
    os_unfair_lock_unlock((v17 + 36));
    if (v18)
    {
      LOBYTE(v19) = 0;
      v20 = 0;
      v73 = 0;
    }

    else
    {
      v36 = *(v0 + 56);
      v37 = *(v0 + 176);
      v38 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((*(v0 + 64) + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_returnToCallDetector), *(*(v0 + 64) + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_returnToCallDetector + 24));
      sub_1D2E8F764(v38, v36, v37);
      v20 = v39;
      v19 = v40;
      v41 = *(v0 + 128);
      sub_1D2E5D050(*(v0 + 64) + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_transcriptLogger, v41, &qword_1EC739250, &qword_1D2EF4398);
      v42 = type metadata accessor for WaitOnHoldTranscriptLogger(0);
      v43 = (*(*(v42 - 8) + 48))(v41, 1, v42);
      v44 = *(v0 + 128);
      if (v43 == 1)
      {
        sub_1D2E5D0B8(*(v0 + 128), &qword_1EC739250, &qword_1D2EF4398);
      }

      else
      {
        sub_1D2EB82A8(*(v0 + 48), *(v0 + 56), v20, v19 & 1);
        sub_1D2EB5664(v44, type metadata accessor for WaitOnHoldTranscriptLogger);
      }

      v73 = v19 ^ 1;
    }

    v21 = *(v0 + 176);
    v23 = *(v0 + 48);
    v22 = *(v0 + 56);
    v24 = *(v16 + 16);
    v25 = swift_task_alloc();
    *(v25 + 16) = v16;
    *(v25 + 24) = v23;
    *(v25 + 32) = v22;
    *(v25 + 40) = v21;
    *(v25 + 48) = v20;
    os_unfair_lock_lock((v24 + 36));
    sub_1D2EB5544((v24 + 16));
    os_unfair_lock_unlock((v24 + 36));

    if ((v19 & 1) == 0)
    {
      v45 = *(v16 + 16);
      v46 = (v45 + 36);
      os_unfair_lock_lock((v45 + 36));
      sub_1D2EB556C((v45 + 16));
      v47 = *(v0 + 64);
      os_unfair_lock_unlock(v46);
      v48 = *(*(v47 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_answeringMachine) + OBJC_IVAR____TtC16CallIntelligence26AnsweringMachineController_lock);
      v49 = *(*v48 + *MEMORY[0x1E69E6B68] + 16);
      v50 = (v48 + ((*(*v48 + 48) + 3) & 0x1FFFFFFFCLL));
      os_unfair_lock_lock(v50);
      sub_1D2EB5588(v48 + v49);
      v66 = *(v0 + 64);
      os_unfair_lock_unlock(v50);
      v67 = *(v66 + 24);
      v68 = v66 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_ringbackTimer;
      os_unfair_lock_lock(v68);
      if (!*(v68 + 8))
      {
        v69 = *(v0 + 120);
        v70 = sub_1D2EE4CB8();
        (*(*(v70 - 8) + 56))(v69, 1, 1, v70);
        v71 = swift_allocObject();
        swift_weakInit();
        v72 = swift_allocObject();
        v72[2] = 0;
        v72[3] = 0;
        v72[4] = v67;
        v72[5] = v71;
        *(v68 + 8) = sub_1D2EA4398(0, 0, v69, &unk_1D2EF4510, v72);
      }

      os_unfair_lock_unlock(v68);
    }

    v26 = *(*(v0 + 64) + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_lock);
    v27 = (v26 + *(*v26 + *MEMORY[0x1E69E6B68] + 16));
    v28 = (*(*v26 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v26 + v28));
    if (*v27 == 1)
    {
      v30 = *(v0 + 104);
      v29 = *(v0 + 112);
      v31 = *(v0 + 96);
      v32 = *(v0 + 72);
      v33 = *(v0 + 80);
      *v29 = 0;
      sub_1D2EE3E38();
      sub_1D2EB5E64(v29, v30, &qword_1EC738E30, &unk_1D2EF3080);
      v34 = *(v31 + 48);
      *v27 = *v30;
      (*(v33 + 40))(&v27[*(v31 + 48)], &v30[v34], v32);
      v35 = 1;
    }

    else
    {
      v51 = *(v0 + 88);
      v52 = *(v0 + 96);
      v53 = *(v0 + 72);
      v54 = *(v0 + 80);
      sub_1D2EE3E38();
      v55 = *(v52 + 48);
      sub_1D2EE3E08();
      v57 = v56;
      *v27 = 0;
      (*(v54 + 40))(&v27[v55], v51, v53);
      v35 = v57 * 1000.0 >= 500.0;
    }

    os_unfair_lock_unlock((v26 + v28));
    v58 = sub_1D2EE45F8();
    v59 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = *(v0 + 176);
      v61 = swift_slowAlloc();
      *v61 = 67109632;
      *(v61 + 4) = v35;
      *(v61 + 8) = 1024;
      *(v61 + 10) = v60;
      *(v61 + 14) = 1024;
      *(v61 + 16) = v73 & 1;
      _os_log_impl(&dword_1D2E46000, v58, v59, "shouldUpdateCallCenter: %{BOOL}d, isUtteranceComplete: %{BOOL}d, isFirstTimePredictionStateTransition: %{BOOL}d", v61, 0x14u);
      MEMORY[0x1D38AF660](v61, -1, -1);
    }

    v62 = *(v0 + 176);

    if ((v73 | v62 | v35))
    {
      v63 = *(v0 + 64);
      v64 = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_callUUID;
      v65 = swift_task_alloc();
      *(v0 + 144) = v65;
      *v65 = v0;
      v65[1] = sub_1D2EAB160;

      return sub_1D2EA7C90(v63 + v64);
    }
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1D2EAB160()
{
  v2 = *v1;
  *(v2 + 152) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D2EAB464, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D2EAB2D0()
{

  return MEMORY[0x1EEE6DFA0](sub_1D2EAB3CC, 0, 0);
}

uint64_t sub_1D2EAB3CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2EAB464()
{
  v22 = v0;
  v1 = v0[19];
  v0[20] = v1;
  v2 = v1;
  v3 = sub_1D2EE45F8();
  v4 = sub_1D2EE4DB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = v20;
    *v5 = 136315138;
    swift_getErrorValue();
    v6 = v0[2];
    v7 = v0[3];
    v8 = sub_1D2EE4E58();
    v9 = *(v8 - 8);
    v10 = swift_task_alloc();
    v11 = *(v7 - 8);
    (*(v11 + 16))(v10, v6, v7);
    (*(v11 + 56))(v10, 0, 1, v7);
    v12 = sub_1D2EE2754(v10, v7);
    v14 = v13;
    (*(v9 + 8))(v10, v8);

    v15 = sub_1D2E685B0(v12, v14, &v21);

    *(v5 + 4) = v15;
    _os_log_impl(&dword_1D2E46000, v3, v4, "Error generating prediction: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1D38AF660](v20, -1, -1);
    MEMORY[0x1D38AF660](v5, -1, -1);
  }

  v16 = v0[8];
  v17 = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_callUUID;
  v18 = swift_task_alloc();
  v0[21] = v18;
  *v18 = v0;
  v18[1] = sub_1D2EAB2D0;

  return sub_1D2EACF34(v16 + v17);
}

uint64_t sub_1D2EAB714(uint64_t a1, double a2)
{
  *(v3 + 32) = v2;
  *(v3 + 24) = a2;
  *(v3 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739040, &qword_1D2EF2460);
  *(v3 + 40) = swift_task_alloc();
  *(v3 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738CA8, &qword_1D2EF2610);
  *(v3 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2EAB7F4, 0, 0);
}

uint64_t sub_1D2EAB7F4()
{
  v32 = v0;
  v1 = *(v0[4] + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_musicDetectorLock);
  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 32));
  if (v2 == 3 || v2 == 0)
  {
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v4 = sub_1D2EE4618();
    __swift_project_value_buffer(v4, qword_1EDED2DB8);
    v5 = sub_1D2EE45F8();
    v6 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v31 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_1D2E685B0(0xD00000000000001DLL, 0x80000001D2EE7BB0, &v31);
      _os_log_impl(&dword_1D2E46000, v5, v6, "%s with music", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x1D38AF660](v8, -1, -1);
      MEMORY[0x1D38AF660](v7, -1, -1);
    }
  }

  else
  {
    v12 = v0[6];
    v11 = v0[7];
    v13 = v0[4];
    v14 = v0[3];
    v15 = v0[2];
    v16 = v13 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_detectedLanguages;
    os_unfair_lock_lock((v13 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_detectedLanguages));
    v17 = *(v12 + 48);
    v18 = sub_1D2EE3EF8();
    (*(*(v18 - 8) + 16))(v11, v15, v18);
    *(v11 + v17) = v14;
    sub_1D2EA4214(v11);
    sub_1D2E5D0B8(v11, &qword_1EC738CA8, &qword_1D2EF2610);
    v19 = sub_1D2EB56E0(*(v16 + 8));
    v20 = *(v13 + 16);
    os_unfair_lock_unlock(v16);
    if (v19 >= v20)
    {
      v21 = *(*(v0[4] + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_stateMachine) + 16);
      os_unfair_lock_lock(v21 + 9);
      sub_1D2EB5AB0(&v21[4]);
      os_unfair_lock_unlock(v21 + 9);
      v22 = *(v0[4] + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_captionProvider);
      v23 = *(v22 + OBJC_IVAR____TtC16CallIntelligence15CaptionProvider_captionMutex);
      *(swift_task_alloc() + 16) = v22;
      os_unfair_lock_lock(v23 + 17);
      sub_1D2EB5FD0(&v23[4]);
      os_unfair_lock_unlock(v23 + 17);
      v24 = v0[4];

      v25 = *(*(v24 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_answeringMachine) + OBJC_IVAR____TtC16CallIntelligence26AnsweringMachineController_lock);
      v26 = *(*v25 + *MEMORY[0x1E69E6B68] + 16);
      v27 = (*(*v25 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((v25 + v27));
      sub_1D2E932DC(v25 + v26);
      os_unfair_lock_unlock((v25 + v27));
      v28 = v0[4];
      v29 = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_callUUID;
      v30 = swift_task_alloc();
      v0[8] = v30;
      *v30 = v0;
      v30[1] = sub_1D2EABC2C;

      return sub_1D2EA7C90(v28 + v29);
    }
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D2EABC2C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D2EABD84, 0, 0);
  }
}

uint64_t sub_1D2EABD84()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = sub_1D2EE4CB8();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;
  sub_1D2E8CB18(0, 0, v1, &unk_1D2EF4520, v4);

  sub_1D2E5D0B8(v1, &qword_1EC739040, &qword_1D2EF2460);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D2EABE9C(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D2EABEBC, 0, 0);
}

uint64_t sub_1D2EABEBC()
{
  v1 = *(*(v0[7] + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_stateMachine) + 16);
  os_unfair_lock_lock(v1 + 9);
  sub_1D2EB5FA0(&v1[4]);
  v2 = v0[7];
  os_unfair_lock_unlock(v1 + 9);
  v3 = *(*(v2 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_answeringMachine) + OBJC_IVAR____TtC16CallIntelligence26AnsweringMachineController_lock);
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_1D2EB5FB8(v3 + v4);
  os_unfair_lock_unlock((v3 + v5));
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_1D2EAC2F0;
  v7 = v0[6];

  return sub_1D2EA7C90(v7);
}

uint64_t sub_1D2EAC2F0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D2EAC3E4()
{
  *(v0 + 56) = type metadata accessor for ReturnToCallPredictorEvent(0);
  *(v0 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2EAC474, 0, 0);
}

uint64_t sub_1D2EAC474()
{
  v2 = v0[7];
  v1 = v0[8];
  sub_1D2EE0C2C(7, v1, 0.0);
  v0[5] = v2;
  v0[6] = &off_1F4E95C98;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  sub_1D2EB5DFC(v1, boxed_opaque_existential_0, type metadata accessor for ReturnToCallPredictorEvent);
  sub_1D2EDFAC8();
  sub_1D2E8E940((v0 + 2));
  sub_1D2EB5664(v1, type metadata accessor for ReturnToCallPredictorEvent);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D2EAC548()
{
  *(v0 + 56) = type metadata accessor for ReturnToCallPredictorEvent(0);
  *(v0 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2EAC5D8, 0, 0);
}

uint64_t sub_1D2EAC5D8()
{
  v2 = v0[7];
  v1 = v0[8];
  sub_1D2EE0C2C(5, v1, 0.0);
  v0[5] = v2;
  v0[6] = &off_1F4E95C98;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  sub_1D2EB5DFC(v1, boxed_opaque_existential_0, type metadata accessor for ReturnToCallPredictorEvent);
  sub_1D2EDFAC8();
  sub_1D2E8E940((v0 + 2));
  sub_1D2EB5664(v1, type metadata accessor for ReturnToCallPredictorEvent);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D2EAC6AC(double a1)
{
  *(v1 + 56) = a1;
  *(v1 + 64) = type metadata accessor for ReturnToCallPredictorEvent(0);
  *(v1 + 72) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2EAC740, 0, 0);
}

uint64_t sub_1D2EAC740()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  sub_1D2EE0C2C(3, v1, *(v0 + 56));
  *(v0 + 40) = v2;
  *(v0 + 48) = &off_1F4E95C98;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
  sub_1D2EB5DFC(v1, boxed_opaque_existential_0, type metadata accessor for ReturnToCallPredictorEvent);
  sub_1D2EDFAC8();
  sub_1D2E8E940(v0 + 16);
  sub_1D2EB5664(v1, type metadata accessor for ReturnToCallPredictorEvent);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D2EAC814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_1D2EE5088();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2EAC8D4, 0, 0);
}

uint64_t sub_1D2EAC8D4()
{
  v1 = *(v0 + 40);
  v2 = 1000000000000000000 * v1;
  v3 = (v1 * 0xDE0B6B3A7640000uLL) >> 64;
  v4 = (v1 >> 63) & 0xF21F494C589C0000;
  sub_1D2EE52E8();
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_1D2EAC9C8;

  return sub_1D2EB3930(v2, v4 + v3, 0, 0, 1);
}

uint64_t sub_1D2EAC9C8()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  *(*v1 + 88) = v0;

  (*(v3 + 8))(*(v2 + 72), *(v2 + 56));
  if (v0)
  {
    v4 = sub_1D2EACCB8;
  }

  else
  {
    v4 = sub_1D2EACB30;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D2EACB30()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (!Strong)
  {

    v5 = v0[1];
    goto LABEL_5;
  }

  v2 = Strong;
  v3 = v0[11];
  v4 = *(*(Strong + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_stateMachine) + 16);

  os_unfair_lock_lock(v4 + 9);
  sub_1D2EB5F88(&v4[4]);
  os_unfair_lock_unlock(v4 + 9);
  if (v3)
  {

    v5 = v0[1];
LABEL_5:

    return v5();
  }

  v7 = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_callUUID;
  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  v8[1] = sub_1D2EACD1C;

  return sub_1D2EA7C90(v2 + v7);
}

uint64_t sub_1D2EACCB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2EACD1C()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1D2EACEC8;
  }

  else
  {
    v2 = sub_1D2EACE30;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D2EACE30()
{
  v1 = *(v0 + 96) + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_ringbackTimer;
  os_unfair_lock_lock(v1);

  *(v1 + 8) = 0;
  os_unfair_lock_unlock(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D2EACEC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2EACF34(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D2EACF54, 0, 0);
}

uint64_t sub_1D2EACF54()
{
  v1 = *(v0[11] + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_holdDetectionState);
  os_unfair_lock_lock((v1 + 32));
  if (*(v1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B50, &qword_1D2EF2420);
    sub_1D2EE4D38();
  }

  *(v1 + 16) = 0;

  if (*(v1 + 24))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B50, &qword_1D2EF2420);
    sub_1D2EE4D38();
  }

  v2 = v0[11];
  *(v1 + 24) = 0;

  os_unfair_lock_unlock((v1 + 32));
  v3 = *(v2 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_captionProvider);
  v4 = *(v3 + OBJC_IVAR____TtC16CallIntelligence15CaptionProvider_captionMutex);
  *(swift_task_alloc() + 16) = v3;
  os_unfair_lock_lock(v4 + 17);
  sub_1D2EB5FD0(&v4[4]);
  os_unfair_lock_unlock(v4 + 17);
  v5 = v0[11];

  v6 = *(*(v5 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_answeringMachine) + OBJC_IVAR____TtC16CallIntelligence26AnsweringMachineController_lock);
  v7 = *(*v6 + *MEMORY[0x1E69E6B68] + 16);
  v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v6 + v8));
  sub_1D2E932DC(v6 + v7);
  os_unfair_lock_unlock((v6 + v8));
  v9 = *(*(v0[11] + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_stateMachine) + 16);
  os_unfair_lock_lock(v9 + 9);
  sub_1D2EB56C4(&v9[4]);
  os_unfair_lock_unlock(v9 + 9);
  v10 = swift_task_alloc();
  v0[12] = v10;
  *v10 = v0;
  v10[1] = sub_1D2EAD428;
  v11 = v0[10];

  return sub_1D2EA7C90(v11);
}

uint64_t sub_1D2EAD428()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D2EAD55C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D2EAD55C()
{
  v24 = v0;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = sub_1D2EE4618();
  __swift_project_value_buffer(v2, qword_1EDED2DB8);
  v3 = v1;
  v4 = sub_1D2EE45F8();
  v5 = sub_1D2EE4DB8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[13];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v8 = 136315138;
    swift_getErrorValue();
    v9 = v0[2];
    v10 = v0[3];
    v11 = sub_1D2EE4E58();
    v21 = v7;
    v12 = *(v11 - 8);
    v13 = swift_task_alloc();
    v14 = *(v10 - 8);
    (*(v14 + 16))(v13, v9, v10);
    (*(v14 + 56))(v13, 0, 1, v10);
    v15 = sub_1D2EE2754(v13, v10);
    v17 = v16;
    (*(v12 + 8))(v13, v11);

    v18 = sub_1D2E685B0(v15, v17, &v23);

    *(v8 + 4) = v18;
    _os_log_impl(&dword_1D2E46000, v4, v5, "Error updating callservicesd about session failure %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x1D38AF660](v22, -1, -1);
    MEMORY[0x1D38AF660](v8, -1, -1);
  }

  else
  {
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_1D2EAD820(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739040, &qword_1D2EF2460);
  v2[7] = swift_task_alloc();
  v3 = sub_1D2EE3EB8();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2EAD924, 0, 0);
}

uint64_t sub_1D2EAD924()
{
  v33 = v0;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[5];
  v5 = sub_1D2EE4618();
  v0[12] = __swift_project_value_buffer(v5, qword_1EDED2DB8);
  v6 = *(v3 + 16);
  v0[13] = v6;
  v0[14] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = sub_1D2EE45F8();
  v8 = sub_1D2EE4DD8();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[11];
  v11 = v0[8];
  v12 = v0[9];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = v31;
    *v13 = 136315138;
    sub_1D2EB3E94(&qword_1EC7384D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v14 = sub_1D2EE5258();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_1D2E685B0(v14, v16, &v32);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_1D2E46000, v7, v8, "Ending WaitOnHoldSession for call %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x1D38AF660](v31, -1, -1);
    MEMORY[0x1D38AF660](v13, -1, -1);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[15] = v17;
  v19 = *(*(v0[6] + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_stateMachine) + 16);
  os_unfair_lock_lock(v19 + 9);
  sub_1D2EB47E0(&v19[4]);
  os_unfair_lock_unlock(v19 + 9);
  v20 = *(v0[6] + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_captionProvider);
  v21 = *(v20 + OBJC_IVAR____TtC16CallIntelligence15CaptionProvider_captionMutex);
  *(swift_task_alloc() + 16) = v20;
  os_unfair_lock_lock(v21 + 17);
  sub_1D2EB5FD0(&v21[4]);
  os_unfair_lock_unlock(v21 + 17);
  v22 = v0[6];

  v23 = *(*(v22 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_answeringMachine) + OBJC_IVAR____TtC16CallIntelligence26AnsweringMachineController_lock);
  v24 = *(*v23 + *MEMORY[0x1E69E6B68] + 16);
  v25 = (*(*v23 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v23 + v25));
  sub_1D2E932DC(v23 + v24);
  os_unfair_lock_unlock((v23 + v25));
  v26 = *(v0[6] + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_soundClassificationResultsProvider);
  v27 = v26 + OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_mediaAnalyzerMutex;
  os_unfair_lock_lock((v26 + OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_mediaAnalyzerMutex));
  sub_1D2EA16D0((v27 + 8), v26);
  os_unfair_lock_unlock(v27);
  v28 = swift_task_alloc();
  v0[16] = v28;
  *v28 = v0;
  v28[1] = sub_1D2EADD64;
  v29 = v0[5];

  return sub_1D2EA7C90(v29);
}

uint64_t sub_1D2EADD64()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D2EADEBC, 0, 0);
  }
}

uint64_t sub_1D2EADEBC()
{
  v22 = v0;
  (*(v0 + 104))(*(v0 + 80), *(v0 + 40), *(v0 + 64));
  v1 = sub_1D2EE45F8();
  v2 = sub_1D2EE4DD8();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 120);
  v5 = *(v0 + 80);
  v6 = *(v0 + 64);
  if (v3)
  {
    v20 = *(v0 + 120);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315138;
    sub_1D2EB3E94(&qword_1EC7384D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v9 = sub_1D2EE5258();
    v11 = v10;
    v20(v5, v6);
    v12 = sub_1D2E685B0(v9, v11, &v21);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1D2E46000, v1, v2, "Successfully ended WaitOnHoldSession for call %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1D38AF660](v8, -1, -1);
    MEMORY[0x1D38AF660](v7, -1, -1);
  }

  else
  {

    v4(v5, v6);
  }

  v13 = *__swift_project_boxed_opaque_existential_1((*(v0 + 48) + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_returnToCallDetector), *(*(v0 + 48) + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_returnToCallDetector + 24));
  swift_beginAccess();
  if (!*(*(v13 + 56) + 16))
  {
    v14 = *(v0 + 48);
    v15 = *(v0 + 56);
    v16 = sub_1D2EE4CB8();
    (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v14;

    sub_1D2E8CB18(0, 0, v15, &unk_1D2EF4458, v17);

    sub_1D2E5D0B8(v15, &qword_1EC739040, &qword_1D2EF2460);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1D2EAE1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v4[8] = type metadata accessor for ReturnToCallPredictorEvent(0);
  v4[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2EAE240, 0, 0);
}

uint64_t sub_1D2EAE240()
{
  v13 = v0;
  v2 = v0[8];
  v1 = v0[9];
  v3 = *(*(v0[7] + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_stateMachine) + 16);
  os_unfair_lock_lock((v3 + 36));
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  sub_1D2E637F8(v4, v5, v6);
  os_unfair_lock_unlock((v3 + 36));
  v10 = v4;
  v11 = v5;
  v12 = v6;
  sub_1D2EE0E20(&v10, v1);
  sub_1D2E63814(v10, v11, v12);
  v0[5] = v2;
  v0[6] = &off_1F4E95C98;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  sub_1D2EB5DFC(v1, boxed_opaque_existential_0, type metadata accessor for ReturnToCallPredictorEvent);
  sub_1D2EDFAC8();
  sub_1D2E8E940((v0 + 2));
  sub_1D2EB5664(v1, type metadata accessor for ReturnToCallPredictorEvent);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D2EAE378(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739268, &unk_1D2EF43B8);
  v2[15] = swift_task_alloc();
  v3 = type metadata accessor for AudioHistEvent(0);
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v4 = sub_1D2EE3EB8();
  v2[20] = v4;
  v2[21] = *(v4 - 8);
  v2[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2EAE4D8, 0, 0);
}

uint64_t sub_1D2EAE4D8()
{
  v40 = v0;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = v0[13];
  v5 = sub_1D2EE4618();
  __swift_project_value_buffer(v5, qword_1EDED2DB8);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_1D2EE45F8();
  v7 = sub_1D2EE4DD8();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[21];
  v9 = v0[22];
  v11 = v0[20];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v39 = v13;
    *v12 = 136315138;
    sub_1D2EB3E94(&qword_1EC7384D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v14 = sub_1D2EE5258();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1D2E685B0(v14, v16, &v39);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1D2E46000, v6, v7, "Ending WaitOnHoldSession for call %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1D38AF660](v13, -1, -1);
    MEMORY[0x1D38AF660](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = *(v0[14] + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_holdDetectionState);
  os_unfair_lock_lock((v18 + 32));
  if (*(v18 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B50, &qword_1D2EF2420);
    sub_1D2EE4D38();
  }

  *(v18 + 16) = 0;

  if (*(v18 + 24))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B50, &qword_1D2EF2420);
    sub_1D2EE4D38();
  }

  v19 = v0[14];
  *(v18 + 24) = 0;

  os_unfair_lock_unlock((v18 + 32));
  v20 = *(v19 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_captionProvider);
  v21 = *(v20 + OBJC_IVAR____TtC16CallIntelligence15CaptionProvider_captionMutex);
  *(swift_task_alloc() + 16) = v20;
  os_unfair_lock_lock(v21 + 17);
  sub_1D2EB3914(&v21[4]);
  os_unfair_lock_unlock(v21 + 17);
  v22 = v0[14];

  v23 = *(v22 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_soundClassificationResultsProvider);
  v24 = v23 + OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_mediaAnalyzerMutex;
  os_unfair_lock_lock((v23 + OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_mediaAnalyzerMutex));
  sub_1D2EA16D0((v24 + 8), v23);
  os_unfair_lock_unlock(v24);
  v25 = *(*(v0[14] + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_stateMachine) + 16);
  os_unfair_lock_lock(v25 + 9);
  sub_1D2EB6E1C(&v25[4]);
  os_unfair_lock_unlock(v25 + 9);
  v26 = *__swift_project_boxed_opaque_existential_1((v0[14] + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_returnToCallDetector), *(v0[14] + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_returnToCallDetector + 24));
  swift_beginAccess();
  if (!*(*(v26 + 56) + 16))
  {
    v27 = v0[16];
    v28 = v0[17];
    v29 = v0[15];
    v30 = (v23 + OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_aggregator);
    swift_beginAccess();
    v31 = *v30;
    v32 = v30[1];

    sub_1D2E9DE44(v31, v32, v29);

    if ((*(v28 + 48))(v29, 1, v27) == 1)
    {
      sub_1D2E5D0B8(v0[15], &qword_1EC739268, &unk_1D2EF43B8);
    }

    else
    {
      v34 = v0[18];
      v33 = v0[19];
      v35 = v0[16];
      sub_1D2EB5384(v0[15], v33, type metadata accessor for AudioHistEvent);
      sub_1D2EE101C(v33, 1, v34);
      v0[5] = v35;
      v0[6] = &off_1F4E95AF8;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
      sub_1D2EB5DFC(v34, boxed_opaque_existential_0, type metadata accessor for AudioHistEvent);
      sub_1D2EDFAC8();
      sub_1D2EB5664(v34, type metadata accessor for AudioHistEvent);
      sub_1D2EB5664(v33, type metadata accessor for AudioHistEvent);
      sub_1D2E8E940((v0 + 2));
    }
  }

  v37 = v0[1];

  return v37();
}

uint64_t sub_1D2EAEA58()
{
  v2 = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_callUUID;
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_1D2EAEAF4;

  return sub_1D2EAEEE8(v0 + v2);
}

uint64_t sub_1D2EAEAF4()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D2EAEC28, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D2EAEC28()
{
  v1 = *(v0 + 32);
  *(v0 + 16) = v1;
  v2 = (v0 + 16);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B50, &qword_1D2EF2420);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 40) == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {

    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v16 = sub_1D2EE4618();
    __swift_project_value_buffer(v16, qword_1EDED2DB8);
    v17 = sub_1D2EE45F8();
    v18 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1D2E46000, v17, v18, "Session not in hold detection state. Returning.", v19, 2u);
      MEMORY[0x1D38AF660](v19, -1, -1);
    }

    v20 = *v2;
  }

  else
  {

    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 32);
    v6 = sub_1D2EE4618();
    __swift_project_value_buffer(v6, qword_1EDED2DB8);
    v7 = v5;
    v8 = sub_1D2EE45F8();
    v9 = sub_1D2EE4DB8();

    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 32);
    if (v10)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = v11;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_1D2E46000, v8, v9, "Unexpected error while stopping hold detection: %@", v12, 0xCu);
      sub_1D2E5D0B8(v13, &qword_1EC7392E8, &unk_1D2EF63D0);
      MEMORY[0x1D38AF660](v13, -1, -1);
      MEMORY[0x1D38AF660](v12, -1, -1);

      goto LABEL_16;
    }

    v20 = v11;
  }

LABEL_16:
  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1D2EAEEE8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1D2EE3EB8();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2EAEFA8, 0, 0);
}

uint64_t sub_1D2EAEFA8()
{
  v27 = v0;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = sub_1D2EE4618();
  __swift_project_value_buffer(v5, qword_1EDED2DB8);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_1D2EE45F8();
  v7 = sub_1D2EE4DD8();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 136446210;
    sub_1D2EB3E94(&qword_1EC7384D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v14 = sub_1D2EE5258();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1D2E685B0(v14, v16, &v26);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1D2E46000, v6, v7, "Stopping hold detection for call %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1D38AF660](v13, -1, -1);
    MEMORY[0x1D38AF660](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = *(v0[3] + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_holdDetectionState);
  os_unfair_lock_lock((v18 + 32));
  if (*(v18 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B50, &qword_1D2EF2420);
    sub_1D2EE4D38();
  }

  *(v18 + 16) = 0;

  if (*(v18 + 24))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B50, &qword_1D2EF2420);
    sub_1D2EE4D38();
  }

  v19 = v0[3];
  *(v18 + 24) = 0;

  os_unfair_lock_unlock((v18 + 32));
  v20 = *(*(v19 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_stateMachine) + 16);
  os_unfair_lock_lock(v20 + 9);
  sub_1D2EB3DE8(&v20[4]);
  os_unfair_lock_unlock(v20 + 9);
  v21 = *(v0[3] + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_soundClassificationResultsProvider);
  v22 = v21 + OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_mediaAnalyzerMutex;
  os_unfair_lock_lock((v21 + OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_mediaAnalyzerMutex));
  sub_1D2EA18B0((v22 + 8), v21);
  os_unfair_lock_unlock(v22);
  v23 = swift_task_alloc();
  v0[7] = v23;
  *v23 = v0;
  v23[1] = sub_1D2EAF3AC;
  v24 = v0[2];

  return sub_1D2EA7C90(v24);
}

uint64_t sub_1D2EAF3AC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id sub_1D2EAF4C4()
{
  v1 = sub_1D2EE3F78();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v59 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D2EE4A28();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = type metadata accessor for HoldAssistEvent(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v53 - v9);
  v11 = sub_1D2EE3EB8();
  v55 = *(v11 - 8);
  v56 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v53 - v15;
  v17 = *(*(v0 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_stateMachine) + 16);
  os_unfair_lock_lock((v17 + 36));
  v18 = *(v17 + 16);
  v19 = *(v17 + 32);
  *&v54 = *(v17 + 24);
  *(&v54 + 1) = v18;
  sub_1D2E637F8(v18, v54, v19);
  os_unfair_lock_unlock((v17 + 36));
  if (v19)
  {
    if (v19 != 1)
    {
      v38 = 0;
      if (*(&v54 + 1) > 1uLL)
      {
        if (*(&v54 + 1) ^ 2 | v54)
        {
          return v38;
        }

        v44 = objc_allocWithZone(MEMORY[0x1E69D8CE8]);
        v40 = sub_1D2EE3E78();
        sub_1D2E9D860(0, &qword_1EC739290, 0x1E69D8CE0);
        v41 = sub_1D2EE4BD8();
        v42 = [v44 initWithUUID:v40 state:2 events:v41 requiresUserAttentionReason:1 hostedOnCurrentDevice:1];
      }

      else
      {
        if (v54 == 0)
        {
          return v38;
        }

        v39 = objc_allocWithZone(MEMORY[0x1E69D8CE8]);
        v40 = sub_1D2EE3E78();
        sub_1D2E9D860(0, &qword_1EC739290, 0x1E69D8CE0);
        v41 = sub_1D2EE4BD8();
        v42 = [v39 initWithUUID:v40 state:1 events:v41 requiresUserAttentionReason:1 hostedOnCurrentDevice:1];
      }

      v38 = v42;

      return v38;
    }

    (*(v55 + 16))(v14, v0 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_id, v56);
    v20 = v54;
    v21 = *(v54 + 16);
    if (v21)
    {
      v53 = v14;
      v60 = MEMORY[0x1E69E7CC0];
      sub_1D2EE5048();
      v22 = v20 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v23 = *(v5 + 72);
      v57 = "/WaitOnHoldSession.swift";
      v58 = v23;
      do
      {
        sub_1D2EB5DFC(v22, v8, type metadata accessor for HoldAssistEvent);
        if ((v8[2] & 0x8000000000000000) != 0)
        {
          v27 = v8[3];
          v28 = objc_allocWithZone(MEMORY[0x1E69D8CE0]);
          v25 = sub_1D2EE4A38();
          v26 = sub_1D2EE3E18();
          [v28 initWithType:1 text:v25 date:v26 confidenceScore:v27];
        }

        else
        {
          sub_1D2EE4A18();
          sub_1D2EE3F38();
          sub_1D2EE4A88();
          v24 = objc_allocWithZone(MEMORY[0x1E69D8CE0]);
          v25 = sub_1D2EE4A38();

          v26 = sub_1D2EE3E18();
          [v24 initWithType:2 text:v25 date:v26 confidenceScore:0.0];
        }

        sub_1D2EB5664(v8, type metadata accessor for HoldAssistEvent);
        sub_1D2EE5028();
        sub_1D2EE5058();
        sub_1D2EE5068();
        sub_1D2EE5038();
        v22 += v58;
        --v21;
      }

      while (v21);
      v43 = BYTE8(v54);
      sub_1D2E63814(*(&v54 + 1), v54, 1u);
      v14 = v53;
    }

    else
    {
      v43 = BYTE8(v54);
      sub_1D2E63814(*(&v54 + 1), v54, 1u);
    }

    v45 = v43;
    v46 = objc_allocWithZone(MEMORY[0x1E69D8CE8]);
    v47 = sub_1D2EE3E78();
    sub_1D2E9D860(0, &qword_1EC739290, 0x1E69D8CE0);
    v48 = sub_1D2EE4BD8();

    v38 = [v46 initWithUUID:v47 state:3 events:v48 requiresUserAttentionReason:v45 + 1 hostedOnCurrentDevice:1];

    (*(v55 + 8))(v14, v56);
  }

  else
  {
    (*(v55 + 16))(v16, v0 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_id, v56);
    v29 = *(&v54 + 1);
    v30 = *(*(&v54 + 1) + 16);
    if (v30)
    {
      v53 = v16;
      v60 = MEMORY[0x1E69E7CC0];
      sub_1D2EE5048();
      v31 = v29 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v32 = *(v5 + 72);
      v57 = "/WaitOnHoldSession.swift";
      v58 = v32;
      do
      {
        sub_1D2EB5DFC(v31, v10, type metadata accessor for HoldAssistEvent);
        if ((v10[2] & 0x8000000000000000) != 0)
        {
          v36 = v10[3];
          v37 = objc_allocWithZone(MEMORY[0x1E69D8CE0]);
          v34 = sub_1D2EE4A38();
          v35 = sub_1D2EE3E18();
          [v37 initWithType:1 text:v34 date:v35 confidenceScore:v36];
        }

        else
        {
          sub_1D2EE4A18();
          sub_1D2EE3F38();
          sub_1D2EE4A88();
          v33 = objc_allocWithZone(MEMORY[0x1E69D8CE0]);
          v34 = sub_1D2EE4A38();

          v35 = sub_1D2EE3E18();
          [v33 initWithType:2 text:v34 date:v35 confidenceScore:0.0];
        }

        sub_1D2EB5664(v10, type metadata accessor for HoldAssistEvent);
        sub_1D2EE5028();
        sub_1D2EE5058();
        sub_1D2EE5068();
        sub_1D2EE5038();
        v31 += v58;
        --v30;
      }

      while (v30);
      sub_1D2E63814(*(&v54 + 1), v54, 0);
      v16 = v53;
    }

    else
    {
      sub_1D2E63814(*(&v54 + 1), v54, 0);
    }

    v49 = objc_allocWithZone(MEMORY[0x1E69D8CE8]);
    v50 = sub_1D2EE3E78();
    sub_1D2E9D860(0, &qword_1EC739290, 0x1E69D8CE0);
    v51 = sub_1D2EE4BD8();

    v38 = [v49 initWithUUID:v50 state:0 events:v51 requiresUserAttentionReason:1 hostedOnCurrentDevice:1];

    (*(v55 + 8))(v16, v56);
  }

  return v38;
}

uint64_t sub_1D2EAFDB4(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = a3;
  v5 = sub_1D2EE46C8();
  v26 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2EE46F8();
  v24 = *(v8 - 8);
  v25 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738D00, &qword_1D2EF2808);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  sub_1D2E9D860(0, &qword_1EDECF788, 0x1E69E9610);
  v23 = sub_1D2EE4DE8();
  (*(v12 + 16))(v14, a1, v11);
  v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v16 = swift_allocObject();
  v17 = v22;
  *(v16 + 16) = a2;
  *(v16 + 24) = v17;
  (*(v12 + 32))(v16 + v15, v14, v11);
  aBlock[4] = sub_1D2EB3E0C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D2EB06E4;
  aBlock[3] = &block_descriptor_2;
  v18 = _Block_copy(aBlock);

  v19 = v17;
  sub_1D2EE46E8();
  v27 = MEMORY[0x1E69E7CC0];
  sub_1D2EB3E94(&qword_1EC739278, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739280, &qword_1D2EF43E0);
  sub_1D2EB3EDC();
  sub_1D2EE4EB8();
  v20 = v23;
  MEMORY[0x1D38AE890](0, v10, v7, v18);
  _Block_release(v18);

  (*(v26 + 8))(v7, v5);
  (*(v24 + 8))(v10, v25);
}

uint64_t sub_1D2EB0158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738D00, &qword_1D2EF2808);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - v8;
  sub_1D2EE4C98();
  sub_1D2EE4C88();
  sub_1D2EE4C28();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = *(a1 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_callCenter);
  (*(v7 + 16))(v9, a3, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v9, v6);
  aBlock[4] = sub_1D2EB3F40;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D2EB0678;
  aBlock[3] = &block_descriptor_27;
  v13 = _Block_copy(aBlock);

  [v10 _performSmartHoldingRequest_completion_];
  _Block_release(v13);
}

uint64_t sub_1D2EB0384(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1;
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v5 = sub_1D2EE4618();
    __swift_project_value_buffer(v5, qword_1EDED2DB8);
    v6 = a1;
    v7 = sub_1D2EE45F8();
    v8 = sub_1D2EE4DB8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v29 = v25;
      *v9 = 136446210;
      swift_getErrorValue();
      v10 = v27;
      v11 = v28;
      v12 = sub_1D2EE4E58();
      v24 = &v24;
      v13 = *(v12 - 8);
      v26 = a2;
      v14 = v13;
      MEMORY[0x1EEE9AC00](v12);
      v16 = &v24 - v15;
      v17 = *(v11 - 8);
      (*(v17 + 16))(&v24 - v15, v10, v11);
      (*(v17 + 56))(v16, 0, 1, v11);
      v18 = sub_1D2EE2754(v16, v11);
      v20 = v19;
      (*(v14 + 8))(v16, v12);
      v21 = sub_1D2E685B0(v18, v20, &v29);

      *(v9 + 4) = v21;
      _os_log_impl(&dword_1D2E46000, v7, v8, "Error performing TUSmartHoldingRequest %{public}s", v9, 0xCu);
      v22 = v25;
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1D38AF660](v22, -1, -1);
      MEMORY[0x1D38AF660](v9, -1, -1);
    }

    v29 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738D00, &qword_1D2EF2808);
    return sub_1D2EE4C48();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738D00, &qword_1D2EF2808);
    return sub_1D2EE4C58();
  }
}

void sub_1D2EB0678(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1D2EB06E4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1D2EB0728(uint64_t a1)
{
  v3 = v1;
  v5 = sub_1D2EE3EB8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D2E9D860(0, &qword_1EDECF788, 0x1E69E9610);
  v9 = sub_1D2EE4DE8();
  v21 = v3;
  v22 = a1;
  sub_1D2EE4DF8();

  if (!v2 && !v23)
  {
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v10 = sub_1D2EE4618();
    __swift_project_value_buffer(v10, qword_1EDED2DB8);
    (*(v6 + 16))(v8, a1, v5);
    v11 = sub_1D2EE45F8();
    v12 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136315138;
      sub_1D2EB3E94(&qword_1EC7384D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v15 = sub_1D2EE5258();
      v17 = v16;
      (*(v6 + 8))(v8, v5);
      v18 = sub_1D2E685B0(v15, v17, &v23);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_1D2E46000, v11, v12, "Invalid downlink stream token %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1D38AF660](v14, -1, -1);
      MEMORY[0x1D38AF660](v13, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }

    sub_1D2E94910();
    swift_allocError();
    *v19 = 6;
    swift_willThrow();
  }
}

void sub_1D2EB0A40(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1D2EE3EB8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2EE4C98();
  v25[1] = sub_1D2EE4C88();
  sub_1D2EE4C28();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = *(a1 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_callCenter);
  [v10 fetchCurrentCalls];
  sub_1D2EE3E68();
  v11 = sub_1D2EE4A38();

  v12 = [v10 callWithUniqueProxyIdentifier_];

  if (v12)
  {
    v13 = [v12 tokens];
    v14 = [v13 downlinkStreamToken];

    *a3 = v14;
  }

  else
  {
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v15 = sub_1D2EE4618();
    __swift_project_value_buffer(v15, qword_1EDED2DB8);
    (*(v7 + 16))(v9, a2, v6);
    v16 = sub_1D2EE45F8();
    v17 = sub_1D2EE4DB8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26 = v19;
      *v18 = 136315138;
      sub_1D2EB3E94(&qword_1EC7384D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v20 = sub_1D2EE5258();
      v22 = v21;
      (*(v7 + 8))(v9, v6);
      v23 = sub_1D2E685B0(v20, v22, &v26);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_1D2E46000, v16, v17, "Unknown callUUID %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1D38AF660](v19, -1, -1);
      MEMORY[0x1D38AF660](v18, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }

    sub_1D2E94910();
    swift_allocError();
    *v24 = 5;
    swift_willThrow();
  }
}

uint64_t sub_1D2EB0DF4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739040, &qword_1D2EF2460);
  v2[4] = swift_task_alloc();
  v3 = sub_1D2EE3EB8();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = *(v4 + 64);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2EB0F00, 0, 0);
}

void sub_1D2EB0F00()
{
  v42 = v0;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[2];
  v5 = sub_1D2EE4618();
  __swift_project_value_buffer(v5, qword_1EDED2DB8);
  v40 = *(v3 + 16);
  v40(v1, v4, v2);
  v6 = sub_1D2EE45F8();
  v7 = sub_1D2EE4DD8();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[9];
  v10 = v0[5];
  v11 = v0[6];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v41 = v13;
    *v12 = 136446210;
    sub_1D2EB3E94(&qword_1EC7384D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v14 = sub_1D2EE5258();
    v16 = v15;
    (*(v11 + 8))(v9, v10);
    v17 = sub_1D2E685B0(v14, v16, &v41);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1D2E46000, v6, v7, "Starting hold detection for call %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1D38AF660](v13, -1, -1);
    MEMORY[0x1D38AF660](v12, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v9, v10);
  }

  v18 = *(*(v0[3] + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_stateMachine) + 16);
  os_unfair_lock_lock(v18 + 9);
  sub_1D2EB3FBC(&v18[4]);
  os_unfair_lock_unlock(v18 + 9);
  v19 = v0[8];
  v21 = v0[5];
  v20 = v0[6];
  v23 = v0[3];
  v22 = v0[4];
  v39 = v22;
  v24 = v0[2];
  v25 = sub_1D2EE4CB8();
  v38 = *(*(v25 - 8) + 56);
  v38(v22, 1, 1, v25);
  v26 = v19;
  v40(v19, v24, v21);
  v27 = *(v20 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = xmmword_1D2EF4220;
  *(v28 + 48) = v23;
  v37 = *(v20 + 32);
  v29 = v21;
  v37(v28 + ((v27 + 56) & ~v27), v26, v21);

  v30 = sub_1D2EA4398(0, 0, v39, &unk_1D2EF4400, v28);
  v0[10] = v30;
  v38(v39, 1, 1, v25);
  v40(v26, v24, v21);
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = xmmword_1D2EF4220;
  *(v31 + 48) = xmmword_1D2EF4230;
  *(v31 + 64) = v23;
  v37(v31 + ((v27 + 72) & ~v27), v26, v29);

  v32 = sub_1D2EA4398(0, 0, v39, &unk_1D2EF4410, v31);
  v0[11] = v32;
  v33 = *(v23 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_holdDetectionState);
  v34 = swift_task_alloc();
  *(v34 + 16) = v30;
  *(v34 + 24) = v32;
  os_unfair_lock_lock((v33 + 32));
  sub_1D2EB4650((v33 + 16));
  os_unfair_lock_unlock((v33 + 32));

  v35 = swift_task_alloc();
  v0[12] = v35;
  *v35 = v0;
  v35[1] = sub_1D2EB147C;
  v36 = v0[2];

  sub_1D2EA7C90(v36);
}

uint64_t sub_1D2EB147C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1D2EB1624;
  }

  else
  {
    v2 = sub_1D2EB1590;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D2EB1590()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2EB1624()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2EB16B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v8 = sub_1D2EE4C68();
  v7[7] = v8;
  v7[8] = *(v8 - 8);
  v7[9] = swift_task_alloc();
  v9 = sub_1D2EE5088();
  v7[10] = v9;
  v7[11] = *(v9 - 8);
  v7[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2EB17D4, 0, 0);
}

uint64_t sub_1D2EB17D4()
{
  v14 = v0;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  v0[13] = __swift_project_value_buffer(v1, qword_1EDED2DB8);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136446210;
    v6 = sub_1D2EE53D8();
    v8 = sub_1D2E685B0(v6, v7, &v13);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Starting initial hold detection delay of %{public}s seconds", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1D38AF660](v5, -1, -1);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  sub_1D2EE52E8();
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_1D2EB19C4;
  v11 = v0[3];
  v10 = v0[4];

  return sub_1D2EB3930(v11, v10, 0, 0, 1);
}

uint64_t sub_1D2EB19C4()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  (*(v2[11] + 8))(v2[12], v2[10]);
  if (v0)
  {
    v3 = sub_1D2EB1CC0;
  }

  else
  {
    v3 = sub_1D2EB1B2C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

void sub_1D2EB1B2C(uint64_t a1)
{
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Hold Detection delay completed, starting sound analysis", v4, 2u);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v5 = v1[15];
  v6 = v1[6];

  sub_1D2EB0728(v6);
  if (!v5)
  {
    v9 = v7;
    v10 = *(v1[5] + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_soundClassificationResultsProvider);
    v11 = &v10[OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_mediaAnalyzerMutex];
    os_unfair_lock_lock(&v10[OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_mediaAnalyzerMutex]);
    sub_1D2E9F418(v11 + 1, v9, v10, 0);
    os_unfair_lock_unlock(v11);
    sub_1D2EA814C(0);
  }

  v8 = v1[1];

  v8();
}

uint64_t sub_1D2EB1CC0()
{
  v1 = *(v0 + 120);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B50, &qword_1D2EF2420);
  if (swift_dynamicCast())
  {

    v3 = sub_1D2EE45F8();
    v4 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1D2E46000, v3, v4, "Initial Hold Detection task cancelled", v5, 2u);
      MEMORY[0x1D38AF660](v5, -1, -1);
    }

    v7 = *(v0 + 64);
    v6 = *(v0 + 72);
    v8 = *(v0 + 56);

    (*(v7 + 8))(v6, v8);

    v9 = *(v0 + 8);
  }

  else
  {

    v9 = *(v0 + 8);
  }

  return v9();
}

uint64_t sub_1D2EB1E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a8;
  v8[8] = v13;
  v8[5] = a6;
  v8[6] = a7;
  v8[3] = a4;
  v8[4] = a5;
  v9 = sub_1D2EE4C68();
  v8[9] = v9;
  v8[10] = *(v9 - 8);
  v8[11] = swift_task_alloc();
  v10 = sub_1D2EE5088();
  v8[12] = v10;
  v8[13] = *(v10 - 8);
  v8[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2EB1F78, 0, 0);
}

uint64_t sub_1D2EB1F78()
{
  v1 = sub_1D2EE53F8();
  v3 = v2;
  sub_1D2EE52E8();
  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  *v4 = v0;
  v4[1] = sub_1D2EB2058;

  return sub_1D2EB3930(v1, v3, 0, 0, 1);
}

uint64_t sub_1D2EB2058()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  *(*v1 + 128) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1D2EB2318;
  }

  else
  {
    v5 = sub_1D2EB21C8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D2EB21C8()
{
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  __swift_project_value_buffer(v1, qword_1EDED2DB8);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Maximum Hold Detection duration reached", v4, 2u);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 136) = v5;
  *v5 = v0;
  v5[1] = sub_1D2EB24E8;
  v6 = *(v0 + 64);

  return sub_1D2EAEEE8(v6);
}

uint64_t sub_1D2EB2318()
{
  v1 = *(v0 + 128);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B50, &qword_1D2EF2420);
  if (swift_dynamicCast())
  {

    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v3 = sub_1D2EE4618();
    __swift_project_value_buffer(v3, qword_1EDED2DB8);
    v4 = sub_1D2EE45F8();
    v5 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1D2E46000, v4, v5, "Maximum Hold Detection duration task cancelled", v6, 2u);
      MEMORY[0x1D38AF660](v6, -1, -1);
    }

    v8 = *(v0 + 80);
    v7 = *(v0 + 88);
    v9 = *(v0 + 72);

    (*(v8 + 8))(v7, v9);

    v10 = *(v0 + 8);
  }

  else
  {

    v10 = *(v0 + 8);
  }

  return v10();
}

uint64_t sub_1D2EB24E8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D2EB261C(uint64_t *a1, uint64_t a2, uint64_t a3)
{

  *a1 = a2;

  a1[1] = a3;
  return result;
}

void sub_1D2EB2684(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D2EE3EB8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2EE4C98();
  v37[1] = sub_1D2EE4C88();
  sub_1D2EE4C28();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = *(a1 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_callCenter);
  [v10 fetchCurrentCalls];
  sub_1D2EE3E68();
  v11 = sub_1D2EE4A38();

  v12 = [v10 callWithUniqueProxyIdentifier_];

  if (v12)
  {
    v13 = v12;
    v14 = sub_1D2EB5CB0(v13);
    v15 = [v13 remoteParticipantHandles];
    sub_1D2E9D860(0, &qword_1EC7392D8, 0x1E69D8C00);
    sub_1D2EB5D88();
    v16 = sub_1D2EE4D78();

    v17 = sub_1D2EA46C0(v16);

    if (v17)
    {

      v18 = [v17 value];
      v19 = sub_1D2EE4A68();
      v21 = v20;

      *a3 = v14;
      *(a3 + 8) = v19;
      *(a3 + 16) = v21;
    }

    else
    {
      if (qword_1EDECFF10 != -1)
      {
        swift_once();
      }

      v31 = sub_1D2EE4618();
      __swift_project_value_buffer(v31, qword_1EDED2DB8);
      v32 = sub_1D2EE45F8();
      v33 = sub_1D2EE4DB8();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_1D2E46000, v32, v33, "No remote participants in call", v34, 2u);
        MEMORY[0x1D38AF660](v34, -1, -1);
      }

      sub_1D2E94910();
      swift_allocError();
      *v35 = 5;
      swift_willThrow();
    }
  }

  else
  {
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v22 = sub_1D2EE4618();
    __swift_project_value_buffer(v22, qword_1EDED2DB8);
    (*(v7 + 16))(v9, a2, v6);
    v23 = sub_1D2EE45F8();
    v24 = sub_1D2EE4DB8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v38 = v26;
      *v25 = 136315138;
      sub_1D2EB3E94(&qword_1EC7384D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v27 = sub_1D2EE5258();
      v29 = v28;
      (*(v7 + 8))(v9, v6);
      v30 = sub_1D2E685B0(v27, v29, &v38);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_1D2E46000, v23, v24, "Unknown callUUID %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1D38AF660](v26, -1, -1);
      MEMORY[0x1D38AF660](v25, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }

    sub_1D2E94910();
    swift_allocError();
    *v36 = 5;
    swift_willThrow();
  }
}

uint64_t sub_1D2EB2BB4(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 40) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D2EB2BD8, 0, 0);
}

uint64_t sub_1D2EB2BD8()
{
  v18 = v0;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  *(v0 + 24) = __swift_project_value_buffer(v1, qword_1EDED2DB8);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v17 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1D2E685B0(0xD00000000000001FLL, 0x80000001D2EE7B50, &v17);
    _os_log_impl(&dword_1D2E46000, v2, v3, "%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1D38AF660](v5, -1, -1);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  if (*(v0 + 40))
  {
    v6 = sub_1D2EE45F8();
    v7 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1D2E46000, v6, v7, "Continue detecting wait on hold", v8, 2u);
      MEMORY[0x1D38AF660](v8, -1, -1);
    }

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v10 = *(*(*(v0 + 16) + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_stateMachine) + 16);
    os_unfair_lock_lock(v10 + 9);
    sub_1D2EB47A8(&v10[4]);
    os_unfair_lock_unlock(v10 + 9);
    v12 = *(*(v0 + 16) + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_soundClassificationResultsProvider);
    v13 = v12 + OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_mediaAnalyzerMutex;
    os_unfair_lock_lock((v12 + OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_mediaAnalyzerMutex));
    sub_1D2EA18B0((v13 + 8), v12);
    os_unfair_lock_unlock(v13);
    v14 = *(v0 + 16);
    v15 = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_callUUID;
    v16 = swift_task_alloc();
    *(v0 + 32) = v16;
    *v16 = v0;
    v16[1] = sub_1D2EB2EE4;

    return sub_1D2EA7C90(v14 + v15);
  }
}

uint64_t sub_1D2EB2EE4()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D2EB3014, 0, 0);
  }
}

uint64_t sub_1D2EB3014(uint64_t a1)
{
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Prompt user to Enable Wait on Hold", v4, 2u);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_1D2EB30E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 105) = a5;
  *(v6 + 16) = a4;
  *(v6 + 24) = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739298, &qword_1D2EF4438);
  *(v6 + 32) = v7;
  *(v6 + 40) = *(v7 - 8);
  *(v6 + 48) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2EB31B8, 0, 0);
}

uint64_t sub_1D2EB31B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7391B0, &qword_1D2EF3FF0);
  sub_1D2EE4D08();
  v1 = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_soundClassificationResultsProvider;
  v0[7] = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_musicDetectorLock;
  v0[8] = v1;
  v0[9] = 0;
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_1D2EB329C;
  v3 = v0[4];

  return MEMORY[0x1EEE6D9C8](v0 + 13, 0, 0, v3);
}

uint64_t sub_1D2EB329C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D2EB3398, 0, 0);
}

void sub_1D2EB3398()
{
  v23 = v0;
  v1 = *(v0 + 104);
  if (v1 == 4)
  {
    (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));

    v2 = *(v0 + 8);

    v2();
    return;
  }

  if (*(v0 + 105))
  {
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v3 = sub_1D2EE4618();
    __swift_project_value_buffer(v3, qword_1EDED2DB8);
    v4 = sub_1D2EE45F8();
    v5 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v22 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_1D2E685B0(0xD000000000000021, 0x80000001D2EE7B20, &v22);
      _os_log_impl(&dword_1D2E46000, v4, v5, "%s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x1D38AF660](v7, -1, -1);
      MEMORY[0x1D38AF660](v6, -1, -1);
    }

    v8 = *(*(v0 + 24) + *(v0 + 56));
    os_unfair_lock_lock((v8 + 32));
    *(v8 + 16) = v1;
    if (v1 && v1 != 3)
    {
      v16 = *(v8 + 24);
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        __break(1u);
LABEL_24:
        MEMORY[0x1EEE6D9C8](v9, v10, v11, v12);
        return;
      }

      v19 = *(v0 + 24);
      *(v8 + 24) = v18;
      v13 = *(v0 + 72);
      if (v18 >= *(v19 + 112))
      {
        v20 = *(*(v0 + 24) + *(v0 + 64));
        v21 = v20 + OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_mediaAnalyzerMutex;
        os_unfair_lock_lock((v20 + OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_mediaAnalyzerMutex));
        sub_1D2EA18B0((v21 + 8), v20);
        os_unfair_lock_unlock(v21);
        if (v13)
        {
          return;
        }
      }
    }

    else
    {
      *(v8 + 24) = 0;
      v13 = *(v0 + 72);
    }

    os_unfair_lock_unlock((v8 + 32));
    *(v0 + 72) = v13;
    v14 = swift_task_alloc();
    *(v0 + 80) = v14;
    *v14 = v0;
    v14[1] = sub_1D2EB329C;
    v12 = *(v0 + 32);
    v9 = v0 + 104;
    v10 = 0;
    v11 = 0;

    goto LABEL_24;
  }

  v15 = swift_task_alloc();
  *(v0 + 88) = v15;
  *v15 = v0;
  v15[1] = sub_1D2EB370C;

  sub_1D2EB2BB4(v1);
}

uint64_t sub_1D2EB370C()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D2EB3894, 0, 0);
  }

  else
  {
    v2[9] = 0;
    v3 = swift_task_alloc();
    v2[10] = v3;
    *v3 = v2;
    v3[1] = sub_1D2EB329C;
    v4 = v2[4];

    return MEMORY[0x1EEE6D9C8](v2 + 13, 0, 0, v4);
  }
}

uint64_t sub_1D2EB3894()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D2EB3930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1D2EE5078();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1D2EB3A30, 0, 0);
}

uint64_t sub_1D2EB3A30()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1D2EE5088();
  v5 = sub_1D2EB3E94(&qword_1EC7391C8, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1D2EE52C8();
  sub_1D2EB3E94(&qword_1EC7391D0, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1D2EE5098();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1D2EB3BC0;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1D2EB3BC0()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D2EB3D7C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1D2EB3D7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2EB3E0C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738D00, &qword_1D2EF2808) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1D2EB0158(v2, v3, v4);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D2EB3E94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D2EB3EDC()
{
  result = qword_1EC739288;
  if (!qword_1EC739288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC739280, &qword_1D2EF43E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739288);
  }

  return result;
}

uint64_t sub_1D2EB3F40(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738D00, &qword_1D2EF2808) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1D2EB0384(a1, v4);
}

void sub_1D2EB3FD8(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1D38AE9B0](a1, a2, v7);
      sub_1D2E9D860(0, &qword_1EC7392D8, 0x1E69D8C00);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1D2E9D860(0, &qword_1EC7392D8, 0x1E69D8C00);
    if (sub_1D2EE4F08() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1D2EE4F18();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_1D2EE4E38();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_1D2EE4E48();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

uint64_t sub_1D2EB41FC(char a1)
{
  v2 = type metadata accessor for AudioHistEvent(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v8[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2EE3E38();
  *v4 = 0xD000000000000037;
  *(v4 + 1) = 0x80000001D2EE7580;
  *(v4 + 2) = 0xD000000000000011;
  *(v4 + 3) = 0x80000001D2EE75C0;
  *(v4 + 4) = 0xD000000000000014;
  *(v4 + 5) = 0x80000001D2EE75E0;
  *(v4 + 6) = 0xD000000000000011;
  *(v4 + 7) = 0x80000001D2EE7600;
  *(v4 + 8) = 0xD000000000000013;
  *(v4 + 9) = 0x80000001D2EE7620;
  *(v4 + 10) = 0xD000000000000012;
  *(v4 + 11) = 0x80000001D2EE7640;
  *(v4 + 12) = 0x6F6365725F706974;
  *(v4 + 13) = 0xEF6465646E656D6DLL;
  *(v4 + 14) = 0x726573755F706974;
  *(v4 + 15) = 0xEF6E6F697463615FLL;
  strcpy(v4 + 128, "failure_reason");
  v4[143] = -18;
  *(v4 + 18) = 0;
  v4[152] = 1;
  *(v4 + 20) = 0;
  v4[168] = 1;
  *(v4 + 22) = 0;
  v4[184] = 1;
  *(v4 + 24) = 0;
  v4[200] = 1;
  *(v4 + 26) = 0;
  v4[216] = 1;
  *(v4 + 217) = 768;
  v4[219] = a1;
  v8[3] = v2;
  v8[4] = &off_1F4E95AF8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v8);
  sub_1D2EB5DFC(v4, boxed_opaque_existential_0, type metadata accessor for AudioHistEvent);
  sub_1D2EDFAC8();
  sub_1D2E8E940(v8);
  return sub_1D2EB5664(v4, type metadata accessor for AudioHistEvent);
}

uint64_t sub_1D2EB441C(uint64_t a1)
{
  v4 = *(sub_1D2EE3EB8() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D2E7DE28;

  return sub_1D2EB16B4(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_1D2EB4528(uint64_t a1)
{
  sub_1D2EE3EB8();
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
  v11[1] = sub_1D2E5BA34;

  return sub_1D2EB1E4C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D2EB466C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7391B0, &qword_1D2EF3FF0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + (v6 & 0xFFFFFFFFFFFFFFF8) + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D2E7DE28;

  return sub_1D2EB30E8(a1, v7, v8, v1 + v5, v9, v10);
}

uint64_t sub_1D2EB47FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D2E5BA34;

  return sub_1D2EAE1AC(a1, v4, v5, v6);
}

uint64_t sub_1D2EB48E8(uint64_t a1)
{
  v3 = *(sub_1D2EE3EB8() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1D2EA6C70(a1, v4, v5);
}

void sub_1D2EB4984(uint64_t a1)
{
  v3 = *(sub_1D2EE3EB8() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1D2EA9F68(a1, v5, v6, v1 + v4, v7);
}

uint64_t sub_1D2EB4A2C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_1D2EB4A80(uint64_t a1, char a2)
{
  v71 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739040, &qword_1D2EF2460);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v67 = &v60 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738CB0, &qword_1D2EF2618);
  v69 = *(v6 - 8);
  v7 = *(v69 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v60 - v9;
  v11 = sub_1D2EE3EB8();
  v72 = *(v11 - 8);
  v73 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v68 = &v60 - v15;
  v16 = v2;
  v17 = *(*(v2 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_answeringMachine) + OBJC_IVAR____TtC16CallIntelligence26AnsweringMachineController_lock);
  v74 = *(v2 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_answeringMachine);
  v75 = a2;
  v18 = *(*v17 + *MEMORY[0x1E69E6B68] + 16);
  v19 = (*(*v17 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v17 + v19));
  v20 = v70;
  sub_1D2EB5238(v17 + v18, &v76);
  if (v20)
  {
    v70 = v20;
    os_unfair_lock_unlock((v17 + v19));
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v21 = sub_1D2EE4618();
    __swift_project_value_buffer(v21, qword_1EDED2DB8);
    v22 = v72;
    v23 = v68;
    v24 = v73;
    (*(v72 + 16))(v68, v71, v73);
    v25 = sub_1D2EE45F8();
    v26 = sub_1D2EE4DB8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v76 = v28;
      *v27 = 136315138;
      sub_1D2EB3E94(&qword_1EC7384D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v29 = sub_1D2EE5258();
      v31 = v30;
      (*(v22 + 8))(v23, v24);
      v32 = sub_1D2E685B0(v29, v31, &v76);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_1D2E46000, v25, v26, "Error starting answering machine for call %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1D38AF660](v28, -1, -1);
      MEMORY[0x1D38AF660](v27, -1, -1);
    }

    else
    {

      (*(v22 + 8))(v23, v24);
    }

    swift_willThrow();
  }

  else
  {
    v65 = v7;
    v66 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v70 = v6;
    os_unfair_lock_unlock((v17 + v19));
    v33 = v76;
    v34 = *(v16 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_captionProvider);
    v35 = *(v34 + OBJC_IVAR____TtC16CallIntelligence15CaptionProvider_captionMutex);
    os_unfair_lock_lock(v35 + 17);
    sub_1D2E830B4(&v35[4], v33, v34);
    v68 = 0;
    v63 = v16;
    v64 = v33;
    os_unfair_lock_unlock(v35 + 17);
    v36 = v70;
    v37 = v10;
    v61 = *(v69 + 16);
    v62 = v69 + 16;
    v61(v10, v34 + OBJC_IVAR____TtC16CallIntelligence15CaptionProvider_eventStream, v70);
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v38 = sub_1D2EE4618();
    __swift_project_value_buffer(v38, qword_1EDED2DB8);
    v39 = v72;
    v40 = v14;
    v41 = v73;
    (*(v72 + 16))(v14, v71, v73);
    v42 = sub_1D2EE45F8();
    v43 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v76 = v45;
      *v44 = 136315138;
      sub_1D2EB3E94(&qword_1EC7384D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v46 = sub_1D2EE5258();
      v47 = v40;
      v49 = v48;
      (*(v39 + 8))(v47, v41);
      v50 = sub_1D2E685B0(v46, v49, &v76);

      *(v44 + 4) = v50;
      _os_log_impl(&dword_1D2E46000, v42, v43, "Successfully started WaitOnHoldSession for call %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x1D38AF660](v45, -1, -1);
      v51 = v44;
      v36 = v70;
      MEMORY[0x1D38AF660](v51, -1, -1);
    }

    else
    {

      (*(v39 + 8))(v40, v41);
    }

    v52 = v69;
    v54 = v66;
    v53 = v67;
    v55 = sub_1D2EE4CB8();
    (*(*(v55 - 8) + 56))(v53, 1, 1, v55);
    v61(v54, v37, v36);
    v56 = (*(v52 + 80) + 32) & ~*(v52 + 80);
    v57 = v37;
    v58 = (v65 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
    v59 = swift_allocObject();
    *(v59 + 16) = 0;
    *(v59 + 24) = 0;
    (*(v52 + 32))(v59 + v56, v54, v36);
    *(v59 + v58) = v63;

    sub_1D2ED7FB0(0, 0, v53, &unk_1D2EF4498, v59);

    sub_1D2EA1A0C(v64, 1);
    (*(v52 + 8))(v57, v36);
  }
}

uint64_t sub_1D2EB5258(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738CB0, &qword_1D2EF2618) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D2E7DE28;

  return sub_1D2EA8488(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1D2EB5384(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2EB53EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D2E7DE28;

  return sub_1D2EAC548();
}

uint64_t sub_1D2EB5498()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D2E7DE28;

  return sub_1D2EAC3E4();
}

uint64_t sub_1D2EB55A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D2E7DE28;

  return sub_1D2EAC814(a1, v4, v5, v7, v6);
}

uint64_t sub_1D2EB5664(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D2EB56E0(uint64_t a1)
{
  v2 = sub_1D2EE3EF8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v26 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738CA8, &qword_1D2EF2610) - 8;
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v26 - v10;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = 0;
    v14 = *(v9 + 80);
    v30 = *(v9 + 72);
    v31 = a1 + ((v14 + 32) & ~v14);
    v28 = v11;
    v29 = (v3 + 32);
    v27 = v3;
    v35 = v3 + 16;
    v36 = (v3 + 8);
    while (1)
    {
      v33 = v13;
      v15 = v32;
      sub_1D2E5D050(v31 + v30 * v12, v32, &qword_1EC738CA8, &qword_1D2EF2610);
      (*v29)(v37, v15, v2);
      if (qword_1EC737C58 != -1)
      {
        swift_once();
      }

      v34 = v12 + 1;
      v16 = qword_1EC746650;
      if (*(qword_1EC746650 + 16) && (sub_1D2EB3E94(&qword_1EC7392C0, MEMORY[0x1E6969610], MEMORY[0x1E6969620]), v17 = sub_1D2EE49E8(), v18 = -1 << *(v16 + 32), v19 = v17 & ~v18, ((*(v16 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0))
      {
        v20 = ~v18;
        v21 = *(v27 + 72);
        v22 = *(v27 + 16);
        while (1)
        {
          v22(v6, *(v16 + 48) + v21 * v19, v2);
          sub_1D2EB3E94(&qword_1EC7392C8, MEMORY[0x1E6969610], MEMORY[0x1E6969628]);
          v23 = sub_1D2EE4A08();
          v24 = *v36;
          (*v36)(v6, v2);
          if (v23)
          {
            break;
          }

          v19 = (v19 + 1) & v20;
          if (((*(v16 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        v24(v37, v2);
        v13 = 0;
        result = 0;
      }

      else
      {
LABEL_10:
        result = (*v36)(v37, v2);
        v13 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          __break(1u);
          return result;
        }

        result = v33 + 1;
      }

      v12 = v34;
      if (v34 == v28)
      {
        return result;
      }
    }
  }

  return 0;
}