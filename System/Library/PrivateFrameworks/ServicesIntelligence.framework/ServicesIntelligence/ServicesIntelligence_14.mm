uint64_t sub_230E33C3C()
{
  v22 = v0;
  v1 = *(v0 + 288);

  sub_230E3B334(v1, type metadata accessor for CreateVectorDatabaseResponse);
  v2 = *(v0 + 440);
  sub_230E68D70();

  v3 = v2;
  v4 = sub_230E68D60();
  v5 = sub_230E69400();

  MEMORY[0x23191E910](v2);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 296);
    v7 = *(v0 + 304);
    v8 = *(v0 + 256);
    v19 = *(v0 + 248);
    v20 = *(v0 + 264);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_230D7E620(v6, v7, &v21);
    *(v9 + 12) = 2112;
    v12 = v2;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_230D02000, v4, v5, "[ServicesIntelligenceProvider][createVectorDatabase][%s] Failed: %@", v9, 0x16u);
    sub_230D2D9F8(v10, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x23191EAE0](v11, -1, -1);
    MEMORY[0x23191EAE0](v9, -1, -1);

    (*(v8 + 8))(v20, v19);
  }

  else
  {
    v15 = *(v0 + 256);
    v14 = *(v0 + 264);
    v16 = *(v0 + 248);

    (*(v15 + 8))(v14, v16);
  }

  **(v0 + 232) = v2;
  type metadata accessor for DatabaseCreationResult(0);
  swift_storeEnumTagMultiPayload();

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_230E33EE4()
{
  v21 = v0;
  sub_230E3B334(*(v0 + 288), type metadata accessor for CreateVectorDatabaseResponse);
  v1 = *(v0 + 424);
  sub_230E68D70();

  v2 = v1;
  v3 = sub_230E68D60();
  v4 = sub_230E69400();

  MEMORY[0x23191E910](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 296);
    v6 = *(v0 + 304);
    v7 = *(v0 + 256);
    v18 = *(v0 + 248);
    v19 = *(v0 + 264);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_230D7E620(v5, v6, &v20);
    *(v8 + 12) = 2112;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][createVectorDatabase][%s] Failed: %@", v8, 0x16u);
    sub_230D2D9F8(v9, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x23191EAE0](v10, -1, -1);
    MEMORY[0x23191EAE0](v8, -1, -1);

    (*(v7 + 8))(v19, v18);
  }

  else
  {
    v14 = *(v0 + 256);
    v13 = *(v0 + 264);
    v15 = *(v0 + 248);

    (*(v14 + 8))(v13, v15);
  }

  **(v0 + 232) = v1;
  type metadata accessor for DatabaseCreationResult(0);
  swift_storeEnumTagMultiPayload();

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_230E34180(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v4 + 200) = a1;
  *(v4 + 208) = v3;
  v7 = sub_230E68D80();
  *(v4 + 216) = v7;
  *(v4 + 224) = *(v7 - 8);
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();
  type metadata accessor for CreateKVDatabaseResponse(0);
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 821) = *a2;
  v8 = *(a3 + 16);
  *(v4 + 272) = *a3;
  *(v4 + 288) = v8;
  *(v4 + 304) = *(a3 + 32);
  *(v4 + 820) = 10;
  v9 = swift_task_alloc();
  *(v4 + 312) = v9;
  *v9 = v4;
  v9[1] = sub_230E34330;

  return static RequestContext.from(_:correlationID:)(v4 + 56, (v4 + 820), 0, 0);
}

uint64_t sub_230E34330()
{
  v1 = *(*v0 + 208);

  return MEMORY[0x2822009F8](sub_230E3446C, v1, 0);
}

uint64_t sub_230E3446C()
{
  v31 = v0;
  v30[1] = *MEMORY[0x277D85DE8];
  *(v0 + 16) = *(v0 + 56);
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 81);
  v5 = *(v0 + 88);
  *(v0 + 320) = v2;
  *(v0 + 328) = v5;
  *(v0 + 24) = v1;
  *(v0 + 32) = v2;
  v29 = v3;
  *(v0 + 40) = v3;
  *(v0 + 41) = v4;
  *(v0 + 48) = v5;

  sub_230E68D70();

  v6 = sub_230E68D60();
  v7 = sub_230E693E0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v28 = v4;
    v9 = swift_slowAlloc();
    v30[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_230D7E620(0xD000000000000010, 0x8000000230E80530, v30);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_230D7E620(v1, v2, v30);
    *(v8 + 22) = 2080;
    v10 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v10);

    v11 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v30);

    *(v8 + 24) = v11;
    _os_log_impl(&dword_230D02000, v6, v7, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v8, 0x20u);
    swift_arrayDestroy();
    v12 = v9;
    v4 = v28;
    MEMORY[0x23191EAE0](v12, -1, -1);
    MEMORY[0x23191EAE0](v8, -1, -1);

    if (!v29)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (!v29)
    {
LABEL_7:
      v16 = swift_task_alloc();
      *(v0 + 344) = v16;
      *v16 = v0;
      v17 = sub_230E348CC;
      goto LABEL_12;
    }
  }

  v13 = RequestType.rawValue.getter();
  v15 = v14;

  LOBYTE(v13) = sub_230D33FDC(v13, v15, v5);

  if ((v13 & 1) == 0 && v4 < 2)
  {
    goto LABEL_7;
  }

  sub_230E68950();
  *(v0 + 336) = CFAbsoluteTimeGetCurrent();
  *(v0 + 440) = 0u;
  *(v0 + 456) = 0u;
  *(v0 + 472) = 0u;
  *(v0 + 488) = 0u;
  *(v0 + 504) = 0u;
  *(v0 + 520) = 0u;
  *(v0 + 536) = 0u;
  *(v0 + 552) = 0u;
  *(v0 + 568) = 0u;
  *(v0 + 584) = 0u;
  *(v0 + 600) = 0u;
  *(v0 + 616) = 0u;
  *(v0 + 632) = 0u;
  *(v0 + 648) = 0u;
  *(v0 + 664) = 0u;
  *(v0 + 680) = 0u;
  *(v0 + 696) = 0u;
  *(v0 + 712) = 0u;
  *(v0 + 728) = 0u;
  *(v0 + 744) = 0u;
  *(v0 + 760) = 0u;
  *(v0 + 776) = 0u;
  *(v0 + 792) = 0u;
  *(v0 + 808) = 0;
  *(v0 + 812) = 93;
  v18 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 440), (v0 + 812));
  *(v0 + 816) = v18;
  v19 = 0.0;
  if (!v18)
  {
    v20 = *(v0 + 488);
    v21 = *(v0 + 560);
    v22 = __CFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      __break(1u);
    }

    v19 = vcvtd_n_f64_u64(v23, 0x14uLL);
  }

  *(v0 + 360) = v19;
  *(v0 + 192) = 0;
  v16 = swift_task_alloc();
  *(v0 + 368) = v16;
  *v16 = v0;
  v17 = sub_230E34A24;
LABEL_12:
  v16[1] = v17;
  v24 = *(v0 + 264);
  v25 = *(v0 + 208);
  v26 = *(v0 + 821);

  return sub_230D1DC80(v24, v26, v25, v0 + 16);
}

uint64_t sub_230E348CC()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  v3 = *(v2 + 208);
  if (v0)
  {
    v4 = sub_230E353E0;
  }

  else
  {
    v4 = sub_230E35270;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230E34A24()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  v3 = *(v2 + 208);
  if (v0)
  {
    v4 = sub_230E34D20;
  }

  else
  {
    v4 = sub_230E34B7C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230E34B7C()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  sub_230D366D4(10, *(v0 + 360), *(v0 + 816) != 0, v0 + 16, (v0 + 192), *(v0 + 336));
  v4 = *(v3 + 8);
  v4(v1, v2);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  *(v0 + 384) = v4;
  v5 = *(v0 + 304);
  v9 = *(v0 + 288);
  v10 = *(v0 + 272);
  v6 = DatabaseIdentifier.stringRepresentation()();
  *(v0 + 176) = v6;

  *(v0 + 392) = v6._object;
  *(v0 + 112) = v9;
  *(v0 + 96) = v10;
  *(v0 + 128) = v5;
  v7 = swift_task_alloc();
  *(v0 + 400) = v7;
  *v7 = v0;
  v7[1] = sub_230E35060;

  return sub_230D05310(v0 + 96);
}

uint64_t sub_230E34D20(uint64_t a1)
{
  v28 = v1;
  v27[1] = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 376);
  *(v1 + 192) = v2;
  v3 = *(v1 + 360);
  v4 = *(v1 + 336);
  v5 = *(v1 + 248);
  v7 = *(v1 + 216);
  v6 = *(v1 + 224);
  v8 = *(v1 + 816) != 0;
  swift_willThrow();
  v9 = v2;
  sub_230D366D4(10, v3, v8, v1 + 16, (v1 + 192), v4);
  MEMORY[0x23191E910](v2);
  v10 = *(v6 + 8);
  v10(v5, v7);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v11 = *(v1 + 376);
  sub_230E68D70();
  v12 = v11;
  v13 = sub_230E68D60();
  v14 = sub_230E69400();
  MEMORY[0x23191E910](v11);
  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v1 + 232);
  v17 = *(v1 + 216);
  if (v15)
  {
    v26 = *(v1 + 232);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v27[0] = v20;
    *v18 = 136315394;
    *(v18 + 4) = sub_230D7E620(1852399981, 0xE400000000000000, v27);
    *(v18 + 12) = 2112;
    v21 = v11;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v22;
    *v19 = v22;
    _os_log_impl(&dword_230D02000, v13, v14, "[ServicesIntelligenceProvider][createKVDatabase][%s] Failed: %@", v18, 0x16u);
    sub_230D2D9F8(v19, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v19, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x23191EAE0](v20, -1, -1);
    MEMORY[0x23191EAE0](v18, -1, -1);

    v23 = v26;
  }

  else
  {

    v23 = v16;
  }

  v10(v23, v17);
  **(v1 + 200) = v11;
  type metadata accessor for DatabaseCreationResult(0);
  swift_storeEnumTagMultiPayload();

  v24 = *(v1 + 8);

  return v24();
}

uint64_t sub_230E35060(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 408) = a1;
  *(v4 + 416) = v1;

  if (v1)
  {
    v5 = *(v4 + 208);

    return MEMORY[0x2822009F8](sub_230E35E60, v5, 0);
  }

  else
  {
    *(v4 + 136) = *(v4 + 272);
    v6 = *(v4 + 176);
    v7 = *(v4 + 304);
    *(v4 + 152) = *(v4 + 288);
    *(v4 + 168) = v7;
    v8 = swift_task_alloc();
    *(v4 + 424) = v8;
    *v8 = v4;
    v8[1] = sub_230E356B0;
    v9 = *(v4 + 392);
    v10 = *(v4 + 264);

    return sub_230E3D38C(v6, v9, v10, a1, v4 + 136);
  }
}

uint64_t sub_230E35270()
{
  v1 = *(*(v0 + 224) + 8);
  v1(*(v0 + 248), *(v0 + 216));

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  *(v0 + 384) = v1;
  v2 = *(v0 + 304);
  v6 = *(v0 + 288);
  v7 = *(v0 + 272);
  v3 = DatabaseIdentifier.stringRepresentation()();
  *(v0 + 176) = v3;

  *(v0 + 392) = v3._object;
  *(v0 + 112) = v6;
  *(v0 + 96) = v7;
  *(v0 + 128) = v2;
  v4 = swift_task_alloc();
  *(v0 + 400) = v4;
  *v4 = v0;
  v4[1] = sub_230E35060;

  return sub_230D05310(v0 + 96);
}

uint64_t sub_230E353E0()
{
  v19 = v0;
  v18[1] = *MEMORY[0x277D85DE8];
  v1 = *(*(v0 + 224) + 8);
  v1(*(v0 + 248), *(v0 + 216));

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v2 = *(v0 + 352);
  sub_230E68D70();
  v3 = v2;
  v4 = sub_230E68D60();
  v5 = sub_230E69400();
  MEMORY[0x23191E910](v2);
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 232);
  v8 = *(v0 + 216);
  if (v6)
  {
    v17 = *(v0 + 232);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18[0] = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_230D7E620(1852399981, 0xE400000000000000, v18);
    *(v9 + 12) = 2112;
    v12 = v2;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_230D02000, v4, v5, "[ServicesIntelligenceProvider][createKVDatabase][%s] Failed: %@", v9, 0x16u);
    sub_230D2D9F8(v10, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x23191EAE0](v11, -1, -1);
    MEMORY[0x23191EAE0](v9, -1, -1);

    v14 = v17;
  }

  else
  {

    v14 = v7;
  }

  v1(v14, v8);
  **(v0 + 200) = v2;
  type metadata accessor for DatabaseCreationResult(0);
  swift_storeEnumTagMultiPayload();

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_230E356B0()
{
  v2 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v3 = *(v2 + 208);

    v4 = sub_230E35B90;
  }

  else
  {
    v3 = *(v2 + 208);

    v4 = sub_230E35810;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230E35810()
{
  v25 = v0;
  v24[1] = *MEMORY[0x277D85DE8];
  v1 = v0[32];
  v2 = v0[33];
  sub_230E68D70();
  sub_230E3B394(v2, v1, type metadata accessor for CreateKVDatabaseResponse);
  v3 = sub_230E68D60();
  v4 = sub_230E693E0();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[48];
  v7 = v0[32];
  v8 = v0[30];
  v9 = v0[27];
  if (v5)
  {
    v23 = v0[30];
    v10 = swift_slowAlloc();
    v22 = v9;
    v11 = swift_slowAlloc();
    v24[0] = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_230D7E620(1852399981, 0xE400000000000000, v24);
    *(v10 + 12) = 2080;
    sub_230E68860();
    sub_230E3B8F8(&qword_2815668A0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v12 = sub_230E69890();
    v21 = v6;
    v14 = v13;
    sub_230E3B334(v7, type metadata accessor for CreateKVDatabaseResponse);
    v15 = sub_230D7E620(v12, v14, v24);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][createKVDatabase][%s] Created at %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v11, -1, -1);
    MEMORY[0x23191EAE0](v10, -1, -1);

    v21(v23, v22);
  }

  else
  {

    sub_230E3B334(v7, type metadata accessor for CreateKVDatabaseResponse);
    v6(v8, v9);
  }

  v16 = v0[33];
  v17 = v0[25];
  v18 = sub_230E68860();
  (*(*(v18 - 8) + 32))(v17, v16, v18);
  type metadata accessor for DatabaseCreationResult(0);
  swift_storeEnumTagMultiPayload();

  v19 = v0[1];

  return v19();
}

uint64_t sub_230E35B90()
{
  v19 = v0;
  v18[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 264);

  sub_230E3B334(v1, type metadata accessor for CreateKVDatabaseResponse);
  v2 = *(v0 + 432);
  v3 = *(v0 + 384);
  sub_230E68D70();
  v4 = v2;
  v5 = sub_230E68D60();
  v6 = sub_230E69400();
  MEMORY[0x23191E910](v2);
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 232);
  v9 = *(v0 + 216);
  if (v7)
  {
    v17 = v3;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18[0] = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_230D7E620(1852399981, 0xE400000000000000, v18);
    *(v10 + 12) = 2112;
    v13 = v2;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_230D02000, v5, v6, "[ServicesIntelligenceProvider][createKVDatabase][%s] Failed: %@", v10, 0x16u);
    sub_230D2D9F8(v11, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x23191EAE0](v12, -1, -1);
    MEMORY[0x23191EAE0](v10, -1, -1);

    v17(v8, v9);
  }

  else
  {

    v3(v8, v9);
  }

  **(v0 + 200) = v2;
  type metadata accessor for DatabaseCreationResult(0);
  swift_storeEnumTagMultiPayload();

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_230E35E60()
{
  v18 = v0;
  v17[1] = *MEMORY[0x277D85DE8];
  sub_230E3B334(*(v0 + 264), type metadata accessor for CreateKVDatabaseResponse);
  v1 = *(v0 + 416);
  v2 = *(v0 + 384);
  sub_230E68D70();
  v3 = v1;
  v4 = sub_230E68D60();
  v5 = sub_230E69400();
  MEMORY[0x23191E910](v1);
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 232);
  v8 = *(v0 + 216);
  if (v6)
  {
    v16 = v2;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17[0] = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_230D7E620(1852399981, 0xE400000000000000, v17);
    *(v9 + 12) = 2112;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_230D02000, v4, v5, "[ServicesIntelligenceProvider][createKVDatabase][%s] Failed: %@", v9, 0x16u);
    sub_230D2D9F8(v10, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x23191EAE0](v11, -1, -1);
    MEMORY[0x23191EAE0](v9, -1, -1);

    v16(v7, v8);
  }

  else
  {

    v2(v7, v8);
  }

  **(v0 + 200) = v1;
  type metadata accessor for DatabaseCreationResult(0);
  swift_storeEnumTagMultiPayload();

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_230E36124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  v5 = sub_230E68D80();
  v3[22] = v5;
  v3[23] = *(v5 - 8);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230E36204, a2, 0);
}

uint64_t sub_230E36204()
{
  sub_230E68D70();
  v1 = sub_230E68D60();
  v2 = sub_230E693E0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_230D02000, v1, v2, "[ServicesIntelligenceProvider][getConfiguration] Started", v3, 2u);
    MEMORY[0x23191EAE0](v3, -1, -1);
  }

  v4 = v0[26];
  v5 = v0[22];
  v6 = v0[23];
  v7 = v0[21];

  v8 = *(v6 + 8);
  v0[27] = v8;
  v8(v4, v5);
  sub_230D1CDE0(v7, (v0 + 2));
  sub_230D1CDE0(v7, (v0 + 7));

  v9 = swift_task_alloc();
  v0[28] = v9;
  *v9 = v0;
  v9[1] = sub_230E363C4;
  v10 = v0[21];

  return (sub_230D72678)(15, v10);
}

uint64_t sub_230E363C4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 168);
  *(v4 + 232) = a1;
  *(v4 + 240) = v1;

  sub_230D1CE3C(v5);
  v6 = *(v3 + 160);
  if (v1)
  {
    v7 = sub_230E36C1C;
  }

  else
  {
    v7 = sub_230E36514;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_230E36514()
{
  v1 = *(v0 + 232);
  sub_230D1CE3C(*(v0 + 168));

  return MEMORY[0x2822009F8](sub_230E36580, v1, 0);
}

uint64_t sub_230E36580()
{
  v1 = v0[29];
  v2 = v0[21];
  v3 = sub_230D0F908(MEMORY[0x277D84F90]);
  v0[31] = v3;
  v0[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
  v0[16] = sub_230D1D1C4(&qword_27DB5ABF8, &unk_27DB5D8F0, &unk_230E70E80, MEMORY[0x277D83988]);
  v0[12] = &unk_2845A4E40;
  v4 = swift_task_alloc();
  v0[32] = v4;
  v4[2] = v0 + 12;
  v4[3] = v1;
  v4[4] = v2;
  v4[5] = v3;
  v5 = swift_task_alloc();
  v0[33] = v5;
  *v5 = v0;
  v5[1] = sub_230E366E4;
  v6 = v0[21];

  return sub_230D19580(8, v6, &unk_230E7F248, v4);
}

uint64_t sub_230E366E4(uint64_t a1)
{
  v2 = *(*v1 + 232);
  *(*v1 + 272) = a1;

  return MEMORY[0x2822009F8](sub_230E3683C, v2, 0);
}

uint64_t sub_230E3683C()
{
  v1 = *(v0 + 272);
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  v2 = 0uLL;
  if (*(v1 + 16))
  {
    v3 = sub_230DA41A0(0x6769666E6F635F5FLL, 0xEF6E6F6974617275);
    if (v4)
    {
      v5 = *(*(v0 + 272) + 56) + 48 * v3;
      v6 = *v5;
      v7 = *(v5 + 8);
      v8 = *(v5 + 16);
      v9 = *(v5 + 24);
      v12 = *(v5 + 32);

      v2 = v12;
    }

    else
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v2 = 0uLL;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  *(v0 + 312) = v2;
  *(v0 + 296) = v8;
  *(v0 + 304) = v9;
  *(v0 + 280) = v6;
  *(v0 + 288) = v7;
  v10 = *(v0 + 160);

  return MEMORY[0x2822009F8](sub_230E36984, v10, 0);
}

uint64_t sub_230E36984()
{
  v28 = v0;
  v1 = *(v0 + 312);
  v3 = *(v0 + 296);
  v2 = *(v0 + 304);
  v5 = *(v0 + 280);
  v4 = *(v0 + 288);
  sub_230E68D70();
  sub_230D0F898(v5, v4, v3, v2, v1);
  v6 = sub_230E68D60();
  v7 = sub_230E693E0();
  sub_230DE9FF0(v5, v4, v3, v2, v1);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 320);
    v9 = *(v0 + 280);
    v25 = *(v0 + 200);
    v26 = *(v0 + 216);
    v10 = *(v0 + 176);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v11 = 136315138;
    if (v9)
    {
      v13 = v8;
    }

    else
    {
      v13 = 0;
    }

    *(v0 + 136) = v13;
    *(v0 + 144) = v9 == 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D900, &qword_230E7F250);
    v14 = sub_230E69440();
    v16 = sub_230D7E620(v14, v15, &v27);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_230D02000, v6, v7, "[ServicesIntelligenceProvider][getConfiguration] Retrieved configuration version %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x23191EAE0](v12, -1, -1);
    MEMORY[0x23191EAE0](v11, -1, -1);

    v26(v25, v10);
  }

  else
  {
    v17 = *(v0 + 216);
    v18 = *(v0 + 200);
    v19 = *(v0 + 176);

    v17(v18, v19);
  }

  v20 = *(v0 + 152);
  v21 = *(v0 + 296);
  v22 = *(v0 + 312);
  *v20 = *(v0 + 280);
  v20[1] = v21;
  v20[2] = v22;

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_230E36C1C()
{
  v1 = *(v0 + 240);
  sub_230D1CE3C(*(v0 + 168));
  sub_230E68D70();
  v2 = v1;
  v3 = sub_230E68D60();
  v4 = sub_230E69400();
  MEMORY[0x23191E910](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 240);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_230D02000, v3, v4, "[ServicesIntelligenceProvider][getConfiguration] Failed: %@", v7, 0xCu);
    sub_230D2D9F8(v8, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);

    MEMORY[0x23191E910](v6);
  }

  else
  {
    MEMORY[0x23191E910](*(v0 + 240));
  }

  v11 = *(v0 + 152);
  (*(v0 + 216))(*(v0 + 192), *(v0 + 176));
  v11[1] = 0u;
  v11[2] = 0u;
  *v11 = 0u;

  v12 = *(v0 + 8);

  return v12();
}

uint64_t ServicesIntelligenceProvider.getAllKVDatabaseConfigurations()()
{
  *(v1 + 144) = v0;
  *(v1 + 184) = 18;
  v2 = swift_task_alloc();
  *(v1 + 152) = v2;
  *v2 = v1;
  v2[1] = sub_230E36EC0;

  return static RequestContext.from(_:correlationID:)(v1 + 104, (v1 + 184), 0, 0);
}

uint64_t sub_230E36EC0()
{
  v1 = *(*v0 + 144);

  return MEMORY[0x2822009F8](sub_230E36FD0, v1, 0);
}

uint64_t sub_230E36FD0()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v0 + 129);
  v6 = *(v0 + 136);
  *(v0 + 160) = v3;
  *(v0 + 168) = v6;
  *(v0 + 64) = v1;
  *(v0 + 72) = v2;
  *(v0 + 80) = v3;
  *(v0 + 88) = v4;
  *(v0 + 89) = v5;
  *(v0 + 96) = v6;

  v7 = swift_task_alloc();
  *(v0 + 176) = v7;
  *v7 = v0;
  v7[1] = sub_230E370E0;

  return (sub_230D7CC14)(v0 + 16, 18, v0 + 64);
}

uint64_t sub_230E370E0()
{
  v1 = *(*v0 + 144);

  return MEMORY[0x2822009F8](sub_230E37230, v1, 0);
}

uint64_t sub_230E37230()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = v0[6];
    v4 = v0[4];
    v3 = v0[5];
    v5 = v0[3];

    sub_230DE9FF0(v1, v5, v4, v3, v2);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = sub_230DEBA38();
  sub_230E3A6B4(v6);
  v7 = v0[1];

  return v7(v5);
}

