uint64_t sub_24AC97BD0()
{
  v2 = *v1;
  *(*v1 + 760) = v0;

  if (v0)
  {
    v3 = *(v2 + 528);
    v4 = sub_24AC98208;
  }

  else
  {
    v5 = *(v2 + 528);

    v4 = sub_24AC9815C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AC97CF8()
{
  v1 = v0[60];
  v2 = v0[79];
  (*(v0[86] + 8))(v0[89], v0[85]);
  sub_24AC212F4(v2, &qword_27EF9E048, &qword_24ACD5910);
  v0[99] = v1;

  return MEMORY[0x2822009F8](sub_24AC986E8, v1, 0);
}

uint64_t sub_24AC97DA4()
{

  v1 = v0[98];
  v2 = v0[90];
  v3 = v0[85];
  v4 = v0[83];
  v5 = v0[81];
  v6 = v0[80];
  v7 = v0[79];
  v8 = *(v0[86] + 8);
  v8(v0[89], v3);
  (*(v5 + 8))(v4, v6);
  v8(v2, v3);
  sub_24AC212F4(v7, &qword_27EF9E048, &qword_24ACD5910);
  if (qword_2814AD8B0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0[91], qword_2814AD8C0);
  v9 = v1;
  v10 = sub_24ACD0470();
  v11 = sub_24ACD0910();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = sub_24ACD0210();
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&dword_24AC18000, v10, v11, "didDiscover error: %@", v12, 0xCu);
    sub_24AC212F4(v13, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v13, -1, -1);
    MEMORY[0x24C22DC60](v12, -1, -1);
  }

  v15 = v0[71];
  v16 = v0[69];
  v17 = v0[68];
  v18 = v0[66];

  v19 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_scanContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v18 + v19, v15, &qword_27EF9E540, &qword_24ACD5868);
  v20 = (*(v16 + 48))(v15, 1, v17);
  v21 = v0[71];
  if (v20)
  {

    sub_24AC212F4(v21, &qword_27EF9E540, &qword_24ACD5868);
  }

  else
  {
    v22 = v0[70];
    v23 = v0[69];
    v24 = v0[68];
    (*(v23 + 16))(v22, v0[71], v24);
    sub_24AC212F4(v21, &qword_27EF9E540, &qword_24ACD5868);
    v0[59] = v1;
    sub_24ACD08A0();
    (*(v23 + 8))(v22, v24);
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_24AC9815C()
{
  v1 = v0[58];
  v2 = v0[79];
  (*(v0[86] + 8))(v0[89], v0[85]);
  sub_24AC212F4(v2, &qword_27EF9E048, &qword_24ACD5910);
  v0[99] = v1;

  return MEMORY[0x2822009F8](sub_24AC986E8, v1, 0);
}

uint64_t sub_24AC98208()
{

  v1 = v0[95];
  v2 = v0[90];
  v3 = v0[85];
  v4 = v0[83];
  v5 = v0[81];
  v6 = v0[80];
  v7 = v0[79];
  v8 = *(v0[86] + 8);
  v8(v0[89], v3);
  (*(v5 + 8))(v4, v6);
  v8(v2, v3);
  sub_24AC212F4(v7, &qword_27EF9E048, &qword_24ACD5910);
  if (qword_2814AD8B0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0[91], qword_2814AD8C0);
  v9 = v1;
  v10 = sub_24ACD0470();
  v11 = sub_24ACD0910();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = sub_24ACD0210();
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&dword_24AC18000, v10, v11, "didDiscover error: %@", v12, 0xCu);
    sub_24AC212F4(v13, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v13, -1, -1);
    MEMORY[0x24C22DC60](v12, -1, -1);
  }

  v15 = v0[71];
  v16 = v0[69];
  v17 = v0[68];
  v18 = v0[66];

  v19 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_scanContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v18 + v19, v15, &qword_27EF9E540, &qword_24ACD5868);
  v20 = (*(v16 + 48))(v15, 1, v17);
  v21 = v0[71];
  if (v20)
  {

    sub_24AC212F4(v21, &qword_27EF9E540, &qword_24ACD5868);
  }

  else
  {
    v22 = v0[70];
    v23 = v0[69];
    v24 = v0[68];
    (*(v23 + 16))(v22, v0[71], v24);
    sub_24AC212F4(v21, &qword_27EF9E540, &qword_24ACD5868);
    v0[59] = v1;
    sub_24ACD08A0();
    (*(v23 + 8))(v22, v24);
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_24AC985C0()
{
  v2 = *v1;
  *(*v1 + 784) = v0;

  if (v0)
  {
    v3 = *(v2 + 528);
    v4 = sub_24AC97DA4;
  }

  else
  {
    v5 = *(v2 + 528);

    v4 = sub_24AC97CF8;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AC986E8()
{
  v1 = v0[99];
  v2 = v0[82];
  v3 = v0[81];
  v4 = v0[80];
  v5 = v0[66];
  v6 = v0[65];
  v7 = v0[64];
  (*(v3 + 16))(v2, v0[83], v4);
  v8 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_lastSeen;
  swift_beginAccess();
  (*(v3 + 40))(v1 + v8, v2, v4);
  swift_endAccess();
  v9 = v1 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_rssi;
  swift_beginAccess();
  *v9 = v6;
  *(v9 + 8) = 0;
  v10 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_advertisementData;
  swift_beginAccess();
  *(v1 + v10) = v7;

  return MEMORY[0x2822009F8](sub_24AC98844, v5, 0);
}

uint64_t sub_24AC98844()
{
  v1 = *(v0 + 792);
  v2 = *(v0 + 736);
  v3 = *(v0 + 720);
  v4 = *(v0 + 528);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = *(v4 + v2);
  *(v4 + v2) = 0x8000000000000000;
  sub_24AC635A0(v1, v3, isUniquelyReferenced_nonNull_native);
  *(v4 + v2) = v53;
  swift_endAccess();
  v6 = (v4 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_garbageCollectInterval);
  if ((*(v4 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_garbageCollectInterval + 16) & 1) == 0)
  {
    v7 = *(v0 + 720);
    v8 = *(v0 + 704);
    v9 = *(v0 + 696);
    v10 = *(v0 + 688);
    v11 = *(v0 + 680);
    v12 = *(v0 + 592);
    v13 = *(v0 + 528);
    v49 = v6[1];
    v51 = *(v0 + 536);
    v48 = *v6;
    v14 = sub_24ACD07C0();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
    (*(v10 + 16))(v8, v7, v11);
    v15 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
    v16 = (*(v10 + 80) + 56) & ~*(v10 + 80);
    v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = swift_allocObject();
    *(v18 + 2) = v13;
    *(v18 + 3) = v15;
    *(v18 + 4) = v48;
    *(v18 + 5) = v49;
    *(v18 + 6) = v13;
    (*(v10 + 32))(&v18[v16], v8, v11);
    *&v18[v17] = v51;
    swift_retain_n();
    v19 = sub_24AC7F080(0, 0, v12, &unk_24ACD5D90, v18);
    v20 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_garbageCollectTasks;
    swift_beginAccess();
    if (*(*(v13 + v20) + 16))
    {
      v21 = *(v0 + 720);

      sub_24AC2AC60(v21);
      if (v22)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EC00, &qword_24ACD4690);
        sub_24ACD0830();
      }

      else
      {
      }
    }

    v23 = *(v0 + 720);
    swift_beginAccess();

    v24 = swift_isUniquelyReferenced_nonNull_native();
    v54 = *(v13 + v20);
    *(v13 + v20) = 0x8000000000000000;
    sub_24AC63FC0(v19, v23, v24);
    *(v13 + v20) = v54;
    swift_endAccess();
  }

  v25 = *(v0 + 576);
  v26 = *(v0 + 552);
  v27 = *(v0 + 544);
  v28 = *(v0 + 528);
  v29 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_scanContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v28 + v29, v25, &qword_27EF9E540, &qword_24ACD5868);
  v30 = (*(v26 + 48))(v25, 1, v27);
  v31 = *(v0 + 792);
  v32 = *(v0 + 720);
  v33 = *(v0 + 688);
  v34 = *(v0 + 680);
  v35 = *(v0 + 664);
  v36 = *(v0 + 648);
  v37 = *(v0 + 640);
  if (v30)
  {
    v38 = *(v0 + 576);

    (*(v36 + 8))(v35, v37);
    (*(v33 + 8))(v32, v34);
    sub_24AC212F4(v38, &qword_27EF9E540, &qword_24ACD5868);
    v39 = 1;
  }

  else
  {
    v50 = *(v0 + 680);
    v52 = *(v0 + 720);
    v40 = *(v0 + 576);
    v41 = *(v0 + 560);
    v42 = *(v0 + 552);
    v43 = *(v0 + 544);
    (*(v42 + 16))(v41, v40, v43);
    sub_24AC212F4(v40, &qword_27EF9E540, &qword_24ACD5868);
    *(v0 + 448) = v31;
    *(v0 + 456) = 0;
    sub_24ACD0890();
    (*(v42 + 8))(v41, v43);
    (*(v36 + 8))(v35, v37);
    (*(v33 + 8))(v52, v50);
    v39 = 0;
  }

  v44 = *(v0 + 584);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E6C0, &qword_24ACD5D80);
  (*(*(v45 - 8) + 56))(v44, v39, 1, v45);
  sub_24AC212F4(v44, &qword_27EF9E6B8, &qword_24ACD5D78);

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_24AC98E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[15] = a6;
  v7[16] = a7;
  v7[13] = a4;
  v7[14] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E5B8, &qword_24ACD58D8);
  v7[17] = v9;
  v7[18] = *(v9 - 8);
  v7[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E540, &qword_24ACD5868);
  v7[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E6B8, &qword_24ACD5D78);
  v7[21] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v7[22] = v10;
  v7[23] = *(v10 - 8);
  v7[24] = swift_task_alloc();
  v11 = sub_24ACD0AF0();
  v7[25] = v11;
  v7[26] = *(v11 - 8);
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC99048, a6, 0);
}

uint64_t sub_24AC99048(uint64_t a1)
{
  sub_24ACD0CB0();
  v2 = swift_task_alloc();
  v1[28] = v2;
  *v2 = v1;
  v2[1] = sub_24AC99108;
  v4 = v1[13];
  v3 = v1[14];

  return sub_24AC59658(v4, v3, 0, 0, 1);
}

uint64_t sub_24AC99108()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *(*v1 + 208);
  v5 = *(*v1 + 200);
  *(*v1 + 232) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 120);
  if (v0)
  {
    v7 = sub_24AC99760;
  }

  else
  {
    v7 = sub_24AC99290;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_24AC99290()
{
  v38 = v0;
  v1 = *(v0 + 232);
  sub_24ACD0850();
  if (v1)
  {

    v2 = *(v0 + 8);
  }

  else
  {
    v3 = *(v0 + 120);
    v4 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_discovered;
    swift_beginAccess();
    v5 = *(v3 + v4);
    if (*(v5 + 16))
    {
      v6 = *(v0 + 128);

      v7 = sub_24AC2AC60(v6);
      if (v8)
      {
        v9 = *(*(v5 + 56) + 8 * v7);

        if (qword_2814AD8B0 != -1)
        {
          swift_once();
        }

        v10 = sub_24ACD0490();
        __swift_project_value_buffer(v10, qword_2814AD8C0);

        v11 = sub_24ACD0470();
        v12 = sub_24ACD0930();

        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v37[0] = v36;
          *v13 = 136315394;

          v14 = sub_24AC39074();
          v16 = v15;

          v17 = sub_24AC29E20(v14, v16, v37);

          *(v13 + 4) = v17;
          *(v13 + 12) = 2080;
          v18 = sub_24ACD0E40();
          v20 = sub_24AC29E20(v18, v19, v37);

          *(v13 + 14) = v20;
          _os_log_impl(&dword_24AC18000, v11, v12, "Garbage collecting %s after %s", v13, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C22DC60](v36, -1, -1);
          MEMORY[0x24C22DC60](v13, -1, -1);
        }

        v21 = *(v0 + 192);
        v22 = *(v0 + 160);
        v23 = *(v0 + 136);
        v24 = *(v0 + 144);
        v25 = *(v0 + 120);
        (*(*(v0 + 184) + 16))(v21, *(v0 + 128), *(v0 + 176));
        swift_beginAccess();
        sub_24AC7F518(0, v21, sub_24AC635A0, sub_24AC5E814);
        swift_endAccess();
        v26 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_scanContinuation;
        swift_beginAccess();
        sub_24AC2B5DC(v25 + v26, v22, &qword_27EF9E540, &qword_24ACD5868);
        if ((*(v24 + 48))(v22, 1, v23))
        {
          v27 = *(v0 + 160);

          sub_24AC212F4(v27, &qword_27EF9E540, &qword_24ACD5868);
          v28 = 1;
        }

        else
        {
          v29 = *(v0 + 160);
          v31 = *(v0 + 144);
          v30 = *(v0 + 152);
          v32 = *(v0 + 136);
          (*(v31 + 16))(v30, v29, v32);
          sub_24AC212F4(v29, &qword_27EF9E540, &qword_24ACD5868);
          *(v0 + 88) = v9;
          *(v0 + 96) = 1;
          sub_24ACD0890();
          (*(v31 + 8))(v30, v32);
          v28 = 0;
        }

        v33 = *(v0 + 168);
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E6C0, &qword_24ACD5D80);
        (*(*(v34 - 8) + 56))(v33, v28, 1, v34);
        sub_24AC212F4(v33, &qword_27EF9E6B8, &qword_24ACD5D78);
      }

      else
      {
      }
    }

    v2 = *(v0 + 8);
  }

  return v2();
}

uint64_t sub_24AC99760()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AC99800(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_24ACD0420();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC99928, v1, 0);
}

uint64_t sub_24AC99928()
{
  v32 = v0;
  v1 = *(v0 + 48);
  v2 = [*(v0 + 40) identifier];
  sub_24ACD03F0();

  type metadata accessor for Peripheral(0);
  sub_24ACD0000();
  v3 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connected;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16))
  {
    v5 = *(v0 + 96);

    v6 = sub_24AC2AC60(v5);
    if (v7)
    {
      v9 = *(v0 + 88);
      v8 = *(v0 + 96);
      v10 = *(v0 + 80);
      *(v0 + 104) = *(*(v4 + 56) + 8 * v6);
      v11 = *(v9 + 8);

      v11(v8, v10);

      v12 = swift_task_alloc();
      *(v0 + 112) = v12;
      *v12 = v0;
      v12[1] = sub_24AC99CCC;

      return sub_24AC80CDC();
    }
  }

  (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
  if (qword_2814AD8B0 != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 40);
  v15 = sub_24ACD0490();
  __swift_project_value_buffer(v15, qword_2814AD8C0);
  v16 = v14;
  v17 = sub_24ACD0470();
  v18 = sub_24ACD0910();

  if (os_log_type_enabled(v17, v18))
  {
    v20 = *(v0 + 64);
    v19 = *(v0 + 72);
    v21 = *(v0 + 56);
    v22 = *(v0 + 40);
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v31 = v24;
    *v23 = 136315138;
    v25 = [v22 identifier];
    sub_24ACD03F0();

    sub_24AC9FA1C(&qword_27EF9E4E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v26 = sub_24ACD0C20();
    v28 = v27;
    (*(v20 + 8))(v19, v21);
    v29 = sub_24AC29E20(v26, v28, &v31);

    *(v23 + 4) = v29;
    _os_log_impl(&dword_24AC18000, v17, v18, "Unable to find Peripheral for %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x24C22DC60](v24, -1, -1);
    MEMORY[0x24C22DC60](v23, -1, -1);
  }

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_24AC99CCC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  *(v3 + 120) = a1;
  *(v3 + 128) = a2;

  return MEMORY[0x2822009F8](sub_24AC99DE4, v4, 0);
}

uint64_t sub_24AC99DE4()
{
  v13 = v0;
  if (qword_27EF9DC60 != -1)
  {
    swift_once();
  }

  v1 = sub_24ACD0490();
  __swift_project_value_buffer(v1, qword_27EF9E528);

  v2 = sub_24ACD0470();
  v3 = sub_24ACD0930();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[16];
  if (v4)
  {
    v6 = v0[15];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    v9 = sub_24AC29E20(v6, v5, &v12);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_24AC18000, v2, v3, "didConnect: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C22DC60](v8, -1, -1);
    MEMORY[0x24C22DC60](v7, -1, -1);
  }

  else
  {
  }

  v10 = swift_task_alloc();
  v0[17] = v10;
  *v10 = v0;
  v10[1] = sub_24AC99FC0;

  return sub_24AC3A08C();
}

uint64_t sub_24AC99FC0()
{
  v1 = *(*v0 + 48);

  return MEMORY[0x2822009F8](sub_24AC9A0D0, v1, 0);
}

uint64_t sub_24AC9A0D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AC9A144(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_24ACD0420();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC9A27C, v2, 0);
}

uint64_t sub_24AC9A27C()
{
  v60 = v0;
  v1 = *(v0 + 80);
  v2 = [*(v0 + 64) identifier];
  sub_24ACD03F0();

  type metadata accessor for Peripheral(0);
  sub_24ACD0000();
  v3 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connected;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16))
  {
    v5 = *(v0 + 136);

    v6 = sub_24AC2AC60(v5);
    if (v7)
    {
      v8 = *(v0 + 136);
      v9 = *(v0 + 112);
      v10 = *(v0 + 120);
      v11 = *(v0 + 72);
      v12 = *(*(v4 + 56) + 8 * v6);
      *(v0 + 144) = v12;
      v13 = *(v10 + 8);

      v13(v8, v9);

      if (v11)
      {
        v14 = *(v0 + 72);
        v15 = v14;
        if (qword_27EF9DC60 != -1)
        {
          swift_once();
        }

        v16 = sub_24ACD0490();
        __swift_project_value_buffer(v16, qword_27EF9E528);

        v17 = v14;
        v18 = sub_24ACD0470();
        v19 = sub_24ACD0910();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v59 = v58;
          *v20 = 136315394;

          v21 = sub_24AC39074();
          v23 = v22;

          v24 = sub_24AC29E20(v21, v23, &v59);

          *(v20 + 4) = v24;
          *(v20 + 12) = 2112;
          v25 = v14;
          v26 = _swift_stdlib_bridgeErrorToNSError();
          *(v20 + 14) = v26;
          *v57 = v26;
          _os_log_impl(&dword_24AC18000, v18, v19, "didFailToConnect: %s ERROR: %@", v20, 0x16u);
          sub_24AC212F4(v57, &qword_27EF9E6A0, &qword_24ACD5590);
          MEMORY[0x24C22DC60](v57, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v58);
          MEMORY[0x24C22DC60](v58, -1, -1);
          MEMORY[0x24C22DC60](v20, -1, -1);
        }

        else
        {
        }
      }

      else
      {
        if (qword_27EF9DC60 != -1)
        {
          swift_once();
        }

        v45 = sub_24ACD0490();
        __swift_project_value_buffer(v45, qword_27EF9E528);

        v46 = sub_24ACD0470();
        v47 = sub_24ACD0910();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v59 = v49;
          *v48 = 136315138;

          v50 = sub_24AC39074();
          v52 = v51;

          v53 = sub_24AC29E20(v50, v52, &v59);

          *(v48 + 4) = v53;
          _os_log_impl(&dword_24AC18000, v46, v47, "didFailToConnect: %s", v48, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v49);
          MEMORY[0x24C22DC60](v49, -1, -1);
          MEMORY[0x24C22DC60](v48, -1, -1);
        }
      }

      v54 = *(v0 + 128);
      (*(*(v0 + 120) + 16))(v54, v12 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_id, *(v0 + 112));
      swift_beginAccess();
      sub_24AC7F518(0, v54, sub_24AC635A0, sub_24AC5E814);
      swift_endAccess();
      v55 = swift_task_alloc();
      *(v0 + 152) = v55;
      *v55 = v0;
      v55[1] = sub_24AC9A9B0;
      v56 = *(v0 + 72);

      return sub_24AC3A510(v56);
    }
  }

  (*(*(v0 + 120) + 8))(*(v0 + 136), *(v0 + 112));
  if (qword_2814AD8B0 != -1)
  {
    swift_once();
  }

  v27 = *(v0 + 64);
  v28 = sub_24ACD0490();
  __swift_project_value_buffer(v28, qword_2814AD8C0);
  v29 = v27;
  v30 = sub_24ACD0470();
  v31 = sub_24ACD0910();

  if (os_log_type_enabled(v30, v31))
  {
    v33 = *(v0 + 96);
    v32 = *(v0 + 104);
    v34 = *(v0 + 88);
    v35 = *(v0 + 64);
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v59 = v37;
    *v36 = 136315138;
    v38 = [v35 0x278FFD678];
    sub_24ACD03F0();

    sub_24AC9FA1C(&qword_27EF9E4E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v39 = sub_24ACD0C20();
    v41 = v40;
    (*(v33 + 8))(v32, v34);
    v42 = sub_24AC29E20(v39, v41, &v59);

    *(v36 + 4) = v42;
    _os_log_impl(&dword_24AC18000, v30, v31, "Unable to find Peripheral for %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x24C22DC60](v37, -1, -1);
    MEMORY[0x24C22DC60](v36, -1, -1);
  }

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_24AC9A9B0()
{
  v1 = *(*v0 + 80);

  return MEMORY[0x2822009F8](sub_24AC9AAC0, v1, 0);
}

uint64_t sub_24AC9AAC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AC9AB3C(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = sub_24ACD0420();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v3[17] = v5;
  v3[18] = *(v5 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC9AC74, v2, 0);
}

uint64_t sub_24AC9AC74()
{
  v63 = v0;
  v1 = *(v0 + 104);
  v2 = [*(v0 + 88) identifier];
  sub_24ACD03F0();

  type metadata accessor for Peripheral(0);
  sub_24ACD0000();
  v3 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connected;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16))
  {
    v5 = *(v0 + 160);

    v6 = sub_24AC2AC60(v5);
    if (v7)
    {
      v8 = *(v0 + 160);
      v9 = *(v0 + 136);
      v10 = *(v0 + 144);
      v11 = *(v0 + 96);
      v12 = *(*(v4 + 56) + 8 * v6);
      *(v0 + 168) = v12;
      v13 = *(v10 + 8);

      v13(v8, v9);

      if (v11)
      {
        v14 = *(v0 + 96);
        v15 = v14;
        if (qword_27EF9DC60 != -1)
        {
          swift_once();
        }

        v16 = sub_24ACD0490();
        __swift_project_value_buffer(v16, qword_27EF9E528);

        v17 = v14;
        v18 = sub_24ACD0470();
        v19 = sub_24ACD0930();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v62 = v22;
          *v20 = 136315394;

          v23 = sub_24AC39074();
          v25 = v24;

          v26 = sub_24AC29E20(v23, v25, &v62);

          *(v20 + 4) = v26;
          *(v20 + 12) = 2112;
          v27 = v14;
          v28 = _swift_stdlib_bridgeErrorToNSError();
          *(v20 + 14) = v28;
          *v21 = v28;
          _os_log_impl(&dword_24AC18000, v18, v19, "didDisconnectPeripheral: %s, ERROR: %@", v20, 0x16u);
          sub_24AC212F4(v21, &qword_27EF9E6A0, &qword_24ACD5590);
          MEMORY[0x24C22DC60](v21, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v22);
          MEMORY[0x24C22DC60](v22, -1, -1);
          MEMORY[0x24C22DC60](v20, -1, -1);
        }

        else
        {
        }
      }

      else
      {
        if (qword_27EF9DC60 != -1)
        {
          swift_once();
        }

        v47 = sub_24ACD0490();
        __swift_project_value_buffer(v47, qword_27EF9E528);

        v48 = sub_24ACD0470();
        v49 = sub_24ACD0930();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v62 = v51;
          *v50 = 136315138;

          v52 = sub_24AC39074();
          v54 = v53;

          v55 = sub_24AC29E20(v52, v54, &v62);

          *(v50 + 4) = v55;
          _os_log_impl(&dword_24AC18000, v48, v49, "didDisconnectPeripheral: %s", v50, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v51);
          MEMORY[0x24C22DC60](v51, -1, -1);
          MEMORY[0x24C22DC60](v50, -1, -1);
        }
      }

      v56 = *(v0 + 152);
      v57 = *(v0 + 136);
      v58 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_id;
      v59 = *(*(v0 + 144) + 16);
      v59(v56, v12 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_id, v57);
      swift_beginAccess();
      sub_24AC7F518(0, v56, sub_24AC635A0, sub_24AC5E814);
      swift_endAccess();
      v59(v56, v12 + v58, v57);
      swift_beginAccess();
      sub_24AC7F518(0, v56, sub_24AC635A0, sub_24AC5E814);
      swift_endAccess();
      type metadata accessor for CentralManager.Error(0);
      sub_24AC9FA1C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
      v60 = swift_allocError();
      *(v0 + 176) = v60;
      swift_storeEnumTagMultiPayload();
      v61 = swift_task_alloc();
      *(v0 + 184) = v61;
      *v61 = v0;
      v61[1] = sub_24AC9B488;

      return sub_24AC39224(v60);
    }
  }

  (*(*(v0 + 144) + 8))(*(v0 + 160), *(v0 + 136));
  if (qword_2814AD8B0 != -1)
  {
    swift_once();
  }

  v29 = *(v0 + 88);
  v30 = sub_24ACD0490();
  __swift_project_value_buffer(v30, qword_2814AD8C0);
  v31 = v29;
  v32 = sub_24ACD0470();
  v33 = sub_24ACD0910();

  if (os_log_type_enabled(v32, v33))
  {
    v35 = *(v0 + 120);
    v34 = *(v0 + 128);
    v36 = *(v0 + 112);
    v37 = *(v0 + 88);
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v62 = v39;
    *v38 = 136315138;
    v40 = [v37 identifier];
    sub_24ACD03F0();

    sub_24AC9FA1C(&qword_27EF9E4E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v41 = sub_24ACD0C20();
    v43 = v42;
    (*(v35 + 8))(v34, v36);
    v44 = sub_24AC29E20(v41, v43, &v62);

    *(v38 + 4) = v44;
    _os_log_impl(&dword_24AC18000, v32, v33, "Unable to find Peripheral for %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x24C22DC60](v39, -1, -1);
    MEMORY[0x24C22DC60](v38, -1, -1);
  }

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_24AC9B488()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 192) = v4;
  *v4 = v3;
  v4[1] = sub_24AC9B604;
  v5 = *(v1 + 96);

  return sub_24AC3AB10(v5);
}

