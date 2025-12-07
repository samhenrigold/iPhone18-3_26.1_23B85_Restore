void sub_22B9967AC(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 isInternalInstall];

    if (v4)
    {
      v5 = (a1 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState);
      v6 = *(*sub_22B9358B4(v5, v5[3]) + 24);
      v7 = sub_22BA0FFCC();
      v8 = [v6 objectForKey_];

      if (!v8)
      {
        v30 = 0u;
        v31 = 0u;
        sub_22B936BEC(&v30, &unk_27D8D5A30, qword_22BA13390);
        return;
      }

      sub_22BA107AC();
      swift_unknownObjectRelease();
      sub_22B936BEC(&v30, &unk_27D8D5A30, qword_22BA13390);
      v9 = sub_22BA0FFFC();
      v11 = v10;
      v12 = *(*sub_22B9358B4(v5, v5[3]) + 24);
      v13 = sub_22BA0FFCC();
      v14 = [v12 objectForKey_];

      if (v14)
      {
        sub_22BA107AC();
        swift_unknownObjectRelease();
      }

      else
      {
        v28 = 0u;
        v29 = 0u;
      }

      v30 = v28;
      v31 = v29;
      if (*(&v29 + 1))
      {
        if (swift_dynamicCast())
        {

          v9 = v26;
          v11 = v27;
        }
      }

      else
      {
        sub_22B936BEC(&v30, &unk_27D8D5A30, qword_22BA13390);
      }

      v15 = *(*sub_22B9358B4(v5, v5[3]) + 24);
      v16 = sub_22BA0FFCC();
      v17 = [v15 objectForKey_];

      if (v17)
      {
        sub_22BA107AC();
        swift_unknownObjectRelease();
      }

      else
      {
        v28 = 0u;
        v29 = 0u;
      }

      v30 = v28;
      v31 = v29;
      if (*(&v29 + 1))
      {
        sub_22B951A54(0, &qword_281414A20, 0x277CCABB0);
        if (swift_dynamicCast())
        {
          v18 = [v26 integerValue];

LABEL_20:
          sub_22B9349C8(&unk_27D8D4E00, &qword_22BA13E00);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_22BA13CB0;
          *(inited + 32) = sub_22BA0FFFC();
          *(inited + 40) = v20;
          *&v30 = 0;
          *(&v30 + 1) = 0xE000000000000000;
          sub_22BA108FC();
          MEMORY[0x231899730](0xD00000000000001ALL, 0x800000022BA1DBA0);
          v21 = sub_22BA10C1C();
          MEMORY[0x231899730](v21);

          MEMORY[0x231899730](8250, 0xE200000000000000);
          MEMORY[0x231899730](v9, v11);
          MEMORY[0x231899730](0xD000000000000025, 0x800000022BA1DBC0);
          v22 = v30;
          *(inited + 72) = MEMORY[0x277D837D0];
          *(inited + 48) = v22;
          sub_22B9BBA8C(inited);
          swift_setDeallocating();
          sub_22B936BEC(inited + 32, &unk_27D8D5770, &qword_22BA135E0);
          v23 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
          v24 = sub_22BA0FFCC();

          v25 = sub_22BA0FF5C();

          [v23 initWithDomain:v24 code:v18 userInfo:v25];

          swift_willThrow();
          return;
        }
      }

      else
      {
        sub_22B936BEC(&v30, &unk_27D8D5A30, qword_22BA13390);
      }

      v18 = 1;
      goto LABEL_20;
    }
  }
}

uint64_t sub_22B996CB0(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_22B996CD4, 0, 0);
}

uint64_t sub_22B996CD4()
{
  v1 = v0[7];
  if (*(v1 + 99) == 1)
  {
    v2 = sub_22B9358B4((v1 + 8), *(v1 + 32));
    sub_22B9ECD04(*(v2 + 16));
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_22B996E60;
    v5 = v0[5];
    v4 = v0[6];

    return sub_22B9E81AC(v5, v4, 0, 0, 1, "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/MessagesCloudSync/SyncSteps/RecordZoneReader.swift", 108, 2);
  }

  else if (*(v1 + 98) == 1)
  {
    v7 = *(v0[5] + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
    v0[9] = v7;

    return MEMORY[0x2822009F8](sub_22B996FB0, v7, 0);
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_22B996E60()
{

  return MEMORY[0x2822009F8](sub_22B996F5C, 0, 0);
}

uint64_t sub_22B996F5C()
{
  if (*(*(v0 + 56) + 98) != 1)
  {
    return (*(v0 + 8))();
  }

  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
  *(v0 + 72) = v1;
  return MEMORY[0x2822009F8](sub_22B996FB0, v1, 0);
}

uint64_t sub_22B996FB0()
{
  v1 = *(v0 + 72);
  swift_beginAccess();
  *(v0 + 80) = *(v1 + 120);
  *(v0 + 88) = *(v1 + 128);
  *(v0 + 96) = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_22B997040, 0, 0);
}

uint64_t sub_22B997040()
{
  if (qword_281414D28 != -1)
  {
    swift_once();
  }

  v1 = sub_22BA0FEFC();
  sub_22B936CA8(v1, qword_28141AD28);
  v2 = sub_22BA0FEDC();
  v3 = sub_22BA1046C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 88);
    v5 = *(v0 + 80);
    v6 = swift_slowAlloc();
    v7 = v6;
    *v6 = 134217984;
    if (v4 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v4;
    }

    *(v6 + 4) = fmin(v5 / v8, 1.0);
    _os_log_impl(&dword_22B92A000, v2, v3, "Download Progress: %f", v6, 0xCu);
    MEMORY[0x23189ADD0](v7, -1, -1);
  }

  v9 = *(v0 + 40);

  v10 = (v9 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState);
  v11 = sub_22B9358B4((v9 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(v9 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
  v12 = *(*v11 + 56);
  v13 = *(v0 + 96);
  v15 = *(v0 + 80);
  v14 = *(v0 + 88);
  if (v12)
  {
    [*(*v11 + 56) startChanges];

    sub_22B99C0A0(v16, v15, v14, v13);

    [v12 commitChanges];
  }

  else
  {

    sub_22B99C0A0(v17, v15, v14, v13);
  }

  sub_22B9358B4(v10, v10[3]);
  v18 = sub_22BA09CBC();
  if (v18)
  {
    [v18 sendBroadcastToClient];
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_22B997250(uint64_t a1, uint64_t a2)
{
  v3[129] = v2;
  v3[128] = a2;
  v3[127] = a1;
  v4 = sub_22B9349C8(&qword_27D8D5558, &qword_22BA173B0);
  v3[130] = v4;
  v3[131] = *(v4 - 8);
  v3[132] = swift_task_alloc();
  v3[133] = swift_task_alloc();
  v5 = sub_22B9349C8(&qword_27D8D5560, &qword_22BA173B8);
  v3[134] = v5;
  v3[135] = *(v5 - 8);
  v3[136] = swift_task_alloc();
  v6 = sub_22B9349C8(&qword_27D8D5568, &qword_22BA173C0);
  v3[137] = v6;
  v3[138] = *(v6 - 8);
  v3[139] = swift_task_alloc();
  v3[140] = swift_task_alloc();
  v3[141] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B997418, 0, 0);
}

uint64_t sub_22B997418()
{
  v77 = v0;
  v1 = sub_22B9358B4((*(v0 + 1032) + 8), *(*(v0 + 1032) + 32));
  v2 = *v1;
  *(v0 + 1136) = *v1;
  v3 = v1[1];
  *(v0 + 1144) = v3;
  v4 = qword_281414D30;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = (v0 + 978);
  v6 = sub_22BA0FEFC();
  *(v0 + 1152) = v6;
  *(v0 + 1160) = sub_22B936CA8(v6, qword_28141AD40);

  swift_unknownObjectRetain();
  v7 = sub_22BA0FEDC();
  v8 = sub_22BA1046C();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v76 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_22B99153C(v2, v3, &v76);
    *(v9 + 12) = 2080;
    sub_22BA0FDCC();
    sub_22B944034();
    v11 = sub_22BA10C1C();
    v13 = sub_22B99153C(v11, v12, &v76);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_22B92A000, v7, v8, "Starting read from %s (%s)", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v10, -1, -1);
    MEMORY[0x23189ADD0](v9, -1, -1);
  }

  v14 = *(v0 + 1032);
  *(v0 + 992) = 0;
  *(v0 + 984) = 0;
  v15 = *(v14 + 88);
  *(v0 + 1168) = v15;
  v16 = *(v14 + 96);
  *v5 = v16;
  if ((v16 & 1) != 0 || v15 >= 1)
  {
    *(v0 + 980) = *MEMORY[0x277D858A0];
    *(v0 + 1176) = 0;
    v31 = sub_22BA0FEDC();
    v32 = sub_22BA1046C();
    if (os_log_type_enabled(v31, v32))
    {
      if (*v5)
      {
        v33 = 1;
      }

      else
      {
        v33 = *(v0 + 1168);
      }

      v34 = swift_slowAlloc();
      *v34 = 134218240;
      *(v34 + 4) = 0;
      *(v34 + 12) = 2048;
      *(v34 + 14) = v33;
      _os_log_impl(&dword_22B92A000, v31, v32, "Current Batch %lld, Max Batch %ld", v34, 0x16u);
      MEMORY[0x23189ADD0](v34, -1, -1);
    }

    v68 = *(v0 + 980);
    v69 = *(v0 + 1128);
    v70 = *(v0 + 1120);
    v35 = *(v0 + 1104);
    v36 = *(v0 + 1096);
    v37 = *(v0 + 1080);
    v66 = *(v0 + 1088);
    v67 = *(v0 + 1072);
    v71 = *(v0 + 1112);
    v72 = *(v0 + 1064);
    v73 = *(v0 + 1048);
    v74 = *(v0 + 1040);
    v75 = *(v0 + 1056);
    v38 = *(v0 + 1032);
    v39 = *(v0 + 1024);
    v40 = *(v0 + 1016);

    v41 = sub_22B9358B4((v38 + 8), *(v38 + 32));
    v43 = *(v41 + 1);
    v42 = *(v41 + 2);
    *(v0 + 376) = *v41;
    *(v0 + 392) = v43;
    *(v0 + 408) = v42;
    v45 = *(v41 + 4);
    v44 = *(v41 + 5);
    v46 = *(v41 + 3);
    *(v0 + 472) = v41[12];
    *(v0 + 440) = v45;
    *(v0 + 456) = v44;
    *(v0 + 424) = v46;
    v47 = sub_22B99BC6C(v40, v39);
    *(v0 + 1248) = v47;
    v48 = sub_22B9358B4((v38 + 8), *(v38 + 32));
    v49 = *v48;
    v50 = *(v48 + 2);
    *(v0 + 496) = *(v48 + 1);
    *(v0 + 512) = v50;
    *(v0 + 480) = v49;
    v51 = *(v48 + 3);
    v52 = *(v48 + 4);
    v53 = *(v48 + 5);
    *(v0 + 576) = v48[12];
    *(v0 + 544) = v52;
    *(v0 + 560) = v53;
    *(v0 + 528) = v51;
    *(v0 + 712) = &type metadata for SyncZoneInfo;
    *(v0 + 720) = &off_283F57268;
    v54 = swift_allocObject();
    *(v0 + 688) = v54;
    memmove((v54 + 16), v48, 0x68uLL);
    *(v0 + 977) = 0;
    v55 = swift_task_alloc();
    v55[2] = v47;
    v55[3] = v40;
    v55[4] = v39;
    v55[5] = v0 + 977;
    v55[6] = v0 + 688;
    (*(v37 + 104))(v66, v68, v67);
    sub_22B951748(v0 + 480, v0 + 584);
    sub_22BA1035C();

    (*(v35 + 32))(v70, v69, v36);
    sub_22B936C4C((v0 + 688));
    (*(v35 + 16))(v71, v70, v36);
    sub_22B95194C(&qword_281414C08, &qword_27D8D5568, &qword_22BA173C0, MEMORY[0x277D858E0]);
    sub_22BA1032C();
    (*(v73 + 32))(v75, v72, v74);
    (*(v35 + 8))(v70, v36);
    *(v0 + 1322) = 0;
    v56 = sub_22B9982D8;
    v57 = 0;
    v58 = 0;

    return MEMORY[0x2822009F8](v56, v57, v58);
  }

  *(v0 + 979) = 0;

  *(v0 + 1320) = *(v14 + 97);
  sub_22B99C1AC(v14, v0 + 16);
  sub_22B99C1AC(v14, v0 + 136);
  v17 = sub_22BA0FEDC();
  v18 = sub_22BA1046C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v76 = v20;
    *v19 = 136315906;
    v21 = sub_22B9358B4((v0 + 24), *(v0 + 48));
    v22 = sub_22BA082E0(*(v21 + 16));
    v24 = v23;
    sub_22B99C1E4(v0 + 16);
    v25 = sub_22B99153C(v22, v24, &v76);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2048;
    swift_beginAccess();
    *(v19 + 14) = *(v0 + 984);
    *(v19 + 22) = 2080;
    v26 = sub_22B9358B4((v0 + 144), *(v0 + 168));
    v27 = sub_22BA082E0(*(v26 + 16));
    v29 = v28;
    sub_22B99C1E4(v0 + 136);
    v30 = sub_22B99153C(v27, v29, &v76);

    *(v19 + 24) = v30;
    *(v19 + 32) = 2048;
    swift_beginAccess();
    *(v19 + 34) = *(v0 + 992);
    _os_log_impl(&dword_22B92A000, v17, v18, "%s: %lld %s records saved, %lld failures", v19, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v20, -1, -1);
    MEMORY[0x23189ADD0](v19, -1, -1);
  }

  else
  {

    sub_22B99C1E4(v0 + 136);
    sub_22B99C1E4(v0 + 16);
  }

  swift_beginAccess();
  v59 = *(v0 + 984);
  *(v0 + 1184) = v59;
  v56 = swift_beginAccess();
  v60 = *(v0 + 992);
  *(v0 + 1192) = v60;
  v61 = v59 + v60;
  *(v0 + 1200) = v59 + v60;
  if (__OFADD__(v59, v60))
  {
    __break(1u);
    return MEMORY[0x2822009F8](v56, v57, v58);
  }

  v62 = swift_task_alloc();
  *(v0 + 1208) = v62;
  *v62 = v0;
  v62[1] = sub_22B997C48;
  v63 = *(v0 + 1024);
  v64 = *(v0 + 1016);

  return sub_22B999C88(v64, v63, v61, 0);
}

uint64_t sub_22B997C48()
{
  *(*v1 + 1216) = v0;

  if (v0)
  {
    v2 = sub_22B997F40;
  }

  else
  {
    v2 = sub_22B997D5C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B997D5C()
{
  v1 = *(v0 + 1032);
  v2 = *(*(v0 + 1016) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
  *(v0 + 1224) = v2;
  v3 = sub_22B9358B4((v1 + 8), *(v1 + 32));
  *(v0 + 1321) = sub_22BA08430(*(v3 + 16));

  return MEMORY[0x2822009F8](sub_22B997DF0, v2, 0);
}

uint64_t sub_22B997DF0()
{
  v1 = *(v0 + 1321);
  swift_beginAccess();
  v2 = sub_22B964498(v1);
  swift_endAccess();
  if (*(v2 + 16))
  {
    v3 = sub_22B990B64(0);
    if (v4)
    {
      v6 = *(v0 + 1184);
      v7 = (*(v2 + 56) + 16 * v3);
      v8 = *v7 + v6;
      if (__OFADD__(*v7, v6))
      {
        __break(1u);
      }

      else
      {
        v9 = *(v0 + 1192);
        v10 = v7[1];
        v11 = v10 + v9;
        if (!__OFADD__(v10, v9))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v13 = v8;
          v14 = v11;
          goto LABEL_7;
        }
      }

      __break(1u);
      return MEMORY[0x2822009F8](v3, v4, v5);
    }
  }

  v15 = *(v0 + 1192);
  v16 = *(v0 + 1184);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = v16;
  v14 = v15;
LABEL_7:
  sub_22B9BB0F8(v13, v14, 0, isUniquelyReferenced_nonNull_native);
  v17 = *(v0 + 1224);
  v18 = *(v0 + 1321);

  sub_22B9645F8(v19, v18);

  v3 = sub_22B997FF0;
  v4 = v17;
  v5 = 0;

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22B997F40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B997FF0()
{
  v1 = v0[153];
  v0[154] = *(v1 + 120);
  v0[155] = *(v1 + 128);
  return MEMORY[0x2822009F8](sub_22B998020, 0, 0);
}

uint64_t sub_22B998020()
{
  if (qword_281414D28 != -1)
  {
    swift_once();
  }

  sub_22B936CA8(v0[144], qword_28141AD28);
  v1 = sub_22BA0FEDC();
  v2 = sub_22BA1046C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[155];
    v4 = v0[154];
    v5 = swift_slowAlloc();
    v6 = v5;
    *v5 = 134217984;
    if (v3 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v3;
    }

    *(v5 + 4) = fmin(v4 / v7, 1.0);
    _os_log_impl(&dword_22B92A000, v1, v2, "Download Progress: %f", v5, 0xCu);
    MEMORY[0x23189ADD0](v6, -1, -1);
  }

  v8 = v0[127];

  v9 = *sub_22B9358B4((v8 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_countStore), *(v8 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_countStore + 24));

  return MEMORY[0x2822009F8](sub_22B99818C, v9, 0);
}

uint64_t sub_22B99818C()
{
  sub_22B9E45D8(*(v0 + 1232), *(v0 + 1240), 0);

  return MEMORY[0x2822009F8](sub_22B9981FC, 0, 0);
}

uint64_t sub_22B9981FC()
{
  v1 = *(v0 + 1320) & ~*(v0 + 978) | *(v0 + 979);
  v2 = *(v0 + 1200);

  v3 = *(v0 + 8);

  return v3(v2, (v1 & 1) == 0);
}

uint64_t sub_22B9982D8()
{
  swift_beginAccess();
  v1 = sub_22B95194C(&qword_281414C18, &qword_27D8D5558, &qword_22BA173B0, MEMORY[0x277D858D0]);
  v2 = swift_task_alloc();
  *(v0 + 1256) = v2;
  *v2 = v0;
  v2[1] = sub_22B9983C4;
  v3 = *(v0 + 1040);

  return MEMORY[0x282200308](v0 + 960, v3, v1);
}

uint64_t sub_22B9983C4()
{
  v2 = *v1;
  *(*v1 + 1264) = v0;

  if (v0)
  {
    v3 = sub_22B998E30;
  }

  else
  {
    swift_endAccess();
    *(v2 + 1272) = *(v2 + 960);
    *(v2 + 1323) = *(v2 + 976);
    v3 = sub_22B9984F4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B9984F4()
{
  v96 = v0;
  v1 = *(v0 + 1323);
  if (v1 > 0xFD)
  {
    v2 = *(v0 + 1248);
    v3 = *(v0 + 1176);
    if (*(v0 + 978))
    {
      v4 = 1;
    }

    else
    {
      v4 = *(v0 + 1168);
    }

    (*(*(v0 + 1048) + 8))(*(v0 + 1056), *(v0 + 1040));

    v5 = v3 + 1;
    v6 = *(v0 + 1322);
    if (v3 + 1 == v4)
    {
      goto LABEL_8;
    }

    *(v0 + 1176) = v5;
    if (v6)
    {
      v6 = 1;
LABEL_8:
      *(v0 + 979) = v6;
      v7 = *(v0 + 1032);

      *(v0 + 1320) = *(v7 + 97);
      sub_22B99C1AC(v7, v0 + 16);
      sub_22B99C1AC(v7, v0 + 136);
      v8 = sub_22BA0FEDC();
      v9 = sub_22BA1046C();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v95 = v11;
        *v10 = 136315906;
        v12 = sub_22B9358B4((v0 + 24), *(v0 + 48));
        v13 = sub_22BA082E0(*(v12 + 16));
        v15 = v14;
        sub_22B99C1E4(v0 + 16);
        v16 = sub_22B99153C(v13, v15, &v95);

        *(v10 + 4) = v16;
        *(v10 + 12) = 2048;
        swift_beginAccess();
        *(v10 + 14) = *(v0 + 984);
        *(v10 + 22) = 2080;
        v17 = sub_22B9358B4((v0 + 144), *(v0 + 168));
        v18 = sub_22BA082E0(*(v17 + 16));
        v20 = v19;
        sub_22B99C1E4(v0 + 136);
        v21 = sub_22B99153C(v18, v20, &v95);

        *(v10 + 24) = v21;
        *(v10 + 32) = 2048;
        swift_beginAccess();
        *(v10 + 34) = *(v0 + 992);
        _os_log_impl(&dword_22B92A000, v8, v9, "%s: %lld %s records saved, %lld failures", v10, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x23189ADD0](v11, -1, -1);
        MEMORY[0x23189ADD0](v10, -1, -1);
      }

      else
      {

        sub_22B99C1E4(v0 + 136);
        sub_22B99C1E4(v0 + 16);
      }

      swift_beginAccess();
      v23 = *(v0 + 984);
      *(v0 + 1184) = v23;
      v24 = swift_beginAccess();
      v27 = *(v0 + 992);
      *(v0 + 1192) = v27;
      v28 = v23 + v27;
      *(v0 + 1200) = v23 + v27;
      if (!__OFADD__(v23, v27))
      {
        v29 = swift_task_alloc();
        *(v0 + 1208) = v29;
        *v29 = v0;
        v29[1] = sub_22B997C48;
        v30 = *(v0 + 1024);
        v31 = *(v0 + 1016);

        return sub_22B999C88(v31, v30, v28, 0);
      }

      __break(1u);
      return MEMORY[0x2822009F8](v24, v25, v26);
    }

    v94 = (v0 + 688);
    v51 = sub_22BA0FEDC();
    v52 = sub_22BA1046C();
    if (os_log_type_enabled(v51, v52))
    {
      if (*(v0 + 978))
      {
        v53 = 1;
      }

      else
      {
        v53 = *(v0 + 1168);
      }

      v54 = swift_slowAlloc();
      *v54 = 134218240;
      *(v54 + 4) = v5;
      *(v54 + 12) = 2048;
      *(v54 + 14) = v53;
      _os_log_impl(&dword_22B92A000, v51, v52, "Current Batch %lld, Max Batch %ld", v54, 0x16u);
      MEMORY[0x23189ADD0](v54, -1, -1);
    }

    v86 = *(v0 + 980);
    v87 = *(v0 + 1128);
    v88 = *(v0 + 1120);
    v55 = *(v0 + 1104);
    v56 = *(v0 + 1096);
    v57 = *(v0 + 1080);
    v84 = *(v0 + 1088);
    v85 = *(v0 + 1072);
    v89 = *(v0 + 1112);
    v90 = *(v0 + 1064);
    v91 = *(v0 + 1048);
    v92 = *(v0 + 1040);
    v93 = *(v0 + 1056);
    v58 = *(v0 + 1032);
    v59 = *(v0 + 1024);
    v60 = *(v0 + 1016);

    v61 = sub_22B9358B4((v58 + 8), *(v58 + 32));
    v63 = *(v61 + 1);
    v62 = *(v61 + 2);
    *(v0 + 376) = *v61;
    *(v0 + 392) = v63;
    *(v0 + 408) = v62;
    v65 = *(v61 + 4);
    v64 = *(v61 + 5);
    v66 = *(v61 + 3);
    *(v0 + 472) = v61[12];
    *(v0 + 440) = v65;
    *(v0 + 456) = v64;
    *(v0 + 424) = v66;
    v67 = sub_22B99BC6C(v60, v59);
    *(v0 + 1248) = v67;
    v68 = sub_22B9358B4((v58 + 8), *(v58 + 32));
    v69 = *v68;
    v70 = *(v68 + 2);
    *(v0 + 496) = *(v68 + 1);
    *(v0 + 512) = v70;
    *(v0 + 480) = v69;
    v71 = *(v68 + 3);
    v72 = *(v68 + 4);
    v73 = *(v68 + 5);
    *(v0 + 576) = v68[12];
    *(v0 + 544) = v72;
    *(v0 + 560) = v73;
    *(v0 + 528) = v71;
    *(v0 + 712) = &type metadata for SyncZoneInfo;
    *(v0 + 720) = &off_283F57268;
    v74 = swift_allocObject();
    *(v0 + 688) = v74;
    memmove((v74 + 16), v68, 0x68uLL);
    *(v0 + 977) = 0;
    v75 = swift_task_alloc();
    v75[2] = v67;
    v75[3] = v60;
    v75[4] = v59;
    v75[5] = v0 + 977;
    v75[6] = v94;
    (*(v57 + 104))(v84, v86, v85);
    sub_22B951748(v0 + 480, v0 + 584);
    sub_22BA1035C();

    (*(v55 + 32))(v88, v87, v56);
    sub_22B936C4C(v94);
    (*(v55 + 16))(v89, v88, v56);
    sub_22B95194C(&qword_281414C08, &qword_27D8D5568, &qword_22BA173C0, MEMORY[0x277D858E0]);
    sub_22BA1032C();
    (*(v91 + 32))(v93, v90, v92);
    (*(v55 + 8))(v88, v56);
    LOBYTE(v22) = 0;
    goto LABEL_29;
  }

  if (!(v1 >> 6))
  {
    v33 = *(v0 + 1032);
    v34 = sub_22B9358B4((*(v0 + 1016) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(*(v0 + 1016) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
    v35 = sub_22B9358B4((v33 + 8), *(v33 + 32));
    v37 = v35[3];
    v36 = v35[4];
    v38 = *(*v34 + 48);
    if (v38)
    {
      v39 = *(v0 + 1280);
      v40 = *(v0 + 1272);
      v41 = *(v0 + 1323);

      swift_unknownObjectRetain();
      v42 = sub_22BA0FFCC();
      [v38 persistToken:v40 forKey:v42];

      swift_unknownObjectRelease();
      v43 = v40;
      v44 = v39;
      v45 = v41;
    }

    else
    {

      v76 = sub_22BA0FEDC();
      v77 = sub_22BA1044C();
      v78 = os_log_type_enabled(v76, v77);
      v79 = *(v0 + 1323);
      v80 = *(v0 + 1280);
      v81 = *(v0 + 1272);
      if (v78)
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v95 = v83;
        *v82 = 136315394;
        *(v82 + 4) = sub_22B99153C(0xD00000000000001ELL, 0x800000022BA1DB20, &v95);
        *(v82 + 12) = 2080;
        *(v82 + 14) = sub_22B99153C(v37, v36, &v95);
        _os_log_impl(&dword_22B92A000, v76, v77, "%s: Missing sync token store, did not update server change token for key (%s)", v82, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23189ADD0](v83, -1, -1);
        MEMORY[0x23189ADD0](v82, -1, -1);
      }

      else
      {
      }

      v43 = v81;
      v44 = v80;
      v45 = v79;
    }

    sub_22B99C224(v43, v44, v45);

    goto LABEL_35;
  }

  if (v1 >> 6 == 1)
  {
    v22 = *(v0 + 1272) ^ 1;
LABEL_29:
    *(v0 + 1322) = v22 & 1;
LABEL_35:
    v24 = sub_22B9982D8;
    v25 = 0;
    v26 = 0;

    return MEMORY[0x2822009F8](v24, v25, v26);
  }

  v46 = swift_task_alloc();
  *(v0 + 1288) = v46;
  *v46 = v0;
  v46[1] = sub_22B99917C;
  v47 = *(v0 + 1280);
  v48 = *(v0 + 1272);
  v49 = *(v0 + 1024);
  v50 = *(v0 + 1016);

  return sub_22B99AD58(v48, v47, v1 & 1, v0 + 984, v0 + 992, v50, v49);
}

uint64_t sub_22B998E30()
{
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_22B998E98, 0, 0);
}

uint64_t sub_22B998E98()
{
  *(v0 + 1000) = *(v0 + 1264);
  sub_22B9349C8(&qword_27D8D55E0, &unk_22BA135D0);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_22B998F28, 0, 0);
}

void sub_22B998F28()
{
  v25 = v0;
  v1 = *(v0 + 1264);
  v2 = *(v0 + 1056);
  v3 = *(v0 + 1048);
  v4 = *(v0 + 1040);

  (*(v3 + 8))(v2, v4);

  v5 = v1;
  v6 = sub_22BA0FEDC();
  v7 = sub_22BA1046C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 1264);
    v9 = *(v0 + 1144);
    v10 = *(v0 + 1136);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_22B99153C(v10, v9, &v24);
    *(v11 + 12) = 2112;
    v14 = v8;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_22B92A000, v6, v7, "Error reading from %s %@", v11, 0x16u);
    sub_22B936BEC(v12, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v12, -1, -1);
    sub_22B936C4C(v13);
    MEMORY[0x23189ADD0](v13, -1, -1);
    MEMORY[0x23189ADD0](v11, -1, -1);
  }

  v16 = *(v0 + 984);
  v17 = *(v0 + 992);
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
  }

  else
  {
    v19 = *(v0 + 1264);
    v20 = v19;
    v21 = swift_task_alloc();
    *(v0 + 1304) = v21;
    *v21 = v0;
    v21[1] = sub_22B999420;
    v22 = *(v0 + 1024);
    v23 = *(v0 + 1016);

    sub_22B999C88(v23, v22, v18, v19);
  }
}

