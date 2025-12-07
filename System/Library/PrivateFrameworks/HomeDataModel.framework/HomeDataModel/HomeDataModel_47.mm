uint64_t sub_1D1AF55CC()
{
  v1 = v0[34];
  v2 = v0[19];
  v3 = v0[14];

  v1(v2, v3);

  v4 = v0[1];
  v5 = MEMORY[0x1E69E7CC0];

  return v4(v5);
}

uint64_t sub_1D1AF56B8(uint64_t a1, char a2)
{
  *(v2 + 160) = a2;
  *(v2 + 144) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1AF56DC, 0, 0);
}

uint64_t sub_1D1AF56DC()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1D1A77D2C;
  v3 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1D17B04C8;
  *(v0 + 104) = &block_descriptor_67_0;
  *(v0 + 112) = v3;
  [v2 setNaturalLightingEnabled:v1 completionHandler:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t HomeState.Stream.fetchSettings<A>(for:lightProfiles:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 128) = a4;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 48) = *(a5 - 8);
  *(v6 + 56) = swift_task_alloc();
  *(v6 + 64) = swift_task_alloc();
  v10 = swift_task_alloc();
  *(v6 + 72) = v10;
  *v10 = v6;
  v10[1] = sub_1D1AF5920;

  return sub_1D1AF44DC(a2, a5, a6);
}

uint64_t sub_1D1AF5920(uint64_t a1)
{
  *(*v1 + 80) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1AF5A20, 0, 0);
}

uint64_t sub_1D1AF5A20()
{
  if (qword_1EC642328 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = sub_1D1E6709C();
  __swift_project_value_buffer(v5, qword_1EC64A290);
  v6 = *(v2 + 16);
  v6(v1, v4, v3);
  v7 = sub_1D1E6707C();
  v8 = sub_1D1E6835C();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 64);
  if (v9)
  {
    v11 = *(v0 + 48);
    v12 = *(v0 + 56);
    v13 = *(v0 + 32);
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v32 = v30;
    *v14 = 136446210;
    v6(v12, v10, v13);
    type metadata accessor for StaticLightProfile(0);
    sub_1D1AFA21C(&qword_1EC64A9D0, type metadata accessor for StaticLightProfile, &protocol conformance descriptor for StaticLightProfile);
    sub_1D1E6820C();
    (*(v11 + 8))(v10, v13);
    v15 = sub_1D1E6817C();
    v17 = v16;

    v18 = sub_1D1B1312C(v15, v17, &v32);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_1D16EC000, v7, v8, "start light profile read %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x1D3893640](v30, -1, -1);
    MEMORY[0x1D3893640](v14, -1, -1);
  }

  else
  {
    (*(*(v0 + 48) + 8))(*(v0 + 64), *(v0 + 32));
  }

  v19 = *(v0 + 80);
  v20 = *(v0 + 128);
  v21 = *(v0 + 24);
  v22 = swift_allocObject();
  *(v0 + 88) = v22;
  *(v22 + 16) = sub_1D18DAFB0(MEMORY[0x1E69E7CC0]);
  v23 = swift_allocObject();
  *(v0 + 96) = v23;
  *(v23 + 16) = MEMORY[0x1E69E7CD0];
  v24 = swift_task_alloc();
  *(v0 + 104) = v24;
  *(v24 + 16) = "LightProfileFetch";
  *(v24 + 24) = 17;
  *(v24 + 32) = 2;
  *(v24 + 40) = v19;
  *(v24 + 48) = &unk_1D1E97508;
  *(v24 + 56) = 0;
  *(v24 + 64) = v23;
  *(v24 + 72) = v22;
  *(v24 + 80) = v21;
  *(v24 + 88) = v20 & 1;
  v25 = swift_task_alloc();
  *(v0 + 112) = v25;
  *v25 = v0;
  v25[1] = sub_1D1AF5DD8;
  v26 = MEMORY[0x1E69E7CA8] + 8;
  v27 = MEMORY[0x1E69E7CA8] + 8;
  v28 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DD58](v25, v26, v27, 0, 0, &unk_1D1E97518, v24, v28);
}

uint64_t sub_1D1AF5DD8()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1D1AF5F88;
  }

  else
  {

    v2 = sub_1D1AF5F00;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1AF5F00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1AF5F88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1AF604C()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D1AF6168;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9E0, &unk_1D1E9CBB0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17AFE50;
  v0[13] = &block_descriptor_44;
  v0[14] = v2;
  [v1 fetchSettingsWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1AF6168()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_1D1AF62DC;
  }

  else
  {
    v2 = sub_1D1AF6278;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1AF6278()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1AF62DC(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1D1AF6348(void *a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AA00, &qword_1D1E97570);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v28 - v12;
  v14 = *(type metadata accessor for StaticLightProfile(0) + 28);
  if (*(*a1 + 16) && (sub_1D1742188(), (v15 & 1) != 0))
  {
    v30 = *(v5 + 16);
    v31 = a2;
    v30(v10, a2 + v14, v4);
    v16 = sub_1D1C77360(v32);
    if (*v17)
    {
      v29 = v16;
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AA08, &qword_1D1E97578);
      v19 = *(v18 + 48);
      v30(v8, v31, v4);
      v20 = sub_1D1762CB8(&v13[v19], v8);
      (v29)(v32, 0);
      (*(v5 + 8))(v10, v4);
      *v13 = v20 & 1;
      (*(*(v18 - 8) + 56))(v13, 0, 1, v18);
    }

    else
    {
      (v16)(v32, 0);
      (*(v5 + 8))(v10, v4);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AA08, &qword_1D1E97578);
      (*(*(v27 - 8) + 56))(v13, 1, 1, v27);
    }

    return sub_1D1741A30(v13, &qword_1EC64AA00, &qword_1D1E97570);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
    v21 = a2;
    v22 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1D1E739C0;
    (*(v5 + 16))(v23 + v22, v21, v4);
    v24 = sub_1D179BE14(v23);
    swift_setDeallocating();
    (*(v5 + 8))(v23 + v22, v4);
    swift_deallocClassInstance();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32[0] = *a1;
    result = sub_1D1756288(v24, v21 + v14, isUniquelyReferenced_nonNull_native);
    *a1 = v32[0];
  }

  return result;
}

uint64_t sub_1D1AF6704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 162) = v13;
  *(v8 + 128) = v12;
  *(v8 + 112) = v11;
  *(v8 + 96) = a7;
  *(v8 + 104) = a8;
  *(v8 + 161) = a5;
  *(v8 + 80) = a4;
  *(v8 + 88) = a6;
  *(v8 + 64) = a2;
  *(v8 + 72) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  *(v8 + 136) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AF67C8, 0, 0);
}

uint64_t sub_1D1AF67C8()
{
  v1 = *(v0 + 136);
  v27 = *(v0 + 162);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = *(v0 + 161);
  v7 = *(v0 + 72);
  v6 = *(v0 + 80);
  v8 = sub_1D1E67E7C();
  v26 = *(v0 + 88);
  v24 = *(*(v8 - 8) + 56);
  v25 = v8;
  v24(v1, 1, 1);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = v7;
  *(v9 + 40) = v6;
  *(v9 + 48) = v5;
  *(v9 + 56) = v26;
  *(v9 + 72) = v4;
  *(v9 + 80) = v3;
  *(v9 + 88) = v2;

  sub_1D1A01DDC(v1, &unk_1D1E97528, v9);
  sub_1D1741A30(v1, &unk_1EC6442C0, &qword_1D1E741A0);
  if ((v27 & 1) == 0)
  {
    if (qword_1EC642328 != -1)
    {
      swift_once();
    }

    v10 = sub_1D1E6709C();
    __swift_project_value_buffer(v10, qword_1EC64A290);
    v11 = sub_1D1E6707C();
    v12 = sub_1D1E6835C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 128);
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = v13;
      _os_log_impl(&dword_1D16EC000, v11, v12, "performing natural lighting requests with timeout: %f", v14, 0xCu);
      MEMORY[0x1D3893640](v14, -1, -1);
    }

    v16 = *(v0 + 128);
    v15 = *(v0 + 136);
    v18 = *(v0 + 112);
    v17 = *(v0 + 120);
    v19 = *(v0 + 88);

    (v24)(v15, 1, 1, v25);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v16;
    v20[5] = v19;
    v20[6] = v17;
    v20[7] = v18;

    sub_1D1A01DDC(v15, &unk_1D1E97538, v20);
    sub_1D1741A30(v15, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  v21 = swift_task_alloc();
  *(v0 + 144) = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648E28, &unk_1D1E9CB30);
  *v21 = v0;
  v21[1] = sub_1D1AF6B10;

  return MEMORY[0x1EEE6DAC8](v0 + 160, 0, 0, v22);
}

uint64_t sub_1D1AF6B10()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1D1AF6F00;
  }

  else
  {
    v2 = sub_1D1AF6C24;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1AF6C24()
{
  v16 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  sub_1D1E67FFC();
  if (qword_1EC642328 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6709C();
  __swift_project_value_buffer(v1, qword_1EC64A290);

  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6835C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136315138;
    swift_beginAccess();
    sub_1D1E66A7C();
    sub_1D1AFA21C(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);

    v6 = sub_1D1E6760C();
    v8 = v7;

    v9 = sub_1D1B1312C(v6, v8, &v15);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_1D16EC000, v2, v3, "natural lighting requests has completed with result: %s, cancelling timeout", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1D3893640](v5, -1, -1);
    MEMORY[0x1D3893640](v4, -1, -1);
  }

  v10 = *(v0 + 120);
  swift_beginAccess();
  v11 = *(v10 + 16);
  if (*(v11 + 16))
  {
    sub_1D1AFA694();
    swift_allocError();
    *v12 = v11;
    swift_willThrow();
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1D1AF6F00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1AF6F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = v14;
  *(v8 + 64) = v13;
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 200) = a6;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  v9 = sub_1D1E6702C();
  *(v8 + 88) = v9;
  *(v8 + 96) = *(v9 - 8);
  *(v8 + 104) = swift_task_alloc();
  v10 = sub_1D1E66FDC();
  *(v8 + 112) = v10;
  *(v8 + 120) = *(v10 - 8);
  *(v8 + 128) = swift_task_alloc();
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AF70B4, 0, 0);
}

uint64_t sub_1D1AF70B4()
{
  if (qword_1EC642330 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6701C();
  *(v0 + 152) = __swift_project_value_buffer(v1, qword_1EC64A2A8);
  sub_1D1E66FCC();
  v2 = sub_1D1E66FFC();
  v3 = sub_1D1E683EC();
  v4 = sub_1D1E6855C();
  if ((v4 & 1) == 0)
  {
    goto LABEL_12;
  }

  v12 = *(v0 + 32);
  if (*(v0 + 200))
  {
LABEL_7:
    if (v12 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v12 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return MEMORY[0x1EEE6DBF8](v4, v5, v6, v7, v8, v9, v10, v11);
      }

      if (v12 >> 16 <= 0x10)
      {
        v12 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v12)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v13 = swift_slowAlloc();
  *v13 = 0;
  v14 = sub_1D1E66FBC();
  _os_signpost_emit_with_name_impl(&dword_1D16EC000, v2, v3, v14, v12, "", v13, 2u);
  MEMORY[0x1D3893640](v13, -1, -1);
LABEL_12:

  v15 = *(v0 + 144);
  v16 = *(v0 + 112);
  v17 = *(v0 + 120);
  v18 = *(v0 + 80);
  v19 = *(v0 + 200);
  v21 = *(v0 + 32);
  v20 = *(v0 + 40);
  v25 = *(v0 + 64);
  v26 = *(v0 + 48);
  (*(v17 + 16))(*(v0 + 136), v15, v16);
  sub_1D1E6705C();
  swift_allocObject();
  *(v0 + 160) = sub_1D1E6704C();
  v22 = *(v17 + 8);
  *(v0 + 168) = v22;
  *(v0 + 176) = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v22(v15, v16);
  v23 = swift_task_alloc();
  *(v0 + 184) = v23;
  *(v23 + 16) = v26;
  *(v23 + 32) = v25;
  *(v23 + 48) = v21;
  *(v23 + 56) = v20;
  *(v23 + 64) = v19;
  *(v23 + 72) = v18;
  v4 = swift_task_alloc();
  *(v0 + 192) = v4;
  *v4 = v0;
  *(v4 + 8) = sub_1D1AF736C;
  v5 = MEMORY[0x1E69E7CA8] + 8;
  v9 = &unk_1D1E97548;
  v6 = MEMORY[0x1E69E7CA8] + 8;
  v7 = 0;
  v8 = 0;
  v10 = v23;
  v11 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DBF8](v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D1AF736C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1AF7484, 0, 0);
}

uint64_t sub_1D1AF7484(uint64_t a1)
{
  v2 = sub_1D1E66FFC();
  sub_1D1E6703C();
  v3 = sub_1D1E683DC();
  result = sub_1D1E6855C();
  if (result)
  {
    v5 = *(v1 + 32);
    if ((*(v1 + 200) & 1) == 0)
    {
      if (v5)
      {
LABEL_9:
        v7 = *(v1 + 96);
        v6 = *(v1 + 104);
        v8 = *(v1 + 88);

        sub_1D1E6706C();

        if ((*(v7 + 88))(v6, v8) == *MEMORY[0x1E69E93E8])
        {
          v9 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v1 + 96) + 8))(*(v1 + 104), *(v1 + 88));
          v9 = "";
        }

        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = sub_1D1E66FBC();
        _os_signpost_emit_with_name_impl(&dword_1D16EC000, v2, v3, v11, v5, v9, v10, 2u);
        MEMORY[0x1D3893640](v10, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v1 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v12 = *(v1 + 168);
  v13 = *(v1 + 128);
  v14 = *(v1 + 112);

  v12(v13, v14);

  v15 = *(v1 + 8);

  return v15();
}

uint64_t sub_1D1AF7688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = v11;
  *(v8 + 120) = a8;
  *(v8 + 128) = v12;
  *(v8 + 104) = a6;
  *(v8 + 112) = a7;
  *(v8 + 88) = a4;
  *(v8 + 96) = a5;
  *(v8 + 72) = a2;
  *(v8 + 80) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AF774C, 0, 0);
}

uint64_t sub_1D1AF774C()
{
  v1 = *(v0 + 80);
  if (v1 >> 62)
  {
    result = sub_1D1E6873C();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_18:

    v21 = *(v0 + 8);

    return v21();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (result >= 1)
  {
    v3 = 0;
    v24 = **(v0 + 72);
    v25 = result;
    v23 = v1 & 0xC000000000000001;
    v22 = *(v0 + 80) + 32;
    while (1)
    {
      v32 = v3;
      if (v23)
      {
        v6 = MEMORY[0x1D3891EF0](v3, *(v0 + 80));
      }

      else
      {
        v6 = *(v22 + 8 * v3);
      }

      v7 = *(v0 + 144);
      v29 = *(v0 + 136);
      v30 = v6;
      v28 = *(v0 + 152);
      v8 = *(v0 + 128);
      v9 = *(v0 + 104);
      v26 = *(v0 + 112);
      v27 = *(v0 + 120);
      v10 = *(v0 + 88);
      v11 = *(v0 + 96);
      v12 = sub_1D1E67E7C();
      v13 = *(v12 - 8);
      (*(v13 + 56))(v7, 1, 1, v12);
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      v15 = (v14 + 16);
      *(v14 + 24) = 0;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      *(v14 + 48) = v30;
      *(v14 + 56) = v9;
      *(v14 + 64) = v26;
      *(v14 + 72) = v27;
      *(v14 + 80) = v28;
      *(v14 + 88) = v8;
      sub_1D1741C08(v7, v29, &unk_1EC6442C0, &qword_1D1E741A0);
      LODWORD(v9) = (*(v13 + 48))(v29, 1, v12);

      v31 = v30;

      v16 = *(v0 + 136);
      if (v9 == 1)
      {
        sub_1D1741A30(*(v0 + 136), &unk_1EC6442C0, &qword_1D1E741A0);
        if (!*v15)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_1D1E67E6C();
        (*(v13 + 8))(v16, v12);
        if (!*v15)
        {
LABEL_14:
          v17 = 0;
          v19 = 0;
          goto LABEL_15;
        }
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v17 = sub_1D1E67D4C();
      v19 = v18;
      swift_unknownObjectRelease();
LABEL_15:
      v20 = swift_allocObject();
      *(v20 + 16) = &unk_1D1E97558;
      *(v20 + 24) = v14;

      if (v19 | v17)
      {
        v4 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v17;
        *(v0 + 40) = v19;
      }

      else
      {
        v4 = 0;
      }

      v3 = v32 + 1;
      v5 = *(v0 + 144);
      *(v0 + 48) = 1;
      *(v0 + 56) = v4;
      *(v0 + 64) = v24;
      swift_task_create();

      sub_1D1741A30(v5, &unk_1EC6442C0, &qword_1D1E741A0);
      if (v25 == v32 + 1)
      {
        goto LABEL_18;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1AF7B04(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = v14;
  *(v8 + 48) = v16;
  *(v8 + 72) = v15;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  *(v8 + 56) = v10;
  *v10 = v8;
  v10[1] = sub_1D1AF7C1C;

  return v12(a6);
}

uint64_t sub_1D1AF7C1C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1D1AF7DF8;
  }

  else
  {
    v2 = sub_1D1AF7D30;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1AF7D30()
{
  v1 = *(v0 + 24);
  v2 = [*(v0 + 16) services];
  sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v3 = sub_1D1E67C1C();

  sub_1D1AE8EA0(v3, v1 + 16);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D1AF7DF8()
{
  v23 = v0;
  if (qword_1EC642328 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = sub_1D1E6709C();
  __swift_project_value_buffer(v2, qword_1EC64A290);
  v3 = v1;
  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6833C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 64);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v7 = 136315394;
    v10 = sub_1D1E6888C();
    v12 = sub_1D1B1312C(v10, v11, &v22);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    v13 = v6;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&dword_1D16EC000, v4, v5, "Error performing natural light block with name: %s error: %@", v7, 0x16u);
    sub_1D1741A30(v8, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1D3893640](v9, -1, -1);
    MEMORY[0x1D3893640](v7, -1, -1);
  }

  v15 = *(v0 + 64);
  v16 = *(v0 + 48);
  v17 = [*(v0 + 16) services];
  sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v18 = sub_1D1E67C1C();

  v19 = v15;
  sub_1D1AF9EB0(v18, (v16 + 16), v15);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1D1AF8080(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  *(v7 + 48) = a5;
  *(v7 + 40) = a1;
  v8 = sub_1D1E68A4C();
  *(v7 + 72) = v8;
  *(v7 + 80) = *(v8 - 8);
  *(v7 + 88) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AF8148, 0, 0);
}

uint64_t sub_1D1AF8148()
{
  v1 = sub_1D1E693AC();
  v3 = v2;
  sub_1D1E6912C();
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_1D1AF8224;

  return sub_1D1A01910(v1, v3, 0, 0, 1);
}

uint64_t sub_1D1AF8224()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  (*(v2[10] + 8))(v2[11], v2[9]);
  if (v0)
  {
    v3 = sub_1D1AF8520;
  }

  else
  {
    v3 = sub_1D1AF838C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1AF838C()
{
  if (qword_1EC642328 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6709C();
  __swift_project_value_buffer(v1, qword_1EC64A290);
  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6835C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D16EC000, v2, v3, "natural lighting requests timeout has been hit", v4, 2u);
    MEMORY[0x1D3893640](v4, -1, -1);
  }

  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];

  sub_1D1AE9640(v7, (v6 + 16), (v5 + 16));
  swift_beginAccess();
  v8 = *(v6 + 16);
  sub_1D1AFA694();
  swift_allocError();
  *v9 = v8;
  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1D1AF8520()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1AF8584(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_1D1E66A7C();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v5 = type metadata accessor for StaticMediaProfile(0);
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AF86C8, 0, 0);
}

uint64_t sub_1D1AF86C8()
{
  v29 = v0;
  v1 = *(v0 + 48);
  v2 = *(v1 + *(type metadata accessor for StateSnapshot(0) + 48));
  if (*(v2 + 16) && (v3 = sub_1D1742188(), (v4 & 1) != 0))
  {
    v6 = *(v0 + 120);
    v5 = *(v0 + 128);
    v7 = *(v0 + 104);
    sub_1D1AFB124(*(v2 + 56) + *(*(v0 + 112) + 72) * v3, v6, type metadata accessor for StaticMediaProfile);
    sub_1D1AFB18C(v6, v5, type metadata accessor for StaticMediaProfile);
    *(v0 + 144) = *(v7 + 56);
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v8 = qword_1EC64ABE8;

    return MEMORY[0x1EEE6DFA0](sub_1D1AF8A2C, v8, 0);
  }

  else
  {
    if (qword_1EC642328 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 72);
    v9 = *(v0 + 80);
    v11 = *(v0 + 64);
    v12 = *(v0 + 40);
    v13 = sub_1D1E6709C();
    __swift_project_value_buffer(v13, qword_1EC64A290);
    (*(v10 + 16))(v9, v12, v11);
    v14 = sub_1D1E6707C();
    v15 = sub_1D1E6835C();
    v16 = os_log_type_enabled(v14, v15);
    v18 = *(v0 + 72);
    v17 = *(v0 + 80);
    v19 = *(v0 + 64);
    if (v16)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28 = v21;
      *v20 = 136315138;
      sub_1D1AFA21C(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v22 = sub_1D1E68FAC();
      v24 = v23;
      (*(v18 + 8))(v17, v19);
      v25 = sub_1D1B1312C(v22, v24, &v28);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_1D16EC000, v14, v15, "Failed to get static accessory from deviceID %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1D3893640](v21, -1, -1);
      MEMORY[0x1D3893640](v20, -1, -1);
    }

    else
    {

      (*(v18 + 8))(v17, v19);
    }

    v26 = *(v0 + 8);

    return v26(0);
  }
}

uint64_t sub_1D1AF8A2C()
{
  v44 = v0;
  v1 = v0;
  v2 = *(v0 + 56);
  swift_beginAccess();
  v3 = *(v2 + 64);
  if (v3)
  {
    v4 = [v3 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v43 = sub_1D1749970(v5);
    sub_1D1747DDC(&v43);

    v6 = v43;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v7 = *(v0 + 144);
  v8 = *(v0 + 128);
  v9 = *(v0 + 88);
  v10 = *(v0 + 64);
  v11 = *(*(v0 + 72) + 16);
  v11(*(v0 + 96), v8 + v7, v10);
  v11(v9, v8 + v7, v10);
  v41 = v6 >> 62;
  if (v6 >> 62)
  {
LABEL_31:
    v42 = v6 & 0xFFFFFFFFFFFFFF8;
    v12 = sub_1D1E6873C();
  }

  else
  {
    v42 = v6 & 0xFFFFFFFFFFFFFF8;
    v12 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = 0;
  v14 = (v6 & 0xC000000000000001);
  v40 = v6 + 32;
  while (v12 != v13)
  {
    if (v14)
    {
      v15 = v6;
      v16 = MEMORY[0x1D3891EF0](v13, v6);
    }

    else
    {
      if (v13 >= *(v42 + 16))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v15 = v6;
      v16 = *(v6 + 8 * v13 + 32);
    }

    v17 = v16;
    v18 = v1;
    v19 = v1[11];
    v20 = [v16 accessories];
    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v21 = sub_1D1E67C1C();

    v22 = swift_task_alloc();
    *(v22 + 16) = v19;
    v23 = sub_1D174A6C4(sub_1D1778988, v22, v21);

    if (v23)
    {
      v12 = v13;
      v6 = v15;
      v1 = v18;
      break;
    }

    v24 = __OFADD__(v13++, 1);
    v6 = v15;
    v1 = v18;
    if (v24)
    {
      goto LABEL_30;
    }
  }

  if (!v41)
  {
    if (v12 != *(v42 + 16))
    {
      goto LABEL_19;
    }

LABEL_25:
    v14 = *(v1[9] + 8);
    v14(v1[12], v1[8]);
    v33 = 0;
    goto LABEL_26;
  }

  if (v12 == sub_1D1E6873C())
  {
    goto LABEL_25;
  }

LABEL_19:
  if (v14)
  {
    v25 = MEMORY[0x1D3891EF0](v12, v6);
  }

  else
  {
    if (v12 >= *(v42 + 16))
    {
      __break(1u);
      goto LABEL_34;
    }

    v25 = *(v40 + 8 * v12);
  }

  v26 = v25;
  v27 = v1[12];
  v29 = v1[8];
  v28 = v1[9];
  v30 = [v25 accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v31 = sub_1D1E67C1C();

  v32 = swift_task_alloc();
  *(v32 + 16) = v27;
  v33 = sub_1D174A6C4(sub_1D1778988, v32, v31);

  v14 = *(v28 + 8);
  v14(v27, v29);

  if (!v33)
  {
LABEL_34:
    v36 = (v14)(v1[11], v1[8]);
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v36, v37, v38);
  }

LABEL_26:
  v1[17] = v33;
  v34 = v1[11];
  v35 = v1[8];

  v14(v34, v35);
  v36 = sub_1D1AF8E9C;
  v37 = 0;
  v38 = 0;

  return MEMORY[0x1EEE6DFA0](v36, v37, v38);
}

uint64_t sub_1D1AF8E9C()
{
  sub_1D1AFB0C4(v0[16], type metadata accessor for StaticMediaProfile);
  v1 = v0[17];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1D1AF8F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[22] = a7;
  v8[23] = a8;
  v8[20] = a5;
  v8[21] = a6;
  v8[18] = a1;
  v8[19] = a4;
  v9 = sub_1D1E66A7C();
  v8[24] = v9;
  v8[25] = *(v9 - 8);
  v8[26] = swift_task_alloc();
  v8[27] = type metadata accessor for StateSnapshot.UpdateType(0);
  v8[28] = swift_task_alloc();
  v10 = sub_1D1E6702C();
  v8[29] = v10;
  v8[30] = *(v10 - 8);
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  v11 = sub_1D1E66FDC();
  v8[33] = v11;
  v8[34] = *(v11 - 8);
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v8[38] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AF9138, 0, 0);
}

uint64_t sub_1D1AF9138()
{
  if (qword_1EC642330 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6701C();
  v0[39] = __swift_project_value_buffer(v1, qword_1EC64A2A8);
  sub_1D1E66FCC();
  v2 = sub_1D1E66FFC();
  v3 = sub_1D1E683EC();
  if (sub_1D1E6855C())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v2, v3, v5, "MediaSetPowerState", "", v4, 2u);
    MEMORY[0x1D3893640](v4, -1, -1);
  }

  v6 = v0[37];
  v7 = v0[38];
  v8 = v0[33];
  v9 = v0[34];
  v10 = v0[19];
  v11 = v0[20];

  (*(v9 + 16))(v6, v7, v8);
  sub_1D1E6705C();
  swift_allocObject();
  v0[40] = sub_1D1E6704C();
  v12 = *(v9 + 8);
  v0[41] = v12;
  v0[42] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v7, v8);
  sub_1D1BFAABC(v11);
  sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
  sub_1D1771944(&qword_1EE079BE0, &qword_1EE079BF0, 0x1E696CAE8);
  v13 = sub_1D1E6815C();
  v0[43] = v13;

  v0[2] = v0;
  v0[3] = sub_1D1AF9418;
  v14 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_101;
  v0[14] = v14;
  [v10 executeActions:v13 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1AF9418()
{
  v1 = *(*v0 + 48);
  *(*v0 + 352) = v1;
  if (v1)
  {
    v2 = sub_1D1AF9740;
  }

  else
  {
    v2 = sub_1D1AF9528;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1AF9528()
{
  v1 = sub_1D1E66FFC();
  sub_1D1E6703C();
  v2 = sub_1D1E683DC();
  if (sub_1D1E6855C())
  {
    v3 = *(v0 + 256);
    v4 = *(v0 + 232);
    v5 = *(v0 + 240);

    sub_1D1E6706C();

    if ((*(v5 + 88))(v3, v4) == *MEMORY[0x1E69E93E8])
    {
      v6 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 240) + 8))(*(v0 + 256), *(v0 + 232));
      v6 = "";
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v1, v2, v8, "MediaSetPowerState", v6, v7, 2u);
    MEMORY[0x1D3893640](v7, -1, -1);
  }

  v9 = *(v0 + 328);
  v10 = *(v0 + 288);
  v11 = *(v0 + 264);
  v12 = *(v0 + 168);
  v13 = *(v0 + 144);

  v9(v10, v11);
  sub_1D1741C08(v12, v13, &unk_1EC649E30, &unk_1D1E91250);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1D1AF9740(uint64_t a1)
{
  v2 = v1[43];
  swift_willThrow();

  v3 = sub_1D1E66FFC();
  sub_1D1E6703C();
  v4 = sub_1D1E683DC();
  if (sub_1D1E6855C())
  {
    v6 = v1[30];
    v5 = v1[31];
    v7 = v1[29];

    sub_1D1E6706C();

    if ((*(v6 + 88))(v5, v7) == *MEMORY[0x1E69E93E8])
    {
      v8 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1[30] + 8))(v1[31], v1[29]);
      v8 = "";
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v3, v4, v10, "MediaSetPowerState", v8, v9, 2u);
    MEMORY[0x1D3893640](v9, -1, -1);
  }

  v11 = v1[41];
  v12 = v1[35];
  v13 = v1[33];
  v14 = v1[28];
  v15 = v1[19];

  v11(v12, v13);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A768, &unk_1D1E9C690) + 48);
  v17 = [v15 uniqueIdentifier];
  sub_1D1E66A5C();

  *(v14 + v16) = sub_1D1785BE4();
  swift_storeEnumTagMultiPayload();
  v18 = swift_task_alloc();
  v1[45] = v18;
  *v18 = v1;
  v18[1] = sub_1D1AF99B8;
  v19 = v1[28];

  return sub_1D1AB6894(v19, 0, 0, 0, 0);
}

uint64_t sub_1D1AF99B8(uint64_t a1)
{
  v2 = *(*v1 + 224);
  *(*v1 + 368) = a1;

  sub_1D1AFB0C4(v2, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1AF9AEC, 0, 0);
}

uint64_t sub_1D1AF9AEC()
{
  v1 = *(v0 + 368);
  v2 = [*(v0 + 152) uniqueIdentifier];
  sub_1D1E66A5C();

  if (*(v1 + 16))
  {
    v3 = sub_1D1742188();
    v4 = *(v0 + 352);
    v6 = *(v0 + 200);
    v5 = *(v0 + 208);
    v7 = *(v0 + 192);
    v8 = *(v0 + 144);
    if (v9)
    {
      v10 = v3;
      v11 = *(*(v0 + 368) + 56);
      v23 = *(v0 + 208);
      v24 = type metadata accessor for StateSnapshot(0);
      v12 = v8;
      v13 = *(v24 - 8);
      sub_1D1AFB124(v11 + *(v13 + 72) * v10, v12, type metadata accessor for StateSnapshot);

      (*(v6 + 8))(v23, v7);

      (*(v13 + 56))(v12, 0, 1, v24);
    }

    else
    {

      (*(v6 + 8))(v5, v7);
      v20 = type metadata accessor for StateSnapshot(0);
      (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
    }
  }

  else
  {
    v14 = *(v0 + 352);
    v16 = *(v0 + 200);
    v15 = *(v0 + 208);
    v17 = *(v0 + 192);
    v18 = *(v0 + 144);

    (*(v16 + 8))(v15, v17);
    v19 = type metadata accessor for StateSnapshot(0);
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1D1AF9DC8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v14 = *a6;
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1D17C4BFC;

  return sub_1D1AF16E8(a1, a2, a3, a4, a5, v14, a7);
}

void sub_1D1AF9EB0(unint64_t a1, uint64_t *a2, unint64_t a3)
{
  v37 = sub_1D1E66A7C();
  v31 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v7 = (v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 >> 62)
  {
LABEL_27:
    v8 = sub_1D1E6873C();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v35 = a1 & 0xFFFFFFFFFFFFFF8;
      v36 = a1 & 0xC000000000000001;
      v30[2] = v31 + 16;
      v33 = (v31 + 8);
      v34 = a1;
      v32 = v8;
      do
      {
        if (v36)
        {
          v12 = MEMORY[0x1D3891EF0](v9, a1);
          v13 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v9 >= *(v35 + 16))
          {
            goto LABEL_24;
          }

          v12 = *(a1 + 8 * v9 + 32);
          v13 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }
        }

        v38 = v13;
        v14 = v12;
        v15 = [v12 uniqueIdentifier];
        sub_1D1E66A5C();

        swift_beginAccess();
        v16 = a3;
        v17 = a3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = *a2;
        a1 = v39;
        v19 = a2;
        *a2 = 0x8000000000000000;
        a2 = v7;
        a3 = sub_1D1742188();
        v21 = *(a1 + 16);
        v22 = (v20 & 1) == 0;
        v23 = v21 + v22;
        if (__OFADD__(v21, v22))
        {
          goto LABEL_25;
        }

        v24 = v20;
        if (*(a1 + 24) >= v23)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            a1 = v39;
            if (v20)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_1D173C4C0();
            a1 = v39;
            if (v24)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_1D172E458(v23, isUniquelyReferenced_nonNull_native);
          v25 = sub_1D1742188();
          if ((v24 & 1) != (v26 & 1))
          {
            sub_1D1E690FC();
            __break(1u);
            return;
          }

          a3 = v25;
          a1 = v39;
          if (v24)
          {
LABEL_4:
            v10 = *(a1 + 56);
            v11 = *(v10 + 8 * a3);
            *(v10 + 8 * a3) = v16;
            a3 = v16;

            v7 = a2;
            goto LABEL_5;
          }
        }

        *(a1 + 8 * (a3 >> 6) + 64) |= 1 << a3;
        v7 = a2;
        (*(v31 + 16))(*(a1 + 48) + *(v31 + 72) * a3, a2, v37);
        *(*(a1 + 56) + 8 * a3) = v16;
        v27 = *(a1 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_26;
        }

        a3 = v16;
        *(a1 + 16) = v29;
LABEL_5:
        (*v33)(v7, v37);
        a2 = v19;
        *v19 = a1;
        swift_endAccess();

        ++v9;
        a1 = v34;
      }

      while (v38 != v32);
    }
  }
}

