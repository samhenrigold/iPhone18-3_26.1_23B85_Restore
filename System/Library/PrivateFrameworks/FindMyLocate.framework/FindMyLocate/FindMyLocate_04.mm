uint64_t sub_1B801D314()
{
  v26 = v0;
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
    v4 = *(v0 + 216);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v25 = v6;
    *v5 = 136446723;
    *(v5 + 4) = sub_1B7FB84FC(0xD00000000000004ALL, 0x80000001B80CCE80, &v25);
    *(v5 + 12) = 2160;
    *(v5 + 14) = 1752392040;
    *(v5 + 22) = 2081;
    v7 = MEMORY[0x1B8CB7B30](v4, &type metadata for Handle);
    v9 = sub_1B7FB84FC(v7, v8, &v25);

    *(v5 + 24) = v9;
    _os_log_impl(&dword_1B7FB5000, v2, v3, "%{public}s for handles: %{private,mask.hash}s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v6, -1, -1);
    MEMORY[0x1B8CB8970](v5, -1, -1);
  }

  v10 = *(v0 + 70);
  if (v10 == 2)
  {
    v11 = sub_1B80C981C();
    LOBYTE(v10) = *(v0 + 70);
    v23 = v11;
    v24 = 2;
  }

  else
  {
    v23 = 1;
    v24 = 1;
  }

  v12 = *(v0 + 125);
  v13 = *(v0 + 71);
  v15 = *(v0 + 208);
  v14 = *(v0 + 216);
  v16 = *(v0 + 192);
  v17 = *(v0 + 200);
  v18 = *(v0 + 69);

  *(v0 + 16) = v14;
  *(v0 + 24) = v10;
  *(v0 + 32) = v18;
  *(v0 + 40) = v16;
  *(v0 + 48) = v17;
  v19 = *(v0 + 32);
  *(v0 + 72) = *(v0 + 16);
  *(v0 + 56) = v15;
  *(v0 + 64) = v23 & 1;
  *(v0 + 65) = v24;
  *(v0 + 66) = v12;
  *(v0 + 67) = 0;
  *(v0 + 68) = v13;
  *(v0 + 88) = v19;
  *(v0 + 104) = *(v0 + 48);
  *(v0 + 117) = *(v0 + 61);
  v20 = swift_task_alloc();
  *(v0 + 240) = v20;
  *v20 = v0;
  v20[1] = sub_1B801D634;
  v21 = *(v0 + 224);

  return sub_1B80351B0(v0 + 72, v21);
}

uint64_t sub_1B801D634(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 248) = v1;

  if (v1)
  {
    v5 = *(v4 + 232);
    v6 = sub_1B801D810;
  }

  else
  {
    *(v4 + 256) = a1;
    sub_1B7FD0404(v4 + 16);
    v6 = sub_1B801D770;
    v5 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1B801D770()
{
  v0[21] = v0[32];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66118, &qword_1B80D2FD8);
  sub_1B80C928C();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B801D810()
{
  sub_1B7FD0404(v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1B801D878, 0, 0);
}

uint64_t sub_1B801D878()
{
  v1 = v0[31];
  v0[20] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66118, &qword_1B80D2FD8);
  sub_1B80C927C();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B801D928(uint64_t a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = *v1;
  *(v2 + 80) = *a1;
  *(v2 + 32) = *(a1 + 8);
  *(v2 + 48) = *(a1 + 24);
  return MEMORY[0x1EEE6DFA0](sub_1B801D988, v1, 0);
}

uint64_t sub_1B801D988()
{
  v1 = *(v0 + 48);
  v10 = *(v0 + 32);
  v2 = *(v0 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = sub_1B7FCD170(&unk_1ED8DD838, _s18LocationConnectionCMa, &unk_1B80D2CA0);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v2;
  *(v6 + 32) = v10;
  *(v6 + 48) = v1;
  *(v6 + 56) = v4;
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_1B801DAE4;
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v7, v3, v5, 0xD000000000000020, 0x80000001B80CCDD0, sub_1B8034278, v6, v8);
}

uint64_t sub_1B801DAE4()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 16);
    v4 = sub_1B801DC0C;
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = sub_1B8011C90;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B801DC0C()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_1B801DC70(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a5;
  v26 = a7;
  v24 = a4;
  v23 = a3;
  v22[0] = a2;
  v9 = sub_1B80C8E9C();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v22 - v13;
  v22[1] = sub_1B80C8A0C();
  v15 = swift_allocObject();
  swift_weakInit();
  (*(v11 + 16))(v14, a1, v10);
  v16 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v17 = (v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  (*(v11 + 32))(v18 + v16, v14, v10);
  v19 = v18 + v17;
  *v19 = v23;
  v20 = v25;
  *(v19 + 8) = v24;
  *(v19 + 16) = v20;
  *(v19 + 24) = a6;
  *(v18 + ((v17 + 39) & 0xFFFFFFFFFFFFFFF8)) = v26;

  _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
  sub_1B80C89EC();

  sub_1B80C8A3C();

  return result;
}

uint64_t sub_1B801DEE4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 96) = a5;
  *(v6 + 104) = a6;
  *(v6 + 80) = a2;
  *(v6 + 88) = a4;
  *(v6 + 128) = a3;
  *(v6 + 72) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B801DF10, 0, 0);
}

uint64_t sub_1B801DF10()
{
  v13 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 112) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 104);
    *(v0 + 16) = *(v0 + 128);
    *(v0 + 24) = *(v0 + 88);
    *(v0 + 40) = v2;

    return MEMORY[0x1EEE6DFA0](sub_1B801E154, Strong, 0);
  }

  else
  {
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v3 = sub_1B80C900C();
    __swift_project_value_buffer(v3, qword_1ED8DDF28);
    v4 = sub_1B80C8FEC();
    v5 = sub_1B80C941C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_1B7FB84FC(0xD000000000000020, 0x80000001B80CCDD0, &v12);
      _os_log_impl(&dword_1B7FB5000, v4, v5, "%{public}s - LocationConnection is nil, during enqueued WorkItem", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x1B8CB8970](v7, -1, -1);
      MEMORY[0x1B8CB8970](v6, -1, -1);
    }

    sub_1B8010040();
    v8 = swift_allocError();
    *v9 = 10;
    *(v0 + 16) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
    sub_1B80C927C();
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1B801E154()
{
  sub_1B801E318((v0 + 16));
  *(v0 + 120) = 0;

  return MEMORY[0x1EEE6DFA0](sub_1B801E1E4, 0, 0);
}

uint64_t sub_1B801E1E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  sub_1B80C928C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B801E26C()
{
  v1 = v0[15];
  v0[2] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  sub_1B80C927C();

  v3 = v0[1];

  return v3();
}

void sub_1B801E318(char *a1)
{
  v2 = v1;
  v42 = *a1;
  v40 = *(a1 + 2);
  v41 = *(a1 + 1);
  v45 = *(a1 + 3);
  if (qword_1ED8DD848 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v3 = sub_1B80C900C();
    __swift_project_value_buffer(v3, qword_1ED8DDF28);
    v4 = sub_1B80C8FEC();
    v5 = sub_1B80C941C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v46 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_1B7FB84FC(0xD000000000000021, 0x80000001B80CCE00, &v46);
      _os_log_impl(&dword_1B7FB5000, v4, v5, "%{public}s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x1B8CB8970](v7, -1, -1);
      MEMORY[0x1B8CB8970](v6, -1, -1);
    }

    sub_1B802AB10();
    if ((v8 & 1) == 0)
    {
      break;
    }

    v9 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_handlesForLocationRefreshing;
    swift_beginAccess();
    v10 = *(v2 + v9);
    v11 = v10 + 64;
    v12 = 1 << *(v10 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v10 + 64);
    v15 = (v12 + 63) >> 6;
    v39 = v10;

    v16 = 0;
    v38 = v11;
    v37 = v15;
    while (v14)
    {
LABEL_14:
      v20 = __clz(__rbit64(v14)) | (v16 << 6);
      v21 = *(*(v39 + 48) + v20);
      v22 = *(*(v39 + 56) + 8 * v20);
      swift_bridgeObjectRetain_n();
      v23 = sub_1B80C8FEC();
      v24 = sub_1B80C941C();

      if (os_log_type_enabled(v23, v24))
      {
        v43 = v21;
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v46 = v26;
        *v25 = 136315394;
        sub_1B8032C04();
        v27 = sub_1B80C93BC();
        v29 = sub_1B7FB84FC(v27, v28, &v46);

        *(v25 + 4) = v29;
        *(v25 + 12) = 2048;
        *(v25 + 14) = v43;
        _os_log_impl(&dword_1B7FB5000, v23, v24, "Retry refreshing locations for: %s. Priority %ld", v25, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v26);
        MEMORY[0x1B8CB8970](v26, -1, -1);
        v30 = v25;
        v21 = v43;
        MEMORY[0x1B8CB8970](v30, -1, -1);
      }

      v31 = *(v22 + 16);
      if (v31)
      {
        v2 = v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66100, &qword_1B80DACB0);
        v32 = swift_allocObject();
        v33 = _swift_stdlib_malloc_size(v32);
        *(v32 + 16) = v31;
        *(v32 + 24) = 2 * ((v33 - 32) / 176);
        v44 = sub_1B808D510(&v46, (v32 + 32), v31, v22);
        v34 = v46;

        sub_1B80343D8(v34);
        if (v44 != v31)
        {
          goto LABEL_28;
        }
      }

      else
      {

        v32 = MEMORY[0x1E69E7CC0];
      }

      v35 = 1;
      if (v21 == 2)
      {
        v36 = 2;
      }

      else
      {
        v36 = 1;
      }

      if (v21 == 2)
      {
        v35 = sub_1B80C981C();
      }

      v14 &= v14 - 1;

      v17 = v35 & 1;
      v18 = swift_allocObject();
      swift_weakInit();
      v2 = swift_allocObject();
      *(v2 + 16) = v18;
      *(v2 + 24) = v32;
      *(v2 + 32) = v21;
      *(v2 + 33) = *v48;
      *(v2 + 36) = *&v48[3];
      *(v2 + 40) = v42;
      *(v2 + 41) = v47[0];
      *(v2 + 44) = *(v47 + 3);
      *(v2 + 48) = v41;
      *(v2 + 56) = v40;
      *(v2 + 64) = v45;
      *(v2 + 72) = v17;
      *(v2 + 73) = v36;
      *(v2 + 74) = 259;
      *(v2 + 76) = 0;

      sub_1B80C8A2C();

      v11 = v38;
      v15 = v37;
    }

    while (1)
    {
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v19 >= v15)
      {

        return;
      }

      v14 = *(v11 + 8 * v19);
      ++v16;
      if (v14)
      {
        v16 = v19;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }
}

uint64_t sub_1B801E8AC(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B801E8CC, v1, 0);
}

uint64_t sub_1B801E8CC()
{
  v10 = v0;
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  v0[10] = __swift_project_value_buffer(v1, qword_1ED8DDF28);
  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B7FB84FC(0xD000000000000038, 0x80000001B80CCBB0, &v9);
    _os_log_impl(&dword_1B7FB5000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B8CB8970](v5, -1, -1);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_1B801EA80;
  v7 = v0[8];

  return sub_1B8034910(v7);
}

uint64_t sub_1B801EA80(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[12] = a1;
  v3[13] = v1;

  if (v1)
  {
    v5 = v4[1];

    return v5();
  }

  else
  {
    v7 = v3[9];

    return MEMORY[0x1EEE6DFA0](sub_1B801EBC8, v7, 0);
  }
}

uint64_t sub_1B801EBC8()
{
  v35 = v0;

  v1 = sub_1B80C8FEC();
  v2 = sub_1B80C941C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v34[0] = v4;
    *v3 = 141558275;
    *(v3 + 4) = 1752392040;
    *(v3 + 12) = 2081;
    type metadata accessor for Location(0);
    sub_1B8032C04();
    v5 = sub_1B80C902C();
    v7 = sub_1B7FB84FC(v5, v6, v34);

    *(v3 + 14) = v7;
    _os_log_impl(&dword_1B7FB5000, v1, v2, "Received background proactive locations: %{private,mask.hash}s", v3, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x1B8CB8970](v4, -1, -1);
    MEMORY[0x1B8CB8970](v3, -1, -1);
  }

  v8 = v0[9];
  v9 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_handlesForLocationRefreshing;
  swift_beginAccess();
  v10 = *(v8 + v9);
  if (*(v10 + 16) && (v11 = sub_1B7FDA504(3), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CD0];
  }

  v14 = v0[12];

  v15 = sub_1B80335D8(v14, v13);
  v0[14] = v15;

  v16 = sub_1B80C8FEC();
  v17 = sub_1B80C941C();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v34[0] = v19;
    *v18 = 136315394;
    sub_1B801F398(v13);
    v21 = v20;

    v22 = MEMORY[0x1B8CB7B30](v21, MEMORY[0x1E69E6158]);
    v24 = v23;

    v25 = sub_1B7FB84FC(v22, v24, v34);

    *(v18 + 4) = v25;
    *(v18 + 12) = 2080;
    type metadata accessor for Location(0);
    sub_1B8032C04();
    v26 = sub_1B80C902C();
    v28 = sub_1B7FB84FC(v26, v27, v34);

    *(v18 + 14) = v28;
    _os_log_impl(&dword_1B7FB5000, v16, v17, "backgroundProactiveHandles: %s. locationsOfInterest: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v19, -1, -1);
    MEMORY[0x1B8CB8970](v18, -1, -1);
  }

  else
  {
  }

  v29 = v0[12];
  v30 = v0[9];
  v31 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_locationForHandles;
  swift_beginAccess();
  *(v30 + v31) = v29;

  v32 = swift_task_alloc();
  v0[15] = v32;
  *v32 = v0;
  v32[1] = sub_1B801EFD8;

  return sub_1B801F5C4(v15);
}

