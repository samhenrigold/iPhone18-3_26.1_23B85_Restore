uint64_t sub_20CCC1B3C()
{
  v1 = *(v0 + 360);
  (*(v0 + 336))(*(v0 + 136), *(v0 + 112));
  v2 = v1;
  v3 = sub_20CCDB564();
  v4 = sub_20CCDB8B4();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 360);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20CC86000, v3, v4, "Failed to sleep due to: %@. Assuming audio playback is complete.", v7, 0xCu);
    sub_20CC89568(v8, &qword_27C80F460, &unk_20CCDC700);
    MEMORY[0x20F30FD70](v8, -1, -1);
    MEMORY[0x20F30FD70](v7, -1, -1);
  }

  else
  {
  }

  v41 = *(v0 + 320);
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v11 = sub_20CCDB584();
  __swift_project_value_buffer(v11, qword_28110EE00);
  v12 = sub_20CCDB564();
  v13 = sub_20CCDB8B4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 272);
    v15 = *(v0 + 370);
    v16 = swift_slowAlloc();
    *v16 = 67109376;
    *(v16 + 4) = v15;
    *(v16 + 8) = 2048;
    *(v16 + 10) = v14;
    _os_log_impl(&dword_20CC86000, v12, v13, "Voice playback success=%{BOOL}d startDelay=%f", v16, 0x12u);
    MEMORY[0x20F30FD70](v16, -1, -1);
  }

  sub_20CCDB374();
  v17 = sub_20CCDB4F4();
  sub_20CCDB524();
  v18 = sub_20CCDB8C4();
  if (sub_20CCDB8E4())
  {
    v19 = *(v0 + 72);
    v20 = *(v0 + 80);
    v21 = *(v0 + 64);

    sub_20CCDB554();

    if ((*(v19 + 88))(v20, v21) == *MEMORY[0x277D85B00])
    {
      v22 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
      v22 = "";
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = sub_20CCDB4D4();
    _os_signpost_emit_with_name_impl(&dword_20CC86000, v17, v18, v24, "audioPlayback", v22, v23, 2u);
    MEMORY[0x20F30FD70](v23, -1, -1);
  }

  v25 = *(v0 + 272);
  v40 = *(v0 + 370);
  v39 = *(v0 + 248);
  v26 = *(v0 + 224);
  v27 = *(v0 + 208);
  v29 = *(v0 + 184);
  v28 = *(v0 + 192);
  v30 = *(v0 + 176);
  v38 = *(v0 + 168);
  v32 = *(v0 + 152);
  v31 = *(v0 + 160);
  v33 = *(v0 + 16);

  (*(v29 + 8))(v28, v30);
  v39(v26, v27);
  (*(v31 + 32))(v33, v38, v32);
  v34 = type metadata accessor for PlayAudioResult(0);
  *(v33 + v34[5]) = v40;
  *(v33 + v34[6]) = v25;
  v35 = v33 + v34[7];
  *v35 = v41;
  *(v35 + 8) = 0;

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_20CCC1FD8()
{
  v1 = *(v0 + 288);
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v2 = sub_20CCDB584();
  __swift_project_value_buffer(v2, qword_28110EE00);
  v3 = v1;
  v4 = sub_20CCDB564();
  v5 = sub_20CCDB8B4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_20CC86000, v4, v5, "Could not get duration of synthesized audio: %@", v6, 0xCu);
    sub_20CC89568(v7, &qword_27C80F460, &unk_20CCDC700);
    MEMORY[0x20F30FD70](v7, -1, -1);
    MEMORY[0x20F30FD70](v6, -1, -1);
  }

  else
  {
  }

  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_28110EE00);
  v10 = sub_20CCDB564();
  v11 = sub_20CCDB8B4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 272);
    v13 = *(v0 + 370);
    v14 = swift_slowAlloc();
    *v14 = 67109376;
    *(v14 + 4) = v13;
    *(v14 + 8) = 2048;
    *(v14 + 10) = v12;
    _os_log_impl(&dword_20CC86000, v10, v11, "Voice playback success=%{BOOL}d startDelay=%f", v14, 0x12u);
    MEMORY[0x20F30FD70](v14, -1, -1);
  }

  sub_20CCDB374();
  v15 = sub_20CCDB4F4();
  sub_20CCDB524();
  v16 = sub_20CCDB8C4();
  if (sub_20CCDB8E4())
  {
    v17 = *(v0 + 72);
    v18 = *(v0 + 80);
    v19 = *(v0 + 64);

    sub_20CCDB554();

    if ((*(v17 + 88))(v18, v19) == *MEMORY[0x277D85B00])
    {
      v20 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
      v20 = "";
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = sub_20CCDB4D4();
    _os_signpost_emit_with_name_impl(&dword_20CC86000, v15, v16, v22, "audioPlayback", v20, v21, 2u);
    MEMORY[0x20F30FD70](v21, -1, -1);
  }

  v23 = *(v0 + 272);
  v38 = *(v0 + 370);
  v37 = *(v0 + 248);
  v24 = *(v0 + 224);
  v25 = *(v0 + 208);
  v27 = *(v0 + 184);
  v26 = *(v0 + 192);
  v28 = *(v0 + 176);
  v36 = *(v0 + 168);
  v30 = *(v0 + 152);
  v29 = *(v0 + 160);
  v31 = *(v0 + 16);

  (*(v27 + 8))(v26, v28);
  v37(v24, v25);
  (*(v29 + 32))(v31, v36, v30);
  v32 = type metadata accessor for PlayAudioResult(0);
  *(v31 + v32[5]) = v38;
  *(v31 + v32[6]) = v23;
  v33 = v31 + v32[7];
  *v33 = 0;
  *(v33 + 8) = 1;

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_20CCC2498()
{
  v1 = *(v0 + 304);
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v2 = sub_20CCDB584();
  __swift_project_value_buffer(v2, qword_28110EE00);
  v3 = v1;
  v4 = sub_20CCDB564();
  v5 = sub_20CCDB8B4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_20CC86000, v4, v5, "Could not get duration of synthesized audio: %@", v6, 0xCu);
    sub_20CC89568(v7, &qword_27C80F460, &unk_20CCDC700);
    MEMORY[0x20F30FD70](v7, -1, -1);
    MEMORY[0x20F30FD70](v6, -1, -1);
  }

  else
  {
  }

  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_28110EE00);
  v10 = sub_20CCDB564();
  v11 = sub_20CCDB8B4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 272);
    v13 = *(v0 + 370);
    v14 = swift_slowAlloc();
    *v14 = 67109376;
    *(v14 + 4) = v13;
    *(v14 + 8) = 2048;
    *(v14 + 10) = v12;
    _os_log_impl(&dword_20CC86000, v10, v11, "Voice playback success=%{BOOL}d startDelay=%f", v14, 0x12u);
    MEMORY[0x20F30FD70](v14, -1, -1);
  }

  sub_20CCDB374();
  v15 = sub_20CCDB4F4();
  sub_20CCDB524();
  v16 = sub_20CCDB8C4();
  if (sub_20CCDB8E4())
  {
    v17 = *(v0 + 72);
    v18 = *(v0 + 80);
    v19 = *(v0 + 64);

    sub_20CCDB554();

    if ((*(v17 + 88))(v18, v19) == *MEMORY[0x277D85B00])
    {
      v20 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
      v20 = "";
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = sub_20CCDB4D4();
    _os_signpost_emit_with_name_impl(&dword_20CC86000, v15, v16, v22, "audioPlayback", v20, v21, 2u);
    MEMORY[0x20F30FD70](v21, -1, -1);
  }

  v23 = *(v0 + 272);
  v38 = *(v0 + 370);
  v37 = *(v0 + 248);
  v24 = *(v0 + 224);
  v25 = *(v0 + 208);
  v27 = *(v0 + 184);
  v26 = *(v0 + 192);
  v28 = *(v0 + 176);
  v36 = *(v0 + 168);
  v30 = *(v0 + 152);
  v29 = *(v0 + 160);
  v31 = *(v0 + 16);

  (*(v27 + 8))(v26, v28);
  v37(v24, v25);
  (*(v29 + 32))(v31, v36, v30);
  v32 = type metadata accessor for PlayAudioResult(0);
  *(v31 + v32[5]) = v38;
  *(v31 + v32[6]) = v23;
  v33 = v31 + v32[7];
  *v33 = 0;
  *(v33 + 8) = 1;

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_20CCC2958(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F468, &unk_20CCDCD30);
  v2[5] = swift_task_alloc();
  sub_20CCDB2D4();
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCC2A24, 0, 0);
}

uint64_t sub_20CCC2A24()
{
  v1 = v0[6];
  sub_20CCC575C(v0[3], v1, MEMORY[0x277D0A608]);
  v2 = sub_20CCDAF54();
  v0[7] = v2;
  v3 = *(v2 - 8);
  v0[8] = v3;
  v4 = *(v3 + 48);
  v0[9] = v4;
  v0[10] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    v5 = [objc_allocWithZone(sub_20CCDA904()) init];
    v0[11] = v5;
    v6 = swift_task_alloc();
    v0[12] = v6;
    *(v6 + 16) = v5;
    v7 = swift_task_alloc();
    v0[13] = v7;
    *v7 = v0;
    v7[1] = sub_20CCC2C2C;
    v9 = v0[4];
    v8 = v0[5];

    return MEMORY[0x2822007B8](v8, 0, 0, 0xD000000000000014, 0x800000020CCDDF50, sub_20CC92850, v6, v9);
  }

  else
  {
    (*(v3 + 32))(v0[2], v0[6], v2);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_20CCC2C2C()
{

  return MEMORY[0x2822009F8](sub_20CCC2D44, 0, 0);
}

uint64_t sub_20CCC2D44()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);

  if (v1(v3, 1, v2) == 1)
  {
    sub_20CC89568(*(v0 + 40), &qword_27C80F468, &unk_20CCDCD30);
    sub_20CCC5708();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();
  }

  else
  {
    (*(*(v0 + 64) + 32))(*(v0 + 16), *(v0 + 40), *(v0 + 56));
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_20CCC2E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = v11;
  *(v8 + 72) = a8;
  *(v8 + 80) = v10;
  *(v8 + 56) = a6;
  *(v8 + 64) = a7;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  return MEMORY[0x2822009F8](sub_20CCC2EB4, 0, 0);
}

uint64_t sub_20CCC2EB4()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *(v4 + 32) = v1 & 1;
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = sub_20CCC2FA4;
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 16);

  return sub_20CCC335C(v8, 4, v6, v7, &unk_20CCDD5C0, v4);
}

uint64_t sub_20CCC2FA4()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20CCC30E0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_20CCC30E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CCC3144(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 72) = a1;
  v8 = swift_task_alloc();
  *(v4 + 80) = v8;
  *v8 = v4;
  v8[1] = sub_20CCC31FC;

  return sub_20CCC6F80(v4 + 16, a2, a3, a4 & 1);
}

uint64_t sub_20CCC31FC()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_20CCC332C, 0, 0);
  }
}

uint64_t sub_20CCC332C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  v4 = *(v0 + 72);
  *(v4 + 48) = *(v0 + 64);
  *(v4 + 16) = v2;
  *(v4 + 32) = v3;
  *v4 = v1;
  return (*(v0 + 8))();
}

uint64_t sub_20CCC335C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_20CCC3388, 0, 0);
}

uint64_t sub_20CCC3388()
{
  if (v0[3] < 1)
  {
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    v5 = sub_20CCDB584();
    __swift_project_value_buffer(v5, qword_28110EE00);
    v6 = sub_20CCDB564();
    v7 = sub_20CCDB894();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_20CC86000, v6, v7, "Max attempts reached", v8, 2u);
      MEMORY[0x20F30FD70](v8, -1, -1);
    }

    sub_20CCC5708();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
    v10 = v0[1];

    return v10();
  }

  else
  {
    v1 = v0[6];
    v0[8] = 0;
    v11 = (v1 + *v1);
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_20CCC35AC;
    v3 = v0[2];

    return v11(v3);
  }
}

uint64_t sub_20CCC35AC()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20CCC36E0, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_20CCC36E0()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_20CCDB584();
  v0[11] = __swift_project_value_buffer(v2, qword_28110EE00);
  v3 = v1;
  v4 = sub_20CCDB564();
  v5 = sub_20CCDB894();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[10];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20CC86000, v4, v5, "Failure: %@", v7, 0xCu);
    sub_20CC89568(v8, &qword_27C80F460, &unk_20CCDC700);
    MEMORY[0x20F30FD70](v8, -1, -1);
    MEMORY[0x20F30FD70](v7, -1, -1);
  }

  v11 = v0[4];

  v14 = (v11 + *v11);
  v12 = swift_task_alloc();
  v0[12] = v12;
  *v12 = v0;
  v12[1] = sub_20CCC3904;

  return v14();
}

uint64_t sub_20CCC3904()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_20CCC3B6C;
  }

  else
  {
    v2 = sub_20CCC3A18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CCC3A18(uint64_t a1)
{
  v2 = *(v1 + 64) + 1;
  v3 = sub_20CCDB564();
  v4 = sub_20CCDB8B4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = 2 * v2;
    _os_log_impl(&dword_20CC86000, v3, v4, "Retrying in %ld seconds", v5, 0xCu);
    MEMORY[0x20F30FD70](v5, -1, -1);
  }

  v6 = *(v1 + 64);

  if (v6 == 0x225C17D04)
  {
    __break(1u);
  }

  else
  {
    v8 = swift_task_alloc();
    *(v1 + 112) = v8;
    *v8 = v1;
    v8[1] = sub_20CCC3BD0;
    v7 = 2000000000 * v2;
  }

  return MEMORY[0x282200480](v7);
}

uint64_t sub_20CCC3B6C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CCC3BD0()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_20CCC3F20;
  }

  else
  {
    v2 = sub_20CCC3CE4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CCC3CE4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 64) + 1;

  if (v2 == v1)
  {
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    v3 = sub_20CCDB584();
    __swift_project_value_buffer(v3, qword_28110EE00);
    v4 = sub_20CCDB564();
    v5 = sub_20CCDB894();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20CC86000, v4, v5, "Max attempts reached", v6, 2u);
      MEMORY[0x20F30FD70](v6, -1, -1);
    }

    sub_20CCC5708();
    swift_allocError();
    *v7 = 1;
    swift_willThrow();
    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    ++*(v0 + 64);
    v12 = (*(v0 + 48) + **(v0 + 48));
    v10 = swift_task_alloc();
    *(v0 + 72) = v10;
    *v10 = v0;
    v10[1] = sub_20CCC35AC;
    v11 = *(v0 + 16);

    return v12(v11);
  }
}

uint64_t sub_20CCC3F20()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CCC3F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[2] = a5;
  v6 = swift_task_alloc();
  v5[4] = v6;
  *v6 = v5;
  v6[1] = sub_20CCC4028;

  return MEMORY[0x282141C28](v5 + 2);
}

uint64_t sub_20CCC4028()
{

  return MEMORY[0x2822009F8](sub_20CCC4124, 0, 0);
}

uint64_t sub_20CCC4124()
{
  sub_20CCDB444();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CCC4184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_20CCDA784();
  v7[6] = swift_task_alloc();
  v8 = sub_20CCDAE04();
  v7[7] = v8;
  v7[8] = *(v8 - 8);
  v7[9] = swift_task_alloc();
  v9 = sub_20CCDAE94();
  v7[10] = v9;
  v7[11] = *(v9 - 8);
  v7[12] = swift_task_alloc();
  v10 = sub_20CCDA744();
  v7[13] = v10;
  v7[14] = *(v10 - 8);
  v7[15] = swift_task_alloc();
  v11 = sub_20CCDADE4();
  v7[16] = v11;
  v7[17] = *(v11 - 8);
  v7[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCC438C, 0, 0);
}

uint64_t sub_20CCC438C()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  v0[19] = __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Inserting inference record", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v5 = v0[15];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[11];
  v9 = v0[12];
  v23 = v0[10];
  v10 = v2;
  v11 = v0[8];
  v25 = v0[9];
  v26 = v0[7];
  v12 = v0[3];
  v24 = v0[4];
  v13 = v0[2];

  (*(v6 + 16))(v5, v13, v7);
  (*(v8 + 16))(v9, v12, v23);
  (*(v11 + 16))(v25, v24, v26);
  sub_20CCDB3C4();
  sub_20CCDA774();
  sub_20CCDADD4();
  sub_20CCC5E3C(&qword_27C80F530, MEMORY[0x277D0A010], MEMORY[0x277D0A008]);
  v14 = sub_20CCDAFD4();
  v0[20] = v14;
  v0[21] = v15;
  v16 = v14;
  v17 = v15;
  v18 = v0[5];
  v19 = swift_task_alloc();
  v0[22] = v19;
  v19[2] = v18;
  v19[3] = v16;
  v19[4] = v17;
  v20 = swift_task_alloc();
  v0[23] = v20;
  *v20 = v0;
  v20[1] = sub_20CCC47F8;
  v21 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 25, 0, 0, 0xD000000000000011, 0x800000020CCDE720, sub_20CCC5E84, v19, v21);
}

