uint64_t sub_230D1811C()
{
  v1 = *(*v0 + 120);

  return MEMORY[0x2822009F8](sub_230D18258, v1, 0);
}

uint64_t sub_230D18258(__n128 a1)
{
  sub_230E4B7F4(*(v1 + 564), *(v1 + 160), *(v1 + 560) != 0, *(v1 + 96), *(v1 + 152));
  (*(*(v1 + 136) + 8))(*(v1 + 144), *(v1 + 128));
  v2 = *(v1 + 88);

  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_230D18330()
{
  v1 = *(*v0 + 120);

  return MEMORY[0x2822009F8](sub_230D1D300, v1, 0);
}

uint64_t sub_230D1846C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 112) = a4;
  *(v5 + 120) = v4;
  *(v5 + 96) = a2;
  *(v5 + 104) = a3;
  *(v5 + 564) = a1;
  v6 = sub_230E68D80();
  *(v5 + 128) = v6;
  *(v5 + 136) = *(v6 - 8);
  *(v5 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230D18560, v4, 0);
}

uint64_t sub_230D18560()
{
  v30 = v0;
  v29[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 96);
  sub_230E68D70();
  sub_230D1CDE0(v1, v0 + 16);
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  sub_230D1CE3C(v1);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 96);
    v5 = *(v0 + 564);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v29[0] = v7;
    *v6 = 136315650;
    LOBYTE(v28) = v5;
    v8 = RequestType.rawValue.getter();
    v10 = sub_230D7E620(v8, v9, v29);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_230D7E620(*(v4 + 1), *(v4 + 2), v29);
    *(v6 + 22) = 2080;
    v11 = *v4;
    *&v28 = 0x6C616E7265746E69;
    *(&v28 + 1) = 0xE90000000000002ELL;
    v27 = v11;
    v12 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v12);

    v13 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v29);

    *(v6 + 24) = v13;
    _os_log_impl(&dword_230D02000, v2, v3, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v14 = *(v0 + 96);
  v15 = *(v0 + 564);
  *(v0 + 56) = *(v14 + 24);
  v28 = *(v14 + 24);
  v27 = v15;
  LOBYTE(v29[0]) = *v14;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v16 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v27, v29);

  if (v16)
  {
    sub_230E68950();
    *(v0 + 152) = CFAbsoluteTimeGetCurrent();
    *(v0 + 184) = 0u;
    *(v0 + 200) = 0u;
    *(v0 + 216) = 0u;
    *(v0 + 232) = 0u;
    *(v0 + 248) = 0u;
    *(v0 + 264) = 0u;
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
    *(v0 + 552) = 0;
    *(v0 + 556) = 93;
    v17 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 184), (v0 + 556));
    *(v0 + 560) = v17;
    v18 = 0.0;
    if (!v17)
    {
      v19 = *(v0 + 232);
      v20 = *(v0 + 304);
      v21 = __CFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        __break(1u);
      }

      v18 = vcvtd_n_f64_u64(v22, 0x14uLL);
    }

    *(v0 + 160) = v18;
    v26 = (*(v0 + 104) + **(v0 + 104));
    v23 = swift_task_alloc();
    *(v0 + 168) = v23;
    *v23 = v0;
    v24 = sub_230D189E8;
  }

  else
  {
    v26 = (*(v0 + 104) + **(v0 + 104));
    v23 = swift_task_alloc();
    *(v0 + 176) = v23;
    *v23 = v0;
    v24 = sub_230D18330;
  }

  v23[1] = v24;

  return v26(v0 + 88);
}

uint64_t sub_230D189E8()
{
  v1 = *(*v0 + 120);

  return MEMORY[0x2822009F8](sub_230D18B24, v1, 0);
}

uint64_t sub_230D18B24(__n128 a1)
{
  sub_230E4BC68(*(v1 + 564), *(v1 + 160), *(v1 + 560) != 0, *(v1 + 96), *(v1 + 152));
  (*(*(v1 + 136) + 8))(*(v1 + 144), *(v1 + 128));
  v2 = *(v1 + 88);

  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_230D18BFC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 112) = a4;
  *(v5 + 120) = v4;
  *(v5 + 96) = a2;
  *(v5 + 104) = a3;
  *(v5 + 564) = a1;
  v6 = sub_230E68D80();
  *(v5 + 128) = v6;
  *(v5 + 136) = *(v6 - 8);
  *(v5 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230D18CF0, v4, 0);
}

uint64_t sub_230D18CF0()
{
  v30 = v0;
  v29[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 96);
  sub_230E68D70();
  sub_230D1CDE0(v1, v0 + 16);
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  sub_230D1CE3C(v1);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 96);
    v5 = *(v0 + 564);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v29[0] = v7;
    *v6 = 136315650;
    LOBYTE(v28) = v5;
    v8 = RequestType.rawValue.getter();
    v10 = sub_230D7E620(v8, v9, v29);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_230D7E620(*(v4 + 1), *(v4 + 2), v29);
    *(v6 + 22) = 2080;
    v11 = *v4;
    *&v28 = 0x6C616E7265746E69;
    *(&v28 + 1) = 0xE90000000000002ELL;
    v27 = v11;
    v12 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v12);

    v13 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v29);

    *(v6 + 24) = v13;
    _os_log_impl(&dword_230D02000, v2, v3, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v14 = *(v0 + 96);
  v15 = *(v0 + 564);
  *(v0 + 56) = *(v14 + 24);
  v28 = *(v14 + 24);
  v27 = v15;
  LOBYTE(v29[0]) = *v14;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v16 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v27, v29);

  if (v16)
  {
    sub_230E68950();
    *(v0 + 152) = CFAbsoluteTimeGetCurrent();
    *(v0 + 184) = 0u;
    *(v0 + 200) = 0u;
    *(v0 + 216) = 0u;
    *(v0 + 232) = 0u;
    *(v0 + 248) = 0u;
    *(v0 + 264) = 0u;
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
    *(v0 + 552) = 0;
    *(v0 + 556) = 93;
    v17 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 184), (v0 + 556));
    *(v0 + 560) = v17;
    v18 = 0.0;
    if (!v17)
    {
      v19 = *(v0 + 232);
      v20 = *(v0 + 304);
      v21 = __CFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        __break(1u);
      }

      v18 = vcvtd_n_f64_u64(v22, 0x14uLL);
    }

    *(v0 + 160) = v18;
    v26 = (*(v0 + 104) + **(v0 + 104));
    v23 = swift_task_alloc();
    *(v0 + 168) = v23;
    *v23 = v0;
    v24 = sub_230D19178;
  }

  else
  {
    v26 = (*(v0 + 104) + **(v0 + 104));
    v23 = swift_task_alloc();
    *(v0 + 176) = v23;
    *v23 = v0;
    v24 = sub_230D1938C;
  }

  v23[1] = v24;

  return v26(v0 + 88);
}

uint64_t sub_230D19178()
{
  v1 = *(*v0 + 120);

  return MEMORY[0x2822009F8](sub_230D192B4, v1, 0);
}

uint64_t sub_230D192B4(__n128 a1)
{
  sub_230E4C9C4(*(v1 + 564), *(v1 + 160), *(v1 + 560) != 0, *(v1 + 96), *(v1 + 152));
  (*(*(v1 + 136) + 8))(*(v1 + 144), *(v1 + 128));
  v2 = *(v1 + 88);

  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_230D1938C()
{
  v1 = *(*v0 + 120);

  return MEMORY[0x2822009F8](sub_230D194C8, v1, 0);
}

uint64_t sub_230D194C8()
{
  (*(v0[17] + 8))(v0[18], v0[16]);
  v1 = v0[11];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_230D19580(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 112) = a4;
  *(v5 + 120) = v4;
  *(v5 + 96) = a2;
  *(v5 + 104) = a3;
  *(v5 + 564) = a1;
  v6 = sub_230E68D80();
  *(v5 + 128) = v6;
  *(v5 + 136) = *(v6 - 8);
  *(v5 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230D19674, v4, 0);
}

uint64_t sub_230D19674()
{
  v30 = v0;
  v29[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 96);
  sub_230E68D70();
  sub_230D1CDE0(v1, v0 + 16);
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  sub_230D1CE3C(v1);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 96);
    v5 = *(v0 + 564);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v29[0] = v7;
    *v6 = 136315650;
    LOBYTE(v28) = v5;
    v8 = RequestType.rawValue.getter();
    v10 = sub_230D7E620(v8, v9, v29);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_230D7E620(*(v4 + 1), *(v4 + 2), v29);
    *(v6 + 22) = 2080;
    v11 = *v4;
    *&v28 = 0x6C616E7265746E69;
    *(&v28 + 1) = 0xE90000000000002ELL;
    v27 = v11;
    v12 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v12);

    v13 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v29);

    *(v6 + 24) = v13;
    _os_log_impl(&dword_230D02000, v2, v3, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v14 = *(v0 + 96);
  v15 = *(v0 + 564);
  *(v0 + 56) = *(v14 + 24);
  v28 = *(v14 + 24);
  v27 = v15;
  LOBYTE(v29[0]) = *v14;
  sub_230D1CE90(v0 + 56, v0 + 72);
  v16 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v27, v29);

  if (v16)
  {
    sub_230E68950();
    *(v0 + 152) = CFAbsoluteTimeGetCurrent();
    *(v0 + 184) = 0u;
    *(v0 + 200) = 0u;
    *(v0 + 216) = 0u;
    *(v0 + 232) = 0u;
    *(v0 + 248) = 0u;
    *(v0 + 264) = 0u;
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
    *(v0 + 552) = 0;
    *(v0 + 556) = 93;
    v17 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 184), (v0 + 556));
    *(v0 + 560) = v17;
    v18 = 0.0;
    if (!v17)
    {
      v19 = *(v0 + 232);
      v20 = *(v0 + 304);
      v21 = __CFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        __break(1u);
      }

      v18 = vcvtd_n_f64_u64(v22, 0x14uLL);
    }

    *(v0 + 160) = v18;
    v26 = (*(v0 + 104) + **(v0 + 104));
    v23 = swift_task_alloc();
    *(v0 + 168) = v23;
    *v23 = v0;
    v24 = sub_230D19AFC;
  }

  else
  {
    v26 = (*(v0 + 104) + **(v0 + 104));
    v23 = swift_task_alloc();
    *(v0 + 176) = v23;
    *v23 = v0;
    v24 = sub_230D18330;
  }

  v23[1] = v24;

  return v26(v0 + 88);
}

uint64_t sub_230D19AFC()
{
  v1 = *(*v0 + 120);

  return MEMORY[0x2822009F8](sub_230D19C38, v1, 0);
}

uint64_t sub_230D19C38(__n128 a1)
{
  sub_230E4D720(*(v1 + 564), *(v1 + 160), *(v1 + 560) != 0, *(v1 + 96), *(v1 + 152));
  (*(*(v1 + 136) + 8))(*(v1 + 144), *(v1 + 128));
  v2 = *(v1 + 88);

  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_230D19D10(uint64_t a1, uint64_t a2)
{
  *(v3 + 96) = a1;
  *(v3 + 104) = v2;
  v4 = *(a2 + 16);
  *(v3 + 112) = *a2;
  *(v3 + 128) = v4;
  *(v3 + 144) = *(a2 + 32);
  return MEMORY[0x2822009F8](sub_230D19D40, v2, 0);
}

uint64_t sub_230D19D40()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    v3 = *(v0 + 136);
    v2 = *(v0 + 144);
    v4 = *(v0 + 112);
    v5 = *(v0 + 120);
    *(v0 + 160) = v1;
    *(v0 + 168) = v2;
    *(v0 + 16) = v4;
    *(v0 + 24) = v5;
    *(v0 + 32) = v1;
    *(v0 + 40) = v3 & 1;
    *(v0 + 41) = BYTE1(v3);
    *(v0 + 48) = v2;
    v6 = swift_task_alloc();
    *(v0 + 176) = v6;
    *(v6 + 16) = *(v0 + 96);
    *(v6 + 32) = v0 + 16;
    sub_230D0585C(v4, v5, v1, v3, v2);
    v7 = swift_task_alloc();
    *(v0 + 184) = v7;
    *v7 = v0;
    v7[1] = sub_230D1A180;

    return sub_230D17BA0(7, v0 + 16, &unk_230E6C100, v6);
  }

  else
  {
    *(v0 + 192) = 7;
    v9 = swift_task_alloc();
    *(v0 + 152) = v9;
    *v9 = v0;
    v9[1] = sub_230D19F20;

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 192), 0, 0);
  }
}

uint64_t sub_230D19F20()
{
  v1 = *(*v0 + 104);

  return MEMORY[0x2822009F8](sub_230D1A030, v1, 0);
}

uint64_t sub_230D1A030()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v6 = *(v0 + 88);
  *(v0 + 160) = v3;
  *(v0 + 168) = v6;
  v8 = *(v0 + 136);
  v7 = *(v0 + 144);
  v10 = *(v0 + 120);
  v9 = *(v0 + 128);
  *(v0 + 16) = v1;
  v11 = *(v0 + 112);
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v6;
  v12 = swift_task_alloc();
  *(v0 + 176) = v12;
  *(v12 + 16) = *(v0 + 96);
  *(v12 + 32) = v0 + 16;
  sub_230D0585C(v11, v10, v9, v8, v7);
  v13 = swift_task_alloc();
  *(v0 + 184) = v13;
  *v13 = v0;
  v13[1] = sub_230D1A180;

  return sub_230D17BA0(7, v0 + 16, &unk_230E6C100, v12);
}

uint64_t sub_230D1A180(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_230D1A2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[34] = a3;
  v4[35] = a4;
  v4[32] = a1;
  v4[33] = a2;
  return MEMORY[0x2822009F8](sub_230D1A2FC, a3, 0);
}

uint64_t sub_230D1A2FC()
{
  v1 = *(v0 + 264);
  if (*(v1 + 3))
  {
    sub_230D1D01C(*(v0 + 264), v0 + 56);
    if (!*(v0 + 80))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = *v1;
    v14 = v1[1];
    *(v0 + 88) = *(v1 + 4);
    *(v0 + 72) = v14;
    *(v0 + 56) = v13;
    if (!*(v0 + 80))
    {
LABEL_3:
      v2 = *(v1 + 3);
      if (v2)
      {
LABEL_4:
        v3 = sub_230D1D01C(*(v0 + 264), v0 + 176);
        v6 = *(v0 + 200);
        if (!v6)
        {
          __break(1u);
          return MEMORY[0x2822009F8](v3, v4, v5);
        }

        v7 = *(v0 + 208);
        v8 = __swift_project_boxed_opaque_existential_1((v0 + 176), *(v0 + 200));
        *(v0 + 248) = sub_230E05CFC(sub_230D1D2E0, 0, v6, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v7, MEMORY[0x277D84AC0], v8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
        sub_230D1D1C4(&qword_281565F50, &unk_27DB5D8F0, &unk_230E70E80, MEMORY[0x277D83958]);
        v9 = sub_230E68FF0();
        v11 = v10;

        __swift_destroy_boxed_opaque_existential_1((v0 + 176));
        MEMORY[0x23191DA00](v9, v11);

        MEMORY[0x23191DA00](41, 0xE100000000000000);
        v2 = 0x28204E492079656BLL;
        v12 = 0xE800000000000000;
LABEL_13:
        *(v0 + 288) = v2;
        *(v0 + 296) = v12;
        v17 = *(v0 + 272);
        v18 = *(v0 + 280);
        swift_bridgeObjectRelease_n();
        v19 = *(v17 + 112);
        *(v0 + 304) = v19;
        sub_230D1CDE0(v18, v0 + 96);
        v3 = sub_230D1A59C;
        v4 = v19;
        v5 = 0;

        return MEMORY[0x2822009F8](v3, v4, v5);
      }

LABEL_12:
      v12 = 0;
      goto LABEL_13;
    }
  }

  sub_230D1D080((v0 + 56), v0 + 16);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  if ((sub_230E69390() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v2 = *(v1 + 3);
    if (v2)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  **(v0 + 256) = 0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v15 = *(v0 + 8);

  return v15();
}

void sub_230D1A59C()
{
  sub_230D1CDE0(*(v0 + 280), v0 + 136);

  v1 = swift_task_alloc();
  *(v0 + 312) = v1;
  *v1 = v0;
  v1[1] = sub_230D1A69C;

  JUMPOUT(0x230D71ACCLL);
}

uint64_t sub_230D1A69C()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 304);
  sub_230D1CE3C(*(v2 + 280));
  if (v0)
  {
    v4 = sub_230D1A880;
  }

  else
  {
    v4 = sub_230D1A7E4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D1A7E4()
{
  v1 = *(v0 + 272);
  sub_230D1CE3C(*(v0 + 280));

  return MEMORY[0x2822009F8](sub_230D1A860, v1, 0);
}

uint64_t sub_230D1A880()
{
  v1 = *(v0 + 272);
  sub_230D1CE3C(*(v0 + 280));

  return MEMORY[0x2822009F8](sub_230D1A8E8, v1, 0);
}

uint64_t sub_230D1A8E8()
{
  v1 = v0[40];
  v2 = v0[32];

  sub_230E69540();
  v0[27] = 0;
  v0[28] = 0xE000000000000000;
  MEMORY[0x23191DA00](0xD000000000000023, 0x8000000230E80E20);
  v0[30] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
  sub_230E695F0();
  sub_230E68950();

  MEMORY[0x23191E910](v1);
  *v2 = 0;
  v3 = v0[1];

  return v3();
}

uint64_t sub_230D1AA14@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x23191DA00](*a1, a1[1]);
  result = MEMORY[0x23191DA00](39, 0xE100000000000000);
  *a2 = 39;
  a2[1] = 0xE100000000000000;
  return result;
}

uint64_t sub_230D1AA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v5[17] = a2;
  v5[18] = a3;
  v5[16] = a1;
  return MEMORY[0x2822009F8](sub_230D1AAA8, a4, 0);
}

uint64_t sub_230D1AAA8()
{
  v2 = v0[19];
  v1 = v0[20];
  MEMORY[0x23191DA00](v0[17], v0[18]);
  MEMORY[0x23191DA00](10021, 0xE200000000000000);
  v0[21] = 0x454B494C2079656BLL;
  v0[22] = 0xEA00000000002720;
  swift_bridgeObjectRelease_n();
  v3 = *(v2 + 112);
  v0[23] = v3;
  sub_230D1CDE0(v1, (v0 + 2));

  return MEMORY[0x2822009F8](sub_230D1AB74, v3, 0);
}

