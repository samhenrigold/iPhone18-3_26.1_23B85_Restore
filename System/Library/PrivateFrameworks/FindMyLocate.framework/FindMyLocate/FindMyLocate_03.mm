uint64_t sub_1B8000418(void *a1)
{
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDE78);
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
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000014, 0x80000001B80CC480, &v11);
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

void sub_1B80005D8(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v3 = sub_1B80C900C();
    __swift_project_value_buffer(v3, qword_1ED8DDE78);
    v4 = a1;
    v5 = sub_1B80C8FEC();
    v6 = sub_1B80C93FC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136446466;
      *(v7 + 4) = sub_1B7FB84FC(0xD000000000000014, 0x80000001B80CC480, &v18);
      *(v7 + 12) = 2082;
      v9 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
      v10 = sub_1B80C90EC();
      v12 = sub_1B7FB84FC(v10, v11, &v18);

      *(v7 + 14) = v12;
      _os_log_impl(&dword_1B7FB5000, v5, v6, "%{public}s error %{public}s!", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v8, -1, -1);
      MEMORY[0x1B8CB8970](v7, -1, -1);
    }

    v18 = a1;
    sub_1B80C8ACC();
  }

  else
  {
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v13 = sub_1B80C900C();
    __swift_project_value_buffer(v13, qword_1ED8DDE78);
    v14 = sub_1B80C8FEC();
    v15 = sub_1B80C941C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v17;
      *v16 = 136446210;
      *(v16 + 4) = sub_1B7FB84FC(0xD000000000000014, 0x80000001B80CC480, &v18);
      _os_log_impl(&dword_1B7FB5000, v14, v15, "%{public}s succeeded!", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1B8CB8970](v17, -1, -1);
      MEMORY[0x1B8CB8970](v16, -1, -1);
    }

    sub_1B80C8AEC();
  }
}

uint64_t sub_1B80008D0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B8000918, v1, 0);
}

uint64_t sub_1B8000918()
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
  v4[1] = sub_1B8000A0C;
  v5 = v0[2];

  return MEMORY[0x1EEE04418](v5, 0x6E656972466C6C61, 0xEC00000029287364, sub_1B8011CF4, v3, &type metadata for FriendContainer);
}

uint64_t sub_1B8000A0C()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {
    v3 = v2[3];

    return MEMORY[0x1EEE6DFA0](sub_1B7FFF194, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

double sub_1B8000B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

uint64_t sub_1B8000C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 80) = a4;
  *(v5 + 88) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B8000C84, 0, 0);
}

uint64_t sub_1B8000C84()
{

  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  v2 = _s20FriendshipConnectionCMa(0);
  v3 = sub_1B8011BA4(&qword_1ED8DD4B8, _s20FriendshipConnectionCMa, &unk_1B80D25B0);
  *v1 = v0;
  v1[1] = sub_1B8000D90;
  v4 = *(v0 + 88);

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B8011C68, v4, v2, v3);
}

uint64_t sub_1B8000D90()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1B8000FAC;
  }

  else
  {

    v2 = sub_1B8000EAC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B8000EAC()
{
  v1 = v0[11];
  v2 = v0[8];
  v0[6] = sub_1B8011254;
  v0[7] = v1;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B800132C;
  v0[5] = &block_descriptor_253;
  v3 = _Block_copy(v0 + 2);

  [v2 allFriendsWithCompletion_];
  _Block_release(v3);
  swift_unknownObjectRelease();
  v4 = v0[1];

  return v4();
}

uint64_t sub_1B8000FAC()
{
  v14 = v0;

  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDE78);
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
    *(v6 + 4) = sub_1B7FB84FC(0x6E656972466C6C61, 0xEC00000029287364, &v13);
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

  v10 = v0[13];
  v0[9] = v10;
  sub_1B80C8ACC();

  v11 = v0[1];

  return v11();
}

void sub_1B80011B8(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC12FindMyLocate12ResultObject_internalValue);
  if (*(a1 + OBJC_IVAR____TtC12FindMyLocate12ResultObject_internalValue + 16))
  {
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
    swift_willThrowTypedImpl();
    v3 = 0uLL;
    v4 = 1;
    v6 = 0uLL;
  }

  else
  {
    v5 = *(a1 + OBJC_IVAR____TtC12FindMyLocate12ResultObject_internalValue + 8);
    sub_1B80C8B7C();
    swift_allocObject();
    sub_1B7FC62D8(v1, v5);
    sub_1B80C8B6C();
    sub_1B80112D4();
    sub_1B80C8B5C();

    sub_1B8011328(v1, v5, 0);
    v4 = 0;
    v1 = v7;
    v3 = v8;
    v6 = v10;
  }

  v9 = v3;
  v11 = v6;
  v12 = v4;
  sub_1B80C8ABC();
  sub_1B801125C(v1, v9, *(&v9 + 1), v11, *(&v11 + 1), v12);
}

void sub_1B800132C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

double sub_1B8001394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;
  v11 = sub_1B80C92CC();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a2;
  v12[5] = a1;
  v12[6] = a3;
  v12[7] = a4;

  sub_1B80A1D3C(0, 0, v10, &unk_1B80D2A78, v12);

  return result;
}

uint64_t sub_1B80014C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B80014EC, 0, 0);
}

uint64_t sub_1B80014EC()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = swift_allocObject();
  v0[15] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[16] = v4;
  v5 = _s20FriendshipConnectionCMa(0);
  v6 = sub_1B8011BA4(&qword_1ED8DD4B8, _s20FriendshipConnectionCMa, &unk_1B80D25B0);
  *v4 = v0;
  v4[1] = sub_1B8001624;

  return MEMORY[0x1EEE04428](v0 + 8, sub_1B8010EA8, v3, v5, v6);
}

uint64_t sub_1B8001624()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1B8001AB4;
  }

  else
  {

    v2 = sub_1B8001740;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B8001740()
{
  v24 = v0;
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[8];
  sub_1B80C8CEC();
  swift_allocObject();
  sub_1B80C8CDC();
  v0[10] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66040, &qword_1B80D2A80);
  sub_1B8010EB0();
  v4 = sub_1B80C8CCC();
  if (v1)
  {

    swift_unknownObjectRelease();
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v6 = sub_1B80C900C();
    __swift_project_value_buffer(v6, qword_1ED8DDE78);
    v7 = v1;
    v8 = sub_1B80C8FEC();
    v9 = sub_1B80C93FC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v23 = v12;
      *v10 = 136446466;
      *(v10 + 4) = sub_1B7FB84FC(0x2873646E65697266, 0xEE00293A68746977, &v23);
      *(v10 + 12) = 2114;
      v13 = sub_1B80C8CFC();
      *(v10 + 14) = v13;
      *v11 = v13;
      _os_log_impl(&dword_1B7FB5000, v8, v9, "Failed to create proxy in %{public}s: %{public}@", v10, 0x16u);
      sub_1B7FB86D4(v11, &qword_1EBA65EE8, &qword_1B80D2478);
      MEMORY[0x1B8CB8970](v11, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x1B8CB8970](v12, -1, -1);
      MEMORY[0x1B8CB8970](v10, -1, -1);
    }

    v0[9] = v1;
    sub_1B80C8ACC();
  }

  else
  {
    v14 = v0[14];
    v15 = v0[12];
    v16 = v4;
    v17 = v5;

    v18 = sub_1B80C8D1C();
    v19 = swift_allocObject();
    *(v19 + 16) = v15;
    *(v19 + 24) = v14;
    v0[6] = sub_1B8010F88;
    v0[7] = v19;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1B7FC5CCC;
    v0[5] = &block_descriptor_224;
    v20 = _Block_copy(v0 + 2);

    [v3 friendsWithTypes:v18 completion:v20];
    _Block_release(v20);

    sub_1B7FC3CCC(v16, v17);
    swift_unknownObjectRelease();
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_1B8001AB4()
{
  v13 = v0;

  v1 = v0[17];
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDE78);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0x2873646E65697266, 0xEE00293A68746977, &v12);
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

  v0[9] = v1;
  sub_1B80C8ACC();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1B8001CBC(void *a1)
{
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDE78);
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
    *(v6 + 4) = sub_1B7FB84FC(0x2873646E65697266, 0xEE00293A68746977, &v11);
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

void sub_1B8001E84(uint64_t a1, unint64_t a2, void *a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = a3;
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v5 = sub_1B80C900C();
    __swift_project_value_buffer(v5, qword_1ED8DDE78);
    v6 = v3;
    v7 = sub_1B80C8FEC();
    v8 = sub_1B80C93FC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v35 = v10;
      *v9 = 136446466;
      *(v9 + 4) = sub_1B7FB84FC(0x2873646E65697266, 0xEE00293A68746977, &v35);
      *(v9 + 12) = 2082;
      v11 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
      v12 = sub_1B80C90EC();
      v14 = sub_1B7FB84FC(v12, v13, &v35);

      *(v9 + 14) = v14;
      _os_log_impl(&dword_1B7FB5000, v7, v8, "%{public}s error %{public}s!", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v10, -1, -1);
      MEMORY[0x1B8CB8970](v9, -1, -1);
    }

    v35 = v3;
LABEL_13:
    sub_1B80C8ACC();

    return;
  }

  if (a2 >> 60 == 15)
  {
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v15 = sub_1B80C900C();
    __swift_project_value_buffer(v15, qword_1ED8DDE78);
    v16 = sub_1B80C8FEC();
    v17 = sub_1B80C93FC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v35 = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_1B7FB84FC(0x2873646E65697266, 0xEE00293A68746977, &v35);
      _os_log_impl(&dword_1B7FB5000, v16, v17, "Received nil response for %{public}s!", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x1B8CB8970](v19, -1, -1);
      MEMORY[0x1B8CB8970](v18, -1, -1);
    }

    sub_1B8010040();
    v3 = swift_allocError();
    *v20 = 1;
    v35 = v3;
    goto LABEL_13;
  }

  sub_1B80C8CBC();
  swift_allocObject();
  sub_1B7FC62D8(a1, a2);
  sub_1B80C8CAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F80, &qword_1B80D2708);
  sub_1B8010F90();
  v23 = a1;
  v24 = a2;
  sub_1B80C8C9C();

  v25 = v35;
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v26 = sub_1B80C900C();
  __swift_project_value_buffer(v26, qword_1ED8DDE78);

  v27 = sub_1B80C8FEC();
  v28 = sub_1B80C941C();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v35 = v30;
    *v29 = 136446466;
    *(v29 + 4) = sub_1B7FB84FC(0x2873646E65697266, 0xEE00293A68746977, &v35);
    *(v29 + 12) = 2080;
    v31 = type metadata accessor for Friend(0);
    v32 = MEMORY[0x1B8CB7B30](v25, v31);
    v34 = sub_1B7FB84FC(v32, v33, &v35);

    *(v29 + 14) = v34;
    _os_log_impl(&dword_1B7FB5000, v27, v28, "%{public}s succeeded: %s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v30, -1, -1);
    MEMORY[0x1B8CB8970](v29, -1, -1);
  }

  v35 = v25;
  sub_1B80C8ADC();
  sub_1B7FC72F8(v23, v24);
}

uint64_t sub_1B800258C(uint64_t a1, uint64_t a2)
{
  *(v3 + 232) = a1;
  *(v3 + 240) = v2;
  *(v3 + 248) = *v2;
  v4 = *(a2 + 176);
  *(v3 + 176) = *(a2 + 160);
  *(v3 + 192) = v4;
  *(v3 + 208) = *(a2 + 192);
  *(v3 + 224) = *(a2 + 208);
  v5 = *(a2 + 112);
  *(v3 + 112) = *(a2 + 96);
  *(v3 + 128) = v5;
  v6 = *(a2 + 144);
  *(v3 + 144) = *(a2 + 128);
  *(v3 + 160) = v6;
  v7 = *(a2 + 48);
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = v7;
  v8 = *(a2 + 80);
  *(v3 + 80) = *(a2 + 64);
  *(v3 + 96) = v8;
  v9 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v9;
  return MEMORY[0x1EEE6DFA0](sub_1B8002614, v2, 0);
}

uint64_t sub_1B8002614()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = swift_task_alloc();
  v0[32] = v3;
  v3[2] = v2;
  v3[3] = v0 + 2;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[33] = v4;
  *v4 = v0;
  v4[1] = sub_1B8002714;
  v5 = v0[29];

  return MEMORY[0x1EEE04418](v5, 0xD000000000000013, 0x80000001B80CC670, sub_1B8011C8C, v3, &type metadata for FriendshipState);
}

uint64_t sub_1B8002714()
{
  v2 = *v1;
  v2[34] = v0;

  if (v0)
  {
    v3 = v2[30];

    return MEMORY[0x1EEE6DFA0](sub_1B8002850, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1B8002850()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_1B80028B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21[-v9 - 8];
  v11 = sub_1B80C92CC();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = a2;
  *(v12 + 40) = a1;
  v13 = *(a3 + 176);
  *(v12 + 208) = *(a3 + 160);
  *(v12 + 224) = v13;
  *(v12 + 240) = *(a3 + 192);
  *(v12 + 256) = *(a3 + 208);
  v14 = *(a3 + 112);
  *(v12 + 144) = *(a3 + 96);
  *(v12 + 160) = v14;
  v15 = *(a3 + 144);
  *(v12 + 176) = *(a3 + 128);
  *(v12 + 192) = v15;
  v16 = *(a3 + 48);
  *(v12 + 80) = *(a3 + 32);
  *(v12 + 96) = v16;
  v17 = *(a3 + 80);
  *(v12 + 112) = *(a3 + 64);
  *(v12 + 128) = v17;
  v18 = *(a3 + 16);
  *(v12 + 48) = *a3;
  *(v12 + 64) = v18;
  *(v12 + 264) = a4;

  sub_1B8010CC0(a3, v21);
  sub_1B80A1D3C(0, 0, v10, &unk_1B80D2A68, v12);

  return result;
}

uint64_t sub_1B8002A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[39] = a6;
  v7[40] = a7;
  v7[37] = a4;
  v7[38] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B8002A5C, 0, 0);
}

uint64_t sub_1B8002A5C()
{
  v1 = v0[40];
  v2 = v0[38];
  v3 = swift_allocObject();
  v0[41] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[42] = v4;
  v5 = _s20FriendshipConnectionCMa(0);
  v6 = sub_1B8011BA4(&qword_1ED8DD4B8, _s20FriendshipConnectionCMa, &unk_1B80D25B0);
  *v4 = v0;
  v4[1] = sub_1B8002B94;

  return MEMORY[0x1EEE04428](v0 + 35, sub_1B8010D1C, v3, v5, v6);
}

uint64_t sub_1B8002B94()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_1B8003034;
  }

  else
  {

    v2 = sub_1B8002CB0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B8002CB0()
{
  v34 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 312);
  v3 = *(v0 + 280);
  sub_1B80C8CEC();
  swift_allocObject();
  sub_1B80C8CDC();
  v4 = *(v2 + 16);
  *(v0 + 16) = *v2;
  *(v0 + 32) = v4;
  v5 = *(v2 + 80);
  v7 = *(v2 + 32);
  v6 = *(v2 + 48);
  *(v0 + 80) = *(v2 + 64);
  *(v0 + 96) = v5;
  *(v0 + 48) = v7;
  *(v0 + 64) = v6;
  v8 = *(v2 + 144);
  v10 = *(v2 + 96);
  v9 = *(v2 + 112);
  *(v0 + 144) = *(v2 + 128);
  *(v0 + 160) = v8;
  *(v0 + 112) = v10;
  *(v0 + 128) = v9;
  v12 = *(v2 + 176);
  v11 = *(v2 + 192);
  v13 = *(v2 + 160);
  *(v0 + 224) = *(v2 + 208);
  *(v0 + 192) = v12;
  *(v0 + 208) = v11;
  *(v0 + 176) = v13;
  sub_1B8010D24();
  v14 = sub_1B80C8CCC();
  if (v1)
  {

    swift_unknownObjectRelease();
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v16 = sub_1B80C900C();
    __swift_project_value_buffer(v16, qword_1ED8DDE78);
    v17 = v1;
    v18 = sub_1B80C8FEC();
    v19 = sub_1B80C93FC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v33 = v22;
      *v20 = 136446466;
      *(v20 + 4) = sub_1B7FB84FC(0xD000000000000013, 0x80000001B80CC670, &v33);
      *(v20 + 12) = 2114;
      v23 = sub_1B80C8CFC();
      *(v20 + 14) = v23;
      *v21 = v23;
      _os_log_impl(&dword_1B7FB5000, v18, v19, "Failed to create proxy in %{public}s: %{public}@", v20, 0x16u);
      sub_1B7FB86D4(v21, &qword_1EBA65EE8, &qword_1B80D2478);
      MEMORY[0x1B8CB8970](v21, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x1B8CB8970](v22, -1, -1);
      MEMORY[0x1B8CB8970](v20, -1, -1);
    }

    *(v0 + 288) = v1;
    sub_1B80C8ACC();
  }

  else
  {
    v24 = *(v0 + 320);
    v25 = *(v0 + 304);
    v26 = v14;
    v27 = v15;

    v28 = sub_1B80C8D1C();
    v29 = swift_allocObject();
    *(v29 + 16) = v25;
    *(v29 + 24) = v24;
    *(v0 + 264) = sub_1B8010D78;
    *(v0 + 272) = v29;
    *(v0 + 232) = MEMORY[0x1E69E9820];
    *(v0 + 240) = 1107296256;
    *(v0 + 248) = sub_1B7FC5CCC;
    *(v0 + 256) = &block_descriptor_208;
    v30 = _Block_copy((v0 + 232));

    [v3 friendshipStateWithRequest:v28 completion:v30];
    _Block_release(v30);

    sub_1B7FC3CCC(v26, v27);
    swift_unknownObjectRelease();
  }

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1B8003034()
{
  v13 = v0;

  v1 = v0[43];
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDE78);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000013, 0x80000001B80CC670, &v12);
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

  v0[36] = v1;
  sub_1B80C8ACC();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1B8003234(void *a1)
{
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDE78);
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
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000013, 0x80000001B80CC670, &v11);
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

void sub_1B80033F4(uint64_t a1, unint64_t a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = a3;
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v5 = sub_1B80C900C();
    __swift_project_value_buffer(v5, qword_1ED8DDE78);
    v6 = v3;
    v7 = sub_1B80C8FEC();
    v8 = sub_1B80C93FC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v35 = v10;
      *v9 = 136446466;
      *(v9 + 4) = sub_1B7FB84FC(0xD000000000000013, 0x80000001B80CC670, &v35);
      *(v9 + 12) = 2082;
      v11 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
      v12 = sub_1B80C90EC();
      v14 = sub_1B7FB84FC(v12, v13, &v35);

      *(v9 + 14) = v14;
      _os_log_impl(&dword_1B7FB5000, v7, v8, "%{public}s error %{public}s!", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v10, -1, -1);
      MEMORY[0x1B8CB8970](v9, -1, -1);
    }

    v35 = v3;
LABEL_13:
    sub_1B80C8ACC();

    return;
  }

  if (a2 >> 60 == 15)
  {
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v15 = sub_1B80C900C();
    __swift_project_value_buffer(v15, qword_1ED8DDE78);
    v16 = sub_1B80C8FEC();
    v17 = sub_1B80C93FC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v35 = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_1B7FB84FC(0xD000000000000013, 0x80000001B80CC670, &v35);
      _os_log_impl(&dword_1B7FB5000, v16, v17, "Received nil response for %{public}s!", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x1B8CB8970](v19, -1, -1);
      MEMORY[0x1B8CB8970](v18, -1, -1);
    }

    sub_1B8010040();
    v3 = swift_allocError();
    *v20 = 1;
    v35 = v3;
    goto LABEL_13;
  }

  sub_1B80C8CBC();
  swift_allocObject();
  sub_1B7FC62D8(a1, a2);
  sub_1B80C8CAC();
  sub_1B8010D80();
  v23 = a1;
  v34 = a2;
  sub_1B80C8C9C();

  v24 = v35;
  v25 = BYTE1(v35);
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v26 = sub_1B80C900C();
  __swift_project_value_buffer(v26, qword_1ED8DDE78);
  v27 = sub_1B80C8FEC();
  v28 = sub_1B80C941C();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v35 = v30;
    *v29 = 136446466;
    *(v29 + 4) = sub_1B7FB84FC(0xD000000000000013, 0x80000001B80CC670, &v35);
    *(v29 + 12) = 2080;
    v31 = sub_1B80C90EC();
    v33 = sub_1B7FB84FC(v31, v32, &v35);

    *(v29 + 14) = v33;
    _os_log_impl(&dword_1B7FB5000, v27, v28, "%{public}s succeeded: %s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v30, -1, -1);
    MEMORY[0x1B8CB8970](v29, -1, -1);
  }

  LOBYTE(v35) = v24;
  BYTE1(v35) = v25;
  sub_1B80C8ADC();
  sub_1B7FC72F8(v23, v34);
}

double sub_1B8003ABC(uint64_t a1, uint64_t a2, _OWORD *a3, __int128 *a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v31[-v11];
  v13 = sub_1B80C92CC();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v15 = a3[9];
  *(v14 + 176) = a3[8];
  *(v14 + 192) = v15;
  v16 = a3[5];
  *(v14 + 112) = a3[4];
  *(v14 + 128) = v16;
  v17 = a3[7];
  *(v14 + 144) = a3[6];
  *(v14 + 160) = v17;
  v18 = a3[1];
  *(v14 + 48) = *a3;
  *(v14 + 64) = v18;
  v19 = a3[3];
  *(v14 + 80) = a3[2];
  *(v14 + 96) = v19;
  v20 = a4[8];
  v21 = a4[9];
  v22 = a4[6];
  *(v14 + 336) = a4[7];
  *(v14 + 352) = v20;
  v23 = a4[10];
  *(v14 + 368) = v21;
  *(v14 + 384) = v23;
  v24 = a4[4];
  v25 = a4[5];
  v26 = a4[2];
  *(v14 + 272) = a4[3];
  *(v14 + 288) = v24;
  v27 = a3[10];
  *(v14 + 304) = v25;
  *(v14 + 320) = v22;
  v28 = *a4;
  v29 = a4[1];
  *(v14 + 208) = v27;
  *(v14 + 224) = v28;
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = a2;
  *(v14 + 40) = a1;
  *(v14 + 240) = v29;
  *(v14 + 256) = v26;
  *(v14 + 400) = a5;

  sub_1B7FC8DA4(a3, v31);
  sub_1B7FC8DA4(a4, v31);
  sub_1B80A1D3C(0, 0, v12, &unk_1B80D2A58, v14);

  return result;
}

uint64_t sub_1B8003C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[57] = a7;
  v8[58] = a8;
  v8[55] = a5;
  v8[56] = a6;
  v8[54] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B8003C94, 0, 0);
}

uint64_t sub_1B8003C94()
{
  v1 = v0[58];
  v2 = v0[55];
  v3 = swift_allocObject();
  v0[59] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[60] = v4;
  v5 = _s20FriendshipConnectionCMa(0);
  v6 = sub_1B8011BA4(&qword_1ED8DD4B8, _s20FriendshipConnectionCMa, &unk_1B80D25B0);
  *v4 = v0;
  v4[1] = sub_1B8003DCC;

  return MEMORY[0x1EEE04428](v0 + 52, sub_1B8010BD0, v3, v5, v6);
}

