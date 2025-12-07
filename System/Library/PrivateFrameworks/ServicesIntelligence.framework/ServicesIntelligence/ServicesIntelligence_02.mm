unint64_t sub_230D2EB4C()
{
  result = qword_27DB5B008;
  if (!qword_27DB5B008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5B008);
  }

  return result;
}

uint64_t sub_230D2EBA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E656C626174 && a2 == 0xE900000000000065;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000230E81010 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_230E698C0();

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

uint64_t ServicesIntelligenceProvider.getSQLDatabaseClient(domain:name:requestContext:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 120) = a3;
  *(v5 + 128) = v4;
  *(v5 + 112) = a2;
  v8 = sub_230E68D80();
  *(v5 + 136) = v8;
  *(v5 + 144) = *(v8 - 8);
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 653) = *a1;
  v9 = *(a4 + 16);
  *(v5 + 160) = *a4;
  *(v5 + 176) = v9;
  *(v5 + 192) = *(a4 + 32);

  return MEMORY[0x2822009F8](sub_230D2EDE0, v4, 0);
}

uint64_t sub_230D2EDE0()
{
  v31 = v0;
  v30[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 176);
  if (v1)
  {
    v3 = *(v0 + 184);
    v2 = *(v0 + 192);
    v5 = *(v0 + 160);
    v4 = *(v0 + 168);
    *(v0 + 208) = v1;
    *(v0 + 216) = v2;
    *(v0 + 16) = v5;
    *(v0 + 24) = v4;
    *(v0 + 32) = v1;
    *(v0 + 40) = v3 & 1;
    v29 = v3 >> 8;
    *(v0 + 41) = BYTE1(v3);
    *(v0 + 48) = v2;

    sub_230D0585C(v5, v4, v1, v3, v2);
    sub_230E68D70();

    v6 = sub_230E68D60();
    v7 = sub_230E693E0();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v30[0] = v28;
      *v8 = 136315650;
      *(v8 + 4) = sub_230D7E620(0xD000000000000014, 0x8000000230E805F0, v30);
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_230D7E620(v4, v1, v30);
      *(v8 + 22) = 2080;
      v9 = RequestType.rawValue.getter();
      MEMORY[0x23191DA00](v9);

      v10 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v30);

      *(v8 + 24) = v10;
      _os_log_impl(&dword_230D02000, v6, v7, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v8, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23191EAE0](v28, -1, -1);
      MEMORY[0x23191EAE0](v8, -1, -1);
    }

    if (v3 & 1) != 0 && ((v11 = RequestType.rawValue.getter(), v13 = v12, , LOBYTE(v11) = sub_230D33FDC(v11, v13, v2), , , (v11) || v29 >= 2u))
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
      v18 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 272), (v0 + 644));
      *(v0 + 648) = v18;
      v19 = 0.0;
      if (!v18)
      {
        v20 = *(v0 + 320);
        v21 = *(v0 + 392);
        v22 = __CFADD__(v20, v21);
        v23 = v20 + v21;
        if (v22)
        {
          __break(1u);
        }

        v19 = vcvtd_n_f64_u64(v23, 0x14uLL);
      }

      *(v0 + 248) = v19;
      *(v0 + 104) = 0;
      v14 = swift_task_alloc();
      *(v0 + 256) = v14;
      *v14 = v0;
      v15 = sub_230D2FA20;
    }

    else
    {
      v14 = swift_task_alloc();
      *(v0 + 232) = v14;
      *v14 = v0;
      v15 = sub_230D2F8C8;
    }

    v14[1] = v15;
    v24 = *(v0 + 120);
    v25 = *(v0 + 128);
    v26 = *(v0 + 112);
    v27 = *(v0 + 653);

    return sub_230D2FFF0(v0 + 96, v27, v26, v24, v25, v0 + 16);
  }

  else
  {
    *(v0 + 652) = 16;
    v16 = swift_task_alloc();
    *(v0 + 200) = v16;
    *v16 = v0;
    v16[1] = sub_230D2F2EC;

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 652), 0, 0);
  }
}

uint64_t sub_230D2F2EC()
{
  v1 = *(*v0 + 128);

  return MEMORY[0x2822009F8](sub_230D2F428, v1, 0);
}

uint64_t sub_230D2F428()
{
  v39 = v0;
  v38[1] = *MEMORY[0x277D85DE8];
  *(v0 + 16) = *(v0 + 56);
  v1 = v0 + 16;
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v6 = *(v0 + 88);
  *(v1 + 192) = v3;
  *(v1 + 200) = v6;
  v7 = *(v1 + 168);
  v8 = *(v1 + 176);
  v10 = *(v1 + 152);
  v9 = *(v1 + 160);
  v11 = *(v1 + 144);
  v35 = v2;
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  v36 = v4;
  *(v1 + 24) = v4;
  v34 = v5;
  *(v1 + 25) = v5;
  *(v1 + 32) = v6;

  sub_230D0585C(v11, v10, v9, v7, v8);
  sub_230E68D70();

  v12 = sub_230E68D60();
  v13 = sub_230E693E0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v38[0] = v15;
    *v14 = 136315650;
    *(v14 + 4) = sub_230D7E620(0xD000000000000014, 0x8000000230E805F0, v38);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_230D7E620(v35, v3, v38);
    *(v14 + 22) = 2080;
    v16 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v16);

    v17 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v38);

    *(v14 + 24) = v17;
    _os_log_impl(&dword_230D02000, v12, v13, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v15, -1, -1);
    MEMORY[0x23191EAE0](v14, -1, -1);

    if (!v36)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (!v36)
    {
LABEL_7:
      v21 = swift_task_alloc();
      *(v37 + 232) = v21;
      *v21 = v37;
      v21[1] = sub_230D2F8C8;
      v22 = *(v37 + 120);
      v23 = *(v37 + 128);
      v24 = *(v37 + 112);
      v25 = *(v37 + 653);
      goto LABEL_12;
    }
  }

  v18 = RequestType.rawValue.getter();
  v20 = v19;

  LOBYTE(v18) = sub_230D33FDC(v18, v20, v6);

  if ((v18 & 1) == 0 && v34 < 2)
  {
    goto LABEL_7;
  }

  sub_230E68950();
  *(v37 + 224) = CFAbsoluteTimeGetCurrent();
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0u;
  *(v1 + 288) = 0u;
  *(v1 + 304) = 0u;
  *(v1 + 320) = 0u;
  *(v1 + 336) = 0u;
  *(v1 + 352) = 0u;
  *(v1 + 368) = 0u;
  *(v1 + 384) = 0u;
  *(v1 + 400) = 0u;
  *(v1 + 416) = 0u;
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
  *(v1 + 624) = 0;
  *(v37 + 644) = 93;
  v26 = task_info(*MEMORY[0x277D85F48], 0x16u, (v1 + 256), (v1 + 628));
  *(v37 + 648) = v26;
  v27 = 0.0;
  if (!v26)
  {
    v28 = *(v37 + 320);
    v29 = *(v37 + 392);
    v30 = __CFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      __break(1u);
    }

    v27 = vcvtd_n_f64_u64(v31, 0x14uLL);
  }

  *(v37 + 248) = v27;
  *(v37 + 104) = 0;
  v32 = swift_task_alloc();
  *(v37 + 256) = v32;
  *v32 = v37;
  v32[1] = sub_230D2FA20;
  v22 = *(v37 + 120);
  v23 = *(v37 + 128);
  v24 = *(v37 + 112);
  v25 = *(v37 + 653);
LABEL_12:

  return sub_230D2FFF0(v1 + 80, v25, v24, v22, v23, v1);
}

uint64_t sub_230D2F8C8()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    v4 = sub_230D2FF08;
  }

  else
  {
    v4 = sub_230D2FE0C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D2FA20()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    v4 = sub_230D2FCA8;
  }

  else
  {
    v4 = sub_230D2FB78;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D2FB78(__n128 a1)
{
  v3 = *(v1 + 144);
  v2 = *(v1 + 152);
  v4 = *(v1 + 136);
  sub_230D34594(16, *(v1 + 248), *(v1 + 648) != 0, v1 + 16, (v1 + 104), *(v1 + 224));
  (*(v3 + 8))(v2, v4);

  v5 = *(v1 + 96);

  v6 = *(v1 + 8);

  return v6(v5);
}

uint64_t sub_230D2FCA8(uint64_t a1)
{
  v2 = *(v1 + 264);
  v3 = *(v1 + 248);
  v4 = *(v1 + 224);
  v6 = *(v1 + 144);
  v5 = *(v1 + 152);
  v7 = *(v1 + 136);
  v8 = *(v1 + 648) != 0;
  *(v1 + 104) = v2;
  swift_willThrow();
  v9 = v2;
  sub_230D34594(16, v3, v8, v1 + 16, (v1 + 104), v4);
  MEMORY[0x23191E910](v2);
  (*(v6 + 8))(v5, v7);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v10 = *(v1 + 8);

  return v10();
}

uint64_t sub_230D2FE0C()
{
  (*(v0[18] + 8))(v0[19], v0[17]);

  v1 = v0[12];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_230D2FF08()
{
  (*(v0[18] + 8))(v0[19], v0[17]);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v1 = v0[1];

  return v1();
}

uint64_t sub_230D2FFF0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 416) = a5;
  *(v6 + 424) = a6;
  *(v6 + 400) = a3;
  *(v6 + 408) = a4;
  *(v6 + 241) = a2;
  *(v6 + 392) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B030, &qword_230E6E700);
  *(v6 + 432) = swift_task_alloc();
  v8 = type metadata accessor for SQLDatabaseConfiguration(0);
  *(v6 + 440) = v8;
  *(v6 + 448) = *(v8 - 8);
  *(v6 + 456) = swift_task_alloc();
  *(v6 + 464) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230D30104, a5, 0);
}

uint64_t sub_230D30104()
{
  v1 = *(v0 + 416);
  swift_beginAccess();
  v2 = *(v1 + 112);
  v3 = *(v2 + 16);

  if (v3)
  {
    v5 = *(v0 + 400);
    v4 = *(v0 + 408);
    v6 = *(v0 + 241);

    v7 = sub_230DB4B4C(v6, v5, v4, 0);
    if (v8)
    {
      v9 = v7;

      v10 = *(*(v2 + 56) + 8 * v9);

      **(v0 + 392) = v10;

      v11 = *(v0 + 8);

      return v11();
    }
  }

  if (*(v0 + 241) >= 2u || *(v0 + 241))
  {
    v13 = sub_230E698C0();

    if ((v13 & 1) == 0)
    {
LABEL_13:
      v17 = *(v0 + 424);
      sub_230D1CDE0(v17, v0 + 56);
      sub_230D1CDE0(v17, v0 + 96);

      v15 = swift_task_alloc();
      *(v0 + 496) = v15;
      *v15 = v0;
      v16 = sub_230D307BC;
      goto LABEL_14;
    }
  }

  else
  {
  }

  if ((*(v0 + 400) != 0x6D6574737973 || *(v0 + 408) != 0xE600000000000000) && (sub_230E698C0() & 1) == 0)
  {
    goto LABEL_13;
  }

  v14 = *(v0 + 424);
  sub_230D1CDE0(v14, v0 + 136);
  sub_230D1CDE0(v14, v0 + 176);

  v15 = swift_task_alloc();
  *(v0 + 472) = v15;
  *v15 = v0;
  v16 = sub_230D304B0;
LABEL_14:
  v15[1] = v16;
  v18 = *(v0 + 424);

  return (sub_230D6F7D0)(39, v18);
}

uint64_t sub_230D304B0(uint64_t a1)
{
  v4 = *v2;
  v4[60] = v1;

  v5 = v4[53];
  v6 = v4[52];
  if (v1)
  {
    sub_230D1CE3C(v5);
    v7 = sub_230D30728;
  }

  else
  {
    v4[61] = a1;
    sub_230D1CE3C(v5);
    v7 = sub_230D3060C;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_230D3060C()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 416);
  v4 = *(v0 + 400);
  v3 = *(v0 + 408);
  v5 = *(v0 + 241);
  sub_230D1CE3C(*(v0 + 424));
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + 112);
  *(v2 + 112) = 0x8000000000000000;
  sub_230E1B91C(v1, v5, v4, v3, 0, isUniquelyReferenced_nonNull_native);

  *(v2 + 112) = v9;
  swift_endAccess();
  **(v0 + 392) = *(v0 + 488);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_230D30728()
{
  sub_230D1CE3C(*(v0 + 424));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230D307BC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 504) = a1;
  *(v4 + 512) = v1;

  v5 = *(v3 + 424);
  v6 = *(v3 + 416);
  sub_230D1CE3C(v5);
  if (v1)
  {
    v7 = sub_230D30AFC;
  }

  else
  {
    v7 = sub_230D3090C;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_230D3090C()
{
  sub_230D1CE3C(*(v0 + 424));
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 520) = v1;
  *v1 = v0;
  v1[1] = sub_230D309D0;
  v2 = *(v0 + 504);
  v3 = *(v0 + 432);
  v4 = *(v0 + 400);
  v5 = *(v0 + 408);
  v6 = *(v0 + 241);

  return sub_230D4F7B8(v3, v6, v4, v5, 0, v2, v0 + 16);
}

uint64_t sub_230D309D0()
{
  v2 = *v1;
  *(*v1 + 528) = v0;

  v3 = *(v2 + 416);
  if (v0)
  {
    v4 = sub_230D310BC;
  }

  else
  {
    v4 = sub_230D30CCC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D30AFC()
{
  sub_230D1CE3C(*(v0 + 424));

  v1 = *(v0 + 512);
  *(v0 + 376) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
  if (swift_dynamicCast())
  {
    MEMORY[0x23191E910](v1);
    v3 = *(v0 + 320);
    v4 = *(v0 + 328);
    v5 = *(v0 + 336);
    sub_230D0D224();
    swift_allocError();
    *v6 = v3;
    *(v6 + 8) = v4;
    *(v6 + 16) = v5;
    swift_willThrow();
    v7 = *(v0 + 376);
  }

  else
  {
    MEMORY[0x23191E910](*(v0 + 376));
    sub_230E69540();
    *(v0 + 344) = 0;
    *(v0 + 352) = 0xE000000000000000;
    MEMORY[0x23191DA00](0xD000000000000028, 0x8000000230E81130);
    *(v0 + 384) = v1;
    sub_230E695F0();
    v8 = *(v0 + 344);
    v9 = *(v0 + 352);
    sub_230D0D224();
    swift_allocError();
    *v10 = v8;
    *(v10 + 8) = v9;
    *(v10 + 16) = 2;
    swift_willThrow();
    v7 = v1;
  }

  MEMORY[0x23191E910](v7);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_230D30CCC()
{
  v1 = *(v0 + 432);
  if ((*(*(v0 + 448) + 48))(v1, 1, *(v0 + 440)) == 1)
  {
    v3 = *(v0 + 400);
    v2 = *(v0 + 408);
    v4 = *(v0 + 241);
    sub_230D3C98C(v1);
    sub_230E69540();
    *(v0 + 360) = 0;
    *(v0 + 368) = 0xE000000000000000;
    MEMORY[0x23191DA00](0xD000000000000025, 0x8000000230E81160);
    *(v0 + 216) = v4;
    *(v0 + 224) = v3;
    *(v0 + 232) = v2;
    *(v0 + 240) = 0;
    sub_230E695F0();

    v5 = *(v0 + 360);
    v6 = *(v0 + 368);
    sub_230D0D224();
    v7 = swift_allocError();
    *v8 = v5;
    *(v8 + 8) = v6;
    *(v8 + 16) = 3;
    swift_willThrow();

LABEL_5:
    *(v0 + 376) = v7;
    v13 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
    if (swift_dynamicCast())
    {
      MEMORY[0x23191E910](v7);
      v14 = *(v0 + 320);
      v15 = *(v0 + 328);
      v16 = *(v0 + 336);
      sub_230D0D224();
      swift_allocError();
      *v17 = v14;
      *(v17 + 8) = v15;
      *(v17 + 16) = v16;
      swift_willThrow();
      v18 = *(v0 + 376);
    }

    else
    {
      MEMORY[0x23191E910](*(v0 + 376));
      sub_230E69540();
      *(v0 + 344) = 0;
      *(v0 + 352) = 0xE000000000000000;
      MEMORY[0x23191DA00](0xD000000000000028, 0x8000000230E81130);
      *(v0 + 384) = v7;
      sub_230E695F0();
      v19 = *(v0 + 344);
      v20 = *(v0 + 352);
      sub_230D0D224();
      swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v20;
      *(v21 + 16) = 2;
      swift_willThrow();
      v18 = v7;
    }

    MEMORY[0x23191E910](v18);

    v22 = *(v0 + 8);
    goto LABEL_9;
  }

  v9 = *(v0 + 528);
  v11 = *(v0 + 456);
  v10 = *(v0 + 464);
  sub_230D3C9F4(v1, v10);
  sub_230D1CF5C(v10, v11);
  type metadata accessor for SQLDatabaseClient(0);
  swift_allocObject();
  v12 = sub_230D3CAF0(v11);
  if (v9)
  {
    v7 = v9;
    sub_230D1CFC0(*(v0 + 464));

    goto LABEL_5;
  }

  v24 = v12;
  v25 = *(v0 + 464);
  v26 = *(v0 + 408);
  v27 = *(v0 + 416);
  v28 = *(v0 + 400);
  v29 = *(v0 + 241);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *(v27 + 112);
  *(v27 + 112) = 0x8000000000000000;
  sub_230E1B91C(v24, v29, v28, v26, 0, isUniquelyReferenced_nonNull_native);

  *(v27 + 112) = v31;
  swift_endAccess();

  sub_230D1CFC0(v25);
  **(v0 + 392) = v24;

  v22 = *(v0 + 8);
LABEL_9:

  return v22();
}

uint64_t sub_230D310BC()
{

  v1 = *(v0 + 528);
  *(v0 + 376) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
  if (swift_dynamicCast())
  {
    MEMORY[0x23191E910](v1);
    v3 = *(v0 + 320);
    v4 = *(v0 + 328);
    v5 = *(v0 + 336);
    sub_230D0D224();
    swift_allocError();
    *v6 = v3;
    *(v6 + 8) = v4;
    *(v6 + 16) = v5;
    swift_willThrow();
    v7 = *(v0 + 376);
  }

  else
  {
    MEMORY[0x23191E910](*(v0 + 376));
    sub_230E69540();
    *(v0 + 344) = 0;
    *(v0 + 352) = 0xE000000000000000;
    MEMORY[0x23191DA00](0xD000000000000028, 0x8000000230E81130);
    *(v0 + 384) = v1;
    sub_230E695F0();
    v8 = *(v0 + 344);
    v9 = *(v0 + 352);
    sub_230D0D224();
    swift_allocError();
    *v10 = v8;
    *(v10 + 8) = v9;
    *(v10 + 16) = 2;
    swift_willThrow();
    v7 = v1;
  }

  MEMORY[0x23191E910](v7);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t ServicesIntelligenceProvider.getSQLDatabaseClient(name:requestContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = v3;
  *(v4 + 56) = a1;
  v5 = *(a3 + 16);
  *(v4 + 80) = *a3;
  *(v4 + 96) = v5;
  *(v4 + 112) = *(a3 + 32);
  return MEMORY[0x2822009F8](sub_230D312C0, v3, 0);
}

uint64_t sub_230D312C0()
{
  sub_230DCB5D4((v0 + 136));
  v1 = *(v0 + 112);
  *(v0 + 137) = *(v0 + 136);
  v2 = *(v0 + 96);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 32) = v2;
  *(v0 + 48) = v1;
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *v3 = v0;
  v3[1] = sub_230D313D0;
  v4 = *(v0 + 64);
  v5 = *(v0 + 56);

  return ServicesIntelligenceProvider.getSQLDatabaseClient(domain:name:requestContext:)((v0 + 137), v5, v4, v0 + 16);
}

uint64_t sub_230D313D0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v6 = *(v4 + 72);

    return MEMORY[0x2822009F8](sub_230D31520, v6, 0);
  }

  else
  {
    v7 = *(v5 + 8);

    return v7(a1);
  }
}

uint64_t sub_230D31538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  *(v4 + 120) = *a3;
  *(v4 + 104) = a2;
  *(v4 + 112) = v3;
  *(v4 + 96) = a1;
  *(v4 + 136) = v5;
  *(v4 + 152) = *(a3 + 32);
  return MEMORY[0x2822009F8](sub_230D31570, v3, 0);
}

uint64_t sub_230D31570()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    v3 = *(v0 + 144);
    v2 = *(v0 + 152);
    v4 = *(v0 + 120);
    v5 = *(v0 + 128);
    *(v0 + 168) = v1;
    *(v0 + 176) = v2;
    *(v0 + 16) = v4;
    *(v0 + 24) = v5;
    *(v0 + 32) = v1;
    *(v0 + 40) = v3 & 1;
    *(v0 + 41) = BYTE1(v3);
    *(v0 + 48) = v2;
    v6 = swift_task_alloc();
    *(v0 + 184) = v6;
    *(v6 + 16) = *(v0 + 104);
    *(v6 + 32) = v0 + 16;
    sub_230D0585C(v4, v5, v1, v3, v2);
    v7 = swift_task_alloc();
    *(v0 + 192) = v7;
    *v7 = v0;
    v7[1] = sub_230D319C0;
    v8 = *(v0 + 96);

    return sub_230D123C8(v8, 4, v0 + 16, &unk_230E6E500, v6);
  }

  else
  {
    *(v0 + 200) = 4;
    v10 = swift_task_alloc();
    *(v0 + 160) = v10;
    *v10 = v0;
    v10[1] = sub_230D31758;

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 200), 0, 0);
  }
}

uint64_t sub_230D31758()
{
  v1 = *(*v0 + 112);

  return MEMORY[0x2822009F8](sub_230D31868, v1, 0);
}

uint64_t sub_230D31868()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v6 = *(v0 + 88);
  *(v0 + 168) = v3;
  *(v0 + 176) = v6;
  v8 = *(v0 + 144);
  v7 = *(v0 + 152);
  v10 = *(v0 + 128);
  v9 = *(v0 + 136);
  *(v0 + 16) = v1;
  v11 = *(v0 + 120);
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v6;
  v12 = swift_task_alloc();
  *(v0 + 184) = v12;
  *(v12 + 16) = *(v0 + 104);
  *(v12 + 32) = v0 + 16;
  sub_230D0585C(v11, v10, v9, v8, v7);
  v13 = swift_task_alloc();
  *(v0 + 192) = v13;
  *v13 = v0;
  v13[1] = sub_230D319C0;
  v14 = *(v0 + 96);

  return sub_230D123C8(v14, 4, v0 + 16, &unk_230E6E500, v12);
}

uint64_t sub_230D319C0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_230D31B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[45] = a3;
  v4[46] = a4;
  v4[43] = a1;
  v4[44] = a2;
  v6 = sub_230E68D80();
  v4[47] = v6;
  v4[48] = *(v6 - 8);
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v7 = sub_230E68860();
  v4[51] = v7;
  v4[52] = *(v7 - 8);
  v4[53] = swift_task_alloc();
  type metadata accessor for SQLDatabaseConfiguration(0);
  v4[54] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230D31CA0, a3, 0);
}

uint64_t sub_230D31CA0()
{
  v33 = v0;
  v32[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 424);
  sub_230D1CF5C(*(v0 + 352), *(v0 + 432));
  SQLDatabaseConfiguration.path.getter(v1);
  v2 = *(v0 + 432);
  v3 = *(v0 + 368);
  v4 = *(v2 + 16);
  v6 = *v2;
  v5 = *(v2 + 8);
  *(v0 + 440) = v5;
  sub_230D1CDE0(v3, v0 + 16);
  sub_230D1CDE0(v3, v0 + 56);

  sub_230E68D70();
  sub_230D1CDE0(v3, v0 + 96);
  v7 = sub_230E68D60();
  v8 = sub_230E693E0();
  sub_230D1CE3C(v3);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 368);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v32[0] = v11;
    *v10 = 136315650;
    *(v10 + 4) = sub_230D7E620(0xD000000000000014, 0x8000000230E805F0, v32);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_230D7E620(*(v9 + 8), *(v9 + 16), v32);
    *(v10 + 22) = 2080;
    v12 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v12);

    v13 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v32);

    *(v10 + 24) = v13;
    _os_log_impl(&dword_230D02000, v7, v8, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v11, -1, -1);
    MEMORY[0x23191EAE0](v10, -1, -1);
  }

  v14 = *(v0 + 368);
  *(v0 + 256) = *(v14 + 24);
  *(v0 + 1376) = *v14;
  v15 = *(v0 + 256);
  *(v0 + 1377) = v15;
  v16 = *(v0 + 257);
  *(v0 + 1378) = v16;
  v17 = *(v0 + 264);
  *(v0 + 448) = v17;
  if (v15 & 1) != 0 && ((v18 = RequestType.rawValue.getter(), v20 = v19, sub_230D1CE90(v0 + 256, v0 + 304), LOBYTE(v18) = sub_230D33FDC(v18, v20, v17), , sub_230D1F9CC(v0 + 256), (v18) || v16 >= 2))
  {
    sub_230E68950();
    *(v0 + 456) = CFAbsoluteTimeGetCurrent();
    *(v0 + 988) = 0u;
    *(v0 + 1004) = 0u;
    *(v0 + 1020) = 0u;
    *(v0 + 1036) = 0u;
    *(v0 + 1052) = 0u;
    *(v0 + 1068) = 0u;
    *(v0 + 1084) = 0u;
    *(v0 + 1100) = 0u;
    *(v0 + 1116) = 0u;
    *(v0 + 1132) = 0u;
    *(v0 + 1148) = 0u;
    *(v0 + 1164) = 0u;
    *(v0 + 1180) = 0u;
    *(v0 + 1196) = 0u;
    *(v0 + 1212) = 0u;
    *(v0 + 1228) = 0u;
    *(v0 + 1244) = 0u;
    *(v0 + 1260) = 0u;
    *(v0 + 1276) = 0u;
    *(v0 + 1292) = 0u;
    *(v0 + 1308) = 0u;
    *(v0 + 1324) = 0u;
    *(v0 + 1340) = 0u;
    *(v0 + 1356) = 0;
    *(v0 + 1364) = 93;
    v23 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 988), (v0 + 1364));
    *(v0 + 1368) = v23;
    v24 = 0.0;
    if (!v23)
    {
      v25 = *(v0 + 1036);
      v26 = *(v0 + 1108);
      v27 = __CFADD__(v25, v26);
      v28 = v25 + v26;
      if (v27)
      {
        __break(1u);
      }

      v24 = vcvtd_n_f64_u64(v28, 0x14uLL);
    }

    *(v0 + 480) = v24;
    *(v0 + 336) = 0;
    v21 = swift_task_alloc();
    *(v0 + 488) = v21;
    *v21 = v0;
    v22 = sub_230D322F8;
  }

  else
  {
    v21 = swift_task_alloc();
    *(v0 + 464) = v21;
    *v21 = v0;
    v22 = sub_230D321A0;
  }

  v21[1] = v22;
  v29 = *(v0 + 360);
  v30 = *(v0 + 368);

  return sub_230D2FFF0(v0 + 320, v4, v6, v5, v29, v30);
}

