uint64_t sub_23252A7F4()
{
  v41 = v0;
  sub_232546168();
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v4 = sub_2324C1C94();
  swift_beginAccess();
  sub_2324CF3C4(v4, v3, &unk_27DD932E0, qword_2325472E0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2324C28AC(v0[13], &unk_27DD932E0, qword_2325472E0);
    v5 = sub_232545888();
    v6 = sub_2325461F8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2324C0000, v5, v6, "Failed to retrieve device ID for NDFActor", v7, 2u);
      MEMORY[0x238386450](v7, -1, -1);
    }

    v8 = v0[5];

    v9 = type metadata accessor for NDFDeviceEventInfo(0);
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);

    v10 = v0[1];

    return v10();
  }

  else
  {
    v11 = v0[7];
    (*(v0[15] + 32))(v0[17], v0[13], v0[14]);
    v0[18] = type metadata accessor for NDFActor(0);
    sub_232545C78();
    v12 = sub_2324F5138();
    (*(*v11 + 296))(v12);
    sub_232545CE8();
    sub_232545CC8();
    v0[19] = sub_232533128(&unk_2814D5170, type metadata accessor for NDFActor, &unk_232548548);
    v0[20] = sub_232545758();

    v39 = sub_232545B88();
    v14 = v13;
    v15 = 0xE90000000000003ELL;
    if (v13)
    {
      v16 = v13;
    }

    else
    {
      v16 = 0xE90000000000003ELL;
    }

    v37 = sub_232545B98();
    v18 = v17;
    if (v17)
    {
      v15 = v17;
    }

    v19 = sub_232545888();
    v20 = sub_2325461D8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = v37;
      if (!v18)
      {
        v21 = 0x6E776F6E6B6E753CLL;
      }

      v38 = v21;
      if (v14)
      {
        v22 = v39;
      }

      else
      {
        v22 = 0x6E776F6E6B6E753CLL;
      }

      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v40[0] = v24;
      *v23 = 136380931;
      v25 = sub_2324C2220(v22, v16, v40);

      *(v23 + 4) = v25;
      *(v23 + 12) = 2080;
      v26 = sub_2324C2220(v38, v15, v40);

      *(v23 + 14) = v26;
      _os_log_impl(&dword_2324C0000, v19, v20, "About to retrieve active events and device info from device <%{private}s: %s>", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x238386450](v24, -1, -1);
      MEMORY[0x238386450](v23, -1, -1);
    }

    else
    {
    }

    v27 = v0[16];
    v29 = v0[11];
    v28 = v0[12];
    (*(v0[15] + 16))(v27, v0[17], v0[14]);
    v30 = *sub_232520DDC();
    swift_storeEnumTagMultiPayload();
    sub_2325336D4(v27, v30, v29, v28);
    sub_232546168();
    v32 = swift_task_alloc();
    v0[21] = v32;
    v33 = type metadata accessor for NDFDeviceEventInfo(0);
    v34 = sub_232533128(&qword_27DD93640, type metadata accessor for NDFDeviceEventInfo, &unk_2325490C8);
    *v32 = v0;
    v32[1] = sub_23252AEC0;
    v35 = v0[12];
    v36 = v0[9];

    return sub_232521A90(v36, v35, v33, v34);
  }
}

uint64_t sub_23252AEC0()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_23252B14C;
  }

  else
  {
    v4 = sub_23252AFEC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23252AFEC()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[5];
  sub_2325330C8(v0[12], type metadata accessor for NDFActorRequest);
  sub_2324CF3C4(v5 + *(v4 + 40), v6, &qword_27DD93648, &unk_232548928);
  sub_2324C28AC(v5, &qword_27DD93638, &unk_232548918);
  sub_232545C98();
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_23252B14C()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  sub_2325330C8(v0[12], type metadata accessor for NDFActorRequest);
  sub_232545C98();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_23252B264(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_232545688();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23252B324, v1, 0);
}

uint64_t sub_23252B324()
{
  v1 = *(**sub_2324C4D38() + 392);

  LOBYTE(v1) = v1(v2);

  if (v1)
  {
    v3 = *sub_2324C8418();
    if (v3)
    {
      v4 = v0[6];
      v6 = v0[2];
      v5 = v0[3];
      v7 = *(v3 + 128);
      v0[7] = v7;
      v8 = *(v3 + 144);
      v0[8] = v8;
      v9 = *(*v5 + 272);

      v9(v10);
      sub_232545628();
      sub_232533128(&qword_27DD93650, type metadata accessor for NDFActorManager, &unk_232548988);
      v11 = swift_task_alloc();
      v0[9] = v11;
      v11[2] = v6;
      v11[3] = v4;
      v11[4] = v5;
      v11[5] = v7;
      v11[6] = v8;
      v12 = swift_task_alloc();
      v0[10] = v12;
      *v12 = v0;
      v12[1] = sub_23252B628;

      return MEMORY[0x282200600]();
    }

    v13 = sub_232545888();
    v14 = sub_2325461F8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = "No device manager available";
      goto LABEL_10;
    }
  }

  else
  {
    v13 = sub_232545888();
    v14 = sub_232546208();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = "Device polling is disallowed";
LABEL_10:
      _os_log_impl(&dword_2324C0000, v13, v14, v16, v15, 2u);
      MEMORY[0x238386450](v15, -1, -1);
    }
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_23252B628()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_23252B754, v1, 0);
}

uint64_t sub_23252B754()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_23252B7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v7[9] = a2;
  v7[10] = a3;
  v9 = sub_232545688();
  v7[15] = v9;
  v10 = *(v9 - 8);
  v7[16] = v10;
  v7[17] = *(v10 + 64);
  v7[18] = swift_task_alloc();
  v11 = sub_232545BA8();
  v7[19] = v11;
  v12 = *(v11 - 8);
  v7[20] = v12;
  v7[21] = *(v12 + 64);
  v7[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93630, &qword_232547550);
  v7[23] = swift_task_alloc();
  v7[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23252B968, a5, 0);
}

uint64_t sub_23252B968()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 160);
    v34 = **(v0 + 72);
    v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v5 = v1 + v4;
    v32 = (v3 + 16);
    v33 = v4;
    v31 = *(v3 + 72);
    v30 = v4 + *(v0 + 168);
    v28 = (v3 + 32);
    v29 = *(v0 + 136) + 7;
    v35 = *(v0 + 128);
    v45 = sub_2325460F8();
    v6 = *(v45 - 8);
    v27 = *(v6 + 56);
    v26 = (v6 + 48);
    v25 = (v6 + 8);
    do
    {
      v44 = v2;
      v39 = *(v0 + 192);
      v42 = *(v0 + 184);
      v9 = *(v0 + 176);
      v11 = *(v0 + 144);
      v10 = *(v0 + 152);
      v12 = *(v0 + 120);
      v36 = v12;
      v37 = v11;
      v40 = *(v0 + 104);
      v41 = *(v0 + 112);
      v38 = *(v0 + 96);
      v13 = *(v0 + 88);
      v27();
      v43 = v5;
      (*v32)(v9, v5, v10);
      (*(v35 + 16))(v11, v13, v12);
      v14 = (v30 + *(v35 + 80)) & ~*(v35 + 80);
      v15 = (v29 + v14) & 0xFFFFFFFFFFFFFFF8;
      v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
      v17 = swift_allocObject();
      *(v17 + 16) = 0;
      *(v17 + 24) = 0;
      (*v28)(v17 + v33, v9, v10);
      (*(v35 + 32))(v17 + v14, v37, v36);
      *(v17 + v15) = v38;
      *(v17 + v16) = v40;
      *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v41;
      sub_2324CF3C4(v39, v42, &qword_27DD93630, &qword_232547550);
      LODWORD(v9) = (*v26)(v42, 1, v45);

      v18 = *(v0 + 184);
      if (v9 == 1)
      {
        sub_2324C28AC(*(v0 + 184), &qword_27DD93630, &qword_232547550);
      }

      else
      {
        sub_2325460E8();
        (*v25)(v18, v45);
      }

      if (*(v17 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v19 = sub_232546098();
        v21 = v20;
        swift_unknownObjectRelease();
      }

      else
      {
        v19 = 0;
        v21 = 0;
      }

      v22 = swift_allocObject();
      *(v22 + 16) = &unk_232548A70;
      *(v22 + 24) = v17;

      if (v21 | v19)
      {
        v7 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v19;
        *(v0 + 40) = v21;
      }

      else
      {
        v7 = 0;
      }

      v8 = *(v0 + 192);
      *(v0 + 48) = 1;
      *(v0 + 56) = v7;
      *(v0 + 64) = v34;
      swift_task_create();

      sub_2324C28AC(v8, &qword_27DD93630, &qword_232547550);
      v5 = v43 + v31;
      v2 = v44 - 1;
    }

    while (v44 != 1);
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_23252BDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  v9 = sub_2325460C8();
  v8[9] = v9;
  v8[10] = *(v9 - 8);
  v8[11] = swift_task_alloc();
  v10 = type metadata accessor for NDFDevice(0);
  v8[12] = v10;
  v8[13] = *(v10 - 8);
  v8[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93578, &unk_2325480F0);
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93648, &unk_232548928);
  v8[19] = swift_task_alloc();
  v11 = type metadata accessor for NDFDeviceEventInfo(0);
  v8[20] = v11;
  v8[21] = *(v11 - 8);
  v8[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23252BFDC, 0, 0);
}

uint64_t sub_23252BFDC(uint64_t a1)
{
  v26 = v1;
  v2 = 0xE90000000000003ELL;
  v3 = sub_232545B88();
  *(v1 + 184) = v4;
  *(v1 + 192) = v3;
  v5 = sub_232545B98();
  *(v1 + 200) = v6;
  *(v1 + 208) = v5;
  sub_232545638();
  if (v7 <= 0.0)
  {

    v8 = *(v1 + 8);

    return v8();
  }

  else
  {
    *(v1 + 216) = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore15NDFActorManager_logger;
    *(v1 + 224) = 1;
    sub_232546168();

    v10 = sub_232545888();
    v11 = sub_2325461D8();

    if (os_log_type_enabled(v10, v11))
    {
      v13 = *(v1 + 200);
      v14 = *(v1 + 184);
      if (v13)
      {
        v15 = *(v1 + 208);
      }

      else
      {
        v15 = 0x6E776F6E6B6E753CLL;
      }

      if (v13)
      {
        v16 = *(v1 + 200);
      }

      else
      {
        v16 = 0xE90000000000003ELL;
      }

      if (v14)
      {
        v17 = *(v1 + 192);
      }

      else
      {
        v17 = 0x6E776F6E6B6E753CLL;
      }

      if (v14)
      {
        v2 = *(v1 + 184);
      }

      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v25[0] = v19;
      *v18 = 136381187;
      *(v18 + 4) = sub_2324C2220(v17, v2, v25);
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_2324C2220(v15, v16, v25);
      *(v18 + 22) = 2048;
      *(v18 + 24) = 1;
      _os_log_impl(&dword_2324C0000, v10, v11, "Polling device state and events from <%{private}s: %s> [poll attempt: %ld]", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x238386450](v19, -1, -1);
      MEMORY[0x238386450](v18, -1, -1);
    }

    v20 = *(**(v1 + 48) + 352);
    v24 = (v20 + *v20);
    v21 = swift_task_alloc();
    *(v1 + 232) = v21;
    *v21 = v1;
    v21[1] = sub_23252C7C4;
    v22 = *(v1 + 152);
    v23 = *(v1 + 32);

    return v24(v22, v23);
  }
}

uint64_t sub_23252C7C4()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_23252EE5C;
  }

  else
  {
    v2 = sub_23252C8D8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23252C8D8()
{
  v53 = v0;
  v1 = 0xE90000000000003ELL;
  v2 = v0[20];
  v3 = v0[19];
  if ((*(v0[21] + 48))(v3, 1, v2) == 1)
  {
    sub_2324C28AC(v3, &qword_27DD93648, &unk_232548928);

    v4 = sub_232545888();
    v5 = sub_2325461F8();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[25];
      v7 = v0[23];
      if (v6)
      {
        v8 = v0[26];
      }

      else
      {
        v8 = 0x6E776F6E6B6E753CLL;
      }

      if (v6)
      {
        v9 = v0[25];
      }

      else
      {
        v9 = 0xE90000000000003ELL;
      }

      if (v7)
      {
        v10 = v0[24];
      }

      else
      {
        v10 = 0x6E776F6E6B6E753CLL;
      }

      if (v7)
      {
        v1 = v0[23];
      }

      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v52 = v12;
      *v11 = 136380931;
      *(v11 + 4) = sub_2324C2220(v10, v1, &v52);
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_2324C2220(v8, v9, &v52);
      _os_log_impl(&dword_2324C0000, v4, v5, "Failed to retrieve device info and active events from remote call to device <%{private}s: %s>", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x238386450](v12, -1, -1);
      MEMORY[0x238386450](v11, -1, -1);
    }

    v13 = swift_task_alloc();
    v0[37] = v13;
    *v13 = v0;
    v13[1] = sub_23252D940;
    v14 = v0[28];
    v15 = v0[5];

    return sub_23252F374(v15, v14);
  }

  else
  {
    v17 = v0[22];
    v19 = v0[17];
    v18 = v0[18];
    sub_232533060(v3, v17, type metadata accessor for NDFDeviceEventInfo);
    sub_2324CF3C4(v17, v18, &qword_27DD93578, &unk_2325480F0);
    v20 = *(v17 + *(v2 + 20));
    v0[31] = v20;
    sub_2324CF3C4(v18, v19, &qword_27DD93578, &unk_2325480F0);
    swift_bridgeObjectRetain_n();

    v21 = sub_232545888();
    v22 = sub_232546208();

    v23 = os_log_type_enabled(v21, v22);
    v24 = v0[17];
    if (v23)
    {
      v25 = v0[16];
      v26 = v0[12];
      v27 = v0[13];
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v0[3] = v29;
      *v28 = 136315651;
      sub_2324CF3C4(v24, v25, &qword_27DD93578, &unk_2325480F0);
      v30 = (*(v27 + 48))(v25, 1, v26);
      v31 = v0[16];
      if (v30 == 1)
      {
        sub_2324C28AC(v0[16], &qword_27DD93578, &unk_2325480F0);
        v32 = 0xE300000000000000;
        v33 = 7104878;
      }

      else
      {
        v33 = sub_2324F6270();
        v32 = v34;
        sub_2325330C8(v31, type metadata accessor for NDFDevice);
      }

      v35 = v0[23];
      if (v35)
      {
        v36 = v0[24];
      }

      else
      {
        v36 = 0x6E776F6E6B6E753CLL;
      }

      if (v35)
      {
        v37 = v0[23];
      }

      else
      {
        v37 = 0xE90000000000003ELL;
      }

      sub_2324C28AC(v0[17], &qword_27DD93578, &unk_2325480F0);
      v38 = sub_2324C2220(v33, v32, v0 + 3);

      *(v28 + 4) = v38;
      *(v28 + 12) = 2048;
      v39 = *(v20 + 16);

      *(v28 + 14) = v39;

      *(v28 + 22) = 2081;
      *(v28 + 24) = sub_2324C2220(v36, v37, v0 + 3);
      _os_log_impl(&dword_2324C0000, v21, v22, "Successfully retrieved device info %s and %ld active events from <%{private}s>", v28, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x238386450](v29, -1, -1);
      MEMORY[0x238386450](v28, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();

      sub_2324C28AC(v24, &qword_27DD93578, &unk_2325480F0);
    }

    v40 = v0[15];
    v41 = v0[12];
    v42 = v0[13];
    sub_2324CF3C4(v0[18], v40, &qword_27DD93578, &unk_2325480F0);
    v43 = (*(v42 + 48))(v40, 1, v41);
    v44 = v0[15];
    if (v43 == 1)
    {
      sub_2324C28AC(v44, &qword_27DD93578, &unk_2325480F0);
      v45 = v0[8];
      v0[33] = sub_232545B98();
      v0[34] = v46;
      v47 = (*v45 + 136) & 0xFFFFFFFFFFFFLL | 0xDF92000000000000;
      v0[35] = *(*v45 + 136);
      v0[36] = v47;

      return MEMORY[0x2822009F8](sub_23252D198, v45, 0);
    }

    else
    {
      v48 = v0[7];
      sub_232533060(v44, v0[14], type metadata accessor for NDFDevice);
      v51 = (*(*v48 + 496) + **(*v48 + 496));
      v49 = swift_task_alloc();
      v0[32] = v49;
      *v49 = v0;
      v49[1] = sub_23252CFF4;
      v50 = v0[14];

      return v51(v50);
    }
  }
}

uint64_t sub_23252CFF4()
{

  return MEMORY[0x2822009F8](sub_23252D0F0, 0, 0);
}

uint64_t sub_23252D0F0()
{
  sub_2325330C8(v0[14], type metadata accessor for NDFDevice);
  v1 = v0[8];
  v0[33] = sub_232545B98();
  v0[34] = v2;
  v3 = (*v1 + 136) & 0xFFFFFFFFFFFFLL | 0xDF92000000000000;
  v0[35] = *(*v1 + 136);
  v0[36] = v3;

  return MEMORY[0x2822009F8](sub_23252D198, v1, 0);
}

uint64_t sub_23252D198()
{
  (*(v0 + 280))(*(v0 + 248), *(v0 + 264), *(v0 + 272));

  return MEMORY[0x2822009F8](sub_23252D218, 0, 0);
}

uint64_t sub_23252D218(uint64_t a1)
{
  v49 = v1;
  v2 = 0xE90000000000003ELL;
  v3 = v1[30];
  sub_232546168();
  if (!v3)
  {

    v16 = sub_232545888();
    v17 = sub_2325461E8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = v1[25];
      v19 = v1[18];
      if (v18)
      {
        v20 = v1[25];
      }

      else
      {
        v20 = 0xE90000000000003ELL;
      }

      if (v18)
      {
        v21 = v1[26];
      }

      else
      {
        v21 = 0x6E776F6E6B6E753CLL;
      }

      if (v1[23])
      {
        v2 = v1[23];
        v22 = v1[24];
      }

      else
      {
        v22 = 0x6E776F6E6B6E753CLL;
      }

      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v48[0] = v24;
      *v23 = 136380931;
      v25 = sub_2324C2220(v22, v2, v48);

      *(v23 + 4) = v25;
      *(v23 + 12) = 2080;
      v26 = sub_2324C2220(v21, v20, v48);

      *(v23 + 14) = v26;
      _os_log_impl(&dword_2324C0000, v16, v17, "Finished polling and processing for device <%{private}s: %s>", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x238386450](v24, -1, -1);
      MEMORY[0x238386450](v23, -1, -1);
    }

    else
    {
      v19 = v1[18];
    }

    sub_2324C28AC(v19, &qword_27DD93578, &unk_2325480F0);
    sub_2325330C8(v1[22], type metadata accessor for NDFDeviceEventInfo);
    goto LABEL_44;
  }

  v4 = v1[22];
  sub_2324C28AC(v1[18], &qword_27DD93578, &unk_2325480F0);
  sub_2325330C8(v4, type metadata accessor for NDFDeviceEventInfo);
  v1[38] = v3;
  v1[2] = v3;
  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93690, &unk_232548400);
  if (swift_dynamicCast())
  {
    (*(v1[10] + 8))(v1[11], v1[9]);

    v6 = sub_232545888();
    v7 = sub_232546208();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v1[25];
      if (v8)
      {
        v9 = v1[25];
      }

      else
      {
        v9 = 0xE90000000000003ELL;
      }

      if (v8)
      {
        v10 = v1[26];
      }

      else
      {
        v10 = 0x6E776F6E6B6E753CLL;
      }

      if (v1[23])
      {
        v2 = v1[23];
        v11 = v1[24];
      }

      else
      {
        v11 = 0x6E776F6E6B6E753CLL;
      }

      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v48[0] = v13;
      *v12 = 136380931;
      v14 = sub_2324C2220(v11, v2, v48);

      *(v12 + 4) = v14;
      *(v12 + 12) = 2080;
      v15 = sub_2324C2220(v10, v9, v48);

      *(v12 + 14) = v15;
      _os_log_impl(&dword_2324C0000, v6, v7, "Polling Task cancelled for endpoint <%{private}s: %s>", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x238386450](v13, -1, -1);
      MEMORY[0x238386450](v12, -1, -1);
    }

    else
    {
    }