uint64_t ServicesIntelligenceProvider.getAllSQLDatabaseConfigurations()()
{
  *(v1 + 144) = v0;
  *(v1 + 184) = 18;
  v2 = swift_task_alloc();
  *(v1 + 152) = v2;
  *v2 = v1;
  v2[1] = sub_230E373AC;

  return static RequestContext.from(_:correlationID:)(v1 + 104, (v1 + 184), 0, 0);
}

uint64_t sub_230E373AC()
{
  v1 = *(*v0 + 144);

  return MEMORY[0x2822009F8](sub_230E374BC, v1, 0);
}

uint64_t sub_230E374BC()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v0 + 129);
  v6 = *(v0 + 136);
  *(v0 + 160) = v3;
  *(v0 + 168) = v6;
  *(v0 + 64) = v1;
  *(v0 + 72) = v2;
  *(v0 + 80) = v3;
  *(v0 + 88) = v4;
  *(v0 + 89) = v5;
  *(v0 + 96) = v6;

  v7 = swift_task_alloc();
  *(v0 + 176) = v7;
  *v7 = v0;
  v7[1] = sub_230E375CC;

  return (sub_230D7CC14)(v0 + 16, 18, v0 + 64);
}

uint64_t sub_230E375CC()
{
  v1 = *(*v0 + 144);

  return MEMORY[0x2822009F8](sub_230E3771C, v1, 0);
}

uint64_t sub_230E3771C()
{
  v1 = v0[2];
  if (v1)
  {
    v3 = v0[3];
    v2 = v0[4];
    v4 = v0[5];
    v5 = v0[6];

    sub_230DE9FF0(v1, v3, v2, v4, v5);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v6 = v0[1];

  return v6(v2);
}

uint64_t ServicesIntelligenceProvider.getAllVectorDatabaseConfigurations()()
{
  *(v1 + 144) = v0;
  *(v1 + 184) = 18;
  v2 = swift_task_alloc();
  *(v1 + 152) = v2;
  *v2 = v1;
  v2[1] = sub_230E37880;

  return static RequestContext.from(_:correlationID:)(v1 + 104, (v1 + 184), 0, 0);
}

uint64_t sub_230E37880()
{
  v1 = *(*v0 + 144);

  return MEMORY[0x2822009F8](sub_230E37990, v1, 0);
}

uint64_t sub_230E37990()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v0 + 129);
  v6 = *(v0 + 136);
  *(v0 + 160) = v3;
  *(v0 + 168) = v6;
  *(v0 + 64) = v1;
  *(v0 + 72) = v2;
  *(v0 + 80) = v3;
  *(v0 + 88) = v4;
  *(v0 + 89) = v5;
  *(v0 + 96) = v6;

  v7 = swift_task_alloc();
  *(v0 + 176) = v7;
  *v7 = v0;
  v7[1] = sub_230E37AA0;

  return (sub_230D7CC14)(v0 + 16, 18, v0 + 64);
}

uint64_t sub_230E37AA0()
{
  v1 = *(*v0 + 144);

  return MEMORY[0x2822009F8](sub_230E37BF0, v1, 0);
}

uint64_t sub_230E37BF0()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = v0[3];
    v3 = v0[4];
    v4 = v0[5];
    v5 = v0[6];

    sub_230DE9FF0(v1, v2, v3, v4, v5);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v6 = v0[1];

  return v6(v4);
}

uint64_t sub_230E37CA0(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, char a6, char a7, uint64_t a8)
{
  *(v8 + 600) = v13;
  *(v8 + 592) = a8;
  *(v8 + 699) = a7;
  *(v8 + 698) = a6;
  *(v8 + 584) = a5;
  *(v8 + 576) = a4;
  *(v8 + 697) = a3;
  v10 = sub_230E68910();
  *(v8 + 608) = v10;
  *(v8 + 616) = *(v10 - 8);
  *(v8 + 624) = swift_task_alloc();
  *(v8 + 696) = a2;

  return MEMORY[0x2822009F8](sub_230E37D88, 0, 0);
}

uint64_t sub_230E37D88(uint64_t a1)
{
  v2 = *(v1 + 624);
  v3 = *(v1 + 616);
  v4 = *(v1 + 608);
  sub_230E68900();
  sub_230E688D0();
  v6 = v5;
  v7 = v5;
  v8 = (*(v3 + 8))(v2, v4);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x2822009F8](v8, v9, v10);
  }

  sub_230E686F0();
  swift_allocObject();
  sub_230E686E0();
  sub_230D0D784();
  v11 = sub_230E686D0();
  *(v1 + 632) = v11;
  *(v1 + 640) = v12;
  v13 = *(v1 + 697);
  v14 = v11;
  v15 = v12;

  v16 = DatabaseIdentifier.stringRepresentation()();
  *(v1 + 648) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B2C0, &unk_230E6F630);
  v17 = swift_allocObject();
  *(v1 + 664) = v17;
  *(v17 + 16) = xmmword_230E6B3B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8B0, &qword_230E6C238);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_230E7F0E0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  *(inited + 48) = v16;
  *(inited + 64) = 3;
  *(inited + 72) = 0x6E69616D6F64;
  *(inited + 80) = 0xE600000000000000;
  v19 = *&aLanguagesecuri[8 * v13 + 16];
  v20 = *(v1 + 699);
  *(inited + 88) = *&aInternalapps[8 * v13];
  *(inited + 96) = v19;
  *(inited + 104) = 3;
  strcpy((inited + 112), "databaseType");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  v21 = qword_230E7F2F8[v20];
  v22 = qword_230E7F310[v20];
  v23 = *(v1 + 600);
  v24 = *(v1 + 592);
  v25 = *(v1 + 584);
  v26 = *(v1 + 576);
  *(inited + 128) = v21;
  *(inited + 136) = v22;
  *(inited + 144) = 3;
  *(inited + 152) = 1701667182;
  *(inited + 160) = 0xE400000000000000;
  *(inited + 168) = v26;
  *(inited + 176) = v25;
  *(inited + 184) = 3;
  strcpy((inited + 192), "schemaVersion");
  *(inited + 206) = -4864;
  *(inited + 208) = xmmword_230E7F0F0;
  *(inited + 224) = 2;
  *(inited + 232) = 0x6144616D65686373;
  *(inited + 240) = 0xEA00000000006174;
  *(inited + 248) = v14;
  *(inited + 256) = v15;
  *(inited + 264) = 0;
  *(inited + 272) = 0x737574617473;
  *(inited + 280) = 0xE600000000000000;
  *(inited + 288) = xmmword_230E7F100;
  *(inited + 304) = 3;
  strcpy((inited + 312), "storageClass");
  *(inited + 325) = 0;
  *(inited + 326) = -5120;
  *(inited + 328) = 0x6365746F72706E75;
  *(inited + 336) = 0xEB00000000646574;
  *(inited + 344) = 3;
  *(inited + 352) = 0x68746150656C6966;
  *(inited + 360) = 0xE800000000000000;
  *(inited + 368) = xmmword_230E6E720;
  *(inited + 384) = 3;
  strcpy((inited + 392), "creationTime");
  *(inited + 405) = 0;
  *(inited + 406) = -5120;
  *(inited + 408) = v6;
  *(inited + 416) = 0;
  *(inited + 424) = 2;
  *(inited + 432) = 0x616470557473616CLL;
  *(inited + 440) = 0xEF656D6954646574;
  *(inited + 448) = v6;
  *(inited + 456) = 0;
  *(inited + 464) = 2;

  sub_230D0DD0C(v14, v15);
  v27 = sub_230D0DBB4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC28, &qword_230E6C240);
  swift_arrayDestroy();
  *(v17 + 32) = v27;
  *(v1 + 672) = sub_230E1CA68(&unk_2845A64F0);
  swift_arrayDestroy();
  sub_230D1CDE0(v23, v1 + 488);
  v8 = sub_230E38260;
  v9 = v24;
  v10 = 0;

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_230E38260()
{
  sub_230D1CDE0(*(v0 + 600), v0 + 528);

  v1 = swift_task_alloc();
  *(v0 + 680) = v1;
  *v1 = v0;
  v1[1] = sub_230E38388;

  JUMPOUT(0x230D70398);
}

uint64_t sub_230E38388()
{
  v2 = *v1;
  *(*v1 + 688) = v0;

  v3 = *(v2 + 600);
  v4 = *(v2 + 592);
  sub_230D1CE3C(v3);
  if (v0)
  {
    v5 = sub_230E387D8;
  }

  else
  {
    v5 = sub_230E384D0;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_230E384D0()
{
  sub_230D1CE3C(*(v0 + 600));

  return MEMORY[0x2822009F8](sub_230E3856C, 0, 0);
}

uint64_t sub_230E3856C()
{
  v22 = v0;
  v1 = *(v0 + 568);
  if (qword_27DB5A4B0 != -1)
  {
    swift_once();
  }

  v2 = sub_230E68D80();
  __swift_project_value_buffer(v2, qword_27DB80BC0);

  v3 = sub_230E68D60();
  v4 = sub_230E693E0();

  if (os_log_type_enabled(v3, v4))
  {
    v20 = v1;
    v5 = *(v0 + 699);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21 = v7;
    *v6 = 136315650;
    v8 = 0xE600000000000000;
    v9 = 0x524F54434556;
    if (v5 != 1)
    {
      v9 = 22091;
      v8 = 0xE200000000000000;
    }

    if (v5)
    {
      v10 = v9;
    }

    else
    {
      v10 = 5001555;
    }

    if (v5)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0xE300000000000000;
    }

    v12 = *(v0 + 656);
    v13 = *(v0 + 648);
    v19 = *(v0 + 640);
    v14 = *(v0 + 632);
    v15 = sub_230D7E620(v10, v11, &v21);

    *(v6 + 4) = v15;
    *(v6 + 12) = 2080;
    v16 = sub_230D7E620(v13, v12, &v21);

    *(v6 + 14) = v16;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v20;
    _os_log_impl(&dword_230D02000, v3, v4, "[SystemDatabase][storeDatabaseConfiguration] Upserted %s database config: %s, processed: %lld", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
    sub_230D0F4A8(v14, v19);
  }

  else
  {
    sub_230D0F4A8(*(v0 + 632), *(v0 + 640));
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_230E387D8()
{
  sub_230D1CE3C(*(v0 + 600));

  return MEMORY[0x2822009F8](sub_230E3884C, 0, 0);
}

uint64_t sub_230E3884C()
{
  sub_230D0F4A8(v0[79], v0[80]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_230E388F0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, char a7, uint64_t a8)
{
  *(v8 + 640) = v14;
  *(v8 + 632) = a8;
  *(v8 + 604) = a7;
  *(v8 + 603) = a6;
  *(v8 + 624) = a5;
  *(v8 + 616) = a4;
  *(v8 + 602) = a3;
  v10 = sub_230E68910();
  *(v8 + 648) = v10;
  *(v8 + 656) = *(v10 - 8);
  *(v8 + 664) = swift_task_alloc();
  v11 = *(a2 + 16);
  *(v8 + 568) = *a2;
  *(v8 + 584) = v11;
  *(v8 + 600) = *(a2 + 32);

  return MEMORY[0x2822009F8](sub_230E389E8, 0, 0);
}

uint64_t sub_230E389E8(uint64_t a1)
{
  v2 = *(v1 + 664);
  v3 = *(v1 + 656);
  v4 = *(v1 + 648);
  sub_230E68900();
  sub_230E688D0();
  v6 = v5;
  v7 = v5;
  v8 = (*(v3 + 8))(v2, v4);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x2822009F8](v8, v9, v10);
  }

  sub_230E686F0();
  swift_allocObject();
  sub_230E686E0();
  sub_230D45B84();
  v11 = sub_230E686D0();
  *(v1 + 672) = v11;
  *(v1 + 680) = v12;
  v13 = *(v1 + 602);
  v14 = v11;
  v15 = v12;

  v16 = DatabaseIdentifier.stringRepresentation()();
  *(v1 + 688) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B2C0, &unk_230E6F630);
  v17 = swift_allocObject();
  *(v1 + 704) = v17;
  *(v17 + 16) = xmmword_230E6B3B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8B0, &qword_230E6C238);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_230E7F0E0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  *(inited + 48) = v16;
  *(inited + 64) = 3;
  *(inited + 72) = 0x6E69616D6F64;
  *(inited + 80) = 0xE600000000000000;
  v19 = *&aLanguagesecuri[8 * v13 + 16];
  v20 = *(v1 + 604);
  *(inited + 88) = *&aInternalapps[8 * v13];
  *(inited + 96) = v19;
  *(inited + 104) = 3;
  strcpy((inited + 112), "databaseType");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  v21 = qword_230E7F2F8[v20];
  v22 = qword_230E7F310[v20];
  v23 = *(v1 + 640);
  v24 = *(v1 + 632);
  v25 = *(v1 + 624);
  v26 = *(v1 + 616);
  *(inited + 128) = v21;
  *(inited + 136) = v22;
  *(inited + 144) = 3;
  *(inited + 152) = 1701667182;
  *(inited + 160) = 0xE400000000000000;
  *(inited + 168) = v26;
  *(inited + 176) = v25;
  *(inited + 184) = 3;
  strcpy((inited + 192), "schemaVersion");
  *(inited + 206) = -4864;
  *(inited + 208) = xmmword_230E7F0F0;
  *(inited + 224) = 2;
  *(inited + 232) = 0x6144616D65686373;
  *(inited + 240) = 0xEA00000000006174;
  *(inited + 248) = v14;
  *(inited + 256) = v15;
  *(inited + 264) = 0;
  *(inited + 272) = 0x737574617473;
  *(inited + 280) = 0xE600000000000000;
  *(inited + 288) = xmmword_230E7F100;
  *(inited + 304) = 3;
  strcpy((inited + 312), "storageClass");
  *(inited + 325) = 0;
  *(inited + 326) = -5120;
  *(inited + 328) = 0x6365746F72706E75;
  *(inited + 336) = 0xEB00000000646574;
  *(inited + 344) = 3;
  *(inited + 352) = 0x68746150656C6966;
  *(inited + 360) = 0xE800000000000000;
  *(inited + 368) = xmmword_230E6E720;
  *(inited + 384) = 3;
  strcpy((inited + 392), "creationTime");
  *(inited + 405) = 0;
  *(inited + 406) = -5120;
  *(inited + 408) = v6;
  *(inited + 416) = 0;
  *(inited + 424) = 2;
  *(inited + 432) = 0x616470557473616CLL;
  *(inited + 440) = 0xEF656D6954646574;
  *(inited + 448) = v6;
  *(inited + 456) = 0;
  *(inited + 464) = 2;

  sub_230D0DD0C(v14, v15);
  v27 = sub_230D0DBB4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC28, &qword_230E6C240);
  swift_arrayDestroy();
  *(v17 + 32) = v27;
  *(v1 + 712) = sub_230E1CA68(&unk_2845A6560);
  swift_arrayDestroy();
  sub_230D1CDE0(v23, v1 + 488);
  v8 = sub_230E38EC0;
  v9 = v24;
  v10 = 0;

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_230E38EC0()
{
  sub_230D1CDE0(*(v0 + 640), v0 + 528);

  v1 = swift_task_alloc();
  *(v0 + 720) = v1;
  *v1 = v0;
  v1[1] = sub_230E38FE8;

  JUMPOUT(0x230D70398);
}

uint64_t sub_230E38FE8()
{
  v2 = *v1;
  *(*v1 + 728) = v0;

  v3 = *(v2 + 640);
  v4 = *(v2 + 632);
  sub_230D1CE3C(v3);
  if (v0)
  {
    v5 = sub_230E39438;
  }

  else
  {
    v5 = sub_230E39130;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_230E39130()
{
  sub_230D1CE3C(*(v0 + 640));

  return MEMORY[0x2822009F8](sub_230E391CC, 0, 0);
}

uint64_t sub_230E391CC()
{
  v22 = v0;
  v1 = *(v0 + 608);
  if (qword_27DB5A4B0 != -1)
  {
    swift_once();
  }

  v2 = sub_230E68D80();
  __swift_project_value_buffer(v2, qword_27DB80BC0);

  v3 = sub_230E68D60();
  v4 = sub_230E693E0();

  if (os_log_type_enabled(v3, v4))
  {
    v20 = v1;
    v5 = *(v0 + 604);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21 = v7;
    *v6 = 136315650;
    v8 = 0xE600000000000000;
    v9 = 0x524F54434556;
    if (v5 != 1)
    {
      v9 = 22091;
      v8 = 0xE200000000000000;
    }

    if (v5)
    {
      v10 = v9;
    }

    else
    {
      v10 = 5001555;
    }

    if (v5)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0xE300000000000000;
    }

    v12 = *(v0 + 696);
    v13 = *(v0 + 688);
    v19 = *(v0 + 680);
    v14 = *(v0 + 672);
    v15 = sub_230D7E620(v10, v11, &v21);

    *(v6 + 4) = v15;
    *(v6 + 12) = 2080;
    v16 = sub_230D7E620(v13, v12, &v21);

    *(v6 + 14) = v16;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v20;
    _os_log_impl(&dword_230D02000, v3, v4, "[SystemDatabase][storeDatabaseConfiguration] Upserted %s database config: %s, processed: %lld", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
    sub_230D0F4A8(v14, v19);
  }

  else
  {
    sub_230D0F4A8(*(v0 + 672), *(v0 + 680));
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_230E39438()
{
  sub_230D1CE3C(*(v0 + 640));

  return MEMORY[0x2822009F8](sub_230E394AC, 0, 0);
}

uint64_t sub_230E394AC()
{
  sub_230D0F4A8(v0[84], v0[85]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_230E39550(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, char a7, uint64_t a8)
{
  *(v8 + 608) = v12;
  *(v8 + 600) = a8;
  *(v8 + 706) = a7;
  *(v8 + 705) = a6;
  *(v8 + 592) = a5;
  *(v8 + 584) = a4;
  *(v8 + 704) = a3;
  *(v8 + 576) = a2;
  v9 = sub_230E68910();
  *(v8 + 616) = v9;
  *(v8 + 624) = *(v9 - 8);
  *(v8 + 632) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230E39634, 0, 0);
}

uint64_t sub_230E39634(uint64_t a1)
{
  v2 = *(v1 + 632);
  v3 = *(v1 + 624);
  v4 = *(v1 + 616);
  sub_230E68900();
  sub_230E688D0();
  v6 = v5;
  v7 = v5;
  v8 = (*(v3 + 8))(v2, v4);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x2822009F8](v8, v9, v10);
  }

  sub_230E686F0();
  swift_allocObject();
  sub_230E686E0();
  type metadata accessor for SQLDatabaseConfiguration(0);
  sub_230E3B8F8(&qword_281566328, type metadata accessor for SQLDatabaseConfiguration, &protocol conformance descriptor for SQLDatabaseConfiguration);
  v11 = sub_230E686D0();
  *(v1 + 640) = v11;
  *(v1 + 648) = v12;
  v13 = *(v1 + 704);
  v14 = v11;
  v15 = v12;

  v16 = DatabaseIdentifier.stringRepresentation()();
  *(v1 + 656) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B2C0, &unk_230E6F630);
  v17 = swift_allocObject();
  *(v1 + 672) = v17;
  *(v17 + 16) = xmmword_230E6B3B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8B0, &qword_230E6C238);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_230E7F0E0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  *(inited + 48) = v16;
  *(inited + 64) = 3;
  *(inited + 72) = 0x6E69616D6F64;
  *(inited + 80) = 0xE600000000000000;
  v19 = *&aLanguagesecuri[8 * v13 + 16];
  v20 = *(v1 + 706);
  *(inited + 88) = *&aInternalapps[8 * v13];
  *(inited + 96) = v19;
  *(inited + 104) = 3;
  strcpy((inited + 112), "databaseType");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  v21 = qword_230E7F2F8[v20];
  v22 = qword_230E7F310[v20];
  v23 = *(v1 + 608);
  v24 = *(v1 + 600);
  v25 = *(v1 + 592);
  v26 = *(v1 + 584);
  *(inited + 128) = v21;
  *(inited + 136) = v22;
  *(inited + 144) = 3;
  *(inited + 152) = 1701667182;
  *(inited + 160) = 0xE400000000000000;
  *(inited + 168) = v26;
  *(inited + 176) = v25;
  *(inited + 184) = 3;
  strcpy((inited + 192), "schemaVersion");
  *(inited + 206) = -4864;
  *(inited + 208) = xmmword_230E7F0F0;
  *(inited + 224) = 2;
  *(inited + 232) = 0x6144616D65686373;
  *(inited + 240) = 0xEA00000000006174;
  *(inited + 248) = v14;
  *(inited + 256) = v15;
  *(inited + 264) = 0;
  *(inited + 272) = 0x737574617473;
  *(inited + 280) = 0xE600000000000000;
  *(inited + 288) = xmmword_230E7F100;
  *(inited + 304) = 3;
  strcpy((inited + 312), "storageClass");
  *(inited + 325) = 0;
  *(inited + 326) = -5120;
  *(inited + 328) = 0x6365746F72706E75;
  *(inited + 336) = 0xEB00000000646574;
  *(inited + 344) = 3;
  *(inited + 352) = 0x68746150656C6966;
  *(inited + 360) = 0xE800000000000000;
  *(inited + 368) = xmmword_230E6E720;
  *(inited + 384) = 3;
  strcpy((inited + 392), "creationTime");
  *(inited + 405) = 0;
  *(inited + 406) = -5120;
  *(inited + 408) = v6;
  *(inited + 416) = 0;
  *(inited + 424) = 2;
  *(inited + 432) = 0x616470557473616CLL;
  *(inited + 440) = 0xEF656D6954646574;
  *(inited + 448) = v6;
  *(inited + 456) = 0;
  *(inited + 464) = 2;

  sub_230D0DD0C(v14, v15);
  v27 = sub_230D0DBB4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC28, &qword_230E6C240);
  swift_arrayDestroy();
  *(v17 + 32) = v27;
  *(v1 + 680) = sub_230E1CA68(&unk_2845A65D0);
  swift_arrayDestroy();
  sub_230D1CDE0(v23, v1 + 488);
  v8 = sub_230E39B48;
  v9 = v24;
  v10 = 0;

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_230E39B48()
{
  sub_230D1CDE0(*(v0 + 608), v0 + 528);

  v1 = swift_task_alloc();
  *(v0 + 688) = v1;
  *v1 = v0;
  v1[1] = sub_230E39C70;

  JUMPOUT(0x230D70398);
}

uint64_t sub_230E39C70()
{
  v2 = *v1;
  *(*v1 + 696) = v0;

  v3 = *(v2 + 608);
  v4 = *(v2 + 600);
  sub_230D1CE3C(v3);
  if (v0)
  {
    v5 = sub_230E3A0C0;
  }

  else
  {
    v5 = sub_230E39DB8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_230E39DB8()
{
  sub_230D1CE3C(*(v0 + 608));

  return MEMORY[0x2822009F8](sub_230E39E54, 0, 0);
}

uint64_t sub_230E39E54()
{
  v22 = v0;
  v1 = *(v0 + 568);
  if (qword_27DB5A4B0 != -1)
  {
    swift_once();
  }

  v2 = sub_230E68D80();
  __swift_project_value_buffer(v2, qword_27DB80BC0);

  v3 = sub_230E68D60();
  v4 = sub_230E693E0();

  if (os_log_type_enabled(v3, v4))
  {
    v20 = v1;
    v5 = *(v0 + 706);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21 = v7;
    *v6 = 136315650;
    v8 = 0xE600000000000000;
    v9 = 0x524F54434556;
    if (v5 != 1)
    {
      v9 = 22091;
      v8 = 0xE200000000000000;
    }

    if (v5)
    {
      v10 = v9;
    }

    else
    {
      v10 = 5001555;
    }

    if (v5)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0xE300000000000000;
    }

    v12 = *(v0 + 664);
    v13 = *(v0 + 656);
    v19 = *(v0 + 648);
    v14 = *(v0 + 640);
    v15 = sub_230D7E620(v10, v11, &v21);

    *(v6 + 4) = v15;
    *(v6 + 12) = 2080;
    v16 = sub_230D7E620(v13, v12, &v21);

    *(v6 + 14) = v16;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v20;
    _os_log_impl(&dword_230D02000, v3, v4, "[SystemDatabase][storeDatabaseConfiguration] Upserted %s database config: %s, processed: %lld", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
    sub_230D0F4A8(v14, v19);
  }

  else
  {
    sub_230D0F4A8(*(v0 + 640), *(v0 + 648));
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_230E3A0C0()
{
  sub_230D1CE3C(*(v0 + 608));

  return MEMORY[0x2822009F8](sub_230E3A134, 0, 0);
}

uint64_t sub_230E3A134()
{
  sub_230D0F4A8(v0[80], v0[81]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_230E3A1D8(uint64_t result)
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

  result = sub_230E49E88(result, v10, 1, v3);
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

void *sub_230E3A2CC(void *result)
{
  v3 = result[2];
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_230E49E88(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = v9 - v11;
  result = sub_230E6701C(&v42, &v4[16 * v11 + 32], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v15 = result;
  if (result)
  {
    v16 = *(v4 + 2);
    v17 = __OFADD__(v16, result);
    v18 = result + v16;
    if (v17)
    {
      __break(1u);
LABEL_19:
      v21 = (v14 + 64) >> 6;
      if (v21 <= v2 + 1)
      {
        v22 = v2 + 1;
      }

      else
      {
        v22 = (v14 + 64) >> 6;
      }

      v23 = v22 - 1;
      do
      {
        v24 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v24 >= v21)
        {
          v45 = v23;
          v46 = 0;
          goto LABEL_13;
        }

        v25 = *(v13 + 8 * v24);
        ++v2;
      }

      while (!v25);
      v39 = v14;
      v19 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v2 = v24;
      goto LABEL_27;
    }

    *(v4 + 2) = v18;
  }

  result = v42;
  if (v15 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v12 = *(v4 + 2);
  v13 = v43;
  v14 = v44;
  v2 = v45;
  v41 = v43;
  if (!v46)
  {
    goto LABEL_19;
  }

  v19 = (v46 - 1) & v46;
  v20 = __clz(__rbit64(v46)) | (v45 << 6);
  v39 = v44;
  v21 = (v44 + 64) >> 6;
LABEL_27:
  v40 = result;
  v26 = (result[6] + 16 * v20);
  v28 = *v26;
  v27 = v26[1];

  v29 = v41;
LABEL_29:
  while (1)
  {
    v30 = *(v4 + 3);
    v31 = v30 >> 1;
    if ((v30 >> 1) < v12 + 1)
    {
      break;
    }

    if (v12 < v31)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v12;
  }

  v37 = sub_230E49E88((v30 > 1), v12 + 1, 1, v4);
  v29 = v41;
  v4 = v37;
  v31 = *(v37 + 3) >> 1;
  if (v12 >= v31)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v32 = &v4[16 * v12 + 32];
    *v32 = v28;
    *(v32 + 1) = v27;
    ++v12;
    if (!v19)
    {
      break;
    }

    result = v40;
LABEL_38:
    v35 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v36 = (result[6] + ((v2 << 10) | (16 * v35)));
    v28 = *v36;
    v27 = v36[1];

    v29 = v41;
    if (v12 == v31)
    {
      v12 = v31;
      *(v4 + 2) = v31;
      goto LABEL_29;
    }
  }

  v33 = v2;
  result = v40;
  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v34 >= v21)
    {
      break;
    }

    v19 = *(v29 + 8 * v34);
    ++v33;
    if (v19)
    {
      v2 = v34;
      goto LABEL_38;
    }
  }

  if (v21 <= v2 + 1)
  {
    v38 = v2 + 1;
  }

  else
  {
    v38 = v21;
  }

  v44 = v39;
  v45 = v38 - 1;
  v46 = 0;
  *(v4 + 2) = v12;
LABEL_13:
  result = sub_230D912FC(result);
  *v1 = v4;
  return result;
}

uint64_t sub_230E3A588(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_230E4A9C4(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for Treatment(0);
  if (v8 < v2)
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

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_230E3A6B4(uint64_t result)
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

  result = sub_230E4AB9C(result, v11, 1, v3);
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

uint64_t sub_230E3A7A0(uint64_t a1, char *a2, char a3, uint64_t a4, uint64_t a5, char a6, char a7, uint64_t a8)
{
  v16 = *a2;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_230D1BF00;

  return sub_230E37CA0(a1, v16, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_230E3A898(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, char a7, uint64_t a8)
{
  v16 = *(a2 + 16);
  *(v8 + 16) = *a2;
  *(v8 + 32) = v16;
  *(v8 + 48) = *(a2 + 32);
  v17 = swift_task_alloc();
  *(v8 + 56) = v17;
  *v17 = v8;
  v17[1] = sub_230E3A994;

  return sub_230E388F0(a1, v8 + 16, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_230E3A994()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_230E3AA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_230D65D5C;

  return sub_230E075CC(a2, a3, a4, a5);
}

uint64_t sub_230E3AB40(uint64_t a1, char a2, uint64_t a3, unsigned __int8 a4)
{
  v8 = sub_230E68D80();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v53 - v16;
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v53 - v20;
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v53 - v23;
  if (a2)
  {
    sub_230E68D70();
    v25 = sub_230E68D60();
    v26 = sub_230E693E0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_230D02000, v25, v26, "[ServicesIntelligenceProvider][processConfiguration] First-time setup detected, proceeding with sync", v27, 2u);
      MEMORY[0x23191EAE0](v27, -1, -1);
    }

    (*(v9 + 8))(v24, v8);
    return 1;
  }

  v28 = *(a3 + 40);
  if (v28 > a1)
  {
    sub_230E68D70();
    sub_230E1E0EC(a3, v57);
    v29 = sub_230E68D60();
    v30 = sub_230E693E0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 134218240;
      *(v31 + 4) = a1;
      *(v31 + 12) = 2048;
      *(v31 + 14) = v28;
      sub_230D814C8(a3);
      _os_log_impl(&dword_230D02000, v29, v30, "[ServicesIntelligenceProvider][processConfiguration] New version available (%ld → %ld), proceeding with sync", v31, 0x16u);
      MEMORY[0x23191EAE0](v31, -1, -1);
    }

    else
    {
      sub_230D814C8(a3);
    }

    (*(v9 + 8))(v21, v8);
    return 1;
  }

  v32 = 0xEC000000676E697ALL;
  v33 = 0x696C616974696E69;
  v56 = v8;
  if (a4 > 1u)
  {
    if (a4 == 2)
    {
LABEL_26:

LABEL_27:
      sub_230E68D70();
      v41 = sub_230E68D60();
      v42 = sub_230E693E0();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v57[0] = v44;
        *v43 = 136315138;
        v45 = 0xE800000000000000;
        v46 = 0xE500000000000000;
        v47 = 0x726F727265;
        if (a4 == 2)
        {
          v47 = 0x6465646172676564;
        }

        else
        {
          v45 = 0xE500000000000000;
        }

        v48 = 0x7964616572;
        if (!a4)
        {
          v48 = 0x696C616974696E69;
          v46 = 0xEC000000676E697ALL;
        }

        if (a4 <= 1u)
        {
          v49 = v48;
        }

        else
        {
          v49 = v47;
        }

        if (a4 <= 1u)
        {
          v50 = v46;
        }

        else
        {
          v50 = v45;
        }

        v51 = sub_230D7E620(v49, v50, v57);

        *(v43 + 4) = v51;
        _os_log_impl(&dword_230D02000, v41, v42, "[ServicesIntelligenceProvider][processConfiguration] System status is %s, proceeding with recovery sync", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v44);
        MEMORY[0x23191EAE0](v44, -1, -1);
        MEMORY[0x23191EAE0](v43, -1, -1);

        (*(v9 + 8))(v17, v56);
      }

      else
      {

        (*(v9 + 8))(v17, v8);
      }

      return 1;
    }

    v55 = v28;
  }

  else
  {
    v55 = v28;
  }

  v34 = sub_230E698C0();

  v8 = v56;
  if (v34)
  {
    goto LABEL_27;
  }

  if (a4 > 2u)
  {
    goto LABEL_26;
  }

  v35 = sub_230E698C0();

  v8 = v56;
  if (v35)
  {
    goto LABEL_27;
  }

  sub_230E68D70();
  sub_230E1E0EC(a3, v57);
  v36 = sub_230E68D60();
  v37 = sub_230E693E0();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v57[0] = v54;
    *v38 = 134218498;
    *(v38 + 4) = v55;
    sub_230D814C8(a3);
    *(v38 + 12) = 2048;
    *(v38 + 14) = a1;
    *(v38 + 22) = 2080;
    if (a4)
    {
      if (a4 == 1)
      {
        v33 = 0x7964616572;
      }

      else
      {
        v33 = 0x6465646172676564;
      }

      if (a4 == 1)
      {
        v32 = 0xE500000000000000;
      }

      else
      {
        v32 = 0xE800000000000000;
      }
    }

    v39 = sub_230D7E620(v33, v32, v57);

    *(v38 + 24) = v39;
    _os_log_impl(&dword_230D02000, v36, v37, "[ServicesIntelligenceProvider][processConfiguration] Version %ld ≤ current %ld and system status is %s, skipping update", v38, 0x20u);
    v40 = v54;
    __swift_destroy_boxed_opaque_existential_1(v54);
    MEMORY[0x23191EAE0](v40, -1, -1);
    MEMORY[0x23191EAE0](v38, -1, -1);

    (*(v9 + 8))(v13, v56);
  }

  else
  {
    sub_230D814C8(a3);

    (*(v9 + 8))(v13, v8);
  }

  return 0;
}

uint64_t sub_230E3B334(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_230E3B394(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_230E3B450(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 41);
  v8 = *(v1 + 48);
  v9 = *(v1 + 24);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_230D1BF00;

  return sub_230E1E2D4(a1, v4, v9, v5, v6, v7, v8);
}

uint64_t sub_230E3B58C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D8A8, &qword_230E7F1D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_230E3B5FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 56);
  v8 = *(v1 + 49);
  v9 = *(v1 + 48);
  v10 = *(v1 + 24);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_230D1D2F8;

  return sub_230E39550(a1, v4, v10, v5, v6, v9, v8, v7);
}

void sub_230E3B6F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_230D1D2F8;

  JUMPOUT(0x230E3A898);
}

void sub_230E3B7F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_230D1D2F8;

  JUMPOUT(0x230E3A7A0);
}

uint64_t sub_230E3B8F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_230E3B96C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_230D1D2F8;

  return sub_230E3AA88(a1, v4, v5, v7, v6);
}

uint64_t static SystemDatabase.storeDatabaseConfiguration<A>(_:type:identifier:using:requestContext:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 112) = a6;
  *(v7 + 120) = a7;
  *(v7 + 96) = a1;
  *(v7 + 104) = a4;
  *(v7 + 233) = *a2;
  *(v7 + 234) = *a3;
  v8 = *(a3 + 16);
  *(v7 + 128) = *(a3 + 8);
  *(v7 + 136) = v8;
  *(v7 + 235) = *(a3 + 24);
  v9 = *(a5 + 16);
  *(v7 + 144) = *a5;
  *(v7 + 160) = v9;
  *(v7 + 176) = *(a5 + 32);
  return MEMORY[0x2822009F8](sub_230E3BA94, 0, 0);
}

uint64_t sub_230E3BA94()
{
  v1 = *(v0 + 160);
  if (v1)
  {
    v17 = v0 + 16;
    v2 = *(v0 + 168);
    v3 = *(v0 + 176);
    v4 = *(v0 + 144);
    v5 = *(v0 + 152);
    *(v0 + 192) = v1;
    *(v0 + 200) = v3;
    *(v0 + 16) = v4;
    *(v0 + 24) = v5;
    *(v0 + 32) = v1;
    *(v0 + 40) = v2 & 1;
    *(v0 + 41) = BYTE1(v2);
    *(v0 + 48) = v3;
    sub_230D0585C(v4, v5, v1, v2, v3);
    if (qword_27DB5A430 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 235);
    v8 = *(v0 + 128);
    v7 = *(v0 + 136);
    v9 = *(v0 + 234);
    v10 = *(v0 + 233);
    v11 = *(v0 + 96);
    v12 = *(v0 + 104);
    v13 = swift_task_alloc();
    *(v0 + 208) = v13;
    *(v13 + 16) = *(v0 + 112);
    *(v13 + 32) = v11;
    *(v13 + 40) = v9;
    *(v13 + 48) = v8;
    *(v13 + 56) = v7;
    *(v13 + 64) = v6;
    *(v13 + 65) = v10;
    *(v13 + 72) = v12;
    *(v13 + 80) = v17;
    v14 = swift_task_alloc();
    *(v0 + 216) = v14;
    *v14 = v0;
    v14[1] = sub_230E3BF64;

    return sub_230D12EB8(sub_230D12EB8, 45, v17, &unk_230E7F350, v13);
  }

  else
  {
    *(v0 + 232) = 45;
    v16 = swift_task_alloc();
    *(v0 + 184) = v16;
    *v16 = v0;
    v16[1] = sub_230E3BCC8;

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 232), 0, 0);
  }
}