uint64_t sub_230D321A0()
{
  v2 = *v1;
  *(*v1 + 472) = v0;

  v3 = *(v2 + 360);
  if (v0)
  {
    v4 = sub_230D32CEC;
  }

  else
  {
    v4 = sub_230D32BEC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D322F8()
{
  v2 = *v1;
  *(*v1 + 496) = v0;

  v3 = *(v2 + 360);
  if (v0)
  {
    v4 = sub_230D32584;
  }

  else
  {
    v4 = sub_230D32450;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D32450(__n128 a1)
{
  v2 = *(v1 + 400);
  v3 = *(v1 + 376);
  v4 = *(v1 + 384);
  v5 = *(v1 + 368);
  sub_230D34594(16, *(v1 + 480), *(v1 + 1368) != 0, v5, (v1 + 336), *(v1 + 456));
  v6 = *(v4 + 8);
  v6(v2, v3);

  sub_230D1CE3C(v5);
  v7 = *(v1 + 432);
  v8 = *(v1 + 368);
  v9 = *(v1 + 320);
  *(v1 + 504) = v6;
  *(v1 + 512) = v9;
  sub_230D1CE3C(v8);
  *(v1 + 520) = *(v7 + 24);
  sub_230D1CDE0(v8, v1 + 136);

  return MEMORY[0x2822009F8](sub_230D32720, v9, 0);
}

uint64_t sub_230D32584(uint64_t a1)
{
  v2 = *(v1 + 496);
  v3 = *(v1 + 480);
  v4 = *(v1 + 456);
  v5 = *(v1 + 400);
  v7 = *(v1 + 376);
  v6 = *(v1 + 384);
  v8 = *(v1 + 368);
  v9 = *(v1 + 1368) != 0;
  *(v1 + 336) = v2;
  swift_willThrow();
  v10 = v2;
  sub_230D34594(16, v3, v9, v8, (v1 + 336), v4);
  MEMORY[0x23191E910](v2);
  (*(v6 + 8))(v5, v7);

  sub_230D1CE3C(v8);
  v12 = *(v1 + 416);
  v11 = *(v1 + 424);
  v13 = *(v1 + 408);
  sub_230D1CE3C(*(v1 + 368));
  (*(v12 + 8))(v11, v13);
  sub_230D1CFC0(*(v1 + 432));

  v14 = *(v1 + 8);

  return v14();
}

uint64_t sub_230D32720()
{
  v31 = v0;
  v30[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 520);
  v2 = v1[2];
  *(v0 + 528) = v2;
  if (v2)
  {
    v3 = *(v0 + 368);
    *(v0 + 536) = 0;
    v5 = v1[4];
    v4 = v1[5];
    *(v0 + 544) = v4;
    v6 = v1[6];
    *(v0 + 552) = v6;

    sub_230D1CDE0(v3, v0 + 176);

    sub_230E68D70();
    sub_230D1CDE0(v3, v0 + 216);
    v7 = sub_230E68D60();
    v8 = sub_230E693E0();
    sub_230D1CE3C(v3);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 368);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v30[0] = v11;
      *v10 = 136315650;
      *(v10 + 4) = sub_230D7E620(0x5153657461657263, 0xEE00656C6261544CLL, v30);
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_230D7E620(*(v9 + 8), *(v9 + 16), v30);
      *(v10 + 22) = 2080;
      *(v0 + 288) = 0x6C616E7265746E69;
      *(v0 + 296) = 0xE90000000000002ELL;
      v12 = RequestType.rawValue.getter();
      MEMORY[0x23191DA00](v12);

      v13 = sub_230D7E620(*(v0 + 288), *(v0 + 296), v30);

      *(v10 + 24) = v13;
      _os_log_impl(&dword_230D02000, v7, v8, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v10, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23191EAE0](v11, -1, -1);
      MEMORY[0x23191EAE0](v10, -1, -1);
    }

    if (*(v0 + 1377) & 1) != 0 && ((v14 = *(v0 + 448), v15 = *(v0 + 1378), LOBYTE(v30[0]) = *(v0 + 1376), v16 = RequestType.rawValue.getter(), v18 = v17, sub_230D1CE90(v0 + 256, v0 + 272), LOBYTE(v16) = sub_230D33FDC(v16, v18, v14), , sub_230D1F9CC(v0 + 256), (v16) || v15 >= 2))
    {
      sub_230E68950();
      *(v0 + 560) = CFAbsoluteTimeGetCurrent();
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
      *(v0 + 808) = 0u;
      *(v0 + 824) = 0u;
      *(v0 + 840) = 0u;
      *(v0 + 856) = 0u;
      *(v0 + 872) = 0u;
      *(v0 + 888) = 0u;
      *(v0 + 904) = 0u;
      *(v0 + 920) = 0u;
      *(v0 + 936) = 0u;
      *(v0 + 952) = 0u;
      *(v0 + 968) = 0u;
      *(v0 + 984) = 0;
      *(v0 + 1360) = 93;
      v22 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 616), (v0 + 1360));
      *(v0 + 1372) = v22;
      v23 = 0.0;
      if (!v22)
      {
        v24 = *(v0 + 664);
        v25 = *(v0 + 736);
        v26 = __CFADD__(v24, v25);
        v27 = v24 + v25;
        if (v26)
        {
          __break(1u);
        }

        v23 = vcvtd_n_f64_u64(v27, 0x14uLL);
      }

      *(v0 + 584) = v23;
      *(v0 + 328) = 0;
      v19 = swift_task_alloc();
      *(v0 + 592) = v19;
      *v19 = v0;
      v20 = sub_230D33068;
    }

    else
    {
      v19 = swift_task_alloc();
      *(v0 + 568) = v19;
      *v19 = v0;
      v20 = sub_230D32F10;
    }

    v19[1] = v20;
    v28 = *(v0 + 512);

    return sub_230D3D310(v19, v28, v5, v4, v6);
  }

  else
  {
    v21 = *(v0 + 360);
    sub_230D1CE3C(*(v0 + 368));

    return MEMORY[0x2822009F8](sub_230D32E14, v21, 0);
  }
}

uint64_t sub_230D32BEC()
{
  v1 = v0[46];
  v2 = *(v0[48] + 8);
  v2(v0[50], v0[47]);

  sub_230D1CE3C(v1);
  v3 = v0[54];
  v4 = v0[46];
  v5 = v0[40];
  v0[63] = v2;
  v0[64] = v5;
  sub_230D1CE3C(v4);
  v0[65] = *(v3 + 24);
  sub_230D1CDE0(v4, (v0 + 17));

  return MEMORY[0x2822009F8](sub_230D32720, v5, 0);
}

uint64_t sub_230D32CEC()
{
  v1 = v0[46];
  (*(v0[48] + 8))(v0[50], v0[47]);

  sub_230D1CE3C(v1);
  v3 = v0[52];
  v2 = v0[53];
  v4 = v0[51];
  sub_230D1CE3C(v0[46]);
  (*(v3 + 8))(v2, v4);
  sub_230D1CFC0(v0[54]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_230D32E14()
{
  v1 = v0[53];
  v2 = v0[54];
  v3 = v0[51];
  v4 = v0[52];
  v5 = v0[43];

  (*(v4 + 32))(v5, v1, v3);
  sub_230D1CFC0(v2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_230D32F10()
{
  v2 = *v1;
  *(*v1 + 576) = v0;

  v3 = *(v2 + 512);
  if (v0)
  {
    v4 = sub_230D33ED4;
  }

  else
  {
    v4 = sub_230D33998;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D33068()
{
  v2 = *v1;
  *(*v1 + 600) = v0;

  v3 = *(v2 + 512);
  if (v0)
  {
    v4 = sub_230D33728;
  }

  else
  {
    v4 = sub_230D331C0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230D331C0(__n128 a1)
{
  v40 = v1;
  v39[1] = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 504);
  v3 = *(v1 + 392);
  v5 = *(v1 + 368);
  v4 = *(v1 + 376);
  sub_230D34A54(5, *(v1 + 584), *(v1 + 1372) != 0, v5, (v1 + 328), *(v1 + 560));
  v2(v3, v4);

  sub_230D1CE3C(v5);
  v6 = *(v1 + 536);
  v7 = *(v1 + 528);

  if (v6 + 1 == v7)
  {
    v8 = *(v1 + 360);
    sub_230D1CE3C(*(v1 + 368));

    return MEMORY[0x2822009F8](sub_230D32E14, v8, 0);
  }

  else
  {
    v9 = *(v1 + 536);
    *(v1 + 536) = v9 + 1;
    v10 = *(v1 + 368);
    v11 = (*(v1 + 520) + 24 * v9);
    v13 = v11[7];
    v12 = v11[8];
    *(v1 + 544) = v12;
    v14 = v11[9];
    *(v1 + 552) = v14;

    sub_230D1CDE0(v10, v1 + 176);

    sub_230E68D70();
    sub_230D1CDE0(v10, v1 + 216);
    v15 = sub_230E68D60();
    v16 = sub_230E693E0();
    sub_230D1CE3C(v10);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v1 + 368);
      v18 = swift_slowAlloc();
      v38 = v13;
      v19 = swift_slowAlloc();
      v39[0] = v19;
      *v18 = 136315650;
      *(v18 + 4) = sub_230D7E620(0x5153657461657263, 0xEE00656C6261544CLL, v39);
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_230D7E620(*(v17 + 8), *(v17 + 16), v39);
      *(v18 + 22) = 2080;
      *(v1 + 288) = 0x6C616E7265746E69;
      *(v1 + 296) = 0xE90000000000002ELL;
      v20 = RequestType.rawValue.getter();
      MEMORY[0x23191DA00](v20);

      v21 = sub_230D7E620(*(v1 + 288), *(v1 + 296), v39);

      *(v18 + 24) = v21;
      _os_log_impl(&dword_230D02000, v15, v16, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v18, 0x20u);
      swift_arrayDestroy();
      v22 = v19;
      v13 = v38;
      MEMORY[0x23191EAE0](v22, -1, -1);
      MEMORY[0x23191EAE0](v18, -1, -1);
    }

    if (*(v1 + 1377) & 1) != 0 && ((v23 = *(v1 + 448), v24 = *(v1 + 1378), LOBYTE(v39[0]) = *(v1 + 1376), v25 = RequestType.rawValue.getter(), v27 = v26, sub_230D1CE90(v1 + 256, v1 + 272), LOBYTE(v25) = sub_230D33FDC(v25, v27, v23), , sub_230D1F9CC(v1 + 256), (v25) || v24 >= 2))
    {
      sub_230E68950();
      *(v1 + 560) = CFAbsoluteTimeGetCurrent();
      *(v1 + 616) = 0u;
      *(v1 + 632) = 0u;
      *(v1 + 648) = 0u;
      *(v1 + 664) = 0u;
      *(v1 + 680) = 0u;
      *(v1 + 696) = 0u;
      *(v1 + 712) = 0u;
      *(v1 + 728) = 0u;
      *(v1 + 744) = 0u;
      *(v1 + 760) = 0u;
      *(v1 + 776) = 0u;
      *(v1 + 792) = 0u;
      *(v1 + 808) = 0u;
      *(v1 + 824) = 0u;
      *(v1 + 840) = 0u;
      *(v1 + 856) = 0u;
      *(v1 + 872) = 0u;
      *(v1 + 888) = 0u;
      *(v1 + 904) = 0u;
      *(v1 + 920) = 0u;
      *(v1 + 936) = 0u;
      *(v1 + 952) = 0u;
      *(v1 + 968) = 0u;
      *(v1 + 984) = 0;
      *(v1 + 1360) = 93;
      v30 = task_info(*MEMORY[0x277D85F48], 0x16u, (v1 + 616), (v1 + 1360));
      *(v1 + 1372) = v30;
      v31 = 0.0;
      if (!v30)
      {
        v32 = *(v1 + 664);
        v33 = *(v1 + 736);
        v34 = __CFADD__(v32, v33);
        v35 = v32 + v33;
        if (v34)
        {
          __break(1u);
        }

        v31 = vcvtd_n_f64_u64(v35, 0x14uLL);
      }

      *(v1 + 584) = v31;
      *(v1 + 328) = 0;
      v28 = swift_task_alloc();
      *(v1 + 592) = v28;
      *v28 = v1;
      v29 = sub_230D33068;
    }

    else
    {
      v28 = swift_task_alloc();
      *(v1 + 568) = v28;
      *v28 = v1;
      v29 = sub_230D32F10;
    }

    v28[1] = v29;
    v36 = *(v1 + 512);

    return sub_230D3D310(v28, v36, v13, v12, v14);
  }
}

uint64_t sub_230D33728(uint64_t a1)
{
  v2 = *(v1 + 600);
  v3 = *(v1 + 584);
  v4 = *(v1 + 560);
  v5 = *(v1 + 504);
  v6 = *(v1 + 392);
  v8 = *(v1 + 368);
  v7 = *(v1 + 376);
  v9 = *(v1 + 1372) != 0;
  *(v1 + 328) = v2;
  swift_willThrow();
  v10 = v2;
  sub_230D34A54(5, v3, v9, v8, (v1 + 328), v4);
  MEMORY[0x23191E910](v2);
  v5(v6, v7);

  sub_230D1CE3C(v8);
  *(v1 + 608) = *(v1 + 600);
  v11 = *(v1 + 360);
  v12 = *(v1 + 368);

  sub_230D1CE3C(v12);

  return MEMORY[0x2822009F8](sub_230D338A8, v11, 0);
}

uint64_t sub_230D338A8()
{
  v2 = v0[52];
  v1 = v0[53];
  v3 = v0[51];

  (*(v2 + 8))(v1, v3);
  sub_230D1CFC0(v0[54]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_230D33998()
{
  v36 = v0;
  v35[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 368);
  (*(v0 + 504))(*(v0 + 392), *(v0 + 376));

  sub_230D1CE3C(v1);
  v2 = *(v0 + 536);
  v3 = *(v0 + 528);

  if (v2 + 1 == v3)
  {
    v4 = *(v0 + 360);
    sub_230D1CE3C(*(v0 + 368));

    return MEMORY[0x2822009F8](sub_230D32E14, v4, 0);
  }

  else
  {
    v5 = *(v0 + 536);
    *(v0 + 536) = v5 + 1;
    v6 = *(v0 + 368);
    v7 = (*(v0 + 520) + 24 * v5);
    v9 = v7[7];
    v8 = v7[8];
    *(v0 + 544) = v8;
    v10 = v7[9];
    *(v0 + 552) = v10;

    sub_230D1CDE0(v6, v0 + 176);

    sub_230E68D70();
    sub_230D1CDE0(v6, v0 + 216);
    v11 = sub_230E68D60();
    v12 = sub_230E693E0();
    sub_230D1CE3C(v6);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 368);
      v14 = swift_slowAlloc();
      v34 = v9;
      v15 = swift_slowAlloc();
      v35[0] = v15;
      *v14 = 136315650;
      *(v14 + 4) = sub_230D7E620(0x5153657461657263, 0xEE00656C6261544CLL, v35);
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_230D7E620(*(v13 + 8), *(v13 + 16), v35);
      *(v14 + 22) = 2080;
      *(v0 + 288) = 0x6C616E7265746E69;
      *(v0 + 296) = 0xE90000000000002ELL;
      v16 = RequestType.rawValue.getter();
      MEMORY[0x23191DA00](v16);

      v17 = sub_230D7E620(*(v0 + 288), *(v0 + 296), v35);

      *(v14 + 24) = v17;
      _os_log_impl(&dword_230D02000, v11, v12, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v14, 0x20u);
      swift_arrayDestroy();
      v18 = v15;
      v9 = v34;
      MEMORY[0x23191EAE0](v18, -1, -1);
      MEMORY[0x23191EAE0](v14, -1, -1);
    }

    if (*(v0 + 1377) & 1) != 0 && ((v19 = *(v0 + 448), v20 = *(v0 + 1378), LOBYTE(v35[0]) = *(v0 + 1376), v21 = RequestType.rawValue.getter(), v23 = v22, sub_230D1CE90(v0 + 256, v0 + 272), LOBYTE(v21) = sub_230D33FDC(v21, v23, v19), , sub_230D1F9CC(v0 + 256), (v21) || v20 >= 2))
    {
      sub_230E68950();
      *(v0 + 560) = CFAbsoluteTimeGetCurrent();
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
      *(v0 + 808) = 0u;
      *(v0 + 824) = 0u;
      *(v0 + 840) = 0u;
      *(v0 + 856) = 0u;
      *(v0 + 872) = 0u;
      *(v0 + 888) = 0u;
      *(v0 + 904) = 0u;
      *(v0 + 920) = 0u;
      *(v0 + 936) = 0u;
      *(v0 + 952) = 0u;
      *(v0 + 968) = 0u;
      *(v0 + 984) = 0;
      *(v0 + 1360) = 93;
      v26 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 616), (v0 + 1360));
      *(v0 + 1372) = v26;
      v27 = 0.0;
      if (!v26)
      {
        v28 = *(v0 + 664);
        v29 = *(v0 + 736);
        v30 = __CFADD__(v28, v29);
        v31 = v28 + v29;
        if (v30)
        {
          __break(1u);
        }

        v27 = vcvtd_n_f64_u64(v31, 0x14uLL);
      }

      *(v0 + 584) = v27;
      *(v0 + 328) = 0;
      v24 = swift_task_alloc();
      *(v0 + 592) = v24;
      *v24 = v0;
      v25 = sub_230D33068;
    }

    else
    {
      v24 = swift_task_alloc();
      *(v0 + 568) = v24;
      *v24 = v0;
      v25 = sub_230D32F10;
    }

    v24[1] = v25;
    v32 = *(v0 + 512);

    return sub_230D3D310(v24, v32, v9, v8, v10);
  }
}

uint64_t sub_230D33ED4()
{
  v1 = *(v0 + 368);
  (*(v0 + 504))(*(v0 + 392), *(v0 + 376));

  sub_230D1CE3C(v1);
  *(v0 + 608) = *(v0 + 576);
  v2 = *(v0 + 360);
  v3 = *(v0 + 368);

  sub_230D1CE3C(v3);

  return MEMORY[0x2822009F8](sub_230D338A8, v2, 0);
}

uint64_t sub_230D33FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_230E699B0();
  sub_230E69100();
  v6 = sub_230E699D0();
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
    if (v11 || (sub_230E698C0() & 1) != 0)
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

uint64_t sub_230D340D4(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v44 = a5;
  v69 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v41 - v13;
  *&v47[0] = 0;
  *(&v47[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v46) = a1;
  v15 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v15);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  memset(v47, 0, sizeof(v47));
  v46 = 93;
  v17 = task_info(*MEMORY[0x277D85F48], 0x16u, v47, &v46);
  v18 = 0.0;
  if (!v17)
  {
    if (__CFADD__(v48, *(&v52 + 1)))
    {
      __break(1u);
    }

    v18 = vcvtd_n_f64_u64(v48 + *(&v52 + 1), 0x14uLL);
  }

  v43 = v14;
  v19 = Current - a6;
  v20 = (v17 != 0) | a3;
  v21 = v18 - *&a2;
  if ((v17 != 0) | a3 & 1)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v21;
  }

  sub_230E68950();
  LOBYTE(v47[0]) = *a4;
  v23 = RequestType.rawValue.getter();
  v42 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v25 = swift_allocObject();
  v45 = xmmword_230E6B3B0;
  *(v25 + 16) = xmmword_230E6B3B0;
  *&v47[0] = 0x6C616E7265746E69;
  *(&v47[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v46) = a1;
  v26 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v26);

  v27 = v47[0];
  v28 = *v44;
  if (*v44)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v29 = swift_allocObject();
    *(v29 + 16) = v45;
    *(v29 + 32) = v28;
  }

  else
  {
    v29 = 0;
  }

  *(v25 + 32) = v27;
  *(v25 + 48) = v19;
  *(v25 + 56) = 0;
  *(v25 + 64) = v22;
  *(v25 + 72) = v20 & 1;
  *(v25 + 80) = v29;
  v31 = *(a4 + 8);
  v30 = *(a4 + 16);
  v32 = v28;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v33 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v34 = swift_allocObject();
  *(v34 + 16) = v45;
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = v23;
  *(v35 + 32) = v42;
  *(v35 + 40) = 1;
  *(v35 + 48) = v25;
  *(v35 + 56) = v31;
  *(v35 + 64) = v30;
  *(v35 + 72) = 257;
  *(v35 + 80) = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = &unk_230E6E5F8;
  *(v36 + 24) = v35;
  *(v34 + 32) = &unk_230E6E600;
  *(v34 + 40) = v36;
  v37 = sub_230E69310();
  v38 = v43;
  (*(*(v37 - 8) + 56))(v43, 1, 1, v37);
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v34;

  sub_230D8F204(0, 0, v38, &unk_230E6E608, v39);
}

uint64_t sub_230D34594(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v44 = a5;
  v69 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v41 - v13;
  *&v47[0] = 0;
  *(&v47[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v46) = a1;
  v15 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v15);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  memset(v47, 0, sizeof(v47));
  v46 = 93;
  v17 = task_info(*MEMORY[0x277D85F48], 0x16u, v47, &v46);
  v18 = 0.0;
  if (!v17)
  {
    if (__CFADD__(v48, *(&v52 + 1)))
    {
      __break(1u);
    }

    v18 = vcvtd_n_f64_u64(v48 + *(&v52 + 1), 0x14uLL);
  }

  v43 = v14;
  v19 = Current - a6;
  v20 = (v17 != 0) | a3;
  v21 = v18 - *&a2;
  if ((v17 != 0) | a3 & 1)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v21;
  }

  sub_230E68950();
  LOBYTE(v47[0]) = *a4;
  v23 = RequestType.rawValue.getter();
  v42 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v25 = swift_allocObject();
  v45 = xmmword_230E6B3B0;
  *(v25 + 16) = xmmword_230E6B3B0;
  *&v47[0] = 0x6C616E7265746E69;
  *(&v47[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v46) = a1;
  v26 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v26);

  v27 = v47[0];
  v28 = *v44;
  if (*v44)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v29 = swift_allocObject();
    *(v29 + 16) = v45;
    *(v29 + 32) = v28;
  }

  else
  {
    v29 = 0;
  }

  *(v25 + 32) = v27;
  *(v25 + 48) = v19;
  *(v25 + 56) = 0;
  *(v25 + 64) = v22;
  *(v25 + 72) = v20 & 1;
  *(v25 + 80) = v29;
  v31 = *(a4 + 8);
  v30 = *(a4 + 16);
  v32 = v28;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v33 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v34 = swift_allocObject();
  *(v34 + 16) = v45;
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = v23;
  *(v35 + 32) = v42;
  *(v35 + 40) = 1;
  *(v35 + 48) = v25;
  *(v35 + 56) = v31;
  *(v35 + 64) = v30;
  *(v35 + 72) = 257;
  *(v35 + 80) = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = &unk_230E6E6E8;
  *(v36 + 24) = v35;
  *(v34 + 32) = &unk_230E6E6F0;
  *(v34 + 40) = v36;
  v37 = sub_230E69310();
  v38 = v43;
  (*(*(v37 - 8) + 56))(v43, 1, 1, v37);
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v34;

  sub_230D8F204(0, 0, v38, &unk_230E6E6F8, v39);
}

uint64_t sub_230D34A54(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v44 = a5;
  v69 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v41 - v13;
  *&v47[0] = 0;
  *(&v47[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v46) = a1;
  v15 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v15);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  memset(v47, 0, sizeof(v47));
  v46 = 93;
  v17 = task_info(*MEMORY[0x277D85F48], 0x16u, v47, &v46);
  v18 = 0.0;
  if (!v17)
  {
    if (__CFADD__(v48, *(&v52 + 1)))
    {
      __break(1u);
    }

    v18 = vcvtd_n_f64_u64(v48 + *(&v52 + 1), 0x14uLL);
  }

  v43 = v14;
  v19 = Current - a6;
  v20 = (v17 != 0) | a3;
  v21 = v18 - *&a2;
  if ((v17 != 0) | a3 & 1)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v21;
  }

  sub_230E68950();
  LOBYTE(v47[0]) = *a4;
  v23 = RequestType.rawValue.getter();
  v42 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v25 = swift_allocObject();
  v45 = xmmword_230E6B3B0;
  *(v25 + 16) = xmmword_230E6B3B0;
  *&v47[0] = 0x6C616E7265746E69;
  *(&v47[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v46) = a1;
  v26 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v26);

  v27 = v47[0];
  v28 = *v44;
  if (*v44)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v29 = swift_allocObject();
    *(v29 + 16) = v45;
    *(v29 + 32) = v28;
  }

  else
  {
    v29 = 0;
  }

  *(v25 + 32) = v27;
  *(v25 + 48) = v19;
  *(v25 + 56) = 0;
  *(v25 + 64) = v22;
  *(v25 + 72) = v20 & 1;
  *(v25 + 80) = v29;
  v31 = *(a4 + 8);
  v30 = *(a4 + 16);
  v32 = v28;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v33 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v34 = swift_allocObject();
  *(v34 + 16) = v45;
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = v23;
  *(v35 + 32) = v42;
  *(v35 + 40) = 1;
  *(v35 + 48) = v25;
  *(v35 + 56) = v31;
  *(v35 + 64) = v30;
  *(v35 + 72) = 257;
  *(v35 + 80) = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = &unk_230E73430;
  *(v36 + 24) = v35;
  *(v34 + 32) = &unk_230E6E4F0;
  *(v34 + 40) = v36;
  v37 = sub_230E69310();
  v38 = v43;
  (*(*(v37 - 8) + 56))(v43, 1, 1, v37);
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v34;

  sub_230D8F204(0, 0, v38, &unk_230E73440, v39);
}