uint64_t sub_1B8003DCC()
{
  *(*v1 + 488) = v0;

  if (v0)
  {
    v2 = sub_1B8004324;
  }

  else
  {

    v2 = sub_1B8003EE8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B8003EE8()
{
  v47 = v0;
  v1 = *(v0 + 488);
  v2 = *(v0 + 448);
  v3 = *(v0 + 416);
  sub_1B80C8CEC();
  swift_allocObject();
  sub_1B80C8CDC();
  v5 = v2[1];
  v4 = v2[2];
  *(v0 + 16) = *v2;
  *(v0 + 32) = v5;
  *(v0 + 48) = v4;
  v6 = v2[6];
  v8 = v2[3];
  v7 = v2[4];
  *(v0 + 96) = v2[5];
  *(v0 + 112) = v6;
  *(v0 + 64) = v8;
  *(v0 + 80) = v7;
  v9 = v2[10];
  v11 = v2[7];
  v10 = v2[8];
  *(v0 + 160) = v2[9];
  *(v0 + 176) = v9;
  *(v0 + 128) = v11;
  *(v0 + 144) = v10;
  sub_1B7FDC224();
  v12 = sub_1B80C8CCC();
  if (v1)
  {

    swift_unknownObjectRelease();
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v26 = sub_1B80C900C();
    __swift_project_value_buffer(v26, qword_1ED8DDE78);
    v27 = v1;
    v28 = sub_1B80C8FEC();
    v29 = sub_1B80C93FC();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v46 = v32;
      *v30 = 136446466;
      *(v30 + 4) = sub_1B7FB84FC(0xD000000000000020, 0x80000001B80CC640, &v46);
      *(v30 + 12) = 2114;
      v33 = sub_1B80C8CFC();
      *(v30 + 14) = v33;
      *v31 = v33;
      _os_log_impl(&dword_1B7FB5000, v28, v29, "Failed to create proxy in %{public}s: %{public}@", v30, 0x16u);
      sub_1B7FB86D4(v31, &qword_1EBA65EE8, &qword_1B80D2478);
      MEMORY[0x1B8CB8970](v31, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x1B8CB8970](v32, -1, -1);
      MEMORY[0x1B8CB8970](v30, -1, -1);
    }

    *(v0 + 424) = v1;
    sub_1B80C8ACC();
  }

  else
  {
    v14 = v12;
    v15 = v13;
    v16 = *(v0 + 456);

    swift_allocObject();
    sub_1B80C8CDC();
    v18 = v16[1];
    v17 = v16[2];
    *(v0 + 192) = *v16;
    *(v0 + 208) = v18;
    *(v0 + 224) = v17;
    v19 = v16[6];
    v21 = v16[3];
    v20 = v16[4];
    *(v0 + 272) = v16[5];
    *(v0 + 288) = v19;
    *(v0 + 240) = v21;
    *(v0 + 256) = v20;
    v22 = v16[10];
    v24 = v16[7];
    v23 = v16[8];
    *(v0 + 336) = v16[9];
    *(v0 + 352) = v22;
    *(v0 + 304) = v24;
    *(v0 + 320) = v23;
    v25 = sub_1B80C8CCC();
    v36 = *(v0 + 464);
    v37 = *(v0 + 440);
    v44 = v25;
    v39 = v38;

    v45 = v14;
    v40 = sub_1B80C8D1C();
    v41 = sub_1B80C8D1C();
    v42 = swift_allocObject();
    *(v42 + 16) = v37;
    *(v42 + 24) = v36;
    *(v0 + 400) = sub_1B8010BD8;
    *(v0 + 408) = v42;
    *(v0 + 368) = MEMORY[0x1E69E9820];
    *(v0 + 376) = 1107296256;
    *(v0 + 384) = sub_1B8004E28;
    *(v0 + 392) = &block_descriptor_192;
    v43 = _Block_copy((v0 + 368));

    [v3 offerExpirationForHandle:v40 fromHandle:v41 completion:v43];
    _Block_release(v43);

    sub_1B7FC3CCC(v44, v39);
    sub_1B7FC3CCC(v45, v15);
    swift_unknownObjectRelease();
  }

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1B8004324()
{
  v13 = v0;

  v1 = v0[61];
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDE78);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000020, 0x80000001B80CC640, &v12);
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

  v0[53] = v1;
  sub_1B80C8ACC();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1B8004524(void *a1)
{
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDE78);
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
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000020, 0x80000001B80CC640, &v11);
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

void sub_1B80046E4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v52[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v52[-v10];
  v12 = sub_1B80C8E2C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v52[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v52[-v17];
  if (a2)
  {
    v19 = a2;
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v20 = sub_1B80C900C();
    __swift_project_value_buffer(v20, qword_1ED8DDE78);
    v21 = a2;
    v22 = sub_1B80C8FEC();
    v23 = sub_1B80C93FC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v59 = v25;
      *v24 = 136446466;
      *(v24 + 4) = sub_1B7FB84FC(0xD000000000000020, 0x80000001B80CC640, &v59);
      *(v24 + 12) = 2082;
      v58 = a2;
      v26 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
      v27 = sub_1B80C90EC();
      v29 = sub_1B7FB84FC(v27, v28, &v59);

      *(v24 + 14) = v29;
      _os_log_impl(&dword_1B7FB5000, v22, v23, "%{public}s error %{public}s!", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v25, -1, -1);
      MEMORY[0x1B8CB8970](v24, -1, -1);
    }

    v59 = a2;
    sub_1B80C8ACC();
    v30 = a2;
LABEL_13:

    return;
  }

  sub_1B7FD6818(a1, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1B7FB86D4(v11, &unk_1EBA65FD0, &unk_1B80D1920);
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v31 = sub_1B80C900C();
    __swift_project_value_buffer(v31, qword_1ED8DDE78);
    v32 = sub_1B80C8FEC();
    v33 = sub_1B80C93FC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v59 = v35;
      *v34 = 136446210;
      *(v34 + 4) = sub_1B7FB84FC(0xD000000000000020, 0x80000001B80CC640, &v59);
      _os_log_impl(&dword_1B7FB5000, v32, v33, "Received nil response for %{public}s!", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x1B8CB8970](v35, -1, -1);
      MEMORY[0x1B8CB8970](v34, -1, -1);
    }

    sub_1B8010040();
    v36 = swift_allocError();
    *v37 = 1;
    v59 = v36;
    sub_1B80C8ACC();
    v30 = v36;
    goto LABEL_13;
  }

  v57 = a3;
  (*(v13 + 32))(v18, v11, v12);
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v38 = sub_1B80C900C();
  __swift_project_value_buffer(v38, qword_1ED8DDE78);
  v56 = *(v13 + 16);
  v56(v16, v18, v12);
  v39 = sub_1B80C8FEC();
  v40 = sub_1B80C941C();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v59 = v55;
    *v41 = 136446466;
    *(v41 + 4) = sub_1B7FB84FC(0xD000000000000020, 0x80000001B80CC640, &v59);
    *(v41 + 12) = 2080;
    sub_1B8011BA4(&qword_1EBA66038, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v54 = v39;
    v42 = sub_1B80C97FC();
    v44 = v43;
    v45 = *(v13 + 8);
    v53 = v40;
    v46 = v16;
    v47 = v45;
    v45(v46, v12);
    v48 = sub_1B7FB84FC(v42, v44, &v59);

    *(v41 + 14) = v48;
    v49 = v54;
    _os_log_impl(&dword_1B7FB5000, v54, v53, "%{public}s succeeded: %s", v41, 0x16u);
    v50 = v55;
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v50, -1, -1);
    MEMORY[0x1B8CB8970](v41, -1, -1);
  }

  else
  {

    v51 = v16;
    v47 = *(v13 + 8);
    v47(v51, v12);
  }

  v56(v9, v18, v12);
  (*(v13 + 56))(v9, 0, 1, v12);
  sub_1B80C8ADC();
  sub_1B7FB86D4(v9, &unk_1EBA65FD0, &unk_1B80D1920);
  v47(v18, v12);
}

uint64_t sub_1B8004E28(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_1B80C8DEC();
    v10 = sub_1B80C8E2C();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_1B80C8E2C();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_1B7FB86D4(v8, &unk_1EBA65FD0, &unk_1B80D1920);
}

uint64_t sub_1B8004F7C(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 208) = a4;
  *(v5 + 216) = v4;
  *(v5 + 192) = a1;
  *(v5 + 200) = a3;
  *(v5 + 224) = *v4;
  v6 = a2[9];
  *(v5 + 144) = a2[8];
  *(v5 + 160) = v6;
  *(v5 + 176) = a2[10];
  v7 = a2[5];
  *(v5 + 80) = a2[4];
  *(v5 + 96) = v7;
  v8 = a2[7];
  *(v5 + 112) = a2[6];
  *(v5 + 128) = v8;
  v9 = a2[1];
  *(v5 + 16) = *a2;
  *(v5 + 32) = v9;
  v10 = a2[3];
  *(v5 + 48) = a2[2];
  *(v5 + 64) = v10;
  return MEMORY[0x1EEE6DFA0](sub_1B8004FF8, v4, 0);
}

uint64_t sub_1B8004FF8()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v8 = *(v0 + 200);
  v3 = swift_task_alloc();
  *(v0 + 232) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v0 + 16;
  *(v3 + 32) = v8;
  *(v3 + 48) = v1;
  v4 = swift_task_alloc();
  *(v0 + 240) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  *v4 = v0;
  v4[1] = sub_1B8005118;
  v6 = *(v0 + 192);

  return MEMORY[0x1EEE04418](v6, 0xD00000000000001DLL, 0x80000001B80CC600, sub_1B8011CE4, v3, v5);
}

uint64_t sub_1B8005118()
{
  v2 = *v1;
  v2[31] = v0;

  if (v0)
  {
    v3 = v2[27];

    return MEMORY[0x1EEE6DFA0](sub_1B8005254, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1B8005254()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_1B80052B8(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v23[-v13];
  v15 = sub_1B80C92CC();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = a2;
  *(v16 + 40) = a1;
  v17 = a3[9];
  *(v16 + 176) = a3[8];
  *(v16 + 192) = v17;
  *(v16 + 208) = a3[10];
  v18 = a3[5];
  *(v16 + 112) = a3[4];
  *(v16 + 128) = v18;
  v19 = a3[7];
  *(v16 + 144) = a3[6];
  *(v16 + 160) = v19;
  v20 = a3[1];
  *(v16 + 48) = *a3;
  *(v16 + 64) = v20;
  v21 = a3[3];
  *(v16 + 80) = a3[2];
  *(v16 + 96) = v21;
  *(v16 + 224) = a4;
  *(v16 + 232) = a5;
  *(v16 + 240) = a6;

  sub_1B7FC8DA4(a3, v23);

  sub_1B80A1D3C(0, 0, v14, &unk_1B80D2A48, v16);

  return result;
}

uint64_t sub_1B8005448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[36] = a8;
  v8[37] = v10;
  v8[34] = a6;
  v8[35] = a7;
  v8[32] = a4;
  v8[33] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B8005478, 0, 0);
}

uint64_t sub_1B8005478()
{
  v1 = v0[37];
  v2 = v0[33];
  v3 = swift_allocObject();
  v0[38] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[39] = v4;
  v5 = _s20FriendshipConnectionCMa(0);
  v6 = sub_1B8011BA4(&qword_1ED8DD4B8, _s20FriendshipConnectionCMa, &unk_1B80D25B0);
  *v4 = v0;
  v4[1] = sub_1B80055B0;

  return MEMORY[0x1EEE04428](v0 + 30, sub_1B8010ADC, v3, v5, v6);
}

uint64_t sub_1B80055B0()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_1B8005A6C;
  }

  else
  {

    v2 = sub_1B80056CC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B80056CC()
{
  v34 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 272);
  v3 = *(v0 + 240);
  sub_1B80C8CEC();
  swift_allocObject();
  sub_1B80C8CDC();
  v5 = v2[1];
  v4 = v2[2];
  *(v0 + 16) = *v2;
  *(v0 + 32) = v5;
  *(v0 + 48) = v4;
  v6 = v2[6];
  v8 = v2[3];
  v7 = v2[4];
  *(v0 + 96) = v2[5];
  *(v0 + 112) = v6;
  *(v0 + 64) = v8;
  *(v0 + 80) = v7;
  v9 = v2[10];
  v11 = v2[7];
  v10 = v2[8];
  *(v0 + 160) = v2[9];
  *(v0 + 176) = v9;
  *(v0 + 128) = v11;
  *(v0 + 144) = v10;
  sub_1B7FDC224();
  v12 = sub_1B80C8CCC();
  if (v1)
  {

    swift_unknownObjectRelease();
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v14 = sub_1B80C900C();
    __swift_project_value_buffer(v14, qword_1ED8DDE78);
    v15 = v1;
    v16 = sub_1B80C8FEC();
    v17 = sub_1B80C93FC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v33 = v20;
      *v18 = 136446466;
      *(v18 + 4) = sub_1B7FB84FC(0xD00000000000001DLL, 0x80000001B80CC600, &v33);
      *(v18 + 12) = 2114;
      v21 = sub_1B80C8CFC();
      *(v18 + 14) = v21;
      *v19 = v21;
      _os_log_impl(&dword_1B7FB5000, v16, v17, "Failed to create proxy in %{public}s: %{public}@", v18, 0x16u);
      sub_1B7FB86D4(v19, &qword_1EBA65EE8, &qword_1B80D2478);
      MEMORY[0x1B8CB8970](v19, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x1B8CB8970](v20, -1, -1);
      MEMORY[0x1B8CB8970](v18, -1, -1);
    }

    *(v0 + 248) = v1;
    sub_1B80C8ACC();
  }

  else
  {
    v22 = v12;
    v23 = v13;
    v24 = *(v0 + 288);

    v25 = sub_1B80C8D1C();
    if (v24)
    {
      v26 = sub_1B80C90AC();
    }

    else
    {
      v26 = 0;
    }

    v27 = *(v0 + 296);
    v28 = *(v0 + 264);
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    *(v29 + 24) = v27;
    *(v0 + 224) = sub_1B8010AE4;
    *(v0 + 232) = v29;
    *(v0 + 192) = MEMORY[0x1E69E9820];
    *(v0 + 200) = 1107296256;
    *(v0 + 208) = sub_1B8004E28;
    *(v0 + 216) = &block_descriptor_176;
    v30 = _Block_copy((v0 + 192));

    [v3 offerExpirationForHandle:v25 groupId:v26 completion:v30];
    _Block_release(v30);

    sub_1B7FC3CCC(v22, v23);
    swift_unknownObjectRelease();
  }

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1B8005A6C()
{
  v13 = v0;

  v1 = v0[40];
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDE78);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD00000000000001DLL, 0x80000001B80CC600, &v12);
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

  v0[31] = v1;
  sub_1B80C8ACC();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1B8005C6C(void *a1)
{
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDE78);
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
    *(v6 + 4) = sub_1B7FB84FC(0xD00000000000001DLL, 0x80000001B80CC600, &v11);
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

void sub_1B8005E2C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - v8;
  if (a2)
  {
    v10 = a2;
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v11 = sub_1B80C900C();
    __swift_project_value_buffer(v11, qword_1ED8DDE78);
    v12 = a2;
    v13 = sub_1B80C8FEC();
    v14 = sub_1B80C93FC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v31 = v16;
      *v15 = 136446466;
      *(v15 + 4) = sub_1B7FB84FC(0xD00000000000001DLL, 0x80000001B80CC600, &v31);
      *(v15 + 12) = 2082;
      v30 = a2;
      v17 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
      v18 = sub_1B80C90EC();
      v20 = sub_1B7FB84FC(v18, v19, &v31);

      *(v15 + 14) = v20;
      _os_log_impl(&dword_1B7FB5000, v13, v14, "%{public}s error %{public}s!", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v16, -1, -1);
      MEMORY[0x1B8CB8970](v15, -1, -1);
    }

    v31 = a2;
    sub_1B80C8ACC();
  }

  else
  {
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v21 = sub_1B80C900C();
    __swift_project_value_buffer(v21, qword_1ED8DDE78);
    sub_1B7FD6818(a1, v9);
    v22 = sub_1B80C8FEC();
    v23 = sub_1B80C941C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31 = v25;
      *v24 = 136446466;
      *(v24 + 4) = sub_1B7FB84FC(0xD00000000000001DLL, 0x80000001B80CC600, &v31);
      *(v24 + 12) = 2080;
      sub_1B7FD6818(v9, v7);
      v26 = sub_1B80C90EC();
      v28 = v27;
      sub_1B7FB86D4(v9, &unk_1EBA65FD0, &unk_1B80D1920);
      v29 = sub_1B7FB84FC(v26, v28, &v31);

      *(v24 + 14) = v29;
      _os_log_impl(&dword_1B7FB5000, v22, v23, "%{public}s succeeded: %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v25, -1, -1);
      MEMORY[0x1B8CB8970](v24, -1, -1);
    }

    else
    {

      sub_1B7FB86D4(v9, &unk_1EBA65FD0, &unk_1B80D1920);
    }

    sub_1B80C8ADC();
  }
}

uint64_t sub_1B800624C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B8006298, v2, 0);
}

uint64_t sub_1B8006298()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v2[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2[2].i64[0] = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = type metadata accessor for FriendshipRequestResult(0);
  *v3 = v0;
  v3[1] = sub_1B8006398;
  v5 = *(v0 + 16);

  return MEMORY[0x1EEE04418](v5, 0xD000000000000017, 0x80000001B80CC5E0, sub_1B8011C88, v2, v4);
}

uint64_t sub_1B8006398()
{
  v2 = *v1;
  v2[8] = v0;

  if (v0)
  {
    v3 = v2[4];

    return MEMORY[0x1EEE6DFA0](sub_1B8011C50, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1B80064D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B80064F8, 0, 0);
}

uint64_t sub_1B80064F8()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = swift_allocObject();
  v0[14] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[15] = v4;
  v5 = _s20FriendshipConnectionCMa(0);
  v6 = sub_1B8011BA4(&qword_1ED8DD4B8, _s20FriendshipConnectionCMa, &unk_1B80D25B0);
  *v4 = v0;
  v4[1] = sub_1B8006630;

  return MEMORY[0x1EEE04428](v0 + 8, sub_1B80109DC, v3, v5, v6);
}

uint64_t sub_1B8006630()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1B8006AC8;
  }

  else
  {

    v2 = sub_1B800674C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B800674C()
{
  v23 = v0;
  v1 = v0[16];
  v2 = v0[8];
  sub_1B80C8CEC();
  swift_allocObject();
  sub_1B80C8CDC();
  type metadata accessor for FriendshipRequest(0);
  sub_1B8011BA4(&qword_1EBA66028, type metadata accessor for FriendshipRequest, &protocol conformance descriptor for FriendshipRequest);
  v3 = sub_1B80C8CCC();
  if (v1)
  {

    swift_unknownObjectRelease();
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v5 = sub_1B80C900C();
    __swift_project_value_buffer(v5, qword_1ED8DDE78);
    v6 = v1;
    v7 = sub_1B80C8FEC();
    v8 = sub_1B80C93FC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22 = v11;
      *v9 = 136446466;
      *(v9 + 4) = sub_1B7FB84FC(0xD000000000000017, 0x80000001B80CC5E0, &v22);
      *(v9 + 12) = 2114;
      v12 = sub_1B80C8CFC();
      *(v9 + 14) = v12;
      *v10 = v12;
      _os_log_impl(&dword_1B7FB5000, v7, v8, "Failed to create proxy in %{public}s: %{public}@", v9, 0x16u);
      sub_1B7FB86D4(v10, &qword_1EBA65EE8, &qword_1B80D2478);
      MEMORY[0x1B8CB8970](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x1B8CB8970](v11, -1, -1);
      MEMORY[0x1B8CB8970](v9, -1, -1);
    }

    v0[9] = v1;
    sub_1B80C8ACC();
  }

  else
  {
    v13 = v0[13];
    v14 = v0[11];
    v15 = v3;
    v16 = v4;

    v17 = sub_1B80C8D1C();
    v18 = swift_allocObject();
    *(v18 + 16) = v14;
    *(v18 + 24) = v13;
    v0[6] = sub_1B80109E4;
    v0[7] = v18;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1B7FC5CCC;
    v0[5] = &block_descriptor_160;
    v19 = _Block_copy(v0 + 2);

    [v2 sendFriendshipOffer:v17 completion:v19];
    _Block_release(v19);

    sub_1B7FC3CCC(v15, v16);
    swift_unknownObjectRelease();
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_1B8006AC8()
{
  v13 = v0;

  v1 = v0[16];
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDE78);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000017, 0x80000001B80CC5E0, &v12);
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

  v0[9] = v1;
  sub_1B80C8ACC();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1B8006CC8(void *a1)
{
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDE78);
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
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000017, 0x80000001B80CC5E0, &v11);
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

void sub_1B8006E88(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = type metadata accessor for FriendshipRequestResult(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v38 - v10;
  if (a3)
  {
    v12 = a3;
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v13 = sub_1B80C900C();
    __swift_project_value_buffer(v13, qword_1ED8DDE78);
    v14 = a3;
    v15 = sub_1B80C8FEC();
    v16 = sub_1B80C93FC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v39 = v18;
      *v17 = 136446466;
      *(v17 + 4) = sub_1B7FB84FC(0xD000000000000017, 0x80000001B80CC5E0, &v39);
      *(v17 + 12) = 2082;
      v38[1] = a3;
      v19 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
      v20 = sub_1B80C90EC();
      v22 = sub_1B7FB84FC(v20, v21, &v39);

      *(v17 + 14) = v22;
      _os_log_impl(&dword_1B7FB5000, v15, v16, "%{public}s error %{public}s!", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v18, -1, -1);
      MEMORY[0x1B8CB8970](v17, -1, -1);
    }

    v39 = a3;
LABEL_13:
    sub_1B80C8ACC();

    return;
  }

  if (a2 >> 60 == 15)
  {
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v23 = sub_1B80C900C();
    __swift_project_value_buffer(v23, qword_1ED8DDE78);
    v24 = sub_1B80C8FEC();
    v25 = sub_1B80C93FC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v39 = v27;
      *v26 = 136446210;
      *(v26 + 4) = sub_1B7FB84FC(0xD000000000000017, 0x80000001B80CC5E0, &v39);
      _os_log_impl(&dword_1B7FB5000, v24, v25, "Received nil response for %{public}s!", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x1B8CB8970](v27, -1, -1);
      MEMORY[0x1B8CB8970](v26, -1, -1);
    }

    sub_1B8010040();
    a3 = swift_allocError();
    *v28 = 1;
    v39 = a3;
    goto LABEL_13;
  }

  sub_1B80C8CBC();
  swift_allocObject();
  sub_1B7FC62D8(a1, a2);
  sub_1B80C8CAC();
  sub_1B8011BA4(&qword_1EBA66030, type metadata accessor for FriendshipRequestResult, &protocol conformance descriptor for FriendshipRequestResult);
  sub_1B80C8C9C();

  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v29 = sub_1B80C900C();
  __swift_project_value_buffer(v29, qword_1ED8DDE78);
  sub_1B8010450(v11, v9, type metadata accessor for FriendshipRequestResult);
  v30 = sub_1B80C8FEC();
  v31 = sub_1B80C941C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v38[0] = swift_slowAlloc();
    v39 = v38[0];
    *v32 = 136446466;
    *(v32 + 4) = sub_1B7FB84FC(0xD000000000000017, 0x80000001B80CC5E0, &v39);
    *(v32 + 12) = 2080;
    v33 = FriendshipRequestResult.description.getter();
    v35 = v34;
    sub_1B80117B8(v9, type metadata accessor for FriendshipRequestResult);
    v36 = sub_1B7FB84FC(v33, v35, &v39);

    *(v32 + 14) = v36;
    _os_log_impl(&dword_1B7FB5000, v30, v31, "%{public}s succeeded: %s", v32, 0x16u);
    v37 = v38[0];
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v37, -1, -1);
    MEMORY[0x1B8CB8970](v32, -1, -1);
  }

  else
  {

    sub_1B80117B8(v9, type metadata accessor for FriendshipRequestResult);
  }

  sub_1B80C8ADC();
  sub_1B7FC72F8(a1, a2);
  sub_1B80117B8(v11, type metadata accessor for FriendshipRequestResult);
}

uint64_t sub_1B800764C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B8007698, v2, 0);
}

uint64_t sub_1B8007698()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v2[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2[2].i64[0] = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = type metadata accessor for FriendshipRequestResult(0);
  *v3 = v0;
  v3[1] = sub_1B8006398;
  v5 = *(v0 + 16);

  return MEMORY[0x1EEE04418](v5, 0xD000000000000018, 0x80000001B80CC5C0, sub_1B8011C84, v2, v4);
}