uint64_t sub_20CCC47F8()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_20CCC49D4;
  }

  else
  {

    v2 = sub_20CCC4914;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CCC4914()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  sub_20CC9720C(v0[20], v0[21]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20CCC49D4()
{
  sub_20CC9720C(v0[20], v0[21]);

  v1 = v0[24];
  (*(v0[17] + 8))(v0[18], v0[16]);
  v2 = v1;
  v3 = sub_20CCDB564();
  v4 = sub_20CCDB894();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_20CC86000, v3, v4, "Failed to save inference record: %@", v5, 0xCu);
    sub_20CC89568(v6, &qword_27C80F460, &unk_20CCDC700);
    MEMORY[0x20F30FD70](v6, -1, -1);
    MEMORY[0x20F30FD70](v5, -1, -1);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_20CCC4BB8(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F5E8, &unk_20CCDCA88) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_20CC92A0C;

  return sub_20CC9B040(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t sub_20CCC4CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_20CCC4D20, a3, 0);
}

uint64_t sub_20CCC4D20()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  swift_beginAccess();
  v4 = *(v2 + 120);

  *(v0 + 64) = sub_20CCCE534(v3, v1, v4) & 1;

  return MEMORY[0x2822009F8](sub_20CCC4DD0, 0, 0);
}

uint64_t sub_20CCC4DD0()
{
  v12 = v0;
  if (*(v0 + 64) == 1)
  {
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    v1 = sub_20CCDB584();
    __swift_project_value_buffer(v1, qword_28110EE00);

    v2 = sub_20CCDB564();
    v3 = sub_20CCDB894();

    if (os_log_type_enabled(v2, v3))
    {
      v5 = *(v0 + 40);
      v4 = *(v0 + 48);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_20CC88C4C(v5, v4, &v11);
      _os_log_impl(&dword_20CC86000, v2, v3, "Request %s was cancelled", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x20F30FD70](v7, -1, -1);
      MEMORY[0x20F30FD70](v6, -1, -1);
    }

    v8 = *(v0 + 56);

    return MEMORY[0x2822009F8](sub_20CCC4FA8, v8, 0);
  }

  else
  {
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_20CCC4FA8()
{
  sub_20CCCB530(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x2822009F8](sub_20CCC5014, 0, 0);
}

uint64_t sub_20CCC5014(uint64_t a1)
{
  sub_20CCC5708();
  swift_allocError();
  *v2 = 2;
  swift_willThrow();
  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_20CCC50A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 24) = a5;
  *(v5 + 16) = a3;
  v9 = sub_20CCDA744();
  *(v5 + 32) = v9;
  *(v5 + 40) = *(v9 - 8);
  *(v5 + 48) = swift_task_alloc();
  *(v5 + 56) = swift_task_alloc();
  v10 = swift_task_alloc();
  *(v5 + 64) = v10;
  *v10 = v5;
  v10[1] = sub_20CCC51C0;

  return sub_20CCC4CFC(a1, a2, a4);
}

uint64_t sub_20CCC51C0()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_20CCC5314, 0, 0);
  }
}

uint64_t sub_20CCC5314()
{
  sub_20CCDA704();
  sub_20CCDA724();
  if (sub_20CCDA714())
  {
    sub_20CCDA6F4();
    v2 = v1;
    sub_20CCDA6F4();
    v4 = v3;
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    v5 = sub_20CCDB584();
    __swift_project_value_buffer(v5, qword_28110EE00);
    v6 = sub_20CCDB564();
    v7 = sub_20CCDB894();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = v2 - v4;
      _os_log_impl(&dword_20CC86000, v6, v7, "Inference deadline was %fs ago, failing", v8, 0xCu);
      MEMORY[0x20F30FD70](v8, -1, -1);
    }

    v9 = sub_20CCDB564();
    v10 = sub_20CCDB8A4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_20CC86000, v9, v10, "Inference timed out", v11, 2u);
      MEMORY[0x20F30FD70](v11, -1, -1);
    }

    v13 = v0[6];
    v12 = v0[7];
    v14 = v0[4];
    v15 = v0[5];

    sub_20CCC5708();
    swift_allocError();
    *v16 = 1;
    swift_willThrow();
    v17 = *(v15 + 8);
    v17(v13, v14);
    v17(v12, v14);

    v18 = v0[1];
  }

  else
  {
    sub_20CCDA6F4();
    v20 = v19;
    sub_20CCDA6F4();
    v22 = v21;
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    v23 = sub_20CCDB584();
    __swift_project_value_buffer(v23, qword_28110EE00);
    v24 = sub_20CCDB564();
    v25 = sub_20CCDB8B4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      *(v26 + 4) = v20 - v22;
      _os_log_impl(&dword_20CC86000, v24, v25, "Timeout check complete, proceeding with %fs remaining", v26, 0xCu);
      MEMORY[0x20F30FD70](v26, -1, -1);
    }

    v28 = v0[6];
    v27 = v0[7];
    v29 = v0[4];
    v30 = v0[5];

    v31 = *(v30 + 8);
    v31(v28, v29);
    v31(v27, v29);

    v18 = v0[1];
  }

  return v18();
}

uint64_t sub_20CCC56A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20CCC5708()
{
  result = qword_27C80F958;
  if (!qword_27C80F958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C80F958);
  }

  return result;
}

uint64_t sub_20CCC575C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F5E8, &unk_20CCDCA88);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_20CCC58E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20CC92A0C;

  return sub_20CCC3F84(a1, v4, v5, v7, v6);
}

uint64_t sub_20CCC59C8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20CCDAE94() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_20CC8DF7C;

  return sub_20CCBD4CC(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_20CCC5B00()
{
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  v6 = *(v0 + 6);
  v7 = *(v0 + 7);
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_20CC92A0C;

  return sub_20CCBE1AC(v8, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_20CCC5BD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CCC5C38(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_20CCDA744() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_20CCDAE94() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_20CCDAE04() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = *(v1 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_20CC8DF7C;

  return sub_20CCC4184(a1, v12, v13, v1 + v5, v1 + v8, v1 + v11, v14);
}

uint64_t sub_20CCC5E3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20CCC5E90(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_20CC92A0C;

  return sub_20CCC2E74(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_20CCC5F88(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20CC92A0C;

  return sub_20CCC3144(a1, v4, v5, v6);
}

uint64_t sub_20CCC6064(uint64_t a1)
{
  result = sub_20CCDAF54();
  if (v2 <= 0x3F)
  {
    result = sub_20CCDB114();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_20CCC6120(uint64_t a1)
{
  sub_20CCDB104();
  if (v1 <= 0x3F)
  {
    sub_20CCC61BC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20CCC61BC()
{
  if (!qword_27C80F9A0)
  {
    v0 = sub_20CCDB904();
    if (!v1)
    {
      atomic_store(v0, &qword_27C80F9A0);
    }
  }
}

unint64_t sub_20CCC6210()
{
  result = qword_27C80F9A8;
  if (!qword_27C80F9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C80F9A8);
  }

  return result;
}

uint64_t sub_20CCC6264()
{

  return sub_20CCB8490();
}

uint64_t sub_20CCC62E4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F9D8, &qword_20CCDD750);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F9E0, &qword_20CCDD758);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v17[-v11];
  v13 = OBJC_IVAR____TtC28FitnessIntelligenceInference23StreamingAudioPublisher____lazy_storage____audioAddedStream;
  swift_beginAccess();
  sub_20CC89500(v1 + v13, v12, &qword_27C80F9E0, &qword_20CCDD758);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F870, &qword_20CCDDD90);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) != 1)
  {
    return (*(v15 + 32))(a1, v12, v14);
  }

  sub_20CC89568(v12, &qword_27C80F9E0, &qword_20CCDD758);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F9B0, &qword_20CCDDDA0);
  (*(v4 + 104))(v6, *MEMORY[0x277D85778], v3);
  sub_20CCDB7D4();
  (*(v15 + 16))(v10, a1, v14);
  (*(v15 + 56))(v10, 0, 1, v14);
  swift_beginAccess();
  sub_20CCC6F18(v10, v1 + v13, &qword_27C80F9E0, &qword_20CCDD758);
  return swift_endAccess();
}

uint64_t sub_20CCC65D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F9B8, &qword_20CCDD730);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F868, &qword_20CCDD060);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC28FitnessIntelligenceInference23StreamingAudioPublisher_audioAddedContinuation;
  swift_beginAccess();
  sub_20CCC6F18(v6, a2 + v9, &qword_27C80F9B8, &qword_20CCDD730);
  return swift_endAccess();
}

uint64_t sub_20CCC6724(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F9B0, &qword_20CCDDDA0);
  MEMORY[0x28223BE20](v37);
  v38 = (&v36 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F868, &qword_20CCDD060);
  v40 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v36 = &v36 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F9B8, &qword_20CCDD730);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F9C0, &qword_20CCDD738);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v36 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F9C8, &qword_20CCDD740);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v36 - v18;
  sub_20CCC6EAC(a1, &v36 - v18);
  v20 = type metadata accessor for AudioSynthesisHandle(0);
  (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
  swift_beginAccess();

  v39 = a2;
  sub_20CCCD914(v19, a2, a3);
  swift_endAccess();
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v21 = sub_20CCDB584();
  __swift_project_value_buffer(v21, qword_28110EE00);

  v22 = sub_20CCDB564();
  v23 = sub_20CCDB8B4();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = a1;
    v26 = swift_slowAlloc();
    v41[0] = v26;
    *v24 = 136315394;
    *(v24 + 4) = sub_20CC88C4C(v39, a3, v41);
    *(v24 + 12) = 2048;
    *(v24 + 14) = *(*(v4 + 112) + 16);

    _os_log_impl(&dword_20CC86000, v22, v23, "[%s] Audio added to manager. Total: %ld", v24, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v26);
    v27 = v26;
    a1 = v25;
    MEMORY[0x20F30FD70](v27, -1, -1);
    MEMORY[0x20F30FD70](v24, -1, -1);
  }

  else
  {
  }

  v28 = v40;
  v29 = OBJC_IVAR____TtC28FitnessIntelligenceInference23StreamingAudioPublisher_audioAddedContinuation;
  swift_beginAccess();
  sub_20CC89500(v4 + v29, v13, &qword_27C80F9B8, &qword_20CCDD730);
  if ((*(v28 + 48))(v13, 1, v9))
  {
    sub_20CC89568(v13, &qword_27C80F9B8, &qword_20CCDD730);
    v30 = 1;
  }

  else
  {
    v31 = v36;
    (*(v28 + 16))(v36, v13, v9);
    sub_20CC89568(v13, &qword_27C80F9B8, &qword_20CCDD730);
    v32 = v38;
    v33 = *(v37 + 48);
    *v38 = v39;
    v32[1] = a3;
    sub_20CCC6EAC(a1, v32 + v33);

    sub_20CCDB7A4();
    (*(v28 + 8))(v31, v9);
    v30 = 0;
  }

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F9D0, &qword_20CCDD748);
  (*(*(v34 - 8) + 56))(v16, v30, 1, v34);
  return sub_20CC89568(v16, &qword_27C80F9C0, &qword_20CCDD738);
}

uint64_t sub_20CCC6C7C()
{

  sub_20CC89568(v0 + OBJC_IVAR____TtC28FitnessIntelligenceInference23StreamingAudioPublisher_audioAddedContinuation, &qword_27C80F9B8, &qword_20CCDD730);
  sub_20CC89568(v0 + OBJC_IVAR____TtC28FitnessIntelligenceInference23StreamingAudioPublisher____lazy_storage____audioAddedStream, &qword_27C80F9E0, &qword_20CCDD758);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for StreamingAudioPublisher(uint64_t a1)
{
  result = qword_28110EDC0;
  if (!qword_28110EDC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CCC6D48(uint64_t a1)
{
  sub_20CCC6E58(319, &qword_28110E618, &qword_27C80F868, &qword_20CCDD060);
  if (v1 <= 0x3F)
  {
    sub_20CCC6E58(319, &qword_28110E610, &qword_27C80F870, &qword_20CCDDD90);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_20CCC6E58(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_20CCDB904();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_20CCC6EAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioSynthesisHandle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CCC6F18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_20CCC6F80(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 648) = a4;
  *(v4 + 136) = a2;
  *(v4 + 144) = a3;
  *(v4 + 128) = a1;
  v5 = sub_20CCDABF4();
  *(v4 + 152) = v5;
  *(v4 + 160) = *(v5 - 8);
  *(v4 + 168) = swift_task_alloc();
  v6 = sub_20CCDAC14();
  *(v4 + 176) = v6;
  *(v4 + 184) = *(v6 - 8);
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();
  v7 = sub_20CCDAB84();
  *(v4 + 208) = v7;
  *(v4 + 216) = *(v7 - 8);
  *(v4 + 224) = swift_task_alloc();
  v8 = sub_20CCDAC44();
  *(v4 + 232) = v8;
  *(v4 + 240) = *(v8 - 8);
  *(v4 + 248) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F9E8, &qword_20CCDD768);
  *(v4 + 256) = v9;
  *(v4 + 264) = *(v9 - 8);
  *(v4 + 272) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F9F0, &qword_20CCDD770);
  *(v4 + 280) = swift_task_alloc();
  *(v4 + 288) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F9F8, &qword_20CCDD778);
  *(v4 + 296) = v10;
  *(v4 + 304) = *(v10 - 8);
  *(v4 + 312) = swift_task_alloc();
  v11 = sub_20CCDB594();
  *(v4 + 320) = v11;
  *(v4 + 328) = *(v11 - 8);
  *(v4 + 336) = swift_task_alloc();
  *(v4 + 344) = swift_task_alloc();
  *(v4 + 352) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FA00, &qword_20CCDD780);
  *(v4 + 360) = v12;
  *(v4 + 368) = *(v12 - 8);
  *(v4 + 376) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FA08, &qword_20CCDD788);
  *(v4 + 384) = v13;
  *(v4 + 392) = *(v13 - 8);
  *(v4 + 400) = swift_task_alloc();
  v14 = sub_20CCDB4A4();
  *(v4 + 408) = v14;
  *(v4 + 416) = *(v14 - 8);
  *(v4 + 424) = swift_task_alloc();
  sub_20CCDA824();
  *(v4 + 432) = swift_task_alloc();
  v15 = sub_20CCDB304();
  *(v4 + 440) = v15;
  *(v4 + 448) = *(v15 - 8);
  *(v4 + 456) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FA10, &qword_20CCDD790);
  *(v4 + 464) = swift_task_alloc();
  *(v4 + 472) = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FA18, &qword_20CCDD798);
  *(v4 + 480) = v16;
  *(v4 + 488) = *(v16 - 8);
  *(v4 + 496) = swift_task_alloc();
  sub_20CCDABC4();
  *(v4 + 504) = swift_task_alloc();
  v17 = sub_20CCDACC4();
  *(v4 + 512) = v17;
  *(v4 + 520) = *(v17 - 8);
  *(v4 + 528) = swift_task_alloc();
  *(v4 + 536) = swift_task_alloc();
  v18 = sub_20CCDB3B4();
  *(v4 + 544) = v18;
  *(v4 + 552) = *(v18 - 8);
  *(v4 + 560) = swift_task_alloc();
  *(v4 + 568) = swift_task_alloc();
  *(v4 + 576) = swift_task_alloc();
  *(v4 + 584) = swift_task_alloc();
  v19 = sub_20CCDAE94();
  *(v4 + 592) = v19;
  *(v4 + 600) = *(v19 - 8);
  *(v4 + 608) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCC76C0, 0, 0);
}