uint64_t sub_1B801EFD8()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 72);
  if (v0)
  {
    v4 = sub_1B801F168;
  }

  else
  {
    v4 = sub_1B801F104;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B801F104()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B801F168()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B801F1CC(void *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1B80C993C();
  sub_1B80C90FC();
  sub_1B80C911C();

  v3 = sub_1B80C997C();
  v4 = -1 << *(a2 + 32);
  v5 = v3 & ~v4;
  if (((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return 0;
  }

  v6 = ~v4;
  while (1)
  {
    v7 = (*(a2 + 48) + 176 * v5);
    v9 = v7[1];
    v8 = v7[2];
    v23[0] = *v7;
    v23[1] = v9;
    v23[2] = v8;
    v10 = v7[6];
    v12 = v7[3];
    v11 = v7[4];
    v23[5] = v7[5];
    v23[6] = v10;
    v23[3] = v12;
    v23[4] = v11;
    v13 = v7[10];
    v15 = v7[7];
    v14 = v7[8];
    v23[9] = v7[9];
    v23[10] = v13;
    v23[7] = v15;
    v23[8] = v14;
    v16 = sub_1B80C90FC();
    v18 = v17;
    if (v16 == sub_1B80C90FC() && v18 == v19)
    {
      break;
    }

    v20 = sub_1B80C981C();
    sub_1B7FC8DA4(v23, v22);

    sub_1B7FCAD28(v23);
    if (v20)
    {
      return 1;
    }

    v5 = (v5 + 1) & v6;
    if (((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B7FC8DA4(v23, v22);

  sub_1B7FCAD28(v23);
  return 1;
}

void sub_1B801F398(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1B7FCF988(0, v1, 0);
    v3 = a1 + 56;
    v4 = sub_1B80C94CC();
    v5 = 0;
    v20 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v21 = *(a1 + 36);
      v8 = (*(a1 + 48) + 176 * v4);
      v9 = v8[1];
      v22 = *v8;
      v10 = *(v23 + 16);
      v11 = *(v23 + 24);

      if (v10 >= v11 >> 1)
      {
        sub_1B7FCF988((v11 > 1), v10 + 1, 1);
      }

      *(v23 + 16) = v10 + 1;
      v12 = v23 + 16 * v10;
      *(v12 + 32) = v22;
      *(v12 + 40) = v9;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_22;
      }

      v3 = a1 + 56;
      v13 = *(a1 + 56 + 8 * v7);
      if ((v13 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v21 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v14 = v13 & (-2 << (v4 & 0x3F));
      if (v14)
      {
        v6 = __clz(__rbit64(v14)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v7 << 6;
        v16 = v7 + 1;
        v17 = (a1 + 64 + 8 * v7);
        while (v16 < (v6 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            sub_1B8033798(v4, v21, 0);
            v6 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        sub_1B8033798(v4, v21, 0);
      }

LABEL_4:
      ++v5;
      v4 = v6;
      if (v5 == v20)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t sub_1B801F5C4(uint64_t a1)
{
  v2[171] = v1;
  v2[170] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  v2[172] = swift_task_alloc();
  v2[173] = swift_task_alloc();
  v3 = sub_1B80C8E9C();
  v2[174] = v3;
  v2[175] = *(v3 - 8);
  v2[176] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D60, &unk_1B80DC530);
  v2[177] = swift_task_alloc();
  v4 = type metadata accessor for Location(0);
  v2[178] = v4;
  v5 = *(v4 - 8);
  v2[179] = v5;
  v2[180] = *(v5 + 64);
  v2[181] = swift_task_alloc();
  v2[182] = swift_task_alloc();
  v2[183] = swift_task_alloc();
  v2[184] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660C8, &qword_1B80D2E88);
  v2[185] = swift_task_alloc();
  v2[186] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B801F7D0, v1, 0);
}

uint64_t sub_1B801F7D0()
{
  v115 = v0;
  if (qword_1ED8DD848 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v1 = sub_1B80C900C();
    *(v0 + 1496) = __swift_project_value_buffer(v1, qword_1ED8DDF28);

    v2 = sub_1B80C8FEC();
    v3 = sub_1B80C941C();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *&v114[0] = v5;
      *v4 = 136446723;
      *(v4 + 4) = sub_1B7FB84FC(0xD000000000000017, 0x80000001B80CCEF0, v114);
      *(v4 + 12) = 2160;
      *(v4 + 14) = 1752392040;
      *(v4 + 22) = 2081;
      sub_1B8032C04();
      v6 = sub_1B80C902C();
      v8 = sub_1B7FB84FC(v6, v7, v114);

      *(v4 + 24) = v8;
      _os_log_impl(&dword_1B7FB5000, v2, v3, "%{public}s with locations: %{private,mask.hash}s", v4, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v5, -1, -1);
      MEMORY[0x1B8CB8970](v4, -1, -1);
    }

    v9 = *(v0 + 1368);
    v10 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_handlesForLocationRefreshing;
    swift_beginAccess();
    v11 = *(v9 + v10);
    v12 = *(v11 + 64);
    *&v114[0] = MEMORY[0x1E69E7CC0];
    v13 = -1;
    v14 = -1 << *(v11 + 32);
    if (-v14 < 64)
    {
      v13 = ~(-1 << -v14);
    }

    v15 = v13 & v12;
    v16 = (63 - v14) >> 6;
    swift_bridgeObjectRetain_n();
    v17 = 0;
    if (v15)
    {
      goto LABEL_12;
    }

    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_56;
      }

      if (v18 >= v16)
      {
        break;
      }

      v15 = *(v11 + 64 + 8 * v18);
      ++v17;
      if (v15)
      {
        v17 = v18;
        do
        {
LABEL_12:
          v15 &= v15 - 1;

          sub_1B808BF58(v19);
        }

        while (v15);
        continue;
      }
    }

    v20 = *(v0 + 1360);

    *(v0 + 1504) = sub_1B808D774(*&v114[0]);

    v21 = *(v20 + 32);
    *(v0 + 1568) = v21;
    v22 = 1 << v21;
    v23 = v22 < 64 ? ~(-1 << v22) : -1;
    v24 = v23 & *(v20 + 64);
    *(v0 + 1512) = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_locationForHandles;

    swift_beginAccess();
    v25 = 0;
    if (v24)
    {
      break;
    }

LABEL_21:
    v30 = ((1 << *(v0 + 1568)) + 63) >> 6;
    if (v30 <= (v25 + 1))
    {
      v31 = v25 + 1;
    }

    else
    {
      v31 = ((1 << *(v0 + 1568)) + 63) >> 6;
    }

    v32 = v31 - 1;
    while (1)
    {
      v33 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v33 >= v30)
      {
        v92 = *(v0 + 1480);
        v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
        (*(*(v93 - 8) + 56))(v92, 1, 1, v93);
        v24 = 0;
        v25 = v32;
        goto LABEL_30;
      }

      v29 = *(v0 + 1360);
      v24 = *(v29 + 8 * v33 + 64);
      ++v25;
      if (v24)
      {
        v25 = v33;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
  }

  while (1)
  {
    v29 = *(v0 + 1360);
LABEL_29:
    v34 = *(v0 + 1480);
    v35 = *(v0 + 1472);
    v36 = *(v0 + 1432);
    v37 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v38 = v37 | (v25 << 6);
    v39 = (*(v29 + 48) + 176 * v38);
    v41 = v39[1];
    v40 = v39[2];
    *(v0 + 192) = *v39;
    *(v0 + 208) = v41;
    *(v0 + 224) = v40;
    v42 = v39[6];
    v44 = v39[3];
    v43 = v39[4];
    *(v0 + 272) = v39[5];
    *(v0 + 288) = v42;
    *(v0 + 240) = v44;
    *(v0 + 256) = v43;
    v45 = v39[10];
    v47 = v39[7];
    v46 = v39[8];
    *(v0 + 336) = v39[9];
    *(v0 + 352) = v45;
    *(v0 + 304) = v47;
    *(v0 + 320) = v46;
    sub_1B80337A4(*(v29 + 56) + *(v36 + 72) * v38, v35, type metadata accessor for Location);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
    v49 = *(v48 + 48);
    v51 = *(v0 + 208);
    v50 = *(v0 + 224);
    *v34 = *(v0 + 192);
    v34[1] = v51;
    v34[2] = v50;
    v52 = *(v0 + 240);
    v53 = *(v0 + 256);
    v54 = *(v0 + 288);
    v34[5] = *(v0 + 272);
    v34[6] = v54;
    v34[3] = v52;
    v34[4] = v53;
    v55 = *(v0 + 304);
    v56 = *(v0 + 320);
    v57 = *(v0 + 352);
    v34[9] = *(v0 + 336);
    v34[10] = v57;
    v34[7] = v55;
    v34[8] = v56;
    sub_1B80344D4(v35, v34 + v49, type metadata accessor for Location);
    (*(*(v48 - 8) + 56))(v34, 0, 1, v48);
    sub_1B7FC8DA4(v0 + 192, v0 + 368);
LABEL_30:
    *(v0 + 1528) = v25;
    *(v0 + 1520) = v24;
    v58 = *(v0 + 1488);
    sub_1B7FC8F2C(*(v0 + 1480), v58, &qword_1EBA660C8, &qword_1B80D2E88);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
    v60 = (*(*(v59 - 8) + 48))(v58, 1, v59);
    v61 = *(v0 + 1488);
    if (v60 == 1)
    {
      break;
    }

    v62 = *(v0 + 1512);
    v63 = *(v0 + 1464);
    v64 = *(v0 + 1368);
    v66 = v61[1];
    v65 = v61[2];
    *(v0 + 16) = *v61;
    *(v0 + 32) = v66;
    *(v0 + 48) = v65;
    v67 = v61[6];
    v69 = v61[3];
    v68 = v61[4];
    *(v0 + 96) = v61[5];
    *(v0 + 112) = v67;
    *(v0 + 64) = v69;
    *(v0 + 80) = v68;
    v70 = v61[10];
    v72 = v61[7];
    v71 = v61[8];
    *(v0 + 160) = v61[9];
    *(v0 + 176) = v70;
    *(v0 + 128) = v72;
    *(v0 + 144) = v71;
    sub_1B80344D4(v61 + *(v59 + 48), v63, type metadata accessor for Location);
    v73 = *(v64 + v62);
    if (*(v73 + 16))
    {

      v74 = sub_1B7FDA47C((v0 + 16));
      if (v75)
      {
        sub_1B80337A4(*(v73 + 56) + *(*(v0 + 1432) + 72) * v74, *(v0 + 1416), type metadata accessor for Location);
        v76 = 0;
      }

      else
      {
        v76 = 1;
      }
    }

    else
    {
      v76 = 1;
    }

    v77 = *(v0 + 1464);
    v78 = *(v0 + 1416);
    (*(*(v0 + 1432) + 56))(v78, v76, 1, *(v0 + 1424));
    v79 = *(v0 + 160);
    v114[8] = *(v0 + 144);
    v114[9] = v79;
    v114[10] = *(v0 + 176);
    v80 = *(v0 + 96);
    v114[4] = *(v0 + 80);
    v114[5] = v80;
    v81 = *(v0 + 128);
    v114[6] = *(v0 + 112);
    v114[7] = v81;
    v82 = *(v0 + 32);
    v114[0] = *(v0 + 16);
    v114[1] = v82;
    v83 = *(v0 + 64);
    v114[2] = *(v0 + 48);
    v114[3] = v83;
    if (sub_1B8025048(v114, v77, v78))
    {
      v100 = *(v0 + 1472);
      v101 = *(v0 + 1464);
      v102 = *(v0 + 1408);
      v103 = *(v0 + 1400);
      v104 = *(v0 + 1392);
      *(v0 + 1536) = sub_1B8012DD8();
      sub_1B80337A4(v101, v100, type metadata accessor for Location);
      type metadata accessor for LocationShiftingRequest(0);
      v105 = swift_allocObject();
      *(v0 + 1544) = v105;
      _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
      v106 = sub_1B80C8E4C();
      v108 = v107;
      (*(v103 + 8))(v102, v104);
      v109 = (v105 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_identifier);
      *v109 = v106;
      v109[1] = v108;
      sub_1B80344D4(v100, v105 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_location, type metadata accessor for Location);
      v110 = swift_task_alloc();
      *(v0 + 1552) = v110;
      *v110 = v0;
      v110[1] = sub_1B80203A4;
      v111 = *(v0 + 1456);

      return sub_1B809EB08(v111, v105);
    }

    sub_1B80337A4(*(v0 + 1464), *(v0 + 1448), type metadata accessor for Location);
    sub_1B7FC8DA4(v0 + 16, v0 + 544);
    v84 = sub_1B80C8FEC();
    v85 = sub_1B80C941C();
    sub_1B7FCAD28(v0 + 16);
    if (os_log_type_enabled(v84, v85))
    {
      v86 = *(v0 + 1448);
      v87 = *(v0 + 1424);
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      *(v0 + 1352) = v89;
      *v88 = 136446979;
      *(v88 + 4) = sub_1B7FB84FC(0xD000000000000017, 0x80000001B80CCEF0, (v0 + 1352));
      *(v88 + 12) = 2082;
      if (*(v86 + *(v87 + 60)) > 1u)
      {
        if (*(v86 + *(v87 + 60)) == 2)
        {
          v90 = 0xE500000000000000;
          v91 = 0x6576696C2ELL;
        }

        else
        {
          v90 = 0xEA00000000006574;
          v91 = 0x696C6C657461732ELL;
        }
      }

      else if (*(v86 + *(v87 + 60)))
      {
        v91 = 0xD000000000000013;
        v90 = 0x80000001B80CCF10;
      }

      else
      {
        v90 = 0xE700000000000000;
        v91 = 0x79636167656C2ELL;
      }

      v112 = *(v0 + 1416);
      v113 = *(v0 + 1464);
      sub_1B803380C(*(v0 + 1448), type metadata accessor for Location);
      v94 = sub_1B7FB84FC(v91, v90, (v0 + 1352));

      *(v88 + 14) = v94;
      *(v88 + 22) = 2160;
      *(v88 + 24) = 1752392040;
      *(v88 + 32) = 2081;
      v95 = *(v0 + 16);
      v96 = *(v0 + 24);

      sub_1B7FCAD28(v0 + 16);
      v97 = sub_1B7FB84FC(v95, v96, (v0 + 1352));

      *(v88 + 34) = v97;
      _os_log_impl(&dword_1B7FB5000, v84, v85, "%{public}s\nNot forwarding %{public}s\nlocation for handle %{private,mask.hash}s", v88, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v89, -1, -1);
      MEMORY[0x1B8CB8970](v88, -1, -1);

      sub_1B7FB86D4(v112, &qword_1EBA65D60, &unk_1B80DC530);
      sub_1B803380C(v113, type metadata accessor for Location);
      if (!v24)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v26 = *(v0 + 1464);
      v27 = *(v0 + 1448);
      v28 = *(v0 + 1416);

      sub_1B7FCAD28(v0 + 16);
      sub_1B803380C(v27, type metadata accessor for Location);
      sub_1B7FB86D4(v28, &qword_1EBA65D60, &unk_1B80DC530);
      sub_1B803380C(v26, type metadata accessor for Location);
      if (!v24)
      {
        goto LABEL_21;
      }
    }
  }

  v98 = *(v0 + 8);

  return v98();
}

uint64_t sub_1B80203A4()
{
  v2 = *v1;
  *(*v1 + 1560) = v0;

  if (v0)
  {
    v3 = *(v2 + 1368);
    v4 = sub_1B8021330;
  }

  else
  {
    v5 = *(v2 + 1368);

    v4 = sub_1B80204D8;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

void sub_1B80204D8()
{
  v132 = v0;
  v1 = *(v0 + 1512);
  v2 = *(v0 + 1472);
  v3 = *(v0 + 1456);
  v4 = *(v0 + 1368);
  swift_beginAccess();
  sub_1B80337A4(v3, v2, type metadata accessor for Location);
  sub_1B7FC8DA4(v0 + 16, v0 + 896);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v131[0] = *(v4 + v1);
  sub_1B802F3C8(v2, (v0 + 16), isUniquelyReferenced_nonNull_native);
  sub_1B7FCAD28(v0 + 16);
  *(v4 + v1) = *&v131[0];
  swift_endAccess();
  sub_1B7FC8DA4(v0 + 16, v0 + 1072);

  v6 = sub_1B80C8FEC();
  v7 = sub_1B80C941C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 1504);
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v131[0] = v11;
    *v10 = 136446979;
    *(v10 + 4) = sub_1B7FB84FC(0xD000000000000017, 0x80000001B80CCEF0, v131);
    *(v10 + 12) = 1024;
    *(v10 + 14) = sub_1B801F1CC((v0 + 16), v9) & 1;

    sub_1B7FCAD28(v0 + 16);
    *(v10 + 18) = 2160;
    *(v10 + 20) = 1752392040;
    *(v10 + 28) = 2081;
    v12 = *(v0 + 16);
    v13 = *(v0 + 24);

    v14 = sub_1B7FB84FC(v12, v13, v131);

    *(v10 + 30) = v14;
    _os_log_impl(&dword_1B7FB5000, v6, v7, "%{public}s\nContains: %{BOOL}d. Handle: %{private,mask.hash}s.", v10, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v11, -1, -1);
    MEMORY[0x1B8CB8970](v10, -1, -1);
  }

  else
  {

    sub_1B7FCAD28(v0 + 16);
  }

  if (sub_1B801F1CC((v0 + 16), *(v0 + 1504)))
  {
    v15 = *(v0 + 1472);
    v16 = *(v0 + 1456);
    v17 = *(v0 + 1432);
    v18 = *(v0 + 1384);
    v129 = *(v0 + 1376);
    v19 = *(v0 + 1368);
    v20 = sub_1B80C92CC();
    v21 = *(v20 - 8);
    (*(v21 + 56))(v18, 1, 1, v20);
    sub_1B80337A4(v16, v15, type metadata accessor for Location);
    v22 = sub_1B7FCD170(&unk_1ED8DD838, _s18LocationConnectionCMa, &unk_1B80D2CA0);
    v23 = (*(v17 + 80) + 216) & ~*(v17 + 80);
    v24 = swift_allocObject();
    v25 = *(v0 + 112);
    *(v24 + 152) = *(v0 + 128);
    v26 = *(v0 + 160);
    *(v24 + 168) = *(v0 + 144);
    *(v24 + 184) = v26;
    *(v24 + 200) = *(v0 + 176);
    v27 = *(v0 + 48);
    *(v24 + 88) = *(v0 + 64);
    v28 = *(v0 + 96);
    *(v24 + 104) = *(v0 + 80);
    *(v24 + 120) = v28;
    *(v24 + 136) = v25;
    v29 = *(v0 + 32);
    *(v24 + 40) = *(v0 + 16);
    *(v24 + 56) = v29;
    *(v24 + 16) = v19;
    *(v24 + 24) = v22;
    *(v24 + 32) = v19;
    *(v24 + 72) = v27;
    sub_1B80344D4(v15, v24 + v23, type metadata accessor for Location);
    sub_1B7FB8448(v18, v129, &unk_1EBA66000, &unk_1B80D2630);
    v30 = (*(v21 + 48))(v129, 1, v20);
    swift_retain_n();

    v31 = *(v0 + 1376);
    if (v30 == 1)
    {
      sub_1B7FB86D4(*(v0 + 1376), &unk_1EBA66000, &unk_1B80D2630);
    }

    else
    {
      sub_1B80C92BC();
      (*(v21 + 8))(v31, v20);
    }

    v35 = *(v24 + 16);
    swift_unknownObjectRetain();

    if (v35)
    {
      swift_getObjectType();
      v36 = sub_1B80C926C();
      v38 = v37;
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = 0;
      v38 = 0;
    }

    sub_1B7FB86D4(*(v0 + 1384), &unk_1EBA66000, &unk_1B80D2630);
    v39 = swift_allocObject();
    *(v39 + 16) = &unk_1B80D3008;
    *(v39 + 24) = v24;
    if (v38 | v36)
    {
      *(v0 + 1248) = 0;
      *(v0 + 1256) = 0;
      *(v0 + 1264) = v36;
      *(v0 + 1272) = v38;
    }

    v32 = *(v0 + 1464);
    v33 = *(v0 + 1456);
    v34 = *(v0 + 1416);
    swift_task_create();
  }

  else
  {
    v32 = *(v0 + 1464);
    v33 = *(v0 + 1456);
    v34 = *(v0 + 1416);
    sub_1B7FCAD28(v0 + 16);
  }

  sub_1B803380C(v33, type metadata accessor for Location);
  sub_1B7FB86D4(v34, &qword_1EBA65D60, &unk_1B80DC530);
  sub_1B803380C(v32, type metadata accessor for Location);
  v40 = *(v0 + 1528);
  v41 = *(v0 + 1520);
  while (v41)
  {
    v46 = *(v0 + 1360);
LABEL_28:
    v51 = *(v0 + 1480);
    v52 = *(v0 + 1472);
    v53 = *(v0 + 1432);
    v54 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
    v55 = v54 | (v40 << 6);
    v56 = (*(v46 + 48) + 176 * v55);
    v58 = v56[1];
    v57 = v56[2];
    *(v0 + 192) = *v56;
    *(v0 + 208) = v58;
    *(v0 + 224) = v57;
    v59 = v56[6];
    v61 = v56[3];
    v60 = v56[4];
    *(v0 + 272) = v56[5];
    *(v0 + 288) = v59;
    *(v0 + 240) = v61;
    *(v0 + 256) = v60;
    v62 = v56[10];
    v64 = v56[7];
    v63 = v56[8];
    *(v0 + 336) = v56[9];
    *(v0 + 352) = v62;
    *(v0 + 304) = v64;
    *(v0 + 320) = v63;
    sub_1B80337A4(*(v46 + 56) + *(v53 + 72) * v55, v52, type metadata accessor for Location);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
    v66 = *(v65 + 48);
    v68 = *(v0 + 208);
    v67 = *(v0 + 224);
    *v51 = *(v0 + 192);
    v51[1] = v68;
    v51[2] = v67;
    v69 = *(v0 + 240);
    v70 = *(v0 + 256);
    v71 = *(v0 + 288);
    v51[5] = *(v0 + 272);
    v51[6] = v71;
    v51[3] = v69;
    v51[4] = v70;
    v72 = *(v0 + 304);
    v73 = *(v0 + 320);
    v74 = *(v0 + 352);
    v51[9] = *(v0 + 336);
    v51[10] = v74;
    v51[7] = v72;
    v51[8] = v73;
    sub_1B80344D4(v52, v51 + v66, type metadata accessor for Location);
    (*(*(v65 - 8) + 56))(v51, 0, 1, v65);
    sub_1B7FC8DA4(v0 + 192, v0 + 368);
LABEL_29:
    *(v0 + 1528) = v40;
    *(v0 + 1520) = v41;
    v75 = *(v0 + 1488);
    sub_1B7FC8F2C(*(v0 + 1480), v75, &qword_1EBA660C8, &qword_1B80D2E88);
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
    v77 = (*(*(v76 - 8) + 48))(v75, 1, v76);
    v78 = *(v0 + 1488);
    if (v77 == 1)
    {

      v115 = *(v0 + 8);

      v115();
      return;
    }

    v79 = *(v0 + 1512);
    v80 = *(v0 + 1464);
    v81 = *(v0 + 1368);
    v83 = v78[1];
    v82 = v78[2];
    *(v0 + 16) = *v78;
    *(v0 + 32) = v83;
    *(v0 + 48) = v82;
    v84 = v78[6];
    v86 = v78[3];
    v85 = v78[4];
    *(v0 + 96) = v78[5];
    *(v0 + 112) = v84;
    *(v0 + 64) = v86;
    *(v0 + 80) = v85;
    v87 = v78[10];
    v89 = v78[7];
    v88 = v78[8];
    *(v0 + 160) = v78[9];
    *(v0 + 176) = v87;
    *(v0 + 128) = v89;
    *(v0 + 144) = v88;
    sub_1B80344D4(v78 + *(v76 + 48), v80, type metadata accessor for Location);
    v90 = *(v81 + v79);
    if (*(v90 + 16))
    {

      v91 = sub_1B7FDA47C((v0 + 16));
      if (v92)
      {
        sub_1B80337A4(*(v90 + 56) + *(*(v0 + 1432) + 72) * v91, *(v0 + 1416), type metadata accessor for Location);
        v93 = 0;
      }

      else
      {
        v93 = 1;
      }
    }

    else
    {
      v93 = 1;
    }

    v94 = *(v0 + 1464);
    v95 = *(v0 + 1416);
    (*(*(v0 + 1432) + 56))(v95, v93, 1, *(v0 + 1424));
    v96 = *(v0 + 160);
    v131[8] = *(v0 + 144);
    v131[9] = v96;
    v131[10] = *(v0 + 176);
    v97 = *(v0 + 96);
    v131[4] = *(v0 + 80);
    v131[5] = v97;
    v98 = *(v0 + 128);
    v131[6] = *(v0 + 112);
    v131[7] = v98;
    v99 = *(v0 + 32);
    v131[0] = *(v0 + 16);
    v131[1] = v99;
    v100 = *(v0 + 64);
    v131[2] = *(v0 + 48);
    v131[3] = v100;
    if (sub_1B8025048(v131, v94, v95))
    {
      v116 = *(v0 + 1472);
      v117 = *(v0 + 1408);
      v118 = *(v0 + 1400);
      v119 = *(v0 + 1392);
      v120 = *(v0 + 1464);
      *(v0 + 1536) = sub_1B8012DD8();
      sub_1B80337A4(v120, v116, type metadata accessor for Location);
      type metadata accessor for LocationShiftingRequest(0);
      v121 = swift_allocObject();
      *(v0 + 1544) = v121;
      _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
      v122 = sub_1B80C8E4C();
      v124 = v123;
      (*(v118 + 8))(v117, v119);
      v125 = (v121 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_identifier);
      *v125 = v122;
      v125[1] = v124;
      sub_1B80344D4(v116, v121 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_location, type metadata accessor for Location);
      v126 = swift_task_alloc();
      *(v0 + 1552) = v126;
      *v126 = v0;
      v126[1] = sub_1B80203A4;
      v127 = *(v0 + 1456);

      sub_1B809EB08(v127, v121);
      return;
    }

    sub_1B80337A4(*(v0 + 1464), *(v0 + 1448), type metadata accessor for Location);
    sub_1B7FC8DA4(v0 + 16, v0 + 544);
    v101 = sub_1B80C8FEC();
    v102 = sub_1B80C941C();
    sub_1B7FCAD28(v0 + 16);
    if (os_log_type_enabled(v101, v102))
    {
      v103 = *(v0 + 1448);
      v104 = *(v0 + 1424);
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      *(v0 + 1352) = v106;
      *v105 = 136446979;
      *(v105 + 4) = sub_1B7FB84FC(0xD000000000000017, 0x80000001B80CCEF0, (v0 + 1352));
      *(v105 + 12) = 2082;
      if (*(v103 + *(v104 + 60)) > 1u)
      {
        if (*(v103 + *(v104 + 60)) == 2)
        {
          v107 = 0xE500000000000000;
          v108 = 0x6576696C2ELL;
        }

        else
        {
          v107 = 0xEA00000000006574;
          v108 = 0x696C6C657461732ELL;
        }
      }

      else if (*(v103 + *(v104 + 60)))
      {
        v108 = 0xD000000000000013;
        v107 = 0x80000001B80CCF10;
      }

      else
      {
        v107 = 0xE700000000000000;
        v108 = 0x79636167656C2ELL;
      }

      v128 = *(v0 + 1416);
      v130 = *(v0 + 1464);
      sub_1B803380C(*(v0 + 1448), type metadata accessor for Location);
      v111 = sub_1B7FB84FC(v108, v107, (v0 + 1352));

      *(v105 + 14) = v111;
      *(v105 + 22) = 2160;
      *(v105 + 24) = 1752392040;
      *(v105 + 32) = 2081;
      v112 = *(v0 + 16);
      v113 = *(v0 + 24);

      sub_1B7FCAD28(v0 + 16);
      v114 = sub_1B7FB84FC(v112, v113, (v0 + 1352));

      *(v105 + 34) = v114;
      _os_log_impl(&dword_1B7FB5000, v101, v102, "%{public}s\nNot forwarding %{public}s\nlocation for handle %{private,mask.hash}s", v105, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v106, -1, -1);
      MEMORY[0x1B8CB8970](v105, -1, -1);

      sub_1B7FB86D4(v128, &qword_1EBA65D60, &unk_1B80DC530);
      v45 = v130;
    }

    else
    {
      v42 = *(v0 + 1464);
      v43 = *(v0 + 1448);
      v44 = *(v0 + 1416);

      sub_1B7FCAD28(v0 + 16);
      sub_1B803380C(v43, type metadata accessor for Location);
      sub_1B7FB86D4(v44, &qword_1EBA65D60, &unk_1B80DC530);
      v45 = v42;
    }

    sub_1B803380C(v45, type metadata accessor for Location);
  }

  v47 = ((1 << *(v0 + 1568)) + 63) >> 6;
  if (v47 <= (v40 + 1))
  {
    v48 = v40 + 1;
  }

  else
  {
    v48 = ((1 << *(v0 + 1568)) + 63) >> 6;
  }

  v49 = v48 - 1;
  while (1)
  {
    v50 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v50 >= v47)
    {
      v109 = *(v0 + 1480);
      v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
      (*(*(v110 - 8) + 56))(v109, 1, 1, v110);
      v41 = 0;
      v40 = v49;
      goto LABEL_29;
    }

    v46 = *(v0 + 1360);
    v41 = *(v46 + 8 * v50 + 64);
    ++v40;
    if (v41)
    {
      v40 = v50;
      goto LABEL_28;
    }
  }

  __break(1u);
}

void sub_1B8021330()
{
  v107 = v0;
  v1 = *(v0 + 1560);

  sub_1B7FC8DA4(v0 + 16, v0 + 720);
  v2 = v1;
  v3 = sub_1B80C8FEC();
  v4 = sub_1B80C93FC();
  sub_1B7FCAD28(v0 + 16);

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 1560);
  v7 = *(v0 + 1464);
  v8 = *(v0 + 1416);
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v9 = 141558531;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    v104 = v7;
    *&v106[0] = v11;
    v13 = *(v0 + 16);
    v12 = *(v0 + 24);

    sub_1B7FCAD28(v0 + 16);
    v14 = sub_1B7FB84FC(v13, v12, v106);

    *(v9 + 14) = v14;
    *(v9 + 22) = 2114;
    v15 = sub_1B80C8CFC();
    *(v9 + 24) = v15;
    *v10 = v15;
    _os_log_impl(&dword_1B7FB5000, v3, v4, "Shifting failed for handle: %{private,mask.hash}s with ERROR: %{public}@", v9, 0x20u);
    sub_1B7FB86D4(v10, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1B8CB8970](v11, -1, -1);
    MEMORY[0x1B8CB8970](v9, -1, -1);

    sub_1B7FB86D4(v8, &qword_1EBA65D60, &unk_1B80DC530);
    v16 = v104;
  }

  else
  {

    sub_1B7FCAD28(v0 + 16);
    sub_1B7FB86D4(v8, &qword_1EBA65D60, &unk_1B80DC530);
    v16 = v7;
  }

  sub_1B803380C(v16, type metadata accessor for Location);
  v17 = *(v0 + 1528);
  v18 = *(v0 + 1520);
  if (!v18)
  {
    goto LABEL_8;
  }

  do
  {
    while (1)
    {
      v22 = *(v0 + 1360);
LABEL_16:
      v27 = *(v0 + 1480);
      v28 = *(v0 + 1472);
      v29 = *(v0 + 1432);
      v30 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v31 = v30 | (v17 << 6);
      v32 = (*(v22 + 48) + 176 * v31);
      v34 = v32[1];
      v33 = v32[2];
      *(v0 + 192) = *v32;
      *(v0 + 208) = v34;
      *(v0 + 224) = v33;
      v35 = v32[6];
      v37 = v32[3];
      v36 = v32[4];
      *(v0 + 272) = v32[5];
      *(v0 + 288) = v35;
      *(v0 + 240) = v37;
      *(v0 + 256) = v36;
      v38 = v32[10];
      v40 = v32[7];
      v39 = v32[8];
      *(v0 + 336) = v32[9];
      *(v0 + 352) = v38;
      *(v0 + 304) = v40;
      *(v0 + 320) = v39;
      sub_1B80337A4(*(v22 + 56) + *(v29 + 72) * v31, v28, type metadata accessor for Location);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
      v42 = *(v41 + 48);
      v44 = *(v0 + 208);
      v43 = *(v0 + 224);
      *v27 = *(v0 + 192);
      v27[1] = v44;
      v27[2] = v43;
      v45 = *(v0 + 240);
      v46 = *(v0 + 256);
      v47 = *(v0 + 288);
      v27[5] = *(v0 + 272);
      v27[6] = v47;
      v27[3] = v45;
      v27[4] = v46;
      v48 = *(v0 + 304);
      v49 = *(v0 + 320);
      v50 = *(v0 + 352);
      v27[9] = *(v0 + 336);
      v27[10] = v50;
      v27[7] = v48;
      v27[8] = v49;
      sub_1B80344D4(v28, v27 + v42, type metadata accessor for Location);
      (*(*(v41 - 8) + 56))(v27, 0, 1, v41);
      sub_1B7FC8DA4(v0 + 192, v0 + 368);
LABEL_17:
      *(v0 + 1528) = v17;
      *(v0 + 1520) = v18;
      v51 = *(v0 + 1488);
      sub_1B7FC8F2C(*(v0 + 1480), v51, &qword_1EBA660C8, &qword_1B80D2E88);
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
      if ((*(*(v52 - 8) + 48))(v51, 1, v52) == 1)
      {

        v90 = *(v0 + 8);

        v90();
        return;
      }

      v53 = *(v0 + 1512);
      v54 = *(v0 + 1488);
      v55 = *(v0 + 1464);
      v56 = *(v0 + 1368);
      v58 = v54[1];
      v57 = v54[2];
      *(v0 + 16) = *v54;
      *(v0 + 32) = v58;
      *(v0 + 48) = v57;
      v59 = v54[6];
      v61 = v54[3];
      v60 = v54[4];
      *(v0 + 96) = v54[5];
      *(v0 + 112) = v59;
      *(v0 + 64) = v61;
      *(v0 + 80) = v60;
      v62 = v54[10];
      v64 = v54[7];
      v63 = v54[8];
      *(v0 + 160) = v54[9];
      *(v0 + 176) = v62;
      *(v0 + 128) = v64;
      *(v0 + 144) = v63;
      sub_1B80344D4(v54 + *(v52 + 48), v55, type metadata accessor for Location);
      v65 = *(v56 + v53);
      if (*(v65 + 16))
      {

        v66 = sub_1B7FDA47C((v0 + 16));
        if (v67)
        {
          sub_1B80337A4(*(v65 + 56) + *(*(v0 + 1432) + 72) * v66, *(v0 + 1416), type metadata accessor for Location);
          v68 = 0;
        }

        else
        {
          v68 = 1;
        }
      }

      else
      {
        v68 = 1;
      }

      v69 = *(v0 + 1464);
      v70 = *(v0 + 1416);
      (*(*(v0 + 1432) + 56))(v70, v68, 1, *(v0 + 1424));
      v71 = *(v0 + 160);
      v106[8] = *(v0 + 144);
      v106[9] = v71;
      v106[10] = *(v0 + 176);
      v72 = *(v0 + 96);
      v106[4] = *(v0 + 80);
      v106[5] = v72;
      v73 = *(v0 + 128);
      v106[6] = *(v0 + 112);
      v106[7] = v73;
      v74 = *(v0 + 32);
      v106[0] = *(v0 + 16);
      v106[1] = v74;
      v75 = *(v0 + 64);
      v106[2] = *(v0 + 48);
      v106[3] = v75;
      if (sub_1B8025048(v106, v69, v70))
      {
        v91 = *(v0 + 1472);
        v92 = *(v0 + 1408);
        v93 = *(v0 + 1400);
        v94 = *(v0 + 1392);
        v95 = *(v0 + 1464);
        *(v0 + 1536) = sub_1B8012DD8();
        sub_1B80337A4(v95, v91, type metadata accessor for Location);
        type metadata accessor for LocationShiftingRequest(0);
        v96 = swift_allocObject();
        *(v0 + 1544) = v96;
        _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
        v97 = sub_1B80C8E4C();
        v99 = v98;
        (*(v93 + 8))(v92, v94);
        v100 = (v96 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_identifier);
        *v100 = v97;
        v100[1] = v99;
        sub_1B80344D4(v91, v96 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_location, type metadata accessor for Location);
        v101 = swift_task_alloc();
        *(v0 + 1552) = v101;
        *v101 = v0;
        v101[1] = sub_1B80203A4;
        v102 = *(v0 + 1456);

        sub_1B809EB08(v102, v96);
        return;
      }

      sub_1B80337A4(*(v0 + 1464), *(v0 + 1448), type metadata accessor for Location);
      sub_1B7FC8DA4(v0 + 16, v0 + 544);
      v76 = sub_1B80C8FEC();
      v77 = sub_1B80C941C();
      sub_1B7FCAD28(v0 + 16);
      if (os_log_type_enabled(v76, v77))
      {
        break;
      }

      v19 = *(v0 + 1464);
      v20 = *(v0 + 1448);
      v21 = *(v0 + 1416);

      sub_1B7FCAD28(v0 + 16);
      sub_1B803380C(v20, type metadata accessor for Location);
      sub_1B7FB86D4(v21, &qword_1EBA65D60, &unk_1B80DC530);
      sub_1B803380C(v19, type metadata accessor for Location);
      if (!v18)
      {
        goto LABEL_8;
      }
    }

    v78 = *(v0 + 1448);
    v79 = *(v0 + 1424);
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    *(v0 + 1352) = v81;
    *v80 = 136446979;
    *(v80 + 4) = sub_1B7FB84FC(0xD000000000000017, 0x80000001B80CCEF0, (v0 + 1352));
    *(v80 + 12) = 2082;
    if (*(v78 + *(v79 + 60)) > 1u)
    {
      if (*(v78 + *(v79 + 60)) == 2)
      {
        v82 = 0xE500000000000000;
        v83 = 0x6576696C2ELL;
      }

      else
      {
        v82 = 0xEA00000000006574;
        v83 = 0x696C6C657461732ELL;
      }
    }

    else if (*(v78 + *(v79 + 60)))
    {
      v83 = 0xD000000000000013;
      v82 = 0x80000001B80CCF10;
    }

    else
    {
      v82 = 0xE700000000000000;
      v83 = 0x79636167656C2ELL;
    }

    v103 = *(v0 + 1416);
    v105 = *(v0 + 1464);
    sub_1B803380C(*(v0 + 1448), type metadata accessor for Location);
    v86 = sub_1B7FB84FC(v83, v82, (v0 + 1352));

    *(v80 + 14) = v86;
    *(v80 + 22) = 2160;
    *(v80 + 24) = 1752392040;
    *(v80 + 32) = 2081;
    v87 = *(v0 + 16);
    v88 = *(v0 + 24);

    sub_1B7FCAD28(v0 + 16);
    v89 = sub_1B7FB84FC(v87, v88, (v0 + 1352));

    *(v80 + 34) = v89;
    _os_log_impl(&dword_1B7FB5000, v76, v77, "%{public}s\nNot forwarding %{public}s\nlocation for handle %{private,mask.hash}s", v80, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v81, -1, -1);
    MEMORY[0x1B8CB8970](v80, -1, -1);

    sub_1B7FB86D4(v103, &qword_1EBA65D60, &unk_1B80DC530);
    sub_1B803380C(v105, type metadata accessor for Location);
  }

  while (v18);
LABEL_8:
  v23 = ((1 << *(v0 + 1568)) + 63) >> 6;
  if (v23 <= (v17 + 1))
  {
    v24 = v17 + 1;
  }

  else
  {
    v24 = ((1 << *(v0 + 1568)) + 63) >> 6;
  }

  v25 = v24 - 1;
  while (1)
  {
    v26 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v26 >= v23)
    {
      v84 = *(v0 + 1480);
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
      (*(*(v85 - 8) + 56))(v84, 1, 1, v85);
      v18 = 0;
      v17 = v25;
      goto LABEL_17;
    }

    v22 = *(v0 + 1360);
    v18 = *(v22 + 8 * v26 + 64);
    ++v17;
    if (v18)
    {
      v17 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_1B8021E30(uint64_t a1, char a2, char a3)
{
  *(v4 + 1304) = v3;
  *(v4 + 1441) = a3;
  *(v4 + 1440) = a2;
  *(v4 + 1296) = a1;
  *(v4 + 1312) = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  *(v4 + 1320) = swift_task_alloc();
  v5 = sub_1B80C8E2C();
  *(v4 + 1328) = v5;
  *(v4 + 1336) = *(v5 - 8);
  *(v4 + 1344) = swift_task_alloc();
  *(v4 + 1352) = swift_task_alloc();
  v6 = type metadata accessor for Friend(0);
  *(v4 + 1360) = v6;
  *(v4 + 1368) = *(v6 - 8);
  *(v4 + 1376) = swift_task_alloc();
  *(v4 + 1384) = swift_task_alloc();
  *(v4 + 1392) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8021FDC, v3, 0);
}

uint64_t sub_1B8021FDC()
{
  v11 = v0;
  if (swift_weakLoadStrong() && (v1 = sub_1B7FF12A4(), *(v0 + 1400) = v1, , v1))
  {

    return MEMORY[0x1EEE6DFA0](sub_1B8022230, v1, 0);
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
    v4 = sub_1B80C93FC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v10 = v6;
      *v5 = 136446210;
      *(v5 + 4) = sub_1B7FB84FC(0xD000000000000038, 0x80000001B80CCC10, &v10);
      _os_log_impl(&dword_1B7FB5000, v3, v4, "%{public}s missing FriendshipConnection.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x1B8CB8970](v6, -1, -1);
      MEMORY[0x1B8CB8970](v5, -1, -1);
    }

    v7 = sub_1B80830D4(MEMORY[0x1E69E7CC0]);

    v8 = *(v0 + 8);

    return v8(v7);
  }
}

uint64_t sub_1B8022230()
{
  v1 = v0[175];
  v2 = v0[163];
  v3 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_followings;
  swift_beginAccess();
  v0[176] = *(v1 + v3);

  return MEMORY[0x1EEE6DFA0](sub_1B80222D0, v2, 0);
}

uint64_t sub_1B80222D0()
{
  v103 = v0;
  v1 = *(v0 + 1408);
  if (*(v0 + 1441) == 1)
  {
    v2 = *(v0 + 1296);
    v90 = MEMORY[0x1E69E7CC8];
    v88 = *(v2 + 16);
    if (v88)
    {
      v3 = 0;
      v4 = *(v0 + 1368);
      v5 = v2 + 32;
      v6 = *(v0 + 1336);
      v86 = (v6 + 48);
      v87 = v5;
      v84 = (v0 + 1072);
      v85 = *(v0 + 1360);
      v81 = (v6 + 16);
      v82 = (v6 + 32);
      v80 = (v6 + 8);
      v89 = *(v1 + 16);
      v83 = MEMORY[0x1E69E7CC8];
      do
      {
        v23 = (v87 + 176 * v3);
        v24 = *v23;
        v25 = v23[2];
        *(v0 + 32) = v23[1];
        *(v0 + 48) = v25;
        *(v0 + 16) = v24;
        v26 = v23[3];
        v27 = v23[4];
        v28 = v23[6];
        *(v0 + 96) = v23[5];
        *(v0 + 112) = v28;
        *(v0 + 64) = v26;
        *(v0 + 80) = v27;
        v29 = v23[7];
        v30 = v23[8];
        v31 = v23[10];
        *(v0 + 160) = v23[9];
        *(v0 + 176) = v31;
        *(v0 + 128) = v29;
        *(v0 + 144) = v30;
        sub_1B7FC8DA4(v0 + 16, v0 + 192);
        if (v89)
        {
          v32 = 0;
          while (1)
          {
            if (v32 >= *(v1 + 16))
            {
              __break(1u);
              goto LABEL_38;
            }

            v33 = *(v0 + 1376);
            sub_1B80337A4(v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v32, v33, type metadata accessor for Friend);
            v35 = v33[1];
            v34 = v33[2];
            *(v0 + 368) = *v33;
            *(v0 + 384) = v35;
            *(v0 + 400) = v34;
            v36 = v33[6];
            v38 = v33[3];
            v37 = v33[4];
            *(v0 + 448) = v33[5];
            *(v0 + 464) = v36;
            *(v0 + 416) = v38;
            *(v0 + 432) = v37;
            v39 = v33[10];
            v41 = v33[7];
            v40 = v33[8];
            *(v0 + 512) = v33[9];
            *(v0 + 528) = v39;
            *(v0 + 480) = v41;
            *(v0 + 496) = v40;
            v42 = sub_1B80C90FC();
            v44 = v43;
            if (v42 == sub_1B80C90FC() && v44 == v45)
            {
              break;
            }

            v46 = sub_1B80C981C();
            sub_1B7FC8DA4(v0 + 368, v0 + 544);

            sub_1B7FCAD28(v0 + 368);
            if (v46)
            {
              goto LABEL_18;
            }

            ++v32;
            sub_1B803380C(*(v0 + 1376), type metadata accessor for Friend);
            if (v89 == v32)
            {
              goto LABEL_13;
            }
          }

          sub_1B7FC8DA4(v0 + 368, v0 + 720);

          sub_1B7FCAD28(v0 + 368);
LABEL_18:
          v50 = *(v0 + 1392);
          v51 = *(v0 + 1384);
          v52 = *(v0 + 1328);
          v53 = *(v0 + 1320);
          sub_1B80344D4(*(v0 + 1376), v51, type metadata accessor for Friend);
          sub_1B80344D4(v51, v50, type metadata accessor for Friend);
          sub_1B7FB8448(v50 + *(v85 + 48), v53, &unk_1EBA65FD0, &unk_1B80D1920);
          v54 = (*v86)(v53, 1, v52);
          v55 = *(v0 + 1392);
          if (v54 == 1)
          {
            v56 = *(v0 + 1320);
            sub_1B803380C(*(v0 + 1392), type metadata accessor for Friend);
            sub_1B7FCAD28(v0 + 16);
            sub_1B7FB86D4(v56, &unk_1EBA65FD0, &unk_1B80D1920);
          }

          else
          {
            v57 = *(v0 + 1352);
            v58 = *(v0 + 1344);
            v59 = *(v0 + 1328);
            (*v82)(v57, *(v0 + 1320), v59);
            (*v81)(v58, v57, v59);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v92 = v90;
            sub_1B802F254(v58, (v0 + 16), isUniquelyReferenced_nonNull_native);
            sub_1B7FCAD28(v0 + 16);
            (*v80)(v57, v59);
            sub_1B803380C(v55, type metadata accessor for Friend);
            v83 = v92;
            v90 = v92;
          }
        }

        else
        {
LABEL_13:
          if (qword_1ED8DD848 != -1)
          {
            swift_once();
          }

          v47 = sub_1B80C900C();
          __swift_project_value_buffer(v47, qword_1ED8DDF28);
          sub_1B7FC8DA4(v0 + 16, v0 + 896);
          v48 = sub_1B80C8FEC();
          v49 = sub_1B80C941C();
          sub_1B7FCAD28(v0 + 16);
          if (os_log_type_enabled(v48, v49))
          {
            v7 = swift_slowAlloc();
            v8 = swift_slowAlloc();
            v91 = v8;
            *v7 = 136446723;
            *(v7 + 4) = sub_1B7FB84FC(0xD000000000000038, 0x80000001B80CCC10, &v91);
            *(v7 + 12) = 2160;
            *(v7 + 14) = 1752392040;
            *(v7 + 22) = 2081;
            v9 = *(v0 + 160);
            v100 = *(v0 + 144);
            v101 = v9;
            v102 = *(v0 + 176);
            v10 = *(v0 + 96);
            v96 = *(v0 + 80);
            v97 = v10;
            v11 = *(v0 + 128);
            v98 = *(v0 + 112);
            v99 = v11;
            v12 = *(v0 + 32);
            v92 = *(v0 + 16);
            v93 = v12;
            v13 = *(v0 + 64);
            v94 = *(v0 + 48);
            v95 = v13;
            v14 = Handle.description.getter();
            v16 = v15;
            v17 = v101;
            *(v0 + 1200) = v100;
            *(v0 + 1216) = v17;
            *(v0 + 1232) = v102;
            v18 = v97;
            *(v0 + 1136) = v96;
            *(v0 + 1152) = v18;
            v19 = v99;
            *(v0 + 1168) = v98;
            *(v0 + 1184) = v19;
            v20 = v93;
            *v84 = v92;
            *(v0 + 1088) = v20;
            v21 = v95;
            *(v0 + 1104) = v94;
            *(v0 + 1120) = v21;
            sub_1B7FCAD28(v84);
            v22 = sub_1B7FB84FC(v14, v16, &v91);

            *(v7 + 24) = v22;
            _os_log_impl(&dword_1B7FB5000, v48, v49, "%{public}s handle:%{private,mask.hash}s not sharing yet", v7, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1B8CB8970](v8, -1, -1);
            MEMORY[0x1B8CB8970](v7, -1, -1);
          }

          else
          {

            sub_1B7FCAD28(v0 + 16);
          }
        }

        ++v3;
      }

      while (v3 != v88);
    }

    else
    {
      v83 = MEMORY[0x1E69E7CC8];
    }

    if (*(v83 + 16))
    {
      if (qword_1ED8DD848 != -1)
      {
LABEL_38:
        swift_once();
      }

      v63 = sub_1B80C900C();
      __swift_project_value_buffer(v63, qword_1ED8DDF28);
      v64 = sub_1B80C8FEC();
      v65 = sub_1B80C941C();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        *&v92 = v67;
        *v66 = 136446210;
        *(v66 + 4) = sub_1B7FB84FC(0xD000000000000038, 0x80000001B80CCC10, &v92);
        _os_log_impl(&dword_1B7FB5000, v64, v65, "%{public}s Checking if we have any valid cached location that needs rev-geo", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v67);
        MEMORY[0x1B8CB8970](v67, -1, -1);
        MEMORY[0x1B8CB8970](v66, -1, -1);
      }

      v68 = *(v0 + 1312);
      v69 = *(v0 + 1440);
      swift_beginAccess();

      v71 = sub_1B802F778(v70, &v90, v69, v68);

      v72 = sub_1B80C8FEC();
      v73 = sub_1B80C941C();

      if (!os_log_type_enabled(v72, v73))
      {

        goto LABEL_34;
      }

      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *&v92 = v75;
      *v74 = 136446723;
      *(v74 + 4) = sub_1B7FB84FC(0xD000000000000038, 0x80000001B80CCC10, &v92);
      *(v74 + 12) = 2160;
      *(v74 + 14) = 1752392040;
      *(v74 + 22) = 2081;
      type metadata accessor for Location(0);
      sub_1B8032C04();
      v76 = sub_1B80C902C();
      v78 = sub_1B7FB84FC(v76, v77, &v92);

      *(v74 + 24) = v78;
      _os_log_impl(&dword_1B7FB5000, v72, v73, "%{public}s\ncachedLocations:%{private,mask.hash}s", v74, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v75, -1, -1);
      MEMORY[0x1B8CB8970](v74, -1, -1);
    }

    else
    {
      v71 = sub_1B80830D4(MEMORY[0x1E69E7CC0]);
    }

LABEL_34:

    v79 = *(v0 + 8);

    return v79(v71);
  }

  v61 = swift_task_alloc();
  *(v0 + 1416) = v61;
  *v61 = v0;
  v61[1] = sub_1B8022CEC;

  return sub_1B7FF8BCC(&unk_1F2FF96A0);
}

uint64_t sub_1B8022CEC(uint64_t a1)
{
  v4 = *v2;
  v4[178] = v1;

  v5 = v4[163];
  if (v1)
  {
    v6 = sub_1B80237B4;
  }

  else
  {
    v4[179] = a1;
    v6 = sub_1B8022E28;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1B8022E28()
{
  v102 = v0;
  v1 = *(v0 + 1432);
  v2 = *(v0 + 1296);
  v89 = MEMORY[0x1E69E7CC8];
  v87 = *(v2 + 16);
  if (v87)
  {
    v3 = 0;
    v4 = *(v0 + 1368);
    v5 = v2 + 32;
    v6 = *(v0 + 1336);
    v85 = (v6 + 48);
    v86 = v5;
    v83 = (v0 + 1072);
    v84 = *(v0 + 1360);
    v80 = (v6 + 16);
    v81 = (v6 + 32);
    v79 = (v6 + 8);
    v88 = *(v1 + 16);
    v82 = MEMORY[0x1E69E7CC8];
    do
    {
      v23 = (v86 + 176 * v3);
      v24 = *v23;
      v25 = v23[2];
      *(v0 + 32) = v23[1];
      *(v0 + 48) = v25;
      *(v0 + 16) = v24;
      v26 = v23[3];
      v27 = v23[4];
      v28 = v23[6];
      *(v0 + 96) = v23[5];
      *(v0 + 112) = v28;
      *(v0 + 64) = v26;
      *(v0 + 80) = v27;
      v29 = v23[7];
      v30 = v23[8];
      v31 = v23[10];
      *(v0 + 160) = v23[9];
      *(v0 + 176) = v31;
      *(v0 + 128) = v29;
      *(v0 + 144) = v30;
      sub_1B7FC8DA4(v0 + 16, v0 + 192);
      if (v88)
      {
        v32 = 0;
        while (1)
        {
          if (v32 >= *(v1 + 16))
          {
            __break(1u);
            goto LABEL_34;
          }

          v33 = *(v0 + 1376);
          sub_1B80337A4(v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v32, v33, type metadata accessor for Friend);
          v35 = v33[1];
          v34 = v33[2];
          *(v0 + 368) = *v33;
          *(v0 + 384) = v35;
          *(v0 + 400) = v34;
          v36 = v33[6];
          v38 = v33[3];
          v37 = v33[4];
          *(v0 + 448) = v33[5];
          *(v0 + 464) = v36;
          *(v0 + 416) = v38;
          *(v0 + 432) = v37;
          v39 = v33[10];
          v41 = v33[7];
          v40 = v33[8];
          *(v0 + 512) = v33[9];
          *(v0 + 528) = v39;
          *(v0 + 480) = v41;
          *(v0 + 496) = v40;
          v42 = sub_1B80C90FC();
          v44 = v43;
          if (v42 == sub_1B80C90FC() && v44 == v45)
          {
            break;
          }

          v46 = sub_1B80C981C();
          sub_1B7FC8DA4(v0 + 368, v0 + 544);

          sub_1B7FCAD28(v0 + 368);
          if (v46)
          {
            goto LABEL_17;
          }

          ++v32;
          sub_1B803380C(*(v0 + 1376), type metadata accessor for Friend);
          if (v88 == v32)
          {
            goto LABEL_12;
          }
        }

        sub_1B7FC8DA4(v0 + 368, v0 + 720);

        sub_1B7FCAD28(v0 + 368);
LABEL_17:
        v50 = *(v0 + 1392);
        v51 = *(v0 + 1384);
        v52 = *(v0 + 1328);
        v53 = *(v0 + 1320);
        sub_1B80344D4(*(v0 + 1376), v51, type metadata accessor for Friend);
        sub_1B80344D4(v51, v50, type metadata accessor for Friend);
        sub_1B7FB8448(v50 + *(v84 + 48), v53, &unk_1EBA65FD0, &unk_1B80D1920);
        v54 = (*v85)(v53, 1, v52);
        v55 = *(v0 + 1392);
        if (v54 == 1)
        {
          v56 = *(v0 + 1320);
          sub_1B803380C(*(v0 + 1392), type metadata accessor for Friend);
          sub_1B7FCAD28(v0 + 16);
          sub_1B7FB86D4(v56, &unk_1EBA65FD0, &unk_1B80D1920);
        }

        else
        {
          v57 = *(v0 + 1352);
          v58 = *(v0 + 1344);
          v59 = *(v0 + 1328);
          (*v81)(v57, *(v0 + 1320), v59);
          (*v80)(v58, v57, v59);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v91 = v89;
          sub_1B802F254(v58, (v0 + 16), isUniquelyReferenced_nonNull_native);
          sub_1B7FCAD28(v0 + 16);
          (*v79)(v57, v59);
          sub_1B803380C(v55, type metadata accessor for Friend);
          v82 = v91;
          v89 = v91;
        }
      }

      else
      {
LABEL_12:
        if (qword_1ED8DD848 != -1)
        {
          swift_once();
        }

        v47 = sub_1B80C900C();
        __swift_project_value_buffer(v47, qword_1ED8DDF28);
        sub_1B7FC8DA4(v0 + 16, v0 + 896);
        v48 = sub_1B80C8FEC();
        v49 = sub_1B80C941C();
        sub_1B7FCAD28(v0 + 16);
        if (os_log_type_enabled(v48, v49))
        {
          v7 = swift_slowAlloc();
          v8 = swift_slowAlloc();
          v90 = v8;
          *v7 = 136446723;
          *(v7 + 4) = sub_1B7FB84FC(0xD000000000000038, 0x80000001B80CCC10, &v90);
          *(v7 + 12) = 2160;
          *(v7 + 14) = 1752392040;
          *(v7 + 22) = 2081;
          v9 = *(v0 + 160);
          v99 = *(v0 + 144);
          v100 = v9;
          v101 = *(v0 + 176);
          v10 = *(v0 + 96);
          v95 = *(v0 + 80);
          v96 = v10;
          v11 = *(v0 + 128);
          v97 = *(v0 + 112);
          v98 = v11;
          v12 = *(v0 + 32);
          v91 = *(v0 + 16);
          v92 = v12;
          v13 = *(v0 + 64);
          v93 = *(v0 + 48);
          v94 = v13;
          v14 = Handle.description.getter();
          v16 = v15;
          v17 = v100;
          *(v0 + 1200) = v99;
          *(v0 + 1216) = v17;
          *(v0 + 1232) = v101;
          v18 = v96;
          *(v0 + 1136) = v95;
          *(v0 + 1152) = v18;
          v19 = v98;
          *(v0 + 1168) = v97;
          *(v0 + 1184) = v19;
          v20 = v92;
          *v83 = v91;
          *(v0 + 1088) = v20;
          v21 = v94;
          *(v0 + 1104) = v93;
          *(v0 + 1120) = v21;
          sub_1B7FCAD28(v83);
          v22 = sub_1B7FB84FC(v14, v16, &v90);

          *(v7 + 24) = v22;
          _os_log_impl(&dword_1B7FB5000, v48, v49, "%{public}s handle:%{private,mask.hash}s not sharing yet", v7, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1B8CB8970](v8, -1, -1);
          MEMORY[0x1B8CB8970](v7, -1, -1);
        }

        else
        {

          sub_1B7FCAD28(v0 + 16);
        }
      }

      ++v3;
    }

    while (v3 != v87);
  }

  else
  {
    v82 = MEMORY[0x1E69E7CC8];
  }

  if (!*(v82 + 16))
  {
    v69 = sub_1B80830D4(MEMORY[0x1E69E7CC0]);

    goto LABEL_28;
  }

  if (qword_1ED8DD848 != -1)
  {
LABEL_34:
    swift_once();
  }

  v61 = sub_1B80C900C();
  __swift_project_value_buffer(v61, qword_1ED8DDF28);
  v62 = sub_1B80C8FEC();
  v63 = sub_1B80C941C();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *&v91 = v65;
    *v64 = 136446210;
    *(v64 + 4) = sub_1B7FB84FC(0xD000000000000038, 0x80000001B80CCC10, &v91);
    _os_log_impl(&dword_1B7FB5000, v62, v63, "%{public}s Checking if we have any valid cached location that needs rev-geo", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v65);
    MEMORY[0x1B8CB8970](v65, -1, -1);
    MEMORY[0x1B8CB8970](v64, -1, -1);
  }

  v66 = *(v0 + 1312);
  v67 = *(v0 + 1440);
  swift_beginAccess();

  v69 = sub_1B802F778(v68, &v89, v67, v66);

  v70 = sub_1B80C8FEC();
  v71 = sub_1B80C941C();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *&v91 = v73;
    *v72 = 136446723;
    *(v72 + 4) = sub_1B7FB84FC(0xD000000000000038, 0x80000001B80CCC10, &v91);
    *(v72 + 12) = 2160;
    *(v72 + 14) = 1752392040;
    *(v72 + 22) = 2081;
    type metadata accessor for Location(0);
    sub_1B8032C04();
    v74 = sub_1B80C902C();
    v76 = sub_1B7FB84FC(v74, v75, &v91);

    *(v72 + 24) = v76;
    _os_log_impl(&dword_1B7FB5000, v70, v71, "%{public}s\ncachedLocations:%{private,mask.hash}s", v72, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v73, -1, -1);
    MEMORY[0x1B8CB8970](v72, -1, -1);

LABEL_28:

    goto LABEL_30;
  }

LABEL_30:

  v77 = *(v0 + 8);

  return v77(v69);
}

uint64_t sub_1B80237B4()
{
  v17 = v0;

  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1424);
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF28);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C941C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 1424);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1B7FB84FC(0xD000000000000038, 0x80000001B80CCC10, &v16);
    *(v7 + 12) = 2114;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "%{public}s failed with error: %{public}@", v7, 0x16u);
    sub_1B7FB86D4(v8, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B8CB8970](v9, -1, -1);
    MEMORY[0x1B8CB8970](v7, -1, -1);
  }

  v12 = *(v0 + 1424);
  v13 = sub_1B80830D4(MEMORY[0x1E69E7CC0]);

  v14 = *(v0 + 8);

  return v14(v13);
}