double sub_1B8007798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for FriendshipRequest(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v21 - v15;
  v17 = sub_1B80C92CC();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_1B8010450(a3, &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FriendshipRequest);
  v18 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a2;
  v19[5] = a1;
  sub_1B8010290(&v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  *(v19 + ((v13 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;

  sub_1B80A1D3C(0, 0, v16, a6, v19);

  return result;
}

uint64_t sub_1B800797C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B80079A0, 0, 0);
}

uint64_t sub_1B80079A0()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = swift_allocObject();
  v0[14] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[15] = v4;
  v5 = _s20FriendshipConnectionCMa(0);
  v6 = sub_1B8011BA4(&qword_1ED8DD4B8, _s20FriendshipConnectionCMa, &unk_1B80D25B0);
  *v4 = v0;
  v4[1] = sub_1B8007AD8;

  return MEMORY[0x1EEE04428](v0 + 8, sub_1B801062C, v3, v5, v6);
}

uint64_t sub_1B8007AD8()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1B8007F70;
  }

  else
  {

    v2 = sub_1B8007BF4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B8007BF4()
{
  v23 = v0;
  v1 = v0[16];
  v2 = v0[8];
  sub_1B80C8CEC();
  swift_allocObject();
  sub_1B80C8CDC();
  type metadata accessor for FriendshipRequest(0);
  sub_1B8011BA4(&qword_1EBA66028, type metadata accessor for FriendshipRequest, &protocol conformance descriptor for FriendshipRequest);
  v3 = sub_1B80C8CCC();
  if (v1)
  {

    swift_unknownObjectRelease();
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v5 = sub_1B80C900C();
    __swift_project_value_buffer(v5, qword_1ED8DDE78);
    v6 = v1;
    v7 = sub_1B80C8FEC();
    v8 = sub_1B80C93FC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22 = v11;
      *v9 = 136446466;
      *(v9 + 4) = sub_1B7FB84FC(0xD000000000000018, 0x80000001B80CC5C0, &v22);
      *(v9 + 12) = 2114;
      v12 = sub_1B80C8CFC();
      *(v9 + 14) = v12;
      *v10 = v12;
      _os_log_impl(&dword_1B7FB5000, v7, v8, "Failed to create proxy in %{public}s: %{public}@", v9, 0x16u);
      sub_1B7FB86D4(v10, &qword_1EBA65EE8, &qword_1B80D2478);
      MEMORY[0x1B8CB8970](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x1B8CB8970](v11, -1, -1);
      MEMORY[0x1B8CB8970](v9, -1, -1);
    }

    v0[9] = v1;
    sub_1B80C8ACC();
  }

  else
  {
    v13 = v0[13];
    v14 = v0[11];
    v15 = v3;
    v16 = v4;

    v17 = sub_1B80C8D1C();
    v18 = swift_allocObject();
    *(v18 + 16) = v14;
    *(v18 + 24) = v13;
    v0[6] = sub_1B8010634;
    v0[7] = v18;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1B7FC5CCC;
    v0[5] = &block_descriptor_144;
    v19 = _Block_copy(v0 + 2);

    [v2 sendFriendshipInvite:v17 completion:v19];
    _Block_release(v19);

    sub_1B7FC3CCC(v15, v16);
    swift_unknownObjectRelease();
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_1B8007F70()
{
  v13 = v0;

  v1 = v0[16];
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDE78);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000018, 0x80000001B80CC5C0, &v12);
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

  v0[9] = v1;
  sub_1B80C8ACC();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1B8008170(void *a1)
{
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDE78);
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
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000018, 0x80000001B80CC5C0, &v11);
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

void sub_1B8008330(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = type metadata accessor for FriendshipRequestResult(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v38 - v10;
  if (a3)
  {
    v12 = a3;
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v13 = sub_1B80C900C();
    __swift_project_value_buffer(v13, qword_1ED8DDE78);
    v14 = a3;
    v15 = sub_1B80C8FEC();
    v16 = sub_1B80C93FC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v39 = v18;
      *v17 = 136446466;
      *(v17 + 4) = sub_1B7FB84FC(0xD000000000000018, 0x80000001B80CC5C0, &v39);
      *(v17 + 12) = 2082;
      v38[1] = a3;
      v19 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
      v20 = sub_1B80C90EC();
      v22 = sub_1B7FB84FC(v20, v21, &v39);

      *(v17 + 14) = v22;
      _os_log_impl(&dword_1B7FB5000, v15, v16, "%{public}s error %{public}s!", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v18, -1, -1);
      MEMORY[0x1B8CB8970](v17, -1, -1);
    }

    v39 = a3;
LABEL_13:
    sub_1B80C8ACC();

    return;
  }

  if (a2 >> 60 == 15)
  {
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v23 = sub_1B80C900C();
    __swift_project_value_buffer(v23, qword_1ED8DDE78);
    v24 = sub_1B80C8FEC();
    v25 = sub_1B80C93FC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v39 = v27;
      *v26 = 136446210;
      *(v26 + 4) = sub_1B7FB84FC(0xD000000000000018, 0x80000001B80CC5C0, &v39);
      _os_log_impl(&dword_1B7FB5000, v24, v25, "Received nil response for %{public}s!", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x1B8CB8970](v27, -1, -1);
      MEMORY[0x1B8CB8970](v26, -1, -1);
    }

    sub_1B8010040();
    a3 = swift_allocError();
    *v28 = 1;
    v39 = a3;
    goto LABEL_13;
  }

  sub_1B80C8CBC();
  swift_allocObject();
  sub_1B7FC62D8(a1, a2);
  sub_1B80C8CAC();
  sub_1B8011BA4(&qword_1EBA66030, type metadata accessor for FriendshipRequestResult, &protocol conformance descriptor for FriendshipRequestResult);
  sub_1B80C8C9C();

  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v29 = sub_1B80C900C();
  __swift_project_value_buffer(v29, qword_1ED8DDE78);
  sub_1B8010450(v11, v9, type metadata accessor for FriendshipRequestResult);
  v30 = sub_1B80C8FEC();
  v31 = sub_1B80C941C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v38[0] = swift_slowAlloc();
    v39 = v38[0];
    *v32 = 136446466;
    *(v32 + 4) = sub_1B7FB84FC(0xD000000000000018, 0x80000001B80CC5C0, &v39);
    *(v32 + 12) = 2080;
    v33 = FriendshipRequestResult.description.getter();
    v35 = v34;
    sub_1B80117B8(v9, type metadata accessor for FriendshipRequestResult);
    v36 = sub_1B7FB84FC(v33, v35, &v39);

    *(v32 + 14) = v36;
    _os_log_impl(&dword_1B7FB5000, v30, v31, "%{public}s succeeded: %s", v32, 0x16u);
    v37 = v38[0];
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v37, -1, -1);
    MEMORY[0x1B8CB8970](v32, -1, -1);
  }

  else
  {

    sub_1B80117B8(v9, type metadata accessor for FriendshipRequestResult);
  }

  sub_1B80C8ADC();
  sub_1B7FC72F8(a1, a2);
  sub_1B80117B8(v11, type metadata accessor for FriendshipRequestResult);
}

uint64_t sub_1B8008AF4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B8008B40, v2, 0);
}

uint64_t sub_1B8008B40()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = type metadata accessor for FriendshipRequestResult(0);
  *v3 = v0;
  v3[1] = sub_1B8006398;
  v5 = *(v0 + 16);

  return MEMORY[0x1EEE04418](v5, 0xD00000000000001ALL, 0x80000001B80CC6C0, sub_1B8011C80, v2, v4);
}

uint64_t sub_1B8008C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v8 = type metadata accessor for FriendshipRequest(0);
  v7[14] = v8;
  v9 = *(v8 - 8);
  v7[15] = v9;
  v7[16] = *(v9 + 64);
  v7[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8008D08, 0, 0);
}

uint64_t sub_1B8008D08()
{
  sub_1B80C8CEC();
  swift_allocObject();
  sub_1B80C8CDC();
  sub_1B8011BA4(&qword_1EBA66028, type metadata accessor for FriendshipRequest, &protocol conformance descriptor for FriendshipRequest);
  *(v0 + 144) = sub_1B80C8CCC();
  *(v0 + 152) = v1;
  v7 = *(v0 + 96);

  v2 = swift_allocObject();
  *(v0 + 160) = v2;
  *(v2 + 16) = v7;

  v3 = swift_task_alloc();
  *(v0 + 168) = v3;
  v4 = _s20FriendshipConnectionCMa(0);
  v5 = sub_1B8011BA4(&qword_1ED8DD4B8, _s20FriendshipConnectionCMa, &unk_1B80D25B0);
  *v3 = v0;
  v3[1] = sub_1B80090A4;

  return MEMORY[0x1EEE04428](v0 + 72, sub_1B80116F8, v2, v4, v5);
}

uint64_t sub_1B80090A4()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1B8009370;
  }

  else
  {

    v2 = sub_1B80091C0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B80091C0()
{
  v14 = v0[18];
  v15 = v0[19];
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[9];
  v7 = v0[10];
  v8 = sub_1B80C8D1C();
  sub_1B8010450(v7, v1, type metadata accessor for FriendshipRequest);
  v9 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  sub_1B8010290(v1, v10 + v9);
  *(v10 + ((v2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v4;
  v0[6] = sub_1B8011700;
  v0[7] = v10;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B7FC5CCC;
  v0[5] = &block_descriptor_269;
  v11 = _Block_copy(v0 + 2);

  [v6 respondToInviteRequest:v8 completion:v11];
  _Block_release(v11);

  swift_unknownObjectRelease();
  sub_1B7FC3CCC(v14, v15);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1B8009370()
{
  v13 = v0;
  sub_1B7FC3CCC(v0[18], v0[19]);

  v1 = v0[22];
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDE78);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD00000000000001ALL, 0x80000001B80CC6C0, &v12);
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

  v0[8] = v1;
  sub_1B80C8ACC();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1B8009584(void *a1)
{
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDE78);
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
    *(v6 + 4) = sub_1B7FB84FC(0xD00000000000001ALL, 0x80000001B80CC6C0, &v11);
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

void sub_1B8009744(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for FriendshipRequest(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v54[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for FriendshipRequestResult(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v54[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v54[-v16];
  if (a3)
  {
    v18 = a3;
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v19 = sub_1B80C900C();
    __swift_project_value_buffer(v19, qword_1ED8DDE78);
    v20 = a3;
    v21 = sub_1B80C8FEC();
    v22 = sub_1B80C93FC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v59 = v24;
      *v23 = 136446466;
      *(v23 + 4) = sub_1B7FB84FC(0xD00000000000001ALL, 0x80000001B80CC6C0, &v59);
      *(v23 + 12) = 2082;
      v58 = a3;
      v25 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
      v26 = sub_1B80C90EC();
      v28 = sub_1B7FB84FC(v26, v27, &v59);

      *(v23 + 14) = v28;
      _os_log_impl(&dword_1B7FB5000, v21, v22, "%{public}s error %{public}s!", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v24, -1, -1);
      MEMORY[0x1B8CB8970](v23, -1, -1);
    }

    v59 = a3;
LABEL_13:
    sub_1B80C8ACC();

    return;
  }

  if (a2 >> 60 == 15)
  {
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v29 = sub_1B80C900C();
    __swift_project_value_buffer(v29, qword_1ED8DDE78);
    v30 = sub_1B80C8FEC();
    v31 = sub_1B80C93FC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v59 = v33;
      *v32 = 136446210;
      *(v32 + 4) = sub_1B7FB84FC(0xD00000000000001ALL, 0x80000001B80CC6C0, &v59);
      _os_log_impl(&dword_1B7FB5000, v30, v31, "Received nil response for %{public}s!", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x1B8CB8970](v33, -1, -1);
      MEMORY[0x1B8CB8970](v32, -1, -1);
    }

    sub_1B8010040();
    a3 = swift_allocError();
    *v34 = 1;
    v59 = a3;
    goto LABEL_13;
  }

  sub_1B80C8CBC();
  swift_allocObject();
  sub_1B7FC62D8(a1, a2);
  sub_1B80C8CAC();
  sub_1B8011BA4(&qword_1EBA66030, type metadata accessor for FriendshipRequestResult, &protocol conformance descriptor for FriendshipRequestResult);
  sub_1B80C8C9C();

  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v35 = sub_1B80C900C();
  __swift_project_value_buffer(v35, qword_1ED8DDE78);
  sub_1B8010450(v17, v15, type metadata accessor for FriendshipRequestResult);
  v36 = sub_1B80C8FEC();
  v37 = sub_1B80C941C();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v59 = v57;
    *v38 = 136446466;
    *(v38 + 4) = sub_1B7FB84FC(0xD00000000000001ALL, 0x80000001B80CC6C0, &v59);
    *(v38 + 12) = 2080;
    v56 = v36;
    v39 = FriendshipRequestResult.description.getter();
    v55 = v37;
    v41 = v40;
    sub_1B80117B8(v15, type metadata accessor for FriendshipRequestResult);
    v42 = sub_1B7FB84FC(v39, v41, &v59);

    *(v38 + 14) = v42;
    v43 = v56;
    _os_log_impl(&dword_1B7FB5000, v56, v55, "%{public}s succeeded: %s", v38, 0x16u);
    v44 = v57;
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v44, -1, -1);
    MEMORY[0x1B8CB8970](v38, -1, -1);
  }

  else
  {

    sub_1B80117B8(v15, type metadata accessor for FriendshipRequestResult);
  }

  sub_1B80C8ADC();
  sub_1B80117B8(v17, type metadata accessor for FriendshipRequestResult);
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v45 = sub_1B80C900C();
  __swift_project_value_buffer(v45, qword_1ED8DDE78);
  sub_1B8010450(a5, v11, type metadata accessor for FriendshipRequest);
  v46 = sub_1B80C8FEC();
  v47 = sub_1B80C93DC();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v59 = v49;
    *v48 = 136315138;
    v50 = FriendshipRequest.description.getter();
    v52 = v51;
    sub_1B80117B8(v11, type metadata accessor for FriendshipRequest);
    v53 = sub_1B7FB84FC(v50, v52, &v59);

    *(v48 + 4) = v53;
    _os_log_impl(&dword_1B7FB5000, v46, v47, "Send respondToInviteRequest %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x1B8CB8970](v49, -1, -1);
    MEMORY[0x1B8CB8970](v48, -1, -1);
    sub_1B7FC72F8(a1, a2);
  }

  else
  {
    sub_1B7FC72F8(a1, a2);

    sub_1B80117B8(v11, type metadata accessor for FriendshipRequest);
  }
}

uint64_t sub_1B800A104(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B800A150, v2, 0);
}

uint64_t sub_1B800A150()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = type metadata accessor for FriendshipRequestResult(0);
  *v3 = v0;
  v3[1] = sub_1B800A24C;
  v5 = *(v0 + 16);

  return MEMORY[0x1EEE04418](v5, 0xD000000000000019, 0x80000001B80CC5A0, sub_1B8011C7C, v2, v4);
}

uint64_t sub_1B800A24C()
{
  v2 = *v1;
  v2[8] = v0;

  if (v0)
  {
    v3 = v2[4];

    return MEMORY[0x1EEE6DFA0](sub_1B7FF8E48, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

double sub_1B800A388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a6;
  v10 = type metadata accessor for FriendshipRequest(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v23 - v15;
  v17 = sub_1B80C92CC();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_1B8010450(a2, v13, type metadata accessor for FriendshipRequest);
  v18 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v19 = (v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  sub_1B8010290(v13, v21 + v18);
  *(v21 + v19) = a3;
  *(v21 + v20) = a1;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = a4;

  sub_1B80A1D3C(0, 0, v16, v24, v21);

  return result;
}

uint64_t sub_1B800A584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B800A5A8, 0, 0);
}

uint64_t sub_1B800A5A8()
{
  sub_1B80C8CEC();
  swift_allocObject();
  sub_1B80C8CDC();
  type metadata accessor for FriendshipRequest(0);
  sub_1B8011BA4(&qword_1EBA66028, type metadata accessor for FriendshipRequest, &protocol conformance descriptor for FriendshipRequest);
  *(v0 + 112) = sub_1B80C8CCC();
  *(v0 + 120) = v1;
  v7 = *(v0 + 96);

  v2 = swift_allocObject();
  *(v0 + 128) = v2;
  *(v2 + 16) = v7;

  v3 = swift_task_alloc();
  *(v0 + 136) = v3;
  v4 = _s20FriendshipConnectionCMa(0);
  v5 = sub_1B8011BA4(&qword_1ED8DD4B8, _s20FriendshipConnectionCMa, &unk_1B80D25B0);
  *v3 = v0;
  v3[1] = sub_1B800A944;

  return MEMORY[0x1EEE04428](v0 + 72, sub_1B8010440, v2, v4, v5);
}

uint64_t sub_1B800A944()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1B800ABC0;
  }

  else
  {

    v2 = sub_1B800AA60;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B800AA60()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 72);
  v9 = *(v0 + 96);
  v4 = sub_1B80C8D1C();
  v5 = swift_allocObject();
  *(v5 + 16) = v9;
  *(v0 + 48) = sub_1B8010448;
  *(v0 + 56) = v5;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B7FC5CCC;
  *(v0 + 40) = &block_descriptor_128;
  v6 = _Block_copy((v0 + 16));

  [v3 stopSharingMyLocation:v4 completion:v6];
  _Block_release(v6);

  swift_unknownObjectRelease();
  sub_1B7FC3CCC(v1, v2);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1B800ABC0()
{
  v13 = v0;
  sub_1B7FC3CCC(v0[14], v0[15]);

  v1 = v0[18];
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDE78);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000019, 0x80000001B80CC5A0, &v12);
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

  v0[8] = v1;
  sub_1B80C8ACC();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1B800ADCC(void *a1)
{
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDE78);
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
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000019, 0x80000001B80CC5A0, &v11);
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

void sub_1B800AF8C(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = type metadata accessor for FriendshipRequestResult(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v37 - v10;
  if (a3)
  {
    v12 = a3;
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v13 = sub_1B80C900C();
    __swift_project_value_buffer(v13, qword_1ED8DDE78);
    v14 = a3;
    v15 = sub_1B80C8FEC();
    v16 = sub_1B80C93FC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v38 = v19;
      *v17 = 138412546;
      v20 = a3;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v21;
      *v18 = v21;
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_1B7FB84FC(0xD000000000000019, 0x80000001B80CC5A0, &v38);
      _os_log_impl(&dword_1B7FB5000, v15, v16, "Received error %@ for %{public}s!", v17, 0x16u);
      sub_1B7FB86D4(v18, &qword_1EBA65EE8, &qword_1B80D2478);
      MEMORY[0x1B8CB8970](v18, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x1B8CB8970](v19, -1, -1);
      MEMORY[0x1B8CB8970](v17, -1, -1);
    }

    v38 = a3;
LABEL_13:
    sub_1B80C8ACC();

    return;
  }

  if (a2 >> 60 == 15)
  {
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v22 = sub_1B80C900C();
    __swift_project_value_buffer(v22, qword_1ED8DDE78);
    v23 = sub_1B80C8FEC();
    v24 = sub_1B80C93FC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v38 = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_1B7FB84FC(0xD000000000000019, 0x80000001B80CC5A0, &v38);
      _os_log_impl(&dword_1B7FB5000, v23, v24, "Received nil response for %{public}s!", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x1B8CB8970](v26, -1, -1);
      MEMORY[0x1B8CB8970](v25, -1, -1);
    }

    sub_1B8010040();
    a3 = swift_allocError();
    *v27 = 1;
    v38 = a3;
    goto LABEL_13;
  }

  sub_1B80C8CBC();
  swift_allocObject();
  sub_1B7FC62D8(a1, a2);
  sub_1B80C8CAC();
  sub_1B8011BA4(&qword_1EBA66030, type metadata accessor for FriendshipRequestResult, &protocol conformance descriptor for FriendshipRequestResult);
  sub_1B80C8C9C();

  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v28 = sub_1B80C900C();
  __swift_project_value_buffer(v28, qword_1ED8DDE78);
  sub_1B8010450(v11, v9, type metadata accessor for FriendshipRequestResult);
  v29 = sub_1B80C8FEC();
  v30 = sub_1B80C941C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = v37;
    *v31 = 136446466;
    *(v31 + 4) = sub_1B7FB84FC(0xD000000000000019, 0x80000001B80CC5A0, &v38);
    *(v31 + 12) = 2080;
    v32 = FriendshipRequestResult.description.getter();
    v34 = v33;
    sub_1B80117B8(v9, type metadata accessor for FriendshipRequestResult);
    v35 = sub_1B7FB84FC(v32, v34, &v38);

    *(v31 + 14) = v35;
    _os_log_impl(&dword_1B7FB5000, v29, v30, "%{public}s succeeded: %s", v31, 0x16u);
    v36 = v37;
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v36, -1, -1);
    MEMORY[0x1B8CB8970](v31, -1, -1);
  }

  else
  {

    sub_1B80117B8(v9, type metadata accessor for FriendshipRequestResult);
  }

  sub_1B80C8ADC();
  sub_1B7FC72F8(a1, a2);
  sub_1B80117B8(v11, type metadata accessor for FriendshipRequestResult);
}

uint64_t sub_1B800B748(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B800B794, v2, 0);
}

uint64_t sub_1B800B794()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = type metadata accessor for FriendshipRequestResult(0);
  *v3 = v0;
  v3[1] = sub_1B8006398;
  v5 = *(v0 + 16);

  return MEMORY[0x1EEE04418](v5, 0xD00000000000001ALL, 0x80000001B80CC6C0, sub_1B8011334, v2, v4);
}

uint64_t sub_1B800B890(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B800B8D8, v1, 0);
}

uint64_t sub_1B800B8D8()
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

  return MEMORY[0x1EEE04418](v5, 0x6E656972466C6C61, 0xEC00000029287364, sub_1B8011154, v3, &type metadata for FriendContainer);
}

uint64_t sub_1B800B9CC()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {
    v3 = v2[3];

    return MEMORY[0x1EEE6DFA0](sub_1B8011C5C, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1B800BB08()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B800BB50, v0, 0);
}

uint64_t sub_1B800BB50()
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

  return MEMORY[0x1EEE04418](v4, 0xD000000000000014, 0x80000001B80CC480, sub_1B8011044, v3, v5);
}

uint64_t sub_1B800BC3C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B800BC84, v1, 0);
}

uint64_t sub_1B800BC84()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v2[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2[2].i64[0] = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F80, &qword_1B80D2708);
  *v3 = v0;
  v3[1] = sub_1B800BD90;

  return MEMORY[0x1EEE04418](v0 + 16, 0x2873646E65697266, 0xEE00293A68746977, sub_1B7FF4260, v2, v4);
}

uint64_t sub_1B800BD90()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_1B8011C50;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_1B8011D04;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B800BEB8(uint64_t a1, uint64_t a2)
{
  *(v3 + 232) = a1;
  *(v3 + 240) = v2;
  *(v3 + 248) = *v2;
  v4 = *(a2 + 176);
  *(v3 + 176) = *(a2 + 160);
  *(v3 + 192) = v4;
  *(v3 + 208) = *(a2 + 192);
  *(v3 + 224) = *(a2 + 208);
  v5 = *(a2 + 112);
  *(v3 + 112) = *(a2 + 96);
  *(v3 + 128) = v5;
  v6 = *(a2 + 144);
  *(v3 + 144) = *(a2 + 128);
  *(v3 + 160) = v6;
  v7 = *(a2 + 48);
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = v7;
  v8 = *(a2 + 80);
  *(v3 + 80) = *(a2 + 64);
  *(v3 + 96) = v8;
  v9 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v9;
  return MEMORY[0x1EEE6DFA0](sub_1B800BF40, v2, 0);
}

uint64_t sub_1B800BF40()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = swift_task_alloc();
  v0[32] = v3;
  v3[2] = v2;
  v3[3] = v0 + 2;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[33] = v4;
  *v4 = v0;
  v4[1] = sub_1B800C040;
  v5 = v0[29];

  return MEMORY[0x1EEE04418](v5, 0xD000000000000013, 0x80000001B80CC670, sub_1B8010BE0, v3, &type metadata for FriendshipState);
}