uint64_t sub_22B99917C()
{

  return MEMORY[0x2822009F8](sub_22B999278, 0, 0);
}

uint64_t sub_22B999278()
{
  if (*(*(v0 + 1032) + 98) == 1)
  {
    v1 = *(*(v0 + 1016) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
    *(v0 + 1296) = v1;
    v2 = sub_22B999324;
  }

  else
  {
    sub_22B99C224(*(v0 + 1272), *(v0 + 1280), *(v0 + 1323));
    v2 = sub_22B9982D8;
    v1 = 0;
  }

  return MEMORY[0x2822009F8](v2, v1, 0);
}

uint64_t sub_22B999324()
{
  v1 = *(v0 + 1296);
  v2 = swift_beginAccess();
  v5 = *(v1 + 120);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 120) = v7;
    v2 = sub_22B9993B0;
    v3 = 0;
    v4 = 0;
  }

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_22B9993B0()
{
  sub_22B99C224(*(v0 + 1272), *(v0 + 1280), *(v0 + 1323));

  return MEMORY[0x2822009F8](sub_22B9982D8, 0, 0);
}

uint64_t sub_22B999420()
{
  v2 = *v1;
  *(*v1 + 1312) = v0;

  if (v0)
  {
    v3 = sub_22B999814;
  }

  else
  {

    v3 = sub_22B99953C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B99953C()
{
  v1 = *(*sub_22B9358B4((v0[127] + 16), *(v0[127] + 40)) + 24);
  swift_unknownObjectRetain();
  v2 = sub_22BA0FB5C();
  v3 = [v1 wasTokenExpired_];
  swift_unknownObjectRelease();

  if (v3)
  {
    v4 = v0[158];
    v5 = v0[129];
    v6 = v0[127];

    v7 = sub_22B9358B4((v5 + 8), *(v5 + 32));
    sub_22B935B38(v6 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState, (v0 + 91));
    v8 = v7[3];
    v9 = v7[4];
    sub_22B9358B4(v0 + 91, v0[94]);
    sub_22BA08CC8(0, v8, v9);

    sub_22B936C4C(v0 + 91);

    v10 = v0[1];

    return v10(0, 1);
  }

  else
  {
    v12 = v0[158];
    v13 = v0[143];
    v14 = v0[142];
    sub_22BA108FC();

    MEMORY[0x231899730](v14, v13);

    MEMORY[0x231899730](0xD000000000000014, 0x800000022BA1DB00);
    swift_getErrorValue();
    v15 = sub_22B958118(v0[115], v0[116]);
    MEMORY[0x231899730](v15);

    sub_22B975FD8(6, v12, 0xD000000000000013, 0x800000022BA1DAE0);

    swift_willThrow();

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_22B999814()
{
  v36 = v0;
  v1 = *(v0 + 1312);
  v2 = *(v0 + 1032);

  sub_22B99C1AC(v2, v0 + 256);
  v3 = v1;
  v4 = sub_22BA0FEDC();
  v5 = sub_22BA1044C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 1312);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34 = v10;
    *v8 = 136315394;
    v11 = sub_22B9358B4((v0 + 264), *(v0 + 288));
    v12 = sub_22BA082E0(*(v11 + 16));
    v14 = v13;
    sub_22B99C1E4(v0 + 256);
    v15 = sub_22B99153C(v12, v14, &v34);

    *(v8 + 4) = v15;
    *(v8 + 12) = 2112;
    v16 = v7;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v17;
    *v9 = v17;
    _os_log_impl(&dword_22B92A000, v4, v5, "Error completing read step for zone (%s): %@", v8, 0x16u);
    sub_22B936BEC(v9, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v9, -1, -1);
    sub_22B936C4C(v10);
    MEMORY[0x23189ADD0](v10, -1, -1);
    MEMORY[0x23189ADD0](v8, -1, -1);
  }

  else
  {

    sub_22B99C1E4(v0 + 256);
  }

  v18 = *(*sub_22B9358B4((*(v0 + 1016) + 16), *(*(v0 + 1016) + 40)) + 24);
  swift_unknownObjectRetain();
  v19 = sub_22BA0FB5C();
  v20 = [v18 wasTokenExpired_];
  swift_unknownObjectRelease();

  if (v20)
  {
    v21 = *(v0 + 1264);
    v22 = *(v0 + 1032);
    v23 = *(v0 + 1016);

    v24 = sub_22B9358B4((v22 + 8), *(v22 + 32));
    sub_22B935B38(v23 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState, v0 + 728);
    v25 = v24[3];
    v26 = v24[4];
    sub_22B9358B4((v0 + 728), *(v0 + 752));
    sub_22BA08CC8(0, v25, v26);

    sub_22B936C4C((v0 + 728));

    v27 = *(v0 + 8);

    return v27(0, 1);
  }

  else
  {
    v29 = *(v0 + 1264);
    v30 = *(v0 + 1144);
    v31 = *(v0 + 1136);
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_22BA108FC();

    v34 = 0xD000000000000013;
    v35 = 0x800000022BA1DAE0;
    MEMORY[0x231899730](v31, v30);

    MEMORY[0x231899730](0xD000000000000014, 0x800000022BA1DB00);
    swift_getErrorValue();
    v32 = sub_22B958118(*(v0 + 920), *(v0 + 928));
    MEMORY[0x231899730](v32);

    sub_22B975FD8(6, v29, v34, v35);

    swift_willThrow();

    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_22B999C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_22B999CB0, 0, 0);
}

uint64_t sub_22B999CB0()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v2[9];
  v4 = v2[10];
  sub_22B9358B4(v2 + 6, v3);
  if (v1)
  {
    v5 = *(v4 + 24);
    v6 = v1;
    v18 = v5 + *v5;
    v7 = swift_task_alloc();
    v0[10] = v7;
    *v7 = v0;
    v7[1] = sub_22B999EF4;
    v8 = v0[8];
    v9 = v0[6];
    v10 = v2 + 1;
    v11 = v0[5];
    v12 = 1;
    v13 = v3;
    v14 = v4;
    v15 = v18;
  }

  else
  {
    v19 = (*(v4 + 24) + **(v4 + 24));
    v16 = swift_task_alloc();
    v0[12] = v16;
    *v16 = v0;
    v16[1] = sub_22B99A008;
    v9 = v0[6];
    v10 = v2 + 1;
    v11 = v0[5];
    v8 = 0;
    v12 = 0;
    v13 = v3;
    v14 = v4;
    v15 = v19;
  }

  return v15(v11, v9, v10, v8, v12, v13, v14);
}

uint64_t sub_22B999EF4()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_22B99A344;
  }

  else
  {
    v2 = sub_22B99A138;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B99A008()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22B99A610, 0, 0);
  }
}