uint64_t Session.stopRefreshingLocation(for:priority:clientID:)(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  *(v4 + 65) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1B8023A38, 0, 0);
}

uint64_t sub_1B8023A38()
{
  v4 = v0;
  v3 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B8023AD4;

  return sub_1B7FC225C();
}

uint64_t sub_1B8023AD4()
{

  return MEMORY[0x1EEE6DFA0](sub_1B8023BD0, 0, 0);
}

uint64_t sub_1B8023BD0()
{
  *(v0 + 64) = *(v0 + 65);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1B8023C7C;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_1B8034F2C(v3, (v0 + 64), v2);
}

uint64_t sub_1B8023C7C()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B8023DB0, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t Session.startRefreshingLocation(_:clientID:)(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B8023DEC, 0, 0);
}

uint64_t sub_1B8023DEC()
{
  v4 = v0;
  v3 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1B8023E88;

  return sub_1B7FC225C();
}

uint64_t sub_1B8023E88()
{

  return MEMORY[0x1EEE6DFA0](sub_1B8023F84, 0, 0);
}

uint64_t sub_1B8023F84()
{
  v1 = *(v0 + 72);
  v3 = v1[1];
  v2 = v1[2];
  v4 = *v1;
  *(v0 + 61) = *(v1 + 45);
  *(v0 + 32) = v3;
  *(v0 + 48) = v2;
  *(v0 + 16) = v4;
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *v5 = v0;
  v5[1] = sub_1B8024040;
  v6 = *(v0 + 80);

  return sub_1B80351B0(v0 + 16, v6);
}

uint64_t sub_1B8024040(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 112) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B802417C, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t Session.stopRefreshingLocation(for:priority:)(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  type metadata accessor for ClientID(0);
  *(v3 + 32) = swift_task_alloc();
  *(v3 + 65) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1B8024230, 0, 0);
}

uint64_t sub_1B8024230()
{
  v11 = v0;
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v3 = sub_1B80C90BC();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = *(v0 + 32);
  v9 = 0;
  ClientID.init(identifier:connectionType:)(v3, v5, &v9, v6);
  v10 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v10);
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  *v7 = v0;
  v7[1] = sub_1B8024350;

  return sub_1B7FC225C();
}

uint64_t sub_1B8024350()
{

  return MEMORY[0x1EEE6DFA0](sub_1B802444C, 0, 0);
}

uint64_t sub_1B802444C()
{
  *(v0 + 64) = *(v0 + 65);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1B80244FC;
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);

  return sub_1B8034F2C(v3, (v0 + 64), v2);
}

uint64_t sub_1B80244FC()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B802465C, 0, 0);
  }

  else
  {
    sub_1B803380C(v2[4], type metadata accessor for ClientID);

    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_1B802465C()
{
  sub_1B803380C(*(v0 + 32), type metadata accessor for ClientID);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Session.startRefreshingLocation(_:)(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  type metadata accessor for ClientID(0);
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8024770, 0, 0);
}

uint64_t sub_1B8024770()
{
  v11 = v0;
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v3 = sub_1B80C90BC();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = *(v0 + 88);
  v9 = 0;
  ClientID.init(identifier:connectionType:)(v3, v5, &v9, v6);
  v10 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v10);
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  *v7 = v0;
  v7[1] = sub_1B8024890;

  return sub_1B7FC225C();
}

uint64_t sub_1B8024890()
{

  return MEMORY[0x1EEE6DFA0](sub_1B802498C, 0, 0);
}

uint64_t sub_1B802498C()
{
  v1 = *(v0 + 72);
  v3 = v1[1];
  v2 = v1[2];
  v4 = *v1;
  *(v0 + 61) = *(v1 + 45);
  *(v0 + 32) = v3;
  *(v0 + 48) = v2;
  *(v0 + 16) = v4;
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *v5 = v0;
  v5[1] = sub_1B8024A44;
  v6 = *(v0 + 88);

  return sub_1B80351B0(v0 + 16, v6);
}

uint64_t sub_1B8024A44(uint64_t a1)
{
  v4 = *v2;
  v4[14] = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B8024BB8, 0, 0);
  }

  else
  {
    sub_1B803380C(v4[11], type metadata accessor for ClientID);

    v5 = v4[1];

    return v5(a1);
  }
}

uint64_t sub_1B8024BB8()
{
  sub_1B803380C(*(v0 + 88), type metadata accessor for ClientID);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B8024C3C(_BYTE *a1)
{
  *(v2 + 40) = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66120, &qword_1B80D2FF8);
  *(v2 + 48) = v4;
  *(v2 + 56) = *(v4 - 8);
  *(v2 + 64) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66090, &qword_1B80D2CF8);
  *(v2 + 72) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66080, &unk_1B80D2C48);
  *(v2 + 80) = v5;
  *(v2 + 88) = *(v5 - 8);
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 105) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1B8024DB4, v1, 0);
}