uint64_t sub_24AC9B604()
{
  v1 = *(*v0 + 104);

  return MEMORY[0x2822009F8](sub_24AC9B714, v1, 0);
}

uint64_t sub_24AC9B714()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AC9B790(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v3[8] = *v2;
  sub_24ACD0420();
  v3[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E558, qword_24ACD5878);
  v3[13] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E580, &qword_24ACD5890);
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC9B954, v2, 0);
}

uint64_t sub_24AC9B954()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[7];
  v5 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connectionEventsStreamContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v4 + v5, v3, &unk_27EF9E558, qword_24ACD5878);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_24AC212F4(v0[13], &unk_27EF9E558, qword_24ACD5878);
  }

  else
  {
    v7 = v0[15];
    v6 = v0[16];
    v9 = v0[11];
    v8 = v0[12];
    v17 = v0[14];
    v18 = v0[10];
    v10 = v0[8];
    v12 = v0[5];
    v11 = v0[6];
    (*(v7 + 32))(v6, v0[13]);
    v13 = [v11 identifier];
    sub_24ACD03F0();

    type metadata accessor for Peripheral(0);
    sub_24ACD0000();
    sub_24ACD00C0();
    v14 = swift_task_alloc();
    v14[2] = v12;
    v14[3] = v8;
    v14[4] = v6;
    v14[5] = v10;
    sub_24ACD00A0();

    (*(v9 + 8))(v8, v18);
    (*(v7 + 8))(v6, v17);
  }

  v15 = v0[1];

  return v15();
}

void sub_24AC9BB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v64 = a1;
  v65 = a3;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E6A8, &qword_24ACD5D00);
  MEMORY[0x28223BE20](v61);
  v8 = (&v53 - v7);
  v59 = type metadata accessor for CentralManager.ConnectedState(0);
  MEMORY[0x28223BE20](v59);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E6B0, &qword_24ACD5D08);
  v62 = *(v11 - 8);
  v63 = v11;
  MEMORY[0x28223BE20](v11);
  v60 = &v53 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v53 - v18;
  if (a2 == 1)
  {
    v57 = a4;
    v58 = v8;
    if (qword_2814AD8B0 != -1)
    {
      swift_once();
    }

    v31 = sub_24ACD0490();
    __swift_project_value_buffer(v31, qword_2814AD8C0);
    v55 = *(v14 + 16);
    v55(v17, v65, v13);
    v32 = sub_24ACD0470();
    v33 = sub_24ACD0900();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v53 = v34;
      v54 = swift_slowAlloc();
      v67 = v54;
      *v34 = 136446210;
      sub_24AC2B6A8(&qword_27EF9E108, &qword_27EF9E040, qword_24ACD4100, MEMORY[0x277D088C8]);
      v35 = sub_24ACD0C20();
      v56 = v4;
      v37 = v36;
      (*(v14 + 8))(v17, v13);
      v38 = sub_24AC29E20(v35, v37, &v67);

      v39 = v53;
      *(v53 + 1) = v38;
      v40 = v39;
      _os_log_impl(&dword_24AC18000, v32, v33, "Yielding connection event for %{public}s", v39, 0xCu);
      v41 = v54;
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x24C22DC60](v41, -1, -1);
      MEMORY[0x24C22DC60](v40, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v17, v13);
    }

    goto LABEL_18;
  }

  if (!a2)
  {
    v57 = a4;
    v58 = v8;
    if (qword_2814AD8B0 != -1)
    {
      swift_once();
    }

    v20 = sub_24ACD0490();
    __swift_project_value_buffer(v20, qword_2814AD8C0);
    v55 = *(v14 + 16);
    v55(v19, v65, v13);
    v21 = sub_24ACD0470();
    v22 = sub_24ACD0900();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v53 = v23;
      v54 = swift_slowAlloc();
      v67 = v54;
      *v23 = 136446210;
      sub_24AC2B6A8(&qword_27EF9E108, &qword_27EF9E040, qword_24ACD4100, MEMORY[0x277D088C8]);
      v24 = sub_24ACD0C20();
      v56 = v4;
      v26 = v25;
      (*(v14 + 8))(v19, v13);
      v27 = sub_24AC29E20(v24, v26, &v67);

      v28 = v53;
      *(v53 + 1) = v27;
      v29 = v28;
      _os_log_impl(&dword_24AC18000, v21, v22, "Yielding disconnection event for %{public}s", v28, 0xCu);
      v30 = v54;
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x24C22DC60](v30, -1, -1);
      MEMORY[0x24C22DC60](v29, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v19, v13);
    }

LABEL_18:
    v55(v10, v65, v13);
    swift_storeEnumTagMultiPayload();
    v50 = *(v61 + 48);
    v51 = v58;
    *v58 = v64;
    sub_24ACA16E0(v10, v51 + v50);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E580, &qword_24ACD5890);
    v52 = v60;
    sub_24ACD07F0();
    (*(v62 + 8))(v52, v63);
    return;
  }

  if (qword_27EF9DC60 != -1)
  {
    swift_once();
  }

  v42 = sub_24ACD0490();
  __swift_project_value_buffer(v42, qword_27EF9E528);
  v43 = sub_24ACD0470();
  v44 = sub_24ACD0920();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v67 = v46;
    *v45 = 136315138;
    v66 = a2;
    type metadata accessor for CBConnectionEvent(0);
    v47 = sub_24ACD05A0();
    v49 = sub_24AC29E20(v47, v48, &v67);

    *(v45 + 4) = v49;
    _os_log_impl(&dword_24AC18000, v43, v44, "Unhandled CBConnectionEvent: %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x24C22DC60](v46, -1, -1);
    MEMORY[0x24C22DC60](v45, -1, -1);
  }
}

uint64_t sub_24AC9C338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_24AC9C35C, 0, 0);
}

uint64_t sub_24AC9C35C()
{
  Strong = swift_weakLoadStrong();
  *(v0 + 40) = Strong;
  if (Strong)
  {
    v2 = [*(v0 + 32) state];
    v3 = swift_task_alloc();
    *(v0 + 48) = v3;
    *v3 = v0;
    v3[1] = sub_24AC9C45C;

    return sub_24AC95064(v2);
  }

  else
  {
    **(v0 + 16) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_24AC9C45C()
{

  return MEMORY[0x2822009F8](sub_24ACA2614, 0, 0);
}

uint64_t sub_24AC9C5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_24AC9C604, 0, 0);
}

uint64_t sub_24AC9C604()
{
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 48);
    v3 = sub_24AC47D84(*(v0 + 40));
    *(v0 + 64) = v3;
    v4 = [v2 integerValue];
    v5 = swift_task_alloc();
    *(v0 + 72) = v5;
    *v5 = v0;
    v5[1] = sub_24AC9C72C;
    v6 = *(v0 + 32);

    return sub_24AC96934(v6, v3, v4);
  }

  else
  {
    **(v0 + 16) = 1;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_24AC9C72C()
{

  return MEMORY[0x2822009F8](sub_24AC9C860, 0, 0);
}

uint64_t sub_24AC9C940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_24AC9C964, 0, 0);
}

uint64_t sub_24AC9C964()
{
  Strong = swift_weakLoadStrong();
  *(v0 + 40) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 48) = v2;
    *v2 = v0;
    v2[1] = sub_24AC9CA54;
    v3 = *(v0 + 32);

    return sub_24AC99800(v3);
  }

  else
  {
    **(v0 + 16) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_24AC9CA54()
{

  return MEMORY[0x2822009F8](sub_24AC9CB6C, 0, 0);
}

uint64_t sub_24AC9CC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x2822009F8](sub_24AC9CC4C, 0, 0);
}

uint64_t sub_24AC9CC4C()
{
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 56) = v2;
    *v2 = v0;
    v2[1] = sub_24AC9CD3C;
    v4 = *(v0 + 32);
    v3 = *(v0 + 40);

    return sub_24AC9A144(v4, v3);
  }

  else
  {
    **(v0 + 16) = 1;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_24AC9CD3C()
{

  return MEMORY[0x2822009F8](sub_24AC9CE54, 0, 0);
}

uint64_t sub_24AC9CE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x2822009F8](sub_24AC9CEC0, 0, 0);
}

uint64_t sub_24AC9CEC0()
{
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 56) = v2;
    *v2 = v0;
    v2[1] = sub_24AC9CFB0;
    v4 = *(v0 + 32);
    v3 = *(v0 + 40);

    return sub_24AC9AB3C(v4, v3);
  }

  else
  {
    **(v0 + 16) = 1;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_24AC9CFB0()
{

  return MEMORY[0x2822009F8](sub_24ACA2618, 0, 0);
}

void sub_24AC9D0E8(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v12 = a3;
  v13 = a4;
  v14 = a1;
  v15 = a5;
  sub_24ACA11EC(v13, a5, a6, a7);
}

uint64_t sub_24AC9D188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x2822009F8](sub_24AC9D1AC, 0, 0);
}

uint64_t sub_24AC9D1AC()
{
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 56) = v2;
    *v2 = v0;
    v2[1] = sub_24AC9CFB0;
    v4 = *(v0 + 32);
    v3 = *(v0 + 40);

    return sub_24AC9B790(v4, v3);
  }

  else
  {
    **(v0 + 16) = 1;
    v6 = *(v0 + 8);

    return v6();
  }
}

id sub_24AC9D34C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DelegateTrampoline_CBCentralManagerPrivateDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24AC9D3D0()
{
  swift_weakDestroy();
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

FindMyBluetooth::CentralManager::State_optional __swiftcall CentralManager.State.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue > 0xA)
  {
    *v1 = 7;
  }

  else
  {
    *v1 = byte_24ACD5ED2[rawValue];
  }

  return rawValue;
}

uint64_t sub_24AC9D478()
{
  v1 = *v0;
  sub_24ACD0D10();
  MEMORY[0x24C22D480](qword_24ACD5EE0[v1]);
  return sub_24ACD0D50();
}

uint64_t sub_24AC9D500(uint64_t a1)
{
  v2 = *v1;
  sub_24ACD0D10();
  MEMORY[0x24C22D480](qword_24ACD5EE0[v2]);
  return sub_24ACD0D50();
}

uint64_t sub_24AC9D5FC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_24ACD0490();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_24ACD0480();
}

uint64_t sub_24AC9D698@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_24ACD0490();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_24AC9D730(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AC9D828;

  return v6(a1);
}

uint64_t sub_24AC9D828()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24AC9D920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_24AC2ABC8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24AC5EEE4();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_24ACD0420();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E690, &qword_24ACD4C10);
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_24AC9E118(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E690, &qword_24ACD4C10);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

unint64_t sub_24AC9DAD8(int64_t a1, uint64_t a2)
{
  v40 = sub_24ACD0420();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_24ACD09B0();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_24AC9FA1C(&qword_2814AE200, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v23 = sub_24ACD0520();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_24AC9DDF8(int64_t a1, uint64_t a2)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - v7;
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_24ACD09B0();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_24AC2B6A8(&qword_27EF9DFC0, &qword_27EF9E040, qword_24ACD4100, MEMORY[0x277D088B8]);
      v23 = sub_24ACD0520();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_24AC9E118(int64_t a1, uint64_t a2)
{
  v4 = sub_24ACD0420();
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
    v13 = sub_24ACD09B0();
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
      sub_24AC9FA1C(&qword_2814AE200, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v22 = sub_24ACD0520();
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
          v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E690, &qword_24ACD4C10) - 8) + 72);
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

_OWORD *sub_24AC9E468(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  LOBYTE(v23) = a1;
  v24 = MEMORY[0x277D839B0];
  v9 = *a5;
  v11 = sub_24AC2AB50(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 32 * v11);
      __swift_destroy_boxed_opaque_existential_0(v18);
      return sub_24AC1BFB8(&v23, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_24AC5E670();
    goto LABEL_7;
  }

  sub_24AC5C328(v14, a4 & 1);
  v20 = sub_24AC2AB50(a2, a3);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_24ACD0C80();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = __swift_mutable_project_boxed_opaque_existential_0(&v23, MEMORY[0x277D839B0]);
  sub_24AC9E9A0(v11, a2, a3, *v22, v17);

  return __swift_destroy_boxed_opaque_existential_0(&v23);
}

_OWORD *sub_24AC9E5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v10 = MEMORY[0x277CC9318];
  v29 = MEMORY[0x277CC9318];
  *&v28 = a1;
  *(&v28 + 1) = a2;
  v11 = *a6;
  v13 = sub_24AC2AB50(a3, a4);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a5 & 1) != 0)
  {
LABEL_7:
    v19 = *a6;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_0(v20);
      return sub_24AC1BFB8(&v28, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a5 & 1) == 0)
  {
    sub_24AC5E670();
    goto LABEL_7;
  }

  sub_24AC5C328(v16, a5 & 1);
  v22 = sub_24AC2AB50(a3, a4);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_24ACD0C80();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a6;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = __swift_mutable_project_boxed_opaque_existential_0(&v28, v10);
  MEMORY[0x28223BE20](v24);
  v26 = (&v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  sub_24AC9EA24(v13, a3, a4, *v26, v26[1], v19);

  return __swift_destroy_boxed_opaque_existential_0(&v28);
}

