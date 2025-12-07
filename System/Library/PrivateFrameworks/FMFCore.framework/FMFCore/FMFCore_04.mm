void sub_24A3D2210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A4AB710();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v10 = sub_24A4AB630();
  sub_24A378E18(v10, qword_27EF4E260);
  v11 = sub_24A4AB600();
  v12 = sub_24A4ABCE0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_24A37BD58(0xD000000000000014, 0x800000024A4AF5D0, v19);
    _os_log_impl(&dword_24A376000, v11, v12, "FMFRefreshController: refreshTimerFired from %s", v13, 0xCu);
    sub_24A37EEE0(v14);
    MEMORY[0x24C219130](v14, -1, -1);
    MEMORY[0x24C219130](v13, -1, -1);
  }

  v15 = *(a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_refreshQueue);
  *v9 = v15;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v16 = v15;
  LOBYTE(v15) = sub_24A4AB730();
  v17 = (*(v7 + 8))(v9, v6);
  if (v15)
  {
    v18 = MEMORY[0x24C2189A0](v17);
    sub_24A3C1548(a1, a2, a3);
    objc_autoreleasePoolPop(v18);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24A3D2470()
{
  v1 = sub_24A4AB690();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A4AB6E0();
  v5 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *(v0 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_refreshQueue);
  aBlock[4] = sub_24A3C1338;
  v14 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D85A00;
  v8 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v12 = MEMORY[0x277D84F90];
  sub_24A37EF8C(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v7, v4, v8);
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v11);
}

void sub_24A3D2718()
{
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v0 = sub_24A4AB630();
  sub_24A378E18(v0, qword_27EF4E260);
  oslog = sub_24A4AB600();
  v1 = sub_24A4ABCE0();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_24A376000, oslog, v1, "FMFRefreshController: refresh request completed after timer", v2, 2u);
    MEMORY[0x24C219130](v2, -1, -1);
  }
}

uint64_t sub_24A3D283C(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v10 = sub_24A4AB690();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24A4AB6E0();
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 || !a1)
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v22 = sub_24A4AB630();
    sub_24A378E18(v22, qword_27EF4E260);
    v23 = a2;
    v24 = sub_24A4AB600();
    v25 = sub_24A4ABCE0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      aBlock[0] = v27;
      *v26 = 136315138;
      v36 = a2;
      v28 = a2;
      sub_24A3C9CEC(&qword_27EF3F2D8, &qword_24A4B7C60);
      v29 = sub_24A4AB870();
      v31 = sub_24A37BD58(v29, v30, aBlock);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_24A376000, v24, v25, "FMFRefreshController: refreshClientRequest completed with error: %s", v26, 0xCu);
      sub_24A37EEE0(v27);
      MEMORY[0x24C219130](v27, -1, -1);
      MEMORY[0x24C219130](v26, -1, -1);
    }

    return a3(0);
  }

  else
  {
    v32 = *(a5 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_refreshQueue);
    v33 = v16;
    v34 = v15;
    v19 = swift_allocObject();
    v19[2] = a5;
    v19[3] = a1;
    v19[4] = a3;
    v19[5] = a4;
    aBlock[4] = sub_24A3D5838;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A388564;
    aBlock[3] = &unk_285D85A78;
    v20 = _Block_copy(aBlock);
    swift_retain_n();

    sub_24A4AB6B0();
    v36 = MEMORY[0x277D84F90];
    sub_24A37EF8C(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v18, v13, v20);
    _Block_release(v20);

    (*(v11 + 8))(v13, v10);
    (*(v33 + 8))(v18, v34);
  }
}

uint64_t sub_24A3D2C8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = sub_24A4AAAD0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC7FMFCore20FMFRefreshController_firstRefreshCompleted;
  if ((*(a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_firstRefreshCompleted) & 1) == 0)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_24A43DFE0();
      swift_unknownObjectRelease();
    }

    *(a1 + v10) = 1;
  }

  sub_24A3BB91C(a2);
  sub_24A4AAAC0();
  v11 = OBJC_IVAR____TtC7FMFCore20FMFRefreshController_lastRefreshTime;
  swift_beginAccess();
  (*(v7 + 40))(a1 + v11, v9, v6);
  swift_endAccess();
  v12 = OBJC_IVAR____TtC7FMFCore20FMFRefreshController_tapContexts;
  swift_beginAccess();
  v13 = MEMORY[0x277D84F90];
  *(a1 + v12) = MEMORY[0x277D84F90];

  v14 = sub_24A3A424C(v13);
  v15 = OBJC_IVAR____TtC7FMFCore20FMFRefreshController_liveSessionStatistics;
  swift_beginAccess();
  *(a1 + v15) = v14;

  v16 = sub_24A3A424C(v13);
  v17 = OBJC_IVAR____TtC7FMFCore20FMFRefreshController_legacyFallbackData;
  swift_beginAccess();
  *(a1 + v17) = v16;

  sub_24A3AE1EC(*(a1 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_callbackInterval));
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v18 = sub_24A4AB630();
  sub_24A378E18(v18, qword_27EF4E260);
  v19 = sub_24A4AB600();
  v20 = sub_24A4ABCB0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_24A376000, v19, v20, "FMFRefreshController: refreshClientRequest completed", v21, 2u);
    MEMORY[0x24C219130](v21, -1, -1);
  }

  return a3(1);
}

uint64_t sub_24A3D2F50(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24A4AB690();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24A4AB6E0();
  v12 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v4 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_refreshQueue);
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  *(v15 + 24) = a1;
  *(v15 + 32) = a2;
  *(v15 + 40) = a3;
  aBlock[4] = sub_24A3D581C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D859D8;
  v16 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v20 = MEMORY[0x277D84F90];
  sub_24A37EF8C(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v14, v11, v16);
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v19);
}

void sub_24A3D3230(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a4;
  v8 = OBJC_IVAR____TtC7FMFCore20FMFRefreshController_liveSessionStatistics;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a1 + v8);
  *(a1 + v8) = 0x8000000000000000;
  sub_24A430334(v4, a2, a3, isUniquelyReferenced_nonNull_native);
  *(a1 + v8) = v15;
  swift_endAccess();
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v10 = sub_24A4AB630();
  sub_24A378E18(v10, qword_27EF4E260);

  v11 = sub_24A4AB600();
  v12 = sub_24A4ABCE0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16[0] = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_24A37BD58(a2, a3, v16);
    *(v13 + 12) = 1024;
    *(v13 + 14) = v4 & 1;
    _os_log_impl(&dword_24A376000, v11, v12, "FMFRefreshController: appendLiveSessionInformation, friendID: %s, successfulLive: %{BOOL}d", v13, 0x12u);
    sub_24A37EEE0(v14);
    MEMORY[0x24C219130](v14, -1, -1);
    MEMORY[0x24C219130](v13, -1, -1);
  }
}

uint64_t sub_24A3D33F4(uint64_t a1, char a2)
{
  v5 = sub_24A4AB690();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24A4AB6E0();
  v9 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *(v2 + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_refreshQueue);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v2;
  *(v12 + 32) = a2;
  aBlock[4] = sub_24A3D5810;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D85988;
  v13 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v17 = MEMORY[0x277D84F90];
  sub_24A37EF8C(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v11, v8, v13);
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v16);
}

void sub_24A3D36C8(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return;
  }

  v5 = OBJC_IVAR____TtC7FMFCore20FMFRefreshController_legacyFallbackData;
  v29 = a3 & 1;
  for (i = (a1 + 40); ; i += 2)
  {
    v11 = *(i - 1);
    v10 = *i;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(a2 + v5);
    *(a2 + v5) = 0x8000000000000000;
    v14 = sub_24A39B2C8(v11, v10);
    v16 = v13[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      break;
    }

    v20 = v15;
    if (v13[3] < v19)
    {
      sub_24A4A48D4(v19, isUniquelyReferenced_nonNull_native);
      v14 = sub_24A39B2C8(v11, v10);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_22;
      }

LABEL_10:
      if (v20)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v22 = v14;
    sub_24A4A84C0();
    v14 = v22;
    if (v20)
    {
LABEL_11:
      *(v13[7] + v14) = v29;
      goto LABEL_15;
    }

LABEL_13:
    v13[(v14 >> 6) + 8] |= 1 << v14;
    v23 = (v13[6] + 16 * v14);
    *v23 = v11;
    v23[1] = v10;
    *(v13[7] + v14) = v29;
    v24 = v13[2];
    v18 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v18)
    {
      goto LABEL_21;
    }

    v13[2] = v25;

LABEL_15:
    *(a2 + v5) = v13;
    swift_endAccess();
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v26 = sub_24A4AB630();
    sub_24A378E18(v26, qword_27EF4E260);

    v27 = sub_24A4AB600();
    v28 = sub_24A4ABCE0();

    if (os_log_type_enabled(v27, v28))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v30[0] = v8;
      *v7 = 136315394;
      v9 = sub_24A37BD58(v11, v10, v30);

      *(v7 + 4) = v9;
      *(v7 + 12) = 1024;
      *(v7 + 14) = v29;
      _os_log_impl(&dword_24A376000, v27, v28, "FMFRefreshController: appendLiveSessionInformation, friendID: %s, didFallback: %{BOOL}d", v7, 0x12u);
      sub_24A37EEE0(v8);
      MEMORY[0x24C219130](v8, -1, -1);
      MEMORY[0x24C219130](v7, -1, -1);
    }

    else
    {
    }

    if (!--v3)
    {
      return;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  sub_24A4AC2B0();
  __break(1u);
}

uint64_t sub_24A3D39C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[179] = a4;
  v5 = sub_24A4AB220();
  v4[185] = v5;
  v4[191] = *(v5 - 8);
  v4[197] = swift_task_alloc();
  v4[203] = swift_task_alloc();
  sub_24A3C9CEC(&qword_27EF3F2E0, &qword_24A4BACE0);
  v4[209] = swift_task_alloc();
  v4[210] = swift_task_alloc();
  v6 = type metadata accessor for FMFIntermediateFriend(0);
  v4[211] = v6;
  v4[212] = *(v6 - 8);
  v4[213] = swift_task_alloc();
  v4[214] = swift_task_alloc();
  v4[215] = swift_task_alloc();
  v4[216] = swift_task_alloc();
  v4[217] = swift_task_alloc();
  v4[218] = swift_task_alloc();
  v7 = sub_24A4AB1E0();
  v4[219] = v7;
  v4[220] = *(v7 - 8);
  v4[221] = swift_task_alloc();
  v4[222] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A3D3BD4, 0, 0);
}

uint64_t sub_24A3D3BD4()
{

  sub_24A3C9CEC(&qword_27EF3F2E8, &qword_24A4B4F80);
  swift_asyncLet_begin();

  swift_asyncLet_begin();

  return MEMORY[0x282200930](v0 + 16, v0 + 1336, sub_24A3D3CBC, v0 + 1296);
}

uint64_t sub_24A3D3CBC()
{
  *(v1 + 1784) = v0;
  if (v0)
  {
    return MEMORY[0x282200920](v1 + 656, v1 + 1384, sub_24A3D4B0C, v1 + 1344);
  }

  else
  {
    return MEMORY[0x2822009F8](sub_24A3D3D00, 0, 0);
  }
}

uint64_t sub_24A3D3D00()
{
  v1 = v0[167];
  v46 = *(v1 + 16);
  if (v46)
  {
    v41 = v0[217];
    v2 = v0[211];
    v43 = v1 + ((*(v0[220] + 80) + 32) & ~*(v0[220] + 80));
    v44 = v0[220];
    v42 = (v0[191] + 8);
    v40 = v0[212];

    v4 = 0;
    v5 = MEMORY[0x277D84F90];
    v45 = v3;
    while (v4 < *(v3 + 16))
    {
      v6 = v0[222];
      v7 = v0[219];
      (*(v44 + 16))(v6, v43 + *(v44 + 72) * v4, v7);
      sub_24A4AB1D0();
      (*(v44 + 8))(v6, v7);
      v8 = sub_24A4AB210();
      if (v9)
      {
        v10 = v0[217];
        v47 = v0[210];
        v11 = v0[203];
        v12 = v0[185];
        v13 = v2[16];
        *v10 = v8;
        *(v41 + 8) = v9;
        *(v41 + 16) = 0;
        *(v41 + 24) = 0;
        *(v41 + 32) = 0;
        sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
        v14 = v5;
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_24A4B4E10;
        *(v15 + 32) = sub_24A4AB1F0();
        *(v15 + 40) = v16;
        (*v42)(v11, v12);
        *(v41 + 40) = v15;
        *(v41 + 48) = 0u;
        *(v41 + 64) = 0u;
        v17 = v2[10];
        v18 = sub_24A4AAAD0();
        v19 = *(*(v18 - 8) + 56);
        v19(v10 + v17, 1, 1, v18);
        v19(v10 + v2[11], 1, 1, v18);
        v19(v10 + v2[12], 1, 1, v18);
        v5 = v14;
        *(v10 + v2[13]) = 2;
        *(v10 + v2[14]) = 1;
        *(v10 + v2[15]) = 1;
        *(v10 + v13) = 2;
        *(v10 + v2[17]) = 0;
        sub_24A3D5A68(v10, v47);
        v20 = 0;
      }

      else
      {
        (*v42)(v0[203], v0[185]);
        v20 = 1;
      }

      v21 = v0[211];
      v22 = v0[210];
      (*(v40 + 56))(v22, v20, 1, v21);
      if ((*(v40 + 48))(v22, 1, v21) == 1)
      {
        sub_24A37EF2C(v0[210], &qword_27EF3F2E0, &qword_24A4BACE0);
        if (qword_27EF3EBF8 != -1)
        {
          swift_once();
        }

        v23 = sub_24A4AB630();
        sub_24A378E18(v23, qword_27EF4E260);
        v24 = sub_24A4AB600();
        v25 = sub_24A4ABCC0();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&dword_24A376000, v24, v25, "FMFRefreshController: failed to create following friend object!", v26, 2u);
          MEMORY[0x24C219130](v26, -1, -1);
        }
      }

      else
      {
        v27 = v0[218];
        v28 = v0[216];
        sub_24A3D5A68(v0[210], v27);
        sub_24A382A04(v27, v28);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_24A3EDA0C(0, v5[2] + 1, 1, v5);
        }

        v30 = v5[2];
        v29 = v5[3];
        if (v30 >= v29 >> 1)
        {
          v5 = sub_24A3EDA0C((v29 > 1), v30 + 1, 1, v5);
        }

        v31 = v0[216];
        sub_24A382A68(v0[218]);
        v5[2] = v30 + 1;
        sub_24A3D5A68(v31, v5 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v30);
      }

      ++v4;
      v3 = v45;
      if (v46 == v4)
      {

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_32:
    swift_once();
    goto LABEL_22;
  }

  v5 = MEMORY[0x277D84F90];
LABEL_21:
  if (qword_27EF3EBF8 != -1)
  {
    goto LABEL_32;
  }

LABEL_22:
  v32 = sub_24A4AB630();
  v0[224] = sub_24A378E18(v32, qword_27EF4E260);

  v33 = sub_24A4AB600();
  v34 = sub_24A4ABCE0();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 134217984;
    *(v35 + 4) = v5[2];

    _os_log_impl(&dword_24A376000, v33, v34, "FMFRefreshController: fmld returned %ld following", v35, 0xCu);
    MEMORY[0x24C219130](v35, -1, -1);
  }

  else
  {
  }

  v0[225] = OBJC_IVAR____TtC7FMFCore20FMFRefreshController_dataManager;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    v38 = swift_task_alloc();
    *(v38 + 16) = v5;
    *(v38 + 24) = v37;
    sub_24A4ABD70();
  }

  else
  {
  }

  return MEMORY[0x282200930](v0 + 82, v0 + 173, sub_24A3D4350, v0 + 180);
}

uint64_t sub_24A3D4350()
{
  *(v1 + 1808) = v0;
  if (v0)
  {
    return MEMORY[0x282200920](v1 + 656, v1 + 1384, sub_24A3D4CE8, v1 + 1488);
  }

  else
  {
    return MEMORY[0x2822009F8](sub_24A3D4394, 0, 0);
  }
}

uint64_t sub_24A3D4394()
{
  v1 = v0[173];
  v46 = *(v1 + 16);
  if (v46)
  {
    v41 = v0[214];
    v2 = v0[211];
    v43 = v1 + ((*(v0[220] + 80) + 32) & ~*(v0[220] + 80));
    v44 = v0[220];
    v42 = (v0[191] + 8);
    v40 = v0[212];

    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v45 = v3;
    while (v7 < *(v3 + 16))
    {
      v9 = v0[221];
      v10 = v0[219];
      (*(v44 + 16))(v9, v43 + *(v44 + 72) * v7, v10);
      sub_24A4AB1D0();
      (*(v44 + 8))(v9, v10);
      v11 = sub_24A4AB210();
      if (v12)
      {
        v13 = v0[214];
        v47 = v0[209];
        v14 = v0[197];
        v15 = v0[185];
        v16 = v2[16];
        *v13 = v11;
        *(v41 + 16) = 0;
        *(v41 + 24) = 0;
        *(v41 + 8) = v12;
        sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_24A4B4E10;
        *(v17 + 32) = sub_24A4AB1F0();
        *(v17 + 40) = v18;
        (*v42)(v14, v15);
        *(v41 + 32) = v17;
        *(v41 + 40) = 0u;
        *(v41 + 56) = 0u;
        *(v41 + 72) = 0;
        v19 = v2[10];
        v20 = sub_24A4AAAD0();
        v21 = *(*(v20 - 8) + 56);
        v21(v13 + v19, 1, 1, v20);
        v21(v13 + v2[11], 1, 1, v20);
        v21(v13 + v2[12], 1, 1, v20);
        *(v13 + v2[13]) = 2;
        *(v13 + v2[14]) = 1;
        *(v13 + v2[15]) = 1;
        *(v13 + v16) = 2;
        *(v13 + v2[17]) = 0;
        sub_24A3D5A68(v13, v47);
        v22 = 0;
      }

      else
      {
        (*v42)(v0[197], v0[185]);
        v22 = 1;
      }

      v23 = v0[211];
      v24 = v0[209];
      (*(v40 + 56))(v24, v22, 1, v23);
      if ((*(v40 + 48))(v24, 1, v23) == 1)
      {
        sub_24A37EF2C(v0[209], &qword_27EF3F2E0, &qword_24A4BACE0);
        v25 = sub_24A4AB600();
        v26 = sub_24A4ABCC0();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_24A376000, v25, v26, "FMFRefreshController: failed to create followers friend object!", v27, 2u);
          MEMORY[0x24C219130](v27, -1, -1);
        }
      }

      else
      {
        v28 = v0[215];
        v29 = v0[213];
        sub_24A3D5A68(v0[209], v28);
        sub_24A382A04(v28, v29);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_24A3EDA0C(0, v8[2] + 1, 1, v8);
        }

        v31 = v8[2];
        v30 = v8[3];
        if (v31 >= v30 >> 1)
        {
          v8 = sub_24A3EDA0C((v30 > 1), v31 + 1, 1, v8);
        }

        v32 = v0[213];
        sub_24A382A68(v0[215]);
        v8[2] = v31 + 1;
        sub_24A3D5A68(v32, v8 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v31);
      }

      ++v7;
      v3 = v45;
      if (v46 == v7)
      {

        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_19:

    v33 = sub_24A4AB600();
    v34 = sub_24A4ABCE0();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 134217984;
      *(v35 + 4) = v8[2];

      _os_log_impl(&dword_24A376000, v33, v34, "FMFRefreshController: fmld returned %ld followers", v35, 0xCu);
      MEMORY[0x24C219130](v35, -1, -1);
    }

    else
    {
    }

    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v37 = Strong;
      v38 = swift_task_alloc();
      *(v38 + 16) = v8;
      *(v38 + 24) = v37;
      sub_24A4ABD70();
    }

    else
    {
    }

    if ((*(v0[179] + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_firstRefreshCompleted) & 1) == 0 && swift_unknownObjectWeakLoadStrong())
    {
      sub_24A43DFE0();
      swift_unknownObjectRelease();
    }

    v5 = sub_24A3D4988;
    v3 = (v0 + 82);
    v4 = v0 + 173;
    v6 = v0 + 198;
  }

  return MEMORY[0x282200920](v3, v4, v5, v6);
}

uint64_t sub_24A3D49E0()
{
  *(*(v0 + 1432) + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_firstRefreshCompleted) = 1;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24A3D4B64()
{
  v1 = v0[223];
  if (*(v0[179] + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_firstRefreshCompleted) != 1 && swift_unknownObjectWeakLoadStrong())
  {
    v2 = v1;
    sub_24A43DAE8(v1);

    swift_unknownObjectRelease();
  }

  *(v0[179] + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_firstRefreshCompleted) = 1;

  v3 = v0[1];

  return v3();
}

uint64_t sub_24A3D4D40()
{
  v1 = v0[226];
  if (*(v0[179] + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_firstRefreshCompleted) != 1 && swift_unknownObjectWeakLoadStrong())
  {
    v2 = v1;
    sub_24A43DAE8(v1);

    swift_unknownObjectRelease();
  }

  *(v0[179] + OBJC_IVAR____TtC7FMFCore20FMFRefreshController_firstRefreshCompleted) = 1;

  v3 = v0[1];

  return v3();
}

uint64_t sub_24A3D4EC4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24A3D4EE4, 0, 0);
}

uint64_t sub_24A3D4EE4()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_24A3D4F7C;

  return MEMORY[0x28215FB60]();
}

uint64_t sub_24A3D4F7C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 40) = a1;

    return MEMORY[0x2822009F8](sub_24A3D5B68, 0, 0);
  }
}

uint64_t sub_24A3D50C8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24A3D50E8, 0, 0);
}

uint64_t sub_24A3D50E8()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_24A3D5180;

  return MEMORY[0x28215FA40]();
}

uint64_t sub_24A3D5180(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 40) = a1;

    return MEMORY[0x2822009F8](sub_24A3D52CC, 0, 0);
  }
}