uint64_t sub_1B8024DB4()
{
  v21 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = *(v0 + 40);
  v5 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_stewieStateUpdateContinuation;
  swift_beginAccess();
  sub_1B7FB8448(v4 + v5, v3, &qword_1EBA66090, &qword_1B80D2CF8);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1B7FB86D4(*(v0 + 72), &qword_1EBA66090, &qword_1B80D2CF8);
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v6 = sub_1B80C900C();
    __swift_project_value_buffer(v6, qword_1ED8DDF28);
    v7 = sub_1B80C8FEC();
    v8 = sub_1B80C93DC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v20 = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_1B7FB84FC(0xD00000000000001DLL, 0x80000001B80CCED0, &v20);
      _os_log_impl(&dword_1B7FB5000, v7, v8, "%{public}s missing stewie state update continuation", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x1B8CB8970](v10, -1, -1);
      MEMORY[0x1B8CB8970](v9, -1, -1);
    }
  }

  else
  {
    v11 = *(v0 + 105);
    v13 = *(v0 + 88);
    v12 = *(v0 + 96);
    v14 = *(v0 + 80);
    v16 = *(v0 + 56);
    v15 = *(v0 + 64);
    v17 = *(v0 + 48);
    (*(v13 + 32))(v12, *(v0 + 72), v14);
    *(v0 + 104) = v11;
    sub_1B80C92EC();
    (*(v16 + 8))(v15, v17);
    (*(v13 + 8))(v12, v14);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1B8025048(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v53[0] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D60, &unk_1B80DC530);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v53 - v8;
  v10 = type metadata accessor for Location(0);
  v11 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DD8, &qword_1B80D1EC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B80D1EB0;
  *(inited + 32) = v14;
  *(inited + 40) = v15;
  v55 = inited;

  sub_1B808BE64(v17);
  v18 = sub_1B808DBA4(v55);

  if (*(a2 + v10[15]) <= 1u)
  {
    if (!*(a2 + v10[15]) && *(v4 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_origin))
    {
      v19 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_handlesForLocationRefreshing;
      swift_beginAccess();
      if (*(*(v4 + v19) + 16) && (sub_1B7FDA504(2), (v20 & 1) != 0))
      {

        sub_1B801F398(v21);
        v23 = v22;

        v24 = sub_1B8031520(v23, v18);

        v25 = v24 ^ 1;
      }

      else
      {

        v25 = 0;
      }

      return v25 & 1;
    }

    goto LABEL_15;
  }

  if (*(a2 + v10[15]) != 2)
  {
LABEL_15:

LABEL_16:
    v25 = 1;
    return v25 & 1;
  }

  v26 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_handlesForLocationRefreshing;
  swift_beginAccess();
  if (*(*(v4 + v26) + 16) && (sub_1B7FDA504(2), (v27 & 1) != 0))
  {

    sub_1B801F398(v28);
    v30 = v29;

    v31 = sub_1B8031520(v30, v18);

    if ((v31 & 1) == 0)
    {
      if (qword_1ED8DD848 != -1)
      {
        swift_once();
      }

      v32 = sub_1B80C900C();
      __swift_project_value_buffer(v32, qword_1ED8DDF28);
      v33 = sub_1B80C8FEC();
      v34 = sub_1B80C93EC();
      if (!os_log_type_enabled(v33, v34))
      {
        goto LABEL_25;
      }

      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v54 = v36;
      *v35 = 136446210;
      *(v35 + 4) = sub_1B7FB84FC(0xD000000000000054, 0x80000001B80CCF30, &v54);
      v37 = "%{public}s: Client has a live subscription for that handle";
LABEL_24:
      _os_log_impl(&dword_1B7FB5000, v33, v34, v37, v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x1B8CB8970](v36, -1, -1);
      MEMORY[0x1B8CB8970](v35, -1, -1);
LABEL_25:

      goto LABEL_16;
    }
  }

  else
  {
  }

  sub_1B7FB8448(v53[0], v9, &qword_1EBA65D60, &unk_1B80DC530);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1B7FB86D4(v9, &qword_1EBA65D60, &unk_1B80DC530);
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v39 = sub_1B80C900C();
    __swift_project_value_buffer(v39, qword_1ED8DDF28);
    v33 = sub_1B80C8FEC();
    v34 = sub_1B80C93EC();
    if (!os_log_type_enabled(v33, v34))
    {
      goto LABEL_25;
    }

    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v54 = v36;
    *v35 = 136446210;
    *(v35 + 4) = sub_1B7FB84FC(0xD000000000000054, 0x80000001B80CCF30, &v54);
    v37 = "%{public}s: If there's no location in cache, always forward";
    goto LABEL_24;
  }

  sub_1B80344D4(v9, v13, type metadata accessor for Location);
  v40 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:*&v13[v10[10]] longitude:*&v13[v10[11]]];
  v41 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:*(a2 + v10[10]) longitude:*(a2 + v10[11])];
  [v40 distanceFromLocation_];
  v43 = v42;
  v44 = v10[13];
  v45 = *&v13[v44];
  v46 = *(a2 + v44);
  v47 = v46 - v45 > 60.0 && v45 < v46;
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v48 = sub_1B80C900C();
  __swift_project_value_buffer(v48, qword_1ED8DDF28);
  v49 = sub_1B80C8FEC();
  v50 = sub_1B80C93EC();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v54 = v52;
    *v51 = 136446722;
    *(v51 + 4) = sub_1B7FB84FC(0xD000000000000054, 0x80000001B80CCF30, &v54);
    *(v51 + 12) = 1024;
    *(v51 + 14) = v43 > 300.0;
    *(v51 + 18) = 1024;
    *(v51 + 20) = v47;
    _os_log_impl(&dword_1B7FB5000, v49, v50, "%{public}s hasSignificantlyMoved: %{BOOL}d hasSignificantTimeUpdate: %{BOOL}d", v51, 0x18u);
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x1B8CB8970](v52, -1, -1);
    MEMORY[0x1B8CB8970](v51, -1, -1);
  }

  sub_1B803380C(v13, type metadata accessor for Location);
  v25 = v43 > 300.0 || v47;
  return v25 & 1;
}

uint64_t sub_1B8025790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[76] = a6;
  v6[75] = a5;
  v6[74] = a4;
  v6[77] = type metadata accessor for LocationStreamChange(0);
  v6[78] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66078, &qword_1B80D2C10);
  v6[79] = v8;
  v6[80] = *(v8 - 8);
  v6[81] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66088, &qword_1B80D2CF0);
  v6[82] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D0, &qword_1B80D2E90);
  v6[83] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D60, &unk_1B80DC530);
  v6[84] = swift_task_alloc();
  v9 = type metadata accessor for Location(0);
  v6[85] = v9;
  v6[86] = *(v9 - 8);
  v6[87] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B802599C, a4, 0);
}

uint64_t sub_1B802599C()
{
  v49 = v0;
  v1 = *(v0 + 608);
  v2 = *(v0 + 600);
  v3 = v2[9];
  v48[8] = v2[8];
  v48[9] = v3;
  v48[10] = v2[10];
  v4 = v2[5];
  v48[4] = v2[4];
  v48[5] = v4;
  v5 = v2[7];
  v48[6] = v2[6];
  v48[7] = v5;
  v6 = v2[1];
  v48[0] = *v2;
  v48[1] = v6;
  v7 = v2[3];
  v48[2] = v2[2];
  v48[3] = v7;
  if (sub_1B8026260(v48, v1))
  {
    v8 = *(v0 + 600);
    v10 = v8[1];
    v9 = v8[2];
    *(v0 + 192) = *v8;
    *(v0 + 208) = v10;
    *(v0 + 224) = v9;
    v11 = v8[6];
    v13 = v8[3];
    v12 = v8[4];
    *(v0 + 272) = v8[5];
    *(v0 + 288) = v11;
    *(v0 + 240) = v13;
    *(v0 + 256) = v12;
    v14 = v8[10];
    v16 = v8[7];
    v15 = v8[8];
    *(v0 + 336) = v8[9];
    *(v0 + 352) = v14;
    *(v0 + 304) = v16;
    *(v0 + 320) = v15;
    v17 = swift_task_alloc();
    *(v0 + 704) = v17;
    *v17 = v0;
    v17[1] = sub_1B8025DBC;
    v18 = *(v0 + 696);
    v19 = *(v0 + 608);

    return sub_1B8026644(v18, (v0 + 192), v19);
  }

  else
  {
    sub_1B80337A4(*(v0 + 608), *(v0 + 696), type metadata accessor for Location);
    v21 = *(v0 + 656);
    v22 = *(v0 + 640);
    v23 = *(v0 + 632);
    v24 = *(v0 + 592);
    v25 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_locationContinuation;
    swift_beginAccess();
    sub_1B7FB8448(v24 + v25, v21, &qword_1EBA66088, &qword_1B80D2CF0);
    v26 = (*(v22 + 48))(v21, 1, v23);
    v27 = *(v0 + 696);
    if (v26)
    {
      v28 = *(v0 + 656);
      sub_1B803380C(*(v0 + 696), type metadata accessor for Location);
      sub_1B7FB86D4(v28, &qword_1EBA66088, &qword_1B80D2CF0);
      v29 = 1;
    }

    else
    {
      v30 = *(v0 + 656);
      v31 = *(v0 + 648);
      v32 = *(v0 + 640);
      v33 = *(v0 + 632);
      v34 = *(v0 + 624);
      v35 = *(v0 + 600);
      (*(v32 + 16))(v31, v30, v33);
      sub_1B7FB86D4(v30, &qword_1EBA66088, &qword_1B80D2CF0);
      v36 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660E8, &qword_1B80D2EB0) + 48));
      sub_1B80337A4(v27, v34, type metadata accessor for Location);
      v38 = v35[1];
      v37 = v35[2];
      *v36 = *v35;
      v36[1] = v38;
      v36[2] = v37;
      v39 = v35[6];
      v41 = v35[3];
      v40 = v35[4];
      v36[5] = v35[5];
      v36[6] = v39;
      v36[3] = v41;
      v36[4] = v40;
      v42 = v35[10];
      v44 = v35[7];
      v43 = v35[8];
      v36[9] = v35[9];
      v36[10] = v42;
      v36[7] = v44;
      v36[8] = v43;
      swift_storeEnumTagMultiPayload();
      sub_1B7FC8DA4(v35, v0 + 16);
      sub_1B80C92EC();
      (*(v32 + 8))(v31, v33);
      sub_1B803380C(v27, type metadata accessor for Location);
      v29 = 0;
    }

    v45 = *(v0 + 664);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660E0, &qword_1B80D2EA8);
    (*(*(v46 - 8) + 56))(v45, v29, 1, v46);
    sub_1B7FB86D4(v45, &qword_1EBA660D0, &qword_1B80D2E90);

    v47 = *(v0 + 8);

    return v47();
  }
}

uint64_t sub_1B8025DBC()
{
  v1 = *(*v0 + 592);

  return MEMORY[0x1EEE6DFA0](sub_1B8025ECC, v1, 0);
}

uint64_t sub_1B8025ECC()
{
  v1 = v0[86];
  v2 = v0[85];
  v3 = v0[84];
  v4 = v0[75];
  sub_1B80337A4(v0[87], v3, type metadata accessor for Location);
  (*(v1 + 56))(v3, 0, 1, v2);
  swift_beginAccess();
  sub_1B7FC8DA4(v4, (v0 + 46));
  sub_1B8014B0C(v3, v4);
  swift_endAccess();
  v5 = v0[82];
  v6 = v0[80];
  v7 = v0[79];
  v8 = v0[74];
  v9 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_locationContinuation;
  swift_beginAccess();
  sub_1B7FB8448(v8 + v9, v5, &qword_1EBA66088, &qword_1B80D2CF0);
  if ((*(v6 + 48))(v5, 1, v7))
  {
    v10 = v0[82];
    sub_1B803380C(v0[87], type metadata accessor for Location);
    sub_1B7FB86D4(v10, &qword_1EBA66088, &qword_1B80D2CF0);
    v11 = 1;
  }

  else
  {
    v12 = v0[87];
    v13 = v0[82];
    v14 = v0[81];
    v15 = v0[80];
    v16 = v0[79];
    v17 = v0[78];
    v18 = v0[75];
    (*(v15 + 16))(v14, v13, v16);
    sub_1B7FB86D4(v13, &qword_1EBA66088, &qword_1B80D2CF0);
    v19 = (v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660E8, &qword_1B80D2EB0) + 48));
    sub_1B80337A4(v12, v17, type metadata accessor for Location);
    v21 = v18[1];
    v20 = v18[2];
    *v19 = *v18;
    v19[1] = v21;
    v19[2] = v20;
    v22 = v18[6];
    v24 = v18[3];
    v23 = v18[4];
    v19[5] = v18[5];
    v19[6] = v22;
    v19[3] = v24;
    v19[4] = v23;
    v25 = v18[10];
    v27 = v18[7];
    v26 = v18[8];
    v19[9] = v18[9];
    v19[10] = v25;
    v19[7] = v27;
    v19[8] = v26;
    swift_storeEnumTagMultiPayload();
    sub_1B7FC8DA4(v18, (v0 + 2));
    sub_1B80C92EC();
    (*(v15 + 8))(v14, v16);
    sub_1B803380C(v12, type metadata accessor for Location);
    v11 = 0;
  }

  v28 = v0[83];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660E0, &qword_1B80D2EA8);
  (*(*(v29 - 8) + 56))(v28, v11, 1, v29);
  sub_1B7FB86D4(v28, &qword_1EBA660D0, &qword_1B80D2E90);

  v30 = v0[1];

  return v30();
}

uint64_t sub_1B8026260(_OWORD *a1, uint64_t a2)
{
  v5 = type metadata accessor for Location(0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[5];
  v42[4] = a1[4];
  v42[5] = v9;
  v10 = a1[3];
  v42[2] = a1[2];
  v42[3] = v10;
  v11 = a1[10];
  v42[9] = a1[9];
  v42[10] = v11;
  v12 = a1[8];
  v42[7] = a1[7];
  v42[8] = v12;
  v42[6] = a1[6];
  v13 = a1[1];
  v42[0] = *a1;
  v42[1] = v13;
  v14 = (a2 + *(v6 + 28));
  v15 = v14[9];
  v45 = v14[8];
  v46 = v15;
  v16 = v14[11];
  v47 = v14[10];
  v48 = v16;
  v17 = v14[5];
  v43[4] = v14[4];
  v43[5] = v17;
  v18 = v14[7];
  v43[6] = v14[6];
  v44 = v18;
  v19 = v14[1];
  v43[0] = *v14;
  v43[1] = v19;
  v20 = v14[3];
  v43[2] = v14[2];
  v43[3] = v20;
  if (sub_1B8032DBC(v43) == 1)
  {
    goto LABEL_2;
  }

  if (*(&v46 + 1))
  {
LABEL_4:

    v21 = 1;
    goto LABEL_5;
  }

  v21 = 1;
  if (!*(&v47 + 1) && !*(&v48 + 1) && !*(&v44 + 1))
  {
    if (!*(&v45 + 1))
    {
LABEL_2:
      v21 = 0;
      goto LABEL_5;
    }

    goto LABEL_4;
  }

LABEL_5:
  v22 = *(v2 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_origin);
  v23 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_handlesNeedingReverseGeocoding;
  swift_beginAccess();
  v24 = *(v2 + v23);

  v25 = sub_1B801F1CC(v42, v24);

  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v26 = (v21 ^ 1) & ((v22 == 1) | v25);
  v27 = sub_1B80C900C();
  __swift_project_value_buffer(v27, qword_1ED8DDF28);
  sub_1B80337A4(a2, v8, type metadata accessor for Location);
  sub_1B7FC8DA4(v42, v41);
  v28 = sub_1B80C8FEC();
  v29 = sub_1B80C93EC();
  sub_1B7FCAD28(v42);
  if (os_log_type_enabled(v28, v29))
  {
    v40 = v22 == 1;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v39 = v21;
    v32 = v31;
    v41[0] = v31;
    *v30 = 141559811;
    *(v30 + 4) = 1752392040;
    *(v30 + 12) = 2081;
    *(v30 + 14) = sub_1B7FB84FC(*&v42[0], *(&v42[0] + 1), v41);
    *(v30 + 22) = 2160;
    *(v30 + 24) = 1752392040;
    *(v30 + 32) = 2081;
    v33 = Location.description.getter();
    v35 = v34;
    sub_1B803380C(v8, type metadata accessor for Location);
    v36 = sub_1B7FB84FC(v33, v35, v41);

    *(v30 + 34) = v36;
    *(v30 + 42) = 1024;
    *(v30 + 44) = v26;
    *(v30 + 48) = 1024;
    v37 = v40;
    *(v30 + 50) = v39;
    *(v30 + 54) = 1024;
    *(v30 + 56) = v37;
    *(v30 + 60) = 1024;
    *(v30 + 62) = v25 & 1;
    _os_log_impl(&dword_1B7FB5000, v28, v29, "Handle: %{private,mask.hash}s Location: %{private,mask.hash}s isReverseGeocodingNeeded: %{BOOL}d, hasAddress: %{BOOL}d, originIsMessages: %{BOOL}d, handleNeedsRevGeo: %{BOOL}d", v30, 0x42u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v32, -1, -1);
    MEMORY[0x1B8CB8970](v30, -1, -1);
  }

  else
  {

    sub_1B803380C(v8, type metadata accessor for Location);
  }

  return v26;
}

uint64_t sub_1B8026644(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(v4 + 1080) = v3;
  *(v4 + 1072) = a3;
  *(v4 + 1064) = a2;
  *(v4 + 1056) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D60, &unk_1B80DC530);
  *(v4 + 1088) = swift_task_alloc();
  v6 = type metadata accessor for Location(0);
  *(v4 + 1096) = v6;
  *(v4 + 1104) = *(v6 - 8);
  *(v4 + 1112) = swift_task_alloc();
  *(v4 + 1120) = swift_task_alloc();
  *(v4 + 1128) = type metadata accessor for ReverseGeocodingRequest(0);
  *(v4 + 1136) = swift_task_alloc();
  v7 = a2[9];
  *(v4 + 800) = a2[8];
  *(v4 + 816) = v7;
  *(v4 + 832) = a2[10];
  v8 = a2[5];
  *(v4 + 736) = a2[4];
  *(v4 + 752) = v8;
  v9 = a2[7];
  *(v4 + 768) = a2[6];
  *(v4 + 784) = v9;
  v10 = a2[1];
  *(v4 + 672) = *a2;
  *(v4 + 688) = v10;
  v11 = a2[3];
  *(v4 + 704) = a2[2];
  *(v4 + 720) = v11;

  return MEMORY[0x1EEE6DFA0](sub_1B80267C0, v3, 0);
}

uint64_t sub_1B80267C0()
{
  v11 = v0;
  v1 = *(v0 + 1080);
  v2 = *(v0 + 1064);
  v3 = v2[9];
  v10[8] = v2[8];
  v10[9] = v3;
  v10[10] = v2[10];
  v4 = v2[5];
  v10[4] = v2[4];
  v10[5] = v4;
  v5 = v2[7];
  v10[6] = v2[6];
  v10[7] = v5;
  v6 = v2[1];
  v10[0] = *v2;
  v10[1] = v6;
  v7 = v2[3];
  v10[2] = v2[2];
  v10[3] = v7;
  *(v0 + 1204) = sub_1B8027C80(v10) & 1;
  v8 = *(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_reverseGeocoder);
  *(v0 + 1144) = v8;
  *(v0 + 1152) = *(v0 + 672);
  *(v0 + 1160) = *(v0 + 680);

  return MEMORY[0x1EEE6DFA0](sub_1B8026888, v8, 0);
}

uint64_t sub_1B8026888()
{
  v1 = *(v0 + 1096);
  v2 = *(v0 + 1072);
  v3 = *(v2 + v1[8]);
  *(v0 + 1168) = v3;
  v4 = v3 >= 200.0 || v3 < 0.0;
  v5 = v1[15];
  *(v0 + 1200) = v5;
  if (*(v2 + v5) != 2)
  {
    if ((*(v0 + 1204) & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v6 = *(v2 + v1[16]);
  if (v6 == 1)
  {
    if ((*(v0 + 1204) & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v4 = 1;
    goto LABEL_10;
  }

  v15 = *(v0 + 1204) ^ 1;
  if (v6 != 2)
  {
    v15 = 0;
  }

  if ((v15 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  v7 = *(v0 + 1160);
  v8 = *(v0 + 1152);
  v9 = *(v0 + 1144);
  v10 = *(v0 + 1136);
  v11 = *(v0 + 1128);
  sub_1B80337A4(v2, v10 + v11[5], type metadata accessor for Location);
  sub_1B7FB8448(v9 + OBJC_IVAR____TtC12FindMyLocate15ReverseGeocoder_locale, v10 + v11[6], &qword_1EBA65E00, &qword_1B80D2160);
  *v10 = v8;
  v10[1] = v7;
  *(v10 + v11[7]) = v4;
  v12 = sub_1B7FCD170(&qword_1EBA65E10, type metadata accessor for ReverseGeocoder, &protocol conformance descriptor for ReverseGeocoder);

  v13 = swift_task_alloc();
  *(v0 + 1176) = v13;
  *(v13 + 16) = v9;
  *(v13 + 24) = v10;
  v14 = swift_task_alloc();
  *(v0 + 1184) = v14;
  *v14 = v0;
  v14[1] = sub_1B8026AAC;

  return MEMORY[0x1EEE6DE38](v0 + 16, v9, v12, 0xD000000000000011, 0x80000001B80CCB50, sub_1B8032DB4, v13, &type metadata for Address);
}

uint64_t sub_1B8026AAC()
{
  v2 = *v1;
  *(*v1 + 1192) = v0;

  v3 = *(v2 + 1144);
  if (v0)
  {
    v4 = sub_1B80270AC;
  }

  else
  {
    v4 = sub_1B8026BC4;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B8026BC4()
{
  v1 = *(v0 + 1080);
  sub_1B803380C(*(v0 + 1136), type metadata accessor for ReverseGeocodingRequest);

  return MEMORY[0x1EEE6DFA0](sub_1B8026C44, v1, 0);
}

uint64_t sub_1B8026C44()
{
  v53 = v0;
  v1 = *(v0 + 1200);
  v2 = *(v0 + 1168);
  v3 = *(v0 + 1096);
  v4 = *(v0 + 1072);
  v5 = *(v0 + 1056);
  memcpy(v52, (v0 + 16), sizeof(v52));
  PlaceMark.init(address:)(v52, (v0 + 480));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E30, &qword_1B80DC700);
  (*(*(v6 - 8) + 16))(v5, v4, v6);
  v7 = *(v0 + 624);
  *(v0 + 416) = *(v0 + 608);
  *(v0 + 432) = v7;
  v8 = *(v0 + 656);
  *(v0 + 448) = *(v0 + 640);
  *(v0 + 464) = v8;
  v9 = *(v0 + 560);
  *(v0 + 352) = *(v0 + 544);
  *(v0 + 368) = v9;
  v10 = *(v0 + 592);
  *(v0 + 384) = *(v0 + 576);
  *(v0 + 400) = v10;
  v11 = *(v0 + 496);
  *(v0 + 288) = *(v0 + 480);
  *(v0 + 304) = v11;
  v12 = *(v0 + 528);
  *(v0 + 320) = *(v0 + 512);
  *(v0 + 336) = v12;
  nullsub_1();
  v13 = *(v4 + v3[6]);
  v14 = *(v4 + v3[10]);
  v15 = *(v4 + v3[11]);
  v16 = *(v4 + v3[12]);
  v17 = *(v4 + v3[13]);
  v18 = *(v4 + v3[7]);
  v19 = *(v4 + v3[9]);
  v20 = *(v4 + v3[14]);
  v21 = *(v4 + v1);
  v22 = *(v4 + v3[16]);
  v23 = (v5 + v3[5]);
  v24 = *(v0 + 288);
  v25 = *(v0 + 304);
  v26 = *(v0 + 336);
  v23[2] = *(v0 + 320);
  v23[3] = v26;
  *v23 = v24;
  v23[1] = v25;
  v27 = *(v0 + 352);
  v28 = *(v0 + 368);
  v29 = *(v0 + 400);
  v23[6] = *(v0 + 384);
  v23[7] = v29;
  v23[4] = v27;
  v23[5] = v28;
  v30 = *(v0 + 416);
  v31 = *(v0 + 432);
  v32 = *(v0 + 464);
  v23[10] = *(v0 + 448);
  v23[11] = v32;
  v23[8] = v30;
  v23[9] = v31;
  *(v5 + v3[6]) = v13;
  *(v5 + v3[7]) = v18;
  *(v5 + v3[8]) = v2;
  *(v5 + v3[9]) = v19;
  *(v5 + v3[10]) = v14;
  *(v5 + v3[11]) = v15;
  *(v5 + v3[12]) = v16;
  *(v5 + v3[13]) = v17;
  *(v5 + v3[14]) = v20;
  *(v5 + v3[15]) = v21;
  *(v5 + v3[16]) = v22;
  v33 = qword_1ED8DD848;

  if (v33 != -1)
  {
    swift_once();
  }

  v34 = *(v0 + 1120);
  v35 = *(v0 + 1056);
  v36 = sub_1B80C900C();
  __swift_project_value_buffer(v36, qword_1ED8DDF28);
  sub_1B80337A4(v35, v34, type metadata accessor for Location);
  v37 = sub_1B80C8FEC();
  v38 = sub_1B80C941C();
  v39 = os_log_type_enabled(v37, v38);
  v40 = *(v0 + 1120);
  if (v39)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v52[0] = v42;
    *v41 = 141558275;
    *(v41 + 4) = 1752392040;
    *(v41 + 12) = 2081;
    v43 = Location.description.getter();
    v45 = v44;
    sub_1B803380C(v40, type metadata accessor for Location);
    v46 = sub_1B7FB84FC(v43, v45, v52);

    *(v41 + 14) = v46;
    _os_log_impl(&dword_1B7FB5000, v37, v38, "Rev-geo succeeded! Location: %{private,mask.hash}s", v41, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x1B8CB8970](v42, -1, -1);
    MEMORY[0x1B8CB8970](v41, -1, -1);
  }

  else
  {

    sub_1B803380C(v40, type metadata accessor for Location);
  }

  v47 = *(v0 + 1104);
  v48 = *(v0 + 1096);
  v49 = *(v0 + 1088);
  sub_1B80337A4(*(v0 + 1056), v49, type metadata accessor for Location);
  (*(v47 + 56))(v49, 0, 1, v48);
  swift_beginAccess();
  sub_1B7FC8DA4(v0 + 672, v0 + 848);
  sub_1B8014B0C(v49, (v0 + 672));
  swift_endAccess();

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_1B80270AC()
{
  v1 = *(v0 + 1136);
  v2 = *(v0 + 1080);

  sub_1B803380C(v1, type metadata accessor for ReverseGeocodingRequest);

  return MEMORY[0x1EEE6DFA0](sub_1B8027138, v2, 0);
}

uint64_t sub_1B8027138()
{
  v27 = v0;
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v1 = v0[149];
  v2 = v0[139];
  v3 = v0[134];
  v4 = sub_1B80C900C();
  __swift_project_value_buffer(v4, qword_1ED8DDF28);
  sub_1B80337A4(v3, v2, type metadata accessor for Location);
  v5 = v1;
  v6 = sub_1B80C8FEC();
  v7 = sub_1B80C93FC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[149];
  v10 = v0[139];
  if (v8)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136446723;
    v0[131] = v9;
    v13 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
    v14 = sub_1B80C90EC();
    v16 = sub_1B7FB84FC(v14, v15, &v26);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2160;
    *(v11 + 14) = 1752392040;
    *(v11 + 22) = 2081;
    v17 = Location.description.getter();
    v19 = v18;
    sub_1B803380C(v10, type metadata accessor for Location);
    v20 = sub_1B7FB84FC(v17, v19, &v26);

    *(v11 + 24) = v20;
    _os_log_impl(&dword_1B7FB5000, v6, v7, "Rev-geo failed %{public}s. Returning original location: %{private,mask.hash}s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v12, -1, -1);
    MEMORY[0x1B8CB8970](v11, -1, -1);
  }

  else
  {

    sub_1B803380C(v10, type metadata accessor for Location);
  }

  sub_1B80337A4(v0[134], v0[132], type metadata accessor for Location);
  v21 = v0[138];
  v22 = v0[137];
  v23 = v0[136];
  sub_1B80337A4(v0[132], v23, type metadata accessor for Location);
  (*(v21 + 56))(v23, 0, 1, v22);
  swift_beginAccess();
  sub_1B7FC8DA4((v0 + 84), (v0 + 106));
  sub_1B8014B0C(v23, v0 + 84);
  swift_endAccess();

  v24 = v0[1];

  return v24();
}

uint64_t sub_1B80274A8(uint64_t a1)
{
  v2[97] = v1;
  v2[96] = a1;
  v2[98] = type metadata accessor for LocationStreamChange(0);
  v2[99] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66078, &qword_1B80D2C10);
  v2[100] = v3;
  v2[101] = *(v3 - 8);
  v2[102] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66088, &qword_1B80D2CF0);
  v2[103] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D0, &qword_1B80D2E90);
  v2[104] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D60, &unk_1B80DC530);
  v2[105] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8027650, v1, 0);
}

uint64_t sub_1B8027650()
{
  v74 = v0;
  v1 = *(v0 + 768);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 808);
    v4 = *(v0 + 776);
    v5 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_locationForHandles;
    v6 = (v1 + 32);
    v72 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_locationContinuation;
    swift_beginAccess();
    v71 = (v3 + 48);
    v67 = (v3 + 8);
    v68 = (v3 + 16);
    v69 = v5;
    do
    {
      v23 = *v6;
      v24 = v6[2];
      *(v0 + 32) = v6[1];
      *(v0 + 48) = v24;
      *(v0 + 16) = v23;
      v25 = v6[3];
      v26 = v6[4];
      v27 = v6[6];
      *(v0 + 96) = v6[5];
      *(v0 + 112) = v27;
      *(v0 + 64) = v25;
      *(v0 + 80) = v26;
      v28 = v6[7];
      v29 = v6[8];
      v30 = v6[10];
      *(v0 + 160) = v6[9];
      *(v0 + 176) = v30;
      *(v0 + 128) = v28;
      *(v0 + 144) = v29;
      sub_1B7FC8DA4(v0 + 16, v0 + 192);
      if (qword_1ED8DD848 != -1)
      {
        swift_once();
      }

      v31 = sub_1B80C900C();
      __swift_project_value_buffer(v31, qword_1ED8DDF28);
      sub_1B7FC8DA4(v0 + 16, v0 + 368);
      v32 = sub_1B80C8FEC();
      v33 = sub_1B80C941C();
      sub_1B7FCAD28(v0 + 16);
      if (os_log_type_enabled(v32, v33))
      {
        v34 = *(v0 + 16);
        v35 = *(v0 + 24);
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v73 = v37;
        *v36 = 141558275;
        *(v36 + 4) = 1752392040;
        *(v36 + 12) = 2081;

        v38 = sub_1B7FB84FC(v34, v35, &v73);

        *(v36 + 14) = v38;
        _os_log_impl(&dword_1B7FB5000, v32, v33, "Removing cached location for handle: %{private,mask.hash}s.", v36, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v37);
        v39 = v37;
        v5 = v69;
        MEMORY[0x1B8CB8970](v39, -1, -1);
        MEMORY[0x1B8CB8970](v36, -1, -1);
      }

      swift_beginAccess();
      v40 = sub_1B7FDA47C((v0 + 16));
      if (v41)
      {
        v42 = v40;
        v70 = v2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = *(v4 + v5);
        v73 = v44;
        *(v4 + v5) = 0x8000000000000000;
        v45 = v4;
        v46 = v5;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1B8092058();
          v44 = v73;
        }

        v47 = *(v0 + 840);
        v48 = (*(v44 + 48) + 176 * v42);
        v50 = v48[1];
        v49 = v48[2];
        *(v0 + 544) = *v48;
        *(v0 + 560) = v50;
        *(v0 + 576) = v49;
        v51 = v48[6];
        v53 = v48[3];
        v52 = v48[4];
        *(v0 + 624) = v48[5];
        *(v0 + 640) = v51;
        *(v0 + 592) = v53;
        *(v0 + 608) = v52;
        v54 = v48[10];
        v56 = v48[7];
        v55 = v48[8];
        *(v0 + 688) = v48[9];
        *(v0 + 704) = v54;
        *(v0 + 656) = v56;
        *(v0 + 672) = v55;
        sub_1B7FCAD28(v0 + 544);
        v57 = *(v44 + 56);
        v58 = type metadata accessor for Location(0);
        v59 = *(v58 - 8);
        sub_1B80344D4(v57 + *(v59 + 72) * v42, v47, type metadata accessor for Location);
        sub_1B80140E8(v42, v44);
        *(v45 + v46) = v44;

        (*(v59 + 56))(v47, 0, 1, v58);
        v5 = v46;
        v4 = v45;
        v2 = v70;
      }

      else
      {
        v60 = *(v0 + 840);
        v61 = type metadata accessor for Location(0);
        (*(*(v61 - 8) + 56))(v60, 1, 1, v61);
      }

      v62 = *(v0 + 824);
      v63 = *(v0 + 800);
      sub_1B7FB86D4(*(v0 + 840), &qword_1EBA65D60, &unk_1B80DC530);
      swift_endAccess();
      sub_1B7FB8448(v4 + v72, v62, &qword_1EBA66088, &qword_1B80D2CF0);
      if ((*v71)(v62, 1, v63))
      {
        v64 = *(v0 + 824);
        sub_1B7FCAD28(v0 + 16);
        sub_1B7FB86D4(v64, &qword_1EBA66088, &qword_1B80D2CF0);
        v20 = 1;
      }

      else
      {
        v7 = *(v0 + 824);
        v8 = *(v0 + 816);
        v9 = *(v0 + 800);
        v10 = *(v0 + 792);
        (*v68)(v8, v7, v9);
        sub_1B7FB86D4(v7, &qword_1EBA66088, &qword_1B80D2CF0);
        v12 = *(v0 + 32);
        v11 = *(v0 + 48);
        *v10 = *(v0 + 16);
        v10[1] = v12;
        v10[2] = v11;
        v13 = *(v0 + 112);
        v15 = *(v0 + 64);
        v14 = *(v0 + 80);
        v10[5] = *(v0 + 96);
        v10[6] = v13;
        v10[3] = v15;
        v10[4] = v14;
        v16 = *(v0 + 176);
        v18 = *(v0 + 128);
        v17 = *(v0 + 144);
        v10[9] = *(v0 + 160);
        v10[10] = v16;
        v10[7] = v18;
        v10[8] = v17;
        swift_storeEnumTagMultiPayload();
        sub_1B80C92EC();
        v19 = v8;
        v5 = v69;
        (*v67)(v19, v9);
        v20 = 0;
      }

      v21 = *(v0 + 832);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660E0, &qword_1B80D2EA8);
      (*(*(v22 - 8) + 56))(v21, v20, 1, v22);
      sub_1B7FB86D4(v21, &qword_1EBA660D0, &qword_1B80D2E90);
      v6 += 11;
      --v2;
    }

    while (v2);
  }

  v65 = *(v0 + 8);

  return v65();
}