void sub_230D1AB74()
{
  sub_230D1CDE0(*(v0 + 160), v0 + 56);

  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *v1 = v0;
  v1[1] = sub_230D1AC78;

  JUMPOUT(0x230D71ACCLL);
}

uint64_t sub_230D1AC78()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  *(*v1 + 200) = v0;

  sub_230D1CE3C(v3);
  v4 = *(v2 + 184);
  if (v0)
  {
    v5 = sub_230D1AE5C;
  }

  else
  {
    v5 = sub_230D1ADC0;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_230D1ADC0()
{
  v1 = *(v0 + 152);
  sub_230D1CE3C(*(v0 + 160));

  return MEMORY[0x2822009F8](sub_230D1AE3C, v1, 0);
}

uint64_t sub_230D1AE5C()
{
  v1 = *(v0 + 152);
  sub_230D1CE3C(*(v0 + 160));

  return MEMORY[0x2822009F8](sub_230D1AEC4, v1, 0);
}

uint64_t sub_230D1AEC4()
{
  v1 = *(v0 + 200);

  sub_230E69540();
  *(v0 + 96) = 0;
  *(v0 + 104) = 0xE000000000000000;
  MEMORY[0x23191DA00](0xD000000000000023, 0x8000000230E80E20);
  *(v0 + 120) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
  sub_230E695F0();
  sub_230E68950();

  MEMORY[0x23191E910](v1);
  **(v0 + 128) = 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_230D1AFE8(uint64_t a1)
{
  *(v2 + 96) = v1;
  v3 = *(a1 + 16);
  *(v2 + 104) = *a1;
  *(v2 + 120) = v3;
  *(v2 + 136) = *(a1 + 32);
  return MEMORY[0x2822009F8](sub_230D1B01C, v1, 0);
}

uint64_t sub_230D1B01C()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    v3 = *(v0 + 128);
    v2 = *(v0 + 136);
    v5 = *(v0 + 104);
    v4 = *(v0 + 112);
    *(v0 + 152) = v1;
    *(v0 + 160) = v2;
    *(v0 + 16) = v5;
    *(v0 + 24) = v4;
    *(v0 + 32) = v1;
    *(v0 + 40) = v3 & 1;
    *(v0 + 41) = BYTE1(v3);
    *(v0 + 48) = v2;

    sub_230D0585C(v5, v4, v1, v3, v2);
    v6 = swift_task_alloc();
    *(v0 + 168) = v6;
    *v6 = v0;
    v6[1] = sub_230D1B424;

    return (sub_230D81570)(7, v0 + 16);
  }

  else
  {
    *(v0 + 176) = 7;
    v8 = swift_task_alloc();
    *(v0 + 144) = v8;
    *v8 = v0;
    v8[1] = sub_230D1B1DC;

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 176), 0, 0);
  }
}

uint64_t sub_230D1B1DC()
{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](sub_230D1B2EC, v1, 0);
}

uint64_t sub_230D1B2EC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v6 = *(v0 + 88);
  *(v0 + 152) = v3;
  *(v0 + 160) = v6;
  v8 = *(v0 + 128);
  v7 = *(v0 + 136);
  v10 = *(v0 + 112);
  v9 = *(v0 + 120);
  *(v0 + 16) = v1;
  v11 = *(v0 + 104);
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v6;

  sub_230D0585C(v11, v10, v9, v8, v7);
  v12 = swift_task_alloc();
  *(v0 + 168) = v12;
  *v12 = v0;
  v12[1] = sub_230D1B424;

  return (sub_230D81570)(7, v0 + 16);
}

uint64_t sub_230D1B424(uint64_t a1)
{
  v5 = *v1;

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_230D1B584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  v5 = sub_230E68910();
  v3[21] = v5;
  v3[22] = *(v5 - 8);
  v3[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230D1B64C, a2, 0);
}

uint64_t sub_230D1B64C()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  sub_230E68900();
  sub_230E688D0();
  v5 = v4;
  v6 = v4;
  v7 = (*(v2 + 8))(v1, v3);
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

  v11 = v0[19];
  v10 = v0[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A6A8, &unk_230E6B3C0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_230E6C070;
  *(v12 + 32) = 0xD00000000000001ALL;
  *(v12 + 40) = 0x8000000230E80E50;
  v0[14] = v5;
  v13 = sub_230E69890();
  MEMORY[0x23191DA00](v13);

  *(v12 + 48) = 0xD000000000000011;
  *(v12 + 56) = 0x8000000230E80E70;
  v0[15] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
  sub_230D1D1C4(&qword_281565F50, &unk_27DB5D8F0, &unk_230E70E80, MEMORY[0x277D83958]);
  v14 = sub_230E68FF0();
  v16 = v15;

  v0[24] = v14;
  v0[25] = v16;
  swift_bridgeObjectRelease_n();
  v17 = *(v11 + 112);
  v0[26] = v17;
  sub_230D1CDE0(v10, (v0 + 2));
  v7 = sub_230D1B884;
  v8 = v17;
  v9 = 0;

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_230D1B884()
{
  sub_230D1CDE0(*(v0 + 160), v0 + 56);

  v1 = swift_task_alloc();
  *(v0 + 216) = v1;
  *v1 = v0;
  v1[1] = sub_230D1B98C;

  JUMPOUT(0x230D71ACCLL);
}

uint64_t sub_230D1B98C()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  *(*v1 + 224) = v0;

  sub_230D1CE3C(v3);
  v4 = *(v2 + 208);
  if (v0)
  {
    v5 = sub_230D1BBBC;
  }

  else
  {
    v5 = sub_230D1BAD4;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_230D1BAD4()
{
  v1 = *(v0 + 152);
  sub_230D1CE3C(*(v0 + 160));

  return MEMORY[0x2822009F8](sub_230D1BB50, v1, 0);
}

uint64_t sub_230D1BB50()
{
  **(v0 + 144) = *(v0 + 128);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230D1BBBC()
{
  v1 = *(v0 + 152);
  sub_230D1CE3C(*(v0 + 160));

  return MEMORY[0x2822009F8](sub_230D1BC24, v1, 0);
}

uint64_t sub_230D1BC24()
{
  v1 = *(v0 + 224);

  sub_230E69540();
  *(v0 + 96) = 0;
  *(v0 + 104) = 0xE000000000000000;
  MEMORY[0x23191DA00](0xD00000000000002ALL, 0x8000000230E80E90);
  *(v0 + 136) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
  sub_230E695F0();
  sub_230E68950();

  MEMORY[0x23191E910](v1);
  **(v0 + 144) = 0;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t KVDatabaseClient.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t KVDatabaseClient.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_230D1BDBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5ABF0, &qword_230E71DB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_230D1BE24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_230D1BF00;

  return sub_230D14A5C(a1, v7, v8, v9, v10, v4, v5, v6);
}

uint64_t sub_230D1BF00()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_230D1BFF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_230D1D2F8;

  return sub_230D1688C(a1, v7, v8, v9, v10, v4, v5, v6);
}

uint64_t sub_230D1C0F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_230D1D2F8;

  return sub_230D1A2D8(a1, v4, v5, v6);
}

uint64_t sub_230D1C1A8(uint64_t a1)
{
  result = sub_230D1C1EC(&qword_27DB5AC08, &protocol conformance descriptor for KVDatabaseClient);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_230D1C1EC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for KVDatabaseClient();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of KVDatabaseClient.set<A>(_:_:expiration:requestContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = (*(*v8 + 120) + **(*v8 + 120));
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = sub_230D05B20;

  return v20(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of KVDatabaseClient.set<A>(_:expiration:requestContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 128) + **(*v6 + 128));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_230D05B20;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of KVDatabaseClient.set<A>(_:expirations:requestContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 136) + **(*v6 + 136));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_230D1D2FC;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of KVDatabaseClient.get<A>(_:requestContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = (*(*v7 + 144) + **(*v7 + 144));
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_230D1BF00;

  return v18(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of KVDatabaseClient.get<A>(_:fallback:requestContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = (*(*v8 + 152) + **(*v8 + 152));
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = sub_230D1D2F8;

  return v20(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of KVDatabaseClient.get<A>(_:fallbacks:requestContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 160) + **(*v6 + 160));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_230D1D374;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of KVDatabaseClient.delete(_:requestContext:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 168) + **(*v2 + 168));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_230D1D374;

  return v8(a1, a2);
}

uint64_t dispatch thunk of KVDatabaseClient.deleteExpired(requestContext:)(uint64_t a1)
{
  v6 = (*(*v1 + 184) + **(*v1 + 184));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_230D1CCE4;

  return v6(a1);
}

uint64_t sub_230D1CCE4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_230D1CEEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D8C0, &qword_230E6C210);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_230D1CF5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SQLDatabaseConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_230D1CFC0(uint64_t a1)
{
  v2 = type metadata accessor for SQLDatabaseConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_230D1D01C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_230D1D080(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_230D1D1C4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_230D1D20C(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_230D0DCD8(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_230D1D26C()
{

  return sub_230D12320();
}

uint64_t sub_230D1D300()
{

  return sub_230D194C8();
}

uint64_t sub_230D1D378()
{

  return sub_230D12E10();
}

uint64_t ServicesIntelligenceProvider.getKVDatabaseClient(domain:dataClass:requestContext:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  *(v4 + 104) = *a3;
  *(v4 + 96) = v3;
  *(v4 + 177) = *a1;
  *(v4 + 120) = v5;
  *(v4 + 136) = *(a3 + 32);
  return MEMORY[0x2822009F8](sub_230D1D428, v3, 0);
}

uint64_t sub_230D1D428()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    v3 = *(v0 + 128);
    v2 = *(v0 + 136);
    v5 = *(v0 + 104);
    v4 = *(v0 + 112);
    *(v0 + 152) = v1;
    *(v0 + 160) = v2;
    *(v0 + 16) = v5;
    *(v0 + 24) = v4;
    *(v0 + 32) = v1;
    *(v0 + 40) = v3 & 1;
    *(v0 + 41) = BYTE1(v3);
    *(v0 + 48) = v2;

    sub_230D0585C(v5, v4, v1, v3, v2);
    v6 = swift_task_alloc();
    *(v0 + 168) = v6;
    *v6 = v0;
    v6[1] = sub_230D0571C;

    return (sub_230D72678)(15, v0 + 16);
  }

  else
  {
    *(v0 + 176) = 15;
    v8 = swift_task_alloc();
    *(v0 + 144) = v8;
    *v8 = v0;
    v8[1] = sub_230D1D5D8;

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 176), 0, 0);
  }
}

uint64_t sub_230D1D5D8()
{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](sub_230D1D6E8, v1, 0);
}

uint64_t sub_230D1D6E8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v6 = *(v0 + 88);
  *(v0 + 152) = v3;
  *(v0 + 160) = v6;
  v7 = *(v0 + 128);
  v8 = *(v0 + 136);
  v10 = *(v0 + 112);
  v9 = *(v0 + 120);
  *(v0 + 16) = v1;
  v11 = *(v0 + 104);
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v6;

  sub_230D0585C(v11, v10, v9, v7, v8);
  v12 = swift_task_alloc();
  *(v0 + 168) = v12;
  *v12 = v0;
  v12[1] = sub_230D0571C;

  return (sub_230D72678)(15, v0 + 16);
}

uint64_t sub_230D1D808(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 80) = a2;
  *(v3 + 64) = a1;
  *(v3 + 72) = a3;
  return MEMORY[0x2822009F8](sub_230D1D82C, a3, 0);
}

uint64_t sub_230D1D82C()
{
  v13 = v0;
  v1 = *(v0 + 72);
  swift_beginAccess();
  v2 = *(v1 + 120);
  if (*(v2 + 16))
  {
    v3 = *(v0 + 80);

    v4 = sub_230DB4B4C(v3, 1852399981, 0xE400000000000000, 2);
    if (v5)
    {
      v6 = v4;

      v7 = *(*(v2 + 56) + 8 * v6);

      goto LABEL_6;
    }
  }

  v12[0] = *(v0 + 80);
  type metadata accessor for KVDatabaseClient();
  swift_allocObject();
  v7 = sub_230D13900(v12);
  v8 = *(v0 + 80);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v12 = *(v1 + 120);
  *(v1 + 120) = 0x8000000000000000;
  sub_230E1B8F0(v7, v8, 1852399981, 0xE400000000000000, 2, isUniquelyReferenced_nonNull_native);

  *(v1 + 120) = *v12;
  swift_endAccess();
LABEL_6:
  **(v0 + 64) = v7;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t ServicesIntelligenceProvider.getKVDatabaseClient(dataClass:requestContext:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 56) = v2;
  v4 = *(a2 + 16);
  *(v3 + 64) = *a2;
  *(v3 + 80) = v4;
  *(v3 + 96) = *(a2 + 32);
  return MEMORY[0x2822009F8](sub_230D1DA0C, v2, 0);
}

uint64_t sub_230D1DA0C()
{
  sub_230DCB5D4((v0 + 120));
  v1 = *(v0 + 96);
  *(v0 + 121) = *(v0 + 120);
  v2 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = v2;
  *(v0 + 48) = v1;
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_230D1DB18;

  return ServicesIntelligenceProvider.getKVDatabaseClient(domain:dataClass:requestContext:)((v0 + 121), v4, v0 + 16);
}

uint64_t sub_230D1DB18(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v6 = *(v4 + 56);

    return MEMORY[0x2822009F8](sub_230D1DC68, v6, 0);
  }

  else
  {
    v7 = *(v5 + 8);

    return v7(a1);
  }
}

uint64_t sub_230D1DC80(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 240) = a3;
  *(v4 + 248) = a4;
  *(v4 + 813) = a2;
  *(v4 + 232) = a1;
  v6 = sub_230E68D80();
  *(v4 + 256) = v6;
  *(v4 + 264) = *(v6 - 8);
  *(v4 + 272) = swift_task_alloc();
  v7 = sub_230E68860();
  *(v4 + 280) = v7;
  *(v4 + 288) = *(v7 - 8);
  *(v4 + 296) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230D1DDD4, a3, 0);
}

uint64_t sub_230D1DDD4()
{
  KVDatabaseConfiguration.path.getter(*(v0 + 296));
  v1 = *(v0 + 248);
  sub_230D1CDE0(v1, v0 + 16);
  sub_230D1CDE0(v1, v0 + 56);

  v2 = swift_task_alloc();
  *(v0 + 304) = v2;
  *v2 = v0;
  v2[1] = sub_230D1DF64;
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 813);

  return sub_230D72678(15, v3, v4, v5, v4);
}

uint64_t sub_230D1DF64(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 312) = a1;
  *(v4 + 320) = v1;

  v5 = *(v3 + 248);
  v6 = *(v3 + 240);
  sub_230D1CE3C(v5);
  if (v1)
  {
    v7 = sub_230D1E710;
  }

  else
  {
    v7 = sub_230D1E0E0;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_230D1E0E0()
{
  v1 = *(v0 + 312);
  sub_230D1CE3C(*(v0 + 248));

  return MEMORY[0x2822009F8](sub_230D1E178, v1, 0);
}

uint64_t sub_230D1E178()
{
  v1 = *(v0 + 312);
  v2 = *(v1 + 112);
  *(v0 + 328) = v2;
  *(v0 + 812) = *(v1 + 120);
  *(v0 + 336) = sub_230D0CE24();

  return MEMORY[0x2822009F8](sub_230D1E22C, v2, 0);
}

uint64_t sub_230D1E22C()
{
  v31 = v0;
  v30[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 336);
  v2 = v1[2];
  *(v0 + 344) = v2;
  if (v2)
  {
    v3 = *(v0 + 248);
    *(v0 + 176) = *(v3 + 24);
    *(v0 + 814) = *v3;
    *(v0 + 815) = *(v0 + 176);
    *(v0 + 352) = 0;
    v5 = v1[4];
    v4 = v1[5];
    *(v0 + 360) = v4;
    v6 = v1[6];
    *(v0 + 368) = v6;

    sub_230D1CDE0(v3, v0 + 96);

    sub_230E68D70();
    sub_230D1CDE0(v3, v0 + 136);
    v7 = sub_230E68D60();
    v8 = sub_230E693E0();
    sub_230D1CE3C(v3);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 248);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v30[0] = v11;
      *v10 = 136315650;
      *(v10 + 4) = sub_230D7E620(0x5153657461657263, 0xEE00656C6261544CLL, v30);
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_230D7E620(*(v9 + 8), *(v9 + 16), v30);
      *(v10 + 22) = 2080;
      *(v0 + 208) = 0x6C616E7265746E69;
      *(v0 + 216) = 0xE90000000000002ELL;
      v12 = RequestType.rawValue.getter();
      MEMORY[0x23191DA00](v12);

      v13 = sub_230D7E620(*(v0 + 208), *(v0 + 216), v30);

      *(v10 + 24) = v13;
      _os_log_impl(&dword_230D02000, v7, v8, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v10, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23191EAE0](v11, -1, -1);
      MEMORY[0x23191EAE0](v10, -1, -1);
    }

    if (*(v0 + 815))
    {
      v14 = *(v0 + 184);
      LOBYTE(v30[0]) = *(v0 + 814);
      v15 = RequestType.rawValue.getter();
      v17 = v16;
      sub_230D1CE90(v0 + 176, v0 + 192);
      LOBYTE(v15) = sub_230D33FDC(v15, v17, v14);

      if (v15)
      {
        sub_230D1F9CC(v0 + 176);
LABEL_12:
        sub_230E68950();
        *(v0 + 376) = CFAbsoluteTimeGetCurrent();
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
        *(v0 + 640) = 0u;
        *(v0 + 656) = 0u;
        *(v0 + 672) = 0u;
        *(v0 + 688) = 0u;
        *(v0 + 704) = 0u;
        *(v0 + 720) = 0u;
        *(v0 + 736) = 0u;
        *(v0 + 752) = 0u;
        *(v0 + 768) = 0u;
        *(v0 + 784) = 0u;
        *(v0 + 800) = 0;
        *(v0 + 804) = 93;
        v22 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 432), (v0 + 804));
        *(v0 + 808) = v22;
        v23 = 0.0;
        if (!v22)
        {
          v24 = *(v0 + 480);
          v25 = *(v0 + 552);
          v26 = __CFADD__(v24, v25);
          v27 = v24 + v25;
          if (v26)
          {
            __break(1u);
          }

          v23 = vcvtd_n_f64_u64(v27, 0x14uLL);
        }

        *(v0 + 400) = v23;
        *(v0 + 224) = 0;
        v20 = swift_task_alloc();
        *(v0 + 408) = v20;
        *v20 = v0;
        v21 = sub_230D1EA0C;
        goto LABEL_16;
      }

      v19 = *(v0 + 177);
      sub_230D1F9CC(v0 + 176);
      if (v19 >= 2)
      {
        goto LABEL_12;
      }
    }

    v20 = swift_task_alloc();
    *(v0 + 384) = v20;
    *v20 = v0;
    v21 = sub_230D1E8B4;
