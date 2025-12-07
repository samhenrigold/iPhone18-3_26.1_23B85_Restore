uint64_t sub_1D1BEE5D8()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1BEE654()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D1BEE784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = type metadata accessor for StateSnapshot.UpdateType(0);
  v5[8] = swift_task_alloc();
  v5[9] = sub_1D1E67E1C();
  v5[10] = sub_1D1E67E0C();
  v7 = sub_1D1E67D4C();
  v5[11] = v7;
  v5[12] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D1BEE858, v7, v6);
}

uint64_t sub_1D1BEE858()
{
  v10 = v0;
  if (qword_1EE07A098 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6709C();
  v0[13] = __swift_project_value_buffer(v1, qword_1EE0813C8);
  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6835C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1D1B1312C(0xD000000000000022, 0x80000001D1EC6770, &v9);
    _os_log_impl(&dword_1D16EC000, v2, v3, "%s Informing HomeKit it should send a timeline refresh", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1D3893640](v5, -1, -1);
    MEMORY[0x1D3893640](v4, -1, -1);
  }

  v0[14] = *(v0[6] + OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_widgetManager);
  v0[15] = sub_1D1E67E0C();
  v7 = sub_1D1E67D4C();
  v0[16] = v7;
  v0[17] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D1BEEA1C, v7, v6);
}

uint64_t sub_1D1BEEA1C(uint64_t a1)
{
  v2 = *(v1 + 112);
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  v13 = *(v1 + 16);
  v5 = sub_1D1E67E0C();
  *(v1 + 144) = v5;
  v6 = swift_task_alloc();
  *(v1 + 152) = v6;
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 16) = v2;
  *(v6 + 24) = v7;
  *(v6 + 32) = v13;
  *(v6 + 48) = v4;
  *(v6 + 56) = v3;
  v8 = swift_task_alloc();
  *(v1 + 160) = v8;
  *v8 = v1;
  v8[1] = sub_1D1BEEB50;
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v9, v5, v11, 0xD000000000000030, 0x80000001D1EC66D0, sub_1D1BFAAAC, v6, v10);
}

uint64_t sub_1D1BEEB50()
{
  v2 = *v1;
  (*v1)[21] = v0;

  if (v0)
  {
    v3 = v2[16];
    v4 = v2[17];
    v5 = sub_1D1BEED88;
  }

  else
  {
    sub_1D1BFA9A4(v2[8], type metadata accessor for StateSnapshot.UpdateType);

    v3 = v2[16];
    v4 = v2[17];
    v5 = sub_1D1BEECBC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D1BEECBC()
{

  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1D1BEED20, v1, v2);
}

uint64_t sub_1D1BEED20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1BEED88()
{

  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1D1BEEE20, v1, v2);
}

uint64_t sub_1D1BEEE20()
{
  v15 = v0;
  v1 = *(v0 + 168);

  v2 = v1;
  v3 = sub_1D1E6707C();
  v4 = sub_1D1E6833C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 168);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_1D1B1312C(0xD000000000000022, 0x80000001D1EC6770, &v14);
    *(v7 + 12) = 2112;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_1D16EC000, v3, v4, "%s Unable to execute monitorAndFetchState call, will not try again. reason=%@", v7, 0x16u);
    sub_1D1741A30(v8, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1D3893640](v9, -1, -1);
    MEMORY[0x1D3893640](v7, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1D1BEEFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v8 + 56) = a6;
  *(v8 + 64) = v7;
  *(v8 + 192) = a7;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  *(v8 + 72) = sub_1D1E67E1C();
  *(v8 + 80) = sub_1D1E67E0C();
  v10 = sub_1D1E67D4C();
  *(v8 + 88) = v10;
  *(v8 + 96) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D1BEF09C, v10, v9);
}

uint64_t sub_1D1BEF09C()
{
  v33 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 56);
  v3 = [*(*(v0 + 64) + OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_homeManager) homes];
  sub_1D1821898();
  v4 = sub_1D1E67C1C();

  v6 = sub_1D1DC8B60(v4, v2, v5);
  *(v0 + 104) = v6;

  if (v1 == 1)
  {
    if (qword_1EE07A098 != -1)
    {
      swift_once();
    }

    v7 = sub_1D1E6709C();
    __swift_project_value_buffer(v7, qword_1EE0813C8);

    v8 = sub_1D1E6707C();
    v9 = sub_1D1E6835C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 56);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v32[0] = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_1D1B1312C(0xD000000000000033, 0x80000001D1EC6710, v32);
      *(v11 + 12) = 2080;
      v13 = sub_1D1E66A7C();
      v14 = MEMORY[0x1D3891260](v10, v13);
      v16 = sub_1D1B1312C(v14, v15, v32);

      *(v11 + 14) = v16;
      _os_log_impl(&dword_1D16EC000, v8, v9, "%s Monitoring characteristics: %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v12, -1, -1);
      MEMORY[0x1D3893640](v11, -1, -1);
    }

    *(v0 + 112) = *(*(v0 + 64) + OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_widgetManager);
    *(v0 + 120) = sub_1D1E67E0C();
    v18 = sub_1D1E67D4C();
    *(v0 + 128) = v18;
    *(v0 + 136) = v17;

    return MEMORY[0x1EEE6DFA0](sub_1D1BEF53C, v18, v17);
  }

  else
  {
    if (qword_1EE07A098 != -1)
    {
      swift_once();
    }

    v19 = sub_1D1E6709C();
    __swift_project_value_buffer(v19, qword_1EE0813C8);

    v20 = sub_1D1E6707C();
    v21 = sub_1D1E6835C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 56);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v32[0] = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_1D1B1312C(0xD000000000000033, 0x80000001D1EC6710, v32);
      *(v23 + 12) = 2080;
      v25 = sub_1D1E66A7C();
      v26 = MEMORY[0x1D3891260](v22, v25);
      v28 = sub_1D1B1312C(v26, v27, v32);

      *(v23 + 14) = v28;
      _os_log_impl(&dword_1D16EC000, v20, v21, "%s Fetching characteristics: %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v24, -1, -1);
      MEMORY[0x1D3893640](v23, -1, -1);
    }

    v29 = swift_task_alloc();
    *(v0 + 176) = v29;
    *v29 = v0;
    v29[1] = sub_1D1BEF898;
    v30 = *(v0 + 16);

    return WidgetManager.fetchState(for:)(v30, v6);
  }
}

uint64_t sub_1D1BEF53C(uint64_t a1)
{
  v3 = *(v1 + 40);
  v2 = *(v1 + 48);
  v11 = *(v1 + 104);
  v12 = *(v1 + 24);
  v4 = sub_1D1E67E0C();
  *(v1 + 144) = v4;
  v5 = swift_task_alloc();
  *(v1 + 152) = v5;
  *(v5 + 16) = vextq_s8(v11, v11, 8uLL);
  *(v5 + 32) = v12;
  *(v5 + 48) = v3;
  *(v5 + 56) = v2;
  v6 = swift_task_alloc();
  *(v1 + 160) = v6;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  *v6 = v1;
  v6[1] = sub_1D1BEF670;
  v8 = *(v1 + 16);
  v9 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v8, v4, v9, 0xD000000000000030, 0x80000001D1EC66D0, sub_1D1BFAA1C, v5, updated);
}

uint64_t sub_1D1BEF670()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_1D1BEF80C;
  }

  else
  {

    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_1D1BEF7A8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D1BEF7A8()
{

  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1D1BFAAB4, v1, v2);
}

uint64_t sub_1D1BEF80C()
{

  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1D1BFAAA0, v1, v2);
}

uint64_t sub_1D1BEF898()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_1D1BFAAA4;
  }

  else
  {
    v5 = sub_1D1BFAAA8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D1BEF9D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v8 + 56) = a6;
  *(v8 + 64) = v7;
  *(v8 + 192) = a7;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  *(v8 + 72) = sub_1D1E67E1C();
  *(v8 + 80) = sub_1D1E67E0C();
  v10 = sub_1D1E67D4C();
  *(v8 + 88) = v10;
  *(v8 + 96) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D1BEFA80, v10, v9);
}

uint64_t sub_1D1BEFA80()
{
  v32 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 56);
  v3 = [*(*(v0 + 64) + OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_homeManager) homes];
  sub_1D1821898();
  v4 = sub_1D1E67C1C();

  v5 = sub_1D1DC83E4(v4, v2);
  *(v0 + 104) = v5;

  if (v1 == 1)
  {
    if (qword_1EE07A098 != -1)
    {
      swift_once();
    }

    v6 = sub_1D1E6709C();
    __swift_project_value_buffer(v6, qword_1EE0813C8);

    v7 = sub_1D1E6707C();
    v8 = sub_1D1E6835C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 56);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v31[0] = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_1D1B1312C(0xD00000000000002ELL, 0x80000001D1EC66A0, v31);
      *(v10 + 12) = 2080;
      v12 = sub_1D1E66A7C();
      v13 = MEMORY[0x1D3891260](v9, v12);
      v15 = sub_1D1B1312C(v13, v14, v31);

      *(v10 + 14) = v15;
      _os_log_impl(&dword_1D16EC000, v7, v8, "%s Monitoring actionSets: %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v11, -1, -1);
      MEMORY[0x1D3893640](v10, -1, -1);
    }

    *(v0 + 112) = *(*(v0 + 64) + OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_widgetManager);
    *(v0 + 120) = sub_1D1E67E0C();
    v17 = sub_1D1E67D4C();
    *(v0 + 128) = v17;
    *(v0 + 136) = v16;

    return MEMORY[0x1EEE6DFA0](sub_1D1BEFF20, v17, v16);
  }

  else
  {
    if (qword_1EE07A098 != -1)
    {
      swift_once();
    }

    v18 = sub_1D1E6709C();
    __swift_project_value_buffer(v18, qword_1EE0813C8);

    v19 = sub_1D1E6707C();
    v20 = sub_1D1E6835C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v0 + 56);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v31[0] = v23;
      *v22 = 136315394;
      *(v22 + 4) = sub_1D1B1312C(0xD00000000000002ELL, 0x80000001D1EC66A0, v31);
      *(v22 + 12) = 2080;
      v24 = sub_1D1E66A7C();
      v25 = MEMORY[0x1D3891260](v21, v24);
      v27 = sub_1D1B1312C(v25, v26, v31);

      *(v22 + 14) = v27;
      _os_log_impl(&dword_1D16EC000, v19, v20, "%s Fetching actionSets: %s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v23, -1, -1);
      MEMORY[0x1D3893640](v22, -1, -1);
    }

    v28 = swift_task_alloc();
    *(v0 + 176) = v28;
    *v28 = v0;
    v28[1] = sub_1D1BF0344;
    v29 = *(v0 + 16);

    return WidgetManager.fetchState(for:)(v29, v5);
  }
}

uint64_t sub_1D1BEFF20(uint64_t a1)
{
  v3 = *(v1 + 40);
  v2 = *(v1 + 48);
  v11 = *(v1 + 104);
  v12 = *(v1 + 24);
  v4 = sub_1D1E67E0C();
  *(v1 + 144) = v4;
  v5 = swift_task_alloc();
  *(v1 + 152) = v5;
  *(v5 + 16) = vextq_s8(v11, v11, 8uLL);
  *(v5 + 32) = v12;
  *(v5 + 48) = v3;
  *(v5 + 56) = v2;
  v6 = swift_task_alloc();
  *(v1 + 160) = v6;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  *v6 = v1;
  v6[1] = sub_1D1BF0054;
  v8 = *(v1 + 16);
  v9 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v8, v4, v9, 0xD000000000000030, 0x80000001D1EC66D0, sub_1D1BFAA04, v5, updated);
}

uint64_t sub_1D1BF0054()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_1D1BF0254;
  }

  else
  {

    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_1D1BF018C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D1BF018C()
{

  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1D1BF01F0, v1, v2);
}

uint64_t sub_1D1BF01F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1BF0254()
{

  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1D1BF02E0, v1, v2);
}

uint64_t sub_1D1BF02E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1BF0344()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_1D1BF04EC;
  }

  else
  {
    v5 = sub_1D1BF0480;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D1BF0480()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1BF04EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1BF0558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v9 + 136) = a8;
  *(v9 + 144) = v8;
  *(v9 + 320) = a7;
  *(v9 + 120) = a5;
  *(v9 + 128) = a6;
  *(v9 + 104) = a3;
  *(v9 + 112) = a4;
  *(v9 + 88) = a1;
  *(v9 + 96) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10);
  *(v9 + 152) = swift_task_alloc();
  v10 = sub_1D1E66FDC();
  *(v9 + 160) = v10;
  *(v9 + 168) = *(v10 - 8);
  *(v9 + 176) = swift_task_alloc();
  *(v9 + 184) = swift_task_alloc();
  v11 = sub_1D1E66A7C();
  *(v9 + 192) = v11;
  *(v9 + 200) = *(v11 - 8);
  *(v9 + 208) = swift_task_alloc();
  *(v9 + 216) = swift_task_alloc();
  v12 = type metadata accessor for MatterStateSnapshot(0);
  *(v9 + 224) = v12;
  *(v9 + 232) = *(v12 - 8);
  *(v9 + 240) = swift_task_alloc();
  *(v9 + 248) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1BF073C, v8, 0);
}

uint64_t sub_1D1BF073C()
{
  v128 = v0;
  v1 = *(v0 + 144);
  v2 = [*(v0 + 96) uniqueIdentifier];
  sub_1D1E66A5C();

  swift_beginAccess();
  v3 = *(v1 + 120);
  if (*(v3 + 16) && (v4 = sub_1D1742188(), (v5 & 1) != 0))
  {
    v7 = *(v0 + 240);
    v6 = *(v0 + 248);
    v8 = *(v0 + 216);
    v9 = *(v0 + 192);
    v10 = *(v0 + 200);
    v11 = *(v0 + 136);
    sub_1D1BFA920(*(v3 + 56) + *(*(v0 + 232) + 72) * v4, v7, type metadata accessor for MatterStateSnapshot);
    sub_1D1AFBD48(v7, v6, type metadata accessor for MatterStateSnapshot);
    swift_endAccess();
    v12 = *(v10 + 8);
    *(v0 + 256) = v12;
    *(v0 + 264) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v118 = v12;
    v12(v8, v9);
    v13 = swift_task_alloc();
    *(v13 + 16) = v6;
    v14 = sub_1D1788858(sub_1D1BFA988, v13, v11);

    v15 = v14[2];

    if (v15)
    {
      if (*(v0 + 320))
      {
        v16 = *(v0 + 136);
        v17 = *(v16 + 16);
        if (v17)
        {
          v18 = *(v0 + 144);
          v19 = (v16 + 32);
          v20 = MEMORY[0x1E69E7CC0];
          do
          {
            v22 = *v19++;
            v21 = v22;
            swift_beginAccess();
            v23 = *(v18 + 152);
            if (*(v23 + 16) && (v24 = sub_1D17420B0(v21), (v25 & 1) != 0))
            {
              v26 = *(v23 + 56) + 40 * v24;
              v28 = *v26;
              v27 = *(v26 + 8);
              v122 = *(v26 + 16);
              v29 = *(v26 + 32);
              swift_endAccess();

              swift_unknownObjectRetain();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v20 = sub_1D177E7E0(0, *(v20 + 2) + 1, 1, v20);
              }

              v31 = *(v20 + 2);
              v30 = *(v20 + 3);
              if (v31 >= v30 >> 1)
              {
                v20 = sub_1D177E7E0((v30 > 1), v31 + 1, 1, v20);
              }

              *(v20 + 2) = v31 + 1;
              v32 = &v20[40 * v31];
              *(v32 + 4) = v28;
              *(v32 + 5) = v27;
              *(v32 + 3) = v122;
              *(v32 + 8) = v29;
            }

            else
            {
              swift_endAccess();
            }

            --v17;
          }

          while (v17);
        }

        else
        {
          v20 = MEMORY[0x1E69E7CC0];
        }

        *(v0 + 272) = v20;
        if (qword_1EE07A098 != -1)
        {
          swift_once();
        }

        v91 = *(v0 + 96);
        v92 = sub_1D1E6709C();
        *(v0 + 280) = __swift_project_value_buffer(v92, qword_1EE0813C8);

        v93 = v91;

        v94 = sub_1D1E6707C();
        v95 = sub_1D1E6835C();

        if (os_log_type_enabled(v94, v95))
        {
          v96 = *(v0 + 208);
          v117 = *(v0 + 192);
          v125 = *(v0 + 136);
          v97 = *(v0 + 104);
          v98 = *(v0 + 112);
          v99 = *(v0 + 96);
          v100 = swift_slowAlloc();
          v113 = swift_slowAlloc();
          v126 = v113;
          *v100 = 136315906;
          *(v100 + 4) = sub_1D1B1312C(0xD000000000000036, 0x80000001D1EC6640, &v126);
          *(v100 + 12) = 2080;

          v101 = sub_1D1B1312C(v97, v98, &v126);

          *(v100 + 14) = v101;
          *(v100 + 22) = 2080;
          v102 = [v99 uniqueIdentifier];
          sub_1D1E66A5C();

          sub_1D1BFA898(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
          v103 = sub_1D1E68FAC();
          v105 = v104;
          v118(v96, v117);
          v106 = sub_1D1B1312C(v103, v105, &v126);

          *(v100 + 24) = v106;
          *(v100 + 32) = 2080;
          v107 = MEMORY[0x1D3891260](v125, MEMORY[0x1E69E76D8]);
          v109 = sub_1D1B1312C(v107, v108, &v126);

          *(v100 + 34) = v109;
          _os_log_impl(&dword_1D16EC000, v94, v95, "%s W:{%s} HM:{%s} Sending Native Matter Monitor command [%s]", v100, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x1D3893640](v113, -1, -1);
          MEMORY[0x1D3893640](v100, -1, -1);
        }

        else
        {
        }

        if (qword_1EC642488 != -1)
        {
          swift_once();
        }

        v110 = sub_1D1E6701C();
        *(v0 + 288) = __swift_project_value_buffer(v110, qword_1EC6BE2B8);
        sub_1D1E66FCC();

        return MEMORY[0x1EEE6DFA0](sub_1D1BF154C, 0, 0);
      }

      v72 = *(v0 + 248);
      v74 = *(v0 + 224);
      v73 = *(v0 + 232);
      v111 = *(v0 + 208);
      v75 = *(v0 + 152);
      v121 = v72;
      v76 = *(v0 + 96);
      v112 = v74;
      v116 = *(v0 + 88);

      v78 = sub_1D1785204(v77);

      v79 = v76;

      v81 = sub_1D1785204(v80);

      sub_1D1BFA920(v72, v75, type metadata accessor for MatterStateSnapshot);
      v82 = *(v73 + 56);
      v82(v75, 0, 1, v74);
      v83 = sub_1D1A2B978(v75, v78, v76, 2, v79, v81, 1);

      v84 = [v79 matterControllerID];
      v85 = sub_1D1E6781C();
      v87 = v86;

      v88 = [v79 uniqueIdentifier];
      sub_1D1E66A5C();

      v126 = v81;
      v127 = 1;
      sub_1D1A28CB8(v85, v87, v111, v83, &v126, v116);
      sub_1D1741A30(v75, &unk_1EC64F390, &qword_1D1E92B10);
      v89 = [v79 uniqueIdentifier];
      sub_1D1E66A5C();

      sub_1D1BFA920(v116, v75, type metadata accessor for MatterStateSnapshot);
      v82(v75, 0, 1, v112);
      swift_beginAccess();
      sub_1D1B0E5E8(v75, v111);
      swift_endAccess();
      sub_1D1BFA9A4(v121, type metadata accessor for MatterStateSnapshot);
    }

    else
    {
      if (qword_1EE07A098 != -1)
      {
        swift_once();
      }

      v56 = *(v0 + 96);
      v57 = sub_1D1E6709C();
      __swift_project_value_buffer(v57, qword_1EE0813C8);

      v58 = v56;
      v59 = sub_1D1E6707C();
      v60 = sub_1D1E6833C();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = *(v0 + 208);
        v124 = *(v0 + 192);
        v62 = *(v0 + 104);
        v63 = *(v0 + 112);
        v115 = *(v0 + 96);
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v126 = v65;
        *v64 = 136315650;
        *(v64 + 4) = sub_1D1B1312C(0xD000000000000036, 0x80000001D1EC6640, &v126);
        *(v64 + 12) = 2080;

        v66 = sub_1D1B1312C(v62, v63, &v126);

        *(v64 + 14) = v66;
        *(v64 + 22) = 2080;
        v67 = [v115 uniqueIdentifier];
        sub_1D1E66A5C();

        sub_1D1BFA898(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v68 = sub_1D1E68FAC();
        v70 = v69;
        v118(v61, v124);
        v71 = sub_1D1B1312C(v68, v70, &v126);

        *(v64 + 24) = v71;
        _os_log_impl(&dword_1D16EC000, v59, v60, "%s W:{%s} HM:{%s} 0 matching devices", v64, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v65, -1, -1);
        MEMORY[0x1D3893640](v64, -1, -1);
      }

      else
      {
      }

      v90 = *(v0 + 248);
      sub_1D1BFA920(v90, *(v0 + 88), type metadata accessor for MatterStateSnapshot);
      sub_1D1BFA9A4(v90, type metadata accessor for MatterStateSnapshot);
    }
  }

  else
  {
    v33 = *(v0 + 216);
    v34 = *(v0 + 192);
    v35 = *(v0 + 200);
    swift_endAccess();
    v36 = *(v35 + 8);
    v36(v33, v34);
    if (qword_1EE07A098 != -1)
    {
      swift_once();
    }

    v37 = *(v0 + 96);
    v38 = sub_1D1E6709C();
    __swift_project_value_buffer(v38, qword_1EE0813C8);

    v39 = v37;
    v40 = sub_1D1E6707C();
    v41 = sub_1D1E6833C();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = *(v0 + 208);
      v120 = *(v0 + 192);
      v44 = *(v0 + 104);
      v43 = *(v0 + 112);
      v114 = *(v0 + 96);
      v45 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v126 = v123;
      *v45 = 136315650;
      *(v45 + 4) = sub_1D1B1312C(0xD000000000000036, 0x80000001D1EC6640, &v126);
      v119 = v36;
      *(v45 + 12) = 2080;

      v46 = sub_1D1B1312C(v44, v43, &v126);

      *(v45 + 14) = v46;
      *(v45 + 22) = 2080;
      v47 = [v114 uniqueIdentifier];
      sub_1D1E66A5C();

      sub_1D1BFA898(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v48 = sub_1D1E68FAC();
      v50 = v49;
      v119(v42, v120);
      v51 = sub_1D1B1312C(v48, v50, &v126);

      *(v45 + 24) = v51;
      _os_log_impl(&dword_1D16EC000, v40, v41, "%s W:{%s} HM:{%s} failed to find MatterStateSnapshot", v45, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v123, -1, -1);
      MEMORY[0x1D3893640](v45, -1, -1);
    }

    else
    {
    }

    if (qword_1EE07D498 != -1)
    {
      swift_once();
    }

    v52 = *(v0 + 88);
    v53 = __swift_project_value_buffer(*(v0 + 224), qword_1EE07D4A0);
    sub_1D1BFA920(v53, v52, type metadata accessor for MatterStateSnapshot);
  }

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_1D1BF154C(uint64_t a1)
{
  v2 = sub_1D1E66FFC();
  v3 = sub_1D1E683EC();
  if (sub_1D1E6855C())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v2, v3, v5, "Widget.Monitor.Matter", "", v4, 2u);
    MEMORY[0x1D3893640](v4, -1, -1);
  }

  v7 = v1[22];
  v6 = v1[23];
  v8 = v1[20];
  v9 = v1[21];

  (*(v9 + 16))(v7, v6, v8);
  sub_1D1E6705C();
  swift_allocObject();
  v1[37] = sub_1D1E6704C();
  v10 = swift_task_alloc();
  v1[38] = v10;
  *v10 = v1;
  v10[1] = sub_1D1BF16DC;
  v11 = v1[34];
  v12 = v1[15];
  v13 = v1[16];
  v14 = v1[13];
  v15 = v1[14];

  return WidgetManager.monitorState(for:widgetIdentifier:kind:)(v11, v14, v15, v12, v13);
}

uint64_t sub_1D1BF16DC()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_1D1BF1DD8;
  }

  else
  {
    v2 = sub_1D1BF17F0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1BF17F0()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[18];
  sub_1D1760838();

  (*(v3 + 8))(v1, v2);

  return MEMORY[0x1EEE6DFA0](sub_1D1BF18B4, v4, 0);
}