uint64_t sub_1B8027C80(__int128 *a1)
{
  v2 = v1;
  v3 = a1[9];
  v112 = a1[8];
  v113 = v3;
  v114 = a1[10];
  v4 = a1[5];
  v108 = a1[4];
  v109 = v4;
  v5 = a1[7];
  v110 = a1[6];
  v111 = v5;
  v6 = a1[1];
  v104 = *a1;
  v105 = v6;
  v7 = a1[3];
  v106 = a1[2];
  v107 = v7;
  v8 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_handlesForLocationRefreshing;
  swift_beginAccess();
  v9 = *(v1 + v8);
  if (*(v9 + 16))
  {
    v10 = sub_1B7FDA504(3);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 8 * v10);

      v13 = sub_1B801F1CC(&v104, v12);

      v14 = *(v2 + v8);
      v17 = *(v14 + 64);
      v16 = v14 + 64;
      v15 = v17;
      v18 = 1 << *(*(v2 + v8) + 32);
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      else
      {
        v19 = -1;
      }

      v20 = v19 & v15;
      v21 = (v18 + 63) >> 6;

      v23 = 0;
      while (v20)
      {
LABEL_12:
        v25 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
        v26 = v25 | (v23 << 6);
        if (*(*(v22 + 48) + v26) != 3)
        {
          v27 = *(*(v22 + 56) + 8 * v26);
          if (*(v27 + 16))
          {
            v67 = *(*(v22 + 48) + v26);
            v68 = v22;
            sub_1B80C993C();
            sub_1B80C90FC();

            sub_1B80C911C();

            v28 = sub_1B80C997C();
            v29 = -1 << *(v27 + 32);
            v30 = v28 & ~v29;
            if ((*(v27 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30))
            {
              v69 = ~v29;
              while (1)
              {
                v31 = (*(v27 + 48) + 176 * v30);
                v33 = v31[1];
                v32 = v31[2];
                v93 = *v31;
                v94 = v33;
                v95 = v32;
                v34 = v31[3];
                v35 = v31[4];
                v36 = v31[6];
                v98 = v31[5];
                v99 = v36;
                v96 = v34;
                v97 = v35;
                v37 = v31[7];
                v38 = v31[8];
                v39 = v31[10];
                v102 = v31[9];
                v103 = v39;
                v100 = v37;
                v101 = v38;
                v40 = sub_1B80C90FC();
                v42 = v41;
                if (v40 == sub_1B80C90FC() && v42 == v43)
                {
                  break;
                }

                v44 = sub_1B80C981C();
                sub_1B7FC8DA4(&v93, &v82);

                sub_1B7FCAD28(&v93);
                if (v44)
                {
                  goto LABEL_29;
                }

                v30 = (v30 + 1) & v69;
                if (((*(v27 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
                {
                  goto LABEL_20;
                }
              }

              sub_1B7FC8DA4(&v93, &v82);

              sub_1B7FCAD28(&v93);
LABEL_29:

              if (qword_1ED8DD848 != -1)
              {
                swift_once();
              }

              v55 = sub_1B80C900C();
              __swift_project_value_buffer(v55, qword_1ED8DDF28);
              sub_1B7FC8DA4(&v104, &v82);
              v56 = sub_1B80C8FEC();
              v57 = sub_1B80C93EC();
              sub_1B7FCAD28(&v104);
              if (os_log_type_enabled(v56, v57))
              {
                v58 = swift_slowAlloc();
                v59 = swift_slowAlloc();
                v81 = v59;
                *v58 = 141558531;
                *(v58 + 4) = 1752392040;
                *(v58 + 12) = 2081;
                v78 = v112;
                v79 = v113;
                v80 = v114;
                v74 = v108;
                v75 = v109;
                v76 = v110;
                v77 = v111;
                v70 = v104;
                v71 = v105;
                v72 = v106;
                v73 = v107;
                sub_1B7FC8DA4(&v104, &v82);
                v60 = Handle.description.getter();
                v62 = v61;
                v90 = v78;
                v91 = v79;
                v92 = v80;
                v86 = v74;
                v87 = v75;
                v88 = v76;
                v89 = v77;
                v82 = v70;
                v83 = v71;
                v84 = v72;
                v85 = v73;
                sub_1B7FCAD28(&v82);
                v63 = sub_1B7FB84FC(v60, v62, &v81);

                *(v58 + 14) = v63;
                *(v58 + 22) = 2080;
                if (v67 > 1)
                {
                  if (v67 == 2)
                  {
                    v64 = 0xE500000000000000;
                    v65 = 0x6576696C2ELL;
                  }

                  else
                  {
                    v65 = 0xD000000000000014;
                    v64 = 0x80000001B80CBF40;
                  }
                }

                else if (v67)
                {
                  v64 = 0xE800000000000000;
                  v65 = 0x776F6C6C6168732ELL;
                }

                else
                {
                  v64 = 0x80000001B80CBFD0;
                  v65 = 0xD000000000000015;
                }

                v66 = sub_1B7FB84FC(v65, v64, &v81);

                *(v58 + 24) = v66;
                _os_log_impl(&dword_1B7FB5000, v56, v57, "%{private,mask.hash}s also subscribed to %s", v58, 0x20u);
                swift_arrayDestroy();
                MEMORY[0x1B8CB8970](v59, -1, -1);
                MEMORY[0x1B8CB8970](v58, -1, -1);
              }

              goto LABEL_25;
            }

LABEL_20:

            v22 = v68;
          }
        }
      }

      while (1)
      {
        v24 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v24 >= v21)
        {

          return v13 & 1;
        }

        v20 = *(v16 + 8 * v24);
        ++v23;
        if (v20)
        {
          v23 = v24;
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_42;
    }
  }

  if (qword_1ED8DD848 != -1)
  {
LABEL_42:
    swift_once();
  }

  v45 = sub_1B80C900C();
  __swift_project_value_buffer(v45, qword_1ED8DDF28);
  sub_1B7FC8DA4(&v104, &v93);
  v46 = sub_1B80C8FEC();
  v47 = sub_1B80C93EC();
  sub_1B7FCAD28(&v104);
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *&v70 = v49;
    *v48 = 141558275;
    *(v48 + 4) = 1752392040;
    *(v48 + 12) = 2081;
    v90 = v112;
    v91 = v113;
    v92 = v114;
    v86 = v108;
    v87 = v109;
    v88 = v110;
    v89 = v111;
    v82 = v104;
    v83 = v105;
    v84 = v106;
    v85 = v107;
    sub_1B7FC8DA4(&v104, &v93);
    v50 = Handle.description.getter();
    v52 = v51;
    v101 = v90;
    v102 = v91;
    v103 = v92;
    v97 = v86;
    v98 = v87;
    v99 = v88;
    v100 = v89;
    v93 = v82;
    v94 = v83;
    v95 = v84;
    v96 = v85;
    sub_1B7FCAD28(&v93);
    v53 = sub_1B7FB84FC(v50, v52, &v70);

    *(v48 + 14) = v53;
    _os_log_impl(&dword_1B7FB5000, v46, v47, "%{private,mask.hash}s not subscribed to background proactive", v48, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x1B8CB8970](v49, -1, -1);
    MEMORY[0x1B8CB8970](v48, -1, -1);
  }

LABEL_25:
  v13 = 0;
  return v13 & 1;
}

uint64_t sub_1B80283B4(uint64_t a1)
{
  v2[92] = v1;
  v2[91] = a1;
  v3 = sub_1B80C8E9C();
  v2[93] = v3;
  v2[94] = *(v3 - 8);
  v2[95] = swift_task_alloc();
  v2[96] = *(type metadata accessor for Location(0) - 8);
  v2[97] = swift_task_alloc();
  v2[98] = swift_task_alloc();
  v2[99] = swift_task_alloc();
  v2[100] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660C8, &qword_1B80D2E88);
  v2[101] = swift_task_alloc();
  v2[102] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8028538, v1, 0);
}

uint64_t sub_1B8028538()
{
  v1 = *(v0 + 768);
  v2 = *(v0 + 728);
  v3 = *(v2 + 32);
  *(v0 + 880) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -(-1 << v3));
  }

  v6 = v4 & *(v2 + 64);
  *(v0 + 824) = MEMORY[0x1E69E7CC8];

  if (v6)
  {
    v8 = 0;
LABEL_8:
    v11 = *(v0 + 808);
    v12 = *(v0 + 800);
    v13 = __clz(__rbit64(v6));
    v14 = (v6 - 1) & v6;
    v15 = v13 | (v8 << 6);
    v16 = (*(v7 + 48) + 176 * v15);
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
    sub_1B80337A4(*(v7 + 56) + *(v1 + 72) * v15, v12, type metadata accessor for Location);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
    v26 = *(v25 + 48);
    v28 = *(v0 + 208);
    v27 = *(v0 + 224);
    *v11 = *(v0 + 192);
    v11[1] = v28;
    v11[2] = v27;
    v29 = *(v0 + 240);
    v30 = *(v0 + 256);
    v31 = *(v0 + 288);
    v11[5] = *(v0 + 272);
    v11[6] = v31;
    v11[3] = v29;
    v11[4] = v30;
    v32 = *(v0 + 304);
    v33 = *(v0 + 320);
    v34 = *(v0 + 352);
    v11[9] = *(v0 + 336);
    v11[10] = v34;
    v11[7] = v32;
    v11[8] = v33;
    sub_1B80344D4(v12, v11 + v26, type metadata accessor for Location);
    (*(*(v25 - 8) + 56))(v11, 0, 1, v25);
    sub_1B7FC8DA4(v0 + 192, v0 + 368);
    v10 = v8;
  }

  else
  {
    v9 = 0;
    v10 = ((63 - v5) >> 6) - 1;
    while (v10 != v9)
    {
      v8 = v9 + 1;
      v6 = *(v7 + 72 + 8 * v9++);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v62 = *(v0 + 808);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
    (*(*(v63 - 8) + 56))(v62, 1, 1, v63);
    v14 = 0;
  }

  *(v0 + 840) = v10;
  *(v0 + 832) = v14;
  v35 = *(v0 + 816);
  sub_1B7FC8F2C(*(v0 + 808), v35, &qword_1EBA660C8, &qword_1B80D2E88);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
  v37 = (*(*(v36 - 8) + 48))(v35, 1, v36);
  v38 = *(v0 + 800);
  v39 = *(v0 + 792);
  if (v37 == 1)
  {

    v40 = *(v0 + 8);
    v41 = *(v0 + 824);

    return v40(v41);
  }

  else
  {
    v43 = *(v0 + 816);
    v44 = *(v0 + 760);
    v45 = *(v0 + 752);
    v46 = *(v0 + 744);
    v48 = v43[1];
    v47 = v43[2];
    *(v0 + 16) = *v43;
    *(v0 + 32) = v48;
    *(v0 + 48) = v47;
    v49 = v43[6];
    v51 = v43[3];
    v50 = v43[4];
    *(v0 + 96) = v43[5];
    *(v0 + 112) = v49;
    *(v0 + 64) = v51;
    *(v0 + 80) = v50;
    v52 = v43[10];
    v54 = v43[7];
    v53 = v43[8];
    *(v0 + 160) = v43[9];
    *(v0 + 176) = v52;
    *(v0 + 128) = v54;
    *(v0 + 144) = v53;
    sub_1B80344D4(v43 + *(v36 + 48), v39, type metadata accessor for Location);
    *(v0 + 848) = sub_1B8012DD8();
    sub_1B80337A4(v39, v38, type metadata accessor for Location);
    type metadata accessor for LocationShiftingRequest(0);
    v55 = swift_allocObject();
    *(v0 + 856) = v55;
    _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
    v56 = sub_1B80C8E4C();
    v58 = v57;
    (*(v45 + 8))(v44, v46);
    v59 = (v55 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_identifier);
    *v59 = v56;
    v59[1] = v58;
    sub_1B80344D4(v38, v55 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_location, type metadata accessor for Location);
    v60 = swift_task_alloc();
    *(v0 + 864) = v60;
    *v60 = v0;
    v60[1] = sub_1B8028A2C;
    v61 = *(v0 + 784);

    return sub_1B809EB08(v61, v55);
  }
}

uint64_t sub_1B8028A2C()
{
  v2 = *v1;
  *(*v1 + 872) = v0;

  if (v0)
  {
    v3 = *(v2 + 736);
    v4 = sub_1B802924C;
  }

  else
  {
    v5 = *(v2 + 736);

    v4 = sub_1B8028B60;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

void sub_1B8028B60()
{
  v3 = *(v1 + 824);
  sub_1B80344D4(*(v1 + 784), *(v1 + 776), type metadata accessor for Location);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 720) = v3;
  v5 = sub_1B7FDA47C((v1 + 16));
  v7 = *(v3 + 16);
  v8 = (v6 & 1) == 0;
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  if (v9)
  {
    goto LABEL_32;
  }

  LOBYTE(v0) = v6;
  v2 = v1 + 720;
  if (*(*(v1 + 824) + 24) >= v10)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_33;
    }

    while (1)
    {
LABEL_8:
      v12 = *(v1 + 792);
      v13 = *(v1 + 776);
      v14 = *(v1 + 768);
      if (v0)
      {
        v15 = v5;
        sub_1B7FCAD28(v1 + 16);
        v0 = *v2;
        sub_1B803453C(v13, *(*v2 + 56) + *(v14 + 72) * v15, type metadata accessor for Location);
        v5 = sub_1B803380C(v12, type metadata accessor for Location);
      }

      else
      {
        v0 = *v2;
        *(*v2 + 8 * (v5 >> 6) + 64) |= 1 << v5;
        v16 = (v0[6] + 176 * v5);
        v18 = *(v1 + 96);
        v17 = *(v1 + 112);
        v19 = *(v1 + 80);
        v16[3] = *(v1 + 64);
        v16[4] = v19;
        v16[5] = v18;
        v16[6] = v17;
        v21 = *(v1 + 32);
        v20 = *(v1 + 48);
        *v16 = *(v1 + 16);
        v16[1] = v21;
        v16[2] = v20;
        v22 = *(v1 + 128);
        v23 = *(v1 + 144);
        v24 = *(v1 + 176);
        v16[9] = *(v1 + 160);
        v16[10] = v24;
        v16[7] = v22;
        v16[8] = v23;
        sub_1B80344D4(v13, v0[7] + *(v14 + 72) * v5, type metadata accessor for Location);
        v5 = sub_1B803380C(v12, type metadata accessor for Location);
        v25 = v0[2];
        v9 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v9)
        {
          __break(1u);
          return;
        }

        v0[2] = v26;
      }

      v2 = *(v1 + 840);
      v27 = *(v1 + 832);
      *(v1 + 824) = v0;
      if (v27)
      {
        break;
      }

      v29 = ((1 << *(v1 + 880)) + 63) >> 6;
      if (v29 <= (v2 + 1))
      {
        v30 = v2 + 1;
      }

      else
      {
        v30 = ((1 << *(v1 + 880)) + 63) >> 6;
      }

      v31 = v30 - 1;
      while (1)
      {
        v32 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          break;
        }

        if (v32 >= v29)
        {
          v83 = *(v1 + 808);
          v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
          (*(*(v84 - 8) + 56))(v83, 1, 1, v84);
          v36 = 0;
          goto LABEL_23;
        }

        v28 = *(v1 + 728);
        v27 = *(v28 + 8 * v32 + 64);
        ++v2;
        if (v27)
        {
          v2 = v32;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      v85 = v5;
      sub_1B8092058();
      v5 = v85;
    }

    v28 = *(v1 + 728);
LABEL_22:
    v33 = *(v1 + 808);
    v34 = *(v1 + 800);
    v35 = *(v1 + 768);
    v36 = (v27 - 1) & v27;
    v37 = __clz(__rbit64(v27)) | (v2 << 6);
    v38 = (*(v28 + 48) + 176 * v37);
    v40 = v38[1];
    v39 = v38[2];
    *(v1 + 192) = *v38;
    *(v1 + 208) = v40;
    *(v1 + 224) = v39;
    v41 = v38[6];
    v43 = v38[3];
    v42 = v38[4];
    *(v1 + 272) = v38[5];
    *(v1 + 288) = v41;
    *(v1 + 240) = v43;
    *(v1 + 256) = v42;
    v44 = v38[10];
    v46 = v38[7];
    v45 = v38[8];
    *(v1 + 336) = v38[9];
    *(v1 + 352) = v44;
    *(v1 + 304) = v46;
    *(v1 + 320) = v45;
    sub_1B80337A4(*(v28 + 56) + *(v35 + 72) * v37, v34, type metadata accessor for Location);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
    v48 = *(v47 + 48);
    v50 = *(v1 + 208);
    v49 = *(v1 + 224);
    *v33 = *(v1 + 192);
    v33[1] = v50;
    v33[2] = v49;
    v51 = *(v1 + 240);
    v52 = *(v1 + 256);
    v53 = *(v1 + 288);
    v33[5] = *(v1 + 272);
    v33[6] = v53;
    v33[3] = v51;
    v33[4] = v52;
    v54 = *(v1 + 304);
    v55 = *(v1 + 320);
    v56 = *(v1 + 352);
    v33[9] = *(v1 + 336);
    v33[10] = v56;
    v33[7] = v54;
    v33[8] = v55;
    sub_1B80344D4(v34, v33 + v48, type metadata accessor for Location);
    (*(*(v47 - 8) + 56))(v33, 0, 1, v47);
    sub_1B7FC8DA4(v1 + 192, v1 + 368);
    v31 = v2;
LABEL_23:
    *(v1 + 840) = v31;
    *(v1 + 832) = v36;
    v57 = *(v1 + 816);
    sub_1B7FC8F2C(*(v1 + 808), v57, &qword_1EBA660C8, &qword_1B80D2E88);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
    v59 = (*(*(v58 - 8) + 48))(v57, 1, v58);
    v60 = *(v1 + 816);
    if (v59 == 1)
    {

      v61 = *(v1 + 8);
      v62 = *(v1 + 824);

      v61(v62);
    }

    else
    {
      v63 = *(v1 + 800);
      v64 = *(v1 + 792);
      v65 = *(v1 + 760);
      v66 = *(v1 + 752);
      v67 = *(v1 + 744);
      v69 = v60[1];
      v68 = v60[2];
      *(v1 + 16) = *v60;
      *(v1 + 32) = v69;
      *(v1 + 48) = v68;
      v70 = v60[6];
      v72 = v60[3];
      v71 = v60[4];
      *(v1 + 96) = v60[5];
      *(v1 + 112) = v70;
      *(v1 + 64) = v72;
      *(v1 + 80) = v71;
      v73 = v60[10];
      v75 = v60[7];
      v74 = v60[8];
      *(v1 + 160) = v60[9];
      *(v1 + 176) = v73;
      *(v1 + 128) = v75;
      *(v1 + 144) = v74;
      sub_1B80344D4(v60 + *(v58 + 48), v64, type metadata accessor for Location);
      *(v1 + 848) = sub_1B8012DD8();
      sub_1B80337A4(v64, v63, type metadata accessor for Location);
      type metadata accessor for LocationShiftingRequest(0);
      v76 = swift_allocObject();
      *(v1 + 856) = v76;
      _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
      v77 = sub_1B80C8E4C();
      v79 = v78;
      (*(v66 + 8))(v65, v67);
      v80 = (v76 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_identifier);
      *v80 = v77;
      v80[1] = v79;
      sub_1B80344D4(v63, v76 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_location, type metadata accessor for Location);
      v81 = swift_task_alloc();
      *(v1 + 864) = v81;
      *v81 = v1;
      v81[1] = sub_1B8028A2C;
      v82 = *(v1 + 784);

      sub_1B809EB08(v82, v76);
    }
  }

  else
  {
    sub_1B80909E0(v10, isUniquelyReferenced_nonNull_native);
    v5 = sub_1B7FDA47C((v1 + 16));
    if ((v0 & 1) == (v11 & 1))
    {
      goto LABEL_8;
    }

    sub_1B80C986C();
  }
}

uint64_t sub_1B802924C()
{
  v77 = v0;

  if (qword_1ED8DD848 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v1 = *(v0 + 872);
    v2 = sub_1B80C900C();
    __swift_project_value_buffer(v2, qword_1ED8DDF28);
    sub_1B7FC8DA4(v0 + 16, v0 + 544);
    v3 = v1;
    v4 = sub_1B80C8FEC();
    v5 = sub_1B80C93FC();
    sub_1B7FCAD28(v0 + 16);

    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 872);
    v8 = *(v0 + 792);
    if (v6)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v76 = v11;
      *v9 = 141558531;
      *(v9 + 4) = 1752392040;
      *(v9 + 12) = 2081;
      v12 = *(v0 + 16);
      v13 = *(v0 + 24);

      sub_1B7FCAD28(v0 + 16);
      v14 = sub_1B7FB84FC(v12, v13, &v76);

      *(v9 + 14) = v14;
      *(v9 + 22) = 2114;
      v15 = sub_1B80C8CFC();
      *(v9 + 24) = v15;
      *v10 = v15;
      _os_log_impl(&dword_1B7FB5000, v4, v5, "Shifting failed for handle: %{private,mask.hash}s with ERROR: %{public}@", v9, 0x20u);
      sub_1B7FB86D4(v10, &qword_1EBA65EE8, &qword_1B80D2478);
      MEMORY[0x1B8CB8970](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x1B8CB8970](v11, -1, -1);
      MEMORY[0x1B8CB8970](v9, -1, -1);
    }

    else
    {

      sub_1B7FCAD28(v0 + 16);
    }

    sub_1B803380C(v8, type metadata accessor for Location);
    v16 = *(v0 + 840);
    v17 = *(v0 + 832);
    if (v17)
    {
      break;
    }

    v19 = ((1 << *(v0 + 880)) + 63) >> 6;
    if (v19 <= (v16 + 1))
    {
      v20 = v16 + 1;
    }

    else
    {
      v20 = ((1 << *(v0 + 880)) + 63) >> 6;
    }

    v21 = v20 - 1;
    while (1)
    {
      v22 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v22 >= v19)
      {
        v74 = *(v0 + 808);
        v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
        (*(*(v75 - 8) + 56))(v74, 1, 1, v75);
        v26 = 0;
        goto LABEL_16;
      }

      v18 = *(v0 + 728);
      v17 = *(v18 + 8 * v22 + 64);
      ++v16;
      if (v17)
      {
        v16 = v22;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_25:
    swift_once();
  }

  v18 = *(v0 + 728);
