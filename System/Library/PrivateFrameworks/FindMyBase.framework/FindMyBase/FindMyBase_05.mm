unint64_t sub_1DF6149F4()
{
  result = qword_1ECE43458;
  if (!qword_1ECE43458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43458);
  }

  return result;
}

unint64_t sub_1DF614A68()
{
  result = qword_1ECE43470;
  if (!qword_1ECE43470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43470);
  }

  return result;
}

uint64_t dispatch thunk of FM.XPCSession.represents(underlyingConnection:)(uint64_t a1)
{
  v6 = (*(*v1 + 176) + **(*v1 + 176));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DF5A459C;

  return v6(a1);
}

uint64_t dispatch thunk of FM.XPCSession.suspend()()
{
  v4 = (*(*v0 + 192) + **(*v0 + 192));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DF59D2C4;

  return v4();
}

uint64_t dispatch thunk of FM.XPCSession.invalidate()()
{
  v4 = (*(*v0 + 200) + **(*v0 + 200));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DF59D2C8;

  return v4();
}

uint64_t dispatch thunk of FM.XPCSession.proxy(errorHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 208) + **(*v3 + 208));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1DF59D2C8;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of FM.XPCSession.syncProxy(errorHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 216) + **(*v3 + 216));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1DF59D2C4;

  return v10(a1, a2, a3);
}

uint64_t sub_1DF6150DC()
{
  v0 = sub_1DF6326AC();
  __swift_allocate_value_buffer(v0, qword_1ED8E6970);
  v1 = __swift_project_value_buffer(v0, qword_1ED8E6970);
  if (qword_1ED8E4AB0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ED8E6958);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t XPCActivity.name.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t XPCActivity.__allocating_init(name:qos:criteriaBlock:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v7[9] = swift_allocObject();

  return MEMORY[0x1EEE6DFA0](sub_1DF615258, 0, 0);
}

uint64_t sub_1DF615258()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 40);
  v6 = *(v0 + 16);
  v7 = *(v0 + 48);
  swift_defaultActor_initialize();
  swift_unknownObjectWeakInit();
  *(v2 + 168) = 0;
  *(v2 + 176) = 0;
  *(v2 + 184) = 0;
  *(v2 + 112) = v6;
  *(v2 + 128) = v3;
  *(v2 + 136) = v7;
  *(v2 + 152) = v1;

  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_1DF615348;

  return sub_1DF615770();
}

uint64_t sub_1DF615348()
{

  sub_1DF615908(v0, v1);
  swift_getObjectType();
  v3 = sub_1DF632E1C();

  return MEMORY[0x1EEE6DFA0](sub_1DF615478, v3, v2);
}

uint64_t sub_1DF615478()
{
  v1 = v0[4];

  v2 = sub_1DF6326FC();
  (*(*(v2 - 8) + 8))(v1, v2);
  v3 = v0[1];
  v4 = v0[9];

  return v3(v4);
}

uint64_t XPCActivity.init(name:qos:criteriaBlock:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF615550, 0, 0);
}

uint64_t sub_1DF615550()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 40);
  v6 = *(v0 + 16);
  v7 = *(v0 + 48);
  swift_defaultActor_initialize();
  swift_unknownObjectWeakInit();
  *(v2 + 168) = 0;
  *(v2 + 176) = 0;
  *(v2 + 184) = 0;
  *(v2 + 112) = v6;
  *(v2 + 128) = v3;
  *(v2 + 136) = v7;
  *(v2 + 152) = v1;

  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_1DF615640;

  return sub_1DF615770();
}

uint64_t sub_1DF615640()
{

  sub_1DF615908(v0, v1);
  swift_getObjectType();
  v3 = sub_1DF632E1C();

  return MEMORY[0x1EEE6DFA0](sub_1DF61B260, v3, v2);
}

uint64_t sub_1DF615790(uint64_t a1)
{
  if ((sub_1DF5A4734(a1) & 1) == 0)
  {
    v2 = v1[8];
    v3 = swift_allocObject();
    swift_weakInit();
    v4 = *(v2 + 176);
    v5 = *(v2 + 184);
    *(v2 + 176) = sub_1DF61B1AC;
    *(v2 + 184) = v3;

    sub_1DF5A83BC(v4, v5);
    v6 = *MEMORY[0x1E69E9C50];
    v1[6] = sub_1DF61B1AC;
    v1[7] = v3;
    v1[2] = MEMORY[0x1E69E9820];
    v1[3] = 1107296256;
    v1[4] = sub_1DF618160;
    v1[5] = &block_descriptor_1;
    v7 = _Block_copy(v1 + 2);

    v8 = sub_1DF632A7C();
    xpc_activity_register((v8 + 32), v6, v7);

    _Block_release(v7);
  }

  v9 = v1[1];

  return v9();
}

unint64_t sub_1DF615908(uint64_t a1, uint64_t a2)
{
  result = qword_1ED8E4B50;
  if (!qword_1ED8E4B50)
  {
    type metadata accessor for XPCActivity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8E4B50);
  }

  return result;
}

uint64_t sub_1DF615980()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE43478, &unk_1DF63C118);
  v1 = sub_1DF632A3C();
  MEMORY[0x1E12D82E0](v1);

  MEMORY[0x1E12D82E0](8250, 0xE200000000000000);
  sub_1DF5B9E58();
  v2 = sub_1DF632BDC();
  MEMORY[0x1E12D82E0](v2);

  MEMORY[0x1E12D82E0](30768, 0xE200000000000000);

  MEMORY[0x1E12D82E0](8233, 0xE200000000000000);
  MEMORY[0x1E12D82E0](*(v0 + 112), *(v0 + 120));
  MEMORY[0x1E12D82E0](62, 0xE100000000000000);
  return 60;
}

void sub_1DF615AB4(_BYTE *a1@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    state = xpc_activity_get_state(Strong);
    sub_1DF615C68(state, a1);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED8E4B70 != -1)
    {
      swift_once();
    }

    v4 = sub_1DF6326AC();
    __swift_project_value_buffer(v4, qword_1ED8E6970);

    v5 = sub_1DF63268C();
    v6 = sub_1DF63316C();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136446210;
      v9 = sub_1DF615980();
      v11 = sub_1DF59EEC8(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_1DF59A000, v5, v6, "%{public}s: state called on invalidated XPCActivity", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x1E12D9D80](v8, -1, -1);
      MEMORY[0x1E12D9D80](v7, -1, -1);
    }

    *a1 = 0;
  }
}

unint64_t sub_1DF615C68@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 6)
  {
    sub_1DF63347C();

    v2 = sub_1DF6338DC();
    MEMORY[0x1E12D82E0](v2);

    result = sub_1DF6336EC();
    __break(1u);
  }

  else
  {
    *a2 = result;
  }

  return result;
}

BOOL sub_1DF615D30()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    should_defer = xpc_activity_should_defer(Strong);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED8E4B70 != -1)
    {
      swift_once();
    }

    v2 = sub_1DF6326AC();
    __swift_project_value_buffer(v2, qword_1ED8E6970);

    v3 = sub_1DF63268C();
    v4 = sub_1DF63316C();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136446210;
      v7 = sub_1DF615980();
      v9 = sub_1DF59EEC8(v7, v8, &v11);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_1DF59A000, v3, v4, "%{public}s: shouldDefer called on invalidated XPCActivity", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x1E12D9D80](v6, -1, -1);
      MEMORY[0x1E12D9D80](v5, -1, -1);
    }

    return 0;
  }

  return should_defer;
}

BOOL sub_1DF615ED4(xpc_activity_state_t a1, const char *a2, ...)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = xpc_activity_set_state(Strong, a1);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED8E4B70 != -1)
    {
      swift_once();
    }

    v6 = sub_1DF6326AC();
    __swift_project_value_buffer(v6, qword_1ED8E6970);

    v7 = sub_1DF63268C();
    v8 = sub_1DF63316C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136446210;
      v11 = sub_1DF615980();
      v13 = sub_1DF59EEC8(v11, v12, &v15);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1DF59A000, v7, v8, a2, v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1E12D9D80](v10, -1, -1);
      MEMORY[0x1E12D9D80](v9, -1, -1);
    }

    return 0;
  }

  return v5;
}

uint64_t sub_1DF616078(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DF616098, v1, 0);
}

uint64_t sub_1DF616098()
{
  v36 = v0;
  if (qword_1ED8E4B70 != -1)
  {
    swift_once();
  }

  v1 = sub_1DF6326AC();
  __swift_project_value_buffer(v1, qword_1ED8E6970);

  v2 = sub_1DF63268C();
  v3 = sub_1DF63318C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v35 = v5;
    *v4 = 136446210;
    v6 = sub_1DF615980();
    v8 = sub_1DF59EEC8(v6, v7, &v35);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1DF59A000, v2, v3, "%{public}s: updateCriteria called on XPCActivity", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1E12D9D80](v5, -1, -1);
    MEMORY[0x1E12D9D80](v4, -1, -1);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[4] = Strong;
  if (Strong)
  {
    v10 = Strong;
    v11 = swift_task_alloc();
    v0[5] = v11;
    *v11 = v0;
    v11[1] = sub_1DF61657C;
    v12 = v0[2];

    return sub_1DF61681C(v12, v10);
  }

  else
  {
    v14 = v0[3];
    v16 = *(v14 + 112);
    v15 = *(v14 + 120);
    v17 = *(v14 + 168);

    v18 = sub_1DF63268C();
    v19 = sub_1DF63318C();

    v20 = os_log_type_enabled(v18, v19);
    if (v17 == 1)
    {
      if (v20)
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v35 = v22;
        *v21 = 136446466;
        v23 = sub_1DF615980();
        v25 = sub_1DF59EEC8(v23, v24, &v35);

        *(v21 + 4) = v25;
        *(v21 + 12) = 2082;
        v26 = sub_1DF59EEC8(v16, v15, &v35);

        *(v21 + 14) = v26;
        _os_log_impl(&dword_1DF59A000, v18, v19, "%{public}s: No current activity -- re-registering %{public}s", v21, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12D9D80](v22, -1, -1);
        MEMORY[0x1E12D9D80](v21, -1, -1);
      }

      else
      {
      }

      v33 = swift_task_alloc();
      v0[6] = v33;
      *v33 = v0;
      v33[1] = sub_1DF6166EC;

      return sub_1DF615770();
    }

    else
    {
      if (v20)
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v35 = v28;
        *v27 = 136446466;
        v29 = sub_1DF615980();
        v31 = sub_1DF59EEC8(v29, v30, &v35);

        *(v27 + 4) = v31;
        *(v27 + 12) = 2082;
        v32 = sub_1DF59EEC8(v16, v15, &v35);

        *(v27 + 14) = v32;
        _os_log_impl(&dword_1DF59A000, v18, v19, "%{public}s: No current activity -- hasn't checked in yet %{public}s", v27, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12D9D80](v28, -1, -1);
        MEMORY[0x1E12D9D80](v27, -1, -1);
      }

      else
      {
      }

      *v0[2] = 6;
      v34 = v0[1];

      return v34();
    }
  }
}

uint64_t sub_1DF61657C()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1DF61668C, v1, 0);
}

uint64_t sub_1DF61668C()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF6166EC()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1DF6167FC, v1, 0);
}

uint64_t sub_1DF61681C(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF616840, v2, 0);
}

uint64_t sub_1DF616840()
{
  v20 = v0;
  v1 = xpc_activity_copy_criteria(*(v0 + 184));
  *(v0 + 200) = v1;
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = swift_unknownObjectRetain();
  sub_1DF5E526C(v2, v16);
  v3 = v16[0];
  v4 = v16[1];
  *(v0 + 208) = v16[0];
  *(v0 + 216) = v4;
  v5 = v17;
  v6 = v18;
  *(v0 + 224) = v17;
  *(v0 + 232) = v6;
  v7 = v19;
  *(v0 + 240) = v19;
  if (v3 == 2)
  {
    swift_unknownObjectRelease();
LABEL_4:
    v8 = *(*(v0 + 192) + 128);
    *(v0 + 56) = 2;
    v9 = v0 + 56;
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0u;
    v15 = (v8 + *v8);
    v10 = swift_task_alloc();
    *(v0 + 256) = v10;
    *v10 = v0;
    v10[1] = sub_1DF617134;
    v11 = v0 + 16;
    goto LABEL_6;
  }

  v12 = *(*(v0 + 192) + 128);
  *(v0 + 136) = v3;
  v9 = v0 + 136;
  *(v0 + 144) = v4;
  *(v0 + 152) = v5;
  *(v0 + 160) = v6;
  *(v0 + 168) = v7;
  v15 = (v12 + *v12);
  v13 = swift_task_alloc();
  *(v0 + 248) = v13;
  *v13 = v0;
  v13[1] = sub_1DF616A54;
  v11 = v0 + 96;
LABEL_6:

  return v15(v11, v9);
}

uint64_t sub_1DF616A54()
{
  v1 = *(*v0 + 192);

  return MEMORY[0x1EEE6DFA0](sub_1DF616B64, v1, 0);
}

uint64_t sub_1DF616B64()
{
  v69 = v0;
  v1 = *(v0 + 96);
  if (v1 == 2)
  {
    v2 = *(v0 + 176);
    sub_1DF6181C0();
    swift_unknownObjectRelease();
    *v2 = 6;
  }

  else
  {
    v3 = *(v0 + 104);
    v4 = *(v0 + 112);
    v5 = *(v0 + 120);
    v6 = *(v0 + 128);
    v7 = *(v0 + 208);
    v8 = *(v0 + 96) & 1;
    LOWORD(v65[0]) = v1 & 0x101;
    v9 = (v1 >> 8) & 1;
    v63 = v3;
    v65[1] = v3;
    v65[2] = v4;
    v65[3] = v5;
    v65[4] = v6;
    v10 = v7 & 1;
    v66 = v7 & 0x101;
    v11 = (v7 >> 8) & 1;
    v67 = *(v0 + 216);
    v68 = *(v0 + 232);
    if (_s10FindMyBase11XPCActivityC8CriteriaV2eeoiySbAE_AEtFZ_0(v65, &v66))
    {
      if (qword_1ED8E4B70 != -1)
      {
        swift_once();
      }

      v12 = sub_1DF6326AC();
      __swift_project_value_buffer(v12, qword_1ED8E6970);

      v13 = sub_1DF63268C();
      v14 = sub_1DF63318C();

      if (os_log_type_enabled(v13, v14))
      {
        v61 = *(v0 + 232);
        v64 = *(v0 + 216);
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v65[0] = v16;
        *v15 = 136446466;
        v17 = sub_1DF615980();
        v19 = sub_1DF59EEC8(v17, v18, v65);

        *(v15 + 4) = v19;
        *(v15 + 12) = 2082;
        LOBYTE(v66) = v10;
        HIBYTE(v66) = v11;
        v68 = v61;
        v67 = v64;
        v20 = XPCActivity.Criteria.description.getter();
        v22 = sub_1DF59EEC8(v20, v21, v65);

        *(v15 + 14) = v22;
        _os_log_impl(&dword_1DF59A000, v13, v14, "%{public}s: Keeping existing criteria: %{public}s", v15, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12D9D80](v16, -1, -1);
        MEMORY[0x1E12D9D80](v15, -1, -1);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v57 = v9;
      v58 = v8;
      v59 = v6;
      v62 = v4;
      if (qword_1ED8E4B70 != -1)
      {
        swift_once();
      }

      v23 = sub_1DF6326AC();
      __swift_project_value_buffer(v23, qword_1ED8E6970);

      v24 = sub_1DF63268C();
      v25 = sub_1DF63318C();

      v60 = v5;
      if (os_log_type_enabled(v24, v25))
      {
        v54 = *(v0 + 232);
        v55 = *(v0 + 216);
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v65[0] = v27;
        *v26 = 136446466;
        v28 = sub_1DF615980();
        v30 = sub_1DF59EEC8(v28, v29, v65);

        *(v26 + 4) = v30;
        *(v26 + 12) = 2082;
        LOBYTE(v66) = v10;
        HIBYTE(v66) = v11;
        v68 = v54;
        v67 = v55;
        v31 = XPCActivity.Criteria.description.getter();
        v33 = sub_1DF59EEC8(v31, v32, v65);

        *(v26 + 14) = v33;
        _os_log_impl(&dword_1DF59A000, v24, v25, "%{public}s: Existing criteria: %{public}s", v26, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12D9D80](v27, -1, -1);
        MEMORY[0x1E12D9D80](v26, -1, -1);
      }

      v34 = sub_1DF63268C();
      v35 = sub_1DF63318C();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v65[0] = v56;
        *v36 = 136446466;
        v37 = sub_1DF615980();
        v39 = sub_1DF59EEC8(v37, v38, v65);

        *(v36 + 4) = v39;
        *(v36 + 12) = 2082;
        v40 = v57;
        v41 = v58;
        LOBYTE(v66) = v58;
        HIBYTE(v66) = v57;
        v43 = v60;
        v42 = v62;
        *&v67 = v63;
        *(&v67 + 1) = v62;
        v44 = v59;
        *&v68 = v60;
        *(&v68 + 1) = v59;
        v45 = XPCActivity.Criteria.description.getter();
        v47 = sub_1DF59EEC8(v45, v46, v65);

        *(v36 + 14) = v47;
        _os_log_impl(&dword_1DF59A000, v34, v35, "%{public}s: Registering updated criteria: %{public}s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12D9D80](v56, -1, -1);
        MEMORY[0x1E12D9D80](v36, -1, -1);
      }

      else
      {

        v43 = v60;
        v42 = v62;
        v44 = v59;
        v40 = v57;
        v41 = v58;
      }

      v48 = *(v0 + 184);
      LOBYTE(v66) = v41;
      HIBYTE(v66) = v40;
      *&v67 = v63;
      *(&v67 + 1) = v42;
      *&v68 = v43;
      *(&v68 + 1) = v44;
      sub_1DF5E5758();
      xpc_activity_set_criteria(v48, v49);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    v50 = *(v0 + 176);
    state = xpc_activity_get_state(*(v0 + 184));
    sub_1DF615C68(state, v50);
  }

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_1DF617134()
{
  v1 = *(*v0 + 192);

  return MEMORY[0x1EEE6DFA0](sub_1DF617244, v1, 0);
}

uint64_t sub_1DF617244()
{
  v38 = v0;
  v1 = *(v0 + 16);
  if (v1 == 2)
  {
    v2 = *(v0 + 176);
    sub_1DF6181C0();
    *v2 = 6;
  }

  else
  {
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);
    v30 = *(v0 + 48);
    if (qword_1ED8E4B70 != -1)
    {
      swift_once();
    }

    v6 = v1 & 0x100;
    v7 = sub_1DF6326AC();
    __swift_project_value_buffer(v7, qword_1ED8E6970);

    v8 = sub_1DF63268C();
    v9 = sub_1DF63318C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v29 = v3;
      v28 = swift_slowAlloc();
      v31 = v28;
      *v10 = 136446466;
      v11 = sub_1DF615980();
      v13 = v5;
      v14 = v4;
      v15 = sub_1DF59EEC8(v11, v12, &v31);

      *(v10 + 4) = v15;
      *(v10 + 12) = 2082;
      v16 = v1 & 1;
      v32 = v16;
      v17 = v6 >> 8;
      v33 = v17;
      v18 = v30;
      v34 = v29;
      v35 = v14;
      v36 = v13;
      v37 = v30;
      v19 = XPCActivity.Criteria.description.getter();
      v21 = sub_1DF59EEC8(v19, v20, &v31);

      *(v10 + 14) = v21;
      v4 = v14;
      v5 = v13;
      _os_log_impl(&dword_1DF59A000, v8, v9, "%{public}s: Registering new criteria: %{public}s", v10, 0x16u);
      swift_arrayDestroy();
      v3 = v29;
      MEMORY[0x1E12D9D80](v28, -1, -1);
      MEMORY[0x1E12D9D80](v10, -1, -1);
    }

    else
    {

      v16 = v1 & 1;
      v17 = v6 >> 8;
      v18 = v30;
    }

    v22 = *(v0 + 184);
    v32 = v16;
    v33 = v17;
    v34 = v3;
    v35 = v4;
    v36 = v5;
    v37 = v18;
    sub_1DF5E5758();
    xpc_activity_set_criteria(v22, v23);
    swift_unknownObjectRelease();
    v24 = *(v0 + 176);
    state = xpc_activity_get_state(*(v0 + 184));
    sub_1DF615C68(state, v24);
  }

  v26 = *(v0 + 8);

  return v26();
}

void *XPCActivity.deinit()
{

  sub_1DF61A074(v0 + 160);
  sub_1DF5A83BC(*(v0 + 176), *(v0 + 184));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t XPCActivity.__deallocating_deinit()
{

  sub_1DF61A074(v0 + 160);
  sub_1DF5A83BC(*(v0 + 176), *(v0 + 184));
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1DF6175BC(_xpc_activity_s *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    state = xpc_activity_get_state(a1);
    sub_1DF615C68(state, &v8);
    v5 = v8;
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = v5;
    *(v7 + 32) = a1;

    swift_unknownObjectRetain();
    _s10FindMyBase11TransactionC9asyncTask4name5blockys12StaticStringV_yyYaYbctFZ_0("XPCActivity", 11, 2, &unk_1DF63CAB8, v7);
  }

  return result;
}

uint64_t sub_1DF6176CC(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 73) = a2;
  *(v3 + 40) = a1;
  *(v3 + 48) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1DF6176F0, 0, 0);
}

uint64_t sub_1DF6176F0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    *(v0 + 72) = *(v0 + 73);
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_1DF6177EC;
    v3 = *(v0 + 48);

    return sub_1DF6178FC((v0 + 72), v3);
  }

  else
  {
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1DF6177EC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DF6178FC(_BYTE *a1, uint64_t a2)
{
  *(v3 + 24) = a2;
  *(v3 + 32) = v2;
  *(v3 + 67) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF617924, v2, 0);
}

uint64_t sub_1DF617924()
{
  v34 = v0;
  if (qword_1ED8E4B70 != -1)
  {
    swift_once();
  }

  v1 = sub_1DF6326AC();
  __swift_project_value_buffer(v1, qword_1ED8E6970);

  swift_unknownObjectRetain();
  v2 = sub_1DF63268C();
  v3 = sub_1DF63318C();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 67);
    v5 = *(v0 + 24);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v33 = v7;
    *v6 = 136446722;
    v8 = sub_1DF615980();
    v10 = sub_1DF59EEC8(v8, v9, &v33);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    *(v0 + 16) = v5;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE435F0, &qword_1DF63CAC8);
    v11 = sub_1DF632A3C();
    v13 = sub_1DF59EEC8(v11, v12, &v33);

    v14 = 0xE800000000000000;
    v15 = 0x6E496B636568632ELL;
    *(v6 + 14) = v13;
    v16 = 0xE500000000000000;
    *(v6 + 22) = 2082;
    v17 = 0x656E6F642ELL;
    if (v4 != 5)
    {
      v17 = 0x64696C61766E692ELL;
      v16 = 0xEC00000064657461;
    }

    v18 = 0xE600000000000000;
    v19 = 0x72656665642ELL;
    if (v4 != 3)
    {
      v19 = 0x756E69746E6F632ELL;
      v18 = 0xE900000000000065;
    }

    if (v4 <= 4)
    {
      v17 = v19;
      v16 = v18;
    }

    v20 = 0xE500000000000000;
    v21 = 0x746961772ELL;
    if (v4 != 1)
    {
      v21 = 1853190702;
      v20 = 0xE400000000000000;
    }

    if (v4)
    {
      v15 = v21;
      v14 = v20;
    }

    if (v4 <= 2)
    {
      v22 = v15;
    }

    else
    {
      v22 = v17;
    }

    if (v4 <= 2)
    {
      v23 = v14;
    }

    else
    {
      v23 = v16;
    }

    v24 = sub_1DF59EEC8(v22, v23, &v33);

    *(v6 + 24) = v24;
    _os_log_impl(&dword_1DF59A000, v2, v3, "%{public}s: activityHandler() for %{public}s\nstate: %{public}s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12D9D80](v7, -1, -1);
    MEMORY[0x1E12D9D80](v6, -1, -1);
  }

  v25 = *(v0 + 32);
  if (*(v0 + 67))
  {
    v26 = *(v25 + 144);
    *(v0 + 64) = *(v0 + 67);
    v32 = (v26 + *v26);
    v27 = swift_task_alloc();
    *(v0 + 56) = v27;
    *v27 = v0;
    v27[1] = sub_1DF61806C;
    v28 = *(v0 + 32);

    return v32(v28, v0 + 64);
  }

  else
  {
    swift_unknownObjectWeakAssign();
    *(v25 + 168) = 1;
    v30 = swift_task_alloc();
    *(v0 + 40) = v30;
    *v30 = v0;
    v30[1] = sub_1DF617D60;
    v31 = *(v0 + 24);

    return sub_1DF61681C(v0 + 65, v31);
  }
}

uint64_t sub_1DF617D60()
{
  v1 = *(*v0 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1DF617E70, v1, 0);
}

uint64_t sub_1DF617E70()
{
  v1 = *(*(v0 + 32) + 144);
  *(v0 + 66) = *(v0 + 65);
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1DF617F78;
  v3 = *(v0 + 32);

  return v5(v3, v0 + 66);
}

uint64_t sub_1DF617F78()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DF61806C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DF618160(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_1DF6181C0()
{
  v1 = sub_1DF632A7C();
  xpc_activity_unregister((v1 + 32));

  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  *(v0 + 176) = 0;
  *(v0 + 184) = 0;
  sub_1DF5A83BC(v2, v3);
  swift_unknownObjectWeakAssign();
  if (qword_1ED8E4B70 != -1)
  {
    swift_once();
  }

  v4 = sub_1DF6326AC();
  __swift_project_value_buffer(v4, qword_1ED8E6970);

  oslog = sub_1DF63268C();
  v5 = sub_1DF63318C();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446210;
    v8 = sub_1DF615980();
    v10 = sub_1DF59EEC8(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DF59A000, oslog, v5, "%{public}s: Unregistered criteria", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E12D9D80](v7, -1, -1);
    MEMORY[0x1E12D9D80](v6, -1, -1);
  }
}