uint64_t sub_1D1BF18B4()
{
  v49 = v0;
  v1 = v0[12];

  v2 = v1;

  v3 = sub_1D1E6707C();
  v4 = sub_1D1E6835C();

  if (os_log_type_enabled(v3, v4))
  {
    v42 = v0[32];
    v5 = v0[26];
    v40 = v0[24];
    v44 = v0[17];
    v6 = v0[13];
    v7 = v0[14];
    v8 = v0[12];
    v9 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = v46;
    *v9 = 136315906;
    *(v9 + 4) = sub_1D1B1312C(0xD000000000000036, 0x80000001D1EC6640, &v47);
    *(v9 + 12) = 2080;

    v10 = sub_1D1B1312C(v6, v7, &v47);

    *(v9 + 14) = v10;
    *(v9 + 22) = 2080;
    v11 = [v8 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1BFA898(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v12 = sub_1D1E68FAC();
    v14 = v13;
    v42(v5, v40);
    v15 = sub_1D1B1312C(v12, v14, &v47);

    *(v9 + 24) = v15;
    *(v9 + 32) = 2080;
    v16 = MEMORY[0x1D3891260](v44, MEMORY[0x1E69E76D8]);
    v18 = sub_1D1B1312C(v16, v17, &v47);

    *(v9 + 34) = v18;
    _os_log_impl(&dword_1D16EC000, v3, v4, "%s W:{%s} HM:{%s} Native Matter Monitor command succeeded [%s]", v9, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v46, -1, -1);
    MEMORY[0x1D3893640](v9, -1, -1);
  }

  else
  {
  }

  v19 = v0[31];
  v21 = v0[28];
  v20 = v0[29];
  v39 = v0[26];
  v22 = v0[19];
  v45 = v19;
  v23 = v0[12];
  v41 = v21;
  v43 = v0[11];

  v25 = sub_1D1785204(v24);

  v26 = v23;

  v28 = sub_1D1785204(v27);

  sub_1D1BFA920(v19, v22, type metadata accessor for MatterStateSnapshot);
  v29 = *(v20 + 56);
  v29(v22, 0, 1, v21);
  v38 = sub_1D1A2B978(v22, v25, v23, 2, v26, v28, 1);

  v30 = [v26 matterControllerID];
  v31 = sub_1D1E6781C();
  v33 = v32;

  v34 = [v26 uniqueIdentifier];
  sub_1D1E66A5C();

  v47 = v28;
  v48 = 1;
  sub_1D1A28CB8(v31, v33, v39, v38, &v47, v43);
  sub_1D1741A30(v22, &unk_1EC64F390, &qword_1D1E92B10);
  v35 = [v26 uniqueIdentifier];
  sub_1D1E66A5C();

  sub_1D1BFA920(v43, v22, type metadata accessor for MatterStateSnapshot);
  v29(v22, 0, 1, v41);
  swift_beginAccess();
  sub_1D1B0E5E8(v22, v39);
  swift_endAccess();
  sub_1D1BFA9A4(v45, type metadata accessor for MatterStateSnapshot);

  v36 = v0[1];

  return v36();
}

uint64_t sub_1D1BF1DD8()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[18];
  sub_1D1760838();

  (*(v3 + 8))(v1, v2);

  return MEMORY[0x1EEE6DFA0](sub_1D1BF1E9C, v4, 0);
}

uint64_t sub_1D1BF1E9C()
{
  sub_1D1BFA9A4(*(v0 + 248), type metadata accessor for MatterStateSnapshot);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1BF1F74(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v4 = sub_1D1E66A7C();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = type metadata accessor for StateSnapshot.UpdateType(0);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v5 = sub_1D1E66FDC();
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v6 = type metadata accessor for StateSnapshot(0);
  v3[26] = v6;
  v3[27] = *(v6 - 8);
  v3[28] = swift_task_alloc();
  type metadata accessor for StaticHome(0);
  v3[29] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v3[30] = v7;
  v3[31] = *(v7 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1BF224C, v2, 0);
}

uint64_t sub_1D1BF224C()
{
  v28 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *(v0 + 64);
  sub_1D1741C08(v5, v2, &qword_1EC642590, qword_1D1E71260);
  v6 = *(v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7A8, &qword_1D1EA0440) + 40));
  *(v0 + 52) = v6;
  sub_1D1741C08(v2, v1, &qword_1EC642590, qword_1D1E71260);
  v7 = (*(v4 + 48))(v1, 1, v3);
  v8 = *(v0 + 256);
  if (v7 == 1)
  {
    sub_1D1741A30(*(v0 + 256), &qword_1EC642590, qword_1D1E71260);
    v9 = 0xE300000000000000;
    v10 = 7104878;
  }

  else
  {
    v11 = *(v0 + 96);
    v12 = *(v0 + 104);
    v10 = sub_1D1E66A1C();
    v9 = v13;
    (*(v12 + 8))(v8, v11);
  }

  *(v0 + 272) = v10;
  *(v0 + 280) = v9;
  if (qword_1EE07A098 != -1)
  {
    swift_once();
  }

  v14 = sub_1D1E6709C();
  *(v0 + 288) = __swift_project_value_buffer(v14, qword_1EE0813C8);

  v15 = sub_1D1E6707C();
  v16 = sub_1D1E6835C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v26 = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_1D1B1312C(v10, v9, &v26);
    *(v17 + 12) = 2080;
    v27 = v6;
    WidgetRefreshOptions.description.getter();
    v21 = sub_1D1B1312C(v19, v20, &v26);

    *(v17 + 14) = v21;
    _os_log_impl(&dword_1D16EC000, v15, v16, "updateMinimalState(homeID:filtered:) HM:{%s} F:{%s}", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v18, -1, -1);
    MEMORY[0x1D3893640](v17, -1, -1);
  }

  v22 = swift_task_alloc();
  *(v0 + 296) = v22;
  *v22 = v0;
  v22[1] = sub_1D1BF253C;
  v23 = *(v0 + 264);
  v24 = *(v0 + 232);

  return sub_1D1DB11A0(v24, v23, 1);
}

uint64_t sub_1D1BF253C()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);

    v4 = sub_1D1BF2AA0;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 72);
    v4 = sub_1D1BF2664;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, 0);
}

uint64_t sub_1D1BF2664()
{
  v25 = v0;
  v1 = v0[29];
  v2 = *(v0[9] + OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_homeManager);
  v0[39] = v2;
  v3 = [v2 homes];
  sub_1D1821898();
  v4 = sub_1D1E67C1C();

  v5 = swift_task_alloc();
  *(v5 + 16) = v1;
  v6 = sub_1D174A6C4(sub_1D1BFA878, v5, v4);
  v0[40] = v6;

  sub_1D1BFA9A4(v1, type metadata accessor for StaticHome);
  if (v6)
  {

    if (qword_1EC642488 != -1)
    {
      swift_once();
    }

    v7 = sub_1D1E6701C();
    v0[41] = __swift_project_value_buffer(v7, qword_1EC6BE2B8);
    v8 = v6;

    sub_1D1E66FCC();

    return MEMORY[0x1EEE6DFA0](sub_1D1BF2BE0, 0, 0);
  }

  else
  {

    v9 = sub_1D1E6707C();
    v10 = sub_1D1E6833C();

    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[35];
    if (v11)
    {
      v13 = v0[34];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24 = v15;
      *v14 = 136315138;
      v16 = sub_1D1B1312C(v13, v12, &v24);

      *(v14 + 4) = v16;
      _os_log_impl(&dword_1D16EC000, v9, v10, "updateMinimalState(homeID:filtered:) HM:{%s} failed to find home", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1D3893640](v15, -1, -1);
      MEMORY[0x1D3893640](v14, -1, -1);
    }

    else
    {
    }

    v17 = v0[33];
    v18 = v0[30];
    v19 = v0[31];
    type metadata accessor for WidgetSnapshotModerator.Error(0);
    sub_1D1BFA898(&qword_1EC64C7B0, type metadata accessor for WidgetSnapshotModerator.Error, &protocol conformance descriptor for WidgetSnapshotModerator.Error);
    swift_allocError();
    v21 = v20;
    sub_1D1741C08(v17, v20, &qword_1EC642590, qword_1D1E71260);
    (*(v19 + 56))(v21, 0, 4, v18);
    swift_willThrow();
    sub_1D1741A30(v0[33], &qword_1EC642590, qword_1D1E71260);

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_1D1BF2AA0()
{
  sub_1D1741A30(*(v0 + 264), &qword_1EC642590, qword_1D1E71260);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1BF2BE0(uint64_t a1)
{
  v2 = sub_1D1E66FFC();
  v3 = sub_1D1E683EC();
  if (sub_1D1E6855C())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v2, v3, v5, "Widget.FirstSnapshot", "", v4, 2u);
    MEMORY[0x1D3893640](v4, -1, -1);
  }

  v7 = v1[39];
  v6 = v1[40];
  v9 = v1[24];
  v8 = v1[25];
  v11 = v1[19];
  v10 = v1[20];
  v12 = v1[18];
  v18 = v1[9];

  v13 = *(v10 + 16);
  v1[42] = v13;
  v1[43] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v9, v8, v11);
  v1[44] = sub_1D1E6705C();
  swift_allocObject();
  v1[45] = sub_1D1E6704C();
  *v12 = v6;
  swift_storeEnumTagMultiPayload();
  v14 = v6;
  v15 = v7;
  v16 = [v14 uniqueIdentifier];
  sub_1D1E66A5C();

  return MEMORY[0x1EEE6DFA0](sub_1D1BF2D98, v18, 0);
}

uint64_t sub_1D1BF2D98()
{
  v1 = v0[9];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16) && (v3 = sub_1D1742188(), (v4 & 1) != 0))
  {
    sub_1D1BFA920(*(v2 + 56) + *(v0[27] + 72) * v3, v0[11], type metadata accessor for StateSnapshot);
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v0[26];
  v7 = v0[15];
  v8 = v0[12];
  v9 = v0[13];
  v10 = v0[11];
  v11 = *(v0[27] + 56);
  v0[46] = v11;
  v11(v10, v5, 1, v6);
  swift_endAccess();
  v12 = *(v9 + 8);
  v0[47] = v12;
  v0[48] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v7, v8);

  return MEMORY[0x1EEE6DFA0](sub_1D1BF2EBC, 0, 0);
}

uint64_t sub_1D1BF2EBC()
{
  if ((*(v0 + 52) & 0x61) != 0)
  {
    if (qword_1EE07CD90 != -1)
    {
      swift_once();
    }

    v1 = qword_1EE07CD98;
  }

  else
  {
    v1 = sub_1D179B6E8(&unk_1F4D5FF60);
    swift_arrayDestroy();
  }

  v2 = *(v0 + 312);
  v3 = *(v0 + 224);
  v4 = *(v0 + 160);
  v11 = *(v0 + 152);
  v12 = *(v0 + 200);
  v5 = *(v0 + 144);
  v6 = *(v0 + 88);
  v10 = *(v0 + 72);
  v7 = *(v0 + 320);
  StateSnapshot.init(updateType:homeManager:home:previousStateSnapshot:coverages:)(v5, v2, v7, v6, v1, v3);
  sub_1D1760838();

  v8 = *(v4 + 8);
  *(v0 + 392) = v8;
  *(v0 + 400) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v12, v11);

  return MEMORY[0x1EEE6DFA0](sub_1D1BF305C, v10, 0);
}

uint64_t sub_1D1BF305C()
{
  v58 = v0;
  v1 = *(v0 + 320);
  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6835C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 376);
    v5 = *(v0 + 320);
    v6 = *(v0 + 112);
    v7 = *(v0 + 96);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v57 = v9;
    *v8 = 136315138;
    v10 = [v5 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1BFA898(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v11 = sub_1D1E68FAC();
    v13 = v12;
    v4(v6, v7);
    v14 = sub_1D1B1312C(v11, v13, &v57);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_1D16EC000, v2, v3, "updateMinimalState(homeID:filtered:) HM:{%s} generated snapshot", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1D3893640](v9, -1, -1);
    MEMORY[0x1D3893640](v8, -1, -1);
  }

  v15 = *(v0 + 52);
  if ((v15 & 0x1000001) != 0)
  {
    v16 = *(v0 + 320);
    v17 = sub_1D1E6707C();
    v18 = sub_1D1E6835C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 376);
      v20 = *(v0 + 320);
      v21 = *(v0 + 112);
      v22 = *(v0 + 96);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v57 = v24;
      *v23 = 136315138;
      v25 = [v20 uniqueIdentifier];
      sub_1D1E66A5C();

      sub_1D1BFA898(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v26 = sub_1D1E68FAC();
      v28 = v27;
      v19(v21, v22);
      v29 = sub_1D1B1312C(v26, v28, &v57);

      *(v23 + 4) = v29;
      _os_log_impl(&dword_1D16EC000, v17, v18, "updateMinimalState(homeID:filtered:) HM:{%s} includes Matter update", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1D3893640](v24, -1, -1);
      MEMORY[0x1D3893640](v23, -1, -1);
    }

    v30 = *(v0 + 320);

    sub_1D1E66FCC();

    return MEMORY[0x1EEE6DFA0](sub_1D1BF3778, 0, 0);
  }

  else if ((v15 & 0x1000) != 0 && (v31 = sub_1D1DB0D74(*(v0 + 320)), (*(v0 + 424) = v31) != 0))
  {
    v33 = v31;
    v34 = v32;
    v35 = *(v0 + 320);
    v36 = sub_1D1E6707C();
    v37 = sub_1D1E6835C();

    if (os_log_type_enabled(v36, v37))
    {
      v56 = *(v0 + 376);
      v38 = *(v0 + 320);
      v39 = *(v0 + 112);
      v40 = *(v0 + 96);
      v41 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v57 = v55;
      *v41 = 136315138;
      v42 = [v38 uniqueIdentifier];
      sub_1D1E66A5C();

      sub_1D1BFA898(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v43 = sub_1D1E68FAC();
      v45 = v44;
      v56(v39, v40);
      v46 = sub_1D1B1312C(v43, v45, &v57);

      *(v41 + 4) = v46;
      _os_log_impl(&dword_1D16EC000, v36, v37, "updateMinimalState(homeID:filtered:) HM:{%s} includes predictions", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v55);
      MEMORY[0x1D3893640](v55, -1, -1);
      MEMORY[0x1D3893640](v41, -1, -1);
    }

    swift_unknownObjectRetain();
    sub_1D1E66FCC();
    v47 = swift_task_alloc();
    *(v0 + 432) = v47;
    *v47 = v0;
    v47[1] = sub_1D1BF3EC8;
    v48 = *(v0 + 328);
    v49 = *(v0 + 176);

    return sub_1D17601BC("Widget.FetchPredictions", 23, 2, v49, v48, v33, v34);
  }

  else
  {
    v50 = *(v0 + 320);
    v51 = *(v0 + 224);
    v52 = *(v0 + 56);
    sub_1D1741A30(*(v0 + 264), &qword_1EC642590, qword_1D1E71260);

    sub_1D1BFA920(v51, v52, type metadata accessor for StateSnapshot);
    sub_1D1BFA9A4(*(v0 + 224), type metadata accessor for StateSnapshot);

    v53 = *(v0 + 8);

    return v53();
  }
}

uint64_t sub_1D1BF3778(uint64_t a1)
{
  v2 = sub_1D1E66FFC();
  v3 = sub_1D1E683EC();
  if (sub_1D1E6855C())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v2, v3, v5, "Widget.BuildMatterDeviceCache", "", v4, 2u);
    MEMORY[0x1D3893640](v4, -1, -1);
  }

  v6 = *(v1 + 336);
  v7 = *(v1 + 320);
  v9 = *(v1 + 184);
  v8 = *(v1 + 192);
  v10 = *(v1 + 152);

  v6(v8, v9, v10);
  swift_allocObject();
  *(v1 + 408) = sub_1D1E6704C();
  *(v1 + 40) = sub_1D179C134(&unk_1F4D600A8);
  *(v1 + 48) = 2;
  v11 = swift_task_alloc();
  *(v1 + 416) = v11;
  *v11 = v1;
  v11[1] = sub_1D1BF390C;

  return sub_1D1DB3224(v7, (v1 + 40));
}

uint64_t sub_1D1BF390C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1BF3A24, 0, 0);
}

uint64_t sub_1D1BF3A24()
{
  v1 = v0[49];
  v2 = v0[40];
  v3 = v0[23];
  v4 = v0[19];
  v5 = v0[9];
  sub_1D1760838();

  v1(v3, v4);

  return MEMORY[0x1EEE6DFA0](sub_1D1BF3AEC, v5, 0);
}

uint64_t sub_1D1BF3AEC()
{
  v28 = v0;
  if ((*(v0 + 52) & 0x1001) != 0 && (v1 = sub_1D1DB0D74(*(v0 + 320)), (*(v0 + 424) = v1) != 0))
  {
    v3 = v1;
    v4 = v2;
    v5 = *(v0 + 320);
    v6 = sub_1D1E6707C();
    v7 = sub_1D1E6835C();

    if (os_log_type_enabled(v6, v7))
    {
      v26 = *(v0 + 376);
      v8 = *(v0 + 320);
      v9 = *(v0 + 112);
      v10 = *(v0 + 96);
      v11 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v27 = v25;
      *v11 = 136315138;
      v12 = [v8 uniqueIdentifier];
      sub_1D1E66A5C();

      sub_1D1BFA898(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v13 = sub_1D1E68FAC();
      v15 = v14;
      v26(v9, v10);
      v16 = sub_1D1B1312C(v13, v15, &v27);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_1D16EC000, v6, v7, "updateMinimalState(homeID:filtered:) HM:{%s} includes predictions", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1D3893640](v25, -1, -1);
      MEMORY[0x1D3893640](v11, -1, -1);
    }

    swift_unknownObjectRetain();
    sub_1D1E66FCC();
    v17 = swift_task_alloc();
    *(v0 + 432) = v17;
    *v17 = v0;
    v17[1] = sub_1D1BF3EC8;
    v18 = *(v0 + 328);
    v19 = *(v0 + 176);

    return sub_1D17601BC("Widget.FetchPredictions", 23, 2, v19, v18, v3, v4);
  }

  else
  {
    v21 = *(v0 + 320);
    v22 = *(v0 + 224);
    v23 = *(v0 + 56);
    sub_1D1741A30(*(v0 + 264), &qword_1EC642590, qword_1D1E71260);

    sub_1D1BFA920(v22, v23, type metadata accessor for StateSnapshot);
    sub_1D1BFA9A4(*(v0 + 224), type metadata accessor for StateSnapshot);

    v24 = *(v0 + 8);

    return v24();
  }
}

void sub_1D1BF3EC8(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 440) = a1;

  if (v1)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = v3[49];
    v5 = v3[22];
    v6 = v3[19];
    v7 = v3[9];
    swift_unknownObjectRelease();
    v4(v5, v6);

    MEMORY[0x1EEE6DFA0](sub_1D1BF4048, v7, 0);
  }
}

uint64_t sub_1D1BF4048()
{
  v48 = v0;
  v1 = *(v0 + 320);
  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6835C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 376);
    v5 = *(v0 + 320);
    v6 = *(v0 + 112);
    v7 = *(v0 + 96);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v47 = v9;
    *v8 = 136315138;
    v10 = [v5 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1BFA898(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v11 = sub_1D1E68FAC();
    v13 = v12;
    v4(v6, v7);
    v14 = sub_1D1B1312C(v11, v13, &v47);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_1D16EC000, v2, v3, "updateMinimalState(homeID:filtered:) HM:{%s} predictions fetched", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1D3893640](v9, -1, -1);
    MEMORY[0x1D3893640](v8, -1, -1);
  }

  sub_1D1E66FCC();
  v15 = sub_1D1E66FFC();
  v16 = sub_1D1E683EC();
  if (sub_1D1E6855C())
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v15, v16, v18, "Widget.MergedPredictionsSnapshot", "", v17, 2u);
    MEMORY[0x1D3893640](v17, -1, -1);
  }

  v19 = *(v0 + 336);
  v20 = v15;
  v21 = *(v0 + 52);
  v40 = *(v0 + 440);
  v41 = *(v0 + 224);
  v44 = *(v0 + 208);
  v46 = *(v0 + 368);
  v22 = *(v0 + 192);
  v23 = *(v0 + 168);
  v24 = *(v0 + 152);
  v25 = *(v0 + 136);
  v26 = *(v0 + 80);

  v19(v22, v23, v24);
  swift_allocObject();
  sub_1D1E6704C();
  *v25 = v40;
  swift_storeEnumTagMultiPayload();
  sub_1D1BFA920(v41, v26, type metadata accessor for StateSnapshot);
  v46(v26, 0, 1, v44);
  v27 = *(v0 + 312);
  if ((v21 & 0x61) != 0)
  {
    v28 = qword_1EE07CD90;
    v29 = v27;

    if (v28 != -1)
    {
      swift_once();
    }

    v30 = qword_1EE07CD98;
  }

  else
  {
    v31 = v27;

    v30 = sub_1D179B6E8(&unk_1F4D65038);
    swift_arrayDestroy();
  }

  v43 = *(v0 + 392);
  v32 = *(v0 + 312);
  v45 = *(v0 + 264);
  v42 = *(v0 + 168);
  v33 = *(v0 + 152);
  v34 = *(v0 + 136);
  v35 = *(v0 + 80);
  v36 = *(v0 + 56);
  v37 = *(v0 + 320);
  StateSnapshot.init(updateType:homeManager:home:previousStateSnapshot:coverages:)(v34, v32, v37, v35, v30, v36);
  sub_1D1760838();

  swift_unknownObjectRelease();

  v43(v42, v33);
  sub_1D1741A30(v45, &qword_1EC642590, qword_1D1E71260);
  sub_1D1BFA9A4(*(v0 + 224), type metadata accessor for StateSnapshot);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_1D1BF45A8(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v3[10] = updated;
  v3[11] = *(updated - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  sub_1D1E67E1C();
  v3[14] = sub_1D1E67E0C();
  v6 = sub_1D1E67D4C();
  v3[15] = v6;
  v3[16] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D1BF46AC, v6, v5);
}

uint64_t sub_1D1BF46AC()
{
  v1 = *(v0 + 64);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7A0, &qword_1D1EA0438);
  *(v0 + 136) = v2;
  v3 = *(v1 + v2[9]);
  v4 = (v1 + v2[12]);
  v5 = *(v1 + v2[14]);
  *(v0 + 208) = v5;
  v6 = *v4;
  *(v0 + 144) = *v4;
  v7 = v4[1];
  *(v0 + 152) = v7;
  v8 = v4[2];
  *(v0 + 160) = v8;
  v9 = v4[3];
  *(v0 + 168) = v9;
  v10 = swift_task_alloc();
  *(v0 + 176) = v10;
  *v10 = v0;
  v10[1] = sub_1D1BF47E0;
  v11 = *(v0 + 104);

  return sub_1D1BEEFF0(v11, v6, v7, v8, v9, v3, v5);
}

uint64_t sub_1D1BF47E0()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_1D1BF4B28;
  }

  else
  {
    v5 = sub_1D1BF491C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D1BF491C()
{
  v1 = *(*(v0 + 64) + *(*(v0 + 136) + 40));
  v2 = swift_task_alloc();
  *(v0 + 192) = v2;
  *v2 = v0;
  v2[1] = sub_1D1BF49EC;
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  v5 = *(v0 + 144);
  v6 = *(v0 + 152);
  v7 = *(v0 + 208);
  v8 = *(v0 + 96);

  return sub_1D1BEF9D4(v8, v5, v6, v3, v4, v1, v7);
}

uint64_t sub_1D1BF49EC()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_1D1BF4D94;
  }

  else
  {
    v5 = sub_1D1BF4B9C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D1BF4B28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1BF4B9C()
{
  v1 = v0[13];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[7];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643160, &qword_1D1E71F50);
  v5 = *(v3 + 72);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D1E6F900;
  v8 = (v7 + v6);
  *v8 = v4;
  swift_storeEnumTagMultiPayload();
  sub_1D1BFA920(v1, v8 + v5, type metadata accessor for StateSnapshot.UpdateType);
  sub_1D1BFA920(v2, v8 + 2 * v5, type metadata accessor for StateSnapshot.UpdateType);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E73FA0;
  *(inited + 32) = v4;
  v10 = v4;
  v11 = sub_1D1ABB498(v7, inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_1D1BFA9A4(v2, type metadata accessor for StateSnapshot.UpdateType);
  sub_1D1BFA9A4(v1, type metadata accessor for StateSnapshot.UpdateType);

  v12 = v0[1];

  return v12(v11);
}

uint64_t sub_1D1BF4D94()
{
  v1 = *(v0 + 104);

  sub_1D1BFA9A4(v1, type metadata accessor for StateSnapshot.UpdateType);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1BF4E24(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10);
  v3[23] = swift_task_alloc();
  v3[24] = *(type metadata accessor for StateSnapshot.UpdateType(0) - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v5 = sub_1D1E66FDC();
  v3[27] = v5;
  v3[28] = *(v5 - 8);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7A8, &qword_1D1EA0440);
  v3[32] = swift_task_alloc();
  v6 = type metadata accessor for StateSnapshot(0);
  v3[33] = v6;
  v3[34] = *(v6 - 8);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v7 = sub_1D1E66A7C();
  v3[39] = v7;
  v3[40] = *(v7 - 8);
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  type metadata accessor for StaticHome(0);
  v8 = swift_task_alloc();
  v3[48] = v8;
  v9 = swift_task_alloc();
  v3[49] = v9;
  *v9 = v3;
  v9[1] = sub_1D1BF5194;

  return sub_1D1DB11A0(v8, a2, 1);
}

uint64_t sub_1D1BF5194()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  v3 = *(v2 + 176);
  if (v0)
  {
    v4 = sub_1D1BF5BD0;
  }

  else
  {
    v4 = sub_1D1BF52C0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D1BF52C0()
{
  v81 = v0;
  v1 = *(v0 + 384);
  v2 = *(*(v0 + 176) + OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_homeManager);
  *(v0 + 408) = v2;
  v3 = [v2 homes];
  sub_1D1821898();
  v4 = sub_1D1E67C1C();

  v5 = swift_task_alloc();
  *(v5 + 16) = v1;
  v6 = sub_1D174A6C4(sub_1D1BFAA84, v5, v4);
  *(v0 + 416) = v6;

  sub_1D1BFA9A4(v1, type metadata accessor for StaticHome);
  if (v6)
  {
    v7 = *(v0 + 176);
    v8 = [v6 uniqueIdentifier];
    sub_1D1E66A5C();

    swift_beginAccess();
    v9 = *(v7 + 112);
    if (*(v9 + 16) && (v10 = sub_1D1742188(), (v11 & 1) != 0))
    {
      sub_1D1BFA920(*(v9 + 56) + *(*(v0 + 272) + 72) * v10, *(v0 + 376), type metadata accessor for StateSnapshot);
      v12 = 0;
    }

    else
    {
      v12 = 1;
    }

    v13 = *(v0 + 376);
    v14 = *(v0 + 344);
    v15 = *(v0 + 312);
    v16 = *(v0 + 320);
    v17 = *(v0 + 264);
    v18 = *(v0 + 272);
    v19 = *(v18 + 56);
    *(v0 + 424) = v19;
    v19(v13, v12, 1, v17);
    swift_endAccess();
    v20 = *(v16 + 8);
    *(v0 + 432) = v20;
    *(v0 + 440) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v20(v14, v15);
    v21 = *(v18 + 48);
    if (v21(v13, 1, v17) == 1)
    {
      v23 = *(v0 + 248);
      v22 = *(v0 + 256);
      v24 = *(v0 + 224);
      v79 = *(v0 + 216);
      v25 = *(v0 + 168);
      sub_1D1741C08(v25, v22, &qword_1EC642590, qword_1D1E71260);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7A0, &qword_1D1EA0438);
      v27 = (v25 + v26[12]);
      v29 = *v27;
      v28 = v27[1];
      *(v0 + 448) = v28;
      v31 = v27[2];
      v30 = v27[3];
      *(v0 + 456) = v30;
      v32 = *(v25 + v26[13]);
      v33 = v26[15];
      v34 = v23[11];
      *(v0 + 552) = v34;
      (*(v24 + 16))(v22 + v34, v25 + v33, v79);
      v35 = (v22 + v23[9]);
      *v35 = v29;
      v35[1] = v28;
      v35[2] = v31;
      v35[3] = v30;
      *(v22 + v23[10]) = v32;

      v36 = swift_task_alloc();
      *(v0 + 464) = v36;
      *v36 = v0;
      v36[1] = sub_1D1BF5D18;
      v37 = *(v0 + 296);
      v38 = *(v0 + 256);

      return sub_1D1BF1F74(v37, v38);
    }

    else
    {
      v45 = *(v0 + 368);
      v46 = *(v0 + 264);
      sub_1D1741C08(*(v0 + 376), v45, &unk_1EC649E30, &unk_1D1E91250);
      v47 = v21(v45, 1, v46);
      if (v47 == 1)
      {
        __break(1u);
      }

      else
      {
        sub_1D1AFBD48(*(v0 + 368), *(v0 + 296), type metadata accessor for StateSnapshot);
        v50 = *(v0 + 168);
        sub_1D1AFBD48(*(v0 + 296), *(v0 + 304), type metadata accessor for StateSnapshot);
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7A0, &qword_1D1EA0438);
        *(v0 + 480) = v51;
        v52 = *(v50 + *(v51 + 56));
        *(v0 + 556) = v52;
        if (v52 == 1)
        {
          v53 = *(v0 + 416);
          v54 = *(v0 + 168);
          v55 = *(v54 + *(v51 + 36));
          v56 = v51;
          v57 = swift_task_alloc();
          *(v57 + 16) = v54;
          *(v57 + 24) = v53;
          v58 = sub_1D1892678(sub_1D1BFAA6C, v57, v55);

          swift_beginAccess();
          sub_1D1951664(v58);
          swift_endAccess();

          v59 = *(v54 + *(v56 + 40));
          v60 = swift_task_alloc();
          *(v60 + 16) = v54;
          *(v60 + 24) = v53;
          v61 = sub_1D1892678(sub_1D1BFA900, v60, v59);

          swift_beginAccess();
          sub_1D1951664(v61);
          swift_endAccess();
        }

        if (qword_1EE07A098 != -1)
        {
          swift_once();
        }

        v62 = *(v0 + 416);
        v63 = sub_1D1E6709C();
        *(v0 + 488) = __swift_project_value_buffer(v63, qword_1EE0813C8);
        v64 = v62;
        v65 = sub_1D1E6707C();
        v66 = sub_1D1E6835C();

        if (os_log_type_enabled(v65, v66))
        {
          v67 = *(v0 + 432);
          v68 = *(v0 + 416);
          v69 = *(v0 + 336);
          v70 = *(v0 + 312);
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v80 = v72;
          *v71 = 136315138;
          v73 = [v68 uniqueIdentifier];
          sub_1D1E66A5C();

          sub_1D1BFA898(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
          v74 = sub_1D1E68FAC();
          v76 = v75;
          v67(v69, v70);
          v77 = sub_1D1B1312C(v74, v76, &v80);

          *(v71 + 4) = v77;
          _os_log_impl(&dword_1D16EC000, v65, v66, "updateDetailedState(detailed:) HM:{%s} prepared snapshot", v71, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v72);
          MEMORY[0x1D3893640](v72, -1, -1);
          MEMORY[0x1D3893640](v71, -1, -1);
        }

        if (qword_1EC642488 != -1)
        {
          swift_once();
        }

        v78 = sub_1D1E6701C();
        *(v0 + 496) = __swift_project_value_buffer(v78, qword_1EC6BE2B8);
        sub_1D1E66FCC();
        v47 = sub_1D1BF5EA0;
        v48 = 0;
        v49 = 0;
      }

      return MEMORY[0x1EEE6DFA0](v47, v48, v49);
    }
  }

  else
  {
    v40 = *(v0 + 168);
    type metadata accessor for WidgetSnapshotModerator.Error(0);
    sub_1D1BFA898(&qword_1EC64C7B0, type metadata accessor for WidgetSnapshotModerator.Error, &protocol conformance descriptor for WidgetSnapshotModerator.Error);
    swift_allocError();
    v42 = v41;
    sub_1D1741C08(v40, v41, &qword_1EC642590, qword_1D1E71260);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
    (*(*(v43 - 8) + 56))(v42, 0, 4, v43);
    swift_willThrow();

    v44 = *(v0 + 8);

    return v44();
  }
}

uint64_t sub_1D1BF5BD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1BF5D18()
{
  v2 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    v3 = *(v2 + 176);
    v4 = sub_1D1BF7474;
  }

  else
  {
    v5 = *(v2 + 552);
    v6 = *(v2 + 256);
    v7 = *(v2 + 216);
    v8 = *(v2 + 224);
    v9 = *(v2 + 176);
    sub_1D1741A30(v6, &qword_1EC642590, qword_1D1E71260);

    (*(v8 + 8))(v6 + v5, v7);
    v4 = sub_1D1BF70AC;
    v3 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D1BF5EA0(uint64_t a1)
{
  v2 = sub_1D1E66FFC();
  v3 = sub_1D1E683EC();
  if (sub_1D1E6855C())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v2, v3, v5, "Widget.MergedSnapshotUpdate", "", v4, 2u);
    MEMORY[0x1D3893640](v4, -1, -1);
  }

  v6 = v1[52];
  v8 = v1[29];
  v7 = v1[30];
  v9 = v1[27];
  v10 = v1[28];

  (*(v10 + 16))(v8, v7, v9);
  sub_1D1E6705C();
  swift_allocObject();
  v1[63] = sub_1D1E6704C();
  v11 = swift_task_alloc();
  v1[64] = v11;
  *v11 = v1;
  v11[1] = sub_1D1BF6014;
  v12 = v1[21];

  return sub_1D1BF45A8(v6, v12);
}