LABEL_15:
  v23 = *(v0 + 808);
  v24 = *(v0 + 800);
  v25 = *(v0 + 768);
  v26 = (v17 - 1) & v17;
  v27 = __clz(__rbit64(v17)) | (v16 << 6);
  v28 = (*(v18 + 48) + 176 * v27);
  v30 = v28[1];
  v29 = v28[2];
  *(v0 + 192) = *v28;
  *(v0 + 208) = v30;
  *(v0 + 224) = v29;
  v31 = v28[6];
  v33 = v28[3];
  v32 = v28[4];
  *(v0 + 272) = v28[5];
  *(v0 + 288) = v31;
  *(v0 + 240) = v33;
  *(v0 + 256) = v32;
  v34 = v28[10];
  v36 = v28[7];
  v35 = v28[8];
  *(v0 + 336) = v28[9];
  *(v0 + 352) = v34;
  *(v0 + 304) = v36;
  *(v0 + 320) = v35;
  sub_1B80337A4(*(v18 + 56) + *(v25 + 72) * v27, v24, type metadata accessor for Location);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
  v38 = *(v37 + 48);
  v40 = *(v0 + 208);
  v39 = *(v0 + 224);
  *v23 = *(v0 + 192);
  v23[1] = v40;
  v23[2] = v39;
  v41 = *(v0 + 240);
  v42 = *(v0 + 256);
  v43 = *(v0 + 288);
  v23[5] = *(v0 + 272);
  v23[6] = v43;
  v23[3] = v41;
  v23[4] = v42;
  v44 = *(v0 + 304);
  v45 = *(v0 + 320);
  v46 = *(v0 + 352);
  v23[9] = *(v0 + 336);
  v23[10] = v46;
  v23[7] = v44;
  v23[8] = v45;
  sub_1B80344D4(v24, v23 + v38, type metadata accessor for Location);
  (*(*(v37 - 8) + 56))(v23, 0, 1, v37);
  sub_1B7FC8DA4(v0 + 192, v0 + 368);
  v21 = v16;
LABEL_16:
  *(v0 + 840) = v21;
  *(v0 + 832) = v26;
  v47 = *(v0 + 816);
  sub_1B7FC8F2C(*(v0 + 808), v47, &qword_1EBA660C8, &qword_1B80D2E88);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
  v49 = (*(*(v48 - 8) + 48))(v47, 1, v48);
  v50 = *(v0 + 816);
  if (v49 == 1)
  {

    v51 = *(v0 + 8);
    v52 = *(v0 + 824);

    return v51(v52);
  }

  else
  {
    v54 = *(v0 + 800);
    v55 = *(v0 + 792);
    v56 = *(v0 + 760);
    v57 = *(v0 + 752);
    v58 = *(v0 + 744);
    v60 = v50[1];
    v59 = v50[2];
    *(v0 + 16) = *v50;
    *(v0 + 32) = v60;
    *(v0 + 48) = v59;
    v61 = v50[6];
    v63 = v50[3];
    v62 = v50[4];
    *(v0 + 96) = v50[5];
    *(v0 + 112) = v61;
    *(v0 + 64) = v63;
    *(v0 + 80) = v62;
    v64 = v50[10];
    v66 = v50[7];
    v65 = v50[8];
    *(v0 + 160) = v50[9];
    *(v0 + 176) = v64;
    *(v0 + 128) = v66;
    *(v0 + 144) = v65;
    sub_1B80344D4(v50 + *(v48 + 48), v55, type metadata accessor for Location);
    *(v0 + 848) = sub_1B8012DD8();
    sub_1B80337A4(v55, v54, type metadata accessor for Location);
    type metadata accessor for LocationShiftingRequest(0);
    v67 = swift_allocObject();
    *(v0 + 856) = v67;
    _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
    v68 = sub_1B80C8E4C();
    v70 = v69;
    (*(v57 + 8))(v56, v58);
    v71 = (v67 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_identifier);
    *v71 = v68;
    v71[1] = v70;
    sub_1B80344D4(v54, v67 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_location, type metadata accessor for Location);
    v72 = swift_task_alloc();
    *(v0 + 864) = v72;
    *v72 = v0;
    v72[1] = sub_1B8028A2C;
    v73 = *(v0 + 784);

    return sub_1B809EB08(v73, v67);
  }
}

uint64_t sub_1B8029930(uint64_t a1, char a2)
{
  *(v3 + 736) = v2;
  *(v3 + 840) = a2;
  *(v3 + 728) = a1;
  v4 = type metadata accessor for Location(0);
  *(v3 + 744) = v4;
  *(v3 + 752) = *(v4 - 8);
  *(v3 + 760) = swift_task_alloc();
  *(v3 + 768) = swift_task_alloc();
  *(v3 + 776) = swift_task_alloc();
  *(v3 + 784) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660C8, &qword_1B80D2E88);
  *(v3 + 792) = swift_task_alloc();
  *(v3 + 800) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8029A60, v2, 0);
}

uint64_t sub_1B8029A60()
{
  v70 = v0;
  if (*(v0 + 840) != 1)
  {
    v9 = *(v0 + 728);

LABEL_7:

    v10 = *(v0 + 8);

    return v10(v9);
  }

  v1 = *(v0 + 752);
  v2 = *(v0 + 728);
  v3 = *(v2 + 32);
  *(v0 + 841) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -(-1 << v3));
  }

  v6 = v4 & *(v2 + 64);
  *(v0 + 808) = MEMORY[0x1E69E7CC8];

  if (v6)
  {
    v8 = 0;
LABEL_13:
    v14 = *(v0 + 792);
    v15 = *(v0 + 784);
    v16 = __clz(__rbit64(v6));
    v17 = (v6 - 1) & v6;
    v18 = v16 | (v8 << 6);
    v19 = (*(v7 + 48) + 176 * v18);
    v21 = v19[1];
    v20 = v19[2];
    *(v0 + 192) = *v19;
    *(v0 + 208) = v21;
    *(v0 + 224) = v20;
    v22 = v19[6];
    v24 = v19[3];
    v23 = v19[4];
    *(v0 + 272) = v19[5];
    *(v0 + 288) = v22;
    *(v0 + 240) = v24;
    *(v0 + 256) = v23;
    v25 = v19[10];
    v27 = v19[7];
    v26 = v19[8];
    *(v0 + 336) = v19[9];
    *(v0 + 352) = v25;
    *(v0 + 304) = v27;
    *(v0 + 320) = v26;
    sub_1B80337A4(*(v7 + 56) + *(v1 + 72) * v18, v15, type metadata accessor for Location);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
    v29 = *(v28 + 48);
    v31 = *(v0 + 208);
    v30 = *(v0 + 224);
    *v14 = *(v0 + 192);
    v14[1] = v31;
    v14[2] = v30;
    v32 = *(v0 + 240);
    v33 = *(v0 + 256);
    v34 = *(v0 + 288);
    v14[5] = *(v0 + 272);
    v14[6] = v34;
    v14[3] = v32;
    v14[4] = v33;
    v35 = *(v0 + 304);
    v36 = *(v0 + 320);
    v37 = *(v0 + 352);
    v14[9] = *(v0 + 336);
    v14[10] = v37;
    v14[7] = v35;
    v14[8] = v36;
    sub_1B80344D4(v15, v14 + v29, type metadata accessor for Location);
    (*(*(v28 - 8) + 56))(v14, 0, 1, v28);
    sub_1B7FC8DA4(v0 + 192, v0 + 368);
    v13 = v8;
  }

  else
  {
    v12 = 0;
    v13 = ((63 - v5) >> 6) - 1;
    while (v13 != v12)
    {
      v8 = v12 + 1;
      v6 = *(v7 + 72 + 8 * v12++);
      if (v6)
      {
        goto LABEL_13;
      }
    }

    v67 = *(v0 + 792);
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
    (*(*(v68 - 8) + 56))(v67, 1, 1, v68);
    v17 = 0;
  }

  *(v0 + 824) = v13;
  *(v0 + 816) = v17;
  v38 = *(v0 + 800);
  sub_1B7FC8F2C(*(v0 + 792), v38, &qword_1EBA660C8, &qword_1B80D2E88);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
  if ((*(*(v39 - 8) + 48))(v38, 1, v39) == 1)
  {

    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v40 = sub_1B80C900C();
    __swift_project_value_buffer(v40, qword_1ED8DDF28);
    v41 = sub_1B80C8FEC();
    v42 = sub_1B80C941C();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v69 = v44;
      *v43 = 136446723;
      *(v43 + 4) = sub_1B7FB84FC(0xD00000000000001ELL, 0x80000001B80CCBF0, &v69);
      *(v43 + 12) = 2160;
      *(v43 + 14) = 1752392040;
      *(v43 + 22) = 2081;
      sub_1B8032C04();
      v9 = MEMORY[0x1E69E7CC8];

      v45 = sub_1B80C902C();
      v47 = v46;

      v48 = sub_1B7FB84FC(v45, v47, &v69);

      *(v43 + 24) = v48;
      _os_log_impl(&dword_1B7FB5000, v41, v42, "%{public}s locationWithAddress: %{private,mask.hash}s", v43, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v44, -1, -1);
      MEMORY[0x1B8CB8970](v43, -1, -1);
    }

    else
    {

      v9 = MEMORY[0x1E69E7CC8];
    }

    goto LABEL_7;
  }

  v49 = *(v0 + 800);
  v50 = *(v0 + 776);
  v52 = v49[1];
  v51 = v49[2];
  *(v0 + 16) = *v49;
  *(v0 + 32) = v52;
  *(v0 + 48) = v51;
  v53 = v49[6];
  v55 = v49[3];
  v54 = v49[4];
  *(v0 + 96) = v49[5];
  *(v0 + 112) = v53;
  *(v0 + 64) = v55;
  *(v0 + 80) = v54;
  v56 = v49[10];
  v58 = v49[7];
  v57 = v49[8];
  *(v0 + 160) = v49[9];
  *(v0 + 176) = v56;
  *(v0 + 128) = v58;
  *(v0 + 144) = v57;
  sub_1B80344D4(v49 + *(v39 + 48), v50, type metadata accessor for Location);
  v59 = *(v0 + 160);
  *(v0 + 672) = *(v0 + 144);
  *(v0 + 688) = v59;
  *(v0 + 704) = *(v0 + 176);
  v60 = *(v0 + 96);
  *(v0 + 608) = *(v0 + 80);
  *(v0 + 624) = v60;
  v61 = *(v0 + 128);
  *(v0 + 640) = *(v0 + 112);
  *(v0 + 656) = v61;
  v62 = *(v0 + 32);
  *(v0 + 544) = *(v0 + 16);
  *(v0 + 560) = v62;
  v63 = *(v0 + 64);
  *(v0 + 576) = *(v0 + 48);
  *(v0 + 592) = v63;
  v64 = swift_task_alloc();
  *(v0 + 832) = v64;
  *v64 = v0;
  v64[1] = sub_1B802A074;
  v65 = *(v0 + 776);
  v66 = *(v0 + 768);

  return sub_1B8026644(v66, (v0 + 544), v65);
}

uint64_t sub_1B802A074()
{
  v1 = *(*v0 + 736);

  return MEMORY[0x1EEE6DFA0](sub_1B802A184, v1, 0);
}

uint64_t sub_1B802A184()
{
  v93 = v1;
  v3 = *(v1 + 808);
  sub_1B80344D4(*(v1 + 768), *(v1 + 760), type metadata accessor for Location);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 720) = v3;
  v5 = sub_1B7FDA47C((v1 + 16));
  v7 = *(v3 + 16);
  v8 = (v6 & 1) == 0;
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  if (v9)
  {
    goto LABEL_35;
  }

  LOBYTE(v0) = v6;
  v2 = v1 + 720;
  if (*(*(v1 + 808) + 24) >= v10)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_36;
    }

    while (1)
    {
LABEL_8:
      v13 = *(v1 + 776);
      v14 = *(v1 + 760);
      v15 = *(v1 + 752);
      if (v0)
      {
        v16 = v5;
        sub_1B7FCAD28(v1 + 16);
        v0 = *v2;
        sub_1B803453C(v14, *(*v2 + 56) + *(v15 + 72) * v16, type metadata accessor for Location);
        v5 = sub_1B803380C(v13, type metadata accessor for Location);
      }

      else
      {
        v0 = *v2;
        *(*v2 + 8 * (v5 >> 6) + 64) |= 1 << v5;
        v17 = (v0[6] + 176 * v5);
        v19 = *(v1 + 96);
        v18 = *(v1 + 112);
        v20 = *(v1 + 80);
        v17[3] = *(v1 + 64);
        v17[4] = v20;
        v17[5] = v19;
        v17[6] = v18;
        v22 = *(v1 + 32);
        v21 = *(v1 + 48);
        *v17 = *(v1 + 16);
        v17[1] = v22;
        v17[2] = v21;
        v23 = *(v1 + 128);
        v24 = *(v1 + 144);
        v25 = *(v1 + 176);
        v17[9] = *(v1 + 160);
        v17[10] = v25;
        v17[7] = v23;
        v17[8] = v24;
        sub_1B80344D4(v14, v0[7] + *(v15 + 72) * v5, type metadata accessor for Location);
        v5 = sub_1B803380C(v13, type metadata accessor for Location);
        v26 = v0[2];
        v9 = __OFADD__(v26, 1);
        v27 = v26 + 1;
        if (v9)
        {
          __break(1u);
          goto LABEL_38;
        }

        v0[2] = v27;
      }

      v28 = *(v1 + 824);
      v29 = *(v1 + 816);
      *(v1 + 808) = v0;
      if (v29)
      {
        break;
      }

      v31 = ((1 << *(v1 + 841)) + 63) >> 6;
      if (v31 <= (v28 + 1))
      {
        v32 = v28 + 1;
      }

      else
      {
        v32 = ((1 << *(v1 + 841)) + 63) >> 6;
      }

      v33 = v32 - 1;
      while (1)
      {
        v34 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v34 >= v31)
        {
          v89 = *(v1 + 792);
          v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
          (*(*(v90 - 8) + 56))(v89, 1, 1, v90);
          v38 = 0;
          goto LABEL_23;
        }

        v30 = *(v1 + 728);
        v29 = *(v30 + 8 * v34 + 64);
        ++v28;
        if (v29)
        {
          v28 = v34;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      v91 = v5;
      sub_1B8092058();
      v5 = v91;
    }

    v30 = *(v1 + 728);
LABEL_22:
    v35 = *(v1 + 792);
    v36 = *(v1 + 784);
    v37 = *(v1 + 752);
    v38 = (v29 - 1) & v29;
    v39 = __clz(__rbit64(v29)) | (v28 << 6);
    v40 = (*(v30 + 48) + 176 * v39);
    v42 = v40[1];
    v41 = v40[2];
    *(v1 + 192) = *v40;
    *(v1 + 208) = v42;
    *(v1 + 224) = v41;
    v43 = v40[6];
    v45 = v40[3];
    v44 = v40[4];
    *(v1 + 272) = v40[5];
    *(v1 + 288) = v43;
    *(v1 + 240) = v45;
    *(v1 + 256) = v44;
    v46 = v40[10];
    v48 = v40[7];
    v47 = v40[8];
    *(v1 + 336) = v40[9];
    *(v1 + 352) = v46;
    *(v1 + 304) = v48;
    *(v1 + 320) = v47;
    sub_1B80337A4(*(v30 + 56) + *(v37 + 72) * v39, v36, type metadata accessor for Location);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
    v50 = *(v49 + 48);
    v52 = *(v1 + 208);
    v51 = *(v1 + 224);
    *v35 = *(v1 + 192);
    v35[1] = v52;
    v35[2] = v51;
    v53 = *(v1 + 240);
    v54 = *(v1 + 256);
    v55 = *(v1 + 288);
    v35[5] = *(v1 + 272);
    v35[6] = v55;
    v35[3] = v53;
    v35[4] = v54;
    v56 = *(v1 + 304);
    v57 = *(v1 + 320);
    v58 = *(v1 + 352);
    v35[9] = *(v1 + 336);
    v35[10] = v58;
    v35[7] = v56;
    v35[8] = v57;
    sub_1B80344D4(v36, v35 + v50, type metadata accessor for Location);
    (*(*(v49 - 8) + 56))(v35, 0, 1, v49);
    sub_1B7FC8DA4(v1 + 192, v1 + 368);
    v33 = v28;
LABEL_23:
    *(v1 + 824) = v33;
    *(v1 + 816) = v38;
    v59 = *(v1 + 800);
    sub_1B7FC8F2C(*(v1 + 792), v59, &qword_1EBA660C8, &qword_1B80D2E88);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
    if ((*(*(v60 - 8) + 48))(v59, 1, v60) == 1)
    {

      if (qword_1ED8DD848 == -1)
      {
LABEL_25:
        v61 = sub_1B80C900C();
        __swift_project_value_buffer(v61, qword_1ED8DDF28);
        v62 = sub_1B80C8FEC();
        v63 = sub_1B80C941C();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v92 = v65;
          *v64 = 136446723;
          *(v64 + 4) = sub_1B7FB84FC(0xD00000000000001ELL, 0x80000001B80CCBF0, &v92);
          *(v64 + 12) = 2160;
          *(v64 + 14) = 1752392040;
          *(v64 + 22) = 2081;
          sub_1B8032C04();

          v66 = sub_1B80C902C();
          v68 = v67;

          v69 = sub_1B7FB84FC(v66, v68, &v92);

          *(v64 + 24) = v69;
          _os_log_impl(&dword_1B7FB5000, v62, v63, "%{public}s locationWithAddress: %{private,mask.hash}s", v64, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1B8CB8970](v65, -1, -1);
          MEMORY[0x1B8CB8970](v64, -1, -1);
        }

        v70 = *(v1 + 8);

        return v70(v0);
      }

LABEL_38:
      swift_once();
      goto LABEL_25;
    }

    v71 = *(v1 + 800);
    v72 = *(v1 + 776);
    v74 = v71[1];
    v73 = v71[2];
    *(v1 + 16) = *v71;
    *(v1 + 32) = v74;
    *(v1 + 48) = v73;
    v75 = v71[6];
    v77 = v71[3];
    v76 = v71[4];
    *(v1 + 96) = v71[5];
    *(v1 + 112) = v75;
    *(v1 + 64) = v77;
    *(v1 + 80) = v76;
    v78 = v71[10];
    v80 = v71[7];
    v79 = v71[8];
    *(v1 + 160) = v71[9];
    *(v1 + 176) = v78;
    *(v1 + 128) = v80;
    *(v1 + 144) = v79;
    sub_1B80344D4(v71 + *(v60 + 48), v72, type metadata accessor for Location);
    v81 = *(v1 + 160);
    *(v1 + 672) = *(v1 + 144);
    *(v1 + 688) = v81;
    *(v1 + 704) = *(v1 + 176);
    v82 = *(v1 + 96);
    *(v1 + 608) = *(v1 + 80);
    *(v1 + 624) = v82;
    v83 = *(v1 + 128);
    *(v1 + 640) = *(v1 + 112);
    *(v1 + 656) = v83;
    v84 = *(v1 + 32);
    *(v1 + 544) = *(v1 + 16);
    *(v1 + 560) = v84;
    v85 = *(v1 + 64);
    *(v1 + 576) = *(v1 + 48);
    *(v1 + 592) = v85;
    v86 = swift_task_alloc();
    *(v1 + 832) = v86;
    *v86 = v1;
    v86[1] = sub_1B802A074;
    v87 = *(v1 + 776);
    v88 = *(v1 + 768);

    return sub_1B8026644(v88, (v1 + 544), v87);
  }

  else
  {
    sub_1B80909E0(v10, isUniquelyReferenced_nonNull_native);
    v5 = sub_1B7FDA47C((v1 + 16));
    if ((v0 & 1) == (v11 & 1))
    {
      goto LABEL_8;
    }

    return sub_1B80C986C();
  }
}

uint64_t sub_1B802A954(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B7FBA3EC;

  return sub_1B801F5C4(a1);
}

uint64_t sub_1B802A9E8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B7FC253C;

  return sub_1B80274A8(a1);
}

uint64_t sub_1B802AA7C(_BYTE *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B7FBA4E0;

  return sub_1B8024C3C(a1);
}

void sub_1B802AB10()
{
  v1 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_handlesForLocationRefreshing;
  swift_beginAccess();
  v2 = 0;
  v3 = *(v0 + v1);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = v2;
LABEL_10:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    if (*(*(*(v3 + 56) + ((v8 << 9) | (8 * v9))) + 16))
    {
      return;
    }
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= v7)
    {
      return;
    }

    v6 = *(v3 + 64 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_1B802ABF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  v3[13] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B802AC14, 0, 0);
}

uint64_t sub_1B802AC14()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 128) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 112);
    v4 = v2[1];
    v3 = v2[2];
    v5 = *v2;
    *(v0 + 61) = *(v2 + 45);
    *(v0 + 32) = v4;
    *(v0 + 48) = v3;
    *(v0 + 16) = v5;
    v6 = swift_task_alloc();
    *(v0 + 136) = v6;
    *v6 = v0;
    v6[1] = sub_1B802AD24;
    v7 = *(v0 + 120);

    return sub_1B80351B0(v0 + 16, v7);
  }

  else
  {
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1B802AD24(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v4 = sub_1B802B154;
  }

  else
  {
    v4 = sub_1B802AE38;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B802AE38()
{
  v13 = v0;
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
    v12 = v5;
    *v4 = 141558275;
    *(v4 + 4) = 1752392040;
    *(v4 + 12) = 2081;
    type metadata accessor for Location(0);
    sub_1B8032C04();
    v6 = sub_1B80C902C();
    v8 = sub_1B7FB84FC(v6, v7, &v12);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_1B7FB5000, v2, v3, "startRefreshingLocation result: %{private,mask.hash}s", v4, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B8CB8970](v5, -1, -1);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  v9 = swift_task_alloc();
  *(v0 + 160) = v9;
  *v9 = v0;
  v9[1] = sub_1B802B040;
  v10 = *(v0 + 144);

  return sub_1B801F5C4(v10);
}

uint64_t sub_1B802B040()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1B802B340;
  }

  else
  {
    v2 = sub_1B80348FC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B802B154()
{
  v15 = v0;
  v1 = v0[19];
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF28);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[12] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
    v9 = sub_1B80C90EC();
    v11 = sub_1B7FB84FC(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "StartRefreshingLocation error: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1B802B340()
{
  v15 = v0;

  v1 = v0[21];
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF28);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[12] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
    v9 = sub_1B80C90EC();
    v11 = sub_1B7FB84FC(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "StartRefreshingLocation error: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1B802B534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  v3[13] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B802B558, 0, 0);
}

uint64_t sub_1B802B558()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 128) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 112);
    v4 = v2[1];
    v3 = v2[2];
    v5 = *v2;
    *(v0 + 61) = *(v2 + 45);
    *(v0 + 32) = v4;
    *(v0 + 48) = v3;
    *(v0 + 16) = v5;
    v6 = swift_task_alloc();
    *(v0 + 136) = v6;
    *v6 = v0;
    v6[1] = sub_1B802B668;
    v7 = *(v0 + 120);

    return sub_1B80351B0(v0 + 16, v7);
  }

  else
  {
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1B802B668(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[18] = a1;
  v4[19] = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B802B970, 0, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    v4[20] = v6;
    *v6 = v5;
    v6[1] = sub_1B802B7EC;

    return sub_1B801F5C4(a1);
  }
}

uint64_t sub_1B802B7EC()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1B802BB98;
  }

  else
  {
    v2 = sub_1B802B900;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B802B900()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B802B970()
{
  v15 = v0;
  v1 = v0[19];
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF28);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD00000000000004DLL, 0x80000001B80CCD80, &v14);
    *(v6 + 12) = 2082;
    v0[12] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
    v9 = sub_1B80C90EC();
    v11 = sub_1B7FB84FC(v9, v10, &v14);

    *(v6 + 14) = v11;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "%{public}s failed with %{public}s.", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v7, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1B802BB98()
{
  v15 = v0;

  v1 = v0[21];
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF28);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD00000000000004DLL, 0x80000001B80CCD80, &v14);
    *(v6 + 12) = 2082;
    v0[12] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
    v9 = sub_1B80C90EC();
    v11 = sub_1B7FB84FC(v9, v10, &v14);

    *(v6 + 14) = v11;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "%{public}s failed with %{public}s.", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v7, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t (*sub_1B802BDC8(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1B80311F4(v4, a2);
  return sub_1B802BE40;
}

void sub_1B802BE40(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1B802BE8C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 48) = a2;
  *(v4 + 56) = a4;
  *(v4 + 89) = a3;
  *(v4 + 40) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B802BEB4, 0, 0);
}

uint64_t sub_1B802BEB4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    *(v0 + 88) = *(v0 + 89);
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = sub_1B802BFB4;
    v4 = *(v0 + 48);
    v3 = *(v0 + 56);

    return sub_1B8034F2C(v4, (v0 + 88), v3);
  }

  else
  {
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1B802BFB4()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1B802C12C;
  }

  else
  {
    v2 = sub_1B802C0C8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B802C0C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B802C12C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B802C190(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B802C1B0, 0, 0);
}

uint64_t sub_1B802C1B0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_1B802C2A0;
    v3 = v0[6];

    return sub_1B8035504(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1B802C2A0()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1B802C4D4;
  }

  else
  {
    v2 = sub_1B802C3B4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B802C3B4()
{
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
    *v4 = 0;
    _os_log_impl(&dword_1B7FB5000, v2, v3, "Clear locationContinuation and empty cached locations for all handles", v4, 2u);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1B802C4D4()
{
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF28);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 72);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Stop refreshing all locations failed with error: %{public}@", v7, 0xCu);
    sub_1B7FB86D4(v8, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v7, -1, -1);
  }

  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1B802C678(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v3 = sub_1B80C8E9C();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = type metadata accessor for ClientID(0);
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B802C768, 0, 0);
}