uint64_t sub_20CCC76C0()
{
  v93 = v0;
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = v0[76];
  v2 = v0[75];
  v3 = v0[74];
  v4 = v0[17];
  v5 = sub_20CCDB584();
  v0[77] = __swift_project_value_buffer(v5, qword_28110EE00);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_20CCDB564();
  v7 = sub_20CCDB8B4();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[76];
  v10 = v0[75];
  v11 = v0[74];
  if (v8)
  {
    v12 = v0[73];
    v13 = v0[69];
    v85 = v0[68];
    v14 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v92[0] = v88;
    *v14 = 136315138;
    v86 = v7;
    sub_20CCDAE84();
    v15 = sub_20CCDB3A4();
    v17 = v16;
    (*(v13 + 8))(v12, v85);
    (*(v10 + 8))(v9, v11);
    v18 = sub_20CC88C4C(v15, v17, v92);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_20CC86000, v6, v86, "Generating with adapter: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v88);
    MEMORY[0x20F30FD70](v88, -1, -1);
    MEMORY[0x20F30FD70](v14, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v19 = v0[72];
  v20 = v0[71];
  v21 = v0[69];
  v22 = v0[68];
  v23 = 0x800000020CCDE810;
  sub_20CCDABB4();
  sub_20CCDACB4();
  sub_20CCDAE84();
  (*(v21 + 16))(v20, v19, v22);
  v24 = (*(v21 + 88))(v20, v22);
  v25 = v0[72];
  if (v24 == *MEMORY[0x277D0A650])
  {
    v89 = 0xD000000000000013;
    v26 = v0[69];
    v27 = v0[68];
    v29 = v0[58];
    v28 = v0[59];
    v31 = v0[55];
    v30 = v0[56];
    sub_20CCDA804();
    v87 = *(v26 + 8);
    v87(v25, v27);
    sub_20CCDAE54();
    sub_20CC89500(v28, v29, &qword_27C80FA10, &qword_20CCDD790);
    if ((*(v30 + 48))(v29, 1, v31) == 1)
    {
      sub_20CC89568(v0[58], &qword_27C80FA10, &qword_20CCDD790);
    }

    else
    {
      v44 = v0[56];
      v43 = v0[57];
      v45 = v0[55];
      (*(v44 + 32))(v43, v0[58], v45);
      v89 = sub_20CCDB2E4();
      v23 = v46;
      (*(v44 + 8))(v43, v45);
    }

    sub_20CC89568(v0[59], &qword_27C80FA10, &qword_20CCDD790);
    v47 = sub_20CCC95FC(0x2710uLL);
    v48 = sub_20CCDB564();
    v49 = sub_20CCDB874();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 134217984;
      *(v50 + 4) = v47;
      _os_log_impl(&dword_20CC86000, v48, v49, "GMS Random seed: %ld", v50, 0xCu);
      MEMORY[0x20F30FD70](v50, -1, -1);
    }

    v51 = sub_20CCDB564();
    v52 = sub_20CCDB8B4();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v92[0] = v54;
      *v53 = 136315138;
      *(v53 + 4) = sub_20CC88C4C(v89, v23, v92);
      _os_log_impl(&dword_20CC86000, v51, v52, "Use case identifier: %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x20F30FD70](v54, -1, -1);
      MEMORY[0x20F30FD70](v53, -1, -1);
    }

    sub_20CCDA834();
    sub_20CCDA814();
    v55 = v0[70];
    v56 = v0[67];
    v57 = v0[66];
    v58 = v0[65];
    v59 = v0[64];
    v83 = v0[53];
    sub_20CCDABA4();
    (*(v58 + 16))(v57, v56, v59);
    v90 = sub_20CCDAB94();
    v0[78] = v90;
    sub_20CCDAE84();
    sub_20CCC90C4(v55, v83);
    v62 = v0[53];
    v82 = v0[44];
    v84 = v0[43];
    v63 = v0[42];
    v91 = v0[41];
    v64 = v0[39];
    v65 = v0[40];
    v80 = v0[38];
    v81 = v0[37];
    v66 = v0[36];
    v79 = v0[35];
    v87(v0[70], v0[68]);
    *(swift_task_alloc() + 16) = v62;
    sub_20CCDB5A4();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FA28, &qword_20CCDD7A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20CCDC580;
    *(inited + 32) = 0x746E6F4372657375;
    *(inited + 40) = 0xEB00000000746E65;
    v68 = sub_20CCDAE74();
    v69 = MEMORY[0x277D42EC0];
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 80) = v69;
    *(inited + 48) = v68;
    *(inited + 56) = v70;
    sub_20CCB1EF4(inited);
    swift_setDeallocating();
    sub_20CC89568(inited + 32, &qword_27C80F8F8, &qword_20CCDD2D0);
    sub_20CCC9F38(&qword_27C80FA30, MEMORY[0x277D42D78], MEMORY[0x277D42D70]);
    sub_20CCDB5F4();

    v71 = *(v91 + 8);
    v71(v63, v65);
    sub_20CCDAC54();
    v72 = sub_20CCDAC64();
    (*(*(v72 - 8) + 56))(v66, 0, 1, v72);
    sub_20CC89500(v66, v79, &qword_27C80F9F0, &qword_20CCDD770);
    sub_20CCDACA4();
    sub_20CCDAC94();
    sub_20CCDAC74();
    sub_20CCDAC84();
    sub_20CC89568(v66, &qword_27C80F9F0, &qword_20CCDD770);
    (*(v80 + 104))(v64, *MEMORY[0x277D0E550], v81);
    sub_20CCDB5D4();
    (*(v80 + 8))(v64, v81);
    v71(v84, v65);
    v0[15] = v90;
    sub_20CCDB5E4();
    v71(v82, v65);
    v73 = swift_task_alloc();
    v0[79] = v73;
    v74 = sub_20CCC9F38(&qword_27C80FA38, MEMORY[0x277D71A98], MEMORY[0x277D71A70]);
    *v73 = v0;
    v73[1] = sub_20CCC83B4;
    v75 = v0[50];
    v76 = v0[45];
    v77 = MEMORY[0x277D0DE60];
    v78 = MEMORY[0x277D837D0];

    return MEMORY[0x282165A98](v75, v76, v78, v74, v77);
  }

  else
  {
    v32 = v0[71];
    v33 = v0[69];
    v34 = v0[68];
    v35 = v0[67];
    v36 = v0[65];
    v37 = v0[64];
    v38 = sub_20CCDB3A4();
    v40 = v39;
    sub_20CCC9BF8();
    swift_allocError();
    *v41 = v38;
    *(v41 + 8) = v40;
    *(v41 + 16) = 0;
    swift_willThrow();
    v42 = *(v33 + 8);
    v42(v25, v34);
    (*(v36 + 8))(v35, v37);
    v42(v32, v34);

    v60 = v0[1];

    return v60();
  }
}

uint64_t sub_20CCC83B4()
{
  v2 = *v1;
  *(*v1 + 640) = v0;

  (*(v2[46] + 8))(v2[47], v2[45]);
  if (v0)
  {
    v3 = sub_20CCC8D90;
  }

  else
  {
    v3 = sub_20CCC851C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20CCC851C()
{
  v73 = v0;
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
  sub_20CCDB404();
  sub_20CCDB4B4();
  (*(v2 + 8))(v1, v3);
  v5 = v0[13];
  v4 = v0[14];
  v6 = sub_20CCDB6B4();
  v7 = v0[48];
  if (v6 <= 600)
  {
    v28 = v0[27];
    v29 = v0[28];
    v30 = v0[26];
    sub_20CCDB3F4();
    sub_20CCDAB74();
    (*(v28 + 8))(v29, v30);

    v31 = sub_20CCDB564();
    v32 = sub_20CCDB8B4();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v72[0] = v34;
      *v33 = 136380675;
      *(v33 + 4) = sub_20CC88C4C(v5, v4, v72);
      _os_log_impl(&dword_20CC86000, v31, v32, "Inference token result: %{private}s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x20F30FD70](v34, -1, -1);
      MEMORY[0x20F30FD70](v33, -1, -1);
    }

    v36 = v0[24];
    v35 = v0[25];
    v38 = v0[22];
    v37 = v0[23];
    v39 = sub_20CCDAC34();
    v68 = sub_20CCC9C68(v39);

    sub_20CCDAC24();
    v40 = sub_20CCDABD4();
    v65 = v41;
    v66 = v40;
    v42 = *(v37 + 8);
    v42(v35, v38);
    sub_20CCDAC24();
    v43 = sub_20CCDAC04();
    v42(v36, v38);
    v70 = v5;
    v71 = v4;
    if (*(v43 + 16))
    {
      v44 = v0[20];
      v45 = v0[21];
      v46 = v0[19];
      (*(v44 + 16))(v45, v43 + ((*(v44 + 80) + 32) & ~*(v44 + 80)), v46);

      v47 = sub_20CCDABE4();
      v63 = v48;
      v64 = v47;

      (*(v44 + 8))(v45, v46);
    }

    else
    {

      v63 = 0;
      v64 = 0;
    }

    v49 = v0[65];
    v61 = v0[64];
    v62 = v0[67];
    v50 = v0[61];
    v51 = v0[62];
    v52 = v0[60];
    v53 = v0[52];
    v59 = v0[51];
    v60 = v0[53];
    v55 = v0[49];
    v54 = v0[50];
    v56 = v0[48];
    v57 = v0[16];
    (*(v0[30] + 8))();
    (*(v55 + 8))(v54, v56);
    (*(v50 + 8))(v51, v52);
    (*(v49 + 8))(v62, v61);
    (*(v53 + 8))(v60, v59);

    *v57 = v70;
    v57[1] = v71;
    v57[2] = v68;
    v57[3] = v66;
    v57[4] = v65;
    v57[5] = v64;
    v57[6] = v63;
    v27 = v0[1];
  }

  else
  {
    v8 = v0[49];
    v9 = v0[50];
    sub_20CCDB974();

    v72[0] = 0xD000000000000011;
    v72[1] = 0x800000020CCDE830;
    MEMORY[0x20F30F2A0](v5, v4);

    sub_20CCC9BF8();
    v10 = swift_allocError();
    *v11 = 0xD000000000000011;
    *(v11 + 8) = 0x800000020CCDE830;
    *(v11 + 16) = 1;
    swift_willThrow();
    (*(v8 + 8))(v9, v7);
    v12 = v10;
    v13 = sub_20CCDB564();
    v14 = sub_20CCDB8B4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = v10;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_20CC86000, v13, v14, "Inference error: %@", v15, 0xCu);
      sub_20CC89568(v16, &qword_27C80F460, &unk_20CCDC700);
      MEMORY[0x20F30FD70](v16, -1, -1);
      MEMORY[0x20F30FD70](v15, -1, -1);
    }

    v19 = v0[67];
    v20 = v13;
    v21 = v0[65];
    v22 = v0[64];
    v24 = v0[61];
    v23 = v0[62];
    v25 = v0[60];
    v26 = v0[52];
    v67 = v0[51];
    v69 = v0[53];

    swift_willThrow();

    (*(v24 + 8))(v23, v25);
    (*(v21 + 8))(v19, v22);
    (*(v26 + 8))(v69, v67);

    v27 = v0[1];
  }

  return v27();
}

uint64_t sub_20CCC8D90()
{
  v1 = v0[80];
  v2 = v1;
  v3 = sub_20CCDB564();
  v4 = sub_20CCDB8B4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_20CC86000, v3, v4, "Inference error: %@", v5, 0xCu);
    sub_20CC89568(v6, &qword_27C80F460, &unk_20CCDC700);
    MEMORY[0x20F30FD70](v6, -1, -1);
    MEMORY[0x20F30FD70](v5, -1, -1);
  }

  v9 = v0[67];
  v10 = v3;
  v11 = v0[65];
  v12 = v0[64];
  v14 = v0[61];
  v13 = v0[62];
  v15 = v0[60];
  v20 = v0[53];
  v16 = v0[52];
  v19 = v0[51];

  swift_willThrow();

  (*(v14 + 8))(v13, v15);
  (*(v11 + 8))(v9, v12);
  (*(v16 + 8))(v20, v19);

  v17 = v0[1];

  return v17();
}

uint64_t sub_20CCC90C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31[0] = a2;
  v3 = sub_20CCDA824();
  MEMORY[0x28223BE20](v3 - 8);
  v31[1] = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20CCDB3B4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v34 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FA18, &qword_20CCDD798);
  v32 = *(v11 - 8);
  v33 = v11;
  MEMORY[0x28223BE20](v11);
  v35 = v31 - v12;
  v13 = *(v6 + 16);
  v14 = a1;
  v13(v10, a1, v5);
  v15 = *(v6 + 88);
  v16 = v15(v10, v5);
  if (v16 == *MEMORY[0x277D0A650])
  {
    v17 = v16;
    sub_20CCDA804();
    v18 = v34;
    v13(v34, v14, v5);
    if (v15(v18, v5) == v17)
    {
      v19 = v33;
      v20 = v35;
      sub_20CCDA834();
      v21 = v31[2];
      sub_20CCDA814();
      if (!v21)
      {
        sub_20CCDB494();
      }

      return (*(v32 + 8))(v20, v19);
    }

    else
    {
      v27 = sub_20CCDB3A4();
      v29 = v28;
      sub_20CCC9BF8();
      swift_allocError();
      *v30 = v27;
      *(v30 + 8) = v29;
      *(v30 + 16) = 0;
      swift_willThrow();
      (*(v32 + 8))(v35, v33);
      return (*(v6 + 8))(v34, v5);
    }
  }

  else
  {
    v23 = sub_20CCDB3A4();
    v25 = v24;
    sub_20CCC9BF8();
    swift_allocError();
    *v26 = v23;
    *(v26 + 8) = v25;
    *(v26 + 16) = 0;
    swift_willThrow();
    return (*(v6 + 8))(v10, v5);
  }
}

uint64_t sub_20CCC9444(uint64_t a1)
{
  v1 = sub_20CCDB594();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CCDB4A4();
  sub_20CCC9F38(&qword_27C80FA48, MEMORY[0x277D0E698], MEMORY[0x277D0E678]);
  sub_20CCDB5C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C80FA50, &qword_20CCDD7B0);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_20CCDC580;
  (*(v2 + 16))(v6 + v5, v4, v1);
  MEMORY[0x20F30F190](v6);

  return (*(v2 + 8))(v4, v1);
}

unint64_t sub_20CCC95FC(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x20F30FD80](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x20F30FD80](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20CCC9688()
{
  v0 = sub_20CCDAD04();
  v33 = *(v0 - 8);
  v34 = v0;
  MEMORY[0x28223BE20](v0);
  v32 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_20CCDAD44();
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x28223BE20](v2);
  v29 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_20CCDAD94();
  v4 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_20CCDAD74();
  v7 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_20CCDADB4();
  v10 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20CCDAD54();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v28 - v18;
  (*(v4 + 104))(v6, *MEMORY[0x277D0E2D8], v37);
  sub_20CCDAD64();
  sub_20CCDADA4();
  (*(v7 + 8))(v9, v36);
  sub_20CCDAD84();
  (*(v10 + 8))(v12, v35);
  (*(v14 + 16))(v17, v19, v13);
  v20 = (*(v14 + 88))(v17, v13);
  if (v20 == *MEMORY[0x277D0DFA8])
  {
    (*(v14 + 96))(v17, v13);
    v22 = v32;
    v21 = v33;
    v23 = v34;
    (*(v33 + 32))(v32, v17, v34);
    v24 = sub_20CCDACE4();
LABEL_5:
    v25 = v24;
    (*(v21 + 8))(v22, v23);
    (*(v14 + 8))(v19, v13);
    return v25;
  }

  if (v20 == *MEMORY[0x277D0DFB0])
  {
    (*(v14 + 96))(v17, v13);
    v22 = v29;
    v21 = v30;
    v23 = v31;
    (*(v30 + 32))(v29, v17, v31);
    v24 = sub_20CCDAD24();
    goto LABEL_5;
  }

  if (v20 == *MEMORY[0x277D0E278])
  {
    (*(v14 + 8))(v19, v13);
    return 0;
  }

  else
  {
    v27 = *(v14 + 8);
    v27(v19, v13);
    v27(v17, v13);
    return 0xD00000000000001CLL;
  }
}

unint64_t sub_20CCC9BF8()
{
  result = qword_27C80FA20;
  if (!qword_27C80FA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C80FA20);
  }

  return result;
}

char *sub_20CCC9C68(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = sub_20CCB0C4C(0x7461446F69647561, 0xE900000000000061);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_20CC89458(*(a1 + 56) + 32 * v2, v22);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v4 = sub_20CCDA6C4();
  v6 = v5;

  result = 0;
  if (v6 >> 60 == 15)
  {
    return result;
  }

  if (!*(a1 + 16) || (v8 = sub_20CCB0C4C(0x7463694464627361, 0xE800000000000000), (v9 & 1) == 0) || (sub_20CC89458(*(a1 + 56) + 32 * v8, v22), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FA40, &qword_20CCDD7A8), (swift_dynamicCast() & 1) == 0))
  {
    sub_20CCA9798(v4, v6);
    return 0;
  }

  sub_20CCB41A0(v21, v22);
  v10 = [objc_allocWithZone(sub_20CCDAA94()) init];
  sub_20CC96DA4(v4, v6);
  sub_20CCDAA34();
  v11 = v10;
  sub_20CCDAA74();
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v12 = sub_20CCDB584();
  __swift_project_value_buffer(v12, qword_28110EE00);
  sub_20CC96DA4(v4, v6);
  v13 = sub_20CCDB564();
  v14 = sub_20CCDB8B4();
  if (!os_log_type_enabled(v13, v14))
  {
    sub_20CCA9798(v4, v6);
LABEL_26:
    sub_20CCA9798(v4, v6);

    return v11;
  }

  result = swift_slowAlloc();
  *result = 134217984;
  v15 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v15 != 2)
    {
      v16 = 0;
      goto LABEL_25;
    }

    v18 = *(v4 + 16);
    v17 = *(v4 + 24);
    v19 = __OFSUB__(v17, v18);
    v16 = v17 - v18;
    if (!v19)
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  else if (!v15)
  {
    v16 = BYTE6(v6);
LABEL_25:
    *(result + 4) = v16;
    v20 = result;
    sub_20CCA9798(v4, v6);
    _os_log_impl(&dword_20CC86000, v13, v14, "Got audio data in server response of size: %ld", v20, 0xCu);
    MEMORY[0x20F30FD70](v20, -1, -1);
    goto LABEL_26;
  }

  LODWORD(v16) = HIDWORD(v4) - v4;
  if (!__OFSUB__(HIDWORD(v4), v4))
  {
    v16 = v16;
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

uint64_t sub_20CCC9F38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_20CCC9FA0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_20CCC9FE8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_20CCCA048()
{
  v0 = sub_20CCDB584();
  __swift_allocate_value_buffer(v0, qword_28110EE00);
  __swift_project_value_buffer(v0, qword_28110EE00);
  return sub_20CCDB574();
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

void sub_20CCCA128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF0, &unk_20CCDC6F0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF8, &unk_20CCDDCD0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  v16 = sub_20CCDA6A4();
  MEMORY[0x28223BE20](v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, a2);
  v20 = objc_allocWithZone(MEMORY[0x277CB83D0]);
  v21 = sub_20CCCAB04(v18);
  [v21 setDelegate_];
  v22 = *(a3 + OBJC_IVAR____TtC28FitnessIntelligenceInference10TonePlayer_player);
  *(a3 + OBJC_IVAR____TtC28FitnessIntelligenceInference10TonePlayer_player) = v21;

  v27 = *(v7 + 16);
  v27(v15, a1, v6);
  (*(v7 + 56))(v15, 0, 1, v6);
  v23 = OBJC_IVAR____TtC28FitnessIntelligenceInference10TonePlayer_continuation;
  swift_beginAccess();
  sub_20CCCAA94(v15, a3 + v23);
  swift_endAccess();
  LOBYTE(a2) = [v21 play];

  if ((a2 & 1) == 0)
  {
    sub_20CCCB0D4(a3 + v23, v13);
    if ((*(v7 + 48))(v13, 1, v6))
    {
      sub_20CCCB144(v13);
    }

    else
    {
      v27(v9, v13, v6);
      sub_20CCCB144(v13);
      sub_20CCCB1AC();
      v24 = swift_allocError();
      *v25 = xmmword_20CCDD890;
      *(v25 + 16) = 4;
      v28 = v24;
      sub_20CCDB744();
      (*(v7 + 8))(v9, v6);
    }

    sub_20CCCA6F0();
  }
}

uint64_t sub_20CCCA6F0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF8, &unk_20CCDDCD0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = OBJC_IVAR____TtC28FitnessIntelligenceInference10TonePlayer_player;
  v5 = *(v0 + OBJC_IVAR____TtC28FitnessIntelligenceInference10TonePlayer_player);
  if (v5)
  {
    [v5 setDelegate_];
    v6 = *(v0 + v4);
  }

  else
  {
    v6 = 0;
  }

  *(v0 + v4) = 0;

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF0, &unk_20CCDC6F0);
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  v8 = OBJC_IVAR____TtC28FitnessIntelligenceInference10TonePlayer_continuation;
  swift_beginAccess();
  sub_20CCCAA94(v3, v0 + v8);
  return swift_endAccess();
}