LABEL_44:

    v45 = v1[1];

    return v45();
  }

  v27 = v3;
  v28 = sub_232545888();
  v29 = sub_2325461F8();

  if (os_log_type_enabled(v28, v29))
  {
    v31 = v1[25];
    v30 = v1[26];
    v32 = v1[23];
    if (!v31)
    {
      v30 = 0x6E776F6E6B6E753CLL;
    }

    v47 = v30;
    if (v31)
    {
      v33 = v1[25];
    }

    else
    {
      v33 = 0xE90000000000003ELL;
    }

    v46 = v33;
    if (v32)
    {
      v34 = v1[24];
    }

    else
    {
      v34 = 0x6E776F6E6B6E753CLL;
    }

    if (v32)
    {
      v35 = v1[23];
    }

    else
    {
      v35 = 0xE90000000000003ELL;
    }

    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v48[0] = v38;
    *v36 = 136381187;
    *(v36 + 4) = sub_2324C2220(v34, v35, v48);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_2324C2220(v47, v46, v48);
    *(v36 + 22) = 2112;
    v39 = v3;
    v40 = _swift_stdlib_bridgeErrorToNSError();
    *(v36 + 24) = v40;
    *v37 = v40;
    _os_log_impl(&dword_2324C0000, v28, v29, "Failed to retrieve device info or events from <%{private}s: %s>: %@", v36, 0x20u);
    sub_2324C28AC(v37, &qword_27DD93218, &qword_232547360);
    MEMORY[0x238386450](v37, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x238386450](v38, -1, -1);
    MEMORY[0x238386450](v36, -1, -1);
  }

  v41 = swift_task_alloc();
  v1[39] = v41;
  *v41 = v1;
  v41[1] = sub_23252E3C0;
  v42 = v1[28];
  v43 = v1[5];

  return sub_23252F374(v43, v42);
}

uint64_t sub_23252D940(char a1)
{
  *(*v1 + 320) = a1;

  return MEMORY[0x2822009F8](sub_23252DA40, 0, 0);
}

void sub_23252DA40(uint64_t a1)
{
  v65 = v1;
  if ((*(v1 + 320) & 1) == 0)
  {
    v18 = 0xE90000000000003ELL;

    v19 = sub_232545888();
    v20 = sub_232546208();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v1 + 200);
      if (v21)
      {
        v22 = *(v1 + 200);
      }

      else
      {
        v22 = 0xE90000000000003ELL;
      }

      if (v21)
      {
        v23 = *(v1 + 208);
      }

      else
      {
        v23 = 0x6E776F6E6B6E753CLL;
      }

      if (*(v1 + 184))
      {
        v18 = *(v1 + 184);
        v24 = *(v1 + 192);
      }

      else
      {
        v24 = 0x6E776F6E6B6E753CLL;
      }

      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v64[0] = v26;
      *v25 = 136380931;
      v27 = sub_2324C2220(v24, v18, v64);

      *(v25 + 4) = v27;
      *(v25 + 12) = 2080;
      v28 = sub_2324C2220(v23, v22, v64);

      *(v25 + 14) = v28;
      _os_log_impl(&dword_2324C0000, v19, v20, "Aborting further polling attempts for endpoint <%{private}s: %s>", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x238386450](v26, -1, -1);
      MEMORY[0x238386450](v25, -1, -1);

      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v2 = *(v1 + 240);
  sub_232545638();
  if (v3 <= 0.0)
  {

    goto LABEL_30;
  }

  v4 = *(v1 + 224);
  v5 = v4 + 1;
  *(v1 + 224) = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
    return;
  }

  v6 = 0xE90000000000003ELL;
  sub_232546168();
  if (v2)
  {
    *(v1 + 304) = v2;
    *(v1 + 16) = v2;
    v7 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93690, &unk_232548400);
    if (swift_dynamicCast())
    {
      (*(*(v1 + 80) + 8))(*(v1 + 88), *(v1 + 72));

      v8 = sub_232545888();
      v9 = sub_232546208();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = *(v1 + 200);
        if (v10)
        {
          v11 = *(v1 + 200);
        }

        else
        {
          v11 = 0xE90000000000003ELL;
        }

        if (v10)
        {
          v12 = *(v1 + 208);
        }

        else
        {
          v12 = 0x6E776F6E6B6E753CLL;
        }

        if (*(v1 + 184))
        {
          v6 = *(v1 + 184);
          v13 = *(v1 + 192);
        }

        else
        {
          v13 = 0x6E776F6E6B6E753CLL;
        }

        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v64[0] = v15;
        *v14 = 136380931;
        v16 = sub_2324C2220(v13, v6, v64);

        *(v14 + 4) = v16;
        *(v14 + 12) = 2080;
        v17 = sub_2324C2220(v12, v11, v64);

        *(v14 + 14) = v17;
        _os_log_impl(&dword_2324C0000, v8, v9, "Polling Task cancelled for endpoint <%{private}s: %s>", v14, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x238386450](v15, -1, -1);
        MEMORY[0x238386450](v14, -1, -1);

        goto LABEL_31;
      }

LABEL_30:

LABEL_31:

      v29 = *(v1 + 8);

      v29();
      return;
    }

    v44 = v2;
    v45 = sub_232545888();
    v46 = sub_2325461F8();

    if (os_log_type_enabled(v45, v46))
    {
      v48 = *(v1 + 200);
      v47 = *(v1 + 208);
      v49 = *(v1 + 184);
      if (!v48)
      {
        v47 = 0x6E776F6E6B6E753CLL;
      }

      v63 = v47;
      if (v48)
      {
        v50 = *(v1 + 200);
      }

      else
      {
        v50 = 0xE90000000000003ELL;
      }

      v61 = v50;
      if (v49)
      {
        v51 = *(v1 + 192);
      }

      else
      {
        v51 = 0x6E776F6E6B6E753CLL;
      }

      if (v49)
      {
        v52 = *(v1 + 184);
      }

      else
      {
        v52 = 0xE90000000000003ELL;
      }

      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v64[0] = v55;
      *v53 = 136381187;
      *(v53 + 4) = sub_2324C2220(v51, v52, v64);
      *(v53 + 12) = 2080;
      *(v53 + 14) = sub_2324C2220(v63, v61, v64);
      *(v53 + 22) = 2112;
      v56 = v2;
      v57 = _swift_stdlib_bridgeErrorToNSError();
      *(v53 + 24) = v57;
      *v54 = v57;
      _os_log_impl(&dword_2324C0000, v45, v46, "Failed to retrieve device info or events from <%{private}s: %s>: %@", v53, 0x20u);
      sub_2324C28AC(v54, &qword_27DD93218, &qword_232547360);
      MEMORY[0x238386450](v54, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x238386450](v55, -1, -1);
      MEMORY[0x238386450](v53, -1, -1);
    }

    v58 = swift_task_alloc();
    *(v1 + 312) = v58;
    *v58 = v1;
    v58[1] = sub_23252E3C0;
    v59 = *(v1 + 224);
    v60 = *(v1 + 40);

    sub_23252F374(v60, v59);
  }

  else
  {

    v30 = sub_232545888();
    v31 = sub_2325461D8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = *(v1 + 200);
      v33 = *(v1 + 184);
      if (v32)
      {
        v34 = *(v1 + 208);
      }

      else
      {
        v34 = 0x6E776F6E6B6E753CLL;
      }

      if (v32)
      {
        v35 = *(v1 + 200);
      }

      else
      {
        v35 = 0xE90000000000003ELL;
      }

      if (v33)
      {
        v36 = *(v1 + 192);
      }

      else
      {
        v36 = 0x6E776F6E6B6E753CLL;
      }

      if (v33)
      {
        v37 = *(v1 + 184);
      }

      else
      {
        v37 = 0xE90000000000003ELL;
      }

      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v64[0] = v39;
      *v38 = 136381187;
      *(v38 + 4) = sub_2324C2220(v36, v37, v64);
      *(v38 + 12) = 2080;
      *(v38 + 14) = sub_2324C2220(v34, v35, v64);
      *(v38 + 22) = 2048;
      *(v38 + 24) = v5;
      _os_log_impl(&dword_2324C0000, v30, v31, "Polling device state and events from <%{private}s: %s> [poll attempt: %ld]", v38, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x238386450](v39, -1, -1);
      MEMORY[0x238386450](v38, -1, -1);
    }

    v40 = *(**(v1 + 48) + 352);
    v62 = (v40 + *v40);
    v41 = swift_task_alloc();
    *(v1 + 232) = v41;
    *v41 = v1;
    v41[1] = sub_23252C7C4;
    v42 = *(v1 + 152);
    v43 = *(v1 + 32);

    v62(v42, v43);
  }
}

uint64_t sub_23252E3C0(char a1)
{
  *(*v1 + 321) = a1;

  return MEMORY[0x2822009F8](sub_23252E4C0, 0, 0);
}

void sub_23252E4C0()
{
  v36 = v0;
  if (*(v0 + 321))
  {

    sub_232545638();
    if (v1 > 0.0)
    {
      v2 = *(v0 + 224);
      v3 = v2 + 1;
      *(v0 + 224) = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
      }

      else
      {
        sub_232546168();

        v19 = sub_232545888();
        v20 = sub_2325461D8();

        if (os_log_type_enabled(v19, v20))
        {
          v22 = *(v0 + 200);
          v23 = *(v0 + 184);
          if (v22)
          {
            v24 = *(v0 + 208);
          }

          else
          {
            v24 = 0x6E776F6E6B6E753CLL;
          }

          if (v22)
          {
            v25 = *(v0 + 200);
          }

          else
          {
            v25 = 0xE90000000000003ELL;
          }

          if (v23)
          {
            v26 = *(v0 + 192);
          }

          else
          {
            v26 = 0x6E776F6E6B6E753CLL;
          }

          if (v23)
          {
            v27 = *(v0 + 184);
          }

          else
          {
            v27 = 0xE90000000000003ELL;
          }

          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v35[0] = v29;
          *v28 = 136381187;
          *(v28 + 4) = sub_2324C2220(v26, v27, v35);
          *(v28 + 12) = 2080;
          *(v28 + 14) = sub_2324C2220(v24, v25, v35);
          *(v28 + 22) = 2048;
          *(v28 + 24) = v3;
          _os_log_impl(&dword_2324C0000, v19, v20, "Polling device state and events from <%{private}s: %s> [poll attempt: %ld]", v28, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x238386450](v29, -1, -1);
          MEMORY[0x238386450](v28, -1, -1);
        }

        v30 = *(**(v0 + 48) + 352);
        v34 = (v30 + *v30);
        v31 = swift_task_alloc();
        *(v0 + 232) = v31;
        *v31 = v0;
        v31[1] = sub_23252C7C4;
        v32 = *(v0 + 152);
        v33 = *(v0 + 32);

        v34(v32, v33);
      }

      return;
    }
  }

  else
  {

    v4 = sub_232545888();
    v5 = sub_232546208();

    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 304);
    if (v6)
    {
      v8 = *(v0 + 200);
      v9 = *(v0 + 184);
      if (v8)
      {
        v10 = *(v0 + 200);
      }

      else
      {
        v10 = 0xE90000000000003ELL;
      }

      if (v8)
      {
        v11 = *(v0 + 208);
      }

      else
      {
        v11 = 0x6E776F6E6B6E753CLL;
      }

      if (v9)
      {
        v12 = *(v0 + 184);
      }

      else
      {
        v12 = 0xE90000000000003ELL;
      }

      if (v9)
      {
        v13 = *(v0 + 192);
      }

      else
      {
        v13 = 0x6E776F6E6B6E753CLL;
      }

      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v35[0] = v15;
      *v14 = 136380931;
      v16 = sub_2324C2220(v13, v12, v35);

      *(v14 + 4) = v16;
      *(v14 + 12) = 2080;
      v17 = sub_2324C2220(v11, v10, v35);

      *(v14 + 14) = v17;
      _os_log_impl(&dword_2324C0000, v4, v5, "Aborting further polling attempts for endpoint <%{private}s: %s>", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x238386450](v15, -1, -1);
      MEMORY[0x238386450](v14, -1, -1);

      goto LABEL_22;
    }
  }

LABEL_22:

  v18 = *(v0 + 8);

  v18();
}

uint64_t sub_23252EE5C()
{
  v36 = v0;
  v1 = 0xE90000000000003ELL;
  v2 = v0[30];
  v0[2] = v2;
  v0[38] = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93690, &unk_232548400);
  if (swift_dynamicCast())
  {
    (*(v0[10] + 8))(v0[11], v0[9]);

    v4 = sub_232545888();
    v5 = sub_232546208();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[25];
      if (v6)
      {
        v7 = v0[25];
      }

      else
      {
        v7 = 0xE90000000000003ELL;
      }

      if (v6)
      {
        v8 = v0[26];
      }

      else
      {
        v8 = 0x6E776F6E6B6E753CLL;
      }

      if (v0[23])
      {
        v1 = v0[23];
        v9 = v0[24];
      }

      else
      {
        v9 = 0x6E776F6E6B6E753CLL;
      }

      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v35 = v11;
      *v10 = 136380931;
      v12 = sub_2324C2220(v9, v1, &v35);

      *(v10 + 4) = v12;
      *(v10 + 12) = 2080;
      v13 = sub_2324C2220(v8, v7, &v35);

      *(v10 + 14) = v13;
      _os_log_impl(&dword_2324C0000, v4, v5, "Polling Task cancelled for endpoint <%{private}s: %s>", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x238386450](v11, -1, -1);
      MEMORY[0x238386450](v10, -1, -1);
    }

    else
    {
    }

    v32 = v0[1];

    return v32();
  }

  else
  {

    v14 = v2;
    v15 = sub_232545888();
    v16 = sub_2325461F8();

    if (os_log_type_enabled(v15, v16))
    {
      v18 = v0[25];
      v17 = v0[26];
      v19 = v0[23];
      if (!v18)
      {
        v17 = 0x6E776F6E6B6E753CLL;
      }

      v34 = v17;
      if (v18)
      {
        v20 = v0[25];
      }

      else
      {
        v20 = 0xE90000000000003ELL;
      }

      v33 = v20;
      if (v19)
      {
        v21 = v0[24];
      }

      else
      {
        v21 = 0x6E776F6E6B6E753CLL;
      }

      if (v19)
      {
        v22 = v0[23];
      }

      else
      {
        v22 = 0xE90000000000003ELL;
      }

      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v35 = v25;
      *v23 = 136381187;
      *(v23 + 4) = sub_2324C2220(v21, v22, &v35);
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_2324C2220(v34, v33, &v35);
      *(v23 + 22) = 2112;
      v26 = v2;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 24) = v27;
      *v24 = v27;
      _os_log_impl(&dword_2324C0000, v15, v16, "Failed to retrieve device info or events from <%{private}s: %s>: %@", v23, 0x20u);
      sub_2324C28AC(v24, &qword_27DD93218, &qword_232547360);
      MEMORY[0x238386450](v24, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x238386450](v25, -1, -1);
      MEMORY[0x238386450](v23, -1, -1);
    }

    v28 = swift_task_alloc();
    v0[39] = v28;
    *v28 = v0;
    v28[1] = sub_23252E3C0;
    v29 = v0[28];
    v30 = v0[5];

    return sub_23252F374(v30, v29);
  }
}

uint64_t sub_23252F374(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_232545688();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_232546458();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23252F494, v2, 0);
}

uint64_t sub_23252F494()
{
  v1 = *(v0 + 24);
  v2 = *(**sub_2324C4D38() + 440);

  v4 = v2(v3);
  *(v0 + 88) = v4;

  v5 = v4 * v1;
  sub_232545638();
  *(v0 + 96) = v6;
  if (v5 >= v6)
  {
    (*(*(v0 + 48) + 16))(*(v0 + 56), *(v0 + 16), *(v0 + 40));
    v15 = sub_232545888();
    v16 = sub_2325461D8();
    v17 = os_log_type_enabled(v15, v16);
    v19 = *(v0 + 48);
    v18 = *(v0 + 56);
    v20 = *(v0 + 40);
    if (v17)
    {
      v21 = swift_slowAlloc();
      *v21 = 134218240;
      *(v21 + 4) = v5;
      *(v21 + 12) = 2048;
      sub_232545648();
      v23 = v22;
      (*(v19 + 8))(v18, v20);
      *(v21 + 14) = v23;
      _os_log_impl(&dword_2324C0000, v15, v16, "Notice: Sleeping %fs will exceed the next deadline of %f", v21, 0x16u);
      MEMORY[0x238386450](v21, -1, -1);
    }

    else
    {

      (*(v19 + 8))(v18, v20);
    }

    v24 = *(v0 + 8);
    v25 = *(v0 + 88) * *(v0 + 24) < *(v0 + 96);

    return v24(v25);
  }

  else
  {
    v7 = sub_232545888();
    v8 = sub_232546208();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = v5;
      _os_log_impl(&dword_2324C0000, v7, v8, "Sleeping for %fs to try again...", v9, 0xCu);
      MEMORY[0x238386450](v9, -1, -1);
    }

    v10 = sub_232546768();
    v12 = v11;
    sub_232546698();
    v13 = swift_task_alloc();
    *(v0 + 104) = v13;
    *v13 = v0;
    v13[1] = sub_23252F7E4;

    return sub_23251CB30(v10, v12, 0, 0, 1);
  }
}

uint64_t sub_23252F7E4()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *v1;

  v5 = *(v2 + 10);
  v6 = *(v2 + 9);
  v7 = *(v2 + 8);
  if (v0)
  {
    v8 = *(v3 + 4);

    (*(v6 + 8))(v5, v7);

    return MEMORY[0x2822009F8](sub_23252F9D4, v8, 0);
  }

  else
  {
    (*(v6 + 8))(v5, v7);

    v9 = *(v4 + 1);
    v10 = v3[11] * *(v3 + 3) < v3[12];

    return v9(v10);
  }
}

uint64_t sub_23252F9D4()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 88) * *(v0 + 24) < *(v0 + 96);

  return v1(v2);
}

char *sub_23252FA58()
{

  v1 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore15NDFActorManager_logger;
  v2 = sub_2325458A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_23252FAF8()
{

  v1 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore15NDFActorManager_logger;
  v2 = sub_2325458A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_23252FBA8(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93658, &unk_232548950);
  v2[6] = swift_task_alloc();
  v3 = sub_232545BA8();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23252FCA0, v1, 0);
}

