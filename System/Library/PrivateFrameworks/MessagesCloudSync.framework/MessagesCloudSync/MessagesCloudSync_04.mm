uint64_t sub_22B982058(uint64_t a1, uint64_t a2)
{
  v3[29] = a2;
  v3[30] = v2;
  v3[28] = a1;
  return MEMORY[0x2822009F8](sub_22B98207C, 0, 0);
}

uint64_t sub_22B98207C()
{
  v14 = *(v0 + 224);
  v1 = sub_22B9358B4((*(v0 + 240) + 24), *(*(v0 + 240) + 48));
  v3 = *(v1 + 1);
  v2 = *(v1 + 2);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v3;
  *(v0 + 48) = v2;
  v4 = v1[12];
  v6 = *(v1 + 4);
  v5 = *(v1 + 5);
  *(v0 + 64) = *(v1 + 3);
  *(v0 + 80) = v6;
  *(v0 + 96) = v5;
  *(v0 + 112) = v4;
  v7 = *(v0 + 32);
  *(v0 + 120) = *(v0 + 16);
  *(v0 + 136) = v7;
  v8 = *(v0 + 64);
  *(v0 + 152) = *(v0 + 48);
  *(v0 + 168) = v8;
  v9 = *(v0 + 96);
  *(v0 + 184) = *(v0 + 80);
  *(v0 + 200) = v9;
  *(v0 + 216) = v4;
  v10 = swift_task_alloc();
  *(v0 + 248) = v10;
  *(v10 + 16) = v0 + 120;
  *(v10 + 24) = v14;
  v11 = swift_task_alloc();
  *(v0 + 256) = v11;
  *v11 = v0;
  v11[1] = sub_22B9821E8;
  v12 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v11, 0, 0, 0x6F6328746E756F63, 0xEF293A747865746ELL, sub_22B988D18, v10, v12);
}

uint64_t sub_22B9821E8()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_22B982304;
  }

  else
  {

    v2 = sub_22B92BFF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B982304()
{

  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 264);
  v2 = sub_22BA0FEFC();
  sub_22B936CA8(v2, qword_28141AD40);
  v3 = v1;
  v4 = sub_22BA0FEDC();
  v5 = sub_22BA1044C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 264);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_22B92A000, v4, v5, "Encountered error fetching record counts: %@", v8, 0xCu);
    sub_22B936BEC(v9, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v9, -1, -1);
    MEMORY[0x23189ADD0](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_22B9824B0(uint64_t a1, uint64_t a2)
{
  v3[29] = a2;
  v3[30] = v2;
  v3[28] = a1;
  return MEMORY[0x2822009F8](sub_22B9824D4, 0, 0);
}

uint64_t sub_22B9824D4()
{
  v14 = *(v0 + 224);
  v1 = sub_22B9358B4(*(v0 + 240), *(*(v0 + 240) + 24));
  v3 = *(v1 + 1);
  v2 = *(v1 + 2);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v3;
  *(v0 + 48) = v2;
  v4 = v1[12];
  v6 = *(v1 + 4);
  v5 = *(v1 + 5);
  *(v0 + 64) = *(v1 + 3);
  *(v0 + 80) = v6;
  *(v0 + 96) = v5;
  *(v0 + 112) = v4;
  v7 = *(v0 + 32);
  *(v0 + 120) = *(v0 + 16);
  *(v0 + 136) = v7;
  v8 = *(v0 + 64);
  *(v0 + 152) = *(v0 + 48);
  *(v0 + 168) = v8;
  v9 = *(v0 + 96);
  *(v0 + 184) = *(v0 + 80);
  *(v0 + 200) = v9;
  *(v0 + 216) = v4;
  v10 = swift_task_alloc();
  *(v0 + 248) = v10;
  *(v10 + 16) = v0 + 120;
  *(v10 + 24) = v14;
  v11 = swift_task_alloc();
  *(v0 + 256) = v11;
  *v11 = v0;
  v11[1] = sub_22B98263C;
  v12 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v11, 0, 0, 0x6F6328746E756F63, 0xEF293A747865746ELL, sub_22B9889B8, v10, v12);
}

uint64_t sub_22B98263C()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_22B988D14;
  }

  else
  {

    v2 = sub_22B9475A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B982758(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22B98277C, 0, 0);
}

uint64_t sub_22B98277C()
{
  v1 = sub_22B9358B4(*(v0 + 32), *(*(v0 + 32) + 24));
  sub_22B9ECD2C(*(v1 + 16));
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_22B982870;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_22B9E81AC(v4, v3, 0, 0, 1, "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/MessagesCloudSync/SyncSteps/RecordZoneDeleter.swift", 109, 2);
}

uint64_t sub_22B982870()
{

  return MEMORY[0x2822009F8](sub_22B98296C, 0, 0);
}

uint64_t sub_22B98296C()
{
  v1 = sub_22B9358B4((*(v0 + 16) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(*(v0 + 16) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
  v2 = *v1;
  v3 = *(*v1 + 56);
  if (v3)
  {
    [v3 startChanges];
    v4 = *(v2 + 56);
    if (v4)
    {
      [v4 setSyncJobStateWithState_];
      v5 = *(v2 + 56);
      if (v5)
      {
        [v5 commitChanges];
      }
    }
  }

  v6 = *(v0 + 8);

  return v6();
}

void sub_22B982A24(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 isInternalInstall];

    if (v4)
    {
      v5 = *(*sub_22B9358B4((a1 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(a1 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24)) + 24);
      v6 = sub_22BA0FFCC();
      v7 = [v5 objectForKey_];

      if (v7)
      {
        sub_22BA107AC();
        swift_unknownObjectRelease();
        sub_22B936BEC(v14, &unk_27D8D5A30, qword_22BA13390);
        v8 = *MEMORY[0x277D19D08];
        sub_22B9349C8(&unk_27D8D4E00, &qword_22BA13E00);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_22BA13CB0;
        *(inited + 32) = sub_22BA0FFFC();
        *(inited + 72) = MEMORY[0x277D837D0];
        *(inited + 40) = v10;
        *(inited + 48) = 0xD000000000000040;
        *(inited + 56) = 0x800000022BA1D820;
        v11 = v8;
        sub_22B9BBA8C(inited);
        swift_setDeallocating();
        sub_22B936BEC(inited + 32, &unk_27D8D5770, &qword_22BA135E0);
        v12 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        v13 = sub_22BA0FF5C();

        [v12 initWithDomain:v11 code:1 userInfo:v13];

        swift_willThrow();
      }

      else
      {
        memset(v14, 0, sizeof(v14));
        sub_22B936BEC(v14, &unk_27D8D5A30, qword_22BA13390);
      }
    }
  }
}

uint64_t sub_22B982C88(uint64_t a1, uint64_t a2)
{
  v3[98] = v2;
  v3[97] = a2;
  v3[96] = a1;
  sub_22B9349C8(&unk_27D8D5780, &qword_22BA13DB0);
  v3[99] = swift_task_alloc();
  v4 = sub_22B9349C8(&unk_27D8D53D0, &qword_22BA13DB8);
  v3[100] = v4;
  v3[101] = *(v4 - 8);
  v3[102] = swift_task_alloc();
  v3[103] = swift_task_alloc();
  v5 = sub_22B9349C8(&qword_27D8D4F28, &qword_22BA13DC0);
  v3[104] = v5;
  v3[105] = *(v5 - 8);
  v3[106] = swift_task_alloc();
  v6 = sub_22B9349C8(&unk_27D8D53E0, &unk_22BA13DC8);
  v3[107] = v6;
  v3[108] = *(v6 - 8);
  v3[109] = swift_task_alloc();
  v3[110] = swift_task_alloc();
  v3[111] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B982E88, 0, 0);
}

uint64_t sub_22B982E88()
{
  v18 = v0;
  v1 = sub_22B9358B4(*(v0 + 784), *(*(v0 + 784) + 24));
  v2 = sub_22BA082E0(*(v1 + 16));
  v4 = v3;
  *(v0 + 896) = v2;
  *(v0 + 904) = v3;
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v5 = sub_22BA0FEFC();
  *(v0 + 912) = sub_22B936CA8(v5, qword_28141AD40);

  swift_unknownObjectRetain();
  v6 = sub_22BA0FEDC();
  v7 = sub_22BA1046C();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_22B99153C(v2, v4, &v17);
    *(v8 + 12) = 2080;
    sub_22BA0FDCC();
    sub_22B988C18(&qword_281416BE0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v10 = sub_22BA10C1C();
    v12 = sub_22B99153C(v10, v11, &v17);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_22B92A000, v6, v7, "Starting deletes to %s (%s)", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v9, -1, -1);
    MEMORY[0x23189ADD0](v8, -1, -1);
  }

  v13 = swift_task_alloc();
  *(v0 + 920) = v13;
  *v13 = v0;
  v13[1] = sub_22B983118;
  v14 = *(v0 + 776);
  v15 = *(v0 + 768);

  return sub_22B984FF0(v15, v14);
}

uint64_t sub_22B983118(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 928) = a1;
  *(v3 + 936) = v1;

  if (v1)
  {
    v4 = sub_22B9837C4;
  }

  else
  {
    v4 = sub_22B983230;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22B983230()
{
  v49 = v0;
  v1 = *(v0 + 928);
  v2 = *(v1 + 16);
  *(v0 + 944) = v2;
  if (v2)
  {
    v42 = *(v0 + 880);
    v43 = *(v0 + 872);
    v3 = *(v0 + 864);
    v40 = *(v0 + 888);
    v41 = *(v0 + 856);
    v4 = *(v0 + 840);
    v38 = *(v0 + 848);
    v39 = *(v0 + 832);
    v44 = *(v0 + 824);
    v45 = *(v0 + 808);
    v46 = *(v0 + 800);
    v47 = *(v0 + 816);
    v5 = *(v0 + 784);
    v6 = *(v0 + 776);
    v7 = *(v0 + 768);
    v8 = sub_22B9358B4(v5, v5[3]);
    v9 = sub_22B981E44(v1);

    v10 = *v8;
    v11 = *(v8 + 2);
    *(v0 + 272) = *(v8 + 1);
    *(v0 + 288) = v11;
    *(v0 + 256) = v10;
    v12 = *(v8 + 3);
    v13 = *(v8 + 4);
    v14 = *(v8 + 5);
    *(v0 + 352) = v8[12];
    *(v0 + 320) = v13;
    *(v0 + 336) = v14;
    *(v0 + 304) = v12;
    v15 = sub_22B9874C8(v7, v6, v9);
    *(v0 + 952) = v15;

    v16 = sub_22B9358B4(v5, v5[3]);
    v17 = *v16;
    v18 = *(v16 + 2);
    *(v0 + 376) = *(v16 + 1);
    *(v0 + 392) = v18;
    *(v0 + 360) = v17;
    v19 = *(v16 + 3);
    v20 = *(v16 + 4);
    v21 = *(v16 + 5);
    *(v0 + 456) = v16[12];
    *(v0 + 424) = v20;
    *(v0 + 440) = v21;
    *(v0 + 408) = v19;
    *(v0 + 592) = &type metadata for SyncZoneInfo;
    *(v0 + 600) = &off_283F57268;
    v22 = swift_allocObject();
    *(v0 + 568) = v22;
    memmove((v22 + 16), v16, 0x68uLL);
    *(v0 + 697) = 0;
    v23 = swift_task_alloc();
    *(v23 + 16) = v15;
    *(v23 + 24) = 0;
    *(v23 + 32) = v0 + 697;
    *(v23 + 40) = v7;
    *(v23 + 48) = v6;
    *(v23 + 56) = v0 + 568;
    (*(v4 + 104))(v38, *MEMORY[0x277D858A0], v39);
    sub_22B951748(v0 + 360, v0 + 464);
    sub_22BA1035C();

    (*(v3 + 32))(v42, v40, v41);
    sub_22B936C4C((v0 + 568));
    (*(v3 + 16))(v43, v42, v41);
    sub_22B95194C(&qword_281414C10, &unk_27D8D53E0, &unk_22BA13DC8, MEMORY[0x277D858E0]);
    sub_22BA1032C();
    (*(v45 + 32))(v47, v44, v46);
    (*(v3 + 8))(v42, v41);
    *(v0 + 1032) = 0;
    *(v0 + 1016) = 0u;

    return MEMORY[0x2822009F8](sub_22B983890, 0, 0);
  }

  else
  {

    swift_unknownObjectRetain();
    v24 = sub_22BA0FEDC();
    v25 = sub_22BA1046C();

    swift_unknownObjectRelease();
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 904);
    if (v26)
    {
      v28 = *(v0 + 896);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v48[0] = v30;
      *v29 = 136315394;
      v31 = sub_22B99153C(v28, v27, v48);

      *(v29 + 4) = v31;
      *(v29 + 12) = 2080;
      sub_22BA0FDCC();
      sub_22B988C18(&qword_281416BE0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v32 = sub_22BA10C1C();
      v34 = sub_22B99153C(v32, v33, v48);

      *(v29 + 14) = v34;
      _os_log_impl(&dword_22B92A000, v24, v25, "Nothing more to delete for %s (%s)", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v30, -1, -1);
      MEMORY[0x23189ADD0](v29, -1, -1);
    }

    else
    {
    }

    v35 = *(v0 + 944) != 0;

    v36 = *(v0 + 8);

    return v36(0, v35);
  }
}

uint64_t sub_22B9837C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B983890()
{
  swift_beginAccess();
  v1 = sub_22B95194C(&qword_281414C20, &unk_27D8D53D0, &qword_22BA13DB8, MEMORY[0x277D858D0]);
  v2 = swift_task_alloc();
  *(v0 + 960) = v2;
  *v2 = v0;
  v2[1] = sub_22B98397C;
  v3 = *(v0 + 800);

  return MEMORY[0x282200308](v0 + 680, v3, v1);
}

uint64_t sub_22B98397C()
{
  v2 = *v1;
  *(*v1 + 968) = v0;

  if (v0)
  {
    v3 = sub_22B983F74;
  }

  else
  {
    swift_endAccess();
    *(v2 + 976) = *(v2 + 680);
    *(v2 + 698) = *(v2 + 696);
    v3 = sub_22B983AAC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B983AAC(uint64_t (*a1)(), uint64_t a2)
{
  v42 = v2;
  v3 = *(v2 + 698);
  if (v3 > 0xFD)
  {
    v4 = *(v2 + 816);
    v5 = *(v2 + 808);
    v6 = *(v2 + 800);

    (*(v5 + 8))(v4, v6);
    v7 = *(v2 + 784);
    sub_22B988B5C(v7, v2 + 16);
    sub_22B988B5C(v7, v2 + 136);
    v8 = sub_22BA0FEDC();
    v9 = sub_22BA1046C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v2 + 1024);
      v11 = *(v2 + 1016);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v41 = v13;
      *v12 = 136315906;
      v14 = sub_22B9358B4((v2 + 16), *(v2 + 40));
      v15 = sub_22BA082E0(*(v14 + 16));
      v17 = v16;
      sub_22B988B94(v2 + 16);
      v18 = sub_22B99153C(v15, v17, &v41);

      *(v12 + 4) = v18;
      *(v12 + 12) = 2048;
      *(v12 + 14) = v10;
      *(v12 + 22) = 2080;
      v19 = sub_22B9358B4((v2 + 136), *(v2 + 160));
      v20 = sub_22BA082E0(*(v19 + 16));
      v22 = v21;
      sub_22B988B94(v2 + 136);
      v23 = sub_22B99153C(v20, v22, &v41);

      *(v12 + 24) = v23;
      *(v12 + 32) = 2048;
      *(v12 + 34) = v11;
      _os_log_impl(&dword_22B92A000, v8, v9, "%s: %lld records %s deleted, %lld failures", v12, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v13, -1, -1);
      MEMORY[0x23189ADD0](v12, -1, -1);
    }

    else
    {

      sub_22B988B94(v2 + 136);
      sub_22B988B94(v2 + 16);
    }

    sub_22B9358B4((*(v2 + 784) + 40), *(*(v2 + 784) + 64));
    v34 = swift_task_alloc();
    *(v2 + 1040) = v34;
    *v34 = v2;
    v34[1] = sub_22B9847F0;

    return sub_22B977290();
  }

  if ((v3 & 0xC0) != 0x40)
  {
    sub_22B9518D4(*(v2 + 976), *(v2 + 984), v3);
LABEL_13:
    a1 = sub_22B983890;
    a2 = 0;
    v3 = 0;

    return MEMORY[0x2822009F8](a1, a2, v3);
  }

  if (v3)
  {
    v24 = *(v2 + 1016);
    v25 = v24 + 1;
    if (!__OFADD__(v24, 1))
    {
      v26 = *(v2 + 698);
      v27 = *(v2 + 984);
      v28 = *(v2 + 976);
      v29 = *(v2 + 904);
      v30 = *(v2 + 896);
      *(v2 + 720) = 0;
      *(v2 + 728) = 0xE000000000000000;
      v31 = v28;
      v32 = v27;
      sub_22BA108FC();
      v33 = *(v2 + 728);
      *(v2 + 704) = *(v2 + 720);
      *(v2 + 712) = v33;
      MEMORY[0x231899730](0xD00000000000001ELL, 0x800000022BA1D7E0);
      MEMORY[0x231899730](v30, v29);
      MEMORY[0x231899730](8250, 0xE200000000000000);
      *(v2 + 736) = v31;
      *(v2 + 744) = v27;
      sub_22BA10A2C();
      sub_22B975FD8(7, v27, *(v2 + 704), *(v2 + 712));
      sub_22B9518D4(v28, v27, v26);

      *(v2 + 1016) = v25;
      goto LABEL_13;
    }

    __break(1u);
LABEL_21:
    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, v3);
  }

  v36 = *(v2 + 1032);
  v37 = *(v2 + 976);
  *(v2 + 992) = v36 + 1;
  if (__OFADD__(v36, 1))
  {
    goto LABEL_21;
  }

  sub_22B9358B4((*(v2 + 784) + 40), *(*(v2 + 784) + 64));
  v38 = swift_task_alloc();
  *(v2 + 1000) = v38;
  *v38 = v2;
  v38[1] = sub_22B984494;
  v39 = *(v2 + 776);
  v40 = *(v2 + 768);

  return sub_22B976B38(v40, v39, v37, 0, 0);
}

uint64_t sub_22B983F74()
{
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_22B983FDC, 0, 0);
}

uint64_t sub_22B983FDC()
{
  *(v0 + 752) = *(v0 + 968);
  sub_22B9349C8(&qword_27D8D55E0, &unk_22BA135D0);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_22B98406C, 0, 0);
}

uint64_t sub_22B98406C()
{
  v1 = *(v0 + 968);
  v2 = *(v0 + 792);
  v3 = *(v0 + 784);
  v26 = *(v0 + 768);
  (*(*(v0 + 808) + 8))(*(v0 + 816), *(v0 + 800));
  v4 = *(sub_22B9358B4(v3, v3[3]) + 16);
  v5 = sub_22BA1030C();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = v4;
  *(v6 + 40) = v26;
  swift_unknownObjectRetain();
  sub_22B989028(0, 0, v2, &unk_22BA16B48, v6);

  v7 = v1;
  v8 = sub_22BA0FEDC();
  v9 = sub_22BA1044C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 968);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_22B92A000, v8, v9, "Error handling batch completion with error %@", v11, 0xCu);
    sub_22B936BEC(v12, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v12, -1, -1);
    MEMORY[0x23189ADD0](v11, -1, -1);
  }

  v15 = *(v0 + 968);
  v16 = *(v0 + 768);

  sub_22B9358B4((v16 + 16), *(v16 + 40));
  swift_getObjectType();
  swift_unknownObjectRetain();
  LOBYTE(v15) = sub_22B9819E8(v15);
  swift_unknownObjectRelease();
  if (v15)
  {
    v17 = *(v0 + 968);
    v18 = *(v0 + 952);
    v19 = *(v0 + 904);
    v20 = *(v0 + 896);
    sub_22BA108FC();

    MEMORY[0x231899730](v20, v19);

    MEMORY[0x231899730](8250, 0xE200000000000000);
    swift_getErrorValue();
    v21 = sub_22B958118(*(v0 + 664), *(v0 + 672));
    MEMORY[0x231899730](v21);

    sub_22B975FD8(7, v17, 0xD000000000000027, 0x800000022BA1D7B0);

    swift_willThrow();

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {

    v24 = swift_task_alloc();
    *(v0 + 1064) = v24;
    *v24 = v0;
    v24[1] = sub_22B984C84;
    v25 = *(v0 + 968);

    return sub_22B97D504(v25);
  }
}

uint64_t sub_22B984494()
{
  *(*v1 + 1008) = v0;

  if (v0)
  {
    v2 = sub_22B984624;
  }

  else
  {
    v2 = sub_22B9845A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B9845A8()
{
  sub_22B9518D4(*(v0 + 976), *(v0 + 984), *(v0 + 698));
  v1 = *(v0 + 992);
  *(v0 + 1032) = v1;
  *(v0 + 1024) = v1;

  return MEMORY[0x2822009F8](sub_22B983890, 0, 0);
}

uint64_t sub_22B984624()
{
  v1 = *(v0 + 1008);
  sub_22B95190C(*(v0 + 976), *(v0 + 984), *(v0 + 698));
  v2 = v1;
  v3 = sub_22BA0FEDC();
  v4 = sub_22BA1044C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 1008);
  if (v5)
  {
    v7 = *(v0 + 976);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v7;
    *v9 = v11;
    v9[1] = v7;
    _os_log_impl(&dword_22B92A000, v3, v4, "Error handling record delete: %@ for record ID: %@", v8, 0x16u);
    sub_22B9349C8(&qword_27D8D4CD0, qword_22BA14360);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v9, -1, -1);
    MEMORY[0x23189ADD0](v8, -1, -1);
  }

  else
  {
    v12 = *(v0 + 984);
    v13 = *(v0 + 976);
    v14 = *(v0 + 698);

    sub_22B9518D4(v13, v12, v14);
  }

  sub_22B9518D4(*(v0 + 976), *(v0 + 984), *(v0 + 698));
  v15 = *(v0 + 992);
  *(v0 + 1032) = v15;
  *(v0 + 1024) = v15;

  return MEMORY[0x2822009F8](sub_22B983890, 0, 0);
}