uint64_t XPCActivity.State.description.getter()
{
  v1 = *v0;
  v2 = 0x6E496B636568632ELL;
  v3 = 0x656E6F642ELL;
  if (v1 != 5)
  {
    v3 = 0x64696C61766E692ELL;
  }

  v4 = 0x72656665642ELL;
  if (v1 != 3)
  {
    v4 = 0x756E69746E6F632ELL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x746961772ELL;
  if (v1 != 1)
  {
    v5 = 1853190702;
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

uint64_t sub_1DF618440(uint64_t a1)
{
  v2 = sub_1DF61A2E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF61847C(uint64_t a1)
{
  v2 = sub_1DF61A2E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF6184B8()
{
  v1 = *v0;
  v2 = 0x6E496B63656863;
  v3 = 1701736292;
  if (v1 != 5)
  {
    v3 = 0x6164696C61766E69;
  }

  v4 = 0x7265666564;
  if (v1 != 3)
  {
    v4 = 0x65756E69746E6F63;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1953063287;
  if (v1 != 1)
  {
    v5 = 7239026;
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

uint64_t sub_1DF618580@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DF61AF10(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DF6185B4(uint64_t a1)
{
  v2 = sub_1DF61A09C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF6185F0(uint64_t a1)
{
  v2 = sub_1DF61A09C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF61862C(uint64_t a1)
{
  v2 = sub_1DF61A198();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF618668(uint64_t a1)
{
  v2 = sub_1DF61A198();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF6186A4(uint64_t a1)
{
  v2 = sub_1DF61A1EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF6186E0(uint64_t a1)
{
  v2 = sub_1DF61A1EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF61871C(uint64_t a1)
{
  v2 = sub_1DF61A144();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF618758(uint64_t a1)
{
  v2 = sub_1DF61A144();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF618794(uint64_t a1)
{
  v2 = sub_1DF61A0F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF6187D0(uint64_t a1)
{
  v2 = sub_1DF61A0F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF61880C(uint64_t a1)
{
  v2 = sub_1DF61A240();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF618848(uint64_t a1)
{
  v2 = sub_1DF61A240();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF618884(uint64_t a1)
{
  v2 = sub_1DF61A294();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF6188C0(uint64_t a1)
{
  v2 = sub_1DF61A294();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t XPCActivity.State.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43488, &qword_1DF63C130);
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43490, &qword_1DF63C138);
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v38 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43498, &qword_1DF63C140);
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE434A0, &qword_1DF63C148);
  v41 = *(v10 - 8);
  v42 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v40 = &v38 - v11;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE434A8, &qword_1DF63C150);
  v55 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v54 = &v38 - v12;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE434B0, &qword_1DF63C158);
  v53 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v14 = &v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE434B8, &qword_1DF63C160);
  v52 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE434C0, &qword_1DF63C168);
  v18 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v20 = &v38 - v19;
  v21 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF61A09C();
  v56 = v20;
  sub_1DF633AFC();
  v22 = (v18 + 8);
  if (v21 <= 2)
  {
    v28 = v52;
    v29 = v53;
    v30 = v54;
    v31 = v55;
    if (v21)
    {
      if (v21 == 1)
      {
        v59 = 1;
        sub_1DF61A294();
        v33 = v56;
        v32 = v57;
        sub_1DF63383C();
        (*(v29 + 8))(v14, v38);
      }

      else
      {
        v60 = 2;
        sub_1DF61A240();
        v37 = v30;
        v33 = v56;
        v32 = v57;
        sub_1DF63383C();
        (*(v31 + 8))(v37, v39);
      }

      return (*v22)(v33, v32);
    }

    else
    {
      v58 = 0;
      sub_1DF61A2E8();
      v34 = v56;
      v35 = v57;
      sub_1DF63383C();
      (*(v28 + 8))(v17, v15);
      return (*v22)(v34, v35);
    }
  }

  else
  {
    if (v21 > 4)
    {
      if (v21 == 5)
      {
        v63 = 5;
        sub_1DF61A144();
        v23 = v46;
        v24 = v56;
        v25 = v57;
        sub_1DF63383C();
        v27 = v47;
        v26 = v48;
      }

      else
      {
        v64 = 6;
        sub_1DF61A0F0();
        v23 = v49;
        v24 = v56;
        v25 = v57;
        sub_1DF63383C();
        v27 = v50;
        v26 = v51;
      }
    }

    else if (v21 == 3)
    {
      v61 = 3;
      sub_1DF61A1EC();
      v23 = v40;
      v24 = v56;
      v25 = v57;
      sub_1DF63383C();
      v27 = v41;
      v26 = v42;
    }

    else
    {
      v62 = 4;
      sub_1DF61A198();
      v23 = v43;
      v24 = v56;
      v25 = v57;
      sub_1DF63383C();
      v27 = v44;
      v26 = v45;
    }

    (*(v27 + 8))(v23, v26);
    return (*v22)(v24, v25);
  }
}

uint64_t XPCActivity.State.hashValue.getter()
{
  v1 = *v0;
  sub_1DF633A6C();
  MEMORY[0x1E12D9240](v1);
  return sub_1DF633AAC();
}

uint64_t XPCActivity.State.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43508, &qword_1DF63C170);
  v64 = *(v3 - 8);
  v65 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v68 = &v49[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43510, &qword_1DF63C178);
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v71 = &v49[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43518, &qword_1DF63C180);
  v8 = *(v7 - 8);
  v60 = v7;
  v61 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v67 = &v49[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43520, &qword_1DF63C188);
  v11 = *(v10 - 8);
  v58 = v10;
  v59 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v49[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43528, &qword_1DF63C190);
  v56 = *(v13 - 8);
  v57 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v49[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43530, &qword_1DF63C198);
  v54 = *(v15 - 8);
  v55 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43538, &qword_1DF63C1A0);
  v53 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v49[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43540, &qword_1DF63C1A8);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v49[-v23];
  v25 = a1[3];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1DF61A09C();
  v26 = v73;
  sub_1DF633ADC();
  if (!v26)
  {
    v51 = v18;
    v27 = v70;
    v28 = v71;
    v52 = v22;
    v73 = v21;
    v29 = sub_1DF63381C();
    if (*(v29 + 16) == 1)
    {
      v30 = *(v29 + 32);
      if (v30 != 7)
      {
        v50 = *(v29 + 32);
        if (v30 > 2)
        {
          if (v30 > 4)
          {
            v31 = v30 == 5;
            v32 = v69;
            v41 = v73;
            if (v31)
            {
              v79 = 5;
              sub_1DF61A144();
              sub_1DF63379C();
              v46 = v52;
              (*(v62 + 8))(v28, v63);
            }

            else
            {
              v80 = 6;
              sub_1DF61A0F0();
              v45 = v68;
              sub_1DF63379C();
              v46 = v52;
              (*(v64 + 8))(v45, v65);
            }

            (*(v46 + 8))(v24, v41);
          }

          else
          {
            v31 = v30 == 3;
            v32 = v69;
            v33 = v73;
            if (v31)
            {
              v77 = 3;
              sub_1DF61A1EC();
              v34 = v66;
              sub_1DF63379C();
              v44 = v52;
              (*(v59 + 8))(v34, v58);
            }

            else
            {
              v78 = 4;
              sub_1DF61A198();
              v43 = v67;
              sub_1DF63379C();
              v44 = v52;
              (*(v61 + 8))(v43, v60);
            }

            (*(v44 + 8))(v24, v33);
          }

          swift_unknownObjectRelease();
          v47 = v72;
          goto LABEL_25;
        }

        if (v30)
        {
          if (v30 == 1)
          {
            v75 = 1;
            sub_1DF61A294();
            v39 = v24;
            v40 = v73;
            sub_1DF63379C();
            (*(v54 + 8))(v17, v55);
            (*(v52 + 8))(v39, v40);
LABEL_21:
            swift_unknownObjectRelease();
            v47 = v72;
            v32 = v69;
LABEL_25:
            *v32 = v50;
            return __swift_destroy_boxed_opaque_existential_1(v47);
          }

          v76 = 2;
          sub_1DF61A240();
          v42 = v73;
          sub_1DF63379C();
          (*(v56 + 8))(v27, v57);
        }

        else
        {
          v74 = 0;
          sub_1DF61A2E8();
          v42 = v73;
          sub_1DF63379C();
          (*(v53 + 8))(v20, v51);
        }

        (*(v52 + 8))(v24, v42);
        goto LABEL_21;
      }
    }

    v35 = sub_1DF6334DC();
    swift_allocError();
    v37 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43548, &qword_1DF63C1B0);
    *v37 = &type metadata for XPCActivity.State;
    v38 = v73;
    sub_1DF6337AC();
    sub_1DF6334CC();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v35);
    swift_willThrow();
    (*(v52 + 8))(v24, v38);
    swift_unknownObjectRelease();
  }

  v47 = v72;
  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t sub_1DF619A2C()
{
  v1 = *v0;
  v2 = 0x6E496B636568632ELL;
  v3 = 0x656E6F642ELL;
  if (v1 != 5)
  {
    v3 = 0x64696C61766E692ELL;
  }

  v4 = 0x72656665642ELL;
  if (v1 != 3)
  {
    v4 = 0x756E69746E6F632ELL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x746961772ELL;
  if (v1 != 1)
  {
    v5 = 1853190702;
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

uint64_t sub_1DF619B00()
{
  result = sub_1DF632B2C();
  qword_1ED8E4B60 = result;
  *algn_1ED8E4B68 = v1;
  return result;
}

uint64_t XPCActivity.Priority.description.getter()
{
  if (*v0)
  {
    return 0x6E65746E69616D2ELL;
  }

  else
  {
    return 0x7974696C6974752ELL;
  }
}

FindMyBase::XPCActivity::Priority_optional __swiftcall XPCActivity.Priority.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DF63376C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t XPCActivity.Priority.rawValue.getter()
{
  if (*v0)
  {
    return 0x616E65746E69616DLL;
  }

  else
  {
    return 0x7974696C697475;
  }
}

uint64_t sub_1DF619C1C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x616E65746E69616DLL;
  }

  else
  {
    v3 = 0x7974696C697475;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xEB0000000065636ELL;
  }

  if (*a2)
  {
    v5 = 0x616E65746E69616DLL;
  }

  else
  {
    v5 = 0x7974696C697475;
  }

  if (*a2)
  {
    v6 = 0xEB0000000065636ELL;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DF63394C();
  }

  return v8 & 1;
}

uint64_t sub_1DF619CCC()
{
  sub_1DF633A6C();
  sub_1DF632ACC();

  return sub_1DF633AAC();
}

uint64_t sub_1DF619D58(uint64_t a1)
{
  sub_1DF632ACC();
}

uint64_t sub_1DF619DD0(uint64_t a1)
{
  sub_1DF633A6C();
  sub_1DF632ACC();

  return sub_1DF633AAC();
}

uint64_t sub_1DF619E58@<X0>(char *a2@<X8>)
{
  v3 = sub_1DF63376C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1DF619EB8(uint64_t *a1@<X8>)
{
  v2 = 0x7974696C697475;
  if (*v1)
  {
    v2 = 0x616E65746E69616DLL;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEB0000000065636ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DF619FB0()
{
  if (*v0)
  {
    return 0x6E65746E69616D2ELL;
  }

  else
  {
    return 0x7974696C6974752ELL;
  }
}

uint64_t sub_1DF619FF4()
{
  v0 = sub_1DF6326AC();
  __swift_allocate_value_buffer(v0, qword_1ED8E6958);
  __swift_project_value_buffer(v0, qword_1ED8E6958);
  return sub_1DF63269C();
}

unint64_t sub_1DF61A09C()
{
  result = qword_1ECE434C8;
  if (!qword_1ECE434C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE434C8);
  }

  return result;
}

unint64_t sub_1DF61A0F0()
{
  result = qword_1ECE434D0;
  if (!qword_1ECE434D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE434D0);
  }

  return result;
}

unint64_t sub_1DF61A144()
{
  result = qword_1ECE434D8;
  if (!qword_1ECE434D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE434D8);
  }

  return result;
}

unint64_t sub_1DF61A198()
{
  result = qword_1ECE434E0;
  if (!qword_1ECE434E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE434E0);
  }

  return result;
}

unint64_t sub_1DF61A1EC()
{
  result = qword_1ECE434E8;
  if (!qword_1ECE434E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE434E8);
  }

  return result;
}

unint64_t sub_1DF61A240()
{
  result = qword_1ECE434F0;
  if (!qword_1ECE434F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE434F0);
  }

  return result;
}

unint64_t sub_1DF61A294()
{
  result = qword_1ECE434F8;
  if (!qword_1ECE434F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE434F8);
  }

  return result;
}

unint64_t sub_1DF61A2E8()
{
  result = qword_1ECE43500;
  if (!qword_1ECE43500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43500);
  }

  return result;
}

unint64_t sub_1DF61A340()
{
  result = qword_1ECE43550;
  if (!qword_1ECE43550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43550);
  }

  return result;
}

unint64_t sub_1DF61A398()
{
  result = qword_1ECE43558;
  if (!qword_1ECE43558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43558);
  }

  return result;
}

uint64_t dispatch thunk of XPCActivity.__allocating_init(name:qos:criteriaBlock:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = (*(v7 + 208) + **(v7 + 208));
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_1DF5A459C;

  return v18(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of XPCActivity.updateCriteria()(uint64_t a1)
{
  v6 = (*(*v1 + 264) + **(*v1 + 264));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DF59D2C8;

  return v6(a1);
}

uint64_t sub_1DF61A778(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1DF61A808(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DF61A93C()
{
  result = qword_1ECE43560;
  if (!qword_1ECE43560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43560);
  }

  return result;
}

unint64_t sub_1DF61A994()
{
  result = qword_1ECE43568;
  if (!qword_1ECE43568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43568);
  }

  return result;
}

unint64_t sub_1DF61A9EC()
{
  result = qword_1ECE43570;
  if (!qword_1ECE43570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43570);
  }

  return result;
}

unint64_t sub_1DF61AA44()
{
  result = qword_1ECE43578;
  if (!qword_1ECE43578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43578);
  }

  return result;
}

unint64_t sub_1DF61AA9C()
{
  result = qword_1ECE43580;
  if (!qword_1ECE43580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43580);
  }

  return result;
}

unint64_t sub_1DF61AAF4()
{
  result = qword_1ECE43588;
  if (!qword_1ECE43588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43588);
  }

  return result;
}

unint64_t sub_1DF61AB4C()
{
  result = qword_1ECE43590;
  if (!qword_1ECE43590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43590);
  }

  return result;
}

unint64_t sub_1DF61ABA4()
{
  result = qword_1ECE43598;
  if (!qword_1ECE43598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43598);
  }

  return result;
}

unint64_t sub_1DF61ABFC()
{
  result = qword_1ECE435A0;
  if (!qword_1ECE435A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE435A0);
  }

  return result;
}

unint64_t sub_1DF61AC54()
{
  result = qword_1ECE435A8;
  if (!qword_1ECE435A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE435A8);
  }

  return result;
}

unint64_t sub_1DF61ACAC()
{
  result = qword_1ECE435B0;
  if (!qword_1ECE435B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE435B0);
  }

  return result;
}

unint64_t sub_1DF61AD04()
{
  result = qword_1ECE435B8;
  if (!qword_1ECE435B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE435B8);
  }

  return result;
}

unint64_t sub_1DF61AD5C()
{
  result = qword_1ECE435C0;
  if (!qword_1ECE435C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE435C0);
  }

  return result;
}

unint64_t sub_1DF61ADB4()
{
  result = qword_1ECE435C8;
  if (!qword_1ECE435C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE435C8);
  }

  return result;
}

unint64_t sub_1DF61AE0C()
{
  result = qword_1ECE435D0;
  if (!qword_1ECE435D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE435D0);
  }

  return result;
}

unint64_t sub_1DF61AE64()
{
  result = qword_1ECE435D8;
  if (!qword_1ECE435D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE435D8);
  }

  return result;
}

unint64_t sub_1DF61AEBC()
{
  result = qword_1ECE435E0;
  if (!qword_1ECE435E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE435E0);
  }

  return result;
}

uint64_t sub_1DF61AF10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E496B63656863 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DF63394C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1953063287 && a2 == 0xE400000000000000 || (sub_1DF63394C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7239026 && a2 == 0xE300000000000000 || (sub_1DF63394C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7265666564 && a2 == 0xE500000000000000 || (sub_1DF63394C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65756E69746E6F63 && a2 == 0xE800000000000000 || (sub_1DF63394C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1701736292 && a2 == 0xE400000000000000 || (sub_1DF63394C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6164696C61766E69 && a2 == 0xEB00000000646574)
  {

    return 6;
  }

  else
  {
    v6 = sub_1DF63394C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_1DF61B158()
{
  result = qword_1ECE435E8;
  if (!qword_1ECE435E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE435E8);
  }

  return result;
}

uint64_t sub_1DF61B1B4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 24);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1DF59D2C4;

  return sub_1DF6176CC(v2, v4, v3);
}

uint64_t UnsignedInteger.reversed.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31[0] = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v31 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v31 - v10;
  v13 = *(*(*(v12 + 8) + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = v31 - v15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v35 = AssociatedTypeWitness;
  v33 = AssociatedConformanceWitness;
  sub_1DF63399C();
  v31[1] = a2;
  v34 = v16;
  v36 = v13;
  sub_1DF63392C();
  result = sub_1DF63336C();
  if (result < 0)
  {
    goto LABEL_22;
  }

  v19 = result;
  if (result)
  {
    v37 = sub_1DF5B9E58();
    v20 = 0;
    v21 = (v31[0] + 8);
    v32 = v19;
    while (1)
    {
      v38 = v20;
      sub_1DF63331C();
      sub_1DF63399C();
      sub_1DF63392C();
      sub_1DF6332FC();
      v22 = *v21;
      (*v21)(v5, a1);
      v22(v8, a1);
      if (sub_1DF63337C())
      {
        break;
      }

      v23 = sub_1DF63337C();
      v24 = sub_1DF63336C();
      if ((v23 & 1) == 0)
      {
        if (v24 >= 64)
        {
LABEL_15:
          v38 = 0;
          sub_1DF6332EC();
          v27 = sub_1DF63292C();
          v22(v8, a1);
          result = (v22)(v11, a1);
          if (v27)
          {
            goto LABEL_4;
          }

          goto LABEL_16;
        }

        goto LABEL_13;
      }

      if (v24 > 64)
      {
        goto LABEL_15;
      }

      sub_1DF63399C();
      sub_1DF63392C();
      v25 = sub_1DF63290C();
      v22(v8, a1);
      if (v25)
      {
        goto LABEL_13;
      }

      v22(v11, a1);
LABEL_16:
      sub_1DF63399C();
      sub_1DF63392C();
      result = sub_1DF63336C();
      v28 = result - 1;
      if (__OFSUB__(result, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        return result;
      }

      v29 = __OFSUB__(v28, v20);
      v30 = v28 - v20;
      if (v29)
      {
        goto LABEL_21;
      }

      v38 = v30;
      sub_1DF63332C();
      v22(v5, a1);
      sub_1DF63333C();
      result = (v22)(v8, a1);
LABEL_4:
      if (v32 == ++v20)
      {
        return result;
      }
    }

    if (sub_1DF63336C() >= 64)
    {
      goto LABEL_15;
    }

LABEL_13:
    v26 = sub_1DF63335C();
    result = (v22)(v11, a1);
    if (!v26)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  return result;
}

int8x8_t static UInt64.interleave(x:y:)(unsigned int a1, unsigned int a2)
{
  v2 = vdupq_n_s64(a2);
  v3 = vdupq_n_s64(a1);
  v4 = vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_1DF63CD70), xmmword_1DF63CDB0), vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_1DF63CD10), xmmword_1DF63CD50), vshlq_u64(vandq_s8(v3, xmmword_1DF63CCB0), xmmword_1DF63CCD0)), vshlq_u64(vandq_s8(v3, xmmword_1DF63CD10), xmmword_1DF63CD30))), vshlq_u64(vandq_s8(v3, xmmword_1DF63CD70), xmmword_1DF63CD90)), vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_1DF63CCB0), xmmword_1DF63CCF0), vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_1DF63CC50), xmmword_1DF63CC90), vshlq_u64(vandq_s8(v3, xmmword_1DF63CBF0), xmmword_1DF63CC10)), vshlq_u64(vandq_s8(v3, xmmword_1DF63CC50), xmmword_1DF63CC70))), vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_1DF63CBF0), xmmword_1DF63CC30), vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_1DF63CB90), xmmword_1DF63CBD0), vshlq_u64(vandq_s8(v3, xmmword_1DF63CB90), xmmword_1DF63CBB0))), vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_1DF63CB30), xmmword_1DF63CB70), vshlq_u64(vandq_s8(v3, xmmword_1DF63CB30), xmmword_1DF63CB50)), vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_1DF63CAE0), xmmword_1DF63CB10), vshlq_u64(vandq_s8(v3, xmmword_1DF63CAE0), xmmword_1DF63CB00)))))), vorrq_s8(vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_1DF63CD60), xmmword_1DF63CDA0), vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_1DF63CD00), xmmword_1DF63CD40), vshlq_u64(vandq_s8(v3, xmmword_1DF63CCA0), xmmword_1DF63CCC0)), vshlq_u64(vandq_s8(v3, xmmword_1DF63CD00), xmmword_1DF63CD20))), vshlq_u64(vandq_s8(v3, xmmword_1DF63CD60), xmmword_1DF63CD80)), vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_1DF63CCA0), xmmword_1DF63CCE0), vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_1DF63CC40), xmmword_1DF63CC80), vshlq_u64(vandq_s8(v3, xmmword_1DF63CBE0), xmmword_1DF63CC00)), vshlq_u64(vandq_s8(v3, xmmword_1DF63CC40), xmmword_1DF63CC60))), vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_1DF63CBE0), xmmword_1DF63CC20), vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_1DF63CB80), xmmword_1DF63CBC0), vshlq_u64(vandq_s8(v3, xmmword_1DF63CB80), xmmword_1DF63CBA0))), vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_1DF63CB20), xmmword_1DF63CB60), vshlq_u64(vandq_s8(v3, xmmword_1DF63CB20), xmmword_1DF63CB40)), vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_1DF638990), xmmword_1DF638990), vshlq_u64(vandq_s8(v3, xmmword_1DF638990), xmmword_1DF63CAF0)))))));
  return vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL));
}

unint64_t UInt64.deinterleave.getter(unint64_t result)
{
  LODWORD(v1) = 0;
  LODWORD(v2) = 0;
  v3 = -2;
  for (i = 1; ; ++i)
  {
    v5 = ((1 << (v3 + 2)) & result) >> (i - 1);
    if (HIDWORD(v5))
    {
      break;
    }

    v6 = ((2 << (v3 + 2)) & result) >> i;
    if (HIDWORD(v6))
    {
      goto LABEL_7;
    }

    v2 = v2 | v5;
    v1 = v1 | v6;
    v3 += 2;
    if (v3 >= 0x3E)
    {
      return v2 | (v1 << 32);
    }
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

uint64_t withCancellableCheckedThrowingContinuation<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF61BC48, 0, 0);
}

uint64_t sub_1DF61BC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContinuationBox(0, *(v4 + 40), a3, a4);
  swift_allocObject();
  v11 = *(v4 + 24);
  v5 = sub_1DF61CC78();
  *(v4 + 48) = v5;
  v6 = swift_task_alloc();
  *(v4 + 56) = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v11;
  v7 = swift_task_alloc();
  *(v4 + 64) = v7;
  *v7 = v4;
  v7[1] = sub_1DF61BD70;
  v8 = *(v4 + 40);
  v9 = *(v4 + 16);

  return MEMORY[0x1EEE6DE18](v9, &unk_1DF63CDD8, v6, sub_1DF61C590, v5, 0, 0, v8);
}

uint64_t sub_1DF61BD70()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1DF61BEF0;
  }

  else
  {

    v2 = sub_1DF61BE8C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF61BE8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF61BEF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF61BFA8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF61BFF4, 0, 0);
}

uint64_t sub_1DF61BFF4()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v2;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = *(v1 + 80);
  *v4 = v0;
  v4[1] = sub_1DF609B10;
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD00000000000002ELL, 0x80000001DF635A60, sub_1DF61CE48, v3, v5);
}

uint64_t sub_1DF61C0F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DF59D2C8;

  return sub_1DF61BFA8(a1, v4, v5, v6);
}

uint64_t sub_1DF61C1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[1] = a4;
  v7 = *(*a2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE42B18, &qword_1DF63B240);
  v8 = sub_1DF632E4C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C10, &qword_1DF63B260);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v20 - v13;
  sub_1DF632F7C();
  v15 = sub_1DF632E9C();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v9 + 16))(v11, a1, v8);
  v16 = *(v9 + 80);
  v20[0] = a3;
  v17 = (v16 + 48) & ~v16;
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = v7;
  *(v18 + 5) = a2;
  (*(v9 + 32))(&v18[v17], v11, v8);

  sub_1DF5CE7F8(0, 0, v14, &unk_1DF63CE78, v18);

  return (v20[0])(a1);
}

uint64_t sub_1DF61C404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1DF61C424, a4, 0);
}

uint64_t sub_1DF61C424()
{
  sub_1DF61C6E8(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF61C484(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C10, &qword_1DF63B260);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_1DF632E9C();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;

  sub_1DF5CE7F8(0, 0, v4, &unk_1DF63CE68, v6);
}

uint64_t sub_1DF61C598(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE42B18, &qword_1DF63B240);
  sub_1DF632E4C();
  result = sub_1DF63327C();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DF61C688()
{
  sub_1DF61C898();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF61C6E8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE42B18, &qword_1DF63B240);
  v3 = sub_1DF632E4C();
  v4 = sub_1DF63327C();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *(v3 - 8);
  (*(v9 + 16))(&v12 - v7, a1, v3, v6);
  (*(v9 + 56))(v8, 0, 1, v3);
  v10 = *(*v1 + 96);
  swift_beginAccess();
  (*(v5 + 40))(v1 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_1DF61C898()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE42B18, &qword_1DF63B240);
  v3 = sub_1DF632E4C();
  v4 = sub_1DF63327C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v18 - v9;
  v11 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v18 - v13;
  v15 = *(v2 + 96);
  swift_beginAccess();
  (*(v5 + 16))(v10, &v1[v15], v4);
  if ((*(v11 + 48))(v10, 1, v3) == 1)
  {
    return (*(v5 + 8))(v10, v4);
  }

  (*(v11 + 32))(v14, v10, v3);
  sub_1DF632E5C();
  sub_1DF61CD3C();
  v17 = swift_allocError();
  sub_1DF6327FC();
  v18[0] = v17;
  sub_1DF632E2C();
  (*(v11 + 8))(v14, v3);
  (*(v11 + 56))(v7, 1, 1, v3);
  swift_beginAccess();
  (*(v5 + 40))(&v1[v15], v7, v4);
  return swift_endAccess();
}

uint64_t sub_1DF61CB8C()
{
  v1 = *(*v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE42B18, &qword_1DF63B240);
  sub_1DF632E4C();
  v2 = sub_1DF63327C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1DF61CC50()
{
  v0 = sub_1DF61CB8C();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t *sub_1DF61CC78()
{
  swift_defaultActor_initialize();
  v1 = *(*v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE42B18, &qword_1DF63B240);
  v2 = sub_1DF632E4C();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  return v0;
}

unint64_t sub_1DF61CD3C()
{
  result = qword_1ED8E56F0;
  if (!qword_1ED8E56F0)
  {
    sub_1DF632E5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8E56F0);
  }

  return result;
}

uint64_t sub_1DF61CD94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DF59D2C4;

  return sub_1DF61C668(a1, v4, v5, v6);
}