id sub_20CCCA8BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TonePlayer(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TonePlayer(uint64_t a1)
{
  result = qword_27C80FAD8;
  if (!qword_27C80FAD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CCCA994(uint64_t a1)
{
  sub_20CCCAA30(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_20CCCAA30(uint64_t a1)
{
  if (!qword_27C80FAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C80FAF0, &unk_20CCDC6F0);
    v1 = sub_20CCDB904();
    if (!v2)
    {
      atomic_store(v1, &qword_27C80FAE8);
    }
  }
}

uint64_t sub_20CCCAA94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF8, &unk_20CCDDCD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_20CCCAB04(uint64_t a1)
{
  v2 = v1;
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = sub_20CCDA674();
  v13[0] = 0;
  v5 = [v2 initWithContentsOfURL:v4 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_20CCDA6A4();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_20CCDA664();

    swift_willThrow();
    v11 = sub_20CCDA6A4();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

uint64_t sub_20CCCAC50(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF0, &unk_20CCDC6F0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF8, &unk_20CCDDCD0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  v13 = OBJC_IVAR____TtC28FitnessIntelligenceInference10TonePlayer_continuation;
  v14 = (v4 + 48);
  if ((a1 & 1) == 0)
  {
    swift_beginAccess();
    sub_20CCCB0D4(v1 + v13, v10);
    if ((*v14)(v10, 1, v3))
    {
      v15 = v10;
      goto LABEL_6;
    }

    (*(v4 + 16))(v6, v10, v3);
    sub_20CCCB144(v10);
    sub_20CCCB1AC();
    v16 = swift_allocError();
    *v17 = 0;
    *(v17 + 8) = 0;
    *(v17 + 16) = 4;
    v19 = v16;
    sub_20CCDB744();
LABEL_9:
    (*(v4 + 8))(v6, v3);
    return sub_20CCCA6F0();
  }

  swift_beginAccess();
  sub_20CCCB0D4(v1 + v13, v12);
  if (!(*v14)(v12, 1, v3))
  {
    (*(v4 + 16))(v6, v12, v3);
    sub_20CCCB144(v12);
    sub_20CCDB754();
    goto LABEL_9;
  }

  v15 = v12;
LABEL_6:
  sub_20CCCB144(v15);
  return sub_20CCCA6F0();
}

uint64_t sub_20CCCAEE0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF0, &unk_20CCDC6F0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF8, &unk_20CCDDCD0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  v10 = OBJC_IVAR____TtC28FitnessIntelligenceInference10TonePlayer_continuation;
  swift_beginAccess();
  sub_20CCCB0D4(v1 + v10, v9);
  if ((*(v4 + 48))(v9, 1, v3))
  {
    sub_20CCCB144(v9);
  }

  else
  {
    (*(v4 + 16))(v6, v9, v3);
    sub_20CCCB144(v9);
    sub_20CCCB1AC();
    v11 = swift_allocError();
    *v12 = a1;
    *(v12 + 8) = 0;
    *(v12 + 16) = 3;
    v15 = v11;
    v13 = a1;
    sub_20CCDB744();
    (*(v4 + 8))(v6, v3);
  }

  return sub_20CCCA6F0();
}

uint64_t sub_20CCCB0D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF8, &unk_20CCDDCD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CCCB144(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF8, &unk_20CCDDCD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20CCCB1AC()
{
  result = qword_27C80FB00;
  if (!qword_27C80FB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C80FB00);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_28FitnessIntelligenceInference17TonePlaybackErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_20CCCB21C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_20CCCB264(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_20CCCB2A8(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_20CCCB2D0(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();

  v4 = sub_20CCA5B18(&v14, a1, a2);
  swift_endAccess();

  if (v4)
  {
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    v5 = sub_20CCDB584();
    __swift_project_value_buffer(v5, qword_28110EE00);

    v6 = sub_20CCDB564();
    v7 = sub_20CCDB884();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_20CC88C4C(a1, a2, v13);
      v10 = "[Cancellation] Registered new request ID: %s";
LABEL_10:
      _os_log_impl(&dword_20CC86000, v6, v7, v10, v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x20F30FD70](v9, -1, -1);
      MEMORY[0x20F30FD70](v8, -1, -1);
    }
  }

  else
  {
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    v11 = sub_20CCDB584();
    __swift_project_value_buffer(v11, qword_28110EE00);

    v6 = sub_20CCDB564();
    v7 = sub_20CCDB884();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_20CC88C4C(a1, a2, v13);
      v10 = "[Cancellation] Request ID %s was already registered.";
      goto LABEL_10;
    }
  }

  return v4 & 1;
}

BOOL sub_20CCCB530(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  sub_20CCCBBDC(a1, a2);
  v5 = v4;
  swift_endAccess();
  if (v5)
  {

    swift_beginAccess();
    sub_20CCCBBDC(a1, a2);
    swift_endAccess();

    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    v6 = sub_20CCDB584();
    __swift_project_value_buffer(v6, qword_28110EE00);

    v7 = sub_20CCDB564();
    v8 = sub_20CCDB884();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14[0] = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_20CC88C4C(a1, a2, v14);
      v11 = "Unregistered request ID: %s";
LABEL_10:
      _os_log_impl(&dword_20CC86000, v7, v8, v11, v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x20F30FD70](v10, -1, -1);
      MEMORY[0x20F30FD70](v9, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    sub_20CCCBBDC(a1, a2);
    swift_endAccess();

    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    v12 = sub_20CCDB584();
    __swift_project_value_buffer(v12, qword_28110EE00);

    v7 = sub_20CCDB564();
    v8 = sub_20CCDB884();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14[0] = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_20CC88C4C(a1, a2, v14);
      v11 = "Request ID %s was not being tracked, nothing to unregister.";
      goto LABEL_10;
    }
  }

  return v5 != 0;
}

uint64_t sub_20CCCB808(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 112);

  v6 = sub_20CCCE534(a1, a2, v5);

  if (v6)
  {
    swift_beginAccess();

    v7 = sub_20CCA5B18(&v18, a1, a2);
    swift_endAccess();

    if (v7)
    {
      if (qword_28110E630 != -1)
      {
        swift_once();
      }

      v8 = sub_20CCDB584();
      __swift_project_value_buffer(v8, qword_28110EE00);

      v9 = sub_20CCDB564();
      v10 = sub_20CCDB884();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v17[0] = v12;
        *v11 = 136315138;
        *(v11 + 4) = sub_20CC88C4C(a1, a2, v17);
        v13 = "[Cancellation] Marked request ID %s as cancelled.";
LABEL_15:
        _os_log_impl(&dword_20CC86000, v9, v10, v13, v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v12);
        MEMORY[0x20F30FD70](v12, -1, -1);
        MEMORY[0x20F30FD70](v11, -1, -1);
      }
    }

    else
    {
      if (qword_28110E630 != -1)
      {
        swift_once();
      }

      v15 = sub_20CCDB584();
      __swift_project_value_buffer(v15, qword_28110EE00);

      v9 = sub_20CCDB564();
      v10 = sub_20CCDB884();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v17[0] = v12;
        *v11 = 136315138;
        *(v11 + 4) = sub_20CC88C4C(a1, a2, v17);
        v13 = "[Cancellation] Request ID %s was already marked as cancelled.";
        goto LABEL_15;
      }
    }
  }

  else
  {
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    v14 = sub_20CCDB584();
    __swift_project_value_buffer(v14, qword_28110EE00);

    v9 = sub_20CCDB564();
    v10 = sub_20CCDB884();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_20CC88C4C(a1, a2, v17);
      v13 = "[Cancellation] Attempted to mark untracked request ID %s as cancelled. Skipping.";
      goto LABEL_15;
    }
  }

  return v6 & 1;
}

uint64_t sub_20CCCBB78()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_20CCCBBDC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_20CCDBB44();
  sub_20CCDB6A4();
  v6 = sub_20CCDBB64();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_20CCDBA64() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_20CCA6880();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_20CCCBD18(v8);
  *v2 = v16;
  return v12;
}

unint64_t sub_20CCCBD18(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_20CCDB924();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_20CCDBB44();

        sub_20CCDB6A4();
        v10 = sub_20CCDBB64();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
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
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_20CCCBEF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_20CCCBF40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_20CCCBF9C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_20CCDB974();

  MEMORY[0x20F30F2A0](v1, v2);
  return 0xD000000000000024;
}

uint64_t sub_20CCCC024(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FB18, &unk_20CCDDD60);
  v2[7] = swift_task_alloc();
  v3 = sub_20CCDAFB4();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCCC128, v1, 0);
}

uint64_t sub_20CCCC128()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[5];
  v6 = sub_20CCDB584();
  __swift_project_value_buffer(v6, qword_28110EE00);
  v7 = *(v4 + 16);
  v7(v2, v5, v3);
  v7(v1, v5, v3);
  v8 = sub_20CCDB564();
  v9 = sub_20CCDB884();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[11];
  v13 = v0[8];
  v12 = v0[9];
  if (v10)
  {
    v36 = v9;
    v14 = swift_slowAlloc();
    *v14 = 67109376;
    v15 = sub_20CCDAF84();
    v16 = v13;
    v17 = *(v12 + 8);
    v17(v11, v16);
    *(v14 + 4) = v15;
    *(v14 + 8) = 2048;
    v18 = sub_20CCDAF74();
    v20 = v19 >> 62;
    if ((v19 >> 62) > 1)
    {
      if (v20 != 2)
      {
        sub_20CC9720C(v18, v19);
        v22 = 0;
        goto LABEL_15;
      }

      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      v18 = sub_20CC9720C(v18, v19);
      v26 = __OFSUB__(v24, v25);
      v22 = v24 - v25;
      if (!v26)
      {
        goto LABEL_15;
      }

      __break(1u);
    }

    else if (!v20)
    {
      v21 = BYTE6(v19);
      sub_20CC9720C(v18, v19);
      v22 = v21;
LABEL_15:
      v17(v0[10], v0[8]);
      *(v14 + 10) = v22;
      _os_log_impl(&dword_20CC86000, v8, v36, "Receiving chunk %u (size: %ld).", v14, 0x12u);
      MEMORY[0x20F30FD70](v14, -1, -1);
      goto LABEL_16;
    }

    v27 = HIDWORD(v18);
    v28 = v18;
    result = sub_20CC9720C(v18, v19);
    if (__OFSUB__(v27, v28))
    {
      __break(1u);
      return result;
    }

    v22 = v27 - v28;
    goto LABEL_15;
  }

  v23 = *(v12 + 8);
  v23(v0[10], v0[8]);
  v23(v11, v13);
LABEL_16:
  v30 = v0[8];
  v31 = v0[9];
  v32 = v0[7];
  v33 = v0[5];

  v34 = sub_20CCDAF84();
  v7(v32, v33, v30);
  (*(v31 + 56))(v32, 0, 1, v30);
  swift_beginAccess();
  sub_20CCCDAE8(v32, v34);
  swift_endAccess();
  v35 = swift_task_alloc();
  v0[12] = v35;
  *v35 = v0;
  v35[1] = sub_20CCCC444;

  return sub_20CCCC988();
}

uint64_t sub_20CCCC444(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_20CCCC59C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_20CCDB0C4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCCC65C, v1, 0);
}

uint64_t sub_20CCCC65C()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = sub_20CCDB584();
  __swift_project_value_buffer(v5, qword_28110EE00);
  (*(v2 + 16))(v1, v4, v3);

  v6 = sub_20CCDB564();
  v7 = sub_20CCDB8B4();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[3];
  v12 = v0[4];
  if (v8)
  {
    v13 = swift_slowAlloc();
    *v13 = 67109376;
    v14 = sub_20CCDB094();
    (*(v10 + 8))(v9, v12);
    *(v13 + 4) = v14;
    *(v13 + 8) = 1024;
    *(v13 + 10) = *(v11 + 200);

    _os_log_impl(&dword_20CC86000, v6, v7, "Receiver got streaming finished message with %u total expected chunks; next chunk index is %u.", v13, 0xEu);
    MEMORY[0x20F30FD70](v13, -1, -1);
  }

  else
  {
    (*(v10 + 8))(v0[6], v0[4]);
  }

  v15 = v0[3];
  *(v15 + 204) = sub_20CCDB094();
  *(v15 + 208) = 256;
  v16 = swift_task_alloc();
  v0[7] = v16;
  *v16 = v0;
  v16[1] = sub_20CCCC870;

  return sub_20CCCC988();
}

uint64_t sub_20CCCC870(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_20CCCC988()
{
  v1[15] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FB18, &unk_20CCDDD60);
  v1[16] = swift_task_alloc();
  v2 = sub_20CCDAFB4();
  v1[17] = v2;
  v1[18] = *(v2 - 8);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCCCA8C, v0, 0);
}

uint64_t sub_20CCCCA8C()
{
  v1 = *(v0 + 120);
  swift_beginAccess();
  v2 = *(v1 + 192);
  if (*(v2 + 16) && (v3 = *(*(v0 + 120) + 200), v4 = sub_20CCB0CC4(v3), (v5 & 1) != 0))
  {
    v7 = *(v0 + 152);
    v6 = *(v0 + 160);
    v8 = *(v0 + 136);
    v9 = *(v0 + 144);
    v10 = *(v9 + 72);
    (*(v9 + 16))(v7, *(v2 + 56) + v10 * v4, v8);
    v11 = *(v9 + 32);
    v11(v6, v7, v8);
    swift_beginAccess();
    v12 = sub_20CCB0CC4(v3);
    if ((v13 & 1) == 0)
    {
      v19 = 1;
      goto LABEL_10;
    }

    v14 = v12;
    v15 = *(v0 + 120);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v15 + 192);
    *(v0 + 112) = v17;
    *(v15 + 192) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v18 = *(v0 + 120);
      v11(*(v0 + 128), *(v17 + 56) + v14 * v10, *(v0 + 136));
      sub_20CCD6B40(v14, v17);
      *(v18 + 192) = v17;

      v19 = 0;
LABEL_10:
      v14 = *(v0 + 120);
      v23 = *(v0 + 128);
      (*(*(v0 + 144) + 56))(v23, v19, 1, *(v0 + 136));
      sub_20CCCD340(v23);
      swift_endAccess();
      v24 = *(v14 + 200);
      v25 = __CFADD__(v24, 1);
      v26 = v24 + 1;
      if (!v25)
      {
        break;
      }

      __break(1u);
LABEL_15:
      sub_20CCD8998();
      v17 = *(v0 + 112);
    }

    v27 = *(v0 + 120);
    *(v27 + 200) = v26;
    v28 = *(v27 + 144);
    v29 = *(v27 + 160);
    *(v0 + 48) = *(v27 + 176);
    *(v0 + 16) = v28;
    *(v0 + 32) = v29;
    v30 = sub_20CCDAF64();
    *(v0 + 168) = v30;
    *(v0 + 104) = v30;
    v31 = swift_task_alloc();
    *(v0 + 176) = v31;
    *v31 = v0;
    v31[1] = sub_20CCCCD3C;

    return MEMORY[0x282141C28](v0 + 104);
  }

  else
  {
    v20 = sub_20CCCD118();

    v21 = *(v0 + 8);

    return v21(v20 & 1);
  }
}