uint64_t sub_1D1AFA21C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D1AFA264(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = (a1 + *(type metadata accessor for StaticLightProfile(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  if (v5 == 2)
  {
    v5 = v4;
  }

  return (v2 ^ v5) & 1;
}

uint64_t sub_1D1AFA2C0(uint64_t *a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *a1;
  result = sub_1D17560EC(v5, a2, isUniquelyReferenced_nonNull_native);
  *a1 = v8;
  return result;
}

uint64_t sub_1D1AFA32C(uint64_t a1)
{
  v3 = v2;
  v4 = *(v1 + 32);
  v5 = (*(*(v4 - 8) + 80) + 64) & ~*(*(v4 - 8) + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + ((*(*(v4 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D17C4CF0;

  return sub_1D1AF239C(a1, v6, v7, v8, v9, v1 + v5, v10);
}

uint64_t sub_1D1AFA488(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 40);
  v8 = *(v2 + 48);
  v9 = *(v2 + 56);
  v10 = *(v2 + 32);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D17C4CF0;

  return sub_1D1AF6704(a1, a2, v5, v6, v10, v7, v8, v9);
}

uint64_t sub_1D1AFA594(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D17C4CF0;

  return sub_1D1AF6F64(a1, v4, v5, v6, v7, v10, v8, v9);
}

unint64_t sub_1D1AFA694()
{
  result = qword_1EC64A9D8;
  if (!qword_1EC64A9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64A9D8);
  }

  return result;
}

uint64_t sub_1D1AFA6E8(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  v9 = *(v1 + 7);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D17C4CF0;

  return sub_1D1AF8080(v6, a1, v4, v5, v7, v8, v9);
}

uint64_t sub_1D1AFA7C0(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D17C4BFC;

  return sub_1D1AF7688(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D1AFA8B8(uint64_t a1)
{
  v13 = v1[2];
  v11 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4CF0;

  return sub_1D1AF7B04(a1, v13, v11, v4, v5, v6, v7, v8);
}

uint64_t sub_1D1AFA9E8(char a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 81) = a4;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  *(v4 + 80) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1AFAA10, 0, 0);
}

uint64_t sub_1D1AFAA10()
{
  v1 = *(v0 + 81);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 80);
  v5 = swift_allocObject();
  *(v0 + 32) = v5;
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v0 + 40) = v6;
  *(v6 + 16) = sub_1D18DAFB0(MEMORY[0x1E69E7CC0]);
  v7 = swift_allocObject();
  *(v0 + 48) = v7;
  *(v7 + 16) = MEMORY[0x1E69E7CD0];
  v8 = swift_task_alloc();
  *(v0 + 56) = v8;
  *(v8 + 16) = "LightProfileSetNaturalLightEnabled";
  *(v8 + 24) = 34;
  *(v8 + 32) = 2;
  *(v8 + 40) = v3;
  *(v8 + 48) = &unk_1D1E97590;
  *(v8 + 56) = v5;
  *(v8 + 64) = v7;
  *(v8 + 72) = v6;
  *(v8 + 80) = v2;
  *(v8 + 88) = v1 & 1;
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_1D1AFABC0;
  v10 = MEMORY[0x1E69E7CA8] + 8;
  v11 = MEMORY[0x1E69E7CA8] + 8;
  v12 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DD58](v9, v10, v11, 0, 0, &unk_1D1E97598, v8, v12);
}

uint64_t sub_1D1AFABC0()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1D1AFAD54;
  }

  else
  {

    v2 = sub_1D1AFACDC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1AFACDC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1AFAD54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1AFADDC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4CF0;

  return sub_1D1AF56B8(a1, v4);
}

uint64_t sub_1D1AFAE78(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4CF0;

  return sub_1D1AF9DC8(a1, v4, v5, v6, v7, (v1 + 48), v8);
}

uint64_t sub_1D1AFAF68(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = v1[5];
  v12 = *(v1 + v7);
  v13 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1D17C4BFC;

  return sub_1D1AF8F58(a1, v8, v9, v10, v11, v1 + v6, v12, v13);
}

uint64_t sub_1D1AFB0C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1AFB124(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1AFB18C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t HomeState.init(stateSnapshot:matterSnapshot:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a2;
  v37 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v34 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - v7;
  v9 = type metadata accessor for MatterStateSnapshot(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v33 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v32 - v13;
  v15 = type metadata accessor for StateSnapshot(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1;
  sub_1D1741C08(a1, v14, &unk_1EC649E30, &unk_1D1E91250);
  v19 = *(v16 + 48);
  if (v19(v14, 1, v15) == 1)
  {
    if (qword_1EE07D9E0 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v15, qword_1EE07D9E8);
    sub_1D1AFBC94(v20, v18, type metadata accessor for StateSnapshot);
    v21 = v19(v14, 1, v15);
    v22 = v37;
    v23 = v35;
    if (v21 != 1)
    {
      sub_1D1741A30(v14, &unk_1EC649E30, &unk_1D1E91250);
    }
  }

  else
  {
    sub_1D1AFBD48(v14, v18, type metadata accessor for StateSnapshot);
    v22 = v37;
    v23 = v35;
  }

  sub_1D1AFBD48(v18, v22, type metadata accessor for StateSnapshot);
  sub_1D1741C08(v23, v8, &unk_1EC64F390, &qword_1D1E92B10);
  v24 = *(v10 + 48);
  v25 = v24(v8, 1, v9);
  v26 = v34;
  if (v25 == 1)
  {
    v27 = v33;
    if (qword_1EE07D498 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v9, qword_1EE07D4A0);
    sub_1D1AFBC94(v28, v27, type metadata accessor for MatterStateSnapshot);
    if (v24(v8, 1, v9) != 1)
    {
      sub_1D1741A30(v8, &unk_1EC64F390, &qword_1D1E92B10);
    }
  }

  else
  {
    v27 = v33;
    sub_1D1AFBD48(v8, v33, type metadata accessor for MatterStateSnapshot);
  }

  v29 = type metadata accessor for HomeState(0);
  sub_1D1AFBD48(v27, v22 + *(v29 + 24), type metadata accessor for MatterStateSnapshot);
  sub_1D1741C08(v23, v26, &unk_1EC64F390, &qword_1D1E92B10);
  if (v24(v26, 1, v9) == 1)
  {
    sub_1D1741A30(v26, &unk_1EC64F390, &qword_1D1E92B10);
    v30 = sub_1D18D6954(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v30 = *(v26 + *(v9 + 28));

    sub_1D1AFBDB0(v26);
  }

  sub_1D1741A30(v23, &unk_1EC64F390, &qword_1D1E92B10);
  result = sub_1D1741A30(v36, &unk_1EC649E30, &unk_1D1E91250);
  *(v22 + *(v29 + 20)) = v30;
  return result;
}

uint64_t HomeState.homeID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StateSnapshot(0) + 20);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HomeState.endpointPathsDictionary.getter()
{
  type metadata accessor for HomeState(0);
}

uint64_t HomeState.endpointPathsDictionary.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HomeState(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

BOOL static HomeState.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_s13HomeDataModel13StateSnapshotV2eeoiySbAC_ACtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for HomeState(0);
  if ((sub_1D184A6D8(*(a1 + *(v4 + 20)), *(a2 + *(v4 + 20))) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);

  return _s13HomeDataModel19MatterStateSnapshotV2eeoiySbAC_ACtFZ_0((a1 + v5), (a2 + v5));
}

uint64_t HomeState.hash(into:)(__int128 *a1)
{
  StateSnapshot.hash(into:)(a1);
  v3 = type metadata accessor for HomeState(0);
  sub_1D185893C(a1, *(v1 + *(v3 + 20)));
  return MatterStateSnapshot.hash(into:)(a1);
}

uint64_t HomeState.hashValue.getter()
{
  sub_1D1E6920C();
  StateSnapshot.hash(into:)(v3);
  v1 = type metadata accessor for HomeState(0);
  sub_1D185893C(v3, *(v0 + *(v1 + 20)));
  MatterStateSnapshot.hash(into:)(v3);
  return sub_1D1E6926C();
}

uint64_t sub_1D1AFBB04(uint64_t a1)
{
  sub_1D1E6920C();
  StateSnapshot.hash(into:)(v4);
  sub_1D185893C(v4, *(v1 + *(a1 + 20)));
  MatterStateSnapshot.hash(into:)(v4);
  return sub_1D1E6926C();
}

uint64_t sub_1D1AFBB68(__int128 *a1, uint64_t a2)
{
  StateSnapshot.hash(into:)(a1);
  sub_1D185893C(a1, *(v2 + *(a2 + 20)));
  return MatterStateSnapshot.hash(into:)(a1);
}

uint64_t sub_1D1AFBBB8(uint64_t a1, uint64_t a2)
{
  sub_1D1E6920C();
  StateSnapshot.hash(into:)(v5);
  sub_1D185893C(v5, *(v2 + *(a2 + 20)));
  MatterStateSnapshot.hash(into:)(v5);
  return sub_1D1E6926C();
}

BOOL sub_1D1AFBC18(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((_s13HomeDataModel13StateSnapshotV2eeoiySbAC_ACtFZ_0(a1, a2) & 1) == 0 || (sub_1D184A6D8(*(a1 + *(a3 + 20)), *(a2 + *(a3 + 20))) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);

  return _s13HomeDataModel19MatterStateSnapshotV2eeoiySbAC_ACtFZ_0((a1 + v6), (a2 + v6));
}

uint64_t sub_1D1AFBC94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for HomeState(uint64_t a1)
{
  result = qword_1EC64AA18;
  if (!qword_1EC64AA18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1AFBD48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1AFBDB0(uint64_t a1)
{
  v2 = type metadata accessor for MatterStateSnapshot(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1AFBE0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void sub_1D1AFBEE4(uint64_t a1)
{
  type metadata accessor for StateSnapshot(319);
  if (v1 <= 0x3F)
  {
    sub_1D1A31440(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for MatterStateSnapshot(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D1AFBF80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t HomeState.AllHomesModel.currentStateSnapshot.getter@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649148, &qword_1D1E96490);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v27 = &v27 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - v5;
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v30 = v1;
  sub_1D1B01A84(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel, &protocol conformance descriptor for HomeState.AllHomesModel);
  sub_1D1E66CAC();

  v11 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__currentHomeID;
  swift_beginAccess();
  sub_1D1741C08(v1 + v11, v6, &qword_1EC642590, qword_1D1E71260);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v12 = &qword_1EC642590;
    v13 = qword_1D1E71260;
    goto LABEL_10;
  }

  (*(v8 + 32))(v10, v6, v7);
  swift_getKeyPath();
  v29 = v1;
  sub_1D1E66CAC();

  v14 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__homeStates;
  swift_beginAccess();
  v15 = *(v1 + v14);
  if (!*(v15 + 16))
  {
    goto LABEL_7;
  }

  v16 = sub_1D1742188();
  if ((v17 & 1) == 0)
  {

LABEL_7:
    (*(v8 + 8))(v10, v7);
    v20 = type metadata accessor for HomeState(0);
    v6 = v27;
    (*(*(v20 - 8) + 56))(v27, 1, 1, v20);
    goto LABEL_8;
  }

  v18 = v16;
  v19 = *(v15 + 56);
  v20 = type metadata accessor for HomeState(0);
  v21 = *(v20 - 8);
  v22 = v19 + *(v21 + 72) * v18;
  v6 = v27;
  sub_1D1B013D8(v22, v27, type metadata accessor for HomeState);
  (*(v8 + 8))(v10, v7);

  (*(v21 + 56))(v6, 0, 1, v20);
LABEL_8:
  type metadata accessor for HomeState(0);
  if (!(*(*(v20 - 8) + 48))(v6, 1, v20))
  {
    v24 = v28;
    sub_1D1B013D8(v6, v28, type metadata accessor for StateSnapshot);
    sub_1D1741A30(v6, &qword_1EC649148, &qword_1D1E96490);
    v23 = 0;
    goto LABEL_11;
  }

  v12 = &qword_1EC649148;
  v13 = &qword_1D1E96490;
LABEL_10:
  sub_1D1741A30(v6, v12, v13);
  v23 = 1;
  v24 = v28;
LABEL_11:
  v25 = type metadata accessor for StateSnapshot(0);
  return (*(*(v25 - 8) + 56))(v24, v23, 1, v25);
}

uint64_t HomeState.AllHomesModel.homeStates.getter()
{
  swift_getKeyPath();
  sub_1D1B01A84(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel, &protocol conformance descriptor for HomeState.AllHomesModel);
  sub_1D1E66CAC();

  swift_beginAccess();
}

uint64_t HomeState.AllHomesModel.currentMatterSnapshot.getter@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649148, &qword_1D1E96490);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v27 = &v27 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - v5;
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v30 = v1;
  sub_1D1B01A84(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel, &protocol conformance descriptor for HomeState.AllHomesModel);
  sub_1D1E66CAC();

  v11 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__currentHomeID;
  swift_beginAccess();
  sub_1D1741C08(v1 + v11, v6, &qword_1EC642590, qword_1D1E71260);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v12 = &qword_1EC642590;
    v13 = qword_1D1E71260;
    goto LABEL_10;
  }

  (*(v8 + 32))(v10, v6, v7);
  swift_getKeyPath();
  v29 = v1;
  sub_1D1E66CAC();

  v14 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__homeStates;
  swift_beginAccess();
  v15 = *(v1 + v14);
  if (!*(v15 + 16))
  {
    goto LABEL_7;
  }

  v16 = sub_1D1742188();
  if ((v17 & 1) == 0)
  {

LABEL_7:
    (*(v8 + 8))(v10, v7);
    v20 = type metadata accessor for HomeState(0);
    v6 = v27;
    (*(*(v20 - 8) + 56))(v27, 1, 1, v20);
    goto LABEL_8;
  }

  v18 = v16;
  v19 = *(v15 + 56);
  v20 = type metadata accessor for HomeState(0);
  v21 = *(v20 - 8);
  v22 = v19 + *(v21 + 72) * v18;
  v6 = v27;
  sub_1D1B013D8(v22, v27, type metadata accessor for HomeState);
  (*(v8 + 8))(v10, v7);

  (*(v21 + 56))(v6, 0, 1, v20);
LABEL_8:
  type metadata accessor for HomeState(0);
  if (!(*(*(v20 - 8) + 48))(v6, 1, v20))
  {
    v24 = v28;
    sub_1D1B013D8(&v6[*(v20 + 24)], v28, type metadata accessor for MatterStateSnapshot);
    sub_1D1741A30(v6, &qword_1EC649148, &qword_1D1E96490);
    v23 = 0;
    goto LABEL_11;
  }

  v12 = &qword_1EC649148;
  v13 = &qword_1D1E96490;
LABEL_10:
  sub_1D1741A30(v6, v12, v13);
  v23 = 1;
  v24 = v28;
LABEL_11:
  v25 = type metadata accessor for MatterStateSnapshot(0);
  return (*(*(v25 - 8) + 56))(v24, v23, 1, v25);
}

uint64_t sub_1D1AFCA44(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  swift_getKeyPath();
  v9 = v1;
  sub_1D1B01A84(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel, &protocol conformance descriptor for HomeState.AllHomesModel);
  sub_1D1E66CAC();

  v4 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__latestSetupMilestone;
  result = swift_beginAccess();
  if (*(v2 + v4) < v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D1E66C9C();

    v8[0] = v3;
    v7 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel_signpostState;
    swift_beginAccess();
    sub_1D1AFFBE8(v8, (v2 + v7));
    return swift_endAccess();
  }

  return result;
}

uint64_t (*HomeState.AllHomesModel.homeStates.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1D1B01A84(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel, &protocol conformance descriptor for HomeState.AllHomesModel);
  sub_1D1E66CAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1D1E66CCC();

  swift_beginAccess();
  return sub_1D1AFCD24;
}

uint64_t sub_1D1AFCD30(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v82 = &v74 - v5;
  v6 = type metadata accessor for HomeState(0);
  v93 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v81 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StateSnapshot(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v74 = (&v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AA98, &qword_1D1EB19B0);
  MEMORY[0x1EEE9AC00](v86);
  v12 = &v74 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649148, &qword_1D1E96490);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v74 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v80 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v83 = (&v74 - v20);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v74 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v74 - v24;
  v26 = sub_1D1E66A7C();
  v27 = MEMORY[0x1EEE9AC00](v26);
  v79 = &v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v74 - v29;
  v91 = v8;
  v92 = a1;
  v31 = *(v8 + 20);
  v85 = v32;
  v33 = *(v32 + 16);
  v88 = v34;
  v78 = v32 + 16;
  v77 = v33;
  (v33)(&v74 - v29, a1 + v31);
  swift_getKeyPath();
  v35 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel___observationRegistrar;
  v96 = v2;
  v89 = sub_1D1B01A84(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel, &protocol conformance descriptor for HomeState.AllHomesModel);
  v90 = v35;
  sub_1D1E66CAC();

  v36 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__homeStates;
  swift_beginAccess();
  v84 = v36;
  v37 = *(v2 + v36);
  v38 = *(v37 + 16);
  v87 = v30;
  if (v38)
  {

    v39 = sub_1D1742188();
    if (v40)
    {
      sub_1D1B013D8(*(v37 + 56) + *(v93 + 72) * v39, v15, type metadata accessor for HomeState);
      v41 = 0;
    }

    else
    {
      v41 = 1;
    }
  }

  else
  {
    v41 = 1;
  }

  v42 = v93;
  v43 = 1;
  (*(v93 + 56))(v15, v41, 1, v6);
  if (!(*(v42 + 48))(v15, 1, v6))
  {
    sub_1D1B013D8(v15, v25, type metadata accessor for StateSnapshot);
    v43 = 0;
  }

  sub_1D1741A30(v15, &qword_1EC649148, &qword_1D1E96490);
  v44 = *(v9 + 56);
  v45 = v91;
  v44(v25, v43, 1, v91);
  sub_1D1B013D8(v92, v23, type metadata accessor for StateSnapshot);
  v76 = v9 + 56;
  v75 = v44;
  v44(v23, 0, 1, v45);
  v46 = *(v86 + 48);
  sub_1D1741C08(v25, v12, &unk_1EC649E30, &unk_1D1E91250);
  sub_1D1741C08(v23, &v12[v46], &unk_1EC649E30, &unk_1D1E91250);
  v47 = *(v9 + 48);
  if (v47(v12, 1, v45) != 1)
  {
    v51 = v83;
    sub_1D1741C08(v12, v83, &unk_1EC649E30, &unk_1D1E91250);
    if (v47(&v12[v46], 1, v45) != 1)
    {
      v70 = &v12[v46];
      v71 = v74;
      sub_1D1B01A1C(v70, v74, type metadata accessor for StateSnapshot);
      v72 = v51;
      v73 = _s13HomeDataModel13StateSnapshotV2eeoiySbAC_ACtFZ_0(v51, v71);
      sub_1D1B019BC(v71, type metadata accessor for StateSnapshot);
      sub_1D1741A30(v23, &unk_1EC649E30, &unk_1D1E91250);
      sub_1D1741A30(v25, &unk_1EC649E30, &unk_1D1E91250);
      sub_1D1B019BC(v72, type metadata accessor for StateSnapshot);
      sub_1D1741A30(v12, &unk_1EC649E30, &unk_1D1E91250);
      v45 = v91;
      v52 = v92;
      v49 = v87;
      v50 = v88;
      if (v73)
      {
        goto LABEL_25;
      }

LABEL_15:
      KeyPath = swift_getKeyPath();
      v95 = v2;
      sub_1D1E66CAC();

      v95 = v2;
      swift_getKeyPath();
      sub_1D1E66CCC();

      v54 = v84;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v94 = *(v2 + v54);
      v56 = v94;
      *(v2 + v54) = 0x8000000000000000;
      v58 = sub_1D1742188();
      v59 = v56[2];
      v60 = (v57 & 1) == 0;
      v61 = v59 + v60;
      if (__OFADD__(v59, v60))
      {
        __break(1u);
      }

      else
      {
        KeyPath = v57;
        if (v56[3] < v61)
        {
          sub_1D172D7F4(v61, isUniquelyReferenced_nonNull_native);
          v56 = v94;
          v62 = sub_1D1742188();
          if ((KeyPath & 1) != (v63 & 1))
          {
            result = sub_1D1E690FC();
            __break(1u);
            return result;
          }

          v58 = v62;
          *(v2 + v54) = v56;
          if (KeyPath)
          {
LABEL_23:
            sub_1D1B01954(v52, v56[7] + *(v93 + 72) * v58, type metadata accessor for StateSnapshot);
            swift_endAccess();
            v95 = v2;
            swift_getKeyPath();
            sub_1D1E66CBC();

            (*(v85 + 8))(v49, v50);
            return 1;
          }

LABEL_22:
          v64 = v80;
          v75(v80, 1, 1, v45);
          v65 = type metadata accessor for MatterStateSnapshot(0);
          v66 = v82;
          (*(*(v65 - 8) + 56))(v82, 1, 1, v65);
          v67 = v81;
          HomeState.init(stateSnapshot:matterSnapshot:)(v64, v66, v81);
          v68 = v79;
          v77(v79, v49, v50);
          sub_1D19DC04C(v58, v68, v67, v56);
          goto LABEL_23;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          *(v2 + v54) = v56;
          if (v57)
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }
      }

      sub_1D173BC84();
      v56 = v94;
      *(v2 + v54) = v94;
      if (KeyPath)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    sub_1D1741A30(v23, &unk_1EC649E30, &unk_1D1E91250);
    sub_1D1741A30(v25, &unk_1EC649E30, &unk_1D1E91250);
    sub_1D1B019BC(v51, type metadata accessor for StateSnapshot);
    v45 = v91;
    v49 = v87;
LABEL_14:
    sub_1D1741A30(v12, &qword_1EC64AA98, &qword_1D1EB19B0);
    v52 = v92;
    v50 = v88;
    goto LABEL_15;
  }

  sub_1D1741A30(v23, &unk_1EC649E30, &unk_1D1E91250);
  sub_1D1741A30(v25, &unk_1EC649E30, &unk_1D1E91250);
  v48 = v47(&v12[v46], 1, v45);
  v49 = v87;
  if (v48 != 1)
  {
    goto LABEL_14;
  }

  sub_1D1741A30(v12, &unk_1EC649E30, &unk_1D1E91250);
  v50 = v88;
LABEL_25:
  (*(v85 + 8))(v49, v50);
  return 0;
}

uint64_t sub_1D1AFD7B4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v85 = &v81 - v5;
  v6 = type metadata accessor for HomeState(0);
  v106 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v96 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MatterStateSnapshot(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v82 = (&v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6491B0, &qword_1D1E92B08);
  MEMORY[0x1EEE9AC00](v98);
  v12 = &v81 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649148, &qword_1D1E96490);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v95 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v92 = &v81 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v89 = &v81 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v81 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v84 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v86 = (&v81 - v26);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v81 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v81 - v30;
  v32 = sub_1D1E66A7C();
  v33 = MEMORY[0x1EEE9AC00](v32);
  v93 = &v81 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v81 - v35;
  v105 = v8;
  v37 = *(v8 + 20);
  v99 = v38;
  v39 = *(v38 + 16);
  v107 = v40;
  v108 = a1;
  v91 = v38 + 16;
  v90 = v39;
  (v39)(&v81 - v35, a1 + v37);
  swift_getKeyPath();
  v41 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel___observationRegistrar;
  v111 = v2;
  v103 = sub_1D1B01A84(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel, &protocol conformance descriptor for HomeState.AllHomesModel);
  v104 = v41;
  sub_1D1E66CAC();

  v42 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__homeStates;
  swift_beginAccess();
  v94 = v2;
  v102 = v42;
  v43 = *(v2 + v42);
  v44 = *(v43 + 16);
  v109 = v36;
  if (v44)
  {

    v45 = sub_1D1742188();
    if (v46)
    {
      sub_1D1B013D8(*(v43 + 56) + *(v106 + 72) * v45, v21, type metadata accessor for HomeState);
      v47 = 0;
    }

    else
    {
      v47 = 1;
    }
  }

  else
  {
    v47 = 1;
  }

  v48 = v106;
  v49 = 1;
  v100 = *(v106 + 56);
  v101 = v106 + 56;
  v100(v21, v47, 1, v6);
  v50 = *(v48 + 48);
  v88 = v48 + 48;
  v87 = v50;
  if (!v50(v21, 1, v6))
  {
    sub_1D1B013D8(&v21[*(v6 + 24)], v31, type metadata accessor for MatterStateSnapshot);
    v49 = 0;
  }

  v97 = v6;
  sub_1D1741A30(v21, &qword_1EC649148, &qword_1D1E96490);
  v51 = *(v9 + 56);
  v52 = v105;
  v51(v31, v49, 1, v105);
  sub_1D1B013D8(v108, v29, type metadata accessor for MatterStateSnapshot);
  v83 = v51;
  v51(v29, 0, 1, v52);
  v53 = *(v98 + 48);
  sub_1D1741C08(v31, v12, &unk_1EC64F390, &qword_1D1E92B10);
  sub_1D1741C08(v29, &v12[v53], &unk_1EC64F390, &qword_1D1E92B10);
  v54 = *(v9 + 48);
  if (v54(v12, 1, v52) == 1)
  {
    sub_1D1741A30(v29, &unk_1EC64F390, &qword_1D1E92B10);
    sub_1D1741A30(v31, &unk_1EC64F390, &qword_1D1E92B10);
    if (v54(&v12[v53], 1, v52) == 1)
    {
      sub_1D1741A30(v12, &unk_1EC64F390, &qword_1D1E92B10);
      v55 = v109;
LABEL_19:
      (*(v99 + 8))(v55, v107);
      return 0;
    }

    goto LABEL_14;
  }

  v56 = v86;
  sub_1D1741C08(v12, v86, &unk_1EC64F390, &qword_1D1E92B10);
  if (v54(&v12[v53], 1, v52) == 1)
  {
    sub_1D1741A30(v29, &unk_1EC64F390, &qword_1D1E92B10);
    sub_1D1741A30(v31, &unk_1EC64F390, &qword_1D1E92B10);
    sub_1D1B019BC(v56, type metadata accessor for MatterStateSnapshot);
    v52 = v105;
LABEL_14:
    sub_1D1741A30(v12, &qword_1EC6491B0, &qword_1D1E92B08);
    v57 = v97;
    goto LABEL_15;
  }

  v67 = v82;
  sub_1D1B01A1C(&v12[v53], v82, type metadata accessor for MatterStateSnapshot);
  v68 = v56;
  v69 = _s13HomeDataModel19MatterStateSnapshotV2eeoiySbAC_ACtFZ_0(v56, v67);
  sub_1D1B019BC(v67, type metadata accessor for MatterStateSnapshot);
  sub_1D1741A30(v29, &unk_1EC64F390, &qword_1D1E92B10);
  sub_1D1741A30(v31, &unk_1EC64F390, &qword_1D1E92B10);
  sub_1D1B019BC(v68, type metadata accessor for MatterStateSnapshot);
  sub_1D1741A30(v12, &unk_1EC64F390, &qword_1D1E92B10);
  v57 = v97;
  v52 = v105;
  v55 = v109;
  if (v69)
  {
    goto LABEL_19;
  }

LABEL_15:
  swift_getKeyPath();
  v58 = v94;
  v110 = v94;
  sub_1D1E66CAC();

  v59 = *(v58 + v102);
  if (*(v59 + 16))
  {

    v60 = sub_1D1742188();
    v61 = v96;
    v62 = v92;
    v63 = v89;
    if (v64)
    {
      sub_1D1B013D8(*(v59 + 56) + *(v106 + 72) * v60, v89, type metadata accessor for HomeState);
      v65 = v63;
      v66 = 0;
    }

    else
    {
      v65 = v89;
      v66 = 1;
    }

    v100(v65, v66, 1, v57);
  }

  else
  {
    v63 = v89;
    v100(v89, 1, 1, v57);

    v61 = v96;
    v62 = v92;
  }

  sub_1D1B018E4(v63, v62);
  if (v87(v62, 1, v57) == 1)
  {
    v71 = type metadata accessor for StateSnapshot(0);
    v72 = v85;
    (*(*(v71 - 8) + 56))(v85, 1, 1, v71);
    v73 = v84;
    v83(v84, 1, 1, v52);
    HomeState.init(stateSnapshot:matterSnapshot:)(v72, v73, v61);

    sub_1D1741A30(v62, &qword_1EC649148, &qword_1D1E96490);
  }

  else
  {

    sub_1D1B01A1C(v62, v61, type metadata accessor for HomeState);
  }

  v74 = v108;
  sub_1D1B01954(v108, v61 + *(v57 + 24), type metadata accessor for MatterStateSnapshot);
  v75 = *(v74 + *(v52 + 28));
  v76 = v57;
  v77 = *(v57 + 20);

  *(v61 + v77) = v75;
  v78 = v93;
  v90(v93, v109, v107);
  v79 = v95;
  sub_1D1B013D8(v61, v95, type metadata accessor for HomeState);
  v70 = 1;
  v100(v79, 0, 1, v76);
  swift_getKeyPath();
  v110 = v58;
  sub_1D1E66CAC();

  v110 = v58;
  swift_getKeyPath();
  sub_1D1E66CCC();

  swift_beginAccess();
  sub_1D1B0ED54(v79, v78);
  swift_endAccess();
  v110 = v58;
  swift_getKeyPath();
  sub_1D1E66CBC();

  (*(v99 + 8))(v109, v107);
  sub_1D1B019BC(v61, type metadata accessor for HomeState);
  return v70;
}

uint64_t HomeState.AllHomesModel.latestSetupMilestone.getter@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1D1B01A84(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel, &protocol conformance descriptor for HomeState.AllHomesModel);
  sub_1D1E66CAC();

  v3 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__latestSetupMilestone;
  result = swift_beginAccess();
  *a1 = *(v5 + v3);
  return result;
}

uint64_t sub_1D1AFE514()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1D1AFE608;
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v3, 0, 0, 0xD000000000000014, 0x80000001D1EC46A0, sub_1D1AE88B8, v2, v4);
}

uint64_t sub_1D1AFE608()
{

  return MEMORY[0x1EEE6DFA0](sub_1D17ED45C, 0, 0);
}

uint64_t HomeState.AllHomesModel.currentHomeID.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1D1B01A84(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel, &protocol conformance descriptor for HomeState.AllHomesModel);
  sub_1D1E66CAC();

  v3 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__currentHomeID;
  swift_beginAccess();
  return sub_1D1741C08(v5 + v3, a1, &qword_1EC642590, qword_1D1E71260);
}

uint64_t sub_1D1AFE7F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D1B01A84(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel, &protocol conformance descriptor for HomeState.AllHomesModel);
  sub_1D1E66CAC();

  v4 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__currentHomeID;
  swift_beginAccess();
  return sub_1D1741C08(v3 + v4, a2, &qword_1EC642590, qword_1D1E71260);
}

uint64_t sub_1D1AFE8D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1D1741C08(a1, &v6 - v3, &qword_1EC642590, qword_1D1E71260);
  return HomeState.AllHomesModel.currentHomeID.setter(v4);
}

uint64_t type metadata accessor for HomeState.AllHomesModel(uint64_t a1)
{
  result = qword_1EC64AA88;
  if (!qword_1EC64AA88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HomeState.AllHomesModel.currentHomeID.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__currentHomeID;
  swift_beginAccess();
  sub_1D1741C08(v1 + v6, v5, &qword_1EC642590, qword_1D1E71260);
  v7 = sub_1D1B01440(v5, a1);
  sub_1D1741A30(v5, &qword_1EC642590, qword_1D1E71260);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1D1B01A84(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel, &protocol conformance descriptor for HomeState.AllHomesModel);
    sub_1D1E66C9C();
  }

  else
  {
    swift_beginAccess();
    sub_1D17E695C(a1, v1 + v6);
    swift_endAccess();
  }

  return sub_1D1741A30(a1, &qword_1EC642590, qword_1D1E71260);
}

uint64_t sub_1D1AFEBB4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__currentHomeID;
  swift_beginAccess();
  sub_1D17E695C(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t (*HomeState.AllHomesModel.currentHomeID.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1D1B01A84(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel, &protocol conformance descriptor for HomeState.AllHomesModel);
  sub_1D1E66CAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1D1E66CCC();

  swift_beginAccess();
  return sub_1D1AFED68;
}

uint64_t HomeState.AllHomesModel.currentResident.getter()
{
  swift_getKeyPath();
  sub_1D1B01A84(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel, &protocol conformance descriptor for HomeState.AllHomesModel);
  sub_1D1E66CAC();

  swift_beginAccess();
}

uint64_t sub_1D1AFEE34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D1B01A84(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel, &protocol conformance descriptor for HomeState.AllHomesModel);
  sub_1D1E66CAC();

  v4 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__currentResident;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t HomeState.AllHomesModel.currentResident.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__currentResident;
  swift_beginAccess();
  if (*(v1 + v3) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D1B01A84(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel, &protocol conformance descriptor for HomeState.AllHomesModel);
    sub_1D1E66C9C();
  }
}

uint64_t sub_1D1AFF058(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__currentResident;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t (*HomeState.AllHomesModel.currentResident.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1D1B01A84(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel, &protocol conformance descriptor for HomeState.AllHomesModel);
  sub_1D1E66CAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1D1E66CCC();

  swift_beginAccess();
  return sub_1D1AFF210;
}

uint64_t sub_1D1AFF21C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D1B01A84(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel, &protocol conformance descriptor for HomeState.AllHomesModel);
  sub_1D1E66CAC();

  v4 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__homeStates;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t HomeState.AllHomesModel.homeStates.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__homeStates;
  swift_beginAccess();

  v5 = sub_1D18542F8(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D1B01A84(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel, &protocol conformance descriptor for HomeState.AllHomesModel);
    sub_1D1E66C9C();
  }
}

uint64_t sub_1D1AFF460(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__homeStates;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t sub_1D1AFF4D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D1B01A84(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel, &protocol conformance descriptor for HomeState.AllHomesModel);
  sub_1D1E66CAC();

  v4 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__latestSetupMilestone;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t HomeState.AllHomesModel.latestSetupMilestone.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__latestSetupMilestone;
  result = swift_beginAccess();
  if (*(v1 + v3) != v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D1B01A84(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel, &protocol conformance descriptor for HomeState.AllHomesModel);
    sub_1D1E66C9C();
  }

  return result;
}

uint64_t (*HomeState.AllHomesModel.latestSetupMilestone.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1D1B01A84(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel, &protocol conformance descriptor for HomeState.AllHomesModel);
  sub_1D1E66CAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1D1E66CCC();

  swift_beginAccess();
  return sub_1D1AFF838;
}

void sub_1D1AFF844(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  swift_endAccess();
  *v3 = v3[3];
  swift_getKeyPath();
  sub_1D1E66CBC();

  free(v3);
}

uint64_t sub_1D1AFF8C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18[-v5];
  v7 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__currentHomeID;
  v8 = sub_1D1E66A7C();
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  type metadata accessor for HomeState.Stream.ResidentUpdateController(0);
  v9 = swift_allocObject();
  sub_1D1E66CDC();
  *(v0 + OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__currentResident) = v9;
  *(v0 + OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__homeStates) = sub_1D18DA7F8(MEMORY[0x1E69E7CC0]);
  *(v0 + OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__latestSetupMilestone) = 0;
  *(v0 + OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel_signpostState) = 0;
  sub_1D1E66CDC();
  v20 = 0;
  v19 = 0;
  sub_1D1AFFBE8(&v19, &v20);
  sub_1D1E67E3C();
  v10 = sub_1D1E67E7C();
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = v20;
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  *(v12 + 24) = v11;
  sub_1D1741C08(v6, v4, &unk_1EC6442C0, &qword_1D1E741A0);
  v13 = qword_1EC642358;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = qword_1EC64ABE8;
  v15 = sub_1D1B01A84(&qword_1EC649DA0, type metadata accessor for HomeDataActor, &protocol conformance descriptor for HomeDataActor);
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = v15;
  v16[4] = sub_1D1B01C4C;
  v16[5] = v12;

  sub_1D17C6EF0(0, 0, v4, &unk_1D1E96480, v16);

  sub_1D1741A30(v6, &unk_1EC6442C0, &qword_1D1E741A0);

  return v0;
}

uint64_t sub_1D1AFFBE8(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = sub_1D1E6702C();
  v57 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1D1E66FDC();
  v9 = *(v61 - 8);
  v10 = MEMORY[0x1EEE9AC00](v61);
  v59 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v56 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v56 - v15;
  v58 = *a1;
  if (qword_1EC642338 != -1)
  {
    swift_once();
  }

  v17 = sub_1D1E6709C();
  __swift_project_value_buffer(v17, qword_1EC64AA28);

  v18 = sub_1D1E6707C();
  v19 = sub_1D1E6835C();

  v20 = os_log_type_enabled(v18, v19);
  v60 = a2;
  if (v20)
  {
    v56 = v6;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v62 = v3;
    v63 = v22;
    *v21 = 136315394;
    v23 = sub_1D1E6789C();
    v25 = sub_1D1B1312C(v23, v24, &v63);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    if (v58 > 3)
    {
      v32 = 0x80000001D1EC43B0;
      v33 = 0xD00000000000001BLL;
      if (v58 == 6)
      {
        v33 = 0xD00000000000001ALL;
      }

      else
      {
        v32 = 0x80000001D1EC4390;
      }

      v34 = 0xD000000000000013;
      v35 = 0x80000001D1EC43F0;
      if (v58 != 4)
      {
        v34 = 0xD000000000000019;
        v35 = 0x80000001D1EC43D0;
      }

      if (v58 <= 5)
      {
        v30 = v34;
      }

      else
      {
        v30 = v33;
      }

      if (v58 <= 5)
      {
        v31 = v35;
      }

      else
      {
        v31 = v32;
      }
    }

    else
    {
      v26 = 0xE800000000000000;
      v27 = 0x6576697463616E69;
      v28 = 0x80000001D1EC3CF0;
      v29 = 0xD000000000000012;
      if (v58 != 2)
      {
        v29 = 0x63655273656D6F68;
        v28 = 0xED00006465766965;
      }

      if (v58)
      {
        v27 = 0xD000000000000013;
        v26 = 0x80000001D1EC4410;
      }

      if (v58 <= 1)
      {
        v30 = v27;
      }

      else
      {
        v30 = v29;
      }

      if (v58 <= 1)
      {
        v31 = v26;
      }

      else
      {
        v31 = v28;
      }
    }

    v36 = sub_1D1B1312C(v30, v31, &v63);

    *(v21 + 14) = v36;
    _os_log_impl(&dword_1D16EC000, v18, v19, "HomeState.Observable(%s) reached %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v22, -1, -1);
    MEMORY[0x1D3893640](v21, -1, -1);

    a2 = v60;
    v6 = v56;
  }

  else
  {
  }

  if (*a2)
  {
    if (qword_1EC642340 != -1)
    {
      swift_once();
    }

    v37 = sub_1D1E6701C();
    __swift_project_value_buffer(v37, qword_1EC64AA40);
    v38 = sub_1D1E66FFC();
    sub_1D1E6703C();
    v39 = sub_1D1E683DC();
    if (sub_1D1E6855C())
    {

      sub_1D1E6706C();

      v40 = v57;
      if ((*(v57 + 88))(v8, v6) == *MEMORY[0x1E69E93E8])
      {
        v41 = "[Error] Interval already ended";
      }

      else
      {
        (*(v40 + 8))(v8, v6);
        v41 = "";
      }

      v42 = swift_slowAlloc();
      *v42 = 0;
      v43 = sub_1D1E66FBC();
      _os_signpost_emit_with_name_impl(&dword_1D16EC000, v38, v39, v43, "HomeState.Observable.SetupMilestone", v41, v42, 2u);
      MEMORY[0x1D3893640](v42, -1, -1);
    }

    (*(v9 + 8))(v16, v61);
    a2 = v60;
  }

  if (qword_1EC642340 != -1)
  {
    swift_once();
  }

  v44 = sub_1D1E6701C();
  __swift_project_value_buffer(v44, qword_1EC64AA40);
  sub_1D1E66FFC();
  sub_1D1E66FAC();
  v45 = sub_1D1E66FFC();
  v46 = sub_1D1E683EC();
  if (sub_1D1E6855C())
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v63 = v48;
    *v47 = 136446210;
    LOBYTE(v62) = v58;
    v49 = HomeState.Stream.SetupMilestone.signpostDescription.getter();
    v51 = sub_1D1B1312C(v49, v50, &v63);

    *(v47 + 4) = v51;
    v52 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v45, v46, v52, "HomeState.Observable.SetupMilestone", "%{public}s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v48);
    MEMORY[0x1D3893640](v48, -1, -1);
    MEMORY[0x1D3893640](v47, -1, -1);
  }

  v53 = v61;
  (*(v9 + 16))(v59, v14, v61);
  sub_1D1E6705C();
  swift_allocObject();
  v54 = sub_1D1E6704C();
  result = (*(v9 + 8))(v14, v53);
  *a2 = v54;
  return result;
}

uint64_t sub_1D1B0030C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel_signpostState;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t HomeState.AllHomesModel.currentSnapshotState.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v25 - v4;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v28 = v1;
  sub_1D1B01A84(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel, &protocol conformance descriptor for HomeState.AllHomesModel);
  sub_1D1E66CAC();

  v10 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__currentHomeID;
  swift_beginAccess();
  sub_1D1741C08(v2 + v10, v5, &qword_1EC642590, qword_1D1E71260);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D1741A30(v5, &qword_1EC642590, qword_1D1E71260);
    v11 = type metadata accessor for HomeState(0);
    return (*(*(v11 - 8) + 56))(v26, 1, 1, v11);
  }

  else
  {
    v13 = v26;
    (*(v7 + 32))(v9, v5, v6);
    swift_getKeyPath();
    v27 = v2;
    sub_1D1E66CAC();

    v14 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__homeStates;
    swift_beginAccess();
    v15 = *(v2 + v14);
    if (*(v15 + 16))
    {

      v16 = sub_1D1742188();
      v17 = v13;
      if (v18)
      {
        v19 = v16;
        v20 = *(v15 + 56);
        v21 = type metadata accessor for HomeState(0);
        v22 = *(v21 - 8);
        sub_1D1B013D8(v20 + *(v22 + 72) * v19, v17, type metadata accessor for HomeState);
        (*(v7 + 8))(v9, v6);

        return (*(v22 + 56))(v17, 0, 1, v21);
      }

      else
      {

        (*(v7 + 8))(v9, v6);
        v24 = type metadata accessor for HomeState(0);
        return (*(*(v24 - 8) + 56))(v13, 1, 1, v24);
      }
    }

    else
    {
      (*(v7 + 8))(v9, v6);
      v23 = type metadata accessor for HomeState(0);
      return (*(*(v23 - 8) + 56))(v13, 1, 1, v23);
    }
  }
}