uint64_t sub_230D34F14(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v44 = a5;
  v69 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v41 - v13;
  *&v47[0] = 0;
  *(&v47[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v46) = a1;
  v15 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v15);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  memset(v47, 0, sizeof(v47));
  v46 = 93;
  v17 = task_info(*MEMORY[0x277D85F48], 0x16u, v47, &v46);
  v18 = 0.0;
  if (!v17)
  {
    if (__CFADD__(v48, *(&v52 + 1)))
    {
      __break(1u);
    }

    v18 = vcvtd_n_f64_u64(v48 + *(&v52 + 1), 0x14uLL);
  }

  v43 = v14;
  v19 = Current - a6;
  v20 = (v17 != 0) | a3;
  v21 = v18 - *&a2;
  if ((v17 != 0) | a3 & 1)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v21;
  }

  sub_230E68950();
  LOBYTE(v47[0]) = *a4;
  v23 = RequestType.rawValue.getter();
  v42 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v25 = swift_allocObject();
  v45 = xmmword_230E6B3B0;
  *(v25 + 16) = xmmword_230E6B3B0;
  *&v47[0] = 0x6C616E7265746E69;
  *(&v47[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v46) = a1;
  v26 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v26);

  v27 = v47[0];
  v28 = *v44;
  if (*v44)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v29 = swift_allocObject();
    *(v29 + 16) = v45;
    *(v29 + 32) = v28;
  }

  else
  {
    v29 = 0;
  }

  *(v25 + 32) = v27;
  *(v25 + 48) = v19;
  *(v25 + 56) = 0;
  *(v25 + 64) = v22;
  *(v25 + 72) = v20 & 1;
  *(v25 + 80) = v29;
  v31 = *(a4 + 8);
  v30 = *(a4 + 16);
  v32 = v28;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v33 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v34 = swift_allocObject();
  *(v34 + 16) = v45;
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = v23;
  *(v35 + 32) = v42;
  *(v35 + 40) = 1;
  *(v35 + 48) = v25;
  *(v35 + 56) = v31;
  *(v35 + 64) = v30;
  *(v35 + 72) = 257;
  *(v35 + 80) = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = &unk_230E73410;
  *(v36 + 24) = v35;
  *(v34 + 32) = &unk_230E6E478;
  *(v34 + 40) = v36;
  v37 = sub_230E69310();
  v38 = v43;
  (*(*(v37 - 8) + 56))(v43, 1, 1, v37);
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v34;

  sub_230D8F204(0, 0, v38, &unk_230E73420, v39);
}

uint64_t sub_230D353D4(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v44 = a5;
  v69 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v41 - v13;
  *&v47[0] = 0;
  *(&v47[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v46) = a1;
  v15 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v15);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  memset(v47, 0, sizeof(v47));
  v46 = 93;
  v17 = task_info(*MEMORY[0x277D85F48], 0x16u, v47, &v46);
  v18 = 0.0;
  if (!v17)
  {
    if (__CFADD__(v48, *(&v52 + 1)))
    {
      __break(1u);
    }

    v18 = vcvtd_n_f64_u64(v48 + *(&v52 + 1), 0x14uLL);
  }

  v43 = v14;
  v19 = Current - a6;
  v20 = (v17 != 0) | a3;
  v21 = v18 - *&a2;
  if ((v17 != 0) | a3 & 1)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v21;
  }

  sub_230E68950();
  LOBYTE(v47[0]) = *a4;
  v23 = RequestType.rawValue.getter();
  v42 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v25 = swift_allocObject();
  v45 = xmmword_230E6B3B0;
  *(v25 + 16) = xmmword_230E6B3B0;
  *&v47[0] = 0x6C616E7265746E69;
  *(&v47[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v46) = a1;
  v26 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v26);

  v27 = v47[0];
  v28 = *v44;
  if (*v44)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v29 = swift_allocObject();
    *(v29 + 16) = v45;
    *(v29 + 32) = v28;
  }

  else
  {
    v29 = 0;
  }

  *(v25 + 32) = v27;
  *(v25 + 48) = v19;
  *(v25 + 56) = 0;
  *(v25 + 64) = v22;
  *(v25 + 72) = v20 & 1;
  *(v25 + 80) = v29;
  v31 = *(a4 + 8);
  v30 = *(a4 + 16);
  v32 = v28;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v33 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v34 = swift_allocObject();
  *(v34 + 16) = v45;
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = v23;
  *(v35 + 32) = v42;
  *(v35 + 40) = 1;
  *(v35 + 48) = v25;
  *(v35 + 56) = v31;
  *(v35 + 64) = v30;
  *(v35 + 72) = 257;
  *(v35 + 80) = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = &unk_230E6E6A0;
  *(v36 + 24) = v35;
  *(v34 + 32) = &unk_230E6E6A8;
  *(v34 + 40) = v36;
  v37 = sub_230E69310();
  v38 = v43;
  (*(*(v37 - 8) + 56))(v43, 1, 1, v37);
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v34;

  sub_230D8F204(0, 0, v38, &unk_230E6E6B0, v39);
}

uint64_t sub_230D35894(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v44 = a5;
  v69 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v41 - v13;
  *&v47[0] = 0;
  *(&v47[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v46) = a1;
  v15 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v15);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  memset(v47, 0, sizeof(v47));
  v46 = 93;
  v17 = task_info(*MEMORY[0x277D85F48], 0x16u, v47, &v46);
  v18 = 0.0;
  if (!v17)
  {
    if (__CFADD__(v48, *(&v52 + 1)))
    {
      __break(1u);
    }

    v18 = vcvtd_n_f64_u64(v48 + *(&v52 + 1), 0x14uLL);
  }

  v43 = v14;
  v19 = Current - a6;
  v20 = (v17 != 0) | a3;
  v21 = v18 - *&a2;
  if ((v17 != 0) | a3 & 1)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v21;
  }

  sub_230E68950();
  LOBYTE(v47[0]) = *a4;
  v23 = RequestType.rawValue.getter();
  v42 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v25 = swift_allocObject();
  v45 = xmmword_230E6B3B0;
  *(v25 + 16) = xmmword_230E6B3B0;
  *&v47[0] = 0x6C616E7265746E69;
  *(&v47[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v46) = a1;
  v26 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v26);

  v27 = v47[0];
  v28 = *v44;
  if (*v44)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v29 = swift_allocObject();
    *(v29 + 16) = v45;
    *(v29 + 32) = v28;
  }

  else
  {
    v29 = 0;
  }

  *(v25 + 32) = v27;
  *(v25 + 48) = v19;
  *(v25 + 56) = 0;
  *(v25 + 64) = v22;
  *(v25 + 72) = v20 & 1;
  *(v25 + 80) = v29;
  v31 = *(a4 + 8);
  v30 = *(a4 + 16);
  v32 = v28;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v33 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v34 = swift_allocObject();
  *(v34 + 16) = v45;
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = v23;
  *(v35 + 32) = v42;
  *(v35 + 40) = 1;
  *(v35 + 48) = v25;
  *(v35 + 56) = v31;
  *(v35 + 64) = v30;
  *(v35 + 72) = 257;
  *(v35 + 80) = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = &unk_230E6E6D0;
  *(v36 + 24) = v35;
  *(v34 + 32) = &unk_230E6E6D8;
  *(v34 + 40) = v36;
  v37 = sub_230E69310();
  v38 = v43;
  (*(*(v37 - 8) + 56))(v43, 1, 1, v37);
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v34;

  sub_230D8F204(0, 0, v38, &unk_230E6E6E0, v39);
}

uint64_t sub_230D35D54(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v44 = a5;
  v69 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v41 - v13;
  *&v47[0] = 0;
  *(&v47[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v46) = a1;
  v15 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v15);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  memset(v47, 0, sizeof(v47));
  v46 = 93;
  v17 = task_info(*MEMORY[0x277D85F48], 0x16u, v47, &v46);
  v18 = 0.0;
  if (!v17)
  {
    if (__CFADD__(v48, *(&v52 + 1)))
    {
      __break(1u);
    }

    v18 = vcvtd_n_f64_u64(v48 + *(&v52 + 1), 0x14uLL);
  }

  v43 = v14;
  v19 = Current - a6;
  v20 = (v17 != 0) | a3;
  v21 = v18 - *&a2;
  if ((v17 != 0) | a3 & 1)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v21;
  }

  sub_230E68950();
  LOBYTE(v47[0]) = *a4;
  v23 = RequestType.rawValue.getter();
  v42 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v25 = swift_allocObject();
  v45 = xmmword_230E6B3B0;
  *(v25 + 16) = xmmword_230E6B3B0;
  *&v47[0] = 0x6C616E7265746E69;
  *(&v47[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v46) = a1;
  v26 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v26);

  v27 = v47[0];
  v28 = *v44;
  if (*v44)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v29 = swift_allocObject();
    *(v29 + 16) = v45;
    *(v29 + 32) = v28;
  }

  else
  {
    v29 = 0;
  }

  *(v25 + 32) = v27;
  *(v25 + 48) = v19;
  *(v25 + 56) = 0;
  *(v25 + 64) = v22;
  *(v25 + 72) = v20 & 1;
  *(v25 + 80) = v29;
  v31 = *(a4 + 8);
  v30 = *(a4 + 16);
  v32 = v28;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v33 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v34 = swift_allocObject();
  *(v34 + 16) = v45;
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = v23;
  *(v35 + 32) = v42;
  *(v35 + 40) = 1;
  *(v35 + 48) = v25;
  *(v35 + 56) = v31;
  *(v35 + 64) = v30;
  *(v35 + 72) = 257;
  *(v35 + 80) = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = &unk_230E6E6B8;
  *(v36 + 24) = v35;
  *(v34 + 32) = &unk_230E6E6C0;
  *(v34 + 40) = v36;
  v37 = sub_230E69310();
  v38 = v43;
  (*(*(v37 - 8) + 56))(v43, 1, 1, v37);
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v34;

  sub_230D8F204(0, 0, v38, &unk_230E6E6C8, v39);
}

uint64_t sub_230D36214(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v44 = a5;
  v69 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v41 - v13;
  *&v47[0] = 0;
  *(&v47[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v46) = a1;
  v15 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v15);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  memset(v47, 0, sizeof(v47));
  v46 = 93;
  v17 = task_info(*MEMORY[0x277D85F48], 0x16u, v47, &v46);
  v18 = 0.0;
  if (!v17)
  {
    if (__CFADD__(v48, *(&v52 + 1)))
    {
      __break(1u);
    }

    v18 = vcvtd_n_f64_u64(v48 + *(&v52 + 1), 0x14uLL);
  }

  v43 = v14;
  v19 = Current - a6;
  v20 = (v17 != 0) | a3;
  v21 = v18 - *&a2;
  if ((v17 != 0) | a3 & 1)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v21;
  }

  sub_230E68950();
  LOBYTE(v47[0]) = *a4;
  v23 = RequestType.rawValue.getter();
  v42 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v25 = swift_allocObject();
  v45 = xmmword_230E6B3B0;
  *(v25 + 16) = xmmword_230E6B3B0;
  *&v47[0] = 0x6C616E7265746E69;
  *(&v47[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v46) = a1;
  v26 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v26);

  v27 = v47[0];
  v28 = *v44;
  if (*v44)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v29 = swift_allocObject();
    *(v29 + 16) = v45;
    *(v29 + 32) = v28;
  }

  else
  {
    v29 = 0;
  }

  *(v25 + 32) = v27;
  *(v25 + 48) = v19;
  *(v25 + 56) = 0;
  *(v25 + 64) = v22;
  *(v25 + 72) = v20 & 1;
  *(v25 + 80) = v29;
  v31 = *(a4 + 8);
  v30 = *(a4 + 16);
  v32 = v28;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v33 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v34 = swift_allocObject();
  *(v34 + 16) = v45;
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = v23;
  *(v35 + 32) = v42;
  *(v35 + 40) = 1;
  *(v35 + 48) = v25;
  *(v35 + 56) = v31;
  *(v35 + 64) = v30;
  *(v35 + 72) = 257;
  *(v35 + 80) = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = &unk_230E6E708;
  *(v36 + 24) = v35;
  *(v34 + 32) = &unk_230E6E710;
  *(v34 + 40) = v36;
  v37 = sub_230E69310();
  v38 = v43;
  (*(*(v37 - 8) + 56))(v43, 1, 1, v37);
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v34;

  sub_230D8F204(0, 0, v38, &unk_230E6E718, v39);
}

uint64_t sub_230D366D4(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v44 = a5;
  v69 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v41 - v13;
  *&v47[0] = 0;
  *(&v47[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v46) = a1;
  v15 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v15);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  memset(v47, 0, sizeof(v47));
  v46 = 93;
  v17 = task_info(*MEMORY[0x277D85F48], 0x16u, v47, &v46);
  v18 = 0.0;
  if (!v17)
  {
    if (__CFADD__(v48, *(&v52 + 1)))
    {
      __break(1u);
    }

    v18 = vcvtd_n_f64_u64(v48 + *(&v52 + 1), 0x14uLL);
  }

  v43 = v14;
  v19 = Current - a6;
  v20 = (v17 != 0) | a3;
  v21 = v18 - *&a2;
  if ((v17 != 0) | a3 & 1)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v21;
  }

  sub_230E68950();
  LOBYTE(v47[0]) = *a4;
  v23 = RequestType.rawValue.getter();
  v42 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v25 = swift_allocObject();
  v45 = xmmword_230E6B3B0;
  *(v25 + 16) = xmmword_230E6B3B0;
  *&v47[0] = 0x6C616E7265746E69;
  *(&v47[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v46) = a1;
  v26 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v26);

  v27 = v47[0];
  v28 = *v44;
  if (*v44)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v29 = swift_allocObject();
    *(v29 + 16) = v45;
    *(v29 + 32) = v28;
  }

  else
  {
    v29 = 0;
  }

  *(v25 + 32) = v27;
  *(v25 + 48) = v19;
  *(v25 + 56) = 0;
  *(v25 + 64) = v22;
  *(v25 + 72) = v20 & 1;
  *(v25 + 80) = v29;
  v31 = *(a4 + 8);
  v30 = *(a4 + 16);
  v32 = v28;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v33 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v34 = swift_allocObject();
  *(v34 + 16) = v45;
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = v23;
  *(v35 + 32) = v42;
  *(v35 + 40) = 1;
  *(v35 + 48) = v25;
  *(v35 + 56) = v31;
  *(v35 + 64) = v30;
  *(v35 + 72) = 257;
  *(v35 + 80) = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = &unk_230E6E520;
  *(v36 + 24) = v35;
  *(v34 + 32) = &unk_230E6E528;
  *(v34 + 40) = v36;
  v37 = sub_230E69310();
  v38 = v43;
  (*(*(v37 - 8) + 56))(v43, 1, 1, v37);
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v34;

  sub_230D8F204(0, 0, v38, &unk_230E6E530, v39);
}

uint64_t sub_230D36B94(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v44 = a5;
  v69 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v41 - v13;
  *&v47[0] = 0;
  *(&v47[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v46) = a1;
  v15 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v15);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  memset(v47, 0, sizeof(v47));
  v46 = 93;
  v17 = task_info(*MEMORY[0x277D85F48], 0x16u, v47, &v46);
  v18 = 0.0;
  if (!v17)
  {
    if (__CFADD__(v48, *(&v52 + 1)))
    {
      __break(1u);
    }

    v18 = vcvtd_n_f64_u64(v48 + *(&v52 + 1), 0x14uLL);
  }

  v43 = v14;
  v19 = Current - a6;
  v20 = (v17 != 0) | a3;
  v21 = v18 - *&a2;
  if ((v17 != 0) | a3 & 1)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v21;
  }

  sub_230E68950();
  LOBYTE(v47[0]) = *a4;
  v23 = RequestType.rawValue.getter();
  v42 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v25 = swift_allocObject();
  v45 = xmmword_230E6B3B0;
  *(v25 + 16) = xmmword_230E6B3B0;
  *&v47[0] = 0x6C616E7265746E69;
  *(&v47[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v46) = a1;
  v26 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v26);

  v27 = v47[0];
  v28 = *v44;
  if (*v44)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v29 = swift_allocObject();
    *(v29 + 16) = v45;
    *(v29 + 32) = v28;
  }

  else
  {
    v29 = 0;
  }

  *(v25 + 32) = v27;
  *(v25 + 48) = v19;
  *(v25 + 56) = 0;
  *(v25 + 64) = v22;
  *(v25 + 72) = v20 & 1;
  *(v25 + 80) = v29;
  v31 = *(a4 + 8);
  v30 = *(a4 + 16);
  v32 = v28;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v33 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v34 = swift_allocObject();
  *(v34 + 16) = v45;
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = v23;
  *(v35 + 32) = v42;
  *(v35 + 40) = 1;
  *(v35 + 48) = v25;
  *(v35 + 56) = v31;
  *(v35 + 64) = v30;
  *(v35 + 72) = 257;
  *(v35 + 80) = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = &unk_230E6E4D0;
  *(v36 + 24) = v35;
  *(v34 + 32) = &unk_230E6E4D8;
  *(v34 + 40) = v36;
  v37 = sub_230E69310();
  v38 = v43;
  (*(*(v37 - 8) + 56))(v43, 1, 1, v37);
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v34;

  sub_230D8F204(0, 0, v38, &unk_230E6E4E0, v39);
}

uint64_t sub_230D37054(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v44 = a5;
  v69 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v41 - v13;
  *&v47[0] = 0;
  *(&v47[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v46) = a1;
  v15 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v15);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  memset(v47, 0, sizeof(v47));
  v46 = 93;
  v17 = task_info(*MEMORY[0x277D85F48], 0x16u, v47, &v46);
  v18 = 0.0;
  if (!v17)
  {
    if (__CFADD__(v48, *(&v52 + 1)))
    {
      __break(1u);
    }

    v18 = vcvtd_n_f64_u64(v48 + *(&v52 + 1), 0x14uLL);
  }

  v43 = v14;
  v19 = Current - a6;
  v20 = (v17 != 0) | a3;
  v21 = v18 - *&a2;
  if ((v17 != 0) | a3 & 1)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v21;
  }

  sub_230E68950();
  LOBYTE(v47[0]) = *a4;
  v23 = RequestType.rawValue.getter();
  v42 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v25 = swift_allocObject();
  v45 = xmmword_230E6B3B0;
  *(v25 + 16) = xmmword_230E6B3B0;
  *&v47[0] = 0x6C616E7265746E69;
  *(&v47[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v46) = a1;
  v26 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v26);

  v27 = v47[0];
  v28 = *v44;
  if (*v44)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v29 = swift_allocObject();
    *(v29 + 16) = v45;
    *(v29 + 32) = v28;
  }

  else
  {
    v29 = 0;
  }

  *(v25 + 32) = v27;
  *(v25 + 48) = v19;
  *(v25 + 56) = 0;
  *(v25 + 64) = v22;
  *(v25 + 72) = v20 & 1;
  *(v25 + 80) = v29;
  v31 = *(a4 + 8);
  v30 = *(a4 + 16);
  v32 = v28;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v33 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v34 = swift_allocObject();
  *(v34 + 16) = v45;
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = v23;
  *(v35 + 32) = v42;
  *(v35 + 40) = 1;
  *(v35 + 48) = v25;
  *(v35 + 56) = v31;
  *(v35 + 64) = v30;
  *(v35 + 72) = 257;
  *(v35 + 80) = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = &unk_230E6E688;
  *(v36 + 24) = v35;
  *(v34 + 32) = &unk_230E6E690;
  *(v34 + 40) = v36;
  v37 = sub_230E69310();
  v38 = v43;
  (*(*(v37 - 8) + 56))(v43, 1, 1, v37);
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v34;

  sub_230D8F204(0, 0, v38, &unk_230E6E698, v39);
}

uint64_t sub_230D37514(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v44 = a5;
  v69 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v41 - v13;
  *&v47[0] = 0;
  *(&v47[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v46) = a1;
  v15 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v15);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  memset(v47, 0, sizeof(v47));
  v46 = 93;
  v17 = task_info(*MEMORY[0x277D85F48], 0x16u, v47, &v46);
  v18 = 0.0;
  if (!v17)
  {
    if (__CFADD__(v48, *(&v52 + 1)))
    {
      __break(1u);
    }

    v18 = vcvtd_n_f64_u64(v48 + *(&v52 + 1), 0x14uLL);
  }

  v43 = v14;
  v19 = Current - a6;
  v20 = (v17 != 0) | a3;
  v21 = v18 - *&a2;
  if ((v17 != 0) | a3 & 1)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v21;
  }

  sub_230E68950();
  LOBYTE(v47[0]) = *a4;
  v23 = RequestType.rawValue.getter();
  v42 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v25 = swift_allocObject();
  v45 = xmmword_230E6B3B0;
  *(v25 + 16) = xmmword_230E6B3B0;
  *&v47[0] = 0x6C616E7265746E69;
  *(&v47[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v46) = a1;
  v26 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v26);

  v27 = v47[0];
  v28 = *v44;
  if (*v44)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v29 = swift_allocObject();
    *(v29 + 16) = v45;
    *(v29 + 32) = v28;
  }

  else
  {
    v29 = 0;
  }

  *(v25 + 32) = v27;
  *(v25 + 48) = v19;
  *(v25 + 56) = 0;
  *(v25 + 64) = v22;
  *(v25 + 72) = v20 & 1;
  *(v25 + 80) = v29;
  v31 = *(a4 + 8);
  v30 = *(a4 + 16);
  v32 = v28;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v33 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v34 = swift_allocObject();
  *(v34 + 16) = v45;
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = v23;
  *(v35 + 32) = v42;
  *(v35 + 40) = 1;
  *(v35 + 48) = v25;
  *(v35 + 56) = v31;
  *(v35 + 64) = v30;
  *(v35 + 72) = 257;
  *(v35 + 80) = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = &unk_230E6E508;
  *(v36 + 24) = v35;
  *(v34 + 32) = &unk_230E6E510;
  *(v34 + 40) = v36;
  v37 = sub_230E69310();
  v38 = v43;
  (*(*(v37 - 8) + 56))(v43, 1, 1, v37);
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v34;

  sub_230D8F204(0, 0, v38, &unk_230E6E518, v39);
}

uint64_t sub_230D379D4(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v44 = a5;
  v69 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v41 - v13;
  *&v47[0] = 0;
  *(&v47[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v46) = a1;
  v15 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v15);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  memset(v47, 0, sizeof(v47));
  v46 = 93;
  v17 = task_info(*MEMORY[0x277D85F48], 0x16u, v47, &v46);
  v18 = 0.0;
  if (!v17)
  {
    if (__CFADD__(v48, *(&v52 + 1)))
    {
      __break(1u);
    }

    v18 = vcvtd_n_f64_u64(v48 + *(&v52 + 1), 0x14uLL);
  }

  v43 = v14;
  v19 = Current - a6;
  v20 = (v17 != 0) | a3;
  v21 = v18 - *&a2;
  if ((v17 != 0) | a3 & 1)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v21;
  }

  sub_230E68950();
  LOBYTE(v47[0]) = *a4;
  v23 = RequestType.rawValue.getter();
  v42 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v25 = swift_allocObject();
  v45 = xmmword_230E6B3B0;
  *(v25 + 16) = xmmword_230E6B3B0;
  *&v47[0] = 0x6C616E7265746E69;
  *(&v47[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v46) = a1;
  v26 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v26);

  v27 = v47[0];
  v28 = *v44;
  if (*v44)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v29 = swift_allocObject();
    *(v29 + 16) = v45;
    *(v29 + 32) = v28;
  }

  else
  {
    v29 = 0;
  }

  *(v25 + 32) = v27;
  *(v25 + 48) = v19;
  *(v25 + 56) = 0;
  *(v25 + 64) = v22;
  *(v25 + 72) = v20 & 1;
  *(v25 + 80) = v29;
  v31 = *(a4 + 8);
  v30 = *(a4 + 16);
  v32 = v28;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v33 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v34 = swift_allocObject();
  *(v34 + 16) = v45;
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = v23;
  *(v35 + 32) = v42;
  *(v35 + 40) = 1;
  *(v35 + 48) = v25;
  *(v35 + 56) = v31;
  *(v35 + 64) = v30;
  *(v35 + 72) = 257;
  *(v35 + 80) = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = &unk_230E6E670;
  *(v36 + 24) = v35;
  *(v34 + 32) = &unk_230E6E678;
  *(v34 + 40) = v36;
  v37 = sub_230E69310();
  v38 = v43;
  (*(*(v37 - 8) + 56))(v43, 1, 1, v37);
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v34;

  sub_230D8F204(0, 0, v38, &unk_230E6E680, v39);
}

uint64_t sub_230D37E94(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v44 = a5;
  v69 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v41 - v13;
  *&v47[0] = 0;
  *(&v47[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v46) = a1;
  v15 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v15);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  memset(v47, 0, sizeof(v47));
  v46 = 93;
  v17 = task_info(*MEMORY[0x277D85F48], 0x16u, v47, &v46);
  v18 = 0.0;
  if (!v17)
  {
    if (__CFADD__(v48, *(&v52 + 1)))
    {
      __break(1u);
    }

    v18 = vcvtd_n_f64_u64(v48 + *(&v52 + 1), 0x14uLL);
  }

  v43 = v14;
  v19 = Current - a6;
  v20 = (v17 != 0) | a3;
  v21 = v18 - *&a2;
  if ((v17 != 0) | a3 & 1)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v21;
  }

  sub_230E68950();
  LOBYTE(v47[0]) = *a4;
  v23 = RequestType.rawValue.getter();
  v42 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v25 = swift_allocObject();
  v45 = xmmword_230E6B3B0;
  *(v25 + 16) = xmmword_230E6B3B0;
  *&v47[0] = 0x6C616E7265746E69;
  *(&v47[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v46) = a1;
  v26 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v26);

  v27 = v47[0];
  v28 = *v44;
  if (*v44)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v29 = swift_allocObject();
    *(v29 + 16) = v45;
    *(v29 + 32) = v28;
  }

  else
  {
    v29 = 0;
  }

  *(v25 + 32) = v27;
  *(v25 + 48) = v19;
  *(v25 + 56) = 0;
  *(v25 + 64) = v22;
  *(v25 + 72) = v20 & 1;
  *(v25 + 80) = v29;
  v31 = *(a4 + 8);
  v30 = *(a4 + 16);
  v32 = v28;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v33 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v34 = swift_allocObject();
  *(v34 + 16) = v45;
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = v23;
  *(v35 + 32) = v42;
  *(v35 + 40) = 1;
  *(v35 + 48) = v25;
  *(v35 + 56) = v31;
  *(v35 + 64) = v30;
  *(v35 + 72) = 257;
  *(v35 + 80) = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = &unk_230E6E658;
  *(v36 + 24) = v35;
  *(v34 + 32) = &unk_230E6E660;
  *(v34 + 40) = v36;
  v37 = sub_230E69310();
  v38 = v43;
  (*(*(v37 - 8) + 56))(v43, 1, 1, v37);
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v34;

  sub_230D8F204(0, 0, v38, &unk_230E6E668, v39);
}