uint64_t sub_1B802C768()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 152) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B802C838, Strong, 0);
  }

  else
  {

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1B802C838()
{
  *(v0 + 160) = *(*(v0 + 152) + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_session);

  return MEMORY[0x1EEE6DFA0](sub_1B802C8B8, 0, 0);
}

void sub_1B802C8B8()
{
  if (v0[20])
  {
    v3 = (*MEMORY[0x1E699C820] + MEMORY[0x1E699C820]);
    v1 = swift_task_alloc();
    v0[21] = v1;
    *v1 = v0;
    v1[1] = sub_1B802C96C;
    v2 = v0[16];

    v3(v2);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B802C96C()
{

  return MEMORY[0x1EEE6DFA0](sub_1B802CA84, 0, 0);
}

uint64_t sub_1B802CA84()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  (*(v4 + 16))(v1, v3, v5);
  v7 = (v1 + v2[6]);
  *v7 = 0;
  v7[1] = 0;
  *(v1 + v2[5]) = 0;
  v8 = v2[7];
  (*(v4 + 32))(v1 + v8, v3, v5);
  (*(v4 + 56))(v1 + v8, 0, 1, v5);
  v9 = *v6;
  v10 = v6[1];
  v11 = v6[2];
  *(v0 + 61) = *(v6 + 45);
  *(v0 + 32) = v10;
  *(v0 + 48) = v11;
  *(v0 + 16) = v9;
  v12 = swift_task_alloc();
  *(v0 + 176) = v12;
  *v12 = v0;
  v12[1] = sub_1B802CBC8;
  v13 = *(v0 + 144);

  return sub_1B80351B0(v0 + 16, v13);
}

uint64_t sub_1B802CBC8(uint64_t a1)
{
  *(*v2 + 184) = v1;

  if (v1)
  {
    v3 = sub_1B802CD7C;
  }

  else
  {

    v3 = sub_1B802CCE8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B802CCE8()
{
  v1 = *(v0 + 144);

  sub_1B803380C(v1, type metadata accessor for ClientID);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B802CD7C()
{
  v1 = *(v0 + 144);

  sub_1B803380C(v1, type metadata accessor for ClientID);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B802CE10(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B802CE5C, v2, 0);
}

uint64_t sub_1B802CE5C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v8 = *(v0 + 16);
  v3 = sub_1B7FCD170(&unk_1ED8DD838, _s18LocationConnectionCMa, &unk_1B80D2CA0);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v8;
  *(v4 + 40) = v2;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_1B802CFA4;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, v1, v3, 0xD00000000000001ALL, 0x80000001B80CCA10, sub_1B80348F0, v4, v6);
}

uint64_t sub_1B802CFA4()
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

    v4 = sub_1B8011C90;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B802D0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  v5[15] = v6;
  v7 = *(v6 - 8);
  v5[16] = v7;
  v5[17] = *(v7 + 64);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B802D1B4, 0, 0);
}

uint64_t sub_1B802D1B4()
{
  v1 = *(v0 + 152);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v6 = *(v0 + 88);
  v7 = *(v3 + 16);
  *(v0 + 160) = v7;
  *(v0 + 168) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v6, v4);
  v8 = *(v3 + 80);
  *(v0 + 216) = v8;
  v9 = (v8 + 16) & ~v8;
  v10 = swift_allocObject();
  *(v0 + 176) = v10;
  v11 = *(v3 + 32);
  *(v0 + 184) = v11;
  *(v0 + 192) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v11(v10 + v9, v1, v4);
  *(v10 + ((v2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v5;
  v12 = swift_task_alloc();
  *(v0 + 200) = v12;
  v13 = _s18LocationConnectionCMa(0);
  v14 = sub_1B7FCD170(qword_1ED8DC6E8, _s18LocationConnectionCMa, &unk_1B80D2C70);
  *v12 = v0;
  v12[1] = sub_1B802D368;

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B8031B8C, v10, v13, v14);
}

uint64_t sub_1B802D368()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_1B80348F4;
  }

  else
  {

    v2 = sub_1B802D484;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B802D484()
{
  v10 = *(v0 + 184);
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 88);
  v5 = (*(v0 + 216) + 16) & ~*(v0 + 216);
  v12 = *(v0 + 64);
  v11 = sub_1B80C8D1C();
  v1(v2, v4, v3);
  v6 = swift_allocObject();
  v10(v6 + v5, v2, v3);
  *(v0 + 48) = sub_1B7FCE2F8;
  *(v0 + 56) = v6;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B7FCE114;
  *(v0 + 40) = &block_descriptor_59;
  v7 = _Block_copy((v0 + 16));

  [v12 processLocationPayload:v11 completion:v7];
  _Block_release(v7);

  swift_unknownObjectRelease();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1B802D620(void *a1)
{
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF28);
  v3 = a1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD00000000000001ALL, 0x80000001B80CCA10, &v12);
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

  v12 = a1;
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  return sub_1B80C927C();
}

uint64_t sub_1B802D800(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B802D84C, v2, 0);
}

uint64_t sub_1B802D84C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v8 = *(v0 + 16);
  v3 = sub_1B7FCD170(&unk_1ED8DD838, _s18LocationConnectionCMa, &unk_1B80D2CA0);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v8;
  *(v4 + 40) = v2;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_1B802CFA4;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, v1, v3, 0xD000000000000021, 0x80000001B80CC9E0, sub_1B80348EC, v4, v6);
}

uint64_t sub_1B802D994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  v5[15] = v6;
  v7 = *(v6 - 8);
  v5[16] = v7;
  v5[17] = *(v7 + 64);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B802DA7C, 0, 0);
}

uint64_t sub_1B802DA7C()
{
  v1 = *(v0 + 152);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v6 = *(v0 + 88);
  v7 = *(v3 + 16);
  *(v0 + 160) = v7;
  *(v0 + 168) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v6, v4);
  v8 = *(v3 + 80);
  *(v0 + 216) = v8;
  v9 = (v8 + 16) & ~v8;
  v10 = swift_allocObject();
  *(v0 + 176) = v10;
  v11 = *(v3 + 32);
  *(v0 + 184) = v11;
  *(v0 + 192) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v11(v10 + v9, v1, v4);
  *(v10 + ((v2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v5;
  v12 = swift_task_alloc();
  *(v0 + 200) = v12;
  v13 = _s18LocationConnectionCMa(0);
  v14 = sub_1B7FCD170(qword_1ED8DC6E8, _s18LocationConnectionCMa, &unk_1B80D2C70);
  *v12 = v0;
  v12[1] = sub_1B802DC30;

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B8031964, v10, v13, v14);
}

uint64_t sub_1B802DC30()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_1B802DEE8;
  }

  else
  {

    v2 = sub_1B802DD4C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B802DD4C()
{
  v10 = *(v0 + 184);
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 88);
  v5 = (*(v0 + 216) + 16) & ~*(v0 + 216);
  v12 = *(v0 + 64);
  v11 = sub_1B80C8D1C();
  v1(v2, v4, v3);
  v6 = swift_allocObject();
  v10(v6 + v5, v2, v3);
  *(v0 + 48) = sub_1B7FCE2F4;
  *(v0 + 56) = v6;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B7FCE114;
  *(v0 + 40) = &block_descriptor_43;
  v7 = _Block_copy((v0 + 16));

  [v12 processLocationCommandPayload:v11 completion:v7];
  _Block_release(v7);

  swift_unknownObjectRelease();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1B802DEE8()
{
  v1 = v0[26];

  v0[9] = v1;
  sub_1B80C927C();

  v2 = v0[1];

  return v2();
}

uint64_t sub_1B802DF80(void *a1)
{
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF28);
  v3 = a1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000021, 0x80000001B80CC9E0, &v12);
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

  v12 = a1;
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  return sub_1B80C927C();
}

uint64_t sub_1B802E160(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B802E1AC, v2, 0);
}

uint64_t sub_1B802E1AC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v8 = *(v0 + 16);
  v3 = sub_1B7FCD170(&unk_1ED8DD838, _s18LocationConnectionCMa, &unk_1B80D2CA0);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v8;
  *(v4 + 40) = v2;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_1B802CFA4;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, v1, v3, 0xD000000000000013, 0x80000001B80CC9C0, sub_1B80348E8, v4, v6);
}

double sub_1B802E2F4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a5;
  v25 = a7;
  v22 = a3;
  v23 = a4;
  v9 = sub_1B80C8E9C();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - v13;
  sub_1B80C8A0C();
  (*(v11 + 16))(v14, a1, v10);
  v15 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v16 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  (*(v11 + 32))(v17 + v15, v14, v10);
  v18 = (v17 + v16);
  v20 = v22;
  v19 = v23;
  *v18 = v22;
  v18[1] = v19;
  *(v17 + ((v16 + 23) & 0xFFFFFFFFFFFFFFF8)) = v24;

  sub_1B7FC62D8(v20, v19);
  _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
  sub_1B80C89FC();
  sub_1B80C8A3C();

  return result;
}

uint64_t sub_1B802E4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  v5[15] = v6;
  v7 = *(v6 - 8);
  v5[16] = v7;
  v5[17] = *(v7 + 64);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B802E5E0, 0, 0);
}

uint64_t sub_1B802E5E0()
{
  v1 = *(v0 + 152);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v6 = *(v0 + 88);
  v7 = *(v3 + 16);
  *(v0 + 160) = v7;
  *(v0 + 168) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v6, v4);
  v8 = *(v3 + 80);
  *(v0 + 216) = v8;
  v9 = (v8 + 16) & ~v8;
  v10 = swift_allocObject();
  *(v0 + 176) = v10;
  v11 = *(v3 + 32);
  *(v0 + 184) = v11;
  *(v0 + 192) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v11(v10 + v9, v1, v4);
  *(v10 + ((v2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v5;
  v12 = swift_task_alloc();
  *(v0 + 200) = v12;
  v13 = _s18LocationConnectionCMa(0);
  v14 = sub_1B7FCD170(qword_1ED8DC6E8, _s18LocationConnectionCMa, &unk_1B80D2C70);
  *v12 = v0;
  v12[1] = sub_1B802E794;

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B80317DC, v10, v13, v14);
}

uint64_t sub_1B802E794()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_1B80348F4;
  }

  else
  {

    v2 = sub_1B802E8B0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B802E8B0()
{
  v10 = *(v0 + 184);
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 88);
  v5 = (*(v0 + 216) + 16) & ~*(v0 + 216);
  v12 = *(v0 + 64);
  v11 = sub_1B80C8D1C();
  v1(v2, v4, v3);
  v6 = swift_allocObject();
  v10(v6 + v5, v2, v3);
  *(v0 + 48) = sub_1B7FCE2F8;
  *(v0 + 56) = v6;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B7FCE114;
  *(v0 + 40) = &block_descriptor_4;
  v7 = _Block_copy((v0 + 16));

  [v12 publishLocation:v11 completion:v7];
  _Block_release(v7);

  swift_unknownObjectRelease();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1B802EA4C(void *a1)
{
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF28);
  v3 = a1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000013, 0x80000001B80CC9C0, &v12);
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

  v12 = a1;
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  return sub_1B80C927C();
}

uint64_t sub_1B802EC2C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B802EC78, v2, 0);
}

uint64_t sub_1B802EC78()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v8 = *(v0 + 16);
  v3 = sub_1B7FCD170(&unk_1ED8DD838, _s18LocationConnectionCMa, &unk_1B80D2CA0);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v8;
  *(v4 + 40) = v2;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_1B802CFA4;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, v1, v3, 0xD00000000000001ALL, 0x80000001B80CCA10, sub_1B803197C, v4, v6);
}

uint64_t sub_1B802EDC0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B802EE0C, v2, 0);
}

uint64_t sub_1B802EE0C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v8 = *(v0 + 16);
  v3 = sub_1B7FCD170(&unk_1ED8DD838, _s18LocationConnectionCMa, &unk_1B80D2CA0);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v8;
  *(v4 + 40) = v2;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_1B802CFA4;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, v1, v3, 0xD000000000000021, 0x80000001B80CC9E0, sub_1B80317F4, v4, v6);
}

uint64_t sub_1B802EF54(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B802EFA0, v2, 0);
}

uint64_t sub_1B802EFA0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v8 = *(v0 + 16);
  v3 = sub_1B7FCD170(&unk_1ED8DD838, _s18LocationConnectionCMa, &unk_1B80D2CA0);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v8;
  *(v4 + 40) = v2;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_1B802CFA4;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, v1, v3, 0xD000000000000013, 0x80000001B80CC9C0, sub_1B803166C, v4, v6);
}

void sub_1B802F0E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1B7FDA404(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext(0);
      sub_1B803453C(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
      return;
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1B8091A9C();
    goto LABEL_7;
  }

  sub_1B8090668(v15, a4 & 1);
  v21 = sub_1B7FDA404(a2, a3);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_15:
    sub_1B80C986C();
    __break(1u);
    return;
  }

  v12 = v21;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1B802F510(v12, a2, a3, a1, v18);
}

uint64_t sub_1B802F254(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1B7FDA47C(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1B8092468();
      goto LABEL_7;
    }

    sub_1B8091190(v13, a3 & 1);
    v24 = sub_1B7FDA47C(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1B802F5BC(v10, a2, a1, v16);
      return sub_1B7FC8DA4(a2, &v26);
    }

LABEL_15:
    result = sub_1B80C986C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = v16[7];
  v18 = sub_1B80C8E2C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 40);
  v21 = v18;
  v22 = v17 + *(v19 + 72) * v10;

  return v20(v22, a1, v21);
}

uint64_t sub_1B802F3C8(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1B7FDA47C(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for Location(0);
      return sub_1B803453C(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for Location);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_1B8092058();
    goto LABEL_7;
  }

  sub_1B80909E0(v13, a3 & 1);
  v20 = sub_1B7FDA47C(a2);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_1B80C986C();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1B802F69C(v10, a2, a1, v16);
  return sub_1B7FC8DA4(a2, &v22);
}