uint64_t sub_1DF61CE54(uint64_t a1)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE42B18, &qword_1DF63B240);
  v5 = *(sub_1DF632E4C() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1DF59D2C8;

  return sub_1DF61C404(a1, v7, v8, v9, v1 + v6);
}

uint64_t sub_1DF61CF78(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v43 = &v42 - v14;
  v46 = a5;
  v44 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v57 = &v42 - v18;
  v19 = sub_1DF63327C();
  v47 = *(v19 - 8);
  v48 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v50 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v42 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v49 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v55 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v31 = &v42 - v30;
  v32 = sub_1DF632C3C();
  v63 = sub_1DF63354C();
  v58 = sub_1DF63355C();
  sub_1DF63352C();
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = sub_1DF632C1C();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_1DF63329C();
      result = (*v34)(v23, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v23, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v23, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v23, AssociatedTypeWitness);
      sub_1DF63353C();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  sub_1DF63329C();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      sub_1DF63353C();
      sub_1DF63329C();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

uint64_t backtrace(maxiumFrameCount:)(size_t isStackAllocationSafe)
{
  v6[1] = *MEMORY[0x1E69E9840];
  if ((isStackAllocationSafe & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
  }

  v1 = isStackAllocationSafe;
  if (isStackAllocationSafe >> 60)
  {
    goto LABEL_9;
  }

  if ((8 * isStackAllocationSafe) <= 1024 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), isStackAllocationSafe))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    sub_1DF61E118((v6 - v2), v1, v6);
    return v6[0];
  }

  else
  {
    v4 = swift_slowAlloc();
    sub_1DF61E118(v4, v1, v6);
    MEMORY[0x1E12D9D80](v4, -1, -1);
    return v6[0];
  }
}

uint64_t Sequence<>.logRepresentation.getter(unsigned int (*a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1DF61CF78(sub_1DF61E504, 0, a1, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], a2, MEMORY[0x1E69E7410], a8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE425C0, &qword_1DF637D10);
  sub_1DF5BC754();
  v8 = sub_1DF6328DC();

  return v8;
}

uint64_t ImageOffset.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DF6325AC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ImageOffset.description.getter()
{
  sub_1DF6325AC();
  sub_1DF5A9208(&unk_1ED8E4A10, MEMORY[0x1E69695E0]);
  v2 = sub_1DF6338DC();
  MEMORY[0x1E12D82E0](2016419898, 0xE400000000000000);
  type metadata accessor for ImageOffset(0);
  sub_1DF60E86C();
  v0 = sub_1DF632BDC();
  MEMORY[0x1E12D82E0](v0);

  return v2;
}

uint64_t sub_1DF61D9D4()
{
  if (*v0)
  {
    return 0x74657366666FLL;
  }

  else
  {
    return 1684632949;
  }
}

uint64_t sub_1DF61DA04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v5 || (sub_1DF63394C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74657366666FLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DF63394C();

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

uint64_t sub_1DF61DADC(uint64_t a1)
{
  v2 = sub_1DF61E638();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF61DB18(uint64_t a1)
{
  v2 = sub_1DF61E638();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImageOffset.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43600, &qword_1DF63CE80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF61E638();
  sub_1DF633AFC();
  v8[15] = 0;
  sub_1DF6325AC();
  sub_1DF5A9208(&qword_1ECE430A0, MEMORY[0x1E69695B0]);
  sub_1DF63385C();
  if (!v1)
  {
    type metadata accessor for ImageOffset(0);
    v8[14] = 1;
    sub_1DF63389C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ImageOffset.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v20 = sub_1DF6325AC();
  v18 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43610, &qword_1DF63CE88);
  v19 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v7 = &v16 - v6;
  v8 = type metadata accessor for ImageOffset(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF61E638();
  sub_1DF633ADC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v10;
  v11 = v18;
  v23 = 0;
  sub_1DF5A9208(qword_1ECE430A8, MEMORY[0x1E69695D0]);
  v12 = v20;
  sub_1DF6337CC();
  v13 = v16;
  (*(v11 + 32))(v16, v5, v12);
  v22 = 1;
  v14 = sub_1DF63380C();
  (*(v19 + 8))(v7, v21);
  *(v13 + *(v8 + 20)) = v14;
  sub_1DF60E808(v13, v17);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DF60E8C0(v13);
}

uint64_t sub_1DF61E050(uint64_t a1)
{
  sub_1DF6325AC();
  sub_1DF5A9208(&unk_1ED8E4A10, MEMORY[0x1E69695E0]);
  v3 = sub_1DF6338DC();
  MEMORY[0x1E12D82E0](2016419898, 0xE400000000000000);
  sub_1DF60E86C();
  v1 = sub_1DF632BDC();
  MEMORY[0x1E12D82E0](v1);

  return v3;
}

void sub_1DF61E118(void **a1@<X0>, size_t a2@<X2>, uint64_t *a3@<X8>)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v7 = type metadata accessor for ImageOffset(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69E7CC0];
  if (!a1)
  {
    goto LABEL_19;
  }

  isStackAllocationSafe = backtrace_async(a1, a2, 0);
  if (isStackAllocationSafe < 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  v13 = isStackAllocationSafe;
  v26 = a3;
  v27 = v3;
  v14 = 20 * isStackAllocationSafe;
  if ((isStackAllocationSafe * 20) >> 64 != (20 * isStackAllocationSafe) >> 63)
  {
    goto LABEL_22;
  }

  if (v14 <= 1024 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), isStackAllocationSafe))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v16 = (v25 - v15);
    if (v13 <= 0x7FFFFFFF)
    {
      backtrace_image_offsets(a1, v16, v13);
      if (v13)
      {
        v17 = sub_1DF5EF624(v13, 0);
        memcpy(v17 + 4, v16, v14);
      }

      else
      {
        v17 = MEMORY[0x1E69E7CC0];
      }

      v18 = v17[2];
      if (!v18)
      {
        goto LABEL_18;
      }

      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_21;
  }

  v23 = swift_slowAlloc();
  v24 = v27;
  sub_1DF61E44C(v28, v23, a1, v13, v13);
  v27 = v24;
  if (!v24)
  {
    MEMORY[0x1E12D9D80](v23, -1, -1);
    v17 = v28[0];
    v18 = *(v28[0] + 16);
    if (!v18)
    {
LABEL_18:

      a3 = v26;
LABEL_19:
      *a3 = v11;
      return;
    }

LABEL_10:
    v28[0] = v11;
    sub_1DF5DB1B8(0, v18, 0);
    v11 = v28[0];
    v25[1] = v17;
    v19 = (v17 + 6);
    do
    {
      v20 = *v19;
      sub_1DF63257C();
      *&v10[*(v7 + 20)] = v20;
      v28[0] = v11;
      v22 = *(v11 + 16);
      v21 = *(v11 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1DF5DB1B8((v21 > 1), v22 + 1, 1);
        v11 = v28[0];
      }

      v19 += 5;
      *(v11 + 16) = v22 + 1;
      sub_1DF61E840(v10, v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v22);
      --v18;
    }

    while (v18);
    goto LABEL_18;
  }

  MEMORY[0x1E12D9D80](v23, -1, -1);
  __break(1u);
}

void sub_1DF61E44C(uint64_t *__return_ptr a1@<X8>, image_offset *image_offsets@<X0>, void **array@<X2>, uint64_t size@<X3>, uint64_t a5@<X1>)
{
  if (!image_offsets)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_8:
    *a1 = v8;
    return;
  }

  if (size < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (size <= 0x7FFFFFFF)
  {
    backtrace_image_offsets(array, image_offsets, size);
    if (a5)
    {
      v8 = sub_1DF5EF624(a5, 0);
      memcpy(v8 + 4, image_offsets, 20 * a5);
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1DF61E504@<X0>(uint64_t *a2@<X8>)
{
  sub_1DF6325AC();
  sub_1DF5A9208(&unk_1ED8E4A10, MEMORY[0x1E69695E0]);
  v6 = sub_1DF6338DC();
  v7 = v3;
  MEMORY[0x1E12D82E0](2016419898, 0xE400000000000000);
  type metadata accessor for ImageOffset(0);
  sub_1DF60E86C();
  v4 = sub_1DF632BDC();
  MEMORY[0x1E12D82E0](v4);

  *a2 = v6;
  a2[1] = v7;
  return result;
}

uint64_t type metadata accessor for ImageOffset(uint64_t a1)
{
  result = qword_1ED8E5BD0;
  if (!qword_1ED8E5BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1DF61E638()
{
  result = qword_1ECE43608;
  if (!qword_1ECE43608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43608);
  }

  return result;
}

uint64_t sub_1DF61E6B4(uint64_t a1)
{
  result = sub_1DF6325AC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1DF61E73C()
{
  result = qword_1ECE43618;
  if (!qword_1ECE43618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43618);
  }

  return result;
}

unint64_t sub_1DF61E794()
{
  result = qword_1ECE43620;
  if (!qword_1ECE43620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43620);
  }

  return result;
}

unint64_t sub_1DF61E7EC()
{
  result = qword_1ECE43628;
  if (!qword_1ECE43628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43628);
  }

  return result;
}

uint64_t sub_1DF61E840(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageOffset(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AirTagVersionNumber.description.getter()
{
  v3 = sub_1DF6338DC();
  MEMORY[0x1E12D82E0](46, 0xE100000000000000);
  v0 = sub_1DF6338DC();
  MEMORY[0x1E12D82E0](v0);

  MEMORY[0x1E12D82E0](46, 0xE100000000000000);
  v1 = sub_1DF6338DC();
  MEMORY[0x1E12D82E0](v1);

  return v3;
}

uint64_t AirTagVersionNumber.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  v4 = AirTagVersionNumber.description.getter();
  v5 = v3 | (v1 << 24) | (v2 << 16);
  v6 = sub_1DF5B88EC(v5, 0x4000000000000uLL);
  v8 = v7;
  sub_1DF5B33C0(v5, 0x4000000000000uLL);
  MEMORY[0x1E12D82E0](v6, v8);

  MEMORY[0x1E12D82E0](0x756C615677617220, 0xEA00000000002065);

  return v4;
}

uint64_t AirTagVersionNumber.init(stringLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{

  AirTagVersionNumber.init(string:)(a1, a2, v8);
  if ((v8[0] & 0x100000000) != 0)
  {
    v8[0] = 0;
    v8[1] = 0xE000000000000000;
    sub_1DF63347C();
    MEMORY[0x1E12D82E0](0xD00000000000003BLL, 0x80000001DF635AC0);
    MEMORY[0x1E12D82E0](a1, a2);
    MEMORY[0x1E12D82E0](93, 0xE100000000000000);
    result = sub_1DF6336EC();
    __break(1u);
  }

  else
  {
    v6 = v8[0];

    *a3 = v6;
  }

  return result;
}

unint64_t AirTagVersionNumber.init(string:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a1;
  v33 = a2;
  sub_1DF5BC6B8();
  v4 = sub_1DF6332BC();

  v6 = v4[2];
  if ((v6 & 0x7FFFFFFFFFFFFFFELL) != 2 || ((v7 = v4[4], v8 = v4[5], v9 = HIBYTE(v8) & 0xF, v10 = v7 & 0xFFFFFFFFFFFFLL, (v8 & 0x2000000000000000) != 0) ? (v11 = HIBYTE(v8) & 0xF) : (v11 = v7 & 0xFFFFFFFFFFFFLL), !v11))
  {
LABEL_73:

    goto LABEL_74;
  }

  if ((v8 & 0x1000000000000000) != 0)
  {

    LOWORD(v7) = sub_1DF620C08(v7, v8, 10);

    if ((v7 & 0x100) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_73;
  }

  if ((v8 & 0x2000000000000000) != 0)
  {
    v32 = v4[4];
    v33 = v8 & 0xFFFFFFFFFFFFFFLL;
    if (v7 == 43)
    {
      if (v9)
      {
        if (--v9)
        {
          LOBYTE(v7) = 0;
          v19 = &v32 + 1;
          while (1)
          {
            v20 = *v19 - 48;
            if (v20 > 9)
            {
              break;
            }

            if (((10 * v7) & 0xF00) != 0)
            {
              break;
            }

            LODWORD(v7) = (10 * v7) + v20;
            if ((v7 >> 8))
            {
              break;
            }

            ++v19;
            if (!--v9)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }
    }

    else
    {
      if (v7 != 45)
      {
        if (v9)
        {
          LOBYTE(v7) = 0;
          v22 = &v32;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            if (((10 * v7) & 0xF00) != 0)
            {
              break;
            }

            LODWORD(v7) = (10 * v7) + v23;
            if ((v7 >> 8))
            {
              break;
            }

            v22 = (v22 + 1);
            if (!--v9)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }

      if (v9)
      {
        if (--v9)
        {
          LOBYTE(v7) = 0;
          v15 = &v32 + 1;
          while (1)
          {
            v16 = *v15 - 48;
            if (v16 > 9)
            {
              break;
            }

            if (((10 * v7) & 0xF00) != 0)
            {
              break;
            }

            LODWORD(v7) = (10 * v7) - v16;
            if ((v7 & 0xFFFFFF00) != 0)
            {
              break;
            }

            ++v15;
            if (!--v9)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }

LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
    }

    __break(1u);
LABEL_82:
    __break(1u);
    return result;
  }

  if ((v7 & 0x1000000000000000) == 0)
  {
    goto LABEL_77;
  }

  for (result = (v8 & 0xFFFFFFFFFFFFFFFLL) + 32; ; result = sub_1DF63350C())
  {
    v12 = *result;
    if (v12 == 43)
    {
      if (v10 < 1)
      {
        goto LABEL_80;
      }

      v9 = v10 - 1;
      if (v10 != 1)
      {
        LOBYTE(v7) = 0;
        if (!result)
        {
          goto LABEL_54;
        }

        v17 = (result + 1);
        while (1)
        {
          v18 = *v17 - 48;
          if (v18 > 9)
          {
            break;
          }

          if (((10 * v7) & 0xF00) != 0)
          {
            break;
          }

          LODWORD(v7) = (10 * v7) + v18;
          if ((v7 >> 8))
          {
            break;
          }

          ++v17;
          if (!--v9)
          {
            goto LABEL_63;
          }
        }
      }
    }

    else if (v12 == 45)
    {
      if (v10 < 1)
      {
        __break(1u);
        goto LABEL_79;
      }

      v9 = v10 - 1;
      if (v10 != 1)
      {
        LOBYTE(v7) = 0;
        if (!result)
        {
          goto LABEL_54;
        }

        v13 = (result + 1);
        while (1)
        {
          v14 = *v13 - 48;
          if (v14 > 9)
          {
            break;
          }

          if (((10 * v7) & 0xF00) != 0)
          {
            break;
          }

          LODWORD(v7) = (10 * v7) - v14;
          if ((v7 & 0xFFFFFF00) != 0)
          {
            break;
          }

          ++v13;
          if (!--v9)
          {
            goto LABEL_63;
          }
        }
      }
    }

    else if (v10)
    {
      LOBYTE(v7) = 0;
      if (!result)
      {
LABEL_54:
        LOBYTE(v9) = 0;
        goto LABEL_63;
      }

      while (1)
      {
        v21 = *result - 48;
        if (v21 > 9)
        {
          break;
        }

        if (((10 * v7) & 0xF00) != 0)
        {
          break;
        }

        LODWORD(v7) = (10 * v7) + v21;
        if ((v7 >> 8))
        {
          break;
        }

        ++result;
        if (!--v10)
        {
          goto LABEL_54;
        }
      }
    }

LABEL_62:
    LOBYTE(v7) = 0;
    LOBYTE(v9) = 1;
LABEL_63:
    if (v9)
    {
      goto LABEL_73;
    }

LABEL_64:
    if (v4[2] >= 2uLL)
    {
      break;
    }

    __break(1u);
LABEL_77:
    ;
  }

  v24 = v4[6];
  v25 = v4[7];

  result = sub_1DF61F1D0(v24, v25);
  if ((result & 0x100) != 0)
  {
    goto LABEL_73;
  }

  v26 = result;
  if (v6 != 3)
  {

    v29 = 0;
    goto LABEL_71;
  }

  if (v4[2] < 3uLL)
  {
    goto LABEL_82;
  }

  v27 = v4[8];
  v28 = v4[9];

  result = sub_1DF61F4E8(v27, v28);
  if ((result & 0x10000) == 0)
  {
    v29 = result << 16;
LABEL_71:
    v30 = 0;
    v31 = v29 | (v7 | (v26 << 8));
    goto LABEL_75;
  }

LABEL_74:
  v31 = 0;
  v30 = 1;
LABEL_75:
  *a3 = v31;
  *(a3 + 4) = v30;
  return result;
}

uint64_t AirTagVersionNumber.init(major:minor:revision:)@<X0>(uint64_t result@<X0>, char a2@<W1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 1) = a2;
  *(a4 + 2) = a3;
  return result;
}

uint64_t AirTagVersionNumber.init(data:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_11;
    }

    v6 = *(result + 16);
    v5 = *(result + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 == 4)
      {
        goto LABEL_8;
      }

LABEL_11:
      result = sub_1DF5B33C0(result, a2);
      v22 = 0;
      v21 = 1;
      goto LABEL_12;
    }

    __break(1u);
  }

  else
  {
    if (!v4)
    {
      if (BYTE6(a2) != 4)
      {
        goto LABEL_11;
      }

LABEL_8:
      v9 = result;
      v11 = sub_1DF63241C();
      v13 = v12;
      v14 = sub_1DF63241C();
      v16 = v15;
      v17 = sub_1DF63241C();
      v19 = v18;
      v25 = sub_1DF63238C();
      v24 = sub_1DF63238C();
      v23 = sub_1DF63238C();
      v20 = sub_1DF63238C();
      sub_1DF5B33C0(v17, v19);
      sub_1DF5B33C0(v14, v16);
      sub_1DF5B33C0(v11, v13);
      result = sub_1DF5B33C0(v9, a2);
      v21 = 0;
      v22 = (v23 << 24) | (v20 << 16) | v25 | (v24 << 8);
LABEL_12:
      *a3 = v22;
      *(a3 + 4) = v21;
      return result;
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 4)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1DF61F1D0(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    v19 = 0;
    LOBYTE(v18) = 1;
    return v19 | ((v18 & 1) << 8);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_1DF620C08(result, a2, 10);

    v18 = (v6 >> 8) & 1;
LABEL_63:
    if (v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = v6;
    }

    return v19 | ((v18 & 1) << 8);
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1DF63350C();
      v3 = v20;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LOBYTE(v6) = 0;
          if (result)
          {
            v11 = (result + 1);
            while (1)
            {
              v12 = *v11 - 48;
              if (v12 > 9)
              {
                goto LABEL_61;
              }

              if (((10 * v6) & 0xF00) != 0)
              {
                goto LABEL_61;
              }

              v6 = (10 * v6) + v12;
              if ((v6 >> 8))
              {
                goto LABEL_61;
              }

              ++v11;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LOBYTE(v6) = 0;
        if (result)
        {
          while (1)
          {
            v15 = *result - 48;
            if (v15 > 9)
            {
              goto LABEL_61;
            }

            if (((10 * v6) & 0xF00) != 0)
            {
              goto LABEL_61;
            }

            v6 = (10 * v6) + v15;
            if ((v6 >> 8))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      LOBYTE(v6) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LOBYTE(v6) = 0;
        if (result)
        {
          v7 = (result + 1);
          while (1)
          {
            v8 = *v7 - 48;
            if (v8 > 9)
            {
              goto LABEL_61;
            }

            if (((10 * v6) & 0xF00) != 0)
            {
              goto LABEL_61;
            }

            v6 = (10 * v6) - v8;
            if ((v6 & 0xFFFFFF00) != 0)
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v3) = 0;
LABEL_62:
        v22 = v3;
        LOBYTE(v18) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v21[0] = result;
  v21[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LOBYTE(v6) = 0;
        v16 = v21;
        while (1)
        {
          v17 = *v16 - 48;
          if (v17 > 9)
          {
            break;
          }

          if (((10 * v6) & 0xF00) != 0)
          {
            break;
          }

          v6 = (10 * v6) + v17;
          if ((v6 >> 8))
          {
            break;
          }

          ++v16;
          if (!--v2)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v2)
    {
      v3 = v2 - 1;
      if (v2 != 1)
      {
        LOBYTE(v6) = 0;
        v9 = v21 + 1;
        while (1)
        {
          v10 = *v9 - 48;
          if (v10 > 9)
          {
            break;
          }

          if (((10 * v6) & 0xF00) != 0)
          {
            break;
          }

          v6 = (10 * v6) - v10;
          if ((v6 & 0xFFFFFF00) != 0)
          {
            break;
          }

          ++v9;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LOBYTE(v6) = 0;
      v13 = v21 + 1;
      while (1)
      {
        v14 = *v13 - 48;
        if (v14 > 9)
        {
          break;
        }

        if (((10 * v6) & 0xF00) != 0)
        {
          break;
        }

        v6 = (10 * v6) + v14;
        if ((v6 >> 8))
        {
          break;
        }

        ++v13;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

unint64_t sub_1DF61F4E8(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    v19 = 0;
    LOBYTE(v18) = 1;
    return v19 & 0xFFFEFFFF | ((v18 & 1) << 16);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_1DF620634(result, a2, 10);

    v18 = HIWORD(v6) & 1;
LABEL_63:
    if (v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = v6;
    }

    return v19 & 0xFFFEFFFF | ((v18 & 1) << 16);
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1DF63350C();
      v3 = v20;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LOWORD(v6) = 0;
          if (result)
          {
            v11 = (result + 1);
            while (1)
            {
              v12 = *v11 - 48;
              if (v12 > 9)
              {
                goto LABEL_61;
              }

              if (((10 * v6) & 0xF0000) != 0)
              {
                goto LABEL_61;
              }

              v6 = (10 * v6) + v12;
              if ((v6 & 0x10000) != 0)
              {
                goto LABEL_61;
              }

              ++v11;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LOWORD(v6) = 0;
        if (result)
        {
          while (1)
          {
            v15 = *result - 48;
            if (v15 > 9)
            {
              goto LABEL_61;
            }

            if (((10 * v6) & 0xF0000) != 0)
            {
              goto LABEL_61;
            }

            v6 = (10 * v6) + v15;
            if ((v6 & 0x10000) != 0)
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      LOWORD(v6) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LOWORD(v6) = 0;
        if (result)
        {
          v7 = (result + 1);
          while (1)
          {
            v8 = *v7 - 48;
            if (v8 > 9)
            {
              goto LABEL_61;
            }

            if (((10 * v6) & 0xF0000) != 0)
            {
              goto LABEL_61;
            }

            v6 = (10 * v6) - v8;
            if ((v6 & 0xFFFF0000) != 0)
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v3) = 0;
LABEL_62:
        v22 = v3;
        LOBYTE(v18) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v21[0] = result;
  v21[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LOWORD(v6) = 0;
        v16 = v21;
        while (1)
        {
          v17 = *v16 - 48;
          if (v17 > 9)
          {
            break;
          }

          if (((10 * v6) & 0xF0000) != 0)
          {
            break;
          }

          v6 = (10 * v6) + v17;
          if ((v6 & 0x10000) != 0)
          {
            break;
          }

          ++v16;
          if (!--v2)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v2)
    {
      v3 = v2 - 1;
      if (v2 != 1)
      {
        LOWORD(v6) = 0;
        v9 = v21 + 1;
        while (1)
        {
          v10 = *v9 - 48;
          if (v10 > 9)
          {
            break;
          }

          if (((10 * v6) & 0xF0000) != 0)
          {
            break;
          }

          v6 = (10 * v6) - v10;
          if ((v6 & 0xFFFF0000) != 0)
          {
            break;
          }

          ++v9;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LOWORD(v6) = 0;
      v13 = v21 + 1;
      while (1)
      {
        v14 = *v13 - 48;
        if (v14 > 9)
        {
          break;
        }

        if (((10 * v6) & 0xF0000) != 0)
        {
          break;
        }

        v6 = (10 * v6) + v14;
        if ((v6 & 0x10000) != 0)
        {
          break;
        }

        ++v13;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_1DF61F838()
{
  v1 = 0x726F6E696DLL;
  if (*v0 != 1)
  {
    v1 = 0x6E6F697369766572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F6A616DLL;
  }
}

uint64_t sub_1DF61F88C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DF6214BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DF61F8C0(uint64_t a1)
{
  v2 = sub_1DF621230();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF61F8FC(uint64_t a1)
{
  v2 = sub_1DF621230();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AirTagVersionNumber.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43630, &qword_1DF63D050);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  v9[6] = *(v1 + 1);
  v9[3] = *(v1 + 2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF621230();
  sub_1DF633AFC();
  v12 = 0;
  sub_1DF63387C();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v11 = 1;
  sub_1DF63387C();
  v10 = 2;
  sub_1DF63388C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t AirTagVersionNumber.hash(into:)()
{
  sub_1DF633A8C();
  sub_1DF633A8C();
  return sub_1DF633A9C();
}

uint64_t AirTagVersionNumber.hashValue.getter()
{
  sub_1DF633A6C();
  sub_1DF633A8C();
  sub_1DF633A8C();
  sub_1DF633A9C();
  return sub_1DF633AAC();
}

uint64_t AirTagVersionNumber.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43640, &qword_1DF63D058);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF621230();
  sub_1DF633ADC();
  if (!v2)
  {
    v16 = 0;
    v9 = sub_1DF6337EC();
    v15 = 1;
    v13 = sub_1DF6337EC();
    v14 = 2;
    v11 = sub_1DF6337FC();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 1) = v13;
    *(a2 + 2) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

BOOL sub_1DF61FDB0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v3 < v2)
  {
    return 0;
  }

  if (v2 < v3)
  {
    return 1;
  }

  v5 = a1[1];
  v6 = a2[1];
  v8 = v5 < v6 || *(a2 + 1) >= *(a1 + 1);
  return v6 >= v5 && v8;
}

BOOL sub_1DF61FE08(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 < v3)
  {
    return 0;
  }

  if (v3 < v2)
  {
    return 1;
  }

  v5 = a1[1];
  v6 = a2[1];
  v8 = v6 < v5 || *(a1 + 1) >= *(a2 + 1);
  return v5 >= v6 && v8;
}

uint64_t sub_1DF61FE60(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v3 < v2)
  {
    return 1;
  }

  v5 = a1[1];
  v6 = a2[1];
  v8 = v5 >= v6 && *(a2 + 1) < *(a1 + 1);
  v9 = v6 < v5 || v8;
  if (v2 < v3)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

uint64_t sub_1DF61FEC4()
{
  sub_1DF633A6C();
  sub_1DF633A8C();
  sub_1DF633A8C();
  sub_1DF633A9C();
  return sub_1DF633AAC();
}

uint64_t sub_1DF61FF34()
{
  sub_1DF633A8C();
  sub_1DF633A8C();
  return sub_1DF633A9C();
}

uint64_t sub_1DF61FF80(uint64_t a1)
{
  sub_1DF633A6C();
  sub_1DF633A8C();
  sub_1DF633A8C();
  sub_1DF633A9C();
  return sub_1DF633AAC();
}

uint64_t sub_1DF620024@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];

  AirTagVersionNumber.init(string:)(v4, v3, v7);
  if ((v7[0] & 0x100000000) != 0)
  {
    v7[0] = 0;
    v7[1] = 0xE000000000000000;
    sub_1DF63347C();
    MEMORY[0x1E12D82E0](0xD00000000000003BLL, 0x80000001DF635AC0);
    MEMORY[0x1E12D82E0](v4, v3);
    MEMORY[0x1E12D82E0](93, 0xE100000000000000);
    result = sub_1DF6336EC();
    __break(1u);
  }

  else
  {
    v5 = v7[0];

    *a2 = v5;
  }

  return result;
}

void AirTagVersionNumber.upNextMajor.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v2 + 1;
  if (((v2 + 1) & 0x100) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v4 = v1[1];
  v5 = *(v1 + 1);
  if (v2 < v3)
  {
LABEL_5:
    *a1 = v2;
    *(a1 + 1) = v4;
    *(a1 + 2) = v5;
    *(a1 + 4) = v3;
    *(a1 + 5) = 0;
    *(a1 + 6) = 0;
    return;
  }

  if (v1[1])
  {
    goto LABEL_7;
  }

  if (!*(v1 + 1))
  {
    goto LABEL_5;
  }

LABEL_8:
  __break(1u);
}

void sub_1DF62017C(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = v2 + 1;
  if (((v2 + 1) & 0x100) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 1);
    if (v2 < v3 || v4 == 0)
    {
      v6 = *v1;
      *a1 = *v1;
      *(a1 + 1) = v2;
      *(a1 + 2) = v4;
      *(a1 + 4) = v6;
      *(a1 + 5) = v3;
      *(a1 + 6) = 0;
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1DF6201C0(uint64_t a1, unint64_t a2)
{
  v2 = sub_1DF632C0C();
  v6 = sub_1DF620240(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1DF620240(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1DF63328C();
    if (!v9 || (v10 = v9, v11 = sub_1DF5A8128(v9, 0), v12 = sub_1DF620398(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1DF632ABC();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1DF632ABC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1DF63350C();
LABEL_4:

  return sub_1DF632ABC();
}

unint64_t sub_1DF620398(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1DF6205B8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1DF632B6C();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1DF63350C();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1DF6205B8(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1DF632B4C();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_1DF6205B8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1DF632B9C();
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
    v5 = MEMORY[0x1E12D8320](15, a1 >> 16);
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

unsigned __int8 *sub_1DF620634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a1;
  v64 = a2;

  result = sub_1DF632BFC();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1DF6201C0(result, v5);
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1DF63350C();
      v7 = v62;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v20 = v7 - 1;
        if (v20)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            LOWORD(v13) = 0;
            v24 = result + 1;
            v15 = 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v13 * a3;
              if ((v27 & 0xFFFF0000) != 0)
              {
                goto LABEL_126;
              }

              v13 = v27 + (v25 + v26);
              if ((v13 & 0x10000) != 0)
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          LOWORD(v31) = 0;
          v15 = 1;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v34 & 0xFFFF0000) != 0)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if ((v31 & 0x10000) != 0)
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v31;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          LOWORD(v13) = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFFFF0000) != 0)
            {
              goto LABEL_126;
            }

            v13 = v19 - (v16 + v17);
            if ((v13 & 0xFFFF0000) != 0)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_127:

        return (v18 | (v15 << 16));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v5) & 0xF;
  v63 = v6;
  v64 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        LOWORD(v39) = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v63;
        v15 = 1;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v61 & 0xFFFF0000) != 0)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if ((v39 & 0x10000) != 0)
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        LOWORD(v39) = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v63 + 1;
        v15 = 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v46 & 0xFFFF0000) != 0)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if ((v39 & 0xFFFF0000) != 0)
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      LOWORD(v39) = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v63 + 1;
      v15 = 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v54 & 0xFFFF0000) != 0)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if ((v39 & 0x10000) != 0)
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v15 = 0;
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1DF620C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a1;
  v64 = a2;

  result = sub_1DF632BFC();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1DF6201C0(result, v5);
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1DF63350C();
      v7 = v62;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v20 = v7 - 1;
        if (v20)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            LOBYTE(v13) = 0;
            v24 = result + 1;
            v15 = 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v13 * a3;
              if ((v27 & 0xFF00) != 0)
              {
                goto LABEL_126;
              }

              v13 = v27 + (v25 + v26);
              if ((v13 >> 8))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          LOBYTE(v31) = 0;
          v15 = 1;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v34 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if ((v31 >> 8))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v31;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          LOBYTE(v13) = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v13 = v19 - (v16 + v17);
            if ((v13 & 0xFFFFFF00) != 0)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_127:

        return (v18 | (v15 << 8));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v5) & 0xF;
  v63 = v6;
  v64 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        LOBYTE(v39) = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v63;
        v15 = 1;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v61 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if ((v39 >> 8))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        LOBYTE(v39) = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v63 + 1;
        v15 = 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v46 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if ((v39 & 0xFFFFFF00) != 0)
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      LOBYTE(v39) = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v63 + 1;
      v15 = 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v54 & 0xFF00) != 0)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if ((v39 >> 8))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v15 = 0;
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t _s10FindMyBase19AirTagVersionNumberV1loiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 < v3)
  {
    return 1;
  }

  v5 = a1[1];
  v6 = a2[1];
  v8 = v6 >= v5 && *(a1 + 1) < *(a2 + 1);
  v9 = v5 < v6 || v8;
  if (v3 >= v2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1DF621230()
{
  result = qword_1ECE43638;
  if (!qword_1ECE43638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43638);
  }

  return result;
}

unint64_t sub_1DF621284()
{
  result = qword_1ECE43648;
  if (!qword_1ECE43648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43648);
  }

  return result;
}

unint64_t sub_1DF6212DC()
{
  result = qword_1ECE43650;
  if (!qword_1ECE43650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43650);
  }

  return result;
}

unint64_t sub_1DF621334()
{
  result = qword_1ECE43658;
  if (!qword_1ECE43658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43658);
  }

  return result;
}

unint64_t sub_1DF6213B8()
{
  result = qword_1ECE43660;
  if (!qword_1ECE43660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43660);
  }

  return result;
}

unint64_t sub_1DF621410()
{
  result = qword_1ECE43668;
  if (!qword_1ECE43668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43668);
  }

  return result;
}

unint64_t sub_1DF621468()
{
  result = qword_1ECE43670;
  if (!qword_1ECE43670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43670);
  }

  return result;
}

uint64_t sub_1DF6214BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F6A616DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1DF63394C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F6E696DLL && a2 == 0xE500000000000000 || (sub_1DF63394C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697369766572 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DF63394C();

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

uint64_t TokenBucket.__allocating_init(fillRate:capacity:initialAllocation:)(double a1, double a2, double a3)
{
  v6 = swift_allocObject();
  TokenBucket.init(fillRate:capacity:initialAllocation:)(a1, a2, a3);
  return v6;
}

void *TokenBucket.init(fillRate:capacity:initialAllocation:)(double a1, double a2, double a3)
{
  v7 = 0xD000000000000015;
  v8 = sub_1DF63252C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A80, qword_1DF638E00);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v3 + 16) = v12;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0u;
  *(v3 + 104) = 0u;
  if (a1 <= 0.0)
  {
    v14 = "fillRate must be > 0.";
LABEL_7:
    v13 = v14 - 32;
    goto LABEL_8;
  }

  if (a2 <= 0.0)
  {
    v14 = "capacity must be > 0.";
    goto LABEL_7;
  }

  if (a3 >= 0.0)
  {
    if (a3 <= a2)
    {
      *(v3 + 32) = a2;
      *(v3 + 40) = a3;
      *(v3 + 24) = a1;
      sub_1DF63250C();
      sub_1DF63244C();
      v19 = v18;
      v20 = *(v9 + 8);
      v20(v11, v8);
      *(v3 + 104) = v19;
      sub_1DF63245C();
      sub_1DF63244C();
      v22 = v21;
      v20(v11, v8);
      *(v3 + 48) = v22;
      return v3;
    }

    v13 = "initialAllocation must be >= 0.";
    v7 = 0xD000000000000027;
  }

  else
  {
    v13 = "capacity must be > 0.";
    v7 = 0xD00000000000001FLL;
  }

LABEL_8:
  v15 = v13 | 0x8000000000000000;
  sub_1DF621898();
  swift_allocError();
  *v16 = v7;
  v16[1] = v15;
  swift_willThrow();

  swift_deallocPartialClassInstance();
  return v3;
}

unint64_t sub_1DF621898()
{
  result = qword_1ECE43678;
  if (!qword_1ECE43678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43678);
  }

  return result;
}

Swift::Bool __swiftcall TokenBucket.operationAllowed(cost:)(Swift::Double cost)
{
  if (cost < 1.0)
  {
    return 0;
  }

  v3 = *(v1 + 16);
  (MEMORY[0x1EEE9AC00])();
  MEMORY[0x1EEE9AC00](v4);
  os_unfair_lock_lock(v3 + 4);
  sub_1DF5A4B88(&v5);
  os_unfair_lock_unlock(v3 + 4);
  return v5;
}

void sub_1DF6219B4(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 24);
  sub_1DF621A0C();
  sub_1DF621B28(v3);
  *a1 = v4 & 1;
}

uint64_t sub_1DF621A0C()
{
  v1 = v0;
  v2 = sub_1DF63252C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF63251C();
  sub_1DF63244C();
  v7 = v6;
  result = (*(v3 + 8))(v5, v2);
  v9 = v1[2].f64[0];
  v10 = v1[2].f64[1];
  if (v10 < v9)
  {
    v11 = v10 + v1[1].f64[1] * (v7 - v1[6].f64[1]);
    v12.f64[0] = fabs(v11) - v9;
    v12.f64[1] = v1[1].f64[1] * (v7 - v1[6].f64[1]);
    v1[4] = vaddq_f64(v1[4], v12);
    if (v11 < v9)
    {
      v9 = v11;
    }

    v1[2].f64[1] = v9;
  }

  v1[6].f64[1] = v7;
  return result;
}

void sub_1DF621B28(double a1)
{
  v2 = v1;
  v4 = sub_1DF63252C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 <= 0.0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1DF63251C();
  sub_1DF63244C();
  v9 = v8;
  v10 = *(v5 + 8);
  v10(v7, v4);
  v11 = *(v2 + 48);
  sub_1DF63245C();
  sub_1DF63244C();
  v13 = v12;
  v10(v7, v4);
  v14 = 0.0;
  if (v11 != v13)
  {
    v14 = v9 - *(v2 + 48);
  }

  *(v2 + 112) = v14;
  v15 = v14 + *(v2 + 56);
  *(v2 + 48) = v9;
  *(v2 + 56) = v15;
  v16 = *(v2 + 88);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    goto LABEL_10;
  }

  *(v2 + 88) = v18;
  v19 = *(v2 + 40);
  if (v19 < a1)
  {
    return;
  }

  *(v2 + 40) = v19 - a1;
  *(v2 + 80) = *(v2 + 80) + a1;
  v20 = *(v2 + 96);
  v17 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v17)
  {
LABEL_11:
    __break(1u);
    return;
  }

  *(v2 + 96) = v21;
}

uint64_t TokenBucket.durationUntilOperationAllowed(cost:)()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  sub_1DF6221B0(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

Swift::Int __swiftcall TokenBucket.countOfOperationsAllowed(cost:)(Swift::Double cost)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  sub_1DF622214(&v4);
  os_unfair_lock_unlock(v2 + 4);
  return v4;
}

uint64_t sub_1DF621DA0@<X0>(uint64_t a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  result = sub_1DF621A0C();
  v7 = floor(*(a1 + 40) / a3);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v7 < 9.22337204e18)
  {
    *a2 = v7;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

Swift::Void __swiftcall TokenBucket.reset()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  sub_1DF622274(v2);
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1DF621E9C(double *a1)
{
  v2 = sub_1DF63252C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1[7] = 0.0;
  a1[11] = 0.0;
  a1[12] = 0.0;
  a1[5] = a1[4];
  sub_1DF63245C();
  sub_1DF63244C();
  v7 = v6;
  v8 = *(v3 + 8);
  v8(v5, v2);
  *(a1 + 6) = v7;
  a1[14] = 0.0;
  sub_1DF63251C();
  sub_1DF63244C();
  v10 = v9;
  result = (v8)(v5, v2);
  *(a1 + 13) = v10;
  a1[9] = 0.0;
  a1[10] = 0.0;
  a1[8] = 0.0;
  return result;
}

void TokenBucket.statistics.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  sub_1DF622274(v2);
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1DF622030@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 88);
  v3 = *(result + 96);
  if (__OFSUB__(v2, v3))
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(result + 72);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = *(result + 80);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v5 < 9.22337204e18)
  {
    v6 = *(result + 112);
    v7 = *(result + 56);
    v8 = *(result + 64);
    *a2 = v2;
    *(a2 + 8) = v3;
    *(a2 + 16) = v2 - v3;
    *(a2 + 24) = v6;
    *(a2 + 32) = v7 / v2;
    *(a2 + 40) = v8;
    *(a2 + 48) = v4;
    *(a2 + 56) = v5;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t TokenBucket.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1DF622154@<X0>(uint64_t *a2@<X8>)
{
  if (*(*(v2 + 16) + 40) <= *(v2 + 24))
  {
    result = sub_1DF633C1C();
  }

  else
  {
    result = 0;
    v5 = 0;
  }

  *a2 = result;
  a2[1] = v5;
  return result;
}

double sub_1DF6221B0@<D0>(_OWORD *a1@<X8>)
{
  (*(v1 + 16))(&v5);
  if (!v2)
  {
    result = *&v5;
    *a1 = v5;
  }

  return result;
}

void *sub_1DF622214@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DF622324(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DF622344(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 64) = v3;
  return result;
}

uint64_t AsyncSequence.collect()(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF6223B4, 0, 0);
}

uint64_t sub_1DF6223B4()
{
  v1 = v0[4];
  v2 = v0[5];
  swift_getAssociatedTypeWitness();
  v0[3] = sub_1DF6327EC();
  v3 = swift_task_alloc();
  v0[7] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = sub_1DF632DEC();
  *v4 = v0;
  v4[1] = sub_1DF6224D8;
  v6 = v0[5];
  v7 = v0[4];

  return MEMORY[0x1EEE6DB28](v0 + 2, v0 + 3, &unk_1DF63D460, v3, v7, v5, v6);
}

uint64_t sub_1DF6224D8()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1DF5D44C4;
  }

  else
  {

    v2 = sub_1DF6225F4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF622610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[4] = AssociatedTypeWitness;
  v4[5] = *(AssociatedTypeWitness - 8);
  v4[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF6226E8, 0, 0);
}

uint64_t sub_1DF6226E8()
{
  (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
  sub_1DF632DEC();
  sub_1DF632DBC();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1DF622790(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1DF59D2C8;

  return sub_1DF622610(a1, a2, v7, v6);
}

uint64_t AsyncSequence.first()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF622864, 0, 0);
}

uint64_t sub_1DF622864()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_1DF622930;
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  return MEMORY[0x1EEE6DB20](v4, &unk_1DF63D478, v1, v5, v3);
}

uint64_t sub_1DF622930()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF622A6C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1DF622A6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF622AEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DF5A902C;

  return sub_1DF622AD0();
}

uint64_t Feature.FindMy.hashValue.getter()
{
  v1 = *v0;
  sub_1DF633A6C();
  MEMORY[0x1E12D9240](v1);
  return sub_1DF633AAC();
}

unint64_t sub_1DF622D40()
{
  result = qword_1ECE43680;
  if (!qword_1ECE43680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43680);
  }

  return result;
}

unint64_t sub_1DF622D98()
{
  result = qword_1ECE43688;
  if (!qword_1ECE43688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43688);
  }

  return result;
}

unint64_t sub_1DF622DF0()
{
  result = qword_1ECE43690;
  if (!qword_1ECE43690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43690);
  }

  return result;
}

unint64_t sub_1DF622E48()
{
  result = qword_1ECE43698;
  if (!qword_1ECE43698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43698);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Feature.FindMy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDA)
  {
    goto LABEL_17;
  }

  if (a2 + 38 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 38) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 38;
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

      return (*a1 | (v4 << 8)) - 38;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 38;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x27;
  v8 = v6 - 39;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Feature.FindMy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 38 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 38) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDA)
  {
    v4 = 0;
  }

  if (a2 > 0xD9)
  {
    v5 = ((a2 - 218) >> 8) + 1;
    *result = a2 + 38;
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
    *result = a2 + 38;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t Result.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 8))(v7, a1);
    return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1);
  }

  else
  {
    v9 = *(a1 + 16);
    v10 = *(v9 - 8);
    (*(v10 + 32))(a2, v7, v9);
    return (*(v10 + 56))(a2, 0, 1, v9);
  }
}