uint64_t sub_1D1BF6014(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 520) = a1;
  *(v3 + 528) = v1;

  if (v1)
  {
    v4 = sub_1D1BF640C;
  }

  else
  {
    v4 = sub_1D1BF612C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D1BF612C()
{
  v1 = *(v0 + 520);
  v2 = sub_1D1BFA920(*(v0 + 304), *(v0 + 280), type metadata accessor for StateSnapshot);
  v31 = *(v1 + 16);
  v32 = v1;
  if (v31)
  {
    v5 = 0;
    v29 = *(v0 + 192);
    v30 = *(v0 + 480);
    while (v5 < *(v32 + 16))
    {
      v10 = *(v0 + 424);
      v11 = *(v0 + 360);
      v12 = *(v0 + 280);
      v13 = *(v0 + 264);
      v15 = *(v0 + 200);
      v14 = *(v0 + 208);
      v16 = *(v0 + 168);
      sub_1D1BFA920(*(v0 + 520) + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v5, v14, type metadata accessor for StateSnapshot.UpdateType);
      sub_1D1BFA920(v14, v15, type metadata accessor for StateSnapshot.UpdateType);
      sub_1D1AFBD48(v12, v11, type metadata accessor for StateSnapshot);
      v10(v11, 0, 1, v13);
      v18 = *(v0 + 408);
      v17 = *(v0 + 416);
      if ((*(v16 + *(v30 + 52)) & 0x61) != 0)
      {
        v19 = qword_1EE07CD90;
        v20 = v17;
        v21 = v18;
        if (v19 != -1)
        {
          swift_once();
        }

        v8 = qword_1EE07CD98;
      }

      else
      {
        v6 = v17;
        v7 = v18;
        v8 = sub_1D179B6E8(&unk_1F4D65068);
        swift_arrayDestroy();
      }

      ++v5;
      v9 = *(v0 + 208);
      StateSnapshot.init(updateType:homeManager:home:previousStateSnapshot:coverages:)(*(v0 + 200), *(v0 + 408), *(v0 + 416), *(v0 + 360), v8, *(v0 + 280));
      v2 = sub_1D1BFA9A4(v9, type metadata accessor for StateSnapshot.UpdateType);
      if (v31 == v5)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v23 = *(v0 + 280);
    v22 = *(v0 + 288);
    v24 = *(v0 + 240);
    v25 = *(v0 + 216);
    v26 = *(v0 + 224);
    v27 = *(v0 + 176);

    sub_1D1AFBD48(v23, v22, type metadata accessor for StateSnapshot);
    sub_1D1760838();

    (*(v26 + 8))(v24, v25);
    v2 = sub_1D1BF6650;
    v3 = v27;
    v4 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D1BF640C()
{
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[22];
  sub_1D1760838();

  (*(v3 + 8))(v1, v2);

  return MEMORY[0x1EEE6DFA0](sub_1D1BF64C4, v4, 0);
}

uint64_t sub_1D1BF64C4()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 304);

  sub_1D1741A30(v1, &unk_1EC649E30, &unk_1D1E91250);
  sub_1D1BFA9A4(v2, type metadata accessor for StateSnapshot);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D1BF6650()
{
  v50 = v0;
  v1 = *(v0 + 416);
  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6835C();

  v4 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 432);
    v6 = *(v0 + 416);
    v7 = *(v0 + 336);
    v8 = *(v0 + 312);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v49 = v10;
    *v9 = 136315138;
    v11 = [v6 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1BFA898(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v12 = sub_1D1E68FAC();
    v14 = v13;
    v5(v7, v8);
    v15 = sub_1D1B1312C(v12, v14, &v49);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_1D16EC000, v2, v3, "updateDetailedState(detailed:) HM:{%s} updated snapshot", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    v16 = v10;
    v4 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
    MEMORY[0x1D3893640](v16, -1, -1);
    MEMORY[0x1D3893640](v9, -1, -1);
  }

  v48 = *(v0 + 480);
  v17 = *(v0 + 424);
  v18 = *(v0 + 352);
  v19 = *(v0 + 336);
  v20 = *(v0 + 288);
  v21 = *(v0 + 264);
  v22 = *(v0 + 168);
  v23 = [*(v0 + 416) v4[61]];
  sub_1D1E66A5C();

  sub_1D1BFA920(v20, v18, type metadata accessor for StateSnapshot);
  v17(v18, 0, 1, v21);
  swift_beginAccess();
  sub_1D1B0D344(v18, v19);
  swift_endAccess();
  if ((*(v22 + *(v48 + 52)) & 0x1000001) != 0)
  {
    if (*(v0 + 556) == 1)
    {
      v24 = *(v0 + 416);
      v25 = *(v0 + 168);
      v26 = *(v25 + *(*(v0 + 480) + 44));
      v27 = swift_task_alloc();
      *(v27 + 16) = v25;
      *(v27 + 24) = v24;
      v28 = sub_1D1892878(sub_1D1BFA8E0, v27, v26);

      swift_beginAccess();
      sub_1D195168C(v28);
      swift_endAccess();
    }

    v29 = *(v0 + 480);
    v30 = *(v0 + 416);
    v31 = *(v0 + 168);
    v32 = [v30 uniqueIdentifier];
    sub_1D1E66A5C();

    v33 = (v31 + *(v29 + 48));
    v34 = *(v31 + *(v29 + 44));
    v35 = *v33;
    v36 = v33[1];
    v37 = v33[2];
    v38 = v33[3];
    v39 = swift_task_alloc();
    *(v0 + 536) = v39;
    *v39 = v0;
    v39[1] = sub_1D1BF6BBC;
    v40 = *(v0 + 556);
    v41 = *(v0 + 184);

    return sub_1D1BF0558(v41, v30, v35, v36, v37, v38, v40, v34);
  }

  else
  {
    v43 = *(v0 + 376);
    v44 = *(v0 + 304);
    v45 = *(v0 + 288);
    v46 = *(v0 + 160);

    sub_1D1741A30(v43, &unk_1EC649E30, &unk_1D1E91250);
    sub_1D1AFBD48(v45, v46, type metadata accessor for StateSnapshot);
    sub_1D1BFA9A4(v44, type metadata accessor for StateSnapshot);

    v47 = *(v0 + 8);

    return v47();
  }
}

uint64_t sub_1D1BF6BBC()
{
  v2 = *v1;
  *(*v1 + 544) = v0;

  if (v0)
  {
    v3 = *(v2 + 176);
    (*(v2 + 432))(*(v2 + 328), *(v2 + 312));
    v4 = sub_1D1BF6F0C;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 176);
    v4 = sub_1D1BF6CEC;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, 0);
}

uint64_t sub_1D1BF6CEC()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 184);
  v3 = type metadata accessor for MatterStateSnapshot(0);
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  swift_beginAccess();
  sub_1D1B0E5E8(v2, v1);
  swift_endAccess();
  v4 = *(v0 + 376);
  v5 = *(v0 + 304);
  v6 = *(v0 + 288);
  v7 = *(v0 + 160);

  sub_1D1741A30(v4, &unk_1EC649E30, &unk_1D1E91250);
  sub_1D1AFBD48(v6, v7, type metadata accessor for StateSnapshot);
  sub_1D1BFA9A4(v5, type metadata accessor for StateSnapshot);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1D1BF6F0C()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 304);
  v3 = *(v0 + 288);

  sub_1D1BFA9A4(v3, type metadata accessor for StateSnapshot);
  sub_1D1741A30(v1, &unk_1EC649E30, &unk_1D1E91250);
  sub_1D1BFA9A4(v2, type metadata accessor for StateSnapshot);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D1BF70AC()
{
  v32 = v0;
  v1 = *(v0 + 168);
  sub_1D1AFBD48(*(v0 + 296), *(v0 + 304), type metadata accessor for StateSnapshot);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7A0, &qword_1D1EA0438);
  *(v0 + 480) = v2;
  v3 = *(v1 + *(v2 + 56));
  *(v0 + 556) = v3;
  if (v3 == 1)
  {
    v4 = *(v0 + 416);
    v5 = *(v0 + 168);
    v6 = *(v5 + *(v2 + 36));
    v7 = v2;
    v8 = swift_task_alloc();
    *(v8 + 16) = v5;
    *(v8 + 24) = v4;
    v9 = sub_1D1892678(sub_1D1BFAA6C, v8, v6);

    swift_beginAccess();
    sub_1D1951664(v9);
    swift_endAccess();

    v10 = *(v5 + *(v7 + 40));
    v11 = swift_task_alloc();
    *(v11 + 16) = v5;
    *(v11 + 24) = v4;
    v12 = sub_1D1892678(sub_1D1BFA900, v11, v10);

    swift_beginAccess();
    sub_1D1951664(v12);
    swift_endAccess();
  }

  if (qword_1EE07A098 != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 416);
  v14 = sub_1D1E6709C();
  *(v0 + 488) = __swift_project_value_buffer(v14, qword_1EE0813C8);
  v15 = v13;
  v16 = sub_1D1E6707C();
  v17 = sub_1D1E6835C();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = *(v0 + 432);
    v19 = *(v0 + 416);
    v20 = *(v0 + 336);
    v21 = *(v0 + 312);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v31 = v23;
    *v22 = 136315138;
    v24 = [v19 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1BFA898(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v25 = sub_1D1E68FAC();
    v27 = v26;
    v18(v20, v21);
    v28 = sub_1D1B1312C(v25, v27, &v31);

    *(v22 + 4) = v28;
    _os_log_impl(&dword_1D16EC000, v16, v17, "updateDetailedState(detailed:) HM:{%s} prepared snapshot", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1D3893640](v23, -1, -1);
    MEMORY[0x1D3893640](v22, -1, -1);
  }

  if (qword_1EC642488 != -1)
  {
    swift_once();
  }

  v29 = sub_1D1E6701C();
  *(v0 + 496) = __swift_project_value_buffer(v29, qword_1EC6BE2B8);
  sub_1D1E66FCC();

  return MEMORY[0x1EEE6DFA0](sub_1D1BF5EA0, 0, 0);
}

uint64_t sub_1D1BF7474()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 376);
  v3 = *(v0 + 256);
  v4 = *(v0 + 216);
  v5 = *(v0 + 224);

  sub_1D1741A30(v2, &unk_1EC649E30, &unk_1D1E91250);
  sub_1D1741A30(v3, &qword_1EC642590, qword_1D1E71260);

  (*(v5 + 8))(v3 + v1, v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1D1BF7630(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v3[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7A0, &qword_1D1EA0438);
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v4 = sub_1D1E66A7C();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1BF77B0, v2, 0);
}

uint64_t sub_1D1BF77B0()
{
  v26 = v0;
  v1 = **(v0 + 56);
  *(v0 + 168) = v1;
  v25 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
LABEL_42:
    v2 = sub_1D1E6873C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v0 + 176) = v1 & 0xFFFFFFFFFFFFFF8;
  if (!v2)
  {
    v3 = MEMORY[0x1E69E7CC0];
    goto LABEL_28;
  }

  v0 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    v4 = v0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1D3891EF0](v4, v1);
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v5 = *(v1 + 8 * v4 + 32);
      }

      v6 = v5;
      v0 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7 || (objc_opt_self(), (v7 = swift_dynamicCastObjCClass()) != 0))
      {
        v8 = [v7 actionSet];
        v9 = [v8 home];
      }

      else
      {
        objc_opt_self();
        v11 = swift_dynamicCastObjCClass();
        if (!v11)
        {
          type metadata accessor for MatterExecuteRequest();
          swift_dynamicCastClass();
LABEL_21:

          goto LABEL_14;
        }

        v12 = [v11 characteristic];
        v13 = [v12 service];

        if (!v13)
        {
          goto LABEL_21;
        }

        v8 = [v13 accessory];

        if (!v8)
        {
          goto LABEL_21;
        }

        v9 = [v8 home];
      }

      v10 = v9;

      if (v10)
      {
        break;
      }

LABEL_14:
      ++v4;
      if (v0 == v2)
      {
        goto LABEL_28;
      }
    }

    MEMORY[0x1D3891220]();
    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D1E67C5C();
    }

    sub_1D1E67CAC();
    v3 = v25;
  }

  while (v0 != v2);
LABEL_28:
  v14 = sub_1D1785278(v3);
  v24[23] = v14;

  if ((v14 & 0xC000000000000001) != 0)
  {
    if (sub_1D1E6873C() < 2)
    {
      goto LABEL_37;
    }
  }

  else if (*(v14 + 16) < 2)
  {
    goto LABEL_37;
  }

  if (qword_1EE07A098 != -1)
  {
    swift_once();
  }

  v15 = sub_1D1E6709C();
  __swift_project_value_buffer(v15, qword_1EE0813C8);
  v16 = sub_1D1E6707C();
  v17 = sub_1D1E6833C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_1D1B1312C(0xD000000000000019, 0x80000001D1EC6750, &v25);
    _os_log_impl(&dword_1D16EC000, v16, v17, "%s Write requested with accessories from multiple homes. This is undefined behavior.", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1D3893640](v19, -1, -1);
    MEMORY[0x1D3893640](v18, -1, -1);
  }

LABEL_37:
  v20 = swift_task_alloc();
  v24[24] = v20;
  *v20 = v24;
  v20[1] = sub_1D1BF7C20;
  v21 = v24[20];
  v22 = v24[8];

  return sub_1D1DC07C0(v21, v14, v22);
}

uint64_t sub_1D1BF7C20()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 64);

  if (v0)
  {
    v4 = sub_1D1BF8338;
  }

  else
  {
    v4 = sub_1D1BF7D68;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D1BF7D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (v3[21] >> 62)
  {
    v4 = sub_1D1E6873C();
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v6 = v3[17];
      v7 = (v6 + 48);
      v47 = v6;
      v49 = (v6 + 32);
      v51 = (v6 + 56);
      v8 = MEMORY[0x1E69E7CC0];
      v53 = v4;
      while (1)
      {
        v9 = v3[21];
        if ((v9 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x1D3891EF0](v5);
        }

        else
        {
          if (v5 >= *(v3[22] + 16))
          {
            goto LABEL_48;
          }

          v4 = *(v9 + 8 * v5 + 32);
        }

        v10 = v4;
        v11 = (v5 + 1);
        if (__OFADD__(v5, 1))
        {
          break;
        }

        objc_opt_self();
        v12 = swift_dynamicCastObjCClass();
        if (v12 || (objc_opt_self(), (v12 = swift_dynamicCastObjCClass()) != 0))
        {
          v13 = [v12 actionSet];
          v14 = [v13 uniqueIdentifier];

          sub_1D1E66A5C();
          v15 = 0;
        }

        else
        {
          v15 = 1;
        }

        v17 = v3[15];
        v16 = v3[16];
        v18 = v3[14];

        (*v51)(v18, v15, 1, v16);
        sub_1D1741A90(v18, v17, &qword_1EC642590, qword_1D1E71260);
        if ((*v7)(v17, 1, v16) == 1)
        {
          v4 = sub_1D1741A30(v3[15], &qword_1EC642590, qword_1D1E71260);
        }

        else
        {
          v19 = *v49;
          (*v49)(v3[19], v3[15], v3[16]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1D177D0AC(0, *(v8 + 2) + 1, 1, v8);
          }

          v21 = *(v8 + 2);
          v20 = *(v8 + 3);
          if (v21 >= v20 >> 1)
          {
            v8 = sub_1D177D0AC((v20 > 1), v21 + 1, 1, v8);
          }

          v22 = v3[19];
          v23 = v3[16];
          *(v8 + 2) = v21 + 1;
          v4 = v19(&v8[((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v21], v22, v23);
        }

        ++v5;
        if (v11 == v53)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }
  }

  else
  {
    v4 = *(v3[22] + 16);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_23:
  v3[26] = v8;
  if (v3[21] >> 62)
  {
    v4 = sub_1D1E6873C();
    v24 = v4;
    if (v4)
    {
LABEL_25:
      v25 = 0;
      v26 = v3[17];
      v50 = (v26 + 48);
      v52 = (v26 + 56);
      v46 = v26;
      v48 = (v26 + 32);
      v54 = MEMORY[0x1E69E7CC0];
      v27 = qword_1D1E71260;
      while (1)
      {
        v9 = v3[21];
        if ((v9 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x1D3891EF0](v25);
        }

        else
        {
          if (v25 >= *(v3[22] + 16))
          {
            goto LABEL_50;
          }

          v4 = *(v9 + 8 * v25 + 32);
        }

        v28 = v4;
        v29 = (v25 + 1);
        if (__OFADD__(v25, 1))
        {
          break;
        }

        v30 = v27;
        objc_opt_self();
        v31 = swift_dynamicCastObjCClass();
        if (v31)
        {
          v32 = [v31 characteristic];
          v33 = [v32 uniqueIdentifier];

          sub_1D1E66A5C();
          v34 = 0;
        }

        else
        {
          v34 = 1;
        }

        v35 = v3[16];
        v36 = v3[12];
        v37 = v3[13];

        (*v52)(v36, v34, 1, v35);
        v27 = v30;
        sub_1D1741A90(v36, v37, &qword_1EC642590, v30);
        if ((*v50)(v37, 1, v35) == 1)
        {
          v4 = sub_1D1741A30(v3[13], &qword_1EC642590, v30);
        }

        else
        {
          v38 = *v48;
          (*v48)(v3[18], v3[13], v3[16]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v54 = sub_1D177D0AC(0, *(v54 + 2) + 1, 1, v54);
          }

          v40 = *(v54 + 2);
          v39 = *(v54 + 3);
          if (v40 >= v39 >> 1)
          {
            v54 = sub_1D177D0AC((v39 > 1), v40 + 1, 1, v54);
          }

          v41 = v3[18];
          v42 = v3[16];
          *(v54 + 2) = v40 + 1;
          v4 = v38(&v54[((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v40], v41, v42);
          v27 = v30;
        }

        ++v25;
        if (v29 == v24)
        {
          goto LABEL_44;
        }
      }

LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v4, v9, a3);
    }
  }

  else
  {
    v24 = *(v3[22] + 16);
    if (v24)
    {
      goto LABEL_25;
    }
  }

  v54 = MEMORY[0x1E69E7CC0];
LABEL_44:
  v3[27] = v54;
  v3[28] = *(v3[8] + OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_widgetManager);
  sub_1D1E67E1C();
  v3[29] = sub_1D1E67E0C();
  v43 = sub_1D1E67D4C();
  a3 = v44;
  v3[30] = v43;
  v3[31] = v44;
  v4 = sub_1D1BF840C;
  v9 = v43;

  return MEMORY[0x1EEE6DFA0](v4, v9, a3);
}

uint64_t sub_1D1BF8338()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1BF840C()
{
  v1 = v0[7];
  v0[5] = v0[28];
  v2 = *(v1 + 24);
  v0[32] = v2;
  v3 = *(v1 + 32);
  v0[33] = v3;
  v4 = swift_task_alloc();
  v0[34] = v4;
  *v4 = v0;
  v4[1] = sub_1D1BF84D4;
  v5 = v0[21];

  return WidgetManager.perform(_:forKind:)(v5, v2, v3);
}

uint64_t sub_1D1BF84D4()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {

    v3 = *(v2 + 240);
    v4 = *(v2 + 248);
    v5 = sub_1D1BF8AD0;
  }

  else
  {
    v3 = *(v2 + 240);
    v4 = *(v2 + 248);
    v5 = sub_1D1BF85F8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D1BF85F8()
{
  v1 = *(v0 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1D1BF8664, v1, 0);
}

uint64_t sub_1D1BF8664()
{
  v24 = *(v0 + 256);
  v25 = *(v0 + 264);
  v26 = *(v0 + 216);
  v27 = *(v0 + 208);
  v23 = *(v0 + 160);
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = *(v0 + 56);
  swift_beginAccess();
  v8 = *(v5 + 144);
  v9 = swift_task_alloc();
  *(v9 + 16) = v7;

  v10 = sub_1D1B525A0(sub_1D1BFAA34, v9, v8);

  v11 = sub_1D1DAD26C(v10);
  *(v0 + 288) = v11;

  (*(v1 + 16))(v4, v23, v2);
  (*(v1 + 56))(v4, 0, 1, v2);
  v12 = *(v7 + 8);
  v13 = *(v7 + 16);
  *(v0 + 296) = v13;
  LODWORD(v1) = *(v7 + 40);
  v14 = (v3 + v6[12]);
  *v14 = v12;
  v14[1] = v13;
  v14[2] = v24;
  v14[3] = v25;
  sub_1D1741C08(v4, v3, &qword_1EC642590, qword_1D1E71260);
  *(v3 + v6[9]) = v26;
  *(v3 + v6[10]) = v27;
  *(v3 + v6[11]) = v11;
  *(v3 + v6[14]) = 1;
  *(v3 + v6[13]) = v1;
  v15 = qword_1EC642488;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 88);
  v17 = *(v0 + 72);
  v18 = sub_1D1E6701C();
  __swift_project_value_buffer(v18, qword_1EC6BE2B8);
  *(v0 + 320) = *(v17 + 60);
  sub_1D1E66FFC();
  sub_1D1E66FAC();
  sub_1D1741A30(v16, &qword_1EC642590, qword_1D1E71260);
  v19 = swift_task_alloc();
  *(v0 + 304) = v19;
  *v19 = v0;
  v19[1] = sub_1D1BF890C;
  v20 = *(v0 + 80);
  v21 = *(v0 + 48);

  return sub_1D1BF4E24(v21, v20);
}

uint64_t sub_1D1BF890C()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = sub_1D1BF8D18;
  }

  else
  {
    v5 = *(v2 + 320);
    v6 = *(v2 + 80);
    v7 = *(v2 + 64);
    sub_1D1741A30(v6, &qword_1EC642590, qword_1D1E71260);

    v8 = sub_1D1E66FDC();
    (*(*(v8 - 8) + 8))(v6 + v5, v8);
    v4 = sub_1D1BF8C28;
    v3 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D1BF8AD0()
{
  v1 = *(v0 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1D1BF8B3C, v1, 0);
}

uint64_t sub_1D1BF8B3C()
{
  (*(v0[17] + 8))(v0[20], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D1BF8C28()
{
  (*(v0[17] + 8))(v0[20], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D1BF8D18()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 80);
  (*(*(v0 + 136) + 8))(*(v0 + 160), *(v0 + 128));
  sub_1D1741A30(v2, &qword_1EC642590, qword_1D1E71260);

  v3 = sub_1D1E66FDC();
  (*(*(v3 - 8) + 8))(v2 + v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D1BF8E90(void *a1, void *a2)
{
  v4 = a2[1];
  v5 = a2[2];
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  if (v4 == (*(v7 + 8))(v6, v7) && v5 == v8)
  {
  }

  else
  {
    v10 = sub_1D1E6904C();

    v11 = 0;
    if ((v10 & 1) == 0)
    {
      return v11 & 1;
    }
  }

  v13 = a2[3];
  v12 = a2[4];
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  if (v13 == (*(v15 + 16))(v14, v15) && v12 == v16)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D1E6904C();
  }

  return v11 & 1;
}

uint64_t sub_1D1BF8FC0(uint64_t a1, uint64_t a2, double a3)
{
  v4[4] = a2;
  v4[5] = v3;
  v4[3] = a1;
  v4[6] = type metadata accessor for WidgetSnapshotModerator.Error(0);
  v4[7] = swift_task_alloc();
  type metadata accessor for StateSnapshot(0);
  v4[8] = swift_task_alloc();
  v6 = swift_task_alloc();
  v4[9] = v6;
  *v6 = v4;
  v6[1] = sub_1D1BF90BC;

  return WidgetSnapshotModerator.updateHomes(timeout:)(a3);
}

uint64_t sub_1D1BF90BC()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_1D1BF9370;
  }

  else
  {
    v4 = sub_1D1BF91E8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D1BF91E8()
{
  v0[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646090, &qword_1D1E7E4C8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v7 = sub_1D1BF4E24;
      v2 = swift_task_alloc();
      v0[14] = v2;
      *v2 = v0;
      v3 = sub_1D1BF98A8;
    }

    else
    {
      v7 = sub_1D1BF7630;
      v2 = swift_task_alloc();
      v0[16] = v2;
      *v2 = v0;
      v3 = sub_1D1BF99D4;
    }
  }

  else
  {
    v7 = sub_1D1BF1F74;
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v3 = sub_1D1BF977C;
  }

  v2[1] = v3;
  v4 = v0[8];
  v5 = v0[4];

  return v7(v4, v5);
}

uint64_t sub_1D1BF9370()
{
  v1 = *(v0 + 80);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 56);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
    *(v0 + 144) = v4;
    v5 = *(v4 - 8);
    *(v0 + 152) = v5;
    if ((*(v5 + 48))(v3, 4, v4) == 4)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646090, &qword_1D1E7E4C8);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v7 = *(v0 + 32);
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          v17 = v7 + 1;
          v18 = v7 + 2;
          v19 = v7 + 3;
          v20 = v7 + 4;
          goto LABEL_18;
        }

        v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7A0, &qword_1D1EA0438) + 48);
      }

      else
      {
        v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7A8, &qword_1D1EA0440) + 36);
      }

      v17 = (v7 + v8);
      v18 = v17 + 1;
      v19 = v17 + 2;
      v20 = v17 + 3;