_OWORD *sub_24AC9E7A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v10 = sub_24AC2B8F8(0, &qword_27EF9E708, 0x277CCABB0);
  v29 = v10;
  *&v28 = a1;
  v11 = *a5;
  v13 = sub_24AC2AB50(a2, a3);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a4 & 1) != 0)
  {
LABEL_7:
    v19 = *a5;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_0(v20);
      return sub_24AC1BFB8(&v28, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    sub_24AC5E670();
    goto LABEL_7;
  }

  sub_24AC5C328(v16, a4 & 1);
  v22 = sub_24AC2AB50(a2, a3);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_24ACD0C80();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a5;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = __swift_mutable_project_boxed_opaque_existential_0(&v28, v10);
  MEMORY[0x28223BE20](v24);
  v26 = (&v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  sub_24AC9EAA8(v13, a2, a3, *v26, v19);

  return __swift_destroy_boxed_opaque_existential_0(&v28);
}

_OWORD *sub_24AC9E9A0(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v11) = a4;
  v12 = MEMORY[0x277D839B0];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_24AC1BFB8(&v11, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_24AC9EA24(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = MEMORY[0x277CC9318];
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_24AC1BFB8(&v12, (a6[7] + 32 * a1));
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

_OWORD *sub_24AC9EAA8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = sub_24AC2B8F8(0, &qword_27EF9E708, 0x277CCABB0);
  *&v15 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  result = sub_24AC1BFB8(&v15, (a5[7] + 32 * a1));
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

uint64_t sub_24AC9EB5C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_24AC9EC50;

  return v5(v2 + 32);
}

uint64_t sub_24AC9EC50()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

unint64_t sub_24AC9ED64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E710, &unk_24ACD4680);
    v3 = sub_24ACD0B60();
    v4 = a1 + 32;

    while (1)
    {
      sub_24AC2B5DC(v4, &v13, qword_27EF9E180, &qword_24ACD3790);
      v5 = v13;
      v6 = v14;
      result = sub_24AC2AB50(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_24AC1BFB8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_24AC9EE94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E760, &qword_24ACD5EC0);
    v3 = sub_24ACD0B60();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_24AC46630(v7, v8);
      result = sub_24AC2AB50(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_24AC9EFAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E300, &qword_24ACD5DC0);
  v3 = sub_24ACD0B60();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  result = sub_24AC2ADA0(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x277D84F98];
  }

  v9 = (a1 + 72);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    v10 = (v3[7] + 16 * result);
    *v10 = v5;
    v10[1] = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    sub_24AC46630(v5, v6);
    if (!--v1)
    {
      return v3;
    }

    v4 = *(v9 - 16);
    v5 = *(v9 - 1);
    v6 = *v9;
    result = sub_24AC2ADA0(v4);
    v9 += 3;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_24AC9F0B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E6D0, &qword_24ACD5DA0);
    v3 = sub_24ACD0B60();
    v4 = a1 + 32;

    while (1)
    {
      sub_24AC2B5DC(v4, v13, &qword_27EF9E6D8, &qword_24ACD5DA8);
      result = sub_24AC2AC84(v13);
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
      result = sub_24AC1BFB8(&v15, (v3[7] + 32 * result));
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

unint64_t sub_24AC9F1F4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_24ACD0B60();

    for (i = (a1 + 40); ; i += 2)
    {
      v7 = *i;
      v8 = *(i - 1);

      result = sub_24AC2ADE8(v8);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + 8 * result) = v8;
      *(v5[7] + 8 * result) = v7;
      v11 = v5[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v5[2] = v13;
      if (!--v3)
      {

        return v5;
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

uint64_t sub_24AC9F300()
{
  if (qword_27EF9DC58 != -1)
  {
    swift_once();
  }

  v1 = qword_27EF9E518;
  *(v0 + 32) = qword_27EF9E518;

  return MEMORY[0x2822009F8](sub_24AC9F398, v1, 0);
}

uint64_t sub_24AC9F398()
{
  if (swift_weakLoadStrong())
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    *(v0 + 16) = 2;
    *(v0 + 24) = 0;
    type metadata accessor for CentralManager(0);
    swift_allocObject();
    v3 = swift_task_alloc();
    *(v0 + 40) = v3;
    *v3 = v0;
    v3[1] = sub_24AC9F498;

    return sub_24AC81DE4(1, (v0 + 16));
  }
}

uint64_t sub_24AC9F498(uint64_t a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_24AC9F5B0, v2, 0);
}

uint64_t sub_24AC9F5B0()
{
  swift_weakAssign();
  v1 = *(v0 + 48);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24AC9F648(uint64_t a1)
{
  v2 = sub_24ACD0420();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v29 - v8;
  v10 = *a1;
  LOBYTE(a1) = *(a1 + 8);
  v11 = sub_24AC9ED64(MEMORY[0x277D84F90]);
  if (a1)
  {
    v12 = sub_24ACD0590();
    v14 = v13;
    v37 = v10;
    sub_24ACBD8E0();
    v15 = sub_24ACD0D60();
    v39 = sub_24AC2B8F8(0, &qword_27EF9E708, 0x277CCABB0);
    *&v38 = v15;
    sub_24AC1BFB8(&v38, &v35);
    LOBYTE(v15) = swift_isUniquelyReferenced_nonNull_native();
    v34 = v11;
    v16 = __swift_mutable_project_boxed_opaque_existential_0(&v35, v36);
    MEMORY[0x28223BE20](v16);
    v18 = (v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18);
    sub_24AC9E7A4(*v18, v12, v14, v15, &v34);

    __swift_destroy_boxed_opaque_existential_0(&v35);
    return 0;
  }

  else
  {
    v21 = *(v10 + 16);
    result = MEMORY[0x277D84F90];
    if (v21)
    {
      v29[0] = v11;
      *&v38 = MEMORY[0x277D84F90];
      v33 = v2;
      sub_24ACD0AB0();
      v22 = objc_opt_self();
      v24 = *(v7 + 16);
      v23 = v7 + 16;
      v31 = v24;
      v32 = v22;
      v25 = v10 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
      v26 = *(v23 + 56);
      v29[1] = v23;
      v30 = v26;
      do
      {
        v31(v9, v25, v6);
        sub_24ACCFFE0();
        v27 = sub_24ACD03D0();
        v28 = [v32 UUIDWithNSUUID_];

        (*(v3 + 8))(v5, v33);
        (*(v23 - 8))(v9, v6);
        sub_24ACD0A90();
        sub_24ACD0AC0();
        sub_24ACD0AD0();
        sub_24ACD0AA0();
        v25 += v30;
        --v21;
      }

      while (v21);
      return v38;
    }
  }

  return result;
}

uint64_t sub_24AC9FA1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24AC9FA64(uint64_t a1)
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
  v10[1] = sub_24AC214AC;

  return sub_24AC869B8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_24AC9FBD8(void *a1)
{
  a1[1] = sub_24AC9FA1C(&unk_2814AD880, type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  a1[2] = sub_24AC9FA1C(&qword_2814AD858, type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  result = sub_24AC9FA1C(&unk_2814AD860, type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  a1[3] = result;
  return result;
}

unint64_t sub_24AC9FD14()
{
  result = qword_2814AD8E0;
  if (!qword_2814AD8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814AD8E0);
  }

  return result;
}

void sub_24AC9FD70(uint64_t a1)
{
  sub_24AC79374(319, &qword_2814AE250, type metadata accessor for CentralManager);
  if (v1 <= 0x3F)
  {
    sub_24AC542BC(319, &qword_2814ACFE8, &unk_27EF9E5B8, &qword_24ACD58D8);
    if (v2 <= 0x3F)
    {
      sub_24AC542BC(319, &qword_2814AD000, &qword_27EF9E578, qword_24ACD8D30);
      if (v3 <= 0x3F)
      {
        sub_24AC542BC(319, &qword_2814AD008, &qword_27EF9E580, &qword_24ACD5890);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t dispatch thunk of CentralManager.stateStream()(uint64_t a1)
{
  v6 = (*(*v1 + 584) + **(*v1 + 584));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AC214AC;

  return v6(a1);
}

uint64_t dispatch thunk of CentralManager.scanForPeripherals(scanMode:garbageCollectInterval:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 608) + **(*v4 + 608));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_24AC214AC;

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CentralManager.retrievePeripheral(macAddress:)(uint64_t a1)
{
  v6 = (*(*v1 + 616) + **(*v1 + 616));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AC2A800;

  return v6(a1);
}

uint64_t dispatch thunk of CentralManager.retrievePeripherals(serialNumbers:)(uint64_t a1)
{
  v6 = (*(*v1 + 624) + **(*v1 + 624));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AC2BA00;

  return v6(a1);
}

uint64_t dispatch thunk of CentralManager.retrievePeripherals(beaconIdentifiers:)(uint64_t a1)
{
  v6 = (*(*v1 + 632) + **(*v1 + 632));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AC2BA00;

  return v6(a1);
}

uint64_t dispatch thunk of CentralManager.retrievePeripherals(identifiers:)(uint64_t a1)
{
  v6 = (*(*v1 + 640) + **(*v1 + 640));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AC2BA00;

  return v6(a1);
}

uint64_t dispatch thunk of CentralManager.retrieveConnectedPeripherals(services:)(uint64_t a1)
{
  v6 = (*(*v1 + 648) + **(*v1 + 648));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AC2BA00;

  return v6(a1);
}

uint64_t getEnumTagSinglePayload for CentralManager.State(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CentralManager.State(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24ACA0A7C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24ACA0AB4(uint64_t a1)
{
  sub_24ACA0B14();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_24ACA0B14()
{
  if (!qword_2814AE268)
  {
    sub_24AC79374(0, &qword_2814AE260, type metadata accessor for Peripheral);
    if (!v1)
    {
      atomic_store(v0, &qword_2814AE268);
    }
  }
}

uint64_t getEnumTagSinglePayload for Logger(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for Logger(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_24ACA0C60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AC214AC;

  return sub_24AC9C338(a1, v4, v5, v7, v6);
}

uint64_t sub_24ACA0D20(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AC214AC;

  return sub_24AC9EB5C(a1, v4);
}

uint64_t sub_24ACA0DD8(void *a1, uint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_24ACD04C0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *&v3[OBJC_IVAR____TtC15FindMyBluetoothP33_70F3B43C606FCD1D14F1E1CF221D31A750DelegateTrampoline_CBCentralManagerPrivateDelegate_delegateQueue];
  *v13 = v14;
  (*(v11 + 104))(v13, *MEMORY[0x277D85200], v10);
  v15 = v14;
  LOBYTE(v14) = sub_24ACD04D0();
  result = (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v17 = sub_24ACD07C0();
    (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v3;
    v18[5] = a1;
    v18[6] = a2;
    v18[7] = a3;
    v19 = v3;
    v20 = a1;

    v21 = a3;
    sub_24AC7ED6C(0, 0, v9, &unk_24ACD5D68, v18);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24ACA0FF4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_24ACD04C0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *&v3[OBJC_IVAR____TtC15FindMyBluetoothP33_70F3B43C606FCD1D14F1E1CF221D31A750DelegateTrampoline_CBCentralManagerPrivateDelegate_delegateQueue];
  *v12 = v13;
  (*(v10 + 104))(v12, *MEMORY[0x277D85200], v9);
  v14 = v13;
  LOBYTE(v13) = sub_24ACD04D0();
  result = (*(v10 + 8))(v12, v9);
  if (v13)
  {
    v16 = sub_24ACD07C0();
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v3;
    v17[5] = a1;
    v18 = v3;
    v19 = a1;
    sub_24AC7ED6C(0, 0, v8, a3, v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24ACA11EC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = sub_24ACD04C0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *&v4[OBJC_IVAR____TtC15FindMyBluetoothP33_70F3B43C606FCD1D14F1E1CF221D31A750DelegateTrampoline_CBCentralManagerPrivateDelegate_delegateQueue];
  *v14 = v15;
  (*(v12 + 104))(v14, *MEMORY[0x277D85200], v11);
  v16 = v15;
  LOBYTE(v15) = sub_24ACD04D0();
  result = (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v18 = sub_24ACD07C0();
    (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v4;
    v19[5] = a1;
    v19[6] = a2;
    v20 = v4;
    v21 = a1;
    v22 = a2;
    sub_24AC7ED6C(0, 0, v10, a4, v19);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24ACA13F4(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_24ACD04C0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *&v2[OBJC_IVAR____TtC15FindMyBluetoothP33_70F3B43C606FCD1D14F1E1CF221D31A750DelegateTrampoline_CBCentralManagerPrivateDelegate_delegateQueue];
  *v11 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v13 = v12;
  LOBYTE(v12) = sub_24ACD04D0();
  result = (*(v9 + 8))(v11, v8);
  if (v12)
  {
    v15 = sub_24ACD07C0();
    (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v2;
    v16[5] = a1;
    v16[6] = a2;
    v17 = v2;
    v18 = a2;
    sub_24AC7ED6C(0, 0, v7, &unk_24ACD5CF0, v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24ACA15F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AC214AC;

  return sub_24AC9D188(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_24ACA16E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CentralManager.ConnectedState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ACA1744(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AC214AC;

  return sub_24AC9CE9C(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_151Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24ACA185C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AC214AC;

  return sub_24AC9CC28(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_125Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24ACA196C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AC20274;

  return sub_24AC9C940(a1, v4, v5, v7, v6);
}

uint64_t sub_24ACA1A2C(uint64_t a1)
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
  v10[1] = sub_24AC214AC;

  return sub_24AC9C5DC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_24ACA1B38(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100) - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_24AC20274;

  return sub_24AC98E40(a1, v7, v8, v9, v10, v11, v1 + v6);
}

uint64_t sub_24ACA1C8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E048, &qword_24ACD5910);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ACA1CFC(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E048, &qword_24ACD5910) - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = v5 & 0xFFFFFFFFFFFFFFF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v13 = v1[3];
  v14 = v1[2];
  v7 = v1[4];
  v8 = v1[5];
  v9 = *(v1 + v5);
  v10 = *(v1 + v6 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24AC214AC;

  return sub_24AC92F58(a1, v14, v13, v7, v8, v1 + v4, v9, v10);
}

uint64_t block_copy_helper_220(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24ACA1EE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AC214AC;

  return sub_24AC86D30(a1, v4, v5, v6, v7);
}

uint64_t sub_24ACA1FE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AC214AC;

  return sub_24AC86614(a1, v4, v5, v6);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_0(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t objectdestroy_224Tm(void (*a1)(void), void (*a2)(void))
{
  swift_unknownObjectRelease();
  a1(*(v2 + 32));
  a2(*(v2 + 40));

  return MEMORY[0x2821FE8E8](v2, 56, 7);
}

uint64_t sub_24ACA2184(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AC214AC;

  return sub_24AC93D3C(a1, v4, v5, v6, v7);
}

uint64_t sub_24ACA224C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AC214AC;

  return sub_24AC93920(a1, v4, v5, v6);
}

uint64_t sub_24ACA2300(uint64_t a1)
{
  v3 = *(sub_24ACD0420() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_24AC83CE4(a1, v4, v5);
}

uint64_t sub_24ACA2374(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E690, &qword_24ACD4C10) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_24ACD0420() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24AC214AC;

  return sub_24AC84350(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_24ACA24E0(uint64_t a1)
{
  v4 = *(sub_24ACD0420() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AC214AC;

  return sub_24AC83EC4(a1, v6, v7, v8, v1 + v5);
}

uint64_t CBDiscoveryProtocol.description.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v13 - v7;
  v15 = 0;
  v16 = 0xE000000000000000;
  MEMORY[0x24C22CD50](60, 0xE100000000000000);
  v14 = v2;
  v9 = *(a2 + 8);
  v10 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v10);

  MEMORY[0x24C22CD50](32, 0xE100000000000000);
  v11 = MEMORY[0x24C22D370](a1, v9);
  MEMORY[0x24C22CD50](v11);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v14 = v2;
  sub_24ACD0A30();
  sub_24ACD0C30();
  (*(v6 + 8))(v8, AssociatedTypeWitness);
  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  return v15;
}

uint64_t dispatch thunk of static CBDiscoveryProtocol.devices(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AC2A800;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CBDiscoveryProtocol.scan(config:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 56) + **(a4 + 56));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24AC214AC;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CBDiscoveryProtocol.registerProximityPairingBuffer(rssiThreshold:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 64) + **(a4 + 64));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24AC20274;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CBDiscoveryProtocol.setScanRate(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 72) + **(a3 + 72));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AC20274;

  return v9(a1, a2, a3);
}

uint64_t sub_24ACA2CB0()
{
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_24ACD0A20();
  MEMORY[0x24C22CD50](60, 0xE100000000000000);
  v13 = v0;
  v1 = type metadata accessor for Characteristic(0);
  v2 = sub_24ACA6F0C(&qword_27EF9E268, type metadata accessor for Characteristic, &protocol conformance descriptor for Characteristic);
  v3 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v3);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v4 = MEMORY[0x24C22D370](v1, v2);
  MEMORY[0x24C22CD50](v4);

  MEMORY[0x24C22CD50](0x69746E656469202CLL, 0xEF203D2072656966);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  sub_24AC537F4();
  v5 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v5);

  MEMORY[0x24C22CD50](0x7265706F7270202CLL, 0xEF203D2073656974);
  v6 = *(v0 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_underlyingObject);
  sub_24AC1C24C([v6 properties], &v13);
  v7 = Characteristic.Properties.description.getter();
  MEMORY[0x24C22CD50](v7);

  MEMORY[0x24C22CD50](0xD000000000000010, 0x800000024ACD9DF0);
  v8 = [v6 isNotifying];
  v9 = v8 == 0;
  if (v8)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v9)
  {
    v11 = 0xE500000000000000;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  MEMORY[0x24C22CD50](v10, v11);

  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  return v14;
}

uint64_t sub_24ACA2F10()
{
  v1 = v0;
  sub_24ACD0A20();
  MEMORY[0x24C22CD50](60, 0xE100000000000000);
  v2 = type metadata accessor for MockCharacteristic(0);
  v3 = sub_24ACA6F0C(&qword_27EF9E280, type metadata accessor for MockCharacteristic, &protocol conformance descriptor for MockCharacteristic);
  v4 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v4);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v5 = MEMORY[0x24C22D370](v2, v3);
  MEMORY[0x24C22CD50](v5);

  MEMORY[0x24C22CD50](0x69746E656469202CLL, 0xEF203D2072656966);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  sub_24AC537F4();
  v6 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v6);

  MEMORY[0x24C22CD50](0x7265706F7270202CLL, 0xEF203D2073656974);
  v7 = Characteristic.Properties.description.getter();
  MEMORY[0x24C22CD50](v7);

  MEMORY[0x24C22CD50](0xD000000000000010, 0x800000024ACD9DF0);
  v8 = OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_isNotifying;
  swift_beginAccess();
  if (*(v1 + v8))
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (*(v1 + v8))
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x24C22CD50](v9, v10);

  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_24ACA319C(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 112) = a1;
  return result;
}

uint64_t MockCharacteristic.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_id;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24ACA32C4()
{
  v1 = OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_isNotifying;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24ACA3308(char a1)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_isNotifying;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_24ACA33B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockBehavior);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  return sub_24AC56E10(v4, v5, v6);
}

void sub_24ACA3418(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = (*a2 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockBehavior);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  *v5 = v2;
  v5[1] = v3;
  v5[2] = v4;
  sub_24AC56E10(v2, v3, v4);
  sub_24AC56E90(v6, v7, v8);
}

id sub_24ACA34B0@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockBehavior);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  return sub_24AC56E10(v4, v5, v6);
}

__n128 sub_24ACA350C(__int128 *a1)
{
  v8 = *a1;
  v2 = *(a1 + 2);
  v3 = (v1 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockBehavior);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *v3 = v8;
  v3[2] = v2;
  sub_24AC56E90(v4, v5, v6);
  return result;
}

void sub_24ACA35DC(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = (v1 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockBehavior);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  *v5 = v2;
  v5[1] = v3;
  v5[2] = v4;
  sub_24AC56E10(v2, v3, v4);
  sub_24AC56E90(v6, v7, v8);
}

uint64_t MockCharacteristic.__allocating_init(service:identifier:properties:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *(v3 + 16) = a1;
  swift_allocObject();
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_24AC572C8;

  return sub_24ACA6064(a1, a2, a3);
}

uint64_t MockCharacteristic.init(service:identifier:properties:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *(v3 + 16) = a1;
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_24AC663CC;

  return sub_24ACA6064(a1, a2, a3);
}

uint64_t sub_24ACA3854(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = (v4 + *a3);
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;

  return a4(v6, v7);
}

uint64_t sub_24ACA38B4(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = (v2 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockWriteResponder);
  v7 = *(v2 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockWriteResponder);
  v8 = v6[1];
  *v6 = &unk_24ACD5F88;
  v6[1] = v5;

  return sub_24AC1BFC8(v7, v8);
}

uint64_t sub_24ACA393C(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AC9D828;

  return v8(a1, a2);
}

uint64_t sub_24ACA3A40(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_24ACA3A60, v1, 0);
}

uint64_t sub_24ACA3A60()
{
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_24ACA3B88, Strong, 0);
  }

  else
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24ACA6F0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_24ACA3B88()
{
  v1 = *(v0 + 48);
  *(v0 + 64) = swift_weakLoadStrong();

  return MEMORY[0x2822009F8](sub_24ACA3C04, v1, 0);
}

uint64_t sub_24ACA3C04()
{
  v1 = *(v0 + 64);
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_24ACA3D30, v1, 0);
  }

  else
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24ACA6F0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_24ACA3D30()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_state;
  swift_beginAccess();
  *(v0 + 112) = *(v1 + v3);

  return MEMORY[0x2822009F8](sub_24ACA3DC8, v2, 0);
}

void sub_24ACA3DC8()
{
  if (*(v0 + 112) != 3)
  {
    goto LABEL_4;
  }

  v1 = *(v0 + 48);
  if ((*(v1 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_properties) & 2) == 0)
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24ACA6F0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    *v2 = 2;
LABEL_5:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v3 = *(v0 + 8);

    v3();
    return;
  }

  v4 = OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_updatingState;
  *(v0 + 72) = OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_updatingState;
  v5 = *(v1 + v4);
  if (v5 == 2 || v5 == 1)
  {
LABEL_4:
    type metadata accessor for CentralManager.Error(0);
    sub_24ACA6F0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    goto LABEL_5;
  }

  *(v1 + v4) = 1;
  v6 = (v1 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockReadResponder);
  v7 = *v6;
  *(v0 + 80) = *v6;
  *(v0 + 88) = v6[1];
  if (v7)
  {

    v10 = (v7 + *v7);
    v8 = swift_task_alloc();
    *(v0 + 96) = v8;
    *v8 = v0;
    v8[1] = sub_24ACA414C;
    v9 = *(v0 + 40);

    v10(v9);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24ACA414C()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_24ACA430C;
  }

  else
  {
    v4 = sub_24ACA4278;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24ACA4278()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[6];

  sub_24AC1BFC8(v1, v2);
  *(v4 + v3) = 0;
  v5 = v0[1];

  return v5();
}

uint64_t sub_24ACA430C()
{
  v1 = v0[9];
  v2 = v0[6];
  sub_24AC1BFC8(v0[10], v0[11]);
  *(v2 + v1) = 0;
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_24ACA43BC(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E250, &qword_24ACD46B0);
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ACA4488, v1, 0);
}

uint64_t sub_24ACA4488()
{
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_24ACA45B8, Strong, 0);
  }

  else
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24ACA6F0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_24ACA45B8()
{
  v1 = *(v0 + 48);
  *(v0 + 88) = swift_weakLoadStrong();

  return MEMORY[0x2822009F8](sub_24ACA4638, v1, 0);
}

uint64_t sub_24ACA4638()
{
  v1 = *(v0 + 88);
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_24ACA476C, v1, 0);
  }

  else
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24ACA6F0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_24ACA476C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);
  v3 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_state;
  swift_beginAccess();
  *(v0 + 128) = *(v1 + v3);

  return MEMORY[0x2822009F8](sub_24ACA4804, v2, 0);
}

void sub_24ACA4804()
{
  if (*(v0 + 128) != 3)
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24ACA6F0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    goto LABEL_5;
  }

  v1 = *(v0 + 48);
  if ((*(v1 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_properties) & 4) == 0)
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24ACA6F0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    *v2 = 4;
LABEL_5:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v3 = *(v0 + 8);

    v3();
    return;
  }

  v4 = (v1 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockWriteWithoutResponseCallback);
  v5 = *v4;
  *(v0 + 96) = *v4;
  *(v0 + 104) = v4[1];
  if (v5)
  {

    sub_24ACD06E0();
    v8 = (v5 + *v5);
    v6 = swift_task_alloc();
    *(v0 + 112) = v6;
    *v6 = v0;
    v6[1] = sub_24ACA4AA4;
    v7 = *(v0 + 72);

    v8(v7);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24ACA4AA4()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = v2[13];
  v4 = v2[12];
  v5 = v2[9];
  v6 = v2[8];
  v7 = v2[7];
  v8 = v2[6];
  (*(v6 + 8))(v5, v7);
  sub_24AC1BFC8(v4, v3);
  if (v0)
  {
    v9 = sub_24ACA4CD4;
  }

  else
  {
    v9 = sub_24ACA4C5C;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_24ACA4C5C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ACA4CD4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ACA4D48(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E250, &qword_24ACD46B0);
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ACA4E18, v2, 0);
}

uint64_t sub_24ACA4E18()
{
  v1 = v0[9];
  v2 = *(v1 + 16);
  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = (v1 + 40);
  v4 = *(v1 + 16);
  do
  {
    v5 = *(v3 - 1);
    v6 = *v3 >> 62;
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        goto LABEL_11;
      }

      v7 = *(v5 + 16);
      v8 = *(v5 + 24);
    }

    else
    {
      if (!v6)
      {
        if ((*v3 & 0xFF000000000000) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_4;
      }

      v7 = v5;
      v8 = v5 >> 32;
    }

    if (v7 == v8)
    {
      goto LABEL_11;
    }

LABEL_4:
    v3 += 2;
    --v4;
  }

  while (v4);
  if (!swift_weakLoadStrong())
  {
LABEL_11:
    type metadata accessor for CentralManager.Error(0);
    sub_24ACA6F0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    goto LABEL_12;
  }

  v11 = v0[10];

  v12 = *(v11 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_properties);
  if ((v12 & 8) == 0)
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24ACA6F0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    v14 = 8;
    goto LABEL_21;
  }

  if ((v12 & 0x20) == 0)
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24ACA6F0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    v14 = 32;
LABEL_21:
    *v13 = v14;
LABEL_12:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }

  v15 = v0[10];
  result = swift_beginAccess();
  v16 = *(v15 + 112);
  v17 = (v1 + 40);
  while (2)
  {
    v18 = *(v17 - 1);
    v19 = *v17 >> 62;
    if (v19 > 1)
    {
      if (v19 == 2)
      {
        v23 = v18 + 16;
        v21 = *(v18 + 16);
        v22 = *(v23 + 8);
        v20 = __OFSUB__(v22, v21);
        v18 = v22 - v21;
        if (v20)
        {
          goto LABEL_41;
        }

        goto LABEL_24;
      }

      if (v16 < 0)
      {
LABEL_35:
        type metadata accessor for CentralManager.Error(0);
        sub_24ACA6F0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
        swift_allocError();
        *v24 = v16;
        goto LABEL_12;
      }
    }

    else
    {
      if (v19)
      {
        v20 = __OFSUB__(HIDWORD(v18), v18);
        LODWORD(v18) = HIDWORD(v18) - v18;
        if (v20)
        {
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          return result;
        }

        v18 = v18;
      }

      else
      {
        v18 = BYTE6(*v17);
      }

LABEL_24:
      if (v16 < v18)
      {
        goto LABEL_35;
      }
    }

    v17 += 2;
    if (--v2)
    {
      continue;
    }

    break;
  }

  v25 = v0[10];
  sub_24ACD06E0();
  v26 = OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_updatingState;
  v0[14] = OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_updatingState;
  *(v25 + v26) = 2;
  v27 = OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_isNotifying;
  v0[15] = OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_isNotifying;
  result = swift_beginAccess();
  *(v25 + v27) = 1;
  v28 = v25 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockWriteResponder;
  v29 = *(v25 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockWriteResponder);
  v0[16] = v29;
  v0[17] = *(v28 + 8);
  if (!v29)
  {
    goto LABEL_42;
  }

  v33 = (v29 + *v29);
  v30 = swift_task_alloc();
  v0[18] = v30;
  *v30 = v0;
  v30[1] = sub_24ACA52F8;
  v31 = v0[13];
  v32 = v0[8];

  return v33(v32, v31);
}