LABEL_16:
    v20[1] = v21;
    v28 = *(v0 + 328);

    return sub_230D3D310(v20, v28, v5, v4, v6);
  }

  v18 = *(v0 + 240);

  return MEMORY[0x2822009F8](sub_230D1E7DC, v18, 0);
}

uint64_t sub_230D1E710()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  sub_230D1CE3C(v0[31]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_230D1E7DC()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  v4 = v0[29];

  (*(v2 + 32))(v4, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_230D1E8B4()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  v3 = *(v2 + 328);
  if (v0)
  {
    v4 = sub_230D1F8C8;
  }

  else
  {
    v4 = sub_230D1F398;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D1EA0C()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  v3 = *(v2 + 328);
  if (v0)
  {
    v4 = sub_230D1F0C0;
  }

  else
  {
    v4 = sub_230D1EB64;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D1EB64(__n128 a1)
{
  v38 = v1;
  v37[1] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 264);
  v2 = *(v1 + 272);
  v5 = *(v1 + 248);
  v4 = *(v1 + 256);
  sub_230D34A54(5, *(v1 + 400), *(v1 + 808) != 0, v5, (v1 + 224), *(v1 + 376));
  (*(v3 + 8))(v2, v4);

  sub_230D1CE3C(v5);
  v7 = *(v1 + 344);
  v6 = *(v1 + 352);

  if (v6 + 1 == v7)
  {
    v8 = *(v1 + 240);

    return MEMORY[0x2822009F8](sub_230D1E7DC, v8, 0);
  }

  v9 = *(v1 + 352);
  *(v1 + 352) = v9 + 1;
  v10 = *(v1 + 248);
  v11 = (*(v1 + 336) + 24 * v9);
  v13 = v11[7];
  v12 = v11[8];
  *(v1 + 360) = v12;
  v14 = v11[9];
  *(v1 + 368) = v14;

  sub_230D1CDE0(v10, v1 + 96);

  sub_230E68D70();
  sub_230D1CDE0(v10, v1 + 136);
  v15 = sub_230E68D60();
  v16 = sub_230E693E0();
  sub_230D1CE3C(v10);
  if (os_log_type_enabled(v15, v16))
  {
    v17 = *(v1 + 248);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v37[0] = v19;
    *v18 = 136315650;
    *(v18 + 4) = sub_230D7E620(0x5153657461657263, 0xEE00656C6261544CLL, v37);
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_230D7E620(*(v17 + 8), *(v17 + 16), v37);
    *(v18 + 22) = 2080;
    *(v1 + 208) = 0x6C616E7265746E69;
    *(v1 + 216) = 0xE90000000000002ELL;
    v20 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v20);

    v21 = sub_230D7E620(*(v1 + 208), *(v1 + 216), v37);

    *(v18 + 24) = v21;
    _os_log_impl(&dword_230D02000, v15, v16, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v18, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v19, -1, -1);
    MEMORY[0x23191EAE0](v18, -1, -1);
  }

  if (*(v1 + 815))
  {
    v22 = *(v1 + 184);
    LOBYTE(v37[0]) = *(v1 + 814);
    v23 = RequestType.rawValue.getter();
    v25 = v24;
    sub_230D1CE90(v1 + 176, v1 + 192);
    LOBYTE(v23) = sub_230D33FDC(v23, v25, v22);

    if (v23)
    {
      sub_230D1F9CC(v1 + 176);
LABEL_12:
      sub_230E68950();
      *(v1 + 376) = CFAbsoluteTimeGetCurrent();
      *(v1 + 432) = 0u;
      *(v1 + 448) = 0u;
      *(v1 + 464) = 0u;
      *(v1 + 480) = 0u;
      *(v1 + 496) = 0u;
      *(v1 + 512) = 0u;
      *(v1 + 528) = 0u;
      *(v1 + 544) = 0u;
      *(v1 + 560) = 0u;
      *(v1 + 576) = 0u;
      *(v1 + 592) = 0u;
      *(v1 + 608) = 0u;
      *(v1 + 624) = 0u;
      *(v1 + 640) = 0u;
      *(v1 + 656) = 0u;
      *(v1 + 672) = 0u;
      *(v1 + 688) = 0u;
      *(v1 + 704) = 0u;
      *(v1 + 720) = 0u;
      *(v1 + 736) = 0u;
      *(v1 + 752) = 0u;
      *(v1 + 768) = 0u;
      *(v1 + 784) = 0u;
      *(v1 + 800) = 0;
      *(v1 + 804) = 93;
      v29 = task_info(*MEMORY[0x277D85F48], 0x16u, (v1 + 432), (v1 + 804));
      *(v1 + 808) = v29;
      v30 = 0.0;
      if (!v29)
      {
        v31 = *(v1 + 480);
        v32 = *(v1 + 552);
        v33 = __CFADD__(v31, v32);
        v34 = v31 + v32;
        if (v33)
        {
          __break(1u);
        }

        v30 = vcvtd_n_f64_u64(v34, 0x14uLL);
      }

      *(v1 + 400) = v30;
      *(v1 + 224) = 0;
      v27 = swift_task_alloc();
      *(v1 + 408) = v27;
      *v27 = v1;
      v28 = sub_230D1EA0C;
      goto LABEL_16;
    }

    v26 = *(v1 + 177);
    sub_230D1F9CC(v1 + 176);
    if (v26 >= 2)
    {
      goto LABEL_12;
    }
  }

  v27 = swift_task_alloc();
  *(v1 + 384) = v27;
  *v27 = v1;
  v28 = sub_230D1E8B4;
LABEL_16:
  v27[1] = v28;
  v35 = *(v1 + 328);

  return sub_230D3D310(v27, v35, v13, v12, v14);
}

uint64_t sub_230D1F0C0(uint64_t a1)
{
  v2 = *(v1 + 416);
  v3 = *(v1 + 400);
  v4 = *(v1 + 376);
  v5 = *(v1 + 264);
  v6 = *(v1 + 272);
  v8 = *(v1 + 248);
  v7 = *(v1 + 256);
  v9 = *(v1 + 808) != 0;
  *(v1 + 224) = v2;
  swift_willThrow();
  v10 = v2;
  sub_230D34A54(5, v3, v9, v8, (v1 + 224), v4);
  MEMORY[0x23191E910](v2);
  (*(v5 + 8))(v6, v7);

  sub_230D1CE3C(v8);
  *(v1 + 424) = *(v1 + 416);
  v11 = *(v1 + 312);

  return MEMORY[0x2822009F8](sub_230D1F240, v11, 0);
}

uint64_t sub_230D1F240()
{
  v1 = *(v0 + 240);

  return MEMORY[0x2822009F8](sub_230D1F2CC, v1, 0);
}

uint64_t sub_230D1F2CC()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_230D1F398()
{
  v34 = v0;
  v33[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 248);
  (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));

  sub_230D1CE3C(v1);
  v3 = *(v0 + 344);
  v2 = *(v0 + 352);

  if (v2 + 1 == v3)
  {
    v4 = *(v0 + 240);

    return MEMORY[0x2822009F8](sub_230D1E7DC, v4, 0);
  }

  v5 = *(v0 + 352);
  *(v0 + 352) = v5 + 1;
  v6 = *(v0 + 248);
  v7 = (*(v0 + 336) + 24 * v5);
  v9 = v7[7];
  v8 = v7[8];
  *(v0 + 360) = v8;
  v10 = v7[9];
  *(v0 + 368) = v10;

  sub_230D1CDE0(v6, v0 + 96);

  sub_230E68D70();
  sub_230D1CDE0(v6, v0 + 136);
  v11 = sub_230E68D60();
  v12 = sub_230E693E0();
  sub_230D1CE3C(v6);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v0 + 248);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v33[0] = v15;
    *v14 = 136315650;
    *(v14 + 4) = sub_230D7E620(0x5153657461657263, 0xEE00656C6261544CLL, v33);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_230D7E620(*(v13 + 8), *(v13 + 16), v33);
    *(v14 + 22) = 2080;
    *(v0 + 208) = 0x6C616E7265746E69;
    *(v0 + 216) = 0xE90000000000002ELL;
    v16 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v16);

    v17 = sub_230D7E620(*(v0 + 208), *(v0 + 216), v33);

    *(v14 + 24) = v17;
    _os_log_impl(&dword_230D02000, v11, v12, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v15, -1, -1);
    MEMORY[0x23191EAE0](v14, -1, -1);
  }

  if (*(v0 + 815))
  {
    v18 = *(v0 + 184);
    LOBYTE(v33[0]) = *(v0 + 814);
    v19 = RequestType.rawValue.getter();
    v21 = v20;
    sub_230D1CE90(v0 + 176, v0 + 192);
    LOBYTE(v19) = sub_230D33FDC(v19, v21, v18);

    if (v19)
    {
      sub_230D1F9CC(v0 + 176);
LABEL_12:
      sub_230E68950();
      *(v0 + 376) = CFAbsoluteTimeGetCurrent();
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
      *(v0 + 640) = 0u;
      *(v0 + 656) = 0u;
      *(v0 + 672) = 0u;
      *(v0 + 688) = 0u;
      *(v0 + 704) = 0u;
      *(v0 + 720) = 0u;
      *(v0 + 736) = 0u;
      *(v0 + 752) = 0u;
      *(v0 + 768) = 0u;
      *(v0 + 784) = 0u;
      *(v0 + 800) = 0;
      *(v0 + 804) = 93;
      v25 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 432), (v0 + 804));
      *(v0 + 808) = v25;
      v26 = 0.0;
      if (!v25)
      {
        v27 = *(v0 + 480);
        v28 = *(v0 + 552);
        v29 = __CFADD__(v27, v28);
        v30 = v27 + v28;
        if (v29)
        {
          __break(1u);
        }

        v26 = vcvtd_n_f64_u64(v30, 0x14uLL);
      }

      *(v0 + 400) = v26;
      *(v0 + 224) = 0;
      v23 = swift_task_alloc();
      *(v0 + 408) = v23;
      *v23 = v0;
      v24 = sub_230D1EA0C;
      goto LABEL_16;
    }

    v22 = *(v0 + 177);
    sub_230D1F9CC(v0 + 176);
    if (v22 >= 2)
    {
      goto LABEL_12;
    }
  }

  v23 = swift_task_alloc();
  *(v0 + 384) = v23;
  *v23 = v0;
  v24 = sub_230D1E8B4;
LABEL_16:
  v23[1] = v24;
  v31 = *(v0 + 328);

  return sub_230D3D310(v23, v31, v9, v8, v10);
}

uint64_t sub_230D1F8C8()
{
  v1 = v0[31];
  (*(v0[33] + 8))(v0[34], v0[32]);

  sub_230D1CE3C(v1);
  v0[53] = v0[49];
  v2 = v0[39];

  return MEMORY[0x2822009F8](sub_230D1F240, v2, 0);
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_230D1FBAC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_230D1FBFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_230D1FC6C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for SQLDatabaseConfiguration(0);
  MEMORY[0x28223BE20](v4, v5);
  v20 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC30, &qword_230E6C350);
  v19 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v18 - v9;
  SQLDatabaseRequest = type metadata accessor for CreateSQLDatabaseRequest(0);
  MEMORY[0x28223BE20](SQLDatabaseRequest - 8, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D20640();
  sub_230E69A30();
  if (!v2)
  {
    v15 = v18;
    sub_230D20750(&qword_27DB5AC40, type metadata accessor for SQLDatabaseConfiguration, &protocol conformance descriptor for SQLDatabaseConfiguration);
    v16 = v20;
    sub_230E69760();
    (*(v19 + 8))(v10, v7);
    sub_230D20694(v16, v14, type metadata accessor for SQLDatabaseConfiguration);
    sub_230D20694(v14, v15, type metadata accessor for CreateSQLDatabaseRequest);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230D1FF04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_230E698C0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_230D1FF94(uint64_t a1)
{
  v2 = sub_230D20640();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D1FFD0(uint64_t a1)
{
  v2 = sub_230D20640();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230D20024(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC48, &qword_230E6C358);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D20640();
  sub_230E69A50();
  type metadata accessor for SQLDatabaseConfiguration(0);
  sub_230D20750(&qword_281566328, type metadata accessor for SQLDatabaseConfiguration, &protocol conformance descriptor for SQLDatabaseConfiguration);
  sub_230E69850();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_230D2019C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_230E68860();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v22 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC50, &qword_230E6C360);
  v20 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v18 - v9;
  SQLDatabaseResponse = type metadata accessor for CreateSQLDatabaseResponse(0);
  MEMORY[0x28223BE20](SQLDatabaseResponse - 8, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D206FC();
  sub_230E69A30();
  if (!v2)
  {
    v15 = v19;
    v16 = v21;
    sub_230D20750(&qword_27DB5A680, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    sub_230E69760();
    (*(v20 + 8))(v10, v7);
    (*(v15 + 32))(v14, v22, v4);
    sub_230D20694(v14, v16, type metadata accessor for CreateSQLDatabaseResponse);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230D20438(uint64_t a1)
{
  v2 = sub_230D206FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D20474(uint64_t a1)
{
  v2 = sub_230D206FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230D204C8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC60, &qword_230E6C368);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D206FC();
  sub_230E69A50();
  sub_230E68860();
  sub_230D20750(&qword_2815668A8, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
  sub_230E69850();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_230D20640()
{
  result = qword_27DB5AC38;
  if (!qword_27DB5AC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AC38);
  }

  return result;
}

uint64_t sub_230D20694(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_230D206FC()
{
  result = qword_27DB5AC58;
  if (!qword_27DB5AC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AC58);
  }

  return result;
}

uint64_t sub_230D20750(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_230D207BC()
{
  result = qword_27DB5AC68;
  if (!qword_27DB5AC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AC68);
  }

  return result;
}

unint64_t sub_230D20814()
{
  result = qword_27DB5AC70;
  if (!qword_27DB5AC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AC70);
  }

  return result;
}

unint64_t sub_230D2086C()
{
  result = qword_27DB5AC78;
  if (!qword_27DB5AC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AC78);
  }

  return result;
}

unint64_t sub_230D208C4()
{
  result = qword_27DB5AC80;
  if (!qword_27DB5AC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AC80);
  }

  return result;
}

unint64_t sub_230D2091C()
{
  result = qword_27DB5AC88;
  if (!qword_27DB5AC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AC88);
  }

  return result;
}

unint64_t sub_230D20974()
{
  result = qword_27DB5AC90;
  if (!qword_27DB5AC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AC90);
  }

  return result;
}

ServicesIntelligence::DeleteFromSQLDatabaseRequest::Descriptor __swiftcall DeleteFromSQLDatabaseRequest.Descriptor.init(predicateExpression:)(Swift::String_optional predicateExpression)
{
  object = predicateExpression.value._object;
  countAndFlagsBits = predicateExpression.value._countAndFlagsBits;
  v4 = v1;

  *v4 = countAndFlagsBits;
  v4[1] = object;
  result.predicateExpression.value._object = v6;
  result.predicateExpression.value._countAndFlagsBits = v5;
  return result;
}

ServicesIntelligence::DeleteFromSQLDatabaseRequest __swiftcall DeleteFromSQLDatabaseRequest.init(tableName:descriptor:)(Swift::String tableName, ServicesIntelligence::DeleteFromSQLDatabaseRequest::Descriptor descriptor)
{
  object = tableName._object;
  countAndFlagsBits = tableName._countAndFlagsBits;
  v5 = v2;
  v6 = *descriptor.predicateExpression.value._countAndFlagsBits;
  v7 = *(descriptor.predicateExpression.value._countAndFlagsBits + 8);

  *v5 = countAndFlagsBits;
  v5[1] = object;

  v5[2] = v6;
  v5[3] = v7;
  result.descriptor.predicateExpression.value._object = v11;
  result.descriptor.predicateExpression.value._countAndFlagsBits = v10;
  result.tableName._object = v9;
  result.tableName._countAndFlagsBits = v8;
  return result;
}

uint64_t DeleteFromSQLDatabaseRequest.Descriptor.predicateExpression.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DeleteFromSQLDatabaseRequest.Descriptor.predicateExpression.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_230D20AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x8000000230E80F50 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_230E698C0();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_230D20B90(uint64_t a1)
{
  v2 = sub_230D20D44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D20BCC(uint64_t a1)
{
  v2 = sub_230D20D44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DeleteFromSQLDatabaseRequest.Descriptor.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC98, &qword_230E6C590);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D20D44();
  sub_230E69A50();
  sub_230E697B0();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_230D20D44()
{
  result = qword_27DB5ACA0;
  if (!qword_27DB5ACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5ACA0);
  }

  return result;
}

uint64_t DeleteFromSQLDatabaseRequest.Descriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5ACA8, &qword_230E6C598);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D20D44();
  sub_230E69A30();
  if (!v2)
  {
    v10 = sub_230E696B0();
    v12 = v11;
    (*(v6 + 8))(v9, v5);
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230D20F24(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC98, &qword_230E6C590);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D20D44();
  sub_230E69A50();
  sub_230E697B0();
  return (*(v3 + 8))(v6, v2);
}

uint64_t DeleteFromSQLDatabaseRequest.tableName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DeleteFromSQLDatabaseRequest.tableName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DeleteFromSQLDatabaseRequest.descriptor.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t DeleteFromSQLDatabaseRequest.descriptor.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t sub_230D21148()
{
  if (*v0)
  {
    return 0x7470697263736564;
  }

  else
  {
    return 0x6D614E656C626174;
  }
}

uint64_t sub_230D2118C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D614E656C626174 && a2 == 0xE900000000000065;
  if (v6 || (sub_230E698C0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEA0000000000726FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230E698C0();

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

uint64_t sub_230D21278(uint64_t a1)
{
  v2 = sub_230D21494();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D212B4(uint64_t a1)
{
  v2 = sub_230D21494();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DeleteFromSQLDatabaseRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5ACB0, &qword_230E6C5A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v11 - v6;
  v8 = *(v1 + 24);
  v12 = *(v1 + 16);
  v13 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D21494();
  sub_230E69A50();
  LOBYTE(v15) = 0;
  v9 = v14;
  sub_230E69810();
  if (!v9)
  {
    v15 = v12;
    v16 = v13;
    v17 = 1;
    sub_230D214E8();

    sub_230E69850();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_230D21494()
{
  result = qword_27DB5ACB8;
  if (!qword_27DB5ACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5ACB8);
  }

  return result;
}

unint64_t sub_230D214E8()
{
  result = qword_27DB5ACC0;
  if (!qword_27DB5ACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5ACC0);
  }

  return result;
}

uint64_t DeleteFromSQLDatabaseRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5ACC8, &qword_230E6C5A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v17 - v8;

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D21494();
  sub_230E69A30();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v17[0]) = 0;
    v10 = sub_230E69720();
    v13 = v12;
    v14 = v10;
    v18 = 1;
    sub_230D21768();
    sub_230E69760();
    (*(v6 + 8))(v9, v5);
    v16 = v17[0];
    v15 = v17[1];

    *a2 = v14;
    a2[1] = v13;
    a2[2] = v16;
    a2[3] = v15;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

unint64_t sub_230D21768()
{
  result = qword_27DB5ACD0;
  if (!qword_27DB5ACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5ACD0);
  }

  return result;
}

uint64_t sub_230D21844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x43646574656C6564 && a2 == 0xEC000000746E756FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_230E698C0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_230D218D0(uint64_t a1)
{
  v2 = sub_230D21A80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D2190C(uint64_t a1)
{
  v2 = sub_230D21A80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DeleteFromSQLDatabaseResponse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5ACD8, &qword_230E6C5B0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D21A80();
  sub_230E69A50();
  sub_230E69860();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_230D21A80()
{
  result = qword_27DB5ACE0;
  if (!qword_27DB5ACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5ACE0);
  }

  return result;
}

uint64_t DeleteFromSQLDatabaseResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5ACE8, &qword_230E6C5B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D21A80();
  sub_230E69A30();
  if (!v2)
  {
    v10 = sub_230E69770();
    (*(v6 + 8))(v9, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230D21C40(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5ACD8, &qword_230E6C5B0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D21A80();
  sub_230E69A50();
  sub_230E69860();
  return (*(v3 + 8))(v6, v2);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_230D21D84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_230D21DCC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_230D21E1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_230D21E78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_230D21F1C()
{
  result = qword_27DB5ACF0;
  if (!qword_27DB5ACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5ACF0);
  }

  return result;
}

unint64_t sub_230D21F74()
{
  result = qword_27DB5ACF8;
  if (!qword_27DB5ACF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5ACF8);
  }

  return result;
}

unint64_t sub_230D21FCC()
{
  result = qword_27DB5AD00;
  if (!qword_27DB5AD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AD00);
  }

  return result;
}

unint64_t sub_230D22024()
{
  result = qword_27DB5AD08;
  if (!qword_27DB5AD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AD08);
  }

  return result;
}

unint64_t sub_230D2207C()
{
  result = qword_27DB5AD10;
  if (!qword_27DB5AD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AD10);
  }

  return result;
}

unint64_t sub_230D220D4()
{
  result = qword_27DB5AD18;
  if (!qword_27DB5AD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AD18);
  }

  return result;
}