uint64_t sub_23252FCA0(uint64_t a1, uint64_t a2)
{
  v23 = v2;
  v3 = v2[7];
  v4 = v2[8];
  v5 = v2[6];
  swift_unknownObjectRetain();
  sub_232545BB8();
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    sub_2324C28AC(v2[6], &qword_27DD93658, &unk_232548950);
    swift_unknownObjectRetain();
    v6 = sub_232545888();
    v7 = sub_2325461F8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = v2[4];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v22 = v10;
      *v9 = 136315138;
      v2[2] = v8;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93970, &qword_232548960);
      v11 = sub_232545F88();
      v13 = sub_2324C2220(v11, v12, &v22);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_2324C0000, v6, v7, "Failed to convert endpoint %s to NWEndpoint", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x238386450](v10, -1, -1);
      MEMORY[0x238386450](v9, -1, -1);
    }

    sub_232526CF4();
    swift_allocError();
    *v14 = 0;
    *(v14 + 8) = 1;
    swift_willThrow();

    v15 = v2[1];

    return v15();
  }

  else
  {
    v17 = v2[5];
    (*(v2[8] + 32))(v2[9], v2[6], v2[7]);
    v2[10] = type metadata accessor for NDFActor(0);
    sub_232545C78();
    v18 = sub_2324F5138();
    (*(*v17 + 296))(v18);
    sub_232545CE8();
    sub_232545CC8();
    v2[11] = sub_232533128(&unk_2814D5170, type metadata accessor for NDFActor, &unk_232548548);
    v19 = sub_232545758();
    v2[12] = v19;
    v20 = v19;

    v21 = swift_task_alloc();
    v2[13] = v21;
    *v21 = v2;
    v21[1] = sub_232530298;

    return sub_232530814(v20);
  }
}

uint64_t sub_232530298(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[14] = v2;

  v7 = v6[5];
  if (v2)
  {
    v8 = sub_232530584;
  }

  else
  {
    v6[15] = a2;
    v6[16] = a1;
    v8 = sub_2325303D8;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2325303D8(uint64_t a1)
{
  v2 = v1[15];
  v3 = v1[16];
  v4 = v1[9];
  v5 = v1[8];
  v11 = v1[7];
  v6 = sub_232545B88();
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v6 = 95;
    v8 = 0xE100000000000000;
  }

  MEMORY[0x2383855C0](v6, v8);

  MEMORY[0x2383855C0](572537376, 0xE400000000000000);

  MEMORY[0x2383855C0](v3, v2);

  MEMORY[0x2383855C0](15906, 0xE200000000000000);

  sub_232545C98();
  (*(v5 + 8))(v4, v11);

  v9 = v1[1];

  return v9(60, 0xE100000000000000);
}

uint64_t sub_232530584()
{
  v23 = v0;
  sub_232545C98();
  v1 = v0[14];

  swift_unknownObjectRetain();
  v2 = v1;
  v3 = sub_232545888();
  v4 = sub_2325461F8();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v20 = v0[7];
    v21 = v0[9];
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v7 = 136315394;
    v0[3] = v6;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93970, &qword_232548960);
    v10 = sub_232545F88();
    v12 = sub_2324C2220(v10, v11, &v22);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    v13 = v1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&dword_2324C0000, v3, v4, "Failed to ping actor at endpoint %s: %@", v7, 0x16u);
    sub_2324C28AC(v8, &qword_27DD93218, &qword_232547360);
    MEMORY[0x238386450](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x238386450](v9, -1, -1);
    MEMORY[0x238386450](v7, -1, -1);

    (*(v5 + 8))(v21, v20);
  }

  else
  {
    v16 = v0[8];
    v15 = v0[9];
    v17 = v0[7];

    (*(v16 + 8))(v15, v17);
  }

  v18 = v0[1];

  return v18(0, 0xE000000000000000);
}

uint64_t sub_232530814(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD93670, &qword_232548970);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = type metadata accessor for NDFActorRequestType(0);
  v2[11] = swift_task_alloc();
  type metadata accessor for NDFActorRequest(0);
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v2[13] = swift_task_alloc();
  v3 = sub_2325456F8();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2325309BC, v1, 0);
}

uint64_t sub_2325309BC()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v4 = sub_2324C1C94();
  swift_beginAccess();
  sub_2324CF3C4(v4, v3, &unk_27DD932E0, qword_2325472E0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2324C28AC(v0[13], &unk_27DD932E0, qword_2325472E0);
    v5 = sub_232545888();
    v6 = sub_2325461F8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2324C0000, v5, v6, "Failed to ping actor as IDS deviceID is nil", v7, 2u);
      MEMORY[0x238386450](v7, -1, -1);
    }

    sub_232526CF4();
    swift_allocError();
    *v8 = 1;
    *(v8 + 8) = 1;
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[16];
    v12 = v0[17];
    v13 = v0[14];
    v14 = v0[15];
    v15 = v0[12];
    v16 = v0[11];
    (*(v14 + 32))(v12, v0[13], v13);
    (*(v14 + 16))(v11, v12, v13);
    v17 = *sub_232520DDC();
    swift_storeEnumTagMultiPayload();
    sub_2325336D4(v11, v17, v16, v15);
    v18 = swift_task_alloc();
    v0[18] = v18;
    *v18 = v0;
    v18[1] = sub_232530CA0;
    v19 = v0[12];
    v20 = v0[9];
    v21 = MEMORY[0x277D837D0];

    return sub_232521A90(v20, v19, v21, &off_28478EBC8);
  }
}

uint64_t sub_232530CA0()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_23253113C;
  }

  else
  {
    v4 = sub_232530DCC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_232530DCC()
{
  v27 = v0;
  v1 = v0[9];
  v2 = (v1 + *(v0[7] + 40));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v4 = 0xED00003E65736E6FLL;
    v3 = 0x70736552206F4E3CLL;
  }

  sub_2324CF3C4(v1, v0[8], &unk_27DD93670, &qword_232548970);

  v5 = sub_232545888();
  v6 = sub_232546208();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[17];
  v9 = v0[14];
  v10 = v0[15];
  v11 = v0[8];
  v24 = v0[9];
  v25 = v0[12];
  if (v7)
  {
    v12 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v26 = v23;
    *v12 = 136315394;
    *(v12 + 4) = sub_2324C2220(v3, v4, &v26);
    *(v12 + 12) = 2080;
    sub_232533128(&qword_2814D62A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v21 = v9;
    v22 = v8;
    v13 = sub_232546608();
    v14 = v4;
    v15 = v3;
    v17 = v16;
    sub_2324C28AC(v11, &unk_27DD93670, &qword_232548970);
    v18 = sub_2324C2220(v13, v17, &v26);
    v3 = v15;
    v4 = v14;

    *(v12 + 14) = v18;
    _os_log_impl(&dword_2324C0000, v5, v6, "Received response %s from device %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v23, -1, -1);
    MEMORY[0x238386450](v12, -1, -1);

    sub_2324C28AC(v24, &unk_27DD93670, &qword_232548970);
    sub_2325330C8(v25, type metadata accessor for NDFActorRequest);
    (*(v10 + 8))(v22, v21);
  }

  else
  {

    sub_2324C28AC(v11, &unk_27DD93670, &qword_232548970);
    sub_2324C28AC(v24, &unk_27DD93670, &qword_232548970);
    sub_2325330C8(v25, type metadata accessor for NDFActorRequest);
    (*(v10 + 8))(v8, v9);
  }

  v19 = v0[1];

  return v19(v3, v4);
}

uint64_t sub_23253113C()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  sub_2325330C8(v0[12], type metadata accessor for NDFActorRequest);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_232531230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93658, &unk_232548950);
  v4[8] = swift_task_alloc();
  v5 = sub_232545BA8();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23253132C, v3, 0);
}

uint64_t sub_23253132C(uint64_t a1, uint64_t a2)
{
  v25 = v2;
  v3 = v2[9];
  v4 = v2[10];
  v5 = v2[8];
  swift_unknownObjectRetain();
  sub_232545BB8();
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    sub_2324C28AC(v2[8], &qword_27DD93658, &unk_232548950);
    swift_unknownObjectRetain();
    v6 = sub_232545888();
    v7 = sub_2325461F8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = v2[4];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v24 = v10;
      *v9 = 136315138;
      v2[2] = v8;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93970, &qword_232548960);
      v11 = sub_232545F88();
      v13 = sub_2324C2220(v11, v12, &v24);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_2324C0000, v6, v7, "Failed to convert endpoint %s to NWEndpoint", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x238386450](v10, -1, -1);
      MEMORY[0x238386450](v9, -1, -1);
    }

    sub_232526CF4();
    swift_allocError();
    *v14 = 0;
    *(v14 + 8) = 1;
    swift_willThrow();

    v15 = v2[1];

    return v15();
  }

  else
  {
    v17 = v2[7];
    (*(v2[10] + 32))(v2[11], v2[8], v2[9]);
    v2[12] = type metadata accessor for NDFActor(0);
    sub_232545C78();
    v18 = sub_2324F5138();
    (*(*v17 + 296))(v18);
    sub_232545CE8();
    sub_232545CC8();
    v2[13] = sub_232533128(&unk_2814D5170, type metadata accessor for NDFActor, &unk_232548548);
    v19 = sub_232545758();
    v2[14] = v19;
    v20 = v19;

    v21 = swift_task_alloc();
    v2[15] = v21;
    *v21 = v2;
    v21[1] = sub_23253196C;
    v22 = v2[6];
    v23 = v2[5];

    return sub_232531F34(v20, v23, v22);
  }
}

uint64_t sub_23253196C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[16] = v2;

  v7 = v6[7];
  if (v2)
  {
    v8 = sub_232531C58;
  }

  else
  {
    v6[17] = a2;
    v6[18] = a1;
    v8 = sub_232531AAC;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_232531AAC(uint64_t a1)
{
  v2 = v1[17];
  v3 = v1[18];
  v4 = v1[11];
  v5 = v1[10];
  v11 = v1[9];
  v6 = sub_232545B88();
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v6 = 95;
    v8 = 0xE100000000000000;
  }

  MEMORY[0x2383855C0](v6, v8);

  MEMORY[0x2383855C0](572537376, 0xE400000000000000);

  MEMORY[0x2383855C0](v3, v2);

  MEMORY[0x2383855C0](15906, 0xE200000000000000);

  sub_232545C98();
  (*(v5 + 8))(v4, v11);

  v9 = v1[1];

  return v9(60, 0xE100000000000000);
}

uint64_t sub_232531C58()
{
  v25 = v0;
  sub_232545C98();
  v1 = v0[16];

  swift_unknownObjectRetain();

  v2 = v1;
  v3 = sub_232545888();
  v4 = sub_2325461F8();

  swift_unknownObjectRelease();

  if (os_log_type_enabled(v3, v4))
  {
    v21 = v0[10];
    v22 = v0[9];
    v23 = v0[11];
    v5 = v0[5];
    v6 = v0[6];
    v7 = v0[4];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v8 = 136315650;
    *(v8 + 4) = sub_2324C2220(v5, v6, &v24);
    *(v8 + 12) = 2080;
    v0[3] = v7;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93970, &qword_232548960);
    v11 = sub_232545F88();
    v13 = sub_2324C2220(v11, v12, &v24);

    *(v8 + 14) = v13;
    *(v8 + 22) = 2112;
    v14 = v1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v15;
    *v9 = v15;
    _os_log_impl(&dword_2324C0000, v3, v4, "Failed to send message %s to actor at %s: %@", v8, 0x20u);
    sub_2324C28AC(v9, &qword_27DD93218, &qword_232547360);
    MEMORY[0x238386450](v9, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x238386450](v10, -1, -1);
    MEMORY[0x238386450](v8, -1, -1);

    (*(v21 + 8))(v23, v22);
  }

  else
  {
    v17 = v0[10];
    v16 = v0[11];
    v18 = v0[9];

    (*(v17 + 8))(v16, v18);
  }

  v19 = v0[1];

  return v19(0, 0xE000000000000000);
}

uint64_t sub_232531F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD93670, &qword_232548970);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = type metadata accessor for NDFActorRequestType(0);
  v4[13] = swift_task_alloc();
  type metadata accessor for NDFActorRequest(0);
  v4[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v4[15] = swift_task_alloc();
  v5 = sub_2325456F8();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2325320E0, v3, 0);
}

uint64_t sub_2325320E0()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = sub_2324C1C94();
  swift_beginAccess();
  sub_2324CF3C4(v4, v3, &unk_27DD932E0, qword_2325472E0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2324C28AC(v0[15], &unk_27DD932E0, qword_2325472E0);
    v5 = sub_232545888();
    v6 = sub_2325461F8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2324C0000, v5, v6, "Failed to message actor as IDS deviceID is nil", v7, 2u);
      MEMORY[0x238386450](v7, -1, -1);
    }

    sub_232526CF4();
    swift_allocError();
    *v8 = 1;
    *(v8 + 8) = 1;
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[18];
    v12 = v0[19];
    v13 = v0[16];
    v14 = v0[17];
    v15 = v0[14];
    v16 = v0[13];
    v18 = v0[6];
    v17 = v0[7];
    (*(v14 + 32))(v12, v0[15], v13);
    (*(v14 + 16))(v11, v12, v13);
    v19 = *sub_232520DDC();
    *v16 = v18;
    v16[1] = v17;
    swift_storeEnumTagMultiPayload();

    sub_2325336D4(v11, v19, v16, v15);
    v20 = swift_task_alloc();
    v0[20] = v20;
    *v20 = v0;
    v20[1] = sub_2325323E0;
    v21 = v0[14];
    v22 = v0[11];
    v23 = MEMORY[0x277D837D0];

    return sub_232521A90(v22, v21, v23, &off_28478EBC8);
  }
}