uint64_t sub_22B99A138()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);
  if (*(v1 + 98) == 1)
  {
    v3 = *(v2 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
    *(v0 + 104) = v3;

    return MEMORY[0x2822009F8](sub_22B99A3A8, v3, 0);
  }

  else
  {
    v4 = *(v2 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_delegate);
    if (v4)
    {
      v5 = *(v0 + 64);
      v6 = sub_22B9358B4((v1 + 8), *(v1 + 32));
      v7 = sub_22B975300(*(v6 + 16));
      sub_22B9358B4((v2 + 16), *(v2 + 40));
      v8 = sub_22B9B580C();
      MEMORY[0x231899730](v8);

      MEMORY[0x231899730](46, 0xE100000000000000);
      sub_22BA0FDCC();
      sub_22B944034();
      v9 = sub_22BA10C1C();
      MEMORY[0x231899730](v9);

      v10 = sub_22BA0FFCC();

      v11 = sub_22BA0FDAC();
      if (v5)
      {
        v12 = sub_22BA0FB5C();
      }

      else
      {
        v12 = 0;
      }

      [v4 syncCoordinatorFinishedFetchingRecordsOfType:v7 name:v10 identifier:v11 count:*(v0 + 56) error:v12];
    }

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_22B99A344()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B99A3A8()
{
  v1 = *(v0 + 104);
  swift_beginAccess();
  *(v0 + 112) = *(v1 + 120);
  *(v0 + 120) = *(v1 + 128);
  *(v0 + 128) = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_22B99A438, 0, 0);
}

uint64_t sub_22B99A438()
{
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  sub_22B9358B4((*(v0 + 40) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(*(v0 + 40) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
  sub_22BA0980C(v3, v2, v1);
  v4 = *(v0 + 40);
  v5 = *(v4 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_delegate);
  if (v5)
  {
    v6 = *(v0 + 64);
    v7 = sub_22B9358B4((*(v0 + 72) + 8), *(*(v0 + 72) + 32));
    v8 = sub_22B975300(*(v7 + 16));
    sub_22B9358B4((v4 + 16), *(v4 + 40));
    v9 = sub_22B9B580C();
    MEMORY[0x231899730](v9);

    MEMORY[0x231899730](46, 0xE100000000000000);
    sub_22BA0FDCC();
    sub_22B944034();
    v10 = sub_22BA10C1C();
    MEMORY[0x231899730](v10);

    v11 = sub_22BA0FFCC();

    v12 = sub_22BA0FDAC();
    if (v6)
    {
      v13 = sub_22BA0FB5C();
    }

    else
    {
      v13 = 0;
    }

    [v5 syncCoordinatorFinishedFetchingRecordsOfType:v8 name:v11 identifier:v12 count:*(v0 + 56) error:v13];
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_22B99A610()
{
  v1 = v0[9];
  v2 = v0[5];
  if (*(v1 + 98) == 1)
  {
    v3 = *(v2 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
    v0[13] = v3;

    return MEMORY[0x2822009F8](sub_22B99A3A8, v3, 0);
  }

  else
  {
    v4 = *(v2 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_delegate);
    if (v4)
    {
      v5 = v0[8];
      v6 = sub_22B9358B4((v1 + 8), *(v1 + 32));
      v7 = sub_22B975300(*(v6 + 16));
      sub_22B9358B4((v2 + 16), *(v2 + 40));
      v8 = sub_22B9B580C();
      MEMORY[0x231899730](v8);

      MEMORY[0x231899730](46, 0xE100000000000000);
      sub_22BA0FDCC();
      sub_22B944034();
      v9 = sub_22BA10C1C();
      MEMORY[0x231899730](v9);

      v10 = sub_22BA0FFCC();

      v11 = sub_22BA0FDAC();
      if (v5)
      {
        v12 = sub_22BA0FB5C();
      }

      else
      {
        v12 = 0;
      }

      [v4 syncCoordinatorFinishedFetchingRecordsOfType:v7 name:v10 identifier:v11 count:v0[7] error:v12];
    }

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_22B99A814(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_22B99A838, 0, 0);
}

uint64_t sub_22B99A838()
{
  v1 = v0[7];
  if (*(v1 + 99) == 1)
  {
    v2 = sub_22B9358B4((v1 + 8), *(v1 + 32));
    sub_22B9ECD40(*(v2 + 16));
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_22B99A9C4;
    v5 = v0[5];
    v4 = v0[6];

    return sub_22B9E81AC(v5, v4, 0, 0, 1, "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/MessagesCloudSync/SyncSteps/RecordZoneReader.swift", 108, 2);
  }

  else if (*(v1 + 98) == 1)
  {
    v7 = *(v0[5] + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
    v0[9] = v7;

    return MEMORY[0x2822009F8](sub_22B99AB14, v7, 0);
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_22B99A9C4()
{

  return MEMORY[0x2822009F8](sub_22B99AAC0, 0, 0);
}

uint64_t sub_22B99AAC0()
{
  if (*(*(v0 + 56) + 98) != 1)
  {
    return (*(v0 + 8))();
  }

  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
  *(v0 + 72) = v1;
  return MEMORY[0x2822009F8](sub_22B99AB14, v1, 0);
}

uint64_t sub_22B99AB14()
{
  v1 = v0[9];
  swift_beginAccess();
  v0[10] = *(v1 + 120);
  v0[11] = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_22B99AB9C, 0, 0);
}

uint64_t sub_22B99AB9C()
{
  v1 = *sub_22B9358B4((*(v0 + 40) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_countStore), *(*(v0 + 40) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_countStore + 24));

  return MEMORY[0x2822009F8](sub_22B99AC18, v1, 0);
}

uint64_t sub_22B99AC18()
{
  v1 = v0[9];
  sub_22B9E45D8(v0[10], v0[11], 0);

  return MEMORY[0x2822009F8](sub_22B99AC88, v1, 0);
}

uint64_t sub_22B99AC88()
{
  v1 = *(v0 + 72);
  *(v0 + 96) = *(v1 + 120);
  *(v0 + 104) = *(v1 + 128);
  *(v0 + 112) = *(v1 + 136);
  return MEMORY[0x2822009F8](sub_22B99ACC0, 0, 0);
}

uint64_t sub_22B99ACC0()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  sub_22B9358B4((*(v0 + 40) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(*(v0 + 40) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
  sub_22BA0980C(v3, v2, v1);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22B99AD58(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = v7;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 24) = a2;
  *(v8 + 32) = a4;
  *(v8 + 96) = a3;
  *(v8 + 16) = a1;
  return MEMORY[0x2822009F8](sub_22B99AD88, 0, 0);
}

uint64_t sub_22B99AD88()
{
  if (*(v2 + 96))
  {
    v3 = *(v2 + 40);
    if (__OFADD__(*v3, 1))
    {
      __break(1u);
    }

    else
    {
      v1 = *(v2 + 16);
      v0 = *(v2 + 24);
      ++*v3;
      if (qword_281414D30 == -1)
      {
LABEL_4:
        v4 = sub_22BA0FEFC();
        sub_22B936CA8(v4, qword_28141AD40);
        v5 = v1;
        v6 = v0;
        v7 = sub_22BA0FEDC();
        v8 = sub_22BA1044C();

        if (os_log_type_enabled(v7, v8))
        {
          v9 = *(v2 + 16);
          v10 = swift_slowAlloc();
          v11 = swift_slowAlloc();
          *v10 = 138412546;
          sub_22B99C2C4();
          swift_allocError();
          *v12 = v5;
          v12[1] = v0;
          v13 = v5;
          v14 = v0;
          v15 = _swift_stdlib_bridgeErrorToNSError();
          *(v10 + 4) = v15;
          *(v10 + 12) = 2112;
          *(v10 + 14) = v13;
          *v11 = v15;
          v11[1] = v9;
          v16 = v13;
          _os_log_impl(&dword_22B92A000, v7, v8, "Error during processing: %@ for record ID: %@", v10, 0x16u);
          sub_22B9349C8(&qword_27D8D4CD0, qword_22BA14360);
          swift_arrayDestroy();
          MEMORY[0x23189ADD0](v11, -1, -1);
          MEMORY[0x23189ADD0](v10, -1, -1);
        }

        v17 = swift_task_alloc();
        *(v2 + 88) = v17;
        *v17 = v2;
        v17[1] = sub_22B99B6DC;

        return sub_22B97D504(v0);
      }
    }

    swift_once();
    goto LABEL_4;
  }

  v19 = *(v2 + 64);
  v20 = v19[9];
  v21 = v19[10];
  sub_22B9358B4(v19 + 6, v20);
  v27 = (*(v21 + 8) + **(v21 + 8));
  v22 = swift_task_alloc();
  *(v2 + 72) = v22;
  *v22 = v2;
  v22[1] = sub_22B99B100;
  v23 = *(v2 + 56);
  v24 = *(v2 + 16);
  v25 = *(v2 + 24);
  v26 = *(v2 + 48);

  return v27(v26, v23, v19 + 1, v24, v25, 0, v20, v21);
}

uint64_t sub_22B99B100()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_22B99B3B4;
  }

  else
  {
    v2 = sub_22B99B214;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B99B214(uint64_t a1)
{
  v2 = sub_22BA106BC();
  v4 = sub_22B9C2E30(v2, v3);
  if (v4 > 3)
  {
    if ((v4 - 6) < 2 || v4 != 4)
    {
      goto LABEL_14;
    }

    v6 = "recoverableMessage";
  }

  else
  {
    if (v4 <= 1)
    {
      v5 = "ndPlayed";
      if (v4)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }

    if (v4 != 2)
    {
      goto LABEL_14;
    }

    v6 = "MessageEncryptedV3";
  }

  v5 = (v6 - 32);
LABEL_12:
  if (0x800000022BA1B9C0 == (v5 | 0x8000000000000000))
  {

    goto LABEL_17;
  }

LABEL_14:
  v7 = sub_22BA10C6C();

  if ((v7 & 1) == 0)
  {
    v9 = *(v1 + 32);
    if (__OFADD__(*v9, 1))
    {
      __break(1u);
      return result;
    }

    ++*v9;
  }

LABEL_17:
  v10 = *(v1 + 8);

  return v10();
}

uint64_t sub_22B99B3B4()
{
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v3 = v0[2];
  v2 = v0[3];
  v4 = sub_22BA0FEFC();
  sub_22B936CA8(v4, qword_28141AD40);
  v5 = v1;
  v6 = v3;
  v7 = v2;
  v8 = sub_22BA0FEDC();
  v9 = sub_22BA1044C();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[10];
  if (v10)
  {
    v12 = v0[3];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412546;
    v15 = v11;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *(v13 + 12) = 2112;
    *(v13 + 14) = v12;
    *v14 = v16;
    v14[1] = v12;
    v17 = v12;
    _os_log_impl(&dword_22B92A000, v8, v9, "Upsert failed: %@ for record: %@", v13, 0x16u);
    sub_22B9349C8(&qword_27D8D4CD0, qword_22BA14360);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v14, -1, -1);
    MEMORY[0x23189ADD0](v13, -1, -1);
  }

  else
  {
  }

  v18 = sub_22BA106BC();
  v20 = sub_22B9C2E30(v18, v19);
  if (v20 > 3)
  {
    if ((v20 - 6) < 2 || v20 != 4)
    {
      goto LABEL_19;
    }

    v22 = "recoverableMessage";
  }

  else
  {
    if (v20 <= 1)
    {
      v21 = "ndPlayed";
      if (v20)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    if (v20 != 2)
    {
      goto LABEL_19;
    }

    v22 = "MessageEncryptedV3";
  }

  v21 = (v22 - 32);
LABEL_17:
  if (0x800000022BA1B9C0 == (v21 | 0x8000000000000000))
  {

    goto LABEL_22;
  }

LABEL_19:
  v23 = sub_22BA10C6C();

  if ((v23 & 1) == 0)
  {
    v25 = v0[4];
    if (__OFADD__(*v25, 1))
    {
      __break(1u);
      return result;
    }

    ++*v25;
  }

LABEL_22:
  v26 = v0[1];

  return v26();
}

uint64_t sub_22B99B6DC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22B99B7E8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B945AC8;

  return sub_22B996CB0(a1, a2);
}

uint64_t sub_22B99B8A0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B947814;

  return sub_22B997250(a1, a2);
}

uint64_t sub_22B99B958(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B943E68;

  return sub_22B99A814(a1, a2);
}

uint64_t sub_22B99BA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = xmmword_22BA172A0;
  sub_22B9358B4((a1 + 16), *(a1 + 40));
  v25 = sub_22B9B580C();
  v26 = v7;
  v8 = v4[1];
  v27 = *v4;
  v28 = v8;
  v29 = a3;
  v30 = a4;
  v32 = *(v4 + 11);
  v31 = v32;

  result = sub_22B99C318(&v32, v23);
  v10 = 0;
  v11 = MEMORY[0x277D84F90];
LABEL_2:
  if (v10 <= 5)
  {
    v12 = 5;
  }

  else
  {
    v12 = v10;
  }

  v13 = v12 + 1;
  v14 = 16 * v10 + 40;
  while (1)
  {
    if (v10 == 5)
    {
      sub_22B9349C8(&qword_27D8D5478, &unk_22BA173E0);
      swift_arrayDestroy();
      v23[0] = v11;
      sub_22B9349C8(&qword_27D8D4EF0, &qword_22BA13990);
      sub_22B95194C(&qword_281414C28, &qword_27D8D4EF0, &qword_22BA13990, MEMORY[0x277D83958]);
      sub_22BA0FFAC();

      v21 = [objc_allocWithZone(MEMORY[0x277CBC4F8]) init];
      v22 = sub_22BA0FFCC();

      [v21 setName_];

      return v21;
    }

    if (v13 == ++v10)
    {
      break;
    }

    v15 = v14 + 16;
    v16 = *(&v23[2] + v14);
    v14 += 16;
    if (v16)
    {
      v17 = *(&v23[-1] + v15);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_22B97FB74(0, *(v11 + 16) + 1, 1, v11);
        v11 = result;
      }

      v19 = *(v11 + 16);
      v18 = *(v11 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_22B97FB74((v18 > 1), v19 + 1, 1, v11);
        v11 = result;
      }

      *(v11 + 16) = v19 + 1;
      v20 = v11 + 16 * v19;
      *(v20 + 32) = v17;
      *(v20 + 40) = v16;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

id sub_22B99BC6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_22B951A54(0, &qword_281414AB0, 0x277CBC3B8);
  sub_22B9349C8(&qword_27D8D4F60, &unk_22BA17970);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22BA172B0;
  sub_22B951A54(0, &qword_281414B80, 0x277CBC5F8);
  sub_22BA082E0(*(v2 + 16));
  sub_22BA0FFFC();
  *(v6 + 32) = sub_22BA1047C();
  v7 = sub_22B9358B4((a1 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(a1 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
  sub_22B99BEB0(*v7, v2);
  v8 = sub_22BA1066C();
  v9 = sub_22B99BA10(a1, a2, 0x6863746566, 0xE500000000000000);
  [v8 setGroup_];

  v10 = (a1 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity);
  v11 = [objc_allocWithZone(MEMORY[0x277CBC4F0]) init];
  [v11 setQualityOfService_];
  [v11 setAllowsCellularAccess_];
  v12 = v10[3];
  v13 = v10[4];
  sub_22B9358B4(v10, v12);
  v14 = (*(v13 + 8))(v12, v13);
  if (v14)
  {
    v15 = v14;
    [v11 setAllowsCellularAccess_];
    [v11 setXPCActivity_];
    swift_unknownObjectRelease();
  }

  [v8 setConfiguration_];

  [v8 setFetchAllChanges_];
  return v8;
}

unint64_t sub_22B99BEB0(uint64_t a1, uint64_t a2)
{
  v18 = type metadata accessor for CloudState();
  v19 = &off_283F589F0;
  v17[0] = a1;
  sub_22B9358B4(v17, v18);
  v5 = *(a2 + 24);
  v4 = *(a2 + 32);

  v6 = sub_22BA08AEC(v5, v4);
  v7 = *(a2 + 56);
  sub_22B951A54(0, &qword_281414AA8, 0x277CBC3A0);

  v8 = v6;
  v9 = sub_22BA1069C();
  v10 = v9;
  if ((v7 & 1) == 0 && !v6)
  {
    [v9 setFetchNewestChangesFirst_];
  }

  sub_22BA082E0(*(a2 + 16));
  v11 = objc_allocWithZone(MEMORY[0x277CBC5E8]);
  v12 = sub_22BA0FFCC();

  v13 = [v11 initWithZoneName_];

  sub_22B9349C8(&qword_27D8D5578, &qword_22BA173F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22BA13CB0;
  *(inited + 32) = [v13 zoneID];
  *(inited + 40) = v10;
  v15 = sub_22B9BBCE4(inited);
  swift_setDeallocating();
  sub_22B936BEC(inited + 32, &qword_27D8D5580, &qword_22BA173F8);

  sub_22B936C4C(v17);
  return v15;
}

uint64_t sub_22B99C0A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v14 = type metadata accessor for CloudState();
  v15 = &off_283F589F0;
  v13[0] = a1;
  v8 = *(*sub_22B9358B4(v13, v14) + 56);

  if (v8)
  {
    [v8 setSyncJobStateWithState_];
  }

  v9 = *(*sub_22B9358B4(v13, v14) + 56);
  if (v9)
  {
    if (a3 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = a3;
    }

    [v9 setLastSyncDownloadProgress_];
  }

  v11 = *(*sub_22B9358B4(v13, v14) + 56);
  if (v11)
  {
    [v11 setCloudKitHasAvailableRecordsToDownload_];
  }

  return sub_22B936C4C(v13);
}

void sub_22B99C224(id a1, void *a2, unsigned __int8 a3)
{
  if (a3 <= 0xFDu)
  {
    sub_22B99C238(a1, a2, a3);
  }
}

void sub_22B99C238(id a1, void *a2, unsigned __int8 a3)
{
  if (a3 >> 6 == 2)
  {
    sub_22B99C258(a1, a2, a3 & 1);
  }

  else if (!(a3 >> 6))
  {
  }
}

void sub_22B99C258(void *a1, void *a2, char a3)
{
  if (a3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2;
  }
}

unint64_t sub_22B99C2C4()
{
  result = qword_27D8D5570;
  if (!qword_27D8D5570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5570);
  }

  return result;
}

uint64_t sub_22B99C318(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B9349C8(&qword_27D8D5478, &unk_22BA173E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B99C388()
{
  sub_22BA0FA9C();
  swift_allocObject();
  result = sub_22BA0FA8C();
  qword_28141ADA0 = result;
  return result;
}

uint64_t sub_22B99C3C8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DatabaseRecord(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 data];
  if (v6)
  {
    v7 = v6;
    v8 = sub_22BA0FCAC();
    v10 = v9;

    if (qword_2814157B8 != -1)
    {
      swift_once();
    }

    sub_22B99CBD8();
    sub_22BA0FA7C();
    sub_22B9359BC(v8, v10);
    return sub_22B99CC30(v5, a1);
  }

  else
  {
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v11 = sub_22BA0FEFC();
    sub_22B936CA8(v11, qword_28141AD10);
    v12 = v1;
    v13 = sub_22BA0FEDC();
    v14 = sub_22BA1044C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v44 = v16;
      *v15 = 136315138;
      v17 = [v12 parent];
      if (v17 && (v18 = v17, v19 = [v17 recordName], v18, v19))
      {
        v20 = sub_22BA0FFFC();
        v22 = v21;

        v23 = v20;
      }

      else
      {
        v23 = 0xD00000000000001CLL;
        v22 = 0x800000022BA1DBF0;
      }

      v25 = sub_22B99153C(v23, v22, &v44);

      *(v15 + 4) = v25;
      _os_log_impl(&dword_22B92A000, v13, v14, "unknown domainModel, no data found for RemoteRecordData with recordName %s", v15, 0xCu);
      sub_22B936C4C(v16);
      MEMORY[0x23189ADD0](v16, -1, -1);
      MEMORY[0x23189ADD0](v15, -1, -1);
    }

    v26 = [v12 parent];
    if (v26 && (v27 = v26, v28 = [v26 recordName], v27, v28))
    {
      v29 = sub_22BA0FFFC();
      v31 = v30;
    }

    else
    {
      v29 = 0;
      v31 = 0;
    }

    v32 = [v12 parent];
    if (v32 && (v33 = v32, v34 = [v32 recordType], v33, v34))
    {
      v35 = sub_22BA0FFFC();
      v37 = v36;
    }

    else
    {
      v35 = 0;
      v37 = 0;
    }

    *a1 = v29;
    *(a1 + 8) = v31;
    *(a1 + 16) = v35;
    *(a1 + 24) = v37;
    v38 = type metadata accessor for UnknownRecord(0);
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    v39 = v38[10];
    v40 = sub_22BA0FD8C();
    v41 = *(*(v40 - 8) + 56);
    v41(a1 + v39, 1, 1, v40);
    v41(a1 + v38[11], 1, 1, v40);
    v42 = (a1 + v38[12]);
    *v42 = 0;
    v42[1] = 0;

    return swift_storeEnumTagMultiPayload();
  }
}

unint64_t sub_22B99CBD8()
{
  result = qword_281415AB0;
  if (!qword_281415AB0)
  {
    type metadata accessor for DatabaseRecord(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281415AB0);
  }

  return result;
}

uint64_t sub_22B99CC30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatabaseRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_22B99CC94(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_22B99CCA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22B99CCE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22B99CD38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  *(v8 + 249) = a8;
  *(v8 + 248) = a6;
  *(v8 + 208) = a5;
  *(v8 + 216) = v10;
  *(v8 + 192) = a3;
  *(v8 + 200) = a4;
  *(v8 + 176) = a1;
  *(v8 + 184) = a2;
  return MEMORY[0x2822009F8](sub_22B99CD70, 0, 0);
}

uint64_t sub_22B99CD70(uint64_t a1)
{
  v33 = v1;
  if (*(v1 + 248))
  {
    v2 = *(v1 + 200);
    v3 = v2;
    if (qword_281414D30 != -1)
    {
      swift_once();
      v3 = *(v1 + 200);
    }

    v4 = *(v1 + 208);
    v5 = *(v1 + 192);
    v6 = sub_22BA0FEFC();
    sub_22B936CA8(v6, qword_28141AD40);
    sub_22B935B38(v5, v1 + 120);
    v7 = v2;
    v8 = sub_22BA0FEDC();
    v9 = sub_22BA1044C();
    sub_22B99E324(v3, v4, 1);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v32 = v11;
      *v10 = 136315394;
      v12 = sub_22B9358B4((v1 + 120), *(v1 + 144));
      v13 = *v12;
      v14 = v12[1];

      sub_22B936C4C((v1 + 120));
      v15 = sub_22B99153C(v13, v14, &v32);

      *(v10 + 4) = v15;
      *(v10 + 12) = 2080;
      *(v1 + 160) = v2;
      v16 = v2;
      sub_22B9349C8(&qword_27D8D55E0, &unk_22BA135D0);
      v17 = sub_22BA1005C();
      v19 = sub_22B99153C(v17, v18, &v32);

      *(v10 + 14) = v19;
      _os_log_impl(&dword_22B92A000, v8, v9, "Read from %s encountered error: %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v11, -1, -1);
      MEMORY[0x23189ADD0](v10, -1, -1);
    }

    else
    {

      sub_22B936C4C((v1 + 120));
    }

    goto LABEL_14;
  }

  v20 = *(v1 + 208);
  v21 = sub_22BA106BC();
  v23 = sub_22B9C2E30(v21, v22);
  if (!v23)
  {
LABEL_14:
    v30 = *(v1 + 8);

    return v30();
  }

  if (v23 == 7)
  {
    v24 = 6;
  }

  else
  {
    v24 = v23;
  }

  *(v1 + 250) = v24;
  v25 = *(*(v1 + 176) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_syncDatabase + 8);
  ObjectType = swift_getObjectType();
  *(v1 + 168) = v20;
  v31 = (*(v25 + 80) + **(v25 + 80));
  v27 = swift_task_alloc();
  *(v1 + 224) = v27;
  v28 = sub_22B99E370();
  *v27 = v1;
  v27[1] = sub_22B99D120;

  return v31(v1 + 168, 1, v28, &off_281414A48, ObjectType, v25);
}

uint64_t sub_22B99D120(void *a1)
{
  *(*v2 + 232) = v1;

  if (v1)
  {
    v4 = sub_22B99D4A4;
  }

  else
  {
    sub_22B930C58(a1);
    v4 = sub_22B99D250;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22B99D250()
{
  v1 = *(v0 + 249);
  v2 = *(v0 + 208);
  v3 = *(v0 + 184);
  v4 = *(v0 + 176);
  v5 = *(v0 + 250);
  v6 = sub_22B9358B4(*(v0 + 192), *(*(v0 + 192) + 24));
  v8 = *(v6 + 1);
  v7 = *(v6 + 2);
  *(v0 + 16) = *v6;
  *(v0 + 32) = v8;
  *(v0 + 48) = v7;
  v10 = *(v6 + 4);
  v9 = *(v6 + 5);
  v11 = *(v6 + 3);
  *(v0 + 112) = v6[12];
  *(v0 + 80) = v10;
  *(v0 + 96) = v9;
  *(v0 + 64) = v11;
  sub_22B99E3BC(v2, v4, v3, v0 + 16, v5);
  if (v1 == 1)
  {
    v12 = swift_task_alloc();
    *(v0 + 240) = v12;
    *v12 = v0;
    v12[1] = sub_22B99D3B0;
    v13 = *(v0 + 208);
    v15 = *(v0 + 192);
    v14 = *(v0 + 200);

    return sub_22B9DA594(v15, v14, v13, 0);
  }

  else
  {
    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_22B99D3B0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22B99D4BC(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8, uint64_t a9)
{
  *(v9 + 96) = a9;
  *(v9 + 161) = a8;
  *(v9 + 88) = a2;
  *(v9 + 160) = a6;
  *(v9 + 72) = a4;
  *(v9 + 80) = a5;
  *(v9 + 64) = a1;
  return MEMORY[0x2822009F8](sub_22B99D4F0, 0, 0);
}

uint64_t sub_22B99D4F0()
{
  v33 = v0;
  if (*(v0 + 160))
  {
    v1 = *(v0 + 80);
    v2 = v1;
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 80);
    v4 = sub_22BA0FEFC();
    sub_22B936CA8(v4, qword_28141AD40);
    swift_unknownObjectRetain();
    sub_22B973C70(v3, 1);
    v5 = sub_22BA0FEDC();
    v6 = sub_22BA1044C();
    swift_unknownObjectRelease();
    sub_22B97721C(v3, 1);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v32[0] = v8;
      *v7 = 136315394;
      sub_22BA0FDCC();
      sub_22B944034();
      v9 = sub_22BA10C1C();
      v11 = sub_22B99153C(v9, v10, v32);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2080;
      *(v0 + 56) = v1;
      v12 = v1;
      sub_22B9349C8(&qword_27D8D55E0, &unk_22BA135D0);
      v13 = sub_22BA1005C();
      v15 = sub_22B99153C(v13, v14, v32);

      *(v7 + 14) = v15;
      _os_log_impl(&dword_22B92A000, v5, v6, "Fetch complete with error (sync: %s): %s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v8, -1, -1);
      MEMORY[0x23189ADD0](v7, -1, -1);
    }

    swift_willThrow();
    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v18 = sub_22BA0FEFC();
    *(v0 + 104) = sub_22B936CA8(v18, qword_28141AD40);
    swift_unknownObjectRetain();
    v19 = sub_22BA0FEDC();
    v20 = sub_22BA1046C();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v0 + 64);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 136315138;
      v31 = v23;
      v32[0] = 0x2E636E7973;
      v32[1] = 0xE500000000000000;
      sub_22B9358B4((v21 + 16), *(v21 + 40));
      v24 = sub_22B9B580C();
      MEMORY[0x231899730](v24);

      MEMORY[0x231899730](46, 0xE100000000000000);
      sub_22BA0FDCC();
      sub_22B944034();
      v25 = sub_22BA10C1C();
      MEMORY[0x231899730](v25);

      v26 = sub_22B99153C(0x2E636E7973, 0xE500000000000000, &v31);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_22B92A000, v19, v20, "Fetch success (sync: %s)", v22, 0xCu);
      sub_22B936C4C(v23);
      MEMORY[0x23189ADD0](v23, -1, -1);
      MEMORY[0x23189ADD0](v22, -1, -1);
    }

    if (qword_281416778 != -1)
    {
      swift_once();
    }

    v27 = *(&xmmword_28141AEB0 + 1);
    *(v0 + 112) = xmmword_28141AEB0;
    *(v0 + 120) = v27;
    ObjectType = swift_getObjectType();
    *(v0 + 128) = ObjectType;
    v30 = (*(v27 + 96) + **(v27 + 96));
    v29 = swift_task_alloc();
    *(v0 + 136) = v29;
    *v29 = v0;
    v29[1] = sub_22B99DA3C;

    return v30(ObjectType, v27);
  }
}

uint64_t sub_22B99DA3C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = v3[1];

    return v4();
  }

  else
  {
    v9 = (*(v2[15] + 128) + **(v2[15] + 128));
    v6 = swift_task_alloc();
    v2[18] = v6;
    *v6 = v3;
    v6[1] = sub_22B99DC28;
    v7 = v2[15];
    v8 = v2[16];

    return v9(v8, v7);
  }
}

uint64_t sub_22B99DC28()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22B99DD58, 0, 0);
  }
}

uint64_t sub_22B99DD58()
{
  v22 = v0;
  v1 = *(v0 + 72);
  Current = CFAbsoluteTimeGetCurrent();
  sub_22B935B38(v1, v0 + 16);
  swift_unknownObjectRetain();
  v3 = sub_22BA0FEDC();
  v4 = sub_22BA1046C();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 64);
    v6 = Current - *(v0 + 88);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315650;
    v9 = sub_22B9358B4((v0 + 16), *(v0 + 40));
    v10 = *v9;
    v11 = v9[1];

    sub_22B936C4C((v0 + 16));
    v12 = sub_22B99153C(v10, v11, &v19);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2048;
    *(v7 + 14) = v6;
    *(v7 + 22) = 2080;
    v20 = 0x2E636E7973;
    v21 = 0xE500000000000000;
    sub_22B9358B4((v5 + 16), *(v5 + 40));
    v13 = sub_22B9B580C();
    MEMORY[0x231899730](v13);

    MEMORY[0x231899730](46, 0xE100000000000000);
    sub_22BA0FDCC();
    sub_22B944034();
    v14 = sub_22BA10C1C();
    MEMORY[0x231899730](v14);

    v15 = sub_22B99153C(v20, v21, &v19);

    *(v7 + 24) = v15;
    _os_log_impl(&dword_22B92A000, v3, v4, "Total time to fetch %s records was %f (%s)", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v8, -1, -1);
    MEMORY[0x23189ADD0](v7, -1, -1);
  }

  else
  {

    sub_22B936C4C((v0 + 16));
  }

  if (*(v0 + 161) == 1)
  {
    v16 = swift_task_alloc();
    *(v0 + 152) = v16;
    *v16 = v0;
    v16[1] = sub_22B99E06C;

    return sub_22B9DA014();
  }

  else
  {
    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_22B99E06C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22B99E160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v14 = *(v6 + 16);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_22B945AC8;

  return sub_22B99CD38(a1, a2, a3, a4, a5, a6 & 1, v16, v14);
}

uint64_t sub_22B99E248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = *v5;
  v12 = *(v5 + 16);
  v13 = *(v5 + 24);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_22B943E68;

  return sub_22B99D4BC(a1, v11, v15, a3, a4, a5 & 1, v16, v12, v13);
}

void sub_22B99E324(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {

    a1 = a2;
  }
}

unint64_t sub_22B99E370()
{
  result = qword_281414A30;
  if (!qword_281414A30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281414A30);
  }

  return result;
}

uint64_t sub_22B99E3BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v105[5] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = sub_22BA0FC4C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v92 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105[3] = &type metadata for SyncZoneInfo;
  v105[4] = &off_283F57268;
  v12 = swift_allocObject();
  v105[0] = v12;
  v13 = *(a4 + 80);
  *(v12 + 80) = *(a4 + 64);
  *(v12 + 96) = v13;
  *(v12 + 112) = *(a4 + 96);
  v14 = *(a4 + 16);
  *(v12 + 16) = *a4;
  *(v12 + 32) = v14;
  v15 = *(a4 + 48);
  *(v12 + 48) = *(a4 + 32);
  *(v12 + 64) = v15;
  if ((v8 - 1) >= 2)
  {
    sub_22B951748(a4, v102);
  }

  else
  {
    sub_22B9358B4(v105, &type metadata for SyncZoneInfo);
    sub_22B951748(a4, v102);

    v17 = sub_22B951A9C(v16);

    if (v17)
    {
      v18 = v17 >> 62;
      if (v17 >> 62)
      {
        v19 = sub_22BA1080C();
        if (v19)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v19)
        {
LABEL_5:
          v97 = v19;
          v88 = v9;
          v91 = a2;
          if (qword_281414D30 != -1)
          {
            swift_once();
          }

          v20 = sub_22BA0FEFC();
          v21 = sub_22B936CA8(v20, qword_28141AD40);
          sub_22B935B38(v105, v102);
          swift_bridgeObjectRetain_n();
          v22 = a1;
          v93 = v21;
          v23 = sub_22BA0FEDC();
          v24 = sub_22BA1046C();

          v25 = os_log_type_enabled(v23, v24);
          v96 = v17;
          if (v25)
          {
            v26 = swift_slowAlloc();
            v27 = swift_slowAlloc();
            v100 = v27;
            *v26 = 136315650;
            v28 = [v22 recordID];
            v29 = [v28 recordName];

            v30 = sub_22BA0FFFC();
            v32 = v31;

            v33 = sub_22B99153C(v30, v32, &v100);

            *(v26 + 4) = v33;
            *(v26 + 12) = 2080;
            v34 = sub_22B9358B4(v102, v103);
            v35 = sub_22BA082E0(*(v34 + 16));
            v37 = v36;
            sub_22B936C4C(v102);
            v38 = sub_22B99153C(v35, v37, &v100);

            *(v26 + 14) = v38;
            *(v26 + 22) = 2048;
            v17 = v96;
            if (v18)
            {
              v39 = sub_22BA1080C();
            }

            else
            {
              v39 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v41 = v92;

            *(v26 + 24) = v39;

            _os_log_impl(&dword_22B92A000, v23, v24, "Record %s in %s has %ld assets", v26, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x23189ADD0](v27, -1, -1);
            MEMORY[0x23189ADD0](v26, -1, -1);
          }

          else
          {

            swift_bridgeObjectRelease_n();
            sub_22B936C4C(v102);
            v41 = v92;
          }

          v42 = v97;
          if (v97 < 1)
          {
            __break(1u);
          }

          v43 = 0;
          v99 = (v91 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_fileProvider);
          v98 = v17 & 0xC000000000000001;
          v95 = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_identifier;
          v94 = (v10 + 8);
          *&v40 = 136315138;
          v90 = v40;
          *&v40 = 136315650;
          v87 = v40;
          v44 = v88;
          do
          {
            if (v98)
            {
              v45 = MEMORY[0x231899FA0](v43, v17);
            }

            else
            {
              v45 = *(v17 + 8 * v43 + 32);
            }

            v46 = v45;
            v47 = *sub_22B9358B4(v99, v99[3]);
            v104 = &off_283F53B48;
            v103 = &type metadata for FileManagerProvider;
            v102[0] = v47;
            v48 = v47;
            v49 = [v46 fileURL];
            if (!v49)
            {
              v60 = v46;
              v61 = sub_22BA0FEDC();
              v62 = sub_22BA1044C();

              if (os_log_type_enabled(v61, v62))
              {
                v63 = swift_slowAlloc();
                v64 = swift_slowAlloc();
                v100 = v64;
                *v63 = v90;
                v65 = [v60 UUID];
                if (v65)
                {
                  v66 = v65;
                  v67 = sub_22BA0FFFC();
                  v69 = v68;
                }

                else
                {
                  v69 = 0xE800000000000000;
                  v67 = 0x3E6469206C696E3CLL;
                }

                v85 = sub_22B99153C(v67, v69, &v100);

                *(v63 + 4) = v85;
                _os_log_impl(&dword_22B92A000, v61, v62, "Asset %s has no file url.", v63, 0xCu);
                sub_22B936C4C(v64);
                MEMORY[0x23189ADD0](v64, -1, -1);
                MEMORY[0x23189ADD0](v63, -1, -1);

                v41 = v92;
                v17 = v96;
                v42 = v97;
              }

              else
              {
              }

              goto LABEL_17;
            }

            v50 = v49;
            sub_22BA0FC0C();

            v51 = sub_22BA0FD9C();
            v53 = v52;
            v54 = *sub_22B9358B4(v102, v103);
            LOBYTE(v100) = 0;
            sub_22BA0FB7C();
            v55 = sub_22BA0FFCC();

            v56 = [v54 fileExistsAtPath:v55 isDirectory:&v100];

            if (v56)
            {
              v57 = *sub_22B9358B4(v102, v103);
              v58 = sub_22BA0FBBC();
              v100 = 0;
              LODWORD(v57) = [v57 removeItemAtURL:v58 error:&v100];

              if (!v57)
              {
                v70 = v100;
                v71 = sub_22BA0FB6C();

                swift_willThrow();
                sub_22B975FD8(16, v71, 0, 0);
                v100 = 0x636E7953206E6920;
                v101 = 0xE90000000000005BLL;
                MEMORY[0x231899730](v51, v53);
                MEMORY[0x231899730](93, 0xE100000000000000);
                v72 = v100;
                v73 = v101;

                v74 = v71;
                v75 = sub_22BA0FEDC();
                v76 = sub_22BA1044C();

                if (os_log_type_enabled(v75, v76))
                {
                  v77 = v72;
                  v78 = swift_slowAlloc();
                  v79 = swift_slowAlloc();
                  v89 = swift_slowAlloc();
                  v100 = v89;
                  *v78 = v87;
                  *(v78 + 4) = sub_22B99153C(0x7373615F6C696E3CLL, 0xEE003E64695F7465, &v100);
                  *(v78 + 12) = 2080;
                  v80 = sub_22B99153C(v77, v73, &v100);

                  *(v78 + 14) = v80;
                  *(v78 + 22) = 2112;
                  v81 = v71;
                  v82 = _swift_stdlib_bridgeErrorToNSError();
                  *(v78 + 24) = v82;
                  *v79 = v82;
                  _os_log_impl(&dword_22B92A000, v75, v76, "Failed to clean up asset with id %s%s: %@", v78, 0x20u);
                  sub_22B95DEF0(v79);
                  v83 = v79;
                  v44 = v88;
                  MEMORY[0x23189ADD0](v83, -1, -1);
                  v84 = v89;
                  swift_arrayDestroy();
                  MEMORY[0x23189ADD0](v84, -1, -1);
                  MEMORY[0x23189ADD0](v78, -1, -1);
                }

                else
                {
                }

                v41 = v92;
                goto LABEL_33;
              }

              v59 = v100;
            }

LABEL_33:
            v42 = v97;
            (*v94)(v41, v44);

            v17 = v96;
LABEL_17:
            ++v43;
            sub_22B957EE4(v102);
          }

          while (v42 != v43);
        }
      }
    }
  }

  return sub_22B936C4C(v105);
}

uint64_t sub_22B99EDC0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_22B99EDDC(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22B99EE04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_22B99EE60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_22B99EECC()
{
  sub_22BA10D3C();
  sub_22BA1008C();
  return sub_22BA10D6C();
}

uint64_t sub_22B99EF28(uint64_t a1)
{
  sub_22BA10D3C();
  sub_22BA1008C();
  return sub_22BA10D6C();
}

uint64_t sub_22B99EF70@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_22BA10AAC();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_22B99EFE8@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_22BA10AAC();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_22B99F040(uint64_t a1)
{
  v2 = sub_22B99F598();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B99F07C(uint64_t a1)
{
  v2 = sub_22B99F598();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_22B99F0B8@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_22B99F1C0(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

id sub_22B99F100(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = sub_22BA0FC8C();
  v8[0] = 0;
  v4 = [v2 initForReadingFromData:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_22BA0FB6C();

    swift_willThrow();
  }

  return v4;
}

void sub_22B99F1C0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_22B9349C8(&qword_27D8D5588, &qword_22BA17598);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  sub_22B9358B4(a1, a1[3]);
  sub_22B99F598();
  sub_22BA10D8C();
  if (v2)
  {
    sub_22B936C4C(a1);
    return;
  }

  sub_22B9363C8();
  sub_22BA10AFC();
  v9 = v24[0];
  if (*(&v24[0] + 1) >> 60 == 15)
  {
    v21 = *&v24[0];
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    v14 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_22B936A50(v9, *(&v9 + 1));
    v15 = sub_22B99F100(v9, *(&v9 + 1));
    v21 = v9;
    v16 = v15;
    v17 = [v15 decodeObject];

    if (v17)
    {
      sub_22BA107AC();
      swift_unknownObjectRelease();
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
    }

    v24[0] = v22;
    v24[1] = v23;
    if (*(&v23 + 1))
    {
      sub_22B99F640();
      if (swift_dynamicCast())
      {
        v10 = v25;
        v19 = [v25 string];
        v20 = sub_22BA0FFFC();

        sub_22B9359A8(v21, *(&v9 + 1));
        (*(v6 + 8))(v8, v5);
        v11 = v20;
        goto LABEL_7;
      }

      (*(v6 + 8))(v8, v5);
      sub_22B9359A8(v9, *(&v9 + 1));
    }

    else
    {
      (*(v6 + 8))(v8, v5);
      sub_22B9359A8(v9, *(&v9 + 1));
      sub_22B949698(v24);
    }
  }

  v10 = 0;
  v11 = 0;
LABEL_7:

  v12 = v21;
  sub_22B936A3C(v21, *(&v9 + 1));
  v13 = v10;
  sub_22B936C4C(a1);

  sub_22B9359A8(v12, *(&v9 + 1));

  *a2 = v11;
  a2[1] = v9;
  a2[2] = v12;
  a2[3] = *(&v9 + 1);
  a2[4] = v10;
}

unint64_t sub_22B99F598()
{
  result = qword_281416018;
  if (!qword_281416018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281416018);
  }

  return result;
}

unint64_t sub_22B99F5EC()
{
  result = qword_27D8D5590;
  if (!qword_27D8D5590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5590);
  }

  return result;
}

unint64_t sub_22B99F640()
{
  result = qword_27D8D5598;
  if (!qword_27D8D5598)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D8D5598);
  }

  return result;
}

unint64_t sub_22B99F6B0()
{
  result = qword_27D8D55A0;
  if (!qword_27D8D55A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D55A0);
  }

  return result;
}

unint64_t sub_22B99F708()
{
  result = qword_27D8D55A8;
  if (!qword_27D8D55A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D55A8);
  }

  return result;
}

unint64_t sub_22B99F760()
{
  result = qword_281416008;
  if (!qword_281416008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281416008);
  }

  return result;
}

unint64_t sub_22B99F7B8()
{
  result = qword_281416010;
  if (!qword_281416010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281416010);
  }

  return result;
}

uint64_t sub_22B99F80C(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x277D838B0];
  v8[4] = MEMORY[0x277CC9C18];
  v8[0] = a1;
  v8[1] = a2;
  v2 = sub_22B9358B4(v8, MEMORY[0x277D838B0]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_22B9A2CF4(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_22B9A2E30(v3, v4);
    }

    else
    {
      v6 = sub_22B9A2DAC(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_22B936C4C(v8);
  return v6;
}

void sub_22B99F8F8(uint64_t a1, uint64_t a2)
{
  sub_22B9349C8(&qword_27D8D5168, &unk_22BA15230);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22BA13CB0;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  v5 = sub_22BA101DC();

  v6 = IMDMessageRecordCopyMessagesForGUIDs();

  if (v6)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_22B9A3568();
      sub_22BA101EC();
    }
  }
}

uint64_t sub_22B99FA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x2822009F8](sub_22B99FA6C, 0, 0);
}