void sub_24A3D52F0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7FMFCore20FMFRefreshController_tapContexts;
  swift_beginAccess();
  v5 = *(a2 + v4);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v4) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_24A3EDA34(0, v5[2] + 1, 1, v5);
    *(a2 + v4) = v5;
  }

  v8 = v5[2];
  v7 = v5[3];
  if (v8 >= v7 >> 1)
  {
    v5 = sub_24A3EDA34((v7 > 1), v8 + 1, 1, v5);
  }

  v5[2] = v8 + 1;
  v5[v8 + 4] = a1;
  *(a2 + v4) = v5;
  swift_endAccess();
  sub_24A3AE1EC(0.0);
}

uint64_t sub_24A3D5408(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24A4AB690();
  v21 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24A4AB6E0();
  v7 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v10 = sub_24A4AB630();
  sub_24A378E18(v10, qword_27EF4E260);

  v11 = sub_24A4AB600();
  v12 = sub_24A4ABCB0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = sub_24A4AB760();
    *(v13 + 4) = v15;
    *v14 = v15;
    _os_log_impl(&dword_24A376000, v11, v12, "FMFRefreshController: connectionHandler didReceive message: %@", v13, 0xCu);
    sub_24A37EF2C(v14, &qword_27EF403C0, &unk_24A4B5050);
    MEMORY[0x24C219130](v14, -1, -1);
    MEMORY[0x24C219130](v13, -1, -1);
  }

  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = v2;
  aBlock[4] = sub_24A3D5808;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D85938;
  v17 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v22 = MEMORY[0x277D84F90];
  sub_24A37EF8C(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v9, v6, v17);
  _Block_release(v17);
  (*(v21 + 8))(v6, v4);
  (*(v7 + 8))(v9, v20);
}

uint64_t sub_24A3D5844(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24A3A35A8;

  return sub_24A3D39C4(a1, v4, v5, v6);
}

uint64_t sub_24A3D58F8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24A3A357C;

  return sub_24A3D4EC4(a1, v1);
}

uint64_t sub_24A3D5994(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24A3A35A8;

  return sub_24A3D50C8(a1, v1);
}

uint64_t sub_24A3D5A68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMFIntermediateFriend(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A3D5ACC(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 16));
  a2(*(v3 + 32));

  return MEMORY[0x2821FE8E8](v3, a3, 7);
}

void *FMLocationShiftingRequest.__allocating_init(identifier:location:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a3;
  result[3] = a1;
  result[4] = a2;
  return result;
}

uint64_t FMLocationShifter.__allocating_init()()
{
  v0 = swift_allocObject();
  FMLocationShifter.init()();
  return v0;
}

void sub_24A3D5C38(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v27 = sub_24A4AB6A0();
  v8 = *(v27 - 8);
  *&v9 = MEMORY[0x28223BE20](v27).n128_u64[0];
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(a1 + 16);
  v12 = *(a2 + 16);
  [v12 coordinate];
  v14 = v13;
  [v12 coordinate];
  v16 = v15;
  [v12 horizontalAccuracy];
  v18 = v17;
  v19 = swift_allocObject();
  v19[2] = a2;
  v19[3] = a3;
  v19[4] = a4;
  v33 = sub_24A3D6728;
  v34 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v31 = sub_24A3D6360;
  v32 = &unk_285D85CD0;
  v20 = _Block_copy(&aBlock);

  v21 = a4;

  v22 = swift_allocObject();
  v22[2] = a3;
  v22[3] = a2;
  v22[4] = v21;
  v33 = sub_24A3D677C;
  v34 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v31 = sub_24A3D65E0;
  v32 = &unk_285D85D20;
  v23 = _Block_copy(&aBlock);

  v24 = v21;

  sub_24A3785D4();
  v25 = v27;
  (*(v8 + 104))(v11, *MEMORY[0x277D851C8], v27);
  v26 = sub_24A4ABDA0();
  (*(v8 + 8))(v11, v25);
  [v28 shiftCoordinate:v20 accuracy:0 withCompletionHandler:v23 mustGoToNetworkCallback:v26 errorHandler:v14 callbackQueue:{v16, v18}];

  _Block_release(v23);
  _Block_release(v20);
}

uint64_t sub_24A3D5F28(void *a1, uint64_t a2, void *a3, double a4, double a5, double a6)
{
  v12 = sub_24A4AAAD0();
  v13 = *(v12 - 8);
  *&v14 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v16 = &v49[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[2];
  [v17 altitude];
  v19 = v18;
  [v17 verticalAccuracy];
  v21 = v20;
  [v17 course];
  v23 = v22;
  [v17 speed];
  v25 = v24;
  v26 = [v17 timestamp];
  sub_24A4AAAA0();

  v27 = objc_allocWithZone(MEMORY[0x277CE41F8]);
  v28 = sub_24A4AAA60();
  v29 = [v27 initWithCoordinate:v28 altitude:a4 horizontalAccuracy:a5 verticalAccuracy:v19 course:a6 speed:v21 timestamp:{v23, v25}];

  (*(v13 + 8))(v16, v12);
  [v29 setReferenceFrame_];
  v30 = a1[3];
  v31 = a1[4];
  type metadata accessor for FMLocationShiftingRequest();
  v32 = swift_allocObject();
  v32[2] = v29;
  v32[3] = v30;
  v32[4] = v31;
  swift_beginAccess();

  v33 = v29;

  MEMORY[0x24C217E50](v34);
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_24A4ABAA0();
  }

  sub_24A4ABAE0();
  swift_endAccess();
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v35 = sub_24A4AB630();
  sub_24A378E18(v35, qword_27EF4E260);
  v36 = v33;

  v37 = v17;
  v38 = sub_24A4AB600();
  v39 = sub_24A4ABCE0();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v48 = a3;
    v49[0] = v42;
    v43 = v42;
    *v40 = 136315650;
    *(v40 + 4) = sub_24A37BD58(v30, v31, v49);
    *(v40 + 12) = 2112;
    *(v40 + 14) = v36;
    *(v40 + 22) = 2112;
    *(v40 + 24) = v37;
    *v41 = v36;
    v41[1] = v37;
    v44 = v36;
    v45 = v37;
    _os_log_impl(&dword_24A376000, v38, v39, "FMLocationShifter: shifting completed %s newLocation: %@ oldLocation: %@", v40, 0x20u);
    sub_24A3C9CEC(&qword_27EF403C0, &unk_24A4B5050);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v41, -1, -1);
    sub_24A37EEE0(v43);
    v46 = v43;
    a3 = v48;
    MEMORY[0x24C219130](v46, -1, -1);
    MEMORY[0x24C219130](v40, -1, -1);
  }

  [a3 signal];
}

uint64_t sub_24A3D6360(uint64_t a1, double a2, double a3, double a4)
{
  v7 = *(a1 + 32);

  v7(v8, a2, a3, a4);
}

id sub_24A3D63CC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v7 = sub_24A4AB630();
  sub_24A378E18(v7, qword_27EF4E260);
  v8 = a1;
  v9 = sub_24A4AB600();
  v10 = sub_24A4ABCC0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19[0] = v12;
    *v11 = 136315138;
    v13 = a1;
    sub_24A3C9CEC(&qword_27EF3F2D8, &qword_24A4B7C60);
    v14 = sub_24A4AB870();
    v16 = sub_24A37BD58(v14, v15, v19);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_24A376000, v9, v10, "FMLocationShifter: shifting request error %s", v11, 0xCu);
    sub_24A37EEE0(v12);
    MEMORY[0x24C219130](v12, -1, -1);
    MEMORY[0x24C219130](v11, -1, -1);
  }

  swift_beginAccess();

  MEMORY[0x24C217E50](v17);
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_24A4ABAA0();
  }

  sub_24A4ABAE0();
  swift_endAccess();
  return [a4 signal];
}

void sub_24A3D65E0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t FMLocationShifter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24A3D6734()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A3D67B0()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = v0[41];
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = v0[40];
  v3._countAndFlagsBits = sub_24A4AB880();
  FMFDefaultLabel.init(rawValue:)(v3);
  if (__src[0] == 5)
  {

    v4 = v2;
    v5 = v1;
  }

  else
  {
    v4 = FMFDefaultLabel.localizedLabel.getter();
    v5 = v6;
  }

  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
LABEL_10:
    memcpy(__src, __dst, sizeof(__src));
    if (sub_24A3D77F8(__src) == 1)
    {
      return 0;
    }

    memcpy(v11, __src, sizeof(v11));
    return FMFAddress.displayAddress.getter();
  }

  v8._countAndFlagsBits = sub_24A4AB880();
  FMFDefaultLabel.init(rawValue:)(v8);
  if (__src[0] != 5)
  {
    return FMFDefaultLabel.localizedLabel.getter();
  }

  return v2;
}

uint64_t sub_24A3D690C(uint64_t a1)
{
  sub_24A4AB8F0();
}