uint64_t sub_20CCCCD3C()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 120);

  return MEMORY[0x2822009F8](sub_20CCCCE64, v2, 0);
}

uint64_t sub_20CCCCE64()
{
  v1 = *(v0 + 120);
  (*(*(v0 + 144) + 8))(*(v0 + 160), *(v0 + 136));
  v2 = *(v1 + 192);
  if (*(v2 + 16) && (v3 = *(*(v0 + 120) + 200), v4 = sub_20CCB0CC4(v3), (v5 & 1) != 0))
  {
    v7 = *(v0 + 152);
    v6 = *(v0 + 160);
    v8 = *(v0 + 136);
    v9 = *(v0 + 144);
    v10 = *(v9 + 72);
    (*(v9 + 16))(v7, *(v2 + 56) + v10 * v4, v8);
    v11 = *(v9 + 32);
    v11(v6, v7, v8);
    swift_beginAccess();
    v12 = sub_20CCB0CC4(v3);
    if ((v13 & 1) == 0)
    {
      v19 = 1;
      goto LABEL_10;
    }

    v14 = v12;
    v15 = *(v0 + 120);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v15 + 192);
    *(v0 + 112) = v17;
    *(v15 + 192) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v18 = *(v0 + 120);
      v11(*(v0 + 128), *(v17 + 56) + v14 * v10, *(v0 + 136));
      sub_20CCD6B40(v14, v17);
      *(v18 + 192) = v17;

      v19 = 0;
LABEL_10:
      v14 = *(v0 + 120);
      v23 = *(v0 + 128);
      (*(*(v0 + 144) + 56))(v23, v19, 1, *(v0 + 136));
      sub_20CCCD340(v23);
      swift_endAccess();
      v24 = *(v14 + 200);
      v25 = __CFADD__(v24, 1);
      v26 = v24 + 1;
      if (!v25)
      {
        break;
      }

      __break(1u);
LABEL_15:
      sub_20CCD8998();
      v17 = *(v0 + 112);
    }

    v27 = *(v0 + 120);
    *(v27 + 200) = v26;
    v28 = *(v27 + 144);
    v29 = *(v27 + 160);
    *(v0 + 48) = *(v27 + 176);
    *(v0 + 16) = v28;
    *(v0 + 32) = v29;
    v30 = sub_20CCDAF64();
    *(v0 + 168) = v30;
    *(v0 + 104) = v30;
    v31 = swift_task_alloc();
    *(v0 + 176) = v31;
    *v31 = v0;
    v31[1] = sub_20CCCCD3C;

    return MEMORY[0x282141C28](v0 + 104);
  }

  else
  {
    v20 = sub_20CCCD118();

    v21 = *(v0 + 8);

    return v21(v20 & 1);
  }
}

uint64_t sub_20CCCD118()
{
  if (*(v0 + 209) == 1)
  {
    if (*(v0 + 208))
    {
      sub_20CCCD2EC();
      v1 = swift_allocError();
      *v2 = 0xD00000000000003ELL;
      v2[1] = 0x800000020CCDEA40;
      sub_20CCDB424();

      return 1;
    }

    if (*(v0 + 200) == *(v0 + 204))
    {
      if (qword_28110E630 != -1)
      {
        swift_once();
      }

      v3 = sub_20CCDB584();
      __swift_project_value_buffer(v3, qword_28110EE00);
      v4 = sub_20CCDB564();
      v5 = sub_20CCDB8B4();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_20CC86000, v4, v5, "All audio chunks received. Finishing audio stream receiver channel.", v6, 2u);
        MEMORY[0x20F30FD70](v6, -1, -1);
      }

      sub_20CCDB444();
      return 1;
    }
  }

  return 0;
}

uint64_t sub_20CCCD278()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_20CCCD2EC()
{
  result = qword_27C80FB10;
  if (!qword_27C80FB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C80FB10);
  }

  return result;
}

uint64_t sub_20CCCD340(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FB18, &unk_20CCDDD60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_20CCCD3B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_20CCCD3FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20CCCD44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F448, &unk_20CCDCF60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_20CCDA2D8(a3, v22 - v9);
  v11 = sub_20CCDB794();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_20CC89568(v10, &qword_27C80F448, &unk_20CCDCF60);
  }

  else
  {
    sub_20CCDB784();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_20CCDB734();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_20CCDB694() + 32;

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

      sub_20CC89568(a3, &qword_27C80F448, &unk_20CCDCF60);

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

  sub_20CC89568(a3, &qword_27C80F448, &unk_20CCDCF60);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_20CCCD6E8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F438, &unk_20CCDC6C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_20CCDB214();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_20CC89568(a1, &qword_27C80F438, &unk_20CCDC6C0);
    sub_20CCD4420(a2, v7);
    v12 = sub_20CCDAF54();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_20CC89568(v7, &qword_27C80F438, &unk_20CCDC6C0);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_20CCD6CF0(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_20CCDAF54();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_20CCCD914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F9C8, &qword_20CCDD740);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for AudioSynthesisHandle(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_20CC89568(a1, &qword_27C80F9C8, &qword_20CCDD740);
    sub_20CCD45C0(a2, a3, v9);

    return sub_20CC89568(v9, &qword_27C80F9C8, &qword_20CCDD740);
  }

  else
  {
    sub_20CCDA120(a1, v12, type metadata accessor for AudioSynthesisHandle);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_20CCD72D0(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_20CCCDAE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FB18, &unk_20CCDDD60);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_20CCDAFB4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_20CC89568(a1, &qword_27C80FB18, &unk_20CCDDD60);
    v13 = sub_20CCB0CC4(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_20CCD8998();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_20CCD6B40(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_20CC89568(v8, &qword_27C80FB18, &unk_20CCDDD60);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_20CCD75B0(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_20CCCDD38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_20CCD7718(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_20CCB0C4C(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_20CCD8C00();
        v14 = v16;
      }

      result = sub_20CCD6990(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_20CCCDE30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_20CCB0B78(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_20CCD826C();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_20CCDA784();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF0, &unk_20CCDC6F0);
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_20CCD6454(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF0, &unk_20CCDC6F0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_20CCCDFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v8 = sub_20CCDA784();
  v5[9] = v8;
  v5[10] = *(v8 - 8);
  v5[11] = swift_task_alloc();
  v5[2] = a1;
  v5[3] = a2;

  return MEMORY[0x2822009F8](sub_20CCCE0C4, v4, 0);
}

uint64_t sub_20CCCE0C4()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = *(v0[8] + 112);

  LOBYTE(v2) = sub_20CCCE534(v1, v2, v3);

  v4 = v0[11];
  if (v2)
  {

    v5 = v0[1];

    return v5();
  }

  else
  {
    v8 = v0[7];
    v7 = v0[8];
    v9 = v0[6];
    sub_20CCDA774();
    v10 = swift_task_alloc();
    v0[12] = v10;
    v10[2] = v7;
    v10[3] = v0 + 2;
    v10[4] = v4;
    v10[5] = v9;
    v10[6] = v8;
    v11 = swift_allocObject();
    v0[13] = v11;
    swift_weakInit();
    v12 = swift_task_alloc();
    v0[14] = v12;
    v12[2] = v11;
    v12[3] = v0 + 2;
    v12[4] = v4;
    sub_20CCDA01C(&qword_27C80FB20, &qword_27C80FB28, &unk_20CCDDCA8, &unk_20CCDCE98);
    v13 = swift_task_alloc();
    v0[15] = v13;
    *v13 = v0;
    v13[1] = sub_20CCCE2C8;

    return MEMORY[0x282200830]();
  }
}

uint64_t sub_20CCCE2C8()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = sub_20CCCE488;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_20CCCE40C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_20CCCE40C()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20CCCE488()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[10];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20CCCE534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_20CCDBB44();
  sub_20CCDB6A4();
  v6 = sub_20CCDBB64();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_20CCDBA64() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_20CCCE62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v42 = a7;
  v37 = a1;
  v38 = a5;
  v43 = a3;
  v40 = sub_20CCDA784();
  v9 = *(v40 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v40);
  v39 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F448, &unk_20CCDCF60);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF0, &unk_20CCDC6F0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - v16;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  v18 = *(a2 + 120);
  v19 = *(v18 + 16);

  if (v19 && (v20 = sub_20CCB0C4C(v43, a4), (v21 & 1) != 0))
  {
    v22 = *(*(v18 + 56) + 8 * v20);
  }

  else
  {
    v22 = sub_20CCB15E0(MEMORY[0x277D84F90]);
  }

  (*(v15 + 16))(v17, v37, v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = v22;
  v24 = v38;
  sub_20CCD70C0(v17, v38, isUniquelyReferenced_nonNull_native);
  v25 = v45;
  swift_beginAccess();

  v26 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *(a2 + 120);
  *(a2 + 120) = 0x8000000000000000;
  v27 = v43;
  sub_20CCD7718(v25, v43, a4, v26);

  *(a2 + 120) = v44;
  swift_endAccess();
  v28 = sub_20CCDB794();
  (*(*(v28 - 8) + 56))(v13, 1, 1, v28);
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = v39;
  v31 = v24;
  v32 = v40;
  (*(v9 + 16))(v39, v31, v40);
  v33 = (*(v9 + 80) + 72) & ~*(v9 + 80);
  v34 = swift_allocObject();
  *(v34 + 2) = 0;
  *(v34 + 3) = 0;
  v35 = v42;
  *(v34 + 4) = v41;
  *(v34 + 5) = v35;
  *(v34 + 6) = v29;
  *(v34 + 7) = v27;
  *(v34 + 8) = a4;
  (*(v9 + 32))(&v34[v33], v30, v32);

  sub_20CCAA31C(0, 0, v13, &unk_20CCDDCE8, v34);
}

uint64_t sub_20CCCEA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v12;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v9 = sub_20CCDB9D4();
  v8[11] = v9;
  v8[12] = *(v9 - 8);
  v8[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCCEAF0, 0, 0);
}

uint64_t sub_20CCCEAF0()
{
  sub_20CCDBAD4();
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_20CCCEBB0;
  v3 = v0[5];
  v2 = v0[6];

  return sub_20CCD3F68(v3, v2, 0, 0, 1);
}

uint64_t sub_20CCCEBB0()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  (*(v2[12] + 8))(v2[13], v2[11]);
  if (v0)
  {
    v3 = sub_20CCCEE48;
  }

  else
  {
    v3 = sub_20CCCED18;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20CCCED18()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[16] = Strong;
  if (Strong)
  {
    v2 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FB30, &unk_20CCDDD00);
    sub_20CCDA01C(&qword_27C80FB38, &qword_27C80FB30, &unk_20CCDDD00, &unk_20CCDCEE0);
    v0[17] = swift_allocError();

    return MEMORY[0x2822009F8](sub_20CCCEEB0, v2, 0);
  }

  else
  {

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_20CCCEE48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CCCEEB0()
{
  v1 = v0[17];
  sub_20CCCEF34(v0[8], v0[9], v0[10], v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_20CCCEF34(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF8, &unk_20CCDDCD0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF0, &unk_20CCDC6F0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v24 - v14;
  result = swift_beginAccess();
  v17 = *(v4 + 120);
  if (*(v17 + 16))
  {

    v18 = sub_20CCB0C4C(a1, a2);
    if (v19)
    {
      v24[0] = a4;
      v20 = *(*(v17 + 56) + 8 * v18);

      v25 = v20;
      sub_20CCCDE30(a3, v11);
      if ((*(v13 + 48))(v11, 1, v12) == 1)
      {

        return sub_20CC89568(v11, &qword_27C80FAF8, &unk_20CCDDCD0);
      }

      else
      {
        (*(v13 + 32))(v15, v11, v12);
        v21 = v25;
        v22 = v24[0];
        if (!*(v25 + 16))
        {

          v21 = 0;
        }

        swift_beginAccess();

        sub_20CCCDD38(v21, a1, a2);
        swift_endAccess();
        v24[1] = v22;
        v23 = v22;
        sub_20CCDB744();
        return (*(v13 + 8))(v15, v12);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_20CCCF1C0()
{
  v1[13] = v0;
  v2 = sub_20CCDA784();
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FB50, &qword_20CCDDD28);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCCF2C4, v0, 0);
}

uint64_t sub_20CCCF2C4(uint64_t a1)
{
  v2 = sub_20CCDB414();
  v1[19] = v2;
  v1[20] = v3;
  v1[8] = v2;
  v1[9] = v3;
  v1[21] = sub_20CCDA01C(&qword_27C80F648, &qword_27C80F650, &unk_20CCDCF70, &unk_20CCDD3D8);
  swift_beginAccess();
  v4 = swift_task_alloc();
  v1[22] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F658, &unk_20CCDCC00);
  *v4 = v1;
  v4[1] = sub_20CCCF3D8;

  return MEMORY[0x282141C38](v1 + 10, v5);
}

uint64_t sub_20CCCF3D8()
{
  v2 = *v1;
  v2[23] = v0;

  v3 = v2[13];
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_20CCDB734();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_20CCCFA84;
    v8 = v4;
  }

  else
  {
    v2[24] = v2[10];
    v7 = sub_20CCCF54C;
    v8 = v3;
    v6 = 0;
  }

  return MEMORY[0x2822009F8](v7, v8, v6);
}

uint64_t sub_20CCCF54C()
{
  v1 = *(v0 + 192);
  if (!v1)
  {

    sub_20CCD006C(0, 0);
    goto LABEL_5;
  }

  *(v0 + 96) = v1;
  if (sub_20CCDB7E4())
  {
    sub_20CCDB764();
    sub_20CCDA4D4(&qword_27C80F940, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    v2 = swift_allocError();
    sub_20CCDB604();
    swift_willThrow();

    v3 = v2;
    sub_20CCD006C(v2, 1);

LABEL_5:

    v4 = *(v0 + 8);

    return v4();
  }

  v6 = *(v0 + 104);
  swift_beginAccess();
  v7 = v1;
  MEMORY[0x20F30F2C0]();
  if (*((*(v6 + 120) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v6 + 120) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_20CCDB704();
  }

  v8 = *(v0 + 104);
  sub_20CCDB724();
  swift_endAccess();
  v9 = *(v8 + 128);
  *(v0 + 200) = v9;
  v10 = *(v9 + 32);
  *(v0 + 240) = v10;
  v11 = -1;
  v12 = -1 << v10;
  if (-(-1 << v10) < 64)
  {
    v11 = ~(-1 << -v12);
  }

  v13 = v11 & *(v9 + 64);

  if (v13)
  {
    v14 = 0;
LABEL_17:
    v18 = *(v0 + 128);
    v17 = *(v0 + 136);
    v19 = *(v0 + 112);
    v20 = *(v0 + 120);
    v21 = (v13 - 1) & v13;
    v22 = __clz(__rbit64(v13)) | (v14 << 6);
    (*(v20 + 16))(v18, *(v9 + 48) + *(v20 + 72) * v22, v19);
    v23 = *(*(v9 + 56) + 8 * v22);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FB58, &unk_20CCDDD30);
    v25 = *(v24 + 48);
    (*(v20 + 32))(v17, v18, v19);
    *(v17 + v25) = v23;
    (*(*(v24 - 8) + 56))(v17, 0, 1, v24);

    v16 = v14;
  }

  else
  {
    v15 = 0;
    v16 = ((63 - v12) >> 6) - 1;
    while (v16 != v15)
    {
      v14 = v15 + 1;
      v13 = *(v9 + 72 + 8 * v15++);
      if (v13)
      {
        goto LABEL_17;
      }
    }

    v32 = *(v0 + 136);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FB58, &unk_20CCDDD30);
    (*(*(v33 - 8) + 56))(v32, 1, 1, v33);
    v21 = 0;
  }

  *(v0 + 208) = v21;
  *(v0 + 216) = v16;
  v26 = *(v0 + 144);
  sub_20CCDA46C(*(v0 + 136), v26, &qword_27C80FB50, &qword_20CCDDD28);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FB58, &unk_20CCDDD30);
  if ((*(*(v27 - 8) + 48))(v26, 1, v27) == 1)
  {
    v28 = *(v0 + 192);

    v29 = swift_task_alloc();
    *(v0 + 176) = v29;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F658, &unk_20CCDCC00);
    *v29 = v0;
    v29[1] = sub_20CCCF3D8;

    return MEMORY[0x282141C38](v0 + 80, v30);
  }

  else
  {
    *(v0 + 224) = *(*(v0 + 144) + *(v27 + 48));
    v31 = swift_task_alloc();
    *(v0 + 232) = v31;
    *v31 = v0;
    v31[1] = sub_20CCCFBCC;

    return MEMORY[0x282141C28](v0 + 96);
  }
}

uint64_t sub_20CCCFA84()
{
  v1 = v0[13];
  v0[11] = v0[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F660, &qword_20CCDD400);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_20CCCFB1C, v1, 0);
}

uint64_t sub_20CCCFB1C()
{

  v1 = *(v0 + 184);
  v2 = v1;
  sub_20CCD006C(v1, 1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_20CCCFBCC()
{
  v1 = *(*v0 + 104);

  return MEMORY[0x2822009F8](sub_20CCCFCDC, v1, 0);
}

uint64_t sub_20CCCFCDC()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);

  v4 = (*(v3 + 8))(v1, v2);
  v5 = *(v0 + 208);
  v6 = *(v0 + 216);
  if (!v5)
  {
    v8 = ((1 << *(v0 + 240)) + 63) >> 6;
    if (v8 <= (v6 + 1))
    {
      v9 = v6 + 1;
    }

    else
    {
      v9 = ((1 << *(v0 + 240)) + 63) >> 6;
    }

    v10 = v9 - 1;
    while (1)
    {
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        v27 = *(v0 + 136);
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FB58, &unk_20CCDDD30);
        (*(*(v28 - 8) + 56))(v27, 1, 1, v28);
        v16 = 0;
        goto LABEL_12;
      }

      v7 = *(v0 + 200);
      v5 = *(v7 + 8 * v11 + 64);
      ++v6;
      if (v5)
      {
        v6 = v11;
        goto LABEL_11;
      }
    }

    __break(1u);
    return MEMORY[0x282141C28](v4);
  }

  v7 = *(v0 + 200);
LABEL_11:
  v12 = *(v0 + 128);
  v13 = *(v0 + 136);
  v14 = *(v0 + 112);
  v15 = *(v0 + 120);
  v16 = (v5 - 1) & v5;
  v17 = __clz(__rbit64(v5)) | (v6 << 6);
  (*(v15 + 16))(v12, *(v7 + 48) + *(v15 + 72) * v17, v14);
  v18 = *(*(v7 + 56) + 8 * v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FB58, &unk_20CCDDD30);
  v20 = *(v19 + 48);
  (*(v15 + 32))(v13, v12, v14);
  *(v13 + v20) = v18;
  (*(*(v19 - 8) + 56))(v13, 0, 1, v19);

  v10 = v6;
LABEL_12:
  *(v0 + 208) = v16;
  *(v0 + 216) = v10;
  v21 = *(v0 + 144);
  sub_20CCDA46C(*(v0 + 136), v21, &qword_27C80FB50, &qword_20CCDDD28);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FB58, &unk_20CCDDD30);
  if ((*(*(v22 - 8) + 48))(v21, 1, v22) != 1)
  {
    *(v0 + 224) = *(*(v0 + 144) + *(v22 + 48));
    v26 = swift_task_alloc();
    *(v0 + 232) = v26;
    *v26 = v0;
    v26[1] = sub_20CCCFBCC;
    v4 = v0 + 96;

    return MEMORY[0x282141C28](v4);
  }

  v23 = *(v0 + 192);

  v24 = swift_task_alloc();
  *(v0 + 176) = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F658, &unk_20CCDCC00);
  *v24 = v0;
  v24[1] = sub_20CCCF3D8;

  return MEMORY[0x282141C38](v0 + 80, v25);
}