uint64_t sub_1B800C040()
{
  v2 = *v1;
  v2[34] = v0;

  if (v0)
  {
    v3 = v2[30];

    return MEMORY[0x1EEE6DFA0](sub_1B8011C54, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1B800C17C(uint64_t a1, __int128 *a2, _OWORD *a3)
{
  *(v4 + 368) = a1;
  *(v4 + 376) = v3;
  v5 = *v3;
  v6 = a2[8];
  v7 = a2[9];
  v8 = a2[6];
  *(v4 + 304) = a2[7];
  *(v4 + 320) = v6;
  v9 = a2[10];
  *(v4 + 336) = v7;
  *(v4 + 352) = v9;
  v10 = a2[4];
  v11 = a2[5];
  v12 = a2[2];
  *(v4 + 240) = a2[3];
  *(v4 + 256) = v10;
  *(v4 + 384) = v5;
  *(v4 + 272) = v11;
  *(v4 + 288) = v8;
  v13 = *a2;
  *(v4 + 208) = a2[1];
  *(v4 + 224) = v12;
  v14 = a3[9];
  *(v4 + 144) = a3[8];
  *(v4 + 160) = v14;
  *(v4 + 176) = a3[10];
  *(v4 + 192) = v13;
  v15 = a3[5];
  *(v4 + 80) = a3[4];
  *(v4 + 96) = v15;
  v16 = a3[7];
  *(v4 + 112) = a3[6];
  *(v4 + 128) = v16;
  v17 = a3[1];
  *(v4 + 16) = *a3;
  *(v4 + 32) = v17;
  v18 = a3[3];
  *(v4 + 48) = a3[2];
  *(v4 + 64) = v18;
  return MEMORY[0x1EEE6DFA0](sub_1B800C220, v3, 0);
}

uint64_t sub_1B800C220()
{
  v2 = v0[47];
  v1 = v0[48];
  v3 = swift_task_alloc();
  v0[49] = v3;
  v3[2] = v2;
  v3[3] = v0 + 24;
  v3[4] = v0 + 2;
  v3[5] = v1;
  v4 = swift_task_alloc();
  v0[50] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  *v4 = v0;
  v4[1] = sub_1B800C334;
  v6 = v0[46];

  return MEMORY[0x1EEE04418](v6, 0xD000000000000020, 0x80000001B80CC640, sub_1B8010AEC, v3, v5);
}

uint64_t sub_1B800C334()
{
  v2 = *v1;
  v2[51] = v0;

  if (v0)
  {
    v3 = v2[47];

    return MEMORY[0x1EEE6DFA0](sub_1B800C470, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1B800C470()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B800C4D4(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 208) = a4;
  *(v5 + 216) = v4;
  *(v5 + 192) = a1;
  *(v5 + 200) = a3;
  *(v5 + 224) = *v4;
  v6 = a2[9];
  *(v5 + 144) = a2[8];
  *(v5 + 160) = v6;
  *(v5 + 176) = a2[10];
  v7 = a2[5];
  *(v5 + 80) = a2[4];
  *(v5 + 96) = v7;
  v8 = a2[7];
  *(v5 + 112) = a2[6];
  *(v5 + 128) = v8;
  v9 = a2[1];
  *(v5 + 16) = *a2;
  *(v5 + 32) = v9;
  v10 = a2[3];
  *(v5 + 48) = a2[2];
  *(v5 + 64) = v10;
  return MEMORY[0x1EEE6DFA0](sub_1B800C550, v4, 0);
}

uint64_t sub_1B800C550()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v8 = *(v0 + 200);
  v3 = swift_task_alloc();
  *(v0 + 232) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v0 + 16;
  *(v3 + 32) = v8;
  *(v3 + 48) = v1;
  v4 = swift_task_alloc();
  *(v0 + 240) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  *v4 = v0;
  v4[1] = sub_1B800C670;
  v6 = *(v0 + 192);

  return MEMORY[0x1EEE04418](v6, 0xD00000000000001DLL, 0x80000001B80CC600, sub_1B80109EC, v3, v5);
}

uint64_t sub_1B800C670()
{
  v2 = *v1;
  v2[31] = v0;

  if (v0)
  {
    v3 = v2[27];

    return MEMORY[0x1EEE6DFA0](sub_1B8011C58, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1B800C7AC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B800C7F8, v2, 0);
}

uint64_t sub_1B800C7F8()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v2[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2[2].i64[0] = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = type metadata accessor for FriendshipRequestResult(0);
  *v3 = v0;
  v3[1] = sub_1B8006398;
  v5 = *(v0 + 16);

  return MEMORY[0x1EEE04418](v5, 0xD000000000000017, 0x80000001B80CC5E0, sub_1B801063C, v2, v4);
}

uint64_t sub_1B800C8F8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B800C944, v2, 0);
}

uint64_t sub_1B800C944()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v2[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2[2].i64[0] = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = type metadata accessor for FriendshipRequestResult(0);
  *v3 = v0;
  v3[1] = sub_1B8006398;
  v5 = *(v0 + 16);

  return MEMORY[0x1EEE04418](v5, 0xD000000000000018, 0x80000001B80CC5C0, sub_1B80104B8, v2, v4);
}

uint64_t sub_1B800CA44(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B800CA90, v2, 0);
}

uint64_t sub_1B800CA90()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = type metadata accessor for FriendshipRequestResult(0);
  *v3 = v0;
  v3[1] = sub_1B8006398;
  v5 = *(v0 + 16);

  return MEMORY[0x1EEE04418](v5, 0xD000000000000019, 0x80000001B80CC5A0, sub_1B8010254, v2, v4);
}

uint64_t sub_1B800CB8C(_OWORD *a1)
{
  *(v2 + 200) = v1;
  *(v2 + 208) = *v1;
  v3 = a1[9];
  *(v2 + 144) = a1[8];
  *(v2 + 160) = v3;
  *(v2 + 176) = a1[10];
  v4 = a1[5];
  *(v2 + 80) = a1[4];
  *(v2 + 96) = v4;
  v5 = a1[7];
  *(v2 + 112) = a1[6];
  *(v2 + 128) = v5;
  v6 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v6;
  v7 = a1[3];
  *(v2 + 48) = a1[2];
  *(v2 + 64) = v7;
  return MEMORY[0x1EEE6DFA0](sub_1B800CC04, v1, 0);
}

uint64_t sub_1B800CC04()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = swift_task_alloc();
  v0[27] = v3;
  v3[2] = v2;
  v3[3] = v0 + 2;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[28] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66010, &qword_1B80D29E0);
  *v4 = v0;
  v4[1] = sub_1B800CD14;

  return MEMORY[0x1EEE04418](v0 + 24, 0x656B6F5472656570, 0xEF293A726F66286ELL, sub_1B8010094, v3, v5);
}

uint64_t sub_1B800CD14()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = *(v2 + 200);
    v4 = sub_1B8011C4C;
  }

  else
  {
    v5 = *(v2 + 200);

    v4 = sub_1B8011C64;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B800CE3C()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B800CE84, v0, 0);
}

uint64_t sub_1B800CE84()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66010, &qword_1B80D29E0);
  *v4 = v0;
  v4[1] = sub_1B800CF88;

  return MEMORY[0x1EEE04418](v0 + 2, 0x6B6F5472656E776FLL, 0xEC00000029286E65, sub_1B800FF38, v3, v5);
}

uint64_t sub_1B800CF88()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_1B8011C5C;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_1B8011D04;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B800D0B0(_OWORD *a1)
{
  *(v2 + 192) = v1;
  *(v2 + 200) = *v1;
  v3 = a1[9];
  *(v2 + 144) = a1[8];
  *(v2 + 160) = v3;
  *(v2 + 176) = a1[10];
  v4 = a1[5];
  *(v2 + 80) = a1[4];
  *(v2 + 96) = v4;
  v5 = a1[7];
  *(v2 + 112) = a1[6];
  *(v2 + 128) = v5;
  v6 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v6;
  v7 = a1[3];
  *(v2 + 48) = a1[2];
  *(v2 + 64) = v7;
  return MEMORY[0x1EEE6DFA0](sub_1B800D128, v1, 0);
}

uint64_t sub_1B800D128()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = swift_task_alloc();
  v0[26] = v3;
  v3[2] = v2;
  v3[3] = v0 + 2;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[27] = v4;
  *v4 = v0;
  v4[1] = sub_1B800D224;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v4, 0xD000000000000015, 0x80000001B80CC4C0, sub_1B800FE20, v3, v5);
}

uint64_t sub_1B800D224()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = *(v2 + 192);
    v4 = sub_1B8011C60;
  }

  else
  {
    v5 = *(v2 + 192);

    v4 = sub_1B8011C90;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B800D34C()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B800D394, v0, 0);
}

uint64_t sub_1B800D394()
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

  return MEMORY[0x1EEE04418](v4, 0xD000000000000013, 0x80000001B80CC4A0, sub_1B800FD18, v3, v5);
}

uint64_t sub_1B800D480()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B800D4C8, v0, 0);
}

uint64_t sub_1B800D4C8()
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

  return MEMORY[0x1EEE04418](v4, 0x676E6152706F7473, 0xED00002928676E69, sub_1B800FC10, v3, v5);
}

uint64_t sub_1B800D5BC()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B800D604, v0, 0);
}

uint64_t sub_1B800D604()
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

  return MEMORY[0x1EEE04418](v4, 0xD000000000000014, 0x80000001B80CC580, sub_1B800FB08, v3, v5);
}

uint64_t sub_1B800D6F0(_OWORD *a1)
{
  *(v2 + 192) = v1;
  *(v2 + 200) = *v1;
  v3 = a1[9];
  *(v2 + 144) = a1[8];
  *(v2 + 160) = v3;
  *(v2 + 176) = a1[10];
  v4 = a1[5];
  *(v2 + 80) = a1[4];
  *(v2 + 96) = v4;
  v5 = a1[7];
  *(v2 + 112) = a1[6];
  *(v2 + 128) = v5;
  v6 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v6;
  v7 = a1[3];
  *(v2 + 48) = a1[2];
  *(v2 + 64) = v7;
  return MEMORY[0x1EEE6DFA0](sub_1B800D768, v1, 0);
}

uint64_t sub_1B800D768()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = swift_task_alloc();
  v0[26] = v3;
  v3[2] = v2;
  v3[3] = v0 + 2;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[27] = v4;
  *v4 = v0;
  v4[1] = sub_1B800D224;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v4, 0xD000000000000015, 0x80000001B80CC560, sub_1B800F9F0, v3, v5);
}

uint64_t sub_1B800D864(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 56) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B800D8B0, v1, 0);
}

uint64_t sub_1B800D8B0()
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

  return MEMORY[0x1EEE04418](v5, 0xD000000000000019, 0x80000001B80CC540, sub_1B800F8F8, v4, v6);
}

uint64_t sub_1B800D9B0()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B800D9F8, v0, 0);
}

uint64_t sub_1B800D9F8()
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

  return MEMORY[0x1EEE04418](v4, 0xD00000000000001ALL, 0x80000001B80CC520, sub_1B800F7F0, v3, v5);
}

uint64_t sub_1B800DAE4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B7FC253C;

  return sub_1B7FEB948(a1);
}

uint64_t sub_1B800DB78(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B7FBA3EC;

  return sub_1B7FF374C(a1);
}

uint64_t sub_1B800DC0C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B7FC253C;

  return sub_1B7FF3B98(a1);
}

double sub_1B800DCA8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B80C89DC();
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v4;
  v9[5] = a3;
  v9[6] = a4;
  sub_1B7FC62D8(a1, a2);

  MEMORY[0x1B8CB72D0]("updateFriends(friends:completion:)", 34, 2, &unk_1B80D2AE8, v9);

  return result;
}

uint64_t sub_1B800DD7C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v5[8] = *MEMORY[0x1E69E7D40] & *a3;
  return MEMORY[0x1EEE6DFA0](sub_1B800DDDC, 0, 0);
}

uint64_t sub_1B800DDDC()
{
  v12 = v0;
  sub_1B80C8CBC();
  swift_allocObject();
  sub_1B80C8CAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66050, &qword_1B80D2AF0);
  sub_1B8011A94();
  sub_1B80C8C9C();

  v0[9] = v0[2];
  if (qword_1EBA65AC0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  __swift_project_value_buffer(v1, qword_1EBA7ACF8);

  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11[0] = v5;
    *v4 = 136446466;
    *(v4 + 4) = sub_1B7FB84FC(0xD00000000000001CLL, 0x80000001B80CC770, v11);
    *(v4 + 12) = 2080;
    type metadata accessor for Friend(0);
    sub_1B8011BA4(&qword_1EBA66068, type metadata accessor for Friend, &protocol conformance descriptor for Friend);
    v6 = sub_1B80C902C();
    v8 = sub_1B7FB84FC(v6, v7, v11);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_1B7FB5000, v2, v3, "%{public}s decoded friends: %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v5, -1, -1);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  v9 = v0[5];

  return MEMORY[0x1EEE6DFA0](sub_1B800E0D4, v9, 0);
}

uint64_t sub_1B800E0D4()
{
  *(v0 + 80) = swift_unknownObjectWeakLoadStrong();

  return MEMORY[0x1EEE6DFA0](sub_1B800E144, 0, 0);
}

uint64_t sub_1B800E144()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 64);
    v3 = *(v1 + 80);
    v2 = *(v1 + 88);
    v8 = (*(v2 + 8) + **(v2 + 8));
    v4 = swift_task_alloc();
    *(v0 + 88) = v4;
    *v4 = v0;
    v4[1] = sub_1B800E2B8;
    v5 = *(v0 + 72);

    return v8(v5, v3, v2);
  }

  else
  {

    (*(v0 + 48))(0);
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1B800E2B8()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    swift_unknownObjectRelease();

    v2 = sub_1B800E484;
  }

  else
  {

    swift_unknownObjectRelease();
    v2 = sub_1B800E41C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B800E41C()
{
  (*(v0 + 48))(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B800E484()
{
  v1 = v0[12];
  v2 = v0[6];
  v3 = v1;
  v2(v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B800E570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *MEMORY[0x1E69E7D40] & *a5;
  return MEMORY[0x1EEE6DFA0](sub_1B800E5D0, 0, 0);
}

uint64_t sub_1B800E5D0()
{
  v23 = v0;
  sub_1B7FBFCCC(0, &qword_1EBA65D40, 0x1E696ACD0);
  sub_1B7FBFCCC(0, &qword_1EBA65D50, 0x1E6977AA0);
  v1 = sub_1B80C943C();
  v0[8] = v1;
  v4 = v1;
  if (v1)
  {
    if (qword_1EBA65AC0 != -1)
    {
      swift_once();
    }

    v5 = sub_1B80C900C();
    __swift_project_value_buffer(v5, qword_1EBA7ACF8);
    v6 = v4;
    v7 = sub_1B80C8FEC();
    v8 = sub_1B80C941C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22[0] = v11;
      *v9 = 136446466;
      *(v9 + 4) = sub_1B7FB84FC(0xD000000000000025, 0x80000001B80CC710, v22);
      *(v9 + 12) = 2112;
      *(v9 + 14) = v6;
      *v10 = v4;
      v12 = v6;
      _os_log_impl(&dword_1B7FB5000, v7, v8, "%{public}s nearby object: %@", v9, 0x16u);
      sub_1B7FB86D4(v10, &qword_1EBA65EE8, &qword_1B80D2478);
      MEMORY[0x1B8CB8970](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x1B8CB8970](v11, -1, -1);
      MEMORY[0x1B8CB8970](v9, -1, -1);
    }

    v13 = v0[6];

    return MEMORY[0x1EEE6DFA0](sub_1B800E9B4, v13, 0);
  }

  else
  {
    if (qword_1EBA65AC0 != -1)
    {
      swift_once();
    }

    v14 = sub_1B80C900C();
    __swift_project_value_buffer(v14, qword_1EBA7ACF8);
    v15 = sub_1B80C8FEC();
    v16 = sub_1B80C93FC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v22[0] = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_1B7FB84FC(0xD000000000000025, 0x80000001B80CC710, v22);
      _os_log_impl(&dword_1B7FB5000, v15, v16, "%{public}s nearby object cannot be nil!", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x1B8CB8970](v18, -1, -1);
      MEMORY[0x1B8CB8970](v17, -1, -1);
    }

    v19 = v0[4];
    sub_1B8010040();
    v20 = swift_allocError();
    *v21 = 1;
    v19();

    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_1B800E9B4()
{
  *(v0 + 72) = swift_unknownObjectWeakLoadStrong();

  return MEMORY[0x1EEE6DFA0](sub_1B800EA24, 0, 0);
}

uint64_t sub_1B800EA24()
{
  v1 = *(v0 + 64);
  if (*(v0 + 72))
  {
    v2 = *(v0 + 56);
    v4 = *(v2 + 80);
    v3 = *(v2 + 88);
    v8 = (*(v3 + 16) + **(v3 + 16));
    v5 = swift_task_alloc();
    *(v0 + 80) = v5;
    *v5 = v0;
    v5[1] = sub_1B800EBA0;

    return v8(v1, v4, v3);
  }

  else
  {
    (*(v0 + 32))(0);

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1B800EBA0()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1B800ED2C;
  }

  else
  {
    swift_unknownObjectRelease();
    v2 = sub_1B800ECBC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B800ECBC()
{
  v1 = *(v0 + 64);
  (*(v0 + 32))(0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B800ED2C()
{
  v1 = v0[8];
  swift_unknownObjectRelease();

  v2 = v0[11];
  v3 = v0[4];
  v4 = v2;
  v3(v2);

  v5 = v0[1];

  return v5();
}

double sub_1B800EDF8(uint64_t a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v10 = _Block_copy(aBlock);
  v11 = a3;

  v12 = sub_1B80C8D3C();
  v14 = v13;

  v15 = swift_allocObject();
  *(v15 + 16) = v10;
  a7(v12, v14, a6, v15);

  sub_1B7FC3CCC(v12, v14);

  return result;
}

double sub_1B800EEF8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1B80C89DC();
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = v8;
  sub_1B7FC62D8(a1, a2);

  MEMORY[0x1B8CB72D0](a6, a7, 2, a8, v16);

  return result;
}

uint64_t sub_1B800EFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *MEMORY[0x1E69E7D40] & *a5;
  return MEMORY[0x1EEE6DFA0](sub_1B800F02C, 0, 0);
}

uint64_t sub_1B800F02C()
{
  v23 = v0;
  sub_1B7FBFCCC(0, &qword_1EBA65D40, 0x1E696ACD0);
  sub_1B7FBFCCC(0, &qword_1EBA65D50, 0x1E6977AA0);
  v1 = sub_1B80C943C();
  v0[8] = v1;
  v4 = v1;
  if (v1)
  {
    if (qword_1EBA65AC0 != -1)
    {
      swift_once();
    }

    v5 = sub_1B80C900C();
    __swift_project_value_buffer(v5, qword_1EBA7ACF8);
    v6 = v4;
    v7 = sub_1B80C8FEC();
    v8 = sub_1B80C941C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22[0] = v11;
      *v9 = 136446466;
      *(v9 + 4) = sub_1B7FB84FC(0xD000000000000023, 0x80000001B80CC6E0, v22);
      *(v9 + 12) = 2112;
      *(v9 + 14) = v6;
      *v10 = v4;
      v12 = v6;
      _os_log_impl(&dword_1B7FB5000, v7, v8, "%{public}s nearby object: %@", v9, 0x16u);
      sub_1B7FB86D4(v10, &qword_1EBA65EE8, &qword_1B80D2478);
      MEMORY[0x1B8CB8970](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x1B8CB8970](v11, -1, -1);
      MEMORY[0x1B8CB8970](v9, -1, -1);
    }

    v13 = v0[6];

    return MEMORY[0x1EEE6DFA0](sub_1B800F410, v13, 0);
  }

  else
  {
    if (qword_1EBA65AC0 != -1)
    {
      swift_once();
    }

    v14 = sub_1B80C900C();
    __swift_project_value_buffer(v14, qword_1EBA7ACF8);
    v15 = sub_1B80C8FEC();
    v16 = sub_1B80C93FC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v22[0] = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_1B7FB84FC(0xD000000000000023, 0x80000001B80CC6E0, v22);
      _os_log_impl(&dword_1B7FB5000, v15, v16, "%{public}s nearby object cannot be nil!", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x1B8CB8970](v18, -1, -1);
      MEMORY[0x1B8CB8970](v17, -1, -1);
    }

    v19 = v0[4];
    sub_1B8010040();
    v20 = swift_allocError();
    *v21 = 1;
    v19();

    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_1B800F410()
{
  *(v0 + 72) = swift_unknownObjectWeakLoadStrong();

  return MEMORY[0x1EEE6DFA0](sub_1B800F480, 0, 0);
}

uint64_t sub_1B800F480()
{
  v1 = *(v0 + 64);
  if (*(v0 + 72))
  {
    v2 = *(v0 + 56);
    v4 = *(v2 + 80);
    v3 = *(v2 + 88);
    v8 = (*(v3 + 24) + **(v3 + 24));
    v5 = swift_task_alloc();
    *(v0 + 80) = v5;
    *v5 = v0;
    v5[1] = sub_1B800F5FC;

    return v8(v1, v4, v3);
  }

  else
  {
    (*(v0 + 32))(0);

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1B800F5FC()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1B8011C94;
  }

  else
  {
    swift_unknownObjectRelease();
    v2 = sub_1B8011CE0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1B800F74C()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_1B800F79C()
{
  MEMORY[0x1B8CB8A10](v0 + 112);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1B800F828(uint64_t a1)
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

  return sub_1B7FFAFD8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1B800F908(uint64_t a1)
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

  return sub_1B7FFD220(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1B800FA2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[28];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B7FC253C;

  return sub_1B7FFC4EC(a1, v4, v5, v6, v7, (v1 + 6), v8);
}

uint64_t sub_1B800FB40(uint64_t a1)
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

  return sub_1B7FFB97C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1B800FC48(uint64_t a1)
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

  return sub_1B7FFA478(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1B800FD50(uint64_t a1)
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

  return sub_1B7FF99A4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1B800FE5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[28];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B7FC253C;

  return sub_1B7FF8ECC(a1, v4, v5, v6, v7, (v1 + 6), v8);
}

uint64_t sub_1B800FF70(uint64_t a1)
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

  return sub_1B7FFF1F8(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_1B8010040()
{
  result = qword_1EBA66018;
  if (!qword_1EBA66018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66018);
  }

  return result;
}

uint64_t objectdestroy_25Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 232, 7);
}

uint64_t sub_1B8010170(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[28];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B7FC253C;

  return sub_1B7FFDF50(a1, v4, v5, v6, v7, (v1 + 6), v8);
}

uint64_t sub_1B8010290(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FriendshipRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B80102F4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for FriendshipRequest(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1B7FBA3EC;

  return sub_1B800A584(a1, v9, v10, v1 + v6, v11, v12, v13);
}

uint64_t sub_1B8010450(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B80104F4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for FriendshipRequest(0) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1B7FC253C;

  return sub_1B800797C(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t objectdestroy_132Tm()
{
  v1 = type metadata accessor for FriendshipRequest(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66020, &qword_1B80D2A10);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  if (*(v0 + v3 + *(v1 + 24) + 8))
  {
  }

  v7 = *(v1 + 28);
  v8 = sub_1B80C8E2C();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1B80108A4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for FriendshipRequest(0) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1B7FC253C;

  return sub_1B80064D4(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_1B80109F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[28];
  v9 = v1[29];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B7FC253C;

  return sub_1B8005448(a1, v4, v5, v6, v7, (v1 + 6), v8, v9);
}

uint64_t sub_1B8010AF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[50];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B7FC253C;

  return sub_1B8003C6C(a1, v4, v5, v6, v7, (v1 + 6), (v1 + 28), v8);
}

uint64_t sub_1B8010BEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[33];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B7FC253C;

  return sub_1B8002A38(a1, v4, v5, v6, v7, (v1 + 6), v8);
}

unint64_t sub_1B8010D24()
{
  result = qword_1EBA659D8;
  if (!qword_1EBA659D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA659D8);
  }

  return result;
}

unint64_t sub_1B8010D80()
{
  result = qword_1EBA65A28;
  if (!qword_1EBA65A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA65A28);
  }

  return result;
}

uint64_t sub_1B8010DD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B7FC253C;

  return sub_1B80014C8(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_1B8010EB0()
{
  result = qword_1ED8DCD90;
  if (!qword_1ED8DCD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA66040, &qword_1B80D2A80);
    sub_1B8010F34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DCD90);
  }

  return result;
}

unint64_t sub_1B8010F34()
{
  result = qword_1ED8DD2F0;
  if (!qword_1ED8DD2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD2F0);
  }

  return result;
}

unint64_t sub_1B8010F90()
{
  result = qword_1ED8DCD88;
  if (!qword_1ED8DCD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA65F80, &qword_1B80D2708);
    sub_1B8011BA4(qword_1ED8DD290, type metadata accessor for Friend, &protocol conformance descriptor for Friend);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DCD88);
  }

  return result;
}

uint64_t sub_1B801107C(uint64_t a1)
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

  return sub_1B7FFFE78(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1B801118C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B7FC253C;

  return sub_1B8000C64(a1, v4, v5, v6, v7);
}

void sub_1B801125C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  else
  {
  }
}

unint64_t sub_1B80112D4()
{
  result = qword_1EBA66048;
  if (!qword_1EBA66048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66048);
  }

  return result;
}

void sub_1B8011328(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_1B7FC3CCC(a1, a2);
  }
}

uint64_t objectdestroy_116Tm()
{
  v1 = type metadata accessor for FriendshipRequest(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66020, &qword_1B80D2A10);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  if (*(v0 + v3 + *(v1 + 24) + 8))
  {
  }

  v7 = *(v1 + 28);
  v8 = sub_1B80C8E2C();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1B80115AC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for FriendshipRequest(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1B7FC253C;

  return sub_1B8008C3C(a1, v9, v10, v1 + v6, v11, v12, v13);
}

void sub_1B8011700(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = *(type metadata accessor for FriendshipRequest(0) - 8);
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  sub_1B8009744(a1, a2, a3, v8, v9);
}

uint64_t sub_1B80117B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B8011818()
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

  return sub_1B800EFCC(v2, v3, v4, v5, v6);
}