uint64_t sub_230E3BCC8()
{

  return MEMORY[0x2822009F8](sub_230E3BDC4, 0, 0);
}

uint64_t sub_230E3BDC4()
{
  *(v0 + 16) = *(v0 + 56);
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 81);
  v5 = *(v0 + 88);
  *(v0 + 192) = v2;
  *(v0 + 200) = v5;
  v6 = *(v0 + 168);
  v7 = *(v0 + 176);
  v8 = *(v0 + 152);
  v9 = *(v0 + 160);
  v10 = *(v0 + 144);
  *(v0 + 24) = v1;
  *(v0 + 32) = v2;
  *(v0 + 40) = v3;
  *(v0 + 41) = v4;
  *(v0 + 48) = v5;
  sub_230D0585C(v10, v8, v9, v6, v7);
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 235);
  v13 = *(v0 + 128);
  v12 = *(v0 + 136);
  v14 = *(v0 + 234);
  v15 = *(v0 + 233);
  v16 = *(v0 + 96);
  v17 = *(v0 + 104);
  v18 = swift_task_alloc();
  *(v0 + 208) = v18;
  *(v18 + 16) = *(v0 + 112);
  *(v18 + 32) = v16;
  *(v18 + 40) = v14;
  *(v18 + 48) = v13;
  *(v18 + 56) = v12;
  *(v18 + 64) = v11;
  *(v18 + 65) = v15;
  *(v18 + 72) = v17;
  *(v18 + 80) = v0 + 16;
  v19 = swift_task_alloc();
  *(v0 + 216) = v19;
  *v19 = v0;
  v19[1] = sub_230E3BF64;

  return (sub_230D12EB8)();
}

uint64_t sub_230E3BF64()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_230E3C0D4;
  }

  else
  {
    v2 = sub_230D63F54;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_230E3C0EC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, char a7, uint64_t a8)
{
  *(v8 + 624) = v13;
  *(v8 + 608) = v12;
  *(v8 + 600) = a8;
  *(v8 + 722) = a7;
  *(v8 + 721) = a6;
  *(v8 + 592) = a5;
  *(v8 + 584) = a4;
  *(v8 + 720) = a3;
  *(v8 + 576) = a2;
  v9 = sub_230E68910();
  *(v8 + 632) = v9;
  *(v8 + 640) = *(v9 - 8);
  *(v8 + 648) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230E3C1D8, 0, 0);
}

uint64_t sub_230E3C1D8(uint64_t a1)
{
  v2 = *(v1 + 648);
  v3 = *(v1 + 640);
  v4 = *(v1 + 632);
  sub_230E68900();
  sub_230E688D0();
  v6 = v5;
  v7 = v5;
  v8 = (*(v3 + 8))(v2, v4);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x2822009F8](v8, v9, v10);
  }

  sub_230E686F0();
  swift_allocObject();
  sub_230E686E0();
  v11 = sub_230E686D0();
  *(v1 + 656) = v11;
  *(v1 + 664) = v12;
  v13 = *(v1 + 720);
  v14 = v11;
  v28 = v12;

  v15 = DatabaseIdentifier.stringRepresentation()();
  *(v1 + 672) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B2C0, &unk_230E6F630);
  v31 = swift_allocObject();
  *(v1 + 688) = v31;
  *(v31 + 16) = xmmword_230E6B3B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8B0, &qword_230E6C238);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_230E7F0E0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  *(inited + 48) = v15;
  *(inited + 64) = 3;
  *(inited + 72) = 0x6E69616D6F64;
  *(inited + 80) = 0xE600000000000000;
  v17 = *&aLanguagesecuri_0[8 * v13 + 16];
  v18 = *(v1 + 722);
  *(inited + 88) = *&aInternalapps_0[8 * v13];
  *(inited + 96) = v17;
  *(inited + 104) = 3;
  strcpy((inited + 112), "databaseType");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  v19 = qword_230E7F410[v18];
  v20 = qword_230E7F428[v18];
  v21 = *(v1 + 624);
  v27 = *(v1 + 616);
  v29 = *(v1 + 608);
  v30 = *(v1 + 600);
  v22 = *(v1 + 592);
  v23 = *(v1 + 584);
  *(inited + 128) = v19;
  *(inited + 136) = v20;
  *(inited + 144) = 3;
  *(inited + 152) = 1701667182;
  *(inited + 160) = 0xE400000000000000;
  *(inited + 168) = v23;
  *(inited + 176) = v22;
  *(inited + 184) = 3;
  strcpy((inited + 192), "schemaVersion");
  *(inited + 206) = -4864;
  *(inited + 208) = xmmword_230E7F0F0;
  *(inited + 224) = 2;
  *(inited + 232) = 0x6144616D65686373;
  *(inited + 240) = 0xEA00000000006174;
  *(inited + 248) = v14;
  *(inited + 256) = v28;
  *(inited + 264) = 0;
  *(inited + 272) = 0x737574617473;
  *(inited + 280) = 0xE600000000000000;
  *(inited + 288) = xmmword_230E7F100;
  *(inited + 304) = 3;
  strcpy((inited + 312), "storageClass");
  *(inited + 325) = 0;
  *(inited + 326) = -5120;
  v24 = *(v21 + 32);

  sub_230D0DD0C(v14, v28);
  v24(v27, v21);
  *(inited + 328) = 0x6365746F72706E75;
  *(inited + 336) = 0xEB00000000646574;
  *(inited + 344) = 3;
  *(inited + 352) = 0x68746150656C6966;
  *(inited + 360) = 0xE800000000000000;
  *(inited + 368) = xmmword_230E6E720;
  *(inited + 384) = 3;
  strcpy((inited + 392), "creationTime");
  *(inited + 405) = 0;
  *(inited + 406) = -5120;
  *(inited + 408) = v6;
  *(inited + 416) = 0;
  *(inited + 424) = 2;
  *(inited + 432) = 0x616470557473616CLL;
  *(inited + 440) = 0xEF656D6954646574;
  *(inited + 448) = v6;
  *(inited + 456) = 0;
  *(inited + 464) = 2;
  v25 = sub_230D0DBB4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC28, &qword_230E6C240);
  swift_arrayDestroy();
  *(v31 + 32) = v25;
  *(v1 + 696) = sub_230E1CA68(&unk_2845A6640);
  swift_arrayDestroy();
  sub_230D1CDE0(v29, v1 + 488);
  v8 = sub_230E3C714;
  v9 = v30;
  v10 = 0;

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_230E3C714()
{
  sub_230D1CDE0(*(v0 + 608), v0 + 528);

  v1 = swift_task_alloc();
  *(v0 + 704) = v1;
  *v1 = v0;
  v1[1] = sub_230E3C83C;

  JUMPOUT(0x230D70398);
}