uint64_t sub_24ACA52F8()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = v2[10];
    v4 = sub_24ACA54B4;
  }

  else
  {
    v5 = v2[10];
    sub_24AC1BFC8(v2[16], v2[17]);
    v4 = sub_24ACA5420;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24ACA5420()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[10];
  (*(v0[12] + 8))(v0[13], v0[11]);
  *(v3 + v2) = 0;
  *(v3 + v1) = 0;

  v4 = v0[1];

  return v4();
}

uint64_t sub_24ACA54B4()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  sub_24AC1BFC8(v0[16], v0[17]);
  *(v6 + v2) = 0;
  *(v6 + v1) = 0;
  swift_willThrow();
  (*(v4 + 8))(v3, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_24ACA556C(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_24ACA558C, v1, 0);
}

uint64_t sub_24ACA558C()
{
  if (!swift_weakLoadStrong())
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24ACA6F0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    goto LABEL_5;
  }

  v1 = v0[6];

  if ((*(v1 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_properties) & 0x20) == 0)
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24ACA6F0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    *v2 = 32;
LABEL_5:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v3 = v0[1];

    return v3();
  }

  v5 = v0[6];
  v6 = OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_updatingState;
  v0[7] = OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_updatingState;
  *(v5 + v6) = 2;
  v7 = OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_isNotifying;
  v0[8] = OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_isNotifying;
  result = swift_beginAccess();
  *(v5 + v7) = 1;
  v8 = v5 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockReadResponder;
  v9 = *(v5 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockReadResponder);
  v0[9] = v9;
  v0[10] = *(v8 + 8);
  if (v9)
  {

    v12 = (v9 + *v9);
    v10 = swift_task_alloc();
    v0[11] = v10;
    *v10 = v0;
    v10[1] = sub_24ACA582C;
    v11 = v0[5];

    return v12(v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24ACA582C()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_24ACA59D4;
  }

  else
  {
    v4 = sub_24ACA5958;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24ACA5958()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  sub_24AC1BFC8(v0[9], v0[10]);
  *(v3 + v1) = 0;
  *(v3 + v2) = 0;
  v4 = v0[1];

  return v4();
}

uint64_t sub_24ACA59D4()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  sub_24AC1BFC8(v0[9], v0[10]);
  *(v3 + v1) = 0;
  *(v3 + v2) = 0;
  swift_willThrow();
  v4 = v0[1];

  return v4();
}

uint64_t MockCharacteristic.deinit()
{
  v1 = OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_id;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_weakDestroy();
  sub_24AC1BFC8(*(v0 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockReadResponder), *(v0 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockReadResponder + 8));
  sub_24AC1BFC8(*(v0 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockWriteWithoutResponseCallback), *(v0 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockWriteWithoutResponseCallback + 8));
  sub_24AC1BFC8(*(v0 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockWriteResponder), *(v0 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockWriteResponder + 8));
  sub_24AC56E90(*(v0 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockBehavior), *(v0 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockBehavior + 8), *(v0 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockBehavior + 16));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t MockCharacteristic.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_id;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_weakDestroy();
  sub_24AC1BFC8(*(v0 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockReadResponder), *(v0 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockReadResponder + 8));
  sub_24AC1BFC8(*(v0 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockWriteWithoutResponseCallback), *(v0 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockWriteWithoutResponseCallback + 8));
  sub_24AC1BFC8(*(v0 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockWriteResponder), *(v0 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockWriteResponder + 8));
  sub_24AC56E90(*(v0 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockBehavior), *(v0 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockBehavior + 8), *(v0 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockBehavior + 16));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24ACA5C24@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_id;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24ACA5CDC()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  v2 = *(v1 + 112);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_24ACA5D54(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC214AC;

  return sub_24ACA3A40(a1);
}

uint64_t sub_24ACA5DEC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC20274;

  return sub_24ACA43BC(a1);
}

uint64_t sub_24ACA5E80(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AC214AC;

  return sub_24ACA4D48(a1, a2);
}

uint64_t sub_24ACA5F28(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC214AC;

  return sub_24ACA556C(a1);
}

uint64_t sub_24ACA5FE0()
{
  v1 = sub_24ACA2F10();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24ACA6064(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4[3] = a2;
  v4[4] = v3;
  v4[2] = a1;
  v6 = sub_24ACD0420();
  v4[5] = v6;
  v4[6] = *(v6 - 8);
  v4[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v4[8] = v7;
  v4[9] = *(v7 - 8);
  v8 = swift_task_alloc();
  v9 = *a3;
  v4[10] = v8;
  v4[11] = v9;

  return MEMORY[0x2822009F8](sub_24ACA6198, 0, 0);
}

uint64_t sub_24ACA6198()
{
  v1 = v0[10];
  v2 = v0[9];
  v13 = v0[8];
  v14 = v0[11];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[3];
  swift_defaultActor_initialize();
  *(v5 + 112) = 247;
  swift_weakInit();
  *(v5 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_isNotifying) = 0;
  *(v5 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_updatingState) = 0;
  v8 = (v5 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockReadResponder);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v5 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockWriteWithoutResponseCallback);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v5 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockWriteResponder);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v5 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_mockBehavior);
  *v11 = 10000000000000000;
  v11[1] = 0;
  v11[2] = 0;
  swift_weakAssign();
  (*(v4 + 16))(v3, v7, v6);
  type metadata accessor for Characteristic(0);
  sub_24ACD0000();
  (*(v2 + 32))(v5 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_id, v1, v13);
  *(v5 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_properties) = v14;

  return MEMORY[0x2822009F8](sub_24AC65B14, v5, 0);
}

uint64_t sub_24ACA6330(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AC214AC;

  return sub_24ACA393C(a1, a2, v6);
}

uint64_t sub_24ACA63F8(uint64_t a1)
{
  *(a1 + 8) = sub_24ACA6F0C(&qword_27EF9E7F0, type metadata accessor for MockCharacteristic, &protocol conformance descriptor for MockCharacteristic);
  result = sub_24ACA6F0C(&qword_27EF9E280, type metadata accessor for MockCharacteristic, &protocol conformance descriptor for MockCharacteristic);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for MockCharacteristic(uint64_t a1)
{
  result = qword_27EF9E800;
  if (!qword_27EF9E800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24ACA6518(uint64_t a1)
{
  sub_24AC54264(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of MockCharacteristic.__allocating_init(service:identifier:properties:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(v3 + 368) + **(v3 + 368));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_24AC2A800;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MockCharacteristic.read()(uint64_t a1)
{
  v6 = (*(*v1 + 400) + **(*v1 + 400));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AC214AC;

  return v6(a1);
}

uint64_t dispatch thunk of MockCharacteristic.readUnderlying()()
{
  v4 = (*(*v0 + 408) + **(*v0 + 408));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24AC20274;

  return v4();
}

uint64_t dispatch thunk of MockCharacteristic.writeWithoutResponse(data:)(uint64_t a1)
{
  v6 = (*(*v1 + 416) + **(*v1 + 416));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AC214AC;

  return v6(a1);
}

uint64_t dispatch thunk of MockCharacteristic.write(data:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 424) + **(*v2 + 424));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AC214AC;

  return v8(a1, a2);
}

uint64_t dispatch thunk of MockCharacteristic.notify()(uint64_t a1)
{
  v6 = (*(*v1 + 432) + **(*v1 + 432));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AC214AC;

  return v6(a1);
}

uint64_t sub_24ACA6F0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ControllerProtocol.description.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v13 - v7;
  v15 = 0;
  v16 = 0xE000000000000000;
  MEMORY[0x24C22CD50](60, 0xE100000000000000);
  v14 = v2;
  v9 = *(a2 + 8);
  v10 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v10);

  MEMORY[0x24C22CD50](32, 0xE100000000000000);
  v11 = MEMORY[0x24C22D370](a1, v9);
  MEMORY[0x24C22CD50](v11);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v14 = v2;
  sub_24ACD0A30();
  sub_24ACD0C30();
  (*(v6 + 8))(v8, AssociatedTypeWitness);
  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  return v15;
}

uint64_t dispatch thunk of ControllerProtocol.unpair(device:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AC20274;

  return v9(a1, a2, a3);
}

uint64_t sub_24ACA7230()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E810, &qword_24ACD61D8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v42 - v3;
  v5 = sub_24ACD0460();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v42 - v10;
  *&v51 = *v0;
  v12 = sub_24ACA7BBC();
  if (v12)
  {
    v13 = v12;
    v14 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v51 = v14;
    sub_24AC4753C(v13, sub_24AC46D60, 0, isUniquelyReferenced_nonNull_native, &v51);

    v16 = v51;
  }

  else
  {
    v16 = MEMORY[0x277D84F98];
  }

  v17 = type metadata accessor for Peripheral.Options(0);
  sub_24AC2B5DC(v1 + *(v17 + 24), v4, &qword_27EF9E810, &qword_24ACD61D8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_24ACA8228(v4);
    if (!*(v16 + 16))
    {
LABEL_16:

      return 0;
    }
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    if (qword_285E25940 == 4)
    {
      (*(v6 + 8))(v11, v5);
      if (!*(v16 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {
      v46 = sub_24ACD0590();
      v47 = v18;
      if (qword_2814AD278 != -1)
      {
        swift_once();
      }

      v19 = sub_24ACD0490();
      __swift_project_value_buffer(v19, qword_2814AD280);
      (*(v6 + 16))(v9, v11, v5);
      v20 = sub_24ACD0470();
      v21 = sub_24ACD0930();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v43 = v22;
        v45 = swift_slowAlloc();
        *&v49 = v45;
        *v22 = 136315138;
        v44 = v21;
        v23 = sub_24ACD0450();
        v25 = v24;
        *&v51 = v23;
        *(&v51 + 1) = v24;
        sub_24AC467AC();
        v42 = sub_24ACD0180();
        v27 = v26;
        v28 = v9;
        v29 = *(v6 + 8);
        v29(v28, v5);
        sub_24AC46698(v23, v25);
        v30 = sub_24AC29E20(v42, v27, &v49);

        v31 = v43;
        *(v43 + 1) = v30;
        _os_log_impl(&dword_24AC18000, v20, v44, "Using temporary LTK: %s", v31, 0xCu);
        v32 = v45;
        __swift_destroy_boxed_opaque_existential_0(v45);
        MEMORY[0x24C22DC60](v32, -1, -1);
        MEMORY[0x24C22DC60](v31, -1, -1);
      }

      else
      {

        v33 = v9;
        v29 = *(v6 + 8);
        v29(v33, v5);
      }

      v34 = sub_24ACD0450();
      v52 = MEMORY[0x277CC9318];
      *&v51 = v34;
      *(&v51 + 1) = v35;
      sub_24AC1BFB8(&v51, &v49);
      v36 = swift_isUniquelyReferenced_nonNull_native();
      v48 = v16;
      v37 = __swift_mutable_project_boxed_opaque_existential_0(&v49, v50);
      MEMORY[0x28223BE20](v37);
      v39 = (&v42 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v40 + 16))(v39);
      sub_24AC9E5C0(*v39, v39[1], v46, v47, v36, &v48);

      v29(v11, v5);
      __swift_destroy_boxed_opaque_existential_0(&v49);
      v16 = v48;
      if (!*(v48 + 16))
      {
        goto LABEL_16;
      }
    }
  }

  return v16;
}

void *sub_24ACA7788()
{
  v1 = 0;
  v2 = 0;
  v3 = *v0;
  v4 = MEMORY[0x277D84F98];
  v5 = MEMORY[0x277D839B0];
  do
  {
    v7 = v1;
    v8 = *(&unk_285E25970 + v2 + 4);
    if ((v8 & ~v3) == 0)
    {
      if (v8 == 1)
      {
        v9 = sub_24ACD0590();
        v11 = v10;
      }

      else
      {
        v11 = 0xE90000000000003ELL;
        v9 = 0x4E574F4E4B4E553CLL;
      }

      v36 = v5;
      LOBYTE(v35) = 1;
      sub_24AC1BFB8(&v35, &v33);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v4;
      v13 = *__swift_mutable_project_boxed_opaque_existential_0(&v33, v34);
      v31 = v5;
      LOBYTE(v30) = v13;
      v15 = sub_24AC2AB50(v9, v11);
      v16 = v4[2];
      v17 = (v14 & 1) == 0;
      v18 = v16 + v17;
      if (__OFADD__(v16, v17))
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        result = sub_24ACD0C80();
        __break(1u);
        return result;
      }

      v19 = v14;
      if (v4[3] < v18)
      {
        sub_24AC5C328(v18, isUniquelyReferenced_nonNull_native);
        v20 = sub_24AC2AB50(v9, v11);
        if ((v19 & 1) != (v21 & 1))
        {
          goto LABEL_25;
        }

        v15 = v20;
        if ((v19 & 1) == 0)
        {
          goto LABEL_16;
        }

LABEL_2:

        v4 = v32;
        v6 = (v32[7] + 32 * v15);
        __swift_destroy_boxed_opaque_existential_0(v6);
        sub_24AC1BFB8(&v30, v6);
LABEL_3:
        __swift_destroy_boxed_opaque_existential_0(&v33);
        goto LABEL_4;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        if (v14)
        {
          goto LABEL_2;
        }
      }

      else
      {
        sub_24AC5E670();
        if (v19)
        {
          goto LABEL_2;
        }
      }

LABEL_16:
      v4 = v32;
      v22 = *__swift_mutable_project_boxed_opaque_existential_0(&v30, v31);
      v29 = v5;
      LOBYTE(v28) = v22;
      v4[(v15 >> 6) + 8] |= 1 << v15;
      v23 = (v4[6] + 16 * v15);
      *v23 = v9;
      v23[1] = v11;
      sub_24AC1BFB8(&v28, (v4[7] + 32 * v15));
      v24 = v4[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_24;
      }

      v4[2] = v26;
      __swift_destroy_boxed_opaque_existential_0(&v30);
      goto LABEL_3;
    }

LABEL_4:
    v1 = 1;
    v2 = 1;
  }

  while ((v7 & 1) == 0);
  if (!v4[2])
  {

    return 0;
  }

  return v4;
}

uint64_t type metadata accessor for Peripheral.Options(uint64_t a1)
{
  result = qword_27EF9E878;
  if (!qword_27EF9E878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Peripheral.Options.init(connectionOptions:pairingInfo:temporaryLTK:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = *a1;
  v7 = type metadata accessor for Peripheral.Options(0);
  sub_24ACA7B54(a2, a4 + *(v7 + 20), &unk_27EF9E170, &qword_24ACD61D0);
  return sub_24ACA7B54(a3, a4 + *(v7 + 24), &qword_27EF9E810, &qword_24ACD61D8);
}

uint64_t sub_24ACA7B54(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_24ACA7BBC()
{
  result = MEMORY[0x277D84F98];
  if ((qword_285E25968 & ~*v0) == 0 && qword_285E25940 != qword_285E25968)
  {
    v3 = MEMORY[0x277D84F98];
    if (qword_285E25968 == 1 || qword_285E25968 == 4)
    {
      v4 = sub_24ACD0590();
      v6 = v5;
    }

    else
    {
      v6 = 0xE90000000000003ELL;
      v4 = 0x4E574F4E4B4E553CLL;
    }

    v13 = MEMORY[0x277D839B0];
    LOBYTE(v12) = 1;
    sub_24AC1BFB8(&v12, &v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = v3;
    v8 = __swift_mutable_project_boxed_opaque_existential_0(&v10, v11);
    sub_24AC9E468(*v8, v4, v6, isUniquelyReferenced_nonNull_native, &v9);

    __swift_destroy_boxed_opaque_existential_0(&v10);
    result = v9;
  }

  if (!*(result + 16))
  {

    return 0;
  }

  return result;
}

unint64_t sub_24ACA7D40()
{
  result = qword_27EF9E818;
  if (!qword_27EF9E818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E818);
  }

  return result;
}

unint64_t sub_24ACA7D98()
{
  result = qword_27EF9E820;
  if (!qword_27EF9E820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E820);
  }

  return result;
}

unint64_t sub_24ACA7E20()
{
  result = qword_27EF9E838;
  if (!qword_27EF9E838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E838);
  }

  return result;
}

unint64_t sub_24ACA7E78()
{
  result = qword_27EF9E840;
  if (!qword_27EF9E840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E840);
  }

  return result;
}

unint64_t sub_24ACA7ED0()
{
  result = qword_27EF9E848;
  if (!qword_27EF9E848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E848);
  }

  return result;
}

unint64_t sub_24ACA7F28()
{
  result = qword_27EF9E850;
  if (!qword_27EF9E850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E850);
  }

  return result;
}

uint64_t sub_24ACA7FAC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_24ACA8014()
{
  result = qword_27EF9E868;
  if (!qword_27EF9E868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E868);
  }

  return result;
}

unint64_t sub_24ACA806C()
{
  result = qword_27EF9E870;
  if (!qword_27EF9E870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E870);
  }

  return result;
}

void sub_24ACA80E8(uint64_t a1)
{
  sub_24ACA81B4(319, &qword_27EF9E888, type metadata accessor for PeripheralPairingInfo);
  if (v1 <= 0x3F)
  {
    sub_24ACA81B4(319, &qword_27EF9E890, MEMORY[0x277D08EE8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24ACA81B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24ACD0970();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24ACA8228(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E810, &qword_24ACD61D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PeripheralProtocol.isolatedDescription.getter(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v3[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E048, &qword_24ACD5910);
  v3[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v6 = sub_24ACD0740();
  v3[13] = v6;
  v3[14] = v5;

  return MEMORY[0x2822009F8](sub_24ACA8420, v6, v5);
}

uint64_t sub_24ACA8420()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[7];
  v16 = v0[6];
  v5 = v0[5];
  sub_24ACD0A20();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x24C22CD50](60, 0xE100000000000000);
  v0[4] = v4;
  v6 = *(v16 + 16);
  v7 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v7);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v8 = MEMORY[0x24C22D370](v5, v6);
  MEMORY[0x24C22CD50](v8);

  MEMORY[0x24C22CD50](0x69746E656469202CLL, 0xEF203D2072656966);
  (*(v16 + 40))(v5);
  sub_24ACA8AF4();
  v9 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v9);

  (*(v2 + 8))(v1, v3);
  MEMORY[0x24C22CD50](0x203D2043414D202CLL, 0xE800000000000000);
  v15 = (*(v16 + 48) + **(v16 + 48));
  v10 = swift_task_alloc();
  v0[15] = v10;
  *v10 = v0;
  v10[1] = sub_24ACA8698;
  v11 = v0[9];
  v12 = v0[6];
  v13 = v0[5];

  return v15(v11, v13, v12);
}

uint64_t sub_24ACA8698()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_24ACA87B8, v3, v2);
}

uint64_t sub_24ACA87B8()
{
  v7 = v0[6];
  v1 = sub_24ACD05A0();
  MEMORY[0x24C22CD50](v1);

  MEMORY[0x24C22CD50](0x206574617473202CLL, 0xEA0000000000203DLL);
  v6 = (*(v7 + 64) + **(v7 + 64));
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_24ACA8914;
  v3 = v0[6];
  v4 = v0[5];

  return v6(v0 + 17, v4, v3);
}