unint64_t sub_230D2212C()
{
  result = qword_27DB5AD20;
  if (!qword_27DB5AD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AD20);
  }

  return result;
}

unint64_t sub_230D22184()
{
  result = qword_27DB5AD28;
  if (!qword_27DB5AD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AD28);
  }

  return result;
}

unint64_t sub_230D221DC()
{
  result = qword_27DB5AD30;
  if (!qword_27DB5AD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AD30);
  }

  return result;
}

void __swiftcall FetchFromSQLDatabaseRequest.Descriptor.Column.init(name:type:alias:derivationExpression:)(ServicesIntelligence::FetchFromSQLDatabaseRequest::Descriptor::Column *__return_ptr retstr, Swift::String name, ServicesIntelligence::SQLDatabaseValueType type, Swift::String_optional alias, Swift::String_optional derivationExpression)
{
  v5 = *type;
  retstr->name = name;
  retstr->type = v5;
  retstr->alias = alias;
  retstr->derivationExpression = derivationExpression;
}

__n128 FetchFromSQLDatabaseRequest.Descriptor.init(columns:joinExpression:groupByExpression:havingExpression:predicateExpression:sortExpression:numberOfRecords:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, __n128 a11, char a13)
{
  result = a10;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4] = a10;
  a9[5] = a11;
  a9[6].n128_u8[0] = a13 & 1;
  return result;
}

__n128 FetchFromSQLDatabaseRequest.init(tableName:descriptor:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 112) = 1;
  *a4 = a1;
  *(a4 + 8) = a2;
  v13 = 1;
  v6 = *(a4 + 96);
  v12[4] = *(a4 + 80);
  v12[5] = v6;
  v7 = *(a4 + 32);
  v12[0] = *(a4 + 16);
  v12[1] = v7;
  v8 = *(a4 + 64);
  v12[2] = *(a4 + 48);
  v12[3] = v8;
  sub_230D1D098(v12);
  v9 = *(a3 + 80);
  *(a4 + 80) = *(a3 + 64);
  *(a4 + 96) = v9;
  *(a4 + 112) = *(a3 + 96);
  v10 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v10;
  result = *(a3 + 48);
  *(a4 + 48) = *(a3 + 32);
  *(a4 + 64) = result;
  return result;
}

uint64_t FetchFromSQLDatabaseRequest.Descriptor.Column.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FetchFromSQLDatabaseRequest.Descriptor.Column.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t FetchFromSQLDatabaseRequest.Descriptor.Column.alias.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t FetchFromSQLDatabaseRequest.Descriptor.Column.alias.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t FetchFromSQLDatabaseRequest.Descriptor.Column.derivationExpression.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t FetchFromSQLDatabaseRequest.Descriptor.Column.derivationExpression.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

unint64_t sub_230D224D4()
{
  v1 = 1701667182;
  v2 = 0x7361696C61;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0)
  {
    v1 = 1701869940;
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

uint64_t sub_230D22540@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_230D255BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_230D22568(uint64_t a1)
{
  v2 = sub_230D227E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D225A4(uint64_t a1)
{
  v2 = sub_230D227E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FetchFromSQLDatabaseRequest.Descriptor.Column.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AD38, &qword_230E6CAB0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v12 - v6;
  v13 = *(v1 + 16);
  v8 = *(v1 + 24);
  v12[2] = *(v1 + 32);
  v12[3] = v8;
  v9 = *(v1 + 40);
  v12[0] = *(v1 + 48);
  v12[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D227E0();
  sub_230E69A50();
  v19 = 0;
  v10 = v14;
  sub_230E69810();
  if (!v10)
  {
    v18 = v13;
    v17 = 1;
    sub_230D22834();
    sub_230E69850();
    v16 = 2;
    sub_230E697B0();
    v15 = 3;
    sub_230E697B0();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_230D227E0()
{
  result = qword_27DB5AD40;
  if (!qword_27DB5AD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AD40);
  }

  return result;
}

unint64_t sub_230D22834()
{
  result = qword_2815664D8;
  if (!qword_2815664D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815664D8);
  }

  return result;
}

uint64_t FetchFromSQLDatabaseRequest.Descriptor.Column.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AD48, &qword_230E6CAB8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v22 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D227E0();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = 0;
  v10 = sub_230E69720();
  v12 = v11;
  v25 = v10;
  v28 = 1;
  sub_230D22B38();
  sub_230E69760();
  v24 = v29;
  v27 = 2;
  v13 = sub_230E696B0();
  v16 = v15;
  v23 = v13;
  v26 = 3;
  v17 = sub_230E696B0();
  v19 = v18;
  v20 = *(v6 + 8);
  v22 = v17;
  v20(v9, v5);
  *a2 = v25;
  *(a2 + 8) = v12;
  *(a2 + 16) = v24;
  v21 = v22;
  *(a2 + 24) = v23;
  *(a2 + 32) = v16;
  *(a2 + 40) = v21;
  *(a2 + 48) = v19;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_230D22B38()
{
  result = qword_27DB5AD50;
  if (!qword_27DB5AD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AD50);
  }

  return result;
}

uint64_t FetchFromSQLDatabaseRequest.Descriptor.columns.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t FetchFromSQLDatabaseRequest.Descriptor.joinExpression.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t FetchFromSQLDatabaseRequest.Descriptor.joinExpression.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t FetchFromSQLDatabaseRequest.Descriptor.groupByExpression.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t FetchFromSQLDatabaseRequest.Descriptor.groupByExpression.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t FetchFromSQLDatabaseRequest.Descriptor.havingExpression.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t FetchFromSQLDatabaseRequest.Descriptor.havingExpression.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t FetchFromSQLDatabaseRequest.Descriptor.predicateExpression.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t FetchFromSQLDatabaseRequest.Descriptor.predicateExpression.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t FetchFromSQLDatabaseRequest.Descriptor.sortExpression.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t FetchFromSQLDatabaseRequest.Descriptor.sortExpression.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t FetchFromSQLDatabaseRequest.Descriptor.numberOfRecords.setter(uint64_t result, char a2)
{
  *(v2 + 88) = result;
  *(v2 + 96) = a2 & 1;
  return result;
}

uint64_t sub_230D22EF4()
{
  v1 = *v0;
  v2 = 0x736E6D756C6F63;
  v3 = 0x7270784574726F73;
  if (v1 != 5)
  {
    v3 = 0x664F7265626D756ELL;
  }

  v4 = 0xD000000000000013;
  if (v1 == 3)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x727078456E696F6ALL;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
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

uint64_t sub_230D22FF8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_230D25724(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_230D2302C(uint64_t a1)
{
  v2 = sub_230D23398();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D23068(uint64_t a1)
{
  v2 = sub_230D23398();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FetchFromSQLDatabaseRequest.Descriptor.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AD58, &qword_230E6CAC0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v19 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v29 = v1[2];
  v30 = v9;
  v12 = v1[5];
  v27 = v1[4];
  v28 = v11;
  v13 = v1[7];
  v25 = v1[6];
  v26 = v12;
  v14 = v1[8];
  v15 = v1[9];
  v23 = v13;
  v24 = v14;
  v17 = v1[10];
  v16 = v1[11];
  v21 = v15;
  v22 = v17;
  v19[1] = v16;
  v20 = *(v1 + 96);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D23398();

  sub_230E69A50();
  v38 = v10;
  v37 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AD68, &qword_230E6CAC8);
  sub_230D23AFC(&qword_27DB5AD70, sub_230D233EC, MEMORY[0x277D83948]);
  sub_230E697F0();
  if (v2)
  {
  }

  else
  {

    v36 = 1;
    sub_230E697B0();
    v35 = 2;
    sub_230E697B0();
    v34 = 3;
    sub_230E697B0();
    v33 = 4;
    sub_230E697B0();
    v32 = 5;
    sub_230E697B0();
    v31 = 6;
    sub_230E697E0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_230D23398()
{
  result = qword_27DB5AD60;
  if (!qword_27DB5AD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AD60);
  }

  return result;
}

unint64_t sub_230D233EC()
{
  result = qword_27DB5AD78;
  if (!qword_27DB5AD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AD78);
  }

  return result;
}

uint64_t FetchFromSQLDatabaseRequest.Descriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AD80, &qword_230E6CAD0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v35 - v8;
  v70 = 1;
  v10 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_230D23398();
  sub_230E69A30();
  if (v2)
  {
    v48 = v2;
    v47 = 0;
    v46 = 0;
    __swift_destroy_boxed_opaque_existential_1(v49);
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = v46;
    v67 = v47;
    v68 = 0;
    v69 = v70;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AD68, &qword_230E6CAC8);
    LOBYTE(v50) = 0;
    sub_230D23AFC(&qword_27DB5AD88, sub_230D23B74, MEMORY[0x277D83978]);
    sub_230E69700();
    v45 = v57;
    LOBYTE(v57) = 1;
    v44 = sub_230E696B0();
    v43 = v12;
    LOBYTE(v57) = 2;
    v13 = sub_230E696B0();
    v42 = v14;
    LOBYTE(v57) = 3;
    v40 = sub_230E696B0();
    v41 = v15;
    LOBYTE(v57) = 4;
    v16 = sub_230E696B0();
    v39 = v17;
    v38 = a2;
    LOBYTE(v57) = 5;
    v18 = sub_230E696B0();
    v47 = v19;
    v71 = 6;
    v20 = sub_230E696F0();
    v48 = 0;
    v46 = v18;
    v22 = v21;
    v23 = v20;
    (*(v6 + 8))(v9, v5);
    v22 &= 1u;
    v70 = v22;
    v24 = v45;
    *&v50 = v45;
    *(&v50 + 1) = v44;
    v25 = v43;
    *&v51 = v43;
    *(&v51 + 1) = v13;
    v37 = v13;
    v26 = v42;
    *&v52 = v42;
    v27 = v40;
    v28 = v41;
    *(&v52 + 1) = v40;
    *&v53 = v41;
    *(&v53 + 1) = v16;
    v36 = v16;
    v29 = v39;
    *&v54 = v39;
    *(&v54 + 1) = v18;
    v30 = v47;
    *&v55 = v47;
    *(&v55 + 1) = v23;
    v56 = v22;
    v31 = v55;
    v32 = v38;
    *(v38 + 64) = v54;
    *(v32 + 80) = v31;
    v33 = v51;
    *v32 = v50;
    *(v32 + 16) = v33;
    v34 = v53;
    *(v32 + 32) = v52;
    *(v32 + 48) = v34;
    *(v32 + 96) = v22;
    sub_230D23BC8(&v50, &v57);
    __swift_destroy_boxed_opaque_existential_1(v49);
    v57 = v24;
    v58 = v44;
    v59 = v25;
    v60 = v37;
    v61 = v26;
    v62 = v27;
    v63 = v28;
    v64 = v36;
    v65 = v29;
    v66 = v46;
    v67 = v30;
    v68 = v23;
    v69 = v22;
  }

  return sub_230D1D098(&v57);
}

uint64_t sub_230D23AFC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5AD68, &qword_230E6CAC8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_230D23B74()
{
  result = qword_27DB5AD90;
  if (!qword_27DB5AD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AD90);
  }

  return result;
}

uint64_t FetchFromSQLDatabaseRequest.tableName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FetchFromSQLDatabaseRequest.tableName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t FetchFromSQLDatabaseRequest.descriptor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 96);
  v13 = *(v1 + 80);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + 112);
  v4 = v15;
  v5 = *(v1 + 32);
  v10[0] = *(v1 + 16);
  v10[1] = v5;
  v6 = *(v1 + 64);
  v11 = *(v1 + 48);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  return sub_230D23BC8(v10, v9);
}

__n128 FetchFromSQLDatabaseRequest.descriptor.setter(uint64_t a1)
{
  v3 = *(v1 + 96);
  v9[4] = *(v1 + 80);
  v9[5] = v3;
  v10 = *(v1 + 112);
  v4 = *(v1 + 32);
  v9[0] = *(v1 + 16);
  v9[1] = v4;
  v5 = *(v1 + 64);
  v9[2] = *(v1 + 48);
  v9[3] = v5;
  sub_230D1D098(v9);
  v6 = *(a1 + 80);
  *(v1 + 80) = *(a1 + 64);
  *(v1 + 96) = v6;
  *(v1 + 112) = *(a1 + 96);
  v7 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v7;
  result = *(a1 + 48);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = result;
  return result;
}

uint64_t sub_230D23DA4(uint64_t a1)
{
  v2 = sub_230D24038();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D23DE0(uint64_t a1)
{
  v2 = sub_230D24038();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FetchFromSQLDatabaseRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AD98, &qword_230E6CAD8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v17 - v6;
  v8 = *(v1 + 96);
  v31 = *(v1 + 80);
  v32 = v8;
  v33 = *(v1 + 112);
  v9 = *(v1 + 32);
  v27 = *(v1 + 16);
  v28 = v9;
  v10 = *(v1 + 64);
  v29 = *(v1 + 48);
  v30 = v10;
  v11 = a1[3];
  v12 = a1;
  v14 = v13;
  __swift_project_boxed_opaque_existential_1(v12, v11);
  sub_230D24038();
  sub_230E69A50();
  LOBYTE(v20) = 0;
  v15 = v17[1];
  sub_230E69810();
  if (!v15)
  {
    v24 = v31;
    v25 = v32;
    v26 = v33;
    v20 = v27;
    v21 = v28;
    v22 = v29;
    v23 = v30;
    v34 = 1;
    sub_230D23BC8(&v27, v18);
    sub_230D2408C();
    sub_230E69850();
    v18[4] = v24;
    v18[5] = v25;
    v19 = v26;
    v18[0] = v20;
    v18[1] = v21;
    v18[2] = v22;
    v18[3] = v23;
    sub_230D1D098(v18);
  }

  return (*(v4 + 8))(v7, v14);
}

unint64_t sub_230D24038()
{
  result = qword_27DB5ADA0;
  if (!qword_27DB5ADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5ADA0);
  }

  return result;
}

unint64_t sub_230D2408C()
{
  result = qword_27DB5ADA8;
  if (!qword_27DB5ADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5ADA8);
  }

  return result;
}

uint64_t FetchFromSQLDatabaseRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5ADB0, &qword_230E6CAE0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v30 - v7;
  v76 = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D24038();
  sub_230E69A30();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    LOBYTE(v59) = v76;
    return sub_230D1D098(&v53);
  }

  else
  {
    v9 = v5;
    v10 = v77;
    LOBYTE(v53) = 0;
    v11 = sub_230E69720();
    v13 = v12;
    v43 = v11;
    v62 = 1;
    sub_230D24414();
    sub_230E69760();
    (*(v9 + 8))(v8, v4);
    v14 = v63;
    v15 = v64;
    v36 = v64;
    v37 = v63;
    v16 = v68;
    v41 = v67;
    v42 = v66;
    v32 = v69;
    v33 = v65;
    v17 = v71;
    v34 = v71;
    v35 = v68;
    v30 = v73;
    v31 = v72;
    v39 = v74;
    v40 = v70;
    memset(v44, 0, 96);
    v38 = v75;
    v44[96] = v76;
    sub_230D1D098(v44);
    *&v45 = v43;
    *(&v45 + 1) = v13;
    *&v46 = v14;
    *(&v46 + 1) = v15;
    v18 = v32;
    v19 = v33;
    *&v47 = v33;
    *(&v47 + 1) = v42;
    *&v48 = v41;
    *(&v48 + 1) = v16;
    *&v49 = v32;
    *(&v49 + 1) = v40;
    v20 = v31;
    *&v50 = v17;
    *(&v50 + 1) = v31;
    v21 = v30;
    *&v51 = v30;
    *(&v51 + 1) = v39;
    v22 = v38;
    v52 = v38;
    v23 = v45;
    v24 = v46;
    v25 = v48;
    *(v10 + 32) = v47;
    *(v10 + 48) = v25;
    *v10 = v23;
    *(v10 + 16) = v24;
    v26 = v49;
    v27 = v50;
    v28 = v51;
    *(v10 + 112) = v22;
    *(v10 + 80) = v27;
    *(v10 + 96) = v28;
    *(v10 + 64) = v26;
    sub_230D1D0EC(&v45, &v53);
    __swift_destroy_boxed_opaque_existential_1(a1);
    *&v53 = v43;
    *(&v53 + 1) = v13;
    *&v54 = v37;
    *(&v54 + 1) = v36;
    *&v55 = v19;
    *(&v55 + 1) = v42;
    *&v56 = v41;
    *(&v56 + 1) = v35;
    *&v57 = v18;
    *(&v57 + 1) = v40;
    *&v58 = v34;
    *(&v58 + 1) = v20;
    v59 = v21;
    v60 = v39;
    v61 = v38;
    return sub_230D1D148(&v53);
  }
}

unint64_t sub_230D24414()
{
  result = qword_27DB5ADB8;
  if (!qword_27DB5ADB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5ADB8);
  }

  return result;
}

uint64_t FetchFromSQLDatabaseResponse.data.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_230D24504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_230E698C0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_230D2458C(uint64_t a1)
{
  v2 = sub_230D24778();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D245C8(uint64_t a1)
{
  v2 = sub_230D24778();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FetchFromSQLDatabaseResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5ADC0, &qword_230E6CAE8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D24778();

  sub_230E69A50();
  v10[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC10, &unk_230E6CAF0);
  sub_230D247CC();
  sub_230E69850();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_230D24778()
{
  result = qword_27DB5ADC8;
  if (!qword_27DB5ADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5ADC8);
  }

  return result;
}

unint64_t sub_230D247CC()
{
  result = qword_27DB5ADD0;
  if (!qword_27DB5ADD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5AC10, &unk_230E6CAF0);
    sub_230D24B18(&qword_27DB5ADD8, sub_230D24888, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5ADD0);
  }

  return result;
}

unint64_t sub_230D24888()
{
  result = qword_281566650;
  if (!qword_281566650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566650);
  }

  return result;
}

uint64_t FetchFromSQLDatabaseResponse.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5ADE0, &qword_230E6CB00);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D24778();
  sub_230E69A30();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC10, &unk_230E6CAF0);
    sub_230D24A5C();
    sub_230E69760();
    (*(v6 + 8))(v9, v5);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_230D24A5C()
{
  result = qword_27DB5ADE8;
  if (!qword_27DB5ADE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5AC10, &unk_230E6CAF0);
    sub_230D24B18(&qword_27DB5ADF0, sub_230D24B9C, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5ADE8);
  }

  return result;
}

uint64_t sub_230D24B18(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5AC20, &qword_230E6C230);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_230D24B9C()
{
  result = qword_27DB5ADF8;
  if (!qword_27DB5ADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5ADF8);
  }

  return result;
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_230D24C4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_230D24C94(uint64_t result, int a2, int a3)
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
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_230D24D30(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 97))
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

uint64_t sub_230D24D8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
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

uint64_t sub_230D24E28(uint64_t a1, int a2)
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

uint64_t sub_230D24E70(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for FetchFromSQLDatabaseRequest.Descriptor.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FetchFromSQLDatabaseRequest.Descriptor.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for FetchFromSQLDatabaseRequest.Descriptor.Column.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FetchFromSQLDatabaseRequest.Descriptor.Column.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_230D251A0()
{
  result = qword_27DB5AE00;
  if (!qword_27DB5AE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AE00);
  }

  return result;
}

unint64_t sub_230D251F8()
{
  result = qword_27DB5AE08;
  if (!qword_27DB5AE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AE08);
  }

  return result;
}

unint64_t sub_230D25250()
{
  result = qword_27DB5AE10;
  if (!qword_27DB5AE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AE10);
  }

  return result;
}

unint64_t sub_230D252A8()
{
  result = qword_27DB5AE18;
  if (!qword_27DB5AE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AE18);
  }

  return result;
}

unint64_t sub_230D25300()
{
  result = qword_27DB5AE20;
  if (!qword_27DB5AE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AE20);
  }

  return result;
}

unint64_t sub_230D25358()
{
  result = qword_27DB5AE28;
  if (!qword_27DB5AE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AE28);
  }

  return result;
}

unint64_t sub_230D253B0()
{
  result = qword_27DB5AE30;
  if (!qword_27DB5AE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AE30);
  }

  return result;
}

unint64_t sub_230D25408()
{
  result = qword_27DB5AE38;
  if (!qword_27DB5AE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AE38);
  }

  return result;
}

unint64_t sub_230D25460()
{
  result = qword_27DB5AE40;
  if (!qword_27DB5AE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AE40);
  }

  return result;
}

unint64_t sub_230D254B8()
{
  result = qword_27DB5AE48;
  if (!qword_27DB5AE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AE48);
  }

  return result;
}

unint64_t sub_230D25510()
{
  result = qword_27DB5AE50;
  if (!qword_27DB5AE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AE50);
  }

  return result;
}

unint64_t sub_230D25568()
{
  result = qword_27DB5AE58;
  if (!qword_27DB5AE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AE58);
  }

  return result;
}

uint64_t sub_230D255BC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7361696C61 && a2 == 0xE500000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000230E80F70 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_230E698C0();

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

uint64_t sub_230D25724(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736E6D756C6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x727078456E696F6ALL && a2 == 0xEE006E6F69737365 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000230E80F90 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000230E80FB0 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000230E80F50 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7270784574726F73 && a2 == 0xEE006E6F69737365 || (sub_230E698C0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x664F7265626D756ELL && a2 == 0xEF7364726F636552)
  {

    return 6;
  }

  else
  {
    v6 = sub_230E698C0();

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

__n128 SQLDatabaseColumnConfiguration.init(name:type:defaultValue:isNullable:isUnique:isPrimaryKey:foreignKeyReference:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v14 = *a3;
  v15 = *a4;
  v16 = a4[1];
  v17 = *(a4 + 16);
  v18 = *(a8 + 32);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v14;
  sub_230D0F460(0, 0, 255);
  *(a9 + 24) = v15;
  *(a9 + 32) = v16;
  *(a9 + 40) = v17;
  *(a9 + 41) = a5;
  *(a9 + 42) = a6;
  *(a9 + 43) = a7;
  sub_230D0F4FC(0, 0, 0, 0);
  result = *a8;
  v20 = *(a8 + 16);
  *(a9 + 48) = *a8;
  *(a9 + 64) = v20;
  *(a9 + 80) = v18;
  return result;
}

ServicesIntelligence::SQLDatabaseTableConfiguration __swiftcall SQLDatabaseTableConfiguration.init(name:columns:)(Swift::String name, Swift::OpaquePointer columns)
{
  *v2 = name;
  *(v2 + 16) = columns;
  result.name = name;
  result.columns = columns;
  return result;
}

uint64_t SQLDatabaseConfiguration.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SQLDatabaseConfiguration.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SQLDatabaseConfiguration.tables.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t SQLDatabaseConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AE60, &unk_230E6D1F0);
  v5 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for SQLDatabaseConfiguration(0);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 40);
  v15 = sub_230E68860();
  v16 = *(*(v15 - 8) + 56);
  v22 = v14;
  v16(&v13[v14], 1, 1, v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D25F6C();
  sub_230E69A30();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_230D2D9F8(&v13[v22], &qword_27DB5D8C0, &qword_230E6C210);
  }

  else
  {
    v28 = 0;
    *v13 = sub_230E69720();
    *(v13 + 1) = v18;
    v20 = v18;
    v26 = 1;
    sub_230D0D17C();
    sub_230E69760();
    v13[16] = v27;
    v25 = 2;
    sub_230D0D1D0();
    sub_230E69700();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AE68, &qword_230E6D200);
    v24 = 3;
    sub_230D2BFE4(&qword_27DB5AE70, sub_230D25FC0, MEMORY[0x277D83978]);
    sub_230E69700();
    if (v23)
    {
      v19 = v23;
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
    }

    (*(v5 + 8))(v8, v21);
    *(v13 + 3) = v19;
    sub_230D1CF5C(v13, a2);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_230D1CFC0(v13);
  }
}

uint64_t type metadata accessor for SQLDatabaseConfiguration(uint64_t a1)
{
  result = qword_281566318;
  if (!qword_281566318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_230D25F6C()
{
  result = qword_281566340;
  if (!qword_281566340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566340);
  }

  return result;
}

unint64_t sub_230D25FC0()
{
  result = qword_27DB5AE78;
  if (!qword_27DB5AE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AE78);
  }

  return result;
}

uint64_t SQLDatabaseConfiguration.init(name:domain:dataClass:tables:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v9 = *a3;
  v10 = *(type metadata accessor for SQLDatabaseConfiguration(0) + 32);
  v11 = sub_230E68860();
  result = (*(*(v11 - 8) + 56))(a5 + v10, 1, 1, v11);
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = v9;
  *(a5 + 24) = a4;
  return result;
}

uint64_t sub_230D260B0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v41 = v2;
  v42 = v3;
  v5 = a1 + 32;
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 48);
    v28 = *(v5 + 32);
    v29 = v8;
    v30 = *(v5 + 64);
    v31 = *(v5 + 80);
    v9 = *(v5 + 16);
    v27[0] = *v5;
    v27[1] = v9;
    v26 = v31;
    v23 = v28;
    v24 = v8;
    v25 = v30;
    v21 = v27[0];
    v22 = v9;
    v10 = *(v6 + 48);
    v33 = *(v6 + 32);
    v34 = v10;
    v35 = *(v6 + 64);
    v36 = *(v6 + 80);
    v11 = *(v6 + 16);
    v32[0] = *v6;
    v32[1] = v11;
    v20 = v36;
    v16 = v11;
    v17 = v33;
    v18 = v10;
    v19 = v35;
    v15 = v32[0];
    sub_230D2C310(v27, v14);
    sub_230D2C310(v32, v14);
    v12 = _s20ServicesIntelligence30SQLDatabaseColumnConfigurationV2eeoiySbAC_ACtFZ_0(&v21, &v15);
    v37[2] = v17;
    v37[3] = v18;
    v37[4] = v19;
    v38 = v20;
    v37[0] = v15;
    v37[1] = v16;
    sub_230D2C348(v37);
    v39[2] = v23;
    v39[3] = v24;
    v39[4] = v25;
    v40 = v26;
    v39[0] = v21;
    v39[1] = v22;
    sub_230D2C348(v39);
    if (!v12)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 88;
    v5 += 88;
  }

  return 1;
}

uint64_t sub_230D26220(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      if (v6 > 4)
      {
        v9 = 0x7974697275636573;
        if (v6 == 8)
        {
          v9 = 0x65676175676E616CLL;
        }

        v10 = 0xE800000000000000;
        if (v6 == 7)
        {
          v9 = 0x6E6F6D6D6F63;
          v10 = 0xE600000000000000;
        }

        v11 = 0x7374736163646F70;
        if (v6 != 5)
        {
          v11 = 0x6F65646976;
        }

        v12 = 0xE500000000000000;
        if (v6 == 5)
        {
          v12 = 0xE800000000000000;
        }

        if (*v3 <= 6u)
        {
          v8 = v11;
        }

        else
        {
          v8 = v9;
        }

        if (*v3 <= 6u)
        {
          v7 = v12;
        }

        else
        {
          v7 = v10;
        }
      }

      else if (*v3 <= 1u)
      {
        if (*v3)
        {
          v8 = 1936748641;
        }

        else
        {
          v8 = 0x6C616E7265746E69;
        }

        if (*v3)
        {
          v7 = 0xE400000000000000;
        }

        else
        {
          v7 = 0xE800000000000000;
        }
      }

      else if (v6 == 2)
      {
        v7 = 0xE500000000000000;
        v8 = 0x736B6F6F62;
      }

      else if (v6 == 3)
      {
        v7 = 0xE700000000000000;
        v8 = 0x7373656E746966;
      }

      else
      {
        v7 = 0xE500000000000000;
        v8 = 0x636973756DLL;
      }

      v13 = *v4;
      if (v13 > 4)
      {
        if (*v4 <= 6u)
        {
          if (v13 == 5)
          {
            v14 = 0xE800000000000000;
            if (v8 != 0x7374736163646F70)
            {
              goto LABEL_5;
            }
          }

          else
          {
            v14 = 0xE500000000000000;
            if (v8 != 0x6F65646976)
            {
              goto LABEL_5;
            }
          }
        }

        else if (v13 == 7)
        {
          v14 = 0xE600000000000000;
          if (v8 != 0x6E6F6D6D6F63)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v14 = 0xE800000000000000;
          if (v13 == 8)
          {
            if (v8 != 0x65676175676E616CLL)
            {
              goto LABEL_5;
            }
          }

          else if (v8 != 0x7974697275636573)
          {
            goto LABEL_5;
          }
        }
      }

      else if (*v4 <= 1u)
      {
        if (*v4)
        {
          v14 = 0xE400000000000000;
          if (v8 != 1936748641)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v14 = 0xE800000000000000;
          if (v8 != 0x6C616E7265746E69)
          {
            goto LABEL_5;
          }
        }
      }

      else if (v13 == 2)
      {
        v14 = 0xE500000000000000;
        if (v8 != 0x736B6F6F62)
        {
          goto LABEL_5;
        }
      }

      else if (v13 == 3)
      {
        v14 = 0xE700000000000000;
        if (v8 != 0x7373656E746966)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v14 = 0xE500000000000000;
        if (v8 != 0x636973756DLL)
        {
          goto LABEL_5;
        }
      }

      if (v7 != v14)
      {
LABEL_5:
        v5 = sub_230E698C0();

        if ((v5 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

LABEL_6:
      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_230D2654C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_230E698C0() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_230D265DC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    v19 = 0;
    return v19 & 1;
  }

  if (!v2 || result == a2)
  {
    v19 = 1;
    return v19 & 1;
  }

  v3 = (result + 40);
  v4 = (a2 + 40);
  v5 = "int32";
  v6 = "impressionBasedDemotion";
  while (v2)
  {
    v7 = *(v3 - 8);
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v8 = 0xD00000000000001CLL;
      }

      else
      {
        v8 = 0xD000000000000015;
      }

      if (v7 == 2)
      {
        v9 = "impressionBasedDemotion";
      }

      else
      {
        v9 = "lastConsumptionBasedDemotion";
      }
    }

    else
    {
      if (*(v3 - 8))
      {
        v8 = 0xD000000000000017;
      }

      else
      {
        v8 = 0xD000000000000014;
      }

      if (*(v3 - 8))
      {
        v9 = "historyBasedDemotion";
      }

      else
      {
        v9 = v5;
      }
    }

    v10 = *v3;
    v11 = *v4;
    v12 = v9 | 0x8000000000000000;
    v13 = 0xD00000000000001CLL;
    if (*(v4 - 8) != 2)
    {
      v13 = 0xD000000000000015;
      v6 = "lastConsumptionBasedDemotion";
    }

    v14 = 0xD000000000000017;
    if (!*(v4 - 8))
    {
      v14 = 0xD000000000000014;
    }

    v15 = v5;
    if (*(v4 - 8))
    {
      v5 = "historyBasedDemotion";
    }

    if (*(v4 - 8) <= 1u)
    {
      v16 = v14;
    }

    else
    {
      v16 = v13;
    }

    if (*(v4 - 8) <= 1u)
    {
      v17 = v5;
    }

    else
    {
      v17 = v6;
    }

    if (v8 == v16 && v12 == (v17 | 0x8000000000000000))
    {
    }

    else
    {
      v18 = sub_230E698C0();

      if ((v18 & 1) == 0)
      {

        v19 = 0;
        return v19 & 1;
      }
    }

    v19 = sub_230D6A784(v10, v11);

    if (v19)
    {
      v3 += 2;
      v4 += 2;
      v20 = v2-- == 1;
      v5 = v15;
      v6 = "impressionBasedDemotion";
      if (!v20)
      {
        continue;
      }
    }

    return v19 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_230D267E0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || result == a2)
    {
      return 1;
    }

    v3 = 0;
    v4 = result + 32;
    v5 = a2 + 32;
    v35 = a2 + 32;
    v36 = result + 32;
    while (1)
    {
      if (v3 == v2)
      {
        goto LABEL_30;
      }

      v6 = (v4 + 24 * v3);
      v7 = *v6;
      v8 = v6[1];
      v9 = v6[2];
      v10 = (v5 + 24 * v3);
      v11 = v10[2];
      v12 = v7 == *v10 && v8 == v10[1];
      if (!v12 && (sub_230E698C0() & 1) == 0)
      {
        return 0;
      }

      v13 = *(v9 + 16);
      if (v13 != *(v11 + 16))
      {
        return 0;
      }

      if (v13 && v9 != v11)
      {
        break;
      }

LABEL_7:
      ++v3;
      result = 1;
      if (v3 == v2)
      {
        return result;
      }
    }

    if (*(v9 + 16))
    {
      v15 = 0;
      v16 = v13 - 1;
      v17 = 32;
      while (1)
      {
        v18 = *(v9 + v17 + 16);
        v50[0] = *(v9 + v17);
        v50[1] = v18;
        v19 = *(v9 + v17 + 32);
        v20 = *(v9 + v17 + 48);
        v21 = *(v9 + v17 + 64);
        v51 = *(v9 + v17 + 80);
        v50[3] = v20;
        v50[4] = v21;
        v50[2] = v19;
        v22 = *(v9 + v17 + 16);
        v44 = *(v9 + v17);
        v45 = v22;
        v23 = *(v9 + v17 + 32);
        v24 = *(v9 + v17 + 48);
        v25 = *(v9 + v17 + 64);
        v49 = *(v9 + v17 + 80);
        v47 = v24;
        v48 = v25;
        v46 = v23;
        if (v15 >= *(v11 + 16))
        {
          break;
        }

        v26 = *(v11 + v17 + 16);
        v52[0] = *(v11 + v17);
        v52[1] = v26;
        v27 = *(v11 + v17 + 32);
        v28 = *(v11 + v17 + 48);
        v29 = *(v11 + v17 + 64);
        v53 = *(v11 + v17 + 80);
        v52[3] = v28;
        v52[4] = v29;
        v52[2] = v27;
        v30 = *(v11 + v17 + 16);
        v38 = *(v11 + v17);
        v39 = v30;
        v31 = *(v11 + v17 + 32);
        v32 = *(v11 + v17 + 48);
        v33 = *(v11 + v17 + 64);
        v43 = *(v11 + v17 + 80);
        v41 = v32;
        v42 = v33;
        v40 = v31;
        sub_230D2C310(v50, v37);
        sub_230D2C310(v52, v37);
        v34 = _s20ServicesIntelligence30SQLDatabaseColumnConfigurationV2eeoiySbAC_ACtFZ_0(&v44, &v38);
        v54[2] = v40;
        v54[3] = v41;
        v54[4] = v42;
        v55 = v43;
        v54[0] = v38;
        v54[1] = v39;
        sub_230D2C348(v54);
        v56[2] = v46;
        v56[3] = v47;
        v56[4] = v48;
        v57 = v49;
        v56[0] = v44;
        v56[1] = v45;
        result = sub_230D2C348(v56);
        if (!v34)
        {
          goto LABEL_26;
        }

        if (v16 == v15)
        {

          v5 = v35;
          v4 = v36;
          goto LABEL_7;
        }

        v17 += 88;
        if (++v15 >= *(v9 + 16))
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
      return result;
    }

LABEL_25:
    __break(1u);
LABEL_26:
  }

  return 0;
}