uint64_t sub_20CCD006C(void *a1, int a2)
{
  v3 = v2;
  v6 = sub_20CCDA784();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FB50, &qword_20CCDDD28);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  result = MEMORY[0x28223BE20](v11);
  v15 = v46 - v14;
  if (*(v3 + 144) == 255)
  {
    v55 = v13;
    v57 = v6;
    *(v3 + 136) = a1;
    *(v3 + 144) = a2 & 1;
    v46[1] = a1;
    sub_20CCA1190(a1, a2 & 1);
    Current = CFAbsoluteTimeGetCurrent();
    *(v3 + 160) = Current;
    *(v3 + 168) = 0;
    if (qword_28110E630 != -1)
    {
LABEL_31:
      swift_once();
    }

    v17 = sub_20CCDB584();
    __swift_project_value_buffer(v17, qword_28110EE00);

    v18 = sub_20CCDB564();
    v19 = sub_20CCDB8B4();
    v20 = os_log_type_enabled(v18, v19);
    v53 = v7;
    v51 = v9;
    if (v20)
    {
      v21 = swift_slowAlloc();
      *v21 = 134218240;
      swift_beginAccess();
      v22 = *(v3 + 120);
      if (v22 >> 62)
      {
        v23 = sub_20CCDB9F4();
      }

      else
      {
        v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v21 + 4) = v23;

      *(v21 + 12) = 2048;
      *(v21 + 14) = Current - *(v3 + 152);
      _os_log_impl(&dword_20CC86000, v18, v19, "Broadcast terminated after %ld elements in %f seconds", v21, 0x16u);
      MEMORY[0x20F30FD70](v21, -1, -1);

      v7 = v53;
    }

    else
    {
    }

    swift_beginAccess();
    v24 = 0;
    v25 = *(v3 + 128);
    *(v3 + 128) = MEMORY[0x277D84F98];
    v27 = v25 + 64;
    v26 = *(v25 + 64);
    v54 = v25;
    v28 = 1 << *(v25 + 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v9 = v29 & v26;
    v3 = (v28 + 63) >> 6;
    v48 = v7 + 32;
    v49 = v7 + 16;
    v56 = (v7 + 8);
    v52 = a2;
    v30 = v57;
    v7 = v55;
    v50 = v15;
    v47 = v27;
    while (1)
    {
      if (!v9)
      {
        if (v3 <= v24 + 1)
        {
          v32 = v24 + 1;
        }

        else
        {
          v32 = v3;
        }

        v33 = v32 - 1;
        while (1)
        {
          v31 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (v31 >= v3)
          {
            v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FB58, &unk_20CCDDD30);
            (*(*(v45 - 8) + 56))(v7, 1, 1, v45);
            v9 = 0;
            v24 = v33;
            goto LABEL_24;
          }

          v9 = *(v27 + 8 * v31);
          ++v24;
          if (v9)
          {
            v24 = v31;
            goto LABEL_23;
          }
        }

        __break(1u);
        goto LABEL_31;
      }

      v31 = v24;
LABEL_23:
      v34 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v35 = v34 | (v31 << 6);
      v36 = v53;
      v37 = v54;
      v38 = v51;
      (*(v53 + 16))(v51, *(v54 + 48) + *(v53 + 72) * v35, v30);
      v39 = v30;
      v40 = *(*(v37 + 56) + 8 * v35);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FB58, &unk_20CCDDD30);
      v42 = *(v41 + 48);
      v43 = *(v36 + 32);
      v7 = v55;
      v43(v55, v38, v39);
      *(v7 + v42) = v40;
      (*(*(v41 - 8) + 56))(v7, 0, 1, v41);

      a2 = v52;
      v15 = v50;
      v27 = v47;
LABEL_24:
      sub_20CCDA46C(v7, v15, &qword_27C80FB50, &qword_20CCDDD28);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FB58, &unk_20CCDDD30);
      if ((*(*(v44 - 8) + 48))(v15, 1, v44) == 1)
      {
      }

      if (a2)
      {
        sub_20CCDB424();
      }

      else
      {
        sub_20CCDB444();
      }

      v30 = v57;
      (*v56)(v15, v57);
    }
  }

  return result;
}

uint64_t sub_20CCD05E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v7 = sub_20CCDAEA4();
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  v8 = sub_20CCDB114();
  v5[12] = v8;
  v5[13] = *(v8 - 8);
  v5[14] = swift_task_alloc();
  v9 = sub_20CCDAF54();
  v5[15] = v9;
  v5[16] = *(v9 - 8);
  v5[17] = swift_task_alloc();
  v10 = sub_20CCDB184();
  v5[18] = v10;
  v5[19] = *(v10 - 8);
  v5[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FB70, &qword_20CCDDD88);
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F870, &qword_20CCDDD90);
  v5[23] = v11;
  v5[24] = *(v11 - 8);
  v5[25] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FB78, &qword_20CCDDD98);
  v5[26] = v12;
  v5[27] = *(v12 - 8);
  v5[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCD08D4, a4, 0);
}

uint64_t sub_20CCD08D4()
{
  sub_20CCC62E4(*(v0 + 200));

  return MEMORY[0x2822009F8](sub_20CCD0940, 0, 0);
}

uint64_t sub_20CCD0940()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);
  sub_20CCDB7B4();
  (*(v2 + 8))(v1, v3);
  *(v0 + 256) = *MEMORY[0x277D0A118];
  v4 = swift_task_alloc();
  *(v0 + 232) = v4;
  *v4 = v0;
  v4[1] = sub_20CCD0A2C;
  v5 = *(v0 + 208);
  v6 = *(v0 + 168);

  return MEMORY[0x2822003E8](v6, 0, 0, v5);
}

uint64_t sub_20CCD0A2C()
{

  return MEMORY[0x2822009F8](sub_20CCD0B28, 0, 0);
}

uint64_t sub_20CCD0B28()
{
  v1 = *(v0 + 176);
  sub_20CCDA46C(*(v0 + 168), v1, &qword_27C80FB70, &qword_20CCDDD88);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F9B0, &qword_20CCDDDA0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v24 = *(v0 + 256);
    v5 = *(v0 + 128);
    v6 = *(v0 + 136);
    v7 = *(v0 + 112);
    v8 = *(v0 + 120);
    v9 = *(v0 + 96);
    v10 = *(v0 + 104);
    v11 = *(v0 + 80);
    v23 = *(v0 + 88);
    v22 = *(v0 + 72);
    v12 = *(v0 + 176) + *(v2 + 48);
    v13 = *v12;
    v14 = *(v12 + 16);
    *(v0 + 48) = *(v12 + 32);
    *(v0 + 16) = v13;
    *(v0 + 32) = v14;
    v21 = v9;
    v15 = type metadata accessor for AudioSynthesisHandle(0);
    (*(v5 + 16))(v6, v12 + *(v15 + 24), v8);
    (*(v10 + 16))(v7, v12 + *(v15 + 28), v21);

    sub_20CCDA278(v12, type metadata accessor for AudioSynthesisHandle);
    sub_20CCDB124();
    (*(v11 + 104))(v23, v24, v22);
    v25 = (*MEMORY[0x277D09E88] + MEMORY[0x277D09E88]);
    v16 = swift_task_alloc();
    *(v0 + 240) = v16;
    v17 = sub_20CCDA4D4(&qword_28110ED60, MEMORY[0x277D0A500], MEMORY[0x277D0A4F8]);
    *v16 = v0;
    v16[1] = sub_20CCD0E50;
    v18 = *(v0 + 160);
    v19 = *(v0 + 144);
    v20 = *(v0 + 88);

    return v25(v20, v18, v19, v17);
  }
}

uint64_t sub_20CCD0E50()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  (*(v2[10] + 8))(v2[11], v2[9]);
  if (v0)
  {
    v3 = sub_20CCD1078;
  }

  else
  {
    v3 = sub_20CCD0FB8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20CCD0FB8()
{
  (*(v0[19] + 8))(v0[20], v0[18]);
  v1 = swift_task_alloc();
  v0[29] = v1;
  *v1 = v0;
  v1[1] = sub_20CCD0A2C;
  v2 = v0[26];
  v3 = v0[21];

  return MEMORY[0x2822003E8](v3, 0, 0, v2);
}

uint64_t sub_20CCD1078()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  (*(v0[19] + 8))(v0[20], v0[18]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20CCD1180(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F448, &unk_20CCDCF60);
  v2[7] = swift_task_alloc();
  v3 = type metadata accessor for AudioStreamSender(0);
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v2[10] = *(v4 + 64);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F9C8, &qword_20CCDD740);
  v2[13] = swift_task_alloc();
  v5 = type metadata accessor for AudioSynthesisHandle(0);
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v6 = sub_20CCDB014();
  v2[17] = v6;
  v2[18] = *(v6 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCD1394, v1, 0);
}

uint64_t sub_20CCD1394()
{
  v28 = v0;
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[5];
  v5 = sub_20CCDB584();
  v0[22] = __swift_project_value_buffer(v5, qword_28110EE00);
  v6 = *(v3 + 16);
  v0[23] = v6;
  v0[24] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = sub_20CCDB564();
  v8 = sub_20CCDB8B4();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[21];
  if (v9)
  {
    v11 = v0[20];
    v13 = v0[17];
    v12 = v0[18];
    v14 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v14 = 136315138;
    v6(v11, v10, v13);
    v15 = sub_20CCDB684();
    v17 = v16;
    v18 = *(v12 + 8);
    v18(v10, v13);
    v19 = sub_20CC88C4C(v15, v17, &v27);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_20CC86000, v7, v8, "Got request to observe streaming audio: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x20F30FD70](v26, -1, -1);
    MEMORY[0x20F30FD70](v14, -1, -1);
  }

  else
  {
    v20 = v0[17];
    v21 = v0[18];

    v18 = *(v21 + 8);
    v18(v10, v20);
  }

  v0[25] = v18;
  v22 = v0[6];
  v0[26] = sub_20CCDB004();
  v0[27] = v23;
  v24 = *(v22 + 112);
  v0[28] = v24;

  return MEMORY[0x2822009F8](sub_20CCD15E0, v24, 0);
}

uint64_t sub_20CCD15E0()
{
  v1 = v0[28];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[26];
    v3 = v0[27];

    v5 = sub_20CCB0C4C(v4, v3);
    if (v6)
    {
      sub_20CCDA0B8(*(v2 + 56) + *(v0[15] + 72) * v5, v0[13], type metadata accessor for AudioSynthesisHandle);
      v7 = 0;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 1;
  }

  v8 = v0[6];
  (*(v0[15] + 56))(v0[13], v7, 1, v0[14]);

  return MEMORY[0x2822009F8](sub_20CCD16F4, v8, 0);
}

uint64_t sub_20CCD16F4()
{
  v39 = v0;
  v1 = v0[13];
  v2 = (*(v0[15] + 48))(v1, 1, v0[14]);
  v3 = v0[27];
  v4 = v0[19];
  if (v2 == 1)
  {
    v5 = v0[23];
    v6 = v0[17];
    v7 = v0[5];

    sub_20CC89568(v1, &qword_27C80F9C8, &qword_20CCDD740);
    v5(v4, v7, v6);
    v8 = sub_20CCDB564();
    v9 = sub_20CCDB894();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[25];
    v12 = v0[19];
    v13 = v0[17];
    if (v10)
    {
      v37 = v9;
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v38 = v15;
      *v14 = 136315138;
      v16 = sub_20CCDB004();
      v18 = v17;
      v11(v12, v13);
      v19 = sub_20CC88C4C(v16, v18, &v38);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_20CC86000, v8, v37, "No audio buffer for identifier %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x20F30FD70](v15, -1, -1);
      MEMORY[0x20F30FD70](v14, -1, -1);
    }

    else
    {

      v11(v12, v13);
    }

    sub_20CCDA064();
    swift_allocError();
    *v32 = 0;
    v32[1] = 0;
    swift_willThrow();

    v31 = v0[1];
  }

  else
  {
    v20 = v0[26];
    v21 = v0[16];
    v22 = v0[12];
    v36 = v21;
    v34 = v0[11];
    v35 = v0[9];
    v24 = v0[7];
    v23 = v0[8];
    v25 = v0[6];
    sub_20CCDA120(v1, v21, type metadata accessor for AudioSynthesisHandle);
    sub_20CCDA0B8(v21, v22 + *(v23 + 20), type metadata accessor for AudioSynthesisHandle);
    v26 = *(v25 + 120);
    *v22 = v20;
    v22[1] = v3;
    *(v22 + *(v23 + 24)) = v26;
    v27 = sub_20CCDB794();
    (*(*(v27 - 8) + 56))(v24, 1, 1, v27);
    sub_20CCDA0B8(v22, v34, type metadata accessor for AudioStreamSender);
    v28 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    *(v29 + 24) = 0;
    sub_20CCDA120(v34, v29 + v28, type metadata accessor for AudioStreamSender);
    v30 = v26;
    sub_20CCCD44C(0, 0, v24, &unk_20CCDDD48, v29);

    sub_20CCDA278(v22, type metadata accessor for AudioStreamSender);
    sub_20CCDA278(v36, type metadata accessor for AudioSynthesisHandle);

    v31 = v0[1];
  }

  return v31();
}

uint64_t sub_20CCD1B34()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20CC8DF7C;

  return sub_20CC9DBF4();
}

uint64_t sub_20CCD1BC4(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v2[17] = type metadata accessor for AudioSynthesisHandle(0);
  v2[18] = swift_task_alloc();
  v3 = sub_20CCDAEA4();
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  v4 = sub_20CCDB014();
  v2[22] = v4;
  v2[23] = *(v4 - 8);
  v2[24] = swift_task_alloc();
  v5 = sub_20CCDB184();
  v2[25] = v5;
  v2[26] = *(v5 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCD1D84, v1, 0);
}