uint64_t sub_24ACA8914()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_24ACA8A34, v3, v2);
}

uint64_t sub_24ACA8A34()
{
  *(v0 + 137) = *(v0 + 136);
  sub_24ACD0B10();
  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  v3 = *(v0 + 8);

  return v3(v1, v2);
}

unint64_t sub_24ACA8AF4()
{
  result = qword_27EF9E108;
  if (!qword_27EF9E108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF9E040, qword_24ACD4100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E108);
  }

  return result;
}

uint64_t PeripheralProtocol.description.getter(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_24ACD0A20();

  v16 = 60;
  v17 = 0xE100000000000000;
  v15 = v2;
  v9 = *(a2 + 16);
  v10 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v10);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v11 = MEMORY[0x24C22D370](a1, v9);
  MEMORY[0x24C22CD50](v11);

  MEMORY[0x24C22CD50](0x69746E656469202CLL, 0xEF203D2072656966);
  (*(a2 + 40))(a1, a2);
  sub_24ACA8AF4();
  v12 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v12);

  (*(v6 + 8))(v8, v5);
  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  return v16;
}

uint64_t dispatch thunk of PeripheralProtocol.macAddress.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AC20274;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PeripheralProtocol.state.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 64) + **(a3 + 64));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AC214AC;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PeripheralProtocol.lastSeen.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 72) + **(a3 + 72));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AC214AC;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PeripheralProtocol.pairingInfo.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 96) + **(a3 + 96));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AC20274;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PeripheralProtocol.connect()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 112) + **(a2 + 112));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AC214AC;

  return v7(a1, a2);
}

uint64_t dispatch thunk of PeripheralProtocol.connect(useCase:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 120) + **(a4 + 120));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24AC214AC;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PeripheralProtocol.cancelConnection()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 128) + **(a2 + 128));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AC214AC;

  return v7(a1, a2);
}

uint64_t dispatch thunk of PeripheralProtocol.cancelConnection(options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 136) + **(a3 + 136));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AC214AC;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PeripheralProtocol.isPaired.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 144) + **(a2 + 144));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AC2A800;

  return v7(a1, a2);
}

uint64_t dispatch thunk of PeripheralProtocol.pair()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 152) + **(a2 + 152));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AC214AC;

  return v7(a1, a2);
}

uint64_t dispatch thunk of PeripheralProtocol.unpair()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 160) + **(a2 + 160));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AC214AC;

  return v7(a1, a2);
}

uint64_t dispatch thunk of PeripheralProtocol.set(macAddress:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 168) + **(a3 + 168));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AC214AC;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PeripheralProtocol.discover(serviceIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 176) + **(a3 + 176));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AC2A800;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PeripheralProtocol.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 184) + **(a3 + 184));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AC2BA00;

  return v9(a1, a2, a3);
}

double Device.init(identifier:btAddress:model:channel:rssi:bleAdvertisementTimestamp:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, char *a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v15 = *a6;
  v16 = a6[1];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E898, &qword_24ACD66C0);
  (*(*(v17 - 8) + 32))(a7, a1, v17);
  v18 = type metadata accessor for Device(0);
  v19 = v18[5];
  v20 = sub_24ACD0090();
  (*(*(v20 - 8) + 32))(a7 + v19, a2, v20);
  v21 = (a7 + v18[6]);
  v21[1] = 0;
  v21[2] = 0;
  *v21 = 8;
  v22 = (a7 + v18[7]);
  *v22 = v15;
  v22[1] = v16;
  v23 = (a7 + v18[8]);
  *v23 = a3;
  v23[1] = a4;
  v24 = (a7 + v18[9]);
  *v24 = 0;
  v24[1] = 0;
  *(a7 + v18[10]) = a5;
  *(a7 + v18[11]) = a8;
  *(a7 + v18[12]) = 4;
  v25 = (a7 + v18[14]);
  *v25 = 0;
  v25[1] = 0;
  v26 = (a7 + v18[15]);
  *v26 = 0;
  v26[1] = 0;
  *(a7 + v18[17]) = 0;
  *(a7 + v18[18]) = 0;
  result = 0.0;
  *(a7 + v18[16]) = xmmword_24ACD39F0;
  *(a7 + v18[13]) = 0;
  return result;
}

uint64_t type metadata accessor for Device(uint64_t a1)
{
  result = qword_2814AD358;
  if (!qword_2814AD358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RSSIValue.rawValue.getter()
{
  if (v0[1])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t RSSIValue.init(rawValue:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  *a2 = result;
  a2[1] = result == 0;
  return result;
}

uint64_t RSSIValue.description.getter()
{
  if (*(v0 + 1) == 1)
  {
    v3 = 0x6E776F6E6B6E752ELL;
  }

  else
  {
    v3 = 0x28697373722ELL;
  }

  v1 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v1);

  MEMORY[0x24C22CD50](41, 0xE100000000000000);
  return v3;
}

uint64_t static RSSIValue.< infix(_:_:)(char *a1, char *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2 == 1)
  {
    if (v3)
    {
      return 0;
    }

    return v2 & (v3 ^ 1u);
  }

  if (v3)
  {
    return v2 & (v3 ^ 1u);
  }

  return *a1 < *a2;
}

_BYTE *sub_24ACAA098@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result | ((*result == 0) << 8);
  *(a2 + 2) = 0;
  return result;
}

void sub_24ACAA0B4(_BYTE *a1@<X8>)
{
  if (v1[1])
  {
    v2 = 0;
  }

  else
  {
    v2 = *v1;
  }

  *a1 = v2;
}

uint64_t sub_24ACAA0CC(char *a1, char *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2 == 1)
  {
    if (v3)
    {
      return 0;
    }

    return v2 & (v3 ^ 1u);
  }

  if (v3)
  {
    return v2 & (v3 ^ 1u);
  }

  return *a1 < *a2;
}

uint64_t sub_24ACAA10C(char *a1, char *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v3 == 1)
  {
    if (v2)
    {
      return 1;
    }

    return v3 & (v2 ^ 1) ^ 1u;
  }

  if (v2)
  {
    return v3 & (v2 ^ 1) ^ 1u;
  }

  return *a2 >= *a1;
}

uint64_t sub_24ACAA154(char *a1, char *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2 == 1)
  {
    if (v3)
    {
      return 1;
    }

    return v2 & (v3 ^ 1) ^ 1u;
  }

  if (v3)
  {
    return v2 & (v3 ^ 1) ^ 1u;
  }

  return *a1 >= *a2;
}

uint64_t sub_24ACAA19C(char *a1, char *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v3 == 1)
  {
    if (v2)
    {
      return 0;
    }

    return v3 & (v2 ^ 1u);
  }

  if (v2)
  {
    return v3 & (v2 ^ 1u);
  }

  return *a2 < *a1;
}

BOOL sub_24ACAA290(char *a1, char *a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = 0;
  }

  else
  {
    v3 = *a1;
  }

  if (a2[1])
  {
    v2 = 0;
  }

  return v3 == v2;
}

FindMyBluetooth::ObjectBatteryState_optional __swiftcall ObjectBatteryState.init(rawValue:)(FindMyBluetooth::ObjectBatteryState_optional rawValue)
{
  value = rawValue.value;
  if ((rawValue.value & 0xFC) != 0)
  {
    value = FindMyBluetooth_ObjectBatteryState_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

uint64_t sub_24ACAA2E0()
{
  sub_24ACD0D10();
  sub_24ACD0D30();
  return sub_24ACD0D50();
}

uint64_t sub_24ACAA328(uint64_t a1)
{
  sub_24ACD0D10();
  sub_24ACD0D30();
  return sub_24ACD0D50();
}

uint64_t Device.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E898, &qword_24ACD66C0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Device.btAddress.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Device(0) + 20);
  v4 = sub_24ACD0090();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Device.manufacturerData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Device(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_24ACAA584(v4, v5, v6);
}

uint64_t sub_24ACAA584(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result != 8)
  {
    return sub_24AC46630(a2, a3);
  }

  return result;
}

uint64_t Device.rssi.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Device(0);
  v4 = (v1 + *(result + 28));
  v5 = *v4;
  LOBYTE(v4) = v4[1];
  *a1 = v5;
  a1[1] = v4;
  return result;
}

uint64_t Device.model.getter()
{
  v1 = *(v0 + *(type metadata accessor for Device(0) + 32));

  return v1;
}

uint64_t Device.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for Device(0) + 36));

  return v1;
}

uint64_t Device.batteryLevel.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Device(0);
  *a1 = *(v1 + *(result + 48));
  return result;
}

uint64_t Device.setupFont.getter()
{
  v1 = *(v0 + *(type metadata accessor for Device(0) + 56));

  return v1;
}

uint64_t Device.setupMessage.getter()
{
  v1 = *(v0 + *(type metadata accessor for Device(0) + 60));

  return v1;
}

uint64_t Device.engravingData.getter()
{
  v1 = v0 + *(type metadata accessor for Device(0) + 64);
  v2 = *v1;
  sub_24AC4661C(*v1, *(v1 + 8));
  return v2;
}

void sub_24ACAA80C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v172 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E048, &qword_24ACD5910);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v170 = (&v158 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v166 = &v158 - v7;
  v8 = sub_24ACD0090();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v171 = &v158 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v167 = &v158 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EC40, &qword_24ACD8620);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v158 - v14;
  v16 = sub_24ACD0420();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v158 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v158 - v21;
  v23 = [a1 identifier];
  if (!v23)
  {
    goto LABEL_4;
  }

  v165 = v20;
  v168 = v9;
  v169 = v8;
  v24 = v23;
  sub_24ACD0590();

  sub_24ACD03B0();

  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_24AC212F4(v15, &qword_27EF9EC40, &qword_24ACD8620);
LABEL_4:
    sub_24AC207C0();
    swift_allocError();
    *v25 = 2;
    swift_willThrow();

    return;
  }

  (*(v17 + 32))(v22, v15, v16);
  v26 = [a1 bleAppleManufacturerData];
  v164 = v22;
  v162 = v16;
  if (v26)
  {
    v27 = v26;
    v28 = sub_24ACD02D0();
    v30 = v29;

    sub_24ACC203C(v28, v30, &v173);
    v31 = v2;
    if (v2)
    {

      v161 = 0;
      v32 = 0;
      v33 = 0;
      v31 = 0;
      v34 = 8;
    }

    else
    {
      v32 = v174;
      v33 = v175;
      v34 = v173 | (BYTE1(v173) << 8);
      v161 = ((1 << SBYTE1(v173)) & 0xDF) == 0;
    }

    v37 = (v172 + *(type metadata accessor for Device(0) + 24));
    *v37 = v34;
    v37[1] = v32;
    v37[2] = v33;
  }

  else
  {
    v35 = type metadata accessor for Device(0);
    v161 = 0;
    v36 = (v172 + *(v35 + 24));
    v36[1] = 0;
    v36[2] = 0;
    *v36 = 8;
    v31 = v2;
  }

  v38 = v169;
  if (qword_2814AD298 != -1)
  {
    swift_once();
  }

  v39 = sub_24ACD0490();
  v40 = __swift_project_value_buffer(v39, qword_2814AEE10);
  v41 = a1;
  v160 = v40;
  v42 = sub_24ACD0470();
  v43 = sub_24ACD0900();

  v44 = os_log_type_enabled(v42, v43);
  v163 = v17;
  if (v44)
  {
    v159 = v31;
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v176 = v46;
    *v45 = 136315138;
    v47 = [v41 bleAddressData];
    if (v47)
    {
      v48 = v47;
      v49 = v41;
      v50 = sub_24ACD02D0();
      v52 = v51;

      v173 = v50;
      v174 = v52;
      sub_24AC467AC();
      v53 = sub_24ACD0180();
      v55 = v54;
      v56 = v50;
      v41 = v49;
      v17 = v163;
      sub_24AC46698(v56, v52);
    }

    else
    {
      v53 = 0;
      v55 = 0xE000000000000000;
    }

    v57 = sub_24AC29E20(v53, v55, &v176);

    *(v45 + 4) = v57;
    _os_log_impl(&dword_24AC18000, v42, v43, "bleAddressData: %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x24C22DC60](v46, -1, -1);
    MEMORY[0x24C22DC60](v45, -1, -1);

    v31 = v159;
    v38 = v169;
  }

  else
  {
  }

  v58 = [v41 bleAddressData];
  if (!v58)
  {
    goto LABEL_32;
  }

  v59 = v58;
  v60 = sub_24ACD02D0();
  v62 = v61;

  v63 = v62 >> 62;
  if ((v62 >> 62) > 1)
  {
    if (v63 != 2)
    {
      goto LABEL_31;
    }

    v65 = *(v60 + 16);
    v64 = *(v60 + 24);
    v66 = __OFSUB__(v64, v65);
    v67 = v64 - v65;
    if (!v66)
    {
      if (v67 == 7)
      {
        goto LABEL_27;
      }

      goto LABEL_31;
    }

    __break(1u);
LABEL_71:
    __break(1u);
    return;
  }

  if (v63)
  {
    if (!__OFSUB__(HIDWORD(v60), v60))
    {
      if (HIDWORD(v60) - v60 == 7)
      {
        goto LABEL_27;
      }

LABEL_31:
      sub_24AC46698(v60, v62);
      goto LABEL_32;
    }

    goto LABEL_71;
  }

  if (BYTE6(v62) != 7)
  {
    goto LABEL_31;
  }

LABEL_27:
  sub_24ACD02F0();
  sub_24ACD02B0();
  v68 = v166;
  sub_24ACD0070();
  v69 = v168;
  if ((*(v168 + 48))(v68, 1, v38) == 1)
  {
    sub_24AC46698(v60, v62);
    sub_24AC212F4(v68, &qword_27EF9E048, &qword_24ACD5910);
LABEL_32:
    v70 = [v41 btAddressData];
    v71 = v172;
    if (!v70)
    {
LABEL_35:
      sub_24AC207C0();
      swift_allocError();
      *v78 = 3;
      swift_willThrow();

      (*(v17 + 8))(v164, v162);
      v79 = type metadata accessor for Device(0);
      sub_24ACAC4A4(*(v71 + *(v79 + 24)), *(v71 + *(v79 + 24) + 8), *(v71 + *(v79 + 24) + 16));
      return;
    }

    v72 = v70;
    v73 = sub_24ACD02D0();
    v75 = v74;

    sub_24AC46630(v73, v75);
    v76 = v170;
    sub_24ACD0070();
    v77 = v168;
    if ((*(v168 + 48))(v76, 1, v38) == 1)
    {
      sub_24AC46698(v73, v75);
      sub_24AC212F4(v76, &qword_27EF9E048, &qword_24ACD5910);
      v17 = v163;
      goto LABEL_35;
    }

    v80 = *(v77 + 32);
    v168 = v77 + 32;
    v80(v171, v76, v38);
    sub_24AC46630(v73, v75);
    v81 = sub_24ACD0470();
    v82 = sub_24ACD08F0();
    sub_24AC46698(v73, v75);
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v170 = v41;
      v84 = v83;
      v167 = swift_slowAlloc();
      v176 = v167;
      *v84 = 136315394;
      v173 = v73;
      v174 = v75;
      sub_24AC467AC();
      v85 = sub_24ACD0180();
      v87 = v80;
      v88 = v31;
      v89 = sub_24AC29E20(v85, v86, &v176);

      *(v84 + 4) = v89;
      *(v84 + 12) = 2080;
      v90 = sub_24ACD0010();
      v92 = sub_24AC29E20(v90, v91, &v176);

      *(v84 + 14) = v92;
      v31 = v88;
      v80 = v87;
      _os_log_impl(&dword_24AC18000, v81, v82, "Using classic/public btAddressData: %s with type: %s", v84, 0x16u);
      v93 = v167;
      swift_arrayDestroy();
      v38 = v169;
      MEMORY[0x24C22DC60](v93, -1, -1);
      v94 = v84;
      v41 = v170;
      MEMORY[0x24C22DC60](v94, -1, -1);
      sub_24AC46698(v73, v75);
    }

    else
    {

      sub_24AC46698(v73, v75);
    }

    v95 = type metadata accessor for Device(0);
    v96 = v172;
    v80((v172 + v95[5]), v171, v38);
    v97 = v164;
    goto LABEL_44;
  }

  v98 = *(v69 + 32);
  v168 = v69 + 32;
  v171 = v98;
  (v98)(v167, v68, v38);
  sub_24AC46630(v60, v62);
  v99 = sub_24ACD0470();
  v100 = sub_24ACD0930();
  sub_24AC46698(v60, v62);
  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v170 = v41;
    v103 = v102;
    v176 = v102;
    *v101 = 136315138;
    v173 = v60;
    v174 = v62;
    sub_24AC467AC();
    v104 = sub_24ACD0180();
    v106 = v31;
    v107 = sub_24AC29E20(v104, v105, &v176);

    *(v101 + 4) = v107;
    v31 = v106;
    v38 = v169;
    _os_log_impl(&dword_24AC18000, v99, v100, "bleAddressData is available: %s", v101, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v103);
    v108 = v103;
    v41 = v170;
    MEMORY[0x24C22DC60](v108, -1, -1);
    MEMORY[0x24C22DC60](v101, -1, -1);
    sub_24AC46698(v60, v62);
  }

  else
  {

    sub_24AC46698(v60, v62);
  }

  v109 = v164;
  v95 = type metadata accessor for Device(0);
  v96 = v172;
  (v171)(v172 + v95[5], v167, v38);
  v97 = v109;
LABEL_44:
  v110 = v162;
  (*(v163 + 16))(v165, v97, v162);
  type metadata accessor for Device(0);
  sub_24ACD0000();
  v111 = [v41 rssi];
  v112 = (v96 + v95[7]);
  *v112 = v111;
  v112[1] = v111 == 0;
  v113 = [v41 model];
  if (v113)
  {
    v114 = v113;
    v115 = sub_24ACD0590();
    v117 = v116;
  }

  else
  {
    v115 = 0;
    v117 = 0;
  }

  v118 = (v96 + v95[8]);
  *v118 = v115;
  v118[1] = v117;
  v119 = [v41 name];
  if (v119)
  {
    v120 = v119;
    v121 = sub_24ACD0590();
    v123 = v122;
  }

  else
  {
    v121 = 0;
    v123 = 0;
  }

  v124 = (v96 + v95[9]);
  *v124 = v121;
  v124[1] = v123;
  *(v96 + v95[10]) = [v41 bleChannel];
  [v41 bleAdvertisementTimestamp];
  *(v96 + v95[11]) = v125;
  v126 = [v41 objectSetupBatteryState];
  if (v126 >= 4)
  {
    v127 = 4;
  }

  else
  {
    v127 = v126;
  }

  *(v96 + v95[12]) = v127;
  v128 = [v41 objectSetupFontCode];
  if (v128)
  {
    v129 = v128;
    v130 = sub_24ACD0590();
    v132 = v131;
  }

  else
  {
    v130 = 0;
    v132 = 0;
  }

  v133 = (v96 + v95[14]);
  *v133 = v130;
  v133[1] = v132;
  v134 = [v41 objectSetupMessage];
  if (v134)
  {
    v135 = v134;
    v136 = sub_24ACD0590();
    v138 = v137;
  }

  else
  {
    v136 = 0;
    v138 = 0;
  }

  v139 = (v96 + v95[15]);
  *v139 = v136;
  v139[1] = v138;
  v140 = [v41 productID];
  v141 = &selRef_proximityPairingProductID;
  if (v140)
  {
    v141 = &selRef_productID;
  }

  *(v96 + v95[17]) = [v41 *v141];
  *(v96 + v95[18]) = [v41 vendorID];
  sub_24ACAC580(v41);
  v145 = v144;
  v146 = v41;
  if (v31)
  {
    v147 = sub_24ACD0470();
    v148 = sub_24ACD08F0();
    if (os_log_type_enabled(v147, v148))
    {
      v149 = swift_slowAlloc();
      v150 = swift_slowAlloc();
      *v149 = 138543362;
      sub_24ACAD4C4();
      swift_allocError();
      *v151 = v145;
      v152 = _swift_stdlib_bridgeErrorToNSError();
      *(v149 + 4) = v152;
      *v150 = v152;
      _os_log_impl(&dword_24AC18000, v147, v148, "No engraving data found: %{public}@", v149, 0xCu);
      sub_24AC212F4(v150, &qword_27EF9E6A0, &qword_24ACD5590);
      MEMORY[0x24C22DC60](v150, -1, -1);
      MEMORY[0x24C22DC60](v149, -1, -1);
      v153 = v146;
    }

    else
    {
      v153 = v147;
      v147 = v146;
    }

    (*(v163 + 8))(v164, v110);
    *(v96 + v95[16]) = xmmword_24ACD39F0;
    *(v96 + v95[13]) = 0;
  }

  else
  {
    v154 = v142;
    v155 = v143;
    (*(v163 + 8))(v164, v110);

    if ((v145 & 0x100000000) != 0)
    {
      v156 = 0;
    }

    else
    {
      v156 = v145;
    }

    *(v96 + v95[13]) = v156;
    v157 = (v96 + v95[16]);
    *v157 = v154;
    v157[1] = v155;
  }
}