uint64_t sub_230D26A94(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v67 = v2;
  v68 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[3];
    v9 = v5[5];
    v53 = v5[4];
    v54[0] = v9;
    *(v54 + 9) = *(v5 + 89);
    v10 = v5[1];
    v50[0] = *v5;
    v50[1] = v10;
    v11 = v5[3];
    v13 = *v5;
    v12 = v5[1];
    v51 = v5[2];
    v52 = v11;
    v14 = v6[1];
    v55 = *v6;
    v56 = v14;
    *&v60[9] = *(v6 + 89);
    v15 = v6[3];
    v16 = v6[5];
    v59 = v6[4];
    *v60 = v16;
    v17 = v6[3];
    v18 = *v6;
    v19 = v6[1];
    v57 = v6[2];
    v58 = v17;
    v20 = v5[1];
    v61[0] = *v5;
    v61[1] = v20;
    *(v62 + 9) = *(v5 + 89);
    v21 = v5[5];
    v61[4] = v5[4];
    v62[0] = v21;
    v22 = v5[3];
    v61[2] = v5[2];
    v61[3] = v22;
    v62[2] = v18;
    v62[3] = v19;
    *(v63 + 9) = *(v6 + 89);
    v23 = v6[5];
    v62[6] = v59;
    v63[0] = v23;
    v62[4] = v57;
    v62[5] = v15;
    v64 = v13;
    *v65 = v12;
    *&v66[9] = *(v5 + 89);
    v24 = v5[5];
    *&v65[48] = v53;
    *v66 = v24;
    *&v65[16] = v51;
    *&v65[32] = v8;
    if ((v66[24] & 1) == 0)
    {
      if (v60[24])
      {
        sub_230D2D898(&v55, &v47);
        v45 = &v47;
        goto LABEL_68;
      }

      v33 = *(&v64 + 1);
      v32 = *v65;
      v35 = *(&v55 + 1);
      v34 = v56;
      v36 = v55;
      v37 = v64;
      sub_230D2D898(&v55, &v47);
      sub_230D2D898(v50, &v47);
      sub_230D2D898(v50, &v47);
      sub_230D2D898(&v55, &v47);
      sub_230D2D898(&v55, &v47);
      sub_230D2D898(v50, &v47);
      if ((sub_230D6A784(v37, v36) & 1) == 0)
      {
        goto LABEL_63;
      }

      if (v32)
      {
        if (!v34)
        {
          goto LABEL_63;
        }

        if (v33 == v35 && v32 == v34)
        {
          sub_230D2D9F8(v61, &qword_27DB5AF98, &qword_230E6E0A8);
          sub_230D2D8F4(&v55);
          sub_230D2D8F4(v50);
          sub_230D2D8F4(&v55);
          sub_230D2D8F4(v50);
          if (!i)
          {
            return 1;
          }

          goto LABEL_43;
        }

        v40 = sub_230E698C0();
        sub_230D2D9F8(v61, &qword_27DB5AF98, &qword_230E6E0A8);
        sub_230D2D8F4(&v55);
        sub_230D2D8F4(v50);
        sub_230D2D8F4(&v55);
        sub_230D2D8F4(v50);
        if ((v40 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        sub_230D2D9F8(v61, &qword_27DB5AF98, &qword_230E6E0A8);
        sub_230D2D8F4(&v55);
        sub_230D2D8F4(v50);
        sub_230D2D8F4(&v55);
        sub_230D2D8F4(v50);
        if (v34)
        {
          return 0;
        }
      }

      goto LABEL_42;
    }

    *&v49[9] = *(v6 + 89);
    v25 = v6[5];
    *&v48[48] = v6[4];
    *v49 = v25;
    v26 = v6[1];
    v47 = *v6;
    *v48 = v26;
    v27 = v6[3];
    *&v48[16] = v6[2];
    *&v48[32] = v27;
    if ((v49[24] & 1) == 0)
    {
      break;
    }

    sub_230D2D898(&v55, v46);
    sub_230D2D898(v50, v46);
    if (v64 != v47 && (sub_230E698C0() & 1) == 0)
    {
      sub_230D2D898(v50, v46);
      sub_230D2D9F8(v61, &qword_27DB5AF98, &qword_230E6E0A8);
      goto LABEL_64;
    }

    if (v65[0])
    {
      v28 = 0x69706D6F63657270;
    }

    else
    {
      v28 = 0x6F73736572707365;
    }

    if (v65[0])
    {
      v29 = 0xEB0000000064656CLL;
    }

    else
    {
      v29 = 0xEA00000000003256;
    }

    if (v48[0])
    {
      v30 = 0x69706D6F63657270;
    }

    else
    {
      v30 = 0x6F73736572707365;
    }

    if (v48[0])
    {
      v31 = 0xEB0000000064656CLL;
    }

    else
    {
      v31 = 0xEA00000000003256;
    }

    if (v28 == v30 && v29 == v31)
    {
      sub_230D2D898(v50, v46);
      sub_230D2D898(&v55, v46);
      sub_230D2D898(&v55, v46);
      sub_230D2D898(v50, v46);
      sub_230D2D948(&v64, v46);
      sub_230D2D948(&v47, v46);
    }

    else
    {
      v38 = sub_230E698C0();
      sub_230D2D898(v50, v46);
      sub_230D2D898(&v55, v46);
      sub_230D2D898(&v55, v46);
      sub_230D2D898(v50, v46);
      sub_230D2D948(&v64, v46);
      sub_230D2D948(&v47, v46);

      if ((v38 & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    if (*&v65[8] != *&v48[8] && (sub_230E698C0() & 1) == 0 || *&v65[24] != *&v48[24] && (sub_230E698C0() & 1) == 0)
    {
LABEL_62:
      sub_230D2D9A4(&v47);
      sub_230D2D9A4(&v64);
LABEL_63:
      sub_230D2D9F8(v61, &qword_27DB5AF98, &qword_230E6E0A8);
      sub_230D2D8F4(&v55);
      sub_230D2D8F4(v50);
      sub_230D2D8F4(&v55);
LABEL_64:
      sub_230D2D8F4(v50);
      return 0;
    }

    v39 = *&v48[48];
    if (*&v65[48])
    {
      if (!*&v48[48])
      {
        goto LABEL_62;
      }

      if (*&v65[40] == *&v48[40])
      {
        sub_230D2D9A4(&v47);
        sub_230D2D9A4(&v64);
      }

      else
      {
        v41 = sub_230E698C0();
        sub_230D2D9A4(&v47);
        sub_230D2D9A4(&v64);
        if ((v41 & 1) == 0)
        {
          goto LABEL_63;
        }
      }
    }

    else
    {
      sub_230D2D9A4(&v47);
      sub_230D2D9A4(&v64);
      if (v39)
      {
        goto LABEL_63;
      }
    }

    if ((sub_230D6A8C0(*&v65[56], *&v48[56]) & 1) == 0 || (sub_230D6ABB8(*v66, *v49) & 1) == 0)
    {
      goto LABEL_63;
    }

    v42 = *&v49[16];
    if (!*&v66[16])
    {
      sub_230D2D9F8(v61, &qword_27DB5AF98, &qword_230E6E0A8);
      sub_230D2D8F4(&v55);
      sub_230D2D8F4(v50);
      sub_230D2D8F4(&v55);
      sub_230D2D8F4(v50);
      if (v42)
      {
        return 0;
      }

LABEL_42:
      if (!i)
      {
        return 1;
      }

      goto LABEL_43;
    }

    if (!*&v49[16])
    {
      goto LABEL_63;
    }

    if (*&v66[8] != *&v49[8])
    {
      v43 = sub_230E698C0();
      sub_230D2D9F8(v61, &qword_27DB5AF98, &qword_230E6E0A8);
      sub_230D2D8F4(&v55);
      sub_230D2D8F4(v50);
      sub_230D2D8F4(&v55);
      sub_230D2D8F4(v50);
      if ((v43 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_42;
    }

    sub_230D2D9F8(v61, &qword_27DB5AF98, &qword_230E6E0A8);
    sub_230D2D8F4(&v55);
    sub_230D2D8F4(v50);
    sub_230D2D8F4(&v55);
    sub_230D2D8F4(v50);
    if (!i)
    {
      return 1;
    }

LABEL_43:
    v6 += 7;
    v5 += 7;
  }

  sub_230D2D898(&v55, v46);
  v45 = v46;
LABEL_68:
  sub_230D2D898(v50, v45);
  sub_230D2D9F8(v61, &qword_27DB5AF98, &qword_230E6E0A8);
  return 0;
}

uint64_t sub_230D27184()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x73616C4361746164;
  v4 = 0x73656C626174;
  if (v1 != 3)
  {
    v4 = 0x7265764F68746170;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E69616D6F64;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_230D2721C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_230D2D268(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_230D27244(uint64_t a1)
{
  v2 = sub_230D25F6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D27280(uint64_t a1)
{
  v2 = sub_230D25F6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SQLDatabaseConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AE80, &qword_230E6D208);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D25F6C();
  sub_230E69A50();
  v16 = 0;
  sub_230E69810();
  if (!v2)
  {
    v15 = *(v3 + 16);
    v14 = 1;
    sub_230D0D0D4();
    sub_230E69850();
    v13 = 2;
    sub_230D0D128();
    sub_230E69850();
    v12 = *(v3 + 24);
    v11[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AE68, &qword_230E6D200);
    sub_230D2BFE4(&qword_281565F68, sub_230D2C05C, MEMORY[0x277D83948]);
    sub_230E69850();
    type metadata accessor for SQLDatabaseConfiguration(0);
    v11[14] = 4;
    sub_230E68860();
    sub_230D2DA58(&qword_2815668A8, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_230E697F0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SQLDatabaseTableConfiguration.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SQLDatabaseTableConfiguration.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SQLDatabaseTableConfiguration.columns.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t static SQLDatabaseTableConfiguration.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_230E698C0() & 1) == 0)
  {
    return 0;
  }

  return sub_230D260B0(v2, v3);
}

uint64_t sub_230D276F0()
{
  if (*v0)
  {
    return 0x736E6D756C6F63;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_230D27724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_230E698C0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736E6D756C6F63 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230E698C0();

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

uint64_t sub_230D27800(uint64_t a1)
{
  v2 = sub_230D2C0B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D2783C(uint64_t a1)
{
  v2 = sub_230D2C0B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SQLDatabaseTableConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AE88, &qword_230E6D210);
  v11 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v9 - v6;
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D2C0B0();
  sub_230E69A50();
  v14 = 0;
  sub_230E69810();
  if (!v2)
  {
    v12 = v10;
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AE90, &qword_230E6D218);
    sub_230D2C104(&qword_281565F60, sub_230D2C17C, MEMORY[0x277D83948]);
    sub_230E69850();
  }

  return (*(v11 + 8))(v7, v4);
}

uint64_t SQLDatabaseTableConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AE98, &qword_230E6D220);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D2C0B0();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = 0;
  v10 = sub_230E69720();
  v12 = v11;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AE90, &qword_230E6D218);
  v17 = 1;
  sub_230D2C104(&qword_27DB5AEA0, sub_230D2C1D0, MEMORY[0x277D83978]);
  sub_230E69760();
  (*(v6 + 8))(v9, v5);
  v14 = v16[1];
  *a2 = v13;
  a2[1] = v12;
  a2[2] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230D27CD4(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_230E698C0() & 1) == 0)
  {
    return 0;
  }

  return sub_230D260B0(v2, v3);
}

uint64_t SQLDatabaseColumnConfiguration.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SQLDatabaseColumnConfiguration.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SQLDatabaseColumnConfiguration.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 40);
  *(a1 + 16) = v4;
  return sub_230D1D20C(v2, v3, v4);
}

uint64_t SQLDatabaseColumnConfiguration.defaultValue.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_230D0F460(*(v1 + 24), *(v1 + 32), *(v1 + 40));
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  return result;
}

void SQLDatabaseColumnConfiguration.foreignKeyReference.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = *(v1 + 80);
  sub_230D2C224(v2, v3, v4, v5);
}

__n128 SQLDatabaseColumnConfiguration.foreignKeyReference.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_230D0F4FC(*(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72));
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v5;
  *(v1 + 80) = v3;
  return result;
}

void SQLDatabaseColumnConfiguration.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AEB0, &qword_230E6D228);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v22 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D2C268();
  sub_230E69A30();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_230D0F460(0, 0, 255);
    sub_230D0F4FC(0, 0, 0, 0);
  }

  else
  {
    LOBYTE(v39) = 0;
    v10 = sub_230E69720();
    v12 = v11;
    v30 = v10;
    LOBYTE(v33) = 1;
    sub_230D22B38();
    sub_230E69760();
    v13 = v39;
    LOBYTE(v33) = 2;
    sub_230D24B9C();
    sub_230E69700();
    v58 = v13;
    v31 = v39;
    v32 = v40;
    LOBYTE(v13) = v41;
    sub_230D0F460(0, 0, 255);
    LOBYTE(v39) = 3;
    v29 = sub_230E696C0();
    LOBYTE(v39) = 4;
    LODWORD(v28) = sub_230E696C0();
    LOBYTE(v39) = 5;
    LODWORD(v27) = sub_230E696C0();
    v59 = 6;
    sub_230D2C2BC();
    sub_230E69700();
    v14 = v29 & 1;
    v26 = v29 & 1;
    v25 = v28 & 1;
    v29 = v27 & 1;
    (*(v6 + 8))(v9, v5);
    v15 = v53;
    v28 = v53;
    v24 = v54;
    v22 = v55;
    v16 = v56;
    v27 = v56;
    v23 = v57;
    sub_230D0F4FC(0, 0, 0, 0);
    *&v33 = v30;
    *(&v33 + 1) = v12;
    LOBYTE(v34) = v58;
    *(&v34 + 1) = v31;
    *&v35 = v32;
    BYTE8(v35) = v13;
    BYTE9(v35) = v14;
    v17 = v25;
    BYTE10(v35) = v25;
    BYTE11(v35) = v29;
    v18 = v24;
    *&v36 = v15;
    *(&v36 + 1) = v24;
    v19 = v22;
    *&v37 = v22;
    *(&v37 + 1) = v16;
    LOWORD(v16) = v23;
    v38 = v23;
    *(a2 + 80) = v23;
    v20 = v36;
    *(a2 + 32) = v35;
    *(a2 + 48) = v20;
    *(a2 + 64) = v37;
    v21 = v34;
    *a2 = v33;
    *(a2 + 16) = v21;
    sub_230D2C310(&v33, &v39);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v39 = v30;
    v40 = v12;
    v41 = v58;
    v42 = v31;
    v43 = v32;
    v44 = v13;
    v45 = v26;
    v46 = v17;
    v47 = v29;
    v48 = v28;
    v49 = v18;
    v50 = v19;
    v51 = v27;
    v52 = v16;
    sub_230D2C348(&v39);
  }
}