uint64_t sub_1D1B007C8(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9A0, &qword_1D1E97428);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_1D1E67E7C();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a1, v4);
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v12 = qword_1EC64ABE8;
  v13 = sub_1D1B01A84(&qword_1EC649DA0, type metadata accessor for HomeDataActor, &protocol conformance descriptor for HomeDataActor);
  v14 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = v13;
  *(v15 + 32) = a2;
  (*(v5 + 32))(v15 + v14, v7, v4);

  sub_1D17C6EF0(0, 0, v10, &unk_1D1E977A8, v15);
}

uint64_t sub_1D1B00A2C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 97) = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AAA0, &qword_1D1E977B0);
  *(v5 + 24) = v6;
  *(v5 + 32) = *(v6 - 8);
  *(v5 + 40) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AAA8, &qword_1D1E977B8);
  *(v5 + 48) = v7;
  *(v5 + 56) = *(v7 - 8);
  *(v5 + 64) = swift_task_alloc();
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v8 = qword_1EC64ABE8;
  *(v5 + 72) = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1B00B9C, v8, 0);
}

uint64_t sub_1D1B00B9C()
{
  v1 = v0[9];
  v2 = sub_1D1B01A84(&qword_1EC649DA0, type metadata accessor for HomeDataActor, &protocol conformance descriptor for HomeDataActor);
  v0[10] = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  sub_1D1E66D3C();
  sub_1D1E66D0C();
  v4 = v0[9];
  v5 = v0[10];
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_1D1B00D08;
  v7 = v0[3];

  return MEMORY[0x1EEE6CEB0](v0 + 12, v4, v5, v7);
}