uint64_t sub_22B9847F0()
{
  *(*v1 + 1048) = v0;

  if (v0)
  {
    v2 = sub_22B984AC4;
  }

  else
  {
    v2 = sub_22B984904;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B984904()
{
  v1 = *(v0 + 784);
  v2 = *(*(v0 + 768) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
  *(v0 + 1056) = v2;
  v3 = sub_22B9358B4(v1, v1[3]);
  *(v0 + 699) = sub_22BA08430(*(v3 + 16));

  return MEMORY[0x2822009F8](sub_22B984994, v2, 0);
}

uint64_t sub_22B984994()
{
  v1 = *(v0 + 699);
  swift_beginAccess();
  v2 = sub_22B964498(v1);
  swift_endAccess();
  if (!*(v2 + 16))
  {
    goto LABEL_7;
  }

  v3 = sub_22B990B64(2);
  if ((v4 & 1) == 0)
  {
    goto LABEL_7;
  }

  v6 = *(v0 + 1024);
  v7 = (*(v2 + 56) + 16 * v3);
  v8 = *v7 + v6;
  if (__OFADD__(*v7, v6))
  {
    __break(1u);
    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  v9 = *(v0 + 1016);
  v10 = v7[1];
  v11 = v10 + v9;
  if (__OFADD__(v10, v9))
  {
    __break(1u);
LABEL_7:
    v8 = *(v0 + 1024);
    v11 = *(v0 + 1016);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22B9BB0F8(v8, v11, 2, isUniquelyReferenced_nonNull_native);
  v13 = *(v0 + 699);

  sub_22B9645F8(v14, v13);

  v3 = sub_22B984B90;
  v4 = 0;
  v5 = 0;

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22B984AC4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_22B984B90()
{
  v1 = *(v0 + 1024);
  v2 = *(v0 + 1016);

  v3 = __OFADD__(v1, v2);
  v4 = v1 + v2;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v0 + 944) != 0;

    v6 = *(v0 + 8);

    v6(v4, v5);
  }
}

uint64_t sub_22B984C84()
{

  return MEMORY[0x2822009F8](sub_22B984D80, 0, 0);
}

uint64_t sub_22B984D80()
{
  v21 = v0;

  v1 = *(v0 + 784);
  sub_22B988B5C(v1, v0 + 16);
  sub_22B988B5C(v1, v0 + 136);
  v2 = sub_22BA0FEDC();
  v3 = sub_22BA1046C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 1024);
    v5 = *(v0 + 1016);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315906;
    v8 = sub_22B9358B4((v0 + 16), *(v0 + 40));
    v9 = sub_22BA082E0(*(v8 + 16));
    v11 = v10;
    sub_22B988B94(v0 + 16);
    v12 = sub_22B99153C(v9, v11, &v20);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2048;
    *(v6 + 14) = v4;
    *(v6 + 22) = 2080;
    v13 = sub_22B9358B4((v0 + 136), *(v0 + 160));
    v14 = sub_22BA082E0(*(v13 + 16));
    v16 = v15;
    sub_22B988B94(v0 + 136);
    v17 = sub_22B99153C(v14, v16, &v20);

    *(v6 + 24) = v17;
    *(v6 + 32) = 2048;
    *(v6 + 34) = v5;
    _os_log_impl(&dword_22B92A000, v2, v3, "%s: %lld records %s deleted, %lld failures", v6, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v7, -1, -1);
    MEMORY[0x23189ADD0](v6, -1, -1);
  }

  else
  {

    sub_22B988B94(v0 + 136);
    sub_22B988B94(v0 + 16);
  }

  sub_22B9358B4((*(v0 + 784) + 40), *(*(v0 + 784) + 64));
  v18 = swift_task_alloc();
  *(v0 + 1040) = v18;
  *v18 = v0;
  v18[1] = sub_22B9847F0;

  return sub_22B977290();
}

uint64_t sub_22B984FF0(uint64_t a1, uint64_t a2)
{
  v3[31] = a2;
  v3[32] = v2;
  v3[30] = a1;
  return MEMORY[0x2822009F8](sub_22B985014, 0, 0);
}

uint64_t sub_22B985014()
{
  v18 = v0;
  v1 = v0[32];
  if (*(v1 + 96) == 1)
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
      v1 = v0[32];
    }

    v2 = sub_22BA0FEFC();
    sub_22B936CA8(v2, qword_28141AD40);
    sub_22B988B5C(v1, (v0 + 2));
    v3 = sub_22BA0FEDC();
    v4 = sub_22BA1046C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v17 = v6;
      *v5 = 136315138;
      v7 = sub_22B9358B4(v0 + 2, v0[5]);
      v8 = sub_22BA082E0(*(v7 + 16));
      v10 = v9;
      sub_22B988B94((v0 + 2));
      v11 = sub_22B99153C(v8, v10, &v17);

      *(v5 + 4) = v11;
      _os_log_impl(&dword_22B92A000, v3, v4, "Refetching records for delete operation in zone %s", v5, 0xCu);
      sub_22B936C4C(v6);
      MEMORY[0x23189ADD0](v6, -1, -1);
      MEMORY[0x23189ADD0](v5, -1, -1);
    }

    else
    {

      sub_22B988B94((v0 + 2));
    }

    v15 = v0[32];
    sub_22B9358B4(v15 + 5, v15[8]);
    v12 = v15[11];
    v13 = swift_task_alloc();
    v0[34] = v13;
    *v13 = v0;
    v14 = sub_22B9853E4;
  }

  else
  {
    sub_22B9358B4((v1 + 40), *(v1 + 64));
    v12 = *(v1 + 88);
    v13 = swift_task_alloc();
    v0[33] = v13;
    *v13 = v0;
    v14 = sub_22B985288;
  }

  v13[1] = v14;

  return sub_22B9766D0(v12);
}

uint64_t sub_22B985288(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 360) = a2;
    *(v6 + 368) = a1;

    return MEMORY[0x2822009F8](sub_22B985C2C, 0, 0);
  }
}

uint64_t sub_22B9853E4(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *v3;
  v5[35] = a2;
  v5[36] = v2;

  if (v2)
  {
    v7 = v6[1];

    return v7();
  }

  else
  {
    v5[37] = a1;

    return MEMORY[0x2822009F8](sub_22B985534, 0, 0);
  }
}

uint64_t sub_22B985534()
{
  v1 = *(v0 + 280);

  if (*(v1 + 16))
  {
    v2 = *(v0 + 280);
    v3 = *(v0 + 248);
    v4 = *(v0 + 240);
    v5 = sub_22B9358B4(*(v0 + 256), *(*(v0 + 256) + 24));
    sub_22B981E44(v2);
    v6 = *v5;
    v7 = *(v5 + 1);
    *(v0 + 168) = *(v5 + 2);
    *(v0 + 152) = v7;
    *(v0 + 136) = v6;
    v8 = *(v5 + 3);
    v9 = *(v5 + 4);
    v10 = *(v5 + 5);
    *(v0 + 232) = v5[12];
    *(v0 + 216) = v10;
    *(v0 + 200) = v9;
    *(v0 + 184) = v8;
    v11 = objc_allocWithZone(MEMORY[0x277CBC3E0]);
    sub_22B951A54(0, &qword_281414BE0, 0x277CBC5D0);
    v12 = sub_22BA101DC();

    v13 = [v11 initWithRecordIDs_];
    *(v0 + 304) = v13;

    v14 = v13;
    v15 = sub_22B99BA10(v4, v3, 0x6863746566, 0xE500000000000000);
    [v14 setGroup_];

    v16 = (v4 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity);
    v17 = [objc_allocWithZone(MEMORY[0x277CBC4F0]) init];
    [v17 setQualityOfService_];
    [v17 setAllowsCellularAccess_];
    v18 = v16[3];
    v19 = v16[4];
    sub_22B9358B4(v16, v18);
    v20 = (*(v19 + 8))(v18, v19);
    if (v20)
    {
      v21 = v20;
      [v17 setAllowsCellularAccess_];
      [v17 setXPCActivity_];
      swift_unknownObjectRelease();
    }

    [v14 setConfiguration_];

    v22 = swift_task_alloc();
    *(v0 + 312) = v22;
    *v22 = v0;
    v22[1] = sub_22B985814;
    v24 = *(v0 + 240);
    v23 = *(v0 + 248);

    return sub_22B9E4824(v24, v23);
  }

  else
  {

    v26 = sub_22B9BBDF0(MEMORY[0x277D84F90]);
    v27 = *(v0 + 8);

    return v27(v26);
  }
}

uint64_t sub_22B985814(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[40] = a1;
  v4[41] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22B985AC8, 0, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    v4[42] = v6;
    *v6 = v5;
    v6[1] = sub_22B9859A0;
    v7 = v4[35];

    return sub_22B98614C(v7, a1);
  }
}

uint64_t sub_22B9859A0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 344) = v1;

  if (v1)
  {
    v5 = sub_22B985BB4;
  }

  else
  {
    *(v4 + 352) = a1;
    v5 = sub_22B985B38;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22B985AC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B985B38()
{
  v1 = v0[38];

  v2 = v0[44];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_22B985BB4()
{
  v1 = *(v0 + 304);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B985C2C()
{

  v1 = *(v0 + 360);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_22B985C94(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a5;
  *(v6 + 24) = a6;
  *(v6 + 40) = a4;
  return MEMORY[0x2822009F8](sub_22B985CB8, 0, 0);
}

uint64_t sub_22B985CB8()
{
  sub_22B9ECD68(*(v0 + 40));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_22B94FC08;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_22B9E81AC(v3, v2, 0, 0, 1, "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/MessagesCloudSync/SyncSteps/RecordZoneDeleter.swift", 109, 2);
}

uint64_t sub_22B985DA0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_22B985E60;

  return sub_22B9824B0(a1, a2);
}

uint64_t sub_22B985E60()
{

  return MEMORY[0x2822009F8](sub_22B985F5C, 0, 0);
}

uint64_t sub_22B985F5C()
{
  v1 = sub_22B9358B4(*(v0 + 32), *(*(v0 + 32) + 24));
  sub_22B9ECD68(*(v1 + 16));
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_22B986050;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_22B9E81AC(v4, v3, 0, 0, 1, "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/MessagesCloudSync/SyncSteps/RecordZoneDeleter.swift", 109, 2);
}

uint64_t sub_22B986050()
{

  return MEMORY[0x2822009F8](sub_22B947B40, 0, 0);
}

uint64_t sub_22B98614C(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = sub_22BA0FE1C();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = sub_22BA0FE2C();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  v2[14] = swift_task_alloc();
  v5 = sub_22BA0FD8C();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B986344, 0, 0);
}

unint64_t sub_22B986344(uint64_t a1)
{
  v148 = v1;
  v2 = v1[16];
  v145 = v1[15];
  v4 = v1[13];
  v3 = v1[14];
  v5 = v1[11];
  v6 = v1[12];
  v7 = v1[9];
  v8 = v1[10];
  v9 = v1[8];
  sub_22BA0FD7C();
  sub_22BA0FE0C();
  (*(v7 + 104))(v8, *MEMORY[0x277CC9968], v9);
  sub_22BA0FDFC();
  (*(v7 + 8))(v8, v9);
  (*(v6 + 8))(v4, v5);
  if ((*(v2 + 48))(v3, 1, v145) == 1)
  {
    sub_22B936BEC(v1[14], &unk_27D8D4A90, &qword_22BA126A0);
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v10 = sub_22BA0FEFC();
    sub_22B936CA8(v10, qword_28141AD40);
    v11 = sub_22BA0FEDC();
    v12 = sub_22BA1044C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_22B92A000, v11, v12, "Error creating latest permitted modification date.", v13, 2u);
      MEMORY[0x23189ADD0](v13, -1, -1);
    }

    v14 = v1[23];
    v15 = v1[16];
    v16 = v1[15];

    sub_22B988BC4();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
    (*(v15 + 8))(v14, v16);

    v18 = v1[1];

    return v18();
  }

  (*(v1[16] + 32))(v1[22], v1[14], v1[15]);
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v20 = v1[21];
  v21 = v1[22];
  v22 = v1[15];
  v23 = v1[16];
  v24 = sub_22BA0FEFC();
  sub_22B936CA8(v24, qword_28141AD40);
  v140 = *(v23 + 16);
  v140(v20, v21, v22);
  v25 = sub_22BA0FEDC();
  v26 = sub_22BA1046C();
  v27 = os_log_type_enabled(v25, v26);
  v28 = v1[21];
  v29 = v1[15];
  v30 = v1[16];
  if (v27)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v147[0] = v32;
    *v31 = 136315138;
    sub_22B988C18(&qword_281416BF0, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v33 = sub_22BA10C1C();
    v35 = v34;
    v141 = *(v30 + 8);
    v141(v28, v29);
    v36 = sub_22B99153C(v33, v35, v147);

    *(v31 + 4) = v36;
    _os_log_impl(&dword_22B92A000, v25, v26, "Filtering chat recordIDs to those with modification date after %s", v31, 0xCu);
    sub_22B936C4C(v32);
    MEMORY[0x23189ADD0](v32, -1, -1);
    MEMORY[0x23189ADD0](v31, -1, -1);
  }

  else
  {

    v141 = *(v30 + 8);
    v141(v28, v29);
  }

  v37 = v1[7];
  if ((v37 & 0xC000000000000001) != 0)
  {
    v38 = sub_22BA10A3C();
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v146 = v38 | 0x8000000000000000;
  }

  else
  {
    v42 = -1 << *(v37 + 32);
    v40 = ~v42;
    v39 = v37 + 64;
    v43 = -v42;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    else
    {
      v44 = -1;
    }

    v41 = v44 & *(v37 + 64);
    v146 = v1[7];
  }

  v135 = v1[6];
  v45 = (v40 + 64) >> 6;

  v46 = 0;
  v134 = MEMORY[0x277D84F98];
  v142 = v45;
  v143 = v39;
  while (2)
  {
    v47 = v46;
    if ((v146 & 0x8000000000000000) != 0)
    {
LABEL_31:
      v64 = sub_22BA10A4C();
      if (v64)
      {
        v66 = v65;
        v1[3] = v64;
        sub_22B951A54(0, &qword_281414BE0, 0x277CBC5D0);
        swift_dynamicCast();
        v62 = v1[2];
        v1[5] = v66;
        sub_22B951A54(0, &qword_281414A30, 0x277CBC5A0);
        swift_dynamicCast();
        v63 = v1[4];
        v46 = v47;
        v59 = v41;
        if (v62)
        {
          goto LABEL_33;
        }
      }

LABEL_62:
      v126 = v1[22];
      v125 = v1[23];
      v127 = v1[15];
      sub_22B951944(v146);
      v141(v126, v127);
      v141(v125, v127);

      v128 = v1[1];

      return v128(v134);
    }

    while (1)
    {
      while (1)
      {
        v57 = v47;
        v58 = v41;
        v46 = v47;
        if (!v41)
        {
          while (1)
          {
            v46 = v57 + 1;
            if (__OFADD__(v57, 1))
            {
              break;
            }

            if (v46 >= v45)
            {
              goto LABEL_62;
            }

            v58 = *(v39 + 8 * v46);
            ++v57;
            if (v58)
            {
              goto LABEL_29;
            }
          }

          __break(1u);
LABEL_66:
          sub_22B951A54(0, &qword_281414BE0, 0x277CBC5D0);

          return sub_22BA10CBC();
        }

LABEL_29:
        v59 = (v58 - 1) & v58;
        v60 = (v46 << 9) | (8 * __clz(__rbit64(v58)));
        v61 = *(*(v146 + 56) + v60);
        v62 = *(*(v146 + 48) + v60);
        v63 = v61;
        if (!v62)
        {
          goto LABEL_62;
        }

LABEL_33:
        v67 = [v63 modificationDate];
        if (v67)
        {
          break;
        }

        v87 = v63;
        v88 = sub_22BA0FEDC();
        v89 = sub_22BA1044C();

        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          *v90 = 138412290;
          *(v90 + 4) = v87;
          *v91 = v63;
          v92 = v59;
          v93 = v87;
          _os_log_impl(&dword_22B92A000, v88, v89, "No modification date on record %@", v90, 0xCu);
          sub_22B936BEC(v91, &qword_27D8D4CD0, qword_22BA14360);
          v94 = v91;
          v45 = v142;
          MEMORY[0x23189ADD0](v94, -1, -1);
          v95 = v90;
          v39 = v143;
          MEMORY[0x23189ADD0](v95, -1, -1);
          v87 = v88;
          v88 = v93;
          v59 = v92;
        }

        v47 = v46;
        v41 = v59;
        if ((v146 & 0x8000000000000000) != 0)
        {
          goto LABEL_31;
        }
      }

      v68 = v1[22];
      v70 = v1[19];
      v69 = v1[20];
      v71 = v1[15];
      v72 = v67;
      sub_22BA0FD5C();

      if (sub_22BA0FD1C())
      {
        v73 = v69;
      }

      else
      {
        v73 = v68;
      }

      v140(v70, v73, v71);
      v144 = v59;
      if ((sub_22BA0FD4C() & 1) == 0)
      {
        v96 = v1[22];
        v97 = v1[17];
        v98 = v1[15];
        v140(v1[18], v1[20], v98);
        v140(v97, v96, v98);
        v99 = v62;
        v100 = sub_22BA0FEDC();
        v101 = sub_22BA1046C();

        v102 = os_log_type_enabled(v100, v101);
        v137 = v1[19];
        v139 = v1[20];
        v104 = v1[17];
        v103 = v1[18];
        v105 = v1[15];
        if (v102)
        {
          v133 = v63;
          v48 = swift_slowAlloc();
          v130 = swift_slowAlloc();
          v132 = swift_slowAlloc();
          v147[0] = v132;
          *v48 = 138412802;
          *(v48 + 4) = v99;
          *v130 = v62;
          *(v48 + 12) = 2080;
          sub_22B988C18(&qword_281416BF0, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
          v131 = v99;
          v49 = sub_22BA10C1C();
          v129 = v101;
          v51 = v50;
          v141(v103, v105);
          v52 = sub_22B99153C(v49, v51, v147);

          *(v48 + 14) = v52;
          *(v48 + 22) = 2080;
          v53 = sub_22BA10C1C();
          v55 = v54;
          v141(v104, v105);
          v56 = sub_22B99153C(v53, v55, v147);

          *(v48 + 24) = v56;
          _os_log_impl(&dword_22B92A000, v100, v129, "Filtering out chat with record ID %@ modification date %s since it is after %s", v48, 0x20u);
          sub_22B936BEC(v130, &qword_27D8D4CD0, qword_22BA14360);
          MEMORY[0x23189ADD0](v130, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x23189ADD0](v132, -1, -1);
          MEMORY[0x23189ADD0](v48, -1, -1);
        }

        else
        {

          v141(v104, v105);
          v141(v103, v105);
        }

        v141(v137, v105);
        v141(v139, v105);
        goto LABEL_24;
      }

      if (*(v135 + 16))
      {
        v74 = sub_22B990B14(v62);
        if (v75)
        {
          break;
        }
      }

      v76 = v63;
      v77 = sub_22BA0FEDC();
      v78 = sub_22BA1044C();

      v79 = os_log_type_enabled(v77, v78);
      v80 = v1[19];
      v138 = v1[20];
      v81 = v1[15];
      if (v79)
      {
        v82 = v63;
        v83 = swift_slowAlloc();
        v136 = v80;
        v84 = swift_slowAlloc();
        *v83 = 138412290;
        *(v83 + 4) = v76;
        *v84 = v82;
        v85 = v76;
        _os_log_impl(&dword_22B92A000, v77, v78, "Fetched CKRecord with incorrect recordID, recordID not present in uniqueGuidsByRecordIDs: %@", v83, 0xCu);
        sub_22B936BEC(v84, &qword_27D8D4CD0, qword_22BA14360);
        MEMORY[0x23189ADD0](v84, -1, -1);
        MEMORY[0x23189ADD0](v83, -1, -1);

        v86 = v136;
      }

      else
      {

        v86 = v80;
      }

      v141(v86, v81);
      v141(v138, v81);
LABEL_24:
      v47 = v46;
      v41 = v144;
      v45 = v142;
      v39 = v143;
      if ((v146 & 0x8000000000000000) != 0)
      {
        goto LABEL_31;
      }
    }

    v106 = (*(v135 + 56) + 16 * v74);
    v108 = *v106;
    v107 = v106[1];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v147[0] = v134;
    result = sub_22B990B14(v62);
    v111 = v134[2];
    v112 = (v110 & 1) == 0;
    v113 = __OFADD__(v111, v112);
    v114 = v111 + v112;
    if (v113)
    {
      __break(1u);
    }

    else
    {
      v115 = v110;
      if (v134[3] >= v114)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v124 = result;
          sub_22B9EBDD0();
          result = v124;
          v134 = v147[0];
        }
      }

      else
      {
        sub_22B9D84F8(v114, isUniquelyReferenced_nonNull_native);
        v134 = v147[0];
        result = sub_22B990B14(v62);
        if ((v115 & 1) != (v116 & 1))
        {
          goto LABEL_66;
        }
      }

      v118 = v1[19];
      v117 = v1[20];
      v119 = v1[15];
      if (v115)
      {
        v120 = (v134[7] + 16 * result);
        *v120 = v108;
        v120[1] = v107;

        v141(v118, v119);
        v141(v117, v119);
LABEL_61:
        v45 = v142;
        v39 = v143;
        v41 = v144;
        continue;
      }

      v134[(result >> 6) + 8] |= 1 << result;
      *(v134[6] + 8 * result) = v62;
      v121 = (v134[7] + 16 * result);
      *v121 = v108;
      v121[1] = v107;

      v141(v118, v119);
      result = (v141)(v117, v119);
      v122 = v134[2];
      v113 = __OFADD__(v122, 1);
      v123 = v122 + 1;
      if (!v113)
      {
        v134[2] = v123;
        goto LABEL_61;
      }
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_22B9872A0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B945AC8;

  return sub_22B982758(a1, a2);
}