LABEL_18:
      v21 = *v19;
      v22 = *v18;
      v23 = *v17;
      v24 = *v20;

      v25 = swift_task_alloc();
      *(v0 + 160) = v25;
      *v25 = v0;
      v25[1] = sub_1D1BFA280;

      return sub_1D1BEE784(v23, v22, v21, v24);
    }

    sub_1D1BFA9A4(v3, type metadata accessor for WidgetSnapshotModerator.Error);
  }

  v9 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646090, &qword_1D1E7E4C8);
  v10 = swift_getEnumCaseMultiPayload();
  if (v10)
  {
    if (v10 == 1)
    {
      sub_1D1741A30(v9, &qword_1EC642590, qword_1D1E71260);
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7A0, &qword_1D1EA0438);

      v12 = *(v11 + 60);
    }

    else
    {

      v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646098, &unk_1D1E7E4D0) + 44);
    }
  }

  else
  {
    sub_1D1741A30(v9, &qword_1EC642590, qword_1D1E71260);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7A8, &qword_1D1EA0440);

    v12 = *(v13 + 44);
  }

  v14 = sub_1D1E66FDC();
  (*(*(v14 - 8) + 8))(v9 + v12, v14);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1D1BF977C()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_1D1BF9B00;
  }

  else
  {
    v4 = sub_1D1BFAAB0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D1BF98A8()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_1D1BF9CDC;
  }

  else
  {
    v4 = sub_1D1BFAAB0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D1BF99D4()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_1D1BFA0A4;
  }

  else
  {
    v4 = sub_1D1BF9EB8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D1BF9B00()
{
  v1 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646090, &qword_1D1E7E4C8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D1741A30(v1, &qword_1EC642590, qword_1D1E71260);
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7A0, &qword_1D1EA0438);

      v4 = *(v3 + 60);
    }

    else
    {

      v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646098, &unk_1D1E7E4D0) + 44);
    }
  }

  else
  {
    sub_1D1741A30(v1, &qword_1EC642590, qword_1D1E71260);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7A8, &qword_1D1EA0440);

    v4 = *(v5 + 44);
  }

  v6 = sub_1D1E66FDC();
  (*(*(v6 - 8) + 8))(v1 + v4, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1D1BF9CDC()
{
  v1 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646090, &qword_1D1E7E4C8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D1741A30(v1, &qword_1EC642590, qword_1D1E71260);
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7A0, &qword_1D1EA0438);

      v4 = *(v3 + 60);
    }

    else
    {

      v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646098, &unk_1D1E7E4D0) + 44);
    }
  }

  else
  {
    sub_1D1741A30(v1, &qword_1EC642590, qword_1D1E71260);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7A8, &qword_1D1EA0440);

    v4 = *(v5 + 44);
  }

  v6 = sub_1D1E66FDC();
  (*(*(v6 - 8) + 8))(v1 + v4, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1D1BF9EB8()
{
  sub_1D1AFBD48(v0[8], v0[3], type metadata accessor for StateSnapshot);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[4];
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D1741A30(v0[4], &qword_1EC642590, qword_1D1E71260);
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7A0, &qword_1D1EA0438);

      v4 = *(v3 + 60);
    }

    else
    {

      v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646098, &unk_1D1E7E4D0) + 44);
    }
  }

  else
  {
    sub_1D1741A30(v0[4], &qword_1EC642590, qword_1D1E71260);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7A8, &qword_1D1EA0440);

    v4 = *(v5 + 44);
  }

  v6 = sub_1D1E66FDC();
  (*(*(v6 - 8) + 8))(v2 + v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D1BFA0A4()
{
  v1 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646090, &qword_1D1E7E4C8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D1741A30(v1, &qword_1EC642590, qword_1D1E71260);
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7A0, &qword_1D1EA0438);

      v4 = *(v3 + 60);
    }

    else
    {

      v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646098, &unk_1D1E7E4D0) + 44);
    }
  }

  else
  {
    sub_1D1741A30(v1, &qword_1EC642590, qword_1D1E71260);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7A8, &qword_1D1EA0440);

    v4 = *(v5 + 44);
  }

  v6 = sub_1D1E66FDC();
  (*(*(v6 - 8) + 8))(v1 + v4, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1D1BFA280()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1D1BFA390, v1, 0);
}

uint64_t sub_1D1BFA390()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  sub_1D1BFA898(&qword_1EC64C7B0, type metadata accessor for WidgetSnapshotModerator.Error, &protocol conformance descriptor for WidgetSnapshotModerator.Error);
  swift_allocError();
  (*(v2 + 56))(v3, 4, 4, v1);
  swift_willThrow();

  v4 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646090, &qword_1D1E7E4C8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D1741A30(v4, &qword_1EC642590, qword_1D1E71260);
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7A0, &qword_1D1EA0438);

      v7 = *(v6 + 60);
    }

    else
    {

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646098, &unk_1D1E7E4D0) + 44);
    }
  }

  else
  {
    sub_1D1741A30(v4, &qword_1EC642590, qword_1D1E71260);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7A8, &qword_1D1EA0440);

    v7 = *(v8 + 44);
  }

  v9 = sub_1D1E66FDC();
  (*(*(v9 - 8) + 8))(v4 + v7, v9);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1D1BFA5F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7A0, &qword_1D1EA0438) + 48));
  *(a4 + 3) = &type metadata for BasicIdentity;
  *(a4 + 4) = &protocol witness table for BasicIdentity;
  v8 = swift_allocObject();
  *a4 = v8;
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];
  v8[2] = *v7;
  v8[3] = v9;
  v8[4] = v10;
  v8[5] = v11;

  v12 = [a3 uniqueIdentifier];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643010, &qword_1D1E90E20);
  sub_1D1E66A5C();

  v14 = *(v13 + 40);
  v15 = sub_1D1E66A7C();
  return (*(*(v15 - 8) + 16))(&a4[v14], a1, v15);
}

void sub_1D1BFA728(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v6 = *a1;
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7A0, &qword_1D1EA0438) + 48));
  a4[3] = &type metadata for BasicIdentity;
  a4[4] = &protocol witness table for BasicIdentity;
  v8 = swift_allocObject();
  *a4 = v8;
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];
  v8[2] = *v7;
  v8[3] = v9;
  v8[4] = v10;
  v8[5] = v11;

  v12 = [a3 uniqueIdentifier];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643018, &qword_1D1E9AC00);
  sub_1D1E66A5C();

  *(a4 + *(v13 + 40)) = v6;
}

unint64_t sub_1D1BFA824()
{
  result = qword_1EC64C798;
  if (!qword_1EC64C798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C798);
  }

  return result;
}

uint64_t sub_1D1BFA898(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D1BFA920(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1BFA9A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D1BFAAF4(uint64_t a1, unint64_t *a2, void *a3, unint64_t *a4)
{
  v6 = a1;
  v7 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = MEMORY[0x1E69E7CD0];
    goto LABEL_6;
  }

  if (!sub_1D1E6873C())
  {
    goto LABEL_5;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643070, &unk_1D1EA0D80);
  v8 = sub_1D1E6882C();
LABEL_6:
  if (sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8) == MEMORY[0x1E69E6158])
  {
    if (v7)
    {

      sub_1D1E686EC();
      sub_1D1741B10(0, a2, a3);
      sub_1D1771944(a4, a2, a3);
      sub_1D1E681BC();
      v6 = v46;
      v13 = v47;
      v14 = v48;
      v15 = v49;
      v16 = v50;
    }

    else
    {
      v35 = -1 << *(v6 + 32);
      v13 = v6 + 56;
      v14 = ~v35;
      v36 = -v35;
      if (v36 < 64)
      {
        v37 = ~(-1 << v36);
      }

      else
      {
        v37 = -1;
      }

      v16 = v37 & *(v6 + 56);

      v15 = 0;
    }

    while ((v6 & 0x8000000000000000) == 0)
    {
      if (v16)
      {
        v38 = v15;
        goto LABEL_44;
      }

      v41 = v15;
      do
      {
        v38 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          goto LABEL_60;
        }

        if (v38 >= ((v14 + 64) >> 6))
        {
          v42 = v6;
          goto LABEL_56;
        }

        v16 = *(v13 + 8 * v38);
        ++v41;
      }

      while (!v16);
      v15 = v38;
LABEL_44:
      v39 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v40 = *(*(v6 + 48) + ((v38 << 9) | (8 * v39)));
LABEL_45:
      sub_1D1C05F8C(v40);
    }

    if (sub_1D1E6877C())
    {
      sub_1D1741B10(0, a2, a3);
      swift_dynamicCast();
      v40 = v45;
      goto LABEL_45;
    }

    v42 = v6;
LABEL_56:
    sub_1D1716918(v42);
LABEL_57:

    return;
  }

  v43 = a3;
  if (v7)
  {

    sub_1D1E686EC();
    sub_1D1741B10(0, a2, a3);
    sub_1D1771944(a4, a2, a3);
    sub_1D1E681BC();
    v6 = v46;
    v9 = v47;
    v10 = v48;
    v11 = v49;
    v12 = v50;
  }

  else
  {
    v17 = -1 << *(v6 + 32);
    v9 = v6 + 56;
    v10 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v12 = v19 & *(v6 + 56);

    v11 = 0;
  }

  v20 = (v10 + 64) >> 6;
  v21 = v8 + 56;
  while (v6 < 0)
  {
    if (!sub_1D1E6877C())
    {
LABEL_38:
      sub_1D1716918(v6);
      goto LABEL_57;
    }

    sub_1D1741B10(0, a2, v43);
    swift_dynamicCast();
    v24 = v45;
LABEL_29:
    v27 = sub_1D1E684EC();
    v28 = -1 << *(v8 + 32);
    v29 = v27 & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v21 + 8 * (v29 >> 6))) != 0)
    {
      v22 = __clz(__rbit64((-1 << v29) & ~*(v21 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v31 = 0;
      v32 = (63 - v28) >> 6;
      do
      {
        if (++v30 == v32 && (v31 & 1) != 0)
        {
          __break(1u);
          goto LABEL_59;
        }

        v33 = v30 == v32;
        if (v30 == v32)
        {
          v30 = 0;
        }

        v31 |= v33;
        v34 = *(v21 + 8 * v30);
      }

      while (v34 == -1);
      v22 = __clz(__rbit64(~v34)) + (v30 << 6);
    }

    *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v8 + 48) + 8 * v22) = v24;
    ++*(v8 + 16);
  }

  if (v12)
  {
    v23 = v11;
LABEL_28:
    v26 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v45 = *(*(v6 + 48) + ((v23 << 9) | (8 * v26)));
    v24 = v45;
    goto LABEL_29;
  }

  v25 = v11;
  while (1)
  {
    v23 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v23 >= v20)
    {
      goto LABEL_38;
    }

    v12 = *(v9 + 8 * v23);
    ++v25;
    if (v12)
    {
      v11 = v23;
      goto LABEL_28;
    }
  }

LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
}

BOOL StaticMediaProfile.isActivated.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v15 - v2;
  v4 = type metadata accessor for StatusStrings.Options(0);
  v5 = (v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v5[13];
  v9 = sub_1D1E669FC();
  (*(*(v9 - 8) + 56))(&v7[v8], 1, 1, v9);
  *v7 = 257;
  v7[2] = 1;
  *(v7 + 3) = 0;
  v7[v5[14]] = 2;
  v10 = &v7[v5[15]];
  v10[4] = 0;
  *v10 = 2;
  v11 = type metadata accessor for StaticMatterDevice(0);
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  StaticMediaProfile.statusString(with:associatedMatterDevice:)(v7);
  v13 = v12;
  sub_1D1741A30(v3, &qword_1EC643650, &qword_1D1E71D40);
  sub_1D1C09494(v7, type metadata accessor for StatusStrings.Options);
  if (!v13)
  {
    return *(v0 + *(type metadata accessor for StaticMediaProfile(0) + 76)) == 1;
  }

  return 0;
}

uint64_t StaticMediaProfile.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StaticMediaProfile.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticMediaProfile(0) + 20));

  return v1;
}

double StaticMediaProfile.roomIds.getter()
{
  type metadata accessor for StaticMediaProfile(0);

  return result;
}

uint64_t StaticMediaProfile.roomName.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticMediaProfile(0) + 28));

  return v1;
}

uint64_t StaticMediaProfile.iconSymbol.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticMediaProfile(0) + 36));

  return v1;
}

uint64_t StaticMediaProfile.staticAccessoryId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StaticMediaProfile(0) + 56);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double StaticMediaProfile.staticServicesDictionary.getter()
{
  type metadata accessor for StaticMediaProfile(0);

  return result;
}

uint64_t StaticMediaProfile.playbackState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticMediaProfile(0);
  *a1 = *(v1 + *(result + 76));
  return result;
}

uint64_t StaticMediaProfile.sleepWakeState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticMediaProfile(0);
  *a1 = *(v1 + *(result + 80));
  return result;
}

uint64_t StaticMediaProfile.mediaId.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticMediaProfile(0) + 84));

  return v1;
}

uint64_t StaticMediaProfile.audioDestinationId.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticMediaProfile(0) + 88));

  return v1;
}

uint64_t StaticMediaProfile.specialMediaCategory.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StaticMediaProfile(0) + 92);
  v4 = *v3;
  *a1 = *v3;
  v5 = *(v3 + 8);
  *(a1 + 8) = v5;

  return sub_1D18EB144(v4, v5);
}

double StaticMediaProfile.symptoms.getter()
{
  type metadata accessor for StaticMediaProfile(0);

  return result;
}

uint64_t StaticMediaProfile.homeNonResponsiveType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticMediaProfile(0);
  *a1 = *(v1 + *(result + 104));
  return result;
}

unint64_t sub_1D1BFB728(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x7364496D6F6F72;
      break;
    case 3:
      result = 0x656D614E6D6F6F72;
      break;
    case 4:
      result = 0x6564644165746164;
      break;
    case 5:
      result = 0x626D79536E6F6369;
      break;
    case 6:
      result = 0x656C62756F447369;
      break;
    case 7:
      result = 0x69726F7661467369;
      break;
    case 8:
    case 22:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x6168636165527369;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0xD000000000000018;
      break;
    case 14:
      result = 0x6449656369766564;
      break;
    case 15:
      result = 0x6B63616279616C70;
      break;
    case 16:
      result = 0x6B61577065656C73;
      break;
    case 17:
      result = 0x6449616964656DLL;
      break;
    case 18:
      result = 0xD000000000000012;
      break;
    case 19:
      result = 0xD000000000000014;
      break;
    case 20:
      result = 0x736D6F74706D7973;
      break;
    case 21:
      result = 0x6572617774666F73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D1BFB9C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1C081FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1BFB9FC(uint64_t a1)
{
  v2 = sub_1D1C0721C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BFBA38(uint64_t a1)
{
  v2 = sub_1D1C0721C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticMediaProfile.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7B8, &unk_1D1EA0490);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1C0721C();
  sub_1D1E6930C();
  LOBYTE(v14) = 0;
  sub_1D1E66A7C();
  sub_1D1C07270(&qword_1EE07B258, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v9 = type metadata accessor for StaticMediaProfile(0);
    LOBYTE(v14) = 1;
    sub_1D1E68ECC();
    v14 = *(v3 + v9[6]);
    v16 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
    sub_1D1C07360(&qword_1EC646B10, &qword_1EE07B258, MEMORY[0x1E69695B0], MEMORY[0x1E69E64F0]);
    sub_1D1E68F1C();
    LOBYTE(v14) = 3;
    sub_1D1E68E0C();
    v13[1] = v9[8];
    LOBYTE(v14) = 4;
    sub_1D1E669FC();
    sub_1D1C07270(&qword_1EC642EC8, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1D1E68E5C();
    LOBYTE(v14) = 5;
    sub_1D1E68ECC();
    LOBYTE(v14) = 6;
    sub_1D1E68EDC();
    LOBYTE(v14) = 7;
    sub_1D1E68EDC();
    LOBYTE(v14) = 8;
    sub_1D1E68EDC();
    LOBYTE(v14) = 9;
    sub_1D1E68EDC();
    LOBYTE(v14) = 10;
    sub_1D1E68F1C();
    LOBYTE(v14) = 11;
    sub_1D1E68EDC();
    LOBYTE(v14) = 12;
    sub_1D1E68EDC();
    v14 = *(v3 + v9[17]);
    v16 = 13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B1B8, &qword_1D1E99BE0);
    sub_1D1B43D98();
    sub_1D1E68F1C();
    LOBYTE(v14) = 14;
    type metadata accessor for StaticAccessory.DeviceIdentifier(0);
    sub_1D1C07270(&qword_1EC64C328, type metadata accessor for StaticAccessory.DeviceIdentifier, &protocol conformance descriptor for StaticAccessory.DeviceIdentifier);
    sub_1D1E68E5C();
    LOBYTE(v14) = *(v3 + v9[19]);
    v16 = 15;
    sub_1D1C072B8();
    sub_1D1E68E5C();
    LOBYTE(v14) = *(v3 + v9[20]);
    v16 = 16;
    sub_1D1C0730C();
    sub_1D1E68E5C();
    LOBYTE(v14) = 17;
    sub_1D1E68E0C();
    LOBYTE(v14) = 18;
    sub_1D1E68E0C();
    v10 = v3 + v9[23];
    v11 = *(v10 + 8);
    v14 = *v10;
    v15 = v11;
    v16 = 19;
    sub_1D18EB144(v14, v11);
    sub_1D18F1630();
    sub_1D1E68E5C();
    sub_1D18EB2D8(v14, v15);
    v14 = *(v3 + v9[24]);
    v16 = 20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C340, &qword_1D1E9E550);
    sub_1D1BC93A0(&qword_1EC64C348, sub_1D1BC9140, MEMORY[0x1E69E64F0]);
    sub_1D1E68E5C();
    LOBYTE(v14) = 21;
    type metadata accessor for StaticSoftwareUpdate(0);
    sub_1D1C07270(&qword_1EC64C330, type metadata accessor for StaticSoftwareUpdate, &protocol conformance descriptor for StaticSoftwareUpdate);
    sub_1D1E68E5C();
    LOBYTE(v14) = *(v3 + v9[26]);
    v16 = 22;
    sub_1D1BC90EC();
    sub_1D1E68F1C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t StaticMediaProfile.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for StaticSoftwareUpdate(0);
  v52 = *(v4 - 8);
  v53 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v50 = &v40 - v7;
  v8 = sub_1D1E66A7C();
  v42 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v47 = *(v10 - 8);
  v48 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v44 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v49 = &v40 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C58, &unk_1D1E995D0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v46 = &v40 - v15;
  v16 = sub_1D1E669FC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v43 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v40 - v20;
  sub_1D1C07270(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v51 = v8;
  sub_1D1E676EC();
  v22 = type metadata accessor for StaticMediaProfile(0);
  sub_1D1E678EC();
  sub_1D176D4E8(a1, *(v1 + v22[6]));
  if (*(v1 + v22[7] + 8))
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  sub_1D1741C08(v1 + v22[8], v21, &qword_1EC642570, &qword_1D1E6C6A0);
  v23 = (*(v17 + 48))(v21, 1, v16);
  v24 = v48;
  if (v23 == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v25 = v43;
    (*(v17 + 32))(v43, v21, v16);
    sub_1D1E6922C();
    sub_1D1C07270(&qword_1EC642A50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1D1E676EC();
    (*(v17 + 8))(v25, v16);
  }

  sub_1D1E678EC();
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  v26 = v51;
  sub_1D1E676EC();
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D18599F4(a1, *(v1 + v22[17]));
  v27 = v46;
  sub_1D1741C08(v2 + v22[18], v46, &qword_1EC643C58, &unk_1D1E995D0);
  if ((*(v47 + 48))(v27, 1, v24) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v28 = v49;
    sub_1D1C0942C(v27, v49, type metadata accessor for StaticAccessory.DeviceIdentifier);
    sub_1D1E6922C();
    v29 = v44;
    sub_1D1C09520(v28, v44, type metadata accessor for StaticAccessory.DeviceIdentifier);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v31 = v41;
      v30 = v42;
      (*(v42 + 32))(v41, v29, v26);
      MEMORY[0x1D3892850](1);
      sub_1D1E676EC();
      (*(v30 + 8))(v31, v26);
    }

    else
    {
      MEMORY[0x1D3892850](0);
      sub_1D1E678EC();
    }

    sub_1D1C09494(v49, type metadata accessor for StaticAccessory.DeviceIdentifier);
  }

  v32 = *(v2 + v22[19]);
  sub_1D1E6922C();
  if (v32 != 6)
  {
    MEMORY[0x1D3892850](v32);
  }

  v33 = *(v2 + v22[20]);
  sub_1D1E6922C();
  if (v33 != 4)
  {
    MEMORY[0x1D3892850](v33);
  }

  if (*(v2 + v22[21] + 8))
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  if (*(v2 + v22[22] + 8))
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  v34 = v2 + v22[23];
  v35 = *(v34 + 8);
  if (v35 == 255)
  {
    sub_1D1E6922C();
  }

  else
  {
    v54 = *v34;
    v36 = v54;
    v55 = v35;
    sub_1D1E6922C();
    sub_1D1771B4C(v36, v35);
    StaticAccessory.SpecialMediaCategory.hash(into:)(a1);
    sub_1D1771B5C(v54, v55);
  }

  if (*(v2 + v22[24]))
  {
    sub_1D1E6922C();
    sub_1D1771CBC();
  }

  else
  {
    sub_1D1E6922C();
  }

  v37 = v50;
  sub_1D1741C08(v2 + v22[25], v50, &qword_1EC644760, &unk_1D1E9E530);
  if ((*(v52 + 48))(v37, 1, v53) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v38 = v45;
    sub_1D1C0942C(v37, v45, type metadata accessor for StaticSoftwareUpdate);
    sub_1D1E6922C();
    sub_1D1E676EC();
    StaticSoftwareUpdate.Kind.hash(into:)(a1);
    sub_1D1C09494(v38, type metadata accessor for StaticSoftwareUpdate);
  }

  return MEMORY[0x1D3892850](*(v2 + v22[26]));
}

uint64_t StaticMediaProfile.hashValue.getter()
{
  sub_1D1E6920C();
  StaticMediaProfile.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticMediaProfile.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v49 = v45 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C58, &unk_1D1E995D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v51 = v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v53 = v45 - v8;
  v9 = sub_1D1E66A7C();
  v52 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v54 = v45 - v13;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7D8, &unk_1D1EA04A0);
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v15 = v45 - v14;
  v16 = type metadata accessor for StaticMediaProfile(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1C0721C();
  v56 = v15;
  v19 = v58;
  sub_1D1E692FC();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v53;
  v46 = v12;
  v47 = v16;
  v48 = a1;
  v58 = v18;
  LOBYTE(v59) = 0;
  v21 = sub_1D1C07270(&qword_1EC644B20, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v22 = v54;
  sub_1D1E68D7C();
  v23 = *(v52 + 32);
  v24 = v58;
  v54 = v9;
  v23(v58, v22);
  LOBYTE(v59) = 1;
  v25 = sub_1D1E68D2C();
  v45[0] = v23;
  v45[1] = v21;
  v26 = v47;
  v27 = &v24[v47[5]];
  *v27 = v25;
  v27[1] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
  v61 = 2;
  sub_1D1C07360(&qword_1EC646B78, &qword_1EC644B20, MEMORY[0x1E69695D0], MEMORY[0x1E69E6510]);
  v45[2] = 0;
  sub_1D1E68D7C();
  *&v24[v26[6]] = v59;
  LOBYTE(v59) = 3;
  v29 = sub_1D1E68C6C();
  v30 = &v24[v26[7]];
  *v30 = v29;
  v30[1] = v31;
  sub_1D1E669FC();
  LOBYTE(v59) = 4;
  sub_1D1C07270(&qword_1EC642EB8, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1D1E68CBC();
  sub_1D1741A90(v20, &v24[v26[8]], &qword_1EC642570, &qword_1D1E6C6A0);
  LOBYTE(v59) = 5;
  v32 = sub_1D1E68D2C();
  v33 = &v24[v26[9]];
  *v33 = v32;
  v33[1] = v34;
  LOBYTE(v59) = 6;
  v24[v26[10]] = sub_1D1E68D3C() & 1;
  LOBYTE(v59) = 7;
  v24[v47[11]] = sub_1D1E68D3C() & 1;
  LOBYTE(v59) = 8;
  v58[v47[12]] = sub_1D1E68D3C() & 1;
  LOBYTE(v59) = 9;
  v58[v47[13]] = sub_1D1E68D3C() & 1;
  LOBYTE(v59) = 10;
  sub_1D1E68D7C();
  (v45[0])(&v58[v47[14]], v46, v54);
  LOBYTE(v59) = 11;
  v58[v47[15]] = sub_1D1E68D3C() & 1;
  LOBYTE(v59) = 12;
  v58[v47[16]] = sub_1D1E68D3C() & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B1B8, &qword_1D1E99BE0);
  v61 = 13;
  sub_1D1B43CAC();
  sub_1D1E68D7C();
  *&v58[v47[17]] = v59;
  type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  LOBYTE(v59) = 14;
  sub_1D1C07270(&qword_1EC64C368, type metadata accessor for StaticAccessory.DeviceIdentifier, &protocol conformance descriptor for StaticAccessory.DeviceIdentifier);
  sub_1D1E68CBC();
  sub_1D1741A90(v51, &v58[v47[18]], &qword_1EC643C58, &unk_1D1E995D0);
  v61 = 15;
  sub_1D1C073FC();
  sub_1D1E68CBC();
  v58[v47[19]] = v59;
  v61 = 16;
  sub_1D1C07450();
  sub_1D1E68CBC();
  v58[v47[20]] = v59;
  LOBYTE(v59) = 17;
  v35 = sub_1D1E68C6C();
  v36 = &v58[v47[21]];
  *v36 = v35;
  v36[1] = v37;
  LOBYTE(v59) = 18;
  v38 = sub_1D1E68C6C();
  v39 = &v58[v47[22]];
  *v39 = v38;
  v39[1] = v40;
  v61 = 19;
  sub_1D18F18D0();
  sub_1D1E68CBC();
  v41 = v60;
  v42 = &v58[v47[23]];
  *v42 = v59;
  v42[8] = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C340, &qword_1D1E9E550);
  v61 = 20;
  sub_1D1BC93A0(&qword_1EC64C380, sub_1D1BC9418, MEMORY[0x1E69E6510]);
  sub_1D1E68CBC();
  *&v58[v47[24]] = v59;
  type metadata accessor for StaticSoftwareUpdate(0);
  LOBYTE(v59) = 21;
  sub_1D1C07270(&qword_1EC64C370, type metadata accessor for StaticSoftwareUpdate, &protocol conformance descriptor for StaticSoftwareUpdate);
  sub_1D1E68CBC();
  sub_1D1741A90(v49, &v58[v47[25]], &qword_1EC644760, &unk_1D1E9E530);
  v61 = 22;
  sub_1D1BC934C();
  sub_1D1E68D7C();
  (*(v55 + 8))(v56, v57);
  v43 = v58;
  v58[v47[26]] = v59;
  sub_1D1C09520(v43, v50, type metadata accessor for StaticMediaProfile);
  __swift_destroy_boxed_opaque_existential_1(v48);
  return sub_1D1C09494(v43, type metadata accessor for StaticMediaProfile);
}

uint64_t sub_1D1BFDD68()
{
  sub_1D1E6920C();
  StaticMediaProfile.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1BFDDAC(uint64_t a1)
{
  sub_1D1E6920C();
  StaticMediaProfile.hash(into:)(v2);
  return sub_1D1E6926C();
}

id StaticMediaProfile.statusString(with:associatedMatterDevice:)(_BYTE *a1)
{
  v2 = v1;
  v4 = type metadata accessor for StaticMediaProfile(0);
  v5 = v4;
  v6 = *(v1 + v4[15]);
  if (*(v1 + v4[23] + 8) != 1 || v6 == 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(v1 + v4[16]) ^ 1;
  }

  v9 = *(v1 + v4[26]);
  if (*(v1 + v4[19]) == 6)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    LOBYTE(v23[0]) = *(v1 + v4[19]);
    v10 = sub_1D1CF8E54();
    v11 = v12;
  }

  v13 = v5[25];
  v14 = a1[4];
  LOBYTE(v23[0]) = v14;
  v15 = sub_1D1D32844(v2 + v13, v23);
  if (!v16)
  {
    v17 = *(v2 + v5[24]);
    LOBYTE(v23[0]) = v14;
    v15 = _s13HomeDataModel12SymptomErrorO12statusString4with0F7ContextSSSgShyACGSg_AA06StatusI0OtFZ_0(v17, v23);
  }

  LOBYTE(v20) = v6;
  BYTE1(v20) = v9;
  BYTE2(v20) = 2;
  BYTE3(v20) = v8 & 1;
  BYTE4(v20) = 2;
  *(&v20 + 1) = v10;
  *&v21 = v11;
  *(&v21 + 1) = v15;
  v22 = v16;
  v18 = StatusStrings.string(for:)(a1);
  v23[0] = v20;
  v23[1] = v21;
  v24 = v22;
  sub_1D1A46590(v23);
  return v18;
}

void StaticMediaProfile.tileIcon.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for StaticMediaProfile(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 46;
  sub_1D1C09520(v2, v7, type metadata accessor for StaticMediaProfile);
  v8 = &v7[*(v5 + 100)];
  v9 = v8[8];
  if (v9 == 255)
  {
    if (qword_1EC642238 != -1)
    {
      swift_once();
    }

    v30 = *&qword_1EC646788;
    v31 = xmmword_1EC646798;
    *v32 = xmmword_1EC6467A8;
    *&v32[9] = *(&xmmword_1EC6467A8 + 9);
    v28 = xmmword_1EC646768;
    v29 = xmmword_1EC646778;
    sub_1D18A9844(&v28, v27);
    sub_1D1C09494(v7, type metadata accessor for StaticMediaProfile);
    v24 = *&v32[8];
    v25 = *&v32[16];
    v19 = v32[24];
    v23 = *(&v31 + 1);
    v22 = v31;
    v18 = v32[0];
    v20 = *(&v29 + 1);
    v21 = v30;
    v17 = BYTE8(v30);
    v15 = *(&v28 + 1);
    v13 = v28;
    v16 = v29;
  }

  else
  {
    v10 = *v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643200, &qword_1D1E71658);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E739C0;
    *(inited + 32) = v10;
    v12 = inited + 32;
    *(inited + 40) = v9;
    v13 = _s13HomeDataModel18StaticMediaProfileV10iconSymbol3forSSSayAA0D9AccessoryV07SpecialE8CategoryOG_tFZ_0(inited);
    v15 = v14;
    swift_setDeallocating();
    sub_1D18EB144(v10, v9);
    sub_1D18EB158(v12);
    sub_1D1C09494(v7, type metadata accessor for StaticMediaProfile);
    swift_bridgeObjectRetain_n();
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = v13;
    v21 = v15;
    v22 = v13;
    v23 = v15;
    v24 = v13;
    v25 = v15;
  }

  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16;
  *(a1 + 24) = v20;
  *(a1 + 32) = v21;
  *(a1 + 40) = v17;
  *(a1 + 48) = v22;
  *(a1 + 56) = v23;
  *(a1 + 64) = v18;
  *(a1 + 72) = v24;
  *(a1 + 80) = v25;
  *(a1 + 88) = v19;
}

uint64_t StaticMediaProfile.foregroundColor.getter()
{
  if (StaticMediaProfile.isActivated.getter())
  {
    return sub_1D1E673AC();
  }

  else
  {
    return sub_1D1E673CC();
  }
}

uint64_t sub_1D1BFE228()
{
  if (StaticMediaProfile.isActivated.getter())
  {
    return sub_1D1E673AC();
  }

  else
  {
    return sub_1D1E673CC();
  }
}

uint64_t StaticMediaProfile.mediaProfile.getter()
{
  v1[5] = v0;
  v2 = sub_1D1E66A7C();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1BFE32C, 0, 0);
}