uint64_t sub_1D1B00D08()
{
  v2 = *v1;

  if (!v0)
  {
    v4 = *(v2 + 72);

    return MEMORY[0x1EEE6DFA0](sub_1D1B00E18, v4, 0);
  }

  return result;
}

uint64_t sub_1D1B00E18()
{
  v1 = *(v0 + 96);
  if (v1 != 8)
  {
    if (v1 < *(v0 + 97))
    {
      v3 = *(v0 + 72);
      v2 = *(v0 + 80);
      v4 = swift_task_alloc();
      *(v0 + 88) = v4;
      *v4 = v0;
      v4[1] = sub_1D1B00D08;
      v5 = *(v0 + 24);

      return MEMORY[0x1EEE6CEB0](v0 + 96, v3, v2, v5);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9A0, &qword_1D1E97428);
    sub_1D1E67D6C();
  }

  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v8 = *(v0 + 48);
  (*(*(v0 + 32) + 8))(*(v0 + 40), *(v0 + 24));
  (*(v7 + 8))(v6, v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1D1B00F84@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(_s13HomeDataModel15StaticActionSetV6toggle4withAA13StateSnapshotVSg010optimisticJ0_ScTyAHs5Error_pG14completionTasktSgAA0aI0V6StreamC_tYaKFfA__0() + 3);

  swift_getKeyPath();
  sub_1D1B01A84(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel, &protocol conformance descriptor for HomeState.AllHomesModel);
  sub_1D1E66CAC();

  v3 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__latestSetupMilestone;
  swift_beginAccess();
  *a1 = *(v2 + v3);
}

uint64_t HomeState.AllHomesModel.deinit()
{
  sub_1D1741A30(v0 + OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__currentHomeID, &qword_1EC642590, qword_1D1E71260);

  v1 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel___observationRegistrar;
  v2 = sub_1D1E66CEC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t HomeState.AllHomesModel.__deallocating_deinit()
{
  sub_1D1741A30(v0 + OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__currentHomeID, &qword_1EC642590, qword_1D1E71260);

  v1 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel___observationRegistrar;
  v2 = sub_1D1E66CEC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1D1B01214()
{
  v0 = sub_1D1E6709C();
  __swift_allocate_value_buffer(v0, qword_1EC64AA28);
  __swift_project_value_buffer(v0, qword_1EC64AA28);
  return sub_1D1E6708C();
}

uint64_t sub_1D1B0129C()
{
  v0 = sub_1D1E6709C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D1E6701C();
  __swift_allocate_value_buffer(v4, qword_1EC64AA40);
  __swift_project_value_buffer(v4, qword_1EC64AA40);
  if (qword_1EC642338 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EC64AA28);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1D1E66FEC();
}

uint64_t sub_1D1B013D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1B01440(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_1D1741C08(a1, &v21 - v13, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741C08(a2, &v14[v15], &qword_1EC642590, qword_1D1E71260);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1D1741C08(v14, v10, &qword_1EC642590, qword_1D1E71260);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1D1B01A84(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v18 = sub_1D1E6775C();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1D1741A30(v14, &qword_1EC642590, qword_1D1E71260);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1D1741A30(v14, &qword_1EC642980, &unk_1D1E6E6E0);
    v17 = 1;
    return v17 & 1;
  }

  sub_1D1741A30(v14, &qword_1EC642590, qword_1D1E71260);
  v17 = 0;
  return v17 & 1;
}

void sub_1D1B017D4(uint64_t a1)
{
  sub_1D177868C(319);
  if (v1 <= 0x3F)
  {
    sub_1D1E66CEC();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1D1B018E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649148, &qword_1D1E96490);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1B01954(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1B019BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1B01A1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1B01A84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D1B01ACC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9A0, &qword_1D1E97428) - 8);
  v5 = (*(v4 + 80) + 33) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4BFC;

  return sub_1D1B00A2C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1D1B01BF0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__latestSetupMilestone;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

void *sub_1D1B01C6C()
{
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645518, &qword_1D1E79AB0);
  MEMORY[0x1EEE9AC00](v62);
  v2 = &v60 - v1;
  v61 = type metadata accessor for StateSnapshot(0);
  v3 = *(v0 + *(v61 + 52));
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v63 = v0;
  v64 = v3;

  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  while (v7)
  {
LABEL_10:
    v13 = __clz(__rbit64(v7)) | (v10 << 6);
    v14 = v64;
    v15 = *(v64 + 48);
    v16 = sub_1D1E66A7C();
    (*(*(v16 - 8) + 16))(v2, v15 + *(*(v16 - 8) + 72) * v13, v16);
    v17 = *(v14 + 56);
    v18 = type metadata accessor for StaticRoom(0);
    sub_1D1B0229C(v17 + *(*(v18 - 8) + 72) * v13, &v2[*(v62 + 48)]);
    LOBYTE(v68) = 8;
    v19 = type metadata accessor for HomeState(0);
    v20 = StaticRoom.orderedVisibleTileInfos(filterCategory:matterSnapshot:forDashboard:forStatus:)(&v68, v63 + *(v19 + 24), 0, 0);
    result = sub_1D1B02300(v2);
    v21 = v20[2];
    v22 = v11[2];
    v23 = v22 + v21;
    if (__OFADD__(v22, v21))
    {
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      return result;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v23 > v11[3] >> 1)
    {
      if (v22 <= v23)
      {
        v24 = v22 + v21;
      }

      else
      {
        v24 = v22;
      }

      result = sub_1D177F2B8(result, v24, 1, v11);
      v11 = result;
    }

    v7 &= v7 - 1;
    if (v20[2])
    {
      if ((v11[3] >> 1) - v11[2] < v21)
      {
        goto LABEL_46;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
      swift_arrayInitWithCopy();

      if (v21)
      {
        v25 = v11[2];
        v26 = __OFADD__(v25, v21);
        v27 = v25 + v21;
        if (v26)
        {
          goto LABEL_47;
        }

        v11[2] = v27;
      }
    }

    else
    {

      if (v21)
      {
        goto LABEL_45;
      }
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    if (v12 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v12);
    ++v10;
    if (v7)
    {
      v10 = v12;
      goto LABEL_10;
    }
  }

  v28 = v11[2];
  v29 = MEMORY[0x1E69E7CC0];
  if (v28)
  {
    v30 = 0;
    v31 = (v11 + 4);
    v32 = MEMORY[0x1E69E7CC0];
    while (v30 < v11[2])
    {
      sub_1D17419CC(v31, &v68);
      v33 = v69;
      v34 = v70;
      __swift_project_boxed_opaque_existential_1(&v68, v69);
      if ((*(v34 + 120))(v33, v34))
      {
        sub_1D16EEE20(&v68, v65);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v71 = v32;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D178CF40(0, *(v32 + 16) + 1, 1);
          v32 = v71;
        }

        v37 = *(v32 + 16);
        v36 = *(v32 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_1D178CF40((v36 > 1), v37 + 1, 1);
        }

        v38 = v66;
        v39 = v67;
        v40 = __swift_mutable_project_boxed_opaque_existential_1(v65, v66);
        MEMORY[0x1EEE9AC00](v40);
        v42 = &v60 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v43 + 16))(v42);
        sub_1D1D20ADC(v37, v42, &v71, v38, v39);
        result = __swift_destroy_boxed_opaque_existential_1(v65);
        v32 = v71;
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_1(&v68);
      }

      ++v30;
      v31 += 40;
      if (v28 == v30)
      {
        goto LABEL_34;
      }
    }

    goto LABEL_43;
  }

  v32 = MEMORY[0x1E69E7CC0];
LABEL_34:

  v44 = *(v32 + 16);
  if (v44)
  {
    v71 = v29;
    sub_1D178CF40(0, v44, 0);
    v45 = v71;
    v46 = v32 + 32;
    do
    {
      sub_1D17419CC(v46, v65);
      v47 = v66;
      v48 = v67;
      __swift_project_boxed_opaque_existential_1(v65, v66);
      sub_1D1E17CA8(v47, v48, &v68);
      __swift_destroy_boxed_opaque_existential_1(v65);
      v71 = v45;
      v50 = *(v45 + 16);
      v49 = *(v45 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_1D178CF40((v49 > 1), v50 + 1, 1);
      }

      v51 = v69;
      v52 = v70;
      v53 = __swift_mutable_project_boxed_opaque_existential_1(&v68, v69);
      MEMORY[0x1EEE9AC00](v53);
      v55 = &v60 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v56 + 16))(v55);
      sub_1D1D20ADC(v50, v55, &v71, v51, v52);
      __swift_destroy_boxed_opaque_existential_1(&v68);
      v45 = v71;
      v46 += 40;
      --v44;
    }

    while (v44);
  }

  else
  {

    v45 = MEMORY[0x1E69E7CC0];
  }

  v57 = v63 + *(v61 + 20);
  v58 = type metadata accessor for StaticHome(0);
  v59 = sub_1D1D07DC4(*(v57 + *(v58 + 60)), v45);

  return v59;
}