uint64_t sub_230D38354(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v44 = a5;
  v69 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v41 - v13;
  *&v47[0] = 0;
  *(&v47[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v46) = a1;
  v15 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v15);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  memset(v47, 0, sizeof(v47));
  v46 = 93;
  v17 = task_info(*MEMORY[0x277D85F48], 0x16u, v47, &v46);
  v18 = 0.0;
  if (!v17)
  {
    if (__CFADD__(v48, *(&v52 + 1)))
    {
      __break(1u);
    }

    v18 = vcvtd_n_f64_u64(v48 + *(&v52 + 1), 0x14uLL);
  }

  v43 = v14;
  v19 = Current - a6;
  v20 = (v17 != 0) | a3;
  v21 = v18 - *&a2;
  if ((v17 != 0) | a3 & 1)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v21;
  }

  sub_230E68950();
  LOBYTE(v47[0]) = *a4;
  v23 = RequestType.rawValue.getter();
  v42 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v25 = swift_allocObject();
  v45 = xmmword_230E6B3B0;
  *(v25 + 16) = xmmword_230E6B3B0;
  *&v47[0] = 0x6C616E7265746E69;
  *(&v47[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v46) = a1;
  v26 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v26);

  v27 = v47[0];
  v28 = *v44;
  if (*v44)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v29 = swift_allocObject();
    *(v29 + 16) = v45;
    *(v29 + 32) = v28;
  }

  else
  {
    v29 = 0;
  }

  *(v25 + 32) = v27;
  *(v25 + 48) = v19;
  *(v25 + 56) = 0;
  *(v25 + 64) = v22;
  *(v25 + 72) = v20 & 1;
  *(v25 + 80) = v29;
  v31 = *(a4 + 8);
  v30 = *(a4 + 16);
  v32 = v28;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v33 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v34 = swift_allocObject();
  *(v34 + 16) = v45;
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = v23;
  *(v35 + 32) = v42;
  *(v35 + 40) = 1;
  *(v35 + 48) = v25;
  *(v35 + 56) = v31;
  *(v35 + 64) = v30;
  *(v35 + 72) = 257;
  *(v35 + 80) = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = &unk_230E6E640;
  *(v36 + 24) = v35;
  *(v34 + 32) = &unk_230E6E648;
  *(v34 + 40) = v36;
  v37 = sub_230E69310();
  v38 = v43;
  (*(*(v37 - 8) + 56))(v43, 1, 1, v37);
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v34;

  sub_230D8F204(0, 0, v38, &unk_230E6E650, v39);
}

uint64_t sub_230D38814(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v44 = a5;
  v69 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v41 - v13;
  *&v47[0] = 0;
  *(&v47[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v46) = a1;
  v15 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v15);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  memset(v47, 0, sizeof(v47));
  v46 = 93;
  v17 = task_info(*MEMORY[0x277D85F48], 0x16u, v47, &v46);
  v18 = 0.0;
  if (!v17)
  {
    if (__CFADD__(v48, *(&v52 + 1)))
    {
      __break(1u);
    }

    v18 = vcvtd_n_f64_u64(v48 + *(&v52 + 1), 0x14uLL);
  }

  v43 = v14;
  v19 = Current - a6;
  v20 = (v17 != 0) | a3;
  v21 = v18 - *&a2;
  if ((v17 != 0) | a3 & 1)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v21;
  }

  sub_230E68950();
  LOBYTE(v47[0]) = *a4;
  v23 = RequestType.rawValue.getter();
  v42 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v25 = swift_allocObject();
  v45 = xmmword_230E6B3B0;
  *(v25 + 16) = xmmword_230E6B3B0;
  *&v47[0] = 0x6C616E7265746E69;
  *(&v47[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v46) = a1;
  v26 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v26);

  v27 = v47[0];
  v28 = *v44;
  if (*v44)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v29 = swift_allocObject();
    *(v29 + 16) = v45;
    *(v29 + 32) = v28;
  }

  else
  {
    v29 = 0;
  }

  *(v25 + 32) = v27;
  *(v25 + 48) = v19;
  *(v25 + 56) = 0;
  *(v25 + 64) = v22;
  *(v25 + 72) = v20 & 1;
  *(v25 + 80) = v29;
  v31 = *(a4 + 8);
  v30 = *(a4 + 16);
  v32 = v28;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v33 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v34 = swift_allocObject();
  *(v34 + 16) = v45;
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = v23;
  *(v35 + 32) = v42;
  *(v35 + 40) = 1;
  *(v35 + 48) = v25;
  *(v35 + 56) = v31;
  *(v35 + 64) = v30;
  *(v35 + 72) = 257;
  *(v35 + 80) = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = &unk_230E6E628;
  *(v36 + 24) = v35;
  *(v34 + 32) = &unk_230E6E630;
  *(v34 + 40) = v36;
  v37 = sub_230E69310();
  v38 = v43;
  (*(*(v37 - 8) + 56))(v43, 1, 1, v37);
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v34;

  sub_230D8F204(0, 0, v38, &unk_230E6E638, v39);
}

uint64_t sub_230D38CD4(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v44 = a5;
  v69 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v41 - v13;
  *&v47[0] = 0;
  *(&v47[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v46) = a1;
  v15 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v15);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  memset(v47, 0, sizeof(v47));
  v46 = 93;
  v17 = task_info(*MEMORY[0x277D85F48], 0x16u, v47, &v46);
  v18 = 0.0;
  if (!v17)
  {
    if (__CFADD__(v48, *(&v52 + 1)))
    {
      __break(1u);
    }

    v18 = vcvtd_n_f64_u64(v48 + *(&v52 + 1), 0x14uLL);
  }

  v43 = v14;
  v19 = Current - a6;
  v20 = (v17 != 0) | a3;
  v21 = v18 - *&a2;
  if ((v17 != 0) | a3 & 1)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v21;
  }

  sub_230E68950();
  LOBYTE(v47[0]) = *a4;
  v23 = RequestType.rawValue.getter();
  v42 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v25 = swift_allocObject();
  v45 = xmmword_230E6B3B0;
  *(v25 + 16) = xmmword_230E6B3B0;
  *&v47[0] = 0x6C616E7265746E69;
  *(&v47[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v46) = a1;
  v26 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v26);

  v27 = v47[0];
  v28 = *v44;
  if (*v44)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v29 = swift_allocObject();
    *(v29 + 16) = v45;
    *(v29 + 32) = v28;
  }

  else
  {
    v29 = 0;
  }

  *(v25 + 32) = v27;
  *(v25 + 48) = v19;
  *(v25 + 56) = 0;
  *(v25 + 64) = v22;
  *(v25 + 72) = v20 & 1;
  *(v25 + 80) = v29;
  v31 = *(a4 + 8);
  v30 = *(a4 + 16);
  v32 = v28;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v33 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v34 = swift_allocObject();
  *(v34 + 16) = v45;
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = v23;
  *(v35 + 32) = v42;
  *(v35 + 40) = 1;
  *(v35 + 48) = v25;
  *(v35 + 56) = v31;
  *(v35 + 64) = v30;
  *(v35 + 72) = 257;
  *(v35 + 80) = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = &unk_230E6E580;
  *(v36 + 24) = v35;
  *(v34 + 32) = &unk_230E6E588;
  *(v34 + 40) = v36;
  v37 = sub_230E69310();
  v38 = v43;
  (*(*(v37 - 8) + 56))(v43, 1, 1, v37);
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v34;

  sub_230D8F204(0, 0, v38, &unk_230E6E590, v39);
}

uint64_t sub_230D39194(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v44 = a5;
  v69 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v41 - v13;
  *&v47[0] = 0;
  *(&v47[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v46) = a1;
  v15 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v15);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  memset(v47, 0, sizeof(v47));
  v46 = 93;
  v17 = task_info(*MEMORY[0x277D85F48], 0x16u, v47, &v46);
  v18 = 0.0;
  if (!v17)
  {
    if (__CFADD__(v48, *(&v52 + 1)))
    {
      __break(1u);
    }

    v18 = vcvtd_n_f64_u64(v48 + *(&v52 + 1), 0x14uLL);
  }

  v43 = v14;
  v19 = Current - a6;
  v20 = (v17 != 0) | a3;
  v21 = v18 - *&a2;
  if ((v17 != 0) | a3 & 1)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v21;
  }

  sub_230E68950();
  LOBYTE(v47[0]) = *a4;
  v23 = RequestType.rawValue.getter();
  v42 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v25 = swift_allocObject();
  v45 = xmmword_230E6B3B0;
  *(v25 + 16) = xmmword_230E6B3B0;
  *&v47[0] = 0x6C616E7265746E69;
  *(&v47[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v46) = a1;
  v26 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v26);

  v27 = v47[0];
  v28 = *v44;
  if (*v44)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v29 = swift_allocObject();
    *(v29 + 16) = v45;
    *(v29 + 32) = v28;
  }

  else
  {
    v29 = 0;
  }

  *(v25 + 32) = v27;
  *(v25 + 48) = v19;
  *(v25 + 56) = 0;
  *(v25 + 64) = v22;
  *(v25 + 72) = v20 & 1;
  *(v25 + 80) = v29;
  v31 = *(a4 + 8);
  v30 = *(a4 + 16);
  v32 = v28;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v33 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v34 = swift_allocObject();
  *(v34 + 16) = v45;
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = v23;
  *(v35 + 32) = v42;
  *(v35 + 40) = 1;
  *(v35 + 48) = v25;
  *(v35 + 56) = v31;
  *(v35 + 64) = v30;
  *(v35 + 72) = 257;
  *(v35 + 80) = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = &unk_230E6E610;
  *(v36 + 24) = v35;
  *(v34 + 32) = &unk_230E6E618;
  *(v34 + 40) = v36;
  v37 = sub_230E69310();
  v38 = v43;
  (*(*(v37 - 8) + 56))(v43, 1, 1, v37);
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v34;

  sub_230D8F204(0, 0, v38, &unk_230E6E620, v39);
}

uint64_t sub_230D39654(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v44 = a5;
  v69 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v41 - v13;
  *&v47[0] = 0;
  *(&v47[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v46) = a1;
  v15 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v15);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  memset(v47, 0, sizeof(v47));
  v46 = 93;
  v17 = task_info(*MEMORY[0x277D85F48], 0x16u, v47, &v46);
  v18 = 0.0;
  if (!v17)
  {
    if (__CFADD__(v48, *(&v52 + 1)))
    {
      __break(1u);
    }

    v18 = vcvtd_n_f64_u64(v48 + *(&v52 + 1), 0x14uLL);
  }

  v43 = v14;
  v19 = Current - a6;
  v20 = (v17 != 0) | a3;
  v21 = v18 - *&a2;
  if ((v17 != 0) | a3 & 1)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v21;
  }

  sub_230E68950();
  LOBYTE(v47[0]) = *a4;
  v23 = RequestType.rawValue.getter();
  v42 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v25 = swift_allocObject();
  v45 = xmmword_230E6B3B0;
  *(v25 + 16) = xmmword_230E6B3B0;
  *&v47[0] = 0x6C616E7265746E69;
  *(&v47[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v46) = a1;
  v26 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v26);

  v27 = v47[0];
  v28 = *v44;
  if (*v44)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v29 = swift_allocObject();
    *(v29 + 16) = v45;
    *(v29 + 32) = v28;
  }

  else
  {
    v29 = 0;
  }

  *(v25 + 32) = v27;
  *(v25 + 48) = v19;
  *(v25 + 56) = 0;
  *(v25 + 64) = v22;
  *(v25 + 72) = v20 & 1;
  *(v25 + 80) = v29;
  v31 = *(a4 + 8);
  v30 = *(a4 + 16);
  v32 = v28;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v33 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v34 = swift_allocObject();
  *(v34 + 16) = v45;
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = v23;
  *(v35 + 32) = v42;
  *(v35 + 40) = 1;
  *(v35 + 48) = v25;
  *(v35 + 56) = v31;
  *(v35 + 64) = v30;
  *(v35 + 72) = 257;
  *(v35 + 80) = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = &unk_230E6E5E0;
  *(v36 + 24) = v35;
  *(v34 + 32) = &unk_230E6E5E8;
  *(v34 + 40) = v36;
  v37 = sub_230E69310();
  v38 = v43;
  (*(*(v37 - 8) + 56))(v43, 1, 1, v37);
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v34;

  sub_230D8F204(0, 0, v38, &unk_230E6E5F0, v39);
}

uint64_t sub_230D39B14(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v44 = a5;
  v69 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v41 - v13;
  *&v47[0] = 0;
  *(&v47[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v46) = a1;
  v15 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v15);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  memset(v47, 0, sizeof(v47));
  v46 = 93;
  v17 = task_info(*MEMORY[0x277D85F48], 0x16u, v47, &v46);
  v18 = 0.0;
  if (!v17)
  {
    if (__CFADD__(v48, *(&v52 + 1)))
    {
      __break(1u);
    }

    v18 = vcvtd_n_f64_u64(v48 + *(&v52 + 1), 0x14uLL);
  }

  v43 = v14;
  v19 = Current - a6;
  v20 = (v17 != 0) | a3;
  v21 = v18 - *&a2;
  if ((v17 != 0) | a3 & 1)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v21;
  }

  sub_230E68950();
  LOBYTE(v47[0]) = *a4;
  v23 = RequestType.rawValue.getter();
  v42 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v25 = swift_allocObject();
  v45 = xmmword_230E6B3B0;
  *(v25 + 16) = xmmword_230E6B3B0;
  *&v47[0] = 0x6C616E7265746E69;
  *(&v47[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v46) = a1;
  v26 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v26);

  v27 = v47[0];
  v28 = *v44;
  if (*v44)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v29 = swift_allocObject();
    *(v29 + 16) = v45;
    *(v29 + 32) = v28;
  }

  else
  {
    v29 = 0;
  }

  *(v25 + 32) = v27;
  *(v25 + 48) = v19;
  *(v25 + 56) = 0;
  *(v25 + 64) = v22;
  *(v25 + 72) = v20 & 1;
  *(v25 + 80) = v29;
  v31 = *(a4 + 8);
  v30 = *(a4 + 16);
  v32 = v28;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v33 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v34 = swift_allocObject();
  *(v34 + 16) = v45;
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = v23;
  *(v35 + 32) = v42;
  *(v35 + 40) = 1;
  *(v35 + 48) = v25;
  *(v35 + 56) = v31;
  *(v35 + 64) = v30;
  *(v35 + 72) = 257;
  *(v35 + 80) = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = &unk_230E6E5C8;
  *(v36 + 24) = v35;
  *(v34 + 32) = &unk_230E6E5D0;
  *(v34 + 40) = v36;
  v37 = sub_230E69310();
  v38 = v43;
  (*(*(v37 - 8) + 56))(v43, 1, 1, v37);
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v34;

  sub_230D8F204(0, 0, v38, &unk_230E6E5D8, v39);
}

uint64_t sub_230D39FD4(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v44 = a5;
  v69 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v41 - v13;
  *&v47[0] = 0;
  *(&v47[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v46) = a1;
  v15 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v15);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  memset(v47, 0, sizeof(v47));
  v46 = 93;
  v17 = task_info(*MEMORY[0x277D85F48], 0x16u, v47, &v46);
  v18 = 0.0;
  if (!v17)
  {
    if (__CFADD__(v48, *(&v52 + 1)))
    {
      __break(1u);
    }

    v18 = vcvtd_n_f64_u64(v48 + *(&v52 + 1), 0x14uLL);
  }

  v43 = v14;
  v19 = Current - a6;
  v20 = (v17 != 0) | a3;
  v21 = v18 - *&a2;
  if ((v17 != 0) | a3 & 1)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v21;
  }

  sub_230E68950();
  LOBYTE(v47[0]) = *a4;
  v23 = RequestType.rawValue.getter();
  v42 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v25 = swift_allocObject();
  v45 = xmmword_230E6B3B0;
  *(v25 + 16) = xmmword_230E6B3B0;
  *&v47[0] = 0x6C616E7265746E69;
  *(&v47[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v46) = a1;
  v26 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v26);

  v27 = v47[0];
  v28 = *v44;
  if (*v44)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v29 = swift_allocObject();
    *(v29 + 16) = v45;
    *(v29 + 32) = v28;
  }

  else
  {
    v29 = 0;
  }

  *(v25 + 32) = v27;
  *(v25 + 48) = v19;
  *(v25 + 56) = 0;
  *(v25 + 64) = v22;
  *(v25 + 72) = v20 & 1;
  *(v25 + 80) = v29;
  v31 = *(a4 + 8);
  v30 = *(a4 + 16);
  v32 = v28;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v33 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v34 = swift_allocObject();
  *(v34 + 16) = v45;
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = v23;
  *(v35 + 32) = v42;
  *(v35 + 40) = 1;
  *(v35 + 48) = v25;
  *(v35 + 56) = v31;
  *(v35 + 64) = v30;
  *(v35 + 72) = 257;
  *(v35 + 80) = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = &unk_230E6E5B0;
  *(v36 + 24) = v35;
  *(v34 + 32) = &unk_230E6E5B8;
  *(v34 + 40) = v36;
  v37 = sub_230E69310();
  v38 = v43;
  (*(*(v37 - 8) + 56))(v43, 1, 1, v37);
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v34;

  sub_230D8F204(0, 0, v38, &unk_230E6E5C0, v39);
}

uint64_t sub_230D3A494(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v44 = a5;
  v69 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v41 - v13;
  *&v47[0] = 0;
  *(&v47[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v46) = a1;
  v15 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v15);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  memset(v47, 0, sizeof(v47));
  v46 = 93;
  v17 = task_info(*MEMORY[0x277D85F48], 0x16u, v47, &v46);
  v18 = 0.0;
  if (!v17)
  {
    if (__CFADD__(v48, *(&v52 + 1)))
    {
      __break(1u);
    }

    v18 = vcvtd_n_f64_u64(v48 + *(&v52 + 1), 0x14uLL);
  }

  v43 = v14;
  v19 = Current - a6;
  v20 = (v17 != 0) | a3;
  v21 = v18 - *&a2;
  if ((v17 != 0) | a3 & 1)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v21;
  }

  sub_230E68950();
  LOBYTE(v47[0]) = *a4;
  v23 = RequestType.rawValue.getter();
  v42 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v25 = swift_allocObject();
  v45 = xmmword_230E6B3B0;
  *(v25 + 16) = xmmword_230E6B3B0;
  *&v47[0] = 0x6C616E7265746E69;
  *(&v47[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v46) = a1;
  v26 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v26);

  v27 = v47[0];
  v28 = *v44;
  if (*v44)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v29 = swift_allocObject();
    *(v29 + 16) = v45;
    *(v29 + 32) = v28;
  }

  else
  {
    v29 = 0;
  }

  *(v25 + 32) = v27;
  *(v25 + 48) = v19;
  *(v25 + 56) = 0;
  *(v25 + 64) = v22;
  *(v25 + 72) = v20 & 1;
  *(v25 + 80) = v29;
  v31 = *(a4 + 8);
  v30 = *(a4 + 16);
  v32 = v28;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v33 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v34 = swift_allocObject();
  *(v34 + 16) = v45;
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = v23;
  *(v35 + 32) = v42;
  *(v35 + 40) = 1;
  *(v35 + 48) = v25;
  *(v35 + 56) = v31;
  *(v35 + 64) = v30;
  *(v35 + 72) = 257;
  *(v35 + 80) = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = &unk_230E6E598;
  *(v36 + 24) = v35;
  *(v34 + 32) = &unk_230E6E5A0;
  *(v34 + 40) = v36;
  v37 = sub_230E69310();
  v38 = v43;
  (*(*(v37 - 8) + 56))(v43, 1, 1, v37);
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v34;

  sub_230D8F204(0, 0, v38, &unk_230E6E5A8, v39);
}

uint64_t sub_230D3A954(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v44 = a5;
  v69 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v41 - v13;
  *&v47[0] = 0;
  *(&v47[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v46) = a1;
  v15 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v15);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  memset(v47, 0, sizeof(v47));
  v46 = 93;
  v17 = task_info(*MEMORY[0x277D85F48], 0x16u, v47, &v46);
  v18 = 0.0;
  if (!v17)
  {
    if (__CFADD__(v48, *(&v52 + 1)))
    {
      __break(1u);
    }

    v18 = vcvtd_n_f64_u64(v48 + *(&v52 + 1), 0x14uLL);
  }

  v43 = v14;
  v19 = Current - a6;
  v20 = (v17 != 0) | a3;
  v21 = v18 - *&a2;
  if ((v17 != 0) | a3 & 1)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v21;
  }

  sub_230E68950();
  LOBYTE(v47[0]) = *a4;
  v23 = RequestType.rawValue.getter();
  v42 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v25 = swift_allocObject();
  v45 = xmmword_230E6B3B0;
  *(v25 + 16) = xmmword_230E6B3B0;
  *&v47[0] = 0x6C616E7265746E69;
  *(&v47[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v46) = a1;
  v26 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v26);

  v27 = v47[0];
  v28 = *v44;
  if (*v44)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v29 = swift_allocObject();
    *(v29 + 16) = v45;
    *(v29 + 32) = v28;
  }

  else
  {
    v29 = 0;
  }

  *(v25 + 32) = v27;
  *(v25 + 48) = v19;
  *(v25 + 56) = 0;
  *(v25 + 64) = v22;
  *(v25 + 72) = v20 & 1;
  *(v25 + 80) = v29;
  v31 = *(a4 + 8);
  v30 = *(a4 + 16);
  v32 = v28;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v33 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v34 = swift_allocObject();
  *(v34 + 16) = v45;
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = v23;
  *(v35 + 32) = v42;
  *(v35 + 40) = 1;
  *(v35 + 48) = v25;
  *(v35 + 56) = v31;
  *(v35 + 64) = v30;
  *(v35 + 72) = 257;
  *(v35 + 80) = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = &unk_230E6E538;
  *(v36 + 24) = v35;
  *(v34 + 32) = &unk_230E6E540;
  *(v34 + 40) = v36;
  v37 = sub_230E69310();
  v38 = v43;
  (*(*(v37 - 8) + 56))(v43, 1, 1, v37);
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v34;

  sub_230D8F204(0, 0, v38, &unk_230E6E548, v39);
}

uint64_t sub_230D3AE14(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v44 = a5;
  v69 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v41 - v13;
  *&v47[0] = 0;
  *(&v47[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v46) = a1;
  v15 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v15);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  memset(v47, 0, sizeof(v47));
  v46 = 93;
  v17 = task_info(*MEMORY[0x277D85F48], 0x16u, v47, &v46);
  v18 = 0.0;
  if (!v17)
  {
    if (__CFADD__(v48, *(&v52 + 1)))
    {
      __break(1u);
    }

    v18 = vcvtd_n_f64_u64(v48 + *(&v52 + 1), 0x14uLL);
  }

  v43 = v14;
  v19 = Current - a6;
  v20 = (v17 != 0) | a3;
  v21 = v18 - *&a2;
  if ((v17 != 0) | a3 & 1)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v21;
  }

  sub_230E68950();
  LOBYTE(v47[0]) = *a4;
  v23 = RequestType.rawValue.getter();
  v42 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v25 = swift_allocObject();
  v45 = xmmword_230E6B3B0;
  *(v25 + 16) = xmmword_230E6B3B0;
  *&v47[0] = 0x6C616E7265746E69;
  *(&v47[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v46) = a1;
  v26 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v26);

  v27 = v47[0];
  v28 = *v44;
  if (*v44)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v29 = swift_allocObject();
    *(v29 + 16) = v45;
    *(v29 + 32) = v28;
  }

  else
  {
    v29 = 0;
  }

  *(v25 + 32) = v27;
  *(v25 + 48) = v19;
  *(v25 + 56) = 0;
  *(v25 + 64) = v22;
  *(v25 + 72) = v20 & 1;
  *(v25 + 80) = v29;
  v31 = *(a4 + 8);
  v30 = *(a4 + 16);
  v32 = v28;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v33 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v34 = swift_allocObject();
  *(v34 + 16) = v45;
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = v23;
  *(v35 + 32) = v42;
  *(v35 + 40) = 1;
  *(v35 + 48) = v25;
  *(v35 + 56) = v31;
  *(v35 + 64) = v30;
  *(v35 + 72) = 257;
  *(v35 + 80) = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = &unk_230E6E568;
  *(v36 + 24) = v35;
  *(v34 + 32) = &unk_230E6E570;
  *(v34 + 40) = v36;
  v37 = sub_230E69310();
  v38 = v43;
  (*(*(v37 - 8) + 56))(v43, 1, 1, v37);
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v34;

  sub_230D8F204(0, 0, v38, &unk_230E6E578, v39);
}