uint64_t sub_1D1BFE32C()
{
  v1 = _s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0();
  v0[10] = v1;
  if (v1)
  {
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v2 = qword_1EC64ABE8;
    v3 = sub_1D1BFE41C;
    v4 = 0;
  }

  else
  {
    v0[12] = sub_1D1E67E1C();
    v0[13] = sub_1D1E67E0C();
    v5 = sub_1D1E67D4C();
    v7 = v6;
    v3 = sub_1D1BFE750;
    v2 = v5;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, v4);
}

uint64_t sub_1D1BFE41C()
{
  v33 = v0;
  v1 = v0[10];
  swift_beginAccess();
  v2 = *(v1 + 64);
  if (v2)
  {
    v3 = [v2 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v32[0] = sub_1D1749970(v4);
    sub_1D1747DDC(v32);

    v5 = v32[0];
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = v0[8];
  v7 = v0[6];
  v8 = v0[5];
  v9 = *(v0[7] + 16);
  v9(v0[9], v8, v7);
  v9(v6, v8, v7);
  if (v5 >> 62)
  {
LABEL_31:
    v10 = sub_1D1E6873C();
  }

  else
  {
    v10 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = 0;
  v12 = v5 & 0xC000000000000001;
  v13 = (v5 + 32);
  while (v10 != v11)
  {
    if (v12)
    {
      v14 = MEMORY[0x1D3891EF0](v11, v5);
    }

    else
    {
      if (v11 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v14 = *(v5 + 8 * v11 + 32);
    }

    v15 = v14;
    v16 = v0[8];
    v32[0] = v14;
    sub_1D1A877DC(v32, v16, &v31);

    v17 = v31;
    if (v17)
    {
      v10 = v11;
      break;
    }

    if (__OFADD__(v11++, 1))
    {
      goto LABEL_30;
    }
  }

  if (!(v5 >> 62))
  {
    if (v10 != *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

LABEL_25:
    v13 = *(v0[7] + 8);
    (v13)(v0[9], v0[6]);
    v24 = 0;
    goto LABEL_26;
  }

  if (v10 == sub_1D1E6873C())
  {
    goto LABEL_25;
  }

LABEL_19:
  if (v12)
  {
    v19 = MEMORY[0x1D3891EF0](v10, v5);
  }

  else
  {
    if (v10 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_34;
    }

    v19 = v13[v10];
  }

  v20 = v19;
  v21 = v0[9];
  v22 = v0[6];
  v23 = v0[7];
  v32[0] = v19;
  sub_1D1A877DC(v32, v21, &v31);
  v13 = *(v23 + 8);
  (v13)(v21, v22);

  v24 = v31;
  if (!v31)
  {
LABEL_34:
    v27 = (v13)(v0[8], v0[6]);
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v27, v28, v29);
  }

LABEL_26:
  v0[11] = v24;
  v25 = v0[8];
  v26 = v0[6];

  (v13)(v25, v26);
  v27 = sub_1D1B9A998;
  v28 = 0;
  v29 = 0;

  return MEMORY[0x1EEE6DFA0](v27, v28, v29);
}

uint64_t sub_1D1BFE750()
{

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1BFE7E8, 0, 0);
}

uint64_t sub_1D1BFE7E8(uint64_t a1)
{
  *(v1 + 112) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1BFE874, v3, v2);
}

uint64_t sub_1D1BFE874()
{

  *(v0 + 120) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D1BFE8E8, 0, 0);
}

uint64_t sub_1D1BFE8E8(uint64_t a1)
{
  *(v1 + 128) = sub_1D1E66A2C();
  *(v1 + 136) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1BFE980, v3, v2);
}

uint64_t sub_1D1BFE980()
{
  v1 = v0[16];
  v2 = v0[15];

  v3 = [v2 mediaProfileFor_];

  v4 = v0[1];

  return v4(v3);
}

void *Set<>.staticMediaProfilesIgnoringCurrentDevice.getter(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for StaticMediaProfile(0);
  v25 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v3) = *(a1 + 32);
  v5 = v3 & 0x3F;
  v6 = ((1 << v3) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 > 0xD)
  {
    goto LABEL_19;
  }

  do
  {
    v22 = &v22;
    v23 = v6;
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v9 = &v22 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v7);
    v24 = 0;
    v10 = 0;
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;
    while (v13)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v7 = v15 | (v10 << 6);
      sub_1D1C09520(*(a1 + 48) + *(v25 + 72) * v7, v4, type metadata accessor for StaticMediaProfile);
      v6 = v4[*(v2 + 52)];
      sub_1D1C09494(v4, type metadata accessor for StaticMediaProfile);
      if ((v6 & 1) == 0)
      {
        *&v9[(v7 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v7;
        if (__OFADD__(v24++, 1))
        {
          __break(1u);
          return sub_1D19E04D8(v9, v23, v24, a1);
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
        return sub_1D19E04D8(v9, v23, v24, a1);
      }

      v17 = *(a1 + 56 + 8 * v10);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  }

  while ((isStackAllocationSafe & 1) != 0);
  v20 = swift_slowAlloc();
  v21 = sub_1D1C05EFC(v20, v6, a1, sub_1D1BFECF8, 0);
  MEMORY[0x1D3893640](v20, -1, -1);
  return v21;
}

void *StaticMediaProfile.staticServices.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticMediaProfile(0) + 68));
  v2 = v1[2];
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1D18042C8(v1[2], 0);
  v4 = *(type metadata accessor for StaticService(0) - 8);
  v5 = sub_1D1804A58(&v8, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2, v1);
  v6 = v8;

  sub_1D1716918(v6);
  if (v5 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t StaticMediaProfile.isConfiguring.getter()
{
  v1 = type metadata accessor for StaticMediaProfile(0);
  if (*(v0 + v1[23] + 8) == 1 && *(v0 + v1[15]) == 1)
  {
    v2 = *(v0 + v1[16]) ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

unint64_t StaticMediaProfile.tileStatusStringIconSymbolSuffix.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11[-v2];
  v4 = type metadata accessor for StaticSoftwareUpdate(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for StaticMediaProfile(0);
  result = 0;
  if (*(v0 + v8[15]) == 1)
  {
    v10 = *(v0 + v8[24]);
    sub_1D1741C08(v0 + v8[25], v3, &qword_1EC644760, &unk_1D1E9E530);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_1D1741A30(v3, &qword_1EC644760, &unk_1D1E9E530);
    }

    else
    {
      sub_1D1C0942C(v3, v7, type metadata accessor for StaticSoftwareUpdate);
      sub_1D1D2F0C0(&v12);
      if (v12 != 8 && (v12 == 3 || v12 == 5))
      {
        sub_1D1C09494(v7, type metadata accessor for StaticSoftwareUpdate);
        return 0xD000000000000015;
      }

      sub_1D1C09494(v7, type metadata accessor for StaticSoftwareUpdate);
    }

    return _s13HomeDataModel12SymptomErrorO14tileIconSymbol3forSSSgShyACGSg_tFZ_0(v10);
  }

  return result;
}

uint64_t StaticMediaProfile.hasDetailAttentionMessages.getter()
{
  v1 = type metadata accessor for StaticMediaProfile(0);
  v2 = *(v1 + 100);
  v8 = 2;
  sub_1D1D32844(v0 + v2, &v8);
  if (!v3)
  {
    v4 = *(v0 + *(v1 + 96));
    v7 = 2;
    _s13HomeDataModel12SymptomErrorO12statusString4with0F7ContextSSSgShyACGSg_AA06StatusI0OtFZ_0(v4, &v7);
    if (!v5)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1D1BFF168@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated - 8);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643758, &qword_1D1E71EB0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v27 - v18;
  v20 = [*a1 mediaProfile];
  if (!v20)
  {
    goto LABEL_4;
  }

  v21 = v20;
  sub_1D1C09520(a2, v16, type metadata accessor for StateSnapshot.UpdateType);
  v28 = a5;

  v22 = a4;

  sub_1D1BFF3D4(v21, v16, a3, v22, &v28, a6, v19);
  v23 = type metadata accessor for StaticMediaProfile(0);
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v19, 1, v23) == 1)
  {
    sub_1D1741A30(v19, &qword_1EC643758, &qword_1D1E71EB0);
LABEL_4:
    v25 = type metadata accessor for StaticMediaProfile(0);
    return (*(*(v25 - 8) + 56))(a7, 1, 1, v25);
  }

  sub_1D1C0942C(v19, a7, type metadata accessor for StaticMediaProfile);
  return (*(v24 + 56))(a7, 0, 1, v23);
}

uint64_t sub_1D1BFF3D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *&v223 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v210 = &v191 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436E8, &unk_1D1E71E40);
  v224 = *(v15 - 8);
  v225 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v198 = &v191 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C58, &unk_1D1E995D0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v206 = &v191 - v18;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v213 = (&v191 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v209 = &v191 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v208 = &v191 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v207 = &v191 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v205 = &v191 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v204 = &v191 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v212 = &v191 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v202 = &v191 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v201 = &v191 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v39 = &v191 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v219 = &v191 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v43 = &v191 - v42;
  v44 = sub_1D1E66A7C();
  v226 = *(v44 - 8);
  v227 = v44;
  v45 = MEMORY[0x1EEE9AC00](v44);
  v47 = &v191 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v218 = &v191 - v48;
  v49 = type metadata accessor for StaticMediaProfile(0);
  v217 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v215 = &v191 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = *a5;
  v222 = a1;
  v51 = [v222 accessory];
  if (v51)
  {
    v52 = v51;
    v211 = a6;
    v199 = a4;
    v53 = [v51 home];
    if (v53)
    {
      v54 = v53;
      v196 = a2;
      v197 = v49;
      v55 = [v222 accessory];
      v216 = v52;
      if (v55)
      {
        v56 = v55;
        v57 = [v55 uniqueIdentifier];

        sub_1D1E66A5C();
        v59 = v226;
        v58 = v227;
        v60 = *(v226 + 32);
        v60(v43, v47, v227);
        (*(v59 + 56))(v43, 0, 1, v58);
        v61 = v58;
        v52 = v216;
        v60(v218, v43, v61);
        v62 = v219;
      }

      else
      {
        v67 = v226;
        v66 = v227;
        (*(v226 + 56))(v43, 1, 1, v227);
        sub_1D1E66A6C();
        v68 = (*(v67 + 48))(v43, 1, v66);
        v62 = v219;
        if (v68 != 1)
        {
          sub_1D1741A30(v43, &qword_1EC642590, qword_1D1E71260);
        }
      }

      v69 = v215;
      if (*(v223 + 16) && (v70 = sub_1D1742188(), (v71 & 1) != 0))
      {
        v72 = v70;
        v73 = *(v223 + 56);
        v74 = type metadata accessor for StaticAccessory(0);
        v75 = *(v74 - 8);
        v76 = v73 + *(v75 + 72) * v72;
        v52 = v216;
        sub_1D1C09520(v76, v219, type metadata accessor for StaticAccessory);
        v62 = v219;

        (*(v75 + 56))(v62, 0, 1, v74);
      }

      else
      {

        v77 = type metadata accessor for StaticAccessory(0);
        (*(*(v77 - 8) + 56))(v62, 1, 1, v77);
      }

      v78 = [v52 room];
      if (!v78)
      {
        v78 = [v54 roomForEntireHome];
      }

      v192 = v54;
      v195 = a7;
      v79 = v222;
      v80 = [v222 uniqueIdentifier];

      sub_1D1E66A5C();
      sub_1D1741C08(v62, v39, &qword_1EC6436C8, &unk_1D1E97C40);
      v81 = type metadata accessor for StaticAccessory(0);
      v82 = *(v81 - 1);
      v220 = *(v82 + 48);
      v221 = v82 + 48;
      if (v220(v39, 1, v81) == 1)
      {
        sub_1D1741A30(v39, &qword_1EC6436C8, &unk_1D1E97C40);
        v83 = [v78 name];
        v84 = sub_1D1E6781C();
        v86 = v85;
      }

      else
      {
        v87 = &v39[v81[7]];
        v84 = *v87;
        v86 = v87[1];

        sub_1D1C09494(v39, type metadata accessor for StaticAccessory);
      }

      v88 = v78;
      v89 = v197;
      v90 = &v69[v197[5]];
      *v90 = v84;
      v90[1] = v86;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
      v91 = v226;
      v92 = (*(v226 + 80) + 32) & ~*(v226 + 80);
      v93 = swift_allocObject();
      v223 = xmmword_1D1E739C0;
      *(v93 + 16) = xmmword_1D1E739C0;
      v94 = [v88 uniqueIdentifier];
      sub_1D1E66A5C();

      v95 = sub_1D179BE14(v93);
      swift_setDeallocating();
      v97 = *(v91 + 8);
      v96 = v91 + 8;
      v193 = v97;
      v97((v93 + v92), v227);
      swift_deallocClassInstance();
      *&v69[v89[6]] = v95;
      v194 = v88;
      v98 = [v88 name];
      v99 = sub_1D1E6781C();
      v101 = v100;

      v102 = &v69[v89[7]];
      *v102 = v99;
      v102[1] = v101;
      v103 = v216;
      HMAccessory.dateAdded.getter(&v69[v89[8]]);
      v69[v89[10]] = sub_1D1A11844() & 1;
      v69[v89[11]] = HMAccessory.isFavorite.getter() & 1;
      v69[v89[12]] = HMAccessory.shouldShowInDashboard.getter() & 1;
      v69[v89[13]] = [v103 isCurrentAccessory];
      v104 = v219;
      v105 = v201;
      sub_1D1741C08(v219, v201, &qword_1EC6436C8, &unk_1D1E97C40);
      v106 = v220(v105, 1, v81);
      v200 = v81;
      if (v106 == 1)
      {
        v107 = 0x69662E6573756F68;
        sub_1D1741A30(v105, &qword_1EC6436C8, &unk_1D1E97C40);
        v108 = 0xEA00000000006C6CLL;
        v109 = v195;
      }

      else
      {
        v110 = v105 + v81[23];
        v111 = *v110;
        v112 = *(v110 + 8);
        sub_1D18EB144(*v110, *(v110 + 8));
        sub_1D1C09494(v105, type metadata accessor for StaticAccessory);
        v109 = v195;
        if (v112 == 255)
        {
          v107 = 0x69662E6573756F68;
          v108 = 0xEA00000000006C6CLL;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643200, &qword_1D1E71658);
          inited = swift_initStackObject();
          *(inited + 16) = v223;
          *(inited + 32) = v111;
          v114 = inited + 32;
          *(inited + 40) = v112;
          v107 = _s13HomeDataModel18StaticMediaProfileV10iconSymbol3forSSSayAA0D9AccessoryV07SpecialE8CategoryOG_tFZ_0(inited);
          v108 = v115;
          v104 = v219;
          swift_setDeallocating();
          v81 = v200;
          sub_1D18EB158(v114);
        }
      }

      v116 = &v69[v89[9]];
      *v116 = v107;
      v116[1] = v108;
      v117 = *(v226 + 16);
      v118 = &v69[v89[14]];
      v226 += 16;
      *&v223 = v117;
      v117(v118, v218, v227);
      v119 = v202;
      sub_1D1741C08(v104, v202, &qword_1EC6436C8, &unk_1D1E97C40);
      if (v220(v119, 1, v81) == 1)
      {
        sub_1D1741A30(v119, &qword_1EC6436C8, &unk_1D1E97C40);
        v120 = 0;
      }

      else
      {
        v120 = *(v119 + v81[31]);
        sub_1D1C09494(v119, type metadata accessor for StaticAccessory);
      }

      v69[v89[15]] = v120;
      v121 = [v222 settings];
      if (v121 && (v122 = v121, v123 = [v121 rootGroup], v122, v123))
      {

        v124 = 1;
      }

      else
      {
        v124 = 0;
      }

      v69[v89[16]] = v124;
      v125 = v213;
      v126 = v192;
      *v213 = v192;
      swift_storeEnumTagMultiPayload();
      v127 = v212;
      (*(v82 + 56))(v212, 1, 1, v81);
      v128 = v126;
      v129 = v216;
      v130 = [v216 services];
      sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v131 = sub_1D1E67C1C();

      MEMORY[0x1EEE9AC00](v132);
      *(&v191 - 64) = 1;
      *(&v191 - 7) = v129;
      *(&v191 - 6) = v125;
      updated = v128;
      *(&v191 - 5) = v128;
      *(&v191 - 32) = v214;
      v133 = v211;
      *(&v191 - 3) = v127;
      *(&v191 - 2) = v133;
      v134 = 0;
      v135 = sub_1D17893E4(sub_1D1C094F4, (&v191 - 10), v131);

      v136 = v135[2];
      if (v136)
      {
        v201 = 0;
        v202 = v96;
        v228 = MEMORY[0x1E69E7CC0];
        sub_1D178D2D8(0, v136, 0);
        v137 = v228;
        v138 = *(type metadata accessor for StaticService(0) - 8);
        v139 = (*(v138 + 80) + 32) & ~*(v138 + 80);
        v192 = v135;
        v140 = v135 + v139;
        v141 = *(v138 + 72);
        v142 = v198;
        do
        {
          v143 = *(v225 + 48);
          sub_1D1C09520(v140, v142 + v143, type metadata accessor for StaticService);
          (v223)(v142, v142 + v143, v227);
          v228 = v137;
          v145 = *(v137 + 16);
          v144 = *(v137 + 24);
          if (v145 >= v144 >> 1)
          {
            sub_1D178D2D8((v144 > 1), v145 + 1, 1);
            v137 = v228;
          }

          *(v137 + 16) = v145 + 1;
          sub_1D1741A90(v142, v137 + ((*(v224 + 80) + 32) & ~*(v224 + 80)) + *(v224 + 72) * v145, &qword_1EC6436E8, &unk_1D1E71E40);
          v140 += v141;
          --v136;
        }

        while (v136);

        v109 = v195;
        v134 = v201;
      }

      else
      {

        v137 = MEMORY[0x1E69E7CC0];
      }

      v146 = v199;
      v147 = v204;
      if (*(v137 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AB8, &qword_1D1E7E7A0);
        v148 = sub_1D1E68BCC();
      }

      else
      {
        v148 = MEMORY[0x1E69E7CC8];
      }

      v149 = v197;
      v150 = v215;
      v228 = v148;
      sub_1D1CBFC40(v137, 1, &v228);
      if (v134)
      {

        __break(1u);
      }

      else
      {

        v151 = v228;
        sub_1D1741A30(v212, &qword_1EC6436C8, &unk_1D1E97C40);
        sub_1D1C09494(v213, type metadata accessor for StateSnapshot.UpdateType);
        *(v150 + v149[17]) = v151;
        v152 = v219;
        sub_1D1741C08(v219, v147, &qword_1EC6436C8, &unk_1D1E97C40);
        v153 = v200;
        if (v220(v147, 1, v200) == 1)
        {
          sub_1D1741A30(v147, &qword_1EC6436C8, &unk_1D1E97C40);
          v154 = 1;
          v155 = v206;
        }

        else
        {
          v155 = v206;
          sub_1D1C09520(v147 + v153[8], v206, type metadata accessor for StaticAccessory.DeviceIdentifier);
          sub_1D1C09494(v147, type metadata accessor for StaticAccessory);
          v154 = 0;
        }

        v156 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
        (*(*(v156 - 8) + 56))(v155, v154, 1, v156);
        sub_1D1741A90(v155, v150 + v149[18], &qword_1EC643C58, &unk_1D1E995D0);
        v157 = v152;
        v158 = v205;
        sub_1D1741C08(v157, v205, &qword_1EC6436C8, &unk_1D1E97C40);
        if (v220(v158, 1, v153) == 1)
        {
          sub_1D1741A30(v158, &qword_1EC6436C8, &unk_1D1E97C40);
          v159 = 0;
          v160 = -1;
        }

        else
        {
          v161 = v158 + v153[23];
          v159 = *v161;
          v160 = *(v161 + 8);
          sub_1D18EB144(*v161, v160);
          sub_1D1C09494(v158, type metadata accessor for StaticAccessory);
        }

        v228 = v159;
        v229 = v160;
        v162 = v222;
        StaticMediaSystemComponent.PlaybackState.init(from:specialMediaCategory:)(&v230, v162, &v228);
        *(v150 + v149[19]) = v230;
        sub_1D1C00B5C(v196, v162, &v228);
        *(v150 + v149[20]) = v228;
        v163 = [v162 mediaSession];
        if (v163 && (v164 = v163, v165 = [v163 mediaUniqueIdentifier], v164, v165))
        {
          v166 = v109;
          v167 = sub_1D1E6781C();
          v169 = v168;
        }

        else
        {
          v166 = v109;
          v167 = 0;
          v169 = 0;
        }

        v170 = (v150 + v149[21]);
        *v170 = v167;
        v170[1] = v169;
        v171 = v216;
        v172 = [v216 audioDestinationIdentifier];
        if (v172)
        {
          v173 = v172;
          v174 = sub_1D1E6781C();
          v176 = v175;
        }

        else
        {

          v174 = 0;
          v176 = 0;
        }

        sub_1D1C09494(v196, type metadata accessor for StateSnapshot.UpdateType);
        v193(v218, v227);
        v177 = (v150 + v149[22]);
        *v177 = v174;
        v177[1] = v176;
        v178 = v219;
        v179 = v207;
        sub_1D1741C08(v219, v207, &qword_1EC6436C8, &unk_1D1E97C40);
        v180 = v200;
        v181 = v220(v179, 1, v200);
        v182 = v210;
        if (v181 == 1)
        {
          sub_1D1741A30(v179, &qword_1EC6436C8, &unk_1D1E97C40);
          v183 = 0;
          v184 = -1;
        }

        else
        {
          v185 = v179 + v180[23];
          v183 = *v185;
          v184 = *(v185 + 8);
          sub_1D18EB144(*v185, v184);
          sub_1D1C09494(v179, type metadata accessor for StaticAccessory);
        }

        v186 = v150 + v149[23];
        *v186 = v183;
        *(v186 + 8) = v184;
        v187 = v208;
        sub_1D1741C08(v178, v208, &qword_1EC6436C8, &unk_1D1E97C40);
        if (v220(v187, 1, v180) == 1)
        {
          sub_1D1741A30(v187, &qword_1EC6436C8, &unk_1D1E97C40);
          v188 = 0;
        }

        else
        {
          v188 = *(v187 + v180[33]);

          sub_1D1C09494(v187, type metadata accessor for StaticAccessory);
        }

        *(v150 + v149[24]) = v188;
        v189 = v209;
        sub_1D1741A90(v178, v209, &qword_1EC6436C8, &unk_1D1E97C40);
        if (v220(v189, 1, v180) == 1)
        {
          sub_1D1741A30(v189, &qword_1EC6436C8, &unk_1D1E97C40);
          v190 = type metadata accessor for StaticSoftwareUpdate(0);
          (*(*(v190 - 8) + 56))(v182, 1, 1, v190);
        }

        else
        {
          sub_1D1741C08(v189 + v180[30], v182, &qword_1EC644760, &unk_1D1E9E530);
          sub_1D1C09494(v189, type metadata accessor for StaticAccessory);
        }

        sub_1D1741A90(v182, v150 + v149[25], &qword_1EC644760, &unk_1D1E9E530);
        *(v150 + v149[26]) = v214;
        sub_1D1C0942C(v150, v166, type metadata accessor for StaticMediaProfile);
        return (*(v217 + 56))(v166, 0, 1, v149);
      }

      return result;
    }
  }

  else
  {
  }

  v63 = v222;

  sub_1D1C09494(a2, type metadata accessor for StateSnapshot.UpdateType);
  v64 = *(v217 + 56);

  return v64(a7, 1, 1, v49);
}