uint64_t sub_1D1B0229C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticRoom(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1B02300(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645518, &qword_1D1E79AB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1B02368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1D1741C08(a3, v22 - v9, &unk_1EC6442C0, &qword_1D1E741A0);
  v11 = sub_1D1E67E7C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1D1741A30(v10, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  else
  {
    sub_1D1E67E6C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1D1E67D4C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1D1E678CC() + 32;

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

      sub_1D1741A30(a3, &unk_1EC6442C0, &qword_1D1E741A0);

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

  sub_1D1741A30(a3, &unk_1EC6442C0, &qword_1D1E741A0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1D1B02614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1D1741C08(a3, v22 - v9, &unk_1EC6442C0, &qword_1D1E741A0);
  v11 = sub_1D1E67E7C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1D1741A30(v10, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  else
  {
    sub_1D1E67E6C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1D1E67D4C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1D1E678CC() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
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

      sub_1D1741A30(a3, &unk_1EC6442C0, &qword_1D1E741A0);

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

  sub_1D1741A30(a3, &unk_1EC6442C0, &qword_1D1E741A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t CharacteristicValueModerator.fetchValues<A>(for:in:timeout:snapshotPreference:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 96) = a8;
  *(v9 + 104) = v8;
  *(v9 + 80) = a4;
  *(v9 + 88) = a7;
  *(v9 + 288) = a5;
  *(v9 + 64) = a2;
  *(v9 + 72) = a3;
  *(v9 + 56) = a1;
  v13 = *v8;
  *(v9 + 112) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  *(v9 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  *(v9 + 128) = swift_task_alloc();
  *(v9 + 136) = *(a8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v9 + 144) = AssociatedTypeWitness;
  *(v9 + 152) = *(v13 + 88);
  *(v9 + 160) = *(v13 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v9 + 168) = AssociatedConformanceWitness;
  type metadata accessor for BatchCharacteristicRequest.Response(255, AssociatedTypeWitness, AssociatedConformanceWitness, v16);
  sub_1D1E67D1C();
  *(v9 + 176) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  v17 = sub_1D1E680DC();
  *(v9 + 184) = v17;
  v18 = *(v17 - 8);
  *(v9 + 192) = v18;
  *(v9 + 200) = *(v18 + 64);
  *(v9 + 208) = swift_task_alloc();
  *(v9 + 216) = swift_task_alloc();
  v19 = *(a7 - 8);
  *(v9 + 224) = v19;
  *(v9 + 232) = *(v19 + 64);
  v20 = swift_task_alloc();
  v21 = *a6;
  *(v9 + 240) = v20;
  *(v9 + 248) = v21;

  return MEMORY[0x1EEE6DFA0](sub_1D1B02C00, v8, 0);
}

uint64_t sub_1D1B02C00()
{
  v51 = v0;
  v1 = *(v0 + 104);
  v2 = *(*(v0 + 224) + 16);
  v48 = *(v0 + 88);
  v2(*(v0 + 240), *(v0 + 64), *(v0 + 88));
  v3 = swift_task_alloc();
  *(v3 + 16) = v48;
  *(v3 + 32) = v1;
  v4 = sub_1D1E67A8C();

  *(v0 + 40) = v4;
  swift_beginAccess();
  sub_1D1E681FC();
  sub_1D1E67D1C();

  swift_getWitnessTable();
  sub_1D1E681EC();
  swift_endAccess();
  *(v0 + 48) = v4;
  swift_getWitnessTable();
  if (sub_1D1E682AC())
  {
    v5 = *(v0 + 56);
    v6 = type metadata accessor for StateSnapshot(0);
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v43 = *(v0 + 248);
    v46 = *(v0 + 240);
    v34 = *(v0 + 224);
    v35 = *(v0 + 232);
    v9 = *(v0 + 216);
    v49 = *(v0 + 208);
    v37 = *(v0 + 200);
    v32 = v2;
    v45 = *(v0 + 192);
    v47 = *(v0 + 184);
    v10 = *(v0 + 160);
    v11 = *(v0 + 152);
    v12 = *(v0 + 128);
    v36 = v12;
    v42 = *(v0 + 96);
    v13 = *(v0 + 88);
    v44 = *(v0 + 288);
    v38 = *(v0 + 72);
    v39 = *(v0 + 104);
    v31 = *(v0 + 64);
    sub_1D16EE910(v4, v50);

    sub_1D1B03774(v50, v10, v11, v9);

    v41 = sub_1D1E67E7C();
    v40 = *(*(v41 - 8) + 56);
    v40(v12, 1, 1, v41);
    v32(v46, v31, v13);
    (*(v45 + 16))(v49, v9, v47);
    type metadata accessor for CharacteristicValueModerator(255, v10, v11, v14);
    WitnessTable = swift_getWitnessTable();
    v15 = (*(v34 + 80) + 72) & ~*(v34 + 80);
    v16 = (v35 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = (*(v45 + 80) + v16 + 8) & ~*(v45 + 80);
    v18 = (v37 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = swift_allocObject();
    *(v19 + 2) = v39;
    *(v19 + 3) = WitnessTable;
    *(v19 + 4) = v10;
    *(v19 + 5) = v13;
    *(v19 + 6) = v11;
    *(v19 + 7) = v42;
    *(v19 + 8) = v43;
    (*(v34 + 32))(&v19[v15], v46);
    *&v19[v16] = v39;
    (*(v45 + 32))(&v19[v17], v49, v47);
    *&v19[v18] = v38;
    *&v19[(v18 + 15) & 0xFFFFFFFFFFFFFFF8] = v4;
    swift_retain_n();
    swift_unknownObjectRetain();
    v20 = sub_1D1B02614(0, 0, v36, &unk_1D1E977D8, v19);
    *(v0 + 256) = v20;
    v40(v36, 1, 1, v41);
    v21 = *(v0 + 128);
    if (v44)
    {
      v22 = swift_allocObject();
      *(v22 + 16) = 0;
      *(v22 + 24) = 0;
      *(v22 + 32) = v20;

      v23 = &unk_1D1E960C8;
    }

    else
    {
      v24 = *(v0 + 80);
      v22 = swift_allocObject();
      *(v22 + 16) = 0;
      *(v22 + 24) = 0;
      *(v22 + 32) = v20;
      *(v22 + 40) = v24;
      *(v22 + 48) = 1;

      v23 = &unk_1D1E961A8;
    }

    v25 = sub_1D1B02614(0, 0, v21, v23, v22);
    *(v0 + 264) = v25;
    v26 = swift_task_alloc();
    *(v0 + 272) = v26;
    *v26 = v0;
    v26[1] = sub_1D1B03200;
    v27 = *(v0 + 176);
    v29 = *(v0 + 112);
    v28 = *(v0 + 120);
    v30 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v28, v25, v29, v27, v30);
  }
}

uint64_t sub_1D1B03200()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 104);

  if (v0)
  {
    v4 = sub_1D1B03420;
  }

  else
  {
    v4 = sub_1D1B03348;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D1B03348()
{
  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[15];
  v5 = v0[7];

  (*(v3 + 8))(v1, v2);
  sub_1D1B0ABE4(v4, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D1B03420()
{
  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[24];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t CharacteristicValueModerator.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t CharacteristicValueModerator.__deallocating_deinit()
{
  CharacteristicValueModerator.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

BOOL sub_1D1B035B4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();

  v4 = sub_1D1E681CC();

  return (v4 & 1) == 0;
}

uint64_t sub_1D1B03774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v168 = a1;
  v150 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v157 = v122 - v7;
  v155 = sub_1D1E66FDC();
  v142 = *(v155 - 8);
  v8 = MEMORY[0x1EEE9AC00](v155);
  v156 = v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v165 = v122 - v10;
  v172 = a3;
  v11 = *(a3 + 16);
  swift_getAssociatedTypeWitness();
  v140 = v11;
  v178 = a2;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v147 = AssociatedTypeWitness;
  v139 = AssociatedConformanceWitness;
  type metadata accessor for BatchCharacteristicRequest.Response(255, AssociatedTypeWitness, AssociatedConformanceWitness, v14);
  sub_1D1E67D1C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  v146 = sub_1D1E6808C();
  v15 = *(v146 - 1);
  MEMORY[0x1EEE9AC00](v146);
  v17 = v122 - v16;
  v170 = sub_1D1E680BC();
  v160 = *(v170 - 8);
  v18 = MEMORY[0x1EEE9AC00](v170);
  v138 = v122 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v136 = v122 - v21;
  v137 = v22;
  MEMORY[0x1EEE9AC00](v20);
  v174 = v122 - v23;
  v149 = sub_1D1E680DC();
  v148 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v167 = v122 - v24;
  v169 = sub_1D1E66A7C();
  v159 = *(v169 - 8);
  v25 = MEMORY[0x1EEE9AC00](v169);
  v164 = v122 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = v122 - v27;
  v29 = sub_1D1E6709C();
  v30 = *(v29 - 8);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v177 = v122 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = v32;
  MEMORY[0x1EEE9AC00](v31);
  v176 = v122 - v33;
  v34 = sub_1D1E6701C();
  v35 = *(v34 - 8);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v171 = v122 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v151 = v37;
  MEMORY[0x1EEE9AC00](v36);
  v39 = v122 - v38;
  v40 = *v168;
  if (qword_1EC642350 != -1)
  {
    swift_once();
  }

  v41 = __swift_project_value_buffer(v34, qword_1EC6BE198);
  v158 = v35;
  v42 = *(v35 + 16);
  v175 = v34;
  v153 = v35 + 16;
  v152 = v42;
  v42(v39, v41, v34);
  v43 = v39;
  if (qword_1EC642348 != -1)
  {
    swift_once();
  }

  v44 = __swift_project_value_buffer(v29, qword_1EC6BE180);
  v168 = v30;
  v45 = v30 + 16;
  v46 = *(v30 + 16);
  v47 = v176;
  v162 = v45;
  v161 = v46;
  v46(v176, v44, v29);
  sub_1D1E66A6C();

  v48 = v40;
  v49 = swift_checkMetadataState();
  v50 = sub_1D1E67CBC();
  v173 = v29;
  v51 = v50;
  sub_1D1B07784(v17);
  v52 = v174;
  sub_1D1E6804C();
  (*(v15 + 8))(v17, v146);
  if (v51 < 1)
  {

    sub_1D1E67D8C();
    v116 = v28;
    sub_1D1B0C084(&qword_1EC6486C8, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    v117 = swift_allocError();
    sub_1D1E6759C();
    v179 = v117;
    v118 = v170;
    sub_1D1E680AC();
    (*(v160 + 8))(v52, v118);
    (*(v159 + 8))(v116, v169);
    (*(v158 + 8))(v43, v175);
  }

  else
  {
    v53 = v43;
    v144 = v43;
    sub_1D1E66FFC();
    v54 = v165;
    sub_1D1E66FAC();
    v55 = v172;
    v56 = v178;
    v147 = sub_1D1B07C0C(v28, v51, v53, v54, "BatchCharacteristicRead", 23, 2, v47, v178, v172);
    v57 = v28;
    v145 = v28;
    v179 = v48;
    v135 = v48;
    MEMORY[0x1EEE9AC00](v147);
    v122[-4] = v56;
    v122[-3] = v55;
    v121 = v47;
    v126 = v49;
    sub_1D1E67D1C();
    swift_getWitnessTable();
    sub_1D1E67ADC();

    v58 = v159;
    v59 = *(v159 + 16);
    v131 = v159 + 16;
    v132 = v59;
    v60 = v164;
    v61 = v57;
    v62 = v169;
    v59(v164, v61, v169);
    v161(v177, v47, v173);
    v152(v171, v53, v175);
    v63 = *(v58 + 80);
    v64 = (v63 + 32) & ~v63;
    v129 = v63;
    v65 = *(v168 + 80);
    v66 = (v154 + v65 + v64) & ~v65;
    v67 = v158;
    v124 = *(v158 + 80);
    v68 = (v163 + v124 + v66) & ~v124;
    v130 = v65 | v63 | v124 | 7;
    v123 = ((v68 + v151 + 7) & 0xFFFFFFFFFFFFFFF8);
    v69 = (v68 + v151 + 31) & 0xFFFFFFFFFFFFFFF8;
    v70 = swift_allocObject();
    v71 = v172;
    *(v70 + 16) = v178;
    *(v70 + 24) = v71;
    v72 = *(v58 + 32);
    v133 = v58 + 32;
    v134 = v72;
    v72(v70 + v64, v60, v62);
    v73 = *(v168 + 32);
    v143 = v168 + 32;
    v146 = v73;
    v74 = v177;
    v75 = v173;
    v73(v70 + v66, v177, v173);
    v76 = *(v67 + 32);
    v127 = v67 + 32;
    v128 = v76;
    v76((v70 + v68), v171, v175);
    v77 = v123 + v70;
    *v77 = "BatchCharacteristicRead";
    *(v77 + 1) = 23;
    v77[16] = 2;
    *(v70 + v69) = v147;

    v78 = v170;
    v79 = v174;
    sub_1D1E6807C();
    v161(v74, v176, v75);
    v80 = v160;
    v123 = *(v160 + 16);
    v81 = v136;
    v123(v136, v79, v78);
    v82 = (v65 + 32) & ~v65;
    v125 = v65;
    v83 = *(v80 + 80);
    v84 = v80;
    v85 = (v82 + v163 + v83) & ~v83;
    v122[1] = v83 | 7;
    v86 = swift_allocObject();
    v87 = v177;
    v88 = v172;
    *(v86 + 16) = v178;
    *(v86 + 24) = v88;
    v146(v86 + v82, v87, v75);
    v89 = *(v84 + 32);
    v90 = v81;
    v91 = v170;
    v89(v86 + v85, v90, v170);
    v92 = v138;
    v123(v138, v174, v91);
    v93 = (v83 + 32) & ~v83;
    v94 = swift_allocObject();
    v95 = v178;
    *(v94 + 16) = v178;
    *(v94 + 24) = v88;
    v89(v94 + v93, v92, v91);
    sub_1D1A768EC(sub_1D1B0C2EC, v86, sub_1D1B0C500, v94, &v179);
    v138 = v179;
    v139 = v181;
    v136 = ((v124 + 48) & ~v124);
    v96 = &v136[v151 + 7] & 0xFFFFFFFFFFFFFFF8;
    v126 = v96;
    v151 = v180;
    v179 = 0x6165526863746142;
    *&v180 = 0xEA00000000002D64;
    v97 = (*(v140 + 136))(v95);
    MEMORY[0x1D3890F70](v97);

    v140 = v179;
    v137 = v180;
    v98 = v157;
    sub_1D1E67F8C();
    v99 = sub_1D1E67E7C();
    (*(*(v99 - 8) + 56))(v98, 0, 1, v99);
    v100 = v175;
    v152(v171, v144, v175);
    v101 = v142;
    (*(v142 + 16))(v156, v165, v155);
    v102 = v173;
    v161(v177, v176, v173);
    v132(v164, v145, v169);
    v103 = (v96 + *(v101 + 80) + 17) & ~*(v101 + 80);
    v104 = (v141 + v125 + v103) & ~v125;
    v105 = (v163 + v129 + v104) & ~v129;
    v106 = (v154 + v105 + 7) & 0xFFFFFFFFFFFFFFF8;
    v107 = (v106 + 15) & 0xFFFFFFFFFFFFFFF8;
    v108 = swift_allocObject();
    *(v108 + 16) = 0;
    *(v108 + 24) = 0;
    v109 = v171;
    v110 = v172;
    *(v108 + 32) = v178;
    *(v108 + 40) = v110;
    v128(&v136[v108], v109, v100);
    v111 = (v108 + v126);
    *v111 = "BatchCharacteristicRead";
    *(v111 + 1) = 23;
    v111[16] = 2;
    v112 = (v108 + v103);
    v113 = v155;
    (*(v101 + 32))(v112, v156, v155);
    v146(v108 + v104, v177, v102);
    v114 = v169;
    v134(v108 + v105, v164, v169);
    *(v108 + v106) = v166;
    *(v108 + v107) = v135;
    v115 = (v108 + ((v107 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v115 = v138;
    *(v115 + 8) = v151;
    *(v115 + 3) = v139;

    swift_unknownObjectRetain();

    v47 = v176;
    sub_1D17C6EF0(v140, v137, v157, &unk_1D1E97AE0, v108);

    (*(v101 + 8))(v165, v113);
    (*(v160 + 8))(v174, v170);
    (*(v159 + 8))(v145, v114);
    (*(v158 + 8))(v144, v175);
  }

  v119 = v173;
  (*(v148 + 32))(v150, v167, v149);
  return (*(v168 + 8))(v47, v119);
}

uint64_t sub_1D1B04A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v8[49] = v24;
  v8[50] = v25;
  v8[47] = a8;
  v8[48] = v23;
  v8[45] = a6;
  v8[46] = a7;
  v8[43] = a4;
  v8[44] = a5;
  v8[42] = a1;
  v10 = *a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[51] = AssociatedTypeWitness;
  v12 = *(AssociatedTypeWitness - 8);
  v8[52] = v12;
  v8[53] = *(v12 + 64);
  v8[54] = swift_task_alloc();
  v8[55] = swift_task_alloc();
  v8[56] = swift_task_alloc();
  v13 = sub_1D1E66A7C();
  v8[57] = v13;
  v8[58] = *(v13 - 8);
  v8[59] = swift_task_alloc();
  v8[60] = swift_task_alloc();
  v8[61] = swift_task_alloc();
  v14 = *(v10 + 88);
  v8[62] = v14;
  v8[63] = *(v14 + 16);
  v8[64] = *(v10 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8[65] = AssociatedConformanceWitness;
  type metadata accessor for BatchCharacteristicRequest.Response(255, AssociatedTypeWitness, AssociatedConformanceWitness, v16);
  v8[66] = sub_1D1E67D1C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  v17 = sub_1D1E680DC();
  v8[67] = v17;
  v8[68] = *(v17 - 8);
  v8[69] = swift_task_alloc();
  WitnessTable = swift_getWitnessTable();
  v8[70] = WitnessTable;
  v20 = type metadata accessor for AsyncBatchedSequence(0, v17, WitnessTable, v19);
  v8[71] = v20;
  v8[72] = *(v20 - 8);
  v8[73] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v8[74] = swift_task_alloc();
  v8[75] = swift_task_alloc();
  v8[76] = swift_task_alloc();
  v8[77] = swift_task_alloc();
  v8[78] = type metadata accessor for StateSnapshot.UpdateType(0);
  v8[79] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B04E5C, a6, 0);
}

uint64_t sub_1D1B04E5C()
{
  v40 = v0;
  if (*(v0 + 344))
  {
    v22 = *(v0 + 632);
    v23 = *(v0 + 520);
    v24 = *(v0 + 400);
    v25 = *(v0 + 408);
    v26 = *(v0 + 392);
    v27 = *(v0 + 352);
    v28 = *(v0 + 360);
    v37 = 0uLL;
    v39 = 0;
    v38 = 0;
    sub_1D1B07430(v27, &v37, v25, v26, v23, v24);
    *(v0 + 640) = *(v28 + 112);

    sub_1D1ABE6AC(v0 + 232);

    v29 = *(v0 + 248);
    *v22 = *(v0 + 232);
    *(v22 + 16) = v29;
    swift_storeEnumTagMultiPayload();
    v30 = swift_task_alloc();
    *(v0 + 648) = v30;
    *v30 = v0;
    v30[1] = sub_1D1B051E8;
    v31 = *(v0 + 632);

    return sub_1D1AB6894(v31, 0, 0, 0, 0);
  }

  else
  {
    v1 = *(v0 + 616);
    v2 = *(v0 + 584);
    v3 = *(v0 + 576);
    v4 = *(v0 + 568);
    v5 = *(v0 + 552);
    v6 = *(v0 + 544);
    v7 = *(v0 + 536);
    v8 = *(v0 + 520);
    v36 = *(v0 + 512);
    v34 = *(v0 + 560);
    v35 = *(v0 + 496);
    v33 = *(v0 + 368);
    v9 = type metadata accessor for StateSnapshot(0);
    *(v0 + 656) = v9;
    v10 = *(v9 - 8);
    *(v0 + 664) = v10;
    v11 = *(v10 + 56);
    *(v0 + 672) = v11;
    *(v0 + 680) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v1, 1, 1, v9);
    *(v0 + 688) = *(v8 + 16);
    *(v0 + 256) = sub_1D1E6757C();
    (*(v6 + 16))(v5, v33, v7);
    sub_1D1D758D4(1, v7, v34, v2);
    v12 = sub_1D1D7595C(v4);
    (*(v3 + 8))(v2, v4);
    *(v0 + 264) = v12;
    type metadata accessor for CharacteristicValueModerator(255, v36, v35, v13);
    WitnessTable = swift_getWitnessTable();
    *(v0 + 696) = WitnessTable;
    v15 = *(v0 + 560);
    v16 = *(v0 + 536);
    v17 = *(v0 + 360);
    v18 = swift_task_alloc();
    *(v0 + 704) = v18;
    v20 = type metadata accessor for AsyncBatchedSequence.Iterator(0, v16, v15, v19);
    v21 = swift_getWitnessTable();
    *v18 = v0;
    v18[1] = sub_1D1B055A4;

    return MEMORY[0x1EEE6D8E0](v0 + 272, v17, WitnessTable, v20, v21, v0 + 280);
  }
}

uint64_t sub_1D1B051E8()
{
  v1 = *(*v0 + 632);
  v2 = *(*v0 + 360);

  sub_1D1AB1124(v1);

  return MEMORY[0x1EEE6DFA0](sub_1D1B05344, v2, 0);
}

uint64_t sub_1D1B05344()
{
  v1 = v0[77];
  v2 = v0[73];
  v3 = v0[72];
  v4 = v0[71];
  v5 = v0[69];
  v6 = v0[68];
  v7 = v0[67];
  v8 = v0[65];
  v26 = v0[64];
  v24 = v0[70];
  v25 = v0[62];
  v23 = v0[46];
  v9 = type metadata accessor for StateSnapshot(0);
  v0[82] = v9;
  v10 = *(v9 - 8);
  v0[83] = v10;
  v11 = *(v10 + 56);
  v0[84] = v11;
  v0[85] = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v11(v1, 1, 1, v9);
  v0[86] = *(v8 + 16);
  v0[32] = sub_1D1E6757C();
  (*(v6 + 16))(v5, v23, v7);
  sub_1D1D758D4(1, v7, v24, v2);
  v12 = sub_1D1D7595C(v4);
  (*(v3 + 8))(v2, v4);
  v0[33] = v12;
  type metadata accessor for CharacteristicValueModerator(255, v26, v25, v13);
  WitnessTable = swift_getWitnessTable();
  v0[87] = WitnessTable;
  v15 = v0[70];
  v16 = v0[67];
  v17 = v0[45];
  v18 = swift_task_alloc();
  v0[88] = v18;
  v20 = type metadata accessor for AsyncBatchedSequence.Iterator(0, v16, v15, v19);
  v21 = swift_getWitnessTable();
  *v18 = v0;
  v18[1] = sub_1D1B055A4;

  return MEMORY[0x1EEE6D8E0](v0 + 34, v17, WitnessTable, v20, v21, v0 + 35);
}

uint64_t sub_1D1B055A4()
{
  v2 = *v1;
  *(*v1 + 712) = v0;

  v3 = *(v2 + 360);
  if (v0)
  {
    v4 = sub_1D1B06A98;
  }

  else
  {
    v4 = sub_1D1B056BC;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D1B056BC()
{
  v1 = *(v0 + 272);
  if (v1)
  {
    v2 = *(v0 + 528);
    v3 = *(v0 + 512);
    v4 = *(v0 + 496);
    v5 = *(v0 + 400);
    v36 = *(v0 + 408);
    v34 = v5;
    v35 = v4;
    v6 = *(v0 + 392);
    v37 = *(v0 + 344);
    *(v0 + 312) = v1;
    v7 = swift_task_alloc();
    v7[2] = v3;
    v7[3] = v6;
    v7[4] = v4;
    v7[5] = v5;
    sub_1D1E67D1C();
    swift_getWitnessTable();
    swift_getWitnessTable();
    v8 = sub_1D1E67ACC();

    *(v0 + 320) = v8;
    v9 = swift_task_alloc();
    *v9 = v3;
    v9[1] = v6;
    v9[2] = v35;
    v9[3] = v5;
    KeyPath = swift_getKeyPath();

    v11 = swift_task_alloc();
    v11[2] = v3;
    v11[3] = v6;
    v11[4] = v35;
    v11[5] = v34;
    v11[6] = KeyPath;
    WitnessTable = swift_getWitnessTable();
    v14 = sub_1D18CE91C(sub_1D1B0C100, v11, v2, v36, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v13);

    *(v0 + 328) = v14;
    swift_beginAccess();
    sub_1D1E681FC();
    sub_1D1E67D1C();
    swift_getWitnessTable();
    sub_1D1E681DC();
    swift_endAccess();

    if (!v37 || (v15 = *(v0 + 344), sub_1D1B07554(v8, *(v0 + 408), *(v0 + 520)), , sub_1D1E6769C(), , sub_1D1E6764C(), (v15 & 2) == 0))
    {

      v19 = *(v0 + 696);
      v20 = *(v0 + 560);
      v21 = *(v0 + 536);
      v22 = *(v0 + 360);
      v23 = swift_task_alloc();
      *(v0 + 704) = v23;
      v25 = type metadata accessor for AsyncBatchedSequence.Iterator(0, v21, v20, v24);
      v26 = swift_getWitnessTable();
      *v23 = v0;
      v23[1] = sub_1D1B055A4;

      return MEMORY[0x1EEE6D8E0](v0 + 272, v22, v19, v25, v26, v0 + 280);
    }

    v27 = *(v0 + 632);
    *(v0 + 720) = *(*(v0 + 360) + 112);

    sub_1D1ABE6AC(v0 + 208);

    v28 = *(v0 + 224);
    *v27 = *(v0 + 208);
    *(v27 + 16) = v28;
    swift_storeEnumTagMultiPayload();
    v29 = swift_task_alloc();
    *(v0 + 728) = v29;
    *v29 = v0;
    v30 = sub_1D1B05DA8;
    goto LABEL_14;
  }

  v16 = *(v0 + 344);

  *(v0 + 304) = *(v0 + 384);
  swift_beginAccess();
  sub_1D1E681FC();
  sub_1D1E67D1C();
  swift_getWitnessTable();
  sub_1D1E681DC();
  swift_endAccess();
  if ((v16 & 4) != 0)
  {
    v31 = *(v0 + 632);
    *(v0 + 744) = *(*(v0 + 360) + 112);

    sub_1D1ABE6AC(v0 + 184);
    v32 = *(v0 + 200);
    *v31 = *(v0 + 184);
    *(v31 + 16) = v32;
    swift_storeEnumTagMultiPayload();
    v29 = swift_task_alloc();
    *(v0 + 752) = v29;
    *v29 = v0;
    v30 = sub_1D1B06164;
LABEL_14:
    v29[1] = v30;
    v33 = *(v0 + 632);

    return sub_1D1AB6894(v33, 0, 0, 0, 0);
  }

  sub_1D1B0ABE4(*(v0 + 616), *(v0 + 336));

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1D1B05DA8(uint64_t a1)
{
  v2 = *(*v1 + 632);
  v3 = *(*v1 + 360);
  *(*v1 + 736) = a1;

  sub_1D1AB1124(v2);

  return MEMORY[0x1EEE6DFA0](sub_1D1B05F00, v3, 0);
}

uint64_t sub_1D1B05F00()
{
  v1 = *(v0 + 736);
  (*(*(v0 + 504) + 128))(*(v0 + 512));
  if (*(v1 + 16))
  {
    v2 = sub_1D1742188();
    if (v3)
    {
      v4 = *(v0 + 616);
      v5 = *(v0 + 488);
      v6 = *(v0 + 456);
      v7 = *(v0 + 464);
      sub_1D18CE730(*(*(v0 + 736) + 56) + *(*(v0 + 664) + 72) * v2, *(v0 + 608));
      (*(v7 + 8))(v5, v6);
      sub_1D1741A30(v4, &unk_1EC649E30, &unk_1D1E91250);

      v8 = 0;
      goto LABEL_7;
    }

    v14 = *(v0 + 616);
    v15 = *(v0 + 488);
    v16 = *(v0 + 456);
    v17 = *(v0 + 464);

    (*(v17 + 8))(v15, v16);
    v13 = v14;
  }

  else
  {
    v9 = *(v0 + 616);
    v10 = *(v0 + 488);
    v11 = *(v0 + 456);
    v12 = *(v0 + 464);

    (*(v12 + 8))(v10, v11);
    v13 = v9;
  }

  sub_1D1741A30(v13, &unk_1EC649E30, &unk_1D1E91250);
  v8 = 1;
LABEL_7:
  v18 = *(v0 + 616);
  v19 = *(v0 + 608);
  (*(v0 + 672))(v19, v8, 1, *(v0 + 656));
  sub_1D1B0ABE4(v19, v18);
  v20 = *(v0 + 696);
  v21 = *(v0 + 560);
  v22 = *(v0 + 536);
  v23 = *(v0 + 360);
  v24 = swift_task_alloc();
  *(v0 + 704) = v24;
  v26 = type metadata accessor for AsyncBatchedSequence.Iterator(0, v22, v21, v25);
  WitnessTable = swift_getWitnessTable();
  *v24 = v0;
  v24[1] = sub_1D1B055A4;

  return MEMORY[0x1EEE6D8E0](v0 + 272, v23, v20, v26, WitnessTable, v0 + 280);
}

uint64_t sub_1D1B06164(uint64_t a1)
{
  v2 = *(*v1 + 632);
  v3 = *(*v1 + 360);
  *(*v1 + 760) = a1;

  sub_1D1AB1124(v2);

  return MEMORY[0x1EEE6DFA0](sub_1D1B062BC, v3, 0);
}

uint64_t sub_1D1B062BC()
{
  v1 = *(v0 + 760);
  (*(*(v0 + 504) + 128))(*(v0 + 512));
  if (*(v1 + 16))
  {
    v2 = sub_1D1742188();
    if (v3)
    {
      v4 = *(v0 + 616);
      v5 = *(v0 + 480);
      v6 = *(v0 + 456);
      v7 = *(v0 + 464);
      sub_1D18CE730(*(*(v0 + 760) + 56) + *(*(v0 + 664) + 72) * v2, *(v0 + 600));
      (*(v7 + 8))(v5, v6);
      sub_1D1741A30(v4, &unk_1EC649E30, &unk_1D1E91250);

      v8 = 0;
      goto LABEL_7;
    }

    v14 = *(v0 + 616);
    v15 = *(v0 + 480);
    v16 = *(v0 + 456);
    v17 = *(v0 + 464);

    (*(v17 + 8))(v15, v16);
    v13 = v14;
  }

  else
  {
    v9 = *(v0 + 616);
    v10 = *(v0 + 480);
    v11 = *(v0 + 456);
    v12 = *(v0 + 464);

    (*(v12 + 8))(v10, v11);
    v13 = v9;
  }

  sub_1D1741A30(v13, &unk_1EC649E30, &unk_1D1E91250);
  v8 = 1;
LABEL_7:
  v18 = *(v0 + 616);
  v19 = *(v0 + 600);
  (*(v0 + 672))(v19, v8, 1, *(v0 + 656));
  sub_1D1B0ABE4(v19, v18);
  sub_1D1B0ABE4(*(v0 + 616), *(v0 + 336));

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1D1B0654C(uint64_t a1)
{
  v2 = *(*v1 + 632);
  v3 = *(*v1 + 360);
  *(*v1 + 784) = a1;

  sub_1D1AB1124(v2);

  return MEMORY[0x1EEE6DFA0](sub_1D1B066A4, v3, 0);
}

uint64_t sub_1D1B066A4()
{
  v1 = *(v0 + 784);
  (*(*(v0 + 504) + 128))(*(v0 + 512));
  if (*(v1 + 16))
  {
    v2 = sub_1D1742188();
    v3 = *(v0 + 792);
    if (v4)
    {
      v5 = *(v0 + 616);
      v7 = *(v0 + 464);
      v6 = *(v0 + 472);
      v8 = *(v0 + 456);
      sub_1D18CE730(*(*(v0 + 784) + 56) + *(*(v0 + 664) + 72) * v2, *(v0 + 592));

      (*(v7 + 8))(v6, v8);
      sub_1D1741A30(v5, &unk_1EC649E30, &unk_1D1E91250);

      v9 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v3 = *(v0 + 792);
  }

  v10 = *(v0 + 616);
  v12 = *(v0 + 464);
  v11 = *(v0 + 472);
  v13 = *(v0 + 456);

  (*(v12 + 8))(v11, v13);
  sub_1D1741A30(v10, &unk_1EC649E30, &unk_1D1E91250);
  v9 = 1;
LABEL_6:
  v14 = *(v0 + 616);
  v15 = *(v0 + 592);
  (*(v0 + 672))(v15, v9, 1, *(v0 + 656));
  sub_1D1B0ABE4(v15, v14);
  v16 = *(v0 + 344);
  *(v0 + 304) = *(v0 + 384);
  swift_beginAccess();
  sub_1D1E681FC();
  sub_1D1E67D1C();
  swift_getWitnessTable();
  sub_1D1E681DC();
  swift_endAccess();
  if ((v16 & 4) != 0)
  {
    v19 = *(v0 + 632);
    *(v0 + 744) = *(*(v0 + 360) + 112);

    sub_1D1ABE6AC(v0 + 184);
    v20 = *(v0 + 200);
    *v19 = *(v0 + 184);
    *(v19 + 16) = v20;
    swift_storeEnumTagMultiPayload();
    v21 = swift_task_alloc();
    *(v0 + 752) = v21;
    *v21 = v0;
    v21[1] = sub_1D1B06164;
    v22 = *(v0 + 632);

    return sub_1D1AB6894(v22, 0, 0, 0, 0);
  }

  else
  {
    sub_1D1B0ABE4(*(v0 + 616), *(v0 + 336));

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1D1B06A98()
{

  v1 = *(v0 + 280);
  *(v0 + 792) = v1;
  v2 = v1;
  v3 = sub_1D1E6655C();
  v37 = [v3 code];
  v4 = [v3 domain];
  v5 = sub_1D1E6781C();
  v35 = v6;
  v36 = v5;

  v33 = v1;
  *(v0 + 288) = sub_1D1E6757C();
  if (sub_1D1E67CBC())
  {
    v7 = 0;
    v8 = *(v0 + 416);
    v32 = *(v0 + 424);
    v39 = (v8 + 32);
    v40 = (v8 + 16);
    v38 = (v8 + 8);
    v34 = v8;
    do
    {
      v13 = sub_1D1E67C9C();
      sub_1D1E67C4C();
      if (v13)
      {
        v14 = *(v8 + 16);
        v14(*(v0 + 432), *(v0 + 384) + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v7, *(v0 + 408));
        v15 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_12;
        }
      }

      else
      {
        result = sub_1D1E688AC();
        if (v32 != 8)
        {
          __break(1u);
          return result;
        }

        v20 = *(v0 + 432);
        v21 = *(v0 + 408);
        *(v0 + 296) = result;
        v14 = *v40;
        (*v40)(v20, v0 + 296, v21);
        swift_unknownObjectRelease();
        v15 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      (*v39)(*(v0 + 448), *(v0 + 432), *(v0 + 408));
      sub_1D1E676AC();
      v16 = *(v0 + 40);
      if (v16 == 255)
      {
        v10 = *(v0 + 440);
        v9 = *(v0 + 448);
        v11 = *(v0 + 408);
        v14(v10, v9, v11);
        *(v0 + 48) = v37;
        *(v0 + 56) = v36;
        *(v0 + 64) = v35;
        *(v0 + 72) = 2;
        sub_1D1E6769C();
        swift_bridgeObjectRetain_n();
        sub_1D1E676BC();
        v14(v10, v9, v11);
        *(v0 + 80) = v37;
        *(v0 + 88) = v36;
        *(v0 + 96) = v35;
        *(v0 + 104) = 2;
        sub_1D1E676BC();
        v12 = v11;
        v8 = v34;
        (*v38)(v9, v12);
      }

      else
      {
        v17 = *(v0 + 448);
        v18 = *(v0 + 408);
        sub_1D1B0C0CC(*(v0 + 16), *(v0 + 24), *(v0 + 32), v16);
        (*v38)(v17, v18);
      }

      ++v7;
    }

    while (v15 != sub_1D1E67CBC());
  }

  v22 = *(v0 + 344);

  if ((v22 & 4) == 0)
  {
    v23 = *(v0 + 632);
    *(v0 + 768) = *(*(v0 + 360) + 112);

    sub_1D1ABE6AC(v0 + 160);

    v24 = *(v0 + 176);
    *v23 = *(v0 + 160);
    *(v23 + 16) = v24;
    swift_storeEnumTagMultiPayload();
    v25 = swift_task_alloc();
    *(v0 + 776) = v25;
    *v25 = v0;
    v26 = sub_1D1B0654C;
LABEL_20:
    v25[1] = v26;
    v31 = *(v0 + 632);

    return sub_1D1AB6894(v31, 0, 0, 0, 0);
  }

  v27 = *(v0 + 344);
  *(v0 + 304) = *(v0 + 384);
  swift_beginAccess();
  sub_1D1E681FC();
  sub_1D1E67D1C();
  swift_getWitnessTable();
  sub_1D1E681DC();
  swift_endAccess();
  if ((v27 & 4) != 0)
  {
    v29 = *(v0 + 632);
    *(v0 + 744) = *(*(v0 + 360) + 112);

    sub_1D1ABE6AC(v0 + 184);
    v30 = *(v0 + 200);
    *v29 = *(v0 + 184);
    *(v29 + 16) = v30;
    swift_storeEnumTagMultiPayload();
    v25 = swift_task_alloc();
    *(v0 + 752) = v25;
    *v25 = v0;
    v26 = sub_1D1B06164;
    goto LABEL_20;
  }

  sub_1D1B0ABE4(*(v0 + 616), *(v0 + 336));

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1D1B0714C(uint64_t a1)
{
  v3 = v2;
  v17 = (*(*(v1[5] - 8) + 80) + 72) & ~*(*(v1[5] - 8) + 80);
  v4 = (*(*(v1[5] - 8) + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for BatchCharacteristicRequest.Response(255, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  sub_1D1E67D1C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  v8 = *(sub_1D1E680DC() - 8);
  v9 = (v4 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[8];
  v13 = *(v1 + v4);
  v14 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1D17C4BFC;

  return sub_1D1B04A1C(a1, v10, v11, v12, v1 + v17, v13, v1 + v9, v14);
}

uint64_t sub_1D1B07430(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getTupleTypeMetadata2();
  v8 = sub_1D1E67C7C();
  sub_1D1AC25F8(v8, a3, &type metadata for StaticCharacteristic.LoadingState, *(a5 + 16));

  sub_1D1E6769C();
  sub_1D1E67A9C();
  return v10;
}

uint64_t sub_1D1B07554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getTupleTypeMetadata2();
  v5 = sub_1D1E67C7C();
  sub_1D1AC25F8(v5, a2, &type metadata for StaticCharacteristic.LoadingState, *(a3 + 16));

  type metadata accessor for BatchCharacteristicRequest.Response(255, a2, a3, v6);
  sub_1D1E67D1C();
  sub_1D1E6769C();
  swift_getWitnessTable();
  sub_1D1E67A9C();
  return v8;
}

uint64_t sub_1D1B07678@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  v5 = *(a1 + 24);
  *(a2 + 24) = v5;
  return sub_1D17418FC(v2, v3, v4, v5);
}

uint64_t sub_1D1B076BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D1B076DC, 0, 0);
}

uint64_t sub_1D1B076DC()
{
  v1 = v0[2];
  sub_1D18CE730(v0[3], v1);
  v2 = type metadata accessor for StateSnapshot(0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_1D1B07784@<X0>(uint64_t a2@<X8>)
{
  v3 = *MEMORY[0x1E69E8790];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  v4 = sub_1D1E6808C();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t sub_1D1B07828()
{
  v0 = sub_1D1E6709C();
  __swift_allocate_value_buffer(v0, qword_1EC6BE180);
  __swift_project_value_buffer(v0, qword_1EC6BE180);
  return sub_1D1E6708C();
}

uint64_t sub_1D1B078B0()
{
  v0 = sub_1D1E6709C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D1E6701C();
  __swift_allocate_value_buffer(v4, qword_1EC6BE198);
  __swift_project_value_buffer(v4, qword_1EC6BE198);
  if (qword_1EC642348 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EC6BE180);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1D1E66FEC();
}

void sub_1D1B079EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + *(type metadata accessor for BatchCharacteristicRequest.Response(0, v11, v12, v12) + 36));
  if (v13)
  {
    v14 = v13;
    v15 = v13;
    v16 = sub_1D1E6655C();
    v31 = a2;
    v17 = v16;
    v25 = [v16 code];
    v18 = [v17 domain];
    v24[1] = a4;
    v19 = v18;
    v20 = sub_1D1E6781C();
    v26 = a1;
    v21 = v20;
    v23 = v22;

    (*(v8 + 16))(v10, v31, a3);
    v27 = v25;
    v28 = v21;
    v29 = v23;
    v30 = 2;
    sub_1D1E6769C();
    sub_1D1E676BC();
  }

  else
  {
    (*(v8 + 16))(v10, a2, a3);
    v28 = 0;
    v29 = 0;
    v27 = 1;
    v30 = 3;
    sub_1D1E6769C();
    sub_1D1E676BC();
  }
}

uint64_t sub_1D1B07C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v51 = a8;
  v48 = a2;
  v50 = a1;
  v52 = sub_1D1E66A7C();
  v49 = *(v52 - 8);
  v13 = MEMORY[0x1EEE9AC00](v52);
  v47 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v46 - v15;
  v17 = sub_1D1E66FDC();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D1E66FFC();
  v22 = sub_1D1E683EC();
  result = sub_1D1E6855C();
  if (result)
  {
    if ((a7 & 1) == 0)
    {
      if (a5)
      {
LABEL_9:
        v24 = swift_slowAlloc();
        *v24 = 134217984;
        *(v24 + 4) = v48;
        v25 = sub_1D1E66FBC();
        _os_signpost_emit_with_name_impl(&dword_1D16EC000, v21, v22, v25, a5, "#characteristics: %ld", v24, 0xCu);
        MEMORY[0x1D3893640](v24, -1, -1);
        goto LABEL_10;
      }

      __break(1u);
    }

    if (a5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((a5 & 0xFFFFF800) == 0xD800)
      {
LABEL_16:
        __break(1u);
        return result;
      }

      if (a5 >> 16 <= 0x10)
      {
        a5 = &v53;
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_10:

  (*(v18 + 16))(v20, a4, v17);
  sub_1D1E6705C();
  swift_allocObject();
  v26 = sub_1D1E6704C();
  v27 = v49;
  v28 = v52;
  (*(v49 + 16))(v16, v50, v52);
  swift_unknownObjectRetain_n();
  v29 = sub_1D1E6707C();
  v30 = sub_1D1E6831C();
  if (os_log_type_enabled(v29, v30))
  {
    v46 = a10;
    v31 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v54 = v50;
    *v31 = 134218754;
    *(v31 + 4) = v48;
    *(v31 + 12) = 2082;
    sub_1D1B0C084(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v51 = v26;
    LODWORD(v48) = v30;
    v32 = sub_1D1E68FAC();
    v34 = v33;
    v49 = *(v27 + 8);
    (v49)(v16, v28);
    v35 = sub_1D1B1312C(v32, v34, &v54);

    *(v31 + 14) = v35;
    *(v31 + 22) = 2080;
    v36 = *(v46 + 16);
    v37 = (*(v36 + 136))(a9, v36);
    v39 = sub_1D1B1312C(v37, v38, &v54);

    *(v31 + 24) = v39;
    *(v31 + 32) = 2082;
    v40 = v47;
    (*(v36 + 128))(a9, v36);
    swift_unknownObjectRelease();
    v26 = v51;
    v41 = sub_1D1E68FAC();
    v43 = v42;
    swift_unknownObjectRelease();
    (v49)(v40, v28);
    v44 = sub_1D1B1312C(v41, v43, &v54);

    *(v31 + 34) = v44;
    _os_log_impl(&dword_1D16EC000, v29, v48, "Starting batch characteristic read operation with %ld characteristics (ID: %{public}s, home: %s (%{public}s))", v31, 0x2Au);
    v45 = v50;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v45, -1, -1);
    MEMORY[0x1D3893640](v31, -1, -1);
  }

  else
  {

    swift_unknownObjectRelease_n();
    (*(v27 + 8))(v16, v28);
  }

  return v26;
}

uint64_t sub_1D1B08138(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v68 = a2;
  v5 = sub_1D1E66A7C();
  v66 = *(v5 - 8);
  v67 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v65 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v71 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v70 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v61 - v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedTypeWitness();
  v14 = sub_1D1E685AC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v61 - v17;
  v19 = *(v13 - 8);
  v20 = MEMORY[0x1EEE9AC00](v16);
  v69 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v61 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v72 = &v61 - v25;
  (*(AssociatedConformanceWitness + 88))(AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((*(v19 + 48))(v18, 1, v13) == 1)
  {
    return (*(v15 + 8))(v18, v14);
  }

  v27 = v72;
  (*(v19 + 32))(v72, v18, v13);
  v28 = *(v71 + 16);
  v28(v11, a1, AssociatedTypeWitness);
  v28(v70, a1, AssociatedTypeWitness);
  v29 = *(v19 + 16);
  v29(v24, v27, v13);
  v29(v69, v27, v13);
  v30 = sub_1D1E6707C();
  v31 = sub_1D1E6832C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v68 = v32;
    v64 = swift_slowAlloc();
    v75 = v64;
    *v32 = 136315906;
    v61 = *(AssociatedConformanceWitness + 128);
    v63 = v31;
    v61(&v74, AssociatedTypeWitness, AssociatedConformanceWitness);
    v33 = sub_1D1E6789C();
    v35 = v34;
    v62 = v30;
    v71 = *(v71 + 8);
    (v71)(v11, AssociatedTypeWitness);
    v36 = sub_1D1B1312C(v33, v35, &v75);

    v37 = v68;
    *(v68 + 1) = v36;
    *(v37 + 6) = 2080;
    v38 = v70;
    v61(&v73, AssociatedTypeWitness, AssociatedConformanceWitness);
    v39 = sub_1D1D8227C();
    v41 = v40;
    (v71)(v38, AssociatedTypeWitness);
    v42 = sub_1D1B1312C(v39, v41, &v75);

    v43 = v68;
    *(v68 + 14) = v42;
    *(v43 + 11) = 2080;
    v44 = swift_getAssociatedConformanceWitness();
    v45 = (*(v44 + 64))(v13, v44);
    v47 = v46;
    v48 = *(v19 + 8);
    v48(v24, v13);
    v49 = sub_1D1B1312C(v45, v47, &v75);

    *(v43 + 3) = v49;
    *(v43 + 16) = 2082;
    v50 = v65;
    v51 = v69;
    (*(v44 + 56))(v13, v44);
    v48(v51, v13);
    sub_1D1B0C084(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v52 = v67;
    v53 = sub_1D1E68FAC();
    v55 = v54;
    (*(v66 + 8))(v50, v52);
    v56 = sub_1D1B1312C(v53, v55, &v75);

    *(v43 + 34) = v56;
    v57 = v62;
    _os_log_impl(&dword_1D16EC000, v62, v63, "\t %s/%s - %s (%{public}s)", v43, 0x2Au);
    v58 = v64;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v58, -1, -1);
    MEMORY[0x1D3893640](v43, -1, -1);

    return (v48)(v72, v13);
  }

  else
  {
    v59 = *(v19 + 8);
    v59(v69, v13);

    v59(v24, v13);
    v60 = *(v71 + 8);
    v60(v70, AssociatedTypeWitness);
    v60(v11, AssociatedTypeWitness);
    return (v59)(v72, v13);
  }
}

uint64_t sub_1D1B08964(uint64_t a1, _DWORD *a2, void *a3, uint64_t a4, const char *a5, uint64_t a6, unsigned __int8 a7, NSObject **a8, uint64_t a9, uint64_t a10)
{
  v129 = a4;
  v130 = a8;
  v132 = a5;
  v126 = a2;
  v127 = a3;
  v125 = a1;
  v121 = a7;
  v122 = sub_1D1E6702C();
  v131 = *(v122 - 8);
  v10 = MEMORY[0x1EEE9AC00](v122);
  v115 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v114 = &v113 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v113 = &v113 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v116 = &v113 - v16;
  v17 = sub_1D1E66FDC();
  v123 = *(v17 - 8);
  v124 = v17;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v118 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v119 = &v113 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v117 = &v113 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v120 = &v113 - v24;
  v128 = sub_1D1E66A7C();
  v25 = *(v128 - 8);
  v26 = MEMORY[0x1EEE9AC00](v128);
  v28 = &v113 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v113 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v113 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v113 - v35;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for BatchCharacteristicRequest.Response(255, AssociatedTypeWitness, AssociatedConformanceWitness, v39);
  sub_1D1E67D1C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  v40 = sub_1D1E6805C();
  v41 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v43 = (&v113 - v42);
  (*(v41 + 16))(&v113 - v42, v125, v40);
  v44 = (*(v41 + 88))(v43, v40);
  if (v44 != *MEMORY[0x1E69E8758])
  {
    v59 = v25[2];
    if (v44 == *MEMORY[0x1E69E8760])
    {
      v60 = v128;
      (v59)(v31, v126, v128);
      v61 = sub_1D1E6707C();
      v40 = sub_1D1E6833C();
      if (os_log_type_enabled(v61, v40))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v136 = v63;
        *v62 = 136446210;
        sub_1D1B0C084(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v64 = sub_1D1E68FAC();
        v66 = v65;
        (v25[1])(v31, v60);
        v67 = sub_1D1B1312C(v64, v66, &v136);

        *(v62 + 4) = v67;
        _os_log_impl(&dword_1D16EC000, v61, v40, "Batch read operation cancelled (ID: %{public}s)", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v63);
        MEMORY[0x1D3893640](v63, -1, -1);
        MEMORY[0x1D3893640](v62, -1, -1);
      }

      else
      {

        (v25[1])(v31, v60);
      }

      v43 = v130;
      v25 = v131;
      v45 = sub_1D1E66FFC();
      v41 = v119;
      sub_1D1E6703C();
      v68 = sub_1D1E683DC();
      result = sub_1D1E6855C();
      v90 = v132;
      if ((result & 1) == 0)
      {
        goto LABEL_56;
      }

      if (v121)
      {
        v91 = v122;
        if (HIDWORD(v132))
        {
LABEL_72:
          __break(1u);
          goto LABEL_73;
        }

        if ((v132 & 0xFFFFF800) == 0xD800)
        {
LABEL_79:
          __break(1u);
          goto LABEL_80;
        }

        if (v132 >> 16 > 0x10)
        {
          goto LABEL_74;
        }

        v90 = &v135;
      }

      else
      {
        v91 = v122;
        if (!v132)
        {
          __break(1u);
          goto LABEL_23;
        }
      }

      v101 = v114;
      sub_1D1E6706C();

      if ((v25[11])(v101, v91) == *MEMORY[0x1E69E93E8])
      {
        v102 = "[Error] Interval already ended";
      }

      else
      {
        (v25[1])(v101, v91);
        v102 = "Batch read canceled";
      }

      v105 = swift_slowAlloc();
      *v105 = 0;
      v106 = sub_1D1E66FBC();
      _os_signpost_emit_with_name_impl(&dword_1D16EC000, v45, v68, v106, v90, v102, v105, 2u);
      MEMORY[0x1D3893640](v105, -1, -1);
      goto LABEL_56;
    }

    v31 = v128;
    (v59)(v28, v126, v128);
    v68 = sub_1D1E6707C();
    v69 = sub_1D1E6833C();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v126 = v70;
      v127 = swift_slowAlloc();
      v136 = v127;
      *v70 = 136446210;
      sub_1D1B0C084(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v71 = sub_1D1E68FAC();
      v73 = v72;
      (v25[1])(v28, v31);
      v74 = sub_1D1B1312C(v71, v73, &v136);

      v75 = v126;
      *(v126 + 1) = v74;
      v76 = v75;
      _os_log_impl(&dword_1D16EC000, v68, v69, "Batch read operation terminated with unknown reason (ID: %{public}s)", v75, 0xCu);
      v77 = v127;
      __swift_destroy_boxed_opaque_existential_1(v127);
      MEMORY[0x1D3893640](v77, -1, -1);
      MEMORY[0x1D3893640](v76, -1, -1);

      goto LABEL_24;
    }

LABEL_23:

    (v25[1])(v28, v31);
LABEL_24:
    v31 = v132;
    v92 = sub_1D1E66FFC();
    v93 = v118;
    v25 = v130;
    sub_1D1E6703C();
    v34 = sub_1D1E683DC();
    result = sub_1D1E6855C();
    v94 = v131;
    if (result)
    {
      LODWORD(v132) = v34;
      if (v121)
      {
        v78 = v122;
        if (HIDWORD(v31))
        {
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
          goto LABEL_76;
        }

        if ((v31 & 0xFFFFF800) == 0xD800)
        {
LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

        if (v31 >> 16 > 0x10)
        {
          goto LABEL_75;
        }

        v31 = &v137;
      }

      else
      {
        v78 = v122;
        if (!v31)
        {
          __break(1u);
          goto LABEL_28;
        }
      }

      v103 = v115;
      sub_1D1E6706C();

      if ((v94[11])(v103, v78) == *MEMORY[0x1E69E93E8])
      {
        v104 = "[Error] Interval already ended";
      }

      else
      {
        (v94[1])(v103, v78);
        v104 = "Batch read canceled";
      }

      v107 = swift_slowAlloc();
      *v107 = 0;
      v108 = sub_1D1E66FBC();
      _os_signpost_emit_with_name_impl(&dword_1D16EC000, v92, v132, v108, v31, v104, v107, 2u);
      MEMORY[0x1D3893640](v107, -1, -1);
    }

    (*(v123 + 8))(v93, v124);
    return (*(v41 + 8))(v43, v40);
  }

  (*(v41 + 96))(v43, v40);
  v45 = *v43;
  if (*v43)
  {
    v46 = v128;
    (v25[2])(v36, v126, v128);
    v47 = v45;
    v48 = sub_1D1E6707C();
    v49 = sub_1D1E6833C();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v136 = v51;
      *v50 = 136446466;
      sub_1D1B0C084(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v52 = sub_1D1E68FAC();
      v54 = v53;
      (v25[1])(v36, v46);
      v55 = sub_1D1B1312C(v52, v54, &v136);

      *(v50 + 4) = v55;
      *(v50 + 12) = 2080;
      swift_getErrorValue();
      v56 = sub_1D1E6915C();
      v58 = sub_1D1B1312C(v56, v57, &v136);

      *(v50 + 14) = v58;
      _os_log_impl(&dword_1D16EC000, v48, v49, "Batch read operation failed (ID: %{public}s): %s", v50, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v51, -1, -1);
      MEMORY[0x1D3893640](v50, -1, -1);
    }

    else
    {

      (v25[1])(v36, v46);
    }

    v41 = v132;
    v31 = v120;
    v85 = sub_1D1E66FFC();
    sub_1D1E6703C();
    LOBYTE(v86) = sub_1D1E683DC();
    result = sub_1D1E6855C();
    v88 = v131;
    if ((result & 1) == 0)
    {
      goto LABEL_17;
    }

    if ((v121 & 1) == 0)
    {
      v89 = v122;
      if (!v41)
      {
        __break(1u);
LABEL_17:

        return (*(v123 + 8))(v31, v124);
      }

LABEL_37:

      v97 = v116;
      sub_1D1E6706C();

      if ((v88[11])(v97, v89) == *MEMORY[0x1E69E93E8])
      {
        v98 = "[Error] Interval already ended";
      }

      else
      {
        (v88[1])(v97, v89);
        v98 = "Batch read terminated successfully";
      }

      v99 = swift_slowAlloc();
      *v99 = 0;
      v100 = sub_1D1E66FBC();
      _os_signpost_emit_with_name_impl(&dword_1D16EC000, v85, v86, v100, v41, v98, v99, 2u);
      MEMORY[0x1D3893640](v99, -1, -1);

      return (*(v123 + 8))(v31, v124);
    }

    goto LABEL_33;
  }

  v41 = v128;
  (v25[2])(v34, v126, v128);
  v78 = sub_1D1E6707C();
  v79 = sub_1D1E6835C();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v136 = v81;
    *v80 = 136446210;
    sub_1D1B0C084(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v82 = sub_1D1E68FAC();
    v31 = v83;
    (v25[1])(v34, v41);
    v84 = sub_1D1B1312C(v82, v31, &v136);

    *(v80 + 4) = v84;
    _os_log_impl(&dword_1D16EC000, v78, v79, "Batch read operation completed successfully (ID: %{public}s)", v80, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v81);
    MEMORY[0x1D3893640](v81, -1, -1);
    MEMORY[0x1D3893640](v80, -1, -1);

    goto LABEL_29;
  }

LABEL_28:

  (v25[1])(v34, v41);
LABEL_29:
  v86 = v131;
  v95 = v132;
  v88 = v130;
  v45 = sub_1D1E66FFC();
  v41 = v117;
  sub_1D1E6703C();
  v85 = sub_1D1E683DC();
  result = sub_1D1E6855C();
  if ((result & 1) == 0)
  {
LABEL_56:

    return (*(v123 + 8))(v41, v124);
  }

  if (v121)
  {
    v96 = v122;
    if (HIDWORD(v95))
    {
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    if ((v95 & 0xFFFFF800) == 0xD800)
    {
LABEL_81:
      __break(1u);
      return result;
    }

    if (v95 >> 16 > 0x10)
    {
      goto LABEL_77;
    }

    v95 = &v134;
  }

  else
  {
    v96 = v122;
    if (!v95)
    {
      __break(1u);
LABEL_33:
      v89 = v122;
      if (HIDWORD(v41))
      {
        __break(1u);
      }

      else
      {
        if ((v41 & 0xFFFFF800) == 0xD800)
        {
LABEL_78:
          __break(1u);
          goto LABEL_79;
        }

        if (v41 >> 16 <= 0x10)
        {
          v41 = &v133;
          goto LABEL_37;
        }
      }

      __break(1u);
      goto LABEL_72;
    }
  }

  v109 = v113;
  sub_1D1E6706C();

  if ((v86[11])(v109, v96) == *MEMORY[0x1E69E93E8])
  {
    v110 = "[Error] Interval already ended";
  }

  else
  {
    (v86[1])(v109, v96);
    v110 = "Batch read terminated successfully";
  }

  v111 = swift_slowAlloc();
  *v111 = 0;
  v112 = sub_1D1E66FBC();
  _os_signpost_emit_with_name_impl(&dword_1D16EC000, v45, v85, v112, v95, v110, v111, 2u);
  MEMORY[0x1D3893640](v111, -1, -1);

  return (*(v123 + 8))(v41, v124);
}

uint64_t sub_1D1B09AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a3;
  v29 = a2;
  v30 = a5;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for BatchCharacteristicRequest.Response(255, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  v25 = sub_1D1E67D1C();
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  v26 = sub_1D1E6806C();
  v24 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v22 = &v20 - v9;
  v10 = swift_checkMetadataState();
  v11 = *(v10 - 8);
  v21 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  if (!sub_1D1E67CBC())
  {
LABEL_11:
    v31 = a1;
    sub_1D1E680BC();

    v19 = v22;
    sub_1D1E6809C();
    return (*(v24 + 8))(v19, v26);
  }

  v14 = 0;
  while (1)
  {
    v15 = sub_1D1E67C9C();
    sub_1D1E67C4C();
    if (v15)
    {
      (*(v11 + 16))(v13, a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v14, v10);
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    result = sub_1D1E688AC();
    if (v21 != 8)
    {
      break;
    }

    v31 = result;
    (*(v11 + 16))(v13, &v31, v10);
    swift_unknownObjectRelease();
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

LABEL_5:
    v17 = swift_checkMetadataState();
    sub_1D1B09EAC(v13, v29, a4, v17, v30, AssociatedConformanceWitness);
    (*(v11 + 8))(v13, v10);
    ++v14;
    if (v16 == sub_1D1E67CBC())
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_1D1B09EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v69 = a4;
  v8 = type metadata accessor for BatchCharacteristicRequest.Response(0, a4, a6, a4);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v62 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v62 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v62 - v20;
  v22 = *(a1 + *(v19 + 36));
  if (v22)
  {
    v23 = *(v9 + 16);
    v23(v15, a1, v8);
    v23(v12, a1, v8);
    v24 = v22;
    v25 = v22;
    v26 = sub_1D1E6707C();
    v27 = sub_1D1E6833C();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v63 = v28;
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v71 = v68;
      *v28 = 136315650;
      v66 = v27;
      v64 = *(a6 + 128);
      v65 = v26;
      v64(&v70, v69, a6);
      v29 = sub_1D1E6789C();
      v31 = v30;
      v32 = *(v9 + 8);
      v32(v15, v8);
      v33 = sub_1D1B1312C(v29, v31, &v71);

      v35 = v63;
      v34 = v64;
      *(v63 + 1) = v33;
      *(v35 + 6) = 2080;
      v34(&v70, v69, a6);
      v36 = sub_1D1D8227C();
      v38 = v37;
      v32(v12, v8);
      v39 = sub_1D1B1312C(v36, v38, &v71);

      *(v35 + 14) = v39;
      *(v35 + 11) = 2114;
      v40 = v22;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 3) = v41;
      v42 = v67;
      v67->isa = v41;
      v43 = v65;
      _os_log_impl(&dword_1D16EC000, v65, v66, "\t❌ Failed to read characteristic: %s/%s with error: %{public}@", v35, 0x20u);
      sub_1D1741A30(v42, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v42, -1, -1);
      v44 = v68;
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v44, -1, -1);
      MEMORY[0x1D3893640](v35, -1, -1);
    }

    else
    {

      v60 = *(v9 + 8);
      v60(v12, v8);
      v60(v15, v8);
    }
  }

  else
  {
    v45 = *(v9 + 16);
    v45(&v62 - v20, a1, v8);
    v45(v18, a1, v8);
    v46 = sub_1D1E6707C();
    v47 = sub_1D1E6832C();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v71 = v68;
      *v48 = 136315394;
      v65 = *(a6 + 128);
      v67 = v46;
      v66 = v47;
      (v65)(&v70, v69, a6);
      v49 = sub_1D1E6789C();
      v51 = v50;
      v52 = *(v9 + 8);
      v52(v21, v8);
      v53 = sub_1D1B1312C(v49, v51, &v71);

      *(v48 + 4) = v53;
      *(v48 + 12) = 2080;
      (v65)(&v70, v69, a6);
      v54 = sub_1D1D8227C();
      v56 = v55;
      v52(v18, v8);
      v57 = sub_1D1B1312C(v54, v56, &v71);

      *(v48 + 14) = v57;
      v58 = v67;
      _os_log_impl(&dword_1D16EC000, v67, v66, "\t✅ Successfully read characteristic: %s/%s", v48, 0x16u);
      v59 = v68;
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v59, -1, -1);
      MEMORY[0x1D3893640](v48, -1, -1);
    }

    else
    {

      v61 = *(v9 + 8);
      v61(v18, v8);
      v61(v21, v8);
    }
  }
}

uint64_t sub_1D1B0A48C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for BatchCharacteristicRequest.Response(255, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  sub_1D1E67D1C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  sub_1D1E680BC();
  return sub_1D1E680AC();
}

uint64_t sub_1D1B0A604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 112) = v16;
  *(v8 + 120) = v17;
  *(v8 + 80) = v14;
  *(v8 + 96) = v15;
  *(v8 + 48) = v12;
  *(v8 + 64) = v13;
  *(v8 + 32) = a5;
  *(v8 + 40) = a8;
  *(v8 + 152) = a7;
  *(v8 + 24) = a4;
  v9 = sub_1D1E66A7C();
  *(v8 + 128) = v9;
  *(v8 + 136) = *(v9 - 8);
  *(v8 + 144) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B0A6E8, 0, 0);
}

uint64_t sub_1D1B0A6E8(uint64_t a1)
{
  v26 = v1;
  v2 = sub_1D1E66FFC();
  v3 = sub_1D1E683FC();
  result = sub_1D1E6855C();
  if (result)
  {
    v5 = *(v1 + 32);
    if ((*(v1 + 152) & 1) == 0)
    {
      if (v5)
      {
LABEL_9:
        v6 = swift_slowAlloc();
        *v6 = 0;
        v7 = sub_1D1E66FBC();
        _os_signpost_emit_with_name_impl(&dword_1D16EC000, v2, v3, v7, v5, "Starting HomeKit batch operation", v6, 2u);
        MEMORY[0x1D3893640](v6, -1, -1);
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v1 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_10:

  (*(*(v1 + 136) + 16))(*(v1 + 144), *(v1 + 56), *(v1 + 128));
  v8 = sub_1D1E6707C();
  v9 = sub_1D1E6831C();
  v10 = os_log_type_enabled(v8, v9);
  v12 = *(v1 + 136);
  v11 = *(v1 + 144);
  v13 = *(v1 + 128);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v25[0] = v15;
    *v14 = 136446210;
    sub_1D1B0C084(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v12 + 8))(v11, v13);
    v19 = sub_1D1B1312C(v16, v18, v25);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_1D16EC000, v8, v9, "Starting HomeKit batch operation (ID: %{public}s)", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1D3893640](v15, -1, -1);
    MEMORY[0x1D3893640](v14, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v1 + 112);
  v21 = *(v1 + 120);
  v24 = *(v1 + 72);
  v22 = *(v1 + 96);
  v25[0] = *(v1 + 80);
  v25[1] = v22;
  (*(v21 + 96))(&v24, v25, v20);

  v23 = *(v1 + 8);

  return v23();
}

uint64_t sub_1D1B0A9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v14 + 16))(v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16[0] = a3;
  v16[1] = a4;
  v16[2] = a5;
  v17 = a6;
  sub_1D17418FC(a3, a4, a5, a6);
  sub_1D1E6769C();
  return sub_1D1E676BC();
}

uint64_t sub_1D1B0AAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  *v7 = v4;
  v7[1] = sub_1D17C4BFC;
  v10 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](a1, a4, v8, v9, v10);
}

uint64_t sub_1D1B0ABE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1B0AC54(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 64) = a6;
  *(v6 + 32) = a2;
  *(v6 + 16) = a1;
  *(v6 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D1B0AC7C, 0, 0);
}

uint64_t sub_1D1B0AC7C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  *(v5 + 32) = v1;
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_1D1B0AD98;
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DD58](v7, v4, v4, 0, 0, &unk_1D1E97A80, v5, v4);
}

uint64_t sub_1D1B0AD98()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1A0477C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

unint64_t sub_1D1B0AED8()
{
  result = qword_1EC64AAB0;
  if (!qword_1EC64AAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64AAB0);
  }

  return result;
}

unint64_t sub_1D1B0AF30()
{
  result = qword_1EC64AAB8;
  if (!qword_1EC64AAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64AAB8);
  }

  return result;
}

unint64_t sub_1D1B0AF88()
{
  result = qword_1EC64AAC0;
  if (!qword_1EC64AAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64AAC0);
  }

  return result;
}

unint64_t sub_1D1B0AFE0()
{
  result = qword_1EC64AAC8[0];
  if (!qword_1EC64AAC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC64AAC8);
  }

  return result;
}

uint64_t sub_1D1B0B0CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5)
{
  *(v5 + 88) = a4;
  *(v5 + 40) = a5;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648E58, &qword_1D1E91248);
  *(v5 + 48) = swift_task_alloc();
  *(v5 + 56) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  *(v5 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B0B1B8, 0, 0);
}

uint64_t sub_1D1B0B1B8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 88);
  v3 = *(v0 + 40);
  v4 = *(v0 + 32);
  v5 = sub_1D1E67E7C();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;

  sub_1D1A01DEC(v1, &unk_1D1E97A98, v7);
  sub_1D1741A30(v1, &unk_1EC6442C0, &qword_1D1E741A0);
  v6(v1, 1, 1, v5);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = v3;
  *(v8 + 40) = v4;
  *(v8 + 48) = v2;

  sub_1D1A01DEC(v1, &unk_1D1E97AA8, v8);
  sub_1D1741A30(v1, &unk_1EC6442C0, &qword_1D1E741A0);
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC64AB50, &qword_1D1E97AB0);
  *v9 = v0;
  v9[1] = sub_1D1B0B3CC;
  v11 = *(v0 + 56);

  return MEMORY[0x1EEE6DAC8](v11, 0, 0, v10);
}

uint64_t sub_1D1B0B3CC()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1D1B0B638;
  }

  else
  {
    v2 = sub_1D1B0B4E0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1B0B4E0()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  sub_1D1E67FFC();
  sub_1D1741C08(v2, v1, &qword_1EC648E58, &qword_1D1E91248);
  result = (*(*(v3 - 8) + 48))(v1, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[6];
    v6 = v0[2];
    sub_1D1741A30(v0[7], &qword_1EC648E58, &qword_1D1E91248);
    sub_1D1B0ABE4(v5, v6);

    v7 = v0[1];

    return v7();
  }

  return result;
}

uint64_t sub_1D1B0B638()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1B0B6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  *v7 = v4;
  v7[1] = sub_1D17C4CF0;
  v10 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](a1, a4, v8, v9, v10);
}

uint64_t sub_1D1B0B798(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 88) = a6;
  *(v6 + 32) = a5;
  *(v6 + 24) = a2;
  *(v6 + 16) = a1;
  v7 = sub_1D1E68A4C();
  *(v6 + 40) = v7;
  *(v6 + 48) = *(v7 - 8);
  *(v6 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B0B864, 0, 0);
}

uint64_t sub_1D1B0B864()
{
  v1 = sub_1D1E693AC();
  v3 = v2;
  sub_1D1E6912C();
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_1D1B0B940;

  return sub_1D1A01910(v1, v3, 0, 0, 1);
}

uint64_t sub_1D1B0B940()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 72) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1D1B0BC6C;
  }

  else
  {
    v5 = sub_1D1B0BAB0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D1B0BAB0()
{
  v1 = *(v0 + 88);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  sub_1D1E67F5C();
  if (v1 == 1)
  {
    sub_1D1E67D8C();
    sub_1D1B0C084(&qword_1EC6486C8, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    swift_allocError();
    sub_1D1E6759C();
    swift_willThrow();

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v0 + 80) = v6;
    *v6 = v0;
    v6[1] = sub_1D1B0BCD0;
    v7 = *(v0 + 32);
    v8 = *(v0 + 16);
    v9 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v8, v7, v2, v3, v9);
  }
}