uint64_t sub_22B99FA6C()
{
  v75 = v0;
  v1 = &unk_28141A000;
  v2 = qword_28141ADC8;
  *(v0 + 72) = qword_28141ADC8;
  if (v2)
  {
    v3 = *(v0 + 40);
    v4 = qword_28141ADD0;
    *(v0 + 80) = qword_28141ADD0;
    v5 = [v3 guid];
    if (v5)
    {
      v8 = v5;
      v9 = sub_22BA0FFFC();
      v11 = v10;

      *(v0 + 88) = v9;
      *(v0 + 96) = v11;
      *(v0 + 104) = *(v4 + 232);
      *(v0 + 112) = (v4 + 232) & 0xFFFFFFFFFFFFLL | 0x55A1000000000000;
      if (qword_281416450 != -1)
      {
        swift_once();
      }

      sub_22BA102EC();
      v12 = sub_22BA1029C();
      v14 = v13;
      v15 = sub_22B9A0280;
LABEL_6:
      v5 = v15;
      v6 = v12;
      v7 = v14;
LABEL_7:

      return MEMORY[0x2822009F8](v5, v6, v7);
    }

    __break(1u);
    goto LABEL_47;
  }

  sub_22B952500();
  v16 = swift_allocError();
  swift_willThrow();
  sub_22B975FD8(12, v16, 0, 0);
  v17 = 0x281414000uLL;
  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 48);
  v19 = sub_22BA0FEFC();
  sub_22B936CA8(v19, qword_28141AD10);
  v20 = v18;
  v21 = sub_22BA0FEDC();
  v22 = sub_22BA1044C();
  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v0 + 48);
  if (v23)
  {
    v73 = v19;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v74[0] = v26;
    *v25 = 136315138;
    v27 = [v24 guid];

    if (!v27)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v28 = sub_22BA0FFFC();
    v30 = v29;

    v31 = sub_22B99153C(v28, v30, v74);

    *(v25 + 4) = v31;
    _os_log_impl(&dword_22B92A000, v21, v22, "Error checking if message item: %s was recently deleted", v25, 0xCu);
    sub_22B936C4C(v26);
    MEMORY[0x23189ADD0](v26, -1, -1);
    MEMORY[0x23189ADD0](v25, -1, -1);

    v1 = &unk_28141A000;
    v17 = 0x281414000;
    v19 = v73;
  }

  else
  {
  }

  v32 = IMDUpdateIMMessageItemWithIMMessageItemForceReplaceReplaceError();
  *(v0 + 120) = v32;
  if (v32)
  {
    v33 = v1[441];
    *(v0 + 128) = v33;
    if (v33)
    {
      v34 = qword_28141ADD0;
      *(v0 + 136) = qword_28141ADD0;
      *(v0 + 144) = *(v34 + 144);
      *(v0 + 152) = (v34 + 144) & 0xFFFFFFFFFFFFLL | 0x3082000000000000;
      if (qword_281416450 != -1)
      {
        swift_once();
      }

      sub_22BA102EC();
      v35 = sub_22BA1029C();
      v7 = v36;
      *(v0 + 160) = v35;
      *(v0 + 168) = v36;
      v5 = sub_22B9A0A0C;
      v6 = v35;
      goto LABEL_7;
    }

    v37 = swift_allocError();
    swift_willThrow();
    sub_22B975FD8(14, v37, 0, 0);
    if (*(v17 + 3352) != -1)
    {
      swift_once();
    }

    v38 = *(v0 + 48);
    sub_22B936CA8(v19, qword_28141AD10);
    v39 = v38;
    v40 = sub_22BA0FEDC();
    v41 = sub_22BA1044C();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = v19;
      v43 = *(v0 + 48);
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      *(v44 + 4) = v43;
      *v45 = v43;
      v46 = v43;
      v19 = v42;
      _os_log_impl(&dword_22B92A000, v40, v41, "Error updating existing message item: %@", v44, 0xCu);
      sub_22B95DEF0(v45);
      v47 = v45;
      v17 = 0x281414000uLL;
      MEMORY[0x23189ADD0](v47, -1, -1);
      MEMORY[0x23189ADD0](v44, -1, -1);
    }

    v48 = *(v0 + 64);
    if (v48)
    {
      v49 = v1[441];
      *(v0 + 208) = v49;
      if (v49)
      {
        v50 = qword_28141ADD0;
        *(v0 + 216) = qword_28141ADD0;
        if (qword_2814161B8 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v51 = qword_28141ADF8;
        if (*(qword_28141ADF8 + 16) && (v52 = sub_22B990A58(*(v0 + 56), v48), (v53 & 1) != 0))
        {
          v54 = *(*(v51 + 56) + 8 * v52);
        }

        else
        {
          v54 = -1;
        }

        *(v0 + 224) = v54;
        swift_endAccess();
        *(v0 + 232) = *(v50 + 80);
        *(v0 + 240) = (v50 + 80) & 0xFFFFFFFFFFFFLL | 0x6675000000000000;
        if (qword_281416450 != -1)
        {
          swift_once();
        }

        sub_22BA102EC();
        v12 = sub_22BA1029C();
        v14 = v55;
        v15 = sub_22B9A13CC;
        goto LABEL_6;
      }

      v56 = swift_allocError();
      swift_willThrow();
      sub_22B975FD8(15, v56, 0, 0);
      if (*(v17 + 3352) != -1)
      {
        swift_once();
      }

      v57 = *(v0 + 48);
      sub_22B936CA8(v19, qword_28141AD10);
      v58 = v57;
      v59 = sub_22BA0FEDC();
      v60 = sub_22BA1044C();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = *(v0 + 48);
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v74[0] = v63;
        *v62 = 136315138;
        v64 = [v61 guid];

        if (!v64)
        {
LABEL_48:
          __break(1u);
          return MEMORY[0x2822009F8](v5, v6, v7);
        }

        v65 = *(v0 + 120);
        v66 = sub_22BA0FFFC();
        v68 = v67;

        v69 = sub_22B99153C(v66, v68, v74);

        *(v62 + 4) = v69;
        _os_log_impl(&dword_22B92A000, v59, v60, "Error re-associating existing message item: %s", v62, 0xCu);
        sub_22B936C4C(v63);
        MEMORY[0x23189ADD0](v63, -1, -1);
        MEMORY[0x23189ADD0](v62, -1, -1);
      }

      else
      {
        v70 = *(v0 + 48);
      }
    }

    else
    {
    }
  }

  v71 = *(v0 + 8);

  return v71();
}

uint64_t sub_22B9A0280()
{
  *(v0 + 248) = (*(v0 + 104))(*(v0 + 88), *(v0 + 96)) & 1;

  return MEMORY[0x2822009F8](sub_22B9A0308, 0, 0);
}

uint64_t sub_22B9A0308()
{
  v61 = v0;
  if (*(v0 + 248) != 1)
  {
    v18 = IMDUpdateIMMessageItemWithIMMessageItemForceReplaceReplaceError();
    *(v0 + 120) = v18;
    if (!v18)
    {
      goto LABEL_16;
    }

    v19 = qword_28141ADC8;
    *(v0 + 128) = qword_28141ADC8;
    if (v19)
    {
      v20 = qword_28141ADD0;
      *(v0 + 136) = qword_28141ADD0;
      *(v0 + 144) = *(v20 + 144);
      *(v0 + 152) = (v20 + 144) & 0xFFFFFFFFFFFFLL | 0x3082000000000000;
      if (qword_281416450 != -1)
      {
        swift_once();
      }

      sub_22BA102EC();
      v21 = sub_22BA1029C();
      v13 = v22;
      *(v0 + 160) = v21;
      *(v0 + 168) = v22;
      v11 = sub_22B9A0A0C;
      v12 = v21;
    }

    else
    {
      sub_22B952500();
      v25 = swift_allocError();
      swift_willThrow();
      sub_22B975FD8(14, v25, 0, 0);
      if (qword_281414D18 != -1)
      {
        swift_once();
      }

      v26 = *(v0 + 48);
      v27 = sub_22BA0FEFC();
      sub_22B936CA8(v27, qword_28141AD10);
      v28 = v26;
      v29 = sub_22BA0FEDC();
      v30 = sub_22BA1044C();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = *(v0 + 48);
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *v32 = 138412290;
        *(v32 + 4) = v31;
        *v33 = v31;
        v34 = v31;
        _os_log_impl(&dword_22B92A000, v29, v30, "Error updating existing message item: %@", v32, 0xCu);
        sub_22B95DEF0(v33);
        MEMORY[0x23189ADD0](v33, -1, -1);
        MEMORY[0x23189ADD0](v32, -1, -1);
      }

      v35 = *(v0 + 64);
      if (!v35)
      {

        goto LABEL_16;
      }

      v36 = qword_28141ADC8;
      *(v0 + 208) = qword_28141ADC8;
      if (!v36)
      {
        v45 = swift_allocError();
        swift_willThrow();
        sub_22B975FD8(15, v45, 0, 0);
        if (qword_281414D18 != -1)
        {
          swift_once();
        }

        v46 = *(v0 + 48);
        sub_22B936CA8(v27, qword_28141AD10);
        v47 = v46;
        v48 = sub_22BA0FEDC();
        v49 = sub_22BA1044C();
        if (!os_log_type_enabled(v48, v49))
        {
          v59 = *(v0 + 48);

          goto LABEL_16;
        }

        v50 = *(v0 + 48);
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v60[0] = v52;
        *v51 = 136315138;
        v53 = [v50 guid];

        if (v53)
        {
          v54 = *(v0 + 120);
          v55 = sub_22BA0FFFC();
          v57 = v56;

          v58 = sub_22B99153C(v55, v57, v60);

          *(v51 + 4) = v58;
          _os_log_impl(&dword_22B92A000, v48, v49, "Error re-associating existing message item: %s", v51, 0xCu);
          sub_22B936C4C(v52);
          MEMORY[0x23189ADD0](v52, -1, -1);
          MEMORY[0x23189ADD0](v51, -1, -1);

          goto LABEL_16;
        }

        goto LABEL_42;
      }

      v37 = qword_28141ADD0;
      *(v0 + 216) = qword_28141ADD0;
      if (qword_2814161B8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v38 = qword_28141ADF8;
      if (*(qword_28141ADF8 + 16) && (v39 = sub_22B990A58(*(v0 + 56), v35), (v40 & 1) != 0))
      {
        v41 = *(*(v38 + 56) + 8 * v39);
      }

      else
      {
        v41 = -1;
      }

      *(v0 + 224) = v41;
      swift_endAccess();
      *(v0 + 232) = *(v37 + 80);
      *(v0 + 240) = (v37 + 80) & 0xFFFFFFFFFFFFLL | 0x6675000000000000;
      if (qword_281416450 != -1)
      {
        swift_once();
      }

      sub_22BA102EC();
      v42 = sub_22BA1029C();
      v44 = v43;
      v11 = sub_22B9A13CC;
      v12 = v42;
      v13 = v44;
    }

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_22BA0FEFC();
  sub_22B936CA8(v2, qword_28141AD10);
  v3 = v1;
  v4 = sub_22BA0FEDC();
  v5 = sub_22BA1042C();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 40);
  if (!v6)
  {

    goto LABEL_16;
  }

  v8 = swift_slowAlloc();
  v9 = swift_slowAlloc();
  v60[0] = v9;
  *v8 = 136315138;
  v10 = [v7 guid];

  if (!v10)
  {
    __break(1u);
LABEL_42:
    __break(1u);
    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  v14 = sub_22BA0FFFC();
  v16 = v15;

  v17 = sub_22B99153C(v14, v16, v60);

  *(v8 + 4) = v17;
  _os_log_impl(&dword_22B92A000, v4, v5, "Not importing %s as it was recently deleted", v8, 0xCu);
  sub_22B936C4C(v9);
  MEMORY[0x23189ADD0](v9, -1, -1);
  MEMORY[0x23189ADD0](v8, -1, -1);

LABEL_16:
  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_22B9A0A0C()
{
  (*(v0 + 144))(*(v0 + 120));

  return MEMORY[0x2822009F8](sub_22B9A0A80, 0, 0);
}

uint64_t sub_22B9A0A80()
{
  v46 = v0;
  v1 = *(v0 + 120);
  v2 = [*(v0 + 48) notificationIDSTokenURI];
  [v1 setNotificationIDSTokenURI_];

  v3 = qword_28141ADC8;
  *(v0 + 176) = qword_28141ADC8;
  if (v3)
  {
    v4 = qword_28141ADD0;
    *(v0 + 184) = qword_28141ADD0;
    *(v0 + 192) = *(v4 + 160);
    *(v0 + 200) = (v4 + 160) & 0xFFFFFFFFFFFFLL | 0xD00E000000000000;
    v5 = *(v0 + 160);
    v6 = *(v0 + 168);
    v7 = sub_22B9A0FCC;
LABEL_3:

    return MEMORY[0x2822009F8](v7, v5, v6);
  }

  sub_22B952500();
  v8 = swift_allocError();
  swift_willThrow();
  sub_22B975FD8(14, v8, 0, 0);
  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 48);
  v10 = sub_22BA0FEFC();
  sub_22B936CA8(v10, qword_28141AD10);
  v11 = v9;
  v12 = sub_22BA0FEDC();
  v13 = sub_22BA1044C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 48);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v14;
    *v16 = v14;
    v17 = v14;
    _os_log_impl(&dword_22B92A000, v12, v13, "Error updating existing message item: %@", v15, 0xCu);
    sub_22B95DEF0(v16);
    MEMORY[0x23189ADD0](v16, -1, -1);
    MEMORY[0x23189ADD0](v15, -1, -1);
  }

  v18 = *(v0 + 64);
  if (v18)
  {
    v19 = qword_28141ADC8;
    *(v0 + 208) = qword_28141ADC8;
    if (v19)
    {
      v20 = qword_28141ADD0;
      *(v0 + 216) = qword_28141ADD0;
      if (qword_2814161B8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v21 = qword_28141ADF8;
      if (*(qword_28141ADF8 + 16) && (v22 = sub_22B990A58(*(v0 + 56), v18), (v23 & 1) != 0))
      {
        v24 = *(*(v21 + 56) + 8 * v22);
      }

      else
      {
        v24 = -1;
      }

      *(v0 + 224) = v24;
      swift_endAccess();
      *(v0 + 232) = *(v20 + 80);
      *(v0 + 240) = (v20 + 80) & 0xFFFFFFFFFFFFLL | 0x6675000000000000;
      if (qword_281416450 != -1)
      {
        swift_once();
      }

      sub_22BA102EC();
      v25 = sub_22BA1029C();
      v27 = v26;
      v7 = sub_22B9A13CC;
      v5 = v25;
      v6 = v27;
      goto LABEL_3;
    }

    v28 = swift_allocError();
    swift_willThrow();
    sub_22B975FD8(15, v28, 0, 0);
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v29 = *(v0 + 48);
    sub_22B936CA8(v10, qword_28141AD10);
    v30 = v29;
    v31 = sub_22BA0FEDC();
    v32 = sub_22BA1044C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = *(v0 + 48);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v45 = v35;
      *v34 = 136315138;
      v36 = [v33 guid];

      if (!v36)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v7, v5, v6);
      }

      v37 = *(v0 + 120);
      v38 = sub_22BA0FFFC();
      v40 = v39;

      v41 = sub_22B99153C(v38, v40, &v45);

      *(v34 + 4) = v41;
      _os_log_impl(&dword_22B92A000, v31, v32, "Error re-associating existing message item: %s", v34, 0xCu);
      sub_22B936C4C(v35);
      MEMORY[0x23189ADD0](v35, -1, -1);
      MEMORY[0x23189ADD0](v34, -1, -1);
    }

    else
    {
      v42 = *(v0 + 48);
    }
  }

  else
  {
  }

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_22B9A0FCC()
{
  (*(v0 + 192))();

  return MEMORY[0x2822009F8](sub_22B9A103C, 0, 0);
}

uint64_t sub_22B9A103C()
{
  v33 = v0;
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = qword_28141ADC8;
    *(v0 + 208) = qword_28141ADC8;
    if (v2)
    {
      v3 = qword_28141ADD0;
      *(v0 + 216) = qword_28141ADD0;
      if (qword_2814161B8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v4 = qword_28141ADF8;
      if (*(qword_28141ADF8 + 16) && (v5 = sub_22B990A58(*(v0 + 56), v1), (v6 & 1) != 0))
      {
        v7 = *(*(v4 + 56) + 8 * v5);
      }

      else
      {
        v7 = -1;
      }

      *(v0 + 224) = v7;
      swift_endAccess();
      *(v0 + 232) = *(v3 + 80);
      *(v0 + 240) = (v3 + 80) & 0xFFFFFFFFFFFFLL | 0x6675000000000000;
      if (qword_281416450 != -1)
      {
        swift_once();
      }

      sub_22BA102EC();
      v8 = sub_22BA1029C();
      v10 = v9;
      v11 = sub_22B9A13CC;
      v12 = v8;
      v13 = v10;

      return MEMORY[0x2822009F8](v11, v12, v13);
    }

    sub_22B952500();
    v14 = swift_allocError();
    swift_willThrow();
    sub_22B975FD8(15, v14, 0, 0);
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 48);
    v16 = sub_22BA0FEFC();
    sub_22B936CA8(v16, qword_28141AD10);
    v17 = v15;
    v18 = sub_22BA0FEDC();
    v19 = sub_22BA1044C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = *(v0 + 48);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v32 = v22;
      *v21 = 136315138;
      v23 = [v20 guid];

      if (!v23)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v11, v12, v13);
      }

      v24 = *(v0 + 120);
      v25 = sub_22BA0FFFC();
      v27 = v26;

      v28 = sub_22B99153C(v25, v27, &v32);

      *(v21 + 4) = v28;
      _os_log_impl(&dword_22B92A000, v18, v19, "Error re-associating existing message item: %s", v21, 0xCu);
      sub_22B936C4C(v22);
      MEMORY[0x23189ADD0](v22, -1, -1);
      MEMORY[0x23189ADD0](v21, -1, -1);
    }

    else
    {
      v29 = *(v0 + 48);
    }
  }

  else
  {
  }

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_22B9A13CC()
{
  (*(v0 + 232))(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 224));

  return MEMORY[0x2822009F8](sub_22B9A1448, 0, 0);
}

uint64_t sub_22B9A1448()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B9A14C8()
{
  v1 = IMDCreateIMDMessageRecordRefFromIMMessageItem();
  *(v0 + 24) = v1;
  if (!v1)
  {
    goto LABEL_12;
  }

  v2 = v1;
  v3 = [*(v0 + 16) isFromMe];
  v4 = *(v0 + 16);
  if (!v3)
  {
    v5 = [v4 sender];
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v5 = [v4 handle];
  if (!v5)
  {
LABEL_11:

LABEL_12:
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v14 = sub_22BA0FEFC();
    sub_22B936CA8(v14, qword_28141AD10);
    v15 = sub_22BA0FEDC();
    v16 = sub_22BA1044C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_22B92A000, v15, v16, "Could not get message record ref or handle during IMMessageItem creation", v17, 2u);
      MEMORY[0x23189ADD0](v17, -1, -1);
    }

    goto LABEL_16;
  }

LABEL_4:
  v6 = v5;
  v7 = sub_22BA0FFFC();
  v9 = v8;

  *(v0 + 32) = v9;
  *(v0 + 40) = v7;
  v10 = qword_28141ADC8;
  *(v0 + 48) = qword_28141ADC8;
  if (v10)
  {
    v11 = qword_28141ADD0;
    *(v0 + 56) = qword_28141ADD0;
    *(v0 + 64) = *(v11 + 152);
    *(v0 + 72) = (v11 + 152) & 0xFFFFFFFFFFFFLL | 0x9C22000000000000;
    if (qword_281416450 != -1)
    {
      swift_once();
    }

    sub_22BA102EC();
    v13 = sub_22BA1029C();
    *(v0 + 80) = v13;
    *(v0 + 88) = v12;

    return MEMORY[0x2822009F8](sub_22B9A189C, v13, v12);
  }

  sub_22B952500();
  v19 = swift_allocError();
  swift_willThrow();
  sub_22B975FD8(10, v19, 0, 0);
  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v20 = sub_22BA0FEFC();
  sub_22B936CA8(v20, qword_28141AD10);
  v21 = v19;
  v15 = sub_22BA0FEDC();
  v22 = sub_22BA1044C();

  v23 = os_log_type_enabled(v15, v22);
  v24 = *(v0 + 24);
  if (!v23)
  {

    goto LABEL_17;
  }

  v25 = swift_slowAlloc();
  v26 = swift_slowAlloc();
  *v25 = 138412290;
  v27 = v19;
  v28 = _swift_stdlib_bridgeErrorToNSError();
  *(v25 + 4) = v28;
  *v26 = v28;
  _os_log_impl(&dword_22B92A000, v15, v22, "Could not create IMMessageItem %@", v25, 0xCu);
  sub_22B95DEF0(v26);
  MEMORY[0x23189ADD0](v26, -1, -1);
  MEMORY[0x23189ADD0](v25, -1, -1);

LABEL_16:
LABEL_17:
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_22B9A189C()
{
  *(v0 + 96) = (*(v0 + 64))(*(v0 + 24), *(v0 + 40), *(v0 + 32));

  return MEMORY[0x2822009F8](sub_22B9A1924, 0, 0);
}

uint64_t sub_22B9A1924()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  *(v0 + 104) = v1;
  if (v1)
  {
    v2 = qword_28141ADC8;
    *(v0 + 112) = qword_28141ADC8;
    if (v2)
    {
      v3 = qword_28141ADD0;
      *(v0 + 120) = qword_28141ADD0;
      *(v0 + 128) = *(v3 + 144);
      *(v0 + 136) = (v3 + 144) & 0xFFFFFFFFFFFFLL | 0x3082000000000000;
      v4 = *(v0 + 80);
      v5 = *(v0 + 88);

      return MEMORY[0x2822009F8](sub_22B9A1C58, v4, v5);
    }

    v12 = *(v0 + 96);
    sub_22B952500();
    v13 = swift_allocError();
    swift_willThrow();

    sub_22B975FD8(10, v13, 0, 0);
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v14 = sub_22BA0FEFC();
    sub_22B936CA8(v14, qword_28141AD10);
    v15 = v13;
    v7 = sub_22BA0FEDC();
    v16 = sub_22BA1044C();

    v17 = os_log_type_enabled(v7, v16);
    v18 = *(v0 + 24);
    if (!v17)
    {

      goto LABEL_16;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    v21 = v13;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 4) = v22;
    *v20 = v22;
    _os_log_impl(&dword_22B92A000, v7, v16, "Could not create IMMessageItem %@", v19, 0xCu);
    sub_22B95DEF0(v20);
    MEMORY[0x23189ADD0](v20, -1, -1);
    MEMORY[0x23189ADD0](v19, -1, -1);
  }

  else
  {

    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v6 = sub_22BA0FEFC();
    sub_22B936CA8(v6, qword_28141AD10);
    v7 = sub_22BA0FEDC();
    v8 = sub_22BA1044C();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 24);
    if (v9)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_22B92A000, v7, v8, "Nil result message during IMMessageItem creation", v11, 2u);
      MEMORY[0x23189ADD0](v11, -1, -1);
    }
  }

LABEL_16:
  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_22B9A1C58()
{
  (*(v0 + 128))(*(v0 + 104));

  return MEMORY[0x2822009F8](sub_22B9A1CCC, 0, 0);
}

uint64_t sub_22B9A1CCC()
{
  v1 = qword_28141ADC8;
  v0[18] = qword_28141ADC8;
  if (v1)
  {
    v2 = qword_28141ADD0;
    v0[19] = qword_28141ADD0;
    v0[20] = *(v2 + 160);
    v0[21] = (v2 + 160) & 0xFFFFFFFFFFFFLL | 0xD00E000000000000;
    v3 = v0[10];
    v4 = v0[11];

    return MEMORY[0x2822009F8](sub_22B9A1F18, v3, v4);
  }

  else
  {
    v5 = v0[12];
    sub_22B952500();
    v6 = swift_allocError();
    swift_willThrow();

    sub_22B975FD8(10, v6, 0, 0);
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v7 = sub_22BA0FEFC();
    sub_22B936CA8(v7, qword_28141AD10);
    v8 = v6;
    v9 = sub_22BA0FEDC();
    v10 = sub_22BA1044C();

    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[3];
    if (v11)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = v6;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_22B92A000, v9, v10, "Could not create IMMessageItem %@", v13, 0xCu);
      sub_22B95DEF0(v14);
      MEMORY[0x23189ADD0](v14, -1, -1);
      MEMORY[0x23189ADD0](v13, -1, -1);
    }

    else
    {
    }

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_22B9A1F18()
{
  (*(v0 + 160))();

  return MEMORY[0x2822009F8](sub_22B9A1F88, 0, 0);
}

uint64_t sub_22B9A1F88()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B9A1FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x2822009F8](sub_22B9A2014, 0, 0);
}

uint64_t sub_22B9A2014()
{
  v44 = v0;

  v1 = qword_28141ADC8;
  v0[9] = qword_28141ADC8;
  if (v1)
  {
    v2 = qword_28141ADD0;
    v0[10] = qword_28141ADD0;
    v0[11] = *(v2 + 160);
    v0[12] = (v2 + 160) & 0xFFFFFFFFFFFFLL | 0xD00E000000000000;
    if (qword_281416450 != -1)
    {
      swift_once();
    }

    sub_22BA102EC();
    v3 = sub_22BA1029C();
    v5 = v4;
    v6 = sub_22B9A2588;
LABEL_5:
    v7 = v6;
    v8 = v3;
    v9 = v5;

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  sub_22B952500();
  v10 = swift_allocError();
  swift_willThrow();
  sub_22B975FD8(13, v10, 0, 0);
  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v11 = sub_22BA0FEFC();
  sub_22B936CA8(v11, qword_28141AD10);
  v12 = v10;
  v13 = sub_22BA0FEDC();
  v14 = sub_22BA1044C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    v17 = v10;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v18;
    *v16 = v18;
    _os_log_impl(&dword_22B92A000, v13, v14, "Could not update stamp: %@", v15, 0xCu);
    sub_22B95DEF0(v16);
    MEMORY[0x23189ADD0](v16, -1, -1);
    MEMORY[0x23189ADD0](v15, -1, -1);

    v19 = v0[8];
    if (!v19)
    {
      goto LABEL_30;
    }
  }

  else
  {

    v19 = v0[8];
    if (!v19)
    {
      goto LABEL_30;
    }
  }

  v20 = qword_28141ADC8;
  v0[13] = qword_28141ADC8;
  if (v20)
  {
    v21 = qword_28141ADD0;
    v0[14] = qword_28141ADD0;
    if (qword_2814161B8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v22 = qword_28141ADF8;
    if (*(qword_28141ADF8 + 16) && (v23 = sub_22B990A58(v0[7], v19), (v24 & 1) != 0))
    {
      v25 = *(*(v22 + 56) + 8 * v23);
    }

    else
    {
      v25 = -1;
    }

    v0[15] = v25;
    swift_endAccess();
    v0[16] = *(v21 + 80);
    v0[17] = (v21 + 80) & 0xFFFFFFFFFFFFLL | 0x6675000000000000;
    if (qword_281416450 != -1)
    {
      swift_once();
    }

    sub_22BA102EC();
    v3 = sub_22BA1029C();
    v5 = v26;
    v6 = sub_22B9A2968;
    goto LABEL_5;
  }

  v27 = swift_allocError();
  swift_willThrow();
  sub_22B975FD8(15, v27, 0, 0);
  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v28 = v0[6];
  sub_22B936CA8(v11, qword_28141AD10);
  v29 = v28;
  v30 = sub_22BA0FEDC();
  v31 = sub_22BA1044C();
  v32 = os_log_type_enabled(v30, v31);
  v33 = v0[6];
  if (v32)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v43 = v35;
    *v34 = 136315138;
    v36 = [v33 guid];

    if (!v36)
    {
      __break(1u);
      return MEMORY[0x2822009F8](v7, v8, v9);
    }

    v37 = sub_22BA0FFFC();
    v39 = v38;

    v40 = sub_22B99153C(v37, v39, &v43);

    *(v34 + 4) = v40;
    _os_log_impl(&dword_22B92A000, v30, v31, "Error re-associating existing item: %s", v34, 0xCu);
    sub_22B936C4C(v35);
    MEMORY[0x23189ADD0](v35, -1, -1);
    MEMORY[0x23189ADD0](v34, -1, -1);
  }

  else
  {
  }

LABEL_30:
  v41 = v0[1];

  return v41();
}

uint64_t sub_22B9A2588()
{
  (*(v0 + 88))();

  return MEMORY[0x2822009F8](sub_22B9A25F8, 0, 0);
}

uint64_t sub_22B9A25F8()
{
  v32 = v0;
  v1 = v0[8];
  if (v1)
  {
    v2 = qword_28141ADC8;
    v0[13] = qword_28141ADC8;
    if (v2)
    {
      v3 = qword_28141ADD0;
      v0[14] = qword_28141ADD0;
      if (qword_2814161B8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v4 = qword_28141ADF8;
      if (*(qword_28141ADF8 + 16) && (v5 = sub_22B990A58(v0[7], v1), (v6 & 1) != 0))
      {
        v7 = *(*(v4 + 56) + 8 * v5);
      }

      else
      {
        v7 = -1;
      }

      v0[15] = v7;
      swift_endAccess();
      v0[16] = *(v3 + 80);
      v0[17] = (v3 + 80) & 0xFFFFFFFFFFFFLL | 0x6675000000000000;
      if (qword_281416450 != -1)
      {
        swift_once();
      }

      sub_22BA102EC();
      v8 = sub_22BA1029C();
      v10 = v9;
      v11 = sub_22B9A2968;
      v12 = v8;
      v13 = v10;

      return MEMORY[0x2822009F8](v11, v12, v13);
    }

    sub_22B952500();
    v14 = swift_allocError();
    swift_willThrow();
    sub_22B975FD8(15, v14, 0, 0);
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v15 = v0[6];
    v16 = sub_22BA0FEFC();
    sub_22B936CA8(v16, qword_28141AD10);
    v17 = v15;
    v18 = sub_22BA0FEDC();
    v19 = sub_22BA1044C();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[6];
    if (v20)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v31 = v23;
      *v22 = 136315138;
      v24 = [v21 guid];

      if (!v24)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v11, v12, v13);
      }

      v25 = sub_22BA0FFFC();
      v27 = v26;

      v28 = sub_22B99153C(v25, v27, &v31);

      *(v22 + 4) = v28;
      _os_log_impl(&dword_22B92A000, v18, v19, "Error re-associating existing item: %s", v22, 0xCu);
      sub_22B936C4C(v23);
      MEMORY[0x23189ADD0](v23, -1, -1);
      MEMORY[0x23189ADD0](v22, -1, -1);
    }

    else
    {
    }
  }

  v29 = v0[1];

  return v29();
}