uint64_t sub_24ACAB720@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E898, &qword_24ACD66C0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Device.description.getter()
{
  v1 = sub_24ACD0360();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = 0xE000000000000000;
  v29 = 0;
  *&v30 = 0xE000000000000000;
  sub_24ACD0A20();
  v31 = v29;
  v32 = v30;
  MEMORY[0x24C22CD50](60, 0xE100000000000000);
  v6 = type metadata accessor for Device(0);
  sub_24ACABB80(&qword_27EF9E8A0, type metadata accessor for Device, &protocol conformance descriptor for Device);
  v7 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v7);

  MEMORY[0x24C22CD50](32, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E898, &qword_24ACD66C0);
  sub_24ACABEAC(&qword_27EF9E930, MEMORY[0x277D088C8]);
  v8 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v8);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  sub_24ACD0090();
  sub_24ACABB80(&qword_27EF9E080, MEMORY[0x277D088D0], MEMORY[0x277D088E8]);
  v9 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v9);

  MEMORY[0x24C22CD50](0x3A656D616E20, 0xE600000000000000);
  v10 = (v0 + v6[9]);
  v11 = v10[1];
  if (v11)
  {
    v12 = *v10;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = v10[1];
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  MEMORY[0x24C22CD50](v12, v13);

  MEMORY[0x24C22CD50](0x3A6C65646F6D20, 0xE700000000000000);
  v14 = (v0 + v6[8]);
  v15 = v14[1];
  if (v15)
  {
    v16 = *v14;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = v14[1];
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  MEMORY[0x24C22CD50](v16, v17);

  MEMORY[0x24C22CD50](0x3A6973737220, 0xE600000000000000);
  v18 = (v0 + v6[7]);
  v19 = *v18;
  LOBYTE(v18) = v18[1];
  LOBYTE(v29) = v19;
  BYTE1(v29) = v18;
  v20 = RSSIValue.description.getter();
  MEMORY[0x24C22CD50](v20);

  MEMORY[0x24C22CD50](0xD000000000000012, 0x800000024ACDA840);
  v21 = v0 + v6[6];
  if (*v21 == 8)
  {
    v22 = 0;
  }

  else
  {
    LOWORD(v29) = *v21;
    v30 = *(v21 + 8);
    v22 = BluetoothManufacturerAdvertisementData.description.getter();
    v5 = v23;
  }

  MEMORY[0x24C22CD50](v22, v5);

  MEMORY[0x24C22CD50](0x617473656D69740ALL, 0xEB000000003A706DLL);
  sub_24ACD0310();
  v24 = sub_24ACD0330();
  v26 = v25;
  (*(v2 + 8))(v4, v1);
  MEMORY[0x24C22CD50](v24, v26);

  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  return v31;
}

uint64_t sub_24ACABB80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double static Device.emptyDevice.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_24ACD0360();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24ACD0420();
  MEMORY[0x28223BE20](v6 - 8);
  sub_24ACD0410();
  v7 = type metadata accessor for Device(0);
  sub_24ACD0000();
  sub_24ACD0020();
  sub_24ACD0340();
  sub_24ACD0320();
  v9 = v8;
  (*(v3 + 8))(v5, v2);
  v10 = (a1 + v7[6]);
  v10[1] = 0;
  v10[2] = 0;
  *v10 = 8;
  *(a1 + v7[7]) = 256;
  v11 = (a1 + v7[8]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + v7[9]);
  *v12 = 0;
  v12[1] = 0;
  *(a1 + v7[10]) = 0;
  *(a1 + v7[11]) = v9;
  *(a1 + v7[12]) = 4;
  v13 = (a1 + v7[14]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (a1 + v7[15]);
  *v14 = 0;
  v14[1] = 0;
  *(a1 + v7[17]) = 0;
  *(a1 + v7[18]) = 0;
  result = 0.0;
  *(a1 + v7[16]) = xmmword_24ACD39F0;
  *(a1 + v7[13]) = 0;
  return result;
}

unint64_t sub_24ACABDCC()
{
  result = qword_27EF9E8A8;
  if (!qword_27EF9E8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E8A8);
  }

  return result;
}

unint64_t sub_24ACABE24()
{
  result = qword_27EF9E8B0;
  if (!qword_27EF9E8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E8B0);
  }

  return result;
}

uint64_t sub_24ACABEAC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF9E898, &qword_24ACD66C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RSSIValue(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 + 0xFFFF;
  if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      return v4;
    }

    v4 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  if (v4 == 2)
  {
    v4 = a1[1];
    if (!a1[1])
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  v4 = *(a1 + 1);
  if (v4)
  {
    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  return v4;
}

_WORD *storeEnumTagSinglePayload for RSSIValue(_WORD *result, int a2, int a3)
{
  v3 = a3 + 0xFFFF;
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (!a3)
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }
  }

  else if (v5 > 1)
  {
    if (v5 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v5)
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t sub_24ACAC02C(unsigned __int8 *a1)
{
  if (a1[1])
  {
    return (*a1 | (a1[1] << 8)) - 255;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_24ACAC04C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    result[1] = ((a2 - 1) >> 8) + 1;
  }

  else
  {
    result[1] = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ObjectBatteryState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ObjectBatteryState(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_24ACAC1F8(uint64_t a1)
{
  sub_24ACAC358(319);
  if (v1 <= 0x3F)
  {
    sub_24ACD0090();
    if (v2 <= 0x3F)
    {
      sub_24ACAC3B0(319, &qword_2814AE1E8, &type metadata for BluetoothManufacturerAdvertisementData);
      if (v3 <= 0x3F)
      {
        sub_24ACAC3B0(319, &unk_2814AD040, MEMORY[0x277D837D0]);
        if (v4 <= 0x3F)
        {
          sub_24ACAC3B0(319, qword_2814AD368, &type metadata for ObjectBatteryState);
          if (v5 <= 0x3F)
          {
            sub_24ACAC3B0(319, &unk_2814AE208, MEMORY[0x277CC9318]);
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

void sub_24ACAC358(uint64_t a1)
{
  if (!qword_2814AE230)
  {
    type metadata accessor for Device(255);
    v1 = sub_24ACCFFF0();
    if (!v2)
    {
      atomic_store(v1, &qword_2814AE230);
    }
  }
}

void sub_24ACAC3B0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_24ACD0970();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_24ACAC3FC()
{
  result = qword_27EF9E8C0;
  if (!qword_27EF9E8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E8C0);
  }

  return result;
}

unint64_t sub_24ACAC450()
{
  result = qword_27EF9E8C8;
  if (!qword_27EF9E8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E8C8);
  }

  return result;
}

uint64_t sub_24ACAC4A4(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result != 8)
  {
    return sub_24AC46698(a2, a3);
  }

  return result;
}

void sub_24ACAC4C0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDF0, &qword_24ACD8480);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_24ACAC580(void *a1)
{
  v1 = a1;
  v2 = [a1 bleAppleManufacturerData];
  if (!v2)
  {
    LOBYTE(v131) = 0;
    sub_24ACAD4C4();
    swift_willThrowTypedImpl();
    return;
  }

  v3 = v2;
  v4 = sub_24ACD02D0();
  v6 = v5;

  v131 = v4;
  v132 = v6;
  sub_24AC467AC();
  log = sub_24ACD0170();
  if (qword_2814AD298 != -1)
  {
    swift_once();
  }

  v7 = sub_24ACD0490();
  __swift_project_value_buffer(v7, qword_2814AEE10);

  v8 = sub_24ACD0470();
  v9 = sub_24ACD0900();

  if (os_log_type_enabled(v8, v9))
  {
    v128 = v1;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v131 = v11;
    *v10 = 136315138;
    v12 = MEMORY[0x24C22CE70](log, MEMORY[0x277D84B78]);
    v14 = sub_24AC29E20(v12, v13, &v131);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_24AC18000, v8, v9, "advertisement.deprecated_bytes = %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x24C22DC60](v11, -1, -1);
    v15 = v10;
    v1 = v128;
    MEMORY[0x24C22DC60](v15, -1, -1);
  }

  isa = log[2].isa;
  if (isa < 5)
  {

    LOBYTE(v131) = 1;
    sub_24ACAD4C4();
    swift_willThrowTypedImpl();
    v31 = v4;
    v32 = v6;
LABEL_26:
    sub_24AC46698(v31, v32);
    return;
  }

  v129 = v6;
  v17 = BYTE4(log[4].isa);
  v18 = v1;
  v19 = sub_24ACD0470();
  v20 = sub_24ACD0900();

  if (os_log_type_enabled(v19, v20))
  {
    v124 = v4;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v131 = v22;
    *v21 = 136315394;
    LOWORD(v133) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E8D8, &qword_24ACD6A08);
    v23 = sub_24ACD05A0();
    v126 = isa;
    v25 = sub_24AC29E20(v23, v24, &v131);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    LOBYTE(v133) = [v18 proximityPairingSubType];
    v26 = sub_24ACD0C20();
    v28 = sub_24AC29E20(v26, v27, &v131);

    *(v21 + 14) = v28;
    isa = v126;
    _os_log_impl(&dword_24AC18000, v19, v20, "Read subType = %s.\nCBDevice.proximityPairingSubType = %s.", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v22, -1, -1);
    v29 = v21;
    v4 = v124;
    MEMORY[0x24C22DC60](v29, -1, -1);
  }

  if (v17 != 9 && v17 != 5)
  {

    v39 = sub_24ACD0470();
    v40 = sub_24ACD0930();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v131 = v42;
      *v41 = 136315138;
      LOWORD(v133) = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E8D8, &qword_24ACD6A08);
      v43 = sub_24ACD05A0();
      v45 = sub_24AC29E20(v43, v44, &v131);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_24AC18000, v39, v40, "Unsupported subtype for custom engraving reading: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x24C22DC60](v42, -1, -1);
      MEMORY[0x24C22DC60](v41, -1, -1);
    }

    v30 = 2;
    goto LABEL_24;
  }

  if (isa < 7)
  {

    v30 = 3;
LABEL_24:
    LOBYTE(v131) = v30;
    sub_24ACAD4C4();
    swift_willThrowTypedImpl();
    v31 = v4;
LABEL_25:
    v32 = v129;
    goto LABEL_26;
  }

  v127 = isa;
  if (log[2].isa < 7)
  {
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  sub_24ACAC4C0(log, &log[4], 5, 0xFuLL);
  v34 = *(v33 + 32);

  v35 = v18;
  v36 = sub_24ACD0470();
  v37 = sub_24ACD0900();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 33554944;
    *(v38 + 4) = v34;
    *(v38 + 6) = 1024;
    *(v38 + 8) = [v35 productID];

    _os_log_impl(&dword_24AC18000, v36, v37, "Read productIDValue = %hu,\nCBDevice.productID = %u.", v38, 0xCu);
    MEMORY[0x24C22DC60](v38, -1, -1);
  }

  else
  {

    v36 = v35;
  }

  if (v127 == 7)
  {

    v30 = 4;
    goto LABEL_24;
  }

  v125 = v4;
  if (log[2].isa < 8)
  {
    goto LABEL_63;
  }

  isa_high = HIBYTE(log[4].isa);
  v47 = isa_high & 0x10;
  v48 = v35;
  v49 = sub_24ACD0470();
  v50 = sub_24ACD0900();

  v122 = isa_high & 0x20;
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    v131 = v119;
    *v51 = 136315906;
    LODWORD(v133) = isa_high;
    type metadata accessor for CBObjectSetupFlags(0);
    v52 = sub_24ACD05A0();
    v54 = sub_24AC29E20(v52, v53, &v131);

    *(v51 + 4) = v54;
    v47 = isa_high & 0x10;
    *(v51 + 12) = 1024;
    *(v51 + 14) = v47 >> 4;
    *(v51 + 18) = 1024;
    *(v51 + 20) = (isa_high & 0x20) >> 5;
    *(v51 + 24) = 2080;
    LODWORD(v133) = [v48 objectSetupFlags];
    v55 = sub_24ACD05A0();
    v57 = sub_24AC29E20(v55, v56, &v131);

    *(v51 + 26) = v57;
    _os_log_impl(&dword_24AC18000, v49, v50, "Read flags = %s, personalized = %{BOOL}d, zeus = %{BOOL}d,\nCBDevice.objectSetupFlags = %s.", v51, 0x22u);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v119, -1, -1);
    MEMORY[0x24C22DC60](v51, -1, -1);
  }

  if (v127 < 9)
  {

    LOBYTE(v131) = 5;
    sub_24ACAD4C4();
    swift_willThrowTypedImpl();
    v31 = v4;
    goto LABEL_25;
  }

  v120 = v47;
  if (log[2].isa < 9)
  {
    goto LABEL_64;
  }

  isa_low = LOBYTE(log[5].isa);
  v59 = v48;
  v60 = sub_24ACD0470();
  v61 = sub_24ACD0900();

  v118 = isa_low;
  if (os_log_type_enabled(v60, v61))
  {
    v62 = isa_low & 3;
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v131 = v64;
    *v63 = 136315394;
    LOWORD(v133) = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E8D8, &qword_24ACD6A08);
    v65 = sub_24ACD05A0();
    v67 = sub_24AC29E20(v65, v66, &v131);

    *(v63 + 4) = v67;
    *(v63 + 12) = 2080;
    LOBYTE(v133) = [v59 objectDiscoveryBatteryState];
    v68 = sub_24ACD0C20();
    v70 = sub_24AC29E20(v68, v69, &v131);

    *(v63 + 14) = v70;
    _os_log_impl(&dword_24AC18000, v60, v61, "Read batteryState = %s,\nCBDevice.objectDiscoveryBatteryState = %s.", v63, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v64, -1, -1);
    MEMORY[0x24C22DC60](v63, -1, -1);
  }

  v71 = v59;
  v72 = sub_24ACD0470();
  v73 = sub_24ACD0900();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v131 = v75;
    *v74 = 136315394;
    LOWORD(v133) = (v118 >> 2) & 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E8D8, &qword_24ACD6A08);
    v76 = sub_24ACD05A0();
    v78 = sub_24AC29E20(v76, v77, &v131);

    *(v74 + 4) = v78;
    *(v74 + 12) = 2080;
    LOBYTE(v133) = [v71 objectSetupBatteryPerformance];
    v79 = sub_24ACD0C20();
    v81 = sub_24AC29E20(v79, v80, &v131);

    *(v74 + 14) = v81;
    _os_log_impl(&dword_24AC18000, v72, v73, "Read batteryPerformance = %s,\nCBDevice.objectSetupBatteryPerformance = %s.", v74, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v75, -1, -1);
    MEMORY[0x24C22DC60](v74, -1, -1);
  }

  if (v127 == 9)
  {

    LOBYTE(v131) = 6;
    sub_24ACAD4C4();
    swift_willThrowTypedImpl();
    v31 = v125;
    goto LABEL_25;
  }

  if (v122)
  {
    v82 = 99;
    goto LABEL_43;
  }

  if (log[2].isa < 0xA)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v82 = BYTE1(log[5].isa);
LABEL_43:
  v83 = v71;
  v84 = sub_24ACD0470();
  v85 = sub_24ACD0900();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    *v86 = 67109376;
    *(v86 + 4) = v82;
    *(v86 + 8) = 256;
    *(v86 + 10) = [v83 objectSetupColorCode];

    _os_log_impl(&dword_24AC18000, v84, v85, "Read color = %u, CBDevice.objectSetupColorCode = %hhu.", v86, 0xBu);
    MEMORY[0x24C22DC60](v86, -1, -1);
  }

  else
  {

    v84 = v83;
  }

  if (v127 < 0x1C || !v120)
  {

    v104 = sub_24ACD0470();
    v105 = sub_24ACD0930();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      *v106 = 134218240;
      *(v106 + 4) = v127 - 10;
      *(v106 + 12) = 1024;
      *(v106 + 14) = v120 >> 4;
      _os_log_impl(&dword_24AC18000, v104, v105, "No engraving data. Data size: %ld, personalized: %{BOOL}d.", v106, 0x12u);
      MEMORY[0x24C22DC60](v106, -1, -1);
    }

    sub_24AC46698(v125, v129);

    goto LABEL_61;
  }

  if (log[2].isa >= v127)
  {
    sub_24AC702C0(log, &log[4], 11, (2 * v127) | 1);
    v88 = v87;
    v90 = v89;
    v91 = v83;
    sub_24AC46630(v88, v90);
    v92 = sub_24ACD0470();
    v93 = sub_24ACD0900();
    sub_24AC46698(v88, v90);

    if (os_log_type_enabled(v92, v93))
    {
      v123 = v93;
      v94 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v133 = v121;
      *v94 = 136315650;
      sub_24AC46630(v88, v90);
      v95 = sub_24ACD0260();
      v97 = v96;
      sub_24AC46698(v88, v90);
      v98 = sub_24AC29E20(v95, v97, &v133);

      *(v94 + 4) = v98;
      *(v94 + 12) = 2080;
      v99 = [v91 objectSetupFontCode];
      if (v99)
      {
        v100 = v99;
        v101 = sub_24ACD0590();
        v103 = v102;
      }

      else
      {
        v101 = 0;
        v103 = 0;
      }

      v131 = v101;
      v132 = v103;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E8E0, &unk_24ACD6A10);
      v107 = sub_24ACD05A0();
      v109 = sub_24AC29E20(v107, v108, &v133);

      *(v94 + 14) = v109;
      *(v94 + 22) = 2080;
      v110 = [v91 objectSetupMessage];
      if (v110)
      {
        v111 = v110;
        v112 = sub_24ACD0590();
        v114 = v113;
      }

      else
      {
        v112 = 0;
        v114 = 0;
      }

      v131 = v112;
      v132 = v114;
      v115 = sub_24ACD05A0();
      v117 = sub_24AC29E20(v115, v116, &v133);

      *(v94 + 24) = v117;
      _os_log_impl(&dword_24AC18000, v92, v123, "Read engravingData = %s,\nCBDevice.objectSetupFontCode = %s, CBDevice.objectSetupMessage = %s.", v94, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C22DC60](v121, -1, -1);
      MEMORY[0x24C22DC60](v94, -1, -1);
      sub_24AC46698(v125, v129);
    }

    else
    {
      sub_24AC46698(v125, v129);
    }

LABEL_61:
    LOBYTE(v131) = 0;
    return;
  }

LABEL_66:
  __break(1u);
}

unint64_t sub_24ACAD4C4()
{
  result = qword_27EF9E8D0;
  if (!qword_27EF9E8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E8D0);
  }

  return result;
}

unint64_t sub_24ACAD52C()
{
  result = qword_27EF9E8E8;
  if (!qword_27EF9E8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E8E8);
  }

  return result;
}

_BYTE *CBDiscovery.Config.init(useCase:discoveryFlags:discoveryTypes:oobKeys:scanRate:rssiThreshold:)@<X0>(_BYTE *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, __int16 *a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a2;
  v8 = *a5;
  v9 = *a6;
  v10 = *(a6 + 2);
  *a7 = *result;
  *(a7 + 8) = v7;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = v8;
  *(a7 + 33) = v9;
  *(a7 + 35) = v10;
  return result;
}

uint64_t sub_24ACAD5BC()
{
  MEMORY[0x24C22CD50](60, 0xE100000000000000);
  v0 = type metadata accessor for MockCBDiscovery(0);
  v1 = sub_24ACBAB14(&qword_27EF9EBE0, type metadata accessor for MockCBDiscovery, &protocol conformance descriptor for MockCBDiscovery);
  v2 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v2);

  MEMORY[0x24C22CD50](32, 0xE100000000000000);
  v3 = MEMORY[0x24C22D370](v0, v1);
  MEMORY[0x24C22CD50](v3);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEA0, &qword_24ACD6AE0);
  sub_24ACD0B10();
  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_24ACAD710()
{
  MEMORY[0x24C22CD50](60, 0xE100000000000000);
  v0 = type metadata accessor for CBDiscovery(0);
  v1 = sub_24ACBAB14(&qword_2814ADD90, type metadata accessor for CBDiscovery, &protocol conformance descriptor for CBDiscovery);
  v2 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v2);

  MEMORY[0x24C22CD50](32, 0xE100000000000000);
  v3 = MEMORY[0x24C22D370](v0, v1);
  MEMORY[0x24C22CD50](v3);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEA0, &qword_24ACD6AE0);
  sub_24ACD0B10();
  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_24ACAD860()
{
  v0 = sub_24ACD0490();
  __swift_allocate_value_buffer(v0, qword_2814ADDB0);
  v1 = __swift_project_value_buffer(v0, qword_2814ADDB0);
  if (qword_2814AD298 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814AEE10);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t CBDiscovery.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth11CBDiscovery_id;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEA0, &qword_24ACD6AE0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

FindMyBluetooth::ScanRate_optional sub_24ACAD9AC@<W0>(_BYTE *a1@<X8>)
{
  result.value = ScanRate.init(rawValue:)([*(v1 + 112) bleScanRate]).value;
  v4 = v5;
  if (v5 == 9)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void *sub_24ACAD9FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E8F0, &qword_24ACD6AE8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v25 - v2;
  v4 = type metadata accessor for Device(0);
  v27 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v33 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = (&v25 - v8);
  MEMORY[0x28223BE20](v7);
  v26 = &v25 - v10;
  v11 = [*(v0 + 112) discoveredDevices];
  sub_24AC2B8F8(0, &qword_2814ACFA8, 0x277CBE020);
  v12 = sub_24ACD0700();

  v13 = v12;
  if (v12 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v13 = v23)
  {
    v15 = 0;
    v32 = v13 & 0xC000000000000001;
    v30 = v9;
    v31 = v13 & 0xFFFFFFFFFFFFFF8;
    v28 = (v27 + 48);
    v29 = (v27 + 56);
    v9 = MEMORY[0x277D84F90];
    v25 = v4;
    while (v32)
    {
      v16 = v13;
      v13 = MEMORY[0x24C22D1B0](v15);
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      v18 = v13;
      v19 = v30;
      sub_24ACAA80C(v18, v30);
      sub_24ACADDD0(v19, v3);
      (*v29)(v3, 0, 1, v4);

      if ((*v28)(v3, 1, v4) == 1)
      {
        sub_24AC212F4(v3, &unk_27EF9E8F0, &qword_24ACD6AE8);
      }

      else
      {
        v20 = v26;
        sub_24ACADDD0(v3, v26);
        sub_24ACADDD0(v20, v33);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_24AC1D768(0, v9[2] + 1, 1, v9);
        }

        v22 = v9[2];
        v21 = v9[3];
        if (v22 >= v21 >> 1)
        {
          v9 = sub_24AC1D768((v21 > 1), v22 + 1, 1, v9);
        }

        v9[2] = v22 + 1;
        sub_24ACADDD0(v33, v9 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v22);
        v4 = v25;
      }

      ++v15;
      v13 = v16;
      if (v17 == i)
      {
        goto LABEL_21;
      }
    }

    if (v15 >= *(v31 + 16))
    {
      goto LABEL_18;
    }

    v16 = v13;
    v13 = *(v13 + 8 * v15 + 32);
    v17 = v15 + 1;
    if (!__OFADD__(v15, 1))
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v23 = v13;
    i = sub_24ACD0B30();
  }

  v9 = MEMORY[0x277D84F90];
LABEL_21:

  return v9;
}