uint64_t sub_230E3C83C()
{
  v2 = *v1;
  *(*v1 + 712) = v0;

  v3 = *(v2 + 608);
  v4 = *(v2 + 600);
  sub_230D1CE3C(v3);
  if (v0)
  {
    v5 = sub_230E3CC8C;
  }

  else
  {
    v5 = sub_230E3C984;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_230E3C984()
{
  sub_230D1CE3C(*(v0 + 608));

  return MEMORY[0x2822009F8](sub_230E3CA20, 0, 0);
}

uint64_t sub_230E3CA20()
{
  v22 = v0;
  v1 = *(v0 + 568);
  if (qword_27DB5A4B0 != -1)
  {
    swift_once();
  }

  v2 = sub_230E68D80();
  __swift_project_value_buffer(v2, qword_27DB80BC0);

  v3 = sub_230E68D60();
  v4 = sub_230E693E0();

  if (os_log_type_enabled(v3, v4))
  {
    v20 = v1;
    v5 = *(v0 + 722);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21 = v7;
    *v6 = 136315650;
    v8 = 0xE600000000000000;
    v9 = 0x524F54434556;
    if (v5 != 1)
    {
      v9 = 22091;
      v8 = 0xE200000000000000;
    }

    if (v5)
    {
      v10 = v9;
    }

    else
    {
      v10 = 5001555;
    }

    if (v5)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0xE300000000000000;
    }

    v12 = *(v0 + 680);
    v13 = *(v0 + 672);
    v19 = *(v0 + 664);
    v14 = *(v0 + 656);
    v15 = sub_230D7E620(v10, v11, &v21);

    *(v6 + 4) = v15;
    *(v6 + 12) = 2080;
    v16 = sub_230D7E620(v13, v12, &v21);

    *(v6 + 14) = v16;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v20;
    _os_log_impl(&dword_230D02000, v3, v4, "[SystemDatabase][storeDatabaseConfiguration] Upserted %s database config: %s, processed: %lld", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
    sub_230D0F4A8(v14, v19);
  }

  else
  {
    sub_230D0F4A8(*(v0 + 656), *(v0 + 664));
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_230E3CC8C()
{
  sub_230D1CE3C(*(v0 + 608));

  return MEMORY[0x2822009F8](sub_230E3CD00, 0, 0);
}

uint64_t sub_230E3CD00()
{
  sub_230D0F4A8(v0[82], v0[83]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_230E3CDA4(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v13 = *(v1 + 72);
  v6 = *(v1 + 65);
  v7 = *(v1 + 64);
  v8 = *(v1 + 40);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_230D1BF00;

  return sub_230E3C0EC(a1, v3, v8, v4, v5, v7, v6, v13);
}

uint64_t sub_230E3CEA4(uint64_t a1, uint64_t a2)
{
  *(v2 + 504) = a1;
  v3 = *(a2 + 16);
  *(v2 + 512) = *a2;
  *(v2 + 528) = v3;
  *(v2 + 544) = *(a2 + 32);
  return MEMORY[0x2822009F8](sub_230E3CED4, 0, 0);
}

uint64_t sub_230E3CED4()
{
  v1 = *(v0 + 544);
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0u;
  *(v0 + 352) = 1;
  v7 = *(v0 + 528);
  v8 = *(v0 + 512);
  sub_230D1D098(v0 + 256);
  *(v0 + 16) = 0xD000000000000012;
  *(v0 + 24) = 0x8000000230E81B30;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xD000000000000012;
  *(v0 + 96) = 0x8000000230E84E30;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  v2 = *(v0 + 96);
  *(v0 + 200) = *(v0 + 80);
  *(v0 + 216) = v2;
  *(v0 + 232) = *(v0 + 112);
  v3 = *(v0 + 32);
  *(v0 + 136) = *(v0 + 16);
  *(v0 + 152) = v3;
  v4 = *(v0 + 64);
  *(v0 + 168) = *(v0 + 48);
  *(v0 + 128) = 1;
  *(v0 + 248) = 1;
  *(v0 + 184) = v4;
  *(v0 + 456) = v8;
  *(v0 + 472) = v7;
  *(v0 + 488) = v1;
  v5 = swift_task_alloc();
  *(v0 + 552) = v5;
  *v5 = v0;
  v5[1] = sub_230E3D044;

  return sub_230D3ED1C(v0 + 496, v0 + 136, v0 + 456);
}

uint64_t sub_230E3D044()
{
  v2 = *v1;
  *(*v1 + 560) = v0;

  if (v0)
  {
    v3 = sub_230E3D328;
  }

  else
  {
    sub_230D1D148(v2 + 16);
    v3 = sub_230E3D160;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_230E3D160()
{
  v1 = *(v0 + 496);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v2 - 1;
    v5 = MEMORY[0x277D84F90];
    do
    {
      v6 = v3;
      while (1)
      {
        if (v6 >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        v3 = v6 + 1;

        sub_230E67C98(v7, (v0 + 360));
        v15 = *(v0 + 392);
        v16 = *(v0 + 408);
        v17 = *(v0 + 424);
        v18 = *(v0 + 440);
        v13 = *(v0 + 360);
        v14 = *(v0 + 376);

        if (*(v0 + 368))
        {
          break;
        }

        ++v6;
        if (v2 == v3)
        {
          goto LABEL_15;
        }
      }

      v12 = v4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_230E4AC90(0, *(v5 + 2) + 1, 1, v5);
      }

      v9 = *(v5 + 2);
      v8 = *(v5 + 3);
      if (v9 >= v8 >> 1)
      {
        v5 = sub_230E4AC90((v8 > 1), v9 + 1, 1, v5);
      }

      *(v5 + 2) = v9 + 1;
      v10 = &v5[96 * v9];
      *(v10 + 3) = v14;
      *(v10 + 6) = v17;
      *(v10 + 7) = v18;
      *(v10 + 4) = v15;
      *(v10 + 5) = v16;
      *(v10 + 2) = v13;
      v4 = v12;
    }

    while (v12 != v6);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

LABEL_15:

  v11 = *(v0 + 8);

  v11(v5);
}

uint64_t sub_230E3D328()
{
  sub_230D1D148(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230E3D38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 592) = a4;
  *(v5 + 584) = a3;
  *(v5 + 576) = a2;
  *(v5 + 568) = a1;
  v7 = sub_230E68860();
  *(v5 + 600) = v7;
  *(v5 + 608) = *(v7 - 8);
  *(v5 + 616) = swift_task_alloc();
  v8 = sub_230E68910();
  *(v5 + 624) = v8;
  *(v5 + 632) = *(v8 - 8);
  *(v5 + 640) = swift_task_alloc();
  v9 = *(a5 + 16);
  *(v5 + 648) = *a5;
  *(v5 + 664) = v9;
  *(v5 + 680) = *(a5 + 32);

  return MEMORY[0x2822009F8](sub_230E3D4CC, 0, 0);
}

uint64_t sub_230E3D4CC(uint64_t a1)
{
  v2 = *(v1 + 640);
  v3 = *(v1 + 632);
  v4 = *(v1 + 624);
  sub_230E68900();
  sub_230E688D0();
  v6 = v5;
  v7 = v5;
  result = (*(v3 + 8))(v2, v4);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v19 = *(v1 + 680);
  v9 = *(v1 + 576);
  v10 = *(v1 + 568);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B2C0, &unk_230E6F630);
  v11 = swift_allocObject();
  *(v1 + 688) = v11;
  *(v11 + 16) = xmmword_230E6B3B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8B0, &qword_230E6C238);
  v17 = *(v1 + 664);
  v18 = *(v1 + 648);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_230E7F0E0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  *(inited + 48) = v10;
  *(inited + 56) = v9;
  *(inited + 64) = 3;
  *(inited + 72) = 0x6E69616D6F64;
  *(inited + 80) = 0xE600000000000000;
  *(inited + 88) = xmmword_230E7F330;
  *(inited + 104) = 3;
  strcpy((inited + 112), "databaseType");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  *(inited + 128) = xmmword_230E7F330;
  *(inited + 144) = 3;
  *(inited + 152) = 1701667182;
  *(inited + 160) = 0xE400000000000000;
  *(inited + 168) = xmmword_230E7F330;
  *(inited + 184) = 3;
  strcpy((inited + 192), "schemaVersion");
  *(inited + 206) = -4864;
  *(inited + 208) = xmmword_230E7F0F0;
  *(inited + 224) = 2;
  *(inited + 232) = 0x6144616D65686373;
  *(inited + 240) = 0xEA00000000006174;
  *(inited + 248) = xmmword_230E6E750;
  *(inited + 264) = 0;
  *(inited + 272) = 0x737574617473;
  *(inited + 280) = 0xE600000000000000;
  *(inited + 288) = xmmword_230E7F100;
  *(inited + 304) = 3;
  strcpy((inited + 312), "storageClass");
  *(inited + 325) = 0;
  *(inited + 326) = -5120;
  *(inited + 328) = 0x6E776F6E6B6E75;
  *(inited + 336) = 0xE700000000000000;
  *(inited + 344) = 3;
  *(inited + 352) = 0x68746150656C6966;
  *(inited + 360) = 0xE800000000000000;

  *(inited + 368) = sub_230E68820();
  *(inited + 376) = v13;
  *(inited + 384) = 3;
  strcpy((inited + 392), "creationTime");
  *(inited + 405) = 0;
  *(inited + 406) = -5120;
  *(inited + 408) = v6;
  *(inited + 416) = 0;
  *(inited + 424) = 2;
  *(inited + 432) = 0x616470557473616CLL;
  *(inited + 440) = 0xEF656D6954646574;
  *(inited + 448) = v6;
  *(inited + 456) = 0;
  *(inited + 464) = 2;
  v14 = sub_230D0DBB4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC28, &qword_230E6C240);
  swift_arrayDestroy();
  *(v11 + 32) = v14;
  v15 = sub_230E1CA68(&unk_2845A51A8);
  *(v1 + 696) = v15;
  swift_arrayDestroy();
  *(v1 + 528) = 0xD000000000000012;
  *(v1 + 536) = 0x8000000230E81B30;
  *(v1 + 544) = v11;
  *(v1 + 552) = v15;
  *(v1 + 488) = v18;
  *(v1 + 504) = v17;
  *(v1 + 520) = v19;
  v16 = swift_task_alloc();
  *(v1 + 704) = v16;
  *v16 = v1;
  v16[1] = sub_230E3D918;

  return sub_230D41CA0(v1 + 560, v1 + 528, v1 + 488);
}

uint64_t sub_230E3D918()
{
  *(*v1 + 712) = v0;

  if (v0)
  {
    v2 = sub_230E3DCD0;
  }

  else
  {

    v2 = sub_230E3DA54;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_230E3DA54()
{
  v25 = v0;
  v1 = v0[70];
  if (qword_27DB5A4B0 != -1)
  {
    swift_once();
  }

  v2 = v0[77];
  v3 = v0[76];
  v4 = v0[75];
  v5 = v0[73];
  v6 = sub_230E68D80();
  __swift_project_value_buffer(v6, qword_27DB80BC0);
  (*(v3 + 16))(v2, v5, v4);

  v7 = sub_230E68D60();
  v8 = sub_230E693F0();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[77];
  v11 = v0[76];
  v12 = v0[75];
  if (v9)
  {
    v23 = v1;
    v13 = v0[72];
    v14 = v0[71];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 136315650;
    *(v15 + 4) = sub_230D7E620(v14, v13, &v24);
    *(v15 + 12) = 2080;
    v17 = sub_230E68820();
    v19 = v18;
    (*(v11 + 8))(v10, v12);
    v20 = sub_230D7E620(v17, v19, &v24);

    *(v15 + 14) = v20;
    *(v15 + 22) = 2048;
    *(v15 + 24) = v23;
    _os_log_impl(&dword_230D02000, v7, v8, "[SystemDatabase][updateDatabaseFilePath] Updated file path for %s: %s, processed: %lld", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v16, -1, -1);
    MEMORY[0x23191EAE0](v15, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_230E3DCD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230E3DD74(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 584) = a4;
  *(v5 + 688) = a3;
  *(v5 + 576) = a2;
  *(v5 + 568) = a1;
  v7 = sub_230E68910();
  *(v5 + 592) = v7;
  *(v5 + 600) = *(v7 - 8);
  *(v5 + 608) = swift_task_alloc();
  v8 = *(a5 + 16);
  *(v5 + 616) = *a5;
  *(v5 + 632) = v8;
  *(v5 + 648) = *(a5 + 32);

  return MEMORY[0x2822009F8](sub_230E3DE58, 0, 0);
}

uint64_t sub_230E3DE58(uint64_t a1)
{
  v2 = *(v1 + 608);
  v3 = *(v1 + 600);
  v4 = *(v1 + 592);
  sub_230E68900();
  sub_230E688D0();
  v6 = v5;
  v7 = v5;
  result = (*(v3 + 8))(v2, v4);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v9 = *(v1 + 688);
  v10 = *(v1 + 576);
  v11 = *(v1 + 568);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B2C0, &unk_230E6F630);
  v12 = swift_allocObject();
  *(v1 + 656) = v12;
  *(v12 + 16) = xmmword_230E6B3B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8B0, &qword_230E6C238);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_230E7F0E0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  *(inited + 48) = v11;
  *(inited + 56) = v10;
  *(inited + 64) = 3;
  *(inited + 72) = 0x6E69616D6F64;
  *(inited + 80) = 0xE600000000000000;
  *(inited + 88) = xmmword_230E7F330;
  *(inited + 104) = 3;
  strcpy((inited + 112), "databaseType");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  *(inited + 128) = xmmword_230E7F330;
  *(inited + 144) = 3;
  *(inited + 152) = 1701667182;
  *(inited + 160) = 0xE400000000000000;
  *(inited + 168) = xmmword_230E7F330;
  *(inited + 184) = 3;
  strcpy((inited + 192), "schemaVersion");
  *(inited + 206) = -4864;
  *(inited + 208) = xmmword_230E7F0F0;
  *(inited + 224) = 2;
  *(inited + 232) = 0x6144616D65686373;
  *(inited + 240) = 0xEA00000000006174;
  *(inited + 248) = xmmword_230E6E750;
  *(inited + 264) = 0;
  *(inited + 272) = 0x737574617473;
  *(inited + 280) = 0xE600000000000000;
  v14 = *&aPending[8 * v9];
  v15 = *&aDeprecat[8 * v9 + 8];
  v16 = *(v1 + 648);
  v20 = *(v1 + 632);
  v21 = *(v1 + 616);
  *(inited + 288) = v14;
  *(inited + 296) = v15;
  *(inited + 304) = 3;
  strcpy((inited + 312), "storageClass");
  *(inited + 325) = 0;
  *(inited + 326) = -5120;
  *(inited + 328) = 0x6E776F6E6B6E75;
  *(inited + 336) = 0xE700000000000000;
  *(inited + 344) = 3;
  *(inited + 352) = 0x68746150656C6966;
  *(inited + 360) = 0xE800000000000000;
  *(inited + 368) = xmmword_230E6E720;
  *(inited + 384) = 3;
  strcpy((inited + 392), "creationTime");
  *(inited + 405) = 0;
  *(inited + 406) = -5120;
  *(inited + 408) = v6;
  *(inited + 416) = 0;
  *(inited + 424) = 2;
  *(inited + 432) = 0x616470557473616CLL;
  *(inited + 440) = 0xEF656D6954646574;
  *(inited + 448) = v6;
  *(inited + 456) = 0;
  *(inited + 464) = 2;

  v17 = sub_230D0DBB4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC28, &qword_230E6C240);
  swift_arrayDestroy();
  *(v12 + 32) = v17;
  v18 = sub_230E1CA68(&unk_2845A51E8);
  *(v1 + 664) = v18;
  swift_arrayDestroy();
  *(v1 + 528) = 0xD000000000000012;
  *(v1 + 536) = 0x8000000230E81B30;
  *(v1 + 544) = v12;
  *(v1 + 552) = v18;
  *(v1 + 488) = v21;
  *(v1 + 504) = v20;
  *(v1 + 520) = v16;
  v19 = swift_task_alloc();
  *(v1 + 672) = v19;
  *v19 = v1;
  v19[1] = sub_230E3E28C;

  return sub_230D41CA0(v1 + 560, v1 + 528, v1 + 488);
}

uint64_t sub_230E3E28C()
{
  *(*v1 + 680) = v0;

  if (v0)
  {
    v2 = sub_230E3E61C;
  }

  else
  {

    v2 = sub_230E3E3C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_230E3E3C8()
{
  v20 = v0;
  v1 = *(v0 + 560);
  if (qword_27DB5A4B0 != -1)
  {
    swift_once();
  }

  v2 = sub_230E68D80();
  __swift_project_value_buffer(v2, qword_27DB80BC0);

  v3 = sub_230E68D60();
  v4 = sub_230E693F0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 688);
    v6 = *(v0 + 576);
    v7 = *(v0 + 568);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_230D7E620(v7, v6, &v19);
    v10 = 0xE700000000000000;
    *(v8 + 12) = 2080;
    v11 = 0x676E69646E6570;
    v12 = 0xE500000000000000;
    v13 = 0x726F727265;
    if (v5 != 2)
    {
      v13 = 0x7461636572706564;
      v12 = 0xEA00000000006465;
    }

    if (v5)
    {
      v11 = 0x657669746361;
      v10 = 0xE600000000000000;
    }

    if (v5 <= 1)
    {
      v14 = v11;
    }

    else
    {
      v14 = v13;
    }

    if (v5 <= 1)
    {
      v15 = v10;
    }

    else
    {
      v15 = v12;
    }

    v16 = sub_230D7E620(v14, v15, &v19);

    *(v8 + 14) = v16;
    *(v8 + 22) = 2048;
    *(v8 + 24) = v1;
    _os_log_impl(&dword_230D02000, v3, v4, "[SystemDatabase][updateDatabaseStatus] Updated database status for %s to %s, processed: %lld", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v9, -1, -1);
    MEMORY[0x23191EAE0](v8, -1, -1);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_230E3E61C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static SystemDatabase.getMetricsTopicConfiguration(_:using:requestContext:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 104) = a1;
  *(v4 + 112) = a3;
  v7 = sub_230E68D80();
  *(v4 + 120) = v7;
  *(v4 + 128) = *(v7 - 8);
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 653) = *a2;
  v8 = *(a4 + 16);
  *(v4 + 144) = *a4;
  *(v4 + 160) = v8;
  *(v4 + 176) = *(a4 + 32);

  return MEMORY[0x2822009F8](sub_230E3E7C0, 0, 0);
}

uint64_t sub_230E3E7C0()
{
  v1 = *(v0 + 160);
  if (v1)
  {
    v2 = *(v0 + 168);
    v3 = *(v0 + 176);
    v4 = *(v0 + 144);
    v5 = *(v0 + 152);
    *(v0 + 200) = v1;
    *(v0 + 208) = v3;
    *(v0 + 656) = BYTE1(v2);
    *(v0 + 655) = v2 & 1;
    *(v0 + 192) = v5;
    *(v0 + 654) = v4;
    *(v0 + 16) = v4;
    *(v0 + 24) = v5;
    *(v0 + 32) = v1;
    *(v0 + 40) = v2 & 1;
    *(v0 + 41) = BYTE1(v2);
    *(v0 + 48) = v3;
    sub_230D0585C(v4, v5, v1, v2, v3);
    if (qword_27DB5A430 != -1)
    {
      swift_once();
    }

    v6 = qword_27DB5A438;
    *(v0 + 216) = qword_27DB5A438;

    return MEMORY[0x2822009F8](sub_230E3EC0C, v6, 0);
  }

  else
  {
    *(v0 + 652) = 40;
    v7 = swift_task_alloc();
    *(v0 + 184) = v7;
    *v7 = v0;
    v7[1] = sub_230E3E9A4;

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 652), 0, 0);
  }
}

uint64_t sub_230E3E9A4()
{

  return MEMORY[0x2822009F8](sub_230E3EACC, 0, 0);
}

uint64_t sub_230E3EACC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v6 = *(v0 + 88);
  *(v0 + 200) = v3;
  *(v0 + 208) = v6;
  *(v0 + 656) = v5;
  *(v0 + 655) = v4;
  *(v0 + 192) = v2;
  *(v0 + 654) = v1;
  v7 = *(v0 + 168);
  v8 = *(v0 + 176);
  v9 = *(v0 + 152);
  v10 = *(v0 + 160);
  v11 = *(v0 + 144);
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v6;
  sub_230D0585C(v11, v9, v10, v7, v8);
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v12 = qword_27DB5A438;
  *(v0 + 216) = qword_27DB5A438;

  return MEMORY[0x2822009F8](sub_230E3EC0C, v12, 0);
}

uint64_t sub_230E3EC0C()
{
  v30 = v0;
  v29[1] = *MEMORY[0x277D85DE8];
  sub_230E68D70();

  v1 = sub_230E68D60();
  v2 = sub_230E693E0();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 192);
    v3 = *(v0 + 200);
    v5 = *(v0 + 654);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v29[0] = v7;
    *v6 = 136315650;
    *(v6 + 4) = sub_230D7E620(0xD00000000000001CLL, 0x8000000230E808D0, v29);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_230D7E620(v4, v3, v29);
    *(v6 + 22) = 2080;
    v27 = 0x6C616E7265746E69;
    v28 = 0xE90000000000002ELL;
    v26 = v5;
    v8 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v8);

    v9 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v29);

    *(v6 + 24) = v9;
    _os_log_impl(&dword_230D02000, v1, v2, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v10 = *(v0 + 208);
  v11 = *(v0 + 656);
  v12 = *(v0 + 654);
  LOBYTE(v27) = *(v0 + 655);
  BYTE1(v27) = v11;
  v28 = v10;
  v26 = 40;
  LOBYTE(v29[0]) = v12;

  v13 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v26, v29);

  if (v13)
  {
    sub_230E68950();
    *(v0 + 224) = CFAbsoluteTimeGetCurrent();
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    *(v0 + 512) = 0u;
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    *(v0 + 560) = 0u;
    *(v0 + 576) = 0u;
    *(v0 + 592) = 0u;
    *(v0 + 608) = 0u;
    *(v0 + 624) = 0u;
    *(v0 + 640) = 0;
    *(v0 + 644) = 93;
    v14 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 272), (v0 + 644));
    *(v0 + 648) = v14;
    v15 = 0.0;
    if (!v14)
    {
      v16 = *(v0 + 320);
      v17 = *(v0 + 392);
      v18 = __CFADD__(v16, v17);
      v19 = v16 + v17;
      if (v18)
      {
        __break(1u);
      }

      v15 = vcvtd_n_f64_u64(v19, 0x14uLL);
    }

    *(v0 + 248) = v15;
    *(v0 + 96) = 0;
    v20 = swift_task_alloc();
    *(v0 + 256) = v20;
    *v20 = v0;
    v21 = sub_230E3F144;
  }

  else
  {
    v20 = swift_task_alloc();
    *(v0 + 232) = v20;
    *v20 = v0;
    v21 = sub_230E3EFEC;
  }

  v20[1] = v21;
  v22 = *(v0 + 104);
  v23 = *(v0 + 112);
  v24 = *(v0 + 653);

  return sub_230E41A9C(v22, v24, v23, v0 + 16);
}

uint64_t sub_230E3EFEC()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 216);
  if (v0)
  {
    v4 = sub_230E3F5D4;
  }

  else
  {
    v4 = sub_230E3F500;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230E3F144()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 216);
  if (v0)
  {
    v4 = sub_230E3F3AC;
  }

  else
  {
    v4 = sub_230E3F29C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230E3F29C()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  sub_230D340D4(40, *(v0 + 248), *(v0 + 648) != 0, v0 + 16, (v0 + 96), *(v0 + 224));
  (*(v2 + 8))(v1, v3);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_230E3F3AC(uint64_t a1)
{
  v2 = *(v1 + 264);
  v3 = *(v1 + 248);
  v4 = *(v1 + 224);
  v5 = *(v1 + 128);
  v6 = *(v1 + 136);
  v7 = *(v1 + 120);
  v8 = *(v1 + 648) != 0;
  *(v1 + 96) = v2;
  swift_willThrow();
  v9 = v2;
  sub_230D340D4(40, v3, v8, v1 + 16, (v1 + 96), v4);
  MEMORY[0x23191E910](v2);
  (*(v5 + 8))(v6, v7);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v10 = *(v1 + 8);

  return v10();
}

uint64_t sub_230E3F500()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v1 = v0[1];

  return v1();
}

uint64_t sub_230E3F5D4()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v1 = v0[1];

  return v1();
}

uint64_t static SystemDatabase.storeLoggingConfiguration(_:using:requestContext:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 96) = a1;
  *(v4 + 104) = a3;
  v7 = sub_230E68D80();
  *(v4 + 112) = v7;
  *(v4 + 120) = *(v7 - 8);
  v8 = swift_task_alloc();
  v9 = *a2;
  *(v4 + 128) = v8;
  *(v4 + 136) = v9;
  v10 = *(a4 + 16);
  *(v4 + 144) = *a4;
  *(v4 + 160) = v10;
  *(v4 + 176) = *(a4 + 32);

  return MEMORY[0x2822009F8](sub_230E3F7B8, 0, 0);
}

uint64_t sub_230E3F7B8()
{
  v1 = *(v0 + 160);
  if (v1)
  {
    v2 = *(v0 + 168);
    v3 = *(v0 + 176);
    v4 = *(v0 + 144);
    v5 = *(v0 + 152);
    *(v0 + 200) = v1;
    *(v0 + 208) = v3;
    *(v0 + 639) = BYTE1(v2);
    *(v0 + 638) = v2 & 1;
    *(v0 + 192) = v5;
    *(v0 + 637) = v4;
    *(v0 + 16) = v4;
    *(v0 + 24) = v5;
    *(v0 + 32) = v1;
    *(v0 + 40) = v2 & 1;
    *(v0 + 41) = BYTE1(v2);
    *(v0 + 48) = v3;
    sub_230D0585C(v4, v5, v1, v2, v3);
    if (qword_27DB5A430 != -1)
    {
      swift_once();
    }

    v6 = qword_27DB5A438;
    *(v0 + 216) = qword_27DB5A438;

    return MEMORY[0x2822009F8](sub_230E3FC1C, v6, 0);
  }

  else
  {
    *(v0 + 636) = 43;
    v7 = swift_task_alloc();
    *(v0 + 184) = v7;
    *v7 = v0;
    v7[1] = sub_230E3F9A8;

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 636), 0, 0);
  }
}

uint64_t sub_230E3F9A8()
{

  return MEMORY[0x2822009F8](sub_230E3FAD0, 0, 0);
}

uint64_t sub_230E3FAD0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v6 = *(v0 + 88);
  *(v0 + 200) = v3;
  *(v0 + 208) = v6;
  *(v0 + 639) = v5;
  *(v0 + 638) = v4;
  *(v0 + 192) = v2;
  *(v0 + 637) = v1;
  v7 = *(v0 + 168);
  v8 = *(v0 + 176);
  v9 = *(v0 + 152);
  v10 = *(v0 + 160);
  v11 = *(v0 + 144);
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v6;
  sub_230D0585C(v11, v9, v10, v7, v8);
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v12 = qword_27DB5A438;
  *(v0 + 216) = qword_27DB5A438;

  return MEMORY[0x2822009F8](sub_230E3FC1C, v12, 0);
}

uint64_t sub_230E3FC1C()
{
  v27 = v0;
  v26[1] = *MEMORY[0x277D85DE8];
  sub_230E68D70();

  v1 = sub_230E68D60();
  v2 = sub_230E693E0();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 192);
    v3 = *(v0 + 200);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v26[0] = v6;
    *v5 = 136315650;
    *(v5 + 4) = sub_230D7E620(0xD000000000000019, 0x8000000230E80930, v26);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_230D7E620(v4, v3, v26);
    *(v5 + 22) = 2080;
    v7 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v7);

    v8 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v26);

    *(v5 + 24) = v8;
    _os_log_impl(&dword_230D02000, v1, v2, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v6, -1, -1);
    MEMORY[0x23191EAE0](v5, -1, -1);
  }

  if (*(v0 + 638) == 1 && ((v9 = *(v0 + 208), v10 = *(v0 + 639), v11 = RequestType.rawValue.getter(), v13 = v12, , LOBYTE(v11) = sub_230D33FDC(v11, v13, v9), , , (v11 & 1) != 0) || v10 >= 2))
  {
    sub_230E68950();
    *(v0 + 224) = CFAbsoluteTimeGetCurrent();
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    *(v0 + 512) = 0u;
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    *(v0 + 560) = 0u;
    *(v0 + 576) = 0u;
    *(v0 + 592) = 0u;
    *(v0 + 608) = 0u;
    *(v0 + 624) = 0;
    *(v0 + 628) = 93;
    v16 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 256), (v0 + 628));
    *(v0 + 632) = v16;
    v17 = 0.0;
    if (!v16)
    {
      v18 = *(v0 + 304);
      v19 = *(v0 + 376);
      v20 = __CFADD__(v18, v19);
      v21 = v18 + v19;
      if (v20)
      {
        __break(1u);
      }

      v17 = vcvtd_n_f64_u64(v21, 0x14uLL);
    }

    *(v0 + 240) = v17;
    v14 = swift_task_alloc();
    *(v0 + 248) = v14;
    *v14 = v0;
    v15 = sub_230E40234;
  }

  else
  {
    v14 = swift_task_alloc();
    *(v0 + 232) = v14;
    *v14 = v0;
    v15 = sub_230E40010;
  }

  v14[1] = v15;
  v22 = *(v0 + 136);
  v23 = *(v0 + 96);
  v24 = *(v0 + 104);

  return sub_230E40478(v23, v22, v24, v0 + 16);
}