uint64_t sub_22B987358(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B947814;

  return sub_22B982C88(a1, a2);
}

uint64_t sub_22B987410(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B943E68;

  return sub_22B985DA0(a1, a2);
}

id sub_22B9874C8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (MEMORY[0x277D84F90] >> 62 && sub_22BA1080C())
  {
    sub_22B9579D4(MEMORY[0x277D84F90]);
    v6 = v16;
  }

  else
  {
    v6 = MEMORY[0x277D84FA0];
  }

  sub_22B951A54(0, &unk_281414AC0, 0x277CBC4A0);
  v17 = v6;
  sub_22B981B98(a3, &v17);

  v7 = sub_22BA105CC();
  v8 = sub_22B99BA10(a1, a2, 0x6574656C6564, 0xE600000000000000);
  [v7 setGroup_];

  v9 = (a1 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity);
  v10 = [objc_allocWithZone(MEMORY[0x277CBC4F0]) init];
  [v10 setQualityOfService_];
  [v10 setAllowsCellularAccess_];
  v11 = v9[3];
  v12 = v9[4];
  sub_22B9358B4(v9, v11);
  v13 = (*(v12 + 8))(v11, v12);
  if (v13)
  {
    v14 = v13;
    [v10 setAllowsCellularAccess_];
    [v10 setXPCActivity_];
    swift_unknownObjectRelease();
  }

  [v7 setConfiguration_];

  [v7 setAtomic_];
  [v7 setSavePolicy_];
  return v7;
}

void sub_22B9876E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22B9349C8(&qword_27D8D53C8, &unk_22BA18460);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24[-v10 - 8];
  v12 = swift_allocObject();
  v13 = *(a2 + 80);
  *(v12 + 80) = *(a2 + 64);
  *(v12 + 96) = v13;
  v14 = *(a2 + 96);
  v15 = *(a2 + 16);
  *(v12 + 16) = *a2;
  *(v12 + 32) = v15;
  v16 = *(a2 + 48);
  *(v12 + 48) = *(a2 + 32);
  *(v12 + 64) = v16;
  *(v12 + 112) = v14;
  *(v12 + 120) = a3;
  *(v12 + 128) = a4;
  (*(v9 + 16))(v11, a1, v8);
  v17 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v18 = swift_allocObject();
  (*(v9 + 32))(v18 + v17, v11, v8);
  sub_22B951748(a2, v24);
  swift_unknownObjectRetain();
  v19 = sub_22B9A7124(sub_22B9889BC, v12, sub_22B988A08, v18);

  v20 = (a3 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudDatabase);
  v21 = *(a3 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudDatabase + 24);
  v22 = v20[4];
  sub_22B9358B4(v20, v21);
  (*(v22 + 8))(v19, v21, v22);
}

void sub_22B9878F4(void *a1, void *a2, char a3, _UNKNOWN **a4, uint64_t a5)
{
  if (a3)
  {
    if (qword_281414D30 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_199;
  }

  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v22 = sub_22BA0FEFC();
  sub_22B936CA8(v22, qword_28141AD40);
  sub_22B951748(a4, v144);
  v23 = a1;
  sub_22B930C44(a2);
  v24 = sub_22BA0FEDC();
  v25 = sub_22BA1046C();

  sub_22B930C58(a2);
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v144[0] = v28;
    *v26 = 136315650;
    v29 = *(a4 + 16);
    if (v29 > 4)
    {
      v46 = 0x800000022BA1C160;
      v47 = 0x800000022BA1C180;
      v48 = 0xD000000000000015;
      if (v29 != 8)
      {
        v48 = 0xD000000000000023;
        v47 = 0x800000022BA1C1A0;
      }

      if (v29 == 7)
      {
        v48 = 0xD000000000000012;
      }

      else
      {
        v46 = v47;
      }

      v49 = 0x800000022BA1C120;
      v50 = 0xD00000000000001CLL;
      if (v29 != 5)
      {
        v50 = 0xD000000000000014;
        v49 = 0x800000022BA1C140;
      }

      if (*(a4 + 16) <= 6u)
      {
        v35 = v50;
      }

      else
      {
        v35 = v48;
      }

      if (*(a4 + 16) <= 6u)
      {
        v36 = v49;
      }

      else
      {
        v36 = v46;
      }
    }

    else
    {
      v30 = 0x616E614D74616863;
      v31 = 0xEF656E6F5A656574;
      v32 = 0x800000022BA1C0C0;
      v33 = 0x800000022BA1C0E0;
      v34 = 0xD000000000000015;
      if (v29 != 3)
      {
        v34 = 0xD000000000000011;
        v33 = 0x800000022BA1C100;
      }

      if (v29 == 2)
      {
        v34 = 0xD000000000000012;
      }

      else
      {
        v32 = v33;
      }

      if (*(a4 + 16))
      {
        v30 = 0xD000000000000010;
        v31 = 0x800000022BA1C0A0;
      }

      if (*(a4 + 16) <= 1u)
      {
        v35 = v30;
      }

      else
      {
        v35 = v34;
      }

      if (*(a4 + 16) <= 1u)
      {
        v36 = v31;
      }

      else
      {
        v36 = v32;
      }
    }

    sub_22B96F8A4(a4);
    v51 = sub_22B99153C(v35, v36, v144);

    *(v26 + 4) = v51;
    *(v26 + 12) = 2112;
    *(v26 + 14) = v23;
    *(v26 + 22) = 2112;
    *(v26 + 24) = a2;
    *v27 = v23;
    v27[1] = a2;
    v52 = v23;
    sub_22B930C44(a2);
    _os_log_impl(&dword_22B92A000, v24, v25, "Got %s MessagesSummary: %@ %@", v26, 0x20u);
    sub_22B9349C8(&qword_27D8D4CD0, qword_22BA14360);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v27, -1, -1);
    sub_22B936C4C(v28);
    MEMORY[0x23189ADD0](v28, -1, -1);
    MEMORY[0x23189ADD0](v26, -1, -1);
  }

  else
  {

    sub_22B96F8A4(a4);
  }

  v53 = *(a4 + 16);
  v54 = sub_22BA08430(*(a4 + 16));
  v55 = 0xEF32766465747079;
  v56 = 0x72636E4574616863;
  v57 = 0xEF31566574616470;
  v58 = 0x556567617373656DLL;
  if (v54 != 5)
  {
    v58 = 0x6E776F6E6B6E75;
    v57 = 0xE700000000000000;
  }

  v59 = 0xEA0000000000746ELL;
  v60 = 0x656D686361747461;
  if (v54 != 3)
  {
    v60 = 0xD000000000000012;
    v59 = 0x800000022BA1BA10;
  }

  if (v54 <= 4)
  {
    v58 = v60;
    v57 = v59;
  }

  if (v54 != 1)
  {
    v56 = 0xD000000000000012;
    v55 = 0x800000022BA1B9F0;
  }

  if (!v54)
  {
    v56 = 0xD000000000000012;
    v55 = 0x800000022BA1B9C0;
  }

  if (v54 <= 2)
  {
    v61 = v56;
  }

  else
  {
    v61 = v58;
  }

  if (v54 <= 2)
  {
    v62 = v55;
  }

  else
  {
    v62 = v57;
  }

  v63 = MEMORY[0x231899D30](v61, v62);

  if (!v63)
  {
    sub_22B951748(a4, v144);
    v8 = sub_22BA0FEDC();
    v76 = sub_22BA1046C();
    if (os_log_type_enabled(v8, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v144[0] = v78;
      *v77 = 136315138;
      if (v53 > 4)
      {
        v108 = 0x800000022BA1C160;
        v109 = 0x800000022BA1C180;
        v110 = 0xD000000000000015;
        if (v53 != 8)
        {
          v110 = 0xD000000000000023;
          v109 = 0x800000022BA1C1A0;
        }

        if (v53 == 7)
        {
          v110 = 0xD000000000000012;
        }

        else
        {
          v108 = v109;
        }

        v111 = 0x800000022BA1C120;
        v112 = 0xD00000000000001CLL;
        if (v53 != 5)
        {
          v112 = 0xD000000000000014;
          v111 = 0x800000022BA1C140;
        }

        if (v53 <= 6)
        {
          v84 = v112;
        }

        else
        {
          v84 = v110;
        }

        if (v53 <= 6)
        {
          v85 = v111;
        }

        else
        {
          v85 = v108;
        }
      }

      else
      {
        v79 = 0x616E614D74616863;
        v80 = 0xEF656E6F5A656574;
        v81 = 0x800000022BA1C0C0;
        v82 = 0x800000022BA1C0E0;
        v83 = 0xD000000000000015;
        if (v53 != 3)
        {
          v83 = 0xD000000000000011;
          v82 = 0x800000022BA1C100;
        }

        if (v53 == 2)
        {
          v83 = 0xD000000000000012;
        }

        else
        {
          v81 = v82;
        }

        if (v53)
        {
          v79 = 0xD000000000000010;
          v80 = 0x800000022BA1C0A0;
        }

        if (v53 <= 1)
        {
          v84 = v79;
        }

        else
        {
          v84 = v83;
        }

        if (v53 <= 1)
        {
          v85 = v80;
        }

        else
        {
          v85 = v81;
        }
      }

      sub_22B96F8A4(a4);
      v113 = sub_22B99153C(v84, v85, v144);

      *(v77 + 4) = v113;
      _os_log_impl(&dword_22B92A000, v8, v76, "No value found for count of %s", v77, 0xCu);
      sub_22B936C4C(v78);
      MEMORY[0x23189ADD0](v78, -1, -1);
      v45 = v77;
      goto LABEL_163;
    }

    goto LABEL_114;
  }

  v144[0] = v63;
  swift_unknownObjectRetain();
  sub_22B9349C8(&unk_27D8D4F50, &unk_22BA17980);
  sub_22B9349C8(&qword_27D8D5600, &qword_22BA16B20);
  if (!swift_dynamicCast())
  {
    sub_22B951748(a4, v144);
    swift_unknownObjectRetain();
    v86 = sub_22BA0FEDC();
    v87 = sub_22BA1046C();
    swift_unknownObjectRelease();
    if (!os_log_type_enabled(v86, v87))
    {

      swift_unknownObjectRelease();
      goto LABEL_115;
    }

    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v144[0] = v89;
    *v88 = 136315394;
    if (v53 > 4)
    {
      v114 = 0x800000022BA1C160;
      v115 = 0x800000022BA1C180;
      v116 = 0xD000000000000015;
      if (v53 != 8)
      {
        v116 = 0xD000000000000023;
        v115 = 0x800000022BA1C1A0;
      }

      if (v53 == 7)
      {
        v116 = 0xD000000000000012;
      }

      else
      {
        v114 = v115;
      }

      v117 = 0x800000022BA1C120;
      v118 = 0xD00000000000001CLL;
      if (v53 != 5)
      {
        v118 = 0xD000000000000014;
        v117 = 0x800000022BA1C140;
      }

      if (v53 <= 6)
      {
        v95 = v118;
      }

      else
      {
        v95 = v116;
      }

      if (v53 <= 6)
      {
        v96 = v117;
      }

      else
      {
        v96 = v114;
      }
    }

    else
    {
      v90 = 0x616E614D74616863;
      v91 = 0xEF656E6F5A656574;
      v92 = 0x800000022BA1C0C0;
      v93 = 0x800000022BA1C0E0;
      v94 = 0xD000000000000015;
      if (v53 != 3)
      {
        v94 = 0xD000000000000011;
        v93 = 0x800000022BA1C100;
      }

      if (v53 == 2)
      {
        v94 = 0xD000000000000012;
      }

      else
      {
        v92 = v93;
      }

      if (v53)
      {
        v90 = 0xD000000000000010;
        v91 = 0x800000022BA1C0A0;
      }

      if (v53 <= 1)
      {
        v95 = v90;
      }

      else
      {
        v95 = v94;
      }

      if (v53 <= 1)
      {
        v96 = v91;
      }

      else
      {
        v96 = v92;
      }
    }

    sub_22B96F8A4(a4);
    v119 = sub_22B99153C(v95, v96, v144);

    *(v88 + 4) = v119;
    *(v88 + 12) = 2080;
    v120 = [v63 description];
    v121 = sub_22BA0FFFC();
    v123 = v122;

    v124 = sub_22B99153C(v121, v123, v144);

    *(v88 + 14) = v124;
    _os_log_impl(&dword_22B92A000, v86, v87, "Unexpected type for count of %s:  %s", v88, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v89, -1, -1);
    MEMORY[0x23189ADD0](v88, -1, -1);

LABEL_196:
    swift_unknownObjectRelease();
    return;
  }

  v64 = v143;
  if (v143 >> 62)
  {
    v65 = sub_22BA1080C();
  }

  else
  {
    v65 = *((v143 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v139 = a4;
  v140 = v53;
  if (v65)
  {
    v66 = 0;
    v67 = 0;
    v68 = 0;
    a2 = (v143 & 0xFFFFFFFFFFFFFF8);
    a4 = &off_27871A000;
    while (1)
    {
      if ((v143 & 0xC000000000000001) != 0)
      {
        v69 = v64;
        v70 = MEMORY[0x231899FA0](v66, v64);
      }

      else
      {
        if (v66 >= *((v143 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_198;
        }

        v69 = v64;
        v70 = *(v64 + 8 * v66 + 32);
      }

      v71 = v70;
      v72 = v66 + 1;
      if (__OFADD__(v66, 1))
      {
        break;
      }

      v73 = [v70 longLongValue];
      if (v73 < v68)
      {
        v68 = v73;
      }

      v74 = [v71 longLongValue];

      if (v74 > v67)
      {
        v67 = v74;
      }

      ++v66;
      v75 = v72 == v65;
      v64 = v69;
      if (v75)
      {
        goto LABEL_133;
      }
    }

    __break(1u);
LABEL_198:
    __break(1u);
LABEL_199:
    swift_once();
LABEL_3:
    v7 = sub_22BA0FEFC();
    sub_22B936CA8(v7, qword_28141AD40);
    sub_22B951748(a4, v144);
    sub_22B930C44(a2);
    v8 = sub_22BA0FEDC();
    v9 = sub_22BA1046C();
    sub_22B930C58(a2);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v144[0] = v12;
      *v10 = 136315394;
      v13 = *(a4 + 16);
      if (v13 > 4)
      {
        v37 = 0x800000022BA1C160;
        v38 = 0x800000022BA1C180;
        v39 = 0xD000000000000015;
        if (v13 != 8)
        {
          v39 = 0xD000000000000023;
          v38 = 0x800000022BA1C1A0;
        }

        if (v13 == 7)
        {
          v39 = 0xD000000000000012;
        }

        else
        {
          v37 = v38;
        }

        v40 = 0x800000022BA1C120;
        v41 = 0xD000000000000014;
        if (v13 == 5)
        {
          v41 = 0xD00000000000001CLL;
        }

        else
        {
          v40 = 0x800000022BA1C140;
        }

        if (*(a4 + 16) <= 6u)
        {
          v19 = v41;
        }

        else
        {
          v19 = v39;
        }

        if (*(a4 + 16) <= 6u)
        {
          v20 = v40;
        }

        else
        {
          v20 = v37;
        }
      }

      else
      {
        v14 = 0x616E614D74616863;
        v15 = 0xEF656E6F5A656574;
        v16 = 0x800000022BA1C0C0;
        v17 = 0x800000022BA1C0E0;
        v18 = 0xD000000000000015;
        if (v13 != 3)
        {
          v18 = 0xD000000000000011;
          v17 = 0x800000022BA1C100;
        }

        if (v13 == 2)
        {
          v18 = 0xD000000000000012;
        }

        else
        {
          v16 = v17;
        }

        if (*(a4 + 16))
        {
          v14 = 0xD000000000000010;
          v15 = 0x800000022BA1C0A0;
        }

        if (*(a4 + 16) <= 1u)
        {
          v19 = v14;
        }

        else
        {
          v19 = v18;
        }

        if (*(a4 + 16) <= 1u)
        {
          v20 = v15;
        }

        else
        {
          v20 = v16;
        }
      }

      sub_22B96F8A4(a4);
      v42 = sub_22B99153C(v19, v20, v144);

      *(v10 + 4) = v42;
      *(v10 + 12) = 2112;
      v43 = a2;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 14) = v44;
      *v11 = v44;
      _os_log_impl(&dword_22B92A000, v8, v9, "Failed fetching MessagesSummary for %s %@", v10, 0x16u);
      sub_22B936BEC(v11, &qword_27D8D4CD0, qword_22BA14360);
      MEMORY[0x23189ADD0](v11, -1, -1);
      sub_22B936C4C(v12);
      MEMORY[0x23189ADD0](v12, -1, -1);
      v45 = v10;
LABEL_163:
      MEMORY[0x23189ADD0](v45, -1, -1);

      return;
    }

LABEL_114:

LABEL_115:
    sub_22B96F8A4(a4);
    return;
  }

  v68 = 0;
  v67 = 0;
LABEL_133:
  sub_22B951748(v139, v144);

  v97 = sub_22BA0FEDC();
  v98 = sub_22BA1046C();

  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v144[0] = v100;
    *v99 = 136315906;
    v142 = v100;
    if (v140 > 4)
    {
      v125 = 0x800000022BA1C160;
      v126 = 0x800000022BA1C180;
      v127 = 0xD000000000000015;
      if (v140 != 8)
      {
        v127 = 0xD000000000000023;
        v126 = 0x800000022BA1C1A0;
      }

      if (v140 == 7)
      {
        v127 = 0xD000000000000012;
      }

      else
      {
        v125 = v126;
      }

      v128 = 0x800000022BA1C120;
      v129 = 0xD00000000000001CLL;
      if (v140 != 5)
      {
        v129 = 0xD000000000000014;
        v128 = 0x800000022BA1C140;
      }

      if (v140 <= 6)
      {
        v106 = v129;
      }

      else
      {
        v106 = v127;
      }

      if (v140 <= 6)
      {
        v107 = v128;
      }

      else
      {
        v107 = v125;
      }
    }

    else
    {
      v101 = 0x616E614D74616863;
      v102 = 0xEF656E6F5A656574;
      v103 = 0x800000022BA1C0C0;
      v104 = 0x800000022BA1C0E0;
      v105 = 0xD000000000000015;
      if (v140 != 3)
      {
        v105 = 0xD000000000000011;
        v104 = 0x800000022BA1C100;
      }

      if (v140 == 2)
      {
        v105 = 0xD000000000000012;
      }

      else
      {
        v103 = v104;
      }

      if (v140)
      {
        v101 = 0xD000000000000010;
        v102 = 0x800000022BA1C0A0;
      }

      if (v140 <= 1)
      {
        v106 = v101;
      }

      else
      {
        v106 = v105;
      }

      if (v140 <= 1)
      {
        v107 = v102;
      }

      else
      {
        v107 = v103;
      }
    }

    sub_22B96F8A4(v139);
    v130 = sub_22B99153C(v106, v107, v144);

    *(v99 + 4) = v130;
    *(v99 + 12) = 2048;
    *(v99 + 14) = v67;
    *(v99 + 22) = 2048;
    *(v99 + 24) = v68;
    *(v99 + 32) = 2080;
    v131 = sub_22B951A54(0, &qword_281414A20, 0x277CCABB0);
    v132 = MEMORY[0x231899870](v64, v131);
    v134 = v133;

    v135 = sub_22B99153C(v132, v134, v144);

    *(v99 + 34) = v135;
    _os_log_impl(&dword_22B92A000, v97, v98, "Found count of %s: total %lld live %lld from %s", v99, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v142, -1, -1);
    MEMORY[0x23189ADD0](v99, -1, -1);
  }

  else
  {

    sub_22B96F8A4(v139);
  }

  if (v67 < 1)
  {
    goto LABEL_196;
  }

  sub_22B935B38(a5 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState, v144);
  v136 = sub_22B9358B4(v144, v144[3]);
  v137 = qword_281414B68;
  v138 = *(*v136 + 24);
  if (v137 != -1)
  {
    swift_once();
  }

  sub_22BA0AA94(v67, v140, qword_28141ACF0);
  swift_unknownObjectRelease();

  sub_22B936C4C(v144);
}

__n128 sub_22B9889BC(void *a1, void *a2, char a3)
{
  v4 = *(v3 + 120);
  v5 = *(v3 + 96);
  v9[4] = *(v3 + 80);
  v9[5] = v5;
  v10 = *(v3 + 112);
  v6 = *(v3 + 32);
  v9[0] = *(v3 + 16);
  v9[1] = v6;
  v7 = *(v3 + 64);
  v9[2] = *(v3 + 48);
  v9[3] = v7;
  sub_22B9878F4(a1, a2, a3 & 1, v9, v4);
  return result;
}

uint64_t sub_22B988A08(void *a1, char a2)
{
  sub_22B9349C8(&qword_27D8D53C8, &unk_22BA18460);

  return sub_22B9DB4B8(a1, a2 & 1);
}

uint64_t sub_22B988A94(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22B943E68;

  return sub_22B985C94(a1, v4, v5, v8, v6, v7);
}

unint64_t sub_22B988BC4()
{
  result = qword_27D8D53F0;
  if (!qword_27D8D53F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D53F0);
  }

  return result;
}

uint64_t sub_22B988C18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_22B988C60(uint64_t a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = *(v3 + 80);
  v9[4] = *(v3 + 64);
  v9[5] = v5;
  v10 = *(v3 + 96);
  v6 = *(v3 + 16);
  v9[0] = *v3;
  v9[1] = v6;
  v7 = *(v3 + 48);
  v9[2] = *(v3 + 32);
  v9[3] = v7;
  sub_22B9876E0(a1, v9, v2, v4);
  return result;
}

unint64_t sub_22B988CC0()
{
  result = qword_27D8D5400;
  if (!qword_27D8D5400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5400);
  }

  return result;
}