uint64_t sub_24ACADDD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Device(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static CBDiscovery.devices(with:)(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC1E290;

  return sub_24ACB9734(a1);
}

uint64_t sub_24ACADEDC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24ACADF8C;

  return sub_24AC7B474(&unk_285E25A98);
}

uint64_t sub_24ACADF8C()
{
  v2 = *v1;
  *(v2 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24ACAE0C0, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t CBDiscovery.__allocating_init(scanRate:rssiThreshold:)(_BYTE *a1, _BYTE *a2)
{
  swift_allocObject();
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AC1DF38;

  return CBDiscovery.init(scanRate:rssiThreshold:)(a1, a2);
}

uint64_t CBDiscovery.init(scanRate:rssiThreshold:)(_BYTE *a1, _BYTE *a2)
{
  *(v3 + 208) = v2;
  sub_24ACD0420();
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 232) = *a1;
  *(v3 + 233) = *a2;
  *(v3 + 234) = a2[1];

  return MEMORY[0x2822009F8](sub_24ACAE248, 0, 0);
}

uint64_t sub_24ACAE248()
{
  v1 = *(v0 + 208);
  swift_defaultActor_initialize();
  *(v1 + 112) = [objc_allocWithZone(MEMORY[0x277CBE030]) init];
  v2 = OBJC_IVAR____TtC15FindMyBluetooth11CBDiscovery_scanContinuation;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEB0, &qword_24ACD6B10);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC15FindMyBluetooth11CBDiscovery_rssiThreshold;
  *(v0 + 224) = OBJC_IVAR____TtC15FindMyBluetooth11CBDiscovery_rssiThreshold;
  *(v1 + v4) = 256;
  sub_24ACD0410();
  type metadata accessor for CBDiscovery(0);
  sub_24ACD0000();

  return MEMORY[0x2822009F8](sub_24ACAE368, v1, 0);
}

uint64_t sub_24ACAE368()
{
  v50 = v0;
  if (qword_2814ADDA8 != -1)
  {
    swift_once();
  }

  v1 = sub_24ACD0490();
  __swift_project_value_buffer(v1, qword_2814ADDB0);
  v2 = sub_24ACD0470();
  v3 = sub_24ACD0930();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 232);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v47 = v6;
    *v5 = 136315650;
    *(v5 + 4) = sub_24AC29E20(0xD00000000000001DLL, 0x800000024ACDA8B0, &v47);
    *(v5 + 12) = 2082;
    if (v4 <= 3)
    {
      v15 = 0x6E776F6E6B6E752ELL;
      v16 = 0xE900000000000063;
      v17 = 0x69646F697265702ELL;
      if (v4 != 2)
      {
        v17 = 0x6F72676B6361622ELL;
        v16 = 0xEB00000000646E75;
      }

      if (v4)
      {
        v15 = 0x746C75616665642ELL;
      }

      if (v4 <= 1)
      {
        v13 = v15;
      }

      else
      {
        v13 = v17;
      }

      if (v4 <= 1)
      {
        v14 = 0xE800000000000000;
      }

      else
      {
        v14 = v16;
      }
    }

    else
    {
      v7 = 0xE700000000000000;
      v8 = 0x6D756964656D2ELL;
      v9 = 0xE500000000000000;
      v10 = 0x686769682ELL;
      if (v4 != 7)
      {
        v10 = 2019650862;
        v9 = 0xE400000000000000;
      }

      if (v4 != 6)
      {
        v8 = v10;
        v7 = v9;
      }

      v11 = 0xE400000000000000;
      v12 = 2003790894;
      if (v4 != 4)
      {
        v12 = 0x4C6D756964656D2ELL;
        v11 = 0xEA0000000000776FLL;
      }

      if (v4 <= 5)
      {
        v13 = v12;
      }

      else
      {
        v13 = v8;
      }

      if (v4 <= 5)
      {
        v14 = v11;
      }

      else
      {
        v14 = v7;
      }
    }

    v18 = *(v0 + 234);
    v19 = *(v0 + 233);
    v20 = sub_24AC29E20(v13, v14, &v47);

    *(v5 + 14) = v20;
    *(v5 + 22) = 2082;
    v48 = v19;
    v49 = v18;
    v21 = RSSIValue.description.getter();
    v23 = sub_24AC29E20(v21, v22, &v47);

    *(v5 + 24) = v23;
    _os_log_impl(&dword_24AC18000, v2, v3, "%s scanRate:%{public}s rssiThreshold:%{public}s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v6, -1, -1);
    MEMORY[0x24C22DC60](v5, -1, -1);
  }

  v24 = *(v0 + 234);
  v25 = *(v0 + 232);
  v26 = v0[26];
  v27 = (v26 + v0[28]);
  *v27 = *(v0 + 233);
  v27[1] = v24;
  v28 = *(v26 + 112);
  v29 = swift_allocObject();
  swift_weakInit();
  v0[6] = sub_24ACBA514;
  v0[7] = v29;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_24ACAF7A4;
  v0[5] = &block_descriptor_0;
  v30 = _Block_copy(v0 + 2);
  v31 = v28;

  [v31 setDeviceFoundHandler_];
  _Block_release(v30);

  v32 = *(v26 + 112);
  v33 = swift_allocObject();
  swift_weakInit();
  v0[12] = sub_24ACBA570;
  v0[13] = v33;
  v0[8] = MEMORY[0x277D85DD0];
  v0[9] = 1107296256;
  v0[10] = sub_24ACB0134;
  v0[11] = &block_descriptor_7;
  v34 = _Block_copy(v0 + 8);
  v35 = v32;

  [v35 setDevicesBufferedHandler_];
  _Block_release(v34);

  v36 = *(v26 + 112);
  v37 = swift_allocObject();
  swift_weakInit();
  v0[18] = sub_24ACBA578;
  v0[19] = v37;
  v0[14] = MEMORY[0x277D85DD0];
  v0[15] = 1107296256;
  v0[16] = sub_24ACAF7A4;
  v0[17] = &block_descriptor_11;
  v38 = _Block_copy(v0 + 14);
  v39 = v36;

  [v39 setDeviceLostHandler_];
  _Block_release(v38);

  v40 = *(v26 + 112);
  v41 = swift_allocObject();
  swift_weakInit();
  v42 = v40;

  v0[24] = sub_24ACBA5BC;
  v0[25] = v41;
  v0[20] = MEMORY[0x277D85DD0];
  v0[21] = 1107296256;
  v0[22] = sub_24ACB1A48;
  v0[23] = &block_descriptor_15;
  v43 = _Block_copy(v0 + 20);

  [v42 setFinishHandler_];
  _Block_release(v43);

  [*(v26 + 112) setBleScanRate_];

  v44 = v0[1];
  v45 = v0[26];

  return v44(v45);
}

uint64_t sub_24ACAE9B0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24ACAE9D4, a1, 0);
}

uint64_t sub_24ACAE9D4()
{
  sub_24ACAEA34(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ACAEA34(void *a1)
{
  v108 = type metadata accessor for DeviceChange(0);
  MEMORY[0x28223BE20](v108);
  v107 = &v101 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF28, &unk_24ACD7CF0);
  v109 = *(v3 - 8);
  v110 = v3;
  MEMORY[0x28223BE20](v3);
  v106 = &v101 - v4;
  v105 = type metadata accessor for Device(0);
  v5 = MEMORY[0x28223BE20](v105);
  v7 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v104 = &v101 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v103 = &v101 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v102 = &v101 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v101 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E900, &qword_24ACD3A28);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v101 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEB0, &qword_24ACD6B10);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v101 - v21;
  if (qword_2814ADDA8 != -1)
  {
    swift_once();
  }

  v23 = sub_24ACD0490();
  v24 = __swift_project_value_buffer(v23, qword_2814ADDB0);
  v25 = a1;
  v111 = v24;
  v26 = sub_24ACD0470();
  v27 = sub_24ACD08F0();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v101 = v20;
    v29 = v28;
    v30 = v7;
    v31 = v15;
    v32 = v22;
    v33 = v19;
    v34 = swift_slowAlloc();
    *v29 = 138412290;
    *(v29 + 4) = v25;
    *v34 = v25;
    v35 = v25;
    _os_log_impl(&dword_24AC18000, v26, v27, "discovered: %@", v29, 0xCu);
    sub_24AC212F4(v34, &qword_27EF9E6A0, &qword_24ACD5590);
    v36 = v34;
    v19 = v33;
    v22 = v32;
    v15 = v31;
    v7 = v30;
    MEMORY[0x24C22DC60](v36, -1, -1);
    v37 = v29;
    v20 = v101;
    MEMORY[0x24C22DC60](v37, -1, -1);
  }

  v38 = OBJC_IVAR____TtC15FindMyBluetooth11CBDiscovery_scanContinuation;
  v39 = v112;
  swift_beginAccess();
  sub_24AC20748(v39 + v38, v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    return sub_24AC212F4(v18, &unk_27EF9E900, &qword_24ACD3A28);
  }

  (*(v20 + 32))(v22, v18, v19);
  sub_24ACAA80C(v25, v15);
  if (sub_24ACD0840())
  {
    sub_24ACD0770();
    sub_24ACBAB14(qword_2814AD050, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    v41 = swift_allocError();
    sub_24ACD04E0();
    v115[0] = v41;
    sub_24ACD08A0();
LABEL_20:
    v77 = v15;
LABEL_21:
    sub_24ACBA6AC(v77, type metadata accessor for Device);
    return (*(v20 + 8))(v22, v19);
  }

  v42 = (v39 + OBJC_IVAR____TtC15FindMyBluetooth11CBDiscovery_rssiThreshold);
  if ((*(v39 + OBJC_IVAR____TtC15FindMyBluetooth11CBDiscovery_rssiThreshold + 1) & 1) != 0 || !*v42)
  {
    sub_24ACBA644(v15, v7, type metadata accessor for Device);

    v60 = sub_24ACD0470();
    v61 = sub_24ACD08F0();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v112 = v19;
      v63 = v62;
      v64 = v15;
      v65 = swift_slowAlloc();
      v115[0] = v65;
      *v63 = 136315394;
      v66 = v42[1];
      v113 = *v42;
      v114 = v66;
      v67 = RSSIValue.description.getter();
      v69 = sub_24AC29E20(v67, v68, v115);

      *(v63 + 4) = v69;
      *(v63 + 12) = 2080;
      v70 = Device.description.getter();
      v72 = v71;
      sub_24ACBA6AC(v7, type metadata accessor for Device);
      v73 = sub_24AC29E20(v70, v72, v115);

      *(v63 + 14) = v73;
      _os_log_impl(&dword_24AC18000, v60, v61, "No rssiThreshold %s - yield discovered device: %s", v63, 0x16u);
      swift_arrayDestroy();
      v74 = v65;
      v15 = v64;
      MEMORY[0x24C22DC60](v74, -1, -1);
      v75 = v63;
      v19 = v112;
      MEMORY[0x24C22DC60](v75, -1, -1);
    }

    else
    {

      sub_24ACBA6AC(v7, type metadata accessor for Device);
    }

    sub_24ACBA644(v15, v107, type metadata accessor for Device);
    swift_storeEnumTagMultiPayload();
    v76 = v106;
    sub_24ACD0890();
    (*(v109 + 8))(v76, v110);
    goto LABEL_20;
  }

  v43 = &v15[*(v105 + 28)];
  if ((v43[1] & 1) != 0 || (v44 = *v43) == 0)
  {
    v78 = v104;
    sub_24ACBA644(v15, v104, type metadata accessor for Device);
    v79 = sub_24ACD0470();
    v80 = sub_24ACD0900();
    if (!os_log_type_enabled(v79, v80))
    {

      sub_24ACBA6AC(v78, type metadata accessor for Device);
      v77 = v15;
      goto LABEL_21;
    }

    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v83 = v22;
    v112 = v19;
    v84 = v82;
    v115[0] = v82;
    *v81 = 136315138;
    v85 = Device.description.getter();
    v86 = v15;
    v88 = v87;
    sub_24ACBA6AC(v78, type metadata accessor for Device);
    v89 = sub_24AC29E20(v85, v88, v115);

    *(v81 + 4) = v89;
    _os_log_impl(&dword_24AC18000, v79, v80, "Discovered device with unknown RSSI: %s", v81, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v84);
    MEMORY[0x24C22DC60](v84, -1, -1);
    MEMORY[0x24C22DC60](v81, -1, -1);

    sub_24ACBA6AC(v86, type metadata accessor for Device);
    return (*(v20 + 8))(v83, v112);
  }

  else
  {
    v45 = v22;
    v46 = v19;
    if (*v42 >= v44)
    {
      v90 = v103;
      sub_24ACBA644(v15, v103, type metadata accessor for Device);
      v91 = sub_24ACD0470();
      v92 = sub_24ACD0900();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v115[0] = v94;
        *v93 = 136315138;
        v95 = Device.description.getter();
        v112 = v15;
        v97 = v96;
        sub_24ACBA6AC(v90, type metadata accessor for Device);
        v98 = sub_24AC29E20(v95, v97, v115);

        *(v93 + 4) = v98;
        _os_log_impl(&dword_24AC18000, v91, v92, "Discovered device with out of range RSSI: %s", v93, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v94);
        MEMORY[0x24C22DC60](v94, -1, -1);
        MEMORY[0x24C22DC60](v93, -1, -1);

        sub_24ACBA6AC(v112, type metadata accessor for Device);
        return (*(v20 + 8))(v45, v46);
      }

      sub_24ACBA6AC(v90, type metadata accessor for Device);
      v100 = v15;
    }

    else
    {
      v47 = v102;
      sub_24ACBA644(v15, v102, type metadata accessor for Device);
      v48 = sub_24ACD0470();
      v49 = sub_24ACD08F0();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = v15;
        v52 = swift_slowAlloc();
        v115[0] = v52;
        *v50 = 136315138;
        v53 = Device.description.getter();
        v54 = v47;
        v55 = v20;
        v57 = v56;
        sub_24ACBA6AC(v54, type metadata accessor for Device);
        v58 = sub_24AC29E20(v53, v57, v115);
        v20 = v55;

        *(v50 + 4) = v58;
        _os_log_impl(&dword_24AC18000, v48, v49, "yield discovered device: %s", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v52);
        v59 = v52;
        v15 = v51;
        MEMORY[0x24C22DC60](v59, -1, -1);
        MEMORY[0x24C22DC60](v50, -1, -1);
      }

      else
      {

        sub_24ACBA6AC(v47, type metadata accessor for Device);
      }

      sub_24ACBA644(v15, v107, type metadata accessor for Device);
      swift_storeEnumTagMultiPayload();
      v99 = v106;
      sub_24ACD0890();
      (*(v109 + 8))(v99, v110);
      v100 = v15;
    }

    sub_24ACBA6AC(v100, type metadata accessor for Device);
    return (*(v20 + 8))(v45, v46);
  }
}

void sub_24ACAF7A4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_24ACAF80C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_24ACD00C0();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = a1;

    MEMORY[0x24C22C810]("devicesBuffered", 15, 2, &unk_24ACD7D08, v5);
  }

  return result;
}

uint64_t sub_24ACAF8DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24ACAF900, a1, 0);
}

uint64_t sub_24ACAF900()
{
  sub_24ACAF960(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ACAF960(unint64_t a1)
{
  v61 = *v1;
  v53 = type metadata accessor for DeviceChange(0);
  MEMORY[0x28223BE20](v53);
  v52 = (&v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF28, &unk_24ACD7CF0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E8F0, &qword_24ACD6AE8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v46 - v9;
  v60 = type metadata accessor for Device(0);
  v55 = *(v60 - 8);
  v11 = MEMORY[0x28223BE20](v60);
  v59 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v54 = &v46 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E900, &qword_24ACD3A28);
  MEMORY[0x28223BE20](v14 - 8);
  v58 = &v46 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEB0, &qword_24ACD6B10);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v46 - v18;
  if (qword_2814ADDA8 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v20 = sub_24ACD0490();
    __swift_project_value_buffer(v20, qword_2814ADDB0);

    v21 = sub_24ACD0470();
    v22 = sub_24ACD08F0();

    v23 = os_log_type_enabled(v21, v22);
    v50 = v5;
    v51 = v4;
    v49 = v7;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v63[0] = v57;
      *v24 = 136315138;
      v25 = sub_24AC2B8F8(0, &qword_2814ACFA8, 0x277CBE020);
      v26 = MEMORY[0x24C22CE70](a1, v25);
      v7 = v19;
      v28 = v17;
      v29 = v16;
      v30 = sub_24AC29E20(v26, v27, v63);

      *(v24 + 4) = v30;
      v16 = v29;
      v17 = v28;
      v19 = v7;
      _os_log_impl(&dword_24AC18000, v21, v22, "buffered: %s", v24, 0xCu);
      v31 = v57;
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x24C22DC60](v31, -1, -1);
      MEMORY[0x24C22DC60](v24, -1, -1);
    }

    v32 = OBJC_IVAR____TtC15FindMyBluetooth11CBDiscovery_scanContinuation;
    v33 = v56;
    swift_beginAccess();
    v34 = v33 + v32;
    v35 = v58;
    sub_24AC20748(v34, v58);
    if ((*(v17 + 48))(v35, 1, v16) == 1)
    {
      return sub_24AC212F4(v35, &unk_27EF9E900, &qword_24ACD3A28);
    }

    (*(v17 + 32))(v19, v35, v16);
    if (sub_24ACD0840())
    {
      sub_24ACD0770();
      sub_24ACBAB14(qword_2814AD050, MEMORY[0x277D85678], MEMORY[0x277D85680]);
      v37 = swift_allocError();
      sub_24ACD04E0();
      v62 = v37;
      sub_24ACD08A0();
      return (*(v17 + 8))(v19, v16);
    }

    v4 = a1 >> 62 ? sub_24ACD0B30() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v46 = v19;
    v47 = v17;
    v48 = v16;
    if (!v4)
    {
      break;
    }

    v38 = 0;
    v19 = 0;
    v16 = a1;
    v57 = (a1 & 0xFFFFFFFFFFFFFF8);
    v58 = a1 & 0xC000000000000001;
    v17 = v55 + 48;
    v5 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v58)
      {
        v39 = MEMORY[0x24C22D1B0](v38, v16);
      }

      else
      {
        if (v38 >= v57[2])
        {
          goto LABEL_30;
        }

        v39 = *(v16 + 8 * v38 + 32);
      }

      v7 = v39;
      a1 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      v62 = v39;
      sub_24ACB46A8(&v62, v33, v10);

      if ((*v17)(v10, 1, v60) == 1)
      {
        sub_24AC212F4(v10, &unk_27EF9E8F0, &qword_24ACD6AE8);
      }

      else
      {
        v40 = v54;
        sub_24ACADDD0(v10, v54);
        sub_24ACADDD0(v40, v59);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_24AC1D768(0, v5[2] + 1, 1, v5);
        }

        v42 = v5[2];
        v41 = v5[3];
        v7 = (v42 + 1);
        if (v42 >= v41 >> 1)
        {
          v5 = sub_24AC1D768((v41 > 1), v42 + 1, 1, v5);
        }

        v5[2] = v7;
        sub_24ACADDD0(v59, v5 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v42);
        v33 = v56;
      }

      ++v38;
      if (a1 == v4)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
  }

  v5 = MEMORY[0x277D84F90];
LABEL_26:
  if (v5[2])
  {
    *v52 = v5;
    swift_storeEnumTagMultiPayload();
    v43 = v49;
    v44 = v48;
    v45 = v46;
    sub_24ACD0890();
    (v50[1])(v43, v51);
    return (*(v47 + 8))(v45, v44);
  }

  else
  {
    (*(v47 + 8))(v46, v48);
  }
}

uint64_t sub_24ACB0134(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_24AC2B8F8(0, &qword_2814ACFA8, 0x277CBE020);
  v3 = sub_24ACD0700();

  v2(v3);
}

uint64_t sub_24ACB01B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_24ACD00C0();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = a1;

    v13 = a1;
    MEMORY[0x24C22C810](a4, a5, 2, a6, v12);
  }

  return result;
}

uint64_t sub_24ACB028C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24ACB02B0, a1, 0);
}