uint64_t sub_230D3B2D4(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v44 = a5;
  v69 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v41 - v13;
  *&v47[0] = 0;
  *(&v47[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v46) = a1;
  v15 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v15);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  memset(v47, 0, sizeof(v47));
  v46 = 93;
  v17 = task_info(*MEMORY[0x277D85F48], 0x16u, v47, &v46);
  v18 = 0.0;
  if (!v17)
  {
    if (__CFADD__(v48, *(&v52 + 1)))
    {
      __break(1u);
    }

    v18 = vcvtd_n_f64_u64(v48 + *(&v52 + 1), 0x14uLL);
  }

  v43 = v14;
  v19 = Current - a6;
  v20 = (v17 != 0) | a3;
  v21 = v18 - *&a2;
  if ((v17 != 0) | a3 & 1)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v21;
  }

  sub_230E68950();
  LOBYTE(v47[0]) = *a4;
  v23 = RequestType.rawValue.getter();
  v42 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v25 = swift_allocObject();
  v45 = xmmword_230E6B3B0;
  *(v25 + 16) = xmmword_230E6B3B0;
  *&v47[0] = 0x6C616E7265746E69;
  *(&v47[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v46) = a1;
  v26 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v26);

  v27 = v47[0];
  v28 = *v44;
  if (*v44)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v29 = swift_allocObject();
    *(v29 + 16) = v45;
    *(v29 + 32) = v28;
  }

  else
  {
    v29 = 0;
  }

  *(v25 + 32) = v27;
  *(v25 + 48) = v19;
  *(v25 + 56) = 0;
  *(v25 + 64) = v22;
  *(v25 + 72) = v20 & 1;
  *(v25 + 80) = v29;
  v31 = *(a4 + 8);
  v30 = *(a4 + 16);
  v32 = v28;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v33 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v34 = swift_allocObject();
  *(v34 + 16) = v45;
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = v23;
  *(v35 + 32) = v42;
  *(v35 + 40) = 1;
  *(v35 + 48) = v25;
  *(v35 + 56) = v31;
  *(v35 + 64) = v30;
  *(v35 + 72) = 257;
  *(v35 + 80) = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = &unk_230E6E550;
  *(v36 + 24) = v35;
  *(v34 + 32) = &unk_230E6E558;
  *(v34 + 40) = v36;
  v37 = sub_230E69310();
  v38 = v43;
  (*(*(v37 - 8) + 56))(v43, 1, 1, v37);
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v34;

  sub_230D8F204(0, 0, v38, &unk_230E6E560, v39);
}

uint64_t sub_230D3B794(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v44 = a5;
  v69 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v41 - v13;
  *&v47[0] = 0;
  *(&v47[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v46) = a1;
  v15 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v15);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  memset(v47, 0, sizeof(v47));
  v46 = 93;
  v17 = task_info(*MEMORY[0x277D85F48], 0x16u, v47, &v46);
  v18 = 0.0;
  if (!v17)
  {
    if (__CFADD__(v48, *(&v52 + 1)))
    {
      __break(1u);
    }

    v18 = vcvtd_n_f64_u64(v48 + *(&v52 + 1), 0x14uLL);
  }

  v43 = v14;
  v19 = Current - a6;
  v20 = (v17 != 0) | a3;
  v21 = v18 - *&a2;
  if ((v17 != 0) | a3 & 1)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v21;
  }

  sub_230E68950();
  LOBYTE(v47[0]) = *a4;
  v23 = RequestType.rawValue.getter();
  v42 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v25 = swift_allocObject();
  v45 = xmmword_230E6B3B0;
  *(v25 + 16) = xmmword_230E6B3B0;
  *&v47[0] = 0x6C616E7265746E69;
  *(&v47[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v46) = a1;
  v26 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v26);

  v27 = v47[0];
  v28 = *v44;
  if (*v44)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v29 = swift_allocObject();
    *(v29 + 16) = v45;
    *(v29 + 32) = v28;
  }

  else
  {
    v29 = 0;
  }

  *(v25 + 32) = v27;
  *(v25 + 48) = v19;
  *(v25 + 56) = 0;
  *(v25 + 64) = v22;
  *(v25 + 72) = v20 & 1;
  *(v25 + 80) = v29;
  v31 = *(a4 + 8);
  v30 = *(a4 + 16);
  v32 = v28;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v33 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v34 = swift_allocObject();
  *(v34 + 16) = v45;
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = v23;
  *(v35 + 32) = v42;
  *(v35 + 40) = 1;
  *(v35 + 48) = v25;
  *(v35 + 56) = v31;
  *(v35 + 64) = v30;
  *(v35 + 72) = 257;
  *(v35 + 80) = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = &unk_230E6E4B8;
  *(v36 + 24) = v35;
  *(v34 + 32) = &unk_230E6E4C0;
  *(v34 + 40) = v36;
  v37 = sub_230E69310();
  v38 = v43;
  (*(*(v37 - 8) + 56))(v43, 1, 1, v37);
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v34;

  sub_230D8F204(0, 0, v38, &unk_230E6E4C8, v39);
}

uint64_t sub_230D3BC54(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v44 = a5;
  v69 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v41 - v13;
  *&v47[0] = 0;
  *(&v47[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v46) = a1;
  v15 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v15);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  memset(v47, 0, sizeof(v47));
  v46 = 93;
  v17 = task_info(*MEMORY[0x277D85F48], 0x16u, v47, &v46);
  v18 = 0.0;
  if (!v17)
  {
    if (__CFADD__(v48, *(&v52 + 1)))
    {
      __break(1u);
    }

    v18 = vcvtd_n_f64_u64(v48 + *(&v52 + 1), 0x14uLL);
  }

  v43 = v14;
  v19 = Current - a6;
  v20 = (v17 != 0) | a3;
  v21 = v18 - *&a2;
  if ((v17 != 0) | a3 & 1)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v21;
  }

  sub_230E68950();
  LOBYTE(v47[0]) = *a4;
  v23 = RequestType.rawValue.getter();
  v42 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v25 = swift_allocObject();
  v45 = xmmword_230E6B3B0;
  *(v25 + 16) = xmmword_230E6B3B0;
  *&v47[0] = 0x6C616E7265746E69;
  *(&v47[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v46) = a1;
  v26 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v26);

  v27 = v47[0];
  v28 = *v44;
  if (*v44)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v29 = swift_allocObject();
    *(v29 + 16) = v45;
    *(v29 + 32) = v28;
  }

  else
  {
    v29 = 0;
  }

  *(v25 + 32) = v27;
  *(v25 + 48) = v19;
  *(v25 + 56) = 0;
  *(v25 + 64) = v22;
  *(v25 + 72) = v20 & 1;
  *(v25 + 80) = v29;
  v31 = *(a4 + 8);
  v30 = *(a4 + 16);
  v32 = v28;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v33 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v34 = swift_allocObject();
  *(v34 + 16) = v45;
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = v23;
  *(v35 + 32) = v42;
  *(v35 + 40) = 1;
  *(v35 + 48) = v25;
  *(v35 + 56) = v31;
  *(v35 + 64) = v30;
  *(v35 + 72) = 257;
  *(v35 + 80) = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = &unk_230E6E4A0;
  *(v36 + 24) = v35;
  *(v34 + 32) = &unk_230E6E4A8;
  *(v34 + 40) = v36;
  v37 = sub_230E69310();
  v38 = v43;
  (*(*(v37 - 8) + 56))(v43, 1, 1, v37);
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v34;

  sub_230D8F204(0, 0, v38, &unk_230E6E4B0, v39);
}

uint64_t sub_230D3C114(char a1, uint64_t a2, char a3, uint64_t a4, void **a5, double a6)
{
  v44 = a5;
  v69 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v41 - v13;
  *&v47[0] = 0;
  *(&v47[0] + 1) = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v46) = a1;
  v15 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v15);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  memset(v47, 0, sizeof(v47));
  v46 = 93;
  v17 = task_info(*MEMORY[0x277D85F48], 0x16u, v47, &v46);
  v18 = 0.0;
  if (!v17)
  {
    if (__CFADD__(v48, *(&v52 + 1)))
    {
      __break(1u);
    }

    v18 = vcvtd_n_f64_u64(v48 + *(&v52 + 1), 0x14uLL);
  }

  v43 = v14;
  v19 = Current - a6;
  v20 = (v17 != 0) | a3;
  v21 = v18 - *&a2;
  if ((v17 != 0) | a3 & 1)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v21;
  }

  sub_230E68950();
  LOBYTE(v47[0]) = *a4;
  v23 = RequestType.rawValue.getter();
  v42 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v25 = swift_allocObject();
  v45 = xmmword_230E6B3B0;
  *(v25 + 16) = xmmword_230E6B3B0;
  *&v47[0] = 0x6C616E7265746E69;
  *(&v47[0] + 1) = 0xE90000000000002ELL;
  LOBYTE(v46) = a1;
  v26 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v26);

  v27 = v47[0];
  v28 = *v44;
  if (*v44)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5BCD0, &qword_230E6E480);
    v29 = swift_allocObject();
    *(v29 + 16) = v45;
    *(v29 + 32) = v28;
  }

  else
  {
    v29 = 0;
  }

  *(v25 + 32) = v27;
  *(v25 + 48) = v19;
  *(v25 + 56) = 0;
  *(v25 + 64) = v22;
  *(v25 + 72) = v20 & 1;
  *(v25 + 80) = v29;
  v31 = *(a4 + 8);
  v30 = *(a4 + 16);
  v32 = v28;

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v33 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v34 = swift_allocObject();
  *(v34 + 16) = v45;
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = v23;
  *(v35 + 32) = v42;
  *(v35 + 40) = 1;
  *(v35 + 48) = v25;
  *(v35 + 56) = v31;
  *(v35 + 64) = v30;
  *(v35 + 72) = 257;
  *(v35 + 80) = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = &unk_230E6E488;
  *(v36 + 24) = v35;
  *(v34 + 32) = &unk_230E6E490;
  *(v34 + 40) = v36;
  v37 = sub_230E69310();
  v38 = v43;
  (*(*(v37 - 8) + 56))(v43, 1, 1, v37);
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v34;

  sub_230D8F204(0, 0, v38, &unk_230E6E498, v39);
}

uint64_t sub_230D3C5D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_230D1D2F8;

  return sub_230D8EB34(a1, v4);
}

uint64_t sub_230D3C68C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 72);
  v6 = *(v1 + 73);
  v7 = *(v1 + 80);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_230D1D2F8;

  return sub_230D8E4A4(a1, v4, v1 + 24, v5, v6, v7);
}

uint64_t sub_230D3C758(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_230D1D2F8;

  return sub_230DA3554(a1, v4, v5, v6);
}

uint64_t sub_230D3C80C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_230D1BF00;

  return sub_230D31B10(a1, v4, v5, v6);
}

uint64_t sub_230D3C8C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 72);
  v6 = *(v1 + 73);
  v7 = *(v1 + 80);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_230D1BF00;

  return sub_230D8E4A4(a1, v4, v1 + 24, v5, v6, v7);
}

uint64_t sub_230D3C98C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B030, &qword_230E6E700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_230D3C9F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SQLDatabaseConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t objectdestroy_13Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void *sub_230D3CAF0(void *a1)
{
  v3 = v1;
  v37 = *MEMORY[0x277D85DE8];
  v5 = sub_230E690B0();
  v32 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_230E68860();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  SQLDatabaseConfiguration.path.getter(v13);
  if (v2)
  {
    goto LABEL_11;
  }

  v30 = a1;
  v31 = v1;
  v14 = sub_230E68820();
  v16 = v15;
  (*(v10 + 8))(v13, v9);
  ppStmt = 0;
  v36 = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000033, 0x8000000230E818C0);
  MEMORY[0x23191DA00](v14, v16);
  sub_230E68950();

  ppStmt = v14;
  v36 = v16;
  sub_230E690A0();
  sub_230D0D278();
  v17 = sub_230E69480();
  (*(v32 + 8))(v8, v5);

  if (v17)
  {
    v18 = 65537;
    if (sub_230DA3484())
    {
      a1 = v30;
    }

    else
    {
      sub_230DCB5D4(&ppStmt);
      a1 = v30;
      if ((sub_230D0B544(ppStmt, *(v30 + 16)) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v18 = 65542;
LABEL_8:
    ppDb = 0;
    v20 = sqlite3_open_v2((v17 + 32), &ppDb, v18, 0);

    if (v20 || (v23 = ppDb) == 0)
    {
      sub_230E68950();
      sub_230D0D224();
      swift_allocError();
      *v21 = 0;
      *(v21 + 8) = 0;
      *(v21 + 16) = 0;
LABEL_10:
      swift_willThrow();
      v3 = v31;
      goto LABEL_11;
    }

    ppStmt = 0;
    v36 = 0xE000000000000000;
    sub_230E69540();

    ppStmt = 0xD000000000000030;
    v36 = 0x8000000230E81970;
    MEMORY[0x23191DA00](*a1, a1[1]);
    sub_230E68950();

    ppStmt = 0;
    if (sqlite3_prepare_v2(v23, "PRAGMA foreign_keys = ON", -1, &ppStmt, 0))
    {
      sub_230D0D224();
      swift_allocError();
      *v24 = 0xD00000000000002ELL;
      *(v24 + 8) = 0x8000000230E819D0;
      *(v24 + 16) = 2;
      goto LABEL_10;
    }

    v25 = sqlite3_step(ppStmt);
    v3 = v31;
    if (v25 == 101)
    {
      sub_230E68950();
      v33 = 0;
      if (!sqlite3_prepare_v2(v23, "PRAGMA journal_mode=WAL", -1, &v33, 0))
      {
        if (sqlite3_step(v33) == 100)
        {
          sub_230E68950();
          *(v3 + 112) = v23;
          sub_230D1CF5C(a1, v3 + OBJC_IVAR____TtC20ServicesIntelligence17SQLDatabaseClient_configuration);
          sqlite3_finalize(v33);
          sqlite3_finalize(ppStmt);
          sub_230D1CFC0(a1);
          return v3;
        }

        sub_230D0D224();
        swift_allocError();
        *v29 = 0xD000000000000019;
        *(v29 + 8) = 0x8000000230E81AC0;
        *(v29 + 16) = 2;
        swift_willThrow();
        sqlite3_finalize(v33);
        goto LABEL_21;
      }

      v26 = 0x8000000230E81A90;
      sub_230D0D224();
      swift_allocError();
      v28 = 0xD000000000000024;
    }

    else
    {
      v26 = 0x8000000230E81A00;
      sub_230D0D224();
      swift_allocError();
      v28 = 0xD000000000000028;
    }

    *v27 = v28;
    *(v27 + 8) = v26;
    *(v27 + 16) = 2;
    swift_willThrow();
LABEL_21:
    sqlite3_finalize(ppStmt);
    goto LABEL_11;
  }

  sub_230E68950();
  sub_230D0D224();
  swift_allocError();
  *v19 = 0;
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  swift_willThrow();
  a1 = v30;
  v3 = v31;
LABEL_11:
  type metadata accessor for SQLDatabaseClient(0);
  swift_defaultActor_destroy();
  sub_230D1CFC0(a1);
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t SQLDatabaseClient.deinit()
{
  sqlite3_close(*(v0 + 112));
  sub_230D1CFC0(v0 + OBJC_IVAR____TtC20ServicesIntelligence17SQLDatabaseClient_configuration);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t SQLDatabaseClient.__deallocating_deinit()
{
  sqlite3_close(*(v0 + 112));
  sub_230D1CFC0(v0 + OBJC_IVAR____TtC20ServicesIntelligence17SQLDatabaseClient_configuration);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

sqlite3_stmt *sub_230D3D1E0(uint64_t a1, uint64_t a2)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v5 = *(v2 + 112);
  v6 = sub_230E690F0();
  LODWORD(v5) = sqlite3_prepare_v2(v5, (v6 + 32), -1, ppStmt, 0);

  if (!v5)
  {
    return ppStmt[0];
  }

  sub_230E69540();

  MEMORY[0x23191DA00](a1, a2);
  sub_230D0D224();
  swift_allocError();
  *v7 = 0xD00000000000001DLL;
  *(v7 + 8) = 0x8000000230E81530;
  *(v7 + 16) = 2;
  return swift_willThrow();
}

uint64_t sub_230D3D310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  return MEMORY[0x2822009F8](sub_230D3D330, a2, 0);
}

const char *sub_230D3D330()
{
  v1 = sub_230D3D4B4();
  v3 = sub_230D3D1E0(v1, v2);

  if (sqlite3_step(v3) == 101)
  {
    v5 = v0[3];
    v4 = v0[4];
    sub_230E69540();

    MEMORY[0x23191DA00](v5, v4);
    sub_230E68950();

    sqlite3_finalize(v3);
    v6 = v0[1];

    return v6();
  }

  else
  {
    sub_230E68950();
    return sub_230D43970();
  }
}

uint64_t sub_230D3D4B4()
{
  v107 = v0[1];
  v108 = *v0;
  *&v119 = v0[2];
  v114 = v119;

  v1 = 0;
  sub_230D4434C(&v119);
  v2 = v119;
  v3 = *(v119 + 16);
  if (v3)
  {
    v4 = v3 - 1;
    v5 = MEMORY[0x277D84F90];
    for (i = 32; ; i += 88)
    {
      v7 = *(v2 + i + 16);
      v119 = *(v2 + i);
      v120 = v7;
      v8 = *(v2 + i + 32);
      v9 = *(v2 + i + 48);
      v10 = *(v2 + i + 64);
      v124 = *(v2 + i + 80);
      v122 = v9;
      v123 = v10;
      v121 = v8;
      v117[2] = *(v2 + i + 32);
      v117[3] = *(v2 + i + 48);
      v117[4] = *(v2 + i + 64);
      v118 = *(v2 + i + 80);
      v117[0] = *(v2 + i);
      v117[1] = *(v2 + i + 16);
      sub_230D2C310(&v119, &v116);
      v11 = sub_230D3E9A4();
      v13 = v12;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_230E49E88(0, *(v5 + 2) + 1, 1, v5);
      }

      v15 = *(v5 + 2);
      v14 = *(v5 + 3);
      if (v15 >= v14 >> 1)
      {
        v5 = sub_230E49E88((v14 > 1), v15 + 1, 1, v5);
      }

      sub_230D2C348(&v119);
      *(v5 + 2) = v15 + 1;
      v16 = &v5[16 * v15];
      *(v16 + 4) = v11;
      *(v16 + 5) = v13;
      if (!v4)
      {
        break;
      }

      --v4;
    }
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  *&v119 = v114;

  sub_230D4434C(&v119);
  v111 = v5;
  v17 = v119;
  v18 = *(v119 + 16);
  v19 = MEMORY[0x277D84F90];
  if (v18)
  {
    v20 = 0;
    v21 = v119 + 32;
    v22 = v18 - 1;
    v23 = MEMORY[0x277D84F90];
    do
    {
      v24 = v21 + 88 * v20;
      v25 = v20;
      while (1)
      {
        if (v25 >= *(v17 + 16))
        {
          __break(1u);
          goto LABEL_95;
        }

        v27 = *(v24 + 48);
        v26 = *(v24 + 64);
        v28 = *(v24 + 80);
        v121 = *(v24 + 32);
        v29 = *(v24 + 16);
        v119 = *v24;
        v120 = v29;
        v124 = v28;
        v122 = v27;
        v123 = v26;
        v20 = v25 + 1;
        if (BYTE11(v121))
        {
          break;
        }

        v24 += 88;
        ++v25;
        if (v18 == v20)
        {
          goto LABEL_25;
        }
      }

      sub_230D2C310(&v119, v117);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v116 = v23;
      v112 = v21;
      v109 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_230D488A0(0, *(v23 + 16) + 1, 1);
        v23 = v116;
      }

      v32 = *(v23 + 16);
      v31 = *(v23 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_230D488A0((v31 > 1), v32 + 1, 1);
        v23 = v116;
      }

      *(v23 + 16) = v32 + 1;
      v33 = v23 + 88 * v32;
      v34 = v120;
      *(v33 + 32) = v119;
      *(v33 + 48) = v34;
      v35 = v121;
      v36 = v122;
      v37 = v123;
      *(v33 + 112) = v124;
      *(v33 + 80) = v36;
      *(v33 + 96) = v37;
      *(v33 + 64) = v35;
      v22 = v109;
    }

    while (v109 != v25);
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
  }

LABEL_25:

  v38 = *(v23 + 16);
  if (!v38)
  {

    v22 = MEMORY[0x277D84F90];
    v25 = v111;
    goto LABEL_33;
  }

  v112 = 0;
  *&v119 = v19;
  sub_230D48880(0, v38, 0);
  v39 = v119;
  v40 = (v23 + 40);
  do
  {
    v41 = *(v40 - 1);
    v42 = *v40;
    *&v119 = v39;
    v44 = *(v39 + 16);
    v43 = *(v39 + 24);

    if (v44 >= v43 >> 1)
    {
      sub_230D48880((v43 > 1), v44 + 1, 1);
      v39 = v119;
    }

    *(v39 + 16) = v44 + 1;
    v45 = v39 + 16 * v44;
    *(v45 + 32) = v41;
    *(v45 + 40) = v42;
    v40 += 11;
    --v38;
  }

  while (v38);

  *&v119 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
  sub_230D443B8();
  v46 = sub_230E68FF0();
  v48 = v47;

  *&v119 = 0;
  *(&v119 + 1) = 0xE000000000000000;
  sub_230E69540();

  strcpy(&v119, "PRIMARY KEY (");
  HIWORD(v119) = -4864;
  MEMORY[0x23191DA00](v46, v48);

  MEMORY[0x23191DA00](41, 0xE100000000000000);
  v1 = *(&v119 + 1);
  v19 = v119;
  v22 = sub_230E49E88(0, 1, 1, MEMORY[0x277D84F90]);
  v17 = *(v22 + 2);
  v24 = *(v22 + 3);
  v23 = v17 + 1;
  v25 = v111;
  if (v17 >= v24 >> 1)
  {
    goto LABEL_96;
  }

  while (1)
  {
    *(v22 + 2) = v23;
    v49 = &v22[16 * v17];
    *(v49 + 4) = v19;
    *(v49 + 5) = v1;
    v1 = v112;
LABEL_33:
    *&v119 = v114;

    sub_230D4434C(&v119);
    if (v1)
    {
      MEMORY[0x23191E910](v1);

      __break(1u);
      return result;
    }

    v50 = v119;
    v51 = *(v119 + 16);
    if (!v51)
    {
      break;
    }

    v52 = 0;
    v19 = v119 + 32;
    v17 = v51 - 1;
    v23 = MEMORY[0x277D84F90];
LABEL_36:
    v24 = v19 + 88 * v52;
    v53 = v52;
    while (v53 < *(v50 + 16))
    {
      v55 = *(v24 + 48);
      v54 = *(v24 + 64);
      v56 = *(v24 + 80);
      v121 = *(v24 + 32);
      v57 = *(v24 + 16);
      v119 = *v24;
      v120 = v57;
      v124 = v56;
      v122 = v55;
      v123 = v54;
      if (BYTE10(v121) == 1 && (BYTE11(v121) & 1) == 0)
      {
        v58 = v50;
        sub_230D2C310(&v119, v117);
        v59 = swift_isUniquelyReferenced_nonNull_native();
        *&v116 = v23;
        v112 = v51 - 1;
        if ((v59 & 1) == 0)
        {
          sub_230D488A0(0, *(v23 + 16) + 1, 1);
          v23 = v116;
        }

        v50 = v58;
        v61 = *(v23 + 16);
        v60 = *(v23 + 24);
        if (v61 >= v60 >> 1)
        {
          sub_230D488A0((v60 > 1), v61 + 1, 1);
          v50 = v58;
          v23 = v116;
        }

        v52 = v53 + 1;
        *(v23 + 16) = v61 + 1;
        v62 = v23 + 88 * v61;
        v63 = v120;
        *(v62 + 32) = v119;
        *(v62 + 48) = v63;
        v64 = v121;
        v65 = v122;
        v66 = v123;
        *(v62 + 112) = v124;
        *(v62 + 80) = v65;
        *(v62 + 96) = v66;
        *(v62 + 64) = v64;
        v25 = v111;
        if (v17 != v53)
        {
          goto LABEL_36;
        }

        goto LABEL_48;
      }

      ++v53;
      v24 += 88;
      if (v51 == v53)
      {
        goto LABEL_48;
      }
    }

LABEL_95:
    __break(1u);
LABEL_96:
    v22 = sub_230E49E88((v24 > 1), v23, 1, v22);
  }

  v23 = MEMORY[0x277D84F90];
LABEL_48:

  v67 = *(v23 + 16);
  if (v67)
  {
    v68 = v67 - 1;
    for (j = 32; ; j += 88)
    {
      v70 = *(v23 + j + 16);
      v119 = *(v23 + j);
      v120 = v70;
      v71 = *(v23 + j + 32);
      v72 = *(v23 + j + 48);
      v73 = *(v23 + j + 64);
      v124 = *(v23 + j + 80);
      v122 = v72;
      v123 = v73;
      v121 = v71;
      v74 = v119;
      *&v116 = 0x2820455551494E55;
      *(&v116 + 1) = 0xE800000000000000;
      sub_230D2C310(&v119, v117);

      MEMORY[0x23191DA00](v74, *(&v74 + 1));

      MEMORY[0x23191DA00](41, 0xE100000000000000);
      v75 = v116;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_230E49E88(0, *(v22 + 2) + 1, 1, v22);
      }

      v77 = *(v22 + 2);
      v76 = *(v22 + 3);
      if (v77 >= v76 >> 1)
      {
        v22 = sub_230E49E88((v76 > 1), v77 + 1, 1, v22);
      }

      sub_230D2C348(&v119);
      *(v22 + 2) = v77 + 1;
      *&v22[16 * v77 + 32] = v75;
      if (!v68)
      {
        break;
      }

      --v68;
    }

    v25 = v111;
  }

  else
  {
  }

  *&v119 = v114;

  sub_230D4434C(&v119);
  v78 = v119;
  v79 = *(v119 + 16);
  if (v79)
  {
    v80 = v79 - 1;
    v81 = 32;
    v110 = v119;
    while (1)
    {
      v82 = *(v78 + v81 + 80);
      v83 = *(v78 + v81 + 64);
      v84 = *(v78 + v81 + 32);
      v122 = *(v78 + v81 + 48);
      v123 = v83;
      v85 = *(v78 + v81 + 16);
      v119 = *(v78 + v81);
      v120 = v85;
      v124 = v82;
      v121 = v84;
      v86 = *(&v122 + 1);
      if (*(&v122 + 1))
      {
        v113 = v81;
        v115 = v80;
        v87 = v122;
        v88 = v123;
        v89 = v119;
        *&v116 = 0;
        *(&v116 + 1) = 0xE000000000000000;
        sub_230D2C310(&v119, v117);
        sub_230D2C224(v87, v86, v88, *(&v88 + 1));
        sub_230E69540();
        v117[0] = v116;
        MEMORY[0x23191DA00](0x204E474945524F46, 0xED0000282059454BLL);

        MEMORY[0x23191DA00](v89, *(&v89 + 1));

        MEMORY[0x23191DA00](0x4552454645522029, 0xED0000205345434ELL);

        MEMORY[0x23191DA00](v87, v86);

        MEMORY[0x23191DA00](40, 0xE100000000000000);

        MEMORY[0x23191DA00](v88, *(&v88 + 1));

        MEMORY[0x23191DA00](0x4C4544204E4F2029, 0xEC00000020455445);
        v90 = 0x4C4C554E20544553;
        if (v82 != 3)
        {
          v90 = 0x4146454420544553;
        }

        v91 = 0xEB00000000544C55;
        if (v82 == 3)
        {
          v91 = 0xE800000000000000;
        }

        if (v82 == 2)
        {
          v90 = 0x45444143534143;
          v91 = 0xE700000000000000;
        }

        v92 = 0x5443495254534552;
        if (!v82)
        {
          v92 = 0x4F49544341204F4ELL;
        }

        v93 = 0xE90000000000004ELL;
        if (v82)
        {
          v93 = 0xE800000000000000;
        }

        if (v82 <= 1u)
        {
          v94 = v92;
        }

        else
        {
          v94 = v90;
        }

        if (v82 <= 1u)
        {
          v95 = v93;
        }

        else
        {
          v95 = v91;
        }

        v96 = v82 >> 8;
        MEMORY[0x23191DA00](v94, v95);

        MEMORY[0x23191DA00](0x41445055204E4F20, 0xEB00000000204554);
        if (v82 >> 8 <= 1)
        {
          v98 = 0x4F49544341204F4ELL;
          v97 = 0xE90000000000004ELL;
          if (v96)
          {
            v97 = 0xE800000000000000;
            v98 = 0x5443495254534552;
          }
        }

        else if (v96 == 2)
        {
          v97 = 0xE700000000000000;
          v98 = 0x45444143534143;
        }

        else if (v96 == 3)
        {
          v97 = 0xE800000000000000;
          v98 = 0x4C4C554E20544553;
        }

        else
        {
          v98 = 0x4146454420544553;
          v97 = 0xEB00000000544C55;
        }

        MEMORY[0x23191DA00](v98, v97);
        sub_230D0F4FC(v87, v86, v88, *(&v88 + 1));

        v99 = v117[0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_230E49E88(0, *(v22 + 2) + 1, 1, v22);
        }

        v25 = v111;
        v101 = *(v22 + 2);
        v100 = *(v22 + 3);
        if (v101 >= v100 >> 1)
        {
          v22 = sub_230E49E88((v100 > 1), v101 + 1, 1, v22);
        }

        sub_230D2C348(&v119);
        *(v22 + 2) = v101 + 1;
        *&v22[16 * v101 + 32] = v99;
        v78 = v110;
        v81 = v113;
        v80 = v115;
        if (!v115)
        {
          break;
        }
      }

      else
      {
        v25 = v111;
        if (!v80)
        {
          break;
        }
      }

      --v80;
      v81 += 88;
    }
  }

  *&v119 = v25;
  sub_230E3A1D8(v22);
  v102 = v119;
  *&v119 = 0;
  *(&v119 + 1) = 0xE000000000000000;
  sub_230E69540();

  *&v119 = 0xD00000000000001BLL;
  *(&v119 + 1) = 0x8000000230E815C0;
  MEMORY[0x23191DA00](v108, v107);
  MEMORY[0x23191DA00](10272, 0xE200000000000000);
  *&v117[0] = v102;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
  sub_230D443B8();
  v103 = sub_230E68FF0();
  v105 = v104;

  MEMORY[0x23191DA00](v103, v105);

  MEMORY[0x23191DA00](41, 0xE100000000000000);
  return v119;
}

uint64_t sub_230D3E0C0(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v2[3] = v1;
  v2[4] = v3;
  v2[5] = v4;
  return MEMORY[0x2822009F8](sub_230D3E0E8, v1, 0);
}

const unsigned __int8 *sub_230D3E0E8()
{
  v23 = v0;
  v2 = v0[4];
  v1 = v0[5];
  sub_230E69540();

  v21 = 0xD000000000000012;
  v22 = 0x8000000230E814C0;
  MEMORY[0x23191DA00](v2, v1);
  MEMORY[0x23191DA00](41, 0xE100000000000000);
  v3 = sub_230D3D1E0(0xD000000000000012, 0x8000000230E814C0);

  v4 = sqlite3_step(v3);
  v5 = MEMORY[0x277D84F90];
  if (v4 == 100)
  {
    while (1)
    {
      result = sqlite3_column_text(v3, 1);
      if (!result)
      {
        break;
      }

      v7 = sub_230E69130();
      v9 = v8;
      result = sqlite3_column_text(v3, 2);
      if (!result)
      {
        goto LABEL_13;
      }

      sub_230E69130();
      v10 = sqlite3_column_int(v3, 3) == 0;
      v11 = sqlite3_column_int(v3, 5) == 1;
      sub_230D3E474(&v21);

      v12 = v21;
      sub_230D0F460(0, 0, 255);
      sub_230D0F4FC(0, 0, 0, 0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_230E49F94(0, *(v5 + 2) + 1, 1, v5);
      }

      v14 = *(v5 + 2);
      v13 = *(v5 + 3);
      if (v14 >= v13 >> 1)
      {
        v5 = sub_230E49F94((v13 > 1), v14 + 1, 1, v5);
      }

      *(v5 + 2) = v14 + 1;
      v15 = &v5[88 * v14];
      *(v15 + 4) = v7;
      *(v15 + 5) = v9;
      v15[48] = v12;
      v16 = *(&v21 + 3);
      *(v15 + 49) = v21;
      *(v15 + 13) = v16;
      *(v15 + 7) = 0;
      *(v15 + 8) = 0;
      v15[72] = -1;
      v15[73] = v10;
      v15[74] = 0;
      v15[75] = v11;
      *(v15 + 5) = 0u;
      *(v15 + 6) = 0u;
      *(v15 + 56) = 0;
      if (sqlite3_step(v3) != 100)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  else
  {
LABEL_9:
    v18 = v0[4];
    v17 = v0[5];
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_230E69540();
    MEMORY[0x23191DA00](0xD00000000000002FLL, 0x8000000230E814E0);
    v0[2] = *(v5 + 2);
    v19 = sub_230E69890();
    MEMORY[0x23191DA00](v19);

    MEMORY[0x23191DA00](0xD000000000000013, 0x8000000230E81510);
    MEMORY[0x23191DA00](v18, v17);
    sub_230E68950();

    sqlite3_finalize(v3);
    v20 = v0[1];

    return v20(v5);
  }

  return result;
}

uint64_t sub_230D3E474@<X0>(char *a1@<X8>)
{
  v3 = sub_230E690E0();
  v4 = v2;
  if (v3 == 1415071060 && v2 == 0xE400000000000000 || (sub_230E698C0() & 1) != 0)
  {

    v6 = 3;
  }

  else if (v3 == 0x3436544E49 && v4 == 0xE500000000000000 || (sub_230E698C0() & 1) != 0 || v3 == 0x52454745544E49 && v4 == 0xE700000000000000 || (sub_230E698C0() & 1) != 0)
  {

    v6 = 2;
  }

  else if (v3 == 0x454C42554F44 && v4 == 0xE600000000000000 || (sub_230E698C0() & 1) != 0 || v3 == 1279346002 && v4 == 0xE400000000000000 || (sub_230E698C0() & 1) != 0)
  {

    v6 = 1;
  }

  else if (v3 == 1112493122 && v4 == 0xE400000000000000)
  {

    v6 = 0;
  }

  else
  {
    v7 = sub_230E698C0();

    if (v7)
    {
      v6 = 0;
    }

    else
    {
      v6 = 3;
    }
  }

  *a1 = v6;
  return result;
}

uint64_t sub_230D3E660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a2;
  v6[3] = a3;
  return MEMORY[0x2822009F8](sub_230D3E684, a6, 0);
}

const char *sub_230D3E684(uint64_t a1)
{
  v23 = v1;
  v3 = v1[2];
  v2 = v1[3];
  v4 = sub_230D3E9A4();
  v6 = v5;
  sub_230E69540();

  strcpy(v22, "ALTER TABLE ");
  BYTE5(v22[1]) = 0;
  HIWORD(v22[1]) = -5120;
  MEMORY[0x23191DA00](v3, v2);
  MEMORY[0x23191DA00](0x4C4F432044444120, 0xEC000000204E4D55);
  MEMORY[0x23191DA00](v4, v6);

  v7 = sub_230D3D1E0(v22[0], v22[1]);

  v8 = v1[4];
  if (sqlite3_step(v7) == 101)
  {
    v9 = v1[3];
    v10 = v1[4];
    v11 = v1[2];
    sub_230E69540();
    MEMORY[0x23191DA00](0xD00000000000002CLL, 0x8000000230E81620);
    MEMORY[0x23191DA00](*v10, *(v8 + 8));
    MEMORY[0x23191DA00](0x6C626174206F7420, 0xEA00000000002065);
    MEMORY[0x23191DA00](v11, v9);
    sub_230E68950();

    sqlite3_finalize(v7);
    v12 = v1[1];
  }

  else
  {
    v14 = v1[4];
    v13 = v1[5];
    v16 = v1[2];
    v15 = v1[3];
    sub_230E69540();
    MEMORY[0x23191DA00](0xD000000000000034, 0x8000000230E815E0);
    MEMORY[0x23191DA00](*v14, *(v8 + 8));
    MEMORY[0x23191DA00](0x6C626174206F7420, 0xEA00000000002065);
    MEMORY[0x23191DA00](v16, v15);
    sub_230E68950();

    result = sqlite3_errmsg(*(v13 + 112));
    if (!result)
    {
      __break(1u);
      return result;
    }

    v18 = sub_230E69120();
    v20 = v19;
    sub_230D0D224();
    swift_allocError();
    *v21 = v18;
    *(v21 + 8) = v20;
    *(v21 + 16) = 2;
    swift_willThrow();
    sqlite3_finalize(v7);
    v12 = v1[1];
  }

  return v12();
}

uint64_t sub_230D3E9A4()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  v7 = *(v0 + 41);
  v8 = *(v0 + 43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A6A8, &unk_230E6B3C0);
  v9 = swift_allocObject();
  v10 = v9;
  *(v9 + 16) = xmmword_230E6C070;
  *(v9 + 32) = v2;
  *(v9 + 40) = v1;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v11 = 0xE500000000000000;
      v12 = 0x3436544E49;
    }

    else
    {
      v11 = 0xE400000000000000;
      v12 = 1415071060;
    }
  }

  else if (v3)
  {
    v11 = 0xE600000000000000;
    v12 = 0x454C42554F44;
  }

  else
  {
    v11 = 0xE400000000000000;
    v12 = 1112493122;
  }

  *(v9 + 48) = v12;
  *(v9 + 56) = v11;

  if (((v7 | v8) & 1) == 0)
  {
    v10 = sub_230E49E88(1, 3, 1, v10);
    *(v10 + 2) = 3;
    *(v10 + 8) = 0x4C4C554E20544F4ELL;
    *(v10 + 9) = 0xE800000000000000;
  }

  if (v6 <= 1)
  {
    if (!v6 || (v5 & 1) != 0)
    {
      goto LABEL_27;
    }

    MEMORY[0x23191DA00](0x20544C5541464544, 0xE800000000000000);
    sub_230E69320();
    v13 = 0;
    v14 = 0xE000000000000000;
    v16 = *(v10 + 2);
    v21 = *(v10 + 3);
    v17 = v16 + 1;
    if (v16 >= v21 >> 1)
    {
      v10 = sub_230E49E88((v21 > 1), v16 + 1, 1, v10);
    }

    v18 = v4;
    v19 = v5;
    v20 = 1;
LABEL_26:
    sub_230D0F460(v18, v19, v20);
    *(v10 + 2) = v17;
    v24 = &v10[16 * v16];
    *(v24 + 4) = v13;
    *(v24 + 5) = v14;
    goto LABEL_27;
  }

  if (v6 == 2)
  {
    if (v5)
    {
      goto LABEL_27;
    }

    v22 = sub_230E69890();
    MEMORY[0x23191DA00](v22);

    v13 = 0x20544C5541464544;
    v14 = 0xE800000000000000;
    v16 = *(v10 + 2);
    v23 = *(v10 + 3);
    v17 = v16 + 1;
    if (v16 >= v23 >> 1)
    {
      v10 = sub_230E49E88((v23 > 1), v16 + 1, 1, v10);
    }

    v18 = v4;
    v19 = v5;
    v20 = 2;
    goto LABEL_26;
  }

  if (v6 == 3)
  {
    if (!v5)
    {
      sub_230D0F460(v4, 0, 3);
      goto LABEL_27;
    }

    sub_230D1D20C(v4, v5, 3);
    MEMORY[0x23191DA00](v4, v5);
    MEMORY[0x23191DA00](39, 0xE100000000000000);
    v13 = 0x20544C5541464544;
    v14 = 0xE900000000000027;
    v16 = *(v10 + 2);
    v15 = *(v10 + 3);
    v17 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      v10 = sub_230E49E88((v15 > 1), v16 + 1, 1, v10);
    }

    v18 = v4;
    v19 = v5;
    v20 = 3;
    goto LABEL_26;
  }