uint64_t sub_22B9A2968()
{
  (*(v0 + 128))(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 120));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B9A29FC()
{
  v1 = qword_28141ADC8;
  v0[3] = qword_28141ADC8;
  if (v1)
  {
    v2 = qword_28141ADD0;
    v0[4] = qword_28141ADD0;
    v0[5] = *(v2 + 160);
    v0[6] = (v2 + 160) & 0xFFFFFFFFFFFFLL | 0xD00E000000000000;
    if (qword_281416450 != -1)
    {
      swift_once();
    }

    sub_22BA102EC();
    v4 = sub_22BA1029C();

    return MEMORY[0x2822009F8](sub_22B9A2C8C, v4, v3);
  }

  else
  {
    sub_22B952500();
    v5 = swift_allocError();
    swift_willThrow();
    sub_22B975FD8(11, v5, 0, 0);
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v6 = sub_22BA0FEFC();
    sub_22B936CA8(v6, qword_28141AD10);
    v7 = v5;
    v8 = sub_22BA0FEDC();
    v9 = sub_22BA1044C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = v5;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_22B92A000, v8, v9, "Could not update stamp: %@", v10, 0xCu);
      sub_22B95DEF0(v11);
      MEMORY[0x23189ADD0](v11, -1, -1);
      MEMORY[0x23189ADD0](v10, -1, -1);
    }

    else
    {
    }

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_22B9A2C8C()
{
  (*(v0 + 40))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B9A2CF4(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_22B9A2DAC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_22BA0FA5C();
  swift_allocObject();
  result = sub_22BA0FA1C();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_22B9A2E30(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_22BA0FA5C();
  swift_allocObject();
  result = sub_22BA0FA1C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_22BA0FC7C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

void sub_22B9A2EAC(unint64_t a1, unint64_t a2, char a3)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = sub_22BA0FFCC();
    IMDKVPersistValueForKey();

    v15 = sub_22BA0FFCC();
    IMDKVPersistValueForKey();
  }

  else
  {
    v16 = bswap64(a1);
    v5 = sub_22B99F80C(&v16, &v17);
    v7 = v6;
    v16 = bswap64(a2);
    v8 = sub_22B99F80C(&v16, &v17);
    v10 = v9;
    v11 = sub_22BA0FFCC();
    v12 = sub_22BA0FC8C();
    IMDKVPersistValueForKey();

    v13 = sub_22BA0FFCC();
    v14 = sub_22BA0FC8C();
    IMDKVPersistValueForKey();

    sub_22B9359BC(v8, v10);
    sub_22B9359BC(v5, v7);
  }
}

unint64_t sub_22B9A3088()
{
  v0 = sub_22BA0FFCC();
  v1 = IMDKVValueForKey();

  if (!v1)
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v12 = sub_22BA0FEFC();
    sub_22B936CA8(v12, qword_28141AD40);
    v13 = sub_22BA0FEDC();
    v14 = sub_22BA1044C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v41 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_22B99153C(0xD000000000000013, 0x800000022BA1DC10, &v41);
      _os_log_impl(&dword_22B92A000, v13, v14, "No row present in kvtable for key name %s", v15, 0xCu);
      sub_22B936C4C(v16);
      MEMORY[0x23189ADD0](v16, -1, -1);
      MEMORY[0x23189ADD0](v15, -1, -1);
    }

    return 0;
  }

  v2 = sub_22BA0FCAC();
  v4 = v3;

  v5 = sub_22BA0FFCC();
  v6 = IMDKVValueForKey();

  if (!v6)
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v17 = sub_22BA0FEFC();
    sub_22B936CA8(v17, qword_28141AD40);
    v18 = sub_22BA0FEDC();
    v19 = sub_22BA1044C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v41 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_22B99153C(0xD000000000000013, 0x800000022BA1DC30, &v41);
      _os_log_impl(&dword_22B92A000, v18, v19, "No row present in kvtable for key name %s", v20, 0xCu);
      sub_22B936C4C(v21);
      MEMORY[0x23189ADD0](v21, -1, -1);
      MEMORY[0x23189ADD0](v20, -1, -1);
    }

    sub_22B9359BC(v2, v4);

    return 0;
  }

  v7 = sub_22BA0FCAC();
  v9 = v8;

  v10 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v10 != 2)
    {
      v11 = 0;
      goto LABEL_28;
    }

    v22 = *(v2 + 16);
    v23 = sub_22BA0FA2C();
    if (!v23)
    {
LABEL_48:
      sub_22BA0FA3C();
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v24 = v23;
    v25 = sub_22BA0FA4C();
    if (!__OFSUB__(v22, v25))
    {
      v26 = (v22 - v25 + v24);
      sub_22BA0FA3C();
      if (!v26)
      {
        goto LABEL_49;
      }

LABEL_26:
      v11 = bswap64(*v26);
      goto LABEL_28;
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (!v10)
  {
    v11 = bswap64(v2);
LABEL_28:
    v31 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v31 != 2)
      {
        goto LABEL_40;
      }

      v32 = *(v7 + 16);
      v33 = sub_22BA0FA2C();
      if (!v33)
      {
LABEL_50:
        sub_22BA0FA3C();
        __break(1u);
        goto LABEL_51;
      }

      v34 = v33;
      v35 = sub_22BA0FA4C();
      if (__OFSUB__(v32, v35))
      {
        goto LABEL_45;
      }

      v36 = v32 - v35 + v34;
      sub_22BA0FA3C();
      if (v36)
      {
LABEL_40:
        sub_22B9359BC(v7, v9);
        sub_22B9359BC(v2, v4);
        return v11;
      }

      __break(1u);
    }

    else if (!v31)
    {
      goto LABEL_40;
    }

    if (v7 <= v7 >> 32)
    {
      v37 = sub_22BA0FA2C();
      if (!v37)
      {
LABEL_52:
        result = sub_22BA0FA3C();
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v38 = v37;
      v39 = sub_22BA0FA4C();
      if (!__OFSUB__(v7, v39))
      {
        v40 = v7 - v39 + v38;
        result = sub_22BA0FA3C();
        if (v40)
        {
          goto LABEL_40;
        }

        goto LABEL_53;
      }

      goto LABEL_47;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v2 > v2 >> 32)
  {
    __break(1u);
    goto LABEL_43;
  }

  v27 = sub_22BA0FA2C();
  if (!v27)
  {
LABEL_51:
    sub_22BA0FA3C();
    __break(1u);
    goto LABEL_52;
  }

  v28 = v27;
  v29 = sub_22BA0FA4C();
  if (__OFSUB__(v2, v29))
  {
    goto LABEL_46;
  }

  v26 = (v2 - v29 + v28);
  result = sub_22BA0FA3C();
  if (v26)
  {
    goto LABEL_26;
  }

LABEL_54:
  __break(1u);
  return result;
}

unint64_t sub_22B9A3568()
{
  result = qword_281414B48;
  if (!qword_281414B48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281414B48);
  }

  return result;
}

uint64_t sub_22B9A35B4(uint64_t a1, int a2)
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

uint64_t sub_22B9A35FC(uint64_t result, int a2, int a3)
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

uint64_t sub_22B9A3658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22B9A367C, 0, 0);
}

uint64_t sub_22B9A367C()
{
  v1 = v0[5];
  v2 = v0[2];
  sub_22B9349C8(&qword_27D8D4F60, &unk_22BA17970);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22BA172B0;
  sub_22BA082E0(*(v1 + 16));
  v4 = objc_allocWithZone(MEMORY[0x277CBC5E8]);
  v5 = sub_22BA0FFCC();

  v6 = [v4 initWithZoneName_];

  v7 = [v6 zoneID];
  *(v3 + 32) = v7;
  v8 = objc_allocWithZone(MEMORY[0x277CBC3D0]);
  sub_22B951A54(0, &qword_281414B80, 0x277CBC5F8);
  v9 = sub_22BA101DC();

  v10 = [v8 initWithRecordZoneIDs_];
  v0[6] = v10;

  v11 = swift_allocObject();
  v0[7] = v11;
  *(v11 + 16) = 1;
  v12 = (v2 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity);
  v13 = objc_allocWithZone(MEMORY[0x277CBC4F0]);
  v14 = v10;
  v15 = [v13 init];
  [v15 setQualityOfService_];
  [v15 setAllowsCellularAccess_];
  v16 = v12[3];
  v17 = v12[4];
  sub_22B9358B4(v12, v16);
  v18 = (*(v17 + 8))(v16, v17);
  if (v18)
  {
    v19 = v18;
    [v15 setAllowsCellularAccess_];
    [v15 setXPCActivity_];
    swift_unknownObjectRelease();
  }

  v20 = v0[4];
  [v14 setConfiguration_];

  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v11;
  swift_unknownObjectRetain();

  sub_22BA105FC();
  v22 = swift_task_alloc();
  v0[8] = v22;
  *(v22 + 16) = v14;
  *(v22 + 24) = v11;
  *(v22 + 32) = v26;
  v23 = swift_task_alloc();
  v0[9] = v23;
  *v23 = v0;
  v23[1] = sub_22B9A39FC;
  v24 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 11, 0, 0, 0xD000000000000028, 0x800000022BA1DC70, sub_22B9A7030, v22, v24);
}

uint64_t sub_22B9A39FC()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_22B9A3B88;
  }

  else
  {

    v2 = sub_22B9A3B18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B9A3B18()
{

  v1 = *(v0 + 88);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_22B9A3B88()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_22B9A3C04(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_22B9A3C24, 0, 0);
}

uint64_t sub_22B9A3C24()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_syncDatabase + 8);
  ObjectType = swift_getObjectType();
  v7 = (*(v1 + 64) + **(v1 + 64));
  v3 = swift_task_alloc();
  v0[4] = v3;
  v4 = type metadata accessor for RemoteRecord();
  *v3 = v0;
  v3[1] = sub_22B94FC08;
  v5 = v0[2];

  return v7(v5, sub_22B9A3D94, 0, v4, &off_283F57740, ObjectType, v1);
}

uint64_t sub_22B9A3DCC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 40);
  v6 = *(v2 + 48);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22B947814;

  return sub_22B9A5408(a1, a2, v7, v6);
}

void sub_22B9A3E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22B951A54(0, &unk_27D8D55F0, 0x277CBC490);
  sub_22B9349C8(&qword_27D8D4F60, &unk_22BA17970);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22BA172B0;
  sub_22BA082E0(*(v4 + 16));
  v8 = objc_allocWithZone(MEMORY[0x277CBC5E8]);
  v9 = sub_22BA0FFCC();

  v10 = [v8 initWithZoneName_];

  *(v7 + 32) = v10;
  v11 = sub_22BA1062C();
  v12 = (a1 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity);
  v13 = objc_allocWithZone(MEMORY[0x277CBC4F0]);
  v14 = v11;
  v15 = [v13 init];
  [v15 setQualityOfService_];
  [v15 setAllowsCellularAccess_];
  v17 = v12[3];
  v16 = v12[4];
  sub_22B9358B4(v12, v17);
  v18 = (*(v16 + 8))(v17, v16);
  if (v18)
  {
    v19 = v18;
    [v15 setAllowsCellularAccess_];
    [v15 setXPCActivity_];
    swift_unknownObjectRelease();
  }

  [v14 setConfiguration_];

  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;

  sub_22BA1061C();
  v21 = (a1 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudDatabase);
  v22 = *(a1 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudDatabase + 24);
  v23 = *(a1 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudDatabase + 32);
  sub_22B9358B4(v21, v22);
  (*(v23 + 8))(v14, v22, v23);
}

void sub_22B9A4108(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v36 = a3;
  v8 = sub_22B9349C8(&qword_27D8D53C8, &unk_22BA18460);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v35 - v11;
  v13 = swift_allocObject();
  v14 = a2[5];
  *(v13 + 80) = a2[4];
  *(v13 + 96) = v14;
  v15 = *(a2 + 12);
  v16 = a2[1];
  *(v13 + 16) = *a2;
  *(v13 + 32) = v16;
  v17 = a2[3];
  *(v13 + 48) = a2[2];
  *(v13 + 64) = v17;
  *(v13 + 112) = v15;
  *(v13 + 120) = a3;
  *(v13 + 128) = a4;
  (*(v9 + 16))(v12, a1, v8);
  v18 = a2[5];
  v43 = a2[4];
  v44 = v18;
  v45 = *(a2 + 12);
  v19 = a2[1];
  v39 = *a2;
  v40 = v19;
  v20 = a2[3];
  v41 = a2[2];
  v42 = v20;
  v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v22 = (v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  (*(v9 + 32))(v23 + v21, v12, v8);
  v24 = v23 + v22;
  v25 = v44;
  *(v24 + 64) = v43;
  *(v24 + 80) = v25;
  *(v24 + 96) = v45;
  v26 = v40;
  *v24 = v39;
  *(v24 + 16) = v26;
  v27 = v42;
  *(v24 + 32) = v41;
  *(v24 + 48) = v27;
  v28 = (v23 + ((v22 + 111) & 0xFFFFFFFFFFFFFFF8));
  v29 = v36;
  v30 = v37;
  *v28 = v36;
  v28[1] = v30;
  sub_22B951748(a2, v38);
  swift_unknownObjectRetain();
  sub_22B951748(a2, v38);
  swift_unknownObjectRetain();
  v31 = sub_22B9A7124(sub_22B9889BC, v13, sub_22B9A703C, v23);

  v32 = (v29 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudDatabase);
  v33 = *(v29 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudDatabase + 24);
  v34 = v32[4];
  sub_22B9358B4(v32, v33);
  (*(v34 + 8))(v31, v33, v34);
}

uint64_t sub_22B9A43B4(void *a1, char a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_22B9349C8(&qword_27D8D53C8, &unk_22BA18460);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v69 - v14;
  if ((a2 & 1) == 0)
  {
    return sub_22BA102BC();
  }

  v74 = a5;
  type metadata accessor for Code(0);
  *&v76 = 26;
  sub_22B9A7424();
  if ((sub_22BA0FA6C() & 1) == 0)
  {
    *&v76 = 28;
    if ((sub_22BA0FA6C() & 1) == 0)
    {
      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v28 = sub_22BA0FEFC();
      sub_22B936CA8(v28, qword_28141AD40);
      sub_22B951748(a4, &v76);
      sub_22B930C44(a1);
      v29 = sub_22BA0FEDC();
      v30 = sub_22BA1044C();
      sub_22B930C58(a1);
      if (os_log_type_enabled(v29, v30))
      {
        v73 = v12;
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *&v76 = v33;
        *v31 = 136315394;
        v34 = *(a4 + 16);
        if (v34 > 4)
        {
          v61 = 0x800000022BA1C160;
          v62 = 0x800000022BA1C180;
          v63 = 0xD000000000000015;
          if (v34 != 8)
          {
            v63 = 0xD000000000000023;
            v62 = 0x800000022BA1C1A0;
          }

          if (v34 == 7)
          {
            v63 = 0xD000000000000012;
          }

          else
          {
            v61 = v62;
          }

          v64 = 0x800000022BA1C120;
          v65 = 0xD000000000000014;
          if (v34 == 5)
          {
            v65 = 0xD00000000000001CLL;
          }

          else
          {
            v64 = 0x800000022BA1C140;
          }

          if (*(a4 + 16) <= 6u)
          {
            v40 = v65;
          }

          else
          {
            v40 = v63;
          }

          if (*(a4 + 16) <= 6u)
          {
            v41 = v64;
          }

          else
          {
            v41 = v61;
          }
        }

        else
        {
          v35 = 0x616E614D74616863;
          v36 = 0xEF656E6F5A656574;
          v37 = 0x800000022BA1C0C0;
          v38 = 0x800000022BA1C0E0;
          v39 = 0xD000000000000015;
          if (v34 != 3)
          {
            v39 = 0xD000000000000011;
            v38 = 0x800000022BA1C100;
          }

          if (v34 == 2)
          {
            v39 = 0xD000000000000012;
          }

          else
          {
            v37 = v38;
          }

          if (*(a4 + 16))
          {
            v35 = 0xD000000000000010;
            v36 = 0x800000022BA1C0A0;
          }

          if (*(a4 + 16) <= 1u)
          {
            v40 = v35;
          }

          else
          {
            v40 = v39;
          }

          if (*(a4 + 16) <= 1u)
          {
            v41 = v36;
          }

          else
          {
            v41 = v37;
          }
        }

        sub_22B96F8A4(a4);
        v66 = sub_22B99153C(v40, v41, &v76);

        *(v31 + 4) = v66;
        *(v31 + 12) = 2112;
        v67 = a1;
        v68 = _swift_stdlib_bridgeErrorToNSError();
        *(v31 + 14) = v68;
        *v32 = v68;
        _os_log_impl(&dword_22B92A000, v29, v30, "Failed counting records in %s: %@)", v31, 0x16u);
        sub_22B936BEC(v32, &qword_27D8D4CD0, qword_22BA14360);
        MEMORY[0x23189ADD0](v32, -1, -1);
        sub_22B936C4C(v33);
        MEMORY[0x23189ADD0](v33, -1, -1);
        MEMORY[0x23189ADD0](v31, -1, -1);
      }

      else
      {

        sub_22B96F8A4(a4);
      }

      return sub_22BA102BC();
    }
  }

  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v16 = sub_22BA0FEFC();
  sub_22B936CA8(v16, qword_28141AD40);
  sub_22B951748(a4, &v76);
  sub_22B930C44(a1);
  v17 = sub_22BA0FEDC();
  v18 = sub_22BA1046C();
  sub_22B930C58(a1);
  if (os_log_type_enabled(v17, v18))
  {
    v71 = a6;
    v73 = v12;
    v72 = a3;
    v19 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *&v76 = v70;
    *v19 = 136315394;
    v20 = *(a4 + 16);
    if (v20 > 4)
    {
      v42 = 0x800000022BA1C160;
      v43 = 0x800000022BA1C180;
      v44 = 0xD000000000000015;
      if (v20 != 8)
      {
        v44 = 0xD000000000000023;
        v43 = 0x800000022BA1C1A0;
      }

      if (v20 == 7)
      {
        v44 = 0xD000000000000012;
      }

      else
      {
        v42 = v43;
      }

      v45 = 0x800000022BA1C120;
      v46 = 0xD000000000000014;
      if (v20 == 5)
      {
        v46 = 0xD00000000000001CLL;
      }

      else
      {
        v45 = 0x800000022BA1C140;
      }

      if (*(a4 + 16) <= 6u)
      {
        v26 = v46;
      }

      else
      {
        v26 = v44;
      }

      if (*(a4 + 16) <= 6u)
      {
        v27 = v45;
      }

      else
      {
        v27 = v42;
      }
    }

    else
    {
      v21 = 0x616E614D74616863;
      v22 = 0xEF656E6F5A656574;
      v23 = 0x800000022BA1C0C0;
      v24 = 0x800000022BA1C0E0;
      v25 = 0xD000000000000015;
      if (v20 != 3)
      {
        v25 = 0xD000000000000011;
        v24 = 0x800000022BA1C100;
      }

      if (v20 == 2)
      {
        v25 = 0xD000000000000012;
      }

      else
      {
        v23 = v24;
      }

      if (*(a4 + 16))
      {
        v21 = 0xD000000000000010;
        v22 = 0x800000022BA1C0A0;
      }

      if (*(a4 + 16) <= 1u)
      {
        v26 = v21;
      }

      else
      {
        v26 = v25;
      }

      if (*(a4 + 16) <= 1u)
      {
        v27 = v22;
      }

      else
      {
        v27 = v23;
      }
    }

    sub_22B96F8A4(a4);
    v47 = sub_22B99153C(v26, v27, &v76);

    *(v19 + 4) = v47;
    *(v19 + 12) = 2112;
    v48 = a1;
    v49 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v49;
    v50 = v69;
    *v69 = v49;
    _os_log_impl(&dword_22B92A000, v17, v18, "Zone not found %s: %@), creating", v19, 0x16u);
    sub_22B936BEC(v50, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v50, -1, -1);
    v51 = v70;
    sub_22B936C4C(v70);
    MEMORY[0x23189ADD0](v51, -1, -1);
    MEMORY[0x23189ADD0](v19, -1, -1);

    a3 = v72;
    v12 = v73;
    a6 = v71;
  }

  else
  {

    sub_22B96F8A4(a4);
  }

  v52 = a4[5];
  v80 = a4[4];
  v81 = v52;
  v82 = *(a4 + 12);
  v53 = a4[1];
  v76 = *a4;
  v77 = v53;
  v54 = a4[3];
  v78 = a4[2];
  v79 = v54;
  (*(v13 + 16))(v15, a3, v12);
  v55 = (*(v13 + 80) + 120) & ~*(v13 + 80);
  v56 = swift_allocObject();
  v57 = v81;
  *(v56 + 80) = v80;
  *(v56 + 96) = v57;
  *(v56 + 112) = v82;
  v58 = v77;
  *(v56 + 16) = v76;
  *(v56 + 32) = v58;
  v59 = v79;
  *(v56 + 48) = v78;
  *(v56 + 64) = v59;
  (*(v13 + 32))(v56 + v55, v15, v12);
  sub_22B951748(a4, v75);
  sub_22B9A3E94(v74, a6, sub_22B9A747C, v56);
}

uint64_t sub_22B9A4CA8(void *a1, char a2, uint64_t a3)
{
  if (a2)
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v5 = sub_22BA0FEFC();
    sub_22B936CA8(v5, qword_28141AD40);
    sub_22B951748(a3, &v51);
    sub_22B973C70(a1, 1);
    v6 = sub_22BA0FEDC();
    v7 = sub_22BA1046C();
    sub_22B97721C(a1, 1);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v51 = v10;
      *v8 = 136315394;
      v11 = *(a3 + 16);
      if (v11 > 4)
      {
        v32 = 0x800000022BA1C160;
        v33 = 0x800000022BA1C180;
        v34 = 0xD000000000000015;
        if (v11 != 8)
        {
          v34 = 0xD000000000000023;
          v33 = 0x800000022BA1C1A0;
        }

        if (v11 == 7)
        {
          v34 = 0xD000000000000012;
        }

        else
        {
          v32 = v33;
        }

        v35 = 0x800000022BA1C120;
        v36 = 0xD000000000000014;
        if (v11 == 5)
        {
          v36 = 0xD00000000000001CLL;
        }

        else
        {
          v35 = 0x800000022BA1C140;
        }

        if (*(a3 + 16) <= 6u)
        {
          v17 = v36;
        }

        else
        {
          v17 = v34;
        }

        if (*(a3 + 16) <= 6u)
        {
          v18 = v35;
        }

        else
        {
          v18 = v32;
        }
      }

      else
      {
        v12 = 0x616E614D74616863;
        v13 = 0xEF656E6F5A656574;
        v14 = 0x800000022BA1C0C0;
        v15 = 0x800000022BA1C0E0;
        v16 = 0xD000000000000015;
        if (v11 != 3)
        {
          v16 = 0xD000000000000011;
          v15 = 0x800000022BA1C100;
        }

        if (v11 == 2)
        {
          v16 = 0xD000000000000012;
        }

        else
        {
          v14 = v15;
        }

        if (*(a3 + 16))
        {
          v12 = 0xD000000000000010;
          v13 = 0x800000022BA1C0A0;
        }

        if (*(a3 + 16) <= 1u)
        {
          v17 = v12;
        }

        else
        {
          v17 = v16;
        }

        if (*(a3 + 16) <= 1u)
        {
          v18 = v13;
        }

        else
        {
          v18 = v14;
        }
      }

      sub_22B96F8A4(a3);
      v37 = sub_22B99153C(v17, v18, &v51);

      *(v8 + 4) = v37;
      *(v8 + 12) = 2112;
      v38 = a1;
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v39;
      *v9 = v39;
      _os_log_impl(&dword_22B92A000, v6, v7, "Failed to create zone %s %@", v8, 0x16u);
      sub_22B936BEC(v9, &qword_27D8D4CD0, qword_22BA14360);
      MEMORY[0x23189ADD0](v9, -1, -1);
      sub_22B936C4C(v10);
      MEMORY[0x23189ADD0](v10, -1, -1);
      MEMORY[0x23189ADD0](v8, -1, -1);
    }

    else
    {

      sub_22B96F8A4(a3);
    }

    v51 = 0;
    v52 = 0xE000000000000000;
    sub_22B9349C8(&qword_27D8D55E0, &unk_22BA135D0);
    sub_22BA10A2C();
    v40 = v51;
    v41 = v52;
    sub_22B9A7528();
    v42 = swift_allocError();
    *v43 = v40;
    *(v43 + 8) = v41;
    *(v43 + 16) = 2;
    v51 = v42;
    sub_22B9349C8(&qword_27D8D53C8, &unk_22BA18460);
    return sub_22BA102AC();
  }

  else
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v19 = sub_22BA0FEFC();
    sub_22B936CA8(v19, qword_28141AD40);
    sub_22B951748(a3, &v51);
    v20 = sub_22BA0FEDC();
    v21 = sub_22BA1046C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v51 = v23;
      *v22 = 136315138;
      v24 = *(a3 + 16);
      if (v24 > 4)
      {
        v45 = 0x800000022BA1C160;
        v46 = 0x800000022BA1C180;
        v47 = 0xD000000000000015;
        if (v24 != 8)
        {
          v47 = 0xD000000000000023;
          v46 = 0x800000022BA1C1A0;
        }

        if (v24 == 7)
        {
          v47 = 0xD000000000000012;
        }

        else
        {
          v45 = v46;
        }

        v48 = 0x800000022BA1C120;
        v49 = 0xD000000000000014;
        if (v24 == 5)
        {
          v49 = 0xD00000000000001CLL;
        }

        else
        {
          v48 = 0x800000022BA1C140;
        }

        if (*(a3 + 16) <= 6u)
        {
          v30 = v49;
        }

        else
        {
          v30 = v47;
        }

        if (*(a3 + 16) <= 6u)
        {
          v31 = v48;
        }

        else
        {
          v31 = v45;
        }
      }

      else
      {
        v25 = 0x616E614D74616863;
        v26 = 0xEF656E6F5A656574;
        v27 = 0x800000022BA1C0C0;
        v28 = 0x800000022BA1C0E0;
        v29 = 0xD000000000000015;
        if (v24 != 3)
        {
          v29 = 0xD000000000000011;
          v28 = 0x800000022BA1C100;
        }

        if (v24 == 2)
        {
          v29 = 0xD000000000000012;
        }

        else
        {
          v27 = v28;
        }

        if (*(a3 + 16))
        {
          v25 = 0xD000000000000010;
          v26 = 0x800000022BA1C0A0;
        }

        if (*(a3 + 16) <= 1u)
        {
          v30 = v25;
        }

        else
        {
          v30 = v29;
        }

        if (*(a3 + 16) <= 1u)
        {
          v31 = v26;
        }

        else
        {
          v31 = v27;
        }
      }

      sub_22B96F8A4(a3);
      v50 = sub_22B99153C(v30, v31, &v51);

      *(v22 + 4) = v50;
      _os_log_impl(&dword_22B92A000, v20, v21, "Successfully created zone %s", v22, 0xCu);
      sub_22B936C4C(v23);
      MEMORY[0x23189ADD0](v23, -1, -1);
      MEMORY[0x23189ADD0](v22, -1, -1);
    }

    else
    {

      sub_22B96F8A4(a3);
    }

    sub_22B9349C8(&qword_27D8D53C8, &unk_22BA18460);
    return sub_22BA102BC();
  }
}