unint64_t sub_230D284F0()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x72616D6972507369;
  if (v1 != 5)
  {
    v3 = 0xD000000000000013;
  }

  v4 = 0x62616C6C754E7369;
  if (v1 != 3)
  {
    v4 = 0x657571696E557369;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1701869940;
  if (v1 != 1)
  {
    v5 = 0x56746C7561666564;
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

uint64_t sub_230D285D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_230D2D41C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_230D285FC(uint64_t a1)
{
  v2 = sub_230D2C268();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D28638(uint64_t a1)
{
  v2 = sub_230D2C268();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SQLDatabaseColumnConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AEC0, &qword_230E6D230);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v37 = *(v1 + 16);
  v6 = *(v1 + 24);
  v29 = *(v1 + 32);
  v30 = v6;
  v28 = *(v1 + 40);
  LODWORD(v6) = *(v1 + 41);
  v25 = *(v1 + 42);
  v26 = v6;
  v24 = *(v1 + 43);
  v7 = *(v1 + 56);
  v27 = *(v1 + 48);
  v8 = *(v1 + 72);
  v23 = *(v1 + 64);
  v21 = v7;
  v22 = v8;
  v9 = *(v1 + 80);
  v10 = a1[3];
  v11 = a1;
  v13 = &v20 - v12;
  __swift_project_boxed_opaque_existential_1(v11, v10);
  sub_230D2C268();
  sub_230E69A50();
  LOBYTE(v32) = 0;
  v14 = v31;
  sub_230E69810();
  if (!v14)
  {
    v15 = v28;
    v17 = v29;
    v16 = v30;
    LODWORD(v31) = v9;
    v18 = v27;
    LOBYTE(v32) = v37;
    v38 = 1;
    sub_230D22834();
    sub_230E69850();
    v32 = v16;
    v33 = v17;
    LOBYTE(v34) = v15;
    v38 = 2;
    sub_230D1D20C(v16, v17, v15);
    sub_230D24888();
    sub_230E697F0();
    sub_230D0F460(v32, v33, v34);
    LOBYTE(v32) = 3;
    sub_230E69820();
    LOBYTE(v32) = 4;
    sub_230E69820();
    LOBYTE(v32) = 5;
    sub_230E69820();
    v32 = v18;
    v33 = v21;
    v34 = v23;
    v35 = v22;
    v36 = v31;
    v38 = 6;
    sub_230D2C224(v18, v21, v23, v22);
    sub_230D2C378();
    sub_230E697F0();
    sub_230D0F4FC(v32, v33, v34, v35);
  }

  return (*(v4 + 8))(v13, v3);
}

ServicesIntelligence::SQLDatabaseValueType_optional __swiftcall SQLDatabaseValueType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230E69680();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SQLDatabaseValueType.rawValue.getter()
{
  v1 = 1651469410;
  v2 = 7630441;
  if (*v0 != 2)
  {
    v2 = 1954047348;
  }

  if (*v0)
  {
    v1 = 0x656C62756F64;
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

uint64_t sub_230D28A90()
{
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230D28B38(uint64_t a1)
{
  sub_230E69100();
}

uint64_t sub_230D28BCC(uint64_t a1)
{
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

void sub_230D28C7C(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1651469410;
  v4 = 0xE300000000000000;
  v5 = 7630441;
  if (*v1 != 2)
  {
    v5 = 1954047348;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x656C62756F64;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_230D28D9C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x65756C6176;
  }

  else
  {
    v3 = 1701869940;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x65756C6176;
  }

  else
  {
    v5 = 1701869940;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_230E698C0();
  }

  return v8 & 1;
}

uint64_t sub_230D28E38()
{
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230D28EB0(uint64_t a1)
{
  sub_230E69100();
}

uint64_t sub_230D28F14(uint64_t a1)
{
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230D28F88@<X0>(char *a2@<X8>)
{
  v3 = sub_230E69680();

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

void sub_230D28FE8(uint64_t *a1@<X8>)
{
  v2 = 1701869940;
  if (*v1)
  {
    v2 = 0x65756C6176;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_230D2901C()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_230D2904C@<X0>(char *a3@<X8>)
{
  v4 = sub_230E69680();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_230D290B0(uint64_t a1)
{
  v2 = sub_230D2C3CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D290EC(uint64_t a1)
{
  v2 = sub_230D2C3CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SQLDatabaseValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AED0, &qword_230E6D238);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v31 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D2C3CC();
  sub_230E69A30();
  if (!v2)
  {
    LOBYTE(v33) = 0;
    v10 = sub_230E69720();
    v12 = v10;
    v13 = v11;
    v14 = v10 == 1651469410 && v11 == 0xE400000000000000;
    if (v14 || (sub_230E698C0() & 1) != 0)
    {

      v35 = 1;
      sub_230D2C420();
      sub_230E69700();
      (*(v6 + 8))(v9, v5);
      v15 = 0;
      v16 = v33;
      v17 = v34;
LABEL_11:
      *a2 = v16;
      *(a2 + 8) = v17;
      *(a2 + 16) = v15;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    v19 = v12 == 0x656C62756F64 && v13 == 0xE600000000000000;
    if (v19 || (sub_230E698C0() & 1) != 0)
    {

      LOBYTE(v33) = 1;
      v16 = sub_230E696D0();
      v21 = v20;
      (*(v6 + 8))(v9, v5);
      v17 = v21 & 1;
      v15 = 1;
      goto LABEL_11;
    }

    v22 = v12 == 7630441 && v13 == 0xE300000000000000;
    if (v22 || (sub_230E698C0() & 1) != 0)
    {

      LOBYTE(v33) = 1;
      v16 = sub_230E69710();
      v24 = v23;
      (*(v6 + 8))(v9, v5);
      v17 = v24 & 1;
      v15 = 2;
      goto LABEL_11;
    }

    if (v12 == 1954047348 && v13 == 0xE400000000000000)
    {
    }

    else
    {
      v26 = sub_230E698C0();

      if ((v26 & 1) == 0)
      {
        v27 = sub_230E69580();
        swift_allocError();
        v32 = v28;
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        sub_230E69A10();
        v29 = v32;
        sub_230E69570();
        (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84168], v27);
        swift_willThrow();
        (*(v6 + 8))(v9, v5);
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }
    }

    LOBYTE(v33) = 1;
    v16 = sub_230E696B0();
    v17 = v30;
    (*(v6 + 8))(v9, v5);
    v15 = 3;
    goto LABEL_11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t SQLDatabaseValue.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AEE8, &qword_230E6D240);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v12 - v7;
  v9 = *v1;
  v12 = v1[1];
  v13 = v9;
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D2C3CC();
  sub_230E69A50();
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      LOBYTE(v14) = 0;
      sub_230E69810();
      if (!v2)
      {
        LOBYTE(v14) = 1;
        sub_230E69800();
      }
    }

    else
    {
      LOBYTE(v14) = 0;
      sub_230E69810();
      if (!v2)
      {
        LOBYTE(v14) = 1;
        sub_230E697B0();
      }
    }
  }

  else if (v10)
  {
    LOBYTE(v14) = 0;
    sub_230E69810();
    if (!v2)
    {
      LOBYTE(v14) = 1;
      sub_230E697C0();
    }
  }

  else
  {
    LOBYTE(v14) = 0;
    sub_230E69810();
    if (!v2)
    {
      v14 = v13;
      v15 = v12;
      v16 = 1;
      sub_230D2C474();
      sub_230E697F0();
    }
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t ForeignKeyReference.referencedTable.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ForeignKeyReference.referencedTable.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ForeignKeyReference.referencedColumn.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ForeignKeyReference.referencedColumn.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void __swiftcall ForeignKeyReference.init(referencedTable:referencedColumn:onDelete:onUpdate:)(ServicesIntelligence::ForeignKeyReference *__return_ptr retstr, Swift::String referencedTable, Swift::String referencedColumn, ServicesIntelligence::ForeignKeyAction onDelete, ServicesIntelligence::ForeignKeyAction onUpdate)
{
  v5 = *onDelete;
  v6 = *onUpdate;
  retstr->referencedTable = referencedTable;
  retstr->referencedColumn = referencedColumn;
  retstr->onDelete = v5;
  retstr->onUpdate = v6;
}

unint64_t sub_230D29A48()
{
  v1 = 0x636E657265666572;
  v2 = 0x6574656C65446E6FLL;
  if (*v0 != 2)
  {
    v2 = 0x6574616470556E6FLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_230D29AD4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_230D2D67C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_230D29AFC(uint64_t a1)
{
  v2 = sub_230D2C4C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D29B38(uint64_t a1)
{
  v2 = sub_230D2C4C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ForeignKeyReference.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AEF8, &qword_230E6D248);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v13 - v6;
  v8 = *(v1 + 16);
  v15 = *(v1 + 24);
  v16 = v8;
  LODWORD(v8) = *(v1 + 32);
  v13 = *(v1 + 33);
  v14 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D2C4C8();
  sub_230E69A50();
  v23 = 0;
  v9 = v17;
  sub_230E69810();
  if (!v9)
  {
    v12 = v13;
    v11 = v14;
    v22 = 1;
    sub_230E69810();
    v21 = v11;
    v20 = 2;
    sub_230D2C51C();
    sub_230E69850();
    v19 = v12;
    v18 = 3;
    sub_230E69850();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t ForeignKeyReference.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AF10, &qword_230E6D250);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D2C4C8();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = 0;
  v10 = sub_230E69720();
  v22 = v11;
  v27 = 1;
  v19 = sub_230E69720();
  v21 = v12;
  v25 = 2;
  v20 = sub_230D2C570();
  sub_230E69760();
  v18 = v26;
  v23 = 3;
  sub_230E69760();
  (*(v6 + 8))(v9, v5);
  v14 = v24;
  v16 = v21;
  v15 = v22;
  *a2 = v10;
  *(a2 + 8) = v15;
  *(a2 + 16) = v19;
  *(a2 + 24) = v16;
  *(a2 + 32) = v18;
  *(a2 + 33) = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

ServicesIntelligence::ForeignKeyAction_optional __swiftcall ForeignKeyAction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230E69680();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ForeignKeyAction.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x4F49544341204F4ELL;
  v3 = 0x45444143534143;
  v4 = 0x4C4C554E20544553;
  if (v1 != 3)
  {
    v4 = 0x4146454420544553;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x5443495254534552;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_230D2A1C0()
{
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230D2A2B0(uint64_t a1)
{
  sub_230E69100();
}

uint64_t sub_230D2A38C(uint64_t a1)
{
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

void sub_230D2A484(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE90000000000004ELL;
  v4 = 0x4F49544341204F4ELL;
  v5 = 0xE700000000000000;
  v6 = 0x45444143534143;
  v7 = 0xE800000000000000;
  v8 = 0x4C4C554E20544553;
  if (v2 != 3)
  {
    v8 = 0x4146454420544553;
    v7 = 0xEB00000000544C55;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x5443495254534552;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t SQLDatabaseConfiguration.path.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v85[2] = *MEMORY[0x277D85DE8];
  v5 = sub_230E687F0();
  v82 = *(v5 - 8);
  v83 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_230E68860();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v81 = &v68 - v17;
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v68 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D8C0, &qword_230E6C210);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v24 = &v68 - v23;
  v25 = *(type metadata accessor for SQLDatabaseConfiguration(0) + 32);
  v84 = v3;
  sub_230D2C5C4(v3 + v25, v24);
  if ((*(v10 + 48))(v24, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v24, v9);
  }

  v80 = a1;
  sub_230D2D9F8(v24, &qword_27DB5D8C0, &qword_230E6C210);
  v26 = objc_opt_self();
  v27 = [v26 defaultManager];
  sub_230DA3FDC();
  v28 = v2;

  if (!v2)
  {
    v77 = v9;
    v78 = v26;
    v79 = v20;
    v74 = 0;
    v29 = *(v84 + 16);
    v76 = v10;
    v30 = v14;
    v31 = v8;
    if (v29 > 4)
    {
      v32 = 0xE600000000000000;
      v41 = 0x6E6F6D6D6F63;
      v42 = 0x65676175676E616CLL;
      if (v29 != 8)
      {
        v42 = 0x7974697275636573;
      }

      if (v29 != 7)
      {
        v41 = v42;
        v32 = 0xE800000000000000;
      }

      v43 = 0xE800000000000000;
      v44 = 0x7374736163646F70;
      if (v29 != 5)
      {
        v44 = 0x6F65646976;
        v43 = 0xE500000000000000;
      }

      v45 = v29 <= 6;
      if (v29 <= 6)
      {
        v39 = v44;
      }

      else
      {
        v39 = v41;
      }

      if (v45)
      {
        v32 = v43;
      }
    }

    else
    {
      v32 = 0xE800000000000000;
      v33 = 0x6C616E7265746E69;
      v34 = 0xE500000000000000;
      v35 = 0x736B6F6F62;
      v36 = 0xE700000000000000;
      v37 = 0x7373656E746966;
      if (v29 != 3)
      {
        v37 = 0x636973756DLL;
        v36 = 0xE500000000000000;
      }

      if (v29 != 2)
      {
        v35 = v37;
        v34 = v36;
      }

      if (v29)
      {
        v33 = 1936748641;
        v32 = 0xE400000000000000;
      }

      v38 = v29 <= 1;
      if (v29 <= 1)
      {
        v39 = v33;
      }

      else
      {
        v39 = v35;
      }

      if (!v38)
      {
        v32 = v34;
      }
    }

    v47 = v82;
    v46 = v83;
    v82 = v32;
    v85[0] = v39;
    v85[1] = v32;
    v48 = *MEMORY[0x277CC91D8];
    v49 = v47[13];
    v70 = v49;
    v49(v31, v48, v83);
    v50 = sub_230D0D278();
    v75 = v30;
    sub_230E68840();
    v51 = v47[1];
    v51(v31, v46);

    strcpy(v85, "SQLDatabases");
    BYTE5(v85[1]) = 0;
    HIWORD(v85[1]) = -5120;
    v72 = v48;
    v73 = (v47 + 13);
    v49(v31, v48, v46);
    v52 = v81;
    v71 = v50;
    v53 = v75;
    sub_230E68840();
    v69 = v51;
    v51(v31, v46);
    v54 = v77;
    v82 = *(v76 + 8);
    (v82)(v53, v77);
    v55 = [v78 defaultManager];
    v56 = v52;
    v57 = sub_230E68800();
    v85[0] = 0;
    LODWORD(v52) = [v55 createDirectoryAtURL:v57 withIntermediateDirectories:1 attributes:0 error:v85];

    v58 = v85[0];
    if (v52)
    {
      v59 = *(v84 + 8);
      v85[0] = *v84;
      v85[1] = v59;
      v60 = v58;

      MEMORY[0x23191DA00](6448174, 0xE300000000000000);
      v61 = v83;
      v70(v31, v72, v83);
      sub_230E68850();
      v69(v31, v61);

      v62 = v56;
      v63 = v82;
      (v82)(v62, v54);
      return v63(v79, v54);
    }

    v64 = v85[0];
    v28 = sub_230E687E0();

    swift_willThrow();
    v65 = v56;
    v66 = v82;
    (v82)(v65, v54);
    v66(v79, v54);
  }

  sub_230D0D224();
  swift_allocError();
  *v67 = 0;
  *(v67 + 8) = 0;
  *(v67 + 16) = 0;
  swift_willThrow();
  return MEMORY[0x23191E910](v28);
}

uint64_t sub_230D2ACC4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
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
    v10 = sub_230E68730();
    if (v10)
    {
      v11 = sub_230E68750();
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
      result = sub_230E68740();
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
  v10 = sub_230E68730();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_230E68750();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_230E68740();
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

uint64_t sub_230D2AEF4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
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
    v10 = sub_230D2B084(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_230D0F4A8(a3, a4);
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
  sub_230D2ACC4(v13, a3, a4, &v12);
  v10 = v4;
  sub_230D0F4A8(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_230D2B084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_230E68730();
  v11 = result;
  if (result)
  {
    result = sub_230E68750();
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

  sub_230E68740();
  sub_230D2ACC4(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_230D2B13C(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_230D0DD0C(a3, a4);
          return sub_230D2AEF4(v13, a2, a3, a4) & 1;
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

BOOL _s20ServicesIntelligence16SQLDatabaseValueO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (v7 != 3)
      {

        goto LABEL_21;
      }

      if (v3)
      {
        if (v6)
        {
          if (v2 == v5 && v3 == v6)
          {
            sub_230D0DCD8(*a1, v3, 3);
            sub_230D0DCD8(v2, v3, 3);
            sub_230D0F474(v2, v3, 3);
            sub_230D0F474(v2, v3, 3);
            return 1;
          }

          v12 = sub_230E698C0();
          sub_230D0DCD8(v5, v6, 3);
          sub_230D0DCD8(v2, v3, 3);
          sub_230D0F474(v2, v3, 3);
          sub_230D0F474(v5, v6, 3);
          return (v12 & 1) != 0;
        }

        sub_230D0DCD8(*a2, 0, 3);
        sub_230D0DCD8(v5, 0, 3);
        sub_230D0DCD8(v2, v3, 3);
        sub_230D0F474(v2, v3, 3);
      }

      else
      {
        sub_230D0DCD8(*a2, *(a2 + 8), 3);
        sub_230D0DCD8(v5, v6, 3);
        sub_230D0DCD8(v2, 0, 3);
        sub_230D0F474(v2, 0, 3);
        sub_230D0F474(v5, v6, 3);
        if (!v6)
        {
          return 1;
        }
      }

      v9 = v5;
      v10 = v6;
      v11 = 3;
      goto LABEL_22;
    }

    if (v7 != 2)
    {
      goto LABEL_21;
    }

    sub_230D0F474(*a1, v3, 2);
    sub_230D0F474(v5, v6, 2);
    if ((v3 & 1) == 0)
    {
      return !(v6 & 1 | (v2 != v5));
    }

    return (v6 & 1) != 0;
  }

  if (*(a1 + 16))
  {
    if (v7 != 1)
    {
      goto LABEL_21;
    }

    sub_230D0F474(*a1, v3, 1);
    sub_230D0F474(v5, v6, 1);
    if ((v3 & 1) == 0)
    {
      return (v6 & 1) == 0 && *&v2 == *&v5;
    }

    return (v6 & 1) != 0;
  }

  if (*(a2 + 16))
  {
    sub_230D0DCF8(*a1, v3);
LABEL_21:
    sub_230D0DCD8(v5, v6, v7);
    sub_230D0F474(v2, v3, v4);
    v9 = v5;
    v10 = v6;
    v11 = v7;
LABEL_22:
    sub_230D0F474(v9, v10, v11);
    return 0;
  }

  if (v3 >> 60 == 15)
  {
    sub_230D0DCD8(*a1, v3, 0);
    sub_230D0DCD8(v5, v6, 0);
    sub_230D0DCD8(v5, v6, 0);
    sub_230D0DCD8(v2, v3, 0);
    sub_230D0F474(v2, v3, 0);
    sub_230D0F474(v5, v6, 0);
    if (v6 >> 60 == 15)
    {
      sub_230D0F494(v2, v3);
      return 1;
    }

LABEL_34:
    sub_230D0F494(v2, v3);
    sub_230D0F494(v5, v6);
    return 0;
  }

  if (v6 >> 60 == 15)
  {
    sub_230D0DCD8(*a1, v3, 0);
    sub_230D0DCD8(v5, v6, 0);
    sub_230D0DCD8(v5, v6, 0);
    sub_230D0DCD8(v2, v3, 0);
    sub_230D0F474(v2, v3, 0);
    sub_230D0F474(v5, v6, 0);
    goto LABEL_34;
  }

  sub_230D0DCD8(*a2, *(a2 + 8), 0);
  sub_230D0DCD8(v2, v3, 0);
  sub_230D0DCD8(v2, v3, 0);
  sub_230D0DCD8(v5, v6, 0);
  sub_230D0DCD8(v5, v6, 0);
  sub_230D0DCD8(v2, v3, 0);
  v13 = sub_230D2B13C(v2, v3, v5, v6);
  sub_230D0F494(v5, v6);
  sub_230D0F474(v5, v6, 0);
  sub_230D0F474(v2, v3, 0);
  sub_230D0F474(v2, v3, 0);
  sub_230D0F474(v5, v6, 0);
  sub_230D0F494(v2, v3);
  return v13;
}

uint64_t _s20ServicesIntelligence19ForeignKeyReferenceV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 33);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_230E698C0() & 1) == 0 || (v2 != v6 || v3 != v7) && (sub_230E698C0() & 1) == 0 || (sub_230D0BA50(v4, v8) & 1) == 0)
  {
    return 0;
  }

  return sub_230D0BA50(v5, v9);
}

BOOL _s20ServicesIntelligence30SQLDatabaseColumnConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = a1[3];
  v3 = a1[4];
  v5 = *(a1 + 40);
  v34 = *(a1 + 42);
  v35 = *(a1 + 41);
  v28 = a1[6];
  v27 = a1[7];
  v29 = a1[8];
  v30 = a1[9];
  v31 = *(a1 + 40);
  v6 = *(a2 + 16);
  v8 = *(a2 + 24);
  v7 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 41);
  v11 = *(a2 + 42);
  v32 = *(a2 + 43);
  v33 = *(a1 + 43);
  v22 = *(a2 + 56);
  v23 = *(a2 + 48);
  v24 = *(a2 + 64);
  v25 = *(a2 + 72);
  v26 = *(a2 + 80);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_230E698C0() & 1) == 0 || (sub_230D0B818(v2, v6) & 1) == 0)
  {
    return 0;
  }

  if (v5 == 255)
  {
    sub_230D1D20C(v4, v3, 255);
    if (v9 == 255)
    {
      sub_230D1D20C(v8, v7, 255);
      sub_230D0F460(v4, v3, 255);
      result = 0;
      if (v35 != v10)
      {
        return result;
      }

      goto LABEL_15;
    }

    sub_230D1D20C(v8, v7, v9);
LABEL_13:
    sub_230D0F460(v4, v3, v5);
    sub_230D0F460(v8, v7, v9);
    return 0;
  }

  v41 = v4;
  v42 = v3;
  LOBYTE(v43) = v5;
  if (v9 == 255)
  {
    sub_230D1D20C(v4, v3, v5);
    sub_230D1D20C(v8, v7, 255);
    sub_230D1D20C(v4, v3, v5);
    sub_230D0F474(v4, v3, v5);
    goto LABEL_13;
  }

  v36 = v8;
  v37 = v7;
  LOBYTE(v38) = v9;
  sub_230D1D20C(v4, v3, v5);
  sub_230D1D20C(v8, v7, v9);
  sub_230D1D20C(v4, v3, v5);
  v12 = _s20ServicesIntelligence16SQLDatabaseValueO2eeoiySbAC_ACtFZ_0(&v41, &v36);
  sub_230D0F474(v36, v37, v38);
  sub_230D0F474(v41, v42, v43);
  sub_230D0F460(v4, v3, v5);
  result = 0;
  if (v12 && ((v35 ^ v10) & 1) == 0)
  {
LABEL_15:
    if ((v34 ^ v11) & 1) != 0 || ((v33 ^ v32))
    {
      return result;
    }

    if (v27)
    {
      v15 = v28;
      v14 = v29;
      v41 = v28;
      v42 = v27;
      v16 = v30;
      v43 = v29;
      v44 = v30;
      v45 = v31;
      v18 = v24;
      v17 = v25;
      v20 = v22;
      v19 = v23;
      if (v22)
      {
        v36 = v23;
        v37 = v22;
        v38 = v24;
        v39 = v25;
        v40 = v26;
        sub_230D2C224(v28, v27, v29, v30);
        sub_230D2C224(v23, v22, v24, v25);
        sub_230D2C224(v28, v27, v29, v30);
        v21 = _s20ServicesIntelligence19ForeignKeyReferenceV2eeoiySbAC_ACtFZ_0(&v41, &v36);

        sub_230D0F4FC(v28, v27, v29, v30);
        return (v21 & 1) != 0;
      }

      sub_230D2C224(v28, v27, v29, v30);
      sub_230D2C224(v23, 0, v24, v25);
      sub_230D2C224(v28, v27, v29, v30);
    }

    else
    {
      v15 = v28;
      v14 = v29;
      v16 = v30;
      sub_230D2C224(v28, 0, v29, v30);
      v18 = v24;
      v17 = v25;
      v20 = v22;
      v19 = v23;
      if (!v22)
      {
        sub_230D2C224(v23, 0, v24, v25);
        sub_230D0F4FC(v28, 0, v29, v30);
        return 1;
      }

      sub_230D2C224(v23, v22, v24, v25);
    }

    sub_230D0F4FC(v15, v27, v14, v16);
    sub_230D0F4FC(v19, v20, v18, v17);
    return 0;
  }

  return result;
}

uint64_t _s20ServicesIntelligence24SQLDatabaseConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_230E68860();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D8C0, &qword_230E6C210);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AFA0, &unk_230E6E0B0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v23 - v15;
  if (*a1 != *a2 && (sub_230E698C0() & 1) == 0 || (sub_230D0B544(*(a1 + 16), *(a2 + 16)) & 1) == 0 || (sub_230D267E0(*(a1 + 24), *(a2 + 24)) & 1) == 0)
  {
    v20 = 0;
    return v20 & 1;
  }

  v17 = *(type metadata accessor for SQLDatabaseConfiguration(0) + 32);
  v18 = *(v13 + 48);
  sub_230D2C5C4(a1 + v17, v16);
  sub_230D2C5C4(a2 + v17, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_230D2C5C4(v16, v12);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v18], v4);
      sub_230D2DA58(&qword_27DB5AFA8, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
      v20 = sub_230E69020();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_230D2D9F8(v16, &qword_27DB5D8C0, &qword_230E6C210);
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_12;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
LABEL_12:
    sub_230D2D9F8(v16, &qword_27DB5AFA0, &unk_230E6E0B0);
    v20 = 0;
    return v20 & 1;
  }

  sub_230D2D9F8(v16, &qword_27DB5D8C0, &qword_230E6C210);
  v20 = 1;
  return v20 & 1;
}

uint64_t sub_230D2BFE4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5AE68, &qword_230E6D200);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_230D2C05C()
{
  result = qword_2815660D0;
  if (!qword_2815660D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815660D0);
  }

  return result;
}

unint64_t sub_230D2C0B0()
{
  result = qword_2815660E8;
  if (!qword_2815660E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815660E8);
  }

  return result;
}

uint64_t sub_230D2C104(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5AE90, &qword_230E6D218);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_230D2C17C()
{
  result = qword_2815660B0;
  if (!qword_2815660B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815660B0);
  }

  return result;
}

unint64_t sub_230D2C1D0()
{
  result = qword_27DB5AEA8;
  if (!qword_27DB5AEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AEA8);
  }

  return result;
}

void sub_230D2C224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

unint64_t sub_230D2C268()
{
  result = qword_2815660C8;
  if (!qword_2815660C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815660C8);
  }

  return result;
}

unint64_t sub_230D2C2BC()
{
  result = qword_27DB5AEB8;
  if (!qword_27DB5AEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AEB8);
  }

  return result;
}

unint64_t sub_230D2C378()
{
  result = qword_27DB5AEC8;
  if (!qword_27DB5AEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AEC8);
  }

  return result;
}

unint64_t sub_230D2C3CC()
{
  result = qword_27DB5AED8;
  if (!qword_27DB5AED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AED8);
  }

  return result;
}

unint64_t sub_230D2C420()
{
  result = qword_27DB5AEE0;
  if (!qword_27DB5AEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AEE0);
  }

  return result;
}