LABEL_27:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
  sub_230D443B8();
  v25 = sub_230E68FF0();

  return v25;
}

uint64_t sub_230D3ED1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 336) = a1;
  *(v4 + 344) = v3;
  v5 = *(a2 + 80);
  *(v4 + 80) = *(a2 + 64);
  *(v4 + 96) = v5;
  *(v4 + 112) = *(a2 + 96);
  *(v4 + 128) = *(a2 + 112);
  v6 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v6;
  v7 = *(a2 + 48);
  *(v4 + 48) = *(a2 + 32);
  *(v4 + 64) = v7;
  v8 = *(a3 + 16);
  *(v4 + 352) = *a3;
  *(v4 + 368) = v8;
  *(v4 + 384) = *(a3 + 32);
  return MEMORY[0x2822009F8](sub_230D3ED74, v3, 0);
}

uint64_t sub_230D3ED74()
{
  v1 = *(v0 + 368);
  if (v1)
  {
    v3 = *(v0 + 376);
    v2 = *(v0 + 384);
    v5 = *(v0 + 352);
    v4 = *(v0 + 360);
    *(v0 + 400) = v1;
    *(v0 + 408) = v2;
    *(v0 + 256) = v5;
    *(v0 + 264) = v4;
    *(v0 + 272) = v1;
    *(v0 + 280) = v3 & 1;
    *(v0 + 281) = BYTE1(v3);
    *(v0 + 288) = v2;
    sub_230D1D0EC(v0 + 16, v0 + 136);

    sub_230D0585C(v5, v4, v1, v3, v2);
    v6 = swift_task_alloc();
    *(v0 + 416) = v6;
    *v6 = v0;
    v6[1] = sub_230D3F174;
    v7 = *(v0 + 336);

    return (sub_230D70F74)(v7, 2, v0 + 256);
  }

  else
  {
    *(v0 + 129) = 2;
    v9 = swift_task_alloc();
    *(v0 + 392) = v9;
    *v9 = v0;
    v9[1] = sub_230D3EF34;

    return static RequestContext.from(_:correlationID:)(v0 + 296, (v0 + 129), 0, 0);
  }
}

uint64_t sub_230D3EF34()
{
  v1 = *(*v0 + 344);

  return MEMORY[0x2822009F8](sub_230D3F044, v1, 0);
}

uint64_t sub_230D3F044()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);
  v3 = *(v0 + 312);
  v4 = *(v0 + 320);
  v5 = *(v0 + 321);
  v6 = *(v0 + 328);
  *(v0 + 400) = v3;
  *(v0 + 408) = v6;
  v7 = *(v0 + 376);
  v8 = *(v0 + 384);
  v10 = *(v0 + 360);
  v9 = *(v0 + 368);
  v11 = *(v0 + 352);
  *(v0 + 256) = v1;
  *(v0 + 264) = v2;
  *(v0 + 272) = v3;
  *(v0 + 280) = v4;
  *(v0 + 281) = v5;
  *(v0 + 288) = v6;
  sub_230D1D0EC(v0 + 16, v0 + 136);

  sub_230D0585C(v11, v10, v9, v7, v8);
  v12 = swift_task_alloc();
  *(v0 + 416) = v12;
  *v12 = v0;
  v12[1] = sub_230D3F174;
  v13 = *(v0 + 336);

  return (sub_230D70F74)(v13, 2, v0 + 256);
}

uint64_t sub_230D3F174()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_230D3F2A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[30] = a2;
  v3[31] = a3;
  v3[29] = a1;

  return MEMORY[0x2822009F8](sub_230D3F33C, a3, 0);
}