uint64_t Result.error.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *(a1 + 24);
    v9 = *(v8 - 8);
    (*(v9 + 32))(a2, v7, v8);
    return (*(v9 + 56))(a2, 0, 1, v8);
  }

  else
  {
    (*(v4 + 8))(v7, a1);
    return (*(*(*(a1 + 24) - 8) + 56))(a2, 1, 1);
  }
}

uint64_t BinaryDecodingError.hashValue.getter()
{
  v1 = *v0;
  sub_1DF633A6C();
  MEMORY[0x1E12D9240](v1);
  return sub_1DF633AAC();
}

uint64_t RawRepresentable<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v31 = a4;
  v27 = a5;
  v8 = sub_1DF63327C();
  v26 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v29 = &v25 - v9;
  v28 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  (*(v17 + 8))(v32, v16, v17);
  v18 = v33;
  v19 = v34;
  __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
  v20 = v35;
  (*(v19 + 24))(AssociatedTypeWitness, AssociatedTypeWitness, v31, v18, v19);
  if (!v20)
  {
    (*(v30 + 16))(v12, v15, AssociatedTypeWitness);
    v21 = v29;
    sub_1DF632CBC();
    v22 = *(a2 - 8);
    if ((*(v22 + 48))(v21, 1, a2) == 1)
    {
      (*(v26 + 8))(v29, v8);
      sub_1DF5E3264();
      swift_allocError();
      *v23 = 0;
      swift_willThrow();
      (*(v30 + 8))(v15, AssociatedTypeWitness);
    }

    else
    {
      (*(v30 + 8))(v15, AssociatedTypeWitness);
      (*(v22 + 32))(v27, v29, a2);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v32);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t RawRepresentable<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v31 = a3;
  v28 = a4;
  v7 = sub_1DF63327C();
  v8 = *(v7 - 8);
  v29 = v7;
  v30 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v27 - v9;
  v10 = sub_1DF632A1C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  (*(v14 + 8))(v34, v15, v14);
  sub_1DF6329EC();
  v16 = v35;
  v17 = v36;
  __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
  v18 = (*(v17 + 16))(v13, v16, v17);
  if (v4)
  {
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    v20 = v18;
    v21 = v19;
    v22 = v30;
    (*(v11 + 8))(v13, v10);
    v32 = v20;
    v33 = v21;
    v23 = v37;
    sub_1DF632CBC();
    v24 = *(a2 - 8);
    if ((*(v24 + 48))(v23, 1, a2) == 1)
    {
      (*(v22 + 8))(v23, v29);
      sub_1DF5E3264();
      swift_allocError();
      *v25 = 0;
      swift_willThrow();
    }

    else
    {
      (*(v24 + 32))(v28, v23, a2);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v34);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DF623AB8()
{
  result = qword_1ECE436A0;
  if (!qword_1ECE436A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE436A0);
  }

  return result;
}

uint64_t dispatch thunk of BinaryDecodingContaining.decode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 24))(a1, a2, a3, a4);
}

{
  return (*(a5 + 32))(a1, a2, a3, a4);
}

uint64_t sub_1DF623C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C10, &qword_1DF63B260);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1DF59CC98(a3, v22 - v9, &qword_1ECE42C10, &qword_1DF63B260);
  v11 = sub_1DF632E9C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1DF59CB50(v10, &qword_1ECE42C10, &qword_1DF63B260);
  }

  else
  {
    sub_1DF632E8C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1DF632E1C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1DF632A7C() + 32;

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

      sub_1DF59CB50(a3, &qword_1ECE42C10, &qword_1DF63B260);

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

  sub_1DF59CB50(a3, &qword_1ECE42C10, &qword_1DF63B260);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1DF623EE0()
{
  v0 = sub_1DF6326AC();
  __swift_allocate_value_buffer(v0, qword_1ED8E6988);
  v1 = __swift_project_value_buffer(v0, qword_1ED8E6988);
  if (qword_1ED8E5990 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ED8E69B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t XPCSessionManager.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DF5A459C;

  return XPCSessionManager.init(name:)(a1, a2);
}

uint64_t XPCSessionManager.init(name:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF624084, 0, 0);
}

uint64_t sub_1DF624084()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  swift_defaultActor_initialize();
  v4 = MEMORY[0x1E69E7CC8];
  *(v2 + 128) = 0;
  *(v2 + 136) = v4;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 112) = v3;
  *(v2 + 120) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1DF624114, v2, 0);
}

uint64_t sub_1DF624114()
{
  receiver = v0[3].receiver;
  v2 = type metadata accessor for XPCSessionManager.DelegateTrampoline();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtCC10FindMyBase17XPCSessionManagerP33_A03603F91824D587CF1B3EB0B5E03C5F18DelegateTrampoline_sessionManager] = receiver;
  swift_unownedRetain();
  v0[1].receiver = v3;
  v0[1].super_class = v2;
  v4 = objc_msgSendSuper2(v0 + 1, sel_init);
  v5 = receiver[16];
  receiver[16] = v4;

  super_class = v0->super_class;
  v7 = v0[3].receiver;

  return super_class(v7);
}

uint64_t sub_1DF6241EC(uint64_t *a1)
{
  v2 = v1;
  if (qword_1ED8E4D08 != -1)
  {
    swift_once();
  }

  v4 = sub_1DF6326AC();
  __swift_project_value_buffer(v4, qword_1ED8E6988);
  sub_1DF5A7C78(a1, v20);

  v5 = sub_1DF63268C();
  v6 = sub_1DF63318C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19[0] = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_1DF59EEC8(v2[14], v2[15], v19);
    *(v7 + 12) = 2082;
    v9 = v20[0];
    v10 = v20[1];

    sub_1DF5A8528(v20);
    v11 = sub_1DF59EEC8(v9, v10, v19);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_1DF59A000, v5, v6, "XPCSessionManager(%{public}s: Registering Mach Service: [%{public}s]", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D9D80](v8, -1, -1);
    MEMORY[0x1E12D9D80](v7, -1, -1);
  }

  else
  {

    sub_1DF5A8528(v20);
  }

  v12 = objc_allocWithZone(MEMORY[0x1E696B0D8]);
  v13 = sub_1DF63295C();
  v14 = [v12 initWithMachServiceName_];

  sub_1DF5A7C78(a1, v20);
  v20[13] = v14;
  v16 = *a1;
  v15 = a1[1];
  sub_1DF5A7C1C(v20, v19);
  swift_beginAccess();
  v17 = v14;

  sub_1DF5C5E10(v19, v16, v15);
  swift_endAccess();
  [v17 setDelegate_];
  [v17 resume];

  return sub_1DF5A84F8(v20);
}

void sub_1DF624480()
{
  swift_beginAccess();
  v31 = v0;
  v1 = *(v0 + 136);
  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v32 = (v3 + 63) >> 6;
  v34 = v1;

  v6 = 0;
  v33 = v2;
  if (v5)
  {
    while (1)
    {
      v7 = v6;
LABEL_12:
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = v10 | (v7 << 6);
      v12 = (*(v34 + 48) + 16 * v11);
      v13 = v12[1];
      v42 = *v12;
      sub_1DF5A7C1C(*(v34 + 56) + 112 * v11, v43);
      v40 = v43[1];
      v41 = v43[0];
      v38 = v43[3];
      v39 = v43[2];
      v36 = v43[5];
      v37 = v43[4];
      v14 = v43[7];
      v35 = v43[6];
      v15 = v43[8];
      v16 = v43[9];
      v18 = v43[10];
      v17 = v43[11];
      v19 = v43[12];
      v20 = v43[13];

      v21 = v40;
      v22 = v41;
      v23 = v38;
      v24 = v39;
      v25 = v36;
      v26 = v37;
      v27 = v35;
      v28 = v17;
      v29 = v42;
      v2 = v33;
LABEL_13:
      v43[14] = v29;
      v43[15] = v13;
      v44[0] = v22;
      v44[1] = v21;
      v44[2] = v24;
      v44[3] = v23;
      v44[4] = v26;
      v44[5] = v25;
      v44[6] = v27;
      v44[7] = v14;
      v44[8] = v15;
      v44[9] = v16;
      v44[10] = v18;
      v44[11] = v28;
      v44[12] = v19;
      v45 = v20;
      if (!v13)
      {
        break;
      }

      v30 = v45;
      sub_1DF5A84F8(v44);
      [v30 invalidate];

      v6 = v7;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    *(v31 + 136) = MEMORY[0x1E69E7CC8];
  }

  else
  {
LABEL_5:
    if (v32 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    else
    {
      v8 = v32;
    }

    v9 = v8 - 1;
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v7 >= v32)
      {
        v20 = 0;
        v19 = 0;
        v28 = 0;
        v18 = 0;
        v16 = 0;
        v15 = 0;
        v14 = 0;
        v27 = 0;
        v25 = 0;
        v26 = 0;
        v23 = 0;
        v24 = 0;
        v21 = 0;
        v22 = 0;
        v13 = 0;
        v29 = 0;
        v5 = 0;
        v7 = v9;
        goto LABEL_13;
      }

      v5 = *(v2 + 8 * v7);
      ++v6;
      if (v5)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1DF6246BC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 144);
  v4 = *(v2 + 152);
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;

  return sub_1DF5A83BC(v3, v4);
}

uint64_t sub_1DF624708(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 160);
  v4 = *(v2 + 168);
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;

  return sub_1DF5A83BC(v3, v4);
}

uint64_t XPCSessionManager.deinit()
{

  sub_1DF5A83BC(*(v0 + 144), *(v0 + 152));
  sub_1DF5A83BC(*(v0 + 160), *(v0 + 168));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t XPCSessionManager.__deallocating_deinit()
{

  sub_1DF5A83BC(*(v0 + 144), *(v0 + 152));
  sub_1DF5A83BC(*(v0 + 160), *(v0 + 168));
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

void NSXPCConnection.machServiceName.getter(uint64_t *a1@<X8>)
{
  v3 = [v1 serviceName];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1DF63298C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
}

uint64_t sub_1DF624868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1DF624888, a4, 0);
}