uint64_t sub_1D1B0BC6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1B0BCD0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D1B0BE3C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D17C4CF0;

  return sub_1D1B0B0CC(a1, a2, v6, v8, v7);
}

uint64_t sub_1D1B0BF04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D17C4CF0;

  return sub_1D1B0B6B0(a1, v4, v5, v6);
}

uint64_t sub_1D1B0BFB8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4CF0;

  return sub_1D1B0B798(a1, v6, v4, v5, v7, v8);
}

uint64_t sub_1D1B0C084(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D1B0C0CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1D1757A60(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_1D1B0C160(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = *(v2 + 24);
  v6 = *(sub_1D1E66A7C() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_1D1E6709C() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_1D1E6701C() - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = v13 + *(v12 + 64);
  return sub_1D1B08964(a1, (v2 + v7), (v2 + v10), v2 + v13, *(v2 + ((v14 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 16), *(v2 + ((v14 + 31) & 0xFFFFFFFFFFFFFFF8)), v4, v5);
}

uint64_t sub_1D1B0C2EC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(sub_1D1E6709C() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for BatchCharacteristicRequest.Response(255, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  sub_1D1E67D1C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  v11 = *(sub_1D1E680BC() - 8);
  v12 = v1 + ((v7 + *(v11 + 80)) & ~*(v11 + 80));

  return sub_1D1B09AB0(a1, v1 + v6, v12, v3, v4);
}

uint64_t sub_1D1B0C500(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for BatchCharacteristicRequest.Response(255, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  sub_1D1E67D1C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  v8 = *(sub_1D1E680BC() - 8);
  v9 = v1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1D1B0A48C(a1, v9, v3, v4);
}

uint64_t sub_1D1B0C6B0(uint64_t a1)
{
  v2 = *(sub_1D1E6701C() - 8);
  v15 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v3 = (*(v2 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_1D1E66FDC() - 8);
  v13 = (v3 + *(v4 + 80) + 17) & ~*(v4 + 80);
  sub_1D1E6709C();
  sub_1D1E66A7C();
  v11 = *(v1 + 24);
  v12 = *(v1 + 16);
  v5 = v1 + v3;
  v6 = *(v1 + v3);
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v9 = swift_task_alloc();
  *(v14 + 16) = v9;
  *v9 = v14;
  v9[1] = sub_1D17C4BFC;

  return sub_1D1B0A604(a1, v12, v11, v1 + v15, v6, v7, v8, v1 + v13);
}

uint64_t sub_1D1B0C97C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_1D1E669FC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_1D1741A30(a1, &qword_1EC642570, &qword_1D1E6C6A0);
    sub_1D174E818(v7);
    v12 = sub_1D1E66A7C();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_1D1741A30(v7, &qword_1EC642570, &qword_1D1E6C6A0);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1D1752780(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_1D1E66A7C();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1D1B0CBA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643F88, &unk_1D1E97C60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644610, &qword_1D1E6E9B0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_1D1741A30(a1, &qword_1EC643F88, &unk_1D1E97C60);
    v13 = sub_1D17420B0(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D1734858();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_1D174F3D0(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1D1741A30(v8, &qword_1EC643F88, &unk_1D1E97C60);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_1D17529C4(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_1D1B0CE00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_1D16EEE38(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_1D1752B38(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_1D1741A30(a1, &qword_1EC645D58, &unk_1D1E7E530);
    v7 = sub_1D171D140(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1D1734AC8();
        v11 = v13;
      }

      sub_1D16EEE38((*(v11 + 56) + 32 * v9), v14);
      sub_1D1757DE8();
      *v3 = v11;
    }

    else
    {
      memset(v14, 0, sizeof(v14));
    }

    return sub_1D1741A30(v14, &qword_1EC645D58, &unk_1D1E7E530);
  }

  return result;
}

uint64_t sub_1D1B0CF04(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for StaticAccessory(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_1D1741A30(a1, &qword_1EC6436C8, &unk_1D1E97C40);
    sub_1D174EA20(v7);
    v12 = sub_1D1E66A7C();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_1D1741A30(v7, &qword_1EC6436C8, &unk_1D1E97C40);
  }

  else
  {
    sub_1D1B13984(a1, v10, type metadata accessor for StaticAccessory);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1D1753298(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_1D1E66A7C();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1D1B0D124(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for StaticService(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_1D1741A30(a1, &qword_1EC6436F0, &qword_1D1E99BC0);
    sub_1D174E9CC(v7);
    v12 = sub_1D1E66A7C();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_1D1741A30(v7, &qword_1EC6436F0, &qword_1D1E99BC0);
  }

  else
  {
    sub_1D1B13984(a1, v10, type metadata accessor for StaticService);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1D1752D1C(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_1D1E66A7C();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1D1B0D344(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for StateSnapshot(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_1D1741A30(a1, &unk_1EC649E30, &unk_1D1E91250);
    sub_1D174EC34(v7);
    v12 = sub_1D1E66A7C();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_1D1741A30(v7, &unk_1EC649E30, &unk_1D1E91250);
  }

  else
  {
    sub_1D1B13984(a1, v10, type metadata accessor for StateSnapshot);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1D1753764(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_1D1E66A7C();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1D1B0D564(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1D1753AF4(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_1D1E66A7C();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_1D1742188();
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_1D1737C44();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_1D1E66A7C();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_1D1757DE0();
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_1D1E66A7C();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_1D1B0D724(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1D1753B34(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_1D1E66A7C();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_1D1742188();
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_1D1737C58();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_1D1E66A7C();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_1D1757DE0();
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_1D1E66A7C();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_1D1B0D938(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C58, &unk_1D1E77530);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for IconTextValueStringDataHolder(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_1D1741A30(a1, &qword_1EC644C58, &unk_1D1E77530);
    sub_1D174ED2C(a2, v7);
    sub_1D1757BF8(a2);
    return sub_1D1741A30(v7, &qword_1EC644C58, &unk_1D1E77530);
  }

  else
  {
    sub_1D1B13984(a1, v10, type metadata accessor for IconTextValueStringDataHolder);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_1D1754068(v10, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1D1757BF8(a2);
    *v2 = v15;
  }

  return result;
}

unint64_t sub_1D1B0DAF8(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 32) == 255)
  {
    sub_1D1741A30(a1, &qword_1EC648B70, &qword_1D1E90DF0);
    v8 = sub_1D171D4E0(a2);
    if (v9)
    {
      v10 = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v17 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D17392DC();
        v12 = v17;
      }

      v13 = *(v12 + 56) + 40 * v10;
      v14 = *(v13 + 32);
      v15 = *(v13 + 16);
      v18 = *v13;
      v19 = v15;
      v20 = v14;
      sub_1D175076C(v10, v12);
      *v3 = v12;
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v20 = -1;
    }

    return sub_1D1741A30(&v18, &qword_1EC648B70, &qword_1D1E90DF0);
  }

  else
  {
    v5 = a1[1];
    v18 = *a1;
    v19 = v5;
    v20 = *(a1 + 32);
    v6 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    result = sub_1D1754888(&v18, a2, v6);
    *v2 = v16;
  }

  return result;
}

_OWORD *sub_1D1B0DC1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_1D16EEE38(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_1D17549AC(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_1D1741A30(a1, &qword_1EC645D58, &unk_1D1E7E530);
    v7 = sub_1D171D4E0(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1D173946C();
        v11 = v13;
      }

      sub_1D16EEE38((*(v11 + 56) + 32 * v9), v14);
      sub_1D1750920(v9, v11);
      *v3 = v11;
    }

    else
    {
      memset(v14, 0, sizeof(v14));
    }

    return sub_1D1741A30(v14, &qword_1EC645D58, &unk_1D1E7E530);
  }

  return result;
}

uint64_t sub_1D1B0DD20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646AF8, &unk_1D1E97C50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for StaticCluster(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_1D1741A30(a1, &qword_1EC646AF8, &unk_1D1E97C50);
    v13 = sub_1D171D278(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D1739780();
        v17 = v21;
      }

      sub_1D1B13984(*(v17 + 56) + *(v10 + 72) * v15, v8, type metadata accessor for StaticCluster);
      sub_1D1750AB4(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1D1741A30(v8, &qword_1EC646AF8, &unk_1D1E97C50);
  }

  else
  {
    sub_1D1B13984(a1, v12, type metadata accessor for StaticCluster);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_1D1754AD8(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_1D1B0DF74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for StaticEndpoint(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_1D1741A30(a1, &qword_1EC644780, &qword_1D1E91AA0);
    v13 = sub_1D171D15C(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D17399B4();
        v17 = v21;
      }

      sub_1D1B13984(*(v17 + 56) + *(v10 + 72) * v15, v8, type metadata accessor for StaticEndpoint);
      sub_1D1750C8C(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1D1741A30(v8, &qword_1EC644780, &qword_1D1E91AA0);
  }

  else
  {
    sub_1D1B13984(a1, v12, type metadata accessor for StaticEndpoint);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_1D1754C2C(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_1D1B0E1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_1D1754F24(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    v9 = sub_1D1E66A7C();
    result = (*(*(v9 - 8) + 8))(a3, v9);
    *v3 = v22;
  }

  else
  {
    v11 = sub_1D1742188();
    if (v12)
    {
      v13 = v11;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v3;
      v23 = *v4;
      if (!v14)
      {
        sub_1D1739E50();
        v15 = v23;
      }

      v16 = *(v15 + 48);
      v17 = sub_1D1E66A7C();
      v18 = *(v17 - 8);
      v19 = *(v18 + 8);
      v19(v16 + *(v18 + 72) * v13, v17);
      swift_unknownObjectRelease();
      sub_1D1750F5C(v13, v15);
      result = (v19)(a3, v17);
      *v4 = v15;
    }

    else
    {
      v20 = sub_1D1E66A7C();
      v21 = *(*(v20 - 8) + 8);

      return v21(a3, v20);
    }
  }

  return result;
}

uint64_t sub_1D1B0E394(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for StaticMatterDevice(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_1D1741A30(a1, &qword_1EC643650, &qword_1D1E71D40);
    v13 = sub_1D17420B0(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D173A0D0();
        v17 = v21;
      }

      sub_1D1B13984(*(v17 + 56) + *(v10 + 72) * v15, v8, type metadata accessor for StaticMatterDevice);
      sub_1D1751214(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1D1741A30(v8, &qword_1EC643650, &qword_1D1E71D40);
  }

  else
  {
    sub_1D1B13984(a1, v12, type metadata accessor for StaticMatterDevice);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_1D1755100(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_1D1B0E5E8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for MatterStateSnapshot(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_1D1741A30(a1, &unk_1EC64F390, &qword_1D1E92B10);
    sub_1D174EFB8(v7);
    v12 = sub_1D1E66A7C();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_1D1741A30(v7, &unk_1EC64F390, &qword_1D1E92B10);
  }

  else
  {
    sub_1D1B13984(a1, v10, type metadata accessor for MatterStateSnapshot);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1D1755254(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_1D1E66A7C();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1D1B0E85C(uint64_t a1, uint64_t a2, uint64_t (*a3)(_OWORD *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t), void (*a5)(uint64_t, uint64_t), void (*a6)(void))
{
  v7 = v6;
  if (*(a1 + 24))
  {
    sub_1D16EEE38(a1, v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v6;
    result = a3(v22, a2, isUniquelyReferenced_nonNull_native);
    *v6 = v20;
  }

  else
  {
    sub_1D1741A30(a1, &qword_1EC649700, &qword_1D1E6E910);
    v15 = a4(a2);
    if (v16)
    {
      v17 = v15;
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v6;
      v21 = *v7;
      if (!v18)
      {
        a6();
        v19 = v21;
      }

      sub_1D16EEE38((*(v19 + 56) + 32 * v17), v22);
      a5(v17, v19);
      *v7 = v19;
    }

    else
    {
      memset(v22, 0, sizeof(v22));
    }

    return sub_1D1741A30(v22, &qword_1EC649700, &qword_1D1E6E910);
  }

  return result;
}

uint64_t sub_1D1B0E988(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646C40, &unk_1D1E825E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for ActionEndpoint(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_1D1741A30(a1, &qword_1EC646C40, &unk_1D1E825E0);
    v13 = sub_1D171D15C(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D173AA00();
        v17 = v21;
      }

      sub_1D1B13984(*(v17 + 56) + *(v10 + 72) * v15, v8, type metadata accessor for ActionEndpoint);
      sub_1D17515B4(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1D1741A30(v8, &qword_1EC646C40, &unk_1D1E825E0);
  }

  else
  {
    sub_1D1B13984(a1, v12, type metadata accessor for ActionEndpoint);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_1D1755554(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

unint64_t sub_1D1B0EBDC(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 32) == 255)
  {
    sub_1D1741A30(a1, &qword_1EC648B70, &qword_1D1E90DF0);
    v8 = sub_1D171D1A4(a2 & 0xFFFFFFFFFFLL);
    if (v9)
    {
      v10 = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v17 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D173AF4C();
        v12 = v17;
      }

      v13 = *(v12 + 56) + 40 * v10;
      v14 = *(v13 + 32);
      v15 = *(v13 + 16);
      v18 = *v13;
      v19 = v15;
      v20 = v14;
      sub_1D17518F4(v10, v12);
      *v3 = v12;
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v20 = -1;
    }

    return sub_1D1741A30(&v18, &qword_1EC648B70, &qword_1D1E90DF0);
  }

  else
  {
    v5 = a1[1];
    v18 = *a1;
    v19 = v5;
    v20 = *(a1 + 32);
    v6 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    result = sub_1D17557EC(&v18, a2 & 0xFFFFFFFFFFLL, v6);
    *v2 = v16;
  }

  return result;
}

uint64_t sub_1D1B0ED54(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649148, &qword_1D1E96490);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for HomeState(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_1D1741A30(a1, &qword_1EC649148, &qword_1D1E96490);
    sub_1D174F00C(v7);
    v12 = sub_1D1E66A7C();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_1D1741A30(v7, &qword_1EC649148, &qword_1D1E96490);
  }

  else
  {
    sub_1D1B13984(a1, v10, type metadata accessor for HomeState);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1D1755D44(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_1D1E66A7C();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1D1B0EF74(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6430E8, &unk_1D1E71440);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for StaticLightProfile(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_1D1741A30(a1, &qword_1EC6430E8, &unk_1D1E71440);
    sub_1D174F060(v7);
    v12 = sub_1D1E66A7C();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_1D1741A30(v7, &qword_1EC6430E8, &unk_1D1E71440);
  }

  else
  {
    sub_1D1B13984(a1, v10, type metadata accessor for StaticLightProfile);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1D17568C4(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_1D1E66A7C();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1D1B0F194(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for StaticCharacteristic(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_1D1741A30(a1, &qword_1EC643630, &qword_1D1E71D10);
    v13 = sub_1D171D140(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D173DAEC();
        v17 = v21;
      }

      sub_1D1B13984(*(v17 + 56) + *(v10 + 72) * v15, v8, type metadata accessor for StaticCharacteristic);
      sub_1D1751FA0(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1D1741A30(v8, &qword_1EC643630, &qword_1D1E71D10);
  }

  else
  {
    sub_1D1B13984(a1, v12, type metadata accessor for StaticCharacteristic);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_1D1756A98(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_1D1B0F3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64ABD8, &unk_1D1E97C30);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for RoomType(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_1D1741A30(a1, &qword_1EC64ABD8, &unk_1D1E97C30);
    sub_1D174F0B4(a2, a3, v9);

    return sub_1D1741A30(v9, &qword_1EC64ABD8, &unk_1D1E97C30);
  }

  else
  {
    sub_1D1B13984(a1, v12, type metadata accessor for RoomType);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1D1756BEC(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_1D1B0F5BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1D1757410(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_1D1E66A7C();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_1D1742188();
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_1D173EFA0();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_1D1E66A7C();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_1D1757DE0();
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_1D1E66A7C();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t RecommendationsModerator2.currentUserActionPredictions(manager:for:)(uint64_t a1, uint64_t a2)
{
  v3[22] = a2;
  v3[23] = v2;
  v3[21] = a1;
  v3[24] = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v3[25] = swift_task_alloc();
  v4 = sub_1D1E66A7C();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B0F8B8, v2, 0);
}

uint64_t sub_1D1B0F8B8()
{
  v38 = v0;
  v1 = v0[24];
  swift_beginAccess();
  v0[31] = *(v1 + 88);
  v0[32] = *(v1 + 80);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[33] = AssociatedTypeWitness;
  v35 = AssociatedTypeWitness;
  v0[34] = sub_1D1E67D1C();
  v0[35] = sub_1D174A5FC(qword_1EE07DD78, MEMORY[0x1E69695B8]);

  sub_1D1E676AC();

  v4 = v0[17];
  if (v4)
  {
    if (qword_1EE07A0C8 != -1)
    {
      swift_once();
    }

    v5 = v0[30];
    v6 = v0[26];
    v7 = v0[27];
    v8 = v0[22];
    v9 = sub_1D1E6709C();
    __swift_project_value_buffer(v9, qword_1EE07A0D0);
    (*(v7 + 16))(v5, v8, v6);
    v10 = v4;
    swift_bridgeObjectRetain_n();
    swift_unknownObjectRetain();

    v11 = sub_1D1E6707C();
    v12 = sub_1D1E6835C();

    swift_unknownObjectRelease();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[30];
    v16 = v0[26];
    v15 = v0[27];
    if (v13)
    {
      v32 = v0[21];
      v17 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v37 = v34;
      *v17 = 136315394;
      v33 = v12;
      swift_getAssociatedTypeWitness();
      v18 = swift_getAssociatedConformanceWitness();
      v19 = sub_1D1B136D4(v32, v18, v14);
      v21 = v20;
      (*(v15 + 8))(v14, v16);
      v22 = sub_1D1B1312C(v19, v21, &v37);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2080;
      v23 = MEMORY[0x1D3891260](v10, v35);
      v25 = v24;
      swift_bridgeObjectRelease_n();
      v26 = sub_1D1B1312C(v23, v25, &v37);

      *(v17 + 14) = v26;
      _os_log_impl(&dword_1D16EC000, v11, v33, "%s existing predictions: %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v34, -1, -1);
      MEMORY[0x1D3893640](v17, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();

      (*(v15 + 8))(v14, v16);
    }

    goto LABEL_13;
  }

  swift_beginAccess();

  v27 = swift_checkMetadataState();
  sub_1D1E676AC();

  if (!v0[18] || (swift_unknownObjectRelease(), swift_beginAccess(), , sub_1D1E676AC(), , v28 = v0[19], (v0[36] = v28) == 0))
  {
    v10 = sub_1D1E67C7C();
LABEL_13:

    v31 = v0[1];

    return v31(v10);
  }

  v36 = (*(AssociatedConformanceWitness + 56) + **(AssociatedConformanceWitness + 56));
  v29 = swift_task_alloc();
  v0[37] = v29;
  *v29 = v0;
  v29[1] = sub_1D1B0FEC0;

  return v36(v27, AssociatedConformanceWitness);
}

uint64_t sub_1D1B0FEC0(uint64_t a1)
{
  v2 = *(*v1 + 184);
  *(*v1 + 304) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1B0FFD8, v2, 0);
}

uint64_t sub_1D1B0FFD8()
{
  v36 = v0;
  v1 = v0[29];
  v2 = v0[25];
  v3 = *(v0[27] + 16);
  v3(v1, v0[22], v0[26]);
  sub_1D1E669EC();
  v4 = sub_1D1E669FC();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  swift_beginAccess();
  sub_1D1B0C97C(v2, v1);
  swift_endAccess();
  if (qword_1EE07A0C8 != -1)
  {
    swift_once();
  }

  v5 = v0[28];
  v6 = v0[26];
  v7 = v0[22];
  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EE07A0D0);
  v3(v5, v7, v6);
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain();

  v9 = sub_1D1E6707C();
  v10 = sub_1D1E6835C();

  swift_unknownObjectRelease();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[38];
  if (v11)
  {
    v13 = v0[27];
    v14 = v0[28];
    v32 = v0[26];
    v33 = v0[33];
    v31 = v0[21];
    v15 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v15 = 136315394;
    v35 = v34;
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v17 = sub_1D1B136D4(v31, AssociatedConformanceWitness, v14);
    v19 = v18;
    (*(v13 + 8))(v14, v32);
    v20 = sub_1D1B1312C(v17, v19, &v35);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    v21 = MEMORY[0x1D3891260](v12, v33);
    v23 = v22;
    swift_bridgeObjectRelease_n();
    v24 = sub_1D1B1312C(v21, v23, &v35);

    *(v15 + 14) = v24;
    _os_log_impl(&dword_1D16EC000, v9, v10, "%s freshly fetched predictions: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v34, -1, -1);
    MEMORY[0x1D3893640](v15, -1, -1);
  }

  else
  {
    v26 = v0[27];
    v25 = v0[28];
    v27 = v0[26];
    swift_bridgeObjectRelease_n();

    (*(v26 + 8))(v25, v27);
  }

  v28 = v0[38];
  v3(v0[29], v0[22], v0[26]);
  v0[20] = v28;
  swift_beginAccess();
  sub_1D1E6769C();

  sub_1D1E676BC();
  swift_endAccess();
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v29 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1B10438, v29, 0);
}

uint64_t sub_1D1B10438()
{
  v1 = v0[23];
  v0[39] = swift_unknownObjectWeakLoadStrong();
  v0[40] = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1D1B104B0, v1, 0);
}

uint64_t sub_1D1B104B0()
{
  if (v0[39])
  {
    v1 = v0[40];
    v2 = v0[38];
    ObjectType = swift_getObjectType();
    (*(v1 + 16))(v2, ObjectType, v1);
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  v4 = v0[38];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1D1B10594(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  v2[34] = *v1;
  v3 = sub_1D1E66A7C();
  v2[35] = v3;
  v2[36] = *(v3 - 8);
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B106A0, v1, 0);
}

uint64_t sub_1D1B106A0()
{
  v82 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  swift_beginAccess();
  v3 = *(v1 + 88);
  *(v0 + 328) = *(v3 + 16);
  v4 = *(v1 + 80);
  *(v0 + 336) = v4;
  *(v0 + 344) = swift_getAssociatedTypeWitness();
  v5 = sub_1D174A5FC(qword_1EE07DD78, MEMORY[0x1E69695B8]);
  *(v0 + 352) = v5;
  v77 = v5;
  nullsub_2();
  *(v0 + 160) = v6;
  v78 = v2;
  v7 = sub_1D1E6763C();

  WitnessTable = swift_getWitnessTable();
  v67 = sub_1D18CE91C(sub_1D18CFDFC, 0, v7, v2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v9);

  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = *(AssociatedConformanceWitness + 48);
  v74 = v11;
  v12 = swift_checkMetadataState();
  *(v0 + 168) = v11(v12, AssociatedConformanceWitness);
  v13 = swift_task_alloc();
  *(v13 + 16) = v4;
  *(v13 + 24) = v3;
  swift_getAssociatedTypeWitness();
  v76 = sub_1D1E67D1C();
  v14 = swift_getWitnessTable();
  v71 = sub_1D18CE91C(sub_1D1B13948, v13, v76, v78, MEMORY[0x1E69E73E0], v14, MEMORY[0x1E69E7410], v15);
  *(v0 + 360) = v71;

  *(v0 + 184) = v74(v12, AssociatedConformanceWitness);
  swift_getTupleTypeMetadata2();
  v16 = sub_1D1E67C7C();
  v17 = sub_1D1AC25F8(v16, v78, v4, v77);

  *(v0 + 192) = v17;
  v18 = swift_task_alloc();
  *(v18 + 16) = v4;
  *(v18 + 24) = v3;
  sub_1D1E6769C();
  swift_getWitnessTable();
  sub_1D1E67A9C();

  *(v0 + 368) = *(v0 + 176);
  v19 = *(v67 + 16);
  if (v19)
  {
    v20 = 0;
    v21 = *(v0 + 288);
    v22 = *(v21 + 16);
    v21 += 16;
    v79 = v22;
    v23 = (*(v21 + 64) + 32) & ~*(v21 + 64);
    v75 = v67 + v23;
    v24 = *(v21 + 56);
    v25 = v71;
    v73 = v71 + v23;
    v72 = (v21 - 8);
    v70 = *(v67 + 16);
    do
    {
      v80 = v20 + 1;
      v79(*(v0 + 320), v75 + v20 * v24, *(v0 + 280));
      v27 = *(v25 + 16) + 1;
      v28 = v73;
      while (1)
      {
        v29 = *(v0 + 320);
        if (!--v27)
        {
          break;
        }

        sub_1D174A5FC(&qword_1EE07D170, MEMORY[0x1E69695C8]);
        v28 += v24;
        if (sub_1D1E6775C())
        {
          (*v72)(*(v0 + 320), *(v0 + 280));
          goto LABEL_5;
        }
      }

      v30 = *(v0 + 312);
      v31 = *(v0 + 280);
      v79(v30, *(v0 + 320), v31);
      *(v0 + 240) = 0;
      swift_beginAccess();
      sub_1D1E6769C();
      sub_1D1E676BC();
      swift_endAccess();
      v79(v30, v29, v31);
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedTypeWitness();
      *(v0 + 248) = sub_1D1E67C7C();
      swift_beginAccess();
      sub_1D1E67D1C();
      sub_1D1E6769C();
      sub_1D1E676BC();
      swift_endAccess();
      if (qword_1EE07A0C8 != -1)
      {
        swift_once();
      }

      v32 = *(v0 + 320);
      v33 = *(v0 + 304);
      v34 = *(v0 + 280);
      v35 = sub_1D1E6709C();
      __swift_project_value_buffer(v35, qword_1EE07A0D0);
      v79(v33, v32, v34);
      v36 = sub_1D1E6707C();
      v37 = sub_1D1E6835C();
      v38 = os_log_type_enabled(v36, v37);
      v39 = *(v0 + 320);
      v40 = *(v0 + 304);
      v41 = *(v0 + 280);
      if (v38)
      {
        v42 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v81[0] = v68;
        *v42 = 136315138;
        sub_1D174A5FC(&qword_1EE07B250, MEMORY[0x1E69695E0]);
        v43 = sub_1D1E68FAC();
        v69 = v39;
        v45 = v44;
        v46 = *v72;
        (*v72)(v40, v41);
        v47 = sub_1D1B1312C(v43, v45, v81);

        *(v42 + 4) = v47;
        _os_log_impl(&dword_1D16EC000, v36, v37, "updateUserActionPredictionControllers(...) removing %s, unsubscribing from recommendations and clearing delegate.", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v68);
        MEMORY[0x1D3893640](v68, -1, -1);
        MEMORY[0x1D3893640](v42, -1, -1);

        v46(v69, v41);
      }

      else
      {

        v26 = *v72;
        (*v72)(v40, v41);
        v26(v39, v41);
      }

      v25 = v71;
      v19 = v70;
LABEL_5:
      v20 = v80;
    }

    while (v80 != v19);
  }

  else
  {

    v25 = v71;
  }

  v48 = *(v25 + 16);
  *(v0 + 376) = v48;
  if (!v48)
  {
LABEL_23:

    v55 = *(v0 + 8);

    return v55();
  }

  v49 = 0;
  v50 = *(v0 + 288);
  *(v0 + 480) = *(v50 + 80);
  *(v0 + 384) = *(v50 + 72);
  *(v0 + 392) = *(v50 + 16);
  while (1)
  {
    *(v0 + 400) = 0;
    *(v0 + 408) = v49;
    (*(v0 + 392))(*(v0 + 296), *(v0 + 360) + ((*(v0 + 480) + 32) & ~*(v0 + 480)) + *(v0 + 384) * v49, *(v0 + 280));
    sub_1D1E676AC();
    v51 = *(v0 + 200);
    *(v0 + 416) = v51;
    if (v51)
    {
      break;
    }

    (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));
LABEL_19:
    v49 = *(v0 + 408) + 1;
    if (v49 == *(v0 + 376))
    {
      goto LABEL_23;
    }
  }

  swift_beginAccess();

  sub_1D1E676AC();

  if (*(v0 + 208))
  {
    v53 = *(v0 + 288);
    v52 = *(v0 + 296);
    v54 = *(v0 + 280);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v53 + 8))(v52, v54);
    goto LABEL_19;
  }

  v57 = *(v0 + 392);
  v58 = *(v0 + 312);
  v59 = *(v0 + 296);
  v60 = *(v0 + 280);
  v61 = (*(*(v0 + 328) + 320))(*(v0 + 336));
  *(v0 + 424) = v61;
  v57(v58, v59, v60);
  *(v0 + 216) = v61;
  swift_beginAccess();
  sub_1D1E6769C();
  swift_unknownObjectRetain();
  sub_1D1E676BC();
  swift_endAccess();
  if (v61)
  {
    v62 = qword_1EC642358;
    swift_unknownObjectRetain();
    if (v62 != -1)
    {
      swift_once();
    }

    v63 = qword_1EC64ABE8;

    return MEMORY[0x1EEE6DFA0](sub_1D1B112AC, v63, 0);
  }

  else
  {
    v64 = swift_task_alloc();
    *(v0 + 448) = v64;
    *v64 = v0;
    v64[1] = sub_1D1B11430;
    v65 = *(v0 + 296);
    v66 = *(v0 + 256);

    return RecommendationsModerator2.currentUserActionPredictions(manager:for:)(v66, v65);
  }
}

uint64_t sub_1D1B112AC()
{
  v1 = v0[33];
  v0[54] = swift_unknownObjectWeakLoadStrong();
  v0[55] = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1D1B11324, v1, 0);
}

uint64_t sub_1D1B11324()
{
  v1 = v0[54];
  if (v1)
  {
    v2 = *(v0[55] + 8);
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[43];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 40))(v1, v2, v3, AssociatedConformanceWitness);
  swift_unknownObjectRelease();
  v5 = swift_task_alloc();
  v0[56] = v5;
  *v5 = v0;
  v5[1] = sub_1D1B11430;
  v6 = v0[37];
  v7 = v0[32];

  return RecommendationsModerator2.currentUserActionPredictions(manager:for:)(v7, v6);
}

uint64_t sub_1D1B11430()
{
  v1 = *(*v0 + 264);

  return MEMORY[0x1EEE6DFA0](sub_1D1B1154C, v1, 0);
}

uint64_t sub_1D1B1154C()
{
  if (qword_1EE07AF78 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EE07AF80);
  v1 = byte_1EE07AF84;
  os_unfair_lock_unlock(&dword_1EE07AF80);
  if (v1 == 2 || (v1 & 1) == 0)
  {
    type metadata accessor for HomeState.Stream();
    swift_allocObject();
    v2 = HomeState.Stream.init()();
  }

  else
  {
    if (qword_1EC642308 != -1)
    {
      swift_once();
    }

    sub_1D1E693FC();
    v2 = *(v0 + 232);
    if (!v2)
    {
      if (qword_1EC642310 != -1)
      {
        swift_once();
      }

      os_unfair_lock_lock(&dword_1EC649BC0);
      if (off_1EC649BC8)
      {
        v3 = off_1EC649BC8;
      }

      else
      {
        type metadata accessor for HomeState.Stream();
        swift_allocObject();
        off_1EC649BC8 = HomeState.Stream.init()();
        v3 = off_1EC649BC8;
      }

      os_unfair_lock_unlock(&dword_1EC649BC0);
      v2 = v3;
    }
  }

  *(v0 + 456) = v2;
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v4 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1B11734, v4, 0);
}

uint64_t sub_1D1B11734()
{
  v1 = v0[57];
  swift_beginAccess();
  v2 = *(v1 + 64);
  v3 = v0[50];
  if (v2)
  {
    v4 = [v2 homes];
    sub_1D1821898();
    sub_1D1E67C1C();

    v0[28] = sub_1D1749970(v5);
    sub_1D1747DDC(v0 + 28);
    if (v3)
    {
    }

    v7 = v0[28];
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = v0[37];
  v9 = v0[33];
  v10 = swift_task_alloc();
  *(v10 + 16) = v8;
  v0[58] = sub_1D174A6C4(sub_1D1749C64, v10, v7);
  v0[59] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D1B118C8, v9, 0);
}

uint64_t sub_1D1B118C8()
{
  v38 = v0;
  v1 = *(v0 + 464);
  if (v1)
  {
    if (qword_1EE07A0C8 != -1)
    {
      swift_once();
    }

    v2 = sub_1D1E6709C();
    __swift_project_value_buffer(v2, qword_1EE07A0D0);
    v3 = v1;
    v4 = sub_1D1E6707C();
    v5 = sub_1D1E6835C();

    v6 = os_log_type_enabled(v4, v5);
    v8 = *(v0 + 288);
    v7 = *(v0 + 296);
    v9 = *(v0 + 280);
    if (v6)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v37 = v11;
      *v10 = 136315138;
      v36 = v7;
      v12 = [v3 name];
      v35 = v9;
      v13 = sub_1D1E6781C();
      v15 = v14;

      v16 = sub_1D1B1312C(v13, v15, &v37);

      *(v10 + 4) = v16;
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1D3893640](v11, -1, -1);
      MEMORY[0x1D3893640](v10, -1, -1);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      (*(v8 + 8))(v36, v35);
    }

    else
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      (*(v8 + 8))(v7, v9);
    }
  }

  else
  {
    (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  v17 = *(v0 + 408) + 1;
  if (v17 == *(v0 + 376))
  {
LABEL_9:

    v18 = *(v0 + 8);

    return v18();
  }

  v20 = *(v0 + 472);
  while (1)
  {
    *(v0 + 400) = v20;
    *(v0 + 408) = v17;
    (*(v0 + 392))(*(v0 + 296), *(v0 + 360) + ((*(v0 + 480) + 32) & ~*(v0 + 480)) + *(v0 + 384) * v17, *(v0 + 280));
    sub_1D1E676AC();
    v21 = *(v0 + 200);
    *(v0 + 416) = v21;
    if (v21)
    {
      break;
    }

    (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));
LABEL_14:
    v17 = *(v0 + 408) + 1;
    if (v17 == *(v0 + 376))
    {
      goto LABEL_9;
    }
  }

  swift_beginAccess();

  sub_1D1E676AC();

  if (*(v0 + 208))
  {
    v23 = *(v0 + 288);
    v22 = *(v0 + 296);
    v24 = *(v0 + 280);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v23 + 8))(v22, v24);
    goto LABEL_14;
  }

  v25 = *(v0 + 392);
  v26 = *(v0 + 312);
  v27 = *(v0 + 296);
  v28 = *(v0 + 280);
  v29 = (*(*(v0 + 328) + 320))(*(v0 + 336));
  *(v0 + 424) = v29;
  v25(v26, v27, v28);
  *(v0 + 216) = v29;
  swift_beginAccess();
  sub_1D1E6769C();
  swift_unknownObjectRetain();
  sub_1D1E676BC();
  swift_endAccess();
  if (v29)
  {
    v30 = qword_1EC642358;
    swift_unknownObjectRetain();
    if (v30 != -1)
    {
      swift_once();
    }

    v31 = qword_1EC64ABE8;

    return MEMORY[0x1EEE6DFA0](sub_1D1B112AC, v31, 0);
  }

  else
  {
    v32 = swift_task_alloc();
    *(v0 + 448) = v32;
    *v32 = v0;
    v32[1] = sub_1D1B11430;
    v33 = *(v0 + 296);
    v34 = *(v0 + 256);

    return RecommendationsModerator2.currentUserActionPredictions(manager:for:)(v34, v33);
  }
}

uint64_t RecommendationsModerator2.updateUserActionPredictions(manager:currentHomeID:for:predictions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v6 = *v4;
  v5[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v5[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v7 = sub_1D1E66A7C();
  v5[19] = v7;
  v8 = *(v6 + 88);
  v5[20] = v8;
  v5[21] = *(v8 + 16);
  v5[22] = *(v6 + 80);
  v5[23] = swift_getAssociatedTypeWitness();
  v5[24] = swift_getTupleTypeMetadata2();
  v9 = sub_1D1E685AC();
  v5[25] = v9;
  v5[26] = *(v9 - 8);
  v5[27] = swift_task_alloc();
  v5[28] = *(v7 - 8);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B120A0, v4, 0);
}

uint64_t sub_1D1B120A0()
{
  v71 = v0;
  v1 = v0 + 27;
  v66 = v0[27];
  v68 = v0[24];
  v2 = v0[22];
  v3 = v0[20];
  v4 = v0[14];
  v5 = v0[12];
  swift_beginAccess();
  v0[8] = *(v4 + 136);
  v6 = swift_task_alloc();
  v6[2] = v2;
  v6[3] = v3;
  v6[4] = v5;
  v7 = swift_task_alloc();
  v7[2] = v2;
  v7[3] = v3;
  v7[4] = sub_1D1B13818;
  v7[5] = v6;
  sub_1D174A5FC(qword_1EE07DD78, MEMORY[0x1E69695B8]);
  sub_1D1E6769C();

  swift_getWitnessTable();
  sub_1D1E67A7C();

  if ((*(*(v68 - 8) + 48))(v66, 1) == 1)
  {
    v8 = v0 + 25;
    v9 = (v0[26] + 8);
LABEL_15:
    (*v9)(*v1, *v8);

    v53 = v0[1];

    return v53();
  }

  v11 = v0[31];
  v10 = v0[32];
  v12 = v0[30];
  v14 = v0[27];
  v13 = v0[28];
  v15 = v0[19];
  v16 = v0[13];
  swift_unknownObjectRelease();
  v17 = *(v13 + 32);
  v17(v11, v14, v15);
  v63 = v17;
  v17(v10, v11, v15);
  v18 = *(v13 + 16);
  v18(v12, v10, v15);
  v0[9] = v16;
  swift_beginAccess();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1D1E67D1C();
  sub_1D1E6769C();

  sub_1D1E676BC();
  swift_endAccess();
  if (qword_1EE07A0C8 != -1)
  {
    swift_once();
  }

  v19 = v0[32];
  v20 = v0[29];
  v21 = v0[19];
  v22 = sub_1D1E6709C();
  __swift_project_value_buffer(v22, qword_1EE07A0D0);
  v69 = v18;
  v18(v20, v19, v21);
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain();

  v23 = sub_1D1E6707C();
  v24 = sub_1D1E6835C();

  swift_unknownObjectRelease();
  v25 = os_log_type_enabled(v23, v24);
  v27 = v0[28];
  v26 = v0[29];
  if (v25)
  {
    v64 = v0[19];
    v65 = v0[13];
    v62 = v0[10];
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v70[0] = v29;
    *v28 = 136315650;
    *(v28 + 4) = sub_1D1B1312C(0xD000000000000043, 0x80000001D1EC4930, v70);
    *(v28 + 12) = 2080;
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v31 = sub_1D1B136D4(v62, AssociatedConformanceWitness, v26);
    v33 = v32;
    v34 = *(v27 + 8);
    v34(v26, v64);
    v35 = sub_1D1B1312C(v31, v33, v70);

    *(v28 + 14) = v35;
    *(v28 + 22) = 2080;
    v36 = MEMORY[0x1D3891260](v65, AssociatedTypeWitness);
    v38 = v37;
    swift_bridgeObjectRelease_n();
    v39 = sub_1D1B1312C(v36, v38, v70);

    *(v28 + 24) = v39;
    _os_log_impl(&dword_1D16EC000, v23, v24, "%s %s new predictions from DataModel+HomeKitDelegates.swift: %s", v28, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v29, -1, -1);
    MEMORY[0x1D3893640](v28, -1, -1);
  }

  else
  {
    v40 = v0[19];
    swift_bridgeObjectRelease_n();

    v34 = *(v27 + 8);
    v34(v26, v40);
  }

  v0[33] = v34;
  v41 = v0[28];
  v43 = v0[18];
  v42 = v0[19];
  v45 = v0[15];
  v44 = v0[16];
  v46 = v0[11];
  v69(v43, v0[32], v42);
  (*(v41 + 56))(v43, 0, 1, v42);
  v47 = *(v45 + 48);
  sub_1D17783E0(v46, v44);
  sub_1D17783E0(v43, v44 + v47);
  v48 = *(v41 + 48);
  v49 = v48(v44, 1, v42);
  v50 = v0[19];
  if (v49 != 1)
  {
    sub_1D17783E0(v0[16], v0[17]);
    if (v48(v44 + v47, 1, v50) != 1)
    {
      v55 = v0[30];
      v57 = v0[18];
      v56 = v0[19];
      v59 = v0[16];
      v58 = v0[17];
      v63(v55, v44 + v47, v56);
      sub_1D174A5FC(&qword_1EE07D170, MEMORY[0x1E69695C8]);
      v60 = sub_1D1E6775C();
      v34(v55, v56);
      sub_1D1741A30(v57, &qword_1EC642590, qword_1D1E71260);
      v34(v58, v56);
      sub_1D1741A30(v59, &qword_1EC642590, qword_1D1E71260);
      if (v60)
      {
        goto LABEL_19;
      }

LABEL_14:
      v1 = v0 + 32;
      v9 = (v0 + 33);
      v8 = v0 + 19;
      goto LABEL_15;
    }

    v51 = v0[19];
    v52 = v0[17];
    sub_1D1741A30(v0[18], &qword_1EC642590, qword_1D1E71260);
    v34(v52, v51);
LABEL_13:
    sub_1D1741A30(v0[16], &qword_1EC642980, &unk_1D1E6E6E0);
    goto LABEL_14;
  }

  sub_1D1741A30(v0[18], &qword_1EC642590, qword_1D1E71260);
  if (v48(v44 + v47, 1, v50) != 1)
  {
    goto LABEL_13;
  }

  sub_1D1741A30(v0[16], &qword_1EC642590, qword_1D1E71260);
LABEL_19:
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v61 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1B129C0, v61, 0);
}

uint64_t sub_1D1B129C0()
{
  v1 = v0[14];
  v0[34] = swift_unknownObjectWeakLoadStrong();
  v0[35] = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1D1B12A38, v1, 0);
}

uint64_t sub_1D1B12A38()
{
  if (*(v0 + 272))
  {
    v1 = *(v0 + 280);
    v2 = *(v0 + 104);
    ObjectType = swift_getObjectType();
    (*(v1 + 16))(v2, ObjectType, v1);
    swift_unknownObjectRelease();
  }

  (*(v0 + 264))(*(v0 + 256), *(v0 + 152));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D1B12B74()
{
  sub_1D1B1384C();
}

uint64_t sub_1D1B12B9C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 128) = a1;
}

uint64_t RecommendationsModerator2.deinit()
{
  sub_1D1A62A04(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t RecommendationsModerator2.__deallocating_deinit()
{
  RecommendationsModerator2.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D1B12C78(uint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D1E66A7C();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, *(a1 + *(TupleTypeMetadata2 + 48))) & 1;
}

uint64_t sub_1D1B12D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v3 = *(swift_getAssociatedConformanceWitness() + 16);
  v4 = *(v3 + 128);
  v5 = swift_checkMetadataState();
  return v4(v5, v3);
}

uint64_t sub_1D1B12E30(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1D1E66A7C();
  MEMORY[0x1EEE9AC00](v4);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v5 = *(*(swift_getAssociatedConformanceWitness() + 16) + 128);
  swift_checkMetadataState();
  v5();
  swift_unknownObjectRetain();
  swift_dynamicCast();
  sub_1D174A5FC(qword_1EE07DD78, MEMORY[0x1E69695B8]);
  sub_1D1E6769C();
  return sub_1D1E676BC();
}

uint64_t sub_1D1B13014(uint64_t *a1, uint64_t a2)
{
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[1];
  ObjectType = swift_getObjectType();
  (*(*(v7 + 16) + 128))(ObjectType);
  LOBYTE(v7) = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
  (*(v4 + 8))(v6, v3);
  return v7 & 1;
}

unint64_t sub_1D1B1312C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D1B131F8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1D1741970(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1D1B131F8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1D1B13304(a5, a6);
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
    result = sub_1D1E6893C();
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

void *sub_1D1B13304(uint64_t a1, unint64_t a2)
{
  v3 = sub_1D1B13350(a1, a2);
  sub_1D1B13480(&unk_1F4D5EE78);
  return v3;
}

void *sub_1D1B13350(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1D1B1356C(v5, 0);
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

  result = sub_1D1E6893C();
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
        v10 = sub_1D1E6795C();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1D1B1356C(v10, 0);
        result = sub_1D1E6883C();
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

uint64_t sub_1D1B13480(uint64_t result)
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

  result = sub_1D1B135E0(result, v11, 1, v3);
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