void sub_1D1C00B5C(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1C09520(a1, v12, type metadata accessor for StateSnapshot.UpdateType);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    v13 = *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9C8, &unk_1D1E98080) + 48)];
    v14 = *(v7 + 8);
    v14(v12, v6);
    v15 = [a2 uniqueIdentifier];
    sub_1D1E66A5C();

    if (*(v13 + 16) && (v16 = sub_1D1742188(), (v17 & 1) != 0))
    {
      v18 = *(*(v13 + 56) + v16);
      v14(v9, v6);

      if (v18 < 0)
      {
        v19 = (v18 & 1) == 0;
        goto LABEL_12;
      }
    }

    else
    {

      v14(v9, v6);
    }
  }

  else
  {
    sub_1D1C09494(v12, type metadata accessor for StateSnapshot.UpdateType);
  }

  v20 = [a2 mediaSession];
  if (v20 && (v21 = v20, v22 = [v20 sleepWakeState], v21, v22 <= 2))
  {
    v19 = 2 - v22;
  }

  else
  {
    v19 = 3;
  }

LABEL_12:
  *a3 = v19;
}

uint64_t sub_1D1C00DDC(uint64_t a1)
{
  v2 = sub_1D1C075F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1C00E18(uint64_t a1)
{
  v2 = sub_1D1C075F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1C00E54()
{
  v1 = 0x656B617761;
  v2 = 0x6E776F6E6B6E75;
  if (*v0 != 2)
  {
    v2 = 0x6C646E6148746F6ELL;
  }

  if (*v0)
  {
    v1 = 0x7065656C73;
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

uint64_t sub_1D1C00ECC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1C08B3C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1C00EF4(uint64_t a1)
{
  v2 = sub_1D1C074A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1C00F30(uint64_t a1)
{
  v2 = sub_1D1C074A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1C00F6C(uint64_t a1)
{
  v2 = sub_1D1C074F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1C00FA8(uint64_t a1)
{
  v2 = sub_1D1C074F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1C00FE4(uint64_t a1)
{
  v2 = sub_1D1C075A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1C01020(uint64_t a1)
{
  v2 = sub_1D1C075A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1C0105C(uint64_t a1)
{
  v2 = sub_1D1C0754C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1C01098(uint64_t a1)
{
  v2 = sub_1D1C0754C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticMediaProfile.SleepWakeState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7F0, &qword_1D1EA04D0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C7F8, &qword_1D1EA04D8);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C800, &qword_1D1EA04E0);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C808, &qword_1D1EA04E8);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C810, &qword_1D1EA04F0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1C074A4();
  sub_1D1E6930C();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_1D1C0754C();
      v18 = v27;
      sub_1D1E68DFC();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_1D1C074F8();
      v18 = v30;
      sub_1D1E68DFC();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_1D1C075A0();
    v18 = v24;
    sub_1D1E68DFC();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_1D1C075F4();
  sub_1D1E68DFC();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

uint64_t StaticMediaProfile.SleepWakeState.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

uint64_t StaticMediaProfile.SleepWakeState.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C840, &qword_1D1EA04F8);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v34 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C848, &qword_1D1EA0500);
  v38 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C850, &qword_1D1EA0508);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C858, &qword_1D1EA0510);
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C860, &qword_1D1EA0518);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D1C074A4();
  v15 = v46;
  sub_1D1E692FC();
  if (!v15)
  {
    v16 = v9;
    v34 = v7;
    v35 = 0;
    v17 = v6;
    v18 = v43;
    v19 = v44;
    v46 = v11;
    v20 = v45;
    v21 = v13;
    v22 = sub_1D1E68DDC();
    v23 = (2 * *(v22 + 16)) | 1;
    v48 = v22;
    v49 = v22 + 32;
    v50 = 0;
    v51 = v23;
    v24 = sub_1D18085BC();
    if (v24 == 4 || v50 != v51 >> 1)
    {
      v26 = sub_1D1E688EC();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0);
      *v28 = &type metadata for StaticMediaProfile.SleepWakeState;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
LABEL_9:
      (*(v46 + 8))(v13, v10);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v47);
    }

    v52 = v24;
    if (v24 <= 1u)
    {
      if (v24)
      {
        v53 = 1;
        sub_1D1C075A0();
        v32 = v35;
        sub_1D1E68C4C();
        if (!v32)
        {
          (*(v36 + 8))(v17, v40);
          goto LABEL_17;
        }
      }

      else
      {
        v53 = 0;
        sub_1D1C075F4();
        v25 = v35;
        sub_1D1E68C4C();
        if (!v25)
        {
          (*(v37 + 8))(v16, v34);
LABEL_17:
          (*(v46 + 8))(v13, v10);
LABEL_22:
          swift_unknownObjectRelease();
          *v20 = v52;
          return __swift_destroy_boxed_opaque_existential_1(v47);
        }
      }

      goto LABEL_9;
    }

    v30 = v46;
    if (v24 == 2)
    {
      v53 = 2;
      sub_1D1C0754C();
      v31 = v35;
      sub_1D1E68C4C();
      if (!v31)
      {
        (*(v38 + 8))(v18, v42);
LABEL_21:
        (*(v30 + 8))(v21, v10);
        goto LABEL_22;
      }
    }

    else
    {
      v53 = 3;
      sub_1D1C074F8();
      v33 = v35;
      sub_1D1E68C4C();
      if (!v33)
      {
        (*(v39 + 8))(v19, v41);
        goto LABEL_21;
      }
    }

    (*(v30 + 8))(v21, v10);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t static StaticMediaProfile.getISSymbolName(for:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C868, &qword_1D1EA26D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16[-v3];
  v5 = sub_1D1E66F6C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D1741C08(a1, v4, &qword_1EC64C868, &qword_1D1EA26D0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v9 = 0x6E6F697473657571;
    sub_1D1741A30(v4, &qword_1EC64C868, &qword_1D1EA26D0);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_1D1741B10(0, &qword_1EC64C870, 0x1E69A8A40);
    v10 = sub_1D1E66F4C();
    v12 = sub_1D1C01E68(v10, v11);
    if (v12)
    {
      v14 = v12;
      v15 = [v12 name];
      v9 = sub_1D1E6781C();
    }

    else
    {
      v9 = 0x6E6F697473657571;
    }

    (*(v6 + 8))(v8, v5);
  }

  return v9;
}

id sub_1D1C01E68(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1D1E677EC();

  v7[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() symbolForTypeIdentifier:v2 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_1D1E6656C();

    swift_willThrow();
  }

  return v3;
}

uint64_t StaticMediaProfile.copyReplacing(id:name:roomIds:roomName:dateAdded:iconSymbol:isDoubleHigh:isCurrentAccessory:isFavorite:shouldShowInDashboard:staticAccessoryId:isReachable:hasValidSettings:staticServicesDictionary:deviceId:playbackState:sleepWakeState:mediaId:audioDestinationId:specialMediaCategory:symptoms:softwareUpdate:homeNonResponsiveType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, unsigned __int8 a11, unsigned __int8 a12, unsigned __int8 a13, uint64_t a14, unsigned __int8 a15, unsigned __int8 a16, uint64_t a17, uint64_t a18, unsigned __int8 *a19, unsigned __int8 *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unsigned __int8 *a28)
{
  v148 = a8;
  v138 = a7;
  v149 = a6;
  v150 = a3;
  v146 = a2;
  v147 = a5;
  v159 = a4;
  v154 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  v30 = MEMORY[0x1EEE9AC00](v29 - 8);
  v144 = &v130 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v158 = &v130 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C58, &unk_1D1E995D0);
  v34 = MEMORY[0x1EEE9AC00](v33 - 8);
  v139 = &v130 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v157 = &v130 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v38 = MEMORY[0x1EEE9AC00](v37 - 8);
  v40 = &v130 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v156 = &v130 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v43 = MEMORY[0x1EEE9AC00](v42 - 8);
  v137 = &v130 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v130 - v45;
  v47 = sub_1D1E66A7C();
  v48 = MEMORY[0x1EEE9AC00](v47);
  v153 = &v130 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x1EEE9AC00](v48);
  v52 = &v130 - v51;
  v53 = *a20;
  v160 = *a19;
  v161 = v53;
  v54 = v50;
  v151 = *a25;
  v152 = *(a25 + 8);
  v145 = *a28;
  v56 = v55;
  sub_1D1741C08(v154, v46, &qword_1EC642590, qword_1D1E71260);
  v57 = *(v56 + 48);
  v58 = v57(v46, 1, v54);
  v143 = v52;
  if (v58 != 1)
  {
    (*(v56 + 32))(v52, v46, v54);
    v59 = v155;
    v60 = v150;
    if (v150)
    {
      goto LABEL_5;
    }

LABEL_8:
    v62 = (v59 + *(type metadata accessor for StaticMediaProfile(0) + 20));
    v63 = v62[1];
    v146 = *v62;
    v142 = v63;

    v61 = v159;
    if (v159)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  v59 = v155;
  (*(v56 + 16))(v52, v155, v54);
  if (v57(v46, 1, v54) != 1)
  {
    sub_1D1741A30(v46, &qword_1EC642590, qword_1D1E71260);
  }

  v60 = v150;
  if (!v150)
  {
    goto LABEL_8;
  }

LABEL_5:
  v142 = v60;
  v61 = v159;
  if (v159)
  {
LABEL_6:
    v141 = v61;
    goto LABEL_10;
  }

LABEL_9:
  v141 = *(v59 + *(type metadata accessor for StaticMediaProfile(0) + 24));

LABEL_10:
  v154 = v56;
  v155 = v54;
  v64 = v149;
  if (!v149)
  {
    v147 = *(v59 + *(type metadata accessor for StaticMediaProfile(0) + 28));
  }

  v140 = v64;
  sub_1D1741C08(v138, v40, &qword_1EC642570, &qword_1D1E6C6A0);
  v65 = sub_1D1E669FC();
  v66 = *(v65 - 8);
  v67 = *(v66 + 48);
  if (v67(v40, 1, v65) == 1)
  {
    v68 = type metadata accessor for StaticMediaProfile(0);
    sub_1D1741C08(v59 + *(v68 + 32), v156, &qword_1EC642570, &qword_1D1E6C6A0);
    v69 = v67(v40, 1, v65);

    v70 = v139;
    if (v69 != 1)
    {
      sub_1D1741A30(v40, &qword_1EC642570, &qword_1D1E6C6A0);
    }
  }

  else
  {
    v71 = v156;
    (*(v66 + 32))(v156, v40, v65);
    (*(v66 + 56))(v71, 0, 1, v65);

    v70 = v139;
  }

  v72 = a11;
  v73 = v155;
  if (a10)
  {
    v139 = a10;
  }

  else
  {
    v74 = (v59 + *(type metadata accessor for StaticMediaProfile(0) + 36));
    v75 = v74[1];
    v148 = *v74;
    v139 = v75;
  }

  v76 = a13;
  if (a11 == 2)
  {
    v72 = *(v59 + *(type metadata accessor for StaticMediaProfile(0) + 40));
  }

  v77 = a12;
  if (a13 == 2)
  {
    v78 = type metadata accessor for StaticMediaProfile(0);
    v77 = a12;
    v76 = *(v59 + *(v78 + 44));
  }

  if (v77 == 2)
  {
    LODWORD(v138) = *(v59 + *(type metadata accessor for StaticMediaProfile(0) + 52));
  }

  else
  {
    LODWORD(v138) = v77;
  }

  LODWORD(v159) = a15;
  v79 = v137;
  sub_1D1741C08(a14, v137, &qword_1EC642590, qword_1D1E71260);
  if (v57(v79, 1, v73) == 1)
  {
    v80 = type metadata accessor for StaticMediaProfile(0);
    (*(v154 + 16))(v153, v59 + *(v80 + 56), v73);
    v81 = v57(v79, 1, v73);
    v82 = v79;
    v83 = v81;

    if (v83 != 1)
    {
      sub_1D1741A30(v82, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    (*(v154 + 32))(v153, v79, v73);
  }

  v84 = a16;
  LODWORD(v149) = v72;
  if (v159 == 2)
  {
    LODWORD(v159) = *(v59 + *(type metadata accessor for StaticMediaProfile(0) + 60));
  }

  if (a16 == 2)
  {
    v84 = *(v59 + *(type metadata accessor for StaticMediaProfile(0) + 64));
  }

  LODWORD(v137) = v84;
  if (a17)
  {
    v136 = a17;
  }

  else
  {
    v136 = *(v59 + *(type metadata accessor for StaticMediaProfile(0) + 68));
  }

  sub_1D1741C08(a18, v70, &qword_1EC643C58, &unk_1D1E995D0);
  v85 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v86 = *(v85 - 8);
  v87 = *(v86 + 48);
  if (v87(v70, 1, v85) == 1)
  {
    v88 = type metadata accessor for StaticMediaProfile(0);
    sub_1D1741C08(v59 + *(v88 + 72), v157, &qword_1EC643C58, &unk_1D1E995D0);
    v89 = v87(v70, 1, v85);

    v90 = v144;
    if (v89 != 1)
    {
      sub_1D1741A30(v70, &qword_1EC643C58, &unk_1D1E995D0);
    }
  }

  else
  {
    v91 = v157;
    sub_1D1C0942C(v70, v157, type metadata accessor for StaticAccessory.DeviceIdentifier);
    (*(v86 + 56))(v91, 0, 1, v85);

    v90 = v144;
  }

  LODWORD(v144) = v76;
  if (v160 == 6)
  {
    v160 = *(v59 + *(type metadata accessor for StaticMediaProfile(0) + 76));
  }

  if (v161 == 4)
  {
    v161 = *(v59 + *(type metadata accessor for StaticMediaProfile(0) + 80));
  }

  v94 = a22;
  if (!a22)
  {
    v95 = (v59 + *(type metadata accessor for StaticMediaProfile(0) + 84));
    a21 = *v95;
    v94 = v95[1];
  }

  v135 = a21;
  v96 = a24;
  if (!a24)
  {
    a23 = *(v59 + *(type metadata accessor for StaticMediaProfile(0) + 88));
  }

  v132 = v96;
  v97 = v59;
  v98 = v151;
  LODWORD(v150) = v152;
  if (v152 == 255)
  {
    v99 = v59 + *(type metadata accessor for StaticMediaProfile(0) + 92);
    v98 = *v99;
    v100 = *v99;
    LODWORD(v150) = *(v99 + 8);
    sub_1D18EB144(v100, v150);
  }

  v131 = v98;
  v133 = v94;
  v134 = a23;
  v101 = a26;
  if (!a26)
  {
    type metadata accessor for StaticMediaProfile(0);
  }

  v130 = v101;
  sub_1D1741C08(a27, v90, &qword_1EC644760, &unk_1D1E9E530);
  v102 = type metadata accessor for StaticSoftwareUpdate(0);
  v103 = v90;
  v104 = *(v102 - 8);
  v105 = *(v104 + 48);
  if (v105(v90, 1, v102) == 1)
  {
    v106 = type metadata accessor for StaticMediaProfile(0);
    sub_1D1741C08(v59 + *(v106 + 100), v158, &qword_1EC644760, &unk_1D1E9E530);
    v107 = v105(v90, 1, v102);

    sub_1D18EB144(v151, v152);

    v108 = v131;
    if (v107 != 1)
    {
      sub_1D1741A30(v90, &qword_1EC644760, &unk_1D1E9E530);
    }
  }

  else
  {
    v109 = v158;
    sub_1D1C0942C(v103, v158, type metadata accessor for StaticSoftwareUpdate);
    (*(v104 + 56))(v109, 0, 1, v102);

    sub_1D18EB144(v151, v152);

    v108 = v131;
  }

  v110 = v145;
  v111 = v143;
  v112 = v144;
  if (v145 == 3)
  {
    v110 = *(v97 + *(type metadata accessor for StaticMediaProfile(0) + 104));
  }

  v113 = v155;
  v114 = *(v154 + 32);
  v114(a9, v111, v155);
  v115 = type metadata accessor for StaticMediaProfile(0);
  v116 = (a9 + v115[5]);
  v117 = v141;
  v118 = v142;
  *v116 = v146;
  v116[1] = v118;
  *(a9 + v115[6]) = v117;
  v119 = (a9 + v115[7]);
  v120 = v140;
  *v119 = v147;
  v119[1] = v120;
  sub_1D1741A90(v156, a9 + v115[8], &qword_1EC642570, &qword_1D1E6C6A0);
  v121 = (a9 + v115[9]);
  v122 = v139;
  *v121 = v148;
  v121[1] = v122;
  *(a9 + v115[10]) = v149 & 1;
  *(a9 + v115[11]) = v112 & 1;
  *(a9 + v115[12]) = 1;
  *(a9 + v115[13]) = v138 & 1;
  v114(a9 + v115[14], v153, v113);
  *(a9 + v115[15]) = v159 & 1;
  *(a9 + v115[16]) = v137 & 1;
  *(a9 + v115[17]) = v136;
  sub_1D1741A90(v157, a9 + v115[18], &qword_1EC643C58, &unk_1D1E995D0);
  v123 = v161;
  *(a9 + v115[19]) = v160;
  *(a9 + v115[20]) = v123;
  v124 = (a9 + v115[21]);
  v125 = v133;
  *v124 = v135;
  v124[1] = v125;
  v126 = (a9 + v115[22]);
  v127 = v132;
  *v126 = v134;
  v126[1] = v127;
  v128 = a9 + v115[23];
  *v128 = v108;
  *(v128 + 8) = v150;
  *(a9 + v115[24]) = v130;
  result = sub_1D1741A90(v158, a9 + v115[25], &qword_1EC644760, &unk_1D1E9E530);
  *(a9 + v115[26]) = v110;
  return result;
}

double static StaticMediaProfile.test(name:specialMediaCategory:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a3;
  v6 = *(a3 + 8);
  sub_1D1E66A6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D1E739C0;
  sub_1D1E66A6C();
  v31 = sub_1D179BE14(v10);
  swift_setDeallocating();
  (*(v8 + 8))(v10 + v9, v7);
  swift_deallocClassInstance();
  v11 = type metadata accessor for StaticMediaProfile(0);
  v12 = v11[8];
  sub_1D1E6698C();
  v13 = sub_1D1E669FC();
  (*(*(v13 - 8) + 56))(a4 + v12, 0, 1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643200, &qword_1D1E71658);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 32) = v5;
  v15 = inited + 32;
  *(inited + 40) = v6;
  v16 = _s13HomeDataModel18StaticMediaProfileV10iconSymbol3forSSSayAA0D9AccessoryV07SpecialE8CategoryOG_tFZ_0(inited);
  v18 = v17;
  swift_setDeallocating();
  sub_1D1771B4C(v5, v6);
  sub_1D18EB158(v15);
  sub_1D1E66A6C();
  v19 = sub_1D18D5D90(MEMORY[0x1E69E7CC0]);
  v20 = v11[18];
  sub_1D1E66A6C();
  v21 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v21 - 8) + 56))(a4 + v20, 0, 1, v21);
  v22 = v11[25];
  v23 = type metadata accessor for StaticSoftwareUpdate(0);
  (*(*(v23 - 8) + 56))(a4 + v22, 1, 1, v23);
  v24 = (a4 + v11[5]);
  *v24 = a1;
  v24[1] = a2;
  *(a4 + v11[6]) = v31;
  v25 = (a4 + v11[7]);
  *v25 = 0;
  v25[1] = 0;
  v26 = (a4 + v11[9]);
  *v26 = v16;
  v26[1] = v18;
  *(a4 + v11[10]) = 0;
  *(a4 + v11[11]) = 1;
  *(a4 + v11[12]) = 1;
  *(a4 + v11[13]) = 0;
  *(a4 + v11[15]) = 1;
  *(a4 + v11[16]) = 1;
  *(a4 + v11[17]) = v19;
  *(a4 + v11[19]) = 6;
  *(a4 + v11[20]) = 4;
  v27 = (a4 + v11[21]);
  *v27 = 0;
  v27[1] = 0;
  v28 = (a4 + v11[22]);
  *v28 = 0;
  v28[1] = 0;
  v29 = a4 + v11[23];
  *v29 = v5;
  *(v29 + 8) = v6;
  *(a4 + v11[24]) = 0;
  *(a4 + v11[26]) = 0;
  sub_1D1771B4C(v5, v6);

  return result;
}

uint64_t sub_1D1C03084(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 272) = a3;
  *(v4 + 280) = a4;
  *(v4 + 692) = a2;
  *(v4 + 264) = a1;
  *(v4 + 288) = type metadata accessor for StateSnapshot.UpdateType(0);
  *(v4 + 296) = swift_task_alloc();
  v5 = sub_1D1E6702C();
  *(v4 + 304) = v5;
  *(v4 + 312) = *(v5 - 8);
  *(v4 + 320) = swift_task_alloc();
  *(v4 + 328) = swift_task_alloc();
  v6 = sub_1D1E66FDC();
  *(v4 + 336) = v6;
  *(v4 + 344) = *(v6 - 8);
  *(v4 + 352) = swift_task_alloc();
  *(v4 + 360) = swift_task_alloc();
  *(v4 + 368) = swift_task_alloc();
  *(v4 + 376) = swift_task_alloc();
  v7 = sub_1D1E66A7C();
  *(v4 + 384) = v7;
  *(v4 + 392) = *(v7 - 8);
  *(v4 + 400) = swift_task_alloc();
  *(v4 + 408) = swift_task_alloc();
  *(v4 + 416) = swift_task_alloc();
  *(v4 + 424) = swift_task_alloc();
  *(v4 + 432) = swift_task_alloc();
  *(v4 + 440) = type metadata accessor for StateSnapshot(0);
  v8 = swift_task_alloc();
  *(v4 + 448) = v8;
  *v8 = v4;
  v8[1] = sub_1D1C032DC;

  return StaticHome.home.getter();
}

uint64_t sub_1D1C032DC(uint64_t a1)
{
  *(*v1 + 456) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1C033DC, 0, 0);
}