uint64_t objectdestroy_277Tm()
{
  sub_1B7FC3CCC(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B801191C()
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

  return sub_1B800E570(v2, v3, v4, v5, v6);
}

uint64_t sub_1B80119D8()
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

  return sub_1B800DD7C(v2, v3, v4, v5, v6);
}

unint64_t sub_1B8011A94()
{
  result = qword_1EBA66058;
  if (!qword_1EBA66058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA66050, &qword_1B80D2AF0);
    sub_1B8011BA4(qword_1ED8DD290, type metadata accessor for Friend, &protocol conformance descriptor for Friend);
    sub_1B8011B50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66058);
  }

  return result;
}

unint64_t sub_1B8011B50()
{
  result = qword_1EBA66060;
  if (!qword_1EBA66060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66060);
  }

  return result;
}

uint64_t sub_1B8011BA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B8011D28()
{
  v1 = *(v0 + 16);
  v2 = sub_1B80C8E2C();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t Session.friendshipState(with:isFromGroup:)(uint64_t a1, _OWORD *a2, char a3)
{
  *(v4 + 816) = v3;
  *(v4 + 225) = a3;
  *(v4 + 808) = a2;
  *(v4 + 800) = a1;
  v5 = a2[9];
  *(v4 + 576) = a2[8];
  *(v4 + 592) = v5;
  *(v4 + 608) = a2[10];
  v6 = a2[5];
  *(v4 + 512) = a2[4];
  *(v4 + 528) = v6;
  v7 = a2[7];
  *(v4 + 544) = a2[6];
  *(v4 + 560) = v7;
  v8 = a2[1];
  *(v4 + 448) = *a2;
  *(v4 + 464) = v8;
  v9 = a2[3];
  *(v4 + 480) = a2[2];
  *(v4 + 496) = v9;
  return MEMORY[0x1EEE6DFA0](sub_1B8011E24, 0, 0);
}

uint64_t sub_1B8011E24()
{
  v18 = v0;
  v1 = *(v0 + 816);
  v2 = *(v0 + 225);
  v3 = *(v0 + 808);
  v4 = *(v1 + 80);
  v5 = *(v1 + 104);
  v6 = *(v1 + 88);
  v7 = *v3;
  v8 = v3[2];
  *(v0 + 32) = v3[1];
  *(v0 + 48) = v8;
  *(v0 + 16) = v7;
  v9 = v3[3];
  v10 = v3[4];
  v11 = v3[6];
  *(v0 + 96) = v3[5];
  *(v0 + 112) = v11;
  *(v0 + 64) = v9;
  *(v0 + 80) = v10;
  v12 = v3[7];
  v13 = v3[8];
  v14 = v3[10];
  *(v0 + 160) = v3[9];
  *(v0 + 176) = v14;
  *(v0 + 128) = v12;
  *(v0 + 144) = v13;
  *(v0 + 192) = v4;
  *(v0 + 200) = v6;
  *(v0 + 216) = v5;
  *(v0 + 224) = v2;
  sub_1B7FC8DA4(v0 + 448, v0 + 624);

  v17 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v17);
  v15 = swift_task_alloc();
  *(v0 + 824) = v15;
  *v15 = v0;
  v15[1] = sub_1B8011F30;

  return sub_1B7FC225C();
}

uint64_t sub_1B8011F30()
{

  return MEMORY[0x1EEE6DFA0](sub_1B801202C, 0, 0);
}

uint64_t sub_1B801202C()
{
  v1 = *(v0 + 192);
  *(v0 + 392) = *(v0 + 176);
  *(v0 + 408) = v1;
  *(v0 + 424) = *(v0 + 208);
  v2 = *(v0 + 128);
  *(v0 + 328) = *(v0 + 112);
  *(v0 + 344) = v2;
  v3 = *(v0 + 160);
  *(v0 + 360) = *(v0 + 144);
  *(v0 + 376) = v3;
  v4 = *(v0 + 64);
  *(v0 + 264) = *(v0 + 48);
  *(v0 + 280) = v4;
  v5 = *(v0 + 96);
  *(v0 + 296) = *(v0 + 80);
  *(v0 + 312) = v5;
  v6 = *(v0 + 32);
  *(v0 + 232) = *(v0 + 16);
  *(v0 + 440) = *(v0 + 224);
  *(v0 + 248) = v6;
  v7 = swift_task_alloc();
  *(v0 + 832) = v7;
  *v7 = v0;
  v7[1] = sub_1B8012114;
  v8 = *(v0 + 800);

  return sub_1B800258C(v8, v0 + 232);
}

uint64_t sub_1B8012114()
{
  v2 = *v1;
  *(v2 + 840) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B8012250, 0, 0);
  }

  else
  {
    sub_1B8012D18(v2 + 16);
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1B8012250()
{
  sub_1B8012D18(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t Session.sendFriendshipOffer(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B80122D8, 0, 0);
}

uint64_t sub_1B80122D8()
{
  v4 = v0;
  v3 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B8012378;

  return sub_1B7FC225C();
}

uint64_t sub_1B8012378()
{

  return MEMORY[0x1EEE6DFA0](sub_1B8012474, 0, 0);
}

uint64_t sub_1B8012474()
{
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1B8012DD4;
  v2 = v0[2];
  v3 = v0[3];

  return sub_1B800624C(v2, v3);
}

uint64_t Session.sendFriendshipInvite(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B8012534, 0, 0);
}

uint64_t sub_1B8012534()
{
  v4 = v0;
  v3 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B80125D4;

  return sub_1B7FC225C();
}

uint64_t sub_1B80125D4()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80126D0, 0, 0);
}

uint64_t sub_1B80126D0()
{
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1B8012DD4;
  v2 = v0[2];
  v3 = v0[3];

  return sub_1B800764C(v2, v3);
}

uint64_t Session.respondToInviteRequest(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B8012790, 0, 0);
}

uint64_t sub_1B8012790()
{
  v4 = v0;
  v3 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B8012830;

  return sub_1B7FC225C();
}

uint64_t sub_1B8012830()
{

  return MEMORY[0x1EEE6DFA0](sub_1B801292C, 0, 0);
}

uint64_t sub_1B801292C()
{
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1B8012DD4;
  v2 = v0[2];
  v3 = v0[3];

  return sub_1B8008AF4(v2, v3);
}

uint64_t Session.stopSharingMyLocation(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B80129EC, 0, 0);
}

uint64_t sub_1B80129EC()
{
  v4 = v0;
  v3 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B8012A8C;

  return sub_1B7FC225C();
}

uint64_t sub_1B8012A8C()
{

  return MEMORY[0x1EEE6DFA0](sub_1B8012B88, 0, 0);
}

uint64_t sub_1B8012B88()
{
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1B8012C24;
  v2 = v0[2];
  v3 = v0[3];

  return sub_1B800A104(v2, v3);
}

uint64_t sub_1B8012C24()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B8012D6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65AE0, &unk_1B80D39E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8012DD8()
{
  v1 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection____lazy_storage___locationShifter;
  if (*(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection____lazy_storage___locationShifter))
  {
    v2 = *(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection____lazy_storage___locationShifter);
  }

  else
  {
    type metadata accessor for LocationShifter(0);
    v2 = swift_allocObject();
    v3 = OBJC_IVAR____TtC12FindMyLocate15LocationShifter_logger;
    if (qword_1EBA65AB0 != -1)
    {
      swift_once();
    }

    v4 = sub_1B80C900C();
    v5 = __swift_project_value_buffer(v4, qword_1EBA7ACD8);
    (*(*(v4 - 8) + 16))(v2 + v3, v5, v4);
    v6 = [objc_allocWithZone(MEMORY[0x1E69A1E80]) init];
    *(v2 + OBJC_IVAR____TtC12FindMyLocate15LocationShifter_shifter) = v6;
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1B8012F60()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v16 - v3;
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v5 = sub_1B80C900C();
  __swift_project_value_buffer(v5, qword_1ED8DDF28);
  v6 = sub_1B80C8FEC();
  v7 = sub_1B80C941C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1B7FB5000, v6, v7, "Session LocationConnection deinit", v8, 2u);
    MEMORY[0x1B8CB8970](v8, -1, -1);
  }

  v16[1] = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_locationRefreshWorkQueue;
  v9 = *(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_locationRefreshWorkQueue);
  v10 = sub_1B80C92CC();
  v11 = *(*(v10 - 8) + 56);
  v11(v4, 1, 1, v10);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v9;
  swift_retain_n();
  sub_1B809F924(0, 0, v4, &unk_1B80D2CD0, v12);

  sub_1B7FB86D4(v4, &unk_1EBA66000, &unk_1B80D2630);
  v13 = *(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_internalLocationSerializationQueue);
  v11(v4, 1, 1, v10);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v13;
  swift_retain_n();
  sub_1B809F924(0, 0, v4, &unk_1B80D2CE0, v14);

  sub_1B7FB86D4(v4, &unk_1EBA66000, &unk_1B80D2630);
  sub_1B7FB86D4(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_serviceDescription, &qword_1EBA65EA0, &qword_1B80D23B0);

  sub_1B7FBE244(*(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_disconnectionHandler), *(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_disconnectionHandler + 8));
  sub_1B7FB86D4(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_locationContinuation, &qword_1EBA66088, &qword_1B80D2CF0);

  swift_weakDestroy();
  sub_1B7FB86D4(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_stewieStateUpdateContinuation, &qword_1EBA66090, &qword_1B80D2CF8);
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_1B8013334()
{
  v3 = (*MEMORY[0x1E699C800] + MEMORY[0x1E699C800]);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B7FC253C;

  return v3();
}

uint64_t sub_1B80133D8()
{
  v3 = (*MEMORY[0x1E699C800] + MEMORY[0x1E699C800]);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B7FBA3EC;

  return v3();
}

uint64_t sub_1B801347C()
{
  sub_1B8012F60();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1B80134B0(_OWORD *a1)
{
  *(v2 + 744) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D60, &unk_1B80DC530);
  *(v2 + 752) = swift_task_alloc();
  v4 = a1[9];
  *(v2 + 144) = a1[8];
  *(v2 + 160) = v4;
  *(v2 + 176) = a1[10];
  v5 = a1[5];
  *(v2 + 80) = a1[4];
  *(v2 + 96) = v5;
  v6 = a1[7];
  *(v2 + 112) = a1[6];
  *(v2 + 128) = v6;
  v7 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v7;
  v8 = a1[3];
  *(v2 + 48) = a1[2];
  *(v2 + 64) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1B8013580, v1, 0);
}

uint64_t sub_1B8013580()
{
  v35 = v0;
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  __swift_project_value_buffer(v1, qword_1ED8DDF28);
  sub_1B7FC8DA4(v0 + 16, v0 + 192);
  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();
  sub_1B7FCAD28(v0 + 16);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v23 = v5;
    *v4 = 141558275;
    *(v4 + 4) = 1752392040;
    *(v4 + 12) = 2081;
    v6 = *(v0 + 160);
    v32 = *(v0 + 144);
    v33 = v6;
    v34 = *(v0 + 176);
    v7 = *(v0 + 96);
    v28 = *(v0 + 80);
    v29 = v7;
    v8 = *(v0 + 128);
    v30 = *(v0 + 112);
    v31 = v8;
    v9 = *(v0 + 32);
    v24 = *(v0 + 16);
    v25 = v9;
    v10 = *(v0 + 64);
    v26 = *(v0 + 48);
    v27 = v10;
    sub_1B7FC8DA4(v0 + 16, v0 + 544);
    v11 = Handle.description.getter();
    v13 = v12;
    v14 = v33;
    *(v0 + 496) = v32;
    *(v0 + 512) = v14;
    *(v0 + 528) = v34;
    v15 = v29;
    *(v0 + 432) = v28;
    *(v0 + 448) = v15;
    v16 = v31;
    *(v0 + 464) = v30;
    *(v0 + 480) = v16;
    v17 = v25;
    *(v0 + 368) = v24;
    *(v0 + 384) = v17;
    v18 = v27;
    *(v0 + 400) = v26;
    *(v0 + 416) = v18;
    sub_1B7FCAD28(v0 + 368);
    v19 = sub_1B7FB84FC(v11, v13, &v23);

    *(v4 + 14) = v19;
    _os_log_impl(&dword_1B7FB5000, v2, v3, "Removing cached location for handle: %{private,mask.hash}s.", v4, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B8CB8970](v5, -1, -1);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  v20 = *(v0 + 752);
  swift_beginAccess();
  sub_1B8013970((v0 + 16), v20);
  sub_1B7FB86D4(v20, &qword_1EBA65D60, &unk_1B80DC530);
  swift_endAccess();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1B8013804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1B7FDA404(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B8091A9C();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext(0);
    v19 = *(v12 - 8);
    sub_1B80148D0(v11 + *(v19 + 72) * v8, a3, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
    sub_1B8013BF0(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1B8013970@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1B7FDA47C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v26 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B8092058();
      v9 = v26;
    }

    v10 = (*(v9 + 48) + 176 * v7);
    v12 = v10[1];
    v11 = v10[2];
    v25[0] = *v10;
    v25[1] = v12;
    v25[2] = v11;
    v13 = v10[3];
    v14 = v10[4];
    v15 = v10[6];
    v25[5] = v10[5];
    v25[6] = v15;
    v25[3] = v13;
    v25[4] = v14;
    v16 = v10[7];
    v17 = v10[8];
    v18 = v10[10];
    v25[9] = v10[9];
    v25[10] = v18;
    v25[7] = v16;
    v25[8] = v17;
    sub_1B7FCAD28(v25);
    v19 = *(v9 + 56);
    v20 = type metadata accessor for Location(0);
    v21 = *(v20 - 8);
    sub_1B80148D0(v19 + *(v21 + 72) * v7, a2, type metadata accessor for Location);
    sub_1B80140E8(v7, v9);
    *v3 = v9;
    return (*(v21 + 56))(a2, 0, 1, v20);
  }

  else
  {
    v23 = type metadata accessor for Location(0);
    v24 = *(*(v23 - 8) + 56);

    return v24(a2, 1, 1, v23);
  }
}

unint64_t sub_1B8013B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  result = sub_1B7FBD0C0(a1, a2, a3, a4);
  v10 = v9;
  if (v9)
  {
    v11 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v5;
    v14 = *v6;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B80929C0();
      v13 = v14;
    }

    sub_1B7FBCEF4(*(v13 + 56) + 8 * v11, a5);
    result = sub_1B80144DC(v11, v13);
    *v6 = v13;
  }

  else
  {
    *a5 = 0;
  }

  *(a5 + 8) = (v10 & 1) == 0;
  return result;
}

unint64_t sub_1B8013BF0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B80C94DC() + 1) & ~v5;
    while (1)
    {
      sub_1B80C993C();

      sub_1B80C911C();
      v9 = sub_1B80C997C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1B8013DDC(int64_t a1, uint64_t a2)
{
  v4 = sub_1B80C8E9C();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_1B80C94DC();
    v14 = v12;
    v41 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v42 = *(v15 + 56);
    v39 = (v15 - 8);
    v40 = v16;
    do
    {
      v17 = v9;
      v18 = v42 * v11;
      v19 = v14;
      v20 = v15;
      v40(v8, *(a2 + 48) + v42 * v11, v4);
      sub_1B8014878();
      v21 = sub_1B80C904C();
      result = (*v39)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v41)
      {
        if (v22 >= v41 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          v26 = v25 + v42 * a1;
          v27 = v25 + v18 + v42;
          v28 = v42 * a1 < v18 || v26 >= v27;
          v15 = v20;
          if (v28)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v42 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v29 = *(a2 + 56);
          v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E98, &qword_1B80D2D00) - 8) + 72);
          v31 = v30 * a1;
          result = v29 + v30 * a1;
          v32 = v30 * v11;
          v33 = v29 + v30 * v11 + v30;
          if (v31 < v32 || result >= v33)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v17;
            v14 = v19;
          }

          else
          {
            a1 = v11;
            v35 = v31 == v32;
            v9 = v17;
            v14 = v19;
            if (!v35)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v41 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1B80140E8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B80C94DC() + 1) & ~v5;
    while (1)
    {
      v9 = (*(a2 + 48) + 176 * v6);
      v11 = v9[1];
      v10 = v9[2];
      v33[0] = *v9;
      v33[1] = v11;
      v33[2] = v10;
      v12 = v9[6];
      v14 = v9[3];
      v13 = v9[4];
      v33[5] = v9[5];
      v33[6] = v12;
      v33[3] = v14;
      v33[4] = v13;
      v15 = v9[10];
      v17 = v9[7];
      v16 = v9[8];
      v33[9] = v9[9];
      v33[10] = v15;
      v33[7] = v17;
      v33[8] = v16;
      sub_1B80C993C();
      sub_1B80C90FC();
      sub_1B7FC8DA4(v33, v32);
      sub_1B80C911C();

      v18 = sub_1B80C997C();
      result = sub_1B7FCAD28(v33);
      v19 = v18 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v19 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v20 = *(a2 + 48);
      v21 = (v20 + 176 * v3);
      v22 = (v20 + 176 * v6);
      if (v3 != v6 || v21 >= v22 + 176)
      {
        memmove(v21, v22, 0xB0uLL);
      }

      v23 = *(a2 + 56);
      v24 = *(*(type metadata accessor for Location(0) - 8) + 72);
      v25 = v24 * v3;
      result = v23 + v24 * v3;
      v26 = v24 * v6;
      v27 = v23 + v24 * v6 + v24;
      if (v25 < v26 || result >= v27)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v25 == v26)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
        goto LABEL_22;
      }
    }

    if (v19 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v19)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
LABEL_22:
  v29 = *(a2 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v31;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1B8014348(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B80C94DC() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + v6);
      sub_1B80C993C();
      MEMORY[0x1B8CB8250](v9);
      result = sub_1B80C997C();
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

unint64_t sub_1B80144DC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B80C94DC() + 1) & ~v5;
    v25 = v4;
    while (1)
    {
      v9 = v8;
      v10 = v7;
      v11 = (*(a2 + 48) + 32 * v6);
      v12 = *v11;
      v13 = *(v11 + 1);
      v14 = *(v11 + 3);
      sub_1B80C993C();
      MEMORY[0x1B8CB8250](v12);
      MEMORY[0x1B8CB8250](v13);
      sub_1B80C995C();
      if (v14)
      {

        sub_1B80C911C();
      }

      v15 = sub_1B80C997C();

      v7 = v10;
      v16 = v15 & v10;
      v8 = v9;
      if (v3 >= v9)
      {
        break;
      }

      v4 = v25;
      if (v16 < v8)
      {
        goto LABEL_12;
      }

LABEL_13:
      v17 = *(a2 + 48);
      v18 = (v17 + 32 * v3);
      v19 = (v17 + 32 * v6);
      if (v3 != v6 || v18 >= v19 + 2)
      {
        v20 = v19[1];
        *v18 = *v19;
        v18[1] = v20;
      }

      v21 = *(a2 + 56);
      result = v21 + 8 * v3;
      if (v3 < v6 || result >= v21 + 8 * v6 + 8)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v4 = v25;
    if (v16 < v8)
    {
      goto LABEL_5;
    }

LABEL_12:
    if (v3 < v16)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1B8014710()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B7FC253C;

  return sub_1B8013334();
}

uint64_t sub_1B80147C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B7FBA3EC;

  return sub_1B80133D8();
}

unint64_t sub_1B8014878()
{
  result = qword_1EBA65A68;
  if (!qword_1EBA65A68)
  {
    sub_1B80C8E9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA65A68);
  }

  return result;
}

uint64_t sub_1B80148D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B8014938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E18, &qword_1B80D2108);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_1B7FB86D4(a1, &qword_1EBA65E18, &qword_1B80D2108);
    sub_1B8013804(a2, a3, v9);

    return sub_1B7FB86D4(v9, &qword_1EBA65E18, &qword_1B80D2108);
  }

  else
  {
    sub_1B80344D4(a1, v12, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1B802F0E8(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_1B8014B0C(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D60, &unk_1B80DC530);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Location(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_1B7FB86D4(a1, &qword_1EBA65D60, &unk_1B80DC530);
    sub_1B8013970(a2, v7);
    sub_1B7FCAD28(a2);
    return sub_1B7FB86D4(v7, &qword_1EBA65D60, &unk_1B80DC530);
  }

  else
  {
    sub_1B80344D4(a1, v10, type metadata accessor for Location);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_1B802F3C8(v10, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1B7FCAD28(a2);
    *v2 = v15;
  }

  return result;
}

uint64_t sub_1B8014CCC(uint64_t a1, char *a2, char a3)
{
  v7 = *v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660C0, &qword_1B80D2E50);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14[-v10];
  v12 = *a2;
  type metadata accessor for LocationStreamChange(0);
  v15 = v3;
  v16 = a1;
  v17 = v12;
  v18 = a3;
  v19 = v7;
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8650], v8);
  return sub_1B80C934C();
}

double sub_1B8014E38(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6)
{
  v24 = a6;
  v22 = a4;
  v23 = a5;
  v21[0] = a2;
  v8 = sub_1B80C8E9C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66078, &qword_1B80D2C10);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v21 - v12;
  v21[1] = sub_1B80C8A0C();
  v14 = swift_allocObject();
  swift_weakInit();
  (*(v10 + 16))(v13, a1, v9);
  v15 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v16 = (v11 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  (*(v10 + 32))(v17 + v15, v13, v9);
  v18 = v17 + v16;
  *v18 = a3;
  v19 = v23;
  *(v18 + 8) = v22;
  *(v18 + 9) = v19;
  *(v17 + ((v16 + 17) & 0xFFFFFFFFFFFFFFF8)) = v24;

  _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
  sub_1B80C89EC();

  sub_1B80C8A3C();

  return result;
}

uint64_t sub_1B80150A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *(v5 + 113) = a5;
  *(v5 + 112) = a4;
  *(v5 + 72) = a2;
  *(v5 + 80) = a3;
  *(v5 + 64) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66088, &qword_1B80D2CF0);
  *(v5 + 88) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B801514C, 0, 0);
}

uint64_t sub_1B801514C()
{
  v10 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B8015350, Strong, 0);
  }

  else
  {
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v2 = sub_1B80C900C();
    __swift_project_value_buffer(v2, qword_1ED8DDF28);
    v3 = sub_1B80C8FEC();
    v4 = sub_1B80C941C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v9 = v6;
      *v5 = 136446210;
      *(v5 + 4) = sub_1B7FB84FC(0xD000000000000030, 0x80000001B80CCAD0, &v9);
      _os_log_impl(&dword_1B7FB5000, v3, v4, "%{public}s - LocationConnection is nil, during enqueued WorkItem", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x1B8CB8970](v6, -1, -1);
      MEMORY[0x1B8CB8970](v5, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66078, &qword_1B80D2C10);
    sub_1B80C92FC();

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1B8015350()
{
  v12 = v0;
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 113);
  v4 = *(v0 + 112);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66078, &qword_1B80D2C10);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v2, v6, v7);
  (*(v8 + 56))(v2, 0, 1, v7);
  v9 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_locationContinuation;
  swift_beginAccess();
  sub_1B8032A88(v2, v1 + v9);
  swift_endAccess();
  v11 = v4;
  sub_1B80156F8(v5, &v11, v3);

  return MEMORY[0x1EEE6DFA0](sub_1B80154A8, 0, 0);
}