uint64_t sub_22B9A5314(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = *a2;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_22B943E68;

  return v7(v4);
}

uint64_t sub_22B9A5408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[80] = a4;
  v4[79] = a3;
  v4[78] = a2;
  v4[77] = a1;
  return MEMORY[0x2822009F8](sub_22B9A5434, 0, 0);
}

uint64_t sub_22B9A5434()
{
  v1 = *(v0 + 632);
  v2 = v1[2];
  *(v0 + 648) = v2;
  if (v2)
  {
    *(v0 + 656) = 0;
    v49 = *(v0 + 616);
    v3 = sub_22B9358B4(v1 + 4, v1[7]);
    v5 = *(v3 + 1);
    v4 = *(v3 + 2);
    *(v0 + 120) = *v3;
    *(v0 + 136) = v5;
    *(v0 + 152) = v4;
    v6 = v3[12];
    v8 = *(v3 + 4);
    v7 = *(v3 + 5);
    *(v0 + 168) = *(v3 + 3);
    *(v0 + 184) = v8;
    *(v0 + 200) = v7;
    *(v0 + 216) = v6;
    v9 = *(v0 + 136);
    *(v0 + 224) = *(v0 + 120);
    *(v0 + 240) = v9;
    v10 = *(v0 + 168);
    *(v0 + 256) = *(v0 + 152);
    *(v0 + 272) = v10;
    v11 = *(v0 + 200);
    *(v0 + 288) = *(v0 + 184);
    *(v0 + 304) = v11;
    *(v0 + 320) = v6;
    v12 = swift_task_alloc();
    *(v0 + 664) = v12;
    *(v12 + 16) = v0 + 224;
    *(v12 + 24) = v49;
    v13 = swift_task_alloc();
    *(v0 + 672) = v13;
    *v13 = v0;
    v13[1] = sub_22B9A5A70;
    v14 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v13, 0, 0, 0xD000000000000014, 0x800000022BA1DC50, sub_22B9A6C28, v12, v14);
  }

  else
  {
    *(v0 + 432) = 0;
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0u;
    *(v0 + 688) = 0;
    sub_22B9A6C74(v0 + 400, v0 + 480);
    if (*(v0 + 504))
    {
      sub_22B96FB68((v0 + 480), v0 + 440);
      v15 = sub_22B9358B4((v0 + 440), *(v0 + 464));
      v17 = *(v15 + 1);
      v16 = *(v15 + 2);
      *(v0 + 16) = *v15;
      *(v0 + 32) = v17;
      *(v0 + 48) = v16;
      v19 = *(v15 + 4);
      v18 = *(v15 + 5);
      v20 = *(v15 + 3);
      *(v0 + 112) = v15[12];
      *(v0 + 80) = v19;
      *(v0 + 96) = v18;
      *(v0 + 64) = v20;
      v21 = swift_task_alloc();
      *(v0 + 696) = v21;
      *v21 = v0;
      v21[1] = sub_22B9A6244;
      v22 = *(v0 + 640);
      v23 = *(v0 + 624);
      v24 = *(v0 + 616);

      return sub_22B9A3658(v24, v23, v22);
    }

    else
    {
      sub_22B936BEC(v0 + 480, &qword_27D8D55B0, &qword_22BA178E0);
      v25 = *(v0 + 616);
      v26 = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
      *(v0 + 712) = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
      v27 = *(*sub_22B9358B4((v25 + v26), *(v25 + v26 + 24)) + 24);
      *(v0 + 720) = *MEMORY[0x277D19A70];
      if ([v27 BOOLForKey_])
      {
        v50 = *(v0 + 616);
        v28 = v50 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_syncDatabase;
        v29 = *(v50 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_syncDatabase);
        *(v0 + 728) = v29;
        v30 = *(v28 + 8);
        sub_22B9349C8(&qword_27D8D55B8, &qword_22BA178E8);
        inited = swift_initStackObject();
        *(v0 + 736) = inited;
        *(inited + 16) = v29;
        *(inited + 24) = v30;
        sub_22B9349C8(&qword_27D8D55C0, qword_22BA178F0);
        v32 = swift_initStackObject();
        *(v32 + 16) = xmmword_22BA13CB0;
        KeyPath = swift_getKeyPath();
        swift_unknownObjectRetain_n();
        v34 = sub_22B9A7818(KeyPath, 2);

        *(v32 + 32) = v34;
        v35 = sub_22B9A7DB0(v32);
        swift_setDeallocating();
        sub_22B936BEC(v32 + 32, &qword_27D8D55C8, &qword_22BA17930);
        sub_22B9349C8(&unk_27D8D55D0, &qword_22BA17938);
        v36 = swift_initStackObject();
        *(v0 + 744) = v36;

        v37 = MEMORY[0x277D84F90];
        *(v36 + 64) = MEMORY[0x277D84F90];
        *(v36 + 16) = v29;
        *(v36 + 24) = v30;
        *(v36 + 32) = 0;
        *(v36 + 40) = 1;
        v38 = swift_allocObject();
        *(v0 + 752) = v38;
        *(v38 + 24) = 0;
        *(v38 + 32) = 0;
        *(v38 + 16) = v35;
        *(v38 + 40) = 1;
        *(v36 + 48) = &unk_22BA17940;
        *(v36 + 56) = v38;
        v39 = swift_allocObject();
        *(v39 + 16) = v50;
        v40 = swift_allocObject();
        *(v40 + 16) = &unk_22BA17950;
        *(v40 + 24) = v39;
        swift_beginAccess();
        swift_unknownObjectRetain();

        v41 = sub_22B97FF5C(0, 1, 1, v37);
        v43 = v41[2];
        v42 = v41[3];
        if (v43 >= v42 >> 1)
        {
          v41 = sub_22B97FF5C((v42 > 1), v43 + 1, 1, v41);
        }

        *(v0 + 760) = v41;
        v41[2] = v43 + 1;
        v44 = &v41[2 * v43];
        v44[4] = &unk_22BA17960;
        v44[5] = v40;
        *(v36 + 64) = v41;
        swift_endAccess();

        v45 = swift_task_alloc();
        *(v0 + 768) = v45;
        *v45 = v0;
        v45[1] = sub_22B9A6840;

        return sub_22B9A853C();
      }

      else
      {
        sub_22B936BEC(v0 + 400, &qword_27D8D55B0, &qword_22BA178E0);
        v46 = *(v0 + 8);
        v47 = *(v0 + 688);

        return v46(v47, 0);
      }
    }
  }
}

uint64_t sub_22B9A5A70()
{
  *(*v1 + 680) = v0;

  if (v0)
  {
    v2 = sub_22B9A61E0;
  }

  else
  {

    v2 = sub_22B9A5B8C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B9A5B8C()
{
  v1 = *(v0 + 656) + 1;
  if (v1 == *(v0 + 648))
  {
    sub_22B935B38(*(v0 + 632) + 32, v0 + 400);
    *(v0 + 688) = *(v0 + 648);
    sub_22B9A6C74(v0 + 400, v0 + 480);
    if (*(v0 + 504))
    {
      sub_22B96FB68((v0 + 480), v0 + 440);
      v2 = sub_22B9358B4((v0 + 440), *(v0 + 464));
      v4 = *(v2 + 1);
      v3 = *(v2 + 2);
      *(v0 + 16) = *v2;
      *(v0 + 32) = v4;
      *(v0 + 48) = v3;
      v6 = *(v2 + 4);
      v5 = *(v2 + 5);
      v7 = *(v2 + 3);
      *(v0 + 112) = v2[12];
      *(v0 + 80) = v6;
      *(v0 + 96) = v5;
      *(v0 + 64) = v7;
      v8 = swift_task_alloc();
      *(v0 + 696) = v8;
      *v8 = v0;
      v8[1] = sub_22B9A6244;
      v9 = *(v0 + 640);
      v10 = *(v0 + 624);
      v11 = *(v0 + 616);

      return sub_22B9A3658(v11, v10, v9);
    }

    else
    {
      sub_22B936BEC(v0 + 480, &qword_27D8D55B0, &qword_22BA178E0);
      v25 = *(v0 + 616);
      v26 = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
      *(v0 + 712) = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
      v27 = *(*sub_22B9358B4((v25 + v26), *(v25 + v26 + 24)) + 24);
      *(v0 + 720) = *MEMORY[0x277D19A70];
      if ([v27 BOOLForKey_])
      {
        v49 = *(v0 + 616);
        v28 = v49 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_syncDatabase;
        v29 = *(v49 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_syncDatabase);
        *(v0 + 728) = v29;
        v30 = *(v28 + 8);
        sub_22B9349C8(&qword_27D8D55B8, &qword_22BA178E8);
        inited = swift_initStackObject();
        *(v0 + 736) = inited;
        *(inited + 16) = v29;
        *(inited + 24) = v30;
        sub_22B9349C8(&qword_27D8D55C0, qword_22BA178F0);
        v32 = swift_initStackObject();
        *(v32 + 16) = xmmword_22BA13CB0;
        KeyPath = swift_getKeyPath();
        swift_unknownObjectRetain_n();
        v34 = sub_22B9A7818(KeyPath, 2);

        *(v32 + 32) = v34;
        v35 = sub_22B9A7DB0(v32);
        swift_setDeallocating();
        sub_22B936BEC(v32 + 32, &qword_27D8D55C8, &qword_22BA17930);
        sub_22B9349C8(&unk_27D8D55D0, &qword_22BA17938);
        v36 = swift_initStackObject();
        *(v0 + 744) = v36;

        v37 = MEMORY[0x277D84F90];
        *(v36 + 64) = MEMORY[0x277D84F90];
        *(v36 + 16) = v29;
        *(v36 + 24) = v30;
        *(v36 + 32) = 0;
        *(v36 + 40) = 1;
        v38 = swift_allocObject();
        *(v0 + 752) = v38;
        *(v38 + 24) = 0;
        *(v38 + 32) = 0;
        *(v38 + 16) = v35;
        *(v38 + 40) = 1;
        *(v36 + 48) = &unk_22BA17940;
        *(v36 + 56) = v38;
        v39 = swift_allocObject();
        *(v39 + 16) = v49;
        v40 = swift_allocObject();
        *(v40 + 16) = &unk_22BA17950;
        *(v40 + 24) = v39;
        swift_beginAccess();
        swift_unknownObjectRetain();

        v41 = sub_22B97FF5C(0, 1, 1, v37);
        v43 = v41[2];
        v42 = v41[3];
        if (v43 >= v42 >> 1)
        {
          v41 = sub_22B97FF5C((v42 > 1), v43 + 1, 1, v41);
        }

        *(v0 + 760) = v41;
        v41[2] = v43 + 1;
        v44 = &v41[2 * v43];
        v44[4] = &unk_22BA17960;
        v44[5] = v40;
        *(v36 + 64) = v41;
        swift_endAccess();

        v45 = swift_task_alloc();
        *(v0 + 768) = v45;
        *v45 = v0;
        v45[1] = sub_22B9A6840;

        return sub_22B9A853C();
      }

      else
      {
        sub_22B936BEC(v0 + 400, &qword_27D8D55B0, &qword_22BA178E0);
        v46 = *(v0 + 8);
        v47 = *(v0 + 688);

        return v46(v47, 0);
      }
    }
  }

  else
  {
    *(v0 + 656) = v1;
    v48 = *(v0 + 616);
    v13 = sub_22B9358B4((*(v0 + 632) + 40 * v1 + 32), *(*(v0 + 632) + 40 * v1 + 56));
    v15 = *(v13 + 1);
    v14 = *(v13 + 2);
    *(v0 + 120) = *v13;
    *(v0 + 136) = v15;
    *(v0 + 152) = v14;
    v16 = v13[12];
    v18 = *(v13 + 4);
    v17 = *(v13 + 5);
    *(v0 + 168) = *(v13 + 3);
    *(v0 + 184) = v18;
    *(v0 + 200) = v17;
    *(v0 + 216) = v16;
    v19 = *(v0 + 136);
    *(v0 + 224) = *(v0 + 120);
    *(v0 + 240) = v19;
    v20 = *(v0 + 168);
    *(v0 + 256) = *(v0 + 152);
    *(v0 + 272) = v20;
    v21 = *(v0 + 200);
    *(v0 + 288) = *(v0 + 184);
    *(v0 + 304) = v21;
    *(v0 + 320) = v16;
    v22 = swift_task_alloc();
    *(v0 + 664) = v22;
    *(v22 + 16) = v0 + 224;
    *(v22 + 24) = v48;
    v23 = swift_task_alloc();
    *(v0 + 672) = v23;
    *v23 = v0;
    v23[1] = sub_22B9A5A70;
    v24 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v23, 0, 0, 0xD000000000000014, 0x800000022BA1DC50, sub_22B9A6C28, v22, v24);
  }
}

uint64_t sub_22B9A61E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B9A6244(char a1)
{
  v4 = *v2;
  *(*v2 + 704) = v1;

  if (v1)
  {
    v5 = sub_22B9A6B38;
  }

  else
  {
    *(v4 + 792) = a1 & 1;
    v5 = sub_22B9A6370;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22B9A6370()
{
  if (*(v0 + 792))
  {
    v1 = (*(v0 + 616) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState);
    [*(*sub_22B9358B4(v1 v1[3]) + 24)];
    [*(*sub_22B9358B4(v1 v1[3]) + 24)];
    sub_22B936C4C((v0 + 440));
    v2 = *(v0 + 616);
    v3 = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
    *(v0 + 712) = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
    v4 = *(*sub_22B9358B4((v2 + v3), *(v2 + v3 + 24)) + 24);
    *(v0 + 720) = *MEMORY[0x277D19A70];
    if ([v4 BOOLForKey_])
    {
      v27 = *(v0 + 616);
      v5 = v27 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_syncDatabase;
      v6 = *(v27 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_syncDatabase);
      *(v0 + 728) = v6;
      v7 = *(v5 + 8);
      sub_22B9349C8(&qword_27D8D55B8, &qword_22BA178E8);
      inited = swift_initStackObject();
      *(v0 + 736) = inited;
      *(inited + 16) = v6;
      *(inited + 24) = v7;
      sub_22B9349C8(&qword_27D8D55C0, qword_22BA178F0);
      v9 = swift_initStackObject();
      *(v9 + 16) = xmmword_22BA13CB0;
      KeyPath = swift_getKeyPath();
      swift_unknownObjectRetain_n();
      v11 = sub_22B9A7818(KeyPath, 2);

      *(v9 + 32) = v11;
      v12 = sub_22B9A7DB0(v9);
      swift_setDeallocating();
      sub_22B936BEC(v9 + 32, &qword_27D8D55C8, &qword_22BA17930);
      sub_22B9349C8(&unk_27D8D55D0, &qword_22BA17938);
      v13 = swift_initStackObject();
      *(v0 + 744) = v13;

      v14 = MEMORY[0x277D84F90];
      *(v13 + 64) = MEMORY[0x277D84F90];
      *(v13 + 16) = v6;
      *(v13 + 24) = v7;
      *(v13 + 32) = 0;
      *(v13 + 40) = 1;
      v15 = swift_allocObject();
      *(v0 + 752) = v15;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0;
      *(v15 + 16) = v12;
      *(v15 + 40) = 1;
      *(v13 + 48) = &unk_22BA17940;
      *(v13 + 56) = v15;
      v16 = swift_allocObject();
      *(v16 + 16) = v27;
      v17 = swift_allocObject();
      *(v17 + 16) = &unk_22BA17950;
      *(v17 + 24) = v16;
      swift_beginAccess();
      swift_unknownObjectRetain();

      v18 = sub_22B97FF5C(0, 1, 1, v14);
      v20 = v18[2];
      v19 = v18[3];
      if (v20 >= v19 >> 1)
      {
        v18 = sub_22B97FF5C((v19 > 1), v20 + 1, 1, v18);
      }

      *(v0 + 760) = v18;
      v18[2] = v20 + 1;
      v21 = &v18[2 * v20];
      v21[4] = &unk_22BA17960;
      v21[5] = v17;
      *(v13 + 64) = v18;
      swift_endAccess();

      v22 = swift_task_alloc();
      *(v0 + 768) = v22;
      *v22 = v0;
      v22[1] = sub_22B9A6840;

      return sub_22B9A853C();
    }

    else
    {
      sub_22B936BEC(v0 + 400, &qword_27D8D55B0, &qword_22BA178E0);
      v25 = *(v0 + 8);
      v26 = *(v0 + 688);

      return v25(v26, 0);
    }
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277D19D08] code:3 userInfo:0];
    swift_willThrow();
    sub_22B936BEC(v0 + 400, &qword_27D8D55B0, &qword_22BA178E0);
    sub_22B936C4C((v0 + 440));
    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_22B9A6840(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 776) = a1;
  *(v3 + 784) = v1;

  swift_unknownObjectRelease();

  if (v1)
  {
    v4 = sub_22B9A6BB4;
  }

  else
  {
    v4 = sub_22B9A69C0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22B9A69C0()
{
  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v1 = sub_22BA0FEFC();
  sub_22B936CA8(v1, qword_28141AD10);
  v2 = sub_22BA0FEDC();
  v3 = sub_22BA1042C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[97];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_22B92A000, v2, v3, "Found %ld records ready to re-import", v5, 0xCu);
    MEMORY[0x23189ADD0](v5, -1, -1);
  }

  v6 = v0[90];
  v7 = v0[89];
  v8 = v0[77];

  [*(*sub_22B9358B4((v8 + v7) *(v8 + v7 + 24)) + 24)];
  sub_22B936BEC((v0 + 50), &qword_27D8D55B0, &qword_22BA178E0);
  v9 = v0[1];
  v10 = v0[86];

  return v9(v10, 0);
}

uint64_t sub_22B9A6B38()
{
  sub_22B936BEC(v0 + 400, &qword_27D8D55B0, &qword_22BA178E0);
  sub_22B936C4C((v0 + 440));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B9A6BB4()
{
  sub_22B936BEC(v0 + 400, &qword_27D8D55B0, &qword_22BA178E0);
  v1 = *(v0 + 8);

  return v1();
}

__n128 sub_22B9A6C28(uint64_t a1)
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
  sub_22B9A4108(a1, v9, v2, v4);
  return result;
}

uint64_t sub_22B9A6C74(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B9349C8(&qword_27D8D55B0, &qword_22BA178E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B9A6CF0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_22B9A6DB8;

  return sub_22B9A7EE4(a1, a2, v6, v7, v8, v9);
}

uint64_t sub_22B9A6DB8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_22B9A6EB4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B943E68;

  return sub_22B9A3C04(a1, v4);
}

uint64_t sub_22B9A6F5C(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22B945AC8;

  return sub_22B9A5314(a1, a2, v6);
}

uint64_t sub_22B9A703C(void *a1, char a2)
{
  v5 = *(sub_22B9349C8(&qword_27D8D53C8, &unk_22BA18460) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v2 + ((v7 + 111) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = v2 + v7;
  v12 = *(v11 + 80);
  v16[4] = *(v11 + 64);
  v16[5] = v12;
  v17 = *(v11 + 96);
  v13 = *(v11 + 16);
  v16[0] = *v11;
  v16[1] = v13;
  v14 = *(v11 + 48);
  v16[2] = *(v11 + 32);
  v16[3] = v14;
  return sub_22B9A43B4(a1, a2 & 1, v2 + v6, v16, v9, v10);
}

id sub_22B9A7124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = [objc_opt_self() predicateWithValue_];
  sub_22B951A54(0, &qword_281414AA0, 0x277CBC578);
  v10 = v9;
  v11 = sub_22BA106AC();
  v12 = [objc_allocWithZone(MEMORY[0x277CBC590]) initWithQuery_];
  v13 = *(v5 + 16);
  sub_22BA082E0(v13);
  v14 = objc_allocWithZone(MEMORY[0x277CBC5E8]);
  v15 = sub_22BA0FFCC();

  v16 = [v14 initWithZoneName_];

  v17 = [v16 zoneID];
  [v12 setZoneID_];

  sub_22B9349C8(&qword_27D8D5168, &unk_22BA15230);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_22BA13CB0;
  v19 = sub_22BA08430(v13);
  if (v19 <= 2)
  {
    if (!v19)
    {
      v21 = 0x800000022BA1B9C0;
      v22 = 0xD000000000000012;
      v20 = a4;
      goto LABEL_15;
    }

    v20 = a4;
    if (v19 == 1)
    {
      v21 = 0xEF32766465747079;
      v22 = 0x72636E4574616863;
      goto LABEL_15;
    }

    v23 = "MessageEncryptedV3";
    goto LABEL_13;
  }

  if (v19 <= 4)
  {
    v20 = a4;
    if (v19 == 3)
    {
      v21 = 0xEA0000000000746ELL;
      v22 = 0x656D686361747461;
      goto LABEL_15;
    }

    v23 = "recoverableMessage";
LABEL_13:
    v21 = (v23 - 32) | 0x8000000000000000;
    v22 = 0xD000000000000012;
    goto LABEL_15;
  }

  v20 = a4;
  if (v19 == 5)
  {
    v21 = 0xEF31566574616470;
    v22 = 0x556567617373656DLL;
  }

  else
  {
    v21 = 0xE700000000000000;
    v22 = 0x6E776F6E6B6E75;
  }

LABEL_15:
  *(v18 + 32) = v22;
  *(v18 + 40) = v21;
  sub_22BA1048C();
  sub_22B930C20(a1, a2);
  sub_22BA104AC();
  sub_22B930C20(a3, v20);
  sub_22BA1049C();

  return v12;
}

unint64_t sub_22B9A7424()
{
  result = qword_281414BD0;
  if (!qword_281414BD0)
  {
    type metadata accessor for Code(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281414BD0);
  }

  return result;
}

uint64_t sub_22B9A747C(void *a1, char a2)
{
  sub_22B9349C8(&qword_27D8D53C8, &unk_22BA18460);
  v5 = *(v2 + 96);
  v9[4] = *(v2 + 80);
  v9[5] = v5;
  v10 = *(v2 + 112);
  v6 = *(v2 + 32);
  v9[0] = *(v2 + 16);
  v9[1] = v6;
  v7 = *(v2 + 64);
  v9[2] = *(v2 + 48);
  v9[3] = v7;
  return sub_22B9A4CA8(a1, a2 & 1, v9);
}

unint64_t sub_22B9A7528()
{
  result = qword_27D8D55E8;
  if (!qword_27D8D55E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D55E8);
  }

  return result;
}

uint64_t *sub_22B9A758C()
{

  sub_22B979210(v0[8], v0[9]);
  sub_22B979210(v0[11], v0[12]);
  v1 = v0[10];
  v0[10] = 0;

  if (v1)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v2 = *(v1 + 80);
      swift_retain_n();

      v1 = v2;
    }

    while (v2);
  }

  return v0;
}

uint64_t sub_22B9A762C()
{
  sub_22B9A758C();

  return swift_deallocClassInstance();
}

unint64_t sub_22B9A7698()
{
  result = qword_27D8D5608;
  if (!qword_27D8D5608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5608);
  }

  return result;
}

uint64_t ReportCategory.imdCategory.getter(uint64_t result)
{
  if ((result - 1) >= 3)
  {
    result = sub_22BA10C9C();
    __break(1u);
  }

  return result;
}

uint64_t ReportCategory.init(rawValue:)(uint64_t result)
{
  if ((result - 4) < 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0;
  }

  return result;
}

unint64_t sub_22B9A774C()
{
  result = qword_27D8D5610;
  if (!qword_27D8D5610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5610);
  }

  return result;
}

uint64_t *sub_22B9A77A0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result - 4;
  v4 = __CFADD__(v3, 3);
  v5 = v3 < 0xFFFFFFFFFFFFFFFDLL;
  if (!v4)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v5;
  return result;
}

id sub_22B9A77D0@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 statusValue];
  *a2 = result;
  return result;
}

id sub_22B9A7818(uint64_t a1, int a2)
{
  sub_22BA107BC();
  if (v3)
  {
    MEMORY[0x231899730](0x4025203D20, 0xE500000000000000);
    sub_22B9349C8(&qword_27D8D5170, &unk_22BA19630);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_22BA13CB0;
    *(v4 + 56) = MEMORY[0x277D849A8];
    *(v4 + 32) = a2;
    v5 = sub_22BA0FFCC();

    v6 = sub_22BA101DC();

    v7 = [objc_opt_self() predicateWithFormat:v5 argumentArray:v6];

    return v7;
  }

  else
  {
    v9 = [objc_opt_self() predicateWithValue_];

    return v9;
  }
}

void sub_22B9A7968()
{
  KeyPath = swift_getKeyPath();
  v1 = sub_22B9A7818(KeyPath, 0);

  v2 = swift_getKeyPath();
  v3 = sub_22B9A7C48(v2, 0x72636E4574616863, 0xEF32766465747079);

  v4 = swift_getKeyPath();
  v5 = sub_22B9A7C48(v4, 0x656D686361747461, 0xEA0000000000746ELL);

  sub_22B9349C8(&qword_27D8D4F60, &unk_22BA17970);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22BA17B40;
  *(v6 + 32) = v3;
  *(v6 + 40) = v5;
  v7 = objc_allocWithZone(MEMORY[0x277CCA920]);
  sub_22B9A90E8();
  v8 = v3;
  v9 = v5;
  v10 = sub_22BA101DC();

  v11 = [v7 initWithType:2 subpredicates:v10];

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_22BA17B40;
  *(v12 + 32) = v1;
  *(v12 + 40) = v11;
  v13 = objc_allocWithZone(MEMORY[0x277CCA920]);
  v14 = v1;
  v15 = v11;
  v16 = sub_22BA101DC();

  v17 = [v13 initWithType:1 subpredicates:v16];

  qword_28141AD58 = v17;
}

void sub_22B9A7B70(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 recordType];
  if (v3)
  {
    v4 = v3;
    v5 = sub_22BA0FFFC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_22B9A7BD8(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = sub_22BA0FFCC();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setRecordType_];
}

id sub_22B9A7C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BA107BC();
  if (v5)
  {
    MEMORY[0x231899730](0x4025203D20, 0xE500000000000000);
    sub_22B9349C8(&qword_27D8D5170, &unk_22BA19630);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_22BA13CB0;
    *(v6 + 56) = MEMORY[0x277D837D0];
    *(v6 + 32) = a2;
    *(v6 + 40) = a3;

    v7 = sub_22BA0FFCC();

    v8 = sub_22BA101DC();

    v9 = [objc_opt_self() predicateWithFormat:v7 argumentArray:v8];

    return v9;
  }

  else
  {
    v11 = [objc_opt_self() predicateWithValue_];

    return v11;
  }
}