uint64_t sub_1DF624888()
{
  sub_1DF6248E8(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

void sub_1DF6248E8(void *a1)
{
  v3 = *(v1 + 144);
  if (v3)
  {
    v4 = *(v1 + 152);

    v3(a1);

    sub_1DF5A83BC(v3, v4);
  }

  else
  {
    if (qword_1ED8E4D08 != -1)
    {
      swift_once();
    }

    v5 = sub_1DF6326AC();
    __swift_project_value_buffer(v5, qword_1ED8E6988);
    v6 = a1;
    oslog = sub_1DF63268C();
    v7 = sub_1DF63318C();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v6;
      *v9 = v6;
      v10 = v6;
      _os_log_impl(&dword_1DF59A000, oslog, v7, "Connection interrupted: %@", v8, 0xCu);
      sub_1DF59CB50(v9, &qword_1ECE42AF0, &qword_1DF63ABC0);
      MEMORY[0x1E12D9D80](v9, -1, -1);
      MEMORY[0x1E12D9D80](v8, -1, -1);
    }
  }
}

uint64_t sub_1DF624A80(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C10, &qword_1DF63B260);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = sub_1DF632E9C();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v10;
    v12[5] = a2;
    v13 = a2;
    sub_1DF5CE7F8(0, 0, v8, a4, v12);
  }

  return result;
}

uint64_t sub_1DF624BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1DF624BD0, a4, 0);
}

uint64_t sub_1DF624BD0()
{
  sub_1DF624C30(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

void sub_1DF624C30(void *a1)
{
  v3 = *(v1 + 160);
  if (v3)
  {
    v4 = *(v1 + 168);

    v3(a1);

    sub_1DF5A83BC(v3, v4);
  }

  else
  {
    if (qword_1ED8E4D08 != -1)
    {
      swift_once();
    }

    v5 = sub_1DF6326AC();
    __swift_project_value_buffer(v5, qword_1ED8E6988);
    v6 = a1;
    oslog = sub_1DF63268C();
    v7 = sub_1DF63318C();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v6;
      *v9 = v6;
      v10 = v6;
      _os_log_impl(&dword_1DF59A000, oslog, v7, "Connection invalidated: %@", v8, 0xCu);
      sub_1DF59CB50(v9, &qword_1ECE42AF0, &qword_1DF63ABC0);
      MEMORY[0x1E12D9D80](v9, -1, -1);
      MEMORY[0x1E12D9D80](v8, -1, -1);
    }
  }
}

uint64_t sub_1DF624DC8@<X0>(uint64_t a1@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *v1;
  v3 = sub_1DF5B2644(&v7, &v8);
  v5 = v4;
  sub_1DF5B1CE8(v3, v4, a1);
  return sub_1DF5B33C0(v3, v5);
}

id sub_1DF624E88()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DF624ED0()
{
  v0 = sub_1DF6326AC();
  __swift_allocate_value_buffer(v0, qword_1ED8E69B8);
  __swift_project_value_buffer(v0, qword_1ED8E69B8);
  return sub_1DF63269C();
}

unint64_t sub_1DF624F50()
{
  result = qword_1ECE424E8;
  if (!qword_1ECE424E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE424E8);
  }

  return result;
}

unint64_t sub_1DF624FA8()
{
  result = qword_1ED8E6150;
  if (!qword_1ED8E6150)
  {
    sub_1DF6325AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8E6150);
  }

  return result;
}

uint64_t dispatch thunk of XPCSessionManager.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(v2 + 224) + **(v2 + 224));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1DF5A459C;

  return v8(a1, a2);
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1DF625224(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1DF62526C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroy_25Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DF625388(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1DF6253EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF59D2C8;

  return sub_1DF624BB0(a1, v4, v5, v7, v6);
}

uint64_t sub_1DF6254AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF59D2C4;

  return sub_1DF624868(a1, v4, v5, v7, v6);
}

uint64_t sub_1DF625570()
{
  v0 = sub_1DF6326AC();
  __swift_allocate_value_buffer(v0, qword_1ED8E69A0);
  __swift_project_value_buffer(v0, qword_1ED8E69A0);
  return sub_1DF63269C();
}

uint64_t sub_1DF6255DC(uint64_t a1, unint64_t a2)
{
  v4 = sub_1DF63242C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1DF5A3A94(a1, a2);
  sub_1DF63243C();
  sub_1DF5B3254(&qword_1ECE42368, MEMORY[0x1E6969050], MEMORY[0x1E6969058]);
  do
  {
    sub_1DF63329C();
    v8 = v11;
  }

  while ((v11 & 1) == 0 && !v10[14]);
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t MACAddress.AddressType.description.getter(char a1)
{
  if (a1)
  {
    return 0x6D6F646E61722ELL;
  }

  else
  {
    return 0x63696C6275702ELL;
  }
}

FindMyBase::MACAddress::AddressType_optional __swiftcall MACAddress.AddressType.init(rawValue:)(Swift::UInt8 rawValue)
{
  if (rawValue == 1)
  {
    v1.value = FindMyBase_MACAddress_AddressType_random;
  }

  else
  {
    v1.value = FindMyBase_MACAddress_AddressType_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DF625854()
{
  if (*v0)
  {
    return 0x6D6F646E61722ELL;
  }

  else
  {
    return 0x63696C6275702ELL;
  }
}

double MACAddress.init(string:type:)@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, char a4@<W2>)
{
  sub_1DF6258F4(a2, a3, a4 & 1, &v7);

  v5 = v8;
  if (v8 != 2)
  {
    v5 = v8 & 1;
  }

  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v5;
  return result;
}

uint64_t sub_1DF6258F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_1DF63209C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v23 - v13;
  sub_1DF63207C();
  sub_1DF63208C();
  if (a2)
  {
    v23[0] = a1;
    v23[1] = a2;
    sub_1DF5BC6B8();
    v23[0] = sub_1DF6332AC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE425C0, &qword_1DF637D10);
    sub_1DF5BC754();
    v15 = sub_1DF6328DC();
    v17 = v16;

    if (sub_1DF632ADC() == 12)
    {
      v18 = sub_1DF5BFA40(v15, v17);
      if (v19 >> 60 != 15)
      {
        MACAddress.init(data:type:)(v18, v19, a3 & 1, a4);
        v20 = *(v9 + 8);
        v20(v11, v8);
        return (v20)(v14, v8);
      }
    }

    else
    {
    }
  }

  v22 = *(v9 + 8);
  v22(v11, v8);
  result = (v22)(v14, v8);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 2;
  return result;
}

uint64_t MACAddress.init(stringLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  v6 = sub_1DF5BFA40(a1, a2);
  if ((v7 >> 60 == 15 || (MACAddress.init(data:type:)(v6, v7, 1, &v12), v8 = v14, v14 == 2)) && (, sub_1DF6258F4(a1, a2, 1, &v12), , v8 = v14, v14 == 2))
  {
    v12 = 0;
    v13 = 0xE000000000000000;
    sub_1DF63347C();
    MEMORY[0x1E12D82E0](0xD000000000000035, 0x80000001DF636180);
    MEMORY[0x1E12D82E0](a1, a2);
    MEMORY[0x1E12D82E0](93, 0xE100000000000000);
    result = sub_1DF6336EC();
    __break(1u);
  }

  else
  {
    v10 = v12;
    v9 = v13;

    *a3 = v10;
    *(a3 + 8) = v9;
    *(a3 + 16) = v8 & 1;
  }

  return result;
}

uint64_t MACAddress.bluetoothAddress.getter()
{
  v1 = 0;
  v37 = *MEMORY[0x1E69E9840];
  v2 = *v0;
  v3 = v0[1];
  v4 = v3 >> 62;
  v5 = *v0;
  v30 = *v0 >> 32;
  v6 = MEMORY[0x1E69E7CC0];
  v28 = *v0 >> 16;
  v29 = *v0 >> 8;
  v26 = HIDWORD(*v0);
  v27 = *v0 >> 24;
  v24 = HIWORD(*v0);
  v25 = *v0 >> 40;
  v23 = HIBYTE(*v0);
  do
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE431C0, &qword_1DF63B400);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1DF638990;
    if (v4 > 1)
    {
      if (v4 != 2)
      {
        goto LABEL_30;
      }

      if (v1 < *(v2 + 16))
      {
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
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
      }

      if (v1 >= *(v2 + 24))
      {
        goto LABEL_27;
      }

      v9 = sub_1DF63211C();
      if (!v9)
      {
        goto LABEL_32;
      }

      v10 = v9;
      v11 = sub_1DF63214C();
      v12 = v1 - v11;
      if (__OFSUB__(v1, v11))
      {
        goto LABEL_29;
      }

      goto LABEL_17;
    }

    if (v4)
    {
      if (v1 < v5 || v1 >= v30)
      {
        goto LABEL_26;
      }

      v13 = sub_1DF63211C();
      if (!v13)
      {
        goto LABEL_31;
      }

      v10 = v13;
      v14 = sub_1DF63214C();
      v12 = v1 - v14;
      if (__OFSUB__(v1, v14))
      {
        goto LABEL_28;
      }

LABEL_17:
      v8 = *(v10 + v12);
      goto LABEL_18;
    }

    if (v1 >= BYTE6(v3))
    {
      goto LABEL_25;
    }

    LOBYTE(v31) = v5;
    BYTE1(v31) = v29;
    BYTE2(v31) = v28;
    BYTE3(v31) = v27;
    BYTE4(v31) = v26;
    BYTE5(v31) = v25;
    BYTE6(v31) = v24;
    HIBYTE(v31) = v23;
    v32 = v3;
    v33 = BYTE2(v3);
    v34 = BYTE3(v3);
    v35 = BYTE4(v3);
    v36 = BYTE5(v3);
    v8 = *(&v31 + v1);
LABEL_18:
    *(v7 + 56) = MEMORY[0x1E69E7508];
    *(v7 + 64) = MEMORY[0x1E69E7558];
    *(v7 + 32) = v8;
    v15 = sub_1DF6329BC();
    v17 = v16;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1DF5C1294(0, *(v6 + 2) + 1, 1, v6);
    }

    v19 = *(v6 + 2);
    v18 = *(v6 + 3);
    if (v19 >= v18 >> 1)
    {
      v6 = sub_1DF5C1294((v18 > 1), v19 + 1, 1, v6);
    }

    *(v6 + 2) = v19 + 1;
    v20 = &v6[16 * v19];
    *(v20 + 4) = v15;
    *(v20 + 5) = v17;
    ++v1;
  }

  while (v1 != 6);
  v31 = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE425C0, &qword_1DF637D10);
  sub_1DF5BC754();
  v21 = sub_1DF6328DC();
  swift_bridgeObjectRelease_n();
  return v21;
}

uint64_t MACAddress.bluetoothAddressWithType.getter()
{
  v3[2] = *MEMORY[0x1E69E9840];
  LOBYTE(v3[0]) = *(v0 + 16);
  v3[0] = sub_1DF5B2744(v3, v3 + 1);
  v3[1] = v1 & 0xFFFFFFFFFFFFFFLL;
  sub_1DF63240C();
  return v3[0];
}

uint64_t MACAddress.udid.getter()
{
  v1 = sub_1DF6327CC();
  v18 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DF63277C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v6) = *(v0 + 16);
  v23 = 6247490;
  v24 = 0xE300000000000000;
  v19 = *v0;
  v20 = v6;
  v8 = MACAddress.bluetoothAddress.getter();
  MEMORY[0x1E12D82E0](v8);

  v9 = String.utf8Data.getter(v23, v24);
  v11 = v10;

  sub_1DF5B3254(&qword_1ED8E4D98, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  sub_1DF63276C();
  sub_1DF5A3A94(v9, v11);
  sub_1DF5B2A90(v9, v11, v3);
  sub_1DF5B33C0(v9, v11);
  sub_1DF63274C();
  (*(v18 + 8))(v3, v1);
  v21 = v4;
  v22 = sub_1DF5B3254(qword_1ED8E4DA0, MEMORY[0x1E69663E0], MEMORY[0x1E69663D0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
  (*(v5 + 16))(boxed_opaque_existential_1, v7, v4);
  __swift_project_boxed_opaque_existential_1(&v19, v21);
  sub_1DF63222C();
  (*(v5 + 8))(v7, v4);
  v13 = v23;
  v14 = v24;
  __swift_destroy_boxed_opaque_existential_1(&v19);
  sub_1DF5B33C0(v9, v11);
  sub_1DF5B88EC(v13, v14);
  v15 = sub_1DF632A4C();
  sub_1DF5B33C0(v13, v14);

  return v15;
}

uint64_t MACAddress.dataRepresentation.getter()
{
  sub_1DF63206C();
  swift_allocObject();
  sub_1DF63205C();
  sub_1DF6270F0();
  v0 = sub_1DF63204C();

  return v0;
}

double MACAddress.init(dataRepresentation:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DF63203C();
  swift_allocObject();
  sub_1DF63202C();
  sub_1DF627144();
  sub_1DF63201C();

  sub_1DF5B33C0(a1, a2);
  if (!v3)
  {
    result = *&v8;
    *a3 = v8;
    *(a3 + 16) = v9;
  }

  return result;
}

uint64_t static MACAddress.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  return sub_1DF626F88(*a1, *(a1 + 8), *a2, *(a2 + 8)) & ~(v2 ^ v3) & 1;
}

uint64_t sub_1DF6266A8()
{
  if (*v0)
  {
    return 1701869940;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_1DF6266CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v5 || (sub_1DF63394C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DF63394C();

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

uint64_t sub_1DF6267A8(uint64_t a1)
{
  v2 = sub_1DF627198();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF6267E4(uint64_t a1)
{
  v2 = sub_1DF627198();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MACAddress.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43750, &qword_1DF63DAF8);
  v11 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v14 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF5A3A94(v7, v8);
  sub_1DF627198();
  sub_1DF633AFC();
  v12 = v7;
  v13 = v8;
  v15 = 0;
  sub_1DF5F5AA8();
  sub_1DF63385C();
  sub_1DF5B33C0(v12, v13);
  if (!v2)
  {
    LOBYTE(v12) = v14;
    v15 = 1;
    sub_1DF6271EC();
    sub_1DF63385C();
  }

  return (*(v11 + 8))(v6, v4);
}

uint64_t MACAddress.hashValue.getter()
{
  sub_1DF633A6C();
  sub_1DF6323DC();
  sub_1DF633A8C();
  return sub_1DF633AAC();
}

uint64_t MACAddress.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43768, &qword_1DF63DB00);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF627198();
  sub_1DF633ADC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = 0;
  sub_1DF5F5C78();
  sub_1DF6337CC();
  v10 = v13[0];
  v9 = v13[1];
  v14 = 1;
  sub_1DF627240();
  sub_1DF6337CC();
  (*(v6 + 8))(v8, v5);
  v11 = v13[0];
  *a2 = v10;
  *(a2 + 8) = v9;
  *(a2 + 16) = v11;
  sub_1DF5A3A94(v10, v9);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DF5B33C0(v10, v9);
}

uint64_t sub_1DF626C9C()
{
  sub_1DF633A6C();
  sub_1DF6323DC();
  sub_1DF633A8C();
  return sub_1DF633AAC();
}

uint64_t sub_1DF626D38(uint64_t a1)
{
  sub_1DF633A6C();
  sub_1DF6323DC();
  sub_1DF633A8C();
  return sub_1DF633AAC();
}

double sub_1DF626D9C@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a4@<X8>)
{
  sub_1DF63203C();
  swift_allocObject();
  sub_1DF63202C();
  sub_1DF627144();
  sub_1DF63201C();

  sub_1DF5B33C0(a1, a2);
  if (!v4)
  {
    result = *&v9;
    *a4 = v9;
    *(a4 + 16) = v10;
  }

  return result;
}

uint64_t sub_1DF626E64(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  return sub_1DF626F88(*a1, *(a1 + 8), *a2, *(a2 + 8)) & ~(v2 ^ v3) & 1;
}

uint64_t sub_1DF626EA8(uint64_t a1, uint64_t a2)
{
  result = sub_1DF63211C();
  if (!result || (result = sub_1DF63214C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1DF63213C();
      sub_1DF6327CC();
      sub_1DF5B3254(&qword_1ED8E4D98, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
      return sub_1DF63273C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_1DF626F88(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1DF5A3A94(a3, a4);
          return sub_1DF62D608(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_1DF6270F0()
{
  result = qword_1ECE43740;
  if (!qword_1ECE43740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43740);
  }

  return result;
}

unint64_t sub_1DF627144()
{
  result = qword_1ECE43748;
  if (!qword_1ECE43748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43748);
  }

  return result;
}

unint64_t sub_1DF627198()
{
  result = qword_1ECE43758;
  if (!qword_1ECE43758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43758);
  }

  return result;
}

unint64_t sub_1DF6271EC()
{
  result = qword_1ECE43760;
  if (!qword_1ECE43760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43760);
  }

  return result;
}

unint64_t sub_1DF627240()
{
  result = qword_1ECE43770;
  if (!qword_1ECE43770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43770);
  }

  return result;
}

unint64_t sub_1DF627298()
{
  result = qword_1ECE43778;
  if (!qword_1ECE43778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43778);
  }

  return result;
}

unint64_t sub_1DF6272F0()
{
  result = qword_1ECE43780;
  if (!qword_1ECE43780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43780);
  }

  return result;
}

unint64_t sub_1DF627348()
{
  result = qword_1ECE43788;
  if (!qword_1ECE43788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43788);
  }

  return result;
}

unint64_t sub_1DF6273A0()
{
  result = qword_1ECE43790;
  if (!qword_1ECE43790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43790);
  }

  return result;
}

uint64_t sub_1DF6273F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1DF62745C()
{
  result = qword_1ECE43798;
  if (!qword_1ECE43798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43798);
  }

  return result;
}

unint64_t sub_1DF6274B4()
{
  result = qword_1ECE437A0;
  if (!qword_1ECE437A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE437A0);
  }

  return result;
}

unint64_t sub_1DF62750C()
{
  result = qword_1ECE437A8;
  if (!qword_1ECE437A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE437A8);
  }

  return result;
}

unint64_t sub_1DF627560()
{
  result = qword_1ECE437B0;
  if (!qword_1ECE437B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE437B0);
  }

  return result;
}

uint64_t Array<A>.uniqued()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DF63280C();
  sub_1DF632DEC();

  swift_getWitnessTable();
  v3 = sub_1DF63351C();

  return v3;
}

uint64_t sub_1DF627690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - v10;
  (*(v5 + 16))(v7, v9);
  sub_1DF6330CC();
  v12 = sub_1DF6330AC();
  (*(v5 + 8))(v11, a3);
  return v12 & 1;
}

uint64_t Array<A>.mean.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v23 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v22 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20 - v13;
  v24 = a1;
  sub_1DF632DEC();
  swift_getWitnessTable();
  result = sub_1DF63310C();
  if ((result & 1) == 0)
  {
    v20 = a1;
    v24 = a1;
    swift_getAssociatedConformanceWitness();
    sub_1DF63399C();
    v16 = sub_1DF63392C();
    MEMORY[0x1EEE9AC00](v16);
    v17 = v21;
    *(&v20 - 4) = a2;
    *(&v20 - 3) = v17;
    *(&v20 - 2) = a2;
    swift_getWitnessTable();
    sub_1DF632C8C();
    v18 = *(v6 + 8);
    v18(v11, a2);
    v19 = v22;
    (*(v6 + 16))(v22, v14, a2);
    if (sub_1DF63336C() < 65)
    {
      sub_1DF63337C();
      sub_1DF63335C();
    }

    else
    {
      sub_1DF5C3F00();
      sub_1DF5C3F54();
      sub_1DF63281C();
    }

    v18(v19, a2);
    sub_1DF632D9C();
    return (v18)(v14, a2);
  }

  return result;
}

uint64_t Array.chunked(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DF632D9C();
  if (a1)
  {
    v11[7] = 0;
    v11[8] = result;
    v11[9] = a1;
    MEMORY[0x1EEE9AC00](result);
    v11[2] = a3;
    v11[3] = a2;
    v11[4] = a1;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE437B8, &qword_1DF63DF90);
    v8 = sub_1DF632DEC();
    v9 = sub_1DF627DE0();
    return sub_1DF61CF78(sub_1DF627DBC, v11, v7, v8, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_1DF627CE8@<X0>(uint64_t *result@<X0>, uint64_t a3@<X2>, uint64_t **a5@<X8>)
{
  v5 = *result;
  v6 = *result + a3;
  if (__OFADD__(*result, a3))
  {
    __break(1u);
  }

  else
  {
    result = sub_1DF632D9C();
    if (result >= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = result;
    }

    if (v8 >= v5)
    {
      sub_1DF632E0C();
      sub_1DF6333AC();
      swift_getWitnessTable();
      result = sub_1DF632DFC();
      *a5 = result;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1DF627DE0()
{
  result = qword_1ECE437C0;
  if (!qword_1ECE437C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE437B8, &qword_1DF63DF90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE437C0);
  }

  return result;
}

uint64_t Array<A>.data.getter(uint64_t a1)
{

  v2 = sub_1DF5C30E4(v1);

  return v2;
}

uint64_t Array<A>.dataRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DF63206C();
  swift_allocObject();
  sub_1DF63205C();
  sub_1DF632DEC();
  swift_getWitnessTable();
  v4 = sub_1DF63204C();

  return v4;
}

uint64_t Array<A>.init(dataRepresentation:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_1DF6290AC(a1, a2, a3);
  sub_1DF5B33C0(a1, a2);
  return v5;
}

uint64_t sub_1DF6280B8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a5@<X8>)
{
  v9 = sub_1DF6290AC(a1, a2, *(a3 + 16));
  result = sub_1DF5B33C0(a1, a2);
  if (!v5)
  {
    *a5 = v9;
  }

  return result;
}

uint64_t Array<A>.asyncFlatMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v6[10] = swift_task_alloc();
  v8 = *(a4 - 8);
  v6[11] = v8;
  v6[12] = *(v8 + 64);
  v6[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF62820C, 0, 0);
}

uint64_t sub_1DF62820C()
{
  v0[14] = swift_getAssociatedTypeWitness();
  v1 = sub_1DF6327EC();
  v0[2] = v1;
  if (sub_1DF632D9C())
  {
    v2 = sub_1DF632D8C();
    sub_1DF632D5C();
    if (v2)
    {
      (*(v0[11] + 16))(v0[13], v0[6] + ((*(v0[11] + 80) + 32) & ~*(v0[11] + 80)), v0[7]);
    }

    else
    {
      v8 = v0[12];
      result = sub_1DF6334BC();
      if (v8 != 8)
      {
        __break(1u);
        return result;
      }

      v9 = v0[13];
      v10 = v0[11];
      v11 = v0[7];
      v0[3] = result;
      (*(v10 + 16))(v9, v0 + 3, v11);
      swift_unknownObjectRelease();
    }

    v0[15] = 1;
    v12 = (v0[4] + *v0[4]);
    v3 = swift_task_alloc();
    v0[16] = v3;
    *v3 = v0;
    v3[1] = sub_1DF62845C;
    v4 = v0[13];
    v5 = v0[10];

    return v12(v5, v4);
  }

  else
  {

    v7 = v0[1];

    return v7(v1);
  }
}

uint64_t sub_1DF62845C()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  (*(v2[11] + 8))(v2[13], v2[7]);
  if (v0)
  {

    v3 = sub_1DF628828;
  }

  else
  {
    v3 = sub_1DF6285B0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF6285B0()
{
  v1 = v0[15];
  sub_1DF632DEC();
  sub_1DF632DAC();
  if (v1 == sub_1DF632D9C())
  {
    v2 = v0[2];

    v3 = v0[1];

    return v3(v2);
  }

  v5 = v0[15];
  v6 = sub_1DF632D8C();
  sub_1DF632D5C();
  if (v6)
  {
    result = (*(v0[11] + 16))(v0[13], v0[6] + ((*(v0[11] + 80) + 32) & ~*(v0[11] + 80)) + *(v0[11] + 72) * v5, v0[7]);
  }

  else
  {
    v10 = v0[12];
    result = sub_1DF6334BC();
    if (v10 != 8)
    {
LABEL_14:
      __break(1u);
      return result;
    }

    v11 = v0[13];
    v12 = v0[11];
    v13 = v0[7];
    v0[3] = result;
    (*(v12 + 16))(v11, v0 + 3, v13);
    result = swift_unknownObjectRelease();
  }

  v0[15] = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = (v0[4] + *v0[4]);
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_1DF62845C;
  v8 = v0[13];
  v9 = v0[10];

  return v14(v9, v8);
}

uint64_t sub_1DF628828()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF6288B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DF632DEC();
  swift_getWitnessTable();
  sub_1DF632C9C();
  sub_1DF632F0C();
  return sub_1DF632EFC();
}

uint64_t sub_1DF628970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DF632DEC();
  swift_getWitnessTable();
  sub_1DF632C9C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE42B18, &qword_1DF63B240);
  sub_1DF63303C();
  return sub_1DF63302C();
}

uint64_t sub_1DF628A44@<X0>(uint64_t a2@<X8>)
{
  v3 = *MEMORY[0x1E69E8790];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE42B18, &qword_1DF63B240);
  v4 = sub_1DF63300C();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t sub_1DF628B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1DF632EDC();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v11 = a2;
  v12 = a1;
  (*(v8 + 104))(&v10[-v7], *MEMORY[0x1E69E8650], v6);
  return sub_1DF632F4C();
}

uint64_t sub_1DF628BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DF632EBC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v14 - v11;
  (*(v5 + 16))(v7, a1, a3, v10);
  sub_1DF632F0C();
  sub_1DF632EEC();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1DF628D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE42B18, &qword_1DF63B240);
  v5 = sub_1DF63300C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = a2;
  v10 = a1;
  sub_1DF628A44(&v8[-v6]);
  return sub_1DF63304C();
}

uint64_t sub_1DF628E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DF632DEC();
  swift_getWitnessTable();
  return sub_1DF632C9C();
}

uint64_t sub_1DF628EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[1] = a2;
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE42B18, &qword_1DF63B240);
  v8 = sub_1DF632FFC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v14 - v11;
  (*(v5 + 16))(v7, a1, a3, v10);
  sub_1DF63303C();
  sub_1DF63301C();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1DF6290AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DF63203C();
  swift_allocObject();
  sub_1DF63202C();
  sub_1DF632DEC();
  swift_getWitnessTable();
  sub_1DF63201C();

  if (!v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1DF62925C()
{
  type metadata accessor for BackgroundActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_1ECE437C8 = v0;
  return result;
}

uint64_t static BackgroundActor.shared.getter()
{
  if (qword_1ECE425A0 != -1)
  {
    swift_once();
  }
}

uint64_t BackgroundActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

unint64_t sub_1DF629354(uint64_t a1, uint64_t a2)
{
  result = qword_1ECE437D0;
  if (!qword_1ECE437D0)
  {
    type metadata accessor for BackgroundActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE437D0);
  }

  return result;
}