uint64_t sub_20CCD1D84()
{
  v50 = v0;
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[15];
  v5 = sub_20CCDB584();
  __swift_project_value_buffer(v5, qword_28110EE00);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_20CCDB564();
  v8 = sub_20CCDB8B4();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[29];
  v47 = v6;
  if (v9)
  {
    v11 = v0[28];
    v13 = v0[25];
    v12 = v0[26];
    v14 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v49 = v46;
    *v14 = 136315138;
    v6(v11, v10, v13);
    v15 = sub_20CCDB684();
    v17 = v16;
    v18 = v13;
    v19 = *(v12 + 8);
    v19(v10, v18);
    v20 = sub_20CC88C4C(v15, v17, &v49);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_20CC86000, v7, v8, "Got streaming audio available notification: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x20F30FD70](v46, -1, -1);
    MEMORY[0x20F30FD70](v14, -1, -1);

    if ((MEMORY[0x20F30EC00]() & 1) == 0)
    {
LABEL_5:

      v21 = v0[1];

      return v21();
    }
  }

  else
  {
    v23 = v0[25];
    v24 = v0[26];

    v19 = *(v24 + 8);
    v25 = (v19)(v10, v23);
    if ((MEMORY[0x20F30EC00](v25) & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v47(v0[27], v0[15], v0[25]);
  v26 = sub_20CCDB564();
  v27 = sub_20CCDB8B4();
  v28 = os_log_type_enabled(v26, v27);
  v29 = v0[27];
  v30 = v0[25];
  if (v28)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v49 = v32;
    *v31 = 136315138;
    v33 = sub_20CCDB134();
    v34 = v19;
    v36 = v35;
    v34(v29, v30);
    v37 = sub_20CC88C4C(v33, v36, &v49);

    *(v31 + 4) = v37;
    _os_log_impl(&dword_20CC86000, v26, v27, "Requesting streaming audio for identifier: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x20F30FD70](v32, -1, -1);
    MEMORY[0x20F30FD70](v31, -1, -1);
  }

  else
  {

    v19(v29, v30);
  }

  v39 = v0[20];
  v38 = v0[21];
  v40 = v0[19];
  sub_20CCDB134();
  sub_20CCDAFF4();
  (*(v39 + 104))(v38, *MEMORY[0x277D0A0C8], v40);
  v48 = (*MEMORY[0x277D09E88] + MEMORY[0x277D09E88]);
  v41 = swift_task_alloc();
  v0[30] = v41;
  v42 = sub_20CCDA4D4(&qword_28110ED80, MEMORY[0x277D0A3D0], MEMORY[0x277D0A3C8]);
  *v41 = v0;
  v41[1] = sub_20CCD2240;
  v43 = v0[24];
  v44 = v0[21];
  v45 = v0[22];

  return v48(v44, v43, v45, v42);
}

uint64_t sub_20CCD2240()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 160);
  v5 = *(*v1 + 152);
  *(*v1 + 248) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 128);
  if (v0)
  {
    v7 = sub_20CCD27A4;
  }

  else
  {
    v7 = sub_20CCD23C8;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_20CCD23C8()
{
  v1 = *(v0 + 144);
  v25 = *(v0 + 136);
  v2 = *(v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F640, &unk_20CCDCBE0);
  swift_allocObject();
  v3 = sub_20CCDB464();
  *(v0 + 256) = v3;
  v24 = sub_20CCDB134();
  v5 = v4;
  v6 = sub_20CCDB154();
  v8 = v7;
  sub_20CCDB144();
  type metadata accessor for AudioStreamReceiver();
  v9 = swift_allocObject();
  *(v0 + 264) = v9;

  swift_defaultActor_initialize();
  *(v9 + 192) = sub_20CCB1D18(MEMORY[0x277D84F90]);
  *(v9 + 200) = 0;
  *(v9 + 208) = 1;
  *(v9 + 112) = v24;
  *(v9 + 120) = v5;
  *(v9 + 128) = v6;
  *(v9 + 136) = v8;
  v10 = *(v0 + 72);
  *(v9 + 144) = *(v0 + 56);
  *(v9 + 160) = v10;
  *(v9 + 176) = *(v0 + 88);
  *(v9 + 184) = v3;
  v11 = sub_20CCDB134();
  v13 = v12;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *(v2 + 136);
  *(v2 + 136) = 0x8000000000000000;
  sub_20CCD7434(v9, v11, v13, isUniquelyReferenced_nonNull_native);

  *(v2 + 136) = v26;
  swift_endAccess();

  v15 = sub_20CCDB154();
  v17 = v16;
  sub_20CCDB164();
  sub_20CCDB174();
  sub_20CCDB144();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F650, &unk_20CCDCF70);
  swift_allocObject();
  v18 = sub_20CCD9DE8(v3);

  *(v1 + *(v25 + 32)) = v18;
  *(v1 + 40) = v15;
  *(v1 + 48) = v17;
  v19 = *(v0 + 16);
  v20 = *(v0 + 32);
  *(v1 + 32) = *(v0 + 48);
  *v1 = v19;
  *(v1 + 16) = v20;
  v21 = *(v2 + 112);
  *(v0 + 272) = v21;
  *(v0 + 280) = sub_20CCDB134();
  *(v0 + 288) = v22;

  return MEMORY[0x2822009F8](sub_20CCD2620, v21, 0);
}

uint64_t sub_20CCD2620()
{
  v1 = v0[16];
  sub_20CCC6724(v0[18], v0[35], v0[36]);

  return MEMORY[0x2822009F8](sub_20CCD26A8, v1, 0);
}

uint64_t sub_20CCD26A8()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = v0[18];

  sub_20CCDA278(v4, type metadata accessor for AudioSynthesisHandle);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_20CCD27A4()
{
  (*(v0[23] + 8))(v0[24], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20CCD2868(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_20CCDAEF4();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v4 = sub_20CCDAFB4();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCD29C0, v1, 0);
}

uint64_t sub_20CCD29C0()
{
  v98 = v0;
  v1 = sub_20CCDAEE4();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = *(v0 + 136);
    v6 = *(v4 + 16);
    v5 = v4 + 16;
    v7 = v1 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v90 = *(v5 + 56);
    v94 = v6;
    while (1)
    {
      v8 = *(v0 + 168);
      v9 = *(v0 + 128);
      v94(v8, v7, v9);
      v10 = sub_20CCDAF74();
      v12 = v11;
      (*(v5 - 8))(v8, v9);
      v13 = v12 >> 62;
      if ((v12 >> 62) > 1)
      {
        if (v13 == 2)
        {
          v16 = *(v10 + 16);
          v15 = *(v10 + 24);
          sub_20CC9720C(v10, v12);
          v14 = v15 - v16;
          if (__OFSUB__(v15, v16))
          {
            goto LABEL_41;
          }
        }

        else
        {
          sub_20CC9720C(v10, v12);
          v14 = 0;
        }
      }

      else if (v13)
      {
        sub_20CC9720C(v10, v12);
        LODWORD(v14) = HIDWORD(v10) - v10;
        if (__OFSUB__(HIDWORD(v10), v10))
        {
          goto LABEL_42;
        }

        v14 = v14;
      }

      else
      {
        sub_20CC9720C(v10, v12);
        v14 = BYTE6(v12);
      }

      v17 = __OFADD__(v3, v14);
      v3 += v14;
      if (v17)
      {
        break;
      }

      v7 += v90;
      if (!--v2)
      {

        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
    goto LABEL_19;
  }

  v3 = 0;
LABEL_17:
  v18 = sub_20CCDAEE4();
  v19 = 0x28110E000uLL;
  if (!*(v18 + 16))
  {

    goto LABEL_24;
  }

  v20 = *(v0 + 136);
  v94 = *(v20 + 16);
  v94(*(v0 + 160), v18 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), *(v0 + 128));

  if (qword_28110E630 != -1)
  {
    goto LABEL_43;
  }

LABEL_19:
  v21 = *(v0 + 152);
  v91 = *(v0 + 160);
  v23 = *(v0 + 120);
  v22 = *(v0 + 128);
  v25 = *(v0 + 88);
  v24 = *(v0 + 96);
  v26 = *(v0 + 72);
  v27 = sub_20CCDB584();
  __swift_project_value_buffer(v27, qword_28110EE00);
  (*(v24 + 16))(v23, v26, v25);
  v94(v21, v91, v22);
  v28 = sub_20CCDB564();
  v95 = sub_20CCDB8B4();
  v29 = os_log_type_enabled(v28, v95);
  v31 = *(v0 + 152);
  v30 = *(v0 + 160);
  v33 = *(v0 + 128);
  v32 = *(v0 + 136);
  v34 = *(v0 + 120);
  v36 = *(v0 + 88);
  v35 = *(v0 + 96);
  if (v29)
  {
    log = *(v0 + 128);
    v37 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v97 = v88;
    *v37 = 134218498;
    v92 = v30;
    v38 = *(sub_20CCDAEE4() + 16);

    (*(v35 + 8))(v34, v36);
    *(v37 + 4) = v38;
    *(v37 + 12) = 2080;
    v39 = sub_20CCDAFA4();
    v41 = v40;
    v42 = *(v32 + 8);
    v42(v31, log);
    v43 = sub_20CC88C4C(v39, v41, &v97);

    *(v37 + 14) = v43;
    *(v37 + 22) = 2048;
    *(v37 + 24) = v3;
    _os_log_impl(&dword_20CC86000, v28, v95, "Received %ld chunks for stream %s. Total message size: %ld.", v37, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v88);
    MEMORY[0x20F30FD70](v88, -1, -1);
    MEMORY[0x20F30FD70](v37, -1, -1);

    v42(v92, log);
  }

  else
  {
    (*(v35 + 8))(*(v0 + 120), *(v0 + 88));

    v44 = *(v32 + 8);
    v44(v31, v33);
    v44(v30, v33);
  }

  v19 = 0x28110E000uLL;
LABEL_24:
  v45 = sub_20CCDAEE4();
  *(v0 + 176) = v45;
  v46 = *(v45 + 16);
  *(v0 + 184) = v46;
  if (v46)
  {
    v47 = *(v0 + 136);
    *(v0 + 232) = *(v47 + 80);
    swift_beginAccess();
    v48 = 0;
    *(v0 + 192) = *(v47 + 72);
    *(v0 + 200) = *(v47 + 16);
    while (1)
    {
      *(v0 + 208) = v48;
      v51 = *(v0 + 80);
      (*(v0 + 200))(*(v0 + 144), *(v0 + 176) + ((*(v0 + 232) + 32) & ~*(v0 + 232)) + *(v0 + 192) * v48, *(v0 + 128));
      v52 = sub_20CCDAFA4();
      v54 = v53;
      v55 = *(v51 + 136);
      if (*(v55 + 16))
      {
        v56 = v52;

        v57 = sub_20CCB0C4C(v56, v54);
        v59 = v58;

        if (v59)
        {
          break;
        }
      }

      if (*(v19 + 1584) != -1)
      {
        swift_once();
      }

      v60 = *(v0 + 112);
      v61 = *(v0 + 88);
      v62 = *(v0 + 96);
      v63 = *(v0 + 72);
      v64 = sub_20CCDB584();
      __swift_project_value_buffer(v64, qword_28110EE00);
      v65 = *(v62 + 16);
      v65(v60, v63, v61);
      v66 = sub_20CCDB564();
      v67 = sub_20CCDB894();
      v68 = os_log_type_enabled(v66, v67);
      v69 = *(v0 + 144);
      v70 = *(v0 + 128);
      v71 = *(v0 + 112);
      v96 = (*(v0 + 136) + 8);
      if (v68)
      {
        v93 = *(v0 + 128);
        v73 = *(v0 + 96);
        v72 = *(v0 + 104);
        v74 = *(v0 + 88);
        loga = v66;
        v75 = swift_slowAlloc();
        v89 = v69;
        v76 = swift_slowAlloc();
        v97 = v76;
        *v75 = 136315138;
        v65(v72, v71, v74);
        v77 = sub_20CCDB684();
        v78 = v67;
        v80 = v79;
        (*(v73 + 8))(v71, v74);
        v81 = sub_20CC88C4C(v77, v80, &v97);

        *(v75 + 4) = v81;
        v19 = 0x28110E000;
        _os_log_impl(&dword_20CC86000, loga, v78, "No receiver for streaming audio data request %s", v75, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v76);
        MEMORY[0x20F30FD70](v76, -1, -1);
        MEMORY[0x20F30FD70](v75, -1, -1);

        (*v96)(v89, v93);
      }

      else
      {
        v50 = *(v0 + 88);
        v49 = *(v0 + 96);

        (*(v49 + 8))(v71, v50);
        (*v96)(v69, v70);
      }

      v48 = *(v0 + 208) + 1;
      if (v48 == *(v0 + 184))
      {
        goto LABEL_34;
      }
    }

    *(v0 + 216) = *(*(v55 + 56) + 8 * v57);

    v84 = swift_task_alloc();
    *(v0 + 224) = v84;
    *v84 = v0;
    v84[1] = sub_20CCD31F0;
    v85 = *(v0 + 144);

    return sub_20CCCC024(v85);
  }

  else
  {
LABEL_34:

    v82 = *(v0 + 8);

    return v82();
  }
}

uint64_t sub_20CCD31F0(char a1)
{
  v2 = *(*v1 + 80);
  *(*v1 + 236) = a1;

  return MEMORY[0x2822009F8](sub_20CCD3308, v2, 0);
}

uint64_t sub_20CCD3308(uint64_t a1)
{
  v59 = v1;
  if (*(v1 + 236))
  {
    v2 = sub_20CCDAFA4();
    v4 = v3;
    swift_beginAccess();
    v5 = sub_20CCB0C4C(v2, v4);
    if (v6)
    {
      v7 = v5;
      v8 = *(v1 + 80);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *(v8 + 136);
      *(v1 + 64) = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_20CCD8828();
        v10 = *(v1 + 64);
      }

      v11 = *(v1 + 80);

      sub_20CCD6990(v7, v10);
      *(v11 + 136) = v10;
    }

    v13 = *(v1 + 136);
    v12 = *(v1 + 144);
    v14 = *(v1 + 128);
    swift_endAccess();

    (*(v13 + 8))(v12, v14);
  }

  else
  {
    (*(*(v1 + 136) + 8))(*(v1 + 144), *(v1 + 128));
  }

  v15 = *(v1 + 208) + 1;
  if (v15 == *(v1 + 184))
  {
LABEL_9:

    v16 = *(v1 + 8);

    return v16();
  }

  else
  {
    v18 = 0x28110E000;
    while (1)
    {
      *(v1 + 208) = v15;
      v29 = *(v1 + 80);
      (*(v1 + 200))(*(v1 + 144), *(v1 + 176) + ((*(v1 + 232) + 32) & ~*(v1 + 232)) + *(v1 + 192) * v15, *(v1 + 128));
      v30 = sub_20CCDAFA4();
      v32 = v31;
      v33 = *(v29 + 136);
      if (*(v33 + 16))
      {
        v34 = v30;

        v35 = sub_20CCB0C4C(v34, v32);
        v37 = v36;

        if (v37)
        {
          break;
        }
      }

      if (*(v18 + 1584) != -1)
      {
        swift_once();
      }

      v38 = *(v1 + 112);
      v39 = *(v1 + 88);
      v40 = *(v1 + 96);
      v41 = *(v1 + 72);
      v42 = sub_20CCDB584();
      __swift_project_value_buffer(v42, qword_28110EE00);
      v43 = *(v40 + 16);
      v43(v38, v41, v39);
      v44 = sub_20CCDB564();
      v45 = sub_20CCDB894();
      v46 = os_log_type_enabled(v44, v45);
      v47 = *(v1 + 144);
      v48 = *(v1 + 128);
      v49 = *(v1 + 112);
      v57 = (*(v1 + 136) + 8);
      if (v46)
      {
        v56 = *(v1 + 128);
        v20 = *(v1 + 96);
        v19 = *(v1 + 104);
        v21 = *(v1 + 88);
        log = v44;
        v22 = swift_slowAlloc();
        v55 = v47;
        v23 = swift_slowAlloc();
        v58 = v23;
        *v22 = 136315138;
        v43(v19, v49, v21);
        v24 = sub_20CCDB684();
        v25 = v45;
        v27 = v26;
        (*(v20 + 8))(v49, v21);
        v28 = sub_20CC88C4C(v24, v27, &v58);

        *(v22 + 4) = v28;
        v18 = 0x28110E000uLL;
        _os_log_impl(&dword_20CC86000, log, v25, "No receiver for streaming audio data request %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v23);
        MEMORY[0x20F30FD70](v23, -1, -1);
        MEMORY[0x20F30FD70](v22, -1, -1);

        (*v57)(v55, v56);
      }

      else
      {
        v51 = *(v1 + 88);
        v50 = *(v1 + 96);

        (*(v50 + 8))(v49, v51);
        (*v57)(v47, v48);
      }

      v15 = *(v1 + 208) + 1;
      if (v15 == *(v1 + 184))
      {
        goto LABEL_9;
      }
    }

    *(v1 + 216) = *(*(v33 + 56) + 8 * v35);

    v52 = swift_task_alloc();
    *(v1 + 224) = v52;
    *v52 = v1;
    v52[1] = sub_20CCD31F0;
    v53 = *(v1 + 144);

    return sub_20CCCC024(v53);
  }
}

uint64_t sub_20CCD383C(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_20CCD385C, v1, 0);
}

uint64_t sub_20CCD385C()
{
  v1 = v0[9];
  v2 = sub_20CCDB0B4();
  v4 = v3;
  swift_beginAccess();
  v5 = *(v1 + 136);
  if (*(v5 + 16) && (, v6 = sub_20CCB0C4C(v2, v4), v8 = v7, , (v8 & 1) != 0))
  {
    v0[10] = *(*(v5 + 56) + 8 * v6);

    v9 = swift_task_alloc();
    v0[11] = v9;
    *v9 = v0;
    v9[1] = sub_20CCD39B8;
    v10 = v0[8];

    return sub_20CCCC59C(v10);
  }

  else
  {

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_20CCD39B8(char a1)
{
  v2 = *(*v1 + 72);
  *(*v1 + 96) = a1;

  return MEMORY[0x2822009F8](sub_20CCD3AD0, v2, 0);
}

uint64_t sub_20CCD3AD0()
{
  if (*(v0 + 96) == 1)
  {
    v1 = sub_20CCDB0B4();
    v3 = v2;
    swift_beginAccess();
    sub_20CCD472C(v1, v3);
    swift_endAccess();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_20CCD3BAC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_20CCD3BD0, v2, 0);
}

uint64_t sub_20CCD3BD0()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_20CCD3C90;
  v3 = v0[2];
  v2 = v0[3];

  return sub_20CCCDFE8(v3, v2, 0x8AC7230489E80000, 0);
}

uint64_t sub_20CCD3C90()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 32);

    return MEMORY[0x2822009F8](sub_20CCD3DD4, v6, 0);
  }
}