uint64_t sub_1D1C033DC()
{
  v38 = v0;
  if (*(v0 + 456))
  {
    v1 = swift_task_alloc();
    *(v0 + 464) = v1;
    *v1 = v0;
    v1[1] = sub_1D1C0385C;

    return sub_1D1E387D4();
  }

  else
  {
    if (qword_1EE07B5D0 != -1)
    {
      swift_once();
    }

    v3 = sub_1D1E6709C();
    __swift_project_value_buffer(v3, qword_1EE07B5D8);

    v4 = sub_1D1E6707C();
    v5 = sub_1D1E6833C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 272);
      v7 = *(v0 + 692);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v36 = v9;
      *v8 = 136315650;
      *(v8 + 4) = sub_1D1B1312C(0xD000000000000031, 0x80000001D1EC67E0, &v36);
      *(v8 + 12) = 1024;
      *(v8 + 14) = v7;
      *(v8 + 18) = 2080;
      v10 = *(v6 + 16);
      v11 = MEMORY[0x1E69E7CC0];
      if (v10)
      {
        v30 = v9;
        v31 = v5;
        v32 = v8;
        v33 = v4;
        v12 = *(v0 + 392);
        v13 = *(v0 + 272);
        v37 = MEMORY[0x1E69E7CC0];
        sub_1D178CD24(0, v10, 0);
        v11 = v37;
        v14 = *(v12 + 16);
        v12 += 16;
        v15 = v13 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
        v34 = *(v12 + 56);
        v35 = v14;
        v16 = (v12 - 8);
        do
        {
          v17 = *(v0 + 408);
          v18 = *(v0 + 384);
          v35(v17, v15, v18);
          v19 = sub_1D1E66A1C();
          v21 = v20;
          (*v16)(v17, v18);
          v37 = v11;
          v23 = *(v11 + 16);
          v22 = *(v11 + 24);
          if (v23 >= v22 >> 1)
          {
            sub_1D178CD24((v22 > 1), v23 + 1, 1);
            v11 = v37;
          }

          *(v11 + 16) = v23 + 1;
          v24 = v11 + 16 * v23;
          *(v24 + 32) = v19;
          *(v24 + 40) = v21;
          v15 += v34;
          --v10;
        }

        while (v10);
        v8 = v32;
        v4 = v33;
        v5 = v31;
        v9 = v30;
      }

      *(v0 + 208) = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
      sub_1D17B3684();
      v25 = sub_1D1E6770C();
      v27 = v26;

      v28 = sub_1D1B1312C(v25, v27, &v36);

      *(v8 + 20) = v28;
      _os_log_impl(&dword_1D16EC000, v4, v5, "%s Home not found to set power state to %{BOOL}d for device idss %s.", v8, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v9, -1, -1);
      MEMORY[0x1D3893640](v8, -1, -1);
    }

    (*(*(*(v0 + 440) - 8) + 56))(*(v0 + 264), 1, 1);

    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t sub_1D1C0385C(uint64_t a1)
{
  *(*v1 + 472) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1C0395C, 0, 0);
}

uint64_t sub_1D1C0395C()
{
  v65 = v0;
  if (*(v0 + 472))
  {
    if (MEMORY[0x1E69E7CC0] >> 62)
    {
      if (sub_1D1E6873C())
      {
        sub_1D179D370(MEMORY[0x1E69E7CC0]);
      }

      else
      {
        v56 = MEMORY[0x1E69E7CD0];
      }

      *(v0 + 224) = v56;
      if (sub_1D1E6873C())
      {
        sub_1D179D394(MEMORY[0x1E69E7CC0]);
      }

      else
      {
        v1 = MEMORY[0x1E69E7CD0];
      }
    }

    else
    {
      v1 = MEMORY[0x1E69E7CD0];
      *(v0 + 224) = MEMORY[0x1E69E7CD0];
    }

    v2 = *(v0 + 272);
    *(v0 + 232) = v1;
    v3 = *(v2 + 16);
    *(v0 + 480) = v3;
    if (v3)
    {
      v4 = *(v0 + 384);
      v5 = *(v0 + 392);
      v6 = *(v5 + 16);
      v5 += 16;
      v7 = *(v5 + 64);
      *(v0 + 688) = v7;
      *(v0 + 488) = *(v5 + 56);
      *(v0 + 496) = v6;
      v8 = *(v0 + 432);
      *(v0 + 504) = 0;
      *(v0 + 512) = v5 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v6(v8, v2 + ((v7 + 32) & ~v7), v4);
      v9 = swift_task_alloc();
      *(v0 + 520) = v9;
      *v9 = v0;
      v9[1] = sub_1D1C0419C;
      v10 = *(v0 + 432);
      v11 = *(v0 + 280);

      return sub_1D1C08CA0(v10, v11);
    }

    else
    {
      if (qword_1EE07AE48 != -1)
      {
        swift_once();
      }

      v35 = sub_1D1E6701C();
      *(v0 + 536) = __swift_project_value_buffer(v35, qword_1EE07AE50);
      sub_1D1E66FCC();
      v36 = sub_1D1E66FFC();
      v37 = sub_1D1E683EC();
      if (sub_1D1E6855C())
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        v39 = sub_1D1E66FBC();
        _os_signpost_emit_with_name_impl(&dword_1D16EC000, v36, v37, v39, "MediaSetPowerState", "", v38, 2u);
        MEMORY[0x1D3893640](v38, -1, -1);
      }

      v40 = *(v0 + 456);
      v41 = *(v0 + 368);
      v42 = *(v0 + 376);
      v43 = *(v0 + 336);
      v44 = *(v0 + 344);

      (*(v44 + 16))(v41, v42, v43);
      sub_1D1E6705C();
      swift_allocObject();
      *(v0 + 544) = sub_1D1E6704C();
      v45 = *(v44 + 8);
      *(v0 + 552) = v45;
      *(v0 + 560) = (v44 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v45(v42, v43);
      v46 = *(v0 + 224);
      *(v0 + 568) = v46;
      sub_1D1BFAAF4(v46, &qword_1EC643000, 0x1E696CAF8, &qword_1EC64C908);
      sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
      sub_1D1771944(&qword_1EE079BE0, &qword_1EE079BF0, 0x1E696CAE8);
      v47 = sub_1D1E6815C();
      *(v0 + 576) = v47;

      *(v0 + 16) = v0;
      *(v0 + 24) = sub_1D1C049A4;
      v48 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
      *(v0 + 80) = MEMORY[0x1E69E9820];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1D17B04C8;
      *(v0 + 104) = &block_descriptor_50;
      *(v0 + 112) = v48;
      [v40 executeActions:v47 completionHandler:v0 + 80];

      return MEMORY[0x1EEE6DEC8](v0 + 16);
    }
  }

  else
  {
    if (qword_1EE07B5D0 != -1)
    {
      swift_once();
    }

    v13 = sub_1D1E6709C();
    __swift_project_value_buffer(v13, qword_1EE07B5D8);

    v14 = sub_1D1E6707C();
    v15 = sub_1D1E6833C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 272);
      v17 = *(v0 + 692);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v63 = v19;
      *v18 = 136315650;
      *(v18 + 4) = sub_1D1B1312C(0xD000000000000031, 0x80000001D1EC67E0, &v63);
      *(v18 + 12) = 1024;
      *(v18 + 14) = v17;
      *(v18 + 18) = 2080;
      v20 = *(v16 + 16);
      v21 = MEMORY[0x1E69E7CC0];
      if (v20)
      {
        v57 = v19;
        v58 = v15;
        v59 = v18;
        v60 = v14;
        v22 = *(v0 + 392);
        v23 = *(v0 + 272);
        v64 = MEMORY[0x1E69E7CC0];
        sub_1D178CD24(0, v20, 0);
        v21 = v64;
        v24 = *(v22 + 16);
        v22 += 16;
        v25 = v23 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
        v61 = *(v22 + 56);
        v62 = v24;
        v26 = (v22 - 8);
        do
        {
          v27 = *(v0 + 408);
          v28 = *(v0 + 384);
          v62(v27, v25, v28);
          v29 = sub_1D1E66A1C();
          v31 = v30;
          (*v26)(v27, v28);
          v64 = v21;
          v33 = *(v21 + 16);
          v32 = *(v21 + 24);
          if (v33 >= v32 >> 1)
          {
            sub_1D178CD24((v32 > 1), v33 + 1, 1);
            v21 = v64;
          }

          *(v21 + 16) = v33 + 1;
          v34 = v21 + 16 * v33;
          *(v34 + 32) = v29;
          *(v34 + 40) = v31;
          v25 += v61;
          --v20;
        }

        while (v20);
        v18 = v59;
        v14 = v60;
        v15 = v58;
        v19 = v57;
      }

      v50 = *(v0 + 456);
      *(v0 + 216) = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
      sub_1D17B3684();
      v51 = sub_1D1E6770C();
      v53 = v52;

      v54 = sub_1D1B1312C(v51, v53, &v63);

      *(v18 + 20) = v54;
      _os_log_impl(&dword_1D16EC000, v14, v15, "%s HomeManager not found to set power state to %{BOOL}d for device idss %s.", v18, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v19, -1, -1);
      MEMORY[0x1D3893640](v18, -1, -1);
    }

    else
    {
      v49 = *(v0 + 456);
    }

    (*(*(*(v0 + 440) - 8) + 56))(*(v0 + 264), 1, 1);

    v55 = *(v0 + 8);

    return v55();
  }
}

uint64_t sub_1D1C0419C(uint64_t a1)
{
  *(*v1 + 528) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1C0429C, 0, 0);
}

uint64_t sub_1D1C0429C()
{
  v56 = v0;
  v1 = *(v0 + 528);
  if (v1)
  {
    if (*(v0 + 692))
    {
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }

    v3 = [objc_allocWithZone(MEMORY[0x1E696CAF8]) initWithAccessory:v1 targetSleepWakeState:v2];
    if (v3)
    {
      v4 = v3;
      v5 = [v1 mediaProfile];
      if (v5)
      {
        sub_1D1763114(&v55, v5);
      }

      v6 = *(v0 + 432);
      v7 = *(v0 + 384);
      v8 = *(v0 + 392);
      v9 = v4;
      sub_1D1768DB8(&v55, v9);

      (*(v8 + 8))(v6, v7);
      goto LABEL_15;
    }
  }

  if (qword_1EE07B5D0 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 496);
  v11 = *(v0 + 424);
  v12 = *(v0 + 432);
  v13 = *(v0 + 384);
  v14 = sub_1D1E6709C();
  __swift_project_value_buffer(v14, qword_1EE07B5D8);
  v10(v11, v12, v13);
  v15 = sub_1D1E6707C();
  v16 = sub_1D1E6833C();
  v17 = os_log_type_enabled(v15, v16);
  v18 = *(v0 + 424);
  v19 = *(v0 + 432);
  v21 = *(v0 + 384);
  v20 = *(v0 + 392);
  if (v17)
  {
    v54 = *(v0 + 432);
    v22 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v55 = v53;
    *v22 = 136315906;
    *(v22 + 4) = sub_1D1B1312C(0xD00000000000007CLL, 0x80000001D1EC6820, &v55);
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_1D1B1312C(0xD000000000000031, 0x80000001D1EC67E0, &v55);
    *(v22 + 22) = 2048;
    *(v22 + 24) = 460;
    *(v22 + 32) = 2080;
    sub_1D1C07270(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v23 = sub_1D1E68FAC();
    v25 = v24;
    v26 = *(v20 + 8);
    v26(v18, v21);
    v27 = sub_1D1B1312C(v23, v25, &v55);

    *(v22 + 34) = v27;
    _os_log_impl(&dword_1D16EC000, v15, v16, "%s | %s | %ld | Could not create power action using deviceID: %s", v22, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v53, -1, -1);
    MEMORY[0x1D3893640](v22, -1, -1);

    v26(v54, v21);
  }

  else
  {

    v28 = *(v20 + 8);
    v28(v18, v21);
    v28(v19, v21);
  }

LABEL_15:
  v29 = *(v0 + 504) + 1;
  if (v29 == *(v0 + 480))
  {
    if (qword_1EE07AE48 != -1)
    {
      swift_once();
    }

    v30 = sub_1D1E6701C();
    *(v0 + 536) = __swift_project_value_buffer(v30, qword_1EE07AE50);
    sub_1D1E66FCC();
    v31 = sub_1D1E66FFC();
    v32 = sub_1D1E683EC();
    if (sub_1D1E6855C())
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = sub_1D1E66FBC();
      _os_signpost_emit_with_name_impl(&dword_1D16EC000, v31, v32, v34, "MediaSetPowerState", "", v33, 2u);
      MEMORY[0x1D3893640](v33, -1, -1);
    }

    v35 = *(v0 + 456);
    v36 = *(v0 + 368);
    v37 = *(v0 + 376);
    v38 = *(v0 + 336);
    v39 = *(v0 + 344);

    (*(v39 + 16))(v36, v37, v38);
    sub_1D1E6705C();
    swift_allocObject();
    *(v0 + 544) = sub_1D1E6704C();
    v40 = *(v39 + 8);
    *(v0 + 552) = v40;
    *(v0 + 560) = (v39 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v40(v37, v38);
    v41 = *(v0 + 224);
    *(v0 + 568) = v41;
    sub_1D1BFAAF4(v41, &qword_1EC643000, 0x1E696CAF8, &qword_1EC64C908);
    sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
    sub_1D1771944(&qword_1EE079BE0, &qword_1EE079BF0, 0x1E696CAE8);
    v42 = sub_1D1E6815C();
    *(v0 + 576) = v42;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1D1C049A4;
    v43 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1D17B04C8;
    *(v0 + 104) = &block_descriptor_50;
    *(v0 + 112) = v43;
    [v35 executeActions:v42 completionHandler:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    v44 = *(v0 + 496);
    v45 = *(v0 + 432);
    v46 = *(v0 + 384);
    v47 = *(v0 + 272) + ((*(v0 + 688) + 32) & ~*(v0 + 688)) + *(v0 + 488) * v29;
    v48 = (*(v0 + 392) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 504) = v29;
    *(v0 + 512) = v48;
    v44(v45, v47, v46);
    v49 = swift_task_alloc();
    *(v0 + 520) = v49;
    *v49 = v0;
    v49[1] = sub_1D1C0419C;
    v50 = *(v0 + 432);
    v51 = *(v0 + 280);

    return sub_1D1C08CA0(v50, v51);
  }
}

uint64_t sub_1D1C049A4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 584) = v1;
  if (v1)
  {

    v2 = sub_1D1C055D4;
  }

  else
  {
    v2 = sub_1D1C04AC8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1C04AC8()
{
  v1 = v0;

  v2 = sub_1D1E66FFC();
  sub_1D1E6703C();
  v3 = sub_1D1E683DC();
  if (sub_1D1E6855C())
  {
    v4 = *(v0 + 328);
    v5 = *(v0 + 304);
    v6 = *(v0 + 312);

    sub_1D1E6706C();

    if ((*(v6 + 88))(v4, v5) == *MEMORY[0x1E69E93E8])
    {
      v7 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 312) + 8))(*(v0 + 328), *(v0 + 304));
      v7 = "";
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v2, v3, v9, "MediaSetPowerState", v7, v8, 2u);
    MEMORY[0x1D3893640](v8, -1, -1);
  }

  v10 = *(v0 + 552);
  v11 = *(v0 + 360);
  v12 = *(v0 + 336);

  v10(v11, v12);
  v13 = *(v0 + 232);
  v14 = sub_1D18DAFD4(MEMORY[0x1E69E7CC0]);
  if ((v13 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D1E686EC();
    sub_1D1741B10(0, &qword_1EC642FB8, 0x1E696CBF0);
    sub_1D1771944(&qword_1EC642FC0, &qword_1EC642FB8, 0x1E696CBF0);
    v15 = sub_1D1E681BC();
    v13 = *(v0 + 144);
    v18 = *(v0 + 152);
    v19 = *(v0 + 160);
    v20 = *(v0 + 168);
    v21 = *(v0 + 176);
  }

  else
  {
    v22 = -1 << *(v13 + 32);
    v18 = v13 + 56;
    v19 = ~v22;
    v23 = -v22;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v21 = v24 & *(v13 + 56);

    v20 = 0;
  }

  v25 = *(v0 + 392);
  v26 = *(v0 + 692);
  v54 = v19;
  v27 = (v19 + 64) >> 6;
  v58 = v26 | 0x80;
  v55 = v25;
  v56 = v27;
  v57 = (v25 + 8);
  for (i = v1; ; v1 = i)
  {
    v1[74] = v14;
    if (v13 < 0)
    {
      v33 = sub_1D1E6877C();
      if (!v33 || (v1[32] = v33, sub_1D1741B10(0, &qword_1EC642FB8, 0x1E696CBF0), swift_dynamicCast(), v32 = v1[31], v30 = v20, v31 = v21, !v32))
      {
LABEL_33:
        sub_1D1716918(v13);

        i[75] = sub_1D1E67E1C();
        i[76] = sub_1D1E67E0C();
        v50 = sub_1D1E67D4C();
        v52 = v51;
        v15 = sub_1D1C0509C;
        v16 = v50;
        v17 = v52;

        return MEMORY[0x1EEE6DFA0](v15, v16, v17);
      }
    }

    else
    {
      v28 = v20;
      v29 = v21;
      v30 = v20;
      if (!v21)
      {
        while (1)
        {
          v30 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            break;
          }

          if (v30 >= v27)
          {
            goto LABEL_33;
          }

          v29 = *(v18 + 8 * v30);
          ++v28;
          if (v29)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v15, v16, v17);
      }

LABEL_20:
      v31 = (v29 - 1) & v29;
      v32 = *(*(v13 + 48) + ((v30 << 9) | (8 * __clz(__rbit64(v29)))));
      if (!v32)
      {
        goto LABEL_33;
      }
    }

    v34 = v18;
    v35 = v13;
    v36 = [v32 uniqueIdentifier];
    sub_1D1E66A5C();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = v14;
    v15 = sub_1D1742188();
    v38 = v14[2];
    v39 = (v16 & 1) == 0;
    v40 = __OFADD__(v38, v39);
    v41 = v38 + v39;
    if (v40)
    {
      goto LABEL_40;
    }

    v42 = v16;
    if (v14[3] < v41)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v49 = v15;
      sub_1D173BFC4();
      v15 = v49;
      v14 = v60;
    }

LABEL_30:
    v44 = i[52];
    v45 = i[48];
    if (v42)
    {
      *(v14[7] + v15) = v58;

      v15 = (*v57)(v44, v45);
    }

    else
    {
      v14[(v15 >> 6) + 8] |= 1 << v15;
      v46 = v15;
      (*(v55 + 16))(v14[6] + *(v55 + 72) * v15, v44, v45);
      *(v14[7] + v46) = v58;

      v15 = (*(v55 + 8))(v44, v45);
      v47 = v14[2];
      v40 = __OFADD__(v47, 1);
      v48 = v47 + 1;
      if (v40)
      {
        goto LABEL_41;
      }

      v14[2] = v48;
    }

    v20 = v30;
    v21 = v31;
    v13 = v35;
    v18 = v34;
    v27 = v56;
  }

  sub_1D172DCA8(v41, isUniquelyReferenced_nonNull_native);
  v15 = sub_1D1742188();
  if ((v42 & 1) == (v43 & 1))
  {
    goto LABEL_30;
  }

  return sub_1D1E690FC();
}

uint64_t sub_1D1C0509C()
{

  if (qword_1EE07AE28 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1C05134, 0, 0);
}

uint64_t sub_1D1C05134(uint64_t a1)
{
  *(v1 + 616) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1C051C0, v3, v2);
}

uint64_t sub_1D1C051C0()
{

  *(v0 + 624) = qword_1EE07AE30;

  return MEMORY[0x1EEE6DFA0](sub_1D1C05234, 0, 0);
}

uint64_t sub_1D1C05234()
{
  v1 = v0[74];
  v2 = v0[59];
  v3 = v0[57];
  v4 = v0[37];
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9C8, &unk_1D1E98080) + 48);
  v6 = [v3 uniqueIdentifier];
  sub_1D1E66A5C();

  *(v4 + v5) = v1;
  swift_storeEnumTagMultiPayload();
  v7 = swift_task_alloc();
  v0[79] = v7;
  *v7 = v0;
  v7[1] = sub_1D1C05358;
  v8 = v0[37];
  v9 = v0[33];

  return sub_1D1E5A250(v9, v8, v2, v3, 0);
}

uint64_t sub_1D1C05358()
{
  v1 = *(*v0 + 296);

  sub_1D1C09494(v1, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1C05484, 0, 0);
}

uint64_t sub_1D1C05484()
{
  v1 = v0[59];
  v2 = v0[57];
  v3 = v0[55];
  v4 = v0[33];

  (*(*(v3 - 8) + 56))(v4, 0, 1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D1C055D4(uint64_t a1)
{
  v2 = v1[72];
  swift_willThrow();

  v3 = sub_1D1E66FFC();
  sub_1D1E6703C();
  v4 = sub_1D1E683DC();
  if (sub_1D1E6855C())
  {
    v6 = v1[39];
    v5 = v1[40];
    v7 = v1[38];

    sub_1D1E6706C();

    if ((*(v6 + 88))(v5, v7) == *MEMORY[0x1E69E93E8])
    {
      v8 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1[39] + 8))(v1[40], v1[38]);
      v8 = "";
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v3, v4, v10, "MediaSetPowerState", v8, v9, 2u);
    MEMORY[0x1D3893640](v9, -1, -1);
  }

  v11 = v1[69];
  v12 = v1[44];
  v13 = v1[42];

  v11(v12, v13);
  if (qword_1EE07B5D0 != -1)
  {
    swift_once();
  }

  v14 = v1[73];
  v15 = sub_1D1E6709C();
  __swift_project_value_buffer(v15, qword_1EE07B5D8);
  v16 = v14;
  v17 = sub_1D1E6707C();
  v18 = sub_1D1E6833C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = v1[73];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    v22 = v19;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 4) = v23;
    *v21 = v23;
    _os_log_impl(&dword_1D16EC000, v17, v18, "Error executing power actions %@", v20, 0xCu);
    sub_1D1741A30(v21, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v21, -1, -1);
    MEMORY[0x1D3893640](v20, -1, -1);
  }

  v1[80] = sub_1D1E67E1C();
  v1[81] = sub_1D1E67E0C();
  v25 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1C058E0, v25, v24);
}

uint64_t sub_1D1C058E0()
{

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1C05978, 0, 0);
}

uint64_t sub_1D1C05978(uint64_t a1)
{
  *(v1 + 656) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1C05A04, v3, v2);
}

uint64_t sub_1D1C05A04()
{

  *(v0 + 664) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D1C05A78, 0, 0);
}

uint64_t sub_1D1C05A78()
{
  v1 = [*(v0 + 456) uniqueIdentifier];
  sub_1D1E66A5C();

  *(v0 + 672) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1C05B38, v3, v2);
}

uint64_t sub_1D1C05B38()
{
  v1 = v0[83];

  swift_getKeyPath();
  v0[30] = v1;
  sub_1D1C07270(&qword_1EE07CFB0, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);
  sub_1D1E66CAC();

  v2 = OBJC_IVAR____TtC13HomeDataModel9DataModel__homesToStateSnapshots;
  swift_beginAccess();
  v0[85] = *(v1 + v2);

  return MEMORY[0x1EEE6DFA0](sub_1D1C05C48, 0, 0);
}

uint64_t sub_1D1C05C48()
{
  if (*(v0[85] + 16))
  {
    v1 = sub_1D1742188();
    v2 = v0[73];
    v3 = v0[59];
    v4 = v0[57];
    v5 = v0[55];
    v7 = v0[49];
    v6 = v0[50];
    v8 = v0[48];
    if (v9)
    {
      v22 = v0[50];
      v10 = *(v5 - 8);
      sub_1D1C09520(*(v0[85] + 56) + *(v10 + 72) * v1, v0[33], type metadata accessor for StateSnapshot);

      (*(v7 + 8))(v22, v8);

      v11 = 0;
      goto LABEL_7;
    }

    (*(v7 + 8))(v6, v8);
    v19 = *(v5 - 8);
  }

  else
  {
    v12 = v0[73];
    v13 = v0[59];
    v14 = v0[57];
    v15 = v0[55];
    v17 = v0[49];
    v16 = v0[50];
    v18 = v0[48];

    (*(v17 + 8))(v16, v18);
    v19 = *(v15 - 8);
  }

  v10 = v19;
  v11 = 1;
LABEL_7:
  (*(v10 + 56))(v0[33], v11, 1, v0[55]);

  v20 = v0[1];

  return v20();
}

void *sub_1D1C05EFC(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5)
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
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    v10 = sub_1D19FA9A0(result, a2, a3, a4, a5);

    return v10;
  }

  return result;
}

void sub_1D1C05F8C(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1D1E684EC();
  v5 = v3 + 56;
  v6 = -1 << *(v3 + 32);
  v7 = v4 & ~v6;
  v8 = v7 >> 6;
  v9 = *(v3 + 56 + 8 * (v7 >> 6));
  v10 = 1 << v7;
  if (((1 << v7) & v9) != 0)
  {
    v11 = ~v6;
    sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
    while (1)
    {
      v12 = *(*(v3 + 48) + 8 * v7);
      v13 = sub_1D1E684FC();

      if (v13)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
      v8 = v7 >> 6;
      v9 = *(v5 + 8 * (v7 >> 6));
      v10 = 1 << v7;
      if (((1 << v7) & v9) == 0)
      {
        goto LABEL_5;
      }
    }

    v15 = *(v3 + 48);
    v16 = *(v15 + 8 * v7);
    *(v15 + 8 * v7) = a1;
  }

  else
  {
LABEL_5:
    v14 = *(v3 + 16);
    if (v14 >= *(v3 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v5 + 8 * v8) = v10 | v9;
      *(*(v3 + 48) + 8 * v7) = a1;
      *(v3 + 16) = v14 + 1;
    }
  }
}