uint64_t sub_230E40010()
{
  v1 = *(*v0 + 216);

  return MEMORY[0x2822009F8](sub_230E4014C, v1, 0);
}

uint64_t sub_230E4014C()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v1 = v0[1];

  return v1();
}

uint64_t sub_230E40234()
{
  v1 = *(*v0 + 216);

  return MEMORY[0x2822009F8](sub_230E40370, v1, 0);
}

uint64_t sub_230E40370(__n128 a1)
{
  sub_230E4D2AC(43, *(v1 + 240), *(v1 + 632) != 0, v1 + 16, *(v1 + 224));
  (*(*(v1 + 120) + 8))(*(v1 + 128), *(v1 + 112));

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_230E40478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 184) = a3;
  *(v4 + 192) = a4;
  *(v4 + 168) = a1;
  *(v4 + 176) = a2;
  *(v4 + 313) = *a4;
  *(v4 + 200) = *(a4 + 8);
  *(v4 + 314) = *(a4 + 24);
  *(v4 + 216) = *(a4 + 32);
  return MEMORY[0x2822009F8](sub_230E404BC, 0, 0);
}

uint64_t sub_230E404BC()
{
  v1 = *(v0 + 176);
  v2 = sub_230D0F35C(MEMORY[0x277D84F90]);
  v3 = v2;
  v4 = *(v1 + 32);
  *(v0 + 316) = v4;
  v5 = -1;
  v6 = -1 << v4;
  if (-(-1 << v4) < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v1 + 64);
  *(v0 + 224) = v2;
  *(v0 + 232) = 0;
  *(v0 + 240) = 0;

  if (v7)
  {
    v8 = 0;
    v9 = *(v0 + 176);
LABEL_8:
    *(v0 + 248) = v7;
    *(v0 + 256) = v8;
    v12 = *(v0 + 208);
    v11 = *(v0 + 216);
    v13 = *(v0 + 313);
    v15 = *(v0 + 192);
    v14 = *(v0 + 200);
    v16 = *(v0 + 314) & 1 | (*(v0 + 315) << 8);
    v17 = __clz(__rbit64(v7)) | (v8 << 6);
    v18 = *(*(v9 + 48) + v17);
    *(v0 + 317) = v18;
    v19 = *(v9 + 56) + 48 * v17;
    v20 = *v19;
    v21 = *(v19 + 8);
    *(v0 + 264) = v21;
    v22 = *(v19 + 16);
    v23 = *(v19 + 24);
    *(v0 + 272) = v23;
    v24 = *(v19 + 32);
    *(v0 + 280) = v24;
    v25 = *(v19 + 40);
    *(v0 + 288) = v25;
    *(v0 + 312) = v18;
    *(v0 + 16) = v20;
    *(v0 + 24) = v21;
    *(v0 + 32) = v22;
    *(v0 + 40) = v23;
    *(v0 + 48) = v24;
    *(v0 + 56) = v25;
    *(v0 + 64) = v13;
    *(v0 + 72) = v14;
    *(v0 + 80) = v12;
    *(v0 + 88) = v16;
    *(v0 + 96) = v11;

    sub_230D1CDE0(v15, v0 + 104);
    v26 = swift_task_alloc();
    *(v0 + 296) = v26;
    *v26 = v0;
    v26[1] = sub_230E4082C;
    v27 = *(v0 + 184);

    return sub_230E42B80((v0 + 312), v0 + 16, v27, v0 + 64);
  }

  else
  {
    v10 = 0;
    v9 = *(v0 + 176);
    while (((63 - v6) >> 6) - 1 != v10)
    {
      v8 = v10 + 1;
      v7 = *(v9 + 8 * v10++ + 72);
      if (v7)
      {
        goto LABEL_8;
      }
    }

    v29 = *(v3 + 16);
    if (qword_27DB5A4B0 != -1)
    {
      swift_once();
    }

    v30 = sub_230E68D80();
    __swift_project_value_buffer(v30, qword_27DB80BC0);

    v31 = sub_230E68D60();
    v32 = sub_230E693E0();
    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 176);
    if (v33)
    {
      v35 = swift_slowAlloc();
      *v35 = 134218496;
      *(v35 + 4) = *(v34 + 16);

      *(v35 + 12) = 2048;
      *(v35 + 14) = 0;
      *(v35 + 22) = 2048;
      *(v35 + 24) = v29;

      _os_log_impl(&dword_230D02000, v31, v32, "[SystemDatabase][storeLoggingConfiguration] Processed %ld telemetry topics: %ld succeeded, %ld failed", v35, 0x20u);
      MEMORY[0x23191EAE0](v35, -1, -1);
    }

    else
    {
    }

    v36 = *(v0 + 224);
    v37 = *(v0 + 168);
    *v37 = 0;
    v37[1] = v29;
    v37[2] = v36;
    v38 = *(v0 + 8);

    return v38();
  }
}

uint64_t sub_230E4082C()
{
  v2 = *v1;
  (*v1)[38] = v0;

  sub_230D666B4(v2[8], v2[9], v2[10], v2[11], v2[12]);
  if (v0)
  {
    v3 = sub_230E40E6C;
  }

  else
  {

    v3 = sub_230E40998;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_230E40998()
{
  v2 = *(v0 + 232);
  v3 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
LABEL_31:
    __break(1u);
  }

  else
  {
    v1 = 0x27DB5A000uLL;
    if (qword_27DB5A4B0 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v4 = sub_230E68D80();
  __swift_project_value_buffer(v4, qword_27DB80BC0);
  v5 = sub_230E68D60();
  v6 = sub_230E693F0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 317);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *(v0 + 160) = v9;
    *v8 = 136315138;
    v10 = 0x8000000230E802F0;
    v11 = 0xD00000000000001FLL;
    if (v7 != 1)
    {
      v11 = 0xD000000000000012;
      v10 = 0x8000000230E80310;
    }

    if (v7)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0x6F5F706D615F7078;
    }

    if (v7)
    {
      v13 = v10;
    }

    else
    {
      v13 = 0xEE00676F6C5F7064;
    }

    v14 = sub_230D7E620(v12, v13, (v0 + 160));

    *(v8 + 4) = v14;
    _os_log_impl(&dword_230D02000, v5, v6, "[SystemDatabase][storeLoggingConfiguration] Successfully processed topic: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x23191EAE0](v9, -1, -1);
    MEMORY[0x23191EAE0](v8, -1, -1);
  }

  v16 = *(v0 + 248);
  v15 = *(v0 + 256);
  *(v0 + 232) = v3;
  *(v0 + 240) = v3;
  v17 = (v16 - 1) & v16;
  if (v17)
  {
    v18 = *(v0 + 176);
LABEL_19:
    *(v0 + 248) = v17;
    *(v0 + 256) = v15;
    v21 = *(v0 + 208);
    v20 = *(v0 + 216);
    v22 = *(v0 + 313);
    v24 = *(v0 + 192);
    v23 = *(v0 + 200);
    v25 = *(v0 + 314) & 1 | (*(v0 + 315) << 8);
    v26 = __clz(__rbit64(v17)) | (v15 << 6);
    v27 = *(*(v18 + 48) + v26);
    *(v0 + 317) = v27;
    v28 = *(v18 + 56) + 48 * v26;
    v29 = *v28;
    v30 = *(v28 + 8);
    *(v0 + 264) = v30;
    v31 = *(v28 + 16);
    v32 = *(v28 + 24);
    *(v0 + 272) = v32;
    v33 = *(v28 + 32);
    *(v0 + 280) = v33;
    v34 = *(v28 + 40);
    *(v0 + 288) = v34;
    *(v0 + 312) = v27;
    *(v0 + 16) = v29;
    *(v0 + 24) = v30;
    *(v0 + 32) = v31;
    *(v0 + 40) = v32;
    *(v0 + 48) = v33;
    *(v0 + 56) = v34;
    *(v0 + 64) = v22;
    *(v0 + 72) = v23;
    *(v0 + 80) = v21;
    *(v0 + 88) = v25;
    *(v0 + 96) = v20;

    sub_230D1CDE0(v24, v0 + 104);
    v35 = swift_task_alloc();
    *(v0 + 296) = v35;
    *v35 = v0;
    v35[1] = sub_230E4082C;
    v36 = *(v0 + 184);

    return sub_230E42B80((v0 + 312), v0 + 16, v36, v0 + 64);
  }

  else
  {
    while (1)
    {
      v19 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v19 >= (((1 << *(v0 + 316)) + 63) >> 6))
      {
        break;
      }

      v18 = *(v0 + 176);
      v17 = *(v18 + 8 * v19 + 64);
      ++v15;
      if (v17)
      {
        v15 = v19;
        goto LABEL_19;
      }
    }

    v38 = *(v0 + 224);

    v39 = *(v38 + 16);
    if (*(v1 + 1200) != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v4, qword_27DB80BC0);

    v40 = sub_230E68D60();
    v41 = sub_230E693E0();
    v42 = os_log_type_enabled(v40, v41);
    v43 = *(v0 + 176);
    if (v42)
    {
      v44 = swift_slowAlloc();
      *v44 = 134218496;
      *(v44 + 4) = *(v43 + 16);

      *(v44 + 12) = 2048;
      *(v44 + 14) = v3;
      *(v44 + 22) = 2048;
      *(v44 + 24) = v39;

      _os_log_impl(&dword_230D02000, v40, v41, "[SystemDatabase][storeLoggingConfiguration] Processed %ld telemetry topics: %ld succeeded, %ld failed", v44, 0x20u);
      MEMORY[0x23191EAE0](v44, -1, -1);
    }

    else
    {
    }

    v45 = *(v0 + 224);
    v46 = *(v0 + 168);
    *v46 = v3;
    v46[1] = v39;
    v46[2] = v45;
    v47 = *(v0 + 8);

    return v47();
  }
}

uint64_t sub_230E40E6C()
{
  v1 = 0xEE00676F6C5F7064;
  v2 = *(v0 + 317);

  v3 = "t32";
  v4 = 0x8000000230E802F0;
  v5 = 0xD00000000000001FLL;
  v6 = "xp_ops_activity_personalization";
  if (v2 != 1)
  {
    v5 = 0xD000000000000012;
    v4 = 0x8000000230E80310;
  }

  v7 = v2 == 0;
  if (v2)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0x6F5F706D615F7078;
  }

  if (v7)
  {
    v9 = 0xEE00676F6C5F7064;
  }

  else
  {
    v9 = v4;
  }

  v10 = *(v0 + 224);
  v11 = *(v0 + 304);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 144) = v10;
  v13 = sub_230DA41A0(v8, v9);
  v15 = *(v10 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    swift_once();
    goto LABEL_21;
  }

  v19 = v14;
  if (*(*(v0 + 224) + 24) >= v18)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v73 = v13;
      sub_230DBB0CC();
      v13 = v73;
    }
  }

  else
  {
    sub_230DB8CBC(v18, isUniquelyReferenced_nonNull_native);
    v13 = sub_230DA41A0(v8, v9);
    if ((v19 & 1) != (v20 & 1))
    {

      return sub_230E69950();
    }
  }

  isUniquelyReferenced_nonNull_native = *(v0 + 144);
  v22 = *(v0 + 304);
  if (v19)
  {
    v23 = *(isUniquelyReferenced_nonNull_native + 56);
    v24 = *(v23 + 8 * v13);
    *(v23 + 8 * v13) = v22;
    MEMORY[0x23191E910](v24);
  }

  else
  {
    sub_230E1C668(v13, v8, v9, v22, *(v0 + 144));
  }

  if (qword_27DB5A4B0 != -1)
  {
    goto LABEL_51;
  }

LABEL_21:
  v25 = *(v0 + 304);
  v74 = sub_230E68D80();
  __swift_project_value_buffer(v74, qword_27DB80BC0);
  v26 = v25;
  v27 = sub_230E68D60();
  v28 = sub_230E69400();
  MEMORY[0x23191E910](v25);
  if (os_log_type_enabled(v27, v28))
  {
    v29 = *(v0 + 317);
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = v1;
    v34 = v32;
    *(v0 + 152) = v32;
    *v30 = 136315394;
    v35 = v3 | 0x8000000000000000;
    v36 = 0xD00000000000001FLL;
    if (v29 != 1)
    {
      v36 = 0xD000000000000012;
      v35 = v6 | 0x8000000000000000;
    }

    if (v29)
    {
      v37 = v36;
    }

    else
    {
      v37 = 0x6F5F706D615F7078;
    }

    if (v29)
    {
      v6 = v35;
    }

    else
    {
      v6 = v33;
    }

    v3 = *(v0 + 304);
    v38 = sub_230D7E620(v37, v6, (v0 + 152));

    *(v30 + 4) = v38;
    *(v30 + 12) = 2112;
    v39 = v3;
    v40 = _swift_stdlib_bridgeErrorToNSError();
    *(v30 + 14) = v40;
    *v31 = v40;
    _os_log_impl(&dword_230D02000, v27, v28, "[SystemDatabase][storeLoggingConfiguration] Failed to process topic %s: %@", v30, 0x16u);
    sub_230E437AC(v31);
    MEMORY[0x23191EAE0](v31, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x23191EAE0](v34, -1, -1);
    MEMORY[0x23191EAE0](v30, -1, -1);
    MEMORY[0x23191E910](v3);
  }

  else
  {
    v41 = *(v0 + 304);

    MEMORY[0x23191E910](v41);
  }

  v43 = *(v0 + 248);
  v42 = *(v0 + 256);
  v1 = *(v0 + 240);
  *(v0 + 224) = isUniquelyReferenced_nonNull_native;
  v44 = (v43 - 1) & v43;
  if (v44)
  {
    v45 = *(v0 + 176);
LABEL_38:
    *(v0 + 248) = v44;
    *(v0 + 256) = v42;
    v48 = *(v0 + 208);
    v47 = *(v0 + 216);
    v49 = *(v0 + 313);
    v51 = *(v0 + 192);
    v50 = *(v0 + 200);
    v52 = *(v0 + 314) & 1 | (*(v0 + 315) << 8);
    v53 = __clz(__rbit64(v44)) | (v42 << 6);
    v54 = *(*(v45 + 48) + v53);
    *(v0 + 317) = v54;
    v55 = *(v45 + 56) + 48 * v53;
    v56 = *v55;
    v57 = *(v55 + 8);
    *(v0 + 264) = v57;
    v58 = *(v55 + 16);
    v59 = *(v55 + 24);
    *(v0 + 272) = v59;
    v60 = *(v55 + 32);
    *(v0 + 280) = v60;
    v61 = *(v55 + 40);
    *(v0 + 288) = v61;
    *(v0 + 312) = v54;
    *(v0 + 16) = v56;
    *(v0 + 24) = v57;
    *(v0 + 32) = v58;
    *(v0 + 40) = v59;
    *(v0 + 48) = v60;
    *(v0 + 56) = v61;
    *(v0 + 64) = v49;
    *(v0 + 72) = v50;
    *(v0 + 80) = v48;
    *(v0 + 88) = v52;
    *(v0 + 96) = v47;

    sub_230D1CDE0(v51, v0 + 104);
    v62 = swift_task_alloc();
    *(v0 + 296) = v62;
    *v62 = v0;
    v62[1] = sub_230E4082C;
    v63 = *(v0 + 184);

    return sub_230E42B80((v0 + 312), v0 + 16, v63, v0 + 64);
  }

  else
  {
    while (1)
    {
      v46 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        __break(1u);
        goto LABEL_50;
      }

      v45 = *(v0 + 176);
      if (v46 >= (((1 << *(v0 + 316)) + 63) >> 6))
      {
        break;
      }

      v44 = *(v45 + 8 * v46 + 64);
      ++v42;
      if (v44)
      {
        v42 = v46;
        goto LABEL_38;
      }
    }

    v64 = *(isUniquelyReferenced_nonNull_native + 16);
    if (qword_27DB5A4B0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v74, qword_27DB80BC0);

    v65 = sub_230E68D60();
    v66 = sub_230E693E0();
    v67 = os_log_type_enabled(v65, v66);
    v68 = *(v0 + 176);
    if (v67)
    {
      v69 = swift_slowAlloc();
      *v69 = 134218496;
      *(v69 + 4) = *(v68 + 16);

      *(v69 + 12) = 2048;
      *(v69 + 14) = v1;
      *(v69 + 22) = 2048;
      *(v69 + 24) = v64;

      _os_log_impl(&dword_230D02000, v65, v66, "[SystemDatabase][storeLoggingConfiguration] Processed %ld telemetry topics: %ld succeeded, %ld failed", v69, 0x20u);
      MEMORY[0x23191EAE0](v69, -1, -1);
    }

    else
    {
    }

    v70 = *(v0 + 224);
    v71 = *(v0 + 168);
    *v71 = v1;
    v71[1] = v64;
    v71[2] = v70;
    v72 = *(v0 + 8);

    return v72();
  }
}

uint64_t sub_230E4151C(uint64_t a1)
{
  v2 = sub_230E690B0();
  MEMORY[0x28223BE20](v2 - 8, v3);
  sub_230E686F0();
  swift_allocObject();
  v4 = sub_230E686E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
  sub_230D46AD4(&qword_27DB5B148, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  v5 = sub_230E686D0();
  v7 = v6;

  if (!v1)
  {
    sub_230E690A0();
    v8 = sub_230E69080();
    if (v9)
    {
      v4 = v8;
      sub_230D0F4A8(v5, v7);
    }

    else
    {
      sub_230D0F4A8(v5, v7);
      return 32123;
    }
  }

  return v4;
}

uint64_t sub_230E41684(uint64_t a1)
{
  v2 = sub_230E690B0();
  MEMORY[0x28223BE20](v2 - 8, v3);
  sub_230E686F0();
  swift_allocObject();
  v4 = sub_230E686E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAC8, &qword_230E72370);
  sub_230D6C2C4(&qword_281565FC8, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  v5 = sub_230E686D0();
  v7 = v6;

  if (!v1)
  {
    sub_230E690A0();
    v8 = sub_230E69080();
    if (v9)
    {
      v4 = v8;
      sub_230D0F4A8(v5, v7);
    }

    else
    {
      sub_230D0F4A8(v5, v7);
      return 32123;
    }
  }

  return v4;
}

uint64_t sub_230E417EC(uint64_t a1)
{
  v2 = sub_230E690B0();
  MEMORY[0x28223BE20](v2 - 8, v3);
  sub_230E686F0();
  swift_allocObject();
  v4 = sub_230E686E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAD0, &qword_230E73560);
  sub_230D6C1DC(&unk_281565FA0, MEMORY[0x277D837D8], MEMORY[0x277D83A08], MEMORY[0x277D83508]);
  v5 = sub_230E686D0();
  v7 = v6;

  if (!v1)
  {
    sub_230E690A0();
    v8 = sub_230E69080();
    if (v9)
    {
      v4 = v8;
      sub_230D0F4A8(v5, v7);
    }

    else
    {
      sub_230D0F4A8(v5, v7);
      return 32123;
    }
  }

  return v4;
}

uint64_t sub_230E4195C(uint64_t a1)
{
  v3 = sub_230E690B0();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = a1;
  sub_230E686F0();
  swift_allocObject();
  sub_230E686E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D910, &qword_230E7F4B8);
  sub_230E43814();
  v7 = sub_230E686D0();
  v9 = v8;

  if (!v1)
  {
    sub_230E690A0();
    v10 = sub_230E69080();
    if (v11)
    {
      v6 = v10;
      sub_230D0F4A8(v7, v9);
    }

    else
    {
      sub_230D0F4A8(v7, v9);
      return 32123;
    }
  }

  return v6;
}

uint64_t sub_230E41A9C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 472) = a3;
  *(v4 + 480) = a4;
  *(v4 + 129) = a2;
  *(v4 + 464) = a1;
  return MEMORY[0x2822009F8](sub_230E41AC4, 0, 0);
}

uint64_t sub_230E41AC4()
{
  v1 = *(v0 + 129);
  sub_230E69540();

  *(v0 + 440) = 0xD000000000000013;
  *(v0 + 448) = 0x8000000230E84E50;
  v2 = 0x8000000230E802F0;
  v3 = 0xD00000000000001FLL;
  if (v1 != 1)
  {
    v3 = 0xD000000000000012;
    v2 = 0x8000000230E80310;
  }

  if (v1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6F5F706D615F7078;
  }

  if (v1)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0xEE00676F6C5F7064;
  }

  v6 = *(v0 + 472);
  v7 = *(v0 + 480);
  MEMORY[0x23191DA00](v4, v5);

  MEMORY[0x23191DA00](39, 0xE100000000000000);
  v8 = *(v0 + 440);
  v9 = *(v0 + 448);
  *(v0 + 512) = 1;
  *(v0 + 504) = 1;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0u;
  *(v0 + 352) = 1;
  sub_230D1D098(v0 + 256);
  *(v0 + 504) = 1;
  *(v0 + 16) = 0x656D656C65545F5FLL;
  *(v0 + 24) = 0xEF63657053797274;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0;
  *(v0 + 88) = v8;
  *(v0 + 96) = v9;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;
  sub_230D1CDE0(v7, v0 + 360);

  return MEMORY[0x2822009F8](sub_230E41C7C, v6, 0);
}

uint64_t sub_230E41C7C()
{
  sub_230D1CDE0(*(v0 + 480), v0 + 400);
  sub_230D1D0EC(v0 + 16, v0 + 136);

  v1 = swift_task_alloc();
  *(v0 + 488) = v1;
  *v1 = v0;
  v1[1] = sub_230E41D5C;
  v2 = *(v0 + 480);

  return (sub_230D70F74)(v0 + 456, 2, v2);
}