unint64_t sub_24A3D6A38@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A3D7908(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24A3D6A68(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x73736572646461;
  v5 = 0xE600000000000000;
  v6 = 0x736C6562616CLL;
  if (v2 != 5)
  {
    v6 = 0x756363616E497369;
    v5 = 0xEC00000065746172;
  }

  v7 = 0x800000024A4AE0B0;
  v8 = 0xD000000000000012;
  if (v2 != 3)
  {
    v8 = 0x6D617473656D6974;
    v7 = 0xE900000000000070;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x64757469676E6F6CLL;
  v10 = 0xE900000000000065;
  if (v2 != 1)
  {
    v9 = 0x656475746974616CLL;
    v10 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v10;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_24A3D6B5C()
{
  v1 = *v0;
  v2 = 0x73736572646461;
  v3 = 0x736C6562616CLL;
  if (v1 != 5)
  {
    v3 = 0x756363616E497369;
  }

  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0x6D617473656D6974;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x64757469676E6F6CLL;
  if (v1 != 1)
  {
    v5 = 0x656475746974616CLL;
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

unint64_t sub_24A3D6C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A3D7908(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A3D6C74(uint64_t a1)
{
  v2 = sub_24A3B4A78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A3D6CB0(uint64_t a1)
{
  v2 = sub_24A3B4A78();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_24A3D6CEC(void *a1)
{
  v4 = sub_24A3C9CEC(&qword_27EF3F318, &qword_24A4B5240);
  v11 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  memcpy(v15, v1, 0x130uLL);
  v7 = v1[38];
  v10 = v1[43];
  sub_24A37EACC(a1, a1[3]);
  sub_24A3B4A78();
  sub_24A4AC3D0();
  v8 = [v7 timestamp];
  if (v8)
  {
    v9 = v8;
    memcpy(v14, v15, sizeof(v14));
    v15[327] = 0;
    sub_24A3C34E4(v15, v13);
    sub_24A3C9CEC(&unk_27EF404E0, &unk_24A4B5230);
    sub_24A3D7238();
    sub_24A4AC1F0();
    if (v2)
    {

      memcpy(v13, v14, sizeof(v13));
      sub_24A37EF2C(v13, &unk_27EF404E0, &unk_24A4B5230);
    }

    else
    {
      memcpy(v13, v14, sizeof(v13));
      sub_24A37EF2C(v13, &unk_27EF404E0, &unk_24A4B5230);
      [v7 coordinate];
      LOBYTE(v12) = 2;
      sub_24A4AC1D0();
      [v7 coordinate];
      LOBYTE(v12) = 1;
      sub_24A4AC1D0();
      [v7 horizontalAccuracy];
      LOBYTE(v12) = 3;
      sub_24A4AC1D0();
      [v9 fm_epoch];
      LOBYTE(v12) = 4;
      sub_24A4AC200();
      v12 = v10;
      v15[326] = 5;

      sub_24A3C9CEC(&qword_27EF3F330, &qword_24A4B5248);
      sub_24A3D7310();
      sub_24A4AC1F0();
    }

    (*(v11 + 8))(v6, v4);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_24A3D7088()
{
  result = qword_27EF3F310;
  if (!qword_27EF3F310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F310);
  }

  return result;
}

uint64_t sub_24A3D7114(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMFLabelledLocation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A3D7178(uint64_t a1)
{
  v2 = type metadata accessor for FMFLabelledLocation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A3D71D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMFLabelledLocation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24A3D7238()
{
  result = qword_27EF3F320;
  if (!qword_27EF3F320)
  {
    sub_24A3CBC9C(&unk_27EF404E0, &unk_24A4B5230);
    sub_24A3D72BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F320);
  }

  return result;
}

unint64_t sub_24A3D72BC()
{
  result = qword_27EF3F328;
  if (!qword_27EF3F328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F328);
  }

  return result;
}

unint64_t sub_24A3D7310()
{
  result = qword_27EF3F338;
  if (!qword_27EF3F338)
  {
    sub_24A3CBC9C(&qword_27EF3F330, &qword_24A4B5248);
    sub_24A3D73CC(&qword_27EF3F340, &qword_27EF3F348, &protocol conformance descriptor for FMFLabelledLocation, MEMORY[0x277D83948]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F338);
  }

  return result;
}

uint64_t sub_24A3D73CC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_24A3CBC9C(&qword_27EF3F118, &qword_24A4B4958);
    sub_24A3819E8(a2, type metadata accessor for FMFLabelledLocation, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24A3D7468(void *__src, void *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  v4 = *(__src + 38);
  v6 = *(__src + 40);
  v5 = *(__src + 41);
  v18 = *(__src + 43);
  memcpy(v27, a2, sizeof(v27));
  v7 = a2[38];
  v9 = a2[40];
  v8 = a2[41];
  v10 = a2[43];
  memcpy(__srca, __src, 0x130uLL);
  memcpy(&__srca[304], a2, 0x130uLL);
  memcpy(v28, __src, 0x130uLL);
  if (sub_24A3D77F8(v28) == 1)
  {
    memcpy(v23, a2, 0x130uLL);
    if (sub_24A3D77F8(v23) == 1)
    {
      memcpy(v24, __src, sizeof(v24));
      sub_24A3C34E4(__dst, v22);
      sub_24A3C34E4(v27, v22);
      sub_24A37EF2C(v24, &unk_27EF404E0, &unk_24A4B5230);
      goto LABEL_9;
    }

    sub_24A3C34E4(__dst, v24);
    sub_24A3C34E4(v27, v24);
LABEL_7:
    memcpy(v23, __srca, sizeof(v23));
    sub_24A37EF2C(v23, &qword_27EF3F350, &unk_24A4B5250);
    v11 = 0;
    return v11 & 1;
  }

  memcpy(v24, __src, sizeof(v24));
  memcpy(v22, __src, sizeof(v22));
  memcpy(v23, a2, 0x130uLL);
  if (sub_24A3D77F8(v23) == 1)
  {
    memcpy(v21, __src, sizeof(v21));
    sub_24A3C34E4(__dst, v20);
    sub_24A3C34E4(v27, v20);
    sub_24A3C34E4(v24, v20);
    sub_24A3D785C(v21);
    goto LABEL_7;
  }

  memcpy(v21, a2, sizeof(v21));
  v12 = _s7FMFCore10FMFAddressV2eeoiySbAC_ACtFZ_0(v22, v21);
  memcpy(v19, v21, sizeof(v19));
  sub_24A3C34E4(__dst, v20);
  sub_24A3C34E4(v27, v20);
  sub_24A3C34E4(v24, v20);
  sub_24A3D785C(v19);
  memcpy(v20, v22, sizeof(v20));
  sub_24A3D785C(v20);
  memcpy(v21, __src, sizeof(v21));
  sub_24A37EF2C(v21, &unk_27EF404E0, &unk_24A4B5230);
  if ((v12 & 1) == 0)
  {
LABEL_15:
    v11 = 0;
    return v11 & 1;
  }

LABEL_9:
  sub_24A3D7810();
  v13 = v4;
  v14 = v7;
  v15 = sub_24A4ABDB0();

  if ((v15 & 1) == 0)
  {
    goto LABEL_15;
  }

  if (v5)
  {
    if (v8)
    {
      if ((v6 != v9 || v5 != v8) && (sub_24A4AC270() & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_19;
    }

LABEL_17:

    v11 = 0;
    return v11 & 1;
  }

  if (v8)
  {
    goto LABEL_17;
  }

LABEL_19:
  v11 = (v18 | v10) == 0;
  if (v18 && v10)
  {

    v11 = sub_24A4155AC(v16, v10);
  }

  return v11 & 1;
}

uint64_t sub_24A3D77F8(uint64_t a1)
{
  v1 = *(a1 + 168);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_24A3D7810()
{
  result = qword_27EF3F358;
  if (!qword_27EF3F358)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF3F358);
  }

  return result;
}

unint64_t sub_24A3D78B4()
{
  result = qword_27EF3F370;
  if (!qword_27EF3F370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F370);
  }

  return result;
}

unint64_t sub_24A3D7908(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A4AC0C0();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24A3D7958(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_24A382670(*a1);
  v5 = v4;
  if (v3 == sub_24A382670(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A4AC270();
  }

  return v8 & 1;
}

uint64_t sub_24A3D79E0()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A382670(v1);
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A3D7A44(uint64_t a1)
{
  sub_24A382670(*v1);
  sub_24A4AB8F0();
}

uint64_t sub_24A3D7A98(uint64_t a1)
{
  v2 = *v1;
  sub_24A4AC360();
  sub_24A382670(v2);
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

unint64_t sub_24A3D7AF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A3D8B28(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_24A3D7B28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24A382670(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_24A3D7B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A3D8B28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A3D7B88(uint64_t a1)
{
  v2 = sub_24A382600();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A3D7BC8()
{
  v1 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  MEMORY[0x28223BE20](v1);
  v3 = &v22 - v2;
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_24A4ABF50();
  MEMORY[0x24C217D50](60, 0xE100000000000000);
  MEMORY[0x24C217D50](0xD000000000000015, 0x800000024A4B53A0);
  MEMORY[0x24C217D50](0x69746E656469203ALL, 0xEE00203A72656966);
  MEMORY[0x24C217D50](*v0, v0[1]);
  MEMORY[0x24C217D50](0x496E6F7372657020, 0xEF203A6873614864);
  v4 = v0[3];
  v22 = v0[2];
  v23 = v4;

  sub_24A3C9CEC(&unk_27EF3F4C0, &qword_24A4B7E60);
  v5 = sub_24A4AB870();
  MEMORY[0x24C217D50](v5);

  MEMORY[0x24C217D50](0xD000000000000018, 0x800000024A4AF800);
  v22 = v0[4];

  sub_24A3C9CEC(&qword_27EF3F3E0, &qword_24A4B54A0);
  v6 = sub_24A4AB870();
  MEMORY[0x24C217D50](v6);

  MEMORY[0x24C217D50](0xD00000000000001CLL, 0x800000024A4AF820);
  v22 = v0[5];

  v7 = sub_24A4AB870();
  MEMORY[0x24C217D50](v7);

  MEMORY[0x24C217D50](0xD000000000000019, 0x800000024A4AF840);
  v8 = v0[7];
  v22 = v0[6];
  v23 = v8;

  v9 = sub_24A4AB870();
  MEMORY[0x24C217D50](v9);

  MEMORY[0x24C217D50](0xD000000000000017, 0x800000024A4AF860);
  v10 = v0[9];
  v22 = v0[8];
  v23 = v10;

  v11 = sub_24A4AB870();
  MEMORY[0x24C217D50](v11);

  MEMORY[0x24C217D50](0x6465746164707520, 0xEC000000203A7441);
  v12 = type metadata accessor for FMFIntermediateFriend(0);
  sub_24A38CB20(v0 + v12[10], v3);
  v13 = sub_24A4AB870();
  MEMORY[0x24C217D50](v13);

  MEMORY[0x24C217D50](0x6465746165726320, 0xEC000000203A7441);
  sub_24A38CB20(v0 + v12[11], v3);
  v14 = sub_24A4AB870();
  MEMORY[0x24C217D50](v14);

  MEMORY[0x24C217D50](0x7845657261687320, 0xEF203A7365726970);
  sub_24A38CB20(v0 + v12[12], v3);
  v15 = sub_24A4AB870();
  MEMORY[0x24C217D50](v15);

  MEMORY[0x24C217D50](0xD000000000000012, 0x800000024A4AF880);
  LOBYTE(v22) = *(v0 + v12[13]);
  sub_24A3C9CEC(&qword_27EF3F408, &qword_24A4B54A8);
  v16 = sub_24A4AB870();
  MEMORY[0x24C217D50](v16);

  MEMORY[0x24C217D50](0xD00000000000001DLL, 0x800000024A4AF8A0);
  LOBYTE(v22) = *(v0 + v12[14]);
  v17 = sub_24A4AB870();
  MEMORY[0x24C217D50](v17);

  MEMORY[0x24C217D50](0xD000000000000021, 0x800000024A4AF8C0);
  LOBYTE(v22) = *(v0 + v12[15]);
  v18 = sub_24A4AB870();
  MEMORY[0x24C217D50](v18);

  MEMORY[0x24C217D50](0xD000000000000019, 0x800000024A4AF8F0);
  LOBYTE(v22) = *(v0 + v12[16]);
  v19 = sub_24A4AB870();
  MEMORY[0x24C217D50](v19);

  MEMORY[0x24C217D50](0xD000000000000013, 0x800000024A4AF910);
  v22 = *(v0 + v12[17]);

  v20 = sub_24A4AB870();
  MEMORY[0x24C217D50](v20);

  MEMORY[0x24C217D50](62, 0xE100000000000000);
  return v24;
}

uint64_t sub_24A3D80C0(void *a1, void *a2)
{
  v4 = sub_24A4AAAD0();
  v75 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v74 = &v67[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v67[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v67[-v10];
  MEMORY[0x28223BE20](v12);
  v14 = &v67[-v13];
  v15 = sub_24A3C9CEC(&qword_27EF3F3B8, &qword_24A4B5480);
  MEMORY[0x28223BE20](v15);
  v17 = &v67[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v20 = &v67[-v19];
  MEMORY[0x28223BE20](v21);
  v23 = &v67[-v22];
  if (*a1 != *a2 && (sub_24A4AC270() & 1) == 0)
  {
    goto LABEL_55;
  }

  v24 = a1[3];
  v25 = a2[3];
  if (v24)
  {
    if (!v25 || (a1[2] != a2[2] || v24 != v25) && (sub_24A4AC270() & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  else if (v25)
  {
    goto LABEL_55;
  }

  v26 = a1[4];
  v27 = a2[4];
  if (v26)
  {
    if (!v27 || (sub_24A38B37C(v26, v27) & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  else if (v27)
  {
    goto LABEL_55;
  }

  v28 = a1[5];
  v29 = a2[5];
  if (v28)
  {
    if (!v29 || (sub_24A38B37C(v28, v29) & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  else if (v29)
  {
    goto LABEL_55;
  }

  v30 = a1[7];
  v31 = a2[7];
  if (v30)
  {
    if (!v31 || (a1[6] != a2[6] || v30 != v31) && (sub_24A4AC270() & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  else if (v31)
  {
    goto LABEL_55;
  }

  v32 = a1[9];
  v33 = a2[9];
  if (v32)
  {
    if (!v33 || (a1[8] != a2[8] || v32 != v33) && (sub_24A4AC270() & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  else if (v33)
  {
    goto LABEL_55;
  }

  v70 = type metadata accessor for FMFIntermediateFriend(0);
  v34 = *(v15 + 48);
  v72 = v70[10];
  v73 = v34;
  sub_24A38CB20(v72 + a1, v23);
  sub_24A38CB20(v72 + a2, &v73[v23]);
  v35 = *(v75 + 48);
  v71 = v75 + 48;
  v72 = v35;
  if (v35(v23, 1, v4) == 1)
  {
    if (v72(&v73[v23], 1, v4) == 1)
    {
      sub_24A37EF2C(v23, &qword_27EF3F460, &unk_24A4B53B0);
      goto LABEL_41;
    }

LABEL_39:
    v36 = v23;
LABEL_54:
    sub_24A37EF2C(v36, &qword_27EF3F3B8, &qword_24A4B5480);
    goto LABEL_55;
  }

  sub_24A38CB20(v23, v14);
  if (v72(&v73[v23], 1, v4) == 1)
  {
    (*(v75 + 8))(v14, v4);
    goto LABEL_39;
  }

  (*(v75 + 32))(v74, &v73[v23], v4);
  sub_24A38CCBC(&qword_27EF3F3C0, MEMORY[0x277CC9598]);
  v68 = sub_24A4AB810();
  v37 = *(v75 + 8);
  v69 = v75 + 8;
  v73 = v37;
  (v37)(v74, v4);
  (v73)(v14, v4);
  sub_24A37EF2C(v23, &qword_27EF3F460, &unk_24A4B53B0);
  if ((v68 & 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_41:
  v38 = v70[11];
  v39 = *(v15 + 48);
  sub_24A38CB20(a1 + v38, v20);
  v73 = v39;
  sub_24A38CB20(a2 + v38, &v39[v20]);
  v40 = v72;
  if (v72(v20, 1, v4) == 1)
  {
    if (v40(&v73[v20], 1, v4) == 1)
    {
      sub_24A37EF2C(v20, &qword_27EF3F460, &unk_24A4B53B0);
      goto LABEL_48;
    }

    goto LABEL_46;
  }

  sub_24A38CB20(v20, v11);
  if (v40(&v73[v20], 1, v4) == 1)
  {
    (*(v75 + 8))(v11, v4);
LABEL_46:
    v36 = v20;
    goto LABEL_54;
  }

  v41 = v75;
  (*(v75 + 32))(v74, &v73[v20], v4);
  sub_24A38CCBC(&qword_27EF3F3C0, MEMORY[0x277CC9598]);
  LODWORD(v73) = sub_24A4AB810();
  v42 = *(v41 + 8);
  v42(v74, v4);
  v42(v11, v4);
  sub_24A37EF2C(v20, &qword_27EF3F460, &unk_24A4B53B0);
  if ((v73 & 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_48:
  v43 = v70[12];
  v44 = *(v15 + 48);
  sub_24A38CB20(a1 + v43, v17);
  sub_24A38CB20(a2 + v43, &v17[v44]);
  v45 = v72;
  if (v72(v17, 1, v4) == 1)
  {
    if (v45(&v17[v44], 1, v4) == 1)
    {
      sub_24A37EF2C(v17, &qword_27EF3F460, &unk_24A4B53B0);
      goto LABEL_58;
    }

    goto LABEL_53;
  }

  sub_24A38CB20(v17, v8);
  if (v45(&v17[v44], 1, v4) == 1)
  {
    (*(v75 + 8))(v8, v4);
LABEL_53:
    v36 = v17;
    goto LABEL_54;
  }

  v49 = v74;
  v48 = v75;
  (*(v75 + 32))(v74, &v17[v44], v4);
  sub_24A38CCBC(&qword_27EF3F3C0, MEMORY[0x277CC9598]);
  v50 = sub_24A4AB810();
  v51 = *(v48 + 8);
  v51(v49, v4);
  v51(v8, v4);
  sub_24A37EF2C(v17, &qword_27EF3F460, &unk_24A4B53B0);
  if ((v50 & 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_58:
  v52 = v70[13];
  v53 = *(a1 + v52);
  v54 = *(a2 + v52);
  if (v53 == 2)
  {
    if (v54 != 2)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v46 = 0;
    if (v54 == 2 || ((v54 ^ v53) & 1) != 0)
    {
      return v46 & 1;
    }
  }

  v55 = v70[14];
  v56 = *(a1 + v55);
  v57 = *(a2 + v55);
  if (v56 == 2)
  {
    if (v57 != 2)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v46 = 0;
    if (v57 == 2 || ((v57 ^ v56) & 1) != 0)
    {
      return v46 & 1;
    }
  }

  v58 = v70[15];
  v59 = *(a1 + v58);
  v60 = *(a2 + v58);
  if (v59 == 2)
  {
    if (v60 != 2)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v46 = 0;
    if (v60 == 2 || ((v60 ^ v59) & 1) != 0)
    {
      return v46 & 1;
    }
  }

  v61 = v70[16];
  v62 = *(a1 + v61);
  v63 = *(a2 + v61);
  if (v62 != 2)
  {
    v46 = 0;
    if (v63 == 2 || ((v63 ^ v62) & 1) != 0)
    {
      return v46 & 1;
    }

    goto LABEL_78;
  }

  if (v63 != 2)
  {
LABEL_55:
    v46 = 0;
    return v46 & 1;
  }

LABEL_78:
  v64 = v70[17];
  v65 = *(a1 + v64);
  v66 = *(a2 + v64);
  v46 = (v65 | v66) == 0;
  if (v65 && v66)
  {
    v46 = sub_24A38B37C(v65, v66);
  }

  return v46 & 1;
}

unint64_t sub_24A3D89D8()
{
  result = qword_27EF3F410;
  if (!qword_27EF3F410)
  {
    sub_24A3CBC9C(&qword_27EF3F408, &qword_24A4B54A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F410);
  }

  return result;
}

unint64_t sub_24A3D8A54()
{
  result = qword_27EF3F420;
  if (!qword_27EF3F420)
  {
    sub_24A3CBC9C(&qword_27EF3F418, &qword_24A4B54B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F420);
  }

  return result;
}

unint64_t sub_24A3D8AD4()
{
  result = qword_27EF3F428;
  if (!qword_27EF3F428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F428);
  }

  return result;
}

unint64_t sub_24A3D8B28(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A4AC0C0();

  if (v2 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v2;
  }
}

uint64_t FMFRemoveLabelsAction.__allocating_init(labels:)(uint64_t a1)
{
  result = swift_allocObject();
  if (*(a1 + 16))
  {
    *(result + 24) = a1;
    *(result + 16) = 1;
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t FMFRemoveLabelsAction.init(labels:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    *(v1 + 24) = a1;
    *(v1 + 16) = 1;
  }

  else
  {

    type metadata accessor for FMFRemoveLabelsAction();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v1;
}

uint64_t sub_24A3D8C64()
{
  v1 = sub_24A4AC420();
  MEMORY[0x24C217D50](v1);

  MEMORY[0x24C217D50](2016419898, 0xE400000000000000);
  sub_24A3BAF14();
  v2 = sub_24A4AB9E0();
  MEMORY[0x24C217D50](v2);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v3 = MEMORY[0x24C217E90](*(v0 + 24), MEMORY[0x277D837D0]);
  MEMORY[0x24C217D50](v3);

  MEMORY[0x24C217D50](0x203A736C6562616CLL, 0xE800000000000000);

  return 60;
}

uint64_t FMFRemoveLabelsAction.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_24A3D8E88(void *a1, uint64_t a2)
{
  v5 = sub_24A3C9CEC(&qword_27EF3F440, &qword_24A4B5BF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  v8 = sub_24A4AA9D0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  if (qword_27EF3EC40 != -1)
  {
    swift_once();
  }

  v15 = sub_24A378E18(v5, qword_27EF40938);
  sub_24A39990C(v15, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_24A3D9248(v7);
    sub_24A3D92B0();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v28 = a1;
    (*(v9 + 32))(v11, v7, v8);
    sub_24A4AA990();
    v17 = *(v9 + 8);
    v17(v11, v8);
    v18 = sub_24A4AA9E0();
    if (v2)
    {
      return (v17)(v14, v8);
    }

    else
    {
      v20 = v18;
      v21 = v19;
      if (qword_27EF3EBA0 != -1)
      {
        swift_once();
      }

      sub_24A3D9304();
      sub_24A4AA740();
      v17(v14, v8);
      sub_24A386E10(v20, v21);
      v22 = *&v27[0];
      type metadata accessor for FMFDemoDataSource();
      v23 = swift_allocObject();
      v24 = MEMORY[0x277D84F90];
      v23[4] = MEMORY[0x277D84F90];
      v23[5] = v24;
      v23[6] = v24;
      v23[7] = v24;
      v23[2] = v22;
      type metadata accessor for FMFDemoDataGenerator();
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_24A4B5650;
      *(v25 + 32) = 0x4024000000000000;
      v23[3] = v25;
      sub_24A3E40B0();
      sub_24A39997C(a2, v27);
      type metadata accessor for FMFDemoInteractionController();
      swift_allocObject();
      return sub_24A40DD00(v23, v28, v27);
    }
  }
}

uint64_t sub_24A3D9248(uint64_t a1)
{
  v2 = sub_24A3C9CEC(&qword_27EF3F440, &qword_24A4B5BF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24A3D92B0()
{
  result = qword_27EF3F448;
  if (!qword_27EF3F448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F448);
  }

  return result;
}

unint64_t sub_24A3D9304()
{
  result = qword_27EF3F450;
  if (!qword_27EF3F450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F450);
  }

  return result;
}

uint64_t sub_24A3D9370()
{
  v1 = *v0;
  sub_24A4AC360();
  MEMORY[0x24C218780](v1);
  return sub_24A4AC3A0();
}

uint64_t sub_24A3D93E4(uint64_t a1)
{
  v2 = *v1;
  sub_24A4AC360();
  MEMORY[0x24C218780](v2);
  return sub_24A4AC3A0();
}

void *FMFLocationAlert.fmlFence.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24A4AAAD0();
  MEMORY[0x28223BE20](v4 - 8);
  v163 = v153 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  MEMORY[0x28223BE20](v6 - 8);
  v182 = v153 - v7;
  v8 = sub_24A4AB020();
  v172 = *(v8 - 8);
  v173 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v153 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v153 - v12;
  v14 = sub_24A4AAFC0();
  v15 = *(v14 - 8);
  v191 = v14;
  v192 = v15;
  MEMORY[0x28223BE20](v14);
  v169 = v153 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v175 = v153 - v18;
  v19 = sub_24A3C9CEC(&qword_27EF3F468, &qword_24A4B9F30);
  MEMORY[0x28223BE20](v19 - 8);
  v162 = v153 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v181 = v153 - v22;
  v23 = sub_24A4AAB20();
  v186 = *(v23 - 8);
  v187 = v23;
  MEMORY[0x28223BE20](v23);
  v161 = v153 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v177 = v153 - v26;
  v212 = sub_24A4AADD0();
  v213 = *(v212 - 8);
  MEMORY[0x28223BE20](v212);
  v211 = v153 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_24A3C9CEC(&qword_27EF3F470, &qword_24A4B6960);
  MEMORY[0x28223BE20](v28 - 8);
  v185 = v153 - v29;
  v30 = type metadata accessor for FMFSchedule(0);
  v167 = *(v30 - 8);
  v168 = v30;
  MEMORY[0x28223BE20](v30);
  v160 = v153 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_24A4AB0C0();
  v193 = *(v32 - 8);
  v194 = v32;
  MEMORY[0x28223BE20](v32);
  v190 = v153 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v166 = v153 - v35;
  MEMORY[0x28223BE20](v36);
  v165 = v153 - v37;
  MEMORY[0x28223BE20](v38);
  v214 = v153 - v39;
  v201 = sub_24A4AAEF0();
  v198 = *(v201 - 8);
  MEMORY[0x28223BE20](v201);
  v189 = v153 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v188 = v153 - v42;
  MEMORY[0x28223BE20](v43);
  v197 = v153 - v44;
  MEMORY[0x28223BE20](v45);
  v47 = v153 - v46;
  v48 = sub_24A3C9CEC(&qword_27EF3F478, &qword_24A4B5660);
  MEMORY[0x28223BE20](v48 - 8);
  v176 = v153 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v164 = v153 - v51;
  MEMORY[0x28223BE20](v52);
  v196 = v153 - v53;
  v209 = sub_24A4AAF60();
  v208 = *(v209 - 8);
  MEMORY[0x28223BE20](v209);
  v207 = v153 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = sub_24A4AAFB0();
  v55 = *(v215 - 8);
  MEMORY[0x28223BE20](v215);
  v180 = v153 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v199 = v153 - v58;
  v59 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  MEMORY[0x28223BE20](v59 - 8);
  v210 = v153 - v60;
  v61 = sub_24A3C9CEC(&qword_27EF3F488, &unk_24A4B6920);
  MEMORY[0x28223BE20](v61 - 8);
  v63 = v153 - v62;
  v203 = sub_24A4AB5D0();
  v206 = *(v203 - 8);
  MEMORY[0x28223BE20](v203);
  v179 = v153 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v65);
  v204 = v153 - v66;
  v205 = type metadata accessor for FMFLocationAlert(0);
  v67 = (v2 + v205[20]);
  v68 = v67[1];
  v216 = v55;
  if (v68)
  {
    v195 = *v67;
    v69._countAndFlagsBits = sub_24A4AB880();
    FMFDefaultLabel.init(rawValue:)(v69);
    if (LOBYTE(v218[0]) == 5)
    {
      v202 = v68;
    }

    else
    {
      v70 = FMFDefaultLabel.localizedLabel.getter();
      v55 = v216;
      v195 = v70;
      v202 = v71;
    }
  }

  else
  {
    v195 = 0;
    v202 = 0xE000000000000000;
  }

  v72 = *v2;
  v178 = *(v2 + 8);
  memcpy(v219, (v2 + v205[23]), 0x130uLL);
  v73 = sub_24A3D77F8(v219);
  v183 = a1;
  v170 = v10;
  v171 = v13;
  v200 = v47;
  v174 = v72;
  if (v73 == 1)
  {
    v74 = v206;
    v75 = v203;
    (*(v206 + 56))(v63, 1, 1, v203);
    v76 = v204;
    sub_24A4AB5C0();
    if ((*(v74 + 48))(v63, 1, v75) != 1)
    {
      sub_24A37EF2C(v63, &qword_27EF3F488, &unk_24A4B6920);
    }
  }

  else
  {
    v154 = v63;
    v156 = v219[7];
    v157 = v219[5];
    v155 = v219[9];
    v158 = v219[11];
    v159 = v219[1];
    v153[10] = v219[17];
    v153[8] = v219[2];
    v153[9] = v219[26];
    v153[6] = v219[32];
    v153[7] = v219[30];
    v184 = v2;
    v153[1] = v219[12];
    v153[2] = v219[35];
    v153[4] = v219[34];
    v153[5] = v219[36];
    v153[3] = v219[37];

    v2 = v184;
    v77 = v154;
    v55 = v216;
    sub_24A4AB590();
    v78 = v206;
    v75 = v203;
    (*(v206 + 56))(v77, 0, 1, v203);
    v76 = v204;
    (*(v78 + 32))(v204, v77, v75);
  }

  v79 = v210;
  FMFLocationAlert.location.getter(v210);
  v80 = type metadata accessor for FMFLocation(0);
  if ((*(*(v80 - 8) + 48))(v79, 1, v80) == 1)
  {

    sub_24A37EF2C(v79, &qword_27EF3F480, &unk_24A4B8C20);
LABEL_14:
    sub_24A3DCA98();
    swift_allocError();
    *v81 = 0;
    swift_willThrow();
    return (*(v206 + 8))(v76, v75);
  }

  memcpy(v218, (v79 + *(v80 + 44)), 0x161uLL);
  if (sub_24A3B9C24(v218) == 1)
  {

    sub_24A3DCAEC(v79, type metadata accessor for FMFLocation);
    goto LABEL_14;
  }

  v83 = v218[38];
  sub_24A3DCAEC(v79, type metadata accessor for FMFLocation);
  [v83 coordinate];

  v84 = v205;
  (*(v208 + 104))(v207, **(&unk_278FE1158 + *(v2 + v205[21])), v209);
  sub_24A4AAF70();
  v85 = *(v2 + v84[15]);
  v157 = v84[15];
  if (v85 <= 1)
  {
    v86 = v198;
    v87 = v191;
    v88 = v192;
    v89 = v196;
    if (v85)
    {
      v90 = MEMORY[0x277D09240];
    }

    else
    {
      v90 = MEMORY[0x277D09238];
    }

    goto LABEL_21;
  }

  v86 = v198;
  v87 = v191;
  v88 = v192;
  v89 = v196;
  if (v85 == 2)
  {
    v90 = MEMORY[0x277D09248];
LABEL_21:
    (*(v88 + 104))(v89, *v90, v87);
    v91 = 0;
    goto LABEL_23;
  }

  v91 = 1;
LABEL_23:
  v158 = *(v88 + 56);
  v159 = v88 + 56;
  v158(v89, v91, 1, v87);
  v92 = v205;
  v93 = *MEMORY[0x277D091C8];
  v94 = *MEMORY[0x277D091D0];
  if (*(v2 + v205[24]))
  {
    v95 = v93;
  }

  else
  {
    v95 = v94;
  }

  v96 = *(v86 + 104);
  v97 = v201;
  v96(v200, v95, v201);
  if (*(v2 + v92[25]))
  {
    v98 = v94;
  }

  else
  {
    v98 = v93;
  }

  v99 = v197;
  v96(v197, v98, v97);
  if (*(v2 + 41) > 1u)
  {
    v102 = v215;
    if (*(v2 + 41) == 2)
    {

      sub_24A3DCA98();
      v107 = v99;
      swift_allocError();
      *v108 = 1;
      swift_willThrow();
      v109 = *(v198 + 8);
      v110 = v107;
      v111 = v201;
      v109(v110, v201);
      v109(v200, v111);
    }

    else
    {
      v128 = v185;
      sub_24A37B740(v2 + v205[12], v185, &qword_27EF3F470, &qword_24A4B6960);
      v129 = (*(v167 + 48))(v128, 1, v168);
      v116 = v201;
      if (v129 != 1)
      {
        v132 = v160;
        sub_24A3DCC88(v128, v160, type metadata accessor for FMFSchedule);
        v115 = v214;
        sub_24A3CAD34(v214);
        sub_24A3DCAEC(v132, type metadata accessor for FMFSchedule);
        (*(v193 + 104))(v115, *MEMORY[0x277D09290], v194);
        goto LABEL_38;
      }

      sub_24A37EF2C(v128, &qword_27EF3F470, &qword_24A4B6960);
      sub_24A3DCA98();
      swift_allocError();
      *v130 = 1;
      swift_willThrow();
      v131 = *(v198 + 8);
      v131(v197, v116);
      v131(v200, v116);
    }

    sub_24A37EF2C(v196, &qword_27EF3F478, &qword_24A4B5660);
    (*(v55 + 8))(v199, v102);
    return (*(v206 + 8))(v204, v203);
  }

  v101 = v193;
  v100 = v194;
  v102 = v215;
  v103 = *(v2 + 43);
  if (*(v2 + 41))
  {
    v112 = *MEMORY[0x277D09260];
    v113 = sub_24A4AB0B0();
    v106 = v166;
    (*(*(v113 - 8) + 104))(v166, v112, v113);
  }

  else
  {
    v104 = *MEMORY[0x277D09268];
    v105 = sub_24A4AB0B0();
    v106 = v165;
    (*(*(v105 - 8) + 104))(v165, v104, v105);
  }

  v114 = MEMORY[0x277D09288];
  if (!v103)
  {
    v114 = MEMORY[0x277D09280];
  }

  (*(v101 + 104))(v106, *v114, v100);
  v115 = v214;
  (*(v101 + 32))(v214, v106, v100);
  v116 = v201;
LABEL_38:
  FMFLocationAlert.recipients.getter();
  v119 = v186;
  v118 = v187;
  v210 = v117;
  if (v117 >> 62)
  {
    goto LABEL_58;
  }

  v120 = *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v120)
  {
LABEL_59:

LABEL_60:
    if (!v178)
    {
      goto LABEL_64;
    }

    v133 = v181;
    sub_24A4AAAE0();
    if ((*(v119 + 6))(v133, 1, v118) == 1)
    {
      v134 = &qword_27EF3F468;
      v135 = &qword_24A4B9F30;
      v136 = v133;
LABEL_63:
      sub_24A37EF2C(v136, v134, v135);
      v116 = v201;
LABEL_64:
      v137 = *(v198 + 16);
      v137(v188, v200, v116);
      v137(v189, v197, v116);
      (*(v193 + 16))(v190, v115, v194);
      (*(v55 + 16))(v180, v199, v102);
      v138 = v203;
      (*(v206 + 16))(v179, v204, v203);
      sub_24A37B740(v2 + v205[27], v182, &qword_27EF3F460, &unk_24A4B53B0);
      v139 = v196;
      sub_24A37B740(v196, v176, &qword_27EF3F478, &qword_24A4B5660);
      v140 = v198;
      sub_24A4AB050();
LABEL_72:
      (*(v193 + 8))(v214, v194);
      v151 = *(v140 + 8);
      v151(v197, v116);
      v151(v200, v116);
      sub_24A37EF2C(v139, &qword_27EF3F478, &qword_24A4B5660);
      (*(v216 + 8))(v199, v215);
      return (*(v206 + 8))(v204, v138);
    }

    (*(v119 + 4))(v177, v133, v118);
    if (*(v2 + v157) > 1u)
    {
      if (*(v2 + v157) != 2)
      {
        (*(v119 + 1))(v177, v118);
        v152 = v164;
        v158(v164, 1, 1, v191);
        v134 = &qword_27EF3F478;
        v135 = &qword_24A4B5660;
        v136 = v152;
        goto LABEL_63;
      }

      v141 = MEMORY[0x277D09248];
    }

    else if (*(v2 + v157))
    {
      v141 = MEMORY[0x277D09240];
    }

    else
    {
      v141 = MEMORY[0x277D09238];
    }

    v142 = v191;
    v143 = v192;
    v144 = v164;
    (*(v192 + 104))(v164, *v141, v191);
    v158(v144, 0, 1, v142);
    (*(v143 + 32))(v175, v144, v142);
    v145 = v161;
    (*(v119 + 2))(v161, v177, v118);
    v146 = v171;
    MEMORY[0x24C217420](v145);
    (*(v172 + 16))(v170, v146, v173);
    v140 = v198;
    v147 = *(v198 + 16);
    v148 = v201;
    v147(v188, v200, v201);
    v147(v189, v197, v148);
    (*(v193 + 16))(v190, v214, v194);
    (*(v192 + 16))(v169, v175, v142);
    (*(v216 + 16))(v180, v199, v215);
    (*(v206 + 16))(v179, v204, v203);
    sub_24A37B740(v2 + v205[27], v182, &qword_27EF3F460, &unk_24A4B53B0);
    v149 = *(v119 + 7);
    v150 = v187;
    v149(v162, 1, 1, v187);
    sub_24A4AAAC0();
    v138 = v203;
    sub_24A4AB030();
    v116 = v201;
    (*(v172 + 8))(v171, v173);
    (*(v192 + 8))(v175, v191);
    (*(v186 + 1))(v177, v150);
    v139 = v196;
    goto LABEL_72;
  }

  while (1)
  {
    v184 = v2;
    v217 = MEMORY[0x277D84F90];
    v209 = v120;
    result = sub_24A3DBCC8(0, v120 & ~(v120 >> 63), 0);
    if (v209 < 0)
    {
      break;
    }

    v2 = 0;
    v121 = v217;
    v122 = v210;
    v208 = v210 & 0xC000000000000001;
    v185 = v210 & 0xFFFFFFFFFFFFFF8;
    v207 = (v213 + 32);
    while (1)
    {
      v118 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v208)
      {
        v123 = MEMORY[0x24C218380](v2, v122);
      }

      else
      {
        if (v2 >= *(v185 + 16))
        {
          goto LABEL_57;
        }

        v123 = *(v122 + 8 * v2 + 32);
      }

      v124 = v123;
      result = [v123 identifier];
      if (!result)
      {
        goto LABEL_75;
      }

      v125 = result;
      v116 = sub_24A4AB850();

      v119 = v211;
      sub_24A4AADA0();

      v217 = v121;
      v127 = *(v121 + 16);
      v126 = *(v121 + 24);
      if (v127 >= v126 >> 1)
      {
        sub_24A3DBCC8((v126 > 1), v127 + 1, 1);
        v121 = v217;
      }

      *(v121 + 16) = v127 + 1;
      (*(v213 + 32))(v121 + ((*(v213 + 80) + 32) & ~*(v213 + 80)) + *(v213 + 72) * v127, v119, v212);
      ++v2;
      v102 = v215;
      v55 = v216;
      v115 = v214;
      v122 = v210;
      if (v118 == v209)
      {

        v2 = v184;
        v116 = v201;
        v119 = v186;
        v118 = v187;
        goto LABEL_60;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v120 = sub_24A4AC060();
    if (!v120)
    {
      goto LABEL_59;
    }
  }

  __break(1u);
LABEL_75:
  __break(1u);
  return result;
}

void FMFLocationAlert.recipients.getter()
{
  v1 = v0;
  v2 = type metadata accessor for FMFLocationAlert(0);
  v3 = *(v0 + *(v2 + 68));
  if (v3)
  {
    v4 = *(v3 + 16);
    v5 = MEMORY[0x277D84F90];
    if (v4)
    {
      v19 = MEMORY[0x277D84F90];
      sub_24A4ABFD0();
      v6 = objc_opt_self();
      v7 = 0;
      v8 = v3 + 40;
      while (v7 < *(v3 + 16))
      {

        v9 = sub_24A4AB820();
        v10 = [v6 handleWithId_];

        if (!v10)
        {
          goto LABEL_20;
        }

        ++v7;

        sub_24A4ABFB0();
        sub_24A4ABFE0();
        sub_24A4ABFF0();
        sub_24A4ABFC0();
        v8 += 16;
        if (v4 == v7)
        {
          v1 = v0;
          v5 = v19;
          goto LABEL_8;
        }
      }

      __break(1u);
      goto LABEL_19;
    }

LABEL_8:
    sub_24A3DB650(v5);
  }

  v11 = *(v1 + *(v2 + 64));
  if (!v11)
  {
    return;
  }

  v12 = *(v11 + 16);
  v13 = MEMORY[0x277D84F90];
  if (!v12)
  {
LABEL_16:
    sub_24A3DB650(v13);
    return;
  }

  v20 = MEMORY[0x277D84F90];
  sub_24A4ABFD0();
  v14 = objc_opt_self();
  v15 = 0;
  v16 = v11 + 40;
  while (v15 < *(v11 + 16))
  {

    v17 = sub_24A4AB820();
    v18 = [v14 handleWithId_];

    if (!v18)
    {
      goto LABEL_21;
    }

    ++v15;

    sub_24A4ABFB0();
    sub_24A4ABFE0();
    sub_24A4ABFF0();
    sub_24A4ABFC0();
    v16 += 16;
    if (v12 == v15)
    {
      v13 = v20;
      goto LABEL_16;
    }
  }

LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

id FMFLocationAlert.fence.getter()
{
  v1 = v0;
  v2 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27[-1] - v3;
  v5 = sub_24A3C9CEC(&qword_27EF3F470, &qword_24A4B6960);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27[-1] - v6;
  v8 = [objc_allocWithZone(MEMORY[0x277D07BB8]) init];
  if (*(v0 + 8))
  {
    v9 = sub_24A4AB820();
    [v8 setIdentifier_];
  }

  v10 = type metadata accessor for FMFLocationAlert(0);
  if (*(v1 + v10[19] + 8))
  {
    v11 = sub_24A4AB820();
    [v8 setFriendIdentifier_];
  }

  FMFLocationAlert.recipients.getter();
  sub_24A3DCB4C();
  v12 = sub_24A4ABA50();

  [v8 setRecipients_];

  [v8 setActive_];
  [v8 setRecurring_];
  sub_24A37B740(v1 + v10[12], v7, &qword_27EF3F470, &qword_24A4B6960);
  v13 = type metadata accessor for FMFSchedule(0);
  if ((*(*(v13 - 8) + 48))(v7, 1, v13) == 1)
  {
    sub_24A37EF2C(v7, &qword_27EF3F470, &qword_24A4B6960);
    v14 = 0;
  }

  else
  {
    v14 = sub_24A3CB4CC();
    sub_24A3DCAEC(v7, type metadata accessor for FMFSchedule);
  }

  [v8 setSchedule_];

  v15 = sub_24A4AB820();

  [v8 setType_];

  v16 = sub_24A4AB820();

  [v8 setTrigger_];

  if (*(v1 + v10[20] + 8))
  {
    v17._countAndFlagsBits = sub_24A4AB880();
    FMFDefaultLabel.init(rawValue:)(v17);
    if (LOBYTE(v27[0]) == 5)
    {
    }

    else
    {
      FMFDefaultLabel.localizedLabel.getter();
    }

    v18 = sub_24A4AB820();

    [v8 setLabel_];
  }

  memcpy(v28, (v1 + v10[23]), sizeof(v28));
  if (sub_24A3D77F8(v28) != 1)
  {
    memcpy(v27, v28, 0x130uLL);
    v19 = FMFAddress.placemark.getter();
    [v8 setPlacemark_];
  }

  [v8 setLocationType_];
  FMFLocationAlert.location.getter(v4);
  v20 = type metadata accessor for FMFLocation(0);
  if ((*(*(v20 - 8) + 48))(v4, 1, v20) == 1)
  {
    sub_24A37EF2C(v4, &qword_27EF3F480, &unk_24A4B8C20);
  }

  else
  {
    memcpy(v27, &v4[*(v20 + 44)], 0x161uLL);
    if (sub_24A3B9C24(v27) == 1)
    {
      sub_24A3DCAEC(v4, type metadata accessor for FMFLocation);
    }

    else
    {
      v21 = v27[38];
      sub_24A3DCAEC(v4, type metadata accessor for FMFLocation);
      [v8 setLocation_];
    }
  }

  if (*(v1 + v10[15]) <= 2u)
  {
    v22 = sub_24A4AB820();

    [v8 setAcceptanceStatus_];
  }

  if (*(v1 + v10[13] + 8))
  {
    v23 = sub_24A4AB820();
  }

  else
  {
    v23 = 0;
  }

  [v8 setCkRecordName_];

  if (*(v1 + v10[14] + 8))
  {
    v24 = sub_24A4AB820();
  }

  else
  {
    v24 = 0;
  }

  [v8 setCkRecordZoneOwnerName_];

  [v8 setFromMe_];
  return v8;
}

uint64_t sub_24A3DB650(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_24A4AC060();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_24A4AC060();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_24A3DC644(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_24A3DC6E4(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_24A3DB740(uint64_t result)
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

  result = sub_24A3EDDB8(result, v11, 1, v3);
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

uint64_t sub_24A3DB82C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_24A4AC060();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_24A4AC060();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_24A3DC644(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_24A3DC874(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_24A3DB948(void *result)
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

    v4 = sub_24A3EDED4(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = v9 - v11;
  result = sub_24A3BEA8C(&v43, &v4[24 * v11 + 32], v9 - v11, v7);
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
          v46 = v23;
          v47 = 0;
          goto LABEL_13;
        }

        v25 = *(v13 + 8 * v24);
        ++v2;
      }

      while (!v25);
      v40 = v14;
      v19 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v2 = v24;
      goto LABEL_27;
    }

    *(v4 + 2) = v18;
  }

  result = v43;
  if (v15 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v12 = *(v4 + 2);
  v13 = v44;
  v14 = v45;
  v2 = v46;
  v42 = v44;
  if (!v47)
  {
    goto LABEL_19;
  }

  v19 = (v47 - 1) & v47;
  v20 = __clz(__rbit64(v47)) | (v46 << 6);
  v40 = v45;
  v21 = (v45 + 64) >> 6;
LABEL_27:
  v41 = result;
  v26 = result[7] + 24 * v20;
  v28 = *v26;
  v27 = *(v26 + 8);
  v29 = *(v26 + 16);

  v30 = v42;
LABEL_29:
  while (1)
  {
    v31 = *(v4 + 3);
    v32 = v31 >> 1;
    if ((v31 >> 1) < v12 + 1)
    {
      break;
    }

    if (v12 < v32)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v12;
  }

  v38 = sub_24A3EDED4((v31 > 1), v12 + 1, 1, v4);
  v30 = v42;
  v4 = v38;
  v32 = *(v38 + 3) >> 1;
  if (v12 >= v32)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v33 = &v4[24 * v12 + 32];
    *v33 = v28;
    *(v33 + 8) = v27;
    *(v33 + 16) = v29 & 1;
    ++v12;
    if (!v19)
    {
      break;
    }

    result = v41;
LABEL_38:
    v36 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v37 = result[7] + 24 * (v36 | (v2 << 6));
    v28 = *v37;
    v27 = *(v37 + 8);
    v29 = *(v37 + 16);

    v30 = v42;
    if (v12 == v32)
    {
      v12 = v32;
      *(v4 + 2) = v32;
      goto LABEL_29;
    }
  }

  v34 = v2;
  result = v41;
  while (1)
  {
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v35 >= v21)
    {
      break;
    }

    v19 = *(v30 + 8 * v35);
    ++v34;
    if (v19)
    {
      v2 = v35;
      goto LABEL_38;
    }
  }

  if (v21 <= v2 + 1)
  {
    v39 = v2 + 1;
  }

  else
  {
    v39 = v21;
  }

  v45 = v40;
  v46 = v39 - 1;
  v47 = 0;
  *(v4 + 2) = v12;
LABEL_13:
  result = sub_24A3A13C0(result);
  *v1 = v4;
  return result;
}

char *sub_24A3DBC2C(char *a1, int64_t a2, char a3)
{
  result = sub_24A3BCAA8(a1, a2, a3, *v3, &qword_27EF3F548, &qword_24A4B5788, &type metadata for FMFLabel);
  *v3 = result;
  return result;
}

void *sub_24A3DBC64(void *a1, int64_t a2, char a3)
{
  result = sub_24A39E398(a1, a2, a3, *v3, &qword_27EF3F538, &qword_24A4B5778, type metadata accessor for FMFIntermediateFriend);
  *v3 = result;
  return result;
}

char *sub_24A3DBCA8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24A3DBF68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24A3DBCC8(void *a1, int64_t a2, char a3)
{
  result = sub_24A39E398(a1, a2, a3, *v3, &unk_27EF3F590, &qword_24A4B57B8, MEMORY[0x277D09098]);
  *v3 = result;
  return result;
}

void *sub_24A3DBD0C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24A3DC094(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24A3DBD2C(void *a1, int64_t a2, char a3)
{
  result = sub_24A39E398(a1, a2, a3, *v3, &qword_27EF3F578, &qword_24A4B57A8, type metadata accessor for FMFLabelledLocation);
  *v3 = result;
  return result;
}

char *sub_24A3DBD70(char *a1, int64_t a2, char a3)
{
  result = sub_24A3BCAA8(a1, a2, a3, *v3, &qword_27EF3F4B0, &unk_24A4B68C0, &type metadata for FMFSecureOrLiveLocateInProgress);
  *v3 = result;
  return result;
}

char *sub_24A3DBDA8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24A3DC1D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24A3DBDC8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24A3DC2E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24A3DBDE8(void *a1, int64_t a2, char a3)
{
  result = sub_24A39E398(a1, a2, a3, *v3, &qword_27EF3F508, &qword_24A4B5750, type metadata accessor for FMFLocationAlert);
  *v3 = result;
  return result;
}

void *sub_24A3DBE2C(void *a1, int64_t a2, char a3)
{
  result = sub_24A39E398(a1, a2, a3, *v3, &qword_27EF3F518, &qword_24A4B5758, MEMORY[0x277D092A8]);
  *v3 = result;
  return result;
}

char *sub_24A3DBE70(char *a1, int64_t a2, char a3)
{
  result = sub_24A3BCAA8(a1, a2, a3, *v3, &qword_27EF3F4F8, &unk_24A4B68F0, &type metadata for FMFFallbackToLegacyInProgress);
  *v3 = result;
  return result;
}

void *sub_24A3DBEA8(void *a1, int64_t a2, char a3)
{
  result = sub_24A3BEC2C(a1, a2, a3, *v3, &qword_27EF3F4E0, &qword_24A4B5740, &qword_27EF3F4E8, &qword_24A4B5748);
  *v3 = result;
  return result;
}

void *sub_24A3DBEE8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24A3DC510(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24A3DBF08(char *a1, int64_t a2, char a3)
{
  result = sub_24A3BCAA8(a1, a2, a3, *v3, &qword_27EF3F558, &unk_24A4B5790, &type metadata for LiveFriend);
  *v3 = result;
  return result;
}

char *sub_24A3DBF68(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A3C9CEC(&qword_27EF3F540, &qword_24A4B5780);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 408);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[408 * v8])
    {
      memmove(v12, v13, 408 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24A3DC094(void *result, int64_t a2, char a3, void *a4)
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
    sub_24A3C9CEC(&qword_27EF3F528, &qword_24A4B5768);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    sub_24A3C9CEC(&qword_27EF3F530, &qword_24A4B5770);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24A3DC1D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_24A3DC2E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A3C9CEC(&qword_27EF3F520, &qword_24A4B5760);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24A3DC3F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A3C9CEC(&qword_27EF3F550, &qword_24A4B6940);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24A3DC510(void *result, int64_t a2, char a3, void *a4)
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
    sub_24A3C9CEC(&qword_27EF3F4B8, &qword_24A4B5730);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_24A3C9CEC(&unk_27EF3F4C0, &qword_24A4B7E60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_24A3DC644(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_24A4AC060();
LABEL_9:
  result = sub_24A4ABF80();
  *v2 = result;
  return result;
}

uint64_t sub_24A3DC6E4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24A4AC060();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_24A4AC060();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24A3DCCF0(&qword_27EF3F588, &qword_27EF3F580, &qword_24A4B57B0);
          for (i = 0; i != v6; ++i)
          {
            sub_24A3C9CEC(&qword_27EF3F580, &qword_24A4B57B0);
            v9 = sub_24A3DCA10(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_24A3DCB4C();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24A3DC874(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24A4AC060();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_24A4AC060();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24A3DCCF0(&qword_27EF3F570, &qword_27EF3F568, &qword_24A4B57A0);
          for (i = 0; i != v6; ++i)
          {
            sub_24A3C9CEC(&qword_27EF3F568, &qword_24A4B57A0);
            v9 = sub_24A3DCC00(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_24A3C9CEC(&qword_27EF3F560, qword_24A4B9FE0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_24A3DCA10(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C218380](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_24A3DCA90;
  }

  __break(1u);
  return result;
}

unint64_t sub_24A3DCA98()
{
  result = qword_27EF3F490;
  if (!qword_27EF3F490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F490);
  }

  return result;
}

uint64_t sub_24A3DCAEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24A3DCB4C()
{
  result = qword_27EF3F498;
  if (!qword_27EF3F498)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF3F498);
  }

  return result;
}

unint64_t sub_24A3DCBAC()
{
  result = qword_27EF3F4A0;
  if (!qword_27EF3F4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F4A0);
  }

  return result;
}

uint64_t (*sub_24A3DCC00(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C218380](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_24A3DCC80;
  }

  __break(1u);
  return result;
}

uint64_t sub_24A3DCC88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A3DCCF0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_24A3CBC9C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t FMFShowHideLocationAction.__allocating_init(hideLocation:)(char a1)
{
  result = swift_allocObject();
  *(result + 17) = a1;
  *(result + 16) = 0;
  return result;
}

uint64_t FMFShowHideLocationAction.init(hideLocation:)(char a1)
{
  *(v1 + 17) = a1;
  *(v1 + 16) = 0;
  return v1;
}

uint64_t sub_24A3DCD8C()
{
  sub_24A4ABF50();

  v1 = sub_24A4AC420();
  MEMORY[0x24C217D50](v1);

  MEMORY[0x24C217D50](2016419898, 0xE400000000000000);
  sub_24A3BAF14();
  v2 = sub_24A4AB9E0();
  MEMORY[0x24C217D50](v2);

  MEMORY[0x24C217D50](0x636F4C6564696820, 0xEF203A6E6F697461);
  if (*(v0 + 17))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + 17))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x24C217D50](v3, v4);

  return 60;
}

__n128 FMFUpdateMeDeviceAction.__allocating_init(meDevice:)(__n128 *a1)
{
  v2 = swift_allocObject();
  result = *a1;
  v4 = a1[1].n128_u64[0];
  v5 = a1[1].n128_u64[1];
  v6 = a1[2].n128_u8[0];
  *(v2 + 24) = *a1;
  *(v2 + 40) = v4;
  *(v2 + 48) = v5;
  *(v2 + 56) = v6;
  *(v2 + 16) = 0;
  return result;
}

uint64_t FMFUpdateMeDeviceAction.init(meDevice:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  *(v1 + 56) = v4;
  *(v1 + 16) = 0;
  return v1;
}

uint64_t sub_24A3DCFF8()
{
  sub_24A4ABF50();
  MEMORY[0x24C217D50](60, 0xE100000000000000);
  v0 = sub_24A4AC420();
  MEMORY[0x24C217D50](v0);

  MEMORY[0x24C217D50](2016419898, 0xE400000000000000);
  sub_24A3BAF14();
  v1 = sub_24A4AB9E0();
  MEMORY[0x24C217D50](v1);

  MEMORY[0x24C217D50](0x6369766544656D20, 0xEB00000000203A65);
  sub_24A4AC030();
  return 0;
}

uint64_t sub_24A3DD178()
{
}

uint64_t FMFUpdateMeDeviceAction.deinit()
{

  return v0;
}

uint64_t FMFUpdateMeDeviceAction.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t FMFUpdateLocationAlertAction.__allocating_init(locationAlert:location:radius:address:label:triggerType:isOn:repeating:phoneNumbers:emails:schedule:ckRecordName:ckRecordZoneOwnerName:acceptanceStatus:)(uint64_t a1, void *a2, uint64_t a3, int a4, const void *a5, uint64_t a6, void *a7, unsigned __int8 *a8, char a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned __int8 *a18)
{
  v129 = a7;
  v130 = a8;
  v112 = a6;
  v123 = a4;
  v124 = a3;
  v126 = a2;
  v132 = a13;
  v20 = a10;
  v21 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  MEMORY[0x28223BE20](v21 - 8);
  v121 = &v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v122 = &v112 - v24;
  MEMORY[0x28223BE20](v25);
  v133 = &v112 - v26;
  v27 = sub_24A3C9CEC(&qword_27EF3F470, &qword_24A4B6960);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v112 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v118 = &v112 - v31;
  MEMORY[0x28223BE20](v32);
  v131 = &v112 - v33;
  v34 = type metadata accessor for FMFLocationAlert(0);
  MEMORY[0x28223BE20](v34);
  v36 = &v112 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v39 = &v112 - v38;
  MEMORY[0x28223BE20](v40);
  v127 = &v112 - v41;
  v125 = swift_allocObject();
  memcpy(v137, a5, sizeof(v137));
  v42 = *a18;
  if (a10 == 2)
  {
    v20 = *(a1 + 43);
  }

  v113 = *v130;
  if (v42 == 3)
  {
    if (*(a1 + 40))
    {
      v43 = sub_24A4AC270();

      if ((v43 & v20 & 1) == 0)
      {
LABEL_6:
        v42 = 2;
        goto LABEL_9;
      }
    }

    else
    {

      if ((v20 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v42 = 0;
  }

LABEL_9:
  v114 = v42;
  v128 = a1;
  sub_24A3DE9CC(a1, v39);
  v44 = v131;
  sub_24A37B740(v132, v131, &qword_27EF3F470, &qword_24A4B6960);
  v45 = sub_24A4AAAD0();
  v117 = *(v45 - 8);
  v46 = *(v117 + 56);
  v119 = v117 + 56;
  v120 = v45;
  v130 = v46;
  (v46)(v133, 1, 1);
  v47 = *(v39 + 1);
  *v36 = *v39;
  *(v36 + 1) = v47;
  v36[42] = v39[42];
  v36[43] = v20 & 1;
  sub_24A37B740(v44, v29, &qword_27EF3F470, &qword_24A4B6960);
  v48 = type metadata accessor for FMFSchedule(0);
  v49 = *(v48 - 8);
  v50 = *(v49 + 48);
  if (v50(v29, 1, v48) == 1)
  {
    v51 = v118;
    sub_24A37B740(&v39[v34[12]], v118, &qword_27EF3F470, &qword_24A4B6960);
    v52 = v51;
    v53 = v50(v29, 1, v48);

    if (v53 != 1)
    {
      sub_24A37EF2C(v29, &qword_27EF3F470, &qword_24A4B6960);
    }
  }

  else
  {
    v52 = v118;
    sub_24A3B5814(v29, v118, type metadata accessor for FMFSchedule);
    (*(v49 + 56))(v52, 0, 1, v48);
  }

  v54 = a15;
  sub_24A37BE24(v52, &v36[v34[12]], &qword_27EF3F470, &qword_24A4B6960);
  v36[40] = v39[40];
  v56 = v113;
  if (v113 == 4)
  {
    v56 = v39[41];
  }

  v57 = a17;
  v36[41] = v56;
  v59 = v34[13];
  if (!a15)
  {
    a14 = *&v39[v59];
    v54 = *&v39[v59 + 8];
  }

  v60 = a11;
  v61 = &v36[v59];
  *v61 = a14;
  *(v61 + 1) = v54;
  v62 = v34[14];
  if (!a17)
  {
    a16 = *&v39[v62];
    v57 = *&v39[v62 + 8];
  }

  v63 = a12;
  v64 = &v36[v62];
  *v64 = a16;
  *(v64 + 1) = v57;
  v36[v34[15]] = v114;
  v65 = v34[16];
  if (!a11)
  {
    v60 = *&v39[v65];
  }

  *&v36[v65] = v60;
  v66 = v34[17];
  v67 = v121;
  v68 = v117;
  if (!a12)
  {
    v63 = *&v39[v66];
  }

  *&v36[v66] = v63;
  v69 = v34[18];
  v118 = *&v39[v69];
  *&v36[v69] = v118;
  v70 = v34[19];
  v71 = *&v39[v70];
  v72 = *&v39[v70 + 8];
  v73 = &v36[v70];
  *v73 = v71;
  *(v73 + 1) = v72;
  sub_24A37B740(v133, v67, &qword_27EF3F460, &unk_24A4B53B0);
  v74 = *(v68 + 48);
  v75 = v120;
  v76 = v74(v67, 1, v120);
  v115 = v34;
  v116 = v39;
  if (v76 == 1)
  {
    v77 = &v39[v34[27]];
    v78 = v122;
    sub_24A37B740(v77, v122, &qword_27EF3F460, &unk_24A4B53B0);
    v79 = v74(v67, 1, v75);

    v80 = v75;
    if (v79 != 1)
    {
      sub_24A37EF2C(v67, &qword_27EF3F460, &unk_24A4B53B0);
    }
  }

  else
  {
    v78 = v122;
    (*(v68 + 32))(v122, v67, v75);
    (v130)(v78, 0, 1, v75);

    v80 = v75;
  }

  v81 = v115;
  sub_24A37BE24(v78, &v36[v115[27]], &qword_27EF3F460, &unk_24A4B53B0);
  v82 = v126;
  if (v126)
  {
    v83 = v126;
    [v83 coordinate];
    *(v36 + 2) = v84;
    [v83 coordinate];
    *(v36 + 3) = v85;
    v86 = v81[26];
    v87 = [v83 timestamp];
    sub_24A4AAAA0();

    (v130)(&v36[v86], 0, 1, v80);
    v88 = v129;
    v89 = v116;
  }

  else
  {
    v89 = v116;
    *(v36 + 1) = *(v116 + 1);
    sub_24A37B740(v89 + v81[26], &v36[v81[26]], &qword_27EF3F460, &unk_24A4B53B0);
    v88 = v129;
  }

  v90 = v124;
  if (v123)
  {
    v90 = *(v89 + 32);
  }

  *(v36 + 4) = v90;
  memcpy(v136, v137, sizeof(v136));
  if (sub_24A3D77F8(v136) != 1)
  {
    memcpy(&v36[v81[23]], v137, 0x130uLL);
    memcpy(v135, v136, sizeof(v135));
    v100 = FMFAddress.displayAddress.getter();
    v101 = &v36[v81[22]];
    *v101 = v100;
    v101[1] = v102;
    if (v88)
    {
      goto LABEL_34;
    }

LABEL_39:

    sub_24A37EF2C(v132, &qword_27EF3F470, &qword_24A4B6960);
    sub_24A3DEA30(v128);
    sub_24A37EF2C(v133, &qword_27EF3F460, &unk_24A4B53B0);
    sub_24A37EF2C(v131, &qword_27EF3F470, &qword_24A4B6960);
    v103 = v81[20];
    v105 = *(v89 + v103);
    v104 = *(v89 + v103 + 8);
    v106 = *(v89 + v103 + 16);
    v107 = &v36[v103];
    *v107 = v105;
    *(v107 + 1) = v104;
    *(v107 + 8) = v106;

    goto LABEL_40;
  }

  v91 = v81[23];
  memcpy(v135, (v89 + v91), sizeof(v135));
  memcpy(&v36[v81[23]], (v89 + v91), 0x130uLL);
  v92 = v81[22];
  v93 = *(v89 + v92);
  v94 = *(v89 + v92 + 8);
  v95 = &v36[v92];
  *v95 = v93;
  *(v95 + 1) = v94;
  sub_24A37B740(v135, &v134, &unk_27EF404E0, &unk_24A4B5230);

  if (!v88)
  {
    goto LABEL_39;
  }

LABEL_34:

  v96 = v112;
  v97._countAndFlagsBits = v112;
  v97._object = v88;
  FMFDefaultLabel.init(rawValue:)(v97);

  sub_24A37EF2C(v132, &qword_27EF3F470, &qword_24A4B6960);
  sub_24A3DEA30(v128);
  sub_24A37EF2C(v133, &qword_27EF3F460, &unk_24A4B53B0);
  sub_24A37EF2C(v131, &qword_27EF3F470, &qword_24A4B6960);
  if (v135[0] == 5)
  {
    v98 = 259;
  }

  else
  {
    v98 = 3;
  }

  v99 = &v36[v81[20]];
  *v99 = v96;
  *(v99 + 1) = v88;
  *(v99 + 8) = v98;
LABEL_40:
  v36[v81[21]] = *(v89 + v81[21]);
  v36[v81[24]] = *(v89 + v81[24]);
  v108 = *(v89 + v81[25]);
  sub_24A3DEA30(v89);
  v36[v81[25]] = v108;
  v109 = v127;
  sub_24A3B5814(v36, v127, type metadata accessor for FMFLocationAlert);
  v110 = v125;
  sub_24A3B5814(v109, v125 + OBJC_IVAR____TtC7FMFCore28FMFUpdateLocationAlertAction_locationAlert, type metadata accessor for FMFLocationAlert);
  *(v110 + 16) = 1;
  return v110;
}

uint64_t FMFUpdateLocationAlertAction.init(locationAlert:location:radius:address:label:triggerType:isOn:repeating:phoneNumbers:emails:schedule:ckRecordName:ckRecordZoneOwnerName:acceptanceStatus:)(uint64_t a1, void *a2, uint64_t a3, int a4, const void *a5, uint64_t a6, void *a7, unsigned __int8 *a8, char a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned __int8 *a18)
{
  v127 = a7;
  v112 = a6;
  v122 = a4;
  v123 = a3;
  v124 = a2;
  v132 = a13;
  v21 = a10;
  v22 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  MEMORY[0x28223BE20](v22 - 8);
  v120 = &v112 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v121 = &v112 - v25;
  MEMORY[0x28223BE20](v26);
  v133 = &v112 - v27;
  v28 = sub_24A3C9CEC(&qword_27EF3F470, &qword_24A4B6960);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v112 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v118 = &v112 - v32;
  MEMORY[0x28223BE20](v33);
  v131 = &v112 - v34;
  v35 = type metadata accessor for FMFLocationAlert(0);
  MEMORY[0x28223BE20](v35);
  v37 = &v112 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v40 = &v112 - v39;
  MEMORY[0x28223BE20](v41);
  v125 = &v112 - v42;
  memcpy(v137, a5, sizeof(v137));
  v43 = *a18;
  if (a10 == 2)
  {
    v21 = *(a1 + 43);
  }

  v113 = *a8;
  if (v43 == 3)
  {
    if (*(a1 + 40))
    {
      v44 = sub_24A4AC270();

      if ((v44 & v21 & 1) == 0)
      {
LABEL_6:
        v43 = 2;
        goto LABEL_9;
      }
    }

    else
    {

      if ((v21 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v43 = 0;
  }

LABEL_9:
  v114 = v43;
  v126 = a1;
  sub_24A3DE9CC(a1, v40);
  v45 = v131;
  sub_24A37B740(v132, v131, &qword_27EF3F470, &qword_24A4B6960);
  v46 = sub_24A4AAAD0();
  v117 = *(v46 - 8);
  v129 = *(v117 + 56);
  v130 = v46;
  v119 = v117 + 56;
  v129(v133, 1, 1);
  v47 = *(v40 + 1);
  *v37 = *v40;
  *(v37 + 1) = v47;
  v37[42] = v40[42];
  v37[43] = v21 & 1;
  sub_24A37B740(v45, v30, &qword_27EF3F470, &qword_24A4B6960);
  v48 = type metadata accessor for FMFSchedule(0);
  v49 = *(v48 - 8);
  v50 = *(v49 + 48);
  if (v50(v30, 1, v48) == 1)
  {
    v51 = v118;
    sub_24A37B740(&v40[v35[12]], v118, &qword_27EF3F470, &qword_24A4B6960);
    v52 = v50(v30, 1, v48);
    v53 = v51;
    v54 = v52;

    if (v54 != 1)
    {
      sub_24A37EF2C(v30, &qword_27EF3F470, &qword_24A4B6960);
    }
  }

  else
  {
    v53 = v118;
    sub_24A3B5814(v30, v118, type metadata accessor for FMFSchedule);
    (*(v49 + 56))(v53, 0, 1, v48);
  }

  v55 = a15;
  sub_24A37BE24(v53, &v37[v35[12]], &qword_27EF3F470, &qword_24A4B6960);
  v37[40] = v40[40];
  v57 = v113;
  if (v113 == 4)
  {
    v57 = v40[41];
  }

  v58 = a17;
  v37[41] = v57;
  v60 = v35[13];
  if (!a15)
  {
    a14 = *&v40[v60];
    v55 = *&v40[v60 + 8];
  }

  v61 = a11;
  v62 = &v37[v60];
  *v62 = a14;
  *(v62 + 1) = v55;
  v63 = v35[14];
  if (!a17)
  {
    a16 = *&v40[v63];
    v58 = *&v40[v63 + 8];
  }

  v64 = a12;
  v65 = &v37[v63];
  *v65 = a16;
  *(v65 + 1) = v58;
  v37[v35[15]] = v114;
  v66 = v35[16];
  v67 = v117;
  if (!a11)
  {
    v61 = *&v40[v66];
  }

  *&v37[v66] = v61;
  v68 = v35[17];
  v69 = v120;
  if (!a12)
  {
    v64 = *&v40[v68];
  }

  *&v37[v68] = v64;
  v70 = v35[18];
  v118 = *&v40[v70];
  *&v37[v70] = v118;
  v71 = v35[19];
  v72 = *&v40[v71];
  v73 = *&v40[v71 + 8];
  v74 = &v37[v71];
  *v74 = v72;
  *(v74 + 1) = v73;
  sub_24A37B740(v133, v69, &qword_27EF3F460, &unk_24A4B53B0);
  v75 = *(v67 + 48);
  v76 = v130;
  v77 = v75(v69, 1, v130);
  v115 = v35;
  v116 = v40;
  if (v77 == 1)
  {
    v78 = &v40[v35[27]];
    v79 = v121;
    sub_24A37B740(v78, v121, &qword_27EF3F460, &unk_24A4B53B0);
    v80 = v75(v69, 1, v76);

    if (v80 != 1)
    {
      sub_24A37EF2C(v69, &qword_27EF3F460, &unk_24A4B53B0);
    }
  }

  else
  {
    v79 = v121;
    (*(v67 + 32))(v121, v69, v76);
    (v129)(v79, 0, 1, v76);
  }

  v81 = v115;
  sub_24A37BE24(v79, &v37[v115[27]], &qword_27EF3F460, &unk_24A4B53B0);
  v82 = v124;
  if (v124)
  {
    v83 = v124;
    [v83 coordinate];
    *(v37 + 2) = v84;
    [v83 coordinate];
    *(v37 + 3) = v85;
    v86 = v81[26];
    v87 = [v83 timestamp];
    sub_24A4AAAA0();

    (v129)(&v37[v86], 0, 1, v130);
    v88 = v127;
    v89 = v116;
  }

  else
  {
    v89 = v116;
    *(v37 + 1) = *(v116 + 1);
    sub_24A37B740(v89 + v81[26], &v37[v81[26]], &qword_27EF3F460, &unk_24A4B53B0);
    v88 = v127;
  }

  v90 = v123;
  if (v122)
  {
    v90 = *(v89 + 32);
  }

  *(v37 + 4) = v90;
  memcpy(v136, v137, sizeof(v136));
  if (sub_24A3D77F8(v136) != 1)
  {
    memcpy(&v37[v81[23]], v137, 0x130uLL);
    memcpy(v135, v136, sizeof(v135));
    v100 = FMFAddress.displayAddress.getter();
    v101 = &v37[v81[22]];
    *v101 = v100;
    v101[1] = v102;
    if (v88)
    {
      goto LABEL_34;
    }

LABEL_39:

    sub_24A37EF2C(v132, &qword_27EF3F470, &qword_24A4B6960);
    sub_24A3DEA30(v126);
    sub_24A37EF2C(v133, &qword_27EF3F460, &unk_24A4B53B0);
    sub_24A37EF2C(v131, &qword_27EF3F470, &qword_24A4B6960);
    v103 = v81[20];
    v105 = *(v89 + v103);
    v104 = *(v89 + v103 + 8);
    v106 = *(v89 + v103 + 16);
    v107 = &v37[v103];
    *v107 = v105;
    *(v107 + 1) = v104;
    *(v107 + 8) = v106;

    goto LABEL_40;
  }

  v91 = v81[23];
  memcpy(v135, (v89 + v91), sizeof(v135));
  memcpy(&v37[v81[23]], (v89 + v91), 0x130uLL);
  v92 = v81[22];
  v93 = *(v89 + v92);
  v94 = *(v89 + v92 + 8);
  v95 = &v37[v92];
  *v95 = v93;
  *(v95 + 1) = v94;
  sub_24A37B740(v135, &v134, &unk_27EF404E0, &unk_24A4B5230);

  if (!v88)
  {
    goto LABEL_39;
  }

LABEL_34:

  v96 = v112;
  v97._countAndFlagsBits = v112;
  v97._object = v88;
  FMFDefaultLabel.init(rawValue:)(v97);

  sub_24A37EF2C(v132, &qword_27EF3F470, &qword_24A4B6960);
  sub_24A3DEA30(v126);
  sub_24A37EF2C(v133, &qword_27EF3F460, &unk_24A4B53B0);
  sub_24A37EF2C(v131, &qword_27EF3F470, &qword_24A4B6960);
  if (v135[0] == 5)
  {
    v98 = 259;
  }

  else
  {
    v98 = 3;
  }

  v99 = &v37[v81[20]];
  *v99 = v96;
  *(v99 + 1) = v88;
  *(v99 + 8) = v98;
LABEL_40:
  v37[v81[21]] = *(v89 + v81[21]);
  v37[v81[24]] = *(v89 + v81[24]);
  v108 = *(v89 + v81[25]);
  sub_24A3DEA30(v89);
  v37[v81[25]] = v108;
  v109 = v125;
  sub_24A3B5814(v37, v125, type metadata accessor for FMFLocationAlert);
  v110 = v128;
  sub_24A3B5814(v109, v128 + OBJC_IVAR____TtC7FMFCore28FMFUpdateLocationAlertAction_locationAlert, type metadata accessor for FMFLocationAlert);
  *(v110 + 16) = 1;
  return v110;
}

uint64_t sub_24A3DE770()
{
  v0 = sub_24A4AC420();
  MEMORY[0x24C217D50](v0);

  MEMORY[0x24C217D50](2016419898, 0xE400000000000000);
  sub_24A3BAF14();
  v1 = sub_24A4AB9E0();
  MEMORY[0x24C217D50](v1);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  sub_24A4ABF50();
  MEMORY[0x24C217D50](0x6E6F697461636F6CLL, 0xEF203A7472656C41);
  type metadata accessor for FMFLocationAlert(0);
  sub_24A4AC030();

  MEMORY[0x24C217D50](0, 0xE000000000000000);

  return 60;
}

uint64_t FMFUpdateLocationAlertAction.__deallocating_deinit()
{
  sub_24A3DEA30(v0 + OBJC_IVAR____TtC7FMFCore28FMFUpdateLocationAlertAction_locationAlert);

  return swift_deallocClassInstance();
}

uint64_t sub_24A3DE9CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMFLocationAlert(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A3DEA30(uint64_t a1)
{
  v2 = type metadata accessor for FMFLocationAlert(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for FMFUpdateLocationAlertAction(uint64_t a1)
{
  result = qword_27EF3F5A0;
  if (!qword_27EF3F5A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A3DEAE0(uint64_t a1)
{
  result = type metadata accessor for FMFLocationAlert(319);
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

uint64_t sub_24A3DEBE0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6D614E7473726966;
    }

    else
    {
      v4 = 0x736C69616D65;
    }

    if (v2)
    {
      v3 = 0xE900000000000065;
    }

    else
    {
      v3 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x656369766544656DLL;
    v3 = 0xEA00000000006449;
  }

  else if (a1 == 3)
  {
    v3 = 0xE800000000000000;
    v4 = 0x6449656369766564;
  }

  else
  {
    v4 = 0x656C626967696C65;
    v3 = 0xEE00654D6F747541;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6D614E7473726966;
    }

    else
    {
      v9 = 0x736C69616D65;
    }

    if (a2)
    {
      v8 = 0xE900000000000065;
    }

    else
    {
      v8 = 0xE600000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v6 = 0x6449656369766564;
    if (a2 != 3)
    {
      v6 = 0x656C626967696C65;
      v5 = 0xEE00654D6F747541;
    }

    if (a2 == 2)
    {
      v7 = 0x656369766544656DLL;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xEA00000000006449;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_24A4AC270();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_24A3DED90(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x75426C65636E6163;
    v10 = 0xEF4C52556E6F7474;
    if (a1 != 6)
    {
      v9 = 0x7079547472656C61;
      v10 = 0xE900000000000065;
    }

    v11 = 0x6E6F747475426B6FLL;
    v12 = 0xEB000000004C5255;
    if (a1 != 4)
    {
      v11 = 0xD000000000000011;
      v12 = 0x800000024A4AE2A0;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v9;
    }

    if (v2 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0xE700000000000000;
    v5 = 0x6567617373656DLL;
    if (a1 != 2)
    {
      v5 = 0x6E6F747475426B6FLL;
      v4 = 0xED0000656C746954;
    }

    v6 = 0x656C746974;
    if (a1)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v6 = 0x64497472656C61;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v4;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xEF4C52556E6F7474;
        if (v7 != 0x75426C65636E6163)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v13 = 0xE900000000000065;
        if (v7 != 0x7079547472656C61)
        {
LABEL_47:
          v14 = sub_24A4AC270();
          goto LABEL_48;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xEB000000004C5255;
      if (v7 != 0x6E6F747475426B6FLL)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0x800000024A4AE2A0;
      if (v7 != 0xD000000000000011)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE700000000000000;
      if (v7 != 0x6567617373656DLL)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0xED0000656C746954;
      if (v7 != 0x6E6F747475426B6FLL)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE500000000000000;
    if (v7 != 0x656C746974)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v13 = 0xE700000000000000;
    if (v7 != 0x64497472656C61)
    {
      goto LABEL_47;
    }
  }

  if (v8 != v13)
  {
    goto LABEL_47;
  }

  v14 = 1;
LABEL_48:

  return v14 & 1;
}

uint64_t sub_24A3DF050(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7265746E65;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x74616964656D6D69;
    }

    else
    {
      v4 = 0x656C756465686373;
    }

    if (v3 == 2)
    {
      v5 = 0xE900000000000065;
    }

    else
    {
      v5 = 0xE900000000000064;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1953069157;
    }

    else
    {
      v4 = 0x7265746E65;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0x74616964656D6D69;
  v8 = 0xE900000000000065;
  if (a2 != 2)
  {
    v7 = 0x656C756465686373;
    v8 = 0xE900000000000064;
  }

  if (a2)
  {
    v2 = 1953069157;
    v6 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24A4AC270();
  }

  return v11 & 1;
}

uint64_t sub_24A3DF198(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006564;
  v3 = 0x6F43737574617473;
  v4 = a1;
  if (a1 <= 3u)
  {
    v13 = 0xE300000000000000;
    v14 = 7107189;
    if (a1 != 2)
    {
      v14 = 0x6D614E7473726966;
      v13 = 0xE900000000000065;
    }

    v15 = 0x614D737574617473;
    v16 = 0xE900000000000070;
    if (!a1)
    {
      v15 = 0x6F43737574617473;
      v16 = 0xEA00000000006564;
    }

    if (a1 <= 1u)
    {
      v11 = v15;
    }

    else
    {
      v11 = v14;
    }

    if (v4 <= 1)
    {
      v12 = v16;
    }

    else
    {
      v12 = v13;
    }
  }

  else
  {
    v5 = 0xD000000000000010;
    v6 = 0x800000024A4AEAD0;
    v7 = 0x55746E6572727563;
    v8 = 0xED00006449726573;
    if (a1 != 7)
    {
      v7 = 0x65636E6566;
      v8 = 0xE500000000000000;
    }

    if (a1 != 6)
    {
      v5 = v7;
      v6 = v8;
    }

    v9 = 0xE800000000000000;
    v10 = 0x656D614E7473616CLL;
    if (a1 != 4)
    {
      v10 = 0x6C69616D65;
      v9 = 0xE500000000000000;
    }

    if (a1 <= 5u)
    {
      v11 = v10;
    }

    else
    {
      v11 = v5;
    }

    if (v4 <= 5)
    {
      v12 = v9;
    }

    else
    {
      v12 = v6;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE300000000000000;
        if (v11 != 7107189)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v2 = 0xE900000000000065;
        if (v11 != 0x6D614E7473726966)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2)
    {
      v2 = 0xE900000000000070;
      if (v11 != 0x614D737574617473)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x656D614E7473616CLL)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v2 = 0xE500000000000000;
        if (v11 != 0x6C69616D65)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2 == 6)
    {
      v2 = 0x800000024A4AEAD0;
      if (v11 != 0xD000000000000010)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    if (a2 == 7)
    {
      v2 = 0xED00006449726573;
      if (v11 != 0x55746E6572727563)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v2 = 0xE500000000000000;
    v3 = 0x65636E6566;
  }

  if (v11 != v3)
  {
LABEL_49:
    v17 = sub_24A4AC270();
    goto LABEL_50;
  }

LABEL_46:
  if (v12 != v2)
  {
    goto LABEL_49;
  }

  v17 = 1;
LABEL_50:

  return v17 & 1;
}

uint64_t sub_24A3DF454(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0x64757469676E6F6CLL;
  v6 = 0xE900000000000065;
  if (a1 != 6)
  {
    v5 = 0x7354657461647075;
    v6 = 0xE800000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x644972657375;
  if (a1 != 4)
  {
    v8 = 0x656475746974616CLL;
    v7 = 0xE800000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0x7079546C6562616CLL;
  v10 = 0xE900000000000065;
  if (a1 != 2)
  {
    v9 = 1701869940;
    v10 = 0xE400000000000000;
  }

  if (a1)
  {
    v4 = 0x6C6562616CLL;
    v3 = 0xE500000000000000;
  }

  if (a1 > 1u)
  {
    v4 = v9;
    v3 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v13 = 0xE500000000000000;
        if (v11 != 0x6C6562616CLL)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v13 = 0xE200000000000000;
        if (v11 != 25705)
        {
          goto LABEL_43;
        }
      }

      goto LABEL_41;
    }

    if (a2 != 2)
    {
      v13 = 0xE400000000000000;
      if (v11 != 1701869940)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    }

    v14 = 0x7079546C6562616CLL;
LABEL_32:
    v13 = 0xE900000000000065;
    if (v11 != v14)
    {
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x644972657375)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v13 = 0xE800000000000000;
      if (v11 != 0x656475746974616CLL)
      {
        goto LABEL_43;
      }
    }

    goto LABEL_41;
  }

  if (a2 == 6)
  {
    v14 = 0x64757469676E6F6CLL;
    goto LABEL_32;
  }

  v13 = 0xE800000000000000;
  if (v11 != 0x7354657461647075)
  {
LABEL_43:
    v15 = sub_24A4AC270();
    goto LABEL_44;
  }

LABEL_41:
  if (v12 != v13)
  {
    goto LABEL_43;
  }

  v15 = 1;
LABEL_44:

  return v15 & 1;
}

uint64_t sub_24A3DF6A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x736C6562616CLL;
  if (a1 == 5)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v4 = 0x756363616E497369;
    v5 = 0xEC00000065746172;
  }

  v6 = 0xD000000000000012;
  v7 = 0x800000024A4AE0B0;
  if (a1 != 3)
  {
    v6 = 0x6D617473656D6974;
    v7 = 0xE900000000000070;
  }

  if (a1 <= 4u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x64757469676E6F6CLL;
  v9 = 0xE900000000000065;
  if (a1 != 1)
  {
    v8 = 0x656475746974616CLL;
    v9 = 0xE800000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x73736572646461;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE900000000000065;
        if (v10 != 0x64757469676E6F6CLL)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v12 = 0xE800000000000000;
        if (v10 != 0x656475746974616CLL)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x73736572646461)
      {
        goto LABEL_40;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x736C6562616CLL)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v12 = 0xEC00000065746172;
      if (v10 != 0x756363616E497369)
      {
LABEL_40:
        v13 = sub_24A4AC270();
        goto LABEL_41;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0x800000024A4AE0B0;
    if (v10 != 0xD000000000000012)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v12 = 0xE900000000000070;
    if (v10 != 0x6D617473656D6974)
    {
      goto LABEL_40;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_40;
  }

  v13 = 1;
LABEL_41:

  return v13 & 1;
}

uint64_t sub_24A3DF8F0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656D6F683C21245FLL;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6B726F773C21245FLL;
    }

    else
    {
      v4 = 0x656D6F683C21245FLL;
    }

    v5 = 0xEC0000005F24213ELL;
  }

  else if (a1 == 2)
  {
    v4 = 0x6F6863733C21245FLL;
    v5 = 0xEE005F24213E6C6FLL;
  }

  else
  {
    if (a1 == 3)
    {
      v4 = 0x3E6D79673C21245FLL;
    }

    else
    {
      v4 = 0x6568746F3C21245FLL;
    }

    if (v3 == 3)
    {
      v5 = 0xEB000000005F2421;
    }

    else
    {
      v5 = 0xED00005F24213E72;
    }
  }

  v6 = 0x6F6863733C21245FLL;
  v7 = 0xEE005F24213E6C6FLL;
  v8 = 0x3E6D79673C21245FLL;
  v9 = 0xEB000000005F2421;
  if (a2 != 3)
  {
    v8 = 0x6568746F3C21245FLL;
    v9 = 0xED00005F24213E72;
  }

  if (a2 != 2)
  {
    v6 = v8;
    v7 = v9;
  }

  if (a2)
  {
    v2 = 0x6B726F773C21245FLL;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v6;
  }

  if (a2 <= 1u)
  {
    v11 = 0xEC0000005F24213ELL;
  }

  else
  {
    v11 = v7;
  }

  if (v4 == v10 && v5 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_24A4AC270();
  }

  return v12 & 1;
}

uint64_t sub_24A3DFAAC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7472656C61;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6F43726576726573;
    }

    else
    {
      v4 = 0x7472656C61;
    }

    if (v3)
    {
      v5 = 0xED0000747865746ELL;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x746E6F4361746164;
    v5 = 0xEB00000000747865;
  }

  else if (a1 == 3)
  {
    v4 = 0x6174536863746566;
    v5 = 0xEB00000000737574;
  }

  else
  {
    v4 = 0x52646E616D6D6F63;
    v5 = 0xEF65736E6F707365;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE500000000000000;
    v7 = 0x6F43726576726573;
    v8 = 0xED0000747865746ELL;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0x746E6F4361746164;
    v6 = 0xEB00000000747865;
    v7 = 0x6174536863746566;
    v8 = 0xEB00000000737574;
    if (a2 != 3)
    {
      v7 = 0x52646E616D6D6F63;
      v8 = 0xEF65736E6F707365;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v8;
  }

  if (v4 == v10 && v5 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_24A4AC270();
  }

  return v12 & 1;
}

uint64_t sub_24A3DFC74(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v5 = 0xD000000000000013;
      v6 = 0x800000024A4AE5F0;
    }

    else
    {
      if (a1 == 4)
      {
        v5 = 0x457972616D697270;
      }

      else
      {
        v5 = 0x657469726F766166;
      }

      if (v2 == 4)
      {
        v6 = 0xEC0000006C69616DLL;
      }

      else
      {
        v6 = 0xE900000000000073;
      }
    }
  }

  else
  {
    v3 = 0x800000024A4AE5D0;
    v4 = 0xD000000000000011;
    if (a1 != 1)
    {
      v4 = 0x61636F4C65646968;
      v3 = 0xEC0000006E6F6974;
    }

    if (a1)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0xD000000000000013;
    }

    if (v2)
    {
      v6 = v3;
    }

    else
    {
      v6 = 0x800000024A4AE5B0;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v7 = 0xD000000000000011;
      }

      else
      {
        v7 = 0x61636F4C65646968;
      }

      if (a2 == 1)
      {
        v8 = 0x800000024A4AE5D0;
      }

      else
      {
        v8 = 0xEC0000006E6F6974;
      }

      if (v5 != v7)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    v9 = "allowFriendRequests";
    goto LABEL_34;
  }

  if (a2 == 3)
  {
    v9 = "shouldReceiveEmails";
LABEL_34:
    v8 = (v9 - 32) | 0x8000000000000000;
    if (v5 != 0xD000000000000013)
    {
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  if (a2 == 4)
  {
    v8 = 0xEC0000006C69616DLL;
    if (v5 != 0x457972616D697270)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v8 = 0xE900000000000073;
    if (v5 != 0x657469726F766166)
    {
LABEL_39:
      v10 = sub_24A4AC270();
      goto LABEL_40;
    }
  }

LABEL_37:
  if (v6 != v8)
  {
    goto LABEL_39;
  }

  v10 = 1;
LABEL_40:

  return v10 & 1;
}

uint64_t sub_24A3DFE78(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x454D45564153;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x5441434552504544;
    }

    else
    {
      v4 = 0x454D45564153;
    }

    if (v3)
    {
      v5 = 0xEA00000000004445;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xD000000000000015;
    v5 = 0x800000024A4AE230;
  }

  else if (a1 == 3)
  {
    v4 = 0x496B726F7774656ELL;
    v5 = 0xEC00000065757373;
  }

  else
  {
    v4 = 0x696C616974696E69;
    v5 = 0xEE006E6F6974617ALL;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE600000000000000;
    v7 = 0x5441434552504544;
    v8 = 0xEA00000000004445;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0xD000000000000015;
    v6 = 0x800000024A4AE230;
    v7 = 0x496B726F7774656ELL;
    v8 = 0xEC00000065757373;
    if (a2 != 3)
    {
      v7 = 0x696C616974696E69;
      v8 = 0xEE006E6F6974617ALL;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v8;
  }

  if (v4 == v10 && v5 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_24A4AC270();
  }

  return v12 & 1;
}

uint64_t sub_24A3E0028(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000072;
  v3 = 0x756F487472617473;
  v4 = a1;
  v5 = 0xE800000000000000;
  v6 = 0x737961446E617073;
  if (a1 != 5)
  {
    v6 = 0x7A5465636E6566;
    v5 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6E694D646E65;
  if (a1 != 3)
  {
    v8 = 0x6557664F73796164;
    v7 = 0xEA00000000006B65;
  }

  if (a1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x6E694D7472617473;
  if (a1 != 1)
  {
    v10 = 0x72756F48646E65;
    v9 = 0xE700000000000000;
  }

  if (!a1)
  {
    v10 = 0x756F487472617473;
    v9 = 0xE900000000000072;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x6E694D7472617473)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x72756F48646E65)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x737961446E617073)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x7A5465636E6566)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v2 = 0xE600000000000000;
      if (v11 != 0x6E694D646E65)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v3 = 0x6557664F73796164;
    v2 = 0xEA00000000006B65;
  }

  if (v11 != v3)
  {
LABEL_36:
    v13 = sub_24A4AC270();
    goto LABEL_37;
  }

LABEL_33:
  if (v12 != v2)
  {
    goto LABEL_36;
  }

  v13 = 1;
LABEL_37:

  return v13 & 1;
}

uint64_t sub_24A3E0248(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000010;
      v4 = 0x800000024A4AE2F0;
    }

    else
    {
      v3 = 0x6E6F697461636F6CLL;
      v4 = 0xEE00656372756F53;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x6E6F697461636F6CLL;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v6 = 0x800000024A4AE2F0;
      if (v3 != 0xD000000000000010)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v6 = 0xEE00656372756F53;
      if (v3 != 0x6E6F697461636F6CLL)
      {
LABEL_26:
        v7 = sub_24A4AC270();
        goto LABEL_27;
      }
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x6E6F697461636F6CLL;
    }

    else
    {
      v5 = 25705;
    }

    if (a2)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE200000000000000;
    }

    if (v3 != v5)
    {
      goto LABEL_26;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_26;
  }

  v7 = 1;
LABEL_27:

  return v7 & 1;
}

uint64_t sub_24A3E03B4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000044;
  v3 = 0x49555565726F7473;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x73614865726F7473;
    }

    else
    {
      v5 = 0x6D614E74726F6873;
    }

    if (v4 == 2)
    {
      v6 = 0xED00006567616D49;
    }

    else
    {
      v6 = 0xE900000000000065;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x4E79616C70736964;
    }

    else
    {
      v5 = 0x49555565726F7473;
    }

    if (v4)
    {
      v6 = 0xEB00000000656D61;
    }

    else
    {
      v6 = 0xE900000000000044;
    }
  }

  v7 = 0x73614865726F7473;
  v8 = 0xED00006567616D49;
  if (a2 != 2)
  {
    v7 = 0x6D614E74726F6873;
    v8 = 0xE900000000000065;
  }

  if (a2)
  {
    v3 = 0x4E79616C70736964;
    v2 = 0xEB00000000656D61;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24A4AC270();
  }

  return v11 & 1;
}

_BYTE *FMFAddLocationAlertAction.__allocating_init(friendId:followerIds:emails:phoneNumbers:location:address:label:addressType:radius:locationAlertTarget:triggerType:repeating:schedule:ckRecordName:ckRecordZoneOwnerName:acceptanceStatus:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, unsigned __int8 *a12, unsigned __int8 *a13, unsigned __int8 *a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int8 *a21)
{
  v127 = a5;
  v124 = a4;
  v125 = a3;
  v129 = a2;
  v115 = a1;
  v123 = a18;
  v126 = a16;
  v128 = a11;
  v24 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  MEMORY[0x28223BE20](v24 - 8);
  v121 = &v105 - v25;
  v26 = sub_24A3C9CEC(&qword_27EF3F470, &qword_24A4B6960);
  MEMORY[0x28223BE20](v26 - 8);
  v118 = &v105 - v27;
  v117 = type metadata accessor for FMFLocationAlert(0);
  MEMORY[0x28223BE20](v117);
  v119 = (&v105 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));

  v122 = v21;
  v29 = swift_allocObject();
  v116 = *a12;
  v30 = *a13;
  v31 = a6;
  v32 = *a14;
  v33 = *a21;
  v34 = *(type metadata accessor for FMFLocation(0) + 44);
  memcpy(v134, (v31 + v34), 0x161uLL);
  if (sub_24A3B9C24(v134) == 1)
  {

    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v35 = sub_24A4AB630();
    sub_24A378E18(v35, qword_27EF4E260);
    v36 = sub_24A4AB600();
    v37 = sub_24A4ABCC0();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_24A376000, v36, v37, "Location must have an coordinates.", v38, 2u);
      MEMORY[0x24C219130](v38, -1, -1);
    }

    sub_24A3E2578();
    swift_allocError();
    *v39 = 0xD000000000000013;
    *(v39 + 8) = 0x800000024A4AFAE0;
    *(v39 + 16) = 0;
    *(v39 + 24) = 0;
    *(v39 + 32) = 0;
    swift_willThrow();
    goto LABEL_15;
  }

  LODWORD(v112) = v33;
  v113 = v32;
  v114 = v30;
  v120 = a20;
  v40 = v123;
  v41 = v127;
  v42 = v134[38];
  memcpy(v133, (v31 + v34), 0x161uLL);
  v43 = sub_24A3B9C24(v133);
  v44 = v124;
  if (v43 == 1 || (memcpy(v132, v133, sizeof(v132)), sub_24A3D77F8(v132) == 1))
  {
    v45 = v42;

    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v46 = sub_24A4AB630();
    sub_24A378E18(v46, qword_27EF4E260);
    v47 = sub_24A4AB600();
    v48 = sub_24A4ABCC0();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = v31;
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_24A376000, v47, v48, "Location must have an address.", v50, 2u);
      v51 = v50;
      v31 = v49;
      MEMORY[0x24C219130](v51, -1, -1);
    }

    v52 = 0x800000024A4AFB00;
    sub_24A3E2578();
    swift_allocError();
    v54 = 0xD000000000000010;
LABEL_14:
    *v53 = v54;
    *(v53 + 8) = v52;
    *(v53 + 16) = 0;
    *(v53 + 24) = 0;
    *(v53 + 32) = 0;
    swift_willThrow();

LABEL_15:
    sub_24A3E267C(v31, type metadata accessor for FMFLocation);
    sub_24A37EF2C(v126, &qword_27EF3F470, &qword_24A4B6960);
    swift_deallocPartialClassInstance();
    return v29;
  }

  v56 = v44;
  if (!v44 || !*(v44 + 16))
  {
    if (v41)
    {
      if (!(*(v41 + 16) | v129))
      {
LABEL_21:
        v45 = v42;

        if (qword_27EF3EBF8 != -1)
        {
          swift_once();
        }

        v57 = sub_24A4AB630();
        sub_24A378E18(v57, qword_27EF4E260);
        v58 = sub_24A4AB600();
        v59 = sub_24A4ABCC0();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = v31;
          v61 = swift_slowAlloc();
          *v61 = 0;
          _os_log_impl(&dword_24A376000, v58, v59, "Email, phone numbers, friendId all cannot be empty.", v61, 2u);
          v62 = v61;
          v31 = v60;
          MEMORY[0x24C219130](v62, -1, -1);
        }

        v52 = 0x800000024A4AFB20;
        sub_24A3E2578();
        swift_allocError();
        v54 = 0xD00000000000001ELL;
        goto LABEL_14;
      }
    }

    else if (!v129)
    {
      goto LABEL_21;
    }
  }

  if ((v114 & 1) == 0)
  {
    v63 = v42;
    v65 = v42;
    sub_24A37B740(v133, v131, &unk_27EF404E0, &unk_24A4B5230);

    if (v129)
    {
      goto LABEL_30;
    }

LABEL_33:
    sub_24A37EF2C(v133, &unk_27EF404E0, &unk_24A4B5230);

    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v66 = sub_24A4AB630();
    sub_24A378E18(v66, qword_27EF4E260);
    v67 = sub_24A4AB600();
    v68 = sub_24A4ABCC0();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_24A376000, v67, v68, "Alert me should be with a friendId only.", v69, 2u);
      MEMORY[0x24C219130](v69, -1, -1);
    }

    sub_24A3E2578();
    swift_allocError();
    *v70 = xmmword_24A4B58F0;
    *(v70 + 16) = xmmword_24A4B5900;
    *(v70 + 32) = 1;
    goto LABEL_48;
  }

  LODWORD(v111) = sub_24A4AC270();
  v63 = v42;
  v64 = v42;
  sub_24A37B740(v133, v131, &unk_27EF404E0, &unk_24A4B5230);

  if ((v111 & 1) != 0 && !v129)
  {
    goto LABEL_33;
  }

LABEL_30:
  if (v113 > 1 && v113 != 2)
  {

    goto LABEL_42;
  }

  LODWORD(v111) = sub_24A4AC270();

  if (v111)
  {
LABEL_42:
    v71 = type metadata accessor for FMFSchedule(0);
    if ((*(*(v71 - 8) + 48))(v126, 1, v71) != 1)
    {
      goto LABEL_49;
    }

    sub_24A37EF2C(v133, &unk_27EF404E0, &unk_24A4B5230);

    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v72 = sub_24A4AB630();
    sub_24A378E18(v72, qword_27EF4E260);
    v73 = sub_24A4AB600();
    v74 = sub_24A4ABCC0();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_24A376000, v73, v74, "Scheduled fences need to have a schedule", v75, 2u);
      MEMORY[0x24C219130](v75, -1, -1);
    }

    sub_24A3E2578();
    swift_allocError();
    *v76 = xmmword_24A4B58E0;
    *(v76 + 16) = 0;
    *(v76 + 24) = 0;
    *(v76 + 32) = 0;
LABEL_48:
    swift_willThrow();

    goto LABEL_15;
  }

LABEL_49:
  v77 = v128;
  if (v128)
  {

    v111 = a10;
    v78._countAndFlagsBits = a10;
    v78._object = v77;
    FMFDefaultLabel.init(rawValue:)(v78);
    if (v131[0] == 5)
    {
      v79 = 259;
    }

    else
    {
      v79 = 3;
    }

    v110 = v79;
  }

  else
  {
    v111 = 0;
    v110 = 0;
  }

  v80 = v112;
  v122 = v63;
  v112 = a19;
  v109 = a17;
  if (v80 != 3)
  {
    goto LABEL_62;
  }

  if (v114)
  {
    v81 = sub_24A4AC270();

    if (v81 & 1) != 0 && (a15)
    {
      goto LABEL_59;
    }

LABEL_61:
    LOBYTE(v80) = 2;
    goto LABEL_62;
  }

  if ((a15 & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_59:
  LOBYTE(v80) = 0;
LABEL_62:
  v82 = v118;
  sub_24A37B740(v126, v118, &qword_27EF3F470, &qword_24A4B6960);
  v107 = sub_24A4AAAD0();
  v83 = *(v107 - 8);
  v106 = *(v83 + 56);
  v108 = v83 + 56;
  v106(v121, 1, 1, v107);
  v84 = v119;
  *v119 = 0;
  v84[1] = 0;
  *(v84 + 42) = 1;
  *(v84 + 43) = a15 & 1;
  v85 = v117;
  sub_24A37B740(v82, v84 + *(v117 + 48), &qword_27EF3F470, &qword_24A4B6960);
  v86 = v113;
  *(v84 + 40) = v114;
  *(v84 + 41) = v86;
  v87 = (v84 + v85[13]);
  *v87 = v109;
  v87[1] = v40;
  v88 = (v84 + v85[14]);
  v89 = v120;
  *v88 = v112;
  v88[1] = v89;
  *(v84 + v85[15]) = v80;
  *(v84 + v85[16]) = v127;
  *(v84 + v85[17]) = v56;
  *(v84 + v85[18]) = v125;
  v90 = (v84 + v85[19]);
  v91 = v129;
  *v90 = v115;
  v90[1] = v91;
  v92 = v122;
  [v122 coordinate];
  v84[2] = v93;
  [v92 coordinate];
  v84[3] = v94;
  v95 = v85[26];
  v96 = [v92 timestamp];
  sub_24A4AAAA0();

  v106(v84 + v95, 0, 1, v107);
  *(v84 + 4) = a7;
  memcpy(v131, v132, sizeof(v131));
  nullsub_1();
  memcpy(v84 + v85[23], v131, 0x130uLL);
  memcpy(v130, v132, sizeof(v130));
  v97 = FMFAddress.displayAddress.getter();
  v98 = (v84 + v85[22]);
  *v98 = v97;
  v98[1] = v99;
  v100 = v84 + v85[20];
  v101 = v128;
  *v100 = v111;
  *(v100 + 1) = v101;
  *(v100 + 8) = v110;
  *(v84 + v85[21]) = v116;
  sub_24A37B740(v121, v84 + v85[27], &qword_27EF3F460, &unk_24A4B53B0);
  *(v84 + v85[24]) = 1;
  if (v114)
  {
    v102 = 1;
  }

  else
  {
    v102 = sub_24A4AC270();
  }

  sub_24A37EF2C(v121, &qword_27EF3F460, &unk_24A4B53B0);
  sub_24A37EF2C(v118, &qword_27EF3F470, &qword_24A4B6960);
  v103 = v102 & 1;
  v104 = v119;
  *(v119 + *(v117 + 100)) = v103;
  sub_24A3E267C(v31, type metadata accessor for FMFLocation);
  sub_24A3E25CC(v104, v29 + OBJC_IVAR____TtC7FMFCore25FMFAddLocationAlertAction_locationAlert);
  *(v29 + 16) = 1;
  sub_24A37EF2C(v126, &qword_27EF3F470, &qword_24A4B6960);
  return v29;
}

uint64_t FMFAddLocationAlertAction.init(friendId:followerIds:emails:phoneNumbers:location:address:label:addressType:radius:locationAlertTarget:triggerType:repeating:schedule:ckRecordName:ckRecordZoneOwnerName:acceptanceStatus:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, unsigned __int8 *a12, unsigned __int8 *a13, unsigned __int8 *a14, unsigned __int8 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int8 *a21)
{
  v117 = a3;
  v115 = a5;
  v116 = a4;
  v114 = a2;
  v107 = a1;
  v119 = a16;
  v113 = a11;
  v23 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  MEMORY[0x28223BE20](v23 - 8);
  v112 = &v95 - v24;
  v25 = sub_24A3C9CEC(&qword_27EF3F470, &qword_24A4B6960);
  MEMORY[0x28223BE20](v25 - 8);
  v111 = &v95 - v26;
  v109 = type metadata accessor for FMFLocationAlert(0);
  MEMORY[0x28223BE20](v109);
  v110 = (&v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));

  v108 = *a12;
  v28 = *a13;
  v29 = *a14;
  v30 = *a21;
  v31 = *(type metadata accessor for FMFLocation(0) + 44);
  v120 = a6;
  memcpy(v125, (a6 + v31), 0x161uLL);
  if (sub_24A3B9C24(v125) == 1)
  {

    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v32 = sub_24A4AB630();
    sub_24A378E18(v32, qword_27EF4E260);
    v33 = sub_24A4AB600();
    v34 = sub_24A4ABCC0();
    v35 = os_log_type_enabled(v33, v34);
    v36 = v119;
    if (v35)
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_24A376000, v33, v34, "Location must have an coordinates.", v37, 2u);
      MEMORY[0x24C219130](v37, -1, -1);
    }

    sub_24A3E2578();
    swift_allocError();
    *v38 = 0xD000000000000013;
    *(v38 + 8) = 0x800000024A4AFAE0;
    *(v38 + 16) = 0;
    *(v38 + 24) = 0;
    *(v38 + 32) = 0;
    swift_willThrow();
    goto LABEL_15;
  }

  v105 = a20;
  v106 = a18;
  v104 = v28;
  v39 = v125[38];
  memcpy(v124, (v120 + v31), 0x161uLL);
  v40 = sub_24A3B9C24(v124);
  v36 = v119;
  v42 = v113;
  v41 = v114;
  v44 = v115;
  v43 = v116;
  if (v40 == 1 || (memcpy(v123, v124, sizeof(v123)), sub_24A3D77F8(v123) == 1))
  {
    v45 = v39;

    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v46 = sub_24A4AB630();
    sub_24A378E18(v46, qword_27EF4E260);
    v47 = sub_24A4AB600();
    v48 = sub_24A4ABCC0();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_24A376000, v47, v48, "Location must have an address.", v49, 2u);
      MEMORY[0x24C219130](v49, -1, -1);
    }

    v50 = 0x800000024A4AFB00;
    sub_24A3E2578();
    swift_allocError();
    v52 = 0xD000000000000010;
LABEL_14:
    *v51 = v52;
    *(v51 + 8) = v50;
    *(v51 + 16) = 0;
    *(v51 + 24) = 0;
    *(v51 + 32) = 0;
    swift_willThrow();

LABEL_15:
    sub_24A3E267C(v120, type metadata accessor for FMFLocation);
    sub_24A37EF2C(v36, &qword_27EF3F470, &qword_24A4B6960);
    type metadata accessor for FMFAddLocationAlertAction(0);
    v53 = v118;
    swift_deallocPartialClassInstance();
    return v53;
  }

  if (!v43 || !*(v43 + 16))
  {
    if (v44)
    {
      if (!(*(v44 + 16) | v41))
      {
LABEL_21:
        v45 = v39;

        if (qword_27EF3EBF8 != -1)
        {
          swift_once();
        }

        v55 = sub_24A4AB630();
        sub_24A378E18(v55, qword_27EF4E260);
        v56 = sub_24A4AB600();
        v57 = sub_24A4ABCC0();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          *v58 = 0;
          _os_log_impl(&dword_24A376000, v56, v57, "Email, phone numbers, friendId all cannot be empty.", v58, 2u);
          MEMORY[0x24C219130](v58, -1, -1);
        }

        v50 = 0x800000024A4AFB20;
        sub_24A3E2578();
        swift_allocError();
        v52 = 0xD00000000000001ELL;
        goto LABEL_14;
      }
    }

    else if (!v41)
    {
      goto LABEL_21;
    }
  }

  if (v104)
  {
    v102 = sub_24A4AC270();
    v59 = v39;
    sub_24A37B740(v124, v122, &unk_27EF404E0, &unk_24A4B5230);

    if ((v102 & 1) != 0 && !v41)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v65 = v39;
    sub_24A37B740(v124, v122, &unk_27EF404E0, &unk_24A4B5230);

    if (!v41)
    {
LABEL_30:
      sub_24A37EF2C(v124, &unk_27EF404E0, &unk_24A4B5230);

      if (qword_27EF3EBF8 != -1)
      {
        swift_once();
      }

      v60 = sub_24A4AB630();
      sub_24A378E18(v60, qword_27EF4E260);
      v61 = sub_24A4AB600();
      v62 = sub_24A4ABCC0();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_24A376000, v61, v62, "Alert me should be with a friendId only.", v63, 2u);
        MEMORY[0x24C219130](v63, -1, -1);
      }

      sub_24A3E2578();
      swift_allocError();
      *v64 = xmmword_24A4B58F0;
      *(v64 + 16) = xmmword_24A4B5900;
      *(v64 + 32) = 1;
LABEL_46:
      swift_willThrow();

      goto LABEL_15;
    }
  }

  v103 = v39;
  if (v29 > 2)
  {
  }

  else
  {
    v102 = sub_24A4AC270();

    v39 = v103;
    if ((v102 & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  v66 = type metadata accessor for FMFSchedule(0);
  if ((*(*(v66 - 8) + 48))(v36, 1, v66) == 1)
  {
    sub_24A37EF2C(v124, &unk_27EF404E0, &unk_24A4B5230);

    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v67 = sub_24A4AB630();
    sub_24A378E18(v67, qword_27EF4E260);
    v68 = sub_24A4AB600();
    v69 = sub_24A4ABCC0();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_24A376000, v68, v69, "Scheduled fences need to have a schedule", v70, 2u);
      MEMORY[0x24C219130](v70, -1, -1);
    }

    sub_24A3E2578();
    swift_allocError();
    *v71 = xmmword_24A4B58E0;
    *(v71 + 16) = 0;
    *(v71 + 24) = 0;
    *(v71 + 32) = 0;
    goto LABEL_46;
  }

LABEL_47:
  if (v42)
  {

    v101 = a10;
    v72._countAndFlagsBits = a10;
    v72._object = v42;
    FMFDefaultLabel.init(rawValue:)(v72);
    if (v122[0] == 5)
    {
      v73 = 259;
    }

    else
    {
      v73 = 3;
    }

    v100 = v73;
  }

  else
  {
    v101 = 0;
    v100 = 0;
  }

  v102 = a15;
  v99 = a19;
  v98 = a17;
  if (v30 != 3)
  {
    goto LABEL_60;
  }

  if (v104)
  {
    v74 = sub_24A4AC270();

    if (v74 & 1) != 0 && (v102)
    {
      goto LABEL_57;
    }

LABEL_59:
    LOBYTE(v30) = 2;
    goto LABEL_60;
  }

  if ((v102 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_57:
  LOBYTE(v30) = 0;
LABEL_60:
  sub_24A37B740(v36, v111, &qword_27EF3F470, &qword_24A4B6960);
  v96 = sub_24A4AAAD0();
  v75 = *(v96 - 8);
  v95 = *(v75 + 56);
  v97 = v75 + 56;
  v95(v112, 1, 1, v96);
  v77 = v110;
  v76 = v111;
  *v110 = 0;
  v77[1] = 0;
  *(v77 + 42) = 1;
  *(v77 + 43) = v102 & 1;
  v78 = v109;
  sub_24A37B740(v76, v77 + *(v109 + 48), &qword_27EF3F470, &qword_24A4B6960);
  *(v77 + 40) = v104;
  *(v77 + 41) = v29;
  v79 = (v77 + v78[13]);
  v80 = v106;
  *v79 = v98;
  v79[1] = v80;
  v81 = (v77 + v78[14]);
  v82 = v105;
  *v81 = v99;
  v81[1] = v82;
  *(v77 + v78[15]) = v30;
  *(v77 + v78[16]) = v44;
  *(v77 + v78[17]) = v43;
  *(v77 + v78[18]) = v117;
  v83 = (v77 + v78[19]);
  *v83 = v107;
  v83[1] = v41;
  v84 = v103;
  [v103 coordinate];
  v77[2] = v85;
  [v84 coordinate];
  v77[3] = v86;
  v87 = v78[26];
  v88 = [v84 timestamp];
  sub_24A4AAAA0();

  v95(v77 + v87, 0, 1, v96);
  *(v77 + 4) = a7;
  memcpy(v122, v123, sizeof(v122));
  nullsub_1();
  memcpy(v77 + v78[23], v122, 0x130uLL);
  memcpy(v121, v123, sizeof(v121));
  v89 = FMFAddress.displayAddress.getter();
  v90 = (v77 + v78[22]);
  *v90 = v89;
  v90[1] = v91;
  v92 = v77 + v78[20];
  *v92 = v101;
  *(v92 + 1) = v42;
  *(v92 + 8) = v100;
  *(v77 + v78[21]) = v108;
  sub_24A37B740(v112, v77 + v78[27], &qword_27EF3F460, &unk_24A4B53B0);
  *(v77 + v78[24]) = 1;
  if (v104)
  {
    v93 = 1;
  }

  else
  {
    v93 = sub_24A4AC270();
  }

  sub_24A37EF2C(v112, &qword_27EF3F460, &unk_24A4B53B0);
  sub_24A37EF2C(v111, &qword_27EF3F470, &qword_24A4B6960);
  v94 = v110;
  *(v110 + *(v109 + 100)) = v93 & 1;
  sub_24A3E267C(v120, type metadata accessor for FMFLocation);
  v53 = v118;
  sub_24A3E25CC(v94, v118 + OBJC_IVAR____TtC7FMFCore25FMFAddLocationAlertAction_locationAlert);
  *(v53 + 16) = 1;
  sub_24A37EF2C(v119, &qword_27EF3F470, &qword_24A4B6960);
  return v53;
}

uint64_t sub_24A3E22CC()
{
  v0 = sub_24A4AC420();
  MEMORY[0x24C217D50](v0);

  MEMORY[0x24C217D50](2016419898, 0xE400000000000000);
  sub_24A3BAF14();
  v1 = sub_24A4AB9E0();
  MEMORY[0x24C217D50](v1);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  sub_24A4ABF50();
  MEMORY[0x24C217D50](0x6E6F697461636F6CLL, 0xEF203A7472656C41);
  type metadata accessor for FMFLocationAlert(0);
  sub_24A4AC030();

  MEMORY[0x24C217D50](0, 0xE000000000000000);

  return 60;
}

uint64_t FMFAddLocationAlertAction.__deallocating_deinit()
{
  sub_24A3E267C(v0 + OBJC_IVAR____TtC7FMFCore25FMFAddLocationAlertAction_locationAlert, type metadata accessor for FMFLocationAlert);

  return swift_deallocClassInstance();
}

unint64_t sub_24A3E2578()
{
  result = qword_27EF3F5B0;
  if (!qword_27EF3F5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F5B0);
  }

  return result;
}

uint64_t sub_24A3E25CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMFLocationAlert(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for FMFAddLocationAlertAction(uint64_t a1)
{
  result = qword_27EF3F5B8;
  if (!qword_27EF3F5B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A3E267C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A3E2778()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  v3 = sub_24A4AB820();
  [v2 removeObserver:v0 name:v3 object:0];

  v4 = [v1 defaultCenter];
  [v4 removeObserver:v0 name:*MEMORY[0x277D25CA0] object:0];

  sub_24A3C8470(v0 + 16);
  return v0;
}

uint64_t sub_24A3E285C()
{
  sub_24A3E2778();

  return swift_deallocClassInstance();
}

void sub_24A3E2AAC()
{
  if ([v0 isCancelled])
  {
    if (qword_27EF3EC00 != -1)
    {
      swift_once();
    }

    v1 = sub_24A4AB630();
    sub_24A378E18(v1, qword_27EF4E278);
    oslog = sub_24A4AB600();
    v2 = sub_24A4ABCE0();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_24A376000, oslog, v2, "FMReverseGeocodingOperation: operation cancelled", v3, 2u);
      MEMORY[0x24C219130](v3, -1, -1);
    }
  }
}

void sub_24A3E2C00()
{
  v1 = v0;
  v2 = sub_24A3C9CEC(&qword_27EF3F650, &qword_24A4B5A10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24 - v3;
  v5 = sub_24A4AAB80();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMReverseGeocodingOperation(0);
  v27.receiver = v0;
  v27.super_class = v9;
  objc_msgSendSuper2(&v27, sel_start);
  v25 = objc_opt_self();
  v10 = [v25 sharedService];
  v11 = [v10 defaultTraits];

  sub_24A3E3684();
  v12 = &v1[OBJC_IVAR____TtC7FMFCore27FMReverseGeocodingOperation_request];
  v13 = *&v1[OBJC_IVAR____TtC7FMFCore27FMReverseGeocodingOperation_request + 16];
  sub_24A462090(v13);
  v15 = v14;

  v16 = type metadata accessor for FMReverseGeocodingRequest(0);
  sub_24A38D9BC(&v12[*(v16 + 24)], v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_24A3E36D0(v4);
  }

  else
  {
    v24 = v1;
    (*(v6 + 32))(v8, v4, v5);
    sub_24A4AAB30();
    sub_24A4AAB60();

    [v11 clearDeviceDisplayLanguages];
    if (v11)
    {
      v17 = v11;
      v18 = sub_24A4AB820();

      [v17 addDeviceDisplayLanguage_];

      (*(v6 + 8))(v8, v5);
    }

    else
    {
      (*(v6 + 8))(v8, v5);
    }

    v1 = v24;
  }

  if (v12[*(v16 + 32)] == 1 && v15)
  {
    [v15 setHorizontalAccuracy_];
  }

  v19 = [v25 sharedService];
  v20 = [v19 ticketForReverseGeocodeLocation:v15 traits:v11];

  if (v20)
  {
    v21 = swift_allocObject();
    *(v21 + 16) = v1;
    aBlock[4] = sub_24A3E3738;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A3E33E8;
    aBlock[3] = &unk_285D86050;
    v22 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    v23 = v1;

    [v20 submitWithHandler:v22 timeout:25 networkActivity:0];
    swift_unknownObjectRelease_n();

    _Block_release(v22);
  }

  else
  {
  }
}

void sub_24A3E300C(unint64_t a1, id a2, char *a3)
{
  v6 = &OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_preferences;
  v7 = &off_278FE1000;
  if (a2)
  {
    v8 = a2;
    if (qword_27EF3EC00 != -1)
    {
      swift_once();
    }

    v9 = sub_24A4AB630();
    sub_24A378E18(v9, qword_27EF4E278);
    v10 = a2;
    v11 = sub_24A4AB600();
    v12 = sub_24A4ABCC0();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v30 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v15 = sub_24A4AC310();
      v17 = sub_24A37BD58(v15, v16, &v30);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_24A376000, v11, v12, "FMReverseGeocodingOperation: reverse geocoding completed with error: %s", v13, 0xCu);
      sub_24A37EEE0(v14);
      v6 = &OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_preferences;
      MEMORY[0x24C219130](v14, -1, -1);
      v18 = v13;
      v7 = &off_278FE1000;
      MEMORY[0x24C219130](v18, -1, -1);
    }

    v19 = *&a3[v6[19]];
    v20 = a2;
    v19(0, a2);

    [a3 v7[230]];
  }

  if (a1)
  {
    if (a1 >> 62)
    {
      if (!sub_24A4AC060())
      {
        return;
      }
    }

    else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x24C218380](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      swift_unknownObjectRetain();
    }

    if (qword_27EF3EC00 != -1)
    {
      swift_once();
    }

    v21 = sub_24A4AB630();
    sub_24A378E18(v21, qword_27EF4E278);
    swift_unknownObjectRetain();
    v22 = sub_24A4AB600();
    v23 = sub_24A4ABCE0();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 136315138;
      v30 = 0;
      v31 = 0xE000000000000000;
      v32 = v25;
      sub_24A3C9CEC(&unk_27EF3F660, &qword_24A4B5A18);
      sub_24A4AC030();
      v26 = sub_24A37BD58(v30, v31, &v32);

      *(v24 + 4) = v26;
      _os_log_impl(&dword_24A376000, v22, v23, "FMReverseGeocodingOperation: reverse geocoding completed with item: %s", v24, 0xCu);
      sub_24A37EEE0(v25);
      v27 = v25;
      v7 = &off_278FE1000;
      MEMORY[0x24C219130](v27, -1, -1);
      MEMORY[0x24C219130](v24, -1, -1);
    }

    v28 = *&a3[v6[19]];
    v29 = swift_unknownObjectRetain();
    v28(v29, a2);
    swift_unknownObjectRelease();
    [a3 v7[230]];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_24A3E33E8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_24A3C9CEC(&unk_27EF3F660, &qword_24A4B5A18);
    v4 = sub_24A4ABA70();
  }

  v6 = a3;
  v5(v4, a3);
}

id sub_24A3E3500()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMReverseGeocodingOperation(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for FMReverseGeocodingOperation(uint64_t a1)
{
  result = qword_27EF3F5E0;
  if (!qword_27EF3F5E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A3E35DC(uint64_t a1)
{
  result = type metadata accessor for FMReverseGeocodingRequest(319);
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

unint64_t sub_24A3E3684()
{
  result = qword_27EF3F658;
  if (!qword_27EF3F658)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF3F658);
  }

  return result;
}

uint64_t sub_24A3E36D0(uint64_t a1)
{
  v2 = sub_24A3C9CEC(&qword_27EF3F650, &qword_24A4B5A10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A3E3740(uint64_t a1)
{
  v2 = type metadata accessor for FMReverseGeocodingRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FMFShareLocationAction.__allocating_init(handles:friendId:duration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  *(v8 + 40) = a3;
  v9 = OBJC_IVAR____TtC7FMFCore22FMFShareLocationAction_duration;
  v10 = sub_24A4AAE20();
  (*(*(v10 - 8) + 32))(v8 + v9, a4, v10);
  *(v8 + 16) = 1;
  return v8;
}

uint64_t FMFShareLocationAction.init(handles:friendId:duration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  v6 = OBJC_IVAR____TtC7FMFCore22FMFShareLocationAction_duration;
  v7 = sub_24A4AAE20();
  (*(*(v7 - 8) + 32))(v4 + v6, a4, v7);
  *(v4 + 16) = 1;
  return v4;
}

uint64_t sub_24A3E38C4()
{
  sub_24A4ABF50();

  v1 = sub_24A4AC420();
  MEMORY[0x24C217D50](v1);

  MEMORY[0x24C217D50](2016419898, 0xE400000000000000);
  sub_24A3BAF14();
  v2 = sub_24A4AB9E0();
  MEMORY[0x24C217D50](v2);

  MEMORY[0x24C217D50](0xD000000000000010, 0x800000024A4AFD40);
  v3 = MEMORY[0x24C217E90](*(v0 + 24), MEMORY[0x277D837D0]);
  MEMORY[0x24C217D50](v3);

  MEMORY[0x24C217D50](0x6F69746172756420, 0xEB00000000203A6ELL);
  sub_24A4AAE20();
  sub_24A3E3A54();
  v4 = sub_24A4AC240();
  MEMORY[0x24C217D50](v4);

  return 60;
}

unint64_t sub_24A3E3A54()
{
  result = qword_27EF3F670;
  if (!qword_27EF3F670)
  {
    sub_24A4AAE20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F670);
  }

  return result;
}

uint64_t sub_24A3E3ADC()
{

  v1 = OBJC_IVAR____TtC7FMFCore22FMFShareLocationAction_duration;
  v2 = sub_24A4AAE20();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t FMFShareLocationAction.deinit()
{

  v1 = OBJC_IVAR____TtC7FMFCore22FMFShareLocationAction_duration;
  v2 = sub_24A4AAE20();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t FMFShareLocationAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC7FMFCore22FMFShareLocationAction_duration;
  v2 = sub_24A4AAE20();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FMFShareLocationAction(uint64_t a1)
{
  result = qword_27EF3F678;
  if (!qword_27EF3F678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A3E3CD8(uint64_t a1)
{
  result = sub_24A4AAE20();
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

uint64_t sub_24A3E3DC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_24A3E3E10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

BOOL sub_24A3E3E74(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v7, a1, v4);
  v8 = sub_24A4AC250();
  if (v8)
  {
    v9 = v8;
    (*(v3 + 8))(v6, a1);
  }

  else
  {
    v9 = swift_allocError();
    (*(v3 + 32))(v10, v6, a1);
  }

  v11 = sub_24A4AA940();

  v12 = sub_24A3E3FC8();
  return v12;
}

BOOL sub_24A3E3FC8()
{
  v1 = [v0 domain];
  v2 = sub_24A4AB850();
  v4 = v3;

  if (v2 == sub_24A4AB850() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_24A4AC270();

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  if ([v0 code] < 500)
  {
    return 0;
  }

  return [v0 code] < 600;
}

void sub_24A3E40B0()
{
  v121 = sub_24A4AAAD0();
  v103 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v108 = &v103 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for FMFLocation(0);
  v106 = *(v2 - 8);
  v107 = v2;
  MEMORY[0x28223BE20](v2);
  v109 = &v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FMFIntermediateFriend(0);
  v117 = *(v4 - 8);
  v118 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v103 - v8;
  v104 = v0;
  v10 = v0[2];
  v11 = *(v10 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v13 = 0;
    v119 = v11 - 1;
    v120 = v10 + 32;
LABEL_3:
    v114 = v12;
    v14 = (v120 + 408 * v13);
    v15 = v13;
    while (v15 < *(v10 + 16))
    {
      memcpy(v125, v14, 0x198uLL);
      v16 = LOBYTE(v125[2]);
      if (LOBYTE(v125[2]) && LOBYTE(v125[2]) != 1)
      {
        sub_24A3E5290(v125, v124);
LABEL_14:

LABEL_15:
        v12 = v114;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v122[0] = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24A3DBCA8(0, *(v12 + 16) + 1, 1);
          v12 = v122[0];
        }

        v21 = *(v12 + 16);
        v20 = *(v12 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_24A3DBCA8((v20 > 1), v21 + 1, 1);
          v12 = v122[0];
        }

        v13 = v15 + 1;
        *(v12 + 16) = v21 + 1;
        memcpy((v12 + 408 * v21 + 32), v125, 0x198uLL);
        if (v119 != v15)
        {
          goto LABEL_3;
        }

        goto LABEL_20;
      }

      v17 = sub_24A4AC270();
      sub_24A3E5290(v125, v124);

      if (v17)
      {
        goto LABEL_15;
      }

      if (!v16)
      {
        goto LABEL_14;
      }

      v18 = sub_24A4AC270();

      if (v18)
      {
        goto LABEL_15;
      }

      ++v15;
      sub_24A3E52EC(v125);
      v14 += 408;
      if (v11 == v15)
      {
        v12 = v114;
        goto LABEL_20;
      }
    }

    goto LABEL_92;
  }

LABEL_20:
  v22 = *(v12 + 16);
  v120 = v10;
  if (v22)
  {
    *&v105 = v6;
    v122[0] = MEMORY[0x277D84F90];

    v114 = v12;
    sub_24A3DBC64(0, v22, 0);
    v23 = v114;
    if (!*(v114 + 16))
    {
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    v24 = 0;
    v119 = v122[0];
    v112 = v22 - 1;
    v113 = v103 + 56;
    v25 = 32;
    v111 = xmmword_24A4B4E10;
    v110 = xmmword_24A4B5B50;
    v26 = (v103 + 56);
    while (1)
    {
      v115 = v25;
      v116 = v24;
      memcpy(v125, (v23 + v25), 0x198uLL);
      v27 = v125[0];
      v28 = v125[1];
      sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
      v29 = swift_allocObject();
      *(v29 + 16) = v111;
      *(v29 + 32) = v27;
      *(v29 + 40) = v28;
      v30 = v118;
      v31 = v118[10];
      swift_bridgeObjectRetain_n();
      sub_24A3E5290(v125, v124);
      sub_24A4AAAC0();
      v32 = *v26;
      v33 = v121;
      (*v26)(&v9[v31], 0, 1, v121);
      v34 = v30[11];
      sub_24A4AAAC0();
      v32(&v9[v34], 0, 1, v33);
      v32(&v9[v30[12]], 1, 1, v33);
      v9[v30[16]] = 2;
      *v9 = v27;
      *(v9 + 1) = v28;
      swift_bridgeObjectRetain_n();
      sub_24A3E52EC(v125);
      *(v9 + 2) = v27;
      *(v9 + 3) = v28;
      *(v9 + 4) = v29;
      *(v9 + 5) = &unk_285D835C8;
      *(v9 + 3) = v110;
      *(v9 + 8) = v27;
      *(v9 + 9) = v28;
      v9[v30[13]] = 1;
      v9[v30[14]] = 0;
      v9[v30[15]] = 0;
      *&v9[v30[17]] = 0;
      v35 = v119;
      v122[0] = v119;
      v37 = *(v119 + 16);
      v36 = *(v119 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_24A3DBC64((v36 > 1), v37 + 1, 1);
        v35 = v122[0];
      }

      *(v35 + 16) = v37 + 1;
      v38 = (*(v117 + 80) + 32) & ~*(v117 + 80);
      v119 = v35;
      sub_24A3E539C(v9, v35 + v38 + *(v117 + 72) * v37, type metadata accessor for FMFIntermediateFriend);
      v10 = v120;
      if (v112 == v116)
      {
        break;
      }

      v24 = v116 + 1;
      v23 = v114;
      v25 = v115 + 408;
      if ((v116 + 1) >= *(v114 + 16))
      {
        goto LABEL_89;
      }
    }

    v6 = v105;
  }

  else
  {

    v119 = MEMORY[0x277D84F90];
  }

  v39 = *(v10 + 16);
  v40 = MEMORY[0x277D84F90];
  if (v39)
  {
    v41 = 0;
    v115 = v39 - 1;
    v116 = v10 + 32;
LABEL_32:
    v42 = (v116 + 408 * v41);
    v43 = v41;
    while (v43 < *(v10 + 16))
    {
      memcpy(v125, v42, 0x198uLL);
      v44 = LOBYTE(v125[2]);
      if (LOBYTE(v125[2]) && LOBYTE(v125[2]) != 1)
      {
        sub_24A3E5290(v125, v124);
LABEL_43:

LABEL_44:
        v47 = swift_isUniquelyReferenced_nonNull_native();
        v122[0] = v40;
        if ((v47 & 1) == 0)
        {
          sub_24A3DBCA8(0, *(v40 + 16) + 1, 1);
          v40 = v122[0];
        }

        v49 = *(v40 + 16);
        v48 = *(v40 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_24A3DBCA8((v48 > 1), v49 + 1, 1);
          v40 = v122[0];
        }

        v41 = v43 + 1;
        *(v40 + 16) = v49 + 1;
        memcpy((v40 + 408 * v49 + 32), v125, 0x198uLL);
        if (v115 != v43)
        {
          goto LABEL_32;
        }

        goto LABEL_49;
      }

      v45 = sub_24A4AC270();
      sub_24A3E5290(v125, v124);

      if (v45)
      {
        goto LABEL_44;
      }

      if (v44)
      {
        goto LABEL_43;
      }

      v46 = sub_24A4AC270();

      if (v46)
      {
        goto LABEL_44;
      }

      ++v43;
      sub_24A3E52EC(v125);
      v42 += 408;
      if (v39 == v43)
      {
        goto LABEL_49;
      }
    }

    goto LABEL_93;
  }

LABEL_49:
  v50 = *(v40 + 16);
  if (v50)
  {
    v122[0] = MEMORY[0x277D84F90];

    v113 = v40;
    sub_24A3DBC64(0, v50, 0);
    v51 = v113;
    if (*(v113 + 16))
    {
      v52 = 0;
      v53 = v122[0];
      v112 = v103 + 56;
      *&v111 = v50 - 1;
      v54 = 32;
      v110 = xmmword_24A4B4E10;
      v105 = xmmword_24A4B5B50;
      v55 = v118;
      v56 = (v103 + 56);
      while (1)
      {
        v115 = v52;
        v116 = v53;
        v114 = v54;
        memcpy(v125, (v51 + v54), 0x198uLL);
        v57 = v125[0];
        v58 = v125[1];
        sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
        v59 = swift_allocObject();
        *(v59 + 16) = v110;
        *(v59 + 32) = v57;
        *(v59 + 40) = v58;
        v60 = v55[10];
        swift_bridgeObjectRetain_n();
        sub_24A3E5290(v125, v124);
        sub_24A4AAAC0();
        v61 = *v56;
        v62 = v121;
        (*v56)(&v6[v60], 0, 1, v121);
        v63 = v55[11];
        sub_24A4AAAC0();
        v61(&v6[v63], 0, 1, v62);
        v61(&v6[v55[12]], 1, 1, v62);
        v53 = v116;
        v6[v55[16]] = 2;
        *v6 = v57;
        *(v6 + 1) = v58;
        swift_bridgeObjectRetain_n();
        sub_24A3E52EC(v125);
        *(v6 + 2) = v57;
        *(v6 + 3) = v58;
        *(v6 + 4) = &unk_285D835F8;
        *(v6 + 5) = v59;
        *(v6 + 6) = v57;
        *(v6 + 7) = v58;
        *(v6 + 4) = v105;
        v6[v55[13]] = 1;
        v6[v55[14]] = 0;
        v6[v55[15]] = 0;
        *&v6[v55[17]] = 0;
        v122[0] = v53;
        v65 = *(v53 + 16);
        v64 = *(v53 + 24);
        if (v65 >= v64 >> 1)
        {
          sub_24A3DBC64((v64 > 1), v65 + 1, 1);
          v53 = v122[0];
        }

        *(v53 + 16) = v65 + 1;
        sub_24A3E539C(v6, v53 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v65, type metadata accessor for FMFIntermediateFriend);
        v10 = v120;
        if (v111 == v115)
        {
          break;
        }

        v52 = v115 + 1;
        v51 = v113;
        v54 = v114 + 408;
        if ((v115 + 1) >= *(v113 + 16))
        {
          goto LABEL_90;
        }
      }

      goto LABEL_59;
    }

LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v53 = MEMORY[0x277D84F90];
LABEL_59:
  v66 = *(v10 + 16);
  v67 = MEMORY[0x277D84F90];
  if (!v66)
  {
    v95 = MEMORY[0x277D84F90];
LABEL_88:
    v102 = v104;
    v104[4] = v119;
    v102[5] = v53;
    v102[6] = v67;
    v102[7] = v95;

    return;
  }

  v116 = v53;
  v123 = MEMORY[0x277D84F90];

  sub_24A3B57CC(0, v66, 0);
  if (*(v10 + 16))
  {
    v68 = 0;
    v69 = (v10 + 32);
    v67 = v123;
    v117 = v66 - 1;
    v118 = (v103 + 8);
    while (1)
    {
      memcpy(v125, v69, 0x198uLL);
      v70 = *&v125[3];
      v71 = *&v125[4];
      v72 = v125[11];
      v73 = v125[12];
      if (LOBYTE(v125[6]))
      {
        v74 = 0.0;
      }

      else
      {
        v74 = *&v125[5];
      }

      if (LOBYTE(v125[8]))
      {
        v75 = 0.0;
      }

      else
      {
        v75 = *&v125[7];
      }

      if (LOBYTE(v125[10]))
      {
        v76 = 0.0;
      }

      else
      {
        v76 = *&v125[9];
      }

      v77 = objc_allocWithZone(MEMORY[0x277CE41F8]);
      sub_24A3E5290(v125, v124);
      sub_24A3E5340(&v125[13], v124);
      v78 = v108;
      sub_24A4AAAC0();
      v79 = sub_24A4AAA60();
      (*v118)(v78, v121);
      v80 = [v77 initWithCoordinate:v79 altitude:v70 horizontalAccuracy:v71 verticalAccuracy:v74 timestamp:{v75, v76}];

      if (v73)
      {
        swift_bridgeObjectRetain_n();
        v81 = sub_24A4AC0C0();

        if (v81 >= 5)
        {
          v82 = 259;
        }

        else
        {
          v82 = 3;
        }
      }

      else
      {
        v72 = 0;
        v82 = 0;
      }

      v83 = v125[0];
      v84 = v125[1];
      memcpy(v122, &v125[13], sizeof(v122));
      nullsub_1();
      memcpy(v124, v122, 0x130uLL);
      v124[38] = v80;
      LOBYTE(v124[39]) = 0;
      v124[40] = v72;
      v124[41] = v73;
      LOWORD(v124[42]) = v82;
      v124[43] = 0;
      LOBYTE(v124[44]) = 0;
      nullsub_1();
      v85 = v109;
      *(v109 + 3) = 0;
      v85[32] = 1;
      v86 = v107;
      v87 = v107[8];
      v88 = sub_24A4AAB20();
      v89 = &v85[v87];
      v90 = v85;
      (*(*(v88 - 8) + 56))(v89, 1, 1, v88);

      sub_24A3E52EC(v125);
      *v85 = v83;
      *(v85 + 1) = v84;
      v85[16] = 0;
      memcpy(&v85[v86[11]], v124, 0x161uLL);
      v85[33] = 0;
      v85[v86[9]] = 0;
      v85[v86[10]] = 0;
      v123 = v67;
      v92 = *(v67 + 16);
      v91 = *(v67 + 24);
      if (v92 >= v91 >> 1)
      {
        sub_24A3B57CC((v91 > 1), v92 + 1, 1);
        v90 = v109;
        v67 = v123;
      }

      *(v67 + 16) = v92 + 1;
      sub_24A3E539C(v90, v67 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v92, type metadata accessor for FMFLocation);
      v93 = v120;
      if (v117 == v68)
      {
        break;
      }

      ++v68;
      v69 += 408;
      if (v68 >= *(v120 + 16))
      {
        goto LABEL_91;
      }
    }

    v94 = *(v93 + 16);
    v95 = MEMORY[0x277D84F90];
    if (v94)
    {
      v125[0] = MEMORY[0x277D84F90];
      sub_24A3BCBC4(0, v94, 0);
      v95 = v125[0];
      v96 = (v93 + 40);
      do
      {
        v98 = *(v96 - 1);
        v97 = *v96;
        v125[0] = v95;
        v100 = *(v95 + 16);
        v99 = *(v95 + 24);

        if (v100 >= v99 >> 1)
        {
          sub_24A3BCBC4((v99 > 1), v100 + 1, 1);
          v95 = v125[0];
        }

        *(v95 + 16) = v100 + 1;
        v101 = v95 + 24 * v100;
        *(v101 + 32) = v98;
        *(v101 + 40) = v97;
        *(v101 + 48) = 0;
        v96 += 51;
        --v94;
      }

      while (v94);
    }

    v53 = v116;
    goto LABEL_88;
  }

LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
}

uint64_t sub_24A3E4FC0(uint64_t a1)
{
  v2 = v1;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v4 = sub_24A4AB630();
  sub_24A378E18(v4, qword_27EF4E260);
  v5 = sub_24A4AB600();
  v6 = sub_24A4ABCE0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24A376000, v5, v6, "FMFDemoDataSource: Recalculating state for demo content.", v7, 2u);
    MEMORY[0x24C219130](v7, -1, -1);
  }

  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];

  v12 = sub_24A4104A4(v8, v9, v10, v11, a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v2[4] = v12;
  v2[5] = v14;
  v2[6] = v16;
  v2[7] = v18;
}

uint64_t sub_24A3E5160()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24A3E51F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24A3E5240(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_24A3E539C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

FMFCore::FMFAlertType_optional __swiftcall FMFAlertType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A4AC0C0();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t FMFAlertType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x454D45564153;
  v3 = 0xD000000000000015;
  v4 = 0x496B726F7774656ELL;
  if (v1 != 3)
  {
    v4 = 0x696C616974696E69;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x5441434552504544;
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

uint64_t sub_24A3E5520()
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A3E561C(uint64_t a1)
{
  sub_24A4AB8F0();
}

uint64_t sub_24A3E5704(uint64_t a1)
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

void sub_24A3E5808(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x454D45564153;
  v5 = 0x800000024A4AE230;
  v6 = 0xD000000000000015;
  v7 = 0xEC00000065757373;
  v8 = 0x496B726F7774656ELL;
  if (v2 != 3)
  {
    v8 = 0x696C616974696E69;
    v7 = 0xEE006E6F6974617ALL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x5441434552504544;
    v3 = 0xEA00000000004445;
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

uint64_t sub_24A3E58D4()
{
  v1 = *(v0 + OBJC_IVAR____TtC7FMFCore8FMFAlert_alertType);
  if (v1 == 5 || !swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v0 + 48);
  }

  else if (v1)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  else
  {
    v4 = [objc_opt_self() sharedInstance];
    v5 = [v4 deviceModelName];

    if (v5)
    {
      v6 = sub_24A4AB850();
      v8 = v7;
    }

    else
    {
      v8 = 0xEA00000000004543;
      v6 = 0x495645445F444142;
    }

    v2 = sub_24A457618(0xD000000000000017, 0x800000024A4AFE20, v6, v8);
    swift_unknownObjectRelease();
  }

  return v2;
}

uint64_t sub_24A3E59F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC7FMFCore8FMFAlert_alertType);
  if (v1 == 5 || !swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v0 + 64);
  }

  else
  {
    v4 = v1;
    v2 = sub_24A43B188(&v4);
    swift_unknownObjectRelease();
  }

  return v2;
}

uint64_t sub_24A3E5A80()
{
  v1 = *(v0 + OBJC_IVAR____TtC7FMFCore8FMFAlert_alertType);
  if (v1 == 5 || !swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v0 + 80);
  }

  else if (v1)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  else
  {
    type metadata accessor for FMLocalize();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    v2 = sub_24A4AA800();

    swift_unknownObjectRelease();
  }

  return v2;
}

uint64_t sub_24A3E5B84()
{
  v1 = *(v0 + OBJC_IVAR____TtC7FMFCore8FMFAlert_alertType);
  if (v1 == 5 || !swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v0 + 96);
  }

  else if (v1)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  else
  {
    type metadata accessor for FMLocalize();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    v2 = sub_24A4AA800();

    swift_unknownObjectRelease();
  }

  return v2;
}

uint64_t sub_24A3E5C88()
{
  v1 = OBJC_IVAR____TtC7FMFCore8FMFAlert_alertType;
  v2 = *(v0 + OBJC_IVAR____TtC7FMFCore8FMFAlert_alertType);
  if (v2 == 5)
  {
    goto LABEL_2;
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v0 + v1);
    if (v6 != 5 && swift_unknownObjectWeakLoadStrong())
    {
      if (v6)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v10 = [objc_opt_self() sharedInstance];
        v11 = [v10 deviceModelName];

        if (v11)
        {
          v12 = sub_24A4AB850();
          v14 = v13;
        }

        else
        {
          v14 = 0xEA00000000004543;
          v12 = 0x495645445F444142;
        }

        sub_24A457618(0xD000000000000017, 0x800000024A4AFE20, v12, v14);
        swift_unknownObjectRelease();
      }

      goto LABEL_3;
    }

LABEL_2:
    if (!v0[7])
    {
LABEL_11:
      v4 = 0;
      return v4 & 1;
    }

LABEL_3:
    v3 = *(v0 + v1);
    if (v3 != 5 && swift_unknownObjectWeakLoadStrong())
    {
      if (v3)
      {
        swift_unknownObjectRelease();
LABEL_18:
        v4 = 1;
        return v4 & 1;
      }

      type metadata accessor for FMLocalize();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v8 = [objc_opt_self() bundleForClass_];
      sub_24A4AA800();

      swift_unknownObjectRelease();
LABEL_17:

      goto LABEL_18;
    }

    if (v0[11])
    {
      goto LABEL_18;
    }

    sub_24A3E5B84();
    if (v5)
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v15 = v2;
  v4 = sub_24A43E34C(&v15, v0[4], v0[5]);
  swift_unknownObjectRelease();
  return v4 & 1;
}

unint64_t sub_24A3E5EF0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A3E78EC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24A3E5F20(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x64497472656C61;
  v5 = 0xEF4C52556E6F7474;
  v6 = 0x75426C65636E6163;
  if (v2 != 6)
  {
    v6 = 0x7079547472656C61;
    v5 = 0xE900000000000065;
  }

  v7 = 0xEB000000004C5255;
  v8 = 0x6E6F747475426B6FLL;
  if (v2 != 4)
  {
    v8 = 0xD000000000000011;
    v7 = 0x800000024A4AE2A0;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x6567617373656DLL;
  if (v2 != 2)
  {
    v10 = 0x6E6F747475426B6FLL;
    v9 = 0xED0000656C746954;
  }

  if (*v1)
  {
    v4 = 0x656C746974;
    v3 = 0xE500000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_24A3E6044()
{
  v1 = *v0;
  v2 = 0x64497472656C61;
  v3 = 0x75426C65636E6163;
  if (v1 != 6)
  {
    v3 = 0x7079547472656C61;
  }

  v4 = 0x6E6F747475426B6FLL;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6567617373656DLL;
  if (v1 != 2)
  {
    v5 = 0x6E6F747475426B6FLL;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_24A3E6164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A3E78EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A3E6198(uint64_t a1)
{
  v2 = sub_24A3E73B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A3E61D4(uint64_t a1)
{
  v2 = sub_24A3E73B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMFAlert.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FMFAlert.init(from:)(a1);
  return v2;
}