uint64_t sub_1B80154A8()
{
  if (*(v0 + 113) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 104) = v1;
    *v1 = v0;
    v1[1] = sub_1B8015590;
    v2 = *(v0 + 80);

    return sub_1B8015CF4(v2);
  }

  else
  {

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1B8015590()
{

  return MEMORY[0x1EEE6DFA0](sub_1B801568C, 0, 0);
}

uint64_t sub_1B801568C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1B80156F8(uint64_t a1, unsigned __int8 *a2, char a3)
{
  v4 = v3;
  v7 = *a2;
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v8 = sub_1B80C900C();
  __swift_project_value_buffer(v8, qword_1ED8DDF28);

  v9 = sub_1B80C8FEC();
  v10 = sub_1B80C941C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v54[0] = v12;
    *v11 = 136446979;
    *(v11 + 4) = sub_1B7FB84FC(0xD00000000000003ELL, 0x80000001B80CCB70, v54);
    *(v11 + 12) = 2082;
    v13 = 0xE800000000000000;
    v14 = 0xE500000000000000;
    v15 = 0x6576696C2ELL;
    if (v7 != 2)
    {
      v15 = 0xD000000000000014;
      v14 = 0x80000001B80CBF40;
    }

    v16 = 0x776F6C6C6168732ELL;
    if (!v7)
    {
      v16 = 0xD000000000000015;
      v13 = 0x80000001B80CBFD0;
    }

    if (v7 <= 1)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    if (v7 <= 1)
    {
      v18 = v13;
    }

    else
    {
      v18 = v14;
    }

    v19 = sub_1B7FB84FC(v17, v18, v54);

    *(v11 + 14) = v19;
    *(v11 + 22) = 2160;
    *(v11 + 24) = 1752392040;
    *(v11 + 32) = 2081;
    v20 = MEMORY[0x1B8CB7B30](a1, &type metadata for Handle);
    v22 = sub_1B7FB84FC(v20, v21, v54);

    *(v11 + 34) = v22;
    _os_log_impl(&dword_1B7FB5000, v9, v10, "%{public}s priority: %{public}s with handles: %{private,mask.hash}s", v11, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v12, -1, -1);
    MEMORY[0x1B8CB8970](v11, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  if (a3)
  {

    sub_1B8031EE0(v23);
    swift_endAccess();
  }

  else
  {
    sub_1B8030C8C(a1);
    swift_endAccess();
  }

  v24 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_handlesForLocationRefreshing;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *(v4 + v24);
  *(v4 + v24) = 0x8000000000000000;
  v27 = sub_1B7FDA504(v7);
  v29 = v26[2];
  v30 = (v28 & 1) == 0;
  v31 = __OFADD__(v29, v30);
  v32 = v29 + v30;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    a3 = v28;
    if (v26[3] < v32)
    {
      sub_1B8090F00(v32, isUniquelyReferenced_nonNull_native);
      v27 = sub_1B7FDA504(v7);
      if ((a3 & 1) == (v33 & 1))
      {
        goto LABEL_24;
      }

      v27 = sub_1B80C986C();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_24:
      *(v4 + v24) = v26;
      if (a3)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }
  }

  v53 = v27;
  sub_1B809230C();
  v27 = v53;
  *(v4 + v24) = v26;
  if (a3)
  {
    goto LABEL_27;
  }

LABEL_25:
  v26[(v27 >> 6) + 8] |= 1 << v27;
  *(v26[6] + v27) = v7;
  *(v26[7] + 8 * v27) = MEMORY[0x1E69E7CD0];
  v34 = v26[2];
  v31 = __OFADD__(v34, 1);
  v35 = v34 + 1;
  if (v31)
  {
    __break(1u);
    return;
  }

  v26[2] = v35;
LABEL_27:

  sub_1B8031EE0(v36);
  swift_endAccess();

  v37 = sub_1B80C8FEC();
  v38 = sub_1B80C941C();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v54[0] = v40;
    *v39 = 136315651;
    v41 = 0xE800000000000000;
    v42 = 0xE500000000000000;
    v43 = 0x6576696C2ELL;
    if (v7 != 2)
    {
      v43 = 0xD000000000000014;
      v42 = 0x80000001B80CBF40;
    }

    v44 = 0xD000000000000015;
    if (v7)
    {
      v44 = 0x776F6C6C6168732ELL;
    }

    else
    {
      v41 = 0x80000001B80CBFD0;
    }

    if (v7 <= 1)
    {
      v45 = v44;
    }

    else
    {
      v45 = v43;
    }

    if (v7 <= 1)
    {
      v46 = v41;
    }

    else
    {
      v46 = v42;
    }

    v47 = sub_1B7FB84FC(v45, v46, v54);

    *(v39 + 4) = v47;
    *(v39 + 12) = 2160;
    *(v39 + 14) = 1752392040;
    *(v39 + 22) = 2081;
    if (*(*(v4 + v24) + 16))
    {
      sub_1B7FDA504(v7);
      if (v48)
      {
      }
    }

    sub_1B8032C04();
    v49 = sub_1B80C93BC();
    v51 = v50;

    v52 = sub_1B7FB84FC(v49, v51, v54);

    *(v39 + 24) = v52;
    _os_log_impl(&dword_1B7FB5000, v37, v38, "After addHandles to handlesForLocationRefreshing handles with priority%s,\ncurrent: %{private,mask.hash}s", v39, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v40, -1, -1);
    MEMORY[0x1B8CB8970](v39, -1, -1);
  }
}

uint64_t sub_1B8015CF4(uint64_t a1)
{
  v2[207] = v1;
  v2[206] = a1;
  v3 = type metadata accessor for Location(0);
  v2[208] = v3;
  v2[209] = *(v3 - 8);
  v2[210] = swift_task_alloc();
  v2[211] = swift_task_alloc();
  v2[212] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660C8, &qword_1B80D2E88);
  v2[213] = swift_task_alloc();
  v2[214] = swift_task_alloc();
  v2[215] = type metadata accessor for LocationStreamChange(0);
  v2[216] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66078, &qword_1B80D2C10);
  v2[217] = v4;
  v2[218] = *(v4 - 8);
  v2[219] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66088, &qword_1B80D2CF0);
  v2[220] = swift_task_alloc();
  v2[221] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D0, &qword_1B80D2E90);
  v2[222] = swift_task_alloc();
  v2[223] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
  v2[224] = v5;
  v2[225] = *(v5 - 8);
  v2[226] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8015F9C, v1, 0);
}

uint64_t sub_1B8015F9C()
{
  v10 = v0;
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  v0[227] = __swift_project_value_buffer(v1, qword_1ED8DDF28);
  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B7FB84FC(0xD000000000000031, 0x80000001B80CCB10, &v9);
    _os_log_impl(&dword_1B7FB5000, v2, v3, "%{public}s Checking if we have any valid cached  location that needs rev-geo", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B8CB8970](v5, -1, -1);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  v6 = swift_task_alloc();
  v0[228] = v6;
  *v6 = v0;
  v6[1] = sub_1B801615C;
  v7 = v0[206];

  return sub_1B8021E30(v7, 0, 0);
}

uint64_t sub_1B801615C(uint64_t a1)
{
  v2 = *(*v1 + 1656);
  *(*v1 + 1832) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B8016274, v2, 0);
}

void sub_1B8016274()
{
  v140 = v0;
  if (*(*(v0 + 1832) + 16))
  {

    v1 = sub_1B80C8FEC();
    v2 = sub_1B80C941C();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v139[0] = v4;
      *v3 = 136446466;
      *(v3 + 4) = sub_1B7FB84FC(0xD000000000000031, 0x80000001B80CCB10, v139);
      *(v3 + 12) = 2080;
      sub_1B8032C04();
      v5 = sub_1B80C902C();
      v7 = sub_1B7FB84FC(v5, v6, v139);

      *(v3 + 14) = v7;
      _os_log_impl(&dword_1B7FB5000, v1, v2, "%{public}s send back rev-geo locations from cache: %s", v3, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v4, -1, -1);
      MEMORY[0x1B8CB8970](v3, -1, -1);
    }

    v126 = (v0 + 896);
    v8 = *(v0 + 1744);
    v133 = *(v0 + 1672);
    v134 = *(v0 + 1792);
    v9 = *(v0 + 1656);

    v11 = sub_1B802F900(v10, sub_1B802FEE0, sub_1B802FEE0);

    v12 = v11 + 64;
    v13 = -1 << v11[32];
    if (-v13 < 64)
    {
      v14 = ~(-1 << -v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v11 + 8);
    v16 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_locationContinuation;
    *(v0 + 1840) = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_locationContinuation;
    v135 = v11;

    v136 = v16;
    v137 = v9;
    swift_beginAccess();
    v17 = 0;
    v18 = (63 - v13) >> 6;
    v132 = (v8 + 48);
    v127 = (v8 + 8);
    v128 = (v8 + 16);
    v19 = &qword_1B80D2CF0;
    while (v15)
    {
      v35 = v19;
LABEL_16:
      v37 = *(v0 + 1808);
      v38 = *(v0 + 1768);
      v138 = *(v0 + 1736);
      v39 = __clz(__rbit64(v15)) | (v17 << 6);
      v40 = (*(v135 + 6) + 176 * v39);
      v42 = v40[1];
      v41 = v40[2];
      *(v0 + 192) = *v40;
      *(v0 + 208) = v42;
      *(v0 + 224) = v41;
      v43 = v40[6];
      v45 = v40[3];
      v44 = v40[4];
      *(v0 + 272) = v40[5];
      *(v0 + 288) = v43;
      *(v0 + 240) = v45;
      *(v0 + 256) = v44;
      v46 = v40[10];
      v48 = v40[7];
      v47 = v40[8];
      *(v0 + 336) = v40[9];
      *(v0 + 352) = v46;
      *(v0 + 304) = v48;
      *(v0 + 320) = v47;
      v49 = *(v134 + 48);
      sub_1B80337A4(*(v135 + 7) + *(v133 + 72) * v39, v37 + v49, type metadata accessor for Location);
      v51 = *(v0 + 208);
      v50 = *(v0 + 224);
      *v37 = *(v0 + 192);
      v37[1] = v51;
      v37[2] = v50;
      v52 = *(v0 + 288);
      v54 = *(v0 + 240);
      v53 = *(v0 + 256);
      v37[5] = *(v0 + 272);
      v37[6] = v52;
      v37[3] = v54;
      v37[4] = v53;
      v55 = *(v0 + 352);
      v57 = *(v0 + 304);
      v56 = *(v0 + 320);
      v37[9] = *(v0 + 336);
      v37[10] = v55;
      v37[7] = v57;
      v37[8] = v56;
      v58 = *(v0 + 336);
      *(v0 + 144) = *(v0 + 320);
      *(v0 + 160) = v58;
      *(v0 + 176) = *(v0 + 352);
      v59 = *(v0 + 272);
      *(v0 + 80) = *(v0 + 256);
      *(v0 + 96) = v59;
      v60 = *(v0 + 304);
      *(v0 + 112) = *(v0 + 288);
      *(v0 + 128) = v60;
      v61 = *(v0 + 208);
      *(v0 + 16) = *(v0 + 192);
      *(v0 + 32) = v61;
      v62 = *(v0 + 240);
      *(v0 + 48) = *(v0 + 224);
      *(v0 + 64) = v62;
      sub_1B7FB8448(v137 + v136, v38, &qword_1EBA66088, v35);
      if ((*v132)(v38, 1, v138))
      {
        v63 = *(v0 + 1768);
        sub_1B7FC8DA4(v0 + 192, v0 + 368);
        sub_1B7FB86D4(v63, &qword_1EBA66088, v35);
        v31 = 1;
      }

      else
      {
        v20 = *(v0 + 1768);
        v130 = *(v0 + 1736);
        v131 = *(v0 + 1752);
        v129 = v49;
        v21 = *(v0 + 1728);
        (*v128)();
        sub_1B7FC8DA4(v0 + 192, v0 + 544);
        sub_1B7FB86D4(v20, &qword_1EBA66088, v35);
        v22 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660E8, &qword_1B80D2EB0) + 48));
        sub_1B80337A4(v37 + v129, v21, type metadata accessor for Location);
        v24 = *(v0 + 32);
        v23 = *(v0 + 48);
        *v22 = *(v0 + 16);
        v22[1] = v24;
        v22[2] = v23;
        v25 = *(v0 + 112);
        v27 = *(v0 + 64);
        v26 = *(v0 + 80);
        v22[5] = *(v0 + 96);
        v22[6] = v25;
        v22[3] = v27;
        v22[4] = v26;
        v28 = *(v0 + 176);
        v30 = *(v0 + 128);
        v29 = *(v0 + 144);
        v22[9] = *(v0 + 160);
        v22[10] = v28;
        v22[7] = v30;
        v22[8] = v29;
        swift_storeEnumTagMultiPayload();
        sub_1B7FC8DA4(v0 + 16, v0 + 720);
        sub_1B80C92EC();
        (*v127)(v131, v130);
        v31 = 0;
      }

      v19 = v35;
      v15 &= v15 - 1;
      v32 = *(v0 + 1808);
      v33 = *(v0 + 1784);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660E0, &qword_1B80D2EA8);
      (*(*(v34 - 8) + 56))(v33, v31, 1, v34);
      sub_1B7FB86D4(v33, &qword_1EBA660D0, &qword_1B80D2E90);
      sub_1B7FB86D4(v32, &qword_1EBA660D8, &qword_1B80D2E98);
    }

    while (1)
    {
      v36 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        return;
      }

      if (v36 >= v18)
      {
        break;
      }

      v15 = *&v12[8 * v36];
      ++v17;
      if (v15)
      {
        v35 = v19;
        v17 = v36;
        goto LABEL_16;
      }
    }

    v64 = *(v0 + 1832);

    v65 = sub_1B802F900(v64, sub_1B802FA70, sub_1B802FA70);
    *(v0 + 1848) = v65;

    v66 = v65[32];
    *(v0 + 1880) = v66;
    v67 = 1 << v66;
    if (v67 < 64)
    {
      v68 = ~(-1 << v67);
    }

    else
    {
      v68 = -1;
    }

    v69 = v68 & *(v65 + 8);
    swift_beginAccess();
    if (v69)
    {
      v70 = 0;
      v71 = *(v0 + 1848);
LABEL_29:
      v82 = *(v0 + 1800);
      v83 = *(v0 + 1792);
      v84 = *(v0 + 1704);
      v85 = *(v0 + 1696);
      v86 = *(v0 + 1672);
      v87 = __clz(__rbit64(v69));
      v88 = (v69 - 1) & v69;
      v89 = v87 | (v70 << 6);
      v90 = (*(v71 + 48) + 176 * v89);
      v92 = v90[1];
      v91 = v90[2];
      *v126 = *v90;
      *(v0 + 912) = v92;
      *(v0 + 928) = v91;
      v93 = v90[6];
      v95 = v90[3];
      v94 = v90[4];
      *(v0 + 976) = v90[5];
      *(v0 + 992) = v93;
      *(v0 + 944) = v95;
      *(v0 + 960) = v94;
      v96 = v90[10];
      v98 = v90[7];
      v97 = v90[8];
      *(v0 + 1040) = v90[9];
      *(v0 + 1056) = v96;
      *(v0 + 1008) = v98;
      *(v0 + 1024) = v97;
      sub_1B80337A4(*(v71 + 56) + *(v86 + 72) * v89, v85, type metadata accessor for Location);
      v99 = *(v83 + 48);
      v101 = *(v0 + 912);
      v100 = *(v0 + 928);
      *v84 = *v126;
      v84[1] = v101;
      v84[2] = v100;
      v102 = *(v0 + 944);
      v103 = *(v0 + 960);
      v104 = *(v0 + 992);
      v84[5] = *(v0 + 976);
      v84[6] = v104;
      v84[3] = v102;
      v84[4] = v103;
      v105 = *(v0 + 1008);
      v106 = *(v0 + 1024);
      v107 = *(v0 + 1056);
      v84[9] = *(v0 + 1040);
      v84[10] = v107;
      v84[7] = v105;
      v84[8] = v106;
      sub_1B80344D4(v85, v84 + v99, type metadata accessor for Location);
      (*(v82 + 56))(v84, 0, 1, v83);
      sub_1B7FC8DA4(v126, v0 + 1072);
      v81 = v70;
    }

    else
    {
      v80 = 0;
      v81 = (((1 << *(v0 + 1880)) + 63) >> 6) - 1;
      while (v81 != v80)
      {
        v70 = v80 + 1;
        v71 = *(v0 + 1848);
        v69 = *(v71 + 8 * v80++ + 72);
        if (v69)
        {
          goto LABEL_29;
        }
      }

      (*(*(v0 + 1800) + 56))(*(v0 + 1704), 1, 1, *(v0 + 1792));
      v88 = 0;
    }

    *(v0 + 1864) = v81;
    *(v0 + 1856) = v88;
    v108 = *(v0 + 1800);
    v109 = *(v0 + 1792);
    v110 = *(v0 + 1712);
    sub_1B7FC8F2C(*(v0 + 1704), v110, &qword_1EBA660C8, &qword_1B80D2E88);
    if ((*(v108 + 48))(v110, 1, v109) == 1)
    {

      goto LABEL_32;
    }

    v112 = *(v0 + 1792);
    v113 = *(v0 + 1712);
    v114 = *(v0 + 1688);
    v116 = v113[1];
    v115 = v113[2];
    *(v0 + 1248) = *v113;
    *(v0 + 1264) = v116;
    *(v0 + 1280) = v115;
    v117 = v113[5];
    v118 = v113[6];
    v119 = v113[4];
    *(v0 + 1296) = v113[3];
    *(v0 + 1344) = v118;
    *(v0 + 1328) = v117;
    *(v0 + 1312) = v119;
    v120 = v113[9];
    v121 = v113[10];
    v122 = v113[8];
    *(v0 + 1360) = v113[7];
    *(v0 + 1408) = v121;
    *(v0 + 1392) = v120;
    *(v0 + 1376) = v122;
    sub_1B80344D4(v113 + *(v112 + 48), v114, type metadata accessor for Location);
    *(v0 + 1536) = *(v0 + 1360);
    *(v0 + 1552) = *(v0 + 1376);
    *(v0 + 1568) = *(v0 + 1392);
    *(v0 + 1584) = *(v0 + 1408);
    *(v0 + 1472) = *(v0 + 1296);
    *(v0 + 1488) = *(v0 + 1312);
    *(v0 + 1504) = *(v0 + 1328);
    *(v0 + 1520) = *(v0 + 1344);
    *(v0 + 1424) = *(v0 + 1248);
    *(v0 + 1440) = *(v0 + 1264);
    *(v0 + 1456) = *(v0 + 1280);
    v123 = swift_task_alloc();
    *(v0 + 1872) = v123;
    *v123 = v0;
    v123[1] = sub_1B8016E00;
    v124 = *(v0 + 1688);
    v125 = *(v0 + 1680);

    sub_1B8026644(v125, (v0 + 1424), v124);
  }

  else
  {

    v72 = sub_1B80C8FEC();
    v73 = sub_1B80C941C();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = *(v0 + 1648);
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v139[0] = v76;
      *v75 = 136446723;
      *(v75 + 4) = sub_1B7FB84FC(0xD000000000000031, 0x80000001B80CCB10, v139);
      *(v75 + 12) = 2160;
      *(v75 + 14) = 1752392040;
      *(v75 + 22) = 2081;
      v77 = MEMORY[0x1B8CB7B30](v74, &type metadata for Handle);
      v79 = sub_1B7FB84FC(v77, v78, v139);

      *(v75 + 24) = v79;
      _os_log_impl(&dword_1B7FB5000, v72, v73, "%{public}s no valid cached location\nfor handles:%{private,mask.hash}s", v75, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v76, -1, -1);
      MEMORY[0x1B8CB8970](v75, -1, -1);
    }

LABEL_32:

    v111 = *(v0 + 8);

    v111();
  }
}

uint64_t sub_1B8016E00()
{
  v1 = *(*v0 + 1656);

  return MEMORY[0x1EEE6DFA0](sub_1B8016F10, v1, 0);
}

uint64_t sub_1B8016F10()
{
  v1 = (v0 + 1248);
  v2 = *(v0 + 1760);
  v3 = *(v0 + 1744);
  v4 = *(v0 + 1736);
  sub_1B7FB8448(*(v0 + 1656) + *(v0 + 1840), v2, &qword_1EBA66088, &qword_1B80D2CF0);
  if ((*(v3 + 48))(v2, 1, v4))
  {
    v5 = *(v0 + 1760);
    v6 = *(v0 + 1688);
    v7 = *(v0 + 1680);
    sub_1B7FCAD28(v0 + 1248);
    sub_1B803380C(v7, type metadata accessor for Location);
    sub_1B803380C(v6, type metadata accessor for Location);
    sub_1B7FB86D4(v5, &qword_1EBA66088, &qword_1B80D2CF0);
    v8 = 1;
  }

  else
  {
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = *(v0 + 1744);
    v12 = *(v0 + 1736);
    v13 = *(v0 + 1728);
    v82 = *(v0 + 1688);
    v14 = *(v0 + 1680);
    (*(v11 + 16))(v10, v9, v12);
    sub_1B7FB86D4(v9, &qword_1EBA66088, &qword_1B80D2CF0);
    v15 = (v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660E8, &qword_1B80D2EB0) + 48));
    sub_1B80337A4(v14, v13, type metadata accessor for Location);
    v17 = *(v0 + 1264);
    v16 = *(v0 + 1280);
    *v15 = *v1;
    v15[1] = v17;
    v15[2] = v16;
    v18 = *(v0 + 1344);
    v20 = *(v0 + 1296);
    v19 = *(v0 + 1312);
    v15[5] = *(v0 + 1328);
    v15[6] = v18;
    v15[3] = v20;
    v15[4] = v19;
    v21 = *(v0 + 1408);
    v23 = *(v0 + 1360);
    v22 = *(v0 + 1376);
    v15[9] = *(v0 + 1392);
    v15[10] = v21;
    v15[7] = v23;
    v15[8] = v22;
    swift_storeEnumTagMultiPayload();
    sub_1B80C92EC();
    (*(v11 + 8))(v10, v12);
    sub_1B803380C(v14, type metadata accessor for Location);
    sub_1B803380C(v82, type metadata accessor for Location);
    v8 = 0;
  }

  v24 = *(v0 + 1776);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660E0, &qword_1B80D2EA8);
  (*(*(v25 - 8) + 56))(v24, v8, 1, v25);
  result = sub_1B7FB86D4(v24, &qword_1EBA660D0, &qword_1B80D2E90);
  v27 = *(v0 + 1864);
  v28 = *(v0 + 1856);
  if (v28)
  {
    v29 = *(v0 + 1848);
LABEL_14:
    v34 = *(v0 + 1800);
    v35 = *(v0 + 1792);
    v36 = *(v0 + 1704);
    v37 = *(v0 + 1696);
    v38 = *(v0 + 1672);
    v39 = (v28 - 1) & v28;
    v40 = __clz(__rbit64(v28)) | (v27 << 6);
    v41 = (*(v29 + 48) + 176 * v40);
    v43 = v41[1];
    v42 = v41[2];
    *(v0 + 896) = *v41;
    *(v0 + 912) = v43;
    *(v0 + 928) = v42;
    v44 = v41[6];
    v46 = v41[3];
    v45 = v41[4];
    *(v0 + 976) = v41[5];
    *(v0 + 992) = v44;
    *(v0 + 944) = v46;
    *(v0 + 960) = v45;
    v47 = v41[10];
    v49 = v41[7];
    v48 = v41[8];
    *(v0 + 1040) = v41[9];
    *(v0 + 1056) = v47;
    *(v0 + 1008) = v49;
    *(v0 + 1024) = v48;
    sub_1B80337A4(*(v29 + 56) + *(v38 + 72) * v40, v37, type metadata accessor for Location);
    v50 = *(v35 + 48);
    v52 = *(v0 + 912);
    v51 = *(v0 + 928);
    *v36 = *(v0 + 896);
    v36[1] = v52;
    v36[2] = v51;
    v53 = *(v0 + 944);
    v54 = *(v0 + 960);
    v55 = *(v0 + 992);
    v36[5] = *(v0 + 976);
    v36[6] = v55;
    v36[3] = v53;
    v36[4] = v54;
    v56 = *(v0 + 1008);
    v57 = *(v0 + 1024);
    v58 = *(v0 + 1056);
    v36[9] = *(v0 + 1040);
    v36[10] = v58;
    v36[7] = v56;
    v36[8] = v57;
    sub_1B80344D4(v37, v36 + v50, type metadata accessor for Location);
    (*(v34 + 56))(v36, 0, 1, v35);
    sub_1B7FC8DA4(v0 + 896, v0 + 1072);
    v32 = v27;
LABEL_15:
    *(v0 + 1864) = v32;
    *(v0 + 1856) = v39;
    v59 = *(v0 + 1800);
    v60 = *(v0 + 1792);
    v61 = *(v0 + 1712);
    sub_1B7FC8F2C(*(v0 + 1704), v61, &qword_1EBA660C8, &qword_1B80D2E88);
    if ((*(v59 + 48))(v61, 1, v60) == 1)
    {

      v62 = *(v0 + 8);

      return v62();
    }

    else
    {
      v63 = *(v0 + 1792);
      v64 = *(v0 + 1712);
      v65 = *(v0 + 1688);
      v67 = v64[1];
      v66 = v64[2];
      *v1 = *v64;
      *(v0 + 1264) = v67;
      *(v0 + 1280) = v66;
      v68 = v64[6];
      v70 = v64[3];
      v69 = v64[4];
      *(v0 + 1328) = v64[5];
      *(v0 + 1344) = v68;
      *(v0 + 1296) = v70;
      *(v0 + 1312) = v69;
      v71 = v64[10];
      v73 = v64[7];
      v72 = v64[8];
      *(v0 + 1392) = v64[9];
      *(v0 + 1408) = v71;
      *(v0 + 1360) = v73;
      *(v0 + 1376) = v72;
      sub_1B80344D4(v64 + *(v63 + 48), v65, type metadata accessor for Location);
      v74 = *(v0 + 1344);
      *(v0 + 1536) = *(v0 + 1360);
      v75 = *(v0 + 1392);
      *(v0 + 1552) = *(v0 + 1376);
      *(v0 + 1568) = v75;
      *(v0 + 1584) = *(v0 + 1408);
      v76 = *(v0 + 1280);
      *(v0 + 1472) = *(v0 + 1296);
      v77 = *(v0 + 1328);
      *(v0 + 1488) = *(v0 + 1312);
      *(v0 + 1504) = v77;
      *(v0 + 1520) = v74;
      v78 = *(v0 + 1264);
      *(v0 + 1424) = *v1;
      *(v0 + 1440) = v78;
      *(v0 + 1456) = v76;
      v79 = swift_task_alloc();
      *(v0 + 1872) = v79;
      *v79 = v0;
      v79[1] = sub_1B8016E00;
      v80 = *(v0 + 1688);
      v81 = *(v0 + 1680);

      return sub_1B8026644(v81, (v0 + 1424), v80);
    }
  }

  else
  {
    v30 = ((1 << *(v0 + 1880)) + 63) >> 6;
    if (v30 <= (v27 + 1))
    {
      v31 = v27 + 1;
    }

    else
    {
      v31 = ((1 << *(v0 + 1880)) + 63) >> 6;
    }

    v32 = v31 - 1;
    while (1)
    {
      v33 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v33 >= v30)
      {
        (*(*(v0 + 1800) + 56))(*(v0 + 1704), 1, 1, *(v0 + 1792));
        v39 = 0;
        goto LABEL_15;
      }

      v29 = *(v0 + 1848);
      v28 = *(v29 + 8 * v33 + 64);
      ++v27;
      if (v28)
      {
        v27 = v33;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B8017590(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = v5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 48) = *v5;
  *(v6 + 104) = *a3;
  *(v6 + 105) = *a4;
  *(v6 + 56) = *(a4 + 8);
  *(v6 + 72) = *(a4 + 24);
  return MEMORY[0x1EEE6DFA0](sub_1B80175FC, v5, 0);
}

uint64_t sub_1B80175FC()
{
  v1 = *(v0 + 72);
  v13 = *(v0 + 56);
  v2 = *(v0 + 105);
  v3 = *(v0 + 104);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v14 = sub_1B7FCD170(&unk_1ED8DD838, _s18LocationConnectionCMa, &unk_1B80D2CA0);
  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  *(v8 + 16) = v4;
  *(v8 + 24) = v6;
  *(v8 + 32) = v3;
  *(v8 + 33) = 0;
  *(v8 + 40) = v2;
  *(v8 + 48) = v13;
  *(v8 + 64) = v1;
  *(v8 + 72) = v7;
  *(v8 + 80) = v5;
  v9 = swift_task_alloc();
  *(v0 + 88) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660B0, &qword_1B80D2E20);
  *v9 = v0;
  v9[1] = sub_1B8017788;
  v11 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v11, v4, v14, 0xD000000000000049, 0x80000001B80CCA30, sub_1B8031CF4, v8, v10);
}