uint64_t sub_230E41D5C()
{
  v2 = *v1;
  v3 = *(*v1 + 480);
  *(*v1 + 496) = v0;

  sub_230D1CE3C(v3);
  v4 = *(v2 + 472);
  if (v0)
  {
    v5 = sub_230E41FC4;
  }

  else
  {
    v5 = sub_230E41EA4;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_230E41EA4()
{
  sub_230D1CE3C(*(v0 + 480));
  sub_230D1D148(v0 + 16);

  return MEMORY[0x2822009F8](sub_230E41F14, 0, 0);
}

uint64_t sub_230E41F14()
{
  v2 = v0[57];
  v1 = v0[58];
  if (*(v2 + 16))
  {
    v3 = *(v2 + 32);

    sub_230E42090(v3, v1);
  }

  else
  {

    v1[1] = 0u;
    v1[2] = 0u;
    *v1 = 0u;
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_230E41FC4()
{
  sub_230D1CE3C(*(v0 + 480));

  return MEMORY[0x2822009F8](sub_230E4202C, 0, 0);
}

uint64_t sub_230E4202C()
{
  sub_230D1D148(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

void sub_230E42090(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_230E690B0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    goto LABEL_23;
  }

  v9 = sub_230DA41A0(0x6E69616D6F64, 0xE600000000000000);
  if ((v10 & 1) == 0)
  {
    goto LABEL_23;
  }

  v11 = *(a1 + 56) + 24 * v9;
  v12 = *(v11 + 8);
  v13 = *(v11 + 16) != 3 || v12 == 0;
  if (v13 || !*(a1 + 16))
  {
    goto LABEL_23;
  }

  v14 = *v11;

  v15 = sub_230DA41A0(0x656873696C627570, 0xEA00000000007372);
  if ((v16 & 1) == 0)
  {
    goto LABEL_21;
  }

  v17 = *(a1 + 56) + 24 * v15;
  if (*(v17 + 16) != 3)
  {
    goto LABEL_21;
  }

  v19 = *v17;
  v18 = *(v17 + 8);
  if (!v18)
  {
    sub_230D0DCD8(*v17, 0, 3);
    goto LABEL_21;
  }

  if (!*(a1 + 16))
  {
LABEL_21:
    v28 = v14;
    v29 = v12;
LABEL_22:
    sub_230D0F474(v28, v29, 3);
LABEL_23:
    if (qword_27DB5A4B0 != -1)
    {
      swift_once();
    }

    v30 = sub_230E68D80();
    __swift_project_value_buffer(v30, qword_27DB80BC0);
    v31 = sub_230E68D60();
    v32 = sub_230E69400();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_230D02000, v31, v32, "[SystemDatabase][parseMetricsConfigFromRow] Missing required fields", v33, 2u);
      MEMORY[0x23191EAE0](v33, -1, -1);
    }

    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    return;
  }

  v20 = sub_230DA41A0(0xD000000000000010, 0x8000000230E80210);
  if ((v21 & 1) == 0 || (v22 = *(a1 + 56) + 24 * v20, *(v22 + 16) != 3))
  {
    v34 = v14;
    v35 = v12;
LABEL_29:
    sub_230D0F474(v34, v35, 3);
    v28 = v19;
    v29 = v18;
    goto LABEL_22;
  }

  v23 = *v22;
  v24 = *(v22 + 8);
  if (!v24)
  {
    sub_230D0DCD8(v23, 0, 3);
    goto LABEL_31;
  }

  if (!*(a1 + 16))
  {
    v36 = *v22;
    sub_230D0DCD8(v23, v24, 3);
    sub_230D0F474(v14, v12, 3);
    sub_230D0F474(v19, v18, 3);
    v28 = v36;
LABEL_35:
    v29 = v24;
    goto LABEL_22;
  }

  v90 = *v22;

  v91 = v24;
  v25 = sub_230DA41A0(0x676E696C706D6173, 0xEC00000065746152);
  if ((v26 & 1) == 0)
  {
    sub_230D0F474(v14, v12, 3);
    sub_230D0F474(v19, v18, 3);
    v28 = v90;
    v29 = v91;
    goto LABEL_22;
  }

  v24 = v91;
  v27 = *(a1 + 56) + 24 * v25;
  if (*(v27 + 16) != 1)
  {
    sub_230D0F474(v14, v12, 3);
    sub_230D0F474(v19, v18, 3);
    v28 = v90;
    goto LABEL_35;
  }

  if (*(v27 + 8))
  {
    sub_230D0F474(v90, v91, 3);
LABEL_31:
    sub_230D0F474(v19, v18, 3);
    goto LABEL_21;
  }

  v87 = *v27;
  v37._countAndFlagsBits = v14;
  v37._object = v12;
  Domain.init(rawValue:)(v37);
  v38 = v92;
  if (v92 == 10)
  {
    v34 = v90;
    v35 = v24;
    goto LABEL_29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAA8, &qword_230E72358);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_230E6B3B0;
  v84 = v38;
  v86 = v39;
  *(v39 + 32) = v38;
  sub_230E690A0();
  v82 = sub_230E69070();
  v41 = v40;
  sub_230D0F474(v19, v18, 3);
  v85 = *(v5 + 8);
  v85(v8, v4);
  v83 = v41;
  if (v41 >> 60 == 15)
  {
    v88 = 0;
LABEL_51:
    v89 = sub_230D0EBD4(MEMORY[0x277D84F90]);
    sub_230E690A0();
    v50 = v90;
    v51 = v91;
    v52 = sub_230E69070();
    v54 = v53;
    sub_230D0F474(v50, v51, 3);
    v85(v8, v4);
    if (v54 >> 60 != 15)
    {

      sub_230E686C0();
      swift_allocObject();
      sub_230E686B0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAC8, &qword_230E72370);
      sub_230D6C2C4(&qword_27DB5BAE8, MEMORY[0x277D83808], MEMORY[0x277D83528]);
      v55 = v88;
      sub_230E686A0();
      v88 = v55;
      if (v55)
      {
        MEMORY[0x23191E910](v88);

        v89 = sub_230D0EBD4(MEMORY[0x277D84F90]);
        sub_230D0F494(v52, v54);
        v88 = 0;
      }

      else
      {

        sub_230D0F494(v52, v54);
        v89 = v92;
      }
    }

    v56 = MEMORY[0x277D84F90];
    v57 = sub_230D0EAD0(MEMORY[0x277D84F90]);
    if (!*(a1 + 16))
    {
      goto LABEL_75;
    }

    v58 = sub_230DA41A0(0xD00000000000001ALL, 0x8000000230E80230);
    if (v59)
    {
      v60 = *(a1 + 56) + 24 * v58;
      v61 = *(v60 + 8);
      if (*(v60 + 16) == 3 && v61 != 0)
      {
        v63 = *v60;

        sub_230E690A0();
        v91 = sub_230E69070();
        v65 = v64;
        sub_230D0F474(v63, v61, 3);
        v85(v8, v4);
        if (v65 >> 60 != 15)
        {

          sub_230E686C0();
          swift_allocObject();
          sub_230E686B0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAD0, &qword_230E73560);
          sub_230D6C1DC(&qword_27DB5D980, MEMORY[0x277D83808], MEMORY[0x277D83A30], MEMORY[0x277D83528]);
          v66 = v88;
          sub_230E686A0();
          v88 = v66;
          if (v66)
          {
            MEMORY[0x23191E910](v88);

            v57 = sub_230D0EAD0(MEMORY[0x277D84F90]);
            sub_230D0F494(v91, v65);
            v88 = 0;
          }

          else
          {

            sub_230D0F494(v91, v65);
            v57 = v92;
          }
        }
      }
    }

    if (*(a1 + 16))
    {
      v67 = sub_230DA41A0(0xD000000000000015, 0x8000000230E80250);
      if (v68)
      {
        v69 = *(a1 + 56) + 24 * v67;
        v70 = *(v69 + 8);
        if (*(v69 + 16) == 3 && v70 != 0)
        {
          v72 = *v69;

          sub_230E690A0();
          v73 = sub_230E69070();
          v75 = v74;
          sub_230D0F474(v72, v70, 3);
          v85(v8, v4);
          if (v75 >> 60 != 15)
          {
            sub_230E686C0();
            swift_allocObject();
            sub_230E686B0();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
            sub_230D46AD4(&qword_27DB5B170, MEMORY[0x277D83808], MEMORY[0x277D83978]);
            v76 = v88;
            sub_230E686A0();
            if (!v76)
            {

              sub_230D0F494(v73, v75);
              v56 = v92;
              goto LABEL_75;
            }

            MEMORY[0x23191E910](v76);

            sub_230D0F494(v73, v75);
          }
        }
      }
    }

    v56 = MEMORY[0x277D84F90];
LABEL_75:
    v77 = v86;
    v78 = v87;
    *a2 = v84;
    *(a2 + 8) = v77;
    v79 = v89;
    *(a2 + 16) = v78;
    *(a2 + 24) = v79;
    *(a2 + 32) = v57;
    *(a2 + 40) = v56;
    return;
  }

  sub_230E686C0();
  swift_allocObject();
  sub_230E686B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
  sub_230D46AD4(&qword_27DB5B170, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_230E686A0();
  v88 = 0;

  v42 = 0;
  v43 = v92;
  v89 = *(v92 + 16);
  v81 = v92 + 40;
  v86 = MEMORY[0x277D84F90];
LABEL_41:
  v44 = v81 + 16 * v42;
  while (1)
  {
    if (v89 == v42)
    {
      sub_230D0F494(v82, v83);

      goto LABEL_51;
    }

    if (v42 >= *(v43 + 16))
    {
      break;
    }

    ++v42;
    v45 = v44 + 16;

    v46 = sub_230E69680();

    v44 = v45;
    if (v46 < 0xA)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v86 = sub_230E4ADB0(0, *(v86 + 2) + 1, 1, v86);
      }

      v48 = *(v86 + 2);
      v47 = *(v86 + 3);
      if (v48 >= v47 >> 1)
      {
        v86 = sub_230E4ADB0((v47 > 1), v48 + 1, 1, v86);
      }

      v49 = v86;
      *(v86 + 2) = v48 + 1;
      v49[v48 + 32] = v46;
      goto LABEL_41;
    }
  }

  __break(1u);
}

uint64_t sub_230E42B80(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 488) = a3;
  v8 = sub_230E68910();
  *(v4 + 496) = v8;
  *(v4 + 504) = *(v8 - 8);
  *(v4 + 512) = swift_task_alloc();
  *(v4 + 632) = *a1;
  *(v4 + 633) = *a2;
  v9 = *(a2 + 16);
  *(v4 + 520) = *(a2 + 8);
  *(v4 + 528) = v9;
  *(v4 + 536) = *(a2 + 24);
  *(v4 + 552) = *(a2 + 40);
  v10 = *(a4 + 16);
  *(v4 + 560) = *a4;
  *(v4 + 576) = v10;
  *(v4 + 592) = *(a4 + 32);

  return MEMORY[0x2822009F8](sub_230E42C94, 0, 0);
}

uint64_t sub_230E42C94(uint64_t a1)
{
  v3 = *(v1 + 504);
  v2 = *(v1 + 512);
  v4 = *(v1 + 496);
  sub_230E68900();
  sub_230E688D0();
  v6 = v5;
  v7 = v5;
  result = (*(v3 + 8))(v2, v4);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_53;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_54:
    __break(1u);
    return result;
  }

  v9 = *(v1 + 520);
  v10 = *(v9 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v62 = MEMORY[0x277D84F90];
    sub_230D48880(0, v10, 0);
    v12 = (v9 + 32);
    v11 = v62;
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v14 > 4)
      {
        if (v13 == 8)
        {
          v15 = 0x65676175676E616CLL;
        }

        else
        {
          v15 = 0x7974697275636573;
        }

        v16 = 0xE800000000000000;
        if (v13 == 7)
        {
          v15 = 0x6E6F6D6D6F63;
          v16 = 0xE600000000000000;
        }

        if (v13 == 5)
        {
          v17 = 0x7374736163646F70;
        }

        else
        {
          v17 = 0x6F65646976;
        }

        if (v13 == 5)
        {
          v18 = 0xE800000000000000;
        }

        else
        {
          v18 = 0xE500000000000000;
        }

        v19 = v13 <= 6;
      }

      else
      {
        if (v13 == 3)
        {
          v15 = 0x7373656E746966;
        }

        else
        {
          v15 = 0x636973756DLL;
        }

        if (v13 == 3)
        {
          v16 = 0xE700000000000000;
        }

        else
        {
          v16 = 0xE500000000000000;
        }

        if (v13 == 2)
        {
          v15 = 0x736B6F6F62;
          v16 = 0xE500000000000000;
        }

        if (v13)
        {
          v17 = 1936748641;
        }

        else
        {
          v17 = 0x6C616E7265746E69;
        }

        if (v13)
        {
          v18 = 0xE400000000000000;
        }

        else
        {
          v18 = 0xE800000000000000;
        }

        v19 = v13 <= 1;
      }

      if (v19)
      {
        v20 = v17;
      }

      else
      {
        v20 = v15;
      }

      if (v19)
      {
        v21 = v18;
      }

      else
      {
        v21 = v16;
      }

      v23 = *(v62 + 16);
      v22 = *(v62 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_230D48880((v22 > 1), v23 + 1, 1);
      }

      *(v62 + 16) = v23 + 1;
      v24 = v62 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v21;
      --v10;
    }

    while (v10);
  }

  v25 = sub_230E4151C(v11);
  v27 = v26;
  v28 = *(v1 + 536);

  v29 = sub_230E41684(v28);
  v31 = v30;
  v32 = v29;
  v33 = sub_230E417EC(*(v1 + 544));
  v35 = v34;
  v36 = v33;
  v37 = sub_230E4195C(*(v1 + 552));
  v59 = v38;
  v57 = v37;
  v61 = (v1 + 408);
  v39 = *(v1 + 632);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B2C0, &unk_230E6F630);
  v40 = swift_allocObject();
  *(v1 + 600) = v40;
  *(v40 + 16) = xmmword_230E6B3B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8B0, &qword_230E6C238);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_230E7F480;
  *(inited + 32) = 0x6564496369706F74;
  *(inited + 40) = 0xEF7265696669746ELL;
  if (v39)
  {
    v42 = v36;
    if (v39 == 1)
    {
      v43 = 0x8000000230E802F0;
      v44 = 0xD00000000000001FLL;
    }

    else
    {
      v43 = 0x8000000230E80310;
      v44 = 0xD000000000000012;
    }

    v45 = v27;
    v46 = v57;
    v47 = v59;
  }

  else
  {
    v43 = 0xEE00676F6C5F7064;
    v44 = 0x6F5F706D615F7078;
    v45 = v27;
    v42 = v36;
    v46 = v57;
    v47 = v59;
  }

  v48 = v1;
  v49 = *(v1 + 633);
  *(inited + 48) = v44;
  *(inited + 56) = v43;
  *(inited + 64) = 3;
  *(inited + 72) = 0x6E69616D6F64;
  *(inited + 80) = 0xE600000000000000;
  v50 = *&aInternalapps_1[8 * v49];
  v51 = *&aLanguagesecuri_1[8 * v49 + 16];
  v52 = *(v1 + 592);
  v53 = v48[66];
  v58 = *(v61 + 168);
  v60 = *(v61 + 152);
  *(inited + 88) = v50;
  *(inited + 96) = v51;
  *(inited + 104) = 3;
  *(inited + 112) = 0x656873696C627570;
  *(inited + 120) = 0xEA00000000007372;
  *(inited + 128) = v25;
  *(inited + 136) = v45;
  *(inited + 144) = 3;
  *(inited + 152) = 0xD000000000000010;
  *(inited + 160) = 0x8000000230E80210;
  *(inited + 168) = v32;
  *(inited + 176) = v31;
  *(inited + 184) = 3;
  strcpy((inited + 192), "samplingRate");
  *(inited + 205) = 0;
  *(inited + 206) = -5120;
  *(inited + 208) = v53;
  *(inited + 216) = 0;
  *(inited + 224) = 1;
  *(inited + 232) = 0xD00000000000001ALL;
  *(inited + 240) = 0x8000000230E80230;
  *(inited + 248) = v42;
  *(inited + 256) = v35;
  *(inited + 264) = 3;
  *(inited + 272) = 0xD000000000000015;
  *(inited + 280) = 0x8000000230E80250;
  *(inited + 288) = v46;
  *(inited + 296) = v47;
  *(inited + 304) = 3;
  strcpy((inited + 312), "creationTime");
  *(inited + 325) = 0;
  *(inited + 326) = -5120;
  *(inited + 328) = v6;
  *(inited + 336) = 0;
  *(inited + 344) = 2;
  *(inited + 352) = 0x616470557473616CLL;
  *(inited + 360) = 0xEF656D6954646574;
  *(inited + 368) = v6;
  *(inited + 376) = 0;
  *(inited + 384) = 2;
  v54 = sub_230D0DBB4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC28, &qword_230E6C240);
  swift_arrayDestroy();
  *(v40 + 32) = v54;
  v55 = sub_230E1CA68(&unk_2845A5118);
  v48[76] = v55;
  swift_arrayDestroy();
  v48[57] = 0xEF63657053797274;
  v48[58] = v40;
  v48[59] = v55;
  *v61 = v60;
  v61[1] = v58;
  v48[55] = v52;
  v48[56] = 0x656D656C65545F5FLL;
  v56 = swift_task_alloc();
  v48[77] = v56;
  *v56 = v48;
  v56[1] = sub_230E433E8;

  return sub_230D41CA0((v48 + 60), (v48 + 56), v61);
}

uint64_t sub_230E433E8()
{
  *(*v1 + 624) = v0;

  if (v0)
  {
    v2 = sub_230E4371C;
  }

  else
  {

    v2 = sub_230E43528;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_230E43528()
{
  v15 = v0;
  v1 = *(v0 + 480);
  if (qword_27DB5A4B0 != -1)
  {
    swift_once();
  }

  v2 = sub_230E68D80();
  __swift_project_value_buffer(v2, qword_27DB80BC0);
  v3 = sub_230E68D60();
  v4 = sub_230E693F0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 632);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315394;
    if (v5)
    {
      v8 = "t32";
      if (v5 == 1)
      {
        v9 = 0xD00000000000001FLL;
      }

      else
      {
        v8 = "xp_ops_activity_personalization";
        v9 = 0xD000000000000012;
      }

      v10 = v8 | 0x8000000000000000;
    }

    else
    {
      v10 = 0xEE00676F6C5F7064;
      v9 = 0x6F5F706D615F7078;
    }

    v11 = sub_230D7E620(v9, v10, &v14);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2048;
    *(v6 + 14) = v1;
    _os_log_impl(&dword_230D02000, v3, v4, "[SystemDatabase][upsertMetricsTopicConfiguration] Upserted telemetry topic: %s, processed: %lld", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_230E4371C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230E437AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D7D0, &qword_230E734E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_230E43814()
{
  result = qword_27DB5D918;
  if (!qword_27DB5D918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5D910, &qword_230E7F4B8);
    sub_230D46AD4(&qword_27DB5B148, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D918);
  }

  return result;
}

uint64_t static SystemDatabase.updateSystemStatus(_:using:requestContext:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_230D1BF00;

  return sub_230E46438(a1, a2, a3);
}

uint64_t static SystemDatabase.updateConfigurationVersion(_:using:requestContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 104) = a1;
  *(v3 + 112) = a2;
  v5 = sub_230E68D80();
  *(v3 + 120) = v5;
  *(v3 + 128) = *(v5 - 8);
  *(v3 + 136) = swift_task_alloc();
  v6 = *(a3 + 16);
  *(v3 + 144) = *a3;
  *(v3 + 160) = v6;
  *(v3 + 176) = *(a3 + 32);

  return MEMORY[0x2822009F8](sub_230E43A7C, 0, 0);
}

uint64_t sub_230E43A7C()
{
  v1 = *(v0 + 160);
  if (v1)
  {
    v2 = *(v0 + 168);
    v3 = *(v0 + 176);
    v4 = *(v0 + 144);
    v5 = *(v0 + 152);
    *(v0 + 200) = v1;
    *(v0 + 208) = v3;
    *(v0 + 663) = BYTE1(v2);
    *(v0 + 662) = v2 & 1;
    *(v0 + 192) = v5;
    *(v0 + 661) = v4;
    *(v0 + 16) = v4;
    *(v0 + 24) = v5;
    *(v0 + 32) = v1;
    *(v0 + 40) = v2 & 1;
    *(v0 + 41) = BYTE1(v2);
    *(v0 + 48) = v3;
    sub_230D0585C(v4, v5, v1, v2, v3);
    if (qword_27DB5A430 != -1)
    {
      swift_once();
    }

    v6 = qword_27DB5A438;
    *(v0 + 216) = qword_27DB5A438;

    return MEMORY[0x2822009F8](sub_230E43EC8, v6, 0);
  }

  else
  {
    *(v0 + 660) = 42;
    v7 = swift_task_alloc();
    *(v0 + 184) = v7;
    *v7 = v0;
    v7[1] = sub_230E43C60;

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 660), 0, 0);
  }
}

uint64_t sub_230E43C60()
{

  return MEMORY[0x2822009F8](sub_230E43D88, 0, 0);
}

uint64_t sub_230E43D88()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v6 = *(v0 + 88);
  *(v0 + 200) = v3;
  *(v0 + 208) = v6;
  *(v0 + 663) = v5;
  *(v0 + 662) = v4;
  *(v0 + 192) = v2;
  *(v0 + 661) = v1;
  v7 = *(v0 + 168);
  v8 = *(v0 + 176);
  v9 = *(v0 + 152);
  v10 = *(v0 + 160);
  v11 = *(v0 + 144);
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v6;
  sub_230D0585C(v11, v9, v10, v7, v8);
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v12 = qword_27DB5A438;
  *(v0 + 216) = qword_27DB5A438;

  return MEMORY[0x2822009F8](sub_230E43EC8, v12, 0);
}

uint64_t sub_230E43EC8()
{
  v26 = v0;
  v25[1] = *MEMORY[0x277D85DE8];
  sub_230E68D70();

  v1 = sub_230E68D60();
  v2 = sub_230E693E0();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 192);
    v3 = *(v0 + 200);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v25[0] = v6;
    *v5 = 136315650;
    *(v5 + 4) = sub_230D7E620(0xD00000000000001ALL, 0x8000000230E80910, v25);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_230D7E620(v4, v3, v25);
    *(v5 + 22) = 2080;
    v7 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v7);

    v8 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v25);

    *(v5 + 24) = v8;
    _os_log_impl(&dword_230D02000, v1, v2, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v6, -1, -1);
    MEMORY[0x23191EAE0](v5, -1, -1);
  }

  if (*(v0 + 662) == 1 && ((v9 = *(v0 + 208), v10 = *(v0 + 663), v11 = RequestType.rawValue.getter(), v13 = v12, , LOBYTE(v11) = sub_230D33FDC(v11, v13, v9), , , (v11 & 1) != 0) || v10 >= 2))
  {
    sub_230E68950();
    *(v0 + 224) = CFAbsoluteTimeGetCurrent();
    *(v0 + 280) = 0u;
    *(v0 + 296) = 0u;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0u;
    *(v0 + 344) = 0u;
    *(v0 + 360) = 0u;
    *(v0 + 376) = 0u;
    *(v0 + 392) = 0u;
    *(v0 + 408) = 0u;
    *(v0 + 424) = 0u;
    *(v0 + 440) = 0u;
    *(v0 + 456) = 0u;
    *(v0 + 472) = 0u;
    *(v0 + 488) = 0u;
    *(v0 + 504) = 0u;
    *(v0 + 520) = 0u;
    *(v0 + 536) = 0u;
    *(v0 + 552) = 0u;
    *(v0 + 568) = 0u;
    *(v0 + 584) = 0u;
    *(v0 + 600) = 0u;
    *(v0 + 616) = 0u;
    *(v0 + 632) = 0u;
    *(v0 + 648) = 0;
    *(v0 + 652) = 93;
    v16 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 280), (v0 + 652));
    *(v0 + 656) = v16;
    v17 = 0.0;
    if (!v16)
    {
      v18 = *(v0 + 328);
      v19 = *(v0 + 400);
      v20 = __CFADD__(v18, v19);
      v21 = v18 + v19;
      if (v20)
      {
        __break(1u);
      }

      v17 = vcvtd_n_f64_u64(v21, 0x14uLL);
    }

    *(v0 + 248) = v17;
    *(v0 + 96) = 0;
    v14 = swift_task_alloc();
    *(v0 + 256) = v14;
    *v14 = v0;
    v15 = sub_230E44410;
  }

  else
  {
    v14 = swift_task_alloc();
    *(v0 + 232) = v14;
    *v14 = v0;
    v15 = sub_230E442B8;
  }

  v14[1] = v15;
  v22 = *(v0 + 104);
  v23 = *(v0 + 112);

  return sub_230E454F8(v14, v22, v23, v0 + 16);
}

uint64_t sub_230E442B8()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 216);
  if (v0)
  {
    v4 = sub_230E449BC;
  }

  else
  {
    v4 = sub_230E448EC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230E44410()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 216);
  if (v0)
  {
    v4 = sub_230E44674;
  }

  else
  {
    v4 = sub_230E44568;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230E44568()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  sub_230D38814(42, *(v0 + 248), *(v0 + 656) != 0, v0 + 16, (v0 + 96), *(v0 + 224));
  (*(v2 + 8))(v1, v3);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](sub_230E447CC, 0, 0);
}

uint64_t sub_230E44674(uint64_t a1)
{
  v2 = *(v1 + 264);
  v3 = *(v1 + 248);
  v4 = *(v1 + 224);
  v5 = *(v1 + 128);
  v6 = *(v1 + 136);
  v7 = *(v1 + 120);
  v8 = *(v1 + 656) != 0;
  *(v1 + 96) = v2;
  swift_willThrow();
  v9 = v2;
  sub_230D38814(42, v3, v8, v1 + 16, (v1 + 96), v4);
  MEMORY[0x23191E910](v2);
  (*(v5 + 8))(v6, v7);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  *(v1 + 272) = *(v1 + 264);

  return MEMORY[0x2822009F8](sub_230E4485C, 0, 0);
}

uint64_t sub_230E447CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230E4485C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230E448EC()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](sub_230E447CC, 0, 0);
}

uint64_t sub_230E449BC()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v0[34] = v0[30];

  return MEMORY[0x2822009F8](sub_230E4485C, 0, 0);
}

uint64_t static SystemDatabase.getCurrentConfigurationVersion(using:requestContext:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_230E44B48;

  return sub_230E45E9C(a1, a2);
}

uint64_t sub_230E44B48(uint64_t a1, char a2)
{
  v6 = *v3;

  if (v2)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = *(v6 + 8);

    return v9(a1, a2 & 1);
  }
}