uint64_t sub_20CCD3DD4()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Done synchronizing streaming audio start", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_20CCD3EEC()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_20CCD3F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_20CCDB9C4();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_20CCD4068, 0, 0);
}

uint64_t sub_20CCD4068()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_20CCDB9D4();
  v5 = sub_20CCDA4D4(&qword_27C80FB40, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_20CCDBAB4();
  sub_20CCDA4D4(&qword_27C80FB48, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_20CCDB9E4();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_20CCD41F8;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_20CCD41F8()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20CCD43B4, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_20CCD43B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CCD4420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_20CCB0AA4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_20CCD7C98();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_20CCDAF54();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = sub_20CCDB214();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_20CCD6110(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_20CCDB214();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_20CCD45C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_20CCB0C4C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_20CCD85C8();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for AudioSynthesisHandle(0);
    v19 = *(v12 - 8);
    sub_20CCDA120(v11 + *(v19 + 72) * v8, a3, type metadata accessor for AudioSynthesisHandle);
    sub_20CCD67A4(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for AudioSynthesisHandle(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_20CCD472C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_20CCB0C4C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_20CCD8828();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_20CCD6990(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_20CCD47C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = sub_20CCDB214();
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20CCDAF54();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F928, &qword_20CCDD300);
  v47 = v4;
  result = sub_20CCDBA14();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_20CCDA4D4(&qword_27C80F8E8, MEMORY[0x277D0A278], MEMORY[0x277D0A280]);
      result = sub_20CCDB644();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_20CCD4C6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_20CCDA784();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F8D0, &unk_20CCDDD50);
  v39 = v4;
  result = sub_20CCDBA14();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_20CCDA4D4(&qword_27C80F8A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_20CCDB644();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_20CCD5048(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF0, &unk_20CCDC6F0);
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v40 - v6;
  v7 = sub_20CCDA784();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F8C0, &unk_20CCDD280);
  v47 = v4;
  result = sub_20CCDBA14();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_20CCDA4D4(&qword_27C80F8A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_20CCDB644();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_20CCD54F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for AudioSynthesisHandle(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F938, qword_20CCDD310);
  v40 = v4;
  result = sub_20CCDBA14();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_20CCDA120(v28, v41, type metadata accessor for AudioSynthesisHandle);
      }

      else
      {
        sub_20CCDA0B8(v28, v41, type metadata accessor for AudioSynthesisHandle);
      }

      sub_20CCDBB44();
      sub_20CCDB6A4();
      result = sub_20CCDBB64();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_20CCDA120(v41, *(v9 + 56) + v27 * v17, type metadata accessor for AudioSynthesisHandle);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_20CCD5870(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F910, &qword_20CCDD2E8);
  v34 = v4;
  result = sub_20CCDBA14();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_20CCDBB44();
      sub_20CCDB6A4();
      result = sub_20CCDBB64();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_20CCD5B18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v39 = sub_20CCDAFB4();
  v5 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F8E0, &qword_20CCDD2A8);
  v37 = v4;
  result = sub_20CCDBA14();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v3;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = (v5 + 16);
    v36 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 4 * v22);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v22;
      if (v37)
      {
        (*v16)(v38, v25, v39);
      }

      else
      {
        (*v35)(v38, v25, v39);
      }

      result = MEMORY[0x20F30F710](*(v9 + 40), v23, 4);
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 4 * v18) = v23;
      result = (*v16)(*(v9 + 56) + v24 * v18, v38, v39);
      ++*(v9 + 16);
      v5 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_20CCD5E68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F918, &qword_20CCDD2F0);
  v34 = v4;
  result = sub_20CCDBA14();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_20CCDBB44();
      sub_20CCDB6A4();
      result = sub_20CCDBB64();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_20CCD6110(int64_t a1, uint64_t a2)
{
  v4 = sub_20CCDAF54();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = sub_20CCDB924();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_20CCDA4D4(&qword_27C80F8E8, MEMORY[0x277D0A278], MEMORY[0x277D0A280]);
      v22 = sub_20CCDB644();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(sub_20CCDB214() - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
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

  return result;
}

unint64_t sub_20CCD6454(int64_t a1, uint64_t a2)
{
  v4 = sub_20CCDA784();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = sub_20CCDB924();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_20CCDA4D4(&qword_27C80F8A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v22 = sub_20CCDB644();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF0, &unk_20CCDC6F0) - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
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

  return result;
}

unint64_t sub_20CCD67A4(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_20CCDB924() + 1) & ~v5;
    while (1)
    {
      sub_20CCDBB44();

      sub_20CCDB6A4();
      v9 = sub_20CCDBB64();

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
      v15 = *(*(type metadata accessor for AudioSynthesisHandle(0) - 8) + 72);
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

uint64_t sub_20CCD6990(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_20CCDB924() + 1) & ~v5;
    do
    {
      sub_20CCDBB44();

      sub_20CCDB6A4();
      v9 = sub_20CCDBB64();

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

unint64_t sub_20CCD6B40(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_20CCDB924() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 4 * v6);
      result = MEMORY[0x20F30F710](*(a2 + 40), *v10, 4);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 4 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_20CCDAFB4() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_20CCD6CF0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_20CCDAF54();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_20CCB0AA4(a2);
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
      sub_20CCD7C98();
      goto LABEL_7;
    }

    sub_20CCD47C4(v17, a3 & 1);
    v28 = sub_20CCB0AA4(a2);
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
      return sub_20CCD7894(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_20CCDBAA4();
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
  v22 = sub_20CCDB214();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_20CCD6EF4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_20CCDA784();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_20CCB0B78(a2);
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
      sub_20CCD7FEC();
      goto LABEL_7;
    }

    sub_20CCD4C6C(v17, a3 & 1);
    v22 = sub_20CCB0B78(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_20CCD7988(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_20CCDBAA4();
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
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_20CCD70C0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_20CCDA784();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_20CCB0B78(a2);
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
      sub_20CCD826C();
      goto LABEL_7;
    }

    sub_20CCD5048(v17, a3 & 1);
    v28 = sub_20CCB0B78(a2);
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
      return sub_20CCD7A40(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_20CCDBAA4();
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
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF0, &unk_20CCDC6F0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_20CCD72D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_20CCB0C4C(a2, a3);
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
      sub_20CCD85C8();
      goto LABEL_7;
    }

    sub_20CCD54F8(v15, a4 & 1);
    v22 = sub_20CCB0C4C(a2, a3);
    if ((v16 & 1) == (v23 & 1))
    {
      v12 = v22;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_20CCDBAA4();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for AudioSynthesisHandle(0) - 8) + 72) * v12;

    return sub_20CCDA348(a1, v20);
  }

LABEL_13:
  sub_20CCD7B40(v12, a2, a3, a1, v18);
}

uint64_t sub_20CCD7434(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_20CCB0C4C(a2, a3);
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
      sub_20CCD5870(v16, a4 & 1);
      v11 = sub_20CCB0C4C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_20CCDBAA4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_20CCD8828();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_20CCD75B0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_20CCB0CC4(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_20CCD8998();
      goto LABEL_7;
    }

    sub_20CCD5B18(v13, a3 & 1);
    v24 = sub_20CCB0CC4(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_20CCDBAA4();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_20CCDAFB4();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_20CCD7BEC(v10, a2, a1, v16);
}

uint64_t sub_20CCD7718(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_20CCB0C4C(a2, a3);
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
      sub_20CCD5E68(v16, a4 & 1);
      v11 = sub_20CCB0C4C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_20CCDBAA4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_20CCD8C00();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_20CCD7894(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_20CCDAF54();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_20CCDB214();
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

uint64_t sub_20CCD7988(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_20CCDA784();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_20CCD7A40(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_20CCDA784();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF0, &unk_20CCDC6F0);
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

uint64_t sub_20CCD7B40(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for AudioSynthesisHandle(0);
  result = sub_20CCDA120(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for AudioSynthesisHandle);
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

uint64_t sub_20CCD7BEC(unint64_t a1, int a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 4 * a1) = a2;
  v7 = a4[7];
  v8 = sub_20CCDAFB4();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

char *sub_20CCD7C98()
{
  v1 = v0;
  v41 = sub_20CCDB214();
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_20CCDAF54();
  v43 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F928, &qword_20CCDD300);
  v4 = *v0;
  v5 = sub_20CCDBA04();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_20CCD7FEC()
{
  v1 = v0;
  v33 = sub_20CCDA784();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F8D0, &unk_20CCDDD50);
  v3 = *v0;
  v4 = sub_20CCDBA04();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_20CCD826C()
{
  v1 = v0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF0, &unk_20CCDC6F0);
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v30 - v2;
  v39 = sub_20CCDA784();
  v43 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F8C0, &unk_20CCDD280);
  v4 = *v0;
  v5 = sub_20CCDBA04();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_20CCD85C8()
{
  v1 = v0;
  v2 = type metadata accessor for AudioSynthesisHandle(0);
  v33 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F938, qword_20CCDD310);
  v4 = *v0;
  v5 = sub_20CCDBA04();
  v6 = v5;
  if (*(v4 + 16))
  {
    v31 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v34 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = *(v4 + 56);
        v22 = (*(v4 + 48) + 16 * v19);
        v23 = v4;
        v24 = *v22;
        v25 = v22[1];
        v26 = v32;
        v27 = *(v33 + 72) * v19;
        sub_20CCDA0B8(v21 + v27, v32, type metadata accessor for AudioSynthesisHandle);
        v28 = v34;
        v29 = (*(v34 + 48) + v20);
        *v29 = v24;
        v29[1] = v25;
        v4 = v23;
        sub_20CCDA120(v26, *(v28 + 56) + v27, type metadata accessor for AudioSynthesisHandle);

        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v34;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_20CCD8828()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F910, &qword_20CCDD2E8);
  v2 = *v0;
  v3 = sub_20CCDBA04();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_20CCD8998()
{
  v1 = v0;
  v29 = sub_20CCDAFB4();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F8E0, &qword_20CCDD2A8);
  v3 = *v0;
  v4 = sub_20CCDBA04();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 4 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 4 * v17) = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_20CCD8C00()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F918, &qword_20CCDD2F0);
  v2 = *v0;
  v3 = sub_20CCDBA04();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_20CCD8D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_20CCD8D90, 0, 0);
}

uint64_t sub_20CCD8D90()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_20CCD8E84;

    return sub_20CCCF1C0();
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_20CCD8E84()
{

  return MEMORY[0x2822009F8](sub_20CCD8F9C, 0, 0);
}

uint64_t sub_20CCD8FC4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a2;
  v6[6] = a4;
  v7 = a3[1];
  v6[2] = *a3;
  v6[3] = v7;
  v6[4] = a1;
  return MEMORY[0x2822009F8](sub_20CCD8FF0, a2, 0);
}

uint64_t sub_20CCD8FF0()
{
  v1 = *(v0 + 64);
  v9 = *(v0 + 48);
  v2 = *(v0 + 40);
  v3 = sub_20CCDA01C(&qword_27C80FB20, &qword_27C80FB28, &unk_20CCDDCA8, &unk_20CCDCE98);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v0 + 16;
  *(v4 + 32) = v9;
  *(v4 + 48) = v1;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_20CCD914C;
  v6 = *(v0 + 32);
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v6, v2, v3, 0xD00000000000001ELL, 0x800000020CCDEB60, sub_20CCD9AF4, v4, v7);
}

uint64_t sub_20CCD914C()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = sub_20CCBD794;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_20CCAE740;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_20CCD9274(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20CC92A0C;

  return sub_20CCD8FC4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_20CCD9350(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_20CCDA784();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F448, &unk_20CCDCF60);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v13 = *a2;
  v12 = a2[1];
  v14 = sub_20CCDB794();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  (*(v7 + 16))(&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v15 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 4) = a1;
  *(v16 + 5) = v13;
  *(v16 + 6) = v12;
  (*(v7 + 32))(&v16[v15], &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  sub_20CCAA5EC(0, 0, v11, &unk_20CCDDCC0, v16);
}

uint64_t sub_20CCD9558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v9 = *a5;
  v10 = a5[1];
  v11 = swift_task_alloc();
  *(v6 + 24) = v11;
  *v11 = v6;
  v11[1] = sub_20CCD960C;

  return sub_20CCD9928(a4, v9, v10, a6);
}

uint64_t sub_20CCD960C(char a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1 & 1;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_20CCD9720(uint64_t a1)
{
  v4 = *(sub_20CCDA784() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20CC92A0C;

  return sub_20CCD9558(a1, v6, v7, v8, v1 + 5, v1 + v5);
}

uint64_t sub_20CCD9830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v14 = *a7;
  v15 = a7[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_20CC8DF7C;

  return sub_20CCCEA20(a1, a2, a3, a4, a5, a6, v14, v15);
}

uint64_t sub_20CCD9928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x2822009F8](sub_20CCD994C, 0, 0);
}

uint64_t sub_20CCD994C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = Strong;
    sub_20CCDB764();
    sub_20CCDA4D4(&qword_27C80F940, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    v0[10] = swift_allocError();
    sub_20CCDB604();

    return MEMORY[0x2822009F8](sub_20CCD9A6C, v2, 0);
  }

  else
  {
    v3 = v0[1];

    return v3(1);
  }
}

uint64_t sub_20CCD9A6C()
{
  v1 = v0[10];
  sub_20CCCEF34(v0[6], v0[7], v0[8], v1);

  v2 = v0[9] == 0;
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_20CCD9B08(uint64_t a1)
{
  sub_20CCDA784();
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20CC92A0C;

  return sub_20CCD9830(a1, v4, v5, v6, v7, v8, v1 + 7);
}

void *sub_20CCD9C2C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F448, &unk_20CCDCF60);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FB28, &unk_20CCDDCA8);
  v9 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v9 + 112) = MEMORY[0x277D84FA0];
  v10 = MEMORY[0x277D84F90];
  *(v9 + 120) = sub_20CCB1AE4(MEMORY[0x277D84F90]);
  v3[16] = v9;
  v3[17] = sub_20CCB19E0(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FB68, &qword_20CCDDD70);
  swift_allocObject();
  v3[18] = sub_20CCDB484();
  v3[14] = a1;
  v3[15] = a2;
  v11 = sub_20CCDB794();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = a2;
  swift_retain_n();
  v13 = a2;
  sub_20CCCD44C(0, 0, v8, &unk_20CCDDD80, v12);

  return v3;
}

uint64_t sub_20CCD9DE8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F448, &unk_20CCDCF60);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  swift_defaultActor_initialize();
  v6 = MEMORY[0x277D84F90];
  *(v1 + 120) = MEMORY[0x277D84F90];
  *(v1 + 128) = sub_20CCB13F8(v6);
  *(v1 + 136) = 0;
  *(v1 + 144) = -1;
  *(v1 + 160) = 0;
  *(v1 + 168) = 1;
  *(v1 + 112) = a1;

  *(v1 + 152) = CFAbsoluteTimeGetCurrent();
  v7 = sub_20CCDB794();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v8;
  sub_20CCAA5EC(0, 0, v5, &unk_20CCDDD18, v9);

  return v1;
}

uint64_t sub_20CCD9F54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20CC8DF7C;

  return sub_20CCD8D70(a1, v4, v5, v6);
}

uint64_t sub_20CCDA01C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_20CCDA064()
{
  result = qword_27C80FB60;
  if (!qword_27C80FB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C80FB60);
  }

  return result;
}

uint64_t sub_20CCDA0B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CCDA120(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CCDA188()
{
  type metadata accessor for AudioStreamSender(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20CC8DF7C;

  return sub_20CCD1B34();
}

uint64_t sub_20CCDA278(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20CCDA2D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F448, &unk_20CCDCF60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CCDA348(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioSynthesisHandle(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CCDA3AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20CC92A0C;

  return sub_20CCD05E8(a1, v4, v5, v7, v6);
}

uint64_t sub_20CCDA46C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_20CCDA4D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t get_enum_tag_for_layout_string_28FitnessIntelligenceInference15StreamingSystemC7Failure33_C06FBEA013B8AF8E73BB0DCFFB3DA249LLO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_20CCDA534(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20CCDA588(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_20CCDA5E4(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}