uint64_t sub_2325323E0()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = sub_23253287C;
  }

  else
  {
    v4 = sub_23253250C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23253250C()
{
  v27 = v0;
  v1 = v0[11];
  v2 = (v1 + *(v0[9] + 40));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v4 = 0xED00003E65736E6FLL;
    v3 = 0x70736552206F4E3CLL;
  }

  sub_2324CF3C4(v1, v0[10], &unk_27DD93670, &qword_232548970);

  v5 = sub_232545888();
  v6 = sub_232546208();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[19];
  v9 = v0[16];
  v10 = v0[17];
  v11 = v0[10];
  v24 = v0[11];
  v25 = v0[14];
  if (v7)
  {
    v12 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v26 = v23;
    *v12 = 136315394;
    *(v12 + 4) = sub_2324C2220(v3, v4, &v26);
    *(v12 + 12) = 2080;
    sub_232533128(&qword_2814D62A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v21 = v9;
    v22 = v8;
    v13 = sub_232546608();
    v14 = v4;
    v15 = v3;
    v17 = v16;
    sub_2324C28AC(v11, &unk_27DD93670, &qword_232548970);
    v18 = sub_2324C2220(v13, v17, &v26);
    v3 = v15;
    v4 = v14;

    *(v12 + 14) = v18;
    _os_log_impl(&dword_2324C0000, v5, v6, "Received response %s from device %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v23, -1, -1);
    MEMORY[0x238386450](v12, -1, -1);

    sub_2324C28AC(v24, &unk_27DD93670, &qword_232548970);
    sub_2325330C8(v25, type metadata accessor for NDFActorRequest);
    (*(v10 + 8))(v22, v21);
  }

  else
  {

    sub_2324C28AC(v11, &unk_27DD93670, &qword_232548970);
    sub_2324C28AC(v24, &unk_27DD93670, &qword_232548970);
    sub_2325330C8(v25, type metadata accessor for NDFActorRequest);
    (*(v10 + 8))(v8, v9);
  }

  v19 = v0[1];

  return v19(v3, v4);
}

uint64_t sub_23253287C()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  sub_2325330C8(v0[14], type metadata accessor for NDFActorRequest);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_232532970(uint64_t a1)
{
  type metadata accessor for NDFActor(0);
  sub_232533128(&unk_2814D5170, type metadata accessor for NDFActor, &unk_232548548);
  return sub_232545C98();
}

uint64_t sub_2325329F8()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_232546458();
  v5 = sub_232533128(&qword_27DD935A0, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_232546678();
  sub_232533128(&unk_27DD93680, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_232546468();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_23251CDC0;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_232532BA8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2324C290C;

  return sub_232529454(v3, v4, v5, v2);
}

uint64_t type metadata accessor for NDFActorManager(uint64_t a1)
{
  result = qword_2814D6E30;
  if (!qword_2814D6E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_232532C88(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_2324C2910;

  return sub_23252B7EC(v10, a2, v5, v6, v7, v8, v9);
}

uint64_t sub_232532D54(uint64_t a1)
{
  result = sub_2325458A8();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_232532E24()
{
  v2 = *(sub_232545BA8() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_232545688() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + v7);
  v10 = *(v0 + v8);
  v11 = *(v0 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_2324C290C;

  return sub_23252BDC8(v12, v13, v14, v0 + v3, v0 + v6, v9, v10, v11);
}

uint64_t sub_232532FA8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2324C2910;

  return sub_2324CDEA8(a1, v4);
}

uint64_t sub_232533060(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2325330C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_232533128(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_232533170()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2324C290C;

  return sub_2325290E0(v4, v5, v6, v2, v3);
}

uint64_t sub_2325332DC()
{
  v1 = 0x696C696261706163;
  if (*v0 != 1)
  {
    v1 = 0x5474736575716572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4449656369766564;
  }
}

uint64_t sub_232533344@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23253A240(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_232533378(uint64_t a1)
{
  v2 = sub_232533638();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2325333B4(uint64_t a1)
{
  v2 = sub_232533638();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2325333F0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93698, &qword_232548AB0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_232533638();
  sub_232546758();
  v12 = 0;
  sub_2325456F8();
  sub_23253368C(&qword_27DD93530, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_2325465E8();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for NDFActorRequest(0) + 20));
    v10[15] = 1;
    sub_232526954();
    sub_2325465E8();
    v10[14] = 2;
    type metadata accessor for NDFActorRequestType(0);
    sub_23253368C(&qword_27DD936A0, type metadata accessor for NDFActorRequestType, &unk_232548C90);
    sub_2325465E8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_232533638()
{
  result = qword_27DD94820;
  if (!qword_27DD94820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD94820);
  }

  return result;
}

uint64_t sub_23253368C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2325336D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_2325456F8();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for NDFActorRequest(0);
  *(a4 + *(v9 + 20)) = a2;
  return sub_232534D04(a3, a4 + *(v9 + 24), type metadata accessor for NDFActorRequestType);
}

uint64_t sub_232533778@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v20 = type metadata accessor for NDFActorRequestType(0);
  MEMORY[0x28223BE20](v20);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2325456F8();
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v23 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD936A8, &qword_232548AB8);
  v21 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v8 = &v17 - v7;
  v9 = type metadata accessor for NDFActorRequest(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_232533638();
  sub_232546748();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v12 = v21;
  v13 = v22;
  v17 = v11;
  v18 = a1;
  v29 = 0;
  sub_23253368C(&qword_27DD93558, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v14 = v23;
  sub_232546548();
  (*(v13 + 32))(v17, v14, v24);
  v28 = 1;
  sub_232526900();
  sub_232546548();
  v15 = v17;
  *&v17[*(v9 + 20)] = v26;
  v27 = 2;
  sub_23253368C(&qword_27DD936B0, type metadata accessor for NDFActorRequestType, &unk_232548C68);
  sub_232546548();
  (*(v12 + 8))(v8, v25);
  sub_232534D04(v5, v15 + *(v9 + 24), type metadata accessor for NDFActorRequestType);
  sub_232533BD4(v15, v19, type metadata accessor for NDFActorRequest);
  __swift_destroy_boxed_opaque_existential_0(v18);
  return sub_232534DC0(v15, type metadata accessor for NDFActorRequest);
}

uint64_t sub_232533BD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_232533C6C()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x6567617373656DLL;
    if (v1 != 1)
    {
      v5 = 0x7055656369766564;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 1735289200;
    }
  }

  else
  {
    v2 = 0xD000000000000010;
    if (v1 != 5)
    {
      v2 = 0xD00000000000001FLL;
    }

    v3 = 0x6E65764565746F6ELL;
    if (v1 != 3)
    {
      v3 = 0xD000000000000010;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_232533D54@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23253A364(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_232533D88(uint64_t a1)
{
  v2 = sub_232534BB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232533DC4(uint64_t a1)
{
  v2 = sub_232534BB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232533E0C(uint64_t a1)
{
  v2 = sub_232534E20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232533E48(uint64_t a1)
{
  v2 = sub_232534E20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232533E90(uint64_t a1)
{
  v2 = sub_232534E74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232533ECC(uint64_t a1)
{
  v2 = sub_232534E74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232533F08(uint64_t a1)
{
  v2 = sub_232534D6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232533F44(uint64_t a1)
{
  v2 = sub_232534D6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232533F8C@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_232533FBC(uint64_t a1)
{
  v2 = sub_232534EC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232533FF8(uint64_t a1)
{
  v2 = sub_232534EC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232534034(uint64_t a1)
{
  v2 = sub_232534CB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232534070(uint64_t a1)
{
  v2 = sub_232534CB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2325340AC(uint64_t a1)
{
  v2 = sub_232534C08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2325340E8(uint64_t a1)
{
  v2 = sub_232534C08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232534124(uint64_t a1)
{
  v2 = sub_232534C5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232534160(uint64_t a1)
{
  v2 = sub_232534C5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23253419C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD936B8, &qword_232548AC0);
  v60 = *(v2 - 8);
  v61 = v2;
  MEMORY[0x28223BE20](v2);
  v59 = &v48 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD936C0, &qword_232548AC8);
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x28223BE20](v4);
  v56 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD936C8, &qword_232548AD0);
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x28223BE20](v6);
  v53 = &v48 - v7;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD936D0, &qword_232548AD8);
  v52 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = &v48 - v8;
  v67 = type metadata accessor for NDFEvent(0);
  MEMORY[0x28223BE20](v67);
  v66 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD936D8, &qword_232548AE0);
  v51 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v64 = &v48 - v10;
  v50 = type metadata accessor for NDFDevice(0);
  MEMORY[0x28223BE20](v50);
  v63 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD936E0, &qword_232548AE8);
  v62 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v48 - v13;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD936E8, &qword_232548AF0);
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v16 = &v48 - v15;
  v17 = type metadata accessor for NDFActorRequestType(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD936F0, &qword_232548AF8);
  v72 = *(v20 - 8);
  v73 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v48 - v21;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_232534BB4();
  v71 = v22;
  sub_232546758();
  sub_232533BD4(v70, v19, type metadata accessor for NDFActorRequestType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v28 = v62;
    v29 = v12;
    v31 = v64;
    v30 = v65;
    v32 = v68;
    v33 = v69;
    if (!EnumCaseMultiPayload)
    {
      v75 = 1;
      sub_232534E74();
      v24 = v73;
      v44 = v71;
      sub_232546578();
      sub_2325465C8();

      (*(v28 + 8))(v14, v29);
      v26 = *(v72 + 8);
      v27 = v44;
      goto LABEL_11;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v34 = v63;
      sub_232534D04(v19, v63, type metadata accessor for NDFDevice);
      v76 = 2;
      sub_232534E20();
      v35 = v31;
      v36 = v73;
      v37 = v71;
      sub_232546578();
      sub_23253368C(&qword_27DD936F8, type metadata accessor for NDFDevice, &unk_232547F50);
      sub_2325465E8();
      (*(v51 + 8))(v35, v30);
      sub_232534DC0(v34, type metadata accessor for NDFDevice);
      return (*(v72 + 8))(v37, v36);
    }

    v46 = v66;
    sub_232534D04(v19, v66, type metadata accessor for NDFEvent);
    v77 = 3;
    sub_232534D6C();
    v40 = v73;
    v47 = v71;
    sub_232546578();
    sub_23253368C(qword_2814D5080, type metadata accessor for NDFEvent, &unk_232548FE0);
    sub_2325465E8();
    (*(v52 + 8))(v32, v33);
    sub_232534DC0(v46, type metadata accessor for NDFEvent);
    v26 = *(v72 + 8);
    v27 = v47;
LABEL_16:
    v45 = v40;
    return v26(v27, v45);
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v79 = 5;
      sub_232534C5C();
      v39 = v56;
      v40 = v73;
      v41 = v71;
      sub_232546578();
      v43 = v57;
      v42 = v58;
    }

    else
    {
      v80 = 6;
      sub_232534C08();
      v39 = v59;
      v40 = v73;
      v41 = v71;
      sub_232546578();
      v43 = v60;
      v42 = v61;
    }

    goto LABEL_15;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v78 = 4;
    sub_232534CB0();
    v39 = v53;
    v40 = v73;
    v41 = v71;
    sub_232546578();
    v43 = v54;
    v42 = v55;
LABEL_15:
    (*(v43 + 8))(v39, v42);
    v26 = *(v72 + 8);
    v27 = v41;
    goto LABEL_16;
  }

  v74 = 0;
  sub_232534EC8();
  v24 = v73;
  v25 = v71;
  sub_232546578();
  (*(v48 + 8))(v16, v49);
  v26 = *(v72 + 8);
  v27 = v25;
LABEL_11:
  v45 = v24;
  return v26(v27, v45);
}

unint64_t sub_232534BB4()
{
  result = qword_27DD94828;
  if (!qword_27DD94828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD94828);
  }

  return result;
}

unint64_t sub_232534C08()
{
  result = qword_27DD94830;
  if (!qword_27DD94830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD94830);
  }

  return result;
}

unint64_t sub_232534C5C()
{
  result = qword_27DD94838;
  if (!qword_27DD94838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD94838);
  }

  return result;
}

unint64_t sub_232534CB0()
{
  result = qword_27DD94840;
  if (!qword_27DD94840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD94840);
  }

  return result;
}

uint64_t sub_232534D04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_232534D6C()
{
  result = qword_27DD94848;
  if (!qword_27DD94848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD94848);
  }

  return result;
}

uint64_t sub_232534DC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_232534E20()
{
  result = qword_27DD94850;
  if (!qword_27DD94850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD94850);
  }

  return result;
}

unint64_t sub_232534E74()
{
  result = qword_27DD94858;
  if (!qword_27DD94858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD94858);
  }

  return result;
}

unint64_t sub_232534EC8()
{
  result = qword_27DD94860;
  if (!qword_27DD94860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD94860);
  }

  return result;
}

uint64_t sub_232534F1C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93700, &qword_232548B00);
  v87 = *(v3 - 8);
  v88 = v3;
  MEMORY[0x28223BE20](v3);
  v97 = &v70 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93708, &qword_232548B08);
  v85 = *(v5 - 8);
  v86 = v5;
  MEMORY[0x28223BE20](v5);
  v96 = &v70 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93710, &qword_232548B10);
  v81 = *(v7 - 8);
  v82 = v7;
  MEMORY[0x28223BE20](v7);
  v91 = &v70 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93718, &qword_232548B18);
  v83 = *(v9 - 8);
  v84 = v9;
  MEMORY[0x28223BE20](v9);
  v95 = &v70 - v10;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93720, &qword_232548B20);
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v90 = &v70 - v11;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93728, &qword_232548B28);
  v78 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v89 = &v70 - v12;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93730, &qword_232548B30);
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v94 = &v70 - v13;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93738, &qword_232548B38);
  v93 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v15 = &v70 - v14;
  v16 = type metadata accessor for NDFActorRequestType(0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v70 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = (&v70 - v24);
  MEMORY[0x28223BE20](v23);
  v27 = &v70 - v26;
  v28 = a1[3];
  v99 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v28);
  sub_232534BB4();
  v29 = v100;
  sub_232546748();
  if (v29)
  {
    goto LABEL_24;
  }

  v70 = v25;
  v30 = v94;
  v71 = v22;
  v72 = v19;
  v31 = v95;
  v74 = 0;
  v33 = v96;
  v32 = v97;
  v100 = v16;
  v73 = v27;
  v34 = v98;
  v35 = sub_232546558();
  if (*(v35 + 16) == 1)
  {
    v36 = *(v35 + 32);
    if (v36 != 7)
    {
      if (*(v35 + 32) > 2u)
      {
        if (*(v35 + 32) <= 4u)
        {
          v37 = v92;
          if (v36 == 3)
          {
            v104 = 3;
            sub_232534D6C();
            v38 = v31;
            v39 = v74;
            sub_2325464C8();
            v40 = v93;
            if (!v39)
            {
              type metadata accessor for NDFEvent(0);
              sub_23253368C(&qword_2814D5078, type metadata accessor for NDFEvent, &unk_232548FB8);
              v41 = v84;
              sub_232546548();
              (*(v83 + 8))(v38, v41);
              (*(v40 + 8))(v15, v98);
              swift_unknownObjectRelease();
              v68 = v72;
              swift_storeEnumTagMultiPayload();
              v69 = v73;
              sub_232534D04(v68, v73, type metadata accessor for NDFActorRequestType);
LABEL_36:
              v67 = v99;
              goto LABEL_37;
            }
          }

          else
          {
            v105 = 4;
            sub_232534CB0();
            v53 = v91;
            v54 = v74;
            sub_2325464C8();
            v40 = v93;
            if (!v54)
            {
              (*(v81 + 8))(v53, v82);
              (*(v40 + 8))(v15, v34);
              swift_unknownObjectRelease();
              v69 = v73;
              swift_storeEnumTagMultiPayload();
              goto LABEL_36;
            }
          }

          goto LABEL_22;
        }

        v37 = v92;
        v48 = v15;
        if (v36 == 5)
        {
          v106 = 5;
          sub_232534C5C();
          v50 = v74;
          sub_2325464C8();
          v49 = v93;
          if (!v50)
          {
            (*(v85 + 8))(v33, v86);
            (*(v49 + 8))(v15, v34);
            swift_unknownObjectRelease();
            v69 = v73;
            swift_storeEnumTagMultiPayload();
            goto LABEL_36;
          }

          goto LABEL_16;
        }

        v107 = 6;
        sub_232534C08();
        v57 = v74;
        sub_2325464C8();
        v58 = v93;
        if (!v57)
        {
          (*(v87 + 8))(v32, v88);
          (*(v58 + 8))(v15, v34);
          swift_unknownObjectRelease();
          v69 = v73;
          swift_storeEnumTagMultiPayload();
          goto LABEL_36;
        }

LABEL_27:
        (*(v93 + 8))(v15, v34);
        goto LABEL_23;
      }

      if (*(v35 + 32))
      {
        v46 = v74;
        if (v36 == 1)
        {
          v102 = 1;
          sub_232534E74();
          v47 = v89;
          v48 = v15;
          sub_2325464C8();
          if (v46)
          {
            v49 = v93;
LABEL_16:
            (*(v49 + 8))(v48, v34);
            goto LABEL_23;
          }

          v59 = v75;
          v62 = sub_232546528();
          v64 = v63;
          (*(v78 + 8))(v47, v59);
          (*(v93 + 8))(v15, v34);
          swift_unknownObjectRelease();
          v65 = v70;
          *v70 = v62;
          v65[1] = v64;
          swift_storeEnumTagMultiPayload();
          v66 = v65;
        }

        else
        {
          v103 = 2;
          sub_232534E20();
          v52 = v90;
          sub_2325464C8();
          if (v46)
          {
            goto LABEL_27;
          }

          type metadata accessor for NDFDevice(0);
          sub_23253368C(&qword_27DD93748, type metadata accessor for NDFDevice, &unk_232547F28);
          v60 = v71;
          v61 = v80;
          sub_232546548();
          (*(v79 + 8))(v52, v61);
          (*(v93 + 8))(v15, v34);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v66 = v60;
        }

        v69 = v73;
        sub_232534D04(v66, v73, type metadata accessor for NDFActorRequestType);
      }

      else
      {
        v101 = 0;
        sub_232534EC8();
        v51 = v74;
        sub_2325464C8();
        if (v51)
        {
          v40 = v93;
LABEL_22:
          (*(v40 + 8))(v15, v34);
          goto LABEL_23;
        }

        (*(v76 + 8))(v30, v77);
        (*(v93 + 8))(v15, v34);
        swift_unknownObjectRelease();
        v69 = v73;
        swift_storeEnumTagMultiPayload();
      }

      v67 = v99;
      v37 = v92;
LABEL_37:
      sub_232534D04(v69, v37, type metadata accessor for NDFActorRequestType);
      v55 = v67;
      return __swift_destroy_boxed_opaque_existential_0(v55);
    }
  }

  v42 = v34;
  v43 = sub_232546418();
  swift_allocError();
  v45 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93740, &qword_232548B40);
  *v45 = v100;
  sub_2325464D8();
  sub_232546408();
  (*(*(v43 - 8) + 104))(v45, *MEMORY[0x277D84160], v43);
  swift_willThrow();
  (*(v93 + 8))(v15, v42);
LABEL_23:
  swift_unknownObjectRelease();
LABEL_24:
  v55 = v99;
  return __swift_destroy_boxed_opaque_existential_0(v55);
}