id sub_22B9A7DB0(uint64_t a1)
{
  v2 = [objc_opt_self() predicateWithValue_];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_22B9349C8(&qword_27D8D4F60, &unk_22BA17970);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_22BA17B40;
      *(v6 + 32) = v2;
      *(v6 + 40) = v5;
      v7 = objc_allocWithZone(MEMORY[0x277CCA920]);
      sub_22B9A90E8();
      v8 = v5;
      v9 = sub_22BA101DC();

      v2 = [v7 initWithType:1 subpredicates:v9];

      --v3;
    }

    while (v3);
  }

  return v2;
}

uint64_t sub_22B9A7EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 120) = a6;
  *(v6 + 72) = a4;
  *(v6 + 80) = a5;
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  *(v6 + 48) = a1;
  return MEMORY[0x2822009F8](sub_22B9A7F10, 0, 0);
}

uint64_t sub_22B9A7F10()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v4 = sub_22BA0FFCC();
  v5 = [v3 initWithEntityName_];
  *(v0 + 88) = v5;

  [v5 setPredicate_];
  if (v2)
  {
    v6 = sub_22BA101DC();
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v0 + 120);
  [v5 setRelationshipKeyPathsForPrefetching_];

  if ((v7 & 1) == 0)
  {
    [v5 setFetchLimit_];
  }

  v14 = *(v0 + 56);
  ObjectType = swift_getObjectType();
  v13 = (*(v14 + 40) + **(v14 + 40));
  v9 = swift_task_alloc();
  *(v0 + 96) = v9;
  v10 = type metadata accessor for RemoteRecord();
  *v9 = v0;
  v9[1] = sub_22B9A8114;
  v11 = *(v0 + 56);

  return v13(v5, v10, &off_283F57740, ObjectType, v11);
}

uint64_t sub_22B9A8114(uint64_t a1, char a2)
{
  v5 = *v3;
  *(v5 + 104) = a1;
  *(v5 + 112) = v2;

  if (v2)
  {
    v6 = sub_22B9A84D8;
  }

  else
  {
    *(v5 + 121) = a2;
    v6 = sub_22B9A823C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22B9A823C()
{
  v23 = v0;
  v1 = *(v0 + 104);
  if (*(v0 + 121))
  {
    v2 = v1;
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 104);
    v4 = *(v0 + 64);
    v5 = sub_22BA0FEFC();
    sub_22B936CA8(v5, qword_28141AD40);
    sub_22B9A90D0(v3, 1);
    v6 = v4;
    v7 = sub_22BA0FEDC();
    v8 = sub_22BA1044C();
    sub_22B9A90DC(v3, 1);

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 64);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v10 = 136315394;
      swift_getErrorValue();
      v13 = sub_22B9587B4(*(v0 + 24), *(v0 + 32));
      v15 = sub_22B99153C(v13, v14, &v22);

      *(v10 + 4) = v15;
      *(v10 + 12) = 2112;
      *(v10 + 14) = v9;
      *v11 = v9;
      v16 = v9;
      _os_log_impl(&dword_22B92A000, v7, v8, "Error fetching in QueryBuilder: %s for predicate: %@", v10, 0x16u);
      sub_22B936BEC(v11, &qword_27D8D4CD0, qword_22BA14360);
      MEMORY[0x23189ADD0](v11, -1, -1);
      sub_22B936C4C(v12);
      MEMORY[0x23189ADD0](v12, -1, -1);
      MEMORY[0x23189ADD0](v10, -1, -1);
    }

    v17 = *(v0 + 104);
    v18 = *(v0 + 88);
    swift_willThrow();
    sub_22B9A90DC(v17, 1);

    v19 = *(v0 + 8);

    return v19();
  }

  else
  {

    v21 = *(v0 + 8);

    return v21(v1);
  }
}

uint64_t sub_22B9A84D8()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B9A855C()
{
  v1 = *(v0 + 48);
  v2 = v1[2];
  v3 = v1[3];
  v6 = (v1[6] + *v1[6]);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_22B9A865C;

  return v6(v2, v3);
}

uint64_t sub_22B9A865C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22B9A8790, 0, 0);
  }
}

uint64_t sub_22B9A8790()
{
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(v1 + 64);
  v0[9] = v2;
  v3 = *(v2 + 16);
  v0[10] = v3;

  if (v3)
  {
    v0[11] = 0;
    if (v4[2])
    {
      v5 = v0[8];
      v0[12] = v4[5];
      v6 = v4[4];
      v0[5] = v5;

      v12 = (v6 + *v6);
      v7 = swift_task_alloc();
      v0[13] = v7;
      *v7 = v0;
      v7[1] = sub_22B9A8958;

      return v12();
    }

    __break(1u);
    goto LABEL_12;
  }

  v9 = v0[8];

  if (v9 >> 62)
  {
LABEL_12:
    v10 = sub_22BA1080C();
    goto LABEL_8;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:

  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_22B9A8958()
{
  *(*v1 + 112) = v0;

  if (v0)
  {

    v2 = sub_22B9A8C40;
  }

  else
  {
    v2 = sub_22B9A8A7C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B9A8A7C()
{
  v1 = v0[11];
  v2 = v0[10];

  if (v1 + 1 == v2)
  {
    v4 = v0[8];

    if (v4 >> 62)
    {
      v5 = sub_22BA1080C();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = v0[1];

    return v6(v5);
  }

  else
  {
    v7 = v0[11] + 1;
    v0[11] = v7;
    v8 = v0[9];
    if (v7 >= *(v8 + 16))
    {
      __break(1u);
    }

    else
    {
      v9 = v0[8];
      v10 = v8 + 16 * v7;
      v0[12] = *(v10 + 40);
      v11 = *(v10 + 32);
      v0[5] = v9;

      v13 = (v11 + *v11);
      v12 = swift_task_alloc();
      v0[13] = v12;
      *v12 = v0;
      v12[1] = sub_22B9A8958;

      return v13();
    }
  }

  return result;
}

uint64_t sub_22B9A8C40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B9A8CA4(uint64_t a1, uint64_t a2)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return MEMORY[0x2822009F8](sub_22B9A8CC4, 0, 0);
}

uint64_t sub_22B9A8CC4()
{
  sub_22B9349C8(&qword_27D8D55B8, &qword_22BA178E8);
  v10 = *(v0 + 160);
  inited = swift_initStackObject();
  *(v0 + 176) = inited;
  *(inited + 16) = v10;
  sub_22B9349C8(&qword_27D8D55C0, qword_22BA178F0);
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_22BA13CB0;
  v3 = qword_281414E78;
  swift_unknownObjectRetain();
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_28141AD58;
  v11 = *(v0 + 160);
  *(v2 + 32) = v4;
  v5 = sub_22B9A7DB0(v2);
  swift_setDeallocating();
  sub_22B936BEC(v2 + 32, &qword_27D8D55C8, &qword_22BA17930);
  sub_22B9349C8(&unk_27D8D55D0, &qword_22BA17938);
  v6 = swift_initStackObject();
  *(v0 + 184) = v6;

  *(v6 + 64) = MEMORY[0x277D84F90];
  *(v6 + 16) = v11;
  *(v6 + 32) = 1;
  *(v6 + 40) = 0;
  v7 = swift_allocObject();
  *(v0 + 192) = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = xmmword_22BA17B50;
  *(v7 + 40) = 0;
  *(v6 + 48) = &unk_22BA17940;
  *(v6 + 56) = v7;
  swift_unknownObjectRetain();
  v8 = swift_task_alloc();
  *(v0 + 200) = v8;
  *v8 = v0;
  v8[1] = sub_22B9A8EF8;

  return sub_22B9A853C();
}

uint64_t sub_22B9A8EF8(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 208) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22B9A905C, 0, 0);
  }

  else
  {
    swift_unknownObjectRelease();

    v5 = *(v4 + 8);

    return v5(a1 > 0);
  }
}

uint64_t sub_22B9A905C()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1(0);
}

double sub_22B9A90D0(id a1, char a2)
{
  if (a2)
  {
    v2 = a1;
  }

  else
  {
  }

  return result;
}

void sub_22B9A90DC(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_22B9A90E8()
{
  result = qword_281414B98;
  if (!qword_281414B98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281414B98);
  }

  return result;
}

uint64_t sub_22B9A915C()
{
  KeyPath = swift_getKeyPath();
  v2 = sub_22B9A7C48(KeyPath, 0x72636E4574616863, 0xEF32766465747079);

  v3 = swift_getKeyPath();
  v4 = sub_22B9A7818(v3, 0);

  sub_22B9349C8(&qword_27D8D4F60, &unk_22BA17970);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22BA17B40;
  *(v5 + 32) = v2;
  *(v5 + 40) = v4;
  v6 = objc_allocWithZone(MEMORY[0x277CCA920]);
  sub_22B9A90E8();
  v7 = v2;
  v8 = v4;
  v9 = sub_22BA101DC();

  v10 = [v6 initWithType:1 subpredicates:v9];
  *(v0 + 328) = v10;

  v11 = swift_getKeyPath();
  v12 = sub_22B9A7C48(v11, 0x72636E4574616863, 0xEF32766465747079);

  v13 = swift_getKeyPath();
  v14 = sub_22B9A7818(v13, 1);

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_22BA17B40;
  *(v15 + 32) = v12;
  *(v15 + 40) = v14;
  v16 = objc_allocWithZone(MEMORY[0x277CCA920]);
  v17 = v12;
  v18 = v14;
  v19 = sub_22BA101DC();

  *(v0 + 336) = [v16 initWithType:1 subpredicates:v19];

  if (qword_281416778 != -1)
  {
    swift_once();
  }

  v20 = xmmword_28141AEB0;
  *(v0 + 344) = xmmword_28141AEB0;
  *(v0 + 360) = sub_22B9349C8(&qword_27D8D55B8, &qword_22BA178E8);
  inited = swift_initStackObject();
  *(v0 + 368) = inited;
  *(inited + 16) = v20;
  *(v0 + 376) = sub_22B9349C8(&qword_27D8D55C0, qword_22BA178F0);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_22BA13CB0;
  *(v22 + 32) = v10;
  swift_unknownObjectRetain_n();
  v23 = v10;
  v24 = sub_22B9A7DB0(v22);
  swift_setDeallocating();
  sub_22B936BEC(v22 + 32, &qword_27D8D55C8, &qword_22BA17930);
  *(v0 + 384) = sub_22B9349C8(&unk_27D8D55D0, &qword_22BA17938);
  v25 = swift_initStackObject();
  *(v0 + 392) = v25;

  *(v25 + 64) = MEMORY[0x277D84F90];
  *(v25 + 16) = v20;
  *(v25 + 32) = 0;
  *(v25 + 40) = 1;
  v26 = swift_allocObject();
  *(v0 + 400) = v26;
  *(v26 + 24) = 0;
  *(v26 + 32) = 0;
  *(v26 + 16) = v24;
  *(v26 + 40) = 1;
  *(v25 + 48) = &unk_22BA17C50;
  *(v25 + 56) = v26;
  v27 = swift_task_alloc();
  *(v0 + 408) = v27;
  *v27 = v0;
  v27[1] = sub_22B9A956C;

  return sub_22B9A853C();
}

uint64_t sub_22B9A956C(uint64_t a1)
{
  v3 = *v2;
  v3[38] = v2;
  v3[39] = a1;
  v3[40] = v1;
  v3[52] = v1;

  if (v1)
  {
    v4 = sub_22B9A99F4;
  }

  else
  {
    swift_unknownObjectRelease();

    v4 = sub_22B9A969C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22B9A969C()
{
  v1 = v0[44];
  v3 = v0[42];
  v2 = v0[43];
  inited = swift_initStackObject();
  v0[53] = inited;
  *(inited + 16) = v2;
  *(inited + 24) = v1;
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_22BA13CB0;
  *(v5 + 32) = v3;
  swift_unknownObjectRetain_n();
  v6 = v3;
  v7 = sub_22B9A7DB0(v5);
  swift_setDeallocating();
  sub_22B936BEC(v5 + 32, &qword_27D8D55C8, &qword_22BA17930);

  v8 = swift_initStackObject();
  v0[54] = v8;
  *(v8 + 64) = MEMORY[0x277D84F90];
  *(v8 + 16) = v2;
  *(v8 + 24) = v1;
  *(v8 + 32) = 0;
  *(v8 + 40) = 1;
  v9 = swift_allocObject();
  v0[55] = v9;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  *(v9 + 16) = v7;
  *(v9 + 40) = 1;
  *(v8 + 48) = &unk_22BA17C58;
  *(v8 + 56) = v9;
  v10 = swift_task_alloc();
  v0[56] = v10;
  *v10 = v0;
  v10[1] = sub_22B9A9848;

  return sub_22B9A853C();
}

uint64_t sub_22B9A9848(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 456) = v1;

  if (v1)
  {
    v5 = sub_22B9A9BA8;
  }

  else
  {
    v6 = v4[39];
    swift_unknownObjectRelease();

    v4[58] = a1;
    v4[59] = v6;
    v5 = sub_22B9A9988;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22B9A9988()
{
  v1 = *(v0 + 328);

  v2 = *(v0 + 8);
  v4 = *(v0 + 464);
  v3 = *(v0 + 472);

  return v2(v3, v4);
}

uint64_t sub_22B9A99F4()
{
  v1 = v0[52];
  swift_unknownObjectRelease();

  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v2 = sub_22BA0FEFC();
  sub_22B936CA8(v2, qword_28141AD40);
  v3 = v1;
  v4 = sub_22BA0FEDC();
  v5 = sub_22BA1044C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_22B92A000, v4, v5, "Encountered error fetching sync store chat counts for statistics: %@", v6, 0xCu);
    sub_22B936BEC(v7, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v7, -1, -1);
    MEMORY[0x23189ADD0](v6, -1, -1);
  }

  v11 = v0[41];
  v10 = v0[42];

  swift_willThrow();
  v12 = v0[1];

  return v12();
}

uint64_t sub_22B9A9BA8()
{
  v1 = v0[57];
  swift_unknownObjectRelease();

  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v2 = sub_22BA0FEFC();
  sub_22B936CA8(v2, qword_28141AD40);
  v3 = v1;
  v4 = sub_22BA0FEDC();
  v5 = sub_22BA1044C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_22B92A000, v4, v5, "Encountered error fetching sync store chat counts for statistics: %@", v6, 0xCu);
    sub_22B936BEC(v7, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v7, -1, -1);
    MEMORY[0x23189ADD0](v6, -1, -1);
  }

  v11 = v0[41];
  v10 = v0[42];

  swift_willThrow();
  v12 = v0[1];

  return v12();
}

uint64_t sub_22B9A9D78()
{
  KeyPath = swift_getKeyPath();
  v2 = sub_22B9A7C48(KeyPath, 0xD000000000000012, 0x800000022BA1B9F0);

  v3 = swift_getKeyPath();
  v4 = sub_22B9A7818(v3, 0);

  sub_22B9349C8(&qword_27D8D4F60, &unk_22BA17970);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22BA17B40;
  *(v5 + 32) = v2;
  *(v5 + 40) = v4;
  v6 = objc_allocWithZone(MEMORY[0x277CCA920]);
  sub_22B9A90E8();
  v7 = v2;
  v8 = v4;
  v9 = sub_22BA101DC();

  v10 = [v6 initWithType:1 subpredicates:v9];
  *(v0 + 328) = v10;

  v11 = swift_getKeyPath();
  v12 = sub_22B9A7C48(v11, 0xD000000000000012, 0x800000022BA1B9F0);

  v13 = swift_getKeyPath();
  v14 = sub_22B9A7818(v13, 1);

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_22BA17B40;
  *(v15 + 32) = v12;
  *(v15 + 40) = v14;
  v16 = objc_allocWithZone(MEMORY[0x277CCA920]);
  v17 = v12;
  v18 = v14;
  v19 = sub_22BA101DC();

  *(v0 + 336) = [v16 initWithType:1 subpredicates:v19];

  if (qword_281416778 != -1)
  {
    swift_once();
  }

  v20 = xmmword_28141AEB0;
  *(v0 + 344) = xmmword_28141AEB0;
  *(v0 + 360) = sub_22B9349C8(&qword_27D8D55B8, &qword_22BA178E8);
  inited = swift_initStackObject();
  *(v0 + 368) = inited;
  *(inited + 16) = v20;
  *(v0 + 376) = sub_22B9349C8(&qword_27D8D55C0, qword_22BA178F0);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_22BA13CB0;
  *(v22 + 32) = v10;
  swift_unknownObjectRetain_n();
  v23 = v10;
  v24 = sub_22B9A7DB0(v22);
  swift_setDeallocating();
  sub_22B936BEC(v22 + 32, &qword_27D8D55C8, &qword_22BA17930);
  *(v0 + 384) = sub_22B9349C8(&unk_27D8D55D0, &qword_22BA17938);
  v25 = swift_initStackObject();
  *(v0 + 392) = v25;

  *(v25 + 64) = MEMORY[0x277D84F90];
  *(v25 + 16) = v20;
  *(v25 + 32) = 0;
  *(v25 + 40) = 1;
  v26 = swift_allocObject();
  *(v0 + 400) = v26;
  *(v26 + 24) = 0;
  *(v26 + 32) = 0;
  *(v26 + 16) = v24;
  *(v26 + 40) = 1;
  *(v25 + 48) = &unk_22BA17C38;
  *(v25 + 56) = v26;
  v27 = swift_task_alloc();
  *(v0 + 408) = v27;
  *v27 = v0;
  v27[1] = sub_22B9AA178;

  return sub_22B9A853C();
}