uint64_t sub_1B802F510(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext(0);
  result = sub_1B80344D4(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
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

uint64_t sub_1B802F5BC(unint64_t a1, _OWORD *a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v7 = a2[9];
  v8 = (a4[6] + 176 * a1);
  v8[8] = a2[8];
  v8[9] = v7;
  v8[10] = a2[10];
  v9 = a2[5];
  v8[4] = a2[4];
  v8[5] = v9;
  v10 = a2[7];
  v8[6] = a2[6];
  v8[7] = v10;
  v11 = a2[1];
  *v8 = *a2;
  v8[1] = v11;
  v12 = a2[3];
  v8[2] = a2[2];
  v8[3] = v12;
  v13 = a4[7];
  v14 = sub_1B80C8E2C();
  result = (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * a1, a3, v14);
  v16 = a4[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v18;
  }

  return result;
}

uint64_t sub_1B802F69C(unint64_t a1, _OWORD *a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v7 = a2[9];
  v8 = (a4[6] + 176 * a1);
  v8[8] = a2[8];
  v8[9] = v7;
  v8[10] = a2[10];
  v9 = a2[5];
  v8[4] = a2[4];
  v8[5] = v9;
  v10 = a2[7];
  v8[6] = a2[6];
  v8[7] = v10;
  v11 = a2[1];
  *v8 = *a2;
  v8[1] = v11;
  v12 = a2[3];
  v8[2] = a2[2];
  v8[3] = v12;
  v13 = a4[7];
  v14 = type metadata accessor for Location(0);
  result = sub_1B80344D4(a3, v13 + *(*(v14 - 8) + 72) * a1, type metadata accessor for Location);
  v16 = a4[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v18;
  }

  return result;
}

void *sub_1B802F778(uint64_t a1, uint64_t *a2, char a3, uint64_t a4)
{
  v7 = a1;
  v15[1] = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 32);
  v9 = ((1 << v8) + 63) >> 6;
  if ((v8 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v11 = v15 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v11, v10);
    result = sub_1B803256C(v11, v9, v7, a2, a3 & 1);
    if (v4)
    {
      return swift_willThrow();
    }

    return result;
  }

  v13 = swift_slowAlloc();
  v14 = sub_1B803034C(v13, v9, v7, a2, a3 & 1);
  result = MEMORY[0x1B8CB8970](v13, -1, -1);
  if (!v4)
  {
    return v14;
  }

  return result;
}

void *sub_1B802F900(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v9 = v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_1B80303DC(v12, v7, v5, a3);
  result = MEMORY[0x1B8CB8970](v12, -1, -1);
  if (!v3)
  {
    return v13;
  }

  return result;
}

uint64_t sub_1B802FA70(unint64_t *a1, uint64_t a2, void *a3)
{
  v56 = a2;
  v57 = a1;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
  v4 = MEMORY[0x1EEE9AC00](v63);
  v6 = (&v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v56 - v7);
  v9 = type metadata accessor for Location(0);
  v61 = *(v9 - 8);
  v62 = v9;
  result = MEMORY[0x1EEE9AC00](v9);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = 0;
  v13 = 0;
  v64 = a3;
  v16 = a3[8];
  v15 = a3 + 8;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v60 = v20;
  if (v19)
  {
    do
    {
      v21 = __clz(__rbit64(v19));
      v91 = (v19 - 1) & v19;
LABEL_10:
      v24 = v21 | (v13 << 6);
      v25 = v64[7];
      v26 = (v64[6] + 176 * v24);
      v28 = v26[1];
      v27 = v26[2];
      v66 = *v26;
      v67 = v28;
      v68 = v27;
      v29 = v26[6];
      v31 = v26[3];
      v30 = v26[4];
      v71 = v26[5];
      v72 = v29;
      v69 = v31;
      v70 = v30;
      v32 = v26[10];
      v34 = v26[7];
      v33 = v26[8];
      v75 = v26[9];
      v76 = v32;
      v73 = v34;
      v74 = v33;
      v35 = *(v61 + 72);
      v59 = v24;
      sub_1B80337A4(v25 + v35 * v24, v12, type metadata accessor for Location);
      v36 = v75;
      v8[8] = v74;
      v8[9] = v36;
      v8[10] = v76;
      v37 = v71;
      v8[4] = v70;
      v8[5] = v37;
      v38 = v73;
      v8[6] = v72;
      v8[7] = v38;
      v39 = v67;
      *v8 = v66;
      v8[1] = v39;
      v40 = v69;
      v8[2] = v68;
      v8[3] = v40;
      v41 = v63;
      sub_1B80337A4(v12, v8 + *(v63 + 48), type metadata accessor for Location);
      sub_1B7FC8F2C(v8, v6, &qword_1EBA660D8, &qword_1B80D2E98);
      v42 = v6[9];
      v77[8] = v6[8];
      v77[9] = v42;
      v77[10] = v6[10];
      v43 = v6[5];
      v77[4] = v6[4];
      v77[5] = v43;
      v44 = v6[7];
      v77[6] = v6[6];
      v77[7] = v44;
      v45 = v6[1];
      v77[0] = *v6;
      v77[1] = v45;
      v46 = v6[3];
      v77[2] = v6[2];
      v77[3] = v46;
      sub_1B7FC8DA4(&v66, v65);
      sub_1B7FC8DA4(&v66, v65);
      sub_1B7FCAD28(v77);
      v47 = v6 + *(v41 + 48);
      v48 = (v47 + *(v62 + 20));
      v49 = v48[7];
      v84 = v48[6];
      v85 = v49;
      v50 = v48[5];
      v82 = v48[4];
      v83 = v50;
      v51 = v48[11];
      v88 = v48[10];
      v89 = v51;
      v52 = v48[3];
      v80 = v48[2];
      v81 = v52;
      v53 = v48[9];
      v86 = v48[8];
      v87 = v53;
      v54 = v48[1];
      v78 = *v48;
      v79 = v54;
      sub_1B7FB8448(&v78, v65, &qword_1EBA65D70, &qword_1B80D1BB0);
      sub_1B803380C(v47, type metadata accessor for Location);
      v90[8] = v86;
      v90[9] = v87;
      v90[10] = v88;
      v90[11] = v89;
      v90[4] = v82;
      v90[5] = v83;
      v90[6] = v84;
      v90[7] = v85;
      v90[0] = v78;
      v90[1] = v79;
      v90[2] = v80;
      v90[3] = v81;
      if (sub_1B8032DBC(v90) == 1)
      {
        sub_1B803380C(v12, type metadata accessor for Location);
        result = sub_1B7FCAD28(&v66);
        *(v57 + ((v59 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v59;
        if (__OFADD__(v58++, 1))
        {
          __break(1u);
          return sub_1B80308C0(v57, v56, v58, v64);
        }
      }

      else
      {
        sub_1B7FB86D4(&v78, &qword_1EBA65D70, &qword_1B80D1BB0);
        sub_1B803380C(v12, type metadata accessor for Location);
        result = sub_1B7FCAD28(&v66);
      }

      v20 = v60;
      v19 = v91;
    }

    while (v91);
  }

  v22 = v13;
  while (1)
  {
    v13 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v13 >= v20)
    {
      return sub_1B80308C0(v57, v56, v58, v64);
    }

    v23 = v15[v13];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v91 = (v23 - 1) & v23;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B802FEE0(unint64_t *a1, uint64_t a2, void *a3)
{
  v57 = a2;
  v58 = a1;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
  v4 = MEMORY[0x1EEE9AC00](v63);
  v6 = (&v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v56 - v7);
  v9 = type metadata accessor for Location(0);
  v61 = *(v9 - 8);
  v62 = v9;
  result = MEMORY[0x1EEE9AC00](v9);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = 0;
  v13 = 0;
  v64 = a3;
  v16 = a3[8];
  v15 = a3 + 8;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  while (v19)
  {
    v21 = __clz(__rbit64(v19));
    v91 = (v19 - 1) & v19;
LABEL_11:
    v24 = v21 | (v13 << 6);
    v25 = v64[7];
    v26 = (v64[6] + 176 * v24);
    v28 = v26[1];
    v27 = v26[2];
    v66 = *v26;
    v67 = v28;
    v68 = v27;
    v29 = v26[6];
    v31 = v26[3];
    v30 = v26[4];
    v71 = v26[5];
    v72 = v29;
    v69 = v31;
    v70 = v30;
    v32 = v26[10];
    v34 = v26[7];
    v33 = v26[8];
    v75 = v26[9];
    v76 = v32;
    v73 = v34;
    v74 = v33;
    v35 = *(v61 + 72);
    v60 = v24;
    sub_1B80337A4(v25 + v35 * v24, v12, type metadata accessor for Location);
    v36 = v75;
    v8[8] = v74;
    v8[9] = v36;
    v8[10] = v76;
    v37 = v71;
    v8[4] = v70;
    v8[5] = v37;
    v38 = v73;
    v8[6] = v72;
    v8[7] = v38;
    v39 = v67;
    *v8 = v66;
    v8[1] = v39;
    v40 = v69;
    v8[2] = v68;
    v8[3] = v40;
    v41 = v63;
    sub_1B80337A4(v12, v8 + *(v63 + 48), type metadata accessor for Location);
    sub_1B7FC8F2C(v8, v6, &qword_1EBA660D8, &qword_1B80D2E98);
    v42 = v6[9];
    v77[8] = v6[8];
    v77[9] = v42;
    v77[10] = v6[10];
    v43 = v6[5];
    v77[4] = v6[4];
    v77[5] = v43;
    v44 = v6[7];
    v77[6] = v6[6];
    v77[7] = v44;
    v45 = v6[1];
    v77[0] = *v6;
    v77[1] = v45;
    v46 = v6[3];
    v77[2] = v6[2];
    v77[3] = v46;
    sub_1B7FC8DA4(&v66, v65);
    sub_1B7FC8DA4(&v66, v65);
    sub_1B7FCAD28(v77);
    v47 = v6 + *(v41 + 48);
    v48 = (v47 + *(v62 + 20));
    v49 = v48[7];
    v84 = v48[6];
    v85 = v49;
    v50 = v48[5];
    v82 = v48[4];
    v83 = v50;
    v51 = v48[11];
    v88 = v48[10];
    v89 = v51;
    v52 = v48[3];
    v80 = v48[2];
    v81 = v52;
    v53 = v48[9];
    v86 = v48[8];
    v87 = v53;
    v54 = v48[1];
    v78 = *v48;
    v79 = v54;
    sub_1B7FB8448(&v78, v65, &qword_1EBA65D70, &qword_1B80D1BB0);
    sub_1B803380C(v47, type metadata accessor for Location);
    v90[8] = v86;
    v90[9] = v87;
    v90[10] = v88;
    v90[11] = v89;
    v90[4] = v82;
    v90[5] = v83;
    v90[6] = v84;
    v90[7] = v85;
    v90[0] = v78;
    v90[1] = v79;
    v90[2] = v80;
    v90[3] = v81;
    if (sub_1B8032DBC(v90) == 1)
    {
      sub_1B803380C(v12, type metadata accessor for Location);
      result = sub_1B7FCAD28(&v66);
      v19 = v91;
    }

    else
    {
      sub_1B7FB86D4(&v78, &qword_1EBA65D70, &qword_1B80D1BB0);
      sub_1B803380C(v12, type metadata accessor for Location);
      result = sub_1B7FCAD28(&v66);
      *(v58 + ((v60 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v60;
      if (__OFADD__(v59++, 1))
      {
        goto LABEL_17;
      }

      v19 = v91;
    }
  }

  v22 = v13;
  while (1)
  {
    v13 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v13 >= v20)
    {
      return sub_1B80308C0(v58, v57, v59, v64);
    }

    v23 = v15[v13];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v91 = (v23 - 1) & v23;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

void *sub_1B803034C(void *result, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v7 = result;
      v8 = a2;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v7;
      a2 = v8;
      a4 = v9;
    }

    v10 = sub_1B803256C(result, a2, a3, a4, a5 & 1);

    return v10;
  }

  return result;
}

void *sub_1B80303DC(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

unint64_t *sub_1B8030464(unint64_t *result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1B80330D0(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_1B8030500(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1B80C8E2C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v49 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v46 = v40 - v13;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v45 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660F8, &qword_1B80D2F88);
  result = sub_1B80C966C();
  v15 = result;
  if (a2 < 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = *a1;
  }

  v17 = 0;
  v43 = result;
  v44 = v9 + 16;
  v18 = v9 + 32;
  v40[1] = 0x80000001B80CB3E0;
  v40[2] = 0x80000001B80CB400;
  v19 = result + 64;
  v20 = v45;
  v41 = v9;
  v42 = a4;
  while (v16)
  {
    v21 = v18;
    v22 = __clz(__rbit64(v16));
    v47 = (v16 - 1) & v16;
LABEL_16:
    v25 = v22 | (v17 << 6);
    v26 = a4[7];
    v27 = *(a4[6] + v25);
    v48 = *(v9 + 72);
    v28 = v46;
    (*(v9 + 16))(v46, v26 + v48 * v25, v20);
    v29 = *(v9 + 32);
    v30 = v28;
    v18 = v21;
    v29(v49, v30, v20);
    v15 = v43;
    sub_1B80C993C();
    sub_1B80C911C();

    result = sub_1B80C997C();
    v31 = -1 << *(v15 + 32);
    v32 = result & ~v31;
    v33 = v32 >> 6;
    if (((-1 << v32) & ~*(v19 + 8 * (v32 >> 6))) == 0)
    {
      v35 = 0;
      v36 = (63 - v31) >> 6;
      v20 = v45;
      while (++v33 != v36 || (v35 & 1) == 0)
      {
        v37 = v33 == v36;
        if (v33 == v36)
        {
          v33 = 0;
        }

        v35 |= v37;
        v38 = *(v19 + 8 * v33);
        if (v38 != -1)
        {
          v34 = __clz(__rbit64(~v38)) + (v33 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v34 = __clz(__rbit64((-1 << v32) & ~*(v19 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
    v20 = v45;
LABEL_26:
    *(v19 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
    *(*(v15 + 48) + v34) = v27;
    result = (v29)(*(v15 + 56) + v34 * v48, v49, v20);
    ++*(v15 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    v9 = v41;
    a4 = v42;
    v16 = v47;
    if (!a3)
    {
      return v15;
    }
  }

  v23 = v17;
  while (1)
  {
    v17 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v17 >= a2)
    {
      return v15;
    }

    v24 = a1[v17];
    ++v23;
    if (v24)
    {
      v21 = v18;
      v22 = __clz(__rbit64(v24));
      v47 = (v24 - 1) & v24;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1B80308C0(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for Location(0);
  v55 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v51 - v11;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v53 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660F0, &unk_1B80DAC60);
  result = sub_1B80C966C();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 64;
  v17 = v53;
  v52 = a4;
  while (v14)
  {
    v18 = __clz(__rbit64(v14));
    v56 = (v14 - 1) & v14;
LABEL_16:
    v21 = v18 | (v15 << 6);
    v22 = a4[7];
    v23 = (a4[6] + 176 * v21);
    v25 = v23[1];
    v24 = v23[2];
    v59 = *v23;
    v60 = v25;
    v61 = v24;
    v26 = v23[6];
    v28 = v23[3];
    v27 = v23[4];
    v64 = v23[5];
    v65 = v26;
    v62 = v28;
    v63 = v27;
    v29 = v23[10];
    v31 = v23[7];
    v30 = v23[8];
    v68 = v23[9];
    v69 = v29;
    v66 = v31;
    v67 = v30;
    v32 = v54;
    v57 = *(v55 + 72);
    sub_1B80337A4(v22 + v57 * v21, v54, type metadata accessor for Location);
    sub_1B80344D4(v32, v17, type metadata accessor for Location);
    sub_1B80C993C();
    sub_1B80C90FC();
    sub_1B7FC8DA4(&v59, &v58);
    sub_1B80C911C();

    result = sub_1B80C997C();
    v33 = -1 << *(v13 + 32);
    v34 = result & ~v33;
    v35 = v34 >> 6;
    if (((-1 << v34) & ~*(v16 + 8 * (v34 >> 6))) == 0)
    {
      v37 = 0;
      v38 = (63 - v33) >> 6;
      a4 = v52;
      v17 = v53;
      while (++v35 != v38 || (v37 & 1) == 0)
      {
        v39 = v35 == v38;
        if (v35 == v38)
        {
          v35 = 0;
        }

        v37 |= v39;
        v40 = *(v16 + 8 * v35);
        if (v40 != -1)
        {
          v36 = __clz(__rbit64(~v40)) + (v35 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v36 = __clz(__rbit64((-1 << v34) & ~*(v16 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
    a4 = v52;
    v17 = v53;
LABEL_26:
    *(v16 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
    v41 = (*(v13 + 48) + 176 * v36);
    v43 = v64;
    v42 = v65;
    v44 = v63;
    v41[3] = v62;
    v41[4] = v44;
    v41[5] = v43;
    v41[6] = v42;
    v46 = v60;
    v45 = v61;
    *v41 = v59;
    v41[1] = v46;
    v41[2] = v45;
    v47 = v66;
    v48 = v67;
    v49 = v69;
    v41[9] = v68;
    v41[10] = v49;
    v41[7] = v47;
    v41[8] = v48;
    result = sub_1B80344D4(v17, *(v13 + 56) + v36 * v57, type metadata accessor for Location);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    v14 = v56;
    if (!a3)
    {
      return v13;
    }
  }

  v19 = v15;
  while (1)
  {
    v15 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v20 = a1[v15];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v56 = (v20 - 1) & v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1B8030C8C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = *(result + 16);
    if (v2)
    {
      v3 = (result + 32);
      do
      {
        v4 = v3[9];
        v11[8] = v3[8];
        v11[9] = v4;
        v11[10] = v3[10];
        v5 = v3[5];
        v11[4] = v3[4];
        v11[5] = v5;
        v6 = v3[7];
        v11[6] = v3[6];
        v11[7] = v6;
        v7 = v3[1];
        v11[0] = *v3;
        v11[1] = v7;
        v8 = v3[3];
        v11[2] = v3[2];
        v11[3] = v8;
        sub_1B7FC8DA4(v11, v10);
        sub_1B8030D84(v9);
        sub_1B7FCAD28(v11);
        v10[8] = v9[8];
        v10[9] = v9[9];
        v10[10] = v9[10];
        v10[4] = v9[4];
        v10[5] = v9[5];
        v10[6] = v9[6];
        v10[7] = v9[7];
        v10[0] = v9[0];
        v10[1] = v9[1];
        v10[2] = v9[2];
        v10[3] = v9[3];
        result = sub_1B7FB86D4(v10, &qword_1EBA65D78, &qword_1B80D2640);
        v3 += 11;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

void sub_1B8030D84(_OWORD *a2@<X8>)
{
  v3 = *v2;
  sub_1B80C993C();
  sub_1B80C90FC();
  sub_1B80C911C();

  v4 = sub_1B80C997C();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if ((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = (*(v3 + 48) + 176 * v6);
      v10 = v8[1];
      v9 = v8[2];
      v32 = *v8;
      v33 = v10;
      v34 = v9;
      v11 = v8[3];
      v12 = v8[4];
      v13 = v8[6];
      v37 = v8[5];
      v38 = v13;
      v35 = v11;
      v36 = v12;
      v14 = v8[7];
      v15 = v8[8];
      v16 = v8[10];
      v41 = v8[9];
      v42 = v16;
      v39 = v14;
      v40 = v15;
      v17 = sub_1B80C90FC();
      v19 = v18;
      if (v17 == sub_1B80C90FC() && v19 == v20)
      {
        break;
      }

      v21 = sub_1B80C981C();
      sub_1B7FC8DA4(&v32, v31);

      sub_1B7FCAD28(&v32);
      if (v21)
      {
        goto LABEL_9;
      }

      v6 = (v6 + 1) & v7;
      if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    sub_1B7FC8DA4(&v32, v31);

    sub_1B7FCAD28(&v32);
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v29;
    v31[0] = *v29;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1B80874A0();
      v28 = v31[0];
    }

    memmove(a2, (*(v28 + 48) + 176 * v6), 0xB0uLL);
    sub_1B8030FD4(v6);
    *v29 = v31[0];
    nullsub_1();
  }

  else
  {
LABEL_7:
    sub_1B7FF88D4(&v32);
    v22 = v41;
    a2[8] = v40;
    a2[9] = v22;
    a2[10] = v42;
    v23 = v37;
    a2[4] = v36;
    a2[5] = v23;
    v24 = v39;
    a2[6] = v38;
    a2[7] = v24;
    v25 = v33;
    *a2 = v32;
    a2[1] = v25;
    v26 = v35;
    a2[2] = v34;
    a2[3] = v26;
  }
}

void sub_1B8030FD4(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1B80C94DC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = (*(v3 + 48) + 176 * v6);
        v12 = *v10;
        v11 = v10[1];
        v28[2] = v10[2];
        v13 = v10[3];
        v14 = v10[4];
        v15 = v10[6];
        v28[5] = v10[5];
        v28[6] = v15;
        v28[3] = v13;
        v28[4] = v14;
        v16 = v10[7];
        v17 = v10[8];
        v18 = v10[10];
        v28[9] = v10[9];
        v28[10] = v18;
        v28[7] = v16;
        v28[8] = v17;
        v28[0] = v12;
        v28[1] = v11;
        sub_1B80C993C();
        sub_1B80C90FC();
        sub_1B7FC8DA4(v28, v27);
        sub_1B80C911C();

        v19 = sub_1B80C997C();
        sub_1B7FCAD28(v28);
        v20 = v19 & v7;
        if (v2 >= v9)
        {
          if (v20 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v20 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v20)
        {
LABEL_11:
          v21 = *(v3 + 48);
          v22 = (v21 + 176 * v2);
          v23 = (v21 + 176 * v6);
          if (v2 != v6 || v22 >= v23 + 176)
          {
            memmove(v22, v23, 0xB0uLL);
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v24 = *(v3 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v26;
    ++*(v3 + 36);
  }
}

void (*sub_1B80311F4(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
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
  v5[8] = sub_1B80314EC(v5);
  v5[9] = sub_1B80312F8((v5 + 4), a2, isUniquelyReferenced_nonNull_native);
  return sub_1B8031298;
}

void sub_1B8031298(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t *(*sub_1B80312F8(uint64_t a1, uint64_t a2, char a3))(uint64_t *result, char a2)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v8 = *v3;
  v9 = sub_1B7FDA504(a2);
  *(a1 + 25) = v10 & 1;
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1B809230C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1B8090F00(v14, a3 & 1);
    v9 = sub_1B7FDA504(a2);
    if ((v15 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_13:
    result = sub_1B80C986C();
    __break(1u);
    return result;
  }

LABEL_8:
  *(a1 + 16) = v9;
  if (v15)
  {
    v19 = *(*(*v4 + 56) + 8 * v9);
  }

  else
  {
    v19 = 0;
  }

  *a1 = v19;
  return sub_1B8031414;
}

uint64_t *sub_1B8031414(uint64_t *result, char a2)
{
  v2 = *result;
  LOBYTE(v3) = *(result + 25);
  if (a2)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v4 = result[2];
    v5 = *result[1];
    if (*(result + 25))
    {
LABEL_9:
      *(v5[7] + 8 * v4) = v2;
      return result;
    }

    v6 = *(result + 24);
    v5[(v4 >> 6) + 8] |= 1 << v4;
    *(v5[6] + v4) = v6;
    v3 = v5[7];
    *(v3 + 8 * v4) = v2;
    v7 = v5[2];
    v8 = __OFADD__(v7, 1);
    v2 = v7 + 1;
    if (!v8)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v2)
  {
LABEL_10:
    if (v3)
    {
      return sub_1B8014348(result[2], *result[1]);
    }

    return result;
  }

  v4 = result[2];
  v5 = *result[1];
  if (v3)
  {
    goto LABEL_9;
  }

  v9 = *(result + 24);
  v5[(v4 >> 6) + 8] |= 1 << v4;
  *(v5[6] + v4) = v9;
  *(v5[7] + 8 * v4) = v2;
  v10 = v5[2];
  v8 = __OFADD__(v10, 1);
  v2 = v10 + 1;
  if (!v8)
  {
LABEL_14:
    v5[2] = v2;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1B80314EC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1B8031514;
}

uint64_t sub_1B8031520(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = a2 + 56;
  while (1)
  {
    if (!*(a2 + 16))
    {
      goto LABEL_5;
    }

    v7 = (v5 + 16 * v4);
    v9 = *v7;
    v8 = v7[1];
    sub_1B80C993C();

    sub_1B80C911C();
    v10 = sub_1B80C997C();
    v11 = -1 << *(a2 + 32);
    v12 = v10 & ~v11;
    if ((*(v6 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
    {
      break;
    }

LABEL_4:

LABEL_5:
    if (++v4 == v2)
    {
      return 1;
    }
  }

  v13 = ~v11;
  while (1)
  {
    v14 = (*(a2 + 48) + 16 * v12);
    v15 = *v14 == v9 && v14[1] == v8;
    if (v15 || (sub_1B80C981C() & 1) != 0)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v6 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  return 0;
}

uint64_t sub_1B80316A8()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  v7 = (v0 + v4);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v0 + v5);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_1B7FC253C;

  return sub_1B802E4F8(v6, v0 + v3, v8, v9, v10);
}

uint64_t sub_1B8031830()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  v7 = (v0 + v4);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v0 + v5);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_1B7FC253C;

  return sub_1B802D994(v6, v0 + v3, v8, v9, v10);
}

uint64_t sub_1B80319B8()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  v7 = (v0 + v4);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v0 + v5);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_1B7FC253C;

  return sub_1B802D0CC(v6, v0 + v3, v8, v9, v10);
}

uint64_t objectdestroy_22Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1B8031BA4(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v2 + v5, v6);
}

uint64_t objectdestroy_26Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B8031CF8()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660B8, &qword_1B80D2E28) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 17) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for ClientID(0);
  v16 = *(v0 + 16);
  v6 = v0 + v4;
  v7 = *(v0 + v4);
  v14 = *(v6 + 9);
  v8 = *(v0 + v5 + 16);
  v13 = *(v0 + v5 + 8);
  v9 = *(v6 + 8);
  v10 = *(v0 + v5);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_1B7FC253C;

  return sub_1B8017FE8(v16, v0 + v3, v7, v9, v14, v10, v13, v8);
}

uint64_t sub_1B8031EE0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 32);
    do
    {
      v3 = v2[9];
      v10[8] = v2[8];
      v10[9] = v3;
      v10[10] = v2[10];
      v4 = v2[5];
      v10[4] = v2[4];
      v10[5] = v4;
      v5 = v2[7];
      v10[6] = v2[6];
      v10[7] = v5;
      v6 = v2[1];
      v10[0] = *v2;
      v10[1] = v6;
      v7 = v2[3];
      v10[2] = v2[2];
      v10[3] = v7;
      sub_1B7FC8DA4(v10, v9);
      sub_1B8086FBC(v8, v10);
      v9[8] = v8[8];
      v9[9] = v8[9];
      v9[10] = v8[10];
      v9[4] = v8[4];
      v9[5] = v8[5];
      v9[6] = v8[6];
      v9[7] = v8[7];
      v9[0] = v8[0];
      v9[1] = v8[1];
      v9[2] = v8[2];
      v9[3] = v8[3];
      result = sub_1B7FCAD28(v9);
      v2 += 11;
      --v1;
    }

    while (v1);
  }

  return result;
}

BOOL sub_1B8031FA4(_OWORD *a1, uint64_t a2, uint64_t *a3, int a4)
{
  LODWORD(v65) = a4;
  v66 = a2;
  v6 = type metadata accessor for Location(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v59[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1B80C8E2C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v59[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v59[-v15];
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v59[-v17];
  v19 = a1[5];
  v68[4] = a1[4];
  v68[5] = v19;
  v20 = a1[3];
  v68[2] = a1[2];
  v68[3] = v20;
  v21 = a1[10];
  v68[9] = a1[9];
  v68[10] = v21;
  v22 = a1[8];
  v68[7] = a1[7];
  v68[8] = v22;
  v68[6] = a1[6];
  v23 = a1[1];
  v68[0] = *a1;
  v68[1] = v23;
  v24 = *a3;
  if (!*(v24 + 16))
  {
    return 0;
  }

  v25 = sub_1B7FDA47C(v68);
  if ((v26 & 1) == 0)
  {
    return 0;
  }

  v63 = v8;
  v64 = v13;
  v27 = v10[2];
  v27(v18, *(v24 + 56) + v10[9] * v25, v9);
  sub_1B80C8DCC();
  v28 = sub_1B80C8D9C();
  v31 = v10[1];
  v29 = v10 + 1;
  v30 = v31;
  v31(v16, v9);
  if (v28)
  {
    v62 = v29;
    v65 = v30;
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v32 = sub_1B80C900C();
    __swift_project_value_buffer(v32, qword_1ED8DDF28);
    v33 = v63;
    sub_1B80337A4(v66, v63, type metadata accessor for Location);
    v27(v64, v18, v9);
    sub_1B7FC8DA4(v68, v67);
    v34 = sub_1B80C8FEC();
    v35 = sub_1B80C941C();
    sub_1B7FCAD28(v68);
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *&v67[0] = v66;
      *v36 = 136447747;
      *(v36 + 4) = sub_1B7FB84FC(0xD000000000000038, 0x80000001B80CCC10, v67);
      *(v36 + 12) = 2160;
      *(v36 + 14) = 1752392040;
      *(v36 + 22) = 2081;
      sub_1B80C8DCC();
      sub_1B7FCD170(&qword_1EBA66038, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v61 = v34;
      v37 = sub_1B80C97FC();
      v60 = v35;
      v39 = v38;
      v40 = v16;
      v41 = v65;
      v65(v40, v9);
      sub_1B803380C(v33, type metadata accessor for Location);
      v42 = sub_1B7FB84FC(v37, v39, v67);

      *(v36 + 24) = v42;
      *(v36 + 32) = 2160;
      *(v36 + 34) = 1752392040;
      *(v36 + 42) = 2081;
      *(v36 + 44) = sub_1B7FB84FC(*&v68[0], *(&v68[0] + 1), v67);
      *(v36 + 52) = 2160;
      *(v36 + 54) = 1752392040;
      *(v36 + 62) = 2081;
      v43 = v64;
      v44 = sub_1B80C97FC();
      v46 = v45;
      v41(v43, v9);
      v47 = sub_1B7FB84FC(v44, v46, v67);

      *(v36 + 64) = v47;
      v48 = v61;
      _os_log_impl(&dword_1B7FB5000, v61, v60, "%{public}s\ndrop older location date:%{private,mask.hash}s\nfor handle: %{private,mask.hash}s\nwith date: %{private,mask.hash}s", v36, 0x48u);
      v49 = v66;
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v49, -1, -1);
      MEMORY[0x1B8CB8970](v36, -1, -1);

      v41(v18, v9);
    }

    else
    {

      v58 = v65;
      v65(v64, v9);
      sub_1B803380C(v33, type metadata accessor for Location);
      v58(v18, v9);
    }

    return 0;
  }

  v30(v18, v9);
  if ((v65 & 1) == 0)
  {
    return 1;
  }

  v50 = (v66 + *(v6 + 20));
  v51 = v50[9];
  v67[8] = v50[8];
  v67[9] = v51;
  v52 = v50[11];
  v67[10] = v50[10];
  v67[11] = v52;
  v53 = v50[5];
  v67[4] = v50[4];
  v67[5] = v53;
  v54 = v50[7];
  v67[6] = v50[6];
  v67[7] = v54;
  v55 = v50[1];
  v67[0] = *v50;
  v67[1] = v55;
  v56 = v50[3];
  v67[2] = v50[2];
  v67[3] = v56;
  return sub_1B8032DBC(v67) == 0;
}

uint64_t sub_1B803256C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5)
{
  v55 = a5;
  v40 = a4;
  v36 = a2;
  v37 = a1;
  v6 = type metadata accessor for Location(0);
  v39 = *(v6 - 8);
  result = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = 0;
  v10 = 0;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_11:
    v18 = v15 | (v10 << 6);
    v19 = *(a3 + 56);
    v20 = (*(a3 + 48) + 176 * v18);
    v22 = v20[1];
    v21 = v20[2];
    v53[0] = *v20;
    v53[1] = v22;
    v53[2] = v21;
    v23 = v20[6];
    v25 = v20[3];
    v24 = v20[4];
    v53[5] = v20[5];
    v53[6] = v23;
    v53[3] = v25;
    v53[4] = v24;
    v26 = v20[10];
    v28 = v20[7];
    v27 = v20[8];
    v53[9] = v20[9];
    v53[10] = v26;
    v53[7] = v28;
    v53[8] = v27;
    v29 = v20[9];
    v50 = v20[8];
    v51 = v29;
    v52 = v20[10];
    v30 = v20[5];
    v46 = v20[4];
    v47 = v30;
    v31 = v20[7];
    v48 = v20[6];
    v49 = v31;
    v32 = v20[1];
    v42 = *v20;
    v43 = v32;
    v33 = v20[3];
    v44 = v20[2];
    v45 = v33;
    sub_1B80337A4(v19 + *(v39 + 72) * v18, v9, type metadata accessor for Location);
    sub_1B7FC8DA4(v53, &v41);
    v34 = sub_1B8031FA4(&v42, v9, v40, v55 & 1);
    sub_1B803380C(v9, type metadata accessor for Location);
    v54[8] = v50;
    v54[9] = v51;
    v54[10] = v52;
    v54[4] = v46;
    v54[5] = v47;
    v54[6] = v48;
    v54[7] = v49;
    v54[0] = v42;
    v54[1] = v43;
    v54[2] = v44;
    v54[3] = v45;
    result = sub_1B7FCAD28(v54);
    if (v34)
    {
      *(v37 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v38++, 1))
      {
        __break(1u);
        return sub_1B80308C0(v37, v36, v38, a3);
      }
    }
  }

  v16 = v10;
  while (1)
  {
    v10 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v10 >= v14)
    {
      return sub_1B80308C0(v37, v36, v38, a3);
    }

    v17 = *(a3 + 64 + 8 * v10);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v13 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_1B8032820(_OWORD *a1, unsigned __int8 a2)
{
  v3 = a1[9];
  v21[8] = a1[8];
  v21[9] = v3;
  v21[10] = a1[10];
  v4 = a1[5];
  v21[4] = a1[4];
  v21[5] = v4;
  v5 = a1[7];
  v21[6] = a1[6];
  v21[7] = v5;
  v6 = a1[1];
  v21[0] = *a1;
  v21[1] = v6;
  v7 = a1[3];
  v21[2] = a1[2];
  v21[3] = v7;
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v8 = sub_1B80C900C();
  __swift_project_value_buffer(v8, qword_1ED8DDF28);
  sub_1B7FC8DA4(v21, v20);
  v9 = sub_1B80C8FEC();
  v10 = sub_1B80C941C();
  sub_1B7FCAD28(v21);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20[0] = v12;
    *v11 = 136446979;
    *(v11 + 4) = sub_1B7FB84FC(0xD00000000000004ALL, 0x80000001B80CCA80, v20);
    *(v11 + 12) = 2160;
    *(v11 + 14) = 1752392040;
    *(v11 + 22) = 2081;
    *(v11 + 24) = sub_1B7FB84FC(*&v21[0], *(&v21[0] + 1), v20);
    *(v11 + 32) = 2082;
    v13 = 0xE800000000000000;
    v14 = 0x776F6C6C6168732ELL;
    v15 = 0xE500000000000000;
    v16 = 0x6576696C2ELL;
    if (a2 != 2)
    {
      v16 = 0xD000000000000014;
      v15 = 0x80000001B80CBF40;
    }

    if (!a2)
    {
      v14 = 0xD000000000000015;
      v13 = 0x80000001B80CBFD0;
    }

    if (a2 <= 1u)
    {
      v17 = v14;
    }

    else
    {
      v17 = v16;
    }

    if (a2 <= 1u)
    {
      v18 = v13;
    }

    else
    {
      v18 = v15;
    }

    v19 = sub_1B7FB84FC(v17, v18, v20);

    *(v11 + 34) = v19;
    _os_log_impl(&dword_1B7FB5000, v9, v10, "%{public}s for handle: %{private,mask.hash}s\nwith priority: %{public}s", v11, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v12, -1, -1);
    MEMORY[0x1B8CB8970](v11, -1, -1);
  }
}

uint64_t sub_1B8032A88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66088, &qword_1B80D2CF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8032AF8()
{
  v2 = *(type metadata accessor for ClientID(0) - 8);
  v3 = (*(v2 + 80) + 77) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B7FC253C;

  return sub_1B802ABF0(v4, v0 + 24, v0 + v3);
}

unint64_t sub_1B8032C04()
{
  result = qword_1ED8DC418;
  if (!qword_1ED8DC418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC418);
  }

  return result;
}

uint64_t sub_1B8032C6C()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66078, &qword_1B80D2C10) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 9);
  v8 = *(v5 + 8);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1B7FC253C;

  return sub_1B80150A4(v4, v0 + v3, v6, v8, v7);
}

uint64_t sub_1B8032DBC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void sub_1B8032DE0(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[9];
  v30[8] = a1[8];
  v30[9] = v5;
  v30[10] = a1[10];
  v6 = a1[5];
  v30[4] = a1[4];
  v30[5] = v6;
  v7 = a1[7];
  v30[6] = a1[6];
  v30[7] = v7;
  v8 = a1[1];
  v30[0] = *a1;
  v30[1] = v8;
  v9 = a1[3];
  v30[2] = a1[2];
  v30[3] = v9;
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v10 = sub_1B80C900C();
  __swift_project_value_buffer(v10, qword_1ED8DDF28);
  swift_retain_n();
  sub_1B7FC8DA4(v30, v29);
  v11 = sub_1B80C8FEC();
  v12 = sub_1B80C941C();
  sub_1B7FCAD28(v30);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 141558787;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    *(v13 + 14) = sub_1B7FB84FC(*&v30[0], *(&v30[0] + 1), &v28);
    *(v13 + 22) = 2082;
    v15 = 0xE800000000000000;
    v16 = 0x776F6C6C6168732ELL;
    v17 = 0xE500000000000000;
    v18 = 0x6576696C2ELL;
    if (a2 != 2)
    {
      v18 = 0xD000000000000014;
      v17 = 0x80000001B80CBF40;
    }

    if (!a2)
    {
      v16 = 0xD000000000000015;
      v15 = 0x80000001B80CBFD0;
    }

    if (a2 <= 1u)
    {
      v19 = v16;
    }

    else
    {
      v19 = v18;
    }

    if (a2 <= 1u)
    {
      v20 = v15;
    }

    else
    {
      v20 = v17;
    }

    v21 = sub_1B7FB84FC(v19, v20, &v28);

    *(v13 + 24) = v21;
    *(v13 + 32) = 2048;
    v22 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_handlesForLocationRefreshing;
    swift_beginAccess();
    v23 = *(a3 + v22);
    if (*(v23 + 16) && (v24 = sub_1B7FDA504(a2), (v25 & 1) != 0))
    {
      v26 = *(*(v23 + 56) + 8 * v24);
    }

    else
    {
      v26 = MEMORY[0x1E69E7CD0];
    }

    v27 = *(v26 + 16);

    *(v13 + 34) = v27;

    _os_log_impl(&dword_1B7FB5000, v11, v12, "After addHandles to LocationStream handle: %{private,mask.hash}s with priority %{public}s, current refresh count: %ld.", v13, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v14, -1, -1);
    MEMORY[0x1B8CB8970](v13, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1B80330D0(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v58 = a2;
  v59 = a1;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
  MEMORY[0x1EEE9AC00](v65);
  v7 = (&v58 - v6);
  v8 = type metadata accessor for Location(0);
  v64 = *(v8 - 8);
  result = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v67 = v7;
  v68 = a3;
  v15 = a3[8];
  v14 = a3 + 8;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v70 = a4 + 56;
  v63 = v14;
  v61 = 0;
  v62 = v19;
  v66 = v11;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v69 = (v18 - 1) & v18;
LABEL_15:
    v23 = v20 | (v12 << 6);
    v24 = v68[7];
    v25 = (v68[6] + 176 * v23);
    v27 = v25[1];
    v26 = v25[2];
    v73 = *v25;
    v74 = v27;
    v75 = v26;
    v28 = v25[6];
    v30 = v25[3];
    v29 = v25[4];
    v78 = v25[5];
    v79 = v28;
    v76 = v30;
    v77 = v29;
    v31 = v25[10];
    v33 = v25[7];
    v32 = v25[8];
    v82 = v25[9];
    v83 = v31;
    v80 = v33;
    v81 = v32;
    sub_1B80337A4(v24 + *(v64 + 72) * v23, v11, type metadata accessor for Location);
    v34 = v82;
    v7[8] = v81;
    v7[9] = v34;
    v7[10] = v83;
    v35 = v78;
    v7[4] = v77;
    v7[5] = v35;
    v36 = v80;
    v7[6] = v79;
    v7[7] = v36;
    v37 = v74;
    *v7 = v73;
    v7[1] = v37;
    v38 = v76;
    v7[2] = v75;
    v7[3] = v38;
    sub_1B80337A4(v11, v7 + *(v65 + 48), type metadata accessor for Location);
    if (!*(a4 + 16))
    {
      sub_1B7FC8DA4(&v73, v72);
      sub_1B7FC8DA4(&v73, v72);
LABEL_6:
      v7 = v67;
      sub_1B7FB86D4(v67, &qword_1EBA660D8, &qword_1B80D2E98);
      v11 = v66;
      sub_1B803380C(v66, type metadata accessor for Location);
      result = sub_1B7FCAD28(&v73);
      goto LABEL_7;
    }

    v60 = v23;
    v39 = v73;
    sub_1B80C993C();
    v84 = v39;
    sub_1B80C90FC();
    sub_1B7FC8DA4(&v73, v72);
    sub_1B7FC8DA4(&v73, v72);
    sub_1B80C911C();

    v40 = sub_1B80C997C();
    v41 = -1 << *(a4 + 32);
    v42 = v40 & ~v41;
    if (((*(v70 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
    {
      goto LABEL_6;
    }

    v43 = ~v41;
    while (1)
    {
      v44 = (*(a4 + 48) + 176 * v42);
      v46 = v44[1];
      v45 = v44[2];
      v72[0] = *v44;
      v72[1] = v46;
      v72[2] = v45;
      v47 = v44[6];
      v49 = v44[3];
      v48 = v44[4];
      v72[5] = v44[5];
      v72[6] = v47;
      v72[3] = v49;
      v72[4] = v48;
      v50 = v44[10];
      v52 = v44[7];
      v51 = v44[8];
      v72[9] = v44[9];
      v72[10] = v50;
      v72[7] = v52;
      v72[8] = v51;
      v53 = sub_1B80C90FC();
      v55 = v54;
      if (v53 == sub_1B80C90FC() && v55 == v56)
      {
        break;
      }

      v57 = sub_1B80C981C();
      sub_1B7FC8DA4(v72, v71);

      sub_1B7FCAD28(v72);
      if (v57)
      {
        goto LABEL_24;
      }

      v42 = (v42 + 1) & v43;
      if (((*(v70 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    sub_1B7FC8DA4(v72, v71);

    sub_1B7FCAD28(v72);
LABEL_24:
    v7 = v67;
    sub_1B7FB86D4(v67, &qword_1EBA660D8, &qword_1B80D2E98);
    v11 = v66;
    sub_1B803380C(v66, type metadata accessor for Location);
    result = sub_1B7FCAD28(&v73);
    *(v59 + ((v60 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v60;
    if (__OFADD__(v61, 1))
    {
      goto LABEL_28;
    }

    ++v61;
LABEL_7:
    v19 = v62;
    v14 = v63;
    v18 = v69;
  }

  v21 = v12;
  while (1)
  {
    v12 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      return sub_1B80308C0(v59, v58, v61, v68);
    }

    v22 = v14[v12];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v69 = (v22 - 1) & v22;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}