uint64_t sub_232535D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_232546318();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_232535DC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656369766564 && a2 == 0xE800000000000000;
  if (v4 || (sub_232546628() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696C696261706163 && a2 == 0xEA00000000007974 || (sub_232546628() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xEC00000061746144)
  {

    return 2;
  }

  else
  {
    v6 = sub_232546628();

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

uint64_t sub_232535F24(unsigned __int8 a1)
{
  sub_2325466F8();
  MEMORY[0x238385CF0](a1);
  return sub_232546738();
}

uint64_t sub_232535F6C(char a1)
{
  if (!a1)
  {
    return 0x4449656369766564;
  }

  if (a1 == 1)
  {
    return 0x696C696261706163;
  }

  return 0x65736E6F70736572;
}

uint64_t sub_232535FEC(uint64_t a1)
{
  sub_2325466F8();
  sub_232535EFC(v3, *v1);
  return sub_232546738();
}

uint64_t sub_232536034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_232535DC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23253605C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2325360B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_232536104(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a2;
  v5 = v4;
  v7 = *(a2 + 16);
  v15 = *(a2 + 24);
  v16 = v7;
  type metadata accessor for NDFActorResponse.CodingKeys(255, v7, v15, a4);
  swift_getWitnessTable();
  v8 = sub_2325465F8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_232546758();
  v22 = 0;
  sub_2325456F8();
  sub_23253368C(&qword_27DD93530, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  v12 = v18;
  sub_2325465E8();
  if (!v12)
  {
    v19 = *(v5 + *(v17 + 36));
    v21 = 1;
    sub_232526954();
    sub_2325465E8();
    v20 = 2;
    sub_2325465A8();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_232536358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_2325456F8();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  v14 = type metadata accessor for NDFActorResponse(0, a4, a5, v13);
  *(a6 + *(v14 + 36)) = a2;
  v15 = *(v14 + 40);
  v16 = sub_232546318();
  v17 = *(*(v16 - 8) + 32);

  return v17(a6 + v15, a3, v16);
}

uint64_t sub_232536458@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a4;
  v7 = sub_232546318();
  v28 = *(v7 - 8);
  v29 = v7;
  MEMORY[0x28223BE20](v7);
  v31 = v26 - v8;
  v36 = sub_2325456F8();
  v33 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v34 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NDFActorResponse.CodingKeys(255, a2, a3, v10);
  swift_getWitnessTable();
  v37 = sub_232546568();
  v32 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v12 = v26 - v11;
  v35 = a3;
  v14 = type metadata accessor for NDFActorResponse(0, a2, a3, v13);
  v27 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v26 - v15;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v38 = v12;
  v17 = v39;
  sub_232546748();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v19 = v32;
  v18 = v33;
  v26[1] = a2;
  v39 = v16;
  v43 = 0;
  sub_23253368C(&qword_27DD93558, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v20 = v34;
  sub_232546548();
  (*(v18 + 32))(v39, v20, v36);
  v42 = 1;
  sub_232526900();
  sub_232546548();
  v21 = v14;
  *&v39[*(v14 + 36)] = v40;
  v41 = 2;
  v22 = v31;
  sub_232546508();
  (*(v19 + 8))(v38, v37);
  v23 = v39;
  (*(v28 + 32))(&v39[*(v21 + 40)], v22, v29);
  v24 = v27;
  (*(v27 + 16))(v30, v23, v21);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return (*(v24 + 8))(v23, v21);
}

BOOL sub_232536950(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 == 1)
      {
        return 1;
      }
    }

    else if (a1 > 1)
    {
      if (a1 == 2)
      {
        if (a4 == 2 && a3 == 2)
        {
          return 1;
        }
      }

      else if (a4 == 2 && a3 == 3)
      {
        return 1;
      }
    }

    else if (a1)
    {
      if (a4 == 2 && a3 == 1)
      {
        return 1;
      }
    }

    else if (a4 == 2 && !a3)
    {
      return 1;
    }

    return 0;
  }

  return !a4;
}

unint64_t sub_2325369E4(uint64_t a1, char a2)
{
  if (!a2)
  {
    return 0xD000000000000018;
  }

  if (a2 == 1)
  {
    return 0xD000000000000011;
  }

  v3 = 0x74656E7265746E49;
  if (a1 != 2)
  {
    v3 = 0xD000000000000014;
  }

  v4 = 0xD000000000000015;
  if (a1)
  {
    v4 = 0xD000000000000010;
  }

  if (a1 <= 1)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_232536ACC(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_232536B14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x800000023254D060 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_232546628();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_232536BA8(uint64_t a1)
{
  v2 = sub_232536DA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232536BE4(uint64_t a1)
{
  v2 = sub_232536DA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232536C20(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93750, &unk_232548B48);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_232536DA0();
  sub_232546758();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93210, &qword_232547A00);
  sub_2324FB390(&qword_27DD93548, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_2325465A8();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_232536DA0()
{
  result = qword_27DD94868;
  if (!qword_27DD94868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD94868);
  }

  return result;
}

void *sub_232536E0C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_23253A5C4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_232536EBC()
{
  v1 = 0x414E656C62756F64;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7774654E656D6173;
  }
}

uint64_t sub_232536F28@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23253A7C0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_232536F50(uint64_t a1)
{
  v2 = sub_23253A76C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232536F8C(uint64_t a1)
{
  v2 = sub_23253A76C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232536FC8(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93758, &qword_232548B58);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23253A76C();
  sub_232546758();
  v9[15] = 0;
  sub_232546598();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v9[14] = 1;
  sub_232546598();
  v9[13] = 2;
  sub_232546598();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2325371A8@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_23253A8EC(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 2) = BYTE2(result);
  }

  return result;
}

unint64_t sub_232537208()
{
  v1 = *v0;
  v2 = 0x6576726553736E64;
  v3 = 0xD000000000000016;
  v4 = 0x74656E7265746E69;
  if (v1 != 4)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000017;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000013;
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

uint64_t sub_2325372EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23253ADB0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_232537320(uint64_t a1)
{
  v2 = sub_23253AABC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23253735C(uint64_t a1)
{
  v2 = sub_23253AABC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232537398(uint64_t a1)
{
  v2 = sub_23253ABB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2325373D4(uint64_t a1)
{
  v2 = sub_23253ABB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232537410(uint64_t a1)
{
  v2 = sub_23253AC0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23253744C(uint64_t a1)
{
  v2 = sub_23253AC0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232537488(uint64_t a1)
{
  v2 = sub_23253AB64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2325374C4(uint64_t a1)
{
  v2 = sub_23253AB64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232537500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_232546628();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_232537580(uint64_t a1)
{
  v2 = sub_23253ACB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2325375BC(uint64_t a1)
{
  v2 = sub_23253ACB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2325375F8(uint64_t a1)
{
  v2 = sub_23253AD5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232537634(uint64_t a1)
{
  v2 = sub_23253AD5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232537670(uint64_t a1)
{
  v2 = sub_23253AB10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2325376AC(uint64_t a1)
{
  v2 = sub_23253AB10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2325376E8(void *a1, uint64_t a2, int a3)
{
  v43 = a3;
  v44 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93760, &qword_232548B60);
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93768, &qword_232548B68);
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x28223BE20](v6);
  v34 = &v30 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93770, &qword_232548B70);
  v32 = *(v8 - 8);
  v33 = v8;
  MEMORY[0x28223BE20](v8);
  v31 = &v30 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93778, &qword_232548B78);
  v41 = *(v10 - 8);
  v42 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93780, &qword_232548B80);
  v40 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93788, &qword_232548B88);
  v30 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v30 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93790, &unk_232548B90);
  v45 = *(v19 - 8);
  v46 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v30 - v20;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23253AABC();
  sub_232546758();
  if (!v43)
  {
    LOBYTE(v47) = 1;
    sub_23253ACB4();
    v25 = v46;
    sub_232546578();
    BYTE2(v47) = BYTE2(v44);
    LOWORD(v47) = v44;
    sub_23253AD08();
    sub_2325465A8();
    (*(v40 + 8))(v15, v13);
    return (*(v45 + 8))(v21, v25);
  }

  if (v43 == 1)
  {
    LOBYTE(v47) = 2;
    sub_23253AC0C();
    v22 = v46;
    sub_232546578();
    v47 = v44;
    sub_23253AC60();
    v23 = v42;
    sub_2325465A8();
    (*(v41 + 8))(v12, v23);
    return (*(v45 + 8))(v21, v22);
  }

  if (v44 > 1)
  {
    if (v44 == 2)
    {
      LOBYTE(v47) = 4;
      sub_23253AB64();
      v27 = v34;
      v26 = v46;
      sub_232546578();
      v29 = v35;
      v28 = v36;
    }

    else
    {
      LOBYTE(v47) = 5;
      sub_23253AB10();
      v27 = v37;
      v26 = v46;
      sub_232546578();
      v29 = v38;
      v28 = v39;
    }

    goto LABEL_12;
  }

  if (v44)
  {
    LOBYTE(v47) = 3;
    sub_23253ABB8();
    v27 = v31;
    v26 = v46;
    sub_232546578();
    v29 = v32;
    v28 = v33;
LABEL_12:
    (*(v29 + 8))(v27, v28);
    return (*(v45 + 8))(v21, v26);
  }

  LOBYTE(v47) = 0;
  sub_23253AD5C();
  v26 = v46;
  sub_232546578();
  (*(v30 + 8))(v18, v16);
  return (*(v45 + 8))(v21, v26);
}

BOOL sub_232537DB8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      if (v2 == 1)
      {
        return 1;
      }
    }

    else
    {
      v4 = *a2;
      v5 = *a1;
      if (*a1 > 1)
      {
        if (v5 == 2)
        {
          if (v2 == 2 && v4 == 2)
          {
            return 1;
          }
        }

        else if (v2 == 2 && v4 == 3)
        {
          return 1;
        }
      }

      else if (v5)
      {
        if (v2 == 2 && v4 == 1)
        {
          return 1;
        }
      }

      else if (v2 == 2 && !v4)
      {
        return 1;
      }
    }

    return 0;
  }

  return !*(a2 + 8);
}

unint64_t sub_232537E4C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_23253AFC4(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
  }

  return result;
}

uint64_t sub_232537EA8()
{
  sub_2325466F8();
  sub_232546728();
  return sub_232546738();
}

uint64_t sub_232537F1C(uint64_t a1)
{
  sub_2325466F8();
  sub_232546728();
  return sub_232546738();
}

uint64_t sub_232537F60@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23253B934(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_232538048()
{
  v1 = *v0;
  sub_2324E6FC0(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_232538080(uint64_t a1, char a2)
{
  result = sub_2324E6E70(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_2325380F0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NDFEvent(0) + 24);
  v4 = sub_232545688();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_23253816C(uint64_t a1)
{
  v3 = *(type metadata accessor for NDFEvent(0) + 24);
  v4 = sub_232545688();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_232538230@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NDFEvent(0) + 28);
  v4 = sub_2325456F8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2325382F4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NDFEvent(0) + 36);
  v4 = sub_2325456F8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_232538370@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 9) = a3;
  v13 = type metadata accessor for NDFEvent(0);
  v14 = v13[6];
  v15 = sub_232545688();
  (*(*(v15 - 8) + 32))(a8 + v14, a4, v15);
  v16 = v13[7];
  v17 = sub_2325456F8();
  v20 = *(*(v17 - 8) + 32);
  (v20)((v17 - 8), a8 + v16, a5, v17);
  sub_2324F1C98(a6, a8 + v13[8], &unk_27DD932E0, qword_2325472E0);
  v18 = a8 + v13[9];

  return v20(v18, a7, v17);
}

uint64_t sub_2325384B0()
{
  sub_2325463D8();
  MEMORY[0x2383855C0](91, 0xE100000000000000);
  type metadata accessor for NDFEvent(0);
  sub_232545688();
  sub_23253368C(&qword_2814D62B8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v1 = sub_232546608();
  MEMORY[0x2383855C0](v1);

  MEMORY[0x2383855C0](8250, 0xE200000000000000);
  if (*(v0 + 8))
  {
    if (*(v0 + 8) == 1)
    {
      v2 = 0x800000023254CFE0;
      v3 = 0xD000000000000011;
    }

    else
    {
      v4 = *v0;
      v5 = 0xEF65676174754F20;
      v6 = 0x74656E7265746E49;
      if (*v0 != 2)
      {
        v6 = 0xD000000000000014;
        v5 = 0x800000023254CF60;
      }

      v7 = 0x800000023254CFA0;
      v8 = 0xD000000000000015;
      if (v4)
      {
        v8 = 0xD000000000000010;
        v7 = 0x800000023254CFC0;
      }

      if (v4 <= 1)
      {
        v3 = v8;
      }

      else
      {
        v3 = v6;
      }

      if (v4 <= 1)
      {
        v2 = v7;
      }

      else
      {
        v2 = v5;
      }
    }
  }

  else
  {
    v2 = 0x800000023254CF80;
    v3 = 0xD000000000000018;
  }

  MEMORY[0x2383855C0](v3, v2);

  MEMORY[0x2383855C0](10272, 0xE200000000000000);
  sub_2325456F8();
  sub_23253368C(&qword_2814D62A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v9 = sub_232546608();
  MEMORY[0x2383855C0](v9);

  MEMORY[0x2383855C0](3940393, 0xE300000000000000);
  sub_232546478();
  MEMORY[0x2383855C0](0x20726F66203ELL, 0xE600000000000000);
  v10 = sub_232546608();
  MEMORY[0x2383855C0](v10);

  MEMORY[0x2383855C0](93, 0xE100000000000000);
  return 0;
}

uint64_t sub_2325387A0()
{
  v1 = *v0;
  v2 = 0x707954746E657665;
  v3 = 0x4449656369766564;
  v4 = 0x49555570756F7267;
  if (v1 != 4)
  {
    v4 = 0x495555746E657665;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E6F43746E657665;
  if (v1 != 1)
  {
    v5 = 0x6D617473656D6974;
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

uint64_t sub_232538864@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23253EB30(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23253888C(uint64_t a1)
{
  v2 = sub_23253B944();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2325388C8(uint64_t a1)
{
  v2 = sub_23253B944();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232538904(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD937A8, &qword_232548BA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23253B944();
  sub_232546758();
  v9 = *(v3 + 8);
  v11 = *v3;
  v12 = v9;
  v13 = 0;
  sub_23253B998();
  sub_2325465E8();
  if (!v2)
  {
    LOBYTE(v11) = *(v3 + 9);
    v13 = 1;
    sub_23253B9EC();
    sub_2325465E8();
    type metadata accessor for NDFEvent(0);
    LOBYTE(v11) = 2;
    sub_232545688();
    sub_23253368C(&qword_27DD93538, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_2325465E8();
    LOBYTE(v11) = 3;
    sub_2325456F8();
    sub_23253368C(&qword_27DD93530, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    sub_2325465E8();
    LOBYTE(v11) = 4;
    sub_2325465A8();
    LOBYTE(v11) = 5;
    sub_2325465E8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_232538C08@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  MEMORY[0x28223BE20](v3 - 8);
  v46 = &v39 - v4;
  v5 = sub_2325456F8();
  v6 = *(v5 - 8);
  v47 = v5;
  v48 = v6;
  v7 = MEMORY[0x28223BE20](v5);
  v45 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - v9;
  v11 = sub_232545688();
  v49 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD937C0, &qword_232548BA8);
  v50 = *(v14 - 8);
  v51 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - v15;
  v17 = type metadata accessor for NDFEvent(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v20);
  sub_23253B944();
  v52 = v16;
  v21 = v53;
  sub_232546748();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_0(v54);
  }

  v22 = v13;
  v53 = v10;
  v57 = 0;
  sub_23253BA40();
  sub_232546548();
  v23 = v56;
  *v19 = v55;
  v19[8] = v23;
  v57 = 1;
  sub_23253BA94();
  sub_232546548();
  v24 = v50;
  v19[9] = v55;
  LOBYTE(v55) = 2;
  sub_23253368C(&qword_27DD93560, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_232546548();
  v25 = *(v49 + 32);
  v26 = &v19[v17[6]];
  v43 = v11;
  v25(v26, v22, v11);
  LOBYTE(v55) = 3;
  v27 = sub_23253368C(&qword_27DD93558, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v28 = v53;
  v29 = v47;
  sub_232546548();
  v30 = v17[7];
  v31 = v29;
  v32 = v27;
  v33 = v48 + 32;
  v34 = *(v48 + 32);
  v42 = v19;
  v34(&v19[v30], v28, v31);
  LOBYTE(v55) = 4;
  v35 = v46;
  v53 = v32;
  sub_232546508();
  v40 = v34;
  v41 = v33;
  sub_2324F1C98(v35, &v42[v17[8]], &unk_27DD932E0, qword_2325472E0);
  LOBYTE(v55) = 5;
  v36 = v45;
  sub_232546548();
  (*(v24 + 8))(v52, v51);
  v37 = v42;
  v40(&v42[v17[9]], v36, v31);
  sub_232533BD4(v37, v44, type metadata accessor for NDFEvent);
  __swift_destroy_boxed_opaque_existential_0(v54);
  return sub_232534DC0(v37, type metadata accessor for NDFEvent);
}

uint64_t sub_232539378@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t sub_2325393E8(uint64_t a1)
{
  v3 = sub_232545688();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_23253946C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_232546628();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2325394FC(uint64_t a1)
{
  v2 = sub_23253BAE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232539538(uint64_t a1)
{
  v2 = sub_23253BAE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232539574(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD937D8, &qword_232548BB0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23253BAE8();
  sub_232546758();
  sub_232545688();
  sub_23253368C(&qword_27DD93538, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_2325465E8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2325396EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_232545688();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD937E0, &unk_232548BB8);
  v17 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for NDFActorGeneralResponse(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23253BAE8();
  sub_232546748();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_23253368C(&qword_27DD93560, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    sub_232546548();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_232534D04(v11, v13, type metadata accessor for NDFActorGeneralResponse);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_232539988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_232545688();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

double sub_232539A3C()
{
  type metadata accessor for NDFDeviceEventInfo(0);

  return result;
}

uint64_t sub_232539A88()
{
  if (*v0)
  {
    return 0x7645657669746361;
  }

  else
  {
    return 0x656369766564;
  }
}

uint64_t sub_232539AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656369766564 && a2 == 0xE600000000000000;
  if (v6 || (sub_232546628() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7645657669746361 && a2 == 0xEC00000073746E65)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_232546628();

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

uint64_t sub_232539BB0(uint64_t a1)
{
  v2 = sub_23253BB7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232539BEC(uint64_t a1)
{
  v2 = sub_23253BB7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232539C28(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD937E8, &unk_232548BC8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23253BB7C();
  sub_232546758();
  v12 = 0;
  type metadata accessor for NDFDevice(0);
  sub_23253368C(&qword_27DD936F8, type metadata accessor for NDFDevice, &unk_232547F50);
  sub_2325465A8();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for NDFDeviceEventInfo(0) + 20));
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93408, qword_232548490);
    sub_23253BBD0(&qword_2814D4F20, qword_2814D5080, &unk_232548FE0, MEMORY[0x277D83948]);
    sub_2325465E8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_232539E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2324F1C98(a1, a3, &qword_27DD93578, &unk_2325480F0);
  result = type metadata accessor for NDFDeviceEventInfo(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_232539E90@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93578, &unk_2325480F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD937F0, qword_232548BD8);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = type metadata accessor for NDFDeviceEventInfo(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23253BB7C();
  sub_232546748();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v19 = v10;
  v13 = v12;
  v14 = v21;
  type metadata accessor for NDFDevice(0);
  v25 = 0;
  sub_23253368C(&qword_27DD93748, type metadata accessor for NDFDevice, &unk_232547F28);
  v15 = v22;
  sub_232546508();
  sub_2324F1C98(v6, v13, &qword_27DD93578, &unk_2325480F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93408, qword_232548490);
  v24 = 1;
  sub_23253BBD0(&qword_2814D4F18, &qword_2814D5078, &unk_232548FB8, MEMORY[0x277D83978]);
  sub_232546548();
  (*(v14 + 8))(v9, v15);
  v16 = v20;
  *(v13 + *(v19 + 20)) = v23;
  sub_232533BD4(v13, v16, type metadata accessor for NDFDeviceEventInfo);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_232534DC0(v13, type metadata accessor for NDFDeviceEventInfo);
}

uint64_t sub_23253A240(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656369766564 && a2 == 0xE800000000000000;
  if (v4 || (sub_232546628() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696C696261706163 && a2 == 0xEA00000000007974 || (sub_232546628() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5474736575716572 && a2 == 0xEB00000000657079)
  {

    return 2;
  }

  else
  {
    v6 = sub_232546628();

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

uint64_t sub_23253A364(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1735289200 && a2 == 0xE400000000000000;
  if (v3 || (sub_232546628() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (sub_232546628() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7055656369766564 && a2 == 0xEC00000065746164 || (sub_232546628() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E65764565746F6ELL && a2 == 0xE900000000000074 || (sub_232546628() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023254D000 == a2 || (sub_232546628() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023254D020 == a2 || (sub_232546628() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001FLL && 0x800000023254D040 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_232546628();

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

void *sub_23253A5C4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93878, &unk_23254A8E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_232536DA0();
  sub_232546748();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93210, &qword_232547A00);
    sub_2324FB390(&qword_27DD93570, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_232546508();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v7;
}

unint64_t sub_23253A76C()
{
  result = qword_27DD94870;
  if (!qword_27DD94870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD94870);
  }

  return result;
}

uint64_t sub_23253A7C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7774654E656D6173 && a2 == 0xEB000000006B726FLL;
  if (v4 || (sub_232546628() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x414E656C62756F64 && a2 == 0xE900000000000054 || (sub_232546628() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000023254D080 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_232546628();

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

uint64_t sub_23253A8EC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93870, &qword_23254A8D8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - v5;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23253A76C();
  sub_232546748();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v14 = 0;
  v7 = sub_2325464F8();
  v13 = 1;
  v8 = sub_2325464F8();
  v12 = 2;
  v9 = sub_2325464F8();
  (*(v4 + 8))(v6, v3);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return (v8 << 8) | (v9 << 16) | v7;
}

unint64_t sub_23253AABC()
{
  result = qword_27DD94878;
  if (!qword_27DD94878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD94878);
  }

  return result;
}

unint64_t sub_23253AB10()
{
  result = qword_27DD94880;
  if (!qword_27DD94880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD94880);
  }

  return result;
}

unint64_t sub_23253AB64()
{
  result = qword_27DD94888;
  if (!qword_27DD94888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD94888);
  }

  return result;
}

unint64_t sub_23253ABB8()
{
  result = qword_27DD94890;
  if (!qword_27DD94890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD94890);
  }

  return result;
}

unint64_t sub_23253AC0C()
{
  result = qword_27DD94898;
  if (!qword_27DD94898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD94898);
  }

  return result;
}

unint64_t sub_23253AC60()
{
  result = qword_27DD93798;
  if (!qword_27DD93798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD93798);
  }

  return result;
}

unint64_t sub_23253ACB4()
{
  result = qword_27DD948A0;
  if (!qword_27DD948A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD948A0);
  }

  return result;
}

unint64_t sub_23253AD08()
{
  result = qword_27DD937A0;
  if (!qword_27DD937A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD937A0);
  }

  return result;
}

unint64_t sub_23253AD5C()
{
  result = qword_27DD948A8;
  if (!qword_27DD948A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD948A8);
  }

  return result;
}

uint64_t sub_23253ADB0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x800000023254D0A0 == a2;
  if (v3 || (sub_232546628() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x800000023254D0C0 == a2 || (sub_232546628() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6576726553736E64 && a2 == 0xEF65676174754F72 || (sub_232546628() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x800000023254D0E0 == a2 || (sub_232546628() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74656E7265746E69 && a2 == 0xEE0065676174754FLL || (sub_232546628() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x800000023254D100 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_232546628();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_23253AFC4(void *a1)
{
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93838, &qword_23254A8A0);
  v49 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v56 = &v39 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93840, &qword_23254A8A8);
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x28223BE20](v3);
  v55 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93848, &qword_23254A8B0);
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x28223BE20](v5);
  v54 = &v39 - v6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93850, &qword_23254A8B8);
  v48 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v53 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93858, &qword_23254A8C0);
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93860, &qword_23254A8C8);
  v43 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93868, &qword_23254A8D0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v39 - v16;
  v18 = a1[3];
  v58 = a1;
  v19 = __swift_project_boxed_opaque_existential_0(a1, v18);
  sub_23253AABC();
  v20 = v57;
  sub_232546748();
  if (!v20)
  {
    v40 = v11;
    v41 = v10;
    v21 = v54;
    v22 = v55;
    v23 = v56;
    v57 = v15;
    v24 = sub_232546558();
    if (*(v24 + 16) != 1 || (v25 = *(v24 + 32), v25 == 6))
    {
      v29 = sub_232546418();
      swift_allocError();
      v30 = v14;
      v32 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93740, &qword_232548B40);
      *v32 = &type metadata for NDFEvent.NDFEventType;
      v19 = v17;
      sub_2325464D8();
      sub_232546408();
      (*(*(v29 - 8) + 104))(v32, *MEMORY[0x277D84160], v29);
      swift_willThrow();
      (*(v57 + 8))(v17, v30);
      swift_unknownObjectRelease();
    }

    else if (*(v24 + 32) > 2u)
    {
      if (v25 == 3)
      {
        LOBYTE(v59) = 3;
        sub_23253ABB8();
        sub_2325464C8();
        v35 = v57;
        (*(v46 + 8))(v21, v47);
        (*(v35 + 8))(v17, v14);
        swift_unknownObjectRelease();
        v19 = 1;
      }

      else
      {
        v34 = v57;
        if (v25 == 4)
        {
          LOBYTE(v59) = 4;
          sub_23253AB64();
          sub_2325464C8();
          (*(v50 + 8))(v22, v51);
          (*(v34 + 8))(v17, v14);
          swift_unknownObjectRelease();
          v19 = 2;
        }

        else
        {
          LOBYTE(v59) = 5;
          sub_23253AB10();
          sub_2325464C8();
          (*(v49 + 8))(v23, v52);
          (*(v34 + 8))(v17, v14);
          swift_unknownObjectRelease();
          v19 = 3;
        }
      }
    }

    else if (*(v24 + 32))
    {
      if (v25 == 1)
      {
        LOBYTE(v59) = 1;
        sub_23253ACB4();
        v26 = v41;
        sub_2325464C8();
        v27 = v57;
        sub_23253BEBC();
        v28 = v45;
        sub_232546508();
        (*(v44 + 8))(v26, v28);
        (*(v27 + 8))(v17, v14);
        swift_unknownObjectRelease();
        v19 = v59 | (BYTE2(v59) << 16);
      }

      else
      {
        LOBYTE(v59) = 2;
        sub_23253AC0C();
        v36 = v53;
        sub_2325464C8();
        v37 = v57;
        sub_23253BE00();
        v38 = v42;
        sub_232546508();
        (*(v48 + 8))(v36, v38);
        (*(v37 + 8))(v17, v14);
        swift_unknownObjectRelease();
        v19 = v59;
      }
    }

    else
    {
      LOBYTE(v59) = 0;
      sub_23253AD5C();
      sub_2325464C8();
      (*(v43 + 8))(v13, v40);
      (*(v57 + 8))(v17, v14);
      swift_unknownObjectRelease();
      v19 = 0;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v58);
  return v19;
}

uint64_t sub_23253B934(uint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  else
  {
    return result;
  }
}

unint64_t sub_23253B944()
{
  result = qword_27DD948B0;
  if (!qword_27DD948B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD948B0);
  }

  return result;
}

unint64_t sub_23253B998()
{
  result = qword_27DD937B0;
  if (!qword_27DD937B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD937B0);
  }

  return result;
}

unint64_t sub_23253B9EC()
{
  result = qword_27DD937B8;
  if (!qword_27DD937B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD937B8);
  }

  return result;
}

unint64_t sub_23253BA40()
{
  result = qword_27DD937C8;
  if (!qword_27DD937C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD937C8);
  }

  return result;
}

unint64_t sub_23253BA94()
{
  result = qword_27DD937D0;
  if (!qword_27DD937D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD937D0);
  }

  return result;
}

unint64_t sub_23253BAE8()
{
  result = qword_27DD948B8;
  if (!qword_27DD948B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD948B8);
  }

  return result;
}

unint64_t sub_23253BB7C()
{
  result = qword_27DD948C0[0];
  if (!qword_27DD948C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD948C0);
  }

  return result;
}

uint64_t sub_23253BBD0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD93408, qword_232548490);
    sub_23253368C(a2, type metadata accessor for NDFEvent, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23253BC6C(uint64_t a1)
{
  *(a1 + 8) = sub_23253368C(&qword_27DD93600, type metadata accessor for NDFActorRequest, &unk_232548BFC);
  result = sub_23253368C(&qword_27DD93608, type metadata accessor for NDFActorRequest, &unk_232548C24);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23253BCF0(uint64_t a1)
{
  *(a1 + 8) = sub_23253368C(&qword_27DD936B0, type metadata accessor for NDFActorRequestType, &unk_232548C68);
  result = sub_23253368C(&qword_27DD936A0, type metadata accessor for NDFActorRequestType, &unk_232548C90);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23253BD74(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_23253BE00()
{
  result = qword_27DD937F8;
  if (!qword_27DD937F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD937F8);
  }

  return result;
}

uint64_t sub_23253BE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_23253BEBC()
{
  result = qword_27DD93800;
  if (!qword_27DD93800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD93800);
  }

  return result;
}

uint64_t sub_23253BF6C(uint64_t a1)
{
  *(a1 + 8) = sub_23253368C(&qword_2814D5078, type metadata accessor for NDFEvent, &unk_232548FB8);
  result = sub_23253368C(qword_2814D5080, type metadata accessor for NDFEvent, &unk_232548FE0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23253BFF0(uint64_t a1)
{
  *(a1 + 8) = sub_23253BBD0(&qword_2814D4F18, &qword_2814D5078, &unk_232548FB8, MEMORY[0x277D83978]);
  result = sub_23253BBD0(&qword_2814D4F20, qword_2814D5080, &unk_232548FE0, MEMORY[0x277D83948]);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23253C090(uint64_t a1)
{
  *(a1 + 8) = sub_23253368C(&qword_27DD93748, type metadata accessor for NDFDevice, &unk_232547F28);
  result = sub_23253368C(&qword_27DD936F8, type metadata accessor for NDFDevice, &unk_232547F50);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23253C114(uint64_t a1)
{
  *(a1 + 8) = sub_23253368C(&qword_27DD93808, type metadata accessor for NDFActorGeneralResponse, &unk_232549078);
  result = sub_23253368C(&qword_27DD93810, type metadata accessor for NDFActorGeneralResponse, &unk_2325490A0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23253C198(uint64_t a1)
{
  *(a1 + 8) = sub_23253368C(&qword_27DD93818, type metadata accessor for NDFDeviceEventInfo, &unk_2325490E4);
  result = sub_23253368C(&qword_27DD93820, type metadata accessor for NDFDeviceEventInfo, &unk_23254910C);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23253C244(uint64_t a1)
{
  result = sub_2325456F8();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NDFActorRequestType(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23253C320(uint64_t a1)
{
  result = type metadata accessor for NDFDevice(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NDFEvent(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23253C3A8(uint64_t a1)
{
  result = sub_2325456F8();
  if (v2 <= 0x3F)
  {
    result = sub_232546318();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23253C438(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_2325456F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = v11;
  }

  v13 = *(*(v6 - 8) + 64);
  v14 = *(v9 + 80);
  v15 = *(v9 + 64);
  if (!v10)
  {
    ++v15;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v12)
  {
    goto LABEL_33;
  }

  v16 = v15 + ((v14 + ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v19 = ((a2 - v12 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_32;
      }

      goto LABEL_19;
    }

    if (v19 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_32;
      }

      goto LABEL_19;
    }

    if (v19 < 2)
    {
LABEL_32:
      if (v12)
      {
LABEL_33:
        if (v8 >= v11)
        {
          v25 = *(v7 + 48);

          return v25(a1);
        }

        else
        {
          v23 = (*(*(*(a3 + 16) - 8) + 48))((((a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8) + v14 + 8) & ~v14, v10);
          if (v23 >= 2)
          {
            return v23 - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      return 0;
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_32;
  }

LABEL_19:
  v20 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v20 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v21 = v16;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v12 + (v22 | v20) + 1;
}

void sub_23253C698(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_2325456F8();
  v9 = 0;
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  v12 = *(*(a4 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v10 + 64);
  v15 = *(v12 + 80);
  v16 = v13 - 1;
  if (!v13)
  {
    v16 = 0;
  }

  if (v16 <= v11)
  {
    v17 = *(v10 + 84);
  }

  else
  {
    v17 = v16;
  }

  if (v13)
  {
    v18 = *(v12 + 64);
  }

  else
  {
    v18 = *(v12 + 64) + 1;
  }

  v19 = ((v15 + ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v15) + v18;
  if (a3 <= v17)
  {
    goto LABEL_20;
  }

  if (v19 <= 3)
  {
    v20 = ((a3 - v17 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
    if (HIWORD(v20))
    {
      v9 = 4;
      if (v17 >= a2)
      {
        goto LABEL_30;
      }

      goto LABEL_21;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    else
    {
      v21 = 2;
    }

    if (v20 >= 2)
    {
      v9 = v21;
    }

    else
    {
      v9 = 0;
    }

LABEL_20:
    if (v17 >= a2)
    {
      goto LABEL_30;
    }

    goto LABEL_21;
  }

  v9 = 1;
  if (v17 >= a2)
  {
LABEL_30:
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        *&a1[v19] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_37;
      }

      *&a1[v19] = 0;
    }

    else if (v9)
    {
      a1[v19] = 0;
      if (!a2)
      {
        return;
      }

LABEL_37:
      if (v11 >= v16)
      {
        v29 = *(v10 + 56);

        v29(a1, a2, v11, v8);
      }

      else
      {
        v25 = (((&a1[v14 + 7] & 0xFFFFFFFFFFFFFFF8) + v15 + 8) & ~v15);
        if (v16 >= a2)
        {
          v30 = *(v12 + 56);

          v30(v25, (a2 + 1));
        }

        else
        {
          if (v18 <= 3)
          {
            v26 = ~(-1 << (8 * v18));
          }

          else
          {
            v26 = -1;
          }

          if (v18)
          {
            v27 = v26 & (~v16 + a2);
            if (v18 <= 3)
            {
              v28 = v18;
            }

            else
            {
              v28 = 4;
            }

            bzero(v25, v18);
            if (v28 > 2)
            {
              if (v28 == 3)
              {
                *v25 = v27;
                v25[2] = BYTE2(v27);
              }

              else
              {
                *v25 = v27;
              }
            }

            else if (v28 == 1)
            {
              *v25 = v27;
            }

            else
            {
              *v25 = v27;
            }
          }
        }
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

LABEL_21:
  v22 = ~v17 + a2;
  if (v19 >= 4)
  {
    bzero(a1, ((v15 + ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v15) + v18);
    *a1 = v22;
    v23 = 1;
    if (v9 > 1)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  v23 = (v22 >> (8 * v19)) + 1;
  if (!v19)
  {
LABEL_58:
    if (v9 > 1)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  v24 = v22 & ~(-1 << (8 * v19));
  bzero(a1, ((v15 + ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v15) + v18);
  if (v19 == 3)
  {
    *a1 = v24;
    a1[2] = BYTE2(v24);
    goto LABEL_58;
  }

  if (v19 == 2)
  {
    *a1 = v24;
    if (v9 > 1)
    {
LABEL_62:
      if (v9 == 2)
      {
        *&a1[v19] = v23;
      }

      else
      {
        *&a1[v19] = v23;
      }

      return;
    }
  }

  else
  {
    *a1 = v22;
    if (v9 > 1)
    {
      goto LABEL_62;
    }
  }

LABEL_59:
  if (v9)
  {
    a1[v19] = v23;
  }
}

void sub_23253CA44(uint64_t a1)
{
  sub_232545688();
  if (v1 <= 0x3F)
  {
    sub_2325456F8();
    if (v2 <= 0x3F)
    {
      sub_23253D114(319, &qword_2814D6298, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_29SymptomNetworkDiagnosticsCore8NDFEventV0E4TypeO0E16PayloadDNSOutageVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t get_enum_tag_for_layout_string_29SymptomNetworkDiagnosticsCore8NDFEventV0E4TypeO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_23253CB6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23253CBB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_23253CBF8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_23253CC2C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_23253CC88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for NDFEvent.NDFEventType.NDFEventPayloadNetworkMisconfiguration(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE)
  {
    if ((a2 + 33554178) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }
  }

  v4 = *a1;
  if (v4 >= 2)
  {
    v5 = ((v4 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v5 = -2;
  }

  if (v5 < 0)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for NDFEvent.NDFEventType.NDFEventPayloadNetworkMisconfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554178) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFD)
  {
    v3 = 0;
  }

  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 2) = (a2 - 254) >> 16;
    if (v3)
    {
      v4 = ((a2 - 254) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NDFEvent.NDFEventContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NDFEvent.NDFEventContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23253CF9C(uint64_t a1)
{
  result = sub_232545688();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_23253D030(uint64_t a1)
{
  sub_23253D114(319, &qword_27DD93828, type metadata accessor for NDFDevice, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23253D114(319, &qword_27DD93830, type metadata accessor for NDFEvent, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23253D114(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for NDFDeviceEventInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

uint64_t storeEnumTagSinglePayload for NDFDeviceEventInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
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
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23253D2F8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_23253D38C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NDFActorRequestType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NDFActorRequestType.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23253D6A0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_23253D734(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23253D7F8()
{
  result = qword_27DD959F0[0];
  if (!qword_27DD959F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD959F0);
  }

  return result;
}

unint64_t sub_23253D850()
{
  result = qword_27DD95F00[0];
  if (!qword_27DD95F00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD95F00);
  }

  return result;
}

unint64_t sub_23253D8A8()
{
  result = qword_27DD96110[0];
  if (!qword_27DD96110[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD96110);
  }

  return result;
}

unint64_t sub_23253D900()
{
  result = qword_27DD96320[0];
  if (!qword_27DD96320[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD96320);
  }

  return result;
}

unint64_t sub_23253D958()
{
  result = qword_27DD96630[0];
  if (!qword_27DD96630[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD96630);
  }

  return result;
}

unint64_t sub_23253D9CC()
{
  result = qword_27DD96A40[0];
  if (!qword_27DD96A40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD96A40);
  }

  return result;
}

unint64_t sub_23253DA24()
{
  result = qword_27DD96C50[0];
  if (!qword_27DD96C50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD96C50);
  }

  return result;
}

unint64_t sub_23253DA7C()
{
  result = qword_27DD97160[0];
  if (!qword_27DD97160[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD97160);
  }

  return result;
}

unint64_t sub_23253DAD4()
{
  result = qword_27DD97370[0];
  if (!qword_27DD97370[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD97370);
  }

  return result;
}

unint64_t sub_23253DB2C()
{
  result = qword_27DD97680[0];
  if (!qword_27DD97680[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD97680);
  }

  return result;
}

unint64_t sub_23253DB84()
{
  result = qword_27DD97890[0];
  if (!qword_27DD97890[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD97890);
  }

  return result;
}

unint64_t sub_23253DBDC()
{
  result = qword_27DD97AA0[0];
  if (!qword_27DD97AA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD97AA0);
  }

  return result;
}

unint64_t sub_23253DC34()
{
  result = qword_27DD97CB0[0];
  if (!qword_27DD97CB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD97CB0);
  }

  return result;
}

unint64_t sub_23253DC8C()
{
  result = qword_27DD97DC0;
  if (!qword_27DD97DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD97DC0);
  }

  return result;
}

unint64_t sub_23253DCE4()
{
  result = qword_27DD97DC8[0];
  if (!qword_27DD97DC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD97DC8);
  }

  return result;
}

unint64_t sub_23253DD3C()
{
  result = qword_27DD97E50;
  if (!qword_27DD97E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD97E50);
  }

  return result;
}

unint64_t sub_23253DD94()
{
  result = qword_27DD97E58[0];
  if (!qword_27DD97E58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD97E58);
  }

  return result;
}

unint64_t sub_23253DDEC()
{
  result = qword_27DD97EE0;
  if (!qword_27DD97EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD97EE0);
  }

  return result;
}

unint64_t sub_23253DE44()
{
  result = qword_27DD97EE8[0];
  if (!qword_27DD97EE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD97EE8);
  }

  return result;
}

unint64_t sub_23253DE9C()
{
  result = qword_27DD97F70;
  if (!qword_27DD97F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD97F70);
  }

  return result;
}

unint64_t sub_23253DEF4()
{
  result = qword_27DD97F78;
  if (!qword_27DD97F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD97F78);
  }

  return result;
}

unint64_t sub_23253DF4C()
{
  result = qword_27DD98000;
  if (!qword_27DD98000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD98000);
  }

  return result;
}

unint64_t sub_23253DFA4()
{
  result = qword_27DD98008[0];
  if (!qword_27DD98008[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD98008);
  }

  return result;
}

unint64_t sub_23253DFFC()
{
  result = qword_27DD98090;
  if (!qword_27DD98090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD98090);
  }

  return result;
}

unint64_t sub_23253E054()
{
  result = qword_27DD98098[0];
  if (!qword_27DD98098[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD98098);
  }

  return result;
}

unint64_t sub_23253E0AC()
{
  result = qword_27DD98120;
  if (!qword_27DD98120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD98120);
  }

  return result;
}

unint64_t sub_23253E104()
{
  result = qword_27DD98128[0];
  if (!qword_27DD98128[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD98128);
  }

  return result;
}

unint64_t sub_23253E15C()
{
  result = qword_27DD981B0;
  if (!qword_27DD981B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD981B0);
  }

  return result;
}

unint64_t sub_23253E1B4()
{
  result = qword_27DD981B8[0];
  if (!qword_27DD981B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD981B8);
  }

  return result;
}

unint64_t sub_23253E20C()
{
  result = qword_27DD98240;
  if (!qword_27DD98240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD98240);
  }

  return result;
}

unint64_t sub_23253E264()
{
  result = qword_27DD98248[0];
  if (!qword_27DD98248[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD98248);
  }

  return result;
}

unint64_t sub_23253E2BC()
{
  result = qword_27DD982D0;
  if (!qword_27DD982D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD982D0);
  }

  return result;
}

unint64_t sub_23253E314()
{
  result = qword_27DD982D8[0];
  if (!qword_27DD982D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD982D8);
  }

  return result;
}

unint64_t sub_23253E36C()
{
  result = qword_27DD98360;
  if (!qword_27DD98360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD98360);
  }

  return result;
}

unint64_t sub_23253E3C4()
{
  result = qword_27DD98368[0];
  if (!qword_27DD98368[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD98368);
  }

  return result;
}

unint64_t sub_23253E41C()
{
  result = qword_27DD983F0;
  if (!qword_27DD983F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD983F0);
  }

  return result;
}

unint64_t sub_23253E474()
{
  result = qword_27DD983F8[0];
  if (!qword_27DD983F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD983F8);
  }

  return result;
}

unint64_t sub_23253E504()
{
  result = qword_27DD98500;
  if (!qword_27DD98500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD98500);
  }

  return result;
}

unint64_t sub_23253E55C()
{
  result = qword_27DD98508[0];
  if (!qword_27DD98508[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD98508);
  }

  return result;
}

unint64_t sub_23253E5B4()
{
  result = qword_27DD98590;
  if (!qword_27DD98590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD98590);
  }

  return result;
}

unint64_t sub_23253E60C()
{
  result = qword_27DD98598[0];
  if (!qword_27DD98598[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD98598);
  }

  return result;
}

unint64_t sub_23253E664()
{
  result = qword_27DD98620;
  if (!qword_27DD98620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD98620);
  }

  return result;
}

unint64_t sub_23253E6BC()
{
  result = qword_27DD98628[0];
  if (!qword_27DD98628[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD98628);
  }

  return result;
}

unint64_t sub_23253E714()
{
  result = qword_27DD986B0;
  if (!qword_27DD986B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD986B0);
  }

  return result;
}

unint64_t sub_23253E76C()
{
  result = qword_27DD986B8[0];
  if (!qword_27DD986B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD986B8);
  }

  return result;
}

unint64_t sub_23253E7C4()
{
  result = qword_27DD98740;
  if (!qword_27DD98740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD98740);
  }

  return result;
}

unint64_t sub_23253E81C()
{
  result = qword_27DD98748[0];
  if (!qword_27DD98748[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD98748);
  }

  return result;
}

unint64_t sub_23253E874()
{
  result = qword_27DD987D0;
  if (!qword_27DD987D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD987D0);
  }

  return result;
}

unint64_t sub_23253E8CC()
{
  result = qword_27DD987D8[0];
  if (!qword_27DD987D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD987D8);
  }

  return result;
}

unint64_t sub_23253E924()
{
  result = qword_27DD98860;
  if (!qword_27DD98860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD98860);
  }

  return result;
}

unint64_t sub_23253E97C()
{
  result = qword_27DD98868[0];
  if (!qword_27DD98868[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD98868);
  }

  return result;
}

unint64_t sub_23253E9D4()
{
  result = qword_27DD988F0;
  if (!qword_27DD988F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD988F0);
  }

  return result;
}

unint64_t sub_23253EA2C()
{
  result = qword_27DD988F8[0];
  if (!qword_27DD988F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD988F8);
  }

  return result;
}

unint64_t sub_23253EA84()
{
  result = qword_27DD98980;
  if (!qword_27DD98980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD98980);
  }

  return result;
}

unint64_t sub_23253EADC()
{
  result = qword_27DD98988[0];
  if (!qword_27DD98988[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD98988);
  }

  return result;
}

uint64_t sub_23253EB30(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x707954746E657665 && a2 == 0xE900000000000065 || (sub_232546628() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F43746E657665 && a2 == 0xEC00000074786574 || (sub_232546628() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_232546628() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4449656369766564 && a2 == 0xE800000000000000 || (sub_232546628() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x49555570756F7267 && a2 == 0xE900000000000044 || (sub_232546628() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x495555746E657665 && a2 == 0xE900000000000044)
  {

    return 5;
  }

  else
  {
    v5 = sub_232546628();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_23253EDC4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2324F4680();
  v3 = sub_2325458A8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v2, v3);
}

uint64_t sub_23253EE34@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDeviceDiscoveryManager_logger;
  v4 = sub_2325458A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double sub_23253EEAC()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_23253EEF4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDeviceDiscoveryManager_discoveredEndpoints;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_23253EFAC()
{
  v0 = objc_opt_self();
  v1 = &unk_284793910;
  v2 = [v0 interfaceWithProtocol_];

  result = [v2 setXPCType:sub_232545B78() forSelector:sel_startDelegatedDiscoveryFor_cancelAfter_deviceType_completionHandler_ argumentIndex:0 ofReply:1];
  qword_2814D7068 = v2;
  return result;
}

uint64_t *sub_23253F03C()
{
  if (qword_2814D6C70 != -1)
  {
    swift_once();
  }

  return &qword_2814D7068;
}

id sub_23253F08C()
{
  if (qword_2814D6C70 != -1)
  {
    swift_once();
  }

  v1 = qword_2814D7068;

  return v1;
}

uint64_t sub_23253F0E8()
{
  v1 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDeviceDiscoveryManager_logger;
  v2 = sub_2325458A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_23253F160()
{
  v1 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDeviceDiscoveryManager_logger;
  v2 = sub_2325458A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_23253F1E8()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDeviceDiscoveryManager_logger;
  v2 = sub_2324F4680();
  v3 = sub_2325458A8();
  (*(*(v3 - 8) + 16))(v0 + v1, v2, v3);
  *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDeviceDiscoveryManager_discoveredEndpoints) = MEMORY[0x277D84F90];
  return v0;
}

uint64_t sub_23253F288()
{
  swift_defaultActor_initialize();
  v1 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDeviceDiscoveryManager_logger;
  v2 = sub_2324F4680();
  v3 = sub_2325458A8();
  (*(*(v3 - 8) + 16))(v0 + v1, v2, v3);
  *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore25NDFDeviceDiscoveryManager_discoveredEndpoints) = MEMORY[0x277D84F90];
  return v0;
}

double sub_23253F318()
{
  v0 = *(**sub_2324C4D38() + 272);

  v2 = v0(v1);

  return v2;
}

uint64_t sub_23253F390(double a1)
{
  *(v2 + 184) = v1;
  *(v2 + 176) = a1;
  return MEMORY[0x2822009F8](sub_23253F3B4, v1, 0);
}

uint64_t sub_23253F3B4()
{
  v1 = sub_2324C4D38();
  v2 = *(**v1 + 248);

  LOBYTE(v2) = v2(v3);

  if (v2)
  {
    sub_232545FB8();
    v4 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v5 = sub_232545F58();

    v6 = [v4 initWithMachServiceName:v5 options:4096];
    *(v0 + 24) = v6;

    if (qword_2814D6C70 != -1)
    {
      swift_once();
    }

    [v6 setRemoteObjectInterface:qword_2814D7068];
    [v6 activate];
    v7 = [v6 remoteObjectProxy];
    sub_232546338();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93880, &qword_232547840);
    if (swift_dynamicCast())
    {
      v8 = v0[22];
      v9 = *(v0 + 18);
      *(v0 + 25) = v9;
      sub_232527CE8();

      v10 = sub_232545F58();
      *(v0 + 26) = v10;

      v11 = *(**v1 + 512);

      v11(v12);

      v13 = sub_2325458D8();
      if ((v13 & 0x100) != 0)
      {
        v14 = 6;
      }

      else
      {
        v14 = v13;
      }

      *(v0 + 2) = v0;
      *(v0 + 7) = v0 + 18;
      *(v0 + 3) = sub_23253F83C;
      v15 = swift_continuation_init();
      *(v0 + 17) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD938E8, &qword_23254A900);
      *(v0 + 10) = MEMORY[0x277D85DD0];
      *(v0 + 11) = 1107296256;
      *(v0 + 12) = sub_23253FE14;
      *(v0 + 13) = &block_descriptor_5;
      *(v0 + 14) = v15;
      [v9 startDelegatedDiscoveryFor:v10 cancelAfter:v14 deviceType:v0 + 10 completionHandler:v8];

      return MEMORY[0x282200938](v0 + 2);
    }

    v18 = sub_232545888();
    v19 = sub_2325461F8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2324C0000, v18, v19, "Failed to obtain remoteObjectProxy while contacting symptomsd-distributed", v20, 2u);
      MEMORY[0x238386450](v20, -1, -1);
    }

    [v6 invalidate];
  }

  else
  {
    v6 = sub_232545888();
    v16 = sub_232546208();
    if (os_log_type_enabled(v6, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2324C0000, v6, v16, "Device discovery is not allowed, returning", v17, 2u);
      MEMORY[0x238386450](v17, -1, -1);
    }
  }

  v21 = *(v0 + 1);
  v22 = MEMORY[0x277D84F90];

  return v21(v22);
}

uint64_t sub_23253F83C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  v3 = *(v1 + 184);
  if (v2)
  {
    v4 = sub_23253FD7C;
  }

  else
  {
    v4 = sub_23253F95C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23253F95C()
{
  v31 = v0;
  v1 = v0[18];

  v2 = MEMORY[0x238386580](v1);
  v3 = sub_232545B78();
  v4 = v0[23];
  if (v2 == v3)
  {
    v10 = v0 + 21;
    v0[21] = MEMORY[0x277D84F90];
    v11 = swift_allocObject();
    *(v11 + 16) = v0 + 21;
    *(v11 + 24) = v4;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_232540310;
    *(v12 + 24) = v11;
    v0[14] = sub_23254031C;
    v0[15] = v12;
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2325402A0;
    v0[13] = &block_descriptor_7;
    v13 = _Block_copy(v0 + 10);

    xpc_array_apply(v1, v13);
    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      return result;
    }

    v16 = sub_232545888();
    v17 = sub_232546208();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v30 = v19;
      *v18 = 134218242;
      swift_beginAccess();
      v20 = *v10;
      *(v18 + 4) = *(*v10 + 16);
      *(v18 + 12) = 2080;
      v0[10] = v20;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD938F0, qword_23254A908);
      v21 = sub_232545F98();
      v23 = sub_2324C2220(v21, v22, &v30);

      *(v18 + 14) = v23;
      _os_log_impl(&dword_2324C0000, v16, v17, "Discovered %ld endpoints: %s", v18, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x238386450](v19, -1, -1);
      MEMORY[0x238386450](v18, -1, -1);
    }

    else
    {
    }

    v24 = v0[24];
    v25 = v0[23];
    swift_beginAccess();
    v26 = *(*v25 + 112);

    v26(v27);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v28 = v0[21];
    [v24 invalidate];

    v9 = v28;
  }

  else
  {
    v5 = sub_232545888();
    v6 = sub_2325461F8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2324C0000, v5, v6, "Endpoints array is not a valid XPC array", v7, 2u);
      MEMORY[0x238386450](v7, -1, -1);
    }

    v8 = v0[24];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    [v8 invalidate];

    v9 = MEMORY[0x277D84F90];
  }

  v29 = v0[1];

  return v29(v9);
}

uint64_t sub_23253FD7C(uint64_t a1)
{
  v2 = v1[26];
  v3 = v1[24];
  swift_willThrow();
  swift_unknownObjectRelease();

  [v3 invalidate];
  v4 = v1[1];

  return v4();
}

uint64_t sub_23253FE14(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93690, &unk_232548400);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      swift_unknownObjectRetain();
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

BOOL sub_23253FEF0(uint64_t a1, char **a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93658, &unk_232548950);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29 - v4;
  v6 = sub_232545BA8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  v13 = nw_endpoint_create_from_dictionary();
  swift_unknownObjectRetain();
  sub_232545BB8();
  v14 = (*(v7 + 48))(v5, 1, v6);
  v15 = v14;
  if (v14 == 1)
  {
    sub_232540634(v5);
    swift_unknownObjectRetain();
    v21 = sub_232545888();
    v22 = sub_2325461F8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v31 = v13;
      v32 = v24;
      *v23 = 136315138;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93970, &qword_232548960);
      v25 = sub_232545F98();
      v27 = sub_2324C2220(v25, v26, &v32);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_2324C0000, v21, v22, "Failed to obtain NWEndpoint from endpoint %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x238386450](v24, -1, -1);
      MEMORY[0x238386450](v23, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v30 = v14;
    v29 = *(v7 + 32);
    v29(v12, v5, v6);
    (*(v7 + 16))(v10, v12, v6);
    v16 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_232540360(0, *(v16 + 2) + 1, 1, v16);
      *a2 = v16;
    }

    v19 = *(v16 + 2);
    v18 = *(v16 + 3);
    if (v19 >= v18 >> 1)
    {
      *a2 = sub_232540360((v18 > 1), v19 + 1, 1, v16);
    }

    swift_unknownObjectRelease();
    (*(v7 + 8))(v12, v6);
    v20 = *a2;
    *(v20 + 2) = v19 + 1;
    v29(&v20[((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19], v10, v6);
    v15 = v30;
  }

  return v15 != 1;
}

uint64_t sub_2325402A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  v6 = v5(a2, a3);
  swift_unknownObjectRelease();
  return v6 & 1;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  return sub_2324C26D8(a2 + 32, a1 + 32);
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_destroy_helper_6(uint64_t a1)
{
}

{
}

void *sub_232540360(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93978, qword_23254A998);
  v10 = *(sub_232545BA8() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_232545BA8() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t type metadata accessor for NDFDeviceDiscoveryManager(uint64_t a1)
{
  result = qword_2814D6C60;
  if (!qword_2814D6C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23254058C(uint64_t a1)
{
  result = sub_2325458A8();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_232540634(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93658, &unk_232548950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23254069C()
{
  v0 = sub_2325458A8();
  __swift_allocate_value_buffer(v0, qword_27DD98C40);
  v1 = __swift_project_value_buffer(v0, qword_27DD98C40);
  v2 = sub_2324F4680();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_232540728()
{
  if (qword_27DD98A90 != -1)
  {
    swift_once();
  }

  v0 = sub_2325458A8();

  return __swift_project_value_buffer(v0, qword_27DD98C40);
}

uint64_t sub_23254078C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DD98A90 != -1)
  {
    swift_once();
  }

  v2 = sub_2325458A8();
  v3 = __swift_project_value_buffer(v2, qword_27DD98C40);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_232540850()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t sub_232540894()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t sub_2325408FC(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 144) = a1;
}

uint64_t sub_232540994()
{
  v7 = sub_232546238();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_232546218();
  MEMORY[0x28223BE20](v3);
  v4 = sub_232545EA8();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_2324CF4E4();
  sub_232545E88();
  v8 = MEMORY[0x277D84F90];
  sub_232544ED8(&qword_2814D4ED0, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932B0, &unk_232547800);
  sub_2324E2640(&qword_2814D4F00, &unk_27DD932B0, &unk_232547800);
  sub_232546378();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  return sub_232546258();
}

void sub_232540BE8()
{
  v1 = v0;
  if ((*(*v0 + 120))())
  {
    sub_232545E38();
  }

  (*(*v0 + 128))(0);
  if (qword_27DD98A90 != -1)
  {
    swift_once();
  }

  v2 = sub_2325458A8();
  __swift_project_value_buffer(v2, qword_27DD98C40);

  oslog = sub_232545888();
  v3 = sub_232546208();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_2324C2220(*(v1 + 112), *(v1 + 120), &v7);
    _os_log_impl(&dword_2324C0000, oslog, v3, "Stopped browsing for %s service", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x238386450](v5, -1, -1);
    MEMORY[0x238386450](v4, -1, -1);
  }
}

uint64_t sub_232540D94()
{
  v1 = sub_232545DB8();
  MEMORY[0x28223BE20](v1);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = v0[14];
  v5 = v0[15];
  v6 = v0[16];
  v7 = v0[17];
  *v3 = v4;
  v3[1] = v5;
  v3[2] = v6;
  v3[3] = v7;
  (*(v8 + 104))(v3, *MEMORY[0x277CD90D8]);
  sub_232545C78();

  sub_2324F526C();
  sub_232545E48();
  swift_allocObject();
  return sub_232545DE8();
}

uint64_t sub_232540EB4(double a1)
{
  *(v2 + 24) = v1;
  *(v2 + 16) = a1;
  *(v2 + 32) = *v1;
  return MEMORY[0x2822009F8](sub_232540F00, v1, 0);
}

uint64_t sub_232540F00(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[2];
  v6 = sub_232544ED8(&qword_27DD93980, a2, type metadata accessor for NDFBonjourProbe, &unk_23254A9B0);
  v7 = swift_task_alloc();
  v2[5] = v7;
  v7[2] = v3;
  v7[3] = v5;
  v7[4] = v4;
  v8 = swift_task_alloc();
  v2[6] = v8;
  *v8 = v2;
  v8[1] = sub_232541044;
  v9 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v2 + 8, v3, v6, 0xD00000000000002ELL, 0x800000023254D220, sub_232543480, v7, v9);
}

uint64_t sub_232541044()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_232541188;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_23254116C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_232541188()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_2325411F0(uint64_t a1, uint64_t *a2, uint64_t a3, double a4)
{
  v69 = a1;
  v70 = a3;
  v6 = sub_232545E68();
  v63 = *(v6 - 8);
  v64 = v6;
  MEMORY[0x28223BE20](v6);
  v61 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_232545EA8();
  v60 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v59 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_232545EC8();
  v58 = *(v66 - 8);
  v9 = MEMORY[0x28223BE20](v66);
  v57 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v65 = &v56 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93988, &qword_23254AA30);
  v67 = *(v12 - 8);
  v68 = *(v67 + 64);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v56 - v14;
  v16 = *(*a2 + 120);
  v17 = *a2 + 120;
  v18 = (v16)(v13);
  if (v18)
  {

    v18 = (*(*a2 + 144))(v19);
  }

  v20 = (*(*a2 + 152))(v18);
  (*(*a2 + 128))(v20);
  v71 = swift_allocObject();
  *(v71 + 16) = 0;
  v21 = v16();
  if (v21)
  {
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = v67;
    (*(v67 + 16))(v15, v69, v12);
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v56 = v17;
    v25 = v16;
    v26 = (v68 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    v28 = v71;
    *(v27 + 16) = v22;
    *(v27 + 24) = v28;
    (*(v23 + 32))(v27 + v24, v15, v12);
    *(v27 + v26) = v70;
    v16 = v25;

    sub_232545DC8();
  }

  if ((v16)(v21))
  {
    v29 = swift_allocObject();
    swift_weakInit();
    v30 = v67;
    (*(v67 + 16))(v15, v69, v12);
    v31 = *(v30 + 80);
    v56 = v15;
    v32 = v16;
    v33 = (v31 + 32) & ~v31;
    v34 = (v68 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    v36 = v71;
    *(v35 + 16) = v29;
    *(v35 + 24) = v36;
    v37 = v35 + v33;
    v16 = v32;
    v15 = v56;
    (*(v30 + 32))(v37, v56, v12);
    *(v35 + v34) = v70;

    sub_232545DD8();
  }

  if (qword_27DD98A90 != -1)
  {
    swift_once();
  }

  v38 = sub_2325458A8();
  __swift_project_value_buffer(v38, qword_27DD98C40);

  v39 = sub_232545888();
  v40 = sub_232546208();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    aBlock[0] = v42;
    *v41 = 136315394;
    *(v41 + 4) = sub_2324C2220(a2[14], a2[15], aBlock);
    *(v41 + 12) = 2048;
    *(v41 + 14) = a4;
    _os_log_impl(&dword_2324C0000, v39, v40, "Starting Bonjour browser for service %s with %fs timeout", v41, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x238386450](v42, -1, -1);
    MEMORY[0x238386450](v41, -1, -1);
  }

  if (v16())
  {
    sub_232545E08();
  }

  v56 = a2[19];
  v43 = v57;
  sub_232545EB8();
  sub_232545ED8();
  v58 = *(v58 + 8);
  (v58)(v43, v66);
  v44 = swift_allocObject();
  swift_weakInit();
  v45 = v67;
  (*(v67 + 16))(v15, v69, v12);
  v46 = (*(v45 + 80) + 40) & ~*(v45 + 80);
  v47 = (v68 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  v49 = v71;
  *(v48 + 16) = v44;
  *(v48 + 24) = v49;
  *(v48 + 32) = a4;
  (*(v45 + 32))(v48 + v46, v15, v12);
  *(v48 + v47) = v70;
  aBlock[4] = sub_232543674;
  aBlock[5] = v48;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2324D0160;
  aBlock[3] = &block_descriptor_6;
  v50 = _Block_copy(aBlock);

  v51 = v59;
  sub_232545E78();
  v72 = MEMORY[0x277D84F90];
  sub_232544ED8(&qword_2814D4F30, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93328, &qword_232547960);
  sub_2324E2640(&qword_2814D4F10, &qword_27DD93328, &qword_232547960);
  v52 = v61;
  v53 = v64;
  sub_232546378();
  v54 = v65;
  MEMORY[0x238385810](v65, v51, v52, v50);
  _Block_release(v50);
  (*(v63 + 8))(v52, v53);
  (*(v60 + 8))(v51, v62);
  (v58)(v54, v66);
}

uint64_t sub_232541B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v85 = a4;
  v88 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93630, &qword_232547550);
  MEMORY[0x28223BE20](v5 - 8);
  v87 = &v83 - v6;
  v90 = sub_232545D98();
  v7 = *(v90 - 8);
  v8 = MEMORY[0x28223BE20](v90);
  v10 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v91 = &v83 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v84 = &v83 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v83 - v15;
  v17 = sub_232545DF8();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v83 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v83 - v25;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v89 = v7;
  v86 = result;
  v28 = *(v18 + 16);
  v83 = a1;
  v28(v26, a1, v17);
  v29 = (*(v18 + 88))(v26, v17);
  if (v29 == *MEMORY[0x277CD9108])
  {
    (*(v18 + 96))(v26, v17);
    v30 = v89;
    v31 = v91;
    v32 = v26;
    v33 = v90;
    (*(v89 + 32))(v91, v32, v90);
    if (qword_27DD98A90 != -1)
    {
      swift_once();
    }

    v34 = sub_2325458A8();
    __swift_project_value_buffer(v34, qword_27DD98C40);
    v35 = *(v30 + 16);
    v35(v10, v31, v33);
    v36 = sub_232545888();
    v37 = sub_2325461F8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      sub_232544ED8(&qword_27DD939A8, 255, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
      swift_allocError();
      v35(v40, v10, v33);
      v41 = _swift_stdlib_bridgeErrorToNSError();
      v42 = *(v30 + 8);
      v42(v10, v33);
      *(v38 + 4) = v41;
      *v39 = v41;
      _os_log_impl(&dword_2324C0000, v36, v37, "Browser failed to browse for service due to %@", v38, 0xCu);
      sub_2324C28AC(v39, &qword_27DD93218, &qword_232547360);
      v43 = v39;
      v31 = v91;
      MEMORY[0x238386450](v43, -1, -1);
      MEMORY[0x238386450](v38, -1, -1);
    }

    else
    {

      v42 = *(v30 + 8);
      v42(v10, v33);
    }

    v59 = sub_2325460F8();
    v60 = v87;
    (*(*(v59 - 8) + 56))(v87, 1, 1, v59);
    v61 = swift_allocObject();
    v61[2] = 0;
    v61[3] = 0;
    v61[4] = v86;

    sub_2324C8F70(0, 0, v60, &unk_23254AA80, v61);

    v62 = v88;
    swift_beginAccess();
    if ((*(v62 + 16) & 1) == 0)
    {
      swift_beginAccess();
      *(v62 + 16) = 1;
      sub_232544ED8(&qword_27DD939A8, 255, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
      v68 = swift_allocError();
      v35(v69, v31, v33);
      v92 = v68;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93988, &qword_23254AA30);
      sub_2325460A8();

      return (v42)(v31, v33);
    }

    v42(v31, v33);
  }

  if (v29 == *MEMORY[0x277CD9110])
  {
    (*(v18 + 96))(v26, v17);
    v44 = v89;
    v45 = v90;
    v46 = v16;
    (*(v89 + 32))(v16, v26, v90);
    if (qword_27DD98A90 != -1)
    {
      swift_once();
    }

    v47 = sub_2325458A8();
    __swift_project_value_buffer(v47, qword_27DD98C40);
    v48 = *(v44 + 16);
    v49 = v84;
    v48(v84, v16, v45);
    v50 = sub_232545888();
    v51 = sub_2325461E8();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v91 = v46;
      v53 = v52;
      v54 = v44;
      v55 = swift_slowAlloc();
      *v53 = 138412290;
      sub_232544ED8(&qword_27DD939A8, 255, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
      swift_allocError();
      v48(v56, v49, v45);
      v57 = _swift_stdlib_bridgeErrorToNSError();
      v58 = *(v54 + 8);
      v58(v49, v45);
      *(v53 + 4) = v57;
      *v55 = v57;
      _os_log_impl(&dword_2324C0000, v50, v51, "Browser waiting for connectivity due to %@", v53, 0xCu);
      sub_2324C28AC(v55, &qword_27DD93218, &qword_232547360);
      MEMORY[0x238386450](v55, -1, -1);
      MEMORY[0x238386450](v53, -1, -1);

      return (v58)(v91, v45);
    }

    else
    {

      v70 = *(v44 + 8);
      v70(v49, v45);
      return (v70)(v46, v45);
    }
  }

  if (v29 == *MEMORY[0x277CD9100])
  {
    if (qword_27DD98A90 != -1)
    {
      swift_once();
    }

    v63 = sub_2325458A8();
    __swift_project_value_buffer(v63, qword_27DD98C40);
    v64 = sub_232545888();
    v65 = sub_2325461E8();
    if (!os_log_type_enabled(v64, v65))
    {
      goto LABEL_33;
    }

    v66 = swift_slowAlloc();
    *v66 = 0;
    v67 = "Browser in setup mode";
LABEL_32:
    _os_log_impl(&dword_2324C0000, v64, v65, v67, v66, 2u);
    MEMORY[0x238386450](v66, -1, -1);
LABEL_33:
  }

  if (v29 == *MEMORY[0x277CD90F8])
  {
    if (qword_27DD98A90 != -1)
    {
      swift_once();
    }

    v71 = sub_2325458A8();
    __swift_project_value_buffer(v71, qword_27DD98C40);
    v64 = sub_232545888();
    v65 = sub_2325461E8();
    if (!os_log_type_enabled(v64, v65))
    {
      goto LABEL_33;
    }

    v66 = swift_slowAlloc();
    *v66 = 0;
    v67 = "Browser is ready";
    goto LABEL_32;
  }

  if (v29 == *MEMORY[0x277CD9118])
  {
    if (qword_27DD98A90 != -1)
    {
      swift_once();
    }

    v72 = sub_2325458A8();
    __swift_project_value_buffer(v72, qword_27DD98C40);
    v64 = sub_232545888();
    v65 = sub_2325461E8();
    if (!os_log_type_enabled(v64, v65))
    {
      goto LABEL_33;
    }

    v66 = swift_slowAlloc();
    *v66 = 0;
    v67 = "Browser was cancelled";
    goto LABEL_32;
  }

  if (qword_27DD98A90 != -1)
  {
    swift_once();
  }

  v73 = sub_2325458A8();
  __swift_project_value_buffer(v73, qword_27DD98C40);
  v28(v24, v83, v17);
  v74 = sub_232545888();
  v75 = sub_2325461F8();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v93[0] = v91;
    *v76 = 136315138;
    v28(v21, v24, v17);
    v77 = sub_232545F88();
    v79 = v78;
    v80 = *(v18 + 8);
    LODWORD(v90) = v75;
    v80(v24, v17);
    v81 = sub_2324C2220(v77, v79, v93);

    *(v76 + 4) = v81;
    _os_log_impl(&dword_2324C0000, v74, v90, "Browser entered unknown state %s", v76, 0xCu);
    v82 = v91;
    __swift_destroy_boxed_opaque_existential_0(v91);
    MEMORY[0x238386450](v82, -1, -1);
    MEMORY[0x238386450](v76, -1, -1);
  }

  else
  {

    v80 = *(v18 + 8);
    v80(v24, v17);
  }

  return (v80)(v26, v17);
}

uint64_t sub_232542818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = (*a4 + 144) & 0xFFFFFFFFFFFFLL | 0x6131000000000000;
  v4[3] = *(*a4 + 144);
  v4[4] = v5;
  return MEMORY[0x2822009F8](sub_232542854, a4, 0);
}

uint64_t sub_232542854()
{
  (*(v0 + 24))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2325428B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93630, &qword_232547550);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v42 - v8;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    v43 = v9;
    v48 = MEMORY[0x277D84FA0];
    sub_232544BDC(a1, &v48);
    if (qword_27DD98A90 != -1)
    {
      swift_once();
    }

    v12 = sub_2325458A8();
    __swift_project_value_buffer(v12, qword_27DD98C40);

    v13 = sub_232545888();
    v14 = sub_2325461E8();

    v15 = os_log_type_enabled(v13, v14);
    v44 = a3;
    if (v15)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v42 = a4;
      v18 = v17;
      v47[0] = v17;
      *v16 = 136315394;
      sub_232545E28();
      sub_232544ED8(&qword_27DD93990, 255, MEMORY[0x277CD9168], MEMORY[0x277CD9178]);
      v19 = sub_2325461A8();
      v21 = sub_2324C2220(v19, v20, v47);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2080;
      swift_beginAccess();

      v22 = sub_2325461A8();
      v24 = v23;

      v25 = sub_2324C2220(v22, v24, v47);

      *(v16 + 14) = v25;
      _os_log_impl(&dword_2324C0000, v13, v14, "[Bonjour Browse] Results = %s, Filtered Results = %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x238386450](v18, -1, -1);
      MEMORY[0x238386450](v16, -1, -1);
    }

    swift_beginAccess();
    v26 = v48;
    if (*(v48 + 16))
    {

      v27 = sub_232545888();
      v28 = sub_232546208();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v46[0] = v30;
        *v29 = 134218498;
        *(v29 + 4) = *(v26 + 16);
        *(v29 + 12) = 2080;
        v31 = *(v11 + 112);
        v32 = *(v11 + 120);

        v33 = sub_2324C2220(v31, v32, v46);

        *(v29 + 14) = v33;
        *(v29 + 22) = 2080;
        sub_232545E28();
        sub_232544ED8(&qword_27DD93990, 255, MEMORY[0x277CD9168], MEMORY[0x277CD9178]);

        v34 = sub_2325461A8();
        v36 = v35;

        v37 = sub_2324C2220(v34, v36, v46);

        *(v29 + 24) = v37;
        _os_log_impl(&dword_2324C0000, v27, v28, "Found %ld Bonjour services for %s: %s", v29, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x238386450](v30, -1, -1);
        MEMORY[0x238386450](v29, -1, -1);
      }

      v38 = v44;
      v39 = sub_2325460F8();
      v40 = v43;
      (*(*(v39 - 8) + 56))(v43, 1, 1, v39);
      v41 = swift_allocObject();
      v41[2] = 0;
      v41[3] = 0;
      v41[4] = v11;

      sub_2324C8F70(0, 0, v40, &unk_23254AA68, v41);

      swift_beginAccess();
      if ((*(v38 + 16) & 1) == 0)
      {
        swift_beginAccess();
        *(v38 + 16) = 1;
        v45 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93988, &qword_23254AA30);
        sub_2325460B8();
      }
    }
  }

  return result;
}

uint64_t sub_232542E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = (*a4 + 144) & 0xFFFFFFFFFFFFLL | 0x6131000000000000;
  v4[3] = *(*a4 + 144);
  v4[4] = v5;
  return MEMORY[0x2822009F8](sub_232544F20, a4, 0);
}

uint64_t sub_232542E7C(uint64_t a1, uint64_t a2, double a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93630, &qword_232547550);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16[-v6];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    swift_beginAccess();
    if ((*(a2 + 16) & 1) == 0)
    {
      if (qword_27DD98A90 != -1)
      {
        swift_once();
      }

      v10 = sub_2325458A8();
      __swift_project_value_buffer(v10, qword_27DD98C40);
      v11 = sub_232545888();
      v12 = sub_232546208();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 134217984;
        *(v13 + 4) = a3;
        _os_log_impl(&dword_2324C0000, v11, v12, "About to stop Bonjour browser due to timeout (%f seconds)", v13, 0xCu);
        MEMORY[0x238386450](v13, -1, -1);
      }

      v14 = sub_2325460F8();
      (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
      v15 = swift_allocObject();
      v15[2] = 0;
      v15[3] = 0;
      v15[4] = v9;

      sub_2324C8F70(0, 0, v7, &unk_23254AA40, v15);

      swift_beginAccess();
      *(a2 + 16) = 1;
      v16[7] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93988, &qword_23254AA30);
      sub_2325460B8();
    }
  }

  return result;
}

uint64_t sub_2325430FC()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_23254313C()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_23254318C()
{
  v0 = swift_allocObject();
  sub_2325431C4();
  return v0;
}

void *sub_2325431C4()
{
  v9 = sub_232546238();
  v1 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_232546218();
  MEMORY[0x28223BE20](v4);
  v5 = sub_232545EA8();
  MEMORY[0x28223BE20](v5 - 8);
  swift_defaultActor_initialize();
  v0[14] = 0xD000000000000014;
  v0[15] = 0x800000023254D1D0;
  v0[16] = 0x2E6C61636F6CLL;
  v0[17] = 0xE600000000000000;
  v0[18] = 0;
  v6 = sub_2324CF4E4();
  v8[0] = "_companion-link._tcp";
  v8[1] = v6;
  sub_232545E88();
  v10 = MEMORY[0x277D84F90];
  sub_232544ED8(&qword_2814D4ED0, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932B0, &unk_232547800);
  sub_2324E2640(&qword_2814D4F00, &unk_27DD932B0, &unk_232547800);
  sub_232546378();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v9);
  v0[19] = sub_232546258();
  return v0;
}

uint64_t sub_232543490(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93988, &qword_23254AA30) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_232541B58(a1, v4, v5, v6);
}

uint64_t objectdestroy_8Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93988, &qword_23254AA30);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2325435F4(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93988, &qword_23254AA30) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_2325428B8(a1, v4, v5, v6);
}

uint64_t sub_232543674()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93988, &qword_23254AA30);
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = v0[4];

  return sub_232542E7C(v1, v2, v3);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_232543700()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2324C290C;

  return sub_232542E40(v3, v4, v5, v2);
}

uint64_t sub_232543794(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93630, &qword_232547550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232543804(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_232545E28();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_232544ED8(&qword_27DD93990, 255, MEMORY[0x277CD9168], MEMORY[0x277CD9178]);
  v33 = a2;
  v11 = sub_232545F08();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_232544ED8(&qword_27DD93998, 255, MEMORY[0x277CD9168], MEMORY[0x277CD9180]);
      v21 = sub_232545F48();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_232543E4C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_232543AEC(uint64_t a1)
{
  v2 = v1;
  v36 = sub_232545E28();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD939A0, &qword_23254AA70);
  result = sub_2325463B8();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_232544ED8(&qword_27DD93990, 255, MEMORY[0x277CD9168], MEMORY[0x277CD9178]);
      result = sub_232545F08();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_232543E4C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_232545E28();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_232543AEC(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_2325440F8();
      goto LABEL_12;
    }

    sub_232544330(v10 + 1);
  }

  v12 = *v3;
  sub_232544ED8(&qword_27DD93990, 255, MEMORY[0x277CD9168], MEMORY[0x277CD9178]);
  v13 = sub_232545F08();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_232544ED8(&qword_27DD93998, 255, MEMORY[0x277CD9168], MEMORY[0x277CD9180]);
      v21 = sub_232545F48();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_232546658();
  __break(1u);
  return result;
}

void *sub_2325440F8()
{
  v1 = v0;
  v2 = sub_232545E28();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD939A0, &qword_23254AA70);
  v6 = *v0;
  v7 = sub_2325463A8();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_232544330(uint64_t a1)
{
  v2 = v1;
  v33 = sub_232545E28();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD939A0, &qword_23254AA70);
  v7 = sub_2325463B8();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_232544ED8(&qword_27DD93990, 255, MEMORY[0x277CD9168], MEMORY[0x277CD9178]);
      result = sub_232545F08();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_232544650(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v55 = sub_232545E28();
  v4 = *(v55 - 8);
  v5 = MEMORY[0x28223BE20](v55);
  v51 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v53 = &v50 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v50 - v9;
  v11 = sub_232545C08();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v50 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v50 - v15;
  v54 = a1;
  v17 = sub_232545E18();
  v56 = *(v17 + 16);
  if (v56)
  {
    v18 = v11;
    v19 = 0;
    v57 = (v12 + 8);
    v58 = v12 + 16;
    while (1)
    {
      if (v19 >= *(v17 + 16))
      {
        __break(1u);
        goto LABEL_13;
      }

      v2 = *(v12 + 16);
      v11 = v18;
      v2(v16, v17 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v19, v18);
      sub_232545BF8();
      v20 = sub_232545FF8();

      if (v20)
      {
        break;
      }

      sub_232545BF8();
      v21 = sub_232545FF8();

      if (v21)
      {
        break;
      }

      ++v19;
      (*v57)(v16, v18);
      if (v56 == v19)
      {
        goto LABEL_7;
      }
    }

    if (qword_27DD98A90 == -1)
    {
      goto LABEL_9;
    }

LABEL_13:
    swift_once();
LABEL_9:
    v26 = sub_2325458A8();
    __swift_project_value_buffer(v26, qword_27DD98C40);
    v27 = *(v4 + 16);
    v28 = v10;
    v29 = v55;
    v27(v10, v54, v55);
    v30 = v50;
    v2(v50, v16, v11);
    v31 = sub_232545888();
    v32 = sub_232546208();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v54 = v11;
      v34 = v27;
      v35 = v29;
      v36 = v33;
      v58 = swift_slowAlloc();
      v59 = v58;
      *v36 = 136315394;
      LODWORD(v56) = v32;
      v34(v53, v28, v35);
      v37 = sub_232545F88();
      v38 = v30;
      v40 = v39;
      (*(v4 + 8))(v28, v35);
      v41 = sub_2324C2220(v37, v40, &v59);

      *(v36 + 4) = v41;
      *(v36 + 12) = 2080;
      v42 = sub_232545BF8();
      v44 = v43;
      v45 = *v57;
      v46 = v54;
      (*v57)(v38, v54);
      v47 = sub_2324C2220(v42, v44, &v59);

      *(v36 + 14) = v47;
      _os_log_impl(&dword_2324C0000, v31, v56, "Ignoring Bonjour browse result %s, ifname is %s", v36, 0x16u);
      v48 = v58;
      swift_arrayDestroy();
      MEMORY[0x238386450](v48, -1, -1);
      MEMORY[0x238386450](v36, -1, -1);

      return (v45)(v16, v46);
    }

    else
    {

      v49 = *v57;
      (*v57)(v30, v11);
      (*(v4 + 8))(v28, v29);
      return (v49)(v16, v11);
    }
  }

  else
  {
LABEL_7:

    v22 = v51;
    v23 = v55;
    (*(v4 + 16))(v51, v54, v55);
    v24 = v53;
    sub_232543804(v53, v22);
    return (*(v4 + 8))(v24, v23);
  }
}

void sub_232544BDC(uint64_t a1, uint64_t a2)
{
  v15 = a2;
  v3 = sub_232545E28();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;
  v14 = v4 + 16;
  v11 = (v4 + 8);

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      (*(v4 + 16))(v6, *(a1 + 48) + *(v4 + 72) * (__clz(__rbit64(v9)) | (v13 << 6)), v3);
      sub_232544650(v6, v15);
      if (v16)
      {
        break;
      }

      v9 &= v9 - 1;
      (*v11)(v6, v3);
      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    (*v11)(v6, v3);
LABEL_12:
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

      if (v13 >= v10)
      {
        goto LABEL_12;
      }

      v9 = *(a1 + 56 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_232544DB0()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2324C290C;

  return sub_232542E40(v3, v4, v5, v2);
}

uint64_t sub_232544E44()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2324C2910;

  return sub_232542818(v3, v4, v5, v2);
}

uint64_t sub_232544ED8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_232544F24()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  __swift_allocate_value_buffer(v0, qword_2814D6E50);
  v1 = __swift_project_value_buffer(v0, qword_2814D6E50);
  v2 = IDSCopyLocalDeviceUniqueID();
  if (v2)
  {
    v3 = v2;
    sub_232545F68();

    sub_232545698();
  }

  else
  {
    v5 = sub_2325456F8();
    v6 = *(*(v5 - 8) + 56);

    return v6(v1, 1, 1, v5);
  }
}

uint64_t sub_232545018()
{
  if (qword_2814D6E48 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);

  return __swift_project_value_buffer(v0, qword_2814D6E50);
}

uint64_t static NDFConstants.idsDeviceID.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2814D6E48 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v3 = __swift_project_value_buffer(v2, qword_2814D6E50);

  return sub_2324C1D3C(v3, a1);
}

uint64_t sub_23254546C()
{
  v2[3] = &type metadata for SymptomsFeatures;
  v2[4] = sub_2325454BC();
  v0 = sub_2325457E8();
  __swift_destroy_boxed_opaque_existential_0(v2);
  return v0 & 1;
}

unint64_t sub_2325454BC()
{
  result = qword_2814D5A10;
  if (!qword_2814D5A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814D5A10);
  }

  return result;
}

unint64_t sub_232545514()
{
  result = qword_27DD939B0;
  if (!qword_27DD939B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD939B0);
  }

  return result;
}