uint64_t static SystemDatabase.getSystemStatus(using:requestContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 408) = a1;
  *(v3 + 416) = a2;
  v4 = *(a3 + 16);
  *(v3 + 424) = *a3;
  *(v3 + 440) = v4;
  *(v3 + 456) = *(a3 + 32);
  return MEMORY[0x2822009F8](sub_230E44CC0, 0, 0);
}

uint64_t sub_230E44CC0()
{
  if (qword_27DB5A4B0 != -1)
  {
    swift_once();
  }

  v1 = (v0 + 360);
  v2 = sub_230E68D80();
  *(v0 + 464) = __swift_project_value_buffer(v2, qword_27DB80BC0);
  v3 = sub_230E68D60();
  v4 = sub_230E693F0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_230D02000, v3, v4, "[SystemDatabase][getSystemStatus] Retrieving current system status", v5, 2u);
    MEMORY[0x23191EAE0](v5, -1, -1);
  }

  v6 = *(v0 + 456);
  v13 = *(v0 + 440);
  v14 = *(v0 + 424);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D9C0, &unk_230E6C220);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_230E6B3B0;
  strcpy((v7 + 32), "systemStatus");
  *(v7 + 45) = 0;
  *(v7 + 46) = -5120;
  *(v7 + 48) = 3;
  *(v7 + 56) = 0u;
  *(v7 + 72) = 0u;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0u;
  *(v0 + 352) = 1;
  sub_230D1D098(v0 + 256);
  *(v0 + 16) = 0xD000000000000010;
  *(v0 + 24) = 0x8000000230E84E70;
  *(v0 + 32) = v7;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0;
  v8 = *(v0 + 96);
  *(v0 + 200) = *(v0 + 80);
  *(v0 + 216) = v8;
  *(v0 + 232) = *(v0 + 112);
  v9 = *(v0 + 32);
  *(v0 + 136) = *(v0 + 16);
  *(v0 + 152) = v9;
  v10 = *(v0 + 64);
  *(v0 + 168) = *(v0 + 48);
  *(v0 + 128) = 1;
  *(v0 + 248) = 1;
  *(v0 + 184) = v10;
  *v1 = v14;
  *(v0 + 376) = v13;
  *(v0 + 392) = v6;
  v11 = swift_task_alloc();
  *(v0 + 472) = v11;
  *v11 = v0;
  v11[1] = sub_230E44F40;

  return sub_230D3ED1C(v0 + 400, v0 + 136, v1);
}

uint64_t sub_230E44F40()
{
  v2 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v3 = sub_230E45394;
  }

  else
  {
    sub_230D1D148(v2 + 16);
    v3 = sub_230E4505C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_230E4505C()
{
  v26 = v0;
  v1 = *(v0 + 400);
  if (*(v1 + 16) && (v2 = *(v1 + 32), , , *(v2 + 16)) && (v3 = sub_230DA41A0(0x74536D6574737973, 0xEC00000073757461), (v4 & 1) != 0))
  {
    v5 = *(v2 + 56) + 24 * v3;
    v7 = *v5;
    v6 = *(v5 + 8);
    v8 = *(v5 + 16);
    sub_230D0DCD8(*v5, v6, *(v5 + 16));

    if (v8 != 3)
    {
      v16 = v7;
      v17 = v6;
      v18 = v8;
LABEL_14:
      sub_230D0F474(v16, v17, v18);
      goto LABEL_15;
    }

    if (v6)
    {
      sub_230D0DCD8(v7, v6, 3);
      v9 = sub_230E69680();
      sub_230D0F474(v7, v6, 3);
      if (v9 < 4)
      {
        v10 = sub_230E68D60();
        v11 = sub_230E693F0();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          v25 = v13;
          *v12 = 136315138;
          if (v9 > 1u)
          {
            if (v9 == 2)
            {
              v14 = 0xE800000000000000;
              v15 = 0x6465646172676564;
            }

            else
            {
              v14 = 0xE500000000000000;
              v15 = 0x726F727265;
            }
          }

          else if (v9)
          {
            v14 = 0xE500000000000000;
            v15 = 0x7964616572;
          }

          else
          {
            v14 = 0xEC000000676E697ALL;
            v15 = 0x696C616974696E69;
          }

          v24 = sub_230D7E620(v15, v14, &v25);

          *(v12 + 4) = v24;
          _os_log_impl(&dword_230D02000, v10, v11, "[SystemDatabase][getSystemStatus] Current system status: %s", v12, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v13);
          MEMORY[0x23191EAE0](v13, -1, -1);
          MEMORY[0x23191EAE0](v12, -1, -1);
        }

        sub_230D0F474(v7, v6, 3);

        goto LABEL_18;
      }

      v16 = v7;
      v17 = v6;
      v18 = 3;
      goto LABEL_14;
    }
  }

  else
  {
  }

LABEL_15:
  v19 = sub_230E68D60();
  v20 = sub_230E69400();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_230D02000, v19, v20, "[SystemDatabase][getSystemStatus] Failed to retrieve valid system status, returning error", v21, 2u);
    MEMORY[0x23191EAE0](v21, -1, -1);
  }

  LOBYTE(v9) = 3;
LABEL_18:
  **(v0 + 408) = v9;
  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_230E45394()
{
  v1 = *(v0 + 480);
  sub_230D1D148(v0 + 16);
  v2 = v1;
  v3 = sub_230E68D60();
  v4 = sub_230E69400();
  MEMORY[0x23191E910](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 480);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_230D02000, v3, v4, "[SystemDatabase][getSystemStatus] Failed to get system status: %@", v7, 0xCu);
    sub_230E437AC(v8);
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191E910](v6);
  }

  else
  {

    MEMORY[0x23191E910](v6);
  }

  **(v0 + 408) = 3;
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_230E454F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[48] = a3;
  v4[49] = a4;
  v4[47] = a2;
  v5 = sub_230E68910();
  v4[50] = v5;
  v4[51] = *(v5 - 8);
  v4[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230E455BC, 0, 0);
}

uint64_t sub_230E455BC()
{
  sub_230E68478(0xD00000000000001ALL, 0x8000000230E80910);
  v1 = v0[52];
  v2 = v0[50];
  v3 = v0[51];
  sub_230E68900();
  sub_230E688D0();
  v5 = v4;
  v6 = v4;
  v7 = (*(v3 + 8))(v1, v2);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  v11 = v0[48];
  v10 = v0[49];
  v12 = v0[47];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B2C0, &unk_230E6F630);
  v13 = swift_allocObject();
  v0[53] = v13;
  *(v13 + 16) = xmmword_230E6B3B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8B0, &qword_230E6C238);
  inited = swift_initStackObject();
  *(inited + 32) = 0x696669746E656469;
  *(inited + 16) = xmmword_230E7F560;
  *(inited + 40) = 0xEA00000000007265;
  *(inited + 48) = xmmword_230E7F570;
  *(inited + 64) = 3;
  strcpy((inited + 72), "systemStatus");
  *(inited + 85) = 0;
  *(inited + 86) = -5120;
  *(inited + 88) = xmmword_230E7F580;
  *(inited + 104) = 3;
  strcpy((inited + 112), "lastSyncTime");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  *(inited + 128) = v5;
  *(inited + 136) = 0;
  *(inited + 144) = 2;
  strcpy((inited + 152), "configVersion");
  *(inited + 166) = -4864;
  *(inited + 168) = v12;
  *(inited + 176) = 0;
  *(inited + 184) = 2;
  *(inited + 192) = 0xD000000000000016;
  *(inited + 200) = 0x8000000230E84EE0;
  *(inited + 208) = xmmword_230E7F590;
  *(inited + 224) = 2;
  *(inited + 232) = 0x616470557473616CLL;
  *(inited + 240) = 0xEF656D6954646574;
  *(inited + 248) = v5;
  *(inited + 256) = 0;
  *(inited + 264) = 2;
  v15 = sub_230D0DBB4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC28, &qword_230E6C240);
  swift_arrayDestroy();
  *(v13 + 32) = v15;
  v0[54] = sub_230E1CA68(&unk_2845A4E70);
  swift_arrayDestroy();
  sub_230D1CDE0(v10, (v0 + 36));
  v7 = sub_230E4590C;
  v8 = v11;
  v9 = 0;

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_230E4590C()
{
  sub_230D1CDE0(*(v0 + 392), v0 + 328);

  v1 = swift_task_alloc();
  *(v0 + 440) = v1;
  *v1 = v0;
  v1[1] = sub_230E45A28;

  JUMPOUT(0x230D70398);
}

uint64_t sub_230E45A28()
{
  v2 = *v1;
  *(*v1 + 448) = v0;

  v3 = *(v2 + 392);
  v4 = *(v2 + 384);
  sub_230D1CE3C(v3);
  if (v0)
  {
    v5 = sub_230E45DAC;
  }

  else
  {
    v5 = sub_230E45B70;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_230E45B70()
{
  sub_230D1CE3C(*(v0 + 392));

  return MEMORY[0x2822009F8](sub_230E45C08, 0, 0);
}

uint64_t sub_230E45C08()
{
  if (v0[46])
  {
    if (qword_27DB5A4B0 != -1)
    {
      swift_once();
    }

    v1 = sub_230E68D80();
    __swift_project_value_buffer(v1, qword_27DB80BC0);
    v2 = sub_230E68D60();
    v3 = sub_230E693E0();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = v0[47];
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = v4;
      _os_log_impl(&dword_230D02000, v2, v3, "[SystemDatabase][updateConfigurationVersion] Updated configuration version to: %ld", v5, 0xCu);
      MEMORY[0x23191EAE0](v5, -1, -1);
    }

    v6 = v0[1];
  }

  else
  {
    sub_230D0D224();
    swift_allocError();
    *v7 = 0xD000000000000026;
    *(v7 + 8) = 0x8000000230E84F00;
    *(v7 + 16) = 2;
    swift_willThrow();

    v6 = v0[1];
  }

  return v6();
}

uint64_t sub_230E45DAC()
{
  sub_230D1CE3C(*(v0 + 392));

  return MEMORY[0x2822009F8](sub_230E45E14, 0, 0);
}

uint64_t sub_230E45E14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230E45E9C(uint64_t a1, uint64_t a2)
{
  *(v2 + 408) = a1;
  v3 = *(a2 + 16);
  *(v2 + 416) = *a2;
  *(v2 + 432) = v3;
  *(v2 + 448) = *(a2 + 32);
  return MEMORY[0x2822009F8](sub_230E45ECC, 0, 0);
}

uint64_t sub_230E45ECC()
{
  v1 = *(v0 + 448);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D9C0, &unk_230E6C220);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_230E6B3B0;
  strcpy((v2 + 32), "configVersion");
  *(v2 + 46) = -4864;
  *(v2 + 48) = 2;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0u;
  *(v0 + 352) = 1;
  v8 = *(v0 + 432);
  v9 = *(v0 + 416);
  sub_230D1D098(v0 + 256);
  *(v0 + 16) = 0xD000000000000010;
  *(v0 + 24) = 0x8000000230E84E70;
  *(v0 + 32) = v2;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0xD000000000000015;
  *(v0 + 96) = 0x8000000230E84E90;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 104) = 0;
  v3 = *(v0 + 96);
  *(v0 + 200) = *(v0 + 80);
  *(v0 + 216) = v3;
  *(v0 + 232) = *(v0 + 112);
  v4 = *(v0 + 32);
  *(v0 + 136) = *(v0 + 16);
  *(v0 + 152) = v4;
  v5 = *(v0 + 64);
  *(v0 + 168) = *(v0 + 48);
  *(v0 + 128) = 1;
  *(v0 + 248) = 1;
  *(v0 + 184) = v5;
  *(v0 + 360) = v9;
  *(v0 + 376) = v8;
  *(v0 + 392) = v1;
  v6 = swift_task_alloc();
  *(v0 + 456) = v6;
  *v6 = v0;
  v6[1] = sub_230E460B8;

  return sub_230D3ED1C(v0 + 400, v0 + 136, v0 + 360);
}

uint64_t sub_230E460B8()
{
  v2 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v3 = sub_230D4FD9C;
  }

  else
  {
    sub_230D1D148(v2 + 16);
    v3 = sub_230E461D4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_230E461D4()
{
  v1 = *(v0 + 400);
  if (*(v1 + 16))
  {
    v2 = *(v1 + 32);

    if (*(v2 + 16) && (v3 = sub_230DA41A0(0x65566769666E6F63, 0xED00006E6F697372), (v4 & 1) != 0))
    {
      v5 = *(v2 + 56) + 24 * v3;
      v6 = *(v5 + 8);
      v7 = *(v5 + 16);
      v8 = *v5;
      sub_230D0DCD8(*v5, v6, *(v5 + 16));

      if (v7 == 2)
      {
        if ((v6 & 1) == 0)
        {
          v9 = 0;
          v10 = v8;
LABEL_13:
          v15 = *(v0 + 8);

          return v15(v10, v9);
        }
      }

      else
      {
        sub_230D0F474(v8, v6, v7);
      }
    }

    else
    {
    }

    if (qword_27DB5A4B0 != -1)
    {
      swift_once();
    }

    v11 = sub_230E68D80();
    __swift_project_value_buffer(v11, qword_27DB80BC0);
    v12 = sub_230E68D60();
    v13 = sub_230E693F0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_230D02000, v12, v13, "[SystemDatabase][getCurrentConfigurationVersion] configVersion is NULL, returning nil (first-time setup)", v14, 2u);
      MEMORY[0x23191EAE0](v14, -1, -1);
    }

    v10 = 0;
    v9 = 1;
    goto LABEL_13;
  }

  sub_230D0D224();
  swift_allocError();
  *v17 = 0xD000000000000020;
  *(v17 + 8) = 0x8000000230E84EB0;
  *(v17 + 16) = 4;
  swift_willThrow();
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_230E46438(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 368) = a2;
  v6 = sub_230E68910();
  *(v3 + 376) = v6;
  *(v3 + 384) = *(v6 - 8);
  *(v3 + 392) = swift_task_alloc();
  *(v3 + 480) = *a1;
  v7 = *(a3 + 16);
  *(v3 + 400) = *a3;
  *(v3 + 416) = v7;
  *(v3 + 432) = *(a3 + 32);

  return MEMORY[0x2822009F8](sub_230E46518, 0, 0);
}

uint64_t sub_230E46518()
{
  v32 = v0;
  if (qword_27DB5A4B0 != -1)
  {
    swift_once();
  }

  v1 = sub_230E68D80();
  *(v0 + 440) = __swift_project_value_buffer(v1, qword_27DB80BC0);
  v2 = sub_230E68D60();
  v3 = sub_230E693F0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 480);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v31 = v6;
    v7 = 0xEC000000676E697ALL;
    *v5 = 136315138;
    v8 = 0x696C616974696E69;
    v9 = 0xE800000000000000;
    v10 = 0x6465646172676564;
    if (v4 != 2)
    {
      v10 = 0x726F727265;
      v9 = 0xE500000000000000;
    }

    if (v4)
    {
      v8 = 0x7964616572;
      v7 = 0xE500000000000000;
    }

    if (v4 <= 1)
    {
      v11 = v8;
    }

    else
    {
      v11 = v10;
    }

    if (v4 <= 1)
    {
      v12 = v7;
    }

    else
    {
      v12 = v9;
    }

    v13 = sub_230D7E620(v11, v12, &v31);

    *(v5 + 4) = v13;
    _os_log_impl(&dword_230D02000, v2, v3, "[SystemDatabase][updateSystemStatus] Updating system status to: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x23191EAE0](v6, -1, -1);
    MEMORY[0x23191EAE0](v5, -1, -1);
  }

  sub_230E68478(0xD000000000000012, 0x8000000230E808F0);
  v15 = *(v0 + 384);
  v14 = *(v0 + 392);
  v16 = *(v0 + 376);
  sub_230E68900();
  sub_230E688D0();
  v18 = v17;
  v19 = v17;
  result = (*(v15 + 8))(v14, v16);
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v21 = *(v0 + 480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B2C0, &unk_230E6F630);
  v22 = swift_allocObject();
  *(v0 + 448) = v22;
  *(v22 + 16) = xmmword_230E6B3B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8B0, &qword_230E6C238);
  inited = swift_initStackObject();
  *(inited + 32) = 0x696669746E656469;
  *(inited + 16) = xmmword_230E7F560;
  *(inited + 40) = 0xEA00000000007265;
  *(inited + 48) = xmmword_230E7F570;
  *(inited + 64) = 3;
  strcpy((inited + 72), "systemStatus");
  *(inited + 85) = 0;
  *(inited + 86) = -5120;
  v24 = *&aZing[8 * v21];
  v25 = *(v0 + 432);
  v29 = *(v0 + 416);
  v30 = *(v0 + 400);
  *(inited + 88) = *&aInitialiready[8 * v21];
  *(inited + 96) = v24;
  *(inited + 104) = 3;
  strcpy((inited + 112), "lastSyncTime");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  *(inited + 128) = xmmword_230E6E730;
  *(inited + 144) = 2;
  strcpy((inited + 152), "configVersion");
  *(inited + 166) = -4864;
  *(inited + 168) = xmmword_230E6E730;
  *(inited + 184) = 2;
  *(inited + 192) = 0xD000000000000016;
  *(inited + 200) = 0x8000000230E84EE0;
  *(inited + 208) = xmmword_230E7F590;
  *(inited + 224) = 2;
  *(inited + 232) = 0x616470557473616CLL;
  *(inited + 240) = 0xEF656D6954646574;
  *(inited + 248) = v18;
  *(inited + 256) = 0;
  *(inited + 264) = 2;
  v26 = sub_230D0DBB4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC28, &qword_230E6C240);
  swift_arrayDestroy();
  *(v22 + 32) = v26;
  v27 = sub_230E1CA68(&unk_2845A4FB8);
  *(v0 + 456) = v27;
  swift_arrayDestroy();
  *(v0 + 336) = 0x8000000230E84E70;
  *(v0 + 344) = v22;
  *(v0 + 352) = v27;
  *(v0 + 288) = v30;
  *(v0 + 304) = v29;
  *(v0 + 320) = v25;
  *(v0 + 328) = 0xD000000000000010;
  v28 = swift_task_alloc();
  *(v0 + 464) = v28;
  *v28 = v0;
  v28[1] = sub_230E46B3C;

  return sub_230D41CA0(v0 + 360, v0 + 328, v0 + 288);
}

uint64_t sub_230E46B3C()
{
  *(*v1 + 472) = v0;

  if (v0)
  {
    v2 = sub_230E46E34;
  }

  else
  {

    v2 = sub_230E46C74;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_230E46C74(uint64_t a1)
{
  v18 = v1;
  v2 = *(v1 + 360);
  v3 = sub_230E68D60();
  v4 = sub_230E693E0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v1 + 480);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    v8 = 0xEC000000676E697ALL;
    *v6 = 136315394;
    v9 = 0x696C616974696E69;
    v10 = 0xE800000000000000;
    v11 = 0x6465646172676564;
    if (v5 != 2)
    {
      v11 = 0x726F727265;
      v10 = 0xE500000000000000;
    }

    if (v5)
    {
      v9 = 0x7964616572;
      v8 = 0xE500000000000000;
    }

    if (v5 <= 1)
    {
      v12 = v9;
    }

    else
    {
      v12 = v11;
    }

    if (v5 <= 1)
    {
      v13 = v8;
    }

    else
    {
      v13 = v10;
    }

    v14 = sub_230D7E620(v12, v13, &v17);

    *(v6 + 4) = v14;
    *(v6 + 12) = 2048;
    *(v6 + 14) = v2;
    _os_log_impl(&dword_230D02000, v3, v4, "[SystemDatabase][updateSystemStatus] System status updated to: %s, processed: %lld", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v15 = *(v1 + 8);

  return v15();
}

uint64_t sub_230E46E34()
{

  v1 = *(v0 + 472);
  v2 = v1;
  v3 = sub_230E68D60();
  v4 = sub_230E69400();
  MEMORY[0x23191E910](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_230D02000, v3, v4, "[SystemDatabase][updateSystemStatus] Failed to update system status: %@", v5, 0xCu);
    sub_230E437AC(v6);
    MEMORY[0x23191EAE0](v6, -1, -1);
    MEMORY[0x23191EAE0](v5, -1, -1);
  }

  swift_willThrow();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t static SystemDatabase.fetchActiveTreatments(for:using:requestContext:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 424) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D920, &qword_230E7F620);
  *(v3 + 432) = swift_task_alloc();
  v6 = type metadata accessor for Treatment(0);
  *(v3 + 440) = v6;
  *(v3 + 448) = *(v6 - 8);
  *(v3 + 456) = swift_task_alloc();
  v7 = sub_230E68910();
  *(v3 + 464) = v7;
  *(v3 + 472) = *(v7 - 8);
  *(v3 + 480) = swift_task_alloc();
  *(v3 + 129) = *a1;
  v8 = *(a3 + 16);
  *(v3 + 488) = *a3;
  *(v3 + 504) = v8;
  *(v3 + 520) = *(a3 + 32);

  return MEMORY[0x2822009F8](sub_230E47124, 0, 0);
}

uint64_t sub_230E47124(uint64_t a1)
{
  v3 = *(v1 + 472);
  v2 = *(v1 + 480);
  v4 = *(v1 + 464);
  sub_230E68900();
  sub_230E688D0();
  v6 = v5;
  v7 = v5;
  result = (*(v3 + 8))(v2, v4);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_36;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_37:
    __break(1u);
    return result;
  }

  v9 = (v1 + 360);
  v10 = *(v1 + 129);
  if (v10 == 10)
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  else
  {
    sub_230E69540();

    if (v10 > 4)
    {
      v21 = 0xE600000000000000;
      v22 = 0x6E6F6D6D6F63;
      v23 = 0x65676175676E616CLL;
      if (v10 != 8)
      {
        v23 = 0x7974697275636573;
      }

      if (v10 != 7)
      {
        v22 = v23;
        v21 = 0xE800000000000000;
      }

      v24 = 0xE800000000000000;
      v25 = 0x7374736163646F70;
      if (v10 != 5)
      {
        v25 = 0x6F65646976;
        v24 = 0xE500000000000000;
      }

      if (v10 <= 6)
      {
        v19 = v25;
      }

      else
      {
        v19 = v22;
      }

      if (v10 <= 6)
      {
        v20 = v24;
      }

      else
      {
        v20 = v21;
      }
    }

    else
    {
      v13 = 0xE800000000000000;
      v14 = 0x6C616E7265746E69;
      v15 = 0xE500000000000000;
      v16 = 0x736B6F6F62;
      v17 = 0xE700000000000000;
      v18 = 0x7373656E746966;
      if (v10 != 3)
      {
        v18 = 0x636973756DLL;
        v17 = 0xE500000000000000;
      }

      if (v10 != 2)
      {
        v16 = v18;
        v15 = v17;
      }

      if (v10)
      {
        v14 = 1936748641;
        v13 = 0xE400000000000000;
      }

      if (v10 <= 1)
      {
        v19 = v14;
      }

      else
      {
        v19 = v16;
      }

      if (v10 <= 1)
      {
        v20 = v13;
      }

      else
      {
        v20 = v15;
      }
    }

    MEMORY[0x23191DA00](v19, v20);

    MEMORY[0x23191DA00](0x20444E412027, 0xE600000000000000);
    v11 = 0x3D206E69616D6F64;
    v12 = 0xEA00000000002720;
  }

  v26 = *(v1 + 520);
  v33 = *(v1 + 504);
  v34 = *(v1 + 488);
  sub_230E69540();

  MEMORY[0x23191DA00](0x7461447472617473, 0xED0000203D3C2065);
  *(v1 + 400) = v6;
  v27 = sub_230E69890();
  MEMORY[0x23191DA00](v27);

  MEMORY[0x23191DA00](0xD000000000000010, 0x8000000230E84F30);
  *(v1 + 408) = v6;
  v28 = sub_230E69890();
  MEMORY[0x23191DA00](v28);

  *(v1 + 256) = 0u;
  *(v1 + 272) = 0u;
  *(v1 + 288) = 0u;
  *(v1 + 304) = 0u;
  *(v1 + 320) = 0u;
  *(v1 + 336) = 0u;
  *(v1 + 352) = 1;
  sub_230D1D098(v1 + 256);
  *(v1 + 16) = 0x6D74616572545F5FLL;
  *(v1 + 24) = 0xEB00000000746E65;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0;
  *(v1 + 88) = v11;
  *(v1 + 96) = v12;
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  v29 = *(v1 + 96);
  *(v1 + 200) = *(v1 + 80);
  *(v1 + 216) = v29;
  *(v1 + 232) = *(v1 + 112);
  v30 = *(v1 + 32);
  *(v1 + 136) = *(v1 + 16);
  *(v1 + 152) = v30;
  v31 = *(v1 + 64);
  *(v1 + 168) = *(v1 + 48);
  *(v1 + 128) = 1;
  *(v1 + 248) = 1;
  *(v1 + 184) = v31;
  *v9 = v34;
  *(v1 + 376) = v33;
  *(v1 + 392) = v26;
  v32 = swift_task_alloc();
  *(v1 + 528) = v32;
  *v32 = v1;
  v32[1] = sub_230E4757C;

  return sub_230D3ED1C(v1 + 416, v1 + 136, v9);
}