uint64_t sub_1DF6293CC()
{
  if (qword_1ECE425A0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1DF629428(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for BackgroundActor();

  return MEMORY[0x1EEE6DBF0](v3, a2);
}

uint64_t ManagedDefault.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_1DF62981C(a1, a2);
  v3 = sub_1DF63327C();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1, v3);
}

void (*ManagedDefault.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x38uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = v2;
  v8 = *(a2 + 16);
  v6[1] = v8;
  v9 = sub_1DF63327C();
  v7[2] = v9;
  v10 = *(v9 - 8);
  v7[3] = v10;
  v11 = *(v10 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v10 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v7[5] = v12;
  v14 = *(v2 + 24);
  v15 = *(v2 + 32);
  v7[6] = *(a2 + 24);
  PrefixedDefaults.subscript.getter(v14, v15, v8, v13);
  return sub_1DF6296DC;
}

void sub_1DF6296DC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = (*a1)[3];
  v4 = (*a1)[4];
  v7 = (*a1)[1];
  v6 = (*a1)[2];
  v8 = **a1;
  if (a2)
  {
    (*(v5 + 16))((*a1)[4], v3, v6);
    v9 = *(v8 + 24);
    v10 = *(v8 + 32);

    sub_1DF5DC7BC(v4, v9, v10, v7);
    v11 = *(v5 + 8);
    v11(v4, v6);
    v11(v3, v6);
  }

  else
  {
    v12 = *(v8 + 24);
    v13 = *(v8 + 32);

    sub_1DF5DC7BC(v3, v12, v13, v7);
    (*(v5 + 8))(v3, v6);
  }

  free(v3);
  free(v4);

  free(v2);
}

__n128 ManagedDefault.init(prefixedDefaults:key:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  result = *a1;
  v5 = a1[1].n128_u64[0];
  *a4 = *a1;
  a4[1].n128_u64[0] = v5;
  a4[1].n128_u64[1] = a2;
  a4[2].n128_u64[0] = a3;
  return result;
}

void sub_1DF62981C(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(a2 + 16);

  sub_1DF5DC7BC(a1, v4, v5, v6);
}

uint64_t sub_1DF629880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DF6298BC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1DF629904(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1DF629964(uint64_t a1, unint64_t a2)
{
  v4 = sub_1DF63242C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v11 = *(a1 + 16);
      v10 = *(a1 + 24);
      v9 = v10 - v11;
      if (__OFSUB__(v10, v11))
      {
        __break(1u);
LABEL_14:
        __break(1u);
      }

      else if (v9)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    if (v8)
    {
      goto LABEL_10;
    }

    v9 = BYTE6(a2);
    if (BYTE6(a2))
    {
LABEL_8:
      do
      {
        sub_1DF5A8128(v9, 0);
        v12 = sub_1DF63232C();
        v13 = *(v5 + 8);
        v5 += 8;
        v13(v7, v4);
        if (v12 == v9)
        {
          break;
        }

        __break(1u);
LABEL_10:
        v14 = HIDWORD(a1) - a1;
        if (__OFSUB__(HIDWORD(a1), a1))
        {
          goto LABEL_14;
        }

        v9 = v14;
      }

      while (v14);
    }
  }
}

unint64_t sub_1DF629AC8(unint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v1 == 1)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v1 < 3)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v1 == 3)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v1 < 5)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v1 == 5)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v1 < 7)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v1 == 7)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v1 < 9)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v1 == 9)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v1 < 0xB)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v1 == 11)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v1 < 0xD)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v1 == 13)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v1 < 0xF)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v1 != 15)
  {
    return *(result + 32) | (*(result + 33) << 8) | (*(result + 34) << 16) | (*(result + 35) << 24) | (*(result + 36) << 32) | (*(result + 37) << 40) | (*(result + 38) << 48) | (*(result + 39) << 56);
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t UUID.init(data:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result;
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      v7 = 0;
      goto LABEL_11;
    }

    v9 = *(result + 16);
    v8 = *(result + 24);
    v7 = v8 - v9;
    if (!__OFSUB__(v8, v9))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v6)
  {
    v7 = BYTE6(a2);
    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(result), result))
  {
    __break(1u);
    return result;
  }

  v7 = HIDWORD(result) - result;
LABEL_11:
  v10 = sub_1DF6325AC();
  v14 = *(v10 - 8);
  if (v7 == *(v14 + 64))
  {
    sub_1DF629964(v4, a2);
    sub_1DF629AC8(v11);

    sub_1DF63257C();
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  sub_1DF5B33C0(v4, a2);
  v13 = *(v14 + 56);

  return v13(a3, v12, 1, v10);
}

uint64_t UUID.init(bytes:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1DF6325AC();
  v9 = *(v5 - 8);
  if (v4 == *(v9 + 64))
  {
    sub_1DF629AC8(a1);

    sub_1DF63257C();
    v6 = 0;
  }

  else
  {

    v6 = 1;
  }

  v7 = *(v9 + 56);

  return v7(a2, v6, 1, v5);
}

unint64_t UUID.data.getter()
{
  v18 = *MEMORY[0x1E69E9840];
  v9 = sub_1DF63258C();
  v10 = v0;
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  return sub_1DF5BE894(&v9, &v18);
}

double UUID.bytes.getter()
{
  v0 = sub_1DF63258C();
  v1 = v0;
  v3 = v2;
  v4 = v0 >> 8;
  v5 = v0 >> 16;
  v6 = v0 >> 24;
  v7 = HIDWORD(v0);
  v8 = v0 >> 40;
  v9 = HIWORD(v0);
  v10 = HIBYTE(v0);
  v11 = v2 >> 8;
  v14 = v2 >> 16;
  v15 = v2 >> 24;
  v16 = HIDWORD(v2);
  v17 = v2 >> 40;
  v18 = HIWORD(v2);
  v19 = HIBYTE(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42980, &qword_1DF638970);
  v12 = swift_allocObject();
  *&result = 16;
  *(v12 + 16) = xmmword_1DF63CB20;
  *(v12 + 32) = v1;
  *(v12 + 33) = v4;
  *(v12 + 34) = v5;
  *(v12 + 35) = v6;
  *(v12 + 36) = v7;
  *(v12 + 37) = v8;
  *(v12 + 38) = v9;
  *(v12 + 39) = v10;
  *(v12 + 40) = v3;
  *(v12 + 41) = v11;
  *(v12 + 42) = v14;
  *(v12 + 43) = v15;
  *(v12 + 44) = v16;
  *(v12 + 45) = v17;
  *(v12 + 46) = v18;
  *(v12 + 47) = v19;
  return result;
}