uint64_t sub_230D3F33C()
{
  v235 = v0;
  v234 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 240);
  v2 = MEMORY[0x277D84F90];
  sub_230E68950();
  v3 = *v1;
  v4 = v1[1];
  v5 = sub_230D40A38();
  if (v5[2] && (v6 = sub_230DA41A0(v3, v4), (v7 & 1) != 0))
  {
    v8 = *(v0 + 240);
    v9 = *(v5[7] + 24 * v6 + 16);

    v10 = *(v8 + 16);
    v11 = *(v8 + 48);
    *(v0 + 32) = *(v8 + 32);
    *(v0 + 48) = v11;
    *(v0 + 16) = v10;
    v12 = *(v8 + 64);
    v13 = *(v8 + 80);
    v14 = *(v8 + 96);
    *(v0 + 112) = *(v8 + 112);
    *(v0 + 80) = v13;
    *(v0 + 96) = v14;
    *(v0 + 64) = v12;
    v15 = *(v0 + 16);
    if (v15)
    {
      sub_230D23BC8(v0 + 16, v0 + 120);
      v224 = v15;
    }

    else
    {
      *&__dst = v9;
      sub_230D23BC8(v0 + 16, v0 + 120);

      sub_230D4434C(&__dst);
      v200 = __dst;
      v201 = *(__dst + 16);
      if (v201)
      {
        v226 = v0;
        *&__dst = v2;
        sub_230D488C0(0, v201, 0);
        v202 = __dst;
        v203 = *(__dst + 16);
        v204 = 56 * v203 + 56;
        v205 = (v200 + 48);
        do
        {
          v207 = *(v205 - 2);
          v206 = *(v205 - 1);
          v208 = *v205;
          *&__dst = v202;
          v209 = v203 + 1;
          v210 = *(v202 + 24);
          v211 = v202;

          v202 = v211;
          if (v203 >= v210 >> 1)
          {
            sub_230D488C0((v210 > 1), v209, 1);
            v202 = __dst;
          }

          v205 += 88;
          *(v202 + 16) = v209;
          v212 = (v202 + v204);
          *(v212 - 3) = v207;
          *(v212 - 2) = v206;
          *(v212 - 8) = v208;
          v204 += 56;
          ++v203;
          *v212 = 0u;
          v212[1] = 0u;
          --v201;
        }

        while (v201);
        v224 = v202;

        v0 = v226;
      }

      else
      {

        v224 = MEMORY[0x277D84F90];
      }
    }

    v16 = *(v0 + 96);
    v231 = *(v0 + 80);
    v232 = v16;
    v233 = *(v0 + 112);
    v17 = *(v0 + 32);
    __dst = *(v0 + 16);
    v228 = v17;
    v18 = *(v0 + 64);
    v229 = *(v0 + 48);
    v230 = v18;
    v19 = sub_230D40C2C(&__dst);
    v21 = v20;
    v22 = v229;
    *(v0 + 168) = v230;
    v23 = v232;
    *(v0 + 184) = v231;
    *(v0 + 200) = v23;
    v24 = v228;
    *(v0 + 120) = __dst;
    *(v0 + 136) = v24;
    *(v0 + 216) = v233;
    *(v0 + 152) = v22;
    sub_230D1D098(v0 + 120);
    v25 = sub_230D3D1E0(v19, v21);

    if (sqlite3_step(v25) == 100)
    {
      v223 = *(v224 + 16);
      v29 = MEMORY[0x277D84F90];
      v218 = xmmword_230E6E740;
      v222 = v25;
      while (1)
      {
        v221 = v29;
        v30 = sub_230D0DBB4(MEMORY[0x277D84F90]);
        if (v223)
        {
          break;
        }

LABEL_143:
        v29 = v221;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_230E4A0B8(0, v221[2] + 1, 1, v221, v192, v193, v194, v195, v218);
        }

        v197 = v29[2];
        v196 = v29[3];
        if (v197 >= v196 >> 1)
        {
          v29 = sub_230E4A0B8((v196 > 1), v197 + 1, 1, v29, v192, v193, v194, v195, v218);
        }

        v29[2] = v197 + 1;
        v29[v197 + 4] = v30;
        if (sqlite3_step(v25) != 100)
        {
          goto LABEL_150;
        }
      }

      v31 = 0;
      v32 = v224 + 40;
      v33 = v224;
      while (1)
      {
        if (v31 >= *(v33 + 16))
        {
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
        }

        if (v31 == 0x80000000)
        {
          goto LABEL_168;
        }

        v39 = *v32;
        v225 = *(v32 - 8);
        v40 = *(v32 + 8);

        swift_bridgeObjectRetain_n();

        v41 = sqlite3_column_type(v25, v31);
        if (v40 <= 1)
        {
          break;
        }

        if (v40 == 2)
        {
          if (v41 != 1)
          {
            if (v41 != 5)
            {

              *&__dst = 0;
              *(&__dst + 1) = 0xE000000000000000;
              sub_230E69540();

              v213 = 0x8000000230E818A0;
              v214 = 0xD00000000000001ELL;
              goto LABEL_166;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&__dst = v30;
            v51 = sub_230DA41A0(v225, v39);
            v53 = v30[2];
            v54 = (v52 & 1) == 0;
            v37 = __OFADD__(v53, v54);
            v55 = v53 + v54;
            if (v37)
            {
              goto LABEL_170;
            }

            v56 = v52;
            if (v30[3] < v55)
            {
              sub_230DB602C(v55, isUniquelyReferenced_nonNull_native);
              v51 = sub_230DA41A0(v225, v39);
              if ((v56 & 1) != (v57 & 1))
              {
                goto LABEL_157;
              }

              goto LABEL_78;
            }

            if (isUniquelyReferenced_nonNull_native)
            {
LABEL_78:
              if (v56)
              {
                goto LABEL_79;
              }
            }

            else
            {
              v168 = v51;
              sub_230DB9990();
              v51 = v168;
              if (v56)
              {
LABEL_79:
                v123 = v51;

                v30 = __dst;
                v124 = *(__dst + 56) + 24 * v123;
                v120 = *v124;
                v121 = *(v124 + 8);
                *v124 = xmmword_230E6E730;
                v122 = *(v124 + 16);
                v125 = 2;
                goto LABEL_86;
              }
            }

            v30 = __dst;
            *(__dst + 8 * (v51 >> 6) + 64) |= 1 << v51;
            v169 = (v30[6] + 16 * v51);
            *v169 = v225;
            v169[1] = v39;
            v170 = v30[7] + 24 * v51;
            *v170 = xmmword_230E6E730;
            *(v170 + 16) = 2;

            v171 = v30[2];
            v37 = __OFADD__(v171, 1);
            v38 = v171 + 1;
            v25 = v222;
            if (v37)
            {
              goto LABEL_180;
            }

            goto LABEL_17;
          }

          v79 = sqlite3_column_int64(v25, v31);
          v80 = swift_isUniquelyReferenced_nonNull_native();
          *&__dst = v30;
          v81 = sub_230DA41A0(v225, v39);
          v83 = v30[2];
          v84 = (v82 & 1) == 0;
          v37 = __OFADD__(v83, v84);
          v85 = v83 + v84;
          if (v37)
          {
            goto LABEL_174;
          }

          v86 = v82;
          if (v30[3] < v85)
          {
            sub_230DB602C(v85, v80);
            v81 = sub_230DA41A0(v225, v39);
            if ((v86 & 1) != (v87 & 1))
            {
              goto LABEL_157;
            }

            goto LABEL_69;
          }

          if (v80)
          {
LABEL_69:
            if (v86)
            {
              goto LABEL_70;
            }
          }

          else
          {
            v159 = v81;
            sub_230DB9990();
            v81 = v159;
            if (v86)
            {
LABEL_70:
              v108 = v81;

              v30 = __dst;
              v109 = *(__dst + 56) + 24 * v108;
              v110 = *v109;
              v111 = *(v109 + 8);
              *v109 = v79;
              *(v109 + 8) = 0;
              v112 = *(v109 + 16);
              *(v109 + 16) = 2;
              sub_230D0F474(v110, v111, v112);

              goto LABEL_89;
            }
          }

          v30 = __dst;
          *(__dst + 8 * (v81 >> 6) + 64) |= 1 << v81;
          v160 = (v30[6] + 16 * v81);
          *v160 = v225;
          v160[1] = v39;
          v161 = v30[7] + 24 * v81;
          *v161 = v79;
          *(v161 + 8) = 0;
          *(v161 + 16) = 2;

          v162 = v30[2];
          v37 = __OFADD__(v162, 1);
          v38 = v162 + 1;
          v25 = v222;
          if (v37)
          {
            goto LABEL_182;
          }

          goto LABEL_17;
        }

        if (v41 != 3)
        {
          if (v41 != 5)
          {

            *&__dst = 0;
            *(&__dst + 1) = 0xE000000000000000;
            sub_230E69540();

            v215 = "Expected text value for column ";
LABEL_165:
            v213 = (v215 - 32) | 0x8000000000000000;
            v214 = 0xD00000000000001FLL;
LABEL_166:
            *&__dst = v214;
            *(&__dst + 1) = v213;
            MEMORY[0x23191DA00](v225, v39);

            v216 = __dst;
            sub_230D0D224();
            swift_allocError();
            *v217 = v216;
            *(v217 + 16) = 4;
            swift_willThrow();

            sqlite3_finalize(v25);
            goto LABEL_7;
          }

          v66 = swift_isUniquelyReferenced_nonNull_native();
          *&__dst = v30;
          v67 = sub_230DA41A0(v225, v39);
          v69 = v30[2];
          v70 = (v68 & 1) == 0;
          v37 = __OFADD__(v69, v70);
          v71 = v69 + v70;
          if (v37)
          {
            goto LABEL_169;
          }

          v72 = v68;
          if (v30[3] < v71)
          {
            sub_230DB602C(v71, v66);
            v67 = sub_230DA41A0(v225, v39);
            if ((v72 & 1) != (v73 & 1))
            {
              goto LABEL_157;
            }

            goto LABEL_84;
          }

          if (v66)
          {
LABEL_84:
            if (v72)
            {
              goto LABEL_85;
            }
          }

          else
          {
            v176 = v67;
            sub_230DB9990();
            v67 = v176;
            if (v72)
            {
LABEL_85:
              v128 = v67;

              v30 = __dst;
              v124 = *(__dst + 56) + 24 * v128;
              v120 = *v124;
              v121 = *(v124 + 8);
              *v124 = 0;
              *(v124 + 8) = 0;
              v122 = *(v124 + 16);
              v125 = 3;
LABEL_86:
              *(v124 + 16) = v125;
LABEL_87:
              sub_230D0F474(v120, v121, v122);

LABEL_88:

LABEL_89:

              v33 = v224;
              v25 = v222;
              goto LABEL_19;
            }
          }

          v30 = __dst;
          *(__dst + 8 * (v67 >> 6) + 64) |= 1 << v67;
          v177 = (v30[6] + 16 * v67);
          *v177 = v225;
          v177[1] = v39;
          v178 = v30[7] + 24 * v67;
          *v178 = 0;
          *(v178 + 8) = 0;
          *(v178 + 16) = 3;

          v179 = v30[2];
          v37 = __OFADD__(v179, 1);
          v38 = v179 + 1;
          v25 = v222;
          if (v37)
          {
            goto LABEL_177;
          }

          goto LABEL_17;
        }

        if (!sqlite3_column_text(v25, v31))
        {
          v129 = swift_isUniquelyReferenced_nonNull_native();
          *&__dst = v30;
          v130 = sub_230DA41A0(v225, v39);
          v132 = v30[2];
          v133 = (v131 & 1) == 0;
          v37 = __OFADD__(v132, v133);
          v134 = v132 + v133;
          if (v37)
          {
            goto LABEL_184;
          }

          v135 = v131;
          if (v30[3] < v134)
          {
            sub_230DB602C(v134, v129);
            v130 = sub_230DA41A0(v225, v39);
            if ((v135 & 1) != (v136 & 1))
            {
              goto LABEL_157;
            }

            goto LABEL_100;
          }

          if (v129)
          {
LABEL_100:
            if (v135)
            {
              goto LABEL_101;
            }
          }

          else
          {
            v188 = v130;
            sub_230DB9990();
            v130 = v188;
            if (v135)
            {
LABEL_101:
              v141 = v130;

              v30 = __dst;
              v142 = *(__dst + 56) + 24 * v141;
              v143 = *v142;
              v144 = *(v142 + 8);
              *v142 = xmmword_230E6E720;
              v145 = *(v142 + 16);
              *(v142 + 16) = 3;
              sub_230D0F474(v143, v144, v145);

              goto LABEL_18;
            }
          }

          v30 = __dst;
          *(__dst + 8 * (v130 >> 6) + 64) |= 1 << v130;
          v189 = (v30[6] + 16 * v130);
          *v189 = v225;
          v189[1] = v39;
          v190 = v30[7] + 24 * v130;
          *v190 = xmmword_230E6E720;
          *(v190 + 16) = 3;

          v191 = v30[2];
          v37 = __OFADD__(v191, 1);
          v38 = v191 + 1;
          if (v37)
          {
            goto LABEL_186;
          }

LABEL_17:
          v30[2] = v38;
          goto LABEL_18;
        }

        v97 = sub_230E69130();
        v220 = v98;
        v99 = swift_isUniquelyReferenced_nonNull_native();
        *&__dst = v30;
        v101 = sub_230DA41A0(v225, v39);
        v102 = v30[2];
        v103 = (v100 & 1) == 0;
        v104 = v102 + v103;
        if (__OFADD__(v102, v103))
        {
          goto LABEL_176;
        }

        v105 = v100;
        if (v30[3] >= v104)
        {
          if (v99)
          {
            if ((v100 & 1) == 0)
            {
              goto LABEL_137;
            }
          }

          else
          {
            sub_230DB9990();
            if ((v105 & 1) == 0)
            {
              goto LABEL_137;
            }
          }
        }

        else
        {
          sub_230DB602C(v104, v99);
          v106 = sub_230DA41A0(v225, v39);
          if ((v105 & 1) != (v107 & 1))
          {
            goto LABEL_157;
          }

          v101 = v106;
          if ((v105 & 1) == 0)
          {
LABEL_137:
            v30 = __dst;
            *(__dst + 8 * (v101 >> 6) + 64) |= 1 << v101;
            v184 = (v30[6] + 16 * v101);
            *v184 = v225;
            v184[1] = v39;
            v185 = v30[7] + 24 * v101;
            *v185 = v97;
            *(v185 + 8) = v220;
            *(v185 + 16) = 3;

            v186 = v30[2];
            v37 = __OFADD__(v186, 1);
            v187 = v186 + 1;
            if (v37)
            {
              goto LABEL_185;
            }

            v30[2] = v187;
            v25 = v222;
            goto LABEL_18;
          }
        }

        v30 = __dst;
        v137 = *(__dst + 56) + 24 * v101;
        v138 = *v137;
        v139 = *(v137 + 8);
        *v137 = v97;
        *(v137 + 8) = v220;
        v140 = *(v137 + 16);
        *(v137 + 16) = 3;
        sub_230D0F474(v138, v139, v140);

        v25 = v222;
LABEL_18:
        v33 = v224;
LABEL_19:
        ++v31;
        v32 += 56;
        if (v223 == v31)
        {
          goto LABEL_143;
        }
      }

      if (!v40)
      {
        if (v41 != 4)
        {
          if (v41 != 5)
          {

            *&__dst = 0;
            *(&__dst + 1) = 0xE000000000000000;
            sub_230E69540();

            v215 = "Expected blob value for column ";
            goto LABEL_165;
          }

          v42 = swift_isUniquelyReferenced_nonNull_native();
          *&__dst = v30;
          v43 = sub_230DA41A0(v225, v39);
          v45 = v30[2];
          v46 = (v44 & 1) == 0;
          v37 = __OFADD__(v45, v46);
          v47 = v45 + v46;
          if (v37)
          {
            goto LABEL_172;
          }

          v48 = v44;
          if (v30[3] >= v47)
          {
            if ((v42 & 1) == 0)
            {
              v164 = v43;
              sub_230DB9990();
              v43 = v164;
              if (v48)
              {
LABEL_76:
                v118 = v43;

                v30 = __dst;
                v119 = *(__dst + 56) + 24 * v118;
                v120 = *v119;
                v121 = *(v119 + 8);
                *v119 = xmmword_230E6E750;
                v122 = *(v119 + 16);
                *(v119 + 16) = 0;
                goto LABEL_87;
              }

              goto LABEL_117;
            }
          }

          else
          {
            sub_230DB602C(v47, v42);
            v43 = sub_230DA41A0(v225, v39);
            if ((v48 & 1) != (v49 & 1))
            {
              goto LABEL_157;
            }
          }

          if (v48)
          {
            goto LABEL_76;
          }

LABEL_117:
          v30 = __dst;
          *(__dst + 8 * (v43 >> 6) + 64) |= 1 << v43;
          v165 = (v30[6] + 16 * v43);
          *v165 = v225;
          v165[1] = v39;
          v166 = v30[7] + 24 * v43;
          *v166 = xmmword_230E6E750;
          *(v166 + 16) = 0;

          v167 = v30[2];
          v37 = __OFADD__(v167, 1);
          v38 = v167 + 1;
          v25 = v222;
          if (v37)
          {
            goto LABEL_181;
          }

          goto LABEL_17;
        }

        v74 = sqlite3_column_blob(v25, v31);
        result = sqlite3_column_bytes(v25, v31);
        if (!v74)
        {
          __break(1u);
          return result;
        }

        v75 = result;
        if (result)
        {
          if (result < 15)
          {
            *(&__dst + 6) = 0;
            *&__dst = 0;
            BYTE14(__dst) = result;
            memcpy(&__dst, v74, result);
            v77 = __dst;
            v78 = v219 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
            v219 = v78;
          }

          else
          {
            sub_230E68760();
            swift_allocObject();
            if (v75 == 0x7FFFFFFF)
            {
              v76 = sub_230E68720();
              sub_230E68870();
              v77 = swift_allocObject();
              *(v77 + 16) = v218;
              v78 = v76 | 0x8000000000000000;
            }

            else
            {
              v77 = v75 << 32;
              v78 = sub_230E68720() | 0x4000000000000000;
            }
          }
        }

        else
        {
          v77 = 0;
          v78 = 0xC000000000000000;
        }

        sub_230D0DD0C(v77, v78);
        v146 = swift_isUniquelyReferenced_nonNull_native();
        *&__dst = v30;
        v147 = sub_230DA41A0(v225, v39);
        v149 = v30[2];
        v150 = (v148 & 1) == 0;
        v37 = __OFADD__(v149, v150);
        v151 = v149 + v150;
        if (v37)
        {
          goto LABEL_175;
        }

        v152 = v148;
        if (v30[3] >= v151)
        {
          if ((v146 & 1) == 0)
          {
            v180 = v147;
            sub_230DB9990();
            v147 = v180;
            v25 = v222;
            if (v152)
            {
LABEL_109:
              v154 = v147;

              v30 = __dst;
              v155 = *(__dst + 56) + 24 * v154;
              v156 = *v155;
              v157 = *(v155 + 8);
              *v155 = v77;
              *(v155 + 8) = v78;
              v158 = *(v155 + 16);
              *(v155 + 16) = 0;
              sub_230D0F474(v156, v157, v158);

              sub_230D0F4A8(v77, v78);
              goto LABEL_18;
            }

            goto LABEL_133;
          }
        }

        else
        {
          sub_230DB602C(v151, v146);
          v147 = sub_230DA41A0(v225, v39);
          if ((v152 & 1) != (v153 & 1))
          {
LABEL_157:

            return sub_230E69950();
          }
        }

        v25 = v222;
        if (v152)
        {
          goto LABEL_109;
        }

LABEL_133:
        v30 = __dst;
        *(__dst + 8 * (v147 >> 6) + 64) |= 1 << v147;
        v181 = (v30[6] + 16 * v147);
        *v181 = v225;
        v181[1] = v39;
        v182 = v30[7] + 24 * v147;
        *v182 = v77;
        *(v182 + 8) = v78;
        *(v182 + 16) = 0;

        sub_230D0F4A8(v77, v78);
        v183 = v30[2];
        v37 = __OFADD__(v183, 1);
        v38 = v183 + 1;
        if (v37)
        {
          goto LABEL_183;
        }

        goto LABEL_17;
      }

      if (v41 != 2)
      {
        if (v41 != 5)
        {

          *&__dst = 0;
          *(&__dst + 1) = 0xE000000000000000;
          sub_230E69540();

          v213 = 0x8000000230E81700;
          v214 = 0xD000000000000021;
          goto LABEL_166;
        }

        v58 = swift_isUniquelyReferenced_nonNull_native();
        *&__dst = v30;
        v59 = sub_230DA41A0(v225, v39);
        v61 = v30[2];
        v62 = (v60 & 1) == 0;
        v37 = __OFADD__(v61, v62);
        v63 = v61 + v62;
        if (v37)
        {
          goto LABEL_171;
        }

        v64 = v60;
        if (v30[3] >= v63)
        {
          if ((v58 & 1) == 0)
          {
            v172 = v59;
            sub_230DB9990();
            v59 = v172;
            if (v64)
            {
LABEL_82:
              v126 = v59;

              v30 = __dst;
              v127 = *(__dst + 56) + 24 * v126;
              v120 = *v127;
              v121 = *(v127 + 8);
              *v127 = xmmword_230E6E730;
              v122 = *(v127 + 16);
              *(v127 + 16) = 1;
              goto LABEL_87;
            }

            goto LABEL_125;
          }
        }

        else
        {
          sub_230DB602C(v63, v58);
          v59 = sub_230DA41A0(v225, v39);
          if ((v64 & 1) != (v65 & 1))
          {
            goto LABEL_157;
          }
        }

        if (v64)
        {
          goto LABEL_82;
        }

LABEL_125:
        v30 = __dst;
        *(__dst + 8 * (v59 >> 6) + 64) |= 1 << v59;
        v173 = (v30[6] + 16 * v59);
        *v173 = v225;
        v173[1] = v39;
        v174 = v30[7] + 24 * v59;
        *v174 = xmmword_230E6E730;
        *(v174 + 16) = 1;

        v175 = v30[2];
        v37 = __OFADD__(v175, 1);
        v38 = v175 + 1;
        v25 = v222;
        if (v37)
        {
          goto LABEL_178;
        }

        goto LABEL_17;
      }

      v88 = sqlite3_column_double(v25, v31);
      v89 = swift_isUniquelyReferenced_nonNull_native();
      *&__dst = v30;
      v90 = sub_230DA41A0(v225, v39);
      v92 = v30[2];
      v93 = (v91 & 1) == 0;
      v37 = __OFADD__(v92, v93);
      v94 = v92 + v93;
      if (v37)
      {
        goto LABEL_173;
      }

      v95 = v91;
      if (v30[3] >= v94)
      {
        if ((v89 & 1) == 0)
        {
          v163 = v90;
          sub_230DB9990();
          v90 = v163;
          if (v95)
          {
LABEL_73:
            v113 = v90;

            v30 = __dst;
            v114 = *(__dst + 56) + 24 * v113;
            v115 = *v114;
            v116 = *(v114 + 8);
            *v114 = v88;
            *(v114 + 8) = 0;
            v117 = *(v114 + 16);
            *(v114 + 16) = 1;
            sub_230D0F474(v115, v116, v117);

            goto LABEL_88;
          }

          goto LABEL_16;
        }
      }

      else
      {
        sub_230DB602C(v94, v89);
        v90 = sub_230DA41A0(v225, v39);
        if ((v95 & 1) != (v96 & 1))
        {
          goto LABEL_157;
        }
      }

      if (v95)
      {
        goto LABEL_73;
      }

LABEL_16:
      v30 = __dst;
      *(__dst + 8 * (v90 >> 6) + 64) |= 1 << v90;
      v34 = (v30[6] + 16 * v90);
      *v34 = v225;
      v34[1] = v39;
      v35 = v30[7] + 24 * v90;
      *v35 = v88;
      *(v35 + 8) = 0;
      *(v35 + 16) = 1;

      v36 = v30[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      v25 = v222;
      if (v37)
      {
        goto LABEL_179;
      }

      goto LABEL_17;
    }

    v29 = MEMORY[0x277D84F90];
LABEL_150:
    v198 = *(v0 + 232);

    sqlite3_reset(v25);
    *&__dst = 0;
    *(&__dst + 1) = 0xE000000000000000;
    sub_230E69540();
    MEMORY[0x23191DA00](0xD00000000000002FLL, 0x8000000230E81870);
    *(v0 + 224) = v29[2];
    v199 = sub_230E69890();
    MEMORY[0x23191DA00](v199);

    MEMORY[0x23191DA00](0x7364726F63657220, 0xE800000000000000);
    sub_230E68950();

    *v198 = v29;
    sqlite3_finalize(v25);
    v27 = *(v0 + 8);
  }

  else
  {

    sub_230D0D224();
    swift_allocError();
    *v26 = 0;
    *(v26 + 8) = 0;
    *(v26 + 16) = 3;
    swift_willThrow();
LABEL_7:
    v27 = *(v0 + 8);
  }

  return v27();
}

void *sub_230D40A38()
{
  v1 = *(v0 + 24);
  v2 = sub_230D0DD60(MEMORY[0x277D84F90]);
  v3 = *(v1 + 16);
  if (!v3)
  {
    return v2;
  }

  v4 = 0;
  v5 = (v1 + 48);
  while (v4 < *(v1 + 16))
  {
    v8 = *(v5 - 2);
    v7 = *(v5 - 1);
    v9 = *v5;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = sub_230DA41A0(v8, v7);
    v13 = v2[2];
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      goto LABEL_18;
    }

    v17 = v12;
    if (v2[3] < v16)
    {
      sub_230DB5D54(v16, isUniquelyReferenced_nonNull_native);
      v11 = sub_230DA41A0(v8, v7);
      if ((v17 & 1) != (v18 & 1))
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v17)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v23 = v11;
    sub_230DB97F8();
    v11 = v23;
    if (v17)
    {
LABEL_3:
      v6 = (v2[7] + 24 * v11);
      *v6 = v8;
      v6[1] = v7;
      v6[2] = v9;

      goto LABEL_4;
    }

LABEL_12:
    v2[(v11 >> 6) + 8] |= 1 << v11;
    v19 = (v2[6] + 16 * v11);
    *v19 = v8;
    v19[1] = v7;
    v20 = (v2[7] + 24 * v11);
    *v20 = v8;
    v20[1] = v7;
    v20[2] = v9;

    v21 = v2[2];
    v15 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v15)
    {
      goto LABEL_19;
    }

    v2[2] = v22;
LABEL_4:
    ++v4;
    v5 += 3;
    if (v3 == v4)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_230E69950();
  __break(1u);
  return result;
}

uint64_t sub_230D40C2C(uint64_t a1)
{
  v3 = *a1;
  v72 = *(a1 + 32);
  v73 = *(a1 + 16);
  v63 = *(a1 + 24);
  v64 = *(a1 + 40);
  v69 = *(a1 + 48);
  v61 = *(a1 + 8);
  v62 = *(a1 + 56);
  v65 = *(a1 + 72);
  v66 = *(a1 + 64);
  v70 = *(a1 + 80);
  v60 = *(a1 + 88);
  v71 = *(a1 + 96);
  v67 = v1[1];
  v68 = *v1;
  if (*a1)
  {

    v4 = v3;
    v5 = *(v3 + 16);
    if (!v5)
    {
      goto LABEL_24;
    }

LABEL_10:
    v78 = MEMORY[0x277D84F90];
    v74 = v4;
    sub_230D48880(0, v5, 0);
    v14 = 0;
    v15 = v78;
    v16 = (v4 + 80);
    v75 = v5;
    while (v14 < *(v4 + 16))
    {
      v2 = *(v16 - 6);
      v17 = *(v16 - 5);
      v19 = *(v16 - 3);
      v18 = *(v16 - 2);
      v20 = *v16;
      if (*v16)
      {
        v76 = *(v16 - 1);
        v77 = v20;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        MEMORY[0x23191DA00](542327072, 0xE400000000000000);
        v21 = v17;
        if (v18)
        {

          v2 = v19;
          v21 = v18;
        }

        MEMORY[0x23191DA00](v2, v21);

        v2 = v76;
        v17 = v77;
        v4 = v74;
      }

      else if (v18)
      {
        v76 = *(v16 - 6);
        v77 = v17;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        MEMORY[0x23191DA00](542327072, 0xE400000000000000);
        MEMORY[0x23191DA00](v19, v18);
        v4 = v74;

        swift_bridgeObjectRelease_n();
        v2 = v76;
        v17 = v77;
      }

      else
      {
      }

      v78 = v15;
      v23 = *(v15 + 16);
      v22 = *(v15 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_230D48880((v22 > 1), v23 + 1, 1);
        v4 = v74;
        v15 = v78;
      }

      ++v14;
      *(v15 + 16) = v23 + 1;
      v24 = v15 + 16 * v23;
      *(v24 + 32) = v2;
      *(v24 + 40) = v17;
      v16 += 7;
      v5 = v75;
      if (v75 == v14)
      {

        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_51:
    v15 = sub_230E49E88((v2 > 1), v5, 1, v15);
LABEL_27:
    v29 = v66;
    *(v15 + 16) = v5;
    v30 = v15 + 16 * v4;
    v31 = v72;
    *(v30 + 32) = v61;
    *(v30 + 40) = v73;
    if (!v66)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  v76 = v1[2];

  sub_230D4434C(&v76);
  v6 = v76;
  v2 = *(v76 + 16);
  if (v2)
  {
    v76 = MEMORY[0x277D84F90];
    sub_230D488C0(0, v2, 0);
    v4 = v76;
    v7 = (v6 + 48);
    do
    {
      v9 = *(v7 - 2);
      v8 = *(v7 - 1);
      v10 = *v7;
      v76 = v4;
      v12 = *(v4 + 16);
      v11 = *(v4 + 24);

      if (v12 >= v11 >> 1)
      {
        sub_230D488C0((v11 > 1), v12 + 1, 1);
        v4 = v76;
      }

      v7 += 88;
      *(v4 + 16) = v12 + 1;
      v13 = (v4 + 56 * v12);
      *(v13 + 4) = v9;
      *(v13 + 5) = v8;
      v13[48] = v10;
      *(v13 + 56) = 0u;
      *(v13 + 72) = 0u;
      --v2;
    }

    while (v2);

    v5 = *(v4 + 16);
    if (!v5)
    {
      goto LABEL_24;
    }

    goto LABEL_10;
  }

  v4 = MEMORY[0x277D84F90];
  v5 = *(MEMORY[0x277D84F90] + 16);
  if (v5)
  {
    goto LABEL_10;
  }

LABEL_24:

  v15 = MEMORY[0x277D84F90];
LABEL_25:
  v76 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
  sub_230D443B8();
  v25 = sub_230E68FF0();
  v27 = v26;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A6A8, &unk_230E6B3C0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_230E6B3B0;
  v76 = 0;
  v77 = 0xE000000000000000;
  sub_230E69540();

  v76 = 0x205443454C4553;
  v77 = 0xE700000000000000;
  MEMORY[0x23191DA00](v25, v27);

  MEMORY[0x23191DA00](0x204D4F524620, 0xE600000000000000);
  MEMORY[0x23191DA00](v68, v67);
  v28 = v77;
  *(v15 + 32) = v76;
  *(v15 + 40) = v28;
  if (v73)
  {
    v4 = *(v15 + 16);
    v2 = *(v15 + 24);
    v5 = v4 + 1;

    if (v4 < v2 >> 1)
    {
      goto LABEL_27;
    }

    goto LABEL_51;
  }

  v31 = v72;
  v29 = v66;
  if (!v66)
  {
    goto LABEL_33;
  }

LABEL_30:
  v76 = 0x204552454857;
  v77 = 0xE600000000000000;
  MEMORY[0x23191DA00](v62, v29);
  v32 = v76;
  v33 = v77;
  v35 = *(v15 + 16);
  v34 = *(v15 + 24);
  if (v35 >= v34 >> 1)
  {
    v15 = sub_230E49E88((v34 > 1), v35 + 1, 1, v15);
  }

  v31 = v72;
  *(v15 + 16) = v35 + 1;
  v36 = v15 + 16 * v35;
  *(v36 + 32) = v32;
  *(v36 + 40) = v33;
LABEL_33:
  if (v31)
  {
    v76 = 0x59422050554F5247;
    v77 = 0xE900000000000020;
    MEMORY[0x23191DA00](v63);
    v37 = v76;
    v38 = v77;
    v40 = *(v15 + 16);
    v39 = *(v15 + 24);
    if (v40 >= v39 >> 1)
    {
      v15 = sub_230E49E88((v39 > 1), v40 + 1, 1, v15);
    }

    *(v15 + 16) = v40 + 1;
    v41 = v15 + 16 * v40;
    *(v41 + 32) = v37;
    *(v41 + 40) = v38;
  }

  if (v69)
  {
    v76 = 0x20474E49564148;
    v77 = 0xE700000000000000;
    MEMORY[0x23191DA00](v64);
    v42 = v76;
    v43 = v77;
    v45 = *(v15 + 16);
    v44 = *(v15 + 24);
    if (v45 >= v44 >> 1)
    {
      v15 = sub_230E49E88((v44 > 1), v45 + 1, 1, v15);
    }

    *(v15 + 16) = v45 + 1;
    v46 = v15 + 16 * v45;
    *(v46 + 32) = v42;
    *(v46 + 40) = v43;
  }

  if (v70)
  {
    v76 = 0x594220524544524FLL;
    v77 = 0xE900000000000020;
    MEMORY[0x23191DA00](v65);
    v47 = v76;
    v48 = v77;
    v50 = *(v15 + 16);
    v49 = *(v15 + 24);
    if (v50 >= v49 >> 1)
    {
      v15 = sub_230E49E88((v49 > 1), v50 + 1, 1, v15);
    }

    *(v15 + 16) = v50 + 1;
    v51 = v15 + 16 * v50;
    *(v51 + 32) = v47;
    *(v51 + 40) = v48;
  }

  if ((v71 & 1) == 0)
  {
    v76 = 0x2054494D494CLL;
    v77 = 0xE600000000000000;
    v78 = v60;
    v52 = sub_230E69890();
    MEMORY[0x23191DA00](v52);

    v53 = v76;
    v54 = v77;
    v56 = *(v15 + 16);
    v55 = *(v15 + 24);
    if (v56 >= v55 >> 1)
    {
      v15 = sub_230E49E88((v55 > 1), v56 + 1, 1, v15);
    }

    *(v15 + 16) = v56 + 1;
    v57 = v15 + 16 * v56;
    *(v57 + 32) = v53;
    *(v57 + 40) = v54;
  }

  v76 = v15;
  v58 = sub_230E68FF0();

  return v58;
}

uint64_t sub_230D41368(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *a3;
  v6 = a3[1];
  *(v4 + 128) = *(a2 + 16);
  *(v4 + 144) = v5;
  *(v4 + 96) = a1;
  *(v4 + 104) = v3;
  v7 = *(a2 + 8);
  *(v4 + 112) = *a2;
  *(v4 + 120) = v7;
  *(v4 + 160) = v6;
  *(v4 + 176) = *(a3 + 4);
  return MEMORY[0x2822009F8](sub_230D413A8, v3, 0);
}

uint64_t sub_230D413A8()
{
  v1 = *(v0 + 160);
  if (v1)
  {
    v3 = *(v0 + 168);
    v2 = *(v0 + 176);
    v5 = *(v0 + 144);
    v4 = *(v0 + 152);
    *(v0 + 192) = v1;
    *(v0 + 200) = v2;
    *(v0 + 16) = v5;
    *(v0 + 24) = v4;
    *(v0 + 32) = v1;
    *(v0 + 40) = v3 & 1;
    *(v0 + 41) = BYTE1(v3);
    *(v0 + 48) = v2;

    sub_230D0585C(v5, v4, v1, v3, v2);
    v6 = swift_task_alloc();
    *(v0 + 208) = v6;
    *v6 = v0;
    v6[1] = sub_230D417E4;

    JUMPOUT(0x230D71ACCLL);
  }

  *(v0 + 216) = 1;
  v7 = swift_task_alloc();
  *(v0 + 184) = v7;
  *v7 = v0;
  v7[1] = sub_230D41588;

  return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 216), 0, 0);
}

uint64_t sub_230D41588()
{
  v1 = *(*v0 + 104);

  return MEMORY[0x2822009F8](sub_230D41698, v1, 0);
}

void sub_230D41698()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v6 = *(v0 + 88);
  *(v0 + 192) = v3;
  *(v0 + 200) = v6;
  v8 = *(v0 + 168);
  v7 = *(v0 + 176);
  v10 = *(v0 + 152);
  v9 = *(v0 + 160);
  v11 = *(v0 + 144);
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v6;

  sub_230D0585C(v11, v10, v9, v8, v7);
  v12 = swift_task_alloc();
  *(v0 + 208) = v12;
  *v12 = v0;
  v12[1] = sub_230D417E4;

  JUMPOUT(0x230D71ACCLL);
}