unint64_t sub_230D2C474()
{
  result = qword_27DB5AEF0;
  if (!qword_27DB5AEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AEF0);
  }

  return result;
}

unint64_t sub_230D2C4C8()
{
  result = qword_27DB5AF00;
  if (!qword_27DB5AF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AF00);
  }

  return result;
}

unint64_t sub_230D2C51C()
{
  result = qword_27DB5AF08;
  if (!qword_27DB5AF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AF08);
  }

  return result;
}

unint64_t sub_230D2C570()
{
  result = qword_27DB5AF18;
  if (!qword_27DB5AF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AF18);
  }

  return result;
}

uint64_t sub_230D2C5C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D8C0, &qword_230E6C210);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_230D2C634(void *a1)
{
  a1[1] = sub_230D2DA58(&qword_27DB5AC40, type metadata accessor for SQLDatabaseConfiguration, &protocol conformance descriptor for SQLDatabaseConfiguration);
  a1[2] = sub_230D2DA58(&qword_281566328, type metadata accessor for SQLDatabaseConfiguration, &protocol conformance descriptor for SQLDatabaseConfiguration);
  result = sub_230D2DA58(&qword_27DB5AF20, type metadata accessor for SQLDatabaseConfiguration, &protocol conformance descriptor for SQLDatabaseConfiguration);
  a1[3] = result;
  return result;
}

unint64_t sub_230D2C6E4()
{
  result = qword_27DB5AF28;
  if (!qword_27DB5AF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AF28);
  }

  return result;
}

unint64_t sub_230D2C73C()
{
  result = qword_27DB5AF30;
  if (!qword_27DB5AF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AF30);
  }

  return result;
}

unint64_t sub_230D2C794()
{
  result = qword_27DB5AF38;
  if (!qword_27DB5AF38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5AF40, &qword_230E6D6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AF38);
  }

  return result;
}

void sub_230D2C820(uint64_t a1)
{
  sub_230D2C8CC();
  if (v1 <= 0x3F)
  {
    sub_230D2C91C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_230D2C8CC()
{
  if (!qword_281565F70)
  {
    v0 = sub_230E692C0();
    if (!v1)
    {
      atomic_store(v0, &qword_281565F70);
    }
  }
}

void sub_230D2C91C(uint64_t a1)
{
  if (!qword_281566890)
  {
    sub_230E68860();
    v1 = sub_230E69450();
    if (!v2)
    {
      atomic_store(v1, &qword_281566890);
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_230D2C988(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_230D2C9D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
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

uint64_t get_enum_tag_for_layout_string_20ServicesIntelligence16SQLDatabaseValueOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 3)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_20ServicesIntelligence19ForeignKeyReferenceVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy82_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_230D2CAC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 82))
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

uint64_t sub_230D2CB08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 82) = 1;
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

    *(result + 82) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_230D2CB80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_230D2CBC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_230D2CC30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_230D2CC78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_230D2CD44()
{
  result = qword_27DB5AF48;
  if (!qword_27DB5AF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AF48);
  }

  return result;
}

unint64_t sub_230D2CD9C()
{
  result = qword_27DB5AF50;
  if (!qword_27DB5AF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AF50);
  }

  return result;
}

unint64_t sub_230D2CDF4()
{
  result = qword_27DB5AF58;
  if (!qword_27DB5AF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AF58);
  }

  return result;
}

unint64_t sub_230D2CE4C()
{
  result = qword_27DB5AF60;
  if (!qword_27DB5AF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AF60);
  }

  return result;
}

unint64_t sub_230D2CEA4()
{
  result = qword_27DB5AF68;
  if (!qword_27DB5AF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AF68);
  }

  return result;
}

unint64_t sub_230D2CEFC()
{
  result = qword_27DB5AF70;
  if (!qword_27DB5AF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AF70);
  }

  return result;
}

unint64_t sub_230D2CF54()
{
  result = qword_27DB5AF78;
  if (!qword_27DB5AF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AF78);
  }

  return result;
}

unint64_t sub_230D2CFAC()
{
  result = qword_27DB5AF80;
  if (!qword_27DB5AF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AF80);
  }

  return result;
}

unint64_t sub_230D2D004()
{
  result = qword_27DB5AF88;
  if (!qword_27DB5AF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AF88);
  }

  return result;
}

unint64_t sub_230D2D05C()
{
  result = qword_2815660B8;
  if (!qword_2815660B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815660B8);
  }

  return result;
}

unint64_t sub_230D2D0B4()
{
  result = qword_2815660C0;
  if (!qword_2815660C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815660C0);
  }

  return result;
}

unint64_t sub_230D2D10C()
{
  result = qword_2815660D8;
  if (!qword_2815660D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815660D8);
  }

  return result;
}

unint64_t sub_230D2D164()
{
  result = qword_2815660E0;
  if (!qword_2815660E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815660E0);
  }

  return result;
}

unint64_t sub_230D2D1BC()
{
  result = qword_281566330;
  if (!qword_281566330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566330);
  }

  return result;
}

unint64_t sub_230D2D214()
{
  result = qword_281566338;
  if (!qword_281566338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566338);
  }

  return result;
}

uint64_t sub_230D2D268(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73616C4361746164 && a2 == 0xE900000000000073 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73656C626174 && a2 == 0xE600000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7265764F68746170 && a2 == 0xEC00000065646972)
  {

    return 4;
  }

  else
  {
    v6 = sub_230E698C0();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_230D2D41C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x56746C7561666564 && a2 == 0xEC00000065756C61 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x62616C6C754E7369 && a2 == 0xEA0000000000656CLL || (sub_230E698C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x657571696E557369 && a2 == 0xE800000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x72616D6972507369 && a2 == 0xEC00000079654B79 || (sub_230E698C0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000230E80FD0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_230E698C0();

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

uint64_t sub_230D2D67C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636E657265666572 && a2 == 0xEF656C6261546465;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000230E80FF0 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574656C65446E6FLL && a2 == 0xE800000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574616470556E6FLL && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_230E698C0();

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

unint64_t sub_230D2D7F0()
{
  result = qword_27DB5AF90;
  if (!qword_27DB5AF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AF90);
  }

  return result;
}

unint64_t sub_230D2D844()
{
  result = qword_2815664D0;
  if (!qword_2815664D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815664D0);
  }

  return result;
}

uint64_t sub_230D2D9F8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_230D2DA58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t UpsertIntoSQLDatabaseRequest.init(tableName:data:fieldsToUpdateOnConflict:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t UpsertIntoSQLDatabaseRequest.tableName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t UpsertIntoSQLDatabaseRequest.tableName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t UpsertIntoSQLDatabaseRequest.data.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t UpsertIntoSQLDatabaseRequest.fieldsToUpdateOnConflict.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

unint64_t sub_230D2DBFC()
{
  v1 = 1635017060;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D614E656C626174;
  }
}

uint64_t sub_230D2DC58@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_230D2EBA0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_230D2DC80(uint64_t a1)
{
  v2 = sub_230D2DF10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D2DCBC(uint64_t a1)
{
  v2 = sub_230D2DF10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UpsertIntoSQLDatabaseRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AFB0, &unk_230E6E0C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v12 - v6;
  v8 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D2DF10();
  sub_230E69A50();
  LOBYTE(v16) = 0;
  v9 = v14;
  sub_230E69810();
  if (!v9)
  {
    v10 = v12;
    v16 = v13;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC10, &unk_230E6CAF0);
    sub_230D247CC();
    sub_230E69850();
    v16 = v10;
    v15 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A6B0, &qword_230E72AC0);
    sub_230D0AD9C(&qword_27DB5A6C0, MEMORY[0x277D837D8], MEMORY[0x277D83B50]);
    sub_230E697F0();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_230D2DF10()
{
  result = qword_27DB5AFB8;
  if (!qword_27DB5AFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AFB8);
  }

  return result;
}

uint64_t UpsertIntoSQLDatabaseRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AFC0, &qword_230E6E0D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D2DF10();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v20) = 0;
  v10 = sub_230E69720();
  v12 = v11;
  v18 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC10, &unk_230E6CAF0);
  v19 = 1;
  sub_230D24A5C();
  sub_230E69760();
  v17 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A6B0, &qword_230E72AC0);
  v19 = 2;
  sub_230D0AD9C(qword_27DB5A6C8, MEMORY[0x277D83808], MEMORY[0x277D83B70]);
  sub_230E69700();
  (*(v6 + 8))(v9, v5);
  v13 = v20;
  v14 = v17;
  *a2 = v18;
  a2[1] = v12;
  a2[2] = v14;
  a2[3] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230D2E2D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65737365636F7270 && a2 == 0xEE00746E756F4364)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_230E698C0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_230D2E368(uint64_t a1)
{
  v2 = sub_230D2E518();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230D2E3A4(uint64_t a1)
{
  v2 = sub_230D2E518();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UpsertIntoSQLDatabaseResponse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AFC8, &qword_230E6E0D8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D2E518();
  sub_230E69A50();
  sub_230E69860();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_230D2E518()
{
  result = qword_27DB5AFD0;
  if (!qword_27DB5AFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AFD0);
  }

  return result;
}

uint64_t UpsertIntoSQLDatabaseResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AFD8, &qword_230E6E0E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D2E518();
  sub_230E69A30();
  if (!v2)
  {
    v10 = sub_230E69770();
    (*(v6 + 8))(v9, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230D2E6D8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AFC8, &qword_230E6E0D8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230D2E518();
  sub_230E69A50();
  sub_230E69860();
  return (*(v3 + 8))(v6, v2);
}

uint64_t getEnumTagSinglePayload for DatabaseType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DatabaseType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_230D2E994()
{
  result = qword_27DB5AFE0;
  if (!qword_27DB5AFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AFE0);
  }

  return result;
}

unint64_t sub_230D2E9EC()
{
  result = qword_27DB5AFE8;
  if (!qword_27DB5AFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AFE8);
  }

  return result;
}

unint64_t sub_230D2EA44()
{
  result = qword_27DB5AFF0;
  if (!qword_27DB5AFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AFF0);
  }

  return result;
}

unint64_t sub_230D2EA9C()
{
  result = qword_27DB5AFF8;
  if (!qword_27DB5AFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5AFF8);
  }

  return result;
}

unint64_t sub_230D2EAF4()
{
  result = qword_27DB5B000;
  if (!qword_27DB5B000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B000);
  }

  return result;
}