uint64_t sub_1B8017788()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {
    v3 = v2[5];

    return MEMORY[0x1EEE6DFA0](sub_1B803490C, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1B80178C4(uint64_t a1, uint64_t a2, _BYTE *a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 32) = a6;
  *(v7 + 40) = v6;
  *(v7 + 104) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 48) = *v6;
  *(v7 + 105) = *a3;
  *(v7 + 106) = *a5;
  *(v7 + 56) = *(a5 + 8);
  *(v7 + 72) = *(a5 + 24);
  return MEMORY[0x1EEE6DFA0](sub_1B8017934, v6, 0);
}

uint64_t sub_1B8017934()
{
  v1 = *(v0 + 72);
  v14 = *(v0 + 56);
  v2 = *(v0 + 106);
  v3 = *(v0 + 105);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 104);
  v8 = *(v0 + 24);
  v7 = *(v0 + 32);
  v15 = sub_1B7FCD170(&unk_1ED8DD838, _s18LocationConnectionCMa, &unk_1B80D2CA0);
  v9 = swift_task_alloc();
  *(v0 + 80) = v9;
  *(v9 + 16) = v4;
  *(v9 + 24) = v8;
  *(v9 + 32) = v3;
  *(v9 + 33) = v6;
  *(v9 + 40) = v2;
  *(v9 + 48) = v14;
  *(v9 + 64) = v1;
  *(v9 + 72) = v7;
  *(v9 + 80) = v5;
  v10 = swift_task_alloc();
  *(v0 + 88) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660B0, &qword_1B80D2E20);
  *v10 = v0;
  v10[1] = sub_1B8017AC4;
  v12 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v12, v4, v15, 0xD000000000000049, 0x80000001B80CCA30, sub_1B8034908, v9, v11);
}

uint64_t sub_1B8017AC4()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {
    v3 = v2[5];

    return MEMORY[0x1EEE6DFA0](sub_1B8017C00, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1B8017C00()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_1B8017C64(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v43 = a7;
  v44 = a8;
  v40 = a5;
  v41 = a6;
  v38 = a4;
  v37 = a3;
  v45 = a11;
  v39 = a9;
  v34 = a10;
  v35 = a2;
  v12 = sub_1B80C8E9C();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v42 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ClientID(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v33 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660B8, &qword_1B80D2E28);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v33 - v20;
  v36 = sub_1B80C8A0C();
  v22 = swift_allocObject();
  swift_weakInit();
  (*(v18 + 16))(v21, a1, v17);
  sub_1B80337A4(v34, &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ClientID);
  v23 = (*(v18 + 80) + 24) & ~*(v18 + 80);
  v24 = (v19 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 17) & 0xFFFFFFFFFFFFFFF8;
  v26 = (*(v15 + 80) + v25 + 32) & ~*(v15 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v22;
  (*(v18 + 32))(v27 + v23, v21, v17);
  v28 = v27 + v24;
  *v28 = v37;
  *(v28 + 8) = v38;
  v29 = v41;
  *(v28 + 9) = v40;
  v30 = v27 + v25;
  *v30 = v29;
  v31 = v44;
  *(v30 + 8) = v43;
  *(v30 + 16) = v31;
  *(v30 + 24) = v39;
  sub_1B80344D4(v33, v27 + v26, type metadata accessor for ClientID);
  *(v27 + ((v16 + v26 + 7) & 0xFFFFFFFFFFFFFFF8)) = v45;

  _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
  sub_1B80C89EC();

  sub_1B80C8A3C();

  return result;
}

uint64_t sub_1B8017FE8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = v12;
  *(v8 + 136) = v13;
  *(v8 + 112) = a7;
  *(v8 + 120) = a8;
  *(v8 + 203) = a6;
  *(v8 + 202) = a5;
  *(v8 + 201) = a4;
  *(v8 + 96) = a2;
  *(v8 + 104) = a3;
  *(v8 + 88) = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660B0, &qword_1B80D2E20);
  *(v8 + 144) = v9;
  *(v8 + 152) = *(v9 - 8);
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B80180E0, 0, 0);
}

uint64_t sub_1B80180E0()
{
  v19 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 176) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 203);
    *(v0 + 200) = *(v0 + 201);
    *(v0 + 16) = v2;
    v3 = *(v0 + 128);
    *(v0 + 24) = *(v0 + 112);
    *(v0 + 40) = v3;
    v4 = swift_task_alloc();
    *(v0 + 184) = v4;
    *v4 = v0;
    v4[1] = sub_1B8018394;
    v5 = *(v0 + 168);
    v6 = *(v0 + 136);
    v7 = *(v0 + 202);
    v8 = *(v0 + 104);

    return sub_1B8018654(v5, v8, (v0 + 200), v7, v0 + 16, v6);
  }

  else
  {
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v10 = sub_1B80C900C();
    __swift_project_value_buffer(v10, qword_1ED8DDF28);
    v11 = sub_1B80C8FEC();
    v12 = sub_1B80C941C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18 = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_1B7FB84FC(0xD000000000000049, 0x80000001B80CCA30, &v18);
      _os_log_impl(&dword_1B7FB5000, v11, v12, "%{public}s - LocationConnection is nil, during enqueued WorkItem", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x1B8CB8970](v14, -1, -1);
      MEMORY[0x1B8CB8970](v13, -1, -1);
    }

    sub_1B8010040();
    v15 = swift_allocError();
    *v16 = 10;
    *(v0 + 72) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660B8, &qword_1B80D2E28);
    sub_1B80C927C();

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1B8018394()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1B8018594;
  }

  else
  {
    v2 = sub_1B80184A8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B80184A8()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[18];
  (*(v2 + 16))(v0[20], v1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660B8, &qword_1B80D2E28);
  sub_1B80C928C();

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B8018594()
{
  v1 = v0[24];
  v0[10] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660B8, &qword_1B80D2E28);
  sub_1B80C927C();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B8018654(uint64_t a1, uint64_t a2, _BYTE *a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 832) = a6;
  *(v7 + 840) = v6;
  *(v7 + 974) = a4;
  *(v7 + 824) = a2;
  *(v7 + 816) = a1;
  *(v7 + 848) = *v6;
  v10 = *(type metadata accessor for ClientID(0) - 8);
  *(v7 + 856) = v10;
  *(v7 + 864) = *(v10 + 64);
  *(v7 + 872) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66088, &qword_1B80D2CF0);
  *(v7 + 880) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660C0, &qword_1B80D2E50);
  *(v7 + 888) = v11;
  *(v7 + 896) = *(v11 - 8);
  *(v7 + 904) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66078, &qword_1B80D2C10);
  *(v7 + 912) = v12;
  *(v7 + 920) = *(v12 - 8);
  *(v7 + 928) = swift_task_alloc();
  *(v7 + 975) = *a3;
  *(v7 + 976) = *a5;
  *(v7 + 936) = *(a5 + 8);
  *(v7 + 952) = *(a5 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1B801888C, v6, 0);
}

unint64_t sub_1B801888C()
{
  v85 = v0;
  v1 = *(v0 + 824);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v5 = v3[1];
      v4 = v3[2];
      *(v0 + 16) = *v3;
      *(v0 + 32) = v5;
      *(v0 + 48) = v4;
      v6 = v3[6];
      v8 = v3[3];
      v7 = v3[4];
      *(v0 + 96) = v3[5];
      *(v0 + 112) = v6;
      *(v0 + 64) = v8;
      *(v0 + 80) = v7;
      v9 = v3[10];
      v11 = v3[7];
      v10 = v3[8];
      *(v0 + 160) = v3[9];
      *(v0 + 176) = v9;
      *(v0 + 128) = v11;
      *(v0 + 144) = v10;
      v12 = *(v0 + 975);
      v13 = v3[9];
      v82 = v3[8];
      v83 = v13;
      v84 = v3[10];
      v14 = v3[5];
      v78 = v3[4];
      v79 = v14;
      v15 = v3[7];
      v80 = v3[6];
      v81 = v15;
      v16 = v3[1];
      v74 = *v3;
      v75 = v16;
      v17 = v3[3];
      v76 = v3[2];
      v77 = v17;
      sub_1B7FC8DA4(v0 + 16, v0 + 192);
      sub_1B8032820(&v74, v12);
      v18 = v83;
      *(v0 + 672) = v82;
      *(v0 + 688) = v18;
      *(v0 + 704) = v84;
      v19 = v79;
      *(v0 + 608) = v78;
      *(v0 + 624) = v19;
      v20 = v81;
      *(v0 + 640) = v80;
      *(v0 + 656) = v20;
      v21 = v75;
      *(v0 + 544) = v74;
      *(v0 + 560) = v21;
      v22 = v77;
      *(v0 + 576) = v76;
      *(v0 + 592) = v22;
      sub_1B7FCAD28(v0 + 544);
      v3 += 11;
      --v2;
    }

    while (v2);
  }

  v23 = *(v0 + 928);
  v24 = *(v0 + 920);
  v25 = *(v0 + 912);
  v26 = *(v0 + 904);
  v27 = *(v0 + 896);
  v28 = *(v0 + 888);
  v29 = *(v0 + 880);
  v72 = *(v0 + 840);
  v73 = *(v0 + 974);
  type metadata accessor for LocationStreamChange(0);
  (*(v27 + 104))(v26, *MEMORY[0x1E69E8650], v28);
  sub_1B80C92DC();
  (*(v27 + 8))(v26, v28);
  (*(v24 + 16))(v29, v23, v25);
  (*(v24 + 56))(v29, 0, 1, v25);
  v30 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_locationContinuation;
  swift_beginAccess();
  sub_1B8032A88(v29, v72 + v30);
  swift_endAccess();
  v31 = *(v0 + 824);
  swift_beginAccess();
  if (v73 == 1)
  {

    sub_1B8031EE0(v32);
    swift_endAccess();
  }

  else
  {
    sub_1B8030C8C(v31);
    swift_endAccess();
  }

  v33 = *(v0 + 840);
  v34 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_handlesForLocationRefreshing;
  v35 = *(v0 + 975);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v74 = *(v33 + v34);
  v37 = v74;
  *(v33 + v34) = 0x8000000000000000;
  result = sub_1B7FDA504(v35);
  v40 = v37[2];
  v41 = (v39 & 1) == 0;
  v42 = __OFADD__(v40, v41);
  v43 = v40 + v41;
  if (v42)
  {
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v35) = v39;
  if (v37[3] >= v43)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_14;
    }

LABEL_24:
    v61 = result;
    sub_1B809230C();
    result = v61;
    v37 = v74;
    *(v33 + v34) = v74;
    if ((v35 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  v44 = *(v0 + 975);
  sub_1B8090F00(v43, isUniquelyReferenced_nonNull_native);
  v37 = v74;
  result = sub_1B7FDA504(v44);
  if ((v35 & 1) != (v45 & 1))
  {

    return sub_1B80C986C();
  }

LABEL_14:
  *(v33 + v34) = v37;
  if ((v35 & 1) == 0)
  {
LABEL_15:
    v46 = *(v0 + 975);
    v37[(result >> 6) + 8] |= 1 << result;
    *(v37[6] + result) = v46;
    *(v37[7] + 8 * result) = MEMORY[0x1E69E7CD0];
    v47 = v37[2];
    v42 = __OFADD__(v47, 1);
    v48 = v47 + 1;
    if (v42)
    {
      __break(1u);
      return result;
    }

    v37[2] = v48;
  }

LABEL_17:
  v49 = *(v0 + 975);

  sub_1B8031EE0(v50);
  swift_endAccess();

  if (v49 == 2)
  {
    v51 = sub_1B80C981C();
    v69 = 2;
  }

  else
  {
    v69 = 1;
    v51 = 1;
  }

  v52 = *(v0 + 952);
  v65 = *(v0 + 936);
  v63 = *(v0 + 975);
  v64 = *(v0 + 976);
  v66 = *(v0 + 944);
  v67 = *(v0 + 920);
  v70 = *(v0 + 912);
  v71 = *(v0 + 928);
  v53 = *(v0 + 872);
  v62 = *(v0 + 864);
  v54 = *(v0 + 856);
  v68 = *(v0 + 848);
  v55 = *(v0 + 832);
  v56 = *(v0 + 824);

  v57 = swift_allocObject();
  swift_weakInit();
  sub_1B80337A4(v55, v53, type metadata accessor for ClientID);
  v58 = (*(v54 + 80) + 77) & ~*(v54 + 80);
  v59 = swift_allocObject();
  *(v59 + 16) = v57;
  *(v59 + 24) = v56;
  *(v59 + 32) = v63;
  *(v59 + 33) = *(v0 + 960);
  *(v59 + 36) = *(v0 + 963);
  *(v59 + 40) = v64;
  *(v59 + 41) = *(v0 + 967);
  *(v59 + 44) = *(v0 + 970);
  *(v59 + 48) = v65;
  *(v59 + 56) = v66;
  *(v59 + 64) = v52;
  *(v59 + 72) = v51 & 1;
  *(v59 + 73) = v69;
  *(v59 + 74) = 259;
  *(v59 + 76) = 0;
  sub_1B80344D4(v53, v59 + v58, type metadata accessor for ClientID);
  *(v59 + ((v62 + v58 + 7) & 0xFFFFFFFFFFFFFFF8)) = v68;

  sub_1B80C8A2C();

  (*(v67 + 8))(v71, v70);

  v60 = *(v0 + 8);

  return v60();
}

uint64_t sub_1B8018FD8(uint64_t a1, _BYTE *a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 96) = a4;
  *(v6 + 24) = a5;
  *(v6 + 32) = v5;
  *(v6 + 16) = a1;
  *(v6 + 40) = *v5;
  *(v6 + 97) = *a2;
  *(v6 + 98) = *a3;
  *(v6 + 48) = *(a3 + 8);
  *(v6 + 64) = *(a3 + 24);
  return MEMORY[0x1EEE6DFA0](sub_1B8019048, v5, 0);
}

uint64_t sub_1B8019048()
{
  v1 = *(v0 + 64);
  v13 = *(v0 + 48);
  v2 = *(v0 + 98);
  v3 = *(v0 + 97);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 96);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v14 = sub_1B7FCD170(&unk_1ED8DD838, _s18LocationConnectionCMa, &unk_1B80D2CA0);
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *(v9 + 16) = v4;
  *(v9 + 24) = v7;
  *(v9 + 32) = v3;
  *(v9 + 40) = v2;
  *(v9 + 48) = v13;
  *(v9 + 64) = v1;
  *(v9 + 72) = v6;
  *(v9 + 80) = v8;
  *(v9 + 88) = v5;
  v10 = swift_task_alloc();
  *(v0 + 80) = v10;
  *v10 = v0;
  v10[1] = sub_1B80191C4;
  v11 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v10, v4, v14, 0xD00000000000004CLL, 0x80000001B80CCD30, sub_1B8033D94, v9, v11);
}

uint64_t sub_1B80191C4()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_1B80192EC;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_1B7FFAF5C;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B80192EC()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_1B8019350(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11)
{
  v41 = a7;
  v42 = a8;
  v40 = a6;
  v36 = a4;
  v35 = a3;
  v33 = a2;
  v37 = a9;
  v38 = a5;
  v43 = a11;
  v12 = sub_1B80C8E9C();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v39 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ClientID(0);
  v32 = *(v14 - 8);
  v15 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v31 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v31 - v19;
  v34 = sub_1B80C8A0C();
  v21 = swift_allocObject();
  swift_weakInit();
  (*(v17 + 16))(v20, a1, v16);
  sub_1B80337A4(a10, &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ClientID);
  v22 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v23 = (v22 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v22 + v18 + 23) & 0xFFFFFFFFFFFFFFF8;
  v25 = (*(v32 + 80) + v24 + 33) & ~*(v32 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v21;
  (*(v17 + 32))(v26 + v22, v20, v16);
  v27 = v26 + v23;
  *v27 = v35;
  *(v27 + 8) = v36;
  v28 = v26 + v24;
  *v28 = v38;
  v29 = v41;
  *(v28 + 8) = v40;
  *(v28 + 16) = v29;
  *(v28 + 24) = v42;
  *(v28 + 32) = v37;
  sub_1B80344D4(v31, v26 + v25, type metadata accessor for ClientID);
  *(v26 + ((v15 + v25 + 7) & 0xFFFFFFFFFFFFFFF8)) = v43;

  _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
  sub_1B80C89EC();

  sub_1B80C8A3C();

  return result;
}

uint64_t sub_1B80196DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = a8;
  *(v8 + 136) = v11;
  *(v8 + 171) = v10;
  *(v8 + 112) = a6;
  *(v8 + 120) = a7;
  *(v8 + 170) = a5;
  *(v8 + 169) = a4;
  *(v8 + 96) = a2;
  *(v8 + 104) = a3;
  *(v8 + 88) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B8019720, 0, 0);
}

uint64_t sub_1B8019720()
{
  v18 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 144) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 170);
    *(v0 + 168) = *(v0 + 169);
    *(v0 + 16) = v2;
    v3 = *(v0 + 128);
    *(v0 + 24) = *(v0 + 112);
    *(v0 + 40) = v3;
    v4 = swift_task_alloc();
    *(v0 + 152) = v4;
    *v4 = v0;
    v4[1] = sub_1B80199C0;
    v5 = *(v0 + 136);
    v6 = *(v0 + 171);
    v7 = *(v0 + 104);

    return sub_1B8019C0C(v7, (v0 + 168), v0 + 16, v6, v5);
  }

  else
  {
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v9 = sub_1B80C900C();
    __swift_project_value_buffer(v9, qword_1ED8DDF28);
    v10 = sub_1B80C8FEC();
    v11 = sub_1B80C941C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_1B7FB84FC(0xD00000000000004CLL, 0x80000001B80CCD30, &v17);
      _os_log_impl(&dword_1B7FB5000, v10, v11, "%{public}s - LocationConnection is nil, during enqueued WorkItem", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x1B8CB8970](v13, -1, -1);
      MEMORY[0x1B8CB8970](v12, -1, -1);
    }

    sub_1B8010040();
    v14 = swift_allocError();
    *v15 = 10;
    *(v0 + 72) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
    sub_1B80C927C();
    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_1B80199C0()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1B8019B5C;
  }

  else
  {
    v2 = sub_1B8019AD4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B8019AD4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  sub_1B80C928C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B8019B5C()
{
  v1 = v0[20];
  v0[10] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  sub_1B80C927C();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B8019C0C(uint64_t a1, _BYTE *a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 832) = v5;
  *(v6 + 824) = a5;
  *(v6 + 918) = a4;
  *(v6 + 816) = a1;
  *(v6 + 840) = *v5;
  v9 = *(type metadata accessor for ClientID(0) - 8);
  *(v6 + 848) = v9;
  *(v6 + 856) = *(v9 + 64);
  *(v6 + 864) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66088, &qword_1B80D2CF0);
  *(v6 + 872) = swift_task_alloc();
  *(v6 + 919) = *a2;
  *(v6 + 920) = *a3;
  *(v6 + 880) = *(a3 + 8);
  *(v6 + 896) = *(a3 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1B8019D6C, v5, 0);
}

unint64_t sub_1B8019D6C()
{
  v94 = v0;
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  __swift_project_value_buffer(v1, qword_1ED8DDF28);

  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 816);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v83 = v6;
    *v5 = 136446723;
    *(v5 + 4) = sub_1B7FB84FC(0xD00000000000004DLL, 0x80000001B80CCD80, &v83);
    *(v5 + 12) = 2160;
    *(v5 + 14) = 1752392040;
    *(v5 + 22) = 2081;
    v7 = MEMORY[0x1B8CB7B30](v4, &type metadata for Handle);
    v9 = sub_1B7FB84FC(v7, v8, &v83);

    *(v5 + 24) = v9;
    _os_log_impl(&dword_1B7FB5000, v2, v3, "%{public}s with handles: %{private,mask.hash}s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v6, -1, -1);
    MEMORY[0x1B8CB8970](v5, -1, -1);
  }

  v10 = *(v0 + 872);
  v11 = *(v0 + 832);
  v12 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_locationContinuation;
  swift_beginAccess();
  sub_1B7FB8448(v11 + v12, v10, &qword_1EBA66088, &qword_1B80D2CF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66078, &qword_1B80D2C10);
  LODWORD(v11) = (*(*(v13 - 8) + 48))(v10, 1, v13);
  sub_1B7FB86D4(v10, &qword_1EBA66088, &qword_1B80D2CF0);
  if (v11 == 1)
  {
    v14 = sub_1B80C8FEC();
    v15 = sub_1B80C93FC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v83 = v17;
      *v16 = 136446210;
      *(v16 + 4) = sub_1B7FB84FC(0xD00000000000004DLL, 0x80000001B80CCD80, &v83);
      _os_log_impl(&dword_1B7FB5000, v14, v15, "%{public}s locationContinuation is nil", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1B8CB8970](v17, -1, -1);
      MEMORY[0x1B8CB8970](v16, -1, -1);
    }

    sub_1B8010040();
    swift_allocError();
    *v18 = 5;
    swift_willThrow();

    v19 = *(v0 + 8);