uint64_t sub_230D417E4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_230D41918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_230D41940, a6, 0);
}

const char *sub_230D41940()
{
  v22 = v0;
  sub_230E68950();
  v1 = sub_230D40A38();
  if (v1[2] && (v2 = sub_230DA41A0(*(v0 + 24), *(v0 + 32)), (v3 & 1) != 0))
  {
    v4 = *(v0 + 48);
    v5 = (v1[7] + 24 * v2);
    v7 = *v5;
    v6 = v5[1];

    strcpy(v21, "DELETE FROM  ");
    HIWORD(v21[1]) = -4864;

    MEMORY[0x23191DA00](v7, v6);
    v8 = v21[0];
    v9 = v21[1];
    v19 = v21[0];
    v20 = v21[1];
    if (v4)
    {
      v10 = *(v0 + 40);
      strcpy(v21, " WHERE ");
      v21[1] = 0xE700000000000000;
      MEMORY[0x23191DA00](v10, v4);
      MEMORY[0x23191DA00](v21[0], 0xE700000000000000);

      v8 = v19;
      v9 = v20;
    }

    else
    {
    }

    v12 = sub_230D3D1E0(v8, v9);

    if (sqlite3_step(v12) != 101)
    {
      return sub_230D43970();
    }

    v15 = *(v0 + 56);
    v16 = *(v0 + 16);

    v17 = sqlite3_changes(*(v15 + 112));
    v21[0] = 0;
    v21[1] = 0xE000000000000000;
    sub_230E69540();
    MEMORY[0x23191DA00](0xD000000000000030, 0x8000000230E81800);
    *(v0 + 64) = v17;
    v18 = sub_230E69890();
    MEMORY[0x23191DA00](v18);

    MEMORY[0x23191DA00](0x7364726F63657220, 0xE800000000000000);
    sub_230E68950();

    *v16 = v17;
    sqlite3_finalize(v12);
    v13 = *(v0 + 8);
  }

  else
  {

    sub_230D0D224();
    swift_allocError();
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 3;
    swift_willThrow();
    v13 = *(v0 + 8);
  }

  return v13();
}

uint64_t sub_230D41CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 96) = a1;
  *(v4 + 104) = v3;
  *(v4 + 112) = *a2;
  *(v4 + 120) = *(a2 + 8);
  *(v4 + 136) = *(a2 + 24);
  v5 = *(a3 + 16);
  *(v4 + 144) = *a3;
  *(v4 + 160) = v5;
  *(v4 + 176) = *(a3 + 32);
  return MEMORY[0x2822009F8](sub_230D41CE8, v3, 0);
}

uint64_t sub_230D41CE8()
{
  v1 = *(v0 + 160);
  if (v1)
  {
    v3 = *(v0 + 168);
    v2 = *(v0 + 176);
    v5 = *(v0 + 144);
    v4 = *(v0 + 152);
    *(v0 + 192) = v1;
    *(v0 + 200) = v2;
    *(v0 + 16) = v5;
    *(v0 + 24) = v4;
    *(v0 + 32) = v1;
    *(v0 + 40) = v3 & 1;
    *(v0 + 41) = BYTE1(v3);
    *(v0 + 48) = v2;

    sub_230D0585C(v5, v4, v1, v3, v2);
    v6 = swift_task_alloc();
    *(v0 + 208) = v6;
    *v6 = v0;
    v6[1] = sub_230D45220;

    JUMPOUT(0x230D70398);
  }

  *(v0 + 216) = 3;
  v7 = swift_task_alloc();
  *(v0 + 184) = v7;
  *v7 = v0;
  v7[1] = sub_230D41ED4;

  return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 216), 0, 0);
}

uint64_t sub_230D41ED4()
{
  v1 = *(*v0 + 104);

  return MEMORY[0x2822009F8](sub_230D41FE4, v1, 0);
}

void sub_230D41FE4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v6 = *(v0 + 88);
  *(v0 + 192) = v3;
  *(v0 + 200) = v6;
  v8 = *(v0 + 168);
  v7 = *(v0 + 176);
  v10 = *(v0 + 152);
  v9 = *(v0 + 160);
  v11 = *(v0 + 144);
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v6;

  sub_230D0585C(v11, v10, v9, v8, v7);
  v12 = swift_task_alloc();
  *(v0 + 208) = v12;
  *v12 = v0;
  v12[1] = sub_230D45220;

  JUMPOUT(0x230D70398);
}

uint64_t sub_230D4213C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[39] = a5;
  v6[40] = a6;
  v6[37] = a3;
  v6[38] = a4;
  v6[35] = a1;
  v6[36] = a2;
  return MEMORY[0x2822009F8](sub_230D42164, a6, 0);
}

uint64_t sub_230D42164()
{
  v90 = v0;
  sub_230E68950();
  v1 = sub_230D40A38();
  if (!v1[2] || (v2 = sub_230DA41A0(*(v0 + 288), *(v0 + 296)), (v3 & 1) == 0))
  {

    sub_230D0D224();
    swift_allocError();
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 3;
    swift_willThrow();
LABEL_5:
    v12 = *(v0 + 8);
    goto LABEL_6;
  }

  v4 = *(v0 + 312);
  v5 = v1[7] + 24 * v2;
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);

  v87 = v6;
  v88 = v7;
  v89 = v8;
  v9 = sub_230D42D70(v4);
  v14 = sub_230D3D1E0(v9, v10);
  v15 = *(v0 + 304);
  v87 = v6;
  v88 = v7;
  v89 = v8;
  sub_230D4372C();
  v17 = v16;
  v81 = *(v15 + 16);
  if (!v81)
  {
LABEL_54:
    v52 = *(v0 + 280);

    v87 = 0;
    v88 = 0xE000000000000000;
    sub_230E69540();
    MEMORY[0x23191DA00](0xD000000000000032, 0x8000000230E81750);
    *(v0 + 16) = v81;
    v53 = sub_230E69890();
    MEMORY[0x23191DA00](v53);

    MEMORY[0x23191DA00](0x7364726F63657220, 0xE800000000000000);
    sub_230E68950();

    *v52 = v81;
    sqlite3_finalize(v14);
    v12 = *(v0 + 8);
LABEL_6:

    return v12();
  }

  v18 = 0;
  v19 = *(v0 + 304) + 32;
  v20 = v16 + 56;
  pStmt = v14;
  v77 = v19;
  while (1)
  {
    v78 = v18;
    v21 = *(v19 + 8 * v18);

    sqlite3_clear_bindings(v14);
    v87 = v8;

    sub_230D4434C(&v87);
    result = v87;
    v82 = *(v87 + 2);
    if (v82)
    {
      break;
    }

LABEL_52:

    if (sqlite3_step(v14) != 101)
    {
      return sub_230D43970();
    }

    v18 = v78 + 1;

    sqlite3_reset(v14);
    v19 = v77;
    if (v78 + 1 == v81)
    {
      goto LABEL_54;
    }
  }

  v22 = 0;
  v85 = v87 + 32;
  v86 = v21;
  v84 = v87;
  while (1)
  {
    if (v22 >= *(result + 16))
    {
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v23 = &v85[88 * v22];
    v24 = *v23;
    *(v0 + 120) = *(v23 + 1);
    *(v0 + 104) = v24;
    v25 = *(v23 + 2);
    v26 = *(v23 + 3);
    v27 = *(v23 + 4);
    *(v0 + 184) = *(v23 + 40);
    *(v0 + 168) = v27;
    *(v0 + 152) = v26;
    *(v0 + 136) = v25;
    v28 = v22 + 1;
    result = memmove((v0 + 16), v23, 0x52uLL);
    v29 = *(v0 + 16);
    v30 = *(v0 + 24);
    if (!*(v21 + 16))
    {
      if (v22 > 0x7FFFFFFE)
      {
        goto LABEL_71;
      }

      sub_230D2C310(v0 + 104, v0 + 192);

      goto LABEL_29;
    }

    sub_230D2C310(v0 + 104, v0 + 192);

    result = sub_230DA41A0(v29, v30);
    if ((v31 & 1) == 0)
    {
      break;
    }

    if (v22 > 0x7FFFFFFE)
    {
      goto LABEL_73;
    }

    v32 = *(v86 + 56) + 24 * result;
    v34 = *v32;
    v33 = *(v32 + 8);
    v35 = *(v32 + 16);
    v80 = v33;
    v79 = *(v32 + 16);
    if (*(v0 + 32) > 1u)
    {
      if (*(v0 + 32) == 2)
      {
        if (v35 != 2)
        {
          v68 = *v32;
          v69 = *(v32 + 16);
          sub_230D0DCD8(v34, v33, v35);

          v87 = 0;
          v88 = 0xE000000000000000;
          v70 = v33;
          sub_230E69540();

          v72 = 0x8000000230E816D0;
          v73 = 0xD000000000000022;
          goto LABEL_69;
        }

        sub_230D0DCD8(v34, v33, 2);

        if (v33)
        {
          goto LABEL_49;
        }

        v14 = pStmt;
        v36 = v34;
        v40 = sqlite3_bind_int64(pStmt, v28, v34);
      }

      else
      {
        if (v35 != 3)
        {
          v68 = *v32;
          v69 = *(v32 + 16);
          sub_230D0DCD8(v34, v33, v35);

          v87 = 0;
          v88 = 0xE000000000000000;
          v70 = v33;
          sub_230E69540();

          v71 = "Expected text value for column ";
          goto LABEL_67;
        }

        sub_230D0DCD8(v34, v33, 3);

        if (!v33)
        {
          goto LABEL_49;
        }

        v47 = sub_230E69030();
        v48 = v33;
        v49 = v47;
        v36 = v34;
        sub_230D0F474(v34, v48, 3);
        v50 = [v49 UTF8String];
        v51 = v49;
        v14 = pStmt;
        v40 = sqlite3_bind_text(pStmt, v28, v50, -1, 0);
      }
    }

    else
    {
      if (!*(v0 + 32))
      {
        if (*(v32 + 16))
        {
          v68 = *v32;
          v69 = *(v32 + 16);
          sub_230D0DCD8(v34, v33, v35);

          v87 = 0;
          v88 = 0xE000000000000000;
          v70 = v33;
          sub_230E69540();

          v71 = "Expected blob value for column ";
LABEL_67:
          v72 = (v71 - 32) | 0x8000000000000000;
          v73 = 0xD00000000000001FLL;
LABEL_69:
          v87 = v73;
          v88 = v72;
          MEMORY[0x23191DA00](v29, v30);

          v74 = v87;
          v75 = v88;
          sub_230D0D224();
          swift_allocError();
          *v76 = v74;
          *(v76 + 8) = v75;
          *(v76 + 16) = 1;
          swift_willThrow();
          sub_230D0F474(v68, v70, v69);
          goto LABEL_56;
        }

        sub_230D0DCD8(v34, v33, 0);
        sub_230D0DCF8(v34, v33);

        if (v33 >> 60 != 15)
        {
          v36 = v34;
          v37 = sub_230E68880();
          v38 = [v37 bytes];
          result = [v37 length];
          v14 = pStmt;
          if (result < 0xFFFFFFFF80000000)
          {
            goto LABEL_74;
          }

          if (result > 0x7FFFFFFF)
          {
            goto LABEL_75;
          }

          v39 = sqlite3_bind_blob(pStmt, v28, v38, result, 0);
          sub_230D0F474(v36, v80, 0);

          v40 = v39;
          goto LABEL_50;
        }

LABEL_49:
        v36 = v34;
        v14 = pStmt;
        v40 = sqlite3_bind_null(pStmt, v28);
        goto LABEL_50;
      }

      if (v35 != 1)
      {
        v68 = *v32;
        v69 = *(v32 + 16);
        sub_230D0DCD8(v34, v33, v35);

        v87 = 0;
        v88 = 0xE000000000000000;
        v70 = v33;
        sub_230E69540();

        v72 = 0x8000000230E81700;
        v73 = 0xD000000000000021;
        goto LABEL_69;
      }

      sub_230D0DCD8(v34, v33, 1);

      if (v33)
      {
        goto LABEL_49;
      }

      v36 = v34;
      v14 = pStmt;
      v40 = sqlite3_bind_double(pStmt, v28, *&v34);
    }

LABEL_50:
    v21 = v86;
    if (v40)
    {
      v63 = *(v0 + 320);

      result = sqlite3_errmsg(*(v63 + 112));
      if (result)
      {
        v64 = sub_230E69120();
        v66 = v65;
        sub_230D0D224();
        swift_allocError();
        *v67 = v64;
        *(v67 + 8) = v66;
        *(v67 + 16) = 2;
        swift_willThrow();
        sub_230D0F474(v36, v80, v79);
        goto LABEL_62;
      }

      goto LABEL_77;
    }

    sub_230D0F474(v36, v80, v79);
LABEL_14:
    sub_230D2C348(v0 + 16);
    v22 = v28;
    result = v84;
    if (v28 == v82)
    {
      goto LABEL_52;
    }
  }

  if (v22 > 0x7FFFFFFE)
  {
    goto LABEL_72;
  }

LABEL_29:
  if (*(v17 + 16))
  {
    sub_230E699B0();
    sub_230E69100();
    v41 = sub_230E699D0();
    v42 = -1 << *(v17 + 32);
    v43 = v41 & ~v42;
    if ((*(v20 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43))
    {
      v44 = ~v42;
      while (1)
      {
        v45 = (*(v17 + 48) + 16 * v43);
        v46 = *v45 == v29 && v45[1] == v30;
        if (v46 || (sub_230E698C0() & 1) != 0)
        {
          break;
        }

        v43 = (v43 + 1) & v44;
        if (((*(v20 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      v87 = 0;
      v88 = 0xE000000000000000;
      sub_230E69540();

      v87 = 0xD000000000000022;
      v88 = 0x8000000230E81680;
      MEMORY[0x23191DA00](v29, v30);

      v54 = v87;
      v55 = v88;
      sub_230D0D224();
      swift_allocError();
      *v56 = v54;
      *(v56 + 8) = v55;
      *(v56 + 16) = 1;
      swift_willThrow();
LABEL_56:
      sub_230D2C348(v0 + 16);
      v57 = pStmt;
LABEL_57:
      sqlite3_finalize(v57);
      goto LABEL_5;
    }
  }

LABEL_13:

  v14 = pStmt;
  v21 = v86;
  if (!sqlite3_bind_null(pStmt, v28))
  {
    goto LABEL_14;
  }

  v58 = *(v0 + 320);

  result = sqlite3_errmsg(*(v58 + 112));
  if (result)
  {
    v59 = sub_230E69120();
    v61 = v60;
    sub_230D0D224();
    swift_allocError();
    *v62 = v59;
    *(v62 + 8) = v61;
    *(v62 + 16) = 2;
    swift_willThrow();
LABEL_62:
    sub_230D2C348(v0 + 16);
    v57 = v14;
    goto LABEL_57;
  }

LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
  return result;
}

uint64_t sub_230D42D70(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  *&v109 = v1[2];

  sub_230D4434C(&v109);
  v100 = v4;
  v101 = v3;
  v5 = v109;
  v6 = *(v109 + 16);
  v7 = MEMORY[0x277D84F90];
  v105 = v109;
  if (v6)
  {
    *&v109 = MEMORY[0x277D84F90];
    sub_230D48880(0, v6, 0);
    v7 = v109;
    v8 = (v5 + 40);
    v9 = v6;
    do
    {
      v11 = *(v8 - 1);
      v10 = *v8;
      *&v109 = v7;
      v12 = *(v7 + 16);
      v13 = *(v7 + 24);

      if (v12 >= v13 >> 1)
      {
        sub_230D48880((v13 > 1), v12 + 1, 1);
        v7 = v109;
      }

      *(v7 + 16) = v12 + 1;
      v14 = v7 + 16 * v12;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;
      v8 += 11;
      --v9;
    }

    while (v9);
  }

  *&v109 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
  sub_230D443B8();
  v96 = sub_230E68FF0();
  v97 = v15;

  *&v109 = sub_230D45184(0x3F, 0xE100000000000000, v6);
  v98 = sub_230E68FF0();
  v99 = v16;

  v17 = *(v105 + 16);
  v18 = MEMORY[0x277D84F90];
  if (!v17)
  {
    v22 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  v19 = 0;
  v20 = v105 + 32;
  v21 = v17 - 1;
  v22 = MEMORY[0x277D84F90];
LABEL_8:
  v23 = v20 + 88 * v19;
  v24 = v19;
  while (v24 < *(v105 + 16))
  {
    v26 = *(v23 + 48);
    v25 = *(v23 + 64);
    v27 = *(v23 + 80);
    v111 = *(v23 + 32);
    v28 = *(v23 + 16);
    v109 = *v23;
    v110 = v28;
    v114 = v27;
    v112 = v26;
    v113 = v25;
    v19 = v24 + 1;
    if (BYTE11(v111))
    {
      v29 = v21;
      sub_230D2C310(&v109, v108);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_230D488A0(0, v22[2] + 1, 1);
      }

      v21 = v29;
      v31 = v22[2];
      v30 = v22[3];
      if (v31 >= v30 >> 1)
      {
        sub_230D488A0((v30 > 1), v31 + 1, 1);
        v21 = v29;
      }

      v22[2] = v31 + 1;
      v32 = &v22[11 * v31];
      v33 = v110;
      *(v32 + 2) = v109;
      *(v32 + 3) = v33;
      v34 = v111;
      v35 = v112;
      v36 = v113;
      *(v32 + 56) = v114;
      *(v32 + 5) = v35;
      *(v32 + 6) = v36;
      *(v32 + 4) = v34;
      v18 = MEMORY[0x277D84F90];
      if (v21 == v24)
      {
LABEL_20:
        v37 = v22[2];
        if (v37)
        {
          *&v109 = v18;
          sub_230D48880(0, v37, 0);
          v38 = v109;
          v39 = v22 + 5;
          do
          {
            v40 = *(v39 - 1);
            v41 = *v39;
            *&v109 = v38;
            v43 = *(v38 + 16);
            v42 = *(v38 + 24);

            if (v43 >= v42 >> 1)
            {
              sub_230D48880((v42 > 1), v43 + 1, 1);
              v38 = v109;
            }

            *(v38 + 16) = v43 + 1;
            v44 = v38 + 16 * v43;
            *(v44 + 32) = v40;
            *(v44 + 40) = v41;
            v39 += 11;
            --v37;
          }

          while (v37);

          *&v109 = v38;
          v95 = sub_230E68FF0();
          v46 = v45;

          v47 = v105;
          v48 = *(v105 + 16);
          v49 = MEMORY[0x277D84F90];
          if (v48)
          {
            v50 = 0;
            v51 = v105 + 32;
            v52 = v48 - 1;
            v53 = MEMORY[0x277D84F90];
            do
            {
              v54 = (v51 + 88 * v50);
              v20 = v50;
              while (1)
              {
                if (v20 >= *(v47 + 16))
                {
                  goto LABEL_69;
                }

                v56 = v54[3];
                v55 = v54[4];
                v57 = *(v54 + 40);
                v111 = v54[2];
                v58 = v54[1];
                v109 = *v54;
                v110 = v58;
                v114 = v57;
                v112 = v56;
                v113 = v55;
                v50 = v20 + 1;
                if ((BYTE11(v111) & 1) == 0)
                {
                  break;
                }

                v54 = (v54 + 88);
                ++v20;
                if (v48 == v50)
                {
                  goto LABEL_40;
                }
              }

              v103 = v51;
              v59 = v52;
              sub_230D2C310(&v109, v108);
              v107 = v53;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_230D488A0(0, *(v53 + 16) + 1, 1);
              }

              v52 = v59;
              v60 = v53;
              v61 = *(v53 + 16);
              v62 = *(v60 + 24);
              if (v61 >= v62 >> 1)
              {
                sub_230D488A0((v62 > 1), v61 + 1, 1);
                v52 = v59;
                v60 = v107;
              }

              *(v60 + 16) = v61 + 1;
              v63 = v60 + 88 * v61;
              v64 = v110;
              *(v63 + 32) = v109;
              *(v63 + 48) = v64;
              v65 = v111;
              v66 = v112;
              v67 = v113;
              *(v63 + 112) = v114;
              *(v63 + 80) = v66;
              *(v63 + 96) = v67;
              *(v63 + 64) = v65;
              v53 = v60;
              v51 = v103;
              v47 = v105;
            }

            while (v52 != v20);
          }

          else
          {
            v53 = MEMORY[0x277D84F90];
          }

LABEL_40:

          v20 = *(v53 + 16);
          if (v20)
          {
            v94 = v46;
            sub_230D48880(0, v20, 0);
            if (*(v53 + 16))
            {
              v68 = 0;
              v69 = v49;
              v102 = v53 + 32;
              v104 = v20;
              v70 = a1 + 56;
              v71 = 1;
              v106 = v53;
              while (1)
              {
                v72 = (v102 + 88 * v68);
                v68 = v71;
                v73 = v72[1];
                v109 = *v72;
                v110 = v73;
                v74 = v72[2];
                v75 = v72[3];
                v76 = v72[4];
                v114 = *(v72 + 40);
                v112 = v75;
                v113 = v76;
                v111 = v74;
                v77 = v109;
                if (a1)
                {
                  if (!*(a1 + 16))
                  {
                    sub_230D2C310(&v109, v108);
LABEL_56:
                    v108[0] = v77;

                    v84 = 2112800;
                    v85 = 0xE300000000000000;
                    goto LABEL_59;
                  }

                  sub_230E699B0();
                  sub_230D2C310(&v109, v108);
                  sub_230E69100();
                  v78 = sub_230E699D0();
                  v79 = -1 << *(a1 + 32);
                  v80 = v78 & ~v79;
                  if (((*(v70 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) == 0)
                  {
                    goto LABEL_56;
                  }

                  v81 = ~v79;
                  while (1)
                  {
                    v82 = (*(a1 + 48) + 16 * v80);
                    v83 = *v82 == v77 && v82[1] == *(&v77 + 1);
                    if (v83 || (sub_230E698C0() & 1) != 0)
                    {
                      break;
                    }

                    v80 = (v80 + 1) & v81;
                    if (((*(v70 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) == 0)
                    {
                      goto LABEL_56;
                    }
                  }

                  *&v108[0] = 0;
                  *(&v108[0] + 1) = 0xE000000000000000;
                  sub_230E69540();
                }

                else
                {
                  sub_230D2C310(&v109, v108);
                  sub_230E69540();
                }

                v108[0] = v77;
                v84 = 0x756C637865203D20;
                v85 = 0xEC0000002E646564;
LABEL_59:
                MEMORY[0x23191DA00](v84, v85);
                MEMORY[0x23191DA00](v77, *(&v77 + 1));
                sub_230D2C348(&v109);
                v20 = *(&v108[0] + 1);
                v86 = *&v108[0];
                v88 = *(v69 + 16);
                v87 = *(v69 + 24);
                if (v88 >= v87 >> 1)
                {
                  sub_230D48880((v87 > 1), v88 + 1, 1);
                }

                *(v69 + 16) = v88 + 1;
                v89 = v69 + 16 * v88;
                *(v89 + 32) = v86;
                *(v89 + 40) = v20;
                if (v68 == v104)
                {

                  *&v108[0] = v69;
                  v90 = sub_230E68FF0();
                  v92 = v91;

                  *&v108[0] = 0;
                  *(&v108[0] + 1) = 0xE000000000000000;
                  sub_230E69540();
                  MEMORY[0x23191DA00](0x4920545245534E49, 0xEC000000204F544ELL);
                  MEMORY[0x23191DA00](v100, v101);
                  MEMORY[0x23191DA00](10272, 0xE200000000000000);
                  MEMORY[0x23191DA00](v96, v97);

                  MEMORY[0x23191DA00](0x5345554C41562029, 0xEA00000000002820);
                  MEMORY[0x23191DA00](v98, v99);

                  MEMORY[0x23191DA00](0x4E4F43204E4F2029, 0xEE00285443494C46);
                  MEMORY[0x23191DA00](v95, v94);

                  MEMORY[0x23191DA00](0xD000000000000010, 0x8000000230E81790);
                  MEMORY[0x23191DA00](v90, v92);

                  return *&v108[0];
                }

                v71 = v68 + 1;
                if (v68 >= *(v106 + 16))
                {
                  goto LABEL_68;
                }
              }
            }

            goto LABEL_68;
          }

          *&v109 = 0;
          *(&v109 + 1) = 0xE000000000000000;
          sub_230E69540();

          *&v109 = 0xD000000000000016;
          *(&v109 + 1) = 0x8000000230E817B0;
        }

        else
        {

          *&v109 = 0;
          *(&v109 + 1) = 0xE000000000000000;
          sub_230E69540();

          strcpy(&v109, "INSERT INTO ");
          BYTE13(v109) = 0;
          HIWORD(v109) = -5120;
        }

        MEMORY[0x23191DA00](v100, v101);
        MEMORY[0x23191DA00](10272, 0xE200000000000000);
        MEMORY[0x23191DA00](v96, v97);

        MEMORY[0x23191DA00](0x5345554C41562029, 0xEA00000000002820);
        MEMORY[0x23191DA00](v98, v99);

        MEMORY[0x23191DA00](41, 0xE100000000000000);
        return v109;
      }

      goto LABEL_8;
    }

    v23 += 88;
    ++v24;
    if (v17 == v19)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
  MEMORY[0x23191E910](v20);

  __break(1u);
  return result;
}