uint64_t UUID.init(mock:template:)(uint64_t a1, uint64_t a2)
{
  UUID.bytes.getter();
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42980, &qword_1DF638970);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF63CB20;
  v7 = *(v5 + 16);
  if (!v7)
  {
    __break(1u);
    goto LABEL_12;
  }

  v8 = inited;
  *(inited + 32) = *(v5 + 32);
  if (v7 == 1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(inited + 33) = *(v5 + 33);
  if (v7 < 3)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(inited + 34) = *(v5 + 34);
  if (v7 == 3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(inited + 35) = *(v5 + 35);
  if (v7 < 5)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *(inited + 36) = *(v5 + 36);
  if (v7 == 5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(inited + 37) = *(v5 + 37);
  if (v7 < 7)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(inited + 38) = *(v5 + 38);
  if (v7 == 7)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(inited + 39) = *(v5 + 39);
  *(inited + 40) = HIBYTE(a1);
  *(inited + 41) = BYTE6(a1);
  *(inited + 42) = BYTE5(a1);
  *(inited + 43) = BYTE4(a1);
  *(inited + 44) = BYTE3(a1);
  *(inited + 45) = BYTE2(a1);
  *(inited + 46) = BYTE1(a1);
  *(inited + 47) = a1;
  v9 = sub_1DF6325AC();
  v10 = *(v9 - 8);
  if (*(v10 + 64) == 16)
  {
    v11 = v9;

    sub_1DF629AC8(v8);
    swift_setDeallocating();
    sub_1DF63257C();
    return (*(v10 + 8))(a2, v11);
  }

LABEL_19:
  result = swift_setDeallocating();
  __break(1u);
  return result;
}

uint64_t sub_1DF62A328(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1DF5C1294(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t static Keychain.item(account:service:)@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  result = sub_1DF59DFB8();
  if (!v5)
  {
    v12 = *MEMORY[0x1E697AE88];
    v13 = MEMORY[0x1E69E6158];
    v43 = MEMORY[0x1E69E6158];
    v42[0] = a3;
    v42[1] = a4;
    sub_1DF5A27C4(v42, v41);

    v14 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(v41, v12, isUniquelyReferenced_nonNull_native);
    v16 = *MEMORY[0x1E697AC30];
    v43 = v13;
    v42[0] = a1;
    v42[1] = a2;
    sub_1DF5A27C4(v42, v41);

    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(v41, v16, v17);
    v18 = *MEMORY[0x1E697B260];
    v19 = *MEMORY[0x1E697B270];
    type metadata accessor for CFString(0);
    v43 = v20;
    v42[0] = v19;
    sub_1DF5A27C4(v42, v41);
    v21 = v19;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(v41, v18, v22);
    v44 = v14;
    v23 = *MEMORY[0x1E697B318];
    v24 = *MEMORY[0x1E695E4D0];
    if (*MEMORY[0x1E695E4D0])
    {
      type metadata accessor for CFBoolean(0);
      v26 = v25;
      v43 = v25;
      v42[0] = v24;
      sub_1DF5A27C4(v42, v41);
      v27 = v24;
      v28 = v23;
      v29 = swift_isUniquelyReferenced_nonNull_native();
      sub_1DF59F654(v41, v28, v29);

      v30 = *MEMORY[0x1E697B390];
      v43 = v26;
      v42[0] = v27;
      sub_1DF5A27C4(v42, v41);
      v31 = v30;
      v32 = swift_isUniquelyReferenced_nonNull_native();
      sub_1DF59F654(v41, v31, v32);

      v44 = v14;
    }

    else
    {
      v33 = v23;
      sub_1DF59FBA0(v33, v41);

      sub_1DF59CB50(v41, &qword_1ECE436C0, &qword_1DF6393D0);
      v34 = *MEMORY[0x1E697B390];
      sub_1DF59FBA0(v34, v41);

      sub_1DF59CB50(v41, &qword_1ECE436C0, &qword_1DF6393D0);
    }

    v35 = *MEMORY[0x1E697AEB0];
    sub_1DF59FBA0(v35, v42);

    result = sub_1DF59CB50(v42, &qword_1ECE436C0, &qword_1DF6393D0);
    if (*MEMORY[0x1E697AEA8])
    {
      v36 = *MEMORY[0x1E697AEA8];
      sub_1DF59FBA0(v36, v42);

      sub_1DF59CB50(v42, &qword_1ECE436C0, &qword_1DF6393D0);
      v37 = sub_1DF59FC40(v44, 0);

      if (*(v37 + 16))
      {
        v38 = type metadata accessor for Keychain.Item(0);
        v39 = *(v38 - 8);
        sub_1DF5A39C0(v37 + ((*(v39 + 80) + 32) & ~*(v39 + 80)), a5);

        return (*(v39 + 56))(a5, 0, 1, v38);
      }

      else
      {

        v40 = type metadata accessor for Keychain.Item(0);
        return (*(*(v40 - 8) + 56))(a5, 1, 1, v40);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void static Keychain.item(account:service:accessGroup:)(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  sub_1DF59DFB8();
  if (!v7)
  {
    v15 = *MEMORY[0x1E697AE88];
    v16 = MEMORY[0x1E69E6158];
    v50 = MEMORY[0x1E69E6158];
    v49[0] = a3;
    v49[1] = a4;
    sub_1DF5A27C4(v49, v48);

    v17 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(v48, v15, isUniquelyReferenced_nonNull_native);
    v19 = *MEMORY[0x1E697AC30];
    v50 = v16;
    v49[0] = a1;
    v49[1] = a2;
    sub_1DF5A27C4(v49, v48);

    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(v48, v19, v20);
    v21 = *MEMORY[0x1E697B260];
    v22 = *MEMORY[0x1E697B270];
    type metadata accessor for CFString(0);
    v50 = v23;
    v49[0] = v22;
    sub_1DF5A27C4(v49, v48);
    v24 = v22;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(v48, v21, v25);
    v51 = v17;
    v26 = *MEMORY[0x1E697B318];
    v27 = *MEMORY[0x1E695E4D0];
    if (*MEMORY[0x1E695E4D0])
    {
      type metadata accessor for CFBoolean(0);
      v29 = v28;
      v50 = v28;
      v49[0] = v27;
      sub_1DF5A27C4(v49, v48);
      v30 = v27;
      v31 = v26;
      v32 = swift_isUniquelyReferenced_nonNull_native();
      sub_1DF59F654(v48, v31, v32);

      v33 = *MEMORY[0x1E697B390];
      v50 = v29;
      v49[0] = v30;
      sub_1DF5A27C4(v49, v48);
      v34 = v33;
      v35 = swift_isUniquelyReferenced_nonNull_native();
      sub_1DF59F654(v48, v34, v35);

      v51 = v17;
    }

    else
    {
      v36 = v26;
      sub_1DF59FBA0(v36, v48);

      sub_1DF59CB50(v48, &qword_1ECE436C0, &qword_1DF6393D0);
      v37 = *MEMORY[0x1E697B390];
      sub_1DF59FBA0(v37, v48);

      sub_1DF59CB50(v48, &qword_1ECE436C0, &qword_1DF6393D0);
    }

    v38 = *MEMORY[0x1E697AEB0];
    sub_1DF59FBA0(v38, v49);

    sub_1DF59CB50(v49, &qword_1ECE436C0, &qword_1DF6393D0);
    if (*MEMORY[0x1E697AEA8])
    {
      v39 = *MEMORY[0x1E697AEA8];
      sub_1DF59FBA0(v39, v49);

      sub_1DF59CB50(v49, &qword_1ECE436C0, &qword_1DF6393D0);
      if (a6)
      {
        v40 = *MEMORY[0x1E697ABD0];
        v50 = v16;
        v49[0] = a5;
        v49[1] = a6;
        sub_1DF5A27C4(v49, v48);

        v41 = v51;
        v42 = swift_isUniquelyReferenced_nonNull_native();
        sub_1DF59F654(v48, v40, v42);
        v43 = v41;
        v51 = v41;
      }

      else
      {
        v43 = v51;
      }

      v44 = sub_1DF59FC40(v43, 0);

      if (*(v44 + 16))
      {
        v45 = type metadata accessor for Keychain.Item(0);
        v46 = *(v45 - 8);
        sub_1DF5A39C0(v44 + ((*(v46 + 80) + 32) & ~*(v46 + 80)), a7);

        (*(v46 + 56))(a7, 0, 1, v45);
      }

      else
      {

        v47 = type metadata accessor for Keychain.Item(0);
        (*(*(v47 - 8) + 56))(a7, 1, 1, v47);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t static Keychain.data(account:service:accessGroup:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v64 = a1;
  *(&v64 + 1) = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE437F0, &qword_1DF63E0F0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v59 - v12;
  v14 = type metadata accessor for Keychain.Item(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF59DFB8();
  if (v6)
  {
    return a4;
  }

  v62 = v13;
  v63 = a5;
  v60 = v15;
  v61 = v17;
  v18 = *MEMORY[0x1E697AE88];
  v19 = MEMORY[0x1E69E6158];
  v68 = MEMORY[0x1E69E6158];
  *&v67 = a3;
  *(&v67 + 1) = a4;
  sub_1DF5A27C4(&v67, v66);

  v20 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = v20;
  sub_1DF59F654(v66, v18, isUniquelyReferenced_nonNull_native);
  v22 = v65;
  v23 = *MEMORY[0x1E697AC30];
  v68 = v19;
  v67 = v64;
  sub_1DF5A27C4(&v67, v66);

  v24 = swift_isUniquelyReferenced_nonNull_native();
  v65 = v22;
  sub_1DF59F654(v66, v23, v24);
  v25 = v65;
  v26 = *MEMORY[0x1E697B260];
  v27 = *MEMORY[0x1E697B270];
  type metadata accessor for CFString(0);
  v68 = v28;
  *&v67 = v27;
  sub_1DF5A27C4(&v67, v66);
  v29 = v27;
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v65 = v25;
  sub_1DF59F654(v66, v26, v30);
  v31 = v65;
  v69 = v65;
  v32 = *MEMORY[0x1E697B318];
  v33 = *MEMORY[0x1E695E4D0];
  if (*MEMORY[0x1E695E4D0])
  {
    type metadata accessor for CFBoolean(0);
    v35 = v34;
    v68 = v34;
    *&v67 = v33;
    sub_1DF5A27C4(&v67, v66);
    v36 = v33;
    v37 = v32;
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v65 = v31;
    sub_1DF59F654(v66, v37, v38);

    v39 = v65;
    v40 = *MEMORY[0x1E697B390];
    v68 = v35;
    *&v67 = v36;
    sub_1DF5A27C4(&v67, v66);
    v41 = v40;
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v65 = v39;
    sub_1DF59F654(v66, v41, v42);

    v69 = v65;
  }

  else
  {
    v43 = v32;
    sub_1DF59FBA0(v43, v66);

    sub_1DF59CB50(v66, &qword_1ECE436C0, &qword_1DF6393D0);
    v44 = *MEMORY[0x1E697B390];
    sub_1DF59FBA0(v44, v66);

    sub_1DF59CB50(v66, &qword_1ECE436C0, &qword_1DF6393D0);
  }

  v45 = v63;
  v46 = *MEMORY[0x1E697AEB0];
  sub_1DF59FBA0(v46, &v67);

  result = sub_1DF59CB50(&v67, &qword_1ECE436C0, &qword_1DF6393D0);
  if (*MEMORY[0x1E697AEA8])
  {
    v48 = *MEMORY[0x1E697AEA8];
    sub_1DF59FBA0(v48, &v67);

    sub_1DF59CB50(&v67, &qword_1ECE436C0, &qword_1DF6393D0);
    if (a6)
    {
      v49 = *MEMORY[0x1E697ABD0];
      v68 = v19;
      *&v67 = v45;
      *(&v67 + 1) = a6;
      sub_1DF5A27C4(&v67, v66);

      v50 = v69;
      v51 = swift_isUniquelyReferenced_nonNull_native();
      v65 = v50;
      sub_1DF59F654(v66, v49, v51);
      v52 = v65;
      v69 = v65;
    }

    else
    {
      v52 = v69;
    }

    v53 = v62;
    v54 = sub_1DF59FC40(v52, 0);

    if (*(v54 + 16))
    {
      v55 = v60;
      sub_1DF5A39C0(v54 + ((*(v60 + 80) + 32) & ~*(v60 + 80)), v53);
      v56 = v55;

      (*(v55 + 56))(v53, 0, 1, v14);
    }

    else
    {

      v56 = v60;
      (*(v60 + 56))(v53, 1, 1, v14);
    }

    v57 = v61;
    if ((*(v56 + 48))(v53, 1, v14) == 1)
    {
      sub_1DF59CB50(v53, &qword_1ECE437F0, &qword_1DF63E0F0);
      return 0;
    }

    else
    {
      sub_1DF5A325C(v53, v57);
      v58 = v57 + *(v14 + 40);
      a4 = *v58;
      sub_1DF5A3A80(*v58, *(v58 + 8));
      sub_1DF5A3A24(v57);
    }

    return a4;
  }

  __break(1u);
  return result;
}

uint64_t static Keychain.deleteData(account:service:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1DF59DFB8();
  if (!v4)
  {
    v10 = *MEMORY[0x1E697AE88];
    v11 = MEMORY[0x1E69E6158];
    v30 = MEMORY[0x1E69E6158];
    *&v29 = a3;
    *(&v29 + 1) = a4;
    sub_1DF5A27C4(&v29, v28);

    v12 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(v28, v10, isUniquelyReferenced_nonNull_native);
    v14 = *MEMORY[0x1E697AC30];
    v30 = v11;
    *&v29 = a1;
    *(&v29 + 1) = a2;
    sub_1DF5A27C4(&v29, v28);

    v15 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(v28, v14, v15);
    v16 = v12;
    v31 = v12;
    v17 = *MEMORY[0x1E697B390];
    v18 = *MEMORY[0x1E695E4D0];
    if (*MEMORY[0x1E695E4D0])
    {
      type metadata accessor for CFBoolean(0);
      v30 = v19;
      *&v29 = v18;
      sub_1DF5A27C4(&v29, v28);
      v20 = v17;
      v21 = v18;
      v22 = swift_isUniquelyReferenced_nonNull_native();
      sub_1DF59F654(v28, v20, v22);

      v31 = v16;
    }

    else
    {
      v23 = v17;
      sub_1DF59FBA0(v23, &v29);

      sub_1DF59CB50(&v29, &qword_1ECE436C0, &qword_1DF6393D0);
    }

    v24 = *MEMORY[0x1E697AEB0];
    sub_1DF59FBA0(v24, &v29);

    result = sub_1DF59CB50(&v29, &qword_1ECE436C0, &qword_1DF6393D0);
    if (*MEMORY[0x1E697AEA8])
    {
      v25 = *MEMORY[0x1E697AEA8];
      sub_1DF59FBA0(v25, &v29);

      sub_1DF59CB50(&v29, &qword_1ECE436C0, &qword_1DF6393D0);
      v26 = sub_1DF6308B0(v31);

      if (v26)
      {
        sub_1DF63085C();
        swift_allocError();
        *v27 = v26;
        *(v27 + 4) = 0;
        return swift_willThrow();
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

__n128 static Keychain.set<A>(data:account:service:dataProtectionClass:accessGroup:syncViewHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a11, uint64_t a12)
{
  v12 = *a6;
  sub_1DF62FED0(a1, a2, a3, a4, a5, &v12, a7, a8, a9, a11);
  return result;
}

void static Keychain.item(account:service:useSystemKeychain:nonDestructive:accessGroup:)(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, char a5@<W5>, void *a6@<X6>, void *a7@<X7>, uint64_t a8@<X8>)
{
  sub_1DF59DFB8();
  if (!v8)
  {
    v17 = *MEMORY[0x1E697AE88];
    v52 = MEMORY[0x1E69E6158];
    v51[0] = a3;
    v51[1] = a4;
    v18 = MEMORY[0x1E69E6158];
    sub_1DF5A27C4(v51, v50);

    v19 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(v50, v17, isUniquelyReferenced_nonNull_native);
    v21 = *MEMORY[0x1E697AC30];
    v52 = v18;
    v51[0] = a1;
    v51[1] = a2;
    sub_1DF5A27C4(v51, v50);

    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(v50, v21, v22);
    v23 = *MEMORY[0x1E697B260];
    v24 = *MEMORY[0x1E697B270];
    type metadata accessor for CFString(0);
    v52 = v25;
    v51[0] = v24;
    sub_1DF5A27C4(v51, v50);
    v26 = v24;
    v27 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(v50, v23, v27);
    v53 = v19;
    v28 = *MEMORY[0x1E697B318];
    v29 = *MEMORY[0x1E695E4D0];
    if (*MEMORY[0x1E695E4D0])
    {
      type metadata accessor for CFBoolean(0);
      v31 = v30;
      v52 = v30;
      v51[0] = v29;
      sub_1DF5A27C4(v51, v50);
      v32 = v29;
      v33 = v28;
      v34 = swift_isUniquelyReferenced_nonNull_native();
      sub_1DF59F654(v50, v33, v34);

      v35 = *MEMORY[0x1E697B390];
      v52 = v31;
      v51[0] = v32;
      sub_1DF5A27C4(v51, v50);
      v36 = v35;
      v37 = swift_isUniquelyReferenced_nonNull_native();
      sub_1DF59F654(v50, v36, v37);

      v53 = v19;
    }

    else
    {
      v38 = v28;
      sub_1DF59FBA0(v38, v50);

      sub_1DF59CB50(v50, &qword_1ECE436C0, &qword_1DF6393D0);
      v39 = *MEMORY[0x1E697B390];
      sub_1DF59FBA0(v39, v50);

      sub_1DF59CB50(v50, &qword_1ECE436C0, &qword_1DF6393D0);
    }

    v40 = *MEMORY[0x1E697AEB0];
    sub_1DF59FBA0(v40, v51);

    sub_1DF59CB50(v51, &qword_1ECE436C0, &qword_1DF6393D0);
    if (*MEMORY[0x1E697AEA8])
    {
      v41 = *MEMORY[0x1E697AEA8];
      sub_1DF59FBA0(v41, v51);

      sub_1DF59CB50(v51, &qword_1ECE436C0, &qword_1DF6393D0);
      if (a7)
      {
        v42 = *MEMORY[0x1E697ABD0];
        v52 = v18;
        v51[0] = a6;
        v51[1] = a7;
        sub_1DF5A27C4(v51, v50);

        v43 = v53;
        v44 = swift_isUniquelyReferenced_nonNull_native();
        sub_1DF59F654(v50, v42, v44);
        v45 = v43;
        v53 = v43;
      }

      else
      {
        v45 = v53;
      }

      v46 = sub_1DF59FC40(v45, a5 & 1);

      if (*(v46 + 16))
      {
        v47 = type metadata accessor for Keychain.Item(0);
        v48 = *(v47 - 8);
        sub_1DF5A39C0(v46 + ((*(v48 + 80) + 32) & ~*(v48 + 80)), a8);

        (*(v48 + 56))(a8, 0, 1, v47);
      }

      else
      {

        v49 = type metadata accessor for Keychain.Item(0);
        (*(*(v49 - 8) + 56))(a8, 1, 1, v49);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1DF62BE54(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, char a5@<W5>, void *a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, void *a9, uint64_t a10)
{
  sub_1DF59DFB8();
  if (!v10)
  {
    v66 = a6;
    v67 = a8;
    v19 = *MEMORY[0x1E697AE88];
    v20 = MEMORY[0x1E69E6158];
    v71 = MEMORY[0x1E69E6158];
    v69 = a3;
    v70 = a4;
    sub_1DF5A27C4(&v69, v68);

    v21 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(v68, v19, isUniquelyReferenced_nonNull_native);
    v23 = *MEMORY[0x1E697AC30];
    v71 = v20;
    v69 = a1;
    v70 = a2;
    sub_1DF5A27C4(&v69, v68);

    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(v68, v23, v24);
    v25 = v21;
    v26 = *MEMORY[0x1E697B260];
    v27 = *MEMORY[0x1E697B270];
    type metadata accessor for CFString(0);
    v71 = v28;
    v69 = v27;
    sub_1DF5A27C4(&v69, v68);
    v29 = v27;
    v30 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(v68, v26, v30);
    v31 = v25;
    v72 = v25;
    v32 = *MEMORY[0x1E697B318];
    v33 = *MEMORY[0x1E695E4D0];
    if (*MEMORY[0x1E695E4D0])
    {
      type metadata accessor for CFBoolean(0);
      v35 = v34;
      v71 = v34;
      v69 = v33;
      sub_1DF5A27C4(&v69, v68);
      v36 = v33;
      v37 = v32;
      v38 = swift_isUniquelyReferenced_nonNull_native();
      sub_1DF59F654(v68, v37, v38);

      v39 = v31;
      v40 = *MEMORY[0x1E697B390];
      v71 = v35;
      v69 = v36;
      sub_1DF5A27C4(&v69, v68);
      v41 = v40;
      v42 = swift_isUniquelyReferenced_nonNull_native();
      sub_1DF59F654(v68, v41, v42);

      v43 = v39;
      v72 = v39;
      v44 = *MEMORY[0x1E697AEB0];
      if (a10)
      {
        v71 = v35;
        v69 = v36;
        sub_1DF5A27C4(&v69, v68);
        v45 = v36;
        v46 = v44;
        v47 = swift_isUniquelyReferenced_nonNull_native();
        sub_1DF59F654(v68, v46, v47);

        v72 = v43;
        v48 = *MEMORY[0x1E697AEA8];
        if (!*MEMORY[0x1E697AEA8])
        {
          goto LABEL_21;
        }

LABEL_10:
        if ((a9 || a10 != 0xE000000000000000) && (sub_1DF63394C() & 1) == 0)
        {
          v71 = MEMORY[0x1E69E6158];
          v69 = a9;
          v70 = a10;
          sub_1DF5A27C4(&v69, v68);
          v59 = v48;

          v60 = v72;
          v61 = swift_isUniquelyReferenced_nonNull_native();
          sub_1DF59F654(v68, v59, v61);

          v72 = v60;
          v54 = v67;
          if (a7)
          {
            goto LABEL_14;
          }

          goto LABEL_16;
        }

LABEL_13:
        v53 = v48;
        sub_1DF59FBA0(v53, v68);

        sub_1DF59CB50(v68, &qword_1ECE436C0, &qword_1DF6393D0);
        v54 = v67;
        if (a7)
        {
LABEL_14:
          v55 = *MEMORY[0x1E697ABD0];
          v71 = MEMORY[0x1E69E6158];
          v69 = v66;
          v70 = a7;
          sub_1DF5A27C4(&v69, v68);

          v56 = v72;
          v57 = swift_isUniquelyReferenced_nonNull_native();
          sub_1DF59F654(v68, v55, v57);
          v58 = v56;
          v72 = v56;
          goto LABEL_17;
        }

LABEL_16:
        v58 = v72;
LABEL_17:
        v62 = sub_1DF59FC40(v58, a5 & 1);

        if (*(v62 + 16))
        {
          v63 = type metadata accessor for Keychain.Item(0);
          v64 = *(v63 - 8);
          sub_1DF5A39C0(v62 + ((*(v64 + 80) + 32) & ~*(v64 + 80)), v54);

          (*(v64 + 56))(v54, 0, 1, v63);
        }

        else
        {

          v65 = type metadata accessor for Keychain.Item(0);
          (*(*(v65 - 8) + 56))(v54, 1, 1, v65);
        }

        return;
      }

      LOBYTE(v51) = 1;
    }

    else
    {
      v49 = v32;
      sub_1DF59FBA0(v49, v68);

      sub_1DF59CB50(v68, &qword_1ECE436C0, &qword_1DF6393D0);
      v50 = *MEMORY[0x1E697B390];
      sub_1DF59FBA0(v50, v68);

      sub_1DF59CB50(v68, &qword_1ECE436C0, &qword_1DF6393D0);
      v44 = *MEMORY[0x1E697AEB0];
      v51 = a10 == 0;
    }

    v52 = v44;
    sub_1DF59FBA0(v52, v68);

    sub_1DF59CB50(v68, &qword_1ECE436C0, &qword_1DF6393D0);
    v48 = *MEMORY[0x1E697AEA8];
    if (!*MEMORY[0x1E697AEA8])
    {
LABEL_21:
      __break(1u);
      return;
    }

    if (v51)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }
}

uint64_t Keychain.DataProtectionClass.hashValue.getter()
{
  v1 = *v0;
  sub_1DF633A6C();
  MEMORY[0x1E12D9240](v1);
  return sub_1DF633AAC();
}

uint64_t Keychain.Item.accessGroup.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Keychain.Item.service.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Keychain.Item.account.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Keychain.Item.created.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Keychain.Item(0) + 28);
  v4 = sub_1DF63252C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Keychain.Item.modified.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Keychain.Item(0) + 32);
  v4 = sub_1DF63252C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Keychain.Item.dataProtectionClass.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Keychain.Item(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t Keychain.Item.data.getter()
{
  v1 = v0 + *(type metadata accessor for Keychain.Item(0) + 40);
  v2 = *v1;
  sub_1DF5A3A80(*v1, *(v1 + 8));
  return v2;
}

void *sub_1DF62C92C(void *a1, void *a2, uint64_t a3, char a4, void *a5, void *a6, void **a7)
{
  sub_1DF59DFB8();
  if (!v7)
  {
    v14 = *a7;
    v15 = MEMORY[0x1E69E6158];
    v37 = MEMORY[0x1E69E6158];
    v36[0] = a1;
    v36[1] = a2;
    sub_1DF5A27C4(v36, &v35);

    v16 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(&v35, v14, isUniquelyReferenced_nonNull_native);
    v18 = *MEMORY[0x1E697B260];
    v19 = *MEMORY[0x1E697B268];
    type metadata accessor for CFString(0);
    v37 = v20;
    v36[0] = v19;
    sub_1DF5A27C4(v36, &v35);
    v21 = v19;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(&v35, v18, v22);
    v38 = v16;
    v23 = *MEMORY[0x1E697B390];
    v24 = *MEMORY[0x1E695E4D0];
    if (*MEMORY[0x1E695E4D0])
    {
      type metadata accessor for CFBoolean(0);
      v37 = v25;
      v36[0] = v24;
      sub_1DF5A27C4(v36, &v35);
      v26 = v23;
      v27 = v24;
      v28 = swift_isUniquelyReferenced_nonNull_native();
      sub_1DF59F654(&v35, v26, v28);

      v38 = v16;
      if (a6)
      {
LABEL_4:
        v29 = *MEMORY[0x1E697ABD0];
        v37 = v15;
        v36[0] = a5;
        v36[1] = a6;
        sub_1DF5A27C4(v36, &v35);

        v30 = v38;
        v31 = swift_isUniquelyReferenced_nonNull_native();
        sub_1DF59F654(&v35, v29, v31);
        v32 = v30;
LABEL_7:
        a2 = sub_1DF59FC40(v32, a4 & 1);

        return a2;
      }
    }

    else
    {
      v33 = v23;
      sub_1DF59FBA0(v33, v36);

      sub_1DF59CB50(v36, &qword_1ECE436C0, &qword_1DF6393D0);
      if (a6)
      {
        goto LABEL_4;
      }
    }

    v32 = v38;
    goto LABEL_7;
  }

  return a2;
}

unint64_t sub_1DF62CC3C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE429E0, &qword_1DF638C10);
    v2 = sub_1DF63373C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for CFString(0);
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  if (v3 == MEMORY[0x1E69E6158])
  {
    v26 = (v5 + 63) >> 6;

    v27 = 0;
    if (v7)
    {
      goto LABEL_28;
    }

LABEL_29:
    while (1)
    {
      v32 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v32 >= v26)
      {
LABEL_37:

        return v2;
      }

      v7 = *(v4 + 8 * v32);
      ++v27;
      if (v7)
      {
        while (1)
        {
          v33 = *(*(a1 + 48) + 8 * (__clz(__rbit64(v7)) | (v32 << 6)));
          v7 &= v7 - 1;
          v34 = v33;

          swift_dynamicCast();
          sub_1DF5A27C4(v43, v41);
          sub_1DF5A27C4(v41, v39);
          sub_1DF5A27C4(v39, &v40);
          result = sub_1DF59F794(v34);
          if (v35)
          {
            v28 = *(v2 + 48);
            v29 = *(v28 + 8 * result);
            *(v28 + 8 * result) = v34;
            v30 = result;

            v31 = (*(v2 + 56) + 32 * v30);
            __swift_destroy_boxed_opaque_existential_1(v31);
            result = sub_1DF5A27C4(&v40, v31);
            v27 = v32;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

          else
          {
            if (*(v2 + 16) >= *(v2 + 24))
            {
              goto LABEL_41;
            }

            *(v2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
            *(*(v2 + 48) + 8 * result) = v34;
            result = sub_1DF5A27C4(&v40, *(v2 + 56) + 32 * result);
            v36 = *(v2 + 16);
            v37 = __OFADD__(v36, 1);
            v38 = v36 + 1;
            if (v37)
            {
              goto LABEL_42;
            }

            *(v2 + 16) = v38;
            v27 = v32;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

LABEL_28:
          v32 = v27;
        }
      }
    }
  }

  else
  {
    v8 = (v5 + 63) >> 6;
    v9 = v2 + 64;

    v11 = 0;
    while (v7)
    {
LABEL_16:
      v14 = __clz(__rbit64(v7)) | (v11 << 6);
      v15 = *(*(a1 + 48) + 8 * v14);
      v16 = (*(a1 + 56) + 16 * v14);
      v17 = v16[1];
      v39[0] = *v16;
      v39[1] = v17;
      v18 = v15;

      swift_dynamicCast();
      sub_1DF5A27C4(v43, v41);
      sub_1DF5A27C4(v41, v42);
      sub_1DF633A6C();
      sub_1DF5A2C28(&unk_1ED8E4BB0, type metadata accessor for CFString, &unk_1DF6381A8);
      sub_1DF63265C();
      result = sub_1DF633AAC();
      v19 = -1 << *(v2 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v9 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v9 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_39;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v9 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v9 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v7 &= v7 - 1;
      *(*(v2 + 48) + 8 * v12) = v18;
      result = sub_1DF5A27C4(v42, *(v2 + 56) + 32 * v12);
      ++*(v2 + 16);
    }

    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v8)
      {
        goto LABEL_37;
      }

      v7 = *(v4 + 8 * v13);
      ++v11;
      if (v7)
      {
        v11 = v13;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t Keychain.Item.description.getter()
{
  v1 = v0;
  sub_1DF63347C();
  MEMORY[0x1E12D82E0](0x203A707267613CLL, 0xE700000000000000);
  MEMORY[0x1E12D82E0](*v1, v1[1]);
  MEMORY[0x1E12D82E0](0x203A7463636120, 0xE700000000000000);
  MEMORY[0x1E12D82E0](v1[4], v1[5]);
  MEMORY[0x1E12D82E0](0x203A63767320, 0xE600000000000000);
  MEMORY[0x1E12D82E0](v1[2], v1[3]);
  MEMORY[0x1E12D82E0](0x203A657461646320, 0xE800000000000000);
  v2 = type metadata accessor for Keychain.Item(0);
  sub_1DF63252C();
  sub_1DF5A2C28(&qword_1ECE437F8, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
  v3 = sub_1DF6338DC();
  MEMORY[0x1E12D82E0](v3);

  MEMORY[0x1E12D82E0](0x203A657461646D20, 0xE800000000000000);
  v4 = sub_1DF6338DC();
  MEMORY[0x1E12D82E0](v4);

  MEMORY[0x1E12D82E0](0x203A7373616C6320, 0xE800000000000000);
  sub_1DF63366C();
  MEMORY[0x1E12D82E0](0x203A6174616420, 0xE700000000000000);
  sub_1DF5A3A80(*(v0 + *(v2 + 40)), *(v0 + *(v2 + 40) + 8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43800, &qword_1DF63E0F8);
  v5 = sub_1DF632A3C();
  MEMORY[0x1E12D82E0](v5);

  MEMORY[0x1E12D82E0](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1DF62D304(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1DF6326AC();
  __swift_allocate_value_buffer(v3, a2);
  v4 = __swift_project_value_buffer(v3, a2);
  if (qword_1ED8E4A88 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v3, qword_1ED8E4A90);
  v6 = *(*(v3 - 8) + 16);

  return v6(v4, v5, v3);
}

uint64_t sub_1DF62D3D8@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
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
    v10 = sub_1DF63211C();
    if (v10)
    {
      v11 = sub_1DF63214C();
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
      result = sub_1DF63213C();
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
  v10 = sub_1DF63211C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1DF63214C();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1DF63213C();
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

uint64_t sub_1DF62D608(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1DF62F384(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1DF5B33C0(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1DF62D3D8(v13, a3, a4, &v12);
  v10 = v4;
  sub_1DF5B33C0(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1DF62D7E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v10 = v6;
  v12 = sub_1DF59F184(a1, a2);
  if (v13)
  {
    v14 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v6;
    v26 = *v10;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v16 = v26;
    }

    v17 = *(v16 + 56);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v25 = *(v18 - 8);
    (*(v25 + 32))(a6, v17 + *(v25 + 72) * v14, v18);
    sub_1DF62DE18(v14, v16, a3, a4);
    *v10 = v16;
    v19 = *(v25 + 56);
    v20 = a6;
    v21 = 0;
    v22 = v18;
  }

  else
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v19 = *(*(v23 - 8) + 56);
    v22 = v23;
    v20 = a6;
    v21 = 1;
  }

  return v19(v20, v21, 1, v22);
}

uint64_t sub_1DF62D980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1DF59F184(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DF5DE818();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_1DF6335AC();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_1DF62E1C4(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_1DF6335AC();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1DF62DAF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1DF5C83A8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DF5DEC10();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_1DF6325AC();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A00, &qword_1DF638C30);
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_1DF62E3B0(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A00, &qword_1DF638C30);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

double sub_1DF62DCA8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1DF59F184(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DF5DEF94();
      v10 = v12;
    }

    sub_1DF5A27C4(*(v10 + 56) + 32 * v8, a3);
    sub_1DF62E700(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_1DF62DD4C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1DF59F184(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v16 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DF5DF15C();
      v10 = v16;
    }

    v11 = (*(v10 + 56) + 112 * v8);
    v12 = v11[5];
    a3[4] = v11[4];
    a3[5] = v12;
    a3[6] = v11[6];
    v13 = v11[1];
    *a3 = *v11;
    a3[1] = v13;
    v14 = v11[3];
    a3[2] = v11[2];
    a3[3] = v14;
    sub_1DF62E8B0(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    a3[5] = 0u;
    a3[6] = 0u;
    a3[3] = 0u;
    a3[4] = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

unint64_t sub_1DF62DE18(unint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = result;
  v6 = a2 + 64;
  v7 = -1 << *(a2 + 32);
  v8 = (result + 1) & ~v7;
  if ((*(a2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v11 = ~v7;
    v12 = (sub_1DF6333EC() + 1) & ~v7;
    while (1)
    {
      sub_1DF633A6C();

      sub_1DF632ACC();
      v13 = sub_1DF633AAC();

      v14 = v13 & v11;
      if (v5 >= v12)
      {
        break;
      }

      if (v14 < v12)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v5);
      v17 = (v15 + 16 * v8);
      if (v5 != v8 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8) + 72);
      v20 = v19 * v5;
      result = v18 + v19 * v5;
      v21 = v19 * v8;
      v22 = v18 + v19 * v8 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v5 = v8;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v5 = v8;
LABEL_5:
      v8 = (v8 + 1) & v11;
      if (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v12)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v5 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v6 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v5) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1DF62E014(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DF6333EC() + 1) & ~v5;
    do
    {
      sub_1DF633A6C();

      sub_1DF632ACC();
      v9 = sub_1DF633AAC();

      v10 = v9 & v7;
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
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
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

unint64_t sub_1DF62E1C4(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DF6333EC() + 1) & ~v5;
    while (1)
    {
      sub_1DF633A6C();

      sub_1DF632ACC();
      v9 = sub_1DF633AAC();

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
      v15 = *(*(sub_1DF6335AC() - 8) + 72);
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

void sub_1DF62E3B0(int64_t a1, uint64_t a2)
{
  v4 = sub_1DF6325AC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v41 = a2;
    v11 = ~v9;
    v12 = sub_1DF6333EC();
    v13 = v11;
    a2 = v41;
    v40 = (v12 + 1) & v13;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v38 = v8;
    v39 = v15;
    v16 = *(v14 + 56);
    v37 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v10;
      v19 = v13;
      v20 = v14;
      v39(v7, *(a2 + 48) + v16 * v10, v4);
      sub_1DF5A2C28(&qword_1ED8E6150, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v21 = sub_1DF6328BC();
      (*v37)(v7, v4);
      v13 = v19;
      v22 = v21 & v19;
      if (a1 >= v40)
      {
        if (v22 >= v40 && a1 >= v22)
        {
LABEL_15:
          v14 = v20;
          if (v17 * a1 < v18 || *(v41 + 48) + v17 * a1 >= (*(v41 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v17 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v25 = *(v41 + 56);
          v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A00, &qword_1DF638C30) - 8) + 72);
          v27 = v26 * a1;
          v28 = v25 + v26 * a1;
          v29 = v26 * v10;
          v30 = v25 + v26 * v10 + v26;
          if (v27 < v29 || v28 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v8 = v38;
            v13 = v19;
          }

          else
          {
            a1 = v10;
            v32 = v27 == v29;
            v8 = v38;
            v13 = v19;
            if (!v32)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v19;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v40 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v14 = v20;
      v8 = v38;
      a2 = v41;
LABEL_4:
      v10 = (v10 + 1) & v13;
      v16 = v17;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

uint64_t sub_1DF62E700(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DF6333EC() + 1) & ~v5;
    do
    {
      sub_1DF633A6C();

      sub_1DF632ACC();
      v10 = sub_1DF633AAC();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

char *sub_1DF62E8B0(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DF6333EC() + 1) & ~v5;
    do
    {
      sub_1DF633A6C();

      sub_1DF632ACC();
      v9 = sub_1DF633AAC();

      v10 = v9 & v7;
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
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        result = (v14 + 112 * v3);
        v15 = (v14 + 112 * v6);
        if (v3 != v6 || result >= v15 + 112)
        {
          result = memmove(result, v15, 0x70uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1DF62EA64(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DF6333EC() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_1DF633A6C();
      type metadata accessor for CFString(0);
      sub_1DF5A2C28(&unk_1ED8E4BB0, type metadata accessor for CFString, &unk_1DF6381A8);
      v11 = v10;
      sub_1DF63265C();
      v12 = sub_1DF633AAC();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

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
}

uint64_t sub_1DF62EC5C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1DF59F184(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1DF5DE818();
      goto LABEL_7;
    }

    sub_1DF5DD5CC(v15, a4 & 1);
    v26 = sub_1DF59F184(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1DF6339EC();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_1DF6335AC();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_1DF62F1D4(v12, a2, a3, a1, v18);
}

uint64_t sub_1DF62EDDC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1DF6325AC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1DF5C83A8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1DF5DEC10();
      goto LABEL_7;
    }

    sub_1DF5DDC0C(v17, a3 & 1);
    v28 = sub_1DF5C83A8(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1DF62F284(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1DF6339EC();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A00, &qword_1DF638C30);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_1DF62EFEC(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DF59F184(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1DF5DE0E4(v16, a4 & 1);
      v11 = sub_1DF59F184(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1DF6339EC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1DF5DF15C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 112 * v11;

    return sub_1DF631FB0(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = (v21[7] + 112 * v11);
  v26 = *a1;
  v27 = a1[2];
  v25[1] = a1[1];
  v25[2] = v27;
  *v25 = v26;
  v28 = a1[3];
  v29 = a1[4];
  v30 = a1[6];
  v25[5] = a1[5];
  v25[6] = v30;
  v25[3] = v28;
  v25[4] = v29;
  v31 = v21[2];
  v15 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v32;
}

unint64_t sub_1DF62F18C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1DF62F1D4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1DF6335AC();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1DF62F284(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1DF6325AC();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A00, &qword_1DF638C30);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_1DF62F384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1DF63211C();
  v11 = result;
  if (result)
  {
    result = sub_1DF63214C();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1DF63213C();
  sub_1DF62D3D8(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1DF62F43C(uint64_t a1)
{
  v2 = *MEMORY[0x1E697AFF8];
  v3 = *(a1 + 16);

  if (v3 && (v4 = sub_1DF59F794(v2), (v5 & 1) != 0))
  {
    sub_1DF5A0B98(*(a1 + 56) + 32 * v4, &v37);
    sub_1DF59CB50(&v37, &qword_1ECE436C0, &qword_1DF6393D0);
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
    sub_1DF59CB50(&v37, &qword_1ECE436C0, &qword_1DF6393D0);
    v6 = *MEMORY[0x1E697B008];
    type metadata accessor for CFString(0);
    *(&v38 + 1) = v7;
    *&v37 = v6;
    sub_1DF5A27C4(&v37, v36);
    v8 = v2;
    v9 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(v36, v8, isUniquelyReferenced_nonNull_native);
  }

  if (qword_1ED8E4C60 != -1)
  {
    swift_once();
  }

  v11 = sub_1DF6326AC();
  __swift_project_value_buffer(v11, qword_1ED8E4C68);
  v12 = sub_1DF63268C();
  v13 = sub_1DF63318C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v37 = v15;
    *v14 = 136315138;
    type metadata accessor for CFString(0);
    sub_1DF5A2C28(&qword_1ED8E4BA8, type metadata accessor for CFString, &unk_1DF638164);

    v16 = sub_1DF63284C();
    v18 = v17;

    v19 = sub_1DF59EEC8(v16, v18, &v37);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_1DF59A000, v12, v13, "SecItemAdd() attributes: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1E12D9D80](v15, -1, -1);
    MEMORY[0x1E12D9D80](v14, -1, -1);
  }

  type metadata accessor for CFString(0);
  sub_1DF5A2C28(&qword_1ED8E4BA8, type metadata accessor for CFString, &unk_1DF638164);

  v20 = sub_1DF63282C();

  v21 = SecItemAdd(v20, 0);

  v22 = sub_1DF63268C();
  v23 = sub_1DF63318C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 67109120;
    *(v24 + 4) = v21;
    _os_log_impl(&dword_1DF59A000, v22, v23, "SecItemAdd() status: %d", v24, 8u);
    MEMORY[0x1E12D9D80](v24, -1, -1);
  }

  if (v21 && v21 != -25299)
  {
    if (qword_1ED8E4A68 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v11, qword_1ED8E6928);
    v25 = sub_1DF63268C();
    v26 = sub_1DF63316C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v37 = v28;
      *v27 = 67109378;
      *(v27 + 4) = v21;
      *(v27 + 8) = 2082;
      v29 = SecCopyErrorMessageString(v21, 0);
      if (v29)
      {
        v30 = v29;
        v31 = sub_1DF63298C();
        v33 = v32;
      }

      else
      {
        v33 = 0xE90000000000003ELL;
        v31 = 0x6E776F6E6B6E753CLL;
      }

      v34 = sub_1DF59EEC8(v31, v33, &v37);

      *(v27 + 10) = v34;
      _os_log_impl(&dword_1DF59A000, v25, v26, "SecItemAdd error: %d [%{public}s]", v27, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1E12D9D80](v28, -1, -1);
      MEMORY[0x1E12D9D80](v27, -1, -1);
    }
  }

  else
  {
  }

  return v21;
}

uint64_t sub_1DF62F940(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x1E697AFF8];
  v4 = *(a1 + 16);

  if (v4 && (v5 = sub_1DF59F794(v3), (v6 & 1) != 0))
  {
    sub_1DF5A0B98(*(a1 + 56) + 32 * v5, &v44);
    sub_1DF59CB50(&v44, &qword_1ECE436C0, &qword_1DF6393D0);
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
    sub_1DF59CB50(&v44, &qword_1ECE436C0, &qword_1DF6393D0);
    v7 = *MEMORY[0x1E697B008];
    type metadata accessor for CFString(0);
    *(&v45 + 1) = v8;
    *&v44 = v7;
    sub_1DF5A27C4(&v44, v43);
    v9 = v3;
    v10 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(v43, v9, isUniquelyReferenced_nonNull_native);
  }

  if (qword_1ED8E4C60 != -1)
  {
    swift_once();
  }

  v12 = sub_1DF6326AC();
  __swift_project_value_buffer(v12, qword_1ED8E4C68);

  v13 = sub_1DF63268C();
  v14 = sub_1DF63318C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v42 = v12;
    v16 = swift_slowAlloc();
    *&v44 = v16;
    *v15 = 136315394;
    type metadata accessor for CFString(0);
    sub_1DF5A2C28(&qword_1ED8E4BA8, type metadata accessor for CFString, &unk_1DF638164);

    v17 = sub_1DF63284C();
    v19 = v18;

    v20 = sub_1DF59EEC8(v17, v19, &v44);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    v21 = sub_1DF63284C();
    v23 = sub_1DF59EEC8(v21, v22, &v44);

    *(v15 + 14) = v23;
    _os_log_impl(&dword_1DF59A000, v13, v14, "SecItemUpate() query: %s attributes: %s", v15, 0x16u);
    swift_arrayDestroy();
    v24 = v16;
    v12 = v42;
    MEMORY[0x1E12D9D80](v24, -1, -1);
    MEMORY[0x1E12D9D80](v15, -1, -1);
  }

  type metadata accessor for CFString(0);
  sub_1DF5A2C28(&qword_1ED8E4BA8, type metadata accessor for CFString, &unk_1DF638164);

  v25 = sub_1DF63282C();

  v26 = sub_1DF63282C();
  v27 = SecItemUpdate(v25, v26);

  v28 = sub_1DF63268C();
  v29 = sub_1DF63318C();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 67109120;
    *(v30 + 4) = v27;
    _os_log_impl(&dword_1DF59A000, v28, v29, "SecItemUpate() status: %d", v30, 8u);
    MEMORY[0x1E12D9D80](v30, -1, -1);
  }

  if (v27)
  {
    if (qword_1ED8E4A68 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v12, qword_1ED8E6928);
    v31 = sub_1DF63268C();
    v32 = sub_1DF63316C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v44 = v34;
      *v33 = 67109378;
      *(v33 + 4) = v27;
      *(v33 + 8) = 2082;
      v35 = SecCopyErrorMessageString(v27, 0);
      if (v35)
      {
        v36 = v35;
        v37 = sub_1DF63298C();
        v39 = v38;
      }

      else
      {
        v39 = 0xE90000000000003ELL;
        v37 = 0x6E776F6E6B6E753CLL;
      }

      v40 = sub_1DF59EEC8(v37, v39, &v44);

      *(v33 + 10) = v40;
      _os_log_impl(&dword_1DF59A000, v31, v32, "SecItemUpdate error: %d [%{public}s]", v33, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x1E12D9D80](v34, -1, -1);
      MEMORY[0x1E12D9D80](v33, -1, -1);
    }
  }

  else
  {
  }

  return v27;
}

void sub_1DF62FED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  v18 = *a6;
  sub_1DF59DFB8();
  if (v10)
  {
    return;
  }

  v91 = a7;
  v19 = *MEMORY[0x1E697AE88];
  v20 = a4;
  v21 = MEMORY[0x1E69E6158];
  *(&v97 + 1) = MEMORY[0x1E69E6158];
  v87 = v20;
  *&v96 = v20;
  *(&v96 + 1) = a5;
  sub_1DF5A27C4(&v96, v95);
  v89 = a5;

  v22 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v88 = v19;
  sub_1DF59F654(v95, v19, isUniquelyReferenced_nonNull_native);
  v24 = *MEMORY[0x1E697AC30];
  *(&v97 + 1) = v21;
  *&v90 = a2;
  *&v96 = a2;
  *(&v96 + 1) = a3;
  sub_1DF5A27C4(&v96, v95);
  *(&v90 + 1) = a3;

  v25 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF59F654(v95, v24, v25);
  v26 = *MEMORY[0x1E697B3C0];
  *(&v97 + 1) = a10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v96);
  (*(*(a10 - 8) + 16))(boxed_opaque_existential_1, a1, a10);
  sub_1DF5A27C4(&v96, v95);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF59F654(v95, v26, v28);
  v98 = v22;
  v29 = *MEMORY[0x1E697ABD8];
  if (*(&a9 + 1))
  {
    if (v18)
    {
      if (v18 == 1)
      {
        v30 = MEMORY[0x1E697ABE0];
LABEL_9:
        v31 = *v30;
LABEL_15:
        v33 = v31;
        type metadata accessor for CFString(0);
        *(&v97 + 1) = v34;
        *&v96 = v33;
        sub_1DF5A27C4(&v96, v95);
        v35 = v29;
        v36 = swift_isUniquelyReferenced_nonNull_native();
        sub_1DF59F654(v95, v35, v36);

        v98 = v22;
        goto LABEL_16;
      }

      v31 = *MEMORY[0x1E697ABF8];
      if (*MEMORY[0x1E697ABF8])
      {
        goto LABEL_15;
      }

      goto LABEL_44;
    }

    v32 = MEMORY[0x1E697AC20];
LABEL_14:
    v31 = *v32;
    goto LABEL_15;
  }

  if (!v18)
  {
    v32 = MEMORY[0x1E697AC28];
    goto LABEL_14;
  }

  if (v18 == 1)
  {
    v30 = MEMORY[0x1E697ABE8];
    goto LABEL_9;
  }

  v31 = *MEMORY[0x1E697AC08];
  if (*MEMORY[0x1E697AC08])
  {
    goto LABEL_15;
  }

LABEL_44:
  v96 = 0u;
  v97 = 0u;
  v76 = v29;
  sub_1DF59CB50(&v96, &qword_1ECE436C0, &qword_1DF6393D0);
  sub_1DF59FBA0(v76, v95);

  sub_1DF59CB50(v95, &qword_1ECE436C0, &qword_1DF6393D0);
LABEL_16:
  v37 = *MEMORY[0x1E697AEB0];
  v38 = *MEMORY[0x1E695E4D0];
  if (*(&a9 + 1))
  {
    v39 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v39 = *MEMORY[0x1E695E4C0];
  }

  if (v39)
  {
    type metadata accessor for CFBoolean(0);
    *(&v97 + 1) = v40;
    *&v96 = v39;
    sub_1DF5A27C4(&v96, v95);
    v41 = v37;
    v42 = v39;
    v43 = v98;
    v44 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(v95, v41, v44);

    v98 = v43;
  }

  else
  {
    v45 = v37;
    sub_1DF59FBA0(v45, &v96);

    sub_1DF59CB50(&v96, &qword_1ECE436C0, &qword_1DF6393D0);
  }

  v46 = *MEMORY[0x1E697AEA8];
  if (!*MEMORY[0x1E697AEA8])
  {
    __break(1u);
    return;
  }

  if (!*(&a9 + 1) || a9 == __PAIR128__(0xE000000000000000, 0) || (sub_1DF63394C() & 1) != 0)
  {
    v47 = v46;
    sub_1DF59FBA0(v47, &v96);

    sub_1DF59CB50(&v96, &qword_1ECE436C0, &qword_1DF6393D0);
  }

  else
  {
    *(&v97 + 1) = MEMORY[0x1E69E6158];
    v96 = a9;
    sub_1DF5A27C4(&v96, v95);
    v73 = v46;

    v74 = v98;
    v75 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(v95, v73, v75);

    v98 = v74;
  }

  v48 = *MEMORY[0x1E697B390];
  v93 = *MEMORY[0x1E697B390];
  if (v38)
  {
    type metadata accessor for CFBoolean(0);
    *(&v97 + 1) = v49;
    *&v96 = v38;
    sub_1DF5A27C4(&v96, v95);
    v50 = v48;
    v51 = v38;
    v52 = v98;
    v53 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(v95, v50, v53);

    v98 = v52;
    if (a8)
    {
LABEL_29:
      v54 = *MEMORY[0x1E697ABD0];
      *(&v97 + 1) = MEMORY[0x1E69E6158];
      *&v96 = v91;
      *(&v96 + 1) = a8;
      sub_1DF5A27C4(&v96, v95);

      v55 = v98;
      v56 = swift_isUniquelyReferenced_nonNull_native();
      sub_1DF59F654(v95, v54, v56);
      v57 = v55;
      goto LABEL_32;
    }
  }

  else
  {
    v58 = v48;
    sub_1DF59FBA0(v58, &v96);

    sub_1DF59CB50(&v96, &qword_1ECE436C0, &qword_1DF6393D0);
    if (a8)
    {
      goto LABEL_29;
    }
  }

  v57 = v98;
LABEL_32:
  v59 = sub_1DF62F43C(v57);
  if (v59 != -25299)
  {
    v69 = v59;

    if (!v69)
    {
      return;
    }

LABEL_37:
    sub_1DF63085C();
    swift_allocError();
    *v70 = v69;
    *(v70 + 4) = 0;
    swift_willThrow();
    return;
  }

  v92 = v24;
  v94 = MEMORY[0x1E69E7CC8];
  v60 = *MEMORY[0x1E697ACF0];
  *(&v97 + 1) = MEMORY[0x1E6969080];
  v96 = xmmword_1DF6385D0;
  sub_1DF5A27C4(&v96, v95);
  v61 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF59F654(v95, v60, v61);
  v98 = v57;
  sub_1DF59FBA0(v37, &v96);
  sub_1DF59CB50(&v96, &qword_1ECE436C0, &qword_1DF6393D0);
  v62 = v46;
  sub_1DF59FBA0(v62, &v96);
  sub_1DF59CB50(&v96, &qword_1ECE436C0, &qword_1DF6393D0);
  if (*(&a9 + 1) && v38)
  {
    type metadata accessor for CFBoolean(0);
    *(&v97 + 1) = v63;
    *&v96 = v38;
    sub_1DF5A27C4(&v96, v95);
    v64 = v37;
    v65 = v38;
    v66 = MEMORY[0x1E69E7CC8];
    v67 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(v95, v64, v67);

    v94 = v66;
    v68 = v87;
  }

  else
  {
    v71 = v37;
    sub_1DF59FBA0(v71, v95);

    sub_1DF59CB50(v95, &qword_1ECE436C0, &qword_1DF6393D0);
    v68 = v87;
    if (!*(&a9 + 1))
    {
LABEL_41:
      sub_1DF59FBA0(v62, v95);

      sub_1DF59CB50(v95, &qword_1ECE436C0, &qword_1DF6393D0);
      v72 = v94;
      goto LABEL_46;
    }
  }

  if (a9 == __PAIR128__(0xE000000000000000, 0) || (sub_1DF63394C() & 1) != 0)
  {
    goto LABEL_41;
  }

  *(&v97 + 1) = MEMORY[0x1E69E6158];
  v96 = a9;
  sub_1DF5A27C4(&v96, v95);

  v77 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF59F654(v95, v62, v77);

  v72 = v94;
LABEL_46:
  v78 = MEMORY[0x1E69E6158];
  *(&v97 + 1) = MEMORY[0x1E69E6158];
  *&v96 = v68;
  *(&v96 + 1) = v89;
  sub_1DF5A27C4(&v96, v95);

  v79 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF59F654(v95, v88, v79);
  *(&v97 + 1) = v78;
  v96 = v90;
  sub_1DF5A27C4(&v96, v95);

  v80 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF59F654(v95, v92, v80);
  v81 = v72;
  if (v38)
  {
    type metadata accessor for CFBoolean(0);
    *(&v97 + 1) = v82;
    *&v96 = v38;
    sub_1DF5A27C4(&v96, v95);
    v83 = v93;
    v84 = v38;
    v85 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(v95, v83, v85);
  }

  else
  {
    v86 = v93;
    sub_1DF59FBA0(v86, &v96);

    sub_1DF59CB50(&v96, &qword_1ECE436C0, &qword_1DF6393D0);
    v81 = v72;
  }

  v69 = sub_1DF62F940(v81, v98);

  if (v69)
  {
    goto LABEL_37;
  }
}

unint64_t sub_1DF63085C()
{
  result = qword_1ED8E4A70;
  if (!qword_1ED8E4A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8E4A70);
  }

  return result;
}

uint64_t sub_1DF6308B0(uint64_t a1)
{
  v2 = *MEMORY[0x1E697AFF8];
  v3 = *(a1 + 16);

  if (v3 && (v4 = sub_1DF59F794(v2), (v5 & 1) != 0))
  {
    sub_1DF5A0B98(*(a1 + 56) + 32 * v4, &v37);
    sub_1DF59CB50(&v37, &qword_1ECE436C0, &qword_1DF6393D0);
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
    sub_1DF59CB50(&v37, &qword_1ECE436C0, &qword_1DF6393D0);
    v6 = *MEMORY[0x1E697B008];
    type metadata accessor for CFString(0);
    *(&v38 + 1) = v7;
    *&v37 = v6;
    sub_1DF5A27C4(&v37, v36);
    v8 = v2;
    v9 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(v36, v8, isUniquelyReferenced_nonNull_native);
  }

  if (qword_1ED8E4C60 != -1)
  {
    swift_once();
  }

  v11 = sub_1DF6326AC();
  __swift_project_value_buffer(v11, qword_1ED8E4C68);
  v12 = sub_1DF63268C();
  v13 = sub_1DF63318C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v37 = v15;
    *v14 = 136315138;
    type metadata accessor for CFString(0);
    sub_1DF5A2C28(&qword_1ED8E4BA8, type metadata accessor for CFString, &unk_1DF638164);

    v16 = sub_1DF63284C();
    v18 = v17;

    v19 = sub_1DF59EEC8(v16, v18, &v37);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_1DF59A000, v12, v13, "SecItemDelete() query: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1E12D9D80](v15, -1, -1);
    MEMORY[0x1E12D9D80](v14, -1, -1);
  }

  type metadata accessor for CFString(0);
  sub_1DF5A2C28(&qword_1ED8E4BA8, type metadata accessor for CFString, &unk_1DF638164);

  v20 = sub_1DF63282C();

  v21 = SecItemDelete(v20);

  v22 = sub_1DF63268C();
  v23 = sub_1DF63318C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 67109120;
    *(v24 + 4) = v21;
    _os_log_impl(&dword_1DF59A000, v22, v23, "SecItemDelete() status: %d", v24, 8u);
    MEMORY[0x1E12D9D80](v24, -1, -1);
  }

  if (v21)
  {
    if (qword_1ED8E4A68 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v11, qword_1ED8E6928);
    v25 = sub_1DF63268C();
    v26 = sub_1DF63316C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v37 = v28;
      *v27 = 67109378;
      *(v27 + 4) = v21;
      *(v27 + 8) = 2082;
      v29 = SecCopyErrorMessageString(v21, 0);
      if (v29)
      {
        v30 = v29;
        v31 = sub_1DF63298C();
        v33 = v32;
      }

      else
      {
        v33 = 0xE90000000000003ELL;
        v31 = 0x6E776F6E6B6E753CLL;
      }

      v34 = sub_1DF59EEC8(v31, v33, &v37);

      *(v27 + 10) = v34;
      _os_log_impl(&dword_1DF59A000, v25, v26, "SecItemDelete error: %d [%{public}s]", v27, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1E12D9D80](v28, -1, -1);
      MEMORY[0x1E12D9D80](v27, -1, -1);
    }
  }

  else
  {
  }

  return v21;
}

void sub_1DF630DA4(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8)
{
  sub_1DF59DFB8();
  if (!v8)
  {
    v49 = a5;
    v17 = *MEMORY[0x1E697AE88];
    v18 = MEMORY[0x1E69E6158];
    v53 = MEMORY[0x1E69E6158];
    v51 = a3;
    v52 = a4;
    sub_1DF5A27C4(&v51, v50);

    v19 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(v50, v17, isUniquelyReferenced_nonNull_native);
    v21 = *MEMORY[0x1E697AC30];
    v53 = v18;
    v51 = a1;
    v52 = a2;
    sub_1DF5A27C4(&v51, v50);

    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF59F654(v50, v21, v22);
    v54 = v19;
    v23 = *MEMORY[0x1E697B390];
    v24 = *MEMORY[0x1E695E4D0];
    if (*MEMORY[0x1E695E4D0])
    {
      type metadata accessor for CFBoolean(0);
      v26 = v25;
      v53 = v25;
      v51 = v24;
      sub_1DF5A27C4(&v51, v50);
      v27 = v23;
      v28 = v24;
      v29 = swift_isUniquelyReferenced_nonNull_native();
      sub_1DF59F654(v50, v27, v29);

      v54 = v19;
      v30 = *MEMORY[0x1E697AEB0];
      if (a8)
      {
        v53 = v26;
        v51 = v28;
        sub_1DF5A27C4(&v51, v50);
        v31 = v28;
        v32 = v30;
        v33 = swift_isUniquelyReferenced_nonNull_native();
        sub_1DF59F654(v50, v32, v33);

        v34 = v49;
        v54 = v19;
        v35 = *MEMORY[0x1E697AEA8];
        if (!*MEMORY[0x1E697AEA8])
        {
          goto LABEL_20;
        }

LABEL_10:
        if ((a7 || a8 != 0xE000000000000000) && (sub_1DF63394C() & 1) == 0)
        {
          v53 = MEMORY[0x1E69E6158];
          v51 = a7;
          v52 = a8;
          sub_1DF5A27C4(&v51, v50);
          v44 = v35;

          v45 = v54;
          v46 = swift_isUniquelyReferenced_nonNull_native();
          sub_1DF59F654(v50, v44, v46);

          v54 = v45;
          if (a6)
          {
            goto LABEL_14;
          }

          goto LABEL_16;
        }

LABEL_13:
        v39 = v35;
        sub_1DF59FBA0(v39, v50);

        sub_1DF59CB50(v50, &qword_1ECE436C0, &qword_1DF6393D0);
        if (a6)
        {
LABEL_14:
          v40 = *MEMORY[0x1E697ABD0];
          v53 = MEMORY[0x1E69E6158];
          v51 = v34;
          v52 = a6;
          sub_1DF5A27C4(&v51, v50);

          v41 = v54;
          v42 = swift_isUniquelyReferenced_nonNull_native();
          sub_1DF59F654(v50, v40, v42);
          v43 = v41;
          goto LABEL_17;
        }

LABEL_16:
        v43 = v54;
LABEL_17:
        v47 = sub_1DF6308B0(v43);

        if (v47)
        {
          sub_1DF63085C();
          swift_allocError();
          *v48 = v47;
          *(v48 + 4) = 0;
          swift_willThrow();
        }

        return;
      }

      v37 = 1;
    }

    else
    {
      v36 = v23;
      sub_1DF59FBA0(v36, v50);

      sub_1DF59CB50(v50, &qword_1ECE436C0, &qword_1DF6393D0);
      v30 = *MEMORY[0x1E697AEB0];
      v37 = a8 == 0;
    }

    v34 = v49;
    v38 = v30;
    sub_1DF59FBA0(v38, v50);

    sub_1DF59CB50(v50, &qword_1ECE436C0, &qword_1DF6393D0);
    v35 = *MEMORY[0x1E697AEA8];
    if (!*MEMORY[0x1E697AEA8])
    {
LABEL_20:
      __break(1u);
      return;
    }

    if (v37)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }
}

void *sub_1DF6311B4(char a1, uint64_t a2, uint64_t a3)
{
  sub_1DF59DFB8();
  if (v3)
  {
    return v4;
  }

  v8 = *MEMORY[0x1E697B260];
  v9 = *MEMORY[0x1E697B268];
  type metadata accessor for CFString(0);
  *(&v76 + 1) = v10;
  *&v75 = v9;
  sub_1DF5A27C4(&v75, v74);
  v11 = v9;
  v12 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF59F654(v74, v8, isUniquelyReferenced_nonNull_native);
  v77 = v12;
  v14 = *MEMORY[0x1E697B390];
  v15 = *MEMORY[0x1E695E4D0];
  if (!*MEMORY[0x1E695E4D0])
  {
    v23 = v14;
    sub_1DF59FBA0(v23, &v75);

    sub_1DF59CB50(&v75, &qword_1ECE436C0, &qword_1DF6393D0);
    if (a3)
    {
      goto LABEL_4;
    }

LABEL_6:
    v24 = [objc_opt_self() mainBundle];
    v25 = [v24 bundleIdentifier];

    if (v25)
    {
      v26 = sub_1DF63298C();
      v28 = v27;
    }

    else
    {
      v28 = 0x80000001DF636250;
      v26 = 0xD000000000000019;
    }

    v29 = SecTaskCreateFromSelf(0);
    if (v29)
    {
      v30 = v29;
      v31 = sub_1DF63295C();
      v32 = SecTaskCopyValueForEntitlement(v30, v31, 0);

      if (v32)
      {
        *(&v76 + 1) = swift_getObjectType();

        *&v75 = v32;
        goto LABEL_16;
      }

      v75 = 0u;
      v76 = 0u;

      if (*(&v76 + 1))
      {
LABEL_16:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE425C0, &qword_1DF637D10);
        if (swift_dynamicCast())
        {
          v33 = v74[0];
LABEL_19:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42918, &qword_1DF638908);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1DF638990;
          *(inited + 32) = v26;
          *(inited + 40) = v28;
          *&v75 = inited;
          sub_1DF62A328(v33);
          v35 = sub_1DF5FCC04(v75);

          if (!*(v35 + 16))
          {

            v21 = v77;
            goto LABEL_8;
          }

          v72 = a1;
          v36 = 0;
          v37 = v35 + 56;
          v38 = 1 << *(v35 + 32);
          v39 = -1;
          if (v38 < 64)
          {
            v39 = ~(-1 << v38);
          }

          v40 = v39 & *(v35 + 56);
          v70 = (v38 + 63) >> 6;
          v69 = MEMORY[0x1E69E7CC0];
          v73 = *MEMORY[0x1E697ABD0];
          v71 = v35;
          while (1)
          {
            v41 = v77;
            v42 = v36;
            if (!v40)
            {
              while (1)
              {
                v36 = v42 + 1;
                if (__OFADD__(v42, 1))
                {
                  break;
                }

                if (v36 >= v70)
                {
                  goto LABEL_52;
                }

                v40 = *(v37 + 8 * v36);
                ++v42;
                if (v40)
                {
                  goto LABEL_27;
                }
              }

              __break(1u);
LABEL_56:
              __break(1u);
LABEL_57:
              __break(1u);
LABEL_58:
              __break(1u);
LABEL_59:
              __break(1u);
LABEL_60:
              result = sub_1DF6339EC();
              __break(1u);
              return result;
            }

LABEL_27:
            v43 = (*(v35 + 48) + ((v36 << 10) | (16 * __clz(__rbit64(v40)))));
            v44 = *v43;
            v45 = v43[1];
            *(&v76 + 1) = MEMORY[0x1E69E6158];
            *&v75 = v44;
            *(&v75 + 1) = v45;
            sub_1DF5A27C4(&v75, v74);

            v46 = swift_isUniquelyReferenced_nonNull_native();
            v48 = sub_1DF59F794(v73);
            v49 = v41[2];
            v50 = (v47 & 1) == 0;
            v51 = v49 + v50;
            if (__OFADD__(v49, v50))
            {
              goto LABEL_56;
            }

            v52 = v47;
            if (v41[3] >= v51)
            {
              if (v46)
              {
                v55 = v41;
                if ((v47 & 1) == 0)
                {
                  goto LABEL_31;
                }
              }

              else
              {
                sub_1DF5A2AA8();
                v55 = v41;
                if ((v52 & 1) == 0)
                {
                  goto LABEL_31;
                }
              }
            }

            else
            {
              sub_1DF59F8AC(v51, v46);
              v53 = sub_1DF59F794(v73);
              if ((v52 & 1) != (v54 & 1))
              {
                goto LABEL_60;
              }

              v48 = v53;
              v55 = v41;
              if ((v52 & 1) == 0)
              {
LABEL_31:
                sub_1DF5A29F8(v48, v73, v74, v55);
                v56 = v73;
                goto LABEL_35;
              }
            }

            v57 = (v55[7] + 32 * v48);
            __swift_destroy_boxed_opaque_existential_1(v57);
            sub_1DF5A27C4(v74, v57);
LABEL_35:
            v40 &= v40 - 1;
            v58 = sub_1DF59FC40(v55, v72 & 1);

            v59 = *(v58 + 16);
            v60 = v69[2];
            v61 = v60 + v59;
            if (__OFADD__(v60, v59))
            {
              goto LABEL_57;
            }

            v62 = swift_isUniquelyReferenced_nonNull_native();
            if ((v62 & 1) == 0 || v61 > v69[3] >> 1)
            {
              if (v60 <= v61)
              {
                v63 = v60 + v59;
              }

              else
              {
                v63 = v60;
              }

              v69 = sub_1DF5C16F8(v62, v63, 1, v69);
            }

            if (*(v58 + 16))
            {
              v68 = (v69[3] >> 1) - v69[2];
              type metadata accessor for Keychain.Item(0);
              if (v68 < v59)
              {
                goto LABEL_58;
              }

              swift_arrayInitWithCopy();

              v35 = v71;
              if (v59)
              {
                v64 = v69[2];
                v65 = __OFADD__(v64, v59);
                v66 = v64 + v59;
                if (v65)
                {
                  goto LABEL_59;
                }

                v69[2] = v66;
              }
            }

            else
            {

              v35 = v71;
              if (v59)
              {
                __break(1u);
LABEL_52:

                return v69;
              }
            }
          }
        }

LABEL_18:
        v33 = MEMORY[0x1E69E7CC0];
        goto LABEL_19;
      }
    }

    else
    {
      v75 = 0u;
      v76 = 0u;
    }

    sub_1DF59CB50(&v75, &qword_1ECE436C0, &qword_1DF6393D0);
    goto LABEL_18;
  }

  type metadata accessor for CFBoolean(0);
  *(&v76 + 1) = v16;
  *&v75 = v15;
  sub_1DF5A27C4(&v75, v74);
  v17 = v14;
  v18 = v15;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF59F654(v74, v17, v19);

  v77 = v12;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_4:
  v20 = *MEMORY[0x1E697ABD0];
  *(&v76 + 1) = MEMORY[0x1E69E6158];
  *&v75 = a2;
  *(&v75 + 1) = a3;
  sub_1DF5A27C4(&v75, v74);

  v21 = v77;
  v22 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF59F654(v74, v20, v22);
LABEL_8:
  v4 = sub_1DF59FC40(v21, a1 & 1);

  return v4;
}

void *sub_1DF631A34(char a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Keychain.Item(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = (&v28[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1DF6311B4(a1, a2, a3);
  if (!v3)
  {
    v28[6] = 0;
    v12 = v11[2];
    if (v12)
    {
      v28[0] = MEMORY[0x1E69E7CC0];
      v13 = v11;
      sub_1DF5DB1D8(0, v12, 0);
      v14 = v28[0];
      v15 = *(v8 + 80);
      v27 = v13;
      v16 = v13 + ((v15 + 32) & ~v15);
      v17 = *(v8 + 72);
      do
      {
        sub_1DF5A39C0(v16, v10);
        v19 = v10[2];
        v18 = v10[3];

        sub_1DF5A3A24(v10);
        v28[0] = v14;
        v21 = *(v14 + 16);
        v20 = *(v14 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1DF5DB1D8((v20 > 1), v21 + 1, 1);
          v14 = v28[0];
        }

        *(v14 + 16) = v21 + 1;
        v22 = v14 + 16 * v21;
        *(v22 + 32) = v19;
        *(v22 + 40) = v18;
        v16 += v17;
        --v12;
      }

      while (v12);
    }

    else
    {

      v14 = MEMORY[0x1E69E7CC0];
    }

    v23 = sub_1DF5FCC04(v14);

    v24 = *(v23 + 16);
    if (!v24)
    {
      goto LABEL_12;
    }

    v10 = sub_1DF5EF5A0(*(v23 + 16), 0);
    v25 = sub_1DF5F1DE4(v28, v10 + 4, v24, v23);
    sub_1DF5DF418(v28[0]);
    if (v25 != v24)
    {
      __break(1u);
LABEL_12:

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v10;
}

void *sub_1DF631C60(char a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Keychain.Item(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = (&v28[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1DF6311B4(a1, a2, a3);
  if (!v3)
  {
    v28[6] = 0;
    v12 = v11[2];
    if (v12)
    {
      v28[0] = MEMORY[0x1E69E7CC0];
      v13 = v11;
      sub_1DF5DB1D8(0, v12, 0);
      v14 = v28[0];
      v15 = *(v8 + 80);
      v27 = v13;
      v16 = v13 + ((v15 + 32) & ~v15);
      v17 = *(v8 + 72);
      do
      {
        sub_1DF5A39C0(v16, v10);
        v19 = v10[4];
        v18 = v10[5];

        sub_1DF5A3A24(v10);
        v28[0] = v14;
        v21 = *(v14 + 16);
        v20 = *(v14 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1DF5DB1D8((v20 > 1), v21 + 1, 1);
          v14 = v28[0];
        }

        *(v14 + 16) = v21 + 1;
        v22 = v14 + 16 * v21;
        *(v22 + 32) = v19;
        *(v22 + 40) = v18;
        v16 += v17;
        --v12;
      }

      while (v12);
    }

    else
    {

      v14 = MEMORY[0x1E69E7CC0];
    }

    v23 = sub_1DF5FCC04(v14);

    v24 = *(v23 + 16);
    if (!v24)
    {
      goto LABEL_12;
    }

    v10 = sub_1DF5EF5A0(*(v23 + 16), 0);
    v25 = sub_1DF5F1DE4(v28, v10 + 4, v24, v23);
    sub_1DF5DF418(v28[0]);
    if (v25 != v24)
    {
      __break(1u);
LABEL_12:

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v10;
}

unint64_t sub_1DF631E90()
{
  result = qword_1ECE43808;
  if (!qword_1ECE43808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43808);
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Keychain.Error(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Keychain.Error(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_1DF631F54(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DF631F70(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}