LABEL_32:

    return v19();
  }

  v20 = *(v0 + 816);
  if (*(v0 + 918) == 1)
  {
    swift_beginAccess();

    sub_1B8031EE0(v21);
    swift_endAccess();
  }

  else
  {
    swift_beginAccess();
    sub_1B8030C8C(v20);
    swift_endAccess();
  }

  v22 = *(v0 + 832);
  v23 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_handlesForLocationRefreshing;
  v24 = *(v0 + 919);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v83 = *(v22 + v23);
  v26 = v83;
  *(v22 + v23) = 0x8000000000000000;
  result = sub_1B7FDA504(v24);
  v29 = v26[2];
  v30 = (v28 & 1) == 0;
  v31 = __OFADD__(v29, v30);
  v32 = v29 + v30;
  if (v31)
  {
    __break(1u);
    goto LABEL_36;
  }

  LOBYTE(v24) = v28;
  if (v26[3] >= v32)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_19:
      *(v22 + v23) = v26;
      if ((v24 & 1) == 0)
      {
LABEL_20:
        v35 = *(v0 + 919);
        v26[(result >> 6) + 8] |= 1 << result;
        *(v26[6] + result) = v35;
        *(v26[7] + 8 * result) = MEMORY[0x1E69E7CD0];
        v36 = v26[2];
        v31 = __OFADD__(v36, 1);
        v37 = v36 + 1;
        if (v31)
        {
          __break(1u);
          return result;
        }

        v26[2] = v37;
      }

LABEL_22:
      v38 = *(v0 + 919);

      sub_1B8031EE0(v39);
      swift_endAccess();

      if (v38 == 2)
      {
        v40 = sub_1B80C981C();
      }

      else
      {
        v40 = 1;
      }

      v41 = *(v0 + 816);

      v42 = *(v41 + 16);
      if (v42)
      {
        v43 = (*(v0 + 816) + 32);
        do
        {
          v44 = *(v0 + 832);
          v46 = v43[1];
          v45 = v43[2];
          *(v0 + 16) = *v43;
          *(v0 + 32) = v46;
          *(v0 + 48) = v45;
          v47 = v43[6];
          v49 = v43[3];
          v48 = v43[4];
          *(v0 + 96) = v43[5];
          *(v0 + 112) = v47;
          *(v0 + 64) = v49;
          *(v0 + 80) = v48;
          v50 = v43[10];
          v52 = v43[7];
          v51 = v43[8];
          *(v0 + 160) = v43[9];
          *(v0 + 176) = v50;
          *(v0 + 128) = v52;
          *(v0 + 144) = v51;
          v53 = *(v0 + 919);
          v54 = v43[9];
          v91 = v43[8];
          v92 = v54;
          v93 = v43[10];
          v55 = v43[5];
          v87 = v43[4];
          v88 = v55;
          v56 = v43[7];
          v89 = v43[6];
          v90 = v56;
          v57 = v43[1];
          v83 = *v43;
          v84 = v57;
          v58 = v43[3];
          v85 = v43[2];
          v86 = v58;
          sub_1B7FC8DA4(v0 + 16, v0 + 192);
          sub_1B8032DE0(&v83, v53, v44);
          v59 = v92;
          *(v0 + 672) = v91;
          *(v0 + 688) = v59;
          *(v0 + 704) = v93;
          v60 = v88;
          *(v0 + 608) = v87;
          *(v0 + 624) = v60;
          v61 = v90;
          *(v0 + 640) = v89;
          *(v0 + 656) = v61;
          v62 = v84;
          *(v0 + 544) = v83;
          *(v0 + 560) = v62;
          v63 = v86;
          *(v0 + 576) = v85;
          *(v0 + 592) = v63;
          sub_1B7FCAD28(v0 + 544);
          v43 += 11;
          --v42;
        }

        while (v42);
      }

      v80 = *(v0 + 880);
      v77 = *(v0 + 919);
      v64 = *(v0 + 864);
      v65 = *(v0 + 856);
      v66 = v40;
      v67 = *(v0 + 848);
      v81 = *(v0 + 896);
      v82 = *(v0 + 840);
      v68 = v38;
      v69 = *(v0 + 824);
      v70 = *(v0 + 816);
      if (v68 == 2)
      {
        v71 = 2;
      }

      else
      {
        v71 = 1;
      }

      v78 = v71;
      v79 = *(v0 + 920);
      v76 = v66 & 1;
      v72 = swift_allocObject();
      swift_weakInit();
      sub_1B80337A4(v69, v64, type metadata accessor for ClientID);
      v73 = (*(v67 + 80) + 77) & ~*(v67 + 80);
      v74 = swift_allocObject();
      *(v74 + 16) = v72;
      *(v74 + 24) = v70;
      *(v74 + 32) = v77;
      *(v74 + 33) = *(v0 + 904);
      *(v74 + 36) = *(v0 + 907);
      *(v74 + 40) = v79;
      *(v74 + 41) = *(v0 + 911);
      *(v74 + 44) = *(v0 + 914);
      *(v74 + 48) = v80;
      *(v74 + 64) = v81;
      *(v74 + 72) = v76;
      *(v74 + 73) = v78;
      *(v74 + 74) = 259;
      *(v74 + 76) = 0;
      sub_1B80344D4(v64, v74 + v73, type metadata accessor for ClientID);
      *(v74 + ((v65 + v73 + 7) & 0xFFFFFFFFFFFFFFF8)) = v82;

      sub_1B80C8A2C();

      v19 = *(v0 + 8);
      goto LABEL_32;
    }

LABEL_36:
    v75 = result;
    sub_1B809230C();
    result = v75;
    v26 = v83;
    *(v22 + v23) = v83;
    if ((v24 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  v33 = *(v0 + 919);
  sub_1B8090F00(v32, isUniquelyReferenced_nonNull_native);
  v26 = v83;
  result = sub_1B7FDA504(v33);
  if ((v24 & 1) == (v34 & 1))
  {
    goto LABEL_19;
  }

  return sub_1B80C986C();
}

uint64_t sub_1B801A6B8(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  *(v4 + 40) = *v3;
  *(v4 + 72) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1B801A70C, v3, 0);
}

uint64_t sub_1B801A70C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = sub_1B7FCD170(&unk_1ED8DD838, _s18LocationConnectionCMa, &unk_1B80D2CA0);
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *(v7 + 16) = v2;
  *(v7 + 24) = v5;
  *(v7 + 32) = v1;
  *(v7 + 40) = v4;
  *(v7 + 48) = v3;
  v8 = swift_task_alloc();
  *(v0 + 56) = v8;
  *v8 = v0;
  v8[1] = sub_1B801A858;
  v9 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v8, v2, v6, 0xD000000000000032, 0x80000001B80CCCB0, sub_1B8033AF8, v7, v9);
}

uint64_t sub_1B801A858()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_1B7FF8E48;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_1B8011C90;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

double sub_1B801A980(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v29 = a6;
  v25 = a5;
  v26 = a3;
  v28 = a4;
  v24[1] = a2;
  v7 = sub_1B80C8E9C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v27 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ClientID(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v24 - v15;
  v24[2] = sub_1B80C8A0C();
  v17 = swift_allocObject();
  swift_weakInit();
  (*(v13 + 16))(v16, a1, v12);
  sub_1B80337A4(v25, v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ClientID);
  v18 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v19 = (v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v10 + 80) + v19 + 9) & ~*(v10 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v17;
  (*(v13 + 32))(v21 + v18, v16, v12);
  v22 = v21 + v19;
  *v22 = v26;
  *(v22 + 8) = v28;
  sub_1B80344D4(v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for ClientID);
  *(v21 + ((v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v29;

  _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
  sub_1B80C89EC();

  sub_1B80C8A3C();

  return result;
}

uint64_t sub_1B801ACBC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 113) = a4;
  *(v5 + 72) = a3;
  *(v5 + 80) = a5;
  *(v5 + 56) = a1;
  *(v5 + 64) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B801ACE4, 0, 0);
}

uint64_t sub_1B801ACE4()
{
  v15 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    *(v0 + 112) = *(v0 + 113);
    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_1B801AF5C;
    v4 = *(v0 + 72);
    v3 = *(v0 + 80);

    return sub_1B801B1A8(v4, (v0 + 112), v3);
  }

  else
  {
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v6 = sub_1B80C900C();
    __swift_project_value_buffer(v6, qword_1ED8DDF28);
    v7 = sub_1B80C8FEC();
    v8 = sub_1B80C941C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_1B7FB84FC(0xD000000000000032, 0x80000001B80CCCB0, &v14);
      _os_log_impl(&dword_1B7FB5000, v7, v8, "%{public}s - LocationConnection is nil, during enqueued WorkItem", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x1B8CB8970](v10, -1, -1);
      MEMORY[0x1B8CB8970](v9, -1, -1);
    }

    sub_1B8010040();
    v11 = swift_allocError();
    *v12 = 10;
    *(v0 + 40) = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
    sub_1B80C927C();
    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_1B801AF5C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1B801B0F8;
  }

  else
  {
    v2 = sub_1B801B070;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B801B070()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  sub_1B80C928C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B801B0F8()
{
  v1 = v0[13];
  v0[6] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  sub_1B80C927C();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B801B1A8(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v4 + 672) = v3;
  *(v4 + 664) = a3;
  *(v4 + 656) = a1;
  v6 = *(type metadata accessor for ClientID(0) - 8);
  *(v4 + 680) = v6;
  *(v4 + 688) = *(v6 + 64);
  *(v4 + 696) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66078, &qword_1B80D2C10);
  *(v4 + 704) = v7;
  *(v4 + 712) = *(v7 - 8);
  *(v4 + 720) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66088, &qword_1B80D2CF0);
  *(v4 + 728) = swift_task_alloc();
  *(v4 + 736) = swift_task_alloc();
  *(v4 + 744) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1B801B334, v3, 0);
}

uint64_t sub_1B801B334()
{
  v51 = v0;
  v48 = (v0 + 576);
  v49 = v0 + 544;
  v1 = *(v0 + 656);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3;
      v5 = v3[2];
      *(v0 + 32) = v3[1];
      *(v0 + 48) = v5;
      *(v0 + 16) = v4;
      v6 = v3[3];
      v7 = v3[4];
      v8 = v3[6];
      *(v0 + 96) = v3[5];
      *(v0 + 112) = v8;
      *(v0 + 64) = v6;
      *(v0 + 80) = v7;
      v9 = v3[7];
      v10 = v3[8];
      v11 = v3[10];
      *(v0 + 160) = v3[9];
      *(v0 + 176) = v11;
      *(v0 + 128) = v9;
      *(v0 + 144) = v10;
      sub_1B7FC8DA4(v0 + 16, v0 + 192);
      if (qword_1ED8DD848 != -1)
      {
        swift_once();
      }

      v12 = sub_1B80C900C();
      __swift_project_value_buffer(v12, qword_1ED8DDF28);
      sub_1B7FC8DA4(v0 + 16, v0 + 368);
      v13 = sub_1B80C8FEC();
      v14 = sub_1B80C941C();
      sub_1B7FCAD28(v0 + 16);
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v50 = v16;
        *v15 = 136446723;
        *(v15 + 4) = sub_1B7FB84FC(0xD000000000000033, 0x80000001B80CCCF0, &v50);
        *(v15 + 12) = 2160;
        *(v15 + 14) = 1752392040;
        *(v15 + 22) = 2081;
        *(v15 + 24) = sub_1B7FB84FC(*(v0 + 16), *(v0 + 24), &v50);
        _os_log_impl(&dword_1B7FB5000, v13, v14, "%{public}s for handle: %{private,mask.hash}s", v15, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1B8CB8970](v16, -1, -1);
        MEMORY[0x1B8CB8970](v15, -1, -1);
      }

      sub_1B7FCAD28(v0 + 16);
      v3 += 11;
      --v2;
    }

    while (v2);
  }

  v17 = *(v0 + 744);
  v18 = sub_1B8012F00(v49);
  v19 = sub_1B802BDC8(v48, v17);
  if (*v20)
  {
    sub_1B8030C8C(*(v0 + 656));
  }

  (v19)(v48, 0);
  (v18)(v49, 0);
  sub_1B802AB10();
  if ((v21 & 1) == 0)
  {
    v22 = *(v0 + 736);
    v23 = *(v0 + 712);
    v24 = *(v0 + 704);
    v25 = *(v0 + 672);
    v26 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_locationContinuation;
    swift_beginAccess();
    sub_1B7FB8448(v25 + v26, v22, &qword_1EBA66088, &qword_1B80D2CF0);
    v27 = (*(v23 + 48))(v22, 1, v24);
    v28 = *(v0 + 736);
    if (v27)
    {
      sub_1B7FB86D4(*(v0 + 736), &qword_1EBA66088, &qword_1B80D2CF0);
    }

    else
    {
      v29 = *(v0 + 720);
      v30 = *(v0 + 712);
      v31 = *(v0 + 704);
      (*(v30 + 16))(v29, *(v0 + 736), v31);
      sub_1B7FB86D4(v28, &qword_1EBA66088, &qword_1B80D2CF0);
      sub_1B80C92FC();
      (*(v30 + 8))(v29, v31);
    }

    v32 = *(v0 + 728);
    (*(*(v0 + 712) + 56))(v32, 1, 1, *(v0 + 704));
    swift_beginAccess();
    sub_1B8032A88(v32, v25 + v26);
    swift_endAccess();
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v33 = sub_1B80C900C();
    __swift_project_value_buffer(v33, qword_1ED8DDF28);
    v34 = sub_1B80C8FEC();
    v35 = sub_1B80C941C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v50 = v37;
      *v36 = 136446210;
      *(v36 + 4) = sub_1B7FB84FC(0xD000000000000033, 0x80000001B80CCCF0, &v50);
      _os_log_impl(&dword_1B7FB5000, v34, v35, "%{public}s Clear locationContinuation and empty cached locations since empty handles", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x1B8CB8970](v37, -1, -1);
      MEMORY[0x1B8CB8970](v36, -1, -1);
    }
  }

  v38 = *(v0 + 744);
  v39 = *(v0 + 696);
  v40 = *(v0 + 680);
  v41 = *(v0 + 664);
  v42 = *(v0 + 656);
  v43 = swift_allocObject();
  swift_weakInit();
  sub_1B80337A4(v41, v39, type metadata accessor for ClientID);
  v44 = (*(v40 + 80) + 33) & ~*(v40 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = v43;
  *(v45 + 24) = v42;
  *(v45 + 32) = v38;
  sub_1B80344D4(v39, v45 + v44, type metadata accessor for ClientID);

  sub_1B80C8A2C();

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_1B801B980(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B801B9C8, v1, 0);
}

uint64_t sub_1B801B9C8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = sub_1B7FCD170(&unk_1ED8DD838, _s18LocationConnectionCMa, &unk_1B80D2CA0);
  v5 = swift_task_alloc();
  v0[5] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_1B801BB04;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, v1, v4, 0xD000000000000021, 0x80000001B80CCC50, sub_1B803386C, v5, v7);
}

uint64_t sub_1B801BB04()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_1B7FFF194;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_1B8011C90;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

double sub_1B801BC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a4;
  v18[1] = a2;
  v19 = a1;
  v4 = sub_1B80C8E9C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = type metadata accessor for ClientID(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v18 - v11;
  v20 = sub_1B80C8A0C();
  v13 = swift_allocObject();
  swift_weakInit();
  (*(v9 + 16))(v12, v19, v8);
  sub_1B80337A4(v21, v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ClientID);
  v14 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v15 = (v10 + *(v6 + 80) + v14) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  (*(v9 + 32))(v16 + v14, v12, v8);
  sub_1B80344D4(v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for ClientID);
  *(v16 + ((v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;

  _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
  sub_1B80C89EC();

  sub_1B80C8A3C();

  return result;
}

uint64_t sub_1B801BF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B801BF50, 0, 0);
}

uint64_t sub_1B801BF50()
{
  v14 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_1B801C1B8;
    v3 = v0[9];

    return sub_1B801C404(v3);
  }

  else
  {
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v5 = sub_1B80C900C();
    __swift_project_value_buffer(v5, qword_1ED8DDF28);
    v6 = sub_1B80C8FEC();
    v7 = sub_1B80C941C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_1B7FB84FC(0xD000000000000021, 0x80000001B80CCC50, &v13);
      _os_log_impl(&dword_1B7FB5000, v6, v7, "%{public}s - LocationConnection is nil, during enqueued WorkItem", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x1B8CB8970](v9, -1, -1);
      MEMORY[0x1B8CB8970](v8, -1, -1);
    }

    sub_1B8010040();
    v10 = swift_allocError();
    *v11 = 10;
    v0[5] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
    sub_1B80C927C();
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1B801C1B8()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1B801C354;
  }

  else
  {
    v2 = sub_1B801C2CC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B801C2CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  sub_1B80C928C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B801C354()
{
  v1 = v0[12];
  v0[6] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  sub_1B80C927C();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B801C404(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v2[13] = *v1;
  v3 = *(type metadata accessor for ClientID(0) - 8);
  v2[14] = v3;
  v2[15] = *(v3 + 64);
  v2[16] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66078, &qword_1B80D2C10);
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66088, &qword_1B80D2CF0);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B801C59C, v1, 0);
}

uint64_t sub_1B801C59C()
{
  v31 = v0;
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  __swift_project_value_buffer(v1, qword_1ED8DDF28);
  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v30 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B7FB84FC(0xD000000000000022, 0x80000001B80CCC80, &v30);
    _os_log_impl(&dword_1B7FB5000, v2, v3, "%{public}s for all", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B8CB8970](v5, -1, -1);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  v6 = v0[21];
  v7 = v0[17];
  v8 = v0[18];
  v9 = v0[12];
  v10 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_locationContinuation;
  swift_beginAccess();
  sub_1B7FB8448(v9 + v10, v6, &qword_1EBA66088, &qword_1B80D2CF0);
  v11 = (*(v8 + 48))(v6, 1, v7);
  v12 = v0[21];
  if (v11)
  {
    sub_1B7FB86D4(v0[21], &qword_1EBA66088, &qword_1B80D2CF0);
  }

  else
  {
    v14 = v0[18];
    v13 = v0[19];
    v15 = v0[17];
    (*(v14 + 16))(v13, v0[21], v15);
    sub_1B7FB86D4(v12, &qword_1EBA66088, &qword_1B80D2CF0);
    sub_1B80C92FC();
    (*(v14 + 8))(v13, v15);
  }

  v16 = v0[20];
  v17 = v0[16];
  v19 = v0[14];
  v18 = v0[15];
  v20 = v0[12];
  v29 = v0[13];
  v21 = v0[11];
  (*(v0[18] + 56))(v16, 1, 1, v0[17]);
  swift_beginAccess();
  sub_1B8032A88(v16, v9 + v10);
  swift_endAccess();
  v22 = sub_1B8083354(MEMORY[0x1E69E7CC0]);
  v23 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_handlesForLocationRefreshing;
  swift_beginAccess();
  *(v20 + v23) = v22;

  v24 = swift_allocObject();
  swift_weakInit();
  sub_1B80337A4(v21, v17, type metadata accessor for ClientID);
  v25 = (*(v19 + 80) + 24) & ~*(v19 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  sub_1B80344D4(v17, v26 + v25, type metadata accessor for ClientID);
  *(v26 + ((v18 + v25 + 7) & 0xFFFFFFFFFFFFFFF8)) = v29;

  sub_1B80C8A2C();

  v27 = v0[1];

  return v27();
}

uint64_t sub_1B801C9B8(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, char a5, _BYTE *a6)
{
  *(v7 + 104) = a5;
  *(v7 + 32) = a3;
  *(v7 + 40) = v6;
  *(v7 + 24) = a2;
  *(v7 + 48) = *v6;
  *(v7 + 105) = *a1;
  *(v7 + 56) = *(a1 + 8);
  *(v7 + 72) = *(a1 + 24);
  *(v7 + 106) = *a4;
  *(v7 + 107) = *a6;
  return MEMORY[0x1EEE6DFA0](sub_1B801CA30, v6, 0);
}

uint64_t sub_1B801CA30()
{
  v14 = *(v0 + 107);
  v1 = *(v0 + 106);
  v2 = *(v0 + 72);
  v13 = *(v0 + 56);
  v3 = *(v0 + 105);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v15 = v4;
  v6 = *(v0 + 104);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  v16 = sub_1B7FCD170(&unk_1ED8DD838, _s18LocationConnectionCMa, &unk_1B80D2CA0);
  v9 = swift_task_alloc();
  *(v0 + 80) = v9;
  *(v9 + 16) = v4;
  *(v9 + 24) = v3;
  *(v9 + 32) = v13;
  *(v9 + 48) = v2;
  *(v9 + 56) = v7;
  *(v9 + 64) = v1;
  *(v9 + 65) = v6;
  *(v9 + 66) = v14;
  *(v9 + 72) = v8;
  *(v9 + 80) = v5;
  v10 = swift_task_alloc();
  *(v0 + 88) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66110, &qword_1B80D2FD0);
  *v10 = v0;
  v10[1] = sub_1B801CBD4;

  return MEMORY[0x1EEE6DE38](v0 + 16, v15, v16, 0xD000000000000049, 0x80000001B80CCE30, sub_1B80345A4, v9, v11);
}

uint64_t sub_1B801CBD4()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = sub_1B8017C00;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_1B7FFF178;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

double sub_1B801CCFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, unsigned __int8 a9, unsigned __int8 a10, uint64_t a11, uint64_t a12)
{
  v46 = a8;
  v45 = a7;
  v42 = a5;
  v43 = a6;
  v40 = a4;
  v36 = a2;
  v41 = a10;
  v38 = a3;
  v39 = a9;
  v47 = a12;
  v13 = sub_1B80C8E9C();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v44 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ClientID(0);
  v35 = *(v15 - 8);
  v16 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v34 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66118, &qword_1B80D2FD8);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v33 - v20;
  v37 = sub_1B80C8A0C();
  v22 = swift_allocObject();
  swift_weakInit();
  (*(v18 + 16))(v21, a1, v17);
  sub_1B80337A4(a11, &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ClientID);
  v23 = (*(v18 + 80) + 24) & ~*(v18 + 80);
  v24 = (v19 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 39) & 0xFFFFFFFFFFFFFFF8;
  v26 = (*(v35 + 80) + v25 + 11) & ~*(v35 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v22;
  (*(v18 + 32))(v27 + v23, v21, v17);
  v28 = v27 + v24;
  *v28 = v38;
  v29 = v42;
  v30 = v43;
  *(v28 + 8) = v40;
  *(v28 + 16) = v29;
  *(v28 + 24) = v30;
  v31 = v27 + v25;
  *v31 = v45;
  *(v31 + 8) = v46;
  *(v31 + 9) = v39;
  *(v31 + 10) = v41;
  sub_1B80344D4(v34, v27 + v26, type metadata accessor for ClientID);
  *(v27 + ((v16 + v26 + 7) & 0xFFFFFFFFFFFFFFF8)) = v47;

  _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
  sub_1B80C89EC();

  sub_1B80C8A3C();

  return result;
}

uint64_t sub_1B801D098(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 216) = a7;
  *(v8 + 224) = v12;
  *(v8 + 125) = v11;
  *(v8 + 71) = v10;
  *(v8 + 70) = a8;
  *(v8 + 200) = a5;
  *(v8 + 208) = a6;
  *(v8 + 184) = a2;
  *(v8 + 192) = a4;
  *(v8 + 69) = a3;
  *(v8 + 176) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B801D0E4, 0, 0);
}

uint64_t sub_1B801D0E4()
{
  v12 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[29] = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B801D314, Strong, 0);
  }

  else
  {
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v2 = sub_1B80C900C();
    __swift_project_value_buffer(v2, qword_1ED8DDF28);
    v3 = sub_1B80C8FEC();
    v4 = sub_1B80C941C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136446210;
      *(v5 + 4) = sub_1B7FB84FC(0xD000000000000049, 0x80000001B80CCE30, &v11);
      _os_log_impl(&dword_1B7FB5000, v3, v4, "%{public}s - LocationConnection is nil, during enqueued WorkItem", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x1B8CB8970](v6, -1, -1);
      MEMORY[0x1B8CB8970](v5, -1, -1);
    }

    sub_1B8010040();
    v7 = swift_allocError();
    *v8 = 10;
    v0[19] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66118, &qword_1B80D2FD8);
    sub_1B80C927C();
    v9 = v0[1];

    return v9();
  }
}