uint64_t sub_22B9AA178(uint64_t a1)
{
  v3 = *v2;
  v3[38] = v2;
  v3[39] = a1;
  v3[40] = v1;
  v3[52] = v1;

  if (v1)
  {
    v4 = sub_22B9ABB98;
  }

  else
  {
    swift_unknownObjectRelease();

    v4 = sub_22B9AA2A8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22B9AA2A8()
{
  v1 = v0[44];
  v3 = v0[42];
  v2 = v0[43];
  inited = swift_initStackObject();
  v0[53] = inited;
  *(inited + 16) = v2;
  *(inited + 24) = v1;
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_22BA13CB0;
  *(v5 + 32) = v3;
  swift_unknownObjectRetain_n();
  v6 = v3;
  v7 = sub_22B9A7DB0(v5);
  swift_setDeallocating();
  sub_22B936BEC(v5 + 32, &qword_27D8D55C8, &qword_22BA17930);

  v8 = swift_initStackObject();
  v0[54] = v8;
  *(v8 + 64) = MEMORY[0x277D84F90];
  *(v8 + 16) = v2;
  *(v8 + 24) = v1;
  *(v8 + 32) = 0;
  *(v8 + 40) = 1;
  v9 = swift_allocObject();
  v0[55] = v9;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  *(v9 + 16) = v7;
  *(v9 + 40) = 1;
  *(v8 + 48) = &unk_22BA17C40;
  *(v8 + 56) = v9;
  v10 = swift_task_alloc();
  v0[56] = v10;
  *v10 = v0;
  v10[1] = sub_22B9AA454;

  return sub_22B9A853C();
}

uint64_t sub_22B9AA454(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 456) = v1;

  if (v1)
  {
    v5 = sub_22B9ABB9C;
  }

  else
  {
    v6 = v4[39];
    swift_unknownObjectRelease();

    v4[58] = a1;
    v4[59] = v6;
    v5 = sub_22B9ABBA4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22B9AA5B0()
{
  KeyPath = swift_getKeyPath();
  v2 = sub_22B9A7C48(KeyPath, 0x656D686361747461, 0xEA0000000000746ELL);

  v3 = swift_getKeyPath();
  v4 = sub_22B9A7818(v3, 0);

  sub_22B9349C8(&qword_27D8D4F60, &unk_22BA17970);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22BA17B40;
  *(v5 + 32) = v2;
  *(v5 + 40) = v4;
  v6 = objc_allocWithZone(MEMORY[0x277CCA920]);
  sub_22B9A90E8();
  v7 = v2;
  v8 = v4;
  v9 = sub_22BA101DC();

  v10 = [v6 initWithType:1 subpredicates:v9];
  *(v0 + 328) = v10;

  v11 = swift_getKeyPath();
  v12 = sub_22B9A7C48(v11, 0x656D686361747461, 0xEA0000000000746ELL);

  v13 = swift_getKeyPath();
  v14 = sub_22B9A7818(v13, 1);

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_22BA17B40;
  *(v15 + 32) = v12;
  *(v15 + 40) = v14;
  v16 = objc_allocWithZone(MEMORY[0x277CCA920]);
  v17 = v12;
  v18 = v14;
  v19 = sub_22BA101DC();

  *(v0 + 336) = [v16 initWithType:1 subpredicates:v19];

  if (qword_281416778 != -1)
  {
    swift_once();
  }

  v20 = xmmword_28141AEB0;
  *(v0 + 344) = xmmword_28141AEB0;
  *(v0 + 360) = sub_22B9349C8(&qword_27D8D55B8, &qword_22BA178E8);
  inited = swift_initStackObject();
  *(v0 + 368) = inited;
  *(inited + 16) = v20;
  *(v0 + 376) = sub_22B9349C8(&qword_27D8D55C0, qword_22BA178F0);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_22BA13CB0;
  *(v22 + 32) = v10;
  swift_unknownObjectRetain_n();
  v23 = v10;
  v24 = sub_22B9A7DB0(v22);
  swift_setDeallocating();
  sub_22B936BEC(v22 + 32, &qword_27D8D55C8, &qword_22BA17930);
  *(v0 + 384) = sub_22B9349C8(&unk_27D8D55D0, &qword_22BA17938);
  v25 = swift_initStackObject();
  *(v0 + 392) = v25;

  *(v25 + 64) = MEMORY[0x277D84F90];
  *(v25 + 16) = v20;
  *(v25 + 32) = 0;
  *(v25 + 40) = 1;
  v26 = swift_allocObject();
  *(v0 + 400) = v26;
  *(v26 + 24) = 0;
  *(v26 + 32) = 0;
  *(v26 + 16) = v24;
  *(v26 + 40) = 1;
  *(v25 + 48) = &unk_22BA17C20;
  *(v25 + 56) = v26;
  v27 = swift_task_alloc();
  *(v0 + 408) = v27;
  *v27 = v0;
  v27[1] = sub_22B9AA9B4;

  return sub_22B9A853C();
}

uint64_t sub_22B9AA9B4(uint64_t a1)
{
  v3 = *v2;
  v3[38] = v2;
  v3[39] = a1;
  v3[40] = v1;
  v3[52] = v1;

  if (v1)
  {
    v4 = sub_22B9ABB98;
  }

  else
  {
    swift_unknownObjectRelease();

    v4 = sub_22B9AAAE4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22B9AAAE4()
{
  v1 = v0[44];
  v3 = v0[42];
  v2 = v0[43];
  inited = swift_initStackObject();
  v0[53] = inited;
  *(inited + 16) = v2;
  *(inited + 24) = v1;
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_22BA13CB0;
  *(v5 + 32) = v3;
  swift_unknownObjectRetain_n();
  v6 = v3;
  v7 = sub_22B9A7DB0(v5);
  swift_setDeallocating();
  sub_22B936BEC(v5 + 32, &qword_27D8D55C8, &qword_22BA17930);

  v8 = swift_initStackObject();
  v0[54] = v8;
  *(v8 + 64) = MEMORY[0x277D84F90];
  *(v8 + 16) = v2;
  *(v8 + 24) = v1;
  *(v8 + 32) = 0;
  *(v8 + 40) = 1;
  v9 = swift_allocObject();
  v0[55] = v9;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  *(v9 + 16) = v7;
  *(v9 + 40) = 1;
  *(v8 + 48) = &unk_22BA17C28;
  *(v8 + 56) = v9;
  v10 = swift_task_alloc();
  v0[56] = v10;
  *v10 = v0;
  v10[1] = sub_22B9AA454;

  return sub_22B9A853C();
}

uint64_t sub_22B9AACAC()
{
  KeyPath = swift_getKeyPath();
  v2 = sub_22B9A7C48(KeyPath, 0x556567617373656DLL, 0xEF31566574616470);

  v3 = swift_getKeyPath();
  v4 = sub_22B9A7818(v3, 0);

  sub_22B9349C8(&qword_27D8D4F60, &unk_22BA17970);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22BA17B40;
  *(v5 + 32) = v2;
  *(v5 + 40) = v4;
  v6 = objc_allocWithZone(MEMORY[0x277CCA920]);
  sub_22B9A90E8();
  v7 = v2;
  v8 = v4;
  v9 = sub_22BA101DC();

  v10 = [v6 initWithType:1 subpredicates:v9];
  *(v0 + 328) = v10;

  v11 = swift_getKeyPath();
  v12 = sub_22B9A7C48(v11, 0x556567617373656DLL, 0xEF31566574616470);

  v13 = swift_getKeyPath();
  v14 = sub_22B9A7818(v13, 1);

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_22BA17B40;
  *(v15 + 32) = v12;
  *(v15 + 40) = v14;
  v16 = objc_allocWithZone(MEMORY[0x277CCA920]);
  v17 = v12;
  v18 = v14;
  v19 = sub_22BA101DC();

  *(v0 + 336) = [v16 initWithType:1 subpredicates:v19];

  if (qword_281416778 != -1)
  {
    swift_once();
  }

  v20 = xmmword_28141AEB0;
  *(v0 + 344) = xmmword_28141AEB0;
  *(v0 + 360) = sub_22B9349C8(&qword_27D8D55B8, &qword_22BA178E8);
  inited = swift_initStackObject();
  *(v0 + 368) = inited;
  *(inited + 16) = v20;
  *(v0 + 376) = sub_22B9349C8(&qword_27D8D55C0, qword_22BA178F0);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_22BA13CB0;
  *(v22 + 32) = v10;
  swift_unknownObjectRetain_n();
  v23 = v10;
  v24 = sub_22B9A7DB0(v22);
  swift_setDeallocating();
  sub_22B936BEC(v22 + 32, &qword_27D8D55C8, &qword_22BA17930);
  *(v0 + 384) = sub_22B9349C8(&unk_27D8D55D0, &qword_22BA17938);
  v25 = swift_initStackObject();
  *(v0 + 392) = v25;

  *(v25 + 64) = MEMORY[0x277D84F90];
  *(v25 + 16) = v20;
  *(v25 + 32) = 0;
  *(v25 + 40) = 1;
  v26 = swift_allocObject();
  *(v0 + 400) = v26;
  *(v26 + 24) = 0;
  *(v26 + 32) = 0;
  *(v26 + 16) = v24;
  *(v26 + 40) = 1;
  *(v25 + 48) = &unk_22BA17C08;
  *(v25 + 56) = v26;
  v27 = swift_task_alloc();
  *(v0 + 408) = v27;
  *v27 = v0;
  v27[1] = sub_22B9AB0BC;

  return sub_22B9A853C();
}

uint64_t sub_22B9AB0BC(uint64_t a1)
{
  v3 = *v2;
  v3[38] = v2;
  v3[39] = a1;
  v3[40] = v1;
  v3[52] = v1;

  if (v1)
  {
    v4 = sub_22B9ABB98;
  }

  else
  {
    swift_unknownObjectRelease();

    v4 = sub_22B9AB1EC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22B9AB1EC()
{
  v1 = v0[44];
  v3 = v0[42];
  v2 = v0[43];
  inited = swift_initStackObject();
  v0[53] = inited;
  *(inited + 16) = v2;
  *(inited + 24) = v1;
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_22BA13CB0;
  *(v5 + 32) = v3;
  swift_unknownObjectRetain_n();
  v6 = v3;
  v7 = sub_22B9A7DB0(v5);
  swift_setDeallocating();
  sub_22B936BEC(v5 + 32, &qword_27D8D55C8, &qword_22BA17930);

  v8 = swift_initStackObject();
  v0[54] = v8;
  *(v8 + 64) = MEMORY[0x277D84F90];
  *(v8 + 16) = v2;
  *(v8 + 24) = v1;
  *(v8 + 32) = 0;
  *(v8 + 40) = 1;
  v9 = swift_allocObject();
  v0[55] = v9;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  *(v9 + 16) = v7;
  *(v9 + 40) = 1;
  *(v8 + 48) = &unk_22BA17C10;
  *(v8 + 56) = v9;
  v10 = swift_task_alloc();
  v0[56] = v10;
  *v10 = v0;
  v10[1] = sub_22B9AA454;

  return sub_22B9A853C();
}

uint64_t sub_22B9AB3B4()
{
  KeyPath = swift_getKeyPath();
  v2 = sub_22B9A7C48(KeyPath, 0xD000000000000012, 0x800000022BA1BA10);

  v3 = swift_getKeyPath();
  v4 = sub_22B9A7818(v3, 0);

  sub_22B9349C8(&qword_27D8D4F60, &unk_22BA17970);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22BA17B40;
  *(v5 + 32) = v2;
  *(v5 + 40) = v4;
  v6 = objc_allocWithZone(MEMORY[0x277CCA920]);
  sub_22B9A90E8();
  v7 = v2;
  v8 = v4;
  v9 = sub_22BA101DC();

  v10 = [v6 initWithType:1 subpredicates:v9];
  *(v0 + 328) = v10;

  v11 = swift_getKeyPath();
  v12 = sub_22B9A7C48(v11, 0xD000000000000012, 0x800000022BA1BA10);

  v13 = swift_getKeyPath();
  v14 = sub_22B9A7818(v13, 1);

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_22BA17B40;
  *(v15 + 32) = v12;
  *(v15 + 40) = v14;
  v16 = objc_allocWithZone(MEMORY[0x277CCA920]);
  v17 = v12;
  v18 = v14;
  v19 = sub_22BA101DC();

  *(v0 + 336) = [v16 initWithType:1 subpredicates:v19];

  if (qword_281416778 != -1)
  {
    swift_once();
  }

  v20 = xmmword_28141AEB0;
  *(v0 + 344) = xmmword_28141AEB0;
  *(v0 + 360) = sub_22B9349C8(&qword_27D8D55B8, &qword_22BA178E8);
  inited = swift_initStackObject();
  *(v0 + 368) = inited;
  *(inited + 16) = v20;
  *(v0 + 376) = sub_22B9349C8(&qword_27D8D55C0, qword_22BA178F0);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_22BA13CB0;
  *(v22 + 32) = v10;
  swift_unknownObjectRetain_n();
  v23 = v10;
  v24 = sub_22B9A7DB0(v22);
  swift_setDeallocating();
  sub_22B936BEC(v22 + 32, &qword_27D8D55C8, &qword_22BA17930);
  *(v0 + 384) = sub_22B9349C8(&unk_27D8D55D0, &qword_22BA17938);
  v25 = swift_initStackObject();
  *(v0 + 392) = v25;

  *(v25 + 64) = MEMORY[0x277D84F90];
  *(v25 + 16) = v20;
  *(v25 + 32) = 0;
  *(v25 + 40) = 1;
  v26 = swift_allocObject();
  *(v0 + 400) = v26;
  *(v26 + 24) = 0;
  *(v26 + 32) = 0;
  *(v26 + 16) = v24;
  *(v26 + 40) = 1;
  *(v25 + 48) = &unk_22BA17BF0;
  *(v25 + 56) = v26;
  v27 = swift_task_alloc();
  *(v0 + 408) = v27;
  *v27 = v0;
  v27[1] = sub_22B9AB7B4;

  return sub_22B9A853C();
}

uint64_t sub_22B9AB7B4(uint64_t a1)
{
  v3 = *v2;
  v3[38] = v2;
  v3[39] = a1;
  v3[40] = v1;
  v3[52] = v1;

  if (v1)
  {
    v4 = sub_22B9ABB98;
  }

  else
  {
    swift_unknownObjectRelease();

    v4 = sub_22B9AB8E4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22B9AB8E4()
{
  v1 = v0[44];
  v3 = v0[42];
  v2 = v0[43];
  inited = swift_initStackObject();
  v0[53] = inited;
  *(inited + 16) = v2;
  *(inited + 24) = v1;
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_22BA13CB0;
  *(v5 + 32) = v3;
  swift_unknownObjectRetain_n();
  v6 = v3;
  v7 = sub_22B9A7DB0(v5);
  swift_setDeallocating();
  sub_22B936BEC(v5 + 32, &qword_27D8D55C8, &qword_22BA17930);

  v8 = swift_initStackObject();
  v0[54] = v8;
  *(v8 + 64) = MEMORY[0x277D84F90];
  *(v8 + 16) = v2;
  *(v8 + 24) = v1;
  *(v8 + 32) = 0;
  *(v8 + 40) = 1;
  v9 = swift_allocObject();
  v0[55] = v9;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  *(v9 + 16) = v7;
  *(v9 + 40) = 1;
  *(v8 + 48) = &unk_22BA17BF8;
  *(v8 + 56) = v9;
  v10 = swift_task_alloc();
  v0[56] = v10;
  *v10 = v0;
  v10[1] = sub_22B9AA454;

  return sub_22B9A853C();
}

uint64_t sub_22B9ABA90(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_22B9ABBA0;

  return sub_22B9A7EE4(a1, a2, v6, v7, v8, v9);
}

uint64_t sub_22B9ABB58()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_22B9ABBA8(uint64_t a1)
{
  v2 = type metadata accessor for AttachmentRecord(0);
  v3 = MEMORY[0x28223BE20](v2);
  v146 = &v139 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v139 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v147 = &v139 - v9;
  MEMORY[0x28223BE20](v8);
  v150 = &v139 - v10;
  v11 = sub_22B9349C8(&qword_27D8D5210, qword_22BA16040);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v158 = &v139 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v139 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v139 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v148 = &v139 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v151 = &v139 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v139 - v24;
  v26 = sub_22BA0FC4C();
  v27 = *(v26 - 8);
  v159 = v26;
  v160 = v27;
  v28 = MEMORY[0x28223BE20](v26);
  v157 = &v139 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v156 = &v139 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v139 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v139 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v149 = &v139 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v152 = &v139 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v44 = &v139 - v43;
  MEMORY[0x28223BE20](v42);
  v153 = &v139 - v45;
  v154 = v2;
  v46 = *(v2 + 52);
  v161 = a1;
  memcpy(v166, (a1 + v46), 0x140uLL);
  if (sub_22B97CA68(v166) == 1 || (v166[8] & 1) != 0 || v166[7] < 1)
  {
    memcpy(v165, (v161 + v46), sizeof(v165));
    if (sub_22B97CA68(v165) == 1 || !v165[26])
    {
      v47 = v160;
      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v49 = sub_22BA0FEFC();
      sub_22B936CA8(v49, qword_28141AD40);
      sub_22B97CACC(v161, v7);
      v50 = sub_22BA0FEDC();
      v51 = sub_22BA1044C();
      v52 = os_log_type_enabled(v50, v51);
      v68 = v159;
      if (v52)
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v163[0] = v54;
        *v53 = 136315138;
        memcpy(v164, &v7[*(v154 + 52)], sizeof(v164));
        if (sub_22B97CA68(v164) == 1)
        {
          v55 = 0;
          v56 = 0xE000000000000000;
        }

        else
        {
          v55 = v164[23];
          v56 = v164[24];
        }

        sub_22B9AD928(v7);
        v59 = sub_22B99153C(v55, v56, v163);

        *(v53 + 4) = v59;
        _os_log_impl(&dword_22B92A000, v50, v51, "Got IMFileTransfer record with %s with no file name", v53, 0xCu);
        sub_22B936C4C(v54);
        MEMORY[0x23189ADD0](v54, -1, -1);
        MEMORY[0x23189ADD0](v53, -1, -1);

        v68 = v159;
        v47 = v160;
      }

      else
      {

        sub_22B9AD928(v7);
      }

      goto LABEL_71;
    }

    v145 = v16;

    sub_22BA0FBAC();
    sub_22BA0E688(v19);
    v48 = v159;
    v47 = v160;
    if ((*(v160 + 48))(v19, 1, v159) == 1)
    {
      (*(v47 + 8))(v37, v48);

      sub_22B936BEC(v19, &qword_27D8D5210, qword_22BA16040);
      v68 = v48;
      v16 = v145;
      goto LABEL_71;
    }

    (*(v47 + 32))(v34, v19, v48);
    v91 = sub_22BA0FC5C();
    v93 = v92;
    sub_22BA0FCBC();
    sub_22B9359BC(v91, v93);

    v94 = v159;
    v47 = v160;
    v95 = *(v160 + 8);
    v95(v34, v159);
    v95(v37, v94);
    v68 = v94;
    goto LABEL_62;
  }

  v145 = v16;
  memcpy(v165, (v161 + v46), sizeof(v165));
  if (sub_22B97CA68(v165) == 1)
  {
    v57 = 0;
    v58 = 0;
  }

  else
  {
    v57 = v165[9];
    v58 = v165[10];
  }

  v60 = [v155 filename];
  if (!v60)
  {
    if (!v58)
    {
      goto LABEL_32;
    }

    v63 = 0;
LABEL_27:
    v146 = v63;
    v67 = v58;
    goto LABEL_28;
  }

  v61 = v60;
  sub_22BA0FFFC();
  v63 = v62;

  if (v58)
  {
    goto LABEL_27;
  }

  if (!v63)
  {
LABEL_32:
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v76 = sub_22BA0FEFC();
    sub_22B936CA8(v76, qword_28141AD40);
    v77 = sub_22BA0FEDC();
    v78 = sub_22BA1044C();
    v79 = os_log_type_enabled(v77, v78);
    v80 = v159;
    v47 = v160;
    v16 = v145;
    if (v79)
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_22B92A000, v77, v78, "Failed to write asset to disk because of nil path", v81, 2u);
      MEMORY[0x23189ADD0](v81, -1, -1);
    }

    goto LABEL_37;
  }

  v64 = sub_22BA0FFCC();

  v65 = [v64 im_lastPathComponent];

  if (!v65)
  {

    goto LABEL_32;
  }

  v146 = v63;
  v57 = sub_22BA0FFFC();
  v67 = v66;

LABEL_28:

  v69 = sub_22BA0E878(v57, v67);
  if (!v70)
  {

    goto LABEL_32;
  }

  v71 = v69;
  v72 = v70;
  v144 = v67;
  v73 = v153;
  sub_22BA0FBAC();
  sub_22BA0E688(v25);
  v74 = v159;
  v75 = v160;
  v142 = *(v160 + 48);
  v143 = v160 + 48;
  if (v142(v25, 1, v159) == 1)
  {
    sub_22B936BEC(v25, &qword_27D8D5210, qword_22BA16040);
  }

  else
  {
    (*(v75 + 32))(v44, v25, v74);
    sub_22B9AD984(v44, v73);
    v82 = sub_22BA0FFCC();
    [v155 _setLocalPath_];

    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v83 = sub_22BA0FEFC();
    sub_22B936CA8(v83, qword_28141AD40);
    v84 = v150;
    sub_22B97CACC(v161, v150);

    v85 = sub_22BA0FEDC();
    v86 = sub_22BA1046C();

    if (os_log_type_enabled(v85, v86))
    {
      v140 = v86;
      v87 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      v163[0] = v139;
      *v87 = 136315394;
      memcpy(v164, (v84 + *(v154 + 52)), sizeof(v164));
      v88 = sub_22B97CA68(v164);
      v141 = v85;
      if (v88 == 1)
      {
        v89 = 0;
        v90 = 0xE000000000000000;
      }

      else
      {
        v89 = v164[23];
        v90 = v164[24];
      }

      sub_22B9AD928(v84);
      v96 = sub_22B99153C(v89, v90, v163);

      *(v87 + 4) = v96;
      *(v87 + 12) = 2080;
      *(v87 + 14) = sub_22B99153C(v71, v72, v163);
      v97 = v141;
      _os_log_impl(&dword_22B92A000, v141, v140, "Created transfer %s at finalAssetPath: %s", v87, 0x16u);
      v98 = v139;
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v98, -1, -1);
      MEMORY[0x23189ADD0](v87, -1, -1);
    }

    else
    {

      sub_22B9AD928(v84);
    }

    sub_22B9AE010(v71, v72);
    (*(v160 + 8))(v44, v159);
  }

  memcpy(v164, (v161 + v46), sizeof(v164));
  v99 = sub_22B97CA68(v164);
  v47 = v160;
  if (v99 == 1 || (v100 = v164[4]) == 0)
  {

    v104 = [v155 _auxVideoPathIfItExists];
    if (v104)
    {
      v105 = v104;
      v106 = [v104 im_lastPathComponent];

      v68 = v159;
      v16 = v145;
      v103 = v153;
      if (!v106)
      {
        (*(v47 + 8))(v153, v159);
        goto LABEL_71;
      }

      v102 = v159;
      v101 = sub_22BA0FFFC();
      v100 = v107;

      goto LABEL_53;
    }

    v68 = v159;
    (*(v47 + 8))(v153, v159);
LABEL_62:
    v16 = v145;
    goto LABEL_71;
  }

  v101 = v164[3];

  v102 = v159;
  v16 = v145;
  v103 = v153;
LABEL_53:
  v108 = v151;
  sub_22BA0E698(v151);
  v109 = v142(v108, 1, v102);
  v110 = v152;
  if (v109 == 1)
  {
    (*(v47 + 8))(v103, v102);

    sub_22B936BEC(v108, &qword_27D8D5210, qword_22BA16040);
    v68 = v102;
    goto LABEL_71;
  }

  (*(v47 + 32))(v152, v108, v102);
  v111 = v148;
  (*(v47 + 16))(v148, v103, v102);
  (*(v47 + 56))(v111, 0, 1, v102);
  v112 = sub_22B9AE3A8(v111, v101, v100);
  v114 = v113;

  sub_22B936BEC(v111, &qword_27D8D5210, qword_22BA16040);
  if (v114)
  {
    v115 = v149;
    sub_22BA0FBAC();
    sub_22B9AD984(v110, v115);
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v116 = sub_22BA0FEFC();
    sub_22B936CA8(v116, qword_28141AD40);
    v117 = v147;
    sub_22B97CACC(v161, v147);

    v118 = sub_22BA0FEDC();
    v119 = sub_22BA1046C();

    if (os_log_type_enabled(v118, v119))
    {
      v120 = v117;
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v162 = v122;
      *v121 = 136315394;
      memcpy(v163, (v120 + *(v154 + 52)), 0x140uLL);
      if (sub_22B97CA68(v163) == 1)
      {
        v123 = 0;
        v124 = 0xE000000000000000;
      }

      else
      {
        v123 = v163[23];
        v124 = v163[24];
      }

      sub_22B9AD928(v147);
      v137 = sub_22B99153C(v123, v124, &v162);

      *(v121 + 4) = v137;
      *(v121 + 12) = 2080;
      *(v121 + 14) = sub_22B99153C(v112, v114, &v162);
      _os_log_impl(&dword_22B92A000, v118, v119, "Stored aux video for transfer %s at finalAssetPath: %s", v121, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v122, -1, -1);
      MEMORY[0x23189ADD0](v121, -1, -1);

      v80 = v159;
      v16 = v145;
      v110 = v152;
    }

    else
    {

      sub_22B9AD928(v117);
      v80 = v159;
    }

    sub_22B9AE010(v112, v114);

    v47 = v160;
    v138 = *(v160 + 8);
    v138(v149, v80);
    v138(v110, v80);
    v138(v103, v80);
LABEL_37:
    v68 = v80;
    goto LABEL_71;
  }

  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v125 = sub_22BA0FEFC();
  sub_22B936CA8(v125, qword_28141AD40);
  v126 = sub_22BA0FEDC();
  v127 = sub_22BA1044C();
  if (os_log_type_enabled(v126, v127))
  {
    v128 = swift_slowAlloc();
    *v128 = 0;
    _os_log_impl(&dword_22B92A000, v126, v127, "Failed to write aux asset to disk because of nil path", v128, 2u);
    MEMORY[0x23189ADD0](v128, -1, -1);
  }

  v129 = *(v47 + 8);
  v130 = v159;
  v129(v110, v159);
  v129(v103, v130);
  v68 = v130;
LABEL_71:
  sub_22BA0E688(v16);
  v131 = *(v47 + 48);
  if (v131(v16, 1, v68) == 1)
  {
    sub_22B936BEC(v16, &qword_27D8D5210, qword_22BA16040);
  }

  else
  {
    v132 = v156;
    (*(v47 + 32))(v156, v16, v68);
    v165[3] = &type metadata for FileManagerProvider;
    v165[4] = &off_283F53B48;
    v165[0] = [objc_opt_self() defaultManager];
    sub_22B971CA8(v132);
    (*(v47 + 8))(v132, v68);
    sub_22B957EE4(v165);
  }

  v133 = v158;
  sub_22BA0E698(v158);
  if (v131(v133, 1, v68) == 1)
  {
    return sub_22B936BEC(v133, &qword_27D8D5210, qword_22BA16040);
  }

  v135 = v160;
  v136 = v157;
  (*(v160 + 32))(v157, v133, v68);
  v165[3] = &type metadata for FileManagerProvider;
  v165[4] = &off_283F53B48;
  v165[0] = [objc_opt_self() &off_27871A638 + 3];
  sub_22B971CA8(v136);
  (*(v135 + 8))(v136, v68);
  return sub_22B957EE4(v165);
}

id sub_22B9AD110(uint64_t a1, int a2)
{
  v44 = a2;
  v4 = sub_22BA0FD8C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - v9;
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v43 = type metadata accessor for AttachmentRecord(0);
  v12 = *(v43 + 52);
  memcpy(v47, (a1 + v12), sizeof(v47));
  memcpy(v48, (a1 + v12), 0x140uLL);
  if (sub_22B97CA68(v48) == 1)
  {
    sub_22B9AE6F0();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v42 = v2;
    memcpy(v46, v47, sizeof(v46));
    sub_22B9AE744(v46, &v45);
    v13 = sub_22BA0FFCC();
    [v11 setGuid_];

    if (v48[6])
    {

      v14 = sub_22BA0FFCC();
    }

    else
    {
      v14 = 0;
    }

    v41 = a1;
    [v11 setType_];

    if (v48[22])
    {
      v15 = 0;
    }

    else
    {
      v16 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate_];
      sub_22BA0FD5C();

      v15 = sub_22BA0FCFC();
      (*(v40 + 8))(v10, v4);
    }

    [v11 setCreatedDate_];

    if (v48[20])
    {
      v17 = 0;
    }

    else
    {
      v18 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) &selRef:v48[19] setRecordName:? + 6];
      sub_22BA0FD5C();

      v17 = sub_22BA0FCFC();
      (*(v40 + 8))(v8, v4);
    }

    a1 = v41;
    [v11 _setStartDate_];

    if (LOBYTE(v48[36]))
    {
      v19 = 0;
    }

    else
    {
      v19 = v48[35];
    }

    [v11 _setTransferState_];
    [v11 setIsIncoming_];
    v20 = 0;
    if (v48[30] >> 60 != 15)
    {
      v20 = sub_22BA0FC8C();
    }

    v21 = JWDecodeDictionary();

    if (v21)
    {
      v22 = sub_22BA0FF6C();

      sub_22B98963C(v22);
      v24 = v23;

      if (v24)
      {
        sub_22B98C248(v24);

        v24 = sub_22BA0FF5C();
      }
    }

    else
    {
      v24 = 0;
    }

    [v11 setUserInfo_];

    if (v48[32] >> 60 == 15)
    {
      v25 = 0;
    }

    else
    {
      v25 = sub_22BA0FC8C();
    }

    v26 = JWDecodeDictionary();

    if (v26)
    {
      v27 = sub_22BA0FF6C();

      sub_22B98963C(v27);
      v26 = v28;

      if (v26)
      {
        sub_22B98C248(v26);

        v26 = sub_22BA0FF5C();
      }
    }

    [v11 setStickerUserInfo_];

    if (v48[34] >> 60 == 15)
    {
      v29 = 0;
    }

    else
    {
      v29 = sub_22BA0FC8C();
    }

    v30 = JWDecodeDictionary();

    if (v30)
    {
      v31 = sub_22BA0FF6C();

      sub_22B98963C(v31);
      v30 = v32;

      if (v30)
      {
        sub_22B98C248(v30);

        v30 = sub_22BA0FF5C();
      }
    }

    [v11 setAttributionInfo_];

    if (LOBYTE(v48[2]))
    {
      v33 = 0;
    }

    else
    {
      v33 = v48[1];
    }

    [v11 setTotalBytes_];
    if (v48[18])
    {

      v34 = sub_22BA0FFCC();
    }

    else
    {
      v34 = 0;
    }

    [v11 setFilename_];

    [v11 setIsSticker_];
    if (v48[13])
    {

      v35 = sub_22BA0FFCC();
    }

    else
    {
      v35 = 0;
    }

    [v11 setAdaptiveImageGlyphContentIdentifier_];

    if (v48[15])
    {

      v36 = sub_22BA0FFCC();
    }

    else
    {
      v36 = 0;
    }

    [v11 setAdaptiveImageGlyphContentDescription_];

    [v11 setHideAttachment_];
    [v11 setCloudKitSyncState_];
    if (*(a1 + *(v43 + 56) + 8) >> 60 == 15)
    {
      v37 = 0;
    }

    else
    {
      v37 = sub_22BA0FC8C();
    }

    [v11 setCloudKitServerChangeTokenBlob_];

    if (*(a1 + 56))
    {
      v38 = sub_22BA0FFCC();
    }

    else
    {
      v38 = 0;
    }

    [v11 setCloudKitRecordID_];

    [v11 setPreviewGenerationState_];
    [v11 _migratePreviewGenerationState];
    if (v44)
    {
      sub_22B9ABBA8(a1);
    }

    sub_22B936BEC(v47, qword_27D8D5630, &qword_22BA1B590);
  }

  sub_22B9AD928(a1);
  return v11;
}

uint64_t sub_22B9AD928(uint64_t a1)
{
  v2 = type metadata accessor for AttachmentRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22B9AD984(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v3 = sub_22BA0FC4C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v16 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v9);
  v11 = v16 - v10;
  v17 = objc_opt_self();
  v12 = [v17 defaultManager];
  v19 = a2;
  sub_22B964DE0(a2, v12);
  v16[4] = v8;

  v13 = v19;
  sub_22BA0FBFC();
  sub_22BA0FB7C();
  (*(v4 + 8))(v11, v3);
  v14 = sub_22BA0FFCC();

  IMSharedHelperEnsureDirectoryExistsAtPath();

  v15 = [v17 defaultManager];
  sub_22B964EA4(v18, v13, v15);
}

void sub_22B9AE010(uint64_t a1, unint64_t a2)
{
  v26[10] = *MEMORY[0x277D85DE8];
  v4 = [objc_opt_self() defaultManager];
  sub_22B9349C8(&qword_27D8D5618, qword_22BA17C60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22BA13CB0;
  v6 = *MEMORY[0x277CCA1B0];
  *(inited + 32) = *MEMORY[0x277CCA1B0];
  v7 = *MEMORY[0x277CCA1A0];
  type metadata accessor for FileProtectionType(0);
  *(inited + 64) = v8;
  *(inited + 40) = v7;
  v9 = v6;
  v10 = v7;
  sub_22B9BBBBC(inited);
  swift_setDeallocating();
  sub_22B936BEC(inited + 32, &qword_27D8D5620, &qword_22BA186C0);
  type metadata accessor for FileAttributeKey(0);
  sub_22B97CB30();
  v11 = sub_22BA0FF5C();

  v12 = sub_22BA0FFCC();
  v26[0] = 0;
  LODWORD(v6) = [v4 setAttributes:v11 ofItemAtPath:v12 error:v26];

  v13 = v26[0];
  if (v6)
  {

    v14 = v13;
  }

  else
  {
    v15 = v26[0];
    v16 = sub_22BA0FB6C();

    swift_willThrow();
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v17 = sub_22BA0FEFC();
    sub_22B936CA8(v17, qword_28141AD40);

    v18 = v16;
    v19 = sub_22BA0FEDC();
    v20 = sub_22BA1044C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v26[0] = v23;
      *v21 = 136315394;
      *(v21 + 4) = sub_22B99153C(a1, a2, v26);
      *(v21 + 12) = 2112;
      v24 = v16;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 14) = v25;
      *v22 = v25;
      _os_log_impl(&dword_22B92A000, v19, v20, "Failed making file class C %s: %@", v21, 0x16u);
      sub_22B936BEC(v22, &qword_27D8D4CD0, qword_22BA14360);
      MEMORY[0x23189ADD0](v22, -1, -1);
      sub_22B936C4C(v23);
      MEMORY[0x23189ADD0](v23, -1, -1);
      MEMORY[0x23189ADD0](v21, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_22B9AE3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v5 = sub_22BA0FB8C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22B9349C8(&qword_27D8D5210, qword_22BA16040);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v22 - v10;
  v12 = sub_22BA0FC4C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v22 - v17;
  sub_22B9AE680(a1, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_22B936BEC(v11, &qword_27D8D5210, qword_22BA16040);
    return 0;
  }

  else
  {
    sub_22BA0FBFC();
    v20 = *(v13 + 8);
    v20(v11, v12);
    v24 = v23;
    v25 = a3;
    (*(v6 + 104))(v8, *MEMORY[0x277CC91D8], v5);
    sub_22B936ACC();
    sub_22BA0FC2C();
    (*(v6 + 8))(v8, v5);
    v20(v16, v12);
    v21 = sub_22BA0FB7C();
    v20(v18, v12);
    return v21;
  }
}

uint64_t sub_22B9AE680(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B9349C8(&qword_27D8D5210, qword_22BA16040);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22B9AE6F0()
{
  result = qword_27D8D5628;
  if (!qword_27D8D5628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5628);
  }

  return result;
}

uint64_t sub_22B9AE7F0()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = *v0;
  return MEMORY[0x2822009F8](sub_22B9AE838, v0, 0);
}

uint64_t sub_22B9AE838()
{
  v1 = v0[4];
  v2 = *(v0[3] + 112);
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = *(v1 + 80);
  *v3 = v0;
  v3[1] = sub_22B9AE8E0;

  return MEMORY[0x282200460](v0 + 2, v2, v4);
}

uint64_t sub_22B9AE8E0()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_22B9AE9F0, v1, 0);
}

uint64_t sub_22B9AEA10()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_22B9AEAA0;

  return sub_22B9AE7F0();
}

uint64_t sub_22B9AEAA0(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v9 = *v2;
  *(v4 + 32) = a1;

  ObjectType = swift_getObjectType();
  v8 = (*(a2 + 16) + **(a2 + 16));
  v6 = swift_task_alloc();
  *(v4 + 40) = v6;
  *v6 = v9;
  v6[1] = sub_22B9AEC6C;

  return v8(ObjectType, a2);
}

uint64_t sub_22B9AEC6C()
{
  v2 = *(*v1 + 16);
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_22B9B22B0;
  }

  else
  {
    v3 = sub_22B9B22BC;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}