uint64_t sub_22B988D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_22B9349C8(&unk_27D8D5780, &qword_22BA13DB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_22B9934AC(a3, v25 - v10, &unk_27D8D5780, &qword_22BA13DB0);
  v12 = sub_22BA1030C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_22B936BEC(v11, &unk_27D8D5780, &qword_22BA13DB0);
  }

  else
  {
    sub_22BA102FC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_22BA1029C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v25[0] = a3;
      v19 = sub_22BA1006C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      type metadata accessor for SyncStore(0);

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_22B936BEC(v25[0], &unk_27D8D5780, &qword_22BA13DB0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22B936BEC(a3, &unk_27D8D5780, &qword_22BA13DB0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  type metadata accessor for SyncStore(0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_22B989028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_22B9349C8(&unk_27D8D5780, &qword_22BA13DB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_22B9934AC(a3, v25 - v10, &unk_27D8D5780, &qword_22BA13DB0);
  v12 = sub_22BA1030C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_22B936BEC(v11, &unk_27D8D5780, &qword_22BA13DB0);
  }

  else
  {
    sub_22BA102FC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_22BA1029C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_22BA1006C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_22B936BEC(a3, &unk_27D8D5780, &qword_22BA13DB0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22B936BEC(a3, &unk_27D8D5780, &qword_22BA13DB0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_22B989328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_22B9349C8(&unk_27D8D5780, &qword_22BA13DB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_22B9934AC(a3, v25 - v10, &unk_27D8D5780, &qword_22BA13DB0);
  v12 = sub_22BA1030C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_22B936BEC(v11, &unk_27D8D5780, &qword_22BA13DB0);
  }

  else
  {
    sub_22BA102FC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_22BA1029C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_22BA1006C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_22B9349C8(&qword_27D8D54D0, &qword_22BA16DB0);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_22B936BEC(a3, &unk_27D8D5780, &qword_22BA13DB0);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22B936BEC(a3, &unk_27D8D5780, &qword_22BA13DB0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_22B9349C8(&qword_27D8D54D0, &qword_22BA16DB0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_22B98963C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22B9349C8(&qword_27D8D5510, &qword_22BA16DF0);
    v2 = sub_22BA10A8C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v11 = __clz(__rbit64(v5)) | (v10 << 6);
    sub_22B958068(*(a1 + 48) + 40 * v11, v27);
    sub_22B936B20(*(a1 + 56) + 32 * v11, v28 + 8);
    v25[0] = v28[0];
    v25[1] = v28[1];
    v26 = v29;
    v24[0] = v27[0];
    v24[1] = v27[1];
    sub_22B958068(v24, v19);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_22B936B20(v25 + 8, v20);
    sub_22B936BEC(v24, &qword_27D8D54B8, &unk_22BA16D60);
    v21 = v18;
    sub_22B936C98(v20, v22);
    v12 = v21;
    sub_22B936C98(v22, v23);
    sub_22B936C98(v23, &v21);
    v13 = sub_22B990A58(v12, *(&v12 + 1));
    if (v14)
    {
      *(v2[6] + 16 * v13) = v12;
      v8 = v13;

      v9 = (v2[7] + 32 * v8);
      sub_22B936C4C(v9);
      sub_22B936C98(&v21, v9);
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
      *(v2[6] + 16 * v13) = v12;
      sub_22B936C98(&v21, (v2[7] + 32 * v13));
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      v2[2] = v17;
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v10 = v7;
  }

  sub_22B936BEC(v24, &qword_27D8D54B8, &unk_22BA16D60);
}

void sub_22B989918(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22B9349C8(&qword_27D8D54B0, &qword_22BA16D58);
    v2 = sub_22BA10A8C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
      goto LABEL_23;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v10 = __clz(__rbit64(v5)) | (v9 << 6);
        sub_22B958068(*(a1 + 48) + 40 * v10, v24);
        sub_22B936B20(*(a1 + 56) + 32 * v10, v25 + 8);
        v22[0] = v25[0];
        v22[1] = v25[1];
        v23 = v26;
        v21[0] = v24[0];
        v21[1] = v24[1];
        sub_22B958068(v21, v20);
        if (!swift_dynamicCast())
        {
          sub_22B936BEC(v21, &qword_27D8D54B8, &unk_22BA16D60);

          goto LABEL_23;
        }

        sub_22B936B20(v22 + 8, v20);
        sub_22B936BEC(v21, &qword_27D8D54B8, &unk_22BA16D60);
        sub_22B9349C8(&qword_27D8D4EF0, &qword_22BA13990);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        v11 = sub_22B990A58(v18, v19);
        v12 = v11;
        if (v13)
        {
          v8 = (v2[6] + 16 * v11);
          *v8 = v18;
          v8[1] = v19;

          *(v2[7] + 8 * v12) = v18;

          v7 = v9;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_25;
          }

          *(v2 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
          v14 = (v2[6] + 16 * v11);
          *v14 = v18;
          v14[1] = v19;
          *(v2[7] + 8 * v11) = v18;
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_26;
          }

          v2[2] = v17;
          v7 = v9;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v9 = v7;
      }

LABEL_23:

      return;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

unint64_t sub_22B989BF8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v155 = a2;
  v172 = *MEMORY[0x277D85DE8];
  v3 = sub_22B9349C8(&qword_27D8D54A0, &qword_22BA16D48);
  v156 = *(v3 - 8);
  v157 = v3;
  MEMORY[0x28223BE20](v3);
  v158 = &v149 - v4;
  v5 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v162 = &v149 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v149 - v8;
  v10 = sub_22B9349C8(&qword_27D8D4B90, &qword_22BA12C40);
  v159 = *(v10 - 8);
  v160 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v149 - v11;
  v13 = type metadata accessor for ChatRecord(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = (&v149 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v14 + 40);
  v18 = sub_22BA0FD8C();
  v19 = *(*(v18 - 8) + 56);
  v165 = v17;
  v19(v16 + v17, 1, 1, v18);
  v164 = *(v13 + 44);
  v19(v16 + v164, 1, 1, v18);
  v163 = v13;
  v20 = *(v13 + 60);
  v168 = v16;
  *&v20[v16] = 0;
  sub_22B9358B4(a1, a1[3]);
  sub_22B9358F8();
  v21 = v12;
  v22 = v167;
  sub_22BA10D8C();
  if (v22)
  {
    v166 = v22;
    sub_22B936C4C(a1);
    v161 = 0;
    v162 = 0;
    LODWORD(v167) = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    LODWORD(v160) = 0;
    LODWORD(v159) = 0;
    LODWORD(v158) = 0;
    v29 = 0;
    goto LABEL_4;
  }

  v23 = v9;
  LOBYTE(v170) = 0;
  v24 = v160;
  v25 = sub_22BA10ACC();
  v167 = v20;
  v32 = v168;
  *v168 = v25;
  v32[1] = v33;
  LOBYTE(v170) = 1;
  v34 = sub_22BA10ACC();
  v154 = a1;
  v36 = v159;
  v32[2] = v34;
  v32[3] = v35;
  LOBYTE(v170) = 2;
  v32[4] = sub_22BA10ACC();
  v32[5] = v37;
  LOBYTE(v170) = 3;
  v32[6] = sub_22BA10ACC();
  v32[7] = v38;
  LOBYTE(v170) = 4;
  v32[8] = sub_22BA10ACC();
  v32[9] = v39;
  v153 = v39;
  LOBYTE(v170) = 5;
  v40 = sub_22BA10ACC();
  v166 = 0;
  v32[10] = v40;
  v32[11] = v41;
  LOBYTE(v170) = 6;
  sub_22B9921F8(&unk_281416C00, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v161 = v23;
  v42 = v166;
  sub_22BA10AFC();
  v166 = v42;
  if (v42 || (v43 = v165, sub_22B936BEC(v32 + v165, &qword_27D8D5470, &qword_22BA16C80), sub_22B935A74(v161, v32 + v43), LOBYTE(v170) = 7, v44 = v162, v45 = v166, sub_22BA10AFC(), (v166 = v45) != 0))
  {
    (*(v36 + 8))(v21, v24);
LABEL_25:
    v29 = 0;
    LODWORD(v158) = 0;
    LODWORD(v159) = 0;
    LODWORD(v160) = 0;
    LODWORD(v167) = 0;
    v161 = 0;
    v162 = 0;
LABEL_26:
    sub_22B936C4C(v154);

    v28 = v167;
    v26 = v167;
    v27 = v167;
LABEL_27:

LABEL_4:

    v30 = v168;
    sub_22B936BEC(v168 + v165, &qword_27D8D5470, &qword_22BA16C80);
    sub_22B936BEC(v30 + v164, &qword_27D8D5470, &qword_22BA16C80);

    if (v29)
    {

      if (!v158)
      {
LABEL_6:
        if (!v159)
        {
          goto LABEL_7;
        }

        goto LABEL_16;
      }
    }

    else if (!v158)
    {
      goto LABEL_6;
    }

    if (!v159)
    {
LABEL_7:
      if (!v160)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

LABEL_16:

    if (!v160)
    {
LABEL_8:
      if (!v28)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }

LABEL_17:

    if (!v28)
    {
LABEL_9:
      if (!v27)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }

LABEL_18:

    if (!v27)
    {
LABEL_10:
      if (!v26)
      {
        goto LABEL_11;
      }

      goto LABEL_20;
    }

LABEL_19:

    if (!v26)
    {
LABEL_11:
      if (!v167)
      {
LABEL_13:
      }

LABEL_12:

      goto LABEL_13;
    }

LABEL_20:

    if (!v167)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v46 = v168;
  v47 = v44;
  v48 = v164;
  sub_22B936BEC(v168 + v164, &qword_27D8D5470, &qword_22BA16C80);
  sub_22B935A74(v47, v46 + v48);
  LOBYTE(v170) = 8;
  v152 = v21;
  v49 = v166;
  v50 = sub_22BA10ACC();
  v166 = v49;
  if (v49)
  {
    (*(v36 + 8))(v152, v160);
    goto LABEL_25;
  }

  v52 = (v168 + v163[12]);
  *v52 = v50;
  v52[1] = v51;
  sub_22B9358B4(v154, v154[3]);
  sub_22B9930F0();
  v53 = v166;
  sub_22BA10D8C();
  v166 = v53;
  if (v53)
  {
LABEL_34:
    (*(v159 + 8))(v152, v160);
    v29 = 0;
    LODWORD(v158) = 0;
    LODWORD(v159) = 0;
    LODWORD(v160) = 0;
    LODWORD(v167) = 0;
    v161 = 0;
    v162 = 0;
    goto LABEL_26;
  }

  LOBYTE(v170) = 0;
  v54 = sub_22BA10AEC();
  v166 = 0;
  v55 = v54;
  v57 = v56;
  v58 = v168 + v163[13];
  *v58 = v54;
  v58[8] = v56 & 1;
  LOBYTE(v170) = 1;
  v59 = v166;
  v60 = sub_22BA10AEC();
  v166 = v59;
  if (v59 || (v62 = v168 + v163[14], *v62 = v60, v62[8] = v61 & 1, LOBYTE(v169) = 2, v151 = sub_22B9363C8(), v63 = v166, sub_22BA10AFC(), (v166 = v63) != 0))
  {
    (*(v156 + 8))(v158, v157);
    goto LABEL_34;
  }

  v149 = v170;
  v150 = v171;
  if (v171 >> 60 == 15)
  {
    v64 = (v168 + v163[16]);
    *v64 = 0;
    v64[1] = 0;
    goto LABEL_48;
  }

  v65 = v149;
  v66 = v150;
  sub_22B936A50(v149, v150);
  v67 = sub_22BA0FC9C();
  v69 = v68;
  sub_22B9359A8(v65, v66);
  v70 = (v168 + v163[16]);
  *v70 = v67;
  v70[1] = v69;
  v71 = HIBYTE(v69) & 0xF;
  if ((v69 & 0x2000000000000000) == 0)
  {
    v71 = v67 & 0xFFFFFFFFFFFFLL;
  }

  if (v71)
  {

    v162 = sub_22BA0FC6C();
    if (v72 >> 60 == 15)
    {
    }

    else
    {
      v73 = v72;
      v74 = objc_opt_self();
      v75 = sub_22BA0FC8C();
      v170 = 0;
      v76 = [v74 propertyListWithData:v75 options:0 format:0 error:&v170];

      if (!v76)
      {
        v89 = v170;
        v90 = sub_22BA0FB6C();

        v166 = v90;
        swift_willThrow();

        sub_22B9359A8(v162, v73);
        sub_22B9359A8(v149, v150);
        (*(v156 + 8))(v158, v157);
        (*(v159 + 8))(v152, v160);
        LODWORD(v158) = 0;
        LODWORD(v159) = 0;
        LODWORD(v160) = 0;
        LODWORD(v167) = 0;
        v161 = 0;
        v162 = 0;
        goto LABEL_50;
      }

      v77 = v170;
      sub_22BA107AC();

      sub_22B9359A8(v162, v73);
      swift_unknownObjectRelease();
      sub_22B9349C8(&qword_27D8D4F00, &qword_22BA16D50);
      if (swift_dynamicCast())
      {
        v78 = v169;
LABEL_47:
        *&v167[v168] = v78;
        goto LABEL_48;
      }
    }

    v78 = 0;
    goto LABEL_47;
  }

LABEL_48:
  LOBYTE(v170) = 3;
  v79 = v166;
  v162 = sub_22BA10ACC();
  v166 = v79;
  v167 = v80;
  if (v79)
  {
    sub_22B9359A8(v149, v150);
    (*(v156 + 8))(v158, v157);
    (*(v159 + 8))(v152, v160);
    LODWORD(v158) = 0;
    LODWORD(v159) = 0;
    LODWORD(v160) = 0;
    LODWORD(v167) = 0;
    v161 = 0;
    v162 = 0;
LABEL_50:
    v29 = 1;
    goto LABEL_26;
  }

  v81 = (v168 + v163[17]);
  v82 = v167;
  *v81 = v162;
  v81[1] = v82;
  LOBYTE(v170) = 4;
  v83 = sub_22BA10ACC();
  v166 = 0;
  v84 = (v168 + v163[18]);
  *v84 = v83;
  v84[1] = v85;
  LOBYTE(v170) = 5;
  v86 = v166;
  v87 = sub_22BA10ACC();
  v166 = v86;
  if (v86)
  {
    sub_22B9359A8(v149, v150);
    (*(v156 + 8))(v158, v157);
    (*(v159 + 8))(v152, v160);
    LODWORD(v160) = 0;
    LODWORD(v167) = 0;
    v161 = 0;
    v162 = 0;
    v29 = 1;
    LODWORD(v158) = 1;
    LODWORD(v159) = 1;
    goto LABEL_26;
  }

  v91 = (v168 + v163[19]);
  *v91 = v87;
  v91[1] = v88;
  sub_22B935B38(v154, &v170);
  v92 = v166;
  v93 = sub_22B9688AC(&v170);
  v166 = v92;
  if (v92)
  {
    sub_22B9359A8(v149, v150);
    (*(v156 + 8))(v158, v157);
    (*(v159 + 8))(v152, v160);
    LODWORD(v167) = 0;
    v161 = 0;
    v162 = 0;
    v29 = 1;
    LODWORD(v158) = 1;
    LODWORD(v159) = 1;
    LODWORD(v160) = 1;
    goto LABEL_26;
  }

  *(v168 + v163[20]) = v93;
  LOBYTE(v170) = 7;
  v94 = v166;
  v95 = sub_22BA10ACC();
  v27 = v94 == 0;
  v166 = v94;
  if (v94 || (v97 = (v168 + v163[21]), *v97 = v95, v97[1] = v96, LOBYTE(v170) = 8, v98 = v166, v99 = sub_22BA10AEC(), (v166 = v98) != 0) || (v101 = v168 + v163[22], *v101 = v99, v101[8] = v100 & 1, LOBYTE(v170) = 9, v102 = v166, v103 = sub_22BA10AEC(), (v166 = v102) != 0) || (v105 = v168 + v163[23], *v105 = v103, v105[8] = v104 & 1, LOBYTE(v170) = 10, v106 = v166, v107 = sub_22BA10ACC(), (v166 = v106) != 0))
  {
    sub_22B9359A8(v149, v150);
    (*(v156 + 8))(v158, v157);
    (*(v159 + 8))(v152, v160);
    v26 = 0;
LABEL_61:
    sub_22B936C4C(v154);

    v161 = 0;
    v162 = 0;
    LODWORD(v167) = 0;
    v28 = 1;
    LODWORD(v160) = 1;
    LODWORD(v159) = 1;
    LODWORD(v158) = 1;
    v29 = 1;
    goto LABEL_27;
  }

  v109 = (v168 + v163[24]);
  *v109 = v107;
  v109[1] = v108;
  LOBYTE(v170) = 11;
  v110 = v166;
  v111 = sub_22BA10B0C();
  v166 = v110;
  if (v110)
  {
LABEL_63:
    sub_22B9359A8(v149, v150);
    (*(v156 + 8))(v158, v157);
    (*(v159 + 8))(v152, v160);
    v26 = 1;
    goto LABEL_61;
  }

  v113 = v168 + v163[25];
  *v113 = v111;
  v113[8] = v112 & 1;
  sub_22B935B38(v154, &v170);
  v114 = v166;
  v115 = sub_22B9491D4(&v170);
  if (v114)
  {

    v115 = 0;
    v116 = 0;
    v118 = 0;
  }

  else
  {
    v118 = v117 & 1;
  }

  v166 = 0;
  v119 = v168 + v163[26];
  *v119 = v115;
  *(v119 + 1) = v116;
  v119[16] = v118;
  v119[17] = v114 != 0;
  LOBYTE(v170) = 13;
  if ((sub_22BA10B5C() & 1) == 0)
  {
    goto LABEL_73;
  }

  LOBYTE(v170) = 13;
  v120 = v166;
  v121 = sub_22BA10ACC();
  v166 = v120;
  if (v120)
  {
    goto LABEL_63;
  }

  if (!v122)
  {
LABEL_73:
    if ((v57 & 1) == 0)
    {
      if (sub_22BA10C6C())
      {
        if (v55 == 10)
        {
          goto LABEL_79;
        }

        goto LABEL_100;
      }

      if (sub_22BA0FF9C())
      {
        result = sub_22B992240(0x2DuLL, 0xE100000000000000);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_102;
        }

        if ((result & 0xFFFFFF80) == 0)
        {
          result = sub_22B992240(0x2DuLL, 0xE100000000000000);
          if ((result & 0x100000000) != 0)
          {
LABEL_103:
            __break(1u);
            return result;
          }

          if ((result & 0xFFFFFF00) == 0)
          {
            if (v55 == result)
            {
              goto LABEL_79;
            }

LABEL_100:
            v147 = v167;
            v148 = (v168 + v163[27]);
            *v148 = v162;
            v148[1] = v147;

            goto LABEL_80;
          }

          __break(1u);
LABEL_102:
          __break(1u);
          goto LABEL_103;
        }
      }
    }

LABEL_79:
    v124 = (v168 + v163[27]);
    *v124 = 0;
    v124[1] = 0;
    goto LABEL_80;
  }

  v123 = (v168 + v163[27]);
  *v123 = v121;
  v123[1] = v122;
LABEL_80:
  LOBYTE(v170) = 15;
  v125 = v166;
  v126 = sub_22BA10ACC();
  v162 = v127;
  v166 = v125;
  if (v125)
  {
    sub_22B9359A8(v149, v150);
    (*(v156 + 8))(v158, v157);
    (*(v159 + 8))(v152, v160);
    v161 = 0;
    v162 = 0;
LABEL_86:
    v29 = 1;
    LODWORD(v158) = 1;
    LODWORD(v159) = 1;
    LODWORD(v160) = 1;
    LODWORD(v167) = 1;
    goto LABEL_26;
  }

  v128 = (v168 + v163[29]);
  v129 = v162;
  *v128 = v126;
  v128[1] = v129;
  sub_22B9349C8(&qword_27D8D54A8, &qword_22BA18970);
  LOBYTE(v169) = 16;
  sub_22B993144();
  v130 = v166;
  sub_22BA10AFC();
  v166 = v130;
  if (v130)
  {
    sub_22B9359A8(v149, v150);
    (*(v156 + 8))(v158, v157);
    (*(v159 + 8))(v152, v160);
    v161 = 0;
    goto LABEL_86;
  }

  v131 = v163[30];
  v161 = v170;
  *(v168 + v131) = v170;
  LOBYTE(v170) = 14;
  v132 = v166;
  v133 = sub_22BA10AEC();
  v166 = v132;
  if (v132)
  {
    sub_22B9359A8(v149, v150);
    (*(v156 + 8))(v158, v157);
    (*(v159 + 8))(v152, v160);
    goto LABEL_86;
  }

  if (v134)
  {
    v135 = 1;
  }

  else
  {
    v135 = v133;
  }

  v136 = v168 + v163[28];
  *v136 = v135;
  v136[8] = 0;
  sub_22B935B38(v154, &v170);
  v137 = v166;
  v138 = sub_22B996330(&v170);
  if (v137)
  {

    v137 = 0;
    v138 = 1;
  }

  *(v168 + v163[31]) = v138;
  LOBYTE(v169) = 17;
  sub_22BA10AFC();
  v166 = v137;
  v139 = v170;
  v140 = v171;
  if (v171 >> 60 == 15)
  {
    v141 = 0;
  }

  else
  {
    sub_22B936A50(v170, v171);
    v141 = sub_22BA0FC8C();
    sub_22B9359A8(v139, v140);
  }

  v142 = JWDecodeDictionary();

  if (v142)
  {
    v143 = sub_22BA0FF6C();

    sub_22B989918(v143);
    v145 = v144;
  }

  else
  {
    v145 = 0;
  }

  v146 = v168;
  *(v168 + v163[32]) = v145;
  sub_22B98D0C4(0xD000000000000024, 0x800000022BA1D930, 0x6F6E614674616843, 0xEF726F7272457475);
  sub_22B9359A8(v139, v140);
  sub_22B9359A8(v149, v150);
  (*(v156 + 8))(v158, v157);
  (*(v159 + 8))(v152, v160);
  sub_22B974E6C(v146, v155);
  sub_22B936C4C(v154);
  return sub_22B974ED0(v146);
}

uint64_t sub_22B98B2F8(void *a1)
{
  v2 = v1;
  v83 = *MEMORY[0x277D85DE8];
  v72 = sub_22B9349C8(&qword_27D8D54D8, &qword_22BA16DC0);
  v74 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v73 = &v68 - v4;
  v78 = sub_22B9349C8(&qword_27D8D54E0, &qword_22BA16DC8);
  v76 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v77 = &v68 - v5;
  v6 = sub_22B9349C8(&qword_27D8D5470, &qword_22BA16C80);
  MEMORY[0x28223BE20](v6 - 8);
  v79 = &v68 - v7;
  v8 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v68 - v12;
  v14 = sub_22B9349C8(&qword_27D8D54E8, &unk_22BA16DD0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v68 - v16;
  v18 = a1[3];
  v75 = a1;
  sub_22B9358B4(a1, v18);
  sub_22B9358F8();
  v19 = v14;
  sub_22BA10D9C();
  LOBYTE(v82) = 0;
  v20 = v80;
  sub_22BA10B7C();
  if (v20)
  {
    v80 = v20;
    return (*(v15 + 8))(v17, v14);
  }

  v22 = v13;
  v23 = v79;
  v71 = v15;
  LOBYTE(v82) = 1;
  sub_22BA10B7C();
  LOBYTE(v82) = 2;
  sub_22BA10B7C();
  v80 = 0;
  v82 = *(v2 + 3);
  v81 = 3;
  sub_22B9349C8(&qword_27D8D5478, &unk_22BA173E0);
  sub_22B993430();
  v24 = v80;
  sub_22BA10BEC();
  if (v24)
  {
    v80 = v24;
    return (*(v71 + 8))(v17, v19);
  }

  v82 = *(v2 + 4);
  v81 = 4;
  sub_22BA10BEC();
  v82 = *(v2 + 5);
  v81 = 5;
  sub_22BA10BEC();
  v80 = 0;
  v70 = type metadata accessor for ChatRecord(0);
  v25 = v23;
  sub_22B9934AC(&v2[*(v70 + 40)], v23, &qword_27D8D5470, &qword_22BA16C80);
  sub_22B935A74(v23, v22);
  LOBYTE(v82) = 6;
  sub_22BA0FD8C();
  sub_22B9921F8(&qword_27D8D5058, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  v26 = v80;
  sub_22BA10BAC();
  v80 = v26;
  v27 = v22;
  if (v26 || (sub_22B936BEC(v22, &unk_27D8D4A90, &qword_22BA126A0), v28 = v70, sub_22B9934AC(&v2[*(v70 + 44)], v25, &qword_27D8D5470, &qword_22BA16C80), sub_22B935A74(v25, v11), LOBYTE(v82) = 7, v29 = v80, sub_22BA10BAC(), v80 = v29, v27 = v11, v29))
  {
    sub_22B936BEC(v27, &unk_27D8D4A90, &qword_22BA126A0);
    return (*(v71 + 8))(v17, v19);
  }

  sub_22B936BEC(v11, &unk_27D8D4A90, &qword_22BA126A0);
  LOBYTE(v82) = 8;
  v30 = v80;
  sub_22BA10B7C();
  v80 = v30;
  v31 = v71;
  if (v30)
  {
    return (*(v71 + 8))(v17, v19);
  }

  v69 = v19;
  v32 = v75[3];
  v79 = v2;
  sub_22B9358B4(v75, v32);
  sub_22B9930F0();
  v33 = v77;
  sub_22BA10D9C();
  LOBYTE(v82) = 0;
  v34 = v78;
  v35 = v80;
  sub_22BA10B9C();
  v80 = v35;
  if (v35)
  {
    (*(v76 + 8))(v33, v34);
    return (*(v31 + 8))(v17, v69);
  }

  v68 = v17;
  LOBYTE(v82) = 1;
  sub_22BA10B9C();
  v80 = 0;
  if (*&v79[v28[15]])
  {
    v36 = objc_opt_self();
    v37 = sub_22BA0FF5C();
    *&v82 = 0;
    v38 = [v36 dataWithPropertyList:v37 format:200 options:0 error:&v82];

    v39 = v82;
    if (v38)
    {
      v40 = sub_22BA0FCAC();
      v42 = v41;

      sub_22BA0FC9C();
      LOBYTE(v82) = 2;
      v43 = v80;
      sub_22BA10BCC();
      v80 = v43;
      if (v43)
      {

        sub_22B9359BC(v40, v42);
LABEL_34:
        (*(v76 + 8))(v77, v78);
        return (*(v71 + 8))(v68, v69);
      }

      sub_22B9359BC(v40, v42);
    }

    else
    {
      v44 = v39;
      v45 = sub_22BA0FB6C();

      swift_willThrow();
      v80 = 0;
    }
  }

  LOBYTE(v82) = 3;
  v46 = v80;
  sub_22BA10B7C();
  v80 = v46;
  if (v46)
  {
    goto LABEL_34;
  }

  LOBYTE(v82) = 4;
  sub_22BA10B7C();
  v80 = 0;
  LOBYTE(v82) = 5;
  sub_22BA10B7C();
  v80 = 0;
  LOBYTE(v82) = 7;
  sub_22BA10B7C();
  v80 = 0;
  LOBYTE(v82) = 8;
  sub_22BA10B9C();
  v80 = 0;
  LOBYTE(v82) = 10;
  sub_22BA10B7C();
  v80 = 0;
  LOBYTE(v82) = 11;
  sub_22BA10BBC();
  v80 = 0;
  LOBYTE(v82) = 13;
  sub_22BA10B7C();
  v80 = 0;
  LOBYTE(v82) = 14;
  sub_22BA10B9C();
  v80 = 0;
  v47 = *&v79[v28[20]];
  if (v47)
  {
    v48 = v80;
    sub_22B967D44(v75, v47);
    v80 = v48;
  }

  v49 = &v79[v28[26]];
  if ((v49[17] & 1) == 0)
  {
    v50 = v80;
    sub_22B948DD0(v75, *v49, *(v49 + 1), v49[16] & 1);
    v80 = v50;
  }

  v51 = *&v79[v28[31]];
  if (v51 != 1)
  {
    sub_22B9358B4(v75, v75[3]);
    sub_22B993514();
    sub_22BA10D9C();
    if (v51)
    {
      v52 = [v51 data];
      if (v52)
      {
        v53 = v52;
        v54 = sub_22BA0FCAC();
        v56 = v55;
      }

      else
      {
        v54 = 0;
        v56 = 0xF000000000000000;
      }

      *&v82 = v54;
      *(&v82 + 1) = v56;
      sub_22B9349C8(&qword_27D8D54F8, &unk_22BA180B0);
      sub_22B993568();
      v58 = v72;
      v57 = v73;
      v59 = v80;
      sub_22BA10BEC();
      sub_22B9930E0(v51);
      sub_22B9359A8(v82, *(&v82 + 1));
      (*(v74 + 8))(v57, v58);
      v80 = v59;
      if (v59)
      {
        goto LABEL_34;
      }
    }

    else
    {
      (*(v74 + 8))(v73, v72);
    }
  }

  v60 = *&v79[v28[32]];
  if (v60)
  {
    sub_22B98C510(v60);
    v61 = sub_22BA0FF5C();
  }

  else
  {
    v61 = 0;
  }

  v62 = JWEncodeDictionary();

  if (v62)
  {
    v63 = sub_22BA0FCAC();
    v65 = v64;
  }

  else
  {
    v63 = 0;
    v65 = 0xF000000000000000;
  }

  *&v82 = v63;
  *(&v82 + 1) = v65;
  v81 = 17;
  sub_22B968DB4();
  v66 = v77;
  v67 = v78;
  sub_22BA10BAC();
  (*(v76 + 8))(v66, v67);
  (*(v71 + 8))(v68, v69);
  return sub_22B9359A8(v63, v65);
}

void sub_22B98BF80(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22B9349C8(&qword_27D8D5508, &unk_22BA16DE0);
    v2 = sub_22BA10A8C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = (*(a1 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v5)))));
    v13 = v12[1];
    *&v30[0] = *v12;
    *(&v30[0] + 1) = v13;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_22B936C98(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_22B936C98(v29, v30);
    v14 = sub_22BA1084C();
    v15 = -1 << *(v2 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v22;
    *(v10 + 16) = v23;
    *(v10 + 32) = v24;
    sub_22B936C98(v30, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_22B98C248(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22B9349C8(&qword_27D8D5508, &unk_22BA16DE0);
    v2 = sub_22BA10A8C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_22B936B20(*(a1 + 56) + 32 * v12, v35);
    *&v34 = v15;
    *(&v34 + 1) = v14;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_22B936C98(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_22B936C98(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_22B936C98(v31, v32);
    v16 = sub_22BA1084C();
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    sub_22B936C98(v32, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_22B98C510(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22B9349C8(&qword_27D8D5508, &unk_22BA16DE0);
    v2 = sub_22BA10A8C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v8 << 6)));
    v13 = v12[1];
    *&v30[0] = *v12;
    *(&v30[0] + 1) = v13;

    swift_dynamicCast();
    sub_22B9349C8(&qword_27D8D4EF0, &qword_22BA13990);
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_22B936C98(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_22B936C98(v29, v30);
    v14 = sub_22BA1084C();
    v15 = -1 << *(v2 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v22;
    *(v10 + 16) = v23;
    *(v10 + 32) = v24;
    sub_22B936C98(v30, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_22B98C7DC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22B9349C8(&qword_27D8D5510, &qword_22BA16DF0);
    v2 = sub_22BA10A8C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + 16 * (v12 | (v11 << 6)));
        v15 = *v13;
        v14 = v13[1];

        sub_22B9349C8(&qword_27D8D4EF0, &qword_22BA13990);
        swift_dynamicCast();
        sub_22B936C98(&v22, v24);
        sub_22B936C98(v24, v25);
        sub_22B936C98(v25, &v23);
        v16 = sub_22B990A58(v15, v14);
        if (v17)
        {
          v8 = (v2[6] + 16 * v16);
          *v8 = v15;
          v8[1] = v14;
          v9 = v16;

          v10 = (v2[7] + 32 * v9);
          sub_22B936C4C(v10);
          sub_22B936C98(&v23, v10);
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
          v18 = (v2[6] + 16 * v16);
          *v18 = v15;
          v18[1] = v14;
          sub_22B936C98(&v23, (v2[7] + 32 * v16));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_22B98CA3C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22B9349C8(&qword_27D8D5510, &qword_22BA16DF0);
    v2 = sub_22BA10A8C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + ((v11 << 10) | (16 * v12)));
        v15 = *v13;
        v14 = v13[1];

        swift_dynamicCast();
        sub_22B936C98(&v22, v24);
        sub_22B936C98(v24, v25);
        sub_22B936C98(v25, &v23);
        v16 = sub_22B990A58(v15, v14);
        if (v17)
        {
          v8 = (v2[6] + 16 * v16);
          *v8 = v15;
          v8[1] = v14;
          v9 = v16;

          v10 = (v2[7] + 32 * v9);
          sub_22B936C4C(v10);
          sub_22B936C98(&v23, v10);
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
          v18 = (v2[6] + 16 * v16);
          *v18 = v15;
          v18[1] = v14;
          sub_22B936C98(&v23, (v2[7] + 32 * v16));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_22B98CC94(char a1)
{
  result = 7107699;
  switch(a1)
  {
    case 1:
      result = 6648947;
      break;
    case 2:
      result = 1886351984;
      break;
    case 3:
      result = 6580579;
      break;
    case 4:
      result = 1701667182;
      break;
    case 5:
      result = 6580583;
      break;
    case 6:
      result = 0x737470637470;
      break;
    case 7:
      result = 6840684;
      break;
    case 8:
      result = 1953261926;
      break;
    case 9:
      result = 2037543283;
      break;
    case 10:
      result = 1684629359;
      break;
    case 11:
      result = 7174002;
      break;
    case 12:
      result = 0x313030706F7270;
      break;
    case 13:
      result = 0x656D616E6D6F6F72;
      break;
    case 14:
      result = 0x74617453636E7973;
      break;
    case 15:
      result = 1684631655;
      break;
    case 16:
      result = 0x737465737361;
      break;
    case 17:
      result = 1935960420;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22B98CDF0(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_22B98CC94(*a1);
  v5 = v4;
  if (v3 == sub_22B98CC94(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22BA10C6C();
  }

  return v8 & 1;
}

uint64_t sub_22B98CE78()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22B98CC94(v1);
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B98CEDC(uint64_t a1)
{
  sub_22B98CC94(*v1);
  sub_22BA1008C();
}

uint64_t sub_22B98CF30(uint64_t a1)
{
  v2 = *v1;
  sub_22BA10D3C();
  sub_22B98CC94(v2);
  sub_22BA1008C();

  return sub_22BA10D6C();
}

unint64_t sub_22B98CF90@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22B993AD4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_22B98CFC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22B98CC94(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_22B98D008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22B993AD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22B98D04C(uint64_t a1)
{
  v2 = sub_22B9930F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B98D088(uint64_t a1)
{
  v2 = sub_22B9930F0();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_22B98D0C4(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4[1];
  if (v5)
  {
    v10 = *v4;
    v11 = objc_opt_self();

    v12 = [v11 sharedFeatureFlags];
    v13 = [v12 isOneChatEnabled];

    if (v13)
    {
      v28 = v10;
      v29 = v5;
      sub_22BA0FFFC();
      sub_22B936ACC();
      v14 = sub_22BA1079C();

      if (v14)
      {
        if (qword_281414D30 != -1)
        {
          swift_once();
        }

        v15 = sub_22BA0FEFC();
        sub_22B936CA8(v15, qword_28141AD40);

        v16 = sub_22BA0FEDC();
        v17 = sub_22BA1044C();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v28 = v19;
          *v18 = 136315650;
          *(v18 + 4) = sub_22B99153C(a3, a4, &v28);
          *(v18 + 12) = 2080;
          *(v18 + 14) = sub_22B99153C(result, a2, &v28);
          *(v18 + 22) = 2080;
          *(v18 + 24) = sub_22B99153C(v10, v5, &v28);
          _os_log_impl(&dword_22B92A000, v16, v17, "[%s] %s guid: %s", v18, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x23189ADD0](v19, -1, -1);
          MEMORY[0x23189ADD0](v18, -1, -1);
        }

        v20 = [objc_opt_self() sharedInstance];
        if (v20)
        {
          v21 = v20;
          v27 = sub_22BA0FFCC();
          v26 = sub_22BA0FFCC();
          v28 = a3;
          v29 = a4;

          MEMORY[0x231899730](45, 0xE100000000000000);
          MEMORY[0x231899730](result, a2);
          v22 = sub_22BA0FFCC();

          sub_22B9349C8(&qword_27D8D54C0, &qword_22BA16D70);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_22BA13CB0;
          v28 = 1684632935;
          v29 = 0xE400000000000000;
          v24 = MEMORY[0x277D837D0];
          sub_22BA1086C();
          *(inited + 96) = v24;
          *(inited + 72) = v10;
          *(inited + 80) = v5;
          sub_22B9BBEF0(inited);
          swift_setDeallocating();
          sub_22B936BEC(inited + 32, &unk_27D8D57B0, &unk_22BA16D78);
          v25 = sub_22BA0FF5C();

          [v21 forceAutoBugCaptureWithSubType:v27 errorPayload:0 type:v26 context:v22 metadata:v25];

          sub_22B98FB4C(result, a2, a3, a4);
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_22B98D54C()
{
  v1 = type metadata accessor for ChatRecord(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B974E6C(v0 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord, v3);
  v4 = *(v3 + 8);

  sub_22B974ED0(v3);
  return v4;
}

uint64_t sub_22B98D6D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord + 48);

  return v1;
}

uint64_t sub_22B98D784()
{
  v1 = *(v0 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord + 32);

  return v1;
}

uint64_t sub_22B98D830()
{
  v1 = type metadata accessor for ChatRecord(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B974E6C(v0 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord, v3);
  v4 = *(v3 + 10);

  sub_22B974ED0(v3);
  return v4;
}

uint64_t sub_22B98D8CC(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for ChatRecord(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (a1 == 1684632935 && a2 == 0xE400000000000000 || (sub_22BA10C6C() & 1) != 0)
    {
      if (*(v2 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord + 8))
      {

        v8 = sub_22BA0FFCC();
      }

      else
      {
        v8 = 0;
      }

      v9 = IMAnyServiceGUIDFromLegacyChatGUID();

      if (v9)
      {
        v10 = sub_22BA0FFFC();

        return v10;
      }

      return 0;
    }

    if (a1 == 6518387 && a2 == 0xE300000000000000 || (sub_22BA10C6C() & 1) != 0)
    {
      v12 = *(v2 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord + 16);
LABEL_19:

      return v12;
    }

    if (a1 == 6580579 && a2 == 0xE300000000000000 || (sub_22BA10C6C() & 1) != 0)
    {
      v13 = v2 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord;
      v14 = v5[17];
LABEL_18:
      v12 = *(v13 + v14);
      goto LABEL_19;
    }

    if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_22BA10C6C() & 1) != 0)
    {
      v13 = v2 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord;
      v14 = v5[18];
      goto LABEL_18;
    }

    if (a1 == 6580583 && a2 == 0xE300000000000000 || (sub_22BA10C6C() & 1) != 0)
    {
      v13 = v2 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord;
      v14 = v5[19];
      goto LABEL_18;
    }

    if (a1 == 6840684 && a2 == 0xE300000000000000 || (sub_22BA10C6C() & 1) != 0)
    {
      v13 = v2 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord;
      v14 = v5[21];
      goto LABEL_18;
    }

    if (a1 == 1684629359 && a2 == 0xE400000000000000 || (sub_22BA10C6C() & 1) != 0)
    {
      v13 = v2 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord;
      v14 = v5[24];
      goto LABEL_18;
    }

    if (a1 == 1684631655 && a2 == 0xE400000000000000 || (sub_22BA10C6C() & 1) != 0)
    {
      sub_22B974E6C(v2 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord, v7);
      v15 = *&v7[v5[29]];

      sub_22B974ED0(v7);
      return v15;
    }
  }

  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v16 = sub_22BA0FEFC();
  sub_22B936CA8(v16, qword_28141AD40);

  v17 = sub_22BA0FEDC();
  v18 = sub_22BA1044C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v24 = v20;
    *v19 = 136315138;
    if (a2)
    {
      v21 = a2;
    }

    else
    {
      a1 = 0x79656B206C696E28;
      v21 = 0xEE002921656D614ELL;
    }

    v22 = sub_22B99153C(a1, v21, &v24);

    *(v19 + 4) = v22;
    _os_log_impl(&dword_22B92A000, v17, v18, "While decoding ChatRecord, unexpected string(forKey:%s request", v19, 0xCu);
    sub_22B936C4C(v20);
    MEMORY[0x23189ADD0](v20, -1, -1);
    MEMORY[0x23189ADD0](v19, -1, -1);
  }

  return 0;
}

uint64_t sub_22B98DE60(uint64_t a1, unint64_t a2)
{
  v4 = a1;
  if (!a2)
  {
LABEL_31:
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v10 = sub_22BA0FEFC();
    sub_22B936CA8(v10, qword_28141AD40);

    v11 = sub_22BA0FEDC();
    v12 = sub_22BA1044C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17 = v14;
      *v13 = 136315138;
      if (a2)
      {
        v15 = a2;
      }

      else
      {
        v4 = 0x79656B206C696E28;
        v15 = 0xEE002921656D614ELL;
      }

      v16 = sub_22B99153C(v4, v15, &v17);

      *(v13 + 4) = v16;
      _os_log_impl(&dword_22B92A000, v11, v12, "While decoding ChatRecord, unexpected number(forKey:%s) request", v13, 0xCu);
      sub_22B936C4C(v14);
      MEMORY[0x23189ADD0](v14, -1, -1);
      MEMORY[0x23189ADD0](v13, -1, -1);
    }

    return 0;
  }

  v5 = a1 == 7107699 && a2 == 0xE300000000000000;
  if (v5 || (sub_22BA10C6C() & 1) != 0)
  {
    v6 = v2 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord;
    v7 = *(type metadata accessor for ChatRecord(0) + 52);
    goto LABEL_8;
  }

  if (v4 == 6648947 && a2 == 0xE300000000000000 || (sub_22BA10C6C() & 1) != 0)
  {
    v6 = v2 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord;
    v7 = *(type metadata accessor for ChatRecord(0) + 56);
    goto LABEL_8;
  }

  if (v4 == 1953261926 && a2 == 0xE400000000000000 || (sub_22BA10C6C() & 1) != 0)
  {
    v6 = v2 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord;
    v7 = *(type metadata accessor for ChatRecord(0) + 88);
    goto LABEL_8;
  }

  if (v4 == 2037543283 && a2 == 0xE400000000000000 || (sub_22BA10C6C() & 1) != 0)
  {
    v6 = v2 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord;
    v7 = *(type metadata accessor for ChatRecord(0) + 92);
    goto LABEL_8;
  }

  if ((v4 != 7174002 || a2 != 0xE300000000000000) && (sub_22BA10C6C() & 1) == 0)
  {
    if (v4 == 0x74617453636E7973 && a2 == 0xE900000000000065 || (sub_22BA10C6C() & 1) != 0)
    {
      v6 = v2 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord;
      v7 = *(type metadata accessor for ChatRecord(0) + 112);
LABEL_8:
      if ((*(v6 + v7 + 8) & 1) == 0)
      {
        return sub_22BA1039C();
      }

      return 0;
    }

    goto LABEL_31;
  }

  v9 = v2 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord;
  if ((*(v9 + *(type metadata accessor for ChatRecord(0) + 100) + 8) & 1) == 0)
  {
    return sub_22BA10D2C();
  }

  return 0;
}

unint64_t sub_22B98E2A8(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for ChatRecord(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    goto LABEL_15;
  }

  if ((a1 != 1886351984 || a2 != 0xE400000000000000) && (sub_22BA10C6C() & 1) == 0)
  {
    if (a1 == 0x313030706F7270 && a2 == 0xE700000000000000 || (sub_22BA10C6C() & 1) != 0)
    {
      return sub_22B98E960();
    }

    if (a1 == 1935960420 && a2 == 0xE400000000000000 || (sub_22BA10C6C() & 1) != 0)
    {
      if (*(v2 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord + *(v5 + 128)))
      {

        sub_22B98C7DC(v9);
        v8 = v10;

        return v8;
      }

      return 0;
    }

LABEL_15:
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v11 = sub_22BA0FEFC();
    sub_22B936CA8(v11, qword_28141AD40);

    v12 = sub_22BA0FEDC();
    v13 = sub_22BA1044C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 136315138;
      if (a2)
      {
        v16 = a2;
      }

      else
      {
        a1 = 0x79656B206C696E28;
        v16 = 0xEE002921656D614ELL;
      }

      v17 = sub_22B99153C(a1, v16, &v20);

      *(v14 + 4) = v17;
      _os_log_impl(&dword_22B92A000, v12, v13, "While decoding ChatRecord, unexpected dict(forKey:%s) request", v14, 0xCu);
      sub_22B936C4C(v15);
      MEMORY[0x23189ADD0](v15, -1, -1);
      MEMORY[0x23189ADD0](v14, -1, -1);
    }

    return 0;
  }

  sub_22B974E6C(v2 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord, v7);
  v8 = *&v7[*(v5 + 60)];

  sub_22B974ED0(v7);
  return v8;
}

id sub_22B98E674(uint64_t a1, unint64_t a2)
{
  v4 = a1;
  if (!a2 || (a1 != 0x3130306F746F7270 || a2 != 0xE800000000000000) && (sub_22BA10C6C() & 1) == 0)
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v10 = sub_22BA0FEFC();
    sub_22B936CA8(v10, qword_28141AD40);

    v11 = sub_22BA0FEDC();
    v12 = sub_22BA1044C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17 = v14;
      *v13 = 136315138;
      if (a2)
      {
        v15 = a2;
      }

      else
      {
        v4 = 0x79656B206C696E28;
        v15 = 0xEE002921656D614ELL;
      }

      v16 = sub_22B99153C(v4, v15, &v17);

      *(v13 + 4) = v16;
      _os_log_impl(&dword_22B92A000, v11, v12, "While decoding ChatRecord, unexpected data(forKey:%s) request", v13, 0xCu);
      sub_22B936C4C(v14);
      MEMORY[0x23189ADD0](v14, -1, -1);
      MEMORY[0x23189ADD0](v13, -1, -1);
    }

    return 0;
  }

  v5 = v2 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord;
  v6 = *(v5 + *(type metadata accessor for ChatRecord(0) + 124));
  if (v6 < 2)
  {
    return 0;
  }

  result = [v6 data];
  if (result)
  {
    v8 = result;
    v9 = sub_22BA0FCAC();

    return v9;
  }

  return result;
}

unint64_t sub_22B98E960()
{
  v1 = v0 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord;
  v2 = 0;
  v3 = (v1 + *(type metadata accessor for ChatRecord(0) + 104));
  if (*(v3 + 17) & 1) != 0 || (v2 = *v3, (v3[2]))
  {
    sub_22B9349C8(&unk_27D8D4E00, &qword_22BA13E00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22BA13CB0;
    *(inited + 32) = 29811;
    v5 = inited + 32;
    *(inited + 72) = MEMORY[0x277D83B88];
    *(inited + 40) = 0xE200000000000000;
    *(inited + 48) = v2;
    v6 = sub_22B9BBA8C(inited);
    swift_setDeallocating();
    sub_22B936BEC(v5, &unk_27D8D5770, &qword_22BA135E0);
  }

  else
  {
    v7 = v3[1];
    sub_22B9349C8(&unk_27D8D4E00, &qword_22BA13E00);
    v8 = swift_initStackObject();
    *(v8 + 16) = xmmword_22BA13410;
    *(v8 + 32) = 29811;
    v9 = MEMORY[0x277D83B88];
    *(v8 + 40) = 0xE200000000000000;
    *(v8 + 48) = v2;
    *(v8 + 72) = v9;
    *(v8 + 80) = 25715;
    *(v8 + 120) = MEMORY[0x277D84A28];
    *(v8 + 88) = 0xE200000000000000;
    *(v8 + 96) = v7;
    v6 = sub_22B9BBA8C(v8);
    swift_setDeallocating();
    sub_22B9349C8(&unk_27D8D5770, &qword_22BA135E0);
    swift_arrayDestroy();
  }

  return v6;
}

void *sub_22B98EADC()
{
  v1 = v0 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord;
  v2 = *(v1 + *(type metadata accessor for ChatRecord(0) + 80));
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = *(v2 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = ( + 72);
  v5 = MEMORY[0x277D84F90];
  do
  {
    v6 = *(v4 - 5);
    v7 = *(v4 - 4);
    v8 = *(v4 - 2);
    v24 = *(v4 - 3);
    v9 = *(v4 - 1);
    v10 = *v4;
    sub_22B9349C8(&qword_27D8D5110, &unk_22BA15140);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22BA13CB0;
    *(inited + 32) = sub_22BA0FFFC();
    *(inited + 40) = v12;
    *(inited + 48) = v6;
    *(inited + 56) = v7;

    swift_bridgeObjectRetain_n();

    v13 = sub_22B9BB884(inited);
    swift_setDeallocating();
    sub_22B936BEC(inited + 32, &qword_27D8D5118, &qword_22BA16E30);
    v25 = v13;
    if (v10)
    {
      v14 = sub_22BA0FFFC();
      v16 = v15;

      sub_22B9B50CC(v9, v10, v14, v16);
    }

    if (v8)
    {
      v17 = sub_22BA0FFFC();
      sub_22B9B50CC(v24, v8, v17, v18);
    }

    sub_22B98CA3C(v25);
    v20 = v19;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_22B980090(0, v5[2] + 1, 1, v5);
    }

    v22 = v5[2];
    v21 = v5[3];
    if (v22 >= v21 >> 1)
    {
      v5 = sub_22B980090((v21 > 1), v22 + 1, 1, v5);
    }

    v4 += 6;
    v5[2] = v22 + 1;
    v5[v22 + 4] = v20;
    --v3;
  }

  while (v3);

  return v5;
}

uint64_t sub_22B98ED44(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  if (a2 && (a1 == 0x737470637470 && a2 == 0xE600000000000000 || (sub_22BA10C6C() & 1) != 0))
  {
    v4 = sub_22B98EADC();
    v5 = sub_22B98EF34(v4);

    return v5;
  }

  else
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v7 = sub_22BA0FEFC();
    sub_22B936CA8(v7, qword_28141AD40);

    v8 = sub_22BA0FEDC();
    v9 = sub_22BA1044C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136315138;
      if (a2)
      {
        v12 = a2;
      }

      else
      {
        v3 = 0x79656B206C696E28;
        v12 = 0xEE002921656D614ELL;
      }

      v13 = sub_22B99153C(v3, v12, &v14);

      *(v10 + 4) = v13;
      _os_log_impl(&dword_22B92A000, v8, v9, "While decoding ChatRecord, unexpected array(forKey:%s) request", v10, 0xCu);
      sub_22B936C4C(v11);
      MEMORY[0x23189ADD0](v11, -1, -1);
      MEMORY[0x23189ADD0](v10, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_22B98EF34(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_22B968160(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {

      sub_22B9349C8(&qword_27D8D4F00, &qword_22BA16D50);
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_22B968160((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_22B936C98(&v8, (v2 + 32 * v6 + 32));
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_22B98F0F8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for ChatRecord(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v60 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v60 - v14;
  if (!a2)
  {
    goto LABEL_28;
  }

  if (a1 == 28775 && a2 == 0xE200000000000000 || (sub_22BA10C6C() & 1) != 0)
  {
    v16 = OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord;
    sub_22B974E6C(v3 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord, v15);
    v17 = *&v15[*(v7 + 120)];

    sub_22B974ED0(v15);
    if (v17)
    {
      if (*(v17 + 16))
      {
        sub_22B990A58(28775, 0xE200000000000000);
        if (v18)
        {
LABEL_8:

          sub_22BA0FC1C();
        }
      }

      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v20 = sub_22BA0FEFC();
      sub_22B936CA8(v20, qword_28141AD40);
      v21 = v3;
      v22 = v3;

      v23 = sub_22BA0FEDC();
      v24 = sub_22BA1044C();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v60 = a3;
        v61 = v26;
        v27 = v26;
        *v25 = 136315650;
        *(v25 + 4) = sub_22B99153C(28775, 0xE200000000000000, &v61);
        *(v25 + 12) = 2080;
        sub_22B974E6C(v21 + v16, v13);
        v28 = &v13[*(v7 + 116)];
        v29 = *v28;
        v30 = v28[1];

        sub_22B974ED0(v13);
        if (v30)
        {
          v31 = v29;
        }

        else
        {
          v31 = 0xD000000000000010;
        }

        if (!v30)
        {
          v30 = 0x800000022BA1D870;
        }

        v32 = sub_22B99153C(v31, v30, &v61);

        *(v25 + 14) = v32;
        *(v25 + 22) = 2080;

        v33 = sub_22B99153C(a1, a2, &v61);

        *(v25 + 24) = v33;
        _os_log_impl(&dword_22B92A000, v23, v24, "While decoding ChatRecord, assets found in CKRecord, but no GroupPhoto asset found for %s, id %s assetURL(forKey:%s) request", v25, 0x20u);
        swift_arrayDestroy();
        v34 = v27;
        a3 = v60;
        MEMORY[0x23189ADD0](v34, -1, -1);
        MEMORY[0x23189ADD0](v25, -1, -1);
      }
    }

    v35 = sub_22BA0FC4C();
    return (*(*(v35 - 8) + 56))(a3, 1, 1, v35);
  }

  if ((a1 != 0x6162617274 || a2 != 0xE500000000000000) && (sub_22BA10C6C() & 1) == 0)
  {
LABEL_28:
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v41 = sub_22BA0FEFC();
    sub_22B936CA8(v41, qword_28141AD40);

    v42 = sub_22BA0FEDC();
    v43 = sub_22BA1044C();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v61 = v45;
      *v44 = 136315138;
      if (a2)
      {
        v46 = a2;
      }

      else
      {
        a1 = 0x79656B206C696E28;
        v46 = 0xEE002921656D614ELL;
      }

      v47 = sub_22B99153C(a1, v46, &v61);

      *(v44 + 4) = v47;
      _os_log_impl(&dword_22B92A000, v42, v43, "While decoding ChatRecord, unexpected assetURL(forKey:%s) request", v44, 0xCu);
      sub_22B936C4C(v45);
      MEMORY[0x23189ADD0](v45, -1, -1);
      MEMORY[0x23189ADD0](v44, -1, -1);
    }

    v48 = sub_22BA0FC4C();
    v49 = *(*(v48 - 8) + 56);
    v50 = v48;
    v51 = a3;
    goto LABEL_36;
  }

  v36 = a3;
  v37 = [objc_opt_self() sharedFeatureFlags];
  v38 = [v37 isTranscriptBackgroundsMicEnabled];

  if (!v38)
  {
    v52 = sub_22BA0FC4C();
    v49 = *(*(v52 - 8) + 56);
    v50 = v52;
    v51 = v36;
LABEL_36:

    return v49(v51, 1, 1, v50);
  }

  sub_22B974E6C(v3 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord, v10);
  v39 = *&v10[*(v7 + 120)];

  sub_22B974ED0(v10);
  if (v39)
  {
    if (*(v39 + 16))
    {
      sub_22B990A58(0x6162617274, 0xE500000000000000);
      if (v40)
      {
        goto LABEL_8;
      }
    }

    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v53 = sub_22BA0FEFC();
    sub_22B936CA8(v53, qword_28141AD40);

    v54 = sub_22BA0FEDC();
    v55 = sub_22BA1044C();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v61 = v57;
      *v56 = 136315394;
      *(v56 + 4) = sub_22B99153C(0x6162617274, 0xE500000000000000, &v61);
      *(v56 + 12) = 2080;

      v58 = sub_22B99153C(a1, a2, &v61);

      *(v56 + 14) = v58;
      _os_log_impl(&dword_22B92A000, v54, v55, "While decoding ChatRecord, assets found in CKRecord, but no transcript background asset found for %s) assetURL(forKey:%s) request", v56, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v57, -1, -1);
      MEMORY[0x23189ADD0](v56, -1, -1);
    }
  }

  v59 = sub_22BA0FC4C();
  return (*(*(v59 - 8) + 56))(v36, 1, 1, v59);
}

id ChatRecordKeyedDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ChatRecordKeyedDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChatRecordKeyedDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22B98FB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v68 = a2;
  v67 = a1;
  v6 = sub_22B9349C8(&unk_27D8D5780, &qword_22BA13DB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v59 - v7;
  v9 = sub_22BA0FE6C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v74 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_22BA0FEAC();
  v73 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v72 = v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_22BA0FE7C();
  v70 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v78 = v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_22BA0FE5C();
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v76 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22BA0FEBC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v71 = v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v81 = v59 - v19;
  v20 = [objc_opt_self() sharedInstance];
  if (v20)
  {
    v21 = v20;
    v65 = v10;
    v66 = v9;
    v22 = [v20 isInternalInstall];

    if (v22)
    {
      v23 = [objc_opt_self() sharedInstance];
      v24 = sub_22BA0FFCC();
      v25 = sub_22BA0FFCC();
      v26 = [v23 getBoolFromDomain:v24 forKey:v25];

      if (v26)
      {
        v82 = 0x616E7265746E495BLL;
        v83 = 0xEB00000000205D6CLL;
        v27 = a3;
        MEMORY[0x231899730](a3, a4);
        v61 = v82;
        v60 = v83;
        v82 = 0x5B205D5254545BLL;
        v83 = 0xE700000000000000;
        MEMORY[0x231899730](a3, a4);
        MEMORY[0x231899730](8285, 0xE200000000000000);
        v28 = v67;
        v29 = v68;
        MEMORY[0x231899730](v67, v68);
        v59[1] = v82;
        v59[2] = v83;
        v82 = 0;
        v83 = 0xE000000000000000;
        sub_22BA108FC();
        MEMORY[0x231899730](0xD00000000000003CLL, 0x800000022BA1D9A0);
        MEMORY[0x231899730](v27, a4);
        MEMORY[0x231899730](0x657079746275530ALL, 0xEA0000000000203ALL);
        MEMORY[0x231899730](v28, v29);
        MEMORY[0x231899730](0x203A646975670ALL, 0xE700000000000000);
        v30 = v69[1];
        v63 = v15;
        v64 = v8;
        v62 = v16;
        if (v30)
        {
          v31 = *v69;
          v32 = v30;
        }

        else
        {
          v32 = 0xE500000000000000;
          v31 = 0x3E6C696E3CLL;
        }

        v69 = 0x800000022BA1D9E0;

        MEMORY[0x231899730](v31, v32);

        v68 = v82;
        (*(v77 + 104))(v76, *MEMORY[0x277D195A8], v79);
        v33 = v70;
        (*(v70 + 104))();
        sub_22B9349C8(&qword_27D8D54C8, &qword_22BA16D88);
        v34 = sub_22BA0FE4C();
        v35 = *(v34 - 8);
        v36 = *(v35 + 72);
        v37 = (*(v35 + 80) + 32) & ~*(v35 + 80);
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_22BA13410;
        v39 = v38 + v37;
        v40 = *(v35 + 104);
        v40(v39, *MEMORY[0x277D195A0], v34);
        v40(v39 + v36, *MEMORY[0x277D19598], v34);
        v41 = v72;
        sub_22BA0FE9C();
        v43 = v65;
        v42 = v66;
        v44 = v74;
        (*(v65 + 104))(v74, *MEMORY[0x277D195C8], v66);
        v45 = v76;
        sub_22BA0FE3C();

        (*(v43 + 8))(v44, v42);
        (*(v73 + 8))(v41, v75);
        (*(v33 + 8))(v78, v80);
        (*(v77 + 8))(v45, v79);
        v46 = sub_22BA1030C();
        v47 = v64;
        (*(*(v46 - 8) + 56))(v64, 1, 1, v46);
        v48 = v62;
        v49 = v71;
        v50 = v81;
        v51 = v63;
        (*(v62 + 16))(v71, v81, v63);
        v52 = (*(v48 + 80) + 32) & ~*(v48 + 80);
        v53 = (v17 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
        v54 = swift_allocObject();
        *(v54 + 16) = 0;
        *(v54 + 24) = 0;
        (*(v48 + 32))(v54 + v52, v49, v51);
        v55 = (v54 + v53);
        v56 = v60;
        *v55 = v61;
        v55[1] = v56;
        v57 = (v54 + ((v53 + 23) & 0xFFFFFFFFFFFFFFF8));
        v58 = v69;
        *v57 = 0xD000000000000060;
        v57[1] = v58;
        sub_22B989328(0, 0, v47, &unk_22BA16D98, v54);

        (*(v48 + 8))(v50, v51);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22B99045C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v13 = swift_task_alloc();
  *(v8 + 24) = v13;
  *v13 = v8;
  v13[1] = sub_22B990568;

  return MEMORY[0x282173A00](0xD00000000000001ELL, 0x800000022BA1DA50, 0xD000000000000013, 0x800000022BA1D960, a5, a6, a7, a8);
}

uint64_t sub_22B990568()
{
  *(*v1 + 32) = v0;

  if (v0)
  {

    v2 = sub_22B993B28;
  }

  else
  {
    v2 = sub_22B990684;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B9906AC(void *a1, void *a2)
{
  v2 = a1[2];
  if (v2 != a2[2])
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v4 = a1[6];
  v3 = a1[7];
  v5 = a1[9];
  v7 = a2[6];
  v6 = a2[7];
  v8 = a2[9];
  v18 = a2[8];
  v19 = a1[8];
  if (a1[4] != a2[4] || a1[5] != a2[5])
  {
    v9 = a1;
    v10 = a2;
    v11 = sub_22BA10C6C();
    a2 = v10;
    v12 = v11;
    a1 = v9;
    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v13 = v2 - 1;
  v14 = a2 + 15;
  for (i = a1 + 15; ; i += 6)
  {
    if (v3)
    {
      if (!v6 || (v4 != v7 || v3 != v6) && (sub_22BA10C6C() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v6)
    {
      return 0;
    }

    if (!v5)
    {
      break;
    }

    if (!v8)
    {
      goto LABEL_33;
    }

    if (v19 == v18 && v5 == v8)
    {
      goto LABEL_24;
    }

    v16 = sub_22BA10C6C();

    if ((v16 & 1) == 0)
    {
      return 0;
    }

LABEL_26:
    if (!v13)
    {
      return 1;
    }

    v4 = *(i - 3);
    v3 = *(i - 2);
    v5 = *i;
    v7 = *(v14 - 3);
    v6 = *(v14 - 2);
    v8 = *v14;
    v18 = *(v14 - 1);
    v19 = *(i - 1);
    if ((*(i - 5) != *(v14 - 5) || *(i - 4) != *(v14 - 4)) && (sub_22BA10C6C() & 1) == 0)
    {
      return 0;
    }

    --v13;
    v14 += 6;
  }

  if (!v8)
  {

LABEL_24:

    goto LABEL_26;
  }

LABEL_33:

  return 0;
}

uint64_t sub_22B9908B0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_22B990A58(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || (v20 = *(*(a2 + 56) + 8 * v17), v21 = *(v20 + 16), v21 != *(v16 + 16)))
    {
LABEL_28:

      return 0;
    }

    if (v21)
    {
      v22 = v20 == v16;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v23 = (v20 + 40);
      v24 = (v16 + 40);
      while (v21)
      {
        result = *(v23 - 1);
        if (result != *(v24 - 1) || *v23 != *v24)
        {
          result = sub_22BA10C6C();
          if ((result & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        v23 += 2;
        v24 += 2;
        if (!--v21)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
      goto LABEL_32;
    }

LABEL_6:
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_22B990A58(uint64_t a1, uint64_t a2)
{
  sub_22BA10D3C();
  sub_22BA1008C();
  v4 = sub_22BA10D6C();

  return sub_22B990DBC(a1, a2, v4);
}

unint64_t sub_22B990AD0(uint64_t a1)
{
  v2 = sub_22BA1084C();

  return sub_22B990E74(a1, v2);
}

unint64_t sub_22B990B64(uint64_t a1)
{
  v1 = a1;
  sub_22BA10D3C();
  sub_22BA1008C();

  v2 = sub_22BA10D6C();

  return sub_22B990F3C(v1, v2);
}

unint64_t sub_22B990C6C(uint64_t a1)
{
  sub_22BA0FFFC();
  sub_22BA10D3C();
  sub_22BA1008C();
  v2 = sub_22BA10D6C();

  return sub_22B991110(a1, v2);
}

unint64_t sub_22B990D50(uint64_t a1)
{
  sub_22BA10D3C();
  MEMORY[0x23189A3B0](a1);
  v2 = sub_22BA10D6C();

  return sub_22B9912E0(a1, v2);
}

unint64_t sub_22B990DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_22BA10C6C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_22B990E74(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_22B958068(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x231899EC0](v9, a1);
      sub_22B9580C4(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_22B990F3C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v20 = ~v3;
    v21 = a1;
    while (1)
    {
      v5 = *(*(v22 + 48) + v4);
      v6 = v5 == 2 ? 0xD000000000000011 : 0x646574726F706D69;
      v7 = v5 == 2 ? 0x800000022BA1C230 : 0xE800000000000000;
      v8 = *(*(v22 + 48) + v4) ? 0x546E657474697277 : 0x6D6F724664616572;
      v9 = *(*(v22 + 48) + v4) ? 0xEF64756F6C43696FLL : 0xEE0064756F6C4369;
      v10 = *(*(v22 + 48) + v4) <= 1u ? v8 : v6;
      v11 = *(*(v22 + 48) + v4) <= 1u ? v9 : v7;
      v12 = v21 == 2 ? 0xD000000000000011 : 0x646574726F706D69;
      v13 = v21 == 2 ? 0x800000022BA1C230 : 0xE800000000000000;
      v14 = v21 ? 0x546E657474697277 : 0x6D6F724664616572;
      v15 = v21 ? 0xEF64756F6C43696FLL : 0xEE0064756F6C4369;
      v16 = v21 <= 1 ? v14 : v12;
      v17 = v21 <= 1 ? v15 : v13;
      if (v10 == v16 && v11 == v17)
      {
        break;
      }

      v18 = sub_22BA10C6C();

      if ((v18 & 1) == 0)
      {
        v4 = (v4 + 1) & v20;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_22B991110(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_22BA0FFFC();
      v8 = v7;
      if (v6 == sub_22BA0FFFC() && v8 == v9)
      {
        break;
      }

      v11 = sub_22BA10C6C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_22B991214(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_22B951A54(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_22BA1072C();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_22B9912E0(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_22B99134C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22B991444;

  return v6(a1);
}

uint64_t sub_22B991444()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_22B99153C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22B991608(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_22B936B20(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_22B936C4C(v11);
  return v7;
}

unint64_t sub_22B991608(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_22B991714(a5, a6);
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
    result = sub_22BA1098C();
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

void *sub_22B991714(uint64_t a1, unint64_t a2)
{
  v3 = sub_22B991760(a1, a2);
  sub_22B991890(&unk_283F509C0);
  return v3;
}

void *sub_22B991760(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_22B99197C(v5, 0);
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

  result = sub_22BA1098C();
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
        v10 = sub_22BA100EC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22B99197C(v10, 0);
        result = sub_22BA108CC();
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

uint64_t sub_22B991890(uint64_t result)
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

  result = sub_22B9919F0(result, v11, 1, v3);
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

void *sub_22B99197C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22B9349C8(&qword_27D8D5518, &qword_22BA16E38);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_22B9919F0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_22B9349C8(&qword_27D8D5518, &qword_22BA16E38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_22B991B04(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B991B44(uint64_t a1)
{
  result = type metadata accessor for ChatRecord(319);
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

void sub_22B991E1C(uint64_t a1)
{
  sub_22B9651AC(319, &qword_281414C40, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_22B992110(319, &qword_281415D70, &qword_27D8D5478, &unk_22BA173E0, type metadata accessor for EquatableNoop);
    if (v2 <= 0x3F)
    {
      sub_22B992110(319, qword_281415D88, &unk_27D8D4A90, &qword_22BA126A0, type metadata accessor for EquatableNoop);
      if (v3 <= 0x3F)
      {
        sub_22B9651AC(319, &qword_281414BF8, MEMORY[0x277D83B88]);
        if (v4 <= 0x3F)
        {
          sub_22B992110(319, &qword_281415D78, &qword_27D8D5480, &qword_22BA16C98, type metadata accessor for EquatableNoop);
          if (v5 <= 0x3F)
          {
            sub_22B9651AC(319, &qword_2814158B0, &type metadata for ChatParticipants);
            if (v6 <= 0x3F)
            {
              sub_22B9651AC(319, &qword_281414A10, MEMORY[0x277D84A28]);
              if (v7 <= 0x3F)
              {
                sub_22B9651AC(319, &qword_2814158D8, &type metadata for ChatAutoDonation);
                if (v8 <= 0x3F)
                {
                  sub_22B992110(319, &qword_281415D80, &qword_27D8D5488, &qword_22BA16CA0, type metadata accessor for EquatableNoop);
                  if (v9 <= 0x3F)
                  {
                    sub_22B9651AC(319, &qword_281414DB8, &type metadata for ChatProto);
                    if (v10 <= 0x3F)
                    {
                      sub_22B992110(319, &qword_281414C58, &qword_27D8D5490, &qword_22BA16CA8, MEMORY[0x277D83D88]);
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

void sub_22B992110(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_22B948760(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_22B992174(uint64_t a1)
{
  *(a1 + 8) = sub_22B9921F8(&qword_281416390, type metadata accessor for ChatRecord, &unk_22BA16CD8);
  result = sub_22B9921F8(&qword_281416398, type metadata accessor for ChatRecord, &unk_22BA16CB0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22B9921F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22B992240(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_22B992390(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_22BA108EC();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_22BA1098C() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_22B992390(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_22B992428(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_22B99249C(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_22B992428(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_22B9925C0(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_22B99249C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_22BA1098C();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

unint64_t sub_22B9925C0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_22BA1010C();
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
    v5 = MEMORY[0x231899760](15, a1 >> 16);
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

uint64_t sub_22B99263C(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_22B992730;

  return v5(v2 + 16);
}

uint64_t sub_22B992730()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_22B992860(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_22B992954;

  return v5(v2 + 32);
}

uint64_t sub_22B992954()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

BOOL sub_22B992A68(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = sub_22BA10C6C();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = a1[3];
  v10 = a2[3];
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    if (a1[2] != a2[2] || v9 != v10)
    {
      v11 = a1;
      v12 = a2;
      v13 = sub_22BA10C6C();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v15 = a1[5];
  v16 = a2[5];
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    if (a1[4] != a2[4] || v15 != v16)
    {
      v17 = a1;
      v18 = a2;
      v19 = sub_22BA10C6C();
      a2 = v18;
      v20 = v19;
      a1 = v17;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v16)
  {
    return 0;
  }

  v21 = a1[7];
  v22 = a2[7];
  if (v21)
  {
    if (!v22)
    {
      return 0;
    }

    v23 = a1;
    v24 = a2;
    if ((a1[6] != a2[6] || v21 != v22) && (sub_22BA10C6C() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v23 = a1;
    v24 = a2;
    if (v22)
    {
      return 0;
    }
  }

  v25 = type metadata accessor for ChatRecord(0);
  v26 = v25[13];
  v27 = (v23 + v26);
  v28 = *(v23 + v26 + 8);
  v29 = (v24 + v26);
  v30 = *(v24 + v26 + 8);
  if (v28)
  {
    if (!v30)
    {
      return 0;
    }
  }

  else
  {
    if (*v27 != *v29)
    {
      LOBYTE(v30) = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  v31 = v25[14];
  v32 = (v23 + v31);
  v33 = *(v23 + v31 + 8);
  v34 = (v24 + v31);
  v35 = *(v24 + v31 + 8);
  if (v33)
  {
    if (!v35)
    {
      return 0;
    }
  }

  else
  {
    if (*v32 != *v34)
    {
      LOBYTE(v35) = 1;
    }

    if (v35)
    {
      return 0;
    }
  }

  v36 = v25[16];
  v37 = (v23 + v36);
  v38 = *(v23 + v36 + 8);
  v39 = (v24 + v36);
  v40 = v39[1];
  if (v38)
  {
    if (!v40)
    {
      return 0;
    }

    if (*v37 != *v39 || v38 != v40)
    {
      v41 = v25;
      v42 = sub_22BA10C6C();
      v25 = v41;
      if ((v42 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v40)
  {
    return 0;
  }

  v43 = v25[17];
  v44 = (v23 + v43);
  v45 = *(v23 + v43 + 8);
  v46 = (v24 + v43);
  v47 = v46[1];
  if (v45)
  {
    if (!v47)
    {
      return 0;
    }

    if (*v44 != *v46 || v45 != v47)
    {
      v48 = v25;
      v49 = sub_22BA10C6C();
      v25 = v48;
      if ((v49 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v47)
  {
    return 0;
  }

  v50 = v25[18];
  v51 = (v23 + v50);
  v52 = *(v23 + v50 + 8);
  v53 = (v24 + v50);
  v54 = v53[1];
  if (v52)
  {
    if (!v54)
    {
      return 0;
    }

    if (*v51 != *v53 || v52 != v54)
    {
      v55 = v25;
      v56 = sub_22BA10C6C();
      v25 = v55;
      if ((v56 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v54)
  {
    return 0;
  }

  v57 = v25[19];
  v58 = (v23 + v57);
  v59 = *(v23 + v57 + 8);
  v60 = (v24 + v57);
  v61 = v60[1];
  if (v59)
  {
    if (!v61)
    {
      return 0;
    }

    if (*v58 != *v60 || v59 != v61)
    {
      v62 = v25;
      v63 = sub_22BA10C6C();
      v25 = v62;
      if ((v63 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v61)
  {
    return 0;
  }

  v64 = v25[20];
  v65 = *(v23 + v64);
  v66 = *(v24 + v64);
  if (v65)
  {
    if (!v66)
    {
      return 0;
    }

    v67 = v25;

    v68 = sub_22B9906AC(v65, v66);

    if ((v68 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v67 = v25;
    if (v66)
    {
      return 0;
    }
  }

  v69 = v67[21];
  v70 = (v23 + v69);
  v71 = *(v23 + v69 + 8);
  v72 = (v24 + v69);
  v73 = v72[1];
  if (v71)
  {
    if (!v73 || (*v70 != *v72 || v71 != v73) && (sub_22BA10C6C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v73)
  {
    return 0;
  }

  v74 = v67[22];
  v75 = (v23 + v74);
  v76 = *(v23 + v74 + 8);
  v77 = (v24 + v74);
  v78 = *(v24 + v74 + 8);
  if (v76)
  {
    if (!v78)
    {
      return 0;
    }
  }

  else
  {
    if (*v75 != *v77)
    {
      LOBYTE(v78) = 1;
    }

    if (v78)
    {
      return 0;
    }
  }

  v79 = v67[23];
  v80 = (v23 + v79);
  v81 = *(v23 + v79 + 8);
  v82 = (v24 + v79);
  v83 = *(v24 + v79 + 8);
  if (v81)
  {
    if (!v83)
    {
      return 0;
    }
  }

  else
  {
    if (*v80 != *v82)
    {
      LOBYTE(v83) = 1;
    }

    if (v83)
    {
      return 0;
    }
  }

  v84 = v67[24];
  v85 = (v23 + v84);
  v86 = *(v23 + v84 + 8);
  v87 = (v24 + v84);
  v88 = v87[1];
  if (v86)
  {
    if (!v88 || (*v85 != *v87 || v86 != v88) && (sub_22BA10C6C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v88)
  {
    return 0;
  }

  v89 = v67[25];
  v90 = (v23 + v89);
  v91 = *(v23 + v89 + 8);
  v92 = (v24 + v89);
  v93 = *(v24 + v89 + 8);
  if (v91)
  {
    if (!v93)
    {
      return 0;
    }
  }

  else
  {
    if (*v90 != *v92)
    {
      LOBYTE(v93) = 1;
    }

    if (v93)
    {
      return 0;
    }
  }

  v94 = v67[26];
  v95 = v23 + v94;
  v96 = *(v23 + v94 + 17);
  v97 = v24 + v94;
  v98 = v97[17];
  if (v96)
  {
    goto LABEL_109;
  }

  if ((v97[17] & 1) != 0 || *v95 != *v97)
  {
    return 0;
  }

  v98 = v97[16];
  if (v95[16])
  {
LABEL_109:
    if ((v98 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_110;
  }

  result = 0;
  if ((v97[16] & 1) == 0 && *(v95 + 1) == *(v97 + 1))
  {
LABEL_110:
    v99 = v67[27];
    v100 = (v23 + v99);
    v101 = *(v23 + v99 + 8);
    v102 = (v24 + v99);
    v103 = v102[1];
    if (v101)
    {
      if (!v103 || (*v100 != *v102 || v101 != v103) && (sub_22BA10C6C() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v103)
    {
      return 0;
    }

    v105 = v67[28];
    v106 = (v23 + v105);
    v107 = *(v23 + v105 + 8);
    v108 = (v24 + v105);
    v109 = *(v24 + v105 + 8);
    if (v107)
    {
      if (!v109)
      {
        return 0;
      }
    }

    else
    {
      if (*v106 != *v108)
      {
        LOBYTE(v109) = 1;
      }

      if (v109)
      {
        return 0;
      }
    }

    v110 = v67[31];
    v111 = *(v23 + v110);
    v112 = *(v24 + v110);
    if (v111 == 1)
    {
      if (v112 != 1)
      {
        return 0;
      }
    }

    else
    {
      if (v112 == 1)
      {
        return 0;
      }

      if (v111)
      {
        if (!v112)
        {
          return 0;
        }

        sub_22B951A54(0, &qword_27D8D5498, 0x277D1ABD0);
        sub_22B9930D0(v112);
        sub_22B9930D0(v111);
        v117 = sub_22BA1072C();
        sub_22B9930E0(v111);
        sub_22B9930E0(v112);
        if ((v117 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v112)
      {
        return 0;
      }
    }

    v113 = v67[32];
    v114 = *(v23 + v113);
    v115 = *(v24 + v113);
    if (v114)
    {
      if (!v115)
      {
        return 0;
      }

      v116 = sub_22B9908B0(v114, v115);

      return (v116 & 1) != 0;
    }

    return !v115;
  }

  return result;
}

id sub_22B9930D0(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_22B9930E0(id a1)
{
  if (a1 != 1)
  {
  }
}

unint64_t sub_22B9930F0()
{
  result = qword_2814163B0;
  if (!qword_2814163B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814163B0);
  }

  return result;
}

unint64_t sub_22B993144()
{
  result = qword_281414C60;
  if (!qword_281414C60)
  {
    sub_22B948760(&qword_27D8D54A8, &qword_22BA18970);
    sub_22B9931D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281414C60);
  }

  return result;
}

unint64_t sub_22B9931D0()
{
  result = qword_2814159E8;
  if (!qword_2814159E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814159E8);
  }

  return result;
}

uint64_t sub_22B993224(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_22BA0FEBC() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = *(v1 + v8 + 8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_22B943E68;

  return sub_22B99045C(a1, v9, v10, v1 + v6, v12, v13, v14, v15);
}

uint64_t sub_22B993378(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B945AC8;

  return sub_22B992860(a1, v4);
}

unint64_t sub_22B993430()
{
  result = qword_27D8D54F0;
  if (!qword_27D8D54F0)
  {
    sub_22B948760(&qword_27D8D5478, &unk_22BA173E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D54F0);
  }

  return result;
}

uint64_t sub_22B9934AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_22B9349C8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_22B993514()
{
  result = qword_281414DD0;
  if (!qword_281414DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281414DD0);
  }

  return result;
}

unint64_t sub_22B993568()
{
  result = qword_27D8D5500;
  if (!qword_27D8D5500)
  {
    sub_22B948760(&qword_27D8D54F8, &unk_22BA180B0);
    sub_22B968DB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5500);
  }

  return result;
}

uint64_t sub_22B9935EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B945AC8;

  return sub_22B99134C(a1, v4);
}

uint64_t sub_22B9936A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B945AC8;

  return sub_22B99263C(a1, v4);
}

uint64_t sub_22B99375C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B943E68;

  return sub_22B99263C(a1, v4);
}

uint64_t getEnumTagSinglePayload for ChatRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ChatRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22B993968()
{
  result = qword_27D8D5520;
  if (!qword_27D8D5520)
  {
    sub_22B948760(&qword_27D8D5528, qword_22BA16EA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5520);
  }

  return result;
}

unint64_t sub_22B9939D0()
{
  result = qword_27D8D5530;
  if (!qword_27D8D5530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5530);
  }

  return result;
}

unint64_t sub_22B993A28()
{
  result = qword_2814163A0;
  if (!qword_2814163A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814163A0);
  }

  return result;
}

unint64_t sub_22B993A80()
{
  result = qword_2814163A8;
  if (!qword_2814163A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814163A8);
  }

  return result;
}

unint64_t sub_22B993AD4(uint64_t a1, uint64_t a2)
{
  v2 = sub_22BA10C7C();

  if (v2 >= 0x12)
  {
    return 18;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22B993B2C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B9605E0;

  return sub_22B9943A0();
}

unint64_t sub_22B993BCC()
{
  v1 = v0 + *(type metadata accessor for MessageUpdateRecord(0) + 56);
  v2 = *(v1 + 8);
  if (v2 >> 60 == 15)
  {
    goto LABEL_9;
  }

  v3 = *v1;
  sub_22B936A50(*v1, *(v1 + 8));
  v4 = sub_22BA0FC8C();
  v5 = [v4 _FTOptionallyDecompressData];

  if (v5)
  {
    v6 = sub_22BA0FCAC();
    v8 = v7;

    v9 = sub_22BA0FC8C();
    sub_22B9359BC(v6, v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(MEMORY[0x277D1AC20]) initWithData_];

  sub_22B9359A8(v3, v2);
  if (!v10)
  {
LABEL_9:
    v18 = MEMORY[0x277D84F90];

    return sub_22B9BBA8C(v18);
  }

  else
  {
    if ([v10 hasMsgid])
    {
      v11 = [v10 msgid];
      v12 = MEMORY[0x277D84F98];
      if (v11)
      {
        v13 = v11;
        v14 = sub_22BA0FFFC();
        v16 = v15;

        v34 = MEMORY[0x277D837D0];
        *&v33 = v14;
        *(&v33 + 1) = v16;
        sub_22B936C98(&v33, v32);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_22B9BAE64(v32, 4475213, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
      }
    }

    else
    {
      v12 = MEMORY[0x277D84F98];
    }

    if ([v10 hasThreadGuid])
    {
      v20 = [v10 threadGuid];
      if (v20)
      {
        v21 = v20;
        v22 = sub_22BA0FFFC();
        v24 = v23;

        v34 = MEMORY[0x277D837D0];
        *&v33 = v22;
        *(&v33 + 1) = v24;
        sub_22B936C98(&v33, v32);
        v25 = swift_isUniquelyReferenced_nonNull_native();
        sub_22B9BAE64(v32, 1145655124, 0xE400000000000000, v25);
      }
    }

    if ([v10 hasThreadPart] && (v26 = objc_msgSend(v10, sel_threadPart)) != 0)
    {
      v27 = v26;
      v28 = sub_22BA0FFFC();
      v30 = v29;

      v34 = MEMORY[0x277D837D0];
      *&v33 = v28;
      *(&v33 + 1) = v30;
      sub_22B936C98(&v33, v32);
      v31 = swift_isUniquelyReferenced_nonNull_native();
      sub_22B9BAE64(v32, 0x747261504F54, 0xE600000000000000, v31);
    }

    else
    {
    }

    return v12;
  }
}

unint64_t sub_22B993EC8()
{
  v1 = v0 + *(type metadata accessor for MessageUpdateRecord(0) + 56);
  v2 = *(v1 + 8);
  if (v2 >> 60 == 15)
  {
    goto LABEL_9;
  }

  v3 = *v1;
  sub_22B936A50(*v1, *(v1 + 8));
  v4 = sub_22BA0FC8C();
  v5 = [v4 _FTOptionallyDecompressData];

  if (v5)
  {
    v6 = sub_22BA0FCAC();
    v8 = v7;

    v9 = sub_22BA0FC8C();
    sub_22B9359BC(v6, v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(MEMORY[0x277D1AC28]) initWithData_];

  sub_22B9359A8(v3, v2);
  if (!v10)
  {
LABEL_9:
    v18 = MEMORY[0x277D84F90];

    return sub_22B9BBA8C(v18);
  }

  else
  {
    if ([v10 hasMsgid])
    {
      v11 = [v10 msgid];
      v12 = MEMORY[0x277D84F98];
      if (v11)
      {
        v13 = v11;
        v14 = sub_22BA0FFFC();
        v16 = v15;

        v28 = MEMORY[0x277D837D0];
        *&v27 = v14;
        *(&v27 + 1) = v16;
        sub_22B936C98(&v27, v26);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_22B9BAE64(v26, 4475213, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
      }
    }

    else
    {
      v12 = MEMORY[0x277D84F98];
    }

    if ([v10 hasSr] && (v20 = objc_msgSend(v10, sel_sr)) != 0)
    {
      v21 = v20;
      v22 = sub_22BA0FFFC();
      v24 = v23;

      v28 = MEMORY[0x277D837D0];
      *&v27 = v22;
      *(&v27 + 1) = v24;
      sub_22B936C98(&v27, v26);
      v25 = swift_isUniquelyReferenced_nonNull_native();
      sub_22B9BAE64(v26, 21075, 0xE200000000000000, v25);
    }

    else
    {
    }

    return v12;
  }
}

unint64_t sub_22B994130()
{
  v1 = v0 + *(type metadata accessor for MessageUpdateRecord(0) + 56);
  v2 = *(v1 + 8);
  if (v2 >> 60 == 15)
  {
    goto LABEL_9;
  }

  v3 = *v1;
  sub_22B936A50(*v1, *(v1 + 8));
  v4 = sub_22BA0FC8C();
  v5 = [v4 _FTOptionallyDecompressData];

  if (v5)
  {
    v6 = sub_22BA0FCAC();
    v8 = v7;

    v9 = sub_22BA0FC8C();
    sub_22B9359BC(v6, v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(MEMORY[0x277D1AC30]) initWithData_];

  sub_22B9359A8(v3, v2);
  if (!v10)
  {
LABEL_9:
    v18 = MEMORY[0x277D84F90];

    return sub_22B9BBA8C(v18);
  }

  else
  {
    if ([v10 hasMsgid])
    {
      v11 = [v10 msgid];
      v12 = MEMORY[0x277D84F98];
      if (v11)
      {
        v13 = v11;
        v14 = sub_22BA0FFFC();
        v16 = v15;

        v28 = MEMORY[0x277D837D0];
        *&v27 = v14;
        *(&v27 + 1) = v16;
        sub_22B936C98(&v27, v26);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_22B9BAE64(v26, 4475213, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
      }
    }

    else
    {
      v12 = MEMORY[0x277D84F98];
    }

    if ([v10 hasChatid] && (v20 = objc_msgSend(v10, sel_chatid)) != 0)
    {
      v21 = v20;
      v22 = sub_22BA0FFFC();
      v24 = v23;

      v28 = MEMORY[0x277D837D0];
      *&v27 = v22;
      *(&v27 + 1) = v24;
      sub_22B936C98(&v27, v26);
      v25 = swift_isUniquelyReferenced_nonNull_native();
      sub_22B9BAE64(v26, 0x444954414843, 0xE600000000000000, v25);
    }

    else
    {
    }

    return v12;
  }
}

uint64_t sub_22B9943C0()
{
  v49 = v0;
  v1 = v0[16];
  v2 = (v1 + *(type metadata accessor for MessageUpdateRecord(0) + 52));
  v3 = *v2;
  v0[17] = *v2;
  v4 = v2[1];
  v0[18] = v4;
  if (v4)
  {

    v5 = sub_22BA10AAC();

    if (v5 == 2)
    {
      v24 = sub_22B994130();
      v25 = qword_28141ADC8;
      v0[33] = v24;
      v0[34] = v25;
      if (v25)
      {
        v26 = qword_28141ADD0;
        v0[35] = qword_28141ADD0;
        v0[36] = *(v26 + 272);
        v0[37] = (v26 + 272) & 0xFFFFFFFFFFFFLL | 0x2043000000000000;
        if (qword_281416450 != -1)
        {
          swift_once();
        }

        v0[38] = qword_281416458;
        sub_22BA102EC();
        v9 = sub_22BA1029C();
        v11 = v27;
        v12 = sub_22B99565C;
        goto LABEL_24;
      }
    }

    else if (v5 == 1)
    {
      v20 = sub_22B993EC8();
      v21 = qword_28141ADC8;
      v0[26] = v20;
      v0[27] = v21;
      if (v21)
      {
        v22 = qword_28141ADD0;
        v0[28] = qword_28141ADD0;
        v0[29] = *(v22 + 264);
        v0[30] = (v22 + 264) & 0xFFFFFFFFFFFFLL | 0x6AD6000000000000;
        if (qword_281416450 != -1)
        {
          swift_once();
        }

        v0[31] = qword_281416458;
        sub_22BA102EC();
        v9 = sub_22BA1029C();
        v11 = v23;
        v12 = sub_22B99506C;
        goto LABEL_24;
      }
    }

    else
    {
      if (v5)
      {
        if (qword_281414D18 != -1)
        {
          swift_once();
        }

        v37 = sub_22BA0FEFC();
        sub_22B936CA8(v37, qword_28141AD10);

        v38 = sub_22BA0FEDC();
        v39 = sub_22BA1046C();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v48[0] = v41;
          *v40 = 136315138;
          v42 = sub_22B99153C(v3, v4, v48);

          *(v40 + 4) = v42;
          _os_log_impl(&dword_22B92A000, v38, v39, "Unrecognized update type, %s. Ignoring", v40, 0xCu);
          sub_22B936C4C(v41);
          MEMORY[0x23189ADD0](v41, -1, -1);
          MEMORY[0x23189ADD0](v40, -1, -1);
        }

        else
        {
        }

        v45 = 0;
        v43 = 0;
        v44 = 23;
        goto LABEL_39;
      }

      v6 = sub_22B993BCC();
      v7 = qword_28141ADC8;
      v0[19] = v6;
      v0[20] = v7;
      if (v7)
      {
        v8 = qword_28141ADD0;
        v0[21] = qword_28141ADD0;
        v0[22] = *(v8 + 256);
        v0[23] = (v8 + 256) & 0xFFFFFFFFFFFFLL | 0xE5D2000000000000;
        if (qword_281416450 != -1)
        {
          swift_once();
        }

        v0[24] = qword_281416458;
        sub_22BA102EC();
        v9 = sub_22BA1029C();
        v11 = v10;
        v12 = sub_22B994A7C;
LABEL_24:

        return MEMORY[0x2822009F8](v12, v9, v11);
      }
    }

    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v28 = sub_22BA0FEFC();
    sub_22B936CA8(v28, qword_28141AD10);

    v29 = sub_22BA0FEDC();
    v30 = sub_22BA1044C();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v0[18];
    if (v31)
    {
      v33 = v0[17];
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v48[0] = v35;
      *v34 = 136315138;
      v36 = sub_22B99153C(v33, v32, v48);

      *(v34 + 4) = v36;
      _os_log_impl(&dword_22B92A000, v29, v30, "Unable to apply message update %s, couldn't generate record from the data", v34, 0xCu);
      sub_22B936C4C(v35);
      MEMORY[0x23189ADD0](v35, -1, -1);
      MEMORY[0x23189ADD0](v34, -1, -1);
    }

    else
    {
    }

    v43 = 1;
    v44 = 25;
    v45 = 2;
LABEL_39:
    v46 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277D19D10] code:v45 userInfo:0];
    sub_22B975FD8(v44, v46, 0, 0);

    v47 = v0[1];

    return v47(v43);
  }

  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v13 = sub_22BA0FEFC();
  sub_22B936CA8(v13, qword_28141AD10);
  v14 = sub_22BA0FEDC();
  v15 = sub_22BA1044C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_22B92A000, v14, v15, "No update type for message update record, we should not ever end up in this state", v16, 2u);
    MEMORY[0x23189ADD0](v16, -1, -1);
  }

  sub_22B995D2C();
  swift_allocError();
  *v17 = 0;
  swift_willThrow();
  v18 = v0[1];

  return v18();
}

uint64_t sub_22B994A7C()
{
  *(v0 + 200) = (*(v0 + 176))(*(v0 + 152));

  return MEMORY[0x2822009F8](sub_22B994B00, 0, 0);
}

uint64_t sub_22B994B00()
{
  v41 = v0;
  v1 = v0[25];
  v0[40] = v1;
  if (v1)
  {
    v2 = qword_28141ADC8;
    v0[41] = qword_28141ADC8;
    if (v2)
    {
      v3 = qword_28141ADD0;
      v0[42] = qword_28141ADD0;
      v0[43] = *(v3 + 280);
      v0[44] = (v3 + 280) & 0xFFFFFFFFFFFFLL | 0x462E000000000000;
      v4 = qword_281416450;
      v5 = v1;
      if (v4 != -1)
      {
        swift_once();
      }

      sub_22BA102EC();
      v7 = sub_22BA1029C();

      return MEMORY[0x2822009F8](sub_22B995C4C, v7, v6);
    }

    sub_22B952500();
    v17 = swift_allocError();
    swift_willThrow();
    v18 = qword_281414D18;
    v19 = v1;
    if (v18 != -1)
    {
      swift_once();
    }

    v20 = sub_22BA0FEFC();
    sub_22B936CA8(v20, qword_28141AD10);
    v21 = v19;
    v22 = sub_22BA0FEDC();
    v23 = sub_22BA1044C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v21;
      *v25 = v1;
      v26 = v21;
      _os_log_impl(&dword_22B92A000, v22, v23, "Error handling message update for record: %@", v24, 0xCu);
      sub_22B936BEC(v25, &qword_27D8D4CD0, qword_22BA14360);
      MEMORY[0x23189ADD0](v25, -1, -1);
      MEMORY[0x23189ADD0](v24, -1, -1);
    }

    v27 = *MEMORY[0x277D19D10];
    sub_22B9349C8(&unk_27D8D4E00, &qword_22BA13E00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22BA13CB0;
    *(inited + 32) = sub_22BA0FFFC();
    *(inited + 40) = v29;
    swift_getErrorValue();
    v30 = v0[12];
    v31 = v0[13];
    *(inited + 72) = v31;
    v32 = sub_22B957E80((inited + 48));
    (*(*(v31 - 8) + 16))(v32, v30, v31);
    v33 = v27;
    sub_22B9BBA8C(inited);
    swift_setDeallocating();
    sub_22B936BEC(inited + 32, &unk_27D8D5770, &qword_22BA135E0);
    v34 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v35 = sub_22BA0FF5C();

    v36 = [v34 initWithDomain:v33 code:1 userInfo:v35];

    sub_22B975FD8(24, v36, 0, 0);
  }

  else
  {
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v8 = sub_22BA0FEFC();
    sub_22B936CA8(v8, qword_28141AD10);

    v9 = sub_22BA0FEDC();
    v10 = sub_22BA1044C();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[18];
    if (v11)
    {
      v13 = v0[17];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v40 = v15;
      *v14 = 136315138;
      v16 = sub_22B99153C(v13, v12, &v40);

      *(v14 + 4) = v16;
      _os_log_impl(&dword_22B92A000, v9, v10, "Unable to apply message update %s, couldn't generate record from the data", v14, 0xCu);
      sub_22B936C4C(v15);
      MEMORY[0x23189ADD0](v15, -1, -1);
      MEMORY[0x23189ADD0](v14, -1, -1);
    }

    else
    {
    }

    v37 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277D19D10] code:2 userInfo:0];
    sub_22B975FD8(25, v37, 0, 0);
  }

  v38 = v0[1];

  return v38(1);
}

uint64_t sub_22B99506C()
{
  *(v0 + 256) = (*(v0 + 232))(*(v0 + 208));

  return MEMORY[0x2822009F8](sub_22B9950F0, 0, 0);
}

uint64_t sub_22B9950F0()
{
  v41 = v0;
  v1 = v0[32];
  v0[40] = v1;
  if (v1)
  {
    v2 = qword_28141ADC8;
    v0[41] = qword_28141ADC8;
    if (v2)
    {
      v3 = qword_28141ADD0;
      v0[42] = qword_28141ADD0;
      v0[43] = *(v3 + 280);
      v0[44] = (v3 + 280) & 0xFFFFFFFFFFFFLL | 0x462E000000000000;
      v4 = qword_281416450;
      v5 = v1;
      if (v4 != -1)
      {
        swift_once();
      }

      sub_22BA102EC();
      v7 = sub_22BA1029C();

      return MEMORY[0x2822009F8](sub_22B995C4C, v7, v6);
    }

    sub_22B952500();
    v17 = swift_allocError();
    swift_willThrow();
    v18 = qword_281414D18;
    v19 = v1;
    if (v18 != -1)
    {
      swift_once();
    }

    v20 = sub_22BA0FEFC();
    sub_22B936CA8(v20, qword_28141AD10);
    v21 = v19;
    v22 = sub_22BA0FEDC();
    v23 = sub_22BA1044C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v21;
      *v25 = v1;
      v26 = v21;
      _os_log_impl(&dword_22B92A000, v22, v23, "Error handling message update for record: %@", v24, 0xCu);
      sub_22B936BEC(v25, &qword_27D8D4CD0, qword_22BA14360);
      MEMORY[0x23189ADD0](v25, -1, -1);
      MEMORY[0x23189ADD0](v24, -1, -1);
    }

    v27 = *MEMORY[0x277D19D10];
    sub_22B9349C8(&unk_27D8D4E00, &qword_22BA13E00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22BA13CB0;
    *(inited + 32) = sub_22BA0FFFC();
    *(inited + 40) = v29;
    swift_getErrorValue();
    v30 = v0[12];
    v31 = v0[13];
    *(inited + 72) = v31;
    v32 = sub_22B957E80((inited + 48));
    (*(*(v31 - 8) + 16))(v32, v30, v31);
    v33 = v27;
    sub_22B9BBA8C(inited);
    swift_setDeallocating();
    sub_22B936BEC(inited + 32, &unk_27D8D5770, &qword_22BA135E0);
    v34 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v35 = sub_22BA0FF5C();

    v36 = [v34 initWithDomain:v33 code:1 userInfo:v35];

    sub_22B975FD8(24, v36, 0, 0);
  }

  else
  {
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v8 = sub_22BA0FEFC();
    sub_22B936CA8(v8, qword_28141AD10);

    v9 = sub_22BA0FEDC();
    v10 = sub_22BA1044C();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[18];
    if (v11)
    {
      v13 = v0[17];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v40 = v15;
      *v14 = 136315138;
      v16 = sub_22B99153C(v13, v12, &v40);

      *(v14 + 4) = v16;
      _os_log_impl(&dword_22B92A000, v9, v10, "Unable to apply message update %s, couldn't generate record from the data", v14, 0xCu);
      sub_22B936C4C(v15);
      MEMORY[0x23189ADD0](v15, -1, -1);
      MEMORY[0x23189ADD0](v14, -1, -1);
    }

    else
    {
    }

    v37 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277D19D10] code:2 userInfo:0];
    sub_22B975FD8(25, v37, 0, 0);
  }

  v38 = v0[1];

  return v38(1);
}

uint64_t sub_22B99565C()
{
  *(v0 + 312) = (*(v0 + 288))(*(v0 + 264));

  return MEMORY[0x2822009F8](sub_22B9956E0, 0, 0);
}

uint64_t sub_22B9956E0()
{
  v41 = v0;
  v1 = v0[39];
  v0[40] = v1;
  if (v1)
  {
    v2 = qword_28141ADC8;
    v0[41] = qword_28141ADC8;
    if (v2)
    {
      v3 = qword_28141ADD0;
      v0[42] = qword_28141ADD0;
      v0[43] = *(v3 + 280);
      v0[44] = (v3 + 280) & 0xFFFFFFFFFFFFLL | 0x462E000000000000;
      v4 = qword_281416450;
      v5 = v1;
      if (v4 != -1)
      {
        swift_once();
      }

      sub_22BA102EC();
      v7 = sub_22BA1029C();

      return MEMORY[0x2822009F8](sub_22B995C4C, v7, v6);
    }

    sub_22B952500();
    v17 = swift_allocError();
    swift_willThrow();
    v18 = qword_281414D18;
    v19 = v1;
    if (v18 != -1)
    {
      swift_once();
    }

    v20 = sub_22BA0FEFC();
    sub_22B936CA8(v20, qword_28141AD10);
    v21 = v19;
    v22 = sub_22BA0FEDC();
    v23 = sub_22BA1044C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v21;
      *v25 = v1;
      v26 = v21;
      _os_log_impl(&dword_22B92A000, v22, v23, "Error handling message update for record: %@", v24, 0xCu);
      sub_22B936BEC(v25, &qword_27D8D4CD0, qword_22BA14360);
      MEMORY[0x23189ADD0](v25, -1, -1);
      MEMORY[0x23189ADD0](v24, -1, -1);
    }

    v27 = *MEMORY[0x277D19D10];
    sub_22B9349C8(&unk_27D8D4E00, &qword_22BA13E00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22BA13CB0;
    *(inited + 32) = sub_22BA0FFFC();
    *(inited + 40) = v29;
    swift_getErrorValue();
    v30 = v0[12];
    v31 = v0[13];
    *(inited + 72) = v31;
    v32 = sub_22B957E80((inited + 48));
    (*(*(v31 - 8) + 16))(v32, v30, v31);
    v33 = v27;
    sub_22B9BBA8C(inited);
    swift_setDeallocating();
    sub_22B936BEC(inited + 32, &unk_27D8D5770, &qword_22BA135E0);
    v34 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v35 = sub_22BA0FF5C();

    v36 = [v34 initWithDomain:v33 code:1 userInfo:v35];

    sub_22B975FD8(24, v36, 0, 0);
  }

  else
  {
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v8 = sub_22BA0FEFC();
    sub_22B936CA8(v8, qword_28141AD10);

    v9 = sub_22BA0FEDC();
    v10 = sub_22BA1044C();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[18];
    if (v11)
    {
      v13 = v0[17];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v40 = v15;
      *v14 = 136315138;
      v16 = sub_22B99153C(v13, v12, &v40);

      *(v14 + 4) = v16;
      _os_log_impl(&dword_22B92A000, v9, v10, "Unable to apply message update %s, couldn't generate record from the data", v14, 0xCu);
      sub_22B936C4C(v15);
      MEMORY[0x23189ADD0](v15, -1, -1);
      MEMORY[0x23189ADD0](v14, -1, -1);
    }

    else
    {
    }

    v37 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277D19D10] code:2 userInfo:0];
    sub_22B975FD8(25, v37, 0, 0);
  }

  v38 = v0[1];

  return v38(1);
}

uint64_t sub_22B995C4C()
{
  (*(v0 + 344))(*(v0 + 320));

  return MEMORY[0x2822009F8](sub_22B995CC0, 0, 0);
}

uint64_t sub_22B995CC0()
{
  v1 = *(v0 + 320);

  v2 = *(v0 + 8);

  return v2(1);
}

unint64_t sub_22B995D2C()
{
  result = qword_27D8D5538;
  if (!qword_27D8D5538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5538);
  }

  return result;
}

unint64_t sub_22B995D94()
{
  result = qword_27D8D5540;
  if (!qword_27D8D5540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5540);
  }

  return result;
}

uint64_t sub_22B995DF4(uint64_t *a1, unsigned int a2)
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

uint64_t sub_22B995E50(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22B995EB0(void *a1, void *a2)
{
  v4 = sub_22B9349C8(&qword_27D8D54D8, &qword_22BA16DC0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  sub_22B9358B4(a1, a1[3]);
  sub_22B993514();
  sub_22BA10D9C();
  if (a2)
  {
    v8 = a2;
    v9 = [v8 data];
    if (v9)
    {
      v10 = v9;
      v11 = sub_22BA0FCAC();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0xF000000000000000;
    }

    v15 = v11;
    v16 = v13;
    sub_22B9349C8(&qword_27D8D54F8, &unk_22BA180B0);
    sub_22B993568();
    sub_22BA10BEC();

    sub_22B9359A8(v15, v16);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_22B99605C()
{
  sub_22BA10D3C();
  sub_22BA1008C();
  return sub_22BA10D6C();
}

uint64_t sub_22B9960C8(uint64_t a1)
{
  sub_22BA10D3C();
  sub_22BA1008C();
  return sub_22BA10D6C();
}

uint64_t sub_22B996130@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_22BA10AAC();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_22B996188@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_22BA10AAC();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_22B9961F8(uint64_t a1)
{
  v2 = sub_22B993514();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B996234(uint64_t a1)
{
  v2 = sub_22B993514();

  return MEMORY[0x2821FE720](a1, v2);
}

id sub_22B996270@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22B996330(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_22B9962B8(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      sub_22B996594();
      v4 = v3;
      v5 = v2;
      v6 = sub_22BA1072C();

      if (v6)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

id sub_22B996330(void *a1)
{
  v3 = sub_22B9349C8(&qword_27D8D5548, &qword_22BA17148);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v7 = a1[4];
  sub_22B9358B4(a1, a1[3]);
  sub_22B993514();
  sub_22BA10D8C();
  if (!v1)
  {
    sub_22B9363C8();
    sub_22BA10AFC();
    v9 = v20;
    if (v20 >> 60 == 15)
    {
      (*(v4 + 8))(v6, v3);
      v7 = 0;
    }

    else
    {
      v10 = v19;
      v11 = sub_22BA0FC8C();
      v12 = [v11 _FTOptionallyDecompressData];

      if (v12)
      {
        v13 = sub_22BA0FCAC();
        v21 = v10;
        v15 = v14;

        v16 = v13;
        v17 = sub_22BA0FC8C();
        v18 = v15;
        v10 = v21;
        sub_22B9359BC(v16, v18);
      }

      else
      {
        v17 = 0;
      }

      v7 = [objc_allocWithZone(MEMORY[0x277D1ABD0]) initWithData_];

      sub_22B9359A8(v10, v9);
      (*(v4 + 8))(v6, v3);
    }
  }

  sub_22B936C4C(a1);
  return v7;
}

unint64_t sub_22B996594()
{
  result = qword_27D8D5498;
  if (!qword_27D8D5498)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D8D5498);
  }

  return result;
}

unint64_t sub_22B9965F4()
{
  result = qword_27D8D5550;
  if (!qword_27D8D5550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5550);
  }

  return result;
}

unint64_t sub_22B99664C()
{
  result = qword_281414DC0;
  if (!qword_281414DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281414DC0);
  }

  return result;
}

unint64_t sub_22B9966A4()
{
  result = qword_281414DC8;
  if (!qword_281414DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281414DC8);
  }

  return result;
}

uint64_t sub_22B9966F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22B996740(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}