uint64_t sub_230E4757C()
{
  v2 = *v1;
  *(*v1 + 536) = v0;

  if (v0)
  {
    v3 = sub_230E47874;
  }

  else
  {
    sub_230D1D148(v2 + 16);
    v3 = sub_230E47698;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_230E47698()
{
  v1 = v0[52];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0[56];
    v5 = MEMORY[0x277D84F90];
    while (v3 < *(v1 + 16))
    {
      v7 = v0[54];
      v6 = v0[55];

      sub_230E49A80(v8, v7);

      if ((*(v4 + 48))(v7, 1, v6) == 1)
      {
        sub_230E49E20(v0[54]);
      }

      else
      {
        sub_230DC28F8(v0[54], v0[57]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_230E4A9C4(0, v5[2] + 1, 1, v5);
        }

        v10 = v5[2];
        v9 = v5[3];
        if (v10 >= v9 >> 1)
        {
          v5 = sub_230E4A9C4((v9 > 1), v10 + 1, 1, v5);
        }

        v11 = v0[57];
        v5[2] = v10 + 1;
        sub_230DC28F8(v11, v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v10);
      }

      if (v2 == ++v3)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
LABEL_13:

    v12 = v0[1];

    v12(v5);
  }
}

uint64_t sub_230E47874()
{
  sub_230D1D148(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static SystemDatabase.storeTreatments(_:using:requestContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 104) = a1;
  *(v3 + 112) = a2;
  v5 = sub_230E68D80();
  *(v3 + 120) = v5;
  *(v3 + 128) = *(v5 - 8);
  *(v3 + 136) = swift_task_alloc();
  v6 = *(a3 + 16);
  *(v3 + 144) = *a3;
  *(v3 + 160) = v6;
  *(v3 + 176) = *(a3 + 32);

  return MEMORY[0x2822009F8](sub_230E47A04, 0, 0);
}

uint64_t sub_230E47A04()
{
  v1 = *(v0 + 160);
  if (v1)
  {
    v2 = *(v0 + 168);
    v3 = *(v0 + 176);
    v4 = *(v0 + 144);
    v5 = *(v0 + 152);
    *(v0 + 200) = v1;
    *(v0 + 208) = v3;
    *(v0 + 663) = BYTE1(v2);
    *(v0 + 662) = v2 & 1;
    *(v0 + 192) = v5;
    *(v0 + 661) = v4;
    *(v0 + 16) = v4;
    *(v0 + 24) = v5;
    *(v0 + 32) = v1;
    *(v0 + 40) = v2 & 1;
    *(v0 + 41) = BYTE1(v2);
    *(v0 + 48) = v3;
    sub_230D0585C(v4, v5, v1, v2, v3);
    if (qword_27DB5A430 != -1)
    {
      swift_once();
    }

    v6 = qword_27DB5A438;
    *(v0 + 216) = qword_27DB5A438;

    return MEMORY[0x2822009F8](sub_230E47E60, v6, 0);
  }

  else
  {
    *(v0 + 660) = 30;
    v7 = swift_task_alloc();
    *(v0 + 184) = v7;
    *v7 = v0;
    v7[1] = sub_230E47BF0;

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 660), 0, 0);
  }
}

uint64_t sub_230E47BF0()
{

  return MEMORY[0x2822009F8](sub_230E47D18, 0, 0);
}

uint64_t sub_230E47D18()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v6 = *(v0 + 88);
  *(v0 + 200) = v3;
  *(v0 + 208) = v6;
  *(v0 + 663) = v5;
  *(v0 + 662) = v4;
  *(v0 + 192) = v2;
  *(v0 + 661) = v1;
  v7 = *(v0 + 168);
  v8 = *(v0 + 176);
  v9 = *(v0 + 152);
  v10 = *(v0 + 160);
  v11 = *(v0 + 144);
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v6;
  sub_230D0585C(v11, v9, v10, v7, v8);
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v12 = qword_27DB5A438;
  *(v0 + 216) = qword_27DB5A438;

  return MEMORY[0x2822009F8](sub_230E47E60, v12, 0);
}

uint64_t sub_230E47E60()
{
  v26 = v0;
  v25[1] = *MEMORY[0x277D85DE8];
  sub_230E68D70();

  v1 = sub_230E68D60();
  v2 = sub_230E693E0();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 192);
    v3 = *(v0 + 200);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v25[0] = v6;
    *v5 = 136315650;
    *(v5 + 4) = sub_230D7E620(0x65725465726F7473, 0xEF73746E656D7461, v25);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_230D7E620(v4, v3, v25);
    *(v5 + 22) = 2080;
    v7 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v7);

    v8 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v25);

    *(v5 + 24) = v8;
    _os_log_impl(&dword_230D02000, v1, v2, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v6, -1, -1);
    MEMORY[0x23191EAE0](v5, -1, -1);
  }

  if (*(v0 + 662) == 1 && ((v9 = *(v0 + 208), v10 = *(v0 + 663), v11 = RequestType.rawValue.getter(), v13 = v12, , LOBYTE(v11) = sub_230D33FDC(v11, v13, v9), , , (v11 & 1) != 0) || v10 >= 2))
  {
    sub_230E68950();
    *(v0 + 224) = CFAbsoluteTimeGetCurrent();
    *(v0 + 280) = 0u;
    *(v0 + 296) = 0u;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0u;
    *(v0 + 344) = 0u;
    *(v0 + 360) = 0u;
    *(v0 + 376) = 0u;
    *(v0 + 392) = 0u;
    *(v0 + 408) = 0u;
    *(v0 + 424) = 0u;
    *(v0 + 440) = 0u;
    *(v0 + 456) = 0u;
    *(v0 + 472) = 0u;
    *(v0 + 488) = 0u;
    *(v0 + 504) = 0u;
    *(v0 + 520) = 0u;
    *(v0 + 536) = 0u;
    *(v0 + 552) = 0u;
    *(v0 + 568) = 0u;
    *(v0 + 584) = 0u;
    *(v0 + 600) = 0u;
    *(v0 + 616) = 0u;
    *(v0 + 632) = 0u;
    *(v0 + 648) = 0;
    *(v0 + 652) = 93;
    v16 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 280), (v0 + 652));
    *(v0 + 656) = v16;
    v17 = 0.0;
    if (!v16)
    {
      v18 = *(v0 + 328);
      v19 = *(v0 + 400);
      v20 = __CFADD__(v18, v19);
      v21 = v18 + v19;
      if (v20)
      {
        __break(1u);
      }

      v17 = vcvtd_n_f64_u64(v21, 0x14uLL);
    }

    *(v0 + 248) = v17;
    *(v0 + 96) = 0;
    v14 = swift_task_alloc();
    *(v0 + 256) = v14;
    *v14 = v0;
    v15 = sub_230E483B4;
  }

  else
  {
    v14 = swift_task_alloc();
    *(v0 + 232) = v14;
    *v14 = v0;
    v15 = sub_230E4825C;
  }

  v14[1] = v15;
  v23 = *(v0 + 104);
  v22 = *(v0 + 112);

  return sub_230E4896C(v14, v22, v0 + 16, v23);
}

uint64_t sub_230E4825C()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 216);
  if (v0)
  {
    v4 = sub_230E48880;
  }

  else
  {
    v4 = sub_230E48794;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230E483B4()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 216);
  if (v0)
  {
    v4 = sub_230E4862C;
  }

  else
  {
    v4 = sub_230E4850C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230E4850C()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  sub_230D38814(30, *(v0 + 248), *(v0 + 656) != 0, v0 + 16, (v0 + 96), *(v0 + 224));
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_230E447CC, 0, 0);
}

uint64_t sub_230E4862C(uint64_t a1)
{
  v2 = *(v1 + 264);
  v3 = *(v1 + 248);
  v4 = *(v1 + 224);
  v5 = *(v1 + 128);
  v6 = *(v1 + 136);
  v7 = *(v1 + 120);
  v8 = *(v1 + 656) != 0;
  *(v1 + 96) = v2;
  swift_willThrow();
  v9 = v2;
  sub_230D38814(30, v3, v8, v1 + 16, (v1 + 96), v4);
  MEMORY[0x23191E910](v2);
  (*(v5 + 8))(v6, v7);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  *(v1 + 272) = *(v1 + 264);

  return MEMORY[0x2822009F8](sub_230E4485C, 0, 0);
}

uint64_t sub_230E48794()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  return MEMORY[0x2822009F8](sub_230E447CC, 0, 0);
}

uint64_t sub_230E48880()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v0[34] = v0[30];

  return MEMORY[0x2822009F8](sub_230E4485C, 0, 0);
}

uint64_t sub_230E4896C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 552) = a4;
  *(v4 + 544) = a3;
  *(v4 + 536) = a2;
  *(v4 + 688) = *a3;
  *(v4 + 560) = *(a3 + 8);
  *(v4 + 689) = *(a3 + 24);
  *(v4 + 576) = *(a3 + 32);
  v5 = type metadata accessor for Treatment(0);
  *(v4 + 584) = v5;
  *(v4 + 592) = *(v5 - 8);
  *(v4 + 600) = swift_task_alloc();
  v6 = sub_230E68910();
  *(v4 + 608) = v6;
  *(v4 + 616) = *(v6 - 8);
  *(v4 + 624) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230E48AB4, 0, 0);
}

uint64_t sub_230E48AB4(uint64_t a1)
{
  v2 = *(v1 + 624);
  v3 = *(v1 + 616);
  v4 = *(v1 + 608);
  sub_230E68900();
  sub_230E688D0();
  v6 = v5;
  v7 = v5;
  *(v1 + 632) = v5;
  result = (*(v3 + 8))(v2, v4);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v9 = *(v1 + 576);
  v10 = *(v1 + 568);
  v11 = *(v1 + 560);
  v12 = *(v1 + 544);
  v13 = *(v1 + 689) & 1 | (*(v1 + 690) << 8);
  *(v1 + 368) = *(v1 + 688);
  *(v1 + 376) = v11;
  *(v1 + 384) = v10;
  *(v1 + 392) = v13;
  *(v1 + 400) = v9;
  sub_230D1CDE0(v12, v1 + 408);
  v14 = swift_task_alloc();
  *(v1 + 640) = v14;
  *v14 = v1;
  v14[1] = sub_230E48C14;
  v15 = *(v1 + 536);

  return sub_230E4B384(v6, v15, v1 + 368);
}

uint64_t sub_230E48C14()
{
  v2 = *v1;
  v2[81] = v0;

  sub_230D666B4(v2[46], v2[47], v2[48], v2[49], v2[50]);
  if (v0)
  {
    v3 = sub_230E494C8;
  }

  else
  {
    v3 = sub_230E48D88;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_230E48D88()
{
  v61 = *(v0 + 600);
  v1 = *(v0 + 592);
  v2 = *(v0 + 552);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = *(v0 + 584);
  v7 = -1;
  v8 = -1 << *(*(v0 + 552) + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v59 = v7 & v3;
  v58 = (63 - v8) >> 6;

  v10 = 0;
  v60 = (v0 + 80);
  v11 = MEMORY[0x277D84F90];
LABEL_4:
  *(v0 + 656) = v11;
  v12 = v59;
  while (v12)
  {
LABEL_5:
    v13 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v14 = v13 | (v10 << 6);
    v15 = *(*(v9 + 56) + 8 * v14);
    if (*(v15 + 16))
    {
      v52 = *(v15 + 16);
      v59 = v12;
      v49 = v4;
      v50 = v9;
      v56 = v15 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
      v57 = *(*(v9 + 48) + v14);

      v17 = 0;
      v51 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A920, &unk_230E6B9C0);
      v55 = *(v1 + 72);
      v53 = v6;
      v54 = v0;
      while (1)
      {
        v18 = *(v0 + 600);
        sub_230DBCB98(v56 + v17 * v55, v18);
        strcpy((v0 + 48), "areaIdentifier");
        *(v0 + 63) = -18;
        v19 = *(v61 + 8);
        *(v0 + 64) = *v18;
        *(v0 + 72) = v19;
        *(v0 + 80) = 3;
        *(v0 + 88) = 0x696669746E656469;
        *(v0 + 96) = 0xEA00000000007265;
        v20 = *(v61 + 24);
        *(v0 + 104) = *(v61 + 16);
        *(v0 + 112) = v20;
        *(v0 + 120) = 3;
        *(v0 + 128) = 0x6E69616D6F64;
        *(v0 + 136) = 0xE600000000000000;
        v21 = *&aPodcasts_2[8 * v57 + 8];
        *(v0 + 144) = *&aApps_2[8 * v57];
        *(v0 + 152) = v21;
        *(v0 + 160) = 3;
        *(v0 + 168) = 0x74656B637562;
        *(v0 + 176) = 0xE600000000000000;
        *(v0 + 184) = -*(v61 + 32);
        *(v0 + 192) = 0;
        *(v0 + 200) = 2;
        *(v0 + 208) = 0x7461447472617473;
        *(v0 + 216) = 0xE900000000000065;

        sub_230E688D0();
        if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v22 <= -9.22337204e18)
        {
          goto LABEL_42;
        }

        if (v22 >= 9.22337204e18)
        {
          goto LABEL_43;
        }

        *(v0 + 224) = v22;
        *(v0 + 232) = 0;
        *(v0 + 240) = 2;
        *(v0 + 248) = 0x65746144646E65;
        *(v0 + 256) = 0xE700000000000000;
        sub_230E688D0();
        if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_44;
        }

        if (v23 <= -9.22337204e18)
        {
          goto LABEL_45;
        }

        if (v23 >= 9.22337204e18)
        {
          goto LABEL_46;
        }

        v62 = v11;
        v63 = v17 + 1;
        v24 = *(v0 + 632);
        *(v0 + 264) = v23;
        *(v0 + 272) = 0;
        *(v0 + 280) = 2;
        strcpy((v0 + 288), "creationTime");
        *(v0 + 301) = 0;
        *(v0 + 302) = -5120;
        *(v0 + 304) = v24;
        *(v0 + 312) = 0;
        *(v0 + 320) = 2;
        *(v0 + 328) = 0x616470557473616CLL;
        *(v0 + 336) = 0xEF656D6954646574;
        *(v0 + 344) = v24;
        *(v0 + 352) = 0;
        *(v0 + 360) = 2;
        v25 = sub_230E69640();

        v26 = v60;
        v0 = 8;
        do
        {
          v27 = *(v26 - 4);
          v28 = *(v26 - 3);
          v29 = *(v26 - 2);
          v30 = *(v26 - 1);
          v31 = *v26;

          sub_230D0DCD8(v29, v30, v31);
          v32 = sub_230DA41A0(v27, v28);
          if (v33)
          {
            __break(1u);
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

          *(v25 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v32;
          v34 = (v25[6] + 16 * v32);
          *v34 = v27;
          v34[1] = v28;
          v35 = v25[7] + 24 * v32;
          *v35 = v29;
          *(v35 + 8) = v30;
          *(v35 + 16) = v31;
          v36 = v25[2];
          v37 = __OFADD__(v36, 1);
          v38 = v36 + 1;
          if (v37)
          {
            goto LABEL_39;
          }

          v26 += 40;
          v25[2] = v38;
          --v0;
        }

        while (v0);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC28, &qword_230E6C240);
        v0 = v54;
        swift_arrayDestroy();
        v11 = v62;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_230E4A61C(0, v62[2] + 1, 1, v62, &qword_27DB5B2C0, &unk_230E6F630, &qword_27DB5AC20, &qword_230E6C230);
        }

        v6 = v53;
        v17 = v63;
        v40 = v11[2];
        v39 = v11[3];
        if (v40 >= v39 >> 1)
        {
          v11 = sub_230E4A61C((v39 > 1), v40 + 1, 1, v11, &qword_27DB5B2C0, &unk_230E6F630, &qword_27DB5AC20, &qword_230E6C230);
        }

        sub_230DBCBFC(*(v54 + 600));
        v11[2] = v40 + 1;
        v11[v40 + 4] = v25;
        if (v63 == v52)
        {

          v9 = v50;
          v1 = v51;
          v4 = v49;
          goto LABEL_4;
        }
      }

LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      swift_once();
      goto LABEL_33;
    }
  }

  while (1)
  {
    v16 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v16 >= v58)
    {
      break;
    }

    v12 = *(v4 + 8 * v16);
    ++v10;
    if (v12)
    {
      v10 = v16;
      goto LABEL_5;
    }
  }

  if (!v11[2])
  {

    if (qword_27DB5A4B0 != -1)
    {
      goto LABEL_47;
    }

LABEL_33:
    v43 = sub_230E68D80();
    __swift_project_value_buffer(v43, qword_27DB80BC0);
    v44 = sub_230E68D60();
    v45 = sub_230E69400();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_230D02000, v44, v45, "[SystemDatabase][storeTreatments] No treatment data was stored.", v46, 2u);
      MEMORY[0x23191EAE0](v46, -1, -1);
    }

    v47 = *(v0 + 8);

    return v47();
  }

  v41 = *(v0 + 544);
  v42 = *(v0 + 536);
  *(v0 + 664) = sub_230E1CA68(&unk_2845A4DD0);
  swift_arrayDestroy();
  sub_230D1CDE0(v41, v0 + 448);

  return MEMORY[0x2822009F8](sub_230E49538, v42, 0);
}

uint64_t sub_230E494C8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_230E49538()
{
  sub_230D1CDE0(*(v0 + 544), v0 + 488);

  v1 = swift_task_alloc();
  *(v0 + 672) = v1;
  *v1 = v0;
  v1[1] = sub_230E49668;

  JUMPOUT(0x230D70398);
}

uint64_t sub_230E49668()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  *(*v1 + 680) = v0;

  sub_230D1CE3C(v3);
  v4 = *(v2 + 536);
  if (v0)
  {
    v5 = sub_230E49980;
  }

  else
  {
    v5 = sub_230E497B0;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_230E497B0()
{
  sub_230D1CE3C(*(v0 + 544));

  return MEMORY[0x2822009F8](sub_230E49840, 0, 0);
}

uint64_t sub_230E49840()
{
  v1 = *(v0 + 528);
  if (qword_27DB5A4B0 != -1)
  {
    swift_once();
  }

  v2 = sub_230E68D80();
  __swift_project_value_buffer(v2, qword_27DB80BC0);
  v3 = sub_230E68D60();
  v4 = sub_230E693E0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v1;
    _os_log_impl(&dword_230D02000, v3, v4, "[SystemDatabase][storeTreatments] Upserted %lld treatments", v5, 0xCu);
    MEMORY[0x23191EAE0](v5, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_230E49980()
{
  sub_230D1CE3C(*(v0 + 544));

  return MEMORY[0x2822009F8](sub_230E499E8, 0, 0);
}

uint64_t sub_230E499E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230E49A80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_19;
  }

  v4 = sub_230DA41A0(0x6E65644961657261, 0xEE00726569666974);
  if ((v5 & 1) == 0)
  {
    goto LABEL_19;
  }

  v6 = *(a1 + 56) + 24 * v4;
  v7 = *(v6 + 8);
  v8 = *(v6 + 16) != 3 || v7 == 0;
  if (v8 || !*(a1 + 16))
  {
    goto LABEL_19;
  }

  v9 = *v6;

  v10 = sub_230DA41A0(0x696669746E656469, 0xEA00000000007265);
  if ((v11 & 1) == 0)
  {
    goto LABEL_17;
  }

  v12 = *(a1 + 56) + 24 * v10;
  if (*(v12 + 16) != 3)
  {
    goto LABEL_17;
  }

  v14 = *v12;
  v13 = *(v12 + 8);
  if (!v13)
  {
    sub_230D0DCD8(*v12, 0, 3);
    goto LABEL_17;
  }

  if (*(a1 + 16))
  {

    v15 = sub_230DA41A0(0x74656B637562, 0xE600000000000000);
    if (v16)
    {
      v17 = *(a1 + 56) + 24 * v15;
      if (*(v17 + 16) == 2)
      {
        if (*(v17 + 8))
        {
LABEL_15:
          sub_230D0F474(v14, v13, 3);
          goto LABEL_17;
        }

        if (*(a1 + 16))
        {
          v30 = *v17;
          v31 = sub_230DA41A0(0x7461447472617473, 0xE900000000000065);
          if (v32)
          {
            v33 = *(a1 + 56) + 24 * v31;
            if (*(v33 + 16) == 2)
            {
              if (*(v33 + 8))
              {
                goto LABEL_15;
              }

              if (*(a1 + 16))
              {
                v34 = sub_230DA41A0(0x65746144646E65, 0xE700000000000000);
                if (v35)
                {
                  v36 = *(a1 + 56) + 24 * v34;
                  if (*(v36 + 16) == 2)
                  {
                    if ((*(v36 + 8) & 1) == 0 && (v30 + 2) < 3)
                    {
                      v37 = type metadata accessor for Treatment(0);
                      sub_230E688C0();
                      sub_230E688C0();
                      *a2 = v9;
                      *(a2 + 8) = v7;
                      *(a2 + 16) = v14;
                      *(a2 + 24) = v13;
                      *(a2 + 32) = -v30;
                      v25 = *(*(v37 - 8) + 56);
                      v27 = a2;
                      v28 = 0;
                      v26 = v37;
                      goto LABEL_24;
                    }

                    goto LABEL_15;
                  }
                }
              }
            }
          }
        }
      }
    }

    sub_230D0F474(v9, v7, 3);
    v18 = v14;
    v19 = v13;
    goto LABEL_18;
  }

LABEL_17:
  v18 = v9;
  v19 = v7;
LABEL_18:
  sub_230D0F474(v18, v19, 3);
LABEL_19:
  if (qword_27DB5A4B0 != -1)
  {
    swift_once();
  }

  v20 = sub_230E68D80();
  __swift_project_value_buffer(v20, qword_27DB80BC0);
  v21 = sub_230E68D60();
  v22 = sub_230E69400();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_230D02000, v21, v22, "[SystemDatabase][parseTreatmentFromRow] Failed to parse treatment row", v23, 2u);
    MEMORY[0x23191EAE0](v23, -1, -1);
  }

  v24 = type metadata accessor for Treatment(0);
  v25 = *(*(v24 - 8) + 56);
  v26 = v24;
  v27 = a2;
  v28 = 1;
LABEL_24:

  return v25(v27, v28, 1, v26);
}

uint64_t sub_230E49E20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D920, &qword_230E7F620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_230E49E88(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A6A8, &unk_230E6B3C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_230E49F94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A958, &qword_230E6B9F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_230E4A0DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D960, &qword_230E7F678);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_230E4A1E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B2E0, &qword_230E6F660);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_230E4A2E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B2D8, &qword_230E6F658);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_230E4A3E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D930, &qword_230E7F640);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_230E4A4EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B310, &qword_230E6F690);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_230E4A61C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_230E4A750(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B2F8, &qword_230E6F678);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 168);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[168 * v8])
    {
      memmove(v12, v13, 168 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_230E4A87C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B300, &qword_230E6F680);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B308, &qword_230E6F688);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_230E4A9C4(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D958, &qword_230E7F670);
  v10 = *(type metadata accessor for Treatment(0) - 8);
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
  v15 = *(type metadata accessor for Treatment(0) - 8);
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

char *sub_230E4AB9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B2C8, &unk_230E6F640);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

char *sub_230E4AC90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D950, &qword_230E7F660);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_230E4ADB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAA8, &qword_230E72358);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

void *sub_230E4AEA4(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D940, &qword_230E7F650);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[15 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 120 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D948, &qword_230E7F658);
    swift_arrayInitWithCopy();
  }

  return v10;
}