uint64_t sub_24ACB02B0()
{
  sub_24ACB0310(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

void sub_24ACB0310(void *a1)
{
  v86 = type metadata accessor for DeviceChange(0);
  MEMORY[0x28223BE20](v86);
  v85 = &v78 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF28, &unk_24ACD7CF0);
  v83 = *(v3 - 8);
  v84 = v3;
  MEMORY[0x28223BE20](v3);
  v82 = &v78 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E898, &qword_24ACD66C0);
  v81 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v80 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v89 = &v78 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EC40, &qword_24ACD8620);
  MEMORY[0x28223BE20](v9 - 8);
  v87 = (&v78 - v10);
  v11 = sub_24ACD0420();
  v90 = *(v11 - 8);
  v91 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v79 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v88 = &v78 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E900, &qword_24ACD3A28);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v78 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEB0, &qword_24ACD6B10);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v78 - v20;
  if (qword_2814ADDA8 != -1)
  {
    swift_once();
  }

  v22 = sub_24ACD0490();
  v23 = __swift_project_value_buffer(v22, qword_2814ADDB0);
  v24 = a1;
  v92 = v23;
  v25 = sub_24ACD0470();
  v26 = sub_24ACD08F0();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = v5;
    v28 = v21;
    v29 = v19;
    v30 = v18;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    *(v31 + 4) = v24;
    *v32 = v24;
    v33 = v24;
    _os_log_impl(&dword_24AC18000, v25, v26, "lost: %@", v31, 0xCu);
    sub_24AC212F4(v32, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v32, -1, -1);
    v34 = v31;
    v18 = v30;
    v19 = v29;
    v21 = v28;
    v5 = v27;
    MEMORY[0x24C22DC60](v34, -1, -1);
  }

  v35 = OBJC_IVAR____TtC15FindMyBluetooth11CBDiscovery_scanContinuation;
  v36 = v93;
  swift_beginAccess();
  sub_24AC20748(v36 + v35, v17);
  if ((*(v19 + 6))(v17, 1, v18) == 1)
  {
    sub_24AC212F4(v17, &unk_27EF9E900, &qword_24ACD3A28);
    return;
  }

  (*(v19 + 4))(v21, v17, v18);
  if (sub_24ACD0840())
  {
    sub_24ACD0770();
    sub_24ACBAB14(qword_2814AD050, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    v37 = swift_allocError();
    sub_24ACD04E0();
    v94 = v37;
    sub_24ACD08A0();
    (*(v19 + 1))(v21, v18);
    return;
  }

  v38 = [v24 identifier];
  if (!v38)
  {
    goto LABEL_12;
  }

  v93 = v18;
  v39 = v38;
  sub_24ACD0590();

  v40 = v87;
  sub_24ACD03B0();

  v42 = v90;
  v41 = v91;
  if ((*(v90 + 48))(v40, 1, v91) == 1)
  {
    sub_24AC212F4(v40, &qword_27EF9EC40, &qword_24ACD8620);
    v18 = v93;
LABEL_12:
    v43 = v21;
    v44 = v19;
    sub_24AC207C0();
    v45 = swift_allocError();
    *v46 = 2;
    swift_willThrow();
    v47 = v45;
    v48 = v45;
    v49 = sub_24ACD0470();
    v50 = sub_24ACD0910();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = v18;
      v53 = swift_slowAlloc();
      *v51 = 138543362;
      v54 = v45;
      v55 = _swift_stdlib_bridgeErrorToNSError();
      *(v51 + 4) = v55;
      *v53 = v55;
      _os_log_impl(&dword_24AC18000, v49, v50, "Error getting CBDevice identifier: %{public}@", v51, 0xCu);
      sub_24AC212F4(v53, &qword_27EF9E6A0, &qword_24ACD5590);
      v56 = v53;
      v18 = v52;
      MEMORY[0x24C22DC60](v56, -1, -1);
      MEMORY[0x24C22DC60](v51, -1, -1);
    }

    else
    {
    }

    (*(v44 + 1))(v43, v18);

    return;
  }

  v78 = v21;
  v57 = v88;
  (*(v42 + 32))(v88, v40, v41);
  (*(v42 + 16))(v79, v57, v41);
  type metadata accessor for Device(0);
  v58 = v89;
  sub_24ACD0000();
  v59 = v80;
  v60 = v81;
  v87 = *(v81 + 16);
  v87(v80, v58, v5);
  v61 = sub_24ACD0470();
  v62 = sub_24ACD08F0();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v79 = v19;
    v64 = v63;
    v65 = swift_slowAlloc();
    v92 = v5;
    v66 = v65;
    v94 = v65;
    *v64 = 136315138;
    sub_24AC2B6A8(&qword_27EF9E930, &qword_27EF9E898, &qword_24ACD66C0, MEMORY[0x277D088C8]);
    v67 = sub_24ACD0C20();
    v69 = v68;
    v70 = *(v60 + 8);
    v70(v59, v92);
    v71 = sub_24AC29E20(v67, v69, &v94);

    *(v64 + 4) = v71;
    _os_log_impl(&dword_24AC18000, v61, v62, "yield lost device: %s", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v66);
    v72 = v66;
    v5 = v92;
    MEMORY[0x24C22DC60](v72, -1, -1);
    v73 = v64;
    v19 = v79;
    MEMORY[0x24C22DC60](v73, -1, -1);
  }

  else
  {

    v70 = *(v60 + 8);
    v70(v59, v5);
  }

  v74 = v89;
  v87(v85, v89, v5);
  swift_storeEnumTagMultiPayload();
  v75 = v82;
  v76 = v93;
  v77 = v78;
  sub_24ACD0890();
  (*(v83 + 8))(v75, v84);
  v70(v74, v5);
  (*(v90 + 8))(v88, v91);
  (*(v19 + 1))(v77, v76);
}

uint64_t sub_24ACB0D68(void *a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if (a2)
    {
      v7 = 1;
      a1 = a2;
    }

    else if (a1)
    {
      v8 = a1;
      v7 = 0;
    }

    else
    {
      sub_24AC207C0();
      a1 = swift_allocError();
      *v9 = 0;
      v10 = a1;
      v7 = 1;
    }

    sub_24ACD00C0();
    v11 = swift_allocObject();
    *(v11 + 16) = v6;
    *(v11 + 24) = a1;
    *(v11 + 32) = v7;
    v12 = a2;
    v13 = a2;

    MEMORY[0x24C22C810]("finishHandler", 13, 2, &unk_24ACD7CC0, v11);
    sub_24ACBCED4(a1);
  }

  return result;
}

uint64_t sub_24ACB0EAC(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 32) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24ACB0ED4, a1, 0);
}

uint64_t sub_24ACB0ED4()
{
  sub_24ACB0F3C(*(v0 + 24), *(v0 + 32) & 1);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ACB0F3C(void *a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEB0, &qword_24ACD6B10);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v96 = &v76[-v8];
  v9 = sub_24ACD0440();
  v94 = *(v9 - 8);
  v95 = v9;
  MEMORY[0x28223BE20](v9);
  v93 = &v76[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_24ACD0DC0();
  v91 = *(v11 - 8);
  v92 = v11;
  MEMORY[0x28223BE20](v11);
  v87 = &v76[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v88 = sub_24ACD0DA0();
  v86 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v83 = &v76[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v84 = sub_24ACD0E10();
  v82 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v80 = &v76[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_24ACD0E20();
  v89 = *(v15 - 8);
  v90 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v81 = &v76[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v85 = &v76[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E900, &qword_24ACD3A28);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v100 = &v76[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x28223BE20](v20);
  v98 = &v76[-v23];
  MEMORY[0x28223BE20](v22);
  v97 = &v76[-v24];
  if (qword_2814ADDA8 != -1)
  {
    swift_once();
  }

  v25 = sub_24ACD0490();
  __swift_project_value_buffer(v25, qword_2814ADDB0);
  sub_24ACBCF88(a1);
  v26 = sub_24ACD0470();
  v27 = sub_24ACD08F0();
  sub_24ACBCED4(a1);
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v99 = v6;
    v29 = v28;
    v30 = swift_slowAlloc();
    v79 = v2;
    v31 = v30;
    v101[0] = v30;
    *v29 = 136315138;
    v102 = a1;
    LOBYTE(v103) = a2 & 1;
    v32 = a1;
    sub_24ACBCF88(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EC18, &qword_24ACD7CD0);
    v33 = sub_24ACD05A0();
    v35 = a2;
    v36 = v7;
    v37 = sub_24AC29E20(v33, v34, v101);

    *(v29 + 4) = v37;
    v7 = v36;
    a2 = v35;
    _os_log_impl(&dword_24AC18000, v26, v27, "finishHandler: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    v38 = v31;
    v3 = v79;
    MEMORY[0x24C22DC60](v38, -1, -1);
    v39 = v29;
    v6 = v99;
    MEMORY[0x24C22DC60](v39, -1, -1);
  }

  else
  {
    v32 = a1;
  }

  if ((a2 & 1) == 0)
  {
    [v32 scanTime];
    v44 = sub_24ACD0E50();
    v46 = v45;
    v47 = sub_24ACD0470();
    v48 = sub_24ACD0930();
    v49 = v48;
    if (os_log_type_enabled(v47, v48))
    {
      v50 = swift_slowAlloc();
      v79 = v46;
      v51 = v50;
      v97 = swift_slowAlloc();
      v101[0] = v97;
      *v51 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EC08, &qword_24ACD7CC8);
      v52 = sub_24ACD0DE0();
      v99 = v6;
      v53 = v52;
      v54 = *(v52 - 8);
      v78 = v44;
      v55 = v7;
      v56 = v54;
      v57 = (*(v54 + 80) + 32) & ~*(v54 + 80);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_24ACD39E0;
      sub_24ACD0DD0();
      sub_24ACBC7D8(v58);
      swift_setDeallocating();
      (*(v56 + 8))(v58 + v57, v53);
      v7 = v55;
      swift_deallocClassInstance();
      v59 = v80;
      sub_24ACD0E00();
      v60 = v83;
      sub_24ACD0D90();
      v61 = v87;
      sub_24ACD0DB0();
      v77 = v49;
      v62 = v81;
      sub_24ACD0160();

      (*(v91 + 8))(v61, v92);
      (*(v86 + 8))(v60, v88);
      (*(v82 + 8))(v59, v84);
      v63 = v93;
      sub_24ACD0430();
      v64 = v85;
      sub_24ACD0DF0();
      (*(v94 + 8))(v63, v95);
      v65 = v90;
      v66 = *(v89 + 8);
      v66(v62, v90);
      sub_24ACBAB14(&qword_27EF9EC10, MEMORY[0x277CC9FF0], MEMORY[0x277CC9FE8]);
      sub_24ACD0E30();
      v66(v64, v65);
      v67 = sub_24AC29E20(v102, v103, v101);

      *(v51 + 4) = v67;
      v6 = v99;
      _os_log_impl(&dword_24AC18000, v47, v77, "Scan duration: %s", v51, 0xCu);
      v68 = v97;
      __swift_destroy_boxed_opaque_existential_0(v97);
      MEMORY[0x24C22DC60](v68, -1, -1);
      MEMORY[0x24C22DC60](v51, -1, -1);
    }

    v69 = OBJC_IVAR____TtC15FindMyBluetooth11CBDiscovery_scanContinuation;
    swift_beginAccess();
    v70 = v3 + v69;
    v71 = v98;
    sub_24AC20748(v70, v98);
    if ((*(v7 + 48))(v71, 1, v6))
    {
      v43 = v71;
      goto LABEL_13;
    }

    v72 = v96;
    (*(v7 + 16))(v96, v71, v6);
    sub_24AC212F4(v71, &unk_27EF9E900, &qword_24ACD3A28);
    v101[0] = 0;
LABEL_16:
    sub_24ACD08A0();
    (*(v7 + 8))(v72, v6);
    goto LABEL_17;
  }

  v102 = v32;
  v40 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EC00, &qword_24ACD4690);
  swift_willThrowTypedImpl();
  v41 = OBJC_IVAR____TtC15FindMyBluetooth11CBDiscovery_scanContinuation;
  swift_beginAccess();
  v42 = v97;
  sub_24AC20748(v3 + v41, v97);
  if (!(*(v7 + 48))(v42, 1, v6))
  {
    v72 = v96;
    (*(v7 + 16))(v96, v42, v6);
    sub_24AC212F4(v42, &unk_27EF9E900, &qword_24ACD3A28);
    v101[0] = v32;
    goto LABEL_16;
  }

  sub_24ACBCED4(v32);
  v43 = v42;
LABEL_13:
  sub_24AC212F4(v43, &unk_27EF9E900, &qword_24ACD3A28);
LABEL_17:
  v73 = v100;
  (*(v7 + 56))(v100, 1, 1, v6);
  v74 = OBJC_IVAR____TtC15FindMyBluetooth11CBDiscovery_scanContinuation;
  swift_beginAccess();
  sub_24AC21108(v73, v3 + v74);
  return swift_endAccess();
}

void sub_24ACB1A48(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_24ACB1AD4(uint64_t a1, uint64_t a2)
{
  *(v3 + 168) = a1;
  *(v3 + 176) = v2;
  *(v3 + 184) = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEC8, &unk_24ACD6B20);
  *(v3 + 192) = v5;
  *(v3 + 200) = *(v5 - 8);
  *(v3 + 208) = swift_task_alloc();
  v6 = type metadata accessor for CBDiscovery.OOBKeyInfo(0);
  *(v3 + 216) = v6;
  *(v3 + 224) = *(v6 - 8);
  *(v3 + 232) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E900, &qword_24ACD3A28);
  v7 = swift_task_alloc();
  *(v3 + 282) = *a2;
  v8 = *(a2 + 8);
  *(v3 + 240) = v7;
  *(v3 + 248) = v8;
  *(v3 + 256) = *(a2 + 16);
  *(v3 + 283) = *(a2 + 32);
  *(v3 + 280) = *(a2 + 33);
  *(v3 + 284) = *(a2 + 35);

  return MEMORY[0x2822009F8](sub_24ACB1C8C, v2, 0);
}

uint64_t sub_24ACB1C8C()
{
  v64 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 176);
  v3 = OBJC_IVAR____TtC15FindMyBluetooth11CBDiscovery_scanContinuation;
  swift_beginAccess();
  sub_24AC20748(v2 + v3, v1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEB0, &qword_24ACD6B10);
  LODWORD(v2) = (*(*(v4 - 8) + 48))(v1, 1, v4);
  sub_24AC212F4(v1, &unk_27EF9E900, &qword_24ACD3A28);
  if (v2 == 1)
  {
    if (qword_2814ADDA8 != -1)
    {
      swift_once();
    }

    v5 = sub_24ACD0490();
    __swift_project_value_buffer(v5, qword_2814ADDB0);

    v6 = sub_24ACD0470();
    v7 = sub_24ACD0930();

    if (os_log_type_enabled(v6, v7))
    {
      v53 = *(v0 + 280);
      v54 = *(v0 + 284);
      v8 = *(v0 + 283);
      v10 = *(v0 + 256);
      v9 = *(v0 + 264);
      v11 = *(v0 + 248);
      v12 = *(v0 + 282);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v56 = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_24AC29E20(0x6E6F63286E616373, 0xED0000293A676966, &v56);
      *(v13 + 12) = 2082;
      LOBYTE(v57) = v12;
      v58 = v11;
      v59 = v10;
      v60 = v9;
      v61 = v8;
      v62 = v53;
      v63 = v54;

      v15 = CBDiscovery.Config.description.getter();
      v17 = v16;

      v18 = sub_24AC29E20(v15, v17, &v56);

      *(v13 + 14) = v18;
      _os_log_impl(&dword_24AC18000, v6, v7, "%s with config %{public}s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C22DC60](v14, -1, -1);
      MEMORY[0x24C22DC60](v13, -1, -1);
    }

    v19 = *(v0 + 264);
    v20 = *(*(v0 + 176) + 112);
    [v20 setDiscoveryFlags_];
    v21 = *(v19 + 16);
    v55 = v20;
    if (v21)
    {
      v22 = *(v0 + 264);
      v23 = *(v0 + 224);
      v57 = MEMORY[0x277D84F90];
      sub_24ACD0AB0();
      v24 = v22 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
      v25 = *(v23 + 72);
      do
      {
        v26 = *(v0 + 232);
        sub_24ACBA644(v24, v26, type metadata accessor for CBDiscovery.OOBKeyInfo);
        v27 = [objc_allocWithZone(MEMORY[0x277CBE058]) init];
        v28 = sub_24ACD02C0();
        [v27 setIrkData_];

        v29 = sub_24ACD0060();
        v31 = v30;
        v32 = sub_24ACD02C0();
        sub_24AC46698(v29, v31);
        [v27 setBtAddressData_];

        [v27 setAddressType_];
        sub_24ACBA6AC(v26, type metadata accessor for CBDiscovery.OOBKeyInfo);
        sub_24ACD0A90();
        sub_24ACD0AC0();
        sub_24ACD0AD0();
        sub_24ACD0AA0();
        v24 += v25;
        --v21;
      }

      while (v21);
      v20 = v55;
    }

    sub_24AC2B8F8(0, &unk_2814ACFD8, 0x277CBE058);
    v33 = sub_24ACD06F0();

    [v20 setOobKeys_];

    ScanRate.init(rawValue:)([v20 bleScanRate]);
    v34 = *(v0 + 282);
    [v20 setBleScanRate_];
    if (v34 > 1)
    {
      if (v34 != 2)
      {
LABEL_20:
        if ((*(v0 + 284) & 1) == 0)
        {
          v39 = *(v0 + 280);
          v40 = (*(v0 + 176) + OBJC_IVAR____TtC15FindMyBluetooth11CBDiscovery_rssiThreshold);
          *v40 = v39;
          v40[1] = HIBYTE(v39) & 1;
        }

        v41 = *(v0 + 256);
        v42 = *(v41 + 16);
        if (v42)
        {
          v43 = (v41 + 32);
          do
          {
            if (*v43++)
            {
              v45 = 29;
            }

            else
            {
              v45 = 14;
            }

            [v20 addDiscoveryType_];
            --v42;
          }

          while (v42);
        }

        v46 = *(v0 + 200);
        v47 = *(v0 + 208);
        v49 = *(v0 + 184);
        v48 = *(v0 + 192);
        v50 = *(v0 + 176);
        v51 = swift_task_alloc();
        *(v51 + 16) = v50;
        *(v51 + 24) = v49;
        type metadata accessor for DeviceChange(0);
        (*(v46 + 104))(v47, *MEMORY[0x277D858A0], v48);
        sub_24ACD08D0();

        *(v0 + 16) = v0;
        *(v0 + 24) = sub_24ACB23D4;
        v52 = swift_continuation_init();
        *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E910, &unk_24ACD6B30);
        *(v0 + 80) = MEMORY[0x277D85DD0];
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_24ACB2A64;
        *(v0 + 104) = &block_descriptor_18;
        *(v0 + 112) = v52;
        [v55 activateWithCompletion_];

        return MEMORY[0x282200938](v0 + 16);
      }

      v35 = 589825;
    }

    else if (v34)
    {
      v35 = 589824;
    }

    else
    {
      v35 = 269;
    }

    [v20 setUseCase_];
    goto LABEL_20;
  }

  sub_24AC207C0();
  swift_allocError();
  *v36 = 1;
  swift_willThrow();

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_24ACB23D4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 272) = v2;
  v3 = *(v1 + 176);
  if (v2)
  {
    v4 = sub_24ACB256C;
  }

  else
  {
    v4 = sub_24ACB24F4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24ACB24F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ACB256C(uint64_t a1)
{
  v2 = *(v1 + 168);
  swift_willThrow();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF18, &qword_24ACD3BF0);
  (*(*(v3 - 8) + 8))(v2, v3);

  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_24ACB263C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E900, &qword_24ACD3A28);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEB0, &qword_24ACD6B10);
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a1, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  v11 = OBJC_IVAR____TtC15FindMyBluetooth11CBDiscovery_scanContinuation;
  swift_beginAccess();
  sub_24AC21108(v8, a2 + v11);
  swift_endAccess();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;

  return sub_24ACD0880();
}

uint64_t sub_24ACB27BC(uint64_t a1, uint64_t a2)
{
  if (qword_2814ADDA8 != -1)
  {
    swift_once();
  }

  v3 = sub_24ACD0490();
  __swift_project_value_buffer(v3, qword_2814ADDB0);
  v4 = sub_24ACD0470();
  v5 = sub_24ACD08F0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_24AC18000, v4, v5, "Scan termination", v6, 2u);
    MEMORY[0x24C22DC60](v6, -1, -1);
  }

  sub_24ACD00C0();

  MEMORY[0x24C22C810]("CBDiscovery.onTermination", 25, 2, &unk_24ACD7CB0, a2);
}

uint64_t sub_24ACB290C()
{
  sub_24ACB296C();
  v1 = *(v0 + 8);

  return v1();
}

id sub_24ACB296C()
{
  v1 = v0;
  if (qword_2814ADDA8 != -1)
  {
    swift_once();
  }

  v2 = sub_24ACD0490();
  __swift_project_value_buffer(v2, qword_2814ADDB0);
  v3 = sub_24ACD0470();
  v4 = sub_24ACD0930();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24AC18000, v3, v4, "Calling CBDiscovery.finish()", v5, 2u);
    MEMORY[0x24C22DC60](v5, -1, -1);
  }

  v6 = *(v1 + 112);

  return [v6 finish];
}

uint64_t sub_24ACB2A64(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EC00, &qword_24ACD4690);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_24ACB2B10(uint64_t a1, _BYTE *a2)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = v2;
  *(v3 + 52) = *a2;
  *(v3 + 53) = a2[1];
  return MEMORY[0x2822009F8](sub_24ACB2B40, v2, 0);
}

uint64_t sub_24ACB2B40()
{
  v19 = v0;
  if (qword_2814ADDA8 != -1)
  {
    swift_once();
  }

  v1 = sub_24ACD0490();
  __swift_project_value_buffer(v1, qword_2814ADDB0);
  v2 = sub_24ACD0470();
  v3 = sub_24ACD0930();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 53);
    v5 = *(v0 + 52);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_24AC29E20(0xD00000000000002ELL, 0x800000024ACDA8F0, &v16);
    *(v6 + 12) = 2080;
    v17 = v5;
    v18 = v4;
    v8 = RSSIValue.description.getter();
    v10 = sub_24AC29E20(v8, v9, &v16);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_24AC18000, v2, v3, "%s with %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v7, -1, -1);
    MEMORY[0x24C22DC60](v6, -1, -1);
  }

  v11 = *(v0 + 52);
  if (*(v0 + 53))
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  *(v0 + 16) = 0;
  *(v0 + 24) = 0x2000000;
  *(v0 + 32) = &unk_285E25AC0;
  *(v0 + 40) = MEMORY[0x277D84F90];
  *(v0 + 48) = 1;
  *(v0 + 49) = v12 | v11;
  *(v0 + 51) = 0;
  v13 = swift_task_alloc();
  *(v0 + 72) = v13;
  *v13 = v0;
  v13[1] = sub_24ACB2D94;
  v14 = *(v0 + 56);

  return sub_24ACB1AD4(v14, v0 + 16);
}