BOOL _s13HomeDataModel18StaticMediaProfileV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v107 = type metadata accessor for StaticSoftwareUpdate(0);
  v105 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v103 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v106 = &v99 - v6;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C608, &qword_1D1E9FA10);
  MEMORY[0x1EEE9AC00](v104);
  v108 = &v99 - v7;
  v111 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v109 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v9 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C58, &unk_1D1E995D0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v110 = &v99 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C910, &qword_1D1EA0D90);
  MEMORY[0x1EEE9AC00](v12);
  v112 = &v99 - v13;
  v14 = sub_1D1E669FC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v99 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v99 - v22;
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v102 = v9;
  v24 = type metadata accessor for StaticMediaProfile(0);
  v25 = v24[5];
  v26 = *(a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  if ((v26 != *v28 || v27 != v28[1]) && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1D17A6E98(*(a1 + v24[6]), *(a2 + v24[6])) & 1) == 0)
  {
    return 0;
  }

  v29 = v24[7];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (!v33 || (*v30 != *v32 || v31 != v33) && (sub_1D1E6904C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v33)
  {
    return 0;
  }

  v34 = a1;
  v35 = a2;
  v101 = v24;
  v36 = v24[8];
  v37 = *(v21 + 48);
  v99 = v34;
  sub_1D1741C08(v34 + v36, v23, &qword_1EC642570, &qword_1D1E6C6A0);
  v100 = v35;
  sub_1D1741C08(v35 + v36, &v23[v37], &qword_1EC642570, &qword_1D1E6C6A0);
  v38 = *(v15 + 48);
  if (v38(v23, 1, v14) == 1)
  {
    if (v38(&v23[v37], 1, v14) == 1)
    {
      sub_1D1741A30(v23, &qword_1EC642570, &qword_1D1E6C6A0);
      goto LABEL_21;
    }

LABEL_18:
    v39 = &qword_1EC642AC0;
    v40 = &qword_1D1E6E810;
    v41 = v23;
LABEL_19:
    sub_1D1741A30(v41, v39, v40);
    return 0;
  }

  sub_1D1741C08(v23, v20, &qword_1EC642570, &qword_1D1E6C6A0);
  if (v38(&v23[v37], 1, v14) == 1)
  {
    (*(v15 + 8))(v20, v14);
    goto LABEL_18;
  }

  (*(v15 + 32))(v17, &v23[v37], v14);
  sub_1D1C07270(&qword_1EC642AC8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v42 = sub_1D1E6775C();
  v43 = *(v15 + 8);
  v43(v17, v14);
  v43(v20, v14);
  sub_1D1741A30(v23, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((v42 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  v45 = v100;
  v44 = v101;
  v46 = v101[9];
  v47 = v99;
  v48 = *(v99 + v46);
  v49 = *(v99 + v46 + 8);
  v50 = (v100 + v46);
  if (v48 != *v50 || v49 != v50[1])
  {
    v51 = sub_1D1E6904C();
    v44 = v101;
    if ((v51 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(v47 + v44[10]) != *(v45 + v44[10]))
  {
    return 0;
  }

  if (*(v47 + v44[11]) != *(v45 + v44[11]))
  {
    return 0;
  }

  if (*(v47 + v44[12]) != *(v45 + v44[12]))
  {
    return 0;
  }

  if (*(v47 + v44[13]) != *(v45 + v44[13]))
  {
    return 0;
  }

  v52 = v44;
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || *(v47 + v52[15]) != *(v45 + v52[15]) || *(v47 + v52[16]) != *(v45 + v52[16]) || (sub_1D18490AC(*(v47 + v52[17]), *(v45 + v52[17])) & 1) == 0)
  {
    return 0;
  }

  v53 = v52[18];
  v54 = *(v12 + 48);
  v55 = v47 + v53;
  v56 = v112;
  sub_1D1741C08(v55, v112, &qword_1EC643C58, &unk_1D1E995D0);
  sub_1D1741C08(v45 + v53, v56 + v54, &qword_1EC643C58, &unk_1D1E995D0);
  v57 = *(v109 + 48);
  v58 = v111;
  if (v57(v56, 1, v111) == 1)
  {
    if (v57(v56 + v54, 1, v58) == 1)
    {
      sub_1D1741A30(v112, &qword_1EC643C58, &unk_1D1E995D0);
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  sub_1D1741C08(v56, v110, &qword_1EC643C58, &unk_1D1E995D0);
  if (v57(v56 + v54, 1, v58) == 1)
  {
    sub_1D1C09494(v110, type metadata accessor for StaticAccessory.DeviceIdentifier);
LABEL_37:
    v39 = &qword_1EC64C910;
    v40 = &qword_1D1EA0D90;
    v41 = v112;
    goto LABEL_19;
  }

  v59 = v112;
  v60 = v112 + v54;
  v61 = v102;
  sub_1D1C0942C(v60, v102, type metadata accessor for StaticAccessory.DeviceIdentifier);
  v62 = v110;
  v63 = _s13HomeDataModel15StaticAccessoryV16DeviceIdentifierO2eeoiySbAE_AEtFZ_0(v110, v61);
  sub_1D1C09494(v61, type metadata accessor for StaticAccessory.DeviceIdentifier);
  sub_1D1C09494(v62, type metadata accessor for StaticAccessory.DeviceIdentifier);
  sub_1D1741A30(v59, &qword_1EC643C58, &unk_1D1E995D0);
  if ((v63 & 1) == 0)
  {
    return 0;
  }

LABEL_39:
  v64 = v101[19];
  v65 = *(v99 + v64);
  v66 = *(v100 + v64);
  if (v65 == 6)
  {
    if (v66 != 6)
    {
      return 0;
    }
  }

  else if (v65 != v66)
  {
    return 0;
  }

  v67 = v101[20];
  v68 = *(v99 + v67);
  v69 = *(v100 + v67);
  if (v68 == 4)
  {
    if (v69 != 4)
    {
      return 0;
    }
  }

  else if (v68 != v69)
  {
    return 0;
  }

  v70 = v101[21];
  v71 = (v99 + v70);
  v72 = *(v99 + v70 + 8);
  v73 = (v100 + v70);
  v74 = v73[1];
  if (v72)
  {
    if (!v74 || (*v71 != *v73 || v72 != v74) && (sub_1D1E6904C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v74)
  {
    return 0;
  }

  v75 = v101[22];
  v76 = (v99 + v75);
  v77 = *(v99 + v75 + 8);
  v78 = (v100 + v75);
  v79 = v78[1];
  if (v77)
  {
    if (!v79 || (*v76 != *v78 || v77 != v79) && (sub_1D1E6904C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v79)
  {
    return 0;
  }

  v80 = v101[23];
  v81 = (v99 + v80);
  v82 = *(v99 + v80);
  v83 = *(v99 + v80 + 8);
  v84 = v100 + v80;
  v85 = *v84;
  v86 = *(v84 + 8);
  if (v83 == 255)
  {
    sub_1D18EB144(*v81, 255);
    if (v86 == 255)
    {
      sub_1D18EB144(v85, 255);
      sub_1D18EB2D8(v82, 255);
      goto LABEL_71;
    }

    sub_1D18EB144(v85, v86);
LABEL_68:
    sub_1D18EB2D8(v82, v83);
    sub_1D18EB2D8(v85, v86);
    return 0;
  }

  v115 = v82;
  v116 = v83;
  if (v86 == 255)
  {
    sub_1D18EB144(v82, v83);
    sub_1D18EB144(v85, 255);
    sub_1D18EB144(v82, v83);
    sub_1D1771B5C(v82, v83);
    goto LABEL_68;
  }

  v113 = v85;
  v114 = v86;
  sub_1D18EB144(v82, v83);
  sub_1D18EB144(v85, v86);
  sub_1D18EB144(v82, v83);
  v87 = static StaticAccessory.SpecialMediaCategory.== infix(_:_:)(&v115, &v113);
  sub_1D1771B5C(v113, v114);
  sub_1D1771B5C(v115, v116);
  sub_1D18EB2D8(v82, v83);
  if ((v87 & 1) == 0)
  {
    return 0;
  }

LABEL_71:
  v89 = v101[24];
  v90 = *(v100 + v89);
  if (*(v99 + v89))
  {
    if (!v90 || (sub_1D17B30F0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v90)
  {
    return 0;
  }

  v91 = v101[25];
  v92 = *(v104 + 48);
  v93 = v108;
  sub_1D1741C08(v99 + v91, v108, &qword_1EC644760, &unk_1D1E9E530);
  sub_1D1741C08(v100 + v91, v93 + v92, &qword_1EC644760, &unk_1D1E9E530);
  v94 = *(v105 + 48);
  if (v94(v93, 1, v107) != 1)
  {
    v95 = v108;
    sub_1D1741C08(v108, v106, &qword_1EC644760, &unk_1D1E9E530);
    if (v94(v95 + v92, 1, v107) == 1)
    {
      sub_1D1C09494(v106, type metadata accessor for StaticSoftwareUpdate);
      goto LABEL_82;
    }

    sub_1D1C0942C(v108 + v92, v103, type metadata accessor for StaticSoftwareUpdate);
    if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
    {
      sub_1D1C09494(v103, type metadata accessor for StaticSoftwareUpdate);
      sub_1D1C09494(v106, type metadata accessor for StaticSoftwareUpdate);
      v39 = &qword_1EC644760;
      v40 = &unk_1D1E9E530;
      goto LABEL_83;
    }

    v96 = v106;
    v97 = v103;
    updated = _s13HomeDataModel20StaticSoftwareUpdateV4KindO2eeoiySbAE_AEtFZ_0(v106 + *(v107 + 20), v103 + *(v107 + 20));
    sub_1D1C09494(v97, type metadata accessor for StaticSoftwareUpdate);
    sub_1D1C09494(v96, type metadata accessor for StaticSoftwareUpdate);
    sub_1D1741A30(v108, &qword_1EC644760, &unk_1D1E9E530);
    if (updated)
    {
      return *(v99 + v101[26]) == *(v100 + v101[26]);
    }

    return 0;
  }

  if (v94(v108 + v92, 1, v107) != 1)
  {
LABEL_82:
    v39 = &qword_1EC64C608;
    v40 = &qword_1D1E9FA10;
LABEL_83:
    v41 = v108;
    goto LABEL_19;
  }

  sub_1D1741A30(v108, &qword_1EC644760, &unk_1D1E9E530);
  return *(v99 + v101[26]) == *(v100 + v101[26]);
}

uint64_t sub_1D1C06E10(uint64_t *a1)
{
  v2 = sub_1D1E66ADC();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1D1E677DC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = *(a1 + 8);
  if (v10 != 1)
  {
    v11 = *a1;
    if (v10 == 2)
    {
      if ((v11 & 0x100) != 0)
      {
        goto LABEL_9;
      }
    }

    else if (v10 == 3 && (v11 == 1 || v11 == 3))
    {
      goto LABEL_9;
    }

    return 0;
  }

LABEL_9:
  sub_1D1E6776C();
  (*(v4 + 16))(v7, v9, v3);
  if (qword_1EE07A000 != -1)
  {
    swift_once();
  }

  v13 = qword_1EE0813C0;
  sub_1D1E66ACC();
  v14 = sub_1D1E6787C();
  (*(v4 + 8))(v9, v3);
  return v14;
}

uint64_t _s13HomeDataModel18StaticMediaProfileV10iconSymbol3forSSSayAA0D9AccessoryV07SpecialE8CategoryOG_tFZ_0(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0xD000000000000010;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = (result + 40);
  while (*v5 > 1u)
  {
    if (*v5 != 2 && *(v5 - 1) == 1)
    {
      v6 = __OFADD__(v4++, 1);
      if (v6)
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return result;
      }
    }

LABEL_4:
    v5 += 16;
    if (!--v1)
    {
      goto LABEL_20;
    }
  }

  if (!*v5)
  {
    goto LABEL_4;
  }

  v7 = *(v5 - 1);
  if (v7 < 2)
  {
    v6 = __OFADD__(v3++, 1);
    if (v6)
    {
      goto LABEL_31;
    }

    goto LABEL_4;
  }

  if (v7 == 2)
  {
    v6 = __OFADD__(v2++, 1);
    if (v6)
    {
      goto LABEL_32;
    }

    goto LABEL_4;
  }

  v6 = __OFADD__(v3++, 1);
  if (!v6)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_20:
  if (v4 == 1)
  {
    return 0x2E7674656C707061;
  }

  result = 0x2E646F70656D6F68;
  if (v3 != 2 && v3 != 1)
  {
    if (v2 == 1)
    {
      return 0xD000000000000010;
    }

    else
    {
      if (v2 != 2)
      {
        return 0xD000000000000010;
      }

      return 0xD000000000000012;
    }
  }

  return result;
}

uint64_t type metadata accessor for StaticMediaProfile(uint64_t a1)
{
  result = qword_1EE07D578;
  if (!qword_1EE07D578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D1C0721C()
{
  result = qword_1EC64C7C0;
  if (!qword_1EC64C7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C7C0);
  }

  return result;
}

uint64_t sub_1D1C07270(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D1C072B8()
{
  result = qword_1EC64C7C8;
  if (!qword_1EC64C7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C7C8);
  }

  return result;
}

unint64_t sub_1D1C0730C()
{
  result = qword_1EC64C7D0;
  if (!qword_1EC64C7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C7D0);
  }

  return result;
}

uint64_t sub_1D1C07360(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6438F0, &qword_1D1E99360);
    sub_1D1C07270(a2, MEMORY[0x1E69695A8], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1C073FC()
{
  result = qword_1EC64C7E0;
  if (!qword_1EC64C7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C7E0);
  }

  return result;
}

unint64_t sub_1D1C07450()
{
  result = qword_1EC64C7E8;
  if (!qword_1EC64C7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C7E8);
  }

  return result;
}

unint64_t sub_1D1C074A4()
{
  result = qword_1EC64C818;
  if (!qword_1EC64C818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C818);
  }

  return result;
}

unint64_t sub_1D1C074F8()
{
  result = qword_1EC64C820;
  if (!qword_1EC64C820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C820);
  }

  return result;
}

unint64_t sub_1D1C0754C()
{
  result = qword_1EC64C828;
  if (!qword_1EC64C828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C828);
  }

  return result;
}

unint64_t sub_1D1C075A0()
{
  result = qword_1EC64C830;
  if (!qword_1EC64C830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C830);
  }

  return result;
}

unint64_t sub_1D1C075F4()
{
  result = qword_1EC64C838;
  if (!qword_1EC64C838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C838);
  }

  return result;
}

uint64_t sub_1D1C076D8(void *a1)
{
  a1[1] = sub_1D1C07270(&qword_1EC64C878, type metadata accessor for StaticMediaProfile, &protocol conformance descriptor for StaticMediaProfile);
  a1[2] = sub_1D1C07270(&qword_1EC64C880, type metadata accessor for StaticMediaProfile, &protocol conformance descriptor for StaticMediaProfile);
  a1[3] = sub_1D1C07270(&qword_1EC64BFC0, type metadata accessor for StaticMediaProfile, &protocol conformance descriptor for StaticMediaProfile);
  a1[4] = sub_1D1C07270(&qword_1EC64C050, type metadata accessor for StaticMediaProfile, &protocol conformance descriptor for StaticMediaProfile);
  a1[5] = sub_1D1C07270(&qword_1EE07A810, type metadata accessor for StaticMediaProfile, &protocol conformance descriptor for StaticMediaProfile);
  result = sub_1D1C07270(&qword_1EC64C888, type metadata accessor for StaticMediaProfile, &protocol conformance descriptor for StaticMediaProfile);
  a1[6] = result;
  return result;
}

unint64_t sub_1D1C07800()
{
  result = qword_1EC64C890;
  if (!qword_1EC64C890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C890);
  }

  return result;
}

void sub_1D1C0787C(uint64_t a1)
{
  sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    sub_1D1791340(319);
    if (v2 <= 0x3F)
    {
      sub_1D17BDF80(319, qword_1EE07D1F8, MEMORY[0x1E69E6158]);
      if (v3 <= 0x3F)
      {
        sub_1D1C07B28(319, &qword_1EE07E020, MEMORY[0x1E6969530]);
        if (v4 <= 0x3F)
        {
          sub_1D1BCA118(319);
          if (v5 <= 0x3F)
          {
            sub_1D1C07B28(319, &qword_1EE07D830, type metadata accessor for StaticAccessory.DeviceIdentifier);
            if (v6 <= 0x3F)
            {
              sub_1D17BDF80(319, qword_1EE07BDB8, &type metadata for StaticMediaSystemComponent.PlaybackState);
              if (v7 <= 0x3F)
              {
                sub_1D17BDF80(319, qword_1EE07C838, &type metadata for StaticMediaProfile.SleepWakeState);
                if (v8 <= 0x3F)
                {
                  sub_1D17BDF80(319, qword_1EE07CA78, &type metadata for StaticAccessory.SpecialMediaCategory);
                  if (v9 <= 0x3F)
                  {
                    sub_1D1C07AC4(319);
                    if (v10 <= 0x3F)
                    {
                      sub_1D1C07B28(319, &qword_1EE07DE40, type metadata accessor for StaticSoftwareUpdate);
                      if (v11 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D1C07AC4(uint64_t a1)
{
  if (!qword_1EE07B6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64C340, &qword_1D1E9E550);
    v1 = sub_1D1E685AC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE07B6E0);
    }
  }
}

void sub_1D1C07B28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D1E685AC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for StaticMediaProfile.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StaticMediaProfile.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D1C07D30()
{
  result = qword_1EC64C898;
  if (!qword_1EC64C898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C898);
  }

  return result;
}

unint64_t sub_1D1C07D88()
{
  result = qword_1EC64C8A0;
  if (!qword_1EC64C8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C8A0);
  }

  return result;
}

unint64_t sub_1D1C07DE0()
{
  result = qword_1EC64C8A8;
  if (!qword_1EC64C8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C8A8);
  }

  return result;
}

unint64_t sub_1D1C07E38()
{
  result = qword_1EC64C8B0;
  if (!qword_1EC64C8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C8B0);
  }

  return result;
}

unint64_t sub_1D1C07E90()
{
  result = qword_1EC64C8B8;
  if (!qword_1EC64C8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C8B8);
  }

  return result;
}

unint64_t sub_1D1C07EE8()
{
  result = qword_1EC64C8C0;
  if (!qword_1EC64C8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C8C0);
  }

  return result;
}

unint64_t sub_1D1C07F40()
{
  result = qword_1EC64C8C8;
  if (!qword_1EC64C8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C8C8);
  }

  return result;
}

unint64_t sub_1D1C07F98()
{
  result = qword_1EC64C8D0;
  if (!qword_1EC64C8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C8D0);
  }

  return result;
}

unint64_t sub_1D1C07FF0()
{
  result = qword_1EC64C8D8;
  if (!qword_1EC64C8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C8D8);
  }

  return result;
}

unint64_t sub_1D1C08048()
{
  result = qword_1EC64C8E0;
  if (!qword_1EC64C8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C8E0);
  }

  return result;
}

unint64_t sub_1D1C080A0()
{
  result = qword_1EC64C8E8;
  if (!qword_1EC64C8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C8E8);
  }

  return result;
}

unint64_t sub_1D1C080F8()
{
  result = qword_1EC64C8F0;
  if (!qword_1EC64C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C8F0);
  }

  return result;
}

unint64_t sub_1D1C08150()
{
  result = qword_1EC64C8F8;
  if (!qword_1EC64C8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C8F8);
  }

  return result;
}

unint64_t sub_1D1C081A8()
{
  result = qword_1EC64C900;
  if (!qword_1EC64C900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C900);
  }

  return result;
}

uint64_t sub_1D1C081FC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7364496D6F6F72 && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D614E6D6F6F72 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6564644165746164 && a2 == 0xE900000000000064 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x626D79536E6F6369 && a2 == 0xEA00000000006C6FLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656C62756F447369 && a2 == 0xEC00000068676948 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x69726F7661467369 && a2 == 0xEA00000000006574 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC5DC0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D1EC6130 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EC5D60 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6168636165527369 && a2 == 0xEB00000000656C62 || (sub_1D1E6904C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EC67A0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D1EC6190 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6449656369766564 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6B63616279616C70 && a2 == 0xED00006574617453 || (sub_1D1E6904C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6B61577065656C73 && a2 == 0xEE00657461745365 || (sub_1D1E6904C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x6449616964656DLL && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D1EC67C0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D1EBDFE0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x736D6F74706D7973 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x6572617774666F73 && a2 == 0xEE00657461647055 || (sub_1D1E6904C() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC6270 == a2)
  {

    return 22;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 22;
    }

    else
    {
      return 23;
    }
  }
}

unint64_t sub_1D1C08924(char a1, uint64_t a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14[-v7];
  v9 = type metadata accessor for StaticSoftwareUpdate(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = 0;
  if (a1)
  {
    sub_1D1741C08(a2, v8, &qword_1EC644760, &unk_1D1E9E530);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_1D1741A30(v8, &qword_1EC644760, &unk_1D1E9E530);
    }

    else
    {
      sub_1D1C0942C(v8, v12, type metadata accessor for StaticSoftwareUpdate);
      sub_1D1D2F0C0(&v15);
      if (v15 != 8 && (v15 == 3 || v15 == 5))
      {
        sub_1D1C09494(v12, type metadata accessor for StaticSoftwareUpdate);
        return 0xD000000000000015;
      }

      sub_1D1C09494(v12, type metadata accessor for StaticSoftwareUpdate);
    }

    return _s13HomeDataModel12SymptomErrorO14tileIconSymbol3forSSSgShyACGSg_tFZ_0(a3);
  }

  return result;
}

uint64_t sub_1D1C08B3C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656B617761 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7065656C73 && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C646E6148746F6ELL && a2 == 0xEA00000000006465)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

uint64_t sub_1D1C08CA0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1D1E66A7C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = *(type metadata accessor for StaticAccessory(0) - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for StaticMediaProfile(0);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1C08E2C, 0, 0);
}

uint64_t sub_1D1C08E2C()
{
  v36 = v0;
  v1 = v0[3];
  v2 = type metadata accessor for StateSnapshot(0);
  v3 = *(v1 + *(v2 + 48));
  if (*(v3 + 16))
  {
    v4 = v2;
    v5 = sub_1D1742188();
    if (v6)
    {
      v8 = v0[12];
      v7 = v0[13];
      v9 = v0[3];
      sub_1D1C09520(*(v3 + 56) + *(v0[11] + 72) * v5, v8, type metadata accessor for StaticMediaProfile);
      sub_1D1C0942C(v8, v7, type metadata accessor for StaticMediaProfile);
      v10 = *(v9 + *(v4 + 32));
      if (*(v10 + 16))
      {
        v11 = sub_1D1742188();
        if (v12)
        {
          v14 = v0[8];
          v13 = v0[9];
          sub_1D1C09520(*(v10 + 56) + *(v0[7] + 72) * v11, v14, type metadata accessor for StaticAccessory);
          sub_1D1C0942C(v14, v13, type metadata accessor for StaticAccessory);
          v15 = swift_task_alloc();
          v0[14] = v15;
          *v15 = v0;
          v15[1] = sub_1D1C09224;

          return StaticAccessory.accessory.getter();
        }
      }

      sub_1D1C09494(v0[13], type metadata accessor for StaticMediaProfile);
    }
  }

  if (qword_1EE07B5D0 != -1)
  {
    swift_once();
  }

  v18 = v0[5];
  v17 = v0[6];
  v19 = v0[4];
  v20 = v0[2];
  v21 = sub_1D1E6709C();
  __swift_project_value_buffer(v21, qword_1EE07B5D8);
  (*(v18 + 16))(v17, v20, v19);
  v22 = sub_1D1E6707C();
  v23 = sub_1D1E6835C();
  v24 = os_log_type_enabled(v22, v23);
  v26 = v0[5];
  v25 = v0[6];
  v27 = v0[4];
  if (v24)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v35 = v29;
    *v28 = 136315138;
    sub_1D1C07270(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v30 = sub_1D1E68FAC();
    v32 = v31;
    (*(v26 + 8))(v25, v27);
    v33 = sub_1D1B1312C(v30, v32, &v35);

    *(v28 + 4) = v33;
    _os_log_impl(&dword_1D16EC000, v22, v23, "Failed to get static accessory from deviceID %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x1D3893640](v29, -1, -1);
    MEMORY[0x1D3893640](v28, -1, -1);
  }

  else
  {

    (*(v26 + 8))(v25, v27);
  }

  v34 = v0[1];

  return v34(0);
}

uint64_t sub_1D1C09224(uint64_t a1)
{
  *(*v1 + 120) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1C09324, 0, 0);
}

uint64_t sub_1D1C09324()
{
  v1 = v0[13];
  sub_1D1C09494(v0[9], type metadata accessor for StaticAccessory);
  sub_1D1C09494(v1, type metadata accessor for StaticMediaProfile);
  v2 = v0[15];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_1D1C0942C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1C09494(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1C09520(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t StaticMediaSystem.staticMediaSystemComponents.getter()
{
  type metadata accessor for StaticMediaSystem(0);

  return sub_1D1782784(v0);
}

uint64_t type metadata accessor for StaticMediaSystem(uint64_t a1)
{
  result = qword_1EE07D6B0;
  if (!qword_1EE07D6B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL StaticMediaSystem.isActivated.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v15 - v2;
  v4 = type metadata accessor for StatusStrings.Options(0);
  v5 = (v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v5[13];
  v9 = sub_1D1E669FC();
  (*(*(v9 - 8) + 56))(&v7[v8], 1, 1, v9);
  *v7 = 257;
  v7[2] = 1;
  *(v7 + 3) = 0;
  v7[v5[14]] = 2;
  v10 = &v7[v5[15]];
  v10[4] = 0;
  *v10 = 2;
  v11 = type metadata accessor for StaticMatterDevice(0);
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  StaticMediaSystem.statusString(with:associatedMatterDevice:)(v7);
  v13 = v12;
  sub_1D1741A30(v3, &qword_1EC643650, &qword_1D1E71D40);
  sub_1D1C11AF0(v7, type metadata accessor for StatusStrings.Options);
  if (!v13)
  {
    return *(v0 + *(type metadata accessor for StaticMediaSystem(0) + 60)) == 1;
  }

  return 0;
}

uint64_t StaticMediaSystem.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StaticMediaSystem.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticMediaSystem(0) + 20));

  return v1;
}

uint64_t StaticMediaSystem.specialMediaCategory.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StaticMediaSystem(0) + 24);
  v4 = *v3;
  *a1 = *v3;
  v5 = *(v3 + 8);
  *(a1 + 8) = v5;

  return sub_1D18EB144(v4, v5);
}

uint64_t StaticMediaSystem.iconSymbol.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticMediaSystem(0) + 32));

  return v1;
}

uint64_t StaticMediaSystem.playbackState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticMediaSystem(0);
  *a1 = *(v1 + *(result + 60));
  return result;
}

uint64_t StaticMediaSystem.audioDestinationId.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticMediaSystem(0) + 64));

  return v1;
}

double StaticMediaSystem.symptoms.getter()
{
  type metadata accessor for StaticMediaSystem(0);

  return result;
}

uint64_t StaticMediaSystem.homeNonResponsiveType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticMediaSystem(0);
  *a1 = *(v1 + *(result + 76));
  return result;
}

uint64_t StaticMediaSystem.homeId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StaticMediaSystem(0) + 80);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double StaticMediaSystem.roomIds.getter()
{
  type metadata accessor for StaticMediaSystem(0);

  return result;
}

uint64_t StaticMediaSystem.roomName.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticMediaSystem(0) + 88));

  return v1;
}

double StaticMediaSystem.accessoryIds.getter()
{
  type metadata accessor for StaticMediaSystem(0);

  return result;
}

double StaticMediaSystem.deviceIds.getter()
{
  type metadata accessor for StaticMediaSystem(0);

  return result;
}

double StaticMediaSystem.staticMediaSystemComponentsDictionary.getter()
{
  type metadata accessor for StaticMediaSystem(0);

  return result;
}

unint64_t sub_1D1C09D10(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x6564644165746164;
      break;
    case 4:
      result = 0x626D79536E6F6369;
      break;
    case 5:
      result = 0x656C62756F447369;
      break;
    case 6:
      result = 0x69726F7661467369;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0x7461706D6F437369;
      break;
    case 9:
      result = 0x6168636165527369;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x6B63616279616C70;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0x736D6F74706D7973;
      break;
    case 14:
      result = 0x6572617774666F73;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    case 16:
      result = 0x6449656D6F68;
      break;
    case 17:
      result = 0x7364496D6F6F72;
      break;
    case 18:
      result = 0x656D614E6D6F6F72;
      break;
    case 19:
      result = 0x726F737365636361;
      break;
    case 20:
      result = 0x6449656369766564;
      break;
    case 21:
      result = 0xD000000000000025;
      break;
    default:
      return result;
  }

  return result;
}